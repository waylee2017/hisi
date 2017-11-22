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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
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
	ldr	r3, [r0, r4]	@ prephitmp.879, <variable>.DPB.size
	ldr	r4, [r0, ip]	@ prephitmp.861, <variable>.DPB.used_size
	cmp	r4, r3	@ prephitmp.861, prephitmp.879
	strhi	r3, [r0, ip]	@ prephitmp.879, <variable>.DPB.used_size
	movls	r3, r4	@ prephitmp.879, prephitmp.861
	cmp	r3, #0	@ prephitmp.879,
	beq	.L7	@,
	add	r5, r0, #26368	@ ivtmp.875, pH264Ctx,
	mov	r3, #0	@ i,
	add	ip, r5, #64	@ ivtmp.875, ivtmp.875,
	movw	r7, #26628	@ tmp181,
.L6:
	ldr	r4, [ip, #0]	@ D.33011, <variable>.DPB.fs
	add	ip, ip, #4	@ ivtmp.875, ivtmp.875,
	ldr	r6, [r1, #0]	@ tmp177,* poc
	ldr	r5, [r4, #524]	@ D.33012, <variable>.poc
	cmp	r6, r5	@ tmp177, D.33012
	ble	.L5	@,
	ldrb	r4, [r4, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #0	@ <variable>.is_in_dpb,
	strne	r5, [r1, #0]	@ D.33012,* poc
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
	ldr	r3, [r0, r4]	@ D.33028, <variable>.DPB.size
	ldr	ip, [r0, r6]	@ <variable>.DPB.fs, <variable>.DPB.fs
	ldr	r4, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r4, r3	@ <variable>.DPB.used_size, D.33028
	strhi	r3, [r0, r7]	@ D.33028, <variable>.DPB.used_size
	ldr	r6, [ip, #524]	@ prephitmp.895, <variable>.poc
	movw	r7, #26628	@ tmp149,
	str	r6, [r1, #0]	@ prephitmp.895,* poc
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L15	@,
	add	r5, r0, #26368	@ ivtmp.911, pH264Ctx,
	mov	r3, #0	@ i,
	add	ip, r5, #64	@ ivtmp.911, ivtmp.911,
	b	.L14	@
.L16:
	ldr	r6, [r1, #0]	@ prephitmp.895,* poc
.L14:
	ldr	r4, [ip, #0]	@ D.33035, <variable>.DPB.fs
	add	ip, ip, #4	@ ivtmp.911, ivtmp.911,
	ldr	r5, [r4, #524]	@ D.33036, <variable>.poc
	cmp	r5, r6	@ D.33036, prephitmp.895
	ble	.L13	@,
	ldrb	r4, [r4, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #0	@ <variable>.is_in_dpb,
	strne	r5, [r1, #0]	@ D.33036,* poc
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.33050, <variable>.is_reference
	cmp	r3, #3	@ D.33050,
	beq	.L27	@,
	tst	r3, #1	@ D.33050,
	bne	.L22	@,
.L23:
	ands	r3, r3, #2	@ tmp145, D.33050,
	moveq	r0, r3	@ D.33057, tmp145
	bxeq	lr	@
	ldr	r1, [r0, #472]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #65536	@ tmp146,
	movne	r0, #0	@, D.33057
	moveq	r0, #1	@, D.33057
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
	mov	r0, #1	@ D.33057,
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.33077, <variable>.is_reference
	cmp	r3, #3	@ D.33077,
	beq	.L36	@,
	tst	r3, #1	@ D.33077,
	bne	.L31	@,
.L32:
	ands	r3, r3, #2	@ tmp145, D.33077,
	moveq	r0, r3	@ D.33084, tmp145
	bxeq	lr	@
	ldr	r1, [r0, #472]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #256	@ tmp146,
	movne	r0, #0	@, D.33084
	moveq	r0, #1	@, D.33084
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
	mov	r0, #1	@ D.33084,
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
	add	r4, r0, #26368	@ ivtmp.1022, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #64	@ ivtmp.1022, ivtmp.1022,
	mov	r5, r7	@ i, j
.L41:
	ldr	r6, [r4, #0]	@ D.33113, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1022, ivtmp.1022,
	mov	r0, r6	@, D.33113
	bl	LongTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #48	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.33113, <variable>.DPB.fs_ltref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L41	@,
.L39:
	mov	r3, #26624	@ tmp149,
	movw	ip, #26636	@ tmp148,
	ldr	r0, [r8, r3]	@ D.33119, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, r0	@ j, D.33119
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #48	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.33119
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.33119
	add	r8, r8, r1, asl #2	@, ivtmp.1018, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L43	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	cmp	r2, r0	@ j, D.33119
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L43:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.1018
	cmp	r2, r0	@ j, D.33119
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ltref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ltref
	add	r8, ip, #4	@ ivtmp.1018, tmp160,
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
	add	r4, r0, #26368	@ ivtmp.1060, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #64	@ ivtmp.1060, ivtmp.1060,
	mov	r5, r7	@ i, j
.L56:
	ldr	r6, [r4, #0]	@ D.33132, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1060, ivtmp.1060,
	mov	r0, r6	@, D.33132
	bl	ShortTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #32	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.33132, <variable>.DPB.fs_ref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L56	@,
.L54:
	mov	r3, #26624	@ tmp149,
	movw	ip, #26632	@ tmp148,
	ldr	r0, [r8, r3]	@ D.33138, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, r0	@ j, D.33138
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #32	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.33138
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.33138
	add	r8, r8, r1, asl #2	@, ivtmp.1056, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L58	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	cmp	r2, r0	@ j, D.33138
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L58:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.1056
	cmp	r2, r0	@ j, D.33138
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ref
	add	r8, ip, #4	@ ivtmp.1056, tmp160,
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
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ D.33377, <variable>.structure
	cmp	r3, #0	@ D.33377,
	beq	.L72	@,
	movw	ip, #26632	@ tmp155,
	ldr	r8, [r0, ip]	@ D.33393, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ D.33393,
	beq	.L82	@,
	add	r5, r0, #26368	@ ivtmp.1124, pH264Ctx,
	sub	r6, r8, #1	@ tmp280, D.33393,
	and	r7, r6, #1	@ tmp282, tmp280,
	mov	r4, #0	@ i.1142,
	ldr	ip, [r5, #128]!	@ temp.1134, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.33395, <variable>.is_reference
	tst	r6, #1	@ D.33395,
	beq	.L92	@,
	ldr	sl, [ip, #436]	@ tmp311,
	bic	sl, sl, #-16777216	@ tmp312, tmp311,
	bic	sl, sl, #255	@ tmp312, tmp312,
	cmp	sl, #65536	@ tmp312,
	beq	.L111	@,
.L92:
	tst	r6, #2	@ D.33395,
	beq	.L93	@,
	ldr	r6, [ip, #472]	@ tmp306,
	bic	r6, r6, #-16777216	@ tmp307, tmp306,
	bic	r6, r6, #255	@ tmp307, tmp307,
	cmp	r6, #65536	@ tmp307,
	beq	.L112	@,
.L93:
	mov	r4, #1	@ i.1142,
	cmp	r8, r4	@ D.33393, i.1142
	add	r5, r5, #4	@ ivtmp.1124, ivtmp.1124,
	bls	.L82	@,
	cmp	r7, #0	@ tmp282,
	beq	.L81	@,
	ldr	ip, [r5, #0]	@ temp.1134, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.33395, <variable>.is_reference
	tst	r6, #1	@ D.33395,
	beq	.L95	@,
	ldr	r7, [ip, #436]	@ tmp324,
	bic	r7, r7, #-16777216	@ tmp325, tmp324,
	bic	r7, r7, #255	@ tmp325, tmp325,
	cmp	r7, #65536	@ tmp325,
	beq	.L113	@,
.L95:
	tst	r6, #2	@ D.33395,
	beq	.L96	@,
	ldr	r6, [ip, #472]	@ tmp319,
	bic	r6, r6, #-16777216	@ tmp320, tmp319,
	bic	r6, r6, #255	@ tmp320, tmp320,
	cmp	r6, #65536	@ tmp320,
	beq	.L114	@,
.L96:
	add	r4, r4, #1	@ i.1142, i.1142,
	add	r5, r5, #4	@ ivtmp.1124, ivtmp.1124,
	cmp	r8, r4	@ D.33393, i.1142
	bhi	.L81	@,
.L82:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L72:
	movw	ip, #26632	@ tmp156,
	ldr	r7, [r0, ip]	@ temp.1143, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, #0	@ temp.1143,
	beq	.L82	@,
	add	r4, r0, #26368	@ ivtmp.1119, pH264Ctx,
	sub	r5, r7, #1	@ tmp275, temp.1143,
	and	r6, r5, #1	@ tmp277, tmp275,
	ldr	ip, [r4, #128]!	@ D.33381, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L115	@,
.L85:
	mov	r3, #1	@ i,
	cmp	r3, r7	@ i, temp.1143
	add	r4, r4, #4	@ ivtmp.1119, ivtmp.1119,
	bcs	.L82	@,
	cmp	r6, #0	@ tmp277,
	beq	.L76	@,
	ldr	ip, [r4, #0]	@ D.33381, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L116	@,
.L87:
	add	r3, r3, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1119, ivtmp.1119,
	cmp	r3, r7	@ i, temp.1143
	bcc	.L76	@,
	b	.L82	@
.L75:
	ldr	ip, [r4, #4]	@ D.33381, <variable>.DPB.fs_ref
	add	r3, r3, #1	@ i, i,
	mov	r5, r3	@ tmp279, i
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	beq	.L117	@,
.L90:
	add	r3, r5, #1	@ i, tmp279,
	add	r4, r6, #4	@ ivtmp.1119, tmp278,
	cmp	r3, r7	@ i, temp.1143
	bcs	.L82	@,
.L76:
	ldr	ip, [r4, #0]	@ D.33381, <variable>.DPB.fs_ref
	add	r6, r4, #4	@ tmp278, ivtmp.1119,
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
	ldr	ip, [r4, #4]	@ D.33381, <variable>.DPB.fs_ref
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
	tst	r6, #2	@ D.33395,
	beq	.L79	@,
	ldr	r6, [ip, #472]	@ tmp239,
	bic	r6, r6, #-16777216	@ tmp237, tmp239,
	bic	r6, r6, #255	@ tmp237, tmp237,
	cmp	r6, #65536	@ tmp237,
	beq	.L118	@,
.L79:
	ldr	ip, [r5, #4]	@ temp.1134, <variable>.DPB.fs_ref
	add	r4, r4, #1	@ i.1142, i.1142,
	add	r5, r5, #4	@ tmp284, ivtmp.1124,
	mov	sl, r4	@ tmp283, i.1142
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.33395, <variable>.is_reference
	tst	r6, #1	@ D.33395,
	beq	.L99	@,
	ldr	r7, [ip, #436]	@ tmp335,
	bic	r7, r7, #-16777216	@ tmp336, tmp335,
	bic	r7, r7, #255	@ tmp336, tmp336,
	cmp	r7, #65536	@ tmp336,
	beq	.L119	@,
.L99:
	tst	r6, #2	@ D.33395,
	beq	.L100	@,
	ldr	r6, [ip, #472]	@ tmp330,
	bic	r6, r6, #-16777216	@ tmp331, tmp330,
	bic	r6, r6, #255	@ tmp331, tmp331,
	cmp	r6, #65536	@ tmp331,
	beq	.L120	@,
.L100:
	add	r4, sl, #1	@ i.1142, tmp283,
	add	r5, r5, #4	@ ivtmp.1124, tmp284,
	cmp	r8, r4	@ D.33393, i.1142
	bls	.L82	@,
.L81:
	ldr	ip, [r5, #0]	@ temp.1134, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.33395, <variable>.is_reference
	tst	r6, #1	@ D.33395,
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
	add	r4, r4, #6592	@ tmp204, i.1142,
	str	r1, [ip, #520]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #32	@ tmp204, tmp204,
	cmp	r3, #1	@ D.33377,
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
	ldr	r3, [r0, r4, asl #2]	@ temp.1139, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #400]	@ zero_extendqisi2	@ D.33416, <variable>.frame.structure
	cmp	r2, #3	@ D.33416,
	cmpne	r2, #0	@, D.33416,
	bne	.L82	@,
	ldrb	r1, [r3, #437]	@ zero_extendqisi2	@ D.33422, <variable>.top_field.is_long_term
	ldrb	r2, [r3, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r2, r1	@ <variable>.bottom_field.is_long_term, D.33422
	streqb	r2, [r3, #401]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	ip, [r0, r4, asl #2]	@ temp.1141, <variable>.DPB.fs_ref
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
	add	r4, r4, #6592	@ tmp243, i.1142,
	str	r1, [ip, #520]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #32	@ tmp243, tmp243,
	cmp	r3, #2	@ D.33377,
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
	ldr	r3, [r0, r4, asl #2]	@ temp.1150, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #400]	@ zero_extendqisi2	@ D.33442, <variable>.frame.structure
	cmp	r2, #3	@ D.33442,
	cmpne	r2, #0	@, D.33442,
	bne	.L82	@,
	ldrb	r1, [r3, #437]	@ zero_extendqisi2	@ temp.1151, <variable>.top_field.is_long_term
	ldrb	r2, [r3, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r2, r1	@ <variable>.bottom_field.is_long_term, temp.1151
	streqb	r2, [r3, #401]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	r2, [r0, r4, asl #2]	@ temp.1153, <variable>.DPB.fs_ref
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
	add	ip, ip, r4, lsr #1	@, D.33879, <variable>.DPB.size, <variable>.PicOutCounter,
	mov	r2, r2, lsr #1	@ D.33875, <variable>.NewPicCounter,
	add	r4, ip, #1	@ tmp149, D.33879,
	cmp	r2, r4	@ D.33875, tmp149
	bcc	.L122	@,
	mvn	ip, ip	@ tmp150, D.33879
	add	r2, ip, r2	@ tmp151, tmp150, D.33875
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
	movlt	r3, r1	@ D.33993, <variable>.bottom_field.poc
	movge	r3, r3	@ D.33993, <variable>.top_field.poc
	ldr	r4, [r0, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r0, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldrb	r1, [r0, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldr	ip, [r0, #440]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	add	r2, r4, r2	@ tmp144, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	cmp	r1, #0	@ <variable>.bottom_field.is_long_term,
	mov	r4, #3	@ tmp142,
	mov	r2, r2, lsr #1	@ D.33998, tmp144,
	str	r3, [r0, #524]	@ D.33993, <variable>.poc
	strb	r4, [r0, #400]	@ tmp142, <variable>.frame.structure
	str	ip, [r0, #404]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	str	r3, [r0, #416]	@ D.33993, <variable>.frame.poc
	str	r2, [r0, #420]	@ D.33998, <variable>.frame.err_level
	beq	.L131	@,
	ldrb	ip, [r0, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	subs	r1, ip, #0	@ prephitmp.1231, <variable>.top_field.is_long_term,
	movne	r1, #1	@ prephitmp.1231
.L131:
	ldr	r3, [r0, #472]	@ tmp154,
	strb	r1, [r0, #401]	@ prephitmp.1231, <variable>.frame.is_long_term
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
	mov	r1, #0	@ prephitmp.1220,
.L133:
	ldr	ip, [r0, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r3, [r0, #460]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	str	r2, [r0, #544]	@ D.33998, <variable>.err_level
	cmp	ip, r3	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	movcs	r3, ip	@ D.34022, <variable>.bottom_field.pic_type
	strb	r1, [r0, #402]	@ prephitmp.1220, <variable>.frame.is_short_term
	str	r3, [r0, #540]	@ D.34022, <variable>.pic_type
	str	r3, [r0, #424]	@ D.34022, <variable>.frame.pic_type
	ldmfd	sp!, {r4}
	bx	lr
.L135:
	rsbs	r1, r1, #1	@ prephitmp.1220, prephitmp.1231
	movcc	r1, #0	@ prephitmp.1220
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
	ldr	r5, [r0, ip]	@ D.35025, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ D.35025,
	beq	.L140	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1258, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.35025,
	add	r0, r0, #128	@ ivtmp.1258, ivtmp.1258,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L148	@,
	ldr	r2, [r0, #0]	@ D.34990, <variable>.DPB.fs_ref
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
	cmp	r5, ip	@ D.35025, i
	add	r0, r0, #4	@ ivtmp.1258, ivtmp.1258,
	bls	.L140	@,
	cmp	r4, #0	@ tmp168,
	beq	.L145	@,
	cmp	r3, #0	@ structure,
	beq	.L168	@,
	ldr	r2, [r0, #0]	@ temp.1261, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.35003, <variable>.is_reference
	tst	r4, #1	@ D.35003,
	beq	.L153	@,
	ldr	r6, [r2, #436]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #65536	@ tmp195,
	beq	.L172	@,
.L153:
	tst	r4, #2	@ D.35003,
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
	add	r0, r0, #4	@ ivtmp.1258, ivtmp.1258,
	cmp	r5, ip	@ D.35025, i
	bhi	.L145	@,
.L140:
	mov	r0, #0	@ D.35001,
.L143:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L148:
	ldr	r2, [r0, #0]	@ temp.1261, <variable>.DPB.fs_ref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.35003, <variable>.is_reference
	tst	ip, #1	@ D.35003,
	beq	.L149	@,
	ldr	r6, [r2, #436]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #65536	@ tmp182,
	beq	.L173	@,
.L149:
	tst	ip, #2	@ D.35003,
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
	add	r0, r2, #472	@ D.35001, temp.1261,
	b	.L143	@
.L174:
	ldr	r2, [r0, #0]	@ D.34990, <variable>.DPB.fs_ref
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
	add	r4, r0, #4	@ tmp170, ivtmp.1258,
	bne	.L157	@,
.L176:
	ldr	r2, [r0, #4]	@ D.34990, <variable>.DPB.fs_ref
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
	add	r0, r4, #4	@ ivtmp.1258, tmp170,
	cmp	r5, ip	@ D.35025, i
	bls	.L140	@,
.L145:
	cmp	r3, #0	@ structure,
	beq	.L174	@,
	ldr	r2, [r0, #0]	@ temp.1261, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.35003, <variable>.is_reference
	tst	r4, #1	@ D.35003,
	beq	.L144	@,
	ldr	r6, [r2, #436]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #65536	@ tmp156,
	beq	.L175	@,
.L144:
	tst	r4, #2	@ D.35003,
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
	add	r4, r0, #4	@ tmp170, ivtmp.1258,
	beq	.L176	@,
.L157:
	ldr	r2, [r0, #4]	@ temp.1261, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.35003, <variable>.is_reference
	tst	r0, #1	@ D.35003,
	beq	.L158	@,
	ldr	r6, [r2, #436]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #65536	@ tmp208,
	beq	.L177	@,
.L158:
	tst	r0, #2	@ D.35003,
	beq	.L159	@,
	ldr	r0, [r2, #472]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #65536	@ tmp205,
	bne	.L159	@,
	ldr	r0, [r2, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r0, r1	@ <variable>.bottom_field.pic_num, picNum
	bne	.L159	@,
	add	r0, r2, #472	@ D.35001, temp.1261,
	b	.L143	@
.L175:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L144	@,
	add	r0, r2, #436	@ D.35001, temp.1261,
	b	.L143	@
.L177:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L158	@,
	add	r0, r2, #436	@ D.35001, temp.1261,
	b	.L143	@
.L168:
	ldr	r2, [r0, #0]	@ D.34990, <variable>.DPB.fs_ref
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
	add	r0, r2, #400	@ D.35001, D.34990,
	b	.L143	@
.L173:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L149	@,
	add	r0, r2, #436	@ D.35001, temp.1261,
	b	.L143	@
.L172:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L153	@,
	add	r0, r2, #436	@ D.35001, temp.1261,
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
	ldr	r5, [r0, ip]	@ D.35083, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.35083,
	beq	.L182	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1289, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.35083,
	add	r0, r0, #192	@ ivtmp.1289, ivtmp.1289,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L190	@,
	ldr	r2, [r0, #0]	@ D.35048, <variable>.DPB.fs_ltref
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
	cmp	r5, ip	@ D.35083, i
	add	r0, r0, #4	@ ivtmp.1289, ivtmp.1289,
	bls	.L182	@,
	cmp	r4, #0	@ tmp168,
	beq	.L187	@,
	cmp	r3, #0	@ structure,
	beq	.L210	@,
	ldr	r2, [r0, #0]	@ temp.1292, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.35061, <variable>.is_reference
	tst	r4, #1	@ D.35061,
	beq	.L195	@,
	ldr	r6, [r2, #436]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #256	@ tmp195,
	beq	.L214	@,
.L195:
	tst	r4, #2	@ D.35061,
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
	add	r0, r0, #4	@ ivtmp.1289, ivtmp.1289,
	cmp	r5, ip	@ D.35083, i
	bhi	.L187	@,
.L182:
	mov	r0, #0	@ D.35059,
.L185:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L190:
	ldr	r2, [r0, #0]	@ temp.1292, <variable>.DPB.fs_ltref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.35061, <variable>.is_reference
	tst	ip, #1	@ D.35061,
	beq	.L191	@,
	ldr	r6, [r2, #436]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #256	@ tmp182,
	beq	.L215	@,
.L191:
	tst	ip, #2	@ D.35061,
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
	add	r0, r2, #472	@ D.35059, temp.1292,
	b	.L185	@
.L216:
	ldr	r2, [r0, #0]	@ D.35048, <variable>.DPB.fs_ltref
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
	add	r4, r0, #4	@ tmp170, ivtmp.1289,
	bne	.L199	@,
.L218:
	ldr	r2, [r0, #4]	@ D.35048, <variable>.DPB.fs_ltref
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
	add	r0, r4, #4	@ ivtmp.1289, tmp170,
	cmp	r5, ip	@ D.35083, i
	bls	.L182	@,
.L187:
	cmp	r3, #0	@ structure,
	beq	.L216	@,
	ldr	r2, [r0, #0]	@ temp.1292, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.35061, <variable>.is_reference
	tst	r4, #1	@ D.35061,
	beq	.L186	@,
	ldr	r6, [r2, #436]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #256	@ tmp156,
	beq	.L217	@,
.L186:
	tst	r4, #2	@ D.35061,
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
	add	r4, r0, #4	@ tmp170, ivtmp.1289,
	beq	.L218	@,
.L199:
	ldr	r2, [r0, #4]	@ temp.1292, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.35061, <variable>.is_reference
	tst	r0, #1	@ D.35061,
	beq	.L200	@,
	ldr	r6, [r2, #436]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #256	@ tmp208,
	beq	.L219	@,
.L200:
	tst	r0, #2	@ D.35061,
	beq	.L201	@,
	ldr	r0, [r2, #472]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #256	@ tmp205,
	bne	.L201	@,
	ldr	r0, [r2, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r0, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L201	@,
	add	r0, r2, #472	@ D.35059, temp.1292,
	b	.L185	@
.L217:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L186	@,
	add	r0, r2, #436	@ D.35059, temp.1292,
	b	.L185	@
.L219:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L200	@,
	add	r0, r2, #436	@ D.35059, temp.1292,
	b	.L185	@
.L210:
	ldr	r2, [r0, #0]	@ D.35048, <variable>.DPB.fs_ltref
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
	add	r0, r2, #400	@ D.35059, D.35048,
	b	.L185	@
.L215:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L191	@,
	add	r0, r2, #436	@ D.35059, temp.1292,
	b	.L185	@
.L214:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L195	@,
	add	r0, r2, #436	@ D.35059, temp.1292,
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
	ldr	r3, [r4, #0]	@ D.35109,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.35109
	ble	.L221	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1339, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1337, RefPicListX, ivtmp.1334,
.L222:
	ldr	r3, [r2], #-4	@ tmp155,
	mov	ip, r7	@ cIdx.1341, ivtmp.1334
	sub	r7, r7, #1	@ ivtmp.1334, ivtmp.1334,
	str	r3, [r1], #-4	@ tmp155,
	ldr	r3, [r4, #0]	@ D.35109,* refIdxLX
	cmp	r3, ip	@ D.35109, cIdx.1341
	blt	.L222	@,
.L221:
	add	r1, r3, #1	@ cIdx.1340, D.35109,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1340
	str	r1, [r4, #0]	@ cIdx.1340,* refIdxLX
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1330, RefPicListX, cIdx.1340,
	rsb	r0, r1, r8	@ tmp159, cIdx.1340, cIdx
	and	ip, r0, #1	@ tmp160, tmp159,
	mov	r3, r1	@ nIdx, cIdx.1340
	ldr	r0, [r2, #0]	@ D.35114,* ivtmp.1330
	cmp	r0, #0	@ D.35114,
	beq	.L230	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L243	@,
.L231:
	add	r3, r1, #1	@ nIdx, cIdx.1340,
	str	r0, [r5, r1, asl #2]	@ D.35114,* RefPicListX
.L230:
	add	r1, r1, #1	@ cIdx.1340, cIdx.1340,
	add	r2, r2, #4	@ ivtmp.1330, ivtmp.1330,
	cmp	r8, r1	@ cIdx, cIdx.1340
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L246:
	cmp	ip, #0	@ tmp160,
	beq	.L226	@,
	ldr	r0, [r2, #0]	@ D.35114,* ivtmp.1330
	cmp	r0, #0	@ D.35114,
	beq	.L233	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	beq	.L244	@,
.L234:
	str	r0, [r5, r3, asl #2]	@ D.35114,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L233:
	add	r1, r1, #1	@ cIdx.1340, cIdx.1340,
	add	r2, r2, #4	@ ivtmp.1330, ivtmp.1330,
	cmp	r8, r1	@ cIdx, cIdx.1340
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L226:
	ldr	r0, [r2, #0]	@ D.35114,* ivtmp.1330
	add	r1, r1, #1	@ tmp161, cIdx.1340,
	add	ip, r2, #4	@ tmp162, ivtmp.1330,
	cmp	r0, #0	@ D.35114,
	beq	.L224	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L225	@,
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	beq	.L224	@,
.L225:
	str	r0, [r5, r3, asl #2]	@ D.35114,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L224:
	ldr	r2, [r2, #4]	@ D.35114,
	cmp	r2, #0	@ D.35114,
	beq	.L237	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	bne	.L238	@,
	ldr	lr, [r2, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	lr, r6	@ <variable>.pic_num, picNumLX
	beq	.L237	@,
.L238:
	str	r2, [r5, r3, asl #2]	@ D.35114,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L237:
	add	r1, r1, #1	@ cIdx.1340, tmp161,
	add	r2, ip, #4	@ ivtmp.1330, tmp162,
	cmp	r8, r1	@ cIdx, cIdx.1340
	bge	.L226	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L243:
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	bne	.L231	@,
	add	r1, r1, #1	@ cIdx.1340, cIdx.1340,
	add	r2, r2, #4	@ ivtmp.1330, ivtmp.1330,
	cmp	r8, r1	@ cIdx, cIdx.1340
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
	ldr	r3, [r4, #0]	@ D.35151,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.35151
	ble	.L248	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1387, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1385, RefPicListX, ivtmp.1382,
.L249:
	ldr	r3, [r2], #-4	@ tmp151,
	mov	ip, r7	@ cIdx.1389, ivtmp.1382
	sub	r7, r7, #1	@ ivtmp.1382, ivtmp.1382,
	str	r3, [r1], #-4	@ tmp151,
	ldr	r3, [r4, #0]	@ D.35151,* refIdxLX
	cmp	r3, ip	@ D.35151, cIdx.1389
	blt	.L249	@,
.L248:
	add	r1, r3, #1	@ cIdx.1388, D.35151,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1388
	str	r1, [r4, #0]	@ cIdx.1388,* refIdxLX
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1378, RefPicListX, cIdx.1388,
	rsb	r0, r1, r8	@ tmp155, cIdx.1388, cIdx
	and	ip, r0, #1	@ tmp156, tmp155,
	mov	r3, r1	@ nIdx, cIdx.1388
	ldr	r0, [r2, #0]	@ D.35156,* ivtmp.1378
	cmp	r0, #0	@ D.35156,
	beq	.L257	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L270	@,
.L258:
	add	r3, r1, #1	@ nIdx, cIdx.1388,
	str	r0, [r5, r1, asl #2]	@ D.35156,* RefPicListX
.L257:
	add	r1, r1, #1	@ cIdx.1388, cIdx.1388,
	add	r2, r2, #4	@ ivtmp.1378, ivtmp.1378,
	cmp	r8, r1	@ cIdx, cIdx.1388
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L273:
	cmp	ip, #0	@ tmp156,
	beq	.L253	@,
	ldr	r0, [r2, #0]	@ D.35156,* ivtmp.1378
	cmp	r0, #0	@ D.35156,
	beq	.L260	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	bne	.L271	@,
.L261:
	str	r0, [r5, r3, asl #2]	@ D.35156,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L260:
	add	r1, r1, #1	@ cIdx.1388, cIdx.1388,
	add	r2, r2, #4	@ ivtmp.1378, ivtmp.1378,
	cmp	r8, r1	@ cIdx, cIdx.1388
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L253:
	ldr	r0, [r2, #0]	@ D.35156,* ivtmp.1378
	add	r1, r1, #1	@ tmp157, cIdx.1388,
	add	ip, r2, #4	@ tmp158, ivtmp.1378,
	cmp	r0, #0	@ D.35156,
	beq	.L251	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L252	@,
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L251	@,
.L252:
	str	r0, [r5, r3, asl #2]	@ D.35156,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L251:
	ldr	r2, [r2, #4]	@ D.35156,
	cmp	r2, #0	@ D.35156,
	beq	.L264	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	beq	.L265	@,
	ldr	lr, [r2, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	lr, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L264	@,
.L265:
	str	r2, [r5, r3, asl #2]	@ D.35156,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L264:
	add	r1, r1, #1	@ cIdx.1388, tmp157,
	add	r2, ip, #4	@ ivtmp.1378, tmp158,
	cmp	r8, r1	@ cIdx, cIdx.1388
	bge	.L253	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L270:
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	bne	.L258	@,
	add	r1, r1, #1	@ cIdx.1388, cIdx.1388,
	add	r2, r2, #4	@ ivtmp.1378, ivtmp.1378,
	cmp	r8, r1	@ cIdx, cIdx.1388
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
	ldr	r3, [r9, #0]	@ D.35218,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.35218,
	beq	.L286	@,
	tst	r6, #1	@ num_ref_idx_lX_active_minus1,
	mov	r2, #0	@ D.35216,
	ldr	r7, [sp, #8]	@ picNumLXPred, %sfp
	mov	r4, r2	@ i, D.35216
	add	sl, sp, #20	@ tmp198,,
	bne	.L277	@,
	cmp	r3, #1	@ D.35218,
	bls	.L300	@,
	ldr	r4, [sp, #72]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	ldr	r3, [r4, #0]	@ tmp206,
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L301:
	mov	r2, #4	@ D.35216,
	mov	r4, #1	@ i,
	ldr	r3, [r9, r2]	@ D.35218,* D.35216
	cmp	r3, #3	@ D.35218,
	bne	.L277	@,
.L286:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L278:
	ldr	r1, [sp, #72]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	ldr	r3, [r1, r2]	@ tmp179,* D.35216
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L283:
	ldr	r3, [sp, #12]	@, %sfp
	add	r4, r4, #1	@ tmp202, i,
	cmp	r3, r4	@, tmp202
	bls	.L286	@,
	ldr	r3, [r9, r4, asl #2]	@ D.35218,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.35218,
	beq	.L286	@,
	cmp	r3, #1	@ D.35218,
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
	ldr	r3, [r9, r4, asl #2]	@ D.35218,* reordering_of_pic_nums_idc
	mov	r2, r4, asl #2	@ D.35216, i,
	cmp	r3, #3	@ D.35218,
	beq	.L286	@,
.L277:
	cmp	r3, #1	@ D.35218,
	bhi	.L278	@,
	cmp	r3, #0	@ D.35218,
	bne	.L279	@,
	ldr	r0, [sp, #68]	@, abs_diff_pic_num_minus1
	ldr	lr, [r0, r2]	@ tmp175,* D.35216
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
	cmp	r3, #0	@ D.35218,
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
	ldr	r3, [ip, r2]	@ tmp177,* D.35216
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
	cmp	r3, #0	@ D.35218,
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
	ldr	r2, [ip, #12]	@ D.35294, <variable>.pic_num
	ldr	r3, [r1, #12]	@ D.35297, <variable>.pic_num
	cmp	r2, r3	@ D.35294, D.35297
	movlt	r0, #1	@ D.35300,
	bxlt	lr	@
	movle	r0, #0	@ D.35300,
	mvngt	r0, #0	@ D.35300,
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
	ldr	r2, [ip, #8]	@ D.35309, <variable>.long_term_pic_num
	ldr	r3, [r1, #8]	@ D.35312, <variable>.long_term_pic_num
	cmp	r2, r3	@ D.35309, D.35312
	mvnlt	r0, #0	@ D.35315,
	bxlt	lr	@
	movle	r0, #0	@, D.35315
	movgt	r0, #1	@, D.35315
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
	ldr	r2, [ip, #516]	@ D.35324, <variable>.frame_num_wrap
	ldr	r3, [r1, #516]	@ D.35327, <variable>.frame_num_wrap
	cmp	r2, r3	@ D.35324, D.35327
	movlt	r0, #1	@ D.35330,
	bxlt	lr	@
	movle	r0, #0	@ D.35330,
	mvngt	r0, #0	@ D.35330,
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
	ldr	r2, [ip, #520]	@ D.35339, <variable>.long_term_frame_idx
	ldr	r3, [r1, #520]	@ D.35342, <variable>.long_term_frame_idx
	cmp	r2, r3	@ D.35339, D.35342
	mvncc	r0, #0	@ D.35345,
	bxcc	lr	@
	movls	r0, #0	@, D.35345
	movhi	r0, #1	@, D.35345
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
	ldr	r2, [ip, #16]	@ D.35354, <variable>.poc
	ldr	r3, [r1, #16]	@ D.35357, <variable>.poc
	cmp	r2, r3	@ D.35354, D.35357
	mvnlt	r0, #0	@ D.35360,
	bxlt	lr	@
	movle	r0, #0	@, D.35360
	movgt	r0, #1	@, D.35360
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
	ldr	r2, [ip, #16]	@ D.35369, <variable>.poc
	ldr	r3, [r1, #16]	@ D.35372, <variable>.poc
	cmp	r2, r3	@ D.35369, D.35372
	movlt	r0, #1	@ D.35375,
	bxlt	lr	@
	movle	r0, #0	@ D.35375,
	mvngt	r0, #0	@ D.35375,
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
	ldr	r2, [ip, #524]	@ D.35384, <variable>.poc
	ldr	r3, [r1, #524]	@ D.35387, <variable>.poc
	cmp	r2, r3	@ D.35384, D.35387
	mvnlt	r0, #0	@ D.35390,
	bxlt	lr	@
	movle	r0, #0	@, D.35390
	movgt	r0, #1	@, D.35390
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
	ldr	r2, [ip, #524]	@ D.35399, <variable>.poc
	ldr	r3, [r1, #524]	@ D.35402, <variable>.poc
	cmp	r2, r3	@ D.35399, D.35402
	movlt	r0, #1	@ D.35405,
	bxlt	lr	@
	movle	r0, #0	@ D.35405,
	mvngt	r0, #0	@ D.35405,
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
	movcc	r4, r2	@ list_idx.1823, list_idx
	movcs	r4, #31	@ list_idx.1823,
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
	moveq	sl, r8	@ top_idx.1806, bot_idx
	beq	.L415	@,
	cmp	r0, #2	@ currStrcture,
	moveq	r8, #0	@ bot_idx.1801,
	moveq	sl, r8	@ top_idx, bot_idx.1801
	bne	.L370	@,
.L420:
	cmp	sl, r4	@ top_idx, list_idx.1823
	movcs	r0, #0	@,
	movcc	r0, #1	@,
	cmp	r8, r4	@ bot_idx.1801, list_idx.1823
	movcs	r3, #0	@, temp.1795
	movcc	r3, #1	@, temp.1795
	orrs	r2, r3, r0	@, temp.1795,
	str	r0, [sp, #8]	@, %sfp
	beq	.L370	@,
	cmp	r3, #0	@ temp.1795,
	beq	.L375	@,
	ldr	r0, [r6, r8, asl #2]	@ temp.1797,* fs_list
	mvn	r7, r8	@ tmp235, bot_idx.1801
	add	fp, r7, r4	@ tmp234, tmp235, list_idx.1823
	add	r7, r6, r8, asl #2	@, ivtmp.1782, fs_list, bot_idx.1801,
	and	fp, fp, #1	@ tmp236, tmp234,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L430	@,
.L404:
	add	r8, r8, #1	@ bot_idx.1801, bot_idx.1801,
	add	r7, r7, #4	@ ivtmp.1782, ivtmp.1782,
	cmp	r8, r4	@ bot_idx.1801, list_idx.1823
	bcs	.L375	@,
	cmp	fp, #0	@ tmp236,
	beq	.L374	@,
	ldr	r0, [r7, #0]	@ temp.1797,* ivtmp.1782
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L431	@,
.L406:
	add	r8, r8, #1	@ bot_idx.1801, bot_idx.1801,
	add	r7, r7, #4	@ ivtmp.1782, ivtmp.1782,
	cmp	r8, r4	@ bot_idx.1801, list_idx.1823
	bcc	.L374	@,
	b	.L375	@
.L372:
	add	r7, r7, #4	@ ivtmp.1782, ivtmp.1782,
	add	r8, r8, #1	@ bot_idx.1801, bot_idx.1801,
	ldr	r0, [r7, #0]	@ temp.1797,* ivtmp.1782
	mov	r3, r8	@ tmp237, bot_idx.1801
	mov	fp, r7	@ tmp238, ivtmp.1782
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L432	@,
.L409:
	add	r8, r3, #1	@ bot_idx.1801, tmp237,
	add	r7, fp, #4	@ ivtmp.1782, tmp238,
	cmp	r8, r4	@ bot_idx.1801, list_idx.1823
	bcs	.L375	@,
.L374:
	ldr	r0, [r7, #0]	@ temp.1797,* ivtmp.1782
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	beq	.L372	@,
	add	r0, r0, #472	@, temp.1797,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L372	@,
.L428:
	ldr	r1, [r9, #0]	@ tmp194,* list_size
	add	r8, r8, #1	@ bot_idx.1801, bot_idx.1801,
	ldr	r0, [sp, #12]	@, %sfp
	ldr	ip, [r7, #0]	@ tmp195,* ivtmp.1782
	add	r2, ip, #472	@ tmp196, tmp195,
	str	r2, [r0, r1, asl #2]	@ tmp196,
	ldr	r3, [r9, #0]	@ tmp197,* list_size
	add	lr, r3, #1	@ tmp198, tmp197,
	str	lr, [r9, #0]	@ tmp198,* list_size
.L375:
	ldr	r3, [sp, #8]	@, %sfp
	cmp	r3, #0	@,
	beq	.L420	@,
	ldr	r0, [r6, sl, asl #2]	@ temp.1811,* fs_list
	mvn	r7, sl	@ tmp230, top_idx
	add	fp, r7, r4	@ tmp229, tmp230, list_idx.1823
	add	r7, r6, sl, asl #2	@, ivtmp.1777, fs_list, top_idx,
	and	fp, fp, #1	@ tmp231, tmp229,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L433	@,
.L397:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r7, r7, #4	@ ivtmp.1777, ivtmp.1777,
	cmp	sl, r4	@ top_idx, list_idx.1823
	bcs	.L420	@,
	cmp	fp, #0	@ tmp231,
	beq	.L377	@,
	ldr	r0, [r7, #0]	@ temp.1811,* ivtmp.1777
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L434	@,
.L399:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r7, r7, #4	@ ivtmp.1777, ivtmp.1777,
	cmp	sl, r4	@ top_idx, list_idx.1823
	bcc	.L377	@,
	b	.L420	@
.L376:
	add	r7, r7, #4	@ ivtmp.1777, ivtmp.1777,
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r0, [r7, #0]	@ temp.1811,* ivtmp.1777
	mov	r3, sl	@ tmp232, top_idx
	mov	fp, r7	@ tmp233, ivtmp.1777
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L435	@,
.L402:
	add	sl, r3, #1	@ top_idx, tmp232,
	add	r7, fp, #4	@ ivtmp.1777, tmp233,
	cmp	sl, r4	@ top_idx, list_idx.1823
	bcs	.L420	@,
.L377:
	ldr	r0, [r7, #0]	@ temp.1811,* ivtmp.1777
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	beq	.L376	@,
	add	r0, r0, #436	@, temp.1811,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L376	@,
.L427:
	ldr	r3, [r9, #0]	@ tmp203,* list_size
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r1, [sp, #12]	@, %sfp
	ldr	ip, [r7, #0]	@ tmp204,* ivtmp.1777
	add	r2, ip, #436	@ tmp205, tmp204,
	str	r2, [r1, r3, asl #2]	@ tmp205,
	ldr	r0, [r9, #0]	@ tmp206,* list_size
	add	lr, r0, #1	@ tmp207, tmp206,
	str	lr, [r9, #0]	@ tmp207,* list_size
	b	.L420	@
.L442:
	add	r0, r0, #436	@, D.35447,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L364	@,
.L426:
	ldr	r3, [r9, #0]	@ tmp169,* list_size
	add	sl, sl, #1	@ top_idx.1806, top_idx.1806,
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r2, [r7, #0]	@ tmp170,* ivtmp.1772
	add	ip, r2, #436	@ tmp171, tmp170,
	str	ip, [lr, r3, asl #2]	@ tmp171,
	ldr	r1, [r9, #0]	@ tmp172,* list_size
	add	r0, r1, #1	@ tmp173, tmp172,
	str	r0, [r9, #0]	@ tmp173,* list_size
.L367:
	ldr	r0, [sp, #8]	@, %sfp
	cmp	r0, #0	@,
	beq	.L415	@,
	ldr	r0, [r6, r8, asl #2]	@ D.35464,* fs_list
	mvn	r7, r8	@ tmp220, bot_idx
	add	fp, r7, r4	@ tmp219, tmp220, list_idx.1823
	add	r7, r6, r8, asl #2	@, ivtmp.1767, fs_list, bot_idx,
	and	fp, fp, #1	@ tmp221, tmp219,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	bne	.L436	@,
.L383:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r7, r7, #4	@ ivtmp.1767, ivtmp.1767,
	cmp	r8, r4	@ bot_idx, list_idx.1823
	bcs	.L415	@,
	cmp	fp, #0	@ tmp221,
	beq	.L369	@,
	ldr	r0, [r7, #0]	@ D.35464,* ivtmp.1767
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	bne	.L437	@,
.L385:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r7, r7, #4	@ ivtmp.1767, ivtmp.1767,
	cmp	r8, r4	@ bot_idx, list_idx.1823
	bcc	.L369	@,
	b	.L415	@
.L368:
	add	r7, r7, #4	@ ivtmp.1767, ivtmp.1767,
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r0, [r7, #0]	@ D.35464,* ivtmp.1767
	mov	r3, r8	@ tmp222, bot_idx
	mov	fp, r7	@ tmp223, ivtmp.1767
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L438	@,
.L388:
	add	r8, r3, #1	@ bot_idx, tmp222,
	add	r7, fp, #4	@ ivtmp.1767, tmp223,
	cmp	r8, r4	@ bot_idx, list_idx.1823
	bcs	.L415	@,
.L369:
	ldr	r0, [r7, #0]	@ D.35464,* ivtmp.1767
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	beq	.L368	@,
	add	r0, r0, #472	@, D.35464,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L368	@,
.L425:
	ldr	ip, [r9, #0]	@ tmp178,* list_size
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r3, [r7, #0]	@ tmp179,* ivtmp.1767
	add	r1, r3, #472	@ tmp180, tmp179,
	str	r1, [r0, ip, asl #2]	@ tmp180,
	ldr	r2, [r9, #0]	@ tmp181,* list_size
	add	lr, r2, #1	@ tmp182, tmp181,
	str	lr, [r9, #0]	@ tmp182,* list_size
.L415:
	cmp	r8, r4	@ bot_idx, list_idx.1823
	movcs	r0, #0	@,
	movcc	r0, #1	@,
	cmp	sl, r4	@ top_idx.1806, list_idx.1823
	movcs	r3, #0	@, D.35474
	movcc	r3, #1	@, D.35474
	orrs	r2, r0, r3	@,, D.35474
	str	r0, [sp, #8]	@, %sfp
	beq	.L370	@,
	cmp	r3, #0	@ D.35474,
	beq	.L367	@,
	ldr	r0, [r6, sl, asl #2]	@ D.35447,* fs_list
	mvn	r7, sl	@ tmp225, top_idx.1806
	add	fp, r7, r4	@ tmp224, tmp225, list_idx.1823
	add	r7, r6, sl, asl #2	@, ivtmp.1772, fs_list, top_idx.1806,
	and	fp, fp, #1	@ tmp226, tmp224,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L439	@,
.L390:
	add	sl, sl, #1	@ top_idx.1806, top_idx.1806,
	add	r7, r7, #4	@ ivtmp.1772, ivtmp.1772,
	cmp	sl, r4	@ top_idx.1806, list_idx.1823
	bcs	.L367	@,
	cmp	fp, #0	@ tmp226,
	beq	.L366	@,
	ldr	r0, [r7, #0]	@ D.35447,* ivtmp.1772
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	bne	.L440	@,
.L392:
	add	sl, sl, #1	@ top_idx.1806, top_idx.1806,
	add	r7, r7, #4	@ ivtmp.1772, ivtmp.1772,
	cmp	sl, r4	@ top_idx.1806, list_idx.1823
	bcc	.L366	@,
	b	.L367	@
.L364:
	add	r7, r7, #4	@ ivtmp.1772, ivtmp.1772,
	add	sl, sl, #1	@ top_idx.1806, top_idx.1806,
	ldr	r0, [r7, #0]	@ D.35447,* ivtmp.1772
	mov	r3, sl	@ tmp228, top_idx.1806
	mov	fp, r7	@ tmp227, ivtmp.1772
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L441	@,
.L395:
	add	sl, r3, #1	@ top_idx.1806, tmp228,
	add	r7, fp, #4	@ ivtmp.1772, tmp227,
	cmp	sl, r4	@ top_idx.1806, list_idx.1823
	bcs	.L367	@,
.L366:
	ldr	r0, [r7, #0]	@ D.35447,* ivtmp.1772
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #1	@ <variable>.is_used,
	bne	.L442	@,
	add	r7, r7, #4	@ ivtmp.1772, ivtmp.1772,
	add	sl, sl, #1	@ top_idx.1806, top_idx.1806,
	ldr	r0, [r7, #0]	@ D.35447,* ivtmp.1772
	mov	r3, sl	@ tmp228, top_idx.1806
	mov	fp, r7	@ tmp227, ivtmp.1772
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	beq	.L395	@,
.L441:
	add	r0, r0, #436	@, D.35447,
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
	add	r0, r0, #472	@, temp.1797,
	str	r8, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L409	@,
	b	.L428	@
.L435:
	add	r0, r0, #436	@, temp.1811,
	str	sl, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L402	@,
	b	.L427	@
.L438:
	add	r0, r0, #472	@, D.35464,
	str	r8, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L388	@,
	b	.L425	@
.L430:
	add	r0, r0, #472	@, temp.1797,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L404	@,
	b	.L428	@
.L433:
	add	r0, r0, #436	@, temp.1811,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L397	@,
	b	.L427	@
.L431:
	add	r0, r0, #472	@, temp.1797,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L406	@,
	b	.L428	@
.L434:
	add	r0, r0, #436	@, temp.1811,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L399	@,
	b	.L427	@
.L436:
	add	r0, r0, #472	@, D.35464,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L383	@,
	b	.L425	@
.L439:
	add	r0, r0, #436	@, D.35447,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L390	@,
	b	.L426	@
.L440:
	add	r0, r0, #436	@, D.35447,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L392	@,
	b	.L426	@
.L437:
	add	r0, r0, #472	@, D.35464,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L385	@,
	b	.L425	@
	.fnend
	.size	GenPiclistfromFrmlist, .-GenPiclistfromFrmlist
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
	ldr	r6, [r0, r3]	@ D.35754, <variable>.DPB.used_size
	cmp	r6, #0	@ D.35754,
	mvneq	r0, #0	@ nearest_pic_id,
	beq	.L445	@,
	movw	r4, #26432	@ tmp147,
	cmp	r6, #1	@ D.35754,
	ldr	ip, [r1, r4]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #50132	@ tmp145,
	ldr	r4, [r1, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r0, #0	@ nearest_pic_id,
	ldr	r2, [ip, #524]	@ nearest_poc, <variable>.poc
	bls	.L445	@,
	add	r0, r1, #26368	@ tmp151, pH264Ctx,
	sub	r6, r6, #1	@ tmp149, D.35754,
	add	r5, r0, #68	@ tmp151, tmp151,
	rsb	r2, r2, r4	@ tmp148, nearest_poc, curr_poc
	mov	r6, r6, asl #2	@ D.42321, tmp149,
	cmp	r2, #0	@ tmp148,
	ldr	ip, [r5, #0]	@ D.35761, <variable>.DPB.fs
	sub	r3, r6, #4	@ tmp158, D.42321,
	ubfx	r5, r3, #2, #1	@ tmp159, tmp158,,
	rsblt	r2, r2, #0	@ nearest_poc_diff, tmp148
	mov	r0, #0	@ nearest_pic_id,
	ldr	r3, [ip, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp153, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp153,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp153
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	blt	.L461	@,
.L451:
	mov	r3, #4	@ ivtmp.1858,
	cmp	r3, r6	@ ivtmp.1858, D.42321
	beq	.L445	@,
	cmp	r5, #0	@ tmp159,
	beq	.L448	@,
	add	ip, r1, r3	@ tmp177, pH264Ctx, ivtmp.1858
	add	r3, r3, #4	@ ivtmp.1858, ivtmp.1858,
	add	r5, ip, #26368	@ tmp179, tmp177,
	add	ip, r5, #68	@ tmp179, tmp179,
	ldr	r5, [ip, #0]	@ D.35761, <variable>.DPB.fs
	ldr	ip, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	ip, ip, r4	@ tmp182, <variable>.poc, curr_poc
	cmp	ip, #0	@ tmp182,
	rsblt	ip, ip, #0	@ new_poc_diff, tmp182
	cmp	ip, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, ip	@ nearest_poc_diff, new_poc_diff
	cmp	r3, r6	@ ivtmp.1858, D.42321
	beq	.L445	@,
.L448:
	add	r5, r1, r3	@ tmp162, pH264Ctx, ivtmp.1858
	add	ip, r3, #4	@ tmp160, ivtmp.1858,
	add	r3, r5, #26368	@ tmp163, tmp162,
	add	r7, r1, ip	@ tmp170, pH264Ctx, tmp160
	add	r7, r7, #26368	@ tmp171, tmp170,
	ldr	r5, [r3, #68]	@ D.35761, <variable>.DPB.fs
	ldr	r3, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp167, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp167,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp167
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
	ldr	r5, [r7, #68]	@ D.35761, <variable>.DPB.fs
	ldr	r3, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp175, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp175,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp175
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
.L456:
	add	r3, ip, #4	@ ivtmp.1858, tmp160,
	cmp	r3, r6	@ ivtmp.1858, D.42321
	bne	.L448	@,
.L445:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L461:
	ldr	r0, [ip, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	mov	r2, r3	@ nearest_poc_diff, new_poc_diff
	b	.L451	@
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
	beq	.L475	@,
	movw	r1, #49707	@ tmp156,
	ldrb	r0, [r9, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r0, #0	@ <variable>.CurrPic.structure,
	bne	.L504	@,
	add	r6, r9, #26880	@ ivtmp.1909, pH264Ctx,
	movw	ip, #20724	@ tmp160,
	mov	sl, ip	@ tmp179, tmp160
	mov	fp, r6	@ tmp180, ivtmp.1909
	add	r8, fp, #156	@ ivtmp.1901, tmp180,
	ldr	fp, [r9, ip]	@ D.35799, <variable>.CurrSlice.listXsize
	add	r6, r6, #28	@ ivtmp.1909, ivtmp.1909,
.L466:
	cmp	fp, #0	@ D.35799,
	beq	.L470	@,
	ldr	r2, [r8, #0]	@ tmp206, <variable>.pListX
	mov	r1, #32	@ minrefidx,
	ldr	r7, [r9, sl]	@ temp.1927, <variable>.CurrSlice.listXsize
	ldr	r3, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	ip, r7, #1	@ tmp189, temp.1927,
	and	ip, ip, #1	@ tmp191, tmp189,
	ldr	r2, [r3, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r2, r0	@ <variable>.apc_idc, i
	beq	.L505	@,
.L478:
	mov	r2, #1	@ j,
	cmp	r7, r2	@ temp.1927, j
	add	r3, r8, #4	@ ivtmp.1901, ivtmp.1901,
	bls	.L498	@,
	cmp	ip, #0	@ tmp191,
	beq	.L468	@,
	ldr	ip, [r8, #4]	@ tmp227, <variable>.pListX
	ldr	ip, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [ip, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	ip, r0	@ <variable>.apc_idc, i
	beq	.L506	@,
.L480:
	add	r2, r2, #1	@ j, j,
	add	r3, r3, #4	@ ivtmp.1901, ivtmp.1901,
	cmp	r7, r2	@ temp.1927, j
	bhi	.L468	@,
	b	.L498	@
.L467:
	ldr	r3, [r3, #4]	@ tmp201, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r3, r0	@ <variable>.apc_idc, i
	beq	.L507	@,
.L483:
	add	r2, ip, #1	@ j, tmp192,
	add	r3, r4, #4	@ ivtmp.1901, tmp193,
	cmp	r7, r2	@ temp.1927, j
	bls	.L498	@,
.L468:
	ldr	r5, [r3, #0]	@ tmp162, <variable>.pListX
	add	ip, r2, #1	@ tmp192, j,
	add	r4, r3, #4	@ tmp193, ivtmp.1901,
	ldr	r5, [r5, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r5, [r5, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r5, r0	@ <variable>.apc_idc, i
	bne	.L467	@,
	ldr	r3, [r3, #4]	@ tmp201, <variable>.pListX
	cmp	r1, r2	@ minrefidx, j
	movcs	r1, r2	@ minrefidx, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r3, r0	@ <variable>.apc_idc, i
	bne	.L483	@,
.L507:
	add	r2, ip, #1	@ j, tmp192,
	cmp	r1, ip	@ minrefidx, tmp192
	movcs	r1, ip	@ minrefidx, tmp192
	cmp	r7, r2	@ temp.1927, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1901, tmp193,
	bhi	.L468	@,
.L498:
	cmp	r1, #31	@ minrefidx,
	bls	.L469	@,
.L470:
	mov	r1, #0	@,
	str	r1, [r6, #0]	@, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@, <variable>.APC.RefIdx
.L469:
	add	r0, r0, #1	@ i, i,
	add	r6, r6, #8	@ ivtmp.1909, ivtmp.1909,
	cmp	r0, #16	@ i,
	bne	.L466	@,
.L475:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L504:
	add	r8, r9, #26880	@ ivtmp.1923, pH264Ctx,
	movw	r2, #20724	@ tmp158,
	ldr	fp, [r9, r2]	@ temp.1929, <variable>.CurrSlice.listXsize
	mov	ip, #0	@ i.1934,
	mov	sl, r8	@ tmp185, ivtmp.1923
	add	r8, r8, #28	@ ivtmp.1923, ivtmp.1923,
	add	sl, sl, #156	@ ivtmp.1915, tmp185,
.L465:
	cmp	fp, #0	@ temp.1929,
	beq	.L474	@,
	ldr	r3, [sl, #0]	@ temp.1930, <variable>.pListX
	movw	r2, #20724	@,
	ldr	r7, [r9, r2]	@ temp.1928, <variable>.CurrSlice.listXsize
	mov	r6, #32	@ minrefidx.1926,
	ldr	r0, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	r1, r7, #1	@ tmp194, temp.1928,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	and	r1, r1, #1	@ tmp196, tmp194,
	ldr	r3, [r0, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp225, <variable>.apc_idc,
	cmp	r2, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp226, tmp225
	cmp	r3, ip	@ tmp226, i.1934
	beq	.L508	@,
.L485:
	mov	r2, #1	@ j.1933,
	cmp	r7, r2	@ temp.1928, j.1933
	add	r3, sl, #4	@ ivtmp.1915, ivtmp.1915,
	bls	.L499	@,
	cmp	r1, #0	@ tmp196,
	beq	.L472	@,
	ldr	r1, [sl, #4]	@ temp.1930, <variable>.pListX
	ldr	r4, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r1, [r4, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r1, r1, asl r2	@ tmp235, <variable>.apc_idc,
	cmp	r0, #2	@ <variable>.structure,
	orreq	r1, r1, #1	@,, tmp236, tmp235
	cmp	r1, ip	@ tmp236, i.1934
	beq	.L509	@,
.L487:
	add	r2, r2, #1	@ j.1933, j.1933,
	add	r3, r3, #4	@ ivtmp.1915, ivtmp.1915,
	cmp	r7, r2	@ temp.1928, j.1933
	bhi	.L472	@,
	b	.L499	@
.L471:
	ldr	r3, [r3, #4]	@ temp.1930, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r3, [r1, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp216, <variable>.apc_idc,
	cmp	r2, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp217, tmp216
	cmp	r3, ip	@ tmp217, i.1934
	beq	.L510	@,
	add	r2, r0, #1	@ j.1933, tmp197,
	add	r3, r4, #4	@ ivtmp.1915, tmp198,
	cmp	r7, r2	@ temp.1928, j.1933
	bls	.L499	@,
.L472:
	ldr	r1, [r3, #0]	@ temp.1930, <variable>.pListX
	add	r0, r2, #1	@ tmp197, j.1933,
	add	r4, r3, #4	@ tmp198, ivtmp.1915,
	ldr	r5, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r5, [r5, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r5, r5, asl #1	@ tmp173, <variable>.apc_idc,
	cmp	r1, #2	@ <variable>.structure,
	movne	r1, r5	@, tmp175, tmp173
	orreq	r1, r5, #1	@,, tmp175, tmp173
	cmp	r1, ip	@ tmp175, i.1934
	bne	.L471	@,
	cmp	r6, r2	@ minrefidx.1926, j.1933
	movcs	r6, r2	@ minrefidx.1926, j.1933
	str	r6, [r8, #0]	@ minrefidx.1926, <variable>.APC.RefIdx
	b	.L471	@
.L510:
	add	r2, r0, #1	@ j.1933, tmp197,
	cmp	r6, r0	@ minrefidx.1926, tmp197
	movcs	r6, r0	@ minrefidx.1926, tmp197
	cmp	r7, r2	@ temp.1928, j.1933
	str	r6, [r8, #0]	@ minrefidx.1926, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1915, tmp198,
	bhi	.L472	@,
.L499:
	cmp	r6, #31	@ minrefidx.1926,
	bls	.L473	@,
.L474:
	mov	r0, #0	@,
	str	r0, [r8, #0]	@, <variable>.APC.RefIdx
.L473:
	add	ip, ip, #1	@ i.1934, i.1934,
	add	r8, r8, #4	@ ivtmp.1923, ivtmp.1923,
	cmp	ip, #32	@ i.1934,
	bne	.L465	@,
	b	.L475	@
.L508:
	mov	r6, #0	@ minrefidx.1926,
	str	r6, [r8, #0]	@ minrefidx.1926, <variable>.APC.RefIdx
	b	.L485	@
.L509:
	cmp	r6, r2	@ minrefidx.1926, j.1933
	movcs	r6, r2	@ minrefidx.1926, j.1933
	str	r6, [r8, #0]	@ minrefidx.1926, <variable>.APC.RefIdx
	b	.L487	@
.L505:
	mov	r1, #0	@ minrefidx,
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	b	.L478	@
.L506:
	cmp	r1, r2	@ minrefidx, j
	movcs	r1, r2	@ minrefidx, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	b	.L480	@
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
	bne	.L514	@,
	mov	r8, #26624	@ tmp172,
	ldr	r1, [r5, #3980]	@ prephitmp.1971, <variable>.dpb_size_plus1
	ldr	r8, [r4, r8]	@ <variable>.DPB.size, <variable>.DPB.size
	add	r8, r8, #1	@ tmp173, <variable>.DPB.size,
	cmp	r1, r8	@ prephitmp.1971, tmp173
	bls	.L518	@,
.L514:
	movw	r1, #:lower16:g_event_report	@ tmp175,
	movt	r1, #:upper16:g_event_report	@ tmp175,
	ldr	r3, [r1, #0]	@ g_event_report.611, g_event_report
	cmp	r3, #0	@ g_event_report.611,
	beq	.L519	@,
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
	blx	r3	@ g_event_report.611
	ldr	r1, [r5, #3980]	@ prephitmp.1971, <variable>.dpb_size_plus1
	mov	r3, #1	@ prephitmp.1983,
.L518:
	mov	r0, r3	@ ReRangeFlg, prephitmp.1983
.L515:
	movw	r2, #14332	@ tmp187,
	ldr	ip, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r5, [r4, r2]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	movw	r2, #17568	@ tmp192,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	r5, ip	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	orrne	r3, r3, #1	@,, dpb_changed, prephitmp.1983
	cmp	r2, r1	@ <variable>.CurrSPS.dpb_size_plus1, prephitmp.1971
	moveq	ip, r3	@, tmp196, dpb_changed
	orrne	ip, r3, #1	@,, tmp196, dpb_changed
	str	ip, [r6, #0]	@ tmp196,* p_dpb_changed
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L519:
	mov	r3, #1	@ prephitmp.1983,
	ldr	r1, [r5, #3980]	@ prephitmp.1971, <variable>.dpb_size_plus1
	mov	r0, r3	@ ReRangeFlg, prephitmp.1983
	b	.L515	@
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
	ldr	ip, [r5, #2912]	@ D.36017, <variable>.log2_max_pic_order_cnt_lsb_minus4
	add	r0, r0, #4	@ tmp184, <variable>.log2_max_frame_num_minus4,
	mov	r0, r2, asl r0	@ MaxFrameNum, tmp186,
	beq	.L523	@,
	bcs	.L575	@,
	cmp	r1, #0	@ tmp171,
	add	ip, ip, #4	@ tmp188, D.36017,
	mov	r2, r2, asl ip	@ MaxPicOrderCntLsb, tmp186,
	bne	.L576	@,
	movw	r3, #19820	@ tmp194,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	ip, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	bne	.L527	@,
	movw	r1, #19804	@ tmp197,
	movw	r5, #19808	@ tmp196,
	ldr	ip, [r4, r1]	@ prephitmp.2021, <variable>.CurrPOC.PrevPicOrderCntMsb
	ldr	r1, [r4, r5]	@ prephitmp.2019, <variable>.CurrPOC.PrevPicOrderCntLsb
	mov	r5, ip	@ prephitmp.2023, prephitmp.2021
.L528:
	movw	r3, #19796	@ tmp208,
	ldr	r0, [r4, r3]	@ D.36040, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r0, r1	@ D.36040, prephitmp.2019
	bcs	.L530	@,
	rsb	r3, r0, r1	@ tmp209, D.36040, prephitmp.2019
	cmp	r3, r2, lsr #1	@ tmp209, MaxPicOrderCntLsb,
	addcs	r3, r5, r2	@ D.36049, prephitmp.2023, MaxPicOrderCntLsb
	movwcs	r2, #19812	@ tmp212,
	strcs	r3, [r4, r2]	@ D.36049, <variable>.CurrPOC.PicOrderCntMsb
	bcs	.L533	@,
.L530:
	movw	r3, #19804	@ tmp213,
	ldr	r3, [r4, r3]	@ prephitmp.2089, <variable>.CurrPOC.PrevPicOrderCntMsb
.L532:
	cmp	r1, r0	@ prephitmp.2019, D.36040
	bcs	.L534	@,
	rsb	r1, r1, r0	@ tmp214, prephitmp.2019, D.36040
	cmp	r1, r2, lsr #1	@ tmp214, MaxPicOrderCntLsb,
	bhi	.L577	@,
.L534:
	movw	r0, #19812	@ tmp217,
	str	ip, [r4, r0]	@ prephitmp.2021, <variable>.CurrPOC.PicOrderCntMsb
.L533:
	movw	r1, #20681	@ tmp218,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L535	@,
	movw	r2, #19796	@ tmp220,
	movw	r0, #19800	@ tmp223,
	ldr	ip, [r4, r2]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r4, r0]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r0, #19828	@ tmp222,
	add	r2, r3, ip	@ D.36063, prephitmp.2089, <variable>.CurrPOC.pic_order_cnt_lsb
	str	r2, [r4, r0]	@ D.36063, <variable>.CurrPOC.toppoc
	add	ip, r2, r1	@ D.36065, D.36063, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r0, #19836	@ tmp226,
	cmp	ip, r2	@ D.36065, D.36063
	movlt	r3, ip	@ prephitmp.2014, D.36065
	movge	r3, r2	@ prephitmp.2014, D.36063
	movw	r2, #19832	@ tmp225,
	str	ip, [r4, r2]	@ D.36065, <variable>.CurrPOC.bottompoc
	movw	r2, #19840	@ tmp227,
	str	r3, [r4, r0]	@ prephitmp.2014,
	str	r3, [r4, r2]	@ prephitmp.2014, <variable>.CurrPOC.ThisPOC
.L536:
	movw	ip, #19836	@ tmp238,
	movw	r1, #19860	@ tmp239,
	movw	r2, #19856	@ tmp240,
	ldr	r1, [r4, r1]	@ D.36075, <variable>.CurrPOC.frame_num
	str	r3, [r4, ip]	@ prephitmp.2014, <variable>.CurrPOC.framepoc
	movw	ip, #20712	@ tmp243,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	ldr	r3, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r1, r0	@ D.36075, <variable>.CurrPOC.PreviousFrameNum
	strne	r1, [r4, r2]	@ D.36075, <variable>.CurrPOC.PreviousFrameNum
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
.L575:
	cmp	r3, #2	@ <variable>.pic_order_cnt_type,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	cmp	r1, #0	@ tmp171,
	bne	.L578	@,
	movw	ip, #19820	@ tmp355,
	ldr	r3, [r4, ip]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r3, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	bne	.L559	@,
	movw	r2, #19856	@ tmp358,
	movw	ip, #19860	@ tmp359,
	ldr	r1, [r4, r2]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	movw	r3, #19868	@ tmp357,
	ldr	r2, [r4, ip]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	ldr	r3, [r4, r3]	@ prephitmp.2009, <variable>.CurrPOC.PrevFrameNumOffset
	cmp	r1, r2	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.frame_num
	addhi	r3, r3, r0	@ prephitmp.2009, prephitmp.2009, MaxFrameNum
	movwhi	r2, #19864	@ tmp366,
	strhi	r3, [r4, r2]	@ prephitmp.2009, <variable>.CurrPOC.FrameNumOffset
	bls	.L561	@,
.L562:
	movw	r2, #19860	@ tmp368,
	movw	r1, #20712	@ tmp371,
	ldr	ip, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	r2, #20681	@ tmp376,
	ldr	r0, [r4, r1]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r1, #19852	@ tmp370,
	add	r3, r3, ip	@ temp.2079, prephitmp.2009, <variable>.CurrPOC.frame_num
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.nal_ref_idc,
	str	r3, [r4, r1]	@ temp.2079, <variable>.CurrPOC.AbsFrameNum
	mov	r3, r3, asl #1	@ tmp373, temp.2079,
	movw	r0, #19840	@ tmp375,
	subeq	r3, r3, #1	@ prephitmp.2081, tmp373,
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	str	r3, [r4, r0]	@ prephitmp.2081, <variable>.CurrPOC.ThisPOC
	bne	.L565	@,
	movw	r2, #19836	@ tmp378,
	movw	r0, #19828	@ tmp380,
	movw	ip, #19832	@ tmp379,
	str	r3, [r4, r2]	@ prephitmp.2081, <variable>.CurrPOC.framepoc
	str	r3, [r4, r0]	@ prephitmp.2081, <variable>.CurrPOC.toppoc
	str	r3, [r4, ip]	@ prephitmp.2081,
.L558:
	movw	r2, #19860	@ tmp388,
	movw	r0, #19864	@ tmp391,
	ldr	r1, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	ip, #19856	@ tmp387,
	ldr	r2, [r4, r0]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	movw	r3, #19868	@ tmp390,
	str	r1, [r4, ip]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	str	r2, [r4, r3]	@ <variable>.CurrPOC.FrameNumOffset,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L523:
	cmp	r1, #0	@ tmp171,
	movwne	r3, #19864	@ tmp251,
	movne	r2, #0	@ tmp252,
	strne	r2, [r4, r3]	@ tmp252, <variable>.CurrPOC.FrameNumOffset
	bne	.L540	@,
	movw	r3, #19820	@ tmp253,
	ldr	r7, [r4, r3]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r7, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	beq	.L541	@,
	movw	ip, #19868	@ tmp255,
	movw	r0, #19856	@ tmp257,
	mov	r3, r1	@ prephitmp.2013, tmp171
	str	r1, [r4, ip]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PreviousFrameNum
.L542:
	movw	r2, #19864	@ tmp268,
	str	r3, [r4, r2]	@ prephitmp.2013, <variable>.CurrPOC.FrameNumOffset
.L540:
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
	beq	.L579	@,
.L546:
	movw	ip, #19884	@ tmp283,
	mov	r3, #0	@ tmp284,
	str	r3, [r4, ip]	@ tmp284, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ temp.2084, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r3	@ temp.2084,
	ble	.L547	@,
	add	r0, r5, #2928	@ ivtmp.2043, sps,
	mov	r2, r3	@ i, prephitmp.2010
.L548:
	ldr	r7, [r0], #4	@ tmp285, <variable>.offset_for_ref_frame
	add	r2, r2, #1	@ i, i,
	add	r3, r3, r7	@ prephitmp.2010, prephitmp.2010, tmp285
	str	r3, [r4, ip]	@ prephitmp.2010, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ temp.2084, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r2	@ temp.2084, i
	bgt	.L548	@,
.L547:
	movw	r3, #19852	@ tmp287,
	ldr	r7, [r4, r3]	@ temp.2058, <variable>.CurrPOC.AbsFrameNum
	cmp	r7, #0	@ temp.2058,
	movweq	r3, #19880	@ tmp307,
	moveq	r6, r7	@ prephitmp.2062, temp.2058
	streq	r7, [r4, r3]	@ temp.2058, <variable>.CurrPOC.ExpectedPicOrderCnt
	beq	.L550	@,
	sub	r7, r7, #1	@ tmp288, temp.2058,
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
	mul	r6, r0, r6	@ prephitmp.2062, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle, tmp291
	str	r6, [r4, ip]	@ prephitmp.2062, <variable>.CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ D.36116,
	str	r1, [r4, r2]	@ D.36116, <variable>.CurrPOC.FrameNumInPicOrderCntCycle
	blt	.L550	@,
	add	r2, r5, #2928	@ ivtmp.2038, sps,
	cmp	r1, #1	@ D.36116,
	and	r7, r1, #1	@ tmp399, D.36116,
	mov	r0, #1	@ i.2064,
	ldr	lr, [r2], #4	@ tmp305, <variable>.offset_for_ref_frame
	add	r6, r6, lr	@ prephitmp.2062, prephitmp.2062, tmp305
	str	r6, [r4, ip]	@ prephitmp.2062, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L550	@,
	cmp	r7, #0	@ tmp399,
	beq	.L551	@,
	ldr	lr, [r2], #4	@ tmp411, <variable>.offset_for_ref_frame
	mov	r0, #2	@ i.2064,
	cmp	r1, r0	@ D.36116, i.2064
	add	r6, r6, lr	@ prephitmp.2062, prephitmp.2062, tmp411
	str	r6, [r4, ip]	@ prephitmp.2062, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L550	@,
.L551:
	mov	r3, r2	@ tmp401, ivtmp.2038
	add	r0, r0, #2	@ i.2064, i.2064,
	ldr	r7, [r3], #4	@ tmp404, <variable>.offset_for_ref_frame
	cmp	r1, r0	@ D.36116, i.2064
	add	r6, r6, r7	@ prephitmp.2062, prephitmp.2062, tmp404
	str	r6, [r4, ip]	@ prephitmp.2062, <variable>.CurrPOC.ExpectedPicOrderCnt
	ldr	r7, [r2, #4]	@ tmp409, <variable>.offset_for_ref_frame
	add	r2, r3, #4	@ ivtmp.2038, tmp401,
	add	r6, r6, r7	@ prephitmp.2062, prephitmp.2062, tmp409
	str	r6, [r4, ip]	@ prephitmp.2062, <variable>.CurrPOC.ExpectedPicOrderCnt
	bge	.L551	@,
.L550:
	movw	r3, #20712	@ tmp309,
	movw	r0, #20681	@ tmp314,
	ldr	ip, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	ip, #0	@ <variable>.CurrSlice.nal_ref_idc,
	ldreq	ip, [r5, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	movwne	ip, #19880	@ tmp311,
	ldrne	r6, [r4, ip]	@ prephitmp.2066, <variable>.CurrPOC.ExpectedPicOrderCnt
	addeq	r6, r6, ip	@ prephitmp.2066, prephitmp.2062, <variable>.offset_for_non_ref_pic
	movweq	ip, #19880	@ tmp313,
	streq	r6, [r4, ip]	@ prephitmp.2066, <variable>.CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L580	@,
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
	addeq	r6, r6, r0	@ prephitmp.2071, prephitmp.2066, <variable>.CurrPOC.delta_pic_order_cnt
	addne	r6, r0, r6	@ prephitmp.2071, tmp333, prephitmp.2066
	movweq	r0, #19828	@ tmp330,
	movwne	r0, #19832	@ tmp336,
	str	r6, [r4, r0]	@ prephitmp.2071,
	str	r6, [r4, r2]	@ prephitmp.2071, <variable>.CurrPOC.ThisPOC
.L555:
	movw	r2, #19860	@ tmp340,
	movw	r1, #19864	@ tmp343,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	ip, #19836	@ tmp338,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	movw	r3, #19856	@ tmp339,
	movw	r1, #19868	@ tmp342,
	str	r6, [r4, ip]	@ prephitmp.2071, <variable>.CurrPOC.framepoc
	str	r0, [r4, r3]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	str	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L580:
	movw	r3, #19844	@ tmp316,
	movw	r1, #19848	@ tmp319,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r0, #19828	@ tmp318,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	add	r6, r6, ip	@ D.36130, prephitmp.2066, <variable>.CurrPOC.delta_pic_order_cnt
	str	r6, [r4, r0]	@ D.36130, <variable>.CurrPOC.toppoc
	ldr	r1, [r5, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movw	ip, #19832	@ tmp323,
	add	r3, r2, r1	@ tmp320, <variable>.CurrPOC.delta_pic_order_cnt, <variable>.offset_for_top_to_bottom_field
	movw	r1, #19836	@ tmp324,
	add	r0, r3, r6	@ D.36134, tmp320, D.36130
	movw	r2, #19840	@ tmp325,
	cmp	r0, r6	@ D.36134, D.36130
	movlt	r6, r0	@ prephitmp.2071, D.36134
	movge	r6, r6	@ prephitmp.2071, D.36130
	str	r0, [r4, ip]	@ D.36134, <variable>.CurrPOC.bottompoc
	str	r6, [r4, r1]	@ prephitmp.2071,
	str	r6, [r4, r2]	@ prephitmp.2071, <variable>.CurrPOC.ThisPOC
	b	.L555	@
.L579:
	movw	r1, #19852	@ tmp280,
	ldr	r2, [r4, r1]	@ D.36101, <variable>.CurrPOC.AbsFrameNum
	cmp	r2, #0	@ D.36101,
	subne	r2, r2, #1	@ tmp282, D.36101,
	strne	r2, [r4, r1]	@ tmp282, <variable>.CurrPOC.AbsFrameNum
	b	.L546	@
.L578:
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
	b	.L558	@
.L576:
	movw	r0, #19808	@ tmp192,
	movw	r1, #19804	@ tmp190,
	mov	r3, #0	@ tmp191,
	str	r3, [r4, r0]	@ tmp191, <variable>.CurrPOC.PrevPicOrderCntLsb
	str	r3, [r4, r1]	@ tmp191, <variable>.CurrPOC.PrevPicOrderCntMsb
.L526:
	movw	ip, #19796	@ tmp393,
	movw	r1, #19804	@ tmp394,
	mov	r3, #0	@ prephitmp.2089,
	ldr	r0, [r4, ip]	@ D.36040, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	ip, [r4, r1]	@ prephitmp.2021, <variable>.CurrPOC.PrevPicOrderCntMsb
	mov	r1, r3	@ prephitmp.2019, prephitmp.2089
	b	.L532	@
.L535:
	movw	r1, #20682	@ tmp228,
	movw	r0, #19796	@ tmp230,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	movw	r1, #19840	@ tmp237,
	ldr	ip, [r4, r0]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r2, #0	@ <variable>.CurrSlice.bottom_field_flag,
	add	r3, r3, ip	@ prephitmp.2014, prephitmp.2089, <variable>.CurrPOC.pic_order_cnt_lsb
	movweq	ip, #19828	@ tmp232,
	movwne	ip, #19832	@ tmp236,
	str	r3, [r4, ip]	@ prephitmp.2014,
	str	r3, [r4, r1]	@ prephitmp.2014, <variable>.CurrPOC.ThisPOC
	b	.L536	@
.L527:
	movw	r0, #19824	@ tmp198,
	ldr	r3, [r4, r0]	@ <variable>.CurrPOC.last_pic_bottom_field, <variable>.CurrPOC.last_pic_bottom_field
	cmp	r3, #0	@ <variable>.CurrPOC.last_pic_bottom_field,
	beq	.L529	@,
	movw	r3, #19808	@ tmp202,
	movw	ip, #19804	@ tmp200,
	str	r1, [r4, r3]	@ tmp171, <variable>.CurrPOC.PrevPicOrderCntLsb
	str	r1, [r4, ip]	@ tmp171, <variable>.CurrPOC.PrevPicOrderCntMsb
	b	.L526	@
.L559:
	movw	r3, #19856	@ tmp362,
	movw	r0, #19868	@ tmp364,
	str	r1, [r4, r3]	@ tmp171, <variable>.CurrPOC.PreviousFrameNum
	mov	r3, r1	@ prephitmp.2009, tmp171
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
.L561:
	movw	r1, #19864	@ tmp367,
	str	r3, [r4, r1]	@ prephitmp.2009, <variable>.CurrPOC.FrameNumOffset
	b	.L562	@
.L565:
	movw	r0, #20682	@ tmp381,
	movw	r1, #19836	@ tmp385,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	ip, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movweq	ip, #19828	@ tmp384,
	movwne	ip, #19832	@ tmp386,
	str	r3, [r4, ip]	@ prephitmp.2081,
	str	r3, [r4, r1]	@ prephitmp.2081,
	b	.L558	@
.L541:
	movw	r3, #19860	@ tmp259,
	movw	r7, #19856	@ tmp260,
	ldr	r2, [r4, r3]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	ldr	r1, [r4, r7]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	cmp	r2, r1	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	bcs	.L543	@,
	movw	r7, #19868	@ tmp264,
	movw	ip, #19864	@ tmp263,
	ldr	r1, [r4, r7]	@ <variable>.CurrPOC.PrevFrameNumOffset, <variable>.CurrPOC.PrevFrameNumOffset
	add	r0, r0, r1	@ tmp266, MaxFrameNum, <variable>.CurrPOC.PrevFrameNumOffset
	str	r0, [r4, ip]	@ tmp266, <variable>.CurrPOC.FrameNumOffset
	b	.L540	@
.L577:
	rsb	r3, r2, r3	@ D.36056, MaxPicOrderCntLsb, prephitmp.2089
	movw	r2, #19812	@ tmp216,
	str	r3, [r4, r2]	@ D.36056, <variable>.CurrPOC.PicOrderCntMsb
	b	.L533	@
.L529:
	movw	r1, #19828	@ tmp206,
	movw	r0, #19804	@ tmp204,
	ldr	r1, [r4, r1]	@ prephitmp.2019, <variable>.CurrPOC.toppoc
	mov	r5, r3	@ prephitmp.2023, <variable>.CurrPOC.last_pic_bottom_field
	str	r3, [r4, r0]	@ <variable>.CurrPOC.last_pic_bottom_field, <variable>.CurrPOC.PrevPicOrderCntMsb
	movw	r0, #19808	@ tmp207,
	mov	ip, r3	@ prephitmp.2021, prephitmp.2023
	str	r1, [r4, r0]	@ prephitmp.2019, <variable>.CurrPOC.PrevPicOrderCntLsb
	b	.L528	@
.L543:
	movw	r2, #19868	@ tmp267,
	ldr	r3, [r4, r2]	@ prephitmp.2013, <variable>.CurrPOC.PrevFrameNumOffset
	b	.L542	@
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
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.36194, <variable>.CurrPic.structure
	cmp	r2, #0	@ D.36194,
	ldr	r6, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r3, #1	@ tmp172,
	mla	r4, ip, r6, r1	@ tmp169, tmp168, <variable>.seq_parameter_set_id, <variable>.SPS
	ldr	r1, [r4, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	r6, r1, #4	@ tmp170, <variable>.log2_max_frame_num_minus4,
	mov	r6, r3, asl r6	@ MaxFrameNum, tmp172,
	beq	.L582	@,
	movw	r7, #26632	@ tmp176,
	cmp	r2, #2	@ D.36194,
	movne	r4, #0	@, add_bottom
	moveq	r4, #1	@, add_bottom
	ldr	ip, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r2, #1	@ D.36194,
	movne	r5, #0	@, add_top
	moveq	r5, #1	@, add_top
	cmp	ip, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L584	@,
	add	r8, r0, #26368	@ ivtmp.2157, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r8, #128	@ ivtmp.2157, ivtmp.2157,
	movw	r8, #50120	@ tmp245,
.L597:
	ldr	r1, [r3, #0]	@ temp.2165, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L593	@,
	ldr	ip, [r1, #512]	@ temp.2167, <variable>.frame_num
	ldr	sl, [r0, r8]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	ip, sl	@ temp.2167, <variable>.CurrPic.frame_num
	rsbhi	ip, r6, ip	@ tmp205, MaxFrameNum, temp.2167
	str	ip, [r1, #516]	@ temp.2167, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ prephitmp.2125, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2129, <variable>.is_reference
	tst	ip, #1	@ prephitmp.2129,
	beq	.L596	@,
	ldr	sl, [r1, #436]	@ tmp209,
	bic	sl, sl, #-16777216	@ tmp207, tmp209,
	bic	sl, sl, #255	@ tmp207, tmp207,
	cmp	sl, #65536	@ tmp207,
	ldreq	ip, [r1, #516]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	ip, r5, ip, asl #1	@, tmp212, add_top, <variable>.frame_num_wrap,
	streq	ip, [r1, #448]	@ tmp212, <variable>.top_field.pic_num
	ldreq	r1, [r3, #0]	@ prephitmp.2125, <variable>.DPB.fs_ref
	ldreqb	ip, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2129, <variable>.is_reference
.L596:
	tst	ip, #2	@ prephitmp.2129,
	beq	.L593	@,
	ldr	ip, [r1, #472]	@ tmp216,
	bic	ip, ip, #-16777216	@ tmp214, tmp216,
	bic	ip, ip, #255	@ tmp214, tmp214,
	cmp	ip, #65536	@ tmp214,
	ldreq	ip, [r1, #516]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	ip, r4, ip, asl #1	@, tmp219, add_bottom, <variable>.frame_num_wrap,
	streq	ip, [r1, #484]	@ tmp219, <variable>.bottom_field.pic_num
.L593:
	ldr	r1, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.2157, ivtmp.2157,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L597	@,
.L584:
	movw	r6, #26636	@ tmp222,
	ldr	r2, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r2, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	beq	.L601	@,
	add	r3, r0, #26368	@ ivtmp.2152, pH264Ctx,
	mov	r2, #0	@ i.2169,
	add	r3, r3, #192	@ ivtmp.2152, ivtmp.2152,
.L600:
	ldr	ip, [r3, #0]	@ prephitmp.2118, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2169, i.2169,
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ temp.2179, <variable>.is_reference
	cmp	r1, #0	@ temp.2179,
	beq	.L598	@,
	tst	r1, #1	@ prephitmp.2122,
	beq	.L599	@,
	ldr	r7, [ip, #436]	@ tmp228,
	bic	r7, r7, #-16777216	@ tmp226, tmp228,
	bic	r7, r7, #255	@ tmp226, tmp226,
	cmp	r7, #256	@ tmp226,
	ldreq	r1, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r5, r1, asl #1	@, tmp231, add_top, <variable>.long_term_frame_idx,
	streq	r1, [ip, #444]	@ tmp231, <variable>.top_field.long_term_pic_num
	ldreq	ip, [r3, #0]	@ prephitmp.2118, <variable>.DPB.fs_ltref
	ldreqb	r1, [ip, #2]	@ zero_extendqisi2	@ prephitmp.2122, <variable>.is_reference
.L599:
	tst	r1, #2	@ prephitmp.2122,
	beq	.L598	@,
	ldr	r1, [ip, #472]	@ tmp235,
	bic	r1, r1, #-16777216	@ tmp233, tmp235,
	bic	r1, r1, #255	@ tmp233, tmp233,
	cmp	r1, #256	@ tmp233,
	ldreq	r1, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r4, r1, asl #1	@, tmp238, add_bottom, <variable>.long_term_frame_idx,
	streq	r1, [ip, #480]	@ tmp238, <variable>.bottom_field.long_term_pic_num
.L598:
	ldr	ip, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.2152, ivtmp.2152,
	cmp	ip, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2169
	bhi	.L600	@,
.L601:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L582:
	movw	r4, #26632	@ tmp178,
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L585	@,
	add	r5, r0, #26368	@ ivtmp.2147, pH264Ctx,
	add	r3, r5, #128	@ ivtmp.2147, ivtmp.2147,
	movw	r5, #50120	@ tmp242,
	b	.L589	@
.L586:
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i.2162, i.2162,
	add	r3, r3, #4	@ ivtmp.2147, ivtmp.2147,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2162
	bls	.L585	@,
.L589:
	ldr	r1, [r3, #0]	@ D.36198, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L586	@,
	ldr	ip, [r1, #400]	@ tmp184,
	bic	ip, ip, #-16777216	@ tmp182, tmp184,
	bic	ip, ip, #255	@ tmp182, tmp182,
	cmp	ip, #65536	@ tmp182,
	bne	.L586	@,
	ldr	ip, [r1, #512]	@ D.36206, <variable>.frame_num
	add	r2, r2, #1	@ i.2162, i.2162,
	ldr	r7, [r0, r5]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	ip, r7	@ D.36206, <variable>.CurrPic.frame_num
	rsb	r7, r6, ip	@ tmp187, MaxFrameNum, D.36206
	strls	ip, [r1, #516]	@ D.36206, <variable>.frame_num_wrap
	strhi	r7, [r1, #516]	@ tmp187, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ temp.2161, <variable>.DPB.fs_ref
	add	r3, r3, #4	@ ivtmp.2147, ivtmp.2147,
	ldr	ip, [r1, #516]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	str	ip, [r1, #412]	@ <variable>.frame_num_wrap, <variable>.frame.pic_num
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2162
	bhi	.L589	@,
.L585:
	movw	r4, #26636	@ tmp191,
	ldr	r2, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r2, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	beq	.L601	@,
	add	r3, r0, #26368	@ ivtmp.2142, pH264Ctx,
	mov	r2, #0	@ i.2163,
	add	r3, r3, #192	@ ivtmp.2142, ivtmp.2142,
	b	.L592	@
.L591:
	ldr	r1, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2163
	bls	.L601	@,
.L592:
	ldr	r1, [r3, #0]	@ D.36216, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2163, i.2163,
	add	r3, r3, #4	@ ivtmp.2142, ivtmp.2142,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L591	@,
	ldr	ip, [r1, #400]	@ tmp197,
	bic	ip, ip, #-16777216	@ tmp195, tmp197,
	bic	ip, ip, #255	@ tmp195, tmp195,
	cmp	ip, #256	@ tmp195,
	ldreq	ip, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	ip, [r1, #408]	@ <variable>.long_term_frame_idx, <variable>.frame.long_term_pic_num
	b	.L591	@
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
	beq	.L607	@,
	movw	r3, #26628	@ tmp141,
	ldr	r4, [r0, r3]	@ D.36292, <variable>.DPB.used_size
	cmp	r4, #0	@ D.36292,
	beq	.L607	@,
	movw	ip, #26432	@ tmp142,
	ldr	r2, [r0, ip]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r2, r1	@ <variable>.DPB.fs, pFrameStore
	beq	.L608	@,
	tst	r4, #1	@ D.36292,
	add	r3, r0, #26368	@ tmp144, pH264Ctx,
	add	r2, r3, #68	@ ivtmp.2211, tmp144,
	mov	r0, #0	@ i,
	bne	.L609	@,
	ldr	ip, [r2, #0]	@ D.36289, <variable>.DPB.fs
	mov	r0, #1	@ i,
	add	r2, r3, #72	@ ivtmp.2211, tmp144,
	cmp	ip, r1	@ D.36289, pFrameStore
	bne	.L609	@,
.L608:
	mov	r0, #0	@ D.36287,
	b	.L611	@
.L610:
	ldr	ip, [r3], #4	@ D.36289, <variable>.DPB.fs
	cmp	ip, r1	@ D.36289, pFrameStore
	beq	.L608	@,
	ldr	ip, [r2, #4]	@ D.36289, <variable>.DPB.fs
	add	r2, r3, #4	@ ivtmp.2211, tmp150,
	cmp	ip, r1	@ D.36289, pFrameStore
	beq	.L608	@,
.L609:
	add	r0, r0, #1	@ tmp149, i,
	mov	r3, r2	@ tmp150, ivtmp.2211
	cmp	r0, r4	@ tmp149, D.36292
	add	r0, r0, #1	@ i, tmp149,
	bcc	.L610	@,
.L607:
	mov	r0, #1	@ D.36287,
.L611:
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
.L623:
	ldr	r2, [r3, #12]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r1, [r3, #8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [r3, #4056]	@ pH264SliceParam, <variable>.pNextSlice
	add	ip, r1, r2	@ tmp139, <variable>.valid_bitlen, <variable>.valid_bitlen
	add	r2, ip, #7	@ tmp142, tmp139,
	cmp	r3, #0	@ pH264SliceParam,
	add	r0, r0, r2, lsr #3	@, TotalSize, TotalSize, tmp142,
	bne	.L623	@,
	bx	lr	@
	.fnend
	.size	H264_GetPicStreamSize, .-H264_GetPicStreamSize
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
	ldr	r1, [r0, r4]	@ D.38124, <variable>.CurrSlice.pic_parameter_set_id
	movw	r6, #13580	@ tmp138,
	mov	r2, #2208	@ tmp142,
	ldr	ip, [r0, r6]	@ <variable>.SPS, <variable>.SPS
	movw	r5, #20681	@ tmp158,
	movw	r4, #20732	@ tmp152,
	mla	r6, r2, r1, r3	@ tmp143, tmp142, D.38124, <variable>.PPS
	ldrb	r3, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r5, [r0, r4]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r4, #20700	@ tmp155,
	ldr	r4, [r0, r4]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movw	r6, #22336	@ tmp148,
	str	r1, [r0, r6]	@ D.38124, <variable>.PrevSlice.pic_parameter_set_id
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
	ldr	r3, [r2, #2908]	@ prephitmp.2279, <variable>.pic_order_cnt_type
	cmp	r3, #0	@ prephitmp.2279,
	bne	.L629	@,
	movw	r1, #19796	@ tmp180,
	movw	r3, #19800	@ tmp183,
	ldr	ip, [r0, r1]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r3, #22352	@ tmp179,
	str	ip, [r0, r3]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r3, #22356	@ tmp182,
	str	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r3, [r2, #2908]	@ prephitmp.2279, <variable>.pic_order_cnt_type
.L629:
	cmp	r3, #1	@ prephitmp.2279,
	bne	.L630	@,
	movw	r2, #19844	@ tmp186,
	movw	ip, #19848	@ tmp189,
	ldr	r1, [r0, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r3, #22360	@ tmp185,
	ldr	r2, [r0, ip]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	ip, #22364	@ tmp188,
	str	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	str	r2, [r0, ip]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
.L630:
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
	beq	.L635	@,
	bcs	.L640	@,
	movw	r1, #50148	@ tmp140,
	ldr	r2, [r0, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r2, #2	@ <variable>.CurrPic.pic_type,
	movne	r2, #1	@ tmp143,
	strne	r2, [r0, r1]	@ tmp143, <variable>.CurrPic.pic_type
	movw	r1, #50152	@ tmp150,
	mov	r2, #0	@ tmp151,
	str	r2, [r0, r1]	@ tmp151, <variable>.CurrPic.is_idr_pic
	bx	lr	@
.L640:
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
.L635:
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
	ldr	r3, [r0, #368]	@ D.39574, <variable>.pCurrNal
	cmp	r3, #0	@ D.39574,
	cmpne	r1, #0	@, len,
	bne	.L648	@,
.L642:
	mvn	r0, #0	@ D.39580,
.L644:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L648:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ D.39581, <variable>.nal_used_segment
	rsb	ip, r2, r2, asl #3	@, tmp155, D.39581, D.39581,
	add	ip, r3, ip, asl #2	@, tmp157, D.39574, tmp155,
	ldr	ip, [ip, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	ip, #0	@ <variable>.streamBuffer,
	beq	.L642	@,
	ldr	ip, [r3, #68]	@ D.39588, <variable>.nal_segment
	cmp	ip, #2	@ D.39588,
	bhi	.L642	@,
	cmp	r2, #1	@ D.39581,
	bhi	.L642	@,
	cmp	ip, r2	@ D.39588, segment_idx
	bls	.L642	@,
	mov	r4, r1, asl #3	@ len.2346, len,
	mov	r6, #28	@ tmp188,
.L646:
	mla	r3, r6, r2, r3	@ tmp163, tmp188, segment_idx, D.39574
	add	r2, r2, #1	@ segment_idx, segment_idx,
	add	r5, r3, #24	@ tmp164, tmp163,
	ldr	r1, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	mov	r1, r1, asl #3	@ D.39596, <variable>.bitstream_length,
	add	ip, r4, ip	@ D.39594, len.2346, <variable>.bitsoffset
	cmp	ip, r1	@ D.39594, D.39596
	rsb	r4, r1, ip	@ len.2346, D.39596, D.39594
	bls	.L649	@,
	str	r1, [r3, #24]	@ D.39596, <variable>.bitsoffset
	ldr	r3, [r0, #368]	@ temp.2347, <variable>.pCurrNal
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	ip, r1, #1	@ tmp184, <variable>.nal_used_segment,
	strb	ip, [r3, #0]	@ tmp184, <variable>.nal_used_segment
	ldr	r3, [r0, #368]	@ D.39574, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r2	@ <variable>.nal_segment, segment_idx
	bhi	.L646	@,
	mov	r0, #0	@ D.39580,
	b	.L644	@
.L649:
	str	ip, [r5, #0]	@ D.39594, <variable>.bitsoffset
	mov	r0, #1	@ D.39580,
	b	.L644	@
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
	bne	.L658	@,
.L651:
	mvn	r2, #0	@ len,
.L653:
	mov	r0, r2	@, len
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L658:
	ldr	r0, [r0, #368]	@ D.39618, <variable>.pCurrNal
	cmp	r0, #0	@ D.39618,
	cmpne	r2, #0	@, len,
	movgt	ip, #0	@, tmp184
	movle	ip, #1	@, tmp184
	ble	.L651	@,
	ldrb	r4, [r0, #0]	@ zero_extendqisi2	@ D.39623, <variable>.nal_used_segment
	rsb	r5, r4, r4, asl #3	@, tmp188, D.39623, D.39623,
	add	r5, r0, r5, asl #2	@, tmp190, D.39618, tmp188,
	ldr	r5, [r5, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r5, #0	@ <variable>.streamBuffer,
	beq	.L651	@,
	ldr	r5, [r0, #68]	@ D.39630, <variable>.nal_segment
	cmp	r5, #2	@ D.39630,
	bhi	.L651	@,
	cmp	r4, #1	@ D.39623,
	bhi	.L651	@,
	cmp	r5, r4	@ D.39630, segment_idx
	bls	.L651	@,
	mov	r6, #28	@ tmp234,
.L656:
	mul	r7, r6, r4	@ tmp194, tmp234, segment_idx
	mov	r5, #0	@ ivtmp.2377,
	add	r0, r7, r0	@ tmp196, tmp194, D.39618
	ldr	r9, [r0, #24]	@, <variable>.bitsoffset
	mov	r8, r7	@ tmp233, tmp194
	ldr	sl, [r0, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r7, r9, #7	@ tmp203,,
	ldr	r0, [r0, #8]	@ D.39635, <variable>.streamBuffer
	add	sl, r0, sl	@ end_byte, D.39635, <variable>.bitstream_length
	add	r0, r0, r7, lsr #3	@, byte_pos, D.39635, tmp203,
.L652:
	add	r9, r5, r0	@ D.42869, ivtmp.2377, byte_pos
	add	r7, r5, r1	@ D.42867, ivtmp.2377, pdes
	cmp	sl, r9	@ end_byte, D.42869
	bls	.L659	@,
	ldrb	r9, [r0, r5]	@ zero_extendqisi2	@ tmp212,* ivtmp.2377
	add	ip, ip, #1	@ cnt, cnt,
	cmp	ip, r2	@ cnt, len
	strb	r9, [r1, r5]	@ tmp212,* ivtmp.2377
	add	r5, r5, #1	@ ivtmp.2377, ivtmp.2377,
	ldr	r7, [r3, #368]	@ temp.2395, <variable>.pCurrNal
	add	r7, r8, r7	@ tmp217, tmp233, temp.2395
	ldr	r9, [r7, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r9, r9, #8	@ tmp225, <variable>.bitsoffset,
	str	r9, [r7, #24]	@ tmp225, <variable>.bitsoffset
	bcc	.L652	@,
	b	.L653	@
.L659:
	ldr	r1, [r3, #368]	@ temp.2397, <variable>.pCurrNal
	add	r4, r4, #1	@ segment_idx, segment_idx,
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	r0, r0, #1	@ tmp228, <variable>.nal_used_segment,
	strb	r0, [r1, #0]	@ tmp228, <variable>.nal_used_segment
	ldr	r0, [r3, #368]	@ D.39618, <variable>.pCurrNal
	ldr	r1, [r0, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r4	@ <variable>.nal_segment, segment_idx
	movhi	r1, r7	@ pdes, D.42867
	bhi	.L656	@
.L655:
	mov	r2, ip	@ len, cnt
	b	.L653	@
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
	addne	r2, r0, #96	@ ivtmp.2455, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L664	@,
	b	.L663	@
.L673:
	ldrb	ip, [r2, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r2, r2, #192	@ ivtmp.2455, ivtmp.2455,
	cmp	ip, #0	@ <variable>.is_valid,
	beq	.L663	@,
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L665	@,
.L664:
	ldrb	r1, [r2, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L673	@,
.L663:
	cmp	r3, #136	@ Pos,
	bhi	.L665	@,
	add	r1, r3, r3, asl #1	@, tmp155, Pos, Pos,
	mov	r2, #1	@ tmp159,
	add	r0, r0, r1, asl #5	@, tmp157, pH264Ctx, tmp155,
	strb	r2, [r0, #377]	@ tmp159, <variable>.is_valid
	mov	r0, r3	@, D.40548
	bx	lr	@
.L665:
	mvn	r3, #0	@ D.40548,
	mov	r0, r3	@, D.40548
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
	beq	.L679	@,
	subs	r3, r0, #255	@ D.39061, ar_idc,
	movne	r3, #1	@ D.39061
	cmp	r0, #255	@ ar_idc,
	cmpne	r0, #16	@, ar_idc,
	bgt	.L679	@,
	cmp	r1, #0	@ sar_width,
	cmpne	r2, #0	@, sar_height,
	beq	.L696	@,
.L680:
	cmp	r0, #1	@ ar_idc,
	moveq	r4, #5	@ final_dar,
	moveq	r2, #0	@ dar,
	beq	.L682	@,
	cmp	r3, #0	@ D.39061,
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
	add	r1, r5, #1020	@ tmp178, tmp176,
	cmp	r5, #0	@ tmp176,
	add	r2, r1, #3	@ tmp178, tmp178,
	movlt	r5, r2	@ tmp177, tmp178
	mov	r2, r5, asr #10	@ dar, tmp177,
	sub	ip, r2, #2400	@ iftmp.724, dar,
	sub	r3, r2, #2256	@ iftmp.2506, dar,
	sub	r1, ip, #6	@ iftmp.724, iftmp.724,
	sub	r3, r3, #7	@ iftmp.2506, iftmp.2506,
	cmp	r1, #0	@ iftmp.724,
	rsblt	r1, r2, #2400	@ tmp182, dar,
	addlt	r1, r1, #6	@ iftmp.724, tmp182,
	cmp	r3, #0	@ iftmp.2506,
	rsblt	r0, r2, #2256	@ tmp184, dar,
	addlt	r0, r0, #7	@ iftmp.725, tmp184,
	movge	r0, r3	@ iftmp.725, iftmp.2506
	cmp	r1, r0	@ iftmp.724, iftmp.725
	movlt	r4, #4	@ final_dar,
	blt	.L682	@,
	cmp	r3, #0	@ iftmp.2506,
	sub	lr, r2, #1808	@ iftmp.727, dar,
	rsblt	r3, r2, #2256	@ tmp185, dar,
	sub	r1, lr, #12	@ iftmp.727, iftmp.727,
	addlt	r3, r3, #7	@ iftmp.2506, tmp185,
	cmp	r1, #0	@ iftmp.727,
	rsblt	r0, r2, #1808	@ tmp187, dar,
	addlt	r0, r0, #12	@ iftmp.2507, tmp187,
	movge	r0, r1	@ iftmp.2507, iftmp.727
	cmp	r3, r0	@ iftmp.2506, iftmp.2507
	movlt	r4, #3	@ final_dar,
	blt	.L682	@,
	cmp	r1, #0	@ iftmp.727,
	sub	r4, r2, #1360	@ iftmp.729, dar,
	sub	r4, r4, #5	@ iftmp.729, iftmp.729,
	rsblt	r1, r2, #1808	@ tmp188, dar,
	addlt	r1, r1, #12	@ iftmp.727, tmp188,
	cmp	r4, #0	@ iftmp.729,
	rsblt	r4, r2, #1360	@ tmp190, dar,
	addlt	r4, r4, #5	@ iftmp.729, tmp190,
	cmp	r1, r4	@ iftmp.727, iftmp.729
	movlt	r4, #2	@ final_dar,
	movge	r4, #1	@ final_dar,
	b	.L682	@
.L696:
	cmp	r0, #255	@ ar_idc,
	bne	.L680	@,
.L679:
	mov	r4, #0	@ final_dar,
	mov	r2, r4	@ dar, final_dar
.L682:
	mov	r3, r4	@, final_dar
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, final_dar
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	H264GetDar, .-H264GetDar
	.align	2
	.global	SPSEqual
	.type	SPSEqual, %function
SPSEqual:
	.fnstart
.LFB1706:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ pSPS1, pSPS1
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L729	@,
	cmp	r1, #0	@ pSPS2,
	beq	.L730	@,
	ldr	r6, [r3, #736]	@ <variable>.profile_idc, <variable>.profile_idc
	ldr	r4, [r1, #736]	@ <variable>.profile_idc, <variable>.profile_idc
	ldrb	r7, [r3, #0]	@ zero_extendqisi2	@ <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r5, [r3, #1]	@ zero_extendqisi2	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	cmp	r6, r4	@ <variable>.profile_idc, <variable>.profile_idc
	cmpeq	r7, r2	@, <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	ldrb	r7, [r1, #2]	@ zero_extendqisi2	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	movne	ip, #0	@, equal.2605
	moveq	ip, #1	@, equal.2605
	ldr	r6, [r1, #740]	@ <variable>.level_idc, <variable>.level_idc
	cmp	r5, r0	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	movne	r0, #0	@, equal.2606
	andeq	r0, ip, #1	@,, equal.2606, equal.2605
	ldr	r5, [r3, #740]	@ <variable>.level_idc, <variable>.level_idc
	cmp	r4, r7	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	movne	r2, #0	@, equal.2607
	andeq	r2, r0, #1	@,, equal.2607, equal.2606
	ldr	r4, [r3, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r7, [r1, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	cmp	r5, r6	@ <variable>.level_idc, <variable>.level_idc
	movne	ip, #0	@, equal.2608
	andeq	ip, r2, #1	@,, equal.2608, equal.2607
	ldrb	r2, [r3, #25]	@ zero_extendqisi2	@ D.38953, <variable>.seq_scaling_matrix_present_flag
	ldrb	r6, [r1, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r4, r7	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movne	r0, #0	@, equal.2609
	andeq	r0, ip, #1	@,, equal.2609, equal.2608
	cmp	r6, r2	@ <variable>.seq_scaling_matrix_present_flag, D.38953
	movne	r6, #0	@, equal
	andeq	r6, r0, #1	@,, equal, equal.2609
	cmp	r2, #0	@ D.38953,
	beq	.L701	@,
	mov	r9, r3	@ ivtmp.2568, pSPS1
	mov	fp, r1	@ ivtmp.2570, pSPS2
	mov	r8, #0	@ i,
	str	r3, [sp, #0]	@ pSPS1, %sfp
	mov	sl, r1	@ pSPS2, pSPS2
	b	.L705	@
.L732:
	mov	r3, r8, asl #6	@ tmp291, i,
	ldr	r7, [r9, #768]	@ tmp235, <variable>.ScalingList4x4
	ldr	ip, [fp, #768]	@ tmp236, <variable>.ScalingList4x4
	add	r2, r3, sl	@, tmp291, pSPS2
	str	r2, [sp, #4]	@, %sfp
	add	r3, r3, r1	@ tmp292, tmp291,
	ldr	r0, [r9, #764]	@ tmp239, <variable>.ScalingList4x4
	ldr	r1, [fp, #764]	@ tmp240, <variable>.ScalingList4x4
	ldr	r5, [fp, #772]	@ tmp244, <variable>.ScalingList4x4
	cmp	r7, ip	@ tmp235, tmp236
	cmpeq	r0, r1	@, tmp239, tmp240
	ldr	r2, [r9, #772]	@ tmp243, <variable>.ScalingList4x4
	ldr	ip, [r9, #776]	@ tmp247, <variable>.ScalingList4x4
	ldr	r7, [fp, #776]	@ tmp248, <variable>.ScalingList4x4
	movne	r4, #0	@, equal.2626
	moveq	r4, #1	@, equal.2626
	ldr	r1, [fp, #780]	@ tmp252, <variable>.ScalingList4x4
	cmp	r2, r5	@ tmp243, tmp244
	movne	r2, #0	@, equal.2630
	andeq	r2, r4, #1	@,, equal.2630, equal.2626
	ldr	r4, [r9, #780]	@ tmp251, <variable>.ScalingList4x4
	cmp	ip, r7	@ tmp247, tmp248
	movne	r0, #0	@, equal.2634
	andeq	r0, r2, #1	@,, equal.2634, equal.2630
	ldr	r5, [r9, #784]	@ tmp255, <variable>.ScalingList4x4
	ldr	r2, [fp, #784]	@ tmp256, <variable>.ScalingList4x4
	cmp	r4, r1	@ tmp251, tmp252
	movne	ip, #0	@, equal.2638
	andeq	ip, r0, #1	@,, equal.2638, equal.2634
	ldr	r7, [r9, #788]	@ tmp259, <variable>.ScalingList4x4
	ldr	r1, [fp, #788]	@ tmp260, <variable>.ScalingList4x4
	cmp	r5, r2	@ tmp255, tmp256
	movne	r4, #0	@, equal.2642
	andeq	r4, ip, #1	@,, equal.2642, equal.2638
	ldr	r5, [r9, #792]	@ tmp263, <variable>.ScalingList4x4
	ldr	r2, [fp, #792]	@ tmp264, <variable>.ScalingList4x4
	cmp	r7, r1	@ tmp259, tmp260
	movne	r0, #0	@, equal.2646
	andeq	r0, r4, #1	@,, equal.2646, equal.2642
	ldr	r7, [r9, #796]	@ tmp267, <variable>.ScalingList4x4
	ldr	r1, [fp, #796]	@ tmp268, <variable>.ScalingList4x4
	cmp	r5, r2	@ tmp263, tmp264
	movne	ip, #0	@, equal.2650
	andeq	ip, r0, #1	@,, equal.2650, equal.2646
	ldr	r5, [r9, #800]	@ tmp271, <variable>.ScalingList4x4
	ldr	r2, [fp, #800]	@ tmp272, <variable>.ScalingList4x4
	cmp	r7, r1	@ tmp267, tmp268
	movne	r4, #0	@, equal.2654
	andeq	r4, ip, #1	@,, equal.2654, equal.2650
	ldr	r7, [r9, #804]	@ tmp275, <variable>.ScalingList4x4
	ldr	r1, [fp, #804]	@ tmp276, <variable>.ScalingList4x4
	cmp	r5, r2	@ tmp271, tmp272
	movne	r0, #0	@, equal.2658
	andeq	r0, r4, #1	@,, equal.2658, equal.2654
	ldr	r5, [r9, #808]	@ tmp279, <variable>.ScalingList4x4
	ldr	r2, [fp, #808]	@ tmp280, <variable>.ScalingList4x4
	cmp	r7, r1	@ tmp275, tmp276
	movne	ip, #0	@, equal.2662
	andeq	ip, r0, #1	@,, equal.2662, equal.2658
	ldr	r0, [r9, #812]	@ tmp283, <variable>.ScalingList4x4
	cmp	r5, r2	@ tmp279, tmp280
	movne	r4, #0	@, equal.2666
	andeq	r4, ip, #1	@,, equal.2666, equal.2662
	ldr	r7, [fp, #812]	@ tmp284, <variable>.ScalingList4x4
	ldr	r5, [sp, #4]	@, %sfp
	ldr	r2, [fp, #816]	@ tmp288, <variable>.ScalingList4x4
	cmp	r0, r7	@ tmp283, tmp284
	movne	r1, #0	@, equal.2670
	andeq	r1, r4, #1	@,, equal.2670, equal.2666
	ldr	ip, [r9, #816]	@ tmp287, <variable>.ScalingList4x4
	ldr	r0, [r3, #760]	@ tmp299, <variable>.ScalingList4x4
	ldr	r4, [r5, #760]	@ tmp300, <variable>.ScalingList4x4
	cmp	ip, r2	@ tmp287, tmp288
	movne	r3, #0	@, equal.2674
	andeq	r3, r1, #1	@,, equal.2674, equal.2670
	and	r6, r6, r3	@ equal.2678, equal, equal.2674
	ldr	r1, [r9, #820]	@ tmp303, <variable>.ScalingList4x4
	ldr	r2, [fp, #820]	@ tmp304, <variable>.ScalingList4x4
	cmp	r0, r4	@ tmp299, tmp300
	movne	r7, #0	@, equal.2682
	andeq	r7, r6, #1	@,, equal.2682, equal.2678
	cmp	r1, r2	@ tmp303, tmp304
	movne	r6, #0	@, equal
	andeq	r6, r7, #1	@,, equal, equal.2682
.L702:
	add	r8, r8, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2568, ivtmp.2568,
	cmp	r8, #8	@ i,
	add	fp, fp, #64	@ ivtmp.2570, ivtmp.2570,
	beq	.L731	@,
.L705:
	ldr	r1, [sp, #0]	@, %sfp
	add	r5, sl, r8	@ tmp229, pSPS2, i
	add	ip, r1, r8	@ tmp228,, i
	ldrb	r0, [r5, #4]	@ zero_extendqisi2	@ D.38959, <variable>.seq_scaling_list_present_flag
	ldrb	r3, [ip, #4]	@ zero_extendqisi2	@ D.38959, <variable>.seq_scaling_list_present_flag
	cmp	r3, r0	@ D.38959, D.38959
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r3, #0	@ D.38959,
	beq	.L702	@,
	cmp	r8, #5	@ i,
	bls	.L732	@,
	mov	r4, r8, asl #8	@ tmp306, i,
	ldr	r0, [sp, #0]	@, %sfp
	ldr	r7, [sp, #0]	@, %sfp
	sub	r1, r4, #392	@ tmp307, tmp306,
	add	r2, r0, r1	@ ivtmp.2552,, tmp307
	add	r3, sl, r1	@ ivtmp.2555, pSPS2, tmp307
	ldr	r5, [sl, r1]	@ tmp314, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2552, ivtmp.2552,
	ldr	r4, [r7, r1]	@ tmp313, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2555, ivtmp.2555,
	ldr	r7, [r2, #4]	@ tmp442, <variable>.ScalingList8x8
	mov	ip, #2	@ j,
	ldr	r3, [r3, #4]	@ tmp443, <variable>.ScalingList8x8
	cmp	r4, r5	@ tmp313, tmp314
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r7, r3	@ tmp442, tmp443
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
.L704:
	mov	r2, r0	@ tmp409, ivtmp.2552
	mov	r3, r1	@ tmp410, ivtmp.2555
	ldr	r7, [r2], #4	@ tmp414, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r5, [r3], #4	@ tmp415, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp421, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2552, tmp409,
	ldr	r2, [r1, #4]	@ tmp422, <variable>.ScalingList8x8
	cmp	r7, r5	@ tmp414, tmp415
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2555, tmp410,
	cmp	r4, r2	@ tmp421, tmp422
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L704	@,
	add	r8, r8, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2568, ivtmp.2568,
	cmp	r8, #8	@ i,
	add	fp, fp, #64	@ ivtmp.2570, ivtmp.2570,
	bne	.L705	@,
.L731:
	ldr	r3, [sp, #0]	@ pSPS1, %sfp
	mov	r1, sl	@ pSPS2, pSPS2
.L701:
	ldr	r2, [r3, #2908]	@ D.38978, <variable>.pic_order_cnt_type
	ldr	r4, [r1, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	ldr	r0, [r3, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	ldr	r5, [r1, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	cmp	r2, r4	@ D.38978, <variable>.pic_order_cnt_type
	cmpeq	r0, r5	@, <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	movne	ip, #0	@, equal.2610
	moveq	ip, #1	@, equal.2610
	cmp	r2, #0	@ D.38978,
	and	r6, ip, r6	@ equal.2600, equal.2610, equal
	bne	.L733	@,
	ldr	r7, [r3, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	ldr	r2, [r1, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	cmp	r7, r2	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	movne	r6, #0	@, equal.2600
	andeq	r6, r6, #1	@,, equal.2600, equal.2600
.L706:
	ldrb	r2, [r1, #17]	@ zero_extendqisi2	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	r5, [r3, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldr	r0, [r1, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldrb	r7, [r3, #17]	@ zero_extendqisi2	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	ip, [r1, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	cmp	r7, r2	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	cmpeq	r5, r0	@, <variable>.num_ref_frames, <variable>.num_ref_frames
	ldr	r4, [r3, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldr	r5, [r3, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	ldr	r0, [r1, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	movne	r2, #0	@, equal.2614
	moveq	r2, #1	@, equal.2614
	cmp	r4, ip	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	movne	r4, #0	@, equal.2615
	andeq	r4, r2, #1	@,, equal.2615, equal.2614
	ldrb	r2, [r3, #18]	@ zero_extendqisi2	@ D.39011, <variable>.frame_mbs_only_flag
	ldrb	ip, [r1, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r5, r0	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	movne	r0, #0	@, equal.2616
	andeq	r0, r4, #1	@,, equal.2616, equal.2615
	cmp	ip, r2	@ <variable>.frame_mbs_only_flag, D.39011
	movne	r0, #0	@, equal.2617
	andeq	r0, r0, #1	@,, equal.2617, equal.2616
	cmp	r2, #0	@ D.39011,
	and	r6, r0, r6	@ equal.2601, equal.2617, equal.2600
	bne	.L710	@,
	ldrb	r4, [r3, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	ldrb	ip, [r1, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r4, ip	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movne	r6, #0	@, equal.2601
	andeq	r6, r6, #1	@,, equal.2601, equal.2601
.L710:
	ldrb	r2, [r3, #21]	@ zero_extendqisi2	@ D.39022, <variable>.frame_cropping_flag
	ldrb	r0, [r3, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	ldrb	r4, [r1, #21]	@ zero_extendqisi2	@ <variable>.frame_cropping_flag, <variable>.frame_cropping_flag
	ldrb	ip, [r1, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	cmp	r4, r2	@ <variable>.frame_cropping_flag, D.39022
	cmpeq	r0, ip	@, <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	movne	r0, #0	@, equal.2618
	moveq	r0, #1	@, equal.2618
	cmp	r2, #0	@ D.39022,
	and	r2, r0, r6	@ equal.2602, equal.2618, equal.2601
	beq	.L711	@,
	ldr	r5, [r1, #3968]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	ldr	r4, [r3, #3964]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	r0, [r1, #3964]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	r7, [r3, #3968]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	ldr	r6, [r3, #3972]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	cmp	r7, r5	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	cmpeq	r4, r0	@, <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	ip, [r1, #3972]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	ldr	r4, [r3, #3976]	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	ldr	r0, [r1, #3976]	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	movne	r5, #0	@, equal.2619
	moveq	r5, #1	@, equal.2619
	cmp	r6, ip	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	movne	ip, #0	@, equal.2620
	andeq	ip, r5, #1	@,, equal.2620, equal.2619
	cmp	r4, r0	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	movne	r0, #0	@, equal.2621
	andeq	r0, ip, #1	@,, equal.2621, equal.2620
	and	r2, r2, r0	@ equal.2602, equal.2602, equal.2621
.L711:
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, r3	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	movne	r2, #0	@, tmp398
	andeq	r2, r2, #1	@,, tmp398, equal.2602
	cmp	r2, #0	@ tmp398,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L699:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L733:
	cmp	r2, #1	@ D.38978,
	bne	.L706	@,
	ldr	r0, [r1, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldrb	r5, [r3, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldrb	r8, [r1, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r7, [r3, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldr	r4, [r3, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	cmp	r7, r0	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	cmpeq	r5, r8	@, <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r2, [r1, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	ldr	r8, [r3, #2924]	@ D.38993, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	ldr	r0, [r1, #2924]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	ip, #0	@, equal.2611
	moveq	ip, #1	@, equal.2611
	cmp	r4, r2	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movne	r5, #0	@, equal.2612
	andeq	r5, ip, #1	@,, equal.2612, equal.2611
	cmp	r8, r0	@ D.38993, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	r5, #0	@, equal.2613
	andeq	r5, r5, #1	@,, equal.2613, equal.2612
	cmp	r8, #0	@ D.38993,
	and	r6, r6, r5	@ equal.2600, equal.2600, equal.2613
	beq	.L706	@,
	ldr	r4, [r3, #2928]	@ tmp345, <variable>.offset_for_ref_frame
	mov	r8, r8, asl #2	@ D.43029, D.38993,
	ldr	ip, [r1, #2928]	@ tmp346, <variable>.offset_for_ref_frame
	mov	r2, #4	@ ivtmp.2543,
	sub	r5, r8, #4	@ tmp403, D.43029,
	cmp	r4, ip	@ tmp345, tmp346
	movne	r6, #0	@, equal.2600
	andeq	r6, r6, #1	@,, equal.2600, equal.2600
	cmp	r2, r8	@ ivtmp.2543, D.43029
	ubfx	r0, r5, #2, #1	@ tmp404, tmp403,,
	beq	.L706	@,
	cmp	r0, #0	@ tmp404,
	beq	.L709	@,
	ldr	r0, [r3, #2932]	@ tmp439, <variable>.offset_for_ref_frame
	mov	r2, #8	@ ivtmp.2543,
	ldr	r7, [r1, #2932]	@ tmp440, <variable>.offset_for_ref_frame
	cmp	r0, r7	@ tmp439, tmp440
	movne	r6, #0	@, equal.2600
	andeq	r6, r6, #1	@,, equal.2600, equal.2600
	cmp	r2, r8	@ ivtmp.2543, D.43029
	beq	.L706	@,
.L709:
	add	r0, r2, #4	@ tmp405, ivtmp.2543,
	add	r4, r3, r2	@ tmp425, pSPS1, ivtmp.2543
	add	r2, r1, r2	@ tmp426, pSPS2, ivtmp.2543
	add	ip, r3, r0	@ tmp432, pSPS1, tmp405
	add	r7, r1, r0	@ tmp433, pSPS2, tmp405
	ldr	r5, [r4, #2928]	@ tmp427, <variable>.offset_for_ref_frame
	ldr	r4, [r2, #2928]	@ tmp428, <variable>.offset_for_ref_frame
	add	r2, r0, #4	@ ivtmp.2543, tmp405,
	ldr	ip, [ip, #2928]	@ tmp434, <variable>.offset_for_ref_frame
	ldr	r0, [r7, #2928]	@ tmp435, <variable>.offset_for_ref_frame
	cmp	r5, r4	@ tmp427, tmp428
	movne	r6, #0	@, equal.2600
	andeq	r6, r6, #1	@,, equal.2600, equal.2600
	cmp	ip, r0	@ tmp434, tmp435
	movne	r6, #0	@, equal.2600
	andeq	r6, r6, #1	@,, equal.2600, equal.2600
	cmp	r2, r8	@ ivtmp.2543, D.43029
	bne	.L709	@,
	b	.L706	@
.L730:
	mov	r0, r1	@, pSPS2
	movw	r2, #:lower16:.LC2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #9506	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L699	@
.L729:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #9505	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L699	@
	.fnend
	.size	SPSEqual, .-SPSEqual
	.align	2
	.global	PPSEqual
	.type	PPSEqual, %function
PPSEqual:
	.fnstart
.LFB1704:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	fp, r0, #0	@ pPPS1, pPPS1
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L755	@,
	cmp	r1, #0	@ pPPS2,
	beq	.L756	@,
	ldr	r5, [fp, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	r3, [r1, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	r4, [fp, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r2, [r1, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	cmp	r5, r3	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	cmpeq	r4, r2	@, <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldrb	r0, [fp, #0]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	ldrb	r5, [fp, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	movne	r3, #0	@, equal.2766
	moveq	r3, #1	@, equal.2766
	cmp	r0, ip	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	movne	r0, #0	@, equal.2767
	andeq	r0, r3, #1	@,, equal.2767, equal.2766
	ldr	ip, [r1, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	ldr	r3, [fp, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	cmp	r5, r4	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	movne	r2, #0	@, equal.2768
	andeq	r2, r0, #1	@,, equal.2768, equal.2767
	ldr	r5, [fp, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	ldr	r4, [r1, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	cmp	r3, ip	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movne	r3, #0	@, equal.2769
	andeq	r3, r2, #1	@,, equal.2769, equal.2768
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	ldrb	r2, [fp, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r5, r4	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	movne	r0, #0	@, equal.2770
	andeq	r0, r3, #1	@,, equal.2770, equal.2769
	ldr	r5, [fp, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	ldr	r4, [r1, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r2, ip	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	movne	r2, #0	@, equal.2771
	andeq	r2, r0, #1	@,, equal.2771, equal.2770
	ldr	ip, [r1, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	ldr	r0, [fp, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	cmp	r5, r4	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	movne	r3, #0	@, equal.2772
	andeq	r3, r2, #1	@,, equal.2772, equal.2771
	ldr	r5, [fp, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldr	r4, [r1, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	cmp	r0, ip	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	movne	r0, #0	@, equal.2773
	andeq	r0, r3, #1	@,, equal.2773, equal.2772
	ldrb	ip, [r1, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	ldrb	r3, [fp, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	r5, r4	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	movne	r2, #0	@, equal.2774
	andeq	r2, r0, #1	@,, equal.2774, equal.2773
	ldrb	r5, [fp, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	ldrb	r4, [r1, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	cmp	r3, ip	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	movne	r3, #0	@, equal.2775
	andeq	r3, r2, #1	@,, equal.2775, equal.2774
	ldr	r2, [fp, #60]	@ D.38706, <variable>.transform_8x8_mode_flag
	ldr	ip, [r1, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	cmp	r5, r4	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	movne	r0, #0	@, equal.2776
	andeq	r0, r3, #1	@,, equal.2776, equal.2775
	ldrb	r3, [fp, #18]	@ zero_extendqisi2	@ D.38709, <variable>.pic_scaling_matrix_present_flag
	ldrb	r5, [r1, #18]	@ zero_extendqisi2	@ <variable>.pic_scaling_matrix_present_flag, <variable>.pic_scaling_matrix_present_flag
	cmp	r2, ip	@ D.38706, <variable>.transform_8x8_mode_flag
	movne	r0, #0	@, equal.2777
	andeq	r0, r0, #1	@,, equal.2777, equal.2776
	cmp	r5, r3	@ <variable>.pic_scaling_matrix_present_flag, D.38709
	movne	r5, #0	@, equal
	andeq	r5, r0, #1	@,, equal, equal.2777
	cmp	r3, #0	@ D.38709,
	beq	.L738	@,
	mov	ip, r2, asl #1	@ tmp237, D.38706,
	adds	r0, ip, #6	@, tmp237,
	str	r0, [sp, #4]	@, %sfp
	beq	.L738	@,
	mov	r9, fp	@ ivtmp.2732, pPPS1
	str	fp, [sp, #0]	@ pPPS1, %sfp
	mov	sl, r1	@ ivtmp.2734, pPPS2
	mov	r8, #0	@ i,
	mov	fp, r1	@ pPPS2, pPPS2
	b	.L742	@
.L753:
	cmp	r8, #5	@ i,
	bhi	.L740	@,
	ldr	r0, [r9, #72]	@ tmp245, <variable>.ScalingList4x4
	add	r8, r8, #1	@ i, i,
	ldr	ip, [sl, #72]	@ tmp246, <variable>.ScalingList4x4
	ldr	r6, [r9, #68]	@ tmp249, <variable>.ScalingList4x4
	ldr	r2, [sl, #68]	@ tmp250, <variable>.ScalingList4x4
	ldr	r3, [r9, #76]	@ tmp253, <variable>.ScalingList4x4
	cmp	r0, ip	@ tmp245, tmp246
	cmpeq	r6, r2	@, tmp249, tmp250
	ldr	r4, [sl, #76]	@ tmp254, <variable>.ScalingList4x4
	ldr	r7, [r9, #80]	@ tmp257, <variable>.ScalingList4x4
	ldr	r6, [sl, #80]	@ tmp258, <variable>.ScalingList4x4
	movne	r1, #0	@, equal.2782
	moveq	r1, #1	@, equal.2782
	ldr	r0, [r9, #84]	@ tmp261, <variable>.ScalingList4x4
	cmp	r3, r4	@ tmp253, tmp254
	movne	ip, #0	@, equal.2786
	andeq	ip, r1, #1	@,, equal.2786, equal.2782
	ldr	r2, [sl, #84]	@ tmp262, <variable>.ScalingList4x4
	cmp	r7, r6	@ tmp257, tmp258
	movne	r6, #0	@, equal.2790
	andeq	r6, ip, #1	@,, equal.2790, equal.2786
	ldr	r3, [sl, #88]	@ tmp266, <variable>.ScalingList4x4
	ldr	ip, [r9, #88]	@ tmp265, <variable>.ScalingList4x4
	cmp	r0, r2	@ tmp261, tmp262
	movne	r1, #0	@, equal.2794
	andeq	r1, r6, #1	@,, equal.2794, equal.2790
	ldr	r7, [r9, #92]	@ tmp269, <variable>.ScalingList4x4
	ldr	r2, [sl, #92]	@ tmp270, <variable>.ScalingList4x4
	cmp	ip, r3	@ tmp265, tmp266
	movne	r0, #0	@, equal.2798
	andeq	r0, r1, #1	@,, equal.2798, equal.2794
	ldr	r3, [sl, #96]	@ tmp274, <variable>.ScalingList4x4
	ldr	r1, [r9, #96]	@ tmp273, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp269, tmp270
	movne	ip, #0	@, equal.2802
	andeq	ip, r0, #1	@,, equal.2802, equal.2798
	ldr	r7, [r9, #100]	@ tmp277, <variable>.ScalingList4x4
	ldr	r2, [sl, #100]	@ tmp278, <variable>.ScalingList4x4
	cmp	r1, r3	@ tmp273, tmp274
	movne	r1, #0	@, equal.2806
	andeq	r1, ip, #1	@,, equal.2806, equal.2802
	ldr	r3, [sl, #104]	@ tmp282, <variable>.ScalingList4x4
	ldr	ip, [r9, #104]	@ tmp281, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp277, tmp278
	movne	r0, #0	@, equal.2810
	andeq	r0, r1, #1	@,, equal.2810, equal.2806
	ldr	r1, [r9, #108]	@ tmp285, <variable>.ScalingList4x4
	ldr	r7, [sl, #108]	@ tmp286, <variable>.ScalingList4x4
	cmp	ip, r3	@ tmp281, tmp282
	movne	ip, #0	@, equal.2814
	andeq	ip, r0, #1	@,, equal.2814, equal.2810
	ldr	r3, [sl, #112]	@ tmp290, <variable>.ScalingList4x4
	ldr	r0, [r9, #112]	@ tmp289, <variable>.ScalingList4x4
	cmp	r1, r7	@ tmp285, tmp286
	movne	r2, #0	@, equal.2818
	andeq	r2, ip, #1	@,, equal.2818, equal.2814
	ldr	ip, [r9, #116]	@ tmp293, <variable>.ScalingList4x4
	ldr	r7, [sl, #116]	@ tmp294, <variable>.ScalingList4x4
	cmp	r0, r3	@ tmp289, tmp290
	movne	r0, #0	@, equal.2822
	andeq	r0, r2, #1	@,, equal.2822, equal.2818
	ldr	r3, [sl, #120]	@ tmp298, <variable>.ScalingList4x4
	cmp	ip, r7	@ tmp293, tmp294
	movne	r1, #0	@, equal.2826
	andeq	r1, r0, #1	@,, equal.2826, equal.2822
	ldr	r7, [sp, #0]	@, %sfp
	ldr	r2, [r9, #120]	@ tmp297, <variable>.ScalingList4x4
	ldr	ip, [fp, r8, asl #6]	@ tmp304, <variable>.ScalingList4x4
	cmp	r2, r3	@ tmp297, tmp298
	movne	r2, #0	@, equal.2830
	andeq	r2, r1, #1	@,, equal.2830, equal.2826
	ldr	r0, [r7, r8, asl #6]	@ tmp303, <variable>.ScalingList4x4
	and	r5, r5, r2	@ equal.2834, equal, equal.2830
	ldr	r1, [r9, #124]	@ tmp307, <variable>.ScalingList4x4
	cmp	r0, ip	@ tmp303, tmp304
	movne	r3, #0	@, equal.2838
	andeq	r3, r5, #1	@,, equal.2838, equal.2834
	ldr	r2, [sl, #124]	@ tmp308, <variable>.ScalingList4x4
	ldr	ip, [sp, #4]	@, %sfp
	add	r9, r9, #64	@ ivtmp.2732, ivtmp.2732,
	cmp	r1, r2	@ tmp307, tmp308
	movne	r5, #0	@, equal
	andeq	r5, r3, #1	@,, equal, equal.2838
	add	sl, sl, #64	@ ivtmp.2734, ivtmp.2734,
	cmp	ip, r8	@, i
	bls	.L757	@,
.L742:
	ldr	ip, [sp, #0]	@, %sfp
	add	r0, fp, r8	@ tmp239, pPPS2, i
	add	r3, ip, r8	@ tmp238,, i
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ D.38715, <variable>.pic_scaling_list_present_flag
	ldrb	r1, [r3, #5]	@ zero_extendqisi2	@ D.38715, <variable>.pic_scaling_list_present_flag
	cmp	r1, r2	@ D.38715, D.38715
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	r1, #0	@ D.38715,
	bne	.L753	@,
	add	r8, r8, #1	@ i, i,
.L758:
	ldr	ip, [sp, #4]	@, %sfp
	add	r9, r9, #64	@ ivtmp.2732, ivtmp.2732,
	add	sl, sl, #64	@ ivtmp.2734, ivtmp.2734,
	cmp	ip, r8	@, i
	bhi	.L742	@,
.L757:
	mov	r1, fp	@ pPPS2, pPPS2
	ldr	fp, [sp, #0]	@ pPPS1, %sfp
.L738:
	ldr	r0, [fp, #56]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	ldr	r3, [r1, #56]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	cmp	r0, r3	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	movne	r5, #0	@, tmp322
	andeq	r5, r5, #1	@,, tmp322, equal
	cmp	r5, #0	@ tmp322,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L736:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L740:
	mov	r4, r8, asl #8	@ tmp310, i,
	ldr	r0, [sp, #0]	@, %sfp
	ldr	r7, [sp, #0]	@, %sfp
	sub	r1, r4, #1088	@ tmp311, tmp310,
	add	r2, r0, r1	@ ivtmp.2719,, tmp311
	add	r3, fp, r1	@ ivtmp.2722, pPPS2, tmp311
	ldr	r6, [fp, r1]	@ tmp316, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2719, ivtmp.2719,
	ldr	r4, [r7, r1]	@ tmp315, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2722, ivtmp.2722,
	ldr	r7, [r2, #4]	@ tmp344, <variable>.ScalingList8x8
	mov	ip, #2	@ j,
	ldr	r3, [r3, #4]	@ tmp345, <variable>.ScalingList8x8
	cmp	r4, r6	@ tmp315, tmp316
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	r7, r3	@ tmp344, tmp345
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
.L741:
	mov	r2, r0	@ tmp329, ivtmp.2719
	mov	r3, r1	@ tmp330, ivtmp.2722
	ldr	r7, [r2], #4	@ tmp334, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r6, [r3], #4	@ tmp335, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp341, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2719, tmp329,
	ldr	r2, [r1, #4]	@ tmp342, <variable>.ScalingList8x8
	cmp	r7, r6	@ tmp334, tmp335
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2722, tmp330,
	cmp	r4, r2	@ tmp341, tmp342
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L741	@,
	add	r8, r8, #1	@ i, i,
	b	.L758	@
.L756:
	mov	r0, r1	@, pPPS2
	movw	r2, #:lower16:.LC2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #9273	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L736	@
.L755:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #9272	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L736	@
	.fnend
	.size	PPSEqual, .-PPSEqual
	.align	2
	.global	CalcStreamBits
	.type	CalcStreamBits, %function
CalcStreamBits:
	.fnstart
.LFB1699:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #17588	@ tmp170,
	.pad #12
	sub	sp, sp, #12	@,,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	cmp	r3, #0	@ <variable>.CurrPPS.entropy_coding_mode_flag,
	beq	.L760	@,
	ldr	lr, [r4, #368]	@ D.38192, <variable>.pCurrNal
	ldr	r0, [lr, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r3, r0, #7	@ tmp172, <variable>.nal_bitoffset,
	bic	ip, r3, #7	@ tmp174, tmp172,
	str	ip, [lr, #64]	@ tmp174, <variable>.nal_bitoffset
	ldr	r1, [r4, #368]	@ temp.2885, <variable>.pCurrNal
	ldr	r5, [r1, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	sub	r2, r5, #1	@ tmp176, <variable>.nal_trail_zero_bit_num,
	str	r2, [r1, #72]	@ tmp176, <variable>.nal_trail_zero_bit_num
.L760:
	ldr	ip, [r4, #368]	@ temp.2933, <variable>.pCurrNal
	ldrb	r5, [ip, #0]	@ zero_extendqisi2	@ temp.2934, <variable>.nal_used_segment
	cmp	r5, #0	@ temp.2934,
	moveq	r6, r5	@ code_len_byte, temp.2934
	moveq	r7, r5	@ temp.2934, temp.2934
	beq	.L762	@,
	mov	r7, r5, asl #3	@ temp.2934, temp.2934,
	mov	r3, #28	@ ivtmp.2883,
	rsb	r1, r5, r7	@ tmp179, temp.2934, temp.2934
	ldr	r6, [ip, #12]	@ code_len_byte, <variable>.bitstream_length
	add	r2, ip, r3	@ ivtmp.2884, temp.2933,
	mov	r1, r1, asl #2	@ D.43378, tmp179,
	cmp	r3, r1	@ ivtmp.2883, D.43378
	sub	lr, r1, #28	@ tmp455, D.43378,
	ubfx	r0, lr, #2, #1	@ tmp459, tmp455,,
	beq	.L762	@,
	cmp	r0, #0	@ tmp459,
	beq	.L763	@,
	ldr	lr, [r2, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	r3, #56	@ ivtmp.2883,
	cmp	r3, r1	@ ivtmp.2883, D.43378
	add	r2, ip, r3	@ ivtmp.2884, temp.2933,
	add	r6, r6, lr	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	beq	.L762	@,
.L763:
	ldr	lr, [r2, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r3, r3, #56	@ ivtmp.2883, ivtmp.2883,
	ldr	r0, [r2, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r3, r1	@ ivtmp.2883, D.43378
	add	r6, r6, lr	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	add	r2, r2, #56	@ ivtmp.2884, ivtmp.2884,
	add	r6, r6, r0	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	bne	.L763	@,
.L762:
	rsb	r3, r5, r7	@ tmp187, temp.2934, temp.2934
	ldr	r2, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC3	@,
	add	lr, ip, r3, asl #2	@, tmp189, temp.2933, tmp187,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, r6	@, code_len_byte
	ldr	lr, [lr, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	str	lr, [sp, #0]	@ <variable>.bitstream_length,
	ldr	lr, [ip, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	str	lr, [sp, #4]	@ <variable>.nal_trail_zero_bit_num,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@ temp.2888, <variable>.pCurrNal
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r0, r0, asl #3	@, tmp197, <variable>.nal_used_segment, <variable>.nal_used_segment,
	and	r0, r1, #7	@ tmp202, <variable>.nal_bitoffset,
	add	ip, r3, r2, asl #2	@, tmp199, temp.2888, tmp197,
	str	r0, [ip, #24]	@ tmp202, <variable>.bitsoffset
	ldr	r1, [r4, #368]	@ temp.2891, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ temp.2894, <variable>.nal_used_segment
	ldr	ip, [r1, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r3, r3, asl #3	@, tmp206, temp.2894, temp.2894,
	add	r3, r1, r2, asl #2	@, tmp208, temp.2891, tmp206,
	ldr	r0, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	r2, r0, ip, lsr #3	@, tmp219, <variable>.stream_phy_addr, <variable>.nal_bitoffset,
	rsb	r1, r6, r2	@ tmp221, code_len_byte, tmp219
	str	r1, [r3, #28]	@ tmp221, <variable>.bytespos
	ldr	r3, [r4, #368]	@ temp.2895, <variable>.pCurrNal
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ temp.2897, <variable>.nal_used_segment
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r0, ip, ip, asl #3	@, tmp225, temp.2897, temp.2897,
	add	ip, r3, r0, asl #2	@, tmp227, temp.2895, tmp225,
	ldr	r2, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r6, r6, r2	@ tmp236, code_len_byte, <variable>.bitstream_length
	rsb	r6, r1, r6, asl #3	@, tmp240, <variable>.nal_bitoffset, tmp236,
	str	r6, [ip, #20]	@ tmp240, <variable>.valid_bitlen
	b	.L788	@
.L790:
	rsb	r0, r2, r1	@ tmp252, temp.2931, tmp445
	add	lr, r3, r0, asl #2	@, tmp254, temp.2912, tmp252,
	ldr	ip, [lr, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r1, ip, #8	@ tmp264, <variable>.bitsoffset,
	str	r1, [lr, #24]	@ tmp264, <variable>.bitsoffset
	ldr	r0, [r4, #368]	@ temp.2901, <variable>.pCurrNal
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ temp.2903, <variable>.nal_used_segment
	rsb	ip, r2, r2, asl #3	@, tmp268, temp.2903, temp.2903,
	add	r3, r0, ip, asl #2	@, tmp270, temp.2901, tmp268,
	add	r1, r3, #24	@ tmp271, tmp270,
	ldr	lr, [r1, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r2, lr, #1	@ tmp280, <variable>.bytespos,
	str	r2, [r1, #4]	@ tmp280, <variable>.bytespos
.L788:
	ldr	r3, [r4, #368]	@ temp.2912, <variable>.pCurrNal
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ temp.2931, <variable>.nal_used_segment
	mov	r1, r2, asl #3	@ tmp445, temp.2931,
	rsb	r0, r2, r1	@ tmp244, temp.2931, tmp445
	add	ip, r3, r0, asl #2	@, tmp246, temp.2912, tmp244,
	ldr	lr, [ip, #28]	@ temp.2907, <variable>.bytespos
	tst	lr, #3	@ temp.2907,
	bne	.L790	@,
	rsb	r7, r5, r7	@ tmp293, temp.2934, temp.2934
	mov	r2, r5	@, temp.2934
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC4	@,
	add	r7, r3, r7, asl #2	@, tmp295, temp.2912, tmp293,
	movt	r1, #:upper16:.LC4	@,
	ldr	ip, [r7, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [r7, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	ldr	r1, [r4, #368]	@ temp.2905, <variable>.pCurrNal
	ldr	r2, [r1, #68]	@ temp.2906, <variable>.nal_segment
	sub	r3, r2, #1	@ prephitmp.2860, temp.2906,
	cmp	r3, #1	@ prephitmp.2860,
	bhi	.L791	@,
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	lr, r0, #1	@ tmp308, <variable>.nal_used_segment,
	cmp	r2, lr	@ temp.2906, tmp308
	bls	.L767	@,
	mov	r5, #1	@ i.2923,
	mov	r6, #0	@ tmp450,
.L770:
	mov	ip, r5, asl #3	@ tmp446, i.2923,
	rsb	r2, r5, ip	@ tmp312, i.2923, tmp446
	mov	r2, r2, asl #2	@ tmp313, tmp312,
	add	r0, r2, r1	@ tmp314, tmp313, temp.2905
	str	r6, [r0, #24]	@ tmp450, <variable>.bitsoffset
	ldr	lr, [r4, #368]	@ temp.2913, <variable>.pCurrNal
	add	r3, r2, lr	@ tmp322, tmp313, temp.2913
	ldr	r1, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	str	r1, [r3, #28]	@ <variable>.stream_phy_addr, <variable>.bytespos
	ldr	r0, [r4, #368]	@ temp.2914, <variable>.pCurrNal
	add	r3, r2, r0	@ tmp337, tmp313, temp.2914
	ldr	lr, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	r1, lr, asl #3	@ tmp347, <variable>.bitstream_length,
	str	r1, [r3, #20]	@ tmp347, <variable>.valid_bitlen
	b	.L789	@
.L792:
	add	r0, r2, r3	@ tmp362, tmp449, temp.2904
	ldr	lr, [r0, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r1, lr, #8	@ tmp372, <variable>.bitsoffset,
	str	r1, [r0, #24]	@ tmp372, <variable>.bitsoffset
	ldr	r3, [r4, #368]	@ temp.2919, <variable>.pCurrNal
	add	lr, r2, r3	@ tmp378, tmp449, temp.2919
	add	r1, lr, #24	@ tmp379, tmp378,
	ldr	r0, [r1, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r3, r0, #1	@ tmp388, <variable>.bytespos,
	str	r3, [r1, #4]	@ tmp388, <variable>.bytespos
.L789:
	ldr	r3, [r4, #368]	@ temp.2904, <variable>.pCurrNal
	add	lr, r2, r3	@ tmp353, tmp313, temp.2904
	ldr	r1, [lr, #28]	@ <variable>.bytespos, <variable>.bytespos
	tst	r1, #3	@ <variable>.bytespos,
	bne	.L792	@,
	rsb	ip, r5, ip	@ tmp401, i.2923, tmp446
	mov	r2, r5	@, i.2923
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC6	@,
	add	lr, r3, ip, asl #2	@, tmp403, temp.2904, tmp401,
	movt	r1, #:upper16:.LC6	@,
	add	r5, r5, #1	@ i.2923, i.2923,
	ldr	ip, [lr, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [lr, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	str	ip, [sp, #0]	@ <variable>.valid_bitlen,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #368]	@ temp.2905, <variable>.pCurrNal
	ldr	r3, [r1, #68]	@ temp.2911, <variable>.nal_segment
	cmp	r3, r5	@ temp.2911, i.2923
	bhi	.L770	@,
	sub	r3, r3, #1	@ prephitmp.2860, temp.2911,
.L767:
	rsb	ip, r3, r3, asl #3	@, tmp417, prephitmp.2860, prephitmp.2860,
	ldr	r2, [r1, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	add	lr, r1, ip, asl #2	@, tmp419, temp.2905, tmp417,
	add	r1, lr, #16	@ tmp420, tmp419,
	ldr	r0, [r1, #4]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	rsb	r3, r2, r0	@ tmp430, <variable>.nal_trail_zero_bit_num, <variable>.valid_bitlen
	str	r3, [r1, #4]	@ tmp430, <variable>.valid_bitlen
	ldr	r2, [r4, #368]	@ temp.2925, <variable>.pCurrNal
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ i, <variable>.nal_used_segment
	ldr	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i
	bls	.L774	@,
	mov	r5, #50176	@ tmp447,
.L775:
	rsb	r0, r3, r3, asl #3	@, tmp435, i, i,
	ldr	lr, [r4, r5]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	add	r3, r3, #1	@ i, i,
	add	ip, r2, r0, asl #2	@, tmp437, temp.2925, tmp435,
	ldr	r0, [ip, #28]	@ temp.2928, <variable>.bytespos
	cmp	r0, lr	@ temp.2928, <variable>.CurrPic.stream_base_addr
	strcc	r0, [r4, r5]	@ temp.2928, <variable>.CurrPic.stream_base_addr
	ldrcc	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i
	bhi	.L775	@,
.L774:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L791:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	dprint_vfmw	@
	.fnend
	.size	CalcStreamBits, .-CalcStreamBits
	.align	2
	.global	IsNewPic
	.type	IsNewPic, %function
IsNewPic:
	.fnstart
.LFB1690:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #22332	@ tmp151,
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r2, #20692	@ tmp158,
	ldr	r4, [r0, ip]	@ <variable>.PrevSlice.seq_parameter_set_id, <variable>.PrevSlice.seq_parameter_set_id
	movw	lr, #22336	@ tmp157,
	movw	r0, #14332	@ tmp152,
	ldr	r2, [r3, r2]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	ip, [r3, r0]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	movw	r1, #22344	@ tmp163,
	ldr	r0, [r3, lr]	@ <variable>.PrevSlice.pic_parameter_set_id, <variable>.PrevSlice.pic_parameter_set_id
	movw	lr, #20700	@ tmp164,
	ldr	r1, [r3, r1]	@ <variable>.PrevSlice.frame_num, <variable>.PrevSlice.frame_num
	cmp	r0, r2	@ <variable>.PrevSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	cmpeq	r4, ip	@, <variable>.PrevSlice.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	ldr	lr, [r3, lr]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r4, #22328	@ tmp169,
	movw	r0, #20681	@ tmp170,
	ldrb	r2, [r3, r4]	@ zero_extendqisi2	@ D.37454, <variable>.PrevSlice.field_pic_flag
	moveq	ip, #0	@, result.2960
	movne	ip, #1	@, result.2960
	ldrb	r0, [r3, r0]	@ zero_extendqisi2	@ D.37455, <variable>.CurrSlice.field_pic_flag
	cmp	r1, lr	@ <variable>.PrevSlice.frame_num, <variable>.CurrSlice.frame_num
	moveq	r1, ip	@, result.2961, result.2960
	orrne	r1, ip, #1	@,, result.2961, result.2960
	cmp	r2, r0	@ D.37454, D.37455
	orrne	r1, r1, #1	@,, result, result.2961
	cmp	r2, #0	@ D.37454,
	beq	.L794	@,
	cmp	r0, #0	@ D.37455,
	bne	.L802	@,
.L794:
	movw	r4, #22340	@ tmp179,
	movw	ip, #20712	@ tmp180,
	ldr	r2, [r3, r4]	@ D.37468, <variable>.PrevSlice.nal_ref_idc
	ldr	r4, [r3, ip]	@ D.37469, <variable>.CurrSlice.nal_ref_idc
	cmp	r2, r4	@ D.37468, D.37469
	moveq	r4, #0	@ prephitmp.2948,
	beq	.L796	@,
	cmp	r2, #0	@ D.37468,
	moveq	r4, #1	@ prephitmp.2948,
	bne	.L803	@,
.L796:
	movw	r0, #20683	@ tmp184,
	movw	lr, #22330	@ tmp183,
	ldrb	r2, [r3, r0]	@ zero_extendqisi2	@ D.37474, <variable>.CurrSlice.nal_unit_type
	ldrb	r0, [r3, lr]	@ zero_extendqisi2	@ D.37473, <variable>.PrevSlice.nal_unit_type
	cmp	r0, r2	@ D.37473, D.37474
	orrne	r1, r1, #1	@,, result.2962, result
	cmp	r2, #5	@ D.37474,
	orr	r4, r1, r4	@ result.2959, result.2962, prephitmp.2948
	beq	.L804	@,
.L798:
	movw	r0, #16496	@ tmp193,
	ldr	r2, [r3, r0]	@ D.37483, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r2, #0	@ D.37483,
	bne	.L799	@,
	movw	r2, #22356	@ tmp194,
	movw	lr, #19800	@ tmp195,
	movw	r0, #22352	@ tmp200,
	movw	r1, #19796	@ tmp201,
	ldr	ip, [r3, r2]	@ <variable>.PrevSlice.delta_pic_oder_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r2, [r3, lr]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	ldr	lr, [r3, r0]	@ <variable>.PrevSlice.pic_oder_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	ldr	r0, [r3, r1]	@ <variable>.CurrPOC.pic_order_cnt_lsb,
	cmp	lr, r0	@ <variable>.PrevSlice.pic_oder_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmpeq	ip, r2	@, <variable>.PrevSlice.delta_pic_oder_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	moveq	r1, #0	@, result.2963
	movne	r1, #1	@, result.2963
	orr	r4, r4, r1	@ result.2959, result.2959, result.2963
.L800:
	movw	lr, #20732	@ tmp218,
	mov	r0, #19	@,
	ldr	r3, [r3, lr]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	cmp	r3, #0	@ <variable>.CurrSlice.first_mb_in_slice,
	orreq	r4, r4, #1	@,, result.2965, result.2959
	mov	r2, r4	@, result.2965
	bl	dprint_vfmw	@
	mov	r0, r4	@, result.2965
	ldmfd	sp!, {r4, pc}	@
.L799:
	cmp	r2, #1	@ D.37483,
	bne	.L800	@,
	movw	r0, #22364	@ tmp206,
	movw	r1, #22360	@ tmp212,
	ldr	ip, [r3, r0]	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r2, #19848	@ tmp207,
	ldr	r0, [r3, r1]	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r1, #19844	@ tmp213,
	ldr	lr, [r3, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r1, [r3, r1]	@ <variable>.CurrPOC.delta_pic_order_cnt,
	cmp	r0, r1	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	cmpeq	ip, lr	@, <variable>.PrevSlice.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	moveq	ip, #0	@, result.2964
	movne	ip, #1	@, result.2964
	orr	r4, r4, ip	@ result.2959, result.2959, result.2964
	b	.L800	@
.L803:
	rsbs	r4, r4, #1	@ prephitmp.2948, D.37469
	movcc	r4, #0	@ prephitmp.2948
	b	.L796	@
.L802:
	movw	r0, #22329	@ tmp173,
	movw	lr, #20682	@ tmp174,
	ldrb	r4, [r3, r0]	@ zero_extendqisi2	@ <variable>.PrevSlice.bottom_field_flag, <variable>.PrevSlice.bottom_field_flag
	ldrb	r2, [r3, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r4, r2	@ <variable>.PrevSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	orrne	r1, r1, #1	@,, result, result
	b	.L794	@
.L804:
	cmp	r0, #5	@ D.37473,
	bne	.L798	@,
	movw	lr, #22348	@ tmp187,
	movw	r2, #20720	@ tmp188,
	ldr	r1, [r3, lr]	@ <variable>.PrevSlice.idr_pic_id, <variable>.PrevSlice.idr_pic_id
	ldr	ip, [r3, r2]	@ <variable>.CurrSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	cmp	r1, ip	@ <variable>.PrevSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	orrne	r4, r4, #1	@,, result.2959, result.2959
	b	.L798	@
	.fnend
	.size	IsNewPic, .-IsNewPic
	.align	2
	.global	PPSSPSCheckTmpId
	.type	PPSSPSCheckTmpId, %function
PPSSPSCheckTmpId:
	.fnstart
.LFB1689:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r1	@ tmp_pic_parameter_set_id, tmp_pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r2, r5	@, tmp_pic_parameter_set_id
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #19	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	movw	ip, #13584	@ tmp140,
	ldr	r3, [r4, ip]	@ <variable>.PPS, <variable>.PPS
	mov	r1, #2208	@ tmp142,
	mla	r3, r1, r5, r3	@ pPPS, tmp142, tmp_pic_parameter_set_id, <variable>.PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L811	@,
	movw	r1, #13572	@ tmp146,
	ldr	r2, [r3, #28]	@ D.37428, <variable>.seq_parameter_set_id
	ldr	r3, [r4, r1]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	lr, r3, #1	@ tmp147, <variable>.MaxSpsNum,
	cmp	r2, lr	@ D.37428, tmp147
	bhi	.L812	@,
	movw	ip, #13580	@ tmp151,
	mov	r1, #4000	@ tmp153,
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	mla	lr, r1, r2, r3	@ tmp154, tmp153, D.37428, <variable>.SPS
	ldrb	ip, [lr, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	ip, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.37427,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37427,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L811:
	mov	r2, r5	@, tmp_pic_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37427,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L812:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37427,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	PPSSPSCheckTmpId, .-PPSSPSCheckTmpId
	.align	2
	.global	PPSSPSCheck
	.type	PPSSPSCheck, %function
PPSSPSCheck:
	.fnstart
.LFB1688:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r5, #20692	@ tmp140,
	mov	r0, #19	@,
	ldr	r2, [r4, r5]	@, <variable>.CurrSlice.pic_parameter_set_id
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r1, #13584	@ tmp143,
	ldr	r3, [r4, r1]	@ <variable>.PPS, <variable>.PPS
	mov	ip, #2208	@ tmp145,
	ldr	r2, [r4, r5]	@ temp.3012, <variable>.CurrSlice.pic_parameter_set_id
	mla	r3, ip, r2, r3	@ pPPS, tmp145, temp.3012, <variable>.PPS
	ldrb	r1, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	beq	.L818	@,
	movw	lr, #13580	@ tmp150,
	ldr	r2, [r3, #28]	@ D.37408, <variable>.seq_parameter_set_id
	ldr	ip, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	mov	r1, #4000	@ tmp152,
	mla	r3, r1, r2, ip	@ tmp153, tmp152, D.37408, <variable>.SPS
	ldrb	lr, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.37406,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37406,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L818:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37406,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	PPSSPSCheck, .-PPSSPSCheck
	.align	2
	.global	DumpList
	.type	DumpList, %function
DumpList:
	.fnstart
.LFB1668:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:g_PrintEnable	@ tmp146,
	movt	r1, #:upper16:g_PrintEnable	@ tmp146,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	tst	r3, #8192	@ g_PrintEnable,
	addne	r7, r0, #20480	@ ivtmp.3065, pH264Ctx,
	movne	r6, #0	@ j,
	addne	r7, r7, #244	@ ivtmp.3065, ivtmp.3065,
	beq	.L838	@,
.L821:
	ldr	r2, [r7, #0]	@ tmp154, <variable>.CurrSlice.listXsize
	cmp	r2, #0	@ tmp154,
	beq	.L824	@,
	add	r1, r6, r6, asl #5	@, tmp157, j, j,
	mov	r4, #0	@ i,
	add	r3, r8, r1, asl #2	@, tmp161, pH264Ctx, tmp157,
	add	r5, r3, #26880	@ ivtmp.3057, tmp161,
	add	r5, r5, #156	@ ivtmp.3057, ivtmp.3057,
.L822:
	ldr	ip, [r5], #4	@ tmp150, <variable>.pListX
	mov	r3, r4	@, i
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC15	@,
	mov	r2, r6	@, j
	movt	r1, #:upper16:.LC15	@,
	ldr	ip, [ip, #4]	@ D.35716, <variable>.frame_store
	add	r4, r4, #1	@ i, i,
	ldr	lr, [ip, #512]	@ <variable>.frame_num, <variable>.frame_num
	str	lr, [sp, #0]	@ <variable>.frame_num,
	ldr	ip, [ip, #524]	@ <variable>.poc, <variable>.poc
	str	ip, [sp, #4]	@ <variable>.poc,
	bl	dprint_vfmw	@
	ldr	r0, [r7, #0]	@ tmp153, <variable>.CurrSlice.listXsize
	cmp	r0, r4	@ tmp153, i
	bhi	.L822	@,
.L824:
	add	r6, r6, #1	@ j, j,
	add	r7, r7, #4	@ ivtmp.3065, ivtmp.3065,
	cmp	r6, #2	@ j,
	bne	.L821	@,
	movw	r6, #20724	@ tmp162,
	ldr	r0, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	bne	.L842	@,
	movw	r6, #20728	@ tmp181,
	ldr	r1, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ <variable>.CurrSlice.listXsize,
	bne	.L843	@,
.L838:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L843:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	ldr	r0, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L832	@,
	add	r5, r8, #27136	@ ivtmp.3047, pH264Ctx,
	add	r4, r5, #32	@ ivtmp.3047, ivtmp.3047,
	mov	r5, #0	@ i.3069,
	b	.L837	@
.L834:
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [lr, #524]	@, <variable>.poc
	bl	dprint_vfmw	@
.L833:
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3069, i.3069,
	add	r4, r4, #4	@ ivtmp.3047, ivtmp.3047,
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3069
	bls	.L832	@,
.L837:
	ldr	r3, [r4, #0]	@ D.35737, <variable>.pListX
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r2, #1	@ <variable>.structure,
	beq	.L835	@,
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC17	@,
	bcc	.L834	@,
	cmp	r2, #2	@ <variable>.structure,
	bne	.L833	@,
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC19	@,
	add	r5, r5, #1	@ i.3069, i.3069,
	add	r4, r4, #4	@ ivtmp.3047, ivtmp.3047,
	ldr	r2, [ip, #524]	@, <variable>.poc
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3069
	bhi	.L837	@,
.L832:
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC20	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	dprint_vfmw	@
.L835:
	ldr	r3, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [r3, #524]	@, <variable>.poc
	bl	dprint_vfmw	@
	b	.L833	@
.L842:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L826	@,
	add	r4, r8, #26880	@ ivtmp.3052, pH264Ctx,
	mov	r5, #0	@ i.3074,
	add	r4, r4, #156	@ ivtmp.3052, ivtmp.3052,
	b	.L831	@
.L828:
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [lr, #524]	@, <variable>.poc
	bl	dprint_vfmw	@
.L827:
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3074, i.3074,
	add	r4, r4, #4	@ ivtmp.3052, ivtmp.3052,
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3074
	bls	.L826	@,
.L831:
	ldr	r3, [r4, #0]	@ D.35724, <variable>.pListX
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r2, #1	@ <variable>.structure,
	beq	.L829	@,
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC17	@,
	bcc	.L828	@,
	cmp	r2, #2	@ <variable>.structure,
	bne	.L827	@,
	ldr	ip, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC19	@,
	add	r5, r5, #1	@ i.3074, i.3074,
	add	r4, r4, #4	@ ivtmp.3052, ivtmp.3052,
	ldr	r2, [ip, #524]	@, <variable>.poc
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r5	@ <variable>.CurrSlice.listXsize, i.3074
	bhi	.L831	@,
.L826:
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC20	@,
	movw	r6, #20728	@ tmp181,
	bl	dprint_vfmw	@
	ldr	r1, [r8, r6]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L838	@,
	b	.L843	@
.L829:
	ldr	r3, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [r3, #524]	@, <variable>.poc
	bl	dprint_vfmw	@
	b	.L827	@
	.fnend
	.size	DumpList, .-DumpList
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
	beq	.L845	@,
	add	r5, r0, #26880	@ ivtmp.3125, pH264Ctx,
	mov	r6, #0	@ i.3129,
	add	r5, r5, #156	@ ivtmp.3125, ivtmp.3125,
	movw	r7, #52840	@ tmp167,
	b	.L847	@
.L854:
	ldr	ip, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	ip, #0	@ <variable>.pstDecodeFs,
	beq	.L846	@,
	ldr	r3, [r4, r8]	@ D.40626, <variable>.CurrSlice.listXsize
	cmp	r3, r6	@ D.40626, i.3129
	bls	.L853	@,
.L847:
	ldr	r1, [r5, #0]	@ tmp148, <variable>.pListX
	add	r6, r6, #1	@ i.3129, i.3129,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3125, ivtmp.3125,
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L854	@,
.L846:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L845:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L853:
	cmp	r3, #0	@ D.40626,
	beq	.L845	@,
	movw	r8, #20728	@ tmp153,
	ldr	r0, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L845	@,
	add	r6, r4, #27136	@ ivtmp.3120, pH264Ctx,
	movw	r7, #52840	@ tmp165,
	add	r5, r6, #32	@ ivtmp.3120, ivtmp.3120,
	mov	r6, #0	@ i,
	b	.L848	@
.L855:
	ldr	r2, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #0	@ <variable>.pstDecodeFs,
	beq	.L846	@,
	ldr	r1, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r6	@ <variable>.CurrSlice.listXsize, i
	bls	.L845	@,
.L848:
	ldr	r3, [r5, #0]	@ tmp158, <variable>.pListX
	add	r6, r6, #1	@ i, i,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3120, ivtmp.3120,
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs.3132
	bne	.L855	@,
	b	.L846	@
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
	add	r2, ip, #1	@ D.37015,,
	str	r2, [r5, r3]	@ D.37015, <variable>.SliceParaNum
	sub	r7, r0, #1	@ tmp202, <variable>.MaxSliceNum,
	movw	r0, #52760	@ tmp198,
	cmp	ip, r7	@, tmp202
	mul	r4, r1, ip	@ tmp199, tmp200,
	ldr	ip, [r5, r0]	@ D.37016, <variable>.DecSlicePara
	movcs	r3, #0	@ tmp207,
	mlacc	r2, r1, r2, ip	@ tmp206, tmp200, D.37015, D.37016
	add	r7, ip, r4	@ pCurrSlicePara, D.37016, tmp199
	strcs	r3, [r7, #4056]	@ tmp207, <variable>.pNextSlice
	strcc	r2, [r7, #4056]	@ tmp206, <variable>.pNextSlice
	ldr	r1, [r5, #368]	@ D.37027, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ i.3336, <variable>.nal_used_segment
	ldr	r0, [r1, #68]	@ i.3483, <variable>.nal_segment
	cmp	r3, #1	@ i.3336,
	cmpls	r3, r0	@, i.3336, i.3483
	bcs	.L859	@,
	add	r6, r3, #4	@ tmp215, i.3336,
	add	r2, r7, r6, asl #2	@, ivtmp.3328, pCurrSlicePara, tmp215,
.L860:
	rsb	r0, r3, r3, asl #3	@, tmp220, i.3336, i.3336,
	add	r3, r3, #1	@ i.3336, i.3336,
	mov	r6, r0, asl #2	@ tmp221, tmp220,
	add	r1, r6, r1	@ tmp222, tmp221, D.37027
	ldr	r1, [r1, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	str	r1, [r2, #0]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r1, r6, r1	@ tmp231, tmp221, <variable>.pCurrNal
	ldr	r1, [r1, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	str	r1, [r2, #-8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r0, r6, r1	@ tmp240, tmp221, <variable>.pCurrNal
	cmp	r3, #1	@ i.3336,
	movhi	r6, #0	@, tmp249
	movls	r6, #1	@, tmp249
	ldr	r1, [r0, #28]	@ <variable>.bytespos, <variable>.bytespos
	str	r1, [r2, #8]	@ <variable>.bytespos, <variable>.bytespos
	add	r2, r2, #4	@ ivtmp.3328, ivtmp.3328,
	ldr	r1, [r5, #368]	@ D.37027, <variable>.pCurrNal
	ldr	r0, [r1, #68]	@ i.3483, <variable>.nal_segment
	cmp	r0, r3	@ i.3483, i.3336
	movls	r6, #0	@, tmp249,
	cmp	r6, #0	@ tmp249,
	bne	.L860	@,
.L859:
	cmp	r0, #1	@ i.3483,
	bhi	.L861	@,
	add	r3, r0, #4	@ tmp250, i.3483,
	add	r1, r7, #24	@ D.43845, pCurrSlicePara,
	mov	r2, #0	@ tmp593,
	add	r0, r7, r3, asl #2	@, ivtmp.3321, pCurrSlicePara, tmp250,
	add	r3, r0, #4	@ ivtmp.3321, ivtmp.3321,
	rsb	r6, r0, r1	@ tmp606, ivtmp.3321, D.43845
	cmp	r3, r1	@ ivtmp.3321, D.43845
	sub	r6, r6, #4	@ tmp607, tmp606,
	ubfx	r6, r6, #2, #1	@ tmp608, tmp607,,
	str	r2, [r0, #0]	@ tmp593, <variable>.bitsoffset
	str	r2, [r0, #-8]	@ tmp593, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp593, <variable>.bytespos
	beq	.L861	@,
	cmp	r6, #0	@ tmp608,
	beq	.L862	@,
	str	r2, [r3, #0]	@ tmp593, <variable>.bitsoffset
	str	r2, [r3, #-8]	@ tmp593, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp593, <variable>.bytespos
	add	r3, r3, #4	@ ivtmp.3321, ivtmp.3321,
	cmp	r3, r1	@ ivtmp.3321, D.43845
	beq	.L861	@,
.L862:
	add	r0, r3, #4	@ tmp609, ivtmp.3321,
	str	r2, [r3, #-8]	@ tmp593, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp593, <variable>.bytespos
	str	r2, [r3, #4]	@ tmp593, <variable>.bitsoffset
	str	r2, [r3, #0]	@ tmp593, <variable>.bitsoffset
	add	r3, r0, #4	@ ivtmp.3321, tmp609,
	cmp	r3, r1	@ ivtmp.3321, D.43845
	str	r2, [r0, #-8]	@ tmp593, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp593, <variable>.bytespos
	bne	.L862	@,
.L861:
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
	add	r3, r1, #26	@ D.37041, tmp260,
	str	r3, [r7, #32]	@ D.37041, <variable>.SliceQPy
	bne	.L863	@,
	movw	r2, #50112	@ tmp264,
	ldr	r0, [r5, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r0, #428]	@ D.37041, <variable>.frame.MaxQp
	ldr	r3, [r5, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r1, [r7, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	str	r1, [r3, #432]	@ <variable>.SliceQPy, <variable>.frame.MinQp
.L864:
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
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ temp.3343, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ temp.3343,
	beq	.L947	@,
	cmp	r3, #0	@ temp.3343,
	movweq	r3, #17590	@ tmp298,
	movne	r3, #0	@ tmp301,
	ldreqb	r3, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrPPS.weighted_pred_flag, <variable>.CurrPPS.weighted_pred_flag
	strb	r3, [r7, #4]	@ tmp301, <variable>.weight_flag
.L866:
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
	beq	.L868	@,
	movw	r3, #20724	@ tmp315,
	ldr	r4, [r5, r3]	@ temp.3501, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3501,
	beq	.L869	@,
	movw	r1, #27036	@ tmp317,
	ldr	r0, [r5, r1]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r0, #4]	@ temp.3478, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L870	@,
	tst	r4, #1	@ temp.3501,
	add	r3, r5, #26880	@ tmp327, pH264Ctx,
	add	r1, r3, #160	@ ivtmp.3315, tmp327,
	mov	r0, #0	@ i.3346,
	bne	.L872	@,
	ldr	ip, [r1, #0]	@ tmp628, <variable>.pListX
	add	r1, r3, #164	@ ivtmp.3315, tmp327,
	mov	r0, #1	@ i.3346,
	ldr	r3, [ip, #4]	@ temp.3478, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	bne	.L872	@,
.L870:
	movw	lr, #52840	@ tmp321,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r3, r0, #0	@ pstLogicFs,
	beq	.L948	@,
	ldr	r2, [r3, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r4, [r2, #4]	@, <variable>.PhyFsID
	str	r4, [sp, #4]	@, %sfp
	b	.L874	@
.L875:
	ldr	r3, [r2], #4	@ tmp319, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3478, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L870	@,
	ldr	r3, [r1, #4]	@ tmp630, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3315, tmp603,
	ldr	r3, [r3, #4]	@ temp.3478, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	beq	.L870	@,
.L872:
	add	ip, r0, #1	@ tmp604, i.3346,
	mov	r2, r1	@ tmp603, ivtmp.3315
	cmp	ip, r4	@ tmp604, temp.3501
	add	r0, ip, #1	@ i.3346, tmp604,
	bcc	.L875	@,
.L869:
	mov	r0, #0	@,
	str	r0, [sp, #4]	@, %sfp
.L874:
	movw	r1, #20728	@ tmp328,
	ldr	r4, [r5, r1]	@ temp.3349, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3349,
	beq	.L876	@,
	movw	ip, #27168	@ tmp330,
	ldr	r3, [r5, ip]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3479, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	beq	.L877	@,
	tst	r4, #1	@ temp.3349,
	add	r3, r5, #27136	@ tmp340, pH264Ctx,
	add	r1, r3, #36	@ ivtmp.3310, tmp340,
	mov	r0, #0	@ i.3354,
	bne	.L879	@,
	ldr	r2, [r1, #0]	@ tmp624, <variable>.pListX
	add	r1, r3, #40	@ ivtmp.3310, tmp340,
	mov	r0, #1	@ i.3354,
	ldr	r3, [r2, #4]	@ temp.3479, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	bne	.L879	@,
	b	.L877	@
.L882:
	ldr	r3, [r2], #4	@ tmp332, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3479, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L877	@,
	ldr	r3, [r1, #4]	@ tmp626, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3310, tmp598,
	ldr	r3, [r3, #4]	@ temp.3479, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L877	@,
.L879:
	add	ip, r0, #1	@ tmp599, i.3354,
	mov	r2, r1	@ tmp598, ivtmp.3310
	cmp	r4, ip	@ temp.3349, tmp599
	add	r0, ip, #1	@ i.3354, tmp599,
	bhi	.L882	@,
.L876:
	mov	r1, #0	@,
	str	r1, [sp, #12]	@, %sfp
.L881:
	movw	r2, #49707	@ tmp341,
	ldrb	r8, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r8, #0	@ <variable>.CurrPic.structure,
	beq	.L883	@,
	movw	r9, #20724	@ tmp343,
	ldr	r3, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L885	@,
	add	r4, r5, #26880	@ ivtmp.3290, pH264Ctx,
	mov	r6, r7	@ ivtmp.3295, pCurrSlicePara
	add	r4, r4, #156	@ ivtmp.3290, ivtmp.3290,
	mov	r8, #0	@ i.3443,
	movw	sl, #52840	@ tmp590,
	b	.L901	@
.L899:
	strb	r3, [r6, #1630]	@ temp.3437, <variable>.btm_structure
	add	r8, r8, #1	@ i.3443, i.3443,
	ldr	ip, [r4, #0]	@ tmp475, <variable>.pListX
	ldrb	r0, [ip, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r6, #1631]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	r3, [r4, #0]	@ tmp478, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3290, ivtmp.3290,
	ldr	lr, [r3, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r6, #1656]	@ <variable>.poc, <variable>.btm_poc
	add	r6, r6, #36	@ ivtmp.3295, ivtmp.3295,
	ldr	r1, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r8	@ <variable>.CurrSlice.listXsize, i.3443
	bls	.L885	@,
.L901:
	ldr	r3, [r4, #0]	@ tmp439, <variable>.pListX
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r2, [r4, #0]	@ tmp442, <variable>.pListX
	ldr	r1, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r1, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	ip, [r6, #1636]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, #0]	@ tmp445, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r1, [r6, #1625]	@ <variable>.is_used, <variable>.is_used
	ldr	ip, [r4, #0]	@ tmp449, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	ldreq	r0, [sp, #4]	@ ExistImgIdc_0.3335, %sfp
	beq	.L897	@,
	cmp	r0, #0	@ pstLogicFs.3414,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0.3335, <variable>.PhyFsID
.L897:
	str	r0, [r6, #1640]	@ ExistImgIdc_0.3335, <variable>.img_idc
	ldr	r3, [r4, #0]	@ tmp453, <variable>.pListX
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [lr, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r2, [r6, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r1, [r4, #0]	@ tmp456, <variable>.pListX
	ldr	ip, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [ip, #524]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #1632]	@ <variable>.poc, <variable>.poc
	ldr	r3, [r4, #0]	@ tmp459, <variable>.pListX
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r6, #1624]	@ <variable>.structure, <variable>.list_structure
	ldr	r2, [r4, #0]	@ tmp462, <variable>.pListX
	ldr	r1, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	ip, [r1, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	ip, [r6, #1626]	@ <variable>.frame.structure, <variable>.frame_structure
	ldr	r0, [r4, #0]	@ tmp466, <variable>.pListX
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3437, <variable>.structure
	cmp	r3, #1	@ temp.3437,
	bne	.L899	@,
	strb	r3, [r6, #1628]	@ temp.3437, <variable>.top_structure
	add	r8, r8, #1	@ i.3443, i.3443,
	ldr	r2, [r4, #0]	@ tmp469, <variable>.pListX
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r1, [r6, #1629]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	ip, [r4, #0]	@ tmp472, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3290, ivtmp.3290,
	ldr	r0, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #1652]	@ <variable>.poc, <variable>.top_poc
	add	r6, r6, #36	@ ivtmp.3295, ivtmp.3295,
	ldr	r1, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r8	@ <variable>.CurrSlice.listXsize, i.3443
	bhi	.L901	@,
.L885:
	movw	r3, #20680	@ tmp482,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L949	@,
.L891:
	mov	r3, #0	@ ivtmp.3228,
.L908:
	add	r0, r5, r3	@ tmp534, pH264Ctx, ivtmp.3228
	add	r2, r3, #4	@ tmp594, ivtmp.3228,
	add	ip, r0, #26880	@ tmp536, tmp534,
	add	r1, r5, r2	@ tmp620, pH264Ctx, tmp594
	add	r0, r7, r3	@ tmp533, pCurrSlicePara, ivtmp.3228
	add	r1, r1, #26880	@ tmp621, tmp620,
	ldr	ip, [ip, #28]	@ tmp537, <variable>.APC.RefIdx
	add	r3, r2, #4	@ ivtmp.3228, tmp594,
	cmp	r3, #128	@ ivtmp.3228,
	add	r2, r7, r2	@ tmp619, pCurrSlicePara, tmp594
	str	ip, [r0, #3928]	@ tmp537, <variable>.Apc2RefIdx
	ldr	ip, [r1, #28]	@ tmp623, <variable>.APC.RefIdx
	str	ip, [r2, #3928]	@ tmp623, <variable>.Apc2RefIdx
	bne	.L908	@,
	movw	r2, #17590	@ tmp538,
	movw	r0, #17632	@ tmp541,
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ temp.3488, <variable>.CurrPPS.weighted_pred_flag
	movw	ip, #51652	@ tmp539,
	ldr	r2, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	movw	r3, #51656	@ tmp540,
	cmp	r1, #0	@ temp.3488,
	str	r1, [r5, ip]	@ temp.3488, <variable>.DecPicPara.weighted_pred_flag
	str	r2, [r5, r3]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.DecPicPara.weighted_bipred_idc
	beq	.L909	@,
	movw	ip, #20680	@ tmp543,
	ldrb	r3, [r5, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #0	@ <variable>.CurrSlice.slice_type,
	bne	.L909	@,
.L910:
	movw	r0, #20744	@ tmp549,
	movw	ip, #20748	@ tmp551,
	ldr	r4, [r5, r0]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.CurrSlice.luma_log2_weight_denom
	add	r1, r5, #20736	@ ivtmp.3207, pH264Ctx,
	add	r3, r1, #16	@ ivtmp.3207, ivtmp.3207,
	mov	r0, r7	@ ivtmp.3500, pCurrSlicePara
	mov	r2, r7	@ ivtmp.3211, ivtmp.3500
	mov	r1, #0	@ i,
	str	r4, [r7, #80]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r4, #20736	@ tmp578,
	ldr	ip, [r5, ip]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	str	ip, [r7, #84]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
.L911:
	ldr	ip, [r3, #0]	@ tmp554, <variable>.CurrSlice.wp_weight_l0_y
	add	r1, r1, #1	@ i, i,
	str	ip, [r2, #88]	@ tmp554, <variable>.wp_weight_l0_y
	ldr	ip, [r3, #128]	@ tmp555, <variable>.CurrSlice.wp_weight_l0_u
	str	ip, [r2, #216]	@ tmp555, <variable>.wp_weight_l0_u
	ldr	ip, [r3, #256]	@ tmp556, <variable>.CurrSlice.wp_weight_l0_v
	str	ip, [r2, #344]	@ tmp556, <variable>.wp_weight_l0_v
	ldr	ip, [r3, #768]	@ tmp557, <variable>.CurrSlice.wp_offset_l0_y
	str	ip, [r2, #856]	@ tmp557, <variable>.wp_offset_l0_y
	ldr	ip, [r3, #896]	@ tmp558, <variable>.CurrSlice.wp_offset_l0_u
	str	ip, [r2, #984]	@ tmp558, <variable>.wp_offset_l0_u
	ldr	ip, [r3, #1024]	@ tmp559, <variable>.CurrSlice.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.3207, ivtmp.3207,
	str	ip, [r2, #1112]	@ tmp559, <variable>.wp_offset_l0_v
	add	r2, r2, #4	@ ivtmp.3211, ivtmp.3211,
	ldr	ip, [r5, r4]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	ip, r1	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcs	.L911	@,
	movw	r3, #20680	@ tmp562,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L950	@,
.L868:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r0, #0	@ tmp576,
	ldr	ip, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r3, r1, #12672	@ tmp573,,
	add	r2, r3, #4	@ tmp573, tmp573,
	str	ip, [r5, r2, asl #2]	@ <variable>.pCurrNal, <variable>.pSliceNal
	str	r0, [r5, #368]	@ tmp576, <variable>.pCurrNal
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L863:
	movw	r1, #50112	@ tmp268,
	ldr	r2, [r5, r1]	@ temp.3341, <variable>.CurrPic.frame_store
	ldr	r0, [r2, #428]	@ <variable>.frame.MaxQp, <variable>.frame.MaxQp
	ldr	r1, [r2, #432]	@ <variable>.frame.MinQp, <variable>.frame.MinQp
	cmp	r0, r3	@ <variable>.frame.MaxQp, D.37041
	strge	r0, [r2, #428]	@, <variable>.frame.MaxQp, <variable>.frame.MaxQp
	strlt	r3, [r2, #428]	@, D.37041, <variable>.frame.MaxQp
	cmp	r1, r3	@ <variable>.frame.MinQp, D.37041
	strle	r1, [r2, #432]	@, <variable>.frame.MinQp, <variable>.frame.MinQp
	strgt	r3, [r2, #432]	@, D.37041, <variable>.frame.MinQp
	b	.L864	@
.L909:
	movw	r0, #17632	@ tmp545,
	ldr	r1, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	cmp	r1, #1	@ <variable>.CurrPPS.weighted_bipred_idc,
	bne	.L868	@,
	movw	r3, #20680	@ tmp547,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L868	@,
	b	.L910	@
.L883:
	movw	fp, #20724	@ tmp345,
	ldr	r0, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L886	@,
	add	r9, r5, #26880	@ ivtmp.3252, pH264Ctx,
	mov	r4, r7	@ ivtmp.3257, pCurrSlicePara
	add	r6, r9, #156	@ ivtmp.3252, ivtmp.3252,
	mov	sl, r8	@ tmp585, i.3344
	movw	r9, #52840	@ tmp583,
.L890:
	ldr	ip, [r6, #0]	@ tmp350, <variable>.pListX
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r6, #0]	@ tmp353, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r2, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r1, [r4, #1636]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	ip, [r6, #0]	@ tmp356, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r2, [r4, #1625]	@ <variable>.is_used, <variable>.is_used
	ldr	r1, [r6, #0]	@ tmp360, <variable>.pListX
	ldr	ip, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	ldreq	r0, [sp, #4]	@ ExistImgIdc_0.3333, %sfp
	beq	.L888	@,
	cmp	r0, #0	@ pstLogicFs.3359,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0.3333, <variable>.PhyFsID
.L888:
	str	r0, [r4, #1640]	@ ExistImgIdc_0.3333, <variable>.img_idc
	add	r8, r8, #1	@ i.3344, i.3344,
	ldr	r1, [r6, #0]	@ tmp364, <variable>.pListX
	ldr	r0, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r0, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	str	ip, [r4, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	lr, [r6, #0]	@ tmp367, <variable>.pListX
	ldr	r3, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #524]	@ <variable>.poc, <variable>.poc
	str	r2, [r4, #1632]	@ <variable>.poc, <variable>.poc
	ldr	r1, [r6, #0]	@ tmp370, <variable>.pListX
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r4, #1627]	@ <variable>.is_long_term, <variable>.frame_is_long_term
	ldr	ip, [r6, #0]	@ tmp373, <variable>.pListX
	ldrb	lr, [ip, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r4, #1626]	@ <variable>.structure, <variable>.frame_structure
	ldr	r3, [r6, #0]	@ tmp376, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r2, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	str	r1, [r4, #1648]	@ <variable>.frame.poc, <variable>.frame_poc
	ldr	r0, [r6, #0]	@ tmp379, <variable>.pListX
	ldr	ip, [r0, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [ip, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	lr, [r4, #1652]	@ <variable>.top_field.poc, <variable>.top_poc
	ldr	r3, [r6], #4	@ tmp382, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r2, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	strb	sl, [r4, #1624]	@ tmp585, <variable>.list_structure
	str	r1, [r4, #1656]	@ <variable>.bottom_field.poc, <variable>.btm_poc
	add	r4, r4, #36	@ ivtmp.3257, ivtmp.3257,
	ldr	r0, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3344
	bhi	.L890	@,
.L886:
	movw	r3, #20680	@ tmp389,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L891	@,
	movw	fp, #20728	@ tmp391,
	ldr	ip, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L891	@,
	add	r6, r5, #27136	@ ivtmp.3234, pH264Ctx,
	add	sl, r7, #1632	@ ivtmp.3241, pCurrSlicePara,
	mov	r8, #0	@ i.3408,
	add	r6, r6, #32	@ ivtmp.3234, ivtmp.3234,
	add	r4, sl, #8	@ ivtmp.3241, ivtmp.3241,
	movw	r9, #52840	@ tmp579,
	mov	sl, r8	@ tmp581, i.3408
.L895:
	ldr	r1, [r6, #0]	@ tmp397, <variable>.pListX
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	ldr	lr, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	ip, [r6, #0]	@ tmp400, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r4, #1148]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r1, [r6, #0]	@ tmp403, <variable>.pListX
	ldr	ip, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r3, [r4, #1137]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r6, #0]	@ tmp407, <variable>.pListX
	ldr	r1, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	ldreq	r0, [sp, #12]	@ ExistImgIdc_1.3334, %sfp
	beq	.L893	@,
	cmp	r0, #0	@ pstLogicFs.3386,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1.3334, <variable>.PhyFsID
.L893:
	str	r0, [r4, #0]	@ ExistImgIdc_1.3334, <variable>.img_idc
	add	r8, r8, #1	@ i.3408, i.3408,
	ldr	r2, [r6, #0]	@ tmp411, <variable>.pListX
	ldr	r0, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r0, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r1, [r4, #1156]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	lr, [r6, #0]	@ tmp414, <variable>.pListX
	ldr	ip, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [ip, #524]	@ <variable>.poc, <variable>.poc
	str	r3, [r4, #1144]	@ <variable>.poc, <variable>.poc
	ldr	r2, [r6, #0]	@ tmp417, <variable>.pListX
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r4, #1139]	@ <variable>.is_long_term, <variable>.frame_is_long_term
	ldr	r1, [r6, #0]	@ tmp420, <variable>.pListX
	ldrb	lr, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r4, #1138]	@ <variable>.structure, <variable>.frame_structure
	ldr	ip, [r6, #0]	@ tmp423, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	str	r2, [r4, #1160]	@ <variable>.frame.poc, <variable>.frame_poc
	ldr	r0, [r6, #0]	@ tmp426, <variable>.pListX
	ldr	r1, [r0, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [r1, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	lr, [r4, #1164]	@ <variable>.top_field.poc, <variable>.top_poc
	ldr	ip, [r6], #4	@ tmp429, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	strb	sl, [r4, #1136]	@ tmp581, <variable>.list_structure
	str	r2, [r4, #1168]	@ <variable>.bottom_field.poc, <variable>.btm_poc
	add	r4, r4, #36	@ ivtmp.3241, ivtmp.3241,
	ldr	r0, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3408
	bhi	.L895	@,
	b	.L891	@
.L877:
	movw	lr, #52840	@ tmp334,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r3, r0, #0	@ pstLogicFs.3350,
	beq	.L951	@,
	ldr	r0, [r3, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r8, [r0, #4]	@, <variable>.PhyFsID
	str	r8, [sp, #12]	@, %sfp
	b	.L881	@
.L947:
	movw	r0, #17632	@ tmp295,
	ldr	ip, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	strb	ip, [r7, #4]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.weight_flag
	b	.L866	@
.L949:
	movw	r9, #20728	@ tmp484,
	ldr	r0, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L891	@,
	add	sl, r5, #27136	@ ivtmp.3270, pH264Ctx,
	add	r8, r7, #2800	@ ivtmp.3279, pCurrSlicePara,
	add	r4, sl, #32	@ ivtmp.3270, ivtmp.3270,
	add	r6, r8, #4	@ ivtmp.3279, ivtmp.3279,
	movw	sl, #52840	@ tmp587,
	mov	r8, #0	@ i.3439,
	b	.L907	@
.L905:
	strb	r3, [r6, #-22]	@ temp.3477, <variable>.btm_structure
	ldr	r1, [r4, #0]	@ tmp526, <variable>.pListX
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r6, #-21]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	ip, [r4, #0]	@ tmp529, <variable>.pListX
	ldr	lr, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r6, #4]	@ <variable>.poc, <variable>.btm_poc
.L906:
	ldr	r2, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r8, r8, #1	@ i.3439, i.3439,
	add	r4, r4, #4	@ ivtmp.3270, ivtmp.3270,
	add	r6, r6, #36	@ ivtmp.3279, ivtmp.3279,
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3439
	bls	.L891	@,
.L907:
	ldr	ip, [r4, #0]	@ tmp490, <variable>.pListX
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4, #0]	@ tmp493, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r2, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r1, [r6, #-16]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	ip, [r4, #0]	@ tmp496, <variable>.pListX
	ldr	r3, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r2, [r6, #-27]	@ <variable>.is_used, <variable>.is_used
	ldr	r1, [r4, #0]	@ tmp500, <variable>.pListX
	ldr	ip, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	ldreq	r0, [sp, #12]	@ ExistImgIdc_1, %sfp
	beq	.L903	@,
	cmp	r0, #0	@ pstLogicFs.3454,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1, <variable>.PhyFsID
.L903:
	str	r0, [r6, #-12]	@ ExistImgIdc_1, <variable>.img_idc
	ldr	ip, [r4, #0]	@ tmp504, <variable>.pListX
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [lr, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r3, [r6, #-8]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r2, [r4, #0]	@ tmp507, <variable>.pListX
	ldr	r1, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r1, #524]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #-20]	@ <variable>.poc, <variable>.poc
	ldr	ip, [r4, #0]	@ tmp510, <variable>.pListX
	ldrb	lr, [ip, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r6, #-28]	@ <variable>.structure, <variable>.list_structure
	ldr	r3, [r4, #0]	@ tmp513, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r2, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	r1, [r6, #-26]	@ <variable>.frame.structure, <variable>.frame_structure
	ldr	r0, [r4, #0]	@ tmp517, <variable>.pListX
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3477, <variable>.structure
	cmp	r3, #1	@ temp.3477,
	bne	.L905	@,
	strb	r3, [r6, #-24]	@ temp.3477, <variable>.top_structure
	ldr	r3, [r4, #0]	@ tmp520, <variable>.pListX
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r2, [r6, #-23]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	r1, [r4, #0]	@ tmp523, <variable>.pListX
	ldr	r0, [r1, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #0]	@ <variable>.poc, <variable>.top_poc
	b	.L906	@
.L950:
	add	r1, r5, #20992	@ ivtmp.3190, pH264Ctx,
	mov	r2, #0	@ i.3339,
	add	r3, r1, #144	@ ivtmp.3190, ivtmp.3190,
	movw	ip, #20740	@ tmp577,
.L912:
	ldr	r1, [r3, #0]	@ tmp565, <variable>.CurrSlice.wp_weight_l1_y
	add	r2, r2, #1	@ i.3339, i.3339,
	str	r1, [r0, #472]	@ tmp565, <variable>.wp_weight_l1_y
	ldr	r1, [r3, #128]	@ tmp566, <variable>.CurrSlice.wp_weight_l1_u
	str	r1, [r0, #600]	@ tmp566, <variable>.wp_weight_l1_u
	ldr	r1, [r3, #256]	@ tmp567, <variable>.CurrSlice.wp_weight_l1_v
	str	r1, [r0, #728]	@ tmp567, <variable>.wp_weight_l1_v
	ldr	r1, [r3, #768]	@ tmp568, <variable>.CurrSlice.wp_offset_l1_y
	str	r1, [r0, #1240]	@ tmp568, <variable>.wp_offset_l1_y
	ldr	r1, [r3, #896]	@ tmp569, <variable>.CurrSlice.wp_offset_l1_u
	str	r1, [r0, #1368]	@ tmp569, <variable>.wp_offset_l1_u
	ldr	r1, [r3, #1024]	@ tmp570, <variable>.CurrSlice.wp_offset_l1_v
	add	r3, r3, #4	@ ivtmp.3190, ivtmp.3190,
	str	r1, [r0, #1496]	@ tmp570, <variable>.wp_offset_l1_v
	add	r0, r0, #4	@ ivtmp.3500, ivtmp.3500,
	ldr	r1, [r5, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r1, r2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.3339
	bcs	.L912	@,
	b	.L868	@
.L948:
	movw	r1, #:lower16:.LC22	@,
	movw	r2, #7080	@,
	movt	r1, #:upper16:.LC22	@,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	dprint_vfmw	@
.L951:
	movw	r1, #:lower16:.LC22	@,
	movw	r2, #7101	@,
	movt	r1, #:upper16:.LC22	@,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	dprint_vfmw	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	subs	r5, r1, #0	@ pFrameStore, pFrameStore
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	beq	.L979	@,
	cmp	r2, #1	@ structure,
	beq	.L956	@,
	cmp	r2, #2	@ structure,
	beq	.L980	@,
	ldr	r7, [r5, #452]	@ toppoc, <variable>.top_field.poc
	ldr	r8, [r5, #488]	@ bottompoc, <variable>.bottom_field.poc
.L958:
	movw	r3, #26900	@ tmp152,
	ldr	r0, [r6, r3]	@ D.34075, <variable>.APC.size
	cmp	r0, #0	@ D.34075,
	beq	.L959	@,
	movw	r1, #26644	@ tmp153,
	ldr	r4, [r6, r1]	@ <variable>.APC.is_used, <variable>.APC.is_used
	cmp	r4, #0	@ <variable>.APC.is_used,
	beq	.L961	@,
	tst	r0, #1	@ D.34075,
	add	r3, r6, #26624	@ tmp191, pH264Ctx,
	add	r2, r3, #24	@ ivtmp.3533, tmp191,
	mov	r4, #0	@ i,
	bne	.L962	@,
	ldr	ip, [r2, #0]	@ D.34047, <variable>.APC.is_used
	mov	r4, #1	@ i,
	add	r2, r3, #28	@ ivtmp.3533, tmp191,
	cmp	ip, #0	@ D.34047,
	bne	.L962	@,
	b	.L961	@
.L967:
	ldr	ip, [r3], #4	@ D.34047, <variable>.APC.is_used
	cmp	ip, #0	@ D.34047,
	beq	.L961	@,
	ldr	r1, [r2, #4]	@ D.34047, <variable>.APC.is_used
	add	r4, r4, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.3533, tmp196,
	cmp	r1, #0	@ D.34047,
	beq	.L961	@,
.L962:
	add	r4, r4, #1	@ i, i,
	mov	r3, r2	@ tmp196, ivtmp.3533
	cmp	r4, r0	@ i, D.34075
	bcc	.L967	@,
.L959:
	mvn	r0, #0	@ D.34045,
.L954:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L980:
	ldr	r7, [r5, #488]	@ toppoc, <variable>.bottom_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L958	@
.L961:
	movw	r2, #52840	@ tmp155,
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	ip, r0, #0	@ pstLogicFs,
	beq	.L963	@,
	ldr	r0, [ip, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L963	@,
	add	r2, r4, #6656	@ tmp160, i,
	movw	sl, #26904	@ tmp186,
	movw	r1, #:lower16:.LC23	@,
	mov	r3, r4	@, i
	add	r0, r6, r2, asl #2	@, tmp163, pH264Ctx, tmp160,
	ldr	r2, [r6, sl]	@ D.34062, <variable>.APC.used_size
	mov	sl, #1	@ tmp165,
	movt	r1, #:upper16:.LC23	@,
	mov	lr, r0	@ tmp184, tmp163
	str	sl, [r0, #20]	@ tmp165, <variable>.APC.is_used
	ldr	r0, [ip, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #15	@ D.34062,
	addls	r2, r2, #1	@ iftmp.495, D.34062,
	movhi	r2, #16	@ iftmp.495,
	ldr	ip, [r0, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	mov	r0, #13	@,
	str	r7, [lr, #148]	@ toppoc, <variable>.APC.poc
	str	r8, [lr, #212]	@ bottompoc, <variable>.APC.poc
	str	ip, [lr, #84]	@ <variable>.PhyFsID, <variable>.APC.idc
	movw	lr, #26904	@ tmp187,
	str	r2, [r6, lr]	@ iftmp.495, <variable>.APC.used_size
	ldr	r2, [r5, #184]	@, <variable>.fs_image.image_id
	bl	dprint_vfmw	@
	str	r4, [r5, #552]	@ i, <variable>.apc_idc
	mov	r0, #0	@ D.34045,
	b	.L954	@
.L956:
	ldr	r7, [r5, #452]	@ toppoc, <variable>.top_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L958	@
.L979:
	mov	r0, r5	@, pFrameStore
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #2010	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34045,
	b	.L954	@
.L963:
	mov	lr, #0	@ tmp190,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ D.34070, <variable>.is_reference
	ldr	r2, [r5, #508]	@ D.34051, <variable>.logic_fs_id
	mov	r0, lr	@, tmp190
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34045,
	b	.L954	@
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
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	mvn	r0, #0	@ tmp145,
	str	r1, [sp, #12]	@ pFrameStore, %sfp
	ldrd	r2, [r1, #16]	@ <variable>.fs_image.PTS, pFrameStore,
	mvn	r1, #0	@,
	cmp	r3, r1	@ <variable>.fs_image.PTS, tmp145
	cmpeq	r2, r0	@ <variable>.fs_image.PTS, tmp145
	beq	.L987	@,
	movw	r9, #26628	@ tmp146,
	ldr	r3, [r6, r9]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L987	@,
	add	r7, r6, #26368	@ ivtmp.3567, pH264Ctx,
	mvn	sl, #1	@ MinPts.3574,
	add	r7, r7, #64	@ ivtmp.3567, ivtmp.3567,
	mvn	fp, #0	@ MinPts.3574,
	mov	r8, #0	@ i,
	mvn	r1, #0	@,
	str	r1, [sp, #8]	@, %sfp
.L986:
	ldr	r3, [r7, #0]	@ D.33694, <variable>.DPB.fs
	cmp	r3, #0	@ D.33694,
	beq	.L983	@,
	movw	r2, #52840	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L983	@,
	ldrsb	r4, [r0, #1]	@ D.33702, <variable>.s32DispState
	cmp	r4, #3	@ D.33702,
	cmpne	r4, #0	@, D.33702,
	beq	.L983	@,
	ldr	r0, [r7, #0]	@ tmp161, <variable>.DPB.fs
	ldrd	r4, [r0, #16]	@ MinPts, tmp161,
	cmp	r5, fp	@ MinPts, MinPts.3574
	cmpeq	r4, sl	@ MinPts, MinPts.3574
	strcc	r8, [sp, #8]	@ i, %sfp
	bcc	.L984	@,
.L983:
	mov	r4, sl	@ MinPts, MinPts.3574
	mov	r5, fp	@ MinPts, MinPts.3574
.L984:
	ldr	ip, [r6, r9]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	r8, r8, #1	@ i, i,
	mov	sl, r4	@ MinPts.3574, MinPts
	mov	fp, r5	@ MinPts.3574, MinPts
	cmp	r8, ip	@ i, <variable>.DPB.used_size
	add	r7, r7, #4	@ ivtmp.3567, ivtmp.3567,
	bcc	.L986	@,
	ldr	r3, [sp, #8]	@, %sfp
	cmn	r3, #1	@,
	beq	.L987	@,
	ldr	r1, [sp, #12]	@, %sfp
	ldrd	r2, [r1, #16]	@ temp.3571,,
	cmp	r5, r3	@ MinPts, temp.3571
	cmpeq	r4, r2	@ MinPts, temp.3571
	bcc	.L988	@,
.L987:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L988:
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	strd	r4, [sp]	@ MinPts,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #8]	@, %sfp
	ldr	r2, [sp, #12]	@, %sfp
	add	ip, r0, #6592	@ tmp165,,
	add	r3, ip, #16	@ tmp165, tmp165,
	ldrd	r0, [r2, #16]	@ <variable>.fs_image.PTS,,
	ldr	ip, [r6, r3, asl #2]	@ tmp167, <variable>.DPB.fs
	strd	r0, [ip, #16]	@ <variable>.fs_image.PTS, tmp167,
	strd	r4, [r2, #16]	@ MinPts,,
	b	.L987	@
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
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #51332	@ tmp145,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r5, r0]	@ <variable>.IDRFound, <variable>.IDRFound
	mov	r4, r1	@ pFrameStore, pFrameStore
	cmp	r3, #0	@ <variable>.IDRFound,
	bne	.L990	@,
	ldr	r1, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r1, #1	@ <variable>.eFoState,
	beq	.L991	@,
	movw	ip, #52768	@ tmp148,
	ldr	r2, [r5, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r2, #0	@ <variable>.OldDecMode,
	beq	.L1007	@,
.L991:
	movw	r1, #51332	@ tmp152,
	mov	lr, #1	@ tmp153,
	str	lr, [r5, r1]	@ tmp153, <variable>.IDRFound
.L990:
	movw	r2, #52840	@ tmp154,
	ldr	r1, [r4, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L993	@,
	ldrsb	r3, [r0, #1]	@ D.33629, <variable>.s32DispState
	cmp	r3, #3	@ D.33629,
	cmpne	r3, #0	@, D.33629,
	beq	.L1008	@,
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ D.33646, <variable>.is_used
	cmp	r2, #0	@ D.33646,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ prephitmp.3589, <variable>.non_existing
	beq	.L1003	@,
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	beq	.L1003	@,
	ldr	r3, [r4, #0]	@ tmp178,* pFrameStore
	movw	ip, #:lower16:50332416	@ tmp179,
	movt	ip, #:upper16:50332416	@ tmp179,
	bic	r1, r3, #16711680	@ tmp176, tmp178,
	bic	lr, r1, #255	@ tmp176, tmp176,
	cmp	lr, ip	@ tmp176, tmp179
	beq	.L1009	@,
	cmp	r2, #1	@ D.33646,
	beq	.L1010	@,
	cmp	r2, #2	@ D.33646,
	beq	.L1011	@,
.L1000:
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #188]	@ D.33672, <variable>.stDispImg.error_level
	ldr	r3, [lr, #4]	@ D.33673, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.33672, D.33673
	movls	r0, #0	@ D.33623,
	bhi	.L1012	@,
.L992:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L1011:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.3607, <variable>.mode_skip_flag
	tst	r3, #2	@ temp.3607,
	beq	.L1000	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33623,
	b	.L992	@
.L1008:
	movw	r1, #:lower16:.LC26	@,
	ldr	r2, [r4, #508]	@, <variable>.logic_fs_id
	movt	r1, #:upper16:.LC26	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L995:
	ldr	r3, [r4, #528]	@ <variable>.eFoState, <variable>.eFoState
	mvn	r0, #2	@ D.33623,
	cmp	r3, #1	@ <variable>.eFoState,
	moveq	r3, #2	@ tmp173,
	streq	r3, [r4, #528]	@ tmp173, <variable>.eFoState
	b	.L992	@
.L1010:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.3605, <variable>.mode_skip_flag
	tst	r3, #1	@ temp.3605,
	beq	.L1000	@,
	mov	r0, r2	@, D.33646
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33623,
	b	.L992	@
.L993:
	ldr	ip, [r4, #508]	@ <variable>.logic_fs_id, <variable>.logic_fs_id
	movw	r1, #:lower16:.LC27	@,
	ldr	r3, [r4, #528]	@ <variable>.eFoState, <variable>.eFoState
	movt	r1, #:upper16:.LC27	@,
	mov	r2, r4	@, pFrameStore
	mov	r0, #1	@,
	str	ip, [sp, #0]	@ <variable>.logic_fs_id,
	bl	dprint_vfmw	@
	b	.L995	@
.L1007:
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	bne	.L991	@,
	mvn	r0, #0	@ D.33623,
	b	.L992	@
.L1003:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33623,
	b	.L992	@
.L1012:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33623,
	b	.L992	@
.L1009:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@, <variable>.mode_skip_flag
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33623,
	b	.L992	@
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ PicID, PicID
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC33	@,
	movw	r6, #52840	@ tmp144,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, r5	@, PicID
	bl	FSP_GetLogicFs	@
	subs	r7, r0, #0	@ pstLogicFs,
	bne	.L1021	@,
.L1014:
	mvn	r0, #0	@ D.40890,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1021:
	ldrsb	r3, [r7, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r3, #0	@ <variable>.s32DispState,
	beq	.L1014	@,
	ldr	r1, [r7, #200]	@ D.40892, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ D.40892,
	beq	.L1015	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp149,
	str	r0, [r7, #200]	@ tmp149, <variable>.stDispImg.p_usrdat
.L1015:
	ldr	r1, [r7, #204]	@ temp.3641, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3641,
	beq	.L1016	@,
	movw	r2, #52840	@ tmp150,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp152,
	str	r1, [r7, #204]	@ tmp152, <variable>.stDispImg.p_usrdat
.L1016:
	ldr	r1, [r7, #208]	@ temp.3643, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3643,
	beq	.L1017	@,
	movw	lr, #52840	@ tmp153,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp155,
	str	ip, [r7, #208]	@ tmp155, <variable>.stDispImg.p_usrdat
.L1017:
	ldr	r1, [r7, #212]	@ temp.3637, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3637,
	beq	.L1018	@,
	movw	r2, #52840	@ tmp156,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp158,
	str	r3, [r7, #212]	@ tmp158, <variable>.stDispImg.p_usrdat
.L1018:
	movw	ip, #52840	@ tmp159,
	mov	r1, r5	@, PicID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.40890,
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r6, r1	@ SE_TRACEstring, SE_TRACEstring
	add	r0, r0, #24	@,,
	mov	r1, #1	@,
	bl	BsGet	@
	ldr	ip, [r5, #368]	@ D.32882, <variable>.pCurrNal
	mov	r2, r6	@, SE_TRACEstring
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	lr, lr, #1	@ tmp142, <variable>.nal_bitoffset,
	str	lr, [ip, #64]	@ tmp142, <variable>.nal_bitoffset
	mov	r4, r0	@ D.32881,
	mov	r0, #21	@,
	mov	r3, r4	@, D.32881
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.32881
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r7, r2	@ SE_TRACEstring, SE_TRACEstring
	add	r0, r0, #24	@,,
	mov	r5, r1	@ LenInBits, LenInBits
	bl	BsGet	@
	ldr	ip, [r6, #368]	@ D.32870, <variable>.pCurrNal
	mov	r2, r7	@, SE_TRACEstring
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, lr, r5	@ tmp142, <variable>.nal_bitoffset, LenInBits
	str	r5, [ip, #64]	@ tmp142, <variable>.nal_bitoffset
	mov	r4, r0	@ INFO,
	mov	r0, #21	@,
	mov	r3, r4	@, INFO
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
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
	mla	r3, r1, r0, r4	@ pSPS.3721, tmp154, <variable>.CurrSPS.seq_parameter_set_id, pSPS
	ldrb	r2, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	movne	r4, r3	@ pSPS, pSPS.3721
	bne	.L1032	@,
	movw	r2, #13572	@ tmp156,
	ldr	ip, [r5, r2]	@ D.39718, <variable>.MaxSpsNum
	cmp	ip, #0	@ D.39718,
	ble	.L1028	@,
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L1029	@,
	tst	ip, #1	@ D.39718,
	add	r3, r4, #4000	@ ivtmp.3717, pSPS,
	bne	.L1031	@,
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ D.39715, <variable>.is_valid
	mov	r4, r3	@ pSPS, ivtmp.3717
	mov	r2, #1	@ i,
	add	r3, r3, #4000	@ ivtmp.3717, ivtmp.3717,
	cmp	r0, #0	@ D.39715,
	beq	.L1031	@,
	b	.L1029	@
.L1033:
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ D.39715, <variable>.is_valid
	cmp	r0, #0	@ D.39715,
	bne	.L1029	@,
	ldrb	r0, [r3, #4023]	@ zero_extendqisi2	@ D.39715, <variable>.is_valid
	mov	r4, r1	@ pSPS, tmp178
	add	r3, r3, #8000	@ ivtmp.3717, ivtmp.3717,
	cmp	r0, #0	@ D.39715,
	bne	.L1029	@,
.L1031:
	add	r1, r2, #1	@ tmp179, i,
	mov	r4, r3	@ pSPS, ivtmp.3717
	cmp	ip, r1	@ D.39718, tmp179
	add	r2, r1, #1	@ i, tmp179,
	add	r1, r3, #4000	@ tmp178, ivtmp.3717,
	bgt	.L1033	@,
.L1028:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.39722,
.L1034:
	mov	r0, r3	@, D.39722
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1029:
	cmp	r4, #0	@ pSPS,
	beq	.L1028	@,
.L1032:
	ldrb	ip, [r4, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_parameters_present_flag,
	beq	.L1035	@,
	ldrb	r3, [r4, #35]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag, <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag
	cmp	r3, #0	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag,
	beq	.L1050	@,
	ldr	lr, [r4, #388]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r6, [r4, #392]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, lr, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r6, #1	@ dpb_output_len, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1,
.L1038:
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC36	@,
	movt	r2, #:upper16:.LC36	@,
	bl	u_v	@
	movw	r3, #26424	@ tmp167,
	mov	r1, r6	@, dpb_output_len
	movw	r2, #:lower16:.LC37	@,
	movt	r2, #:upper16:.LC37	@,
	str	r0, [r5, r3]	@, <variable>.PicTimingSEI.cpb_removal_delay
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26428	@ tmp169,
	str	r0, [r5, ip]	@, <variable>.PicTimingSEI.dpb_output_delay
.L1035:
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.pic_struct_present_flag, <variable>.vui_seq_parameters.pic_struct_present_flag
	cmp	r3, #0	@ <variable>.vui_seq_parameters.pic_struct_present_flag,
	beq	.L1034	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC38	@,
	movt	r2, #:upper16:.LC38	@,
	bl	u_v	@
	mov	r3, #0	@ D.39722,
	movw	r2, #26420	@ tmp172,
	strb	r0, [r5, r2]	@, <variable>.PicTimingSEI.pic_struct
	mov	r0, r3	@, D.39722
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1050:
	ldrb	r2, [r4, #38]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag, <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag,
	beq	.L1035	@,
	ldr	r1, [r4, #700]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r0, [r4, #704]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r1, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r0, #1	@ dpb_output_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1,
	b	.L1038	@
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
	beq	.L1069	@,
.L1052:
	movw	sl, #51316	@ tmp149,
	ldr	r0, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r0, #0	@ <variable>.TotalFsNum,
	beq	.L1053	@,
	add	r4, r6, #27136	@ ivtmp.3757, pH264Ctx,
	mov	r7, #0	@ i,
	add	r4, r4, #169	@ ivtmp.3757, ivtmp.3757,
	mov	r5, r7	@ tmp174, i
	movw	r8, #52840	@ tmp175,
.L1058:
	ldr	r1, [r4, #199]	@ D.35922, <variable>.fs_image.p_usrdat
	add	r7, r7, #1	@ i, i,
	strb	r5, [r4, #0]	@ tmp174, <variable>.is_used
	cmp	r1, #0	@ D.35922,
	strb	r5, [r4, #1]	@ tmp174, <variable>.is_reference
	beq	.L1054	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #199]	@ tmp174, <variable>.fs_image.p_usrdat
.L1054:
	ldr	r1, [r4, #203]	@ temp.3770, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3770,
	beq	.L1055	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #203]	@ tmp174, <variable>.fs_image.p_usrdat
.L1055:
	ldr	r1, [r4, #207]	@ temp.3772, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3772,
	beq	.L1056	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #207]	@ tmp174, <variable>.fs_image.p_usrdat
.L1056:
	ldr	r1, [r4, #211]	@ temp.3765, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3765,
	beq	.L1057	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #211]	@ tmp174, <variable>.fs_image.p_usrdat
.L1057:
	ldr	r1, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r4, r4, #560	@ ivtmp.3757, ivtmp.3757,
	cmp	r1, r7	@ <variable>.TotalFsNum, i
	bhi	.L1058	@,
.L1053:
	movw	r2, #51320	@ tmp170,
	ldr	ip, [r6, r2]	@ D.35926, <variable>.TotalPmvNum
	cmp	ip, #0	@ D.35926,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r6, r6, #51200	@ tmp171, pH264Ctx,
	mov	r2, #1	@ i.3767,
	add	r3, r6, #48	@ ivtmp.3752, tmp171,
	cmp	r2, ip	@ i.3767, D.35926
	sub	lr, ip, #1	@ tmp177, D.35926,
	mov	r0, #0	@ tmp173,
	add	r1, r6, #52	@ ivtmp.3752, tmp171,
	str	r0, [r3, #0]	@ tmp173, <variable>.PmvStoreUsedFlag
	and	r3, lr, r2	@ tmp179, tmp177,
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r3, #0	@ tmp179,
	beq	.L1060	@,
	mov	r2, #2	@ i.3767,
	cmp	r2, ip	@ i.3767, D.35926
	str	r0, [r1, #0]	@ tmp173, <variable>.PmvStoreUsedFlag
	add	r1, r6, #56	@ ivtmp.3752, tmp171,
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1060:
	add	r2, r2, #2	@ i.3767, i.3767,
	mov	lr, r1	@ tmp181, ivtmp.3752
	cmp	r2, ip	@ i.3767, D.35926
	str	r0, [lr], #4	@ tmp173, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp173, <variable>.PmvStoreUsedFlag
	add	r1, lr, #4	@ ivtmp.3752, tmp181,
	bcc	.L1060	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1069:
	add	r0, r6, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	b	.L1052	@
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
	beq	.L1075	@,
	ldr	r3, [r4, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	mov	r5, #0	@ tmp137,
	strb	r5, [r4, #1]	@ tmp137, <variable>.is_valid
	cmp	r3, r5	@ <variable>.streamBuffer,
	strb	r5, [r4, #3]	@ tmp137, <variable>.nal_integ
	beq	.L1072	@,
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC39	@,
	ldr	r2, [r4, #8]	@, <variable>.streamBuffer
	movt	r1, #:upper16:.LC39	@,
	ldr	r3, [r4, #12]	@, <variable>.bitstream_length
	bl	dprint_vfmw	@
	str	r5, [r4, #12]	@ tmp137, <variable>.bitstream_length
	str	r5, [r4, #8]	@ tmp137, <variable>.streamBuffer
	str	r5, [r4, #24]	@ tmp137, <variable>.bitsoffset
.L1072:
	ldr	r0, [r4, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r0, #0	@ <variable>.streamBuffer,
	beq	.L1073	@,
	ldr	r1, [r4, #60]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC39	@,
	ldr	r2, [r4, #36]	@, <variable>.streamBuffer
	movt	r1, #:upper16:.LC39	@,
	ldr	r3, [r4, #40]	@, <variable>.bitstream_length
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp154,
	str	r1, [r4, #40]	@ tmp154, <variable>.bitstream_length
	str	r1, [r4, #36]	@ tmp154, <variable>.streamBuffer
	str	r1, [r4, #52]	@ tmp154, <variable>.bitsoffset
.L1073:
	mov	r2, #0	@ tmp157,
	str	r2, [r4, #68]	@ tmp157, <variable>.nal_segment
	strb	r2, [r4, #0]	@ tmp157, <variable>.nal_used_segment
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1075:
	mov	r0, r4	@, pNalu
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #3880	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
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
	add	r4, r0, #50688	@ ivtmp.3840, pH264Ctx,
	add	sl, r0, #51200	@ D.44373, pH264Ctx,
	add	r4, r4, #16	@ ivtmp.3840, ivtmp.3840,
	add	sl, sl, #48	@ D.44373, D.44373,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r8, #52840	@ tmp148,
	mov	r7, #0	@ tmp149,
.L1078:
	ldr	r1, [r4, #0]	@ D.32926, <variable>.pSliceNal
	add	r5, r4, #4	@ tmp150, ivtmp.3840,
	cmp	r1, #0	@ D.32926,
	beq	.L1077	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #0]	@ tmp149, <variable>.pSliceNal
.L1077:
	ldr	r1, [r4, #4]	@ D.32926, <variable>.pSliceNal
	cmp	r1, #0	@ D.32926,
	beq	.L1081	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #4]	@ tmp149, <variable>.pSliceNal
.L1081:
	add	r4, r5, #4	@ ivtmp.3840, tmp150,
	cmp	r4, sl	@ ivtmp.3840, D.44373
	bne	.L1078	@,
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
	beq	.L1099	@,
.L1092:
	mov	r3, #1	@ i,
	add	r2, r6, #96	@ ivtmp.3898, pH264Ctx,
	b	.L1089	@
.L1088:
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	beq	.L1100	@,
.L1094:
	add	r3, r5, #1	@ i, tmp148,
	add	r2, r4, #96	@ ivtmp.3898, tmp149,
	cmp	r3, #137	@ i,
	beq	.L1101	@,
.L1089:
	add	r4, r2, #96	@ tmp149, ivtmp.3898,
	ldrb	r2, [r2, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r5, r3, #1	@ tmp148, i,
	cmp	r2, #1	@ <variable>.is_valid,
	bne	.L1088	@,
	add	ip, r3, r3, asl #1	@, tmp142, i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	r1, r6, ip, asl #5	@, tmp144, pH264Ctx, tmp142,
	add	r1, r1, #376	@, tmp144,
	bl	ReleaseNAL	@
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	bne	.L1094	@,
.L1100:
	add	r3, r5, r5, asl #1	@, tmp166, tmp148, tmp148,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	lr, r6, r3, asl #5	@, tmp168, pH264Ctx, tmp166,
	add	r1, lr, #376	@, tmp168,
	bl	ReleaseNAL	@
	add	r3, r5, #1	@ i, tmp148,
	cmp	r3, #137	@ i,
	add	r2, r4, #96	@ ivtmp.3898, tmp149,
	bne	.L1089	@,
.L1101:
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1099:
	ldr	r0, [r0, r7]	@, <variable>.ChanID
	add	r1, r6, #376	@, pH264Ctx,
	bl	ReleaseNAL	@
	b	.L1092	@
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
	ldr	r1, [r0, #368]	@ D.32890, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ D.32890,
	beq	.L1103	@,
	movw	r2, #52840	@ tmp136,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp138,
	str	r3, [r4, #368]	@ tmp138, <variable>.pCurrNal
.L1103:
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
	movw	r1, #:lower16:.LC40	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movt	r1, #:upper16:.LC40	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	r3, #52796	@ tmp136,
	ldr	r1, [r4, r3]	@ <variable>.TotalSlice, <variable>.TotalSlice
	mov	r0, #0	@,
	add	r2, r1, #1	@ tmp139, <variable>.TotalSlice,
	str	r2, [r4, r3]	@ tmp139, <variable>.TotalSlice
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
	beq	.L1110	@,
	movcc	r8, #1	@ i_list_cnt,
	bcs	.L1146	@,
.L1113:
	add	r6, r3, #20480	@ ivtmp.3994, pH264Ctx,
	add	r7, r3, #26880	@ ivtmp.3997, pH264Ctx,
	mov	r9, #0	@ pRepairPic.4005,
	add	r6, r6, #244	@ ivtmp.3994, ivtmp.3994,
	add	r7, r7, #156	@ ivtmp.3997, ivtmp.3997,
	mov	r5, r9	@ i_list, pRepairPic.4005
	mov	fp, #1	@ tmp193,
	movw	sl, #50112	@ tmp194,
.L1127:
	ldr	r4, [r6, #0]	@ temp.4000, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.4000,
	beq	.L1114	@,
	ldr	r1, [r7, #0]	@ pRepairPic.4006, <variable>.pListX
	cmp	r1, #0	@ pRepairPic.4006,
	movne	ip, r1	@ pRepairPic, pRepairPic.4006
	bne	.L1116	@,
	add	ip, r5, r5, asl #5	@, tmp161, i_list, i_list,
	tst	r4, #1	@ temp.4000,
	mov	r0, r1	@ i, pRepairPic.4006
	add	r2, r3, ip, asl #2	@, tmp165, pH264Ctx, tmp161,
	add	ip, r2, #26880	@ ivtmp.3991, tmp165,
	add	r2, ip, #156	@ ivtmp.3991, ivtmp.3991,
	bne	.L1117	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	mov	r0, #1	@ i,
	cmp	ip, #0	@ pRepairPic,
	beq	.L1117	@,
	b	.L1116	@
.L1119:
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1116	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1116	@,
.L1117:
	add	r0, r0, #1	@ tmp204, i,
	cmp	r4, r0	@ temp.4000, tmp204
	add	r0, r0, #1	@ i, tmp204,
	bhi	.L1119	@,
	mov	ip, r9	@ pRepairPic, pRepairPic.4005
	mov	r2, #1	@ prephitmp.3961,
.L1118:
	cmp	ip, #0	@ pRepairPic,
	orreq	r2, r2, #1	@,, tmp170, prephitmp.3961
	cmp	r2, #0	@ tmp170,
	beq	.L1120	@,
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1144	@,
	ldr	r0, [r3, sl]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	ip, r0, #400	@ pRepairPic, <variable>.CurrPic.frame_store,
.L1120:
	add	r2, r5, r5, asl #5	@, tmp177, i_list, i_list,
	tst	r4, #1	@ temp.4000,
	mov	r0, #0	@ i.4001,
	add	r2, r3, r2, asl #2	@, tmp181, pH264Ctx, tmp177,
	add	r2, r2, #26880	@ ivtmp.3979, tmp181,
	add	r2, r2, #160	@ ivtmp.3979, ivtmp.3979,
	bne	.L1124	@,
	cmp	r1, #0	@ pRepairPic.4006,
	mov	r0, #1	@ i.4001,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.4000, i.4001
	add	r2, r2, #4	@ ivtmp.3979, ivtmp.3979,
	ldrhi	r1, [r2, #-4]	@ pRepairPic.4006, <variable>.pListX
	bhi	.L1124	@,
	b	.L1123	@
.L1133:
	mov	r2, r1	@ ivtmp.3979, tmp200
	add	r0, r0, #1	@ i.4001, tmp199,
	ldr	r1, [r2], #4	@ pRepairPic.4006, <variable>.pListX
.L1124:
	add	r0, r0, #1	@ tmp199, i.4001,
	cmp	r1, #0	@ pRepairPic.4006,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.4000, tmp199
	add	r1, r2, #4	@ tmp200, ivtmp.3979,
	bls	.L1123	@,
	ldr	r2, [r1, #-4]	@ pRepairPic.4006, <variable>.pListX
	cmp	r2, #0	@ pRepairPic.4006,
	streq	ip, [r1, #-4]	@ pRepairPic, <variable>.pListX
	b	.L1133	@
.L1114:
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1144	@,
	ldr	r2, [r3, sl]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, r9	@ pRepairPic, pRepairPic.4005
	str	fp, [r6, #0]	@ tmp193, <variable>.CurrSlice.listXsize
	add	r0, r2, #400	@ tmp187, <variable>.CurrPic.frame_store,
	str	r0, [r7, #0]	@ tmp187, <variable>.pListX
.L1123:
	add	r5, r5, #1	@ i_list, i_list,
	add	r6, r6, #4	@ ivtmp.3994, ivtmp.3994,
	cmp	r5, r8	@ i_list, i_list_cnt
	add	r7, r7, #132	@ ivtmp.3997, ivtmp.3997,
	bcs	.L1111	@,
	mov	r9, ip	@ pRepairPic.4005, pRepairPic
	b	.L1127	@
.L1116:
	mov	r2, #0	@ prephitmp.3961,
	b	.L1118	@
.L1146:
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L1111	@,
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.34943,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1111:
	mov	r0, #0	@ D.34943,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1144:
	mov	r0, r3	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.34943,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1110:
	mov	r8, #2	@ i_list_cnt,
	b	.L1113	@
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r3, #4096	@ <variable>.bitstream_length,
	bcs	.L1149	@,
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	mov	r5, #0	@ tmp162,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #368]	@ temp.4032, <variable>.pCurrNal
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	ldr	r6, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [ip, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	r3, [ip, #44]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	str	r6, [sp, #0]	@ <variable>.bitstream_length,
	ldr	lr, [ip, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	str	lr, [sp, #4]	@ <variable>.bitstream_length,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #368]	@ temp.4034, <variable>.pCurrNal
	ldr	r3, [r0, #12]	@ temp.4035, <variable>.bitstream_length
	ldr	r6, [r0, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	ldr	r1, [r0, #8]	@, <variable>.streamBuffer
	mov	r2, r3	@, temp.4035
	rsb	r0, r3, r6	@, temp.4035, <variable>.streamBuffer
	bl	memcpy	@
	ldr	ip, [r4, #368]	@ temp.4036, <variable>.pCurrNal
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	ldr	r2, [ip, #60]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r6, [ip, #32]	@ StreamId, <variable>.StreamID
	str	r2, [ip, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r3, #24]	@ tmp162, <variable>.bitsoffset
	ldr	r3, [r4, #368]	@ temp.4038, <variable>.pCurrNal
	ldr	r2, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	rsb	r2, r2, ip	@ tmp166, <variable>.bitstream_length, <variable>.streamBuffer
	str	r2, [r3, #8]	@ tmp166, <variable>.streamBuffer
	ldr	r3, [r4, #368]	@ temp.4043, <variable>.pCurrNal
	ldr	r2, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #44]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	rsb	r2, r2, ip	@ tmp169, <variable>.bitstream_length, <variable>.stream_phy_addr
	str	r2, [r3, #16]	@ tmp169, <variable>.stream_phy_addr
	ldr	r3, [r4, #368]	@ temp.4046, <variable>.pCurrNal
	ldr	ip, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r2, ip, r2	@ tmp172, <variable>.bitstream_length, <variable>.bitstream_length
	str	r2, [r3, #12]	@ tmp172, <variable>.bitstream_length
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	ip, #1	@ tmp174,
	str	ip, [r3, #68]	@ tmp174, <variable>.nal_segment
	ldr	r2, [r4, #368]	@ temp.4050, <variable>.pCurrNal
	ldr	r3, [r2, #12]	@, <variable>.bitstream_length
	ldr	r2, [r2, #16]	@, <variable>.stream_phy_addr
	bl	dprint_vfmw	@
	movw	r3, #52840	@ tmp178,
	mov	r1, r6	@, StreamId
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [ip, #36]	@ tmp162, <variable>.streamBuffer
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r2, #52]	@ tmp162, <variable>.bitsoffset
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r1, #40]	@ tmp162, <variable>.bitstream_length
.L1149:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
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
	ble	.L1152	@,
	movw	r5, #:lower16:.LANCHOR1	@ tmp192,
	movt	r5, #:upper16:.LANCHOR1	@ tmp192,
	mov	r7, r1	@ ivtmp.4106, len
	mov	r4, #0	@ zero_byte,
	mov	r9, r5	@ tmp193, tmp192
.L1156:
	cmp	r7, #64	@ ivtmp.4106,
	movcc	r6, r7	@ ThisRoundSize, ivtmp.4106
	movcs	r6, #64	@ ThisRoundSize,
	movw	r0, #:lower16:.LANCHOR1	@,
	rsb	ip, r6, r7	@ tmp160, ThisRoundSize, ivtmp.4106
	movt	r0, #:upper16:.LANCHOR1	@,
	mov	r2, r6	@, ThisRoundSize
	sub	r6, r6, #1	@ tmp167, ThisRoundSize,
	add	r1, sl, ip	@, ptr, tmp160
	bl	memcpy	@
	ldrb	r1, [r5, r6]	@ zero_extendqisi2	@ tmp168,
	add	r3, r5, r6	@ pLastByte, tmp192, tmp167
	cmp	r1, #0	@ tmp168,
	bne	.L1152	@,
	cmp	r3, r9	@ pLastByte, tmp193
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1153	@,
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ tmp171,
	rsb	r2, r3, r5	@ tmp195, pLastByte, tmp192
	cmp	r1, #0	@ tmp171,
	mvn	lr, r2	@ tmp194, tmp195
	and	r2, lr, #1	@ tmp196, tmp194,
	bne	.L1152	@,
	sub	r3, r3, #1	@ ivtmp.4097, pLastByte,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4097, tmp192
	beq	.L1153	@,
	cmp	r2, #0	@ tmp196,
	beq	.L1154	@,
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ tmp203,
	cmp	r1, #0	@ tmp203,
	bne	.L1152	@,
	sub	r3, r3, #1	@ ivtmp.4097, ivtmp.4097,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4097, tmp192
	bne	.L1154	@,
	b	.L1153	@
.L1155:
	ldrb	ip, [r2, #-1]	@ zero_extendqisi2	@ tmp201,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	ip, #0	@ tmp201,
	bne	.L1152	@,
	cmp	r3, r5	@ ivtmp.4097, tmp192
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1153	@,
.L1154:
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2	@ tmp202,
	sub	r2, r3, #1	@ tmp198, ivtmp.4097,
	sub	r3, r2, #1	@ ivtmp.4097, tmp198,
	cmp	lr, #0	@ tmp202,
	beq	.L1155	@,
.L1152:
	cmp	r4, fp	@ zero_byte, len
	bge	.L1174	@,
.L1157:
	sub	r2, fp, #1	@ tmp173, len,
	rsb	r3, r4, r2	@ tmp172, zero_byte, tmp173
	ldrb	r3, [sl, r3]	@ zero_extendqisi2	@ Byte,
	tst	r3, #1	@ Byte,
	bne	.L1174	@,
	mov	r3, r3, lsr #1	@ Byte.4110, Byte,
	tst	r3, #1	@ Byte.4110,
	movne	r0, #1	@ zero_bit,
	bne	.L1158	@,
	mov	r3, r3, lsr #1	@ Byte.4113, Byte.4110,
	tst	r3, #1	@ Byte.4113,
	movne	r0, #2	@ zero_bit,
	bne	.L1158	@,
	mov	r3, r3, lsr #1	@ Byte.4116, Byte.4113,
	tst	r3, #1	@ Byte.4116,
	movne	r0, #3	@ zero_bit,
	bne	.L1158	@,
	mov	r3, r3, lsr #1	@ Byte.4119, Byte.4116,
	tst	r3, #1	@ Byte.4119,
	movne	r0, #4	@ zero_bit,
	bne	.L1158	@,
	mov	r3, r3, lsr #1	@ Byte.4122, Byte.4119,
	tst	r3, #1	@ Byte.4122,
	movne	r0, #5	@ zero_bit,
	bne	.L1158	@,
	mov	r3, r3, lsr #1	@ Byte.4125, Byte.4122,
	tst	r3, #1	@ Byte.4125,
	movne	r0, #6	@ zero_bit,
	bne	.L1158	@,
	movs	r3, r3, lsr #1	@, Byte.4125,
	movne	r0, #7	@, zero_bit,
	moveq	r0, #8	@, zero_bit,
.L1158:
	add	r0, r0, r4, asl #3	@,, zero_bit, zero_byte,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1153:
	sub	r8, r8, #1	@ r, r,
	sub	r7, r7, #64	@ ivtmp.4106, ivtmp.4106,
	cmp	r8, #0	@ r,
	bgt	.L1156	@,
	cmp	r4, fp	@ zero_byte, len
	blt	.L1157	@,
.L1174:
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
	ldr	r3, [r0, #368]	@ prephitmp.4153, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r2, #1	@ <variable>.nal_segment,
	bls	.L1176	@,
	ldr	r1, [r3, #40]	@, <variable>.bitstream_length
	ldr	r0, [r3, #36]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4153, <variable>.pCurrNal
	ldr	r1, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r0, r1, asl #3	@ zero_bit, <variable>.bitstream_length,
	bcs	.L1181	@,
	cmn	r0, #1	@ zero_bit,
	beq	.L1176	@,
	add	r0, r0, #1	@ tmp151, zero_bit,
	str	r0, [r3, #72]	@ tmp151, <variable>.nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ temp.4168, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	ldmlsfd	sp!, {r4, pc}	@
.L1182:
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
.L1181:
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
	ldr	r3, [r4, #368]	@ prephitmp.4153, <variable>.pCurrNal
.L1176:
	ldr	r1, [r3, #12]	@, <variable>.bitstream_length
	ldr	r0, [r3, #8]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4153, <variable>.pCurrNal
	add	r0, r0, #1	@ tmp151, zero_bit,
	str	r0, [r3, #72]	@ tmp151, <variable>.nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ temp.4168, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bhi	.L1182	@,
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
	add	r1, r1, #3	@ pu8.4200, pu8,
	and	r0, r2, #31	@ tmp141, tmp140,
	sub	r3, r0, #1	@ tmp142, tmp141,
	cmp	r3, #7	@ tmp142,
	ldrls	pc, [pc, r3, asl #2]	@ tmp142
	b	.L1184	@
.L1187:
	.word	.L1185
	.word	.L1184
	.word	.L1184
	.word	.L1184
	.word	.L1185
	.word	.L1184
	.word	.L1186
	.word	.L1186
.L1186:
	ldr	r0, [r4, #0]	@ tmp157,* pNewPicDetector
	mov	r3, #1	@ tmp158,
	str	r3, [r4, #0]	@ tmp158,* pNewPicDetector
	cmp	r0, #0	@ tmp157,
	mvnne	r0, #0	@, ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1185:
	ldr	r5, [r4, #0]	@ tmp143,* pNewPicDetector
	cmp	r5, #0	@ tmp143,
	beq	.L1194	@,
.L1189:
	mvn	r0, #0	@ ret,
.L1190:
	mov	r1, #0	@ tmp156,
	str	r1, [r4, #0]	@ tmp156,* pNewPicDetector
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1184:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1194:
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
	bhi	.L1189	@,
	mov	ip, r0, asl #1	@ tmp153, zeros,
	rsb	r0, ip, #31	@ tmp154, tmp153,
	mov	r6, r6, lsr r0	@ tmp155, tmpbits,
	cmp	r6, #1	@ tmp155,
	moveq	r0, r5	@ ret, tmp143
	bne	.L1189	@,
	b	.L1190	@
	.fnend
	.size	H264_IsNewPicNal, .-H264_IsNewPicNal
	.align	2
	.global	WritePicMsg
	.type	WritePicMsg, %function
WritePicMsg:
	.fnstart
.LFB1682:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r7, #50128	@ tmp161,
	movw	r5, #49707	@ tmp163,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r0, r7]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	sl, #50180	@ tmp167,
	ldrb	r3, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r0, #49896	@ tmp165,
	ldr	r6, [r4, r0]	@ <variable>.CurrPic.fs_image.image_id, <variable>.CurrPic.fs_image.image_id
	.pad #52
	sub	sp, sp, #52	@,,
	ldr	r8, [r4, sl]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movw	fp, #49728	@ tmp172,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	stmia	sp, {r6, r8}	@ phole stm
	bl	dprint_vfmw	@
	ldrd	r0, [r4, fp]	@, pH264Ctx, tmp172
	movw	r9, #52760	@ tmp175,
	movw	r2, #49892	@ tmp178,
	movw	ip, #13607	@ tmp188,
	movw	r8, #50164	@ tmp191,
	movw	r3, #50168	@ tmp194,
	strd	r0, [sp, #16]	@,,
	movw	r6, #50112	@ tmp229,
	ldr	fp, [r4, r9]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	r9, [r4, r2]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.CurrPic.fs_image.image_stride
	movw	r2, #13606	@ tmp201,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	ldr	ip, [r4, r8]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	ldrb	r8, [r4, r2]	@ zero_extendqisi2	@, <variable>.CurrSPS.frame_mbs_only_flag
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.frame_height_in_mb, <variable>.CurrPic.frame_height_in_mb
	movw	r3, #17648	@ tmp205,
	str	r8, [sp, #12]	@, %sfp
	movw	r8, #17588	@ tmp208,
	ldr	r2, [r4, r3]	@, <variable>.CurrPPS.transform_8x8_mode_flag
	str	r2, [sp, #24]	@, %sfp
	mov	r2, #14336	@ tmp211,
	ldrb	r3, [r4, r8]	@ zero_extendqisi2	@, <variable>.CurrPPS.entropy_coding_mode_flag
	str	r3, [sp, #28]	@, %sfp
	movw	r3, #17592	@ tmp215,
	ldr	r8, [r4, r2]	@, <variable>.CurrSPS.chroma_format_idc
	str	r8, [sp, #32]	@, %sfp
	movw	r8, #19840	@ tmp218,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@, <variable>.CurrPPS.constrained_intra_pred_flag
	str	r2, [sp, #36]	@, %sfp
	movw	r2, #19828	@ tmp221,
	ldr	r3, [r4, r8]	@, <variable>.CurrPOC.ThisPOC
	str	r3, [sp, #40]	@, %sfp
	ldr	r8, [r4, r2]	@, <variable>.CurrPOC.toppoc
	movw	r2, #17544	@ tmp197,
	str	r8, [sp, #44]	@, %sfp
	ldr	r8, [r4, r7]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	r7, #19832	@ tmp224,
	ldr	r3, [r4, r7]	@, <variable>.CurrPOC.bottompoc
	movw	r7, #51376	@ tmp171,
	ldrb	r5, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	str	r3, [sp, #8]	@, %sfp
	ldr	r1, [r4, r2]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	ldrd	r2, [sp, #16]	@,,
	add	r1, r1, #1	@ tmp199, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	strd	r2, [r4, r7]	@, pH264Ctx, tmp171
	movw	r7, #52492	@ tmp174,
	str	fp, [r4, r7]	@ <variable>.DecSlicePara, <variable>.DecPicPara.pFirstSlice
	movw	r7, #52280	@ tmp177,
	str	r9, [r4, r7]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.DecPicPara.imgstride
	movw	r9, #52764	@ tmp169,
	mov	fp, #0	@ tmp170,
	str	fp, [r4, r9]	@ tmp170, <variable>.SliceParaNum
	movw	r9, #51384	@ tmp180,
	movw	r3, #51404	@ tmp204,
	str	r8, [r4, r9]	@ <variable>.CurrPic.nal_ref_idc, <variable>.DecPicPara.nal_ref_idc
	movw	r8, #51368	@ tmp183,
	strb	r5, [r4, r8]	@ <variable>.CurrPic.structure, <variable>.DecPicPara.pic_structure
	movw	r5, #51400	@ tmp187,
	str	lr, [r4, r5]	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.DecPicPara.mb_adaptive_frame_field_flag
	movw	lr, #51388	@ tmp190,
	str	ip, [r4, lr]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.DecPicPara.pic_height_in_mb
	movw	r5, #51396	@ tmp196,
	movw	ip, #51392	@ tmp193,
	str	r1, [r4, r5]	@ tmp199, <variable>.DecPicPara.pic_width_in_mb
	str	r0, [r4, ip]	@ <variable>.CurrPic.frame_height_in_mb, <variable>.DecPicPara.frame_height_in_mb
	movw	r0, #51371	@ tmp200,
	ldr	r1, [sp, #12]	@, %sfp
	movw	ip, #51408	@ tmp207,
	movw	r2, #51369	@ tmp210,
	movw	r7, #52840	@ tmp226,
	strb	r1, [r4, r0]	@, <variable>.DecPicPara.frame_mbs_only_flag
	movw	r0, #51412	@ tmp214,
	ldr	lr, [sp, #24]	@, %sfp
	str	lr, [r4, r3]	@, <variable>.DecPicPara.transform_8x8_mode_flag
	movw	lr, #51416	@ tmp217,
	ldr	r5, [sp, #28]	@, %sfp
	str	r5, [r4, ip]	@, <variable>.DecPicPara.entropy_coding_mode_flag
	ldr	r1, [sp, #32]	@, %sfp
	strb	r1, [r4, r2]	@, <variable>.DecPicPara.chroma_format_idc
	movw	r1, #51420	@ tmp220,
	ldr	r3, [sp, #36]	@, %sfp
	movw	r2, #51424	@ tmp223,
	str	r3, [r4, r0]	@, <variable>.DecPicPara.constrained_intra_pred_flag
	ldr	ip, [sp, #40]	@, %sfp
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [r4, lr]	@, <variable>.DecPicPara.ThisPoc
	ldr	r5, [sp, #44]	@, %sfp
	str	r5, [r4, r1]	@, <variable>.DecPicPara.TopPoc
	ldr	r0, [sp, #8]	@, %sfp
	str	r0, [r4, r2]	@, <variable>.DecPicPara.BottomPoc
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pstLogicFs,
	beq	.L1237	@,
	ldr	r2, [r5, #408]	@ D.36915, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36915,
	ldreq	r3, [r5, #412]	@ prephitmp.4220, <variable>.pstDispOutFs
	beq	.L1199	@,
	ldr	r3, [r5, #412]	@ prephitmp.4220, <variable>.pstDispOutFs
	cmp	r3, #0	@ prephitmp.4220,
	beq	.L1199	@,
	add	r8, r4, #51968	@ tmp238, pH264Ctx,
	add	r6, r4, #51712	@, pH264Ctx,
	add	fp, r4, #51456	@ tmp349, pH264Ctx,
	add	r3, r6, #220	@,,
	add	r1, r8, #220	@, tmp238,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r2, fp, #220	@, tmp349,
	add	r6, r4, #52224	@ tmp249, pH264Ctx,
	bl	FSP_GetDecFsAddrTab	@
	ldr	ip, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	add	r2, r8, #224	@, tmp238,
	movw	r3, #51660	@ tmp243,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r1, r6, #48	@, tmp249,
	ldr	r8, [ip, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	str	r8, [r4, r3]	@ <variable>.PhyFsID, <variable>.DecPicPara.CurrPicImgIdc
	bl	FSP_GetPmvAddrTab	@
	ldr	r8, [r4, sl]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movw	ip, #51668	@ tmp252,
	movw	r1, #52276	@ tmp255,
	movw	r3, #26900	@ tmp264,
	movw	r2, #51664	@ tmp257,
	str	r8, [r4, ip]	@ <variable>.CurrPic.pmv_address_idc, <variable>.DecPicPara.CurrPicPmvIdc
	ldr	sl, [r5, #424]	@ <variable>.HalfPmvOffset, <variable>.HalfPmvOffset
	ldr	r8, [r4, r3]	@ <variable>.APC.size, <variable>.APC.size
	str	sl, [r4, r1]	@ <variable>.HalfPmvOffset, <variable>.DecPicPara.half_pmvblk_offset
	cmp	r8, #0	@ <variable>.APC.size,
	ldr	r0, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r1, #51672	@ tmp260,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r4, r2]	@ <variable>.PhyAddr, <variable>.DecPicPara.CurrPicImg2DAddr
	ldr	r3, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r5, #52484	@ tmp263,
	ldr	sl, [r3, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r8, [r4, r5]	@ <variable>.APC.size, <variable>.DecPicPara.ApcSize
	str	sl, [r4, r1]	@ <variable>.ChromOffset, <variable>.DecPicPara.uv_offset
	beq	.L1201	@,
	add	r5, r4, #26624	@ tmp267, pH264Ctx,
	sub	r7, r8, #1	@ tmp365, <variable>.APC.size,
	mov	ip, #1	@ i,
	and	r9, r7, ip	@ tmp367, tmp365,
	mov	r0, r5	@ ivtmp.4298, tmp267
	cmp	ip, r8	@ i, <variable>.APC.size
	ldr	sl, [r0, #84]!	@ tmp269, <variable>.APC.idc
	mov	lr, r6	@ ivtmp.4301, tmp249
	add	r2, r5, #88	@ ivtmp.4298, tmp267,
	add	r3, r6, #72	@ ivtmp.4301, tmp249,
	ldr	r7, [r0, #128]	@ tmp271, <variable>.APC.poc
	ldr	r0, [r0, #64]	@ tmp270, <variable>.APC.poc
	str	sl, [lr, #68]!	@ tmp269, <variable>.DecPicPara.Apc2Idc
	str	r7, [lr, #128]	@ tmp271, <variable>.DecPicPara.Apc2Poc
	str	r0, [lr, #64]	@ tmp270, <variable>.DecPicPara.Apc2Poc
	bcs	.L1201	@,
	cmp	r9, #0	@ tmp367,
	beq	.L1236	@,
	ldr	r7, [r2, #128]	@ tmp444, <variable>.APC.poc
	mov	ip, #2	@ i,
	ldr	r0, [r2, #0]	@ tmp442, <variable>.APC.idc
	cmp	ip, r8	@ i, <variable>.APC.size
	ldr	sl, [r2, #64]	@ tmp443, <variable>.APC.poc
	add	r2, r5, #92	@ ivtmp.4298, tmp267,
	str	r7, [r3, #128]	@ tmp444, <variable>.DecPicPara.Apc2Poc
	str	r0, [r3, #0]	@ tmp442, <variable>.DecPicPara.Apc2Idc
	str	sl, [r3, #64]	@ tmp443, <variable>.DecPicPara.Apc2Poc
	add	r3, r6, #76	@ ivtmp.4301, tmp249,
	bcs	.L1201	@,
.L1236:
	mov	r9, r4	@ pH264Ctx, pH264Ctx
.L1202:
	add	sl, r2, #4	@ tmp369, ivtmp.4298,
	ldmia	r2, {r5, lr}	@ phole ldm
	add	ip, ip, #2	@ i, i,
	ldr	r7, [r2, #64]	@ tmp375, <variable>.APC.poc
	add	r1, r3, #4	@ tmp370, ivtmp.4301,
	ldr	r6, [r2, #128]	@ tmp376, <variable>.APC.poc
	cmp	ip, r8	@ i, <variable>.APC.size
	ldr	r4, [sl, #64]	@ tmp381, <variable>.APC.poc
	add	r2, sl, #4	@ ivtmp.4298, tmp369,
	ldr	r0, [sl, #128]	@ tmp382, <variable>.APC.poc
	str	r7, [r3, #64]	@ tmp375, <variable>.DecPicPara.Apc2Poc
	str	r6, [r3, #128]	@ tmp376, <variable>.DecPicPara.Apc2Poc
	stmia	r3, {r5, lr}	@ phole stm
	add	r3, r1, #4	@ ivtmp.4301, tmp370,
	str	r4, [r1, #64]	@ tmp381, <variable>.DecPicPara.Apc2Poc
	str	r0, [r1, #128]	@ tmp382, <variable>.DecPicPara.Apc2Poc
	bcc	.L1202	@,
	mov	r4, r9	@ pH264Ctx, pH264Ctx
.L1201:
	movw	r3, #13613	@ tmp272,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag, <variable>.CurrSPS.seq_scaling_matrix_present_flag
	cmp	r2, #0	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag,
	bne	.L1203	@,
	movw	ip, #17606	@ tmp274,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ prephitmp.4223, <variable>.CurrPPS.pic_scaling_matrix_present_flag
	cmp	r3, #0	@ prephitmp.4223,
	bne	.L1204	@,
	add	r0, r4, #51200	@ ivtmp.4261, pH264Ctx,
	movw	r1, #:lower16:.LANCHOR2	@ tmp348,
	add	r0, r0, #228	@ ivtmp.4261, ivtmp.4261,
	movt	r1, #:upper16:.LANCHOR2	@ tmp348,
.L1205:
	and	r5, r3, #3	@ tmp277, i.4315,
	add	r3, r3, #1	@ tmp355, i.4315,
	and	r2, r3, #3	@ tmp385, tmp355,
	mov	lr, r0	@ tmp356, ivtmp.4261
	ldr	r5, [r1, r5, asl #2]	@ tmp278, quant_org
	add	r3, r3, #1	@ i.4315, tmp355,
	cmp	r3, #24	@ i.4315,
	str	r5, [lr], #4	@ tmp278, <variable>.DecPicPara.Qmatrix
	ldr	sl, [r1, r2, asl #2]	@ tmp386, quant_org
	str	sl, [r0, #4]	@ tmp386, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4261, tmp356,
	bne	.L1205	@,
	add	fp, fp, #68	@ ivtmp.4253, tmp349,
	mov	r3, #0	@ i.4316,
.L1206:
	and	ip, r3, #15	@ tmp281, i.4316,
	add	r3, r3, #1	@ tmp353, i.4316,
	and	r0, r3, #15	@ tmp389, tmp353,
	mov	lr, fp	@ tmp354, ivtmp.4253
	add	r2, r1, ip, asl #2	@, tmp284, tmp348, tmp281,
	add	r3, r3, #1	@ i.4316, tmp353,
	add	r0, r1, r0, asl #2	@, tmp391, tmp348, tmp389,
	cmp	r3, #32	@ i.4316,
	ldr	sl, [r2, #16]	@ tmp286, quant8_org
	str	sl, [lr], #4	@ tmp286, <variable>.DecPicPara.Qmatrix
	ldr	ip, [r0, #16]	@ tmp393, quant8_org
	str	ip, [fp, #4]	@ tmp393, <variable>.DecPicPara.Qmatrix
	add	fp, lr, #4	@ ivtmp.4253, tmp354,
	bne	.L1206	@,
.L1207:
	movw	sl, #26900	@ tmp336,
	ldr	ip, [r4, sl]	@ <variable>.APC.size, <variable>.APC.size
	cmp	ip, #0	@ <variable>.APC.size,
	beq	.L1213	@,
	add	r6, r4, #26624	@ ivtmp.4243, pH264Ctx,
	add	r8, r4, #52480	@ ivtmp.4246, pH264Ctx,
	add	r6, r6, #84	@ ivtmp.4243, ivtmp.4243,
	add	r5, r8, #144	@ ivtmp.4246, ivtmp.4246,
	mov	r7, #0	@ i.4331,
	movw	r8, #52840	@ tmp350,
.L1214:
	ldr	r2, [r6, #0]	@, <variable>.APC.idc
	mov	r1, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r7, r7, #1	@ i.4331, i.4331,
	bl	FSP_GetStoreType	@
	ldr	r3, [r4, sl]	@ <variable>.APC.size, <variable>.APC.size
	ldr	r2, [r6], #4	@ tmp344, <variable>.APC.idc
	str	r2, [r5, #64]	@ tmp344, <variable>.DecPicPara.RefPicFsId
	subs	r1, r0, #0	@ tmp343,,
	movne	r1, #1	@ tmp343
	cmp	r3, r7	@ <variable>.APC.size, i.4331
	str	r1, [r5, #0]	@ tmp343, <variable>.DecPicPara.RefPicType
	add	r5, r5, #4	@ ivtmp.4246, ivtmp.4246,
	bhi	.L1214	@,
.L1213:
	mov	r0, #0	@ D.36912,
.L1197:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1203:
	movw	r1, #17606	@ tmp287,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.4223, <variable>.CurrPPS.pic_scaling_matrix_present_flag
.L1204:
	cmp	r3, #1	@ prephitmp.4223,
	addne	r0, r4, #51200	@ ivtmp.4293, pH264Ctx,
	movne	r3, #0	@ i.4323,
	addne	r0, r0, #228	@ ivtmp.4293, ivtmp.4293,
	beq	.L1238	@,
.L1211:
	add	sl, r3, #1	@ tmp363, i.4323,
	add	r1, r3, #4064	@ tmp317, i.4323,
	add	r3, sl, #4064	@ tmp425, tmp363,
	add	r5, r1, #2	@ tmp317, tmp317,
	add	r2, r3, #2	@ tmp425, tmp425,
	add	r3, sl, #1	@ i.4323, tmp363,
	add	lr, r4, r5, asl #2	@, tmp321, pH264Ctx, tmp317,
	cmp	r3, #24	@ i.4323,
	add	r5, r4, r2, asl #2	@, tmp427, pH264Ctx, tmp425,
	mov	sl, r0	@ tmp364, ivtmp.4293
	ldr	ip, [lr, #4]	@ tmp323, <variable>.CurrSPS.qmatrix4x4
	ldr	r1, [r5, #4]	@ tmp429, <variable>.CurrSPS.qmatrix4x4
	str	ip, [sl], #4	@ tmp323, <variable>.DecPicPara.Qmatrix
	str	r1, [r0, #4]	@ tmp429, <variable>.DecPicPara.Qmatrix
	add	r0, sl, #4	@ ivtmp.4293, tmp364,
	bne	.L1211	@,
	add	fp, fp, #68	@ ivtmp.4285, tmp349,
	mov	r3, #0	@ i.4326,
.L1212:
	add	r0, r3, #1	@ tmp361, i.4326,
	add	r2, r3, #4080	@ tmp329, i.4326,
	add	r3, r0, #4080	@ tmp437, tmp361,
	add	r1, r2, #10	@ tmp329, tmp329,
	add	lr, r3, #10	@ tmp437, tmp437,
	add	r3, r0, #1	@ i.4326, tmp361,
	add	sl, r4, r1, asl #2	@, tmp333, pH264Ctx, tmp329,
	cmp	r3, #32	@ i.4326,
	add	ip, r4, lr, asl #2	@, tmp439, pH264Ctx, tmp437,
	mov	lr, fp	@ tmp362, ivtmp.4285
	ldr	r0, [sl, #4]	@ tmp335, <variable>.CurrSPS.qmatrix8x8
	ldr	r2, [ip, #4]	@ tmp441, <variable>.CurrSPS.qmatrix8x8
	str	r0, [lr], #4	@ tmp335, <variable>.DecPicPara.Qmatrix
	str	r2, [fp, #4]	@ tmp441, <variable>.DecPicPara.Qmatrix
	add	fp, lr, #4	@ ivtmp.4285, tmp362,
	bne	.L1212	@,
	b	.L1207	@
.L1238:
	add	r5, r4, #51200	@ ivtmp.4277, pH264Ctx,
	mov	r3, #0	@ i.4318,
	add	r0, r5, #228	@ ivtmp.4277, ivtmp.4277,
.L1209:
	add	r5, r3, #1	@ tmp359, i.4318,
	add	sl, r3, #4864	@ tmp293, i.4318,
	add	r3, r5, #4864	@ tmp401, tmp359,
	add	r1, sl, #28	@ tmp293, tmp293,
	add	lr, r3, #28	@ tmp401, tmp401,
	add	r3, r5, #1	@ i.4318, tmp359,
	add	ip, r4, r1, asl #2	@, tmp297, pH264Ctx, tmp293,
	cmp	r3, #24	@ i.4318,
	add	r5, r4, lr, asl #2	@, tmp403, pH264Ctx, tmp401,
	mov	lr, r0	@ tmp360, ivtmp.4277
	ldr	r2, [ip, #4]	@ tmp299, <variable>.CurrPPS.qmatrix4x4
	ldr	sl, [r5, #4]	@ tmp405, <variable>.CurrPPS.qmatrix4x4
	str	r2, [lr], #4	@ tmp299, <variable>.DecPicPara.Qmatrix
	str	sl, [r0, #4]	@ tmp405, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4277, tmp360,
	bne	.L1209	@,
	add	fp, fp, #68	@ ivtmp.4269, tmp349,
	mov	r3, #0	@ i.4320,
.L1210:
	add	r0, r3, #1	@ tmp357, i.4320,
	add	r2, r3, #4864	@ tmp305, i.4320,
	add	r3, r0, #4864	@ tmp413, tmp357,
	add	lr, r2, #52	@ tmp305, tmp305,
	add	sl, r3, #52	@ tmp413, tmp413,
	add	r3, r0, #1	@ i.4320, tmp357,
	add	r1, r4, lr, asl #2	@, tmp309, pH264Ctx, tmp305,
	cmp	r3, #32	@ i.4320,
	add	ip, r4, sl, asl #2	@, tmp415, pH264Ctx, tmp413,
	mov	r2, fp	@ tmp358, ivtmp.4269
	ldr	r0, [r1, #4]	@ tmp311, <variable>.CurrPPS.qmatrix8x8
	ldr	lr, [ip, #4]	@ tmp417, <variable>.CurrPPS.qmatrix8x8
	str	r0, [r2], #4	@ tmp311, <variable>.DecPicPara.Qmatrix
	str	lr, [fp, #4]	@ tmp417, <variable>.DecPicPara.Qmatrix
	add	fp, r2, #4	@ ivtmp.4269, tmp358,
	bne	.L1210	@,
	b	.L1207	@
.L1199:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36912,
	b	.L1197	@
.L1237:
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	ldr	r2, [lr, #508]	@, <variable>.logic_fs_id
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36912,
	b	.L1197	@
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
	bne	.L1240	@,
	movw	r0, #49707	@ tmp221,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r5, #0	@ <variable>.CurrPic.structure,
	beq	.L1241	@,
	movw	lr, #26632	@ tmp223,
	ldr	r5, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1243	@,
	add	r7, r4, #26368	@ ivtmp.4412, pH264Ctx,
	mov	r5, r2	@ list0idx.4482, <variable>.CurrSlice.slice_type
	add	r3, r7, #128	@ ivtmp.4412, ivtmp.4412,
.L1254:
	ldr	r6, [r3, #0]	@ temp.4488, <variable>.DPB.fs_ref
	add	r1, sp, #208	@,,
	add	ip, r1, r5, asl #2	@, tmp263,, list0idx.4482,
	add	r2, r2, #1	@ i.4490, i.4490,
	add	r3, r3, #4	@ ivtmp.4412, ivtmp.4412,
	ldrb	r0, [r6, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	strne	r6, [ip, #-64]	@ temp.4488, fs_list0
	ldr	r8, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	addne	r5, r5, #1	@ list0idx.4482, list0idx.4482,
	cmp	r8, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4490
	bhi	.L1254	@,
.L1243:
	add	r8, sp, #144	@ tmp267,,
	mov	r1, r5	@, list0idx.4482
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_frame_num_desc	@,
	mov	r0, r8	@, tmp267
	movt	r3, #:upper16:compare_fs_by_frame_num_desc	@,
	bl	qsort	@
	movw	r7, #49707	@ tmp273,
	add	r2, r4, #26880	@ D.35591, pH264Ctx,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	add	r7, r2, #156	@ D.35591, D.35591,
	movw	r3, #20724	@ tmp269,
	mov	r6, #0	@ tmp270,
	mov	r1, r8	@, tmp267
	str	r6, [r4, r3]	@ tmp270, <variable>.CurrSlice.listXsize
	mov	r2, r5	@, list0idx.4482
	mov	r3, r7	@, D.35591
	add	r5, r4, #20480	@ D.35592, pH264Ctx,
	add	r8, r5, #244	@ D.35592, D.35592,
	str	r6, [sp, #4]	@ tmp270,
	str	r8, [sp, #0]	@ D.35592,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #26636	@ tmp277,
	ldr	r5, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, r6	@ <variable>.DPB.ltref_frames_in_buffer,
	addeq	r6, sp, #16	@ tmp519,,
	beq	.L1256	@,
	mov	r3, r6	@ ivtmp.4406, tmp270
	add	r6, sp, #16	@ tmp519,,
	mov	r5, r3	@ listltidx, ivtmp.4406
.L1257:
	add	r2, r4, r3	@ tmp280, pH264Ctx, ivtmp.4406
	ldr	r1, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	ip, r2, #26368	@ tmp282, tmp280,
	add	r5, r5, #1	@ listltidx, listltidx,
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, listltidx
	ldr	lr, [ip, #192]	@ tmp283, <variable>.DPB.fs_ltref
	str	lr, [r6, r3]	@ tmp283, fs_listlt
	add	r3, r3, #4	@ ivtmp.4406, ivtmp.4406,
	bhi	.L1257	@,
.L1256:
	mov	r0, r6	@, tmp519
	mov	r1, r5	@, listltidx
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	bl	qsort	@
	movw	r3, #49707	@ tmp288,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp519
	mov	r2, r5	@, listltidx
	mov	r3, r7	@, D.35591
	mov	ip, #1	@ tmp291,
	stmia	sp, {r8, ip}	@ phole stm
	bl	GenPiclistfromFrmlist	@
.L1252:
	movw	lr, #20724	@ tmp294,
	mov	r2, #0	@ tmp293,
	ldr	r1, [r4, lr]	@ list0idx.4481, <variable>.CurrSlice.listXsize
	movw	r0, #20728	@ tmp292,
	str	r2, [r4, r0]	@ tmp293, <variable>.CurrSlice.listXsize
	cmp	r1, r2	@ list0idx.4481,
	bne	.L1258	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1259	@,
	movw	r3, #49707	@ tmp297,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ temp.4497, <variable>.CurrPic.structure
	cmp	r3, r2	@ temp.4497,
	beq	.L1423	@,
	movw	r2, #50112	@ tmp303,
	cmp	r3, #1	@ temp.4497,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r3, #27036	@ tmp306,
	addeq	ip, ip, #436	@ tmp305, <variable>.CurrPic.frame_store,
	addne	ip, ip, #472	@ tmp309, <variable>.CurrPic.frame_store,
	str	ip, [r4, r3]	@ tmp309, <variable>.pListX
.L1261:
	movw	r0, #20724	@ tmp310,
	mov	r1, #1	@ tmp311,
	str	r1, [r4, r0]	@ tmp311, <variable>.CurrSlice.listXsize
.L1258:
	mov	r0, #20736	@ tmp481,
	movw	ip, #20740	@ tmp485,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	movw	r0, #20728	@ tmp487,
	ldr	r2, [r4, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #1	@ tmp482, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	ldr	ip, [r4, r0]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r3	@ list0idx.4481, tmp482
	movcc	r3, r1	@ i.4506, list0idx.4481
	add	r2, r2, #1	@ prephitmp.4359, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r2, ip	@ prephitmp.4359, <variable>.CurrSlice.listXsize
	movcs	r2, ip	@ prephitmp.4359, <variable>.CurrSlice.listXsize
	cmp	r3, #32	@ i.4506,
	movw	r1, #20724	@ tmp484,
	str	r3, [r4, r1]	@ i.4506, <variable>.CurrSlice.listXsize
	str	r2, [r4, r0]	@ prephitmp.4359, <variable>.CurrSlice.listXsize
	bls	.L1303	@,
	b	.L1304	@
.L1240:
	movw	sl, #49707	@ tmp313,
	ldrb	r7, [r0, sl]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r7, #0	@ <variable>.CurrPic.structure,
	beq	.L1264	@,
	movw	ip, #26632	@ tmp315,
	ldr	r5, [r0, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1266	@,
	add	fp, r0, #26368	@ ivtmp.4478, pH264Ctx,
	mov	r5, #0	@ list0idx.4485,
	add	r3, fp, #128	@ ivtmp.4478, ivtmp.4478,
	mov	r2, r5	@ i.4525, list0idx.4485
	movw	r7, #50132	@ tmp533,
.L1287:
	ldr	r1, [r3, #0]	@ temp.4524, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4525, i.4525,
	add	r3, r3, #4	@ ivtmp.4478, ivtmp.4478,
	ldrb	sl, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	sl, #0	@ <variable>.is_used,
	beq	.L1286	@,
	ldr	r9, [r1, #524]	@ <variable>.poc, <variable>.poc
	add	r0, sp, #208	@,,
	ldr	lr, [r4, r7]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r6, r0, r5, asl #2	@, tmp407,, list0idx.4485,
	cmp	lr, r9	@ <variable>.CurrPic.thispoc, <variable>.poc
	strge	r1, [r6, #-64]	@ temp.4524, fs_list0
	addge	r5, r5, #1	@ list0idx.4485, list0idx.4485,
.L1286:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4525
	bhi	.L1287	@,
.L1266:
	add	r7, sp, #144	@ tmp518,,
	mov	r1, r5	@, list0idx.4485
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_desc	@,
	mov	r0, r7	@, tmp518
	movt	r3, #:upper16:compare_fs_by_poc_desc	@,
	bl	qsort	@
	movw	ip, #26632	@ tmp413,
	ldr	r9, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r9, #0	@ <variable>.DPB.ref_frames_in_buffer,
	moveq	r6, r5	@ list0idx.4486, list0idx.4485
	beq	.L1289	@,
	add	r2, r4, #26368	@ ivtmp.4473, pH264Ctx,
	mov	r6, r5	@ list0idx.4486, list0idx.4485
	add	r3, r2, #128	@ ivtmp.4473, ivtmp.4473,
	movw	sl, #50132	@ tmp531,
	mov	r2, #0	@ i.4531,
.L1291:
	ldr	r1, [r3, #0]	@ temp.4527, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4531, i.4531,
	add	r3, r3, #4	@ ivtmp.4473, ivtmp.4473,
	ldrb	fp, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	fp, #0	@ <variable>.is_used,
	beq	.L1290	@,
	ldr	r9, [r1, #524]	@ <variable>.poc, <variable>.poc
	add	r0, sp, #208	@,,
	ldr	lr, [r4, sl]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r8, r0, r6, asl #2	@, tmp422,, list0idx.4486,
	cmp	lr, r9	@ <variable>.CurrPic.thispoc, <variable>.poc
	strlt	r1, [r8, #-64]	@ temp.4527, fs_list0
	addlt	r6, r6, #1	@ list0idx.4486, list0idx.4486,
.L1290:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4531
	bhi	.L1291	@,
	rsb	r9, r5, r6	@ prephitmp.4557, list0idx.4485, list0idx.4486
.L1289:
	mov	sl, r5, asl #2	@ tmp520, list0idx.4485,
	mov	r1, r9	@, prephitmp.4557
	add	r0, r7, sl	@, tmp518, tmp520
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_asc	@,
	movt	r3, #:upper16:compare_fs_by_poc_asc	@,
	bl	qsort	@
	cmp	r5, #0	@ list0idx.4485,
	addeq	r8, sp, #80	@ tmp523,,
	beq	.L1292	@,
	ldr	r2, [r7, #0]	@ tmp432, fs_list0
	add	r8, sp, #80	@ tmp523,,
	add	r9, r8, r9, asl #2	@, ivtmp.4470, tmp523, prephitmp.4557,
	cmp	sl, #4	@ tmp520,
	sub	ip, sl, #4	@ tmp594, tmp520,
	mov	r3, #4	@ ivtmp.4468,
	str	r2, [r9], #4	@ tmp432, fs_list1
	ubfx	r2, ip, #2, #1	@ tmp595, tmp594,,
	beq	.L1292	@,
	cmp	r2, #0	@ tmp595,
	beq	.L1293	@,
	ldr	lr, [r7, #4]	@ tmp843, fs_list0
	mov	r3, #8	@ ivtmp.4468,
	cmp	sl, r3	@ tmp520, ivtmp.4468
	str	lr, [r9], #4	@ tmp843, fs_list1
	beq	.L1292	@,
.L1293:
	add	r1, r3, #4	@ tmp596, ivtmp.4468,
	ldr	r0, [r7, r3]	@ tmp661, fs_list0
	add	r3, r1, #4	@ ivtmp.4468, tmp596,
	mov	fp, r9	@ tmp597, ivtmp.4470
	ldr	lr, [r7, r1]	@ tmp664, fs_list0
	cmp	sl, r3	@ tmp520, ivtmp.4468
	str	r0, [fp], #4	@ tmp661, fs_list1
	str	lr, [r9, #4]	@ tmp664, fs_list1
	add	r9, fp, #4	@ ivtmp.4470, tmp597,
	bne	.L1293	@,
.L1292:
	cmp	r6, r5	@ list0idx.4486, list0idx.4485
	bls	.L1294	@,
	add	sl, r7, sl	@ ivtmp.4460, tmp518, tmp520
	add	lr, r7, r6, asl #2	@, D.45057, tmp518, list0idx.4486,
	rsb	r9, sl, lr	@ tmp587, ivtmp.4460, D.45057
	mov	r2, #4	@ ivtmp.4461,
	ldr	r5, [sl], #4	@ tmp438, fs_list0
	sub	r3, r9, #4	@ tmp588, tmp587,
	ubfx	r1, r3, #2, #1	@ tmp589, tmp588,,
	cmp	sl, lr	@ ivtmp.4460, D.45057
	str	r5, [r8, #0]	@ tmp438, fs_list1
	beq	.L1294	@,
	cmp	r1, #0	@ tmp589,
	beq	.L1295	@,
	ldr	fp, [sl], #4	@ tmp842, fs_list0
	mov	r2, #8	@ ivtmp.4461,
	cmp	sl, lr	@ ivtmp.4460, D.45057
	str	fp, [r8, #4]	@ tmp842, fs_list1
	beq	.L1294	@,
.L1295:
	mov	r1, sl	@ tmp590, ivtmp.4460
	ldr	r0, [sl, #4]	@ tmp670, fs_list0
	ldr	ip, [r1], #4	@ tmp667, fs_list0
	add	fp, r2, #4	@ tmp591, ivtmp.4461,
	add	sl, r1, #4	@ ivtmp.4460, tmp590,
	cmp	sl, lr	@ ivtmp.4460, D.45057
	str	ip, [r8, r2]	@ tmp667, fs_list1
	str	r0, [r8, fp]	@ tmp670, fs_list1
	add	r2, fp, #4	@ ivtmp.4461, tmp591,
	bne	.L1295	@,
.L1294:
	add	fp, r4, #26880	@ tmp671, pH264Ctx,
	movw	r9, #49707	@ tmp445,
	add	sl, fp, #156	@ ivtmp.4417, tmp671,
	mov	r1, r7	@, tmp518
	movw	r2, #20724	@ tmp439,
	movw	r7, #20728	@ tmp441,
	add	fp, fp, #288	@ D.35657, tmp671,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r5, #0	@ tmp440,
	mov	r3, sl	@, ivtmp.4417
	str	r5, [r4, r2]	@ tmp440, <variable>.CurrSlice.listXsize
	mov	r2, r6	@, list0idx.4486
	str	r5, [r4, r7]	@ tmp440, <variable>.CurrSlice.listXsize
	add	r7, r4, #20480	@ tmp444, pH264Ctx,
	add	lr, r7, #244	@, tmp444,
	str	r5, [sp, #4]	@ tmp440,
	str	lr, [sp, #12]	@, %sfp
	str	lr, [sp, #0]	@,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r8	@, tmp523
	mov	r2, r6	@, list0idx.4486
	mov	r3, fp	@, D.35657
	add	r9, r7, #248	@ D.35658, tmp444,
	str	r5, [sp, #4]	@ tmp440,
	str	r9, [sp, #0]	@ D.35658,
	bl	GenPiclistfromFrmlist	@
	movw	r1, #26636	@ tmp454,
	ldr	r6, [r4, r1]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r6, r5	@ <variable>.DPB.ltref_frames_in_buffer,
	addeq	r7, sp, #16	@ tmp672,,
	beq	.L1297	@,
	add	r7, sp, #16	@ tmp672,,
	mov	r6, r5	@ listltidx.4522, ivtmp.4453
.L1298:
	add	ip, r4, r5	@ tmp457, pH264Ctx, ivtmp.4453
	ldr	r0, [r4, r1]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r3, ip, #26368	@ tmp459, tmp457,
	add	r6, r6, #1	@ listltidx.4522, listltidx.4522,
	cmp	r0, r6	@ <variable>.DPB.ltref_frames_in_buffer, listltidx.4522
	ldr	r8, [r3, #192]	@ tmp460, <variable>.DPB.fs_ltref
	str	r8, [r7, r5]	@ tmp460, fs_listlt
	add	r5, r5, #4	@ ivtmp.4453, ivtmp.4453,
	bhi	.L1298	@,
.L1297:
	mov	r1, r6	@, listltidx.4522
	mov	r0, r7	@, tmp672
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	movw	r5, #49707	@ tmp465,
	bl	qsort	@
	ldr	lr, [sp, #12]	@, %sfp
	ldrb	r0, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r2, r6	@, listltidx.4522
	mov	r1, r7	@, tmp672
	mov	r3, sl	@, ivtmp.4417
	str	lr, [sp, #0]	@,
	mov	r8, #1	@ tmp468,
	str	r8, [sp, #4]	@ tmp468,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r2, r6	@, listltidx.4522
	mov	r1, r7	@, tmp672
	mov	r3, fp	@, D.35657
	movw	r6, #20724	@ tmp473,
	str	r9, [sp, #0]	@ D.35658,
	str	r8, [sp, #4]	@ tmp468,
	bl	GenPiclistfromFrmlist	@
	movw	r2, #20728	@ tmp474,
	ldr	r1, [r4, r6]	@ list0idx.4481, <variable>.CurrSlice.listXsize
	ldr	r6, [r4, r2]	@ list0idx.4484, <variable>.CurrSlice.listXsize
	cmp	r6, r1	@ list0idx.4484, list0idx.4481
	beq	.L1424	@,
.L1299:
	cmp	r1, #0	@ list0idx.4481,
	bne	.L1258	@,
	movw	r2, #20728	@ tmp478,
	ldr	r0, [r4, r2]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L1425	@,
	movw	r5, #20740	@ tmp508,
	mov	r3, r1	@ i.4506, list0idx.4481
	ldr	ip, [r4, r5]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	movw	r5, #20724	@ tmp505,
	str	r1, [r4, r5]	@ list0idx.4481, <variable>.CurrSlice.listXsize
	add	r1, ip, #1	@ tmp509, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r1, r0	@ tmp509, <variable>.CurrSlice.listXsize
	strls	r1, [r4, r2]	@, tmp509, <variable>.CurrSlice.listXsize
	strhi	r0, [r4, r2]	@, <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
.L1303:
	add	r0, r3, #6720	@ tmp514, i.4506,
	add	r1, r3, #1	@ i.4506, i.4506,
	add	ip, r0, #38	@ tmp514, tmp514,
	cmp	r1, #32	@ i.4506,
	mov	r0, #0	@ tmp525,
	and	r3, r3, #1	@ tmp541, i.4506,
	add	r2, r4, ip, asl #2	@, tmp517, pH264Ctx, tmp514,
	add	r2, r2, #4	@ ivtmp.4391, tmp517,
	str	r0, [r2], #4	@ tmp525, <variable>.pListX
	bhi	.L1412	@,
	cmp	r3, #0	@ tmp541,
	beq	.L1305	@,
	add	r1, r1, #1	@ i.4506, i.4506,
	str	r0, [r2], #4	@ tmp525, <variable>.pListX
	cmp	r1, #32	@ i.4506,
	bhi	.L1412	@,
.L1305:
	add	r1, r1, #2	@ i.4506, i.4506,
	mov	r3, r2	@ tmp543, ivtmp.4391
	cmp	r1, #32	@ i.4506,
	str	r0, [r3], #4	@ tmp525, <variable>.pListX
	str	r0, [r2, #4]	@ tmp525, <variable>.pListX
	add	r2, r3, #4	@ ivtmp.4391, tmp543,
	bls	.L1305	@,
.L1412:
	movw	r1, #20728	@ tmp491,
	ldr	r2, [r4, r1]	@ prephitmp.4359, <variable>.CurrSlice.listXsize
.L1304:
	cmp	r2, #32	@ prephitmp.4359,
	bhi	.L1306	@,
	add	r1, r2, #6720	@ tmp492, prephitmp.4359,
	add	r0, r4, #27136	@ D.44955, pH264Ctx,
	add	r3, r1, #38	@ tmp492, tmp492,
	add	r0, r0, #32	@ D.44955, D.44955,
	mov	r1, #0	@ tmp524,
	add	r4, r4, r3, asl #2	@, tmp495, pH264Ctx, tmp492,
	add	r4, r4, #4	@ ivtmp.4387, tmp495,
	add	r3, r4, #4	@ ivtmp.4387, ivtmp.4387,
	rsb	ip, r4, r0	@ tmp536, ivtmp.4387, D.44955
	cmp	r3, r0	@ ivtmp.4387, D.44955
	sub	r2, ip, #4	@ tmp537, tmp536,
	ubfx	r2, r2, #2, #1	@ tmp538, tmp537,,
	str	r1, [r4, #132]	@ tmp524, <variable>.pListX
	beq	.L1306	@,
	cmp	r2, #0	@ tmp538,
	beq	.L1307	@,
	str	r1, [r3, #132]	@ tmp524, <variable>.pListX
	add	r3, r3, #4	@ ivtmp.4387, ivtmp.4387,
	cmp	r3, r0	@ ivtmp.4387, D.44955
	beq	.L1306	@,
.L1307:
	add	r2, r3, #4	@ tmp539, ivtmp.4387,
	str	r1, [r3, #132]	@ tmp524, <variable>.pListX
	add	r3, r2, #4	@ ivtmp.4387, tmp539,
	cmp	r3, r0	@ ivtmp.4387, D.44955
	str	r1, [r2, #132]	@ tmp524, <variable>.pListX
	bne	.L1307	@,
.L1306:
	mov	r0, #0	@ D.35612,
.L1263:
	add	sp, sp, #212	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1264:
	movw	r6, #26632	@ tmp317,
	ldr	lr, [r0, r6]	@ temp.4559, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4559,
	moveq	r7, lr	@ list0idx.4483, temp.4559
	beq	.L1268	@,
	add	r3, r0, #26368	@ ivtmp.4447, pH264Ctx,
	sub	r5, lr, #1	@ tmp581, temp.4559,
	and	r0, r5, #1	@ tmp583, tmp581,
	movw	r5, #50136	@ tmp529,
	ldr	r2, [r3, #128]!	@ temp.4501, <variable>.DPB.fs_ref
	ldrb	r8, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r8, #3	@ <variable>.is_reference,
	beq	.L1426	@,
.L1373:
	mov	r2, #1	@ i.4504,
	cmp	r2, lr	@ i.4504, temp.4559
	add	r3, r3, #4	@ ivtmp.4447, ivtmp.4447,
	bcs	.L1268	@,
	cmp	r0, #0	@ tmp583,
	beq	.L1270	@,
	ldr	r1, [r3, #0]	@ temp.4501, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1427	@,
.L1375:
	add	r2, r2, #1	@ i.4504, i.4504,
	add	r3, r3, #4	@ ivtmp.4447, ivtmp.4447,
	cmp	r2, lr	@ i.4504, temp.4559
	bcc	.L1270	@,
.L1268:
	add	lr, r4, #26880	@ ivtmp.4417, pH264Ctx,
	mov	r1, r7	@, list0idx.4483
	add	sl, lr, #156	@ ivtmp.4417, ivtmp.4417,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_desc	@,
	movt	r3, #:upper16:compare_pic_by_poc_desc	@,
	mov	r0, sl	@, ivtmp.4417
	bl	qsort	@
	movw	r3, #26632	@ tmp332,
	ldr	r8, [r4, r3]	@ temp.4558, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ temp.4558,
	moveq	r5, r7	@ list0idx, list0idx.4483
	beq	.L1272	@,
	add	r3, r4, #26368	@ ivtmp.4442, pH264Ctx,
	sub	r2, r8, #1	@ tmp576, temp.4558,
	and	r0, r2, #1	@ tmp578, tmp576,
	mov	r5, r7	@ list0idx, list0idx.4483
	ldr	r2, [r3, #128]!	@ temp.4507, <variable>.DPB.fs_ref
	movw	lr, #50136	@ tmp528,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1428	@,
.L1366:
	mov	r2, #1	@ i.4512,
	cmp	r2, r8	@ i.4512, temp.4558
	add	r3, r3, #4	@ ivtmp.4442, ivtmp.4442,
	bcs	.L1418	@,
	cmp	r0, #0	@ tmp578,
	beq	.L1274	@,
	ldr	r1, [r3, #0]	@ temp.4507, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1429	@,
.L1368:
	add	r2, r2, #1	@ i.4512, i.4512,
	add	r3, r3, #4	@ ivtmp.4442, ivtmp.4442,
	cmp	r2, r8	@ i.4512, temp.4558
	bcc	.L1274	@,
.L1418:
	rsb	r8, r7, r5	@ prephitmp.4361, list0idx.4483, list0idx
.L1272:
	mov	r6, r7, asl #2	@ D.35626, list0idx.4483,
	mov	r1, r8	@, prephitmp.4361
	add	r0, sl, r6	@, ivtmp.4417, D.35626
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_asc	@,
	movt	r3, #:upper16:compare_pic_by_poc_asc	@,
	bl	qsort	@
	cmp	r7, #0	@ list0idx.4483,
	beq	.L1275	@,
	add	r8, r8, #6720	@ tmp347, prephitmp.4361,
	add	r1, r4, #26880	@ tmp352, pH264Ctx,
	add	r3, r1, #156	@ tmp352, tmp352,
	add	r8, r8, #38	@ tmp347, tmp347,
	cmp	r6, #4	@ D.35626,
	sub	r2, r6, #4	@ tmp572, D.35626,
	add	ip, r4, r8, asl #2	@, tmp350, pH264Ctx, tmp347,
	ldr	r0, [r3, #0]	@ tmp354, <variable>.pListX
	add	lr, ip, #4	@ ivtmp.4439, tmp350,
	mov	r3, #4	@ ivtmp.4436,
	ubfx	ip, r2, #2, #1	@ tmp573, tmp572,,
	add	r2, lr, #4	@ ivtmp.4439, ivtmp.4439,
	str	r0, [lr, #132]	@ tmp354, <variable>.pListX
	beq	.L1275	@,
	cmp	ip, #0	@ tmp573,
	beq	.L1276	@,
	add	ip, r4, #26880	@ tmp782, pH264Ctx,
	mov	r3, #8	@ ivtmp.4436,
	add	lr, ip, #160	@ tmp782, tmp782,
	cmp	r6, r3	@ D.35626, ivtmp.4436
	ldr	r1, [lr, #0]	@ tmp783, <variable>.pListX
	str	r1, [r2, #132]	@ tmp783, <variable>.pListX
	add	r2, r2, #4	@ ivtmp.4439, ivtmp.4439,
	beq	.L1275	@,
.L1276:
	add	r0, r4, r3	@ tmp632, pH264Ctx, ivtmp.4436
	add	r3, r3, #4	@ tmp574, ivtmp.4436,
	add	r1, r0, #26880	@ tmp633, tmp632,
	add	lr, r4, r3	@ tmp638, pH264Ctx, tmp574
	add	r0, lr, #26880	@ tmp639, tmp638,
	add	r3, r3, #4	@ ivtmp.4436, tmp574,
	ldr	ip, [r1, #156]	@ tmp635, <variable>.pListX
	add	lr, r2, #4	@ tmp575, ivtmp.4439,
	cmp	r6, r3	@ D.35626, ivtmp.4436
	str	ip, [r2, #132]	@ tmp635, <variable>.pListX
	add	r2, lr, #4	@ ivtmp.4439, tmp575,
	ldr	r0, [r0, #156]	@ tmp641, <variable>.pListX
	str	r0, [lr, #132]	@ tmp641, <variable>.pListX
	bne	.L1276	@,
.L1275:
	cmp	r5, r7	@ list0idx, list0idx.4483
	bls	.L1277	@,
	add	lr, r7, #6720	@ tmp355, list0idx.4483,
	rsb	r6, r7, r5	@ tmp362, list0idx.4483, list0idx
	add	r3, lr, #38	@ tmp355, tmp355,
	add	r0, r4, #27136	@ tmp364, pH264Ctx,
	mov	r6, r6, asl #2	@ D.45014, tmp362,
	add	r2, r0, #32	@ tmp364, tmp364,
	add	r1, r4, r3, asl #2	@, tmp358, pH264Ctx, tmp355,
	mov	r3, #4	@ ivtmp.4430,
	add	r1, r1, r3	@ ivtmp.4429, tmp358,
	cmp	r3, r6	@ ivtmp.4430, D.45014
	sub	ip, r6, #4	@ tmp566, D.45014,
	ldr	lr, [r1], #4	@ tmp366, <variable>.pListX
	ubfx	ip, ip, #2, #1	@ tmp567, tmp566,,
	str	lr, [r2, #0]	@ tmp366, <variable>.pListX
	beq	.L1277	@,
	cmp	ip, #0	@ tmp567,
	beq	.L1278	@,
	add	r3, r4, #27136	@ tmp778, pH264Ctx,
	ldr	r0, [r1], #4	@ tmp779, <variable>.pListX
	add	r2, r3, #36	@ tmp778, tmp778,
	mov	r3, #8	@ ivtmp.4430,
	cmp	r3, r6	@ ivtmp.4430, D.45014
	str	r0, [r2, #0]	@ tmp779, <variable>.pListX
	beq	.L1277	@,
.L1278:
	mov	r2, r1	@ tmp568, ivtmp.4429
	add	ip, r4, r3	@ tmp644, pH264Ctx, ivtmp.4430
	ldr	lr, [r2], #4	@ tmp647, <variable>.pListX
	add	ip, ip, #27136	@ tmp645, tmp644,
	add	r0, r3, #4	@ tmp569, ivtmp.4430,
	add	r3, r0, #4	@ ivtmp.4430, tmp569,
	add	r0, r4, r0	@ tmp650, pH264Ctx, tmp569
	str	lr, [ip, #32]	@ tmp647, <variable>.pListX
	add	r0, r0, #27136	@ tmp651, tmp650,
	ldr	ip, [r1, #4]	@ tmp653, <variable>.pListX
	cmp	r3, r6	@ ivtmp.4430, D.45014
	add	r1, r2, #4	@ ivtmp.4429, tmp568,
	str	ip, [r0, #32]	@ tmp653, <variable>.pListX
	bne	.L1278	@,
.L1277:
	movw	lr, #26636	@ tmp369,
	movw	r2, #20728	@ tmp367,
	ldr	r1, [r4, lr]	@ temp.4556, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20724	@ tmp368,
	str	r5, [r4, r2]	@ list0idx, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ temp.4556,
	str	r5, [r4, r3]	@ list0idx, <variable>.CurrSlice.listXsize
	moveq	r6, r5	@ list0idx.4484, list0idx
	beq	.L1280	@,
	tst	r1, #1	@ temp.4556,
	add	r6, r4, #26368	@ ivtmp.4423, pH264Ctx,
	add	r3, r6, #192	@ ivtmp.4423, ivtmp.4423,
	mov	r2, #0	@ i.4519,
	bne	.L1284	@,
	ldr	r2, [r3, #0]	@ temp.4515, <variable>.DPB.fs_ltref
	ldrb	lr, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	lr, #3	@ <variable>.is_used,
	beq	.L1430	@,
.L1416:
	add	r3, r3, #4	@ ivtmp.4423, ivtmp.4423,
	mov	r2, #1	@ i.4519,
.L1284:
	ldr	r0, [r3, #0]	@ temp.4515, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	beq	.L1431	@,
.L1281:
	add	r2, r2, #1	@ tmp562, i.4519,
	mov	r6, r5	@ list0idx.4484, list0idx
	cmp	r2, r1	@ tmp562, temp.4556
	add	r0, r3, #4	@ tmp563, ivtmp.4423,
	bcs	.L1283	@,
.L1445:
	ldr	r3, [r3, #4]	@ temp.4515, <variable>.DPB.fs_ltref
	ldrb	r5, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, #3	@ <variable>.is_used,
	beq	.L1432	@,
.L1355:
	mov	r5, r6	@ list0idx.4484, list0idx.4484
.L1417:
	add	r3, r0, #4	@ ivtmp.4423, tmp563,
	add	r2, r2, #1	@ i.4519, tmp562,
	ldr	r0, [r3, #0]	@ temp.4515, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	bne	.L1281	@,
	b	.L1431	@
.L1241:
	movw	r1, #26632	@ tmp225,
	ldr	lr, [r4, r1]	@ temp.4513, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4513,
	moveq	r5, lr	@ list0idx.4541, temp.4513
	beq	.L1245	@,
	add	r3, r4, #26368	@ ivtmp.4400, pH264Ctx,
	sub	r2, lr, #1	@ tmp549, temp.4513,
	and	r0, r2, #1	@ tmp551, tmp549,
	ldr	r2, [r3, #128]!	@ D.35561, <variable>.DPB.fs_ref
	ldrb	r6, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1433	@,
.L1341:
	mov	r2, #1	@ i,
	cmp	r2, lr	@ i, temp.4513
	add	r3, r3, #4	@ ivtmp.4400, ivtmp.4400,
	bcs	.L1245	@,
	cmp	r0, #0	@ tmp551,
	beq	.L1247	@,
	ldr	r1, [r3, #0]	@ D.35561, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1434	@,
.L1343:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.4400, ivtmp.4400,
	cmp	r2, lr	@ i, temp.4513
	bcc	.L1247	@,
.L1245:
	add	lr, r4, #26880	@ D.35572, pH264Ctx,
	mov	r1, r5	@, list0idx.4541
	add	r6, lr, #156	@ D.35572, D.35572,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_pic_num_desc	@,
	movt	r3, #:upper16:compare_pic_by_pic_num_desc	@,
	mov	r0, r6	@, D.35572
	bl	qsort	@
	movw	r0, #26636	@ tmp241,
	ldr	r1, [r4, r0]	@ D.35582, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20724	@ tmp240,
	str	r5, [r4, r3]	@ list0idx.4541, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ D.35582,
	moveq	r0, r5	@ list0idx.4553, list0idx.4541
	beq	.L1249	@,
	add	r3, r4, #26368	@ ivtmp.4395, pH264Ctx,
	sub	r2, r1, #1	@ tmp544, D.35582,
	and	ip, r2, #1	@ tmp546, tmp544,
	ldr	r2, [r3, #192]!	@ D.35573, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1435	@,
.L1334:
	mov	r2, #1	@ i.4487,
	cmp	r2, r1	@ i.4487, D.35582
	add	r3, r3, #4	@ ivtmp.4395, ivtmp.4395,
	bcs	.L1413	@,
	cmp	ip, #0	@ tmp546,
	beq	.L1251	@,
	ldr	r0, [r3, #0]	@ D.35573, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1436	@,
.L1336:
	add	r2, r2, #1	@ i.4487, i.4487,
	add	r3, r3, #4	@ ivtmp.4395, ivtmp.4395,
	cmp	r2, r1	@ i.4487, D.35582
	bcc	.L1251	@,
.L1413:
	movw	ip, #20724	@ tmp254,
	ldr	r0, [r4, ip]	@ list0idx.4553, <variable>.CurrSlice.listXsize
	rsb	r1, r0, r5	@ prephitmp.4369, list0idx.4553, list0idx.4541
.L1249:
	add	r0, r6, r0, asl #2	@,, D.35572, list0idx.4553,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	movw	r1, #20724	@ tmp258,
	str	r5, [r4, r1]	@ list0idx.4541, <variable>.CurrSlice.listXsize
	b	.L1252	@
.L1438:
	add	sl, r7, #6720	@ tmp323, list0idx.4483,
	ldr	r3, [r3, #4]	@ temp.4501, <variable>.DPB.fs_ref
	add	ip, sl, #38	@ tmp323, tmp323,
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r1, #400	@ tmp329, temp.4501,
	add	sl, r4, ip, asl #2	@, tmp327, pH264Ctx, tmp323,
	cmp	r8, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	strge	r1, [sl, #4]	@ tmp329, <variable>.pListX
	addge	r7, r7, #1	@ list0idx.4483, list0idx.4483,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1437	@,
.L1378:
	add	r2, r2, #1	@ i.4504, tmp584,
	add	r3, r0, #4	@ ivtmp.4447, tmp585,
	cmp	r2, lr	@ i.4504, temp.4559
	bcs	.L1268	@,
.L1270:
	ldr	r1, [r3, #0]	@ temp.4501, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp584, i.4504,
	add	r0, r3, #4	@ tmp585, ivtmp.4447,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1438	@,
	ldr	r3, [r3, #4]	@ temp.4501, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1378	@,
.L1437:
	add	ip, r7, #6720	@ tmp837, list0idx.4483,
	add	sl, r3, #400	@ tmp841, temp.4501,
	add	r6, ip, #38	@ tmp837, tmp837,
	ldr	r3, [r3, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, r6, asl #2	@, tmp839, pH264Ctx, tmp837,
	cmp	r8, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r7, r7, #1	@ list0idx.4483, list0idx.4483,
	strge	sl, [r1, #4]	@ tmp841, <variable>.pListX
	b	.L1378	@
.L1440:
	ldr	r6, [r1, #400]	@ tmp230,
	bic	ip, r6, #-16777216	@ tmp228, tmp230,
	bic	r6, ip, #255	@ tmp228, tmp228,
	cmp	r6, #65536	@ tmp228,
	bne	.L1246	@,
	add	ip, r5, #6720	@ tmp231, list0idx.4541,
	add	r5, r5, #1	@ list0idx.4541, list0idx.4541,
	add	r6, ip, #38	@ tmp231, tmp231,
	add	r1, r1, #400	@ tmp237, D.35561,
	add	ip, r4, r6, asl #2	@, tmp235, pH264Ctx, tmp231,
	str	r1, [ip, #4]	@ tmp237, <variable>.pListX
.L1246:
	ldr	r3, [r3, #4]	@ D.35561, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1439	@,
.L1346:
	add	r2, r2, #1	@ i, tmp552,
	add	r3, r0, #4	@ ivtmp.4400, tmp553,
	cmp	r2, lr	@ i, temp.4513
	bcs	.L1245	@,
.L1247:
	ldr	r1, [r3, #0]	@ D.35561, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp552, i,
	add	r0, r3, #4	@ tmp553, ivtmp.4400,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1440	@,
	ldr	r3, [r3, #4]	@ D.35561, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1346	@,
.L1439:
	ldr	ip, [r3, #400]	@ tmp738,
	bic	r6, ip, #-16777216	@ tmp739, tmp738,
	bic	r1, r6, #255	@ tmp739, tmp739,
	cmp	r1, #65536	@ tmp739,
	bne	.L1346	@,
	add	ip, r5, #6720	@ tmp741, list0idx.4541,
	add	r3, r3, #400	@ tmp745, D.35561,
	add	r6, ip, #38	@ tmp741, tmp741,
	add	r5, r5, #1	@ list0idx.4541, list0idx.4541,
	add	r1, r4, r6, asl #2	@, tmp743, pH264Ctx, tmp741,
	str	r3, [r1, #4]	@ tmp745, <variable>.pListX
	b	.L1346	@
.L1442:
	add	r9, r5, #6720	@ tmp338, list0idx,
	ldr	r3, [r3, #4]	@ temp.4507, <variable>.DPB.fs_ref
	add	ip, r9, #38	@ tmp338, tmp338,
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r9, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r1, #400	@ tmp344, temp.4507,
	add	ip, r4, ip, asl #2	@, tmp342, pH264Ctx, tmp338,
	cmp	r9, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	strlt	r1, [ip, #4]	@ tmp344, <variable>.pListX
	addlt	r5, r5, #1	@ list0idx, list0idx,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1441	@,
.L1371:
	add	r2, r2, #1	@ i.4512, tmp579,
	add	r3, r0, #4	@ ivtmp.4442, tmp580,
	cmp	r2, r8	@ i.4512, temp.4558
	bcs	.L1418	@,
.L1274:
	ldr	r1, [r3, #0]	@ temp.4507, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp579, i.4512,
	add	r0, r3, #4	@ tmp580, ivtmp.4442,
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1442	@,
	ldr	r3, [r3, #4]	@ temp.4507, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1371	@,
.L1441:
	add	ip, r5, #6720	@ tmp808, list0idx,
	add	r6, r3, #400	@ tmp812, temp.4507,
	add	r1, ip, #38	@ tmp808, tmp808,
	ldr	r3, [r3, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, r1, asl #2	@, tmp810, pH264Ctx, tmp808,
	cmp	ip, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r5, r5, #1	@ list0idx, list0idx,
	strlt	r6, [r1, #4]	@ tmp812, <variable>.pListX
	b	.L1371	@
.L1444:
	ldr	lr, [r0, #400]	@ tmp246,
	bic	lr, lr, #-16777216	@ tmp244, tmp246,
	bic	lr, lr, #255	@ tmp244, tmp244,
	cmp	lr, #256	@ tmp244,
	bne	.L1250	@,
	add	lr, r5, #6720	@ tmp247, list0idx.4541,
	add	r5, r5, #1	@ list0idx.4541, list0idx.4541,
	add	lr, lr, #38	@ tmp247, tmp247,
	add	r0, r0, #400	@ tmp253, D.35573,
	add	lr, r4, lr, asl #2	@, tmp251, pH264Ctx, tmp247,
	str	r0, [lr, #4]	@ tmp253, <variable>.pListX
.L1250:
	ldr	r3, [r3, #4]	@ D.35573, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1443	@,
.L1339:
	add	r2, r2, #1	@ i.4487, tmp547,
	add	r3, ip, #4	@ ivtmp.4395, tmp548,
	cmp	r2, r1	@ i.4487, D.35582
	bcs	.L1413	@,
.L1251:
	ldr	r0, [r3, #0]	@ D.35573, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ tmp547, i.4487,
	add	ip, r3, #4	@ tmp548, ivtmp.4395,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #3	@ <variable>.is_reference,
	beq	.L1444	@,
	ldr	r3, [r3, #4]	@ D.35573, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1339	@,
.L1443:
	ldr	r0, [r3, #400]	@ tmp712,
	bic	lr, r0, #-16777216	@ tmp713, tmp712,
	bic	r0, lr, #255	@ tmp713, tmp713,
	cmp	r0, #256	@ tmp713,
	bne	.L1339	@,
	add	lr, r5, #6720	@ tmp715, list0idx.4541,
	add	r3, r3, #400	@ tmp719, D.35573,
	add	r0, lr, #38	@ tmp715, tmp715,
	add	r5, r5, #1	@ list0idx.4541, list0idx.4541,
	add	lr, r4, r0, asl #2	@, tmp717, pH264Ctx, tmp715,
	str	r3, [lr, #4]	@ tmp719, <variable>.pListX
	b	.L1339	@
.L1431:
	ldrb	lr, [r0, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	lr, #1	@ <variable>.frame.is_long_term,
	bne	.L1281	@,
	add	ip, r5, #6720	@ tmp373, list0idx,
	add	r6, r5, #6784	@ tmp380, list0idx,
	add	lr, ip, #38	@ tmp373, tmp373,
	add	ip, r6, #7	@ tmp380, tmp380,
	add	r2, r2, #1	@ tmp562, i.4519,
	add	r6, r5, #1	@ list0idx.4484, list0idx,
	add	lr, r4, lr, asl #2	@, tmp377, pH264Ctx, tmp373,
	add	r5, r4, ip, asl #2	@, tmp384, pH264Ctx, tmp380,
	cmp	r2, r1	@ tmp562, temp.4556
	add	r0, r0, #400	@ tmp379, temp.4515,
	str	r0, [lr, #4]	@ tmp379, <variable>.pListX
	str	r0, [r5, #4]	@ tmp379, <variable>.pListX
	add	r0, r3, #4	@ tmp563, ivtmp.4423,
	bcc	.L1445	@,
.L1283:
	movw	r1, #20724	@ tmp388,
	ldr	r5, [r4, r1]	@ list0idx, <variable>.CurrSlice.listXsize
	rsb	r1, r5, r6	@ prephitmp.4365, list0idx, list0idx.4484
.L1280:
	add	r0, sl, r5, asl #2	@,, ivtmp.4417, list0idx,
	mov	r2, #4	@,
	movw	r5, #20724	@ tmp392,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	ldr	ip, [r4, r5]	@ D.35583, <variable>.CurrSlice.listXsize
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	add	r0, ip, #33	@ tmp393, D.35583,
	rsb	r1, ip, r6	@, D.35583, list0idx.4484
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	mla	r0, r0, r2, sl	@, tmp393,, ivtmp.4417
	bl	qsort	@
	movw	r3, #20728	@ tmp398,
	mov	r1, r6	@ list0idx.4481, list0idx.4484
	str	r6, [r4, r3]	@ list0idx.4484, <variable>.CurrSlice.listXsize
	str	r6, [r4, r5]	@ list0idx.4484, <variable>.CurrSlice.listXsize
.L1285:
	cmp	r6, #1	@ list0idx.4484,
	bls	.L1299	@,
	ldr	ip, [sl, #0]	@ tmp476, <variable>.pListX
	sub	r0, r6, #1	@ tmp554, list0idx.4484,
	ldr	r3, [sl, #132]	@ tmp477, <variable>.pListX
	and	r0, r0, #1	@ tmp556, tmp554,
	cmp	ip, r3	@ tmp476, tmp477
	bne	.L1258	@,
	mov	r3, #1	@ j,
	cmp	r3, r6	@ j, list0idx.4484
	add	sl, sl, #4	@ ivtmp.4417, ivtmp.4417,
	bcs	.L1414	@,
	cmp	r0, #0	@ tmp556,
	beq	.L1300	@,
	ldr	r2, [sl, #0]	@ tmp746, <variable>.pListX
	ldr	r0, [sl, #132]	@ tmp747, <variable>.pListX
	cmp	r2, r0	@ tmp746, tmp747
	bne	.L1258	@,
	mov	r3, #2	@ j,
	cmp	r3, r6	@ j, list0idx.4484
	add	sl, sl, #4	@ ivtmp.4417, ivtmp.4417,
	bcc	.L1300	@,
	b	.L1414	@
.L1446:
	ldr	r0, [sl, #4]	@ tmp679, <variable>.pListX
	add	sl, r2, #4	@ ivtmp.4417, tmp558,
	ldr	r2, [r2, #132]	@ tmp680, <variable>.pListX
	cmp	r0, r2	@ tmp679, tmp680
	bne	.L1258	@,
	cmp	r3, r6	@ j, list0idx.4484
	bcs	.L1414	@,
.L1300:
	ldr	ip, [sl, #0]	@ tmp674, <variable>.pListX
	add	r3, r3, #1	@ tmp557, j,
	ldr	r0, [sl, #132]	@ tmp675, <variable>.pListX
	add	r2, sl, #4	@ tmp558, ivtmp.4417,
	add	r3, r3, #1	@ j, tmp557,
	cmp	ip, r0	@ tmp674, tmp675
	beq	.L1446	@,
	b	.L1258	@
.L1432:
	ldrb	r5, [r3, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	r5, #1	@ <variable>.frame.is_long_term,
	bne	.L1355	@,
	add	ip, r6, #6720	@ tmp766, list0idx.4484,
	add	r5, r6, #6784	@ tmp772, list0idx.4484,
	add	lr, ip, #38	@ tmp766, tmp766,
	add	ip, r5, #7	@ tmp772, tmp772,
	add	r3, r3, #400	@ tmp770, temp.4515,
	add	r5, r6, #1	@ list0idx.4484, list0idx.4484,
	add	lr, r4, lr, asl #2	@, tmp768, pH264Ctx, tmp766,
	add	ip, r4, ip, asl #2	@, tmp774, pH264Ctx, tmp772,
	str	r3, [lr, #4]	@ tmp770, <variable>.pListX
	str	r3, [ip, #4]	@ tmp770, <variable>.pListX
	b	.L1417	@
.L1423:
	movw	r1, #50112	@ tmp299,
	movw	r0, #27036	@ tmp298,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	r2, lr, #400	@ tmp301, <variable>.CurrPic.frame_store,
	str	r2, [r4, r0]	@ tmp301, <variable>.pListX
	b	.L1261	@
.L1428:
	ldr	r1, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	ldr	r6, [r2, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	cmp	r1, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	bge	.L1366	@,
	add	r1, r7, #6720	@ tmp788, list0idx.4483,
	add	r2, r2, #400	@ tmp792, temp.4507,
	add	r6, r1, #38	@ tmp788, tmp788,
	add	r5, r7, #1	@ list0idx, list0idx.4483,
	add	ip, r4, r6, asl #2	@, tmp790, pH264Ctx, tmp788,
	str	r2, [ip, #4]	@ tmp792, <variable>.pListX
	b	.L1366	@
.L1426:
	ldr	sl, [r2, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	r8, sl	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	sl, r4, #26880	@ tmp820, pH264Ctx,
	addge	r2, r2, #400	@ tmp821, temp.4501,
	addge	sl, sl, #156	@ tmp820, tmp820,
	movge	r7, #1	@ list0idx.4483,
	strge	r2, [sl, #0]	@ tmp821, <variable>.pListX
	b	.L1373	@
.L1433:
	ldr	ip, [r2, #400]	@ tmp720,
	bic	r1, ip, #-16777216	@ tmp721, tmp720,
	bic	r6, r1, #255	@ tmp721, tmp721,
	cmp	r6, #65536	@ tmp721,
	addeq	r6, r4, #26880	@ tmp726, pH264Ctx,
	addeq	r2, r2, #400	@ tmp727, D.35561,
	addeq	r6, r6, #156	@ tmp726, tmp726,
	moveq	r5, #1	@ list0idx.4541,
	streq	r2, [r6, #0]	@ tmp727, <variable>.pListX
	b	.L1341	@
.L1430:
	ldrb	r6, [r2, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	r6, #1	@ <variable>.frame.is_long_term,
	bne	.L1416	@,
	add	r6, r5, #6720	@ tmp752, list0idx,
	add	lr, r5, #6784	@ tmp758, list0idx,
	add	r2, r2, #400	@ tmp757, temp.4515,
	add	r5, r5, #1	@ list0idx.4484, list0idx,
	add	ip, r4, r6, asl #2	@, tmp755, pH264Ctx, tmp752,
	add	r0, r4, lr, asl #2	@, tmp761, pH264Ctx, tmp758,
	str	r2, [ip, #156]	@ tmp757, <variable>.pListX
	str	r2, [r0, #32]	@ tmp757, <variable>.pListX
	b	.L1416	@
.L1435:
	ldr	lr, [r2, #400]	@ tmp694,
	bic	r0, lr, #-16777216	@ tmp695, tmp694,
	bic	lr, r0, #255	@ tmp695, tmp695,
	cmp	lr, #256	@ tmp695,
	addeq	lr, r5, #6720	@ tmp696, list0idx.4541,
	addeq	r2, r2, #400	@ tmp701, D.35573,
	addeq	r5, r5, #1	@ list0idx.4541, list0idx.4541,
	addeq	lr, r4, lr, asl #2	@, tmp699, pH264Ctx, tmp696,
	streq	r2, [lr, #156]	@ tmp701, <variable>.pListX
	b	.L1334	@
.L1436:
	ldr	lr, [r0, #400]	@ tmp704,
	bic	ip, lr, #-16777216	@ tmp705, tmp704,
	bic	lr, ip, #255	@ tmp705, tmp705,
	cmp	lr, #256	@ tmp705,
	addeq	lr, r5, #6720	@ tmp706, list0idx.4541,
	addeq	r0, r0, #400	@ tmp711, D.35573,
	addeq	r5, r5, r2	@ list0idx.4541, list0idx.4541,
	addeq	lr, r4, lr, asl #2	@, tmp709, pH264Ctx, tmp706,
	streq	r0, [lr, #156]	@ tmp711, <variable>.pListX
	b	.L1336	@
.L1429:
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	ip, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r6, r5, #6720	@ tmp798, list0idx,
	addlt	r1, r1, #400	@ tmp803, temp.4507,
	addlt	r5, r5, r2	@ list0idx, list0idx,
	addlt	r6, r4, r6, asl #2	@, tmp801, pH264Ctx, tmp798,
	strlt	r1, [r6, #156]	@ tmp803, <variable>.pListX
	b	.L1368	@
.L1434:
	ldr	r0, [r1, #400]	@ tmp730,
	bic	ip, r0, #-16777216	@ tmp731, tmp730,
	bic	r6, ip, #255	@ tmp731, tmp731,
	cmp	r6, #65536	@ tmp731,
	addeq	r6, r5, #6720	@ tmp732, list0idx.4541,
	addeq	r1, r1, #400	@ tmp737, D.35561,
	addeq	r5, r5, r2	@ list0idx.4541, list0idx.4541,
	addeq	r6, r4, r6, asl #2	@, tmp735, pH264Ctx, tmp732,
	streq	r1, [r6, #156]	@ tmp737, <variable>.pListX
	b	.L1343	@
.L1427:
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	ip, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r6, r7, #6720	@ tmp827, list0idx.4483,
	addge	r1, r1, #400	@ tmp832, temp.4501,
	addge	r7, r7, r2	@ list0idx.4483, list0idx.4483,
	addge	r6, r4, r6, asl #2	@, tmp830, pH264Ctx, tmp827,
	strge	r1, [r6, #156]	@ tmp832, <variable>.pListX
	b	.L1375	@
.L1414:
	movw	r3, #27168	@ tmp499,
	movw	r2, #27172	@ tmp501,
	ldr	ip, [r4, r3]	@ tmp_s, <variable>.pListX
	movw	r1, #20724	@ tmp504,
	ldr	r0, [r4, r2]	@ <variable>.pListX, <variable>.pListX
	ldr	r1, [r4, r1]	@ list0idx.4481, <variable>.CurrSlice.listXsize
	str	ip, [r4, r2]	@ tmp_s, <variable>.pListX
	str	r0, [r4, r3]	@ <variable>.pListX, <variable>.pListX
	b	.L1299	@
.L1259:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.35612,
	b	.L1263	@
.L1425:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.35612,
	b	.L1263	@
.L1424:
	mov	r1, r6	@ list0idx.4481, list0idx.4484
	b	.L1285	@
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
	ldr	r6, [r0, r3]	@ D.41128, <variable>.DPB.used_size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r6, #0	@ D.41128,
	mvneq	r5, #0	@ nearest_pic_id,
	beq	.L1450	@,
	movw	r1, #26432	@ tmp152,
	cmp	r6, #1	@ D.41128,
	ldr	r0, [r0, r1]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #50132	@ tmp150,
	ldr	ip, [r4, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r5, #0	@ nearest_pic_id,
	ldr	r1, [r0, #524]	@ nearest_poc, <variable>.poc
	bls	.L1450	@,
	sub	r6, r6, #1	@ tmp154, D.41128,
	rsb	r1, r1, ip	@ tmp153, nearest_poc, curr_poc
	cmp	r1, #0	@ tmp153,
	mov	r5, #0	@ nearest_pic_id,
	mov	r6, r6, asl #2	@ D.45201, tmp154,
	rsblt	r1, r1, #0	@ nearest_poc_diff, tmp153
	tst	r6, #4	@ D.45201,
	mov	r3, r5	@ ivtmp.4599, nearest_pic_id
	bne	.L1453	@,
	add	r2, r4, #26368	@ tmp192, pH264Ctx,
	add	r3, r2, #68	@ tmp192, tmp192,
	ldr	r2, [r3, #0]	@ D.41125, <variable>.DPB.fs
	ldr	r0, [r2, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r0, ip	@ tmp195, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp195,
	rsblt	r3, r3, #0	@ nearest_poc_diff.4602, tmp195
	cmp	r3, r1	@ nearest_poc_diff.4602, nearest_poc_diff
	ldrlt	r5, [r2, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r3, r1	@ nearest_poc_diff.4602, nearest_poc_diff
	mov	r1, r3	@ nearest_poc_diff, nearest_poc_diff.4602
	mov	r3, #4	@ ivtmp.4599,
.L1453:
	add	r0, r4, r3	@ tmp155, pH264Ctx, ivtmp.4599
	add	r3, r3, #4	@ tmp180, ivtmp.4599,
	add	r2, r0, #26368	@ tmp157, tmp155,
	ldr	r0, [r2, #68]	@ D.41125, <variable>.DPB.fs
	ldr	r2, [r0, #524]	@ <variable>.poc, <variable>.poc
	rsb	r2, r2, ip	@ tmp158, <variable>.poc, curr_poc
	cmp	r2, #0	@ tmp158,
	rsblt	r2, r2, #0	@ nearest_poc_diff.4602, tmp158
	cmp	r2, r1	@ nearest_poc_diff.4602, nearest_poc_diff
	movge	r2, r1	@ nearest_poc_diff.4602, nearest_poc_diff
	ldrlt	r5, [r0, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	cmp	r3, r6	@ tmp180, D.45201
	add	r0, r4, r3	@ tmp183, pH264Ctx, tmp180
	add	r1, r0, #26368	@ tmp184, tmp183,
	beq	.L1450	@,
	ldr	r0, [r1, #68]	@ D.41125, <variable>.DPB.fs
	ldr	r1, [r0, #524]	@ <variable>.poc, <variable>.poc
	rsb	r1, r1, ip	@ tmp188, <variable>.poc, curr_poc
	cmp	r1, #0	@ tmp188,
	rsblt	r1, r1, #0	@ nearest_poc_diff.4602, tmp188
	cmp	r1, r2	@ nearest_poc_diff.4602, nearest_poc_diff.4602
	ldrlt	r5, [r0, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r1, r2	@ nearest_poc_diff.4602, nearest_poc_diff.4602
.L1471:
	add	r3, r3, #4	@ ivtmp.4599, tmp180,
	b	.L1453	@
.L1450:
	movw	r0, #20680	@ tmp163,
	movw	r2, #22312	@ tmp160,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	ip, #22308	@ tmp161,
	str	r5, [r4, r2]	@ nearest_pic_id, <variable>.CurrSlice.picid_nearpoc
	mvn	r5, #0	@ tmp162,
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	str	r5, [r4, ip]	@ tmp162, <variable>.CurrSlice.picid_refidx0
	beq	.L1472	@,
	mov	r0, r4	@, pH264Ctx
	bl	InitListX	@
	cmp	r0, #0	@,
	beq	.L1456	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35820, tmp162
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1456:
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, r4	@, pH264Ctx
	bl	ReorderListX	@
	mov	r0, r4	@, pH264Ctx
	bl	RepairList	@
	cmp	r0, #0	@,
	movne	r0, r5	@ D.35820, tmp162
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r4	@, pH264Ctx
	bl	FindMinRefIdx	@
	movw	r0, #27036	@ tmp171,
	ldr	r2, [r4, r0]	@ D.35830, <variable>.pListX
	movw	r3, #22308	@ tmp173,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC51	@,
	cmp	r2, #0	@ D.35830,
	movt	r1, #:upper16:.LC51	@,
	ldrne	r2, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrne	r5, [r2, #184]	@ iftmp.605, <variable>.fs_image.image_id
	str	r5, [r4, r3]	@ iftmp.605, <variable>.CurrSlice.picid_refidx0
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, #0	@ D.35820,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1472:
	movw	ip, #20724	@ tmp165,
	movw	r1, #20728	@ tmp167,
	mov	r0, #0	@ tmp166,
	str	r0, [r4, ip]	@ tmp166, <variable>.CurrSlice.listXsize
	str	r0, [r4, r1]	@ tmp166, <variable>.CurrSlice.listXsize
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r8, r1	@ ImgWidth, ImgWidth
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r1, #36	@,
	mov	r0, sp	@,
	mov	r7, r2	@ ImgHeight, ImgHeight
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r6, #0	@ tmp151,
	mov	r1, #0	@ tmp162,
	mov	r2, #5	@ tmp164,
	ldr	ip, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	strb	r6, [sp, #1]	@ tmp151, FspInstCfg.s32TfEnable
	strb	r6, [sp, #2]	@ tmp151, FspInstCfg.s32RprEnable
	str	r8, [sp, #28]	@ ImgWidth, FspInstCfg.s32DispFsWidth
	str	r7, [sp, #32]	@ ImgHeight, FspInstCfg.s32DispFsHeight
	str	r8, [sp, #12]	@ ImgWidth, FspInstCfg.s32DecFsWidth
	str	r7, [sp, #16]	@ ImgHeight, FspInstCfg.s32DecFsHeight
	str	r8, [sp, #20]	@ ImgWidth, FspInstCfg.s32TfFsWidth
	mov	r8, #0	@ tmp169,
	str	r7, [sp, #24]	@ ImgHeight, FspInstCfg.s32TfFsHeight
	movw	r7, #52840	@ tmp173,
	strb	ip, [sp, #0]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r5, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #24	@ <variable>.eCapLevel,
	mov	r5, #1	@ tmp171,
	movne	r6, #26624	@ tmp157,
	ldrne	r6, [r4, r6]	@ <variable>.DPB.size, <variable>.DPB.size
	strb	r1, [sp, #6]	@ tmp162, FspInstCfg.s32ExpectedTfFsNum
	mov	r1, sp	@,
	addne	r6, r6, #1	@ tmp160, <variable>.DPB.size,
	strb	r2, [sp, #7]	@ tmp164, FspInstCfg.s32ExpectedDispFsNum
	uxtbne	r6, r6	@ iftmp.555, tmp160
	strb	r6, [sp, #5]	@ iftmp.555, FspInstCfg.s32ExpectedDecFsNum
	ldr	r3, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	cmp	r3, #24	@ <variable>.eCapLevel,
	strb	r8, [sp, #4]	@ tmp169, FspInstCfg.s32UserDec
	strb	r5, [sp, #3]	@ tmp171, FspInstCfg.s8SubLevelEnable
	ldrneb	r3, [sp, #64]	@ zero_extendqisi2	@ iftmp.556, PmvBlkNum
	moveq	r3, #1	@ iftmp.556,
	strb	r3, [sp, #8]	@ iftmp.556, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.34907,
	bne	.L1478	@,
	ldr	lr, [r4, #0]	@ temp.4630, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r8	@,
	moveq	r0, r5	@ D.34916, tmp171
	bne	.L1482	@,
.L1480:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1478:
	mov	r0, r8	@, tmp169
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.34916,
	b	.L1480	@
.L1482:
	mov	r0, r6	@, D.34907
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.34916,
	b	.L1480	@
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
	ldr	ip, [r1, #148]	@ prephitmp.4671, <variable>.fs_image.format
	mov	r1, #2208	@ tmp165,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #13580	@ tmp159,
	mla	r3, r1, r2, lr	@ tmp166, tmp165, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	bic	r1, ip, #768	@ prephitmp.4671, prephitmp.4671,
	movw	r2, #51340	@ tmp173,
	ldr	ip, [r5, r0]	@ <variable>.SPS, <variable>.SPS
	bic	r1, r1, #3	@ prephitmp.4671, prephitmp.4671,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	mov	lr, #4000	@ tmp169,
	ldr	r3, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	str	r1, [r4, #148]	@ prephitmp.4671, <variable>.fs_image.format
	ldr	r2, [r5, r2]	@ <variable>.frame_rate, <variable>.frame_rate
	mla	r3, lr, r3, ip	@ sps, tmp169, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	r2, r2, asl #10	@ tmp175, <variable>.frame_rate,
	str	r2, [r4, #176]	@ tmp175, <variable>.fs_image.frame_rate
	cmp	r0, #3	@ <variable>.is_used,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.is_used
	b	.L1484	@
.L1488:
	.word	.L1485
	.word	.L1486
	.word	.L1487
	.word	.L1485
.L1485:
	ldrb	r6, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r6, #0	@ <variable>.frame.structure,
	bne	.L1489	@,
	ldr	r6, [r4, #536]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	mov	lr, #3072	@ prephitmp.4649,
	ldr	r7, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	cmp	r6, #0	@ <variable>.MbaffFrameFlag,
	ldr	ip, [r4, #540]	@ pic_type, <variable>.pic_type
	moveq	r6, #512	@ prephitmp.4685,
	movne	r6, #768	@ prephitmp.4685,
	str	r7, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
.L1491:
	ldr	r7, [r4, #452]	@ D.33781, <variable>.top_field.poc
	ldr	r2, [r4, #488]	@ D.33782, <variable>.bottom_field.poc
	cmp	r7, r2	@ D.33781, D.33782
	beq	.L1518	@,
	movgt	r7, #0	@, top_field_first
	movle	r7, #1	@, top_field_first
.L1502:
	movw	r2, #26420	@ tmp191,
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ D.33796, <variable>.PicTimingSEI.pic_struct
	cmp	r2, #3	@ D.33796,
	moveq	r7, #4096	@ prephitmp.4653,
	beq	.L1504	@,
	cmp	r2, #4	@ D.33796,
	movne	r7, r7, asl #12	@ prephitmp.4653, top_field_first,
	moveq	r7, #0	@ prephitmp.4653,
.L1504:
	orr	r2, r6, lr	@ tmp192, prephitmp.4685, prephitmp.4649
	bic	lr, r1, #12288	@ tmp193, prephitmp.4671,
	orr	r1, r2, lr	@ tmp194, tmp192, tmp193
	and	r2, ip, #3	@ tmp195, pic_type,
	orr	lr, r1, r2	@ tmp196, tmp194, tmp195
	orr	ip, lr, r7	@ tmp197, tmp196, prephitmp.4653
	str	ip, [r4, #148]	@ tmp197, <variable>.fs_image.format
.L1484:
	ldrb	lr, [r3, #18]	@ zero_extendqisi2	@ D.33821, <variable>.frame_mbs_only_flag
	mov	r2, #1	@ tmp209,
	str	lr, [r4, #352]	@ D.33821, <variable>.fs_image.optm_inf.IsProgressiveFrm
	str	lr, [r4, #348]	@ D.33821, <variable>.fs_image.optm_inf.IsProgressiveSeq
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_parameters_present_flag,
	ldrne	ip, [r3, #68]	@ iftmp.477, <variable>.vui_seq_parameters.matrix_coefficients
	str	r2, [r4, #356]	@ tmp209, <variable>.fs_image.optm_inf.RealFrmRate
	str	ip, [r4, #360]	@ iftmp.477, <variable>.fs_image.optm_inf.MatrixCoef
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	ble	.L1508	@,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r3, #0	@ <variable>.frame.structure,
	beq	.L1519	@,
.L1508:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r4	@, pFrameStore
	bl	ExchangePts	@
	movw	r3, #26384	@ tmp216,
	ldrsb	r0, [r5, r3]	@ <variable>.FramePackSEI.frame_packing_dec_ok, <variable>.FramePackSEI.frame_packing_dec_ok
	cmp	r0, #0	@ <variable>.FramePackSEI.frame_packing_dec_ok,
	beq	.L1509	@,
	movw	r3, #26400	@ tmp218,
	ldr	r2, [r5, r3]	@ D.33840, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	r2, #3	@ D.33840,
	moveq	r3, #1	@ tmp219,
	streq	r3, [r4, #288]	@ tmp219, <variable>.fs_image.eFramePackingType
	beq	.L1509	@,
	cmp	r2, #4	@ D.33840,
	moveq	r3, #2	@ tmp220,
	streq	r3, [r4, #288]	@ tmp220, <variable>.fs_image.eFramePackingType
	beq	.L1509	@,
	cmp	r2, #5	@ D.33840,
	moveq	r3, #3	@ tmp221,
	streq	r3, [r4, #288]	@ tmp221, <variable>.fs_image.eFramePackingType
	beq	.L1509	@,
	mov	r0, #0	@ tmp222,
	movw	r1, #:lower16:.LC54	@,
	str	r0, [r4, #288]	@ tmp222, <variable>.fs_image.eFramePackingType
	movt	r1, #:upper16:.LC54	@,
	ldr	r2, [r5, r3]	@, <variable>.FramePackSEI.frame_packing_arrangement_type
	bl	dprint_vfmw	@
.L1509:
	movw	r2, #52840	@ tmp226,
	ldr	r1, [r4, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pstLogicFsImage,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r1, r4, #8	@, pFrameStore,
	mov	r2, #392	@,
	bl	memcpy	@
	mov	r3, #0	@ tmp234,
	str	r3, [r5, #300]	@ tmp234, <variable>.ImageDnr.video_standard
	mov	ip, #1	@ tmp237,
	ldrb	r0, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	ip, [r5, #295]	@ tmp237, <variable>.ImageDnr.use_pic_qp_en
	cmp	r0, #0	@ <variable>.frame.structure,
	movne	r0, #4	@, iftmp.479,
	strb	r0, [r5, #288]	@ iftmp.479, <variable>.ImageDnr.pic_structure
	ldr	r1, [r4, #428]	@ D.33861, <variable>.frame.MaxQp
	strb	ip, [r5, #293]	@ tmp237, <variable>.ImageDnr.chroma_format_idc
	str	r1, [r5, #308]	@ D.33861, <variable>.ImageDnr.QP_U
	str	r1, [r5, #304]	@ D.33861, <variable>.ImageDnr.QP_Y
	str	r1, [r5, #312]	@ D.33861, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1519:
	cmp	r0, #3	@ <variable>.is_used,
	ldreq	r3, [r4, #148]	@ <variable>.fs_image.format, <variable>.fs_image.format
	biceq	r3, r3, #768	@ tmp215, <variable>.fs_image.format,
	streq	r3, [r4, #148]	@ tmp215, <variable>.fs_image.format
	b	.L1508	@
.L1487:
	ldr	ip, [r4, #540]	@ <variable>.pic_type, <variable>.pic_type
	ldr	lr, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	and	r2, ip, #3	@ tmp198, <variable>.pic_type,
	orr	r1, r1, r2	@ tmp200, prephitmp.4671, tmp198
	orr	ip, r1, #2816	@ tmp201, tmp200,
	str	lr, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	ip, [r4, #148]	@ tmp201, <variable>.fs_image.format
	b	.L1484	@
.L1486:
	ldr	lr, [r4, #540]	@ <variable>.pic_type, <variable>.pic_type
	ldr	r2, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	and	ip, lr, #3	@ tmp203, <variable>.pic_type,
	orr	lr, r1, ip	@ tmp205, prephitmp.4671, tmp203
	orr	r1, lr, #1792	@ tmp206, tmp205,
	str	r2, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	r1, [r4, #148]	@ tmp206, <variable>.fs_image.format
	b	.L1484	@
.L1489:
	movw	sl, #52836	@ tmp180,
	ldr	r8, [r4, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldr	r2, [r5, sl]	@ D.33765, <variable>.out_error_thr
	cmp	r8, r2	@ <variable>.top_field.err_level, D.33765
	bhi	.L1520	@,
	ldr	sl, [r4, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.33765, <variable>.bottom_field.err_level
	bcc	.L1495	@,
.L1493:
	ldr	r6, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	mov	lr, #3	@ valid_field,
	ldr	ip, [r4, #540]	@ pic_type, <variable>.pic_type
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	str	r6, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
.L1496:
	ldrb	r6, [r4, #3]	@ zero_extendqisi2	@ D.33773, <variable>.mode_skip_flag
	cmp	r6, #1	@ D.33773,
	streq	sl, [r4, #188]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	moveq	lr, #2	@ valid_field,
	beq	.L1498	@,
	cmp	r6, #2	@ D.33773,
	streq	r8, [r4, #188]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r7	@ pic_type, pic_type
	moveq	lr, #1	@ valid_field,
.L1498:
	mov	lr, lr, asl #10	@ prephitmp.4649, valid_field,
	mov	r6, #768	@ prephitmp.4685,
	str	r7, [r4, #140]	@ pic_type, <variable>.fs_image.top_fld_type
	str	r2, [r4, #144]	@ <variable>.bottom_field.pic_type, <variable>.fs_image.bottom_fld_type
	b	.L1491	@
.L1495:
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	mov	lr, #1	@ valid_field,
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	str	r8, [r4, #188]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	mov	ip, r7	@ pic_type, pic_type
	b	.L1496	@
.L1518:
	ldr	r2, [r4, #152]	@ <variable>.fs_image.image_width, <variable>.fs_image.image_width
	cmp	r2, #720	@ <variable>.fs_image.image_width,
	movne	r7, #1	@ top_field_first,
	bne	.L1502	@,
	ldr	r7, [r4, #156]	@ <variable>.fs_image.image_height, <variable>.fs_image.image_height
	subs	r7, r7, #480	@ top_field_first, <variable>.fs_image.image_height,
	movne	r7, #1	@ top_field_first
	b	.L1502	@
.L1520:
	ldr	sl, [r4, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.33765, <variable>.bottom_field.err_level
	bcc	.L1493	@,
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	mov	lr, #2	@ valid_field,
	str	sl, [r4, #188]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	mov	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	b	.L1496	@
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
	ldr	r3, [r0, r5, asl #2]	@ D.33539, <variable>.DPB.fs
	cmp	r3, #0	@ D.33539,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r3, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	movw	r1, #26904	@ tmp152,
	ldr	r2, [r0, r1]	@ D.33544, <variable>.APC.used_size
	movw	r1, #26904	@ tmp153,
	add	lr, r3, #6656	@ tmp144, <variable>.apc_idc,
	ldr	r3, [r4, r5, asl #2]	@ tmp158, <variable>.DPB.fs
	add	ip, lr, #4	@ tmp144, tmp144,
	cmp	r2, #0	@ D.33544,
	subne	r2, r2, #1	@ iftmp.466, D.33544,
	str	r2, [r4, r1]	@ iftmp.466, <variable>.APC.used_size
	add	r8, r0, ip, asl #2	@, tmp149, pH264Ctx, tmp144,
	mov	r0, #0	@ tmp151,
	str	r0, [r8, #4]	@ tmp151, <variable>.APC.is_used
	movw	r8, #52840	@ tmp154,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogic
	beq	.L1525	@,
	ldrsb	r2, [r0, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r2, #3	@ <variable>.s32DispState,
	beq	.L1526	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp165, <variable>.DPB.fs
	mov	r2, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L1526:
	ldr	lr, [r4, r5, asl #2]	@ tmp171, <variable>.DPB.fs
	movw	r3, #52840	@ tmp167,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
.L1525:
	ldr	r3, [r4, r5, asl #2]	@ tmp175, <variable>.DPB.fs
	mov	ip, #0	@ tmp176,
	movw	r1, #26628	@ tmp188,
	strb	ip, [r3, #1]	@ tmp176, <variable>.is_used
	ldr	lr, [r4, r5, asl #2]	@ tmp180, <variable>.DPB.fs
	strb	ip, [lr, #4]	@ tmp176, <variable>.is_in_dpb
	ldr	r2, [r4, r5, asl #2]	@ tmp185, <variable>.DPB.fs
	strb	ip, [r2, #2]	@ tmp176, <variable>.is_reference
	ldr	r0, [r4, r1]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	sub	ip, r0, #1	@ D.33560, <variable>.DPB.used_size,
	cmp	r6, ip	@ pos, D.33560
	bcs	.L1527	@,
	add	r7, r7, #17	@ tmp190, tmp202,
	add	r1, r6, #1	@ i, pos,
	cmp	r1, ip	@ i, D.33560
	mvn	r2, r6	@ tmp204, pos
	add	r7, r4, r7, asl #2	@, ivtmp.4720, pH264Ctx, tmp190,
	add	r6, r2, ip	@ tmp203, tmp204, D.33560
	and	r6, r6, #1	@ tmp205, tmp203,
	add	r2, r7, #4	@ ivtmp.4720, ivtmp.4720,
	ldr	r0, [r7, #0]	@ tmp193, <variable>.DPB.fs
	str	r0, [r7, #-4]	@ tmp193, <variable>.DPB.fs
	bcs	.L1527	@,
	cmp	r6, #0	@ tmp205,
	beq	.L1528	@,
	ldr	lr, [r2, #0]	@ tmp214, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	cmp	r1, ip	@ i, D.33560
	str	lr, [r2, #-4]	@ tmp214, <variable>.DPB.fs
	add	r2, r2, #4	@ ivtmp.4720, ivtmp.4720,
	bcs	.L1527	@,
.L1528:
	ldr	r0, [r2, #0]	@ tmp211, <variable>.DPB.fs
	add	r1, r1, #2	@ i, i,
	ldr	r3, [r2, #4]	@ tmp213, <variable>.DPB.fs
	cmp	r1, ip	@ i, D.33560
	mov	lr, r2	@ tmp207, ivtmp.4720
	str	r0, [r2, #-4]	@ tmp211, <variable>.DPB.fs
	str	r3, [lr], #4	@ tmp213, <variable>.DPB.fs
	add	r2, lr, #4	@ ivtmp.4720, tmp207,
	bcc	.L1528	@,
.L1527:
	movw	lr, #26628	@ tmp197,
	add	r0, ip, #6592	@ tmp194, D.33560,
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
	beq	.L1584	@,
	movw	r3, #26628	@ tmp148,
	ldr	sl, [r4, r3]	@ k, <variable>.DPB.used_size
	cmp	sl, #0	@ k,
	beq	.L1539	@,
	movw	r6, #6608	@ tmp189,
	sub	r1, sl, #1	@ tmp194, k,
	ldr	r7, [r4, r6, asl #2]	@ tmp153, <variable>.DPB.fs
	movw	r8, #52840	@ tmp191,
	and	r2, r1, #1	@, tmp194,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r2, [sp, #4]	@, %sfp
	mov	r5, #0	@ j,
	ldr	r1, [r7, #508]	@, <variable>.logic_fs_id
	mvn	fp, #0	@ tmp192,
	bl	FSP_GetLogicFs	@
	mov	r9, r5	@ tmp193, j
	cmp	r0, #0	@ pstLogicFs
	beq	.L1577	@,
	ldrsh	r7, [r0, #0]	@ tmp217,* pstLogicFs
	cmp	r7, #0	@ tmp217,
	bne	.L1549	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4750, <variable>.DPB.fs
	ldrb	lr, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #0	@ <variable>.is_reference,
	bne	.L1550	@,
	ldrsb	r2, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	r2, #0	@ <variable>.s32IsRef,
	beq	.L1550	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	mov	r2, r5	@, tmp193
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4750, <variable>.DPB.fs
.L1550:
	str	fp, [r3, #508]	@ tmp192, <variable>.logic_fs_id
	ldr	r1, [r4, r6, asl #2]	@ tmp221, <variable>.DPB.fs
	strb	r9, [r1, #2]	@ tmp193, <variable>.is_reference
.L1577:
	ldr	ip, [r4, r6, asl #2]	@ temp.4766, <variable>.DPB.fs
	ldr	r3, [ip, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, #1	@ <variable>.eFoState,
	movne	r0, #0	@, tmp225
	moveq	r0, #1	@, tmp225
	strb	r0, [ip, #4]	@ tmp225, <variable>.is_in_dpb
.L1549:
	ldr	r3, [r4, r6, asl #2]	@ temp.4770, <variable>.DPB.fs
	ldrb	r7, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r7, #0	@ <variable>.is_reference,
	beq	.L1568	@,
.L1551:
	mov	r5, #1	@ j,
.L1569:
	mov	r7, #1	@ i,
	cmp	sl, r7	@ k, i
	bls	.L1539	@,
	ldr	r6, [sp, #4]	@, %sfp
	cmp	r6, #0	@,
	beq	.L1545	@,
	add	r1, r5, #6592	@ tmp236, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r1, #16	@ tmp236, tmp236,
	ldr	ip, [r4, r6, asl #2]	@ tmp237, <variable>.DPB.fs
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1585	@,
	ldrsh	lr, [r0, #0]	@ tmp243,* pstLogicFs
	cmp	lr, #0	@ tmp243,
	beq	.L1586	@,
.L1560:
	ldr	r3, [r4, r6, asl #2]	@ temp.4770, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1562	@,
.L1575:
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1562	@,
	ldr	ip, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	ip, #1	@ <variable>.eFoState,
	beq	.L1562	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	add	r7, r7, #1	@ i, tmp197,
	bl	RemoveFrameStoreOutDPB	@
	cmp	sl, r7	@ k, i
	bls	.L1539	@,
.L1545:
	add	r6, r5, #6592	@ tmp201, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r6, #16	@ tmp201, tmp201,
	ldr	ip, [r4, r6, asl #2]	@ tmp202, <variable>.DPB.fs
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1540	@,
	ldrsh	lr, [r0, #0]	@ tmp155,* pstLogicFs
	cmp	lr, #0	@ tmp155,
	bne	.L1541	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4750, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1542	@,
	ldrsb	r1, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	r1, #0	@ <variable>.s32IsRef,
	bne	.L1587	@,
.L1542:
	str	fp, [r3, #508]	@ tmp192, <variable>.logic_fs_id
	ldr	ip, [r4, r6, asl #2]	@ tmp168, <variable>.DPB.fs
	strb	r9, [ip, #2]	@ tmp193, <variable>.is_reference
	ldr	r3, [r4, r6, asl #2]	@ temp.4766, <variable>.DPB.fs
	ldr	r2, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r2, #1	@ <variable>.eFoState,
	movne	r0, #0	@, tmp174
	moveq	r0, #1	@, tmp174
	strb	r0, [r3, #4]	@ tmp174, <variable>.is_in_dpb
.L1541:
	ldr	r3, [r4, r6, asl #2]	@ temp.4770, <variable>.DPB.fs
	ldrb	r6, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #0	@ <variable>.is_reference,
	bne	.L1543	@,
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1543	@,
	ldr	ip, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	ip, #1	@ <variable>.eFoState,
	beq	.L1543	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	bl	RemoveFrameStoreOutDPB	@
.L1544:
	add	r2, r5, #6592	@ tmp210, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r2, #16	@ tmp210, tmp210,
	add	r7, r7, #1	@ tmp197, i,
	ldr	r3, [r4, r6, asl #2]	@ tmp211, <variable>.DPB.fs
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1578	@,
	ldrsh	r2, [r0, #0]	@ tmp262,* pstLogicFs
	cmp	r2, #0	@ tmp262,
	bne	.L1560	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4750, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1561	@,
	ldrsb	lr, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L1588	@,
.L1561:
	str	fp, [r3, #508]	@ tmp192, <variable>.logic_fs_id
	ldr	ip, [r4, r6, asl #2]	@ tmp266, <variable>.DPB.fs
	strb	r9, [ip, #2]	@ tmp193, <variable>.is_reference
.L1578:
	ldr	r0, [r4, r6, asl #2]	@ temp.4766, <variable>.DPB.fs
	ldr	r3, [r0, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, #1	@ <variable>.eFoState,
	movne	r1, #0	@, tmp270
	moveq	r1, #1	@, tmp270
	strb	r1, [r0, #4]	@ tmp270, <variable>.is_in_dpb
	ldr	r3, [r4, r6, asl #2]	@ temp.4770, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	beq	.L1575	@,
.L1562:
	add	r7, r7, #1	@ i, tmp197,
	add	r5, r5, #1	@ j, j,
	cmp	sl, r7	@ k, i
	bhi	.L1545	@,
.L1539:
	mov	r0, #0	@ D.33576,
.L1538:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1543:
	add	r5, r5, #1	@ j, j,
	b	.L1544	@
.L1540:
	ldr	r1, [r4, r6, asl #2]	@ temp.4767, <variable>.DPB.fs
	ldr	r0, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	movne	lr, #0	@, tmp179
	moveq	lr, #1	@, tmp179
	strb	lr, [r1, #4]	@ tmp179, <variable>.is_in_dpb
	b	.L1541	@
.L1568:
	ldrb	r1, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r1, #0	@ <variable>.is_in_dpb,
	bne	.L1551	@,
	ldr	lr, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	lr, #1	@ <variable>.eFoState,
	beq	.L1551	@,
	strb	r1, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L1569	@
.L1586:
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4750, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1555	@,
	ldrsb	lr, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	beq	.L1555	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4750, <variable>.DPB.fs
.L1555:
	str	fp, [r3, #508]	@ tmp192, <variable>.logic_fs_id
	ldr	r3, [r4, r6, asl #2]	@ tmp247, <variable>.DPB.fs
	strb	r9, [r3, #2]	@ tmp193, <variable>.is_reference
	ldr	r1, [r4, r6, asl #2]	@ temp.4766, <variable>.DPB.fs
	ldr	r0, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	movne	ip, #0	@, tmp251
	moveq	ip, #1	@, tmp251
	strb	ip, [r1, #4]	@ tmp251, <variable>.is_in_dpb
	b	.L1560	@
.L1588:
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4750, <variable>.DPB.fs
	b	.L1561	@
.L1587:
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4750, <variable>.DPB.fs
	b	.L1542	@
.L1585:
	ldr	r3, [r4, r6, asl #2]	@ temp.4767, <variable>.DPB.fs
	ldr	r2, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r2, r7	@ <variable>.eFoState,
	movne	r0, #0	@, tmp242
	moveq	r0, #1	@, tmp242
	strb	r0, [r3, #4]	@ tmp242, <variable>.is_in_dpb
	b	.L1560	@
.L1584:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC55	@,
	ldr	r2, .L1589	@,
	movt	r1, #:upper16:.LC55	@,
	movw	r3, #1290	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33576,
	b	.L1538	@
.L1590:
	.align	2
.L1589:
	.word	.LANCHOR0+136
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
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ prephitmp.4788, <variable>.is_used
	tst	r3, #1	@ prephitmp.4788,
	beq	.L1592	@,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp142,
	strb	r2, [r1, #438]	@ tmp142, <variable>.top_field.is_short_term
	and	ip, ip, #2	@ tmp140, <variable>.is_reference,
	strb	r2, [r1, #437]	@ tmp142, <variable>.top_field.is_long_term
	strb	ip, [r1, #2]	@ tmp140, <variable>.is_reference
.L1592:
	tst	r3, #2	@ prephitmp.4788,
	beq	.L1593	@,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp151,
	strb	r2, [r1, #474]	@ tmp151, <variable>.bottom_field.is_short_term
	and	ip, ip, #1	@ tmp149, <variable>.is_reference,
	strb	r2, [r1, #473]	@ tmp151, <variable>.bottom_field.is_long_term
	strb	ip, [r1, #2]	@ tmp149, <variable>.is_reference
.L1593:
	cmp	r3, #3	@ prephitmp.4788,
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
	bcs	.L1600	@,
.L1597:
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
.L1600:
	movw	lr, #26432	@ tmp138,
	ldr	r1, [r0, lr]	@, <variable>.DPB.fs
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	RemoveFrameStoreOutDPB	@
	b	.L1597	@
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
	ldr	sl, [r4, r0]	@ D.34457, <variable>.DPB.used_size
	cmp	sl, #0	@ D.34457,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	add	r6, r4, #26368	@ ivtmp.4853, pH264Ctx,
	sub	r8, sl, #1	@ tmp149, D.34457,
	and	r8, r8, #1	@ tmp151, tmp149,
	ldr	r5, [r6, #64]!	@ D.34450, <variable>.DPB.fs
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1618	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.34457, i
	add	r6, r6, #4	@ ivtmp.4853, ivtmp.4853,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1622:
	cmp	r8, #0	@ tmp151,
	beq	.L1604	@,
	ldr	r5, [r6, #0]	@ D.34450, <variable>.DPB.fs
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #0	@ <variable>.is_reference,
	bne	.L1619	@,
.L1609:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.4853, ivtmp.4853,
	cmp	sl, r7	@ D.34457, i
	bhi	.L1604	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1603:
	ldr	r5, [r6, #4]	@ D.34450, <variable>.DPB.fs
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1620	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.4853, tmp153,
	cmp	sl, r7	@ D.34457, i
	bls	.L1621	@,
.L1604:
	ldr	r5, [r6, #0]	@ D.34450, <variable>.DPB.fs
	add	r7, r7, #1	@ tmp152, i,
	add	r8, r6, #4	@ tmp153, ivtmp.4853,
	ldrb	ip, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L1603	@,
	mov	r0, r5	@, D.34450
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1603	@,
.L1617:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, D.34450
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	UpdateReflist	@
.L1620:
	mov	r0, r5	@, D.34450
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1617	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.4853, tmp153,
	cmp	sl, r7	@ D.34457, i
	bhi	.L1604	@,
.L1621:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1618:
	mov	r0, r5	@, D.34450
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1617	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.34457, i
	add	r6, r6, #4	@ ivtmp.4853, ivtmp.4853,
	bhi	.L1622	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1619:
	mov	r0, r5	@, D.34450
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1609	@,
	b	.L1617	@
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
	add	r6, r0, #26368	@ ivtmp.4882, pH264Ctx,
	mov	r4, #0	@ i,
	add	r6, r6, #128	@ ivtmp.4882, ivtmp.4882,
.L1625:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r6], #4	@, <variable>.DPB.fs_ref
	bl	UnMarkFrameStoreRef	@
	ldr	r0, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r4, r4, #1	@ i, i,
	cmp	r0, r4	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L1625	@,
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
	add	r4, r0, #26368	@ ivtmp.4916, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #192	@ ivtmp.4916, ivtmp.4916,
	b	.L1631	@
.L1630:
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1633:
	ldr	r2, [r6, r8]	@ max_long_term_frame_idx_plus1, <variable>.DPB.max_long_term_pic_idx
.L1631:
	ldr	r1, [r4, #0]	@ D.33502, <variable>.DPB.fs_ltref
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.4916, ivtmp.4916,
	ldr	r0, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r0, r2	@ <variable>.long_term_frame_idx, max_long_term_frame_idx_plus1
	bcc	.L1630	@,
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	bhi	.L1633	@,
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
	beq	.L1635	@,
	movw	r1, #26636	@ tmp153,
	ldr	r7, [r0, r1]	@ D.33318, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, #0	@ D.33318,
	beq	.L1645	@,
	add	r4, r0, #26368	@ ivtmp.4961, pH264Ctx,
	sub	r5, r7, #1	@ tmp238, D.33318,
	and	r6, r5, #1	@ tmp240, tmp238,
	mov	ip, #0	@ i,
	ldr	r1, [r4, #192]!	@ temp.4965, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4966, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4966,
	beq	.L1655	@,
	ldr	r8, [r1, #436]	@ tmp261,
	bic	r8, r8, #-16777216	@ tmp262, tmp261,
	bic	r8, r8, #255	@ tmp262, tmp262,
	cmp	r8, #256	@ tmp262,
	beq	.L1678	@,
.L1655:
	tst	r3, #2	@ temp.4966,
	beq	.L1656	@,
	ldr	r3, [r1, #472]	@ tmp265,
	bic	r3, r3, #-16777216	@ tmp266, tmp265,
	bic	r3, r3, #255	@ tmp266, tmp266,
	cmp	r3, #256	@ tmp266,
	beq	.L1679	@,
.L1656:
	mov	ip, #1	@ i,
	cmp	r7, ip	@ D.33318, i
	add	r4, r4, #4	@ ivtmp.4961, ivtmp.4961,
	bls	.L1645	@,
	cmp	r6, #0	@ tmp240,
	beq	.L1644	@,
	ldr	r1, [r4, #0]	@ temp.4965, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4966, <variable>.is_reference
	ands	r5, r3, ip	@ tmp232, temp.4966,
	beq	.L1658	@,
	ldr	r6, [r1, #436]	@ tmp268,
	bic	r6, r6, #-16777216	@ tmp269, tmp268,
	bic	r6, r6, #255	@ tmp269, tmp269,
	cmp	r6, #256	@ tmp269,
	beq	.L1680	@,
.L1658:
	tst	r3, #2	@ temp.4966,
	beq	.L1659	@,
	ldr	r3, [r1, #472]	@ tmp272,
	bic	r3, r3, #-16777216	@ tmp273, tmp272,
	bic	r3, r3, #255	@ tmp273, tmp273,
	cmp	r3, #256	@ tmp273,
	beq	.L1681	@,
.L1659:
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.4961, ivtmp.4961,
	cmp	r7, ip	@ D.33318, i
	bhi	.L1644	@,
.L1645:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L1635:
	movw	ip, #26636	@ tmp154,
	ldr	r6, [r0, ip]	@ temp.4967, <variable>.DPB.ltref_frames_in_buffer
	cmp	r6, #0	@ temp.4967,
	beq	.L1645	@,
	add	r3, r0, #26368	@ ivtmp.4956, pH264Ctx,
	sub	r1, r6, #1	@ tmp233, temp.4967,
	and	r4, r1, #1	@ tmp235, tmp233,
	ldr	r1, [r3, #192]!	@ D.33307, <variable>.DPB.fs_ltref
	ldr	ip, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	ip, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1682	@,
.L1648:
	mov	ip, #1	@ i.4964,
	cmp	ip, r6	@ i.4964, temp.4967
	add	r3, r3, #4	@ ivtmp.4956, ivtmp.4956,
	bcs	.L1645	@,
	cmp	r4, #0	@ tmp235,
	beq	.L1639	@,
	ldr	r1, [r3, #0]	@ D.33307, <variable>.DPB.fs_ltref
	ldr	r4, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1683	@,
.L1650:
	add	ip, ip, #1	@ i.4964, i.4964,
	add	r3, r3, #4	@ ivtmp.4956, ivtmp.4956,
	cmp	ip, r6	@ i.4964, temp.4967
	bcc	.L1639	@,
	b	.L1645	@
.L1638:
	ldr	r1, [r3, #4]	@ D.33307, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1684	@,
.L1653:
	add	ip, ip, #1	@ i.4964, tmp236,
	add	r3, r5, #4	@ ivtmp.4956, tmp237,
	cmp	ip, r6	@ i.4964, temp.4967
	bcs	.L1645	@,
.L1639:
	ldr	r1, [r3, #0]	@ D.33307, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ tmp236, i.4964,
	add	r5, r3, #4	@ tmp237, ivtmp.4956,
	ldr	r4, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1638	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1638	@,
	ldr	r4, [r1, #400]	@ tmp160,
	bic	r4, r4, #-16777216	@ tmp158, tmp160,
	bic	r4, r4, #255	@ tmp158, tmp158,
	cmp	r4, #256	@ tmp158,
	beq	.L1671	@,
	ldr	r1, [r3, #4]	@ D.33307, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1653	@,
.L1684:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #3	@ <variable>.is_reference,
	bne	.L1653	@,
	ldr	r3, [r1, #400]	@ tmp259,
	bic	r3, r3, #-16777216	@ tmp260, tmp259,
	bic	r3, r3, #255	@ tmp260, tmp260,
	cmp	r3, #256	@ tmp260,
	bne	.L1653	@,
	b	.L1671	@
.L1689:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	beq	.L1672	@,
.L1640:
	tst	r3, #2	@ temp.4966,
	beq	.L1642	@,
	ldr	r3, [r1, #472]	@ tmp200,
	bic	r3, r3, #-16777216	@ tmp198, tmp200,
	bic	r3, r3, #255	@ tmp198, tmp198,
	cmp	r3, #256	@ tmp198,
	beq	.L1685	@,
.L1642:
	ldr	r1, [r4, #4]	@ temp.4965, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ tmp242, ivtmp.4961,
	mov	r8, ip	@ tmp241, i
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4966, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4966,
	beq	.L1662	@,
	ldr	r6, [r1, #436]	@ tmp275,
	bic	r6, r6, #-16777216	@ tmp276, tmp275,
	bic	r6, r6, #255	@ tmp276, tmp276,
	cmp	r6, #256	@ tmp276,
	beq	.L1686	@,
.L1662:
	tst	r3, #2	@ temp.4966,
	beq	.L1663	@,
	ldr	r3, [r1, #472]	@ tmp279,
	bic	r3, r3, #-16777216	@ tmp280, tmp279,
	bic	r3, r3, #255	@ tmp280, tmp280,
	cmp	r3, #256	@ tmp280,
	beq	.L1687	@,
.L1663:
	add	ip, r8, #1	@ i, tmp241,
	add	r4, r4, #4	@ ivtmp.4961, tmp242,
	cmp	r7, ip	@ D.33318, i
	bls	.L1645	@,
.L1644:
	ldr	r1, [r4, #0]	@ temp.4965, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4966, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4966,
	beq	.L1640	@,
	ldr	r6, [r1, #436]	@ tmp165,
	bic	r6, r6, #-16777216	@ tmp163, tmp165,
	bic	r6, r6, #255	@ tmp163, tmp163,
	cmp	r6, #256	@ tmp163,
	bne	.L1640	@,
	b	.L1689	@
.L1685:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1642	@,
.L1673:
	add	r2, ip, #6592	@ tmp204, i,
	strb	r5, [r1, #2]	@ tmp232, <variable>.is_reference
	add	ip, r2, #48	@ tmp204, tmp204,
	mov	r2, #0	@ tmp207,
	ldr	r3, [r0, ip, asl #2]	@ tmp206, <variable>.DPB.fs_ltref
	strb	r2, [r3, #473]	@ tmp207, <variable>.bottom_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4943, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.33353, <variable>.frame.structure
	cmp	r1, #3	@ D.33353,
	cmpne	r1, r2	@, D.33353,
	beq	.L1676	@,
.L1643:
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	ldreq	r1, [r3, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	addeq	r3, r1, #12800	@ tmp228, <variable>.pmv_address_idc,
	addeq	ip, r3, #12	@ tmp228, tmp228,
	streq	r2, [r0, ip, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	b	.L1645	@
.L1686:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1662	@,
.L1672:
	add	ip, ip, #6592	@ tmp169, i,
	and	r2, r3, #2	@ tmp167, temp.4966,
	add	ip, ip, #48	@ tmp169, tmp169,
	strb	r2, [r1, #2]	@ tmp167, <variable>.is_reference
	mov	r2, #0	@ tmp172,
	ldr	r3, [r0, ip, asl #2]	@ tmp171, <variable>.DPB.fs_ltref
	strb	r2, [r3, #437]	@ tmp172, <variable>.top_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4968, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.33333, <variable>.frame.structure
	cmp	r1, #3	@ D.33333,
	cmpne	r1, r2	@, D.33333,
	bne	.L1643	@,
.L1676:
	strb	r2, [r3, #402]	@ tmp207, <variable>.frame.is_short_term
	ldr	r1, [r0, ip, asl #2]	@ tmp222, <variable>.DPB.fs_ltref
	strb	r2, [r1, #401]	@ tmp207, <variable>.frame.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4943, <variable>.DPB.fs_ltref
	b	.L1643	@
.L1687:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1663	@,
	b	.L1673	@
.L1678:
	ldr	r8, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r8, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1655	@,
	b	.L1672	@
.L1679:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1656	@,
	b	.L1673	@
.L1680:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1658	@,
	b	.L1672	@
.L1681:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1659	@,
	b	.L1673	@
.L1682:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L1648	@,
	ldr	ip, [r1, #400]	@ tmp252,
	bic	ip, ip, #-16777216	@ tmp253, tmp252,
	bic	ip, ip, #255	@ tmp253, tmp253,
	cmp	ip, #256	@ tmp253,
	bne	.L1648	@,
.L1671:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	UnMarkFrameStoreRef	@
.L1683:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1650	@,
	ldr	r4, [r1, #400]	@ tmp256,
	bic	r4, r4, #-16777216	@ tmp257, tmp256,
	bic	r4, r4, #255	@ tmp257, tmp257,
	cmp	r4, #256	@ tmp257,
	bne	.L1650	@,
	b	.L1671	@
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
	ldr	ip, [r0, ip]	@ D.33215, <variable>.DPB.ltref_frames_in_buffer
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	cmp	ip, #0	@ D.33215,
	beq	.L1697	@,
	add	r5, r0, #26368	@ ivtmp.5004, pH264Ctx,
	sub	r4, ip, #1	@ tmp146, D.33215,
	and	r7, r4, #1	@ tmp148, tmp146,
	ldr	r4, [r5, #192]!	@ D.33199, <variable>.DPB.fs_ltref
	ldr	r6, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1724	@,
.L1699:
	mov	r6, #1	@ i,
	cmp	r6, ip	@ i, D.33215
	add	r5, r5, #4	@ ivtmp.5004, ivtmp.5004,
	bcs	.L1697	@,
	cmp	r7, #0	@ tmp148,
	beq	.L1696	@,
	ldr	r4, [r5, #0]	@ D.33199, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1725	@,
.L1706:
	add	r6, r6, #1	@ i, tmp149,
	add	r5, r5, #4	@ ivtmp.5004, tmp150,
	cmp	r6, ip	@ i, D.33215
	bcs	.L1697	@,
.L1696:
	ldr	r4, [r5, #0]	@ D.33199, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1726	@,
.L1692:
	ldr	r4, [r5, #4]	@ D.33199, <variable>.DPB.fs_ltref
	add	r6, r6, #1	@ tmp149, i,
	add	r5, r5, #4	@ tmp150, ivtmp.5004,
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1706	@,
	cmp	r2, #1	@ structure,
	beq	.L1714	@,
.L1723:
	cmp	r2, #2	@ structure,
	bne	.L1706	@,
	ldrb	r7, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1695	@,
.L1717:
	cmp	r4, r1	@ D.33199, pFS
	beq	.L1706	@,
.L1695:
	mov	r1, r4	@, D.33199
	ldmfd	sp!, {r4, r5, r6, r7}
	b	UnMarkFrameStoreRef	@
.L1725:
	cmp	r2, r6	@ structure,
	bne	.L1723	@,
.L1714:
	ldrb	r7, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1717	@,
	b	.L1695	@
.L1726:
	cmp	r2, #1	@ structure,
	beq	.L1727	@,
	cmp	r2, #2	@ structure,
	bne	.L1692	@,
	ldrb	r7, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1695	@,
.L1719:
	cmp	r4, r1	@ D.33199, pFS
	beq	.L1692	@,
	b	.L1695	@
.L1727:
	ldrb	r7, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1719	@,
	b	.L1695	@
.L1697:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L1724:
	cmp	r2, #1	@ structure,
	beq	.L1712	@,
	cmp	r2, #2	@ structure,
	bne	.L1699	@,
	ldrb	r6, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #0	@ <variable>.top_field.is_long_term,
	beq	.L1695	@,
.L1716:
	cmp	r4, r1	@ D.33199, pFS
	beq	.L1699	@,
	b	.L1695	@
.L1712:
	ldrb	r6, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1716	@,
	b	.L1695	@
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
	ldr	r2, [r0, r3]	@ D.33187, <variable>.DPB.ltref_frames_in_buffer
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	cmp	r2, #0	@ D.33187,
	beq	.L1734	@,
	movw	r3, #26560	@ tmp140,
	ldr	r3, [r0, r3]	@ D.33183, <variable>.DPB.fs_ltref
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1730	@,
	tst	r2, #1	@ D.33187,
	add	ip, r0, #26368	@ tmp143, pH264Ctx,
	add	r4, ip, #196	@ ivtmp.5033, tmp143,
	mov	r5, #0	@ i,
	bne	.L1732	@,
	ldr	r3, [r4, #0]	@ D.33183, <variable>.DPB.fs_ltref
	add	r4, ip, #200	@ ivtmp.5033, tmp143,
	mov	r5, #1	@ i,
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1732	@,
.L1730:
	mov	r1, r3	@, D.33183
	ldmfd	sp!, {r4, r5, r6}
	b	UnMarkFrameStoreRef	@
.L1733:
	ldr	r3, [ip], #4	@ D.33183, <variable>.DPB.fs_ltref
	ldr	r6, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1730	@,
	ldr	r3, [r4, #4]	@ D.33183, <variable>.DPB.fs_ltref
	add	r4, ip, #4	@ ivtmp.5033, tmp148,
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1730	@,
.L1732:
	add	r3, r5, #1	@ tmp147, i,
	mov	ip, r4	@ tmp148, ivtmp.5033
	cmp	r2, r3	@ D.33187, tmp147
	add	r5, r3, #1	@ i, tmp147,
	bhi	.L1733	@,
.L1734:
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
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.33523, <variable>.structure
	mov	r4, r1	@ pCurrPic, pCurrPic
	cmp	r2, #0	@ D.33523,
	beq	.L1748	@,
	mov	r3, r5	@, long_term_frame_idx
	ldr	r1, [r1, #408]	@, <variable>.frame_store
	bl	UnMarkLTFldByFrmIdx	@
	mov	r0, #1	@ tmp138,
	mov	r3, #0	@ tmp140,
	str	r5, [r4, #420]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	strb	r0, [r4, #4]	@ tmp138, <variable>.is_long_term
	strb	r3, [r4, #5]	@ tmp140, <variable>.is_short_term
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1748:
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
	bne	.L1750	@,
	ldr	r3, [r5, #416]	@ <variable>.frame_num, <variable>.frame_num
	mov	r1, r7	@, long_term_frame_idx
	mvn	r4, r2	@ tmp144, difference_of_pic_nums_minus1
	add	r4, r4, r3	@ picNumX, tmp144, <variable>.frame_num
	bl	UnMarkLTFrmByFrmIdx	@
.L1751:
	mov	r0, r6	@, pH264Ctx
	mov	r1, r7	@, long_term_frame_idx
	mov	r2, r4	@, picNumX
	mov	r3, r5	@, pCurrPic
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MarkPicLTRef	@
.L1750:
	movw	ip, #26632	@ tmp150,
	ldr	r0, [r5, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r8, [r6, ip]	@ D.33492, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ D.33492,
	rsb	r4, r2, r0, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	beq	.L1751	@,
	add	r3, r6, #26368	@ ivtmp.5091, pH264Ctx,
	sub	r2, r8, #1	@ tmp162, D.33492,
	and	r0, r2, #1	@ tmp164, tmp162,
	ldr	r1, [r3, #128]!	@ D.33468, <variable>.DPB.fs_ref
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ D.33470, <variable>.is_reference
	tst	r2, #1	@ D.33470,
	beq	.L1757	@,
	ldr	ip, [r1, #436]	@ tmp175,
	bic	ip, ip, #-16777216	@ tmp176, tmp175,
	bic	ip, ip, #255	@ tmp176, tmp176,
	cmp	ip, #65536	@ tmp176,
	beq	.L1779	@,
.L1757:
	tst	r2, #2	@ D.33470,
	beq	.L1758	@,
	ldr	r2, [r1, #472]	@ tmp179,
	bic	ip, r2, #-16777216	@ tmp180, tmp179,
	bic	r2, ip, #255	@ tmp180, tmp180,
	cmp	r2, #65536	@ tmp180,
	beq	.L1780	@,
.L1758:
	mov	r2, #1	@ i,
	cmp	r2, r8	@ i, D.33492
	add	r3, r3, #4	@ ivtmp.5091, ivtmp.5091,
	bcs	.L1751	@,
	cmp	r0, #0	@ tmp164,
	beq	.L1754	@,
	ldr	r1, [r3, #0]	@ D.33468, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.33470, <variable>.is_reference
	tst	r0, #1	@ D.33470,
	bne	.L1769	@,
.L1764:
	tst	r0, #2	@ D.33470,
	beq	.L1765	@,
	ldr	r0, [r1, #472]	@ tmp195,
	bic	ip, r0, #-16777216	@ tmp196, tmp195,
	bic	r0, ip, #255	@ tmp196, tmp196,
	cmp	r0, #65536	@ tmp196,
	beq	.L1781	@,
.L1765:
	add	r2, r2, #1	@ i, tmp165,
	add	r3, r3, #4	@ ivtmp.5091, tmp166,
	cmp	r2, r8	@ i, D.33492
	bcs	.L1751	@,
.L1754:
	ldr	r1, [r3, #0]	@ D.33468, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.33470, <variable>.is_reference
	tst	r0, #1	@ D.33470,
	beq	.L1752	@,
	ldr	ip, [r1, #436]	@ tmp155,
	bic	ip, ip, #-16777216	@ tmp153, tmp155,
	bic	ip, ip, #255	@ tmp153, tmp153,
	cmp	ip, #65536	@ tmp153,
	beq	.L1782	@,
.L1752:
	tst	r0, #2	@ D.33470,
	beq	.L1753	@,
	ldr	r0, [r1, #472]	@ tmp160,
	bic	ip, r0, #-16777216	@ tmp158, tmp160,
	bic	r0, ip, #255	@ tmp158, tmp158,
	cmp	r0, #65536	@ tmp158,
	beq	.L1783	@,
.L1753:
	ldr	r1, [r3, #4]	@ D.33468, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp165, i,
	add	r3, r3, #4	@ tmp166, ivtmp.5091,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.33470, <variable>.is_reference
	tst	r0, #1	@ D.33470,
	beq	.L1764	@,
.L1769:
	ldr	ip, [r1, #436]	@ tmp191,
	bic	ip, ip, #-16777216	@ tmp192, tmp191,
	bic	ip, ip, #255	@ tmp192, tmp192,
	cmp	ip, #65536	@ tmp192,
	bne	.L1764	@,
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1764	@,
.L1770:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #1	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1751	@
.L1781:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1765	@,
.L1771:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #2	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1751	@
.L1782:
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1752	@,
	b	.L1770	@
.L1783:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1753	@,
	b	.L1771	@
.L1779:
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1757	@,
	b	.L1770	@
.L1780:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1758	@,
	b	.L1771	@
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
	bne	.L1785	@,
	movw	ip, #26632	@ tmp158,
	ldr	r1, [r1, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, ip]	@ temp.5156, <variable>.DPB.ref_frames_in_buffer
	mvn	r2, r2	@ tmp156, difference_of_pic_nums_minus1
	add	ip, r2, r1	@ picNumX.5157, tmp156, <variable>.frame_num
	cmp	r6, #0	@ temp.5156,
	beq	.L1796	@,
	add	r2, r3, #26368	@ ivtmp.5130, pH264Ctx,
	sub	r1, r6, #1	@ tmp256, temp.5156,
	and	r4, r1, #1	@ tmp258, tmp256,
	ldr	r1, [r2, #128]!	@ D.33235, <variable>.DPB.fs_ref
	ldr	r0, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r0, ip	@ <variable>.frame.pic_num, picNumX.5157
	beq	.L1828	@,
.L1799:
	mov	r0, #1	@ i.5138,
	cmp	r0, r6	@ i.5138, temp.5156
	add	r2, r2, #4	@ ivtmp.5130, ivtmp.5130,
	bcs	.L1796	@,
	cmp	r4, #0	@ tmp258,
	beq	.L1790	@,
	ldr	r1, [r2, #0]	@ D.33235, <variable>.DPB.fs_ref
	ldr	r4, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5157
	beq	.L1829	@,
.L1801:
	add	r0, r0, #1	@ i.5138, i.5138,
	add	r2, r2, #4	@ ivtmp.5130, ivtmp.5130,
	cmp	r0, r6	@ i.5138, temp.5156
	bcc	.L1790	@,
	b	.L1796	@
.L1789:
	ldr	r1, [r2, #4]	@ D.33235, <variable>.DPB.fs_ref
	ldr	r2, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5157
	beq	.L1830	@,
.L1804:
	add	r0, r0, #1	@ i.5138, tmp259,
	add	r2, r5, #4	@ ivtmp.5130, tmp260,
	cmp	r0, r6	@ i.5138, temp.5156
	bcs	.L1796	@,
.L1790:
	ldr	r1, [r2, #0]	@ D.33235, <variable>.DPB.fs_ref
	add	r0, r0, #1	@ tmp259, i.5138,
	add	r5, r2, #4	@ tmp260, ivtmp.5130,
	ldr	r4, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5157
	bne	.L1789	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1789	@,
	ldr	r4, [r1, #400]	@ tmp169,
	bic	r4, r4, #-16777216	@ tmp167, tmp169,
	bic	r4, r4, #255	@ tmp167, tmp167,
	cmp	r4, #65536	@ tmp167,
	beq	.L1822	@,
	ldr	r1, [r2, #4]	@ D.33235, <variable>.DPB.fs_ref
	ldr	r2, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5157
	bne	.L1804	@,
.L1830:
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #3	@ <variable>.is_reference,
	bne	.L1804	@,
	ldr	r2, [r1, #400]	@ tmp284,
	bic	r2, r2, #-16777216	@ tmp285, tmp284,
	bic	r2, r2, #255	@ tmp285, tmp285,
	cmp	r2, #65536	@ tmp285,
	beq	.L1822	@,
	add	r0, r0, #1	@ i.5138, tmp259,
	add	r2, r5, #4	@ ivtmp.5130, tmp260,
	cmp	r0, r6	@ i.5138, temp.5156
	bcc	.L1790	@,
.L1796:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L1785:
	movw	r0, #26632	@ tmp163,
	ldr	r7, [r1, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, r0]	@ D.33246, <variable>.DPB.ref_frames_in_buffer
	cmp	r6, #0	@ D.33246,
	rsb	r7, r2, r7, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	beq	.L1796	@,
	add	r4, r3, #26368	@ ivtmp.5135, pH264Ctx,
	sub	ip, r6, #1	@ tmp261, D.33246,
	and	r5, ip, #1	@ tmp263, tmp261,
	mov	ip, #0	@ i,
	ldr	r0, [r4, #128]!	@ temp.5139, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5140, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5140,
	beq	.L1806	@,
	ldr	r8, [r0, #436]	@ tmp286,
	bic	r8, r8, #-16777216	@ tmp287, tmp286,
	bic	r8, r8, #255	@ tmp287, tmp287,
	cmp	r8, #65536	@ tmp287,
	beq	.L1831	@,
.L1806:
	tst	r1, #2	@ temp.5140,
	beq	.L1807	@,
	ldr	r1, [r0, #472]	@ tmp290,
	bic	r1, r1, #-16777216	@ tmp291, tmp290,
	bic	r1, r1, #255	@ tmp291, tmp291,
	cmp	r1, #65536	@ tmp291,
	beq	.L1832	@,
.L1807:
	mov	ip, #1	@ i,
	cmp	r6, ip	@ D.33246, i
	add	r4, r4, #4	@ ivtmp.5135, ivtmp.5135,
	bls	.L1796	@,
	cmp	r5, #0	@ tmp263,
	beq	.L1795	@,
	ldr	r0, [r4, #0]	@ temp.5139, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5140, <variable>.is_reference
	ands	r2, r1, ip	@ tmp254, temp.5140,
	beq	.L1809	@,
	ldr	r5, [r0, #436]	@ tmp293,
	bic	r5, r5, #-16777216	@ tmp294, tmp293,
	bic	r5, r5, #255	@ tmp294, tmp294,
	cmp	r5, #65536	@ tmp294,
	beq	.L1833	@,
.L1809:
	tst	r1, #2	@ temp.5140,
	beq	.L1810	@,
	ldr	r1, [r0, #472]	@ tmp297,
	bic	r1, r1, #-16777216	@ tmp298, tmp297,
	bic	r1, r1, #255	@ tmp298, tmp298,
	cmp	r1, #65536	@ tmp298,
	beq	.L1834	@,
.L1810:
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5135, ivtmp.5135,
	cmp	r6, ip	@ D.33246, i
	bls	.L1796	@,
	ldr	r0, [r4, #0]	@ temp.5139, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5140, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5140,
	bne	.L1835	@,
.L1791:
	tst	r1, #2	@ temp.5140,
	beq	.L1793	@,
	ldr	r1, [r0, #472]	@ tmp215,
	bic	r1, r1, #-16777216	@ tmp213, tmp215,
	bic	r1, r1, #255	@ tmp213, tmp213,
	cmp	r1, #65536	@ tmp213,
	beq	.L1836	@,
.L1793:
	ldr	r0, [r4, #4]	@ temp.5139, <variable>.DPB.fs_ref
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ tmp265, ivtmp.5135,
	mov	r8, ip	@ tmp264, i
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5140, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5140,
	beq	.L1813	@,
	ldr	r5, [r0, #436]	@ tmp300,
	bic	r5, r5, #-16777216	@ tmp301, tmp300,
	bic	r5, r5, #255	@ tmp301, tmp301,
	cmp	r5, #65536	@ tmp301,
	beq	.L1837	@,
.L1813:
	tst	r1, #2	@ temp.5140,
	beq	.L1814	@,
	ldr	r1, [r0, #472]	@ tmp304,
	bic	r1, r1, #-16777216	@ tmp305, tmp304,
	bic	r1, r1, #255	@ tmp305, tmp305,
	cmp	r1, #65536	@ tmp305,
	beq	.L1838	@,
.L1814:
	add	ip, r8, #1	@ i, tmp264,
	add	r4, r4, #4	@ ivtmp.5135, tmp265,
	cmp	r6, ip	@ D.33246, i
	bls	.L1796	@,
.L1795:
	ldr	r0, [r4, #0]	@ temp.5139, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5140, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5140,
	beq	.L1791	@,
.L1835:
	ldr	r5, [r0, #436]	@ tmp174,
	bic	r5, r5, #-16777216	@ tmp172, tmp174,
	bic	r5, r5, #255	@ tmp172, tmp172,
	cmp	r5, #65536	@ tmp172,
	bne	.L1791	@,
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1791	@,
.L1823:
	add	r2, ip, #6592	@ tmp255, i,
	and	r1, r1, #2	@ tmp176, temp.5140,
	add	r2, r2, #32	@ tmp255, tmp255,
	strb	r1, [r0, #2]	@ tmp176, <variable>.is_reference
	mov	r1, #0	@ tmp181,
	ldr	r0, [r3, r2, asl #2]	@ tmp180, <variable>.DPB.fs_ref
	strb	r1, [r0, #438]	@ tmp181, <variable>.top_field.is_short_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5141, <variable>.DPB.fs_ref
	ldrb	ip, [r0, #400]	@ zero_extendqisi2	@ D.33261, <variable>.frame.structure
	cmp	ip, #3	@ D.33261,
	cmpne	ip, r1	@, D.33261,
	streqb	r1, [r0, #402]	@ tmp181, <variable>.frame.is_short_term
	ldreq	r0, [r3, r2, asl #2]	@ tmp196, <variable>.DPB.fs_ref
	streqb	r1, [r0, #401]	@ tmp181, <variable>.frame.is_long_term
	ldreq	r0, [r3, r2, asl #2]	@ prephitmp.5141, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1796	@,
	ldr	ip, [r0, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r4, [r3, r2, asl #2]	@ tmp210, <variable>.DPB.fs_ref
.L1825:
	add	ip, ip, #12800	@ tmp243, <variable>.pmv_address_idc,
	movw	r0, #52840	@ tmp247,
	add	ip, ip, #12	@ tmp243, tmp243,
	mov	r2, r1	@, <variable>.is_reference
	ldr	r0, [r3, r0]	@, <variable>.ChanID
	str	r1, [r3, ip, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	ldr	r1, [r4, #508]	@, <variable>.logic_fs_id
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	FSP_SetRef	@
.L1836:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1793	@,
.L1824:
	add	r4, ip, #6592	@ tmp274, i,
	strb	r2, [r0, #2]	@ tmp254, <variable>.is_reference
	add	r4, r4, #32	@ tmp274, tmp274,
	mov	ip, #0	@ tmp222,
	ldr	r2, [r3, r4, asl #2]	@ tmp221, <variable>.DPB.fs_ref
	strb	ip, [r2, #474]	@ tmp222, <variable>.bottom_field.is_short_term
	ldr	r2, [r3, r4, asl #2]	@ prephitmp.5117, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #400]	@ zero_extendqisi2	@ D.33283, <variable>.frame.structure
	cmp	r0, #3	@ D.33283,
	cmpne	r0, ip	@, D.33283,
	streqb	ip, [r2, #402]	@ tmp222, <variable>.frame.is_short_term
	ldreq	r2, [r3, r4, asl #2]	@ tmp237, <variable>.DPB.fs_ref
	streqb	ip, [r2, #401]	@ tmp222, <variable>.frame.is_long_term
	ldreq	r2, [r3, r4, asl #2]	@ prephitmp.5117, <variable>.DPB.fs_ref
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1796	@,
	ldr	ip, [r2, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r4, [r3, r4, asl #2]	@ tmp251, <variable>.DPB.fs_ref
	b	.L1825	@
.L1837:
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1813	@,
	b	.L1823	@
.L1838:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1814	@,
	b	.L1824	@
.L1831:
	ldr	r8, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r8, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1806	@,
	b	.L1823	@
.L1832:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1807	@,
	b	.L1824	@
.L1833:
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1809	@,
	b	.L1823	@
.L1834:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1810	@,
	b	.L1824	@
.L1828:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1799	@,
	ldr	r0, [r1, #400]	@ tmp277,
	bic	r0, r0, #-16777216	@ tmp278, tmp277,
	bic	r0, r0, #255	@ tmp278, tmp278,
	cmp	r0, #65536	@ tmp278,
	bne	.L1799	@,
.L1822:
	mov	r0, r3	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	UnMarkFrameStoreRef	@
.L1829:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1801	@,
	ldr	r4, [r1, #400]	@ tmp281,
	bic	r4, r4, #-16777216	@ tmp282, tmp281,
	bic	r4, r4, #255	@ tmp282, tmp282,
	cmp	r4, #65536	@ tmp282,
	bne	.L1801	@,
	b	.L1822	@
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
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r4, #0	@ flag,
	beq	.L1840	@,
	movw	r3, #52840	@ tmp158,
	add	r1, r5, #8	@, pH264Ctx,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
.L1841:
	add	r7, r5, #27392	@ tmp164, pH264Ctx,
	mov	fp, #0	@ ivtmp.5206,
	add	r9, r7, #116	@ ivtmp.5228, tmp164,
	add	sl, r7, #112	@ ivtmp.5225, tmp164,
	add	r8, r7, #124	@ ivtmp.5226, tmp164,
	add	r7, r7, #120	@ ivtmp.5227, tmp164,
	mov	r6, fp	@ i, ivtmp.5206
	mov	r4, fp	@ tmp324, ivtmp.5206
.L1846:
	mov	r1, #560	@,
	add	r2, r5, fp	@ D.45855, pH264Ctx, ivtmp.5206
	mul	lr, r1, r6	@ tmp207,, i
	ldr	r1, [sl, #0]	@ temp.5232, <variable>.fs_image.p_usrdat
	add	r3, r2, #27136	@ tmp169, D.45855,
	add	ip, r2, #27392	@ tmp206, D.45855,
	cmp	r1, #0	@ temp.5232,
	add	fp, fp, #560	@ ivtmp.5206, ivtmp.5206,
	add	r0, lr, #27136	@ tmp209, tmp207,
	add	lr, r2, #27648	@ tmp181, D.45855,
	add	r0, r0, #168	@ tmp209, tmp209,
	str	r6, [ip, #96]	@ i, <variable>.fs_image.image_id
	add	r0, r5, r0	@ D.32974, pH264Ctx, tmp209
	mov	ip, #2	@,
	mov	r2, #1	@,
	strb	r4, [r3, #172]	@ tmp324, <variable>.is_in_dpb
	strb	ip, [lr, #128]	@, <variable>.bottom_field.structure
	add	r6, r6, #1	@ i, i,
	mvn	ip, #0	@,
	strb	r4, [r3, #168]	@ tmp324, <variable>.non_existing
	strb	r4, [r3, #169]	@ tmp324, <variable>.is_used
	strb	r4, [r3, #170]	@ tmp324, <variable>.is_reference
	mov	r3, #17	@,
	str	ip, [lr, #172]	@, <variable>.frame_num_wrap
	mov	ip, #16	@,
	str	r2, [lr, #188]	@, <variable>.is_displayed
	mov	r2, #1	@,
	str	r0, [lr, #60]	@ D.32974, <variable>.frame.frame_store
	str	r4, [lr, #176]	@ tmp324, <variable>.long_term_frame_idx
	str	r4, [lr, #168]	@ tmp324, <variable>.frame_num
	str	r4, [lr, #180]	@ tmp324, <variable>.poc
	str	r3, [lr, #204]	@, <variable>.pmv_address_idc
	str	ip, [lr, #208]	@, <variable>.apc_idc
	str	r0, [lr, #132]	@ D.32974, <variable>.bottom_field.frame_store
	str	r0, [lr, #96]	@ D.32974, <variable>.top_field.frame_store
	strb	r4, [lr, #56]	@ tmp324, <variable>.frame.structure
	strb	r2, [lr, #92]	@, <variable>.top_field.structure
	beq	.L1842	@,
	movw	r3, #52840	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [sl, #0]	@ tmp324, <variable>.fs_image.p_usrdat
.L1842:
	ldr	r1, [r9, #0]	@ temp.5238, <variable>.fs_image.p_usrdat
	add	sl, sl, #560	@ ivtmp.5225, ivtmp.5225,
	cmp	r1, #0	@ temp.5238,
	beq	.L1843	@,
	movw	ip, #52840	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r9, #0]	@ tmp324, <variable>.fs_image.p_usrdat
.L1843:
	ldr	r1, [r7, #0]	@ temp.5240, <variable>.fs_image.p_usrdat
	add	r9, r9, #560	@ ivtmp.5228, ivtmp.5228,
	cmp	r1, #0	@ temp.5240,
	beq	.L1844	@,
	movw	r2, #52840	@,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r7, #0]	@ tmp324, <variable>.fs_image.p_usrdat
.L1844:
	ldr	r1, [r8, #0]	@ D.32978, <variable>.fs_image.p_usrdat
	add	r7, r7, #560	@ ivtmp.5227, ivtmp.5227,
	cmp	r1, #0	@ D.32978,
	beq	.L1845	@,
	movw	lr, #52840	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r8, #0]	@ tmp324, <variable>.fs_image.p_usrdat
.L1845:
	cmp	r6, #40	@ i,
	add	r8, r8, #560	@ ivtmp.5226, ivtmp.5226,
	bne	.L1846	@,
	movw	r4, #49912	@ tmp241,
	ldr	r1, [r5, r4]	@ temp.5242, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5242,
	beq	.L1847	@,
	movw	r3, #52840	@ tmp242,
	mov	r7, #0	@ tmp245,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, r4]	@ tmp245, <variable>.CurrPic.fs_image.p_usrdat
.L1847:
	movw	r4, #49916	@ tmp246,
	ldr	r1, [r5, r4]	@ temp.5244, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5244,
	beq	.L1848	@,
	movw	ip, #52840	@ tmp247,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp250,
	str	r0, [r5, r4]	@ tmp250, <variable>.CurrPic.fs_image.p_usrdat
.L1848:
	mov	r4, #49920	@ tmp251,
	ldr	r1, [r5, r4]	@ temp.5246, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5246,
	beq	.L1849	@,
	movw	r2, #52840	@ tmp252,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp255,
	str	r1, [r5, r4]	@ tmp255, <variable>.CurrPic.fs_image.p_usrdat
.L1849:
	movw	r4, #49924	@ tmp256,
	ldr	r1, [r5, r4]	@ D.32981, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ D.32981,
	beq	.L1850	@,
	movw	lr, #52840	@ tmp257,
	mov	r7, #0	@ tmp260,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, r4]	@ tmp260, <variable>.CurrPic.fs_image.p_usrdat
.L1850:
	movw	r7, #51344	@ tmp261,
	ldr	r4, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r4, #0	@ <variable>.TotalUsrDatNum,
	beq	.L1851	@,
	add	r8, r5, #51200	@ ivtmp.5197, pH264Ctx,
	mov	r6, #0	@ i.5235,
	add	r4, r8, #148	@ ivtmp.5197, ivtmp.5197,
	movw	sl, #52840	@ tmp321,
	mov	r8, r6	@ tmp322, i.5235
.L1853:
	ldr	r1, [r4, #0]	@ D.32984, <variable>.pUsrDatArray
	add	r6, r6, #1	@ i.5235, i.5235,
	cmp	r1, #0	@ D.32984,
	beq	.L1852	@,
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r4, #0]	@ tmp322, <variable>.pUsrDatArray
.L1852:
	ldr	r3, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r4, r4, #4	@ ivtmp.5197, ivtmp.5197,
	cmp	r3, r6	@ <variable>.TotalUsrDatNum, i.5235
	bhi	.L1853	@,
.L1851:
	movw	lr, #51344	@ tmp269,
	mov	r4, #0	@ tmp270,
	movw	r3, #51324	@ tmp273,
	str	r4, [r5, lr]	@ tmp270, <variable>.TotalUsrDatNum
	movw	r2, #52764	@ tmp275,
	movw	ip, #52824	@ tmp277,
	movw	lr, #52772	@ tmp279,
	str	r4, [r5, r3]	@ tmp270, <variable>.AllowStartDec
	str	r4, [r5, r2]	@ tmp270, <variable>.SliceParaNum
	movw	r3, #51332	@ tmp281,
	str	r4, [r5, ip]	@ tmp270, <variable>.MaxBytesReceived
	movw	r2, #52848	@ tmp283,
	str	r4, [r5, lr]	@ tmp270, <variable>.IModeOutFlag
	movw	ip, #51336	@ tmp285,
	movw	lr, #26380	@ tmp288,
	str	r4, [r5, r3]	@ tmp270, <variable>.IDRFound
	str	r4, [r5, r2]	@ tmp270, <variable>.FirstFrameDisplayed
	movw	r3, #24376	@ tmp290,
	str	r4, [r5, ip]	@ tmp270, <variable>.PPicFound
	movw	r2, #22372	@ tmp293,
	str	r4, [r5, lr]	@ tmp270, <variable>.CurrMarkIdx
	movw	ip, #24377	@ tmp296,
	movw	lr, #22373	@ tmp299,
	add	r0, r5, #20480	@, pH264Ctx,
	movw	r1, #52816	@ tmp271,
	add	r0, r0, #200	@,,
	str	r4, [r5, r1]	@ tmp270, <variable>.IDRPicOfCurrPic
	mov	r1, #1648	@,
	strb	r4, [r5, r3]	@ tmp270, <variable>.is_valid
	strb	r4, [r5, ip]	@ tmp270, <variable>.no_output_of_prior_pics_flag
	strb	r4, [r5, r2]	@ tmp270, <variable>.is_valid
	strb	r4, [r5, lr]	@ tmp270, <variable>.no_output_of_prior_pics_flag
	str	r4, [r5, #368]	@ tmp270, <variable>.pCurrNal
	bl	__memzero	@
	movw	r3, #49704	@ tmp310,
	movw	r1, #20680	@ tmp304,
	strb	r4, [r5, r3]	@ tmp270, <variable>.CurrPic.state
	movw	r0, #50668	@ tmp318,
	movw	r2, #50664	@ tmp313,
	mov	ip, #2	@ tmp305,
	movw	r3, #20685	@ tmp307,
	strb	ip, [r5, r1]	@ tmp305, <variable>.CurrSlice.slice_type
	movw	r1, #50672	@ tmp316,
	str	r4, [r5, r0]	@ tmp270, <variable>.PrevPic.nal_ref_idc
	mov	ip, #256	@ tmp317,
	strb	r4, [r5, r2]	@ tmp270, <variable>.PrevPic.structure
	mov	r0, r4	@, tmp270
	mov	r2, #1	@ tmp308,
	str	ip, [r5, r1]	@ tmp317, <variable>.PrevPic.frame_num
	strb	r2, [r5, r3]	@ tmp308, <variable>.CurrSlice.new_pic_flag
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1840:
	add	r0, r5, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	movw	r1, #52840	@ tmp162,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	bl	FSP_EmptyInstance	@
	b	.L1841	@
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
	movw	r3, #51316	@ tmp156,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r0, r3]	@ D.40938, <variable>.TotalFsNum
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ D.40938,
	beq	.L1858	@,
	add	r6, r0, #27136	@ ivtmp.5295, pH264Ctx,
	add	sl, r0, #26368	@ ivtmp.5287, pH264Ctx,
	add	r6, r6, #169	@ ivtmp.5295, ivtmp.5295,
	add	sl, sl, #68	@ ivtmp.5287, ivtmp.5287,
	mov	r7, #0	@ i,
	mov	r9, #560	@ tmp211,
	mov	r8, r6	@ ivtmp.5292, ivtmp.5295
	movw	fp, #26432	@ tmp213,
.L1865:
	ldrb	r0, [r8, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L1859	@,
	mul	r2, r9, r7	@ tmp159, tmp211, i
	add	r1, r2, #27136	@ tmp161, tmp159,
	add	ip, r1, #168	@ tmp161, tmp161,
	adds	ip, r4, ip	@ D.40948, pH264Ctx, tmp161
	beq	.L1860	@,
	movw	r1, #26628	@,
	ldr	lr, [r4, r1]	@ D.41157, <variable>.DPB.used_size
	cmp	lr, #0	@ D.41157,
	beq	.L1860	@,
	ldr	r2, [r4, fp]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	ip, r2	@ D.40948, <variable>.DPB.fs
	beq	.L1859	@,
	tst	lr, #1	@ D.41157,
	mov	r1, sl	@ ivtmp.5287, ivtmp.5287
	bne	.L1861	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.41157
	bcs	.L1860	@,
	mov	r1, sl	@ ivtmp.5287, ivtmp.5287
	ldr	r2, [r1], #4	@ D.41158, <variable>.DPB.fs
	cmp	ip, r2	@ D.40948, D.41158
	bne	.L1861	@,
	b	.L1859	@
.L1862:
	ldr	r5, [r2], #4	@ D.41158, <variable>.DPB.fs
	cmp	ip, r5	@ D.40948, D.41158
	beq	.L1859	@,
	ldr	r5, [r1, #4]	@ D.41158, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5287, tmp225,
	cmp	ip, r5	@ D.40948, D.41158
	beq	.L1859	@,
.L1861:
	add	r0, r0, #1	@ tmp226, i,
	mov	r2, r1	@ tmp225, ivtmp.5287
	cmp	r0, lr	@ tmp226, D.41157
	add	r0, r0, #1	@ i, tmp226,
	bcc	.L1862	@,
.L1860:
	movw	r5, #52840	@ tmp167,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ ret,
	beq	.L1858	@,
	cmn	r0, #1	@ ret,
	beq	.L1893	@,
.L1863:
	mov	r0, #0	@ D.40941,
.L1864:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1859:
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #560	@ ivtmp.5292, ivtmp.5292,
	cmp	r3, r7	@ D.40938, i
	bhi	.L1865	@,
	add	r2, sp, #8	@,,
	add	r0, r4, #8	@, pH264Ctx,
	add	r1, sp, #12	@,,
	movw	r7, #51316	@ tmp176,
	bl	GetQueueImgNum	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r3, #0	@ <variable>.TotalFsNum,
	beq	.L1866	@,
	add	r5, r4, #26368	@ ivtmp.5276, pH264Ctx,
	movw	r8, #26432	@ tmp205,
	add	sl, r5, #68	@ ivtmp.5276, ivtmp.5276,
	mov	r5, #0	@ i.5301,
.L1872:
	mov	lr, #560	@,
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ temp.5299, <variable>.is_used
	mul	r2, lr, r5	@ tmp178,, i.5301
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ D.40963, <variable>.is_in_dpb
	add	r1, r2, #27136	@ tmp180, tmp178,
	add	ip, r1, #168	@ tmp180, tmp180,
	adds	ip, r4, ip	@ temp.5300, pH264Ctx, tmp180
	beq	.L1867	@,
	movw	r0, #26628	@,
	ldr	r9, [r4, r0]	@ D.41164, <variable>.DPB.used_size
	cmp	r9, #0	@ D.41164,
	beq	.L1867	@,
	ldr	r1, [r4, r8]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	ip, r1	@ temp.5300, <variable>.DPB.fs
	beq	.L1868	@,
	tst	r9, #1	@ D.41164,
	mov	r1, sl	@ ivtmp.5276, ivtmp.5276
	mov	r0, #0	@ i,
	bne	.L1869	@,
	mov	r0, #1	@ i,
	cmp	r0, r9	@ i, D.41164
	bcs	.L1867	@,
	mov	r1, sl	@ ivtmp.5276, ivtmp.5276
	ldr	r2, [r1], #4	@ D.41165, <variable>.DPB.fs
	cmp	ip, r2	@ temp.5300, D.41165
	bne	.L1869	@,
	b	.L1868	@
.L1870:
	ldr	fp, [r2], #4	@ D.41165, <variable>.DPB.fs
	cmp	ip, fp	@ temp.5300, D.41165
	beq	.L1868	@,
	ldr	fp, [r1, #4]	@ D.41165, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5276, tmp220,
	cmp	ip, fp	@ temp.5300, D.41165
	beq	.L1868	@,
.L1869:
	add	r0, r0, #1	@ tmp221, i,
	mov	r2, r1	@ tmp220, ivtmp.5276
	cmp	r0, r9	@ tmp221, D.41164
	add	r0, r0, #1	@ i, tmp221,
	bcc	.L1870	@,
.L1867:
	mov	ip, #1	@ D.41163,
.L1871:
	mov	r2, r5	@, i.5301
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	str	lr, [sp, #0]	@ D.40963,
	add	r5, r5, #1	@ i.5301, i.5301,
	str	ip, [sp, #4]	@ D.41163,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r6, r6, #560	@ ivtmp.5295, ivtmp.5295,
	cmp	r3, r5	@ <variable>.TotalFsNum, i.5301
	bhi	.L1872	@,
.L1866:
	ldr	r2, [sp, #12]	@, ReadImgNum
	mov	r0, #0	@,
	ldr	r3, [sp, #8]	@, NewImgNum
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	movw	r1, #51316	@ tmp194,
	ldr	r0, [r4, r1]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	movw	r2, #26628	@ tmp197,
	ldr	r3, [r4, r2]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	ldr	r1, [sp, #8]	@ NewImgNum, NewImgNum
	sub	ip, r0, #2	@ tmp195, <variable>.TotalFsNum,
	ldr	r2, [sp, #12]	@ ReadImgNum, ReadImgNum
	rsb	r0, r3, ip	@ tmp198, <variable>.DPB.used_size, tmp195
	add	ip, r1, r2	@ tmp191, NewImgNum, ReadImgNum
	cmp	ip, r0	@ tmp191, tmp198
	bge	.L1863	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.40941,
	b	.L1864	@
.L1868:
	mov	ip, #0	@ D.41163,
	b	.L1871	@
.L1858:
	mov	r0, #1	@ D.40941,
	b	.L1864	@
.L1893:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r4, #8	@, pH264Ctx,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.40941,
	b	.L1864	@
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #352]	@ D.40677, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #52896	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pH264Ctx,
	str	r6, [r4, #352]	@ D.40677, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	mov	r0, #0	@ tmp149,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	str	r0, [r4, #364]	@ tmp149, <variable>.StartMode
	str	r0, [r4, #360]	@ tmp149, <variable>.pH264DecParam
	ldr	r3, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L1906	@,
	movw	r0, #13572	@ tmp158,
	movw	ip, #13576	@ tmp160,
	mov	r2, #13568	@ tmp162,
	mov	lr, #32	@ tmp159,
	mov	r1, #256	@ tmp161,
	mov	r6, #136	@ tmp163,
	str	lr, [r4, r0]	@ tmp159, <variable>.MaxSpsNum
	str	r1, [r4, ip]	@ tmp161, <variable>.MaxPpsNum
	str	r6, [r4, r2]	@ tmp163, <variable>.MaxSliceNum
.L1896:
	ldr	r0, [r5, #504]	@, <variable>.s32ContextMemAddr
	movw	r6, #13584	@ tmp172,
	bl	MEM_Phy2Vir	@
	movw	r2, #13572	@ tmp168,
	ldr	r1, [r4, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	mov	ip, #4000	@ tmp171,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #13576	@ tmp173,
	ldr	r3, [r4, r3]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	lr, #52760	@ tmp177,
	mul	r1, ip, r1	@ tmp169, tmp171, <variable>.MaxSpsNum
	ldr	r2, [r2, #500]	@ <variable>.s32BasicCtxSize, <variable>.s32BasicCtxSize
	movw	ip, #13580	@ tmp167,
	add	r0, r0, r2	@ D.40698,, <variable>.s32BasicCtxSize
	str	r0, [r4, ip]	@ D.40698, <variable>.SPS
	add	ip, r0, r1	@ prephitmp.5335, D.40698, tmp169
	mov	r2, #2208	@ tmp176,
	cmp	r0, #0	@ D.40698,
	str	ip, [r4, r6]	@ prephitmp.5335, <variable>.PPS
	mla	r2, r2, r3, ip	@ D.40710, tmp176, <variable>.MaxPpsNum, prephitmp.5335
	str	r2, [r4, lr]	@ D.40710, <variable>.DecSlicePara
	beq	.L1897	@,
	cmp	ip, #0	@ prephitmp.5335,
	beq	.L1897	@,
	cmp	r2, #0	@ D.40710,
	beq	.L1897	@,
	ldr	lr, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	lr, #0	@ <variable>.s32KeepSPSPPS,
	beq	.L1907	@,
.L1901:
	mov	r5, #13568	@ tmp195,
	movw	r6, #4060	@ tmp197,
	ldr	r1, [r4, r5]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	movw	r2, #13572	@ tmp192,
	ldr	ip, [r4, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	movw	r0, #14332	@ tmp191,
	movw	lr, #17612	@ tmp190,
	movw	r5, #52760	@ tmp194,
	mul	r1, r6, r1	@ __n, tmp197, <variable>.MaxSliceNum
	str	ip, [r4, r0]	@ <variable>.MaxSpsNum, <variable>.CurrSPS.seq_parameter_set_id
	str	r3, [r4, lr]	@ prephitmp.5333, <variable>.CurrPPS.pic_parameter_set_id
	ldr	r0, [r4, r5]	@ __p, <variable>.DecSlicePara
	cmp	r1, #0	@ __n,
	bne	.L1908	@,
.L1903:
	movw	r1, #52828	@ tmp199,
	movw	lr, #52768	@ tmp198,
	ldr	r6, [r4, r1]	@ <variable>.advanced_cfg, <variable>.advanced_cfg
	movw	r3, #51316	@ tmp217,
	movw	r5, #52784	@ tmp201,
	mov	ip, #40	@ tmp218,
	movw	r2, #51320	@ tmp219,
	str	ip, [r4, r3]	@ tmp218, <variable>.TotalFsNum
	str	r6, [r4, lr]	@ <variable>.advanced_cfg, <variable>.OldDecMode
	movw	ip, #52796	@ tmp207,
	movw	lr, #51340	@ tmp241,
	mov	r6, #0	@ tmp202,
	mov	r1, #17	@ tmp220,
	str	r6, [r4, r5]	@ tmp202, <variable>.TotalNal
	str	r1, [r4, r2]	@ tmp220, <variable>.TotalPmvNum
	mov	r5, #25	@ tmp242,
	str	r6, [r4, ip]	@ tmp202, <variable>.TotalSlice
	movw	r3, #52800	@ tmp209,
	str	r5, [r4, lr]	@ tmp242, <variable>.frame_rate
	movw	r2, #52804	@ tmp211,
	movw	r1, #52808	@ tmp213,
	movw	lr, #52812	@ tmp215,
	movw	ip, #52776	@ tmp221,
	movw	r0, #52788	@ tmp203,
	str	r6, [r4, r3]	@ tmp202, <variable>.SeqCnt
	movw	r3, #51344	@ tmp223,
	str	r6, [r4, r2]	@ tmp202, <variable>.TotalPicNum
	movw	r2, #51348	@ tmp225,
	str	r6, [r4, r1]	@ tmp202, <variable>.TotalFrameNum
	movw	r1, #51352	@ tmp227,
	str	r6, [r4, lr]	@ tmp202, <variable>.TotalFieldNum
	movw	lr, #51356	@ tmp229,
	str	r6, [r4, ip]	@ tmp202, <variable>.MutexHold
	movw	ip, #51360	@ tmp231,
	str	r6, [r4, r2]	@ tmp202, <variable>.pUsrDatArray
	movw	r2, #51332	@ tmp235,
	str	r6, [r4, r1]	@ tmp202, <variable>.pUsrDatArray
	movw	r1, #52848	@ tmp237,
	str	r6, [r4, lr]	@ tmp202, <variable>.pUsrDatArray
	movw	lr, #51336	@ tmp239,
	str	r6, [r4, r0]	@ tmp202, <variable>.TotalSPS
	movw	r0, #52792	@ tmp205,
	str	r6, [r4, r3]	@ tmp202, <variable>.TotalUsrDatNum
	movw	r3, #51324	@ tmp233,
	str	r6, [r4, ip]	@ tmp202, <variable>.pUsrDatArray
	movw	ip, #52892	@ tmp243,
	str	r6, [r4, r0]	@ tmp202, <variable>.TotalPPS
	mov	r5, #1	@ tmp244,
	str	r6, [r4, r3]	@ tmp202, <variable>.AllowStartDec
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, r2]	@ tmp202, <variable>.IDRFound
	str	r6, [r4, r1]	@ tmp202, <variable>.FirstFrameDisplayed
	str	r6, [r4, lr]	@ tmp202, <variable>.PPicFound
	str	r5, [r4, ip]	@ tmp244, <variable>.DSD_NeedClearQue
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #52840	@ tmp245,
	cmn	r0, #1	@ D.40741,
	str	r0, [r4, r3]	@ D.40741, <variable>.ChanID
	beq	.L1909	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, tmp202
	bl	ClearAll	@
	mov	r0, r5	@ D.40717, tmp244
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1907:
	cmp	r1, #0	@ tmp169,
	bne	.L1910	@,
.L1902:
	movw	r5, #13576	@ tmp187,
	mov	r6, #2208	@ tmp188,
	ldr	r3, [r4, r5]	@ prephitmp.5333, <variable>.MaxPpsNum
	mul	r1, r6, r3	@ __n, tmp188, prephitmp.5333
	cmp	r1, #0	@ __n,
	beq	.L1901	@,
	mov	r0, ip	@, prephitmp.5335
	bl	__memzero	@
	ldr	r3, [r4, r5]	@ prephitmp.5333, <variable>.MaxPpsNum
	b	.L1901	@
.L1908:
	bl	__memzero	@
	b	.L1903	@
.L1906:
	ldr	r0, [r5, #580]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.stChanOption.s32MaxSpsNum
	movw	r3, #13572	@ tmp152,
	movw	lr, #13576	@ tmp154,
	mov	r1, #13568	@ tmp156,
	str	r0, [r4, r3]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.MaxSpsNum
	ldr	ip, [r5, #584]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.stChanOption.s32MaxPpsNum
	str	ip, [r4, lr]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.MaxPpsNum
	ldr	r2, [r5, #576]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.stChanOption.s32MaxSliceNum
	str	r2, [r4, r1]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.MaxSliceNum
	b	.L1896	@
.L1910:
	bl	__memzero	@
	ldr	ip, [r4, r6]	@ prephitmp.5335, <variable>.PPS
	b	.L1902	@
.L1897:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC62	@,
	ldr	r2, .L1911	@,
	movt	r1, #:upper16:.LC62	@,
	movw	r3, #12255	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.40717,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1909:
	mov	r0, r6	@, tmp202
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.40717,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1912:
	.align	2
.L1911:
	.word	.LANCHOR0+160
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
	beq	.L1955	@,
	movw	r0, #20682	@ tmp162,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@,
	moveq	r3, #1	@,
.L1955:
	movw	r2, #52768	@ tmp164,
	str	r3, [sp, #0]	@, %sfp
	ldr	r1, [r4, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r1, #2	@ <variable>.OldDecMode,
	beq	.L1921	@,
	ldr	r3, [sp, #0]	@, %sfp
	movw	ip, #49705	@ tmp169,
	mov	r5, #0	@ tmp170,
	strb	r5, [r4, ip]	@ tmp170, <variable>.CurrPic.field_pair_flag
	cmp	r3, #2	@,
	beq	.L1960	@,
	ldr	r2, [sp, #0]	@, %sfp
	cmp	r2, #1	@,
	beq	.L1961	@,
.L1921:
	mov	r2, #0	@ tmp209,
	movw	r3, #49705	@ tmp208,
.L1956:
	strb	r2, [r4, r3]	@ tmp209, <variable>.CurrPic.field_pair_flag
.L1918:
	movw	r3, #51316	@ tmp214,
	mov	r5, #0	@ tmp212,
	ldr	r7, [r4, r3]	@ D.36371, <variable>.TotalFsNum
	movw	lr, #49704	@ tmp211,
	strb	r5, [r4, lr]	@ tmp212, <variable>.CurrPic.state
	cmp	r7, r5	@ D.36371,
	beq	.L1928	@,
	add	r6, r4, #27136	@ ivtmp.5393, pH264Ctx,
	add	r8, r4, #26368	@ ivtmp.5388, pH264Ctx,
	add	r6, r6, #169	@ ivtmp.5393, ivtmp.5393,
	add	r8, r8, #68	@ ivtmp.5388, ivtmp.5388,
	mov	sl, #560	@ tmp366,
	movw	r9, #26628	@ tmp367,
	movw	fp, #26432	@ tmp368,
.L1934:
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L1929	@,
	mul	r1, sl, r5	@ tmp217, tmp366, i
	add	r2, r1, #27136	@ tmp219, tmp217,
	add	ip, r2, #168	@ tmp219, tmp219,
	adds	r3, r4, ip	@ D.36367, pH264Ctx, tmp219
	beq	.L1930	@,
	ldr	lr, [r4, r9]	@ D.41171, <variable>.DPB.used_size
	cmp	lr, #0	@ D.41171,
	beq	.L1930	@,
	ldr	ip, [r4, fp]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r3, ip	@ D.36367, <variable>.DPB.fs
	beq	.L1929	@,
	tst	lr, #1	@ D.41171,
	mov	r1, r8	@ ivtmp.5388, ivtmp.5388
	bne	.L1931	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.41171
	bcs	.L1930	@,
	mov	r1, r8	@ ivtmp.5388, ivtmp.5388
	ldr	ip, [r1], #4	@ D.41172, <variable>.DPB.fs
	cmp	r3, ip	@ D.36367, D.41172
	bne	.L1931	@,
	b	.L1929	@
.L1932:
	ldr	ip, [r2], #4	@ D.41172, <variable>.DPB.fs
	cmp	r3, ip	@ D.36367, D.41172
	beq	.L1929	@,
	ldr	ip, [r1, #4]	@ D.41172, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5388, tmp375,
	cmp	r3, ip	@ D.36367, D.41172
	beq	.L1929	@,
.L1931:
	add	r0, r0, #1	@ tmp376, i,
	mov	r2, r1	@ tmp375, ivtmp.5388
	cmp	r0, lr	@ tmp376, D.41171
	add	r0, r0, #1	@ i, tmp376,
	bcc	.L1932	@,
.L1930:
	mov	r7, #560	@ tmp235,
	add	sl, r4, #49664	@ tmp365, pH264Ctx,
	mla	r2, r7, r5, r4	@ tmp236, tmp235, i, pH264Ctx
	add	r7, sl, #56	@ tmp365, tmp365,
	movw	r6, #50112	@ tmp228,
	movw	sl, #49704	@ tmp225,
	movw	r9, #50156	@ tmp230,
	mov	r5, #0	@ tmp229,
	add	r8, r2, #27136	@, tmp236,
	str	r3, [r4, r6]	@ D.36367, <variable>.CurrPic.frame_store
	add	r1, r8, #176	@,,
	mov	lr, #101	@ tmp231,
	mov	r8, #1	@ tmp226,
	mov	r2, #392	@,
	strb	r8, [r4, sl]	@ tmp226, <variable>.CurrPic.state
	mov	r0, r7	@, tmp365
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
	bne	.L1928	@,
	ldr	r3, [sp, #4]	@, %sfp
	movw	r5, #52840	@ tmp265,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	rsbs	r1, r3, #1	@,
	movcc	r1, #0	@
	bl	FSP_NewLogicFs	@
	mov	r8, r0	@ LogicFsID,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r8	@, LogicFsID
	bl	FSP_GetLogicFs	@
	subs	r3, r0, #0	@ tmp279, pstLFs,
	movne	r3, #1	@ tmp279
	cmp	r8, #0	@ LogicFsID,
	mov	r5, r0	@ pstLFs,
	movlt	r3, #0	@, tmp279,
	cmp	r3, #0	@ tmp279,
	beq	.L1936	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r6, #25	@ <variable>.eCapLevel,
	beq	.L1962	@,
.L1937:
	movw	r6, #50112	@ tmp293,
	add	r1, r5, #8	@, pstLFs,
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #392	@,
	add	r0, lr, #8	@, <variable>.CurrPic.frame_store,
	bl	memcpy	@
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, r7	@, tmp365
	mov	r2, #392	@,
	add	r1, ip, #8	@, <variable>.CurrPic.frame_store,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, r8	@ prephitmp.5371, LogicFsID
	str	r8, [r3, #508]	@ LogicFsID, <variable>.logic_fs_id
	ldrsb	r1, [r5, #4]	@ <variable>.PmvIdc, <variable>.PmvIdc
	movw	r5, #50180	@ tmp312,
	str	r1, [r4, r5]	@ <variable>.PmvIdc, <variable>.CurrPic.pmv_address_idc
.L1938:
	movw	r5, #20681	@ tmp325,
	ldr	r1, [sp, #0]	@, %sfp
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #50112	@ tmp324,
	ldr	r5, [r4, r2]	@ temp.5412, <variable>.CurrPic.frame_store
	movw	r0, #49707	@ tmp322,
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	uxtb	r2, r1	@ D.36424,
	movw	r1, #49705	@ tmp328,
	strb	r2, [r4, r0]	@ D.36424, <variable>.CurrPic.structure
	movne	r3, #3	@, iftmp.623,
	strb	r3, [r5, #400]	@ iftmp.623, <variable>.frame.structure
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r0, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L1963	@,
	ldr	r1, [sp, #0]	@, %sfp
	movw	r0, #20700	@ tmp349,
	movw	r3, #20712	@ tmp352,
	ldr	r5, [r4, r0]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r3, #52856	@ tmp355,
	cmp	r1, #0	@,
	ldr	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r3, #50664	@ tmp346,
	strb	r2, [r4, r3]	@ D.36424, <variable>.PrevPic.structure
	movw	r3, #50672	@ tmp348,
	str	r5, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r3, #50668	@ tmp351,
	str	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r3, #50680	@ tmp354,
	str	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r3, #50684	@ tmp357,
	str	ip, [r4, r3]	@ prephitmp.5371, <variable>.PrevPic.image_id
	movne	r0, #0	@ D.36377,
	ldreq	r0, [sp, #0]	@ D.36377, %sfp
	movne	r3, #50688	@ tmp358,
	moveq	r3, #50688	@ tmp361,
	movne	r2, #1	@ tmp359,
	strneb	r2, [r4, r3]	@ tmp359, <variable>.PrevPic.FrameStoreFlag
	streqb	r0, [r4, r3]	@ D.36377, <variable>.PrevPic.FrameStoreFlag
.L1935:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1929:
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #560	@ ivtmp.5393, ivtmp.5393,
	cmp	r7, r5	@ D.36371, i
	bhi	.L1934	@,
.L1928:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.36377,
	b	.L1935	@
.L1960:
	movw	r1, #50664	@ tmp172,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r0, #1	@ <variable>.PrevPic.structure,
	beq	.L1920	@,
	mov	r2, #0	@ tmp209,
	movw	r3, #49705	@ tmp208,
	b	.L1956	@
.L1961:
	movw	ip, #50664	@ tmp174,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r5, #2	@ <variable>.PrevPic.structure,
	bne	.L1921	@,
.L1920:
	movw	r0, #52768	@ tmp176,
	ldr	r3, [r4, r0]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #2	@ <variable>.OldDecMode,
	beq	.L1922	@,
	movw	ip, #50672	@ tmp178,
	movw	r5, #20700	@ tmp179,
	ldr	r1, [r4, ip]	@ <variable>.PrevPic.frame_num, <variable>.PrevPic.frame_num
	ldr	r2, [r4, r5]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r1, r2	@ <variable>.PrevPic.frame_num, <variable>.CurrSlice.frame_num
	bne	.L1918	@,
.L1922:
	movw	r0, #20712	@ tmp182,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L1923	@,
	movw	r2, #50668	@ tmp184,
	ldr	r1, [r4, r2]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.PrevPic.nal_ref_idc,
	bne	.L1918	@,
.L1924:
	movw	r5, #52856	@ tmp188,
	sub	r2, r5, #4	@ tmp189, tmp189,
	ldr	r1, [r4, r5]	@ <variable>.PicCounter, <variable>.PicCounter
	ldr	r0, [r4, r2]	@ <variable>.PrevStorePicCounter, <variable>.PrevStorePicCounter
	rsb	r3, r0, r1	@ tmp190, <variable>.PrevStorePicCounter, <variable>.PicCounter
	cmp	r3, #2	@ tmp190,
	bhi	.L1918	@,
	movw	ip, #50112	@ tmp196,
	movw	r3, #49705	@ tmp193,
	ldr	r2, [r4, ip]	@ D.36344, <variable>.CurrPic.frame_store
	mov	r1, #1	@ tmp194,
	strb	r1, [r4, r3]	@ tmp194, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ D.36344,
	beq	.L1956	@,
	ldr	r0, [sp, #0]	@, %sfp
	cmp	r0, #2	@,
	beq	.L1964	@,
	ldr	r1, [sp, #0]	@, %sfp
	cmp	r1, #1	@,
	beq	.L1965	@,
.L1927:
	mov	ip, #0	@ prephitmp.5371,
	b	.L1938	@
.L1963:
	movw	r1, #20700	@ tmp334,
	movw	r3, #20712	@ tmp337,
	ldr	r5, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r2, #52856	@ tmp340,
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	mov	r3, #0	@ tmp331,
	ldr	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r2, #50672	@ tmp333,
	str	r5, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r2, #50668	@ tmp336,
	str	r0, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r2, #50680	@ tmp339,
	str	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r2, #50684	@ tmp342,
	str	ip, [r4, r2]	@ prephitmp.5371, <variable>.PrevPic.image_id
	mov	r1, #50688	@ tmp343,
	movw	ip, #50664	@ tmp330,
	mov	r0, r3	@ D.36377, tmp331
	strb	r3, [r4, r1]	@ tmp331, <variable>.PrevPic.FrameStoreFlag
	strb	r3, [r4, ip]	@ tmp331, <variable>.PrevPic.structure
	b	.L1935	@
.L1962:
	ldr	r6, [r0, #180]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	movw	r0, #13564	@ tmp282,
	ldr	r3, [r4, r0]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	movw	r2, #13560	@ tmp285,
	ldr	ip, [r4, r2]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	r0, [r5, #112]	@ <variable>.stDispImg.luma_phy_addr, <variable>.stDispImg.luma_phy_addr
	mov	r1, r3, asl #4	@ HeightAligh, <variable>.CurHeightInMb,
	str	r1, [r5, #156]	@ HeightAligh, <variable>.stDispImg.image_height
	mov	lr, ip, asl #4	@ tmp287, <variable>.CurWidthInMb,
	str	lr, [r5, #152]	@ tmp287, <variable>.stDispImg.image_width
	mul	r6, r6, r1	@ ChromOffset, <variable>.stDispImg.image_stride, HeightAligh
	add	r0, r6, r0	@ D.36398, ChromOffset, <variable>.stDispImg.luma_phy_addr
	str	r0, [r5, #116]	@ D.36398, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #128]	@ <variable>.stDispImg.luma_2d_phy_addr, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r1, [r5, #96]	@ <variable>.stDispImg.top_luma_phy_addr, <variable>.stDispImg.top_luma_phy_addr
	add	ip, r6, r3	@ D.36412, ChromOffset, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r2, [r5, #180]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	add	r6, r6, r1	@ D.36405, ChromOffset, <variable>.stDispImg.top_luma_phy_addr
	str	ip, [r5, #132]	@ D.36412, <variable>.stDispImg.chrom_2d_phy_addr
	add	r2, r6, r2	@ tmp291, D.36405, <variable>.stDispImg.image_stride
	str	r6, [r5, #100]	@ D.36405, <variable>.stDispImg.top_chrom_phy_addr
	str	r2, [r5, #108]	@ tmp291, <variable>.stDispImg.btm_chrom_phy_addr
	str	r0, [r5, #44]	@, <variable>.stDispImg.chrom_vir_addr
	mov	r0, ip	@, D.36412
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #60]	@, <variable>.stDispImg.chrom_2d_vir_addr
	b	.L1937	@
.L1923:
	movw	ip, #50668	@ tmp186,
	ldr	r5, [r4, ip]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r5, #0	@ <variable>.PrevPic.nal_ref_idc,
	beq	.L1918	@,
	b	.L1924	@
.L1965:
	ldrb	r5, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, #2	@ <variable>.is_used,
	beq	.L1927	@,
.L1957:
	mov	r7, #0	@ tmp203,
	strb	r7, [r4, r3]	@ tmp203, <variable>.CurrPic.field_pair_flag
	b	.L1918	@
.L1936:
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, r3	@, tmp279
	strb	r3, [r4, sl]	@ tmp279, <variable>.CurrPic.state
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	strb	r3, [r2, #4]	@ tmp279, <variable>.is_in_dpb
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r9	@, <variable>.CurrPic.state
	bl	ClearAll	@
	mvn	r0, #0	@ D.36377,
	b	.L1935	@
.L1964:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r2, r1	@ <variable>.is_used,
	bne	.L1957	@,
	mov	ip, #0	@ prephitmp.5371,
	b	.L1938	@
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
	beq	.L1983	@,
	ldr	r1, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ <variable>.s32DecOrderOutput,
	ble	.L1969	@,
	movw	r2, #52768	@ tmp157,
	ldr	ip, [r0, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	ip, #2	@ <variable>.OldDecMode,
	beq	.L1969	@,
	movw	ip, #50696	@ tmp159,
	ldr	r1, [r0, ip]	@ D.33913, <variable>.pDirectOutBuf
	cmp	r1, #0	@ D.33913,
	strneb	r3, [r1, #1]	@ tmp153, <variable>.is_used
	movne	r0, #1	@ D.33905,
	strne	r3, [r4, ip]	@ tmp153, <variable>.pDirectOutBuf
	beq	.L1970	@,
.L1968:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1969:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	cmn	r0, #3	@,
	beq	.L1970	@,
	movw	r7, #50696	@ tmp164,
	ldr	r1, [r4, r7]	@ temp.5452, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5452,
	beq	.L1971	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r7]	@, <variable>.pDirectOutBuf
	bl	CheckFrameStore	@
	subs	r3, r0, #0	@ ret.5454,
	beq	.L1984	@,
	cmn	r3, #3	@ ret.5454,
	beq	.L1976	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC69	@,
	movw	r2, #1836	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r3, #184]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
.L1976:
	movw	r3, #50696	@ tmp217,
	mov	r0, #0	@ tmp218,
	ldr	ip, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [ip, #1]	@ tmp218, <variable>.is_used
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	lr, r5	@ <variable>.pDirectOutBuf, pFrameStore
	streq	r0, [r4, r3]	@ tmp218, <variable>.pDirectOutBuf
	beq	.L1968	@,
	str	r0, [r4, r3]	@ tmp218, <variable>.pDirectOutBuf
.L1971:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	subs	r3, r0, #0	@ ret.5469,
	beq	.L1985	@,
	cmn	r3, #3	@ ret.5469,
	beq	.L1970	@,
	movw	r2, #1894	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r5, #184]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
	mov	r0, #2	@ D.33905,
	b	.L1968	@
.L1983:
	mov	r2, r0	@, pH264Ctx
	mov	r3, r1	@, pFrameStore
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	mov	r0, #2	@ D.33905,
	b	.L1968	@
.L1970:
	mov	r0, #1	@ D.33905,
	b	.L1968	@
.L1985:
	movw	r7, #52840	@ tmp226,
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pstLogicFsImage.5473,
	beq	.L1986	@,
	cmp	r6, #1	@ is_last_frame,
	streq	r6, [r7, #224]	@ is_last_frame, <variable>.last_frame
	movw	r6, #52840	@ tmp235,
	mov	r1, #0	@,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r2, r4	@, pH264Ctx
	add	r3, r4, #8	@, pH264Ctx,
	str	r7, [sp, #0]	@ pstLogicFsImage.5473,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret.5476,
	bne	.L1987	@,
	mov	r1, r7	@, pstLogicFsImage.5473
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r2, #52872	@ tmp242,
	movw	r3, #52864	@ tmp246,
	ldr	ip, [r4, r2]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	r1, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	mov	r0, #0	@ D.33905,
	add	ip, ip, #1	@ tmp245, <variable>.numOutputFrame,
	str	ip, [r4, r2]	@ tmp245, <variable>.numOutputFrame
	add	r2, r1, #2	@ tmp249, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp249, <variable>.PicOutCounter
	b	.L1968	@
.L1984:
	ldr	lr, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r8, #52840	@ tmp167,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pstLogicFsImage,
	beq	.L1988	@,
	ldr	r0, [r4, r7]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r7, #52840	@ tmp189,
	mov	r1, #0	@,
	mov	r2, r4	@, pH264Ctx
	cmp	r6, #1	@ is_last_frame,
	cmpeq	r0, r5	@, <variable>.pDirectOutBuf, pFrameStore
	add	r3, r4, #8	@, pH264Ctx,
	moveq	r0, #1	@ tmp188,
	streq	r0, [r8, #224]	@ tmp188, <variable>.last_frame
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	str	r8, [sp, #0]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret.5461,
	bne	.L1989	@,
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r1, #52872	@ tmp204,
	movw	r3, #52864	@ tmp208,
	ldr	r2, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	ip, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	add	r0, r2, #1	@ tmp207, <variable>.numOutputFrame,
	str	r0, [r4, r1]	@ tmp207, <variable>.numOutputFrame
	add	r2, ip, #2	@ tmp211, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp211, <variable>.PicOutCounter
	b	.L1976	@
.L1987:
	mov	r2, r0	@, ret.5476
	movw	r1, #:lower16:.LC68	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.33905,
	b	.L1968	@
.L1989:
	mov	r2, r0	@, ret.5461
	movw	r5, #50696	@ tmp194,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	mov	r6, r0	@ tmp195,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r2, r6	@, tmp195
	strb	r6, [r1, #1]	@ tmp195, <variable>.is_used
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	str	r6, [r4, r5]	@ tmp195, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.33905,
	b	.L1968	@
.L1986:
	movw	r1, #:lower16:.LC70	@,
	movw	r2, #1864	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33905,
	b	.L1968	@
.L1988:
	movw	r1, #:lower16:.LC67	@,
	movw	r2, #1807	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33905,
	b	.L1968	@
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
	.pad #8
	sub	sp, sp, #8	@,,
	mvneq	r0, #0	@ D.35861,
	beq	.L2046	@,
	bl	ClearAllSlice	@
	movw	r3, #26432	@ tmp191,
	ldr	r3, [r4, r3]	@ temp.5549, <variable>.DPB.fs
	cmp	r3, #0	@ temp.5549,
	beq	.L1992	@,
	movw	r2, #52840	@ tmp192,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1992:
	movw	r0, #26496	@ tmp195,
	ldr	r3, [r4, r0]	@ temp.5547, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5547,
	beq	.L1993	@,
	movw	r5, #52840	@ tmp196,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1993:
	movw	r1, #26560	@ tmp199,
	ldr	r3, [r4, r1]	@ temp.5540, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5540,
	beq	.L1994	@,
	movw	r6, #52840	@ tmp200,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1994:
	movw	r5, #26436	@ tmp209,
	mov	lr, #0	@ tmp204,
	ldr	r2, [r4, r5]	@ temp.5550, <variable>.DPB.fs
	movw	r0, #26432	@ tmp207,
	movw	r3, #26560	@ tmp203,
	movw	ip, #26496	@ tmp205,
	cmp	r2, lr	@ temp.5550,
	str	lr, [r4, r0]	@ tmp204, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp204, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp204, <variable>.DPB.fs_ref
	beq	.L1995	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp210,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1995:
	movw	r1, #26500	@ tmp213,
	ldr	r3, [r4, r1]	@ temp.5553, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5553,
	beq	.L1996	@,
	movw	r6, #52840	@ tmp214,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1996:
	movw	ip, #26564	@ tmp217,
	ldr	r3, [r4, ip]	@ temp.5556, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5556,
	beq	.L1997	@,
	movw	lr, #52840	@ tmp218,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1997:
	movw	r6, #26440	@ tmp227,
	mov	r3, #0	@ tmp222,
	ldr	r2, [r4, r6]	@ temp.5559, <variable>.DPB.fs
	movw	r1, #26436	@ tmp225,
	movw	r5, #26564	@ tmp221,
	movw	r0, #26500	@ tmp223,
	cmp	r2, r3	@ temp.5559,
	str	r3, [r4, r1]	@ tmp222, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp222, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp222, <variable>.DPB.fs_ref
	beq	.L1998	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp228,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1998:
	movw	ip, #26504	@ tmp231,
	ldr	r3, [r4, ip]	@ temp.5562, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5562,
	beq	.L1999	@,
	movw	lr, #52840	@ tmp232,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1999:
	movw	r0, #26568	@ tmp235,
	ldr	r3, [r4, r0]	@ temp.5565, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5565,
	beq	.L2000	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp236,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2000:
	movw	lr, #26444	@ tmp245,
	mov	r6, #0	@ tmp240,
	ldr	r2, [r4, lr]	@ temp.5568, <variable>.DPB.fs
	movw	ip, #26440	@ tmp243,
	movw	r1, #26568	@ tmp239,
	movw	r5, #26504	@ tmp241,
	cmp	r2, r6	@ temp.5568,
	str	r6, [r4, ip]	@ tmp240, <variable>.DPB.fs
	str	r6, [r4, r1]	@ tmp240, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp240, <variable>.DPB.fs_ref
	beq	.L2001	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp246,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2001:
	movw	r0, #26508	@ tmp249,
	ldr	r3, [r4, r0]	@ temp.5571, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5571,
	beq	.L2002	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp250,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2002:
	movw	r5, #26572	@ tmp253,
	ldr	r3, [r4, r5]	@ temp.5574, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5574,
	beq	.L2003	@,
	movw	r6, #52840	@ tmp254,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2003:
	movw	r3, #26448	@ tmp263,
	mov	ip, #0	@ tmp258,
	ldr	r2, [r4, r3]	@ temp.5577, <variable>.DPB.fs
	movw	r0, #26444	@ tmp261,
	movw	lr, #26572	@ tmp257,
	movw	r1, #26508	@ tmp259,
	cmp	r2, ip	@ temp.5577,
	str	ip, [r4, r0]	@ tmp258, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp258, <variable>.DPB.fs_ltref
	str	ip, [r4, r1]	@ tmp258, <variable>.DPB.fs_ref
	beq	.L2004	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp264,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2004:
	movw	r5, #26512	@ tmp267,
	ldr	r3, [r4, r5]	@ temp.5580, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5580,
	beq	.L2005	@,
	movw	r6, #52840	@ tmp268,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2005:
	movw	r1, #26576	@ tmp271,
	ldr	r3, [r4, r1]	@ temp.5583, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5583,
	beq	.L2006	@,
	movw	ip, #52840	@ tmp272,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2006:
	movw	r6, #26452	@ tmp281,
	mov	r0, #0	@ tmp276,
	ldr	r2, [r4, r6]	@ temp.5586, <variable>.DPB.fs
	movw	r5, #26448	@ tmp279,
	movw	r3, #26576	@ tmp275,
	movw	lr, #26512	@ tmp277,
	cmp	r2, r0	@ temp.5586,
	str	r0, [r4, r5]	@ tmp276, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp276, <variable>.DPB.fs_ltref
	str	r0, [r4, lr]	@ tmp276, <variable>.DPB.fs_ref
	beq	.L2007	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp282,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2007:
	movw	r1, #26516	@ tmp285,
	ldr	r3, [r4, r1]	@ temp.5589, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5589,
	beq	.L2008	@,
	movw	ip, #52840	@ tmp286,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2008:
	movw	lr, #26580	@ tmp289,
	ldr	r3, [r4, lr]	@ temp.5592, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5592,
	beq	.L2009	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp290,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2009:
	movw	ip, #26456	@ tmp299,
	mov	r5, #0	@ tmp294,
	ldr	r2, [r4, ip]	@ temp.5595, <variable>.DPB.fs
	movw	r1, #26452	@ tmp297,
	movw	r6, #26580	@ tmp293,
	movw	r0, #26516	@ tmp295,
	cmp	r2, r5	@ temp.5595,
	str	r5, [r4, r1]	@ tmp294, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp294, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp294, <variable>.DPB.fs_ref
	beq	.L2010	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp300,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2010:
	movw	lr, #26520	@ tmp303,
	ldr	r3, [r4, lr]	@ temp.5598, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5598,
	beq	.L2011	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp304,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2011:
	movw	r0, #26584	@ tmp307,
	ldr	r3, [r4, r0]	@ temp.5601, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5601,
	beq	.L2012	@,
	movw	r5, #52840	@ tmp308,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2012:
	movw	r3, #26460	@ tmp317,
	mov	ip, #0	@ tmp312,
	ldr	r2, [r4, r3]	@ temp.5604, <variable>.DPB.fs
	movw	lr, #26456	@ tmp315,
	movw	r1, #26584	@ tmp311,
	movw	r6, #26520	@ tmp313,
	cmp	r2, ip	@ temp.5604,
	str	ip, [r4, lr]	@ tmp312, <variable>.DPB.fs
	str	ip, [r4, r1]	@ tmp312, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp312, <variable>.DPB.fs_ref
	beq	.L2013	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp318,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2013:
	movw	r0, #26524	@ tmp321,
	ldr	r3, [r4, r0]	@ temp.5607, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5607,
	beq	.L2014	@,
	movw	r5, #52840	@ tmp322,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2014:
	movw	r6, #26588	@ tmp325,
	ldr	r3, [r4, r6]	@ temp.5610, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5610,
	beq	.L2015	@,
	movw	ip, #52840	@ tmp326,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2015:
	movw	r5, #26464	@ tmp335,
	mov	lr, #0	@ tmp330,
	ldr	r2, [r4, r5]	@ temp.5613, <variable>.DPB.fs
	movw	r0, #26460	@ tmp333,
	movw	r3, #26588	@ tmp329,
	movw	r1, #26524	@ tmp331,
	cmp	r2, lr	@ temp.5613,
	str	lr, [r4, r0]	@ tmp330, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp330, <variable>.DPB.fs_ltref
	str	lr, [r4, r1]	@ tmp330, <variable>.DPB.fs_ref
	beq	.L2016	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp336,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2016:
	movw	r6, #26528	@ tmp339,
	ldr	r3, [r4, r6]	@ temp.5616, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5616,
	beq	.L2017	@,
	movw	ip, #52840	@ tmp340,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2017:
	movw	r1, #26592	@ tmp343,
	ldr	r3, [r4, r1]	@ temp.5619, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5619,
	beq	.L2018	@,
	movw	lr, #52840	@ tmp344,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2018:
	movw	ip, #26468	@ tmp353,
	mov	r3, #0	@ tmp348,
	ldr	r2, [r4, ip]	@ temp.5622, <variable>.DPB.fs
	movw	r6, #26464	@ tmp351,
	movw	r5, #26592	@ tmp347,
	movw	r0, #26528	@ tmp349,
	cmp	r2, r3	@ temp.5622,
	str	r3, [r4, r6]	@ tmp348, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp348, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp348, <variable>.DPB.fs_ref
	beq	.L2019	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp354,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2019:
	movw	r1, #26532	@ tmp357,
	ldr	r3, [r4, r1]	@ temp.5625, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5625,
	beq	.L2020	@,
	movw	lr, #52840	@ tmp358,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2020:
	movw	r0, #26596	@ tmp361,
	ldr	r3, [r4, r0]	@ temp.5628, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5628,
	beq	.L2021	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp362,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2021:
	movw	lr, #26472	@ tmp371,
	mov	r6, #0	@ tmp366,
	ldr	r2, [r4, lr]	@ temp.5631, <variable>.DPB.fs
	movw	r1, #26468	@ tmp369,
	movw	ip, #26596	@ tmp365,
	movw	r5, #26532	@ tmp367,
	cmp	r2, r6	@ temp.5631,
	str	r6, [r4, r1]	@ tmp366, <variable>.DPB.fs
	str	r6, [r4, ip]	@ tmp366, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp366, <variable>.DPB.fs_ref
	beq	.L2022	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp372,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2022:
	movw	r0, #26536	@ tmp375,
	ldr	r3, [r4, r0]	@ temp.5634, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5634,
	beq	.L2023	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp376,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2023:
	movw	r5, #26600	@ tmp379,
	ldr	r3, [r4, r5]	@ temp.5637, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5637,
	beq	.L2024	@,
	movw	r6, #52840	@ tmp380,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2024:
	movw	r3, #26476	@ tmp389,
	mov	lr, #0	@ tmp384,
	ldr	r2, [r4, r3]	@ temp.5640, <variable>.DPB.fs
	movw	r0, #26472	@ tmp387,
	movw	r1, #26600	@ tmp383,
	movw	ip, #26536	@ tmp385,
	cmp	r2, lr	@ temp.5640,
	str	lr, [r4, r0]	@ tmp384, <variable>.DPB.fs
	str	lr, [r4, r1]	@ tmp384, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp384, <variable>.DPB.fs_ref
	beq	.L2025	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp390,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2025:
	movw	r5, #26540	@ tmp393,
	ldr	r3, [r4, r5]	@ temp.5643, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5643,
	beq	.L2026	@,
	movw	r6, #52840	@ tmp394,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2026:
	movw	ip, #26604	@ tmp397,
	ldr	r3, [r4, ip]	@ temp.5646, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5646,
	beq	.L2027	@,
	movw	lr, #52840	@ tmp398,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2027:
	movw	r6, #26480	@ tmp407,
	mov	r0, #0	@ tmp402,
	ldr	r2, [r4, r6]	@ temp.5649, <variable>.DPB.fs
	movw	r5, #26476	@ tmp405,
	movw	r3, #26604	@ tmp401,
	movw	r1, #26540	@ tmp403,
	cmp	r2, r0	@ temp.5649,
	str	r0, [r4, r5]	@ tmp402, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp402, <variable>.DPB.fs_ltref
	str	r0, [r4, r1]	@ tmp402, <variable>.DPB.fs_ref
	beq	.L2028	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp408,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2028:
	movw	ip, #26544	@ tmp411,
	ldr	r3, [r4, ip]	@ temp.5652, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5652,
	beq	.L2029	@,
	movw	lr, #52840	@ tmp412,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2029:
	movw	r1, #26608	@ tmp415,
	ldr	r3, [r4, r1]	@ temp.5655, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5655,
	beq	.L2030	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp416,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2030:
	movw	lr, #26484	@ tmp425,
	mov	r5, #0	@ tmp420,
	ldr	r2, [r4, lr]	@ temp.5658, <variable>.DPB.fs
	movw	ip, #26480	@ tmp423,
	movw	r6, #26608	@ tmp419,
	movw	r0, #26544	@ tmp421,
	cmp	r2, r5	@ temp.5658,
	str	r5, [r4, ip]	@ tmp420, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp420, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp420, <variable>.DPB.fs_ref
	beq	.L2031	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp426,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2031:
	movw	r1, #26548	@ tmp429,
	ldr	r3, [r4, r1]	@ temp.5661, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5661,
	beq	.L2032	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp430,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2032:
	movw	r0, #26612	@ tmp433,
	ldr	r3, [r4, r0]	@ temp.5664, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5664,
	beq	.L2033	@,
	movw	r5, #52840	@ tmp434,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2033:
	movw	r3, #26488	@ tmp443,
	mov	ip, #0	@ tmp438,
	ldr	r2, [r4, r3]	@ temp.5667, <variable>.DPB.fs
	movw	r1, #26484	@ tmp441,
	movw	lr, #26612	@ tmp437,
	movw	r6, #26548	@ tmp439,
	cmp	r2, ip	@ temp.5667,
	str	ip, [r4, r1]	@ tmp438, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp438, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp438, <variable>.DPB.fs_ref
	beq	.L2034	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp444,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2034:
	movw	r0, #26552	@ tmp447,
	ldr	r3, [r4, r0]	@ temp.5670, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5670,
	beq	.L2035	@,
	movw	r5, #52840	@ tmp448,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2035:
	movw	r6, #26616	@ tmp451,
	ldr	r3, [r4, r6]	@ temp.5673, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5673,
	beq	.L2036	@,
	movw	ip, #52840	@ tmp452,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2036:
	movw	r5, #26492	@ tmp461,
	mov	r3, #0	@ tmp456,
	ldr	r2, [r4, r5]	@ D.35863, <variable>.DPB.fs
	movw	r0, #26488	@ tmp459,
	movw	r1, #26616	@ tmp455,
	movw	lr, #26552	@ tmp457,
	cmp	r2, r3	@ D.35863,
	str	r3, [r4, r0]	@ tmp456, <variable>.DPB.fs
	str	r3, [r4, r1]	@ tmp456, <variable>.DPB.fs_ltref
	str	r3, [r4, lr]	@ tmp456, <variable>.DPB.fs_ref
	beq	.L2037	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp462,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2037:
	movw	r6, #26556	@ tmp465,
	ldr	r3, [r4, r6]	@ D.35868, <variable>.DPB.fs_ref
	cmp	r3, #0	@ D.35868,
	beq	.L2038	@,
	movw	ip, #52840	@ tmp466,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2038:
	movw	lr, #26620	@ tmp469,
	ldr	r3, [r4, lr]	@ D.35872, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ D.35872,
	beq	.L2039	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp470,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2039:
	movw	lr, #50696	@ tmp491,
	movw	ip, #17568	@ tmp480,
	ldr	r1, [r4, lr]	@ D.35878, <variable>.pDirectOutBuf
	mov	r5, #26624	@ tmp479,
	ldr	r6, [r4, ip]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	movw	r0, #26620	@ tmp473,
	cmp	r1, #0	@ D.35878,
	movw	r3, #26556	@ tmp475,
	sub	r2, r6, #1	@ tmp482, <variable>.CurrSPS.dpb_size_plus1,
	movw	lr, #26492	@ tmp477,
	str	r2, [r4, r5]	@ tmp482, <variable>.DPB.size
	movw	ip, #26628	@ tmp483,
	mov	r2, #0	@ tmp474,
	movw	r6, #26632	@ tmp485,
	str	r2, [r4, r0]	@ tmp474, <variable>.DPB.fs_ltref
	movw	r5, #26636	@ tmp487,
	movw	r0, #26640	@ tmp489,
	str	r2, [r4, r3]	@ tmp474, <variable>.DPB.fs_ref
	str	r2, [r4, lr]	@ tmp474, <variable>.DPB.fs
	str	r2, [r4, ip]	@ tmp474, <variable>.DPB.used_size
	str	r2, [r4, r6]	@ tmp474, <variable>.DPB.ref_frames_in_buffer
	str	r2, [r4, r5]	@ tmp474, <variable>.DPB.ltref_frames_in_buffer
	str	r2, [r4, r0]	@ tmp474, <variable>.DPB.max_long_term_pic_idx
	beq	.L2040	@,
	movw	r0, #52768	@ tmp492,
	ldr	r3, [r4, r0]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #2	@ <variable>.OldDecMode,
	beq	.L2055	@,
.L2041:
	movw	r5, #50112	@ tmp500,
	ldr	r3, [r4, r5]	@ D.35890, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.35890,
	beq	.L2043	@,
	movw	r6, #52840	@ tmp501,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2043:
	movw	lr, #50696	@ tmp504,
	mov	ip, #0	@ tmp505,
	str	ip, [r4, lr]	@ tmp505, <variable>.pDirectOutBuf
.L2040:
	add	lr, r4, #26624	@, pH264Ctx,
	mov	r1, #392	@,
	add	r0, lr, #20	@,,
	movw	r6, #26900	@ tmp508,
	bl	__memzero	@
	mov	r0, #26624	@ tmp509,
	ldr	r1, [r4, r0]	@ <variable>.DPB.size, <variable>.DPB.size
	movw	r2, #26904	@ tmp511,
	movw	ip, #51248	@ tmp513,
	mov	r3, #0	@ tmp512,
	str	r3, [r4, ip]	@ tmp512, <variable>.PmvStoreUsedFlag
	add	r5, r4, #20480	@ ivtmp.5534, pH264Ctx,
	str	r1, [r4, r6]	@ <variable>.DPB.size, <variable>.APC.size
	movw	r6, #51252	@ tmp515,
	movw	r1, #51256	@ tmp517,
	str	r3, [r4, r6]	@ tmp512, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r2]	@ tmp512, <variable>.APC.used_size
	movw	r2, #51260	@ tmp519,
	str	r3, [r4, r1]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r1, #51264	@ tmp521,
	str	r3, [r4, r2]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r2, #51268	@ tmp523,
	str	r3, [r4, r1]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r1, #51272	@ tmp525,
	str	r3, [r4, r2]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r2, #51276	@ tmp527,
	str	r3, [r4, r1]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r1, #51280	@ tmp529,
	str	r3, [r4, r2]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r2, #51284	@ tmp531,
	str	r3, [r4, r1]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r1, #51288	@ tmp533,
	str	r3, [r4, r2]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r2, #51292	@ tmp535,
	str	r3, [r4, r1]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r1, #51296	@ tmp537,
	str	r3, [r4, r2]	@ tmp512, <variable>.PmvStoreUsedFlag
	add	r5, r5, #244	@ ivtmp.5534, ivtmp.5534,
	str	r3, [r4, r1]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r2, #51300	@ tmp539,
	movw	r1, #51304	@ tmp541,
	str	r3, [r4, r2]	@ tmp512, <variable>.PmvStoreUsedFlag
	mov	r0, r3	@ i, tmp512
	str	r3, [r4, r1]	@ tmp512, <variable>.PmvStoreUsedFlag
	movw	r2, #51308	@ tmp543,
	movw	r1, #51312	@ tmp545,
	mov	ip, r3	@ j, i
	mov	r6, r3	@ tmp560, i
	str	r3, [r4, r2]	@ tmp512, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r1]	@ tmp512, <variable>.PmvStoreUsedFlag
.L2044:
	add	r2, r0, r0, asl #5	@, tmp552, i, i,
	mov	r1, #1	@ j,
	mov	lr, r2, asl #2	@ tmp553, tmp552,
	add	r3, lr, #26880	@ tmp554, tmp553,
	add	r2, r3, #152	@ tmp554, tmp554,
	add	lr, r4, r2	@ tmp556, pH264Ctx, tmp554
	add	r2, lr, #8	@ ivtmp.5526, tmp556,
	str	ip, [lr, #4]	@ j, <variable>.pListX
.L2045:
	add	r1, r1, #2	@ j, j,
	mov	r3, r2	@ tmp564, ivtmp.5526
	cmp	r1, #33	@ j,
	str	ip, [r3], #4	@ j, <variable>.pListX
	str	ip, [r2, #4]	@ j, <variable>.pListX
	add	r2, r3, #4	@ ivtmp.5526, tmp564,
	bne	.L2045	@,
	add	r0, r0, #1	@ i, i,
	str	r6, [r5], #4	@ tmp560, <variable>.CurrSlice.listXsize
	cmp	r0, #2	@ i,
	bne	.L2044	@,
	mov	r0, r6	@ D.35861, tmp560
.L2046:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L2055:
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmToVO	@
	subs	ip, r0, #0	@ ret,
	bne	.L2056	@,
.L2042:
	movw	r2, #50696	@ tmp498,
	ldr	r1, [r4, r2]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, #0	@ <variable>.pDirectOutBuf,
	bne	.L2041	@,
	b	.L2040	@
.L2056:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L2057	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #5331	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret,
	bl	dprint_vfmw	@
	b	.L2042	@
.L2058:
	.align	2
.L2057:
	.word	.LANCHOR0+176
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
	beq	.L2060	@,
	add	r5, r0, #26368	@ ivtmp.5708, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r5, #64	@ ivtmp.5708, ivtmp.5708,
	b	.L2062	@
.L2061:
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bls	.L2060	@,
.L2062:
	ldr	r1, [r5, #0]	@ D.34416, <variable>.DPB.fs
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5708, ivtmp.5708,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2061	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bhi	.L2062	@,
.L2060:
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	subs	r5, r0, #0	@ ret,
	bne	.L2088	@,
.L2075:
	add	r8, r4, #26368	@ ivtmp.5703, pH264Ctx,
	movw	sl, #26628	@ tmp178,
	add	r8, r8, #64	@ ivtmp.5703, ivtmp.5703,
	mov	r9, #26624	@ tmp179,
	mov	fp, #0	@ pos.5715,
.L2083:
	ldr	r3, [r4, sl]	@ D.41183, <variable>.DPB.used_size
	cmp	r3, #0	@ D.41183,
	beq	.L2089	@,
.L2070:
	ldr	ip, [r4, r9]	@ temp.5714, <variable>.DPB.size
	cmp	r3, ip	@ D.41183, temp.5714
	movls	ip, r3	@ temp.5714, D.41183
	bls	.L2065	@,
	cmp	ip, #0	@ temp.5714,
	str	ip, [r4, sl]	@ temp.5714, <variable>.DPB.used_size
	moveq	r6, ip	@ pos.5715, temp.5714
	beq	.L2066	@,
.L2065:
	tst	ip, #1	@ temp.5714,
	mov	r6, #0	@ pos.5715,
	mov	r2, r8	@ ivtmp.5703, ivtmp.5703
	mov	r0, r6	@ pos, pos.5715
	mvn	r1, #-2147483648	@ min_poc.5716,
	bne	.L2072	@,
	ldr	r3, [r8, #0]	@ D.41180, <variable>.DPB.fs
	ldr	r1, [r3, #524]	@ min_poc, <variable>.poc
	cmn	r1, #-2147483647	@ min_poc,
	bge	.L2077	@,
	ldrb	r0, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2077	@,
	mov	r0, #1	@ pos,
	cmp	r0, ip	@ pos, temp.5714
	add	r2, r8, #4	@ ivtmp.5703, ivtmp.5703,
	bcs	.L2066	@,
.L2072:
	ldr	lr, [r2, #0]	@ D.41180, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5716
	bge	.L2067	@,
.L2090:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r6, r0	@ pos.5715, pos
	beq	.L2067	@,
	add	r0, r0, #1	@ tmp189, pos,
	add	lr, r2, #4	@ tmp190, ivtmp.5703,
	cmp	r0, ip	@ tmp189, temp.5714
	bcs	.L2066	@,
.L2069:
	ldr	r2, [r2, #4]	@ D.41180, <variable>.DPB.fs
	ldr	r1, [r2, #524]	@ min_poc, <variable>.poc
	cmp	r1, r3	@ min_poc, min_poc
	bge	.L2080	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2080	@,
	mov	r6, r0	@ pos.5715, tmp189
.L2087:
	add	r2, lr, #4	@ ivtmp.5703, tmp190,
	add	r0, r0, #1	@ pos, tmp189,
	ldr	lr, [r2, #0]	@ D.41180, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5716
	blt	.L2090	@,
.L2067:
	add	r0, r0, #1	@ tmp189, pos,
	mov	r3, r1	@ min_poc, min_poc.5716
	cmp	r0, ip	@ tmp189, temp.5714
	add	lr, r2, #4	@ tmp190, ivtmp.5703,
	bcc	.L2069	@,
.L2066:
	add	r7, r6, #6592	@ tmp160, pos.5715,
	mov	r0, r4	@, pH264Ctx
	add	r7, r7, #16	@ tmp160, tmp160,
	ldr	r3, [r4, r7, asl #2]	@ tmp162, <variable>.DPB.fs
	strb	fp, [r3, #4]	@ tmp5, <variable>.is_in_dpb
	ldr	r2, [r4, sl]	@, <variable>.DPB.used_size
	ldr	r1, [r4, r7, asl #2]	@, <variable>.DPB.fs
	bl	OutputFrmToVO	@
	ldr	ip, [r4, r7, asl #2]	@ tmp172, <variable>.DPB.fs
	ldrb	r2, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	mov	r5, r0	@ ret,
	bne	.L2083	@,
	mov	r1, r6	@, pos.5715
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	ldr	r3, [r4, sl]	@ D.41183, <variable>.DPB.used_size
	cmp	r3, #0	@ D.41183,
	bne	.L2070	@,
.L2089:
	cmp	r5, #0	@ ret,
	bne	.L2091	@,
	mov	r0, r5	@, ret
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2077:
	mov	r0, #1	@ pos,
	cmp	r0, ip	@ pos, temp.5714
	mvn	r1, #-2147483648	@ min_poc,
	add	r2, r8, #4	@ ivtmp.5703, ivtmp.5703,
	bcc	.L2072	@,
	b	.L2066	@
.L2080:
	mov	r1, r3	@ min_poc, min_poc
	b	.L2087	@
.L2091:
	add	r0, r4, #8	@, pH264Ctx,
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	GetVoLastImageID	@
.L2088:
	movw	r1, #:lower16:.LC72	@,
	ldr	r2, .L2092	@,
	movt	r1, #:upper16:.LC72	@,
	movw	r3, #2886	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L2075	@
.L2093:
	.align	2
.L2092:
	.word	.LANCHOR0+184
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
	movw	r3, #49707	@ tmp191,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #1	@ <variable>.CurrPic.structure,
	beq	.L2097	@,
	bcc	.L2096	@,
	cmp	r3, #2	@ <variable>.CurrPic.structure,
	movne	r6, #0	@ ret,
	beq	.L2142	@,
.L2099:
	mov	r0, r6	@, ret
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L2096:
	movw	r2, #50112	@ tmp194,
	movw	r5, #50696	@ tmp197,
	ldr	r1, [r0, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp195,
	strb	r2, [r1, #400]	@ tmp195, <variable>.frame.structure
	ldr	r1, [r0, r5]	@ temp.5771, <variable>.pDirectOutBuf
	cmp	r1, r2	@ temp.5771,
	beq	.L2100	@,
	bl	OutputFrmToVO	@
	subs	ip, r0, #0	@ ret.5772,
	bne	.L2143	@,
.L2101:
	movw	r6, #50696	@ tmp201,
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, #0	@ <variable>.pDirectOutBuf,
	beq	.L2102	@,
	movw	ip, #50112	@ tmp206,
	movw	r8, #52840	@ tmp203,
	ldr	r7, [r4, ip]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r7, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2102:
	movw	r3, #50696	@ tmp208,
	mov	lr, #0	@ tmp209,
	str	lr, [r4, r3]	@ tmp209, <variable>.pDirectOutBuf
.L2100:
	movw	r7, #50112	@ tmp210,
	movw	r5, #50696	@ tmp211,
	ldr	r8, [r4, r7]	@ temp.5775, <variable>.CurrPic.frame_store
	mov	r6, #0	@ tmp233,
	add	r1, r4, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r1, r1, #56	@,,
	str	r8, [r4, r5]	@ temp.5775, <variable>.pDirectOutBuf
	str	r8, [r8, #404]	@ temp.5775, <variable>.frame.frame_store
	movw	r8, #52840	@ tmp267,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	lr, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r3, #440]	@ <variable>.CurrPic.frame_store, <variable>.top_field.frame_store
	movw	lr, #49706	@ tmp224,
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [ip, #476]	@ <variable>.CurrPic.frame_store, <variable>.bottom_field.frame_store
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	lr, #3	@ tmp229,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	ip, [r3, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	lr, [r0, #1]	@ tmp229, <variable>.is_used
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [ip, #2]	@ tmp233, <variable>.is_reference
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [r3, #4]	@ tmp233, <variable>.is_in_dpb
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r6, [r0, #532]	@ tmp233, <variable>.is_displayed
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r2, #50156	@ tmp250,
	ldr	r1, [r4, r2]	@ D.34267, <variable>.CurrPic.err_level
	movw	r0, #50148	@ tmp257,
	ldr	ip, [r4, r5]	@ temp.5787, <variable>.pDirectOutBuf
	mov	r2, r6	@, tmp233
	str	r1, [ip, #544]	@ D.34267, <variable>.err_level
	str	r1, [ip, #420]	@ D.34267, <variable>.frame.err_level
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [r3, #400]	@ tmp233, <variable>.frame.structure
	movw	r3, #49713	@ tmp261,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [ip, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	r1, #49711	@ tmp264,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r0, #536]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r5]	@ temp.5791, <variable>.pDirectOutBuf
	cmp	r0, #1	@ <variable>.CurrPic.mode_skip_flag,
	movne	r0, r6	@ iftmp.510, tmp2
	moveq	r0, #3	@ iftmp.510,
	strb	r0, [r3, #3]	@ iftmp.510, <variable>.mode_skip_flag
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r6	@, tmp233
	ldr	r1, [r4, r5]	@, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, #0	@ <variable>.pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2133	@,
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2133:
	movw	r2, #50696	@ tmp665,
	mov	r0, #0	@ tmp666,
	str	r0, [r4, r2]	@ tmp666, <variable>.pDirectOutBuf
	b	.L2099	@
.L2097:
	movw	r5, #50112	@ tmp284,
	movw	r7, #49705	@ tmp287,
	ldr	r2, [r0, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r6, #3	@ tmp285,
	strb	r6, [r2, #400]	@ tmp285, <variable>.frame.structure
	ldrb	r2, [r0, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2106	@,
	movw	r7, #50696	@ tmp289,
	ldr	r1, [r0, r7]	@ temp.5800, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5800,
	beq	.L2107	@,
	bl	OutputFrmToVO	@
	mov	r6, r0	@ ret,
	ldr	r0, [r4, r5]	@ temp.5801, <variable>.CurrPic.frame_store
	str	r0, [r4, r7]	@ temp.5801, <variable>.pDirectOutBuf
	str	r0, [r0, #440]	@ temp.5801, <variable>.top_field.frame_store
.L2108:
	movw	r5, #50696	@ tmp297,
	movw	r7, #49706	@ tmp298,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #1	@ tmp303,
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp307,
	add	r2, r4, #49664	@, pH264Ctx,
	add	r1, r2, #56	@,,
	mov	r2, #392	@,
	strb	r0, [ip, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp303, <variable>.is_used
	movw	lr, #50148	@ tmp318,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp307, <variable>.is_in_dpb
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [ip, #532]	@ tmp307, <variable>.is_displayed
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r0, #2]	@ tmp307, <variable>.is_reference
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r3, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r0, #536]	@ tmp307, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r3, #50156	@ tmp332,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [ip, #456]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	movw	ip, #49711	@ tmp341,
	ldr	r0, [r4, r5]	@ temp.5816, <variable>.pDirectOutBuf
	ldr	r2, [r0, #456]	@ D.34288, <variable>.top_field.err_level
	str	r2, [r0, #544]	@ D.34288, <variable>.err_level
	str	r2, [r0, #420]	@ D.34288, <variable>.frame.err_level
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [r3, #436]	@ tmp303, <variable>.top_field.structure
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, r8	@ <variable>.CurrPic.mode_skip_flag,
	movne	r2, #0	@, tmp343
	moveq	r2, #1	@, tmp343
	b	.L2141	@
.L2142:
	movw	r5, #50112	@ tmp477,
	movw	r8, #49705	@ tmp480,
	ldr	r3, [r0, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	lr, #3	@ tmp478,
	strb	lr, [r3, #400]	@ tmp478, <variable>.frame.structure
	ldrb	r2, [r0, r8]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2144	@,
	movw	sl, #50696	@ tmp554,
	add	r9, r0, #49664	@, pH264Ctx,
	ldr	lr, [r0, sl]	@ prephitmp.5863, <variable>.pDirectOutBuf
	add	r1, r9, #56	@,,
	mov	r2, #392	@,
	cmp	lr, #0	@ prephitmp.5863,
	ldreq	lr, [r0, r5]	@ temp.5890, <variable>.CurrPic.frame_store
	streq	lr, [r0, sl]	@ temp.5890, <variable>.pDirectOutBuf
	streq	lr, [lr, #476]	@ temp.5890, <variable>.bottom_field.frame_store
	ldreq	lr, [r0, sl]	@ prephitmp.5863, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.5863,
	ldrd	r8, [lr, #24]	@, prephitmp.5863,
	ldr	r5, [lr, #16]	@ OtherFieldPts.5891, <variable>.fs_image.PTS
	ldr	r6, [lr, #20]	@ OtherFieldPts.5891, <variable>.fs_image.PTS
	strd	r8, [sp, #16]	@,,
	ldrd	r8, [lr, #32]	@, prephitmp.5863,
	strd	r8, [sp, #8]	@,,
	ldr	sl, [lr, #76]	@ OtherFieldDispEnableFlag.5894, <variable>.fs_image.DispEnableFlag
	ldr	r8, [lr, #80]	@ OtherFieldDispFrameDistance.5895, <variable>.fs_image.DispFrameDistance
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame.5896, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r9, [lr, #88]	@ OtherFieldGopNum.5897, <variable>.fs_image.GopNum
	bl	memcpy	@
	add	r3, r4, #49664	@ tmp572, pH264Ctx,
	movw	r2, #49728	@ tmp566,
	add	r1, r3, #64	@ tmp572, tmp572,
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r2, r5, r6	@ tmp564, OtherFieldPts.5891, OtherFieldPts.5891
	ldr	ip, [r1, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r3, r0, ip	@ tmp568, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r0, #50696	@ tmp581,
	cmn	r3, #1	@ tmp568,
	movne	r1, #0	@, tmp577
	moveq	r1, #1	@, tmp577
	cmn	r2, #1	@ tmp564,
	movw	r3, #49736	@ tmp582,
	moveq	r1, #0	@, tmp577,
	cmp	r1, #0	@ tmp577,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.Usertag, tmp582, pH264Ctx
	movwne	r1, #50696	@ tmp579,
	ldrne	r1, [r4, r1]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r5, [r1, #16]	@ OtherFieldPts.5891, <variable>.fs_image.PTS
	movw	r5, #50696	@ tmp585,
	strne	r6, [r1, #20]	@ OtherFieldPts.5891, <variable>.fs_image.PTS
	ldr	ip, [r4, r0]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r0, [sp, #16]	@,,
	cmp	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	movw	r1, #49744	@ tmp586,
	strd	r2, [ip, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r2, [sp, #8]	@,,
	ldrd	r0, [r1, r4]	@ <variable>.CurrPic.fs_image.DispTime, tmp586, pH264Ctx
	cmp	r1, r3	@ <variable>.CurrPic.fs_image.DispTime,
	cmpeq	r0, r2	@ <variable>.CurrPic.fs_image.DispTime,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrhid	r0, [sp, #8]	@ <variable>.CurrPic.fs_image.DispTime,,
.L2128:
	movw	lr, #50696	@ tmp589,
	movw	r6, #49788	@ tmp590,
	strd	r0, [r2, #32]	@ <variable>.CurrPic.fs_image.DispTime, <variable>.pDirectOutBuf,
	movw	r2, #49792	@ tmp595,
	ldr	ip, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r0, #49796	@ tmp600,
	ldr	r5, [r4, r6]	@ <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r1, #49800	@ tmp605,
	ldr	r3, [r4, r2]	@ <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	ldr	r0, [r4, r0]	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	cmp	r5, sl	@ <variable>.CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag.5894
	strls	r5, [ip, #76]	@, <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [ip, #76]	@, OtherFieldDispEnableFlag.5894, <variable>.fs_image.DispEnableFlag
	ldr	r6, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r5, [r4, r1]	@ <variable>.CurrPic.fs_image.GopNum, <variable>.CurrPic.fs_image.GopNum
	movw	r1, #50148	@ tmp618,
	cmp	r3, r8	@ <variable>.CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance.5895
	strls	r3, [r6, #80]	@, <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r8, [r6, #80]	@, OtherFieldDispFrameDistance.5895, <variable>.fs_image.DispFrameDistance
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, r7	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame.5896
	strls	r0, [r2, #84]	@, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	r7, [r2, #84]	@, OtherFieldDistanceBeforeFirstFrame.5896, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	ip, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r5, r9	@ <variable>.CurrPic.fs_image.GopNum, OtherFieldGopNum.5897
	strls	r5, [ip, #88]	@, <variable>.CurrPic.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	r9, [ip, #88]	@, OtherFieldGopNum.5897, <variable>.fs_image.GopNum
	ldr	r6, [r4, lr]	@ temp.5921, <variable>.pDirectOutBuf
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #49706	@ tmp610,
	moveq	r5, r3	@ iftmp.520, <variable>.non_existing
	ldrneb	r5, [r4, r3]	@ zero_extendqisi2	@ iftmp.520, <variable>.CurrPic.non_existing
	movw	r3, #50696	@ tmp612,
	strb	r5, [r6, #0]	@ iftmp.520, <variable>.non_existing
	ldr	r2, [r4, r3]	@ temp.5923, <variable>.pDirectOutBuf
	ldrb	r7, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	lr, r7, #2	@ tmp615, <variable>.is_used,
	strb	lr, [r2, #1]	@ tmp615, <variable>.is_used
	ldr	r0, [r4, r3]	@ temp.5926, <variable>.pDirectOutBuf
	mov	r7, #2	@ tmp624,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	movw	r1, #50156	@ tmp632,
	mov	lr, #3	@ tmp628,
	ldr	r6, [r0, #540]	@ <variable>.pic_type, <variable>.pic_type
	cmp	r6, ip	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	r6, [r0, #540]	@, <variable>.pic_type, <variable>.pic_type
	strcc	ip, [r0, #540]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r5, #472]	@ tmp624, <variable>.bottom_field.structure
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	lr, [r2, #400]	@ tmp628, <variable>.frame.structure
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r0, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r0, #492]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r4, r3]	@ temp.5933, <variable>.pDirectOutBuf
	ldr	r6, [r2, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r5, [r2, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r7, r6, r5	@ tmp635, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	movw	r5, #49711	@ tmp643,
	mov	lr, r7, lsr #1	@ tmp638, tmp635,
	str	lr, [r2, #420]	@ tmp638, <variable>.frame.err_level
	ldr	r1, [r4, r3]	@ temp.5938, <variable>.pDirectOutBuf
	ldr	r0, [r1, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r0, [r1, #544]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	ip, [r4, r3]	@ temp.5940, <variable>.pDirectOutBuf
	ldr	r6, [ip, #476]	@ <variable>.bottom_field.frame_store, <variable>.bottom_field.frame_store
	str	r6, [ip, #404]	@ <variable>.bottom_field.frame_store, <variable>.frame.frame_store
	ldrb	r7, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	beq	.L2145	@,
.L2131:
	ldr	r3, [r4, r3]	@ temp.5770, <variable>.pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ iftmp.521, <variable>.mode_skip_flag
.L2132:
	movw	r5, #50696	@ tmp654,
	strb	r2, [r3, #3]	@ iftmp.521, <variable>.mode_skip_flag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r7, #52840	@ tmp651,
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
	beq	.L2133	@,
	movw	r1, #50112	@ tmp663,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	movw	r2, #50696	@ tmp665,
	mov	r0, #0	@ tmp666,
	str	r0, [r4, r2]	@ tmp666, <variable>.pDirectOutBuf
	b	.L2099	@
.L2144:
	movw	r7, #50696	@ tmp482,
	ldr	r1, [r0, r7]	@ temp.5859, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5859,
	beq	.L2120	@,
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r5]	@ temp.5860, <variable>.CurrPic.frame_store
	str	r1, [r4, r7]	@ temp.5860, <variable>.pDirectOutBuf
	str	r1, [r1, #476]	@ temp.5860, <variable>.bottom_field.frame_store
	mov	r6, r0	@ ret,
.L2121:
	movw	r5, #50696	@ tmp490,
	movw	r7, #49706	@ tmp491,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #2	@ tmp496,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp500,
	add	r1, r4, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r1, r1, #56	@,,
	strb	r0, [r3, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp496, <variable>.is_used
	movw	lr, #50148	@ tmp511,
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [ip, #4]	@ tmp500, <variable>.is_in_dpb
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r0, #532]	@ tmp500, <variable>.is_displayed
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp500, <variable>.is_reference
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r0, [ip, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r3, #536]	@ tmp500, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	ip, #50156	@ tmp525,
	ldr	r2, [r4, ip]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r2, [r0, #492]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	movw	r0, #49711	@ tmp533,
	ldr	r3, [r4, r5]	@ temp.5876, <variable>.pDirectOutBuf
	ldr	r1, [r3, #492]	@ temp.5877, <variable>.bottom_field.err_level
	str	r1, [r3, #544]	@ temp.5877, <variable>.err_level
	str	r1, [r3, #420]	@ temp.5877, <variable>.frame.err_level
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [ip, #472]	@ tmp496, <variable>.bottom_field.structure
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r5]	@ temp.5879, <variable>.pDirectOutBuf
	cmp	r2, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r2, r8	@ iftmp.518,
	movne	r2, r7	@ iftmp.518,
.L2141:
	strb	r2, [r3, #3]	@ iftmp.518, <variable>.mode_skip_flag
	movw	r2, #52772	@ tmp536,
	ldr	r8, [r4, r2]	@ <variable>.IModeOutFlag, <variable>.IModeOutFlag
	cmp	r8, #1	@ <variable>.IModeOutFlag,
	bne	.L2099	@,
	ldr	r6, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	sl, #52840	@ tmp538,
	mov	r2, r7	@, tmp500
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r2, r7	@, tmp500
	ldr	r1, [r4, r5]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	ip, r7	@ <variable>.pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2133	@,
	movw	r3, #50112	@ tmp550,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, r8	@, <variable>.IModeOutFlag
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	b	.L2133	@
.L2106:
	movw	sl, #50696	@ tmp363,
	add	r9, r0, #49664	@, pH264Ctx,
	ldr	lr, [r0, sl]	@ prephitmp.5748, <variable>.pDirectOutBuf
	add	r1, r9, #56	@,,
	mov	r2, #392	@,
	cmp	lr, #0	@ prephitmp.5748,
	ldreq	lr, [r0, r5]	@ temp.5828, <variable>.CurrPic.frame_store
	streq	lr, [r0, sl]	@ temp.5828, <variable>.pDirectOutBuf
	streq	lr, [lr, #440]	@ temp.5828, <variable>.top_field.frame_store
	ldreq	lr, [r0, sl]	@ prephitmp.5748, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.5748,
	ldrd	r8, [lr, #24]	@, prephitmp.5748,
	ldr	r5, [lr, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	r6, [lr, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	r8, [sp, #16]	@,,
	ldrd	r8, [lr, #32]	@, prephitmp.5748,
	strd	r8, [sp, #8]	@,,
	ldr	sl, [lr, #76]	@ OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r8, [lr, #80]	@ OtherFieldDispFrameDistance, <variable>.fs_image.DispFrameDistance
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r9, [lr, #88]	@ OtherFieldGopNum, <variable>.fs_image.GopNum
	bl	memcpy	@
	add	ip, r4, #49664	@ tmp381, pH264Ctx,
	movw	r0, #49728	@ tmp375,
	add	r3, ip, #64	@ tmp381, tmp381,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r0, r5, r6	@ tmp373, OtherFieldPts, OtherFieldPts
	ldr	r2, [r3, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	ip, r1, r2	@ tmp377, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r1, #50696	@ tmp390,
	cmn	ip, #1	@ tmp377,
	movne	r3, #0	@, tmp386
	moveq	r3, #1	@, tmp386
	cmn	r0, #1	@ tmp373,
	moveq	r3, #0	@, tmp386,
	cmp	r3, #0	@ tmp386,
	movwne	r3, #50696	@ tmp388,
	ldrne	r3, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r5, [r3, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r5, #50696	@ tmp394,
	strne	r6, [r3, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r3, #49736	@ tmp391,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.Usertag, tmp391, pH264Ctx
	ldr	r6, [r4, r1]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r0, [sp, #16]	@,,
	cmp	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	movw	r1, #49744	@ tmp395,
	strd	r2, [r6, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r2, [sp, #8]	@,,
	ldrd	r0, [r1, r4]	@ <variable>.CurrPic.fs_image.DispTime, tmp395, pH264Ctx
	cmp	r1, r3	@ <variable>.CurrPic.fs_image.DispTime,
	cmpeq	r0, r2	@ <variable>.CurrPic.fs_image.DispTime,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrhid	r0, [sp, #8]	@ <variable>.CurrPic.fs_image.DispTime,,
.L2113:
	movw	lr, #50696	@ tmp398,
	movw	r6, #49788	@ tmp399,
	strd	r0, [r2, #32]	@ <variable>.CurrPic.fs_image.DispTime, <variable>.pDirectOutBuf,
	movw	ip, #49792	@ tmp404,
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r0, #49796	@ tmp409,
	ldr	r5, [r4, r6]	@ <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r1, #49800	@ tmp414,
	ldr	r3, [r4, ip]	@ <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	ldr	r0, [r4, r0]	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	cmp	r5, sl	@ <variable>.CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	strls	r5, [r2, #76]	@, <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r2, #76]	@, OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r6, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r5, [r4, r1]	@ <variable>.CurrPic.fs_image.GopNum, <variable>.CurrPic.fs_image.GopNum
	cmp	r3, r8	@ <variable>.CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	strls	r3, [r6, #80]	@, <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r8, [r6, #80]	@, OtherFieldDispFrameDistance, <variable>.fs_image.DispFrameDistance
	ldr	ip, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, r7	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	strls	r0, [ip, #84]	@, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	r7, [ip, #84]	@, OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	movw	r0, #50148	@ tmp427,
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r5, r9	@ <variable>.CurrPic.fs_image.GopNum, OtherFieldGopNum
	strls	r5, [r2, #88]	@, <variable>.CurrPic.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	r9, [r2, #88]	@, OtherFieldGopNum, <variable>.fs_image.GopNum
	ldr	r6, [r4, lr]	@ temp.5836, <variable>.pDirectOutBuf
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #49706	@ tmp419,
	moveq	r5, r3	@ iftmp.514, <variable>.non_existing
	ldrneb	r5, [r4, r3]	@ zero_extendqisi2	@ iftmp.514, <variable>.CurrPic.non_existing
	movw	r3, #50696	@ tmp421,
	strb	r5, [r6, #0]	@ iftmp.514, <variable>.non_existing
	ldr	lr, [r4, r3]	@ temp.5837, <variable>.pDirectOutBuf
	ldrb	r7, [lr, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	ip, r7, #1	@ tmp424, <variable>.is_used,
	strb	ip, [lr, #1]	@ tmp424, <variable>.is_used
	ldr	r2, [r4, r3]	@ temp.5839, <variable>.pDirectOutBuf
	mov	r7, #1	@ tmp433,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	movw	r0, #50156	@ tmp441,
	mov	ip, #3	@ tmp437,
	ldr	r6, [r2, #540]	@ <variable>.pic_type, <variable>.pic_type
	cmp	r6, r1	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	r6, [r2, #540]	@, <variable>.pic_type, <variable>.pic_type
	strcc	r1, [r2, #540]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r5, #436]	@ tmp433, <variable>.top_field.structure
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	ip, [lr, #400]	@ tmp437, <variable>.frame.structure
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r2, #456]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	ldr	lr, [r4, r3]	@ temp.5844, <variable>.pDirectOutBuf
	ldr	r6, [lr, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r5, [lr, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r7, r6, r5	@ tmp444, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	movw	r5, #49711	@ tmp452,
	mov	ip, r7, lsr #1	@ tmp447, tmp444,
	str	ip, [lr, #420]	@ tmp447, <variable>.frame.err_level
	ldr	r0, [r4, r3]	@ temp.5846, <variable>.pDirectOutBuf
	ldr	r1, [r0, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r1, [r0, #544]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	r2, [r4, r3]	@ temp.5847, <variable>.pDirectOutBuf
	ldr	r6, [r2, #440]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	str	r6, [r2, #404]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	ldrb	r7, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	bne	.L2131	@,
	ldr	r3, [r4, r3]	@ D.34255, <variable>.pDirectOutBuf
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r7, #1	@ iftmp.515, <variable>.mode_skip_flag,
	b	.L2132	@
.L2143:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L2146	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #2488	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.5772,
	bl	dprint_vfmw	@
	b	.L2101	@
.L2107:
	ldr	lr, [r0, r5]	@ temp.5803, <variable>.CurrPic.frame_store
	mov	r6, r1	@ ret, temp.5800
	str	lr, [r0, r7]	@ temp.5803, <variable>.pDirectOutBuf
	str	lr, [lr, #440]	@ temp.5803, <variable>.top_field.frame_store
	b	.L2108	@
.L2120:
	ldr	r2, [r0, r5]	@ temp.5862, <variable>.CurrPic.frame_store
	mov	r6, r1	@ ret, temp.5859
	str	r2, [r0, r7]	@ temp.5862, <variable>.pDirectOutBuf
	str	r2, [r2, #476]	@ temp.5862, <variable>.bottom_field.frame_store
	b	.L2121	@
.L2145:
	ldr	r3, [r4, r3]	@ temp.5770, <variable>.pDirectOutBuf
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r7, #2	@ iftmp.521, <variable>.mode_skip_flag,
	b	.L2132	@
.L2147:
	.align	2
.L2146:
	.word	.LANCHOR0+208
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
	bne	.L2149	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, r6	@, pos
	bl	RemoveFrameStoreOutDPB	@
.L2149:
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
	movw	r7, #26628	@ tmp149,
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L2152	@,
	add	r5, r0, #26368	@ ivtmp.6008, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r5, #64	@ ivtmp.6008, ivtmp.6008,
	b	.L2154	@
.L2153:
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bls	.L2152	@,
.L2154:
	ldr	r1, [r5, #0]	@ D.34387, <variable>.DPB.fs
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.6008, ivtmp.6008,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2153	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bhi	.L2154	@,
.L2152:
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	bne	.L2178	@,
.L2155:
	add	r2, r4, #26368	@ ivtmp.6003, pH264Ctx,
	movw	r6, #26628	@ tmp164,
	add	r5, r2, #64	@ ivtmp.6003, ivtmp.6003,
	mov	r7, #26624	@ tmp165,
.L2166:
	ldr	r0, [r4, r6]	@ D.41201, <variable>.DPB.used_size
	cmp	r0, #0	@ D.41201,
	beq	.L2179	@,
	ldr	r8, [r4, r7]	@ temp.6012, <variable>.DPB.size
	cmp	r0, r8	@ D.41201, temp.6012
	movls	r8, r0	@ temp.6012, D.41201
	bls	.L2157	@,
	cmp	r8, #0	@ temp.6012,
	str	r8, [r4, r6]	@ temp.6012, <variable>.DPB.used_size
	moveq	r1, r8	@ pos.6013, temp.6012
	beq	.L2158	@,
.L2157:
	tst	r8, #1	@ temp.6012,
	mov	r1, #0	@ pos.6013,
	mov	r2, r5	@ ivtmp.6003, ivtmp.6003
	mvn	r0, #-2147483648	@ min_poc.6015,
	mov	ip, r1	@ pos, pos.6013
	bne	.L2164	@,
	ldr	r3, [r5, #0]	@ D.41198, <variable>.DPB.fs
	ldr	r0, [r3, #524]	@ min_poc, <variable>.poc
	cmn	r0, #-2147483647	@ min_poc,
	bge	.L2169	@,
	ldrb	ip, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L2169	@,
	mov	ip, #1	@ pos,
	cmp	ip, r8	@ pos, temp.6012
	add	r2, r5, #4	@ ivtmp.6003, ivtmp.6003,
	bcs	.L2158	@,
.L2164:
	ldr	lr, [r2, #0]	@ D.41198, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc, <variable>.poc
	cmp	r3, r0	@ min_poc, min_poc.6015
	bge	.L2159	@,
.L2180:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r1, ip	@ pos.6013, pos
	beq	.L2159	@,
	add	ip, ip, #1	@ tmp175, pos,
	add	lr, r2, #4	@ tmp176, ivtmp.6003,
	cmp	ip, r8	@ tmp175, temp.6012
	bcs	.L2158	@,
.L2161:
	ldr	r2, [r2, #4]	@ D.41198, <variable>.DPB.fs
	ldr	r0, [r2, #524]	@ min_poc, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc
	bge	.L2172	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2172	@,
	mov	r1, ip	@ pos.6013, tmp175
.L2177:
	add	r2, lr, #4	@ ivtmp.6003, tmp176,
	add	ip, ip, #1	@ pos, tmp175,
	ldr	lr, [r2, #0]	@ D.41198, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc, <variable>.poc
	cmp	r3, r0	@ min_poc, min_poc.6015
	blt	.L2180	@,
.L2159:
	add	ip, ip, #1	@ tmp175, pos,
	mov	r3, r0	@ min_poc, min_poc.6015
	cmp	ip, r8	@ tmp175, temp.6012
	add	lr, r2, #4	@ tmp176, ivtmp.6003,
	bcc	.L2161	@,
.L2158:
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret.6011,
	bne	.L2166	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2169:
	mov	ip, #1	@ pos,
	cmp	ip, r8	@ pos, temp.6012
	mvn	r0, #-2147483648	@ min_poc,
	add	r2, r5, #4	@ ivtmp.6003, ivtmp.6003,
	bcc	.L2164	@,
	b	.L2158	@
.L2172:
	mov	r0, r3	@ min_poc, min_poc
	b	.L2177	@
.L2179:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2178:
	movw	r1, #:lower16:.LC72	@,
	ldr	r2, .L2181	@,
	movt	r1, #:upper16:.LC72	@,
	movw	r3, #2838	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L2155	@
.L2182:
	.align	2
.L2181:
	.word	.LANCHOR0+224
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
	beq	.L2184	@,
	movw	sl, #26628	@ tmp150,
	ldr	r0, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@ <variable>.DPB.used_size,
	beq	.L2185	@,
	add	r4, r6, #26368	@ ivtmp.6056, pH264Ctx,
	mov	r7, #0	@ i.6071,
	add	r4, r4, #128	@ ivtmp.6056, ivtmp.6056,
	mov	r5, r7	@ tmp230, i.6071
	movw	r8, #52840	@ tmp231,
	mov	r9, #1	@ tmp232,
.L2187:
	ldr	r1, [r4, #-64]	@ D.34533, <variable>.DPB.fs
	mov	r2, #0	@,
	add	r7, r7, #1	@ i.6071, i.6071,
	strb	r5, [r1, #401]	@ tmp230, <variable>.frame.is_long_term
	strb	r5, [r1, #402]	@ tmp230, <variable>.frame.is_short_term
	ldr	ip, [r4, #-64]	@ temp.6058, <variable>.DPB.fs
	strb	r5, [ip, #437]	@ tmp230, <variable>.top_field.is_long_term
	strb	r5, [ip, #438]	@ tmp230, <variable>.top_field.is_short_term
	ldr	r0, [r4, #-64]	@ temp.6059, <variable>.DPB.fs
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
	ldr	ip, [r4, #-64]	@ temp.6065, <variable>.DPB.fs
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
	beq	.L2186	@,
	ldr	lr, [r4, #-64]	@ tmp193, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2186:
	ldr	r2, [r6, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	str	r5, [r4, #-64]	@ tmp230, <variable>.DPB.fs
	cmp	r2, r7	@ <variable>.DPB.used_size, i.6071
	str	r5, [r4, #0]	@ tmp230, <variable>.DPB.fs_ref
	str	r5, [r4, #64]	@ tmp230, <variable>.DPB.fs_ltref
	add	r4, r4, #4	@ ivtmp.6056, ivtmp.6056,
	bhi	.L2187	@,
.L2185:
	movw	r0, #51320	@ tmp202,
	movw	r3, #26628	@ tmp200,
	ldr	ip, [r6, r0]	@ D.34544, <variable>.TotalPmvNum
	mov	r0, #0	@ tmp201,
	str	r0, [r6, r3]	@ tmp201, <variable>.DPB.used_size
	cmp	ip, r0	@ D.34544,
	beq	.L2188	@,
	add	r3, r6, #51200	@ tmp203, pH264Ctx,
	mov	r2, #1	@ i,
	add	lr, r3, #48	@ ivtmp.6048, tmp203,
	cmp	r2, ip	@ i, D.34544
	sub	r1, ip, #1	@ tmp234, D.34544,
	str	r0, [lr, #0]	@ tmp229, <variable>.PmvStoreUsedFlag
	and	lr, r1, r2	@ tmp236, tmp234,
	add	r1, r3, #52	@ ivtmp.6048, tmp203,
	bcs	.L2188	@,
	cmp	lr, #0	@ tmp236,
	beq	.L2189	@,
	mov	r2, #2	@ i,
	cmp	r2, ip	@ i, D.34544
	str	r0, [r1, #0]	@ tmp229, <variable>.PmvStoreUsedFlag
	add	r1, r3, #56	@ ivtmp.6048, tmp203,
	bcs	.L2188	@,
.L2189:
	add	r2, r2, #2	@ i, i,
	mov	r3, r1	@ tmp238, ivtmp.6048
	cmp	r2, ip	@ i, D.34544
	str	r0, [r3], #4	@ tmp229, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp229, <variable>.PmvStoreUsedFlag
	add	r1, r3, #4	@ ivtmp.6048, tmp238,
	bcc	.L2189	@,
.L2188:
	mov	r0, r6	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r6	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r1, #50116	@ tmp208,
	ldr	r0, [r6, r1]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ <variable>.long_term_reference_flag, <variable>.long_term_reference_flag
	cmp	r3, #0	@ <variable>.long_term_reference_flag,
	bne	.L2200	@,
	movw	r1, #26640	@ tmp220,
	movw	r2, #49709	@ tmp225,
	movw	lr, #49708	@ tmp222,
	mov	ip, #1	@ tmp226,
	mov	r0, r3	@ D.34552, <variable>.long_term_reference_flag
	str	r3, [r6, r1]	@ <variable>.long_term_reference_flag, <variable>.DPB.max_long_term_pic_idx
	strb	ip, [r6, r2]	@ tmp226, <variable>.CurrPic.is_short_term
	strb	r3, [r6, lr]	@ <variable>.long_term_reference_flag, <variable>.CurrPic.is_long_term
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2184:
	movw	r2, #49705	@ tmp205,
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	ip, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2188	@,
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.34552,
	beq	.L2188	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2200:
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
	ldr	r4, [r0, r3]	@ ivtmp.6105, <variable>.CurrPic.pMarkPara
	add	r7, r0, #49664	@ D.34486, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r7, r7, #40	@ D.34486, D.34486,
	add	r6, r4, #2000	@ D.46821, ivtmp.6105,
	movw	r8, #19820	@ tmp211,
	mov	sl, #1	@ tmp212,
.L2211:
	ldr	r0, [r4, #4]	@ <variable>.memory_management_control_operation, <variable>.memory_management_control_operation
	cmp	r0, #6	@ <variable>.memory_management_control_operation,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.memory_management_control_operation
	b	.L2202	@
.L2210:
	.word	.L2203
	.word	.L2204
	.word	.L2205
	.word	.L2206
	.word	.L2207
	.word	.L2208
	.word	.L2209
.L2209:
	ldr	r2, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.34486
	bl	MarkCurrPicLT	@
.L2202:
	add	r4, r4, #20	@ ivtmp.6105, ivtmp.6105,
	cmp	r4, r6	@ ivtmp.6105, D.46821
	bne	.L2211	@,
.L2203:
	movw	r2, #19820	@ tmp163,
	ldr	r1, [r5, r2]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r1, #1	@ <variable>.CurrPOC.last_has_mmco_5,
	beq	.L2220	@,
.L2212:
	mov	r0, #0	@ D.34516,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2208:
	mov	r0, r5	@, pH264Ctx
	add	r4, r4, #20	@ ivtmp.6105, ivtmp.6105,
	bl	UnMarkAllSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #0	@,
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6105, D.46821
	str	sl, [r5, r8]	@ tmp212, <variable>.CurrPOC.last_has_mmco_5
	bne	.L2211	@,
	b	.L2203	@
.L2207:
	ldr	r1, [r4, #20]	@, <variable>.max_long_term_frame_idx_plus1
	mov	r0, r5	@, pH264Ctx
	bl	UpdateMaxLTFrmIdx	@
	add	r4, r4, #20	@ ivtmp.6105, ivtmp.6105,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6105, D.46821
	bne	.L2211	@,
	b	.L2203	@
.L2206:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r1, r7	@, D.34486
	ldr	r3, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	bl	MarkSTToLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	add	r4, r4, #20	@ ivtmp.6105, ivtmp.6105,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6105, D.46821
	bne	.L2211	@,
	b	.L2203	@
.L2205:
	ldr	r2, [r4, #12]	@, <variable>.long_term_pic_num
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.34486
	add	r4, r4, #20	@ ivtmp.6105, ivtmp.6105,
	bl	UnMarkLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6105, D.46821
	bne	.L2211	@,
	b	.L2203	@
.L2204:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.34486
	add	r4, r4, #20	@ ivtmp.6105, ivtmp.6105,
	bl	UnMarkSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	cmp	r4, r6	@ ivtmp.6105, D.46821
	bne	.L2211	@,
	b	.L2203	@
.L2220:
	movw	lr, #49707	@ tmp167,
	movw	ip, #50120	@ tmp165,
	ldrb	r2, [r5, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r3, #0	@ tmp166,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPic.frame_num
	cmp	r2, #1	@ <variable>.CurrPic.structure,
	beq	.L2215	@,
	bcs	.L2221	@,
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
	rsb	r6, ip, r6	@ D.34505, <variable>.CurrPic.thispoc, <variable>.CurrPic.bottompoc
	str	r6, [r5, r4]	@ D.34505, <variable>.CurrPic.bottompoc
	sub	r4, r4, #8	@ tmp195, tmp195,
	rsb	r8, ip, r8	@ D.34504, <variable>.CurrPic.thispoc, <variable>.CurrPic.toppoc
	rsb	ip, r1, r9	@ D.34509, <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.toppoc
	ldr	r9, [r5, r2]	@, <variable>.CurrPOC.bottompoc
	cmp	r6, r8	@ D.34505, D.34504
	movlt	lr, r6	@ D.34506, D.34505
	movge	lr, r8	@ D.34506, D.34504
	str	ip, [r5, r0]	@ D.34509, <variable>.CurrPOC.toppoc
	rsb	r1, r1, r9	@ D.34510, <variable>.CurrPOC.ThisPOC,
	str	lr, [r5, r3]	@ D.34506, <variable>.CurrPic.thispoc
	cmp	r1, ip	@ D.34510, D.34509
	movlt	r3, r1	@ D.34511, D.34510
	movge	r3, ip	@ D.34511, D.34509
	add	ip, r2, #4	@ tmp207, tmp207,
	str	r3, [r5, sl]	@ D.34511, <variable>.CurrPOC.ThisPOC
	str	r8, [r5, r7]	@ D.34504, <variable>.CurrPic.toppoc
	str	lr, [r5, r4]	@ D.34506, <variable>.CurrPic.framepoc
	str	r1, [r5, r2]	@ D.34510, <variable>.CurrPOC.bottompoc
	str	r3, [r5, ip]	@ D.34511,
.L2213:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.34516,
	beq	.L2212	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2221:
	cmp	r2, #2	@ <variable>.CurrPic.structure,
	bne	.L2213	@,
	movw	r1, #50144	@ tmp177,
	sub	r0, r1, #12	@ tmp179, tmp179,
	movw	r2, #19840	@ tmp183,
	movw	lr, #19832	@ tmp181,
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.bottompoc
	str	r3, [r5, r0]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, lr]	@ tmp166,
	b	.L2213	@
.L2215:
	movw	r2, #50140	@ tmp169,
	sub	r1, r2, #8	@ tmp171, tmp171,
	movw	ip, #19840	@ tmp175,
	movw	r0, #19828	@ tmp173,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPic.toppoc
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, r0]	@ tmp166,
	b	.L2213	@
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
	beq	.L2223	@,
	movw	r1, #50148	@ tmp148,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, r2	@ <variable>.CurrPic.pic_type,
	bne	.L2224	@,
	ldr	r3, [r4, #0]	@ D.34570, <variable>.pstExtraData
	ldr	ip, [r3, #540]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	ip, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2235	@,
.L2224:
	movw	r3, #50116	@ tmp158,
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L2234	@,
	movw	ip, #50128	@ tmp161,
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2236	@,
.L2229:
	mov	r0, #0	@ D.34583,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L2235:
	ldr	r2, [r3, #536]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r2, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2224	@,
	ldr	r0, [r3, #544]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2224	@,
	ldr	ip, [r3, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r1, ip, #1020	@ tmp153, <variable>.s32FastForwardBackwardSpeed,
	add	r3, r1, #3	@ tmp153, tmp153,
	cmp	r3, #2048	@ tmp153,
	bcc	.L2224	@,
.L2223:
	mov	r0, r4	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	bne	.L2225	@,
.L2226:
	movw	r2, #49710	@ tmp163,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	cmp	lr, #5	@ <variable>.CurrPic.nal_unit_type,
	beq	.L2230	@,
.L2234:
	movw	r3, #50128	@ tmp165,
	ldr	r0, [r4, r3]	@ prephitmp.6129, <variable>.CurrPic.nal_ref_idc
	cmp	r0, #0	@ prephitmp.6129,
	beq	.L2229	@,
	movw	r2, #50116	@ tmp167,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r1, [ip, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r1, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L2231	@,
	movw	r0, #49705	@ tmp169,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2231	@,
	mov	r0, r4	@, pH264Ctx
	bl	SlidingWinMark	@
	movw	r3, #49708	@ tmp171,
	strb	r5, [r4, r3]	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.is_long_term
.L2230:
	movw	r1, #50128	@ tmp174,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2229	@,
.L2231:
	movw	r0, #49708	@ tmp177,
	movw	r3, #49709	@ tmp176,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r0, #0	@ D.34583,
	cmp	r2, r0	@ <variable>.CurrPic.is_long_term,
	movne	ip, #0	@, tmp179
	moveq	ip, #1	@, tmp179
	strb	ip, [r4, r3]	@ tmp179, <variable>.CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L2236:
	mov	r0, r4	@, pH264Ctx
	bl	AdaptiveMemMark	@
	cmp	r0, #0	@,
	beq	.L2226	@,
.L2225:
	mvn	r0, #0	@ D.34583,
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
	subs	r3, r0, #0	@ ret,
	beq	.L2238	@,
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC73	@,
	mov	r2, #332	@,
	bl	dprint_vfmw	@
.L2238:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	mov	r3, #0	@ tmp138,
	movw	r0, #52848	@ tmp139,
	movw	r2, #51332	@ tmp137,
	str	r3, [r4, r0]	@ tmp138, <variable>.FirstFrameDisplayed
	mov	r0, r3	@, tmp138
	str	r3, [r4, r2]	@ tmp138, <variable>.IDRFound
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r1	@ pPacket, pPacket
	ldr	ip, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r1, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r1, #4]	@ <variable>.p_stream, <variable>.p_stream
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	str	ip, [sp, #0]	@ <variable>.stream_len,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #368]	@ D.40482, <variable>.pCurrNal
	cmp	r3, #0	@ D.40482,
	beq	.L2241	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	cmp	r2, #1	@ <variable>.last_pack_in_nal,
	beq	.L2263	@,
.L2242:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5, #368]	@ D.40482, <variable>.pCurrNal
	cmp	r3, #0	@ D.40482,
	ldrneb	r2, [r4, #0]	@ zero_extendqisi2	@ prephitmp.6183, <variable>.last_pack_in_nal
	beq	.L2241	@,
.L2243:
	strb	r2, [r3, #3]	@ prephitmp.6183, <variable>.nal_integ
	ldr	r0, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r0, #0	@ <variable>.stream_len,
	ble	.L2252	@,
	ldr	r2, [r4, #4]	@ temp.6224, <variable>.p_stream
	cmp	r2, #0	@ temp.6224,
	beq	.L2252	@,
	ldr	r3, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	r3, #0	@ <variable>.strm_phy_addr,
	bne	.L2255	@,
.L2252:
	ldr	r3, [r5, #368]	@ prephitmp.6185, <variable>.pCurrNal
.L2254:
	movw	r6, #52840	@ tmp276,
	mov	ip, #1	@ tmp274,
	strb	ip, [r3, #3]	@ tmp274, <variable>.nal_integ
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #:lower16:g_event_report	@ tmp279,
	movt	r0, #:upper16:g_event_report	@ tmp279,
	ldr	r3, [r0, #0]	@ g_event_report.6244, g_event_report
	cmp	r3, #0	@ g_event_report.6244,
	beq	.L2249	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6244
.L2249:
	ldr	r2, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrb	lr, [r2, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	lr, #0	@ <variable>.nal_integ,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L2251:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L2263:
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bhi	.L2242	@,
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	r0, #1	@ <variable>.nal_integ,
	bne	.L2243	@,
	b	.L2242	@
.L2255:
	ldr	r3, [r5, #368]	@ prephitmp.6185, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ temp.6226, <variable>.nal_segment
	cmp	r1, #1	@ temp.6226,
	bhi	.L2254	@,
	rsb	r1, r1, r1, asl #3	@, tmp232, temp.6226, temp.6226,
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, r1, asl #2	@, tmp234, prephitmp.6185, tmp232,
	str	r2, [r3, #8]	@ temp.6224, <variable>.streamBuffer
	ldr	ip, [r5, #368]	@ temp.6228, <variable>.pCurrNal
	ldr	r1, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	lr, r2, r2, asl #3	@, tmp240, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, ip, lr, asl #2	@, tmp242, temp.6228, tmp240,
	str	r1, [r3, #12]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	ip, [r5, #368]	@ temp.6232, <variable>.pCurrNal
	ldr	r1, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	lr, r2, r2, asl #3	@, tmp249, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, ip, lr, asl #2	@, tmp251, temp.6232, tmp249,
	str	r1, [r3, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	mov	r1, #0	@ tmp262,
	ldr	ip, [r5, #368]	@ temp.6235, <variable>.pCurrNal
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	lr, r2, r2, asl #3	@, tmp258, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, ip, lr, asl #2	@, tmp260, temp.6235, tmp258,
	str	r1, [r3, #24]	@ tmp262, <variable>.bitsoffset
	ldr	ip, [r5, #368]	@ temp.6237, <variable>.pCurrNal
	ldr	r1, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	lr, r2, r2, asl #3	@, tmp267, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, ip, lr, asl #2	@, tmp269, temp.6237, tmp267,
	str	r1, [r3, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	lr, [r5, #368]	@ temp.6240, <variable>.pCurrNal
	ldr	r2, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	add	ip, r2, #1	@ tmp273, <variable>.nal_segment,
	str	ip, [lr, #68]	@ tmp273, <variable>.nal_segment
	bl	CombinePacket	@
	b	.L2249	@
.L2241:
	ldr	r3, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r3, #0	@ <variable>.stream_len,
	ble	.L2245	@,
	ldr	r2, [r4, #4]	@ <variable>.p_stream, <variable>.p_stream
	cmp	r2, #0	@ <variable>.p_stream,
	beq	.L2245	@,
	ldr	lr, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	lr, #0	@ <variable>.strm_phy_addr,
	beq	.L2245	@,
	ldrb	r2, [r5, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r3, #0	@ Pos,
	cmp	r2, r3	@ <variable>.is_valid,
	addne	r1, r5, #96	@ ivtmp.6204, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L2247	@,
	b	.L2246	@
.L2264:
	ldrb	r2, [r1, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r1, r1, #192	@ ivtmp.6204, ivtmp.6204,
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L2246	@,
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2248	@,
.L2247:
	ldrb	r2, [r1, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L2264	@,
.L2246:
	cmp	r3, #136	@ Pos,
	bhi	.L2248	@,
	add	ip, r3, r3, asl #1	@, tmp173, Pos, Pos,
	mov	lr, #1	@ tmp177,
	mov	r3, ip, asl #5	@ tmp174, tmp173,
	add	ip, r3, r5	@ tmp175, tmp174, pH264Ctx
	add	r0, r3, #376	@ tmp183, tmp174,
	add	r1, r5, r0	@ tmp184, pH264Ctx, tmp183
	strb	lr, [ip, #377]	@ tmp177, <variable>.is_valid
	str	r1, [r5, #368]	@ tmp184, <variable>.pCurrNal
	ldr	r7, [r4, #4]	@ <variable>.p_stream, <variable>.p_stream
	str	r7, [ip, #384]	@ <variable>.p_stream, <variable>.streamBuffer
	ldr	r6, [r4, #12]	@ <variable>.stream_len, <variable>.stream_len
	str	r6, [ip, #388]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	r3, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r0, [r4, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	str	r0, [r3, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r2, [r1, #24]	@ <variable>.is_valid, <variable>.bitsoffset
	ldr	r7, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r6, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r6, [r7, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	ip, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrd	r6, [r4, #24]	@ <variable>.pts, pPacket,
	strd	r6, [ip, #88]	@ <variable>.pts, <variable>.pCurrNal,
	ldr	r3, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	lr, [r3, #68]	@ tmp177, <variable>.nal_segment
	ldr	r0, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	r2, [r0, #0]	@ <variable>.is_valid, <variable>.nal_used_segment
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	ip, [r1, #3]	@ <variable>.last_pack_in_nal, <variable>.nal_integ
	b	.L2249	@
.L2248:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #:lower16:g_event_report	@ tmp218,
	movt	r2, #:upper16:g_event_report	@ tmp218,
	ldr	r3, [r2, #0]	@ g_event_report.814, g_event_report
	cmp	r3, #0	@ g_event_report.814,
	bne	.L2265	@,
.L2250:
	mvn	r0, #0	@ ret,
	b	.L2251	@
.L2265:
	movw	lr, #52840	@ tmp219,
	mov	r1, #113	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.814
	mvn	r0, #0	@ ret,
	b	.L2251	@
.L2245:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC77	@,
	movw	r6, #52840	@ tmp221,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp224,
	movt	r1, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [r1, #0]	@ g_event_report.6221, g_event_report
	cmp	r3, #0	@ g_event_report.6221,
	beq	.L2250	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6221
	mvn	r0, #0	@ ret,
	b	.L2251	@
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #49707	@ tmp147,
	.pad #8
	sub	sp, sp, #8	@,,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r3, #0	@ <variable>.CurrPic.structure,
	beq	.L2267	@,
	movw	r2, #49705	@ tmp149,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r1, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2267	@,
.L2268:
	movw	r6, #52768	@ tmp163,
	movw	ip, #52828	@ tmp162,
	ldr	r5, [r4, ip]	@ IPBDecMode, <variable>.advanced_cfg
	ldr	r3, [r4, r6]	@ D.37221, <variable>.OldDecMode
	cmp	r5, #2	@ IPBDecMode,
	cmpne	r3, r5	@, D.37221, IPBDecMode
	beq	.L2269	@,
	sub	lr, r3, #2	@ tmp171, D.37221,
	cmp	lr, #1	@ tmp171,
	bls	.L2302	@,
.L2269:
	movw	r3, #52768	@ tmp181,
	sub	r1, r5, #1	@ tmp182, IPBDecMode,
	str	r5, [r4, r3]	@ IPBDecMode, <variable>.OldDecMode
	cmp	r1, #4	@ tmp182,
	ldrls	pc, [pc, r1, asl #2]	@ tmp182
	b	.L2271	@
.L2276:
	.word	.L2272
	.word	.L2273
	.word	.L2274
	.word	.L2271
	.word	.L2275
.L2275:
	movw	r0, #50148	@ tmp203,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ <variable>.CurrPic.pic_type,
	beq	.L2278	@,
	movw	ip, #49707	@ tmp205,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r2, #0	@ <variable>.CurrPic.structure,
	beq	.L2279	@,
	movw	r1, #50676	@ tmp207,
	ldr	lr, [r4, r1]	@ <variable>.PrevPic.pic_type, <variable>.PrevPic.pic_type
	cmp	lr, #0	@ <variable>.PrevPic.pic_type,
	bne	.L2279	@,
.L2278:
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r2, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	cmp	r3, #0	@ <variable>.s32firstIdecodedflag,
	bne	.L2279	@,
	movw	ip, #52764	@ tmp211,
	ldr	r0, [r4, ip]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r0, #0	@ <variable>.SliceParaNum,
	beq	.L2271	@,
	movw	r0, #52760	@ tmp214,
	ldr	r1, [r4, r0]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	lr, [r1, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	lr, #0	@ <variable>.first_mb_in_slice,
	bne	.L2303	@,
.L2271:
	movw	r3, #52844	@ tmp224,
	ldr	lr, [r4, r3]	@ <variable>.PrevPicIsIDR, <variable>.PrevPicIsIDR
	cmp	lr, #1	@ <variable>.PrevPicIsIDR,
	beq	.L2304	@,
.L2280:
	movw	lr, #50152	@ tmp232,
	movw	r3, #52844	@ tmp231,
	ldr	r2, [r4, lr]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	r2, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
.L2281:
	movw	r0, #52764	@ tmp234,
	ldr	r1, [r4, r0]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r1, #0	@ <variable>.SliceParaNum,
	beq	.L2301	@,
	movw	ip, #52768	@ tmp236,
	ldr	r5, [r4, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r5, #4	@ <variable>.OldDecMode,
	beq	.L2283	@,
	movw	r3, #50148	@ tmp238,
	ldr	r3, [r4, r3]	@ prephitmp.6272, <variable>.CurrPic.pic_type
.L2284:
	cmp	r3, #2	@ prephitmp.6272,
	beq	.L2305	@,
	cmp	r3, #1	@ prephitmp.6272,
	movweq	r2, #51336	@ tmp264,
	streq	r3, [r4, r2]	@ prephitmp.6272, <variable>.PPicFound
.L2287:
	movw	r5, #52804	@ tmp267,
	movw	ip, #49707	@ tmp270,
	ldr	lr, [r4, r5]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	mov	r0, #2	@,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@, <variable>.CurrPic.structure
	movw	r1, #:lower16:.LC80	@,
	sub	r2, lr, #1	@, <variable>.TotalPicNum,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	movw	r1, #50172	@ tmp273,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_mbs, <variable>.CurrPic.pic_mbs
	mov	r2, #50176	@ tmp279,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	movw	r3, #52764	@ tmp282,
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	movw	r3, #52288	@ tmp272,
	ldr	r0, [r4, r5]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	str	ip, [r4, r3]	@ <variable>.CurrPic.pic_mbs, <variable>.DecPicPara.mbtodec
	movw	r3, #52284	@ tmp278,
	str	r1, [r4, r3]	@ <variable>.CurrPic.stream_base_addr, <variable>.DecPicPara.stream_base_addr
	cmp	r0, #0	@ <variable>.TotalPicNum,
	movw	r1, #52488	@ tmp281,
	mov	ip, #1	@ tmp276,
	str	r2, [r4, r1]	@ <variable>.SliceParaNum, <variable>.DecPicPara.SliceParaNum
	movw	r2, #51370	@ tmp275,
	strb	ip, [r4, r2]	@ tmp276, <variable>.DecPicPara.NewPicFlag
	beq	.L2270	@,
	movw	r3, #50148	@ tmp286,
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2289	@,
	movw	r5, #:lower16:g_event_report	@ tmp288,
	movt	r5, #:upper16:g_event_report	@ tmp288,
	ldr	r2, [r5, #0]	@ g_event_report, g_event_report
	cmp	r2, #0	@ g_event_report,
	beq	.L2298	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_GetPicStreamSize	@
	add	r2, sp, #8	@ tmp293,,
	ldr	ip, [r5, #0]	@ g_event_report, g_event_report
	mov	r1, #20	@,
	str	r0, [r2, #-4]!	@, para
	movw	r0, #52840	@ tmp291,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	ip	@ g_event_report
.L2298:
	ldr	r2, [r4, #0]	@ temp.6311, <variable>.pstExtraData
.L2290:
	add	ip, r4, #51200	@ D.37319, pH264Ctx,
	add	r3, ip, #168	@ D.37319, D.37319,
	str	r3, [r4, #360]	@ D.37319, <variable>.pH264DecParam
	ldr	r1, [r2, #708]	@ D.37320, <variable>.stDisParams.s32Mode
	cmp	r1, #1	@ D.37320,
	beq	.L2306	@,
	cmp	r1, #2	@ D.37320,
	beq	.L2307	@,
.L2292:
	ldr	r2, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	ip, #52752	@ tmp315,
	mov	r0, #0	@ D.37236,
	str	r2, [r4, ip]	@ <variable>.s32Compress_en, <variable>.DecPicPara.Compress_en
.L2270:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L2267:
	movw	r3, #52868	@ tmp151,
	ldr	r5, [r4, #0]	@ D.37215, <variable>.pstExtraData
	ldr	r6, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	movw	r1, #52872	@ tmp154,
	ldr	r2, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r0, r6, #1	@ D.37217, <variable>.numTotalFrame,
	cmp	r0, r2	@ D.37217, <variable>.numOutputFrame
	movlt	r0, r2	@ D.37219, <variable>.numOutputFrame
	str	r0, [r4, r3]	@ D.37219, <variable>.numTotalFrame
	str	r0, [r5, #440]	@ D.37219, <variable>.stChanState.total_frame_num
	ldr	lr, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ldr	ip, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	rsb	r6, ip, lr	@ tmp161, <variable>.numOutputFrame, <variable>.numTotalFrame
	str	r6, [r5, #444]	@ tmp161, <variable>.stChanState.error_frame_num
	b	.L2268	@
.L2302:
	cmp	r5, #4	@ IPBDecMode,
	cmpne	r5, #1	@, IPBDecMode,
	bhi	.L2269	@,
	mov	r2, r5	@, IPBDecMode
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	str	r5, [r4, r6]	@ IPBDecMode, <variable>.OldDecMode
.L2274:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.37236,
	b	.L2270	@
.L2289:
	movw	lr, #26628	@ tmp295,
	ldr	r1, [r4, lr]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, #0	@ <variable>.DPB.used_size,
	bne	.L2298	@,
	ldr	r2, [r4, #0]	@ temp.6311, <variable>.pstExtraData
	ldr	r3, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2290	@,
.L2301:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.37236,
	b	.L2270	@
.L2304:
	movw	r0, #50148	@ tmp226,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r1, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2280	@,
	movw	ip, #50152	@ tmp229,
	ldr	r2, [r4, ip]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	r2, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
	b	.L2281	@
.L2305:
	movw	r5, #51336	@ tmp248,
	ldr	r0, [r4, r5]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r0, #2	@ <variable>.PPicFound,
	bne	.L2287	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r5, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r5, #0	@ <variable>.s32DecOrderOutput,
	bne	.L2287	@,
	movw	lr, #:lower16:g_allow_B_before_P	@ tmp252,
	movt	lr, #:upper16:g_allow_B_before_P	@ tmp252,
	ldrb	r3, [lr, #0]	@ zero_extendqisi2	@ g_allow_B_before_P, g_allow_B_before_P
	cmp	r3, #1	@ g_allow_B_before_P,
	beq	.L2287	@,
	movw	r0, #50132	@ tmp255,
	movw	r3, #50128	@ tmp257,
	ldr	r2, [r4, r0]	@, <variable>.CurrPic.thispoc
	movw	r1, #:lower16:.LC79	@,
	ldr	r3, [r4, r3]	@, <variable>.CurrPic.nal_ref_idc
	movt	r1, #:upper16:.LC79	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	movw	r1, #50112	@ tmp262,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r2, #52840	@ tmp259,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, r5	@, <variable>.s32DecOrderOutput
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.37236,
	b	.L2270	@
.L2283:
	movw	lr, #50148	@ tmp239,
	ldr	r3, [r4, lr]	@ prephitmp.6272, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ prephitmp.6272,
	bne	.L2284	@,
	movw	r1, #51336	@ tmp240,
	ldr	r2, [r4, r1]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	moveq	r2, #2	@ tmp243,
	movne	r2, #1	@ tmp246,
	str	r2, [r4, r1]	@ tmp246, <variable>.PPicFound
	b	.L2287	@
.L2273:
	movw	r2, #50148	@ tmp183,
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2279	@,
	movw	lr, #52764	@ tmp188,
	ldr	ip, [r4, lr]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #0	@ <variable>.SliceParaNum,
	beq	.L2271	@,
	movw	r0, #52760	@ tmp191,
	ldr	r3, [r4, r0]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	r1, [r3, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r1, #0	@ <variable>.first_mb_in_slice,
	beq	.L2271	@,
.L2279:
	movw	r3, #49711	@ tmp221,
	mov	r2, #1	@ tmp222,
	mov	r0, r4	@, pH264Ctx
	strb	r2, [r4, r3]	@ tmp222, <variable>.CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.37236,
	b	.L2270	@
.L2272:
	movw	ip, #50148	@ tmp196,
	ldr	r2, [r4, ip]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r2, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2271	@,
	movw	r1, #50128	@ tmp198,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2271	@,
	b	.L2279	@
.L2306:
	cmp	r3, #0	@ D.37319,
	beq	.L2292	@,
	movw	r1, #50148	@ tmp300,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2292	@,
	movw	r3, #50112	@ tmp305,
	movw	ip, #52840	@ tmp303,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp302,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp302, <variable>.pH264DecParam
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	b	.L2301	@
.L2307:
	ldr	r0, [r2, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L2292	@,
	cmp	r3, #0	@ D.37319,
	beq	.L2292	@,
	movw	lr, #50148	@ tmp307,
	ldr	r1, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r1, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2292	@,
	movw	r0, #50112	@ tmp312,
	movw	r1, #52840	@ tmp310,
	ldr	lr, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp309,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp309, <variable>.pH264DecParam
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	ip, [r4, #0]	@ temp.6320, <variable>.pstExtraData
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [ip, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp314, <variable>.stDisParams.s32DisNums,
	str	r2, [ip, #712]	@ tmp314, <variable>.stDisParams.s32DisNums
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.37236,
	b	.L2270	@
.L2303:
	movw	ip, #49711	@ tmp216,
	mov	r0, r4	@, pH264Ctx
	strb	r3, [r4, ip]	@ <variable>.s32firstIdecodedflag, <variable>.CurrPic.mode_skip_flag
	str	r3, [r2, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.37236,
	b	.L2270	@
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
	mov	r7, r2	@ pCurrPic, pCurrPic
	ldrb	r2, [r2, #3]	@ zero_extendqisi2	@ D.34094, <variable>.structure
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #1	@ D.34094,
	beq	.L2311	@,
	bcc	.L2310	@,
	cmp	r2, #2	@ D.34094,
	beq	.L2354	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.34136,
.L2318:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2310:
	ldr	r2, [r7, #408]	@ D.34097, <variable>.frame_store
	add	r6, r1, #6592	@ tmp801, pos,
	add	r6, r6, #16	@ tmp801, tmp801,
	mov	sl, #3	@ tmp210,
	str	r2, [r0, r6, asl #2]	@ D.34097, <variable>.DPB.fs
	ldrb	lr, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	lr, [r2, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	ip, [r0, r6, asl #2]	@ tmp209, <variable>.DPB.fs
	strb	sl, [ip, #1]	@ tmp210, <variable>.is_used
	ldr	r9, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r8, [r0, r6, asl #2]	@ tmp214, <variable>.DPB.fs
	ldrb	r5, [r9, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [r8, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r1, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r0, r6, asl #2]	@ tmp220, <variable>.DPB.fs
	ldr	r0, [r1, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r0, [r3, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ temp.6367, <variable>.DPB.fs
	cmp	r2, #0	@ <variable>.is_long_term,
	beq	.L2355	@,
.L2313:
	mov	r2, #3	@ iftmp.498,
.L2314:
	strb	r2, [r3, #2]	@ iftmp.498, <variable>.is_reference
	add	r1, r7, #16	@, pCurrPic,
	ldr	ip, [r4, r6, asl #2]	@ tmp230, <variable>.DPB.fs
	mov	r2, #392	@,
	ldr	lr, [r7, #476]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r5, #0	@ tmp254,
	str	lr, [ip, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r0, [r4, r6, asl #2]	@ tmp234, <variable>.DPB.fs
	add	r0, r0, #8	@, tmp234,
	bl	memcpy	@
	ldr	r1, [r4, r6, asl #2]	@ temp.6370, <variable>.DPB.fs
	ldr	r9, [r7, #452]	@ D.34113, <variable>.err_level
	mov	r2, r5	@, tmp254
	mov	r0, r4	@, pH264Ctx
	str	r9, [r1, #544]	@ D.34113, <variable>.err_level
	str	r9, [r1, #420]	@ D.34113, <variable>.frame.err_level
	ldr	r8, [r4, r6, asl #2]	@ temp.6371, <variable>.DPB.fs
	ldr	sl, [r7, #408]	@ temp.6372, <variable>.frame_store
	str	sl, [r8, #404]	@ temp.6372, <variable>.frame.frame_store
	str	sl, [r8, #476]	@ temp.6372, <variable>.bottom_field.frame_store
	str	sl, [r8, #440]	@ temp.6372, <variable>.top_field.frame_store
	ldr	r3, [r4, r6, asl #2]	@ tmp245, <variable>.DPB.fs
	ldr	ip, [r7, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	str	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	ldr	r1, [r4, r6, asl #2]	@ tmp249, <variable>.DPB.fs
	ldr	r9, [r7, #416]	@ <variable>.frame_num, <variable>.frame_num
	str	r9, [r1, #512]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r8, [r4, r6, asl #2]	@ tmp253, <variable>.DPB.fs
	strb	r5, [r8, #400]	@ tmp254, <variable>.frame.structure
	ldr	sl, [r4, r6, asl #2]	@ tmp258, <variable>.DPB.fs
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [sl, #401]	@ <variable>.is_long_term, <variable>.frame.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ tmp263, <variable>.DPB.fs
	ldrb	r1, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r1, [r3, #402]	@ <variable>.is_short_term, <variable>.frame.is_short_term
	ldr	r9, [r4, r6, asl #2]	@ temp.6380, <variable>.DPB.fs
	ldr	r8, [r7, #444]	@ D.34119, <variable>.pic_type
	str	r8, [r9, #540]	@ D.34119, <variable>.pic_type
	str	r8, [r9, #424]	@ D.34119, <variable>.frame.pic_type
	ldr	sl, [r4, r6, asl #2]	@ tmp270, <variable>.DPB.fs
	ldrb	ip, [r7, #9]	@ zero_extendqisi2	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	str	ip, [sl, #536]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldr	r3, [r4, r6, asl #2]	@ tmp274, <variable>.DPB.fs
	ldr	r1, [r7, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	r1, [r3, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r9, [r4, r6, asl #2]	@ tmp278, <variable>.DPB.fs
	ldr	r8, [r7, #432]	@ <variable>.framepoc, <variable>.framepoc
	str	r8, [r9, #416]	@ <variable>.framepoc, <variable>.frame.poc
	ldr	sl, [r4, r6, asl #2]	@ tmp282, <variable>.DPB.fs
	ldr	ip, [r7, #436]	@ <variable>.toppoc, <variable>.toppoc
	str	ip, [sl, #452]	@ <variable>.toppoc, <variable>.top_field.poc
	mov	sl, #1	@ tmp297,
	ldr	r3, [r4, r6, asl #2]	@ tmp286, <variable>.DPB.fs
	ldr	r1, [r7, #440]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r1, [r3, #488]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldrb	r8, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	r9, [r4, r6, asl #2]	@ temp.6386, <variable>.DPB.fs
	cmp	r8, #1	@ <variable>.mode_skip_flag,
	moveq	r8, #3	@ iftmp.500,
	movne	r8, r5	@ iftmp.500, tmp2
	strb	r8, [r9, #3]	@ iftmp.500, <variable>.mode_skip_flag
	ldr	r3, [r4, r6, asl #2]	@ temp.6387, <variable>.DPB.fs
	ldr	r1, [r3, #424]	@ <variable>.frame.pic_type, <variable>.frame.pic_type
	ldrb	r8, [r3, #401]	@ zero_extendqisi2	@ D.41216, <variable>.frame.is_long_term
	ldrb	lr, [r3, #402]	@ zero_extendqisi2	@ <variable>.frame.is_short_term, <variable>.frame.is_short_term
	ldr	ip, [r3, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	ldr	r9, [r3, #404]	@ <variable>.frame.frame_store, <variable>.frame.frame_store
	strb	sl, [r3, #436]	@ tmp297, <variable>.top_field.structure
	mov	sl, #2	@ tmp305,
	strb	r8, [r3, #473]	@ D.41216, <variable>.bottom_field.is_long_term
	str	r9, [r3, #476]	@ <variable>.frame.frame_store, <variable>.bottom_field.frame_store
	strb	lr, [r3, #474]	@ <variable>.frame.is_short_term, <variable>.bottom_field.is_short_term
	strb	sl, [r3, #472]	@ tmp305, <variable>.bottom_field.structure
	str	ip, [r3, #492]	@ <variable>.frame.err_level, <variable>.bottom_field.err_level
	str	r1, [r3, #496]	@ <variable>.frame.pic_type, <variable>.bottom_field.pic_type
	strb	r8, [r3, #437]	@ D.41216, <variable>.top_field.is_long_term
	strb	lr, [r3, #438]	@ <variable>.frame.is_short_term, <variable>.top_field.is_short_term
	str	ip, [r3, #456]	@ <variable>.frame.err_level, <variable>.top_field.err_level
	str	r1, [r3, #460]	@ <variable>.frame.pic_type, <variable>.top_field.pic_type
	str	r9, [r3, #440]	@ <variable>.frame.frame_store, <variable>.top_field.frame_store
	ldr	r1, [r7, #408]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret
	movne	r3, r0	@, ret
	movwne	r2, #2125	@,
	movne	r0, r5	@, tmp254
	bne	.L2353	@,
.L2317:
	ldr	lr, [r4, r6, asl #2]	@ tmp793, <variable>.DPB.fs
	movw	r2, #52840	@ tmp789,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, #0	@ D.34136,
	b	.L2318	@
.L2311:
	ldr	r3, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	mov	r0, #3	@ tmp313,
	strb	r0, [r3, #400]	@ tmp313, <variable>.frame.structure
	ldrb	r5, [r7, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r5, #0	@ <variable>.field_pair_flag,
	addeq	r6, r1, #6592	@ tmp801, pos,
	addeq	r6, r6, #16	@ tmp801, tmp801,
	beq	.L2319	@,
	add	r6, r1, #6592	@ tmp801, pos,
	add	r6, r6, #16	@ tmp801, tmp801,
	ldr	r3, [r4, r6, asl #2]	@ temp.6390, <variable>.DPB.fs
	cmp	r3, #0	@ temp.6390,
	beq	.L2319	@,
	strb	r2, [r3, #436]	@ D.34094, <variable>.top_field.structure
	ldr	r8, [r4, r6, asl #2]	@ tmp422, <variable>.DPB.fs
	ldr	r5, [r7, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	r5, [r8, #460]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	sl, [r4, r6, asl #2]	@ tmp426, <variable>.DPB.fs
	ldrb	fp, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	fp, [sl, #437]	@ <variable>.is_long_term, <variable>.top_field.is_long_term
	ldr	r9, [r4, r6, asl #2]	@ tmp431, <variable>.DPB.fs
	ldrb	lr, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	lr, [r9, #438]	@ <variable>.is_short_term, <variable>.top_field.is_short_term
	ldr	r1, [r4, r6, asl #2]	@ tmp436, <variable>.DPB.fs
	ldr	r0, [r7, #436]	@ <variable>.toppoc, <variable>.toppoc
	str	r0, [r1, #452]	@ <variable>.toppoc, <variable>.top_field.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp440, <variable>.DPB.fs
	ldr	r2, [r7, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	r2, [r3, #460]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	ip, [r4, r6, asl #2]	@ tmp444, <variable>.DPB.fs
	ldr	r8, [r7, #452]	@ <variable>.err_level, <variable>.err_level
	str	r8, [ip, #456]	@ <variable>.err_level, <variable>.top_field.err_level
	ldr	fp, [r4, r6, asl #2]	@ temp.6403, <variable>.DPB.fs
	ldr	r5, [fp, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	sl, [fp, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r9, r5, sl	@ D.34153, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r9, [fp, #544]	@ D.34153, <variable>.err_level
	str	r9, [fp, #420]	@ D.34153, <variable>.frame.err_level
	ldr	lr, [r4, r6, asl #2]	@ temp.6404, <variable>.DPB.fs
	ldrb	r1, [lr, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r1, #0	@ <variable>.non_existing,
	ldrneb	r1, [r7, #2]	@ zero_extendqisi2	@ iftmp.503, <variable>.non_existing
	strb	r1, [lr, #0]	@ iftmp.503, <variable>.non_existing
	add	r1, r7, #16	@, pCurrPic,
	ldr	r3, [r4, r6, asl #2]	@ temp.6405, <variable>.DPB.fs
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r2, r0, #1	@ tmp458, <variable>.is_used,
	strb	r2, [r3, #1]	@ tmp458, <variable>.is_used
	ldr	r8, [r4, r6, asl #2]	@ D.34098, <variable>.DPB.fs
	mov	r2, #392	@,
	ldrb	ip, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r5, [r8, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, #1	@ <variable>.mode_skip_flag,
	orreq	r5, r5, #1	@ iftmp.504, <variable>.mode_skip_flag,
	strb	r5, [r8, #3]	@ iftmp.504, <variable>.mode_skip_flag
	ldr	r9, [r4, r6, asl #2]	@ temp.6407, <variable>.DPB.fs
	add	r0, r9, #8	@, temp.6407,
	ldrd	sl, [r9, #24]	@, temp.6407,
	ldr	r8, [r9, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	r5, [r9, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	sl, [sp, #16]	@,,
	ldrd	sl, [r9, #32]	@, temp.6407,
	strd	sl, [sp, #24]	@,,
	ldr	fp, [r9, #80]	@, <variable>.fs_image.DispFrameDistance
	ldr	sl, [r9, #76]	@ OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	str	fp, [sp, #4]	@, %sfp
	ldr	lr, [r9, #84]	@ OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	fp, [r9, #88]	@ OtherFieldGopNum, <variable>.fs_image.GopNum
	str	lr, [sp, #12]	@,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r3, r5, r8	@ tmp476, OtherFieldPts, OtherFieldPts
	ldr	r0, [r7, #28]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r2, r1, r0	@ tmp479, <variable>.fs_image.PTS, <variable>.fs_image.PTS
	cmn	r2, #1	@ tmp479,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	cmn	r3, #1	@ tmp476,
	ldrd	r2, [r7, #32]	@ <variable>.fs_image.Usertag, pCurrPic,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp485,
	mov	r9, ip	@ tmp485,
	ldr	ip, [sp, #12]	@,
	ldrne	r9, [r4, r6, asl #2]	@ tmp488, <variable>.DPB.fs
	strne	r8, [r9, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strne	r5, [r9, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldrd	r8, [sp, #16]	@,,
	ldr	r1, [r4, r6, asl #2]	@ tmp491, <variable>.DPB.fs
	cmp	r3, r9	@ <variable>.fs_image.Usertag,
	cmpeq	r2, r8	@ <variable>.fs_image.Usertag,
	movhi	r3, r9	@ <variable>.fs_image.Usertag,
	movhi	r2, r8	@ <variable>.fs_image.Usertag,
	ldrd	r8, [r7, #40]	@, pCurrPic,
	strd	r8, [sp, #16]	@,,
	strd	r2, [r1, #24]	@ <variable>.fs_image.Usertag, tmp491,
	ldrd	r0, [sp, #24]	@,,
	ldr	r3, [r4, r6, asl #2]	@ tmp495, <variable>.DPB.fs
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	strhid	r0, [sp, #16]	@,,
.L2329:
	ldrd	r8, [sp, #16]	@,,
	ldr	r2, [r7, #84]	@ <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	lr, [r7, #88]	@ <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strd	r8, [r3, #32]	@, tmp495,
	ldr	r0, [r4, r6, asl #2]	@ tmp499, <variable>.DPB.fs
	ldr	r1, [r7, #92]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	cmp	r2, sl	@ <variable>.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	strls	r2, [r0, #76]	@, <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r0, #76]	@, OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r9, [sp, #4]	@, %sfp
	ldr	r3, [r4, r6, asl #2]	@ tmp504, <variable>.DPB.fs
	ldr	r2, [r7, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	cmp	lr, r9	@ <variable>.fs_image.DispFrameDistance,
	strls	lr, [r3, #80]	@, <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r9, [r3, #80]	@,, <variable>.fs_image.DispFrameDistance
	ldr	r0, [r4, r6, asl #2]	@ tmp509, <variable>.DPB.fs
	cmp	r1, ip	@ <variable>.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	strls	r1, [r0, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	ip, [r0, #84]	@, OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, r6, asl #2]	@ tmp514, <variable>.DPB.fs
	cmp	r2, fp	@ <variable>.fs_image.GopNum, OtherFieldGopNum
	strls	r2, [r3, #88]	@, <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	fp, [r3, #88]	@, OtherFieldGopNum, <variable>.fs_image.GopNum
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	ip, #1	@ <variable>.is_long_term,
	beq	.L2330	@,
	ldrb	ip, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	ip, #1	@ <variable>.is_short_term,
	beq	.L2330	@,
.L2331:
	ldr	r3, [r4, r6, asl #2]	@ temp.6421, <variable>.DPB.fs
	ldr	r1, [r3, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	ip, [r3, #460]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	cmp	r1, ip	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	strcs	r1, [r3, #540]	@, <variable>.bottom_field.pic_type, <variable>.pic_type
	strcc	ip, [r3, #540]	@, <variable>.top_field.pic_type, <variable>.pic_type
	ldr	r0, [r4, r6, asl #2]	@ tmp537, <variable>.DPB.fs
	ldr	lr, [r7, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	lr, [r0, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r0, [r4, r6, asl #2]	@, <variable>.DPB.fs
	bl	CombineFldsToFrm	@
	ldr	r2, [r4, r6, asl #2]	@ temp.6425, <variable>.DPB.fs
	ldr	ip, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r0, [r2, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	add	r3, ip, #6656	@ tmp544, <variable>.apc_idc,
	add	r1, r3, #36	@ tmp544, tmp544,
	add	ip, r4, r1, asl #2	@, tmp549, pH264Ctx, tmp544,
	str	r0, [ip, #4]	@ <variable>.top_field.poc, <variable>.APC.poc
	b	.L2317	@
.L2354:
	ldr	r0, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	mov	lr, #3	@ tmp553,
	strb	lr, [r0, #400]	@ tmp553, <variable>.frame.structure
	ldrb	r5, [r7, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r5, #0	@ <variable>.field_pair_flag,
	addeq	r6, r1, #6592	@ tmp801, pos,
	addeq	r6, r6, #16	@ tmp801, tmp801,
	beq	.L2332	@,
	add	r6, r1, #6592	@ tmp801, pos,
	add	r6, r6, #16	@ tmp801, tmp801,
	ldr	r3, [r4, r6, asl #2]	@ temp.6473, <variable>.DPB.fs
	cmp	r3, #0	@ temp.6473,
	beq	.L2332	@,
	strb	r2, [r3, #472]	@ D.34094, <variable>.bottom_field.structure
	ldr	r8, [r4, r6, asl #2]	@ tmp658, <variable>.DPB.fs
	ldr	r5, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	str	r5, [r8, #476]	@ <variable>.frame_store, <variable>.bottom_field.frame_store
	ldr	sl, [r4, r6, asl #2]	@ tmp662, <variable>.DPB.fs
	ldrb	fp, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	fp, [sl, #473]	@ <variable>.is_long_term, <variable>.bottom_field.is_long_term
	ldr	r9, [r4, r6, asl #2]	@ tmp667, <variable>.DPB.fs
	ldrb	lr, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	lr, [r9, #474]	@ <variable>.is_short_term, <variable>.bottom_field.is_short_term
	ldr	r1, [r4, r6, asl #2]	@ tmp672, <variable>.DPB.fs
	ldr	r0, [r7, #440]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r0, [r1, #488]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp676, <variable>.DPB.fs
	ldr	r2, [r7, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	r2, [r3, #496]	@ <variable>.pic_type, <variable>.bottom_field.pic_type
	ldr	ip, [r4, r6, asl #2]	@ tmp680, <variable>.DPB.fs
	ldr	r8, [r7, #452]	@ <variable>.err_level, <variable>.err_level
	str	r8, [ip, #492]	@ <variable>.err_level, <variable>.bottom_field.err_level
	ldr	fp, [r4, r6, asl #2]	@ temp.6486, <variable>.DPB.fs
	ldr	r5, [fp, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	sl, [fp, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r9, r5, sl	@ temp.6489, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r9, [fp, #544]	@ temp.6489, <variable>.err_level
	str	r9, [fp, #420]	@ temp.6489, <variable>.frame.err_level
	ldr	lr, [r4, r6, asl #2]	@ temp.6490, <variable>.DPB.fs
	ldrb	r1, [lr, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r1, #0	@ <variable>.non_existing,
	ldrneb	r1, [r7, #2]	@ zero_extendqisi2	@ iftmp.507, <variable>.non_existing
	strb	r1, [lr, #0]	@ iftmp.507, <variable>.non_existing
	add	r1, r7, #16	@, pCurrPic,
	ldr	r3, [r4, r6, asl #2]	@ temp.6492, <variable>.DPB.fs
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r2, r0, #2	@ tmp694, <variable>.is_used,
	strb	r2, [r3, #1]	@ tmp694, <variable>.is_used
	ldr	r8, [r4, r6, asl #2]	@ temp.6361, <variable>.DPB.fs
	mov	r2, #392	@,
	ldrb	ip, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r5, [r8, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, #1	@ <variable>.mode_skip_flag,
	orreq	r5, r5, #2	@ iftmp.508, <variable>.mode_skip_flag,
	strb	r5, [r8, #3]	@ iftmp.508, <variable>.mode_skip_flag
	ldr	r9, [r4, r6, asl #2]	@ temp.6496, <variable>.DPB.fs
	add	r0, r9, #8	@, temp.6496,
	ldrd	sl, [r9, #24]	@, temp.6496,
	ldr	r8, [r9, #20]	@ OtherFieldPts.6497, <variable>.fs_image.PTS
	ldr	r5, [r9, #16]	@ OtherFieldPts.6497, <variable>.fs_image.PTS
	strd	sl, [sp, #16]	@,,
	ldrd	sl, [r9, #32]	@, temp.6496,
	strd	sl, [sp, #24]	@,,
	ldr	fp, [r9, #80]	@, <variable>.fs_image.DispFrameDistance
	ldr	sl, [r9, #76]	@ OtherFieldDispEnableFlag.6500, <variable>.fs_image.DispEnableFlag
	str	fp, [sp, #4]	@, %sfp
	ldr	lr, [r9, #84]	@ OtherFieldDistanceBeforeFirstFrame.6502, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	fp, [r9, #88]	@ OtherFieldGopNum.6503, <variable>.fs_image.GopNum
	str	lr, [sp, #12]	@,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r3, r5, r8	@ tmp712, OtherFieldPts.6497, OtherFieldPts.6497
	ldr	r0, [r7, #28]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r2, r1, r0	@ tmp715, <variable>.fs_image.PTS, <variable>.fs_image.PTS
	cmn	r2, #1	@ tmp715,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	cmn	r3, #1	@ tmp712,
	ldrd	r2, [r7, #32]	@ <variable>.fs_image.Usertag, pCurrPic,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp721,
	mov	r9, ip	@ tmp721,
	ldr	ip, [sp, #12]	@,
	ldrne	r9, [r4, r6, asl #2]	@ tmp724, <variable>.DPB.fs
	strne	r8, [r9, #20]	@ OtherFieldPts.6497, <variable>.fs_image.PTS
	strne	r5, [r9, #16]	@ OtherFieldPts.6497, <variable>.fs_image.PTS
	ldrd	r8, [sp, #16]	@,,
	ldr	r1, [r4, r6, asl #2]	@ tmp727, <variable>.DPB.fs
	cmp	r3, r9	@ <variable>.fs_image.Usertag,
	cmpeq	r2, r8	@ <variable>.fs_image.Usertag,
	movhi	r3, r9	@ <variable>.fs_image.Usertag,
	movhi	r2, r8	@ <variable>.fs_image.Usertag,
	ldrd	r8, [r7, #40]	@, pCurrPic,
	strd	r8, [sp, #16]	@,,
	strd	r2, [r1, #24]	@ <variable>.fs_image.Usertag, tmp727,
	ldrd	r0, [sp, #24]	@,,
	ldr	r3, [r4, r6, asl #2]	@ tmp731, <variable>.DPB.fs
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	strhid	r0, [sp, #16]	@,,
.L2344:
	ldrd	r8, [sp, #16]	@,,
	ldr	r2, [r7, #84]	@ <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	lr, [r7, #88]	@ <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strd	r8, [r3, #32]	@, tmp731,
	ldr	r0, [r4, r6, asl #2]	@ tmp735, <variable>.DPB.fs
	ldr	r1, [r7, #92]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	cmp	r2, sl	@ <variable>.fs_image.DispEnableFlag, OtherFieldDispEnableFlag.6500
	strls	r2, [r0, #76]	@, <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r0, #76]	@, OtherFieldDispEnableFlag.6500, <variable>.fs_image.DispEnableFlag
	ldr	r9, [sp, #4]	@, %sfp
	ldr	r3, [r4, r6, asl #2]	@ tmp740, <variable>.DPB.fs
	ldr	r2, [r7, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	cmp	lr, r9	@ <variable>.fs_image.DispFrameDistance,
	strls	lr, [r3, #80]	@, <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r9, [r3, #80]	@,, <variable>.fs_image.DispFrameDistance
	ldr	r0, [r4, r6, asl #2]	@ tmp745, <variable>.DPB.fs
	cmp	r1, ip	@ <variable>.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame.6502
	strls	r1, [r0, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	ip, [r0, #84]	@, OtherFieldDistanceBeforeFirstFrame.6502, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, r6, asl #2]	@ tmp750, <variable>.DPB.fs
	cmp	r2, fp	@ <variable>.fs_image.GopNum, OtherFieldGopNum.6503
	strls	r2, [r3, #88]	@, <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	fp, [r3, #88]	@, OtherFieldGopNum.6503, <variable>.fs_image.GopNum
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	ip, #1	@ <variable>.is_long_term,
	beq	.L2345	@,
	ldrb	ip, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	ip, #1	@ <variable>.is_short_term,
	beq	.L2345	@,
.L2346:
	ldr	r3, [r4, r6, asl #2]	@ temp.6534, <variable>.DPB.fs
	ldr	r1, [r3, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	ip, [r3, #460]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	cmp	r1, ip	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	strcs	r1, [r3, #540]	@, <variable>.bottom_field.pic_type, <variable>.pic_type
	strcc	ip, [r3, #540]	@, <variable>.top_field.pic_type, <variable>.pic_type
	ldr	r0, [r4, r6, asl #2]	@ tmp773, <variable>.DPB.fs
	ldr	lr, [r7, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	lr, [r0, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r0, [r4, r6, asl #2]	@, <variable>.DPB.fs
	bl	CombineFldsToFrm	@
	ldr	r2, [r4, r6, asl #2]	@ temp.6541, <variable>.DPB.fs
	ldr	ip, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r0, [r2, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	add	r3, ip, #6656	@ tmp780, <variable>.apc_idc,
	add	r1, r3, #52	@ tmp780, tmp780,
	add	ip, r4, r1, asl #2	@, tmp785, pH264Ctx, tmp780,
	str	r0, [ip, #4]	@ <variable>.bottom_field.poc, <variable>.APC.poc
	b	.L2317	@
.L2332:
	ldr	r0, [r7, #408]	@ temp.6543, <variable>.frame_store
	mov	r2, #2	@ tmp560,
	str	r0, [r4, r6, asl #2]	@ temp.6543, <variable>.DPB.fs
	strb	r2, [r0, #472]	@ tmp560, <variable>.bottom_field.structure
	ldr	lr, [r4, r6, asl #2]	@ tmp564, <variable>.DPB.fs
	ldr	r5, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	str	r5, [lr, #476]	@ <variable>.frame_store, <variable>.bottom_field.frame_store
	ldr	r3, [r4, r6, asl #2]	@ tmp568, <variable>.DPB.fs
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [r3, #473]	@ <variable>.is_long_term, <variable>.bottom_field.is_long_term
	ldr	r1, [r4, r6, asl #2]	@ tmp573, <variable>.DPB.fs
	ldrb	r0, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r0, [r1, #474]	@ <variable>.is_short_term, <variable>.bottom_field.is_short_term
	ldr	lr, [r4, r6, asl #2]	@ tmp578, <variable>.DPB.fs
	ldr	r5, [r7, #440]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r5, [lr, #488]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp582, <variable>.DPB.fs
	ldr	ip, [r7, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	ip, [r3, #496]	@ <variable>.pic_type, <variable>.bottom_field.pic_type
	ldr	r1, [r4, r6, asl #2]	@ tmp586, <variable>.DPB.fs
	ldr	r0, [r7, #452]	@ <variable>.err_level, <variable>.err_level
	str	r0, [r1, #492]	@ <variable>.err_level, <variable>.bottom_field.err_level
	ldr	lr, [r4, r6, asl #2]	@ temp.6556, <variable>.DPB.fs
	ldr	r5, [lr, #456]	@ temp.6557, <variable>.top_field.err_level
	str	r5, [lr, #544]	@ temp.6557, <variable>.err_level
	str	r5, [lr, #420]	@ temp.6557, <variable>.frame.err_level
	ldr	r3, [r4, r6, asl #2]	@ tmp592, <variable>.DPB.fs
	ldrb	ip, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	ip, [r3, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	r1, [r4, r6, asl #2]	@ tmp597, <variable>.DPB.fs
	strb	r2, [r1, #1]	@ tmp560, <variable>.is_used
	ldr	r0, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [r4, r6, asl #2]	@ tmp602, <variable>.DPB.fs
	ldrb	r5, [r0, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [lr, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r3, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r4, r6, asl #2]	@ tmp608, <variable>.DPB.fs
	ldr	r1, [r3, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r1, [ip, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r2, #1	@ <variable>.is_long_term,
	beq	.L2334	@,
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #1	@ <variable>.is_short_term,
	beq	.L2334	@,
.L2335:
	ldr	r0, [r4, r6, asl #2]	@ tmp625, <variable>.DPB.fs
	mov	r5, #0	@ tmp626,
	add	r1, r7, #16	@, pCurrPic,
	mov	r2, #392	@,
	str	r5, [r0, #536]	@ tmp626, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r6, asl #2]	@ tmp629, <variable>.DPB.fs
	add	r0, lr, #8	@, tmp629,
	bl	memcpy	@
	ldr	ip, [r4, r6, asl #2]	@ tmp636, <variable>.DPB.fs
	ldr	r1, [r7, #476]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r2, #2	@,
	mov	r0, r4	@, pH264Ctx
	str	r1, [ip, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, r6, asl #2]	@ tmp640, <variable>.DPB.fs
	ldr	ip, [r7, #416]	@ <variable>.frame_num, <variable>.frame_num
	str	ip, [r3, #512]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r1, [r4, r6, asl #2]	@ tmp644, <variable>.DPB.fs
	ldr	ip, [r7, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	ip, [r1, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r3, [r4, r6, asl #2]	@ temp.6581, <variable>.DPB.fs
	ldr	r1, [r7, #444]	@ temp.6582, <variable>.pic_type
	str	r1, [r3, #540]	@ temp.6582, <variable>.pic_type
	str	r1, [r3, #496]	@ temp.6582, <variable>.bottom_field.pic_type
	ldrb	r1, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	ip, [r4, r6, asl #2]	@ temp.6583, <variable>.DPB.fs
	cmp	r1, #1	@ <variable>.mode_skip_flag,
	moveq	r1, r2	@ iftmp.505,
	movne	r1, r5	@ iftmp.505,
	strb	r1, [ip, #3]	@ iftmp.505, <variable>.mode_skip_flag
	ldr	r1, [r7, #408]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret.6586
	movne	r3, r0	@, ret.6586
	movwne	r2, #2323	@,
	movne	r0, r5	@, tmp626
	beq	.L2317	@,
.L2353:
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.34136,
	b	.L2318	@
.L2319:
	ldr	r1, [r7, #408]	@ temp.6426, <variable>.frame_store
	mov	r2, #1	@ tmp320,
	str	r1, [r4, r6, asl #2]	@ temp.6426, <variable>.DPB.fs
	strb	r2, [r1, #436]	@ tmp320, <variable>.top_field.structure
	ldr	r0, [r4, r6, asl #2]	@ tmp324, <variable>.DPB.fs
	ldr	r5, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	str	r5, [r0, #440]	@ <variable>.frame_store, <variable>.top_field.frame_store
	ldr	ip, [r4, r6, asl #2]	@ tmp328, <variable>.DPB.fs
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	lr, [ip, #437]	@ <variable>.is_long_term, <variable>.top_field.is_long_term
	ldr	r3, [r4, r6, asl #2]	@ tmp333, <variable>.DPB.fs
	ldrb	r1, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r1, [r3, #438]	@ <variable>.is_short_term, <variable>.top_field.is_short_term
	ldr	r0, [r4, r6, asl #2]	@ tmp338, <variable>.DPB.fs
	ldr	r5, [r7, #436]	@ <variable>.toppoc, <variable>.toppoc
	str	r5, [r0, #452]	@ <variable>.toppoc, <variable>.top_field.poc
	ldr	ip, [r4, r6, asl #2]	@ tmp342, <variable>.DPB.fs
	ldr	lr, [r7, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	lr, [ip, #460]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	r3, [r4, r6, asl #2]	@ tmp346, <variable>.DPB.fs
	ldr	r1, [r7, #452]	@ <variable>.err_level, <variable>.err_level
	str	r1, [r3, #456]	@ <variable>.err_level, <variable>.top_field.err_level
	ldr	r0, [r4, r6, asl #2]	@ temp.6439, <variable>.DPB.fs
	ldr	r5, [r0, #456]	@ temp.6440, <variable>.top_field.err_level
	str	r5, [r0, #544]	@ temp.6440, <variable>.err_level
	str	r5, [r0, #420]	@ temp.6440, <variable>.frame.err_level
	ldr	ip, [r4, r6, asl #2]	@ tmp352, <variable>.DPB.fs
	ldrb	lr, [r7, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	lr, [ip, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	r1, [r4, r6, asl #2]	@ tmp357, <variable>.DPB.fs
	strb	r2, [r1, #1]	@ tmp320, <variable>.is_used
	ldr	r3, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r4, r6, asl #2]	@ tmp362, <variable>.DPB.fs
	ldrb	r5, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r5, [r0, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	ip, [r7, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [r4, r6, asl #2]	@ tmp368, <variable>.DPB.fs
	ldr	r1, [ip, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r1, [lr, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r2, #1	@ <variable>.is_long_term,
	beq	.L2321	@,
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #1	@ <variable>.is_short_term,
	beq	.L2321	@,
.L2322:
	ldr	lr, [r4, r6, asl #2]	@ tmp385, <variable>.DPB.fs
	mov	r5, #0	@ tmp386,
	add	r1, r7, #16	@, pCurrPic,
	mov	r2, #392	@,
	str	r5, [lr, #536]	@ tmp386, <variable>.MbaffFrameFlag
	ldr	r0, [r4, r6, asl #2]	@ tmp389, <variable>.DPB.fs
	add	r0, r0, #8	@, tmp389,
	bl	memcpy	@
	ldr	ip, [r4, r6, asl #2]	@ tmp396, <variable>.DPB.fs
	ldr	r1, [r7, #476]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	str	r1, [ip, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, r6, asl #2]	@ tmp400, <variable>.DPB.fs
	ldr	ip, [r7, #416]	@ <variable>.frame_num, <variable>.frame_num
	str	ip, [r3, #512]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r1, [r4, r6, asl #2]	@ tmp404, <variable>.DPB.fs
	ldr	ip, [r7, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	ip, [r1, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r3, [r4, r6, asl #2]	@ tmp408, <variable>.DPB.fs
	ldr	r1, [r7, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	r1, [r3, #540]	@ <variable>.pic_type, <variable>.pic_type
	ldr	r3, [r4, r6, asl #2]	@ tmp412, <variable>.DPB.fs
	ldrb	ip, [r7, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, r2	@ <variable>.mode_skip_flag,
	movne	r1, #0	@, tmp414
	moveq	r1, #1	@, tmp414
	strb	r1, [r3, #3]	@ tmp414, <variable>.mode_skip_flag
	ldr	r1, [r7, #408]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret.6469
	beq	.L2317	@,
	mov	r3, r0	@, ret.6469
	movw	r2, #2178	@,
	mov	r0, r5	@, tmp386
	b	.L2353	@
.L2355:
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #0	@ <variable>.is_short_term,
	beq	.L2314	@,
	b	.L2313	@
.L2334:
	ldr	r3, [r4, r6, asl #2]	@ tmp615, <variable>.DPB.fs
	mov	r1, #2	@ tmp616,
	strb	r1, [r3, #2]	@ tmp616, <variable>.is_reference
	ldrb	ip, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	ip, #1	@ <variable>.is_long_term,
	ldreq	ip, [r4, r6, asl #2]	@ tmp621, <variable>.DPB.fs
	ldreq	r1, [r7, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2335	@
.L2321:
	ldr	ip, [r4, r6, asl #2]	@ tmp375, <variable>.DPB.fs
	mov	lr, #1	@ tmp376,
	strb	lr, [ip, #2]	@ tmp376, <variable>.is_reference
	ldrb	r3, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r3, lr	@ <variable>.is_long_term,
	ldreq	r3, [r4, r6, asl #2]	@ tmp381, <variable>.DPB.fs
	ldreq	lr, [r7, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	lr, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2322	@
.L2345:
	ldr	r3, [r4, r6, asl #2]	@ temp.6529, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	r1, r2, #2	@ tmp759, <variable>.is_reference,
	strb	r1, [r3, #2]	@ tmp759, <variable>.is_reference
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	ldreq	lr, [r4, r6, asl #2]	@ tmp764, <variable>.DPB.fs
	ldreq	r1, [r7, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [lr, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2346	@
.L2330:
	ldr	r3, [r4, r6, asl #2]	@ temp.6417, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	r1, r2, #1	@ tmp523, <variable>.is_reference,
	strb	r1, [r3, #2]	@ tmp523, <variable>.is_reference
	ldrb	lr, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	ldreq	lr, [r4, r6, asl #2]	@ tmp528, <variable>.DPB.fs
	ldreq	r1, [r7, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [lr, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2331	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	lr, #49704	@ tmp189,
	movw	r0, #49707	@ tmp186,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r6, #19824	@ tmp185,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	movw	r3, #19820	@ tmp183,
	cmp	ip, #2	@ <variable>.CurrPic.structure,
	movne	r2, #0	@, tmp188
	moveq	r2, #1	@, tmp188
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r0, #0	@ <variable>.CurrPic.state,
	str	r2, [r4, r6]	@ tmp188, <variable>.CurrPOC.last_pic_bottom_field
	mov	r6, #0	@ tmp184,
	str	r6, [r4, r3]	@ tmp184, <variable>.CurrPOC.last_has_mmco_5
	beq	.L2445	@,
	movw	lr, #52768	@ tmp196,
	movw	ip, #52856	@ tmp194,
	ldr	r0, [r4, lr]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movw	r3, #52852	@ tmp193,
	ldr	r2, [r4, ip]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r0, #2	@ <variable>.OldDecMode,
	str	r2, [r4, r3]	@ <variable>.PicCounter, <variable>.PrevStorePicCounter
	beq	.L2446	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #12]	@ prephitmp.6622, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ prephitmp.6622,
	ble	.L2447	@,
	movw	ip, #49706	@ tmp212,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	r3, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2364	@,
.L2457:
	movw	r6, #49707	@ tmp215,
	movw	r3, #50112	@ tmp214,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ temp.6656, <variable>.CurrPic.structure
	ldr	r6, [r4, r3]	@ pFrameStore, <variable>.CurrPic.frame_store
	sub	r0, r1, #1	@ tmp216, temp.6656,
	uxtb	lr, r0	@ tmp217, tmp216
	cmp	lr, #1	@ tmp217,
	movhi	r0, #0	@, one_fld_flg
	movls	r0, #1	@, one_fld_flg
	cmp	r1, #0	@ temp.6656,
	bne	.L2448	@,
.L2365:
	cmp	r0, #0	@ one_fld_flg,
	beq	.L2366	@,
	movw	r3, #52848	@ tmp226,
	ldr	ip, [r4, r3]	@ temp.6657, <variable>.FirstFrameDisplayed
	cmp	ip, #0	@ temp.6657,
	bne	.L2367	@,
	add	ip, r4, #49664	@, pH264Ctx,
	add	r0, r4, #50176	@, pH264Ctx,
	add	r1, ip, #40	@,,
	mov	r2, #1	@ tmp228,
	add	r0, r0, #8	@,,
	str	r2, [r4, r3]	@ tmp228, <variable>.FirstFrameDisplayed
	mov	r2, #480	@,
	bl	memcpy	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ prephitmp.6622, <variable>.s32DecOrderOutput
.L2364:
	cmp	r2, #2	@ prephitmp.6622,
	beq	.L2449	@,
.L2363:
	movw	r0, #50128	@ tmp315,
	ldr	r5, [r4, r0]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r5, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2383	@,
	movw	r3, #52832	@ tmp317,
	movw	r2, #50156	@ tmp318,
	ldr	r3, [r4, r3]	@ D.34764, <variable>.ref_error_thr
	ldr	r2, [r4, r2]	@ D.34765, <variable>.CurrPic.err_level
	cmp	r3, r2	@ D.34764, D.34765
	bcs	.L2388	@,
	movw	r1, #49706	@ tmp319,
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	r5, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2388	@,
	movw	r6, #:lower16:g_event_report	@ tmp322,
	movt	r6, #:upper16:g_event_report	@ tmp322,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #0]	@ g_event_report.6681, g_event_report
	cmp	r3, #0	@ g_event_report.6681,
	beq	.L2389	@,
	movw	lr, #52840	@ tmp323,
	mov	r2, r5	@, <variable>.CurrPic.non_existing
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #104	@,
	blx	r3	@ g_event_report.6681
.L2389:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3684	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2388:
	mov	r0, r4	@, pH264Ctx
	bl	Marking	@
	subs	r2, r0, #0	@ ret.6684,
	beq	.L2390	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3693	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2390:
	mov	r0, r4	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	beq	.L2383	@,
	movw	r1, #:lower16:.LC72	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC72	@,
	ldr	r2, .L2469	@,
	movw	r3, #3707	@,
	bl	dprint_vfmw	@
.L2383:
	movw	ip, #49705	@ tmp331,
	ldrb	r6, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r6, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2450	@,
.L2391:
	movw	r6, #50128	@ tmp350,
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2451	@,
	mov	r9, #26624	@ tmp382,
	ldr	r6, [r4, r9]	@ pre_used_size.6727, <variable>.DPB.size
.L2401:
	add	fp, r4, #26368	@ ivtmp.6646, pH264Ctx,
	mvn	r3, #0	@ pre_used_size,
	add	r8, fp, #64	@ ivtmp.6646, ivtmp.6646,
	mov	ip, r3	@ pre_pos, pre_used_size
	movw	sl, #26628	@ tmp446,
	movw	r9, #50128	@ tmp452,
	movw	fp, #50132	@ tmp453,
.L2414:
	ldr	r1, [r4, sl]	@ pre_used_size.6696, <variable>.DPB.used_size
	cmp	r1, r6	@ pre_used_size.6696, pre_used_size.6727
	bcc	.L2452	@,
	movls	r6, r1	@ pre_used_size.6727, pre_used_size.6696
	strhi	r6, [r4, sl]	@ pre_used_size.6727, <variable>.DPB.used_size
	cmp	r6, #0	@ pre_used_size.6727,
	moveq	r7, r6	@ pos, pre_used_size.6727
	mvneq	r2, #-2147483648	@ min_poc,
	beq	.L2407	@,
	tst	r6, #1	@ pre_used_size.6727,
	mov	r7, #0	@ pos,
	mov	r1, r8	@ ivtmp.6646, ivtmp.6646
	mov	lr, r7	@ pos.6724, pos
	mvn	r0, #-2147483648	@ min_poc.6726,
	bne	.L2408	@,
	ldr	r2, [r8, #0]	@ D.41223, <variable>.DPB.fs
	ldr	r0, [r2, #524]	@ min_poc, <variable>.poc
	cmn	r0, #-2147483647	@ min_poc,
	bge	.L2426	@,
	ldrb	r1, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r1, #0	@ <variable>.is_in_dpb,
	beq	.L2426	@,
	add	r1, r8, #4	@ ivtmp.6646, ivtmp.6646,
	mov	lr, #1	@ pos.6724,
.L2408:
	ldr	r5, [r1, #0]	@ D.41223, <variable>.DPB.fs
	ldr	r2, [r5, #524]	@ min_poc, <variable>.poc
	cmp	r2, r0	@ min_poc, min_poc.6726
	bge	.L2405	@,
.L2453:
	ldrb	r5, [r5, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r5, #0	@ <variable>.is_in_dpb,
	movne	r7, lr	@ pos, pos.6724
	beq	.L2405	@,
	add	lr, lr, #1	@ tmp458, pos.6724,
	add	r5, r1, #4	@ tmp459, ivtmp.6646,
	cmp	lr, r6	@ tmp458, pre_used_size.6727
	beq	.L2407	@,
.L2454:
	ldr	r1, [r1, #4]	@ D.41223, <variable>.DPB.fs
	ldr	r0, [r1, #524]	@ min_poc, <variable>.poc
	cmp	r0, r2	@ min_poc, min_poc
	bge	.L2428	@,
	ldrb	r1, [r1, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r1, #0	@ <variable>.is_in_dpb,
	beq	.L2428	@,
	mov	r7, lr	@ pos, tmp458
.L2442:
	add	r1, r5, #4	@ ivtmp.6646, tmp459,
	add	lr, lr, #1	@ pos.6724, tmp458,
	ldr	r5, [r1, #0]	@ D.41223, <variable>.DPB.fs
	ldr	r2, [r5, #524]	@ min_poc, <variable>.poc
	cmp	r2, r0	@ min_poc, min_poc.6726
	blt	.L2453	@,
.L2405:
	add	lr, lr, #1	@ tmp458, pos.6724,
	mov	r2, r0	@ min_poc, min_poc.6726
	cmp	lr, r6	@ tmp458, pre_used_size.6727
	add	r5, r1, #4	@ tmp459, ivtmp.6646,
	bne	.L2454	@,
.L2407:
	ldr	lr, [r4, r9]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2409	@,
	ldr	r1, [r4, fp]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	cmp	r1, r2	@ <variable>.CurrPic.thispoc, min_poc
	blt	.L2455	@,
.L2409:
	cmp	r3, r6	@ pre_used_size, pre_used_size.6727
	bne	.L2412	@,
	cmp	ip, r7	@ pre_pos, pos
	beq	.L2456	@,
.L2412:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, pos
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret.6706,
	beq	.L2413	@,
	mov	r2, #26624	@,
	mov	r3, r6	@ pre_used_size, pre_used_size.6727
	mov	ip, r7	@ pre_pos, pos
	ldr	r6, [r4, r2]	@ pre_used_size.6727, <variable>.DPB.size
	b	.L2414	@
.L2445:
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3428	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
.L2358:
	movw	r6, #50112	@ tmp427,
	movw	r5, #52840	@ tmp424,
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mvn	r5, #0	@ ret,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC85	@,
	mov	r2, #3856	@,
	movt	r1, #:upper16:.LC85	@,
	mov	r3, r5	@, ret
	bl	dprint_vfmw	@
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, #0	@ tmp431,
	strb	r0, [r1, #4]	@ tmp431, <variable>.is_in_dpb
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r0, [ip, #1]	@ tmp431, <variable>.is_used
.L2421:
	movw	lr, #49704	@ tmp437,
	mov	r2, #0	@ tmp438,
	strb	r2, [r4, lr]	@ tmp438, <variable>.CurrPic.state
.L2385:
	mov	r0, r5	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2447:
	movw	r0, #52848	@ tmp210,
	ldr	lr, [r4, r0]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	lr, #2	@ <variable>.FirstFrameDisplayed,
	beq	.L2363	@,
	movw	ip, #49706	@ tmp212,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	r3, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2364	@,
	b	.L2457	@
.L2449:
	movw	r3, #50128	@ tmp301,
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	ip, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2383	@,
	movw	r1, #49710	@ tmp303,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	cmp	r2, #5	@ <variable>.CurrPic.nal_unit_type,
	beq	.L2458	@,
.L2384:
	mov	r0, r4	@, pH264Ctx
	add	r6, r4, #49664	@, pH264Ctx,
	movw	r5, #26628	@ tmp305,
	bl	SimpleSlideDPB	@
	add	r2, r6, #40	@,,
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r5]	@, <variable>.DPB.used_size
	bl	InsertFrmInDPB	@
	subs	r6, r0, #0	@ ret.6675,
	beq	.L2386	@,
	mov	r3, r6	@, ret.6675
	movw	r2, #3659	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3660	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2426:
	mvn	r0, #-2147483648	@ min_poc,
	mov	lr, #1	@ pos.6724,
	add	r1, r8, #4	@ ivtmp.6646, ivtmp.6646,
	b	.L2408	@
.L2451:
	movw	ip, #26632	@ tmp353,
	movw	r0, #26636	@ tmp354,
	ldr	lr, [r4, ip]	@ D.34803, <variable>.DPB.ref_frames_in_buffer
	mov	r5, #26624	@ tmp352,
	ldr	ip, [r4, r0]	@ D.34804, <variable>.DPB.ltref_frames_in_buffer
	ldr	r6, [r4, r5]	@ pre_used_size.6727, <variable>.DPB.size
	add	r3, ip, lr	@ tmp355, D.34804, D.34803
	cmp	r6, r3	@ pre_used_size.6727, tmp355
	bhi	.L2401	@,
	mov	r3, r6	@, pre_used_size.6727
	movw	r2, #3758	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	str	lr, [sp, #0]	@ D.34803,
	str	ip, [sp, #4]	@ D.34804,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3761	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2448:
	ldrb	lr, [r6, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	lr, #0	@ <variable>.is_used,
	moveq	ip, r0	@, tmp225, one_fld_flg
	orrne	ip, r0, #1	@,, tmp225, one_fld_flg
	cmp	ip, #0	@ tmp225,
	beq	.L2364	@,
	b	.L2365	@
.L2367:
	cmp	ip, #1	@ temp.6657,
	beq	.L2368	@,
.L2366:
	cmp	r1, #0	@ temp.6656,
	beq	.L2369	@,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r3, #0	@ <variable>.is_used,
	beq	.L2364	@,
.L2369:
	cmp	r0, #0	@ one_fld_flg,
	bne	.L2459	@,
.L2370:
	add	r1, r4, #49664	@ pOutPic, pH264Ctx,
	add	r8, r1, #40	@ pOutPic, pOutPic,
.L2371:
	ldrb	r2, [r8, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r2, #0	@ <variable>.structure,
	beq	.L2372	@,
	ldrb	r3, [r8, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r3, #1	@ <variable>.field_pair_flag,
	beq	.L2460	@,
.L2372:
	ldr	r7, [r8, #452]	@ <variable>.err_level, <variable>.err_level
	str	r7, [r6, #544]	@ <variable>.err_level, <variable>.err_level
.L2373:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pOutFrameStore
	movw	r7, #52840	@ tmp250,
	bl	GetImagePara	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L2461	@,
	ldrd	sl, [r8, #24]	@, pOutPic,
	ldrd	r0, [r8, #32]	@, pOutPic,
	ldr	lr, [r8, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strd	sl, [r5, #8]	@, pImg,
	strd	r0, [r5, #16]	@, pImg,
	ldrd	sl, [r8, #40]	@ <variable>.fs_image.DispTime, pOutPic,
	add	r1, r8, #84
	ldmia	r1, {r1, r2, ip}	@ phole ldm
	strd	sl, [r5, #24]	@ <variable>.fs_image.DispTime, pImg,
	str	r1, [r5, #68]	@ <variable>.fs_image.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r5, #72]	@ <variable>.fs_image.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r5, #76]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r5, #80]	@ <variable>.fs_image.GopNum, <variable>.GopNum
	ldr	r3, [r6, #544]	@ D.34715, <variable>.err_level
	cmp	r3, #0	@ D.34715,
	str	r3, [r5, #180]	@ D.34715, <variable>.error_level
	beq	.L2375	@,
	ldr	r8, [r5, #140]	@ <variable>.format, <variable>.format
	ands	r8, r8, #3	@ tmp264, <variable>.format,
	beq	.L2462	@,
.L2376:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [ip, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	lr, r3	@ <variable>.s32OutErrThr, D.34715
	bcc	.L2378	@,
.L2375:
	movw	r7, #52840	@ tmp272,
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
	cmp	r0, #1	@ D.34733,
	beq	.L2379	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2380:
	mov	r1, r5	@, pImg
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r3, #52848	@ tmp291,
	ldr	r1, [r4, r3]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	movw	r0, #52864	@ tmp287,
	ldr	r2, [r4, r0]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	cmp	r1, #2	@ <variable>.FirstFrameDisplayed,
	mov	r1, #2	@ tmp299,
	add	ip, r2, #2	@ tmp290, <variable>.PicOutCounter,
	str	ip, [r4, r0]	@ tmp290, <variable>.PicOutCounter
	movne	r0, #1	@ tmp297,
	strne	r0, [r6, #528]	@ tmp297, <variable>.eFoState
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r0, #52848	@ tmp298,
	str	r1, [r4, r0]	@ tmp299, <variable>.FirstFrameDisplayed
	ldr	r2, [lr, #12]	@ prephitmp.6622, <variable>.s32DecOrderOutput
	b	.L2364	@
.L2428:
	mov	r0, r2	@ min_poc, min_poc
	b	.L2442	@
.L2413:
	mov	r6, r0	@ ret.6706, ret.6706
	mov	r3, r0	@, ret.6706
	movw	r2, #3805	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, ret.6706
	movw	r1, #:lower16:.LC84	@,
	movw	r3, #3806	@,
	movt	r1, #:upper16:.LC84	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2450:
	movw	lr, #50112	@ tmp333,
	movw	r3, #50696	@ tmp334,
	ldr	r0, [r4, lr]	@ D.34784, <variable>.CurrPic.frame_store
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, r5	@ D.34784, <variable>.pDirectOutBuf
	beq	.L2463	@,
.L2392:
	movw	ip, #26628	@ tmp336,
	ldr	lr, [r4, ip]	@ temp.6725, <variable>.DPB.used_size
	cmp	lr, #0	@ temp.6725,
	beq	.L2391	@,
	movw	r5, #26432	@ tmp337,
	ldr	r2, [r4, r5]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r0, r2	@ D.34784, <variable>.DPB.fs
	moveq	r1, #0	@ i,
	beq	.L2395	@,
	tst	lr, #1	@ temp.6725,
	add	r3, r4, #26368	@ tmp349, pH264Ctx,
	add	r2, r3, #68	@ ivtmp.6651, tmp349,
	mov	r1, #0	@ i,
	bne	.L2397	@,
	ldr	ip, [r2, #0]	@ temp.6688, <variable>.DPB.fs
	mov	r1, #1	@ i,
	add	r2, r3, #72	@ ivtmp.6651, tmp349,
	cmp	r0, ip	@ D.34784, temp.6688
	bne	.L2397	@,
.L2395:
	add	r0, r4, #49664	@, pH264Ctx,
	add	r2, r0, #40	@,,
	mov	r0, r4	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmn	r0, #1	@ ret.6690,
	mov	r5, r0	@ ret.6690,
	beq	.L2464	@,
	mov	r0, r4	@, pH264Ctx
	mov	r5, #0	@ ret,
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r1, #:lower16:.LC84	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3745	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2421	@
.L2436:
	ldr	r5, [r2, #4]	@ temp.6688, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.6651, tmp463,
	cmp	r0, r5	@ D.34784, temp.6688
	beq	.L2395	@,
.L2397:
	add	r1, r1, #1	@ i, i,
	mov	r3, r2	@ tmp463, ivtmp.6651
	cmp	r1, lr	@ i, temp.6725
	bcs	.L2391	@,
	ldr	ip, [r3], #4	@ temp.6688, <variable>.DPB.fs
	cmp	r0, ip	@ D.34784, temp.6688
	bne	.L2436	@,
	b	.L2395	@
.L2446:
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	movw	r2, #50180	@ tmp199,
	movw	r3, #51320	@ tmp200,
	ldr	r1, [r4, r3]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	movw	r3, #3473	@,
	mov	r5, r0	@ ret,
	ldr	r0, [r4, r2]	@ D.34659, <variable>.CurrPic.pmv_address_idc
	cmp	r0, r1	@ D.34659, <variable>.TotalPmvNum
	strne	r1, [r4, r2]	@ <variable>.TotalPmvNum, <variable>.CurrPic.pmv_address_idc
	addne	r0, r0, #12800	@ tmp202, D.34659,
	movw	r1, #:lower16:.LC84	@,
	addne	r0, r0, #12	@ tmp202, tmp202,
	movt	r1, #:upper16:.LC84	@,
	mov	r2, r5	@, ret
	strne	r6, [r4, r0, asl #2]	@ tmp184, <variable>.PmvStoreUsedFlag
	mov	r0, #14	@,
	bl	dprint_vfmw	@
.L2361:
	cmn	r5, #1	@ ret,
	bne	.L2421	@,
	b	.L2358	@
.L2379:
	movw	r3, #52872	@ tmp281,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r4, r3]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r1, lr, #1	@ tmp284, <variable>.numOutputFrame,
	str	r1, [r4, r3]	@ tmp284, <variable>.numOutputFrame
	str	r0, [r2, #732]	@ D.34733, <variable>.s32firstIdecodedflag
	b	.L2380	@
.L2386:
	ldr	ip, [r4, r5]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r0, r4	@, pH264Ctx
	add	lr, ip, #1	@ tmp313, <variable>.DPB.used_size,
	str	lr, [r4, r5]	@ tmp313, <variable>.DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r2, r6	@, ret.6675
	movw	r1, #:lower16:.LC84	@,
	movw	r3, #3668	@,
	movt	r1, #:upper16:.LC84	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	mov	r5, #0	@ ret,
	b	.L2421	@
.L2459:
	movw	r7, #52848	@ tmp237,
	ldr	r5, [r4, r7]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	r5, #1	@ <variable>.FirstFrameDisplayed,
	bne	.L2370	@,
.L2368:
	add	r8, r4, #50176	@ pOutPic, pH264Ctx,
	movw	lr, #50592	@ tmp240,
	add	r8, r8, #8	@ pOutPic, pOutPic,
	ldr	r6, [r4, lr]	@ pOutFrameStore, <variable>.LastPic.frame_store
	b	.L2371	@
.L2460:
	ldr	r5, [r6, #544]	@ <variable>.err_level, <variable>.err_level
	add	r3, r3, #2	@ tmp244, tmp244,
	strb	r3, [r6, #1]	@ tmp244, <variable>.is_used
	ldr	r0, [r8, #452]	@ <variable>.err_level, <variable>.err_level
	add	ip, r5, r0	@ tmp248, <variable>.err_level, <variable>.err_level
	str	ip, [r6, #544]	@ tmp248, <variable>.err_level
	b	.L2373	@
.L2462:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC88	@,
	movw	r2, #3580	@,
	movt	r1, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_event_report	@ tmp268,
	movt	r0, #:upper16:g_event_report	@ tmp268,
	ldr	r3, [r0, #0]	@ g_event_report.539, g_event_report
	cmp	r3, #0	@ g_event_report.539,
	beq	.L2377	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, r8	@, tmp264
	mov	r1, #111	@,
	blx	r3	@ g_event_report.539
.L2377:
	ldr	r3, [r5, #180]	@ D.34715, <variable>.error_level
	cmp	r3, #0	@ D.34715,
	bne	.L2376	@,
	b	.L2375	@
.L2452:
	movw	r3, #50128	@ tmp384,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2416	@,
	movw	r0, #49708	@ tmp386,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	cmp	r2, #0	@ <variable>.CurrPic.is_long_term,
	bne	.L2416	@,
	movw	r5, #26632	@ tmp388,
	ldr	ip, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	ip, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L2416	@,
	add	r7, r4, #26368	@ ivtmp.6641, pH264Ctx,
	movw	lr, #50120	@ tmp442,
	add	r3, r7, #128	@ ivtmp.6641, ivtmp.6641,
	mov	r6, r2	@ tmp443, i.6701
	movw	r7, #51320	@ tmp444,
	b	.L2419	@
.L2417:
	ldr	r1, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.6641, ivtmp.6641,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.6701
	bls	.L2465	@,
.L2419:
	ldr	r1, [r3, #0]	@ D.34835, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.6701, i.6701,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	ldr	ip, [r1, #512]	@ <variable>.frame_num, <variable>.frame_num
	cmp	ip, r0	@ <variable>.frame_num, <variable>.CurrPic.frame_num
	bne	.L2417	@,
	strb	r6, [r1, #2]	@ tmp443, <variable>.is_reference
	ldr	r1, [r3, #0]	@ tmp441, <variable>.DPB.fs_ref
	ldrb	r8, [r1, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r8, #1	@ <variable>.is_in_dpb,
	streq	r8, [r1, #532]	@ <variable>.is_in_dpb, <variable>.is_displayed
	ldreq	r1, [r3, #0]	@ tmp398, <variable>.DPB.fs_ref
	streqb	r6, [r1, #4]	@ tmp443, <variable>.is_in_dpb
	ldreq	r1, [r3, #0]	@ tmp441, <variable>.DPB.fs_ref
	ldr	ip, [r4, r7]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	ldr	r8, [r1, #548]	@ D.34843, <variable>.pmv_address_idc
	add	r0, r8, #12800	@ tmp403, D.34843,
	cmp	r8, ip	@ D.34843, <variable>.TotalPmvNum
	add	r0, r0, #12	@ tmp403, tmp403,
	strne	r6, [r4, r0, asl #2]	@ tmp443, <variable>.PmvStoreUsedFlag
	strne	ip, [r1, #548]	@ <variable>.TotalPmvNum, <variable>.pmv_address_idc
	b	.L2417	@
.L2465:
	movw	r5, #26628	@ tmp411,
	ldr	r1, [r4, r5]	@ pre_used_size.6696, <variable>.DPB.used_size
.L2416:
	add	r2, r4, #49664	@, pH264Ctx,
	mov	r0, r4	@, pH264Ctx
	add	r2, r2, #40	@,,
	bl	InsertFrmInDPB	@
	movw	r2, #26628	@ tmp415,
	ldr	r1, [r4, r2]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	movw	r3, #50692	@ tmp414,
	str	r1, [r4, r3]	@ <variable>.DPB.used_size, <variable>.PrevPic.Dpb_pos
	subs	r3, r0, #0	@ ret.6715,
	beq	.L2420	@,
	movw	r2, #3842	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3843	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2378:
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	movw	r6, #52840	@ tmp293,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3613	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2455:
	movw	r0, #52768	@ tmp365,
	ldr	r3, [r4, r0]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #2	@ <variable>.OldDecMode,
	beq	.L2466	@,
.L2410:
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L2467	@,
.L2411:
	movw	r1, #:lower16:.LC84	@,
	mov	r2, r5	@, ret
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3784	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2361	@
.L2420:
	add	lr, r1, #1	@ tmp423, <variable>.DPB.used_size,
	mov	r0, r4	@, pH264Ctx
	str	lr, [r4, r2]	@ tmp423, <variable>.DPB.used_size
	mov	r5, #0	@ ret,
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2421	@
.L2463:
	cmp	r0, #0	@ D.34784,
	beq	.L2392	@,
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L2468	@,
.L2396:
	movw	r1, #:lower16:.LC84	@,
	mov	r2, r5	@, ret
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3725	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2361	@
.L2456:
	movw	r2, #3790	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	str	ip, [sp, #0]	@ pre_pos,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3791	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2464:
	mov	r3, r0	@, ret.6690
	movw	r2, #3738	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, ret.6690
	movw	r1, #:lower16:.LC84	@,
	movw	r3, #3739	@,
	movt	r1, #:upper16:.LC84	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2461:
	movw	r2, #3564	@,
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC84	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC84	@,
	movw	r3, #3565	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2466:
	movw	r5, #49707	@ tmp367,
	ldrb	ip, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	ip, #0	@ <variable>.CurrPic.structure,
	movwne	ip, #50112	@ tmp370,
	ldrne	r2, [r4, ip]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	addne	ip, ip, #588	@ tmp369, tmp369,
	strne	r2, [r4, ip]	@ <variable>.CurrPic.frame_store, <variable>.pLastFieldBuf
	b	.L2410	@
.L2467:
	movw	r1, #:lower16:.LC85	@,
	movw	r2, #3781	@,
	movt	r1, #:upper16:.LC85	@,
	mov	r3, r5	@, ret
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L2411	@
.L2468:
	mov	r0, r6	@, <variable>.CurrPic.field_pair_flag
	movw	r1, #:lower16:.LC85	@,
	movw	r2, #3721	@,
	movt	r1, #:upper16:.LC85	@,
	mov	r3, r5	@, ret
	bl	dprint_vfmw	@
	b	.L2396	@
.L2458:
	mov	r0, r4	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	mvnne	r5, #0	@ ret,
	beq	.L2384	@,
	b	.L2385	@
.L2470:
	.align	2
.L2469:
	.word	.LANCHOR0+236
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r5, [r0, #364]	@ <variable>.StartMode, <variable>.StartMode
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r3	@ pLumaInfo, pLumaInfo
	cmp	r5, #0	@ <variable>.StartMode,
	bne	.L2472	@,
	movw	r3, #50156	@ tmp144,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r6	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	cmp	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	bls	.L2473	@,
	movw	r7, #50112	@ tmp148,
	movw	r1, #52840	@ tmp145,
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r2, r6	@, ret
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	str	r5, [r4, r7]	@ <variable>.StartMode, <variable>.CurrPic.frame_store
	mvn	r0, #0	@ D.40915,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2472:
	movw	r3, #50156	@ tmp155,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pLumaInfo
	bl	StorePicInDPB	@
	subs	r2, r0, #0	@ ret.6755,
	bne	.L2478	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r2, r0, #0	@ ret.6756,
	bne	.L2479	@,
.L2476:
	movw	r0, #13576	@ tmp161,
	movw	r2, #22336	@ tmp160,
	ldr	r3, [r4, r0]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r1, #51324	@ tmp158,
	movw	ip, #:lower16:88888	@ tmp164,
	movt	ip, #:upper16:88888	@ tmp164,
	mov	lr, #0	@ tmp159,
	str	lr, [r4, r1]	@ tmp159, <variable>.AllowStartDec
	str	r3, [r4, r2]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	movw	r3, #22344	@ tmp163,
	str	ip, [r4, r3]	@ tmp164, <variable>.PrevSlice.frame_num
	movw	r2, #22329	@ tmp168,
	movw	ip, #22340	@ tmp171,
	mov	r1, #2	@ tmp169,
	mov	r3, #7	@ tmp172,
	strb	r1, [r4, r2]	@ tmp169, <variable>.PrevSlice.bottom_field_flag
	str	r3, [r4, ip]	@ tmp172, <variable>.PrevSlice.nal_ref_idc
	movw	r2, #22330	@ tmp173,
	movw	ip, #22352	@ tmp176,
	mov	r1, #32	@ tmp174,
	mov	r3, #3	@ tmp177,
	strb	r1, [r4, r2]	@ tmp174, <variable>.PrevSlice.nal_unit_type
	str	r3, [r4, ip]	@ tmp177, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r2, #22356	@ tmp178,
	movw	ip, #22368	@ tmp184,
	mvn	r1, #0	@ tmp179,
	mov	r3, #262144	@ tmp185,
	str	r1, [r4, r2]	@ tmp179, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	str	r3, [r4, ip]	@ tmp185, <variable>.PrevSlice.first_mb_in_slice
	movw	r2, #22328	@ tmp165,
	movw	r1, #22360	@ tmp180,
	movw	ip, #22364	@ tmp182,
	str	lr, [r4, r1]	@ tmp159, <variable>.PrevSlice.delta_pic_order_cnt
	mov	r0, lr	@ D.40915, tmp159
	strb	lr, [r4, r2]	@ tmp159, <variable>.PrevSlice.field_pic_flag
	str	lr, [r4, ip]	@ tmp159, <variable>.PrevSlice.delta_pic_order_cnt
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2473:
	movw	lr, #51324	@ tmp153,
	mov	r2, #1	@ tmp154,
	mov	r0, r5	@ D.40915, <variable>.StartMode
	str	r2, [r4, lr]	@ tmp154, <variable>.AllowStartDec
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2478:
	movw	r1, #:lower16:.LC94	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r2, r0, #0	@ ret.6756,
	beq	.L2476	@,
.L2479:
	movw	r1, #:lower16:.LC95	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	b	.L2476	@
	.fnend
	.size	H264DEC_VDMPostProc, .-H264DEC_VDMPostProc
	.global	__aeabi_idivmod
	.align	2
	.global	DecGap
	.type	DecGap, %function
DecGap:
	.fnstart
.LFB1680:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	lr, #26380	@ tmp156,
	ldr	r5, [r0, lr]	@ D.36458, <variable>.CurrMarkIdx
	movw	r6, #2004	@ tmp159,
	movw	r2, #13605	@ tmp162,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	.pad #28
	sub	sp, sp, #28	@,,
	mul	fp, r6, r5	@ tmp158, tmp159, D.36458
	cmp	ip, #1	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	movw	r0, #26628	@ tmp171,
	movw	r2, #20700	@ tmp151,
	ldr	r5, [r4, r0]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	moveq	ip, #2	@,
	add	r8, fp, r4	@ tmp160, tmp158, pH264Ctx
	movne	ip, #0	@,
	add	r7, r8, #22272	@ tmp161, tmp160,
	str	ip, [sp, #8]	@, %sfp
	add	r1, r7, #96	@ tmp161, tmp161,
	movw	r8, #19844	@ tmp154,
	mov	lr, r7	@ tmp170, tmp161
	movw	r0, #16492	@ tmp152,
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@, <variable>.adaptive_ref_pic_marking_mode_flag
	movw	r7, #19848	@ tmp155,
	movw	fp, #50116	@ tmp164,
	movw	ip, #20696	@ tmp153,
	add	r6, lr, #100	@ tmp170, tmp170,
	cmp	r5, #0	@ <variable>.DPB.used_size,
	str	r3, [sp, #20]	@, %sfp
	ldr	r1, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt
	str	r6, [r4, fp]	@ tmp170, <variable>.CurrPic.pMarkPara
	ldr	r6, [r4, r2]	@ D.36450, <variable>.CurrSlice.frame_num
	ldr	r2, [r4, r0]	@ D.36451, <variable>.CurrSPS.log2_max_frame_num_minus4
	ldr	r0, [r4, ip]	@ D.36454, <variable>.CurrSlice.prev_frame_num
	str	r1, [sp, #16]	@, %sfp
	ldr	r3, [r4, r7]	@, <variable>.CurrPOC.delta_pic_order_cnt
	str	r3, [sp, #12]	@, %sfp
	beq	.L2493	@,
	add	r5, r2, #4	@ tmp174, D.36451,
	mov	r1, #1	@ tmp175,
	mov	ip, r1, asl r5	@, tmp175,
	add	r0, r0, #1	@, D.36454,
	str	ip, [sp, #4]	@, %sfp
	mov	r1, ip	@,
	bl	__aeabi_uidivmod	@
	mov	r3, #0	@ tmp183,
	mov	r0, #2	@,
	str	r3, [r4, r8]	@ tmp183, <variable>.CurrPOC.delta_pic_order_cnt
	str	r3, [r4, r7]	@ tmp183, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r5, r1	@ UnusedShortTermFrameNum,
	movw	r1, #:lower16:.LC97	@,
	movt	r1, #:upper16:.LC97	@,
	bl	dprint_vfmw	@
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC98	@,
	mov	r2, r6	@, D.36450
	movt	r1, #:upper16:.LC98	@,
	mov	r3, r5	@, UnusedShortTermFrameNum
	bl	dprint_vfmw	@
	cmp	r6, r5	@ D.36450, UnusedShortTermFrameNum
	ble	.L2485	@,
	movw	r7, #50112	@ tmp262,
	movw	r9, #16496	@ tmp267,
	b	.L2491	@
.L2487:
	movw	ip, #49708	@ tmp240,
	mov	r1, sl	@, tmp241
	strb	sl, [r4, ip]	@ tmp241, <variable>.CurrPic.is_long_term
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	ldr	r1, [sp, #4]	@, %sfp
	subs	r3, r0, #0	@ ret.6786,
	add	r0, r5, #1	@, UnusedShortTermFrameNum,
	bne	.L2494	@,
	movw	r3, #20696	@ tmp249,
	str	r5, [r4, r3]	@ UnusedShortTermFrameNum, <variable>.CurrSlice.prev_frame_num
	bl	__aeabi_idivmod	@
	cmp	r6, r1	@ D.36450, UnusedShortTermFrameNum
	mov	r5, r1	@ UnusedShortTermFrameNum,
	ble	.L2485	@,
.L2491:
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	AllocFrameStore	@
	mov	sl, #0	@ tmp241,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	subs	r8, r0, #0	@ ret,
	mov	r0, #2	@,
	bne	.L2495	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	ip, #49710	@,
	mov	r3, #1	@ tmp196,
	strb	r3, [r4, ip]	@ tmp196, <variable>.CurrPic.nal_unit_type
	movw	r0, #50120	@,
	str	r5, [r2, #512]	@ UnusedShortTermFrameNum, <variable>.frame_num
	movw	r2, #50128	@,
	ldr	r1, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r4, r0]	@ UnusedShortTermFrameNum, <variable>.CurrPic.frame_num
	str	r5, [r1, #412]	@ UnusedShortTermFrameNum, <variable>.frame.pic_num
	ldr	ip, [sp, #8]	@, %sfp
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [r4, r2]	@, <variable>.CurrPic.nal_ref_idc
	str	r8, [r0, #408]	@ ret, <variable>.frame.long_term_pic_num
	movw	r0, #49706	@,
	ldr	r1, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r1, #532]	@ tmp196, <variable>.is_displayed
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [ip, #4]	@ ret, <variable>.is_in_dpb
	ldr	r2, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r3, [r2, #0]	@ tmp196, <variable>.non_existing
	ldr	r1, [r4, fp]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	strb	r3, [r4, r0]	@ tmp196, <variable>.CurrPic.non_existing
	strb	r8, [r1, #3]	@ ret, <variable>.adaptive_ref_pic_marking_mode_flag
	ldr	ip, [r4, r9]	@ <variable>.CurrSPS.pic_order_cnt_type, <variable>.CurrSPS.pic_order_cnt_type
	cmp	ip, #0	@ <variable>.CurrSPS.pic_order_cnt_type,
	beq	.L2487	@,
	movw	lr, #19860	@,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, lr]	@ UnusedShortTermFrameNum, <variable>.CurrPOC.frame_num
	bl	DecPOC	@
	movw	r1, #19836	@ tmp232,
	ldr	ip, [r4, r1]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPOC.framepoc
	movw	r0, #19828	@ tmp235,
	ldr	r1, [r4, r0]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	movw	r3, #19840	@ tmp229,
	movw	r2, #19832	@ tmp238,
	movw	r0, #50136	@ tmp231,
	ldr	r3, [r4, r3]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	ldr	r2, [r4, r2]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	str	ip, [r4, r0]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	ip, #50140	@ tmp234,
	str	r1, [r4, ip]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	movw	r0, #50144	@ tmp237,
	movw	r1, #50132	@,
	str	r2, [r4, r0]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	str	r3, [r4, r1]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	b	.L2487	@
.L2493:
	mov	r0, r5	@, <variable>.DPB.used_size
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36472, <variable>.DPB.used_size
.L2484:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2485:
	ldr	lr, [sp, #16]	@, %sfp
	movw	r2, #19844	@ tmp255,
	movw	r1, #19848	@ tmp256,
	movw	r0, #50116	@ tmp258,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r0, #0	@ D.36472,
	str	lr, [r4, r2]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	ip, [sp, #12]	@, %sfp
	str	ip, [r4, r1]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	lr, [sp, #20]	@, %sfp
	strb	lr, [r3, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	b	.L2484	@
.L2495:
	ldr	r2, [sp, #16]	@, %sfp
	movw	r0, #19844	@ tmp188,
	movw	r1, #19848	@ tmp189,
	movw	r3, #50116	@ tmp191,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	str	r2, [r4, r0]	@, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r0, sl	@, tmp241
	ldr	ip, [sp, #12]	@, %sfp
	str	ip, [r4, r1]	@, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r1, #:lower16:.LC99	@,
	ldr	r2, [sp, #20]	@, %sfp
	movt	r1, #:upper16:.LC99	@,
	strb	r2, [lr, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36472,
	b	.L2484	@
.L2494:
	ldr	r1, [sp, #16]	@, %sfp
	movw	r0, #19844	@ tmp243,
	movw	lr, #19848	@ tmp244,
	movw	r2, #50116	@ tmp246,
	ldr	r2, [r4, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	str	r1, [r4, r0]	@, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r0, sl	@, tmp241
	ldr	ip, [sp, #12]	@, %sfp
	str	ip, [r4, lr]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r1, [sp, #20]	@, %sfp
	strb	r1, [r2, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	movw	r1, #:lower16:.LC101	@,
	movw	r2, #6185	@,
	movt	r1, #:upper16:.LC101	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36472,
	b	.L2484	@
	.fnend
	.size	DecGap, .-DecGap
	.align	2
	.global	InitPic
	.type	InitPic, %function
InitPic:
	.fnstart
.LFB1681:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r2, #13584	@ tmp194,
	movw	r5, #20692	@ tmp195,
	ldr	ip, [r0, r2]	@ <variable>.PPS, <variable>.PPS
	ldr	r8, [r0, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r6, #2208	@ tmp198,
	movw	lr, #49704	@ tmp205,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #13580	@ tmp200,
	ldrb	r0, [r0, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	mla	r6, r6, r8, ip	@ pPPS, tmp198, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	r3, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	cmp	r0, #0	@ <variable>.CurrPic.state,
	mov	r5, #4000	@ tmp203,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, r2, r3	@ pSPS, tmp203, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L2497	@,
	movw	r7, #50112	@ tmp207,
	ldr	r3, [r4, r7]	@ D.36538, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.36538,
	beq	.L2498	@,
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r8, #0	@ <variable>.is_used,
	beq	.L2575	@,
.L2499:
	movw	r8, #49704	@ tmp223,
	mov	r1, #0	@ tmp224,
	strb	r1, [r4, r8]	@ tmp224, <variable>.CurrPic.state
.L2497:
	mov	r0, r4	@, pH264Ctx
	add	r1, sp, #20	@,,
	bl	GetReRangeFlag	@
	ldr	r3, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r8, r0	@ D.36548,
	movw	r0, #14332	@ tmp227,
	ldr	r2, [r4, r0]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	cmp	r2, r3	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	beq	.L2576	@,
.L2500:
	add	ip, r4, #13568	@, pH264Ctx,
	mov	r1, #0	@ tmp231,
	add	r0, ip, #20	@,,
	strb	r1, [r5, #24]	@ tmp231, <variable>.is_refreshed
	mov	r2, #4000	@,
	mov	r1, r5	@, pSPS
	bl	memmove	@
.L2501:
	ldr	r2, [sp, #20]	@ dpb_changed, dpb_changed
	cmp	r2, #0	@ dpb_changed,
	beq	.L2502	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r7, #0	@ <variable>.stChanOption.s32ReRangeEn,
	beq	.L2577	@,
.L2503:
	movw	r2, #52800	@ tmp279,
	cmp	r8, #0	@ D.36548,
	ldr	r1, [r4, r2]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r0, r1, #1	@ tmp282, <variable>.SeqCnt,
	str	r0, [r4, r2]	@ tmp282, <variable>.SeqCnt
	beq	.L2512	@,
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L2578	@,
.L2513:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	GetBackPicFromVOQueue	@
.L2514:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	subs	r7, r0, #0	@ ret.6888,
	bne	.L2579	@,
	cmp	r8, #0	@ D.36548,
	beq	.L2502	@,
	movw	r1, #17548	@ tmp296,
	movw	sl, #13606	@ tmp300,
	ldr	r8, [r4, r1]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r2, #17544	@ tmp293,
	ldrb	ip, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r3, #17568	@ tmp291,
	add	r0, r8, #1	@ tmp297, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldr	lr, [r4, r2]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	rsb	sl, ip, #2	@ tmp302, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	ip, [r4, r3]	@ D.36592, <variable>.CurrSPS.dpb_size_plus1
	mov	r1, r0, asl #4	@ tmp299, tmp297,
	add	r8, lr, #1	@ tmp294, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	add	r0, r4, #51200	@, pH264Ctx,
	movw	r2, #51320	@ tmp292,
	mul	sl, sl, r1	@ ImageHeight.6900, tmp302, tmp299
	mov	r8, r8, asl #4	@ ImageWidth.6892, tmp294,
	str	ip, [r4, r2]	@ D.36592, <variable>.TotalPmvNum
	add	r3, r0, #116	@,,
	mov	r1, r8	@, ImageWidth.6892
	mov	r0, r4	@, pH264Ctx
	str	ip, [sp, #0]	@ D.36592,
	mov	r2, sl	@, ImageHeight.6900
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L2580	@,
	movw	r2, #13560	@ tmp310,
	movw	r3, #13564	@ tmp312,
	mov	r8, r8, lsr #4	@ tmp311, ImageWidth.6892,
	mov	ip, sl, lsr #4	@ tmp313, ImageHeight.6900,
	str	r8, [r4, r2]	@ tmp311, <variable>.CurWidthInMb
	str	ip, [r4, r3]	@ tmp313, <variable>.CurHeightInMb
.L2502:
	movw	lr, #17612	@ tmp314,
	ldr	r1, [r6, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	sl, [r4, lr]	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.CurrPPS.pic_parameter_set_id
	cmp	sl, r1	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.pic_parameter_set_id
	beq	.L2581	@,
.L2517:
	add	ip, r4, #17408	@, pH264Ctx,
	mov	r3, #0	@ tmp318,
	mov	r1, r6	@, pPPS
	add	r0, ip, #180	@,,
	strb	r3, [r6, #20]	@ tmp318, <variable>.is_refreshed
	mov	r2, #2208	@,
	bl	memmove	@
.L2518:
	movw	sl, #19820	@ tmp323,
	movw	r1, #16492	@ tmp322,
	ldr	lr, [r4, sl]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	movw	r2, #52768	@ tmp329,
	ldr	sl, [r4, r1]	@ D.36650, <variable>.CurrSPS.log2_max_frame_num_minus4
	cmp	lr, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	ldr	r6, [r4, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movwne	r1, #50672	@ tmp327,
	movne	lr, #0	@ tmp326,
	strne	lr, [r4, r1]	@ tmp326, <variable>.PrevPic.frame_num
	movwne	r1, #20696	@ tmp325,
	strne	lr, [r4, r1]	@ tmp326, <variable>.CurrSlice.prev_frame_num
	cmp	r6, #2	@ <variable>.OldDecMode,
	beq	.L2520	@,
	ldr	r7, [r4, #0]	@ temp.6907, <variable>.pstExtraData
	ldr	r0, [r7, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2520	@,
	movw	r8, #20700	@ tmp333,
	movw	r3, #20696	@ tmp334,
	ldr	r6, [r4, r8]	@ prephitmp.6933, <variable>.CurrSlice.frame_num
	ldr	r8, [r4, r3]	@ prephitmp.6824, <variable>.CurrSlice.prev_frame_num
	cmp	r6, r8	@ prephitmp.6933, prephitmp.6824
	beq	.L2522	@,
	mov	ip, #1	@ tmp336,
	add	r2, sl, #4	@ tmp335, D.36650,
	mov	sl, ip, asl r2	@ MaxFrameNum, tmp336,
	add	r0, r8, ip	@, prephitmp.6824,
	mov	r1, sl	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	r6, r1	@ prephitmp.6933,
	beq	.L2522	@,
	ldr	r1, [r7, #516]	@ <variable>.s32MoreGapEnable, <variable>.s32MoreGapEnable
	cmp	r1, #0	@ <variable>.s32MoreGapEnable,
	bne	.L2523	@,
	ldr	lr, [r7, #540]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	lr, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2582	@,
.L2524:
	cmp	r6, r8	@ prephitmp.6933, prephitmp.6824
	bls	.L2525	@,
	movw	r7, #17568	@ tmp352,
	rsb	r8, r8, r6	@ tmp353, prephitmp.6824, prephitmp.6933
	ldr	r1, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	r1, r8	@ <variable>.CurrSPS.dpb_size_plus1, tmp353
	bcs	.L2523	@,
	movw	r0, #20680	@ tmp355,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	lr, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L2583	@,
	cmp	r6, #0	@ prephitmp.6933,
	movw	ip, #20696	@ tmp366,
	subeq	r6, sl, #1	@ iftmp.636, MaxFrameNum,
	subne	r6, r6, #1	@ iftmp.636, prephitmp.6933,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, ip]	@ iftmp.636, <variable>.CurrSlice.prev_frame_num
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.6911,
	beq	.L2523	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC73	@,
	movw	r2, #6462	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2582:
	ldr	r0, [r7, #536]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2524	@,
	ldr	r3, [r7, #544]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r3, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2524	@,
	ldr	r2, [r7, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	ip, r2, #1020	@ tmp348, <variable>.s32FastForwardBackwardSpeed,
	add	r7, ip, #3	@ tmp348, tmp348,
	cmp	r7, #2048	@ tmp348,
	bcc	.L2524	@,
.L2523:
	movw	r0, #13605	@ tmp387,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	cmp	r7, #0	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	beq	.L2584	@,
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	bne	.L2536	@,
.L2520:
	movw	ip, #20700	@ tmp419,
	ldr	r6, [r4, ip]	@ prephitmp.6933, <variable>.CurrSlice.frame_num
.L2522:
	movw	lr, #20712	@ tmp420,
	movw	r3, #19860	@ tmp424,
	ldr	r0, [r4, lr]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r0, #0	@ <variable>.CurrSlice.nal_ref_idc,
	movwne	r0, #20696	@ tmp422,
	strne	r6, [r4, r0]	@ prephitmp.6933, <variable>.CurrSlice.prev_frame_num
	movwne	r0, #20700	@ tmp423,
	ldrne	r6, [r4, r0]	@ prephitmp.6933, <variable>.CurrSlice.frame_num
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, r3]	@ prephitmp.6933, <variable>.CurrPOC.frame_num
	bl	DecPOC	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret.6930
	bne	.L2585	@,
	movw	r2, #20681	@ tmp465,
	movw	r1, #20683	@ tmp433,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r3, #20700	@ tmp437,
	ldrb	r9, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r7, #20712	@ tmp440,
	ldr	sl, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	lr, #19840	@ tmp443,
	movw	fp, #19836	@ tmp446,
	cmp	r6, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	ip, #19828	@ tmp449,
	ldr	r6, [r4, r7]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r8, #19832	@ tmp452,
	ldr	r7, [r4, lr]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	ldr	lr, [r4, fp]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPOC.framepoc
	movw	r3, #49710	@ tmp432,
	ldr	fp, [r4, ip]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	movw	r1, #50132	@ tmp442,
	ldr	ip, [r4, r8]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	movw	r8, #50120	@ tmp436,
	strb	r9, [r4, r3]	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrPic.nal_unit_type
	movw	r3, #50128	@ tmp439,
	str	sl, [r4, r8]	@ <variable>.CurrSlice.frame_num, <variable>.CurrPic.frame_num
	movw	r8, #50136	@ tmp445,
	str	r6, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	r6, #50140	@ tmp448,
	str	r7, [r4, r1]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	movw	r7, #50144	@ tmp451,
	str	lr, [r4, r8]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	r8, #13606	@ tmp470,
	str	fp, [r4, r6]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	movw	lr, #49708	@ tmp460,
	str	ip, [r4, r7]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	movw	r1, #49704	@ tmp429,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r6, #17548	@ tmp473,
	mov	r9, #1	@ tmp430,
	strb	r0, [r4, lr]	@ ret.6930, <variable>.CurrPic.is_long_term
	movw	r3, #49711	@ tmp426,
	strb	r9, [r4, r1]	@ tmp430, <variable>.CurrPic.state
	movw	ip, #49706	@ tmp454,
	movw	r1, #49709	@ tmp457,
	ldr	lr, [r4, r6]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	mov	fp, #50176	@ tmp463,
	strb	r0, [r4, r1]	@ ret.6930, <variable>.CurrPic.is_short_term
	moveq	r1, r9	@ prephitmp.6829, tmp430
	strb	r0, [r4, r3]	@ ret.6930, <variable>.CurrPic.mode_skip_flag
	movne	r1, #2	@ prephitmp.6829,
	strb	r0, [r4, ip]	@ ret.6930, <variable>.CurrPic.non_existing
	rsb	r0, r7, #2	@ tmp472, <variable>.CurrSPS.frame_mbs_only_flag,
	strneb	r9, [r4, r2]	@ tmp430, <variable>.CurrSlice.field_pic_flag
	mvn	sl, #0	@ tmp464,
	mla	r9, lr, r0, r0	@ tmp476, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp472, tmp472
	str	sl, [r4, fp]	@ tmp464, <variable>.CurrPic.stream_base_addr
	movw	sl, #17544	@ tmp489,
	movw	fp, #20681	@ tmp498,
	movw	r6, #49712	@ tmp494,
	movw	r7, #50164	@ tmp480,
	mov	r0, r9	@, tmp476
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, sl]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	ldrb	ip, [r4, fp]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r1, #17588	@ tmp495,
	add	fp, r3, #1	@ temp.6950, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	ldrb	r8, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	r2, #50168	@ tmp481,
	str	r9, [r4, r2]	@ tmp476, <variable>.CurrPic.frame_height_in_mb
	movw	sl, #50172	@ tmp492,
	movw	r9, #50160	@ tmp491,
	strb	r8, [r4, r6]	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPic.entropy_coding_mode_flag
	str	fp, [r4, r9]	@ temp.6950, <variable>.CurrPic.pic_width_in_mb
	mul	r1, fp, r0	@ tmp493, temp.6950, tmp479
	str	r0, [r4, r7]	@ tmp479, <variable>.CurrPic.pic_height_in_mb
	str	r1, [r4, sl]	@ tmp493, <variable>.CurrPic.pic_mbs
	movne	r1, #0	@ prephitmp.6830,
	beq	.L2586	@,
.L2542:
	movw	ip, #20712	@ tmp505,
	movw	r6, #26380	@ tmp511,
	ldr	r3, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r2, #49713	@ tmp503,
	ldr	lr, [r4, r6]	@ <variable>.CurrMarkIdx, <variable>.CurrMarkIdx
	movw	r0, #2004	@ tmp514,
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	strb	r1, [r4, r2]	@ prephitmp.6830, <variable>.CurrPic.MbaffFrameFlag
	movw	sl, #50116	@ tmp510,
	add	r9, r4, #49664	@, pH264Ctx,
	movwne	r3, #20700	@ tmp508,
	movw	r6, #49736	@ tmp522,
	ldrne	r2, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movwne	r3, #20696	@ tmp507,
	mla	r1, r0, lr, r4	@ tmp517, tmp514, <variable>.CurrMarkIdx, pH264Ctx
	movw	ip, #49744	@ tmp525,
	strne	r2, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r2, #49728	@ tmp519,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	add	r7, r1, #22272	@ tmp518, tmp517,
	movw	r1, #:lower16:.LC113	@,
	add	fp, r7, #100	@ tmp518, tmp518,
	str	fp, [r4, sl]	@ tmp518, <variable>.CurrPic.pMarkPara
	ldrd	sl, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	movt	r1, #:upper16:.LC113	@,
	movw	r7, #49860	@ tmp568,
	strd	sl, [r4, r2]	@ <variable>.pts, pH264Ctx, tmp519
	movw	sl, #49868	@ tmp557,
	str	r9, [sp, #12]	@, %sfp
	movw	fp, #49848	@ tmp589,
	ldrd	r8, [r3, #72]	@, <variable>.pstExtraData,
	strd	r8, [r4, r6]	@, pH264Ctx, tmp522
	ldrd	r8, [r3, #88]	@, <variable>.pstExtraData,
	strd	r8, [r4, ip]	@, pH264Ctx, tmp525
	movw	ip, #49788	@ tmp528,
	ldr	lr, [r3, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	mvn	r9, #0	@,
	mvn	r8, #0	@,
	str	lr, [r4, ip]	@ <variable>.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	ip, #49792	@ tmp531,
	ldr	lr, [r3, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	lr, [r4, ip]	@ <variable>.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	movw	ip, #49796	@ tmp534,
	ldr	lr, [r3, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r4, ip]	@ <variable>.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	movw	ip, #49800	@ tmp537,
	ldr	lr, [r3, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	lr, [r4, ip]	@ <variable>.GopNum, <variable>.CurrPic.fs_image.GopNum
	movw	ip, #49932	@ tmp540,
	ldr	lr, [r5, #752]	@ <variable>.bit_depth_luma_minus8, <variable>.bit_depth_luma_minus8
	str	lr, [r4, ip]	@ <variable>.bit_depth_luma_minus8, <variable>.CurrPic.fs_image.bit_depth_luma_minus8
	movw	ip, #49936	@ tmp542,
	ldr	lr, [r5, #756]	@ <variable>.bit_depth_chroma_minus8, <variable>.bit_depth_chroma_minus8
	str	lr, [r4, ip]	@ <variable>.bit_depth_chroma_minus8, <variable>.CurrPic.fs_image.bit_depth_chroma_minus8
	strd	r8, [r3, #56]	@, <variable>.pstExtraData,
	movw	r9, #49864	@,
	ldrd	r2, [r2, r4]	@, tmp519, pH264Ctx
	bl	dprint_vfmw	@
	ldrd	r2, [r4, r6]	@, pH264Ctx, tmp522
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC114	@,
	movt	r1, #:upper16:.LC114	@,
	bl	dprint_vfmw	@
	movw	r3, #13606	@ tmp558,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r0, #17548	@ tmp561,
	ldr	ip, [r4, r0]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r2, #13644	@ tmp577,
	rsb	r3, r1, #2	@ tmp560, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.vui_seq_parameters.video_format, <variable>.CurrSPS.vui_seq_parameters.video_format
	mov	r0, #14336	@ tmp571,
	movw	r1, #17544	@ tmp553,
	mla	r3, ip, r3, r3	@ tmp564, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp560, tmp560
	ldr	ip, [r4, r0]	@ <variable>.CurrSPS.chroma_format_idc, <variable>.CurrSPS.chroma_format_idc
	ldr	r0, [r4, r1]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	movw	r1, #13640	@ tmp566,
	ldr	r1, [r4, r1]	@ <variable>.CurrSPS.vui_seq_parameters.aspect_ratio, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio
	subs	ip, ip, #1	@ tmp575, <variable>.CurrSPS.chroma_format_idc,
	movne	ip, #1	@ tmp575
	mov	r2, r2, asl #5	@ tmp578, <variable>.CurrSPS.vui_seq_parameters.video_format,
	add	r0, r0, #1	@ tmp554, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	and	r1, r1, #7	@ dar, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio,
	and	r2, r2, #255	@ tmp580, tmp578,
	orr	r2, r2, ip, asl #2	@, tmp581, tmp580, tmp575,
	mov	ip, r0, asl #4	@ tmp556, tmp554,
	mov	r0, r3, asl #4	@ tmp565, tmp564,
	str	ip, [r4, r9]	@ tmp556, <variable>.CurrPic.fs_image.image_width
	str	r0, [r4, sl]	@ tmp565, <variable>.CurrPic.fs_image.image_height
	orr	ip, r2, r1, asl #14	@, tmp583, tmp581, dar,
	str	ip, [r4, r7]	@ tmp583, <variable>.CurrPic.fs_image.format
	ldr	r3, [sp, #12]	@, %sfp
	add	r0, r3, #56	@,,
	bl	SetAspectRatio	@
	movw	r1, #49707	@ tmp590,
	movw	r3, #50112	@ tmp593,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r0, #52800	@ tmp587,
	ldr	r1, [r4, r3]	@ temp.6972, <variable>.CurrPic.frame_store
	ldr	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	subs	r2, r2, #0	@ tmp592, <variable>.CurrPic.structure,
	movne	r2, #1	@ tmp592
	cmp	r1, #0	@ temp.6972,
	movw	r0, #49904	@ tmp586,
	str	r2, [r4, fp]	@ tmp592, <variable>.CurrPic.fs_image.is_fld_save
	str	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.CurrPic.fs_image.seq_cnt
	beq	.L2587	@,
	ldr	r9, [r4, r7]	@ <variable>.CurrPic.fs_image.format, <variable>.CurrPic.fs_image.format
	movw	r7, #49780	@ tmp609,
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.fs_image.u32AspectWidth, <variable>.CurrPic.fs_image.u32AspectWidth
	movw	r0, #49784	@ tmp605,
	ldr	lr, [r4, r0]	@ <variable>.CurrPic.fs_image.u32AspectHeight, <variable>.CurrPic.fs_image.u32AspectHeight
	movw	r6, #49864	@,
	str	r9, [r1, #148]	@ <variable>.CurrPic.fs_image.format, <variable>.fs_image.format
	ldr	r7, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r0, [r4, r6]	@ <variable>.CurrPic.fs_image.image_width, <variable>.CurrPic.fs_image.image_width
	movw	r6, #52840	@ tmp631,
	ldr	r9, [r4, sl]	@ <variable>.CurrPic.fs_image.image_height, <variable>.CurrPic.fs_image.image_height
	str	r2, [r7, #136]	@ tmp592, <variable>.fs_image.is_fld_save
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r1, #72]	@ <variable>.CurrPic.fs_image.u32AspectHeight, <variable>.fs_image.u32AspectHeight
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [r2, #68]	@ <variable>.CurrPic.fs_image.u32AspectWidth, <variable>.fs_image.u32AspectWidth
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r1, #152]	@ <variable>.CurrPic.fs_image.image_width, <variable>.fs_image.image_width
	movw	r0, #49880	@ tmp621,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r9, [lr, #156]	@ <variable>.CurrPic.fs_image.image_height, <variable>.fs_image.image_height
	movw	r9, #49884	@ tmp624,
	ldr	r2, [r5, #3992]	@ D.36816, <variable>.disp_center_x
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r2, [ip, #168]	@ D.36816, <variable>.fs_image.disp_center_x
	str	r2, [r4, r0]	@ D.36816, <variable>.CurrPic.fs_image.disp_center_x
	movw	r0, #49872	@ tmp627,
	ldr	lr, [r5, #3996]	@ D.36818, <variable>.disp_center_y
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r1, #172]	@ D.36818, <variable>.fs_image.disp_center_y
	str	lr, [r4, r9]	@ D.36818, <variable>.CurrPic.fs_image.disp_center_y
	movw	r9, #49876	@ tmp630,
	ldr	r2, [r5, #3984]	@ D.36820, <variable>.disp_width
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r2, [ip, #160]	@ D.36820, <variable>.fs_image.disp_width
	str	r2, [r4, r0]	@ D.36820, <variable>.CurrPic.fs_image.disp_width
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	lr, [r5, #3988]	@ D.36822, <variable>.disp_height
	str	lr, [r1, #164]	@ D.36822, <variable>.fs_image.disp_height
	ldr	r5, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r4, r9]	@ D.36822, <variable>.CurrPic.fs_image.disp_height
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetDispPhyFs	@
	subs	r2, r0, #0	@ pstDecFs,
	beq	.L2545	@,
	ldr	r3, [r4, fp]	@ <variable>.CurrPic.fs_image.is_fld_save, <variable>.CurrPic.fs_image.is_fld_save
	mov	r1, #0	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	subs	r3, r3, r1	@, <variable>.CurrPic.fs_image.is_fld_save,
	movne	r3, #1	@
	ldr	r2, [r2, #4]	@, <variable>.PhyFsID
	bl	FSP_SetStoreType	@
.L2545:
	movw	r0, #51344	@ tmp643,
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r2, [r4, r0]	@ prephitmp.6989, <variable>.TotalUsrDatNum
	add	ip, r4, #49920	@ D.47619, pH264Ctx,
	add	r5, r4, #51200	@ ivtmp.6867, pH264Ctx,
	add	r9, r1, #248	@ ivtmp.6876,,
	movw	r6, #51348	@ tmp693,
	add	r1, ip, #8	@ D.47619, D.47619,
	add	ip, r5, #152	@ ivtmp.6867, ivtmp.6867,
	mov	r5, #0	@ tmp695,
.L2550:
	ldr	lr, [r9, #0]	@ tmp646, <variable>.CurrPic.fs_image.p_usrdat
	cmp	lr, #0	@ tmp646,
	ldrne	r2, [r4, r0]	@ prephitmp.6989, <variable>.TotalUsrDatNum
	beq	.L2588	@,
.L2547:
	add	r9, r9, #4	@ ivtmp.6876, ivtmp.6876,
	cmp	r9, r1	@ ivtmp.6876, D.47619
	bne	.L2550	@,
	cmp	r2, #0	@ prephitmp.6989,
	beq	.L2557	@,
	ble	.L2557	@,
	add	r8, r2, #12800	@ tmp674, prephitmp.6989,
	sub	sl, r2, #1	@ tmp698, prephitmp.6989,
	add	r9, r8, #36	@ tmp674, tmp674,
	movw	r8, #52840	@ tmp691,
	mov	r6, sl	@ uidxpic, tmp698
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r5, r4, r9, asl #2	@, tmp677, pH264Ctx, tmp674,
	and	r9, sl, #1	@ tmp699, tmp698,
	mov	r7, #0	@ tmp692,
	mov	sl, r5	@ ivtmp.6864, tmp677
	ldr	r1, [sl], #4	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, r7	@ uidxpic,
	str	r7, [sl, #-4]	@ tmp692, <variable>.pUsrDatArray
	ble	.L2557	@,
	cmp	r9, #0	@ tmp699,
	beq	.L2558	@,
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ uidxpic, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp692, <variable>.pUsrDatArray
	ble	.L2557	@,
.L2558:
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ tmp701, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	sub	r6, r6, #1	@ uidxpic, tmp701,
	bl	FreeUsdByDec	@
	str	r7, [r5, #-4]!	@ tmp692, <variable>.pUsrDatArray
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp692, <variable>.pUsrDatArray
	bgt	.L2558	@,
.L2557:
	movw	r0, #49912	@ tmp664,
	movw	r3, #49916	@ tmp667,
	ldr	lr, [r4, r0]	@ D.36831, <variable>.CurrPic.fs_image.p_usrdat
	mov	ip, #49920	@ tmp670,
	movw	r0, #49924	@ tmp673,
	cmp	lr, #0	@ D.36831,
	movwne	r2, #50112	@ tmp666,
	ldrne	r2, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strne	lr, [r2, #200]	@ D.36831, <variable>.fs_image.p_usrdat
	ldr	r1, [r4, r3]	@ temp.6994, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.6994,
	movwne	r2, #50112	@ tmp669,
	ldrne	r2, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strne	r1, [r2, #204]	@ temp.6994, <variable>.fs_image.p_usrdat
	ldr	r5, [r4, ip]	@ temp.6996, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r5, #0	@ temp.6996,
	movwne	r2, #50112	@ tmp672,
	ldrne	r2, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strne	r5, [r2, #208]	@ temp.6996, <variable>.fs_image.p_usrdat
	ldr	r3, [r4, r0]	@ temp.6991, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r3, #0	@ temp.6991,
	movwne	r5, #50112	@ tmp683,
	ldrne	r2, [r4, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strne	r3, [r2, #212]	@ temp.6991, <variable>.fs_image.p_usrdat
.L2556:
	movw	r1, #51344	@ tmp684,
	movw	ip, #50148	@ tmp686,
	mov	r5, #0	@ tmp685,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, r1]	@ tmp685, <variable>.TotalUsrDatNum
	str	r5, [r4, ip]	@ tmp685, <variable>.CurrPic.pic_type
	bl	CalcPicNum	@
	mov	r0, r5	@ D.36573, tmp685
.L2505:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2588:
	cmp	r2, #0	@ prephitmp.6989,
	beq	.L2547	@,
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r2, [r4, r6]	@ <variable>.pUsrDatArray, <variable>.pUsrDatArray
	subs	lr, r3, #1	@ D.36841, <variable>.TotalUsrDatNum,
	str	r2, [r9, #0]	@ <variable>.pUsrDatArray, <variable>.CurrPic.fs_image.p_usrdat
	beq	.L2548	@,
	ldr	r7, [ip, #0]	@ tmp653, <variable>.pUsrDatArray
	mov	r2, #1	@ uidxsei,
	cmp	lr, r2	@ D.36841, uidxsei
	sub	r3, lr, #1	@ tmp702, D.36841,
	and	r8, r3, r2	@ tmp704, tmp702,
	add	r3, ip, #4	@ ivtmp.6867, ivtmp.6867,
	str	r7, [ip, #-4]	@ tmp653, <variable>.pUsrDatArray
	bls	.L2548	@,
	cmp	r8, #0	@ tmp704,
	beq	.L2549	@,
	ldr	r7, [ip, #4]	@ tmp729, <variable>.pUsrDatArray
	mov	r2, #2	@ uidxsei,
	cmp	lr, r2	@ D.36841, uidxsei
	str	r7, [r3, #-4]	@ tmp729, <variable>.pUsrDatArray
	add	r3, r3, #4	@ ivtmp.6867, ivtmp.6867,
	bls	.L2548	@,
.L2549:
	ldr	r8, [r3, #0]	@ tmp710, <variable>.pUsrDatArray
	mov	r7, r3	@ tmp706, ivtmp.6867
	add	r2, r2, #2	@ uidxsei, uidxsei,
	cmp	lr, r2	@ D.36841, uidxsei
	str	r8, [r3, #-4]	@ tmp710, <variable>.pUsrDatArray
	ldr	r3, [r3, #4]	@ tmp712, <variable>.pUsrDatArray
	str	r3, [r7], #4	@ tmp712, <variable>.pUsrDatArray
	add	r3, r7, #4	@ ivtmp.6867, tmp706,
	bhi	.L2549	@,
.L2548:
	add	lr, lr, #12800	@ tmp654, D.36841,
	ldr	r2, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, lr, #36	@ tmp654, tmp654,
	sub	r2, r2, #1	@ prephitmp.6989, <variable>.TotalUsrDatNum,
	str	r2, [r4, r0]	@ prephitmp.6989, <variable>.TotalUsrDatNum
	add	lr, r4, r3, asl #2	@, tmp658, pH264Ctx, tmp654,
	str	r5, [lr, #4]	@ tmp695, <variable>.pUsrDatArray
	b	.L2547	@
.L2586:
	movw	r2, #13607	@ tmp500,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	subs	r1, r0, #0	@ prephitmp.6830, <variable>.CurrSPS.mb_adaptive_frame_field_flag,
	movne	r1, #1	@ prephitmp.6830
	b	.L2542	@
.L2577:
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	bne	.L2503	@,
	movw	r3, #52800	@ tmp238,
	cmp	r8, #0	@ D.36548,
	ldr	ip, [r4, r3]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	lr, ip, #1	@ tmp241, <variable>.SeqCnt,
	str	lr, [r4, r3]	@ tmp241, <variable>.SeqCnt
	beq	.L2504	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	beq	.L2504	@,
	mov	r0, r7	@, <variable>.stChanOption.s32ReRangeEn
	movw	r1, #:lower16:.LC73	@,
	movw	r2, #6280	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2576:
	ldrb	lr, [r5, #24]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	lr, #0	@ <variable>.is_refreshed,
	beq	.L2501	@,
	b	.L2500	@
.L2581:
	ldrb	r0, [r6, #20]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	r0, #0	@ <variable>.is_refreshed,
	beq	.L2518	@,
	b	.L2517	@
.L2584:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r3, #520]	@ D.36719, <variable>.s32FastForwardBackwardSpeed
	cmp	r6, #0	@ D.36719,
	cmpne	r6, #1024	@, D.36719,
	bne	.L2520	@,
	movw	r8, #20696	@ tmp400,
	mov	r1, sl	@, MaxFrameNum
	ldr	lr, [r4, r8]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r8, #20700	@ tmp399,
	ldr	r6, [r4, r8]	@ prephitmp.6933, <variable>.CurrSlice.frame_num
	add	r0, lr, #1	@, <variable>.CurrSlice.prev_frame_num,
	bl	__aeabi_uidivmod	@
	cmp	r6, r1	@ prephitmp.6933,
	bcs	.L2534	@,
	movw	r1, #20680	@ tmp409,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L2522	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mov	r0, r7	@, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	movw	r1, #:lower16:.LC110	@,
	movw	r2, #6513	@,
	movt	r1, #:upper16:.LC110	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2504:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	subs	r3, r0, #0	@ ret.6881,
	bne	.L2589	@,
	movw	lr, #17548	@ tmp249,
	movw	r7, #17544	@ tmp246,
	ldr	r1, [r4, lr]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r2, #13606	@ tmp253,
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	cmp	r8, #0	@ D.36548,
	add	r3, r1, #1	@ tmp250, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	add	r7, ip, #1	@ tmp247, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	mov	r1, r3, asl #4	@ tmp252, tmp250,
	rsb	r8, lr, #2	@ tmp255, <variable>.CurrSPS.frame_mbs_only_flag,
	mov	r7, r7, asl #4	@ ImageWidth, tmp247,
	mul	r8, r8, r1	@ ImageHeight, tmp255, tmp252
	beq	.L2507	@,
	movw	ip, #13560	@ tmp256,
	ldr	r3, [r4, ip]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	cmp	r3, #0	@ <variable>.CurWidthInMb,
	bne	.L2507	@,
	movw	r2, #17568	@ tmp258,
	ldr	r3, [r4, #0]	@ temp.6882, <variable>.pstExtraData
	ldr	ip, [r4, r2]	@ prephitmp.6843, <variable>.CurrSPS.dpb_size_plus1
	movw	lr, #51320	@ tmp259,
	str	ip, [r4, lr]	@ prephitmp.6843, <variable>.TotalPmvNum
	ldr	r1, [r3, #568]	@ prephitmp.6839, <variable>.stChanOption.s32MaxWidth
	cmp	r7, r1	@ ImageWidth, prephitmp.6839
	bhi	.L2508	@,
	ldr	r2, [r3, #572]	@ prephitmp.6993, <variable>.stChanOption.s32MaxHeight
	cmp	r8, r2	@ ImageHeight, prephitmp.6993
	bhi	.L2508	@,
	mov	sl, #26624	@ tmp261,
	ldr	r9, [r3, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	sl, [r4, sl]	@ <variable>.DPB.size, <variable>.DPB.size
	cmp	r9, sl	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.DPB.size
	bcc	.L2590	@,
	ldr	r0, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	cmp	r0, #0	@ <variable>.stChanOption.s32SupportBFrame,
	add	r0, r4, #51200	@, pH264Ctx,
	moveq	ip, #1	@ tmp267,
	streq	ip, [r4, lr]	@ tmp267, <variable>.TotalPmvNum
	ldreq	r2, [r3, #572]	@ prephitmp.6993, <variable>.stChanOption.s32MaxHeight
	ldreq	r1, [r3, #568]	@ prephitmp.6839, <variable>.stChanOption.s32MaxWidth
	add	r3, r0, #116	@,,
	mov	r0, r4	@, pH264Ctx
	str	ip, [sp, #0]	@ prephitmp.6843,
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	beq	.L2507	@,
	movw	lr, #13560	@ tmp270,
	add	r1, lr, #4	@ tmp272, tmp272,
	mov	r5, #0	@ tmp271,
	str	r5, [r4, lr]	@ tmp271, <variable>.CurWidthInMb
	str	r5, [r4, r1]	@ tmp271, <variable>.CurHeightInMb
	mov	r0, r5	@, tmp271
	movw	r1, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp271
	bl	ClearAll	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2507:
	movw	ip, #13560	@ tmp275,
	movw	r3, #13564	@ tmp277,
	mov	r7, r7, lsr #4	@ tmp276, ImageWidth,
	mov	r8, r8, lsr #4	@ tmp278, ImageHeight,
	str	r7, [r4, ip]	@ tmp276, <variable>.CurWidthInMb
	str	r8, [r4, r3]	@ tmp278, <variable>.CurHeightInMb
	b	.L2502	@
.L2575:
	movw	ip, #52840	@ tmp209,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r0, #1]	@ <variable>.is_used, <variable>.is_used
	ldr	r3, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r3, #4]	@ <variable>.is_used, <variable>.is_in_dpb
	b	.L2499	@
.L2512:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.6886,
	beq	.L2514	@,
	mov	r0, r8	@, D.36548
	movw	r1, #:lower16:.LC73	@,
	movw	r2, #6374	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2525:
	movw	r7, #17568	@ tmp369,
	rsb	lr, r8, r6	@ tmp370, prephitmp.6824, prephitmp.6933
	ldr	r0, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	add	r3, lr, sl	@ tmp371, tmp370, MaxFrameNum
	cmp	r0, r3	@ <variable>.CurrSPS.dpb_size_plus1, tmp371
	bcs	.L2523	@,
	movw	r1, #20680	@ tmp373,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L2591	@,
	cmp	r6, #0	@ prephitmp.6933,
	movw	ip, #20696	@ tmp384,
	subeq	r6, sl, #1	@ iftmp.638, MaxFrameNum,
	subne	r6, r6, #1	@ iftmp.638, prephitmp.6933,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, ip]	@ iftmp.638, <variable>.CurrSlice.prev_frame_num
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.6920,
	beq	.L2523	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC73	@,
	movw	r2, #6488	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2578:
	movw	r3, #52892	@ tmp285,
	ldr	lr, [r4, r3]	@ <variable>.DSD_NeedClearQue, <variable>.DSD_NeedClearQue
	cmp	lr, #1	@ <variable>.DSD_NeedClearQue,
	bne	.L2514	@,
	b	.L2513	@
.L2498:
	movw	r1, #:lower16:.LC102	@,
	ldr	r2, .L2592	@,
	movt	r1, #:upper16:.LC102	@,
	movw	r3, #6248	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L2499	@
.L2534:
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	ldreq	r6, [r4, r8]	@ prephitmp.6933, <variable>.CurrSlice.frame_num
	beq	.L2522	@,
	mov	r0, r7	@, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	movw	r1, #:lower16:.LC111	@,
	movw	r2, #6525	@,
	movt	r1, #:upper16:.LC111	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2536:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC111	@,
	movw	r2, #6539	@,
	movt	r1, #:upper16:.LC111	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2585:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC112	@,
	movw	r2, #6559	@,
	movt	r1, #:upper16:.LC112	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2579:
	mov	r3, r7	@, ret.6888
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC103	@,
	movw	r2, #6383	@,
	movt	r1, #:upper16:.LC103	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2587:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC115	@,
	ldr	r2, .L2592	@,
	movt	r1, #:upper16:.LC115	@,
	movw	r3, #6643	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2580:
	movw	lr, #13564	@ tmp307,
	movw	r0, #13560	@ tmp305,
	str	r7, [r4, r0]	@ ret.6888, <variable>.CurWidthInMb
	movw	r1, #:lower16:.LC106	@,
	str	r7, [r4, lr]	@ ret.6888, <variable>.CurHeightInMb
	movt	r1, #:upper16:.LC106	@,
	mov	r0, r7	@, ret.6888
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, ret.6888
	bl	ClearAll	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2591:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r1, #20700	@ tmp377,
	sub	r2, r1, #4	@ tmp378, tmp378,
	ldr	lr, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	mov	r0, #0	@,
	ldr	r3, [r4, r2]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r1, #:lower16:.LC108	@,
	movw	r2, #6477	@,
	movt	r1, #:upper16:.LC108	@,
	rsb	r3, r3, lr	@, <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.frame_num
	str	ip, [sp, #0]	@ <variable>.CurrSPS.dpb_size_plus1,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2583:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r1, #20700	@ tmp359,
	sub	r2, r1, #4	@ tmp360, tmp360,
	ldr	lr, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	ip, [r4, r7]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	mov	r0, #0	@,
	ldr	r3, [r4, r2]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r1, #:lower16:.LC108	@,
	movw	r2, #6451	@,
	movt	r1, #:upper16:.LC108	@,
	rsb	r3, r3, lr	@, <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.frame_num
	str	ip, [sp, #0]	@ <variable>.CurrSPS.dpb_size_plus1,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2589:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC103	@,
	movw	r2, #6289	@,
	movt	r1, #:upper16:.LC103	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2508:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2590:
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36573,
	b	.L2505	@
.L2593:
	.align	2
.L2592:
	.word	.LANCHOR0+252
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #13504	@ D.32824, pH264Ctx,
	add	r6, r6, #24	@ D.32824, D.32824,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ SE_TRACEstring, SE_TRACEstring
	mov	r1, #32	@,
	mov	r0, r6	@, D.32824
	bl	BsShow	@
	mov	r4, r0	@ D.32825,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r5, r0	@ zeros,
	bhi	.L2595	@,
	mov	r5, r0, asl #1	@ tmp148, zeros,
	mov	r0, r6	@, D.32824
	add	r5, r5, #1	@ NumBits, tmp148,
	rsb	r3, r5, #32	@ tmp149, NumBits,
	mov	r4, r4, lsr r3	@ D.32832, D.32825,
	mov	r1, r5	@, NumBits
	tst	r4, #1	@ D.32832,
	mov	r4, r4, lsr #1	@ tmp, D.32832,
	rsbne	r4, r4, #0	@ INFO, tmp
	bl	BsSkip	@
.L2598:
	ldr	ip, [r7, #368]	@ D.32856, <variable>.pCurrNal
	mov	r2, r8	@, SE_TRACEstring
	mov	r3, r4	@, INFO
	mov	r0, #21	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, lr, r5	@ tmp156, <variable>.nal_bitoffset, NumBits
	str	r5, [ip, #64]	@ tmp156, <variable>.nal_bitoffset
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2595:
	cmp	r0, #31	@ zeros,
	bls	.L2602	@,
	movw	r1, #52780	@ tmp153,
	mov	r2, #1	@ tmp154,
	mvn	r4, #-2147483648	@ INFO,
	mov	r5, #32	@ NumBits,
	str	r2, [r7, r1]	@ tmp154, <variable>.SeErrFlg
	b	.L2598	@
.L2602:
	mov	r1, r5	@, zeros
	mov	r0, r6	@, D.32824
	bl	BsSkip	@
	mov	r1, r5	@, zeros
	mov	r0, r6	@, D.32824
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r4, r0	@ INFO,
	mov	r0, r6	@, D.32824
	bl	BsGet	@
	tst	r0, #1	@,
	mov	r0, r5, asl #1	@ tmp152, zeros,
	rsbne	r4, r4, #0	@ INFO, INFO
	add	r5, r0, #1	@ NumBits, tmp152,
	b	.L2598	@
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
	ble	.L2610	@,
	ldr	fp, .L2640	@ tmp175,
	cmp	r4, #16	@ sizeOfScalingList,
	sub	r0, r4, #1	@ tmp180, sizeOfScalingList,
	mov	r9, #255	@ tmp179,
	and	r3, r0, #1	@, tmp180,
	str	r3, [sp, #4]	@, %sfp
	ldrneb	r6, [fp, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	beq	.L2637	@,
.L2625:
	ldr	r0, [sp, #0]	@, %sfp
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	bl	se_v	@
	ldr	ip, [sp, #48]	@, UseDefaultScalingMatrix
	add	r0, r0, #264	@ tmp196,,
	mov	r2, r0, asr #31	@ tmp197, tmp196,
	mov	sl, r2, lsr #24	@ tmp198, tmp197,
	and	r2, r6, #252	@ tmp205, scanj,
	add	r1, r0, sl	@ tmp199, tmp196, tmp198
	add	r2, r7, r2	@ D.38410, scalingList, tmp205
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
	mov	r1, sl, asl #3	@ D.38412, tmp207,
	str	r8, [r5, r6, asl #2]	@ tmpscale,* scalingList_Org
	ldr	r0, [r2, #0]	@ tmp214,* D.38410
	and	ip, r8, #255	@ tmp209, tmpscale,
	mov	r6, #1	@ j,
	cmp	r4, r6	@ sizeOfScalingList, j
	bic	r0, r0, r9, asl r1	@ tmp215, tmp214, tmp179,
	mov	sl, r8	@ lastScale, tmpscale
	orr	r1, r0, ip, asl r1	@, tmp216, tmp215, tmp209,
	str	r1, [r2, #0]	@ tmp216,* D.38410
	ble	.L2610	@,
	ldr	r2, [sp, #4]	@, %sfp
	cmp	r2, #0	@,
	beq	.L2636	@,
	cmp	r4, #16	@ sizeOfScalingList,
	ldreq	r2, .L2640+4	@,
	ldrneb	sl, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	ldreqb	sl, [r2, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	cmp	r3, #0	@ nextScale,
	bne	.L2630	@,
.L2616:
	mov	r3, #0	@ nextScale,
.L2631:
	and	r2, sl, #252	@ tmp232, scanj,
	and	r1, sl, #3	@ tmp234, scanj,
	add	r2, r7, r2	@ D.38410, scalingList, tmp232
	str	r8, [r5, sl, asl #2]	@ tmpscale,* scalingList_Org
	mov	r1, r1, asl #3	@ D.38412, tmp234,
	add	r6, r6, #1	@ j, j,
	ldr	lr, [r2, #0]	@ tmp241,* D.38410
	and	ip, r8, #255	@ tmp236, tmpscale,
	cmp	r4, r6	@ sizeOfScalingList, j
	mov	sl, r8	@ lastScale, tmpscale
	bic	r0, lr, r9, asl r1	@ tmp242, tmp241, tmp179,
	orr	lr, r0, ip, asl r1	@, tmp243, tmp242, tmp236,
	str	lr, [r2, #0]	@ tmp243,* D.38410
	ble	.L2610	@,
.L2636:
	mov	r8, r5	@ scalingList_Org, scalingList_Org
.L2609:
	cmp	r4, #16	@ sizeOfScalingList,
	ldreq	r2, .L2640+4	@,
	ldrneb	r5, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	ldreqb	r5, [r2, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	cmp	r3, #0	@ nextScale,
	bne	.L2638	@,
.L2607:
	mov	r3, #0	@ nextScale,
.L2608:
	and	ip, r5, #3	@ tmp165, scanj,
	mov	lr, r5, lsr #2	@ tmp163, scanj,
	str	sl, [r8, r5, asl #2]	@ tmpscale,* scalingList_Org
	cmp	r4, #16	@ sizeOfScalingList,
	ldr	r2, [r7, lr, asl #2]	@ tmp172,* scalingList
	mov	r1, ip, asl #3	@ D.38412, tmp165,
	and	r0, sl, #255	@ tmp166, tmpscale,
	add	r6, r6, #1	@ tmp183, j,
	bic	ip, r2, r9, asl r1	@ tmp171, tmp172, tmp179,
	orr	r2, ip, r0, asl r1	@, tmp173, tmp171, tmp166,
	ldrneb	r5, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	str	r2, [r7, lr, asl #2]	@ tmp173,* scalingList
	beq	.L2639	@,
.L2632:
	cmp	r3, #0	@ nextScale,
	bne	.L2633	@,
.L2620:
	mov	r3, #0	@ nextScale,
.L2634:
	mov	r2, r5, lsr #2	@ tmp258, scanj,
	and	r1, r5, #3	@ tmp261, scanj,
	str	sl, [r8, r5, asl #2]	@ tmpscale,* scalingList_Org
	add	r6, r6, #1	@ j, tmp183,
	ldr	lr, [r7, r2, asl #2]	@ tmp268,* scalingList
	mov	r1, r1, asl #3	@ D.38412, tmp261,
	and	ip, sl, #255	@ tmp263, tmpscale,
	cmp	r4, r6	@ sizeOfScalingList, j
	bic	r0, lr, r9, asl r1	@ tmp269, tmp268, tmp179,
	orr	lr, r0, ip, asl r1	@, tmp270, tmp269, tmp263,
	str	lr, [r7, r2, asl #2]	@ tmp270,* scalingList
	bgt	.L2609	@,
.L2610:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2633:
	ldr	r0, [sp, #0]	@, %sfp
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
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
	beq	.L2620	@,
	mov	sl, r3	@ tmpscale, nextScale
	b	.L2634	@
.L2638:
	ldr	r0, [sp, #0]	@, %sfp
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
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
	bne	.L2608	@,
	b	.L2607	@
.L2639:
	ldr	r0, .L2640+4	@,
	ldrb	r5, [r0, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2632	@
.L2630:
	ldr	r0, [sp, #0]	@, %sfp
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
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
	beq	.L2616	@,
	mov	r8, r3	@ tmpscale, nextScale
	b	.L2631	@
.L2637:
	ldr	sl, .L2640+4	@,
	ldrb	r6, [sl, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2625	@
.L2641:
	.align	2
.L2640:
	.word	.LANCHOR0+276
	.word	.LANCHOR0+260
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #13504	@ D.32790, pH264Ctx,
	add	r6, r6, #24	@ D.32790, D.32790,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ SE_TRACEstring, SE_TRACEstring
	mov	r1, #32	@,
	mov	r0, r6	@, D.32790
	bl	BsShow	@
	mov	r4, r0	@ D.32791,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r5, r0	@ zeros,
	bls	.L2647	@,
	cmp	r0, #31	@ zeros,
	bls	.L2648	@,
	movw	r1, #52780	@ tmp150,
	mvn	r4, #0	@ INFO,
	mov	r5, #32	@ NumBits,
	mov	r2, #1	@ tmp151,
	str	r2, [r7, r1]	@ tmp151, <variable>.SeErrFlg
.L2644:
	ldr	ip, [r7, #368]	@ D.32809, <variable>.pCurrNal
	mov	r2, r8	@, SE_TRACEstring
	mov	r3, r4	@, INFO
	mov	r0, #21	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, lr, r5	@ tmp153, <variable>.nal_bitoffset, NumBits
	str	r5, [ip, #64]	@ tmp153, <variable>.nal_bitoffset
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2647:
	mov	r5, r0, asl #1	@ tmp146, zeros,
	mov	r0, r6	@, D.32790
	add	r5, r5, #1	@ NumBits, tmp146,
	rsb	r3, r5, #32	@ tmp147, NumBits,
	mov	r4, r4, lsr r3	@ tmp148, D.32791,
	mov	r1, r5	@, NumBits
	sub	r4, r4, #1	@ INFO, tmp148,
	bl	BsSkip	@
	b	.L2644	@
.L2648:
	add	r4, r0, #1	@ D.32805, zeros,
	mov	r1, r0	@, zeros
	mov	r0, r6	@, D.32790
	bl	BsSkip	@
	mov	r1, r4	@, D.32805
	mov	r0, r6	@, D.32790
	bl	BsShow	@
	mov	r1, r4	@, D.32805
	sub	r4, r0, #1	@ INFO,,
	mov	r0, r6	@, D.32790
	bl	BsSkip	@
	mov	r0, r5, asl #1	@ tmp149, zeros,
	add	r5, r0, #1	@ NumBits, tmp149,
	b	.L2644	@
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
	movw	r1, #:lower16:.LC117	@,
	movt	r1, #:upper16:.LC117	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	ip, #26408	@ tmp156,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC118	@,
	movt	r2, #:upper16:.LC118	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.frame_packing_arrangement_id
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26385	@ tmp158,
	uxtb	r0, r0	@ D.39654,
	strb	r0, [r4, r3]	@ D.39654, <variable>.FramePackSEI.frame_packing_arrangement_cancel_flag
	cmp	r0, #0	@ D.39654,
	beq	.L2653	@,
.L2650:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC134	@,
	movt	r2, #:upper16:.LC134	@,
	bl	u_v	@
	movw	r3, #26384	@ tmp208,
	movw	r1, #26386	@ tmp206,
	mov	r2, #1	@ tmp209,
	strb	r2, [r4, r3]	@ tmp209, <variable>.FramePackSEI.frame_packing_dec_ok
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame_packing_arrangement_extension_flag
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2653:
	mov	r1, #7	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC119	@,
	movt	r2, #:upper16:.LC119	@,
	bl	u_v	@
	movw	r6, #26400	@ tmp161,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC120	@,
	movt	r2, #:upper16:.LC120	@,
	movw	r5, #26387	@ tmp163,
	str	r0, [r4, r6]	@, <variable>.FramePackSEI.frame_packing_arrangement_type
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC121	@,
	movt	r2, #:upper16:.LC121	@,
	strb	r0, [r4, r5]	@, <variable>.FramePackSEI.quincunx_sampling_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26404	@ tmp166,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC122	@,
	movt	r2, #:upper16:.LC122	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.content_interpretation_type
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26388	@ tmp168,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC123	@,
	movt	r2, #:upper16:.LC123	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.spatial_flipping_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26389	@ tmp171,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC124	@,
	movt	r2, #:upper16:.LC124	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.frame0_flipped_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26390	@ tmp174,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC125	@,
	movt	r2, #:upper16:.LC125	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.field_views_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26391	@ tmp177,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC126	@,
	movt	r2, #:upper16:.LC126	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.current_frame_is_frame0_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26392	@ tmp180,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC127	@,
	movt	r2, #:upper16:.LC127	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame0_self_contained_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldrsb	r2, [r4, r5]	@ <variable>.FramePackSEI.quincunx_sampling_flag, <variable>.FramePackSEI.quincunx_sampling_flag
	movw	r1, #26393	@ tmp183,
	cmp	r2, #0	@ <variable>.FramePackSEI.quincunx_sampling_flag,
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame1_self_contained_flag
	bne	.L2651	@,
	ldr	lr, [r4, r6]	@ <variable>.FramePackSEI.frame_packing_arrangement_type, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	lr, #5	@ <variable>.FramePackSEI.frame_packing_arrangement_type,
	beq	.L2651	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC128	@,
	movt	r2, #:upper16:.LC128	@,
	bl	u_v	@
	movw	r3, #26394	@ tmp190,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC129	@,
	movt	r2, #:upper16:.LC129	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame0_grid_position_x
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26395	@ tmp193,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC130	@,
	movt	r2, #:upper16:.LC130	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.frame0_grid_position_y
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26396	@ tmp196,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC131	@,
	movt	r2, #:upper16:.LC131	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame1_grid_position_x
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r1, #26397	@ tmp199,
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame1_grid_position_y
.L2651:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC132	@,
	movt	r2, #:upper16:.LC132	@,
	bl	u_v	@
	movw	ip, #26412	@ tmp202,
	movw	r1, #:lower16:.LC133	@,
	movt	r1, #:upper16:.LC133	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.frame_packing_arrangement_reserved_byte
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r2, #26416	@ tmp204,
	str	r0, [r4, r2]	@, <variable>.FramePackSEI.frame_packing_arrangement_repetition_period
	b	.L2650	@
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
	add	r8, r0, #13504	@ D.39898, pH264Ctx,
	ldr	r2, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r9, sp, #48	@ tmp1035,,
	mov	r0, #0	@ tmp250,
	add	r8, r8, #24	@ D.39898, D.39898,
	mov	sl, r0	@ payloadType, tmp250
	movw	r6, #13552	@ tmp1126,
	movw	r5, #13544	@ tmp1127,
	strb	r0, [r9, #-1]!	@ tmp250, byte_tmp
	mov	r3, #32	@ tmp253,
	str	r3, [r2, #24]	@ tmp253, <variable>.bitsoffset
.L2658:
	mov	r1, r9	@, tmp1035
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r7, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r5]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r7, #8	@ tmp257, <variable>.BS.TotalPos,
	ldrb	r7, [sp, #47]	@ zero_extendqisi2	@ byte_tmp.759, byte_tmp
	cmp	ip, r1, asl #3	@ tmp257, <variable>.BS.BsLen,
	mov	fp, r0	@ ret,
	ble	.L3153	@,
.L2657:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39903,
.L2660:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3153:
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret,
	add	sl, sl, r7	@ payloadType, payloadType, byte_tmp.759
	ble	.L2657	@,
	ldrb	fp, [sp, #47]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	fp, #255	@ byte_tmp,
	beq	.L2658	@,
	mov	r6, #0	@,
	movw	r7, #13544	@ tmp1118,
	str	r6, [sp, #36]	@, %sfp
	movw	r6, #13552	@ tmp1117,
	movw	r5, #:lower16:g_event_report	@,
	movt	r5, #:upper16:g_event_report	@,
	str	r5, [sp, #28]	@, %sfp
.L2839:
	mov	r5, #0	@ payloadSize,
.L2664:
	mov	r1, r9	@, tmp1035
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldrb	r3, [sp, #47]	@ zero_extendqisi2	@ byte_tmp.7260, byte_tmp
	add	r2, r1, #8	@ tmp266, <variable>.BS.TotalPos,
	add	r5, r5, r3	@ payloadSize, payloadSize, byte_tmp.7260
	mov	fp, r0	@ ret.7259,
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	cmp	r2, r0, asl #3	@ tmp266, <variable>.BS.BsLen,
	ble	.L3154	@,
.L2663:
	mov	r3, #1	@ prephitmp.7159,
	cmp	r5, #409600	@ payloadSize,
	orrgt	r3, r3, #1	@,, tmp276, prephitmp.7159
	cmp	r3, #0	@ tmp276,
	bne	.L3155	@,
.L2666:
	ldr	ip, [r4, #368]	@ temp.7267, <variable>.pCurrNal
	ldr	r3, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	ldr	r2, [ip, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	cmp	r3, #2	@ <variable>.nal_segment,
	ldreq	ip, [ip, #52]	@ <variable>.bitsoffset, <variable>.bitsoffset
	addeq	r2, ip, r2	@ tmp279, <variable>.bitsoffset, <variable>.bitsoffset
	moveq	r2, r2, lsr #3	@ TotalBitOffset, tmp279,
	cmp	sl, #45	@ payloadType,
	ldrls	pc, [pc, sl, asl #2]	@ payloadType
	b	.L2669	@
.L2693:
	.word	.L2670
	.word	.L2671
	.word	.L2672
	.word	.L2673
	.word	.L2674
	.word	.L2675
	.word	.L2676
	.word	.L2677
	.word	.L2678
	.word	.L2679
	.word	.L2680
	.word	.L2681
	.word	.L2682
	.word	.L2683
	.word	.L2684
	.word	.L2685
	.word	.L2686
	.word	.L2687
	.word	.L2688
	.word	.L2689
	.word	.L2690
	.word	.L2691
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2669
	.word	.L2692
.L3154:
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret.7259,
	ble	.L2663	@,
	ldrb	lr, [sp, #47]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	lr, #255	@ byte_tmp,
	beq	.L2664	@,
	mov	r3, #0	@ prephitmp.7159,
	cmp	r5, #409600	@ payloadSize,
	orrgt	r3, r3, #1	@,, tmp276, prephitmp.7159
	cmp	r3, #0	@ tmp276,
	beq	.L2666	@,
.L3155:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39903,
	b	.L2660	@
.L2692:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	ldr	sl, [r4, r6]	@ bitpos.7501, <variable>.BS.TotalPos
	bl	H264_DecFramePackingSEI	@
	ldr	r3, [r4, r6]	@ prephitmp.7163, <variable>.BS.TotalPos
	mov	r2, r5, asl #3	@ temp.7503, payloadSize,
	rsb	sl, sl, r3	@ bitpos.7502, bitpos.7501, prephitmp.7163
	cmp	sl, r2	@ bitpos.7502, temp.7503
	bge	.L2819	@,
	rsb	r1, sl, r2	@, bitpos.7502, temp.7503
	str	r1, [sp, #32]	@, %sfp
	cmp	r1, #0	@,
	add	r0, r1, #7	@ tmp962,,
	movge	r0, r1	@ temp.7600,
	mov	r2, r0, asr #3	@, temp.7600,
	str	r2, [sp, #24]	@, %sfp
	cmp	r2, #0	@,
	ldrle	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	movle	r2, r2, asl #3	@ prephitmp.7165, <variable>.BS.BsLen,
	ble	.L2821	@,
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp968, prephitmp.7163,
	mov	r2, r2, asl #3	@ prephitmp.7165, <variable>.BS.BsLen,
	cmp	ip, r2	@ tmp968, prephitmp.7165
	bgt	.L2821	@,
	ldr	fp, [sp, #24]	@, %sfp
	tst	fp, #1	@,
	mov	fp, #0	@ i.7506,
	beq	.L3156	@,
.L2822:
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	bl	BsSkip	@
	ldr	r3, [sp, #24]	@, %sfp
	add	sl, fp, #1	@ tmp1229, i.7506,
	mov	r0, r8	@, D.39898
	cmp	sl, r3	@ tmp1229,
	add	fp, sl, #1	@ i.7506, tmp1229,
	mov	r1, #8	@,
	bge	.L3073	@,
	ldr	sl, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.7163, <variable>.BS.TotalPos
	mov	r2, sl, asl #3	@ prephitmp.7165, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp972, prephitmp.7163,
	cmp	lr, r2	@ tmp972, prephitmp.7165
	bgt	.L2821	@,
	bl	BsSkip	@
.L3149:
	ldr	r1, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.7163, <variable>.BS.TotalPos
	mov	r2, r1, asl #3	@ prephitmp.7165, <variable>.BS.BsLen,
	add	r0, r3, #8	@ tmp1561, prephitmp.7163,
	cmp	r0, r2	@ tmp1561, prephitmp.7165
	ble	.L2822	@,
.L2821:
	ldr	sl, [sp, #32]	@, %sfp
	mov	ip, sl, asr #31	@ tmp976,,
	mov	r1, ip, lsr #29	@ tmp977, tmp976,
	add	r0, sl, r1	@ tmp978,, tmp977
	and	lr, r0, #7	@ tmp979, tmp978,
	rsb	r1, r1, lr	@ tmp980, tmp977, tmp979
	add	ip, r3, r1	@ tmp981, prephitmp.7163, tmp980
	cmp	r2, ip	@ prephitmp.7165, tmp981
	bge	.L3157	@,
.L2819:
	mov	r1, r5	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7510,
	blt	.L2824	@,
.L3034:
	movw	r0, #51344	@ tmp1005,
	ldr	r3, [r4, r0]	@ prephitmp.7161, <variable>.TotalUsrDatNum
.L2696:
	cmp	r3, #3	@ prephitmp.7161,
	bhi	.L3158	@,
.L2830:
	mov	sl, #0	@ payloadType,
.L2837:
	mov	r1, r9	@, tmp1035
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r5, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r5, #8	@ tmp1029, <variable>.BS.TotalPos,
	ldrb	r5, [sp, #47]	@ zero_extendqisi2	@ byte_tmp.7526, byte_tmp
	cmp	ip, r1, asl #3	@ tmp1029, <variable>.BS.BsLen,
	mov	fp, r0	@ ret.7525,
	ble	.L3159	@,
.L2836:
	mov	r0, #0	@ D.39903,
	b	.L2660	@
.L2691:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC162	@,
	movt	r1, #:upper16:.LC162	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7494,
	blt	.L3160	@,
.L2814:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp945, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp945, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7500,
	bne	.L2817	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7500,
	cmp	r5, fp	@ payloadSize, i.7500
	bgt	.L3147	@,
	b	.L3034	@
.L2817:
	add	sl, fp, #1	@ tmp1225, i.7500,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7500, tmp1225,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1225
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp952, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp952, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3147:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1550, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1550, <variable>.BS.BsLen,
	ble	.L2817	@,
	b	.L3034	@
.L2687:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC158	@,
	movt	r1, #:upper16:.LC158	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7461,
	blt	.L3161	@,
.L2794:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp865, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp865, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7468,
	bne	.L2797	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7468,
	cmp	r5, fp	@ payloadSize, i.7468
	bgt	.L3139	@,
	b	.L3034	@
.L2797:
	add	sl, fp, #1	@ tmp1209, i.7468,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7468, tmp1209,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1209
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp872, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp872, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3139:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1502, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1502, <variable>.BS.BsLen,
	ble	.L2797	@,
	b	.L3034	@
.L2689:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC160	@,
	movt	r1, #:upper16:.LC160	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7478,
	blt	.L3162	@,
.L2804:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp905, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp905, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7484,
	bne	.L2807	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7484,
	cmp	r5, fp	@ payloadSize, i.7484
	bgt	.L3143	@,
	b	.L3034	@
.L2807:
	add	sl, fp, #1	@ tmp1217, i.7484,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7484, tmp1217,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1217
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp912, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp912, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3143:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1526, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1526, <variable>.BS.BsLen,
	ble	.L2807	@,
	b	.L3034	@
.L2685:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC156	@,
	movt	r1, #:upper16:.LC156	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7443,
	blt	.L3163	@,
.L2784:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp825, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp825, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7450,
	bne	.L2787	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7450,
	cmp	r5, fp	@ payloadSize, i.7450
	bgt	.L3135	@,
	b	.L3034	@
.L2787:
	add	sl, fp, #1	@ tmp1201, i.7450,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7450, tmp1201,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1201
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp832, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp832, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3135:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1478, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1478, <variable>.BS.BsLen,
	ble	.L2787	@,
	b	.L3034	@
.L2690:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC161	@,
	movt	r1, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7486,
	blt	.L3164	@,
.L2809:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp925, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp925, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7492,
	bne	.L2812	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7492,
	cmp	r5, fp	@ payloadSize, i.7492
	bgt	.L3145	@,
	b	.L3034	@
.L2812:
	add	sl, fp, #1	@ tmp1221, i.7492,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7492, tmp1221,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1221
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp932, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp932, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3145:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1538, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1538, <variable>.BS.BsLen,
	ble	.L2812	@,
	b	.L3034	@
.L2686:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC157	@,
	movt	r1, #:upper16:.LC157	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7452,
	blt	.L3165	@,
.L2789:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp845, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp845, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7459,
	bne	.L2792	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7459,
	cmp	r5, fp	@ payloadSize, i.7459
	bgt	.L3137	@,
	b	.L3034	@
.L2792:
	add	sl, fp, #1	@ tmp1205, i.7459,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7459, tmp1205,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1205
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp852, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp852, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3137:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1490, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1490, <variable>.BS.BsLen,
	ble	.L2792	@,
	b	.L3034	@
.L2688:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC159	@,
	movt	r1, #:upper16:.LC159	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7470,
	blt	.L3166	@,
.L2799:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp885, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp885, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7476,
	bne	.L2802	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7476,
	cmp	r5, fp	@ payloadSize, i.7476
	bgt	.L3141	@,
	b	.L3034	@
.L2802:
	add	sl, fp, #1	@ tmp1213, i.7476,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7476, tmp1213,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1213
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp892, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp892, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3141:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1514, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1514, <variable>.BS.BsLen,
	ble	.L2802	@,
	b	.L3034	@
.L2684:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC155	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7434,
	blt	.L3167	@,
.L2779:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp805, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp805, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7441,
	bne	.L2782	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7441,
	cmp	r5, fp	@ payloadSize, i.7441
	bgt	.L3133	@,
	b	.L3034	@
.L2782:
	add	sl, fp, #1	@ tmp1197, i.7441,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7441, tmp1197,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1197
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp812, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp812, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3133:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1466, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1466, <variable>.BS.BsLen,
	ble	.L2782	@,
	b	.L3034	@
.L2683:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC154	@,
	movt	r1, #:upper16:.LC154	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7426,
	blt	.L3168	@,
.L2774:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp785, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp785, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7432,
	bne	.L2777	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7432,
	cmp	r5, fp	@ payloadSize, i.7432
	bgt	.L3131	@,
	b	.L3034	@
.L2777:
	add	sl, fp, #1	@ tmp1193, i.7432,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7432, tmp1193,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1193
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp792, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp792, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3131:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1454, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1454, <variable>.BS.BsLen,
	ble	.L2777	@,
	b	.L3034	@
.L2675:
	ldr	sl, [sp, #36]	@, %sfp
	cmp	sl, #0	@,
	bne	.L2674	@,
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #20	@,
	movt	r1, #:upper16:.LC142	@,
	mov	r3, r5	@, payloadSize
	movw	fp, #51344	@ tmp374,
	bl	dprint_vfmw	@
	ldr	sl, [r4, fp]	@ prephitmp.7167, <variable>.TotalUsrDatNum
	cmp	sl, #3	@ prephitmp.7167,
	bhi	.L3169	@,
.L2718:
	movw	lr, #52840	@ tmp401,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r1, #51344	@ tmp411,
	ldr	r3, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	ip, sl, #12800	@ tmp403, prephitmp.7167,
	add	sl, ip, #36	@ tmp403, tmp403,
	add	r2, r3, #12800	@ tmp409, <variable>.TotalUsrDatNum,
	add	r1, r2, #36	@ tmp409, tmp409,
	add	sl, r4, sl, asl #2	@, tmp407, pH264Ctx, tmp403,
	add	ip, r4, r1, asl #2	@, tmp415, pH264Ctx, tmp409,
	str	r0, [sl, #4]	@, <variable>.pUsrDatArray
	ldr	r1, [ip, #4]	@ prephitmp.7173, <variable>.pUsrDatArray
	cmp	r1, #0	@ prephitmp.7173,
	beq	.L2719	@,
	ldr	ip, [r4, #368]	@ temp.7304, <variable>.pCurrNal
	cmp	r5, #1024	@ payloadSize,
	movlt	fp, r5	@ D.39972, payloadSize
	movge	fp, #1024	@ D.39972,
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ segment_idx, <variable>.nal_used_segment
	ldr	r2, [ip, #68]	@ temp.7558, <variable>.nal_segment
	cmp	r3, r2	@ segment_idx, temp.7558
	movcs	r0, #0	@ prephitmp.7169,
	movcs	r3, r0	@ lenth_not_parse.7308, prephitmp.7169
	bcs	.L2721	@,
	rsb	sl, r3, r3, asl #3	@, tmp419, segment_idx, segment_idx,
	add	r0, r3, #1	@ segment_idx, segment_idx,
	mvn	r3, r3	@ tmp1158, segment_idx
	cmp	r0, r2	@ segment_idx, temp.7558
	add	lr, ip, sl, asl #2	@, tmp421, temp.7304, tmp419,
	add	sl, r3, r2	@ tmp1157, tmp1158, temp.7558
	add	lr, lr, #8	@ tmp422, tmp421,
	and	ip, sl, #1	@, tmp1157,
	str	ip, [sp, #24]	@, %sfp
	add	ip, lr, #32	@ ivtmp.7216, tmp422,
	ldr	sl, [lr, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r3, sl, #7	@ tmp423, <variable>.bitsoffset,
	ldr	sl, [lr, #4]	@, <variable>.bitstream_length
	sub	r3, sl, r3, lsr #3	@ lenth_not_parse.7308,, tmp423,
	beq	.L3008	@,
	ldr	sl, [sp, #24]	@, %sfp
	cmp	sl, #0	@,
	beq	.L3088	@,
	ldr	ip, [ip, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r0, r0, #1	@ segment_idx, segment_idx,
	ldr	sl, [lr, #32]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r0, r2	@ segment_idx, temp.7558
	add	ip, ip, #7	@, <variable>.bitsoffset,
	str	ip, [sp, #24]	@, %sfp
	add	ip, lr, #60	@ ivtmp.7216, tmp422,
	ldr	lr, [sp, #24]	@, %sfp
	sub	sl, sl, lr, lsr #3	@ tmp1361, <variable>.bitstream_length,,
	add	r3, r3, sl	@ lenth_not_parse.7308, lenth_not_parse.7308, tmp1361
	beq	.L3008	@,
.L3088:
	str	r1, [sp, #12]	@ prephitmp.7173, %sfp
.L2722:
	ldr	r1, [ip, #12]	@, <variable>.bitsoffset
	mov	lr, ip	@ tmp1161, ivtmp.7216
	ldr	sl, [lr], #28	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r0, r0, #2	@ segment_idx, segment_idx,
	add	r1, r1, #7	@,,
	str	r1, [sp, #24]	@, %sfp
	ldr	r1, [ip, #28]	@, <variable>.bitstream_length
	cmp	r0, r2	@ segment_idx, temp.7558
	add	ip, ip, #56	@ ivtmp.7216, ivtmp.7216,
	str	r1, [sp, #32]	@, %sfp
	ldr	r1, [sp, #24]	@, %sfp
	ldr	lr, [lr, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	sub	sl, sl, r1, lsr #3	@ tmp1241, <variable>.bitstream_length,,
	add	lr, lr, #7	@ tmp1246, <variable>.bitsoffset,
	add	r1, r3, sl	@ lenth_not_parse.7308, lenth_not_parse.7308, tmp1241
	ldr	sl, [sp, #32]	@, %sfp
	sub	lr, sl, lr, lsr #3	@ tmp1249,, tmp1246,
	add	r3, r1, lr	@ lenth_not_parse.7308, lenth_not_parse.7308, tmp1249
	bne	.L2722	@,
	ldr	r1, [sp, #12]	@ prephitmp.7173, %sfp
.L3008:
	mov	r0, r3	@ prephitmp.7169, lenth_not_parse.7308
.L2721:
	ldr	ip, [sp, #36]	@, %sfp
	cmp	fp, r0	@ D.39972, prephitmp.7169
	movle	r3, fp	@ lenth_not_parse.7308, D.39972
	str	r3, [sp, #32]	@ lenth_not_parse.7308, %sfp
	sxtb	r2, ip	@ registered_flag,
	cmp	r2, #1	@ registered_flag,
	movne	sl, #0	@ prephitmp.7174,
	strne	sl, [sp, #24]	@ prephitmp.7174, %sfp
	beq	.L3170	@,
.L2730:
	ldr	ip, [sp, #32]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	rsb	r2, sl, ip	@, prephitmp.7174,
	bl	GetBytes	@
	subs	sl, r0, #0	@ ret.7328,
	ble	.L3171	@,
	ldr	r3, [sp, #24]	@, %sfp
	rsb	lr, r3, fp	@ tmp547,, D.39972
	cmp	sl, lr	@ ret.7328, tmp547
	blt	.L3172	@,
	movw	sl, #51344	@ tmp565,
	ldr	r1, [sp, #24]	@, %sfp
	ldr	ip, [r4, sl]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	fp, r5	@ D.39972, payloadSize
	rsb	sl, r1, r5	@ D.40024,, payloadSize
	add	r3, ip, #12800	@ tmp563, <variable>.TotalUsrDatNum,
	add	lr, r3, #36	@ tmp563, tmp563,
	add	r2, r4, lr, asl #2	@, tmp570, pH264Ctx, tmp563,
	ldr	r0, [r2, #4]	@ tmp567, <variable>.pUsrDatArray
	str	sl, [r0, #1048]	@ D.40024, <variable>.data_size
	bcc	.L3173	@,
.L2736:
	cmp	sl, #0	@ D.40024,
	ble	.L2734	@,
	ldr	r0, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r5, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	fp, r0, #8	@ tmp578, <variable>.BS.TotalPos,
	cmp	fp, r5, asl #3	@ tmp578, <variable>.BS.BsLen,
	bgt	.L2734	@,
	tst	sl, #1	@ D.40024,
	mov	fp, #0	@ i.7349,
	bne	.L2737	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7349,
	cmp	sl, fp	@ D.40024, i.7349
	bgt	.L3115	@,
	b	.L2734	@
.L2737:
	add	r5, fp, #1	@ tmp1156, i.7349,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, r5, #1	@ i.7349, tmp1156,
	bl	BsSkip	@
	cmp	sl, r5	@ D.40024, tmp1156
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L2734	@,
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp584, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp584, <variable>.BS.BsLen,
	bgt	.L2734	@,
	bl	BsSkip	@
.L3115:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp1353, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp1353, <variable>.BS.BsLen,
	ble	.L2737	@,
.L2734:
	movw	r2, #51344	@ tmp591,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	sl, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	lr, #1056	@ tmp598,
	add	ip, sl, #12800	@ tmp589, <variable>.TotalUsrDatNum,
	ldrd	sl, [r1, #56]	@ <variable>.pts, <variable>.pstExtraData,
	add	r5, ip, #36	@ tmp589, tmp589,
	add	r3, r4, r5, asl #2	@, tmp596, pH264Ctx, tmp589,
	ldr	r0, [r3, #4]	@ tmp593, <variable>.pUsrDatArray
	strd	sl, [r0, lr]	@ <variable>.pts, tmp593, tmp598
	mov	r0, #8	@ tmp610,
	ldr	r1, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	ip, r1, #12800	@ tmp601, <variable>.TotalUsrDatNum,
	movw	r1, #52800	@ tmp620,
	add	r5, ip, #36	@ tmp601, tmp601,
	add	r3, r4, r5, asl #2	@, tmp608, pH264Ctx, tmp601,
	ldr	lr, [r3, #4]	@ tmp605, <variable>.pUsrDatArray
	str	r0, [lr, #1036]	@ tmp610, <variable>.from
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r1, [r4, r1]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r5, ip, #12800	@ tmp611, <variable>.TotalUsrDatNum,
	add	r3, r5, #36	@ tmp611, tmp611,
	add	lr, r4, r3, asl #2	@, tmp618, pH264Ctx, tmp611,
	ldr	r0, [lr, #4]	@ tmp615, <variable>.pUsrDatArray
	str	r1, [r0, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	ip, [sp, #28]	@, %sfp
	ldr	r3, [ip, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L2739	@,
.L3152:
	ldr	r5, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r2, sp, #48	@ tmp636,,
	movw	r0, #52840	@ tmp634,
	mov	r1, #6	@,
	add	lr, r5, #12800	@ tmp624, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	add	ip, lr, #36	@ tmp624, tmp624,
	add	r5, r4, ip, asl #2	@, tmp630, pH264Ctx, tmp624,
	ldr	lr, [r5, #4]	@ tmp632, <variable>.pUsrDatArray
	str	lr, [r2, #-8]!	@ tmp632,
	blx	r3	@ g_event_report
.L2739:
	movw	r2, #51344	@ tmp638,
	ldr	r3, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, r3, #1	@ prephitmp.7161, <variable>.TotalUsrDatNum,
	str	r3, [r4, r2]	@ prephitmp.7161, <variable>.TotalUsrDatNum
	cmp	r3, #3	@ prephitmp.7161,
	bls	.L2830	@,
.L3158:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC163	@,
	movw	r5, #51348	@ tmp1007,
	movt	r1, #:upper16:.LC163	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r5]	@ temp.7605, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.7605,
	beq	.L2831	@,
	movw	lr, #52840	@ tmp1008,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp1011,
	str	r3, [r4, r5]	@ tmp1011, <variable>.pUsrDatArray
.L2831:
	movw	r5, #51352	@ tmp1012,
	ldr	r1, [r4, r5]	@ D.40130, <variable>.pUsrDatArray
	cmp	r1, #0	@ D.40130,
	beq	.L2832	@,
	movw	ip, #52840	@ tmp1013,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp1016,
	str	r1, [r4, r5]	@ tmp1016, <variable>.pUsrDatArray
.L2832:
	movw	r5, #51356	@ tmp1017,
	ldr	r1, [r4, r5]	@ temp.7606, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.7606,
	beq	.L2833	@,
	movw	r3, #52840	@ tmp1018,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r2, #0	@ tmp1021,
	str	r2, [r4, r5]	@ tmp1021, <variable>.pUsrDatArray
.L2833:
	movw	r5, #51360	@ tmp1022,
	ldr	r1, [r4, r5]	@ temp.7522, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.7522,
	beq	.L2719	@,
	movw	lr, #52840	@ tmp1023,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp1026,
	str	r0, [r4, r5]	@ tmp1026, <variable>.pUsrDatArray
	mvn	r0, #0	@ D.39903,
	b	.L2660	@
.L2679:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC150	@,
	movt	r1, #:upper16:.LC150	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7394,
	blt	.L3174	@,
.L2754:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, r2, #8	@ tmp708, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp708, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7401,
	bne	.L2757	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7401,
	cmp	r5, fp	@ payloadSize, i.7401
	bgt	.L3123	@,
	b	.L3034	@
.L2757:
	add	sl, fp, #1	@ tmp1177, i.7401,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7401, tmp1177,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1177
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp712, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp712, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3123:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1406, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1406, <variable>.BS.BsLen,
	ble	.L2757	@,
	b	.L3034	@
.L2678:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC149	@,
	movt	r1, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7385,
	blt	.L3175	@,
.L2749:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp685, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp685, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7392,
	bne	.L2752	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7392,
	cmp	r5, fp	@ payloadSize, i.7392
	bgt	.L3121	@,
	b	.L3034	@
.L2752:
	add	sl, fp, #1	@ tmp1173, i.7392,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7392, tmp1173,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1173
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp692, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp692, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3121:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1394, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1394, <variable>.BS.BsLen,
	ble	.L2752	@,
	b	.L3034	@
.L2671:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	ldr	sl, [r4, r6]	@ bitpos, <variable>.BS.TotalPos
	bl	H264_DecPicTimingSEI	@
	ldr	r3, [r4, r6]	@ prephitmp.7178, <variable>.BS.TotalPos
	mov	r2, r5, asl #3	@ D.39934, payloadSize,
	rsb	sl, sl, r3	@ bitpos.7274, bitpos, prephitmp.7178
	cmp	sl, r2	@ bitpos.7274, D.39934
	bge	.L2700	@,
	rsb	r2, sl, r2	@, bitpos.7274, D.39934
	str	r2, [sp, #32]	@, %sfp
	ldr	sl, [sp, #32]	@, %sfp
	add	r0, r2, #7	@ tmp306,,
	cmp	sl, #0	@,
	movge	r0, sl	@ D.39938,
	mov	r2, r0, asr #3	@, D.39938,
	str	r2, [sp, #24]	@, %sfp
	cmp	r2, #0	@,
	ldrle	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	movle	r2, r2, asl #3	@ prephitmp.7180, <variable>.BS.BsLen,
	ble	.L2702	@,
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp312, prephitmp.7178,
	mov	r2, lr, asl #3	@ prephitmp.7180, <variable>.BS.BsLen,
	cmp	r2, r1	@ prephitmp.7180, tmp312
	blt	.L2702	@,
	ldr	fp, [sp, #24]	@, %sfp
	tst	fp, #1	@,
	mov	fp, #0	@ i.7277,
	beq	.L3176	@,
.L2703:
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	bl	BsSkip	@
	ldr	r3, [sp, #24]	@, %sfp
	add	sl, fp, #1	@ tmp1140, i.7277,
	mov	r0, r8	@, D.39898
	cmp	sl, r3	@ tmp1140,
	add	fp, sl, #1	@ i.7277, tmp1140,
	mov	r1, #8	@,
	bge	.L3038	@,
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.7178, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.7180, <variable>.BS.BsLen,
	add	ip, r3, #8	@ tmp316, prephitmp.7178,
	cmp	ip, r2	@ tmp316, prephitmp.7180
	bgt	.L2702	@,
	bl	BsSkip	@
.L3109:
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.7178, <variable>.BS.TotalPos
	mov	r2, lr, asl #3	@ prephitmp.7180, <variable>.BS.BsLen,
	add	r0, r3, #8	@ tmp1314, prephitmp.7178,
	cmp	r0, r2	@ tmp1314, prephitmp.7180
	ble	.L2703	@,
.L2702:
	ldr	lr, [sp, #32]	@, %sfp
	mov	r1, lr, asr #31	@ tmp320,,
	mov	r1, r1, lsr #29	@ tmp321, tmp320,
	add	r0, lr, r1	@ tmp322,, tmp321
	and	ip, r0, #7	@ tmp323, tmp322,
	rsb	r1, r1, ip	@ tmp324, tmp321, tmp323
	add	lr, r3, r1	@ tmp325, prephitmp.7178, tmp324
	cmp	lr, r2	@ tmp325, prephitmp.7180
	ble	.L3177	@,
.L2700:
	mov	r1, r5	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7281,
	bge	.L3034	@,
	movw	r3, #10647	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r5, #51344	@ tmp330,
	str	ip, [sp, #0]	@ ret.7281,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r5]	@ prephitmp.7161, <variable>.TotalUsrDatNum
	b	.L2696	@
.L2681:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC152	@,
	movt	r1, #:upper16:.LC152	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7411,
	blt	.L3178	@,
.L2764:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp745, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp745, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7305,
	bne	.L2767	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7305,
	cmp	r5, fp	@ payloadSize, i.7305
	bgt	.L3127	@,
	b	.L3034	@
.L2767:
	add	sl, fp, #1	@ tmp1185, i.7305,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7305, tmp1185,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1185
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp752, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp752, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3127:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1430, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1430, <variable>.BS.BsLen,
	ble	.L2767	@,
	b	.L3034	@
.L2673:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC140	@,
	movt	r1, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7292,
	blt	.L3179	@,
.L2711:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, ip, #8	@ tmp357, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp357, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7298,
	bne	.L2714	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7298,
	cmp	fp, r5	@ i.7298, payloadSize
	blt	.L3113	@,
	b	.L3034	@
.L2714:
	add	sl, fp, #1	@ tmp1148, i.7298,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7298, tmp1148,
	bl	BsSkip	@
	cmp	sl, r5	@ tmp1148, payloadSize
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bge	.L3034	@,
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp364, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp364, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3113:
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, lr, #8	@ tmp1335, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1335, <variable>.BS.BsLen,
	ble	.L2714	@,
	b	.L3034	@
.L2677:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC148	@,
	movt	r1, #:upper16:.LC148	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7376,
	blt	.L3180	@,
.L2744:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r1, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	lr, r2, #8	@ tmp668, <variable>.BS.TotalPos,
	cmp	lr, r1, asl #3	@ tmp668, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7383,
	bne	.L2747	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7383,
	cmp	r5, fp	@ payloadSize, i.7383
	bgt	.L3119	@,
	b	.L3034	@
.L2747:
	add	sl, fp, #1	@ tmp1169, i.7383,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7383, tmp1169,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1169
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp672, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp672, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3119:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp1382, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1382, <variable>.BS.BsLen,
	ble	.L2747	@,
	b	.L3034	@
.L2669:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7514,
	blt	.L3181	@,
.L2825:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r1, #8	@ tmp992, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp992, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7521,
	bne	.L2828	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7521,
	cmp	r5, fp	@ payloadSize, i.7521
	bgt	.L3151	@,
	b	.L3034	@
.L2828:
	add	sl, fp, #1	@ tmp1132, i.7521,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7521, tmp1132,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1132
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp999, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp999, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3151:
	ldr	r0, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r0, #8	@ tmp1291, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp1291, <variable>.BS.BsLen,
	ble	.L2828	@,
	b	.L3034	@
.L2682:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC153	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7418,
	blt	.L3182	@,
.L2769:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp765, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp765, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7424,
	bne	.L2772	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7424,
	cmp	r5, fp	@ payloadSize, i.7424
	bgt	.L3129	@,
	b	.L3034	@
.L2772:
	add	sl, fp, #1	@ tmp1189, i.7424,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7424, tmp1189,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1189
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp772, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp772, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3129:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1442, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1442, <variable>.BS.BsLen,
	ble	.L2772	@,
	b	.L3034	@
.L2672:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC139	@,
	movt	r1, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7284,
	blt	.L3183	@,
.L2706:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r3, ip, #8	@ tmp340, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp340, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7290,
	bne	.L2709	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7290,
	cmp	fp, r5	@ i.7290, payloadSize
	blt	.L3111	@,
	b	.L3034	@
.L2709:
	add	sl, fp, #1	@ tmp1144, i.7290,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7290, tmp1144,
	bl	BsSkip	@
	cmp	sl, r5	@ tmp1144, payloadSize
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bge	.L3034	@,
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp344, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp344, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3111:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1323, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp1323, <variable>.BS.BsLen,
	ble	.L2709	@,
	b	.L3034	@
.L2676:
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC147	@,
	mov	r3, r5	@, payloadSize
	movt	r1, #:upper16:.LC147	@,
	bl	dprint_vfmw	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2740	@,
	ldr	r1, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	ip, lr, #8	@ tmp646, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp646, <variable>.BS.BsLen,
	bgt	.L2740	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7370,
	bne	.L2741	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7370,
	cmp	r5, fp	@ payloadSize, i.7370
	bgt	.L3117	@,
	b	.L2740	@
.L2741:
	add	sl, fp, #1	@ tmp1165, i.7370,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7370, tmp1165,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1165
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L2740	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp649, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp649, <variable>.BS.BsLen,
	bgt	.L2740	@,
	bl	BsSkip	@
.L3117:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1370, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1370, <variable>.BS.BsLen,
	ble	.L2741	@,
.L2740:
	mov	r1, r5	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7372,
	bge	.L3034	@,
	movw	r3, #10894	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	str	ip, [sp, #0]	@ ret.7372,
	bl	dprint_vfmw	@
	movw	r0, #51344	@ tmp658,
	ldr	r3, [r4, r0]	@ prephitmp.7161, <variable>.TotalUsrDatNum
	b	.L2696	@
.L2670:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC137	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7269,
	blt	.L3184	@,
.L2694:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp288, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp288, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i,
	bne	.L2698	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i,
	cmp	fp, r5	@ i, payloadSize
	blt	.L3107	@,
	b	.L3034	@
.L2698:
	add	sl, fp, #1	@ tmp1136, i,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i, tmp1136,
	bl	BsSkip	@
	cmp	sl, r5	@ tmp1136, payloadSize
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bge	.L3034	@,
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp295, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp295, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3107:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, ip, #8	@ tmp1303, <variable>.BS.TotalPos,
	cmp	r1, lr, asl #3	@ tmp1303, <variable>.BS.BsLen,
	ble	.L2698	@,
	b	.L3034	@
.L2680:
	mov	r3, r5	@, payloadSize
	mov	r0, #20	@,
	movw	r1, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC151	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7403,
	blt	.L3185	@,
.L2759:
	cmp	r5, #0	@ payloadSize,
	ble	.L3034	@,
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, r2, #8	@ tmp728, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp728, <variable>.BS.BsLen,
	bgt	.L3034	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7409,
	bne	.L2762	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7409,
	cmp	r5, fp	@ payloadSize, i.7409
	bgt	.L3125	@,
	b	.L3034	@
.L2762:
	add	sl, fp, #1	@ tmp1181, i.7409,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39898
	add	fp, sl, #1	@ i.7409, tmp1181,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1181
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	ble	.L3034	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp732, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp732, <variable>.BS.BsLen,
	bgt	.L3034	@,
	bl	BsSkip	@
.L3125:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r3, #8	@ tmp1418, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1418, <variable>.BS.BsLen,
	ble	.L2762	@,
	b	.L3034	@
.L3159:
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret.7525,
	add	sl, sl, r5	@ payloadType, payloadType, byte_tmp.7526
	ble	.L2836	@,
	ldrb	r3, [sp, #47]	@ zero_extendqisi2	@ byte_tmp.7531, byte_tmp
	cmp	r3, #255	@ byte_tmp.7531,
	beq	.L2837	@,
	cmp	r3, #128	@ byte_tmp.7531,
	bne	.L2839	@,
	mov	r0, #0	@ D.39903,
	b	.L2660	@
.L2674:
	mov	fp, #1	@,
	mov	r0, #20	@,
	str	fp, [sp, #36]	@, %sfp
	movw	r1, #:lower16:.LC141	@,
	mov	r3, r5	@, payloadSize
	movt	r1, #:upper16:.LC141	@,
	movw	fp, #51344	@ tmp374,
	bl	dprint_vfmw	@
	ldr	sl, [r4, fp]	@ prephitmp.7167, <variable>.TotalUsrDatNum
	cmp	sl, #3	@ prephitmp.7167,
	bls	.L2718	@,
.L3169:
	movw	lr, #51348	@ tmp377,
	movw	r3, #52840	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	movw	sl, #51356	@,
	ldr	r1, [r4, lr]	@, <variable>.pUsrDatArray
	str	lr, [sp, #20]	@,
	bl	FreeUsdByDec	@
	movw	r2, #52840	@,
	movw	ip, #51352	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	movw	r1, #52840	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.pUsrDatArray
	mov	sl, #0	@ prephitmp.7167,
	bl	FreeUsdByDec	@
	movw	r3, #52840	@,
	movw	lr, #51360	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r2, [sp, #20]	@,
	movw	ip, #51352	@,
	movw	r1, #51356	@,
	movw	r0, #51360	@,
	str	sl, [r4, fp]	@ prephitmp.7167, <variable>.TotalUsrDatNum
	str	sl, [r4, r2]	@ prephitmp.7167, <variable>.pUsrDatArray
	str	sl, [r4, ip]	@ prephitmp.7167, <variable>.pUsrDatArray
	str	sl, [r4, r1]	@ prephitmp.7167, <variable>.pUsrDatArray
	str	sl, [r4, r0]	@ prephitmp.7167, <variable>.pUsrDatArray
	b	.L2718	@
.L3172:
	movw	r1, #51344	@ tmp550,
	sub	fp, sl, #1	@ tmp1149, ret.7328,
	ldr	r5, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	and	fp, fp, #1	@ tmp1151, tmp1149,
	add	r3, r5, #12800	@ tmp548, <variable>.TotalUsrDatNum,
	add	lr, r3, #36	@ tmp548, tmp548,
	add	r0, r4, lr, asl #2	@, tmp555, pH264Ctx, tmp548,
	ldr	r2, [r0, #4]	@ tmp552, <variable>.pUsrDatArray
	str	sl, [r2, #1048]	@ ret.7328, <variable>.data_size
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r5, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, ip, #8	@ tmp558, <variable>.BS.TotalPos,
	cmp	r1, r5, asl #3	@ tmp558, <variable>.BS.BsLen,
	bgt	.L2734	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i.7339,
	cmp	sl, r5	@ ret.7328, i.7339
	ble	.L2734	@,
	cmp	fp, #0	@ tmp1151,
	beq	.L2735	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	fp, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r5, r1, #8	@ tmp1341, <variable>.BS.TotalPos,
	cmp	r5, fp, asl #3	@ tmp1341, <variable>.BS.BsLen,
	bgt	.L2734	@,
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i.7339,
	cmp	sl, r5	@ ret.7328, i.7339
	bgt	.L2735	@,
	b	.L2734	@
.L3186:
	bl	BsSkip	@
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	fp, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	mov	r0, r8	@, D.39898
	add	ip, r1, #8	@ tmp1260, <variable>.BS.TotalPos,
	mov	r1, #8	@,
	cmp	ip, fp, asl #3	@ tmp1260, <variable>.BS.BsLen,
	bgt	.L2734	@,
	bl	BsSkip	@
	cmp	sl, r5	@ ret.7328, i.7339
	ble	.L2734	@,
.L2735:
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	mov	r1, #8	@,
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r5, #1	@ tmp1152, i.7339,
	add	r2, lr, r1	@ tmp1252, <variable>.BS.TotalPos,
	mov	r0, r8	@, D.39898
	add	r5, r3, #1	@ i.7339, tmp1152,
	cmp	r2, ip, asl #3	@ tmp1252, <variable>.BS.BsLen,
	ble	.L3186	@,
	b	.L2734	@
.L3176:
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r2, [sp, #24]	@, %sfp
	mov	fp, #1	@ i.7277,
	cmp	fp, r2	@ i.7277,
	blt	.L3109	@,
.L3038:
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.7178, <variable>.BS.TotalPos
	mov	r2, r0, asl #3	@ prephitmp.7180, <variable>.BS.BsLen,
	b	.L2702	@
.L3156:
	mov	r0, r8	@, D.39898
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	sl, [sp, #24]	@, %sfp
	mov	fp, #1	@ i.7506,
	cmp	fp, sl	@ i.7506,
	blt	.L3149	@,
.L3073:
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.7163, <variable>.BS.TotalPos
	mov	r2, r0, asl #3	@ prephitmp.7165, <variable>.BS.BsLen,
	b	.L2821	@
.L3170:
	movw	lr, #51344	@ tmp433,
	strb	r2, [r1, #1064]	@ registered_flag, <variable>.IsRegistered
	ldr	r3, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC143	@,
	add	sl, r3, #12800	@ tmp431, <variable>.TotalUsrDatNum,
	movt	r2, #:upper16:.LC143	@,
	add	ip, sl, #36	@ tmp431, tmp431,
	add	r3, r4, ip, asl #2	@, tmp437, pH264Ctx, tmp431,
	ldr	sl, [r3, #4]	@ D.39969, <variable>.pUsrDatArray
	str	lr, [sp, #20]	@,
	bl	u_v	@
	strb	r0, [sl, #1065]	@, <variable>.itu_t_t35_country_code
	ldr	ip, [sp, #20]	@,
	ldr	r1, [r4, ip]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	sl, r1, #12800	@ tmp441, <variable>.TotalUsrDatNum,
	add	r3, sl, #36	@ tmp441, tmp441,
	add	r2, r4, r3, asl #2	@, tmp447, pH264Ctx, tmp441,
	ldr	r3, [r2, #4]	@ temp.7312, <variable>.pUsrDatArray
	ldrb	r0, [r3, #1065]	@ zero_extendqisi2	@ <variable>.itu_t_t35_country_code, <variable>.itu_t_t35_country_code
	cmp	r0, #255	@ <variable>.itu_t_t35_country_code,
	beq	.L2726	@,
	mov	sl, #3	@ prephitmp.7174,
	mov	r0, #0	@,
	strb	r0, [r3, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	str	sl, [sp, #24]	@ prephitmp.7174, %sfp
.L2727:
	movw	r0, #51344	@ tmp456,
	mov	r1, #16	@,
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	r2, #:lower16:.LC145	@,
	mov	r0, r4	@, pH264Ctx
	movt	r2, #:upper16:.LC145	@,
	add	lr, r3, #12800	@ tmp454, <variable>.TotalUsrDatNum,
	add	ip, lr, #36	@ tmp454, tmp454,
	add	r3, r4, ip, asl #2	@, tmp460, pH264Ctx, tmp454,
	ldr	lr, [r3, #4]	@ temp.7314, <variable>.pUsrDatArray
	str	lr, [sp, #20]	@,
	bl	u_v	@
	ldr	ip, [sp, #20]	@,
	movw	r3, #1068	@ tmp463,
	mov	r1, sl	@, prephitmp.7174
	strh	r0, [ip, r3]	@ movhi	@, <variable>.itu_t_t35_provider_code
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7315,
	blt	.L3187	@,
.L2728:
	ldr	r1, [sp, #32]	@, %sfp
	cmp	r1, sl	@, prephitmp.7174
	beq	.L2729	@,
	movw	r0, #51344	@ tmp470,
	ldr	r3, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	lr, r3, #12800	@ tmp468, <variable>.TotalUsrDatNum,
	add	ip, lr, #36	@ tmp468, tmp468,
	add	r2, r4, ip, asl #2	@, tmp474, pH264Ctx, tmp468,
	ldr	r1, [r2, #4]	@ prephitmp.7173, <variable>.pUsrDatArray
	b	.L2730	@
.L3173:
	rsb	r1, fp, r5	@, D.39972, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	subs	ip, r0, #0	@ ret.7343,
	bge	.L2736	@,
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10841	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7343,
	bl	dprint_vfmw	@
	b	.L2736	@
.L3157:
	mov	r0, r8	@, D.39898
	bl	BsSkip	@
	b	.L2819	@
.L3177:
	mov	r0, r8	@, D.39898
	bl	BsSkip	@
	b	.L2700	@
.L3175:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10932	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7385,
	bl	dprint_vfmw	@
	b	.L2749	@
.L3178:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11010	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7411,
	bl	dprint_vfmw	@
	b	.L2764	@
.L3179:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10685	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7292,
	bl	dprint_vfmw	@
	b	.L2711	@
.L3180:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10906	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7376,
	bl	dprint_vfmw	@
	b	.L2744	@
.L3181:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11334	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7514,
	bl	dprint_vfmw	@
	b	.L2825	@
.L3163:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11114	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7443,
	bl	dprint_vfmw	@
	b	.L2784	@
.L3164:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11244	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7486,
	bl	dprint_vfmw	@
	b	.L2809	@
.L3165:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11140	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7452,
	bl	dprint_vfmw	@
	b	.L2789	@
.L3166:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11192	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7470,
	bl	dprint_vfmw	@
	b	.L2799	@
.L3167:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11088	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7434,
	bl	dprint_vfmw	@
	b	.L2779	@
.L3168:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11062	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7426,
	bl	dprint_vfmw	@
	b	.L2774	@
.L3174:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10958	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7394,
	bl	dprint_vfmw	@
	b	.L2754	@
.L3161:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11166	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7461,
	bl	dprint_vfmw	@
	b	.L2794	@
.L3162:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11218	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7478,
	bl	dprint_vfmw	@
	b	.L2804	@
.L2824:
	movw	r3, #11322	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r5, #51344	@ tmp986,
	str	ip, [sp, #0]	@ ret.7510,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r5]	@ prephitmp.7161, <variable>.TotalUsrDatNum
	b	.L2696	@
.L3182:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11036	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7418,
	bl	dprint_vfmw	@
	b	.L2769	@
.L3183:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10659	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7284,
	bl	dprint_vfmw	@
	b	.L2706	@
.L3184:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10594	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7269,
	bl	dprint_vfmw	@
	b	.L2694	@
.L3185:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10984	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7403,
	bl	dprint_vfmw	@
	b	.L2759	@
.L3160:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #11270	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7494,
	bl	dprint_vfmw	@
	b	.L2814	@
.L2729:
	movw	r2, #51344	@ tmp478,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	fp, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	lr, #1056	@ tmp485,
	add	r5, fp, #12800	@ tmp476, <variable>.TotalUsrDatNum,
	ldrd	sl, [r1, #56]	@ <variable>.pts, <variable>.pstExtraData,
	add	r0, r5, #36	@ tmp476, tmp476,
	add	r3, r4, r0, asl #2	@, tmp483, pH264Ctx, tmp476,
	ldr	ip, [r3, #4]	@ tmp480, <variable>.pUsrDatArray
	strd	sl, [ip, lr]	@ <variable>.pts, tmp480, tmp485
	mov	ip, #8	@ tmp497,
	ldr	r1, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r5, r1, #12800	@ tmp488, <variable>.TotalUsrDatNum,
	movw	r1, #52800	@ tmp507,
	add	r0, r5, #36	@ tmp488, tmp488,
	add	r3, r4, r0, asl #2	@, tmp495, pH264Ctx, tmp488,
	ldr	lr, [r3, #4]	@ tmp492, <variable>.pUsrDatArray
	str	ip, [lr, #1036]	@ tmp497, <variable>.from
	ldr	r5, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r1, [r4, r1]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r0, r5, #12800	@ tmp498, <variable>.TotalUsrDatNum,
	add	r3, r0, #36	@ tmp498, tmp498,
	add	lr, r4, r3, asl #2	@, tmp505, pH264Ctx, tmp498,
	ldr	ip, [lr, #4]	@ tmp502, <variable>.pUsrDatArray
	str	r1, [ip, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	r5, [sp, #28]	@, %sfp
	ldr	r3, [r5, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	bne	.L3152	@,
	b	.L2739	@
.L3187:
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L3188	@,
	movt	r1, #:upper16:.LC71	@,
	movw	r3, #10783	@,
	mov	r0, #22	@,
	str	ip, [sp, #0]	@ ret.7315,
	bl	dprint_vfmw	@
	b	.L2728	@
.L2726:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC144	@,
	movt	r2, #:upper16:.LC144	@,
	str	r3, [sp, #20]	@,
	bl	u_v	@
	ldr	r2, [sp, #20]	@,
	mov	sl, #4	@ prephitmp.7174,
	str	sl, [sp, #24]	@ prephitmp.7174, %sfp
	strb	r0, [r2, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	b	.L2727	@
.L3171:
	movw	r5, #51344	@ tmp533,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC146	@,
	movt	r1, #:upper16:.LC146	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	r2, #52840	@ tmp529,
	add	ip, r0, #12800	@ tmp530, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r1, ip, #36	@ tmp530, tmp530,
	add	r3, r4, r1, asl #2	@, tmp536, pH264Ctx, tmp530,
	ldr	r1, [r3, #4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r2, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mvn	r0, #0	@ D.39903,
	add	ip, r2, #12800	@ tmp538, <variable>.TotalUsrDatNum,
	mov	r2, #0	@ tmp546,
	add	r1, ip, #36	@ tmp538, tmp538,
	add	r3, r4, r1, asl #2	@, tmp544, pH264Ctx, tmp538,
	str	r2, [r3, #4]	@ tmp546, <variable>.pUsrDatArray
	b	.L2660	@
.L2719:
	mvn	r0, #0	@ D.39903,
	b	.L2660	@
.L3189:
	.align	2
.L3188:
	.word	.LANCHOR0+340
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
	mov	r5, r1	@ pVUI, pVUI
	movw	r1, #:lower16:.LC164	@,
	movt	r1, #:upper16:.LC164	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.38755,
	strb	r0, [r5, #0]	@ D.38755, <variable>.aspect_ratio_info_present_flag
	cmp	r0, #0	@ D.38755,
	streqb	r0, [r5, #15]	@ D.38755, <variable>.aspect_ratio_idc
	bne	.L3215	@,
.L3192:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC168	@,
	movt	r1, #:upper16:.LC168	@,
	bl	u_1	@
	uxtb	r2, r0	@ D.38770,
	strb	r2, [r5, #1]	@ D.38770, <variable>.overscan_info_present_flag
	cmp	r2, #0	@ D.38770,
	bne	.L3216	@,
.L3193:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC170	@,
	movt	r1, #:upper16:.LC170	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.38777,
	strb	r3, [r5, #3]	@ D.38777, <variable>.video_signal_type_present_flag
	cmp	r3, #0	@ D.38777,
	moveq	r3, #5	@ tmp229,
	streq	r3, [r5, #28]	@ tmp229, <variable>.video_format
	bne	.L3217	@,
.L3195:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC177	@,
	movt	r1, #:upper16:.LC177	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.38798,
	strb	r0, [r5, #6]	@ D.38798, <variable>.chroma_location_info_present_flag
	cmp	r0, #0	@ D.38798,
	bne	.L3218	@,
.L3196:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	u_1	@
	uxtb	r1, r0	@ D.38805,
	strb	r1, [r5, #8]	@ D.38805, <variable>.timing_info_present_flag
	cmp	r1, #0	@ D.38805,
	bne	.L3219	@,
.L3197:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC184	@,
	movt	r1, #:upper16:.LC184	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.38825,
	strb	r0, [r5, #7]	@ D.38825, <variable>.nal_hrd_parameters_present_flag
	cmp	r0, #0	@ D.38825,
	beq	.L3198	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC185	@,
	movt	r1, #:upper16:.LC185	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC186	@,
	movt	r2, #:upper16:.LC186	@,
	str	r0, [r5, #96]	@, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC187	@,
	movt	r2, #:upper16:.LC187	@,
	strb	r0, [r5, #92]	@, <variable>.nal_hrd_parameters.bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, [r5, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	cmp	r1, #31	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r5, #93]	@, <variable>.nal_hrd_parameters.cpb_size_scale
	bhi	.L3204	@,
	movw	lr, #52780	@ tmp254,
	ldr	r8, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	moveq	r6, r5	@ ivtmp.7655, pVUI
	moveq	r7, r5	@ ivtmp.7644, pVUI
	bne	.L3204	@,
.L3202:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC189	@,
	movt	r1, #:upper16:.LC189	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC190	@,
	movt	r1, #:upper16:.LC190	@,
	str	r0, [r6, #100]	@, <variable>.nal_hrd_parameters.bit_rate_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC191	@,
	movt	r1, #:upper16:.LC191	@,
	str	r0, [r6, #228]	@, <variable>.nal_hrd_parameters.cpb_size_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r2, [r5, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7655, ivtmp.7655,
	cmp	r2, r8	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #60]	@, <variable>.nal_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7644, ivtmp.7644,
	bcs	.L3202	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC192	@,
	movt	r2, #:upper16:.LC192	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC193	@,
	movt	r2, #:upper16:.LC193	@,
	str	r0, [r5, #356]	@, <variable>.nal_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC194	@,
	movt	r2, #:upper16:.LC194	@,
	str	r0, [r5, #360]	@, <variable>.nal_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC195	@,
	movt	r2, #:upper16:.LC195	@,
	str	r0, [r5, #364]	@, <variable>.nal_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #368]	@, <variable>.nal_hrd_parameters.time_offset_length
.L3198:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC196	@,
	movt	r1, #:upper16:.LC196	@,
	bl	u_1	@
	uxtb	ip, r0	@ D.38855,
	strb	ip, [r5, #10]	@ D.38855, <variable>.vcl_hrd_parameters_present_flag
	cmp	ip, #0	@ D.38855,
	bne	.L3220	@,
.L3203:
	ldrb	lr, [r5, #7]	@ zero_extendqisi2	@ <variable>.nal_hrd_parameters_present_flag, <variable>.nal_hrd_parameters_present_flag
	cmp	lr, #0	@ <variable>.nal_hrd_parameters_present_flag,
	bne	.L3207	@,
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.vcl_hrd_parameters_present_flag, <variable>.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vcl_hrd_parameters_present_flag,
	bne	.L3207	@,
.L3208:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC199	@,
	movt	r1, #:upper16:.LC199	@,
	strb	r0, [r5, #11]	@, <variable>.pic_struct_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.38889,
	strb	ip, [r5, #12]	@ D.38889, <variable>.bitstream_restriction_flag
	cmp	ip, #0	@ D.38889,
	bne	.L3221	@,
	movw	lr, #52780	@ tmp304,
	ldr	r1, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3210	@,
.L3211:
	mov	r0, #0	@ D.38840,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3207:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	bl	u_1	@
	strb	r0, [r5, #14]	@, <variable>.low_delay_hrd_flag
	b	.L3208	@
.L3221:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC200	@,
	movt	r1, #:upper16:.LC200	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC201	@,
	movt	r1, #:upper16:.LC201	@,
	strb	r0, [r5, #13]	@, <variable>.motion_vectors_over_pic_boundaries_flag
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC202	@,
	movt	r1, #:upper16:.LC202	@,
	str	r0, [r5, #684]	@, <variable>.max_bytes_per_pic_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC203	@,
	movt	r1, #:upper16:.LC203	@,
	str	r0, [r5, #688]	@, <variable>.max_bits_per_mb_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC204	@,
	movt	r1, #:upper16:.LC204	@,
	str	r0, [r5, #696]	@, <variable>.log2_max_mv_length_horizontal
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC205	@,
	movt	r1, #:upper16:.LC205	@,
	str	r0, [r5, #692]	@, <variable>.log2_max_mv_length_vertical
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC206	@,
	movt	r1, #:upper16:.LC206	@,
	str	r0, [r5, #700]	@, <variable>.num_reorder_frames
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #704]	@, <variable>.max_dec_frame_buffering
	movw	r0, #52780	@ tmp302,
	ldr	r3, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3211	@,
.L3210:
	mvn	r0, #0	@ D.38840,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3215:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC165	@,
	movt	r2, #:upper16:.LC165	@,
	bl	u_v	@
	uxtb	r1, r0	@ D.38760,
	strb	r1, [r5, #15]	@ D.38760, <variable>.aspect_ratio_idc
	cmp	r1, #255	@ D.38760,
	bne	.L3192	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC166	@,
	movt	r2, #:upper16:.LC166	@,
	bl	u_v	@
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC167	@,
	movt	r2, #:upper16:.LC167	@,
	str	r0, [r5, #16]	@, <variable>.sar_width
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #20]	@, <variable>.sar_height
	b	.L3192	@
.L3219:
	mov	r1, #32	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC181	@,
	movt	r2, #:upper16:.LC181	@,
	bl	u_v	@
	mov	r1, #32	@,
	movw	r2, #:lower16:.LC182	@,
	movt	r2, #:upper16:.LC182	@,
	str	r0, [r5, #52]	@, <variable>.num_units_in_tick
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	r0, [r5, #56]	@, <variable>.time_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r2, r0	@ D.38814,
	strb	r2, [r5, #9]	@ D.38814, <variable>.fixed_frame_rate_flag
	cmp	r2, #1	@ D.38814,
	bne	.L3197	@,
	ldr	r1, [r5, #52]	@ D.38818, <variable>.num_units_in_tick
	cmp	r1, #0	@ D.38818,
	beq	.L3197	@,
	ldr	r0, [r5, #56]	@, <variable>.time_scale
	bl	__aeabi_uidiv	@
	movw	r3, #51340	@ tmp240,
	mov	ip, r0, lsr #1	@ tmp245,,
	str	ip, [r4, r3]	@ tmp245, <variable>.frame_rate
	b	.L3197	@
.L3218:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC178	@,
	movt	r1, #:upper16:.LC178	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC179	@,
	movt	r1, #:upper16:.LC179	@,
	str	r0, [r5, #44]	@, <variable>.chroma_sample_loc_type_top_field
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #48]	@, <variable>.chroma_sample_loc_type_bottom_field
	b	.L3196	@
.L3217:
	mov	r1, #3	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC171	@,
	movt	r2, #:upper16:.LC171	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC172	@,
	movt	r1, #:upper16:.LC172	@,
	str	r0, [r5, #28]	@, <variable>.video_format
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC173	@,
	movt	r1, #:upper16:.LC173	@,
	strb	r0, [r5, #4]	@, <variable>.video_full_range_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.38786,
	strb	ip, [r5, #5]	@ D.38786, <variable>.colour_description_present_flag
	cmp	ip, #0	@ D.38786,
	beq	.L3195	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC174	@,
	movt	r2, #:upper16:.LC174	@,
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC175	@,
	movt	r2, #:upper16:.LC175	@,
	str	r0, [r5, #32]	@, <variable>.colour_primaries
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC176	@,
	movt	r2, #:upper16:.LC176	@,
	str	r0, [r5, #36]	@, <variable>.transfer_characteristics
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #40]	@, <variable>.matrix_coefficients
	b	.L3195	@
.L3216:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC169	@,
	movt	r1, #:upper16:.LC169	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.overscan_appropriate_flag
	b	.L3193	@
.L3220:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC185	@,
	movt	r1, #:upper16:.LC185	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC186	@,
	movt	r2, #:upper16:.LC186	@,
	str	r0, [r5, #408]	@, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC187	@,
	movt	r2, #:upper16:.LC187	@,
	strb	r0, [r5, #404]	@, <variable>.vcl_hrd_parameters.bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r5, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	cmp	r3, #31	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r5, #405]	@, <variable>.vcl_hrd_parameters.cpb_size_scale
	bhi	.L3204	@,
	movw	r0, #52780	@ tmp274,
	ldr	r8, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	moveq	r6, r5	@ ivtmp.7636, pVUI
	moveq	r7, r5	@ ivtmp.7649, pVUI
	bne	.L3204	@,
.L3206:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC189	@,
	movt	r1, #:upper16:.LC189	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC190	@,
	movt	r1, #:upper16:.LC190	@,
	str	r0, [r6, #412]	@, <variable>.vcl_hrd_parameters.bit_rate_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC191	@,
	movt	r1, #:upper16:.LC191	@,
	str	r0, [r6, #540]	@, <variable>.vcl_hrd_parameters.cpb_size_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, [r5, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7636, ivtmp.7636,
	cmp	r1, r8	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #372]	@, <variable>.vcl_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7649, ivtmp.7649,
	bcs	.L3206	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC192	@,
	movt	r2, #:upper16:.LC192	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC193	@,
	movt	r2, #:upper16:.LC193	@,
	str	r0, [r5, #668]	@, <variable>.vcl_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC194	@,
	movt	r2, #:upper16:.LC194	@,
	str	r0, [r5, #672]	@, <variable>.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC195	@,
	movt	r2, #:upper16:.LC195	@,
	str	r0, [r5, #676]	@, <variable>.vcl_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #680]	@, <variable>.vcl_hrd_parameters.time_offset_length
	b	.L3203	@
.L3204:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC188	@,
	movt	r1, #:upper16:.LC188	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38840,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r5, r1, #0	@ pSPS, pSPS
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	beq	.L3303	@,
	ldr	r3, [r5, #736]	@ D.39173, <variable>.profile_idc
	cmp	r3, #100	@ D.39173,
	cmpne	r3, #110	@, D.39173,
	movne	r2, #0	@, tmp218
	moveq	r2, #1	@, tmp218
	beq	.L3225	@,
	cmp	r3, #122	@ D.39173,
	beq	.L3225	@,
	cmp	r3, #144	@ D.39173,
	strneb	r2, [r5, #25]	@ tmp218, <variable>.seq_scaling_matrix_present_flag
	movne	r3, #1	@ tmp393,
	strne	r3, [r5, #748]	@ tmp393, <variable>.chroma_format_idc
	beq	.L3225	@,
.L3235:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC217	@,
	movt	r1, #:upper16:.LC217	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.39274,
	str	r0, [r5, #2904]	@ D.39274, <variable>.log2_max_frame_num_minus4
	bhi	.L3251	@,
	movw	r6, #52780	@ tmp397,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3251	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC219	@,
	movt	r1, #:upper16:.LC219	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.39280,
	str	r0, [r5, #2908]	@ D.39280, <variable>.pic_order_cnt_type
	bhi	.L3253	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3253	@,
	cmp	r0, #0	@ D.39280,
	beq	.L3304	@,
	cmp	r0, #1	@ D.39280,
	beq	.L3305	@,
.L3257:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC229	@,
	movt	r1, #:upper16:.LC229	@,
	movw	r6, #52780	@ tmp428,
	bl	ue_v	@
	str	r0, [r5, #3952]	@, <variable>.num_ref_frames
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	beq	.L3306	@,
.L3258:
	mvn	r0, #0	@ D.39169,
.L3224:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L3225:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC207	@,
	movt	r1, #:upper16:.LC207	@,
	bl	ue_v	@
	cmp	r0, #1	@ D.39180,
	str	r0, [r5, #748]	@ D.39180, <variable>.chroma_format_idc
	bhi	.L3227	@,
	movw	r6, #52780	@ tmp220,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3227	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC209	@,
	movt	r1, #:upper16:.LC209	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.39187,
	str	r0, [r5, #752]	@ D.39187, <variable>.bit_depth_luma_minus8
	bne	.L3229	@,
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3229	@,
.L3230:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC211	@,
	movt	r1, #:upper16:.LC211	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.39193,
	str	r0, [r5, #756]	@ D.39193, <variable>.bit_depth_chroma_minus8
	bne	.L3231	@,
	movw	r2, #52780	@ tmp228,
	ldr	r1, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3231	@,
.L3232:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC213	@,
	movt	r1, #:upper16:.LC213	@,
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L3233	@,
	movw	lr, #52780	@ tmp232,
	ldr	ip, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3233	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC215	@,
	movt	r1, #:upper16:.LC215	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.39205,
	strb	r3, [r5, #25]	@ D.39205, <variable>.seq_scaling_matrix_present_flag
	cmp	r3, #1	@ D.39205,
	bne	.L3235	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	add	r6, r5, #2672	@ D.39219, pSPS,
	bl	u_1	@
	add	r6, r6, #8	@ D.39219, D.39219,
	add	sl, r5, #760	@ D.39216, pSPS,
	cmp	r0, #1	@ temp.7751,
	str	r0, [sp, #8]	@ temp.7751, q4x4defaultflag
	strb	r0, [r5, #4]	@ temp.7751, <variable>.seq_scaling_list_present_flag
	beq	.L3236	@,
.L3298:
	ldr	ip, .L3314	@ tmp248,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp248,,,,
	stmia	r6, {r0, r1, r2, r3}	@ D.39219,,,,
.L3237:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7753,
	str	r0, [sp, #12]	@ temp.7753, q4x4defaultflag
	strb	r0, [r5, #5]	@ temp.7753, <variable>.seq_scaling_list_present_flag
	beq	.L3238	@,
	add	r7, r6, #16	@ tmp552, D.39219,
	mov	r1, r6	@, D.39219
	mov	r2, #16	@,
	mov	r0, r7	@, tmp552
	bl	memcpy	@
.L3239:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7761,
	str	r0, [sp, #16]	@ temp.7761, q4x4defaultflag
	strb	r0, [r5, #6]	@ temp.7761, <variable>.seq_scaling_list_present_flag
	beq	.L3240	@,
	mov	r1, r7	@, tmp552
	add	r0, r6, #32	@, D.39219,
	mov	r2, #16	@,
	bl	memcpy	@
.L3241:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7770,
	str	r0, [sp, #20]	@ temp.7770, q4x4defaultflag
	strb	r0, [r5, #7]	@ temp.7770, <variable>.seq_scaling_list_present_flag
	beq	.L3242	@,
	add	r7, r6, #48	@ tmp547, D.39219,
	ldr	r1, .L3314+4	@,
	mov	r2, #16	@,
	mov	r0, r7	@, tmp547
	bl	memcpy	@
.L3243:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7778,
	str	r0, [sp, #24]	@ temp.7778, q4x4defaultflag
	strb	r0, [r5, #8]	@ temp.7778, <variable>.seq_scaling_list_present_flag
	beq	.L3244	@,
	add	r8, r6, #64	@ tmp549, D.39219,
	mov	r1, r7	@, tmp547
	mov	r2, #16	@,
	mov	r0, r8	@, tmp549
	bl	memcpy	@
.L3245:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	u_1	@
	cmp	r0, #1	@ D.39210,
	str	r0, [sp, #28]	@ D.39210, q4x4defaultflag
	strb	r0, [r5, #9]	@ D.39210, <variable>.seq_scaling_list_present_flag
	beq	.L3307	@,
	add	r0, r6, #80	@, D.39219,
	mov	r1, r8	@, tmp549
	mov	r2, #16	@,
	bl	memcpy	@
.L3247:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	add	r7, r5, #1136	@ D.39253, pSPS,
	bl	u_1	@
	add	r6, r5, #2768	@ D.39256, pSPS,
	add	r7, r7, #8	@ D.39253, D.39253,
	add	r6, r6, #8	@ D.39256, D.39256,
	cmp	r0, #1	@ temp.7787,
	str	r0, [sp, #40]	@ temp.7787, q8x8defaultflag
	strb	r0, [r5, #10]	@ temp.7787, <variable>.seq_scaling_list_present_flag
	beq	.L3248	@,
.L3299:
	ldr	ip, .L3314+8	@ tmp368,
	mov	lr, r6	@ D.39256, D.39256
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp370,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.39256,,,,
	mov	r8, lr	@ D.39256, D.39256
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp560,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ D.39256,,,,
	mov	lr, r8	@ D.39256, D.39256
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp562,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.39256,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp562,,,,
	stmia	lr, {r0, r1, r2, r3}	@ D.39256,,,,
.L3249:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	u_1	@
	cmp	r0, #1	@ D.39246,
	str	r0, [sp, #44]	@ D.39246, q8x8defaultflag
	strb	r0, [r5, #11]	@ D.39246, <variable>.seq_scaling_list_present_flag
	beq	.L3308	@,
	add	r0, r6, #64	@, D.39256,
	ldr	r1, .L3314+12	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3235	@
.L3231:
	movw	r1, #:lower16:.LC212	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC212	@,
	bl	dprint_vfmw	@
	b	.L3232	@
.L3229:
	movw	r1, #:lower16:.LC210	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC210	@,
	bl	dprint_vfmw	@
	b	.L3230	@
.L3304:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC221	@,
	movt	r1, #:upper16:.LC221	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.39288,
	str	r0, [r5, #2912]	@ D.39288, <variable>.log2_max_pic_order_cnt_lsb_minus4
	bhi	.L3256	@,
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3257	@,
.L3256:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC222	@,
	movt	r1, #:upper16:.LC222	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3305:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC223	@,
	movt	r1, #:upper16:.LC223	@,
	bl	u_1	@
	strb	r0, [r5, #16]	@, <variable>.delta_pic_order_always_zero_flag
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC224	@,
	movt	r1, #:upper16:.LC224	@,
	bl	se_v	@
	str	r0, [r5, #2916]	@, <variable>.offset_for_non_ref_pic
	ldr	ip, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC225	@,
	movt	r1, #:upper16:.LC225	@,
	bl	se_v	@
	str	r0, [r5, #2920]	@, <variable>.offset_for_top_to_bottom_field
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC226	@,
	movt	r1, #:upper16:.LC226	@,
	bl	ue_v	@
	cmp	r0, #255	@ prephitmp.7682,
	mov	r3, r0	@ prephitmp.7682,
	str	r0, [r5, #2924]	@ prephitmp.7682, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	bhi	.L3259	@,
	movw	r8, #52780	@ tmp419,
	ldr	r6, [r4, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r6, #0	@ <variable>.SeErrFlg,
	addeq	r7, r5, #2928	@ ivtmp.7699, pSPS,
	beq	.L3260	@,
	b	.L3259	@
.L3261:
	bl	se_v	@
	str	r0, [r7], #4	@, <variable>.offset_for_ref_frame
	ldr	r1, [r4, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	ldr	r3, [r5, #2924]	@ prephitmp.7682, <variable>.num_ref_frames_in_pic_order_cnt_cycle
.L3260:
	cmp	r6, r3	@ i, prephitmp.7682
	movw	r1, #:lower16:.LC228	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC228	@,
	add	r6, r6, #1	@ i, i,
	bcc	.L3261	@,
	movw	r0, #52780	@ tmp425,
	ldr	lr, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	b	.L3257	@
.L3251:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC218	@,
	movt	r1, #:upper16:.LC218	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3227:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3233:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC214	@,
	movt	r1, #:upper16:.LC214	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3306:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC230	@,
	movt	r1, #:upper16:.LC230	@,
	bl	u_1	@
	strb	r0, [r5, #17]	@, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	ip, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC231	@,
	movt	r1, #:upper16:.LC231	@,
	movw	r7, #509	@ tmp436,
	bl	ue_v	@
	sub	r3, r0, #1	@ tmp435, D.39325,
	str	r0, [r5, #3956]	@ D.39325, <variable>.pic_width_in_mbs_minus1
	cmp	r3, r7	@ tmp435, tmp436
	bhi	.L3262	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	beq	.L3263	@,
.L3262:
	mov	r2, r0	@, D.39325
	movw	r1, #:lower16:.LC232	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC232	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3253:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC220	@,
	movt	r1, #:upper16:.LC220	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3307:
	add	r6, r6, #80	@ tmp550, D.39219,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #320	@, D.39216,
	mov	r3, #16	@,
	mov	r2, r6	@, tmp550
	add	lr, sp, #28	@ tmp341,,
	str	lr, [sp, #0]	@ tmp341,
	bl	Scaling_List	@
	ldr	r0, [sp, #28]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r0, #1	@ q4x4defaultflag,
	bne	.L3247	@,
	mov	r0, r6	@, tmp550
	ldr	r1, .L3314+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3247	@
.L3244:
	add	r8, r6, #64	@ tmp549, D.39219,
	mov	r3, #16	@,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #256	@, D.39216,
	mov	r2, r8	@, tmp549
	add	r7, sp, #24	@ tmp326,,
	str	r7, [sp, #0]	@ tmp326,
	bl	Scaling_List	@
	ldr	r3, [sp, #24]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r3, #1	@ q4x4defaultflag,
	bne	.L3245	@,
	mov	r0, r8	@, tmp549
	ldr	r1, .L3314+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3245	@
.L3242:
	add	r7, r6, #48	@ tmp547, D.39219,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #192	@, D.39216,
	mov	r3, #16	@,
	mov	r2, r7	@, tmp547
	add	ip, sp, #20	@ tmp305,,
	str	ip, [sp, #0]	@ tmp305,
	bl	Scaling_List	@
	ldr	r2, [sp, #20]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r2, #1	@ q4x4defaultflag,
	bne	.L3243	@,
	mov	r0, r7	@, tmp547
	ldr	r1, .L3314+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3243	@
.L3240:
	add	r7, r6, #32	@ tmp553, D.39219,
	add	r1, sl, #128	@, D.39216,
	mov	r3, #16	@,
	mov	r0, r4	@, pH264Ctx
	mov	r2, r7	@, tmp553
	add	r8, sp, r3	@ tmp283,,
	str	r8, [sp, #0]	@ tmp283,
	bl	Scaling_List	@
	ldr	r1, [sp, #16]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r1, #1	@ q4x4defaultflag,
	bne	.L3241	@,
	mov	r0, r7	@, tmp553
	ldr	r1, .L3314	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3241	@
.L3238:
	add	r7, r6, #16	@ tmp552, D.39219,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #64	@, D.39216,
	mov	r3, #16	@,
	mov	r2, r7	@, tmp552
	add	lr, sp, #12	@ tmp262,,
	str	lr, [sp, #0]	@ tmp262,
	bl	Scaling_List	@
	ldr	r0, [sp, #12]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r0, #1	@ q4x4defaultflag,
	bne	.L3239	@,
	mov	r0, r7	@, tmp552
	ldr	r1, .L3314	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3239	@
.L3236:
	mov	r0, r4	@, pH264Ctx
	mov	r1, sl	@, D.39216
	mov	r2, r6	@, D.39219
	mov	r3, #16	@,
	add	r8, sp, #8	@ tmp245,,
	str	r8, [sp, #0]	@ tmp245,
	bl	Scaling_List	@
	ldr	r7, [sp, #8]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r7, #1	@ q4x4defaultflag,
	bne	.L3237	@,
	b	.L3298	@
.L3308:
	add	r6, r6, #64	@ tmp548, D.39256,
	add	r1, r7, #256	@, D.39253,
	mov	r0, r4	@, pH264Ctx
	mov	r3, #64	@,
	mov	r2, r6	@, tmp548
	add	ip, sp, #44	@ tmp377,,
	str	ip, [sp, #0]	@ tmp377,
	bl	Scaling_List	@
	ldr	r2, [sp, #44]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r2, #1	@ q8x8defaultflag,
	bne	.L3235	@,
	mov	r0, r6	@, tmp548
	ldr	r1, .L3314+12	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3235	@
.L3248:
	mov	r1, r7	@, D.39253
	mov	r0, r4	@, pH264Ctx
	mov	r2, r6	@, D.39256
	mov	r3, #64	@,
	add	ip, sp, #40	@ tmp365,,
	str	ip, [sp, #0]	@ tmp365,
	bl	Scaling_List	@
	ldr	r1, [sp, #40]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r1, #1	@ q8x8defaultflag,
	bne	.L3249	@,
	b	.L3299	@
.L3303:
	mov	r0, r5	@, pSPS
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #9700	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3263:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC233	@,
	movt	r1, #:upper16:.LC233	@,
	bl	ue_v	@
	str	r0, [r5, #3960]	@, <variable>.pic_height_in_map_units_minus1
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC234	@,
	movt	r1, #:upper16:.LC234	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.39336,
	strb	r0, [r5, #18]	@ D.39336, <variable>.frame_mbs_only_flag
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	cmp	r0, #0	@ D.39336,
	bne	.L3264	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC235	@,
	movt	r1, #:upper16:.LC235	@,
	bl	u_1	@
	ldr	r2, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r3, r2, #1	@ prephitmp.7676, <variable>.pic_height_in_map_units_minus1,
	cmp	r3, #255	@ prephitmp.7676,
	strb	r0, [r5, #19]	@, <variable>.mb_adaptive_frame_field_flag
	bhi	.L3295	@,
	ldr	r8, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	r8, r8, #1	@ prephitmp.7731, <variable>.pic_width_in_mbs_minus1,
	cmp	r8, #3	@ prephitmp.7731,
	bls	.L3295	@,
	cmp	r3, #1	@ prephitmp.7676,
	movhi	sl, #2	@ temp,
	bls	.L3295	@,
.L3296:
	mul	r1, sl, r3	@ tmp453, temp, prephitmp.7676
	mov	r8, r8, asl #4	@ PicWidthInSmp, prephitmp.7731,
	mov	lr, #3	@ tmp456,
	mov	r7, r1, asl #4	@ PicHeightInSmp, tmp453,
	mul	r3, r8, r7	@ tmp454, PicWidthInSmp, PicHeightInSmp
	mov	ip, r3, lsr #1	@ tmp455, tmp454,
	mul	r1, lr, ip	@ pic_size, tmp456, tmp455
	cmp	r1, #100663296	@ pic_size,
	bhi	.L3309	@,
	ldr	r2, [r5, #740]	@ D.39370, <variable>.level_idc
	sub	r0, r2, #10	@ tmp458, D.39370,
	cmp	r0, #31	@ tmp458,
	ldrls	pc, [pc, r0, asl #2]	@ tmp458
	b	.L3268	@
.L3277:
	.word	.L3269
	.word	.L3270
	.word	.L3271
	.word	.L3271
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3271
	.word	.L3272
	.word	.L3273
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3273
	.word	.L3274
	.word	.L3275
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3268
	.word	.L3276
	.word	.L3276
.L3259:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC227	@,
	movt	r1, #:upper16:.LC227	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3275:
	mov	r0, #7864320	@ size,
.L3278:
	bl	__aeabi_uidiv	@
	movw	r1, #:lower16:.LC239	@,
	movt	r1, #:upper16:.LC239	@,
	cmp	r0, #16	@,
	movcc	r6, r0	@ size.7705,
	movcs	r6, #16	@ size.7705,
	mov	r0, #21	@,
	mov	r2, r6	@, size.7705
	bl	dprint_vfmw	@
	ldr	r2, [r5, #3952]	@ D.39377, <variable>.num_ref_frames
	cmp	r2, r6	@ D.39377, size.7705
	bhi	.L3279	@,
	movw	lr, #52780	@ tmp464,
	ldr	r9, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r9, #0	@ <variable>.SeErrFlg,
	beq	.L3280	@,
.L3279:
	mov	r3, r6	@, size.7705
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC240	@,
	movt	r1, #:upper16:.LC240	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #3952]	@ temp.7737, <variable>.num_ref_frames
	cmp	r3, #16	@ temp.7737,
	bhi	.L3300	@,
	cmp	r6, r3	@ size.7705, temp.7737
	movcc	r6, r3	@ size.7705, temp.7737
.L3300:
	str	r6, [r5, #3952]	@ size.7705, <variable>.num_ref_frames
.L3280:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC241	@,
	movt	r1, #:upper16:.LC241	@,
	movw	r9, #52780	@ tmp469,
	bl	u_1	@
	strb	r0, [r5, #20]	@, <variable>.direct_8x8_inference_flag
	ldr	r2, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC242	@,
	movt	r1, #:upper16:.LC242	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.39388,
	strb	r0, [r5, #21]	@ D.39388, <variable>.frame_cropping_flag
	ldr	ip, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	cmp	r0, #0	@ D.39388,
	bne	.L3310	@,
.L3282:
	mov	r3, r8, lsr #1	@ tmp501, PicWidthInSmp,
	mov	lr, r7, lsr #1	@ tmp502, PicHeightInSmp,
	str	r8, [r5, #3984]	@ PicWidthInSmp, <variable>.disp_width
	str	r3, [r5, #3992]	@ tmp501, <variable>.disp_center_x
	str	lr, [r5, #3996]	@ tmp502, <variable>.disp_center_y
	str	r7, [r5, #3988]	@ PicHeightInSmp, <variable>.disp_height
.L3284:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC247	@,
	movt	r1, #:upper16:.LC247	@,
	bl	u_1	@
	movw	r2, #52780	@ tmp505,
	uxtb	r3, r0	@ D.39426,
	strb	r3, [r5, #22]	@ D.39426, <variable>.vui_parameters_present_flag
	ldr	r2, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3258	@,
	cmp	r3, #0	@ D.39426,
	add	r1, r2, #2	@ tmp507, tmp507,
	str	r1, [r5, #68]	@ tmp507, <variable>.vui_seq_parameters.matrix_coefficients
	bne	.L3311	@,
	mov	r0, r3	@ prephitmp.7680, D.39426
	mov	lr, #5	@ tmp514,
	strb	r3, [r5, #43]	@ D.39426, <variable>.vui_seq_parameters.aspect_ratio_idc
	str	lr, [r5, #56]	@ tmp514, <variable>.vui_seq_parameters.video_format
.L3287:
	str	r7, [sp, #0]	@ PicHeightInSmp,
	mov	r3, r8	@, PicWidthInSmp
	ldr	r1, [r5, #44]	@, <variable>.vui_seq_parameters.sar_width
	ldr	r2, [r5, #48]	@, <variable>.vui_seq_parameters.sar_height
	bl	H264GetDar	@
	ldr	r3, [r5, #3952]	@ temp.7745, <variable>.num_ref_frames
	cmp	r3, #0	@ temp.7745,
	str	r0, [r5, #52]	@, <variable>.vui_seq_parameters.aspect_ratio
	beq	.L3291	@,
	cmp	r6, r3	@ size.7705, temp.7745
	movcs	r6, r3	@ size.7705, temp.7745
.L3291:
	ldr	r1, [r4, #0]	@ D.39458, <variable>.pstExtraData
	cmp	r6, #16	@ size.7705,
	movcs	r6, #16	@ size.7706,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L3312	@,
.L3292:
	cmp	r7, #1920	@ PicHeightInSmp,
	bcc	.L3294	@,
	cmp	r6, #6	@ size.7706,
	movcs	r6, #6	@ size.7706,
.L3294:
	add	r6, r6, #1	@ tmp540, size.7706,
	mov	r0, #0	@ D.39169,
	str	r6, [r5, #3980]	@ tmp540, <variable>.dpb_size_plus1
	b	.L3224	@
.L3312:
	ldr	r3, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3292	@,
	ldr	ip, [r1, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r2, [r1, #568]	@ MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r6, ip	@ size.7706, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r0, [r1, #572]	@ MaxHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L3313	@,
	cmp	r2, r8	@ MaxWidth, PicWidthInSmp
	cmpcs	r0, r7	@, MaxHeight, PicHeightInSmp
	bcs	.L3292	@,
	movw	r1, #:lower16:g_event_report	@ tmp533,
	movt	r1, #:upper16:g_event_report	@ tmp533,
	ldr	r3, [r1, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L3258	@,
	strh	r0, [sp, #38]	@ movhi	@ MaxHeight, para
	movw	r0, #52840	@ tmp536,
	strh	r2, [sp, #36]	@ movhi	@ MaxWidth, para
	mov	r1, #107	@,
	strh	r8, [sp, #32]	@ movhi	@ PicWidthInSmp, para
	add	r2, sp, #32	@,,
	strh	r7, [sp, #34]	@ movhi	@ PicHeightInSmp, para
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3311:
	mov	r0, r4	@, pH264Ctx
	add	r1, r5, #28	@, pSPS,
	bl	vui_parameters	@
	cmp	r0, #0	@,
	bne	.L3302	@,
	ldrb	ip, [r5, #40]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.bitstream_restriction_flag, <variable>.vui_seq_parameters.bitstream_restriction_flag
	cmp	ip, #0	@ <variable>.vui_seq_parameters.bitstream_restriction_flag,
	beq	.L3302	@,
	ldr	r2, [r5, #732]	@ D.39442, <variable>.vui_seq_parameters.max_dec_frame_buffering
	cmp	r6, r2	@ size.7705, D.39442
	bcc	.L3289	@,
	cmp	r2, #0	@ D.39442,
	bne	.L3290	@,
.L3289:
	movw	r1, #:lower16:.LC248	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC248	@,
	mov	r3, r6	@, size.7705
	bl	dprint_vfmw	@
.L3302:
	ldrb	r0, [r5, #43]	@ zero_extendqisi2	@ prephitmp.7680, <variable>.vui_seq_parameters.aspect_ratio_idc
	b	.L3287	@
.L3290:
	ldr	r6, [r5, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldrb	r0, [r5, #43]	@ zero_extendqisi2	@ prephitmp.7680, <variable>.vui_seq_parameters.aspect_ratio_idc
	cmp	r2, r6	@ D.39442, <variable>.num_ref_frames
	movcs	r6, r2	@ size.7705, D.39442
	b	.L3287	@
.L3310:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC243	@,
	movt	r1, #:upper16:.LC243	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC244	@,
	movt	r1, #:upper16:.LC244	@,
	str	r0, [r5, #3964]	@, <variable>.frame_crop_left_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC245	@,
	movt	r1, #:upper16:.LC245	@,
	str	r0, [r5, #3968]	@, <variable>.frame_crop_right_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC246	@,
	movt	r1, #:upper16:.LC246	@,
	str	r0, [r5, #3972]	@, <variable>.frame_crop_top_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	ip, [r5, #3972]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	ldr	r1, [r5, #3964]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	mov	r3, sl, asl #1	@ tmp486, temp,
	ldr	r2, [r5, #3968]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	mov	ip, ip, asl #1	@ tmp483, <variable>.frame_crop_top_offset,
	mov	r1, r1, asl #1	@ D.39398, <variable>.frame_crop_left_offset,
	mul	sl, sl, ip	@ D.39403, temp, tmp483
	rsb	ip, r1, r8	@ tmp480, D.39398, PicWidthInSmp
	sub	r2, ip, r2, asl #1	@ D.39401, tmp480, <variable>.frame_crop_right_offset,
	rsb	ip, sl, r7	@ tmp485, D.39403, PicHeightInSmp
	mls	r3, r0, r3, ip	@ D.39407, D.39397, tmp486, tmp485
	str	r0, [r5, #3976]	@ D.39397, <variable>.frame_crop_bottom_offset
	cmp	r2, #0	@ D.39401,
	cmpgt	r3, #0	@, D.39407,
	ble	.L3282	@,
	add	r0, r1, r2, lsr #1	@, tmp498, D.39398, D.39401,
	add	sl, sl, r3, lsr #1	@, tmp500, D.39403, D.39407,
	str	r0, [r5, #3992]	@ tmp498, <variable>.disp_center_x
	str	sl, [r5, #3996]	@ tmp500, <variable>.disp_center_y
	str	r2, [r5, #3984]	@ D.39401, <variable>.disp_width
	str	r3, [r5, #3988]	@ D.39407, <variable>.disp_height
	b	.L3284	@
.L3313:
	movw	r2, #:lower16:g_event_report	@ tmp518,
	movt	r2, #:upper16:g_event_report	@ tmp518,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L3258	@,
	str	r6, [sp, #32]	@ size.7706, para
	movw	ip, #52840	@ tmp523,
	ldr	lr, [r1, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	add	r2, sp, #32	@,,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #106	@,
	str	lr, [sp, #36]	@ <variable>.stChanOption.s32MaxRefFrameNum, para
	blx	r3	@ g_event_report
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3272:
	movw	r0, #:lower16:1824768	@ size,
	movt	r0, #:upper16:1824768	@ size,
	b	.L3278	@
.L3273:
	movw	r0, #:lower16:3110400	@ size,
	movt	r0, #:upper16:3110400	@ size,
	b	.L3278	@
.L3276:
	mov	r0, #12582912	@ size,
	b	.L3278	@
.L3274:
	movw	r0, #:lower16:6912000	@ size,
	movt	r0, #:upper16:6912000	@ size,
	b	.L3278	@
.L3271:
	movw	r0, #:lower16:912384	@ size,
	movt	r0, #:upper16:912384	@ size,
	b	.L3278	@
.L3270:
	movw	r0, #:lower16:345600	@ size,
	movt	r0, #:upper16:345600	@ size,
	b	.L3278	@
.L3269:
	movw	r0, #:lower16:152064	@ size,
	movt	r0, #:upper16:152064	@ size,
	b	.L3278	@
.L3268:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC238	@,
	movt	r1, #:upper16:.LC238	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3309:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC237	@,
	movt	r1, #:upper16:.LC237	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3295:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC236	@,
	movt	r1, #:upper16:.LC236	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39169,
	b	.L3224	@
.L3264:
	ldr	r3, [r5, #3960]	@ temp.7732, <variable>.pic_height_in_map_units_minus1
	strb	r2, [r5, #19]	@ <variable>.SeErrFlg, <variable>.mb_adaptive_frame_field_flag
	sub	r2, r3, #1	@ tmp544, temp.7732,
	cmp	r2, r7	@ tmp544, tmp436
	bhi	.L3295	@,
	ldr	r7, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	mov	sl, #1	@ temp,
	add	r3, r3, #1	@ prephitmp.7676, temp.7732,
	add	r8, r7, sl	@ prephitmp.7731, <variable>.pic_width_in_mbs_minus1,
	b	.L3296	@
.L3315:
	.align	2
.L3314:
	.word	.LANCHOR2+80
	.word	.LANCHOR2+96
	.word	.LANCHOR2+112
	.word	.LANCHOR2+176
	.fnend
	.size	ProcessSPS, .-ProcessSPS
	.align	2
	.global	H264_DecSPS
	.type	H264_DecSPS, %function
H264_DecSPS:
	.fnstart
.LFB1709:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, #8	@,
	.pad #28
	sub	sp, sp, #28	@,,
	movw	r2, #:lower16:.LC249	@,
	movt	r2, #:upper16:.LC249	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC250	@,
	movt	r1, #:upper16:.LC250	@,
	mov	r5, r0	@ D.39511,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC251	@,
	movt	r1, #:upper16:.LC251	@,
	mov	sl, r0	@ constrained_set0_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC252	@,
	movt	r1, #:upper16:.LC252	@,
	str	r0, [sp, #12]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC253	@,
	movt	r1, #:upper16:.LC253	@,
	str	r0, [sp, #8]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC254	@,
	movt	r2, #:upper16:.LC254	@,
	str	r0, [sp, #4]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC255	@,
	movt	r2, #:upper16:.LC255	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC256	@,
	movt	r1, #:upper16:.LC256	@,
	mov	r6, r0	@ D.39516,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r7, r0	@ seq_parameter_set_id,
	movw	r0, #52780	@ tmp159,
	ldr	r3, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3317	@,
	movw	r8, #13572	@ tmp161,
	ldr	r2, [r4, r8]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	r1, r2, #1	@ tmp162, <variable>.MaxSpsNum,
	cmp	r7, r1	@ seq_parameter_set_id, tmp162
	bhi	.L3334	@,
	cmp	r5, #100	@ profile_idc,
	mov	r8, r5	@ profile_idc, D.39511
	beq	.L3322	@,
	bhi	.L3325	@,
	cmp	r5, #77	@ profile_idc,
	beq	.L3322	@,
	cmp	r5, #88	@ profile_idc,
	beq	.L3323	@,
	cmp	r5, #66	@ profile_idc,
	bne	.L3320	@,
	movw	r1, #:lower16:.LC258	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC258	@,
	bl	dprint_vfmw	@
.L3322:
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.39516
	bls	.L3333	@,
.L3326:
	cmp	r6, #41	@ level_idc,
	bhi	.L3333	@,
	mov	fp, #4000	@ tmp179,
	movw	r6, #13580	@ tmp180,
	mul	r5, fp, r7	@ D.39545, tmp179, seq_parameter_set_id
	ldr	r9, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r3, r5, r9	@ D.39546, D.39545, <variable>.SPS
	ldrb	r9, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r9, #0	@ <variable>.is_valid,
	beq	.L3328	@,
.L3337:
	movw	r9, #:lower16:.LANCHOR1	@ tmp183,
	movt	r9, #:upper16:.LANCHOR1	@ tmp183,
	ldr	ip, [sp, #12]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	str	r8, [r9, #804]	@ profile_idc, sps_tmp.profile_idc
	add	r1, r9, #68	@, tmp183,
	ldr	r8, [sp, #4]	@, %sfp
	ldr	r3, [sp, #8]	@, %sfp
	strb	sl, [r9, #68]	@ constrained_set0_flag, sps_tmp.constrained_set0_flag
	strb	r8, [r9, #71]	@, sps_tmp.constrained_set3_flag
	strb	ip, [r9, #69]	@, sps_tmp.constrained_set1_flag
	strb	r3, [r9, #70]	@, sps_tmp.constrained_set2_flag
	str	r2, [r9, #808]	@ level_idc, sps_tmp.level_idc
	str	r7, [r9, #812]	@ seq_parameter_set_id, sps_tmp.seq_parameter_set_id
	bl	ProcessSPS	@
	subs	r8, r0, #0	@ D.39554,
	bne	.L3335	@,
	ldr	r1, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r0, r9, #68	@, tmp183,
	add	r1, r5, r1	@, D.39545, <variable>.SPS
	bl	SPSEqual	@
	cmp	r0, #0	@ D.39558
	bne	.L3336	@,
.L3319:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3333:
	mov	fp, #4000	@ tmp179,
	mov	r3, #41	@,
	mul	r5, fp, r7	@ D.39545, tmp179, seq_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC262	@,
	movw	r6, #13580	@ tmp180,
	movt	r1, #:upper16:.LC262	@,
	bl	dprint_vfmw	@
	ldr	r9, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r2, #41	@ level_idc,
	add	r3, r5, r9	@ D.39546, D.39545, <variable>.SPS
	ldrb	r9, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r9, #0	@ <variable>.is_valid,
	bne	.L3337	@,
.L3328:
	str	r8, [r3, #736]	@ profile_idc, <variable>.profile_idc
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r8, #1	@ tmp218,
	strb	sl, [r3, r5]	@ constrained_set0_flag, <variable>.constrained_set0_flag
	ldr	ip, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	r1, [sp, #12]	@, %sfp
	add	lr, ip, r5	@ tmp219, <variable>.SPS, D.39545
	strb	r1, [lr, #1]	@, <variable>.constrained_set1_flag
	ldr	r3, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	lr, [sp, #8]	@, %sfp
	add	ip, r3, r5	@ tmp225, <variable>.SPS, D.39545
	strb	lr, [ip, #2]	@, <variable>.constrained_set2_flag
	ldr	r1, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	ldr	ip, [sp, #4]	@, %sfp
	add	r3, r1, r5	@ tmp231, <variable>.SPS, D.39545
	strb	ip, [r3, #3]	@, <variable>.constrained_set3_flag
	ldr	lr, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r1, lr, r5	@ tmp237, <variable>.SPS, D.39545
	str	r2, [r1, #740]	@ level_idc, <variable>.level_idc
	ldr	ip, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r3, ip, r5	@ tmp242, <variable>.SPS, D.39545
	str	r7, [r3, #744]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r2, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r1, r5, r2	@, D.39545, <variable>.SPS
	bl	ProcessSPS	@
	cmp	r0, #0	@ D.39563
	bne	.L3338	@,
	ldr	r2, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r3, r2, r5	@ tmp265, <variable>.SPS, D.39545
	strb	r8, [r3, #24]	@ tmp218, <variable>.is_refreshed
	ldr	lr, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r5, lr, r5	@ tmp272, <variable>.SPS, D.39545
	strb	r8, [r5, #23]	@ tmp218, <variable>.is_valid
	b	.L3319	@
.L3317:
	mvn	r0, #0	@ D.39521,
	b	.L3319	@
.L3325:
	cmp	r5, #122	@ D.39511,
	beq	.L3324	@,
	cmp	r5, #144	@ D.39511,
	beq	.L3324	@,
	cmp	r5, #110	@ D.39511,
	beq	.L3324	@,
.L3320:
	mov	r2, r5	@, D.39511
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC261	@,
	movt	r1, #:upper16:.LC261	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r8, #100	@ profile_idc,
	mov	r2, r6	@ level_idc, D.39516
	bhi	.L3326	@,
	b	.L3333	@
.L3324:
	movw	r1, #:lower16:.LC260	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC260	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.39516
	bhi	.L3326	@,
	b	.L3333	@
.L3323:
	movw	r1, #:lower16:.LC259	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC259	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.39516
	bhi	.L3326	@,
	b	.L3333	@
.L3336:
	mov	lr, #1	@ tmp203,
	strb	lr, [r9, #91]	@ tmp203, sps_tmp.is_valid
	strb	lr, [r9, #92]	@ tmp203, sps_tmp.is_refreshed
	add	r1, r9, #68	@, tmp183,
	ldr	r0, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mov	r2, fp	@, tmp179
	add	r0, r5, r0	@, D.39545, <variable>.SPS
	bl	memmove	@
	mov	r0, r8	@ D.39521, D.39554
	b	.L3319	@
.L3335:
	mov	r3, r7	@, seq_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC263	@,
	movw	r2, #10232	@,
	movt	r1, #:upper16:.LC263	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39521,
	b	.L3319	@
.L3334:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC257	@,
	movt	r1, #:upper16:.LC257	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r8]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	ip, r2, #1	@ tmp166, <variable>.MaxSpsNum,
	cmp	r7, ip	@ seq_parameter_set_id, tmp166
	bls	.L3317	@,
	movw	lr, #:lower16:g_event_report	@ tmp168,
	movt	lr, #:upper16:g_event_report	@ tmp168,
	ldr	r3, [lr, #0]	@ g_event_report.750, g_event_report
	cmp	r3, #0	@ g_event_report.750,
	beq	.L3317	@,
	str	r2, [sp, #20]	@ <variable>.MaxSpsNum, para
	movw	r2, #52840	@ tmp171,
	str	r7, [sp, #16]	@ seq_parameter_set_id, para
	mov	r1, #109	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r2, sp, #16	@,,
	blx	r3	@ g_event_report.750
	mvn	r0, #0	@ D.39521,
	b	.L3319	@
.L3338:
	movw	r2, #10255	@,
	mov	r3, r7	@, seq_parameter_set_id
	mov	r0, r8	@, tmp218
	movw	r1, #:lower16:.LC263	@,
	movt	r1, #:upper16:.LC263	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	mvn	r0, #0	@ D.39521,
	add	r1, ip, r5	@ tmp251, <variable>.SPS, D.39545
	strb	r8, [r1, #24]	@ tmp218, <variable>.is_refreshed
	ldr	r2, [r4, r6]	@ <variable>.SPS, <variable>.SPS
	add	r5, r2, r5	@ tmp258, <variable>.SPS, D.39545
	strb	r9, [r5, #23]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3319	@
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
	movw	r1, #:lower16:.LC264	@,
	movt	r1, #:upper16:.LC264	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	movw	r6, #52780	@ tmp188,
	strb	r0, [r5, #0]	@, <variable>.entropy_coding_mode_flag
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3375	@,
.L3340:
	mvn	r0, #0	@ D.38494,
.L3343:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3375:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC265	@,
	movt	r1, #:upper16:.LC265	@,
	bl	u_1	@
	strb	r0, [r5, #1]	@, <variable>.pic_order_present_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3340	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC266	@,
	movt	r1, #:upper16:.LC266	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.38499,
	str	r0, [r5, #32]	@ D.38499, <variable>.num_slice_groups_minus1
	bne	.L3341	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3341	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC268	@,
	movt	r1, #:upper16:.LC268	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.38509,
	str	r0, [r5, #36]	@ D.38509, <variable>.num_ref_idx_l0_active_minus1
	bhi	.L3344	@,
	ldr	lr, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3344	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC270	@,
	movt	r1, #:upper16:.LC270	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.38515,
	str	r0, [r5, #40]	@ D.38515, <variable>.num_ref_idx_l1_active_minus1
	bhi	.L3346	@,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3347	@,
.L3346:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC271	@,
	movt	r1, #:upper16:.LC271	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38494,
	b	.L3343	@
.L3347:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC272	@,
	movt	r1, #:upper16:.LC272	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.weighted_pred_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3340	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC273	@,
	movt	r2, #:upper16:.LC273	@,
	bl	u_v	@
	cmp	r0, #2	@ D.38525,
	str	r0, [r5, #44]	@ D.38525, <variable>.weighted_bipred_idc
	bhi	.L3376	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC275	@,
	movt	r1, #:upper16:.LC275	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC276	@,
	movt	r1, #:upper16:.LC276	@,
	str	r0, [r5, #48]	@, <variable>.pic_init_qp_minus26
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC277	@,
	movt	r1, #:upper16:.LC277	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC278	@,
	movt	r1, #:upper16:.LC278	@,
	str	r0, [r5, #52]	@, <variable>.chroma_qp_index_offset
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC279	@,
	movt	r1, #:upper16:.LC279	@,
	strb	r0, [r5, #3]	@, <variable>.deblocking_filter_control_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC280	@,
	movt	r1, #:upper16:.LC280	@,
	strb	r0, [r5, #4]	@, <variable>.constrained_intra_pred_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r8, r0	@ D.38538,
	strb	r8, [r5, #17]	@ D.38538, <variable>.redundant_pic_cnt_present_flag
	cmp	r8, #0	@ D.38538,
	beq	.L3349	@,
	movw	r1, #:lower16:.LC281	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC281	@,
	bl	dprint_vfmw	@
.L3349:
	ldr	lr, [r5, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	add	r3, r4, #13504	@, pH264Ctx,
	mov	r8, #0	@ tmp225,
	add	r0, r3, #24	@,,
	str	r8, [r5, #60]	@ tmp225, <variable>.transform_8x8_mode_flag
	str	lr, [r5, #56]	@ <variable>.chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	strb	r8, [r5, #18]	@ tmp225, <variable>.pic_scaling_matrix_present_flag
	bl	BsResidBits	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r2, [ip, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	add	r1, r2, #3	@ tmp231, <variable>.nal_trail_zero_bit_num,
	cmp	r0, r1	@, tmp231
	bcs	.L3377	@,
.L3350:
	mov	r0, #0	@ D.38494,
	b	.L3343	@
.L3377:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC282	@,
	movt	r1, #:upper16:.LC282	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC283	@,
	movt	r1, #:upper16:.LC283	@,
	str	r0, [r5, #60]	@, <variable>.transform_8x8_mode_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.38553,
	strb	r0, [r5, #18]	@ D.38553, <variable>.pic_scaling_matrix_present_flag
	cmp	r0, #1	@ D.38553,
	beq	.L3378	@,
.L3351:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC285	@,
	movt	r1, #:upper16:.LC285	@,
	bl	se_v	@
	add	ip, r0, #12	@ tmp314, D.38639,
	str	r0, [r5, #56]	@ D.38639, <variable>.second_chroma_qp_index_offset
	cmp	ip, #24	@ tmp314,
	bhi	.L3371	@,
	movw	r3, #52780	@ tmp315,
	ldr	lr, [r4, r3]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	beq	.L3350	@,
.L3371:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC286	@,
	movt	r1, #:upper16:.LC286	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38494,
	b	.L3343	@
.L3341:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC267	@,
	movt	r1, #:upper16:.LC267	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:g_event_report	@ tmp198,
	movt	r2, #:upper16:g_event_report	@ tmp198,
	ldr	r3, [r2, #0]	@ g_event_report.709, g_event_report
	cmp	r3, #0	@ g_event_report.709,
	beq	.L3340	@,
	movw	ip, #52840	@ tmp199,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.709
	mvn	r0, #0	@ D.38494,
	b	.L3343	@
.L3344:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC269	@,
	movt	r1, #:upper16:.LC269	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38494,
	b	.L3343	@
.L3378:
	add	r9, r5, #1984	@ ivtmp.7908, pPPS,
	add	r7, sp, #16	@ ivtmp.7903,,
	add	r6, r5, #64	@, pPPS,
	str	r6, [sp, #8]	@, %sfp
	mov	sl, r9	@ ivtmp.7934, ivtmp.7908
	mov	fp, r9	@ ivtmp.7923, ivtmp.7908
	mov	r6, r8	@ i.7922, ivtmp.7909
.L3360:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	bl	u_1	@
	add	r1, r5, r6	@ tmp237, pPPS, i.7922
	mov	r2, #16	@,
	str	r0, [r7, #0]	@ D.38558, q4x4defaultflag
	mov	ip, r0	@ D.38558,
	strb	ip, [r1, #5]	@ D.38558, <variable>.pic_scaling_list_present_flag
	add	r0, r8, r9	@, ivtmp.7909, ivtmp.7908
	ldr	r3, [r7, #0]	@ tmp239, q4x4defaultflag
	cmp	r3, #1	@ tmp239,
	beq	.L3379	@,
	rsbs	ip, r6, #1	@ D.38581, i.7922
	movcc	ip, #0	@ D.38581
	cmp	r6, #0	@ i.7922,
	cmpne	r6, #3	@, i.7922,
	bne	.L3356	@,
	movw	lr, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	mov	lr, #4000	@,
	mla	r3, lr, r1, r3	@ D.38589,, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r1, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3380	@,
	ldr	r3, .L3384	@,
	cmp	ip, #0	@ D.38581,
	ldr	r1, .L3384+4	@,
	movne	r1, r3	@,
	bl	memcpy	@
.L3353:
	add	r6, r6, #1	@ i.7922, i.7922,
	ldr	lr, [sp, #8]	@, %sfp
	cmp	r6, #6	@ i.7922,
	add	r7, r7, #4	@ ivtmp.7903, ivtmp.7903,
	add	r0, lr, #64	@,,
	add	fp, fp, #16	@ ivtmp.7923, ivtmp.7923,
	add	r8, r8, #16	@ ivtmp.7909, ivtmp.7909,
	add	sl, sl, #16	@ ivtmp.7934, ivtmp.7934,
	str	r0, [sp, #8]	@, %sfp
	bne	.L3360	@,
	add	r8, r5, #2080	@, pPPS,
	ldr	fp, .L3384+8	@ tmp333,
	mov	r6, #0	@ ivtmp.7888,
	add	r9, r5, #448	@ ivtmp.7891, pPPS,
	add	r7, sp, #40	@ ivtmp.7893,,
	str	r8, [sp, #8]	@, %sfp
	mov	sl, r8	@ ivtmp.7887,
	mov	r8, r6	@ i, ivtmp.7888
	str	r5, [sp, #12]	@ pPPS, %sfp
.L3370:
	ldr	ip, [r5, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	mov	r3, #0	@ prephitmp.7869,
	cmp	ip, #1	@ <variable>.transform_8x8_mode_flag,
	movne	r1, #0	@,
	strne	r1, [r7, #0]	@, q8x8defaultflag
	beq	.L3381	@,
.L3362:
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r2, [sp, #8]	@, %sfp
	strb	r3, [lr, #11]	@ prephitmp.7869, <variable>.pic_scaling_list_present_flag
	add	r0, r2, r6	@,, ivtmp.7888
	ldr	r1, [r7, #0]	@ tmp284, q8x8defaultflag
	mov	r2, #64	@,
	cmp	r1, #1	@ tmp284,
	beq	.L3382	@,
	movw	ip, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	mov	lr, #4000	@,
	mla	r3, lr, r1, r3	@ temp.7928,, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	ip, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	ip, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3383	@,
	cmp	r8, #0	@ i,
	ldr	r1, .L3384+12	@,
	moveq	r1, fp	@, tmp333
	bl	memcpy	@
.L3364:
	add	r8, r8, #1	@ i, i,
	ldr	r0, [sp, #12]	@, %sfp
	cmp	r8, #2	@ i,
	add	sl, sl, #64	@ ivtmp.7887, ivtmp.7887,
	add	r1, r0, #1	@,,
	add	r6, r6, #64	@ ivtmp.7888, ivtmp.7888,
	add	r9, r9, #256	@ ivtmp.7891, ivtmp.7891,
	add	r7, r7, #4	@ ivtmp.7893, ivtmp.7893,
	str	r1, [sp, #12]	@, %sfp
	beq	.L3351	@,
	b	.L3370	@
.L3356:
	mov	r0, sl	@, ivtmp.7934
	sub	r1, sl, #16	@, ivtmp.7934,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3353	@
.L3379:
	mov	r2, fp	@, ivtmp.7923
	ldr	r1, [sp, #8]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	add	r3, r3, #15	@,,
	str	r7, [sp, #0]	@ ivtmp.7903,
	bl	Scaling_List	@
	ldr	r2, [r7, #0]	@ tmp240, q4x4defaultflag
	cmp	r2, #1	@ tmp240,
	bne	.L3353	@,
	ldr	lr, .L3384+4	@,
	cmp	r6, #2	@ i.7922,
	ldr	r1, .L3384	@,
	mov	r0, fp	@, ivtmp.7923
	mov	r2, #16	@,
	movhi	r1, lr	@,
	bl	memcpy	@
	b	.L3353	@
.L3376:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC274	@,
	movt	r1, #:upper16:.LC274	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38494,
	b	.L3343	@
.L3380:
	add	r2, r3, #2672	@ tmp261, D.38589,
	add	r0, r8, r9	@, ivtmp.7909, ivtmp.7908
	add	ip, r2, #8	@ tmp261, tmp261,
	mov	r2, #16	@,
	add	r1, ip, r8	@, tmp261, ivtmp.7909
	bl	memcpy	@
	b	.L3353	@
.L3383:
	ldr	r1, [sp, #8]	@, %sfp
	add	r2, r3, #2768	@ tmp299, temp.7928,
	add	r3, r2, #8	@ tmp299, tmp299,
	mov	r2, #64	@,
	add	r0, r1, r6	@,, ivtmp.7888
	add	r1, r3, r6	@, tmp299, ivtmp.7888
	bl	memcpy	@
	b	.L3364	@
.L3382:
	mov	r3, r2	@,
	mov	r1, r9	@, ivtmp.7891
	mov	r2, sl	@, ivtmp.7887
	mov	r0, r4	@, pH264Ctx
	str	r7, [sp, #0]	@ ivtmp.7893,
	bl	Scaling_List	@
	ldr	r3, [r7, #0]	@ tmp285, q8x8defaultflag
	cmp	r3, #1	@ tmp285,
	bne	.L3364	@,
	cmp	r8, #0	@ i,
	ldr	r1, .L3384+12	@,
	mov	r2, #64	@,
	mov	r0, sl	@, ivtmp.7887
	moveq	r1, fp	@, tmp333
	bl	memcpy	@
	b	.L3364	@
.L3381:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC284	@,
	movt	r1, #:upper16:.LC284	@,
	bl	u_1	@
	uxtb	r3, r0	@ prephitmp.7869, D.38607
	str	r0, [r7, #0]	@ D.38607, q8x8defaultflag
	b	.L3362	@
.L3385:
	.align	2
.L3384:
	.word	.LANCHOR2+80
	.word	.LANCHOR2+96
	.word	.LANCHOR2+112
	.word	.LANCHOR2+176
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
	movw	r1, #:lower16:.LC287	@,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r1, #:upper16:.LC287	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r4, #13576	@ tmp145,
	mov	r5, r0	@ pic_parameter_set_id,
	ldr	r0, [r6, r4]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r0, #1	@ tmp146, <variable>.MaxPpsNum,
	cmp	r5, r3	@ pic_parameter_set_id, tmp146
	bhi	.L3397	@,
	mov	r0, r6	@, pH264Ctx
	movw	r1, #:lower16:.LC289	@,
	movt	r1, #:upper16:.LC289	@,
	bl	ue_v	@
	movw	ip, #13572	@ tmp158,
	ldr	r1, [r6, ip]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	mov	r3, r0	@ seq_parameter_set_id,
	sub	r0, r1, #1	@ tmp159, <variable>.MaxSpsNum,
	cmp	r3, r0	@ seq_parameter_set_id, tmp159
	bhi	.L3398	@,
	movw	ip, #13580	@ tmp163,
	mov	r1, #4000	@ tmp165,
	ldr	r0, [r6, ip]	@ <variable>.SPS, <variable>.SPS
	mla	r2, r1, r3, r0	@ tmp166, tmp165, seq_parameter_set_id, <variable>.SPS
	ldrb	lr, [r2, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	beq	.L3399	@,
	mov	sl, #2208	@ tmp169,
	movw	r7, #13584	@ tmp170,
	mul	r4, sl, r5	@ D.38458, tmp169, pic_parameter_set_id
	ldr	r8, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r2, r4, r8	@ D.38459, D.38458, <variable>.PPS
	ldrb	r8, [r2, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r8, #0	@ <variable>.is_valid,
	bne	.L3400	@,
	str	r5, [r2, #24]	@ pic_parameter_set_id, <variable>.pic_parameter_set_id
	mov	r0, r6	@, pH264Ctx
	ldr	r1, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	ip, r1, r4	@ tmp201, <variable>.PPS, D.38458
	str	r3, [ip, #28]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r2, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r1, r4, r2	@, D.38458, <variable>.PPS
	bl	ProcessPPS	@
	cmp	r0, #0	@ D.38472
	bne	.L3401	@,
	ldr	ip, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	mov	lr, #1	@ tmp226,
	add	r2, ip, r4	@ tmp224, <variable>.PPS, D.38458
	strb	lr, [r2, #20]	@ tmp226, <variable>.is_refreshed
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r4, r3, r4	@ tmp231, <variable>.PPS, D.38458
	strb	lr, [r4, #19]	@ tmp226, <variable>.is_valid
.L3389:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L3400:
	movw	r8, #:lower16:.LANCHOR1	@ tmp173,
	movt	r8, #:upper16:.LANCHOR1	@ tmp173,
	add	r2, r8, #4064	@, tmp173,
	mov	lr, #4096	@ tmp175,
	str	r5, [r8, #4092]	@ pic_parameter_set_id, pps_tmp.pic_parameter_set_id
	add	r1, r2, #4	@,,
	mov	r0, r6	@, pH264Ctx
	str	r3, [r8, lr]	@ seq_parameter_set_id, pps_tmp.seq_parameter_set_id
	bl	ProcessPPS	@
	subs	r5, r0, #0	@ D.38463,
	bne	.L3402	@,
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r0, r8, #4064	@, tmp173,
	add	r0, r0, #4	@,,
	add	r1, r4, r3	@, D.38458, <variable>.PPS
	bl	PPSEqual	@
	cmp	r0, #0	@ D.38467
	beq	.L3389	@,
	mov	lr, #1	@ tmp187,
	strb	lr, [r8, #4087]	@ tmp187, pps_tmp.is_valid
	strb	lr, [r8, #4088]	@ tmp187, pps_tmp.is_refreshed
	add	r1, r8, #4064	@, tmp173,
	ldr	ip, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r1, r1, #4	@,,
	mov	r2, sl	@, tmp169
	add	r0, r4, ip	@, D.38458, <variable>.PPS
	bl	memmove	@
	mov	r0, r5	@ D.38442, D.38463
	b	.L3389	@
.L3397:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC288	@,
	movt	r1, #:upper16:.LC288	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r1, r2, #1	@ tmp150, <variable>.MaxPpsNum,
	cmp	r5, r1	@ pic_parameter_set_id, tmp150
	bhi	.L3403	@,
.L3388:
	mvn	r0, #0	@ D.38442,
	b	.L3389	@
.L3403:
	movw	ip, #:lower16:g_event_report	@ tmp152,
	movt	ip, #:upper16:g_event_report	@ tmp152,
	ldr	r3, [ip, #0]	@ g_event_report.707, g_event_report
	cmp	r3, #0	@ g_event_report.707,
	beq	.L3388	@,
	str	r2, [sp, #4]	@ <variable>.MaxPpsNum, para
	movw	r2, #52840	@ tmp155,
	str	r5, [sp, #0]	@ pic_parameter_set_id, para
	mov	r1, #110	@,
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	mov	r2, sp	@,
	blx	r3	@ g_event_report.707
	mvn	r0, #0	@ D.38442,
	b	.L3389	@
.L3402:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC291	@,
	movt	r1, #:upper16:.LC291	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38442,
	b	.L3389	@
.L3398:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC257	@,
	movt	r1, #:upper16:.LC257	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38442,
	b	.L3389	@
.L3399:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC290	@,
	movt	r1, #:upper16:.LC290	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38442,
	b	.L3389	@
.L3401:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC291	@,
	movt	r1, #:upper16:.LC291	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	mov	r2, #1	@ tmp212,
	mvn	r0, #0	@ D.38442,
	add	ip, r1, r4	@ tmp210, <variable>.PPS, D.38458
	strb	r2, [ip, #20]	@ tmp212, <variable>.is_refreshed
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r4, r3, r4	@ tmp217, <variable>.PPS, D.38458
	strb	r8, [r4, #19]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3389	@
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
	movw	r1, #:lower16:.LC292	@,
	movt	r1, #:upper16:.LC292	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r1, #13576	@ tmp160,
	mov	r5, r0	@ tmp_pic_parameter_set_id,
	ldr	r0, [r4, r1]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r0, #1	@ tmp161, <variable>.MaxPpsNum,
	cmp	r5, r3	@ tmp_pic_parameter_set_id, tmp161
	bhi	.L3405	@,
	movw	ip, #52780	@ tmp163,
	ldr	r2, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3405	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp_pic_parameter_set_id
	bl	PPSSPSCheckTmpId	@
	cmp	r0, #0	@,
	bne	.L3432	@,
	movw	r3, #13584	@ tmp168,
	mov	r6, #2208	@ tmp170,
	ldr	ip, [r4, r3]	@ <variable>.PPS, <variable>.PPS
	movw	r2, #20683	@ tmp177,
	movw	lr, #20692	@ tmp167,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r1, #13580	@ tmp172,
	str	r5, [r4, lr]	@ tmp_pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mla	r6, r6, r5, ip	@ pPPS, tmp170, tmp_pic_parameter_set_id, <variable>.PPS
	ldr	r3, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	mov	r5, #4000	@ tmp175,
	ldr	lr, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, lr, r3	@ pSPS, tmp175, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L3409	@,
	ldr	r0, [r5, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	cmp	r0, #0	@ <variable>.num_ref_frames,
	bne	.L3410	@,
.L3409:
	movw	ip, #20680	@ tmp180,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L3410	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC295	@,
	movt	r1, #:upper16:.LC295	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3410:
	ldr	lr, [r5, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC296	@,
	movt	r2, #:upper16:.LC296	@,
	add	r1, lr, #4	@, <variable>.log2_max_frame_num_minus4,
	bl	u_v	@
	movw	r1, #52780	@ tmp187,
	ldr	r3, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20700	@ tmp186,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.37884, <variable>.CurrSlice.frame_num
	bne	.L3411	@,
	movw	r8, #20683	@ tmp189,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3433	@,
.L3412:
	movw	r7, #20681	@ tmp195,
	movw	r8, #20682	@ tmp198,
	mov	r3, #0	@ tmp196,
	strb	r3, [r4, r7]	@ tmp196, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, r8]	@ tmp196, <variable>.CurrSlice.bottom_field_flag
	ldrb	r0, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r0, r3	@ <variable>.frame_mbs_only_flag,
	beq	.L3434	@,
	ldr	r2, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	ldr	r1, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	ip, r2, #1	@ tmp282, <variable>.pic_height_in_map_units_minus1,
	mla	r2, r1, ip, ip	@ D.37910, <variable>.pic_width_in_mbs_minus1, tmp282, tmp282
.L3430:
	mov	r1, #1	@ iftmp.678,
.L3417:
	cmp	r3, #0	@ prephitmp.8025,
	mul	r2, r1, r2	@ pic_size, iftmp.678, D.37910
	movne	r3, #0	@ prephitmp.7995,
	bne	.L3419	@,
	ldrb	r1, [r5, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	subs	r3, r1, #0	@ prephitmp.7995, <variable>.mb_adaptive_frame_field_flag,
	movne	r3, #1	@ prephitmp.7995
.L3419:
	movw	ip, #20681	@ tmp219,
	movw	r0, #20684	@ tmp217,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, r0]	@ prephitmp.7995, <variable>.CurrSlice.MbaffFrameFlag
	cmp	lr, #1	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L3420	@,
	cmp	r3, #1	@ prephitmp.7995,
	beq	.L3420	@,
	movw	r0, #20732	@ tmp225,
	ldr	lr, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r2, lr	@ pic_size, <variable>.CurrSlice.first_mb_in_slice
	bls	.L3435	@,
.L3422:
	movw	r8, #20683	@ tmp228,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3436	@,
.L3423:
	movw	r7, #19796	@ tmp236,
	movw	r8, #19800	@ tmp238,
	mov	lr, #0	@ tmp237,
	str	lr, [r4, r8]	@ tmp237, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	str	lr, [r4, r7]	@ tmp237, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r5, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r1, #0	@ <variable>.pic_order_cnt_type,
	beq	.L3437	@,
.L3425:
	movw	r7, #19844	@ tmp250,
	movw	r8, #19848	@ tmp252,
	mov	r1, #0	@ tmp251,
	str	r1, [r4, r8]	@ tmp251, <variable>.CurrPOC.delta_pic_order_cnt
	str	r1, [r4, r7]	@ tmp251, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r3, [r5, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r3, #1	@ <variable>.pic_order_cnt_type,
	beq	.L3438	@,
.L3426:
	movw	r5, #52780	@ tmp263,
	ldr	r2, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3411	@,
	ldrb	r3, [r6, #17]	@ zero_extendqisi2	@ <variable>.redundant_pic_cnt_present_flag, <variable>.redundant_pic_cnt_present_flag
	cmp	r3, #0	@ <variable>.redundant_pic_cnt_present_flag,
	beq	.L3427	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC308	@,
	movt	r1, #:upper16:.LC308	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3428	@,
	ldr	r1, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3428	@,
.L3427:
	mov	r0, r4	@, pH264Ctx
	bl	IsNewPic	@
	movw	r2, #20685	@ tmp272,
	uxtb	ip, r0	@ D.37982,
	strb	ip, [r4, r2]	@ D.37982, <variable>.CurrSlice.new_pic_flag
	cmp	ip, #0	@ D.37982,
	bne	.L3429	@,
	movw	lr, #22368	@ tmp275,
	movw	r0, #20732	@ tmp274,
	ldr	r3, [r4, lr]	@ <variable>.PrevSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	ldr	r1, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r1, r3	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	bls	.L3439	@,
.L3429:
	mov	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3411:
	mvn	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3434:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC298	@,
	movt	r1, #:upper16:.LC298	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.37900,
	strb	r3, [r4, r7]	@ D.37900, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ D.37900,
	bne	.L3440	@,
.L3415:
	ldr	ip, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r1, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r2, ip, #1	@ tmp211, <variable>.pic_width_in_mbs_minus1,
	cmp	lr, #0	@ <variable>.frame_mbs_only_flag,
	mla	r2, r1, r2, r2	@ D.37910, <variable>.pic_height_in_map_units_minus1, tmp211, tmp211
	moveq	r1, #2	@ iftmp.678,
	beq	.L3417	@,
	movw	r3, #20681	@ tmp214,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8025, <variable>.CurrSlice.field_pic_flag
	b	.L3430	@
.L3433:
	cmp	r0, #0	@ D.37884,
	movw	ip, #20696	@ tmp191,
	str	r0, [r4, ip]	@ D.37884, <variable>.CurrSlice.prev_frame_num
	beq	.L3412	@,
	movw	r1, #:lower16:.LC297	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC297	@,
	bl	dprint_vfmw	@
	b	.L3412	@
.L3420:
	movw	r1, #20732	@ tmp222,
	ldr	r3, [r4, r1]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r3, r2, lsr #1	@ <variable>.CurrSlice.first_mb_in_slice, pic_size,
	bcc	.L3422	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC300	@,
	movt	r1, #:upper16:.LC300	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3405:
	mov	r2, r5	@, tmp_pic_parameter_set_id
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC293	@,
	movt	r1, #:upper16:.LC293	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3437:
	ldr	ip, [r5, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC304	@,
	movt	r2, #:upper16:.LC304	@,
	add	r1, ip, #4	@, <variable>.log2_max_pic_order_cnt_lsb_minus4,
	bl	u_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.pic_order_cnt_lsb
	ldrb	r0, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r0, #0	@ <variable>.pic_order_present_flag,
	beq	.L3425	@,
	movw	r2, #20681	@ tmp246,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r7, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3425	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC305	@,
	movt	r1, #:upper16:.LC305	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	b	.L3425	@
.L3438:
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	cmp	lr, #0	@ <variable>.delta_pic_order_always_zero_flag,
	bne	.L3426	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC306	@,
	movt	r1, #:upper16:.LC306	@,
	bl	se_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldrb	r5, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r5, #1	@ <variable>.pic_order_present_flag,
	bne	.L3426	@,
	movw	ip, #20681	@ tmp259,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3426	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC307	@,
	movt	r1, #:upper16:.LC307	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt
	b	.L3426	@
.L3435:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC301	@,
	movt	r1, #:upper16:.LC301	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3436:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC302	@,
	movt	r1, #:upper16:.LC302	@,
	bl	ue_v	@
	movw	r2, #20720	@ tmp231,
	cmp	r0, #65536	@ D.37937,
	str	r0, [r4, r2]	@ D.37937, <variable>.CurrSlice.idr_pic_id
	bcs	.L3424	@,
	movw	r3, #52780	@ tmp233,
	ldr	ip, [r4, r3]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	beq	.L3423	@,
.L3424:
	movw	r1, #:lower16:.LC303	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC303	@,
	bl	dprint_vfmw	@
	b	.L3423	@
.L3440:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC299	@,
	movt	r1, #:upper16:.LC299	@,
	bl	u_1	@
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ prephitmp.8025, <variable>.CurrSlice.field_pic_flag
	strb	r0, [r4, r8]	@, <variable>.CurrSlice.bottom_field_flag
	b	.L3415	@
.L3432:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC294	@,
	movt	r1, #:upper16:.LC294	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3428:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC309	@,
	movt	r1, #:upper16:.LC309	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_event_report	@ tmp270,
	movt	r0, #:upper16:g_event_report	@ tmp270,
	ldr	r3, [r0, #0]	@ g_event_report.681, g_event_report
	cmp	r3, #0	@ g_event_report.681,
	beq	.L3411	@,
	movw	lr, #52840	@ tmp271,
	mov	r1, #102	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.681
	mvn	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3439:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC310	@,
	movt	r1, #:upper16:.LC310	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	cmp	r1, #0	@ save
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	moveq	r6, r1	@ MMCONum.8066, save
	movweq	r7, #52780	@ tmp297,
	beq	.L3443	@,
	mov	r5, #0	@ MMCONum,
	movw	r9, #26380	@ tmp284,
	movw	sl, #2004	@ tmp286,
	movw	fp, #52780	@ tmp291,
	b	.L3444	@
.L3446:
	cmp	r3, #2	@ prephitmp.8042,
	beq	.L3477	@,
.L3447:
	cmp	r3, #3	@ prephitmp.8042,
	cmpne	r3, #6	@, prephitmp.8042,
	beq	.L3478	@,
.L3448:
	cmp	r3, #4	@ prephitmp.8042,
	beq	.L3479	@,
.L3449:
	cmp	r3, #6	@ prephitmp.8042,
	bhi	.L3450	@,
.L3481:
	ldr	lr, [r4, fp]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3450	@,
	cmp	r3, #0	@ prephitmp.8042,
	beq	.L3453	@,
	add	r5, r5, #1	@ MMCONum, MMCONum,
	cmp	r5, #100	@ MMCONum,
	beq	.L3480	@,
.L3444:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC312	@,
	movt	r1, #:upper16:.LC312	@,
	ldr	r8, [r4, r9]	@ D.37713, <variable>.CurrMarkIdx
	bl	ue_v	@
	mov	r7, r5, asl #2	@ tmp282, MMCONum,
	add	ip, r7, r5	@ tmp153, tmp282, MMCONum
	mul	r2, sl, r8	@ tmp155, tmp286, D.37713
	add	r1, r2, ip, asl #2	@, tmp157, tmp155, tmp153,
	mov	r3, r0	@ prephitmp.8042,
	cmp	r0, #1	@ prephitmp.8042,
	cmpne	r0, #3	@, prephitmp.8042,
	add	r0, r1, r4	@ tmp158, tmp157, pH264Ctx
	add	r6, r0, #22272	@ tmp159, tmp158,
	add	r6, r6, #96	@ tmp159, tmp159,
	str	r3, [r6, #8]	@ prephitmp.8042, <variable>.memory_management_control_operation
	bne	.L3446	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC313	@,
	movt	r1, #:upper16:.LC313	@,
	bl	ue_v	@
	ldr	r3, [r6, #8]	@ prephitmp.8042, <variable>.memory_management_control_operation
	cmp	r3, #2	@ prephitmp.8042,
	str	r0, [r6, #12]	@, <variable>.difference_of_pic_nums_minus1
	bne	.L3447	@,
.L3477:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC314	@,
	movt	r1, #:upper16:.LC314	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp194, tmp286, D.37713
	add	r1, r7, r5	@ tmp192, tmp282, MMCONum
	add	ip, r3, r1, asl #2	@, tmp196, tmp194, tmp192,
	add	r2, ip, r4	@ tmp197, tmp196, pH264Ctx
	add	r1, r2, #22272	@ tmp208, tmp197,
	add	r3, r1, #96	@ tmp208, tmp208,
	add	r1, r1, #104	@ tmp198, tmp198,
	ldr	r3, [r3, #8]	@ prephitmp.8042, <variable>.memory_management_control_operation
	cmp	r3, #3	@ prephitmp.8042,
	cmpne	r3, #6	@, prephitmp.8042,
	str	r0, [r1, #8]	@, <variable>.long_term_pic_num
	bne	.L3448	@,
.L3478:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC315	@,
	movt	r1, #:upper16:.LC315	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp222, tmp286, D.37713
	add	r1, r7, r5	@ tmp220, tmp282, MMCONum
	add	ip, r3, r1, asl #2	@, tmp224, tmp222, tmp220,
	add	r2, ip, r4	@ tmp225, tmp224, pH264Ctx
	add	r3, r2, #22272	@ tmp236, tmp225,
	add	ip, r3, #96	@ tmp236, tmp236,
	add	r2, r3, #104	@ tmp226, tmp226,
	ldr	r3, [ip, #8]	@ prephitmp.8042, <variable>.memory_management_control_operation
	cmp	r3, #4	@ prephitmp.8042,
	str	r0, [r2, #12]	@, <variable>.long_term_frame_idx
	bne	.L3449	@,
.L3479:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC316	@,
	movt	r1, #:upper16:.LC316	@,
	bl	ue_v	@
	mul	r8, sl, r8	@ tmp243, tmp286, D.37713
	add	r1, r7, r5	@ tmp241, tmp282, MMCONum
	add	ip, r8, r1, asl #2	@, tmp245, tmp243, tmp241,
	add	r2, ip, r4	@ tmp246, tmp245, pH264Ctx
	add	r3, r2, #22272	@ tmp257, tmp246,
	add	ip, r3, #96	@ tmp257, tmp257,
	add	r2, r3, #112	@ tmp247, tmp247,
	ldr	r3, [ip, #8]	@ prephitmp.8042, <variable>.memory_management_control_operation
	cmp	r3, #6	@ prephitmp.8042,
	str	r0, [r2, #8]	@, <variable>.max_long_term_frame_idx_plus1
	bls	.L3481	@,
.L3450:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC317	@,
	movt	r1, #:upper16:.LC317	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37712,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3453:
	mov	r0, #0	@ D.37712,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3443:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC312	@,
	movt	r1, #:upper16:.LC312	@,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.37756
	moveq	r8, #1	@, D.37756
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3482	@,
.L3454:
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3483	@,
.L3455:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp275, D.37756
	cmp	r8, #0	@ tmp275,
	bne	.L3484	@,
.L3456:
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3485	@,
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3459	@,
.L3458:
	ldr	r0, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3459	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3453	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC312	@,
	movt	r1, #:upper16:.LC312	@,
	add	r6, r6, #1	@ tmp298, MMCONum.8066,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.37756
	moveq	r8, #1	@, D.37756
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3486	@,
.L3465:
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3487	@,
.L3466:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp311, D.37756
	cmp	r8, #0	@ tmp311,
	bne	.L3488	@,
.L3467:
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3473	@,
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3459	@,
.L3474:
	ldr	r3, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3459	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3453	@,
	add	r6, r6, #1	@ MMCONum.8066, tmp298,
	cmp	r6, #100	@ MMCONum.8066,
	bne	.L3443	@,
.L3476:
	mvn	r0, #0	@ D.37712,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3480:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC311	@,
	movt	r1, #:upper16:.LC311	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37712,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3484:
	movw	r1, #:lower16:.LC315	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC315	@,
	bl	ue_v	@
	b	.L3456	@
.L3482:
	movw	r1, #:lower16:.LC313	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC313	@,
	bl	ue_v	@
	b	.L3454	@
.L3488:
	movw	r1, #:lower16:.LC315	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC315	@,
	bl	ue_v	@
	b	.L3467	@
.L3486:
	movw	r1, #:lower16:.LC313	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC313	@,
	bl	ue_v	@
	b	.L3465	@
.L3485:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC316	@,
	movt	r1, #:upper16:.LC316	@,
	bl	ue_v	@
	b	.L3458	@
.L3483:
	movw	r1, #:lower16:.LC314	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC314	@,
	bl	ue_v	@
	b	.L3455	@
.L3487:
	movw	r1, #:lower16:.LC314	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC314	@,
	bl	ue_v	@
	b	.L3466	@
.L3473:
	movw	r1, #:lower16:.LC316	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC316	@,
	bl	ue_v	@
	b	.L3474	@
.L3459:
	movw	r1, #:lower16:.LC317	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC317	@,
	bl	dprint_vfmw	@
	b	.L3476	@
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
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r8, #0	@ <variable>.CurrSlice.new_pic_flag,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r6, [r0, r3]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	bne	.L3490	@,
	movw	ip, #2004	@ tmp158,
	mov	r5, r6	@ tmpMarkIdx.8091, tmpMarkIdx
	mla	r2, ip, r6, r0	@ tmp159, tmp158, tmpMarkIdx, pH264Ctx
	add	r7, r2, #22272	@ tmp160, tmp159,
	add	r7, r7, #96	@ tmp160, tmp160,
	ldrb	r1, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L3493	@,
	movw	lr, #20683	@ tmp162,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3502	@,
.L3494:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC321	@,
	movt	r1, #:upper16:.LC321	@,
	bl	u_1	@
	movw	r2, #2004	@ tmp188,
	mla	r5, r2, r5, r4	@ tmp189, tmp188, tmpMarkIdx.8091, pH264Ctx
	movw	r1, #:lower16:.LC322	@,
	movt	r1, #:upper16:.LC322	@,
	add	ip, r5, #22272	@ tmp190, tmp189,
	add	r5, ip, #96	@ tmp190, tmp190,
	uxtb	r2, r0	@ D.37808,
	mov	r0, #16	@,
	strb	r2, [r5, #7]	@ D.37808, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	dprint_vfmw	@
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r1, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L3503	@,
.L3496:
	mov	r0, #0	@ D.37818,
.L3495:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L3490:
	movw	lr, #20683	@ tmp162,
	rsbs	r5, r6, #1	@ tmpMarkIdx.8091, tmpMarkIdx
	movcc	r5, #0	@ tmpMarkIdx.8091
	str	r5, [r0, r3]	@ tmpMarkIdx.8091, <variable>.CurrMarkIdx
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	bne	.L3494	@,
.L3502:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC318	@,
	movt	r1, #:upper16:.LC318	@,
	bl	u_1	@
	movw	r3, #2004	@ tmp167,
	mla	r2, r3, r5, r4	@ tmp168, tmp167, tmpMarkIdx.8091, pH264Ctx
	movw	r1, #:lower16:.LC319	@,
	movt	r1, #:upper16:.LC319	@,
	add	r5, r2, #22272	@ tmp169, tmp168,
	add	r5, r5, #96	@ tmp169, tmp169,
	strb	r0, [r5, #5]	@, <variable>.no_output_of_prior_pics_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@, <variable>.no_output_of_prior_pics_flag
	movw	r1, #:lower16:.LC320	@,
	movt	r1, #:upper16:.LC320	@,
	strb	r0, [r5, #6]	@, <variable>.long_term_reference_flag
	mov	r0, #16	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37818,
	b	.L3495	@
.L3493:
	movw	r1, #20683	@ tmp215,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3504	@,
	movw	r1, #:lower16:.LC321	@,
	movt	r1, #:upper16:.LC321	@,
	ldrb	r5, [r7, #7]	@ zero_extendqisi2	@ D.37833, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	u_1	@
	cmp	r5, r0	@ D.37833,
	bne	.L3505	@,
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L3496	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, <variable>.CurrSlice.new_pic_flag
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	DecMMCO	@
.L3503:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	DecMMCO	@
	cmn	r0, #1	@ D.37814,
	mov	r7, r0	@ D.37814,
	movne	r3, #1	@ tmp213,
	movne	r0, #0	@ D.37818,
	strneb	r3, [r5, #4]	@ tmp213, <variable>.is_valid
	bne	.L3495	@,
	movw	lr, #26380	@ tmp206,
	mov	r0, #0	@ tmp204,
	movw	r1, #:lower16:.LC323	@,
	strb	r0, [r5, #4]	@ tmp204, <variable>.is_valid
	movt	r1, #:upper16:.LC323	@,
	mov	r0, #1	@,
	str	r6, [r4, lr]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.37818, D.37814
	b	.L3495	@
.L3504:
	movw	r1, #:lower16:.LC318	@,
	movt	r1, #:upper16:.LC318	@,
	ldrb	r5, [r7, #5]	@ zero_extendqisi2	@ D.37821, <variable>.no_output_of_prior_pics_flag
	bl	u_1	@
	cmp	r5, r0	@ D.37821,
	bne	.L3506	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC319	@,
	movt	r1, #:upper16:.LC319	@,
	ldrb	r4, [r7, #6]	@ zero_extendqisi2	@ D.37827, <variable>.long_term_reference_flag
	bl	u_1	@
	cmp	r4, r0	@ D.37827,
	beq	.L3496	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC325	@,
	movt	r1, #:upper16:.LC325	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37818,
	b	.L3495	@
.L3505:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC326	@,
	movt	r1, #:upper16:.LC326	@,
	bl	dprint_vfmw	@
	movw	r0, #52784	@ tmp243,
	ldr	ip, [r4, r0]	@ <variable>.TotalNal, <variable>.TotalNal
	movw	r1, #52804	@ tmp239,
	movw	r3, #52820	@ tmp241,
	ldr	r2, [r4, r1]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	ldr	r3, [r4, r3]	@ <variable>.SliceNumInPic, <variable>.SliceNumInPic
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC327	@,
	movt	r1, #:upper16:.LC327	@,
	str	ip, [sp, #0]	@ <variable>.TotalNal,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37818,
	b	.L3495	@
.L3506:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC324	@,
	movt	r1, #:upper16:.LC324	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37818,
	b	.L3495	@
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
	movw	r9, #13584	@ tmp163,
	movw	r6, #20692	@ tmp164,
	ldr	r4, [r0, r9]	@ <variable>.PPS, <variable>.PPS
	ldr	ip, [r0, r6]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	fp, #2208	@ tmp167,
	movw	r1, #13580	@ tmp169,
	mov	r7, #4000	@ tmp172,
	ldr	r3, [r0, r1]	@ <variable>.SPS, <variable>.SPS
	movw	r1, #:lower16:.LC328	@,
	mla	fp, fp, ip, r4	@ pPPS, tmp167, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movt	r1, #:upper16:.LC328	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r6, #20744	@ tmp175,
	mov	r4, #1	@ tmp176,
	ldr	r2, [fp, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp172, <variable>.seq_parameter_set_id, <variable>.SPS
	bl	ue_v	@
	str	r0, [r5, r6]	@ prephitmp.8145, <variable>.CurrSlice.luma_log2_weight_denom
	mov	sl, r4, asl r0	@ y_default_weight, tmp176,
	ldr	r9, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r9, #0	@ <variable>.chroma_format_idc,
	bne	.L3533	@,
.L3509:
	cmp	r0, #7	@ prephitmp.8145,
	bhi	.L3532	@,
	movw	lr, #20748	@ tmp183,
	ldr	r0, [r5, lr]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	cmp	r0, #7	@ <variable>.CurrSlice.chroma_log2_weight_denom,
	bhi	.L3532	@,
	movw	r1, #52780	@ tmp186,
	ldr	r2, [r5, r1]	@ prephitmp.8111, <variable>.SeErrFlg
	cmp	r2, #0	@ prephitmp.8111,
	bne	.L3511	@,
	add	r8, r5, #20736	@ ivtmp.8140, pH264Ctx,
	mov	r6, r2	@ i, prephitmp.8111
	add	r4, r8, #16	@ ivtmp.8140, ivtmp.8140,
	mov	r8, #20736	@ tmp247,
	b	.L3520	@
.L3516:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3534	@,
.L3517:
	str	r3, [r4, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_v
	str	r3, [r4, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_u
	str	r3, [r4, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_u
	str	r3, [r4, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_v
.L3519:
	ldr	r2, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r6, r6, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.8140, ivtmp.8140,
	cmp	r2, r6	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcc	.L3535	@,
.L3520:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC331	@,
	movt	r1, #:upper16:.LC331	@,
	bl	u_1	@
	cmp	r0, #0	@ D.37642
	streq	r0, [r4, #768]	@ D.37642, <variable>.CurrSlice.wp_offset_l0_y
	streq	sl, [r4, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l0_y
	beq	.L3516	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC332	@,
	movt	r1, #:upper16:.LC332	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC333	@,
	movt	r1, #:upper16:.LC333	@,
	str	r0, [r4, #0]	@, <variable>.CurrSlice.wp_weight_l0_y
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #768]	@, <variable>.CurrSlice.wp_offset_l0_y
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	beq	.L3517	@,
.L3534:
	movw	r1, #:lower16:.LC334	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC334	@,
	bl	u_1	@
	cmp	r0, #0	@ D.37651
	bne	.L3536	@,
	ldr	r2, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r6, r6, #1	@ i, i,
	str	r0, [r4, #1024]	@ D.37651, <variable>.CurrSlice.wp_offset_l0_v
	cmp	r2, r6	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	str	r9, [r4, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_u
	str	r0, [r4, #896]	@ D.37651, <variable>.CurrSlice.wp_offset_l0_u
	str	r9, [r4, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_v
	add	r4, r4, #4	@ ivtmp.8140, ivtmp.8140,
	bcs	.L3520	@,
.L3535:
	ldr	r3, [fp, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r3, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3537	@,
.L3521:
	movw	r1, #52780	@ tmp229,
	ldr	r0, [r5, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	mvnne	r0, #0	@, D.37641,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3532:
	movw	ip, #52780	@ tmp185,
	ldr	r2, [r5, ip]	@ prephitmp.8111, <variable>.SeErrFlg
.L3511:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC330	@,
	movt	r1, #:upper16:.LC330	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37641,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3536:
	movw	r1, #:lower16:.LC335	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC335	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC336	@,
	movt	r1, #:upper16:.LC336	@,
	str	r0, [r4, #128]	@, <variable>.CurrSlice.wp_weight_l0_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC335	@,
	movt	r1, #:upper16:.LC335	@,
	str	r0, [r4, #896]	@, <variable>.CurrSlice.wp_offset_l0_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC336	@,
	movt	r1, #:upper16:.LC336	@,
	str	r0, [r4, #256]	@, <variable>.CurrSlice.wp_weight_l0_v
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #1024]	@, <variable>.CurrSlice.wp_offset_l0_v
	b	.L3519	@
.L3533:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC329	@,
	movt	r1, #:upper16:.LC329	@,
	bl	ue_v	@
	movw	r2, #20748	@ tmp179,
	mov	r3, r0	@ D.37632,
	ldr	r0, [r5, r6]	@ prephitmp.8145, <variable>.CurrSlice.luma_log2_weight_denom
	mov	r9, r4, asl r3	@ uv_default_weight, tmp176,
	str	r3, [r5, r2]	@ D.37632, <variable>.CurrSlice.chroma_log2_weight_denom
	b	.L3509	@
.L3537:
	movw	lr, #20680	@ tmp208,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r0, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3521	@,
	add	r4, r5, #20992	@ ivtmp.8130, pH264Ctx,
	mov	r6, #0	@ i.8144,
	add	r4, r4, #144	@ ivtmp.8130, ivtmp.8130,
	movw	r8, #20740	@ tmp240,
	b	.L3527	@
.L3523:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3538	@,
.L3524:
	str	r3, [r4, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_v
	str	r3, [r4, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_u
	str	r3, [r4, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_u
	str	r3, [r4, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_v
.L3526:
	ldr	ip, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #1	@ i.8144, i.8144,
	add	r4, r4, #4	@ ivtmp.8130, ivtmp.8130,
	cmp	ip, r6	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.8144
	bcc	.L3521	@,
.L3527:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC337	@,
	movt	r1, #:upper16:.LC337	@,
	bl	u_1	@
	cmp	r0, #0	@ D.37667
	streq	r0, [r4, #768]	@ D.37667, <variable>.CurrSlice.wp_offset_l1_y
	streq	sl, [r4, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l1_y
	beq	.L3523	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC338	@,
	movt	r1, #:upper16:.LC338	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC339	@,
	movt	r1, #:upper16:.LC339	@,
	str	r0, [r4, #0]	@, <variable>.CurrSlice.wp_weight_l1_y
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #768]	@, <variable>.CurrSlice.wp_offset_l1_y
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	beq	.L3524	@,
.L3538:
	movw	r1, #:lower16:.LC340	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC340	@,
	bl	u_1	@
	cmp	r0, #0	@ D.37675
	bne	.L3539	@,
	str	r0, [r4, #1024]	@ D.37675, <variable>.CurrSlice.wp_offset_l1_v
	str	r9, [r4, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_u
	str	r0, [r4, #896]	@ D.37675, <variable>.CurrSlice.wp_offset_l1_u
	str	r9, [r4, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_v
	b	.L3526	@
.L3539:
	movw	r1, #:lower16:.LC341	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC341	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC342	@,
	movt	r1, #:upper16:.LC342	@,
	str	r0, [r4, #128]	@, <variable>.CurrSlice.wp_weight_l1_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC341	@,
	movt	r1, #:upper16:.LC341	@,
	str	r0, [r4, #896]	@, <variable>.CurrSlice.wp_offset_l1_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC342	@,
	movt	r1, #:upper16:.LC342	@,
	str	r0, [r4, #256]	@, <variable>.CurrSlice.wp_weight_l1_v
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #1024]	@, <variable>.CurrSlice.wp_offset_l1_v
	b	.L3526	@
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
	movw	ip, #20692	@ tmp161,
	movw	r1, #13584	@ tmp163,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r5, [r0, ip]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r8, #2208	@ tmp165,
	ldr	r0, [r0, r1]	@ <variable>.PPS, <variable>.PPS
	movw	r3, #20681	@ tmp177,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #13580	@ tmp159,
	mov	r3, #4000	@ tmp169,
	mla	r1, r8, r5, r0	@ tmp166, tmp165, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r5, [r4, r2]	@ <variable>.SPS, <variable>.SPS
	movw	r0, #19889	@ tmp174,
	mov	r8, #0	@ tmp172,
	ldr	ip, [r1, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	strb	r8, [r4, r0]	@ tmp172, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	movw	r0, #19888	@ tmp171,
	strb	r8, [r4, r0]	@ tmp172, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	mov	r8, #1	@ tmp184,
	mla	r2, r3, ip, r5	@ pSPS, tmp169, <variable>.seq_parameter_set_id, <variable>.SPS
	movw	r5, #20680	@ tmp185,
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	ldr	r1, [r2, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	addne	r1, r1, #5	@ tmp179, <variable>.log2_max_frame_num_minus4,
	addeq	r1, r1, #4	@ tmp182, <variable>.log2_max_frame_num_minus4,
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	mov	r8, r8, asl r1	@ MaxPicNum, tmp184,
	bls	.L3574	@,
.L3543:
	movw	r2, #52780	@ tmp238,
	ldr	r3, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	mvnne	r0, #0	@ D.37550,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3563:
	mov	r0, #0	@ D.37550,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3574:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC343	@,
	movt	r1, #:upper16:.LC343	@,
	bl	u_1	@
	movw	r3, #19888	@ tmp188,
	uxtb	r0, r0	@ D.37538,
	strb	r0, [r4, r3]	@ D.37538, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r0, #0	@ D.37538,
	ldreqb	r3, [r4, r5]	@ zero_extendqisi2	@ prephitmp.8161, <variable>.CurrSlice.slice_type
	beq	.L3545	@,
	mov	sl, #20736	@ tmp191,
	ldr	r6, [r4, sl]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmn	r6, #2	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	beq	.L3546	@,
	add	r7, r4, #19712	@ ivtmp.8183, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r7, #180	@ ivtmp.8183, ivtmp.8183,
	movw	r7, #52780	@ tmp249,
	b	.L3557	@
.L3553:
	bl	ue_v	@
	str	r0, [r5, #528]	@, <variable>.CurrReorder.long_term_pic_idx_l0
.L3556:
	ldr	ip, [r4, sl]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r5, r5, #4	@ ivtmp.8183, ivtmp.8183,
	add	r3, ip, #2	@ prephitmp.8189, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r3, r6	@ prephitmp.8189, i
	bls	.L3552	@,
.L3557:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC344	@,
	movt	r1, #:upper16:.LC344	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC348	@,
	movt	r1, #:upper16:.LC348	@,
	mov	r2, r0	@ D.37543,
	cmp	r2, #3	@ D.37543,
	mov	r0, r4	@, pH264Ctx
	str	r2, [r5, #0]	@ D.37543, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	bhi	.L3575	@,
	ldr	r3, [r4, r7]	@ prephitmp.8194, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8194,
	bne	.L3548	@,
	cmp	r2, #3	@ D.37543,
	beq	.L3576	@,
	cmp	r2, #2	@ D.37543,
	add	r6, r6, #1	@ i, i,
	beq	.L3553	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC346	@,
	movt	r1, #:upper16:.LC346	@,
	bl	ue_v	@
	cmp	r8, r0	@ MaxPicNum, D.37554
	str	r0, [r5, #264]	@ D.37554, <variable>.CurrReorder.abs_diff_pic_num_minus1_l0
	bls	.L3577	@,
	ldr	r3, [r4, r7]	@ prephitmp.8190, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8190,
	beq	.L3556	@,
.L3555:
	mov	r2, r0	@, D.37554
	movw	r1, #:lower16:.LC347	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC347	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37550,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3576:
	mov	r3, #20736	@ tmp198,
	ldr	r2, [r4, r3]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r2, #2	@ prephitmp.8189, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
.L3552:
	cmp	r6, r3	@ i, prephitmp.8189
	beq	.L3558	@,
.L3573:
	movw	r3, #20680	@ tmp215,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8161, <variable>.CurrSlice.slice_type
.L3545:
	cmp	r3, #1	@ prephitmp.8161,
	bne	.L3543	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC350	@,
	movt	r1, #:upper16:.LC350	@,
	bl	u_1	@
	movw	r1, #19889	@ tmp218,
	uxtb	r0, r0	@ D.37574,
	strb	r0, [r4, r1]	@ D.37574, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r0, #0	@ D.37574,
	beq	.L3543	@,
	movw	sl, #20740	@ tmp220,
	ldr	ip, [r4, sl]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmn	ip, #2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	beq	.L3543	@,
	add	r5, r4, #19968	@ ivtmp.8176, pH264Ctx,
	movw	r7, #52780	@ tmp244,
	add	r6, r5, #56	@ ivtmp.8176, ivtmp.8176,
	mov	r5, #0	@ i.8192,
	b	.L3569	@
.L3568:
	add	r5, r5, #1	@ i.8192, i.8192,
	cmp	r3, r5	@ D.37598, i.8192
	bls	.L3543	@,
.L3569:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC351	@,
	movt	r1, #:upper16:.LC351	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC355	@,
	movt	r1, #:upper16:.LC355	@,
	mov	r2, r0	@ D.37578,
	cmp	r2, #3	@ D.37578,
	mov	r0, r4	@, pH264Ctx
	str	r2, [r6, #0]	@ D.37578, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	bhi	.L3578	@,
	ldr	r3, [r4, r7]	@ prephitmp.8163, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8163,
	bne	.L3561	@,
	cmp	r2, #3	@ D.37578,
	beq	.L3563	@,
	cmp	r2, #2	@ D.37578,
	bne	.L3579	@,
	bl	ue_v	@
	str	r0, [r6, #524]	@, <variable>.CurrReorder.long_term_pic_idx_l1
.L3567:
	ldr	r2, [r4, sl]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #4	@ ivtmp.8176, ivtmp.8176,
	add	r3, r2, #2	@ D.37598, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r5	@ D.37598, i.8192
	bne	.L3568	@,
	add	lr, r5, #4992	@ tmp234, i.8192,
	add	ip, lr, #14	@ tmp234, tmp234,
	ldr	r1, [r4, ip, asl #2]	@ tmp236, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	cmp	r1, #3	@ tmp236,
	beq	.L3568	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC356	@,
	movt	r1, #:upper16:.LC356	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37550,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3579:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC353	@,
	movt	r1, #:upper16:.LC353	@,
	bl	ue_v	@
	cmp	r8, r0	@ MaxPicNum, D.37587
	str	r0, [r6, #264]	@ D.37587, <variable>.CurrReorder.abs_diff_pic_num_minus1_l1
	bls	.L3580	@,
	ldr	r3, [r4, r7]	@ prephitmp.8193, <variable>.SeErrFlg
	cmp	r3, #0	@ prephitmp.8193,
	beq	.L3567	@,
.L3566:
	mov	r2, r0	@, D.37587
	movw	r1, #:lower16:.LC354	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC354	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37550,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3578:
	movw	r0, #52780	@ tmp224,
	ldr	r3, [r4, r0]	@ prephitmp.8163, <variable>.SeErrFlg
.L3561:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC352	@,
	movt	r1, #:upper16:.LC352	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37550,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3575:
	movw	lr, #52780	@ tmp195,
	ldr	r3, [r4, lr]	@ prephitmp.8194, <variable>.SeErrFlg
.L3548:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC345	@,
	movt	r1, #:upper16:.LC345	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37550,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3580:
	movw	lr, #52780	@ tmp225,
	ldr	r3, [r4, lr]	@ prephitmp.8193, <variable>.SeErrFlg
	b	.L3566	@
.L3546:
	mov	r6, #0	@ i,
.L3558:
	add	r2, r6, #4928	@ tmp208, i,
	add	r6, r2, #44	@ tmp208, tmp208,
	add	r6, r4, r6, asl #2	@, tmp212, pH264Ctx, tmp208,
	ldr	lr, [r6, #4]	@ tmp214, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	cmp	lr, #3	@ tmp214,
	beq	.L3573	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC349	@,
	movt	r1, #:upper16:.LC349	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37550,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3577:
	movw	r1, #52780	@ tmp196,
	ldr	r3, [r4, r1]	@ prephitmp.8190, <variable>.SeErrFlg
	b	.L3555	@
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
	movw	r2, #13576	@ tmp155,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r5, #20692	@ tmp154,
	ldr	r1, [r0, r2]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r0, r5]	@ D.38000, <variable>.CurrSlice.pic_parameter_set_id
	sub	r3, r1, #1	@ tmp156, <variable>.MaxPpsNum,
	cmp	r3, r2	@ tmp156, D.38000
	bcc	.L3582	@,
	movw	lr, #52780	@ tmp158,
	ldr	ip, [r0, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3582	@,
	bl	PPSSPSCheck	@
	cmp	r0, #0	@,
	bne	.L3614	@,
	ldr	r6, [r4, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r8, #20680	@ tmp168,
	mov	r7, #2208	@ tmp166,
	ldrb	r5, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	r0, #13584	@ tmp162,
	mul	r7, r7, r6	@ tmp164, tmp166, <variable>.CurrSlice.pic_parameter_set_id
	cmp	r5, #1	@ <variable>.CurrSlice.slice_type,
	ldr	r6, [r4, r0]	@ <variable>.PPS, <variable>.PPS
	add	r5, r7, r6	@ pPPS, tmp164, <variable>.PPS
	beq	.L3615	@,
.L3586:
	ldr	r2, [r5, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movw	sl, #20680	@ tmp177,
	mov	r8, #20736	@ tmp173,
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ prephitmp.8236, <variable>.CurrSlice.slice_type
	movw	r9, #20740	@ tmp175,
	str	r2, [r4, r8]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.8236,
	ldr	r2, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	str	r2, [r4, r9]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bls	.L3616	@,
.L3587:
	cmp	r3, #2	@ prephitmp.8236,
	mov	r0, r4	@, pH264Ctx
	movweq	r3, #20680	@ tmp207,
	moveq	r2, #20736	@ tmp205,
	ldreqb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8236, <variable>.CurrSlice.slice_type
	moveq	r1, #32	@ tmp206,
	streq	r1, [r4, r2]	@ tmp206, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.8236,
	movwne	r3, #20740	@ tmp208,
	movne	r2, #32	@ tmp209,
	strne	r2, [r4, r3]	@ tmp209, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bl	ref_pic_list_reordering	@
	cmp	r0, #0	@,
	bne	.L3617	@,
	ldrb	r8, [r5, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r8, #0	@ <variable>.weighted_pred_flag,
	beq	.L3598	@,
	movw	r1, #20680	@ tmp212,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #0	@ <variable>.CurrSlice.slice_type,
	moveq	r3, #1	@ prephitmp.8211,
	beq	.L3601	@
.L3598:
	ldr	lr, [r5, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	lr, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3618	@,
.L3600:
	mov	r3, #0	@ prephitmp.8211,
.L3601:
	movw	r8, #20687	@ tmp217,
	mov	r2, r3	@, prephitmp.8211
	strb	r3, [r4, r8]	@ prephitmp.8211, <variable>.CurrSlice.apply_weights_flag
	mov	r0, #19	@,
	movw	r1, #:lower16:.LC364	@,
	movt	r1, #:upper16:.LC364	@,
	bl	dprint_vfmw	@
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.apply_weights_flag, <variable>.CurrSlice.apply_weights_flag
	movw	r1, #20748	@ tmp222,
	movw	r2, #20744	@ tmp220,
	cmp	r0, #0	@ <variable>.CurrSlice.apply_weights_flag,
	mov	r3, #0	@ tmp221,
	str	r3, [r4, r1]	@ tmp221, <variable>.CurrSlice.chroma_log2_weight_denom
	str	r3, [r4, r2]	@ tmp221, <variable>.CurrSlice.luma_log2_weight_denom
	bne	.L3619	@,
.L3602:
	movw	ip, #20712	@ tmp227,
	ldr	lr, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L3620	@,
.L3603:
	movw	r8, #22288	@ tmp230,
	mov	r3, #0	@ tmp231,
	str	r3, [r4, r8]	@ tmp231, <variable>.CurrSlice.cabac_init_idc
	ldrb	r2, [r7, r6]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	cmp	r2, #0	@ <variable>.entropy_coding_mode_flag,
	beq	.L3604	@,
	movw	r0, #20680	@ tmp233,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	bls	.L3621	@,
.L3604:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC369	@,
	movt	r1, #:upper16:.LC369	@,
	movw	r6, #22296	@ tmp242,
	bl	se_v	@
	movw	r7, #22300	@ tmp244,
	movw	r8, #22304	@ tmp246,
	movw	r3, #22292	@ tmp241,
	mov	r1, #0	@ tmp243,
	str	r1, [r4, r8]	@ tmp243, <variable>.CurrSlice.slice_beta_offset_div2
	str	r1, [r4, r6]	@ tmp243, <variable>.CurrSlice.disable_deblocking_filter_idc
	str	r1, [r4, r7]	@ tmp243, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	str	r0, [r4, r3]	@, <variable>.CurrSlice.slice_qp_delta
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	r2, #0	@ <variable>.deblocking_filter_control_present_flag,
	bne	.L3622	@,
.L3606:
	mov	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3622:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC370	@,
	movt	r1, #:upper16:.LC370	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.38094,
	str	r0, [r4, r6]	@ D.38094, <variable>.CurrSlice.disable_deblocking_filter_idc
	bhi	.L3607	@,
	movw	r5, #52780	@ tmp251,
	ldr	lr, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3607	@,
	cmp	r0, #1	@ D.38094,
	beq	.L3606	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC372	@,
	movt	r1, #:upper16:.LC372	@,
	bl	se_v	@
	add	ip, r0, #6	@ tmp256, D.38102,
	str	r0, [r4, r7]	@ D.38102, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	cmp	ip, #12	@ tmp256,
	bhi	.L3609	@,
	ldr	r0, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3609	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC374	@,
	movt	r1, #:upper16:.LC374	@,
	bl	se_v	@
	add	r2, r0, #6	@ tmp262, D.38110,
	str	r0, [r4, r8]	@ D.38110, <variable>.CurrSlice.slice_beta_offset_div2
	cmp	r2, #12	@ tmp262,
	bhi	.L3611	@,
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3606	@,
.L3611:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC375	@,
	movt	r1, #:upper16:.LC375	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3619:
	mov	r0, r4	@, pH264Ctx
	bl	pred_weight_table	@
	cmp	r0, #0	@,
	beq	.L3602	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC365	@,
	movt	r1, #:upper16:.LC365	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3620:
	mov	r0, r4	@, pH264Ctx
	bl	dec_ref_pic_marking	@
	cmp	r0, #0	@,
	beq	.L3603	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC366	@,
	movt	r1, #:upper16:.LC366	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3618:
	movw	ip, #20680	@ tmp215,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r0, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3600	@,
	mov	r3, #1	@ prephitmp.8211,
	b	.L3601	@
.L3615:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC357	@,
	movt	r1, #:upper16:.LC357	@,
	movw	r9, #20686	@ tmp171,
	bl	u_1	@
	strb	r0, [r4, r9]	@, <variable>.CurrSlice.direct_spatial_mv_pred_flag
	b	.L3586	@
.L3616:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC358	@,
	movt	r1, #:upper16:.LC358	@,
	bl	u_1	@
	cmp	r0, #0	@,
	ldreq	r3, [r4, r8]	@ prephitmp.8213, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3623	@,
.L3589:
	movw	ip, #20681	@ tmp187,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r2, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3590	@,
	cmp	r3, #15	@ prephitmp.8213,
	bhi	.L3591	@,
	movw	lr, #20740	@ tmp189,
	ldr	r3, [r4, lr]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #15	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3592	@,
	movw	ip, #20680	@ tmp191,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r0, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3592	@,
.L3591:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC361	@,
	movt	r1, #:upper16:.LC361	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3592:
	movw	lr, #52780	@ tmp193,
	ldr	r3, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3591	@,
.L3613:
	movw	r3, #20680	@ tmp203,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8236, <variable>.CurrSlice.slice_type
	b	.L3587	@
.L3582:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC293	@,
	movt	r1, #:upper16:.LC293	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3621:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC367	@,
	movt	r1, #:upper16:.LC367	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.38084,
	str	r0, [r4, r8]	@ D.38084, <variable>.CurrSlice.cabac_init_idc
	bhi	.L3605	@,
	movw	ip, #52780	@ tmp237,
	ldr	lr, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	beq	.L3604	@,
.L3605:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC368	@,
	movt	r1, #:upper16:.LC368	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3590:
	cmp	r3, #31	@ prephitmp.8213,
	bhi	.L3593	@,
	movw	ip, #20740	@ tmp197,
	ldr	r0, [r4, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r0, #31	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3594	@,
	movw	lr, #20680	@ tmp199,
	ldrb	r3, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3594	@,
.L3593:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC362	@,
	movt	r1, #:upper16:.LC362	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3594:
	movw	ip, #52780	@ tmp201,
	ldr	r0, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3613	@,
	b	.L3593	@
.L3623:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC359	@,
	movt	r1, #:upper16:.LC359	@,
	bl	ue_v	@
	ldrb	r1, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	mov	r3, r0	@ prephitmp.8213,
	str	r0, [r4, r8]	@ prephitmp.8213, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3589	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC360	@,
	movt	r1, #:upper16:.LC360	@,
	bl	ue_v	@
	ldr	r3, [r4, r8]	@ prephitmp.8213, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	str	r0, [r4, r9]	@, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	b	.L3589	@
.L3609:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC373	@,
	movt	r1, #:upper16:.LC373	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3607:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC371	@,
	movt	r1, #:upper16:.LC371	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3614:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC294	@,
	movt	r1, #:upper16:.LC294	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3617:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC363	@,
	movt	r1, #:upper16:.LC363	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38004,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #52784	@ tmp164,
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	lr, [r4, r0]	@ <variable>.TotalNal, <variable>.TotalNal
	movw	r1, #:lower16:.LC376	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC376	@,
	sub	r2, lr, #1	@, <variable>.TotalNal,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r2, #20683	@ tmp167,
	movw	r3, #20712	@ tmp171,
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3628	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderSecondPart	@
	cmp	r0, #0	@,
	bne	.L3628	@,
	movw	r3, #52764	@ tmp179,
	ldr	r3, [r4, r3]	@ temp.8290, <variable>.SliceParaNum
	cmp	r3, #0	@ temp.8290,
	beq	.L3630	@,
	add	ip, r4, #50688	@ tmp186, pH264Ctx,
	mov	r6, r3, asl #2	@ D.49111, temp.8290,
	add	r2, ip, #16	@ tmp186, tmp186,
	sub	r3, r6, #4	@ tmp251, D.49111,
	ubfx	ip, r3, #2, #1	@ tmp252, tmp251,,
	ldr	r3, [r2, #0]	@ D.38280, <variable>.pSliceNal
	ldr	r1, [r3, #8]	@ Addr0, <variable>.streamBuffer
	cmp	r1, #0	@ Addr0,
	ldrne	r5, [r3, #12]	@ Size0, <variable>.bitstream_length
	beq	.L3707	@,
.L3680:
	ldr	lr, [r3, #36]	@ Addr1, <variable>.streamBuffer
	mov	r2, #4	@ ivtmp.8270,
	cmp	lr, #0	@ Addr1,
	ldrne	r0, [r3, #40]	@ Size1, <variable>.bitstream_length
	moveq	r0, lr	@ Size1, Addr1
	cmp	lr, #0	@ Addr1,
	add	r3, r5, r0	@ Size, Size0, Size1
	movne	r1, lr	@ PrevNalAddr, Addr1
	movne	r5, r0	@ PrevNalSize, Size1
	cmp	r2, r6	@ ivtmp.8270, D.49111
	beq	.L3630	@,
	cmp	ip, #0	@ tmp252,
	beq	.L3642	@,
	add	lr, r4, r2	@ tmp281, pH264Ctx, ivtmp.8270
	add	ip, lr, #50688	@ tmp283, tmp281,
	add	r0, ip, #16	@ tmp283, tmp283,
	ldr	ip, [r0, #0]	@ D.38280, <variable>.pSliceNal
	ldr	lr, [ip, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r0, [ip, #36]	@ Addr1, <variable>.streamBuffer
	cmp	lr, #0	@ Addr0,
	ldrne	r7, [ip, #12]	@ Size0, <variable>.bitstream_length
	moveq	r7, lr	@ Size0, Addr0
	cmp	r0, #0	@ Addr1,
	ldrne	ip, [ip, #40]	@ Size1, <variable>.bitstream_length
	moveq	ip, r0	@ Size1, Addr1
	cmp	r1, #0	@ PrevNalAddr,
	addeq	r3, r7, r3	@ D.38300, Size0, Size
	addeq	r3, r3, ip	@ Size, D.38300, Size1
	bne	.L3708	@,
.L3690:
	cmp	r0, #0	@ Addr1,
	moveq	r1, lr	@ PrevNalAddr, Addr0
	moveq	r5, r7	@ PrevNalSize, Size0
	movne	r1, r0	@ PrevNalAddr, Addr1
	movne	r5, ip	@ PrevNalSize, Size1
	b	.L3703	@
.L3674:
	rsb	r8, r8, ip	@ tmp302, PrevNalSize, Addr0
	rsb	lr, lr, r8	@ tmp303, PrevNalAddr, tmp302
	add	lr, lr, r7	@ Size0.8272, tmp303, Size0
.L3701:
	add	r0, r5, r3	@ Size.8278, Size1, Size
	add	r3, r0, lr	@ Size, Size.8278, Size0.8272
.L3699:
	cmp	r1, #0	@ Addr1,
	moveq	r1, ip	@ PrevNalAddr, Addr0
	moveq	r5, r7	@ PrevNalSize, Size0
.L3703:
	add	r2, r2, #4	@ ivtmp.8270, tmp253,
	cmp	r2, r6	@ ivtmp.8270, D.49111
	beq	.L3630	@,
.L3642:
	add	lr, r4, r2	@ tmp256, pH264Ctx, ivtmp.8270
	add	r0, lr, #50688	@ tmp257, tmp256,
	ldr	ip, [r0, #16]	@ D.38280, <variable>.pSliceNal
	ldr	lr, [ip, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r0, [ip, #36]	@ Addr1, <variable>.streamBuffer
	cmp	lr, #0	@ Addr0,
	ldrne	r8, [ip, #12]	@ Size0, <variable>.bitstream_length
	moveq	r8, lr	@ Size0, Addr0
	cmp	r0, #0	@ Addr1,
	moveq	ip, r0	@ Size1, Addr1
	ldrne	ip, [ip, #40]	@ Size1, <variable>.bitstream_length
	cmp	r1, #0	@ PrevNalAddr,
	addeq	r3, r8, r3	@ D.38300, Size0, Size
	addeq	r3, r3, ip	@ Size, D.38300, Size1
	beq	.L3639	@,
	cmp	lr, r1	@ Addr0, PrevNalAddr
	rsbhi	r1, r1, lr	@ tmp189, PrevNalAddr, Addr0
	rsbhi	r5, r5, r1	@ tmp190, PrevNalSize, tmp189
	add	r1, ip, r3	@ Size.8278, Size1, Size
	addhi	r5, r5, r8	@ Size0.8272, tmp190, Size0
	movls	r5, r8	@ Size0.8272, Size0
	add	r3, r1, r5	@ Size, Size.8278, Size0.8272
.L3639:
	cmp	r0, #0	@ Addr1,
	add	r2, r2, #4	@ tmp253, ivtmp.8270,
	movne	lr, r0	@ PrevNalAddr, Addr1
	add	r0, r4, r2	@ tmp267, pH264Ctx, tmp253
	movne	r8, ip	@ PrevNalSize, Size1
	add	ip, r0, #50688	@ tmp268, tmp267,
	ldr	r0, [ip, #16]	@ D.38280, <variable>.pSliceNal
	ldr	ip, [r0, #8]	@ Addr0, <variable>.streamBuffer
	cmp	ip, #0	@ Addr0,
	ldrne	r7, [r0, #12]	@ Size0, <variable>.bitstream_length
	moveq	r7, ip	@ Size0, Addr0
.L3695:
	ldr	r1, [r0, #36]	@ Addr1, <variable>.streamBuffer
	cmp	r1, #0	@ Addr1,
	ldrne	r5, [r0, #40]	@ Size1, <variable>.bitstream_length
	moveq	r5, r1	@ Size1, Addr1
	cmp	lr, #0	@ PrevNalAddr,
	addeq	r3, r7, r3	@ D.38300, Size0, Size
	addeq	r3, r3, r5	@ Size, D.38300, Size1
	beq	.L3699	@,
	cmp	ip, lr	@ Addr0, PrevNalAddr
	bhi	.L3674	@,
	mov	lr, r7	@ Size0.8272, Size0
	b	.L3701	@
.L3630:
	movw	r2, #50164	@ tmp192,
	movw	ip, #50160	@ tmp193,
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	movw	r2, #1620	@ tmp196,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_width_in_mb
	movw	r1, #52824	@ tmp191,
	str	r3, [r4, r1]	@ Size, <variable>.MaxBytesReceived
	mul	ip, lr, r0	@ TotalMbs, <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_height_in_mb
	cmp	ip, r2	@ TotalMbs, tmp196
	movgt	ip, ip, asl #7	@ MaxStreamThr, TotalMbs,
	ble	.L3709	@,
.L3644:
	movw	r2, #52764	@ tmp202,
	mov	lr, #13568	@ tmp203,
	ldr	r2, [r4, r2]	@ D.38309, <variable>.SliceParaNum
	ldr	r1, [r4, lr]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	r2, r1	@ D.38309, <variable>.MaxSliceNum
	bcs	.L3646	@,
	cmp	r3, ip	@ Size, MaxStreamThr
	bhi	.L3646	@,
	movw	r2, #20685	@ tmp215,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	cmp	r1, #0	@ <variable>.CurrSlice.new_pic_flag,
	bne	.L3710	@,
.L3649:
	mov	r0, r4	@, pH264Ctx
	bl	PicTypeStatistic	@
	mov	r0, r4	@, pH264Ctx
	bl	DecList	@
	subs	r2, r0, #0	@ ret.8281,
	bne	.L3711	@,
	mov	r0, r4	@, pH264Ctx
	bl	IsRefListWrong	@
	subs	r5, r0, #0	@ ret.8282,
	bne	.L3712	@,
	mov	r0, r4	@, pH264Ctx
	bl	CalcStreamBits	@
	mov	r0, r4	@, pH264Ctx
	bl	WriteSliceMsg	@
	mov	r0, r4	@, pH264Ctx
	bl	ExitSlice	@
	movw	r3, #52820	@ tmp244,
	ldr	r2, [r4, r3]	@ <variable>.SliceNumInPic, <variable>.SliceNumInPic
	movw	r1, #51324	@ tmp242,
	mov	r0, r5	@ D.38273, ret.8282
	mov	ip, #1	@ tmp243,
	str	ip, [r4, r1]	@ tmp243, <variable>.AllowStartDec
	add	r1, r2, ip	@ tmp247, <variable>.SliceNumInPic,
	str	r1, [r4, r3]	@ tmp247, <variable>.SliceNumInPic
.L3627:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L3709:
	add	r0, ip, ip, asl #1	@, tmp199, TotalMbs, TotalMbs,
	movw	lr, #32769	@ tmp201,
	mov	ip, r0, asl #8	@ tmp200, tmp199,
	cmp	ip, lr	@ tmp200, tmp201
	movgt	ip, ip, asr #1	@ MaxStreamThr, tmp200,
	movle	ip, #16384	@ MaxStreamThr,
	b	.L3644	@
.L3707:
	mov	r5, r1	@ Size0, Addr0
	b	.L3680	@
.L3708:
	cmp	lr, r1	@ Addr0, PrevNalAddr
	bls	.L3713	@,
	rsb	r5, r5, lr	@ tmp293, PrevNalSize, Addr0
	rsb	r1, r1, r5	@ tmp294, PrevNalAddr, tmp293
	add	r1, r1, r7	@ Size0.8272, tmp294, Size0
.L3692:
	add	r3, ip, r3	@ Size.8278, Size1, Size
	add	r3, r3, r1	@ Size, Size.8278, Size0.8272
	b	.L3690	@
.L3710:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC380	@,
	movt	r1, #:upper16:.LC380	@,
	bl	dprint_vfmw	@
	movw	ip, #20683	@ tmp218,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r0, #52820	@ tmp223,
	mov	ip, #0	@ tmp224,
	str	ip, [r4, r0]	@ tmp224, <variable>.SliceNumInPic
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	movweq	r3, #52804	@ tmp221,
	ldreq	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	movweq	r3, #52816	@ tmp220,
	streq	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.IDRPicOfCurrPic
	movw	r2, #49707	@ tmp229,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r3, #52804	@ tmp225,
	ldr	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	cmp	r1, #0	@ <variable>.CurrPic.structure,
	add	r1, r2, #1	@ tmp228, <variable>.TotalPicNum,
	str	r1, [r4, r3]	@ tmp228, <variable>.TotalPicNum
	movweq	r3, #52808	@ tmp231,
	movwne	r3, #52812	@ tmp235,
	ldr	r0, [r4, r3]	@ <variable>.TotalFieldNum,
	add	ip, r0, #1	@ tmp238, <variable>.TotalFieldNum,
	mov	r0, r4	@, pH264Ctx
	str	ip, [r4, r3]	@ tmp238,
	bl	InitPic	@
	cmp	r0, #0	@,
	bne	.L3714	@,
	mov	r0, r4	@, pH264Ctx
	bl	WritePicMsg	@
	b	.L3649	@
.L3713:
	mov	r1, r7	@ Size0.8272, Size0
	b	.L3692	@
.L3628:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC377	@,
	movt	r1, #:upper16:.LC377	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp181,
	movt	ip, #:upper16:g_event_report	@ tmp181,
	ldr	r3, [ip, #0]	@ g_event_report.8276, g_event_report
	cmp	r3, #0	@ g_event_report.8276,
	beq	.L3704	@,
	add	r2, sp, #16	@ tmp184,,
	movw	lr, #52840	@ tmp183,
	mvn	r1, #0	@ tmp182,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	r1, [r2, #-8]!	@ tmp182,
	add	r1, r1, #101	@,,
	blx	r3	@ g_event_report.8276
.L3704:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.38273,
	b	.L3627	@
.L3646:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC378	@,
	movt	r1, #:upper16:.LC378	@,
	str	ip, [sp, #0]	@ MaxStreamThr,
	bl	dprint_vfmw	@
	movw	ip, #52764	@ tmp206,
	mov	r3, #13568	@ tmp207,
	ldr	r1, [r4, ip]	@ temp.8283, <variable>.SliceParaNum
	ldr	r2, [r4, r3]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	r1, r2	@ temp.8283, <variable>.MaxSliceNum
	bcc	.L3648	@,
	movw	r0, #:lower16:g_event_report	@ tmp209,
	movt	r0, #:upper16:g_event_report	@ tmp209,
	ldr	r3, [r0, #0]	@ g_event_report.8286, g_event_report
	cmp	r3, #0	@ g_event_report.8286,
	beq	.L3648	@,
	movw	lr, #52840	@ tmp212,
	str	r1, [sp, #8]	@ temp.8283, para
	str	r2, [sp, #12]	@ <variable>.MaxSliceNum, para
	mov	r1, #108	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r2, sp, #8	@,,
	blx	r3	@ g_event_report.8286
.L3648:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC379	@,
	movt	r1, #:upper16:.LC379	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.38273,
	b	.L3627	@
.L3711:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC382	@,
	movt	r1, #:upper16:.LC382	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38273,
	b	.L3627	@
.L3712:
	movw	r1, #:lower16:.LC383	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC383	@,
	bl	dprint_vfmw	@
	b	.L3704	@
.L3714:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC381	@,
	movt	r1, #:upper16:.LC381	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38273,
	b	.L3627	@
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r1, #:lower16:.LC384	@,
	movt	r1, #:upper16:.LC384	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r5, #52780	@ tmp140,
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20732	@ tmp139,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.37373, <variable>.CurrSlice.first_mb_in_slice
	bne	.L3716	@,
	cmp	r0, #262144	@ D.37373,
	bcs	.L3724	@,
	movw	r1, #13560	@ tmp145,
	movw	r3, #13564	@ tmp144,
	ldr	r2, [r4, r1]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	lr, [r4, r3]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	mul	ip, r2, lr	@ tmp146, <variable>.CurWidthInMb, <variable>.CurHeightInMb
	sub	r1, ip, #1	@ tmp149, tmp146,
	cmp	r0, r1	@ D.37373, tmp149
	bls	.L3725	@,
.L3716:
	mvn	r0, #0	@ D.37377,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3724:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC385	@,
	movt	r1, #:upper16:.LC385	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37377,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3725:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC386	@,
	movt	r1, #:upper16:.LC386	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC387	@,
	movt	r1, #:upper16:.LC387	@,
	mov	r6, r0	@ SliceType,
	mov	r0, #19	@,
	mov	r2, r6	@, SliceType
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3716	@,
	cmp	r6, #9	@ SliceType,
	bls	.L3726	@,
.L3719:
	mov	r2, r6	@, SliceType
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC388	@,
	movt	r1, #:upper16:.LC388	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37377,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3726:
	mov	r2, #1	@ tmp155,
	mov	r3, r2, asl r6	@ tmp154, tmp155,
	ands	r1, r3, #660	@ tmp156, tmp154,
	movwne	r3, #20680	@ tmp160,
	movne	r2, #2	@ tmp161,
	strneb	r2, [r4, r3]	@ tmp161, <variable>.CurrSlice.slice_type
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r0, #:lower16:297	@ tmp157,
	movt	r0, #:upper16:297	@ tmp157,
	and	r0, r3, r0	@ tmp157, tmp154, tmp157
	cmp	r0, #0	@ tmp157,
	movwne	r3, #20680	@ tmp163,
	movne	r0, r1	@ D.37377, tmp156
	strneb	r1, [r4, r3]	@ tmp156, <variable>.CurrSlice.slice_type
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	tst	r3, #66	@ tmp154,
	movwne	r3, #20680	@ tmp166,
	strneb	r2, [r4, r3]	@ tmp155, <variable>.CurrSlice.slice_type
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L3719	@
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
	movw	r5, #52784	@ tmp148,
	ldr	lr, [r0, r5]	@ <variable>.TotalNal, <variable>.TotalNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ IsNewPic, IsNewPic
	mov	r5, r2	@ IsSizeChanged, IsSizeChanged
	mov	r0, #22	@,
	sub	r2, lr, #1	@, <variable>.TotalNal,
	movw	r1, #:lower16:.LC376	@,
	movt	r1, #:upper16:.LC376	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp151,
	str	r0, [r5, #0]	@ tmp151,* IsSizeChanged
	movw	r2, #20683	@ tmp153,
	str	r0, [r6, #0]	@ tmp151,* IsNewPic
	movw	r3, #20712	@ tmp156,
	ldr	ip, [r4, #368]	@ D.40565, <variable>.pCurrNal
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	cmp	r0, #0	@,
	beq	.L3728	@,
.L3735:
	mvn	r0, #0	@ D.40571,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3728:
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3736	@,
	movw	sl, #20685	@ tmp159,
	movw	r3, #20692	@ tmp164,
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	movw	r1, #13584	@ tmp166,
	mov	ip, #2208	@ tmp168,
	movw	r8, #13580	@ tmp162,
	cmp	lr, #1	@ <variable>.CurrSlice.new_pic_flag,
	movne	r2, #0	@, tmp161
	moveq	r2, #1	@, tmp161
	str	r2, [r6, #0]	@ tmp161,* IsNewPic
	ldr	r7, [r4, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	sl, #13564	@ tmp175,
	ldr	r6, [r4, r1]	@ <variable>.PPS, <variable>.PPS
	mov	r1, #4000	@ tmp172,
	ldr	r2, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	movw	r0, #13560	@ tmp174,
	ldr	r0, [r4, r0]	@ oldw, <variable>.CurWidthInMb
	mla	lr, ip, r7, r6	@ tmp169, tmp168, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	ip, [r4, sl]	@ oldh, <variable>.CurHeightInMb
	mov	r7, r0, asl #4	@ tmp184, oldw,
	mov	sl, ip, asl #4	@ tmp182, oldh,
	ldr	r3, [lr, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	lr, r1, r3, r2	@ pSPS, tmp172, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r8, [lr, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r6, [lr, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	rsb	r2, r8, #2	@ tmp178, <variable>.frame_mbs_only_flag,
	ldr	r1, [lr, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	movw	r8, #52880	@ tmp181,
	mla	r2, r6, r2, r2	@ newh, <variable>.pic_height_in_map_units_minus1, tmp178, tmp178
	add	r1, r1, #1	@ neww, <variable>.pic_width_in_mbs_minus1,
	movw	r6, #52876	@ tmp183,
	str	sl, [r4, r8]	@ tmp182, <variable>.DSD_OldHeight
	str	r7, [r4, r6]	@ tmp184, <variable>.DSD_OldWidth
	movw	r6, #52884	@ tmp185,
	cmp	r0, r1	@ oldw, neww
	cmpeq	ip, r2	@, oldh, newh
	movw	ip, #52888	@ tmp187,
	mov	r7, r1, asl #4	@ tmp186, neww,
	str	r7, [r4, r6]	@ tmp186, <variable>.DSD_NewWidth
	mov	r0, r2, asl #4	@ tmp188, newh,
	str	r0, [r4, ip]	@ tmp188, <variable>.DSD_NewHeight
	ldreq	r0, [r5, #0]	@ cstore.8327,* IsSizeChanged
	mov	r2, #26624	@ tmp196,
	movne	r0, #1	@ cstore.8327,
	str	r0, [r5, #0]	@ cstore.8327,* IsSizeChanged
	mov	r0, #0	@ D.40571,
	ldr	r1, [r4, r2]	@ <variable>.DPB.size, <variable>.DPB.size
	ldr	ip, [lr, #3980]	@ <variable>.dpb_size_plus1, <variable>.dpb_size_plus1
	add	r3, r1, #1	@ tmp197, <variable>.DPB.size,
	cmp	ip, r3	@ <variable>.dpb_size_plus1, tmp197
	movhi	r3, #1	@ tmp200,
	strhi	r3, [r5, #0]	@ tmp200,* IsSizeChanged
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3736:
	movw	r1, #:lower16:.LC377	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC377	@,
	bl	dprint_vfmw	@
	b	.L3735	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	ldr	r2, [r0, #368]	@ temp.8399, <variable>.pCurrNal
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ NalMode, NalMode
	ldr	r3, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r3, #0	@ <variable>.nal_segment,
	beq	.L3738	@,
	movw	ip, #52824	@ tmp185,
	mov	r3, #0	@ i,
	ldr	r1, [r0, ip]	@ prephitmp.8424, <variable>.MaxBytesReceived
.L3739:
	rsb	r7, r3, r3, asl #3	@, tmp189, i, i,
	add	r3, r3, #1	@ i, i,
	add	r6, r2, r7, asl #2	@, tmp191, temp.8399, tmp189,
	ldr	r5, [r6, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r1, r1, r5	@ prephitmp.8424, prephitmp.8424, <variable>.bitstream_length
	str	r1, [r4, ip]	@ prephitmp.8424, <variable>.MaxBytesReceived
	ldr	r0, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r0, r3	@ <variable>.nal_segment, i
	bhi	.L3739	@,
.L3738:
	add	lr, r4, #13504	@ D.40237, pH264Ctx,
	mov	sl, #0	@ tmp196,
	add	r5, lr, #24	@ D.40237, D.40237,
	strb	sl, [r2, #0]	@ tmp196, <variable>.nal_used_segment
	mov	r1, #32	@,
	movw	r7, #52784	@ tmp214,
	mov	r0, r5	@, D.40237
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	and	r1, r0, #31	@ tmp201, nal_header,
	strb	r1, [r3, #2]	@ tmp201, <variable>.nal_unit_type
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ubfx	ip, r0, #5, #2	@ tmp205, nal_header,,
	ubfx	r2, r0, #7, #1	@ tmp208, nal_header,,
	mov	r6, r0	@ nal_header,
	movw	r1, #:lower16:.LC389	@,
	mov	r0, #22	@,
	str	ip, [r3, #76]	@ tmp205, <variable>.nal_ref_idc
	movt	r1, #:upper16:.LC389	@,
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r2, [ip, #80]	@ tmp208, <variable>.forbidden_bit
	ldr	ip, [r4, #368]	@ temp.8375, <variable>.pCurrNal
	ldr	r3, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r2, r3, #32	@ tmp210, <variable>.nal_bitoffset,
	str	r2, [ip, #64]	@ tmp210, <variable>.nal_bitoffset
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r3, #52780	@ tmp211,
	str	sl, [r4, r3]	@ tmp196, <variable>.SeErrFlg
	ldr	r2, [r4, r7]	@, <variable>.TotalNal
	ldrb	r3, [ip, #2]	@ zero_extendqisi2	@, <variable>.nal_unit_type
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ prephitmp.8357, <variable>.TotalNal
	movw	r2, #371	@ tmp219,
	cmp	r3, r2	@ prephitmp.8357, tmp219
	beq	.L3786	@,
.L3740:
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	ip, #52784	@ tmp222,
	add	r1, r3, #1	@ tmp223, prephitmp.8357,
	str	r1, [r4, ip]	@ tmp223, <variable>.TotalNal
	ldrb	r2, [r2, #2]	@ zero_extendqisi2	@ temp.8378, <variable>.nal_unit_type
	sub	r0, r2, #1	@ tmp225, temp.8378,
	cmp	r0, #29	@ tmp225,
	ldrls	pc, [pc, r0, asl #2]	@ tmp225
	b	.L3741	@
.L3753:
	.word	.L3742
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3742
	.word	.L3743
	.word	.L3744
	.word	.L3745
	.word	.L3746
	.word	.L3747
	.word	.L3748
	.word	.L3749
	.word	.L3750
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3751
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3741
	.word	.L3752
.L3752:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC403	@,
	mov	r2, #30	@,
	movt	r1, #:upper16:.LC403	@,
	bl	dprint_vfmw	@
	cmp	r8, #0	@ NalMode,
	beq	.L3787	@,
.L3770:
	mov	r1, #32	@,
	mov	r0, r5	@, D.40237
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.40329,
	mov	r0, r5	@, D.40237
	bl	BsGet	@
	ldr	r3, .L3791	@ tmp346,
	and	r5, r6, #65280	@ tmp336, D.40329,
	mov	r1, r6, asl #24	@ tmp334, D.40329,
	orr	r1, r1, r6, lsr #24	@, tmp335, tmp334, D.40329,
	and	r6, r6, #16711680	@ tmp332, D.40329,
	orr	r1, r1, r5, asl #8	@, D.40337, tmp335, tmp336,
	orr	r6, r1, r6, lsr #8	@, tmp350, D.40337, tmp332,
	and	ip, r0, #65280	@ tmp342, D.40330,
	mov	r2, r0, asl #24	@ tmp340, D.40330,
	orr	r2, r2, r0, lsr #24	@, tmp341, tmp340, D.40330,
	and	r0, r0, #16711680	@ tmp338, D.40330,
	orr	ip, r2, ip, asl #8	@, D.40345, tmp341, tmp342,
	ldmib	r3, {r2, r3}	@ phole ldm
	orr	r0, ip, r0, lsr #8	@, tmp344, D.40345, tmp338,
	cmp	r0, r3	@ tmp344, tmp348
	cmpeq	r6, r2	@, tmp350, tmp354
	bne	.L3757	@,
	movw	r5, #:lower16:g_event_report	@ tmp375,
	movt	r5, #:upper16:g_event_report	@ tmp375,
	ldr	r3, [r5, #0]	@ g_event_report.8414, g_event_report
	cmp	r3, #0	@ g_event_report.8414,
	beq	.L3771	@,
	movw	lr, #52840	@ tmp360,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8414
.L3771:
	mov	r6, #0	@ tmp362,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp362, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	bne	.L3788	@,
.L3757:
	mov	r0, #0	@ D.40265,
	b	.L3756	@
.L3741:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC404	@,
	mov	r3, r6	@, nal_header
	movt	r1, #:upper16:.LC404	@,
	bl	dprint_vfmw	@
	cmp	r6, #256	@ nal_header,
	movweq	r5, #:lower16:g_event_report	@ tmp376,
	movteq	r5, #:upper16:g_event_report	@ tmp376,
	beq	.L3772	@,
	movw	r5, #:lower16:g_event_report	@ tmp376,
	movt	r5, #:upper16:g_event_report	@ tmp376,
	ldr	r3, [r5, #0]	@ g_event_report.8420, g_event_report
	cmp	r3, #0	@ g_event_report.8420,
	beq	.L3772	@,
	movw	r2, #52840	@ tmp367,
	mov	r1, #102	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8420
.L3772:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5, #0]	@ g_event_report.8422, g_event_report
	cmp	r3, #0	@ g_event_report.8422,
	beq	.L3757	@,
.L3781:
	movw	lr, #52840	@ tmp370,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8422
	mov	r0, #0	@ D.40265,
	b	.L3756	@
.L3742:
	movw	lr, #52796	@ tmp227,
	mov	r0, #22	@,
	ldr	r3, [r4, lr]	@, <variable>.TotalSlice
	movw	r1, #:lower16:.LC391	@,
	movt	r1, #:upper16:.LC391	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r2, #20683	@ tmp229,
	movw	r3, #20712	@ tmp233,
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r5, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r5, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r5, r0, #0	@ ret,
	bne	.L3789	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSlice	@
	cmp	r0, #0	@,
	beq	.L3757	@,
	movw	r6, #51348	@ tmp238,
	ldr	r1, [r4, r6]	@ temp.8425, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.8425,
	beq	.L3758	@,
	movw	r3, #52840	@ tmp239,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, r6]	@ ret, <variable>.pUsrDatArray
.L3758:
	movw	r5, #49912	@ tmp242,
	ldr	r1, [r4, r5]	@ temp.8427, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.8427,
	beq	.L3759	@,
	movw	r2, #52840	@ tmp243,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp245,
	str	r1, [r4, r5]	@ tmp245, <variable>.CurrPic.fs_image.p_usrdat
.L3759:
	movw	r5, #51352	@ tmp246,
	ldr	r1, [r4, r5]	@ temp.8429, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.8429,
	beq	.L3760	@,
	movw	lr, #52840	@ tmp247,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp249,
	str	r0, [r4, r5]	@ tmp249, <variable>.pUsrDatArray
.L3760:
	movw	r5, #49916	@ tmp250,
	ldr	r1, [r4, r5]	@ temp.8431, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.8431,
	beq	.L3761	@,
	movw	r3, #52840	@ tmp251,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp253,
	str	ip, [r4, r5]	@ tmp253, <variable>.CurrPic.fs_image.p_usrdat
.L3761:
	movw	r5, #51356	@ tmp254,
	ldr	r1, [r4, r5]	@ temp.8433, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.8433,
	beq	.L3762	@,
	movw	r2, #52840	@ tmp255,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp257,
	str	r1, [r4, r5]	@ tmp257, <variable>.pUsrDatArray
.L3762:
	mov	r5, #49920	@ tmp258,
	ldr	r1, [r4, r5]	@ temp.8435, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.8435,
	beq	.L3763	@,
	movw	lr, #52840	@ tmp259,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp261,
	str	r0, [r4, r5]	@ tmp261, <variable>.CurrPic.fs_image.p_usrdat
.L3763:
	movw	r5, #51360	@ tmp262,
	ldr	r1, [r4, r5]	@ D.40269, <variable>.pUsrDatArray
	cmp	r1, #0	@ D.40269,
	beq	.L3764	@,
	movw	r3, #52840	@ tmp263,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp265,
	str	ip, [r4, r5]	@ tmp265, <variable>.pUsrDatArray
.L3764:
	movw	r5, #49924	@ tmp266,
	ldr	r1, [r4, r5]	@ D.40272, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ D.40272,
	beq	.L3765	@,
	movw	r2, #52840	@ tmp267,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp269,
	str	r1, [r4, r5]	@ tmp269, <variable>.CurrPic.fs_image.p_usrdat
.L3765:
	movw	r0, #:lower16:g_event_report	@ tmp272,
	movt	r0, #:upper16:g_event_report	@ tmp272,
	movw	lr, #51344	@ tmp270,
	mov	r2, #0	@ tmp271,
	str	r2, [r4, lr]	@ tmp271, <variable>.TotalUsrDatNum
	ldr	r3, [r0, #0]	@ g_event_report.8386, g_event_report
	cmp	r3, r2	@ g_event_report.8386,
	bne	.L3778	@,
.L3779:
	mvn	r0, #0	@ D.40265,
	b	.L3756	@
.L3743:
	mov	r2, #6	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC395	@,
	movt	r1, #:upper16:.LC395	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSEI	@
	mov	r5, r0	@ ret.8402,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r5, #0	@ ret.8402,
	beq	.L3757	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC396	@,
	movt	r1, #:upper16:.LC396	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:g_event_report	@ tmp304,
	movt	r1, #:upper16:g_event_report	@ tmp304,
	ldr	r3, [r1, #0]	@ g_event_report.8403, g_event_report
	cmp	r3, #0	@ g_event_report.8403,
	bne	.L3781	@,
	mov	r0, #0	@ D.40265,
	b	.L3756	@
.L3744:
	movw	r5, #52788	@ tmp289,
	mov	r2, #7	@,
	ldr	r3, [r4, r5]	@, <variable>.TotalSPS
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC393	@,
	movt	r1, #:upper16:.LC393	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSPS	@
	mov	r6, r0	@ ret.8394,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8394,
	bne	.L3790	@,
.L3767:
	ldr	r3, [r4, r5]	@ <variable>.TotalSPS,
	mov	r0, r6	@ D.40265, ret.8394
	add	ip, r3, #1	@ tmp301, <variable>.TotalSPS,
	str	ip, [r4, r5]	@ tmp301,
.L3756:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L3745:
	movw	r5, #52792	@ tmp275,
	mov	r2, #8	@,
	ldr	r3, [r4, r5]	@, <variable>.TotalPPS
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC392	@,
	movt	r1, #:upper16:.LC392	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecPPS	@
	mov	r6, r0	@ ret.8388,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8388,
	beq	.L3767	@,
	movw	r5, #:lower16:g_event_report	@ tmp278,
	movt	r5, #:upper16:g_event_report	@ tmp278,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC291	@,
	movt	r1, #:upper16:.LC291	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ g_event_report.8389, g_event_report
	cmp	r3, #0	@ g_event_report.8389,
	beq	.L3779	@,
.L3783:
	add	r2, sp, #8	@ tmp295,,
	movw	r7, #52840	@ tmp294,
	mvn	r6, #0	@ tmp293,
	mov	r1, #100	@,
	str	r6, [r2, #-4]!	@ tmp293,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8395
	ldr	r3, [r5, #0]	@ g_event_report.8398, g_event_report
	cmp	r3, #0	@ g_event_report.8398,
	beq	.L3779	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8398
	mov	r0, r6	@ D.40265, tmp293
	b	.L3756	@
.L3746:
	mov	r2, #9	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC397	@,
	movt	r1, #:upper16:.LC397	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.40265,
	b	.L3756	@
.L3747:
	mov	r2, #10	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC398	@,
	movt	r1, #:upper16:.LC398	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.40265,
	b	.L3756	@
.L3748:
	mov	r2, #11	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC400	@,
	movt	r1, #:upper16:.LC400	@,
	bl	dprint_vfmw	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.40237
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.40310,
	mov	r0, r5	@, D.40237
	bl	BsGet	@
	movw	r2, #:lower16:1128615492	@ tmp312,
	movw	ip, #:lower16:1213419593	@ tmp315,
	movt	r2, #:upper16:1128615492	@ tmp312,
	movt	ip, #:upper16:1213419593	@ tmp315,
	cmp	r0, r2	@, tmp312
	cmpeq	r6, ip	@, D.40310, tmp315
	bne	.L3780	@,
	movw	r5, #:lower16:g_event_report	@ tmp373,
	movt	r5, #:upper16:g_event_report	@ tmp373,
	movw	r0, #13556	@ tmp320,
	mov	r6, #1	@ tmp321,
	strb	r6, [r4, r0]	@ tmp321, <variable>.IsStreamEndFlag
	ldr	r3, [r5, #0]	@ g_event_report.8405, g_event_report
	cmp	r3, #0	@ g_event_report.8405,
	beq	.L3769	@,
	movw	lr, #52840	@ tmp324,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8405
.L3769:
	mov	r6, #0	@ tmp326,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp326, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3780	@,
	ldr	r3, [r5, #0]	@ g_event_report.8408, g_event_report
	cmp	r3, r6	@ g_event_report.8408,
	beq	.L3779	@,
	movw	r1, #52840	@ tmp328,
	mov	r2, r6	@, tmp326
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #113	@,
	blx	r3	@ g_event_report.8408
	mvn	r0, #0	@ D.40265,
	b	.L3756	@
.L3749:
	mov	r2, #12	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC399	@,
	movt	r1, #:upper16:.LC399	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.40265,
	b	.L3756	@
.L3750:
	mov	r2, #13	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC401	@,
	movt	r1, #:upper16:.LC401	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.40265,
	b	.L3756	@
.L3751:
	movw	r1, #:lower16:.LC402	@,
	mov	r2, #19	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC402	@,
	bl	dprint_vfmw	@
.L3780:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.40265,
	b	.L3756	@
.L3786:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC390	@,
	movt	r1, #:upper16:.LC390	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ prephitmp.8357, <variable>.TotalNal
	b	.L3740	@
.L3788:
	ldr	r3, [r5, #0]	@ g_event_report.8417, g_event_report
	cmp	r3, r6	@ g_event_report.8417,
	beq	.L3779	@,
	mov	r2, r6	@, tmp362
.L3778:
	movw	ip, #52840	@ tmp364,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8417
	mvn	r0, #0	@ D.40265,
	b	.L3756	@
.L3787:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	b	.L3770	@
.L3789:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	movw	r0, #:lower16:g_event_report	@ tmp236,
	movt	r0, #:upper16:g_event_report	@ tmp236,
	ldr	r3, [r0, #0]	@ g_event_report.800, g_event_report
	cmp	r3, #0	@ g_event_report.800,
	beq	.L3779	@,
	movw	ip, #52840	@ tmp237,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.800
	mvn	r0, #0	@ D.40265,
	b	.L3756	@
.L3790:
	movw	r5, #:lower16:g_event_report	@ tmp292,
	movt	r5, #:upper16:g_event_report	@ tmp292,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC394	@,
	movt	r1, #:upper16:.LC394	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ g_event_report.8395, g_event_report
	cmp	r3, #0	@ g_event_report.8395,
	bne	.L3783	@,
	mvn	r0, #0	@ D.40265,
	b	.L3756	@
.L3792:
	.align	2
.L3791:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r3, r1, #0	@ pPacket, pPacket
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r5, #0	@ tmp159,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	str	r5, [sp, #12]	@ tmp159, NewNum
	str	r5, [sp, #16]	@ tmp159, ReadNum
	str	r5, [sp, #20]	@ tmp159, RefNum
	beq	.L3836	@,
	ldr	r3, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r6, #51328	@ tmp175,
	ldr	r2, [r0, r6]	@ <variable>.HaveNalNotDecoded, <variable>.HaveNalNotDecoded
	ldr	ip, [r3, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r2, #1	@ <variable>.HaveNalNotDecoded,
	movw	r2, #52828	@ tmp164,
	str	ip, [r0, r2]	@ <variable>.s32DecMode, <variable>.advanced_cfg
	movw	r2, #52832	@ tmp167,
	ldr	ip, [r3, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	str	ip, [r0, r2]	@ <variable>.s32RefErrThr, <variable>.ref_error_thr
	movw	ip, #52780	@ tmp173,
	ldr	r2, [r3, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	movw	r3, #52836	@ tmp170,
	str	r5, [r0, ip]	@ tmp159, <variable>.SeErrFlg
	str	r2, [r0, r3]	@ <variable>.s32OutErrThr, <variable>.out_error_thr
	beq	.L3796	@,
	bl	ReceivePacket	@
	str	r5, [r4, r6]	@ tmp159, <variable>.HaveNalNotDecoded
	cmp	r0, #0	@,
	ldreq	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	beq	.L3797	@,
.L3798:
	mov	r0, #0	@ D.40765,
.L3795:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L3796:
	ldr	r0, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r0, #0	@ <variable>.pCurrNal,
	strne	r5, [r4, r6]	@ tmp159, <variable>.HaveNalNotDecoded
	beq	.L3837	@,
.L3797:
	mov	r6, #0	@ tmp181,
	add	r5, r4, #13504	@ D.40785, pH264Ctx,
	str	r6, [r0, #64]	@ tmp181, <variable>.nal_bitoffset
	add	r5, r5, #24	@ D.40785, D.40785,
	ldr	lr, [r4, #368]	@ temp.8472, <variable>.pCurrNal
	mov	r0, r5	@, D.40785
	ldr	r2, [lr, #12]	@, <variable>.bitstream_length
	ldr	r1, [lr, #8]	@, <variable>.streamBuffer
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.40785
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	uxtb	ip, r0	@ nal_header,
	and	r2, ip, #31	@ nal_unit_type, nal_header,
	strb	r2, [r3, #2]	@ nal_unit_type, <variable>.nal_unit_type
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r2, #1	@ nal_unit_type,
	cmpne	r2, #5	@, nal_unit_type,
	ubfx	r0, ip, #5, #2	@ tmp190, nal_header,,
	str	r0, [r1, #76]	@ tmp190, <variable>.nal_ref_idc
	bne	.L3801	@,
	mov	r0, r4	@, pH264Ctx
	add	r1, sp, #8	@,,
	add	r2, sp, #4	@,,
	bl	InquireSliceProperty	@
	cmp	r0, r6	@,
	bne	.L3802	@,
	ldr	r1, [sp, #8]	@ IsNewPic, IsNewPic
	movw	ip, #52856	@ tmp200,
	ldr	r0, [r4, ip]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r1, #1	@ IsNewPic,
	addeq	r0, r0, #1	@, tmp206, <variable>.PicCounter
	str	r0, [r4, ip]	@ tmp206, <variable>.PicCounter
	beq	.L3838	@,
.L3803:
	ldr	r6, [sp, #4]	@ IsSizeChanged, IsSizeChanged
	cmp	r6, #1	@ IsSizeChanged,
	bne	.L3801	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3839	@,
.L3808:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret.8483,
	bne	.L3840	@,
.L3815:
	movw	r6, #52840	@ tmp249,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L3841	@,
.L3801:
	mov	r0, r4	@, pH264Ctx
	mov	r6, #0	@ tmp281,
	bl	FindTrailZeros	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r0, r5	@, D.40785
	str	r6, [r2, #64]	@ tmp281, <variable>.nal_bitoffset
	ldr	r3, [r4, #368]	@ temp.8492, <variable>.pCurrNal
	ldr	r1, [r3, #8]	@, <variable>.streamBuffer
	ldr	r2, [r3, #12]	@, <variable>.bitstream_length
	bl	BsInit	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, tmp281
	bl	H264_DecOneNal	@
	cmp	r0, r6	@,
	beq	.L3798	@,
	movw	r1, #:lower16:.LC405	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC405	@,
	bl	dprint_vfmw	@
.L3835:
	mvn	r0, #0	@ D.40765,
	b	.L3795	@
.L3837:
	str	r0, [r4, r6]	@ <variable>.pCurrNal, <variable>.HaveNalNotDecoded
	b	.L3795	@
.L3838:
	movw	r1, #20681	@ tmp208,
	movw	r0, #52860	@ tmp210,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r3, #52764	@ tmp219,
	ldr	lr, [r4, r0]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #1	@ <variable>.CurrSlice.field_pic_flag,
	addeq	lr, lr, #1	@ tmp213, <variable>.NewPicCounter,
	addne	lr, lr, #2	@ tmp217, <variable>.NewPicCounter,
	cmp	r2, #0	@ <variable>.SliceParaNum,
	str	lr, [r4, r0]	@ tmp217, <variable>.NewPicCounter
	beq	.L3803	@,
	ldr	lr, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r3, #0	@ tmp222,
	mov	r2, #12	@,
	mov	r0, r5	@, D.40785
	ldr	r1, .L3843	@,
	str	r3, [lr, #64]	@ tmp222, <variable>.nal_bitoffset
	bl	BsInit	@
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecOneNal	@
	movw	r2, #20681	@ tmp225,
	movw	ip, #52860	@ tmp227,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r0, [r4, ip]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	movw	r3, #51328	@ tmp235,
	cmp	r1, #1	@ <variable>.CurrSlice.field_pic_flag,
	mov	r2, #1	@ tmp236,
	subeq	r0, r0, #1	@ tmp230, <variable>.NewPicCounter,
	subne	r0, r0, #2	@ tmp234, <variable>.NewPicCounter,
	str	r2, [r4, r3]	@ tmp236, <variable>.HaveNalNotDecoded
	str	r0, [r4, ip]	@ tmp234, <variable>.NewPicCounter
	mvn	r0, #1	@ D.40765,
	b	.L3795	@
.L3841:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r3, sp, #12	@,,
	add	r1, sp, #20	@,,
	add	r2, sp, #16	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ temp.8485, <variable>.pstExtraData
	ldr	r0, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3842	@,
.L3816:
	ldr	r3, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #1	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3801	@,
	ldr	r2, [sp, #16]	@ ReadNum, ReadNum
	ldr	lr, [sp, #12]	@ NewNum, NewNum
	add	ip, lr, r2	@ tmp264, NewNum, ReadNum
	cmp	ip, #0	@ tmp264,
	ble	.L3801	@,
	movw	r0, #52892	@ tmp269,
	movw	r1, #51328	@ tmp267,
	str	r3, [r4, r0]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.DSD_NeedClearQue
	mvn	r0, #1	@ D.40765,
	str	r3, [r4, r1]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.HaveNalNotDecoded
	b	.L3795	@
.L3840:
	movw	r1, #:lower16:.LC73	@,
	movw	r2, #12470	@,
	movt	r1, #:upper16:.LC73	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L3815	@
.L3839:
	movw	r3, #26628	@ tmp240,
	ldr	lr, [r4, r3]	@ D.41246, <variable>.DPB.used_size
	cmp	lr, #0	@ D.41246,
	beq	.L3808	@,
	mov	r1, #26624	@ tmp241,
	ldr	r2, [r4, r1]	@ temp.8497, <variable>.DPB.size
	cmp	lr, r2	@ D.41246, temp.8497
	bls	.L3809	@,
	movw	r6, #26432	@ tmp243,
	cmp	r2, #0	@ temp.8497,
	ldr	r0, [r4, r6]	@ prephitmp.8453, <variable>.DPB.fs
	str	r2, [r4, r3]	@ temp.8497, <variable>.DPB.used_size
	movne	lr, r2	@ D.41246, temp.8497
	ldr	r1, [r0, #524]	@ s32MaxPoc.8499, <variable>.poc
	beq	.L3810	@,
.L3811:
	tst	lr, #1	@ D.41246,
	add	ip, r4, #26368	@ ivtmp.8466, pH264Ctx,
	mov	r0, #0	@ u32Pos.8498,
	add	r3, ip, #68	@ ivtmp.8466, ivtmp.8466,
	mov	r6, r0	@ u32Pos, u32Pos.8498
	bne	.L3820	@,
	mov	r0, #1	@ u32Pos.8498,
	cmp	r0, lr	@ u32Pos.8498, D.41246
	bcs	.L3831	@,
	ldr	ip, [r3, #0]	@ D.41241, <variable>.DPB.fs
	ldr	r2, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r2, r1	@ s32MaxPoc, s32MaxPoc.8499
	ble	.L3824	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L3824	@,
	mov	r6, r0	@ u32Pos, u32Pos.8498
.L3833:
	add	r3, r3, #4	@ ivtmp.8466, ivtmp.8466,
	mov	r1, r2	@ s32MaxPoc.8499, s32MaxPoc
.L3820:
	add	r0, r0, #1	@ tmp299, u32Pos.8498,
	cmp	r0, lr	@ tmp299, D.41246
	bcs	.L3831	@,
	ldr	ip, [r3, #0]	@ D.41241, <variable>.DPB.fs
	ldr	r2, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r2, r1	@ s32MaxPoc, s32MaxPoc.8499
	ble	.L3812	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	movne	r6, r0	@ u32Pos, tmp299
	beq	.L3812	@,
.L3813:
	ldr	ip, [r3, #4]	@ D.41241, <variable>.DPB.fs
	add	r0, r0, #1	@ u32Pos.8498, tmp299,
	add	r3, r3, #4	@ tmp298, ivtmp.8466,
	ldr	r1, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r1, r2	@ s32MaxPoc, s32MaxPoc
	ble	.L3827	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L3827	@,
	mov	r6, r0	@ u32Pos, u32Pos.8498
	add	r3, r3, #4	@ ivtmp.8466, tmp298,
	b	.L3820	@
.L3812:
	mov	r2, r1	@ s32MaxPoc, s32MaxPoc.8499
	b	.L3813	@
.L3827:
	mov	r1, r2	@ s32MaxPoc, s32MaxPoc
	add	r3, r3, #4	@ ivtmp.8466, tmp298,
	b	.L3820	@
.L3831:
	add	lr, r6, #6592	@ tmp245, u32Pos,
	add	r2, lr, #16	@ tmp245, tmp245,
	ldr	r0, [r4, r2, asl #2]	@ prephitmp.8453, <variable>.DPB.fs
.L3810:
	mov	r3, #1	@ tmp247,
	str	r3, [r0, #384]	@ tmp247, <variable>.fs_image.u32IsLastFrame
	b	.L3808	@
.L3824:
	mov	r2, r1	@ s32MaxPoc, s32MaxPoc.8499
	b	.L3833	@
.L3809:
	movw	r1, #26432	@ tmp291,
	ldr	r6, [r4, r1]	@ <variable>.DPB.fs, <variable>.DPB.fs
	ldr	r1, [r6, #524]	@ s32MaxPoc.8499, <variable>.poc
	b	.L3811	@
.L3802:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	ip, #:lower16:g_event_report	@ tmp278,
	movt	ip, #:upper16:g_event_report	@ tmp278,
	ldr	r3, [ip, #0]	@ g_event_report.833, g_event_report
	cmp	r3, #0	@ g_event_report.833,
	beq	.L3835	@,
	movw	lr, #52840	@ tmp279,
	mov	r2, r6	@, tmp181
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #113	@,
	blx	r3	@ g_event_report.833
	mvn	r0, #0	@ D.40765,
	b	.L3795	@
.L3836:
	mov	r0, r3	@, pPacket
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #12369	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40765,
	b	.L3795	@
.L3842:
	movw	r2, #52876	@ tmp257,
	ldr	ip, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	ldr	r1, [r4, r2]	@ <variable>.DSD_OldWidth, <variable>.DSD_OldWidth
	cmp	r1, ip	@ <variable>.DSD_OldWidth, <variable>.s32DSDThrWidth
	bgt	.L3817	@,
	movw	r1, #52880	@ tmp260,
	ldr	r0, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	lr, [r4, r1]	@ <variable>.DSD_OldHeight, <variable>.DSD_OldHeight
	cmp	lr, r0	@ <variable>.DSD_OldHeight, <variable>.s32DSDThrHeight
	ble	.L3816	@,
.L3817:
	ldr	r3, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #1	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3801	@,
	ldr	ip, [sp, #12]	@ NewNum, NewNum
	cmp	ip, #0	@ NewNum,
	bgt	.L3818	@,
	ldr	r2, [sp, #16]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	ble	.L3801	@,
.L3818:
	movw	r3, #52892	@ tmp274,
	movw	r1, #51328	@ tmp276,
	mov	r0, #0	@ tmp275,
	add	lr, r0, #1	@ tmp277, tmp277,
	str	r0, [r4, r3]	@ tmp275, <variable>.DSD_NeedClearQue
	mvn	r0, #1	@ D.40765,
	str	lr, [r4, r1]	@ tmp277, <variable>.HaveNalNotDecoded
	b	.L3795	@
.L3844:
	.align	2
.L3843:
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
	.type	SarTable.39053, %object
	.size	SarTable.39053, 136
SarTable.39053:
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
	.type	__func__.33569, %object
	.size	__func__.33569, 23
__func__.33569:
	.ascii	"RemoveUnUsedFrameStore\000"
	.space	1
	.type	__func__.40667, %object
	.size	__func__.40667, 13
__func__.40667:
	.ascii	"H264DEC_Init\000"
	.space	3
	.type	__func__.35846, %object
	.size	__func__.35846, 8
__func__.35846:
	.ascii	"InitDPB\000"
	.type	__func__.34411, %object
	.size	__func__.34411, 21
__func__.34411:
	.ascii	"H264DEC_GetRemainImg\000"
	.space	3
	.type	__func__.34247, %object
	.size	__func__.34247, 13
__func__.34247:
	.ascii	"DirectOutput\000"
	.space	3
	.type	__func__.34382, %object
	.size	__func__.34382, 9
__func__.34382:
	.ascii	"FlushDPB\000"
	.space	3
	.type	__func__.34636, %object
	.size	__func__.34636, 14
__func__.34636:
	.ascii	"StorePicInDPB\000"
	.space	2
	.type	__func__.36515, %object
	.size	__func__.36515, 8
__func__.36515:
	.ascii	"InitPic\000"
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
	.type	__func__.39775, %object
	.size	__func__.39775, 12
__func__.39775:
	.ascii	"H264_DecSEI\000"
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
	.type	quant_intra_default, %object
	.size	quant_intra_default, 16
quant_intra_default:
	.word	471076102
	.word	538711053
	.word	622861332
	.word	707076124
	.type	quant_inter_default, %object
	.size	quant_inter_default, 16
quant_inter_default:
	.word	403967498
	.word	454562830
	.word	505092116
	.word	572398360
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
	.ascii	"dar=%d,final_dar=%d\012\000"
	.space	3
.LC1:
	.ascii	"NULL pointer: %s, L%d\012\000"
	.space	1
.LC2:
	.ascii	"/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_h"
	.ascii	"i3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/"
	.ascii	"firmware/common/syntax/h264.c\000"
.LC3:
	.ascii	"pH264Ctx->pCurrNal->nal_bitoffset = %d; code_len_by"
	.ascii	"te = %d; bitstream_length = %d; pH264Ctx->pCurrNal-"
	.ascii	">nal_trail_zero_bit_num = %d\012\000"
.LC4:
	.ascii	"stream[%d]: bitsoffset = %d; valid_bitlen = %d; byt"
	.ascii	"espos = %x\012\000"
	.space	1
.LC5:
	.ascii	"nal_segment = %d is not expected value\012\000"
.LC6:
	.ascii	"stream[%d]: bitsoffset = %d; valid_bitlen = %d\012\000"
.LC7:
	.ascii	"new pic flag = %d\012\000"
	.space	1
.LC8:
	.ascii	"tmp slice  pps id = %d\012\000"
.LC9:
	.ascii	"PPSSPSCheckTmpId: pps with this pic_parameter_set_i"
	.ascii	"d = %d havn't decode\012\000"
	.space	3
.LC10:
	.ascii	"PPSSPSCheckTmpId: seq_parameter_set_id out of range"
	.ascii	".\012\000"
	.space	2
.LC11:
	.ascii	"PPSSPSCheckTmpId: sps with this pic_parameter_set_i"
	.ascii	"d = %d havn't decode\012\000"
	.space	3
.LC12:
	.ascii	"slice  pps id = %d\012\000"
.LC13:
	.ascii	"pps with this pic_parameter_set_id = %d havn't deco"
	.ascii	"de\012\000"
	.space	1
.LC14:
	.ascii	"sps with this pic_parameter_set_id = %d havn't deco"
	.ascii	"de\012\000"
	.space	1
.LC15:
	.ascii	"list[%d][%d]: frame_num=%d, poc=%d\012\000"
.LC16:
	.ascii	"L0: \000"
	.space	3
.LC17:
	.ascii	"%d \000"
.LC18:
	.ascii	"%dt \000"
	.space	3
.LC19:
	.ascii	"%db \000"
	.space	3
.LC20:
	.ascii	"\012\000"
	.space	2
.LC21:
	.ascii	"L1:\000"
.LC22:
	.ascii	"line: %d pstLogicFs is null\012\000"
	.space	3
.LC23:
	.ascii	"framestore %d allocate apc %d\012\000"
	.space	1
.LC24:
	.ascii	"find APC, but logic_fs_id %d abnormal(ref=%d,plfs=%"
	.ascii	"p, pdfs=%p)\012\000"
.LC25:
	.ascii	"exg_pts: %lld <-> %lld\012\000"
.LC26:
	.ascii	"frame %d, state=%d, is already output\012\000"
	.space	1
.LC27:
	.ascii	"plfs(fs=%p, eFoState=%d) is null, logic_fs_id = %d\012"
	.ascii	"\000"
.LC28:
	.ascii	"not used frame: (%d,%d)\012\000"
	.space	3
.LC29:
	.ascii	"frame skip: is_used=%d,skip=%d\012\000"
.LC30:
	.ascii	"topfield skip\012\000"
	.space	1
.LC31:
	.ascii	"bottom field skip\012\000"
	.space	1
.LC32:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC33:
	.ascii	"H264 recycle image\012\000"
.LC34:
	.ascii	"%-50s%50d\012\000"
	.space	1
.LC35:
	.ascii	"DecPicTimingSEI but SPS is invalid.\012\000"
	.space	3
.LC36:
	.ascii	"SEI: cpb_removal_delay\000"
	.space	1
.LC37:
	.ascii	"SEI: dpb_output_delay\000"
	.space	2
.LC38:
	.ascii	"pic_struct\000"
	.space	1
.LC39:
	.ascii	"\012 VFMW ** release streambuff=%08x   bitstream_le"
	.ascii	"ngth=%d\012\000"
	.space	3
.LC40:
	.ascii	"clear curr slice.\012\000"
	.space	1
.LC41:
	.ascii	"\012\012END of the bit buffer, copy the first packe"
	.ascii	"t!\012\012\000"
	.space	2
.LC42:
	.ascii	"0:phy:0x%x, 1:phy:0x%x; len0:%d len1:%d\012\000"
	.space	3
.LC43:
	.ascii	"0:phy:0x%x, len0:%d\012\000"
	.space	3
.LC44:
	.ascii	"nal_ref_idc=%d, structure=%d, image_id=%d, pmv_idc="
	.ascii	"%d\012\000"
	.space	1
.LC45:
	.ascii	"logic frame id(=%d): get LogicFs error!\012\000"
	.space	3
.LC46:
	.ascii	"phy fs is null: pstDecodeFs = %p, pstDispOutFs = %p"
	.ascii	"\012\000"
	.space	3
.LC47:
	.ascii	"for P slice size of list equal 0.\012\000"
	.space	1
.LC48:
	.ascii	"for B slice size of two list all equal 0.\012\000"
	.space	1
.LC49:
	.ascii	"init list error.\012\000"
	.space	2
.LC50:
	.ascii	"L0: list after init.\012\000"
	.space	2
.LC51:
	.ascii	"L0: list after reorder.\012\000"
	.space	3
.LC52:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC53:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC54:
	.ascii	"stream frame packing type is %d! what can we do?\012"
	.ascii	"\000"
	.space	2
.LC55:
	.ascii	"[%s][%d],Error parm!!!\012\000"
.LC56:
	.ascii	"clear all dec para\012\000"
.LC57:
	.ascii	"cann't find FrameStore\012\000"
.LC58:
	.ascii	"========== H264 FrameStore state(is_used, is_in_dpb"
	.ascii	", IsOutDPB) ========\012\000"
	.space	3
.LC59:
	.ascii	"%02d: %d %d %d\012\000"
.LC60:
	.ascii	"ReadImgNum = %d, NewImgNum = %d\012\000"
	.space	3
.LC61:
	.ascii	"FrameStore leak, ClearAll\012\000"
	.space	1
.LC62:
	.ascii	"%s %d unknow error!!\012\000"
	.space	2
.LC63:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC64:
	.ascii	"FS_ALLOC_ERR, ClearAll\012\000"
.LC65:
	.ascii	"Can not new logic fs! ClearAll\012\000"
.LC66:
	.ascii	"pH264Ctx is %#x, pFrameStore is %#x\012\000"
	.space	3
.LC67:
	.ascii	"line; %d pstLogicFsImage is NULL!\012\000"
	.space	1
.LC68:
	.ascii	"InsertVO err:%d, ClearAll\012\000"
	.space	1
.LC69:
	.ascii	"H264.c line %d: frame para err(ret=%d), recycle ima"
	.ascii	"ge self\012\000"
.LC70:
	.ascii	"line: %d pstLogicFsImage is NULL!\012\000"
	.space	1
.LC71:
	.ascii	"[%s][[%d] %d!\012\000"
	.space	1
.LC72:
	.ascii	"[%s][%d],RemoveUnUsedFrameStore failed!!\012\000"
	.space	2
.LC73:
	.ascii	"line %d: flush dpb return %d\012\000"
	.space	2
.LC74:
	.ascii	"\012 receive streambuff=0x%08x; phy_addr=0x%x; bits"
	.ascii	"tream_length=%d\012\000"
	.space	3
.LC75:
	.ascii	"nal_release_err\012\000"
	.space	3
.LC76:
	.ascii	"cann't find slot for current nal\012\000"
	.space	2
.LC77:
	.ascii	"receive a zero packet\012\000"
	.space	1
.LC78:
	.ascii	"----------------- Imode -> %d ------------------\012"
	.ascii	"\000"
	.space	2
.LC79:
	.ascii	"Discard this B(poc=%d) befor P, is_ref_idc=%d.\012\000"
.LC80:
	.ascii	"***** VDM start, TotalPicNum=%d, pH264Ctx->CurrPic."
	.ascii	"structure=%d.\012\000"
	.space	2
.LC81:
	.ascii	"line %d, get APC error, ret %d\012\000"
.LC82:
	.ascii	"InserFrmInDPB: cur pic struct = %d!\012\000"
	.space	3
.LC83:
	.ascii	"CurrPic.state is 'EMPTY'\012\000"
	.space	2
.LC84:
	.ascii	"StorePicInDPB return(%d) from L%d\012\000"
	.space	1
.LC85:
	.ascii	"line %d, return %d\012\000"
.LC86:
	.ascii	"directoutput mode\012\000"
	.space	1
.LC87:
	.ascii	"line: %d pImg is NULL!\012\000"
.LC88:
	.ascii	"line %d, REPORT_IFRAME_ERR\012\000"
.LC89:
	.ascii	"err(%d) > ref_thr(%d)\012\000"
	.space	1
.LC90:
	.ascii	"marking return %d\012\000"
	.space	1
.LC91:
	.ascii	"line %d: pH264Ctx->DPB.size = %d, ref %d, ltref %d\012"
	.ascii	"\000"
.LC92:
	.ascii	"line %d,DPB.used_size %d; pos(%d) = pre_pos, force "
	.ascii	"return.\012\000"
.LC93:
	.ascii	"store pic err, ret = %d\012\000"
	.space	3
.LC94:
	.ascii	"imode nal store pic err, ret = %d\012\000"
	.space	1
.LC95:
	.ascii	"imode nal flush dpb err, ret = %d\012\000"
	.space	1
.LC96:
	.ascii	"GAP found while DPB is empty!\012\000"
	.space	1
.LC97:
	.ascii	"frame num gap try to fill it \012\000"
	.space	1
.LC98:
	.ascii	"CurrFrameNum = %d  UnusedShortTermFrameNum = %d\012"
	.ascii	"\000"
	.space	3
.LC99:
	.ascii	"cann't allocate frame store when gap find\012\000"
	.space	1
.LC100:
	.ascii	"allocate frame store when gap find\012\000"
.LC101:
	.ascii	"line %d: store gap pic err, ret=%d\012\000"
.LC102:
	.ascii	"%s %d frame_store is null!!\012\000"
	.space	3
.LC103:
	.ascii	"line %d: init dpb return %d\012\000"
	.space	3
.LC104:
	.ascii	"resolution error, the CAP_LEVEL_USER_DEFINE_WITH_OP"
	.ascii	"TION channel with s32ReRangeEn == 0 can't support s"
	.ascii	"uch bitstream.\012\000"
	.space	2
.LC105:
	.ascii	"s32MaxRefFrameNum < pH264Ctx->DPB.size, the CAP_LEV"
	.ascii	"EL_USER_DEFINE_WITH_OPTION channel can't support su"
	.ascii	"ch bitstream.\012\000"
	.space	3
.LC106:
	.ascii	"mem arrange err, ClearAll\012\000"
	.space	1
.LC107:
	.ascii	"get back frm\012\000"
	.space	2
.LC108:
	.ascii	"line %d: frame gap(=%d) > dpb size(=%d)\012\000"
	.space	3
.LC109:
	.ascii	"frame num gap don't allowed but gap find\012\000"
	.space	2
.LC110:
	.ascii	"line %d: find gap in NON-I slice but here gap is no"
	.ascii	"t allowed\012\000"
	.space	2
.LC111:
	.ascii	"line %d: dec gap failed\012\000"
	.space	3
.LC112:
	.ascii	"line %d: alloc framestore failed\012\000"
	.space	2
.LC113:
	.ascii	"dec_pts: %lld\012\000"
	.space	1
.LC114:
	.ascii	"dec_usertag: %lld\012\000"
	.space	1
.LC115:
	.ascii	"%s %d NULL == pH264Ctx->CurrPic.frame_store!!\012\000"
	.space	1
.LC116:
	.ascii	"   : delta_sl   \000"
	.space	3
.LC117:
	.ascii	"SEI: frame_packing_arrangement_id\000"
	.space	2
.LC118:
	.ascii	"SEI: frame_packing_arrangement_cancel_flag\000"
	.space	1
.LC119:
	.ascii	"SEI: frame_packing_arrangement_type\000"
.LC120:
	.ascii	"SEI: quincunx_sampling_flag\000"
.LC121:
	.ascii	"SEI: content_interpretation_type\000"
	.space	3
.LC122:
	.ascii	"SEI: spatial_flipping_flag\000"
	.space	1
.LC123:
	.ascii	"SEI: frame0_flipped_flag\000"
	.space	3
.LC124:
	.ascii	"SEI: field_views_flag\000"
	.space	2
.LC125:
	.ascii	"SEI: current_frame_is_frame0_flag\000"
	.space	2
.LC126:
	.ascii	"SEI: frame0_self_contained_flag\000"
.LC127:
	.ascii	"SEI: frame1_self_contained_flag\000"
.LC128:
	.ascii	"SEI: frame0_grid_position_x\000"
.LC129:
	.ascii	"SEI: frame0_grid_position_y\000"
.LC130:
	.ascii	"SEI: frame1_grid_position_x\000"
.LC131:
	.ascii	"SEI: frame1_grid_position_y\000"
.LC132:
	.ascii	"SEI: frame_packing_arrangement_reserved_byte\000"
	.space	3
.LC133:
	.ascii	"SEI: frame_packing_arrangement_repetition_period\000"
	.space	3
.LC134:
	.ascii	"SEI: frame_packing_arrangement_extension_flag\000"
	.space	2
.LC135:
	.ascii	"SEI nal dec payload type err\012\000"
	.space	2
.LC136:
	.ascii	"SEI nal dec payloadSize err\012\000"
	.space	3
.LC137:
	.ascii	"SEI_BUFFERING_PERIOD,offset = %d,payload_size = %d "
	.ascii	"\012\000"
	.space	3
.LC138:
	.ascii	"SEI_PIC_TIMING,offset = %d,payload_size = %d \012\000"
	.space	1
.LC139:
	.ascii	"SEI_PAN_SCAN_RECT,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	2
.LC140:
	.ascii	"SEI_FILLER_PAYLOAD,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	1
.LC141:
	.ascii	"SEI_USER_DATA_REGISTERED_ITU_T_T35, offset = %d, pa"
	.ascii	"yload_size = %d \012\000"
	.space	3
.LC142:
	.ascii	"SEI_USER_DATA_UNREGISTERED, offset = %d, payload_si"
	.ascii	"ze = %d \012\000"
	.space	3
.LC143:
	.ascii	"SEI: itu_t_t35_country_code\000"
.LC144:
	.ascii	"SEI: itu_t_t35_country_code_extension_byte\000"
	.space	1
.LC145:
	.ascii	"SEI: itu_t_t35_provider_code\000"
	.space	3
.LC146:
	.ascii	"cann't dec usrdata\012\000"
.LC147:
	.ascii	"SEI_RECOVERY_POINT,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	1
.LC148:
	.ascii	"SEI_DEC_REF_PIC_MARKING_REPETITION,offset = %d,payl"
	.ascii	"oad_size = %d \012\000"
	.space	1
.LC149:
	.ascii	"SEI_SPARE_PIC,offset = %d,payload_size = %d \012\000"
	.space	2
.LC150:
	.ascii	"SEI_SCENE_INFO,offset = %d,payload_size = %d \012\000"
	.space	1
.LC151:
	.ascii	"SEI_SUB_SEQ_INFO,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	3
.LC152:
	.ascii	"SEI_SUB_SEQ_LAYER_CHARACTERISTICS,offset = %d,paylo"
	.ascii	"ad_size = %d \012\000"
	.space	2
.LC153:
	.ascii	"SEI_SUB_SEQ_CHARACTERISTICS,offset = %d,payload_siz"
	.ascii	"e = %d \012\000"
.LC154:
	.ascii	"SEI_FULL_FRAME_FREEZE,offset = %d,payload_size = %d"
	.ascii	" \012\000"
	.space	2
.LC155:
	.ascii	"SEI_FULL_FRAME_FREEZE_RELEASE,offset = %d,payload_s"
	.ascii	"ize = %d \012\000"
	.space	2
.LC156:
	.ascii	"SEI_FULL_FRAME_SNAPSHOT,offset = %d,payload_size = "
	.ascii	"%d \012\000"
.LC157:
	.ascii	"SEI_PROGRESSIVE_REFINEMENT_SEGMENT_START,offset = %"
	.ascii	"d,payload_size = %d \012\000"
	.space	3
.LC158:
	.ascii	"SEI_PROGRESSIVE_REFINEMENT_SEGMENT_END,offset = %d,"
	.ascii	"payload_size = %d \012\000"
	.space	1
.LC159:
	.ascii	"SEI_MOTION_CONSTRAINED_SLICE_GROUP_SET,offset = %d,"
	.ascii	"payload_size = %d \012\000"
	.space	1
.LC160:
	.ascii	"SEI_FILM_GRAIN_CHARACTERISTICS,offset = %d,payload_"
	.ascii	"size = %d \012\000"
	.space	1
.LC161:
	.ascii	"SEI_DEBLOCKING_FILTER_DISPLAY_PREFERENCE,offset = %"
	.ascii	"d,payload_size = %d \012\000"
	.space	3
.LC162:
	.ascii	"SEI_STEREO_VIDEO_INFO,offset = %d,payload_size = %d"
	.ascii	" \012\000"
	.space	2
.LC163:
	.ascii	"too much usrdat, cann't dec SEI\012\000"
	.space	3
.LC164:
	.ascii	"VUI: aspect_ratio_info_present_flag\000"
.LC165:
	.ascii	"VUI: aspect_ratio_idc\000"
	.space	2
.LC166:
	.ascii	"VUI: sar_width\000"
	.space	1
.LC167:
	.ascii	"VUI: sar_height\000"
.LC168:
	.ascii	"VUI: overscan_info_present_flag\000"
.LC169:
	.ascii	"VUI: overscan_appropriate_flag\000"
	.space	1
.LC170:
	.ascii	"VUI: video_signal_type_present_flag\000"
.LC171:
	.ascii	"VUI: video_format\000"
	.space	2
.LC172:
	.ascii	"VUI: video_full_range_flag\000"
	.space	1
.LC173:
	.ascii	"VUI: color_description_present_flag\000"
.LC174:
	.ascii	"VUI: colour_primaries\000"
	.space	2
.LC175:
	.ascii	"VUI: transfer_characteristics\000"
	.space	2
.LC176:
	.ascii	"VUI: matrix_coefficients\000"
	.space	3
.LC177:
	.ascii	"VUI: chroma_loc_info_present_flag\000"
	.space	2
.LC178:
	.ascii	"VUI: chroma_sample_loc_type_top_field\000"
	.space	2
.LC179:
	.ascii	"VUI: chroma_sample_loc_type_bottom_field\000"
	.space	3
.LC180:
	.ascii	"VUI: timing_info_present_flag\000"
	.space	2
.LC181:
	.ascii	"VUI: num_units_in_tick\000"
	.space	1
.LC182:
	.ascii	"VUI: time_scale\000"
.LC183:
	.ascii	"VUI: fixed_frame_rate_flag\000"
	.space	1
.LC184:
	.ascii	"VUI: nal_hrd_parameters_present_flag\000"
	.space	3
.LC185:
	.ascii	"VUI: cpb_cnt_minus1\000"
.LC186:
	.ascii	"VUI: bit_rate_scale\000"
.LC187:
	.ascii	"VUI: cpb_size_scale\000"
.LC188:
	.ascii	"hrd->cpb_cnt_minus1 out of range\012\000"
	.space	2
.LC189:
	.ascii	"VUI: bit_rate_value_minus1\000"
	.space	1
.LC190:
	.ascii	"VUI: cpb_size_value_minus1\000"
	.space	1
.LC191:
	.ascii	"VUI: cbr_flag\000"
	.space	2
.LC192:
	.ascii	"VUI: initial_cpb_removal_delay_length_minus1\000"
	.space	3
.LC193:
	.ascii	"VUI: cpb_removal_delay_length_minus1\000"
	.space	3
.LC194:
	.ascii	"VUI: dpb_output_delay_length_minus1\000"
.LC195:
	.ascii	"VUI: time_offset_length\000"
.LC196:
	.ascii	"VUI: vcl_hrd_parameters_present_flag\000"
	.space	3
.LC197:
	.ascii	"VUI: low_delay_hrd_flag\000"
.LC198:
	.ascii	"VUI: pic_struct_present_flag\000"
	.space	3
.LC199:
	.ascii	"VUI: bitstream_restriction_flag\000"
.LC200:
	.ascii	"VUI: motion_vectors_over_pic_boundaries_flag\000"
	.space	3
.LC201:
	.ascii	"VUI: max_bytes_per_pic_denom\000"
	.space	3
.LC202:
	.ascii	"VUI: max_bits_per_mb_denom\000"
	.space	1
.LC203:
	.ascii	"VUI: log2_max_mv_length_horizontal\000"
	.space	1
.LC204:
	.ascii	"VUI: log2_max_mv_length_vertical\000"
	.space	3
.LC205:
	.ascii	"VUI: num_reorder_frames\000"
.LC206:
	.ascii	"VUI: max_dec_frame_buffering\000"
	.space	3
.LC207:
	.ascii	"SPS: chroma_format_idc\000"
	.space	1
.LC208:
	.ascii	"pSPS->chroma_format_idc out of range.\012\000"
	.space	1
.LC209:
	.ascii	"SPS: bit_depth_luma_minus8\000"
	.space	1
.LC210:
	.ascii	"bit_depth_luma_minus8 not equal 0.\012\000"
.LC211:
	.ascii	"SPS: bit_depth_chroma_minus8\000"
	.space	3
.LC212:
	.ascii	"bit_depth_chroma_minus8 not equal 0.\012\000"
	.space	2
.LC213:
	.ascii	"SPS: qpprime_y_zero_trans_bypass_flag\000"
	.space	2
.LC214:
	.ascii	"qpprime_y_zero_trans_bypass_flag not equal 0.\012\000"
	.space	1
.LC215:
	.ascii	"SPS: seq_scaling_matrix_present_flag\000"
	.space	3
.LC216:
	.ascii	"SPS: seq_scaling_list_present_flag\000"
	.space	1
.LC217:
	.ascii	"SPS: log2_max_frame_num_minus4\000"
	.space	1
.LC218:
	.ascii	"pSPS->log2_max_frame_num_minus4 out of range.\012\000"
	.space	1
.LC219:
	.ascii	"SPS: pic_order_cnt_type\000"
.LC220:
	.ascii	"pSPS->pic_order_cnt_type out of range.\012\000"
.LC221:
	.ascii	"SPS: log2_max_pic_order_cnt_lsb_minus4\000"
	.space	1
.LC222:
	.ascii	"pSPS->log2_max_pic_order_cnt_lsb_minus4 out of rang"
	.ascii	"e.\012\000"
	.space	1
.LC223:
	.ascii	"SPS: delta_pic_order_always_zero_flag\000"
	.space	2
.LC224:
	.ascii	"SPS: offset_for_non_ref_pic\000"
.LC225:
	.ascii	"SPS: offset_for_top_to_bottom_field\000"
.LC226:
	.ascii	"SPS: num_ref_frames_in_pic_order_cnt_cycle\000"
	.space	1
.LC227:
	.ascii	"pSPS->num_ref_frames_in_pic_order_cnt_cycle out of "
	.ascii	"range.\012\000"
	.space	1
.LC228:
	.ascii	"SPS: offset_for_ref_frame[i]\000"
	.space	3
.LC229:
	.ascii	"SPS: num_ref_frames\000"
.LC230:
	.ascii	"SPS: gaps_in_frame_num_value_allowed_flag\000"
	.space	2
.LC231:
	.ascii	"SPS: pic_width_in_mbs_minus1\000"
	.space	3
.LC232:
	.ascii	"pSPS->pic_width_in_mbs_minus1 out of range(=%d).\012"
	.ascii	"\000"
	.space	2
.LC233:
	.ascii	"SPS: pic_height_in_map_units_minus1\000"
.LC234:
	.ascii	"SPS: frame_mbs_only_flag\000"
	.space	3
.LC235:
	.ascii	"SPS: mb_adaptive_frame_field_flag\000"
	.space	2
.LC236:
	.ascii	"pSPS->pic_height_in_map_units_minus1 out of range.\012"
	.ascii	"\000"
.LC237:
	.ascii	"pic size too large.\012\000"
	.space	3
.LC238:
	.ascii	"level_idc %d not support.\012\000"
	.space	1
.LC239:
	.ascii	"dpb size according level : %d\012\000"
	.space	1
.LC240:
	.ascii	"pSPS->num_ref_frames(%d) > DPB size(%d), try to sel"
	.ascii	"ect the reasonable one.\012\000"
.LC241:
	.ascii	"SPS: direct_8x8_inference_flag\000"
	.space	1
.LC242:
	.ascii	"SPS: frame_cropping_flag\000"
	.space	3
.LC243:
	.ascii	"SPS: frame_cropping_rect_left_offset\000"
	.space	3
.LC244:
	.ascii	"SPS: frame_cropping_rect_right_offset\000"
	.space	2
.LC245:
	.ascii	"SPS: frame_cropping_rect_top_offset\000"
.LC246:
	.ascii	"SPS: frame_cropping_rect_bottom_offset\000"
	.space	1
.LC247:
	.ascii	"SPS: vui_parameters_present_flag\000"
	.space	3
.LC248:
	.ascii	"max_dec_frame_buffering(%d) > MaxDpbSize(%d)\012\000"
	.space	2
.LC249:
	.ascii	"SPS: profile_idc\000"
	.space	3
.LC250:
	.ascii	"SPS: constrained_set0_flag\000"
	.space	1
.LC251:
	.ascii	"SPS: constrained_set1_flag\000"
	.space	1
.LC252:
	.ascii	"SPS: constrained_set2_flag\000"
	.space	1
.LC253:
	.ascii	"SPS: constrained_set3_flag\000"
	.space	1
.LC254:
	.ascii	"SPS: reserved_zero_4bits\000"
	.space	3
.LC255:
	.ascii	"SPS: level_idc\000"
	.space	1
.LC256:
	.ascii	"SPS: seq_parameter_set_id\000"
	.space	2
.LC257:
	.ascii	"seq_parameter_set_id out of range.\012\000"
.LC258:
	.ascii	"Baseline stream, try to decode, exit when FMO occur"
	.ascii	"red.\012\000"
	.space	3
.LC259:
	.ascii	"EXTENDED stream, try to decode, exit when dataparti"
	.ascii	"tion occurred.\012\000"
	.space	1
.LC260:
	.ascii	"others High profile stream, try to decode, exit whe"
	.ascii	"n high profile not support occurred.\012\000"
	.space	3
.LC261:
	.ascii	"profile_idc = %5d error, try to decode as main prof"
	.ascii	"ile.\012\000"
	.space	3
.LC262:
	.ascii	"level_idc = %5d error, try to decode as level_idc %"
	.ascii	"d.\012\000"
	.space	1
.LC263:
	.ascii	"Line %d: SPS[%d] decode error.\012\000"
.LC264:
	.ascii	"PPS: entropy_coding_mode_flag\000"
	.space	2
.LC265:
	.ascii	"PPS: pic_order_present_flag\000"
.LC266:
	.ascii	"PPS: num_slice_groups_minus1\000"
	.space	3
.LC267:
	.ascii	"Baseline stream with FMO, not support.\012\000"
.LC268:
	.ascii	"PPS: num_ref_idx_l0_active_minus1\000"
	.space	2
.LC269:
	.ascii	"num_ref_idx_l0_active_minus1 out of range.\012\000"
.LC270:
	.ascii	"PPS: num_ref_idx_l1_active_minus1\000"
	.space	2
.LC271:
	.ascii	"num_ref_idx_l1_active_minus1 out of range.\012\000"
.LC272:
	.ascii	"PPS: weighted prediction flag\000"
	.space	2
.LC273:
	.ascii	"PPS: weighted_bipred_idc\000"
	.space	3
.LC274:
	.ascii	"weighted_bipred_idc out of range\012\000"
	.space	2
.LC275:
	.ascii	"PPS: pic_init_qp_minus26\000"
	.space	3
.LC276:
	.ascii	"PPS: pic_init_qs_minus26\000"
	.space	3
.LC277:
	.ascii	"PPS: chroma_qp_index_offset\000"
.LC278:
	.ascii	"PPS: deblocking_filter_control_present_flag\000"
.LC279:
	.ascii	"PPS: constrained_intra_pred_flag\000"
	.space	3
.LC280:
	.ascii	"PPS: redundant_pic_cnt_present_flag\000"
.LC281:
	.ascii	"redundant pic not support when find redundant slice"
	.ascii	" later, exit\012\000"
	.space	3
.LC282:
	.ascii	"PPS: transform_8x8_mode_flag\000"
	.space	3
.LC283:
	.ascii	"PPS: pic_scaling_matrix_present_flag\000"
	.space	3
.LC284:
	.ascii	"PPS: pic_scaling_list_present_flag\000"
	.space	1
.LC285:
	.ascii	"PPS: second_chroma_qp_index_offset\000"
	.space	1
.LC286:
	.ascii	"second_chroma_qp_index_offset out of range.\012\000"
	.space	3
.LC287:
	.ascii	"PPS: pic_parameter_set_id\000"
	.space	2
.LC288:
	.ascii	"pic_parameter_set_id out of range.\012\000"
.LC289:
	.ascii	"PPS: seq_parameter_set_id\000"
	.space	2
.LC290:
	.ascii	"SPS haven't decode.\012\000"
	.space	3
.LC291:
	.ascii	"PPS decode error.\012\000"
	.space	1
.LC292:
	.ascii	"SH: pic_parameter_set_id\000"
	.space	3
.LC293:
	.ascii	"pps id:%d in sliceheader err\012\000"
	.space	2
.LC294:
	.ascii	"PPS or SPS of this slice not valid\012\000"
.LC295:
	.ascii	"recover point but isn't I_SLICE.\012\000"
	.space	2
.LC296:
	.ascii	"SH: frame_num\000"
	.space	2
.LC297:
	.ascii	"IDR NAL but frame_num!=0.\012\000"
	.space	1
.LC298:
	.ascii	"SH: field_pic_flag\000"
	.space	1
.LC299:
	.ascii	"SH: bottom_field_flag\000"
	.space	2
.LC300:
	.ascii	"field first_mb_in_slice bigger than pic size\012\000"
	.space	2
.LC301:
	.ascii	"frame first_mb_in_slice bigger than pic size\012\000"
	.space	2
.LC302:
	.ascii	"SH: idr_pic_id\000"
	.space	1
.LC303:
	.ascii	"idr_pic_id bigger than 65535\012\000"
	.space	2
.LC304:
	.ascii	"SH: pic_order_cnt_lsb\000"
	.space	2
.LC305:
	.ascii	"SH: delta_pic_order_cnt_bottom\000"
	.space	1
.LC306:
	.ascii	"SH: delta_pic_order_cnt[0]\000"
	.space	1
.LC307:
	.ascii	"SH: delta_pic_order_cnt[1]\000"
	.space	1
.LC308:
	.ascii	"SH: redundant_pic_cnt\000"
	.space	2
.LC309:
	.ascii	"redundant pic not support.\012\000"
.LC310:
	.ascii	"first_mb_in_slice in currslice small than prevslice"
	.ascii	" in same pic\012\000"
	.space	3
.LC311:
	.ascii	"overflow MAX_MMCO_LEN\012\000"
	.space	1
.LC312:
	.ascii	"SH: memory_management_control_operation\000"
.LC313:
	.ascii	"SH: difference_of_pic_nums_minus1\000"
	.space	2
.LC314:
	.ascii	"SH: long_term_pic_num\000"
	.space	2
.LC315:
	.ascii	"SH: long_term_frame_idx\000"
.LC316:
	.ascii	"SH: max_long_term_frame_idx_plus1\000"
	.space	2
.LC317:
	.ascii	"mmco exceed 6\012\000"
	.space	1
.LC318:
	.ascii	"SH: no_output_of_prior_pics_flag\000"
	.space	3
.LC319:
	.ascii	"SH: long_term_reference_flag\000"
	.space	3
.LC320:
	.ascii	"IDR and no_output_of_prior_pics_flag = %d\012\000"
	.space	1
.LC321:
	.ascii	"SH: adaptive_ref_pic_marking_mode_flag\000"
	.space	1
.LC322:
	.ascii	"adaptive_ref_pic_marking_mode_flag = %d\012\000"
	.space	3
.LC323:
	.ascii	"MMCO para would save dec err\012\000"
	.space	2
.LC324:
	.ascii	"mulitislice diff no_out_of_prior_pics_flag, used fi"
	.ascii	"rst.\012\000"
	.space	3
.LC325:
	.ascii	"mulitislice diff long_term_reference_flag, used fir"
	.ascii	"st.\012\000"
.LC326:
	.ascii	"mulitislice diff adaptive_ref_pic_marking_mode_flag"
	.ascii	", used first.\012\000"
	.space	2
.LC327:
	.ascii	"TotalPicNum=%d, SliceNumInPic=%d, TotalNal=%d\012\000"
	.space	1
.LC328:
	.ascii	"SH: luma_log2_weight_denom\000"
	.space	1
.LC329:
	.ascii	"SH: chroma_log2_weight_denom\000"
	.space	3
.LC330:
	.ascii	"WP log2 exceed  and err flag = %d\012\000"
	.space	1
.LC331:
	.ascii	"SH: luma_weight_flag_l0\000"
.LC332:
	.ascii	"SH: luma_weight_l0\000"
	.space	1
.LC333:
	.ascii	"SH: luma_offset_l0\000"
	.space	1
.LC334:
	.ascii	"SH: chroma_weight_flag_l0\000"
	.space	2
.LC335:
	.ascii	"SH: chroma_weight_l0\000"
	.space	3
.LC336:
	.ascii	"SH: chroma_offset_l0\000"
	.space	3
.LC337:
	.ascii	"SH: luma_weight_flag_l1\000"
.LC338:
	.ascii	"SH: luma_weight_l1\000"
	.space	1
.LC339:
	.ascii	"SH: luma_offset_l1\000"
	.space	1
.LC340:
	.ascii	"SH: chroma_weight_flag_l1\000"
	.space	2
.LC341:
	.ascii	"SH: chroma_weight_l1\000"
	.space	3
.LC342:
	.ascii	"SH: chroma_offset_l1\000"
	.space	3
.LC343:
	.ascii	"SH: ref_pic_list_reordering_flag_l0\000"
.LC344:
	.ascii	"SH: reordering_of_pic_nums_idc_l0\000"
	.space	2
.LC345:
	.ascii	"reorder idc l0 = %d, g_SeErrFlag=%d\012\000"
	.space	3
.LC346:
	.ascii	"SH: abs_diff_pic_num_minus1_l0\000"
	.space	1
.LC347:
	.ascii	"abs_diff_pic_num_minus1_l0 = %d, g_SeErrFlag=%d\012"
	.ascii	"\000"
	.space	3
.LC348:
	.ascii	"SH: long_term_pic_idx_l0\000"
	.space	3
.LC349:
	.ascii	"num of idc l0 exceed\012\000"
	.space	2
.LC350:
	.ascii	"SH: ref_pic_list_reordering_flag_l1\000"
.LC351:
	.ascii	"SH: reordering_of_pic_nums_idc_l1\000"
	.space	2
.LC352:
	.ascii	"reorder idc l1 = %d, g_SeErrFlag=%d\012\000"
	.space	3
.LC353:
	.ascii	"SH: abs_diff_pic_num_minus1_l1\000"
	.space	1
.LC354:
	.ascii	"abs_diff_pic_num_minus1_l1 = %d, g_SeErrFlag=%d\012"
	.ascii	"\000"
	.space	3
.LC355:
	.ascii	"SH: long_term_pic_idx_l1\000"
	.space	3
.LC356:
	.ascii	"num of idc l1 exceed\012\000"
	.space	2
.LC357:
	.ascii	"SH: direct_spatial_mv_pred_flag\000"
.LC358:
	.ascii	"SH: num_ref_idx_override_flag\000"
	.space	2
.LC359:
	.ascii	"SH: num_ref_idx_l0_active_minus1\000"
	.space	3
.LC360:
	.ascii	"SH: num_ref_idx_l1_active_minus1\000"
	.space	3
.LC361:
	.ascii	"frame num_ref_idx_lx_active_minus1 exceed\012\000"
	.space	1
.LC362:
	.ascii	"field num_ref_idx_lx_active_minus1 exceed\012\000"
	.space	1
.LC363:
	.ascii	"reordering para dec err\012\000"
	.space	3
.LC364:
	.ascii	"apply_weights_flag=%d\012\000"
	.space	1
.LC365:
	.ascii	"wpt dec err\012\000"
	.space	3
.LC366:
	.ascii	"mark para dec err\012\000"
	.space	1
.LC367:
	.ascii	"SH: cabac_init_idc\000"
	.space	1
.LC368:
	.ascii	"cabac_init_idc bigger than 3\012\000"
	.space	2
.LC369:
	.ascii	"SH: slice_qp_delta\000"
	.space	1
.LC370:
	.ascii	"SH: disable_deblocking_filter_idc\000"
	.space	2
.LC371:
	.ascii	"disable_deblocking_filter_idc dec err\012\000"
	.space	1
.LC372:
	.ascii	"SH: slice_alpha_c0_offset_div2\000"
	.space	1
.LC373:
	.ascii	"slice_alpha_c0_offset_div2 dec err\012\000"
.LC374:
	.ascii	"SH: slice_beta_offset_div2\000"
	.space	1
.LC375:
	.ascii	"slice_beta_offset_div2 dec err\012\000"
.LC376:
	.ascii	"\012Slice nal or IDR nal = %d\012\000"
.LC377:
	.ascii	"sliceheader dec err\012\000"
	.space	3
.LC378:
	.ascii	"Start Reason: SliceParaNum, MaxBytesReceived = %d, "
	.ascii	"%d(thr=%d)\012\000"
	.space	1
.LC379:
	.ascii	"Too many slice or bitstream, err!\012\000"
	.space	1
.LC380:
	.ascii	"Start Reason: new_pic_flag\012\000"
.LC381:
	.ascii	"init pic err, find next recover point or next valid"
	.ascii	" sps, pps, or exit\012\000"
	.space	1
.LC382:
	.ascii	"DecList error, ret=%d\012\000"
	.space	1
.LC383:
	.ascii	"dec list err.\012\000"
	.space	1
.LC384:
	.ascii	"SH: first_mb_in_slice\000"
	.space	2
.LC385:
	.ascii	"slicecheck first_mb_in_slice >= MAX_MB_NUM_IN_PIC e"
	.ascii	"rror.\012\000"
	.space	2
.LC386:
	.ascii	"SH: slice_type\000"
	.space	1
.LC387:
	.ascii	"slice type = %d\012\000"
	.space	3
.LC388:
	.ascii	"slice type = %d, err\012\000"
	.space	2
.LC389:
	.ascii	"pH264Ctx->TotalNal = %d, type:%d\012\000"
	.space	2
.LC390:
	.ascii	"stop i want\012\000"
	.space	3
.LC391:
	.ascii	"***** NAL: IDR/Slice, nal_unit_type=%d, TotalSlice="
	.ascii	"%d\012\000"
	.space	1
.LC392:
	.ascii	"***** NAL: PPS, nal_unit_type=%d, TotalPPS=%d\012\000"
	.space	1
.LC393:
	.ascii	"***** NAL: SPS, nal_unit_type=%d, TotalSPS=%d\012\000"
	.space	1
.LC394:
	.ascii	"SPS decode error.\012\000"
	.space	1
.LC395:
	.ascii	"***** NAL: SEI, nal_unit_type=%d\012\000"
	.space	2
.LC396:
	.ascii	"SEI decode error.\012\000"
	.space	1
.LC397:
	.ascii	"***** NAL: AUD, nal_unit_type=%d\012\000"
	.space	2
.LC398:
	.ascii	"***** NAL: EOSEQ, nal_unit_type=%d\012\000"
.LC399:
	.ascii	"***** NAL: FILL, nal_unit_type=%d\012\000"
	.space	1
.LC400:
	.ascii	"***** NAL: EOSTREAM, nal_unit_type=%d\012\000"
	.space	1
.LC401:
	.ascii	"***** NAL: SPSEXT, nal_unit_type=%d\012\000"
	.space	3
.LC402:
	.ascii	"***** NAL: AUX, nal_unit_type=%d\012\000"
	.space	2
.LC403:
	.ascii	"***** NAL: EOPIC, nal_unit_type=%d\012\000"
.LC404:
	.ascii	"***** NAL: UNSUPPORT, nal_unit_type=%d,nalu header:"
	.ascii	"%x\012\000"
	.space	1
.LC405:
	.ascii	"H264_DecOneNal ERR\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	TmpBuf, %object
	.size	TmpBuf, 68
TmpBuf:
	.space	68
	.type	sps_tmp.39493, %object
	.size	sps_tmp.39493, 4000
sps_tmp.39493:
	.space	4000
	.type	pps_tmp.38424, %object
	.size	pps_tmp.38424, 2208
pps_tmp.38424:
	.space	2208
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
