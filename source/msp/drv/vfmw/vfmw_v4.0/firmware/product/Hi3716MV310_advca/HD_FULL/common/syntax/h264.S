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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(h264)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.h264.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/h264.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/h264.o
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
	.global	GetMinPOC
	.type	GetMinPOC, %function
GetMinPOC:
	.fnstart
.LFB1928:
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
	ldr	r3, [r0, r4]	@ prephitmp.944, <variable>.DPB.size
	ldr	r4, [r0, ip]	@ prephitmp.926, <variable>.DPB.used_size
	cmp	r4, r3	@ prephitmp.926, prephitmp.944
	strhi	r3, [r0, ip]	@ prephitmp.944, <variable>.DPB.used_size
	movls	r3, r4	@ prephitmp.944, prephitmp.926
	cmp	r3, #0	@ prephitmp.944,
	beq	.L7	@,
	add	r5, r0, #26368	@ ivtmp.940, pH264Ctx,
	mov	r3, #0	@ i,
	add	ip, r5, #64	@ ivtmp.940, ivtmp.940,
	movw	r7, #26628	@ tmp181,
.L6:
	ldr	r4, [ip, #0]	@ D.38064, <variable>.DPB.fs
	add	ip, ip, #4	@ ivtmp.940, ivtmp.940,
	ldr	r6, [r1, #0]	@ tmp177,* poc
	ldr	r5, [r4, #524]	@ D.38065, <variable>.poc
	cmp	r6, r5	@ tmp177, D.38065
	ble	.L5	@,
	ldrb	r4, [r4, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #0	@ <variable>.is_in_dpb,
	strne	r5, [r1, #0]	@ D.38065,* poc
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
.LFB1929:
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
	ldr	r3, [r0, r4]	@ D.38081, <variable>.DPB.size
	ldr	ip, [r0, r6]	@ <variable>.DPB.fs, <variable>.DPB.fs
	ldr	r4, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r4, r3	@ <variable>.DPB.used_size, D.38081
	strhi	r3, [r0, r7]	@ D.38081, <variable>.DPB.used_size
	ldr	r6, [ip, #524]	@ prephitmp.960, <variable>.poc
	movw	r7, #26628	@ tmp149,
	str	r6, [r1, #0]	@ prephitmp.960,* poc
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L15	@,
	add	r5, r0, #26368	@ ivtmp.976, pH264Ctx,
	mov	r3, #0	@ i,
	add	ip, r5, #64	@ ivtmp.976, ivtmp.976,
	b	.L14	@
.L16:
	ldr	r6, [r1, #0]	@ prephitmp.960,* poc
.L14:
	ldr	r4, [ip, #0]	@ D.38088, <variable>.DPB.fs
	add	ip, ip, #4	@ ivtmp.976, ivtmp.976,
	ldr	r5, [r4, #524]	@ D.38089, <variable>.poc
	cmp	r5, r6	@ D.38089, prephitmp.960
	ble	.L13	@,
	ldrb	r4, [r4, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #0	@ <variable>.is_in_dpb,
	strne	r5, [r1, #0]	@ D.38089,* poc
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
.LFB1930:
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
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.38103, <variable>.is_reference
	cmp	r3, #3	@ D.38103,
	beq	.L27	@,
	tst	r3, #1	@ D.38103,
	bne	.L22	@,
.L23:
	ands	r3, r3, #2	@ tmp145, D.38103,
	moveq	r0, r3	@ D.38110, tmp145
	bxeq	lr	@
	ldr	r1, [r0, #472]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #65536	@ tmp146,
	movne	r0, #0	@, D.38110
	moveq	r0, #1	@, D.38110
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
	mov	r0, #1	@ D.38110,
	bx	lr	@
	.fnend
	.size	ShortTermRefFlg, .-ShortTermRefFlg
	.align	2
	.global	LongTermRefFlg
	.type	LongTermRefFlg, %function
LongTermRefFlg:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.38130, <variable>.is_reference
	cmp	r3, #3	@ D.38130,
	beq	.L36	@,
	tst	r3, #1	@ D.38130,
	bne	.L31	@,
.L32:
	ands	r3, r3, #2	@ tmp145, D.38130,
	moveq	r0, r3	@ D.38137, tmp145
	bxeq	lr	@
	ldr	r1, [r0, #472]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #256	@ tmp146,
	movne	r0, #0	@, D.38137
	moveq	r0, #1	@, D.38137
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
	mov	r0, #1	@ D.38137,
	bx	lr	@
	.fnend
	.size	LongTermRefFlg, .-LongTermRefFlg
	.align	2
	.global	UpdateLTReflist
	.type	UpdateLTReflist, %function
UpdateLTReflist:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	sl, #26628	@ tmp141,
	ldr	r7, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	cmp	r7, #0	@ <variable>.DPB.used_size,
	beq	.L39	@,
	add	r4, r0, #26368	@ ivtmp.1087, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #64	@ ivtmp.1087, ivtmp.1087,
	mov	r5, r7	@ i, j
.L41:
	ldr	r6, [r4, #0]	@ D.38166, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1087, ivtmp.1087,
	mov	r0, r6	@, D.38166
	bl	LongTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #48	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.38166, <variable>.DPB.fs_ltref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L41	@,
.L39:
	mov	r3, #26624	@ tmp149,
	movw	ip, #26636	@ tmp148,
	ldr	r0, [r8, r3]	@ D.38172, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, r0	@ j, D.38172
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #48	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.38172
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.38172
	add	r8, r8, r1, asl #2	@, ivtmp.1083, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L43	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	cmp	r2, r0	@ j, D.38172
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L43:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.1083
	cmp	r2, r0	@ j, D.38172
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ltref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ltref
	add	r8, ip, #4	@ ivtmp.1083, tmp160,
	bcc	.L43	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	UpdateLTReflist, .-UpdateLTReflist
	.align	2
	.global	UpdateReflist
	.type	UpdateReflist, %function
UpdateReflist:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	sl, #26628	@ tmp141,
	ldr	r7, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	cmp	r7, #0	@ <variable>.DPB.used_size,
	beq	.L54	@,
	add	r4, r0, #26368	@ ivtmp.1125, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #64	@ ivtmp.1125, ivtmp.1125,
	mov	r5, r7	@ i, j
.L56:
	ldr	r6, [r4, #0]	@ D.38185, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1125, ivtmp.1125,
	mov	r0, r6	@, D.38185
	bl	ShortTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #32	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.38185, <variable>.DPB.fs_ref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L56	@,
.L54:
	mov	r3, #26624	@ tmp149,
	movw	ip, #26632	@ tmp148,
	ldr	r0, [r8, r3]	@ D.38191, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, r0	@ j, D.38191
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #32	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.38191
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.38191
	add	r8, r8, r1, asl #2	@, ivtmp.1121, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L58	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	cmp	r2, r0	@ j, D.38191
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L58:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.1121
	cmp	r2, r0	@ j, D.38191
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ref
	add	r8, ip, #4	@ ivtmp.1121, tmp160,
	bcc	.L58	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	UpdateReflist, .-UpdateReflist
	.align	2
	.global	GetPicNumX
	.type	GetPicNumX, %function
GetPicNumX:
	.fnstart
.LFB1935:
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
.LFB1941:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}	@,
	.save {r4, r5, r6, r7, r8, sl}
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ D.38430, <variable>.structure
	cmp	r3, #0	@ D.38430,
	beq	.L72	@,
	movw	ip, #26632	@ tmp155,
	ldr	r8, [r0, ip]	@ D.38446, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ D.38446,
	beq	.L82	@,
	add	r5, r0, #26368	@ ivtmp.1189, pH264Ctx,
	sub	r6, r8, #1	@ tmp280, D.38446,
	and	r7, r6, #1	@ tmp282, tmp280,
	mov	r4, #0	@ i.1207,
	ldr	ip, [r5, #128]!	@ temp.1199, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.38448, <variable>.is_reference
	tst	r6, #1	@ D.38448,
	beq	.L92	@,
	ldr	sl, [ip, #436]	@ tmp311,
	bic	sl, sl, #-16777216	@ tmp312, tmp311,
	bic	sl, sl, #255	@ tmp312, tmp312,
	cmp	sl, #65536	@ tmp312,
	beq	.L111	@,
.L92:
	tst	r6, #2	@ D.38448,
	beq	.L93	@,
	ldr	r6, [ip, #472]	@ tmp306,
	bic	r6, r6, #-16777216	@ tmp307, tmp306,
	bic	r6, r6, #255	@ tmp307, tmp307,
	cmp	r6, #65536	@ tmp307,
	beq	.L112	@,
.L93:
	mov	r4, #1	@ i.1207,
	cmp	r8, r4	@ D.38446, i.1207
	add	r5, r5, #4	@ ivtmp.1189, ivtmp.1189,
	bls	.L82	@,
	cmp	r7, #0	@ tmp282,
	beq	.L81	@,
	ldr	ip, [r5, #0]	@ temp.1199, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.38448, <variable>.is_reference
	tst	r6, #1	@ D.38448,
	beq	.L95	@,
	ldr	r7, [ip, #436]	@ tmp324,
	bic	r7, r7, #-16777216	@ tmp325, tmp324,
	bic	r7, r7, #255	@ tmp325, tmp325,
	cmp	r7, #65536	@ tmp325,
	beq	.L113	@,
.L95:
	tst	r6, #2	@ D.38448,
	beq	.L96	@,
	ldr	r6, [ip, #472]	@ tmp319,
	bic	r6, r6, #-16777216	@ tmp320, tmp319,
	bic	r6, r6, #255	@ tmp320, tmp320,
	cmp	r6, #65536	@ tmp320,
	beq	.L114	@,
.L96:
	add	r4, r4, #1	@ i.1207, i.1207,
	add	r5, r5, #4	@ ivtmp.1189, ivtmp.1189,
	cmp	r8, r4	@ D.38446, i.1207
	bhi	.L81	@,
.L82:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L72:
	movw	ip, #26632	@ tmp156,
	ldr	r7, [r0, ip]	@ temp.1208, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, #0	@ temp.1208,
	beq	.L82	@,
	add	r4, r0, #26368	@ ivtmp.1184, pH264Ctx,
	sub	r5, r7, #1	@ tmp275, temp.1208,
	and	r6, r5, #1	@ tmp277, tmp275,
	ldr	ip, [r4, #128]!	@ D.38434, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L115	@,
.L85:
	mov	r3, #1	@ i,
	cmp	r3, r7	@ i, temp.1208
	add	r4, r4, #4	@ ivtmp.1184, ivtmp.1184,
	bcs	.L82	@,
	cmp	r6, #0	@ tmp277,
	beq	.L76	@,
	ldr	ip, [r4, #0]	@ D.38434, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L116	@,
.L87:
	add	r3, r3, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1184, ivtmp.1184,
	cmp	r3, r7	@ i, temp.1208
	bcc	.L76	@,
	b	.L82	@
.L75:
	ldr	ip, [r4, #4]	@ D.38434, <variable>.DPB.fs_ref
	add	r3, r3, #1	@ i, i,
	mov	r5, r3	@ tmp279, i
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	beq	.L117	@,
.L90:
	add	r3, r5, #1	@ i, tmp279,
	add	r4, r6, #4	@ ivtmp.1184, tmp278,
	cmp	r3, r7	@ i, temp.1208
	bcs	.L82	@,
.L76:
	ldr	ip, [r4, #0]	@ D.38434, <variable>.DPB.fs_ref
	add	r6, r4, #4	@ tmp278, ivtmp.1184,
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
	ldr	ip, [r4, #4]	@ D.38434, <variable>.DPB.fs_ref
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
	tst	r6, #2	@ D.38448,
	beq	.L79	@,
	ldr	r6, [ip, #472]	@ tmp239,
	bic	r6, r6, #-16777216	@ tmp237, tmp239,
	bic	r6, r6, #255	@ tmp237, tmp237,
	cmp	r6, #65536	@ tmp237,
	beq	.L118	@,
.L79:
	ldr	ip, [r5, #4]	@ temp.1199, <variable>.DPB.fs_ref
	add	r4, r4, #1	@ i.1207, i.1207,
	add	r5, r5, #4	@ tmp284, ivtmp.1189,
	mov	sl, r4	@ tmp283, i.1207
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.38448, <variable>.is_reference
	tst	r6, #1	@ D.38448,
	beq	.L99	@,
	ldr	r7, [ip, #436]	@ tmp335,
	bic	r7, r7, #-16777216	@ tmp336, tmp335,
	bic	r7, r7, #255	@ tmp336, tmp336,
	cmp	r7, #65536	@ tmp336,
	beq	.L119	@,
.L99:
	tst	r6, #2	@ D.38448,
	beq	.L100	@,
	ldr	r6, [ip, #472]	@ tmp330,
	bic	r6, r6, #-16777216	@ tmp331, tmp330,
	bic	r6, r6, #255	@ tmp331, tmp331,
	cmp	r6, #65536	@ tmp331,
	beq	.L120	@,
.L100:
	add	r4, sl, #1	@ i.1207, tmp283,
	add	r5, r5, #4	@ ivtmp.1189, tmp284,
	cmp	r8, r4	@ D.38446, i.1207
	bls	.L82	@,
.L81:
	ldr	ip, [r5, #0]	@ temp.1199, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.38448, <variable>.is_reference
	tst	r6, #1	@ D.38448,
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
	add	r4, r4, #6592	@ tmp204, i.1207,
	str	r1, [ip, #520]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #32	@ tmp204, tmp204,
	cmp	r3, #1	@ D.38430,
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
	ldr	r3, [r0, r4, asl #2]	@ temp.1204, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #400]	@ zero_extendqisi2	@ D.38469, <variable>.frame.structure
	cmp	r2, #3	@ D.38469,
	cmpne	r2, #0	@, D.38469,
	bne	.L82	@,
	ldrb	r1, [r3, #437]	@ zero_extendqisi2	@ D.38475, <variable>.top_field.is_long_term
	ldrb	r2, [r3, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r2, r1	@ <variable>.bottom_field.is_long_term, D.38475
	streqb	r2, [r3, #401]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	ip, [r0, r4, asl #2]	@ temp.1206, <variable>.DPB.fs_ref
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
	add	r4, r4, #6592	@ tmp243, i.1207,
	str	r1, [ip, #520]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #32	@ tmp243, tmp243,
	cmp	r3, #2	@ D.38430,
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
	ldr	r3, [r0, r4, asl #2]	@ temp.1215, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #400]	@ zero_extendqisi2	@ D.38495, <variable>.frame.structure
	cmp	r2, #3	@ D.38495,
	cmpne	r2, #0	@, D.38495,
	bne	.L82	@,
	ldrb	r1, [r3, #437]	@ zero_extendqisi2	@ temp.1216, <variable>.top_field.is_long_term
	ldrb	r2, [r3, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r2, r1	@ <variable>.bottom_field.is_long_term, temp.1216
	streqb	r2, [r3, #401]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	r2, [r0, r4, asl #2]	@ temp.1218, <variable>.DPB.fs_ref
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
.LFB1951:
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
	add	ip, ip, r4, lsr #1	@, D.38917, <variable>.DPB.size, <variable>.PicOutCounter,
	mov	r2, r2, lsr #1	@ D.38913, <variable>.NewPicCounter,
	add	r4, ip, #1	@ tmp149, D.38917,
	cmp	r2, r4	@ D.38913, tmp149
	bcc	.L122	@,
	mvn	ip, ip	@ tmp150, D.38917
	add	r2, ip, r2	@ tmp151, tmp150, D.38913
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
.LFB1954:
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
.LFB1955:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	ldr	r3, [r0, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	r4, [sp, #-4]!	@,
	.save {r4}
	cmp	r1, r3	@ <variable>.bottom_field.poc, <variable>.top_field.poc
	movlt	r3, r1	@ D.39026, <variable>.bottom_field.poc
	movge	r3, r3	@ D.39026, <variable>.top_field.poc
	ldr	r4, [r0, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r0, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldrb	r1, [r0, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldr	ip, [r0, #440]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	add	r2, r4, r2	@ tmp144, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	cmp	r1, #0	@ <variable>.bottom_field.is_long_term,
	mov	r4, #3	@ tmp142,
	mov	r2, r2, lsr #1	@ D.39031, tmp144,
	str	r3, [r0, #524]	@ D.39026, <variable>.poc
	strb	r4, [r0, #400]	@ tmp142, <variable>.frame.structure
	str	ip, [r0, #404]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	str	r3, [r0, #416]	@ D.39026, <variable>.frame.poc
	str	r2, [r0, #420]	@ D.39031, <variable>.frame.err_level
	beq	.L131	@,
	ldrb	ip, [r0, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	subs	r1, ip, #0	@ prephitmp.1296, <variable>.top_field.is_long_term,
	movne	r1, #1	@ prephitmp.1296
.L131:
	ldr	r3, [r0, #472]	@ tmp154,
	strb	r1, [r0, #401]	@ prephitmp.1296, <variable>.frame.is_long_term
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
	mov	r1, #0	@ prephitmp.1285,
.L133:
	ldr	ip, [r0, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r3, [r0, #460]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	str	r2, [r0, #544]	@ D.39031, <variable>.err_level
	cmp	ip, r3	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	movcs	r3, ip	@ D.39055, <variable>.bottom_field.pic_type
	strb	r1, [r0, #402]	@ prephitmp.1285, <variable>.frame.is_short_term
	str	r3, [r0, #540]	@ D.39055, <variable>.pic_type
	str	r3, [r0, #424]	@ D.39055, <variable>.frame.pic_type
	ldmfd	sp!, {r4}
	bx	lr
.L135:
	rsbs	r1, r1, #1	@ prephitmp.1285, prephitmp.1296
	movcc	r1, #0	@ prephitmp.1285
	b	.L133	@
	.fnend
	.size	CombineFldsToFrm, .-CombineFldsToFrm
	.align	2
	.global	GetShortTermPicPoint
	.type	GetShortTermPicPoint, %function
GetShortTermPicPoint:
	.fnstart
.LFB1970:
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
	ldr	r5, [r0, ip]	@ D.40019, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ D.40019,
	beq	.L140	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1323, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.40019,
	add	r0, r0, #128	@ ivtmp.1323, ivtmp.1323,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L148	@,
	ldr	r2, [r0, #0]	@ D.39984, <variable>.DPB.fs_ref
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
	cmp	r5, ip	@ D.40019, i
	add	r0, r0, #4	@ ivtmp.1323, ivtmp.1323,
	bls	.L140	@,
	cmp	r4, #0	@ tmp168,
	beq	.L145	@,
	cmp	r3, #0	@ structure,
	beq	.L168	@,
	ldr	r2, [r0, #0]	@ temp.1326, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.39997, <variable>.is_reference
	tst	r4, #1	@ D.39997,
	beq	.L153	@,
	ldr	r6, [r2, #436]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #65536	@ tmp195,
	beq	.L172	@,
.L153:
	tst	r4, #2	@ D.39997,
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
	add	r0, r0, #4	@ ivtmp.1323, ivtmp.1323,
	cmp	r5, ip	@ D.40019, i
	bhi	.L145	@,
.L140:
	mov	r0, #0	@ D.39995,
.L143:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L148:
	ldr	r2, [r0, #0]	@ temp.1326, <variable>.DPB.fs_ref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.39997, <variable>.is_reference
	tst	ip, #1	@ D.39997,
	beq	.L149	@,
	ldr	r6, [r2, #436]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #65536	@ tmp182,
	beq	.L173	@,
.L149:
	tst	ip, #2	@ D.39997,
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
	add	r0, r2, #472	@ D.39995, temp.1326,
	b	.L143	@
.L174:
	ldr	r2, [r0, #0]	@ D.39984, <variable>.DPB.fs_ref
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
	add	r4, r0, #4	@ tmp170, ivtmp.1323,
	bne	.L157	@,
.L176:
	ldr	r2, [r0, #4]	@ D.39984, <variable>.DPB.fs_ref
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
	add	r0, r4, #4	@ ivtmp.1323, tmp170,
	cmp	r5, ip	@ D.40019, i
	bls	.L140	@,
.L145:
	cmp	r3, #0	@ structure,
	beq	.L174	@,
	ldr	r2, [r0, #0]	@ temp.1326, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.39997, <variable>.is_reference
	tst	r4, #1	@ D.39997,
	beq	.L144	@,
	ldr	r6, [r2, #436]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #65536	@ tmp156,
	beq	.L175	@,
.L144:
	tst	r4, #2	@ D.39997,
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
	add	r4, r0, #4	@ tmp170, ivtmp.1323,
	beq	.L176	@,
.L157:
	ldr	r2, [r0, #4]	@ temp.1326, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.39997, <variable>.is_reference
	tst	r0, #1	@ D.39997,
	beq	.L158	@,
	ldr	r6, [r2, #436]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #65536	@ tmp208,
	beq	.L177	@,
.L158:
	tst	r0, #2	@ D.39997,
	beq	.L159	@,
	ldr	r0, [r2, #472]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #65536	@ tmp205,
	bne	.L159	@,
	ldr	r0, [r2, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r0, r1	@ <variable>.bottom_field.pic_num, picNum
	bne	.L159	@,
	add	r0, r2, #472	@ D.39995, temp.1326,
	b	.L143	@
.L175:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L144	@,
	add	r0, r2, #436	@ D.39995, temp.1326,
	b	.L143	@
.L177:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L158	@,
	add	r0, r2, #436	@ D.39995, temp.1326,
	b	.L143	@
.L168:
	ldr	r2, [r0, #0]	@ D.39984, <variable>.DPB.fs_ref
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
	add	r0, r2, #400	@ D.39995, D.39984,
	b	.L143	@
.L173:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L149	@,
	add	r0, r2, #436	@ D.39995, temp.1326,
	b	.L143	@
.L172:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L153	@,
	add	r0, r2, #436	@ D.39995, temp.1326,
	b	.L143	@
	.fnend
	.size	GetShortTermPicPoint, .-GetShortTermPicPoint
	.align	2
	.global	GetLongTermPicPoint
	.type	GetLongTermPicPoint, %function
GetLongTermPicPoint:
	.fnstart
.LFB1971:
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
	ldr	r5, [r0, ip]	@ D.40077, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.40077,
	beq	.L182	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1354, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.40077,
	add	r0, r0, #192	@ ivtmp.1354, ivtmp.1354,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L190	@,
	ldr	r2, [r0, #0]	@ D.40042, <variable>.DPB.fs_ltref
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
	cmp	r5, ip	@ D.40077, i
	add	r0, r0, #4	@ ivtmp.1354, ivtmp.1354,
	bls	.L182	@,
	cmp	r4, #0	@ tmp168,
	beq	.L187	@,
	cmp	r3, #0	@ structure,
	beq	.L210	@,
	ldr	r2, [r0, #0]	@ temp.1357, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.40055, <variable>.is_reference
	tst	r4, #1	@ D.40055,
	beq	.L195	@,
	ldr	r6, [r2, #436]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #256	@ tmp195,
	beq	.L214	@,
.L195:
	tst	r4, #2	@ D.40055,
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
	add	r0, r0, #4	@ ivtmp.1354, ivtmp.1354,
	cmp	r5, ip	@ D.40077, i
	bhi	.L187	@,
.L182:
	mov	r0, #0	@ D.40053,
.L185:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L190:
	ldr	r2, [r0, #0]	@ temp.1357, <variable>.DPB.fs_ltref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.40055, <variable>.is_reference
	tst	ip, #1	@ D.40055,
	beq	.L191	@,
	ldr	r6, [r2, #436]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #256	@ tmp182,
	beq	.L215	@,
.L191:
	tst	ip, #2	@ D.40055,
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
	add	r0, r2, #472	@ D.40053, temp.1357,
	b	.L185	@
.L216:
	ldr	r2, [r0, #0]	@ D.40042, <variable>.DPB.fs_ltref
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
	add	r4, r0, #4	@ tmp170, ivtmp.1354,
	bne	.L199	@,
.L218:
	ldr	r2, [r0, #4]	@ D.40042, <variable>.DPB.fs_ltref
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
	add	r0, r4, #4	@ ivtmp.1354, tmp170,
	cmp	r5, ip	@ D.40077, i
	bls	.L182	@,
.L187:
	cmp	r3, #0	@ structure,
	beq	.L216	@,
	ldr	r2, [r0, #0]	@ temp.1357, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.40055, <variable>.is_reference
	tst	r4, #1	@ D.40055,
	beq	.L186	@,
	ldr	r6, [r2, #436]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #256	@ tmp156,
	beq	.L217	@,
.L186:
	tst	r4, #2	@ D.40055,
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
	add	r4, r0, #4	@ tmp170, ivtmp.1354,
	beq	.L218	@,
.L199:
	ldr	r2, [r0, #4]	@ temp.1357, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.40055, <variable>.is_reference
	tst	r0, #1	@ D.40055,
	beq	.L200	@,
	ldr	r6, [r2, #436]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #256	@ tmp208,
	beq	.L219	@,
.L200:
	tst	r0, #2	@ D.40055,
	beq	.L201	@,
	ldr	r0, [r2, #472]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #256	@ tmp205,
	bne	.L201	@,
	ldr	r0, [r2, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r0, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L201	@,
	add	r0, r2, #472	@ D.40053, temp.1357,
	b	.L185	@
.L217:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L186	@,
	add	r0, r2, #436	@ D.40053, temp.1357,
	b	.L185	@
.L219:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L200	@,
	add	r0, r2, #436	@ D.40053, temp.1357,
	b	.L185	@
.L210:
	ldr	r2, [r0, #0]	@ D.40042, <variable>.DPB.fs_ltref
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
	add	r0, r2, #400	@ D.40053, D.40042,
	b	.L185	@
.L215:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L191	@,
	add	r0, r2, #436	@ D.40053, temp.1357,
	b	.L185	@
.L214:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L195	@,
	add	r0, r2, #436	@ D.40053, temp.1357,
	b	.L185	@
	.fnend
	.size	GetLongTermPicPoint, .-GetLongTermPicPoint
	.align	2
	.global	ReorderSTList
	.type	ReorderSTList, %function
ReorderSTList:
	.fnstart
.LFB1972:
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
	ldr	r3, [r4, #0]	@ D.40103,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.40103
	ble	.L221	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1404, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1402, RefPicListX, ivtmp.1399,
.L222:
	ldr	r3, [r2], #-4	@ tmp155,
	mov	ip, r7	@ cIdx.1406, ivtmp.1399
	sub	r7, r7, #1	@ ivtmp.1399, ivtmp.1399,
	str	r3, [r1], #-4	@ tmp155,
	ldr	r3, [r4, #0]	@ D.40103,* refIdxLX
	cmp	r3, ip	@ D.40103, cIdx.1406
	blt	.L222	@,
.L221:
	add	r1, r3, #1	@ cIdx.1405, D.40103,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1405
	str	r1, [r4, #0]	@ cIdx.1405,* refIdxLX
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1395, RefPicListX, cIdx.1405,
	rsb	r0, r1, r8	@ tmp159, cIdx.1405, cIdx
	and	ip, r0, #1	@ tmp160, tmp159,
	mov	r3, r1	@ nIdx, cIdx.1405
	ldr	r0, [r2, #0]	@ D.40108,* ivtmp.1395
	cmp	r0, #0	@ D.40108,
	beq	.L230	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L243	@,
.L231:
	add	r3, r1, #1	@ nIdx, cIdx.1405,
	str	r0, [r5, r1, asl #2]	@ D.40108,* RefPicListX
.L230:
	add	r1, r1, #1	@ cIdx.1405, cIdx.1405,
	add	r2, r2, #4	@ ivtmp.1395, ivtmp.1395,
	cmp	r8, r1	@ cIdx, cIdx.1405
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L246:
	cmp	ip, #0	@ tmp160,
	beq	.L226	@,
	ldr	r0, [r2, #0]	@ D.40108,* ivtmp.1395
	cmp	r0, #0	@ D.40108,
	beq	.L233	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	beq	.L244	@,
.L234:
	str	r0, [r5, r3, asl #2]	@ D.40108,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L233:
	add	r1, r1, #1	@ cIdx.1405, cIdx.1405,
	add	r2, r2, #4	@ ivtmp.1395, ivtmp.1395,
	cmp	r8, r1	@ cIdx, cIdx.1405
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L226:
	ldr	r0, [r2, #0]	@ D.40108,* ivtmp.1395
	add	r1, r1, #1	@ tmp161, cIdx.1405,
	add	ip, r2, #4	@ tmp162, ivtmp.1395,
	cmp	r0, #0	@ D.40108,
	beq	.L224	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L225	@,
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	beq	.L224	@,
.L225:
	str	r0, [r5, r3, asl #2]	@ D.40108,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L224:
	ldr	r2, [r2, #4]	@ D.40108,
	cmp	r2, #0	@ D.40108,
	beq	.L237	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	bne	.L238	@,
	ldr	lr, [r2, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	lr, r6	@ <variable>.pic_num, picNumLX
	beq	.L237	@,
.L238:
	str	r2, [r5, r3, asl #2]	@ D.40108,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L237:
	add	r1, r1, #1	@ cIdx.1405, tmp161,
	add	r2, ip, #4	@ ivtmp.1395, tmp162,
	cmp	r8, r1	@ cIdx, cIdx.1405
	bge	.L226	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L243:
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	bne	.L231	@,
	add	r1, r1, #1	@ cIdx.1405, cIdx.1405,
	add	r2, r2, #4	@ ivtmp.1395, ivtmp.1395,
	cmp	r8, r1	@ cIdx, cIdx.1405
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
.LFB1973:
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
	ldr	r3, [r4, #0]	@ D.40145,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.40145
	ble	.L248	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1452, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1450, RefPicListX, ivtmp.1447,
.L249:
	ldr	r3, [r2], #-4	@ tmp151,
	mov	ip, r7	@ cIdx.1454, ivtmp.1447
	sub	r7, r7, #1	@ ivtmp.1447, ivtmp.1447,
	str	r3, [r1], #-4	@ tmp151,
	ldr	r3, [r4, #0]	@ D.40145,* refIdxLX
	cmp	r3, ip	@ D.40145, cIdx.1454
	blt	.L249	@,
.L248:
	add	r1, r3, #1	@ cIdx.1453, D.40145,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1453
	str	r1, [r4, #0]	@ cIdx.1453,* refIdxLX
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1443, RefPicListX, cIdx.1453,
	rsb	r0, r1, r8	@ tmp155, cIdx.1453, cIdx
	and	ip, r0, #1	@ tmp156, tmp155,
	mov	r3, r1	@ nIdx, cIdx.1453
	ldr	r0, [r2, #0]	@ D.40150,* ivtmp.1443
	cmp	r0, #0	@ D.40150,
	beq	.L257	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L270	@,
.L258:
	add	r3, r1, #1	@ nIdx, cIdx.1453,
	str	r0, [r5, r1, asl #2]	@ D.40150,* RefPicListX
.L257:
	add	r1, r1, #1	@ cIdx.1453, cIdx.1453,
	add	r2, r2, #4	@ ivtmp.1443, ivtmp.1443,
	cmp	r8, r1	@ cIdx, cIdx.1453
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L273:
	cmp	ip, #0	@ tmp156,
	beq	.L253	@,
	ldr	r0, [r2, #0]	@ D.40150,* ivtmp.1443
	cmp	r0, #0	@ D.40150,
	beq	.L260	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	bne	.L271	@,
.L261:
	str	r0, [r5, r3, asl #2]	@ D.40150,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L260:
	add	r1, r1, #1	@ cIdx.1453, cIdx.1453,
	add	r2, r2, #4	@ ivtmp.1443, ivtmp.1443,
	cmp	r8, r1	@ cIdx, cIdx.1453
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L253:
	ldr	r0, [r2, #0]	@ D.40150,* ivtmp.1443
	add	r1, r1, #1	@ tmp157, cIdx.1453,
	add	ip, r2, #4	@ tmp158, ivtmp.1443,
	cmp	r0, #0	@ D.40150,
	beq	.L251	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L252	@,
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L251	@,
.L252:
	str	r0, [r5, r3, asl #2]	@ D.40150,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L251:
	ldr	r2, [r2, #4]	@ D.40150,
	cmp	r2, #0	@ D.40150,
	beq	.L264	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	beq	.L265	@,
	ldr	lr, [r2, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	lr, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L264	@,
.L265:
	str	r2, [r5, r3, asl #2]	@ D.40150,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L264:
	add	r1, r1, #1	@ cIdx.1453, tmp157,
	add	r2, ip, #4	@ ivtmp.1443, tmp158,
	cmp	r8, r1	@ cIdx, cIdx.1453
	bge	.L253	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L270:
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	bne	.L258	@,
	add	r1, r1, #1	@ cIdx.1453, cIdx.1453,
	add	r2, r2, #4	@ ivtmp.1443, ivtmp.1443,
	cmp	r8, r1	@ cIdx, cIdx.1453
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
.LFB1974:
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
	ldr	r3, [r9, #0]	@ D.40212,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.40212,
	beq	.L286	@,
	tst	r6, #1	@ num_ref_idx_lX_active_minus1,
	mov	r2, #0	@ D.40210,
	ldr	r7, [sp, #8]	@ picNumLXPred, %sfp
	mov	r4, r2	@ i, D.40210
	add	sl, sp, #20	@ tmp198,,
	bne	.L277	@,
	cmp	r3, #1	@ D.40212,
	bls	.L300	@,
	ldr	r4, [sp, #72]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	ldr	r3, [r4, #0]	@ tmp206,
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L301:
	mov	r2, #4	@ D.40210,
	mov	r4, #1	@ i,
	ldr	r3, [r9, r2]	@ D.40212,* D.40210
	cmp	r3, #3	@ D.40212,
	bne	.L277	@,
.L286:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L278:
	ldr	r1, [sp, #72]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	ldr	r3, [r1, r2]	@ tmp179,* D.40210
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L283:
	ldr	r3, [sp, #12]	@, %sfp
	add	r4, r4, #1	@ tmp202, i,
	cmp	r3, r4	@, tmp202
	bls	.L286	@,
	ldr	r3, [r9, r4, asl #2]	@ D.40212,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.40212,
	beq	.L286	@,
	cmp	r3, #1	@ D.40212,
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
	ldr	r3, [r9, r4, asl #2]	@ D.40212,* reordering_of_pic_nums_idc
	mov	r2, r4, asl #2	@ D.40210, i,
	cmp	r3, #3	@ D.40212,
	beq	.L286	@,
.L277:
	cmp	r3, #1	@ D.40212,
	bhi	.L278	@,
	cmp	r3, #0	@ D.40212,
	bne	.L279	@,
	ldr	r0, [sp, #68]	@, abs_diff_pic_num_minus1
	ldr	lr, [r0, r2]	@ tmp175,* D.40210
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
	cmp	r3, #0	@ D.40212,
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
	ldr	r3, [ip, r2]	@ tmp177,* D.40210
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
	cmp	r3, #0	@ D.40212,
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
.LFB1975:
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
.LFB1976:
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
.LFB1977:
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
.LFB1978:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #12]	@ D.40288, <variable>.pic_num
	ldr	r3, [r1, #12]	@ D.40291, <variable>.pic_num
	cmp	r2, r3	@ D.40288, D.40291
	movlt	r0, #1	@ D.40294,
	bxlt	lr	@
	movle	r0, #0	@ D.40294,
	mvngt	r0, #0	@ D.40294,
	bx	lr	@
	.fnend
	.size	compare_pic_by_pic_num_desc, .-compare_pic_by_pic_num_desc
	.align	2
	.global	compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc, %function
compare_pic_by_lt_pic_num_asc:
	.fnstart
.LFB1979:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #8]	@ D.40303, <variable>.long_term_pic_num
	ldr	r3, [r1, #8]	@ D.40306, <variable>.long_term_pic_num
	cmp	r2, r3	@ D.40303, D.40306
	mvnlt	r0, #0	@ D.40309,
	bxlt	lr	@
	movle	r0, #0	@, D.40309
	movgt	r0, #1	@, D.40309
	bx	lr	@
	.fnend
	.size	compare_pic_by_lt_pic_num_asc, .-compare_pic_by_lt_pic_num_asc
	.align	2
	.global	compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc, %function
compare_fs_by_frame_num_desc:
	.fnstart
.LFB1980:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #516]	@ D.40318, <variable>.frame_num_wrap
	ldr	r3, [r1, #516]	@ D.40321, <variable>.frame_num_wrap
	cmp	r2, r3	@ D.40318, D.40321
	movlt	r0, #1	@ D.40324,
	bxlt	lr	@
	movle	r0, #0	@ D.40324,
	mvngt	r0, #0	@ D.40324,
	bx	lr	@
	.fnend
	.size	compare_fs_by_frame_num_desc, .-compare_fs_by_frame_num_desc
	.align	2
	.global	compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc, %function
compare_fs_by_lt_pic_idx_asc:
	.fnstart
.LFB1981:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #520]	@ D.40333, <variable>.long_term_frame_idx
	ldr	r3, [r1, #520]	@ D.40336, <variable>.long_term_frame_idx
	cmp	r2, r3	@ D.40333, D.40336
	mvncc	r0, #0	@ D.40339,
	bxcc	lr	@
	movls	r0, #0	@, D.40339
	movhi	r0, #1	@, D.40339
	bx	lr	@
	.fnend
	.size	compare_fs_by_lt_pic_idx_asc, .-compare_fs_by_lt_pic_idx_asc
	.align	2
	.global	compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc, %function
compare_pic_by_poc_asc:
	.fnstart
.LFB1982:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #16]	@ D.40348, <variable>.poc
	ldr	r3, [r1, #16]	@ D.40351, <variable>.poc
	cmp	r2, r3	@ D.40348, D.40351
	mvnlt	r0, #0	@ D.40354,
	bxlt	lr	@
	movle	r0, #0	@, D.40354
	movgt	r0, #1	@, D.40354
	bx	lr	@
	.fnend
	.size	compare_pic_by_poc_asc, .-compare_pic_by_poc_asc
	.align	2
	.global	compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc, %function
compare_pic_by_poc_desc:
	.fnstart
.LFB1983:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #16]	@ D.40363, <variable>.poc
	ldr	r3, [r1, #16]	@ D.40366, <variable>.poc
	cmp	r2, r3	@ D.40363, D.40366
	movlt	r0, #1	@ D.40369,
	bxlt	lr	@
	movle	r0, #0	@ D.40369,
	mvngt	r0, #0	@ D.40369,
	bx	lr	@
	.fnend
	.size	compare_pic_by_poc_desc, .-compare_pic_by_poc_desc
	.align	2
	.global	compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc, %function
compare_fs_by_poc_asc:
	.fnstart
.LFB1984:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #524]	@ D.40378, <variable>.poc
	ldr	r3, [r1, #524]	@ D.40381, <variable>.poc
	cmp	r2, r3	@ D.40378, D.40381
	mvnlt	r0, #0	@ D.40384,
	bxlt	lr	@
	movle	r0, #0	@, D.40384
	movgt	r0, #1	@, D.40384
	bx	lr	@
	.fnend
	.size	compare_fs_by_poc_asc, .-compare_fs_by_poc_asc
	.align	2
	.global	compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc, %function
compare_fs_by_poc_desc:
	.fnstart
.LFB1985:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #524]	@ D.40393, <variable>.poc
	ldr	r3, [r1, #524]	@ D.40396, <variable>.poc
	cmp	r2, r3	@ D.40393, D.40396
	movlt	r0, #1	@ D.40399,
	bxlt	lr	@
	movle	r0, #0	@ D.40399,
	mvngt	r0, #0	@ D.40399,
	bx	lr	@
	.fnend
	.size	compare_fs_by_poc_desc, .-compare_fs_by_poc_desc
	.align	2
	.global	GenPiclistfromFrmlist
	.type	GenPiclistfromFrmlist, %function
GenPiclistfromFrmlist:
	.fnstart
.LFB1986:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	cmp	r2, #31	@ list_idx,
	movcc	r4, r2	@ list_idx.1888, list_idx
	movcs	r4, #31	@ list_idx.1888,
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
	moveq	sl, r8	@ top_idx.1871, bot_idx
	beq	.L415	@,
	cmp	r0, #2	@ currStrcture,
	moveq	r8, #0	@ bot_idx.1866,
	moveq	sl, r8	@ top_idx, bot_idx.1866
	bne	.L370	@,
.L420:
	cmp	sl, r4	@ top_idx, list_idx.1888
	movcs	r0, #0	@,
	movcc	r0, #1	@,
	cmp	r8, r4	@ bot_idx.1866, list_idx.1888
	movcs	r3, #0	@, temp.1860
	movcc	r3, #1	@, temp.1860
	orrs	r2, r3, r0	@, temp.1860,
	str	r0, [sp, #8]	@, %sfp
	beq	.L370	@,
	cmp	r3, #0	@ temp.1860,
	beq	.L375	@,
	ldr	r0, [r6, r8, asl #2]	@ temp.1862,* fs_list
	mvn	r7, r8	@ tmp235, bot_idx.1866
	add	fp, r7, r4	@ tmp234, tmp235, list_idx.1888
	add	r7, r6, r8, asl #2	@, ivtmp.1847, fs_list, bot_idx.1866,
	and	fp, fp, #1	@ tmp236, tmp234,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L430	@,
.L404:
	add	r8, r8, #1	@ bot_idx.1866, bot_idx.1866,
	add	r7, r7, #4	@ ivtmp.1847, ivtmp.1847,
	cmp	r8, r4	@ bot_idx.1866, list_idx.1888
	bcs	.L375	@,
	cmp	fp, #0	@ tmp236,
	beq	.L374	@,
	ldr	r0, [r7, #0]	@ temp.1862,* ivtmp.1847
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L431	@,
.L406:
	add	r8, r8, #1	@ bot_idx.1866, bot_idx.1866,
	add	r7, r7, #4	@ ivtmp.1847, ivtmp.1847,
	cmp	r8, r4	@ bot_idx.1866, list_idx.1888
	bcc	.L374	@,
	b	.L375	@
.L372:
	add	r7, r7, #4	@ ivtmp.1847, ivtmp.1847,
	add	r8, r8, #1	@ bot_idx.1866, bot_idx.1866,
	ldr	r0, [r7, #0]	@ temp.1862,* ivtmp.1847
	mov	r3, r8	@ tmp237, bot_idx.1866
	mov	fp, r7	@ tmp238, ivtmp.1847
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L432	@,
.L409:
	add	r8, r3, #1	@ bot_idx.1866, tmp237,
	add	r7, fp, #4	@ ivtmp.1847, tmp238,
	cmp	r8, r4	@ bot_idx.1866, list_idx.1888
	bcs	.L375	@,
.L374:
	ldr	r0, [r7, #0]	@ temp.1862,* ivtmp.1847
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	beq	.L372	@,
	add	r0, r0, #472	@, temp.1862,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L372	@,
.L428:
	ldr	r1, [r9, #0]	@ tmp194,* list_size
	add	r8, r8, #1	@ bot_idx.1866, bot_idx.1866,
	ldr	r0, [sp, #12]	@, %sfp
	ldr	ip, [r7, #0]	@ tmp195,* ivtmp.1847
	add	r2, ip, #472	@ tmp196, tmp195,
	str	r2, [r0, r1, asl #2]	@ tmp196,
	ldr	r3, [r9, #0]	@ tmp197,* list_size
	add	lr, r3, #1	@ tmp198, tmp197,
	str	lr, [r9, #0]	@ tmp198,* list_size
.L375:
	ldr	r3, [sp, #8]	@, %sfp
	cmp	r3, #0	@,
	beq	.L420	@,
	ldr	r0, [r6, sl, asl #2]	@ temp.1876,* fs_list
	mvn	r7, sl	@ tmp230, top_idx
	add	fp, r7, r4	@ tmp229, tmp230, list_idx.1888
	add	r7, r6, sl, asl #2	@, ivtmp.1842, fs_list, top_idx,
	and	fp, fp, #1	@ tmp231, tmp229,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L433	@,
.L397:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r7, r7, #4	@ ivtmp.1842, ivtmp.1842,
	cmp	sl, r4	@ top_idx, list_idx.1888
	bcs	.L420	@,
	cmp	fp, #0	@ tmp231,
	beq	.L377	@,
	ldr	r0, [r7, #0]	@ temp.1876,* ivtmp.1842
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L434	@,
.L399:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r7, r7, #4	@ ivtmp.1842, ivtmp.1842,
	cmp	sl, r4	@ top_idx, list_idx.1888
	bcc	.L377	@,
	b	.L420	@
.L376:
	add	r7, r7, #4	@ ivtmp.1842, ivtmp.1842,
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r0, [r7, #0]	@ temp.1876,* ivtmp.1842
	mov	r3, sl	@ tmp232, top_idx
	mov	fp, r7	@ tmp233, ivtmp.1842
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L435	@,
.L402:
	add	sl, r3, #1	@ top_idx, tmp232,
	add	r7, fp, #4	@ ivtmp.1842, tmp233,
	cmp	sl, r4	@ top_idx, list_idx.1888
	bcs	.L420	@,
.L377:
	ldr	r0, [r7, #0]	@ temp.1876,* ivtmp.1842
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	beq	.L376	@,
	add	r0, r0, #436	@, temp.1876,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L376	@,
.L427:
	ldr	r3, [r9, #0]	@ tmp203,* list_size
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r1, [sp, #12]	@, %sfp
	ldr	ip, [r7, #0]	@ tmp204,* ivtmp.1842
	add	r2, ip, #436	@ tmp205, tmp204,
	str	r2, [r1, r3, asl #2]	@ tmp205,
	ldr	r0, [r9, #0]	@ tmp206,* list_size
	add	lr, r0, #1	@ tmp207, tmp206,
	str	lr, [r9, #0]	@ tmp207,* list_size
	b	.L420	@
.L442:
	add	r0, r0, #436	@, D.40441,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L364	@,
.L426:
	ldr	r3, [r9, #0]	@ tmp169,* list_size
	add	sl, sl, #1	@ top_idx.1871, top_idx.1871,
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r2, [r7, #0]	@ tmp170,* ivtmp.1837
	add	ip, r2, #436	@ tmp171, tmp170,
	str	ip, [lr, r3, asl #2]	@ tmp171,
	ldr	r1, [r9, #0]	@ tmp172,* list_size
	add	r0, r1, #1	@ tmp173, tmp172,
	str	r0, [r9, #0]	@ tmp173,* list_size
.L367:
	ldr	r0, [sp, #8]	@, %sfp
	cmp	r0, #0	@,
	beq	.L415	@,
	ldr	r0, [r6, r8, asl #2]	@ D.40458,* fs_list
	mvn	r7, r8	@ tmp220, bot_idx
	add	fp, r7, r4	@ tmp219, tmp220, list_idx.1888
	add	r7, r6, r8, asl #2	@, ivtmp.1832, fs_list, bot_idx,
	and	fp, fp, #1	@ tmp221, tmp219,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	bne	.L436	@,
.L383:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r7, r7, #4	@ ivtmp.1832, ivtmp.1832,
	cmp	r8, r4	@ bot_idx, list_idx.1888
	bcs	.L415	@,
	cmp	fp, #0	@ tmp221,
	beq	.L369	@,
	ldr	r0, [r7, #0]	@ D.40458,* ivtmp.1832
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	bne	.L437	@,
.L385:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r7, r7, #4	@ ivtmp.1832, ivtmp.1832,
	cmp	r8, r4	@ bot_idx, list_idx.1888
	bcc	.L369	@,
	b	.L415	@
.L368:
	add	r7, r7, #4	@ ivtmp.1832, ivtmp.1832,
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r0, [r7, #0]	@ D.40458,* ivtmp.1832
	mov	r3, r8	@ tmp222, bot_idx
	mov	fp, r7	@ tmp223, ivtmp.1832
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L438	@,
.L388:
	add	r8, r3, #1	@ bot_idx, tmp222,
	add	r7, fp, #4	@ ivtmp.1832, tmp223,
	cmp	r8, r4	@ bot_idx, list_idx.1888
	bcs	.L415	@,
.L369:
	ldr	r0, [r7, #0]	@ D.40458,* ivtmp.1832
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	beq	.L368	@,
	add	r0, r0, #472	@, D.40458,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L368	@,
.L425:
	ldr	ip, [r9, #0]	@ tmp178,* list_size
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r3, [r7, #0]	@ tmp179,* ivtmp.1832
	add	r1, r3, #472	@ tmp180, tmp179,
	str	r1, [r0, ip, asl #2]	@ tmp180,
	ldr	r2, [r9, #0]	@ tmp181,* list_size
	add	lr, r2, #1	@ tmp182, tmp181,
	str	lr, [r9, #0]	@ tmp182,* list_size
.L415:
	cmp	r8, r4	@ bot_idx, list_idx.1888
	movcs	r0, #0	@,
	movcc	r0, #1	@,
	cmp	sl, r4	@ top_idx.1871, list_idx.1888
	movcs	r3, #0	@, D.40468
	movcc	r3, #1	@, D.40468
	orrs	r2, r0, r3	@,, D.40468
	str	r0, [sp, #8]	@, %sfp
	beq	.L370	@,
	cmp	r3, #0	@ D.40468,
	beq	.L367	@,
	ldr	r0, [r6, sl, asl #2]	@ D.40441,* fs_list
	mvn	r7, sl	@ tmp225, top_idx.1871
	add	fp, r7, r4	@ tmp224, tmp225, list_idx.1888
	add	r7, r6, sl, asl #2	@, ivtmp.1837, fs_list, top_idx.1871,
	and	fp, fp, #1	@ tmp226, tmp224,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L439	@,
.L390:
	add	sl, sl, #1	@ top_idx.1871, top_idx.1871,
	add	r7, r7, #4	@ ivtmp.1837, ivtmp.1837,
	cmp	sl, r4	@ top_idx.1871, list_idx.1888
	bcs	.L367	@,
	cmp	fp, #0	@ tmp226,
	beq	.L366	@,
	ldr	r0, [r7, #0]	@ D.40441,* ivtmp.1837
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	bne	.L440	@,
.L392:
	add	sl, sl, #1	@ top_idx.1871, top_idx.1871,
	add	r7, r7, #4	@ ivtmp.1837, ivtmp.1837,
	cmp	sl, r4	@ top_idx.1871, list_idx.1888
	bcc	.L366	@,
	b	.L367	@
.L364:
	add	r7, r7, #4	@ ivtmp.1837, ivtmp.1837,
	add	sl, sl, #1	@ top_idx.1871, top_idx.1871,
	ldr	r0, [r7, #0]	@ D.40441,* ivtmp.1837
	mov	r3, sl	@ tmp228, top_idx.1871
	mov	fp, r7	@ tmp227, ivtmp.1837
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L441	@,
.L395:
	add	sl, r3, #1	@ top_idx.1871, tmp228,
	add	r7, fp, #4	@ ivtmp.1837, tmp227,
	cmp	sl, r4	@ top_idx.1871, list_idx.1888
	bcs	.L367	@,
.L366:
	ldr	r0, [r7, #0]	@ D.40441,* ivtmp.1837
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #1	@ <variable>.is_used,
	bne	.L442	@,
	add	r7, r7, #4	@ ivtmp.1837, ivtmp.1837,
	add	sl, sl, #1	@ top_idx.1871, top_idx.1871,
	ldr	r0, [r7, #0]	@ D.40441,* ivtmp.1837
	mov	r3, sl	@ tmp228, top_idx.1871
	mov	fp, r7	@ tmp227, ivtmp.1837
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	beq	.L395	@,
.L441:
	add	r0, r0, #436	@, D.40441,
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
	add	r0, r0, #472	@, temp.1862,
	str	r8, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L409	@,
	b	.L428	@
.L435:
	add	r0, r0, #436	@, temp.1876,
	str	sl, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L402	@,
	b	.L427	@
.L438:
	add	r0, r0, #472	@, D.40458,
	str	r8, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L388	@,
	b	.L425	@
.L430:
	add	r0, r0, #472	@, temp.1862,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L404	@,
	b	.L428	@
.L433:
	add	r0, r0, #436	@, temp.1876,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L397	@,
	b	.L427	@
.L431:
	add	r0, r0, #472	@, temp.1862,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L406	@,
	b	.L428	@
.L434:
	add	r0, r0, #436	@, temp.1876,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L399	@,
	b	.L427	@
.L436:
	add	r0, r0, #472	@, D.40458,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L383	@,
	b	.L425	@
.L439:
	add	r0, r0, #436	@, D.40441,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L390	@,
	b	.L426	@
.L440:
	add	r0, r0, #436	@, D.40441,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L392	@,
	b	.L426	@
.L437:
	add	r0, r0, #472	@, D.40458,
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
.LFB1989:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #26628	@ tmp144,
	mov	r1, r0	@ pH264Ctx, pH264Ctx
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldr	r6, [r0, r3]	@ D.40731, <variable>.DPB.used_size
	cmp	r6, #0	@ D.40731,
	mvneq	r0, #0	@ nearest_pic_id,
	beq	.L445	@,
	movw	r4, #26432	@ tmp147,
	cmp	r6, #1	@ D.40731,
	ldr	ip, [r1, r4]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #50132	@ tmp145,
	ldr	r4, [r1, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r0, #0	@ nearest_pic_id,
	ldr	r2, [ip, #524]	@ nearest_poc, <variable>.poc
	bls	.L445	@,
	add	r0, r1, #26368	@ tmp151, pH264Ctx,
	sub	r6, r6, #1	@ tmp149, D.40731,
	add	r5, r0, #68	@ tmp151, tmp151,
	rsb	r2, r2, r4	@ tmp148, nearest_poc, curr_poc
	mov	r6, r6, asl #2	@ D.47041, tmp149,
	cmp	r2, #0	@ tmp148,
	ldr	ip, [r5, #0]	@ D.40738, <variable>.DPB.fs
	sub	r3, r6, #4	@ tmp158, D.47041,
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
	mov	r3, #4	@ ivtmp.1923,
	cmp	r3, r6	@ ivtmp.1923, D.47041
	beq	.L445	@,
	cmp	r5, #0	@ tmp159,
	beq	.L448	@,
	add	ip, r1, r3	@ tmp177, pH264Ctx, ivtmp.1923
	add	r3, r3, #4	@ ivtmp.1923, ivtmp.1923,
	add	r5, ip, #26368	@ tmp179, tmp177,
	add	ip, r5, #68	@ tmp179, tmp179,
	ldr	r5, [ip, #0]	@ D.40738, <variable>.DPB.fs
	ldr	ip, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	ip, ip, r4	@ tmp182, <variable>.poc, curr_poc
	cmp	ip, #0	@ tmp182,
	rsblt	ip, ip, #0	@ new_poc_diff, tmp182
	cmp	ip, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, ip	@ nearest_poc_diff, new_poc_diff
	cmp	r3, r6	@ ivtmp.1923, D.47041
	beq	.L445	@,
.L448:
	add	r5, r1, r3	@ tmp162, pH264Ctx, ivtmp.1923
	add	ip, r3, #4	@ tmp160, ivtmp.1923,
	add	r3, r5, #26368	@ tmp163, tmp162,
	add	r7, r1, ip	@ tmp170, pH264Ctx, tmp160
	add	r7, r7, #26368	@ tmp171, tmp170,
	ldr	r5, [r3, #68]	@ D.40738, <variable>.DPB.fs
	ldr	r3, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp167, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp167,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp167
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
	ldr	r5, [r7, #68]	@ D.40738, <variable>.DPB.fs
	ldr	r3, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp175, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp175,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp175
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
.L456:
	add	r3, ip, #4	@ ivtmp.1923, tmp160,
	cmp	r3, r6	@ ivtmp.1923, D.47041
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
.LFB1990:
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
	add	r6, r9, #26880	@ ivtmp.1974, pH264Ctx,
	movw	ip, #20724	@ tmp160,
	mov	sl, ip	@ tmp179, tmp160
	mov	fp, r6	@ tmp180, ivtmp.1974
	add	r8, fp, #156	@ ivtmp.1966, tmp180,
	ldr	fp, [r9, ip]	@ D.40776, <variable>.CurrSlice.listXsize
	add	r6, r6, #28	@ ivtmp.1974, ivtmp.1974,
.L466:
	cmp	fp, #0	@ D.40776,
	beq	.L470	@,
	ldr	r2, [r8, #0]	@ tmp206, <variable>.pListX
	mov	r1, #32	@ minrefidx,
	ldr	r7, [r9, sl]	@ temp.1992, <variable>.CurrSlice.listXsize
	ldr	r3, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	ip, r7, #1	@ tmp189, temp.1992,
	and	ip, ip, #1	@ tmp191, tmp189,
	ldr	r2, [r3, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r2, r0	@ <variable>.apc_idc, i
	beq	.L505	@,
.L478:
	mov	r2, #1	@ j,
	cmp	r7, r2	@ temp.1992, j
	add	r3, r8, #4	@ ivtmp.1966, ivtmp.1966,
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
	add	r3, r3, #4	@ ivtmp.1966, ivtmp.1966,
	cmp	r7, r2	@ temp.1992, j
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
	add	r3, r4, #4	@ ivtmp.1966, tmp193,
	cmp	r7, r2	@ temp.1992, j
	bls	.L498	@,
.L468:
	ldr	r5, [r3, #0]	@ tmp162, <variable>.pListX
	add	ip, r2, #1	@ tmp192, j,
	add	r4, r3, #4	@ tmp193, ivtmp.1966,
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
	cmp	r7, r2	@ temp.1992, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1966, tmp193,
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
	add	r6, r6, #8	@ ivtmp.1974, ivtmp.1974,
	cmp	r0, #16	@ i,
	bne	.L466	@,
.L475:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L504:
	add	r8, r9, #26880	@ ivtmp.1988, pH264Ctx,
	movw	r2, #20724	@ tmp158,
	ldr	fp, [r9, r2]	@ temp.1994, <variable>.CurrSlice.listXsize
	mov	ip, #0	@ i.1999,
	mov	sl, r8	@ tmp185, ivtmp.1988
	add	r8, r8, #28	@ ivtmp.1988, ivtmp.1988,
	add	sl, sl, #156	@ ivtmp.1980, tmp185,
.L465:
	cmp	fp, #0	@ temp.1994,
	beq	.L474	@,
	ldr	r3, [sl, #0]	@ temp.1995, <variable>.pListX
	movw	r2, #20724	@,
	ldr	r7, [r9, r2]	@ temp.1993, <variable>.CurrSlice.listXsize
	mov	r6, #32	@ minrefidx.1991,
	ldr	r0, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	r1, r7, #1	@ tmp194, temp.1993,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	and	r1, r1, #1	@ tmp196, tmp194,
	ldr	r3, [r0, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp225, <variable>.apc_idc,
	cmp	r2, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp226, tmp225
	cmp	r3, ip	@ tmp226, i.1999
	beq	.L508	@,
.L485:
	mov	r2, #1	@ j.1998,
	cmp	r7, r2	@ temp.1993, j.1998
	add	r3, sl, #4	@ ivtmp.1980, ivtmp.1980,
	bls	.L499	@,
	cmp	r1, #0	@ tmp196,
	beq	.L472	@,
	ldr	r1, [sl, #4]	@ temp.1995, <variable>.pListX
	ldr	r4, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r1, [r4, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r1, r1, asl r2	@ tmp235, <variable>.apc_idc,
	cmp	r0, #2	@ <variable>.structure,
	orreq	r1, r1, #1	@,, tmp236, tmp235
	cmp	r1, ip	@ tmp236, i.1999
	beq	.L509	@,
.L487:
	add	r2, r2, #1	@ j.1998, j.1998,
	add	r3, r3, #4	@ ivtmp.1980, ivtmp.1980,
	cmp	r7, r2	@ temp.1993, j.1998
	bhi	.L472	@,
	b	.L499	@
.L471:
	ldr	r3, [r3, #4]	@ temp.1995, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r3, [r1, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp216, <variable>.apc_idc,
	cmp	r2, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp217, tmp216
	cmp	r3, ip	@ tmp217, i.1999
	beq	.L510	@,
	add	r2, r0, #1	@ j.1998, tmp197,
	add	r3, r4, #4	@ ivtmp.1980, tmp198,
	cmp	r7, r2	@ temp.1993, j.1998
	bls	.L499	@,
.L472:
	ldr	r1, [r3, #0]	@ temp.1995, <variable>.pListX
	add	r0, r2, #1	@ tmp197, j.1998,
	add	r4, r3, #4	@ tmp198, ivtmp.1980,
	ldr	r5, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r5, [r5, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r5, r5, asl #1	@ tmp173, <variable>.apc_idc,
	cmp	r1, #2	@ <variable>.structure,
	movne	r1, r5	@, tmp175, tmp173
	orreq	r1, r5, #1	@,, tmp175, tmp173
	cmp	r1, ip	@ tmp175, i.1999
	bne	.L471	@,
	cmp	r6, r2	@ minrefidx.1991, j.1998
	movcs	r6, r2	@ minrefidx.1991, j.1998
	str	r6, [r8, #0]	@ minrefidx.1991, <variable>.APC.RefIdx
	b	.L471	@
.L510:
	add	r2, r0, #1	@ j.1998, tmp197,
	cmp	r6, r0	@ minrefidx.1991, tmp197
	movcs	r6, r0	@ minrefidx.1991, tmp197
	cmp	r7, r2	@ temp.1993, j.1998
	str	r6, [r8, #0]	@ minrefidx.1991, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1980, tmp198,
	bhi	.L472	@,
.L499:
	cmp	r6, #31	@ minrefidx.1991,
	bls	.L473	@,
.L474:
	mov	r0, #0	@,
	str	r0, [r8, #0]	@, <variable>.APC.RefIdx
.L473:
	add	ip, ip, #1	@ i.1999, i.1999,
	add	r8, r8, #4	@ ivtmp.1988, ivtmp.1988,
	cmp	ip, #32	@ i.1999,
	bne	.L465	@,
	b	.L475	@
.L508:
	mov	r6, #0	@ minrefidx.1991,
	str	r6, [r8, #0]	@ minrefidx.1991, <variable>.APC.RefIdx
	b	.L485	@
.L509:
	cmp	r6, r2	@ minrefidx.1991, j.1998
	movcs	r6, r2	@ minrefidx.1991, j.1998
	str	r6, [r8, #0]	@ minrefidx.1991, <variable>.APC.RefIdx
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
.LFB1994:
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
.LFB1995:
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
	ldr	r1, [r5, #3980]	@ prephitmp.2036, <variable>.dpb_size_plus1
	ldr	r8, [r4, r8]	@ <variable>.DPB.size, <variable>.DPB.size
	add	r8, r8, #1	@ tmp173, <variable>.DPB.size,
	cmp	r1, r8	@ prephitmp.2036, tmp173
	bls	.L518	@,
.L514:
	movw	r1, #:lower16:g_event_report	@ tmp175,
	movt	r1, #:upper16:g_event_report	@ tmp175,
	ldr	r3, [r1, #0]	@ g_event_report.677, g_event_report
	cmp	r3, #0	@ g_event_report.677,
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
	blx	r3	@ g_event_report.677
	ldr	r1, [r5, #3980]	@ prephitmp.2036, <variable>.dpb_size_plus1
	mov	r3, #1	@ prephitmp.2048,
.L518:
	mov	r0, r3	@ ReRangeFlg, prephitmp.2048
.L515:
	movw	r2, #14332	@ tmp187,
	ldr	ip, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r5, [r4, r2]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	movw	r2, #17568	@ tmp192,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	r5, ip	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	orrne	r3, r3, #1	@,, dpb_changed, prephitmp.2048
	cmp	r2, r1	@ <variable>.CurrSPS.dpb_size_plus1, prephitmp.2036
	moveq	ip, r3	@, tmp196, dpb_changed
	orrne	ip, r3, #1	@,, tmp196, dpb_changed
	str	ip, [r6, #0]	@ tmp196,* p_dpb_changed
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L519:
	mov	r3, #1	@ prephitmp.2048,
	ldr	r1, [r5, #3980]	@ prephitmp.2036, <variable>.dpb_size_plus1
	mov	r0, r3	@ ReRangeFlg, prephitmp.2048
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
.LFB1996:
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
	ldr	ip, [r5, #2912]	@ D.40989, <variable>.log2_max_pic_order_cnt_lsb_minus4
	add	r0, r0, #4	@ tmp184, <variable>.log2_max_frame_num_minus4,
	mov	r0, r2, asl r0	@ MaxFrameNum, tmp186,
	beq	.L523	@,
	bcs	.L575	@,
	cmp	r1, #0	@ tmp171,
	add	ip, ip, #4	@ tmp188, D.40989,
	mov	r2, r2, asl ip	@ MaxPicOrderCntLsb, tmp186,
	bne	.L576	@,
	movw	r3, #19820	@ tmp194,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	ip, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	bne	.L527	@,
	movw	r1, #19804	@ tmp197,
	movw	r5, #19808	@ tmp196,
	ldr	ip, [r4, r1]	@ prephitmp.2086, <variable>.CurrPOC.PrevPicOrderCntMsb
	ldr	r1, [r4, r5]	@ prephitmp.2084, <variable>.CurrPOC.PrevPicOrderCntLsb
	mov	r5, ip	@ prephitmp.2088, prephitmp.2086
.L528:
	movw	r3, #19796	@ tmp208,
	ldr	r0, [r4, r3]	@ D.41012, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r0, r1	@ D.41012, prephitmp.2084
	bcs	.L530	@,
	rsb	r3, r0, r1	@ tmp209, D.41012, prephitmp.2084
	cmp	r3, r2, lsr #1	@ tmp209, MaxPicOrderCntLsb,
	addcs	r3, r5, r2	@ D.41021, prephitmp.2088, MaxPicOrderCntLsb
	movwcs	r2, #19812	@ tmp212,
	strcs	r3, [r4, r2]	@ D.41021, <variable>.CurrPOC.PicOrderCntMsb
	bcs	.L533	@,
.L530:
	movw	r3, #19804	@ tmp213,
	ldr	r3, [r4, r3]	@ prephitmp.2154, <variable>.CurrPOC.PrevPicOrderCntMsb
.L532:
	cmp	r1, r0	@ prephitmp.2084, D.41012
	bcs	.L534	@,
	rsb	r1, r1, r0	@ tmp214, prephitmp.2084, D.41012
	cmp	r1, r2, lsr #1	@ tmp214, MaxPicOrderCntLsb,
	bhi	.L577	@,
.L534:
	movw	r0, #19812	@ tmp217,
	str	ip, [r4, r0]	@ prephitmp.2086, <variable>.CurrPOC.PicOrderCntMsb
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
	add	r2, r3, ip	@ D.41035, prephitmp.2154, <variable>.CurrPOC.pic_order_cnt_lsb
	str	r2, [r4, r0]	@ D.41035, <variable>.CurrPOC.toppoc
	add	ip, r2, r1	@ D.41037, D.41035, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r0, #19836	@ tmp226,
	cmp	ip, r2	@ D.41037, D.41035
	movlt	r3, ip	@ prephitmp.2079, D.41037
	movge	r3, r2	@ prephitmp.2079, D.41035
	movw	r2, #19832	@ tmp225,
	str	ip, [r4, r2]	@ D.41037, <variable>.CurrPOC.bottompoc
	movw	r2, #19840	@ tmp227,
	str	r3, [r4, r0]	@ prephitmp.2079,
	str	r3, [r4, r2]	@ prephitmp.2079, <variable>.CurrPOC.ThisPOC
.L536:
	movw	ip, #19836	@ tmp238,
	movw	r1, #19860	@ tmp239,
	movw	r2, #19856	@ tmp240,
	ldr	r1, [r4, r1]	@ D.41047, <variable>.CurrPOC.frame_num
	str	r3, [r4, ip]	@ prephitmp.2079, <variable>.CurrPOC.framepoc
	movw	ip, #20712	@ tmp243,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	ldr	r3, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r1, r0	@ D.41047, <variable>.CurrPOC.PreviousFrameNum
	strne	r1, [r4, r2]	@ D.41047, <variable>.CurrPOC.PreviousFrameNum
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
	ldr	r3, [r4, r3]	@ prephitmp.2074, <variable>.CurrPOC.PrevFrameNumOffset
	cmp	r1, r2	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.frame_num
	addhi	r3, r3, r0	@ prephitmp.2074, prephitmp.2074, MaxFrameNum
	movwhi	r2, #19864	@ tmp366,
	strhi	r3, [r4, r2]	@ prephitmp.2074, <variable>.CurrPOC.FrameNumOffset
	bls	.L561	@,
.L562:
	movw	r2, #19860	@ tmp368,
	movw	r1, #20712	@ tmp371,
	ldr	ip, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	r2, #20681	@ tmp376,
	ldr	r0, [r4, r1]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r1, #19852	@ tmp370,
	add	r3, r3, ip	@ temp.2144, prephitmp.2074, <variable>.CurrPOC.frame_num
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.nal_ref_idc,
	str	r3, [r4, r1]	@ temp.2144, <variable>.CurrPOC.AbsFrameNum
	mov	r3, r3, asl #1	@ tmp373, temp.2144,
	movw	r0, #19840	@ tmp375,
	subeq	r3, r3, #1	@ prephitmp.2146, tmp373,
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	str	r3, [r4, r0]	@ prephitmp.2146, <variable>.CurrPOC.ThisPOC
	bne	.L565	@,
	movw	r2, #19836	@ tmp378,
	movw	r0, #19828	@ tmp380,
	movw	ip, #19832	@ tmp379,
	str	r3, [r4, r2]	@ prephitmp.2146, <variable>.CurrPOC.framepoc
	str	r3, [r4, r0]	@ prephitmp.2146, <variable>.CurrPOC.toppoc
	str	r3, [r4, ip]	@ prephitmp.2146,
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
	mov	r3, r1	@ prephitmp.2078, tmp171
	str	r1, [r4, ip]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PreviousFrameNum
.L542:
	movw	r2, #19864	@ tmp268,
	str	r3, [r4, r2]	@ prephitmp.2078, <variable>.CurrPOC.FrameNumOffset
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
	ldr	r1, [r5, #2924]	@ temp.2149, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r3	@ temp.2149,
	ble	.L547	@,
	add	r0, r5, #2928	@ ivtmp.2108, sps,
	mov	r2, r3	@ i, prephitmp.2075
.L548:
	ldr	r7, [r0], #4	@ tmp285, <variable>.offset_for_ref_frame
	add	r2, r2, #1	@ i, i,
	add	r3, r3, r7	@ prephitmp.2075, prephitmp.2075, tmp285
	str	r3, [r4, ip]	@ prephitmp.2075, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ temp.2149, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r2	@ temp.2149, i
	bgt	.L548	@,
.L547:
	movw	r3, #19852	@ tmp287,
	ldr	r7, [r4, r3]	@ temp.2123, <variable>.CurrPOC.AbsFrameNum
	cmp	r7, #0	@ temp.2123,
	movweq	r3, #19880	@ tmp307,
	moveq	r6, r7	@ prephitmp.2127, temp.2123
	streq	r7, [r4, r3]	@ temp.2123, <variable>.CurrPOC.ExpectedPicOrderCnt
	beq	.L550	@,
	sub	r7, r7, #1	@ tmp288, temp.2123,
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
	mul	r6, r0, r6	@ prephitmp.2127, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle, tmp291
	str	r6, [r4, ip]	@ prephitmp.2127, <variable>.CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ D.41088,
	str	r1, [r4, r2]	@ D.41088, <variable>.CurrPOC.FrameNumInPicOrderCntCycle
	blt	.L550	@,
	add	r2, r5, #2928	@ ivtmp.2103, sps,
	cmp	r1, #1	@ D.41088,
	and	r7, r1, #1	@ tmp399, D.41088,
	mov	r0, #1	@ i.2129,
	ldr	lr, [r2], #4	@ tmp305, <variable>.offset_for_ref_frame
	add	r6, r6, lr	@ prephitmp.2127, prephitmp.2127, tmp305
	str	r6, [r4, ip]	@ prephitmp.2127, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L550	@,
	cmp	r7, #0	@ tmp399,
	beq	.L551	@,
	ldr	lr, [r2], #4	@ tmp411, <variable>.offset_for_ref_frame
	mov	r0, #2	@ i.2129,
	cmp	r1, r0	@ D.41088, i.2129
	add	r6, r6, lr	@ prephitmp.2127, prephitmp.2127, tmp411
	str	r6, [r4, ip]	@ prephitmp.2127, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L550	@,
.L551:
	mov	r3, r2	@ tmp401, ivtmp.2103
	add	r0, r0, #2	@ i.2129, i.2129,
	ldr	r7, [r3], #4	@ tmp404, <variable>.offset_for_ref_frame
	cmp	r1, r0	@ D.41088, i.2129
	add	r6, r6, r7	@ prephitmp.2127, prephitmp.2127, tmp404
	str	r6, [r4, ip]	@ prephitmp.2127, <variable>.CurrPOC.ExpectedPicOrderCnt
	ldr	r7, [r2, #4]	@ tmp409, <variable>.offset_for_ref_frame
	add	r2, r3, #4	@ ivtmp.2103, tmp401,
	add	r6, r6, r7	@ prephitmp.2127, prephitmp.2127, tmp409
	str	r6, [r4, ip]	@ prephitmp.2127, <variable>.CurrPOC.ExpectedPicOrderCnt
	bge	.L551	@,
.L550:
	movw	r3, #20712	@ tmp309,
	movw	r0, #20681	@ tmp314,
	ldr	ip, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	ip, #0	@ <variable>.CurrSlice.nal_ref_idc,
	ldreq	ip, [r5, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	movwne	ip, #19880	@ tmp311,
	ldrne	r6, [r4, ip]	@ prephitmp.2131, <variable>.CurrPOC.ExpectedPicOrderCnt
	addeq	r6, r6, ip	@ prephitmp.2131, prephitmp.2127, <variable>.offset_for_non_ref_pic
	movweq	ip, #19880	@ tmp313,
	streq	r6, [r4, ip]	@ prephitmp.2131, <variable>.CurrPOC.ExpectedPicOrderCnt
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
	addeq	r6, r6, r0	@ prephitmp.2136, prephitmp.2131, <variable>.CurrPOC.delta_pic_order_cnt
	addne	r6, r0, r6	@ prephitmp.2136, tmp333, prephitmp.2131
	movweq	r0, #19828	@ tmp330,
	movwne	r0, #19832	@ tmp336,
	str	r6, [r4, r0]	@ prephitmp.2136,
	str	r6, [r4, r2]	@ prephitmp.2136, <variable>.CurrPOC.ThisPOC
.L555:
	movw	r2, #19860	@ tmp340,
	movw	r1, #19864	@ tmp343,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	ip, #19836	@ tmp338,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	movw	r3, #19856	@ tmp339,
	movw	r1, #19868	@ tmp342,
	str	r6, [r4, ip]	@ prephitmp.2136, <variable>.CurrPOC.framepoc
	str	r0, [r4, r3]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	str	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L580:
	movw	r3, #19844	@ tmp316,
	movw	r1, #19848	@ tmp319,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r0, #19828	@ tmp318,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	add	r6, r6, ip	@ D.41102, prephitmp.2131, <variable>.CurrPOC.delta_pic_order_cnt
	str	r6, [r4, r0]	@ D.41102, <variable>.CurrPOC.toppoc
	ldr	r1, [r5, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movw	ip, #19832	@ tmp323,
	add	r3, r2, r1	@ tmp320, <variable>.CurrPOC.delta_pic_order_cnt, <variable>.offset_for_top_to_bottom_field
	movw	r1, #19836	@ tmp324,
	add	r0, r3, r6	@ D.41106, tmp320, D.41102
	movw	r2, #19840	@ tmp325,
	cmp	r0, r6	@ D.41106, D.41102
	movlt	r6, r0	@ prephitmp.2136, D.41106
	movge	r6, r6	@ prephitmp.2136, D.41102
	str	r0, [r4, ip]	@ D.41106, <variable>.CurrPOC.bottompoc
	str	r6, [r4, r1]	@ prephitmp.2136,
	str	r6, [r4, r2]	@ prephitmp.2136, <variable>.CurrPOC.ThisPOC
	b	.L555	@
.L579:
	movw	r1, #19852	@ tmp280,
	ldr	r2, [r4, r1]	@ D.41073, <variable>.CurrPOC.AbsFrameNum
	cmp	r2, #0	@ D.41073,
	subne	r2, r2, #1	@ tmp282, D.41073,
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
	mov	r3, #0	@ prephitmp.2154,
	ldr	r0, [r4, ip]	@ D.41012, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	ip, [r4, r1]	@ prephitmp.2086, <variable>.CurrPOC.PrevPicOrderCntMsb
	mov	r1, r3	@ prephitmp.2084, prephitmp.2154
	b	.L532	@
.L535:
	movw	r1, #20682	@ tmp228,
	movw	r0, #19796	@ tmp230,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	movw	r1, #19840	@ tmp237,
	ldr	ip, [r4, r0]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r2, #0	@ <variable>.CurrSlice.bottom_field_flag,
	add	r3, r3, ip	@ prephitmp.2079, prephitmp.2154, <variable>.CurrPOC.pic_order_cnt_lsb
	movweq	ip, #19828	@ tmp232,
	movwne	ip, #19832	@ tmp236,
	str	r3, [r4, ip]	@ prephitmp.2079,
	str	r3, [r4, r1]	@ prephitmp.2079, <variable>.CurrPOC.ThisPOC
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
	mov	r3, r1	@ prephitmp.2074, tmp171
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
.L561:
	movw	r1, #19864	@ tmp367,
	str	r3, [r4, r1]	@ prephitmp.2074, <variable>.CurrPOC.FrameNumOffset
	b	.L562	@
.L565:
	movw	r0, #20682	@ tmp381,
	movw	r1, #19836	@ tmp385,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	ip, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movweq	ip, #19828	@ tmp384,
	movwne	ip, #19832	@ tmp386,
	str	r3, [r4, ip]	@ prephitmp.2146,
	str	r3, [r4, r1]	@ prephitmp.2146,
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
	rsb	r3, r2, r3	@ D.41028, MaxPicOrderCntLsb, prephitmp.2154
	movw	r2, #19812	@ tmp216,
	str	r3, [r4, r2]	@ D.41028, <variable>.CurrPOC.PicOrderCntMsb
	b	.L533	@
.L529:
	movw	r1, #19828	@ tmp206,
	movw	r0, #19804	@ tmp204,
	ldr	r1, [r4, r1]	@ prephitmp.2084, <variable>.CurrPOC.toppoc
	mov	r5, r3	@ prephitmp.2088, <variable>.CurrPOC.last_pic_bottom_field
	str	r3, [r4, r0]	@ <variable>.CurrPOC.last_pic_bottom_field, <variable>.CurrPOC.PrevPicOrderCntMsb
	movw	r0, #19808	@ tmp207,
	mov	ip, r3	@ prephitmp.2086, prephitmp.2088
	str	r1, [r4, r0]	@ prephitmp.2084, <variable>.CurrPOC.PrevPicOrderCntLsb
	b	.L528	@
.L543:
	movw	r2, #19868	@ tmp267,
	ldr	r3, [r4, r2]	@ prephitmp.2078, <variable>.CurrPOC.PrevFrameNumOffset
	b	.L542	@
	.fnend
	.size	DecPOC, .-DecPOC
	.align	2
	.global	CalcPicNum
	.type	CalcPicNum, %function
CalcPicNum:
	.fnstart
.LFB1997:
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
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.41166, <variable>.CurrPic.structure
	cmp	r2, #0	@ D.41166,
	ldr	r6, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r3, #1	@ tmp172,
	mla	r4, ip, r6, r1	@ tmp169, tmp168, <variable>.seq_parameter_set_id, <variable>.SPS
	ldr	r1, [r4, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	r6, r1, #4	@ tmp170, <variable>.log2_max_frame_num_minus4,
	mov	r6, r3, asl r6	@ MaxFrameNum, tmp172,
	beq	.L582	@,
	movw	r7, #26632	@ tmp176,
	cmp	r2, #2	@ D.41166,
	movne	r4, #0	@, add_bottom
	moveq	r4, #1	@, add_bottom
	ldr	ip, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r2, #1	@ D.41166,
	movne	r5, #0	@, add_top
	moveq	r5, #1	@, add_top
	cmp	ip, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L584	@,
	add	r8, r0, #26368	@ ivtmp.2222, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r8, #128	@ ivtmp.2222, ivtmp.2222,
	movw	r8, #50120	@ tmp245,
.L597:
	ldr	r1, [r3, #0]	@ temp.2230, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L593	@,
	ldr	ip, [r1, #512]	@ temp.2232, <variable>.frame_num
	ldr	sl, [r0, r8]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	ip, sl	@ temp.2232, <variable>.CurrPic.frame_num
	rsbhi	ip, r6, ip	@ tmp205, MaxFrameNum, temp.2232
	str	ip, [r1, #516]	@ temp.2232, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ prephitmp.2190, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2194, <variable>.is_reference
	tst	ip, #1	@ prephitmp.2194,
	beq	.L596	@,
	ldr	sl, [r1, #436]	@ tmp209,
	bic	sl, sl, #-16777216	@ tmp207, tmp209,
	bic	sl, sl, #255	@ tmp207, tmp207,
	cmp	sl, #65536	@ tmp207,
	ldreq	ip, [r1, #516]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	ip, r5, ip, asl #1	@, tmp212, add_top, <variable>.frame_num_wrap,
	streq	ip, [r1, #448]	@ tmp212, <variable>.top_field.pic_num
	ldreq	r1, [r3, #0]	@ prephitmp.2190, <variable>.DPB.fs_ref
	ldreqb	ip, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2194, <variable>.is_reference
.L596:
	tst	ip, #2	@ prephitmp.2194,
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
	add	r3, r3, #4	@ ivtmp.2222, ivtmp.2222,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L597	@,
.L584:
	movw	r6, #26636	@ tmp222,
	ldr	r2, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r2, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	beq	.L601	@,
	add	r3, r0, #26368	@ ivtmp.2217, pH264Ctx,
	mov	r2, #0	@ i.2234,
	add	r3, r3, #192	@ ivtmp.2217, ivtmp.2217,
.L600:
	ldr	ip, [r3, #0]	@ prephitmp.2183, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2234, i.2234,
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ temp.2244, <variable>.is_reference
	cmp	r1, #0	@ temp.2244,
	beq	.L598	@,
	tst	r1, #1	@ prephitmp.2187,
	beq	.L599	@,
	ldr	r7, [ip, #436]	@ tmp228,
	bic	r7, r7, #-16777216	@ tmp226, tmp228,
	bic	r7, r7, #255	@ tmp226, tmp226,
	cmp	r7, #256	@ tmp226,
	ldreq	r1, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r5, r1, asl #1	@, tmp231, add_top, <variable>.long_term_frame_idx,
	streq	r1, [ip, #444]	@ tmp231, <variable>.top_field.long_term_pic_num
	ldreq	ip, [r3, #0]	@ prephitmp.2183, <variable>.DPB.fs_ltref
	ldreqb	r1, [ip, #2]	@ zero_extendqisi2	@ prephitmp.2187, <variable>.is_reference
.L599:
	tst	r1, #2	@ prephitmp.2187,
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
	add	r3, r3, #4	@ ivtmp.2217, ivtmp.2217,
	cmp	ip, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2234
	bhi	.L600	@,
.L601:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L582:
	movw	r4, #26632	@ tmp178,
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L585	@,
	add	r5, r0, #26368	@ ivtmp.2212, pH264Ctx,
	add	r3, r5, #128	@ ivtmp.2212, ivtmp.2212,
	movw	r5, #50120	@ tmp242,
	b	.L589	@
.L586:
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i.2227, i.2227,
	add	r3, r3, #4	@ ivtmp.2212, ivtmp.2212,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2227
	bls	.L585	@,
.L589:
	ldr	r1, [r3, #0]	@ D.41170, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L586	@,
	ldr	ip, [r1, #400]	@ tmp184,
	bic	ip, ip, #-16777216	@ tmp182, tmp184,
	bic	ip, ip, #255	@ tmp182, tmp182,
	cmp	ip, #65536	@ tmp182,
	bne	.L586	@,
	ldr	ip, [r1, #512]	@ D.41178, <variable>.frame_num
	add	r2, r2, #1	@ i.2227, i.2227,
	ldr	r7, [r0, r5]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	ip, r7	@ D.41178, <variable>.CurrPic.frame_num
	rsb	r7, r6, ip	@ tmp187, MaxFrameNum, D.41178
	strls	ip, [r1, #516]	@ D.41178, <variable>.frame_num_wrap
	strhi	r7, [r1, #516]	@ tmp187, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ temp.2226, <variable>.DPB.fs_ref
	add	r3, r3, #4	@ ivtmp.2212, ivtmp.2212,
	ldr	ip, [r1, #516]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	str	ip, [r1, #412]	@ <variable>.frame_num_wrap, <variable>.frame.pic_num
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2227
	bhi	.L589	@,
.L585:
	movw	r4, #26636	@ tmp191,
	ldr	r2, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r2, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	beq	.L601	@,
	add	r3, r0, #26368	@ ivtmp.2207, pH264Ctx,
	mov	r2, #0	@ i.2228,
	add	r3, r3, #192	@ ivtmp.2207, ivtmp.2207,
	b	.L592	@
.L591:
	ldr	r1, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2228
	bls	.L601	@,
.L592:
	ldr	r1, [r3, #0]	@ D.41188, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2228, i.2228,
	add	r3, r3, #4	@ ivtmp.2207, ivtmp.2207,
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
.LFB1998:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pFrameStore
	str	r4, [sp, #-4]!	@,
	.save {r4}
	beq	.L607	@,
	movw	r3, #26628	@ tmp141,
	ldr	r4, [r0, r3]	@ D.41264, <variable>.DPB.used_size
	cmp	r4, #0	@ D.41264,
	beq	.L607	@,
	movw	ip, #26432	@ tmp142,
	ldr	r2, [r0, ip]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r2, r1	@ <variable>.DPB.fs, pFrameStore
	beq	.L608	@,
	tst	r4, #1	@ D.41264,
	add	r3, r0, #26368	@ tmp144, pH264Ctx,
	add	r2, r3, #68	@ ivtmp.2276, tmp144,
	mov	r0, #0	@ i,
	bne	.L609	@,
	ldr	ip, [r2, #0]	@ D.41261, <variable>.DPB.fs
	mov	r0, #1	@ i,
	add	r2, r3, #72	@ ivtmp.2276, tmp144,
	cmp	ip, r1	@ D.41261, pFrameStore
	bne	.L609	@,
.L608:
	mov	r0, #0	@ D.41259,
	b	.L611	@
.L610:
	ldr	ip, [r3], #4	@ D.41261, <variable>.DPB.fs
	cmp	ip, r1	@ D.41261, pFrameStore
	beq	.L608	@,
	ldr	ip, [r2, #4]	@ D.41261, <variable>.DPB.fs
	add	r2, r3, #4	@ ivtmp.2276, tmp150,
	cmp	ip, r1	@ D.41261, pFrameStore
	beq	.L608	@,
.L609:
	add	r0, r0, #1	@ tmp149, i,
	mov	r3, r2	@ tmp150, ivtmp.2276
	cmp	r0, r4	@ tmp149, D.41264
	add	r0, r0, #1	@ i, tmp149,
	bcc	.L610	@,
.L607:
	mov	r0, #1	@ D.41259,
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
.LFB2003:
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
.LFB2006:
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
.LFB2017:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	movw	ip, #13584	@ tmp140,
	movw	r4, #20692	@ tmp137,
	ldr	r3, [r0, ip]	@ <variable>.PPS, <variable>.PPS
	ldr	r1, [r0, r4]	@ D.42999, <variable>.CurrSlice.pic_parameter_set_id
	movw	r6, #13580	@ tmp138,
	mov	r2, #2208	@ tmp142,
	ldr	ip, [r0, r6]	@ <variable>.SPS, <variable>.SPS
	movw	r5, #20681	@ tmp158,
	movw	r4, #20732	@ tmp152,
	mla	r6, r2, r1, r3	@ tmp143, tmp142, D.42999, <variable>.PPS
	ldrb	r3, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r5, [r0, r4]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r4, #20700	@ tmp155,
	ldr	r4, [r0, r4]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movw	r6, #22336	@ tmp148,
	str	r1, [r0, r6]	@ D.42999, <variable>.PrevSlice.pic_parameter_set_id
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
	ldr	r3, [r2, #2908]	@ prephitmp.2344, <variable>.pic_order_cnt_type
	cmp	r3, #0	@ prephitmp.2344,
	bne	.L629	@,
	movw	r1, #19796	@ tmp180,
	movw	r3, #19800	@ tmp183,
	ldr	ip, [r0, r1]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r3, #22352	@ tmp179,
	str	ip, [r0, r3]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r3, #22356	@ tmp182,
	str	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r3, [r2, #2908]	@ prephitmp.2344, <variable>.pic_order_cnt_type
.L629:
	cmp	r3, #1	@ prephitmp.2344,
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
.LFB2018:
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
.LFB2030:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldr	r3, [r0, #368]	@ D.44396, <variable>.pCurrNal
	cmp	r3, #0	@ D.44396,
	cmpne	r1, #0	@, len,
	bne	.L648	@,
.L642:
	mvn	r0, #0	@ D.44402,
.L644:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L648:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ D.44403, <variable>.nal_used_segment
	rsb	ip, r2, r2, asl #3	@, tmp155, D.44403, D.44403,
	add	ip, r3, ip, asl #2	@, tmp157, D.44396, tmp155,
	ldr	ip, [ip, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	ip, #0	@ <variable>.streamBuffer,
	beq	.L642	@,
	ldr	ip, [r3, #68]	@ D.44410, <variable>.nal_segment
	cmp	ip, #2	@ D.44410,
	bhi	.L642	@,
	cmp	r2, #1	@ D.44403,
	bhi	.L642	@,
	cmp	ip, r2	@ D.44410, segment_idx
	bls	.L642	@,
	mov	r4, r1, asl #3	@ len.2411, len,
	mov	r6, #28	@ tmp188,
.L646:
	mla	r3, r6, r2, r3	@ tmp163, tmp188, segment_idx, D.44396
	add	r2, r2, #1	@ segment_idx, segment_idx,
	add	r5, r3, #24	@ tmp164, tmp163,
	ldr	r1, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	mov	r1, r1, asl #3	@ D.44418, <variable>.bitstream_length,
	add	ip, r4, ip	@ D.44416, len.2411, <variable>.bitsoffset
	cmp	ip, r1	@ D.44416, D.44418
	rsb	r4, r1, ip	@ len.2411, D.44418, D.44416
	bls	.L649	@,
	str	r1, [r3, #24]	@ D.44418, <variable>.bitsoffset
	ldr	r3, [r0, #368]	@ temp.2412, <variable>.pCurrNal
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	ip, r1, #1	@ tmp184, <variable>.nal_used_segment,
	strb	ip, [r3, #0]	@ tmp184, <variable>.nal_used_segment
	ldr	r3, [r0, #368]	@ D.44396, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r2	@ <variable>.nal_segment, segment_idx
	bhi	.L646	@,
	mov	r0, #0	@ D.44402,
	b	.L644	@
.L649:
	str	ip, [r5, #0]	@ D.44416, <variable>.bitsoffset
	mov	r0, #1	@ D.44402,
	b	.L644	@
	.fnend
	.size	PassBytes, .-PassBytes
	.align	2
	.global	GetBytes
	.type	GetBytes, %function
GetBytes:
	.fnstart
.LFB2031:
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
	ldr	r0, [r0, #368]	@ D.44440, <variable>.pCurrNal
	cmp	r0, #0	@ D.44440,
	cmpne	r2, #0	@, len,
	movgt	ip, #0	@, tmp184
	movle	ip, #1	@, tmp184
	ble	.L651	@,
	ldrb	r4, [r0, #0]	@ zero_extendqisi2	@ D.44445, <variable>.nal_used_segment
	rsb	r5, r4, r4, asl #3	@, tmp188, D.44445, D.44445,
	add	r5, r0, r5, asl #2	@, tmp190, D.44440, tmp188,
	ldr	r5, [r5, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r5, #0	@ <variable>.streamBuffer,
	beq	.L651	@,
	ldr	r5, [r0, #68]	@ D.44452, <variable>.nal_segment
	cmp	r5, #2	@ D.44452,
	bhi	.L651	@,
	cmp	r4, #1	@ D.44445,
	bhi	.L651	@,
	cmp	r5, r4	@ D.44452, segment_idx
	bls	.L651	@,
	mov	r6, #28	@ tmp234,
.L656:
	mul	r7, r6, r4	@ tmp194, tmp234, segment_idx
	mov	r5, #0	@ ivtmp.2442,
	add	r0, r7, r0	@ tmp196, tmp194, D.44440
	ldr	r9, [r0, #24]	@, <variable>.bitsoffset
	mov	r8, r7	@ tmp233, tmp194
	ldr	sl, [r0, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r7, r9, #7	@ tmp203,,
	ldr	r0, [r0, #8]	@ D.44457, <variable>.streamBuffer
	add	sl, r0, sl	@ end_byte, D.44457, <variable>.bitstream_length
	add	r0, r0, r7, lsr #3	@, byte_pos, D.44457, tmp203,
.L652:
	add	r9, r5, r0	@ D.47589, ivtmp.2442, byte_pos
	add	r7, r5, r1	@ D.47587, ivtmp.2442, pdes
	cmp	sl, r9	@ end_byte, D.47589
	bls	.L659	@,
	ldrb	r9, [r0, r5]	@ zero_extendqisi2	@ tmp212,* ivtmp.2442
	add	ip, ip, #1	@ cnt, cnt,
	cmp	ip, r2	@ cnt, len
	strb	r9, [r1, r5]	@ tmp212,* ivtmp.2442
	add	r5, r5, #1	@ ivtmp.2442, ivtmp.2442,
	ldr	r7, [r3, #368]	@ temp.2460, <variable>.pCurrNal
	add	r7, r8, r7	@ tmp217, tmp233, temp.2460
	ldr	r9, [r7, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r9, r9, #8	@ tmp225, <variable>.bitsoffset,
	str	r9, [r7, #24]	@ tmp225, <variable>.bitsoffset
	bcc	.L652	@,
	b	.L653	@
.L659:
	ldr	r1, [r3, #368]	@ temp.2462, <variable>.pCurrNal
	add	r4, r4, #1	@ segment_idx, segment_idx,
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	r0, r0, #1	@ tmp228, <variable>.nal_used_segment,
	strb	r0, [r1, #0]	@ tmp228, <variable>.nal_used_segment
	ldr	r0, [r3, #368]	@ D.44440, <variable>.pCurrNal
	ldr	r1, [r0, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r4	@ <variable>.nal_segment, segment_idx
	movhi	r1, r7	@ pdes, D.47587
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
.LFB2035:
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
.LFB2042:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r2, [r0, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r3, #0	@ Pos,
	cmp	r2, r3	@ <variable>.is_valid,
	addne	r2, r0, #96	@ ivtmp.2520, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L664	@,
	b	.L663	@
.L673:
	ldrb	ip, [r2, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r2, r2, #192	@ ivtmp.2520, ivtmp.2520,
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
	mov	r0, r3	@, D.45298
	bx	lr	@
.L665:
	mvn	r3, #0	@ D.45298,
	mov	r0, r3	@, D.45298
	bx	lr	@
	.fnend
	.size	FindNaluArraySlot, .-FindNaluArraySlot
	.align	2
	.global	HaveSliceToDec
	.type	HaveSliceToDec, %function
HaveSliceToDec:
	.fnstart
.LFB2044:
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
.LFB2027:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ar_idc
	mov	ip, r1	@ sar_width, sar_width
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r3	@ img_width, img_width
	beq	.L679	@,
	subs	r3, r0, #255	@ D.43908, ar_idc,
	movne	r3, #1	@ D.43908
	cmp	r0, #255	@ ar_idc,
	cmpne	r0, #16	@, ar_idc,
	bgt	.L679	@,
	cmp	r1, #0	@ sar_width,
	cmpne	r2, #0	@, sar_height,
	beq	.L696	@,
.L680:
	cmp	r0, #1	@ ar_idc,
	moveq	r4, #5	@ final_dar,
	beq	.L682	@,
	cmp	r3, #0	@ D.43908,
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
	add	ip, r5, #1020	@ tmp178, tmp176,
	cmp	r5, #0	@ tmp176,
	add	r1, ip, #3	@ tmp178, tmp178,
	movlt	r5, r1	@ tmp177, tmp178
	mov	r5, r5, asr #10	@ dar, tmp177,
	sub	r0, r5, #2400	@ iftmp.790, dar,
	sub	r3, r5, #2256	@ iftmp.2570, dar,
	sub	r2, r0, #6	@ iftmp.790, iftmp.790,
	sub	r3, r3, #7	@ iftmp.2570, iftmp.2570,
	cmp	r2, #0	@ iftmp.790,
	rsblt	r2, r5, #2400	@ tmp182, dar,
	addlt	r2, r2, #6	@ iftmp.790, tmp182,
	cmp	r3, #0	@ iftmp.2570,
	rsblt	r1, r5, #2256	@ tmp184, dar,
	addlt	r1, r1, #7	@ iftmp.791, tmp184,
	movge	r1, r3	@ iftmp.791, iftmp.2570
	cmp	r2, r1	@ iftmp.790, iftmp.791
	movlt	r4, #4	@ final_dar,
	blt	.L682	@,
	cmp	r3, #0	@ iftmp.2570,
	sub	lr, r5, #1808	@ iftmp.2571, dar,
	rsblt	r3, r5, #2256	@ tmp185, dar,
	sub	r2, lr, #12	@ iftmp.2571, iftmp.2571,
	addlt	r3, r3, #7	@ iftmp.2570, tmp185,
	cmp	r2, #0	@ iftmp.2571,
	rsblt	r1, r5, #1808	@ tmp187, dar,
	addlt	r1, r1, #12	@ iftmp.793, tmp187,
	movge	r1, r2	@ iftmp.793, iftmp.2571
	cmp	r3, r1	@ iftmp.2570, iftmp.793
	movlt	r4, #3	@ final_dar,
	blt	.L682	@,
	cmp	r2, #0	@ iftmp.2571,
	sub	r4, r5, #1360	@ iftmp.795, dar,
	sub	r4, r4, #5	@ iftmp.795, iftmp.795,
	rsblt	r2, r5, #1808	@ tmp188, dar,
	addlt	r2, r2, #12	@ iftmp.2571, tmp188,
	cmp	r4, #0	@ iftmp.795,
	rsblt	r4, r5, #1360	@ tmp190, dar,
	addlt	r4, r4, #5	@ iftmp.795, tmp190,
	cmp	r2, r4	@ iftmp.2571, iftmp.795
	movlt	r4, #2	@ final_dar,
	movge	r4, #1	@ final_dar,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, final_dar
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L696:
	cmp	r0, #255	@ ar_idc,
	bne	.L680	@,
.L679:
	mov	r4, #0	@ final_dar,
.L682:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, final_dar
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	H264GetDar, .-H264GetDar
	.align	2
	.global	SPSEqual
	.type	SPSEqual, %function
SPSEqual:
	.fnstart
.LFB2026:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pSPS1
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L729	@,
	cmp	r1, #0	@ pSPS2,
	beq	.L729	@,
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
	movne	ip, #0	@, equal.2668
	moveq	ip, #1	@, equal.2668
	ldr	r6, [r1, #740]	@ <variable>.level_idc, <variable>.level_idc
	cmp	r5, r2	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	movne	r2, #0	@, equal.2669
	andeq	r2, ip, #1	@,, equal.2669, equal.2668
	ldr	r5, [r0, #740]	@ <variable>.level_idc, <variable>.level_idc
	cmp	r4, r7	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	movne	r3, #0	@, equal.2670
	andeq	r3, r2, #1	@,, equal.2670, equal.2669
	ldr	r4, [r0, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r7, [r1, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	cmp	r5, r6	@ <variable>.level_idc, <variable>.level_idc
	movne	ip, #0	@, equal.2671
	andeq	ip, r3, #1	@,, equal.2671, equal.2670
	ldrb	r3, [r0, #25]	@ zero_extendqisi2	@ D.43800, <variable>.seq_scaling_matrix_present_flag
	ldrb	r6, [r1, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r4, r7	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movne	r2, #0	@, equal.2672
	andeq	r2, ip, #1	@,, equal.2672, equal.2671
	cmp	r6, r3	@ <variable>.seq_scaling_matrix_present_flag, D.43800
	movne	r6, #0	@, equal
	andeq	r6, r2, #1	@,, equal, equal.2672
	cmp	r3, #0	@ D.43800,
	beq	.L701	@,
	mov	r9, r0	@ ivtmp.2632, pSPS1
	mov	fp, r1	@ ivtmp.2634, pSPS2
	mov	r8, #0	@ i,
	str	r0, [sp, #0]	@ pSPS1, %sfp
	mov	sl, r1	@ pSPS2, pSPS2
	b	.L705	@
.L731:
	mov	r3, r8, asl #6	@ tmp285, i,
	ldr	r4, [r9, #768]	@ tmp229, <variable>.ScalingList4x4
	ldr	r7, [fp, #768]	@ tmp230, <variable>.ScalingList4x4
	add	r2, r3, sl	@, tmp285, pSPS2
	str	r2, [sp, #4]	@, %sfp
	add	r3, r3, r1	@ tmp286, tmp285,
	ldr	r0, [r9, #764]	@ tmp233, <variable>.ScalingList4x4
	ldr	r1, [fp, #764]	@ tmp234, <variable>.ScalingList4x4
	ldr	r5, [fp, #772]	@ tmp238, <variable>.ScalingList4x4
	cmp	r4, r7	@ tmp229, tmp230
	cmpeq	r0, r1	@, tmp233, tmp234
	ldr	r2, [r9, #772]	@ tmp237, <variable>.ScalingList4x4
	ldr	r4, [r9, #776]	@ tmp241, <variable>.ScalingList4x4
	ldr	r7, [fp, #776]	@ tmp242, <variable>.ScalingList4x4
	movne	ip, #0	@, equal.2689
	moveq	ip, #1	@, equal.2689
	ldr	r1, [fp, #780]	@ tmp246, <variable>.ScalingList4x4
	cmp	r2, r5	@ tmp237, tmp238
	movne	r2, #0	@, equal.2693
	andeq	r2, ip, #1	@,, equal.2693, equal.2689
	ldr	r5, [r9, #780]	@ tmp245, <variable>.ScalingList4x4
	cmp	r4, r7	@ tmp241, tmp242
	movne	r0, #0	@, equal.2697
	andeq	r0, r2, #1	@,, equal.2697, equal.2693
	ldr	r7, [r9, #784]	@ tmp249, <variable>.ScalingList4x4
	ldr	r2, [fp, #784]	@ tmp250, <variable>.ScalingList4x4
	cmp	r5, r1	@ tmp245, tmp246
	movne	ip, #0	@, equal.2701
	andeq	ip, r0, #1	@,, equal.2701, equal.2697
	ldr	r5, [r9, #788]	@ tmp253, <variable>.ScalingList4x4
	ldr	r1, [fp, #788]	@ tmp254, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp249, tmp250
	movne	r4, #0	@, equal.2705
	andeq	r4, ip, #1	@,, equal.2705, equal.2701
	ldr	r7, [r9, #792]	@ tmp257, <variable>.ScalingList4x4
	ldr	r2, [fp, #792]	@ tmp258, <variable>.ScalingList4x4
	cmp	r5, r1	@ tmp253, tmp254
	movne	r0, #0	@, equal.2709
	andeq	r0, r4, #1	@,, equal.2709, equal.2705
	ldr	r5, [r9, #796]	@ tmp261, <variable>.ScalingList4x4
	ldr	r1, [fp, #796]	@ tmp262, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp257, tmp258
	movne	ip, #0	@, equal.2713
	andeq	ip, r0, #1	@,, equal.2713, equal.2709
	ldr	r7, [r9, #800]	@ tmp265, <variable>.ScalingList4x4
	ldr	r2, [fp, #800]	@ tmp266, <variable>.ScalingList4x4
	cmp	r5, r1	@ tmp261, tmp262
	movne	r4, #0	@, equal.2717
	andeq	r4, ip, #1	@,, equal.2717, equal.2713
	ldr	r5, [r9, #804]	@ tmp269, <variable>.ScalingList4x4
	ldr	r1, [fp, #804]	@ tmp270, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp265, tmp266
	movne	r0, #0	@, equal.2721
	andeq	r0, r4, #1	@,, equal.2721, equal.2717
	ldr	r7, [r9, #808]	@ tmp273, <variable>.ScalingList4x4
	ldr	r2, [fp, #808]	@ tmp274, <variable>.ScalingList4x4
	cmp	r5, r1	@ tmp269, tmp270
	movne	ip, #0	@, equal.2725
	andeq	ip, r0, #1	@,, equal.2725, equal.2721
	ldr	r0, [r9, #812]	@ tmp277, <variable>.ScalingList4x4
	ldr	r5, [fp, #812]	@ tmp278, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp273, tmp274
	movne	r4, #0	@, equal.2729
	andeq	r4, ip, #1	@,, equal.2729, equal.2725
	ldr	r7, [fp, #816]	@ tmp282, <variable>.ScalingList4x4
	cmp	r0, r5	@ tmp277, tmp278
	movne	r1, #0	@, equal.2733
	andeq	r1, r4, #1	@,, equal.2733, equal.2729
	ldr	r5, [sp, #4]	@, %sfp
	ldr	ip, [r9, #816]	@ tmp281, <variable>.ScalingList4x4
	ldr	r0, [r3, #760]	@ tmp293, <variable>.ScalingList4x4
	cmp	ip, r7	@ tmp281, tmp282
	movne	r2, #0	@, equal.2737
	andeq	r2, r1, #1	@,, equal.2737, equal.2733
	ldr	r4, [r5, #760]	@ tmp294, <variable>.ScalingList4x4
	and	r6, r6, r2	@ equal.2741, equal, equal.2737
	ldr	r1, [r9, #820]	@ tmp297, <variable>.ScalingList4x4
	ldr	r7, [fp, #820]	@ tmp298, <variable>.ScalingList4x4
	cmp	r0, r4	@ tmp293, tmp294
	movne	r3, #0	@, equal.2745
	andeq	r3, r6, #1	@,, equal.2745, equal.2741
	cmp	r1, r7	@ tmp297, tmp298
	movne	r6, #0	@, equal
	andeq	r6, r3, #1	@,, equal, equal.2745
.L702:
	add	r8, r8, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2632, ivtmp.2632,
	cmp	r8, #8	@ i,
	add	fp, fp, #64	@ ivtmp.2634, ivtmp.2634,
	beq	.L730	@,
.L705:
	ldr	r1, [sp, #0]	@, %sfp
	add	r5, sl, r8	@ tmp223, pSPS2, i
	add	ip, r1, r8	@ tmp222,, i
	ldrb	r2, [r5, #4]	@ zero_extendqisi2	@ D.43806, <variable>.seq_scaling_list_present_flag
	ldrb	r0, [ip, #4]	@ zero_extendqisi2	@ D.43806, <variable>.seq_scaling_list_present_flag
	cmp	r0, r2	@ D.43806, D.43806
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r0, #0	@ D.43806,
	beq	.L702	@,
	cmp	r8, #5	@ i,
	bls	.L731	@,
	mov	r4, r8, asl #8	@ tmp300, i,
	ldr	r0, [sp, #0]	@, %sfp
	ldr	r7, [sp, #0]	@, %sfp
	sub	r1, r4, #392	@ tmp301, tmp300,
	add	r2, r0, r1	@ ivtmp.2616,, tmp301
	add	r3, sl, r1	@ ivtmp.2619, pSPS2, tmp301
	ldr	r5, [sl, r1]	@ tmp308, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2616, ivtmp.2616,
	ldr	r4, [r7, r1]	@ tmp307, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2619, ivtmp.2619,
	ldr	r7, [r2, #4]	@ tmp436, <variable>.ScalingList8x8
	mov	ip, #2	@ j,
	ldr	r3, [r3, #4]	@ tmp437, <variable>.ScalingList8x8
	cmp	r4, r5	@ tmp307, tmp308
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r7, r3	@ tmp436, tmp437
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
.L704:
	mov	r2, r0	@ tmp403, ivtmp.2616
	mov	r3, r1	@ tmp404, ivtmp.2619
	ldr	r7, [r2], #4	@ tmp408, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r5, [r3], #4	@ tmp409, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp415, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2616, tmp403,
	ldr	r2, [r1, #4]	@ tmp416, <variable>.ScalingList8x8
	cmp	r7, r5	@ tmp408, tmp409
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2619, tmp404,
	cmp	r4, r2	@ tmp415, tmp416
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L704	@,
	add	r8, r8, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2632, ivtmp.2632,
	cmp	r8, #8	@ i,
	add	fp, fp, #64	@ ivtmp.2634, ivtmp.2634,
	bne	.L705	@,
.L730:
	ldr	r0, [sp, #0]	@ pSPS1, %sfp
	mov	r1, sl	@ pSPS2, pSPS2
.L701:
	ldr	r3, [r0, #2908]	@ D.43825, <variable>.pic_order_cnt_type
	ldr	r4, [r1, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	ldr	r5, [r0, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	ldr	r7, [r1, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	cmp	r3, r4	@ D.43825, <variable>.pic_order_cnt_type
	cmpeq	r5, r7	@, <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	movne	ip, #0	@, equal.2673
	moveq	ip, #1	@, equal.2673
	cmp	r3, #0	@ D.43825,
	and	r6, ip, r6	@ equal.2664, equal.2673, equal
	bne	.L732	@,
	ldr	r2, [r0, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	ldr	r3, [r1, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	cmp	r2, r3	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
.L706:
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
	movne	r3, #0	@, equal.2677
	moveq	r3, #1	@, equal.2677
	cmp	r4, ip	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	movne	r4, #0	@, equal.2678
	andeq	r4, r3, #1	@,, equal.2678, equal.2677
	ldrb	r3, [r0, #18]	@ zero_extendqisi2	@ D.43858, <variable>.frame_mbs_only_flag
	ldrb	ip, [r1, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r5, r2	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	movne	r2, #0	@, equal.2679
	andeq	r2, r4, #1	@,, equal.2679, equal.2678
	cmp	ip, r3	@ <variable>.frame_mbs_only_flag, D.43858
	movne	r2, #0	@, equal.2680
	andeq	r2, r2, #1	@,, equal.2680, equal.2679
	cmp	r3, #0	@ D.43858,
	and	r6, r2, r6	@ equal.2665, equal.2680, equal.2664
	bne	.L710	@,
	ldrb	r4, [r0, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	ldrb	ip, [r1, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r4, ip	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movne	r6, #0	@, equal.2665
	andeq	r6, r6, #1	@,, equal.2665, equal.2665
.L710:
	ldrb	r3, [r0, #21]	@ zero_extendqisi2	@ D.43869, <variable>.frame_cropping_flag
	ldrb	r2, [r0, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	ldrb	r4, [r1, #21]	@ zero_extendqisi2	@ <variable>.frame_cropping_flag, <variable>.frame_cropping_flag
	ldrb	ip, [r1, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	cmp	r4, r3	@ <variable>.frame_cropping_flag, D.43869
	cmpeq	r2, ip	@, <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	movne	r2, #0	@, equal.2681
	moveq	r2, #1	@, equal.2681
	cmp	r3, #0	@ D.43869,
	and	r3, r2, r6	@ equal.2666, equal.2681, equal.2665
	beq	.L711	@,
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
	movne	r5, #0	@, equal.2682
	moveq	r5, #1	@, equal.2682
	cmp	r6, ip	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	movne	ip, #0	@, equal.2683
	andeq	ip, r5, #1	@,, equal.2683, equal.2682
	cmp	r4, r2	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	movne	r2, #0	@, equal.2684
	andeq	r2, ip, #1	@,, equal.2684, equal.2683
	and	r3, r3, r2	@ equal.2666, equal.2666, equal.2684
.L711:
	ldrb	r0, [r0, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	ldrb	ip, [r1, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	r0, ip	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	movne	r3, #0	@, tmp392
	andeq	r3, r3, #1	@,, tmp392, equal.2666
	cmp	r3, #0	@ tmp392,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L699:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L732:
	cmp	r3, #1	@ D.43825,
	bne	.L706	@,
	ldr	r5, [r0, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldr	r7, [r1, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldrb	r8, [r1, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldrb	r2, [r0, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r4, [r0, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	cmp	r5, r7	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	cmpeq	r2, r8	@, <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r3, [r1, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	ldr	r8, [r0, #2924]	@ D.43840, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	ldr	r7, [r1, #2924]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	ip, #0	@, equal.2674
	moveq	ip, #1	@, equal.2674
	cmp	r4, r3	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movne	r5, #0	@, equal.2675
	andeq	r5, ip, #1	@,, equal.2675, equal.2674
	cmp	r8, r7	@ D.43840, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	r5, #0	@, equal.2676
	andeq	r5, r5, #1	@,, equal.2676, equal.2675
	cmp	r8, #0	@ D.43840,
	and	r6, r6, r5	@ equal.2664, equal.2664, equal.2676
	beq	.L706	@,
	ldr	r4, [r0, #2928]	@ tmp339, <variable>.offset_for_ref_frame
	mov	r8, r8, asl #2	@ D.47748, D.43840,
	ldr	ip, [r1, #2928]	@ tmp340, <variable>.offset_for_ref_frame
	mov	r3, #4	@ ivtmp.2607,
	sub	r2, r8, #4	@ tmp397, D.47748,
	cmp	r4, ip	@ tmp339, tmp340
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
	cmp	r3, r8	@ ivtmp.2607, D.47748
	ubfx	r2, r2, #2, #1	@ tmp398, tmp397,,
	beq	.L706	@,
	cmp	r2, #0	@ tmp398,
	beq	.L709	@,
	ldr	r2, [r0, #2932]	@ tmp433, <variable>.offset_for_ref_frame
	mov	r3, #8	@ ivtmp.2607,
	ldr	r7, [r1, #2932]	@ tmp434, <variable>.offset_for_ref_frame
	cmp	r2, r7	@ tmp433, tmp434
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
	cmp	r3, r8	@ ivtmp.2607, D.47748
	beq	.L706	@,
.L709:
	add	r2, r3, #4	@ tmp399, ivtmp.2607,
	add	r4, r0, r3	@ tmp419, pSPS1, ivtmp.2607
	add	r3, r1, r3	@ tmp420, pSPS2, ivtmp.2607
	add	ip, r0, r2	@ tmp426, pSPS1, tmp399
	add	r7, r1, r2	@ tmp427, pSPS2, tmp399
	ldr	r5, [r4, #2928]	@ tmp421, <variable>.offset_for_ref_frame
	ldr	r4, [r3, #2928]	@ tmp422, <variable>.offset_for_ref_frame
	add	r3, r2, #4	@ ivtmp.2607, tmp399,
	ldr	ip, [ip, #2928]	@ tmp428, <variable>.offset_for_ref_frame
	ldr	r2, [r7, #2928]	@ tmp429, <variable>.offset_for_ref_frame
	cmp	r5, r4	@ tmp421, tmp422
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
	cmp	ip, r2	@ tmp428, tmp429
	movne	r6, #0	@, equal.2664
	andeq	r6, r6, #1	@,, equal.2664, equal.2664
	cmp	r3, r8	@ ivtmp.2607, D.47748
	bne	.L709	@,
	b	.L706	@
.L729:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	b	.L699	@
	.fnend
	.size	SPSEqual, .-SPSEqual
	.align	2
	.global	PPSEqual
	.type	PPSEqual, %function
PPSEqual:
	.fnstart
.LFB2024:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	fp, r0, #0	@ pPPS1, pPPS1
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L754	@,
	cmp	r1, #0	@ pPPS2,
	beq	.L754	@,
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
	movne	r3, #0	@, equal.2828
	moveq	r3, #1	@, equal.2828
	cmp	r0, ip	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	movne	r0, #0	@, equal.2829
	andeq	r0, r3, #1	@,, equal.2829, equal.2828
	ldr	ip, [r1, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	ldr	r3, [fp, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	cmp	r5, r4	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	movne	r2, #0	@, equal.2830
	andeq	r2, r0, #1	@,, equal.2830, equal.2829
	ldr	r5, [fp, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	ldr	r4, [r1, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	cmp	r3, ip	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movne	r3, #0	@, equal.2831
	andeq	r3, r2, #1	@,, equal.2831, equal.2830
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	ldrb	r2, [fp, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r5, r4	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	movne	r0, #0	@, equal.2832
	andeq	r0, r3, #1	@,, equal.2832, equal.2831
	ldr	r5, [fp, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	ldr	r4, [r1, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r2, ip	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	movne	r2, #0	@, equal.2833
	andeq	r2, r0, #1	@,, equal.2833, equal.2832
	ldr	ip, [r1, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	ldr	r0, [fp, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	cmp	r5, r4	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	movne	r3, #0	@, equal.2834
	andeq	r3, r2, #1	@,, equal.2834, equal.2833
	ldr	r5, [fp, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldr	r4, [r1, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	cmp	r0, ip	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	movne	r0, #0	@, equal.2835
	andeq	r0, r3, #1	@,, equal.2835, equal.2834
	ldrb	ip, [r1, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	ldrb	r3, [fp, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	r5, r4	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	movne	r2, #0	@, equal.2836
	andeq	r2, r0, #1	@,, equal.2836, equal.2835
	ldrb	r5, [fp, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	ldrb	r4, [r1, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	cmp	r3, ip	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	movne	r3, #0	@, equal.2837
	andeq	r3, r2, #1	@,, equal.2837, equal.2836
	ldr	r2, [fp, #60]	@ D.43555, <variable>.transform_8x8_mode_flag
	ldr	ip, [r1, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	cmp	r5, r4	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	movne	r0, #0	@, equal.2838
	andeq	r0, r3, #1	@,, equal.2838, equal.2837
	ldrb	r3, [fp, #18]	@ zero_extendqisi2	@ D.43558, <variable>.pic_scaling_matrix_present_flag
	ldrb	r5, [r1, #18]	@ zero_extendqisi2	@ <variable>.pic_scaling_matrix_present_flag, <variable>.pic_scaling_matrix_present_flag
	cmp	r2, ip	@ D.43555, <variable>.transform_8x8_mode_flag
	movne	r0, #0	@, equal.2839
	andeq	r0, r0, #1	@,, equal.2839, equal.2838
	cmp	r5, r3	@ <variable>.pic_scaling_matrix_present_flag, D.43558
	movne	r5, #0	@, equal
	andeq	r5, r0, #1	@,, equal, equal.2839
	cmp	r3, #0	@ D.43558,
	beq	.L737	@,
	mov	ip, r2, asl #1	@ tmp231, D.43555,
	adds	r0, ip, #6	@, tmp231,
	str	r0, [sp, #4]	@, %sfp
	beq	.L737	@,
	mov	r9, fp	@ ivtmp.2795, pPPS1
	str	fp, [sp, #0]	@ pPPS1, %sfp
	mov	sl, r1	@ ivtmp.2797, pPPS2
	mov	r8, #0	@ i,
	mov	fp, r1	@ pPPS2, pPPS2
	b	.L741	@
.L752:
	cmp	r8, #5	@ i,
	bhi	.L739	@,
	ldr	r0, [r9, #72]	@ tmp239, <variable>.ScalingList4x4
	add	r8, r8, #1	@ i, i,
	ldr	ip, [sl, #72]	@ tmp240, <variable>.ScalingList4x4
	ldr	r6, [r9, #68]	@ tmp243, <variable>.ScalingList4x4
	ldr	r2, [sl, #68]	@ tmp244, <variable>.ScalingList4x4
	ldr	r3, [r9, #76]	@ tmp247, <variable>.ScalingList4x4
	cmp	r0, ip	@ tmp239, tmp240
	cmpeq	r6, r2	@, tmp243, tmp244
	ldr	r4, [sl, #76]	@ tmp248, <variable>.ScalingList4x4
	ldr	r7, [r9, #80]	@ tmp251, <variable>.ScalingList4x4
	ldr	r6, [sl, #80]	@ tmp252, <variable>.ScalingList4x4
	movne	r1, #0	@, equal.2844
	moveq	r1, #1	@, equal.2844
	ldr	r0, [r9, #84]	@ tmp255, <variable>.ScalingList4x4
	cmp	r3, r4	@ tmp247, tmp248
	movne	ip, #0	@, equal.2848
	andeq	ip, r1, #1	@,, equal.2848, equal.2844
	ldr	r2, [sl, #84]	@ tmp256, <variable>.ScalingList4x4
	cmp	r7, r6	@ tmp251, tmp252
	movne	r6, #0	@, equal.2852
	andeq	r6, ip, #1	@,, equal.2852, equal.2848
	ldr	r3, [sl, #88]	@ tmp260, <variable>.ScalingList4x4
	ldr	ip, [r9, #88]	@ tmp259, <variable>.ScalingList4x4
	cmp	r0, r2	@ tmp255, tmp256
	movne	r1, #0	@, equal.2856
	andeq	r1, r6, #1	@,, equal.2856, equal.2852
	ldr	r7, [r9, #92]	@ tmp263, <variable>.ScalingList4x4
	ldr	r2, [sl, #92]	@ tmp264, <variable>.ScalingList4x4
	cmp	ip, r3	@ tmp259, tmp260
	movne	r0, #0	@, equal.2860
	andeq	r0, r1, #1	@,, equal.2860, equal.2856
	ldr	r3, [sl, #96]	@ tmp268, <variable>.ScalingList4x4
	ldr	r1, [r9, #96]	@ tmp267, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp263, tmp264
	movne	ip, #0	@, equal.2864
	andeq	ip, r0, #1	@,, equal.2864, equal.2860
	ldr	r7, [r9, #100]	@ tmp271, <variable>.ScalingList4x4
	ldr	r2, [sl, #100]	@ tmp272, <variable>.ScalingList4x4
	cmp	r1, r3	@ tmp267, tmp268
	movne	r1, #0	@, equal.2868
	andeq	r1, ip, #1	@,, equal.2868, equal.2864
	ldr	r3, [sl, #104]	@ tmp276, <variable>.ScalingList4x4
	ldr	ip, [r9, #104]	@ tmp275, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp271, tmp272
	movne	r0, #0	@, equal.2872
	andeq	r0, r1, #1	@,, equal.2872, equal.2868
	ldr	r1, [r9, #108]	@ tmp279, <variable>.ScalingList4x4
	ldr	r7, [sl, #108]	@ tmp280, <variable>.ScalingList4x4
	cmp	ip, r3	@ tmp275, tmp276
	movne	ip, #0	@, equal.2876
	andeq	ip, r0, #1	@,, equal.2876, equal.2872
	ldr	r3, [sl, #112]	@ tmp284, <variable>.ScalingList4x4
	ldr	r0, [r9, #112]	@ tmp283, <variable>.ScalingList4x4
	cmp	r1, r7	@ tmp279, tmp280
	movne	r2, #0	@, equal.2880
	andeq	r2, ip, #1	@,, equal.2880, equal.2876
	ldr	ip, [r9, #116]	@ tmp287, <variable>.ScalingList4x4
	ldr	r7, [sl, #116]	@ tmp288, <variable>.ScalingList4x4
	cmp	r0, r3	@ tmp283, tmp284
	movne	r0, #0	@, equal.2884
	andeq	r0, r2, #1	@,, equal.2884, equal.2880
	ldr	r3, [sl, #120]	@ tmp292, <variable>.ScalingList4x4
	cmp	ip, r7	@ tmp287, tmp288
	movne	r1, #0	@, equal.2888
	andeq	r1, r0, #1	@,, equal.2888, equal.2884
	ldr	r7, [sp, #0]	@, %sfp
	ldr	r2, [r9, #120]	@ tmp291, <variable>.ScalingList4x4
	ldr	ip, [fp, r8, asl #6]	@ tmp298, <variable>.ScalingList4x4
	cmp	r2, r3	@ tmp291, tmp292
	movne	r2, #0	@, equal.2892
	andeq	r2, r1, #1	@,, equal.2892, equal.2888
	ldr	r0, [r7, r8, asl #6]	@ tmp297, <variable>.ScalingList4x4
	and	r5, r5, r2	@ equal.2896, equal, equal.2892
	ldr	r1, [r9, #124]	@ tmp301, <variable>.ScalingList4x4
	cmp	r0, ip	@ tmp297, tmp298
	movne	r3, #0	@, equal.2900
	andeq	r3, r5, #1	@,, equal.2900, equal.2896
	ldr	r2, [sl, #124]	@ tmp302, <variable>.ScalingList4x4
	ldr	ip, [sp, #4]	@, %sfp
	add	r9, r9, #64	@ ivtmp.2795, ivtmp.2795,
	cmp	r1, r2	@ tmp301, tmp302
	movne	r5, #0	@, equal
	andeq	r5, r3, #1	@,, equal, equal.2900
	add	sl, sl, #64	@ ivtmp.2797, ivtmp.2797,
	cmp	ip, r8	@, i
	bls	.L755	@,
.L741:
	ldr	ip, [sp, #0]	@, %sfp
	add	r0, fp, r8	@ tmp233, pPPS2, i
	add	r3, ip, r8	@ tmp232,, i
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ D.43564, <variable>.pic_scaling_list_present_flag
	ldrb	r1, [r3, #5]	@ zero_extendqisi2	@ D.43564, <variable>.pic_scaling_list_present_flag
	cmp	r1, r2	@ D.43564, D.43564
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	r1, #0	@ D.43564,
	bne	.L752	@,
	add	r8, r8, #1	@ i, i,
.L756:
	ldr	ip, [sp, #4]	@, %sfp
	add	r9, r9, #64	@ ivtmp.2795, ivtmp.2795,
	add	sl, sl, #64	@ ivtmp.2797, ivtmp.2797,
	cmp	ip, r8	@, i
	bhi	.L741	@,
.L755:
	mov	r1, fp	@ pPPS2, pPPS2
	ldr	fp, [sp, #0]	@ pPPS1, %sfp
.L737:
	ldr	r0, [fp, #56]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	ldr	r3, [r1, #56]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	cmp	r0, r3	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	movne	r5, #0	@, tmp316
	andeq	r5, r5, #1	@,, tmp316, equal
	cmp	r5, #0	@ tmp316,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
.L735:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L739:
	mov	r4, r8, asl #8	@ tmp304, i,
	ldr	r0, [sp, #0]	@, %sfp
	ldr	r7, [sp, #0]	@, %sfp
	sub	r1, r4, #1088	@ tmp305, tmp304,
	add	r2, r0, r1	@ ivtmp.2782,, tmp305
	add	r3, fp, r1	@ ivtmp.2785, pPPS2, tmp305
	ldr	r6, [fp, r1]	@ tmp310, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2782, ivtmp.2782,
	ldr	r4, [r7, r1]	@ tmp309, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2785, ivtmp.2785,
	ldr	r7, [r2, #4]	@ tmp338, <variable>.ScalingList8x8
	mov	ip, #2	@ j,
	ldr	r3, [r3, #4]	@ tmp339, <variable>.ScalingList8x8
	cmp	r4, r6	@ tmp309, tmp310
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	r7, r3	@ tmp338, tmp339
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
.L740:
	mov	r2, r0	@ tmp323, ivtmp.2782
	mov	r3, r1	@ tmp324, ivtmp.2785
	ldr	r7, [r2], #4	@ tmp328, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r6, [r3], #4	@ tmp329, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp335, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2782, tmp323,
	ldr	r2, [r1, #4]	@ tmp336, <variable>.ScalingList8x8
	cmp	r7, r6	@ tmp328, tmp329
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2785, tmp324,
	cmp	r4, r2	@ tmp335, tmp336
	movne	r5, #0	@, equal
	andeq	r5, r5, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L740	@,
	add	r8, r8, #1	@ i, i,
	b	.L756	@
.L754:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	b	.L735	@
	.fnend
	.size	PPSEqual, .-PPSEqual
	.align	2
	.global	CalcStreamBits
	.type	CalcStreamBits, %function
CalcStreamBits:
	.fnstart
.LFB2019:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #17588	@ tmp167,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	cmp	r3, #0	@ <variable>.CurrPPS.entropy_coding_mode_flag,
	beq	.L758	@,
	ldr	lr, [r4, #368]	@ D.43067, <variable>.pCurrNal
	ldr	r0, [lr, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r3, r0, #7	@ tmp169, <variable>.nal_bitoffset,
	bic	ip, r3, #7	@ tmp171, tmp169,
	str	ip, [lr, #64]	@ tmp171, <variable>.nal_bitoffset
	ldr	r1, [r4, #368]	@ temp.2942, <variable>.pCurrNal
	ldr	r5, [r1, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	sub	r2, r5, #1	@ tmp173, <variable>.nal_trail_zero_bit_num,
	str	r2, [r1, #72]	@ tmp173, <variable>.nal_trail_zero_bit_num
.L758:
	ldr	r3, [r4, #368]	@ temp.2983, <variable>.pCurrNal
	ldrb	r5, [r3, #0]	@ zero_extendqisi2	@ D.43076, <variable>.nal_used_segment
	cmp	r5, #0	@ D.43076,
	beq	.L760	@,
	rsb	lr, r5, r5, asl #3	@, tmp176, D.43076, D.43076,
	mov	r2, #28	@ ivtmp.2940,
	ldr	r5, [r3, #12]	@ code_len_byte, <variable>.bitstream_length
	add	r1, r3, r2	@ ivtmp.2941, temp.2983,
	mov	r0, lr, asl #2	@ D.48090, tmp176,
	cmp	r2, r0	@ ivtmp.2940, D.48090
	sub	ip, r0, #28	@ tmp406, D.48090,
	ubfx	ip, ip, #2, #1	@ tmp410, tmp406,,
	beq	.L760	@,
	cmp	ip, #0	@ tmp410,
	beq	.L761	@,
	ldr	ip, [r1, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	r2, #56	@ ivtmp.2940,
	cmp	r2, r0	@ ivtmp.2940, D.48090
	add	r1, r3, r2	@ ivtmp.2941, temp.2983,
	add	r5, r5, ip	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	beq	.L760	@,
.L761:
	ldr	ip, [r1, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r2, r2, #56	@ ivtmp.2940, ivtmp.2940,
	ldr	r3, [r1, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r2, r0	@ ivtmp.2940, D.48090
	add	r5, r5, ip	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	add	r1, r1, #56	@ ivtmp.2941, ivtmp.2941,
	add	r5, r5, r3	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	bne	.L761	@,
.L760:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #368]	@ temp.2943, <variable>.pCurrNal
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, ip, ip, asl #3	@, tmp183, <variable>.nal_used_segment, <variable>.nal_used_segment,
	and	ip, r1, #7	@ tmp188, <variable>.nal_bitoffset,
	add	r0, r3, r2, asl #2	@, tmp185, temp.2943, tmp183,
	str	ip, [r0, #24]	@ tmp188, <variable>.bitsoffset
	ldr	r1, [r4, #368]	@ temp.2945, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ temp.2948, <variable>.nal_used_segment
	ldr	r0, [r1, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r3, r3, asl #3	@, tmp192, temp.2948, temp.2948,
	add	r3, r1, r2, asl #2	@, tmp194, temp.2945, tmp192,
	ldr	ip, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	r2, ip, r0, lsr #3	@, tmp205, <variable>.stream_phy_addr, <variable>.nal_bitoffset,
	rsb	r1, r5, r2	@ tmp207, code_len_byte, tmp205
	str	r1, [r3, #28]	@ tmp207, <variable>.bytespos
	ldr	r3, [r4, #368]	@ temp.2949, <variable>.pCurrNal
	ldrb	r0, [r3, #0]	@ zero_extendqisi2	@ temp.2951, <variable>.nal_used_segment
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	ip, r0, r0, asl #3	@, tmp211, temp.2951, temp.2951,
	add	r0, r3, ip, asl #2	@, tmp213, temp.2949, tmp211,
	ldr	r2, [r0, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r5, r5, r2	@ tmp222, code_len_byte, <variable>.bitstream_length
	rsb	r5, r1, r5, asl #3	@, tmp226, <variable>.nal_bitoffset, tmp222,
	str	r5, [r0, #20]	@ tmp226, <variable>.valid_bitlen
	b	.L786	@
.L788:
	rsb	r0, r2, r1	@ tmp239, temp.2980, tmp397
	add	r3, r3, r0, asl #2	@, tmp241, temp.2978, tmp239,
	ldr	lr, [r3, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r1, lr, #8	@ tmp251, <variable>.bitsoffset,
	str	r1, [r3, #24]	@ tmp251, <variable>.bitsoffset
	ldr	ip, [r4, #368]	@ temp.2955, <variable>.pCurrNal
	ldrb	r2, [ip, #0]	@ zero_extendqisi2	@ temp.2957, <variable>.nal_used_segment
	rsb	r0, r2, r2, asl #3	@, tmp255, temp.2957, temp.2957,
	add	lr, ip, r0, asl #2	@, tmp257, temp.2955, tmp255,
	add	r3, lr, #24	@ tmp258, tmp257,
	ldr	r1, [r3, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r2, r1, #1	@ tmp267, <variable>.bytespos,
	str	r2, [r3, #4]	@ tmp267, <variable>.bytespos
.L786:
	ldr	r3, [r4, #368]	@ temp.2978, <variable>.pCurrNal
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ temp.2980, <variable>.nal_used_segment
	mov	r1, r2, asl #3	@ tmp397, temp.2980,
	rsb	ip, r2, r1	@ tmp230, temp.2980, tmp397
	add	r0, r3, ip, asl #2	@, tmp232, temp.2978, tmp230,
	ldr	lr, [r0, #28]	@ <variable>.bytespos, <variable>.bytespos
	tst	lr, #3	@ <variable>.bytespos,
	bne	.L788	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #368]	@ temp.2959, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ temp.2960, <variable>.nal_segment
	sub	r2, r1, #1	@ prephitmp.2919, temp.2960,
	cmp	r2, #1	@ prephitmp.2919,
	bhi	.L789	@,
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	ip, lr, #1	@ tmp278, <variable>.nal_used_segment,
	cmp	r1, ip	@ temp.2960, tmp278
	bls	.L765	@,
	mov	r5, #1	@ i,
	mov	r6, #0	@ tmp403,
.L768:
	rsb	r2, r5, r5, asl #3	@, tmp282, i, i,
	mov	r2, r2, asl #2	@ tmp283, tmp282,
	add	r0, r2, r3	@ tmp284, tmp283, temp.2959
	str	r6, [r0, #24]	@ tmp403, <variable>.bitsoffset
	ldr	r3, [r4, #368]	@ temp.2965, <variable>.pCurrNal
	add	r1, r2, r3	@ tmp292, tmp283, temp.2965
	ldr	lr, [r1, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	str	lr, [r1, #28]	@ <variable>.stream_phy_addr, <variable>.bytespos
	ldr	ip, [r4, #368]	@ temp.2966, <variable>.pCurrNal
	add	r3, r2, ip	@ tmp307, tmp283, temp.2966
	ldr	r0, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	r1, r0, asl #3	@ tmp317, <variable>.bitstream_length,
	str	r1, [r3, #20]	@ tmp317, <variable>.valid_bitlen
	b	.L787	@
.L790:
	add	r3, r2, r3	@ tmp332, tmp402, temp.2975
	ldr	r0, [r3, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r1, r0, #8	@ tmp342, <variable>.bitsoffset,
	str	r1, [r3, #24]	@ tmp342, <variable>.bitsoffset
	ldr	lr, [r4, #368]	@ temp.2968, <variable>.pCurrNal
	add	ip, r2, lr	@ tmp348, tmp402, temp.2968
	add	r3, ip, #24	@ tmp349, tmp348,
	ldr	r0, [r3, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r1, r0, #1	@ tmp358, <variable>.bytespos,
	str	r1, [r3, #4]	@ tmp358, <variable>.bytespos
.L787:
	ldr	r3, [r4, #368]	@ temp.2975, <variable>.pCurrNal
	add	lr, r2, r3	@ tmp323, tmp283, temp.2975
	ldr	ip, [lr, #28]	@ <variable>.bytespos, <variable>.bytespos
	tst	ip, #3	@ <variable>.bytespos,
	bne	.L790	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #368]	@ temp.2959, <variable>.pCurrNal
	add	r5, r5, #1	@ i, i,
	ldr	r2, [r3, #68]	@ D.43092, <variable>.nal_segment
	cmp	r2, r5	@ D.43092, i
	bhi	.L768	@,
	sub	r2, r2, #1	@ prephitmp.2919, D.43092,
.L765:
	rsb	r0, r2, r2, asl #3	@, tmp371, prephitmp.2919, prephitmp.2919,
	ldr	r1, [r3, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	add	r3, r3, r0, asl #2	@, tmp373, temp.2959, tmp371,
	add	ip, r3, #16	@ tmp374, tmp373,
	ldr	lr, [ip, #4]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	rsb	r2, r1, lr	@ tmp384, <variable>.nal_trail_zero_bit_num, <variable>.valid_bitlen
	str	r2, [ip, #4]	@ tmp384, <variable>.valid_bitlen
	ldr	r2, [r4, #368]	@ temp.2971, <variable>.pCurrNal
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ i.2954, <variable>.nal_used_segment
	ldr	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i.2954
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
	mov	r5, #50176	@ tmp400,
.L773:
	rsb	lr, r3, r3, asl #3	@, tmp389, i.2954, i.2954,
	ldr	ip, [r4, r5]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	add	r3, r3, #1	@ i.2954, i.2954,
	add	r0, r2, lr, asl #2	@, tmp391, temp.2971, tmp389,
	ldr	lr, [r0, #28]	@ temp.2974, <variable>.bytespos
	cmp	lr, ip	@ temp.2974, <variable>.CurrPic.stream_base_addr
	strcc	lr, [r4, r5]	@ temp.2974, <variable>.CurrPic.stream_base_addr
	ldrcc	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i.2954
	bhi	.L773	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L789:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	CalcStreamBits, .-CalcStreamBits
	.align	2
	.global	IsNewPic
	.type	IsNewPic, %function
IsNewPic:
	.fnstart
.LFB2010:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	ip, #22332	@ tmp151,
	movw	r1, #14332	@ tmp152,
	movw	lr, #22336	@ tmp157,
	movw	r3, #20692	@ tmp158,
	ldr	r4, [r0, ip]	@ <variable>.PrevSlice.seq_parameter_set_id, <variable>.PrevSlice.seq_parameter_set_id
	ldr	r3, [r0, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r2, #22344	@ tmp163,
	ldr	ip, [r0, r1]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	ldr	r1, [r0, lr]	@ <variable>.PrevSlice.pic_parameter_set_id, <variable>.PrevSlice.pic_parameter_set_id
	movw	lr, #20700	@ tmp164,
	ldr	r2, [r0, r2]	@ <variable>.PrevSlice.frame_num, <variable>.PrevSlice.frame_num
	cmp	r1, r3	@ <variable>.PrevSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	cmpeq	r4, ip	@, <variable>.PrevSlice.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	ldr	lr, [r0, lr]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r4, #22328	@ tmp169,
	movw	r1, #20681	@ tmp170,
	ldrb	r3, [r0, r4]	@ zero_extendqisi2	@ D.42373, <variable>.PrevSlice.field_pic_flag
	moveq	ip, #0	@, result.3010
	movne	ip, #1	@, result.3010
	ldrb	r1, [r0, r1]	@ zero_extendqisi2	@ D.42374, <variable>.CurrSlice.field_pic_flag
	cmp	r2, lr	@ <variable>.PrevSlice.frame_num, <variable>.CurrSlice.frame_num
	moveq	r2, ip	@, result.3011, result.3010
	orrne	r2, ip, #1	@,, result.3011, result.3010
	cmp	r3, r1	@ D.42373, D.42374
	orrne	r2, r2, #1	@,, result, result.3011
	cmp	r3, #0	@ D.42373,
	beq	.L792	@,
	cmp	r1, #0	@ D.42374,
	bne	.L800	@,
.L792:
	movw	r4, #22340	@ tmp179,
	movw	ip, #20712	@ tmp180,
	ldr	r3, [r0, r4]	@ D.42387, <variable>.PrevSlice.nal_ref_idc
	ldr	r4, [r0, ip]	@ D.42388, <variable>.CurrSlice.nal_ref_idc
	cmp	r3, r4	@ D.42387, D.42388
	moveq	r4, #0	@ prephitmp.2998,
	beq	.L794	@,
	cmp	r3, #0	@ D.42387,
	moveq	r4, #1	@ prephitmp.2998,
	bne	.L801	@,
.L794:
	movw	r1, #20683	@ tmp184,
	movw	lr, #22330	@ tmp183,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ D.42393, <variable>.CurrSlice.nal_unit_type
	ldrb	r1, [r0, lr]	@ zero_extendqisi2	@ D.42392, <variable>.PrevSlice.nal_unit_type
	cmp	r1, r3	@ D.42392, D.42393
	orrne	r2, r2, #1	@,, result.3012, result
	cmp	r3, #5	@ D.42393,
	orr	r4, r2, r4	@ result.3009, result.3012, prephitmp.2998
	beq	.L802	@,
.L796:
	movw	r1, #16496	@ tmp193,
	ldr	r3, [r0, r1]	@ D.42402, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r3, #0	@ D.42402,
	bne	.L797	@,
	movw	r3, #22356	@ tmp194,
	movw	lr, #19800	@ tmp195,
	movw	r1, #22352	@ tmp200,
	movw	r2, #19796	@ tmp201,
	ldr	ip, [r0, r3]	@ <variable>.PrevSlice.delta_pic_oder_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r3, [r0, lr]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	ldr	lr, [r0, r1]	@ <variable>.PrevSlice.pic_oder_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	ldr	r1, [r0, r2]	@ <variable>.CurrPOC.pic_order_cnt_lsb,
	cmp	lr, r1	@ <variable>.PrevSlice.pic_oder_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmpeq	ip, r3	@, <variable>.PrevSlice.delta_pic_oder_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	moveq	r2, #0	@, result.3013
	movne	r2, #1	@, result.3013
	orr	r4, r4, r2	@ result.3009, result.3009, result.3013
.L798:
	movw	ip, #20732	@ tmp218,
	ldr	lr, [r0, ip]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	lr, #0	@ <variable>.CurrSlice.first_mb_in_slice,
	orreq	r4, r4, #1	@,, result.3015, result.3009
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, result.3015
	ldmfd	sp!, {r4, pc}	@
.L797:
	cmp	r3, #1	@ D.42402,
	bne	.L798	@,
	movw	r1, #22364	@ tmp206,
	movw	r2, #22360	@ tmp212,
	ldr	ip, [r0, r1]	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r3, #19848	@ tmp207,
	ldr	r1, [r0, r2]	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r2, #19844	@ tmp213,
	ldr	lr, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r2, [r0, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt,
	cmp	r1, r2	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	cmpeq	ip, lr	@, <variable>.PrevSlice.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	moveq	ip, #0	@, result.3014
	movne	ip, #1	@, result.3014
	orr	r4, r4, ip	@ result.3009, result.3009, result.3014
	b	.L798	@
.L801:
	rsbs	r4, r4, #1	@ prephitmp.2998, D.42388
	movcc	r4, #0	@ prephitmp.2998
	b	.L794	@
.L800:
	movw	r1, #22329	@ tmp173,
	movw	lr, #20682	@ tmp174,
	ldrb	r4, [r0, r1]	@ zero_extendqisi2	@ <variable>.PrevSlice.bottom_field_flag, <variable>.PrevSlice.bottom_field_flag
	ldrb	r3, [r0, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r4, r3	@ <variable>.PrevSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	orrne	r2, r2, #1	@,, result, result
	b	.L792	@
.L802:
	cmp	r1, #5	@ D.42392,
	bne	.L796	@,
	movw	lr, #22348	@ tmp187,
	movw	r3, #20720	@ tmp188,
	ldr	r2, [r0, lr]	@ <variable>.PrevSlice.idr_pic_id, <variable>.PrevSlice.idr_pic_id
	ldr	ip, [r0, r3]	@ <variable>.CurrSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	cmp	r2, ip	@ <variable>.PrevSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	orrne	r4, r4, #1	@,, result.3009, result.3009
	b	.L796	@
	.fnend
	.size	IsNewPic, .-IsNewPic
	.align	2
	.global	PPSSPSCheckTmpId
	.type	PPSSPSCheckTmpId, %function
PPSSPSCheckTmpId:
	.fnstart
.LFB2009:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r1	@ tmp_pic_parameter_set_id, tmp_pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	vfmw_dprint_nothing	@
	movw	r2, #13584	@ tmp139,
	mov	r1, #2208	@ tmp141,
	ldr	r0, [r4, r2]	@ <variable>.PPS, <variable>.PPS
	mla	r1, r1, r5, r0	@ pPPS, tmp141, tmp_pic_parameter_set_id, <variable>.PPS
	ldrb	r3, [r1, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r3, #0	@ <variable>.is_valid,
	beq	.L809	@,
	ldr	r3, [r1, #28]	@ D.42349, <variable>.seq_parameter_set_id
	movw	r1, #13572	@ tmp144,
	ldr	lr, [r4, r1]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	ip, lr, #1	@ tmp145, <variable>.MaxSpsNum,
	cmp	r3, ip	@ D.42349, tmp145
	bhi	.L809	@,
	movw	r1, #13580	@ tmp148,
	mov	lr, #4000	@ tmp150,
	ldr	r2, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	mla	ip, lr, r3, r2	@ tmp151, tmp150, D.42349, <variable>.SPS
	ldrb	r3, [ip, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r3, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.42348,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42348,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L809:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42348,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	PPSSPSCheckTmpId, .-PPSSPSCheckTmpId
	.align	2
	.global	PPSSPSCheck
	.type	PPSSPSCheck, %function
PPSSPSCheck:
	.fnstart
.LFB2008:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	vfmw_dprint_nothing	@
	movw	r2, #20692	@ tmp138,
	movw	ip, #13584	@ tmp137,
	ldr	r3, [r4, r2]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r1, #2208	@ tmp141,
	ldr	r0, [r4, ip]	@ <variable>.PPS, <variable>.PPS
	mla	r3, r1, r3, r0	@ pPPS, tmp141, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L815	@,
	movw	lr, #13580	@ tmp146,
	ldr	ip, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r2, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	mov	r1, #4000	@ tmp148,
	mla	r3, r1, ip, r2	@ tmp149, tmp148, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	lr, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.42330,
	ldmnefd	sp!, {r4, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42330,
	ldmfd	sp!, {r4, pc}	@
.L815:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42330,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	PPSSPSCheck, .-PPSSPSCheck
	.align	2
	.global	DumpList
	.type	DumpList, %function
DumpList:
	.fnstart
.LFB1988:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:g_PrintEnable	@ tmp141,
	movt	r1, #:upper16:g_PrintEnable	@ tmp141,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	tst	r3, #8192	@ g_PrintEnable,
	addne	r5, r0, #20480	@ ivtmp.3105, pH264Ctx,
	movne	r7, #0	@ j,
	addne	r5, r5, #244	@ ivtmp.3105, ivtmp.3105,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L818:
	ldr	r2, [r5, #0]	@ tmp146, <variable>.CurrSlice.listXsize
	cmp	r2, #0	@ tmp146,
	movne	r4, #0	@ i,
	beq	.L822	@,
.L819:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #0]	@ tmp145, <variable>.CurrSlice.listXsize
	add	r4, r4, #1	@ i, i,
	cmp	r0, r4	@ tmp145, i
	bhi	.L819	@,
.L822:
	add	r7, r7, #1	@ j, j,
	add	r5, r5, #4	@ ivtmp.3105, ivtmp.3105,
	cmp	r7, #2	@ j,
	bne	.L818	@,
	movw	r7, #20724	@ tmp147,
	ldr	ip, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	bne	.L840	@,
	movw	r7, #20728	@ tmp156,
	ldr	r0, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L843:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L830	@,
	add	r5, r6, #27136	@ ivtmp.3090, pH264Ctx,
	add	r4, r5, #32	@ ivtmp.3090, ivtmp.3090,
	mov	r5, #0	@ i.3111,
	b	.L835	@
.L841:
	cmp	r3, #2	@ <variable>.structure,
	beq	.L834	@,
	ldr	r3, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3111, i.3111,
	add	r4, r4, #4	@ ivtmp.3090, ivtmp.3090,
	cmp	r3, r5	@ <variable>.CurrSlice.listXsize, i.3111
	bls	.L830	@,
.L835:
	ldr	ip, [r4, #0]	@ tmp161, <variable>.pListX
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r3, #1	@ <variable>.structure,
	beq	.L834	@,
	bcs	.L841	@,
.L834:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3111, i.3111,
	add	r4, r4, #4	@ ivtmp.3090, ivtmp.3090,
	cmp	r3, r5	@ <variable>.CurrSlice.listXsize, i.3111
	bhi	.L835	@,
.L830:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L840:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L824	@,
	add	r4, r6, #26880	@ ivtmp.3095, pH264Ctx,
	mov	r5, #0	@ i.3109,
	add	r4, r4, #156	@ ivtmp.3095, ivtmp.3095,
	b	.L829	@
.L842:
	cmp	r3, #2	@ <variable>.structure,
	beq	.L828	@,
	ldr	r1, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3109, i.3109,
	add	r4, r4, #4	@ ivtmp.3095, ivtmp.3095,
	cmp	r1, r5	@ <variable>.CurrSlice.listXsize, i.3109
	bls	.L824	@,
.L829:
	ldr	lr, [r4, #0]	@ tmp152, <variable>.pListX
	ldrb	r3, [lr, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r3, #1	@ <variable>.structure,
	beq	.L828	@,
	bcs	.L842	@,
.L828:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r5, r5, #1	@ i.3109, i.3109,
	add	r4, r4, #4	@ ivtmp.3095, ivtmp.3095,
	cmp	r1, r5	@ <variable>.CurrSlice.listXsize, i.3109
	bhi	.L829	@,
.L824:
	movw	r7, #20728	@ tmp156,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, r7]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	b	.L843	@
	.fnend
	.size	DumpList, .-DumpList
	.align	2
	.global	IsRefListWrong
	.type	IsRefListWrong, %function
IsRefListWrong:
	.fnstart
.LFB2045:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r8, #20724	@ tmp143,
	ldr	r3, [r0, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L845	@,
	add	r5, r0, #26880	@ ivtmp.3153, pH264Ctx,
	mov	r6, #0	@ i.3157,
	add	r5, r5, #156	@ ivtmp.3153, ivtmp.3153,
	movw	r7, #52840	@ tmp167,
	b	.L847	@
.L854:
	ldr	ip, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	ip, #0	@ <variable>.pstDecodeFs,
	beq	.L846	@,
	ldr	r3, [r4, r8]	@ D.45372, <variable>.CurrSlice.listXsize
	cmp	r3, r6	@ D.45372, i.3157
	bls	.L853	@,
.L847:
	ldr	r1, [r5, #0]	@ tmp148, <variable>.pListX
	add	r6, r6, #1	@ i.3157, i.3157,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3153, ivtmp.3153,
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
	cmp	r3, #0	@ D.45372,
	beq	.L845	@,
	movw	r8, #20728	@ tmp153,
	ldr	r0, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L845	@,
	add	r6, r4, #27136	@ ivtmp.3148, pH264Ctx,
	movw	r7, #52840	@ tmp165,
	add	r5, r6, #32	@ ivtmp.3148, ivtmp.3148,
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
	add	r5, r5, #4	@ ivtmp.3148, ivtmp.3148,
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs.3160
	bne	.L855	@,
	b	.L846	@
	.fnend
	.size	IsRefListWrong, .-IsRefListWrong
	.align	2
	.global	WriteSliceMsg
	.type	WriteSliceMsg, %function
WriteSliceMsg:
	.fnstart
.LFB2004:
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
	add	r2, ip, #1	@ D.41951,,
	str	r2, [r5, r3]	@ D.41951, <variable>.SliceParaNum
	sub	r7, r0, #1	@ tmp202, <variable>.MaxSliceNum,
	movw	r0, #52760	@ tmp198,
	cmp	ip, r7	@, tmp202
	mul	r4, r1, ip	@ tmp199, tmp200,
	ldr	ip, [r5, r0]	@ D.41952, <variable>.DecSlicePara
	movcs	r3, #0	@ tmp207,
	mlacc	r2, r1, r2, ip	@ tmp206, tmp200, D.41951, D.41952
	add	r7, ip, r4	@ pCurrSlicePara, D.41952, tmp199
	strcs	r3, [r7, #4056]	@ tmp207, <variable>.pNextSlice
	strcc	r2, [r7, #4056]	@ tmp206, <variable>.pNextSlice
	ldr	r1, [r5, #368]	@ D.41963, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ i.3364, <variable>.nal_used_segment
	ldr	r0, [r1, #68]	@ i.3510, <variable>.nal_segment
	cmp	r3, #1	@ i.3364,
	cmpls	r3, r0	@, i.3364, i.3510
	bcs	.L859	@,
	add	r6, r3, #4	@ tmp215, i.3364,
	add	r2, r7, r6, asl #2	@, ivtmp.3356, pCurrSlicePara, tmp215,
.L860:
	rsb	r0, r3, r3, asl #3	@, tmp220, i.3364, i.3364,
	add	r3, r3, #1	@ i.3364, i.3364,
	mov	r6, r0, asl #2	@ tmp221, tmp220,
	add	r1, r6, r1	@ tmp222, tmp221, D.41963
	ldr	r1, [r1, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	str	r1, [r2, #0]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r1, r6, r1	@ tmp231, tmp221, <variable>.pCurrNal
	ldr	r1, [r1, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	str	r1, [r2, #-8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r0, r6, r1	@ tmp240, tmp221, <variable>.pCurrNal
	cmp	r3, #1	@ i.3364,
	movhi	r6, #0	@, tmp249
	movls	r6, #1	@, tmp249
	ldr	r1, [r0, #28]	@ <variable>.bytespos, <variable>.bytespos
	str	r1, [r2, #8]	@ <variable>.bytespos, <variable>.bytespos
	add	r2, r2, #4	@ ivtmp.3356, ivtmp.3356,
	ldr	r1, [r5, #368]	@ D.41963, <variable>.pCurrNal
	ldr	r0, [r1, #68]	@ i.3510, <variable>.nal_segment
	cmp	r0, r3	@ i.3510, i.3364
	movls	r6, #0	@, tmp249,
	cmp	r6, #0	@ tmp249,
	bne	.L860	@,
.L859:
	cmp	r0, #1	@ i.3510,
	bhi	.L861	@,
	add	r3, r0, #4	@ tmp250, i.3510,
	add	r1, r7, #24	@ D.48527, pCurrSlicePara,
	mov	r2, #0	@ tmp589,
	add	r0, r7, r3, asl #2	@, ivtmp.3349, pCurrSlicePara, tmp250,
	add	r3, r0, #4	@ ivtmp.3349, ivtmp.3349,
	rsb	r6, r0, r1	@ tmp602, ivtmp.3349, D.48527
	cmp	r3, r1	@ ivtmp.3349, D.48527
	sub	r6, r6, #4	@ tmp603, tmp602,
	ubfx	r6, r6, #2, #1	@ tmp604, tmp603,,
	str	r2, [r0, #0]	@ tmp589, <variable>.bitsoffset
	str	r2, [r0, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp589, <variable>.bytespos
	beq	.L861	@,
	cmp	r6, #0	@ tmp604,
	beq	.L862	@,
	str	r2, [r3, #0]	@ tmp589, <variable>.bitsoffset
	str	r2, [r3, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp589, <variable>.bytespos
	add	r3, r3, #4	@ ivtmp.3349, ivtmp.3349,
	cmp	r3, r1	@ ivtmp.3349, D.48527
	beq	.L861	@,
.L862:
	add	r0, r3, #4	@ tmp605, ivtmp.3349,
	str	r2, [r3, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp589, <variable>.bytespos
	str	r2, [r3, #4]	@ tmp589, <variable>.bitsoffset
	str	r2, [r3, #0]	@ tmp589, <variable>.bitsoffset
	add	r3, r0, #4	@ ivtmp.3349, tmp605,
	cmp	r3, r1	@ ivtmp.3349, D.48527
	str	r2, [r0, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp589, <variable>.bytespos
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
	add	r3, r1, #26	@ D.41977, tmp260,
	str	r3, [r7, #32]	@ D.41977, <variable>.SliceQPy
	bne	.L863	@,
	movw	r2, #50112	@ tmp264,
	ldr	r0, [r5, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r0, #428]	@ D.41977, <variable>.frame.MaxQp
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
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ temp.3371, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ temp.3371,
	beq	.L948	@,
	cmp	r3, #0	@ temp.3371,
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
	ldr	r4, [r5, r3]	@ temp.3528, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3528,
	beq	.L869	@,
	movw	r1, #27036	@ tmp317,
	ldr	r0, [r5, r1]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r0, #4]	@ temp.3505, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L870	@,
	tst	r4, #1	@ temp.3528,
	add	r3, r5, #26880	@ tmp325, pH264Ctx,
	add	r1, r3, #160	@ ivtmp.3343, tmp325,
	mov	r0, #0	@ i.3374,
	bne	.L872	@,
	ldr	ip, [r1, #0]	@ tmp624, <variable>.pListX
	add	r1, r3, #164	@ ivtmp.3343, tmp325,
	mov	r0, #1	@ i.3374,
	ldr	r3, [ip, #4]	@ temp.3505, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	bne	.L872	@,
.L870:
	movw	lr, #52840	@ tmp321,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L947	@,
	ldr	r2, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r4, [r2, #4]	@, <variable>.PhyFsID
	str	r4, [sp, #4]	@, %sfp
	b	.L874	@
.L875:
	ldr	r3, [r2], #4	@ tmp319, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3505, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L870	@,
	ldr	r3, [r1, #4]	@ tmp626, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3343, tmp600,
	ldr	r3, [r3, #4]	@ temp.3505, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	beq	.L870	@,
.L872:
	add	ip, r0, #1	@ tmp599, i.3374,
	mov	r2, r1	@ tmp600, ivtmp.3343
	cmp	ip, r4	@ tmp599, temp.3528
	add	r0, ip, #1	@ i.3374, tmp599,
	bcc	.L875	@,
.L869:
	mov	r0, #0	@,
	str	r0, [sp, #4]	@, %sfp
.L874:
	movw	r1, #20728	@ tmp326,
	ldr	r4, [r5, r1]	@ temp.3377, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3377,
	beq	.L876	@,
	movw	ip, #27168	@ tmp328,
	ldr	r3, [r5, ip]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3506, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	beq	.L877	@,
	tst	r4, #1	@ temp.3377,
	add	r3, r5, #27136	@ tmp336, pH264Ctx,
	add	r1, r3, #36	@ ivtmp.3338, tmp336,
	mov	r0, #0	@ i.3381,
	bne	.L879	@,
	ldr	r2, [r1, #0]	@ tmp620, <variable>.pListX
	add	r1, r3, #40	@ ivtmp.3338, tmp336,
	mov	r0, #1	@ i.3381,
	ldr	r3, [r2, #4]	@ temp.3506, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	bne	.L879	@,
	b	.L877	@
.L882:
	ldr	r3, [r2], #4	@ tmp330, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3506, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L877	@,
	ldr	r3, [r1, #4]	@ tmp622, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3338, tmp595,
	ldr	r3, [r3, #4]	@ temp.3506, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L877	@,
.L879:
	add	ip, r0, #1	@ tmp594, i.3381,
	mov	r2, r1	@ tmp595, ivtmp.3338
	cmp	r4, ip	@ temp.3377, tmp594
	add	r0, ip, #1	@ i.3381, tmp594,
	bhi	.L882	@,
.L876:
	mov	r0, #0	@,
	str	r0, [sp, #12]	@, %sfp
.L881:
	movw	r2, #49707	@ tmp337,
	ldrb	r8, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r8, #0	@ <variable>.CurrPic.structure,
	beq	.L883	@,
	movw	r9, #20724	@ tmp339,
	ldr	r3, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L885	@,
	add	r4, r5, #26880	@ ivtmp.3318, pH264Ctx,
	mov	r6, r7	@ ivtmp.3323, pCurrSlicePara
	add	r4, r4, #156	@ ivtmp.3318, ivtmp.3318,
	mov	r8, #0	@ i.3470,
	movw	sl, #52840	@ tmp586,
	b	.L901	@
.L899:
	strb	r3, [r6, #1630]	@ temp.3464, <variable>.btm_structure
	add	r8, r8, #1	@ i.3470, i.3470,
	ldr	ip, [r4, #0]	@ tmp471, <variable>.pListX
	ldrb	r0, [ip, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r6, #1631]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	r1, [r4, #0]	@ tmp474, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3318, ivtmp.3318,
	ldr	lr, [r1, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r6, #1656]	@ <variable>.poc, <variable>.btm_poc
	add	r6, r6, #36	@ ivtmp.3323, ivtmp.3323,
	ldr	r2, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3470
	bls	.L885	@,
.L901:
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
	ldreq	r0, [sp, #4]	@ ExistImgIdc_0.3360, %sfp
	beq	.L897	@,
	cmp	r0, #0	@ pstLogicFs.3441,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0.3360, <variable>.PhyFsID
.L897:
	str	r0, [r6, #1640]	@ ExistImgIdc_0.3360, <variable>.img_idc
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
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3464, <variable>.structure
	cmp	r3, #1	@ temp.3464,
	bne	.L899	@,
	strb	r3, [r6, #1628]	@ temp.3464, <variable>.top_structure
	add	r8, r8, #1	@ i.3470, i.3470,
	ldr	r3, [r4, #0]	@ tmp465, <variable>.pListX
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r2, [r6, #1629]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	ip, [r4, #0]	@ tmp468, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3318, ivtmp.3318,
	ldr	r0, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #1652]	@ <variable>.poc, <variable>.top_poc
	add	r6, r6, #36	@ ivtmp.3323, ivtmp.3323,
	ldr	r2, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3470
	bhi	.L901	@,
.L885:
	movw	r1, #20680	@ tmp478,
	ldrb	r3, [r5, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L949	@,
.L891:
	mov	r3, #0	@ ivtmp.3256,
.L908:
	add	r0, r5, r3	@ tmp530, pH264Ctx, ivtmp.3256
	add	r2, r3, #4	@ tmp590, ivtmp.3256,
	add	ip, r0, #26880	@ tmp532, tmp530,
	add	r1, r5, r2	@ tmp616, pH264Ctx, tmp590
	add	r0, r7, r3	@ tmp529, pCurrSlicePara, ivtmp.3256
	add	r1, r1, #26880	@ tmp617, tmp616,
	ldr	ip, [ip, #28]	@ tmp533, <variable>.APC.RefIdx
	add	r3, r2, #4	@ ivtmp.3256, tmp590,
	cmp	r3, #128	@ ivtmp.3256,
	add	r2, r7, r2	@ tmp615, pCurrSlicePara, tmp590
	str	ip, [r0, #3928]	@ tmp533, <variable>.Apc2RefIdx
	ldr	r1, [r1, #28]	@ tmp619, <variable>.APC.RefIdx
	str	r1, [r2, #3928]	@ tmp619, <variable>.Apc2RefIdx
	bne	.L908	@,
	movw	r2, #17590	@ tmp534,
	movw	r0, #17632	@ tmp537,
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ temp.3515, <variable>.CurrPPS.weighted_pred_flag
	movw	ip, #51652	@ tmp535,
	ldr	r2, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	movw	r3, #51656	@ tmp536,
	cmp	r1, #0	@ temp.3515,
	str	r1, [r5, ip]	@ temp.3515, <variable>.DecPicPara.weighted_pred_flag
	str	r2, [r5, r3]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.DecPicPara.weighted_bipred_idc
	beq	.L909	@,
	movw	ip, #20680	@ tmp539,
	ldrb	r3, [r5, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #0	@ <variable>.CurrSlice.slice_type,
	bne	.L909	@,
.L910:
	movw	r0, #20744	@ tmp545,
	movw	ip, #20748	@ tmp547,
	ldr	r4, [r5, r0]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.CurrSlice.luma_log2_weight_denom
	add	r1, r5, #20736	@ ivtmp.3235, pH264Ctx,
	add	r3, r1, #16	@ ivtmp.3235, ivtmp.3235,
	mov	r0, r7	@ ivtmp.3527, pCurrSlicePara
	mov	r2, r7	@ ivtmp.3239, ivtmp.3527
	mov	r1, #0	@ i,
	str	r4, [r7, #80]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r4, #20736	@ tmp574,
	ldr	ip, [r5, ip]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	str	ip, [r7, #84]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
.L911:
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
	add	r3, r3, #4	@ ivtmp.3235, ivtmp.3235,
	str	ip, [r2, #1112]	@ tmp555, <variable>.wp_offset_l0_v
	add	r2, r2, #4	@ ivtmp.3239, ivtmp.3239,
	ldr	ip, [r5, r4]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	ip, r1	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcs	.L911	@,
	movw	r3, #20680	@ tmp558,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L950	@,
.L868:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r0, #0	@ tmp572,
	ldr	ip, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r3, r1, #12672	@ tmp569,,
	add	r2, r3, #4	@ tmp569, tmp569,
	str	ip, [r5, r2, asl #2]	@ <variable>.pCurrNal, <variable>.pSliceNal
	str	r0, [r5, #368]	@ tmp572, <variable>.pCurrNal
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L863:
	movw	r1, #50112	@ tmp268,
	ldr	r2, [r5, r1]	@ temp.3369, <variable>.CurrPic.frame_store
	ldr	r0, [r2, #428]	@ <variable>.frame.MaxQp, <variable>.frame.MaxQp
	ldr	r1, [r2, #432]	@ <variable>.frame.MinQp, <variable>.frame.MinQp
	cmp	r0, r3	@ <variable>.frame.MaxQp, D.41977
	strge	r0, [r2, #428]	@, <variable>.frame.MaxQp, <variable>.frame.MaxQp
	strlt	r3, [r2, #428]	@, D.41977, <variable>.frame.MaxQp
	cmp	r1, r3	@ <variable>.frame.MinQp, D.41977
	strle	r1, [r2, #432]	@, <variable>.frame.MinQp, <variable>.frame.MinQp
	strgt	r3, [r2, #432]	@, D.41977, <variable>.frame.MinQp
	b	.L864	@
.L909:
	movw	r0, #17632	@ tmp541,
	ldr	r1, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	cmp	r1, #1	@ <variable>.CurrPPS.weighted_bipred_idc,
	bne	.L868	@,
	movw	r3, #20680	@ tmp543,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L868	@,
	b	.L910	@
.L883:
	movw	fp, #20724	@ tmp341,
	ldr	r1, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L886	@,
	add	r9, r5, #26880	@ ivtmp.3280, pH264Ctx,
	mov	r4, r7	@ ivtmp.3285, pCurrSlicePara
	add	r6, r9, #156	@ ivtmp.3280, ivtmp.3280,
	mov	sl, r8	@ tmp581, i.3372
	movw	r9, #52840	@ tmp579,
.L890:
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
	ldreq	r0, [sp, #4]	@ ExistImgIdc_0, %sfp
	beq	.L888	@,
	cmp	r0, #0	@ pstLogicFs.3386,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0, <variable>.PhyFsID
.L888:
	str	r0, [r4, #1640]	@ ExistImgIdc_0, <variable>.img_idc
	add	r8, r8, #1	@ i.3372, i.3372,
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
	add	r4, r4, #36	@ ivtmp.3285, ivtmp.3285,
	ldr	r0, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3372
	bhi	.L890	@,
.L886:
	movw	r1, #20680	@ tmp385,
	ldrb	r3, [r5, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L891	@,
	movw	fp, #20728	@ tmp387,
	ldr	ip, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L891	@,
	add	r6, r5, #27136	@ ivtmp.3262, pH264Ctx,
	add	sl, r7, #1632	@ ivtmp.3269, pCurrSlicePara,
	mov	r8, #0	@ i.3435,
	add	r6, r6, #32	@ ivtmp.3262, ivtmp.3262,
	add	r4, sl, #8	@ ivtmp.3269, ivtmp.3269,
	movw	r9, #52840	@ tmp575,
	mov	sl, r8	@ tmp577, i.3435
.L895:
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
	beq	.L893	@,
	cmp	r0, #0	@ pstLogicFs.3413,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1, <variable>.PhyFsID
.L893:
	str	r0, [r4, #0]	@ ExistImgIdc_1, <variable>.img_idc
	add	r8, r8, #1	@ i.3435, i.3435,
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
	add	r4, r4, #36	@ ivtmp.3269, ivtmp.3269,
	ldr	r0, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3435
	bhi	.L895	@,
	b	.L891	@
.L877:
	movw	lr, #52840	@ tmp332,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs.3378
	beq	.L947	@,
	ldr	r1, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r8, [r1, #4]	@, <variable>.PhyFsID
	str	r8, [sp, #12]	@, %sfp
	b	.L881	@
.L948:
	movw	r0, #17632	@ tmp295,
	ldr	ip, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	strb	ip, [r7, #4]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.weight_flag
	b	.L866	@
.L949:
	movw	r9, #20728	@ tmp480,
	ldr	r0, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L891	@,
	add	sl, r5, #27136	@ ivtmp.3298, pH264Ctx,
	add	r8, r7, #2800	@ ivtmp.3307, pCurrSlicePara,
	add	r4, sl, #32	@ ivtmp.3298, ivtmp.3298,
	add	r6, r8, #4	@ ivtmp.3307, ivtmp.3307,
	movw	sl, #52840	@ tmp583,
	mov	r8, #0	@ i.3466,
	b	.L907	@
.L905:
	strb	r3, [r6, #-22]	@ temp.3504, <variable>.btm_structure
	ldr	r2, [r4, #0]	@ tmp522, <variable>.pListX
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r6, #-21]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	ip, [r4, #0]	@ tmp525, <variable>.pListX
	ldr	lr, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r6, #4]	@ <variable>.poc, <variable>.btm_poc
.L906:
	ldr	r3, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r8, r8, #1	@ i.3466, i.3466,
	add	r4, r4, #4	@ ivtmp.3298, ivtmp.3298,
	add	r6, r6, #36	@ ivtmp.3307, ivtmp.3307,
	cmp	r3, r8	@ <variable>.CurrSlice.listXsize, i.3466
	bls	.L891	@,
.L907:
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
	ldreq	r0, [sp, #12]	@ ExistImgIdc_1.3361, %sfp
	beq	.L903	@,
	cmp	r0, #0	@ pstLogicFs.3481,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1.3361, <variable>.PhyFsID
.L903:
	str	r0, [r6, #-12]	@ ExistImgIdc_1.3361, <variable>.img_idc
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
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3504, <variable>.structure
	cmp	r3, #1	@ temp.3504,
	bne	.L905	@,
	strb	r3, [r6, #-24]	@ temp.3504, <variable>.top_structure
	ldr	r1, [r4, #0]	@ tmp516, <variable>.pListX
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r3, [r6, #-23]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	r2, [r4, #0]	@ tmp519, <variable>.pListX
	ldr	r0, [r2, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #0]	@ <variable>.poc, <variable>.top_poc
	b	.L906	@
.L950:
	add	r1, r5, #20992	@ ivtmp.3218, pH264Ctx,
	mov	r2, #0	@ i.3367,
	add	r3, r1, #144	@ ivtmp.3218, ivtmp.3218,
	movw	ip, #20740	@ tmp573,
.L912:
	ldr	r1, [r3, #0]	@ tmp561, <variable>.CurrSlice.wp_weight_l1_y
	add	r2, r2, #1	@ i.3367, i.3367,
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
	add	r3, r3, #4	@ ivtmp.3218, ivtmp.3218,
	str	r1, [r0, #1496]	@ tmp566, <variable>.wp_offset_l1_v
	add	r0, r0, #4	@ ivtmp.3527, ivtmp.3527,
	ldr	r1, [r5, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r1, r2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.3367
	bcs	.L912	@,
	b	.L868	@
.L947:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	vfmw_dprint_nothing	@
	.fnend
	.size	WriteSliceMsg, .-WriteSliceMsg
	.align	2
	.global	GetAPC
	.type	GetAPC, %function
GetAPC:
	.fnstart
.LFB1956:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	subs	r5, r1, #0	@ pFrameStore, pFrameStore
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	beq	.L962	@,
	cmp	r2, #1	@ structure,
	beq	.L955	@,
	cmp	r2, #2	@ structure,
	beq	.L976	@,
	ldr	r7, [r5, #452]	@ toppoc, <variable>.top_field.poc
	ldr	r8, [r5, #488]	@ bottompoc, <variable>.bottom_field.poc
.L957:
	movw	r3, #26900	@ tmp147,
	ldr	r0, [r4, r3]	@ D.39098, <variable>.APC.size
	cmp	r0, #0	@ D.39098,
	beq	.L958	@,
	movw	r1, #26644	@ tmp148,
	ldr	r6, [r4, r1]	@ <variable>.APC.is_used, <variable>.APC.is_used
	cmp	r6, #0	@ <variable>.APC.is_used,
	beq	.L960	@,
	tst	r0, #1	@ D.39098,
	add	r3, r4, #26624	@ tmp183, pH264Ctx,
	add	r2, r3, #24	@ ivtmp.3560, tmp183,
	mov	r6, #0	@ i,
	bne	.L961	@,
	ldr	r1, [r2, #0]	@ D.39079, <variable>.APC.is_used
	mov	r6, #1	@ i,
	add	r2, r3, #28	@ ivtmp.3560, tmp183,
	cmp	r1, #0	@ D.39079,
	bne	.L961	@,
	b	.L960	@
.L965:
	ldr	ip, [r3], #4	@ D.39079, <variable>.APC.is_used
	cmp	ip, #0	@ D.39079,
	beq	.L960	@,
	ldr	ip, [r2, #4]	@ D.39079, <variable>.APC.is_used
	add	r6, r6, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.3560, tmp189,
	cmp	ip, #0	@ D.39079,
	beq	.L960	@,
.L961:
	add	r6, r6, #1	@ i, i,
	mov	r3, r2	@ tmp189, ivtmp.3560
	cmp	r6, r0	@ i, D.39098
	bcc	.L965	@,
.L958:
	mvn	r0, #0	@ D.39077,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L976:
	ldr	r7, [r5, #488]	@ toppoc, <variable>.bottom_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L957	@
.L960:
	movw	r2, #52840	@ tmp150,
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L962	@,
	ldr	lr, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	lr, #0	@ <variable>.pstDecodeFs,
	beq	.L962	@,
	add	r2, r6, #6656	@ tmp155, i,
	movw	sl, #26904	@ tmp181,
	add	lr, r4, r2, asl #2	@, tmp158, pH264Ctx, tmp155,
	ldr	r2, [r4, sl]	@ D.39094, <variable>.APC.used_size
	mov	sl, #1	@ tmp160,
	str	sl, [lr, #20]	@ tmp160, <variable>.APC.is_used
	mov	ip, lr	@ tmp179, tmp158
	ldr	r0, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #15	@ D.39094,
	addls	r2, r2, #1	@ iftmp.562, D.39094,
	movhi	r2, #16	@ iftmp.562,
	ldr	lr, [r0, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	movw	r0, #26904	@ tmp182,
	str	r2, [r4, r0]	@ iftmp.562, <variable>.APC.used_size
	str	r7, [ip, #148]	@ toppoc, <variable>.APC.poc
	str	r8, [ip, #212]	@ bottompoc, <variable>.APC.poc
	str	lr, [ip, #84]	@ <variable>.PhyFsID, <variable>.APC.idc
	bl	vfmw_dprint_nothing	@
	str	r6, [r5, #552]	@ i, <variable>.apc_idc
	mov	r0, #0	@ D.39077,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L955:
	ldr	r7, [r5, #452]	@ toppoc, <variable>.top_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L957	@
.L962:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39077,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	GetAPC, .-GetAPC
	.align	2
	.global	ExchangePts
	.type	ExchangePts, %function
ExchangePts:
	.fnstart
.LFB1949:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrd	r2, [r1, #16]	@ <variable>.fs_image.PTS, pFrameStore,
	mov	fp, r1	@ pFrameStore, pFrameStore
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp144,
	cmp	r3, r1	@ <variable>.fs_image.PTS, tmp144
	cmpeq	r2, r0	@ <variable>.fs_image.PTS, tmp144
	.pad #20
	sub	sp, sp, #20	@,,
	beq	.L983	@,
	movw	sl, #26628	@ tmp145,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L983	@,
	add	r4, r8, #26368	@ ivtmp.3592, pH264Ctx,
	mvn	r6, #1	@ MinPts.3598,
	add	r4, r4, #64	@ ivtmp.3592, ivtmp.3592,
	mvn	r7, #0	@ MinPts.3598,
	mov	r5, #0	@ i,
	movw	r9, #52840	@ tmp168,
	mvn	r0, #0	@,
	str	r0, [sp, #12]	@, %sfp
.L982:
	ldr	r3, [r4, #0]	@ D.38734, <variable>.DPB.fs
	cmp	r3, #0	@ D.38734,
	beq	.L979	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r8, r9]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L979	@,
	ldrsb	r1, [r0, #1]	@ D.38742, <variable>.s32DispState
	cmp	r1, #3	@ D.38742,
	cmpne	r1, #0	@, D.38742,
	beq	.L979	@,
	ldr	r3, [r4, #0]	@ tmp160, <variable>.DPB.fs
	ldrd	r2, [r3, #16]	@ MinPts, tmp160,
	cmp	r3, r7	@ MinPts, MinPts.3598
	cmpeq	r2, r6	@ MinPts, MinPts.3598
	strcc	r5, [sp, #12]	@ i, %sfp
	bcc	.L980	@,
.L979:
	mov	r2, r6	@ MinPts, MinPts.3598
	mov	r3, r7	@ MinPts, MinPts.3598
.L980:
	ldr	ip, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	r5, r5, #1	@ i, i,
	mov	r6, r2	@ MinPts.3598, MinPts
	mov	r7, r3	@ MinPts.3598, MinPts
	cmp	r5, ip	@ i, <variable>.DPB.used_size
	add	r4, r4, #4	@ ivtmp.3592, ivtmp.3592,
	bcc	.L982	@,
	ldr	r0, [sp, #12]	@, %sfp
	cmn	r0, #1	@,
	beq	.L983	@,
	ldrd	r0, [fp, #16]	@ <variable>.fs_image.PTS, pFrameStore,
	cmp	r3, r1	@ MinPts, <variable>.fs_image.PTS
	cmpeq	r2, r0	@ MinPts, <variable>.fs_image.PTS
	bcc	.L984	@,
.L983:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L984:
	str	r2, [sp, #8]	@,
	str	r3, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r4, [sp, #12]	@, %sfp
	add	r5, r4, #6592	@ tmp164,,
	add	r3, r5, #16	@ tmp164, tmp164,
	ldrd	r4, [fp, #16]	@ <variable>.fs_image.PTS, pFrameStore,
	ldr	r2, [r8, r3, asl #2]	@ tmp166, <variable>.DPB.fs
	strd	r4, [r2, #16]	@ <variable>.fs_image.PTS, tmp166,
	ldr	r2, [sp, #8]	@,
	ldr	r3, [sp, #4]	@,
	strd	r2, [fp, #16]	@ MinPts, pFrameStore,
	b	.L983	@
	.fnend
	.size	ExchangePts, .-ExchangePts
	.align	2
	.global	CheckFrameStore
	.type	CheckFrameStore, %function
CheckFrameStore:
	.fnstart
.LFB1948:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #51332	@ tmp140,
	mov	r4, r1	@ pFrameStore, pFrameStore
	ldr	r3, [r5, r0]	@ <variable>.IDRFound, <variable>.IDRFound
	cmp	r3, #0	@ <variable>.IDRFound,
	bne	.L986	@,
	ldr	r1, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r1, #1	@ <variable>.eFoState,
	beq	.L987	@,
	movw	ip, #52768	@ tmp143,
	ldr	r2, [r5, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r2, #0	@ <variable>.OldDecMode,
	beq	.L1005	@,
.L987:
	movw	r1, #51332	@ tmp147,
	mov	lr, #1	@ tmp148,
	str	lr, [r5, r1]	@ tmp148, <variable>.IDRFound
.L986:
	movw	r2, #52840	@ tmp149,
	ldr	r1, [r4, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L989	@,
	ldrsb	ip, [r0, #1]	@ D.38680, <variable>.s32DispState
	cmp	ip, #3	@ D.38680,
	cmpne	ip, #0	@, D.38680,
	beq	.L989	@,
	ldrb	r1, [r4, #1]	@ zero_extendqisi2	@ D.38693, <variable>.is_used
	cmp	r1, #0	@ D.38693,
	beq	.L1004	@,
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	lr, #1	@ <variable>.non_existing,
	beq	.L1004	@,
	ldr	lr, [r4, #0]	@ tmp166,* pFrameStore
	movw	ip, #:lower16:50332416	@ tmp167,
	movt	ip, #:upper16:50332416	@ tmp167,
	bic	r3, lr, #16711680	@ tmp164, tmp166,
	bic	r2, r3, #255	@ tmp164, tmp164,
	cmp	r2, ip	@ tmp164, tmp167
	beq	.L1004	@,
	cmp	r1, #1	@ D.38693,
	beq	.L1006	@,
	cmp	r1, #2	@ D.38693,
	beq	.L1007	@,
.L996:
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r0, #188]	@ <variable>.stDispImg.error_level, <variable>.stDispImg.error_level
	ldr	r3, [lr, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	ip, r3	@ <variable>.stDispImg.error_level, <variable>.s32OutErrThr
	movls	r0, #0	@ D.38674,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38674,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1007:
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	tst	r2, #2	@ <variable>.mode_skip_flag,
	beq	.L996	@,
	bl	vfmw_dprint_nothing	@
	b	.L1002	@
.L989:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #528]	@ <variable>.eFoState, <variable>.eFoState
	mvn	r0, #2	@ D.38674,
	cmp	r3, #1	@ <variable>.eFoState,
	moveq	r3, #2	@ tmp162,
	streq	r3, [r4, #528]	@ tmp162, <variable>.eFoState
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1006:
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	tst	r1, #1	@ <variable>.mode_skip_flag,
	beq	.L996	@,
.L1004:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38674,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1005:
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	bne	.L987	@,
.L1002:
	mvn	r0, #0	@ D.38674,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	CheckFrameStore, .-CheckFrameStore
	.align	2
	.global	H264DEC_RecycleImage
	.type	H264DEC_RecycleImage, %function
H264DEC_RecycleImage:
	.fnstart
.LFB2048:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ PicID, PicID
	movw	r6, #52840	@ tmp143,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, r5	@, PicID
	bl	FSP_GetLogicFs	@
	subs	r7, r0, #0	@ pstLogicFs,
	bne	.L1016	@,
.L1009:
	mvn	r0, #0	@ D.45629,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1016:
	ldrsb	r3, [r7, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r3, #0	@ <variable>.s32DispState,
	beq	.L1009	@,
	ldr	r1, [r7, #200]	@ D.45631, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ D.45631,
	beq	.L1010	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp148,
	str	r0, [r7, #200]	@ tmp148, <variable>.stDispImg.p_usrdat
.L1010:
	ldr	r1, [r7, #204]	@ temp.3658, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3658,
	beq	.L1011	@,
	movw	r2, #52840	@ tmp149,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp151,
	str	r1, [r7, #204]	@ tmp151, <variable>.stDispImg.p_usrdat
.L1011:
	ldr	r1, [r7, #208]	@ temp.3660, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3660,
	beq	.L1012	@,
	movw	lr, #52840	@ tmp152,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp154,
	str	ip, [r7, #208]	@ tmp154, <variable>.stDispImg.p_usrdat
.L1012:
	ldr	r1, [r7, #212]	@ temp.3654, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3654,
	beq	.L1013	@,
	movw	r2, #52840	@ tmp155,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp157,
	str	r3, [r7, #212]	@ tmp157, <variable>.stDispImg.p_usrdat
.L1013:
	movw	ip, #52840	@ tmp158,
	mov	r1, r5	@, PicID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.45629,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	H264DEC_RecycleImage, .-H264DEC_RecycleImage
	.align	2
	.global	u_1
	.type	u_1, %function
u_1:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r0, #13504	@, pH264Ctx,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r0, r1, #24	@,,
	mov	r1, #1	@,
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ D.37939, <variable>.pCurrNal
	mov	r5, r0	@ D.37938,
	ldr	r0, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r2, r0, #1	@ tmp141, <variable>.nal_bitoffset,
	str	r2, [r3, #64]	@ tmp141, <variable>.nal_bitoffset
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, D.37938
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	u_1, .-u_1
	.align	2
	.global	u_v
	.type	u_v, %function
u_v:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r5, r1	@ LenInBits, LenInBits
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ D.37928, <variable>.pCurrNal
	ldr	r2, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, r2, r5	@ tmp142, <variable>.nal_bitoffset, LenInBits
	str	r5, [r3, #64]	@ tmp142, <variable>.nal_bitoffset
	mov	r6, r0	@ INFO,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, INFO
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	u_v, .-u_v
	.align	2
	.global	H264_DecPicTimingSEI
	.type	H264_DecPicTimingSEI, %function
H264_DecPicTimingSEI:
	.fnstart
.LFB2033:
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
	mla	r3, r1, r0, r4	@ pSPS.3738, tmp154, <variable>.CurrSPS.seq_parameter_set_id, pSPS
	ldrb	r2, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	movne	r4, r3	@ pSPS, pSPS.3738
	bne	.L1027	@,
	movw	r2, #13572	@ tmp156,
	ldr	ip, [r5, r2]	@ D.44540, <variable>.MaxSpsNum
	cmp	ip, #0	@ D.44540,
	ble	.L1023	@,
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L1024	@,
	tst	ip, #1	@ D.44540,
	add	r3, r4, #4000	@ ivtmp.3734, pSPS,
	bne	.L1026	@,
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ D.44537, <variable>.is_valid
	mov	r4, r3	@ pSPS, ivtmp.3734
	mov	r2, #1	@ i,
	add	r3, r3, #4000	@ ivtmp.3734, ivtmp.3734,
	cmp	r0, #0	@ D.44537,
	beq	.L1026	@,
	b	.L1024	@
.L1028:
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ D.44537, <variable>.is_valid
	cmp	r0, #0	@ D.44537,
	bne	.L1024	@,
	ldrb	r0, [r3, #4023]	@ zero_extendqisi2	@ D.44537, <variable>.is_valid
	mov	r4, r1	@ pSPS, tmp177
	add	r3, r3, #8000	@ ivtmp.3734, ivtmp.3734,
	cmp	r0, #0	@ D.44537,
	bne	.L1024	@,
.L1026:
	add	r1, r2, #1	@ tmp178, i,
	mov	r4, r3	@ pSPS, ivtmp.3734
	cmp	ip, r1	@ D.44540, tmp178
	add	r2, r1, #1	@ i, tmp178,
	add	r1, r3, #4000	@ tmp177, ivtmp.3734,
	bgt	.L1028	@,
.L1023:
	bl	vfmw_dprint_nothing	@
	mvn	r3, #0	@ D.44543,
.L1029:
	mov	r0, r3	@, D.44543
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1024:
	cmp	r4, #0	@ pSPS,
	beq	.L1023	@,
.L1027:
	ldrb	ip, [r4, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_parameters_present_flag,
	beq	.L1030	@,
	ldrb	r3, [r4, #35]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag, <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag
	cmp	r3, #0	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag,
	beq	.L1045	@,
	ldr	lr, [r4, #388]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r6, [r4, #392]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, lr, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r6, #1	@ dpb_output_len, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1,
.L1033:
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
.L1030:
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.pic_struct_present_flag, <variable>.vui_seq_parameters.pic_struct_present_flag
	cmp	r3, #0	@ <variable>.vui_seq_parameters.pic_struct_present_flag,
	beq	.L1029	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	bl	u_v	@
	mov	r3, #0	@ D.44543,
	movw	r2, #26420	@ tmp171,
	strb	r0, [r5, r2]	@, <variable>.PicTimingSEI.pic_struct
	mov	r0, r3	@, D.44543
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1045:
	ldrb	r2, [r4, #38]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag, <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag,
	beq	.L1030	@,
	ldr	r1, [r4, #700]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r0, [r4, #704]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r1, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r0, #1	@ dpb_output_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1,
	b	.L1033	@
	.fnend
	.size	H264_DecPicTimingSEI, .-H264_DecPicTimingSEI
	.align	2
	.global	GetBackPicFromVOQueue
	.type	GetBackPicFromVOQueue, %function
GetBackPicFromVOQueue:
	.fnstart
.LFB1993:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #52840	@ tmp146,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L1064	@,
.L1047:
	movw	sl, #51316	@ tmp149,
	ldr	r0, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r0, #0	@ <variable>.TotalFsNum,
	beq	.L1048	@,
	add	r4, r6, #27136	@ ivtmp.3774, pH264Ctx,
	mov	r7, #0	@ i,
	add	r4, r4, #169	@ ivtmp.3774, ivtmp.3774,
	mov	r5, r7	@ tmp174, i
	movw	r8, #52840	@ tmp175,
.L1053:
	ldr	r1, [r4, #199]	@ D.40894, <variable>.fs_image.p_usrdat
	add	r7, r7, #1	@ i, i,
	strb	r5, [r4, #0]	@ tmp174, <variable>.is_used
	cmp	r1, #0	@ D.40894,
	strb	r5, [r4, #1]	@ tmp174, <variable>.is_reference
	beq	.L1049	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #199]	@ tmp174, <variable>.fs_image.p_usrdat
.L1049:
	ldr	r1, [r4, #203]	@ temp.3787, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3787,
	beq	.L1050	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #203]	@ tmp174, <variable>.fs_image.p_usrdat
.L1050:
	ldr	r1, [r4, #207]	@ temp.3789, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3789,
	beq	.L1051	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #207]	@ tmp174, <variable>.fs_image.p_usrdat
.L1051:
	ldr	r1, [r4, #211]	@ temp.3782, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3782,
	beq	.L1052	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #211]	@ tmp174, <variable>.fs_image.p_usrdat
.L1052:
	ldr	r1, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r4, r4, #560	@ ivtmp.3774, ivtmp.3774,
	cmp	r1, r7	@ <variable>.TotalFsNum, i
	bhi	.L1053	@,
.L1048:
	movw	r2, #51320	@ tmp170,
	ldr	ip, [r6, r2]	@ D.40898, <variable>.TotalPmvNum
	cmp	ip, #0	@ D.40898,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r6, r6, #51200	@ tmp171, pH264Ctx,
	mov	r2, #1	@ i.3784,
	add	r3, r6, #48	@ ivtmp.3769, tmp171,
	cmp	r2, ip	@ i.3784, D.40898
	sub	lr, ip, #1	@ tmp177, D.40898,
	mov	r0, #0	@ tmp173,
	add	r1, r6, #52	@ ivtmp.3769, tmp171,
	str	r0, [r3, #0]	@ tmp173, <variable>.PmvStoreUsedFlag
	and	r3, lr, r2	@ tmp179, tmp177,
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r3, #0	@ tmp179,
	beq	.L1055	@,
	mov	r2, #2	@ i.3784,
	cmp	r2, ip	@ i.3784, D.40898
	str	r0, [r1, #0]	@ tmp173, <variable>.PmvStoreUsedFlag
	add	r1, r6, #56	@ ivtmp.3769, tmp171,
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1055:
	add	r2, r2, #2	@ i.3784, i.3784,
	mov	lr, r1	@ tmp181, ivtmp.3769
	cmp	r2, ip	@ i.3784, D.40898
	str	r0, [lr], #4	@ tmp173, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp173, <variable>.PmvStoreUsedFlag
	add	r1, lr, #4	@ ivtmp.3769, tmp181,
	bcc	.L1055	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1064:
	add	r0, r6, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	b	.L1047	@
	.fnend
	.size	GetBackPicFromVOQueue, .-GetBackPicFromVOQueue
	.align	2
	.global	ReleaseNAL
	.type	ReleaseNAL, %function
ReleaseNAL:
	.fnstart
.LFB1967:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r1, #0	@ pNalu, pNalu
	mov	r6, r0	@ ChanID, ChanID
	beq	.L1070	@,
	ldr	r3, [r4, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	mov	r5, #0	@ tmp135,
	strb	r5, [r4, #1]	@ tmp135, <variable>.is_valid
	cmp	r3, r5	@ <variable>.streamBuffer,
	strb	r5, [r4, #3]	@ tmp135, <variable>.nal_integ
	beq	.L1067	@,
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	bl	vfmw_dprint_nothing	@
	str	r5, [r4, #12]	@ tmp135, <variable>.bitstream_length
	str	r5, [r4, #8]	@ tmp135, <variable>.streamBuffer
	str	r5, [r4, #24]	@ tmp135, <variable>.bitsoffset
.L1067:
	ldr	r0, [r4, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r0, #0	@ <variable>.streamBuffer,
	beq	.L1068	@,
	ldr	r1, [r4, #60]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #0	@ tmp146,
	str	r1, [r4, #40]	@ tmp146, <variable>.bitstream_length
	str	r1, [r4, #36]	@ tmp146, <variable>.streamBuffer
	str	r1, [r4, #52]	@ tmp146, <variable>.bitsoffset
.L1068:
	mov	r2, #0	@ tmp149,
	str	r2, [r4, #68]	@ tmp149, <variable>.nal_segment
	strb	r2, [r4, #0]	@ tmp149, <variable>.nal_used_segment
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1070:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	ReleaseNAL, .-ReleaseNAL
	.align	2
	.global	ClearAllSlice
	.type	ClearAllSlice, %function
ClearAllSlice:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	add	r4, r0, #50688	@ ivtmp.3852, pH264Ctx,
	add	sl, r0, #51200	@ D.49039, pH264Ctx,
	add	r4, r4, #16	@ ivtmp.3852, ivtmp.3852,
	add	sl, sl, #48	@ D.49039, D.49039,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r8, #52840	@ tmp148,
	mov	r7, #0	@ tmp149,
.L1073:
	ldr	r1, [r4, #0]	@ D.37981, <variable>.pSliceNal
	add	r5, r4, #4	@ tmp150, ivtmp.3852,
	cmp	r1, #0	@ D.37981,
	beq	.L1072	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #0]	@ tmp149, <variable>.pSliceNal
.L1072:
	ldr	r1, [r4, #4]	@ D.37981, <variable>.pSliceNal
	cmp	r1, #0	@ D.37981,
	beq	.L1076	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #4]	@ tmp149, <variable>.pSliceNal
.L1076:
	add	r4, r5, #4	@ ivtmp.3852, tmp150,
	cmp	r4, sl	@ ivtmp.3852, D.49039
	bne	.L1073	@,
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
.LFB1925:
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
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldrb	r3, [r0, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r7, #52840	@ tmp147,
	cmp	r3, #1	@ <variable>.is_valid,
	beq	.L1094	@,
.L1087:
	mov	r3, #1	@ i,
	add	r2, r6, #96	@ ivtmp.3910, pH264Ctx,
	b	.L1084	@
.L1083:
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	beq	.L1095	@,
.L1089:
	add	r3, r5, #1	@ i, tmp148,
	add	r2, r4, #96	@ ivtmp.3910, tmp149,
	cmp	r3, #137	@ i,
	beq	.L1096	@,
.L1084:
	add	r4, r2, #96	@ tmp149, ivtmp.3910,
	ldrb	r2, [r2, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r5, r3, #1	@ tmp148, i,
	cmp	r2, #1	@ <variable>.is_valid,
	bne	.L1083	@,
	add	ip, r3, r3, asl #1	@, tmp142, i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	r1, r6, ip, asl #5	@, tmp144, pH264Ctx, tmp142,
	add	r1, r1, #376	@, tmp144,
	bl	ReleaseNAL	@
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	bne	.L1089	@,
.L1095:
	add	r3, r5, r5, asl #1	@, tmp166, tmp148, tmp148,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	lr, r6, r3, asl #5	@, tmp168, pH264Ctx, tmp166,
	add	r1, lr, #376	@, tmp168,
	bl	ReleaseNAL	@
	add	r3, r5, #1	@ i, tmp148,
	cmp	r3, #137	@ i,
	add	r2, r4, #96	@ ivtmp.3910, tmp149,
	bne	.L1084	@,
.L1096:
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1094:
	ldr	r0, [r0, r7]	@, <variable>.ChanID
	add	r1, r6, #376	@, pH264Ctx,
	bl	ReleaseNAL	@
	b	.L1087	@
	.fnend
	.size	ClearAllNal, .-ClearAllNal
	.align	2
	.global	ClearCurrNal
	.type	ClearCurrNal, %function
ClearCurrNal:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r1, [r0, #368]	@ D.37946, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ D.37946,
	beq	.L1098	@,
	movw	r2, #52840	@ tmp136,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp138,
	str	r3, [r4, #368]	@ tmp138, <variable>.pCurrNal
.L1098:
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ClearCurrNal, .-ClearCurrNal
	.align	2
	.global	ClearCurrSlice
	.type	ClearCurrSlice, %function
ClearCurrSlice:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	r3, #52796	@ tmp135,
	ldr	r1, [r4, r3]	@ <variable>.TotalSlice, <variable>.TotalSlice
	mov	r0, #0	@,
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
.LFB1969:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #20680	@ tmp157,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L1105	@,
	movcc	r8, #1	@ i_list_cnt,
	bcs	.L1141	@,
.L1108:
	add	r6, r3, #20480	@ ivtmp.4006, pH264Ctx,
	add	r7, r3, #26880	@ ivtmp.4009, pH264Ctx,
	mov	r9, #0	@ pRepairPic.4017,
	add	r6, r6, #244	@ ivtmp.4006, ivtmp.4006,
	add	r7, r7, #156	@ ivtmp.4009, ivtmp.4009,
	mov	r5, r9	@ i_list, pRepairPic.4017
	mov	fp, #1	@ tmp193,
	movw	sl, #50112	@ tmp194,
.L1122:
	ldr	r4, [r6, #0]	@ temp.4012, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.4012,
	beq	.L1109	@,
	ldr	r1, [r7, #0]	@ pRepairPic.4018, <variable>.pListX
	cmp	r1, #0	@ pRepairPic.4018,
	movne	ip, r1	@ pRepairPic, pRepairPic.4018
	bne	.L1111	@,
	add	ip, r5, r5, asl #5	@, tmp161, i_list, i_list,
	tst	r4, #1	@ temp.4012,
	mov	r0, r1	@ i, pRepairPic.4018
	add	r2, r3, ip, asl #2	@, tmp165, pH264Ctx, tmp161,
	add	ip, r2, #26880	@ ivtmp.4003, tmp165,
	add	r2, ip, #156	@ ivtmp.4003, ivtmp.4003,
	bne	.L1112	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	mov	r0, #1	@ i,
	cmp	ip, #0	@ pRepairPic,
	beq	.L1112	@,
	b	.L1111	@
.L1114:
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1111	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1111	@,
.L1112:
	add	r0, r0, #1	@ tmp204, i,
	cmp	r4, r0	@ temp.4012, tmp204
	add	r0, r0, #1	@ i, tmp204,
	bhi	.L1114	@,
	mov	ip, r9	@ pRepairPic, pRepairPic.4017
	mov	r2, #1	@ prephitmp.3973,
.L1113:
	cmp	ip, #0	@ pRepairPic,
	orreq	r2, r2, #1	@,, tmp170, prephitmp.3973
	cmp	r2, #0	@ tmp170,
	beq	.L1115	@,
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1139	@,
	ldr	r0, [r3, sl]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	ip, r0, #400	@ pRepairPic, <variable>.CurrPic.frame_store,
.L1115:
	add	r2, r5, r5, asl #5	@, tmp177, i_list, i_list,
	tst	r4, #1	@ temp.4012,
	mov	r0, #0	@ i.4013,
	add	r2, r3, r2, asl #2	@, tmp181, pH264Ctx, tmp177,
	add	r2, r2, #26880	@ ivtmp.3991, tmp181,
	add	r2, r2, #160	@ ivtmp.3991, ivtmp.3991,
	bne	.L1119	@,
	cmp	r1, #0	@ pRepairPic.4018,
	mov	r0, #1	@ i.4013,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.4012, i.4013
	add	r2, r2, #4	@ ivtmp.3991, ivtmp.3991,
	ldrhi	r1, [r2, #-4]	@ pRepairPic.4018, <variable>.pListX
	bhi	.L1119	@,
	b	.L1118	@
.L1128:
	mov	r2, r1	@ ivtmp.3991, tmp200
	add	r0, r0, #1	@ i.4013, tmp199,
	ldr	r1, [r2], #4	@ pRepairPic.4018, <variable>.pListX
.L1119:
	add	r0, r0, #1	@ tmp199, i.4013,
	cmp	r1, #0	@ pRepairPic.4018,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.4012, tmp199
	add	r1, r2, #4	@ tmp200, ivtmp.3991,
	bls	.L1118	@,
	ldr	r2, [r1, #-4]	@ pRepairPic.4018, <variable>.pListX
	cmp	r2, #0	@ pRepairPic.4018,
	streq	ip, [r1, #-4]	@ pRepairPic, <variable>.pListX
	b	.L1128	@
.L1109:
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1139	@,
	ldr	r2, [r3, sl]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, r9	@ pRepairPic, pRepairPic.4017
	str	fp, [r6, #0]	@ tmp193, <variable>.CurrSlice.listXsize
	add	r0, r2, #400	@ tmp187, <variable>.CurrPic.frame_store,
	str	r0, [r7, #0]	@ tmp187, <variable>.pListX
.L1118:
	add	r5, r5, #1	@ i_list, i_list,
	add	r6, r6, #4	@ ivtmp.4006, ivtmp.4006,
	cmp	r5, r8	@ i_list, i_list_cnt
	add	r7, r7, #132	@ ivtmp.4009, ivtmp.4009,
	bcs	.L1106	@,
	mov	r9, ip	@ pRepairPic.4017, pRepairPic
	b	.L1122	@
.L1111:
	mov	r2, #0	@ prephitmp.3973,
	b	.L1113	@
.L1141:
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L1106	@,
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.39937,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1106:
	mov	r0, #0	@ D.39937,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1139:
	mov	r0, r3	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.39937,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1105:
	mov	r8, #2	@ i_list_cnt,
	b	.L1108	@
	.fnend
	.size	RepairList, .-RepairList
	.align	2
	.global	CombinePacket
	.type	CombinePacket, %function
CombinePacket:
	.fnstart
.LFB2040:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r3, [r0, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r3, #4096	@ <variable>.bitstream_length,
	ldmcsfd	sp!, {r4, r5, r6, pc}	@
	bl	vfmw_dprint_nothing	@
	mov	r5, #0	@ tmp154,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #368]	@ temp.4044, <variable>.pCurrNal
	ldr	r3, [r2, #12]	@ temp.4045, <variable>.bitstream_length
	ldr	r6, [r2, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	ldr	r1, [r2, #8]	@, <variable>.streamBuffer
	rsb	r0, r3, r6	@, temp.4045, <variable>.streamBuffer
	mov	r2, r3	@, temp.4045
	bl	memcpy	@
	ldr	ip, [r4, #368]	@ temp.4046, <variable>.pCurrNal
	ldr	r0, [ip, #60]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r6, [ip, #32]	@ StreamId, <variable>.StreamID
	str	r0, [ip, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r1, #24]	@ tmp154, <variable>.bitsoffset
	ldr	ip, [r4, #368]	@ temp.4048, <variable>.pCurrNal
	ldr	r2, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r3, [ip, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	rsb	r0, r2, r3	@ tmp158, <variable>.bitstream_length, <variable>.streamBuffer
	str	r0, [ip, #8]	@ tmp158, <variable>.streamBuffer
	ldr	ip, [r4, #368]	@ temp.4053, <variable>.pCurrNal
	ldr	r3, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r1, [ip, #44]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	rsb	r2, r3, r1	@ tmp161, <variable>.bitstream_length, <variable>.stream_phy_addr
	str	r2, [ip, #16]	@ tmp161, <variable>.stream_phy_addr
	ldr	ip, [r4, #368]	@ temp.4055, <variable>.pCurrNal
	ldr	r0, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r3, [ip, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r2, r0, r3	@ tmp164, <variable>.bitstream_length, <variable>.bitstream_length
	str	r2, [ip, #12]	@ tmp164, <variable>.bitstream_length
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r0, #1	@ tmp166,
	str	r0, [r1, #68]	@ tmp166, <variable>.nal_segment
	bl	vfmw_dprint_nothing	@
	movw	r3, #52840	@ tmp167,
	mov	r1, r6	@, StreamId
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [ip, #36]	@ tmp154, <variable>.streamBuffer
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r2, #52]	@ tmp154, <variable>.bitsoffset
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r1, #40]	@ tmp154, <variable>.bitstream_length
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	CombinePacket, .-CombinePacket
	.align	2
	.global	FindZeroBitsInSeg
	.type	FindZeroBitsInSeg, %function
FindZeroBitsInSeg:
	.fnstart
.LFB2038:
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
	ble	.L1147	@,
	movw	r5, #:lower16:.LANCHOR1	@ tmp192,
	movt	r5, #:upper16:.LANCHOR1	@ tmp192,
	mov	r7, r1	@ ivtmp.4111, len
	mov	r4, #0	@ zero_byte,
	mov	r9, r5	@ tmp193, tmp192
.L1151:
	cmp	r7, #64	@ ivtmp.4111,
	movcc	r6, r7	@ ThisRoundSize, ivtmp.4111
	movcs	r6, #64	@ ThisRoundSize,
	movw	r0, #:lower16:.LANCHOR1	@,
	rsb	ip, r6, r7	@ tmp160, ThisRoundSize, ivtmp.4111
	movt	r0, #:upper16:.LANCHOR1	@,
	mov	r2, r6	@, ThisRoundSize
	sub	r6, r6, #1	@ tmp167, ThisRoundSize,
	add	r1, sl, ip	@, ptr, tmp160
	bl	memcpy	@
	ldrb	r1, [r5, r6]	@ zero_extendqisi2	@ tmp168,
	add	r3, r5, r6	@ pLastByte, tmp192, tmp167
	cmp	r1, #0	@ tmp168,
	bne	.L1147	@,
	cmp	r3, r9	@ pLastByte, tmp193
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1148	@,
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ tmp171,
	rsb	r2, r3, r5	@ tmp195, pLastByte, tmp192
	cmp	r1, #0	@ tmp171,
	mvn	lr, r2	@ tmp194, tmp195
	and	r2, lr, #1	@ tmp196, tmp194,
	bne	.L1147	@,
	sub	r3, r3, #1	@ ivtmp.4102, pLastByte,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4102, tmp192
	beq	.L1148	@,
	cmp	r2, #0	@ tmp196,
	beq	.L1149	@,
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ tmp203,
	cmp	r1, #0	@ tmp203,
	bne	.L1147	@,
	sub	r3, r3, #1	@ ivtmp.4102, ivtmp.4102,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4102, tmp192
	bne	.L1149	@,
	b	.L1148	@
.L1150:
	ldrb	ip, [r2, #-1]	@ zero_extendqisi2	@ tmp201,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	ip, #0	@ tmp201,
	bne	.L1147	@,
	cmp	r3, r5	@ ivtmp.4102, tmp192
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1148	@,
.L1149:
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2	@ tmp202,
	sub	r2, r3, #1	@ tmp198, ivtmp.4102,
	sub	r3, r2, #1	@ ivtmp.4102, tmp198,
	cmp	lr, #0	@ tmp202,
	beq	.L1150	@,
.L1147:
	cmp	r4, fp	@ zero_byte, len
	bge	.L1169	@,
.L1152:
	sub	r2, fp, #1	@ tmp173, len,
	rsb	r3, r4, r2	@ tmp172, zero_byte, tmp173
	ldrb	r3, [sl, r3]	@ zero_extendqisi2	@ Byte,
	tst	r3, #1	@ Byte,
	bne	.L1169	@,
	mov	r3, r3, lsr #1	@ Byte.4115, Byte,
	tst	r3, #1	@ Byte.4115,
	movne	r0, #1	@ zero_bit,
	bne	.L1153	@,
	mov	r3, r3, lsr #1	@ Byte.4118, Byte.4115,
	tst	r3, #1	@ Byte.4118,
	movne	r0, #2	@ zero_bit,
	bne	.L1153	@,
	mov	r3, r3, lsr #1	@ Byte.4121, Byte.4118,
	tst	r3, #1	@ Byte.4121,
	movne	r0, #3	@ zero_bit,
	bne	.L1153	@,
	mov	r3, r3, lsr #1	@ Byte.4124, Byte.4121,
	tst	r3, #1	@ Byte.4124,
	movne	r0, #4	@ zero_bit,
	bne	.L1153	@,
	mov	r3, r3, lsr #1	@ Byte.4127, Byte.4124,
	tst	r3, #1	@ Byte.4127,
	movne	r0, #5	@ zero_bit,
	bne	.L1153	@,
	mov	r3, r3, lsr #1	@ Byte.4130, Byte.4127,
	tst	r3, #1	@ Byte.4130,
	movne	r0, #6	@ zero_bit,
	bne	.L1153	@,
	movs	r3, r3, lsr #1	@, Byte.4130,
	movne	r0, #7	@, zero_bit,
	moveq	r0, #8	@, zero_bit,
.L1153:
	add	r0, r0, r4, asl #3	@,, zero_bit, zero_byte,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1148:
	sub	r8, r8, #1	@ r, r,
	sub	r7, r7, #64	@ ivtmp.4111, ivtmp.4111,
	cmp	r8, #0	@ r,
	bgt	.L1151	@,
	cmp	r4, fp	@ zero_byte, len
	blt	.L1152	@,
.L1169:
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
.LFB2039:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #368]	@ prephitmp.4158, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r2, #1	@ <variable>.nal_segment,
	bls	.L1171	@,
	ldr	r1, [r3, #40]	@, <variable>.bitstream_length
	ldr	r0, [r3, #36]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4158, <variable>.pCurrNal
	ldr	r1, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r0, r1, asl #3	@ zero_bit, <variable>.bitstream_length,
	bcs	.L1176	@,
	cmn	r0, #1	@ zero_bit,
	beq	.L1171	@,
	add	r0, r0, #1	@ tmp151, zero_bit,
	str	r0, [r3, #72]	@ tmp151, <variable>.nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ temp.4173, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	ldmlsfd	sp!, {r4, pc}	@
.L1177:
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
.L1176:
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
	ldr	r3, [r4, #368]	@ prephitmp.4158, <variable>.pCurrNal
.L1171:
	ldr	r1, [r3, #12]	@, <variable>.bitstream_length
	ldr	r0, [r3, #8]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4158, <variable>.pCurrNal
	add	r0, r0, #1	@ tmp151, zero_bit,
	str	r0, [r3, #72]	@ tmp151, <variable>.nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ temp.4173, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bhi	.L1177	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	FindTrailZeros, .-FindTrailZeros
	.align	2
	.global	H264_IsNewPicNal
	.type	H264_IsNewPicNal, %function
H264_IsNewPicNal:
	.fnstart
.LFB2036:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ tmp140,
	mov	r4, r0	@ pNewPicDetector, pNewPicDetector
	add	r1, r1, #3	@ pu8.4205, pu8,
	and	r0, r2, #31	@ tmp141, tmp140,
	sub	r3, r0, #1	@ tmp142, tmp141,
	cmp	r3, #7	@ tmp142,
	ldrls	pc, [pc, r3, asl #2]	@ tmp142
	b	.L1179	@
.L1182:
	.word	.L1180
	.word	.L1179
	.word	.L1179
	.word	.L1179
	.word	.L1180
	.word	.L1179
	.word	.L1181
	.word	.L1181
.L1181:
	ldr	r0, [r4, #0]	@ tmp157,* pNewPicDetector
	mov	r3, #1	@ tmp158,
	str	r3, [r4, #0]	@ tmp158,* pNewPicDetector
	cmp	r0, #0	@ tmp157,
	mvnne	r0, #0	@, ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1180:
	ldr	r5, [r4, #0]	@ tmp143,* pNewPicDetector
	cmp	r5, #0	@ tmp143,
	beq	.L1189	@,
.L1184:
	mvn	r0, #0	@ ret,
.L1185:
	mov	r1, #0	@ tmp156,
	str	r1, [r4, #0]	@ tmp156,* pNewPicDetector
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1179:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1189:
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
	bhi	.L1184	@,
	mov	ip, r0, asl #1	@ tmp153, zeros,
	rsb	r0, ip, #31	@ tmp154, tmp153,
	mov	r6, r6, lsr r0	@ tmp155, tmpbits,
	cmp	r6, #1	@ tmp155,
	moveq	r0, r5	@ ret, tmp143
	bne	.L1184	@,
	b	.L1185	@
	.fnend
	.size	H264_IsNewPicNal, .-H264_IsNewPicNal
	.align	2
	.global	WritePicMsg
	.type	WritePicMsg, %function
WritePicMsg:
	.fnstart
.LFB2002:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	.pad #36
	sub	sp, sp, #36	@,,
	movw	fp, #49728	@ tmp161,
	bl	vfmw_dprint_nothing	@
	ldrd	r0, [r4, fp]	@, pH264Ctx, tmp161
	movw	r8, #52760	@ tmp164,
	movw	r7, #49892	@ tmp167,
	movw	r6, #50128	@ tmp170,
	movw	r5, #49707	@ tmp173,
	movw	r3, #13607	@ tmp177,
	strd	r0, [sp, #8]	@,,
	movw	ip, #50164	@ tmp180,
	ldr	fp, [r4, r8]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	movw	r9, #50168	@ tmp183,
	ldr	r8, [r4, r7]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.CurrPic.fs_image.image_stride
	ldr	r7, [r4, r6]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	sl, #13606	@ tmp190,
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r2, #17648	@ tmp194,
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	movw	r3, #17588	@ tmp197,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	ldr	ip, [r4, r9]	@ <variable>.CurrPic.frame_height_in_mb, <variable>.CurrPic.frame_height_in_mb
	ldrb	r9, [r4, r3]	@ zero_extendqisi2	@, <variable>.CurrPPS.entropy_coding_mode_flag
	movw	r3, #17592	@ tmp204,
	ldrb	r0, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	mov	sl, #14336	@ tmp200,
	ldr	r1, [r4, r2]	@ <variable>.CurrPPS.transform_8x8_mode_flag, <variable>.CurrPPS.transform_8x8_mode_flag
	str	r9, [sp, #4]	@, %sfp
	ldr	r2, [r4, sl]	@, <variable>.CurrSPS.chroma_format_idc
	movw	sl, #19840	@ tmp207,
	str	r2, [sp, #0]	@, %sfp
	ldrb	r9, [r4, r3]	@ zero_extendqisi2	@, <variable>.CurrPPS.constrained_intra_pred_flag
	movw	r3, #19828	@ tmp210,
	str	r9, [sp, #16]	@, %sfp
	ldr	r2, [r4, sl]	@, <variable>.CurrPOC.ThisPOC
	movw	sl, #19832	@ tmp213,
	str	r2, [sp, #20]	@, %sfp
	ldr	r9, [r4, r3]	@, <variable>.CurrPOC.toppoc
	movw	r3, #17544	@ tmp186,
	str	r9, [sp, #24]	@, %sfp
	movw	r9, #51376	@ tmp160,
	ldr	r2, [r4, sl]	@, <variable>.CurrPOC.bottompoc
	str	r2, [sp, #28]	@, %sfp
	ldr	sl, [r4, r3]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	ldrd	r2, [sp, #8]	@,,
	add	sl, sl, #1	@ tmp188, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	strd	r2, [r4, r9]	@, pH264Ctx, tmp160
	movw	r9, #52492	@ tmp163,
	str	fp, [r4, r9]	@ <variable>.DecSlicePara, <variable>.DecPicPara.pFirstSlice
	movw	r9, #52280	@ tmp166,
	str	r8, [r4, r9]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.DecPicPara.imgstride
	movw	r9, #51384	@ tmp169,
	movw	r8, #52764	@ tmp158,
	str	r7, [r4, r9]	@ <variable>.CurrPic.nal_ref_idc, <variable>.DecPicPara.nal_ref_idc
	mov	r9, #0	@ tmp159,
	str	r9, [r4, r8]	@ tmp159, <variable>.SliceParaNum
	movw	r8, #51368	@ tmp172,
	movw	r2, #51369	@ tmp199,
	strb	r6, [r4, r8]	@ <variable>.CurrPic.structure, <variable>.DecPicPara.pic_structure
	movw	r6, #51400	@ tmp176,
	str	r5, [r4, r6]	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.DecPicPara.mb_adaptive_frame_field_flag
	movw	r5, #51388	@ tmp179,
	str	lr, [r4, r5]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.DecPicPara.pic_height_in_mb
	movw	lr, #51392	@ tmp182,
	movw	r5, #51371	@ tmp189,
	str	ip, [r4, lr]	@ <variable>.CurrPic.frame_height_in_mb, <variable>.DecPicPara.frame_height_in_mb
	strb	r0, [r4, r5]	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.DecPicPara.frame_mbs_only_flag
	movw	ip, #51396	@ tmp185,
	movw	r0, #51404	@ tmp193,
	str	sl, [r4, ip]	@ tmp188, <variable>.DecPicPara.pic_width_in_mb
	str	r1, [r4, r0]	@ <variable>.CurrPPS.transform_8x8_mode_flag, <variable>.DecPicPara.transform_8x8_mode_flag
	movw	ip, #51408	@ tmp196,
	ldr	lr, [sp, #4]	@, %sfp
	movw	r1, #51412	@ tmp203,
	movw	r3, #51416	@ tmp206,
	movw	r7, #52840	@ tmp215,
	str	lr, [r4, ip]	@, <variable>.DecPicPara.entropy_coding_mode_flag
	movw	ip, #51420	@ tmp209,
	ldr	r5, [sp, #0]	@, %sfp
	strb	r5, [r4, r2]	@, <variable>.DecPicPara.chroma_format_idc
	movw	r2, #51424	@ tmp212,
	ldr	r0, [sp, #16]	@, %sfp
	str	r0, [r4, r1]	@, <variable>.DecPicPara.constrained_intra_pred_flag
	movw	r0, #50112	@ tmp218,
	ldr	lr, [sp, #20]	@, %sfp
	str	lr, [r4, r3]	@, <variable>.DecPicPara.ThisPoc
	ldr	r5, [sp, #24]	@, %sfp
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	r5, [r4, ip]	@, <variable>.DecPicPara.TopPoc
	ldr	r1, [sp, #28]	@, %sfp
	str	r1, [r4, r2]	@, <variable>.DecPicPara.BottomPoc
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pstLogicFs,
	beq	.L1193	@,
	ldr	r1, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r1, #0	@ <variable>.pstDecodeFs,
	beq	.L1193	@,
	ldr	r0, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r0, #0	@ <variable>.pstDispOutFs,
	beq	.L1193	@,
	add	r8, r4, #51968	@ tmp225, pH264Ctx,
	add	lr, r4, #51712	@, pH264Ctx,
	add	fp, r4, #51456	@ tmp336, pH264Ctx,
	add	r3, lr, #220	@,,
	add	r1, r8, #220	@, tmp225,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r2, fp, #220	@, tmp336,
	movw	sl, #51660	@ tmp230,
	bl	FSP_GetDecFsAddrTab	@
	ldr	r3, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	add	r6, r4, #52224	@ tmp236, pH264Ctx,
	add	r2, r8, #224	@, tmp225,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r1, r6, #48	@, tmp236,
	ldr	ip, [r3, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	str	ip, [r4, sl]	@ <variable>.PhyFsID, <variable>.DecPicPara.CurrPicImgIdc
	bl	FSP_GetPmvAddrTab	@
	movw	r0, #50180	@ tmp240,
	ldr	r8, [r4, r0]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movw	r1, #51668	@ tmp239,
	movw	ip, #52276	@ tmp242,
	movw	r3, #26900	@ tmp251,
	movw	r0, #51664	@ tmp244,
	str	r8, [r4, r1]	@ <variable>.CurrPic.pmv_address_idc, <variable>.DecPicPara.CurrPicPmvIdc
	ldr	sl, [r5, #424]	@ <variable>.HalfPmvOffset, <variable>.HalfPmvOffset
	ldr	r8, [r4, r3]	@ <variable>.APC.size, <variable>.APC.size
	str	sl, [r4, ip]	@ <variable>.HalfPmvOffset, <variable>.DecPicPara.half_pmvblk_offset
	cmp	r8, #0	@ <variable>.APC.size,
	ldr	r2, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	ip, #52484	@ tmp250,
	movw	sl, #51672	@ tmp247,
	ldr	r1, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, r0]	@ <variable>.PhyAddr, <variable>.DecPicPara.CurrPicImg2DAddr
	ldr	r3, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r2, [r3, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r8, [r4, ip]	@ <variable>.APC.size, <variable>.DecPicPara.ApcSize
	str	r2, [r4, sl]	@ <variable>.ChromOffset, <variable>.DecPicPara.uv_offset
	beq	.L1195	@,
	add	r5, r4, #26624	@ tmp254, pH264Ctx,
	mov	ip, #1	@ i,
	cmp	ip, r8	@ i, <variable>.APC.size
	mov	r1, r6	@ ivtmp.4303, tmp236
	mov	r0, r5	@ ivtmp.4300, tmp254
	sub	r9, r8, #1	@ tmp352, <variable>.APC.size,
	ldr	sl, [r0, #84]!	@ tmp256, <variable>.APC.idc
	and	r9, r9, ip	@ tmp354, tmp352,
	add	r2, r5, #88	@ ivtmp.4300, tmp254,
	add	r3, r6, #72	@ ivtmp.4303, tmp236,
	ldr	r7, [r0, #128]	@ tmp258, <variable>.APC.poc
	ldr	r0, [r0, #64]	@ tmp257, <variable>.APC.poc
	str	sl, [r1, #68]!	@ tmp256, <variable>.DecPicPara.Apc2Idc
	str	r7, [r1, #128]	@ tmp258, <variable>.DecPicPara.Apc2Poc
	str	r0, [r1, #64]	@ tmp257, <variable>.DecPicPara.Apc2Poc
	bcs	.L1195	@,
	cmp	r9, #0	@ tmp354,
	beq	.L1230	@,
	ldr	r7, [r2, #128]	@ tmp431, <variable>.APC.poc
	mov	ip, #2	@ i,
	ldr	r0, [r2, #0]	@ tmp429, <variable>.APC.idc
	cmp	ip, r8	@ i, <variable>.APC.size
	ldr	sl, [r2, #64]	@ tmp430, <variable>.APC.poc
	add	r2, r5, #92	@ ivtmp.4300, tmp254,
	str	r7, [r3, #128]	@ tmp431, <variable>.DecPicPara.Apc2Poc
	str	r0, [r3, #0]	@ tmp429, <variable>.DecPicPara.Apc2Idc
	str	sl, [r3, #64]	@ tmp430, <variable>.DecPicPara.Apc2Poc
	add	r3, r6, #76	@ ivtmp.4303, tmp236,
	bcs	.L1195	@,
.L1230:
	mov	r9, r4	@ pH264Ctx, pH264Ctx
.L1196:
	add	sl, r2, #4	@ tmp356, ivtmp.4300,
	ldr	r1, [r2, #4]	@ tmp367, <variable>.APC.idc
	ldr	r5, [r2, #0]	@ tmp361, <variable>.APC.idc
	add	ip, ip, #2	@ i, i,
	ldr	r7, [r2, #64]	@ tmp362, <variable>.APC.poc
	add	lr, r3, #4	@ tmp357, ivtmp.4303,
	ldr	r6, [r2, #128]	@ tmp363, <variable>.APC.poc
	cmp	ip, r8	@ i, <variable>.APC.size
	ldr	r4, [sl, #64]	@ tmp368, <variable>.APC.poc
	add	r2, sl, #4	@ ivtmp.4300, tmp356,
	ldr	r0, [sl, #128]	@ tmp369, <variable>.APC.poc
	str	r7, [r3, #64]	@ tmp362, <variable>.DecPicPara.Apc2Poc
	str	r6, [r3, #128]	@ tmp363, <variable>.DecPicPara.Apc2Poc
	str	r1, [r3, #4]	@ tmp367, <variable>.DecPicPara.Apc2Idc
	str	r5, [r3, #0]	@ tmp361, <variable>.DecPicPara.Apc2Idc
	add	r3, lr, #4	@ ivtmp.4303, tmp357,
	str	r4, [lr, #64]	@ tmp368, <variable>.DecPicPara.Apc2Poc
	str	r0, [lr, #128]	@ tmp369, <variable>.DecPicPara.Apc2Poc
	bcc	.L1196	@,
	mov	r4, r9	@ pH264Ctx, pH264Ctx
.L1195:
	movw	ip, #13613	@ tmp259,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag, <variable>.CurrSPS.seq_scaling_matrix_present_flag
	cmp	r2, #0	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag,
	bne	.L1197	@,
	movw	r3, #17606	@ tmp261,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.4225, <variable>.CurrPPS.pic_scaling_matrix_present_flag
	cmp	r3, #0	@ prephitmp.4225,
	bne	.L1198	@,
	add	r0, r4, #51200	@ ivtmp.4263, pH264Ctx,
	movw	r1, #:lower16:.LANCHOR2	@ tmp335,
	add	r0, r0, #228	@ ivtmp.4263, ivtmp.4263,
	movt	r1, #:upper16:.LANCHOR2	@ tmp335,
.L1199:
	and	r5, r3, #3	@ tmp264, i.4313,
	add	ip, r3, #1	@ tmp342, i.4313,
	and	r2, ip, #3	@ tmp372, tmp342,
	mov	lr, r0	@ tmp343, ivtmp.4263
	ldr	r5, [r1, r5, asl #2]	@ tmp265, quant_org
	add	r3, ip, #1	@ i.4313, tmp342,
	cmp	r3, #24	@ i.4313,
	str	r5, [lr], #4	@ tmp265, <variable>.DecPicPara.Qmatrix
	ldr	sl, [r1, r2, asl #2]	@ tmp373, quant_org
	str	sl, [r0, #4]	@ tmp373, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4263, tmp343,
	bne	.L1199	@,
	add	fp, fp, #68	@ ivtmp.4255, tmp336,
	mov	r3, #0	@ i.4314,
.L1200:
	and	sl, r3, #15	@ tmp268, i.4314,
	add	r3, r3, #1	@ tmp340, i.4314,
	and	r0, r3, #15	@ tmp376, tmp340,
	mov	lr, fp	@ tmp341, ivtmp.4255
	add	ip, r1, sl, asl #2	@, tmp271, tmp335, tmp268,
	add	r3, r3, #1	@ i.4314, tmp340,
	add	sl, r1, r0, asl #2	@, tmp378, tmp335, tmp376,
	cmp	r3, #32	@ i.4314,
	ldr	r2, [ip, #16]	@ tmp273, quant8_org
	str	r2, [lr], #4	@ tmp273, <variable>.DecPicPara.Qmatrix
	ldr	r0, [sl, #16]	@ tmp380, quant8_org
	str	r0, [fp, #4]	@ tmp380, <variable>.DecPicPara.Qmatrix
	add	fp, lr, #4	@ ivtmp.4255, tmp341,
	bne	.L1200	@,
.L1201:
	movw	sl, #26900	@ tmp323,
	ldr	lr, [r4, sl]	@ <variable>.APC.size, <variable>.APC.size
	cmp	lr, #0	@ <variable>.APC.size,
	beq	.L1207	@,
	add	r6, r4, #26624	@ ivtmp.4245, pH264Ctx,
	add	r7, r4, #52480	@ ivtmp.4248, pH264Ctx,
	add	r6, r6, #84	@ ivtmp.4245, ivtmp.4245,
	add	r5, r7, #144	@ ivtmp.4248, ivtmp.4248,
	movw	r8, #52840	@ tmp337,
	mov	r7, #0	@ i.4329,
.L1208:
	ldr	r2, [r6, #0]	@, <variable>.APC.idc
	mov	r1, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r7, r7, #1	@ i.4329, i.4329,
	bl	FSP_GetStoreType	@
	ldr	r3, [r4, sl]	@ <variable>.APC.size, <variable>.APC.size
	ldr	r2, [r6], #4	@ tmp331, <variable>.APC.idc
	str	r2, [r5, #64]	@ tmp331, <variable>.DecPicPara.RefPicFsId
	subs	ip, r0, #0	@ tmp330,,
	movne	ip, #1	@ tmp330
	cmp	r3, r7	@ <variable>.APC.size, i.4329
	str	ip, [r5, #0]	@ tmp330, <variable>.DecPicPara.RefPicType
	add	r5, r5, #4	@ ivtmp.4248, ivtmp.4248,
	bhi	.L1208	@,
.L1207:
	mov	r0, #0	@ D.41848,
.L1192:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1197:
	movw	r1, #17606	@ tmp274,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.4225, <variable>.CurrPPS.pic_scaling_matrix_present_flag
.L1198:
	cmp	r3, #1	@ prephitmp.4225,
	addne	r0, r4, #51200	@ ivtmp.4295, pH264Ctx,
	movne	r3, #0	@ i.4321,
	addne	r0, r0, #228	@ ivtmp.4295, ivtmp.4295,
	beq	.L1231	@,
.L1205:
	add	ip, r3, #1	@ tmp350, i.4321,
	add	r2, r3, #4064	@ tmp304, i.4321,
	add	r3, ip, #4064	@ tmp412, tmp350,
	add	r5, r2, #2	@ tmp304, tmp304,
	add	lr, r3, #2	@ tmp412, tmp412,
	add	r3, ip, #1	@ i.4321, tmp350,
	add	sl, r4, r5, asl #2	@, tmp308, pH264Ctx, tmp304,
	cmp	r3, #24	@ i.4321,
	add	r5, r4, lr, asl #2	@, tmp414, pH264Ctx, tmp412,
	mov	r2, r0	@ tmp351, ivtmp.4295
	ldr	ip, [sl, #4]	@ tmp310, <variable>.CurrSPS.qmatrix4x4
	ldr	r1, [r5, #4]	@ tmp416, <variable>.CurrSPS.qmatrix4x4
	str	ip, [r2], #4	@ tmp310, <variable>.DecPicPara.Qmatrix
	str	r1, [r0, #4]	@ tmp416, <variable>.DecPicPara.Qmatrix
	add	r0, r2, #4	@ ivtmp.4295, tmp351,
	bne	.L1205	@,
	add	fp, fp, #68	@ ivtmp.4287, tmp336,
	mov	r3, #0	@ i.4324,
.L1206:
	add	r0, r3, #1	@ tmp348, i.4324,
	add	r1, r3, #4080	@ tmp316, i.4324,
	add	r3, r0, #4080	@ tmp424, tmp348,
	add	sl, r1, #10	@ tmp316, tmp316,
	add	r2, r3, #10	@ tmp424, tmp424,
	add	r3, r0, #1	@ i.4324, tmp348,
	add	ip, r4, sl, asl #2	@, tmp320, pH264Ctx, tmp316,
	cmp	r3, #32	@ i.4324,
	add	lr, r4, r2, asl #2	@, tmp426, pH264Ctx, tmp424,
	mov	sl, fp	@ tmp349, ivtmp.4287
	ldr	r0, [ip, #4]	@ tmp322, <variable>.CurrSPS.qmatrix8x8
	ldr	r1, [lr, #4]	@ tmp428, <variable>.CurrSPS.qmatrix8x8
	str	r0, [sl], #4	@ tmp322, <variable>.DecPicPara.Qmatrix
	str	r1, [fp, #4]	@ tmp428, <variable>.DecPicPara.Qmatrix
	add	fp, sl, #4	@ ivtmp.4287, tmp349,
	bne	.L1206	@,
	b	.L1201	@
.L1231:
	add	r5, r4, #51200	@ ivtmp.4279, pH264Ctx,
	mov	r3, #0	@ i.4316,
	add	r0, r5, #228	@ ivtmp.4279, ivtmp.4279,
.L1203:
	add	r5, r3, #1	@ tmp346, i.4316,
	add	r2, r3, #4864	@ tmp280, i.4316,
	add	r3, r5, #4864	@ tmp388, tmp346,
	add	r1, r2, #28	@ tmp280, tmp280,
	add	lr, r3, #28	@ tmp388, tmp388,
	add	r3, r5, #1	@ i.4316, tmp346,
	add	sl, r4, r1, asl #2	@, tmp284, pH264Ctx, tmp280,
	cmp	r3, #24	@ i.4316,
	add	r5, r4, lr, asl #2	@, tmp390, pH264Ctx, tmp388,
	mov	lr, r0	@ tmp347, ivtmp.4279
	ldr	ip, [sl, #4]	@ tmp286, <variable>.CurrPPS.qmatrix4x4
	ldr	r2, [r5, #4]	@ tmp392, <variable>.CurrPPS.qmatrix4x4
	str	ip, [lr], #4	@ tmp286, <variable>.DecPicPara.Qmatrix
	str	r2, [r0, #4]	@ tmp392, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4279, tmp347,
	bne	.L1203	@,
	add	fp, fp, #68	@ ivtmp.4271, tmp336,
	mov	r3, #0	@ i.4318,
.L1204:
	add	lr, r3, #1	@ tmp344, i.4318,
	add	r0, r3, #4864	@ tmp292, i.4318,
	add	r3, lr, #4864	@ tmp400, tmp344,
	add	sl, r0, #52	@ tmp292, tmp292,
	add	r2, r3, #52	@ tmp400, tmp400,
	add	r3, lr, #1	@ i.4318, tmp344,
	add	r1, r4, sl, asl #2	@, tmp296, pH264Ctx, tmp292,
	cmp	r3, #32	@ i.4318,
	add	ip, r4, r2, asl #2	@, tmp402, pH264Ctx, tmp400,
	mov	sl, fp	@ tmp345, ivtmp.4271
	ldr	r0, [r1, #4]	@ tmp298, <variable>.CurrPPS.qmatrix8x8
	ldr	lr, [ip, #4]	@ tmp404, <variable>.CurrPPS.qmatrix8x8
	str	r0, [sl], #4	@ tmp298, <variable>.DecPicPara.Qmatrix
	str	lr, [fp, #4]	@ tmp404, <variable>.DecPicPara.Qmatrix
	add	fp, sl, #4	@ ivtmp.4271, tmp345,
	bne	.L1204	@,
	b	.L1201	@
.L1193:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41848,
	b	.L1192	@
	.fnend
	.size	WritePicMsg, .-WritePicMsg
	.align	2
	.global	InitListX
	.type	InitListX, %function
InitListX:
	.fnstart
.LFB1987:
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
	bne	.L1233	@,
	movw	r0, #49707	@ tmp221,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r5, #0	@ <variable>.CurrPic.structure,
	beq	.L1234	@,
	movw	lr, #26632	@ tmp223,
	ldr	r5, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1236	@,
	add	r7, r4, #26368	@ ivtmp.4410, pH264Ctx,
	mov	r5, r2	@ list0idx.4480, <variable>.CurrSlice.slice_type
	add	r3, r7, #128	@ ivtmp.4410, ivtmp.4410,
.L1247:
	ldr	r6, [r3, #0]	@ temp.4486, <variable>.DPB.fs_ref
	add	r1, sp, #208	@,,
	add	ip, r1, r5, asl #2	@, tmp263,, list0idx.4480,
	add	r2, r2, #1	@ i.4488, i.4488,
	add	r3, r3, #4	@ ivtmp.4410, ivtmp.4410,
	ldrb	r0, [r6, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	strne	r6, [ip, #-64]	@ temp.4486, fs_list0
	ldr	r8, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	addne	r5, r5, #1	@ list0idx.4480, list0idx.4480,
	cmp	r8, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4488
	bhi	.L1247	@,
.L1236:
	add	r8, sp, #144	@ tmp267,,
	mov	r1, r5	@, list0idx.4480
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_frame_num_desc	@,
	mov	r0, r8	@, tmp267
	movt	r3, #:upper16:compare_fs_by_frame_num_desc	@,
	bl	qsort	@
	movw	r7, #49707	@ tmp273,
	add	r2, r4, #26880	@ D.40585, pH264Ctx,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	add	r7, r2, #156	@ D.40585, D.40585,
	movw	r3, #20724	@ tmp269,
	mov	r6, #0	@ tmp270,
	mov	r1, r8	@, tmp267
	str	r6, [r4, r3]	@ tmp270, <variable>.CurrSlice.listXsize
	mov	r2, r5	@, list0idx.4480
	mov	r3, r7	@, D.40585
	add	r5, r4, #20480	@ D.40586, pH264Ctx,
	add	r8, r5, #244	@ D.40586, D.40586,
	str	r6, [sp, #4]	@ tmp270,
	str	r8, [sp, #0]	@ D.40586,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #26636	@ tmp277,
	ldr	r5, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, r6	@ <variable>.DPB.ltref_frames_in_buffer,
	addeq	r6, sp, #16	@ tmp517,,
	beq	.L1249	@,
	mov	r3, r6	@ ivtmp.4404, tmp270
	add	r6, sp, #16	@ tmp517,,
	mov	r5, r3	@ listltidx, ivtmp.4404
.L1250:
	add	r2, r4, r3	@ tmp280, pH264Ctx, ivtmp.4404
	ldr	r1, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	ip, r2, #26368	@ tmp282, tmp280,
	add	r5, r5, #1	@ listltidx, listltidx,
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, listltidx
	ldr	lr, [ip, #192]	@ tmp283, <variable>.DPB.fs_ltref
	str	lr, [r6, r3]	@ tmp283, fs_listlt
	add	r3, r3, #4	@ ivtmp.4404, ivtmp.4404,
	bhi	.L1250	@,
.L1249:
	mov	r0, r6	@, tmp517
	mov	r1, r5	@, listltidx
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	bl	qsort	@
	movw	r3, #49707	@ tmp288,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp517
	mov	r2, r5	@, listltidx
	mov	r3, r7	@, D.40585
	mov	ip, #1	@ tmp291,
	stmia	sp, {r8, ip}	@ phole stm
	bl	GenPiclistfromFrmlist	@
.L1245:
	movw	lr, #20724	@ tmp294,
	mov	r2, #0	@ tmp293,
	ldr	r1, [r4, lr]	@ list0idx.4479, <variable>.CurrSlice.listXsize
	movw	r0, #20728	@ tmp292,
	str	r2, [r4, r0]	@ tmp293, <variable>.CurrSlice.listXsize
	cmp	r1, r2	@ list0idx.4479,
	bne	.L1251	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1412	@,
	movw	r3, #49707	@ tmp297,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ temp.4495, <variable>.CurrPic.structure
	cmp	r3, r2	@ temp.4495,
	beq	.L1417	@,
	movw	r2, #50112	@ tmp303,
	cmp	r3, #1	@ temp.4495,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r3, #27036	@ tmp306,
	addeq	ip, ip, #436	@ tmp305, <variable>.CurrPic.frame_store,
	addne	ip, ip, #472	@ tmp309, <variable>.CurrPic.frame_store,
	str	ip, [r4, r3]	@ tmp309, <variable>.pListX
.L1254:
	movw	r0, #20724	@ tmp310,
	mov	r1, #1	@ tmp311,
	str	r1, [r4, r0]	@ tmp311, <variable>.CurrSlice.listXsize
.L1251:
	mov	r0, #20736	@ tmp479,
	movw	ip, #20740	@ tmp483,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	movw	r0, #20728	@ tmp485,
	ldr	r2, [r4, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #1	@ tmp480, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	ldr	ip, [r4, r0]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r3	@ list0idx.4479, tmp480
	movcc	r3, r1	@ i.4504, list0idx.4479
	add	r2, r2, #1	@ prephitmp.4357, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r2, ip	@ prephitmp.4357, <variable>.CurrSlice.listXsize
	movcs	r2, ip	@ prephitmp.4357, <variable>.CurrSlice.listXsize
	cmp	r3, #32	@ i.4504,
	movw	r1, #20724	@ tmp482,
	str	r3, [r4, r1]	@ i.4504, <variable>.CurrSlice.listXsize
	str	r2, [r4, r0]	@ prephitmp.4357, <variable>.CurrSlice.listXsize
	bls	.L1296	@,
	b	.L1297	@
.L1233:
	movw	sl, #49707	@ tmp312,
	ldrb	r7, [r0, sl]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r7, #0	@ <variable>.CurrPic.structure,
	beq	.L1257	@,
	movw	ip, #26632	@ tmp314,
	ldr	r5, [r0, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1259	@,
	add	fp, r0, #26368	@ ivtmp.4476, pH264Ctx,
	mov	r5, #0	@ list0idx.4483,
	add	r3, fp, #128	@ ivtmp.4476, ivtmp.4476,
	mov	r2, r5	@ i.4523, list0idx.4483
	movw	r7, #50132	@ tmp531,
.L1280:
	ldr	r1, [r3, #0]	@ temp.4522, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4523, i.4523,
	add	r3, r3, #4	@ ivtmp.4476, ivtmp.4476,
	ldrb	sl, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	sl, #0	@ <variable>.is_used,
	beq	.L1279	@,
	ldr	r9, [r1, #524]	@ <variable>.poc, <variable>.poc
	add	r0, sp, #208	@,,
	ldr	lr, [r4, r7]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r6, r0, r5, asl #2	@, tmp406,, list0idx.4483,
	cmp	lr, r9	@ <variable>.CurrPic.thispoc, <variable>.poc
	strge	r1, [r6, #-64]	@ temp.4522, fs_list0
	addge	r5, r5, #1	@ list0idx.4483, list0idx.4483,
.L1279:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4523
	bhi	.L1280	@,
.L1259:
	add	r7, sp, #144	@ tmp516,,
	mov	r1, r5	@, list0idx.4483
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_desc	@,
	mov	r0, r7	@, tmp516
	movt	r3, #:upper16:compare_fs_by_poc_desc	@,
	bl	qsort	@
	movw	ip, #26632	@ tmp412,
	ldr	r9, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r9, #0	@ <variable>.DPB.ref_frames_in_buffer,
	moveq	r6, r5	@ list0idx.4484, list0idx.4483
	beq	.L1282	@,
	add	r2, r4, #26368	@ ivtmp.4471, pH264Ctx,
	mov	r6, r5	@ list0idx.4484, list0idx.4483
	add	r3, r2, #128	@ ivtmp.4471, ivtmp.4471,
	movw	sl, #50132	@ tmp529,
	mov	r2, #0	@ i.4529,
.L1284:
	ldr	r1, [r3, #0]	@ temp.4525, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4529, i.4529,
	add	r3, r3, #4	@ ivtmp.4471, ivtmp.4471,
	ldrb	fp, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	fp, #0	@ <variable>.is_used,
	beq	.L1283	@,
	ldr	r9, [r1, #524]	@ <variable>.poc, <variable>.poc
	add	r0, sp, #208	@,,
	ldr	lr, [r4, sl]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r8, r0, r6, asl #2	@, tmp421,, list0idx.4484,
	cmp	lr, r9	@ <variable>.CurrPic.thispoc, <variable>.poc
	strlt	r1, [r8, #-64]	@ temp.4525, fs_list0
	addlt	r6, r6, #1	@ list0idx.4484, list0idx.4484,
.L1283:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4529
	bhi	.L1284	@,
	rsb	r9, r5, r6	@ prephitmp.4555, list0idx.4483, list0idx.4484
.L1282:
	mov	sl, r5, asl #2	@ tmp518, list0idx.4483,
	mov	r1, r9	@, prephitmp.4555
	add	r0, r7, sl	@, tmp516, tmp518
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_asc	@,
	movt	r3, #:upper16:compare_fs_by_poc_asc	@,
	bl	qsort	@
	cmp	r5, #0	@ list0idx.4483,
	addeq	r8, sp, #80	@ tmp521,,
	beq	.L1285	@,
	ldr	r2, [r7, #0]	@ tmp431, fs_list0
	add	r8, sp, #80	@ tmp521,,
	add	r9, r8, r9, asl #2	@, ivtmp.4468, tmp521, prephitmp.4555,
	cmp	sl, #4	@ tmp518,
	sub	ip, sl, #4	@ tmp592, tmp518,
	mov	r3, #4	@ ivtmp.4466,
	str	r2, [r9], #4	@ tmp431, fs_list1
	ubfx	r2, ip, #2, #1	@ tmp593, tmp592,,
	beq	.L1285	@,
	cmp	r2, #0	@ tmp593,
	beq	.L1286	@,
	ldr	lr, [r7, #4]	@ tmp841, fs_list0
	mov	r3, #8	@ ivtmp.4466,
	cmp	sl, r3	@ tmp518, ivtmp.4466
	str	lr, [r9], #4	@ tmp841, fs_list1
	beq	.L1285	@,
.L1286:
	add	r1, r3, #4	@ tmp595, ivtmp.4466,
	ldr	r0, [r7, r3]	@ tmp659, fs_list0
	add	r3, r1, #4	@ ivtmp.4466, tmp595,
	mov	fp, r9	@ tmp594, ivtmp.4468
	ldr	lr, [r7, r1]	@ tmp662, fs_list0
	cmp	sl, r3	@ tmp518, ivtmp.4466
	str	r0, [fp], #4	@ tmp659, fs_list1
	str	lr, [r9, #4]	@ tmp662, fs_list1
	add	r9, fp, #4	@ ivtmp.4468, tmp594,
	bne	.L1286	@,
.L1285:
	cmp	r6, r5	@ list0idx.4484, list0idx.4483
	bls	.L1287	@,
	add	sl, r7, sl	@ ivtmp.4458, tmp516, tmp518
	add	lr, r7, r6, asl #2	@, D.49709, tmp516, list0idx.4484,
	rsb	r9, sl, lr	@ tmp585, ivtmp.4458, D.49709
	mov	r2, #4	@ ivtmp.4459,
	ldr	r5, [sl], #4	@ tmp437, fs_list0
	sub	r3, r9, #4	@ tmp586, tmp585,
	ubfx	r1, r3, #2, #1	@ tmp587, tmp586,,
	cmp	sl, lr	@ ivtmp.4458, D.49709
	str	r5, [r8, #0]	@ tmp437, fs_list1
	beq	.L1287	@,
	cmp	r1, #0	@ tmp587,
	beq	.L1288	@,
	ldr	fp, [sl], #4	@ tmp840, fs_list0
	mov	r2, #8	@ ivtmp.4459,
	cmp	sl, lr	@ ivtmp.4458, D.49709
	str	fp, [r8, #4]	@ tmp840, fs_list1
	beq	.L1287	@,
.L1288:
	mov	r1, sl	@ tmp588, ivtmp.4458
	ldr	r0, [sl, #4]	@ tmp668, fs_list0
	ldr	ip, [r1], #4	@ tmp665, fs_list0
	add	fp, r2, #4	@ tmp589, ivtmp.4459,
	add	sl, r1, #4	@ ivtmp.4458, tmp588,
	cmp	sl, lr	@ ivtmp.4458, D.49709
	str	ip, [r8, r2]	@ tmp665, fs_list1
	str	r0, [r8, fp]	@ tmp668, fs_list1
	add	r2, fp, #4	@ ivtmp.4459, tmp589,
	bne	.L1288	@,
.L1287:
	add	fp, r4, #26880	@ tmp669, pH264Ctx,
	movw	r9, #49707	@ tmp444,
	add	sl, fp, #156	@ ivtmp.4415, tmp669,
	mov	r1, r7	@, tmp516
	movw	r2, #20724	@ tmp438,
	movw	r7, #20728	@ tmp440,
	add	fp, fp, #288	@ D.40650, tmp669,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r5, #0	@ tmp439,
	mov	r3, sl	@, ivtmp.4415
	str	r5, [r4, r2]	@ tmp439, <variable>.CurrSlice.listXsize
	mov	r2, r6	@, list0idx.4484
	str	r5, [r4, r7]	@ tmp439, <variable>.CurrSlice.listXsize
	add	r7, r4, #20480	@ tmp443, pH264Ctx,
	add	lr, r7, #244	@, tmp443,
	str	r5, [sp, #4]	@ tmp439,
	str	lr, [sp, #12]	@, %sfp
	str	lr, [sp, #0]	@,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r8	@, tmp521
	mov	r2, r6	@, list0idx.4484
	mov	r3, fp	@, D.40650
	add	r9, r7, #248	@ D.40651, tmp443,
	str	r5, [sp, #4]	@ tmp439,
	str	r9, [sp, #0]	@ D.40651,
	bl	GenPiclistfromFrmlist	@
	movw	r1, #26636	@ tmp453,
	ldr	r6, [r4, r1]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r6, r5	@ <variable>.DPB.ltref_frames_in_buffer,
	addeq	r7, sp, #16	@ tmp670,,
	beq	.L1290	@,
	add	r7, sp, #16	@ tmp670,,
	mov	r6, r5	@ listltidx.4520, ivtmp.4451
.L1291:
	add	ip, r4, r5	@ tmp456, pH264Ctx, ivtmp.4451
	ldr	r0, [r4, r1]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r3, ip, #26368	@ tmp458, tmp456,
	add	r6, r6, #1	@ listltidx.4520, listltidx.4520,
	cmp	r0, r6	@ <variable>.DPB.ltref_frames_in_buffer, listltidx.4520
	ldr	r8, [r3, #192]	@ tmp459, <variable>.DPB.fs_ltref
	str	r8, [r7, r5]	@ tmp459, fs_listlt
	add	r5, r5, #4	@ ivtmp.4451, ivtmp.4451,
	bhi	.L1291	@,
.L1290:
	mov	r1, r6	@, listltidx.4520
	mov	r0, r7	@, tmp670
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	movw	r5, #49707	@ tmp464,
	bl	qsort	@
	ldr	lr, [sp, #12]	@, %sfp
	ldrb	r0, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r2, r6	@, listltidx.4520
	mov	r1, r7	@, tmp670
	mov	r3, sl	@, ivtmp.4415
	str	lr, [sp, #0]	@,
	mov	r8, #1	@ tmp467,
	str	r8, [sp, #4]	@ tmp467,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r2, r6	@, listltidx.4520
	mov	r1, r7	@, tmp670
	mov	r3, fp	@, D.40650
	movw	r6, #20724	@ tmp472,
	str	r9, [sp, #0]	@ D.40651,
	str	r8, [sp, #4]	@ tmp467,
	bl	GenPiclistfromFrmlist	@
	movw	r2, #20728	@ tmp473,
	ldr	r1, [r4, r6]	@ list0idx.4479, <variable>.CurrSlice.listXsize
	ldr	r6, [r4, r2]	@ list0idx.4482, <variable>.CurrSlice.listXsize
	cmp	r6, r1	@ list0idx.4482, list0idx.4479
	beq	.L1418	@,
.L1292:
	cmp	r1, #0	@ list0idx.4479,
	bne	.L1251	@,
	movw	r2, #20728	@ tmp477,
	ldr	r0, [r4, r2]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L1412	@,
	movw	r5, #20740	@ tmp506,
	mov	r3, r1	@ i.4504, list0idx.4479
	ldr	ip, [r4, r5]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	movw	r5, #20724	@ tmp503,
	str	r1, [r4, r5]	@ list0idx.4479, <variable>.CurrSlice.listXsize
	add	r1, ip, #1	@ tmp507, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r1, r0	@ tmp507, <variable>.CurrSlice.listXsize
	strls	r1, [r4, r2]	@, tmp507, <variable>.CurrSlice.listXsize
	strhi	r0, [r4, r2]	@, <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
.L1296:
	add	r0, r3, #6720	@ tmp512, i.4504,
	add	r1, r3, #1	@ i.4504, i.4504,
	add	ip, r0, #38	@ tmp512, tmp512,
	cmp	r1, #32	@ i.4504,
	mov	r0, #0	@ tmp523,
	and	r3, r3, #1	@ tmp539, i.4504,
	add	r2, r4, ip, asl #2	@, tmp515, pH264Ctx, tmp512,
	add	r2, r2, #4	@ ivtmp.4389, tmp515,
	str	r0, [r2], #4	@ tmp523, <variable>.pListX
	bhi	.L1405	@,
	cmp	r3, #0	@ tmp539,
	beq	.L1298	@,
	add	r1, r1, #1	@ i.4504, i.4504,
	str	r0, [r2], #4	@ tmp523, <variable>.pListX
	cmp	r1, #32	@ i.4504,
	bhi	.L1405	@,
.L1298:
	add	r1, r1, #2	@ i.4504, i.4504,
	mov	r3, r2	@ tmp541, ivtmp.4389
	cmp	r1, #32	@ i.4504,
	str	r0, [r3], #4	@ tmp523, <variable>.pListX
	str	r0, [r2, #4]	@ tmp523, <variable>.pListX
	add	r2, r3, #4	@ ivtmp.4389, tmp541,
	bls	.L1298	@,
.L1405:
	movw	r1, #20728	@ tmp489,
	ldr	r2, [r4, r1]	@ prephitmp.4357, <variable>.CurrSlice.listXsize
.L1297:
	cmp	r2, #32	@ prephitmp.4357,
	bhi	.L1299	@,
	add	r1, r2, #6720	@ tmp490, prephitmp.4357,
	add	r0, r4, #27136	@ D.49607, pH264Ctx,
	add	r3, r1, #38	@ tmp490, tmp490,
	add	r0, r0, #32	@ D.49607, D.49607,
	mov	r1, #0	@ tmp522,
	add	r4, r4, r3, asl #2	@, tmp493, pH264Ctx, tmp490,
	add	r4, r4, #4	@ ivtmp.4385, tmp493,
	add	r3, r4, #4	@ ivtmp.4385, ivtmp.4385,
	rsb	ip, r4, r0	@ tmp534, ivtmp.4385, D.49607
	cmp	r3, r0	@ ivtmp.4385, D.49607
	sub	r2, ip, #4	@ tmp535, tmp534,
	ubfx	r2, r2, #2, #1	@ tmp536, tmp535,,
	str	r1, [r4, #132]	@ tmp522, <variable>.pListX
	beq	.L1299	@,
	cmp	r2, #0	@ tmp536,
	beq	.L1300	@,
	str	r1, [r3, #132]	@ tmp522, <variable>.pListX
	add	r3, r3, #4	@ ivtmp.4385, ivtmp.4385,
	cmp	r3, r0	@ ivtmp.4385, D.49607
	beq	.L1299	@,
.L1300:
	add	r2, r3, #4	@ tmp537, ivtmp.4385,
	str	r1, [r3, #132]	@ tmp522, <variable>.pListX
	add	r3, r2, #4	@ ivtmp.4385, tmp537,
	cmp	r3, r0	@ ivtmp.4385, D.49607
	str	r1, [r2, #132]	@ tmp522, <variable>.pListX
	bne	.L1300	@,
.L1299:
	mov	r0, #0	@ D.40605,
.L1256:
	add	sp, sp, #212	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1257:
	movw	r6, #26632	@ tmp316,
	ldr	lr, [r0, r6]	@ temp.4557, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4557,
	moveq	r7, lr	@ list0idx.4481, temp.4557
	beq	.L1261	@,
	add	r3, r0, #26368	@ ivtmp.4445, pH264Ctx,
	sub	r5, lr, #1	@ tmp579, temp.4557,
	and	r0, r5, #1	@ tmp581, tmp579,
	movw	r5, #50136	@ tmp527,
	ldr	r2, [r3, #128]!	@ temp.4499, <variable>.DPB.fs_ref
	ldrb	r8, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r8, #3	@ <variable>.is_reference,
	beq	.L1419	@,
.L1366:
	mov	r2, #1	@ i.4502,
	cmp	r2, lr	@ i.4502, temp.4557
	add	r3, r3, #4	@ ivtmp.4445, ivtmp.4445,
	bcs	.L1261	@,
	cmp	r0, #0	@ tmp581,
	beq	.L1263	@,
	ldr	r1, [r3, #0]	@ temp.4499, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1420	@,
.L1368:
	add	r2, r2, #1	@ i.4502, i.4502,
	add	r3, r3, #4	@ ivtmp.4445, ivtmp.4445,
	cmp	r2, lr	@ i.4502, temp.4557
	bcc	.L1263	@,
.L1261:
	add	lr, r4, #26880	@ ivtmp.4415, pH264Ctx,
	mov	r1, r7	@, list0idx.4481
	add	sl, lr, #156	@ ivtmp.4415, ivtmp.4415,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_desc	@,
	movt	r3, #:upper16:compare_pic_by_poc_desc	@,
	mov	r0, sl	@, ivtmp.4415
	bl	qsort	@
	movw	r3, #26632	@ tmp331,
	ldr	r8, [r4, r3]	@ temp.4556, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ temp.4556,
	moveq	r5, r7	@ list0idx, list0idx.4481
	beq	.L1265	@,
	add	r3, r4, #26368	@ ivtmp.4440, pH264Ctx,
	sub	r2, r8, #1	@ tmp574, temp.4556,
	and	r0, r2, #1	@ tmp576, tmp574,
	mov	r5, r7	@ list0idx, list0idx.4481
	ldr	r2, [r3, #128]!	@ temp.4505, <variable>.DPB.fs_ref
	movw	lr, #50136	@ tmp526,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1421	@,
.L1359:
	mov	r2, #1	@ i.4510,
	cmp	r2, r8	@ i.4510, temp.4556
	add	r3, r3, #4	@ ivtmp.4440, ivtmp.4440,
	bcs	.L1411	@,
	cmp	r0, #0	@ tmp576,
	beq	.L1267	@,
	ldr	r1, [r3, #0]	@ temp.4505, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1422	@,
.L1361:
	add	r2, r2, #1	@ i.4510, i.4510,
	add	r3, r3, #4	@ ivtmp.4440, ivtmp.4440,
	cmp	r2, r8	@ i.4510, temp.4556
	bcc	.L1267	@,
.L1411:
	rsb	r8, r7, r5	@ prephitmp.4359, list0idx.4481, list0idx
.L1265:
	mov	r6, r7, asl #2	@ D.40619, list0idx.4481,
	mov	r1, r8	@, prephitmp.4359
	add	r0, sl, r6	@, ivtmp.4415, D.40619
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_asc	@,
	movt	r3, #:upper16:compare_pic_by_poc_asc	@,
	bl	qsort	@
	cmp	r7, #0	@ list0idx.4481,
	beq	.L1268	@,
	add	r8, r8, #6720	@ tmp346, prephitmp.4359,
	add	r1, r4, #26880	@ tmp351, pH264Ctx,
	add	r3, r1, #156	@ tmp351, tmp351,
	add	r8, r8, #38	@ tmp346, tmp346,
	cmp	r6, #4	@ D.40619,
	sub	r2, r6, #4	@ tmp570, D.40619,
	add	ip, r4, r8, asl #2	@, tmp349, pH264Ctx, tmp346,
	ldr	r0, [r3, #0]	@ tmp353, <variable>.pListX
	add	lr, ip, #4	@ ivtmp.4437, tmp349,
	mov	r3, #4	@ ivtmp.4434,
	ubfx	ip, r2, #2, #1	@ tmp571, tmp570,,
	add	r2, lr, #4	@ ivtmp.4437, ivtmp.4437,
	str	r0, [lr, #132]	@ tmp353, <variable>.pListX
	beq	.L1268	@,
	cmp	ip, #0	@ tmp571,
	beq	.L1269	@,
	add	ip, r4, #26880	@ tmp780, pH264Ctx,
	mov	r3, #8	@ ivtmp.4434,
	add	lr, ip, #160	@ tmp780, tmp780,
	cmp	r6, r3	@ D.40619, ivtmp.4434
	ldr	r1, [lr, #0]	@ tmp781, <variable>.pListX
	str	r1, [r2, #132]	@ tmp781, <variable>.pListX
	add	r2, r2, #4	@ ivtmp.4437, ivtmp.4437,
	beq	.L1268	@,
.L1269:
	add	r0, r4, r3	@ tmp630, pH264Ctx, ivtmp.4434
	add	r3, r3, #4	@ tmp572, ivtmp.4434,
	add	r1, r0, #26880	@ tmp631, tmp630,
	add	lr, r4, r3	@ tmp636, pH264Ctx, tmp572
	add	r0, lr, #26880	@ tmp637, tmp636,
	add	r3, r3, #4	@ ivtmp.4434, tmp572,
	ldr	ip, [r1, #156]	@ tmp633, <variable>.pListX
	add	lr, r2, #4	@ tmp573, ivtmp.4437,
	cmp	r6, r3	@ D.40619, ivtmp.4434
	str	ip, [r2, #132]	@ tmp633, <variable>.pListX
	add	r2, lr, #4	@ ivtmp.4437, tmp573,
	ldr	r0, [r0, #156]	@ tmp639, <variable>.pListX
	str	r0, [lr, #132]	@ tmp639, <variable>.pListX
	bne	.L1269	@,
.L1268:
	cmp	r5, r7	@ list0idx, list0idx.4481
	bls	.L1270	@,
	add	lr, r7, #6720	@ tmp354, list0idx.4481,
	rsb	r6, r7, r5	@ tmp361, list0idx.4481, list0idx
	add	r3, lr, #38	@ tmp354, tmp354,
	add	r0, r4, #27136	@ tmp363, pH264Ctx,
	mov	r6, r6, asl #2	@ D.49666, tmp361,
	add	r2, r0, #32	@ tmp363, tmp363,
	add	r1, r4, r3, asl #2	@, tmp357, pH264Ctx, tmp354,
	mov	r3, #4	@ ivtmp.4428,
	add	r1, r1, r3	@ ivtmp.4427, tmp357,
	cmp	r3, r6	@ ivtmp.4428, D.49666
	sub	ip, r6, #4	@ tmp564, D.49666,
	ldr	lr, [r1], #4	@ tmp365, <variable>.pListX
	ubfx	ip, ip, #2, #1	@ tmp565, tmp564,,
	str	lr, [r2, #0]	@ tmp365, <variable>.pListX
	beq	.L1270	@,
	cmp	ip, #0	@ tmp565,
	beq	.L1271	@,
	add	r3, r4, #27136	@ tmp776, pH264Ctx,
	ldr	r0, [r1], #4	@ tmp777, <variable>.pListX
	add	r2, r3, #36	@ tmp776, tmp776,
	mov	r3, #8	@ ivtmp.4428,
	cmp	r3, r6	@ ivtmp.4428, D.49666
	str	r0, [r2, #0]	@ tmp777, <variable>.pListX
	beq	.L1270	@,
.L1271:
	mov	r2, r1	@ tmp566, ivtmp.4427
	add	ip, r4, r3	@ tmp642, pH264Ctx, ivtmp.4428
	ldr	lr, [r2], #4	@ tmp645, <variable>.pListX
	add	ip, ip, #27136	@ tmp643, tmp642,
	add	r0, r3, #4	@ tmp567, ivtmp.4428,
	add	r3, r0, #4	@ ivtmp.4428, tmp567,
	add	r0, r4, r0	@ tmp648, pH264Ctx, tmp567
	str	lr, [ip, #32]	@ tmp645, <variable>.pListX
	add	r0, r0, #27136	@ tmp649, tmp648,
	ldr	ip, [r1, #4]	@ tmp651, <variable>.pListX
	cmp	r3, r6	@ ivtmp.4428, D.49666
	add	r1, r2, #4	@ ivtmp.4427, tmp566,
	str	ip, [r0, #32]	@ tmp651, <variable>.pListX
	bne	.L1271	@,
.L1270:
	movw	lr, #26636	@ tmp368,
	movw	r2, #20728	@ tmp366,
	ldr	r1, [r4, lr]	@ temp.4554, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20724	@ tmp367,
	str	r5, [r4, r2]	@ list0idx, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ temp.4554,
	str	r5, [r4, r3]	@ list0idx, <variable>.CurrSlice.listXsize
	moveq	r6, r5	@ list0idx.4482, list0idx
	beq	.L1273	@,
	tst	r1, #1	@ temp.4554,
	add	r6, r4, #26368	@ ivtmp.4421, pH264Ctx,
	add	r3, r6, #192	@ ivtmp.4421, ivtmp.4421,
	mov	r2, #0	@ i.4517,
	bne	.L1277	@,
	ldr	r2, [r3, #0]	@ temp.4513, <variable>.DPB.fs_ltref
	ldrb	lr, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	lr, #3	@ <variable>.is_used,
	beq	.L1423	@,
.L1409:
	add	r3, r3, #4	@ ivtmp.4421, ivtmp.4421,
	mov	r2, #1	@ i.4517,
.L1277:
	ldr	r0, [r3, #0]	@ temp.4513, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	beq	.L1424	@,
.L1274:
	add	r2, r2, #1	@ tmp560, i.4517,
	mov	r6, r5	@ list0idx.4482, list0idx
	cmp	r2, r1	@ tmp560, temp.4554
	add	r0, r3, #4	@ tmp561, ivtmp.4421,
	bcs	.L1276	@,
.L1438:
	ldr	r3, [r3, #4]	@ temp.4513, <variable>.DPB.fs_ltref
	ldrb	r5, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, #3	@ <variable>.is_used,
	beq	.L1425	@,
.L1348:
	mov	r5, r6	@ list0idx.4482, list0idx.4482
.L1410:
	add	r3, r0, #4	@ ivtmp.4421, tmp561,
	add	r2, r2, #1	@ i.4517, tmp560,
	ldr	r0, [r3, #0]	@ temp.4513, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	bne	.L1274	@,
	b	.L1424	@
.L1234:
	movw	r1, #26632	@ tmp225,
	ldr	lr, [r4, r1]	@ temp.4511, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4511,
	moveq	r5, lr	@ list0idx.4539, temp.4511
	beq	.L1238	@,
	add	r3, r4, #26368	@ ivtmp.4398, pH264Ctx,
	sub	r2, lr, #1	@ tmp547, temp.4511,
	and	r0, r2, #1	@ tmp549, tmp547,
	ldr	r2, [r3, #128]!	@ D.40555, <variable>.DPB.fs_ref
	ldrb	r6, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1426	@,
.L1334:
	mov	r2, #1	@ i,
	cmp	r2, lr	@ i, temp.4511
	add	r3, r3, #4	@ ivtmp.4398, ivtmp.4398,
	bcs	.L1238	@,
	cmp	r0, #0	@ tmp549,
	beq	.L1240	@,
	ldr	r1, [r3, #0]	@ D.40555, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1427	@,
.L1336:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.4398, ivtmp.4398,
	cmp	r2, lr	@ i, temp.4511
	bcc	.L1240	@,
.L1238:
	add	lr, r4, #26880	@ D.40566, pH264Ctx,
	mov	r1, r5	@, list0idx.4539
	add	r6, lr, #156	@ D.40566, D.40566,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_pic_num_desc	@,
	movt	r3, #:upper16:compare_pic_by_pic_num_desc	@,
	mov	r0, r6	@, D.40566
	bl	qsort	@
	movw	r0, #26636	@ tmp241,
	ldr	r1, [r4, r0]	@ D.40576, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20724	@ tmp240,
	str	r5, [r4, r3]	@ list0idx.4539, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ D.40576,
	moveq	r0, r5	@ list0idx.4551, list0idx.4539
	beq	.L1242	@,
	add	r3, r4, #26368	@ ivtmp.4393, pH264Ctx,
	sub	r2, r1, #1	@ tmp542, D.40576,
	and	ip, r2, #1	@ tmp544, tmp542,
	ldr	r2, [r3, #192]!	@ D.40567, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1428	@,
.L1327:
	mov	r2, #1	@ i.4485,
	cmp	r2, r1	@ i.4485, D.40576
	add	r3, r3, #4	@ ivtmp.4393, ivtmp.4393,
	bcs	.L1406	@,
	cmp	ip, #0	@ tmp544,
	beq	.L1244	@,
	ldr	r0, [r3, #0]	@ D.40567, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1429	@,
.L1329:
	add	r2, r2, #1	@ i.4485, i.4485,
	add	r3, r3, #4	@ ivtmp.4393, ivtmp.4393,
	cmp	r2, r1	@ i.4485, D.40576
	bcc	.L1244	@,
.L1406:
	movw	ip, #20724	@ tmp254,
	ldr	r0, [r4, ip]	@ list0idx.4551, <variable>.CurrSlice.listXsize
	rsb	r1, r0, r5	@ prephitmp.4367, list0idx.4551, list0idx.4539
.L1242:
	add	r0, r6, r0, asl #2	@,, D.40566, list0idx.4551,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	movw	r1, #20724	@ tmp258,
	str	r5, [r4, r1]	@ list0idx.4539, <variable>.CurrSlice.listXsize
	b	.L1245	@
.L1431:
	add	sl, r7, #6720	@ tmp322, list0idx.4481,
	ldr	r3, [r3, #4]	@ temp.4499, <variable>.DPB.fs_ref
	add	ip, sl, #38	@ tmp322, tmp322,
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r1, #400	@ tmp328, temp.4499,
	add	sl, r4, ip, asl #2	@, tmp326, pH264Ctx, tmp322,
	cmp	r8, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	strge	r1, [sl, #4]	@ tmp328, <variable>.pListX
	addge	r7, r7, #1	@ list0idx.4481, list0idx.4481,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1430	@,
.L1371:
	add	r2, r2, #1	@ i.4502, tmp582,
	add	r3, r0, #4	@ ivtmp.4445, tmp583,
	cmp	r2, lr	@ i.4502, temp.4557
	bcs	.L1261	@,
.L1263:
	ldr	r1, [r3, #0]	@ temp.4499, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp582, i.4502,
	add	r0, r3, #4	@ tmp583, ivtmp.4445,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1431	@,
	ldr	r3, [r3, #4]	@ temp.4499, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1371	@,
.L1430:
	add	ip, r7, #6720	@ tmp835, list0idx.4481,
	add	sl, r3, #400	@ tmp839, temp.4499,
	add	r6, ip, #38	@ tmp835, tmp835,
	ldr	r3, [r3, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, r6, asl #2	@, tmp837, pH264Ctx, tmp835,
	cmp	r8, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r7, r7, #1	@ list0idx.4481, list0idx.4481,
	strge	sl, [r1, #4]	@ tmp839, <variable>.pListX
	b	.L1371	@
.L1433:
	ldr	r6, [r1, #400]	@ tmp230,
	bic	ip, r6, #-16777216	@ tmp228, tmp230,
	bic	r6, ip, #255	@ tmp228, tmp228,
	cmp	r6, #65536	@ tmp228,
	bne	.L1239	@,
	add	ip, r5, #6720	@ tmp231, list0idx.4539,
	add	r5, r5, #1	@ list0idx.4539, list0idx.4539,
	add	r6, ip, #38	@ tmp231, tmp231,
	add	r1, r1, #400	@ tmp237, D.40555,
	add	ip, r4, r6, asl #2	@, tmp235, pH264Ctx, tmp231,
	str	r1, [ip, #4]	@ tmp237, <variable>.pListX
.L1239:
	ldr	r3, [r3, #4]	@ D.40555, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1432	@,
.L1339:
	add	r2, r2, #1	@ i, tmp550,
	add	r3, r0, #4	@ ivtmp.4398, tmp551,
	cmp	r2, lr	@ i, temp.4511
	bcs	.L1238	@,
.L1240:
	ldr	r1, [r3, #0]	@ D.40555, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp550, i,
	add	r0, r3, #4	@ tmp551, ivtmp.4398,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1433	@,
	ldr	r3, [r3, #4]	@ D.40555, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1339	@,
.L1432:
	ldr	ip, [r3, #400]	@ tmp736,
	bic	r6, ip, #-16777216	@ tmp737, tmp736,
	bic	r1, r6, #255	@ tmp737, tmp737,
	cmp	r1, #65536	@ tmp737,
	bne	.L1339	@,
	add	ip, r5, #6720	@ tmp739, list0idx.4539,
	add	r3, r3, #400	@ tmp743, D.40555,
	add	r6, ip, #38	@ tmp739, tmp739,
	add	r5, r5, #1	@ list0idx.4539, list0idx.4539,
	add	r1, r4, r6, asl #2	@, tmp741, pH264Ctx, tmp739,
	str	r3, [r1, #4]	@ tmp743, <variable>.pListX
	b	.L1339	@
.L1435:
	add	r9, r5, #6720	@ tmp337, list0idx,
	ldr	r3, [r3, #4]	@ temp.4505, <variable>.DPB.fs_ref
	add	ip, r9, #38	@ tmp337, tmp337,
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r9, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r1, #400	@ tmp343, temp.4505,
	add	ip, r4, ip, asl #2	@, tmp341, pH264Ctx, tmp337,
	cmp	r9, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	strlt	r1, [ip, #4]	@ tmp343, <variable>.pListX
	addlt	r5, r5, #1	@ list0idx, list0idx,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1434	@,
.L1364:
	add	r2, r2, #1	@ i.4510, tmp577,
	add	r3, r0, #4	@ ivtmp.4440, tmp578,
	cmp	r2, r8	@ i.4510, temp.4556
	bcs	.L1411	@,
.L1267:
	ldr	r1, [r3, #0]	@ temp.4505, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp577, i.4510,
	add	r0, r3, #4	@ tmp578, ivtmp.4440,
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1435	@,
	ldr	r3, [r3, #4]	@ temp.4505, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1364	@,
.L1434:
	add	ip, r5, #6720	@ tmp806, list0idx,
	add	r6, r3, #400	@ tmp810, temp.4505,
	add	r1, ip, #38	@ tmp806, tmp806,
	ldr	r3, [r3, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, r1, asl #2	@, tmp808, pH264Ctx, tmp806,
	cmp	ip, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r5, r5, #1	@ list0idx, list0idx,
	strlt	r6, [r1, #4]	@ tmp810, <variable>.pListX
	b	.L1364	@
.L1437:
	ldr	lr, [r0, #400]	@ tmp246,
	bic	lr, lr, #-16777216	@ tmp244, tmp246,
	bic	lr, lr, #255	@ tmp244, tmp244,
	cmp	lr, #256	@ tmp244,
	bne	.L1243	@,
	add	lr, r5, #6720	@ tmp247, list0idx.4539,
	add	r5, r5, #1	@ list0idx.4539, list0idx.4539,
	add	lr, lr, #38	@ tmp247, tmp247,
	add	r0, r0, #400	@ tmp253, D.40567,
	add	lr, r4, lr, asl #2	@, tmp251, pH264Ctx, tmp247,
	str	r0, [lr, #4]	@ tmp253, <variable>.pListX
.L1243:
	ldr	r3, [r3, #4]	@ D.40567, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1436	@,
.L1332:
	add	r2, r2, #1	@ i.4485, tmp545,
	add	r3, ip, #4	@ ivtmp.4393, tmp546,
	cmp	r2, r1	@ i.4485, D.40576
	bcs	.L1406	@,
.L1244:
	ldr	r0, [r3, #0]	@ D.40567, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ tmp545, i.4485,
	add	ip, r3, #4	@ tmp546, ivtmp.4393,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #3	@ <variable>.is_reference,
	beq	.L1437	@,
	ldr	r3, [r3, #4]	@ D.40567, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1332	@,
.L1436:
	ldr	r0, [r3, #400]	@ tmp710,
	bic	lr, r0, #-16777216	@ tmp711, tmp710,
	bic	r0, lr, #255	@ tmp711, tmp711,
	cmp	r0, #256	@ tmp711,
	bne	.L1332	@,
	add	lr, r5, #6720	@ tmp713, list0idx.4539,
	add	r3, r3, #400	@ tmp717, D.40567,
	add	r0, lr, #38	@ tmp713, tmp713,
	add	r5, r5, #1	@ list0idx.4539, list0idx.4539,
	add	lr, r4, r0, asl #2	@, tmp715, pH264Ctx, tmp713,
	str	r3, [lr, #4]	@ tmp717, <variable>.pListX
	b	.L1332	@
.L1424:
	ldrb	lr, [r0, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	lr, #1	@ <variable>.frame.is_long_term,
	bne	.L1274	@,
	add	ip, r5, #6720	@ tmp372, list0idx,
	add	r6, r5, #6784	@ tmp379, list0idx,
	add	lr, ip, #38	@ tmp372, tmp372,
	add	ip, r6, #7	@ tmp379, tmp379,
	add	r2, r2, #1	@ tmp560, i.4517,
	add	r6, r5, #1	@ list0idx.4482, list0idx,
	add	lr, r4, lr, asl #2	@, tmp376, pH264Ctx, tmp372,
	add	r5, r4, ip, asl #2	@, tmp383, pH264Ctx, tmp379,
	cmp	r2, r1	@ tmp560, temp.4554
	add	r0, r0, #400	@ tmp378, temp.4513,
	str	r0, [lr, #4]	@ tmp378, <variable>.pListX
	str	r0, [r5, #4]	@ tmp378, <variable>.pListX
	add	r0, r3, #4	@ tmp561, ivtmp.4421,
	bcc	.L1438	@,
.L1276:
	movw	r1, #20724	@ tmp387,
	ldr	r5, [r4, r1]	@ list0idx, <variable>.CurrSlice.listXsize
	rsb	r1, r5, r6	@ prephitmp.4363, list0idx, list0idx.4482
.L1273:
	add	r0, sl, r5, asl #2	@,, ivtmp.4415, list0idx,
	mov	r2, #4	@,
	movw	r5, #20724	@ tmp391,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	ldr	ip, [r4, r5]	@ D.40577, <variable>.CurrSlice.listXsize
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	add	r0, ip, #33	@ tmp392, D.40577,
	rsb	r1, ip, r6	@, D.40577, list0idx.4482
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	mla	r0, r0, r2, sl	@, tmp392,, ivtmp.4415
	bl	qsort	@
	movw	r3, #20728	@ tmp397,
	mov	r1, r6	@ list0idx.4479, list0idx.4482
	str	r6, [r4, r3]	@ list0idx.4482, <variable>.CurrSlice.listXsize
	str	r6, [r4, r5]	@ list0idx.4482, <variable>.CurrSlice.listXsize
.L1278:
	cmp	r6, #1	@ list0idx.4482,
	bls	.L1292	@,
	ldr	ip, [sl, #0]	@ tmp475, <variable>.pListX
	sub	r0, r6, #1	@ tmp552, list0idx.4482,
	ldr	r3, [sl, #132]	@ tmp476, <variable>.pListX
	and	r0, r0, #1	@ tmp554, tmp552,
	cmp	ip, r3	@ tmp475, tmp476
	bne	.L1251	@,
	mov	r3, #1	@ j,
	cmp	r3, r6	@ j, list0idx.4482
	add	sl, sl, #4	@ ivtmp.4415, ivtmp.4415,
	bcs	.L1407	@,
	cmp	r0, #0	@ tmp554,
	beq	.L1293	@,
	ldr	r2, [sl, #0]	@ tmp744, <variable>.pListX
	ldr	r0, [sl, #132]	@ tmp745, <variable>.pListX
	cmp	r2, r0	@ tmp744, tmp745
	bne	.L1251	@,
	mov	r3, #2	@ j,
	cmp	r3, r6	@ j, list0idx.4482
	add	sl, sl, #4	@ ivtmp.4415, ivtmp.4415,
	bcc	.L1293	@,
	b	.L1407	@
.L1439:
	ldr	r0, [sl, #4]	@ tmp677, <variable>.pListX
	add	sl, r2, #4	@ ivtmp.4415, tmp556,
	ldr	r2, [r2, #132]	@ tmp678, <variable>.pListX
	cmp	r0, r2	@ tmp677, tmp678
	bne	.L1251	@,
	cmp	r3, r6	@ j, list0idx.4482
	bcs	.L1407	@,
.L1293:
	ldr	ip, [sl, #0]	@ tmp672, <variable>.pListX
	add	r3, r3, #1	@ tmp555, j,
	ldr	r0, [sl, #132]	@ tmp673, <variable>.pListX
	add	r2, sl, #4	@ tmp556, ivtmp.4415,
	add	r3, r3, #1	@ j, tmp555,
	cmp	ip, r0	@ tmp672, tmp673
	beq	.L1439	@,
	b	.L1251	@
.L1425:
	ldrb	r5, [r3, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	r5, #1	@ <variable>.frame.is_long_term,
	bne	.L1348	@,
	add	ip, r6, #6720	@ tmp764, list0idx.4482,
	add	r5, r6, #6784	@ tmp770, list0idx.4482,
	add	lr, ip, #38	@ tmp764, tmp764,
	add	ip, r5, #7	@ tmp770, tmp770,
	add	r3, r3, #400	@ tmp768, temp.4513,
	add	r5, r6, #1	@ list0idx.4482, list0idx.4482,
	add	lr, r4, lr, asl #2	@, tmp766, pH264Ctx, tmp764,
	add	ip, r4, ip, asl #2	@, tmp772, pH264Ctx, tmp770,
	str	r3, [lr, #4]	@ tmp768, <variable>.pListX
	str	r3, [ip, #4]	@ tmp768, <variable>.pListX
	b	.L1410	@
.L1417:
	movw	r1, #50112	@ tmp299,
	movw	r0, #27036	@ tmp298,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	r2, lr, #400	@ tmp301, <variable>.CurrPic.frame_store,
	str	r2, [r4, r0]	@ tmp301, <variable>.pListX
	b	.L1254	@
.L1419:
	ldr	sl, [r2, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	r8, sl	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	sl, r4, #26880	@ tmp818, pH264Ctx,
	addge	r2, r2, #400	@ tmp819, temp.4499,
	addge	sl, sl, #156	@ tmp818, tmp818,
	movge	r7, #1	@ list0idx.4481,
	strge	r2, [sl, #0]	@ tmp819, <variable>.pListX
	b	.L1366	@
.L1426:
	ldr	ip, [r2, #400]	@ tmp718,
	bic	r1, ip, #-16777216	@ tmp719, tmp718,
	bic	r6, r1, #255	@ tmp719, tmp719,
	cmp	r6, #65536	@ tmp719,
	addeq	r6, r4, #26880	@ tmp724, pH264Ctx,
	addeq	r2, r2, #400	@ tmp725, D.40555,
	addeq	r6, r6, #156	@ tmp724, tmp724,
	moveq	r5, #1	@ list0idx.4539,
	streq	r2, [r6, #0]	@ tmp725, <variable>.pListX
	b	.L1334	@
.L1428:
	ldr	lr, [r2, #400]	@ tmp692,
	bic	r0, lr, #-16777216	@ tmp693, tmp692,
	bic	lr, r0, #255	@ tmp693, tmp693,
	cmp	lr, #256	@ tmp693,
	addeq	lr, r5, #6720	@ tmp694, list0idx.4539,
	addeq	r2, r2, #400	@ tmp699, D.40567,
	addeq	r5, r5, #1	@ list0idx.4539, list0idx.4539,
	addeq	lr, r4, lr, asl #2	@, tmp697, pH264Ctx, tmp694,
	streq	r2, [lr, #156]	@ tmp699, <variable>.pListX
	b	.L1327	@
.L1423:
	ldrb	r6, [r2, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	r6, #1	@ <variable>.frame.is_long_term,
	bne	.L1409	@,
	add	r6, r5, #6720	@ tmp750, list0idx,
	add	lr, r5, #6784	@ tmp756, list0idx,
	add	r2, r2, #400	@ tmp755, temp.4513,
	add	r5, r5, #1	@ list0idx.4482, list0idx,
	add	ip, r4, r6, asl #2	@, tmp753, pH264Ctx, tmp750,
	add	r0, r4, lr, asl #2	@, tmp759, pH264Ctx, tmp756,
	str	r2, [ip, #156]	@ tmp755, <variable>.pListX
	str	r2, [r0, #32]	@ tmp755, <variable>.pListX
	b	.L1409	@
.L1421:
	ldr	r1, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	ldr	r6, [r2, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	cmp	r1, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	bge	.L1359	@,
	add	r1, r7, #6720	@ tmp786, list0idx.4481,
	add	r2, r2, #400	@ tmp790, temp.4505,
	add	r6, r1, #38	@ tmp786, tmp786,
	add	r5, r7, #1	@ list0idx, list0idx.4481,
	add	ip, r4, r6, asl #2	@, tmp788, pH264Ctx, tmp786,
	str	r2, [ip, #4]	@ tmp790, <variable>.pListX
	b	.L1359	@
.L1422:
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	ip, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r6, r5, #6720	@ tmp796, list0idx,
	addlt	r1, r1, #400	@ tmp801, temp.4505,
	addlt	r5, r5, r2	@ list0idx, list0idx,
	addlt	r6, r4, r6, asl #2	@, tmp799, pH264Ctx, tmp796,
	strlt	r1, [r6, #156]	@ tmp801, <variable>.pListX
	b	.L1361	@
.L1429:
	ldr	lr, [r0, #400]	@ tmp702,
	bic	ip, lr, #-16777216	@ tmp703, tmp702,
	bic	lr, ip, #255	@ tmp703, tmp703,
	cmp	lr, #256	@ tmp703,
	addeq	lr, r5, #6720	@ tmp704, list0idx.4539,
	addeq	r0, r0, #400	@ tmp709, D.40567,
	addeq	r5, r5, r2	@ list0idx.4539, list0idx.4539,
	addeq	lr, r4, lr, asl #2	@, tmp707, pH264Ctx, tmp704,
	streq	r0, [lr, #156]	@ tmp709, <variable>.pListX
	b	.L1329	@
.L1427:
	ldr	r0, [r1, #400]	@ tmp728,
	bic	ip, r0, #-16777216	@ tmp729, tmp728,
	bic	r6, ip, #255	@ tmp729, tmp729,
	cmp	r6, #65536	@ tmp729,
	addeq	r6, r5, #6720	@ tmp730, list0idx.4539,
	addeq	r1, r1, #400	@ tmp735, D.40555,
	addeq	r5, r5, r2	@ list0idx.4539, list0idx.4539,
	addeq	r6, r4, r6, asl #2	@, tmp733, pH264Ctx, tmp730,
	streq	r1, [r6, #156]	@ tmp735, <variable>.pListX
	b	.L1336	@
.L1420:
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	ip, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r6, r7, #6720	@ tmp825, list0idx.4481,
	addge	r1, r1, #400	@ tmp830, temp.4499,
	addge	r7, r7, r2	@ list0idx.4481, list0idx.4481,
	addge	r6, r4, r6, asl #2	@, tmp828, pH264Ctx, tmp825,
	strge	r1, [r6, #156]	@ tmp830, <variable>.pListX
	b	.L1368	@
.L1407:
	movw	r3, #27168	@ tmp497,
	movw	r2, #27172	@ tmp499,
	ldr	ip, [r4, r3]	@ tmp_s, <variable>.pListX
	movw	r1, #20724	@ tmp502,
	ldr	r0, [r4, r2]	@ <variable>.pListX, <variable>.pListX
	ldr	r1, [r4, r1]	@ list0idx.4479, <variable>.CurrSlice.listXsize
	str	ip, [r4, r2]	@ tmp_s, <variable>.pListX
	str	r0, [r4, r3]	@ <variable>.pListX, <variable>.pListX
	b	.L1292	@
.L1412:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.40605,
	b	.L1256	@
.L1418:
	mov	r1, r6	@ list0idx.4479, list0idx.4482
	b	.L1278	@
	.fnend
	.size	InitListX, .-InitListX
	.align	2
	.global	DecList
	.type	DecList, %function
DecList:
	.fnstart
.LFB1991:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #26628	@ tmp149,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, r3]	@ D.45855, <variable>.DPB.used_size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r6, #0	@ D.45855,
	mvneq	r5, #0	@ nearest_pic_id,
	beq	.L1443	@,
	movw	r1, #26432	@ tmp152,
	cmp	r6, #1	@ D.45855,
	ldr	r0, [r0, r1]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #50132	@ tmp150,
	ldr	ip, [r4, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r5, #0	@ nearest_pic_id,
	ldr	r1, [r0, #524]	@ nearest_poc, <variable>.poc
	bls	.L1443	@,
	sub	r6, r6, #1	@ tmp154, D.45855,
	rsb	r1, r1, ip	@ tmp153, nearest_poc, curr_poc
	cmp	r1, #0	@ tmp153,
	mov	r5, #0	@ nearest_pic_id,
	mov	r6, r6, asl #2	@ D.49853, tmp154,
	rsblt	r1, r1, #0	@ nearest_poc_diff, tmp153
	tst	r6, #4	@ D.49853,
	mov	r3, r5	@ ivtmp.4597, nearest_pic_id
	bne	.L1446	@,
	add	r2, r4, #26368	@ tmp189, pH264Ctx,
	add	r3, r2, #68	@ tmp189, tmp189,
	ldr	r2, [r3, #0]	@ D.45852, <variable>.DPB.fs
	ldr	r0, [r2, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r0, ip	@ tmp192, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp192,
	rsblt	r3, r3, #0	@ nearest_poc_diff.4600, tmp192
	cmp	r3, r1	@ nearest_poc_diff.4600, nearest_poc_diff
	ldrlt	r5, [r2, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r3, r1	@ nearest_poc_diff.4600, nearest_poc_diff
	mov	r1, r3	@ nearest_poc_diff, nearest_poc_diff.4600
	mov	r3, #4	@ ivtmp.4597,
.L1446:
	add	r0, r4, r3	@ tmp155, pH264Ctx, ivtmp.4597
	add	r3, r3, #4	@ tmp177, ivtmp.4597,
	add	r2, r0, #26368	@ tmp157, tmp155,
	ldr	r0, [r2, #68]	@ D.45852, <variable>.DPB.fs
	ldr	r2, [r0, #524]	@ <variable>.poc, <variable>.poc
	rsb	r2, r2, ip	@ tmp158, <variable>.poc, curr_poc
	cmp	r2, #0	@ tmp158,
	rsblt	r2, r2, #0	@ nearest_poc_diff.4600, tmp158
	cmp	r2, r1	@ nearest_poc_diff.4600, nearest_poc_diff
	movge	r2, r1	@ nearest_poc_diff.4600, nearest_poc_diff
	ldrlt	r5, [r0, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	cmp	r3, r6	@ tmp177, D.49853
	add	r0, r4, r3	@ tmp180, pH264Ctx, tmp177
	add	r1, r0, #26368	@ tmp181, tmp180,
	beq	.L1443	@,
	ldr	r0, [r1, #68]	@ D.45852, <variable>.DPB.fs
	ldr	r1, [r0, #524]	@ <variable>.poc, <variable>.poc
	rsb	r1, r1, ip	@ tmp185, <variable>.poc, curr_poc
	cmp	r1, #0	@ tmp185,
	rsblt	r1, r1, #0	@ nearest_poc_diff.4600, tmp185
	cmp	r1, r2	@ nearest_poc_diff.4600, nearest_poc_diff.4600
	ldrlt	r5, [r0, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r1, r2	@ nearest_poc_diff.4600, nearest_poc_diff.4600
.L1464:
	add	r3, r3, #4	@ ivtmp.4597, tmp177,
	b	.L1446	@
.L1443:
	movw	r0, #20680	@ tmp163,
	movw	r2, #22312	@ tmp160,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	ip, #22308	@ tmp161,
	str	r5, [r4, r2]	@ nearest_pic_id, <variable>.CurrSlice.picid_nearpoc
	mvn	r5, #0	@ tmp162,
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	str	r5, [r4, ip]	@ tmp162, <variable>.CurrSlice.picid_refidx0
	beq	.L1465	@,
	mov	r0, r4	@, pH264Ctx
	bl	InitListX	@
	cmp	r0, #0	@,
	beq	.L1449	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.40797, tmp162
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1449:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, r4	@, pH264Ctx
	bl	ReorderListX	@
	mov	r0, r4	@, pH264Ctx
	bl	RepairList	@
	cmp	r0, #0	@,
	movne	r0, r5	@ D.40797, tmp162
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r4	@, pH264Ctx
	bl	FindMinRefIdx	@
	movw	r0, #27036	@ tmp169,
	ldr	r2, [r4, r0]	@ D.40805, <variable>.pListX
	movw	r3, #22308	@ tmp171,
	cmp	r2, #0	@ D.40805,
	ldrne	r2, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrne	r5, [r2, #184]	@ iftmp.671, <variable>.fs_image.image_id
	str	r5, [r4, r3]	@ iftmp.671, <variable>.CurrSlice.picid_refidx0
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, #0	@ D.40797,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1465:
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
.LFB1968:
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
	mov	r6, sp	@ tmp183,
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
	uxtbne	ip, ip	@ iftmp.621, tmp160
	strb	ip, [sp, #5]	@ iftmp.621, FspInstCfg.s32ExpectedDecFsNum
	ldr	r2, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	cmp	r2, #24	@ <variable>.eCapLevel,
	strb	r3, [sp, #4]	@ tmp169, FspInstCfg.s32UserDec
	strb	r5, [sp, #3]	@ tmp171, FspInstCfg.s8SubLevelEnable
	ldrneb	r2, [sp, #64]	@ zero_extendqisi2	@ iftmp.622, PmvBlkNum
	moveq	r2, #1	@ iftmp.622,
	strb	r2, [sp, #8]	@ iftmp.622, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	cmp	r0, #0	@,
	bne	.L1471	@,
	ldr	lr, [r4, #0]	@ temp.4628, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, r5	@ D.39911, tmp171
	bne	.L1471	@,
.L1473:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L1471:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.39911,
	b	.L1473	@
	.fnend
	.size	H264_ArrangeVahbMem, .-H264_ArrangeVahbMem
	.align	2
	.global	GetImagePara
	.type	GetImagePara, %function
GetImagePara:
	.fnstart
.LFB1950:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #20692	@ tmp161,
	movw	r4, #13584	@ tmp163,
	ldr	r2, [r0, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	lr, [r0, r4]	@ <variable>.PPS, <variable>.PPS
	mov	r4, r1	@ pFrameStore, pFrameStore
	ldr	ip, [r1, #148]	@ prephitmp.4669, <variable>.fs_image.format
	mov	r1, #2208	@ tmp165,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #13580	@ tmp159,
	mla	r3, r1, r2, lr	@ tmp166, tmp165, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	bic	r1, ip, #768	@ prephitmp.4669, prephitmp.4669,
	movw	r2, #51340	@ tmp173,
	ldr	ip, [r5, r0]	@ <variable>.SPS, <variable>.SPS
	bic	r1, r1, #3	@ prephitmp.4669, prephitmp.4669,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	mov	lr, #4000	@ tmp169,
	ldr	r3, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	str	r1, [r4, #148]	@ prephitmp.4669, <variable>.fs_image.format
	ldr	r2, [r5, r2]	@ <variable>.frame_rate, <variable>.frame_rate
	mla	r3, lr, r3, ip	@ sps, tmp169, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	r2, r2, asl #10	@ tmp175, <variable>.frame_rate,
	str	r2, [r4, #176]	@ tmp175, <variable>.fs_image.frame_rate
	cmp	r0, #3	@ <variable>.is_used,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.is_used
	b	.L1476	@
.L1480:
	.word	.L1477
	.word	.L1478
	.word	.L1479
	.word	.L1477
.L1477:
	ldrb	r6, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r6, #0	@ <variable>.frame.structure,
	bne	.L1481	@,
	ldr	r6, [r4, #536]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	mov	lr, #3072	@ prephitmp.4647,
	ldr	r7, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	cmp	r6, #0	@ <variable>.MbaffFrameFlag,
	ldr	ip, [r4, #540]	@ pic_type, <variable>.pic_type
	moveq	r6, #512	@ prephitmp.4682,
	movne	r6, #768	@ prephitmp.4682,
	str	r7, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
.L1483:
	ldr	r7, [r4, #452]	@ D.38820, <variable>.top_field.poc
	ldr	r2, [r4, #488]	@ D.38821, <variable>.bottom_field.poc
	cmp	r7, r2	@ D.38820, D.38821
	beq	.L1510	@,
	movgt	r7, #0	@, top_field_first
	movle	r7, #1	@, top_field_first
.L1494:
	movw	r2, #26420	@ tmp191,
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ D.38835, <variable>.PicTimingSEI.pic_struct
	cmp	r2, #3	@ D.38835,
	moveq	r7, #4096	@ prephitmp.4651,
	beq	.L1496	@,
	cmp	r2, #4	@ D.38835,
	movne	r7, r7, asl #12	@ prephitmp.4651, top_field_first,
	moveq	r7, #0	@ prephitmp.4651,
.L1496:
	orr	r2, r6, lr	@ tmp192, prephitmp.4682, prephitmp.4647
	bic	lr, r1, #12288	@ tmp193, prephitmp.4669,
	orr	r1, r2, lr	@ tmp194, tmp192, tmp193
	and	r2, ip, #3	@ tmp195, pic_type,
	orr	lr, r1, r2	@ tmp196, tmp194, tmp195
	orr	ip, lr, r7	@ tmp197, tmp196, prephitmp.4651
	str	ip, [r4, #148]	@ tmp197, <variable>.fs_image.format
.L1476:
	ldrb	lr, [r3, #18]	@ zero_extendqisi2	@ D.38860, <variable>.frame_mbs_only_flag
	mov	r2, #1	@ tmp209,
	str	lr, [r4, #352]	@ D.38860, <variable>.fs_image.optm_inf.IsProgressiveFrm
	str	lr, [r4, #348]	@ D.38860, <variable>.fs_image.optm_inf.IsProgressiveSeq
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_parameters_present_flag,
	ldrne	ip, [r3, #68]	@ iftmp.544, <variable>.vui_seq_parameters.matrix_coefficients
	str	r2, [r4, #356]	@ tmp209, <variable>.fs_image.optm_inf.RealFrmRate
	str	ip, [r4, #360]	@ iftmp.544, <variable>.fs_image.optm_inf.MatrixCoef
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	ble	.L1500	@,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r3, #0	@ <variable>.frame.structure,
	beq	.L1511	@,
.L1500:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r4	@, pFrameStore
	bl	ExchangePts	@
	movw	r3, #26384	@ tmp216,
	ldrsb	r0, [r5, r3]	@ <variable>.FramePackSEI.frame_packing_dec_ok, <variable>.FramePackSEI.frame_packing_dec_ok
	cmp	r0, #0	@ <variable>.FramePackSEI.frame_packing_dec_ok,
	beq	.L1501	@,
	movw	r1, #26400	@ tmp218,
	ldr	r3, [r5, r1]	@ D.38879, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	r3, #3	@ D.38879,
	moveq	r3, #1	@ tmp219,
	streq	r3, [r4, #288]	@ tmp219, <variable>.fs_image.eFramePackingType
	beq	.L1501	@,
	cmp	r3, #4	@ D.38879,
	moveq	r3, #2	@ tmp220,
	streq	r3, [r4, #288]	@ tmp220, <variable>.fs_image.eFramePackingType
	beq	.L1501	@,
	cmp	r3, #5	@ D.38879,
	moveq	r3, #3	@ tmp221,
	streq	r3, [r4, #288]	@ tmp221, <variable>.fs_image.eFramePackingType
	beq	.L1501	@,
	mov	r2, #0	@ tmp222,
	str	r2, [r4, #288]	@ tmp222, <variable>.fs_image.eFramePackingType
	bl	vfmw_dprint_nothing	@
.L1501:
	movw	ip, #52840	@ tmp223,
	ldr	r1, [r4, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pstLogicFsImage,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r1, r4, #8	@, pFrameStore,
	mov	r2, #392	@,
	bl	memcpy	@
	mov	r2, #0	@ tmp231,
	str	r2, [r5, #300]	@ tmp231, <variable>.ImageDnr.video_standard
	mov	r1, #1	@ tmp234,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	r1, [r5, #295]	@ tmp234, <variable>.ImageDnr.use_pic_qp_en
	cmp	r3, #0	@ <variable>.frame.structure,
	movne	r3, #4	@, iftmp.546,
	strb	r3, [r5, #288]	@ iftmp.546, <variable>.ImageDnr.pic_structure
	ldr	r0, [r4, #428]	@ D.38899, <variable>.frame.MaxQp
	strb	r1, [r5, #293]	@ tmp234, <variable>.ImageDnr.chroma_format_idc
	str	r0, [r5, #308]	@ D.38899, <variable>.ImageDnr.QP_U
	str	r0, [r5, #304]	@ D.38899, <variable>.ImageDnr.QP_Y
	str	r0, [r5, #312]	@ D.38899, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1511:
	cmp	r0, #3	@ <variable>.is_used,
	ldreq	r3, [r4, #148]	@ <variable>.fs_image.format, <variable>.fs_image.format
	biceq	r3, r3, #768	@ tmp215, <variable>.fs_image.format,
	streq	r3, [r4, #148]	@ tmp215, <variable>.fs_image.format
	b	.L1500	@
.L1479:
	ldr	ip, [r4, #540]	@ <variable>.pic_type, <variable>.pic_type
	ldr	lr, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	and	r2, ip, #3	@ tmp198, <variable>.pic_type,
	orr	r1, r1, r2	@ tmp200, prephitmp.4669, tmp198
	orr	ip, r1, #2816	@ tmp201, tmp200,
	str	lr, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	ip, [r4, #148]	@ tmp201, <variable>.fs_image.format
	b	.L1476	@
.L1478:
	ldr	lr, [r4, #540]	@ <variable>.pic_type, <variable>.pic_type
	ldr	r2, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	and	ip, lr, #3	@ tmp203, <variable>.pic_type,
	orr	lr, r1, ip	@ tmp205, prephitmp.4669, tmp203
	orr	r1, lr, #1792	@ tmp206, tmp205,
	str	r2, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	r1, [r4, #148]	@ tmp206, <variable>.fs_image.format
	b	.L1476	@
.L1481:
	movw	sl, #52836	@ tmp180,
	ldr	r8, [r4, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldr	r2, [r5, sl]	@ D.38804, <variable>.out_error_thr
	cmp	r8, r2	@ <variable>.top_field.err_level, D.38804
	bhi	.L1512	@,
	ldr	sl, [r4, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.38804, <variable>.bottom_field.err_level
	bcc	.L1487	@,
.L1485:
	ldr	r6, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	mov	lr, #3	@ valid_field,
	ldr	ip, [r4, #540]	@ pic_type, <variable>.pic_type
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	str	r6, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
.L1488:
	ldrb	r6, [r4, #3]	@ zero_extendqisi2	@ D.38812, <variable>.mode_skip_flag
	cmp	r6, #1	@ D.38812,
	streq	sl, [r4, #188]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	moveq	lr, #2	@ valid_field,
	beq	.L1490	@,
	cmp	r6, #2	@ D.38812,
	streq	r8, [r4, #188]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r7	@ pic_type, pic_type
	moveq	lr, #1	@ valid_field,
.L1490:
	mov	lr, lr, asl #10	@ prephitmp.4647, valid_field,
	mov	r6, #768	@ prephitmp.4682,
	str	r7, [r4, #140]	@ pic_type, <variable>.fs_image.top_fld_type
	str	r2, [r4, #144]	@ <variable>.bottom_field.pic_type, <variable>.fs_image.bottom_fld_type
	b	.L1483	@
.L1487:
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	mov	lr, #1	@ valid_field,
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	str	r8, [r4, #188]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	mov	ip, r7	@ pic_type, pic_type
	b	.L1488	@
.L1510:
	ldr	r2, [r4, #152]	@ <variable>.fs_image.image_width, <variable>.fs_image.image_width
	cmp	r2, #720	@ <variable>.fs_image.image_width,
	movne	r7, #1	@ top_field_first,
	bne	.L1494	@,
	ldr	r7, [r4, #156]	@ <variable>.fs_image.image_height, <variable>.fs_image.image_height
	subs	r7, r7, #480	@ top_field_first, <variable>.fs_image.image_height,
	movne	r7, #1	@ top_field_first
	b	.L1494	@
.L1512:
	ldr	sl, [r4, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.38804, <variable>.bottom_field.err_level
	bcc	.L1485	@,
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	mov	lr, #2	@ valid_field,
	str	sl, [r4, #188]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	mov	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	b	.L1488	@
	.fnend
	.size	GetImagePara, .-GetImagePara
	.align	2
	.global	RemoveFrameStoreOutDPB
	.type	RemoveFrameStoreOutDPB, %function
RemoveFrameStoreOutDPB:
	.fnstart
.LFB1946:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r1, #6592	@ tmp202, pos,
	add	r5, r7, #16	@ tmp201, tmp202,
	mov	r6, r1	@ pos, pos
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r0, r5, asl #2]	@ D.38592, <variable>.DPB.fs
	cmp	r3, #0	@ D.38592,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r3, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	movw	r1, #26904	@ tmp152,
	ldr	r2, [r0, r1]	@ D.38597, <variable>.APC.used_size
	movw	r1, #26904	@ tmp153,
	add	lr, r3, #6656	@ tmp144, <variable>.apc_idc,
	ldr	r3, [r4, r5, asl #2]	@ tmp158, <variable>.DPB.fs
	add	ip, lr, #4	@ tmp144, tmp144,
	cmp	r2, #0	@ D.38597,
	subne	r2, r2, #1	@ iftmp.533, D.38597,
	str	r2, [r4, r1]	@ iftmp.533, <variable>.APC.used_size
	add	r8, r0, ip, asl #2	@, tmp149, pH264Ctx, tmp144,
	mov	r0, #0	@ tmp151,
	str	r0, [r8, #4]	@ tmp151, <variable>.APC.is_used
	movw	r8, #52840	@ tmp154,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogic
	beq	.L1517	@,
	ldrsb	r2, [r0, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r2, #3	@ <variable>.s32DispState,
	beq	.L1518	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp165, <variable>.DPB.fs
	mov	r2, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L1518:
	ldr	lr, [r4, r5, asl #2]	@ tmp171, <variable>.DPB.fs
	movw	r3, #52840	@ tmp167,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
.L1517:
	ldr	r3, [r4, r5, asl #2]	@ tmp175, <variable>.DPB.fs
	mov	ip, #0	@ tmp176,
	movw	r1, #26628	@ tmp188,
	strb	ip, [r3, #1]	@ tmp176, <variable>.is_used
	ldr	lr, [r4, r5, asl #2]	@ tmp180, <variable>.DPB.fs
	strb	ip, [lr, #4]	@ tmp176, <variable>.is_in_dpb
	ldr	r2, [r4, r5, asl #2]	@ tmp185, <variable>.DPB.fs
	strb	ip, [r2, #2]	@ tmp176, <variable>.is_reference
	ldr	r0, [r4, r1]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	sub	ip, r0, #1	@ D.38613, <variable>.DPB.used_size,
	cmp	r6, ip	@ pos, D.38613
	bcs	.L1519	@,
	add	r7, r7, #17	@ tmp190, tmp202,
	add	r1, r6, #1	@ i, pos,
	cmp	r1, ip	@ i, D.38613
	mvn	r2, r6	@ tmp204, pos
	add	r7, r4, r7, asl #2	@, ivtmp.4717, pH264Ctx, tmp190,
	add	r6, r2, ip	@ tmp203, tmp204, D.38613
	and	r6, r6, #1	@ tmp205, tmp203,
	add	r2, r7, #4	@ ivtmp.4717, ivtmp.4717,
	ldr	r0, [r7, #0]	@ tmp193, <variable>.DPB.fs
	str	r0, [r7, #-4]	@ tmp193, <variable>.DPB.fs
	bcs	.L1519	@,
	cmp	r6, #0	@ tmp205,
	beq	.L1520	@,
	ldr	lr, [r2, #0]	@ tmp214, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	cmp	r1, ip	@ i, D.38613
	str	lr, [r2, #-4]	@ tmp214, <variable>.DPB.fs
	add	r2, r2, #4	@ ivtmp.4717, ivtmp.4717,
	bcs	.L1519	@,
.L1520:
	ldr	r0, [r2, #0]	@ tmp211, <variable>.DPB.fs
	add	r1, r1, #2	@ i, i,
	ldr	r3, [r2, #4]	@ tmp213, <variable>.DPB.fs
	cmp	r1, ip	@ i, D.38613
	mov	lr, r2	@ tmp207, ivtmp.4717
	str	r0, [r2, #-4]	@ tmp211, <variable>.DPB.fs
	str	r3, [lr], #4	@ tmp213, <variable>.DPB.fs
	add	r2, lr, #4	@ ivtmp.4717, tmp207,
	bcc	.L1520	@,
.L1519:
	movw	lr, #26628	@ tmp197,
	add	r0, ip, #6592	@ tmp194, D.38613,
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
.LFB1947:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ pH264Ctx, pH264Ctx
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L1576	@,
	movw	r3, #26628	@ tmp144,
	ldr	sl, [r4, r3]	@ k, <variable>.DPB.used_size
	cmp	sl, #0	@ k,
	beq	.L1531	@,
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
	beq	.L1569	@,
	ldrsh	r7, [r0, #0]	@ tmp213,* pstLogicFs
	cmp	r7, #0	@ tmp213,
	bne	.L1541	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4747, <variable>.DPB.fs
	ldrb	lr, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #0	@ <variable>.is_reference,
	bne	.L1542	@,
	ldrsb	r2, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	r2, #0	@ <variable>.s32IsRef,
	beq	.L1542	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	mov	r2, r5	@, tmp189
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4747, <variable>.DPB.fs
.L1542:
	str	fp, [r3, #508]	@ tmp188, <variable>.logic_fs_id
	ldr	r1, [r4, r6, asl #2]	@ tmp217, <variable>.DPB.fs
	strb	r9, [r1, #2]	@ tmp189, <variable>.is_reference
.L1569:
	ldr	ip, [r4, r6, asl #2]	@ temp.4763, <variable>.DPB.fs
	ldr	r3, [ip, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, #1	@ <variable>.eFoState,
	movne	r0, #0	@, tmp221
	moveq	r0, #1	@, tmp221
	strb	r0, [ip, #4]	@ tmp221, <variable>.is_in_dpb
.L1541:
	ldr	r3, [r4, r6, asl #2]	@ temp.4767, <variable>.DPB.fs
	ldrb	r7, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r7, #0	@ <variable>.is_reference,
	beq	.L1560	@,
.L1543:
	mov	r5, #1	@ j,
.L1561:
	mov	r7, #1	@ i,
	cmp	sl, r7	@ k, i
	bls	.L1531	@,
	ldr	r6, [sp, #4]	@, %sfp
	cmp	r6, #0	@,
	beq	.L1537	@,
	add	r1, r5, #6592	@ tmp232, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r1, #16	@ tmp232, tmp232,
	ldr	ip, [r4, r6, asl #2]	@ tmp233, <variable>.DPB.fs
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1577	@,
	ldrsh	lr, [r0, #0]	@ tmp239,* pstLogicFs
	cmp	lr, #0	@ tmp239,
	beq	.L1578	@,
.L1552:
	ldr	r3, [r4, r6, asl #2]	@ temp.4767, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1554	@,
.L1567:
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1554	@,
	ldr	ip, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	ip, #1	@ <variable>.eFoState,
	beq	.L1554	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	add	r7, r7, #1	@ i, tmp193,
	bl	RemoveFrameStoreOutDPB	@
	cmp	sl, r7	@ k, i
	bls	.L1531	@,
.L1537:
	add	r6, r5, #6592	@ tmp197, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r6, #16	@ tmp197, tmp197,
	ldr	ip, [r4, r6, asl #2]	@ tmp198, <variable>.DPB.fs
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1532	@,
	ldrsh	lr, [r0, #0]	@ tmp151,* pstLogicFs
	cmp	lr, #0	@ tmp151,
	bne	.L1533	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4747, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1534	@,
	ldrsb	r1, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	r1, #0	@ <variable>.s32IsRef,
	bne	.L1579	@,
.L1534:
	str	fp, [r3, #508]	@ tmp188, <variable>.logic_fs_id
	ldr	ip, [r4, r6, asl #2]	@ tmp164, <variable>.DPB.fs
	strb	r9, [ip, #2]	@ tmp189, <variable>.is_reference
	ldr	r3, [r4, r6, asl #2]	@ temp.4763, <variable>.DPB.fs
	ldr	r2, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r2, #1	@ <variable>.eFoState,
	movne	r0, #0	@, tmp170
	moveq	r0, #1	@, tmp170
	strb	r0, [r3, #4]	@ tmp170, <variable>.is_in_dpb
.L1533:
	ldr	r3, [r4, r6, asl #2]	@ temp.4767, <variable>.DPB.fs
	ldrb	r6, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #0	@ <variable>.is_reference,
	bne	.L1535	@,
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1535	@,
	ldr	ip, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	ip, #1	@ <variable>.eFoState,
	beq	.L1535	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	bl	RemoveFrameStoreOutDPB	@
.L1536:
	add	r2, r5, #6592	@ tmp206, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r2, #16	@ tmp206, tmp206,
	add	r7, r7, #1	@ tmp193, i,
	ldr	r3, [r4, r6, asl #2]	@ tmp207, <variable>.DPB.fs
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1570	@,
	ldrsh	r2, [r0, #0]	@ tmp258,* pstLogicFs
	cmp	r2, #0	@ tmp258,
	bne	.L1552	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4747, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1553	@,
	ldrsb	lr, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L1580	@,
.L1553:
	str	fp, [r3, #508]	@ tmp188, <variable>.logic_fs_id
	ldr	ip, [r4, r6, asl #2]	@ tmp262, <variable>.DPB.fs
	strb	r9, [ip, #2]	@ tmp189, <variable>.is_reference
.L1570:
	ldr	r0, [r4, r6, asl #2]	@ temp.4763, <variable>.DPB.fs
	ldr	r3, [r0, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, #1	@ <variable>.eFoState,
	movne	r1, #0	@, tmp266
	moveq	r1, #1	@, tmp266
	strb	r1, [r0, #4]	@ tmp266, <variable>.is_in_dpb
	ldr	r3, [r4, r6, asl #2]	@ temp.4767, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	beq	.L1567	@,
.L1554:
	add	r7, r7, #1	@ i, tmp193,
	add	r5, r5, #1	@ j, j,
	cmp	sl, r7	@ k, i
	bhi	.L1537	@,
.L1531:
	mov	r0, #0	@ D.38627,
.L1530:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1535:
	add	r5, r5, #1	@ j, j,
	b	.L1536	@
.L1532:
	ldr	r1, [r4, r6, asl #2]	@ temp.4764, <variable>.DPB.fs
	ldr	r0, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	movne	lr, #0	@, tmp175
	moveq	lr, #1	@, tmp175
	strb	lr, [r1, #4]	@ tmp175, <variable>.is_in_dpb
	b	.L1533	@
.L1560:
	ldrb	r1, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r1, #0	@ <variable>.is_in_dpb,
	bne	.L1543	@,
	ldr	lr, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	lr, #1	@ <variable>.eFoState,
	beq	.L1543	@,
	strb	r1, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L1561	@
.L1578:
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4747, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1547	@,
	ldrsb	lr, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	beq	.L1547	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4747, <variable>.DPB.fs
.L1547:
	str	fp, [r3, #508]	@ tmp188, <variable>.logic_fs_id
	ldr	r3, [r4, r6, asl #2]	@ tmp243, <variable>.DPB.fs
	strb	r9, [r3, #2]	@ tmp189, <variable>.is_reference
	ldr	r1, [r4, r6, asl #2]	@ temp.4763, <variable>.DPB.fs
	ldr	r0, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	movne	ip, #0	@, tmp247
	moveq	ip, #1	@, tmp247
	strb	ip, [r1, #4]	@ tmp247, <variable>.is_in_dpb
	b	.L1552	@
.L1580:
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4747, <variable>.DPB.fs
	b	.L1553	@
.L1579:
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4747, <variable>.DPB.fs
	b	.L1534	@
.L1577:
	ldr	r3, [r4, r6, asl #2]	@ temp.4764, <variable>.DPB.fs
	ldr	r2, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r2, r7	@ <variable>.eFoState,
	movne	r0, #0	@, tmp238
	moveq	r0, #1	@, tmp238
	strb	r0, [r3, #4]	@ tmp238, <variable>.is_in_dpb
	b	.L1552	@
.L1576:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38627,
	b	.L1530	@
	.fnend
	.size	RemoveUnUsedFrameStore, .-RemoveUnUsedFrameStore
	.align	2
	.global	UnMarkFrameStoreRef
	.type	UnMarkFrameStoreRef, %function
UnMarkFrameStoreRef:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ prephitmp.4785, <variable>.is_used
	tst	r3, #1	@ prephitmp.4785,
	beq	.L1582	@,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp142,
	strb	r2, [r1, #438]	@ tmp142, <variable>.top_field.is_short_term
	and	ip, ip, #2	@ tmp140, <variable>.is_reference,
	strb	r2, [r1, #437]	@ tmp142, <variable>.top_field.is_long_term
	strb	ip, [r1, #2]	@ tmp140, <variable>.is_reference
.L1582:
	tst	r3, #2	@ prephitmp.4785,
	beq	.L1583	@,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp151,
	strb	r2, [r1, #474]	@ tmp151, <variable>.bottom_field.is_short_term
	and	ip, ip, #1	@ tmp149, <variable>.is_reference,
	strb	r2, [r1, #473]	@ tmp151, <variable>.bottom_field.is_long_term
	strb	ip, [r1, #2]	@ tmp149, <variable>.is_reference
.L1583:
	cmp	r3, #3	@ prephitmp.4785,
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
.LFB1965:
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
	bcs	.L1590	@,
.L1587:
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
.L1590:
	movw	lr, #26432	@ tmp138,
	ldr	r1, [r0, lr]	@, <variable>.DPB.fs
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	RemoveFrameStoreOutDPB	@
	b	.L1587	@
	.fnend
	.size	SimpleSlideDPB, .-SimpleSlideDPB
	.align	2
	.global	SlidingWinMark
	.type	SlidingWinMark, %function
SlidingWinMark:
	.fnstart
.LFB1961:
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
	ldr	sl, [r4, r0]	@ D.39472, <variable>.DPB.used_size
	cmp	sl, #0	@ D.39472,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	add	r6, r4, #26368	@ ivtmp.4850, pH264Ctx,
	sub	r8, sl, #1	@ tmp149, D.39472,
	and	r8, r8, #1	@ tmp151, tmp149,
	ldr	r5, [r6, #64]!	@ D.39465, <variable>.DPB.fs
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1608	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.39472, i
	add	r6, r6, #4	@ ivtmp.4850, ivtmp.4850,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1612:
	cmp	r8, #0	@ tmp151,
	beq	.L1594	@,
	ldr	r5, [r6, #0]	@ D.39465, <variable>.DPB.fs
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #0	@ <variable>.is_reference,
	bne	.L1609	@,
.L1599:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.4850, ivtmp.4850,
	cmp	sl, r7	@ D.39472, i
	bhi	.L1594	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1593:
	ldr	r5, [r6, #4]	@ D.39465, <variable>.DPB.fs
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1610	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.4850, tmp153,
	cmp	sl, r7	@ D.39472, i
	bls	.L1611	@,
.L1594:
	ldr	r5, [r6, #0]	@ D.39465, <variable>.DPB.fs
	add	r7, r7, #1	@ tmp152, i,
	add	r8, r6, #4	@ tmp153, ivtmp.4850,
	ldrb	ip, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L1593	@,
	mov	r0, r5	@, D.39465
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1593	@,
.L1607:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, D.39465
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	UpdateReflist	@
.L1610:
	mov	r0, r5	@, D.39465
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1607	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.4850, tmp153,
	cmp	sl, r7	@ D.39472, i
	bhi	.L1594	@,
.L1611:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1608:
	mov	r0, r5	@, D.39465
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1607	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.39472, i
	add	r6, r6, #4	@ ivtmp.4850, ivtmp.4850,
	bhi	.L1612	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1609:
	mov	r0, r5	@, D.39465
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1599	@,
	b	.L1607	@
	.fnend
	.size	SlidingWinMark, .-SlidingWinMark
	.align	2
	.global	UnMarkAllSTRef
	.type	UnMarkAllSTRef, %function
UnMarkAllSTRef:
	.fnstart
.LFB1944:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r7, #26632	@ tmp136,
	ldr	r3, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.ref_frames_in_buffer,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	add	r6, r0, #26368	@ ivtmp.4879, pH264Ctx,
	mov	r4, #0	@ i,
	add	r6, r6, #128	@ ivtmp.4879, ivtmp.4879,
.L1615:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r6], #4	@, <variable>.DPB.fs_ref
	bl	UnMarkFrameStoreRef	@
	ldr	r0, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r4, r4, #1	@ i, i,
	cmp	r0, r4	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L1615	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	UnMarkAllSTRef, .-UnMarkAllSTRef
	.align	2
	.global	UpdateMaxLTFrmIdx
	.type	UpdateMaxLTFrmIdx, %function
UpdateMaxLTFrmIdx:
	.fnstart
.LFB1943:
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
	add	r4, r0, #26368	@ ivtmp.4913, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #192	@ ivtmp.4913, ivtmp.4913,
	b	.L1621	@
.L1620:
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1623:
	ldr	r2, [r6, r8]	@ max_long_term_frame_idx_plus1, <variable>.DPB.max_long_term_pic_idx
.L1621:
	ldr	r1, [r4, #0]	@ D.38555, <variable>.DPB.fs_ltref
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.4913, ivtmp.4913,
	ldr	r0, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r0, r2	@ <variable>.long_term_frame_idx, max_long_term_frame_idx_plus1
	bcc	.L1620	@,
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	bhi	.L1623	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	UpdateMaxLTFrmIdx, .-UpdateMaxLTFrmIdx
	.align	2
	.global	UnMarkLTRef
	.type	UnMarkLTRef, %function
UnMarkLTRef:
	.fnstart
.LFB1940:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r3, #0	@ <variable>.structure,
	beq	.L1625	@,
	movw	r1, #26636	@ tmp153,
	ldr	r7, [r0, r1]	@ D.38371, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, #0	@ D.38371,
	beq	.L1635	@,
	add	r4, r0, #26368	@ ivtmp.4958, pH264Ctx,
	sub	r5, r7, #1	@ tmp238, D.38371,
	and	r6, r5, #1	@ tmp240, tmp238,
	mov	ip, #0	@ i,
	ldr	r1, [r4, #192]!	@ temp.4962, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4963, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4963,
	beq	.L1645	@,
	ldr	r8, [r1, #436]	@ tmp261,
	bic	r8, r8, #-16777216	@ tmp262, tmp261,
	bic	r8, r8, #255	@ tmp262, tmp262,
	cmp	r8, #256	@ tmp262,
	beq	.L1668	@,
.L1645:
	tst	r3, #2	@ temp.4963,
	beq	.L1646	@,
	ldr	r3, [r1, #472]	@ tmp265,
	bic	r3, r3, #-16777216	@ tmp266, tmp265,
	bic	r3, r3, #255	@ tmp266, tmp266,
	cmp	r3, #256	@ tmp266,
	beq	.L1669	@,
.L1646:
	mov	ip, #1	@ i,
	cmp	r7, ip	@ D.38371, i
	add	r4, r4, #4	@ ivtmp.4958, ivtmp.4958,
	bls	.L1635	@,
	cmp	r6, #0	@ tmp240,
	beq	.L1634	@,
	ldr	r1, [r4, #0]	@ temp.4962, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4963, <variable>.is_reference
	ands	r5, r3, ip	@ tmp232, temp.4963,
	beq	.L1648	@,
	ldr	r6, [r1, #436]	@ tmp268,
	bic	r6, r6, #-16777216	@ tmp269, tmp268,
	bic	r6, r6, #255	@ tmp269, tmp269,
	cmp	r6, #256	@ tmp269,
	beq	.L1670	@,
.L1648:
	tst	r3, #2	@ temp.4963,
	beq	.L1649	@,
	ldr	r3, [r1, #472]	@ tmp272,
	bic	r3, r3, #-16777216	@ tmp273, tmp272,
	bic	r3, r3, #255	@ tmp273, tmp273,
	cmp	r3, #256	@ tmp273,
	beq	.L1671	@,
.L1649:
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.4958, ivtmp.4958,
	cmp	r7, ip	@ D.38371, i
	bhi	.L1634	@,
.L1635:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L1625:
	movw	ip, #26636	@ tmp154,
	ldr	r6, [r0, ip]	@ temp.4964, <variable>.DPB.ltref_frames_in_buffer
	cmp	r6, #0	@ temp.4964,
	beq	.L1635	@,
	add	r3, r0, #26368	@ ivtmp.4953, pH264Ctx,
	sub	r1, r6, #1	@ tmp233, temp.4964,
	and	r4, r1, #1	@ tmp235, tmp233,
	ldr	r1, [r3, #192]!	@ D.38360, <variable>.DPB.fs_ltref
	ldr	ip, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	ip, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1672	@,
.L1638:
	mov	ip, #1	@ i.4961,
	cmp	ip, r6	@ i.4961, temp.4964
	add	r3, r3, #4	@ ivtmp.4953, ivtmp.4953,
	bcs	.L1635	@,
	cmp	r4, #0	@ tmp235,
	beq	.L1629	@,
	ldr	r1, [r3, #0]	@ D.38360, <variable>.DPB.fs_ltref
	ldr	r4, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1673	@,
.L1640:
	add	ip, ip, #1	@ i.4961, i.4961,
	add	r3, r3, #4	@ ivtmp.4953, ivtmp.4953,
	cmp	ip, r6	@ i.4961, temp.4964
	bcc	.L1629	@,
	b	.L1635	@
.L1628:
	ldr	r1, [r3, #4]	@ D.38360, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1674	@,
.L1643:
	add	ip, ip, #1	@ i.4961, tmp236,
	add	r3, r5, #4	@ ivtmp.4953, tmp237,
	cmp	ip, r6	@ i.4961, temp.4964
	bcs	.L1635	@,
.L1629:
	ldr	r1, [r3, #0]	@ D.38360, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ tmp236, i.4961,
	add	r5, r3, #4	@ tmp237, ivtmp.4953,
	ldr	r4, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1628	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1628	@,
	ldr	r4, [r1, #400]	@ tmp160,
	bic	r4, r4, #-16777216	@ tmp158, tmp160,
	bic	r4, r4, #255	@ tmp158, tmp158,
	cmp	r4, #256	@ tmp158,
	beq	.L1661	@,
	ldr	r1, [r3, #4]	@ D.38360, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1643	@,
.L1674:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #3	@ <variable>.is_reference,
	bne	.L1643	@,
	ldr	r3, [r1, #400]	@ tmp259,
	bic	r3, r3, #-16777216	@ tmp260, tmp259,
	bic	r3, r3, #255	@ tmp260, tmp260,
	cmp	r3, #256	@ tmp260,
	bne	.L1643	@,
	b	.L1661	@
.L1679:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	beq	.L1662	@,
.L1630:
	tst	r3, #2	@ temp.4963,
	beq	.L1632	@,
	ldr	r3, [r1, #472]	@ tmp200,
	bic	r3, r3, #-16777216	@ tmp198, tmp200,
	bic	r3, r3, #255	@ tmp198, tmp198,
	cmp	r3, #256	@ tmp198,
	beq	.L1675	@,
.L1632:
	ldr	r1, [r4, #4]	@ temp.4962, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ tmp242, ivtmp.4958,
	mov	r8, ip	@ tmp241, i
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4963, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4963,
	beq	.L1652	@,
	ldr	r6, [r1, #436]	@ tmp275,
	bic	r6, r6, #-16777216	@ tmp276, tmp275,
	bic	r6, r6, #255	@ tmp276, tmp276,
	cmp	r6, #256	@ tmp276,
	beq	.L1676	@,
.L1652:
	tst	r3, #2	@ temp.4963,
	beq	.L1653	@,
	ldr	r3, [r1, #472]	@ tmp279,
	bic	r3, r3, #-16777216	@ tmp280, tmp279,
	bic	r3, r3, #255	@ tmp280, tmp280,
	cmp	r3, #256	@ tmp280,
	beq	.L1677	@,
.L1653:
	add	ip, r8, #1	@ i, tmp241,
	add	r4, r4, #4	@ ivtmp.4958, tmp242,
	cmp	r7, ip	@ D.38371, i
	bls	.L1635	@,
.L1634:
	ldr	r1, [r4, #0]	@ temp.4962, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4963, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4963,
	beq	.L1630	@,
	ldr	r6, [r1, #436]	@ tmp165,
	bic	r6, r6, #-16777216	@ tmp163, tmp165,
	bic	r6, r6, #255	@ tmp163, tmp163,
	cmp	r6, #256	@ tmp163,
	bne	.L1630	@,
	b	.L1679	@
.L1675:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1632	@,
.L1663:
	add	r2, ip, #6592	@ tmp204, i,
	strb	r5, [r1, #2]	@ tmp232, <variable>.is_reference
	add	ip, r2, #48	@ tmp204, tmp204,
	mov	r2, #0	@ tmp207,
	ldr	r3, [r0, ip, asl #2]	@ tmp206, <variable>.DPB.fs_ltref
	strb	r2, [r3, #473]	@ tmp207, <variable>.bottom_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4940, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.38406, <variable>.frame.structure
	cmp	r1, #3	@ D.38406,
	cmpne	r1, r2	@, D.38406,
	beq	.L1666	@,
.L1633:
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	ldreq	r1, [r3, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	addeq	r3, r1, #12800	@ tmp228, <variable>.pmv_address_idc,
	addeq	ip, r3, #12	@ tmp228, tmp228,
	streq	r2, [r0, ip, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	b	.L1635	@
.L1676:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1652	@,
.L1662:
	add	ip, ip, #6592	@ tmp169, i,
	and	r2, r3, #2	@ tmp167, temp.4963,
	add	ip, ip, #48	@ tmp169, tmp169,
	strb	r2, [r1, #2]	@ tmp167, <variable>.is_reference
	mov	r2, #0	@ tmp172,
	ldr	r3, [r0, ip, asl #2]	@ tmp171, <variable>.DPB.fs_ltref
	strb	r2, [r3, #437]	@ tmp172, <variable>.top_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4965, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.38386, <variable>.frame.structure
	cmp	r1, #3	@ D.38386,
	cmpne	r1, r2	@, D.38386,
	bne	.L1633	@,
.L1666:
	strb	r2, [r3, #402]	@ tmp207, <variable>.frame.is_short_term
	ldr	r1, [r0, ip, asl #2]	@ tmp222, <variable>.DPB.fs_ltref
	strb	r2, [r1, #401]	@ tmp207, <variable>.frame.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4940, <variable>.DPB.fs_ltref
	b	.L1633	@
.L1677:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1653	@,
	b	.L1663	@
.L1668:
	ldr	r8, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r8, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1645	@,
	b	.L1662	@
.L1669:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1646	@,
	b	.L1663	@
.L1670:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1648	@,
	b	.L1662	@
.L1671:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1649	@,
	b	.L1663	@
.L1672:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L1638	@,
	ldr	ip, [r1, #400]	@ tmp252,
	bic	ip, ip, #-16777216	@ tmp253, tmp252,
	bic	ip, ip, #255	@ tmp253, tmp253,
	cmp	ip, #256	@ tmp253,
	bne	.L1638	@,
.L1661:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	UnMarkFrameStoreRef	@
.L1673:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1640	@,
	ldr	r4, [r1, #400]	@ tmp256,
	bic	r4, r4, #-16777216	@ tmp257, tmp256,
	bic	r4, r4, #255	@ tmp257, tmp257,
	cmp	r4, #256	@ tmp257,
	bne	.L1640	@,
	b	.L1661	@
	.fnend
	.size	UnMarkLTRef, .-UnMarkLTRef
	.align	2
	.global	UnMarkLTFldByFrmIdx
	.type	UnMarkLTFldByFrmIdx, %function
UnMarkLTFldByFrmIdx:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #26636	@ tmp141,
	ldr	ip, [r0, ip]	@ D.38268, <variable>.DPB.ltref_frames_in_buffer
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	cmp	ip, #0	@ D.38268,
	beq	.L1687	@,
	add	r5, r0, #26368	@ ivtmp.5001, pH264Ctx,
	sub	r4, ip, #1	@ tmp146, D.38268,
	and	r7, r4, #1	@ tmp148, tmp146,
	ldr	r4, [r5, #192]!	@ D.38252, <variable>.DPB.fs_ltref
	ldr	r6, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1714	@,
.L1689:
	mov	r6, #1	@ i,
	cmp	r6, ip	@ i, D.38268
	add	r5, r5, #4	@ ivtmp.5001, ivtmp.5001,
	bcs	.L1687	@,
	cmp	r7, #0	@ tmp148,
	beq	.L1686	@,
	ldr	r4, [r5, #0]	@ D.38252, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1715	@,
.L1696:
	add	r6, r6, #1	@ i, tmp149,
	add	r5, r5, #4	@ ivtmp.5001, tmp150,
	cmp	r6, ip	@ i, D.38268
	bcs	.L1687	@,
.L1686:
	ldr	r4, [r5, #0]	@ D.38252, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1716	@,
.L1682:
	ldr	r4, [r5, #4]	@ D.38252, <variable>.DPB.fs_ltref
	add	r6, r6, #1	@ tmp149, i,
	add	r5, r5, #4	@ tmp150, ivtmp.5001,
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1696	@,
	cmp	r2, #1	@ structure,
	beq	.L1704	@,
.L1713:
	cmp	r2, #2	@ structure,
	bne	.L1696	@,
	ldrb	r7, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1685	@,
.L1707:
	cmp	r4, r1	@ D.38252, pFS
	beq	.L1696	@,
.L1685:
	mov	r1, r4	@, D.38252
	ldmfd	sp!, {r4, r5, r6, r7}
	b	UnMarkFrameStoreRef	@
.L1715:
	cmp	r2, r6	@ structure,
	bne	.L1713	@,
.L1704:
	ldrb	r7, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1707	@,
	b	.L1685	@
.L1716:
	cmp	r2, #1	@ structure,
	beq	.L1717	@,
	cmp	r2, #2	@ structure,
	bne	.L1682	@,
	ldrb	r7, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1685	@,
.L1709:
	cmp	r4, r1	@ D.38252, pFS
	beq	.L1682	@,
	b	.L1685	@
.L1717:
	ldrb	r7, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1709	@,
	b	.L1685	@
.L1687:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L1714:
	cmp	r2, #1	@ structure,
	beq	.L1702	@,
	cmp	r2, #2	@ structure,
	bne	.L1689	@,
	ldrb	r6, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #0	@ <variable>.top_field.is_long_term,
	beq	.L1685	@,
.L1706:
	cmp	r4, r1	@ D.38252, pFS
	beq	.L1689	@,
	b	.L1685	@
.L1702:
	ldrb	r6, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1706	@,
	b	.L1685	@
	.fnend
	.size	UnMarkLTFldByFrmIdx, .-UnMarkLTFldByFrmIdx
	.align	2
	.global	UnMarkLTFrmByFrmIdx
	.type	UnMarkLTFrmByFrmIdx, %function
UnMarkLTFrmByFrmIdx:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #26636	@ tmp139,
	ldr	r2, [r0, r3]	@ D.38240, <variable>.DPB.ltref_frames_in_buffer
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	cmp	r2, #0	@ D.38240,
	beq	.L1724	@,
	movw	r3, #26560	@ tmp140,
	ldr	r3, [r0, r3]	@ D.38236, <variable>.DPB.fs_ltref
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1720	@,
	tst	r2, #1	@ D.38240,
	add	ip, r0, #26368	@ tmp143, pH264Ctx,
	add	r4, ip, #196	@ ivtmp.5030, tmp143,
	mov	r5, #0	@ i,
	bne	.L1722	@,
	ldr	r3, [r4, #0]	@ D.38236, <variable>.DPB.fs_ltref
	add	r4, ip, #200	@ ivtmp.5030, tmp143,
	mov	r5, #1	@ i,
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1722	@,
.L1720:
	mov	r1, r3	@, D.38236
	ldmfd	sp!, {r4, r5, r6}
	b	UnMarkFrameStoreRef	@
.L1723:
	ldr	r3, [ip], #4	@ D.38236, <variable>.DPB.fs_ltref
	ldr	r6, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1720	@,
	ldr	r3, [r4, #4]	@ D.38236, <variable>.DPB.fs_ltref
	add	r4, ip, #4	@ ivtmp.5030, tmp148,
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1720	@,
.L1722:
	add	r3, r5, #1	@ tmp147, i,
	mov	ip, r4	@ tmp148, ivtmp.5030
	cmp	r2, r3	@ D.38240, tmp147
	add	r5, r3, #1	@ i, tmp147,
	bhi	.L1723	@,
.L1724:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	UnMarkLTFrmByFrmIdx, .-UnMarkLTFrmByFrmIdx
	.align	2
	.global	MarkCurrPicLT
	.type	MarkCurrPicLT, %function
MarkCurrPicLT:
	.fnstart
.LFB1945:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r2	@ long_term_frame_idx, long_term_frame_idx
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.38576, <variable>.structure
	mov	r4, r1	@ pCurrPic, pCurrPic
	cmp	r2, #0	@ D.38576,
	beq	.L1738	@,
	mov	r3, r5	@, long_term_frame_idx
	ldr	r1, [r1, #408]	@, <variable>.frame_store
	bl	UnMarkLTFldByFrmIdx	@
	mov	r0, #1	@ tmp138,
	mov	r3, #0	@ tmp140,
	str	r5, [r4, #420]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	strb	r0, [r4, #4]	@ tmp138, <variable>.is_long_term
	strb	r3, [r4, #5]	@ tmp140, <variable>.is_short_term
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1738:
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
.LFB1942:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ pCurrPic, pCurrPic
	ldrb	r1, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	mov	r7, r3	@ long_term_frame_idx, long_term_frame_idx
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ <variable>.structure,
	bne	.L1740	@,
	ldr	r3, [r5, #416]	@ <variable>.frame_num, <variable>.frame_num
	mov	r1, r7	@, long_term_frame_idx
	mvn	r4, r2	@ tmp144, difference_of_pic_nums_minus1
	add	r4, r4, r3	@ picNumX, tmp144, <variable>.frame_num
	bl	UnMarkLTFrmByFrmIdx	@
.L1741:
	mov	r0, r6	@, pH264Ctx
	mov	r1, r7	@, long_term_frame_idx
	mov	r2, r4	@, picNumX
	mov	r3, r5	@, pCurrPic
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MarkPicLTRef	@
.L1740:
	movw	ip, #26632	@ tmp150,
	ldr	r0, [r5, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r8, [r6, ip]	@ D.38545, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ D.38545,
	rsb	r4, r2, r0, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	beq	.L1741	@,
	add	r3, r6, #26368	@ ivtmp.5088, pH264Ctx,
	sub	r2, r8, #1	@ tmp162, D.38545,
	and	r0, r2, #1	@ tmp164, tmp162,
	ldr	r1, [r3, #128]!	@ D.38521, <variable>.DPB.fs_ref
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ D.38523, <variable>.is_reference
	tst	r2, #1	@ D.38523,
	beq	.L1747	@,
	ldr	ip, [r1, #436]	@ tmp175,
	bic	ip, ip, #-16777216	@ tmp176, tmp175,
	bic	ip, ip, #255	@ tmp176, tmp176,
	cmp	ip, #65536	@ tmp176,
	beq	.L1769	@,
.L1747:
	tst	r2, #2	@ D.38523,
	beq	.L1748	@,
	ldr	r2, [r1, #472]	@ tmp179,
	bic	ip, r2, #-16777216	@ tmp180, tmp179,
	bic	r2, ip, #255	@ tmp180, tmp180,
	cmp	r2, #65536	@ tmp180,
	beq	.L1770	@,
.L1748:
	mov	r2, #1	@ i,
	cmp	r2, r8	@ i, D.38545
	add	r3, r3, #4	@ ivtmp.5088, ivtmp.5088,
	bcs	.L1741	@,
	cmp	r0, #0	@ tmp164,
	beq	.L1744	@,
	ldr	r1, [r3, #0]	@ D.38521, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.38523, <variable>.is_reference
	tst	r0, #1	@ D.38523,
	bne	.L1759	@,
.L1754:
	tst	r0, #2	@ D.38523,
	beq	.L1755	@,
	ldr	r0, [r1, #472]	@ tmp195,
	bic	ip, r0, #-16777216	@ tmp196, tmp195,
	bic	r0, ip, #255	@ tmp196, tmp196,
	cmp	r0, #65536	@ tmp196,
	beq	.L1771	@,
.L1755:
	add	r2, r2, #1	@ i, tmp165,
	add	r3, r3, #4	@ ivtmp.5088, tmp166,
	cmp	r2, r8	@ i, D.38545
	bcs	.L1741	@,
.L1744:
	ldr	r1, [r3, #0]	@ D.38521, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.38523, <variable>.is_reference
	tst	r0, #1	@ D.38523,
	beq	.L1742	@,
	ldr	ip, [r1, #436]	@ tmp155,
	bic	ip, ip, #-16777216	@ tmp153, tmp155,
	bic	ip, ip, #255	@ tmp153, tmp153,
	cmp	ip, #65536	@ tmp153,
	beq	.L1772	@,
.L1742:
	tst	r0, #2	@ D.38523,
	beq	.L1743	@,
	ldr	r0, [r1, #472]	@ tmp160,
	bic	ip, r0, #-16777216	@ tmp158, tmp160,
	bic	r0, ip, #255	@ tmp158, tmp158,
	cmp	r0, #65536	@ tmp158,
	beq	.L1773	@,
.L1743:
	ldr	r1, [r3, #4]	@ D.38521, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp165, i,
	add	r3, r3, #4	@ tmp166, ivtmp.5088,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.38523, <variable>.is_reference
	tst	r0, #1	@ D.38523,
	beq	.L1754	@,
.L1759:
	ldr	ip, [r1, #436]	@ tmp191,
	bic	ip, ip, #-16777216	@ tmp192, tmp191,
	bic	ip, ip, #255	@ tmp192, tmp192,
	cmp	ip, #65536	@ tmp192,
	bne	.L1754	@,
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1754	@,
.L1760:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #1	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1741	@
.L1771:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1755	@,
.L1761:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #2	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1741	@
.L1772:
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1742	@,
	b	.L1760	@
.L1773:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1743	@,
	b	.L1761	@
.L1769:
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1747	@,
	b	.L1760	@
.L1770:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1748	@,
	b	.L1761	@
	.fnend
	.size	MarkSTToLTRef, .-MarkSTToLTRef
	.align	2
	.global	UnMarkSTRef
	.type	UnMarkSTRef, %function
UnMarkSTRef:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r0, #0	@ <variable>.structure,
	bne	.L1775	@,
	movw	ip, #26632	@ tmp158,
	ldr	r1, [r1, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, ip]	@ temp.5153, <variable>.DPB.ref_frames_in_buffer
	mvn	r2, r2	@ tmp156, difference_of_pic_nums_minus1
	add	ip, r2, r1	@ picNumX.5154, tmp156, <variable>.frame_num
	cmp	r6, #0	@ temp.5153,
	beq	.L1786	@,
	add	r2, r3, #26368	@ ivtmp.5127, pH264Ctx,
	sub	r1, r6, #1	@ tmp256, temp.5153,
	and	r4, r1, #1	@ tmp258, tmp256,
	ldr	r1, [r2, #128]!	@ D.38288, <variable>.DPB.fs_ref
	ldr	r0, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r0, ip	@ <variable>.frame.pic_num, picNumX.5154
	beq	.L1818	@,
.L1789:
	mov	r0, #1	@ i.5135,
	cmp	r0, r6	@ i.5135, temp.5153
	add	r2, r2, #4	@ ivtmp.5127, ivtmp.5127,
	bcs	.L1786	@,
	cmp	r4, #0	@ tmp258,
	beq	.L1780	@,
	ldr	r1, [r2, #0]	@ D.38288, <variable>.DPB.fs_ref
	ldr	r4, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5154
	beq	.L1819	@,
.L1791:
	add	r0, r0, #1	@ i.5135, i.5135,
	add	r2, r2, #4	@ ivtmp.5127, ivtmp.5127,
	cmp	r0, r6	@ i.5135, temp.5153
	bcc	.L1780	@,
	b	.L1786	@
.L1779:
	ldr	r1, [r2, #4]	@ D.38288, <variable>.DPB.fs_ref
	ldr	r2, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5154
	beq	.L1820	@,
.L1794:
	add	r0, r0, #1	@ i.5135, tmp259,
	add	r2, r5, #4	@ ivtmp.5127, tmp260,
	cmp	r0, r6	@ i.5135, temp.5153
	bcs	.L1786	@,
.L1780:
	ldr	r1, [r2, #0]	@ D.38288, <variable>.DPB.fs_ref
	add	r0, r0, #1	@ tmp259, i.5135,
	add	r5, r2, #4	@ tmp260, ivtmp.5127,
	ldr	r4, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5154
	bne	.L1779	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1779	@,
	ldr	r4, [r1, #400]	@ tmp169,
	bic	r4, r4, #-16777216	@ tmp167, tmp169,
	bic	r4, r4, #255	@ tmp167, tmp167,
	cmp	r4, #65536	@ tmp167,
	beq	.L1812	@,
	ldr	r1, [r2, #4]	@ D.38288, <variable>.DPB.fs_ref
	ldr	r2, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5154
	bne	.L1794	@,
.L1820:
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #3	@ <variable>.is_reference,
	bne	.L1794	@,
	ldr	r2, [r1, #400]	@ tmp284,
	bic	r2, r2, #-16777216	@ tmp285, tmp284,
	bic	r2, r2, #255	@ tmp285, tmp285,
	cmp	r2, #65536	@ tmp285,
	beq	.L1812	@,
	add	r0, r0, #1	@ i.5135, tmp259,
	add	r2, r5, #4	@ ivtmp.5127, tmp260,
	cmp	r0, r6	@ i.5135, temp.5153
	bcc	.L1780	@,
.L1786:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L1775:
	movw	r0, #26632	@ tmp163,
	ldr	r7, [r1, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, r0]	@ D.38299, <variable>.DPB.ref_frames_in_buffer
	cmp	r6, #0	@ D.38299,
	rsb	r7, r2, r7, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	beq	.L1786	@,
	add	r4, r3, #26368	@ ivtmp.5132, pH264Ctx,
	sub	ip, r6, #1	@ tmp261, D.38299,
	and	r5, ip, #1	@ tmp263, tmp261,
	mov	ip, #0	@ i,
	ldr	r0, [r4, #128]!	@ temp.5136, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5137, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5137,
	beq	.L1796	@,
	ldr	r8, [r0, #436]	@ tmp286,
	bic	r8, r8, #-16777216	@ tmp287, tmp286,
	bic	r8, r8, #255	@ tmp287, tmp287,
	cmp	r8, #65536	@ tmp287,
	beq	.L1821	@,
.L1796:
	tst	r1, #2	@ temp.5137,
	beq	.L1797	@,
	ldr	r1, [r0, #472]	@ tmp290,
	bic	r1, r1, #-16777216	@ tmp291, tmp290,
	bic	r1, r1, #255	@ tmp291, tmp291,
	cmp	r1, #65536	@ tmp291,
	beq	.L1822	@,
.L1797:
	mov	ip, #1	@ i,
	cmp	r6, ip	@ D.38299, i
	add	r4, r4, #4	@ ivtmp.5132, ivtmp.5132,
	bls	.L1786	@,
	cmp	r5, #0	@ tmp263,
	beq	.L1785	@,
	ldr	r0, [r4, #0]	@ temp.5136, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5137, <variable>.is_reference
	ands	r2, r1, ip	@ tmp254, temp.5137,
	beq	.L1799	@,
	ldr	r5, [r0, #436]	@ tmp293,
	bic	r5, r5, #-16777216	@ tmp294, tmp293,
	bic	r5, r5, #255	@ tmp294, tmp294,
	cmp	r5, #65536	@ tmp294,
	beq	.L1823	@,
.L1799:
	tst	r1, #2	@ temp.5137,
	beq	.L1800	@,
	ldr	r1, [r0, #472]	@ tmp297,
	bic	r1, r1, #-16777216	@ tmp298, tmp297,
	bic	r1, r1, #255	@ tmp298, tmp298,
	cmp	r1, #65536	@ tmp298,
	beq	.L1824	@,
.L1800:
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5132, ivtmp.5132,
	cmp	r6, ip	@ D.38299, i
	bls	.L1786	@,
	ldr	r0, [r4, #0]	@ temp.5136, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5137, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5137,
	bne	.L1825	@,
.L1781:
	tst	r1, #2	@ temp.5137,
	beq	.L1783	@,
	ldr	r1, [r0, #472]	@ tmp215,
	bic	r1, r1, #-16777216	@ tmp213, tmp215,
	bic	r1, r1, #255	@ tmp213, tmp213,
	cmp	r1, #65536	@ tmp213,
	beq	.L1826	@,
.L1783:
	ldr	r0, [r4, #4]	@ temp.5136, <variable>.DPB.fs_ref
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ tmp265, ivtmp.5132,
	mov	r8, ip	@ tmp264, i
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5137, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5137,
	beq	.L1803	@,
	ldr	r5, [r0, #436]	@ tmp300,
	bic	r5, r5, #-16777216	@ tmp301, tmp300,
	bic	r5, r5, #255	@ tmp301, tmp301,
	cmp	r5, #65536	@ tmp301,
	beq	.L1827	@,
.L1803:
	tst	r1, #2	@ temp.5137,
	beq	.L1804	@,
	ldr	r1, [r0, #472]	@ tmp304,
	bic	r1, r1, #-16777216	@ tmp305, tmp304,
	bic	r1, r1, #255	@ tmp305, tmp305,
	cmp	r1, #65536	@ tmp305,
	beq	.L1828	@,
.L1804:
	add	ip, r8, #1	@ i, tmp264,
	add	r4, r4, #4	@ ivtmp.5132, tmp265,
	cmp	r6, ip	@ D.38299, i
	bls	.L1786	@,
.L1785:
	ldr	r0, [r4, #0]	@ temp.5136, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5137, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5137,
	beq	.L1781	@,
.L1825:
	ldr	r5, [r0, #436]	@ tmp174,
	bic	r5, r5, #-16777216	@ tmp172, tmp174,
	bic	r5, r5, #255	@ tmp172, tmp172,
	cmp	r5, #65536	@ tmp172,
	bne	.L1781	@,
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1781	@,
.L1813:
	add	r2, ip, #6592	@ tmp255, i,
	and	r1, r1, #2	@ tmp176, temp.5137,
	add	r2, r2, #32	@ tmp255, tmp255,
	strb	r1, [r0, #2]	@ tmp176, <variable>.is_reference
	mov	r1, #0	@ tmp181,
	ldr	r0, [r3, r2, asl #2]	@ tmp180, <variable>.DPB.fs_ref
	strb	r1, [r0, #438]	@ tmp181, <variable>.top_field.is_short_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5138, <variable>.DPB.fs_ref
	ldrb	ip, [r0, #400]	@ zero_extendqisi2	@ D.38314, <variable>.frame.structure
	cmp	ip, #3	@ D.38314,
	cmpne	ip, r1	@, D.38314,
	streqb	r1, [r0, #402]	@ tmp181, <variable>.frame.is_short_term
	ldreq	r0, [r3, r2, asl #2]	@ tmp196, <variable>.DPB.fs_ref
	streqb	r1, [r0, #401]	@ tmp181, <variable>.frame.is_long_term
	ldreq	r0, [r3, r2, asl #2]	@ prephitmp.5138, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1786	@,
	ldr	ip, [r0, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r4, [r3, r2, asl #2]	@ tmp210, <variable>.DPB.fs_ref
.L1815:
	add	ip, ip, #12800	@ tmp243, <variable>.pmv_address_idc,
	movw	r0, #52840	@ tmp247,
	add	ip, ip, #12	@ tmp243, tmp243,
	mov	r2, r1	@, <variable>.is_reference
	ldr	r0, [r3, r0]	@, <variable>.ChanID
	str	r1, [r3, ip, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	ldr	r1, [r4, #508]	@, <variable>.logic_fs_id
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	FSP_SetRef	@
.L1826:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1783	@,
.L1814:
	add	r4, ip, #6592	@ tmp274, i,
	strb	r2, [r0, #2]	@ tmp254, <variable>.is_reference
	add	r4, r4, #32	@ tmp274, tmp274,
	mov	ip, #0	@ tmp222,
	ldr	r2, [r3, r4, asl #2]	@ tmp221, <variable>.DPB.fs_ref
	strb	ip, [r2, #474]	@ tmp222, <variable>.bottom_field.is_short_term
	ldr	r2, [r3, r4, asl #2]	@ prephitmp.5114, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #400]	@ zero_extendqisi2	@ D.38336, <variable>.frame.structure
	cmp	r0, #3	@ D.38336,
	cmpne	r0, ip	@, D.38336,
	streqb	ip, [r2, #402]	@ tmp222, <variable>.frame.is_short_term
	ldreq	r2, [r3, r4, asl #2]	@ tmp237, <variable>.DPB.fs_ref
	streqb	ip, [r2, #401]	@ tmp222, <variable>.frame.is_long_term
	ldreq	r2, [r3, r4, asl #2]	@ prephitmp.5114, <variable>.DPB.fs_ref
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1786	@,
	ldr	ip, [r2, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r4, [r3, r4, asl #2]	@ tmp251, <variable>.DPB.fs_ref
	b	.L1815	@
.L1827:
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1803	@,
	b	.L1813	@
.L1828:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1804	@,
	b	.L1814	@
.L1821:
	ldr	r8, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r8, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1796	@,
	b	.L1813	@
.L1822:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1797	@,
	b	.L1814	@
.L1823:
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1799	@,
	b	.L1813	@
.L1824:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1800	@,
	b	.L1814	@
.L1818:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1789	@,
	ldr	r0, [r1, #400]	@ tmp277,
	bic	r0, r0, #-16777216	@ tmp278, tmp277,
	bic	r0, r0, #255	@ tmp278, tmp278,
	cmp	r0, #65536	@ tmp278,
	bne	.L1789	@,
.L1812:
	mov	r0, r3	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	UnMarkFrameStoreRef	@
.L1819:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1791	@,
	ldr	r4, [r1, #400]	@ tmp281,
	bic	r4, r4, #-16777216	@ tmp282, tmp281,
	bic	r4, r4, #255	@ tmp282, tmp282,
	cmp	r4, #65536	@ tmp282,
	bne	.L1791	@,
	b	.L1812	@
	.fnend
	.size	UnMarkSTRef, .-UnMarkSTRef
	.align	2
	.global	ClearAll
	.type	ClearAll, %function
ClearAll:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r4, r1	@ flag, flag
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r4, #0	@ flag,
	beq	.L1830	@,
	movw	r3, #52840	@ tmp157,
	add	r1, r5, #8	@, pH264Ctx,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
.L1831:
	add	r7, r5, #27392	@ tmp163, pH264Ctx,
	mov	fp, #0	@ ivtmp.5203,
	add	r9, r7, #116	@ ivtmp.5225, tmp163,
	add	sl, r7, #112	@ ivtmp.5222, tmp163,
	add	r8, r7, #124	@ ivtmp.5223, tmp163,
	add	r7, r7, #120	@ ivtmp.5224, tmp163,
	mov	r6, fp	@ i, ivtmp.5203
	mov	r4, fp	@ tmp323, ivtmp.5203
.L1836:
	mov	r1, #560	@,
	add	r2, r5, fp	@ D.50506, pH264Ctx, ivtmp.5203
	mul	lr, r1, r6	@ tmp206,, i
	ldr	r1, [sl, #0]	@ temp.5233, <variable>.fs_image.p_usrdat
	add	r3, r2, #27136	@ tmp168, D.50506,
	add	ip, r2, #27392	@ tmp205, D.50506,
	cmp	r1, #0	@ temp.5233,
	add	fp, fp, #560	@ ivtmp.5203, ivtmp.5203,
	add	r0, lr, #27136	@ tmp208, tmp206,
	add	lr, r2, #27648	@ tmp180, D.50506,
	add	r0, r0, #168	@ tmp208, tmp208,
	str	r6, [ip, #96]	@ i, <variable>.fs_image.image_id
	add	r0, r5, r0	@ D.38027, pH264Ctx, tmp208
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
	str	r0, [lr, #60]	@ D.38027, <variable>.frame.frame_store
	str	r4, [lr, #176]	@ tmp323, <variable>.long_term_frame_idx
	str	r4, [lr, #168]	@ tmp323, <variable>.frame_num
	str	r4, [lr, #180]	@ tmp323, <variable>.poc
	str	r3, [lr, #204]	@, <variable>.pmv_address_idc
	str	ip, [lr, #208]	@, <variable>.apc_idc
	str	r0, [lr, #132]	@ D.38027, <variable>.bottom_field.frame_store
	str	r0, [lr, #96]	@ D.38027, <variable>.top_field.frame_store
	strb	r4, [lr, #56]	@ tmp323, <variable>.frame.structure
	strb	r2, [lr, #92]	@, <variable>.top_field.structure
	beq	.L1832	@,
	movw	r3, #52840	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [sl, #0]	@ tmp323, <variable>.fs_image.p_usrdat
.L1832:
	ldr	r1, [r9, #0]	@ temp.5235, <variable>.fs_image.p_usrdat
	add	sl, sl, #560	@ ivtmp.5222, ivtmp.5222,
	cmp	r1, #0	@ temp.5235,
	beq	.L1833	@,
	movw	ip, #52840	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r9, #0]	@ tmp323, <variable>.fs_image.p_usrdat
.L1833:
	ldr	r1, [r7, #0]	@ temp.5237, <variable>.fs_image.p_usrdat
	add	r9, r9, #560	@ ivtmp.5225, ivtmp.5225,
	cmp	r1, #0	@ temp.5237,
	beq	.L1834	@,
	movw	r2, #52840	@,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r7, #0]	@ tmp323, <variable>.fs_image.p_usrdat
.L1834:
	ldr	r1, [r8, #0]	@ D.38031, <variable>.fs_image.p_usrdat
	add	r7, r7, #560	@ ivtmp.5224, ivtmp.5224,
	cmp	r1, #0	@ D.38031,
	beq	.L1835	@,
	movw	lr, #52840	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r8, #0]	@ tmp323, <variable>.fs_image.p_usrdat
.L1835:
	cmp	r6, #40	@ i,
	add	r8, r8, #560	@ ivtmp.5223, ivtmp.5223,
	bne	.L1836	@,
	movw	r4, #49912	@ tmp240,
	ldr	r1, [r5, r4]	@ temp.5239, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5239,
	beq	.L1837	@,
	movw	r3, #52840	@ tmp241,
	mov	r7, #0	@ tmp244,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, r4]	@ tmp244, <variable>.CurrPic.fs_image.p_usrdat
.L1837:
	movw	r4, #49916	@ tmp245,
	ldr	r1, [r5, r4]	@ temp.5241, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5241,
	beq	.L1838	@,
	movw	ip, #52840	@ tmp246,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp249,
	str	r0, [r5, r4]	@ tmp249, <variable>.CurrPic.fs_image.p_usrdat
.L1838:
	mov	r4, #49920	@ tmp250,
	ldr	r1, [r5, r4]	@ temp.5243, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5243,
	beq	.L1839	@,
	movw	r2, #52840	@ tmp251,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp254,
	str	r1, [r5, r4]	@ tmp254, <variable>.CurrPic.fs_image.p_usrdat
.L1839:
	movw	r4, #49924	@ tmp255,
	ldr	r1, [r5, r4]	@ D.38034, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ D.38034,
	beq	.L1840	@,
	movw	lr, #52840	@ tmp256,
	mov	r7, #0	@ tmp259,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, r4]	@ tmp259, <variable>.CurrPic.fs_image.p_usrdat
.L1840:
	movw	r7, #51344	@ tmp260,
	ldr	r4, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r4, #0	@ <variable>.TotalUsrDatNum,
	beq	.L1841	@,
	add	r8, r5, #51200	@ ivtmp.5194, pH264Ctx,
	mov	r6, #0	@ i.5232,
	add	r4, r8, #148	@ ivtmp.5194, ivtmp.5194,
	movw	sl, #52840	@ tmp320,
	mov	r8, r6	@ tmp321, i.5232
.L1843:
	ldr	r1, [r4, #0]	@ D.38037, <variable>.pUsrDatArray
	add	r6, r6, #1	@ i.5232, i.5232,
	cmp	r1, #0	@ D.38037,
	beq	.L1842	@,
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r4, #0]	@ tmp321, <variable>.pUsrDatArray
.L1842:
	ldr	r3, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r4, r4, #4	@ ivtmp.5194, ivtmp.5194,
	cmp	r3, r6	@ <variable>.TotalUsrDatNum, i.5232
	bhi	.L1843	@,
.L1841:
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
.L1830:
	add	r0, r5, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	movw	r1, #52840	@ tmp161,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	bl	FSP_EmptyInstance	@
	b	.L1831	@
	.fnend
	.size	ClearAll, .-ClearAll
	.align	2
	.global	H264DEC_GetImageBuffer
	.type	H264DEC_GetImageBuffer, %function
H264DEC_GetImageBuffer:
	.fnstart
.LFB2050:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #51316	@ tmp146,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r0, r3]	@ D.45674, <variable>.TotalFsNum
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ D.45674,
	beq	.L1848	@,
	add	r6, r0, #27136	@ ivtmp.5278, pH264Ctx,
	add	r7, r0, #26368	@ ivtmp.5273, pH264Ctx,
	add	r6, r6, #169	@ ivtmp.5278, ivtmp.5278,
	add	r7, r7, #68	@ ivtmp.5273, ivtmp.5273,
	mov	r5, #0	@ i.5282,
	mov	r8, #560	@ tmp179,
	movw	sl, #26628	@ tmp180,
	movw	r9, #26432	@ tmp181,
.L1855:
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L1849	@,
	mul	r2, r8, r5	@ tmp149, tmp179, i.5282
	add	r1, r2, #27136	@ tmp151, tmp149,
	add	ip, r1, #168	@ tmp151, tmp151,
	adds	ip, r4, ip	@ D.45684, pH264Ctx, tmp151
	beq	.L1850	@,
	ldr	lr, [r4, sl]	@ D.45884, <variable>.DPB.used_size
	cmp	lr, #0	@ D.45884,
	beq	.L1850	@,
	ldr	r1, [r4, r9]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	ip, r1	@ D.45684, <variable>.DPB.fs
	beq	.L1849	@,
	tst	lr, #1	@ D.45884,
	mov	r1, r7	@ ivtmp.5273, ivtmp.5273
	bne	.L1851	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.45884
	bcs	.L1850	@,
	mov	r1, r7	@ ivtmp.5273, ivtmp.5273
	ldr	r2, [r1], #4	@ D.45885, <variable>.DPB.fs
	cmp	ip, r2	@ D.45684, D.45885
	bne	.L1851	@,
	b	.L1849	@
.L1852:
	ldr	fp, [r2], #4	@ D.45885, <variable>.DPB.fs
	cmp	ip, fp	@ D.45684, D.45885
	beq	.L1849	@,
	ldr	fp, [r1, #4]	@ D.45885, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5273, tmp188,
	cmp	ip, fp	@ D.45684, D.45885
	beq	.L1849	@,
.L1851:
	add	r0, r0, #1	@ tmp189, i,
	mov	r2, r1	@ tmp188, ivtmp.5273
	cmp	r0, lr	@ tmp189, D.45884
	add	r0, r0, #1	@ i, tmp189,
	bcc	.L1852	@,
.L1850:
	movw	r5, #52840	@ tmp157,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ ret,
	beq	.L1848	@,
	cmn	r0, #1	@ ret,
	beq	.L1866	@,
.L1853:
	mov	r0, #0	@ D.45677,
.L1854:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1849:
	add	r5, r5, #1	@ i.5282, i.5282,
	add	r6, r6, #560	@ ivtmp.5278, ivtmp.5278,
	cmp	r3, r5	@ D.45674, i.5282
	bhi	.L1855	@,
	add	r0, r4, #8	@, pH264Ctx,
	add	r1, sp, #4	@,,
	mov	r2, sp	@,
	movw	r6, #51316	@ tmp164,
	bl	GetQueueImgNum	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r6]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r3, #0	@ <variable>.TotalFsNum,
	beq	.L1856	@,
	mov	r5, #0	@ i,
.L1857:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, r6]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r5, r5, #1	@ i, i,
	cmp	ip, r5	@ <variable>.TotalFsNum, i
	bhi	.L1857	@,
.L1856:
	bl	vfmw_dprint_nothing	@
	movw	r1, #51316	@ tmp171,
	ldr	r0, [r4, r1]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	movw	ip, #26628	@ tmp174,
	ldr	r3, [r4, ip]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	ldr	r1, [sp, #0]	@ NewImgNum, NewImgNum
	sub	r2, r0, #2	@ tmp172, <variable>.TotalFsNum,
	ldr	ip, [sp, #4]	@ ReadImgNum, ReadImgNum
	rsb	r0, r3, r2	@ tmp175, <variable>.DPB.used_size, tmp172
	add	r2, r1, ip	@ tmp168, NewImgNum, ReadImgNum
	cmp	r2, r0	@ tmp168, tmp175
	bge	.L1853	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.45677,
	b	.L1854	@
.L1848:
	mov	r0, #1	@ D.45677,
	b	.L1854	@
.L1866:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r4, #8	@, pH264Ctx,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.45677,
	b	.L1854	@
	.fnend
	.size	H264DEC_GetImageBuffer, .-H264DEC_GetImageBuffer
	.align	2
	.global	H264DEC_Init
	.type	H264DEC_Init, %function
H264DEC_Init:
	.fnstart
.LFB2046:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #352]	@ D.45422, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #52896	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pH264Ctx,
	str	r6, [r4, #352]	@ D.45422, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	mov	r0, #0	@ tmp149,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	str	r0, [r4, #364]	@ tmp149, <variable>.StartMode
	str	r0, [r4, #360]	@ tmp149, <variable>.pH264DecParam
	ldr	r3, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L1880	@,
	movw	r0, #13572	@ tmp158,
	movw	ip, #13576	@ tmp160,
	mov	r2, #13568	@ tmp162,
	mov	lr, #32	@ tmp159,
	mov	r1, #256	@ tmp161,
	mov	r6, #136	@ tmp163,
	str	lr, [r4, r0]	@ tmp159, <variable>.MaxSpsNum
	str	r1, [r4, ip]	@ tmp161, <variable>.MaxPpsNum
	str	r6, [r4, r2]	@ tmp163, <variable>.MaxSliceNum
.L1869:
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
	add	r0, r0, r2	@ D.45443,, <variable>.s32BasicCtxSize
	str	r0, [r4, ip]	@ D.45443, <variable>.SPS
	add	ip, r0, r1	@ prephitmp.5315, D.45443, tmp169
	mov	r2, #2208	@ tmp176,
	cmp	r0, #0	@ D.45443,
	str	ip, [r4, r6]	@ prephitmp.5315, <variable>.PPS
	mla	r2, r2, r3, ip	@ D.45455, tmp176, <variable>.MaxPpsNum, prephitmp.5315
	str	r2, [r4, lr]	@ D.45455, <variable>.DecSlicePara
	beq	.L1879	@,
	cmp	ip, #0	@ prephitmp.5315,
	beq	.L1879	@,
	cmp	r2, #0	@ D.45455,
	beq	.L1879	@,
	ldr	lr, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	lr, #0	@ <variable>.s32KeepSPSPPS,
	beq	.L1881	@,
.L1874:
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
	str	r3, [r4, lr]	@ prephitmp.5313, <variable>.CurrPPS.pic_parameter_set_id
	ldr	r0, [r4, r5]	@ __p, <variable>.DecSlicePara
	cmp	r1, #0	@ __n,
	bne	.L1882	@,
.L1876:
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
	cmn	r0, #1	@ D.45485,
	str	r0, [r4, r3]	@ D.45485, <variable>.ChanID
	beq	.L1879	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, tmp199
	bl	ClearAll	@
	mov	r0, r5	@ D.45461, tmp241
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1881:
	cmp	r1, #0	@ tmp169,
	bne	.L1883	@,
.L1875:
	movw	r5, #13576	@ tmp184,
	mov	r6, #2208	@ tmp185,
	ldr	r3, [r4, r5]	@ prephitmp.5313, <variable>.MaxPpsNum
	mul	r1, r6, r3	@ __n, tmp185, prephitmp.5313
	cmp	r1, #0	@ __n,
	beq	.L1874	@,
	mov	r0, ip	@, prephitmp.5315
	bl	__memzero	@
	ldr	r3, [r4, r5]	@ prephitmp.5313, <variable>.MaxPpsNum
	b	.L1874	@
.L1882:
	bl	__memzero	@
	b	.L1876	@
.L1880:
	ldr	r0, [r5, #580]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.stChanOption.s32MaxSpsNum
	movw	r3, #13572	@ tmp152,
	movw	lr, #13576	@ tmp154,
	mov	r1, #13568	@ tmp156,
	str	r0, [r4, r3]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.MaxSpsNum
	ldr	ip, [r5, #584]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.stChanOption.s32MaxPpsNum
	str	ip, [r4, lr]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.MaxPpsNum
	ldr	r2, [r5, #576]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.stChanOption.s32MaxSliceNum
	str	r2, [r4, r1]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.MaxSliceNum
	b	.L1869	@
.L1883:
	bl	__memzero	@
	ldr	ip, [r4, r6]	@ prephitmp.5315, <variable>.PPS
	b	.L1875	@
.L1879:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.45461,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	H264DEC_Init, .-H264DEC_Init
	.align	2
	.global	AllocFrameStore
	.type	AllocFrameStore, %function
AllocFrameStore:
	.fnstart
.LFB1999:
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
	beq	.L1926	@,
	movw	r0, #20682	@ tmp162,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@,
	moveq	r3, #1	@,
.L1926:
	movw	r2, #52768	@ tmp164,
	str	r3, [sp, #0]	@, %sfp
	ldr	r1, [r4, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r1, #2	@ <variable>.OldDecMode,
	beq	.L1892	@,
	ldr	r3, [sp, #0]	@, %sfp
	movw	ip, #49705	@ tmp169,
	mov	r5, #0	@ tmp170,
	strb	r5, [r4, ip]	@ tmp170, <variable>.CurrPic.field_pair_flag
	cmp	r3, #2	@,
	beq	.L1931	@,
	ldr	r2, [sp, #0]	@, %sfp
	cmp	r2, #1	@,
	beq	.L1932	@,
.L1892:
	mov	r2, #0	@ tmp209,
	movw	r3, #49705	@ tmp208,
.L1927:
	strb	r2, [r4, r3]	@ tmp209, <variable>.CurrPic.field_pair_flag
.L1889:
	movw	r3, #51316	@ tmp214,
	mov	r5, #0	@ tmp212,
	ldr	r7, [r4, r3]	@ D.41343, <variable>.TotalFsNum
	movw	lr, #49704	@ tmp211,
	strb	r5, [r4, lr]	@ tmp212, <variable>.CurrPic.state
	cmp	r7, r5	@ D.41343,
	beq	.L1899	@,
	add	r6, r4, #27136	@ ivtmp.5373, pH264Ctx,
	add	r8, r4, #26368	@ ivtmp.5368, pH264Ctx,
	add	r6, r6, #169	@ ivtmp.5373, ivtmp.5373,
	add	r8, r8, #68	@ ivtmp.5368, ivtmp.5368,
	mov	sl, #560	@ tmp364,
	movw	r9, #26628	@ tmp365,
	movw	fp, #26432	@ tmp366,
.L1905:
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L1900	@,
	mul	r1, sl, r5	@ tmp217, tmp364, i
	add	r2, r1, #27136	@ tmp219, tmp217,
	add	ip, r2, #168	@ tmp219, tmp219,
	adds	r3, r4, ip	@ D.41339, pH264Ctx, tmp219
	beq	.L1901	@,
	ldr	lr, [r4, r9]	@ D.45891, <variable>.DPB.used_size
	cmp	lr, #0	@ D.45891,
	beq	.L1901	@,
	ldr	ip, [r4, fp]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r3, ip	@ D.41339, <variable>.DPB.fs
	beq	.L1900	@,
	tst	lr, #1	@ D.45891,
	mov	r1, r8	@ ivtmp.5368, ivtmp.5368
	bne	.L1902	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.45891
	bcs	.L1901	@,
	mov	r1, r8	@ ivtmp.5368, ivtmp.5368
	ldr	ip, [r1], #4	@ D.45892, <variable>.DPB.fs
	cmp	r3, ip	@ D.41339, D.45892
	bne	.L1902	@,
	b	.L1900	@
.L1903:
	ldr	ip, [r2], #4	@ D.45892, <variable>.DPB.fs
	cmp	r3, ip	@ D.41339, D.45892
	beq	.L1900	@,
	ldr	ip, [r1, #4]	@ D.45892, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5368, tmp373,
	cmp	r3, ip	@ D.41339, D.45892
	beq	.L1900	@,
.L1902:
	add	r0, r0, #1	@ tmp374, i,
	mov	r2, r1	@ tmp373, ivtmp.5368
	cmp	r0, lr	@ tmp374, D.45891
	add	r0, r0, #1	@ i, tmp374,
	bcc	.L1903	@,
.L1901:
	mov	r7, #560	@ tmp235,
	add	sl, r4, #49664	@ tmp363, pH264Ctx,
	mla	r2, r7, r5, r4	@ tmp236, tmp235, i, pH264Ctx
	add	r7, sl, #56	@ tmp363, tmp363,
	movw	r6, #50112	@ tmp228,
	movw	sl, #49704	@ tmp225,
	movw	r9, #50156	@ tmp230,
	mov	r5, #0	@ tmp229,
	add	r8, r2, #27136	@, tmp236,
	str	r3, [r4, r6]	@ D.41339, <variable>.CurrPic.frame_store
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
	bne	.L1899	@,
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
	beq	.L1907	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r6, #25	@ <variable>.eCapLevel,
	beq	.L1933	@,
.L1908:
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
	mov	ip, r8	@ prephitmp.5351, LogicFsID
	str	r8, [r3, #508]	@ LogicFsID, <variable>.logic_fs_id
	ldrsb	r1, [r5, #4]	@ <variable>.PmvIdc, <variable>.PmvIdc
	movw	r5, #50180	@ tmp311,
	str	r1, [r4, r5]	@ <variable>.PmvIdc, <variable>.CurrPic.pmv_address_idc
.L1909:
	movw	r5, #20681	@ tmp323,
	ldr	r1, [sp, #0]	@, %sfp
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #50112	@ tmp322,
	ldr	r5, [r4, r2]	@ temp.5392, <variable>.CurrPic.frame_store
	movw	r0, #49707	@ tmp320,
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	uxtb	r2, r1	@ D.41394,
	movw	r1, #49705	@ tmp326,
	strb	r2, [r4, r0]	@ D.41394, <variable>.CurrPic.structure
	movne	r3, #3	@, iftmp.689,
	strb	r3, [r5, #400]	@ iftmp.689, <variable>.frame.structure
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r0, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L1934	@,
	ldr	r1, [sp, #0]	@, %sfp
	movw	r0, #20700	@ tmp347,
	movw	r3, #20712	@ tmp350,
	ldr	r5, [r4, r0]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r3, #52856	@ tmp353,
	cmp	r1, #0	@,
	ldr	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r3, #50664	@ tmp344,
	strb	r2, [r4, r3]	@ D.41394, <variable>.PrevPic.structure
	movw	r3, #50672	@ tmp346,
	str	r5, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r3, #50668	@ tmp349,
	str	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r3, #50680	@ tmp352,
	str	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r3, #50684	@ tmp355,
	str	ip, [r4, r3]	@ prephitmp.5351, <variable>.PrevPic.image_id
	movne	r0, #0	@ D.41348,
	ldreq	r0, [sp, #0]	@ D.41348, %sfp
	movne	r3, #50688	@ tmp356,
	moveq	r3, #50688	@ tmp359,
	movne	r2, #1	@ tmp357,
	strneb	r2, [r4, r3]	@ tmp357, <variable>.PrevPic.FrameStoreFlag
	streqb	r0, [r4, r3]	@ D.41348, <variable>.PrevPic.FrameStoreFlag
.L1906:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1900:
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #560	@ ivtmp.5373, ivtmp.5373,
	cmp	r7, r5	@ D.41343, i
	bhi	.L1905	@,
.L1899:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.41348,
	b	.L1906	@
.L1931:
	movw	r1, #50664	@ tmp172,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r0, #1	@ <variable>.PrevPic.structure,
	beq	.L1891	@,
	mov	r2, #0	@ tmp209,
	movw	r3, #49705	@ tmp208,
	b	.L1927	@
.L1932:
	movw	ip, #50664	@ tmp174,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r5, #2	@ <variable>.PrevPic.structure,
	bne	.L1892	@,
.L1891:
	movw	r0, #52768	@ tmp176,
	ldr	r3, [r4, r0]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #2	@ <variable>.OldDecMode,
	beq	.L1893	@,
	movw	ip, #50672	@ tmp178,
	movw	r5, #20700	@ tmp179,
	ldr	r1, [r4, ip]	@ <variable>.PrevPic.frame_num, <variable>.PrevPic.frame_num
	ldr	r2, [r4, r5]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r1, r2	@ <variable>.PrevPic.frame_num, <variable>.CurrSlice.frame_num
	bne	.L1889	@,
.L1893:
	movw	r0, #20712	@ tmp182,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L1894	@,
	movw	r2, #50668	@ tmp184,
	ldr	r1, [r4, r2]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.PrevPic.nal_ref_idc,
	bne	.L1889	@,
.L1895:
	movw	r5, #52856	@ tmp188,
	sub	r2, r5, #4	@ tmp189, tmp189,
	ldr	r1, [r4, r5]	@ <variable>.PicCounter, <variable>.PicCounter
	ldr	r0, [r4, r2]	@ <variable>.PrevStorePicCounter, <variable>.PrevStorePicCounter
	rsb	r3, r0, r1	@ tmp190, <variable>.PrevStorePicCounter, <variable>.PicCounter
	cmp	r3, #2	@ tmp190,
	bhi	.L1889	@,
	movw	ip, #50112	@ tmp196,
	movw	r3, #49705	@ tmp193,
	ldr	r2, [r4, ip]	@ D.41316, <variable>.CurrPic.frame_store
	mov	r1, #1	@ tmp194,
	strb	r1, [r4, r3]	@ tmp194, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ D.41316,
	beq	.L1927	@,
	ldr	r0, [sp, #0]	@, %sfp
	cmp	r0, #2	@,
	beq	.L1935	@,
	ldr	r1, [sp, #0]	@, %sfp
	cmp	r1, #1	@,
	beq	.L1936	@,
.L1898:
	mov	ip, #0	@ prephitmp.5351,
	b	.L1909	@
.L1934:
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
	str	ip, [r4, r2]	@ prephitmp.5351, <variable>.PrevPic.image_id
	mov	r1, #50688	@ tmp341,
	movw	ip, #50664	@ tmp328,
	mov	r0, r3	@ D.41348, tmp329
	strb	r3, [r4, r1]	@ tmp329, <variable>.PrevPic.FrameStoreFlag
	strb	r3, [r4, ip]	@ tmp329, <variable>.PrevPic.structure
	b	.L1906	@
.L1933:
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
	add	r0, r6, r0	@ D.41369, ChromOffset, <variable>.stDispImg.luma_phy_addr
	str	r0, [r5, #116]	@ D.41369, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #128]	@ <variable>.stDispImg.luma_2d_phy_addr, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r1, [r5, #96]	@ <variable>.stDispImg.top_luma_phy_addr, <variable>.stDispImg.top_luma_phy_addr
	add	ip, r6, r3	@ D.41383, ChromOffset, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r2, [r5, #180]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	add	r6, r6, r1	@ D.41376, ChromOffset, <variable>.stDispImg.top_luma_phy_addr
	str	ip, [r5, #132]	@ D.41383, <variable>.stDispImg.chrom_2d_phy_addr
	add	r2, r6, r2	@ tmp290, D.41376, <variable>.stDispImg.image_stride
	str	r6, [r5, #100]	@ D.41376, <variable>.stDispImg.top_chrom_phy_addr
	str	r2, [r5, #108]	@ tmp290, <variable>.stDispImg.btm_chrom_phy_addr
	str	r0, [r5, #44]	@, <variable>.stDispImg.chrom_vir_addr
	mov	r0, ip	@, D.41383
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #60]	@, <variable>.stDispImg.chrom_2d_vir_addr
	b	.L1908	@
.L1894:
	movw	ip, #50668	@ tmp186,
	ldr	r5, [r4, ip]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r5, #0	@ <variable>.PrevPic.nal_ref_idc,
	beq	.L1889	@,
	b	.L1895	@
.L1936:
	ldrb	r5, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, #2	@ <variable>.is_used,
	beq	.L1898	@,
.L1928:
	mov	r7, #0	@ tmp203,
	strb	r7, [r4, r3]	@ tmp203, <variable>.CurrPic.field_pair_flag
	b	.L1889	@
.L1907:
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r3, [r4, sl]	@ tmp278, <variable>.CurrPic.state
	strb	r3, [r2, #4]	@ tmp278, <variable>.is_in_dpb
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r9	@, <variable>.CurrPic.state
	bl	ClearAll	@
	mvn	r0, #0	@ D.41348,
	b	.L1906	@
.L1935:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r2, r1	@ <variable>.is_used,
	bne	.L1928	@,
	mov	ip, #0	@ prephitmp.5351,
	b	.L1909	@
	.fnend
	.size	AllocFrameStore, .-AllocFrameStore
	.align	2
	.global	OutputFrmToVO
	.type	OutputFrmToVO, %function
OutputFrmToVO:
	.fnstart
.LFB1952:
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
	beq	.L1955	@,
	ldr	r1, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ <variable>.s32DecOrderOutput,
	ble	.L1940	@,
	movw	r2, #52768	@ tmp156,
	ldr	ip, [r0, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	ip, #2	@ <variable>.OldDecMode,
	beq	.L1940	@,
	movw	ip, #50696	@ tmp158,
	ldr	r1, [r0, ip]	@ D.38950, <variable>.pDirectOutBuf
	cmp	r1, #0	@ D.38950,
	strneb	r3, [r1, #1]	@ tmp153, <variable>.is_used
	movne	r0, #1	@ D.38942,
	strne	r3, [r4, ip]	@ tmp153, <variable>.pDirectOutBuf
	beq	.L1941	@,
.L1939:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1940:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	cmn	r0, #3	@,
	beq	.L1941	@,
	movw	r8, #50696	@ tmp163,
	ldr	r1, [r4, r8]	@ temp.5432, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5432,
	beq	.L1942	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r8]	@, <variable>.pDirectOutBuf
	bl	CheckFrameStore	@
	cmp	r0, #0	@ ret.5434
	beq	.L1956	@,
	cmn	r0, #3	@ ret.5434,
	beq	.L1947	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r8]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r3, #184]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
.L1947:
	movw	r3, #50696	@ tmp212,
	mov	r0, #0	@ tmp213,
	ldr	ip, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [ip, #1]	@ tmp213, <variable>.is_used
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	lr, r5	@ <variable>.pDirectOutBuf, pFrameStore
	streq	r0, [r4, r3]	@ tmp213, <variable>.pDirectOutBuf
	beq	.L1939	@,
	str	r0, [r4, r3]	@ tmp213, <variable>.pDirectOutBuf
.L1942:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	cmp	r0, #0	@ ret.5449
	beq	.L1957	@,
	cmn	r0, #3	@ ret.5449,
	beq	.L1941	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r5, #184]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
	mov	r0, #2	@ D.38942,
	b	.L1939	@
.L1955:
	bl	vfmw_dprint_nothing	@
	mov	r0, #2	@ D.38942,
	b	.L1939	@
.L1941:
	mov	r0, #1	@ D.38942,
	b	.L1939	@
.L1957:
	movw	r7, #52840	@ tmp221,
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pstLogicFsImage.5453,
	beq	.L1954	@,
	cmp	r6, #1	@ is_last_frame,
	streq	r6, [r7, #224]	@ is_last_frame, <variable>.last_frame
	movw	r6, #52840	@ tmp228,
	mov	r1, #0	@,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r2, r4	@, pH264Ctx
	add	r3, r4, #8	@, pH264Ctx,
	str	r7, [sp, #0]	@ pstLogicFsImage.5453,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L1958	@,
	mov	r1, r7	@, pstLogicFsImage.5453
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r2, #52872	@ tmp234,
	movw	r3, #52864	@ tmp238,
	ldr	ip, [r4, r2]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	r1, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	mov	r0, #0	@ D.38942,
	add	ip, ip, #1	@ tmp237, <variable>.numOutputFrame,
	str	ip, [r4, r2]	@ tmp237, <variable>.numOutputFrame
	add	r2, r1, #2	@ tmp241, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp241, <variable>.PicOutCounter
	b	.L1939	@
.L1956:
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
	beq	.L1954	@,
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
	bne	.L1959	@,
	mov	r1, r7	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r1, #52872	@ tmp200,
	movw	r3, #52864	@ tmp204,
	ldr	r2, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	ip, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	add	r0, r2, #1	@ tmp203, <variable>.numOutputFrame,
	str	r0, [r4, r1]	@ tmp203, <variable>.numOutputFrame
	add	r2, ip, #2	@ tmp207, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp207, <variable>.PicOutCounter
	b	.L1947	@
.L1958:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.38942,
	b	.L1939	@
.L1959:
	movw	r5, #50696	@ tmp190,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r6, #0	@ tmp191,
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
	mvn	r0, #0	@ D.38942,
	b	.L1939	@
.L1954:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38942,
	b	.L1939	@
	.fnend
	.size	OutputFrmToVO, .-OutputFrmToVO
	.align	2
	.global	InitDPB
	.type	InitDPB, %function
InitDPB:
	.fnstart
.LFB1992:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ pH264Ctx, pH264Ctx
	beq	.L1961	@,
	bl	ClearAllSlice	@
	movw	r3, #26432	@ tmp191,
	ldr	r3, [r4, r3]	@ temp.5523, <variable>.DPB.fs
	cmp	r3, #0	@ temp.5523,
	beq	.L1962	@,
	movw	r2, #52840	@ tmp192,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1962:
	movw	r0, #26496	@ tmp195,
	ldr	r3, [r4, r0]	@ temp.5520, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5520,
	beq	.L1963	@,
	movw	r5, #52840	@ tmp196,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1963:
	movw	r1, #26560	@ tmp199,
	ldr	r3, [r4, r1]	@ temp.5525, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5525,
	beq	.L1964	@,
	movw	r6, #52840	@ tmp200,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1964:
	movw	r5, #26436	@ tmp209,
	mov	lr, #0	@ tmp204,
	ldr	r2, [r4, r5]	@ temp.5528, <variable>.DPB.fs
	movw	r0, #26432	@ tmp207,
	movw	r3, #26560	@ tmp203,
	movw	ip, #26496	@ tmp205,
	cmp	r2, lr	@ temp.5528,
	str	lr, [r4, r0]	@ tmp204, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp204, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp204, <variable>.DPB.fs_ref
	beq	.L1965	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp210,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1965:
	movw	r1, #26500	@ tmp213,
	ldr	r3, [r4, r1]	@ temp.5531, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5531,
	beq	.L1966	@,
	movw	r6, #52840	@ tmp214,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1966:
	movw	ip, #26564	@ tmp217,
	ldr	r3, [r4, ip]	@ temp.5534, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5534,
	beq	.L1967	@,
	movw	lr, #52840	@ tmp218,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1967:
	movw	r6, #26440	@ tmp227,
	mov	r3, #0	@ tmp222,
	ldr	r2, [r4, r6]	@ temp.5537, <variable>.DPB.fs
	movw	r1, #26436	@ tmp225,
	movw	r5, #26564	@ tmp221,
	movw	r0, #26500	@ tmp223,
	cmp	r2, r3	@ temp.5537,
	str	r3, [r4, r1]	@ tmp222, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp222, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp222, <variable>.DPB.fs_ref
	beq	.L1968	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp228,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1968:
	movw	ip, #26504	@ tmp231,
	ldr	r3, [r4, ip]	@ temp.5540, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5540,
	beq	.L1969	@,
	movw	lr, #52840	@ tmp232,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1969:
	movw	r0, #26568	@ tmp235,
	ldr	r3, [r4, r0]	@ temp.5543, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5543,
	beq	.L1970	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp236,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1970:
	movw	lr, #26444	@ tmp245,
	mov	r6, #0	@ tmp240,
	ldr	r2, [r4, lr]	@ temp.5546, <variable>.DPB.fs
	movw	ip, #26440	@ tmp243,
	movw	r1, #26568	@ tmp239,
	movw	r5, #26504	@ tmp241,
	cmp	r2, r6	@ temp.5546,
	str	r6, [r4, ip]	@ tmp240, <variable>.DPB.fs
	str	r6, [r4, r1]	@ tmp240, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp240, <variable>.DPB.fs_ref
	beq	.L1971	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp246,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1971:
	movw	r0, #26508	@ tmp249,
	ldr	r3, [r4, r0]	@ temp.5549, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5549,
	beq	.L1972	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp250,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1972:
	movw	r5, #26572	@ tmp253,
	ldr	r3, [r4, r5]	@ temp.5552, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5552,
	beq	.L1973	@,
	movw	r6, #52840	@ tmp254,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1973:
	movw	r3, #26448	@ tmp263,
	mov	ip, #0	@ tmp258,
	ldr	r2, [r4, r3]	@ temp.5555, <variable>.DPB.fs
	movw	r0, #26444	@ tmp261,
	movw	lr, #26572	@ tmp257,
	movw	r1, #26508	@ tmp259,
	cmp	r2, ip	@ temp.5555,
	str	ip, [r4, r0]	@ tmp258, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp258, <variable>.DPB.fs_ltref
	str	ip, [r4, r1]	@ tmp258, <variable>.DPB.fs_ref
	beq	.L1974	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp264,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1974:
	movw	r5, #26512	@ tmp267,
	ldr	r3, [r4, r5]	@ temp.5558, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5558,
	beq	.L1975	@,
	movw	r6, #52840	@ tmp268,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1975:
	movw	r1, #26576	@ tmp271,
	ldr	r3, [r4, r1]	@ temp.5561, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5561,
	beq	.L1976	@,
	movw	ip, #52840	@ tmp272,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1976:
	movw	r6, #26452	@ tmp281,
	mov	r0, #0	@ tmp276,
	ldr	r2, [r4, r6]	@ temp.5564, <variable>.DPB.fs
	movw	r5, #26448	@ tmp279,
	movw	r3, #26576	@ tmp275,
	movw	lr, #26512	@ tmp277,
	cmp	r2, r0	@ temp.5564,
	str	r0, [r4, r5]	@ tmp276, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp276, <variable>.DPB.fs_ltref
	str	r0, [r4, lr]	@ tmp276, <variable>.DPB.fs_ref
	beq	.L1977	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp282,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1977:
	movw	r1, #26516	@ tmp285,
	ldr	r3, [r4, r1]	@ temp.5567, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5567,
	beq	.L1978	@,
	movw	ip, #52840	@ tmp286,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1978:
	movw	lr, #26580	@ tmp289,
	ldr	r3, [r4, lr]	@ temp.5570, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5570,
	beq	.L1979	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp290,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1979:
	movw	ip, #26456	@ tmp299,
	mov	r5, #0	@ tmp294,
	ldr	r2, [r4, ip]	@ temp.5573, <variable>.DPB.fs
	movw	r1, #26452	@ tmp297,
	movw	r6, #26580	@ tmp293,
	movw	r0, #26516	@ tmp295,
	cmp	r2, r5	@ temp.5573,
	str	r5, [r4, r1]	@ tmp294, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp294, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp294, <variable>.DPB.fs_ref
	beq	.L1980	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp300,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1980:
	movw	lr, #26520	@ tmp303,
	ldr	r3, [r4, lr]	@ temp.5576, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5576,
	beq	.L1981	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp304,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1981:
	movw	r0, #26584	@ tmp307,
	ldr	r3, [r4, r0]	@ temp.5579, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5579,
	beq	.L1982	@,
	movw	r5, #52840	@ tmp308,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1982:
	movw	r3, #26460	@ tmp317,
	mov	ip, #0	@ tmp312,
	ldr	r2, [r4, r3]	@ temp.5582, <variable>.DPB.fs
	movw	lr, #26456	@ tmp315,
	movw	r1, #26584	@ tmp311,
	movw	r6, #26520	@ tmp313,
	cmp	r2, ip	@ temp.5582,
	str	ip, [r4, lr]	@ tmp312, <variable>.DPB.fs
	str	ip, [r4, r1]	@ tmp312, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp312, <variable>.DPB.fs_ref
	beq	.L1983	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp318,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1983:
	movw	r0, #26524	@ tmp321,
	ldr	r3, [r4, r0]	@ temp.5585, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5585,
	beq	.L1984	@,
	movw	r5, #52840	@ tmp322,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1984:
	movw	r6, #26588	@ tmp325,
	ldr	r3, [r4, r6]	@ temp.5588, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5588,
	beq	.L1985	@,
	movw	ip, #52840	@ tmp326,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1985:
	movw	r5, #26464	@ tmp335,
	mov	lr, #0	@ tmp330,
	ldr	r2, [r4, r5]	@ temp.5591, <variable>.DPB.fs
	movw	r0, #26460	@ tmp333,
	movw	r3, #26588	@ tmp329,
	movw	r1, #26524	@ tmp331,
	cmp	r2, lr	@ temp.5591,
	str	lr, [r4, r0]	@ tmp330, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp330, <variable>.DPB.fs_ltref
	str	lr, [r4, r1]	@ tmp330, <variable>.DPB.fs_ref
	beq	.L1986	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp336,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1986:
	movw	r6, #26528	@ tmp339,
	ldr	r3, [r4, r6]	@ temp.5594, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5594,
	beq	.L1987	@,
	movw	ip, #52840	@ tmp340,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1987:
	movw	r1, #26592	@ tmp343,
	ldr	r3, [r4, r1]	@ temp.5597, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5597,
	beq	.L1988	@,
	movw	lr, #52840	@ tmp344,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1988:
	movw	ip, #26468	@ tmp353,
	mov	r3, #0	@ tmp348,
	ldr	r2, [r4, ip]	@ temp.5600, <variable>.DPB.fs
	movw	r6, #26464	@ tmp351,
	movw	r5, #26592	@ tmp347,
	movw	r0, #26528	@ tmp349,
	cmp	r2, r3	@ temp.5600,
	str	r3, [r4, r6]	@ tmp348, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp348, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp348, <variable>.DPB.fs_ref
	beq	.L1989	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp354,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1989:
	movw	r1, #26532	@ tmp357,
	ldr	r3, [r4, r1]	@ temp.5603, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5603,
	beq	.L1990	@,
	movw	lr, #52840	@ tmp358,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1990:
	movw	r0, #26596	@ tmp361,
	ldr	r3, [r4, r0]	@ temp.5606, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5606,
	beq	.L1991	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp362,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1991:
	movw	lr, #26472	@ tmp371,
	mov	r6, #0	@ tmp366,
	ldr	r2, [r4, lr]	@ temp.5609, <variable>.DPB.fs
	movw	r1, #26468	@ tmp369,
	movw	ip, #26596	@ tmp365,
	movw	r5, #26532	@ tmp367,
	cmp	r2, r6	@ temp.5609,
	str	r6, [r4, r1]	@ tmp366, <variable>.DPB.fs
	str	r6, [r4, ip]	@ tmp366, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp366, <variable>.DPB.fs_ref
	beq	.L1992	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp372,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1992:
	movw	r0, #26536	@ tmp375,
	ldr	r3, [r4, r0]	@ temp.5612, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5612,
	beq	.L1993	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp376,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1993:
	movw	r5, #26600	@ tmp379,
	ldr	r3, [r4, r5]	@ temp.5615, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5615,
	beq	.L1994	@,
	movw	r6, #52840	@ tmp380,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1994:
	movw	r3, #26476	@ tmp389,
	mov	lr, #0	@ tmp384,
	ldr	r2, [r4, r3]	@ temp.5618, <variable>.DPB.fs
	movw	r0, #26472	@ tmp387,
	movw	r1, #26600	@ tmp383,
	movw	ip, #26536	@ tmp385,
	cmp	r2, lr	@ temp.5618,
	str	lr, [r4, r0]	@ tmp384, <variable>.DPB.fs
	str	lr, [r4, r1]	@ tmp384, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp384, <variable>.DPB.fs_ref
	beq	.L1995	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp390,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1995:
	movw	r5, #26540	@ tmp393,
	ldr	r3, [r4, r5]	@ temp.5621, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5621,
	beq	.L1996	@,
	movw	r6, #52840	@ tmp394,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1996:
	movw	ip, #26604	@ tmp397,
	ldr	r3, [r4, ip]	@ temp.5624, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5624,
	beq	.L1997	@,
	movw	lr, #52840	@ tmp398,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1997:
	movw	r6, #26480	@ tmp407,
	mov	r0, #0	@ tmp402,
	ldr	r2, [r4, r6]	@ temp.5627, <variable>.DPB.fs
	movw	r5, #26476	@ tmp405,
	movw	r3, #26604	@ tmp401,
	movw	r1, #26540	@ tmp403,
	cmp	r2, r0	@ temp.5627,
	str	r0, [r4, r5]	@ tmp402, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp402, <variable>.DPB.fs_ltref
	str	r0, [r4, r1]	@ tmp402, <variable>.DPB.fs_ref
	beq	.L1998	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp408,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1998:
	movw	ip, #26544	@ tmp411,
	ldr	r3, [r4, ip]	@ temp.5630, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5630,
	beq	.L1999	@,
	movw	lr, #52840	@ tmp412,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1999:
	movw	r1, #26608	@ tmp415,
	ldr	r3, [r4, r1]	@ temp.5633, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5633,
	beq	.L2000	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp416,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2000:
	movw	lr, #26484	@ tmp425,
	mov	r5, #0	@ tmp420,
	ldr	r2, [r4, lr]	@ temp.5636, <variable>.DPB.fs
	movw	ip, #26480	@ tmp423,
	movw	r6, #26608	@ tmp419,
	movw	r0, #26544	@ tmp421,
	cmp	r2, r5	@ temp.5636,
	str	r5, [r4, ip]	@ tmp420, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp420, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp420, <variable>.DPB.fs_ref
	beq	.L2001	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp426,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2001:
	movw	r1, #26548	@ tmp429,
	ldr	r3, [r4, r1]	@ temp.5639, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5639,
	beq	.L2002	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp430,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2002:
	movw	r0, #26612	@ tmp433,
	ldr	r3, [r4, r0]	@ temp.5642, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5642,
	beq	.L2003	@,
	movw	r5, #52840	@ tmp434,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2003:
	movw	r3, #26488	@ tmp443,
	mov	ip, #0	@ tmp438,
	ldr	r2, [r4, r3]	@ temp.5645, <variable>.DPB.fs
	movw	r1, #26484	@ tmp441,
	movw	lr, #26612	@ tmp437,
	movw	r6, #26548	@ tmp439,
	cmp	r2, ip	@ temp.5645,
	str	ip, [r4, r1]	@ tmp438, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp438, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp438, <variable>.DPB.fs_ref
	beq	.L2004	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp444,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2004:
	movw	r0, #26552	@ tmp447,
	ldr	r3, [r4, r0]	@ temp.5648, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5648,
	beq	.L2005	@,
	movw	r5, #52840	@ tmp448,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2005:
	movw	r6, #26616	@ tmp451,
	ldr	r3, [r4, r6]	@ temp.5651, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5651,
	beq	.L2006	@,
	movw	ip, #52840	@ tmp452,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2006:
	movw	r5, #26492	@ tmp461,
	mov	r3, #0	@ tmp456,
	ldr	r2, [r4, r5]	@ D.40836, <variable>.DPB.fs
	movw	r0, #26488	@ tmp459,
	movw	r1, #26616	@ tmp455,
	movw	lr, #26552	@ tmp457,
	cmp	r2, r3	@ D.40836,
	str	r3, [r4, r0]	@ tmp456, <variable>.DPB.fs
	str	r3, [r4, r1]	@ tmp456, <variable>.DPB.fs_ltref
	str	r3, [r4, lr]	@ tmp456, <variable>.DPB.fs_ref
	beq	.L2007	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp462,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2007:
	movw	r6, #26556	@ tmp465,
	ldr	r3, [r4, r6]	@ D.40841, <variable>.DPB.fs_ref
	cmp	r3, #0	@ D.40841,
	beq	.L2008	@,
	movw	ip, #52840	@ tmp466,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2008:
	movw	lr, #26620	@ tmp469,
	ldr	r3, [r4, lr]	@ D.40845, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ D.40845,
	beq	.L2009	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp470,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2009:
	movw	lr, #50696	@ tmp491,
	movw	ip, #17568	@ tmp480,
	ldr	r1, [r4, lr]	@ D.40851, <variable>.pDirectOutBuf
	mov	r5, #26624	@ tmp479,
	ldr	r6, [r4, ip]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	movw	r0, #26620	@ tmp473,
	cmp	r1, #0	@ D.40851,
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
	beq	.L2010	@,
	movw	r0, #52768	@ tmp492,
	ldr	r3, [r4, r0]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #2	@ <variable>.OldDecMode,
	beq	.L2025	@,
.L2011:
	movw	r5, #50112	@ tmp496,
	ldr	r3, [r4, r5]	@ D.40862, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.40862,
	beq	.L2013	@,
	movw	r6, #52840	@ tmp497,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L2013:
	movw	lr, #50696	@ tmp500,
	mov	ip, #0	@ tmp501,
	str	ip, [r4, lr]	@ tmp501, <variable>.pDirectOutBuf
.L2010:
	add	lr, r4, #26624	@, pH264Ctx,
	mov	r1, #392	@,
	add	r0, lr, #20	@,,
	movw	r6, #26900	@ tmp504,
	bl	__memzero	@
	mov	r0, #26624	@ tmp505,
	ldr	r1, [r4, r0]	@ <variable>.DPB.size, <variable>.DPB.size
	movw	r2, #26904	@ tmp507,
	movw	ip, #51248	@ tmp509,
	mov	r3, #0	@ tmp508,
	str	r3, [r4, ip]	@ tmp508, <variable>.PmvStoreUsedFlag
	add	r5, r4, #20480	@ ivtmp.5512, pH264Ctx,
	str	r1, [r4, r6]	@ <variable>.DPB.size, <variable>.APC.size
	movw	r6, #51252	@ tmp511,
	movw	r1, #51256	@ tmp513,
	str	r3, [r4, r6]	@ tmp508, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r2]	@ tmp508, <variable>.APC.used_size
	movw	r2, #51260	@ tmp515,
	str	r3, [r4, r1]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r1, #51264	@ tmp517,
	str	r3, [r4, r2]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r2, #51268	@ tmp519,
	str	r3, [r4, r1]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r1, #51272	@ tmp521,
	str	r3, [r4, r2]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r2, #51276	@ tmp523,
	str	r3, [r4, r1]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r1, #51280	@ tmp525,
	str	r3, [r4, r2]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r2, #51284	@ tmp527,
	str	r3, [r4, r1]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r1, #51288	@ tmp529,
	str	r3, [r4, r2]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r2, #51292	@ tmp531,
	str	r3, [r4, r1]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r1, #51296	@ tmp533,
	str	r3, [r4, r2]	@ tmp508, <variable>.PmvStoreUsedFlag
	add	r5, r5, #244	@ ivtmp.5512, ivtmp.5512,
	str	r3, [r4, r1]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r2, #51300	@ tmp535,
	movw	r1, #51304	@ tmp537,
	str	r3, [r4, r2]	@ tmp508, <variable>.PmvStoreUsedFlag
	mov	r0, r3	@ i, tmp508
	str	r3, [r4, r1]	@ tmp508, <variable>.PmvStoreUsedFlag
	movw	r2, #51308	@ tmp539,
	movw	r1, #51312	@ tmp541,
	mov	ip, r3	@ j, i
	mov	r6, r3	@ tmp556, i
	str	r3, [r4, r2]	@ tmp508, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r1]	@ tmp508, <variable>.PmvStoreUsedFlag
.L2014:
	add	r2, r0, r0, asl #5	@, tmp548, i, i,
	mov	r1, #1	@ j,
	mov	lr, r2, asl #2	@ tmp549, tmp548,
	add	r3, lr, #26880	@ tmp550, tmp549,
	add	r2, r3, #152	@ tmp550, tmp550,
	add	lr, r4, r2	@ tmp552, pH264Ctx, tmp550
	add	r2, lr, #8	@ ivtmp.5504, tmp552,
	str	ip, [lr, #4]	@ j, <variable>.pListX
.L2015:
	add	r1, r1, #2	@ j, j,
	mov	r3, r2	@ tmp559, ivtmp.5504
	cmp	r1, #33	@ j,
	str	ip, [r3], #4	@ j, <variable>.pListX
	str	ip, [r2, #4]	@ j, <variable>.pListX
	add	r2, r3, #4	@ ivtmp.5504, tmp559,
	bne	.L2015	@,
	add	r0, r0, #1	@ i, i,
	str	r6, [r5], #4	@ tmp556, <variable>.CurrSlice.listXsize
	cmp	r0, #2	@ i,
	bne	.L2014	@,
	mov	r0, r6	@ D.40834, tmp556
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1961:
	mvn	r0, #0	@ D.40834,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2025:
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmToVO	@
	cmp	r0, #0	@,
	bne	.L2026	@,
.L2012:
	movw	r2, #50696	@ tmp494,
	ldr	r1, [r4, r2]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, #0	@ <variable>.pDirectOutBuf,
	bne	.L2011	@,
	b	.L2010	@
.L2026:
	bl	vfmw_dprint_nothing	@
	b	.L2012	@
	.fnend
	.size	InitDPB, .-InitDPB
	.align	2
	.global	H264DEC_GetRemainImg
	.type	H264DEC_GetRemainImg, %function
H264DEC_GetRemainImg:
	.fnstart
.LFB1960:
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
	beq	.L2028	@,
	add	r5, r0, #26368	@ ivtmp.5686, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r5, #64	@ ivtmp.5686, ivtmp.5686,
	b	.L2030	@
.L2029:
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bls	.L2028	@,
.L2030:
	ldr	r1, [r5, #0]	@ D.39432, <variable>.DPB.fs
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5686, ivtmp.5686,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2029	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bhi	.L2030	@,
.L2028:
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	subs	fp, r0, #0	@ ret,
	bne	.L2056	@,
.L2043:
	add	r7, r4, #26368	@ ivtmp.5681, pH264Ctx,
	movw	r8, #26628	@ tmp175,
	add	r7, r7, #64	@ ivtmp.5681, ivtmp.5681,
	mov	sl, #26624	@ tmp176,
	mov	r9, #0	@ pos,
.L2051:
	ldr	r3, [r4, r8]	@ D.45903, <variable>.DPB.used_size
	cmp	r3, #0	@ D.45903,
	beq	.L2057	@,
.L2038:
	ldr	ip, [r4, sl]	@ temp.5692, <variable>.DPB.size
	cmp	r3, ip	@ D.45903, temp.5692
	movls	ip, r3	@ temp.5692, D.45903
	bls	.L2033	@,
	cmp	ip, #0	@ temp.5692,
	str	ip, [r4, r8]	@ temp.5692, <variable>.DPB.used_size
	moveq	r5, ip	@ pos, temp.5692
	beq	.L2034	@,
.L2033:
	tst	ip, #1	@ temp.5692,
	mov	r5, #0	@ pos,
	mov	r2, r7	@ ivtmp.5681, ivtmp.5681
	mov	r0, r5	@ pos.5693, pos
	mvn	r1, #-2147483648	@ min_poc.5695,
	bne	.L2040	@,
	ldr	r3, [r7, #0]	@ D.45900, <variable>.DPB.fs
	ldr	r1, [r3, #524]	@ min_poc, <variable>.poc
	cmn	r1, #-2147483647	@ min_poc,
	bge	.L2045	@,
	ldrb	r3, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r3, #0	@ <variable>.is_in_dpb,
	beq	.L2045	@,
	mov	r0, #1	@ pos.5693,
	cmp	r0, ip	@ pos.5693, temp.5692
	add	r2, r7, #4	@ ivtmp.5681, ivtmp.5681,
	bcs	.L2034	@,
.L2040:
	ldr	lr, [r2, #0]	@ D.45900, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5695
	bge	.L2035	@,
.L2058:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r5, r0	@ pos, pos.5693
	beq	.L2035	@,
	add	r0, r0, #1	@ tmp186, pos.5693,
	add	lr, r2, #4	@ tmp187, ivtmp.5681,
	cmp	r0, ip	@ tmp186, temp.5692
	bcs	.L2034	@,
.L2037:
	ldr	r2, [r2, #4]	@ D.45900, <variable>.DPB.fs
	ldr	r1, [r2, #524]	@ min_poc, <variable>.poc
	cmp	r1, r3	@ min_poc, min_poc
	bge	.L2048	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2048	@,
	mov	r5, r0	@ pos, tmp186
.L2055:
	add	r2, lr, #4	@ ivtmp.5681, tmp187,
	add	r0, r0, #1	@ pos.5693, tmp186,
	ldr	lr, [r2, #0]	@ D.45900, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5695
	blt	.L2058	@,
.L2035:
	add	r0, r0, #1	@ tmp186, pos.5693,
	mov	r3, r1	@ min_poc, min_poc.5695
	cmp	r0, ip	@ tmp186, temp.5692
	add	lr, r2, #4	@ tmp187, ivtmp.5681,
	bcc	.L2037	@,
.L2034:
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
	bne	.L2051	@,
	mov	r1, r5	@, pos
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	ldr	r3, [r4, r8]	@ D.45903, <variable>.DPB.used_size
	cmp	r3, #0	@ D.45903,
	bne	.L2038	@,
.L2057:
	cmp	fp, #0	@ ret,
	bne	.L2059	@,
	mov	r0, fp	@, ret
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2045:
	mov	r0, #1	@ pos.5693,
	cmp	r0, ip	@ pos.5693, temp.5692
	mvn	r1, #-2147483648	@ min_poc,
	add	r2, r7, #4	@ ivtmp.5681, ivtmp.5681,
	bcc	.L2040	@,
	b	.L2034	@
.L2048:
	mov	r1, r3	@ min_poc, min_poc
	b	.L2055	@
.L2059:
	add	r0, r4, #8	@, pH264Ctx,
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	GetVoLastImageID	@
.L2056:
	bl	vfmw_dprint_nothing	@
	b	.L2043	@
	.fnend
	.size	H264DEC_GetRemainImg, .-H264DEC_GetRemainImg
	.align	2
	.global	DirectOutput
	.type	DirectOutput, %function
DirectOutput:
	.fnstart
.LFB1958:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #49707	@ tmp191,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #1	@ <variable>.CurrPic.structure,
	beq	.L2063	@,
	bcc	.L2062	@,
	cmp	r3, #2	@ <variable>.CurrPic.structure,
	movne	r6, #0	@ ret,
	beq	.L2108	@,
.L2065:
	mov	r0, r6	@, ret
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L2062:
	movw	r2, #50112	@ tmp194,
	movw	r5, #50696	@ tmp197,
	ldr	r1, [r0, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp195,
	strb	r2, [r1, #400]	@ tmp195, <variable>.frame.structure
	ldr	r1, [r0, r5]	@ temp.5749, <variable>.pDirectOutBuf
	cmp	r1, r2	@ temp.5749,
	beq	.L2066	@,
	bl	OutputFrmToVO	@
	cmp	r0, #0	@,
	bne	.L2109	@,
.L2067:
	movw	r6, #50696	@ tmp198,
	ldr	r0, [r4, r6]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, #0	@ <variable>.pDirectOutBuf,
	beq	.L2068	@,
	movw	ip, #50112	@ tmp203,
	movw	r8, #52840	@ tmp200,
	ldr	r7, [r4, ip]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r7, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2068:
	movw	r3, #50696	@ tmp205,
	mov	lr, #0	@ tmp206,
	str	lr, [r4, r3]	@ tmp206, <variable>.pDirectOutBuf
.L2066:
	movw	r7, #50112	@ tmp207,
	movw	r5, #50696	@ tmp208,
	ldr	r8, [r4, r7]	@ temp.5753, <variable>.CurrPic.frame_store
	mov	r6, #0	@ tmp230,
	add	r1, r4, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r1, r1, #56	@,,
	str	r8, [r4, r5]	@ temp.5753, <variable>.pDirectOutBuf
	str	r8, [r8, #404]	@ temp.5753, <variable>.frame.frame_store
	movw	r8, #52840	@ tmp264,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	lr, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r3, #440]	@ <variable>.CurrPic.frame_store, <variable>.top_field.frame_store
	movw	lr, #49706	@ tmp221,
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [ip, #476]	@ <variable>.CurrPic.frame_store, <variable>.bottom_field.frame_store
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	lr, #3	@ tmp226,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	ip, [r3, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	lr, [r0, #1]	@ tmp226, <variable>.is_used
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [ip, #2]	@ tmp230, <variable>.is_reference
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [r3, #4]	@ tmp230, <variable>.is_in_dpb
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r6, [r0, #532]	@ tmp230, <variable>.is_displayed
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r2, #50156	@ tmp247,
	ldr	r1, [r4, r2]	@ D.39286, <variable>.CurrPic.err_level
	movw	r0, #50148	@ tmp254,
	ldr	ip, [r4, r5]	@ temp.5765, <variable>.pDirectOutBuf
	mov	r2, r6	@, tmp230
	str	r1, [ip, #544]	@ D.39286, <variable>.err_level
	str	r1, [ip, #420]	@ D.39286, <variable>.frame.err_level
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [r3, #400]	@ tmp230, <variable>.frame.structure
	movw	r3, #49713	@ tmp258,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [ip, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	r1, #49711	@ tmp261,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r0, #536]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r5]	@ temp.5769, <variable>.pDirectOutBuf
	cmp	r0, #1	@ <variable>.CurrPic.mode_skip_flag,
	movne	r0, r6	@ iftmp.576, tmp2
	moveq	r0, #3	@ iftmp.576,
	strb	r0, [r3, #3]	@ iftmp.576, <variable>.mode_skip_flag
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r6	@, tmp230
	ldr	r1, [r4, r5]	@, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, #0	@ <variable>.pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2099	@,
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2099:
	movw	r2, #50696	@ tmp662,
	mov	r0, #0	@ tmp663,
	str	r0, [r4, r2]	@ tmp663, <variable>.pDirectOutBuf
	b	.L2065	@
.L2063:
	movw	r5, #50112	@ tmp281,
	movw	r7, #49705	@ tmp284,
	ldr	r2, [r0, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r6, #3	@ tmp282,
	strb	r6, [r2, #400]	@ tmp282, <variable>.frame.structure
	ldrb	r2, [r0, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2072	@,
	movw	r7, #50696	@ tmp286,
	ldr	r1, [r0, r7]	@ temp.5778, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5778,
	beq	.L2073	@,
	bl	OutputFrmToVO	@
	mov	r6, r0	@ ret,
	ldr	r0, [r4, r5]	@ temp.5779, <variable>.CurrPic.frame_store
	str	r0, [r4, r7]	@ temp.5779, <variable>.pDirectOutBuf
	str	r0, [r0, #440]	@ temp.5779, <variable>.top_field.frame_store
.L2074:
	movw	r5, #50696	@ tmp294,
	movw	r7, #49706	@ tmp295,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #1	@ tmp300,
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp304,
	add	r2, r4, #49664	@, pH264Ctx,
	add	r1, r2, #56	@,,
	mov	r2, #392	@,
	strb	r0, [ip, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp300, <variable>.is_used
	movw	lr, #50148	@ tmp315,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp304, <variable>.is_in_dpb
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [ip, #532]	@ tmp304, <variable>.is_displayed
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r0, #2]	@ tmp304, <variable>.is_reference
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r3, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r0, #536]	@ tmp304, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r3, #50156	@ tmp329,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [ip, #456]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	movw	ip, #49711	@ tmp338,
	ldr	r0, [r4, r5]	@ temp.5794, <variable>.pDirectOutBuf
	ldr	r2, [r0, #456]	@ D.39307, <variable>.top_field.err_level
	str	r2, [r0, #544]	@ D.39307, <variable>.err_level
	str	r2, [r0, #420]	@ D.39307, <variable>.frame.err_level
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [r3, #436]	@ tmp300, <variable>.top_field.structure
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, r8	@ <variable>.CurrPic.mode_skip_flag,
	movne	r2, #0	@, tmp340
	moveq	r2, #1	@, tmp340
	b	.L2107	@
.L2108:
	movw	r5, #50112	@ tmp474,
	movw	r8, #49705	@ tmp477,
	ldr	r3, [r0, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	lr, #3	@ tmp475,
	strb	lr, [r3, #400]	@ tmp475, <variable>.frame.structure
	ldrb	r2, [r0, r8]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2110	@,
	movw	sl, #50696	@ tmp551,
	add	r9, r0, #49664	@, pH264Ctx,
	ldr	lr, [r0, sl]	@ prephitmp.5841, <variable>.pDirectOutBuf
	add	r1, r9, #56	@,,
	mov	r2, #392	@,
	cmp	lr, #0	@ prephitmp.5841,
	ldreq	lr, [r0, r5]	@ temp.5868, <variable>.CurrPic.frame_store
	streq	lr, [r0, sl]	@ temp.5868, <variable>.pDirectOutBuf
	streq	lr, [lr, #476]	@ temp.5868, <variable>.bottom_field.frame_store
	ldreq	lr, [r0, sl]	@ prephitmp.5841, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.5841,
	ldrd	r8, [lr, #24]	@, prephitmp.5841,
	ldr	r5, [lr, #16]	@ OtherFieldPts.5869, <variable>.fs_image.PTS
	ldr	r6, [lr, #20]	@ OtherFieldPts.5869, <variable>.fs_image.PTS
	strd	r8, [sp, #8]	@,,
	ldrd	r8, [lr, #32]	@, prephitmp.5841,
	strd	r8, [sp]	@, %sfp
	ldr	sl, [lr, #76]	@ OtherFieldDispEnableFlag.5872, <variable>.fs_image.DispEnableFlag
	ldr	r8, [lr, #80]	@ OtherFieldDispFrameDistance.5873, <variable>.fs_image.DispFrameDistance
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame.5874, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r9, [lr, #88]	@ OtherFieldGopNum.5875, <variable>.fs_image.GopNum
	bl	memcpy	@
	add	r3, r4, #49664	@ tmp569, pH264Ctx,
	movw	r2, #49728	@ tmp563,
	add	r1, r3, #64	@ tmp569, tmp569,
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r2, r5, r6	@ tmp561, OtherFieldPts.5869, OtherFieldPts.5869
	ldr	ip, [r1, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r3, r0, ip	@ tmp565, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r0, #50696	@ tmp578,
	cmn	r3, #1	@ tmp565,
	movne	r1, #0	@, tmp574
	moveq	r1, #1	@, tmp574
	cmn	r2, #1	@ tmp561,
	movw	r3, #49736	@ tmp579,
	moveq	r1, #0	@, tmp574,
	cmp	r1, #0	@ tmp574,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.Usertag, tmp579, pH264Ctx
	movwne	r1, #50696	@ tmp576,
	ldrne	r1, [r4, r1]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r5, [r1, #16]	@ OtherFieldPts.5869, <variable>.fs_image.PTS
	movw	r5, #50696	@ tmp582,
	strne	r6, [r1, #20]	@ OtherFieldPts.5869, <variable>.fs_image.PTS
	ldr	ip, [r4, r0]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r0, [sp, #8]	@,,
	cmp	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	movw	r1, #49744	@ tmp583,
	strd	r2, [ip, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r2, [sp]	@, %sfp
	ldrd	r0, [r1, r4]	@ <variable>.CurrPic.fs_image.DispTime, tmp583, pH264Ctx
	cmp	r1, r3	@ <variable>.CurrPic.fs_image.DispTime,
	cmpeq	r0, r2	@ <variable>.CurrPic.fs_image.DispTime,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrhid	r0, [sp]	@ <variable>.CurrPic.fs_image.DispTime, %sfp
.L2094:
	movw	lr, #50696	@ tmp586,
	movw	r6, #49788	@ tmp587,
	strd	r0, [r2, #32]	@ <variable>.CurrPic.fs_image.DispTime, <variable>.pDirectOutBuf,
	movw	r2, #49792	@ tmp592,
	ldr	ip, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r0, #49796	@ tmp597,
	ldr	r5, [r4, r6]	@ <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r1, #49800	@ tmp602,
	ldr	r3, [r4, r2]	@ <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	ldr	r0, [r4, r0]	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	cmp	r5, sl	@ <variable>.CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag.5872
	strls	r5, [ip, #76]	@, <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [ip, #76]	@, OtherFieldDispEnableFlag.5872, <variable>.fs_image.DispEnableFlag
	ldr	r6, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r5, [r4, r1]	@ <variable>.CurrPic.fs_image.GopNum, <variable>.CurrPic.fs_image.GopNum
	movw	r1, #50148	@ tmp615,
	cmp	r3, r8	@ <variable>.CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance.5873
	strls	r3, [r6, #80]	@, <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r8, [r6, #80]	@, OtherFieldDispFrameDistance.5873, <variable>.fs_image.DispFrameDistance
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, r7	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame.5874
	strls	r0, [r2, #84]	@, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	r7, [r2, #84]	@, OtherFieldDistanceBeforeFirstFrame.5874, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	ip, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r5, r9	@ <variable>.CurrPic.fs_image.GopNum, OtherFieldGopNum.5875
	strls	r5, [ip, #88]	@, <variable>.CurrPic.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	r9, [ip, #88]	@, OtherFieldGopNum.5875, <variable>.fs_image.GopNum
	ldr	r6, [r4, lr]	@ temp.5899, <variable>.pDirectOutBuf
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #49706	@ tmp607,
	moveq	r5, r3	@ iftmp.586, <variable>.non_existing
	ldrneb	r5, [r4, r3]	@ zero_extendqisi2	@ iftmp.586, <variable>.CurrPic.non_existing
	movw	r3, #50696	@ tmp609,
	strb	r5, [r6, #0]	@ iftmp.586, <variable>.non_existing
	ldr	r2, [r4, r3]	@ temp.5901, <variable>.pDirectOutBuf
	ldrb	r7, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	lr, r7, #2	@ tmp612, <variable>.is_used,
	strb	lr, [r2, #1]	@ tmp612, <variable>.is_used
	ldr	r0, [r4, r3]	@ temp.5904, <variable>.pDirectOutBuf
	mov	r7, #2	@ tmp621,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	movw	r1, #50156	@ tmp629,
	mov	lr, #3	@ tmp625,
	ldr	r6, [r0, #540]	@ <variable>.pic_type, <variable>.pic_type
	cmp	r6, ip	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	r6, [r0, #540]	@, <variable>.pic_type, <variable>.pic_type
	strcc	ip, [r0, #540]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r5, #472]	@ tmp621, <variable>.bottom_field.structure
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	lr, [r2, #400]	@ tmp625, <variable>.frame.structure
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r0, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r0, #492]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r4, r3]	@ temp.5911, <variable>.pDirectOutBuf
	ldr	r6, [r2, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r5, [r2, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r7, r6, r5	@ tmp632, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	movw	r5, #49711	@ tmp640,
	mov	lr, r7, lsr #1	@ tmp635, tmp632,
	str	lr, [r2, #420]	@ tmp635, <variable>.frame.err_level
	ldr	r1, [r4, r3]	@ temp.5916, <variable>.pDirectOutBuf
	ldr	r0, [r1, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r0, [r1, #544]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	ip, [r4, r3]	@ temp.5918, <variable>.pDirectOutBuf
	ldr	r6, [ip, #476]	@ <variable>.bottom_field.frame_store, <variable>.bottom_field.frame_store
	str	r6, [ip, #404]	@ <variable>.bottom_field.frame_store, <variable>.frame.frame_store
	ldrb	r7, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	beq	.L2111	@,
.L2097:
	ldr	r3, [r4, r3]	@ temp.5748, <variable>.pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ iftmp.587, <variable>.mode_skip_flag
.L2098:
	movw	r5, #50696	@ tmp651,
	strb	r2, [r3, #3]	@ iftmp.587, <variable>.mode_skip_flag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r7, #52840	@ tmp648,
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
	beq	.L2099	@,
	movw	r1, #50112	@ tmp660,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	movw	r2, #50696	@ tmp662,
	mov	r0, #0	@ tmp663,
	str	r0, [r4, r2]	@ tmp663, <variable>.pDirectOutBuf
	b	.L2065	@
.L2110:
	movw	r7, #50696	@ tmp479,
	ldr	r1, [r0, r7]	@ temp.5837, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5837,
	beq	.L2086	@,
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r5]	@ temp.5838, <variable>.CurrPic.frame_store
	str	r1, [r4, r7]	@ temp.5838, <variable>.pDirectOutBuf
	str	r1, [r1, #476]	@ temp.5838, <variable>.bottom_field.frame_store
	mov	r6, r0	@ ret,
.L2087:
	movw	r5, #50696	@ tmp487,
	movw	r7, #49706	@ tmp488,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #2	@ tmp493,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp497,
	add	r1, r4, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r1, r1, #56	@,,
	strb	r0, [r3, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp493, <variable>.is_used
	movw	lr, #50148	@ tmp508,
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [ip, #4]	@ tmp497, <variable>.is_in_dpb
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r0, #532]	@ tmp497, <variable>.is_displayed
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp497, <variable>.is_reference
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r0, [ip, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r3, #536]	@ tmp497, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	ip, #50156	@ tmp522,
	ldr	r2, [r4, ip]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r2, [r0, #492]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	movw	r0, #49711	@ tmp530,
	ldr	r3, [r4, r5]	@ temp.5854, <variable>.pDirectOutBuf
	ldr	r1, [r3, #492]	@ temp.5855, <variable>.bottom_field.err_level
	str	r1, [r3, #544]	@ temp.5855, <variable>.err_level
	str	r1, [r3, #420]	@ temp.5855, <variable>.frame.err_level
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [ip, #472]	@ tmp493, <variable>.bottom_field.structure
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r5]	@ temp.5857, <variable>.pDirectOutBuf
	cmp	r2, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r2, r8	@ iftmp.584,
	movne	r2, r7	@ iftmp.584,
.L2107:
	strb	r2, [r3, #3]	@ iftmp.584, <variable>.mode_skip_flag
	movw	r2, #52772	@ tmp533,
	ldr	r8, [r4, r2]	@ <variable>.IModeOutFlag, <variable>.IModeOutFlag
	cmp	r8, #1	@ <variable>.IModeOutFlag,
	bne	.L2065	@,
	ldr	r6, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	sl, #52840	@ tmp535,
	mov	r2, r7	@, tmp497
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r2, r7	@, tmp497
	ldr	r1, [r4, r5]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	ip, r7	@ <variable>.pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2099	@,
	movw	r3, #50112	@ tmp547,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, r8	@, <variable>.IModeOutFlag
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	b	.L2099	@
.L2072:
	movw	sl, #50696	@ tmp360,
	add	r9, r0, #49664	@, pH264Ctx,
	ldr	lr, [r0, sl]	@ prephitmp.5726, <variable>.pDirectOutBuf
	add	r1, r9, #56	@,,
	mov	r2, #392	@,
	cmp	lr, #0	@ prephitmp.5726,
	ldreq	lr, [r0, r5]	@ temp.5806, <variable>.CurrPic.frame_store
	streq	lr, [r0, sl]	@ temp.5806, <variable>.pDirectOutBuf
	streq	lr, [lr, #440]	@ temp.5806, <variable>.top_field.frame_store
	ldreq	lr, [r0, sl]	@ prephitmp.5726, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.5726,
	ldrd	r8, [lr, #24]	@, prephitmp.5726,
	ldr	r5, [lr, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	r6, [lr, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	r8, [sp, #8]	@,,
	ldrd	r8, [lr, #32]	@, prephitmp.5726,
	strd	r8, [sp]	@, %sfp
	ldr	sl, [lr, #76]	@ OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r8, [lr, #80]	@ OtherFieldDispFrameDistance, <variable>.fs_image.DispFrameDistance
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r9, [lr, #88]	@ OtherFieldGopNum, <variable>.fs_image.GopNum
	bl	memcpy	@
	add	ip, r4, #49664	@ tmp378, pH264Ctx,
	movw	r0, #49728	@ tmp372,
	add	r3, ip, #64	@ tmp378, tmp378,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r0, r5, r6	@ tmp370, OtherFieldPts, OtherFieldPts
	ldr	r2, [r3, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	ip, r1, r2	@ tmp374, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r1, #50696	@ tmp387,
	cmn	ip, #1	@ tmp374,
	movne	r3, #0	@, tmp383
	moveq	r3, #1	@, tmp383
	cmn	r0, #1	@ tmp370,
	moveq	r3, #0	@, tmp383,
	cmp	r3, #0	@ tmp383,
	movwne	r3, #50696	@ tmp385,
	ldrne	r3, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r5, [r3, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r5, #50696	@ tmp391,
	strne	r6, [r3, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r3, #49736	@ tmp388,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.Usertag, tmp388, pH264Ctx
	ldr	r6, [r4, r1]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r0, [sp, #8]	@,,
	cmp	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	movw	r1, #49744	@ tmp392,
	strd	r2, [r6, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r2, [sp]	@, %sfp
	ldrd	r0, [r1, r4]	@ <variable>.CurrPic.fs_image.DispTime, tmp392, pH264Ctx
	cmp	r1, r3	@ <variable>.CurrPic.fs_image.DispTime,
	cmpeq	r0, r2	@ <variable>.CurrPic.fs_image.DispTime,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrhid	r0, [sp]	@ <variable>.CurrPic.fs_image.DispTime, %sfp
.L2079:
	movw	lr, #50696	@ tmp395,
	movw	r6, #49788	@ tmp396,
	strd	r0, [r2, #32]	@ <variable>.CurrPic.fs_image.DispTime, <variable>.pDirectOutBuf,
	movw	ip, #49792	@ tmp401,
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r0, #49796	@ tmp406,
	ldr	r5, [r4, r6]	@ <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r1, #49800	@ tmp411,
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
	movw	r0, #50148	@ tmp424,
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r5, r9	@ <variable>.CurrPic.fs_image.GopNum, OtherFieldGopNum
	strls	r5, [r2, #88]	@, <variable>.CurrPic.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	r9, [r2, #88]	@, OtherFieldGopNum, <variable>.fs_image.GopNum
	ldr	r6, [r4, lr]	@ temp.5814, <variable>.pDirectOutBuf
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #49706	@ tmp416,
	moveq	r5, r3	@ iftmp.580, <variable>.non_existing
	ldrneb	r5, [r4, r3]	@ zero_extendqisi2	@ iftmp.580, <variable>.CurrPic.non_existing
	movw	r3, #50696	@ tmp418,
	strb	r5, [r6, #0]	@ iftmp.580, <variable>.non_existing
	ldr	lr, [r4, r3]	@ temp.5815, <variable>.pDirectOutBuf
	ldrb	r7, [lr, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	ip, r7, #1	@ tmp421, <variable>.is_used,
	strb	ip, [lr, #1]	@ tmp421, <variable>.is_used
	ldr	r2, [r4, r3]	@ temp.5817, <variable>.pDirectOutBuf
	mov	r7, #1	@ tmp430,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	movw	r0, #50156	@ tmp438,
	mov	ip, #3	@ tmp434,
	ldr	r6, [r2, #540]	@ <variable>.pic_type, <variable>.pic_type
	cmp	r6, r1	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	r6, [r2, #540]	@, <variable>.pic_type, <variable>.pic_type
	strcc	r1, [r2, #540]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r5, #436]	@ tmp430, <variable>.top_field.structure
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	ip, [lr, #400]	@ tmp434, <variable>.frame.structure
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r2, #456]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	ldr	lr, [r4, r3]	@ temp.5822, <variable>.pDirectOutBuf
	ldr	r6, [lr, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r5, [lr, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r7, r6, r5	@ tmp441, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	movw	r5, #49711	@ tmp449,
	mov	ip, r7, lsr #1	@ tmp444, tmp441,
	str	ip, [lr, #420]	@ tmp444, <variable>.frame.err_level
	ldr	r0, [r4, r3]	@ temp.5824, <variable>.pDirectOutBuf
	ldr	r1, [r0, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r1, [r0, #544]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	r2, [r4, r3]	@ temp.5825, <variable>.pDirectOutBuf
	ldr	r6, [r2, #440]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	str	r6, [r2, #404]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	ldrb	r7, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	bne	.L2097	@,
	ldr	r3, [r4, r3]	@ D.39275, <variable>.pDirectOutBuf
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r7, #1	@ iftmp.581, <variable>.mode_skip_flag,
	b	.L2098	@
.L2109:
	bl	vfmw_dprint_nothing	@
	b	.L2067	@
.L2073:
	ldr	lr, [r0, r5]	@ temp.5781, <variable>.CurrPic.frame_store
	mov	r6, r1	@ ret, temp.5778
	str	lr, [r0, r7]	@ temp.5781, <variable>.pDirectOutBuf
	str	lr, [lr, #440]	@ temp.5781, <variable>.top_field.frame_store
	b	.L2074	@
.L2086:
	ldr	r2, [r0, r5]	@ temp.5840, <variable>.CurrPic.frame_store
	mov	r6, r1	@ ret, temp.5837
	str	r2, [r0, r7]	@ temp.5840, <variable>.pDirectOutBuf
	str	r2, [r2, #476]	@ temp.5840, <variable>.bottom_field.frame_store
	b	.L2087	@
.L2111:
	ldr	r3, [r4, r3]	@ temp.5748, <variable>.pDirectOutBuf
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r7, #2	@ iftmp.587, <variable>.mode_skip_flag,
	b	.L2098	@
	.fnend
	.size	DirectOutput, .-DirectOutput
	.align	2
	.global	OutputFrmFromDPB
	.type	OutputFrmFromDPB, %function
OutputFrmFromDPB:
	.fnstart
.LFB1953:
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
	bne	.L2113	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, r6	@, pos
	bl	RemoveFrameStoreOutDPB	@
.L2113:
	mov	r0, r7	@, ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	OutputFrmFromDPB, .-OutputFrmFromDPB
	.align	2
	.global	FlushDPB
	.type	FlushDPB, %function
FlushDPB:
	.fnstart
.LFB1959:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r7, #26628	@ tmp149,
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L2116	@,
	add	r4, r0, #26368	@ ivtmp.5986, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #64	@ ivtmp.5986, ivtmp.5986,
	b	.L2118	@
.L2117:
	ldr	r1, [r6, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r5	@ <variable>.DPB.used_size, i
	bls	.L2116	@,
.L2118:
	ldr	r1, [r4, #0]	@ D.39405, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5986, ivtmp.5986,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2117	@,
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r5	@ <variable>.DPB.used_size, i
	bhi	.L2118	@,
.L2116:
	mov	r0, r6	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	bne	.L2142	@,
.L2119:
	add	r2, r6, #26368	@ ivtmp.5981, pH264Ctx,
	movw	r5, #26628	@ tmp161,
	add	r4, r2, #64	@ ivtmp.5981, ivtmp.5981,
	mov	r7, #26624	@ tmp162,
.L2130:
	ldr	r0, [r6, r5]	@ D.45921, <variable>.DPB.used_size
	cmp	r0, #0	@ D.45921,
	beq	.L2143	@,
	ldr	r8, [r6, r7]	@ temp.5990, <variable>.DPB.size
	cmp	r0, r8	@ D.45921, temp.5990
	movls	r8, r0	@ temp.5990, D.45921
	bls	.L2121	@,
	cmp	r8, #0	@ temp.5990,
	str	r8, [r6, r5]	@ temp.5990, <variable>.DPB.used_size
	moveq	r1, r8	@ pos.5993, temp.5990
	beq	.L2122	@,
.L2121:
	tst	r8, #1	@ temp.5990,
	mov	r1, #0	@ pos.5993,
	mov	r2, r4	@ ivtmp.5981, ivtmp.5981
	mvn	r0, #-2147483648	@ min_poc,
	mov	ip, r1	@ pos, pos.5993
	bne	.L2128	@,
	ldr	r2, [r4, #0]	@ D.45918, <variable>.DPB.fs
	ldr	r3, [r2, #524]	@ min_poc.5992, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc.5992
	ble	.L2133	@,
	ldrb	ip, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L2133	@,
	mov	ip, #1	@ pos,
	cmp	ip, r8	@ pos, temp.5990
	add	r2, r4, #4	@ ivtmp.5981, ivtmp.5981,
	movcc	r0, r3	@ min_poc, min_poc.5992
	bcs	.L2122	@,
.L2128:
	ldr	lr, [r2, #0]	@ D.45918, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc.5992, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc.5992
	ble	.L2123	@,
.L2144:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r1, ip	@ pos.5993, pos
	beq	.L2123	@,
	add	ip, ip, #1	@ tmp172, pos,
	add	lr, r2, #4	@ tmp173, ivtmp.5981,
	cmp	ip, r8	@ tmp172, temp.5990
	bcs	.L2122	@,
.L2125:
	ldr	r2, [r2, #4]	@ D.45918, <variable>.DPB.fs
	ldr	r0, [r2, #524]	@ min_poc.5992, <variable>.poc
	cmp	r3, r0	@ min_poc.5992, min_poc.5992
	ble	.L2136	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2136	@,
	mov	r1, ip	@ pos.5993, tmp172
.L2141:
	add	r2, lr, #4	@ ivtmp.5981, tmp173,
	add	ip, ip, #1	@ pos, tmp172,
	ldr	lr, [r2, #0]	@ D.45918, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc.5992, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc.5992
	bgt	.L2144	@,
.L2123:
	add	ip, ip, #1	@ tmp172, pos,
	mov	r3, r0	@ min_poc.5992, min_poc
	cmp	ip, r8	@ tmp172, temp.5990
	add	lr, r2, #4	@ tmp173, ivtmp.5981,
	bcc	.L2125	@,
.L2122:
	mov	r0, r6	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret.5989,
	bne	.L2130	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2133:
	mov	ip, #1	@ pos,
	cmp	ip, r8	@ pos, temp.5990
	mvn	r3, #-2147483648	@ min_poc.5992,
	add	r2, r4, #4	@ ivtmp.5981, ivtmp.5981,
	movcc	r0, r3	@ min_poc, min_poc.5992
	bcc	.L2128	@,
	b	.L2122	@
.L2136:
	mov	r0, r3	@ min_poc.5992, min_poc.5992
	b	.L2141	@
.L2143:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2142:
	bl	vfmw_dprint_nothing	@
	b	.L2119	@
	.fnend
	.size	FlushDPB, .-FlushDPB
	.align	2
	.global	IDRMemMarking
	.type	IDRMemMarking, %function
IDRMemMarking:
	.fnstart
.LFB1963:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #50116	@ tmp148,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r1, [r0, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.no_output_of_prior_pics_flag, <variable>.no_output_of_prior_pics_flag
	cmp	r3, #0	@ <variable>.no_output_of_prior_pics_flag,
	beq	.L2146	@,
	movw	sl, #26628	@ tmp150,
	ldr	r0, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@ <variable>.DPB.used_size,
	beq	.L2147	@,
	add	r4, r6, #26368	@ ivtmp.6034, pH264Ctx,
	mov	r7, #0	@ i.6049,
	add	r4, r4, #128	@ ivtmp.6034, ivtmp.6034,
	mov	r5, r7	@ tmp228, i.6049
	movw	r8, #52840	@ tmp229,
	mov	r9, #1	@ tmp230,
.L2149:
	ldr	r1, [r4, #-64]	@ D.39548, <variable>.DPB.fs
	mov	r2, #0	@,
	add	r7, r7, #1	@ i.6049, i.6049,
	strb	r5, [r1, #401]	@ tmp228, <variable>.frame.is_long_term
	strb	r5, [r1, #402]	@ tmp228, <variable>.frame.is_short_term
	ldr	ip, [r4, #-64]	@ temp.6036, <variable>.DPB.fs
	strb	r5, [ip, #437]	@ tmp228, <variable>.top_field.is_long_term
	strb	r5, [ip, #438]	@ tmp228, <variable>.top_field.is_short_term
	ldr	r0, [r4, #-64]	@ temp.6037, <variable>.DPB.fs
	strb	r5, [r0, #473]	@ tmp228, <variable>.bottom_field.is_long_term
	strb	r5, [r0, #474]	@ tmp228, <variable>.bottom_field.is_short_term
	ldr	r3, [r4, #-64]	@ tmp165, <variable>.DPB.fs
	strb	r5, [r3, #2]	@ tmp228, <variable>.is_reference
	ldr	lr, [r4, #-64]	@ tmp170, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	ldr	r1, [r4, #-64]	@ tmp172, <variable>.DPB.fs
	strb	r5, [r1, #1]	@ tmp228, <variable>.is_used
	ldr	ip, [r4, #-64]	@ tmp175, <variable>.DPB.fs
	strb	r5, [ip, #4]	@ tmp228, <variable>.is_in_dpb
	ldr	r0, [r4, #-64]	@ tmp178, <variable>.DPB.fs
	str	r9, [r0, #532]	@ tmp230, <variable>.is_displayed
	ldr	ip, [r4, #-64]	@ temp.6043, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r3, [ip, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	add	r2, r3, #6656	@ tmp180, <variable>.apc_idc,
	add	r1, r2, #4	@ tmp180, tmp180,
	add	r3, r6, r1, asl #2	@, tmp185, pH264Ctx, tmp180,
	str	r5, [r3, #4]	@ tmp228, <variable>.APC.is_used
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetDisplay	@
	mov	r2, r5	@, tmp228
	cmp	r0, #3	@,
	beq	.L2148	@,
	ldr	lr, [r4, #-64]	@ tmp193, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2148:
	ldr	r2, [r6, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	str	r5, [r4, #-64]	@ tmp228, <variable>.DPB.fs
	cmp	r2, r7	@ <variable>.DPB.used_size, i.6049
	str	r5, [r4, #0]	@ tmp228, <variable>.DPB.fs_ref
	str	r5, [r4, #64]	@ tmp228, <variable>.DPB.fs_ltref
	add	r4, r4, #4	@ ivtmp.6034, ivtmp.6034,
	bhi	.L2149	@,
.L2147:
	movw	r0, #51320	@ tmp202,
	movw	r3, #26628	@ tmp200,
	ldr	ip, [r6, r0]	@ D.39559, <variable>.TotalPmvNum
	mov	r0, #0	@ tmp201,
	str	r0, [r6, r3]	@ tmp201, <variable>.DPB.used_size
	cmp	ip, r0	@ D.39559,
	beq	.L2150	@,
	add	r3, r6, #51200	@ tmp203, pH264Ctx,
	mov	r2, #1	@ i,
	add	lr, r3, #48	@ ivtmp.6026, tmp203,
	cmp	r2, ip	@ i, D.39559
	sub	r1, ip, #1	@ tmp232, D.39559,
	str	r0, [lr, #0]	@ tmp227, <variable>.PmvStoreUsedFlag
	and	lr, r1, r2	@ tmp234, tmp232,
	add	r1, r3, #52	@ ivtmp.6026, tmp203,
	bcs	.L2150	@,
	cmp	lr, #0	@ tmp234,
	beq	.L2151	@,
	mov	r2, #2	@ i,
	cmp	r2, ip	@ i, D.39559
	str	r0, [r1, #0]	@ tmp227, <variable>.PmvStoreUsedFlag
	add	r1, r3, #56	@ ivtmp.6026, tmp203,
	bcs	.L2150	@,
.L2151:
	add	r2, r2, #2	@ i, i,
	mov	r3, r1	@ tmp236, ivtmp.6026
	cmp	r2, ip	@ i, D.39559
	str	r0, [r3], #4	@ tmp227, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp227, <variable>.PmvStoreUsedFlag
	add	r1, r3, #4	@ ivtmp.6026, tmp236,
	bcc	.L2151	@,
.L2150:
	mov	r0, r6	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r6	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r2, #50116	@ tmp206,
	ldr	ip, [r6, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r3, [ip, #2]	@ zero_extendqisi2	@ <variable>.long_term_reference_flag, <variable>.long_term_reference_flag
	cmp	r3, #0	@ <variable>.long_term_reference_flag,
	bne	.L2162	@,
	movw	r2, #26640	@ tmp218,
	movw	ip, #49709	@ tmp223,
	movw	r1, #49708	@ tmp220,
	mov	lr, #1	@ tmp224,
	mov	r0, r3	@ D.39564, <variable>.long_term_reference_flag
	str	r3, [r6, r2]	@ <variable>.long_term_reference_flag, <variable>.DPB.max_long_term_pic_idx
	strb	lr, [r6, ip]	@ tmp224, <variable>.CurrPic.is_short_term
	strb	r3, [r6, r1]	@ <variable>.long_term_reference_flag, <variable>.CurrPic.is_long_term
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2162:
	movw	r2, #50124	@ tmp210,
	movw	ip, #49709	@ tmp215,
	movw	r3, #49708	@ tmp212,
	movw	r1, #26640	@ tmp208,
	mov	r0, #0	@ tmp211,
	mov	lr, #1	@ tmp209,
	str	r0, [r6, r2]	@ tmp211, <variable>.CurrPic.long_term_frame_idx
	strb	r0, [r6, ip]	@ tmp211, <variable>.CurrPic.is_short_term
	strb	lr, [r6, r3]	@ tmp209, <variable>.CurrPic.is_long_term
	str	lr, [r6, r1]	@ tmp209, <variable>.DPB.max_long_term_pic_idx
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2146:
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.39564,
	beq	.L2150	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	IDRMemMarking, .-IDRMemMarking
	.align	2
	.global	AdaptiveMemMark
	.type	AdaptiveMemMark, %function
AdaptiveMemMark:
	.fnstart
.LFB1962:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #50116	@ tmp153,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r4, [r0, r3]	@ ivtmp.6083, <variable>.CurrPic.pMarkPara
	add	r7, r0, #49664	@ D.39501, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r7, r7, #40	@ D.39501, D.39501,
	add	r6, r4, #2000	@ D.51451, ivtmp.6083,
	movw	r8, #19820	@ tmp211,
	mov	sl, #1	@ tmp212,
.L2173:
	ldr	r0, [r4, #4]	@ <variable>.memory_management_control_operation, <variable>.memory_management_control_operation
	cmp	r0, #6	@ <variable>.memory_management_control_operation,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.memory_management_control_operation
	b	.L2164	@
.L2172:
	.word	.L2165
	.word	.L2166
	.word	.L2167
	.word	.L2168
	.word	.L2169
	.word	.L2170
	.word	.L2171
.L2171:
	ldr	r2, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.39501
	bl	MarkCurrPicLT	@
.L2164:
	add	r4, r4, #20	@ ivtmp.6083, ivtmp.6083,
	cmp	r4, r6	@ ivtmp.6083, D.51451
	bne	.L2173	@,
.L2165:
	movw	r2, #19820	@ tmp163,
	ldr	r1, [r5, r2]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r1, #1	@ <variable>.CurrPOC.last_has_mmco_5,
	beq	.L2182	@,
.L2174:
	mov	r0, #0	@ D.39531,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2170:
	mov	r0, r5	@, pH264Ctx
	add	r4, r4, #20	@ ivtmp.6083, ivtmp.6083,
	bl	UnMarkAllSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #0	@,
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6083, D.51451
	str	sl, [r5, r8]	@ tmp212, <variable>.CurrPOC.last_has_mmco_5
	bne	.L2173	@,
	b	.L2165	@
.L2169:
	ldr	r1, [r4, #20]	@, <variable>.max_long_term_frame_idx_plus1
	mov	r0, r5	@, pH264Ctx
	bl	UpdateMaxLTFrmIdx	@
	add	r4, r4, #20	@ ivtmp.6083, ivtmp.6083,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6083, D.51451
	bne	.L2173	@,
	b	.L2165	@
.L2168:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r1, r7	@, D.39501
	ldr	r3, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	bl	MarkSTToLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	add	r4, r4, #20	@ ivtmp.6083, ivtmp.6083,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6083, D.51451
	bne	.L2173	@,
	b	.L2165	@
.L2167:
	ldr	r2, [r4, #12]	@, <variable>.long_term_pic_num
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.39501
	add	r4, r4, #20	@ ivtmp.6083, ivtmp.6083,
	bl	UnMarkLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.6083, D.51451
	bne	.L2173	@,
	b	.L2165	@
.L2166:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.39501
	add	r4, r4, #20	@ ivtmp.6083, ivtmp.6083,
	bl	UnMarkSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	cmp	r4, r6	@ ivtmp.6083, D.51451
	bne	.L2173	@,
	b	.L2165	@
.L2182:
	movw	lr, #49707	@ tmp167,
	movw	ip, #50120	@ tmp165,
	ldrb	r2, [r5, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r3, #0	@ tmp166,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPic.frame_num
	cmp	r2, #1	@ <variable>.CurrPic.structure,
	beq	.L2177	@,
	bcs	.L2183	@,
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
	rsb	r6, ip, r6	@ D.39520, <variable>.CurrPic.thispoc, <variable>.CurrPic.bottompoc
	str	r6, [r5, r4]	@ D.39520, <variable>.CurrPic.bottompoc
	sub	r4, r4, #8	@ tmp195, tmp195,
	rsb	r8, ip, r8	@ D.39519, <variable>.CurrPic.thispoc, <variable>.CurrPic.toppoc
	rsb	ip, r1, r9	@ D.39524, <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.toppoc
	ldr	r9, [r5, r2]	@, <variable>.CurrPOC.bottompoc
	cmp	r6, r8	@ D.39520, D.39519
	movlt	lr, r6	@ D.39521, D.39520
	movge	lr, r8	@ D.39521, D.39519
	str	ip, [r5, r0]	@ D.39524, <variable>.CurrPOC.toppoc
	rsb	r1, r1, r9	@ D.39525, <variable>.CurrPOC.ThisPOC,
	str	lr, [r5, r3]	@ D.39521, <variable>.CurrPic.thispoc
	cmp	r1, ip	@ D.39525, D.39524
	movlt	r3, r1	@ D.39526, D.39525
	movge	r3, ip	@ D.39526, D.39524
	add	ip, r2, #4	@ tmp207, tmp207,
	str	r3, [r5, sl]	@ D.39526, <variable>.CurrPOC.ThisPOC
	str	r8, [r5, r7]	@ D.39519, <variable>.CurrPic.toppoc
	str	lr, [r5, r4]	@ D.39521, <variable>.CurrPic.framepoc
	str	r1, [r5, r2]	@ D.39525, <variable>.CurrPOC.bottompoc
	str	r3, [r5, ip]	@ D.39526,
.L2175:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.39531,
	beq	.L2174	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2183:
	cmp	r2, #2	@ <variable>.CurrPic.structure,
	bne	.L2175	@,
	movw	r1, #50144	@ tmp177,
	sub	r0, r1, #12	@ tmp179, tmp179,
	movw	r2, #19840	@ tmp183,
	movw	lr, #19832	@ tmp181,
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.bottompoc
	str	r3, [r5, r0]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, lr]	@ tmp166,
	b	.L2175	@
.L2177:
	movw	r2, #50140	@ tmp169,
	sub	r1, r2, #8	@ tmp171, tmp171,
	movw	ip, #19840	@ tmp175,
	movw	r0, #19828	@ tmp173,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPic.toppoc
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, r0]	@ tmp166,
	b	.L2175	@
	.fnend
	.size	AdaptiveMemMark, .-AdaptiveMemMark
	.align	2
	.global	Marking
	.type	Marking, %function
Marking:
	.fnstart
.LFB1964:
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
	beq	.L2185	@,
	movw	r1, #50148	@ tmp148,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, r2	@ <variable>.CurrPic.pic_type,
	bne	.L2186	@,
	ldr	r3, [r4, #0]	@ D.39582, <variable>.pstExtraData
	ldr	ip, [r3, #540]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	ip, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2197	@,
.L2186:
	movw	r3, #50116	@ tmp158,
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L2196	@,
	movw	ip, #50128	@ tmp161,
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2198	@,
.L2191:
	mov	r0, #0	@ D.39595,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L2197:
	ldr	r2, [r3, #536]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r2, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2186	@,
	ldr	r0, [r3, #544]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2186	@,
	ldr	ip, [r3, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r1, ip, #1020	@ tmp153, <variable>.s32FastForwardBackwardSpeed,
	add	r3, r1, #3	@ tmp153, tmp153,
	cmp	r3, #2048	@ tmp153,
	bcc	.L2186	@,
.L2185:
	mov	r0, r4	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	bne	.L2187	@,
.L2188:
	movw	r2, #49710	@ tmp163,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	cmp	lr, #5	@ <variable>.CurrPic.nal_unit_type,
	beq	.L2192	@,
.L2196:
	movw	r3, #50128	@ tmp165,
	ldr	r0, [r4, r3]	@ prephitmp.6107, <variable>.CurrPic.nal_ref_idc
	cmp	r0, #0	@ prephitmp.6107,
	beq	.L2191	@,
	movw	r2, #50116	@ tmp167,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r1, [ip, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r1, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L2193	@,
	movw	r0, #49705	@ tmp169,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2193	@,
	mov	r0, r4	@, pH264Ctx
	bl	SlidingWinMark	@
	movw	r3, #49708	@ tmp171,
	strb	r5, [r4, r3]	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.is_long_term
.L2192:
	movw	r1, #50128	@ tmp174,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2191	@,
.L2193:
	movw	r0, #49708	@ tmp177,
	movw	r3, #49709	@ tmp176,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r0, #0	@ D.39595,
	cmp	r2, r0	@ <variable>.CurrPic.is_long_term,
	movne	ip, #0	@, tmp179
	moveq	ip, #1	@, tmp179
	strb	ip, [r4, r3]	@ tmp179, <variable>.CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L2198:
	mov	r0, r4	@, pH264Ctx
	bl	AdaptiveMemMark	@
	cmp	r0, #0	@,
	beq	.L2188	@,
.L2187:
	mvn	r0, #0	@ D.39595,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	Marking, .-Marking
	.align	2
	.global	ClearDPB
	.type	ClearDPB, %function
ClearDPB:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2200	@,
	bl	vfmw_dprint_nothing	@
.L2200:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	mov	r3, #0	@ tmp137,
	movw	r0, #52848	@ tmp138,
	movw	r2, #51332	@ tmp136,
	str	r3, [r4, r0]	@ tmp137, <variable>.FirstFrameDisplayed
	mov	r0, r3	@, tmp137
	str	r3, [r4, r2]	@ tmp137, <variable>.IDRFound
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ClearDPB, .-ClearDPB
	.align	2
	.global	ReceivePacket
	.type	ReceivePacket, %function
ReceivePacket:
	.fnstart
.LFB2041:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, lr}	@,
	.save {r4, r5, r6, r8, r9, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ pPacket, pPacket
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #368]	@ D.45232, <variable>.pCurrNal
	cmp	r3, #0	@ D.45232,
	beq	.L2203	@,
	ldrb	r2, [r6, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	cmp	r2, #1	@ <variable>.last_pack_in_nal,
	beq	.L2225	@,
.L2204:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r4, #368]	@ D.45232, <variable>.pCurrNal
	cmp	r3, #0	@ D.45232,
	ldrneb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.6161, <variable>.last_pack_in_nal
	beq	.L2203	@,
.L2205:
	strb	r2, [r3, #3]	@ prephitmp.6161, <variable>.nal_integ
	ldr	r0, [r6, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r0, #0	@ <variable>.stream_len,
	ble	.L2214	@,
	ldr	r2, [r6, #4]	@ temp.6199, <variable>.p_stream
	cmp	r2, #0	@ temp.6199,
	beq	.L2214	@,
	ldr	r3, [r6, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	r3, #0	@ <variable>.strm_phy_addr,
	bne	.L2217	@,
.L2214:
	ldr	r3, [r4, #368]	@ prephitmp.6163, <variable>.pCurrNal
.L2216:
	movw	r5, #52840	@ tmp269,
	mov	lr, #1	@ tmp267,
	strb	lr, [r3, #3]	@ tmp267, <variable>.nal_integ
	ldr	r1, [r6, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #:lower16:g_event_report	@ tmp272,
	movt	r0, #:upper16:g_event_report	@ tmp272,
	ldr	r3, [r0, #0]	@ g_event_report.6219, g_event_report
	cmp	r3, #0	@ g_event_report.6219,
	beq	.L2211	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6219
.L2211:
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	ip, #0	@ <variable>.nal_integ,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
	ldmfd	sp!, {r4, r5, r6, r8, r9, pc}	@
.L2225:
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bhi	.L2204	@,
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	r0, #1	@ <variable>.nal_integ,
	bne	.L2205	@,
	b	.L2204	@
.L2217:
	ldr	r3, [r4, #368]	@ prephitmp.6163, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ temp.6201, <variable>.nal_segment
	cmp	r1, #1	@ temp.6201,
	bhi	.L2216	@,
	rsb	r1, r1, r1, asl #3	@, tmp225, temp.6201, temp.6201,
	mov	r0, r4	@, pH264Ctx
	add	r3, r3, r1, asl #2	@, tmp227, prephitmp.6163, tmp225,
	str	r2, [r3, #8]	@ temp.6199, <variable>.streamBuffer
	ldr	lr, [r4, #368]	@ temp.6203, <variable>.pCurrNal
	ldr	r1, [r6, #12]	@ <variable>.stream_len, <variable>.stream_len
	ldr	r2, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	ip, r2, r2, asl #3	@, tmp233, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, lr, ip, asl #2	@, tmp235, temp.6203, tmp233,
	str	r1, [r3, #12]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	lr, [r4, #368]	@ temp.6207, <variable>.pCurrNal
	ldr	r1, [r6, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	ldr	r2, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	ip, r2, r2, asl #3	@, tmp242, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, lr, ip, asl #2	@, tmp244, temp.6207, tmp242,
	str	r1, [r3, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	mov	r1, #0	@ tmp255,
	ldr	lr, [r4, #368]	@ temp.6210, <variable>.pCurrNal
	ldr	r2, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	ip, r2, r2, asl #3	@, tmp251, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, lr, ip, asl #2	@, tmp253, temp.6210, tmp251,
	str	r1, [r3, #24]	@ tmp255, <variable>.bitsoffset
	ldr	lr, [r4, #368]	@ temp.6212, <variable>.pCurrNal
	ldr	r1, [r6, #16]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r2, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	ip, r2, r2, asl #3	@, tmp260, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, lr, ip, asl #2	@, tmp262, temp.6212, tmp260,
	str	r1, [r3, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	ip, [r4, #368]	@ temp.6215, <variable>.pCurrNal
	ldr	r2, [ip, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	add	lr, r2, #1	@ tmp266, <variable>.nal_segment,
	str	lr, [ip, #68]	@ tmp266, <variable>.nal_segment
	bl	CombinePacket	@
	b	.L2211	@
.L2203:
	ldr	r3, [r6, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r3, #0	@ <variable>.stream_len,
	ble	.L2207	@,
	ldr	r2, [r6, #4]	@ <variable>.p_stream, <variable>.p_stream
	cmp	r2, #0	@ <variable>.p_stream,
	beq	.L2207	@,
	ldr	ip, [r6, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	ip, #0	@ <variable>.strm_phy_addr,
	beq	.L2207	@,
	ldrb	r2, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r3, #0	@ Pos,
	cmp	r2, r3	@ <variable>.is_valid,
	addne	r1, r4, #96	@ ivtmp.6182, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L2209	@,
	b	.L2208	@
.L2226:
	ldrb	r2, [r1, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r1, r1, #192	@ ivtmp.6182, ivtmp.6182,
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L2208	@,
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2210	@,
.L2209:
	ldrb	r2, [r1, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L2226	@,
.L2208:
	cmp	r3, #136	@ Pos,
	bhi	.L2210	@,
	add	lr, r3, r3, asl #1	@, tmp168, Pos, Pos,
	mov	ip, #1	@ tmp172,
	mov	r3, lr, asl #5	@ tmp169, tmp168,
	add	lr, r3, r4	@ tmp170, tmp169, pH264Ctx
	add	r0, r3, #376	@ tmp178, tmp169,
	add	r1, r4, r0	@ tmp179, pH264Ctx, tmp178
	strb	ip, [lr, #377]	@ tmp172, <variable>.is_valid
	str	r1, [r4, #368]	@ tmp179, <variable>.pCurrNal
	ldr	r9, [r6, #4]	@ <variable>.p_stream, <variable>.p_stream
	str	r9, [lr, #384]	@ <variable>.p_stream, <variable>.streamBuffer
	ldr	r8, [r6, #12]	@ <variable>.stream_len, <variable>.stream_len
	str	r8, [lr, #388]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r0, [r6, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	str	r0, [r3, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r2, [r1, #24]	@ <variable>.is_valid, <variable>.bitsoffset
	ldr	r9, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r8, [r6, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r8, [r9, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	lr, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrd	r8, [r6, #24]	@ <variable>.pts, pPacket,
	strd	r8, [lr, #88]	@ <variable>.pts, <variable>.pCurrNal,
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	ip, [r3, #68]	@ tmp172, <variable>.nal_segment
	ldr	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	r2, [r0, #0]	@ <variable>.is_valid, <variable>.nal_used_segment
	ldrb	lr, [r6, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	lr, [r1, #3]	@ <variable>.last_pack_in_nal, <variable>.nal_integ
	b	.L2211	@
.L2210:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #:lower16:g_event_report	@ tmp212,
	movt	r2, #:upper16:g_event_report	@ tmp212,
	ldr	r3, [r2, #0]	@ g_event_report.879, g_event_report
	cmp	r3, #0	@ g_event_report.879,
	bne	.L2227	@,
.L2212:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r8, r9, pc}	@
.L2207:
	movw	r5, #52840	@ tmp214,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp217,
	movt	r1, #:upper16:g_event_report	@ tmp217,
	ldr	r3, [r1, #0]	@ g_event_report.6196, g_event_report
	cmp	r3, #0	@ g_event_report.6196,
	beq	.L2212	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6196
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r8, r9, pc}	@
.L2227:
	movw	ip, #52840	@ tmp213,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.879
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r8, r9, pc}	@
	.fnend
	.size	ReceivePacket, .-ReceivePacket
	.align	2
	.global	DecVDM
	.type	DecVDM, %function
DecVDM:
	.fnstart
.LFB2005:
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
	beq	.L2229	@,
	movw	r2, #49705	@ tmp149,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r1, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2229	@,
.L2230:
	movw	r6, #52768	@ tmp163,
	movw	ip, #52828	@ tmp162,
	ldr	r5, [r4, ip]	@ IPBDecMode, <variable>.advanced_cfg
	ldr	r3, [r4, r6]	@ D.42156, <variable>.OldDecMode
	cmp	r5, #2	@ IPBDecMode,
	cmpne	r3, r5	@, D.42156, IPBDecMode
	beq	.L2231	@,
	sub	lr, r3, #2	@ tmp171, D.42156,
	cmp	lr, #1	@ tmp171,
	bls	.L2264	@,
.L2231:
	movw	r3, #52768	@ tmp180,
	sub	r1, r5, #1	@ tmp181, IPBDecMode,
	str	r5, [r4, r3]	@ IPBDecMode, <variable>.OldDecMode
	cmp	r1, #4	@ tmp181,
	ldrls	pc, [pc, r1, asl #2]	@ tmp181
	b	.L2233	@
.L2238:
	.word	.L2234
	.word	.L2235
	.word	.L2236
	.word	.L2233
	.word	.L2237
.L2237:
	movw	r0, #50148	@ tmp202,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ <variable>.CurrPic.pic_type,
	beq	.L2240	@,
	movw	ip, #49707	@ tmp204,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r2, #0	@ <variable>.CurrPic.structure,
	beq	.L2241	@,
	movw	r1, #50676	@ tmp206,
	ldr	lr, [r4, r1]	@ <variable>.PrevPic.pic_type, <variable>.PrevPic.pic_type
	cmp	lr, #0	@ <variable>.PrevPic.pic_type,
	bne	.L2241	@,
.L2240:
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r2, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	cmp	r3, #0	@ <variable>.s32firstIdecodedflag,
	bne	.L2241	@,
	movw	ip, #52764	@ tmp210,
	ldr	r0, [r4, ip]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r0, #0	@ <variable>.SliceParaNum,
	beq	.L2233	@,
	movw	r0, #52760	@ tmp213,
	ldr	r1, [r4, r0]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	lr, [r1, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	lr, #0	@ <variable>.first_mb_in_slice,
	bne	.L2265	@,
.L2233:
	movw	r3, #52844	@ tmp223,
	ldr	lr, [r4, r3]	@ <variable>.PrevPicIsIDR, <variable>.PrevPicIsIDR
	cmp	lr, #1	@ <variable>.PrevPicIsIDR,
	beq	.L2266	@,
.L2242:
	movw	lr, #50152	@ tmp231,
	movw	r3, #52844	@ tmp230,
	ldr	r2, [r4, lr]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	r2, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
.L2243:
	movw	r0, #52764	@ tmp233,
	ldr	r1, [r4, r0]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r1, #0	@ <variable>.SliceParaNum,
	beq	.L2263	@,
	movw	r3, #52768	@ tmp235,
	ldr	ip, [r4, r3]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	ip, #4	@ <variable>.OldDecMode,
	beq	.L2245	@,
	movw	lr, #50148	@ tmp237,
	ldr	r3, [r4, lr]	@ prephitmp.6243, <variable>.CurrPic.pic_type
.L2246:
	cmp	r3, #2	@ prephitmp.6243,
	beq	.L2267	@,
	cmp	r3, #1	@ prephitmp.6243,
	movweq	r2, #51336	@ tmp258,
	streq	r3, [r4, r2]	@ prephitmp.6243, <variable>.PPicFound
.L2249:
	bl	vfmw_dprint_nothing	@
	movw	ip, #52804	@ tmp272,
	movw	r1, #50172	@ tmp261,
	ldr	r0, [r4, ip]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	mov	r2, #50176	@ tmp267,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_mbs, <variable>.CurrPic.pic_mbs
	movw	r3, #52764	@ tmp270,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	movw	r3, #52288	@ tmp260,
	str	ip, [r4, r3]	@ <variable>.CurrPic.pic_mbs, <variable>.DecPicPara.mbtodec
	cmp	r0, #0	@ <variable>.TotalPicNum,
	movw	r3, #52284	@ tmp266,
	mov	ip, #1	@ tmp264,
	str	r1, [r4, r3]	@ <variable>.CurrPic.stream_base_addr, <variable>.DecPicPara.stream_base_addr
	movw	r1, #51370	@ tmp263,
	movw	r3, #52488	@ tmp269,
	strb	ip, [r4, r1]	@ tmp264, <variable>.DecPicPara.NewPicFlag
	str	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.DecPicPara.SliceParaNum
	beq	.L2232	@,
	movw	r0, #50148	@ tmp274,
	ldr	lr, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	lr, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2251	@,
	movw	r5, #:lower16:g_event_report	@ tmp276,
	movt	r5, #:upper16:g_event_report	@ tmp276,
	ldr	r3, [r5, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L2260	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_GetPicStreamSize	@
	add	r2, sp, #8	@ tmp281,,
	ldr	ip, [r5, #0]	@ g_event_report, g_event_report
	mov	r1, #20	@,
	str	r0, [r2, #-4]!	@, para
	movw	r0, #52840	@ tmp279,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	ip	@ g_event_report
.L2260:
	ldr	r2, [r4, #0]	@ temp.6279, <variable>.pstExtraData
.L2252:
	add	r3, r4, #51200	@ D.42248, pH264Ctx,
	add	r3, r3, #168	@ D.42248, D.42248,
	str	r3, [r4, #360]	@ D.42248, <variable>.pH264DecParam
	ldr	r1, [r2, #708]	@ D.42249, <variable>.stDisParams.s32Mode
	cmp	r1, #1	@ D.42249,
	beq	.L2268	@,
	cmp	r1, #2	@ D.42249,
	beq	.L2269	@,
.L2254:
	ldr	r2, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	r1, #52752	@ tmp303,
	mov	r0, #0	@ D.42170,
	str	r2, [r4, r1]	@ <variable>.s32Compress_en, <variable>.DecPicPara.Compress_en
.L2232:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L2229:
	movw	r3, #52868	@ tmp151,
	ldr	r5, [r4, #0]	@ D.42150, <variable>.pstExtraData
	ldr	r6, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	movw	r1, #52872	@ tmp154,
	ldr	r2, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r0, r6, #1	@ D.42152, <variable>.numTotalFrame,
	cmp	r0, r2	@ D.42152, <variable>.numOutputFrame
	movlt	r0, r2	@ D.42154, <variable>.numOutputFrame
	str	r0, [r4, r3]	@ D.42154, <variable>.numTotalFrame
	str	r0, [r5, #440]	@ D.42154, <variable>.stChanState.total_frame_num
	ldr	lr, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ldr	ip, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	rsb	r6, ip, lr	@ tmp161, <variable>.numOutputFrame, <variable>.numTotalFrame
	str	r6, [r5, #444]	@ tmp161, <variable>.stChanState.error_frame_num
	b	.L2230	@
.L2264:
	cmp	r5, #4	@ IPBDecMode,
	cmpne	r5, #1	@, IPBDecMode,
	bhi	.L2231	@,
	bl	vfmw_dprint_nothing	@
	str	r5, [r4, r6]	@ IPBDecMode, <variable>.OldDecMode
.L2236:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.42170,
	b	.L2232	@
.L2251:
	movw	r1, #26628	@ tmp283,
	ldr	r2, [r4, r1]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r2, #0	@ <variable>.DPB.used_size,
	bne	.L2260	@,
	ldr	r2, [r4, #0]	@ temp.6279, <variable>.pstExtraData
	ldr	lr, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2252	@,
.L2263:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42170,
	b	.L2232	@
.L2266:
	movw	r0, #50148	@ tmp225,
	ldr	r1, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r1, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2242	@,
	movw	ip, #50152	@ tmp228,
	ldr	r2, [r4, ip]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	r2, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
	b	.L2243	@
.L2267:
	movw	r3, #51336	@ tmp247,
	ldr	ip, [r4, r3]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	ip, #2	@ <variable>.PPicFound,
	bne	.L2249	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r5, [lr, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r5, #0	@ <variable>.s32DecOrderOutput,
	bne	.L2249	@,
	movw	r2, #:lower16:g_allow_B_before_P	@ tmp251,
	movt	r2, #:upper16:g_allow_B_before_P	@ tmp251,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ g_allow_B_before_P, g_allow_B_before_P
	cmp	r1, #1	@ g_allow_B_before_P,
	beq	.L2249	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	movw	r0, #50112	@ tmp256,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r1, #52840	@ tmp253,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r5	@, <variable>.s32DecOrderOutput
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.42170,
	b	.L2232	@
.L2245:
	movw	r1, #50148	@ tmp238,
	ldr	r3, [r4, r1]	@ prephitmp.6243, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ prephitmp.6243,
	bne	.L2246	@,
	movw	r0, #51336	@ tmp239,
	ldr	r2, [r4, r0]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	moveq	r2, #2	@ tmp242,
	movne	r2, #1	@ tmp245,
	str	r2, [r4, r0]	@ tmp245, <variable>.PPicFound
	b	.L2249	@
.L2235:
	movw	r2, #50148	@ tmp182,
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2241	@,
	movw	lr, #52764	@ tmp187,
	ldr	ip, [r4, lr]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #0	@ <variable>.SliceParaNum,
	beq	.L2233	@,
	movw	r0, #52760	@ tmp190,
	ldr	r3, [r4, r0]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	r1, [r3, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r1, #0	@ <variable>.first_mb_in_slice,
	beq	.L2233	@,
.L2241:
	movw	r3, #49711	@ tmp220,
	mov	r2, #1	@ tmp221,
	mov	r0, r4	@, pH264Ctx
	strb	r2, [r4, r3]	@ tmp221, <variable>.CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42170,
	b	.L2232	@
.L2234:
	movw	ip, #50148	@ tmp195,
	ldr	r2, [r4, ip]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r2, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2233	@,
	movw	r1, #50128	@ tmp197,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2233	@,
	b	.L2241	@
.L2268:
	cmp	r3, #0	@ D.42248,
	beq	.L2254	@,
	movw	r0, #50148	@ tmp288,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	ip, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2254	@,
	movw	r3, #50112	@ tmp293,
	movw	r1, #52840	@ tmp291,
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp290,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp290, <variable>.pH264DecParam
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	b	.L2263	@
.L2269:
	ldr	ip, [r2, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	ip, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L2254	@,
	cmp	r3, #0	@ D.42248,
	beq	.L2254	@,
	movw	lr, #50148	@ tmp295,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2254	@,
	movw	r0, #50112	@ tmp300,
	movw	lr, #52840	@ tmp298,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp297,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp297, <variable>.pH264DecParam
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, #0]	@ temp.6288, <variable>.pstExtraData
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [r1, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp302, <variable>.stDisParams.s32DisNums,
	str	r2, [r1, #712]	@ tmp302, <variable>.stDisParams.s32DisNums
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42170,
	b	.L2232	@
.L2265:
	movw	ip, #49711	@ tmp215,
	mov	r0, r4	@, pH264Ctx
	strb	r3, [r4, ip]	@ <variable>.s32firstIdecodedflag, <variable>.CurrPic.mode_skip_flag
	str	r3, [r2, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42170,
	b	.L2232	@
	.fnend
	.size	DecVDM, .-DecVDM
	.align	2
	.global	InsertFrmInDPB
	.type	InsertFrmInDPB, %function
InsertFrmInDPB:
	.fnstart
.LFB1957:
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
	beq	.L2273	@,
	bcc	.L2272	@,
	cmp	r3, #2	@ <variable>.structure,
	beq	.L2319	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.39158,
.L2280:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2272:
	ldr	r0, [r2, #408]	@ D.39120, <variable>.frame_store
	add	r5, r1, #6592	@ tmp797, pos,
	add	r5, r5, #16	@ tmp797, tmp797,
	mov	ip, #3	@ tmp210,
	str	r0, [r4, r5, asl #2]	@ D.39120, <variable>.DPB.fs
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
	ldr	r3, [r4, r5, asl #2]	@ temp.6335, <variable>.DPB.fs
	cmp	r2, #0	@ <variable>.is_long_term,
	beq	.L2320	@,
.L2275:
	mov	r2, #3	@ iftmp.564,
.L2276:
	strb	r2, [r3, #2]	@ iftmp.564, <variable>.is_reference
	add	r1, r6, #16	@, pCurrPic,
	ldr	r8, [r4, r5, asl #2]	@ tmp230, <variable>.DPB.fs
	mov	r2, #392	@,
	ldr	lr, [r6, #476]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	lr, [r8, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r8, #0	@ tmp254,
	ldr	r0, [r4, r5, asl #2]	@ tmp234, <variable>.DPB.fs
	add	r0, r0, #8	@, tmp234,
	bl	memcpy	@
	ldr	r3, [r4, r5, asl #2]	@ temp.6338, <variable>.DPB.fs
	ldr	ip, [r6, #452]	@ D.39136, <variable>.err_level
	mov	r2, r8	@, tmp254
	mov	r0, r4	@, pH264Ctx
	str	ip, [r3, #544]	@ D.39136, <variable>.err_level
	str	ip, [r3, #420]	@ D.39136, <variable>.frame.err_level
	ldr	r1, [r4, r5, asl #2]	@ temp.6339, <variable>.DPB.fs
	ldr	r7, [r6, #408]	@ temp.6340, <variable>.frame_store
	str	r7, [r1, #404]	@ temp.6340, <variable>.frame.frame_store
	str	r7, [r1, #476]	@ temp.6340, <variable>.bottom_field.frame_store
	str	r7, [r1, #440]	@ temp.6340, <variable>.top_field.frame_store
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
	ldr	r8, [r4, r5, asl #2]	@ temp.6348, <variable>.DPB.fs
	ldr	r7, [r6, #444]	@ D.39142, <variable>.pic_type
	str	r7, [r8, #540]	@ D.39142, <variable>.pic_type
	str	r7, [r8, #424]	@ D.39142, <variable>.frame.pic_type
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
	ldr	r8, [r4, r5, asl #2]	@ temp.6354, <variable>.DPB.fs
	cmp	r7, #1	@ <variable>.mode_skip_flag,
	moveq	r7, #3	@ iftmp.566,
	movne	r7, r2	@ iftmp.566,
	strb	r7, [r8, #3]	@ iftmp.566, <variable>.mode_skip_flag
	ldr	r3, [r4, r5, asl #2]	@ temp.6355, <variable>.DPB.fs
	ldr	r1, [r3, #404]	@ <variable>.frame.frame_store, <variable>.frame.frame_store
	ldrb	r8, [r3, #401]	@ zero_extendqisi2	@ D.45936, <variable>.frame.is_long_term
	ldrb	r7, [r3, #402]	@ zero_extendqisi2	@ <variable>.frame.is_short_term, <variable>.frame.is_short_term
	ldr	lr, [r3, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	ldr	ip, [r3, #424]	@ <variable>.frame.pic_type, <variable>.frame.pic_type
	strb	sl, [r3, #436]	@ tmp297, <variable>.top_field.structure
	mov	sl, #2	@ tmp305,
	strb	r8, [r3, #473]	@ D.45936, <variable>.bottom_field.is_long_term
	str	r1, [r3, #476]	@ <variable>.frame.frame_store, <variable>.bottom_field.frame_store
	strb	r7, [r3, #474]	@ <variable>.frame.is_short_term, <variable>.bottom_field.is_short_term
	strb	sl, [r3, #472]	@ tmp305, <variable>.bottom_field.structure
	str	lr, [r3, #492]	@ <variable>.frame.err_level, <variable>.bottom_field.err_level
	str	ip, [r3, #496]	@ <variable>.frame.pic_type, <variable>.bottom_field.pic_type
	strb	r8, [r3, #437]	@ D.45936, <variable>.top_field.is_long_term
	strb	r7, [r3, #438]	@ <variable>.frame.is_short_term, <variable>.top_field.is_short_term
	str	lr, [r3, #456]	@ <variable>.frame.err_level, <variable>.top_field.err_level
	str	ip, [r3, #460]	@ <variable>.frame.pic_type, <variable>.top_field.pic_type
	str	r1, [r3, #440]	@ <variable>.frame.frame_store, <variable>.top_field.frame_store
	ldr	r1, [r6, #408]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	bne	.L2316	@,
.L2279:
	ldr	lr, [r4, r5, asl #2]	@ tmp789, <variable>.DPB.fs
	movw	r2, #52840	@ tmp785,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, #0	@ D.39158,
	b	.L2280	@
.L2273:
	ldr	r0, [r2, #408]	@ <variable>.frame_store, <variable>.frame_store
	mov	ip, #3	@ tmp312,
	strb	ip, [r0, #400]	@ tmp312, <variable>.frame.structure
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r2, #0	@ <variable>.field_pair_flag,
	addeq	r5, r1, #6592	@ tmp797, pos,
	addeq	r5, r5, #16	@ tmp797, tmp797,
	beq	.L2281	@,
	add	r5, r1, #6592	@ tmp797, pos,
	add	r5, r5, #16	@ tmp797, tmp797,
	ldr	r2, [r4, r5, asl #2]	@ temp.6358, <variable>.DPB.fs
	cmp	r2, #0	@ temp.6358,
	beq	.L2281	@,
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
	ldr	fp, [r4, r5, asl #2]	@ temp.6371, <variable>.DPB.fs
	ldr	r7, [fp, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	sl, [fp, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r9, r7, sl	@ D.39175, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r9, [fp, #544]	@ D.39175, <variable>.err_level
	str	r9, [fp, #420]	@ D.39175, <variable>.frame.err_level
	ldr	lr, [r4, r5, asl #2]	@ temp.6372, <variable>.DPB.fs
	ldrb	r1, [lr, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r1, #0	@ <variable>.non_existing,
	ldrneb	r1, [r6, #2]	@ zero_extendqisi2	@ iftmp.569, <variable>.non_existing
	strb	r1, [lr, #0]	@ iftmp.569, <variable>.non_existing
	add	r1, r6, #16	@, pCurrPic,
	ldr	r3, [r4, r5, asl #2]	@ temp.6373, <variable>.DPB.fs
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r0, r2, #1	@ tmp456, <variable>.is_used,
	strb	r0, [r3, #1]	@ tmp456, <variable>.is_used
	ldr	r8, [r4, r5, asl #2]	@ D.39121, <variable>.DPB.fs
	mov	r2, #392	@,
	ldrb	ip, [r6, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r7, [r8, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, #1	@ <variable>.mode_skip_flag,
	orreq	r7, r7, #1	@ iftmp.570, <variable>.mode_skip_flag,
	strb	r7, [r8, #3]	@ iftmp.570, <variable>.mode_skip_flag
	ldr	r9, [r4, r5, asl #2]	@ temp.6375, <variable>.DPB.fs
	add	r0, r9, #8	@, temp.6375,
	ldrd	sl, [r9, #24]	@, temp.6375,
	ldr	r8, [r9, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	r7, [r9, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	sl, [sp, #16]	@,,
	ldrd	sl, [r9, #32]	@, temp.6375,
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
.L2291:
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
	beq	.L2292	@,
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	ip, #1	@ <variable>.is_short_term,
	beq	.L2292	@,
.L2293:
	ldr	r3, [r4, r5, asl #2]	@ temp.6389, <variable>.DPB.fs
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
	ldr	r2, [r4, r5, asl #2]	@ temp.6393, <variable>.DPB.fs
	ldr	r3, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	ip, [r2, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	add	r0, r3, #6656	@ tmp542, <variable>.apc_idc,
	add	r1, r0, #36	@ tmp542, tmp542,
	add	r3, r4, r1, asl #2	@, tmp547, pH264Ctx, tmp542,
	str	ip, [r3, #4]	@ <variable>.top_field.poc, <variable>.APC.poc
	b	.L2279	@
.L2319:
	ldr	ip, [r2, #408]	@ <variable>.frame_store, <variable>.frame_store
	mov	lr, #3	@ tmp551,
	strb	lr, [ip, #400]	@ tmp551, <variable>.frame.structure
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r2, #0	@ <variable>.field_pair_flag,
	addeq	r5, r1, #6592	@ tmp797, pos,
	addeq	r5, r5, #16	@ tmp797, tmp797,
	beq	.L2294	@,
	add	r5, r1, #6592	@ tmp797, pos,
	add	r5, r5, #16	@ tmp797, tmp797,
	ldr	r2, [r0, r5, asl #2]	@ temp.6440, <variable>.DPB.fs
	cmp	r2, #0	@ temp.6440,
	beq	.L2294	@,
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
	ldr	fp, [r4, r5, asl #2]	@ temp.6453, <variable>.DPB.fs
	ldr	r7, [fp, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	sl, [fp, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r9, r7, sl	@ temp.6456, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r9, [fp, #544]	@ temp.6456, <variable>.err_level
	str	r9, [fp, #420]	@ temp.6456, <variable>.frame.err_level
	ldr	lr, [r4, r5, asl #2]	@ temp.6457, <variable>.DPB.fs
	ldrb	r1, [lr, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r1, #0	@ <variable>.non_existing,
	ldrneb	r1, [r6, #2]	@ zero_extendqisi2	@ iftmp.573, <variable>.non_existing
	strb	r1, [lr, #0]	@ iftmp.573, <variable>.non_existing
	add	r1, r6, #16	@, pCurrPic,
	ldr	r3, [r4, r5, asl #2]	@ temp.6459, <variable>.DPB.fs
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r0, r2, #2	@ tmp691, <variable>.is_used,
	strb	r0, [r3, #1]	@ tmp691, <variable>.is_used
	ldr	r8, [r4, r5, asl #2]	@ temp.6329, <variable>.DPB.fs
	mov	r2, #392	@,
	ldrb	ip, [r6, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r7, [r8, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, #1	@ <variable>.mode_skip_flag,
	orreq	r7, r7, #2	@ iftmp.574, <variable>.mode_skip_flag,
	strb	r7, [r8, #3]	@ iftmp.574, <variable>.mode_skip_flag
	ldr	r9, [r4, r5, asl #2]	@ temp.6463, <variable>.DPB.fs
	add	r0, r9, #8	@, temp.6463,
	ldrd	sl, [r9, #24]	@, temp.6463,
	ldr	r8, [r9, #20]	@ OtherFieldPts.6464, <variable>.fs_image.PTS
	ldr	r7, [r9, #16]	@ OtherFieldPts.6464, <variable>.fs_image.PTS
	strd	sl, [sp, #16]	@,,
	ldrd	sl, [r9, #32]	@, temp.6463,
	strd	sl, [sp, #24]	@,,
	ldr	fp, [r9, #80]	@, <variable>.fs_image.DispFrameDistance
	ldr	sl, [r9, #76]	@ OtherFieldDispEnableFlag.6467, <variable>.fs_image.DispEnableFlag
	str	fp, [sp, #4]	@, %sfp
	ldr	lr, [r9, #84]	@ OtherFieldDistanceBeforeFirstFrame.6469, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	fp, [r9, #88]	@ OtherFieldGopNum.6470, <variable>.fs_image.GopNum
	str	lr, [sp, #12]	@,
	bl	memcpy	@
	ldr	r1, [r6, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r0, r7, r8	@ tmp709, OtherFieldPts.6464, OtherFieldPts.6464
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
	strne	r8, [r9, #20]	@ OtherFieldPts.6464, <variable>.fs_image.PTS
	strne	r7, [r9, #16]	@ OtherFieldPts.6464, <variable>.fs_image.PTS
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
.L2306:
	ldrd	r8, [sp, #16]	@,,
	ldr	r2, [r6, #84]	@ <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	lr, [r6, #88]	@ <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strd	r8, [r3, #32]	@, tmp728,
	ldr	r3, [r4, r5, asl #2]	@ tmp732, <variable>.DPB.fs
	ldr	r1, [r6, #92]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	cmp	r2, sl	@ <variable>.fs_image.DispEnableFlag, OtherFieldDispEnableFlag.6467
	strls	r2, [r3, #76]	@, <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r3, #76]	@, OtherFieldDispEnableFlag.6467, <variable>.fs_image.DispEnableFlag
	ldr	r9, [sp, #4]	@, %sfp
	ldr	r0, [r4, r5, asl #2]	@ tmp737, <variable>.DPB.fs
	ldr	r2, [r6, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	cmp	lr, r9	@ <variable>.fs_image.DispFrameDistance,
	strls	lr, [r0, #80]	@, <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r9, [r0, #80]	@,, <variable>.fs_image.DispFrameDistance
	ldr	r3, [r4, r5, asl #2]	@ tmp742, <variable>.DPB.fs
	cmp	r1, ip	@ <variable>.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame.6469
	strls	r1, [r3, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	ip, [r3, #84]	@, OtherFieldDistanceBeforeFirstFrame.6469, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r0, [r4, r5, asl #2]	@ tmp747, <variable>.DPB.fs
	cmp	r2, fp	@ <variable>.fs_image.GopNum, OtherFieldGopNum.6470
	strls	r2, [r0, #88]	@, <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	fp, [r0, #88]	@, OtherFieldGopNum.6470, <variable>.fs_image.GopNum
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	ip, #1	@ <variable>.is_long_term,
	beq	.L2307	@,
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	ip, #1	@ <variable>.is_short_term,
	beq	.L2307	@,
.L2308:
	ldr	r3, [r4, r5, asl #2]	@ temp.6501, <variable>.DPB.fs
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
	ldr	r2, [r4, r5, asl #2]	@ temp.6508, <variable>.DPB.fs
	ldr	r3, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	ip, [r2, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	add	r0, r3, #6656	@ tmp777, <variable>.apc_idc,
	add	r1, r0, #52	@ tmp777, tmp777,
	add	r3, r4, r1, asl #2	@, tmp782, pH264Ctx, tmp777,
	str	ip, [r3, #4]	@ <variable>.bottom_field.poc, <variable>.APC.poc
	b	.L2279	@
.L2294:
	ldr	r3, [r6, #408]	@ temp.6510, <variable>.frame_store
	mov	r0, #2	@ tmp558,
	str	r3, [r4, r5, asl #2]	@ temp.6510, <variable>.DPB.fs
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
	ldr	r1, [r4, r5, asl #2]	@ temp.6523, <variable>.DPB.fs
	ldr	ip, [r1, #456]	@ temp.6524, <variable>.top_field.err_level
	str	ip, [r1, #544]	@ temp.6524, <variable>.err_level
	str	ip, [r1, #420]	@ temp.6524, <variable>.frame.err_level
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
	beq	.L2296	@,
	ldrb	r0, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r0, #1	@ <variable>.is_short_term,
	beq	.L2296	@,
.L2297:
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
	ldr	r3, [r4, r5, asl #2]	@ temp.6548, <variable>.DPB.fs
	ldr	ip, [r6, #444]	@ temp.6549, <variable>.pic_type
	str	ip, [r3, #540]	@ temp.6549, <variable>.pic_type
	str	ip, [r3, #496]	@ temp.6549, <variable>.bottom_field.pic_type
	ldrb	r1, [r6, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	r3, [r4, r5, asl #2]	@ temp.6550, <variable>.DPB.fs
	cmp	r1, #1	@ <variable>.mode_skip_flag,
	moveq	r1, r2	@ iftmp.571,
	movne	r1, #0	@ iftmp.571,
.L2318:
	strb	r1, [r3, #3]	@ iftmp.571, <variable>.mode_skip_flag
	ldr	r1, [r6, #408]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	beq	.L2279	@,
.L2316:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.39158,
	b	.L2280	@
.L2281:
	ldr	r3, [r6, #408]	@ temp.6394, <variable>.frame_store
	mov	lr, #1	@ tmp319,
	str	r3, [r4, r5, asl #2]	@ temp.6394, <variable>.DPB.fs
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
	ldr	r1, [r4, r5, asl #2]	@ temp.6407, <variable>.DPB.fs
	ldr	r0, [r1, #456]	@ temp.6408, <variable>.top_field.err_level
	str	r0, [r1, #544]	@ temp.6408, <variable>.err_level
	str	r0, [r1, #420]	@ temp.6408, <variable>.frame.err_level
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
	beq	.L2283	@,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	lr, #1	@ <variable>.is_short_term,
	beq	.L2283	@,
.L2284:
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
	b	.L2318	@
.L2320:
	ldrb	r2, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #0	@ <variable>.is_short_term,
	beq	.L2276	@,
	b	.L2275	@
.L2296:
	ldr	r2, [r4, r5, asl #2]	@ tmp613, <variable>.DPB.fs
	mov	ip, #2	@ tmp614,
	strb	ip, [r2, #2]	@ tmp614, <variable>.is_reference
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r1, #1	@ <variable>.is_long_term,
	ldreq	r1, [r4, r5, asl #2]	@ tmp619, <variable>.DPB.fs
	ldreq	ip, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	ip, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2297	@
.L2283:
	ldr	r2, [r4, r5, asl #2]	@ tmp374, <variable>.DPB.fs
	mov	r0, #1	@ tmp375,
	strb	r0, [r2, #2]	@ tmp375, <variable>.is_reference
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r1, r0	@ <variable>.is_long_term,
	ldreq	r1, [r4, r5, asl #2]	@ tmp380, <variable>.DPB.fs
	ldreq	r0, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r0, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2284	@
.L2307:
	ldr	r0, [r4, r5, asl #2]	@ temp.6496, <variable>.DPB.fs
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	r1, r2, #2	@ tmp756, <variable>.is_reference,
	strb	r1, [r0, #2]	@ tmp756, <variable>.is_reference
	ldrb	lr, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	ldreq	lr, [r4, r5, asl #2]	@ tmp761, <variable>.DPB.fs
	ldreq	r1, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [lr, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2308	@
.L2292:
	ldr	r0, [r4, r5, asl #2]	@ temp.6385, <variable>.DPB.fs
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	r1, r2, #1	@ tmp521, <variable>.is_reference,
	strb	r1, [r0, #2]	@ tmp521, <variable>.is_reference
	ldrb	lr, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	ldreq	lr, [r4, r5, asl #2]	@ tmp526, <variable>.DPB.fs
	ldreq	r1, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [lr, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2293	@
	.fnend
	.size	InsertFrmInDPB, .-InsertFrmInDPB
	.align	2
	.global	StorePicInDPB
	.type	StorePicInDPB, %function
StorePicInDPB:
	.fnstart
.LFB1966:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r3, #49707	@ tmp181,
	movw	lr, #49704	@ tmp184,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	ldrb	r6, [r0, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	ip, #2	@ <variable>.CurrPic.structure,
	movne	r2, #0	@, tmp183
	moveq	r2, #1	@, tmp183
	movw	r0, #19824	@ tmp180,
	cmp	r6, #0	@ <variable>.CurrPic.state,
	movw	r3, #19820	@ tmp178,
	mov	r6, #0	@ tmp179,
	.pad #12
	sub	sp, sp, #12	@,,
	str	r2, [r4, r0]	@ tmp183, <variable>.CurrPOC.last_pic_bottom_field
	str	r6, [r4, r3]	@ tmp179, <variable>.CurrPOC.last_has_mmco_5
	beq	.L2410	@,
	movw	r3, #52768	@ tmp189,
	movw	lr, #52856	@ tmp187,
	ldr	ip, [r4, r3]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movw	r0, #52852	@ tmp186,
	ldr	r2, [r4, lr]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	ip, #2	@ <variable>.OldDecMode,
	str	r2, [r4, r0]	@ <variable>.PicCounter, <variable>.PrevStorePicCounter
	beq	.L2413	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [lr, #12]	@ prephitmp.6586, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ prephitmp.6586,
	ble	.L2414	@,
	movw	lr, #49706	@ tmp203,
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	ip, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2329	@,
.L2425:
	movw	r6, #49707	@ tmp206,
	movw	ip, #50112	@ tmp205,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ temp.6620, <variable>.CurrPic.structure
	ldr	r6, [r4, ip]	@ pFrameStore, <variable>.CurrPic.frame_store
	sub	r0, r1, #1	@ tmp207, temp.6620,
	uxtb	r3, r0	@ tmp208, tmp207
	cmp	r3, #1	@ tmp208,
	movhi	r0, #0	@, one_fld_flg
	movls	r0, #1	@, one_fld_flg
	cmp	r1, #0	@ temp.6620,
	bne	.L2415	@,
.L2330:
	cmp	r0, #0	@ one_fld_flg,
	beq	.L2331	@,
	movw	r3, #52848	@ tmp217,
	ldr	ip, [r4, r3]	@ temp.6621, <variable>.FirstFrameDisplayed
	cmp	ip, #0	@ temp.6621,
	bne	.L2332	@,
	add	ip, r4, #49664	@, pH264Ctx,
	add	r0, r4, #50176	@, pH264Ctx,
	add	r1, ip, #40	@,,
	mov	r2, #1	@ tmp219,
	add	r0, r0, #8	@,,
	str	r2, [r4, r3]	@ tmp219, <variable>.FirstFrameDisplayed
	mov	r2, #480	@,
	bl	memcpy	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ prephitmp.6586, <variable>.s32DecOrderOutput
.L2329:
	cmp	r2, #2	@ prephitmp.6586,
	beq	.L2416	@,
.L2328:
	movw	r2, #50128	@ tmp297,
	ldr	r5, [r4, r2]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r5, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2348	@,
	movw	lr, #52832	@ tmp299,
	movw	r0, #50156	@ tmp300,
	ldr	r1, [r4, lr]	@ <variable>.ref_error_thr, <variable>.ref_error_thr
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	cmp	r1, r3	@ <variable>.ref_error_thr, <variable>.CurrPic.err_level
	bcs	.L2353	@,
	movw	ip, #49706	@ tmp303,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	r5, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2353	@,
	movw	r6, #:lower16:g_event_report	@ tmp305,
	movt	r6, #:upper16:g_event_report	@ tmp305,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #0]	@ g_event_report.6642, g_event_report
	cmp	r3, #0	@ g_event_report.6642,
	beq	.L2354	@,
	mov	r2, r5	@, <variable>.CurrPic.non_existing
	movw	r5, #52840	@ tmp306,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #104	@,
	blx	r3	@ g_event_report.6642
.L2354:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	bl	vfmw_dprint_nothing	@
	b	.L2323	@
.L2416:
	movw	r2, #50128	@ tmp285,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	ip, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2348	@,
	movw	r3, #49710	@ tmp287,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	cmp	r1, #5	@ <variable>.CurrPic.nal_unit_type,
	beq	.L2417	@,
.L2349:
	mov	r0, r4	@, pH264Ctx
	movw	r5, #26628	@ tmp289,
	bl	SimpleSlideDPB	@
	add	r0, r4, #49664	@, pH264Ctx,
	add	r2, r0, #40	@,,
	ldr	r1, [r4, r5]	@, <variable>.DPB.used_size
	mov	r0, r4	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmp	r0, #0	@,
	beq	.L2351	@,
.L2410:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L2323:
	movw	r6, #50112	@ tmp384,
	movw	r5, #52840	@ tmp381,
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mvn	r5, #0	@ ret,
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r3, #0	@ tmp388,
	strb	r3, [r1, #4]	@ tmp388, <variable>.is_in_dpb
	ldr	r0, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r3, [r0, #1]	@ tmp388, <variable>.is_used
.L2386:
	movw	lr, #49704	@ tmp394,
	mov	r2, #0	@ tmp395,
	strb	r2, [r4, lr]	@ tmp395, <variable>.CurrPic.state
.L2350:
	mov	r0, r5	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2353:
	mov	r0, r4	@, pH264Ctx
	bl	Marking	@
	cmp	r0, #0	@,
	bne	.L2410	@,
	mov	r0, r4	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	bne	.L2418	@,
.L2348:
	movw	r3, #49705	@ tmp308,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2419	@,
.L2356:
	movw	lr, #50128	@ tmp319,
	ldr	r1, [r4, lr]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2420	@,
	mov	r3, #26624	@ tmp342,
	ldr	r5, [r4, r3]	@ pre_used_size.6676, <variable>.DPB.size
.L2366:
	add	r9, r4, #26368	@ ivtmp.6611, pH264Ctx,
	mvn	lr, #0	@ pre_used_size,
	add	r7, r9, #64	@ ivtmp.6611, ivtmp.6611,
	mov	fp, lr	@ pre_pos, pre_used_size
	movw	r8, #26628	@ tmp403,
	movw	sl, #50128	@ tmp409,
	movw	r9, #50132	@ tmp410,
.L2379:
	ldr	r1, [r4, r8]	@ pre_used_size.6649, <variable>.DPB.used_size
	cmp	r1, r5	@ pre_used_size.6649, pre_used_size.6676
	bcc	.L2421	@,
	movls	r5, r1	@ pre_used_size.6676, pre_used_size.6649
	strhi	r5, [r4, r8]	@ pre_used_size.6676, <variable>.DPB.used_size
	cmp	r5, #0	@ pre_used_size.6676,
	moveq	r6, r5	@ pos.6672, pre_used_size.6676
	mvneq	r3, #-2147483648	@ min_poc,
	beq	.L2372	@,
	tst	r5, #1	@ pre_used_size.6676,
	mov	r6, #0	@ pos.6672,
	mov	r2, r7	@ ivtmp.6611, ivtmp.6611
	mov	r0, r6	@ pos, pos.6672
	mvn	r1, #-2147483648	@ min_poc.6675,
	bne	.L2373	@,
	ldr	r3, [r7, #0]	@ D.45943, <variable>.DPB.fs
	ldr	r1, [r3, #524]	@ min_poc, <variable>.poc
	cmn	r1, #-2147483647	@ min_poc,
	bge	.L2391	@,
	ldrb	r0, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2391	@,
	add	r2, r7, #4	@ ivtmp.6611, ivtmp.6611,
	mov	r0, #1	@ pos,
.L2373:
	ldr	ip, [r2, #0]	@ D.45943, <variable>.DPB.fs
	ldr	r3, [ip, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.6675
	bge	.L2370	@,
.L2422:
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	movne	r6, r0	@ pos.6672, pos
	beq	.L2370	@,
	add	r0, r0, #1	@ tmp415, pos,
	add	ip, r2, #4	@ tmp416, ivtmp.6611,
	cmp	r0, r5	@ tmp415, pre_used_size.6676
	beq	.L2372	@,
.L2423:
	ldr	r2, [r2, #4]	@ D.45943, <variable>.DPB.fs
	ldr	r1, [r2, #524]	@ min_poc, <variable>.poc
	cmp	r1, r3	@ min_poc, min_poc
	bge	.L2393	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2393	@,
	mov	r6, r0	@ pos.6672, tmp415
.L2407:
	add	r2, ip, #4	@ ivtmp.6611, tmp416,
	add	r0, r0, #1	@ pos, tmp415,
	ldr	ip, [r2, #0]	@ D.45943, <variable>.DPB.fs
	ldr	r3, [ip, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.6675
	blt	.L2422	@,
.L2370:
	add	r0, r0, #1	@ tmp415, pos,
	mov	r3, r1	@ min_poc, min_poc.6675
	cmp	r0, r5	@ tmp415, pre_used_size.6676
	add	ip, r2, #4	@ tmp416, ivtmp.6611,
	bne	.L2423	@,
.L2372:
	ldr	r1, [r4, sl]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2374	@,
	ldr	r2, [r4, r9]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	cmp	r2, r3	@ <variable>.CurrPic.thispoc, min_poc
	blt	.L2424	@,
.L2374:
	cmp	lr, r5	@ pre_used_size, pre_used_size.6676
	bne	.L2377	@,
	cmp	fp, r6	@ pre_pos, pos.6672
	beq	.L2410	@,
.L2377:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pos.6672
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@,
	beq	.L2410	@,
	mov	r2, #26624	@,
	mov	lr, r5	@ pre_used_size, pre_used_size.6676
	mov	fp, r6	@ pre_pos, pos.6672
	ldr	r5, [r4, r2]	@ pre_used_size.6676, <variable>.DPB.size
	b	.L2379	@
.L2414:
	movw	r0, #52848	@ tmp201,
	ldr	r3, [r4, r0]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	r3, #2	@ <variable>.FirstFrameDisplayed,
	beq	.L2328	@,
	movw	lr, #49706	@ tmp203,
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	ip, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2329	@,
	b	.L2425	@
.L2391:
	mvn	r1, #-2147483648	@ min_poc,
	mov	r0, #1	@ pos,
	add	r2, r7, #4	@ ivtmp.6611, ivtmp.6611,
	b	.L2373	@
.L2420:
	movw	r5, #26632	@ tmp323,
	movw	r0, #26636	@ tmp322,
	ldr	r3, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	mov	ip, #26624	@ tmp321,
	ldr	r2, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	ldr	r5, [r4, ip]	@ pre_used_size.6676, <variable>.DPB.size
	add	r3, r2, r3	@ tmp324, <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, r3	@ pre_used_size.6676, tmp324
	bhi	.L2366	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	bl	vfmw_dprint_nothing	@
	b	.L2323	@
.L2415:
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r3, #0	@ <variable>.is_used,
	moveq	lr, r0	@, tmp216, one_fld_flg
	orrne	lr, r0, #1	@,, tmp216, one_fld_flg
	cmp	lr, #0	@ tmp216,
	beq	.L2329	@,
	b	.L2330	@
.L2332:
	cmp	ip, #1	@ temp.6621,
	beq	.L2333	@,
.L2331:
	cmp	r1, #0	@ temp.6620,
	beq	.L2334	@,
	ldrb	lr, [r6, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	lr, #0	@ <variable>.is_used,
	beq	.L2329	@,
.L2334:
	cmp	r0, #0	@ one_fld_flg,
	bne	.L2426	@,
.L2335:
	add	r3, r4, #49664	@ pOutPic, pH264Ctx,
	add	r7, r3, #40	@ pOutPic, pOutPic,
.L2336:
	ldrb	r1, [r7, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r1, #0	@ <variable>.structure,
	beq	.L2337	@,
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r3, #1	@ <variable>.field_pair_flag,
	beq	.L2427	@,
.L2337:
	ldr	r5, [r7, #452]	@ <variable>.err_level, <variable>.err_level
	str	r5, [r6, #544]	@ <variable>.err_level, <variable>.err_level
.L2338:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pOutFrameStore
	movw	r8, #52840	@ tmp241,
	bl	GetImagePara	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L2410	@,
	ldrd	sl, [r7, #24]	@, pOutPic,
	ldrd	r0, [r7, #40]	@, pOutPic,
	ldr	r3, [r7, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strd	sl, [r5, #8]	@, pImg,
	strd	r0, [r5, #24]	@, pImg,
	ldrd	sl, [r7, #32]	@, pOutPic,
	add	r1, r7, #84
	ldmia	r1, {r1, r2, ip}	@ phole ldm
	strd	sl, [r5, #16]	@, pImg,
	str	r1, [r5, #68]	@ <variable>.fs_image.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r5, #72]	@ <variable>.fs_image.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r5, #76]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r3, [r5, #80]	@ <variable>.fs_image.GopNum, <variable>.GopNum
	ldr	r3, [r6, #544]	@ D.39722, <variable>.err_level
	cmp	r3, #0	@ D.39722,
	str	r3, [r5, #180]	@ D.39722, <variable>.error_level
	beq	.L2340	@,
	ldr	r7, [r5, #140]	@ <variable>.format, <variable>.format
	ands	r7, r7, #3	@ tmp251, <variable>.format,
	beq	.L2428	@,
.L2341:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [ip, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	lr, r3	@ <variable>.s32OutErrThr, D.39722
	bcc	.L2343	@,
.L2340:
	movw	r7, #52840	@ tmp257,
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
	cmp	r0, #1	@ D.39739,
	beq	.L2344	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2345:
	mov	r1, r5	@, pImg
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r3, #52848	@ tmp276,
	ldr	r1, [r4, r3]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	movw	r0, #52864	@ tmp272,
	ldr	r2, [r4, r0]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	cmp	r1, #2	@ <variable>.FirstFrameDisplayed,
	mov	r1, #2	@ tmp283,
	add	ip, r2, #2	@ tmp275, <variable>.PicOutCounter,
	str	ip, [r4, r0]	@ tmp275, <variable>.PicOutCounter
	movne	r0, #1	@ tmp281,
	strne	r0, [r6, #528]	@ tmp281, <variable>.eFoState
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r0, #52848	@ tmp282,
	str	r1, [r4, r0]	@ tmp283, <variable>.FirstFrameDisplayed
	ldr	r2, [lr, #12]	@ prephitmp.6586, <variable>.s32DecOrderOutput
	b	.L2329	@
.L2393:
	mov	r1, r3	@ min_poc, min_poc
	b	.L2407	@
.L2419:
	movw	r5, #50112	@ tmp310,
	movw	ip, #50696	@ tmp311,
	ldr	r0, [r4, r5]	@ D.39786, <variable>.CurrPic.frame_store
	ldr	lr, [r4, ip]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, lr	@ D.39786, <variable>.pDirectOutBuf
	beq	.L2429	@,
.L2357:
	movw	r2, #26628	@ tmp313,
	ldr	lr, [r4, r2]	@ temp.6671, <variable>.DPB.used_size
	cmp	lr, #0	@ temp.6671,
	beq	.L2356	@,
	movw	ip, #26432	@ tmp314,
	ldr	r3, [r4, ip]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r0, r3	@ D.39786, <variable>.DPB.fs
	moveq	r1, #0	@ i,
	beq	.L2360	@,
	tst	lr, #1	@ temp.6671,
	add	r3, r4, #26368	@ tmp318, pH264Ctx,
	add	r2, r3, #68	@ ivtmp.6616, tmp318,
	mov	r1, #0	@ i,
	bne	.L2362	@,
	ldr	ip, [r2, #0]	@ D.39796, <variable>.DPB.fs
	mov	r1, #1	@ i,
	add	r2, r3, #72	@ ivtmp.6616, tmp318,
	cmp	r0, ip	@ D.39786, D.39796
	bne	.L2362	@,
.L2360:
	add	r0, r4, #49664	@, pH264Ctx,
	add	r2, r0, #40	@,,
	mov	r0, r4	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmn	r0, #1	@,
	beq	.L2410	@,
	mov	r0, r4	@, pH264Ctx
	mov	r5, #0	@ ret,
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	bl	vfmw_dprint_nothing	@
	b	.L2386	@
.L2401:
	ldr	r5, [r2, #4]	@ D.39796, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.6616, tmp420,
	cmp	r0, r5	@ D.39786, D.39796
	beq	.L2360	@,
.L2362:
	add	r1, r1, #1	@ i, i,
	mov	r3, r2	@ tmp420, ivtmp.6616
	cmp	r1, lr	@ i, temp.6671
	bcs	.L2356	@,
	ldr	r5, [r3], #4	@ D.39796, <variable>.DPB.fs
	cmp	r0, r5	@ D.39786, D.39796
	bne	.L2401	@,
	b	.L2360	@
.L2413:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	movw	r2, #50180	@ tmp191,
	ldr	r3, [r4, r2]	@ D.39667, <variable>.CurrPic.pmv_address_idc
	mov	r5, r0	@ ret,
	movw	r0, #51320	@ tmp192,
	ldr	r1, [r4, r0]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	cmp	r3, r1	@ D.39667, <variable>.TotalPmvNum
	addne	ip, r3, #12800	@ tmp194, D.39667,
	strne	r1, [r4, r2]	@ <variable>.TotalPmvNum, <variable>.CurrPic.pmv_address_idc
	addne	r1, ip, #12	@ tmp194, tmp194,
	strne	r6, [r4, r1, asl #2]	@ tmp179, <variable>.PmvStoreUsedFlag
.L2376:
.L2326:
	bl	vfmw_dprint_nothing	@
	cmn	r5, #1	@ ret,
	bne	.L2386	@,
	b	.L2323	@
.L2344:
	movw	r3, #52872	@ tmp266,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r4, r3]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r1, lr, #1	@ tmp269, <variable>.numOutputFrame,
	str	r1, [r4, r3]	@ tmp269, <variable>.numOutputFrame
	str	r0, [r2, #732]	@ D.39739, <variable>.s32firstIdecodedflag
	b	.L2345	@
.L2351:
	ldr	ip, [r4, r5]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r0, r4	@, pH264Ctx
	add	lr, ip, #1	@ tmp296, <variable>.DPB.used_size,
	str	lr, [r4, r5]	@ tmp296, <variable>.DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r5, #0	@ ret,
	bl	vfmw_dprint_nothing	@
	b	.L2386	@
.L2418:
	bl	vfmw_dprint_nothing	@
	b	.L2348	@
.L2426:
	movw	r7, #52848	@ tmp228,
	ldr	r5, [r4, r7]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	r5, #1	@ <variable>.FirstFrameDisplayed,
	bne	.L2335	@,
.L2333:
	add	r6, r4, #50176	@ pOutPic, pH264Ctx,
	movw	r8, #50592	@ tmp231,
	add	r7, r6, #8	@ pOutPic, pOutPic,
	ldr	r6, [r4, r8]	@ pOutFrameStore, <variable>.LastPic.frame_store
	b	.L2336	@
.L2428:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_event_report	@ tmp253,
	movt	r0, #:upper16:g_event_report	@ tmp253,
	ldr	r3, [r0, #0]	@ g_event_report.605, g_event_report
	cmp	r3, #0	@ g_event_report.605,
	beq	.L2342	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, r7	@, tmp251
	mov	r1, #111	@,
	blx	r3	@ g_event_report.605
.L2342:
	ldr	r3, [r5, #180]	@ D.39722, <variable>.error_level
	cmp	r3, #0	@ D.39722,
	bne	.L2341	@,
	b	.L2340	@
.L2427:
	ldr	r2, [r6, #544]	@ <variable>.err_level, <variable>.err_level
	add	lr, r3, #2	@ tmp235, tmp235,
	strb	lr, [r6, #1]	@ tmp235, <variable>.is_used
	ldr	r0, [r7, #452]	@ <variable>.err_level, <variable>.err_level
	add	ip, r2, r0	@ tmp239, <variable>.err_level, <variable>.err_level
	str	ip, [r6, #544]	@ tmp239, <variable>.err_level
	b	.L2338	@
.L2421:
	movw	lr, #50128	@ tmp344,
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	ip, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2381	@,
	movw	r3, #49708	@ tmp346,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	cmp	r2, #0	@ <variable>.CurrPic.is_long_term,
	bne	.L2381	@,
	movw	r5, #26632	@ tmp348,
	ldr	r0, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r0, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L2381	@,
	add	r7, r4, #26368	@ ivtmp.6606, pH264Ctx,
	movw	lr, #50120	@ tmp399,
	add	r3, r7, #128	@ ivtmp.6606, ivtmp.6606,
	mov	r6, r2	@ tmp400, i.6654
	movw	r7, #51320	@ tmp401,
	b	.L2384	@
.L2382:
	ldr	r1, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.6606, ivtmp.6606,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.6654
	bls	.L2430	@,
.L2384:
	ldr	r1, [r3, #0]	@ D.39835, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.6654, i.6654,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	ldr	ip, [r1, #512]	@ <variable>.frame_num, <variable>.frame_num
	cmp	ip, r0	@ <variable>.frame_num, <variable>.CurrPic.frame_num
	bne	.L2382	@,
	strb	r6, [r1, #2]	@ tmp400, <variable>.is_reference
	ldr	r1, [r3, #0]	@ tmp398, <variable>.DPB.fs_ref
	ldrb	r8, [r1, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r8, #1	@ <variable>.is_in_dpb,
	streq	r8, [r1, #532]	@ <variable>.is_in_dpb, <variable>.is_displayed
	ldreq	r1, [r3, #0]	@ tmp358, <variable>.DPB.fs_ref
	streqb	r6, [r1, #4]	@ tmp400, <variable>.is_in_dpb
	ldreq	r1, [r3, #0]	@ tmp398, <variable>.DPB.fs_ref
	ldr	ip, [r4, r7]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	ldr	r8, [r1, #548]	@ D.39843, <variable>.pmv_address_idc
	add	r0, r8, #12800	@ tmp363, D.39843,
	cmp	r8, ip	@ D.39843, <variable>.TotalPmvNum
	add	r0, r0, #12	@ tmp363, tmp363,
	strne	r6, [r4, r0, asl #2]	@ tmp400, <variable>.PmvStoreUsedFlag
	strne	ip, [r1, #548]	@ <variable>.TotalPmvNum, <variable>.pmv_address_idc
	b	.L2382	@
.L2430:
	movw	r5, #26628	@ tmp371,
	ldr	r1, [r4, r5]	@ pre_used_size.6649, <variable>.DPB.used_size
.L2381:
	add	r2, r4, #49664	@, pH264Ctx,
	mov	r0, r4	@, pH264Ctx
	add	r2, r2, #40	@,,
	bl	InsertFrmInDPB	@
	movw	r3, #26628	@ tmp375,
	ldr	r2, [r4, r3]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	movw	ip, #50692	@ tmp374,
	str	r2, [r4, ip]	@ <variable>.DPB.used_size, <variable>.PrevPic.Dpb_pos
	cmp	r0, #0	@,
	bne	.L2410	@,
	add	lr, r2, #1	@ tmp380, <variable>.DPB.used_size,
	mov	r0, r4	@, pH264Ctx
	str	lr, [r4, r3]	@ tmp380, <variable>.DPB.used_size
	mov	r5, #0	@ ret,
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2386	@
.L2343:
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	movw	r6, #52840	@ tmp278,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	bl	vfmw_dprint_nothing	@
	b	.L2323	@
.L2424:
	movw	r3, #52768	@ tmp334,
	ldr	lr, [r4, r3]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	lr, #2	@ <variable>.OldDecMode,
	beq	.L2431	@,
.L2375:
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	bne	.L2376	@,
	bl	vfmw_dprint_nothing	@
	b	.L2376	@
.L2429:
	cmp	r0, #0	@ D.39786,
	bne	.L2375	@,
	b	.L2357	@
.L2431:
	movw	r0, #49707	@ tmp336,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r5, #0	@ <variable>.CurrPic.structure,
	movwne	r5, #50112	@ tmp339,
	ldrne	r2, [r4, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	addne	r5, r5, #588	@ tmp338, tmp338,
	strne	r2, [r4, r5]	@ <variable>.CurrPic.frame_store, <variable>.pLastFieldBuf
	b	.L2375	@
.L2417:
	mov	r0, r4	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	mvnne	r5, #0	@ ret,
	beq	.L2349	@,
	b	.L2350	@
	.fnend
	.size	StorePicInDPB, .-StorePicInDPB
	.align	2
	.global	H264DEC_VDMPostProc
	.type	H264DEC_VDMPostProc, %function
H264DEC_VDMPostProc:
	.fnstart
.LFB2049:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r0, #364]	@ <variable>.StartMode, <variable>.StartMode
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r3	@ pLumaInfo, pLumaInfo
	cmp	r5, #0	@ <variable>.StartMode,
	bne	.L2433	@,
	movw	r3, #50156	@ tmp144,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pLumaInfo
	bl	StorePicInDPB	@
	cmp	r0, #1	@,
	bls	.L2434	@,
	movw	r6, #50112	@ tmp148,
	movw	r1, #52840	@ tmp145,
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	str	r5, [r4, r6]	@ <variable>.StartMode, <variable>.CurrPic.frame_store
	mvn	r0, #0	@ D.45653,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2433:
	movw	r3, #50156	@ tmp154,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pLumaInfo
	bl	StorePicInDPB	@
	cmp	r0, #0	@,
	bne	.L2439	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L2440	@,
.L2437:
	movw	r0, #13576	@ tmp158,
	movw	r2, #22336	@ tmp157,
	ldr	r3, [r4, r0]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r1, #51324	@ tmp155,
	movw	ip, #:lower16:88888	@ tmp161,
	movt	ip, #:upper16:88888	@ tmp161,
	mov	lr, #0	@ tmp156,
	str	lr, [r4, r1]	@ tmp156, <variable>.AllowStartDec
	str	r3, [r4, r2]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	movw	r3, #22344	@ tmp160,
	str	ip, [r4, r3]	@ tmp161, <variable>.PrevSlice.frame_num
	movw	r2, #22329	@ tmp165,
	movw	ip, #22340	@ tmp168,
	mov	r1, #2	@ tmp166,
	mov	r3, #7	@ tmp169,
	strb	r1, [r4, r2]	@ tmp166, <variable>.PrevSlice.bottom_field_flag
	str	r3, [r4, ip]	@ tmp169, <variable>.PrevSlice.nal_ref_idc
	movw	r2, #22330	@ tmp170,
	movw	ip, #22352	@ tmp173,
	mov	r1, #32	@ tmp171,
	mov	r3, #3	@ tmp174,
	strb	r1, [r4, r2]	@ tmp171, <variable>.PrevSlice.nal_unit_type
	str	r3, [r4, ip]	@ tmp174, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r2, #22356	@ tmp175,
	movw	ip, #22368	@ tmp181,
	mvn	r1, #0	@ tmp176,
	mov	r3, #262144	@ tmp182,
	str	r1, [r4, r2]	@ tmp176, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	str	r3, [r4, ip]	@ tmp182, <variable>.PrevSlice.first_mb_in_slice
	movw	r2, #22328	@ tmp162,
	movw	r1, #22360	@ tmp177,
	movw	ip, #22364	@ tmp179,
	str	lr, [r4, r1]	@ tmp156, <variable>.PrevSlice.delta_pic_order_cnt
	mov	r0, lr	@ D.45653, tmp156
	strb	lr, [r4, r2]	@ tmp156, <variable>.PrevSlice.field_pic_flag
	str	lr, [r4, ip]	@ tmp156, <variable>.PrevSlice.delta_pic_order_cnt
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2434:
	movw	lr, #51324	@ tmp152,
	mov	r2, #1	@ tmp153,
	mov	r0, r5	@ D.45653, <variable>.StartMode
	str	r2, [r4, lr]	@ tmp153, <variable>.AllowStartDec
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2439:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2437	@,
.L2440:
	bl	vfmw_dprint_nothing	@
	b	.L2437	@
	.fnend
	.size	H264DEC_VDMPostProc, .-H264DEC_VDMPostProc
	.global	__aeabi_idivmod
	.align	2
	.global	DecGap
	.type	DecGap, %function
DecGap:
	.fnstart
.LFB2000:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	sl, #26380	@ tmp156,
	ldr	r5, [r0, sl]	@ D.41428, <variable>.CurrMarkIdx
	movw	r8, #13605	@ tmp162,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	movw	r0, #2004	@ tmp159,
	.pad #20
	sub	sp, sp, #20	@,,
	mul	fp, r0, r5	@ tmp158, tmp159, D.41428
	movw	r1, #26628	@ tmp171,
	ldr	r5, [r4, r1]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	sl, #1	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	movw	r8, #20700	@ tmp151,
	movw	r0, #16492	@ tmp152,
	add	r9, fp, r4	@ tmp160, tmp158, pH264Ctx
	movw	r3, #20696	@ tmp153,
	add	r6, r9, #22272	@ tmp161, tmp160,
	movw	r9, #19844	@ tmp154,
	add	r2, r6, #96	@ tmp161, tmp161,
	movw	fp, #50116	@ tmp164,
	mov	ip, r6	@ tmp170, tmp161
	movw	r6, #19848	@ tmp155,
	ldrb	lr, [r2, #7]	@ zero_extendqisi2	@, <variable>.adaptive_ref_pic_marking_mode_flag
	add	r7, ip, #100	@ tmp170, tmp170,
	moveq	sl, #2	@ nal_ref_idc,
	movne	sl, #0	@ nal_ref_idc,
	cmp	r5, #0	@ <variable>.DPB.used_size,
	str	lr, [sp, #12]	@, %sfp
	ldr	r1, [r4, r9]	@, <variable>.CurrPOC.delta_pic_order_cnt
	str	r7, [r4, fp]	@ tmp170, <variable>.CurrPic.pMarkPara
	ldr	r7, [r4, r8]	@ D.41420, <variable>.CurrSlice.frame_num
	ldr	r8, [r4, r0]	@ D.41421, <variable>.CurrSPS.log2_max_frame_num_minus4
	ldr	r0, [r4, r3]	@ D.41424, <variable>.CurrSlice.prev_frame_num
	str	r1, [sp, #8]	@, %sfp
	ldr	r2, [r4, r6]	@, <variable>.CurrPOC.delta_pic_order_cnt
	str	r2, [sp, #4]	@, %sfp
	beq	.L2455	@,
	mov	ip, #1	@ tmp174,
	add	lr, r8, #4	@ tmp173, D.41421,
	mov	r8, ip, asl lr	@ MaxFrameNum, tmp174,
	add	r0, r0, ip	@, D.41424,
	mov	r1, r8	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	mov	r3, #0	@ tmp182,
	str	r3, [r4, r9]	@ tmp182, <variable>.CurrPOC.delta_pic_order_cnt
	str	r3, [r4, r6]	@ tmp182, <variable>.CurrPOC.delta_pic_order_cnt
	mov	r5, r1	@ UnusedShortTermFrameNum,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r7, r5	@ D.41420, UnusedShortTermFrameNum
	ble	.L2446	@,
	movw	r6, #50112	@ tmp256,
	movw	r9, #16496	@ tmp261,
	b	.L2452	@
.L2448:
	movw	ip, #49708	@ tmp235,
	mov	r1, #0	@ tmp236,
	mov	r0, r4	@, pH264Ctx
	strb	r1, [r4, ip]	@ tmp236, <variable>.CurrPic.is_long_term
	bl	StorePicInDPB	@
	mov	r1, r8	@, MaxFrameNum
	cmp	r0, #0	@,
	add	r0, r5, #1	@, UnusedShortTermFrameNum,
	bne	.L2454	@,
	movw	lr, #20696	@ tmp243,
	str	r5, [r4, lr]	@ UnusedShortTermFrameNum, <variable>.CurrSlice.prev_frame_num
	bl	__aeabi_idivmod	@
	cmp	r7, r1	@ D.41420, UnusedShortTermFrameNum
	mov	r5, r1	@ UnusedShortTermFrameNum,
	ble	.L2446	@,
.L2452:
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret
	bne	.L2454	@,
	str	r0, [sp, #0]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r0, #49710	@,
	mov	r3, #1	@ tmp191,
	strb	r3, [r4, r0]	@ tmp191, <variable>.CurrPic.nal_unit_type
	movw	r1, #50120	@,
	movw	r0, #50128	@,
	str	r5, [r2, #512]	@ UnusedShortTermFrameNum, <variable>.frame_num
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r4, r1]	@ UnusedShortTermFrameNum, <variable>.CurrPic.frame_num
	str	r5, [ip, #412]	@ UnusedShortTermFrameNum, <variable>.frame.pic_num
	str	sl, [r4, r0]	@ nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r0, [sp, #0]	@,
	str	r0, [r2, #408]	@ ret, <variable>.frame.long_term_pic_num
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r1, #532]	@ tmp191, <variable>.is_displayed
	movw	r1, #49706	@,
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r0, [ip, #4]	@ ret, <variable>.is_in_dpb
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r3, [r2, #0]	@ tmp191, <variable>.non_existing
	ldr	ip, [r4, fp]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	strb	r3, [r4, r1]	@ tmp191, <variable>.CurrPic.non_existing
	strb	r0, [ip, #3]	@ ret, <variable>.adaptive_ref_pic_marking_mode_flag
	ldr	r2, [r4, r9]	@ <variable>.CurrSPS.pic_order_cnt_type, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r2, #0	@ <variable>.CurrSPS.pic_order_cnt_type,
	beq	.L2448	@,
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
	movw	ip, #50132	@,
	movw	r1, #50144	@ tmp232,
	str	r3, [r4, ip]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	str	r2, [r4, r1]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	b	.L2448	@
.L2454:
	ldr	ip, [sp, #8]	@, %sfp
	movw	r2, #19844	@ tmp238,
	movw	lr, #19848	@ tmp239,
	movw	r3, #50116	@ tmp241,
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	str	ip, [r4, r2]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r1, [sp, #4]	@, %sfp
	str	r1, [r4, lr]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r2, [sp, #12]	@, %sfp
	strb	r2, [r0, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41441,
.L2445:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2455:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.41441, <variable>.DPB.used_size
	b	.L2445	@
.L2446:
	ldr	r1, [sp, #8]	@, %sfp
	movw	lr, #19844	@ tmp249,
	movw	r2, #19848	@ tmp250,
	movw	r0, #50116	@ tmp252,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r0, #0	@ D.41441,
	str	r1, [r4, lr]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	lr, [sp, #4]	@, %sfp
	str	lr, [r4, r2]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r1, [sp, #12]	@, %sfp
	strb	r1, [ip, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	b	.L2445	@
	.fnend
	.size	DecGap, .-DecGap
	.align	2
	.global	InitPic
	.type	InitPic, %function
InitPic:
	.fnstart
.LFB2001:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r2, #13584	@ tmp190,
	movw	r5, #20692	@ tmp191,
	ldr	ip, [r0, r2]	@ <variable>.PPS, <variable>.PPS
	ldr	r8, [r0, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r6, #2208	@ tmp194,
	movw	lr, #49704	@ tmp201,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #13580	@ tmp196,
	ldrb	r0, [r0, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	mla	r6, r6, r8, ip	@ pPPS, tmp194, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	r3, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	cmp	r0, #0	@ <variable>.CurrPic.state,
	mov	r5, #4000	@ tmp199,
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, r2, r3	@ pSPS, tmp199, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L2457	@,
	movw	r7, #50112	@ tmp203,
	ldr	r3, [r4, r7]	@ D.41498, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.41498,
	beq	.L2458	@,
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r8, #0	@ <variable>.is_used,
	beq	.L2535	@,
.L2459:
	movw	r8, #49704	@ tmp216,
	mov	r1, #0	@ tmp217,
	strb	r1, [r4, r8]	@ tmp217, <variable>.CurrPic.state
.L2457:
	mov	r0, r4	@, pH264Ctx
	add	r1, sp, #12	@,,
	bl	GetReRangeFlag	@
	ldr	r3, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r8, r0	@ D.41507,
	movw	r0, #14332	@ tmp220,
	ldr	r2, [r4, r0]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	cmp	r2, r3	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	beq	.L2536	@,
.L2460:
	add	ip, r4, #13568	@, pH264Ctx,
	mov	r1, #0	@ tmp224,
	add	r0, ip, #20	@,,
	strb	r1, [r5, #24]	@ tmp224, <variable>.is_refreshed
	mov	r2, #4000	@,
	mov	r1, r5	@, pSPS
	bl	memmove	@
.L2461:
	ldr	r2, [sp, #12]	@ dpb_changed, dpb_changed
	cmp	r2, #0	@ dpb_changed,
	beq	.L2462	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	beq	.L2537	@,
.L2463:
	movw	lr, #52800	@ tmp265,
	cmp	r8, #0	@ D.41507,
	ldr	ip, [r4, lr]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r1, ip, #1	@ tmp268, <variable>.SeqCnt,
	str	r1, [r4, lr]	@ tmp268, <variable>.SeqCnt
	beq	.L2472	@,
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L2538	@,
.L2473:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	GetBackPicFromVOQueue	@
.L2474:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	subs	r7, r0, #0	@ ret.6831,
	bne	.L2528	@,
	cmp	r8, #0	@ D.41507,
	beq	.L2462	@,
	movw	ip, #17548	@ tmp278,
	movw	sl, #13606	@ tmp282,
	ldr	r1, [r4, ip]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r8, #17544	@ tmp275,
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r3, #17568	@ tmp273,
	add	r0, r1, #1	@ tmp279, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldr	r2, [r4, r8]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	rsb	sl, lr, #2	@ tmp284, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	lr, [r4, r3]	@ D.41549, <variable>.CurrSPS.dpb_size_plus1
	mov	ip, r0, asl #4	@ tmp281, tmp279,
	add	r8, r2, #1	@ tmp276, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	add	r0, r4, #51200	@, pH264Ctx,
	movw	r1, #51320	@ tmp274,
	mul	sl, sl, ip	@ ImageHeight.6842, tmp284, tmp281
	mov	r8, r8, asl #4	@ ImageWidth.6834, tmp276,
	str	lr, [r4, r1]	@ D.41549, <variable>.TotalPmvNum
	add	r3, r0, #116	@,,
	mov	r1, r8	@, ImageWidth.6834
	mov	r0, r4	@, pH264Ctx
	str	lr, [sp, #0]	@ D.41549,
	mov	r2, sl	@, ImageHeight.6842
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L2539	@,
	movw	r1, #13560	@ tmp291,
	movw	r3, #13564	@ tmp293,
	mov	r8, r8, lsr #4	@ tmp292, ImageWidth.6834,
	mov	lr, sl, lsr #4	@ tmp294, ImageHeight.6842,
	str	r8, [r4, r1]	@ tmp292, <variable>.CurWidthInMb
	str	lr, [r4, r3]	@ tmp294, <variable>.CurHeightInMb
.L2462:
	movw	r2, #17612	@ tmp295,
	ldr	ip, [r6, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	sl, [r4, r2]	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.CurrPPS.pic_parameter_set_id
	cmp	sl, ip	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.pic_parameter_set_id
	beq	.L2540	@,
.L2477:
	add	lr, r4, #17408	@, pH264Ctx,
	mov	r3, #0	@ tmp299,
	mov	r1, r6	@, pPPS
	add	r0, lr, #180	@,,
	strb	r3, [r6, #20]	@ tmp299, <variable>.is_refreshed
	mov	r2, #2208	@,
	bl	memmove	@
.L2478:
	movw	sl, #19820	@ tmp304,
	movw	ip, #16492	@ tmp303,
	ldr	r2, [r4, sl]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	movw	r1, #52768	@ tmp310,
	ldr	sl, [r4, ip]	@ D.41603, <variable>.CurrSPS.log2_max_frame_num_minus4
	cmp	r2, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	ldr	r6, [r4, r1]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movwne	ip, #50672	@ tmp308,
	movne	r2, #0	@ tmp307,
	strne	r2, [r4, ip]	@ tmp307, <variable>.PrevPic.frame_num
	movwne	ip, #20696	@ tmp306,
	strne	r2, [r4, ip]	@ tmp307, <variable>.CurrSlice.prev_frame_num
	cmp	r6, #2	@ <variable>.OldDecMode,
	beq	.L2480	@,
	ldr	r7, [r4, #0]	@ temp.6848, <variable>.pstExtraData
	ldr	r0, [r7, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2480	@,
	movw	r8, #20700	@ tmp314,
	movw	r3, #20696	@ tmp315,
	ldr	r6, [r4, r8]	@ prephitmp.6771, <variable>.CurrSlice.frame_num
	ldr	r8, [r4, r3]	@ prephitmp.6849, <variable>.CurrSlice.prev_frame_num
	cmp	r6, r8	@ prephitmp.6771, prephitmp.6849
	beq	.L2482	@,
	mov	lr, #1	@ tmp317,
	add	r1, sl, #4	@ tmp316, D.41603,
	mov	sl, lr, asl r1	@ MaxFrameNum, tmp317,
	add	r0, r8, lr	@, prephitmp.6849,
	mov	r1, sl	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	r6, r1	@ prephitmp.6771,
	beq	.L2482	@,
	ldr	ip, [r7, #516]	@ <variable>.s32MoreGapEnable, <variable>.s32MoreGapEnable
	cmp	ip, #0	@ <variable>.s32MoreGapEnable,
	bne	.L2483	@,
	ldr	r2, [r7, #540]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	r2, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2541	@,
.L2484:
	cmp	r6, r8	@ prephitmp.6771, prephitmp.6849
	bls	.L2485	@,
	movw	r0, #17568	@ tmp333,
	rsb	r8, r8, r6	@ tmp334, prephitmp.6849, prephitmp.6771
	ldr	r2, [r4, r0]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	r2, r8	@ <variable>.CurrSPS.dpb_size_plus1, tmp334
	bcs	.L2483	@,
.L2534:
	movw	r0, #20680	@ tmp343,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L2529	@,
	cmp	r6, #0	@ prephitmp.6771,
	movw	lr, #20696	@ tmp345,
	subeq	r6, sl, #1	@ iftmp.704, MaxFrameNum,
	subne	r6, r6, #1	@ iftmp.704, prephitmp.6771,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, lr]	@ iftmp.704, <variable>.CurrSlice.prev_frame_num
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L2528	@,
.L2483:
	movw	r1, #13605	@ tmp346,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	cmp	r3, #0	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	bne	.L2492	@,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [ip, #520]	@ D.41670, <variable>.s32FastForwardBackwardSpeed
	cmp	r6, #0	@ D.41670,
	cmpne	r6, #1024	@, D.41670,
	bne	.L2480	@,
	movw	r7, #20696	@ tmp358,
	mov	r1, sl	@, MaxFrameNum
	ldr	r2, [r4, r7]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r7, #20700	@ tmp357,
	ldr	r6, [r4, r7]	@ prephitmp.6771, <variable>.CurrSlice.frame_num
	add	r0, r2, #1	@, <variable>.CurrSlice.prev_frame_num,
	bl	__aeabi_uidivmod	@
	cmp	r6, r1	@ prephitmp.6771,
	bcs	.L2494	@,
	movw	lr, #20680	@ tmp367,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r0, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L2482	@,
.L2529:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41531,
	b	.L2465	@
.L2492:
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	bne	.L2528	@,
.L2480:
	movw	r3, #20700	@ tmp371,
	ldr	r6, [r4, r3]	@ prephitmp.6771, <variable>.CurrSlice.frame_num
.L2482:
	movw	r2, #20712	@ tmp372,
	movw	r1, #19860	@ tmp376,
	ldr	ip, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	mov	r0, r4	@, pH264Ctx
	cmp	ip, #0	@ <variable>.CurrSlice.nal_ref_idc,
	movwne	ip, #20696	@ tmp374,
	strne	r6, [r4, ip]	@ prephitmp.6771, <variable>.CurrSlice.prev_frame_num
	movwne	ip, #20700	@ tmp375,
	ldrne	r6, [r4, ip]	@ prephitmp.6771, <variable>.CurrSlice.frame_num
	str	r6, [r4, r1]	@ prephitmp.6771, <variable>.CurrPOC.frame_num
	bl	DecPOC	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret.6861
	bne	.L2528	@,
	movw	r9, #20681	@ tmp416,
	movw	r1, #20683	@ tmp384,
	ldrb	r8, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r3, #20700	@ tmp388,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r7, #20712	@ tmp391,
	cmp	r8, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	sl, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	r8, [r4, r7]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r6, #19840	@ tmp394,
	movw	lr, #19836	@ tmp397,
	movw	ip, #19828	@ tmp400,
	movw	r3, #19832	@ tmp403,
	ldr	r7, [r4, r6]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	ldr	r6, [r4, lr]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPOC.framepoc
	movw	r1, #50120	@ tmp387,
	ldr	lr, [r4, ip]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	movw	r3, #49710	@ tmp383,
	strb	r2, [r4, r3]	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrPic.nal_unit_type
	movw	r2, #50128	@ tmp390,
	str	sl, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrPic.frame_num
	movw	r1, #50136	@ tmp396,
	str	r8, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	r2, #50144	@ tmp402,
	str	r6, [r4, r1]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	sl, #50132	@ tmp393,
	str	ip, [r4, r2]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	movw	r6, #49708	@ tmp411,
	movw	r2, #13606	@ tmp421,
	str	r7, [r4, sl]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	strb	r0, [r4, r6]	@ ret.6861, <variable>.CurrPic.is_long_term
	movw	ip, #17548	@ tmp424,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r8, #50140	@ tmp399,
	mov	r7, #50176	@ tmp414,
	movw	r1, #49704	@ tmp380,
	mov	r3, #1	@ tmp381,
	str	lr, [r4, r8]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	strb	r3, [r4, r1]	@ tmp381, <variable>.CurrPic.state
	mvn	lr, #0	@ tmp415,
	movw	r1, #49709	@ tmp408,
	str	lr, [r4, r7]	@ tmp415, <variable>.CurrPic.stream_base_addr
	movw	sl, #49711	@ tmp377,
	ldr	lr, [r4, ip]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r8, #49706	@ tmp405,
	strb	r0, [r4, r1]	@ ret.6861, <variable>.CurrPic.is_short_term
	strb	r0, [r4, sl]	@ ret.6861, <variable>.CurrPic.mode_skip_flag
	moveq	r1, r3	@ prephitmp.6776, tmp381
	strb	r0, [r4, r8]	@ ret.6861, <variable>.CurrPic.non_existing
	rsb	r0, r6, #2	@ tmp423, <variable>.CurrSPS.frame_mbs_only_flag,
	strneb	r3, [r4, r9]	@ tmp381, <variable>.CurrSlice.field_pic_flag
	movne	r1, #2	@ prephitmp.6776,
	mla	r9, lr, r0, r0	@ tmp427, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp423, tmp423
	movw	r7, #17544	@ tmp440,
	movw	sl, #20681	@ tmp449,
	movw	r6, #50164	@ tmp431,
	mov	r0, r9	@, tmp427
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, r7]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	ldrb	r8, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r1, #17588	@ tmp446,
	add	sl, r3, #1	@ temp.6878, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	cmp	r8, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	r2, #50168	@ tmp432,
	str	r9, [r4, r2]	@ tmp427, <variable>.CurrPic.frame_height_in_mb
	movw	r7, #49712	@ tmp445,
	movw	r8, #50172	@ tmp443,
	movw	r9, #50160	@ tmp442,
	strb	ip, [r4, r7]	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPic.entropy_coding_mode_flag
	str	sl, [r4, r9]	@ temp.6878, <variable>.CurrPic.pic_width_in_mb
	mul	r1, sl, r0	@ tmp444, temp.6878, tmp430
	str	r0, [r4, r6]	@ tmp430, <variable>.CurrPic.pic_height_in_mb
	str	r1, [r4, r8]	@ tmp444, <variable>.CurrPic.pic_mbs
	movne	r1, #0	@ prephitmp.6777,
	beq	.L2542	@,
.L2502:
	movw	r0, #20712	@ tmp456,
	movw	lr, #26380	@ tmp462,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	ip, #49713	@ tmp454,
	ldr	r2, [r4, lr]	@ <variable>.CurrMarkIdx, <variable>.CurrMarkIdx
	movw	sl, #50116	@ tmp461,
	strb	r1, [r4, ip]	@ prephitmp.6777, <variable>.CurrPic.MbaffFrameFlag
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	movw	r1, #2004	@ tmp465,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mla	r8, r1, r2, r4	@ tmp468, tmp465, <variable>.CurrMarkIdx, pH264Ctx
	movwne	r3, #20700	@ tmp459,
	ldrne	ip, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movwne	r3, #20696	@ tmp458,
	movw	r9, #49728	@ tmp470,
	movw	r2, #49788	@ tmp479,
	add	r7, r8, #22272	@ tmp469, tmp468,
	movw	r8, #49864	@ tmp497,
	strne	ip, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.prev_frame_num
	add	r6, r7, #100	@ tmp469, tmp469,
	str	r6, [r4, sl]	@ tmp469, <variable>.CurrPic.pMarkPara
	movw	ip, #49736	@ tmp473,
	ldrd	r0, [lr, #56]	@ <variable>.pts, <variable>.pstExtraData,
	movw	r3, #49744	@ tmp476,
	movw	r7, #49868	@ tmp502,
	movw	sl, #49860	@ tmp513,
	add	r6, r4, #49664	@ tmp620, pH264Ctx,
	strd	r0, [r4, r9]	@ <variable>.pts, pH264Ctx, tmp470
	movw	r9, #49848	@ tmp534,
	ldrd	r0, [lr, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r0, [r4, ip]	@ <variable>.Usertag, pH264Ctx, tmp473
	ldrd	r0, [lr, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r0, [r4, r3]	@ <variable>.DispTime, pH264Ctx, tmp476
	movw	r3, #49792	@ tmp482,
	ldr	ip, [lr, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	mvn	r0, #0	@ tmp496,
	str	ip, [r4, r2]	@ <variable>.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r2, #49796	@ tmp485,
	ldr	r1, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r1, [r4, r3]	@ <variable>.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	movw	r3, #49800	@ tmp488,
	ldr	ip, [lr, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r4, r2]	@ <variable>.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	movw	r2, #49932	@ tmp491,
	ldr	r1, [lr, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r1, [r4, r3]	@ <variable>.GopNum, <variable>.CurrPic.fs_image.GopNum
	movw	r3, #49936	@ tmp493,
	ldr	ip, [r5, #752]	@ <variable>.bit_depth_luma_minus8, <variable>.bit_depth_luma_minus8
	str	ip, [r4, r2]	@ <variable>.bit_depth_luma_minus8, <variable>.CurrPic.fs_image.bit_depth_luma_minus8
	ldr	r1, [r5, #756]	@ <variable>.bit_depth_chroma_minus8, <variable>.bit_depth_chroma_minus8
	str	r1, [r4, r3]	@ <variable>.bit_depth_chroma_minus8, <variable>.CurrPic.fs_image.bit_depth_chroma_minus8
	mvn	r1, #0	@,
	strd	r0, [lr, #56]	@ tmp496, <variable>.pstExtraData,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	movw	ip, #13606	@ tmp503,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r2, #17548	@ tmp506,
	ldr	ip, [r4, r2]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	mov	r1, #14336	@ tmp516,
	rsb	r3, r3, #2	@ tmp505, <variable>.CurrSPS.frame_mbs_only_flag,
	movw	r2, #13644	@ tmp522,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.vui_seq_parameters.video_format, <variable>.CurrSPS.vui_seq_parameters.video_format
	mla	r3, ip, r3, r3	@ tmp509, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp505, tmp505
	ldr	ip, [r4, r1]	@ <variable>.CurrSPS.chroma_format_idc, <variable>.CurrSPS.chroma_format_idc
	movw	r1, #17544	@ tmp498,
	mov	r2, r2, asl #5	@ tmp523, <variable>.CurrSPS.vui_seq_parameters.video_format,
	ldr	r0, [r4, r1]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	movw	r1, #13640	@ tmp511,
	ldr	r1, [r4, r1]	@ <variable>.CurrSPS.vui_seq_parameters.aspect_ratio, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio
	subs	ip, ip, #1	@ tmp520, <variable>.CurrSPS.chroma_format_idc,
	movne	ip, #1	@ tmp520
	add	r0, r0, #1	@ tmp499, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	and	r2, r2, #255	@ tmp525, tmp523,
	and	r1, r1, #7	@ dar, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio,
	orr	r2, r2, ip, asl #2	@, tmp526, tmp525, tmp520,
	mov	r0, r0, asl #4	@ tmp501, tmp499,
	mov	ip, r3, asl #4	@ tmp510, tmp509,
	str	r0, [r4, r8]	@ tmp501, <variable>.CurrPic.fs_image.image_width
	orr	r3, r2, r1, asl #14	@, tmp528, tmp526, dar,
	str	ip, [r4, r7]	@ tmp510, <variable>.CurrPic.fs_image.image_height
	add	r0, r6, #56	@, tmp620,
	str	r3, [r4, sl]	@ tmp528, <variable>.CurrPic.fs_image.format
	bl	SetAspectRatio	@
	movw	r1, #49707	@ tmp535,
	movw	r3, #50112	@ tmp538,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r0, #52800	@ tmp532,
	ldr	r1, [r4, r3]	@ temp.6900, <variable>.CurrPic.frame_store
	ldr	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	subs	r2, r2, #0	@ tmp537, <variable>.CurrPic.structure,
	movne	r2, #1	@ tmp537
	cmp	r1, #0	@ temp.6900,
	movw	r0, #49904	@ tmp531,
	str	r2, [r4, r9]	@ tmp537, <variable>.CurrPic.fs_image.is_fld_save
	str	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.CurrPic.fs_image.seq_cnt
	beq	.L2528	@,
	ldr	r0, [r4, sl]	@ <variable>.CurrPic.fs_image.format, <variable>.CurrPic.fs_image.format
	movw	ip, #49784	@ tmp547,
	movw	sl, #49780	@ tmp551,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.fs_image.u32AspectHeight, <variable>.CurrPic.fs_image.u32AspectHeight
	ldr	ip, [r4, sl]	@ <variable>.CurrPic.fs_image.u32AspectWidth, <variable>.CurrPic.fs_image.u32AspectWidth
	str	r0, [r1, #148]	@ <variable>.CurrPic.fs_image.format, <variable>.fs_image.format
	ldr	sl, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r0, [r4, r8]	@ <variable>.CurrPic.fs_image.image_width, <variable>.CurrPic.fs_image.image_width
	ldr	r1, [r4, r7]	@ <variable>.CurrPic.fs_image.image_height, <variable>.CurrPic.fs_image.image_height
	movw	r7, #52840	@ tmp573,
	str	r2, [sl, #136]	@ tmp537, <variable>.fs_image.is_fld_save
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r2, #72]	@ <variable>.CurrPic.fs_image.u32AspectHeight, <variable>.fs_image.u32AspectHeight
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [lr, #68]	@ <variable>.CurrPic.fs_image.u32AspectWidth, <variable>.fs_image.u32AspectWidth
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [ip, #152]	@ <variable>.CurrPic.fs_image.image_width, <variable>.fs_image.image_width
	movw	r0, #49880	@ tmp563,
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r1, [r2, #156]	@ <variable>.CurrPic.fs_image.image_height, <variable>.fs_image.image_height
	ldr	lr, [r5, #3992]	@ D.41759, <variable>.disp_center_x
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r1, #168]	@ D.41759, <variable>.fs_image.disp_center_x
	str	lr, [r4, r0]	@ D.41759, <variable>.CurrPic.fs_image.disp_center_x
	movw	lr, #49884	@ tmp566,
	ldr	r2, [r5, #3996]	@ D.41761, <variable>.disp_center_y
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r2, [ip, #172]	@ D.41761, <variable>.fs_image.disp_center_y
	movw	ip, #49872	@ tmp569,
	str	r2, [r4, lr]	@ D.41761, <variable>.CurrPic.fs_image.disp_center_y
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r0, [r5, #3984]	@ D.41763, <variable>.disp_width
	str	r0, [r1, #160]	@ D.41763, <variable>.fs_image.disp_width
	movw	r1, #49876	@ tmp572,
	str	r0, [r4, ip]	@ D.41763, <variable>.CurrPic.fs_image.disp_width
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r2, [r5, #3988]	@ D.41765, <variable>.disp_height
	str	r2, [lr, #164]	@ D.41765, <variable>.fs_image.disp_height
	ldr	r5, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r2, [r4, r1]	@ D.41765, <variable>.CurrPic.fs_image.disp_height
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetDispPhyFs	@
	subs	r2, r0, #0	@ pstDecFs,
	beq	.L2505	@,
	ldr	r3, [r4, r9]	@ <variable>.CurrPic.fs_image.is_fld_save, <variable>.CurrPic.fs_image.is_fld_save
	mov	r1, #0	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	subs	r3, r3, r1	@, <variable>.CurrPic.fs_image.is_fld_save,
	movne	r3, #1	@
	ldr	r2, [r2, #4]	@, <variable>.PhyFsID
	bl	FSP_SetStoreType	@
.L2505:
	movw	r1, #51344	@ tmp585,
	add	r5, r4, #49920	@ D.52215, pH264Ctx,
	ldr	r9, [r4, r1]	@ prephitmp.6916, <variable>.TotalUsrDatNum
	add	r7, r4, #51200	@ ivtmp.6811, pH264Ctx,
	add	r6, r6, #248	@ ivtmp.6820, tmp620,
	add	r2, r5, #8	@ D.52215, D.52215,
	add	r0, r7, #152	@ ivtmp.6811, ivtmp.6811,
	mov	r5, #0	@ tmp625,
	movw	r7, #51348	@ tmp623,
.L2510:
	ldr	lr, [r6, #0]	@ tmp588, <variable>.CurrPic.fs_image.p_usrdat
	cmp	lr, #0	@ tmp588,
	ldrne	r9, [r4, r1]	@ prephitmp.6916, <variable>.TotalUsrDatNum
	beq	.L2543	@,
.L2507:
	add	r6, r6, #4	@ ivtmp.6820, ivtmp.6820,
	cmp	r6, r2	@ ivtmp.6820, D.52215
	bne	.L2510	@,
	cmp	r9, #0	@ prephitmp.6916,
	beq	.L2511	@,
	ble	.L2511	@,
	add	r6, r9, #12800	@ tmp606, prephitmp.6916,
	sub	r1, r9, #1	@ tmp628, prephitmp.6916,
	add	r2, r6, #36	@ tmp606, tmp606,
	movw	r8, #52840	@ tmp621,
	mov	r6, r1	@ uidxpic, tmp628
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r5, r4, r2, asl #2	@, tmp609, pH264Ctx, tmp606,
	and	r9, r1, #1	@ tmp629, tmp628,
	mov	r7, #0	@ tmp622,
	mov	sl, r5	@ ivtmp.6808, tmp609
	ldr	r1, [sl], #4	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, r7	@ uidxpic,
	str	r7, [sl, #-4]	@ tmp622, <variable>.pUsrDatArray
	ble	.L2511	@,
	cmp	r9, #0	@ tmp629,
	beq	.L2512	@,
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ uidxpic, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp622, <variable>.pUsrDatArray
	ble	.L2511	@,
.L2512:
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	lr, r6, #1	@ tmp630, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	sub	r6, lr, #1	@ uidxpic, tmp630,
	bl	FreeUsdByDec	@
	str	r7, [r5, #-4]!	@ tmp622, <variable>.pUsrDatArray
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp622, <variable>.pUsrDatArray
	bgt	.L2512	@,
.L2511:
	movw	r3, #51344	@ tmp614,
	movw	ip, #50148	@ tmp616,
	mov	r5, #0	@ tmp615,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, r3]	@ tmp615, <variable>.TotalUsrDatNum
	str	r5, [r4, ip]	@ tmp615, <variable>.CurrPic.pic_type
	bl	CalcPicNum	@
	mov	r0, r5	@ D.41531, tmp615
.L2465:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L2543:
	cmp	r9, #0	@ prephitmp.6916,
	beq	.L2507	@,
	ldr	ip, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r9, [r4, r7]	@ <variable>.pUsrDatArray, <variable>.pUsrDatArray
	subs	lr, ip, #1	@ D.41784, <variable>.TotalUsrDatNum,
	str	r9, [r6, #0]	@ <variable>.pUsrDatArray, <variable>.CurrPic.fs_image.p_usrdat
	beq	.L2508	@,
	ldr	r8, [r0, #0]	@ tmp595, <variable>.pUsrDatArray
	mov	ip, #1	@ uidxsei,
	cmp	lr, ip	@ D.41784, uidxsei
	sub	r3, lr, #1	@ tmp632, D.41784,
	and	sl, r3, ip	@ tmp634, tmp632,
	add	r3, r0, #4	@ ivtmp.6811, ivtmp.6811,
	str	r8, [r0, #-4]	@ tmp595, <variable>.pUsrDatArray
	bls	.L2508	@,
	cmp	sl, #0	@ tmp634,
	beq	.L2509	@,
	ldr	r8, [r0, #4]	@ tmp659, <variable>.pUsrDatArray
	mov	ip, #2	@ uidxsei,
	cmp	lr, ip	@ D.41784, uidxsei
	str	r8, [r3, #-4]	@ tmp659, <variable>.pUsrDatArray
	add	r3, r3, #4	@ ivtmp.6811, ivtmp.6811,
	bls	.L2508	@,
.L2509:
	ldr	sl, [r3, #0]	@ tmp640, <variable>.pUsrDatArray
	add	ip, ip, #2	@ uidxsei, uidxsei,
	ldr	r9, [r3, #4]	@ tmp642, <variable>.pUsrDatArray
	cmp	lr, ip	@ D.41784, uidxsei
	mov	r8, r3	@ tmp635, ivtmp.6811
	str	sl, [r3, #-4]	@ tmp640, <variable>.pUsrDatArray
	str	r9, [r8], #4	@ tmp642, <variable>.pUsrDatArray
	add	r3, r8, #4	@ ivtmp.6811, tmp635,
	bhi	.L2509	@,
.L2508:
	add	r9, lr, #12800	@ tmp596, D.41784,
	ldr	r3, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	ip, r9, #36	@ tmp596, tmp596,
	sub	r9, r3, #1	@ prephitmp.6916, <variable>.TotalUsrDatNum,
	str	r9, [r4, r1]	@ prephitmp.6916, <variable>.TotalUsrDatNum
	add	lr, r4, ip, asl #2	@, tmp600, pH264Ctx, tmp596,
	str	r5, [lr, #4]	@ tmp625, <variable>.pUsrDatArray
	b	.L2507	@
.L2542:
	movw	r9, #13607	@ tmp451,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	subs	r1, r0, #0	@ prephitmp.6777, <variable>.CurrSPS.mb_adaptive_frame_field_flag,
	movne	r1, #1	@ prephitmp.6777
	b	.L2502	@
.L2537:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L2463	@,
	movw	r3, #52800	@ tmp231,
	cmp	r8, #0	@ D.41507,
	ldr	r1, [r4, r3]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	ip, r1, #1	@ tmp234, <variable>.SeqCnt,
	str	ip, [r4, r3]	@ tmp234, <variable>.SeqCnt
	beq	.L2464	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2464	@,
.L2528:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41531,
	b	.L2465	@
.L2536:
	ldrb	lr, [r5, #24]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	lr, #0	@ <variable>.is_refreshed,
	beq	.L2461	@,
	b	.L2460	@
.L2540:
	ldrb	r0, [r6, #20]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	r0, #0	@ <variable>.is_refreshed,
	beq	.L2478	@,
	b	.L2477	@
.L2464:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L2528	@,
	movw	r7, #17548	@ tmp238,
	movw	r2, #17544	@ tmp235,
	ldr	r3, [r4, r7]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r1, #13606	@ tmp242,
	ldr	ip, [r4, r2]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	cmp	r8, #0	@ D.41507,
	add	lr, r3, #1	@ tmp239, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	add	r7, ip, #1	@ tmp236, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	mov	r2, lr, asl #4	@ tmp241, tmp239,
	rsb	r8, r0, #2	@ tmp244, <variable>.CurrSPS.frame_mbs_only_flag,
	mov	r7, r7, asl #4	@ ImageWidth, tmp236,
	mul	r8, r8, r2	@ ImageHeight, tmp244, tmp241
	beq	.L2467	@,
	movw	lr, #13560	@ tmp245,
	ldr	r0, [r4, lr]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	cmp	r0, #0	@ <variable>.CurWidthInMb,
	bne	.L2467	@,
	movw	r1, #17568	@ tmp247,
	ldr	r3, [r4, #0]	@ temp.6826, <variable>.pstExtraData
	ldr	ip, [r4, r1]	@ prephitmp.6788, <variable>.CurrSPS.dpb_size_plus1
	movw	r0, #51320	@ tmp248,
	str	ip, [r4, r0]	@ prephitmp.6788, <variable>.TotalPmvNum
	ldr	r1, [r3, #568]	@ prephitmp.6784, <variable>.stChanOption.s32MaxWidth
	cmp	r7, r1	@ ImageWidth, prephitmp.6784
	bhi	.L2528	@,
	ldr	r2, [r3, #572]	@ prephitmp.6918, <variable>.stChanOption.s32MaxHeight
	cmp	r8, r2	@ ImageHeight, prephitmp.6918
	bhi	.L2528	@,
	mov	lr, #26624	@ tmp249,
	ldr	sl, [r3, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	lr, [r4, lr]	@ <variable>.DPB.size, <variable>.DPB.size
	cmp	sl, lr	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.DPB.size
	bcc	.L2528	@,
	ldr	lr, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	cmp	lr, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	ip, #1	@ tmp254,
	streq	ip, [r4, r0]	@ tmp254, <variable>.TotalPmvNum
	ldreq	r2, [r3, #572]	@ prephitmp.6918, <variable>.stChanOption.s32MaxHeight
	mov	r0, r4	@, pH264Ctx
	ldreq	r1, [r3, #568]	@ prephitmp.6784, <variable>.stChanOption.s32MaxWidth
	add	r3, r4, #51200	@, pH264Ctx,
	add	r3, r3, #116	@,,
	str	ip, [sp, #0]	@ prephitmp.6788,
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	beq	.L2467	@,
	movw	r2, #13560	@ tmp257,
	add	ip, r2, #4	@ tmp259, tmp259,
	mov	r5, #0	@ tmp258,
	str	r5, [r4, r2]	@ tmp258, <variable>.CurWidthInMb
	str	r5, [r4, ip]	@ tmp258, <variable>.CurHeightInMb
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp258
	bl	ClearAll	@
	mvn	r0, #0	@ D.41531,
	b	.L2465	@
.L2467:
	movw	r0, #13560	@ tmp261,
	movw	sl, #13564	@ tmp263,
	mov	r7, r7, lsr #4	@ tmp262, ImageWidth,
	mov	r8, r8, lsr #4	@ tmp264, ImageHeight,
	str	r7, [r4, r0]	@ tmp262, <variable>.CurWidthInMb
	str	r8, [r4, sl]	@ tmp264, <variable>.CurHeightInMb
	b	.L2462	@
.L2535:
	movw	ip, #52840	@ tmp205,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r0, #1]	@ <variable>.is_used, <variable>.is_used
	ldr	r3, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r3, #4]	@ <variable>.is_used, <variable>.is_in_dpb
	b	.L2459	@
.L2472:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2474	@,
	b	.L2528	@
.L2485:
	movw	ip, #17568	@ tmp339,
	rsb	r1, r8, r6	@ tmp340, prephitmp.6849, prephitmp.6771
	ldr	lr, [r4, ip]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	add	r3, r1, sl	@ tmp341, tmp340, MaxFrameNum
	cmp	lr, r3	@ <variable>.CurrSPS.dpb_size_plus1, tmp341
	bcs	.L2483	@,
	b	.L2534	@
.L2538:
	movw	r2, #52892	@ tmp271,
	ldr	r3, [r4, r2]	@ <variable>.DSD_NeedClearQue, <variable>.DSD_NeedClearQue
	cmp	r3, #1	@ <variable>.DSD_NeedClearQue,
	bne	.L2474	@,
	b	.L2473	@
.L2458:
	bl	vfmw_dprint_nothing	@
	b	.L2459	@
.L2494:
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	ldreq	r6, [r4, r7]	@ prephitmp.6771, <variable>.CurrSlice.frame_num
	beq	.L2482	@,
	b	.L2528	@
.L2541:
	ldr	r0, [r7, #536]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2484	@,
	ldr	r3, [r7, #544]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r3, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2484	@,
	ldr	ip, [r7, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r1, ip, #1020	@ tmp329, <variable>.s32FastForwardBackwardSpeed,
	add	lr, r1, #3	@ tmp329, tmp329,
	cmp	lr, #2048	@ tmp329,
	bcs	.L2483	@,
	b	.L2484	@
.L2539:
	movw	r0, #13560	@ tmp287,
	movw	r2, #13564	@ tmp289,
	str	r7, [r4, r0]	@ ret.6831, <variable>.CurWidthInMb
	str	r7, [r4, r2]	@ ret.6831, <variable>.CurHeightInMb
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, ret.6831
	bl	ClearAll	@
	mvn	r0, #0	@ D.41531,
	b	.L2465	@
	.fnend
	.size	InitPic, .-InitPic
	.align	2
	.global	se_v
	.type	se_v, %function
se_v:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r4, r0, #13504	@ D.37883, pH264Ctx,
	add	r4, r4, #24	@ D.37883, D.37883,
	mov	r1, #32	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r0, r4	@, D.37883
	bl	BsShow	@
	mov	r7, r0	@ D.37884,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r6, r0	@ zeros,
	bhi	.L2545	@,
	mov	r6, r0, asl #1	@ tmp148, zeros,
	mov	r0, r4	@, D.37883
	add	r6, r6, #1	@ NumBits, tmp148,
	rsb	r3, r6, #32	@ tmp149, NumBits,
	mov	r7, r7, lsr r3	@ D.37891, D.37884,
	mov	r1, r6	@, NumBits
	tst	r7, #1	@ D.37891,
	mov	r7, r7, lsr #1	@ tmp, D.37891,
	rsbne	r7, r7, #0	@ INFO, tmp
	bl	BsSkip	@
.L2548:
	ldr	ip, [r5, #368]	@ D.37915, <variable>.pCurrNal
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r6, lr, r6	@ tmp156, <variable>.nal_bitoffset, NumBits
	str	r6, [ip, #64]	@ tmp156, <variable>.nal_bitoffset
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, INFO
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2545:
	cmp	r0, #31	@ zeros,
	bls	.L2552	@,
	movw	r1, #52780	@ tmp153,
	mov	r2, #1	@ tmp154,
	mvn	r7, #-2147483648	@ INFO,
	mov	r6, #32	@ NumBits,
	str	r2, [r5, r1]	@ tmp154, <variable>.SeErrFlg
	b	.L2548	@
.L2552:
	mov	r1, r6	@, zeros
	mov	r0, r4	@, D.37883
	bl	BsSkip	@
	mov	r1, r6	@, zeros
	mov	r0, r4	@, D.37883
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ INFO,
	mov	r0, r4	@, D.37883
	bl	BsGet	@
	tst	r0, #1	@,
	mov	r0, r6, asl #1	@ tmp152, zeros,
	rsbne	r7, r7, #0	@ INFO, INFO
	add	r6, r0, #1	@ NumBits, tmp152,
	b	.L2548	@
	.fnend
	.size	se_v, .-se_v
	.align	2
	.global	Scaling_List
	.type	Scaling_List, %function
Scaling_List:
	.fnstart
.LFB2021:
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
	ble	.L2560	@,
	ldr	fp, .L2590	@ tmp175,
	cmp	r4, #16	@ sizeOfScalingList,
	sub	r0, r4, #1	@ tmp180, sizeOfScalingList,
	mov	r9, #255	@ tmp179,
	and	r3, r0, #1	@, tmp180,
	str	r3, [sp, #4]	@, %sfp
	ldrneb	r6, [fp, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	beq	.L2587	@,
.L2575:
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
	add	r2, r7, r2	@ D.43270, scalingList, tmp205
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
	mov	r1, sl, asl #3	@ D.43272, tmp207,
	str	r8, [r5, r6, asl #2]	@ tmpscale,* scalingList_Org
	ldr	r0, [r2, #0]	@ tmp214,* D.43270
	and	ip, r8, #255	@ tmp209, tmpscale,
	mov	r6, #1	@ j,
	cmp	r4, r6	@ sizeOfScalingList, j
	bic	r0, r0, r9, asl r1	@ tmp215, tmp214, tmp179,
	mov	sl, r8	@ lastScale, tmpscale
	orr	r1, r0, ip, asl r1	@, tmp216, tmp215, tmp209,
	str	r1, [r2, #0]	@ tmp216,* D.43270
	ble	.L2560	@,
	ldr	r2, [sp, #4]	@, %sfp
	cmp	r2, #0	@,
	beq	.L2586	@,
	cmp	r4, #16	@ sizeOfScalingList,
	ldreq	r2, .L2590+4	@,
	ldrneb	sl, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	ldreqb	sl, [r2, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	cmp	r3, #0	@ nextScale,
	bne	.L2580	@,
.L2566:
	mov	r3, #0	@ nextScale,
.L2581:
	and	r2, sl, #252	@ tmp232, scanj,
	and	r1, sl, #3	@ tmp234, scanj,
	add	r2, r7, r2	@ D.43270, scalingList, tmp232
	str	r8, [r5, sl, asl #2]	@ tmpscale,* scalingList_Org
	mov	r1, r1, asl #3	@ D.43272, tmp234,
	add	r6, r6, #1	@ j, j,
	ldr	lr, [r2, #0]	@ tmp241,* D.43270
	and	ip, r8, #255	@ tmp236, tmpscale,
	cmp	r4, r6	@ sizeOfScalingList, j
	mov	sl, r8	@ lastScale, tmpscale
	bic	r0, lr, r9, asl r1	@ tmp242, tmp241, tmp179,
	orr	lr, r0, ip, asl r1	@, tmp243, tmp242, tmp236,
	str	lr, [r2, #0]	@ tmp243,* D.43270
	ble	.L2560	@,
.L2586:
	mov	r8, r5	@ scalingList_Org, scalingList_Org
.L2559:
	cmp	r4, #16	@ sizeOfScalingList,
	ldreq	r2, .L2590+4	@,
	ldrneb	r5, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	ldreqb	r5, [r2, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	cmp	r3, #0	@ nextScale,
	bne	.L2588	@,
.L2557:
	mov	r3, #0	@ nextScale,
.L2558:
	and	ip, r5, #3	@ tmp165, scanj,
	mov	lr, r5, lsr #2	@ tmp163, scanj,
	str	sl, [r8, r5, asl #2]	@ tmpscale,* scalingList_Org
	cmp	r4, #16	@ sizeOfScalingList,
	ldr	r2, [r7, lr, asl #2]	@ tmp172,* scalingList
	mov	r1, ip, asl #3	@ D.43272, tmp165,
	and	r0, sl, #255	@ tmp166, tmpscale,
	add	r6, r6, #1	@ tmp183, j,
	bic	ip, r2, r9, asl r1	@ tmp171, tmp172, tmp179,
	orr	r2, ip, r0, asl r1	@, tmp173, tmp171, tmp166,
	ldrneb	r5, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	str	r2, [r7, lr, asl #2]	@ tmp173,* scalingList
	beq	.L2589	@,
.L2582:
	cmp	r3, #0	@ nextScale,
	bne	.L2583	@,
.L2570:
	mov	r3, #0	@ nextScale,
.L2584:
	mov	r2, r5, lsr #2	@ tmp258, scanj,
	and	r1, r5, #3	@ tmp261, scanj,
	str	sl, [r8, r5, asl #2]	@ tmpscale,* scalingList_Org
	add	r6, r6, #1	@ j, tmp183,
	ldr	lr, [r7, r2, asl #2]	@ tmp268,* scalingList
	mov	r1, r1, asl #3	@ D.43272, tmp261,
	and	ip, sl, #255	@ tmp263, tmpscale,
	cmp	r4, r6	@ sizeOfScalingList, j
	bic	r0, lr, r9, asl r1	@ tmp269, tmp268, tmp179,
	orr	lr, r0, ip, asl r1	@, tmp270, tmp269, tmp263,
	str	lr, [r7, r2, asl #2]	@ tmp270,* scalingList
	bgt	.L2559	@,
.L2560:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2583:
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
	beq	.L2570	@,
	mov	sl, r3	@ tmpscale, nextScale
	b	.L2584	@
.L2588:
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
	bne	.L2558	@,
	b	.L2557	@
.L2589:
	ldr	r0, .L2590+4	@,
	ldrb	r5, [r0, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2582	@
.L2580:
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
	beq	.L2566	@,
	mov	r8, r3	@ tmpscale, nextScale
	b	.L2581	@
.L2587:
	ldr	sl, .L2590+4	@,
	ldrb	r6, [sl, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2575	@
.L2591:
	.align	2
.L2590:
	.word	.LANCHOR0+152
	.word	.LANCHOR0+136
	.fnend
	.size	Scaling_List, .-Scaling_List
	.align	2
	.global	ue_v
	.type	ue_v, %function
ue_v:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r4, r0, #13504	@ D.37850, pH264Ctx,
	add	r4, r4, #24	@ D.37850, D.37850,
	mov	r1, #32	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r0, r4	@, D.37850
	bl	BsShow	@
	mov	r7, r0	@ D.37851,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r6, r0	@ zeros,
	bls	.L2597	@,
	cmp	r0, #31	@ zeros,
	bls	.L2598	@,
	movw	r1, #52780	@ tmp150,
	mvn	r7, #0	@ INFO,
	mov	r6, #32	@ NumBits,
	mov	r2, #1	@ tmp151,
	str	r2, [r5, r1]	@ tmp151, <variable>.SeErrFlg
.L2594:
	ldr	ip, [r5, #368]	@ D.37869, <variable>.pCurrNal
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r6, lr, r6	@ tmp153, <variable>.nal_bitoffset, NumBits
	str	r6, [ip, #64]	@ tmp153, <variable>.nal_bitoffset
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, INFO
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2597:
	mov	r6, r0, asl #1	@ tmp146, zeros,
	mov	r0, r4	@, D.37850
	add	r6, r6, #1	@ NumBits, tmp146,
	rsb	r3, r6, #32	@ tmp147, NumBits,
	mov	r7, r7, lsr r3	@ tmp148, D.37851,
	mov	r1, r6	@, NumBits
	sub	r7, r7, #1	@ INFO, tmp148,
	bl	BsSkip	@
	b	.L2594	@
.L2598:
	add	r7, r0, #1	@ D.37865, zeros,
	mov	r1, r0	@, zeros
	mov	r0, r4	@, D.37850
	bl	BsSkip	@
	mov	r1, r7	@, D.37865
	mov	r0, r4	@, D.37850
	bl	BsShow	@
	mov	r1, r7	@, D.37865
	sub	r7, r0, #1	@ INFO,,
	mov	r0, r4	@, D.37850
	bl	BsSkip	@
	mov	r0, r6, asl #1	@ tmp149, zeros,
	add	r6, r0, #1	@ NumBits, tmp149,
	b	.L2594	@
	.fnend
	.size	ue_v, .-ue_v
	.align	2
	.global	H264_DecFramePackingSEI
	.type	H264_DecFramePackingSEI, %function
H264_DecFramePackingSEI:
	.fnstart
.LFB2032:
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
	uxtb	r0, r0	@ D.44476,
	strb	r0, [r4, r3]	@ D.44476, <variable>.FramePackSEI.frame_packing_arrangement_cancel_flag
	cmp	r0, #0	@ D.44476,
	beq	.L2603	@,
.L2600:
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
.L2603:
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
	bne	.L2601	@,
	ldr	lr, [r4, r6]	@ <variable>.FramePackSEI.frame_packing_arrangement_type, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	lr, #5	@ <variable>.FramePackSEI.frame_packing_arrangement_type,
	beq	.L2601	@,
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
.L2601:
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
	b	.L2600	@
	.fnend
	.size	H264_DecFramePackingSEI, .-H264_DecFramePackingSEI
	.align	2
	.global	H264_DecSEI
	.type	H264_DecSEI, %function
H264_DecSEI:
	.fnstart
.LFB2034:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r8, r0, #13504	@ D.44715, pH264Ctx,
	ldr	r2, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r9, sp, #40	@ tmp904,,
	mov	r0, #0	@ tmp244,
	add	r8, r8, #24	@ D.44715, D.44715,
	mov	sl, r0	@ payloadType, tmp244
	movw	r6, #13552	@ tmp995,
	movw	r5, #13544	@ tmp996,
	strb	r0, [r9, #-1]!	@ tmp244, byte_tmp
	mov	r3, #32	@ tmp247,
	str	r3, [r2, #24]	@ tmp247, <variable>.bitsoffset
.L2608:
	mov	r1, r9	@, tmp904
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r7, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r5]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r7, #8	@ tmp251, <variable>.BS.TotalPos,
	ldrb	r7, [sp, #39]	@ zero_extendqisi2	@ byte_tmp.825, byte_tmp
	cmp	ip, r1, asl #3	@ tmp251, <variable>.BS.BsLen,
	mov	fp, r0	@ ret,
	ble	.L3100	@,
.L3098:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.44719,
.L2610:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3100:
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret,
	add	sl, sl, r7	@ payloadType, payloadType, byte_tmp.825
	ble	.L3098	@,
	ldrb	fp, [sp, #39]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	fp, #255	@ byte_tmp,
	beq	.L2608	@,
	mov	r6, #0	@,
	movw	r5, #:lower16:g_event_report	@,
	str	r6, [sp, #24]	@, %sfp
	movt	r5, #:upper16:g_event_report	@,
	movw	r6, #13544	@ tmp987,
	str	r5, [sp, #20]	@, %sfp
	movw	r5, #13552	@ tmp986,
.L2784:
	mov	r7, #0	@ payloadSize,
.L2614:
	mov	r1, r9	@, tmp904
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldrb	r3, [sp, #39]	@ zero_extendqisi2	@ byte_tmp.7178, byte_tmp
	add	r2, r1, #8	@ tmp259, <variable>.BS.TotalPos,
	add	r7, r7, r3	@ payloadSize, payloadSize, byte_tmp.7178
	mov	fp, r0	@ ret.7177,
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	cmp	r2, r0, asl #3	@ tmp259, <variable>.BS.BsLen,
	ble	.L3101	@,
.L2613:
	mov	r3, #1	@ prephitmp.7078,
.L2615:
	cmp	r7, #409600	@ payloadSize,
	orrgt	r3, r3, #1	@,, tmp269, prephitmp.7078
	cmp	r3, #0	@ tmp269,
	bne	.L3098	@,
	cmp	sl, #45	@ payloadType,
	ldrls	pc, [pc, sl, asl #2]	@ payloadType
	b	.L2617	@
.L2641:
	.word	.L2618
	.word	.L2619
	.word	.L2620
	.word	.L2621
	.word	.L2622
	.word	.L2623
	.word	.L2624
	.word	.L2625
	.word	.L2626
	.word	.L2627
	.word	.L2628
	.word	.L2629
	.word	.L2630
	.word	.L2631
	.word	.L2632
	.word	.L2633
	.word	.L2634
	.word	.L2635
	.word	.L2636
	.word	.L2637
	.word	.L2638
	.word	.L2639
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2617
	.word	.L2640
.L3101:
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret.7177,
	ble	.L2613	@,
	ldrb	lr, [sp, #39]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	lr, #255	@ byte_tmp,
	beq	.L2614	@,
	mov	r3, #0	@ prephitmp.7078,
	b	.L2615	@
.L2640:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	ldr	sl, [r4, r5]	@ bitpos.7383, <variable>.BS.TotalPos
	bl	H264_DecFramePackingSEI	@
	ldr	r3, [r4, r5]	@ prephitmp.7082, <variable>.BS.TotalPos
	mov	r2, r7, asl #3	@ temp.7385, payloadSize,
	rsb	sl, sl, r3	@ bitpos.7384, bitpos.7383, prephitmp.7082
	cmp	sl, r2	@ bitpos.7384, temp.7385
	blt	.L3102	@,
.L2767:
	mov	r1, r7	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2772	@,
.L2979:
	movw	r0, #51344	@ tmp895,
	ldr	r3, [r4, r0]	@ prephitmp.7080, <variable>.TotalUsrDatNum
.L2644:
	cmp	r3, #3	@ prephitmp.7080,
	bhi	.L3098	@,
	mov	sl, #0	@ payloadType,
.L2782:
	mov	r1, r9	@, tmp904
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r7, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r7, #8	@ tmp898, <variable>.BS.TotalPos,
	ldrb	r7, [sp, #39]	@ zero_extendqisi2	@ byte_tmp.7402, byte_tmp
	cmp	ip, r1, asl #3	@ tmp898, <variable>.BS.BsLen,
	mov	fp, r0	@ ret.7401,
	ble	.L3103	@,
.L2781:
	mov	r0, #0	@ D.44719,
	b	.L2610	@
.L2639:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3104	@,
.L2762:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp841, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp841, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7382,
	bne	.L2765	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7382,
	cmp	r7, fp	@ payloadSize, i.7382
	bgt	.L3092	@,
	b	.L2979	@
.L2765:
	add	sl, fp, #1	@ tmp1094, i.7382,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7382, tmp1094,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1094
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp848, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp848, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3092:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1419, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1419, <variable>.BS.BsLen,
	ble	.L2765	@,
	b	.L2979	@
.L2638:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3105	@,
.L2757:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp825, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp825, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7375,
	bne	.L2760	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7375,
	cmp	r7, fp	@ payloadSize, i.7375
	bgt	.L3090	@,
	b	.L2979	@
.L2760:
	add	sl, fp, #1	@ tmp1090, i.7375,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7375, tmp1090,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1090
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp832, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp832, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3090:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1407, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1407, <variable>.BS.BsLen,
	ble	.L2760	@,
	b	.L2979	@
.L2637:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3106	@,
.L2752:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp809, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp809, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7368,
	bne	.L2755	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7368,
	cmp	r7, fp	@ payloadSize, i.7368
	bgt	.L3088	@,
	b	.L2979	@
.L2755:
	add	sl, fp, #1	@ tmp1086, i.7368,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7368, tmp1086,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1086
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp816, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp816, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3088:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1395, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1395, <variable>.BS.BsLen,
	ble	.L2755	@,
	b	.L2979	@
.L2636:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3107	@,
.L2747:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp793, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp793, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7361,
	bne	.L2750	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7361,
	cmp	r7, fp	@ payloadSize, i.7361
	bgt	.L3086	@,
	b	.L2979	@
.L2750:
	add	sl, fp, #1	@ tmp1082, i.7361,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7361, tmp1082,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1082
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp800, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp800, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3086:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1383, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1383, <variable>.BS.BsLen,
	ble	.L2750	@,
	b	.L2979	@
.L2634:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3108	@,
.L2737:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp761, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp761, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7347,
	bne	.L2740	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7347,
	cmp	r7, fp	@ payloadSize, i.7347
	bgt	.L3082	@,
	b	.L2979	@
.L2740:
	add	sl, fp, #1	@ tmp1074, i.7347,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7347, tmp1074,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1074
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp768, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp768, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3082:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1359, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1359, <variable>.BS.BsLen,
	ble	.L2740	@,
	b	.L2979	@
.L2635:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3109	@,
.L2742:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp777, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp777, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7354,
	bne	.L2745	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7354,
	cmp	r7, fp	@ payloadSize, i.7354
	bgt	.L3084	@,
	b	.L2979	@
.L2745:
	add	sl, fp, #1	@ tmp1078, i.7354,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7354, tmp1078,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1078
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp784, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp784, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3084:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1371, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1371, <variable>.BS.BsLen,
	ble	.L2745	@,
	b	.L2979	@
.L2633:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3110	@,
.L2732:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp745, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp745, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7340,
	bne	.L2735	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7340,
	cmp	r7, fp	@ payloadSize, i.7340
	bgt	.L3080	@,
	b	.L2979	@
.L2735:
	add	sl, fp, #1	@ tmp1070, i.7340,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7340, tmp1070,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1070
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp752, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp752, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3080:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1347, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1347, <variable>.BS.BsLen,
	ble	.L2735	@,
	b	.L2979	@
.L2632:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3111	@,
.L2727:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp729, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp729, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7333,
	bne	.L2730	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7333,
	cmp	r7, fp	@ payloadSize, i.7333
	bgt	.L3078	@,
	b	.L2979	@
.L2730:
	add	sl, fp, #1	@ tmp1066, i.7333,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7333, tmp1066,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1066
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp736, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp736, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3078:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1335, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1335, <variable>.BS.BsLen,
	ble	.L2730	@,
	b	.L2979	@
.L2624:
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ payloadSize,
	ble	.L2767	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp602, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp602, <variable>.BS.BsLen,
	bgt	.L2767	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i,
	bne	.L2689	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i,
	cmp	r7, fp	@ payloadSize, i
	bgt	.L3062	@,
	b	.L2767	@
.L2689:
	add	sl, fp, #1	@ tmp1034, i,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i, tmp1034,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1034
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2767	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp608, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp608, <variable>.BS.BsLen,
	bgt	.L2767	@,
	bl	BsSkip	@
.L3062:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1239, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1239, <variable>.BS.BsLen,
	ble	.L2689	@,
	b	.L2767	@
.L2628:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3112	@,
.L2707:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp665, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp665, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7305,
	bne	.L2710	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7305,
	cmp	r7, fp	@ payloadSize, i.7305
	bgt	.L3070	@,
	b	.L2979	@
.L2710:
	add	sl, fp, #1	@ tmp1050, i.7305,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7305, tmp1050,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1050
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp672, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp672, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3070:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1287, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1287, <variable>.BS.BsLen,
	ble	.L2710	@,
	b	.L2979	@
.L2627:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3113	@,
.L2702:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp649, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp649, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7298,
	bne	.L2705	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7298,
	cmp	r7, fp	@ payloadSize, i.7298
	bgt	.L3068	@,
	b	.L2979	@
.L2705:
	add	sl, fp, #1	@ tmp1046, i.7298,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7298, tmp1046,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1046
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp656, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp656, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3068:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1275, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1275, <variable>.BS.BsLen,
	ble	.L2705	@,
	b	.L2979	@
.L2620:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3114	@,
.L2654:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r3, lr, #8	@ tmp316, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp316, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7203,
	bne	.L2657	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7203,
	cmp	fp, r7	@ i.7203, payloadSize
	blt	.L3056	@,
	b	.L2979	@
.L2657:
	add	sl, fp, #1	@ tmp1013, i.7203,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7203, tmp1013,
	bl	BsSkip	@
	cmp	sl, r7	@ tmp1013, payloadSize
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bge	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp320, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp320, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3056:
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r1, #8	@ tmp1192, <variable>.BS.TotalPos,
	cmp	r3, r0, asl #3	@ tmp1192, <variable>.BS.BsLen,
	ble	.L2657	@,
	b	.L2979	@
.L2630:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3115	@,
.L2717:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp697, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp697, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7319,
	bne	.L2720	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7319,
	cmp	r7, fp	@ payloadSize, i.7319
	bgt	.L3074	@,
	b	.L2979	@
.L2720:
	add	sl, fp, #1	@ tmp1058, i.7319,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7319, tmp1058,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1058
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp704, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp704, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3074:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1311, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1311, <variable>.BS.BsLen,
	ble	.L2720	@,
	b	.L2979	@
.L2621:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3116	@,
.L2659:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, lr, #8	@ tmp332, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp332, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7210,
	bne	.L2662	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7210,
	cmp	fp, r7	@ i.7210, payloadSize
	blt	.L3058	@,
	b	.L2979	@
.L2662:
	add	sl, fp, #1	@ tmp1017, i.7210,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7210, tmp1017,
	bl	BsSkip	@
	cmp	sl, r7	@ tmp1017, payloadSize
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bge	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp336, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp336, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3058:
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r2, #8	@ tmp1204, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp1204, <variable>.BS.BsLen,
	ble	.L2662	@,
	b	.L2979	@
.L2626:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3117	@,
.L2697:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp633, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp633, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7291,
	bne	.L2700	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7291,
	cmp	r7, fp	@ payloadSize, i.7291
	bgt	.L3066	@,
	b	.L2979	@
.L2700:
	add	sl, fp, #1	@ tmp1042, i.7291,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7291, tmp1042,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1042
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp640, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp640, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3066:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1263, <variable>.BS.TotalPos,
	cmp	r0, r2, asl #3	@ tmp1263, <variable>.BS.BsLen,
	ble	.L2700	@,
	b	.L2979	@
.L2618:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3118	@,
.L2642:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r0, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r0, #8	@ tmp272, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp272, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7189,
	bne	.L2646	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7189,
	cmp	fp, r7	@ i.7189, payloadSize
	blt	.L3052	@,
	b	.L2979	@
.L2646:
	add	sl, fp, #1	@ tmp1005, i.7189,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7189, tmp1005,
	bl	BsSkip	@
	cmp	sl, r7	@ tmp1005, payloadSize
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bge	.L2979	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, ip, #8	@ tmp279, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp279, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3052:
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, ip, #8	@ tmp1172, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1172, <variable>.BS.BsLen,
	ble	.L2646	@,
	b	.L2979	@
.L2631:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3119	@,
.L2722:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp713, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp713, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7326,
	bne	.L2725	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7326,
	cmp	r7, fp	@ payloadSize, i.7326
	bgt	.L3076	@,
	b	.L2979	@
.L2725:
	add	sl, fp, #1	@ tmp1062, i.7326,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7326, tmp1062,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1062
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp720, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp720, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3076:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1323, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1323, <variable>.BS.BsLen,
	ble	.L2725	@,
	b	.L2979	@
.L2623:
	ldr	fp, [sp, #24]	@, %sfp
	cmp	fp, #0	@,
	bne	.L2622	@,
	movw	fp, #51344	@ tmp344,
	bl	vfmw_dprint_nothing	@
	ldr	sl, [r4, fp]	@ prephitmp.7086, <variable>.TotalUsrDatNum
	cmp	sl, #3	@ prephitmp.7086,
	bhi	.L3120	@,
.L2666:
	movw	lr, #52840	@ tmp371,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r2, #51344	@ tmp381,
	ldr	r1, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	ip, sl, #12800	@ tmp373, prephitmp.7086,
	add	sl, ip, #36	@ tmp373, tmp373,
	add	r3, r1, #12800	@ tmp379, <variable>.TotalUsrDatNum,
	add	r2, r3, #36	@ tmp379, tmp379,
	add	sl, r4, sl, asl #2	@, tmp377, pH264Ctx, tmp373,
	add	ip, r4, r2, asl #2	@, tmp385, pH264Ctx, tmp379,
	str	r0, [sl, #4]	@, <variable>.pUsrDatArray
	ldr	r1, [ip, #4]	@ prephitmp.7092, <variable>.pUsrDatArray
	cmp	r1, #0	@ prephitmp.7092,
	beq	.L2667	@,
	ldr	ip, [r4, #368]	@ temp.7215, <variable>.pCurrNal
	cmp	r7, #1024	@ payloadSize,
	movlt	fp, r7	@ D.44780, payloadSize
	movge	fp, #1024	@ D.44780,
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ segment_idx, <variable>.nal_used_segment
	ldr	r2, [ip, #68]	@ D.44734, <variable>.nal_segment
	cmp	r3, r2	@ segment_idx, D.44734
	movcs	ip, #0	@ prephitmp.7088,
	movcs	r3, ip	@ lenth_not_parse.7217, prephitmp.7088
	bcs	.L2669	@,
	rsb	lr, r3, r3, asl #3	@, tmp389, segment_idx, segment_idx,
	add	r0, r3, #1	@ segment_idx, segment_idx,
	mvn	r3, r3	@ tmp1027, segment_idx
	add	sl, r3, r2	@ tmp1026, tmp1027, D.44734
	add	ip, ip, lr, asl #2	@, tmp391, temp.7215, tmp389,
	and	lr, sl, #1	@, tmp1026,
	add	ip, ip, #8	@ tmp392, tmp391,
	str	lr, [sp, #16]	@, %sfp
	cmp	r0, r2	@ segment_idx, D.44734
	add	lr, ip, #32	@ ivtmp.7133, tmp392,
	ldr	sl, [ip, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r3, sl, #7	@ tmp393, <variable>.bitsoffset,
	ldr	sl, [ip, #4]	@, <variable>.bitstream_length
	sub	r3, sl, r3, lsr #3	@ lenth_not_parse.7217,, tmp393,
	beq	.L2953	@,
	ldr	sl, [sp, #16]	@, %sfp
	cmp	sl, #0	@,
	beq	.L3033	@,
	ldr	lr, [lr, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r0, r0, #1	@ segment_idx, segment_idx,
	ldr	sl, [ip, #32]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r0, r2	@ segment_idx, D.44734
	add	lr, lr, #7	@, <variable>.bitsoffset,
	str	lr, [sp, #16]	@, %sfp
	add	lr, ip, #60	@ ivtmp.7133, tmp392,
	ldr	ip, [sp, #16]	@, %sfp
	sub	sl, sl, ip, lsr #3	@ tmp1230, <variable>.bitstream_length,,
	add	r3, r3, sl	@ lenth_not_parse.7217, lenth_not_parse.7217, tmp1230
	beq	.L2953	@,
.L3033:
	str	r1, [sp, #4]	@ prephitmp.7092, %sfp
.L2670:
	ldr	r1, [lr, #12]	@, <variable>.bitsoffset
	mov	ip, lr	@ tmp1029, ivtmp.7133
	ldr	sl, [ip], #28	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r0, r0, #2	@ segment_idx, segment_idx,
	add	r1, r1, #7	@,,
	str	r1, [sp, #16]	@, %sfp
	ldr	r1, [lr, #28]	@, <variable>.bitstream_length
	cmp	r0, r2	@ segment_idx, D.44734
	add	lr, lr, #56	@ ivtmp.7133, ivtmp.7133,
	str	r1, [sp, #28]	@, %sfp
	ldr	r1, [sp, #16]	@, %sfp
	ldr	ip, [ip, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	sub	sl, sl, r1, lsr #3	@ tmp1110, <variable>.bitstream_length,,
	add	ip, ip, #7	@ tmp1115, <variable>.bitsoffset,
	add	r1, r3, sl	@ lenth_not_parse.7217, lenth_not_parse.7217, tmp1110
	ldr	sl, [sp, #28]	@, %sfp
	sub	ip, sl, ip, lsr #3	@ tmp1118,, tmp1115,
	add	r3, r1, ip	@ lenth_not_parse.7217, lenth_not_parse.7217, tmp1118
	bne	.L2670	@,
	ldr	r1, [sp, #4]	@ prephitmp.7092, %sfp
.L2953:
	mov	ip, r3	@ prephitmp.7088, lenth_not_parse.7217
.L2669:
	ldr	r0, [sp, #24]	@, %sfp
	cmp	fp, ip	@ D.44780, prephitmp.7088
	movle	ip, fp	@ min_len_tmp, D.44780
	movgt	ip, r3	@ min_len_tmp, lenth_not_parse.7217
	sxtb	r2, r0	@ registered_flag,
	cmp	r2, #1	@ registered_flag,
	movne	sl, #0	@ prephitmp.7093,
	strne	sl, [sp, #16]	@ prephitmp.7093, %sfp
	beq	.L3121	@,
.L2678:
	rsb	r2, sl, ip	@, prephitmp.7093, min_len_tmp
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	subs	sl, r0, #0	@ ret.7236,
	ble	.L3122	@,
	ldr	lr, [sp, #16]	@, %sfp
	rsb	r0, lr, fp	@ tmp512,, D.44780
	cmp	sl, r0	@ ret.7236, tmp512
	blt	.L3123	@,
	movw	sl, #51344	@ tmp530,
	ldr	r1, [sp, #16]	@, %sfp
	ldr	ip, [r4, sl]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	fp, r7	@ D.44780, payloadSize
	rsb	sl, r1, r7	@ D.44831,, payloadSize
	add	r2, ip, #12800	@ tmp528, <variable>.TotalUsrDatNum,
	add	lr, r2, #36	@ tmp528, tmp528,
	add	r3, r4, lr, asl #2	@, tmp535, pH264Ctx, tmp528,
	ldr	r0, [r3, #4]	@ tmp532, <variable>.pUsrDatArray
	str	sl, [r0, #1048]	@ D.44831, <variable>.data_size
	bcc	.L3124	@,
.L2684:
	cmp	sl, #0	@ D.44831,
	ble	.L2682	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r7, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp539, <variable>.BS.TotalPos,
	cmp	r0, r7, asl #3	@ tmp539, <variable>.BS.BsLen,
	bgt	.L2682	@,
	tst	sl, #1	@ D.44831,
	mov	fp, #0	@ i.7256,
	bne	.L2685	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7256,
	cmp	sl, fp	@ D.44831, i.7256
	bgt	.L3060	@,
	b	.L2682	@
.L2685:
	add	r7, fp, #1	@ tmp1025, i.7256,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, r7, #1	@ i.7256, tmp1025,
	bl	BsSkip	@
	cmp	sl, r7	@ D.44831, tmp1025
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2682	@,
	ldr	ip, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, ip, #8	@ tmp545, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp545, <variable>.BS.BsLen,
	bgt	.L2682	@,
	bl	BsSkip	@
.L3060:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1222, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1222, <variable>.BS.BsLen,
	ble	.L2685	@,
.L2682:
	movw	r7, #51344	@ tmp552,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r4, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, r0, #12800	@ tmp550, <variable>.TotalUsrDatNum,
	ldrd	r0, [r2, #56]	@ <variable>.pts, <variable>.pstExtraData,
	add	ip, r3, #36	@ tmp550, tmp550,
	mov	r3, #1056	@ tmp559,
	add	lr, r4, ip, asl #2	@, tmp557, pH264Ctx, tmp550,
	ldr	r2, [lr, #4]	@ tmp554, <variable>.pUsrDatArray
	strd	r0, [r2, r3]	@ <variable>.pts, tmp554, tmp559
	ldr	ip, [r4, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	lr, ip, #12800	@ tmp562, <variable>.TotalUsrDatNum,
	add	r2, lr, #36	@ tmp562, tmp562,
	mov	lr, #8	@ tmp571,
	add	r3, r4, r2, asl #2	@, tmp569, pH264Ctx, tmp562,
	movw	r2, #52800	@ tmp581,
	ldr	ip, [r3, #4]	@ tmp566, <variable>.pUsrDatArray
	str	lr, [ip, #1036]	@ tmp571, <variable>.from
	ldr	r3, [r4, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	lr, [r4, r2]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	ip, r3, #12800	@ tmp572, <variable>.TotalUsrDatNum,
	add	r3, ip, #36	@ tmp572, tmp572,
	add	ip, r4, r3, asl #2	@, tmp579, pH264Ctx, tmp572,
	ldr	r3, [ip, #4]	@ tmp576, <variable>.pUsrDatArray
	str	lr, [r3, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r3, [r1, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L3097	@,
	ldr	lr, [r4, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r2, sp, #40	@ tmp598,,
	movw	r0, #52840	@ tmp596,
	mov	r1, #6	@,
	add	ip, lr, #12800	@ tmp586, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	add	lr, ip, #36	@ tmp586, tmp586,
	add	ip, r4, lr, asl #2	@, tmp592, pH264Ctx, tmp586,
	ldr	lr, [ip, #4]	@ tmp594, <variable>.pUsrDatArray
	str	lr, [r2, #-8]!	@ tmp594, para
	blx	r3	@ g_event_report
.L3097:
	ldr	r3, [r4, r7]	@ prephitmp.7080, <variable>.TotalUsrDatNum
	b	.L2644	@
.L2625:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3125	@,
.L2692:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp617, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp617, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7284,
	bne	.L2695	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7284,
	cmp	r7, fp	@ payloadSize, i.7284
	bgt	.L3064	@,
	b	.L2979	@
.L2695:
	add	sl, fp, #1	@ tmp1038, i.7284,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7284, tmp1038,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1038
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp624, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp624, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3064:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1251, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1251, <variable>.BS.BsLen,
	ble	.L2695	@,
	b	.L2979	@
.L2619:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	ldr	sl, [r4, r5]	@ bitpos, <variable>.BS.TotalPos
	bl	H264_DecPicTimingSEI	@
	ldr	r3, [r4, r5]	@ prephitmp.7097, <variable>.BS.TotalPos
	mov	r2, r7, asl #3	@ D.44746, payloadSize,
	rsb	sl, sl, r3	@ bitpos.7190, bitpos, prephitmp.7097
	cmp	sl, r2	@ bitpos.7190, D.44746
	bge	.L2767	@,
	rsb	r2, sl, r2	@, bitpos.7190, D.44746
	str	r2, [sp, #28]	@, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	add	r1, r2, #7	@ tmp289,,
	cmp	r0, #0	@,
	movge	r1, r0	@ D.44750,
	mov	r2, r1, asr #3	@, D.44750,
	str	r2, [sp, #16]	@, %sfp
	cmp	r2, #0	@,
	ldrle	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	movle	r2, r2, asl #3	@ prephitmp.7099, <variable>.BS.BsLen,
	ble	.L2650	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp295, prephitmp.7097,
	mov	r2, ip, asl #3	@ prephitmp.7099, <variable>.BS.BsLen,
	cmp	r2, lr	@ prephitmp.7099, tmp295
	blt	.L2650	@,
	ldr	fp, [sp, #16]	@, %sfp
	tst	fp, #1	@,
	mov	fp, #0	@ i.7193,
	beq	.L3126	@,
.L2651:
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	bl	BsSkip	@
	ldr	r3, [sp, #16]	@, %sfp
	add	sl, fp, #1	@ tmp1009, i.7193,
	mov	r0, r8	@, D.44715
	cmp	r3, sl	@, tmp1009
	add	fp, sl, #1	@ i.7193, tmp1009,
	mov	r1, #8	@,
	ble	.L2983	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7097, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.7099, <variable>.BS.BsLen,
	add	sl, r3, #8	@ tmp299, prephitmp.7097,
	cmp	sl, r2	@ tmp299, prephitmp.7099
	bgt	.L2650	@,
	bl	BsSkip	@
.L3054:
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7097, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.7099, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp1183, prephitmp.7097,
	cmp	lr, r2	@ tmp1183, prephitmp.7099
	ble	.L2651	@,
.L2650:
	ldr	sl, [sp, #28]	@, %sfp
	mov	r1, sl, asr #31	@ tmp303,,
	mov	lr, r1, lsr #29	@ tmp304, tmp303,
	add	r0, sl, lr	@ tmp305,, tmp304
	and	ip, r0, #7	@ tmp306, tmp305,
	rsb	r1, lr, ip	@ tmp307, tmp304, tmp306
	add	r0, r3, r1	@ tmp308, prephitmp.7097, tmp307
	cmp	r0, r2	@ tmp308, prephitmp.7099
	bgt	.L2767	@,
.L3099:
	mov	r0, r8	@, D.44715
	bl	BsSkip	@
	b	.L2767	@
.L2629:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3127	@,
.L2712:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	r2, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp681, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp681, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7312,
	bne	.L2715	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7312,
	cmp	r7, fp	@ payloadSize, i.7312
	bgt	.L3072	@,
	b	.L2979	@
.L2715:
	add	sl, fp, #1	@ tmp1054, i.7312,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7312, tmp1054,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1054
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp688, <variable>.BS.TotalPos,
	cmp	lr, ip, asl #3	@ tmp688, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3072:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, lr, #8	@ tmp1299, <variable>.BS.TotalPos,
	cmp	ip, r1, asl #3	@ tmp1299, <variable>.BS.BsLen,
	ble	.L2715	@,
	b	.L2979	@
.L2617:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r7	@, payloadSize
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L3128	@,
.L2773:
	cmp	r7, #0	@ payloadSize,
	ble	.L2979	@,
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp882, <variable>.BS.TotalPos,
	cmp	r3, r1, asl #3	@ tmp882, <variable>.BS.BsLen,
	bgt	.L2979	@,
	tst	r7, #1	@ payloadSize,
	mov	fp, #0	@ i.7400,
	bne	.L2776	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7400,
	cmp	r7, fp	@ payloadSize, i.7400
	bgt	.L3096	@,
	b	.L2979	@
.L2776:
	add	sl, fp, #1	@ tmp1001, i.7400,
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	add	fp, sl, #1	@ i.7400, tmp1001,
	bl	BsSkip	@
	cmp	r7, sl	@ payloadSize, tmp1001
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	ble	.L2979	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp889, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp889, <variable>.BS.BsLen,
	bgt	.L2979	@,
	bl	BsSkip	@
.L3096:
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp1160, <variable>.BS.TotalPos,
	cmp	r2, lr, asl #3	@ tmp1160, <variable>.BS.BsLen,
	ble	.L2776	@,
	b	.L2979	@
.L3103:
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret.7401,
	add	sl, sl, r7	@ payloadType, payloadType, byte_tmp.7402
	ble	.L2781	@,
	ldrb	r3, [sp, #39]	@ zero_extendqisi2	@ byte_tmp.7408, byte_tmp
	cmp	r3, #255	@ byte_tmp.7408,
	beq	.L2782	@,
	cmp	r3, #128	@ byte_tmp.7408,
	bne	.L2784	@,
	mov	r0, #0	@ D.44719,
	b	.L2610	@
.L2622:
	bl	vfmw_dprint_nothing	@
	mov	sl, #1	@,
	movw	fp, #51344	@ tmp344,
	str	sl, [sp, #24]	@, %sfp
	ldr	sl, [r4, fp]	@ prephitmp.7086, <variable>.TotalUsrDatNum
	cmp	sl, #3	@ prephitmp.7086,
	bls	.L2666	@,
.L3120:
	movw	lr, #51348	@ tmp347,
	movw	r1, #52840	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	movw	sl, #51356	@,
	ldr	r1, [r4, lr]	@, <variable>.pUsrDatArray
	str	lr, [sp, #8]	@,
	bl	FreeUsdByDec	@
	movw	r2, #51352	@,
	movw	r3, #52840	@,
	ldr	r1, [r4, r2]	@, <variable>.pUsrDatArray
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	ip, #52840	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.pUsrDatArray
	mov	sl, #0	@ prephitmp.7086,
	bl	FreeUsdByDec	@
	movw	r1, #52840	@,
	movw	r3, #51360	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r2, [sp, #8]	@,
	movw	ip, #51352	@,
	movw	r1, #51356	@,
	movw	r0, #51360	@,
	str	sl, [r4, fp]	@ prephitmp.7086, <variable>.TotalUsrDatNum
	str	sl, [r4, r2]	@ prephitmp.7086, <variable>.pUsrDatArray
	str	sl, [r4, ip]	@ prephitmp.7086, <variable>.pUsrDatArray
	str	sl, [r4, r1]	@ prephitmp.7086, <variable>.pUsrDatArray
	str	sl, [r4, r0]	@ prephitmp.7086, <variable>.pUsrDatArray
	b	.L2666	@
.L3123:
	movw	r2, #51344	@ tmp515,
	sub	fp, sl, #1	@ tmp1018, ret.7236,
	ldr	r7, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	and	fp, fp, #1	@ tmp1020, tmp1018,
	add	lr, r7, #12800	@ tmp513, <variable>.TotalUsrDatNum,
	add	r0, lr, #36	@ tmp513, tmp513,
	add	ip, r4, r0, asl #2	@, tmp520, pH264Ctx, tmp513,
	ldr	r1, [ip, #4]	@ tmp517, <variable>.pUsrDatArray
	str	sl, [r1, #1048]	@ ret.7236, <variable>.data_size
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r7, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp523, <variable>.BS.TotalPos,
	cmp	r2, r7, asl #3	@ tmp523, <variable>.BS.BsLen,
	bgt	.L2682	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r7, #1	@ i.7247,
	cmp	sl, r7	@ ret.7236, i.7247
	ble	.L2682	@,
	cmp	fp, #0	@ tmp1020,
	beq	.L2683	@,
	ldr	r3, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r7, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r0, r3, #8	@ tmp1210, <variable>.BS.TotalPos,
	cmp	r0, r7, asl #3	@ tmp1210, <variable>.BS.BsLen,
	bgt	.L2682	@,
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r7, #2	@ i.7247,
	cmp	sl, r7	@ ret.7236, i.7247
	bgt	.L2683	@,
	b	.L2682	@
.L3129:
	bl	BsSkip	@
	ldr	r1, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	mov	r0, r8	@, D.44715
	add	ip, r1, #8	@ tmp1129, <variable>.BS.TotalPos,
	mov	r1, #8	@,
	cmp	ip, r2, asl #3	@ tmp1129, <variable>.BS.BsLen,
	bgt	.L2682	@,
	bl	BsSkip	@
	cmp	sl, r7	@ ret.7236, i.7247
	ble	.L2682	@,
.L2683:
	ldr	lr, [r4, r5]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	mov	r1, #8	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r7, r7, #1	@ tmp1021, i.7247,
	add	r3, lr, r1	@ tmp1121, <variable>.BS.TotalPos,
	mov	r0, r8	@, D.44715
	add	r7, r7, #1	@ i.7247, tmp1021,
	cmp	r3, ip, asl #3	@ tmp1121, <variable>.BS.BsLen,
	ble	.L3129	@,
	b	.L2682	@
.L3102:
	rsb	r1, sl, r2	@, bitpos.7384, temp.7385
	str	r1, [sp, #28]	@, %sfp
	cmp	r1, #0	@,
	add	r0, r1, #7	@ tmp858,,
	movge	r0, r1	@ temp.7487,
	mov	r2, r0, asr #3	@, temp.7487,
	str	r2, [sp, #16]	@, %sfp
	cmp	r2, #0	@,
	ldrle	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	movle	r2, r2, asl #3	@ prephitmp.7084, <variable>.BS.BsLen,
	ble	.L2769	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp864, prephitmp.7082,
	mov	r2, r2, asl #3	@ prephitmp.7084, <variable>.BS.BsLen,
	cmp	ip, r2	@ tmp864, prephitmp.7084
	bgt	.L2769	@,
	ldr	fp, [sp, #16]	@, %sfp
	tst	fp, #1	@,
	mov	fp, #0	@ i.7389,
	beq	.L3130	@,
.L2770:
	mov	r1, #8	@,
	mov	r0, r8	@, D.44715
	bl	BsSkip	@
	ldr	r3, [sp, #16]	@, %sfp
	add	sl, fp, #1	@ tmp1098, i.7389,
	mov	r0, r8	@, D.44715
	cmp	sl, r3	@ tmp1098,
	add	fp, sl, #1	@ i.7389, tmp1098,
	mov	r1, #8	@,
	bge	.L3018	@,
	ldr	sl, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7082, <variable>.BS.TotalPos
	mov	r2, sl, asl #3	@ prephitmp.7084, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp868, prephitmp.7082,
	cmp	lr, r2	@ tmp868, prephitmp.7084
	bgt	.L2769	@,
	bl	BsSkip	@
.L3094:
	ldr	r2, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7082, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.7084, <variable>.BS.BsLen,
	add	r0, r3, #8	@ tmp1430, prephitmp.7082,
	cmp	r0, r2	@ tmp1430, prephitmp.7084
	ble	.L2770	@,
.L2769:
	ldr	sl, [sp, #28]	@, %sfp
	mov	ip, sl, asr #31	@ tmp872,,
	mov	r1, ip, lsr #29	@ tmp873, tmp872,
	add	r0, sl, r1	@ tmp874,, tmp873
	and	lr, r0, #7	@ tmp875, tmp874,
	rsb	r1, r1, lr	@ tmp876, tmp873, tmp875
	add	ip, r3, r1	@ tmp877, prephitmp.7082, tmp876
	cmp	r2, ip	@ prephitmp.7084, tmp877
	blt	.L2767	@,
	b	.L3099	@
.L3126:
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	sl, [sp, #16]	@, %sfp
	mov	fp, #1	@ i.7193,
	cmp	sl, fp	@, i.7193
	bgt	.L3054	@,
.L2983:
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7097, <variable>.BS.TotalPos
	mov	r2, r1, asl #3	@ prephitmp.7099, <variable>.BS.BsLen,
	b	.L2650	@
.L3130:
	mov	r0, r8	@, D.44715
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	sl, [sp, #16]	@, %sfp
	mov	fp, #1	@ i.7389,
	cmp	fp, sl	@ i.7389,
	blt	.L3094	@,
.L3018:
	ldr	r0, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r5]	@ prephitmp.7082, <variable>.BS.TotalPos
	mov	r2, r0, asl #3	@ prephitmp.7084, <variable>.BS.BsLen,
	b	.L2769	@
.L3121:
	strb	r2, [r1, #1064]	@ registered_flag, <variable>.IsRegistered
	movw	r2, #51344	@,
	ldr	lr, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC22	@,
	add	sl, lr, #12800	@ tmp401, <variable>.TotalUsrDatNum,
	movt	r2, #:upper16:.LC22	@,
	add	r3, sl, #36	@ tmp401, tmp401,
	add	lr, r4, r3, asl #2	@, tmp407, pH264Ctx, tmp401,
	ldr	sl, [lr, #4]	@ D.44777, <variable>.pUsrDatArray
	str	ip, [sp, #12]	@,
	bl	u_v	@
	strb	r0, [sl, #1065]	@, <variable>.itu_t_t35_country_code
	movw	r0, #51344	@,
	ldr	r1, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	ip, r1, #12800	@ tmp411, <variable>.TotalUsrDatNum,
	add	sl, ip, #36	@ tmp411, tmp411,
	ldr	ip, [sp, #12]	@,
	add	r3, r4, sl, asl #2	@, tmp417, pH264Ctx, tmp411,
	ldr	r3, [r3, #4]	@ temp.7221, <variable>.pUsrDatArray
	ldrb	r2, [r3, #1065]	@ zero_extendqisi2	@ <variable>.itu_t_t35_country_code, <variable>.itu_t_t35_country_code
	cmp	r2, #255	@ <variable>.itu_t_t35_country_code,
	beq	.L2674	@,
	mov	sl, #3	@ prephitmp.7093,
	mov	r1, #0	@,
	strb	r1, [r3, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	str	sl, [sp, #16]	@ prephitmp.7093, %sfp
.L2675:
	movw	r0, #51344	@ tmp426,
	mov	r1, #16	@,
	ldr	lr, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	r2, #:lower16:.LC24	@,
	mov	r0, r4	@, pH264Ctx
	movt	r2, #:upper16:.LC24	@,
	add	r3, lr, #12800	@ tmp424, <variable>.TotalUsrDatNum,
	add	lr, r3, #36	@ tmp424, tmp424,
	add	r3, r4, lr, asl #2	@, tmp430, pH264Ctx, tmp424,
	ldr	lr, [r3, #4]	@, <variable>.pUsrDatArray
	str	ip, [sp, #12]	@,
	str	lr, [sp, #28]	@, %sfp
	bl	u_v	@
	ldr	r2, [sp, #28]	@, %sfp
	movw	r3, #1068	@ tmp433,
	mov	r1, sl	@, prephitmp.7093
	strh	r0, [r2, r3]	@ movhi	@, <variable>.itu_t_t35_provider_code
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	ldr	ip, [sp, #12]	@,
	cmp	r0, #0	@,
	blt	.L3131	@,
.L2676:
	cmp	ip, sl	@ min_len_tmp, prephitmp.7093
	beq	.L2677	@,
	movw	r0, #51344	@ tmp436,
	ldr	lr, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, lr, #12800	@ tmp434, <variable>.TotalUsrDatNum,
	add	r1, r3, #36	@ tmp434, tmp434,
	add	r2, r4, r1, asl #2	@, tmp440, pH264Ctx, tmp434,
	ldr	r1, [r2, #4]	@ prephitmp.7092, <variable>.pUsrDatArray
	b	.L2678	@
.L2772:
	bl	vfmw_dprint_nothing	@
	movw	r2, #51344	@ tmp879,
	ldr	r3, [r4, r2]	@ prephitmp.7080, <variable>.TotalUsrDatNum
	b	.L2644	@
.L3124:
	rsb	r1, fp, r7	@, D.44780, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	bge	.L2684	@,
	bl	vfmw_dprint_nothing	@
	b	.L2684	@
.L3110:
	bl	vfmw_dprint_nothing	@
	b	.L2732	@
.L3114:
	bl	vfmw_dprint_nothing	@
	b	.L2654	@
.L3115:
	bl	vfmw_dprint_nothing	@
	b	.L2717	@
.L3116:
	bl	vfmw_dprint_nothing	@
	b	.L2659	@
.L3117:
	bl	vfmw_dprint_nothing	@
	b	.L2697	@
.L3112:
	bl	vfmw_dprint_nothing	@
	b	.L2707	@
.L3113:
	bl	vfmw_dprint_nothing	@
	b	.L2702	@
.L3111:
	bl	vfmw_dprint_nothing	@
	b	.L2727	@
.L3128:
	bl	vfmw_dprint_nothing	@
	b	.L2773	@
.L3118:
	bl	vfmw_dprint_nothing	@
	b	.L2642	@
.L3119:
	bl	vfmw_dprint_nothing	@
	b	.L2722	@
.L3127:
	bl	vfmw_dprint_nothing	@
	b	.L2712	@
.L3104:
	bl	vfmw_dprint_nothing	@
	b	.L2762	@
.L3105:
	bl	vfmw_dprint_nothing	@
	b	.L2757	@
.L3106:
	bl	vfmw_dprint_nothing	@
	b	.L2752	@
.L3125:
	bl	vfmw_dprint_nothing	@
	b	.L2692	@
.L3109:
	bl	vfmw_dprint_nothing	@
	b	.L2742	@
.L3107:
	bl	vfmw_dprint_nothing	@
	b	.L2747	@
.L3108:
	bl	vfmw_dprint_nothing	@
	b	.L2737	@
.L2677:
	movw	r2, #51344	@ tmp444,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	fp, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	r3, #1056	@ tmp451,
	add	ip, fp, #12800	@ tmp442, <variable>.TotalUsrDatNum,
	ldrd	sl, [r0, #56]	@ <variable>.pts, <variable>.pstExtraData,
	add	r1, ip, #36	@ tmp442, tmp442,
	add	lr, r4, r1, asl #2	@, tmp449, pH264Ctx, tmp442,
	ldr	r0, [lr, #4]	@ tmp446, <variable>.pUsrDatArray
	strd	sl, [r0, r3]	@ <variable>.pts, tmp446, tmp451
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r1, ip, #12800	@ tmp454, <variable>.TotalUsrDatNum,
	mov	ip, #8	@ tmp463,
	add	lr, r1, #36	@ tmp454, tmp454,
	movw	r1, #52800	@ tmp473,
	add	r3, r4, lr, asl #2	@, tmp461, pH264Ctx, tmp454,
	ldr	r0, [r3, #4]	@ tmp458, <variable>.pUsrDatArray
	str	ip, [r0, #1036]	@ tmp463, <variable>.from
	ldr	lr, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	ip, [r4, r1]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r3, lr, #12800	@ tmp464, <variable>.TotalUsrDatNum,
	add	r0, r3, #36	@ tmp464, tmp464,
	add	lr, r4, r0, asl #2	@, tmp471, pH264Ctx, tmp464,
	ldr	r3, [lr, #4]	@ tmp468, <variable>.pUsrDatArray
	str	ip, [r3, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	sl, [sp, #20]	@, %sfp
	ldr	r3, [sl, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L2679	@,
	ldr	lr, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r2, sp, #40	@ tmp488,,
	movw	r0, #52840	@ tmp487,
	mov	r1, #6	@,
	add	ip, lr, #12800	@ tmp477, <variable>.TotalUsrDatNum,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	add	lr, ip, #36	@ tmp477, tmp477,
	add	ip, r4, lr, asl #2	@, tmp483, pH264Ctx, tmp477,
	ldr	lr, [ip, #4]	@ tmp485, <variable>.pUsrDatArray
	str	lr, [r2, #-8]!	@ tmp485, para
	blx	r3	@ g_event_report
.L2679:
	movw	r2, #51344	@ tmp490,
	ldr	r3, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, r3, #1	@ prephitmp.7080, <variable>.TotalUsrDatNum,
	str	r3, [r4, r2]	@ prephitmp.7080, <variable>.TotalUsrDatNum
	b	.L2644	@
.L3131:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sp, #12]	@,
	b	.L2676	@
.L2674:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r2, #:upper16:.LC23	@,
	str	ip, [sp, #12]	@,
	mov	sl, #4	@ prephitmp.7093,
	str	r3, [sp, #8]	@,
	bl	u_v	@
	ldr	ip, [sp, #8]	@,
	str	sl, [sp, #16]	@ prephitmp.7093, %sfp
	strb	r0, [ip, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	ldr	ip, [sp, #12]	@,
	b	.L2675	@
.L3122:
	movw	r5, #51344	@ tmp498,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	ip, #52840	@ tmp494,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r3, r1, #12800	@ tmp495, <variable>.TotalUsrDatNum,
	add	r2, r3, #36	@ tmp495, tmp495,
	add	ip, r4, r2, asl #2	@, tmp501, pH264Ctx, tmp495,
	ldr	r1, [ip, #4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r1, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mvn	r0, #0	@ D.44719,
	add	r3, r1, #12800	@ tmp503, <variable>.TotalUsrDatNum,
	mov	r1, #0	@ tmp511,
	add	r2, r3, #36	@ tmp503, tmp503,
	add	ip, r4, r2, asl #2	@, tmp509, pH264Ctx, tmp503,
	str	r1, [ip, #4]	@ tmp511, <variable>.pUsrDatArray
	b	.L2610	@
.L2667:
	mvn	r0, #0	@ D.44719,
	b	.L2610	@
	.fnend
	.size	H264_DecSEI, .-H264_DecSEI
	.align	2
	.global	vui_parameters
	.type	vui_parameters, %function
vui_parameters:
	.fnstart
.LFB2025:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ pVUI, pVUI
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.43604,
	strb	r0, [r5, #0]	@ D.43604, <variable>.aspect_ratio_info_present_flag
	cmp	r0, #0	@ D.43604,
	streqb	r0, [r5, #15]	@ D.43604, <variable>.aspect_ratio_idc
	bne	.L3157	@,
.L3134:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	u_1	@
	uxtb	r2, r0	@ D.43619,
	strb	r2, [r5, #1]	@ D.43619, <variable>.overscan_info_present_flag
	cmp	r2, #0	@ D.43619,
	bne	.L3158	@,
.L3135:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.43626,
	strb	r3, [r5, #3]	@ D.43626, <variable>.video_signal_type_present_flag
	cmp	r3, #0	@ D.43626,
	moveq	r3, #5	@ tmp229,
	streq	r3, [r5, #28]	@ tmp229, <variable>.video_format
	bne	.L3159	@,
.L3137:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.43647,
	strb	r0, [r5, #6]	@ D.43647, <variable>.chroma_location_info_present_flag
	cmp	r0, #0	@ D.43647,
	bne	.L3160	@,
.L3138:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	u_1	@
	uxtb	r1, r0	@ D.43654,
	strb	r1, [r5, #8]	@ D.43654, <variable>.timing_info_present_flag
	cmp	r1, #0	@ D.43654,
	bne	.L3161	@,
.L3139:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.43674,
	strb	r0, [r5, #7]	@ D.43674, <variable>.nal_hrd_parameters_present_flag
	cmp	r0, #0	@ D.43674,
	beq	.L3140	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	str	r0, [r5, #96]	@, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	strb	r0, [r5, #92]	@, <variable>.nal_hrd_parameters.bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, [r5, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	cmp	r1, #31	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r5, #93]	@, <variable>.nal_hrd_parameters.cpb_size_scale
	bhi	.L3146	@,
	movw	lr, #52780	@ tmp254,
	ldr	r8, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	moveq	r6, r5	@ ivtmp.7538, pVUI
	moveq	r7, r5	@ ivtmp.7528, pVUI
	bne	.L3146	@,
.L3144:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	str	r0, [r6, #100]	@, <variable>.nal_hrd_parameters.bit_rate_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	str	r0, [r6, #228]	@, <variable>.nal_hrd_parameters.cpb_size_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r2, [r5, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7538, ivtmp.7538,
	cmp	r2, r8	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #60]	@, <variable>.nal_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7528, ivtmp.7528,
	bcs	.L3144	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC52	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC53	@,
	str	r0, [r5, #356]	@, <variable>.nal_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	str	r0, [r5, #360]	@, <variable>.nal_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC55	@,
	movt	r2, #:upper16:.LC55	@,
	str	r0, [r5, #364]	@, <variable>.nal_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #368]	@, <variable>.nal_hrd_parameters.time_offset_length
.L3140:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	u_1	@
	uxtb	ip, r0	@ D.43703,
	strb	ip, [r5, #10]	@ D.43703, <variable>.vcl_hrd_parameters_present_flag
	cmp	ip, #0	@ D.43703,
	bne	.L3162	@,
.L3145:
	ldrb	lr, [r5, #7]	@ zero_extendqisi2	@ <variable>.nal_hrd_parameters_present_flag, <variable>.nal_hrd_parameters_present_flag
	cmp	lr, #0	@ <variable>.nal_hrd_parameters_present_flag,
	bne	.L3149	@,
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.vcl_hrd_parameters_present_flag, <variable>.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vcl_hrd_parameters_present_flag,
	bne	.L3149	@,
.L3150:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	strb	r0, [r5, #11]	@, <variable>.pic_struct_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.43737,
	strb	ip, [r5, #12]	@ D.43737, <variable>.bitstream_restriction_flag
	cmp	ip, #0	@ D.43737,
	bne	.L3163	@,
	movw	lr, #52780	@ tmp302,
	ldr	r1, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3152	@,
.L3153:
	mov	r0, #0	@ D.43688,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3149:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	u_1	@
	strb	r0, [r5, #14]	@, <variable>.low_delay_hrd_flag
	b	.L3150	@
.L3163:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	strb	r0, [r5, #13]	@, <variable>.motion_vectors_over_pic_boundaries_flag
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	str	r0, [r5, #684]	@, <variable>.max_bytes_per_pic_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	str	r0, [r5, #688]	@, <variable>.max_bits_per_mb_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	str	r0, [r5, #696]	@, <variable>.log2_max_mv_length_horizontal
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	str	r0, [r5, #692]	@, <variable>.log2_max_mv_length_vertical
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	str	r0, [r5, #700]	@, <variable>.num_reorder_frames
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #704]	@, <variable>.max_dec_frame_buffering
	movw	r0, #52780	@ tmp300,
	ldr	r3, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3153	@,
.L3152:
	mvn	r0, #0	@ D.43688,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3157:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	u_v	@
	uxtb	r1, r0	@ D.43609,
	strb	r1, [r5, #15]	@ D.43609, <variable>.aspect_ratio_idc
	cmp	r1, #255	@ D.43609,
	bne	.L3134	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC27	@,
	movt	r2, #:upper16:.LC27	@,
	bl	u_v	@
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	str	r0, [r5, #16]	@, <variable>.sar_width
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #20]	@, <variable>.sar_height
	b	.L3134	@
.L3161:
	mov	r1, #32	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC42	@,
	movt	r2, #:upper16:.LC42	@,
	bl	u_v	@
	mov	r1, #32	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	str	r0, [r5, #52]	@, <variable>.num_units_in_tick
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	str	r0, [r5, #56]	@, <variable>.time_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r2, r0	@ D.43663,
	strb	r2, [r5, #9]	@ D.43663, <variable>.fixed_frame_rate_flag
	cmp	r2, #1	@ D.43663,
	bne	.L3139	@,
	ldr	r1, [r5, #52]	@ D.43667, <variable>.num_units_in_tick
	cmp	r1, #0	@ D.43667,
	beq	.L3139	@,
	ldr	r0, [r5, #56]	@, <variable>.time_scale
	bl	__aeabi_uidiv	@
	movw	r3, #51340	@ tmp240,
	mov	ip, r0, lsr #1	@ tmp245,,
	str	ip, [r4, r3]	@ tmp245, <variable>.frame_rate
	b	.L3139	@
.L3160:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	str	r0, [r5, #44]	@, <variable>.chroma_sample_loc_type_top_field
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #48]	@, <variable>.chroma_sample_loc_type_bottom_field
	b	.L3138	@
.L3159:
	mov	r1, #3	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC32	@,
	movt	r2, #:upper16:.LC32	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	str	r0, [r5, #28]	@, <variable>.video_format
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	strb	r0, [r5, #4]	@, <variable>.video_full_range_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.43635,
	strb	ip, [r5, #5]	@ D.43635, <variable>.colour_description_present_flag
	cmp	ip, #0	@ D.43635,
	beq	.L3137	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC35	@,
	movt	r2, #:upper16:.LC35	@,
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r2, #:upper16:.LC36	@,
	str	r0, [r5, #32]	@, <variable>.colour_primaries
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC37	@,
	movt	r2, #:upper16:.LC37	@,
	str	r0, [r5, #36]	@, <variable>.transfer_characteristics
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #40]	@, <variable>.matrix_coefficients
	b	.L3137	@
.L3158:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.overscan_appropriate_flag
	b	.L3135	@
.L3162:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	str	r0, [r5, #408]	@, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	strb	r0, [r5, #404]	@, <variable>.vcl_hrd_parameters.bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r5, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	cmp	r3, #31	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r5, #405]	@, <variable>.vcl_hrd_parameters.cpb_size_scale
	bhi	.L3146	@,
	movw	r0, #52780	@ tmp273,
	ldr	r8, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	moveq	r6, r5	@ ivtmp.7520, pVUI
	moveq	r7, r5	@ ivtmp.7533, pVUI
	bne	.L3146	@,
.L3148:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	str	r0, [r6, #412]	@, <variable>.vcl_hrd_parameters.bit_rate_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	str	r0, [r6, #540]	@, <variable>.vcl_hrd_parameters.cpb_size_value_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, [r5, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7520, ivtmp.7520,
	cmp	r1, r8	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #372]	@, <variable>.vcl_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7533, ivtmp.7533,
	bcs	.L3148	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC52	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC53	@,
	str	r0, [r5, #668]	@, <variable>.vcl_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	str	r0, [r5, #672]	@, <variable>.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC55	@,
	movt	r2, #:upper16:.LC55	@,
	str	r0, [r5, #676]	@, <variable>.vcl_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #680]	@, <variable>.vcl_hrd_parameters.time_offset_length
	b	.L3145	@
.L3146:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43688,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	vui_parameters, .-vui_parameters
	.align	2
	.global	ProcessSPS
	.type	ProcessSPS, %function
ProcessSPS:
	.fnstart
.LFB2028:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r5, r1, #0	@ pSPS, pSPS
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	beq	.L3210	@,
	ldr	r3, [r5, #736]	@ D.44018, <variable>.profile_idc
	cmp	r3, #100	@ D.44018,
	cmpne	r3, #110	@, D.44018,
	movne	r2, #0	@, tmp214
	moveq	r2, #1	@, tmp214
	beq	.L3167	@,
	cmp	r3, #122	@ D.44018,
	beq	.L3167	@,
	cmp	r3, #144	@ D.44018,
	strneb	r2, [r5, #25]	@ tmp214, <variable>.seq_scaling_matrix_present_flag
	movne	r3, #1	@ tmp385,
	strne	r3, [r5, #748]	@ tmp385, <variable>.chroma_format_idc
	beq	.L3167	@,
.L3177:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.44115,
	str	r0, [r5, #2904]	@ D.44115, <variable>.log2_max_frame_num_minus4
	bhi	.L3210	@,
	movw	r6, #52780	@ tmp389,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3210	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.44120,
	str	r0, [r5, #2908]	@ D.44120, <variable>.pic_order_cnt_type
	bhi	.L3210	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3210	@,
	cmp	r0, #0	@ D.44120,
	beq	.L3245	@,
	cmp	r0, #1	@ D.44120,
	beq	.L3246	@,
.L3199:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	movw	r6, #52780	@ tmp416,
	bl	ue_v	@
	str	r0, [r5, #3952]	@, <variable>.num_ref_frames
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	beq	.L3247	@,
.L3200:
	mvn	r0, #0	@ D.44014,
.L3166:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L3167:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	bl	ue_v	@
	cmp	r0, #1	@ D.44025,
	str	r0, [r5, #748]	@ D.44025, <variable>.chroma_format_idc
	bhi	.L3210	@,
	movw	r6, #52780	@ tmp216,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3210	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.44031,
	str	r0, [r5, #752]	@ D.44031, <variable>.bit_depth_luma_minus8
	bne	.L3171	@,
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3171	@,
.L3172:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.44036,
	str	r0, [r5, #756]	@ D.44036, <variable>.bit_depth_chroma_minus8
	bne	.L3173	@,
	movw	r2, #52780	@ tmp222,
	ldr	r1, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3173	@,
.L3174:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L3210	@,
	movw	lr, #52780	@ tmp225,
	ldr	ip, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3210	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.44046,
	strb	r3, [r5, #25]	@ D.44046, <variable>.seq_scaling_matrix_present_flag
	cmp	r3, #1	@ D.44046,
	bne	.L3177	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	add	r6, r5, #2672	@ D.44060, pSPS,
	bl	u_1	@
	add	r6, r6, #8	@ D.44060, D.44060,
	add	sl, r5, #760	@ D.44057, pSPS,
	cmp	r0, #1	@ temp.7632,
	str	r0, [sp, #8]	@ temp.7632, q4x4defaultflag
	strb	r0, [r5, #4]	@ temp.7632, <variable>.seq_scaling_list_present_flag
	beq	.L3178	@,
.L3240:
	ldr	ip, .L3254	@ tmp240,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp240,,,,
	stmia	r6, {r0, r1, r2, r3}	@ D.44060,,,,
.L3179:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7635,
	str	r0, [sp, #12]	@ temp.7635, q4x4defaultflag
	strb	r0, [r5, #5]	@ temp.7635, <variable>.seq_scaling_list_present_flag
	beq	.L3180	@,
	add	r7, r6, #16	@ tmp531, D.44060,
	mov	r1, r6	@, D.44060
	mov	r2, #16	@,
	mov	r0, r7	@, tmp531
	bl	memcpy	@
.L3181:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7643,
	str	r0, [sp, #16]	@ temp.7643, q4x4defaultflag
	strb	r0, [r5, #6]	@ temp.7643, <variable>.seq_scaling_list_present_flag
	beq	.L3182	@,
	mov	r1, r7	@, tmp531
	add	r0, r6, #32	@, D.44060,
	mov	r2, #16	@,
	bl	memcpy	@
.L3183:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7652,
	str	r0, [sp, #20]	@ temp.7652, q4x4defaultflag
	strb	r0, [r5, #7]	@ temp.7652, <variable>.seq_scaling_list_present_flag
	beq	.L3184	@,
	add	r7, r6, #48	@ tmp533, D.44060,
	ldr	r1, .L3254+4	@,
	mov	r2, #16	@,
	mov	r0, r7	@, tmp533
	bl	memcpy	@
.L3185:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	cmp	r0, #1	@ temp.7660,
	str	r0, [sp, #24]	@ temp.7660, q4x4defaultflag
	strb	r0, [r5, #8]	@ temp.7660, <variable>.seq_scaling_list_present_flag
	beq	.L3186	@,
	add	r8, r6, #64	@ tmp535, D.44060,
	mov	r1, r7	@, tmp533
	mov	r2, #16	@,
	mov	r0, r8	@, tmp535
	bl	memcpy	@
.L3187:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	cmp	r0, #1	@ D.44051,
	str	r0, [sp, #28]	@ D.44051, q4x4defaultflag
	strb	r0, [r5, #9]	@ D.44051, <variable>.seq_scaling_list_present_flag
	beq	.L3248	@,
	add	r0, r6, #80	@, D.44060,
	mov	r1, r8	@, tmp535
	mov	r2, #16	@,
	bl	memcpy	@
.L3189:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	add	r7, r5, #1136	@ D.44094, pSPS,
	bl	u_1	@
	add	r6, r5, #2768	@ D.44097, pSPS,
	add	r7, r7, #8	@ D.44094, D.44094,
	add	r6, r6, #8	@ D.44097, D.44097,
	cmp	r0, #1	@ temp.7669,
	str	r0, [sp, #40]	@ temp.7669, q8x8defaultflag
	strb	r0, [r5, #10]	@ temp.7669, <variable>.seq_scaling_list_present_flag
	beq	.L3190	@,
.L3241:
	ldr	ip, .L3254+8	@ tmp360,
	mov	lr, r6	@ D.44097, D.44097
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp362,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.44097,,,,
	mov	r8, lr	@ D.44097, D.44097
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp542,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ D.44097,,,,
	mov	lr, r8	@ D.44097, D.44097
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp544,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ D.44097,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp544,,,,
	stmia	lr, {r0, r1, r2, r3}	@ D.44097,,,,
.L3191:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	cmp	r0, #1	@ D.44087,
	str	r0, [sp, #44]	@ D.44087, q8x8defaultflag
	strb	r0, [r5, #11]	@ D.44087, <variable>.seq_scaling_list_present_flag
	beq	.L3249	@,
	add	r0, r6, #64	@, D.44097,
	ldr	r1, .L3254+12	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3177	@
.L3173:
	bl	vfmw_dprint_nothing	@
	b	.L3174	@
.L3171:
	bl	vfmw_dprint_nothing	@
	b	.L3172	@
.L3245:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.44127,
	str	r0, [r5, #2912]	@ D.44127, <variable>.log2_max_pic_order_cnt_lsb_minus4
	bhi	.L3210	@,
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3199	@,
.L3210:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.44014,
	b	.L3166	@
.L3246:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	u_1	@
	strb	r0, [r5, #16]	@, <variable>.delta_pic_order_always_zero_flag
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	se_v	@
	str	r0, [r5, #2916]	@, <variable>.offset_for_non_ref_pic
	ldr	ip, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	se_v	@
	str	r0, [r5, #2920]	@, <variable>.offset_for_top_to_bottom_field
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	ue_v	@
	cmp	r0, #255	@ prephitmp.7565,
	mov	r3, r0	@ prephitmp.7565,
	str	r0, [r5, #2924]	@ prephitmp.7565, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	bhi	.L3210	@,
	movw	r8, #52780	@ tmp408,
	ldr	r6, [r4, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r6, #0	@ <variable>.SeErrFlg,
	addeq	r7, r5, #2928	@ ivtmp.7582, pSPS,
	beq	.L3202	@,
	b	.L3210	@
.L3203:
	bl	se_v	@
	str	r0, [r7], #4	@, <variable>.offset_for_ref_frame
	ldr	r1, [r4, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	ldr	r3, [r5, #2924]	@ prephitmp.7565, <variable>.num_ref_frames_in_pic_order_cnt_cycle
.L3202:
	cmp	r6, r3	@ i, prephitmp.7565
	movw	r1, #:lower16:.LC80	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC80	@,
	add	r6, r6, #1	@ i, i,
	bcc	.L3203	@,
	movw	r0, #52780	@ tmp413,
	ldr	lr, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	b	.L3199	@
.L3247:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	u_1	@
	strb	r0, [r5, #17]	@, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	ip, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	movw	r7, #509	@ tmp424,
	bl	ue_v	@
	sub	r3, r0, #1	@ tmp423, D.44162,
	str	r0, [r5, #3956]	@ D.44162, <variable>.pic_width_in_mbs_minus1
	cmp	r3, r7	@ tmp423, tmp424
	bhi	.L3210	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3210	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	ue_v	@
	str	r0, [r5, #3960]	@, <variable>.pic_height_in_map_units_minus1
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.44172,
	strb	r0, [r5, #18]	@ D.44172, <variable>.frame_mbs_only_flag
	ldr	r2, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	cmp	r0, #0	@ D.44172,
	bne	.L3206	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	u_1	@
	ldr	r2, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r3, r2, #1	@ prephitmp.7612, <variable>.pic_height_in_map_units_minus1,
	cmp	r3, #255	@ prephitmp.7612,
	strb	r0, [r5, #19]	@, <variable>.mb_adaptive_frame_field_flag
	bhi	.L3210	@,
	ldr	r8, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	r8, r8, #1	@ prephitmp.7559, <variable>.pic_width_in_mbs_minus1,
	cmp	r8, #3	@ prephitmp.7559,
	bls	.L3210	@,
	cmp	r3, #1	@ prephitmp.7612,
	movhi	sl, #2	@ temp,
	bls	.L3210	@,
.L3238:
	mul	r1, sl, r3	@ tmp438, temp, prephitmp.7612
	mov	r8, r8, asl #4	@ PicWidthInSmp, prephitmp.7559,
	mov	lr, #3	@ tmp441,
	mov	r6, r1, asl #4	@ PicHeightInSmp, tmp438,
	mul	r3, r8, r6	@ tmp439, PicWidthInSmp, PicHeightInSmp
	mov	ip, r3, lsr #1	@ tmp440, tmp439,
	mul	r1, lr, ip	@ pic_size, tmp441, tmp440
	cmp	r1, #100663296	@ pic_size,
	bhi	.L3210	@,
	ldr	r2, [r5, #740]	@ <variable>.level_idc, <variable>.level_idc
	sub	r0, r2, #10	@ tmp443, <variable>.level_idc,
	cmp	r0, #31	@ tmp443,
	ldrls	pc, [pc, r0, asl #2]	@ tmp443
	b	.L3210	@
.L3219:
	.word	.L3211
	.word	.L3212
	.word	.L3213
	.word	.L3213
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3213
	.word	.L3214
	.word	.L3215
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3215
	.word	.L3216
	.word	.L3217
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3210
	.word	.L3218
	.word	.L3218
.L3248:
	add	r6, r6, #80	@ tmp529, D.44060,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #320	@, D.44057,
	mov	r3, #16	@,
	mov	r2, r6	@, tmp529
	add	lr, sp, #28	@ tmp333,,
	str	lr, [sp, #0]	@ tmp333,
	bl	Scaling_List	@
	ldr	r0, [sp, #28]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r0, #1	@ q4x4defaultflag,
	bne	.L3189	@,
	mov	r0, r6	@, tmp529
	ldr	r1, .L3254+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3189	@
.L3184:
	add	r7, r6, #48	@ tmp533, D.44060,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #192	@, D.44057,
	mov	r3, #16	@,
	mov	r2, r7	@, tmp533
	add	ip, sp, #20	@ tmp297,,
	str	ip, [sp, #0]	@ tmp297,
	bl	Scaling_List	@
	ldr	r2, [sp, #20]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r2, #1	@ q4x4defaultflag,
	bne	.L3185	@,
	mov	r0, r7	@, tmp533
	ldr	r1, .L3254+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3185	@
.L3182:
	add	r7, r6, #32	@ tmp532, D.44060,
	add	r1, sl, #128	@, D.44057,
	mov	r3, #16	@,
	mov	r0, r4	@, pH264Ctx
	mov	r2, r7	@, tmp532
	add	r8, sp, r3	@ tmp275,,
	str	r8, [sp, #0]	@ tmp275,
	bl	Scaling_List	@
	ldr	r1, [sp, #16]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r1, #1	@ q4x4defaultflag,
	bne	.L3183	@,
	mov	r0, r7	@, tmp532
	ldr	r1, .L3254	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3183	@
.L3180:
	add	r7, r6, #16	@ tmp531, D.44060,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #64	@, D.44057,
	mov	r3, #16	@,
	mov	r2, r7	@, tmp531
	add	lr, sp, #12	@ tmp254,,
	str	lr, [sp, #0]	@ tmp254,
	bl	Scaling_List	@
	ldr	r0, [sp, #12]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r0, #1	@ q4x4defaultflag,
	bne	.L3181	@,
	mov	r0, r7	@, tmp531
	ldr	r1, .L3254	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3181	@
.L3178:
	mov	r0, r4	@, pH264Ctx
	mov	r1, sl	@, D.44057
	mov	r2, r6	@, D.44060
	mov	r3, #16	@,
	add	r8, sp, #8	@ tmp237,,
	str	r8, [sp, #0]	@ tmp237,
	bl	Scaling_List	@
	ldr	r7, [sp, #8]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r7, #1	@ q4x4defaultflag,
	bne	.L3179	@,
	b	.L3240	@
.L3186:
	add	r8, r6, #64	@ tmp535, D.44060,
	mov	r3, #16	@,
	mov	r0, r4	@, pH264Ctx
	add	r1, sl, #256	@, D.44057,
	mov	r2, r8	@, tmp535
	add	r7, sp, #24	@ tmp318,,
	str	r7, [sp, #0]	@ tmp318,
	bl	Scaling_List	@
	ldr	r3, [sp, #24]	@ q4x4defaultflag, q4x4defaultflag
	cmp	r3, #1	@ q4x4defaultflag,
	bne	.L3187	@,
	mov	r0, r8	@, tmp535
	ldr	r1, .L3254+4	@,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3187	@
.L3249:
	add	r6, r6, #64	@ tmp534, D.44097,
	add	r1, r7, #256	@, D.44094,
	mov	r0, r4	@, pH264Ctx
	mov	r3, #64	@,
	mov	r2, r6	@, tmp534
	add	ip, sp, #44	@ tmp369,,
	str	ip, [sp, #0]	@ tmp369,
	bl	Scaling_List	@
	ldr	r2, [sp, #44]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r2, #1	@ q8x8defaultflag,
	bne	.L3177	@,
	mov	r0, r6	@, tmp534
	ldr	r1, .L3254+12	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3177	@
.L3190:
	mov	r1, r7	@, D.44094
	mov	r0, r4	@, pH264Ctx
	mov	r2, r6	@, D.44097
	mov	r3, #64	@,
	add	ip, sp, #40	@ tmp357,,
	str	ip, [sp, #0]	@ tmp357,
	bl	Scaling_List	@
	ldr	r1, [sp, #40]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r1, #1	@ q8x8defaultflag,
	bne	.L3191	@,
	b	.L3241	@
.L3217:
	mov	r0, #7864320	@ size,
.L3220:
	bl	__aeabi_uidiv	@
	cmp	r0, #16	@,
	movcc	r7, r0	@ size.7588,
	movcs	r7, #16	@ size.7588,
	bl	vfmw_dprint_nothing	@
	ldr	r9, [r5, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	cmp	r9, r7	@ <variable>.num_ref_frames, size.7588
	bhi	.L3221	@,
	movw	ip, #52780	@ tmp448,
	ldr	lr, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	beq	.L3222	@,
.L3221:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #3952]	@ temp.7616, <variable>.num_ref_frames
	cmp	r3, #16	@ temp.7616,
	bhi	.L3242	@,
	cmp	r7, r3	@ size.7588, temp.7616
	movcc	r7, r3	@ size.7588, temp.7616
.L3242:
	str	r7, [r5, #3952]	@ size.7588, <variable>.num_ref_frames
.L3222:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	movw	r9, #52780	@ tmp452,
	bl	u_1	@
	strb	r0, [r5, #20]	@, <variable>.direct_8x8_inference_flag
	ldr	r3, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.44218,
	strb	r0, [r5, #21]	@ D.44218, <variable>.frame_cropping_flag
	ldr	r1, [r4, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	cmp	r0, #0	@ D.44218,
	bne	.L3250	@,
.L3224:
	mov	r3, r8, lsr #1	@ tmp484, PicWidthInSmp,
	mov	lr, r6, lsr #1	@ tmp485, PicHeightInSmp,
	str	r8, [r5, #3984]	@ PicWidthInSmp, <variable>.disp_width
	str	r3, [r5, #3992]	@ tmp484, <variable>.disp_center_x
	str	lr, [r5, #3996]	@ tmp485, <variable>.disp_center_y
	str	r6, [r5, #3988]	@ PicHeightInSmp, <variable>.disp_height
.L3226:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	bl	u_1	@
	movw	r2, #52780	@ tmp488,
	uxtb	r3, r0	@ D.44256,
	strb	r3, [r5, #22]	@ D.44256, <variable>.vui_parameters_present_flag
	ldr	r2, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3200	@,
	cmp	r3, #0	@ D.44256,
	add	r1, r2, #2	@ tmp490, tmp490,
	str	r1, [r5, #68]	@ tmp490, <variable>.vui_seq_parameters.matrix_coefficients
	bne	.L3251	@,
	mov	r0, r3	@ prephitmp.7563, D.44256
	mov	lr, #5	@ tmp496,
	strb	r3, [r5, #43]	@ D.44256, <variable>.vui_seq_parameters.aspect_ratio_idc
	str	lr, [r5, #56]	@ tmp496, <variable>.vui_seq_parameters.video_format
.L3229:
	str	r6, [sp, #0]	@ PicHeightInSmp,
	mov	r3, r8	@, PicWidthInSmp
	ldr	r1, [r5, #44]	@, <variable>.vui_seq_parameters.sar_width
	ldr	r2, [r5, #48]	@, <variable>.vui_seq_parameters.sar_height
	bl	H264GetDar	@
	ldr	r3, [r5, #3952]	@ temp.7626, <variable>.num_ref_frames
	cmp	r3, #0	@ temp.7626,
	str	r0, [r5, #52]	@, <variable>.vui_seq_parameters.aspect_ratio
	beq	.L3233	@,
	cmp	r7, r3	@ size.7588, temp.7626
	movcs	r7, r3	@ size.7588, temp.7626
.L3233:
	ldr	r1, [r4, #0]	@ D.44287, <variable>.pstExtraData
	cmp	r7, #16	@ size.7588,
	movcs	r7, #16	@ size.7589,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L3252	@,
.L3234:
	cmp	r6, #1920	@ PicHeightInSmp,
	bcc	.L3236	@,
	cmp	r7, #6	@ size.7589,
	movcs	r7, #6	@ size.7589,
.L3236:
	add	r7, r7, #1	@ tmp522, size.7589,
	mov	r0, #0	@ D.44014,
	str	r7, [r5, #3980]	@ tmp522, <variable>.dpb_size_plus1
	b	.L3166	@
.L3252:
	ldr	r3, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3234	@,
	ldr	ip, [r1, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r2, [r1, #568]	@ MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r7, ip	@ size.7589, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r0, [r1, #572]	@ MaxHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L3253	@,
	cmp	r2, r8	@ MaxWidth, PicWidthInSmp
	cmpcs	r0, r6	@, MaxHeight, PicHeightInSmp
	bcs	.L3234	@,
	movw	r1, #:lower16:g_event_report	@ tmp515,
	movt	r1, #:upper16:g_event_report	@ tmp515,
	ldr	r3, [r1, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L3200	@,
	strh	r0, [sp, #38]	@ movhi	@ MaxHeight, para
	movw	r0, #52840	@ tmp518,
	strh	r2, [sp, #36]	@ movhi	@ MaxWidth, para
	mov	r1, #107	@,
	strh	r8, [sp, #32]	@ movhi	@ PicWidthInSmp, para
	add	r2, sp, #32	@,,
	strh	r6, [sp, #34]	@ movhi	@ PicHeightInSmp, para
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report
	mvn	r0, #0	@ D.44014,
	b	.L3166	@
.L3251:
	mov	r0, r4	@, pH264Ctx
	add	r1, r5, #28	@, pSPS,
	bl	vui_parameters	@
	cmp	r0, #0	@,
	bne	.L3244	@,
	ldrb	ip, [r5, #40]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.bitstream_restriction_flag, <variable>.vui_seq_parameters.bitstream_restriction_flag
	cmp	ip, #0	@ <variable>.vui_seq_parameters.bitstream_restriction_flag,
	beq	.L3244	@,
	ldr	r3, [r5, #732]	@ D.44272, <variable>.vui_seq_parameters.max_dec_frame_buffering
	cmp	r7, r3	@ size.7588, D.44272
	bcc	.L3231	@,
	cmp	r3, #0	@ D.44272,
	bne	.L3232	@,
.L3231:
	bl	vfmw_dprint_nothing	@
.L3244:
	ldrb	r0, [r5, #43]	@ zero_extendqisi2	@ prephitmp.7563, <variable>.vui_seq_parameters.aspect_ratio_idc
	b	.L3229	@
.L3250:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	str	r0, [r5, #3964]	@, <variable>.frame_crop_left_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	str	r0, [r5, #3968]	@, <variable>.frame_crop_right_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	str	r0, [r5, #3972]	@, <variable>.frame_crop_top_offset
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	ip, [r5, #3972]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	ldr	r1, [r5, #3964]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	mov	r3, sl, asl #1	@ tmp469, temp,
	ldr	r2, [r5, #3968]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	mov	ip, ip, asl #1	@ tmp466, <variable>.frame_crop_top_offset,
	mov	r1, r1, asl #1	@ D.44228, <variable>.frame_crop_left_offset,
	mul	sl, sl, ip	@ D.44233, temp, tmp466
	rsb	ip, r1, r8	@ tmp463, D.44228, PicWidthInSmp
	sub	r2, ip, r2, asl #1	@ D.44231, tmp463, <variable>.frame_crop_right_offset,
	rsb	ip, sl, r6	@ tmp468, D.44233, PicHeightInSmp
	mls	r3, r0, r3, ip	@ D.44237, D.44227, tmp469, tmp468
	str	r0, [r5, #3976]	@ D.44227, <variable>.frame_crop_bottom_offset
	cmp	r2, #0	@ D.44231,
	cmpgt	r3, #0	@, D.44237,
	ble	.L3224	@,
	add	r0, r1, r2, lsr #1	@, tmp481, D.44228, D.44231,
	add	sl, sl, r3, lsr #1	@, tmp483, D.44233, D.44237,
	str	r0, [r5, #3992]	@ tmp481, <variable>.disp_center_x
	str	sl, [r5, #3996]	@ tmp483, <variable>.disp_center_y
	str	r2, [r5, #3984]	@ D.44231, <variable>.disp_width
	str	r3, [r5, #3988]	@ D.44237, <variable>.disp_height
	b	.L3226	@
.L3253:
	movw	r2, #:lower16:g_event_report	@ tmp500,
	movt	r2, #:upper16:g_event_report	@ tmp500,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L3200	@,
	str	r7, [sp, #32]	@ size.7589, para
	movw	ip, #52840	@ tmp505,
	ldr	lr, [r1, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	add	r2, sp, #32	@,,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #106	@,
	str	lr, [sp, #36]	@ <variable>.stChanOption.s32MaxRefFrameNum, para
	blx	r3	@ g_event_report
	mvn	r0, #0	@ D.44014,
	b	.L3166	@
.L3232:
	ldr	r7, [r5, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldrb	r0, [r5, #43]	@ zero_extendqisi2	@ prephitmp.7563, <variable>.vui_seq_parameters.aspect_ratio_idc
	cmp	r3, r7	@ D.44272, <variable>.num_ref_frames
	movcs	r7, r3	@ size.7588, D.44272
	b	.L3229	@
.L3215:
	movw	r0, #:lower16:3110400	@ size,
	movt	r0, #:upper16:3110400	@ size,
	b	.L3220	@
.L3214:
	movw	r0, #:lower16:1824768	@ size,
	movt	r0, #:upper16:1824768	@ size,
	b	.L3220	@
.L3218:
	mov	r0, #12582912	@ size,
	b	.L3220	@
.L3216:
	movw	r0, #:lower16:6912000	@ size,
	movt	r0, #:upper16:6912000	@ size,
	b	.L3220	@
.L3213:
	movw	r0, #:lower16:912384	@ size,
	movt	r0, #:upper16:912384	@ size,
	b	.L3220	@
.L3212:
	movw	r0, #:lower16:345600	@ size,
	movt	r0, #:upper16:345600	@ size,
	b	.L3220	@
.L3211:
	movw	r0, #:lower16:152064	@ size,
	movt	r0, #:upper16:152064	@ size,
	b	.L3220	@
.L3206:
	ldr	r3, [r5, #3960]	@ temp.7613, <variable>.pic_height_in_map_units_minus1
	strb	r2, [r5, #19]	@ <variable>.SeErrFlg, <variable>.mb_adaptive_frame_field_flag
	sub	r2, r3, #1	@ tmp526, temp.7613,
	cmp	r2, r7	@ tmp526, tmp424
	bhi	.L3210	@,
	ldr	r6, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	mov	sl, #1	@ temp,
	add	r3, r3, #1	@ prephitmp.7612, temp.7613,
	add	r8, r6, sl	@ prephitmp.7559, <variable>.pic_width_in_mbs_minus1,
	b	.L3238	@
.L3255:
	.align	2
.L3254:
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
.LFB2029:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, #8	@,
	.pad #28
	sub	sp, sp, #28	@,,
	movw	r2, #:lower16:.LC94	@,
	movt	r2, #:upper16:.LC94	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	mov	r9, r0	@ D.44340,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	mov	r7, r0	@ constrained_set0_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC97	@,
	movt	r1, #:upper16:.LC97	@,
	mov	r6, r0	@ constrained_set1_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	str	r0, [sp, #12]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC99	@,
	movt	r2, #:upper16:.LC99	@,
	str	r0, [sp, #8]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC100	@,
	movt	r2, #:upper16:.LC100	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	mov	r5, r0	@ D.44345,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	fp, r0	@ seq_parameter_set_id,
	movw	r0, #52780	@ tmp159,
	ldr	r3, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3257	@,
	movw	r8, #13572	@ tmp161,
	ldr	r2, [r4, r8]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	r1, r2, #1	@ tmp162, <variable>.MaxSpsNum,
	cmp	fp, r1	@ seq_parameter_set_id, tmp162
	bhi	.L3274	@,
	cmp	r9, #100	@ profile_idc,
	beq	.L3262	@,
	bhi	.L3265	@,
	cmp	r9, #77	@ profile_idc,
	beq	.L3262	@,
	cmp	r9, #88	@ profile_idc,
	beq	.L3264	@,
	cmp	r9, #66	@ profile_idc,
	bne	.L3260	@,
.L3264:
	bl	vfmw_dprint_nothing	@
.L3262:
	cmp	r5, #9	@ level_idc,
	mov	r3, r5	@ level_idc, D.44345
	bls	.L3273	@,
.L3266:
	cmp	r5, #41	@ level_idc,
	bhi	.L3273	@,
	mov	r2, #4000	@ tmp172,
	movw	r8, #13580	@ tmp173,
	mul	r5, r2, fp	@ D.44368, tmp172, seq_parameter_set_id
	ldr	sl, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r1, r5, sl	@ D.44369, D.44368, <variable>.SPS
	ldrb	sl, [r1, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	sl, #0	@ <variable>.is_valid,
	beq	.L3268	@,
.L3277:
	movw	sl, #:lower16:.LANCHOR1	@ tmp176,
	movt	sl, #:upper16:.LANCHOR1	@ tmp176,
	ldr	ip, [sp, #12]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	strb	r6, [sl, #69]	@ constrained_set1_flag, sps_tmp.constrained_set1_flag
	add	r1, sl, #68	@, tmp176,
	ldr	r6, [sp, #8]	@, %sfp
	str	r9, [sl, #804]	@ profile_idc, sps_tmp.profile_idc
	strb	r7, [sl, #68]	@ constrained_set0_flag, sps_tmp.constrained_set0_flag
	strb	r6, [sl, #71]	@, sps_tmp.constrained_set3_flag
	strb	ip, [sl, #70]	@, sps_tmp.constrained_set2_flag
	str	r3, [sl, #808]	@ level_idc, sps_tmp.level_idc
	str	fp, [sl, #812]	@ seq_parameter_set_id, sps_tmp.seq_parameter_set_id
	str	r2, [sp, #4]	@,
	bl	ProcessSPS	@
	ldr	r2, [sp, #4]	@,
	subs	r6, r0, #0	@ D.44377,
	bne	.L3275	@,
	ldr	r3, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r0, sl, #68	@, tmp176,
	str	r2, [sp, #4]	@,
	add	r1, r5, r3	@, D.44368, <variable>.SPS
	bl	SPSEqual	@
	ldr	r2, [sp, #4]	@,
	cmp	r0, #0	@ D.44380
	bne	.L3276	@,
.L3259:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3273:
	bl	vfmw_dprint_nothing	@
	mov	r2, #4000	@ tmp172,
	mul	r5, r2, fp	@ D.44368, tmp172, seq_parameter_set_id
	movw	r8, #13580	@ tmp173,
	ldr	sl, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	mov	r3, #41	@ level_idc,
	add	r1, r5, sl	@ D.44369, D.44368, <variable>.SPS
	ldrb	sl, [r1, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	sl, #0	@ <variable>.is_valid,
	bne	.L3277	@,
.L3268:
	str	r9, [r1, #736]	@ profile_idc, <variable>.profile_idc
	mov	r0, r4	@, pH264Ctx
	ldr	r2, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	mov	r9, #1	@ tmp210,
	strb	r7, [r2, r5]	@ constrained_set0_flag, <variable>.constrained_set0_flag
	ldr	lr, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r1, lr, r5	@ tmp211, <variable>.SPS, D.44368
	strb	r6, [r1, #1]	@ constrained_set1_flag, <variable>.constrained_set1_flag
	ldr	ip, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	ldr	lr, [sp, #12]	@, %sfp
	add	r2, ip, r5	@ tmp217, <variable>.SPS, D.44368
	strb	lr, [r2, #2]	@, <variable>.constrained_set2_flag
	ldr	r1, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	ldr	ip, [sp, #8]	@, %sfp
	add	r2, r1, r5	@ tmp223, <variable>.SPS, D.44368
	strb	ip, [r2, #3]	@, <variable>.constrained_set3_flag
	ldr	lr, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r1, lr, r5	@ tmp229, <variable>.SPS, D.44368
	str	r3, [r1, #740]	@ level_idc, <variable>.level_idc
	ldr	ip, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r2, ip, r5	@ tmp234, <variable>.SPS, D.44368
	str	fp, [r2, #744]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	lr, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r1, r5, lr	@, D.44368, <variable>.SPS
	bl	ProcessSPS	@
	cmp	r0, #0	@ D.44385
	bne	.L3278	@,
	ldr	r3, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r2, r3, r5	@ tmp256, <variable>.SPS, D.44368
	strb	r9, [r2, #24]	@ tmp210, <variable>.is_refreshed
	ldr	lr, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r5, lr, r5	@ tmp263, <variable>.SPS, D.44368
	strb	r9, [r5, #23]	@ tmp210, <variable>.is_valid
	b	.L3259	@
.L3257:
	mvn	r0, #0	@ D.44350,
	b	.L3259	@
.L3265:
	cmp	r9, #122	@ profile_idc,
	beq	.L3264	@,
	cmp	r9, #144	@ profile_idc,
	beq	.L3264	@,
	cmp	r9, #110	@ profile_idc,
	beq	.L3264	@,
.L3260:
	bl	vfmw_dprint_nothing	@
	cmp	r5, #9	@ level_idc,
	mov	r9, #100	@ profile_idc,
	mov	r3, r5	@ level_idc, D.44345
	bhi	.L3266	@,
	b	.L3273	@
.L3276:
	mov	r1, #1	@ tmp195,
	strb	r1, [sl, #91]	@ tmp195, sps_tmp.is_valid
	strb	r1, [sl, #92]	@ tmp195, sps_tmp.is_refreshed
	add	r1, sl, #68	@, tmp176,
	ldr	r0, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r0, r5, r0	@, D.44368, <variable>.SPS
	bl	memmove	@
	mov	r0, r6	@ D.44350, D.44377
	b	.L3259	@
.L3275:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.44350,
	b	.L3259	@
.L3274:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r8]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	ip, r2, #1	@ tmp165, <variable>.MaxSpsNum,
	cmp	fp, ip	@ seq_parameter_set_id, tmp165
	bls	.L3257	@,
	movw	lr, #:lower16:g_event_report	@ tmp167,
	movt	lr, #:upper16:g_event_report	@ tmp167,
	ldr	r3, [lr, #0]	@ g_event_report.816, g_event_report
	cmp	r3, #0	@ g_event_report.816,
	beq	.L3257	@,
	str	r2, [sp, #20]	@ <variable>.MaxSpsNum, para
	movw	r2, #52840	@ tmp170,
	str	fp, [sp, #16]	@ seq_parameter_set_id, para
	mov	r1, #109	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r2, sp, #16	@,,
	blx	r3	@ g_event_report.816
	mvn	r0, #0	@ D.44350,
	b	.L3259	@
.L3278:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	mvn	r0, #0	@ D.44350,
	add	ip, r1, r5	@ tmp242, <variable>.SPS, D.44368
	strb	r9, [ip, #24]	@ tmp210, <variable>.is_refreshed
	ldr	r3, [r4, r8]	@ <variable>.SPS, <variable>.SPS
	add	r5, r3, r5	@ tmp249, <variable>.SPS, D.44368
	strb	sl, [r5, #23]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3259	@
	.fnend
	.size	H264_DecSPS, .-H264_DecSPS
	.align	2
	.global	ProcessPPS
	.type	ProcessPPS, %function
ProcessPPS:
	.fnstart
.LFB2023:
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
	movw	r6, #52780	@ tmp188,
	strb	r0, [r5, #0]	@, <variable>.entropy_coding_mode_flag
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3316	@,
.L3280:
	mvn	r0, #0	@ D.43350,
.L3283:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3316:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC103	@,
	movt	r1, #:upper16:.LC103	@,
	bl	u_1	@
	strb	r0, [r5, #1]	@, <variable>.pic_order_present_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3280	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.43355,
	str	r0, [r5, #32]	@ D.43355, <variable>.num_slice_groups_minus1
	bne	.L3281	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3281	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.43364,
	str	r0, [r5, #36]	@ D.43364, <variable>.num_ref_idx_l0_active_minus1
	bhi	.L3311	@,
	ldr	lr, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3311	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC106	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.43369,
	str	r0, [r5, #40]	@ D.43369, <variable>.num_ref_idx_l1_active_minus1
	bhi	.L3311	@,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3287	@,
.L3311:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43350,
	b	.L3283	@
.L3287:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.weighted_pred_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3280	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC108	@,
	movt	r2, #:upper16:.LC108	@,
	bl	u_v	@
	cmp	r0, #2	@ D.43378,
	str	r0, [r5, #44]	@ D.43378, <variable>.weighted_bipred_idc
	bhi	.L3311	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
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
	uxtb	r8, r0	@ D.43390,
	strb	r8, [r5, #17]	@ D.43390, <variable>.redundant_pic_cnt_present_flag
	cmp	r8, #0	@ D.43390,
	beq	.L3289	@,
	bl	vfmw_dprint_nothing	@
.L3289:
	ldr	lr, [r5, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	add	r3, r4, #13504	@, pH264Ctx,
	mov	r8, #0	@ tmp220,
	add	r0, r3, #24	@,,
	str	r8, [r5, #60]	@ tmp220, <variable>.transform_8x8_mode_flag
	str	lr, [r5, #56]	@ <variable>.chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	strb	r8, [r5, #18]	@ tmp220, <variable>.pic_scaling_matrix_present_flag
	bl	BsResidBits	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r2, [ip, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	add	r1, r2, #3	@ tmp226, <variable>.nal_trail_zero_bit_num,
	cmp	r0, r1	@, tmp226
	movcc	r0, #0	@ D.43350,
	bcc	.L3283	@
.L3317:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC115	@,
	movt	r1, #:upper16:.LC115	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	str	r0, [r5, #60]	@, <variable>.transform_8x8_mode_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.43404,
	strb	r0, [r5, #18]	@ D.43404, <variable>.pic_scaling_matrix_present_flag
	cmp	r0, #1	@ D.43404,
	beq	.L3318	@,
.L3291:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	se_v	@
	add	ip, r0, #12	@ tmp309, D.43490,
	str	r0, [r5, #56]	@ D.43490, <variable>.second_chroma_qp_index_offset
	cmp	ip, #24	@ tmp309,
	bhi	.L3311	@,
	movw	r3, #52780	@ tmp310,
	ldr	lr, [r4, r3]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3311	@,
	mov	r0, #0	@ D.43350,
	b	.L3283	@
.L3281:
	bl	vfmw_dprint_nothing	@
	movw	r2, #:lower16:g_event_report	@ tmp197,
	movt	r2, #:upper16:g_event_report	@ tmp197,
	ldr	r3, [r2, #0]	@ g_event_report.775, g_event_report
	cmp	r3, #0	@ g_event_report.775,
	beq	.L3280	@,
	movw	ip, #52840	@ tmp198,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.775
	mvn	r0, #0	@ D.43350,
	b	.L3283	@
.L3318:
	add	r9, r5, #1984	@ ivtmp.7788, pPPS,
	add	r7, sp, #16	@ ivtmp.7783,,
	add	r6, r5, #64	@, pPPS,
	str	r6, [sp, #8]	@, %sfp
	mov	sl, r9	@ ivtmp.7814, ivtmp.7788
	mov	fp, r9	@ ivtmp.7803, ivtmp.7788
	mov	r6, r8	@ i.7802, ivtmp.7789
.L3300:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	add	r1, r5, r6	@ tmp232, pPPS, i.7802
	mov	r2, #16	@,
	str	r0, [r7, #0]	@ D.43409, q4x4defaultflag
	mov	ip, r0	@ D.43409,
	strb	ip, [r1, #5]	@ D.43409, <variable>.pic_scaling_list_present_flag
	add	r0, r8, r9	@, ivtmp.7789, ivtmp.7788
	ldr	r3, [r7, #0]	@ tmp234, q4x4defaultflag
	cmp	r3, #1	@ tmp234,
	beq	.L3319	@,
	rsbs	ip, r6, #1	@ D.43432, i.7802
	movcc	ip, #0	@ D.43432
	cmp	r6, #0	@ i.7802,
	cmpne	r6, #3	@, i.7802,
	bne	.L3296	@,
	movw	lr, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	mov	lr, #4000	@,
	mla	r3, lr, r1, r3	@ D.43440,, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r1, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3320	@,
	ldr	r3, .L3324	@,
	cmp	ip, #0	@ D.43432,
	ldr	r1, .L3324+4	@,
	movne	r1, r3	@,
	bl	memcpy	@
.L3293:
	add	r6, r6, #1	@ i.7802, i.7802,
	ldr	lr, [sp, #8]	@, %sfp
	cmp	r6, #6	@ i.7802,
	add	r7, r7, #4	@ ivtmp.7783, ivtmp.7783,
	add	r0, lr, #64	@,,
	add	fp, fp, #16	@ ivtmp.7803, ivtmp.7803,
	add	r8, r8, #16	@ ivtmp.7789, ivtmp.7789,
	add	sl, sl, #16	@ ivtmp.7814, ivtmp.7814,
	str	r0, [sp, #8]	@, %sfp
	bne	.L3300	@,
	add	r8, r5, #2080	@, pPPS,
	ldr	fp, .L3324+8	@ tmp327,
	mov	r6, #0	@ ivtmp.7768,
	add	r9, r5, #448	@ ivtmp.7771, pPPS,
	add	r7, sp, #40	@ ivtmp.7773,,
	str	r8, [sp, #8]	@, %sfp
	mov	sl, r8	@ ivtmp.7767,
	mov	r8, r6	@ i, ivtmp.7768
	str	r5, [sp, #12]	@ pPPS, %sfp
.L3310:
	ldr	ip, [r5, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	mov	r3, #0	@ prephitmp.7749,
	cmp	ip, #1	@ <variable>.transform_8x8_mode_flag,
	movne	r1, #0	@,
	strne	r1, [r7, #0]	@, q8x8defaultflag
	beq	.L3321	@,
.L3302:
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r2, [sp, #8]	@, %sfp
	strb	r3, [lr, #11]	@ prephitmp.7749, <variable>.pic_scaling_list_present_flag
	add	r0, r2, r6	@,, ivtmp.7768
	ldr	r1, [r7, #0]	@ tmp279, q8x8defaultflag
	mov	r2, #64	@,
	cmp	r1, #1	@ tmp279,
	beq	.L3322	@,
	movw	ip, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	mov	lr, #4000	@,
	mla	r3, lr, r1, r3	@ temp.7808,, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	ip, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	ip, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3323	@,
	cmp	r8, #0	@ i,
	ldr	r1, .L3324+12	@,
	moveq	r1, fp	@, tmp327
	bl	memcpy	@
.L3304:
	add	r8, r8, #1	@ i, i,
	ldr	r0, [sp, #12]	@, %sfp
	cmp	r8, #2	@ i,
	add	sl, sl, #64	@ ivtmp.7767, ivtmp.7767,
	add	r1, r0, #1	@,,
	add	r6, r6, #64	@ ivtmp.7768, ivtmp.7768,
	add	r9, r9, #256	@ ivtmp.7771, ivtmp.7771,
	add	r7, r7, #4	@ ivtmp.7773, ivtmp.7773,
	str	r1, [sp, #12]	@, %sfp
	beq	.L3291	@,
	b	.L3310	@
.L3296:
	mov	r0, sl	@, ivtmp.7814
	sub	r1, sl, #16	@, ivtmp.7814,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3293	@
.L3320:
	add	r2, r3, #2672	@ tmp256, D.43440,
	add	r0, r8, r9	@, ivtmp.7789, ivtmp.7788
	add	ip, r2, #8	@ tmp256, tmp256,
	mov	r2, #16	@,
	add	r1, ip, r8	@, tmp256, ivtmp.7789
	bl	memcpy	@
	b	.L3293	@
.L3319:
	mov	r2, fp	@, ivtmp.7803
	ldr	r1, [sp, #8]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	add	r3, r3, #15	@,,
	str	r7, [sp, #0]	@ ivtmp.7783,
	bl	Scaling_List	@
	ldr	r2, [r7, #0]	@ tmp235, q4x4defaultflag
	cmp	r2, #1	@ tmp235,
	bne	.L3293	@,
	ldr	lr, .L3324+4	@,
	cmp	r6, #2	@ i.7802,
	ldr	r1, .L3324	@,
	mov	r0, fp	@, ivtmp.7803
	mov	r2, #16	@,
	movhi	r1, lr	@,
	bl	memcpy	@
	b	.L3293	@
.L3323:
	ldr	r1, [sp, #8]	@, %sfp
	add	r2, r3, #2768	@ tmp294, temp.7808,
	add	r3, r2, #8	@ tmp294, tmp294,
	mov	r2, #64	@,
	add	r0, r1, r6	@,, ivtmp.7768
	add	r1, r3, r6	@, tmp294, ivtmp.7768
	bl	memcpy	@
	b	.L3304	@
.L3322:
	mov	r3, r2	@,
	mov	r1, r9	@, ivtmp.7771
	mov	r2, sl	@, ivtmp.7767
	mov	r0, r4	@, pH264Ctx
	str	r7, [sp, #0]	@ ivtmp.7773,
	bl	Scaling_List	@
	ldr	r3, [r7, #0]	@ tmp280, q8x8defaultflag
	cmp	r3, #1	@ tmp280,
	bne	.L3304	@,
	cmp	r8, #0	@ i,
	ldr	r1, .L3324+12	@,
	mov	r2, #64	@,
	mov	r0, sl	@, ivtmp.7767
	moveq	r1, fp	@, tmp327
	bl	memcpy	@
	b	.L3304	@
.L3321:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC117	@,
	movt	r1, #:upper16:.LC117	@,
	bl	u_1	@
	uxtb	r3, r0	@ prephitmp.7749, D.43458
	str	r0, [r7, #0]	@ D.43458, q8x8defaultflag
	b	.L3302	@
.L3325:
	.align	2
.L3324:
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
.LFB2022:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r1, #:lower16:.LC119	@,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r1, #:upper16:.LC119	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r4, #13576	@ tmp145,
	mov	r5, r0	@ pic_parameter_set_id,
	ldr	r0, [r6, r4]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r0, #1	@ tmp146, <variable>.MaxPpsNum,
	cmp	r5, r3	@ pic_parameter_set_id, tmp146
	bhi	.L3338	@,
	mov	r0, r6	@, pH264Ctx
	movw	r1, #:lower16:.LC120	@,
	movt	r1, #:upper16:.LC120	@,
	bl	ue_v	@
	movw	ip, #13572	@ tmp157,
	ldr	r1, [r6, ip]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	mov	r3, r0	@ seq_parameter_set_id,
	sub	r0, r1, #1	@ tmp158, <variable>.MaxSpsNum,
	cmp	r3, r0	@ seq_parameter_set_id, tmp158
	bhi	.L3337	@,
	movw	ip, #13580	@ tmp161,
	mov	r1, #4000	@ tmp163,
	ldr	r0, [r6, ip]	@ <variable>.SPS, <variable>.SPS
	mla	r2, r1, r3, r0	@ tmp164, tmp163, seq_parameter_set_id, <variable>.SPS
	ldrb	lr, [r2, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	beq	.L3337	@,
	mov	sl, #2208	@ tmp166,
	movw	r7, #13584	@ tmp167,
	mul	r4, sl, r5	@ D.43315, tmp166, pic_parameter_set_id
	ldr	r8, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r2, r4, r8	@ D.43316, D.43315, <variable>.PPS
	ldrb	r8, [r2, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r8, #0	@ <variable>.is_valid,
	bne	.L3339	@,
	str	r5, [r2, #24]	@ pic_parameter_set_id, <variable>.pic_parameter_set_id
	mov	r0, r6	@, pH264Ctx
	ldr	r1, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	ip, r1, r4	@ tmp197, <variable>.PPS, D.43315
	str	r3, [ip, #28]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r2, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r1, r4, r2	@, D.43315, <variable>.PPS
	bl	ProcessPPS	@
	cmp	r0, #0	@ D.43328
	bne	.L3340	@,
	ldr	ip, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	mov	lr, #1	@ tmp221,
	add	r2, ip, r4	@ tmp219, <variable>.PPS, D.43315
	strb	lr, [r2, #20]	@ tmp221, <variable>.is_refreshed
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r4, r3, r4	@ tmp226, <variable>.PPS, D.43315
	strb	lr, [r4, #19]	@ tmp221, <variable>.is_valid
.L3329:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L3339:
	movw	r8, #:lower16:.LANCHOR1	@ tmp170,
	movt	r8, #:upper16:.LANCHOR1	@ tmp170,
	add	r2, r8, #4064	@, tmp170,
	mov	lr, #4096	@ tmp172,
	str	r5, [r8, #4092]	@ pic_parameter_set_id, pps_tmp.pic_parameter_set_id
	add	r1, r2, #4	@,,
	mov	r0, r6	@, pH264Ctx
	str	r3, [r8, lr]	@ seq_parameter_set_id, pps_tmp.seq_parameter_set_id
	bl	ProcessPPS	@
	subs	r5, r0, #0	@ D.43320,
	bne	.L3337	@,
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r0, r8, #4064	@, tmp170,
	add	r0, r0, #4	@,,
	add	r1, r4, r3	@, D.43315, <variable>.PPS
	bl	PPSEqual	@
	cmp	r0, #0	@ D.43323
	beq	.L3329	@,
	mov	lr, #1	@ tmp183,
	strb	lr, [r8, #4087]	@ tmp183, pps_tmp.is_valid
	strb	lr, [r8, #4088]	@ tmp183, pps_tmp.is_refreshed
	add	r1, r8, #4064	@, tmp170,
	ldr	ip, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r1, r1, #4	@,,
	mov	r2, sl	@, tmp166
	add	r0, r4, ip	@, D.43315, <variable>.PPS
	bl	memmove	@
	mov	r0, r5	@ D.43301, D.43320
	b	.L3329	@
.L3337:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43301,
	b	.L3329	@
.L3338:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, r4]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r1, r2, #1	@ tmp149, <variable>.MaxPpsNum,
	cmp	r5, r1	@ pic_parameter_set_id, tmp149
	bhi	.L3341	@,
.L3328:
	mvn	r0, #0	@ D.43301,
	b	.L3329	@
.L3341:
	movw	ip, #:lower16:g_event_report	@ tmp151,
	movt	ip, #:upper16:g_event_report	@ tmp151,
	ldr	r3, [ip, #0]	@ g_event_report.773, g_event_report
	cmp	r3, #0	@ g_event_report.773,
	beq	.L3328	@,
	str	r2, [sp, #4]	@ <variable>.MaxPpsNum, para
	movw	r2, #52840	@ tmp154,
	str	r5, [sp, #0]	@ pic_parameter_set_id, para
	mov	r1, #110	@,
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	mov	r2, sp	@,
	blx	r3	@ g_event_report.773
	mvn	r0, #0	@ D.43301,
	b	.L3329	@
.L3340:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	mov	r2, #1	@ tmp207,
	mvn	r0, #0	@ D.43301,
	add	ip, r1, r4	@ tmp205, <variable>.PPS, D.43315
	strb	r2, [ip, #20]	@ tmp207, <variable>.is_refreshed
	ldr	r3, [r6, r7]	@ <variable>.PPS, <variable>.PPS
	add	r4, r3, r4	@ tmp212, <variable>.PPS, D.43315
	strb	r8, [r4, #19]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3329	@
	.fnend
	.size	H264_DecPPS, .-H264_DecPPS
	.align	2
	.global	ProcessSliceHeaderFirstPart
	.type	ProcessSliceHeaderFirstPart, %function
ProcessSliceHeaderFirstPart:
	.fnstart
.LFB2015:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r1, #13576	@ tmp160,
	mov	r5, r0	@ tmp_pic_parameter_set_id,
	ldr	r0, [r4, r1]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r0, #1	@ tmp161, <variable>.MaxPpsNum,
	cmp	r5, r3	@ tmp_pic_parameter_set_id, tmp161
	bhi	.L3370	@,
	movw	ip, #52780	@ tmp163,
	ldr	r2, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3370	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, tmp_pic_parameter_set_id
	bl	PPSSPSCheckTmpId	@
	cmp	r0, #0	@,
	bne	.L3370	@,
	movw	r3, #13584	@ tmp166,
	mov	r6, #2208	@ tmp168,
	ldr	ip, [r4, r3]	@ <variable>.PPS, <variable>.PPS
	movw	r2, #20683	@ tmp175,
	movw	lr, #20692	@ tmp165,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r1, #13580	@ tmp170,
	str	r5, [r4, lr]	@ tmp_pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mla	r6, r6, r5, ip	@ pPPS, tmp168, tmp_pic_parameter_set_id, <variable>.PPS
	ldr	r3, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	mov	r5, #4000	@ tmp173,
	ldr	lr, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, lr, r3	@ pSPS, tmp173, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L3347	@,
	ldr	r0, [r5, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	cmp	r0, #0	@ <variable>.num_ref_frames,
	bne	.L3348	@,
.L3347:
	movw	ip, #20680	@ tmp178,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L3348	@,
.L3370:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42758,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3348:
	ldr	lr, [r5, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC122	@,
	movt	r2, #:upper16:.LC122	@,
	add	r1, lr, #4	@, <variable>.log2_max_frame_num_minus4,
	bl	u_v	@
	movw	r1, #52780	@ tmp184,
	ldr	r3, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20700	@ tmp183,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.42778, <variable>.CurrSlice.frame_num
	bne	.L3349	@,
	movw	r8, #20683	@ tmp186,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3371	@,
.L3350:
	movw	r7, #20681	@ tmp191,
	movw	r8, #20682	@ tmp194,
	mov	r3, #0	@ tmp192,
	strb	r3, [r4, r7]	@ tmp192, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, r8]	@ tmp192, <variable>.CurrSlice.bottom_field_flag
	ldrb	r0, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r0, r3	@ <variable>.frame_mbs_only_flag,
	beq	.L3372	@,
	ldr	r2, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	ldr	r1, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	ip, r2, #1	@ tmp273, <variable>.pic_height_in_map_units_minus1,
	mla	r2, r1, ip, ip	@ D.42803, <variable>.pic_width_in_mbs_minus1, tmp273, tmp273
.L3368:
	mov	r1, #1	@ iftmp.744,
.L3355:
	cmp	r3, #0	@ prephitmp.7904,
	mul	r2, r1, r2	@ pic_size, iftmp.744, D.42803
	movne	r3, #0	@ prephitmp.7874,
	bne	.L3357	@,
	ldrb	r1, [r5, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	subs	r3, r1, #0	@ prephitmp.7874, <variable>.mb_adaptive_frame_field_flag,
	movne	r3, #1	@ prephitmp.7874
.L3357:
	movw	ip, #20681	@ tmp215,
	movw	r0, #20684	@ tmp213,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, r0]	@ prephitmp.7874, <variable>.CurrSlice.MbaffFrameFlag
	cmp	lr, #1	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L3358	@,
	cmp	r3, #1	@ prephitmp.7874,
	beq	.L3358	@,
	movw	r0, #20732	@ tmp220,
	ldr	lr, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r2, lr	@ pic_size, <variable>.CurrSlice.first_mb_in_slice
	bls	.L3370	@,
.L3360:
	movw	r8, #20683	@ tmp222,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3373	@,
.L3361:
	movw	r7, #19796	@ tmp229,
	movw	r8, #19800	@ tmp231,
	mov	lr, #0	@ tmp230,
	str	lr, [r4, r8]	@ tmp230, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	str	lr, [r4, r7]	@ tmp230, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r5, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r1, #0	@ <variable>.pic_order_cnt_type,
	beq	.L3374	@,
.L3363:
	movw	r7, #19844	@ tmp243,
	movw	r8, #19848	@ tmp245,
	mov	r1, #0	@ tmp244,
	str	r1, [r4, r8]	@ tmp244, <variable>.CurrPOC.delta_pic_order_cnt
	str	r1, [r4, r7]	@ tmp244, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r3, [r5, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r3, #1	@ <variable>.pic_order_cnt_type,
	beq	.L3375	@,
.L3364:
	movw	r5, #52780	@ tmp256,
	ldr	r2, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3349	@,
	ldrb	r3, [r6, #17]	@ zero_extendqisi2	@ <variable>.redundant_pic_cnt_present_flag, <variable>.redundant_pic_cnt_present_flag
	cmp	r3, #0	@ <variable>.redundant_pic_cnt_present_flag,
	beq	.L3365	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC130	@,
	movt	r1, #:upper16:.LC130	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3366	@,
	ldr	r1, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3366	@,
.L3365:
	mov	r0, r4	@, pH264Ctx
	bl	IsNewPic	@
	movw	r2, #20685	@ tmp264,
	uxtb	ip, r0	@ D.42871,
	strb	ip, [r4, r2]	@ D.42871, <variable>.CurrSlice.new_pic_flag
	cmp	ip, #0	@ D.42871,
	bne	.L3367	@,
	movw	lr, #22368	@ tmp267,
	movw	r0, #20732	@ tmp266,
	ldr	r3, [r4, lr]	@ <variable>.PrevSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	ldr	r1, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r1, r3	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	bls	.L3370	@,
.L3367:
	mov	r0, #0	@ D.42758,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3349:
	mvn	r0, #0	@ D.42758,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3372:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC123	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.42793,
	strb	r3, [r4, r7]	@ D.42793, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ D.42793,
	bne	.L3376	@,
.L3353:
	ldr	ip, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r1, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r2, ip, #1	@ tmp207, <variable>.pic_width_in_mbs_minus1,
	cmp	lr, #0	@ <variable>.frame_mbs_only_flag,
	mla	r2, r1, r2, r2	@ D.42803, <variable>.pic_height_in_map_units_minus1, tmp207, tmp207
	moveq	r1, #2	@ iftmp.744,
	beq	.L3355	@,
	movw	r3, #20681	@ tmp210,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.7904, <variable>.CurrSlice.field_pic_flag
	b	.L3368	@
.L3371:
	cmp	r0, #0	@ D.42778,
	movw	ip, #20696	@ tmp188,
	str	r0, [r4, ip]	@ D.42778, <variable>.CurrSlice.prev_frame_num
	beq	.L3350	@,
	bl	vfmw_dprint_nothing	@
	b	.L3350	@
.L3358:
	movw	r1, #20732	@ tmp218,
	ldr	r3, [r4, r1]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r3, r2, lsr #1	@ <variable>.CurrSlice.first_mb_in_slice, pic_size,
	bcc	.L3360	@,
	b	.L3370	@
.L3374:
	ldr	ip, [r5, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC126	@,
	movt	r2, #:upper16:.LC126	@,
	add	r1, ip, #4	@, <variable>.log2_max_pic_order_cnt_lsb_minus4,
	bl	u_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.pic_order_cnt_lsb
	ldrb	r0, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r0, #0	@ <variable>.pic_order_present_flag,
	beq	.L3363	@,
	movw	r2, #20681	@ tmp239,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r7, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3363	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC127	@,
	movt	r1, #:upper16:.LC127	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	b	.L3363	@
.L3375:
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	cmp	lr, #0	@ <variable>.delta_pic_order_always_zero_flag,
	bne	.L3364	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC128	@,
	movt	r1, #:upper16:.LC128	@,
	bl	se_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldrb	r5, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r5, #1	@ <variable>.pic_order_present_flag,
	bne	.L3364	@,
	movw	ip, #20681	@ tmp252,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3364	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC129	@,
	movt	r1, #:upper16:.LC129	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt
	b	.L3364	@
.L3373:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC125	@,
	movt	r1, #:upper16:.LC125	@,
	bl	ue_v	@
	movw	r2, #20720	@ tmp225,
	cmp	r0, #65536	@ D.42828,
	str	r0, [r4, r2]	@ D.42828, <variable>.CurrSlice.idr_pic_id
	bcs	.L3362	@,
	movw	r3, #52780	@ tmp227,
	ldr	ip, [r4, r3]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	beq	.L3361	@,
.L3362:
	bl	vfmw_dprint_nothing	@
	b	.L3361	@
.L3376:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC124	@,
	movt	r1, #:upper16:.LC124	@,
	bl	u_1	@
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ prephitmp.7904, <variable>.CurrSlice.field_pic_flag
	strb	r0, [r4, r8]	@, <variable>.CurrSlice.bottom_field_flag
	b	.L3353	@
.L3366:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_event_report	@ tmp262,
	movt	r0, #:upper16:g_event_report	@ tmp262,
	ldr	r3, [r0, #0]	@ g_event_report.747, g_event_report
	cmp	r3, #0	@ g_event_report.747,
	beq	.L3349	@,
	movw	lr, #52840	@ tmp263,
	mov	r1, #102	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.747
	mvn	r0, #0	@ D.42758,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	ProcessSliceHeaderFirstPart, .-ProcessSliceHeaderFirstPart
	.align	2
	.global	DecMMCO
	.type	DecMMCO, %function
DecMMCO:
	.fnstart
.LFB2013:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ save
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	moveq	r6, r1	@ MMCONum.7945, save
	movweq	r7, #52780	@ tmp294,
	beq	.L3379	@,
	mov	r5, #0	@ MMCONum,
	movw	r9, #26380	@ tmp281,
	movw	sl, #2004	@ tmp283,
	movw	fp, #52780	@ tmp288,
	b	.L3380	@
.L3382:
	cmp	r3, #2	@ prephitmp.7921,
	beq	.L3413	@,
.L3383:
	cmp	r3, #3	@ prephitmp.7921,
	cmpne	r3, #6	@, prephitmp.7921,
	beq	.L3414	@,
.L3384:
	cmp	r3, #4	@ prephitmp.7921,
	beq	.L3415	@,
.L3385:
	cmp	r3, #6	@ prephitmp.7921,
	bhi	.L3386	@,
.L3416:
	ldr	lr, [r4, fp]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3386	@,
	cmp	r3, #0	@ prephitmp.7921,
	beq	.L3389	@,
	add	r5, r5, #1	@ MMCONum, MMCONum,
	cmp	r5, #100	@ MMCONum,
	beq	.L3386	@,
.L3380:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	ldr	r8, [r4, r9]	@ D.42623, <variable>.CurrMarkIdx
	bl	ue_v	@
	mov	r7, r5, asl #2	@ tmp280, MMCONum,
	add	ip, r7, r5	@ tmp152, tmp280, MMCONum
	mul	r2, sl, r8	@ tmp154, tmp283, D.42623
	add	r1, r2, ip, asl #2	@, tmp156, tmp154, tmp152,
	mov	r3, r0	@ prephitmp.7921,
	cmp	r0, #1	@ prephitmp.7921,
	cmpne	r0, #3	@, prephitmp.7921,
	add	r0, r1, r4	@ tmp157, tmp156, pH264Ctx
	add	r6, r0, #22272	@ tmp158, tmp157,
	add	r6, r6, #96	@ tmp158, tmp158,
	str	r3, [r6, #8]	@ prephitmp.7921, <variable>.memory_management_control_operation
	bne	.L3382	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	bl	ue_v	@
	ldr	r3, [r6, #8]	@ prephitmp.7921, <variable>.memory_management_control_operation
	cmp	r3, #2	@ prephitmp.7921,
	str	r0, [r6, #12]	@, <variable>.difference_of_pic_nums_minus1
	bne	.L3383	@,
.L3413:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC133	@,
	movt	r1, #:upper16:.LC133	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp193, tmp283, D.42623
	add	r1, r7, r5	@ tmp191, tmp280, MMCONum
	add	ip, r3, r1, asl #2	@, tmp195, tmp193, tmp191,
	add	r2, ip, r4	@ tmp196, tmp195, pH264Ctx
	add	r1, r2, #22272	@ tmp207, tmp196,
	add	r3, r1, #96	@ tmp207, tmp207,
	add	r1, r1, #104	@ tmp197, tmp197,
	ldr	r3, [r3, #8]	@ prephitmp.7921, <variable>.memory_management_control_operation
	cmp	r3, #3	@ prephitmp.7921,
	cmpne	r3, #6	@, prephitmp.7921,
	str	r0, [r1, #8]	@, <variable>.long_term_pic_num
	bne	.L3384	@,
.L3414:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC134	@,
	movt	r1, #:upper16:.LC134	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp221, tmp283, D.42623
	add	r1, r7, r5	@ tmp219, tmp280, MMCONum
	add	ip, r3, r1, asl #2	@, tmp223, tmp221, tmp219,
	add	r2, ip, r4	@ tmp224, tmp223, pH264Ctx
	add	r3, r2, #22272	@ tmp235, tmp224,
	add	ip, r3, #96	@ tmp235, tmp235,
	add	r2, r3, #104	@ tmp225, tmp225,
	ldr	r3, [ip, #8]	@ prephitmp.7921, <variable>.memory_management_control_operation
	cmp	r3, #4	@ prephitmp.7921,
	str	r0, [r2, #12]	@, <variable>.long_term_frame_idx
	bne	.L3385	@,
.L3415:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	bl	ue_v	@
	mul	r8, sl, r8	@ tmp242, tmp283, D.42623
	add	r1, r7, r5	@ tmp240, tmp280, MMCONum
	add	ip, r8, r1, asl #2	@, tmp244, tmp242, tmp240,
	add	r2, ip, r4	@ tmp245, tmp244, pH264Ctx
	add	r3, r2, #22272	@ tmp256, tmp245,
	add	ip, r3, #96	@ tmp256, tmp256,
	add	r2, r3, #112	@ tmp246, tmp246,
	ldr	r3, [ip, #8]	@ prephitmp.7921, <variable>.memory_management_control_operation
	cmp	r3, #6	@ prephitmp.7921,
	str	r0, [r2, #8]	@, <variable>.max_long_term_frame_idx_plus1
	bls	.L3416	@,
.L3386:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42622,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3389:
	mov	r0, #0	@ D.42622,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3379:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.42665
	moveq	r8, #1	@, D.42665
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3417	@,
.L3390:
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3418	@,
.L3391:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp273, D.42665
	cmp	r8, #0	@ tmp273,
	bne	.L3419	@,
.L3392:
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3420	@,
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3395	@,
.L3394:
	ldr	r0, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3395	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3389	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	add	r6, r6, #1	@ tmp295, MMCONum.7945,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.42665
	moveq	r8, #1	@, D.42665
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3421	@,
.L3401:
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3422	@,
.L3402:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp308, D.42665
	cmp	r8, #0	@ tmp308,
	bne	.L3423	@,
.L3403:
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3409	@,
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3395	@,
.L3410:
	ldr	r3, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3395	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3389	@,
	add	r6, r6, #1	@ MMCONum.7945, tmp295,
	cmp	r6, #100	@ MMCONum.7945,
	bne	.L3379	@,
.L3412:
	mvn	r0, #0	@ D.42622,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3419:
	movw	r1, #:lower16:.LC134	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC134	@,
	bl	ue_v	@
	b	.L3392	@
.L3417:
	movw	r1, #:lower16:.LC132	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC132	@,
	bl	ue_v	@
	b	.L3390	@
.L3423:
	movw	r1, #:lower16:.LC134	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC134	@,
	bl	ue_v	@
	b	.L3403	@
.L3421:
	movw	r1, #:lower16:.LC132	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC132	@,
	bl	ue_v	@
	b	.L3401	@
.L3420:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	bl	ue_v	@
	b	.L3394	@
.L3418:
	movw	r1, #:lower16:.LC133	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC133	@,
	bl	ue_v	@
	b	.L3391	@
.L3422:
	movw	r1, #:lower16:.LC133	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC133	@,
	bl	ue_v	@
	b	.L3402	@
.L3409:
	movw	r1, #:lower16:.LC135	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC135	@,
	bl	ue_v	@
	b	.L3410	@
.L3395:
	bl	vfmw_dprint_nothing	@
	b	.L3412	@
	.fnend
	.size	DecMMCO, .-DecMMCO
	.align	2
	.global	dec_ref_pic_marking
	.type	dec_ref_pic_marking, %function
dec_ref_pic_marking:
	.fnstart
.LFB2014:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #20685	@ tmp149,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r8, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	movw	r3, #26380	@ tmp148,
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r8, #0	@ <variable>.CurrSlice.new_pic_flag,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r6, [r0, r3]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	bne	.L3425	@,
	movw	ip, #2004	@ tmp157,
	mov	r5, r6	@ tmpMarkIdx.7969, tmpMarkIdx
	mla	r2, ip, r6, r0	@ tmp158, tmp157, tmpMarkIdx, pH264Ctx
	add	r7, r2, #22272	@ tmp159, tmp158,
	add	r7, r7, #96	@ tmp159, tmp159,
	ldrb	r1, [r7, #4]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L3428	@,
	movw	lr, #20683	@ tmp161,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3438	@,
.L3429:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	bl	u_1	@
	movw	r2, #2004	@ tmp180,
	mla	r5, r2, r5, r4	@ tmp181, tmp180, tmpMarkIdx.7969, pH264Ctx
	add	ip, r5, #22272	@ tmp182, tmp181,
	add	r5, ip, #96	@ tmp182, tmp182,
	strb	r0, [r5, #7]	@, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r1, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L3439	@,
.L3431:
	mov	r0, #0	@ D.42721,
.L3430:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L3425:
	movw	lr, #20683	@ tmp161,
	rsbs	r5, r6, #1	@ tmpMarkIdx.7969, tmpMarkIdx
	movcc	r5, #0	@ tmpMarkIdx.7969
	str	r5, [r0, r3]	@ tmpMarkIdx.7969, <variable>.CurrMarkIdx
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	bne	.L3429	@,
.L3438:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	bl	u_1	@
	movw	r3, #2004	@ tmp166,
	mla	r2, r3, r5, r4	@ tmp167, tmp166, tmpMarkIdx.7969, pH264Ctx
	movw	r1, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC137	@,
	add	r5, r2, #22272	@ tmp168, tmp167,
	add	r5, r5, #96	@ tmp168, tmp168,
	strb	r0, [r5, #5]	@, <variable>.no_output_of_prior_pics_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r5, #6]	@, <variable>.long_term_reference_flag
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42721,
	b	.L3430	@
.L3428:
	movw	ip, #20683	@ tmp205,
	ldrb	r1, [r0, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r1, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3440	@,
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	ldrb	r5, [r7, #7]	@ zero_extendqisi2	@ D.42735, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	u_1	@
	cmp	r5, r0	@ D.42735,
	bne	.L3441	@,
	ldrb	r0, [r7, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r0, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L3431	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, <variable>.CurrSlice.new_pic_flag
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	DecMMCO	@
.L3439:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	DecMMCO	@
	cmn	r0, #1	@ D.42718,
	movne	r3, #1	@ tmp203,
	movne	r0, #0	@ D.42721,
	strneb	r3, [r5, #4]	@ tmp203, <variable>.is_valid
	bne	.L3430	@,
	movw	lr, #26380	@ tmp197,
	mov	r3, #0	@ tmp195,
	strb	r3, [r5, #4]	@ tmp195, <variable>.is_valid
	str	r6, [r4, lr]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	str	r0, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #4]	@,
	b	.L3430	@
.L3440:
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	ldrb	r5, [r7, #5]	@ zero_extendqisi2	@ D.42725, <variable>.no_output_of_prior_pics_flag
	bl	u_1	@
	cmp	r5, r0	@ D.42725,
	bne	.L3437	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC137	@,
	ldrb	r4, [r7, #6]	@ zero_extendqisi2	@ D.42730, <variable>.long_term_reference_flag
	bl	u_1	@
	cmp	r4, r0	@ D.42730,
	beq	.L3431	@,
.L3437:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42721,
	b	.L3430	@
.L3441:
	bl	vfmw_dprint_nothing	@
	b	.L3437	@
	.fnend
	.size	dec_ref_pic_marking, .-dec_ref_pic_marking
	.align	2
	.global	pred_weight_table
	.type	pred_weight_table, %function
pred_weight_table:
	.fnstart
.LFB2012:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r9, #13584	@ tmp162,
	movw	r6, #20692	@ tmp163,
	ldr	r4, [r0, r9]	@ <variable>.PPS, <variable>.PPS
	ldr	ip, [r0, r6]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	fp, #2208	@ tmp166,
	movw	r1, #13580	@ tmp168,
	mov	r7, #4000	@ tmp171,
	ldr	r3, [r0, r1]	@ <variable>.SPS, <variable>.SPS
	movw	r1, #:lower16:.LC139	@,
	mla	fp, fp, ip, r4	@ pPPS, tmp166, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movt	r1, #:upper16:.LC139	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r6, #20744	@ tmp174,
	mov	r4, #1	@ tmp175,
	ldr	r2, [fp, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp171, <variable>.seq_parameter_set_id, <variable>.SPS
	bl	ue_v	@
	str	r0, [r5, r6]	@ prephitmp.7988, <variable>.CurrSlice.luma_log2_weight_denom
	mov	sl, r4, asl r0	@ y_default_weight, tmp175,
	ldr	r9, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r9, #0	@ <variable>.chroma_format_idc,
	bne	.L3466	@,
.L3444:
	cmp	r0, #7	@ prephitmp.7988,
	bhi	.L3445	@,
	movw	lr, #20748	@ tmp181,
	ldr	r0, [r5, lr]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	cmp	r0, #7	@ <variable>.CurrSlice.chroma_log2_weight_denom,
	bhi	.L3445	@,
	movw	ip, #52780	@ tmp183,
	ldr	r6, [r5, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r6, #0	@ <variable>.SeErrFlg,
	addeq	r4, r5, #20736	@ ivtmp.8017, pH264Ctx,
	addeq	r4, r4, #16	@ ivtmp.8017, ivtmp.8017,
	moveq	r8, #20736	@ tmp244,
	beq	.L3453	@,
.L3445:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42552,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3469:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC142	@,
	movt	r1, #:upper16:.LC142	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC143	@,
	movt	r1, #:upper16:.LC143	@,
	str	r0, [r4, #0]	@, <variable>.CurrSlice.wp_weight_l0_y
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #768]	@, <variable>.CurrSlice.wp_offset_l0_y
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3467	@,
.L3450:
	str	r3, [r4, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_v
	str	r3, [r4, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_u
	str	r3, [r4, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_u
	str	r3, [r4, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_v
.L3452:
	ldr	r1, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r6, r6, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.8017, ivtmp.8017,
	cmp	r1, r6	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcc	.L3468	@,
.L3453:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	bl	u_1	@
	cmp	r0, #0	@ D.42553
	streq	r0, [r4, #768]	@ D.42553, <variable>.CurrSlice.wp_offset_l0_y
	streq	sl, [r4, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l0_y
	bne	.L3469	@,
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	beq	.L3450	@,
.L3467:
	movw	r1, #:lower16:.LC144	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC144	@,
	bl	u_1	@
	cmp	r0, #0	@ D.42562
	bne	.L3470	@,
	ldr	r1, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r6, r6, #1	@ i, i,
	str	r0, [r4, #1024]	@ D.42562, <variable>.CurrSlice.wp_offset_l0_v
	cmp	r1, r6	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	str	r9, [r4, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_u
	str	r0, [r4, #896]	@ D.42562, <variable>.CurrSlice.wp_offset_l0_u
	str	r9, [r4, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_v
	add	r4, r4, #4	@ ivtmp.8017, ivtmp.8017,
	bcs	.L3453	@,
.L3468:
	ldr	r2, [fp, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r2, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3471	@,
.L3454:
	movw	ip, #52780	@ tmp226,
	ldr	r0, [r5, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	mvnne	r0, #0	@, D.42552,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3470:
	movw	r1, #:lower16:.LC145	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC145	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC146	@,
	movt	r1, #:upper16:.LC146	@,
	str	r0, [r4, #128]	@, <variable>.CurrSlice.wp_weight_l0_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC145	@,
	movt	r1, #:upper16:.LC145	@,
	str	r0, [r4, #896]	@, <variable>.CurrSlice.wp_offset_l0_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC146	@,
	movt	r1, #:upper16:.LC146	@,
	str	r0, [r4, #256]	@, <variable>.CurrSlice.wp_weight_l0_v
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #1024]	@, <variable>.CurrSlice.wp_offset_l0_v
	b	.L3452	@
.L3466:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC140	@,
	movt	r1, #:upper16:.LC140	@,
	bl	ue_v	@
	movw	r2, #20748	@ tmp178,
	mov	r3, r0	@ D.42544,
	ldr	r0, [r5, r6]	@ prephitmp.7988, <variable>.CurrSlice.luma_log2_weight_denom
	mov	r9, r4, asl r3	@ uv_default_weight, tmp175,
	str	r3, [r5, r2]	@ D.42544, <variable>.CurrSlice.chroma_log2_weight_denom
	b	.L3444	@
.L3471:
	movw	r0, #20680	@ tmp205,
	ldrb	r3, [r5, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3454	@,
	add	r8, r5, #20992	@ ivtmp.8007, pH264Ctx,
	mov	r6, #0	@ i.8021,
	add	r4, r8, #144	@ ivtmp.8007, ivtmp.8007,
	movw	r8, #20740	@ tmp237,
	b	.L3460	@
.L3456:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3472	@,
.L3457:
	str	r3, [r4, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_v
	str	r3, [r4, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_u
	str	r3, [r4, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_u
	str	r3, [r4, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_v
.L3459:
	ldr	lr, [r5, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #1	@ i.8021, i.8021,
	add	r4, r4, #4	@ ivtmp.8007, ivtmp.8007,
	cmp	lr, r6	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.8021
	bcc	.L3454	@,
.L3460:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC147	@,
	movt	r1, #:upper16:.LC147	@,
	bl	u_1	@
	cmp	r0, #0	@ D.42578
	streq	r0, [r4, #768]	@ D.42578, <variable>.CurrSlice.wp_offset_l1_y
	streq	sl, [r4, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l1_y
	beq	.L3456	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC148	@,
	movt	r1, #:upper16:.LC148	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC149	@,
	movt	r1, #:upper16:.LC149	@,
	str	r0, [r4, #0]	@, <variable>.CurrSlice.wp_weight_l1_y
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #768]	@, <variable>.CurrSlice.wp_offset_l1_y
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	beq	.L3457	@,
.L3472:
	movw	r1, #:lower16:.LC150	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC150	@,
	bl	u_1	@
	cmp	r0, #0	@ D.42586
	bne	.L3473	@,
	str	r0, [r4, #1024]	@ D.42586, <variable>.CurrSlice.wp_offset_l1_v
	str	r9, [r4, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_u
	str	r0, [r4, #896]	@ D.42586, <variable>.CurrSlice.wp_offset_l1_u
	str	r9, [r4, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_v
	b	.L3459	@
.L3473:
	movw	r1, #:lower16:.LC151	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC151	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC152	@,
	movt	r1, #:upper16:.LC152	@,
	str	r0, [r4, #128]	@, <variable>.CurrSlice.wp_weight_l1_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC151	@,
	str	r0, [r4, #896]	@, <variable>.CurrSlice.wp_offset_l1_u
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC152	@,
	movt	r1, #:upper16:.LC152	@,
	str	r0, [r4, #256]	@, <variable>.CurrSlice.wp_weight_l1_v
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #1024]	@, <variable>.CurrSlice.wp_offset_l1_v
	b	.L3459	@
	.fnend
	.size	pred_weight_table, .-pred_weight_table
	.align	2
	.global	ref_pic_list_reordering
	.type	ref_pic_list_reordering, %function
ref_pic_list_reordering:
	.fnstart
.LFB2011:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #20692	@ tmp157,
	movw	r1, #13584	@ tmp159,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r5, [r0, ip]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	sl, #2208	@ tmp161,
	ldr	r0, [r0, r1]	@ <variable>.PPS, <variable>.PPS
	movw	r3, #20681	@ tmp173,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #13580	@ tmp155,
	mov	r3, #4000	@ tmp165,
	mla	r1, sl, r5, r0	@ tmp162, tmp161, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r5, [r4, r2]	@ <variable>.SPS, <variable>.SPS
	movw	r0, #19889	@ tmp170,
	mov	sl, #0	@ tmp168,
	ldr	ip, [r1, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	strb	sl, [r4, r0]	@ tmp168, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	movw	r0, #19888	@ tmp167,
	strb	sl, [r4, r0]	@ tmp168, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	mov	sl, #1	@ tmp180,
	mla	r2, r3, ip, r5	@ pSPS, tmp165, <variable>.seq_parameter_set_id, <variable>.SPS
	movw	r5, #20680	@ tmp181,
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	ldr	r1, [r2, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	addne	r1, r1, #5	@ tmp175, <variable>.log2_max_frame_num_minus4,
	addeq	r1, r1, #4	@ tmp178, <variable>.log2_max_frame_num_minus4,
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	mov	sl, sl, asl r1	@ MaxPicNum, tmp180,
	bls	.L3505	@,
.L3477:
	movw	r3, #52780	@ tmp228,
	ldr	r2, [r4, r3]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	mvnne	r0, #0	@ D.42467,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3494:
	mov	r0, #0	@ D.42467,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3505:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC153	@,
	movt	r1, #:upper16:.LC153	@,
	bl	u_1	@
	movw	r3, #19888	@ tmp184,
	uxtb	r0, r0	@ D.42456,
	strb	r0, [r4, r3]	@ D.42456, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r0, #0	@ D.42456,
	ldreqb	r3, [r4, r5]	@ zero_extendqisi2	@ prephitmp.8038, <variable>.CurrSlice.slice_type
	beq	.L3479	@,
	mov	r8, #20736	@ tmp187,
	ldr	r6, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmn	r6, #2	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	beq	.L3480	@,
	add	r7, r4, #19712	@ ivtmp.8060, pH264Ctx,
	mov	r6, #0	@ i.8066,
	add	r5, r7, #180	@ ivtmp.8060, ivtmp.8060,
	movw	r7, #52780	@ tmp239,
	b	.L3489	@
.L3486:
	bl	ue_v	@
	str	r0, [r5, #528]	@, <variable>.CurrReorder.long_term_pic_idx_l0
.L3488:
	ldr	ip, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r5, r5, #4	@ ivtmp.8060, ivtmp.8060,
	add	r3, ip, #2	@ prephitmp.8040, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r3, r6	@ prephitmp.8040, i.8066
	bls	.L3485	@,
.L3489:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC154	@,
	movt	r1, #:upper16:.LC154	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC156	@,
	movt	r1, #:upper16:.LC156	@,
	mov	r3, r0	@ D.42461,
	cmp	r3, #3	@ D.42461,
	mov	r0, r4	@, pH264Ctx
	str	r3, [r5, #0]	@ D.42461, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	bhi	.L3504	@,
	ldr	lr, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3504	@,
	cmp	r3, #3	@ D.42461,
	beq	.L3506	@,
	cmp	r3, #2	@ D.42461,
	add	r6, r6, #1	@ i.8066, i.8066,
	beq	.L3486	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC155	@,
	movt	r1, #:upper16:.LC155	@,
	bl	ue_v	@
	cmp	sl, r0	@ MaxPicNum, D.42471
	str	r0, [r5, #264]	@ D.42471, <variable>.CurrReorder.abs_diff_pic_num_minus1_l0
	bls	.L3504	@,
	ldr	r1, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	beq	.L3488	@,
.L3504:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42467,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3506:
	mov	r3, #20736	@ tmp193,
	ldr	r2, [r4, r3]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r2, #2	@ prephitmp.8040, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
.L3485:
	cmp	r6, r3	@ i.8066, prephitmp.8040
	beq	.L3490	@,
.L3503:
	movw	r3, #20680	@ tmp209,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8038, <variable>.CurrSlice.slice_type
.L3479:
	cmp	r3, #1	@ prephitmp.8038,
	bne	.L3477	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC157	@,
	movt	r1, #:upper16:.LC157	@,
	bl	u_1	@
	movw	r1, #19889	@ tmp211,
	uxtb	r0, r0	@ D.42489,
	strb	r0, [r4, r1]	@ D.42489, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r0, #0	@ D.42489,
	beq	.L3477	@,
	movw	r8, #20740	@ tmp213,
	ldr	ip, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmn	ip, #2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	beq	.L3477	@,
	add	r5, r4, #19968	@ ivtmp.8053, pH264Ctx,
	movw	r7, #52780	@ tmp234,
	add	r6, r5, #56	@ ivtmp.8053, ivtmp.8053,
	mov	r5, #0	@ i,
	b	.L3499	@
.L3498:
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ D.42511, i
	bls	.L3477	@,
.L3499:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC158	@,
	movt	r1, #:upper16:.LC158	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC160	@,
	movt	r1, #:upper16:.LC160	@,
	mov	r3, r0	@ D.42493,
	cmp	r3, #3	@ D.42493,
	mov	r0, r4	@, pH264Ctx
	str	r3, [r6, #0]	@ D.42493, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	bhi	.L3504	@,
	ldr	lr, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3504	@,
	cmp	r3, #3	@ D.42493,
	beq	.L3494	@,
	cmp	r3, #2	@ D.42493,
	bne	.L3507	@,
	bl	ue_v	@
	str	r0, [r6, #524]	@, <variable>.CurrReorder.long_term_pic_idx_l1
.L3497:
	ldr	r3, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #4	@ ivtmp.8053, ivtmp.8053,
	add	r3, r3, #2	@ D.42511, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r5	@ D.42511, i
	bne	.L3498	@,
	add	lr, r5, #4992	@ tmp225, i,
	add	ip, lr, #14	@ tmp225, tmp225,
	ldr	r1, [r4, ip, asl #2]	@ tmp227, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	cmp	r1, #3	@ tmp227,
	beq	.L3498	@,
	b	.L3504	@
.L3507:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC159	@,
	movt	r1, #:upper16:.LC159	@,
	bl	ue_v	@
	cmp	sl, r0	@ MaxPicNum, D.42501
	str	r0, [r6, #264]	@ D.42501, <variable>.CurrReorder.abs_diff_pic_num_minus1_l1
	bls	.L3504	@,
	ldr	r2, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	beq	.L3497	@,
	b	.L3504	@
.L3480:
	mov	r6, #0	@ i.8066,
.L3490:
	add	r2, r6, #4928	@ tmp202, i.8066,
	add	r6, r2, #44	@ tmp202, tmp202,
	add	r6, r4, r6, asl #2	@, tmp206, pH264Ctx, tmp202,
	ldr	lr, [r6, #4]	@ tmp208, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	cmp	lr, #3	@ tmp208,
	beq	.L3503	@,
	b	.L3504	@
	.fnend
	.size	ref_pic_list_reordering, .-ref_pic_list_reordering
	.align	2
	.global	ProcessSliceHeaderSecondPart
	.type	ProcessSliceHeaderSecondPart, %function
ProcessSliceHeaderSecondPart:
	.fnstart
.LFB2016:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r5, #13576	@ tmp152,
	ldr	r1, [r0, r5]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r5, #20692	@ tmp155,
	ldr	r3, [r0, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	sub	r2, r1, #1	@ tmp153, <variable>.MaxPpsNum,
	cmp	r2, r3	@ tmp153, <variable>.CurrSlice.pic_parameter_set_id
	bcc	.L3537	@,
	movw	lr, #52780	@ tmp157,
	ldr	ip, [r0, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3537	@,
	bl	PPSSPSCheck	@
	cmp	r0, #0	@,
	bne	.L3537	@,
	ldr	r8, [r4, r5]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r9, #20680	@ tmp165,
	mov	r7, #2208	@ tmp163,
	ldrb	r6, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	r0, #13584	@ tmp159,
	mul	r7, r7, r8	@ tmp161, tmp163, <variable>.CurrSlice.pic_parameter_set_id
	cmp	r6, #1	@ <variable>.CurrSlice.slice_type,
	ldr	r6, [r4, r0]	@ <variable>.PPS, <variable>.PPS
	add	r5, r7, r6	@ pPPS, tmp161, <variable>.PPS
	beq	.L3543	@,
.L3513:
	ldr	r2, [r5, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movw	sl, #20680	@ tmp174,
	mov	r8, #20736	@ tmp170,
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ prephitmp.8112, <variable>.CurrSlice.slice_type
	movw	r9, #20740	@ tmp172,
	str	r2, [r4, r8]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.8112,
	ldr	r2, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	str	r2, [r4, r9]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bls	.L3544	@,
.L3514:
	cmp	r3, #2	@ prephitmp.8112,
	mov	r0, r4	@, pH264Ctx
	movweq	r3, #20680	@ tmp202,
	moveq	r2, #20736	@ tmp200,
	ldreqb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8112, <variable>.CurrSlice.slice_type
	moveq	r1, #32	@ tmp201,
	streq	r1, [r4, r2]	@ tmp201, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.8112,
	movwne	r3, #20740	@ tmp203,
	movne	r2, #32	@ tmp204,
	strne	r2, [r4, r3]	@ tmp204, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bl	ref_pic_list_reordering	@
	cmp	r0, #0	@,
	bne	.L3537	@,
	ldrb	r8, [r5, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r8, #0	@ <variable>.weighted_pred_flag,
	beq	.L3525	@,
	movw	r2, #20680	@ tmp206,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #0	@ <variable>.CurrSlice.slice_type,
	moveq	r3, #1	@ prephitmp.8087,
	bne	.L3525	@,
.L3526:
	movw	r8, #20687	@ tmp212,
	strb	r3, [r4, r8]	@ prephitmp.8087, <variable>.CurrSlice.apply_weights_flag
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.apply_weights_flag, <variable>.CurrSlice.apply_weights_flag
	movw	r3, #20748	@ tmp216,
	movw	r0, #20744	@ tmp214,
	cmp	r2, #0	@ <variable>.CurrSlice.apply_weights_flag,
	mov	ip, #0	@ tmp215,
	str	ip, [r4, r3]	@ tmp215, <variable>.CurrSlice.chroma_log2_weight_denom
	str	ip, [r4, r0]	@ tmp215, <variable>.CurrSlice.luma_log2_weight_denom
	bne	.L3545	@,
	movw	lr, #20712	@ tmp220,
	ldr	r1, [r4, lr]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L3546	@,
.L3529:
	movw	r8, #22288	@ tmp222,
	mov	ip, #0	@ tmp223,
	str	ip, [r4, r8]	@ tmp223, <variable>.CurrSlice.cabac_init_idc
	ldrb	r0, [r7, r6]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	cmp	r0, #0	@ <variable>.entropy_coding_mode_flag,
	beq	.L3530	@,
	movw	r2, #20680	@ tmp225,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bls	.L3547	@,
.L3530:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC166	@,
	movt	r1, #:upper16:.LC166	@,
	movw	r6, #22296	@ tmp233,
	bl	se_v	@
	movw	r7, #22300	@ tmp235,
	movw	r8, #22304	@ tmp237,
	movw	ip, #22292	@ tmp232,
	mov	r3, #0	@ tmp234,
	str	r3, [r4, r8]	@ tmp234, <variable>.CurrSlice.slice_beta_offset_div2
	str	r3, [r4, r6]	@ tmp234, <variable>.CurrSlice.disable_deblocking_filter_idc
	str	r3, [r4, r7]	@ tmp234, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	str	r0, [r4, ip]	@, <variable>.CurrSlice.slice_qp_delta
	ldrb	r0, [r5, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	r0, #0	@ <variable>.deblocking_filter_control_present_flag,
	bne	.L3548	@,
.L3532:
	mov	r0, #0	@ D.42891,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3525:
	ldr	r3, [r5, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r3, #1	@ <variable>.weighted_bipred_idc,
	movne	r3, #0	@ prephitmp.8087,
	bne	.L3526	@,
	movw	lr, #20680	@ tmp209,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	movne	r3, #0	@, prephitmp.8087
	moveq	r3, #1	@, prephitmp.8087
	b	.L3526	@
.L3548:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC167	@,
	movt	r1, #:upper16:.LC167	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.42972,
	str	r0, [r4, r6]	@ D.42972, <variable>.CurrSlice.disable_deblocking_filter_idc
	bhi	.L3537	@,
	movw	r5, #52780	@ tmp242,
	ldr	r2, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3537	@,
	cmp	r0, #1	@ D.42972,
	beq	.L3532	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC168	@,
	movt	r1, #:upper16:.LC168	@,
	bl	se_v	@
	add	r1, r0, #6	@ tmp246, D.42979,
	str	r0, [r4, r7]	@ D.42979, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	cmp	r1, #12	@ tmp246,
	bhi	.L3537	@,
	ldr	lr, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3537	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC169	@,
	movt	r1, #:upper16:.LC169	@,
	bl	se_v	@
	add	ip, r0, #6	@ tmp251, D.42986,
	str	r0, [r4, r8]	@ D.42986, <variable>.CurrSlice.slice_beta_offset_div2
	cmp	ip, #12	@ tmp251,
	bhi	.L3537	@,
	ldr	r0, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3532	@,
.L3537:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42891,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3545:
	mov	r0, r4	@, pH264Ctx
	bl	pred_weight_table	@
	cmp	r0, #0	@,
	bne	.L3537	@,
	movw	lr, #20712	@ tmp220,
	ldr	r1, [r4, lr]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrSlice.nal_ref_idc,
	beq	.L3529	@,
.L3546:
	mov	r0, r4	@, pH264Ctx
	bl	dec_ref_pic_marking	@
	cmp	r0, #0	@,
	beq	.L3529	@,
	b	.L3537	@
.L3543:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC161	@,
	movt	r1, #:upper16:.LC161	@,
	movw	sl, #20686	@ tmp168,
	bl	u_1	@
	strb	r0, [r4, sl]	@, <variable>.CurrSlice.direct_spatial_mv_pred_flag
	b	.L3513	@
.L3544:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC162	@,
	movt	r1, #:upper16:.LC162	@,
	bl	u_1	@
	cmp	r0, #0	@,
	ldreq	r3, [r4, r8]	@ prephitmp.8089, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3549	@,
.L3516:
	movw	ip, #20681	@ tmp184,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r2, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3517	@,
	cmp	r3, #15	@ prephitmp.8089,
	bhi	.L3537	@,
	movw	lr, #20740	@ tmp186,
	ldr	r3, [r4, lr]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #15	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bhi	.L3541	@,
.L3521:
	movw	ip, #52780	@ tmp197,
	ldr	r0, [r4, ip]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3537	@,
	movw	r3, #20680	@ tmp199,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.8112, <variable>.CurrSlice.slice_type
	b	.L3514	@
.L3517:
	cmp	r3, #31	@ prephitmp.8089,
	bhi	.L3537	@,
	movw	ip, #20740	@ tmp193,
	ldr	r0, [r4, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r0, #31	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3521	@,
.L3541:
	movw	lr, #20680	@ tmp195,
	ldrb	r3, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3521	@,
	b	.L3537	@
.L3547:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC165	@,
	movt	r1, #:upper16:.LC165	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.42963,
	str	r0, [r4, r8]	@ D.42963, <variable>.CurrSlice.cabac_init_idc
	bhi	.L3537	@,
	movw	lr, #52780	@ tmp229,
	ldr	r1, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	beq	.L3530	@,
	b	.L3537	@
.L3549:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC163	@,
	movt	r1, #:upper16:.LC163	@,
	bl	ue_v	@
	ldrb	r1, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	mov	r3, r0	@ prephitmp.8089,
	str	r0, [r4, r8]	@ prephitmp.8089, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3516	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC164	@,
	movt	r1, #:upper16:.LC164	@,
	bl	ue_v	@
	ldr	r3, [r4, r8]	@ prephitmp.8089, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	str	r0, [r4, r9]	@, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	b	.L3516	@
	.fnend
	.size	ProcessSliceHeaderSecondPart, .-ProcessSliceHeaderSecondPart
	.align	2
	.global	H264_DecSlice
	.type	H264_DecSlice, %function
H264_DecSlice:
	.fnstart
.LFB2020:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	.pad #8
	sub	sp, sp, #8	@,,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r2, #20683	@ tmp162,
	movw	r3, #20712	@ tmp166,
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3554	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderSecondPart	@
	cmp	r0, #0	@,
	bne	.L3554	@,
	movw	r0, #52764	@ tmp173,
	ldr	r6, [r4, r0]	@ temp.8165, <variable>.SliceParaNum
	cmp	r6, #0	@ temp.8165,
	moveq	r8, r6	@ Size, temp.8165
	beq	.L3556	@,
	add	r0, r4, #50688	@ tmp179, pH264Ctx,
	mov	r6, r6, asl #2	@ D.53641, temp.8165,
	add	r8, r0, #16	@ tmp179, tmp179,
	sub	r2, r6, #4	@ tmp239, D.53641,
	ubfx	r0, r2, #2, #1	@ tmp240, tmp239,,
	ldr	r1, [r8, #0]	@ D.43146, <variable>.pSliceNal
	ldr	r2, [r1, #8]	@ Addr0, <variable>.streamBuffer
	cmp	r2, #0	@ Addr0,
	ldrne	lr, [r1, #12]	@ Size0, <variable>.bitstream_length
	beq	.L3634	@,
.L3606:
	ldr	r3, [r1, #36]	@ Addr1, <variable>.streamBuffer
	cmp	r3, #0	@ Addr1,
	ldrne	r1, [r1, #40]	@ Size1, <variable>.bitstream_length
	moveq	r1, r3	@ Size1, Addr1
	cmp	r3, #0	@ Addr1,
	add	r8, lr, r1	@ Size, Size0, Size1
	movne	r2, r3	@ PrevNalAddr, Addr1
	movne	lr, r1	@ PrevNalSize, Size1
	mov	r3, #4	@ ivtmp.8146,
	cmp	r3, r6	@ ivtmp.8146, D.53641
	beq	.L3556	@,
	cmp	r0, #0	@ tmp240,
	beq	.L3568	@,
	add	r1, r4, r3	@ tmp269, pH264Ctx, ivtmp.8146
	add	r0, r1, #50688	@ tmp271, tmp269,
	add	ip, r0, #16	@ tmp271, tmp271,
	ldr	r0, [ip, #0]	@ D.43146, <variable>.pSliceNal
	ldr	ip, [r0, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r1, [r0, #36]	@ Addr1, <variable>.streamBuffer
	cmp	ip, #0	@ Addr0,
	ldrne	r5, [r0, #12]	@ Size0, <variable>.bitstream_length
	moveq	r5, ip	@ Size0, Addr0
	cmp	r1, #0	@ Addr1,
	ldrne	r0, [r0, #40]	@ Size1, <variable>.bitstream_length
	moveq	r0, r1	@ Size1, Addr1
	cmp	r2, #0	@ PrevNalAddr,
	addeq	r8, r5, r8	@ D.43166, Size0, Size
	addeq	r8, r8, r0	@ Size, D.43166, Size1
	bne	.L3635	@,
.L3616:
	cmp	r1, #0	@ Addr1,
	moveq	r2, ip	@ PrevNalAddr, Addr0
	moveq	lr, r5	@ PrevNalSize, Size0
	movne	r2, r1	@ PrevNalAddr, Addr1
	movne	lr, r0	@ PrevNalSize, Size1
	b	.L3629	@
.L3600:
	rsb	r7, r7, r0	@ tmp290, PrevNalSize, Addr0
	rsb	ip, ip, r7	@ tmp291, PrevNalAddr, tmp290
	add	ip, ip, r5	@ Size0.8148, tmp291, Size0
.L3627:
	add	r1, lr, r8	@ Size.8153, Size1, Size
	add	r8, r1, ip	@ Size, Size.8153, Size0.8148
.L3625:
	cmp	r2, #0	@ Addr1,
	moveq	r2, r0	@ PrevNalAddr, Addr0
	moveq	lr, r5	@ PrevNalSize, Size0
.L3629:
	add	r3, r3, #4	@ ivtmp.8146, tmp241,
	cmp	r3, r6	@ ivtmp.8146, D.53641
	beq	.L3556	@,
.L3568:
	add	r1, r4, r3	@ tmp244, pH264Ctx, ivtmp.8146
	add	ip, r1, #50688	@ tmp245, tmp244,
	ldr	r0, [ip, #16]	@ D.43146, <variable>.pSliceNal
	ldr	ip, [r0, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r1, [r0, #36]	@ Addr1, <variable>.streamBuffer
	cmp	ip, #0	@ Addr0,
	ldrne	r7, [r0, #12]	@ Size0, <variable>.bitstream_length
	moveq	r7, ip	@ Size0, Addr0
	cmp	r1, #0	@ Addr1,
	moveq	r0, r1	@ Size1, Addr1
	ldrne	r0, [r0, #40]	@ Size1, <variable>.bitstream_length
	cmp	r2, #0	@ PrevNalAddr,
	addeq	r8, r7, r8	@ D.43166, Size0, Size
	addeq	r8, r8, r0	@ Size, D.43166, Size1
	beq	.L3565	@,
	cmp	r2, ip	@ PrevNalAddr, Addr0
	add	r8, r0, r8	@ Size.8153, Size1, Size
	rsbcc	r2, r2, ip	@ tmp182, PrevNalAddr, Addr0
	rsbcc	lr, lr, r2	@ tmp183, PrevNalSize, tmp182
	movcs	lr, r7	@ Size0.8148, Size0
	addcc	lr, lr, r7	@ Size0.8148, tmp183, Size0
	add	r8, r8, lr	@ Size, Size.8153, Size0.8148
.L3565:
	cmp	r1, #0	@ Addr1,
	add	r3, r3, #4	@ tmp241, ivtmp.8146,
	movne	r7, r0	@ PrevNalSize, Size1
	add	r0, r4, r3	@ tmp255, pH264Ctx, tmp241
	add	r2, r0, #50688	@ tmp256, tmp255,
	movne	ip, r1	@ PrevNalAddr, Addr1
	ldr	r1, [r2, #16]	@ D.43146, <variable>.pSliceNal
	ldr	r0, [r1, #8]	@ Addr0, <variable>.streamBuffer
	cmp	r0, #0	@ Addr0,
	ldrne	r5, [r1, #12]	@ Size0, <variable>.bitstream_length
	moveq	r5, r0	@ Size0, Addr0
.L3621:
	ldr	r2, [r1, #36]	@ Addr1, <variable>.streamBuffer
	cmp	r2, #0	@ Addr1,
	ldrne	lr, [r1, #40]	@ Size1, <variable>.bitstream_length
	moveq	lr, r2	@ Size1, Addr1
	cmp	ip, #0	@ PrevNalAddr,
	addeq	r8, r5, r8	@ D.43166, Size0, Size
	addeq	r8, r8, lr	@ Size, D.43166, Size1
	beq	.L3625	@,
	cmp	ip, r0	@ PrevNalAddr, Addr0
	bcc	.L3600	@,
	mov	ip, r5	@ Size0.8148, Size0
	b	.L3627	@
.L3556:
	movw	r0, #50164	@ tmp185,
	movw	r2, #50160	@ tmp186,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	movw	lr, #1620	@ tmp189,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_width_in_mb
	movw	r1, #52824	@ tmp184,
	str	r8, [r4, r1]	@ Size, <variable>.MaxBytesReceived
	mul	r3, ip, r3	@ TotalMbs, <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_height_in_mb
	cmp	r3, lr	@ TotalMbs, tmp189
	movgt	r3, r3, asl #7	@ MaxStreamThr, TotalMbs,
	ble	.L3636	@,
.L3570:
	movw	r0, #52764	@ tmp195,
	mov	r2, #13568	@ tmp196,
	ldr	ip, [r4, r0]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	ldr	r1, [r4, r2]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	ip, r1	@ <variable>.SliceParaNum, <variable>.MaxSliceNum
	bcs	.L3572	@,
	cmp	r8, r3	@ Size, MaxStreamThr
	bhi	.L3572	@,
	movw	r0, #20685	@ tmp207,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	cmp	r1, #0	@ <variable>.CurrSlice.new_pic_flag,
	bne	.L3637	@,
.L3575:
	mov	r0, r4	@, pH264Ctx
	bl	PicTypeStatistic	@
	mov	r0, r4	@, pH264Ctx
	bl	DecList	@
	cmp	r0, #0	@,
	bne	.L3631	@,
	mov	r0, r4	@, pH264Ctx
	bl	IsRefListWrong	@
	subs	r5, r0, #0	@ ret.8157,
	bne	.L3638	@,
	mov	r0, r4	@, pH264Ctx
	bl	CalcStreamBits	@
	mov	r0, r4	@, pH264Ctx
	bl	WriteSliceMsg	@
	mov	r0, r4	@, pH264Ctx
	bl	ExitSlice	@
	movw	r3, #52820	@ tmp232,
	ldr	r2, [r4, r3]	@ <variable>.SliceNumInPic, <variable>.SliceNumInPic
	movw	r1, #51324	@ tmp230,
	mov	r0, r5	@ D.43139, ret.8157
	mov	ip, #1	@ tmp231,
	add	r2, r2, ip	@ tmp235, <variable>.SliceNumInPic,
	str	ip, [r4, r1]	@ tmp231, <variable>.AllowStartDec
	str	r2, [r4, r3]	@ tmp235, <variable>.SliceNumInPic
.L3553:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L3636:
	add	r3, r3, r3, asl #1	@, tmp192, TotalMbs, TotalMbs,
	movw	lr, #32769	@ tmp194,
	mov	r3, r3, asl #8	@ tmp193, tmp192,
	cmp	r3, lr	@ tmp193, tmp194
	movgt	r3, r3, asr #1	@ MaxStreamThr, tmp193,
	movle	r3, #16384	@ MaxStreamThr,
	b	.L3570	@
.L3634:
	mov	lr, r2	@ Size0, Addr0
	b	.L3606	@
.L3635:
	cmp	r2, ip	@ PrevNalAddr, Addr0
	bcs	.L3639	@,
	rsb	lr, lr, ip	@ tmp281, PrevNalSize, Addr0
	rsb	r2, r2, lr	@ tmp282, PrevNalAddr, tmp281
	add	r2, r2, r5	@ Size0.8148, tmp282, Size0
.L3618:
	add	r8, r0, r8	@ Size.8153, Size1, Size
	add	r8, r8, r2	@ Size, Size.8153, Size0.8148
	b	.L3616	@
.L3637:
	bl	vfmw_dprint_nothing	@
	movw	r0, #20683	@ tmp209,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	ip, #49707	@ tmp220,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r0, #0	@ tmp215,
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	movweq	r3, #52804	@ tmp212,
	ldreq	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	movweq	r3, #52816	@ tmp211,
	streq	r2, [r4, r3]	@ <variable>.TotalPicNum, <variable>.IDRPicOfCurrPic
	movw	r3, #52804	@ tmp216,
	ldr	ip, [r4, r3]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	cmp	r1, #0	@ <variable>.CurrPic.structure,
	movw	r2, #52820	@ tmp214,
	add	r1, ip, #1	@ tmp219, <variable>.TotalPicNum,
	str	r1, [r4, r3]	@ tmp219, <variable>.TotalPicNum
	movweq	r3, #52808	@ tmp222,
	movwne	r3, #52812	@ tmp226,
	str	r0, [r4, r2]	@ tmp215, <variable>.SliceNumInPic
	mov	r0, r4	@, pH264Ctx
	ldr	r2, [r4, r3]	@ <variable>.TotalFieldNum,
	add	ip, r2, #1	@ tmp229, <variable>.TotalFieldNum,
	str	ip, [r4, r3]	@ tmp229,
	bl	InitPic	@
	cmp	r0, #0	@,
	bne	.L3631	@,
	mov	r0, r4	@, pH264Ctx
	bl	WritePicMsg	@
	b	.L3575	@
.L3639:
	mov	r2, r5	@ Size0.8148, Size0
	b	.L3618	@
.L3554:
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:g_event_report	@ tmp174,
	movt	r3, #:upper16:g_event_report	@ tmp174,
	ldr	r3, [r3, #0]	@ g_event_report.8151, g_event_report
	cmp	r3, #0	@ g_event_report.8151,
	beq	.L3630	@,
	add	ip, sp, #8	@ tmp177,,
	movw	r1, #52840	@ tmp176,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mvn	lr, #0	@ tmp175,
	mov	r2, sp	@,
	str	lr, [ip, #-8]!	@ tmp175,
	add	r1, lr, #101	@,,
	blx	r3	@ g_event_report.8151
.L3630:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.43139,
	b	.L3553	@
.L3631:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43139,
	b	.L3553	@
.L3572:
	bl	vfmw_dprint_nothing	@
	movw	ip, #52764	@ tmp199,
	mov	r3, #13568	@ tmp200,
	ldr	r1, [r4, ip]	@ temp.8158, <variable>.SliceParaNum
	ldr	r2, [r4, r3]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	r1, r2	@ temp.8158, <variable>.MaxSliceNum
	bcc	.L3574	@,
	movw	lr, #:lower16:g_event_report	@ tmp202,
	movt	lr, #:upper16:g_event_report	@ tmp202,
	ldr	r3, [lr, #0]	@ g_event_report.8161, g_event_report
	cmp	r3, #0	@ g_event_report.8161,
	beq	.L3574	@,
	str	r2, [sp, #4]	@ <variable>.MaxSliceNum, para
	movw	r2, #52840	@ tmp205,
	str	r1, [sp, #0]	@ temp.8158, para
	mov	r1, #108	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, sp	@,
	blx	r3	@ g_event_report.8161
.L3574:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.43139,
	b	.L3553	@
.L3638:
	bl	vfmw_dprint_nothing	@
	b	.L3630	@
	.fnend
	.size	H264_DecSlice, .-H264_DecSlice
	.align	2
	.global	SliceCheck
	.type	SliceCheck, %function
SliceCheck:
	.fnstart
.LFB2007:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r1, #:lower16:.LC170	@,
	movt	r1, #:upper16:.LC170	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r5, #52780	@ tmp140,
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20732	@ tmp139,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.42302, <variable>.CurrSlice.first_mb_in_slice
	bne	.L3641	@,
	cmp	r0, #262144	@ D.42302,
	bcs	.L3644	@,
	movw	r1, #13560	@ tmp144,
	movw	r3, #13564	@ tmp143,
	ldr	r2, [r4, r1]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	lr, [r4, r3]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	mul	ip, r2, lr	@ tmp145, <variable>.CurWidthInMb, <variable>.CurHeightInMb
	sub	r1, ip, #1	@ tmp148, tmp145,
	cmp	r0, r1	@ D.42302, tmp148
	bls	.L3649	@,
.L3641:
	mvn	r0, #0	@ D.42306,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3649:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC171	@,
	movt	r1, #:upper16:.LC171	@,
	bl	ue_v	@
	mov	r6, r0	@ SliceType,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3641	@,
	cmp	r6, #9	@ SliceType,
	bhi	.L3644	@,
	mov	r2, #1	@ tmp153,
	mov	r6, r2, asl r6	@ tmp152, tmp153,
	ands	r1, r6, #660	@ tmp154, tmp152,
	bne	.L3647	@,
	movw	r0, #:lower16:297	@ tmp155,
	movt	r0, #:upper16:297	@ tmp155,
	and	r0, r6, r0	@ tmp155, tmp152, tmp155
	cmp	r0, #0	@ tmp155,
	movwne	r3, #20680	@ tmp161,
	movne	r0, r1	@ D.42306, tmp154
	strneb	r1, [r4, r3]	@ tmp154, <variable>.CurrSlice.slice_type
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	tst	r6, #66	@ tmp152,
	movwne	r3, #20680	@ tmp164,
	strneb	r2, [r4, r3]	@ tmp153, <variable>.CurrSlice.slice_type
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L3644:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42306,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3647:
	movw	lr, #20680	@ tmp158,
	mov	ip, #2	@ tmp159,
	mov	r0, r3	@ D.42306, <variable>.SeErrFlg
	strb	ip, [r4, lr]	@ tmp159, <variable>.CurrSlice.slice_type
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	SliceCheck, .-SliceCheck
	.align	2
	.global	InquireSliceProperty
	.type	InquireSliceProperty, %function
InquireSliceProperty:
	.fnstart
.LFB2043:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ IsNewPic, IsNewPic
	mov	r6, r2	@ IsSizeChanged, IsSizeChanged
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ tmp147,
	str	r0, [r6, #0]	@ tmp147,* IsSizeChanged
	movw	r2, #20683	@ tmp149,
	str	r0, [r5, #0]	@ tmp147,* IsNewPic
	movw	r3, #20712	@ tmp152,
	ldr	ip, [r4, #368]	@ D.45312, <variable>.pCurrNal
	mov	r0, r4	@, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r4, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	cmp	r0, #0	@,
	beq	.L3651	@,
.L3658:
	mvn	r0, #0	@ D.45318,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3651:
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3659	@,
	movw	sl, #20685	@ tmp154,
	movw	r3, #20692	@ tmp159,
	ldrb	r8, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	mov	ip, #2208	@ tmp163,
	movw	r2, #13580	@ tmp157,
	movw	sl, #13564	@ tmp170,
	cmp	r8, #1	@ <variable>.CurrSlice.new_pic_flag,
	movne	lr, #0	@, tmp156
	moveq	lr, #1	@, tmp156
	str	lr, [r5, #0]	@ tmp156,* IsNewPic
	movw	r5, #13584	@ tmp161,
	ldr	r7, [r4, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	r1, [r4, r5]	@ <variable>.PPS, <variable>.PPS
	mov	r5, #4000	@ tmp167,
	ldr	lr, [r4, r2]	@ <variable>.SPS, <variable>.SPS
	movw	r0, #13560	@ tmp169,
	ldr	r0, [r4, r0]	@ oldw, <variable>.CurWidthInMb
	mla	r8, ip, r7, r1	@ tmp164, tmp163, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	ip, [r4, sl]	@ oldh, <variable>.CurHeightInMb
	mov	r7, r0, asl #4	@ tmp179, oldw,
	mov	sl, ip, asl #4	@ tmp177, oldh,
	ldr	r3, [r8, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r3, r5, r3, lr	@ pSPS, tmp167, <variable>.seq_parameter_set_id, <variable>.SPS
	movw	r5, #52876	@ tmp178,
	ldrb	r8, [r3, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r1, [r3, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	rsb	r2, r8, #2	@ tmp173, <variable>.frame_mbs_only_flag,
	ldr	lr, [r3, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	movw	r8, #52880	@ tmp176,
	str	r7, [r4, r5]	@ tmp179, <variable>.DSD_OldWidth
	mla	r2, r1, r2, r2	@ newh, <variable>.pic_height_in_map_units_minus1, tmp173, tmp173
	add	r1, lr, #1	@ neww, <variable>.pic_width_in_mbs_minus1,
	movw	r5, #52884	@ tmp180,
	movw	lr, #52888	@ tmp182,
	str	sl, [r4, r8]	@ tmp177, <variable>.DSD_OldHeight
	mov	r7, r1, asl #4	@ tmp181, neww,
	cmp	r0, r1	@ oldw, neww
	cmpeq	ip, r2	@, oldh, newh
	str	r7, [r4, r5]	@ tmp181, <variable>.DSD_NewWidth
	mov	r0, r2, asl #4	@ tmp183, newh,
	str	r0, [r4, lr]	@ tmp183, <variable>.DSD_NewHeight
	ldreq	r0, [r6, #0]	@ cstore.8202,* IsSizeChanged
	mov	r2, #26624	@ tmp191,
	movne	r0, #1	@ cstore.8202,
	str	r0, [r6, #0]	@ cstore.8202,* IsSizeChanged
	mov	r0, #0	@ D.45318,
	ldr	r1, [r4, r2]	@ <variable>.DPB.size, <variable>.DPB.size
	ldr	ip, [r3, #3980]	@ <variable>.dpb_size_plus1, <variable>.dpb_size_plus1
	add	lr, r1, #1	@ tmp192, <variable>.DPB.size,
	cmp	ip, lr	@ <variable>.dpb_size_plus1, tmp192
	movhi	lr, #1	@ tmp195,
	strhi	lr, [r6, #0]	@ tmp195,* IsSizeChanged
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3659:
	bl	vfmw_dprint_nothing	@
	b	.L3658	@
	.fnend
	.size	InquireSliceProperty, .-InquireSliceProperty
	.align	2
	.global	H264_DecOneNal
	.type	H264_DecOneNal, %function
H264_DecOneNal:
	.fnstart
.LFB2037:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	ldr	r2, [r0, #368]	@ temp.8267, <variable>.pCurrNal
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ NalMode, NalMode
	ldr	r3, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r3, #0	@ <variable>.nal_segment,
	beq	.L3661	@,
	movw	ip, #52824	@ tmp176,
	mov	r3, #0	@ i,
	ldr	r1, [r0, ip]	@ prephitmp.8230, <variable>.MaxBytesReceived
.L3662:
	rsb	r7, r3, r3, asl #3	@, tmp180, i, i,
	add	r3, r3, #1	@ i, i,
	add	r6, r2, r7, asl #2	@, tmp182, temp.8267, tmp180,
	ldr	r5, [r6, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r1, r1, r5	@ prephitmp.8230, prephitmp.8230, <variable>.bitstream_length
	str	r1, [r4, ip]	@ prephitmp.8230, <variable>.MaxBytesReceived
	ldr	r0, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r0, r3	@ <variable>.nal_segment, i
	bhi	.L3662	@,
.L3661:
	add	sl, r4, #13504	@ D.45020, pH264Ctx,
	mov	r6, #0	@ tmp187,
	add	r5, sl, #24	@ D.45020, D.45020,
	strb	r6, [r2, #0]	@ tmp187, <variable>.nal_used_segment
	mov	r1, #32	@,
	movw	r7, #52784	@ tmp204,
	mov	r0, r5	@, D.45020
	bl	BsGet	@
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	sl, r0	@ nal_header,
	and	r0, r0, #31	@ tmp192, nal_header,
	strb	r0, [r1, #2]	@ tmp192, <variable>.nal_unit_type
	ubfx	ip, sl, #5, #2	@ tmp196, nal_header,,
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ubfx	r2, sl, #7, #1	@ tmp199, nal_header,,
	str	ip, [r3, #76]	@ tmp196, <variable>.nal_ref_idc
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r2, [r1, #80]	@ tmp199, <variable>.forbidden_bit
	movw	r1, #52780	@ tmp202,
	ldr	r3, [r4, #368]	@ temp.8245, <variable>.pCurrNal
	ldr	r0, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	ip, r0, #32	@ tmp201, <variable>.nal_bitoffset,
	str	ip, [r3, #64]	@ tmp201, <variable>.nal_bitoffset
	str	r6, [r4, r1]	@ tmp187, <variable>.SeErrFlg
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r7]	@ prephitmp.8286, <variable>.TotalNal
	movw	r2, #371	@ tmp205,
	cmp	r3, r2	@ prephitmp.8286, tmp205
	beq	.L3706	@,
.L3663:
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r0, #52784	@ tmp207,
	add	r3, r3, #1	@ tmp208, prephitmp.8286,
	str	r3, [r4, r0]	@ tmp208, <variable>.TotalNal
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	sub	lr, ip, #1	@ tmp211, <variable>.nal_unit_type,
	cmp	lr, #29	@ tmp211,
	ldrls	pc, [pc, lr, asl #2]	@ tmp211
	b	.L3664	@
.L3676:
	.word	.L3665
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3665
	.word	.L3666
	.word	.L3667
	.word	.L3668
	.word	.L3673
	.word	.L3674
	.word	.L3671
	.word	.L3674
	.word	.L3673
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3674
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3664
	.word	.L3675
.L3674:
	bl	vfmw_dprint_nothing	@
.L3694:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.45044,
.L3679:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L3673:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.45044,
	b	.L3679	@
.L3665:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r2, #20683	@ tmp212,
	movw	r1, #20712	@ tmp216,
	mov	r0, r4	@, pH264Ctx
	ldrb	r3, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r3, [r4, r2]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r5, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r5, [r4, r1]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r5, r0, #0	@ ret,
	bne	.L3707	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSlice	@
	cmp	r0, #0	@,
	bne	.L3708	@,
.L3680:
	mov	r0, #0	@ D.45044,
	b	.L3679	@
.L3666:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSEI	@
	mov	r5, r0	@ ret.8263,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r5, #0	@ ret.8263,
	beq	.L3680	@,
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_event_report	@ tmp243,
	movt	r0, #:upper16:g_event_report	@ tmp243,
	ldr	r3, [r0, #0]	@ g_event_report.8264, g_event_report
	cmp	r3, #0	@ g_event_report.8264,
	bne	.L3695	@,
	mov	r0, #0	@ D.45044,
	b	.L3679	@
.L3667:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSPS	@
	mov	r6, r0	@ ret.8258,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8258,
	bne	.L3703	@,
	movw	r1, #52788	@ tmp239,
	mov	r0, r6	@ D.45044, ret.8258
	ldr	ip, [r4, r1]	@ <variable>.TotalSPS,
	add	lr, ip, #1	@ tmp242, <variable>.TotalSPS,
	str	lr, [r4, r1]	@ tmp242,
	b	.L3679	@
.L3668:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecPPS	@
	mov	r6, r0	@ ret.8253,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8253,
	bne	.L3703	@,
	movw	r3, #52792	@ tmp229,
	mov	r0, r6	@ D.45044, ret.8253
	ldr	r2, [r4, r3]	@ <variable>.TotalPPS,
	add	ip, r2, #1	@ tmp232, <variable>.TotalPPS,
	str	ip, [r4, r3]	@ tmp232,
	b	.L3679	@
.L3664:
	bl	vfmw_dprint_nothing	@
	cmp	sl, #256	@ nal_header,
	movweq	r5, #:lower16:g_event_report	@ tmp307,
	movteq	r5, #:upper16:g_event_report	@ tmp307,
	beq	.L3687	@,
	movw	r5, #:lower16:g_event_report	@ tmp307,
	movt	r5, #:upper16:g_event_report	@ tmp307,
	ldr	r3, [r5, #0]	@ g_event_report.8282, g_event_report
	cmp	r3, #0	@ g_event_report.8282,
	beq	.L3687	@,
	movw	r2, #52840	@ tmp298,
	mov	r1, #102	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8282
.L3687:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5, #0]	@ g_event_report.8284, g_event_report
	cmp	r3, #0	@ g_event_report.8284,
	beq	.L3680	@,
.L3695:
	movw	lr, #52840	@ tmp301,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8284
	mov	r0, #0	@ D.45044,
	b	.L3679	@
.L3671:
	bl	vfmw_dprint_nothing	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.45020
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.45073,
	mov	r0, r5	@, D.45020
	bl	BsGet	@
	movw	r2, #:lower16:1128615492	@ tmp247,
	movw	r3, #:lower16:1213419593	@ tmp250,
	movt	r2, #:upper16:1128615492	@ tmp247,
	movt	r3, #:upper16:1213419593	@ tmp250,
	cmp	r0, r2	@, tmp247
	cmpeq	r6, r3	@, D.45073, tmp250
	bne	.L3694	@,
	movw	r5, #:lower16:g_event_report	@ tmp304,
	movt	r5, #:upper16:g_event_report	@ tmp304,
	movw	lr, #13556	@ tmp255,
	mov	r6, #1	@ tmp256,
	strb	r6, [r4, lr]	@ tmp256, <variable>.IsStreamEndFlag
	ldr	r3, [r5, #0]	@ g_event_report.8268, g_event_report
	cmp	r3, #0	@ g_event_report.8268,
	beq	.L3684	@,
	movw	ip, #52840	@ tmp259,
	mov	r1, #112	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8268
.L3684:
	mov	r6, #0	@ tmp261,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp261, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3694	@,
.L3701:
	ldr	r3, [r5, #0]	@ g_event_report.8280, g_event_report
	cmp	r3, r6	@ g_event_report.8280,
	beq	.L3697	@,
	mov	r2, r6	@, tmp294
.L3696:
	movw	ip, #52840	@ tmp296,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8280
.L3697:
	mvn	r0, #0	@ D.45044,
	b	.L3679	@
.L3675:
	bl	vfmw_dprint_nothing	@
	cmp	r8, #0	@ NalMode,
	beq	.L3709	@,
.L3685:
	mov	r1, #32	@,
	mov	r0, r5	@, D.45020
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.45089,
	mov	r0, r5	@, D.45020
	bl	BsGet	@
	ldr	r3, .L3710	@ tmp278,
	and	r5, r6, #65280	@ tmp268, D.45089,
	mov	r1, r6, asl #24	@ tmp266, D.45089,
	orr	r1, r1, r6, lsr #24	@, tmp267, tmp266, D.45089,
	and	r6, r6, #16711680	@ tmp264, D.45089,
	orr	r1, r1, r5, asl #8	@, D.45097, tmp267, tmp268,
	orr	r6, r1, r6, lsr #8	@, tmp282, D.45097, tmp264,
	and	ip, r0, #65280	@ tmp274, D.45090,
	mov	r2, r0, asl #24	@ tmp272, D.45090,
	orr	r2, r2, r0, lsr #24	@, tmp273, tmp272, D.45090,
	and	r0, r0, #16711680	@ tmp270, D.45090,
	orr	ip, r2, ip, asl #8	@, D.45105, tmp273, tmp274,
	ldmib	r3, {r2, r3}	@ phole ldm
	orr	r0, ip, r0, lsr #8	@, tmp276, D.45105, tmp270,
	cmp	r0, r3	@ tmp276, tmp280
	cmpeq	r6, r2	@, tmp282, tmp286
	bne	.L3680	@,
	movw	r5, #:lower16:g_event_report	@ tmp306,
	movt	r5, #:upper16:g_event_report	@ tmp306,
	ldr	r3, [r5, #0]	@ g_event_report.8277, g_event_report
	cmp	r3, #0	@ g_event_report.8277,
	beq	.L3686	@,
	movw	lr, #52840	@ tmp292,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8277
.L3686:
	mov	r6, #0	@ tmp294,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp294, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	bne	.L3701	@,
	mov	r0, #0	@ D.45044,
	b	.L3679	@
.L3706:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r7]	@ prephitmp.8286, <variable>.TotalNal
	b	.L3663	@
.L3708:
	movw	r1, #:lower16:g_event_report	@ tmp221,
	movt	r1, #:upper16:g_event_report	@ tmp221,
	ldr	r3, [r1, #0]	@ g_event_report.8251, g_event_report
	cmp	r3, #0	@ g_event_report.8251,
	movne	r2, r5	@, ret
	bne	.L3696	@,
	mvn	r0, #0	@ D.45044,
	b	.L3679	@
.L3709:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	b	.L3685	@
.L3707:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	movw	r0, #:lower16:g_event_report	@ tmp219,
	movt	r0, #:upper16:g_event_report	@ tmp219,
	ldr	r3, [r0, #0]	@ g_event_report.865, g_event_report
	cmp	r3, #0	@ g_event_report.865,
	beq	.L3697	@,
	movw	lr, #52840	@ tmp220,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.865
	mvn	r0, #0	@ D.45044,
	b	.L3679	@
.L3703:
	movw	r5, #:lower16:g_event_report	@ tmp233,
	movt	r5, #:upper16:g_event_report	@ tmp233,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #0]	@ g_event_report.8259, g_event_report
	cmp	r3, #0	@ g_event_report.8259,
	beq	.L3697	@,
	add	r2, sp, #8	@ tmp236,,
	movw	r7, #52840	@ tmp235,
	mvn	r6, #0	@ tmp234,
	mov	r1, #100	@,
	str	r6, [r2, #-4]!	@ tmp234,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8259
	ldr	r3, [r5, #0]	@ g_event_report.8261, g_event_report
	cmp	r3, #0	@ g_event_report.8261,
	beq	.L3697	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8261
	mov	r0, r6	@ D.45044, tmp234
	b	.L3679	@
.L3711:
	.align	2
.L3710:
	.word	.LANCHOR2+432
	.fnend
	.size	H264_DecOneNal, .-H264_DecOneNal
	.align	2
	.global	H264DEC_DecodePacket
	.type	H264DEC_DecodePacket, %function
H264DEC_DecodePacket:
	.fnstart
.LFB2047:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	cmp	r1, #0	@ pPacket,
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r5, #0	@ tmp159,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	str	r5, [sp, #12]	@ tmp159, NewNum
	str	r5, [sp, #16]	@ tmp159, ReadNum
	str	r5, [sp, #20]	@ tmp159, RefNum
	beq	.L3754	@,
	ldr	r3, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r6, #51328	@ tmp173,
	ldr	r2, [r0, r6]	@ <variable>.HaveNalNotDecoded, <variable>.HaveNalNotDecoded
	ldr	ip, [r3, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r2, #1	@ <variable>.HaveNalNotDecoded,
	movw	r2, #52828	@ tmp162,
	str	ip, [r0, r2]	@ <variable>.s32DecMode, <variable>.advanced_cfg
	movw	r2, #52832	@ tmp165,
	ldr	ip, [r3, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	str	ip, [r0, r2]	@ <variable>.s32RefErrThr, <variable>.ref_error_thr
	movw	ip, #52780	@ tmp171,
	ldr	r2, [r3, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	movw	r3, #52836	@ tmp168,
	str	r5, [r0, ip]	@ tmp159, <variable>.SeErrFlg
	str	r2, [r0, r3]	@ <variable>.s32OutErrThr, <variable>.out_error_thr
	beq	.L3715	@,
	bl	ReceivePacket	@
	str	r5, [r4, r6]	@ tmp159, <variable>.HaveNalNotDecoded
	cmp	r0, #0	@,
	ldreq	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	beq	.L3716	@,
.L3717:
	mov	r0, #0	@ D.45507,
.L3714:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L3715:
	ldr	r0, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r0, #0	@ <variable>.pCurrNal,
	strne	r5, [r4, r6]	@ tmp159, <variable>.HaveNalNotDecoded
	beq	.L3756	@,
.L3716:
	mov	r6, #0	@ tmp179,
	add	r5, r4, #13504	@ D.45527, pH264Ctx,
	str	r6, [r0, #64]	@ tmp179, <variable>.nal_bitoffset
	add	r5, r5, #24	@ D.45527, D.45527,
	ldr	lr, [r4, #368]	@ temp.8322, <variable>.pCurrNal
	mov	r0, r5	@, D.45527
	ldr	r2, [lr, #12]	@, <variable>.bitstream_length
	ldr	r1, [lr, #8]	@, <variable>.streamBuffer
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.45527
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	uxtb	ip, r0	@ nal_header,
	and	r2, ip, #31	@ nal_unit_type, nal_header,
	strb	r2, [r3, #2]	@ nal_unit_type, <variable>.nal_unit_type
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r2, #1	@ nal_unit_type,
	cmpne	r2, #5	@, nal_unit_type,
	ubfx	r0, ip, #5, #2	@ tmp188, nal_header,,
	str	r0, [r1, #76]	@ tmp188, <variable>.nal_ref_idc
	bne	.L3720	@,
	mov	r0, r4	@, pH264Ctx
	add	r1, sp, #8	@,,
	add	r2, sp, #4	@,,
	bl	InquireSliceProperty	@
	cmp	r0, r6	@,
	bne	.L3721	@,
	ldr	r1, [sp, #8]	@ IsNewPic, IsNewPic
	movw	ip, #52856	@ tmp198,
	ldr	r0, [r4, ip]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r1, #1	@ IsNewPic,
	addeq	r0, r0, #1	@, tmp204, <variable>.PicCounter
	str	r0, [r4, ip]	@ tmp204, <variable>.PicCounter
	beq	.L3757	@,
.L3722:
	ldr	r6, [sp, #4]	@ IsSizeChanged, IsSizeChanged
	cmp	r6, #1	@ IsSizeChanged,
	bne	.L3720	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3758	@,
.L3727:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L3759	@,
.L3734:
	movw	r6, #52840	@ tmp246,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L3760	@,
.L3720:
	mov	r0, r4	@, pH264Ctx
	mov	r6, #0	@ tmp278,
	bl	FindTrailZeros	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r0, r5	@, D.45527
	str	r6, [r2, #64]	@ tmp278, <variable>.nal_bitoffset
	ldr	r3, [r4, #368]	@ temp.8342, <variable>.pCurrNal
	ldr	r1, [r3, #8]	@, <variable>.streamBuffer
	ldr	r2, [r3, #12]	@, <variable>.bitstream_length
	bl	BsInit	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, tmp278
	bl	H264_DecOneNal	@
	cmp	r0, r6	@,
	beq	.L3717	@,
.L3754:
	bl	vfmw_dprint_nothing	@
.L3755:
	mvn	r0, #0	@ D.45507,
	b	.L3714	@
.L3756:
	str	r0, [r4, r6]	@ <variable>.pCurrNal, <variable>.HaveNalNotDecoded
	b	.L3714	@
.L3757:
	movw	r1, #20681	@ tmp206,
	movw	r0, #52860	@ tmp208,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r3, #52764	@ tmp217,
	ldr	lr, [r4, r0]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #1	@ <variable>.CurrSlice.field_pic_flag,
	addeq	lr, lr, #1	@ tmp211, <variable>.NewPicCounter,
	addne	lr, lr, #2	@ tmp215, <variable>.NewPicCounter,
	cmp	r2, #0	@ <variable>.SliceParaNum,
	str	lr, [r4, r0]	@ tmp215, <variable>.NewPicCounter
	beq	.L3722	@,
	ldr	lr, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r3, #0	@ tmp220,
	mov	r2, #12	@,
	mov	r0, r5	@, D.45527
	ldr	r1, .L3762	@,
	str	r3, [lr, #64]	@ tmp220, <variable>.nal_bitoffset
	bl	BsInit	@
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecOneNal	@
	movw	r2, #20681	@ tmp223,
	movw	ip, #52860	@ tmp225,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r0, [r4, ip]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	movw	r3, #51328	@ tmp233,
	cmp	r1, #1	@ <variable>.CurrSlice.field_pic_flag,
	mov	r2, #1	@ tmp234,
	subeq	r0, r0, #1	@ tmp228, <variable>.NewPicCounter,
	subne	r0, r0, #2	@ tmp232, <variable>.NewPicCounter,
	str	r2, [r4, r3]	@ tmp234, <variable>.HaveNalNotDecoded
	str	r0, [r4, ip]	@ tmp232, <variable>.NewPicCounter
	mvn	r0, #1	@ D.45507,
	b	.L3714	@
.L3760:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r3, sp, #12	@,,
	add	r1, sp, #20	@,,
	add	r2, sp, #16	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ temp.8335, <variable>.pstExtraData
	ldr	r0, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3761	@,
.L3735:
	ldr	r3, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #1	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3720	@,
	ldr	r2, [sp, #16]	@ ReadNum, ReadNum
	ldr	lr, [sp, #12]	@ NewNum, NewNum
	add	ip, lr, r2	@ tmp261, NewNum, ReadNum
	cmp	ip, #0	@ tmp261,
	ble	.L3720	@,
	movw	r0, #52892	@ tmp266,
	movw	r1, #51328	@ tmp264,
	str	r3, [r4, r0]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.DSD_NeedClearQue
	mvn	r0, #1	@ D.45507,
	str	r3, [r4, r1]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.HaveNalNotDecoded
	b	.L3714	@
.L3759:
	bl	vfmw_dprint_nothing	@
	b	.L3734	@
.L3758:
	movw	r3, #26628	@ tmp238,
	ldr	lr, [r4, r3]	@ D.45966, <variable>.DPB.used_size
	cmp	lr, #0	@ D.45966,
	beq	.L3727	@,
	mov	r1, #26624	@ tmp239,
	ldr	r2, [r4, r1]	@ temp.8347, <variable>.DPB.size
	cmp	lr, r2	@ D.45966, temp.8347
	bls	.L3728	@,
	movw	r6, #26432	@ tmp241,
	cmp	r2, #0	@ temp.8347,
	ldr	r0, [r4, r6]	@ prephitmp.8303, <variable>.DPB.fs
	str	r2, [r4, r3]	@ temp.8347, <variable>.DPB.used_size
	movne	lr, r2	@ D.45966, temp.8347
	ldr	r1, [r0, #524]	@ s32MaxPoc.8349, <variable>.poc
	beq	.L3729	@,
.L3730:
	tst	lr, #1	@ D.45966,
	add	ip, r4, #26368	@ ivtmp.8316, pH264Ctx,
	mov	r0, #0	@ u32Pos.8348,
	add	r3, ip, #68	@ ivtmp.8316, ivtmp.8316,
	mov	r6, r0	@ u32Pos, u32Pos.8348
	bne	.L3739	@,
	mov	r0, #1	@ u32Pos.8348,
	cmp	r0, lr	@ u32Pos.8348, D.45966
	bcs	.L3750	@,
	ldr	ip, [r3, #0]	@ D.45961, <variable>.DPB.fs
	ldr	r2, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r2, r1	@ s32MaxPoc, s32MaxPoc.8349
	ble	.L3743	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L3743	@,
	mov	r6, r0	@ u32Pos, u32Pos.8348
.L3752:
	add	r3, r3, #4	@ ivtmp.8316, ivtmp.8316,
	mov	r1, r2	@ s32MaxPoc.8349, s32MaxPoc
.L3739:
	add	r0, r0, #1	@ tmp295, u32Pos.8348,
	cmp	r0, lr	@ tmp295, D.45966
	bcs	.L3750	@,
	ldr	ip, [r3, #0]	@ D.45961, <variable>.DPB.fs
	ldr	r2, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r2, r1	@ s32MaxPoc, s32MaxPoc.8349
	ble	.L3731	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	movne	r6, r0	@ u32Pos, tmp295
	beq	.L3731	@,
.L3732:
	ldr	ip, [r3, #4]	@ D.45961, <variable>.DPB.fs
	add	r0, r0, #1	@ u32Pos.8348, tmp295,
	add	r3, r3, #4	@ tmp294, ivtmp.8316,
	ldr	r1, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r1, r2	@ s32MaxPoc, s32MaxPoc
	ble	.L3746	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L3746	@,
	mov	r6, r0	@ u32Pos, u32Pos.8348
	add	r3, r3, #4	@ ivtmp.8316, tmp294,
	b	.L3739	@
.L3731:
	mov	r2, r1	@ s32MaxPoc, s32MaxPoc.8349
	b	.L3732	@
.L3746:
	mov	r1, r2	@ s32MaxPoc, s32MaxPoc
	add	r3, r3, #4	@ ivtmp.8316, tmp294,
	b	.L3739	@
.L3750:
	add	lr, r6, #6592	@ tmp243, u32Pos,
	add	r2, lr, #16	@ tmp243, tmp243,
	ldr	r0, [r4, r2, asl #2]	@ prephitmp.8303, <variable>.DPB.fs
.L3729:
	mov	r3, #1	@ tmp245,
	str	r3, [r0, #384]	@ tmp245, <variable>.fs_image.u32IsLastFrame
	b	.L3727	@
.L3743:
	mov	r2, r1	@ s32MaxPoc, s32MaxPoc.8349
	b	.L3752	@
.L3728:
	movw	r1, #26432	@ tmp287,
	ldr	r6, [r4, r1]	@ <variable>.DPB.fs, <variable>.DPB.fs
	ldr	r1, [r6, #524]	@ s32MaxPoc.8349, <variable>.poc
	b	.L3730	@
.L3721:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	ip, #:lower16:g_event_report	@ tmp275,
	movt	ip, #:upper16:g_event_report	@ tmp275,
	ldr	r3, [ip, #0]	@ g_event_report.898, g_event_report
	cmp	r3, #0	@ g_event_report.898,
	beq	.L3755	@,
	movw	lr, #52840	@ tmp276,
	mov	r2, r6	@, tmp179
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #113	@,
	blx	r3	@ g_event_report.898
	mvn	r0, #0	@ D.45507,
	b	.L3714	@
.L3761:
	movw	r2, #52876	@ tmp254,
	ldr	ip, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	ldr	r1, [r4, r2]	@ <variable>.DSD_OldWidth, <variable>.DSD_OldWidth
	cmp	r1, ip	@ <variable>.DSD_OldWidth, <variable>.s32DSDThrWidth
	bgt	.L3736	@,
	movw	r1, #52880	@ tmp257,
	ldr	r0, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	lr, [r4, r1]	@ <variable>.DSD_OldHeight, <variable>.DSD_OldHeight
	cmp	lr, r0	@ <variable>.DSD_OldHeight, <variable>.s32DSDThrHeight
	ble	.L3735	@,
.L3736:
	ldr	r3, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #1	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3720	@,
	ldr	ip, [sp, #12]	@ NewNum, NewNum
	cmp	ip, #0	@ NewNum,
	bgt	.L3737	@,
	ldr	r2, [sp, #16]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	ble	.L3720	@,
.L3737:
	movw	r3, #52892	@ tmp271,
	movw	r1, #51328	@ tmp273,
	mov	r0, #0	@ tmp272,
	add	lr, r0, #1	@ tmp274, tmp274,
	str	r0, [r4, r3]	@ tmp272, <variable>.DSD_NeedClearQue
	mvn	r0, #1	@ D.45507,
	str	lr, [r4, r1]	@ tmp274, <variable>.HaveNalNotDecoded
	b	.L3714	@
.L3763:
	.align	2
.L3762:
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
	.type	SarTable.43900, %object
	.size	SarTable.43900, 136
SarTable.43900:
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
	.type	sps_tmp.44322, %object
	.size	sps_tmp.44322, 4000
sps_tmp.44322:
	.space	4000
	.type	pps_tmp.43284, %object
	.size	pps_tmp.43284, 2208
pps_tmp.43284:
	.space	2208
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
