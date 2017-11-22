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
	.file	"vdm_drv.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vdm_drv.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.o
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
	.global	VDMDRV_SetPriority
	.type	VDMDRV_SetPriority, %function
VDMDRV_SetPriority:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldmia	r0, {r2, r3}	@ phole ldm
	bic	r2, r2, r2, asr #31	@ MaxPrio, MaxPrio.584
	ldr	ip, [r0, #8]	@ MaxPrio.590,
	cmp	r2, r3	@ MaxPrio, MaxPrio.588
	ldr	r1, [r0, #12]	@ MaxPrio.592,
	movlt	r2, r3	@ MaxPrio, MaxPrio.588
	movge	r3, #0	@ MaxPrioChanID,
	movlt	r3, #1	@ MaxPrioChanID,
	cmp	r2, ip	@ MaxPrio, MaxPrio.590
	movlt	r2, ip	@ MaxPrio, MaxPrio.590
	movlt	r3, #2	@ MaxPrioChanID,
	cmp	r2, r1	@ MaxPrio, MaxPrio.592
	movlt	r2, r1	@ MaxPrio, MaxPrio.592
	movlt	r3, #3	@ MaxPrioChanID,
	cmp	r2, #0	@ MaxPrio,
	movwle	r2, #:lower16:.LANCHOR0	@ tmp173,
	movle	r0, #0	@ total,
	movtle	r2, #:upper16:.LANCHOR0	@ tmp173,
	ble	.L7	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp173,
	movt	r2, #:upper16:.LANCHOR0	@ tmp173,
	mov	ip, #0	@ tmp161,
	str	r3, [r2, #16]	@ MaxPrioChanID, g_ChanCtx.ChanIdTabByPrior
	str	ip, [r0, r3, asl #2]	@ tmp161,* pPrioArray
	ldr	r1, [r0, #0]	@ MaxPrio.596,* pPrioArray
	cmp	r1, ip	@ MaxPrio.596,
	movle	r1, ip	@ MaxPrio.596, tmp161
	movgt	r3, ip	@ MaxPrioChanID, tmp161
	ldr	ip, [r0, #4]	@ MaxPrio.597,
	cmp	r1, ip	@ MaxPrio.596, MaxPrio.597
	movlt	r1, ip	@ MaxPrio.596, MaxPrio.597
	ldr	ip, [r0, #8]	@ MaxPrio.598,
	movlt	r3, #1	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.596, MaxPrio.598
	movlt	r1, ip	@ MaxPrio.596, MaxPrio.598
	ldr	ip, [r0, #12]	@ MaxPrio.599,
	movlt	r3, #2	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.596, MaxPrio.599
	movlt	r1, ip	@ MaxPrio.596, MaxPrio.599
	movlt	r3, #3	@ MaxPrioChanID,
	cmp	r1, #0	@ MaxPrio.596,
	movle	r0, #1	@ total,
	ble	.L7	@,
	str	r3, [r2, #20]	@ MaxPrioChanID, g_ChanCtx.ChanIdTabByPrior
	mov	ip, #0	@ tmp163,
	str	ip, [r0, r3, asl #2]	@ tmp163,* pPrioArray
	ldr	r1, [r0, #0]	@ MaxPrio.603,* pPrioArray
	cmp	r1, ip	@ MaxPrio.603,
	movle	r1, ip	@ MaxPrio.603, tmp163
	movgt	r3, ip	@ MaxPrioChanID, tmp163
	ldr	ip, [r0, #4]	@ MaxPrio.604,
	cmp	r1, ip	@ MaxPrio.603, MaxPrio.604
	movlt	r1, ip	@ MaxPrio.603, MaxPrio.604
	ldr	ip, [r0, #8]	@ MaxPrio.605,
	movlt	r3, #1	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.603, MaxPrio.605
	movlt	r1, ip	@ MaxPrio.603, MaxPrio.605
	ldr	ip, [r0, #12]	@ MaxPrio.606,
	movlt	r3, #2	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.603, MaxPrio.606
	movlt	r1, ip	@ MaxPrio.603, MaxPrio.606
	movlt	r3, #3	@ MaxPrioChanID,
	cmp	r1, #0	@ MaxPrio.603,
	movle	r0, #2	@ total,
	ble	.L7	@,
	mov	ip, #0	@ tmp165,
	str	r3, [r2, #24]	@ MaxPrioChanID, g_ChanCtx.ChanIdTabByPrior
	str	ip, [r0, r3, asl #2]	@ tmp165,* pPrioArray
	ldr	r1, [r0, #0]	@ MaxPrio.585,* pPrioArray
	cmp	r1, ip	@ MaxPrio.585,
	movle	r1, ip	@ MaxPrio.585, tmp165
	bgt	.L37	@,
.L21:
	ldr	ip, [r0, #4]	@ MaxPrio.586,
	cmp	r1, ip	@ MaxPrio.585, MaxPrio.586
	movlt	r1, ip	@ MaxPrio.585, MaxPrio.586
	ldr	ip, [r0, #8]	@ MaxPrio.587,
	movlt	r3, #1	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.585, MaxPrio.587
	movlt	r1, ip	@ MaxPrio.585, MaxPrio.587
	ldr	ip, [r0, #12]	@ MaxPrio.583,
	movlt	r3, #2	@ MaxPrioChanID,
	cmp	ip, r1	@ MaxPrio.583, MaxPrio.585
	movgt	r3, #3	@ MaxPrioChanID,
	movgt	r1, ip	@ MaxPrio.585, MaxPrio.583
	cmp	r1, #0	@ MaxPrio.585,
	strgt	r3, [r2, #28]	@ MaxPrioChanID, g_ChanCtx.ChanIdTabByPrior
	movgt	r2, #0	@ tmp172,
	strgt	r2, [r0, r3, asl #2]	@ tmp172,* pPrioArray
	ble	.L38	@,
.L29:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L37:
	mov	r3, ip	@ MaxPrioChanID, tmp165
	b	.L21	@
.L38:
	mov	r0, #3	@ total,
.L7:
	mov	r1, r0, asl #2	@ ivtmp.580, total,
	add	r3, r0, #1	@ j, total,
	add	r4, r1, r2	@ tmp168, ivtmp.580, tmp173
	cmp	r3, #3	@ j,
	rsb	r0, r0, #3	@ tmp175, total,
	mvn	ip, #0	@ tmp174,
	add	r1, r1, #4	@ ivtmp.580, ivtmp.580,
	and	r0, r0, #1	@ tmp176, tmp175,
	str	ip, [r4, #16]	@ tmp174,
	bgt	.L29	@,
	cmp	r0, #0	@ tmp176,
	beq	.L23	@,
	add	r3, r3, #1	@ j, j,
	add	r0, r1, r2	@ tmp189, ivtmp.580, tmp173
	cmp	r3, #3	@ j,
	add	r1, r1, #4	@ ivtmp.580, ivtmp.580,
	str	ip, [r0, #16]	@ tmp174,
	bgt	.L29	@,
.L23:
	add	r0, r1, #4	@ tmp178, ivtmp.580,
	add	r3, r3, #2	@ j, j,
	add	r5, r1, r2	@ tmp181, ivtmp.580, tmp173
	add	r4, r0, r2	@ tmp186, tmp178, tmp173
	cmp	r3, #3	@ j,
	add	r1, r0, #4	@ ivtmp.580, tmp178,
	str	ip, [r5, #16]	@ tmp174,
	str	ip, [r4, #16]	@ tmp174,
	ble	.L23	@,
	b	.L29	@
	.fnend
	.size	VDMDRV_SetPriority, .-VDMDRV_SetPriority
	.align	2
	.global	VDMDRV_AdjustPriorityAfterDec
	.type	VDMDRV_AdjustPriorityAfterDec, %function
VDMDRV_AdjustPriorityAfterDec:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r2, [r3, #16]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #0	@ i.504,
	moveq	r4, r6	@ i, i.504
	beq	.L41	@,
	ldr	r1, [r3, #20]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r1, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #1	@ i.504,
	moveq	r4, r6	@ i, i.504
	beq	.L41	@,
	ldr	ip, [r3, #24]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	ip, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	beq	.L43	@,
	ldr	r2, [r3, #28]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	beq	.L49	@,
	mov	r6, #0	@ i.504,
	add	r8, r3, #20	@ D.37931, tmp164,
	mov	r4, r6	@ i, i.504
.L48:
	ldr	ip, [r8, #0]	@ D.37932,* D.37931
	cmp	ip, #0	@ D.37932,
	blt	.L49	@,
	add	r0, r6, #2	@ tmp151, i.504,
	tst	r4, #1	@ i,
	ldr	r2, .L57	@ tmp165,
	mov	r1, r0, asl #2	@ ivtmp.661, tmp151,
	beq	.L45	@,
	add	r6, r2, r6, asl #2	@, D.37924, tmp165, i.504,
	ldr	r7, [r3, ip, asl #2]	@ tmp179,
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r6, #0]	@ temp.663,* D.37924
	ldr	r5, [r3, r0, asl #2]	@ tmp180,
	cmp	r7, r5	@ tmp179, tmp180
	strge	ip, [r6, #0]	@ D.37932,* D.37924
	strge	r0, [r8, #0]	@ temp.663,* D.37931
	cmp	r4, #2	@ i,
	bgt	.L49	@,
	add	r8, r2, r1	@ D.37931, tmp165, ivtmp.661
	mov	r6, r4	@ i.504, i
	add	r1, r1, #4	@ ivtmp.661, ivtmp.661,
	ldr	ip, [r8, #0]	@ D.37932,* D.37931
	cmp	ip, #0	@ D.37932,
	bge	.L45	@,
.L49:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L47:
	ldr	ip, [r2, r1]	@ D.37932,* ivtmp.661
	add	r1, r5, #4	@ ivtmp.661, tmp169,
	cmp	ip, #0	@ D.37932,
	blt	.L49	@,
	ldr	r7, [r2, r0, asl #2]	@ temp.663,
	ldr	fp, [r3, ip, asl #2]	@ tmp184,
	ldr	sl, [r3, r7, asl #2]	@ tmp185,
	cmp	fp, sl	@ tmp184, tmp185
	strge	ip, [r2, r0, asl #2]	@ D.37932,
	strge	r7, [r9, #0]	@ temp.663,* D.37931
	ldr	ip, [r2, r5]	@ D.37932,
	cmp	ip, #0	@ D.37932,
	blt	.L49	@,
.L45:
	ldr	r7, [r2, r6, asl #2]	@ temp.663,
	add	r0, r4, #1	@ tmp168, i,
	ldr	fp, [r3, ip, asl #2]	@ tmp159,
	add	r4, r0, #1	@ i, tmp168,
	add	r5, r1, #4	@ tmp169, ivtmp.661,
	add	r9, r2, r1	@ D.37931, tmp165, ivtmp.661
	ldr	sl, [r3, r7, asl #2]	@ tmp160,
	cmp	fp, sl	@ tmp159, tmp160
	strge	ip, [r2, r6, asl #2]	@ D.37932,
	strge	r7, [r8, #0]	@ temp.663,* D.37931
	cmp	r0, #2	@ tmp168,
	mov	r6, r4	@ i.504, i
	add	r8, r2, r5	@ D.37931, tmp165, tmp169
	ble	.L47	@,
	b	.L49	@
.L43:
	mov	r6, #2	@ i.504,
	mov	r4, r6	@ i, i.504
.L41:
	add	r8, r6, #1	@ pretmp.644, i.504,
	ldr	r1, .L57	@ tmp175,
	add	r8, r1, r8, asl #2	@, D.37931, tmp175, pretmp.644,
	b	.L48	@
.L58:
	.align	2
.L57:
	.word	.LANCHOR0+16
	.fnend
	.size	VDMDRV_AdjustPriorityAfterDec, .-VDMDRV_AdjustPriorityAfterDec
	.align	2
	.global	VDMDRV_GetSleepStage
	.type	VDMDRV_GetSleepStage, %function
VDMDRV_GetSleepStage:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, VdhId,
	ldr	r0, [r3, #48]	@, s_eVdmDrvSleepState
	bx	lr	@
	.fnend
	.size	VDMDRV_GetSleepStage, .-VDMDRV_GetSleepStage
	.align	2
	.global	VDMDRV_IsChanDec
	.type	VDMDRV_IsChanDec, %function
VDMDRV_IsChanDec:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r0, #8	@ tmp137, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r0, [r3, r1, asl #2]	@ tmp138, g_ChanCtx.ChanDecByVdhPlusOne
	subs	r0, r0, #0	@, tmp138,
	movne	r0, #1	@
	bx	lr	@
	.fnend
	.size	VDMDRV_IsChanDec, .-VDMDRV_IsChanDec
	.align	2
	.global	VDMDRV_SetChanIsDec
	.type	VDMDRV_SetChanIsDec, %function
VDMDRV_SetChanIsDec:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #8	@ tmp136, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	add	r1, r1, #1	@ tmp137, VdhID,
	str	r1, [r3, r2, asl #2]	@ tmp137, g_ChanCtx.ChanDecByVdhPlusOne
	b	VDMDRV_AdjustPriorityAfterDec	@
	.fnend
	.size	VDMDRV_SetChanIsDec, .-VDMDRV_SetChanIsDec
	.align	2
	.global	VDMDRV_ClearChanIsDec
	.type	VDMDRV_ClearChanIsDec, %function
VDMDRV_ClearChanIsDec:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8	@ tmp135, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #0	@ tmp136,
	str	r2, [r3, r0, asl #2]	@ tmp136, g_ChanCtx.ChanDecByVdhPlusOne
	bx	lr	@
	.fnend
	.size	VDMDRV_ClearChanIsDec, .-VDMDRV_ClearChanIsDec
	.align	2
	.global	VDMDRV_AvsFirstFldNeedRepair
	.type	VDMDRV_AvsFirstFldNeedRepair, %function
VDMDRV_AvsFirstFldNeedRepair:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #6	@ VidStd,
	beq	.L71	@,
.L68:
	mov	r0, #0	@ D.38416,
	bx	lr	@
.L71:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	bne	.L68	@,
	ldr	ip, .L72	@ tmp140,
	movw	r1, #1144	@ tmp142,
	mla	r2, r1, r2, ip	@ tmp143, tmp142, VdhId, tmp140
	ldr	r0, [r2, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	movle	r0, #0	@, D.38416
	movgt	r0, #1	@, D.38416
	bx	lr	@
.L73:
	.align	2
.L72:
	.word	.LANCHOR0+52
	.fnend
	.size	VDMDRV_AvsFirstFldNeedRepair, .-VDMDRV_AvsFirstFldNeedRepair
	.align	2
	.global	VDMDRV_AvsSecondFldNeedRepair
	.type	VDMDRV_AvsSecondFldNeedRepair, %function
VDMDRV_AvsSecondFldNeedRepair:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #6	@ VidStd,
	beq	.L78	@,
.L75:
	mov	r0, #0	@ D.38434,
	bx	lr	@
.L78:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	bne	.L75	@,
	ldr	ip, .L79	@ tmp140,
	movw	r1, #1144	@ tmp143,
	mla	r2, r1, r2, ip	@ tmp144, tmp143, VdhId, tmp140
	ldr	r0, [r2, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	movle	r0, #0	@, D.38434
	movgt	r0, #1	@, D.38434
	bx	lr	@
.L80:
	.align	2
.L79:
	.word	.LANCHOR0+52
	.fnend
	.size	VDMDRV_AvsSecondFldNeedRepair, .-VDMDRV_AvsSecondFldNeedRepair
	.align	2
	.global	VDMDRV_IsVp6NvopCopy
	.type	VDMDRV_IsVp6NvopCopy, %function
VDMDRV_IsVp6NvopCopy:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L86	@,
	cmp	r0, #10	@ VidStd,
	cmpne	r0, #12	@, VidStd,
	movne	r3, #0	@, tmp143
	moveq	r3, #1	@, tmp143
	bne	.L87	@,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.38466
	moveq	r0, #1	@, D.38466
	ldmfd	sp!, {r4, pc}	@
.L87:
	cmp	r0, #11	@ VidStd,
	movne	r0, r3	@ D.38466, tmp143
	ldmnefd	sp!, {r4, pc}	@
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.38466
	moveq	r0, #1	@, D.38466
	ldmfd	sp!, {r4, pc}	@
.L86:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.38466, pDecParam
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_IsVp6NvopCopy, .-VDMDRV_IsVp6NvopCopy
	.align	2
	.global	VDMDRV_IsVc1SkpicCopy
	.type	VDMDRV_IsVc1SkpicCopy, %function
VDMDRV_IsVc1SkpicCopy:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L93	@,
	cmp	r0, #1	@ VidStd,
	movne	r0, #0	@ D.38454,
	ldmnefd	sp!, {r4, pc}	@
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsSkpicCopy, <variable>.IsSkpicCopy
	cmp	r0, #1	@ <variable>.IsSkpicCopy,
	movne	r0, #0	@, D.38454
	moveq	r0, #1	@, D.38454
	ldmfd	sp!, {r4, pc}	@
.L93:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.38454, pDecParam
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_IsVc1SkpicCopy, .-VDMDRV_IsVc1SkpicCopy
	.align	2
	.global	VDMDRV_IsMpeg4NvopCopy
	.type	VDMDRV_IsMpeg4NvopCopy, %function
VDMDRV_IsMpeg4NvopCopy:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L99	@,
	cmp	r0, #2	@ VidStd,
	movne	r0, #0	@ D.38442,
	ldmnefd	sp!, {r4, pc}	@
	ldrb	r0, [r4, #158]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.38442
	moveq	r0, #1	@, D.38442
	ldmfd	sp!, {r4, pc}	@
.L99:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.38442, pDecParam
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_IsMpeg4NvopCopy, .-VDMDRV_IsMpeg4NvopCopy
	.align	2
	.global	VDMDRV_StartDec
	.type	VDMDRV_StartDec, %function
VDMDRV_StartDec:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #68]	@ D.37992, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.37992,
	beq	.L101	@,
	blx	r3	@ D.37992
.L102:
	add	r4, r4, r4, asl #2	@, tmp140, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #1	@ tmp144,
	add	r0, r1, r4, asl #3	@, tmp142, tmp136, tmp140,
	str	r2, [r0, #1196]	@ tmp144, <variable>.VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L101:
	bl	vfmw_dprint_nothing	@
	b	.L102	@
	.fnend
	.size	VDMDRV_StartDec, .-VDMDRV_StartDec
	.align	2
	.global	VDMDRV_StartRepair
	.type	VDMDRV_StartRepair, %function
VDMDRV_StartRepair:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp136,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp136,
	mov	r4, r0	@ StateAfterRepair, StateAfterRepair
	mov	r5, r1	@ VdhId, VdhId
	ldr	r3, [r3, #64]	@ D.37984, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	cmp	r3, #0	@ D.37984,
	beq	.L105	@,
	mov	r0, r1	@, VdhId
	add	r5, r5, r5, asl #2	@, tmp141, VdhId, VdhId,
	blx	r3	@ D.37984
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r1, r5, asl #3	@, tmp143, tmp137, tmp141,
	str	r4, [r0, #1196]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L105:
	add	r5, r5, r5, asl #2	@, tmp141, VdhId, VdhId,
	bl	vfmw_dprint_nothing	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r1, r5, asl #3	@, tmp143, tmp137, tmp141,
	str	r4, [r0, #1196]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VDMDRV_StartRepair, .-VDMDRV_StartRepair
	.align	2
	.global	VDMDRV_ExitSleep
	.type	VDMDRV_ExitSleep, %function
VDMDRV_ExitSleep:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #0]	@ D.37975, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.37975,
	beq	.L109	@,
	blx	r3	@ D.37975
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r0, #0	@ tmp141,
	add	r4, r1, r4, asl #2	@, tmp139, tmp136, VdhId,
	str	r0, [r4, #48]	@ tmp141, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
.L109:
	bl	vfmw_dprint_nothing	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r0, #0	@ tmp141,
	add	r4, r1, r4, asl #2	@, tmp139, tmp136, VdhId,
	str	r0, [r4, #48]	@ tmp141, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_ExitSleep, .-VDMDRV_ExitSleep
	.align	2
	.global	VDMDRV_Reset
	.type	VDMDRV_Reset, %function
VDMDRV_Reset:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L114	@ tmp135,
	add	r0, r0, r0, asl #2	@, tmp139, VdhId, VdhId,
	mov	r1, #40	@,
	add	r0, r3, r0, asl #3	@,, tmp135, tmp139,
	b	__memzero	@
.L115:
	.align	2
.L114:
	.word	.LANCHOR0+1196
	.fnend
	.size	VDMDRV_Reset, .-VDMDRV_Reset
	.align	2
	.global	VDMDRV_Init
	.type	VDMDRV_Init, %function
VDMDRV_Init:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r3, #0]	@ D.37850, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r6, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.37850,
	beq	.L117	@,
	blx	r3	@ D.37850
.L118:
	mov	r5, r6, asl #2	@ tmp140, VdhId,
	movw	r4, #:lower16:.LANCHOR0	@ tmp136,
	movt	r4, #:upper16:.LANCHOR0	@ tmp136,
	add	r2, r5, r6	@ tmp141, tmp140, VdhId
	add	lr, r4, #1184	@ tmp137, tmp136,
	add	r4, r5, r4	@ tmp147, tmp140, tmp136
	add	ip, lr, #12	@ tmp137, tmp137,
	mov	r1, #40	@,
	add	r0, ip, r2, asl #3	@,, tmp137, tmp141,
	bl	__memzero	@
	mov	r0, #0	@ tmp149,
	str	r0, [r4, #48]	@ tmp149, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L117:
	bl	vfmw_dprint_nothing	@
	b	.L118	@
	.fnend
	.size	VDMDRV_Init, .-VDMDRV_Init
	.align	2
	.global	VDMDRV_ActivateVDH
	.type	VDMDRV_ActivateVDH, %function
VDMDRV_ActivateVDH:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp871,
	movt	r4, #:upper16:.LANCHOR0	@ tmp871,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #16]	@ temp.1041, g_ChanCtx.ChanIdTabByPrior
	cmp	r3, #0	@ temp.1041,
	blt	.L121	@,
	mov	r6, r5, asl #2	@ tmp870, VdhId,
	mov	r0, r3	@, temp.1041
	add	r8, r6, r5	@ tmp181, tmp870, VdhId
	add	r7, r8, #1	@ tmp182, tmp181,
	add	r7, r4, r7, asl #3	@, tmp185, tmp871, tmp182,
	str	r3, [r7, #1196]	@ temp.1041, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L122	@,
	ldr	r0, [r7, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r3, r0, #8	@ tmp197, <variable>.ChanId,
	ldr	r3, [r4, r3, asl #2]	@ tmp199, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp199,
	beq	.L155	@,
.L122:
	bl	vfmw_dprint_nothing	@
.L125:
	ldr	r3, [r4, #20]	@ temp.1064, g_ChanCtx.ChanIdTabByPrior
	movw	r7, #:lower16:.LANCHOR0	@ tmp277,
	movt	r7, #:upper16:.LANCHOR0	@ tmp277,
	cmp	r3, #0	@ temp.1064,
	blt	.L121	@,
	add	sl, r6, r5	@ tmp281, tmp870, VdhId
	mov	r0, r3	@, temp.1064
	add	r8, sl, #1	@ tmp282, tmp281,
	add	r8, r7, r8, asl #3	@, tmp285, tmp277, tmp282,
	str	r3, [r8, #1196]	@ temp.1064, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L127	@,
	ldr	r0, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r2, r0, #8	@ tmp297, <variable>.ChanId,
	ldr	r3, [r7, r2, asl #2]	@ tmp299, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp299,
	bne	.L127	@,
	add	r7, r7, sl, asl #3	@, tmp306, tmp277, tmp281,
	str	r3, [r7, #1212]	@ tmp299, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ temp.1069,
	str	r0, [r7, #1212]	@ temp.1069, <variable>.pDecParam
	beq	.L156	@,
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_GetVidStd	@
	movw	r3, #:lower16:AcceleratorCharacter	@ tmp356,
	movt	r3, #:upper16:AcceleratorCharacter	@ tmp356,
	str	r0, [r8, #1200]	@ D.38052, <variable>.VidStd
	mov	r2, r0	@ D.38052,
	ldr	r3, [r3, #0]	@ AcceleratorCharacter.1072, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.1072,
	beq	.L126	@,
	ldr	r1, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r0, sp, #4	@,,
	ldr	lr, [r7, #1212]	@ <variable>.pDecParam, <variable>.pDecParam
	stmib	sp, {r1, r2, lr}	@ phole stm
	blx	r3	@ AcceleratorCharacter.1072
	cmp	r0, #1	@,
	beq	.L130	@,
.L121:
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L155:
	add	r8, r4, r8, asl #3	@, tmp206, tmp871, tmp181,
	str	r3, [r8, #1212]	@ tmp199, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ temp.1057,
	str	r0, [r8, #1212]	@ temp.1057, <variable>.pDecParam
	beq	.L157	@,
	ldr	r0, [r7, #1196]	@, <variable>.ChanId
	bl	VCTRL_GetVidStd	@
	mov	r2, r0	@ D.38052,
	movw	r0, #:lower16:AcceleratorCharacter	@ tmp256,
	movt	r0, #:upper16:AcceleratorCharacter	@ tmp256,
	str	r2, [r7, #1200]	@ D.38052, <variable>.VidStd
	ldr	r3, [r0, #0]	@ AcceleratorCharacter.1060, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.1060,
	beq	.L126	@,
	ldr	ip, [r7, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r0, sp, #4	@,,
	ldr	r1, [r8, #1212]	@ <variable>.pDecParam, <variable>.pDecParam
	str	r2, [sp, #8]	@ D.38052, DecparamInfo.VidStd
	str	ip, [sp, #4]	@ <variable>.ChanId, DecparamInfo.ChanID
	str	r1, [sp, #12]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.1060
	cmp	r0, #1	@,
	bne	.L121	@,
	b	.L125	@
.L127:
	bl	vfmw_dprint_nothing	@
.L130:
	ldr	r3, [r4, #24]	@ temp.1076, g_ChanCtx.ChanIdTabByPrior
	movw	r7, #:lower16:.LANCHOR0	@ tmp377,
	movt	r7, #:upper16:.LANCHOR0	@ tmp377,
	cmp	r3, #0	@ temp.1076,
	blt	.L121	@,
	add	sl, r6, r5	@ tmp381, tmp870, VdhId
	mov	r0, r3	@, temp.1076
	add	ip, sl, #1	@ tmp382, tmp381,
	add	r8, r7, ip, asl #3	@, tmp385, tmp377, tmp382,
	str	r3, [r8, #1196]	@ temp.1076, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L131	@,
	ldr	r0, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r2, r0, #8	@ tmp397, <variable>.ChanId,
	ldr	r3, [r7, r2, asl #2]	@ tmp399, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp399,
	beq	.L158	@,
.L131:
	bl	vfmw_dprint_nothing	@
.L134:
	ldr	r3, [r4, #28]	@ D.38039, g_ChanCtx.ChanIdTabByPrior
	movw	r7, #:lower16:.LANCHOR0	@ tmp477,
	movt	r7, #:upper16:.LANCHOR0	@ tmp477,
	cmp	r3, #0	@ D.38039,
	blt	.L121	@,
	add	sl, r6, r5	@ tmp481, tmp870, VdhId
	mov	r0, r3	@, D.38039
	add	r8, sl, #1	@ tmp482, tmp481,
	add	r8, r7, r8, asl #3	@, tmp485, tmp477, tmp482,
	str	r3, [r8, #1196]	@ D.38039, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L146	@,
	ldr	r0, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r3, r0, #8	@ tmp497, <variable>.ChanId,
	ldr	r3, [r7, r3, asl #2]	@ tmp499, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp499,
	bne	.L146	@,
	add	r7, r7, sl, asl #3	@, tmp848, tmp477, tmp481,
	str	r3, [r7, #1212]	@ tmp499, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.38048,
	str	r0, [r7, #1212]	@ D.38048, <variable>.pDecParam
	beq	.L159	@,
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_GetVidStd	@
	movw	ip, #:lower16:AcceleratorCharacter	@ tmp519,
	movt	ip, #:upper16:AcceleratorCharacter	@ tmp519,
	str	r0, [r8, #1200]	@ D.38052, <variable>.VidStd
	mov	r2, r0	@ D.38052,
	ldr	r3, [ip, #0]	@ AcceleratorCharacter.516, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.516,
	beq	.L126	@,
	ldr	r1, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r0, sp, #4	@,,
	ldr	lr, [r7, #1212]	@ <variable>.pDecParam, <variable>.pDecParam
	stmib	sp, {r1, r2, lr}	@ phole stm
	blx	r3	@ AcceleratorCharacter.516
	b	.L121	@
.L146:
	bl	vfmw_dprint_nothing	@
	b	.L121	@
.L158:
	add	r7, r7, sl, asl #3	@, tmp406, tmp377, tmp381,
	str	r3, [r7, #1212]	@ tmp399, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ temp.1081,
	str	r0, [r7, #1212]	@ temp.1081, <variable>.pDecParam
	beq	.L160	@,
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_GetVidStd	@
	mov	r2, r0	@ D.38052,
	movw	r0, #:lower16:AcceleratorCharacter	@ tmp456,
	movt	r0, #:upper16:AcceleratorCharacter	@ tmp456,
	str	r2, [r8, #1200]	@ D.38052, <variable>.VidStd
	ldr	r3, [r0, #0]	@ AcceleratorCharacter.1084, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.1084,
	beq	.L126	@,
	ldr	r1, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r0, sp, #4	@,,
	ldr	lr, [r7, #1212]	@ <variable>.pDecParam, <variable>.pDecParam
	stmib	sp, {r1, r2, lr}	@ phole stm
	blx	r3	@ AcceleratorCharacter.1084
	cmp	r0, #1	@,
	bne	.L121	@,
	b	.L134	@
.L157:
	ldr	r0, [r7, #1196]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L125	@
.L156:
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L130	@
.L160:
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L134	@
.L159:
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L121	@
.L126:
	add	sl, r6, r5	@ tmp544, tmp870, VdhId
	mov	r0, r2	@, D.38052
	movw	r8, #:lower16:.LANCHOR0	@ tmp540,
	movt	r8, #:upper16:.LANCHOR0	@ tmp540,
	add	r7, r4, sl, asl #3	@, tmp546, tmp871, tmp544,
	ldr	r1, [r7, #1212]	@, <variable>.pDecParam
	bl	VDMDRV_IsMpeg4NvopCopy	@
	cmp	r0, #1	@,
	beq	.L161	@,
	add	sl, sl, #1	@ tmp599, tmp544,
	ldr	r1, [r7, #1212]	@, <variable>.pDecParam
	add	sl, r8, sl, asl #3	@, tmp602, tmp540, tmp599,
	ldr	r0, [sl, #1200]	@, <variable>.VidStd
	bl	VDMDRV_IsVc1SkpicCopy	@
	cmp	r0, #1	@,
	beq	.L162	@,
	ldr	r0, [sl, #1200]	@, <variable>.VidStd
	ldr	r1, [r7, #1212]	@, <variable>.pDecParam
	bl	VDMDRV_IsVp6NvopCopy	@
	cmp	r0, #1	@,
	beq	.L163	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp722,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp722,
	ldr	r3, [r2, #72]	@ D.38110, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.38110,
	beq	.L140	@,
	ldr	r0, [sl, #1200]	@, <variable>.VidStd
	mov	r2, r5	@, VdhId
	ldr	r1, [r7, #1212]	@, <variable>.pDecParam
	blx	r3	@ D.38110
	cmp	r0, #0	@,
	beq	.L141	@,
.L140:
	bl	vfmw_dprint_nothing	@
	add	r1, r6, r5	@ tmp746, tmp870, VdhId
	add	r6, r1, #1	@ tmp764, tmp746,
	mov	lr, #100	@ tmp759,
	add	ip, r4, r1, asl #3	@, tmp748, tmp871, tmp746,
	mov	r7, #0	@ tmp750,
	add	r6, r4, r6, asl #3	@, tmp767, tmp871, tmp764,
	mov	r3, r7	@, tmp750
	mov	r1, lr	@, tmp759
	mov	r2, #15	@,
	ldr	r0, [r6, #1196]	@, <variable>.ChanId
	str	lr, [ip, #1200]	@ tmp759, <variable>.ErrRatio
	str	r7, [ip, #1196]	@ tmp750, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_Reset	@
	ldr	r3, [r6, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	r0, r3, #8	@ tmp780, <variable>.ChanId,
	str	r7, [r4, r0, asl #2]	@ tmp750, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L121	@
.L161:
	ldr	r0, [r7, #1212]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv	@
	subs	r3, r0, #0	@ D.38065,
	bne	.L121	@,
	add	r4, sl, #1	@ tmp568, tmp544,
	str	r3, [r7, #1200]	@ D.38065, <variable>.ErrRatio
	add	r0, r0, #2	@,,
	mov	r1, r5	@, VdhId
	add	r4, r8, r4, asl #3	@, tmp571, tmp540, tmp568,
	bl	VDMDRV_StartRepair	@
	mov	r1, r5	@, VdhId
	ldr	r0, [r4, #1196]	@, <variable>.ChanId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L121	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r4, #1196]	@ temp.1020, <variable>.ChanId
.L151:
	add	r8, r8, r2, asl #2	@, tmp820, tmp540, temp.1046,
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp824,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp824,
	ldr	r2, [r8, #1236]	@ tmp823, last_rec_pos_time
	ldr	r3, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	lr, r2, r0	@ tmp822, tmp823, currtime.1045
	cmp	lr, r3	@ tmp822, g_TraceFramePeriod
	strhi	r0, [r8, #1236]	@ currtime.1045, last_rec_pos_time
	b	.L121	@
.L162:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r7, #1212]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv_Vc1	@
	subs	r3, r0, #0	@ D.38083,
	bne	.L121	@,
.L154:
	str	r3, [r7, #1200]	@ D.38097, <variable>.ErrRatio
	add	r0, r0, #2	@,,
	mov	r1, r5	@, VdhId
	bl	VDMDRV_StartRepair	@
	mov	r1, r5	@, VdhId
	ldr	r0, [sl, #1196]	@, <variable>.ChanId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L121	@,
.L149:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sl, #1196]	@ temp.1046, <variable>.ChanId
	b	.L151	@
.L141:
	bl	OSAL_GetTimeInMs	@
	add	r1, r5, r5, asl #1	@, tmp795, VdhId, VdhId,
	movw	ip, #:lower16:g_VfmwGlobalStat	@ tmp791,
	movt	ip, #:upper16:g_VfmwGlobalStat	@ tmp791,
	add	r3, ip, r1, asl #4	@, tmp797, tmp791, tmp795,
	mov	r2, r0	@ D.38115,
	mov	r0, r5	@, VdhId
	str	r2, [r7, #1216]	@ D.38115, <variable>.StartTime
	str	r2, [r3, #4]	@ D.38115, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartDec	@
	mov	r1, r5	@, VdhId
	ldr	r0, [sl, #1196]	@, <variable>.ChanId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L121	@,
	b	.L149	@
.L163:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r7, #1212]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv_Vp6	@
	subs	r3, r0, #0	@ D.38097,
	bne	.L121	@,
	b	.L154	@
	.fnend
	.size	VDMDRV_ActivateVDH, .-VDMDRV_ActivateVDH
	.align	2
	.global	VDMDRV_AfterDec
	.type	VDMDRV_AfterDec, %function
VDMDRV_AfterDec:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #156
	sub	sp, sp, #156	@,,
	add	r7, sp, #12	@ tmp813,,
	mov	r5, r0	@ VdhId, VdhId
	mov	r1, #136	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp812,
	mov	r0, r7	@, tmp813
	movt	r4, #:upper16:.LANCHOR0	@ tmp812,
	bl	__memzero	@
	mov	r1, #180	@ tmp162,
	mla	r3, r1, r5, r4	@ tmp163, tmp162, VdhId, tmp812
	mov	r6, r5, asl #2	@ tmp814, VdhId,
	add	r9, r6, r5	@ tmp185, tmp814, VdhId
	add	sl, r4, r9, asl #3	@, tmp187, tmp812, tmp185,
	ldr	r0, [r3, #1252]	@ <variable>.BasicCfg1, <variable>.BasicCfg1
	and	r2, r0, #15	@ tmp165, <variable>.BasicCfg1,
	cmp	r2, #5	@ tmp165,
	ldreq	r8, [r3, #1264]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	ldrne	r8, [r3, #1260]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	andeq	r8, r8, #1	@ Mb0QpInCurrPic, <variable>.SwitchRounding,
	andne	r8, r8, #31	@ Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sl, #1196]	@ D.38162, <variable>.VdmStateMachine
	movw	r3, #:lower16:.LANCHOR0	@ tmp181,
	movt	r3, #:upper16:.LANCHOR0	@ tmp181,
	cmp	r2, #1	@ D.38162,
	beq	.L187	@,
	cmp	r2, #2	@ D.38162,
	beq	.L188	@,
	cmp	r2, #3	@ D.38162,
	beq	.L189	@,
	bl	vfmw_dprint_nothing	@
.L184:
	add	sp, sp, #156	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L189:
	ldr	r0, [sl, #1224]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	r0, #1	@ <variable>.VdmTimeOut,
	moveq	r0, #0	@ tmp761,
	streq	r0, [sl, #1224]	@ tmp761, <variable>.VdmTimeOut
.L181:
	add	r6, r6, r5	@ tmp766, tmp814, VdhId
	mov	r2, r8	@, Mb0QpInCurrPic
	add	r8, r6, #1	@ tmp792, tmp766,
	mov	r3, r7	@, tmp813
	add	r6, r4, r6, asl #3	@, tmp768, tmp812, tmp766,
	mov	r7, #0	@ tmp770,
	add	r8, r4, r8, asl #3	@, tmp795, tmp812, tmp792,
	ldr	lr, [r6, #1200]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	cmp	lr, #100	@ <variable>.ErrRatio,
	movge	lr, #100	@ iftmp.1144,
	str	r7, [r6, #1196]	@ tmp770, <variable>.VdmStateMachine
	bic	r1, lr, lr, asr #31	@ iftmp.530, iftmp.1144
	str	r1, [r6, #1200]	@ iftmp.530, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	ip, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r1, ip, #8	@ tmp809, <variable>.ChanId,
	str	r7, [r4, r1, asl #2]	@ tmp770, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L184	@
.L187:
	ldr	ip, [sl, #1224]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	ip, #1	@ <variable>.VdmTimeOut,
	beq	.L190	@,
	add	r9, r9, #1	@ tmp239, tmp185,
	ldr	r1, [sl, #1212]	@, <variable>.pDecParam
	mov	r2, r5	@, VdhId
	add	r9, r3, r9, asl #3	@, tmp242, tmp181, tmp239,
	ldr	r0, [r9, #1200]	@, <variable>.VidStd
	bl	PostPro_GetErrRatio	@
	str	r0, [sl, #1200]	@, <variable>.ErrRatio
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r9, #1200]	@ prephitmp.1103, <variable>.VidStd
	sub	r1, r0, #8	@ tmp271, prephitmp.1103,
	cmp	r0, #5	@ prephitmp.1103,
	cmpne	r1, #1	@, tmp271,
	movls	r1, #0	@ tmp287,
	strls	r1, [sl, #1200]	@ tmp287, <variable>.ErrRatio
	bls	.L181	@,
	ldr	r1, [sl, #1200]	@ D.38179, <variable>.ErrRatio
	cmp	r1, #0	@ D.38179,
	beq	.L181	@,
	movw	ip, #:lower16:g_event_report	@ tmp296,
	movt	ip, #:upper16:g_event_report	@ tmp296,
	ldr	r3, [ip, #0]	@ g_event_report.524, g_event_report
	cmp	r3, #0	@ g_event_report.524,
	beq	.L172	@,
	add	r2, sp, #152	@ tmp307,,
	ldr	r0, [r9, #1196]	@, <variable>.ChanId
	str	r1, [r2, #-4]!	@ D.38179, para
	mov	r1, #114	@,
	blx	r3	@ g_event_report.524
.L169:
	add	r2, r6, r5	@ tmp312, tmp814, VdhId
	movw	r3, #:lower16:.LANCHOR0	@ tmp308,
	movt	r3, #:upper16:.LANCHOR0	@ tmp308,
	add	lr, r4, r2, asl #3	@, tmp314, tmp812, tmp312,
	ldr	r0, [lr, #1200]	@ <variable>.ErrRatio, <variable>.ErrRatio
	cmp	r0, #0	@ <variable>.ErrRatio,
	beq	.L181	@,
	add	r3, r3, r2, asl #3	@, tmp324, tmp308, tmp312,
	ldr	r0, [r3, #1208]	@ prephitmp.1103, <variable>.VidStd
.L172:
	add	r1, r6, r5	@ tmp330, tmp814, VdhId
	add	r2, r4, r1, asl #3	@, tmp332, tmp812, tmp330,
	ldr	r1, [r2, #1212]	@, <variable>.pDecParam
	bl	PostPro_GetRepairStratage	@
	cmp	r0, #1	@,
	bne	.L184	@,
	b	.L181	@
.L188:
	add	r9, r6, r5	@ tmp406, tmp814, VdhId
	ldr	ip, [sl, #1224]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	add	fp, r9, #1	@ tmp407, tmp406,
	cmp	ip, #1	@ <variable>.VdmTimeOut,
	add	r9, r4, r9, asl #3	@, tmp418, tmp812, tmp406,
	add	fp, r4, fp, asl #3	@, tmp410, tmp812, tmp407,
	moveq	ip, #0	@ tmp402,
	streq	ip, [sl, #1224]	@ tmp402, <variable>.VdmTimeOut
	ldr	r0, [fp, #1200]	@ temp.1122, <variable>.VidStd
	movw	sl, #:lower16:.LANCHOR0	@ tmp403,
	ldr	r1, [r9, #1212]	@ temp.1123, <variable>.pDecParam
	movt	sl, #:upper16:.LANCHOR0	@ tmp403,
	cmp	r0, #6	@ temp.1122,
	beq	.L191	@,
.L176:
	bl	VDMDRV_IsMpeg4NvopCopy	@
	cmp	r0, #1	@,
	beq	.L192	@,
	add	r2, r6, r5	@ tmp575, tmp814, VdhId
	movw	sl, #:lower16:.LANCHOR0	@ tmp572,
	add	r3, r2, #1	@ tmp576, tmp575,
	movt	sl, #:upper16:.LANCHOR0	@ tmp572,
	add	r6, r4, r2, asl #3	@, tmp588, tmp812, tmp575,
	add	r4, r4, r3, asl #3	@, tmp579, tmp812, tmp576,
	ldr	r1, [r6, #1212]	@, <variable>.pDecParam
	ldr	r0, [r4, #1200]	@, <variable>.VidStd
	bl	VDMDRV_IsVc1SkpicCopy	@
	cmp	r0, #1	@,
	beq	.L186	@,
	ldr	r0, [r4, #1200]	@, <variable>.VidStd
	ldr	r1, [r6, #1212]	@, <variable>.pDecParam
	bl	VDMDRV_IsVp6NvopCopy	@
	cmp	r0, #1	@,
	beq	.L186	@,
	ldr	lr, [r6, #1200]	@ <variable>.ErrRatio, <variable>.ErrRatio
	mov	r2, r8	@, Mb0QpInCurrPic
	mov	r3, r7	@, tmp813
	ldr	r0, [r4, #1196]	@, <variable>.ChanId
	cmp	lr, #100	@ <variable>.ErrRatio,
	movge	lr, #100	@ iftmp.529,
	mov	r7, #0	@ tmp702,
	bic	r1, lr, lr, asr #31	@ iftmp.1148, iftmp.529
	str	r7, [r6, #1196]	@ tmp702, <variable>.VdmStateMachine
	str	r1, [r6, #1200]	@ iftmp.1148, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r2, [r4, #1196]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r3, r2, #8	@ tmp741, <variable>.ChanId,
	str	r7, [sl, r3, asl #2]	@ tmp702, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L184	@
.L191:
	ldrb	r2, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r2, #1	@ <variable>.PicStruct,
	bne	.L176	@,
	movw	ip, #1144	@ tmp425,
	mla	r3, ip, r5, sl	@ tmp426, tmp425, VdhId, tmp403
	ldr	lr, [r3, #1176]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	lr, #0	@ <variable>.ValidGroupNum,
	ble	.L176	@,
	str	r2, [sp, #4]	@,
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp437,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp437,
	ldr	ip, [r2, #84]	@ D.38207, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ D.38207,
	str	r0, [r9, #1216]	@, <variable>.StartTime
	ldr	r2, [sp, #4]	@,
	beq	.L177	@,
	ldr	r0, [fp, #1200]	@, <variable>.VidStd
	mov	r3, r5	@, VdhId
	ldr	r1, [r9, #1212]	@, <variable>.pDecParam
	blx	ip	@ D.38207
	cmp	r0, #0	@,
	beq	.L193	@,
.L177:
	add	r5, r6, r5	@ tmp500, tmp814, VdhId
	mov	r2, r8	@, Mb0QpInCurrPic
	add	r6, r5, #1	@ tmp501, tmp500,
	mov	r3, r7	@, tmp813
	mov	r1, #100	@,
	add	r5, r4, r5, asl #3	@, tmp527, tmp812, tmp500,
	add	r6, r4, r6, asl #3	@, tmp504, tmp812, tmp501,
	ldr	r0, [r6, #1196]	@, <variable>.ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	r2, [r6, #1196]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, #0	@ tmp520,
	add	r3, r2, #8	@ tmp518, <variable>.ChanId,
	str	r0, [r4, r3, asl #2]	@ tmp520, g_ChanCtx.ChanDecByVdhPlusOne
	str	r0, [r5, #1196]	@ tmp520, <variable>.VdmStateMachine
	b	.L184	@
.L190:
	add	lr, r3, r9, asl #3	@, tmp205, tmp181, tmp185,
	mov	r2, r5	@, VdhId
	ldr	r1, [sl, #1212]	@, <variable>.pDecParam
	ldr	r0, [lr, #1208]	@, <variable>.VidStd
	bl	PostPro_SetFullRepair	@
	mov	r2, #100	@ tmp225,
	mov	r3, #0	@ tmp234,
	str	r2, [sl, #1200]	@ tmp225, <variable>.ErrRatio
	str	r3, [sl, #1224]	@ tmp234, <variable>.VdmTimeOut
	bl	vfmw_dprint_nothing	@
	b	.L169	@
.L186:
	mov	r9, #0	@ tmp660,
	mov	r2, r8	@, Mb0QpInCurrPic
	mov	r3, r7	@, tmp813
	ldr	r0, [r4, #1196]	@, <variable>.ChanId
	mov	r1, r9	@, tmp660
	str	r9, [r6, #1200]	@ tmp660, <variable>.ErrRatio
	str	r9, [r6, #1196]	@ tmp660, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	ip, [r4, #1196]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r1, ip, #8	@ tmp691, <variable>.ChanId,
	str	r9, [sl, r1, asl #2]	@ tmp660, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L184	@
.L192:
	add	r0, r6, r5	@ tmp534, tmp814, VdhId
	mov	r3, r7	@, tmp813
	add	lr, r0, #1	@ tmp552, tmp534,
	mov	sl, #0	@ tmp538,
	add	r6, r4, r0, asl #3	@, tmp536, tmp812, tmp534,
	mov	r2, r8	@, Mb0QpInCurrPic
	add	r7, r4, lr, asl #3	@, tmp555, tmp812, tmp552,
	mov	r1, sl	@, tmp538
	str	sl, [r6, #1200]	@ tmp538, <variable>.ErrRatio
	ldr	r0, [r7, #1196]	@, <variable>.ChanId
	str	sl, [r6, #1196]	@ tmp538, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	ip, [r7, #1196]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r1, ip, #8	@ tmp569, <variable>.ChanId,
	str	sl, [r4, r1, asl #2]	@ tmp538, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L184	@
.L193:
	add	r1, r5, r5, asl #1	@, tmp461, VdhId, VdhId,
	ldr	lr, [r9, #1216]	@ <variable>.StartTime, <variable>.StartTime
	movw	r0, #:lower16:g_VfmwGlobalStat	@ tmp457,
	movt	r0, #:upper16:g_VfmwGlobalStat	@ tmp457,
	add	r3, r0, r1, asl #4	@, tmp463, tmp457, tmp461,
	mov	r1, r5	@, VdhId
	mov	r0, #3	@,
	str	lr, [r3, #4]	@ <variable>.StartTime, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L184	@,
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [fp, #1196]	@ temp.1126, <variable>.ChanId
	movw	r1, #:lower16:g_TraceFramePeriod	@ tmp490,
	movt	r1, #:upper16:g_TraceFramePeriod	@ tmp490,
	add	sl, sl, ip, asl #2	@, tmp486, tmp403, temp.1126,
	ldr	r3, [r1, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r2, [sl, #1432]	@ tmp489, last_rec_pos_time
	rsb	ip, r2, r0	@ tmp488, tmp489, currtime
	cmp	ip, r3	@ tmp488, g_TraceFramePeriod
	strhi	r0, [sl, #1432]	@ currtime, last_rec_pos_time
	b	.L184	@
	.fnend
	.size	VDMDRV_AfterDec, .-VDMDRV_AfterDec
	.global	__aeabi_uidiv
	.align	2
	.global	VDMDRV_VdmIntServProc
	.type	VDMDRV_VdmIntServProc, %function
VDMDRV_VdmIntServProc:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r3, #15	@ tmp148,
	str	r3, [sp, #12]	@ tmp148, Mb0QpInCurrPic
	ble	.L195	@,
	bl	vfmw_dprint_nothing	@
.L213:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L195:
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp596,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp596,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r7, #60]	@ D.38321, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	cmp	r3, #0	@ D.38321,
	beq	.L197	@,
	mov	r0, #2	@,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.38321
	tst	r0, #1	@,
	beq	.L197	@,
	ldr	r3, [r7, #92]	@ D.38329, g_vdm_hal_fun_ptr.pfun_VDMHAL_BackupInfo
	movw	r5, #:lower16:.LANCHOR0	@ tmp591,
	mov	r6, r4, asl #2	@ tmp595, VdhId,
	movt	r5, #:upper16:.LANCHOR0	@ tmp591,
	add	lr, r6, r5	@ tmp165, tmp595, tmp591
	cmp	r3, #0	@ D.38329,
	mov	ip, #1	@ tmp167,
	str	ip, [lr, #1448]	@ tmp167, s_VdmIsInISR
	beq	.L199	@,
	add	r0, sp, #12	@,,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.38329
.L200:
	ldr	r3, [r7, #48]	@ D.38333, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.38333,
	beq	.L201	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.38333
.L202:
	mov	r0, #6	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L214	@,
.L203:
	add	ip, r6, r4	@ tmp198, tmp595, VdhId
	movw	r3, #:lower16:.LANCHOR0	@ tmp194,
	movt	r3, #:upper16:.LANCHOR0	@ tmp194,
	add	r2, r5, ip, asl #3	@, tmp200, tmp591, tmp198,
	ldr	r0, [r2, #1232]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	cmp	r0, #1	@ <variable>.ChanResetFlag,
	beq	.L215	@,
	mov	r7, #180	@ tmp248,
	mov	r8, r4, asl #1	@ tmp594, VdhId,
	mla	r1, r7, r4, r3	@ tmp249, tmp248, VdhId, tmp194
	add	r7, r8, r4	@ tmp258, tmp594, VdhId
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp592,
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp592,
	add	r9, sl, r7, asl #4	@, tmp260, tmp592, tmp258,
	add	r3, r6, r3	@ tmp238, tmp595, tmp194
	ldr	ip, [r9, #4]	@ <variable>.u32VaLastStartTime, <variable>.u32VaLastStartTime
	ldr	r0, [r1, #1276]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	ldr	lr, [r3, #1468]	@ tmp251, cycle
	cmp	ip, #0	@ <variable>.u32VaLastStartTime,
	add	r2, lr, r0	@ tmp253, tmp251, <variable>.DecCyclePerPic
	str	r2, [r3, #1468]	@ tmp253, cycle
	bne	.L216	@,
.L205:
	add	sl, r6, r4	@ tmp452, tmp595, VdhId
	movw	r8, #:lower16:.LANCHOR0	@ tmp448,
	movt	r8, #:upper16:.LANCHOR0	@ tmp448,
	add	r3, r5, sl, asl #3	@, tmp454, tmp591, tmp452,
	ldr	r0, [r3, #1196]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r0, #0	@ <variable>.VdmStateMachine,
	beq	.L208	@,
	ldr	r7, [r3, #1212]	@ <variable>.pDecParam, <variable>.pDecParam
	cmp	r7, #0	@ <variable>.pDecParam,
	beq	.L217	@,
.L208:
	add	sl, r6, r4	@ tmp513, tmp595, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp510,
	add	r8, sl, #1	@ tmp514, tmp513,
	movt	r7, #:upper16:.LANCHOR0	@ tmp510,
	add	r8, r5, r8, asl #3	@, tmp517, tmp591, tmp514,
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L218	@,
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	subs	r9, r0, #0	@ D.38387,
	beq	.L219	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L211:
	add	r4, r6, r4	@ tmp583, tmp595, VdhId
	add	r6, r6, r5	@ tmp577, tmp595, tmp591
	mov	lr, #0	@ tmp579,
	add	r5, r5, r4, asl #3	@, tmp587, tmp591, tmp583,
	str	lr, [r6, #1448]	@ tmp579, s_VdmIsInISR
	ldr	r0, [r5, #1204]	@, <variable>.ChanId
	bl	VCTRL_InformVdmFree	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L213	@
.L218:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	sl, r7, sl, asl #3	@, tmp539, tmp510, tmp513,
	mov	r0, #0	@ tmp532,
	add	r1, r3, #8	@ tmp530, <variable>.ChanId,
	str	r0, [r7, r1, asl #2]	@ tmp532, g_ChanCtx.ChanDecByVdhPlusOne
	str	r0, [sl, #1196]	@ tmp532, <variable>.VdmStateMachine
	b	.L211	@
.L216:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sl, r7, asl #4]	@ <variable>.u32VaBeginTime, <variable>.u32VaBeginTime
	ldr	r1, [r9, #4]	@ prephitmp.1163, <variable>.u32VaLastStartTime
	add	r8, r8, r4	@ tmp310, tmp594, VdhId
	add	ip, r2, #49920	@ tmp277, <variable>.u32VaBeginTime,
	add	fp, ip, #80	@ tmp277, tmp277,
	cmp	fp, r1	@ tmp277, prephitmp.1163
	strcc	r1, [sl, r7, asl #4]	@ prephitmp.1163, <variable>.u32VaBeginTime
	movcc	r2, r7, asl #1	@ tmp296, tmp258,
	ldr	r3, [sl, r8, asl #4]	@ <variable>.u32VaBeginTime, <variable>.u32VaBeginTime
	movcs	r7, r9	@ tmp285, tmp260
	addcc	r2, r2, #1	@ tmp297, tmp296,
	ldrcs	ip, [r7, #8]	@ prephitmp.1186, <variable>.u32VaVdmWorkTime
	mov	r7, #180	@ tmp335,
	mla	r9, r7, r4, r5	@ tmp336, tmp335, VdhId, tmp591
	movcc	fp, #0	@ tmp298,
	add	r7, sl, r8, asl #4	@, tmp321, tmp592, tmp310,
	strcc	fp, [sl, r2, asl #3]	@ tmp298, <variable>.u32VaVdmWorkTime
	movcc	ip, fp	@ prephitmp.1186, tmp298
	mov	fp, r8, asl #1	@ tmp311, tmp310,
	ldr	r2, [r7, #36]	@ <variable>.u32AccVdmKiloCycle, <variable>.u32AccVdmKiloCycle
	add	fp, fp, #1	@ tmp312, tmp311,
	ldr	lr, [r7, #32]	@ <variable>.u32PicNum, <variable>.u32PicNum
	ldr	r9, [r9, #1276]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	add	lr, lr, #1	@ tmp367, <variable>.u32PicNum,
	str	lr, [r7, #32]	@ tmp367, <variable>.u32PicNum
	add	r2, r2, r9, lsr #10	@, tmp349, <variable>.u32AccVdmKiloCycle, <variable>.DecCyclePerPic,
	mov	r9, #0	@ tmp323,
	str	r2, [r7, #36]	@ tmp349, <variable>.u32AccVdmKiloCycle
	str	r9, [r7, #4]	@ tmp323, <variable>.u32VaLastStartTime
	rsb	r3, r3, r0	@ Period, <variable>.u32VaBeginTime, CurTime
	add	r0, ip, r0	@ tmp313, prephitmp.1186, CurTime
	cmp	r3, #1000	@ Period,
	rsb	r0, r1, r0	@ tmp314, prephitmp.1163, tmp313
	str	r0, [sl, fp, asl #3]	@ tmp314, <variable>.u32VaVdmWorkTime
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp307,
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp307,
	bcc	.L205	@,
	mov	lr, #1000	@ tmp394,
	mov	r1, r3	@, Period
	mul	r0, lr, r0	@, tmp394, tmp314
	stmia	sp, {r2, r3}	@ phole stm
	bl	__aeabi_uidiv	@
	str	r9, [sl, r8, asl #4]	@ tmp323, <variable>.u32VaBeginTime
	add	fp, sl, fp, asl #3	@, tmp384, tmp307, tmp312,
	str	r9, [r7, #32]	@ tmp323, <variable>.u32PicNum
	ldr	sl, [sp, #0]	@,
	str	sl, [r7, #40]	@ tmp349, <variable>.u32VaVdmKiloCycle
	ldr	r8, [sp, #4]	@,
	str	r9, [r7, #36]	@ tmp323, <variable>.u32AccVdmKiloCycle
	str	r8, [r7, #44]	@ Period, <variable>.u32StatTime
	str	r0, [fp, #4]	@, <variable>.u32VaVdmLoad
	b	.L205	@
.L214:
	bl	OSAL_GetTimeInMs	@
	add	r2, r6, r4	@ tmp174, tmp595, VdhId
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp187,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp187,
	add	r1, r5, r2, asl #3	@, tmp178, tmp591, tmp174,
	ldr	r2, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r3, [r1, #1204]	@ D.38341, <variable>.ChanId
	add	r3, r5, r3, asl #2	@, tmp183, tmp591, D.38341,
	ldr	ip, [r3, #1452]	@ tmp186, last_rec_pos_time
	rsb	r1, ip, r0	@ tmp185, tmp186, currtime
	cmp	r1, r2	@ tmp185, g_TraceFramePeriod
	strhi	r0, [r3, #1452]	@ currtime, last_rec_pos_time
	b	.L203	@
.L197:
	movw	r0, #:lower16:g_TaskLock	@,
	add	r4, r4, r4, asl #2	@, tmp157, VdhId, VdhId,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp153,
	movt	r1, #:upper16:.LANCHOR0	@ tmp153,
	mov	r2, #0	@ tmp161,
	add	r0, r1, r4, asl #3	@, tmp159, tmp153, tmp157,
	str	r2, [r0, #1196]	@ tmp161, <variable>.VdmStateMachine
	b	.L213	@
.L217:
	add	sl, sl, #1	@ tmp470, tmp452,
	bl	vfmw_dprint_nothing	@
	add	r8, r8, sl, asl #3	@, tmp473, tmp448, tmp470,
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L209	@,
	ldr	r0, [r8, #1196]	@, <variable>.ChanId
	mov	r3, r7	@, <variable>.pDecParam
	mov	r1, #100	@,
	ldr	r2, [sp, #12]	@, Mb0QpInCurrPic
	bl	VCTRL_VdmPostProc	@
.L209:
	add	r4, r6, r4	@ tmp491, tmp595, VdhId
	mov	r1, #0	@ tmp499,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	add	r2, r5, r4, asl #3	@, tmp495, tmp591, tmp491,
	ldr	ip, [r2, #1204]	@ <variable>.ChanId, <variable>.ChanId
	mov	r4, r2	@ tmp506, tmp495
	add	r3, ip, #8	@ tmp497, <variable>.ChanId,
	str	r1, [r5, r3, asl #2]	@ tmp499, g_ChanCtx.ChanDecByVdhPlusOne
	str	r1, [r2, #1196]	@ tmp499, <variable>.VdmStateMachine
	bl	OSAL_SpinUnLockIRQ	@
	b	.L213	@
.L201:
	bl	vfmw_dprint_nothing	@
	b	.L202	@
.L199:
	bl	vfmw_dprint_nothing	@
	b	.L200	@
.L215:
	add	r1, r3, ip, asl #3	@, tmp220, tmp194, tmp198,
	mov	lr, #0	@ tmp211,
	movw	r0, #:lower16:g_TaskLock	@,
	str	lr, [r2, #1232]	@ tmp211, <variable>.ChanResetFlag
	ldr	ip, [r1, #1204]	@ <variable>.ChanId, <variable>.ChanId
	movt	r0, #:upper16:g_TaskLock	@,
	add	r1, ip, #8	@ tmp222, <variable>.ChanId,
	str	lr, [r3, r1, asl #2]	@ tmp211, g_ChanCtx.ChanDecByVdhPlusOne
	str	lr, [r2, #1196]	@ tmp211, <variable>.VdmStateMachine
	bl	OSAL_SpinUnLockIRQ	@
	b	.L213	@
.L219:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r8, #1196]	@ <variable>.ChanId, <variable>.ChanId
	add	sl, r7, sl, asl #3	@, tmp571, tmp510, tmp513,
	add	ip, r2, #8	@ tmp562, <variable>.ChanId,
	str	r9, [r7, ip, asl #2]	@ D.38387, g_ChanCtx.ChanDecByVdhPlusOne
	str	r9, [sl, #1196]	@ D.38387, <variable>.VdmStateMachine
	b	.L211	@
	.fnend
	.size	VDMDRV_VdmIntServProc, .-VDMDRV_VdmIntServProc
	.align	2
	.global	VDMDRV_CheckDevice
	.type	VDMDRV_CheckDevice, %function
VDMDRV_CheckDevice:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r6, r0, asl #2	@ tmp319, VdhId,
	add	r7, r6, r0	@ tmp148, tmp319, VdhId
	movw	r4, #:lower16:.LANCHOR0	@ tmp320,
	movt	r4, #:upper16:.LANCHOR0	@ tmp320,
	mov	r5, r0	@ VdhId, VdhId
	add	r3, r4, r7, asl #3	@, tmp152, tmp320, tmp148,
	ldr	r0, [r3, #1204]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L235	@,
.L221:
	add	sl, r6, r5	@ tmp200, tmp319, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp196,
	movt	r7, #:upper16:.LANCHOR0	@ tmp196,
	add	r8, r4, sl, asl #3	@, tmp202, tmp320, tmp200,
	ldr	r3, [r8, #1196]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	bne	.L236	@,
.L222:
	add	r4, r6, r4	@ tmp310, tmp319, tmp320
	ldr	r7, [r4, #48]	@ D.38297, s_eVdmDrvSleepState
	cmp	r7, #0	@ D.38297,
	moveq	r0, r7	@ D.38296, D.38297
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #1	@ D.38297,
	moveq	r3, #2	@ tmp317,
	moveq	r0, r7	@ D.38296, D.38297
	streq	r3, [r4, #48]	@ tmp317, s_eVdmDrvSleepState
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L228:
	mov	r0, #1	@ D.38296,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L236:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r8, #1216]	@ D.38276, <variable>.StartTime
	cmp	r0, r2	@ D.38274, D.38276
	mov	r3, r0	@ D.38274,
	str	r0, [r8, #1220]	@ D.38274, <variable>.CurrTime
	strcc	r0, [r8, #1216]	@ D.38274, <variable>.StartTime
	movcc	r0, #1	@ D.38296,
	ldmccfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	subs	r1, r3, r2	@ TimeElapse, D.38274, D.38276
	bmi	.L225	@,
	cmp	r2, #0	@ D.38276,
	beq	.L225	@,
	cmp	r1, #500	@ TimeElapse,
	bls	.L228	@,
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:g_event_report	@ tmp237,
	movt	r3, #:upper16:g_event_report	@ tmp237,
	ldr	r3, [r3, #0]	@ g_event_report.533, g_event_report
	cmp	r3, #0	@ g_event_report.533,
	beq	.L229	@,
	add	lr, r7, sl, asl #3	@, tmp245, tmp196, tmp200,
	mov	r1, #101	@,
	mov	r2, #0	@,
	ldr	r0, [lr, #1204]	@, <variable>.ChanId
	blx	r3	@ g_event_report.533
.L229:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp248,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp248,
	ldr	r3, [r0, #40]	@ D.38289, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.38289,
	beq	.L230	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.38289
.L231:
	add	r6, r6, r5	@ tmp253, tmp319, VdhId
	mov	r7, #1	@ tmp257,
	movw	r3, #:lower16:.LANCHOR0	@ tmp249,
	movt	r3, #:upper16:.LANCHOR0	@ tmp249,
	add	r4, r4, r6, asl #3	@, tmp255, tmp320, tmp253,
	ldr	r1, [r4, #1232]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	str	r7, [r4, #1224]	@ tmp257, <variable>.VdmTimeOut
	cmp	r1, r7	@ <variable>.ChanResetFlag,
	bne	.L232	@,
	add	r6, r3, r6, asl #3	@, tmp302, tmp249, tmp253,
	mov	r2, #0	@ tmp275,
	mov	r0, r2	@ D.38296, tmp275
	str	r2, [r4, #1224]	@ tmp275, <variable>.VdmTimeOut
	ldr	lr, [r6, #1204]	@ <variable>.ChanId, <variable>.ChanId
	str	r2, [r4, #1232]	@ tmp275, <variable>.ChanResetFlag
	add	ip, lr, #8	@ tmp304, <variable>.ChanId,
	str	r2, [r4, #1196]	@ tmp275, <variable>.VdmStateMachine
	str	r2, [r3, ip, asl #2]	@ tmp275, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L235:
	add	r7, r4, r7, asl #3	@, tmp161, tmp320, tmp148,
	ldr	r3, [r7, #1196]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	beq	.L222	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	ldr	r3, [r0, #80]	@ D.38268, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.38268,
	beq	.L223	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.38268
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp173,
	strne	r3, [r7, #1232]	@ tmp173, <variable>.ChanResetFlag
	bne	.L221	@,
.L223:
	add	sl, r6, r5	@ tmp178, tmp319, VdhId
	mov	r7, #0	@ tmp182,
	mov	r0, r5	@, VdhId
	add	ip, r4, sl, asl #3	@, tmp180, tmp320, tmp178,
	add	r8, r4, sl, asl #3	@, tmp191, tmp320, tmp178,
	str	r7, [ip, #1232]	@ tmp182, <variable>.ChanResetFlag
	bl	VDMDRV_Reset	@
	ldr	r2, [r8, #1204]	@ <variable>.ChanId, <variable>.ChanId
	add	r1, r2, #8	@ tmp193, <variable>.ChanId,
	str	r7, [r4, r1, asl #2]	@ tmp182, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L221	@
.L225:
	add	r5, r6, r5	@ tmp225, tmp319, VdhId
	mov	r0, #1	@ D.38296,
	add	r4, r4, r5, asl #3	@, tmp227, tmp320, tmp225,
	str	r3, [r4, #1216]	@ D.38274, <variable>.StartTime
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L232:
	mov	r0, r5	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r7	@ D.38296, tmp257
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L230:
	bl	vfmw_dprint_nothing	@
	b	.L231	@
	.fnend
	.size	VDMDRV_CheckDevice, .-VDMDRV_CheckDevice
	.align	2
	.global	VDMDRV_WakeUpVdm
	.type	VDMDRV_WakeUpVdm, %function
VDMDRV_WakeUpVdm:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	VDMDRV_CheckDevice	@
	cmp	r0, #0	@,
	ldmnefd	sp!, {r4, pc}	@
	ldmfd	sp!, {r4, lr}	@
	b	VDMDRV_ActivateVDH	@
	.fnend
	.size	VDMDRV_WakeUpVdm, .-VDMDRV_WakeUpVdm
	.align	2
	.global	VDMDRV_ForeceSleep
	.type	VDMDRV_ForeceSleep, %function
VDMDRV_ForeceSleep:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ VdhId, VdhId
	add	r4, sp, #4	@ tmp148,,
	movw	r5, #:lower16:.LANCHOR0	@ tmp135,
	movt	r5, #:upper16:.LANCHOR0	@ tmp135,
	add	r5, r5, r6, asl #2	@, tmp138, tmp135, VdhId,
	mov	r0, r4	@, tmp148
	bl	OSAL_LockIRQ	@
	ldr	r3, [r5, #48]	@ tmp140, s_eVdmDrvSleepState
	cmp	r3, #2	@ tmp140,
	beq	.L241	@,
	mov	r0, r6	@, VdhId
	bl	VDMDRV_Reset	@
	mov	r0, #2	@ tmp146,
	str	r0, [r5, #48]	@ tmp146, s_eVdmDrvSleepState
.L241:
	mov	r0, r4	@, tmp148
	bl	OSAL_UnLockIRQ	@
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VDMDRV_ForeceSleep, .-VDMDRV_ForeceSleep
	.align	2
	.global	VDMDRV_PrepareSleep
	.type	VDMDRV_PrepareSleep, %function
VDMDRV_PrepareSleep:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r4, sp, #4	@ tmp166,,
	mov	r5, r0	@ VdhId, VdhId
	mov	r0, r4	@, tmp166
	bl	OSAL_LockIRQ	@
	mov	r2, r5, asl #2	@ tmp139, VdhId,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r1, r2, r3	@ tmp140, tmp139, tmp137
	ldr	r0, [r1, #48]	@ tmp142, s_eVdmDrvSleepState
	cmp	r0, #0	@ tmp142,
	mvnne	r5, #0	@ ret,
	bne	.L245	@,
	add	r5, r2, r5	@ tmp147, tmp139, VdhId
	add	r3, r3, r5, asl #3	@, tmp149, tmp137, tmp147,
	ldr	r5, [r3, #1196]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r5, #0	@ <variable>.VdmStateMachine,
	movne	r5, r0	@ ret, tmp142
	moveq	r3, #2	@ tmp157,
	movne	r3, #1	@ tmp163,
	str	r3, [r1, #48]	@ tmp163, s_eVdmDrvSleepState
.L245:
	mov	r0, r4	@, tmp166
	bl	OSAL_UnLockIRQ	@
	mov	r0, r5	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	VDMDRV_PrepareSleep, .-VDMDRV_PrepareSleep
	.global	CapItem
	.global	USE_FF_APT_EN
	.global	__ksymtab_CapItem
	.global	g_HwMem
	.global	g_UpMsg
	.global	g_RepairParam
	.global	g_DecReport
	.global	g_BackUp
	.global	g_VdmDrvParam
	.global	g_ChanCtx
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_CapItem, %object
	.size	__kstrtab_CapItem, 8
__kstrtab_CapItem:
	.ascii	"CapItem\000"
	.data
	.align	2
	.type	CapItem, %object
	.size	CapItem, 924
CapItem:
	.word	176
	.word	144
	.word	4
	.word	10
	.word	11
	.word	12
	.word	524288
	.word	352
	.word	288
	.word	4
	.word	10
	.word	11
	.word	12
	.word	786432
	.word	720
	.word	576
	.word	4
	.word	10
	.word	11
	.word	12
	.word	1048576
	.word	1280
	.word	720
	.word	4
	.word	10
	.word	11
	.word	12
	.word	2097152
	.word	1920
	.word	1088
	.word	4
	.word	10
	.word	11
	.word	12
	.word	3145728
	.word	176
	.word	144
	.word	15
	.word	19
	.word	22
	.word	24
	.word	524288
	.word	352
	.word	288
	.word	15
	.word	19
	.word	22
	.word	24
	.word	786432
	.word	720
	.word	576
	.word	9
	.word	15
	.word	16
	.word	17
	.word	1048576
	.word	1280
	.word	720
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1920
	.word	1088
	.word	6
	.word	13
	.word	13
	.word	13
	.word	2097152
	.word	5632
	.word	4224
	.word	1
	.word	3
	.word	3
	.word	3
	.word	16777216
	.word	1280
	.word	800
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	800
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1488
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	14
	.word	3145728
	.word	1280
	.word	1488
	.word	6
	.word	13
	.word	13
	.word	14
	.word	3145728
	.word	2160
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	13
	.word	3145728
	.word	1280
	.word	2176
	.word	6
	.word	13
	.word	13
	.word	13
	.word	3145728
	.word	2160
	.word	2176
	.word	4
	.word	11
	.word	11
	.word	11
	.word	4194304
	.word	4096
	.word	2304
	.word	2
	.word	9
	.word	9
	.word	9
	.word	5242880
	.word	2160
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	5242880
	.word	4096
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	8388608
	.word	8192
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	10485760
	.word	4096
	.word	8192
	.word	2
	.word	9
	.word	9
	.word	9
	.word	10485760
	.word	8192
	.word	8192
	.word	1
	.word	3
	.word	3
	.word	3
	.word	20971520
	.word	1920
	.word	1088
	.word	1
	.word	3
	.word	3
	.word	3
	.word	2097152
	.word	1920
	.word	1088
	.word	1
	.word	3
	.word	3
	.word	3
	.word	2097152
	.word	1920
	.word	1088
	.word	17
	.word	26
	.word	26
	.word	26
	.word	2097152
	.word	176
	.word	144
	.word	15
	.word	19
	.word	22
	.word	24
	.word	524288
	.word	352
	.word	288
	.word	15
	.word	19
	.word	22
	.word	24
	.word	786432
	.word	720
	.word	576
	.word	9
	.word	15
	.word	16
	.word	17
	.word	1048576
	.word	1280
	.word	720
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1920
	.word	1088
	.word	6
	.word	13
	.word	13
	.word	13
	.word	2097152
	.word	4096
	.word	2304
	.word	4
	.word	4
	.word	4
	.word	4
	.word	16777216
	.type	USE_FF_APT_EN, %object
	.size	USE_FF_APT_EN, 4
USE_FF_APT_EN:
	.word	1
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_ChanCtx, %object
	.size	g_ChanCtx, 48
g_ChanCtx:
	.space	48
	.type	s_eVdmDrvSleepState, %object
	.size	s_eVdmDrvSleepState, 4
s_eVdmDrvSleepState:
	.space	4
	.type	g_RepairParam, %object
	.size	g_RepairParam, 1144
g_RepairParam:
	.space	1144
	.type	g_VdmDrvParam, %object
	.size	g_VdmDrvParam, 40
g_VdmDrvParam:
	.space	40
	.type	last_rec_pos_time.38028, %object
	.size	last_rec_pos_time.38028, 16
last_rec_pos_time.38028:
	.space	16
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	last_rec_pos_time.38141, %object
	.size	last_rec_pos_time.38141, 16
last_rec_pos_time.38141:
	.space	16
	.type	s_VdmIsInISR, %object
	.size	s_VdmIsInISR, 4
s_VdmIsInISR:
	.space	4
	.type	last_rec_pos_time.38312, %object
	.size	last_rec_pos_time.38312, 16
last_rec_pos_time.38312:
	.space	16
	.type	cycle.38311, %object
	.size	cycle.38311, 8
cycle.38311:
	.space	8
	.type	g_HwMem, %object
	.size	g_HwMem, 1140
g_HwMem:
	.space	1140
	.type	g_UpMsg, %object
	.size	g_UpMsg, 2048
g_UpMsg:
	.space	2048
	.type	g_DecReport, %object
	.size	g_DecReport, 528
g_DecReport:
	.space	528
	.section	___ksymtab+CapItem,"a",%progbits
	.align	2
	.type	__ksymtab_CapItem, %object
	.size	__ksymtab_CapItem, 8
__ksymtab_CapItem:
@ value:
	.word	CapItem
@ name:
	.word	__kstrtab_CapItem
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
