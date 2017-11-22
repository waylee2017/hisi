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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vdm_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.o
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
	.global	VDMDRV_SetPriority
	.type	VDMDRV_SetPriority, %function
VDMDRV_SetPriority:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldmia	r0, {r2, r3}	@ phole ldm
	bic	r2, r2, r2, asr #31	@ MaxPrio, MaxPrio.535
	ldr	ip, [r0, #8]	@ MaxPrio.541,
	cmp	r2, r3	@ MaxPrio, MaxPrio.539
	ldr	r1, [r0, #12]	@ MaxPrio.543,
	movlt	r2, r3	@ MaxPrio, MaxPrio.539
	movge	r3, #0	@ MaxPrioChanID,
	movlt	r3, #1	@ MaxPrioChanID,
	cmp	r2, ip	@ MaxPrio, MaxPrio.541
	movlt	r2, ip	@ MaxPrio, MaxPrio.541
	movlt	r3, #2	@ MaxPrioChanID,
	cmp	r2, r1	@ MaxPrio, MaxPrio.543
	movlt	r2, r1	@ MaxPrio, MaxPrio.543
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
	ldr	r1, [r0, #0]	@ MaxPrio.547,* pPrioArray
	cmp	r1, ip	@ MaxPrio.547,
	movle	r1, ip	@ MaxPrio.547, tmp161
	movgt	r3, ip	@ MaxPrioChanID, tmp161
	ldr	ip, [r0, #4]	@ MaxPrio.548,
	cmp	r1, ip	@ MaxPrio.547, MaxPrio.548
	movlt	r1, ip	@ MaxPrio.547, MaxPrio.548
	ldr	ip, [r0, #8]	@ MaxPrio.549,
	movlt	r3, #1	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.547, MaxPrio.549
	movlt	r1, ip	@ MaxPrio.547, MaxPrio.549
	ldr	ip, [r0, #12]	@ MaxPrio.550,
	movlt	r3, #2	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.547, MaxPrio.550
	movlt	r1, ip	@ MaxPrio.547, MaxPrio.550
	movlt	r3, #3	@ MaxPrioChanID,
	cmp	r1, #0	@ MaxPrio.547,
	movle	r0, #1	@ total,
	ble	.L7	@,
	str	r3, [r2, #20]	@ MaxPrioChanID, g_ChanCtx.ChanIdTabByPrior
	mov	ip, #0	@ tmp163,
	str	ip, [r0, r3, asl #2]	@ tmp163,* pPrioArray
	ldr	r1, [r0, #0]	@ MaxPrio.554,* pPrioArray
	cmp	r1, ip	@ MaxPrio.554,
	movle	r1, ip	@ MaxPrio.554, tmp163
	movgt	r3, ip	@ MaxPrioChanID, tmp163
	ldr	ip, [r0, #4]	@ MaxPrio.555,
	cmp	r1, ip	@ MaxPrio.554, MaxPrio.555
	movlt	r1, ip	@ MaxPrio.554, MaxPrio.555
	ldr	ip, [r0, #8]	@ MaxPrio.556,
	movlt	r3, #1	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.554, MaxPrio.556
	movlt	r1, ip	@ MaxPrio.554, MaxPrio.556
	ldr	ip, [r0, #12]	@ MaxPrio.557,
	movlt	r3, #2	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.554, MaxPrio.557
	movlt	r1, ip	@ MaxPrio.554, MaxPrio.557
	movlt	r3, #3	@ MaxPrioChanID,
	cmp	r1, #0	@ MaxPrio.554,
	movle	r0, #2	@ total,
	ble	.L7	@,
	mov	ip, #0	@ tmp165,
	str	r3, [r2, #24]	@ MaxPrioChanID, g_ChanCtx.ChanIdTabByPrior
	str	ip, [r0, r3, asl #2]	@ tmp165,* pPrioArray
	ldr	r1, [r0, #0]	@ MaxPrio.536,* pPrioArray
	cmp	r1, ip	@ MaxPrio.536,
	movle	r1, ip	@ MaxPrio.536, tmp165
	bgt	.L37	@,
.L21:
	ldr	ip, [r0, #4]	@ MaxPrio.537,
	cmp	r1, ip	@ MaxPrio.536, MaxPrio.537
	movlt	r1, ip	@ MaxPrio.536, MaxPrio.537
	ldr	ip, [r0, #8]	@ MaxPrio.538,
	movlt	r3, #1	@ MaxPrioChanID,
	cmp	r1, ip	@ MaxPrio.536, MaxPrio.538
	movlt	r1, ip	@ MaxPrio.536, MaxPrio.538
	ldr	ip, [r0, #12]	@ MaxPrio.534,
	movlt	r3, #2	@ MaxPrioChanID,
	cmp	ip, r1	@ MaxPrio.534, MaxPrio.536
	movgt	r3, #3	@ MaxPrioChanID,
	movgt	r1, ip	@ MaxPrio.536, MaxPrio.534
	cmp	r1, #0	@ MaxPrio.536,
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
	mov	r1, r0, asl #2	@ ivtmp.531, total,
	add	r3, r0, #1	@ j, total,
	add	r4, r1, r2	@ tmp168, ivtmp.531, tmp173
	cmp	r3, #3	@ j,
	rsb	r0, r0, #3	@ tmp175, total,
	mvn	ip, #0	@ tmp174,
	add	r1, r1, #4	@ ivtmp.531, ivtmp.531,
	and	r0, r0, #1	@ tmp176, tmp175,
	str	ip, [r4, #16]	@ tmp174,
	bgt	.L29	@,
	cmp	r0, #0	@ tmp176,
	beq	.L23	@,
	add	r3, r3, #1	@ j, j,
	add	r0, r1, r2	@ tmp189, ivtmp.531, tmp173
	cmp	r3, #3	@ j,
	add	r1, r1, #4	@ ivtmp.531, ivtmp.531,
	str	ip, [r0, #16]	@ tmp174,
	bgt	.L29	@,
.L23:
	add	r0, r1, #4	@ tmp178, ivtmp.531,
	add	r3, r3, #2	@ j, j,
	add	r5, r1, r2	@ tmp181, ivtmp.531, tmp173
	add	r4, r0, r2	@ tmp186, tmp178, tmp173
	cmp	r3, #3	@ j,
	add	r1, r0, #4	@ ivtmp.531, tmp178,
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
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r2, [r3, #16]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #0	@ i.437,
	moveq	r4, r6	@ i, i.437
	beq	.L41	@,
	ldr	r1, [r3, #20]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r1, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	moveq	r6, #1	@ i.437,
	moveq	r4, r6	@ i, i.437
	beq	.L41	@,
	ldr	ip, [r3, #24]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	ip, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	beq	.L43	@,
	ldr	r2, [r3, #28]	@ g_ChanCtx.ChanIdTabByPrior, g_ChanCtx.ChanIdTabByPrior
	cmp	r2, r0	@ g_ChanCtx.ChanIdTabByPrior, CurChanId
	beq	.L49	@,
	mov	r6, #0	@ i.437,
	add	r8, r3, #20	@ D.35042, tmp164,
	mov	r4, r6	@ i, i.437
.L48:
	ldr	ip, [r8, #0]	@ D.35043,* D.35042
	cmp	ip, #0	@ D.35043,
	blt	.L49	@,
	add	r0, r6, #2	@ tmp151, i.437,
	tst	r4, #1	@ i,
	ldr	r2, .L57	@ tmp165,
	mov	r1, r0, asl #2	@ ivtmp.612, tmp151,
	beq	.L45	@,
	add	r6, r2, r6, asl #2	@, D.35035, tmp165, i.437,
	ldr	r7, [r3, ip, asl #2]	@ tmp179,
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r6, #0]	@ temp.614,* D.35035
	ldr	r5, [r3, r0, asl #2]	@ tmp180,
	cmp	r7, r5	@ tmp179, tmp180
	strge	ip, [r6, #0]	@ D.35043,* D.35035
	strge	r0, [r8, #0]	@ temp.614,* D.35042
	cmp	r4, #2	@ i,
	bgt	.L49	@,
	add	r8, r2, r1	@ D.35042, tmp165, ivtmp.612
	mov	r6, r4	@ i.437, i
	add	r1, r1, #4	@ ivtmp.612, ivtmp.612,
	ldr	ip, [r8, #0]	@ D.35043,* D.35042
	cmp	ip, #0	@ D.35043,
	bge	.L45	@,
.L49:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L47:
	ldr	ip, [r2, r1]	@ D.35043,* ivtmp.612
	add	r1, r5, #4	@ ivtmp.612, tmp169,
	cmp	ip, #0	@ D.35043,
	blt	.L49	@,
	ldr	r7, [r2, r0, asl #2]	@ temp.614,
	ldr	fp, [r3, ip, asl #2]	@ tmp184,
	ldr	sl, [r3, r7, asl #2]	@ tmp185,
	cmp	fp, sl	@ tmp184, tmp185
	strge	ip, [r2, r0, asl #2]	@ D.35043,
	strge	r7, [r9, #0]	@ temp.614,* D.35042
	ldr	ip, [r2, r5]	@ D.35043,
	cmp	ip, #0	@ D.35043,
	blt	.L49	@,
.L45:
	ldr	r7, [r2, r6, asl #2]	@ temp.614,
	add	r0, r4, #1	@ tmp168, i,
	ldr	fp, [r3, ip, asl #2]	@ tmp159,
	add	r4, r0, #1	@ i, tmp168,
	add	r5, r1, #4	@ tmp169, ivtmp.612,
	add	r9, r2, r1	@ D.35042, tmp165, ivtmp.612
	ldr	sl, [r3, r7, asl #2]	@ tmp160,
	cmp	fp, sl	@ tmp159, tmp160
	strge	ip, [r2, r6, asl #2]	@ D.35043,
	strge	r7, [r8, #0]	@ temp.614,* D.35042
	cmp	r0, #2	@ tmp168,
	mov	r6, r4	@ i.437, i
	add	r8, r2, r5	@ D.35042, tmp165, tmp169
	ble	.L47	@,
	b	.L49	@
.L43:
	mov	r6, #2	@ i.437,
	mov	r4, r6	@ i, i.437
.L41:
	add	r8, r6, #1	@ pretmp.595, i.437,
	ldr	r1, .L57	@ tmp175,
	add	r8, r1, r8, asl #2	@, D.35042, tmp175, pretmp.595,
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
.LFB1602:
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
.LFB1607:
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
.LFB1608:
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
.LFB1609:
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
	.global	VDMDRV_GetMb0QpInCurrPic
	.type	VDMDRV_GetMb0QpInCurrPic, %function
VDMDRV_GetMb0QpInCurrPic:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #180	@ tmp139,
	mla	r3, r2, r0, r1	@ tmp140, tmp139, VdhId, tmp136
	ldr	r0, [r3, #60]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	and	r0, r0, #31	@, <variable>.Mb0QpInCurrPic,
	bx	lr	@
	.fnend
	.size	VDMDRV_GetMb0QpInCurrPic, .-VDMDRV_GetMb0QpInCurrPic
	.align	2
	.global	VDMDRV_GetSwitchRounding
	.type	VDMDRV_GetSwitchRounding, %function
VDMDRV_GetSwitchRounding:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #180	@ tmp139,
	mla	r3, r2, r0, r1	@ tmp140, tmp139, VdhId, tmp136
	ldr	r0, [r3, #64]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	and	r0, r0, #1	@, <variable>.SwitchRounding,
	bx	lr	@
	.fnend
	.size	VDMDRV_GetSwitchRounding, .-VDMDRV_GetSwitchRounding
	.align	2
	.global	VDMDRV_AvsFirstFldNeedRepair
	.type	VDMDRV_AvsFirstFldNeedRepair, %function
VDMDRV_AvsFirstFldNeedRepair:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #6	@ VidStd,
	beq	.L75	@,
.L72:
	mov	r0, #0	@ D.35640,
	bx	lr	@
.L75:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	bne	.L72	@,
	ldr	ip, .L76	@ tmp140,
	movw	r1, #1144	@ tmp142,
	mla	r2, r1, r2, ip	@ tmp143, tmp142, VdhId, tmp140
	ldr	r0, [r2, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	movle	r0, #0	@, D.35640
	movgt	r0, #1	@, D.35640
	bx	lr	@
.L77:
	.align	2
.L76:
	.word	.LANCHOR0+232
	.fnend
	.size	VDMDRV_AvsFirstFldNeedRepair, .-VDMDRV_AvsFirstFldNeedRepair
	.align	2
	.global	VDMDRV_AvsSecondFldNeedRepair
	.type	VDMDRV_AvsSecondFldNeedRepair, %function
VDMDRV_AvsSecondFldNeedRepair:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #6	@ VidStd,
	beq	.L82	@,
.L79:
	mov	r0, #0	@ D.35658,
	bx	lr	@
.L82:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r3, #1	@ <variable>.PicStruct,
	bne	.L79	@,
	ldr	ip, .L83	@ tmp140,
	movw	r1, #1144	@ tmp143,
	mla	r2, r1, r2, ip	@ tmp144, tmp143, VdhId, tmp140
	ldr	r0, [r2, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	movle	r0, #0	@, D.35658
	movgt	r0, #1	@, D.35658
	bx	lr	@
.L84:
	.align	2
.L83:
	.word	.LANCHOR0+232
	.fnend
	.size	VDMDRV_AvsSecondFldNeedRepair, .-VDMDRV_AvsSecondFldNeedRepair
	.align	2
	.global	VDMDRV_ResetVDH
	.type	VDMDRV_ResetVDH, %function
VDMDRV_ResetVDH:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp141,
	movt	r4, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r3, [r4, #1384]	@ <variable>.ChanId, <variable>.ChanId
	cmp	r3, r0	@ <variable>.ChanId, ChanID
	ldmnefd	sp!, {r4, pc}	@
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp137,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp137,
	ldr	r3, [r0, #40]	@ D.35691, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35691,
	beq	.L87	@,
	mov	r0, #0	@,
	blx	r3	@ D.35691
.L88:
	mov	r1, #0	@ tmp140,
	str	r1, [r4, #1376]	@ tmp140, <variable>.VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L87:
	mov	r0, r3	@, D.35691
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1290	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L88	@
	.fnend
	.size	VDMDRV_ResetVDH, .-VDMDRV_ResetVDH
	.align	2
	.global	VDMDRV_IsCopy
	.type	VDMDRV_IsCopy, %function
VDMDRV_IsCopy:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L99	@,
	sub	r0, r0, #1	@ tmp138, VidStd,
	cmp	r0, #11	@ tmp138,
	ldrls	pc, [pc, r0, asl #2]	@ tmp138
	b	.L93	@
.L97:
	.word	.L94
	.word	.L95
	.word	.L93
	.word	.L93
	.word	.L93
	.word	.L93
	.word	.L93
	.word	.L93
	.word	.L93
	.word	.L96
	.word	.L96
	.word	.L96
.L96:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r3, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.35673
	moveq	r0, #1	@, D.35673
	ldmfd	sp!, {r4, pc}	@
.L95:
	ldrb	r1, [r4, #158]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r1, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.35673
	moveq	r0, #1	@, D.35673
	ldmfd	sp!, {r4, pc}	@
.L94:
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.IsSkpicCopy, <variable>.IsSkpicCopy
	cmp	r2, #1	@ <variable>.IsSkpicCopy,
	movne	r0, #0	@, D.35673
	moveq	r0, #1	@, D.35673
	ldmfd	sp!, {r4, pc}	@
.L93:
	mov	r0, #0	@ D.35673,
	ldmfd	sp!, {r4, pc}	@
.L99:
	mov	r0, r4	@, pDecParam
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35673, pDecParam
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_IsCopy, .-VDMDRV_IsCopy
	.align	2
	.global	VDMDRV_StartDec
	.type	VDMDRV_StartDec, %function
VDMDRV_StartDec:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #68]	@ D.35106, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.35106,
	beq	.L101	@,
	blx	r3	@ D.35106
.L102:
	add	r4, r4, r4, asl #2	@, tmp141, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r2, #1	@ tmp145,
	add	r0, r1, r4, asl #3	@, tmp143, tmp137, tmp141,
	str	r2, [r0, #1376]	@ tmp145, <variable>.VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L101:
	mov	r0, r3	@, D.35106
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #258	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L102	@
	.fnend
	.size	VDMDRV_StartDec, .-VDMDRV_StartDec
	.align	2
	.global	VDMDRV_StartRepair
	.type	VDMDRV_StartRepair, %function
VDMDRV_StartRepair:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp136,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp136,
	mov	r5, r0	@ StateAfterRepair, StateAfterRepair
	mov	r4, r1	@ VdhId, VdhId
	ldr	r3, [r3, #64]	@ D.35097, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	cmp	r3, #0	@ D.35097,
	beq	.L105	@,
	mov	r0, r1	@, VdhId
	add	r4, r4, r4, asl #2	@, tmp142, VdhId, VdhId,
	blx	r3	@ D.35097
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r1, r4, asl #3	@, tmp144, tmp138, tmp142,
	str	r5, [r0, #1376]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L105:
	mov	r0, r3	@, D.35097
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #250	@,
	movt	r1, #:upper16:.LC0	@,
	add	r4, r4, r4, asl #2	@, tmp142, VdhId, VdhId,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r1, r4, asl #3	@, tmp144, tmp138, tmp142,
	str	r5, [r0, #1376]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VDMDRV_StartRepair, .-VDMDRV_StartRepair
	.align	2
	.global	VDMDRV_ExitSleep
	.type	VDMDRV_ExitSleep, %function
VDMDRV_ExitSleep:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #0]	@ D.35087, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.35087,
	beq	.L109	@,
	blx	r3	@ D.35087
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, VdhId,
	str	r0, [r4, #48]	@ tmp142, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
.L109:
	mov	r0, r3	@, D.35087
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #242	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, VdhId,
	str	r0, [r4, #48]	@ tmp142, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_ExitSleep, .-VDMDRV_ExitSleep
	.align	2
	.global	VDMDRV_Reset
	.type	VDMDRV_Reset, %function
VDMDRV_Reset:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L114	@ tmp135,
	add	r0, r0, r0, asl #2	@, tmp138, VdhId, VdhId,
	mov	r1, #40	@,
	add	r0, r3, r0, asl #3	@,, tmp135, tmp138,
	b	__memzero	@
.L115:
	.align	2
.L114:
	.word	.LANCHOR0+1376
	.fnend
	.size	VDMDRV_Reset, .-VDMDRV_Reset
	.align	2
	.global	VDMDRV_Init
	.type	VDMDRV_Init, %function
VDMDRV_Init:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r3, #0]	@ D.34960, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.34960,
	beq	.L117	@,
	blx	r3	@ D.34960
.L118:
	mov	r6, r4, asl #2	@ tmp140, VdhId,
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	add	r2, r6, r4	@ tmp141, tmp140, VdhId
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	add	ip, r5, #1376	@ tmp138, tmp137,
	add	r5, r6, r5	@ tmp147, tmp140, tmp137
	add	r0, ip, r2, asl #3	@,, tmp138, tmp141,
	mov	r1, #40	@,
	bl	__memzero	@
	mov	r0, #0	@ tmp149,
	str	r0, [r5, #48]	@ tmp149, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L117:
	mov	r0, r3	@, D.34960
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #95	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L118	@
	.fnend
	.size	VDMDRV_Init, .-VDMDRV_Init
	.align	2
	.global	VDMDRV_ActivateVDH
	.type	VDMDRV_ActivateVDH, %function
VDMDRV_ActivateVDH:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp612,
	movt	r4, #:upper16:.LANCHOR0	@ tmp612,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r7, [r4, #16]	@ temp.1002, g_ChanCtx.ChanIdTabByPrior
	cmp	r7, #0	@ temp.1002,
	blt	.L121	@,
	mov	r6, r5, asl #2	@ tmp611, VdhId,
	mov	r0, r7	@, temp.1002
	add	sl, r6, r5	@ tmp170, tmp611, VdhId
	add	r8, sl, #1	@ tmp171, tmp170,
	add	r8, r4, r8, asl #3	@, tmp174, tmp612, tmp171,
	str	r7, [r8, #1376]	@ temp.1002, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L122	@,
	add	r3, r7, #8	@ tmp177, temp.1002,
	ldr	r3, [r4, r3, asl #2]	@ tmp178, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp178,
	beq	.L157	@,
	movw	r1, #:lower16:.LC4	@,
	mov	r2, r7	@, temp.1002
	movt	r1, #:upper16:.LC4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L127:
	ldr	r7, [r4, #20]	@ temp.1012, g_ChanCtx.ChanIdTabByPrior
	movw	r8, #:lower16:.LANCHOR0	@ tmp239,
	movt	r8, #:upper16:.LANCHOR0	@ tmp239,
	cmp	r7, #0	@ temp.1012,
	blt	.L121	@,
	add	r9, r6, r5	@ tmp243, tmp611, VdhId
	mov	r0, r7	@, temp.1012
	add	sl, r9, #1	@ tmp244, tmp243,
	add	sl, r8, sl, asl #3	@, tmp247, tmp239, tmp244,
	str	r7, [sl, #1376]	@ temp.1012, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L129	@,
	add	r2, r7, #8	@ tmp250, temp.1012,
	ldr	r3, [r8, r2, asl #2]	@ tmp251, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp251,
	bne	.L130	@,
	add	r8, r8, r9, asl #3	@, tmp258, tmp239, tmp243,
	mov	r0, r7	@, temp.1012
	str	r3, [r8, #1392]	@ tmp251, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ temp.1015,
	str	r0, [r8, #1392]	@ temp.1015, <variable>.pDecParam
	beq	.L131	@,
	ldr	r7, [sl, #1376]	@ D.35268, <variable>.ChanId
	mov	r0, r7	@, D.35268
	bl	VCTRL_GetVidStd	@
	movw	ip, #:lower16:AcceleratorCharacter	@ tmp296,
	movt	ip, #:upper16:AcceleratorCharacter	@ tmp296,
	str	r0, [sl, #1380]	@ D.36361, <variable>.VidStd
	mov	r2, r0	@ D.36361,
	ldr	r3, [ip, #0]	@ AcceleratorCharacter.1017, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.1017,
	beq	.L126	@,
	ldr	lr, [r8, #1392]	@ <variable>.pDecParam, <variable>.pDecParam
	add	r0, sp, #4	@,,
	str	r2, [sp, #8]	@ D.36361, DecparamInfo.VidStd
	str	r7, [sp, #4]	@ D.35268, DecparamInfo.ChanID
	str	lr, [sp, #12]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.1017
	cmp	r0, #1	@,
	beq	.L133	@,
.L128:
	add	r8, r6, r5	@ tmp426, tmp611, VdhId
	add	r9, r4, r8, asl #3	@, tmp430, tmp612, tmp426,
	ldr	r2, [r9, #1388]	@ D.36361, <variable>.VidStd
.L126:
	add	r9, r6, r5	@ tmp436, tmp611, VdhId
	mov	r0, r2	@, D.36361
	movw	r8, #:lower16:.LANCHOR0	@ tmp432,
	movt	r8, #:upper16:.LANCHOR0	@ tmp432,
	add	sl, r4, r9, asl #3	@, tmp438, tmp612, tmp436,
	ldr	r1, [sl, #1392]	@, <variable>.pDecParam
	bl	VDMDRV_IsCopy	@
	cmp	r0, #0	@,
	beq	.L141	@,
	add	r8, r8, r9, asl #3	@, tmp448, tmp432, tmp436,
	ldr	r0, [r8, #1388]	@ <variable>.VidStd, <variable>.VidStd
	sub	r3, r0, #1	@ tmp451, <variable>.VidStd,
	cmp	r3, #11	@ tmp451,
	ldrls	pc, [pc, r3, asl #2]	@ tmp451
	b	.L121	@
.L145:
	.word	.L142
	.word	.L143
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L144
	.word	.L144
	.word	.L144
.L136:
	movw	r1, #:lower16:.LC3	@,
	mov	r2, r7	@, temp.1024
	movt	r1, #:upper16:.LC3	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L138:
	ldr	r7, [r4, #28]	@ D.35266, g_ChanCtx.ChanIdTabByPrior
	movw	r8, #:lower16:.LANCHOR0	@ tmp385,
	movt	r8, #:upper16:.LANCHOR0	@ tmp385,
	cmp	r7, #0	@ D.35266,
	blt	.L121	@,
	add	r9, r6, r5	@ tmp389, tmp611, VdhId
	mov	r0, r7	@, D.35266
	add	sl, r9, #1	@ tmp390, tmp389,
	add	sl, r8, sl, asl #3	@, tmp393, tmp385, tmp390,
	str	r7, [sl, #1376]	@ D.35266, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L158	@,
	add	r2, r7, #8	@ tmp398, D.35266,
	ldr	r3, [r8, r2, asl #2]	@ tmp399, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp399,
	beq	.L140	@,
	movw	r1, #:lower16:.LC4	@,
	mov	r2, r7	@, D.35266
	movt	r1, #:upper16:.LC4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L121:
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L157:
	add	sl, r4, sl, asl #3	@, tmp185, tmp612, tmp170,
	mov	r0, r7	@, temp.1002
	str	r3, [sl, #1392]	@ tmp178, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ temp.1003,
	str	r0, [sl, #1392]	@ temp.1003, <variable>.pDecParam
	beq	.L124	@,
	ldr	r7, [r8, #1376]	@ D.35268, <variable>.ChanId
	mov	r0, r7	@, D.35268
	bl	VCTRL_GetVidStd	@
	mov	r2, r0	@ D.36361,
	movw	r0, #:lower16:AcceleratorCharacter	@ tmp223,
	movt	r0, #:upper16:AcceleratorCharacter	@ tmp223,
	str	r2, [r8, #1380]	@ D.36361, <variable>.VidStd
	ldr	r3, [r0, #0]	@ AcceleratorCharacter.1005, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.1005,
	beq	.L126	@,
	ldr	r1, [sl, #1392]	@ <variable>.pDecParam, <variable>.pDecParam
	add	r0, sp, #4	@,,
	str	r2, [sp, #8]	@ D.36361, DecparamInfo.VidStd
	str	r7, [sp, #4]	@ D.35268, DecparamInfo.ChanID
	str	r1, [sp, #12]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.1005
	cmp	r0, #1	@,
	bne	.L128	@,
	b	.L127	@
.L131:
	movw	r1, #:lower16:.LC3	@,
	mov	r2, r7	@, temp.1012
	movt	r1, #:upper16:.LC3	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L133:
	ldr	r7, [r4, #24]	@ temp.1024, g_ChanCtx.ChanIdTabByPrior
	movw	r8, #:lower16:.LANCHOR0	@ tmp312,
	movt	r8, #:upper16:.LANCHOR0	@ tmp312,
	cmp	r7, #0	@ temp.1024,
	blt	.L121	@,
	add	r9, r6, r5	@ tmp316, tmp611, VdhId
	mov	r0, r7	@, temp.1024
	add	r3, r9, #1	@ tmp317, tmp316,
	add	sl, r8, r3, asl #3	@, tmp320, tmp312, tmp317,
	str	r7, [sl, #1376]	@ temp.1024, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L134	@,
	add	r0, r7, #8	@ tmp323, temp.1024,
	ldr	r3, [r8, r0, asl #2]	@ tmp324, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp324,
	bne	.L135	@,
	add	r8, r8, r9, asl #3	@, tmp331, tmp312, tmp316,
	mov	r0, r7	@, temp.1024
	str	r3, [r8, #1392]	@ tmp324, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ temp.1027,
	str	r0, [r8, #1392]	@ temp.1027, <variable>.pDecParam
	beq	.L136	@,
	ldr	r7, [sl, #1376]	@ D.35268, <variable>.ChanId
	mov	r0, r7	@, D.35268
	bl	VCTRL_GetVidStd	@
	movw	r1, #:lower16:AcceleratorCharacter	@ tmp369,
	movt	r1, #:upper16:AcceleratorCharacter	@ tmp369,
	str	r0, [sl, #1380]	@ D.36361, <variable>.VidStd
	mov	r2, r0	@ D.36361,
	ldr	r3, [r1, #0]	@ AcceleratorCharacter.1029, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.1029,
	beq	.L126	@,
	ldr	ip, [r8, #1392]	@ <variable>.pDecParam, <variable>.pDecParam
	add	r0, sp, #4	@,,
	str	r2, [sp, #8]	@ D.36361, DecparamInfo.VidStd
	str	r7, [sp, #4]	@ D.35268, DecparamInfo.ChanID
	str	ip, [sp, #12]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.1029
	cmp	r0, #1	@,
	bne	.L128	@,
	b	.L138	@
.L130:
	mov	r2, r7	@, temp.1012
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	b	.L133	@
.L122:
	mov	r3, r7	@, temp.1002
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L127	@
.L141:
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp502,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp502,
	ldr	r3, [r1, #72]	@ D.36351, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.36351,
	beq	.L147	@,
	add	r9, r8, r9, asl #3	@, tmp510, tmp432, tmp436,
	ldr	r1, [sl, #1392]	@, <variable>.pDecParam
	mov	r2, r5	@, VdhId
	ldr	r0, [r9, #1388]	@, <variable>.VidStd
	blx	r3	@ D.36351
	cmp	r0, #0	@,
	beq	.L148	@,
.L147:
	add	r6, r6, r5	@ tmp527, tmp611, VdhId
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	add	r6, r4, r6, asl #3	@, tmp529, tmp612, tmp527,
	mov	r8, r0	@ tmp531,
	bl	dprint_vfmw	@
	mov	r3, #100	@ tmp540,
	mov	r0, r7	@, D.35268
	mov	r2, r8	@, tmp531
	mov	r1, r3	@, tmp540
	str	r3, [r6, #1380]	@ tmp540, <variable>.ErrRatio
	str	r8, [r6, #1376]	@ tmp531, <variable>.VdmStateMachine
	add	r7, r7, #8	@ tmp542, D.35268,
	bl	VCTRL_VdmPostProc	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_Reset	@
	str	r8, [r4, r7, asl #2]	@ tmp531, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L121	@
.L135:
	mov	r2, r7	@, temp.1024
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	b	.L138	@
.L129:
	mov	r3, r7	@, temp.1012
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L133	@
.L140:
	add	r8, r8, r9, asl #3	@, tmp581, tmp385, tmp389,
	mov	r0, r7	@, D.35266
	str	r3, [r8, #1392]	@ tmp399, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.35757,
	str	r0, [r8, #1392]	@ D.35757, <variable>.pDecParam
	beq	.L149	@,
	ldr	r7, [sl, #1376]	@ D.35268, <variable>.ChanId
	mov	r0, r7	@, D.35268
	bl	VCTRL_GetVidStd	@
	mov	r2, r0	@ D.36361,
	movw	r0, #:lower16:AcceleratorCharacter	@ tmp412,
	movt	r0, #:upper16:AcceleratorCharacter	@ tmp412,
	str	r2, [sl, #1380]	@ D.36361, <variable>.VidStd
	ldr	r3, [r0, #0]	@ AcceleratorCharacter.451, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.451,
	beq	.L126	@,
	ldr	lr, [r8, #1392]	@ <variable>.pDecParam, <variable>.pDecParam
	add	r0, sp, #4	@,,
	str	r2, [sp, #8]	@ D.36361, DecparamInfo.VidStd
	str	r7, [sp, #4]	@ D.35268, DecparamInfo.ChanID
	str	lr, [sp, #12]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.451
	cmp	r0, #1	@,
	bne	.L128	@,
	b	.L121	@
.L134:
	mov	r3, r7	@, temp.1024
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L138	@
.L148:
	bl	OSAL_GetTimeInMs	@
	add	r1, r5, r5, asl #1	@, tmp556, VdhId, VdhId,
	movw	r3, #:lower16:g_VfmwGlobalStat	@ tmp552,
	movt	r3, #:upper16:g_VfmwGlobalStat	@ tmp552,
	add	ip, r3, r1, asl #4	@, tmp558, tmp552, tmp556,
	mov	r2, r0	@ D.36347,
	mov	r0, r5	@, VdhId
	str	r2, [sl, #1396]	@ D.36347, <variable>.StartTime
	str	r2, [ip, #4]	@ D.36347, <variable>.u32VdhLastStartTimeInMs
	bl	VDMDRV_StartDec	@
	mov	r0, r7	@, D.35268
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L121	@,
.L156:
	bl	OSAL_GetTimeInMs	@
	add	r7, r8, r7, asl #2	@, tmp563, tmp432, D.35268,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp567,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp567,
	ldr	r1, [r7, #1416]	@ tmp566, last_rec_pos_time
	ldr	ip, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r1, r0	@ tmp565, tmp566, currtime.996
	cmp	r2, ip	@ tmp565, g_TraceFramePeriod
	strhi	r0, [r7, #1416]	@ currtime.996, last_rec_pos_time
	b	.L121	@
.L144:
	add	r0, r6, r5	@ tmp474, tmp611, VdhId
	mov	r1, r5	@, VdhId
	add	ip, r4, r0, asl #3	@, tmp476, tmp612, tmp474,
	ldr	r0, [ip, #1392]	@, <variable>.pDecParam
	bl	PostPro_CopyYuv_Vp6	@
	mov	r3, r0	@ ret,
.L146:
	cmp	r3, #0	@ ret,
	bne	.L121	@,
	add	r6, r6, r5	@ tmp483, tmp611, VdhId
	mov	r0, #2	@,
	mov	r1, r5	@, VdhId
	movw	r8, #:lower16:.LANCHOR0	@ tmp479,
	add	r4, r4, r6, asl #3	@, tmp485, tmp612, tmp483,
	movt	r8, #:upper16:.LANCHOR0	@ tmp479,
	str	r3, [r4, #1380]	@ ret, <variable>.ErrRatio
	bl	VDMDRV_StartRepair	@
	mov	r0, r7	@, D.35268
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L121	@,
	b	.L156	@
.L143:
	add	r2, r6, r5	@ tmp456, tmp611, VdhId
	mov	r1, r5	@, VdhId
	add	ip, r4, r2, asl #3	@, tmp458, tmp612, tmp456,
	ldr	r0, [ip, #1392]	@, <variable>.pDecParam
	bl	PostPro_CopyYuv	@
	mov	r3, r0	@ ret,
	b	.L146	@
.L142:
	add	r3, r6, r5	@ tmp465, tmp611, VdhId
	mov	r1, r5	@, VdhId
	add	lr, r4, r3, asl #3	@, tmp467, tmp612, tmp465,
	ldr	r0, [lr, #1392]	@, <variable>.pDecParam
	bl	PostPro_CopyYuv_Vc1	@
	mov	r3, r0	@ ret,
	b	.L146	@
.L158:
	mov	r3, r7	@, D.35266
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L121	@
.L124:
	mov	r2, r7	@, temp.1002
	movw	r1, #:lower16:.LC3	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L127	@
.L149:
	mov	r2, r7	@, D.35266
	movw	r1, #:lower16:.LC3	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L121	@
	.fnend
	.size	VDMDRV_ActivateVDH, .-VDMDRV_ActivateVDH
	.align	2
	.global	VDMDRV_AfterDec
	.type	VDMDRV_AfterDec, %function
VDMDRV_AfterDec:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	fp, r0, r0, asl #2	@, tmp167, VdhId, VdhId,
	.pad #156
	sub	sp, sp, #156	@,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp349,
	add	r7, sp, #8	@ tmp347,,
	movt	r4, #:upper16:.LANCHOR0	@ tmp349,
	add	r9, r7, #4	@ tmp161, tmp347,
	mov	r8, fp, asl #3	@ tmp168, tmp167,
	add	r5, r8, r4	@ tmp169, tmp168, tmp349
	mov	r1, #140	@,
	mov	r6, r0	@ VdhId, VdhId
	mov	r0, r7	@, tmp347
	bl	__memzero	@
	mov	r0, r9	@, tmp161
	mov	r1, #136	@,
	bl	__memzero	@
	ldr	ip, [r5, #1380]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r2, [r5, #1376]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	mov	r0, #2	@,
	ldr	r3, [r5, #1404]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	ip, [sp, #0]	@ <variable>.ErrRatio,
	bl	dprint_vfmw	@
	ldr	sl, [r5, #1376]	@ temp.1060, <variable>.VdmStateMachine
	cmp	sl, #2	@ temp.1060,
	beq	.L162	@,
	cmp	sl, #3	@ temp.1060,
	beq	.L163	@,
	cmp	sl, #1	@ temp.1060,
	beq	.L179	@,
	add	fp, fp, #1	@ tmp328, tmp167,
	mov	r3, sl	@, temp.1060
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC10	@,
	add	fp, r4, fp, asl #3	@, tmp331, tmp349, tmp328,
	movt	r1, #:upper16:.LC10	@,
	ldr	r2, [fp, #1376]	@, <variable>.ChanId
	bl	dprint_vfmw	@
	ldr	r2, [fp, #1376]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, #0	@ tmp346,
	add	r3, r2, #8	@ tmp344, <variable>.ChanId,
	str	r0, [r4, r3, asl #2]	@ tmp346, g_ChanCtx.ChanDecByVdhPlusOne
.L174:
	add	sp, sp, #156	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L179:
	add	r0, r4, #1376	@ tmp199, tmp349,
	add	r8, r0, r8	@ pVdmDrvParam, tmp199, tmp168
	ldr	r3, [r8, #28]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	r3, #1	@ <variable>.VdmTimeOut,
	beq	.L180	@,
	ldr	r1, [r8, #16]	@, <variable>.pDecParam
	mov	r2, r6	@, VdhId
	ldr	r0, [r8, #12]	@, <variable>.VidStd
	bl	PostPro_GetErrRatio	@
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	mov	ip, r0	@ D.36473,
	mov	r2, r0	@, D.36473
	str	ip, [r8, #4]	@ D.36473, <variable>.ErrRatio
	mov	r0, sl	@, temp.1060
	bl	dprint_vfmw	@
	ldr	r1, [r8, #12]	@ D.36470, <variable>.VidStd
	sub	r3, r1, #8	@ tmp213, D.36470,
	cmp	r1, #5	@ D.36470,
	cmpne	r3, #1	@, tmp213,
	movls	r1, #0	@ tmp221,
	strls	r1, [r8, #4]	@ tmp221, <variable>.ErrRatio
	bls	.L165	@,
	ldr	r1, [r8, #4]	@ D.36471, <variable>.ErrRatio
	cmp	r1, #0	@ D.36471,
	beq	.L165	@,
	movw	lr, #:lower16:g_event_report	@ tmp222,
	movt	lr, #:upper16:g_event_report	@ tmp222,
	ldr	r3, [lr, #0]	@ g_event_report.460, g_event_report
	cmp	r3, #0	@ g_event_report.460,
	beq	.L165	@,
	add	r2, sp, #152	@ tmp224,,
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	str	r1, [r2, #-4]!	@ D.36471, para
	mov	r1, #114	@,
	blx	r3	@ g_event_report.460
.L165:
	ldr	r0, [sp, #8]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r0, #1	@ VdmInfoExt.ModuleLowlyEnable,
	moveq	r1, #0	@ tmp226,
	streq	r1, [r8, #4]	@ tmp226, <variable>.ErrRatio
	beq	.L168	@,
	ldr	r1, [r8, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	cmp	r1, #0	@ <variable>.ErrRatio,
	bne	.L181	@,
.L168:
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.461,
	add	r2, r7, #4	@, tmp347,
	bic	r1, r1, r1, asr #31	@ iftmp.1076, iftmp.461
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	str	r1, [r8, #4]	@ iftmp.1076, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r8, #8]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r6	@, VdhId
	mov	r2, #0	@ tmp238,
	add	r1, r3, #8	@ tmp236, <variable>.ChanId,
	str	r2, [r4, r1, asl #2]	@ tmp238, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L174	@
.L163:
	add	r5, r4, #1376	@ tmp308, tmp349,
	mov	r2, r9	@, tmp161
	add	r8, r5, r8	@ pVdmDrvParam, tmp308, tmp168
	mov	r5, #0	@ tmp313,
	ldr	r1, [r8, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.1062,
	str	r5, [r8, #28]	@ tmp313, <variable>.VdmTimeOut
.L177:
	bic	r1, r1, r1, asr #31	@ iftmp.469, iftmp.1062
	str	r1, [r8, #4]	@ iftmp.469, <variable>.ErrRatio
.L178:
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	ip, [r8, #8]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r6	@, VdhId
	add	r1, ip, #8	@ tmp320, <variable>.ChanId,
	str	r5, [r4, r1, asl #2]	@ tmp313, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L174	@
.L162:
	add	sl, r4, #1376	@ tmp240, tmp349,
	mov	ip, #0	@ tmp245,
	add	r8, sl, r8	@ pVdmDrvParam, tmp240, tmp168
	ldr	r0, [r8, #12]	@ D.36515, <variable>.VidStd
	str	ip, [r8, #28]	@ tmp245, <variable>.VdmTimeOut
	cmp	r0, #6	@ D.36515,
	ldr	r1, [r8, #16]	@ D.36514, <variable>.pDecParam
	beq	.L182	@,
.L170:
	bl	VDMDRV_IsCopy	@
	subs	r5, r0, #0	@ D.36503,
	bne	.L183	@,
	ldr	r1, [r8, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	add	r2, r7, #4	@, tmp347,
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.1083,
	b	.L177	@
.L182:
	ldrb	r9, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r9, #1	@ <variable>.PicStruct,
	bne	.L170	@,
	movw	r3, #1144	@ tmp251,
	mla	r2, r3, r6, r4	@ tmp252, tmp251, VdhId, tmp349
	ldr	lr, [r2, #1356]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	lr, #0	@ <variable>.ValidGroupNum,
	ble	.L170	@,
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp263,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp263,
	ldr	ip, [r1, #84]	@ D.36512, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ D.36512,
	str	r0, [r5, #1396]	@, <variable>.StartTime
	beq	.L171	@,
	mov	r2, r9	@, <variable>.PicStruct
	ldr	r0, [r8, #12]	@, <variable>.VidStd
	ldr	r1, [r8, #16]	@, <variable>.pDecParam
	mov	r3, r6	@, VdhId
	blx	ip	@ D.36512
	cmp	r0, #0	@,
	beq	.L184	@,
.L171:
	add	r2, r7, #4	@, tmp347,
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	mov	r1, #100	@,
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r2, [r8, #8]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, #0	@ tmp287,
	add	r3, r2, #8	@ tmp285, <variable>.ChanId,
	str	r0, [r4, r3, asl #2]	@ tmp287, g_ChanCtx.ChanDecByVdhPlusOne
	str	r0, [sl, fp, asl #3]	@ tmp287, <variable>.VdmStateMachine
	b	.L174	@
.L180:
	ldr	r1, [r8, #16]	@, <variable>.pDecParam
	mov	r2, r6	@, VdhId
	ldr	r0, [r8, #12]	@, <variable>.VidStd
	bl	PostPro_SetFullRepair	@
	mov	ip, #0	@ tmp208,
	mov	r2, #100	@ tmp207,
	mov	r0, ip	@, tmp208
	movw	r1, #:lower16:.LC8	@,
	str	ip, [r8, #28]	@ tmp208, <variable>.VdmTimeOut
	movt	r1, #:upper16:.LC8	@,
	str	r2, [r8, #4]	@ tmp207, <variable>.ErrRatio
	bl	dprint_vfmw	@
	b	.L165	@
.L181:
	ldr	r0, [r8, #12]	@, <variable>.VidStd
	ldr	r1, [r8, #16]	@, <variable>.pDecParam
	bl	PostPro_GetRepairStratage	@
	cmp	r0, #1	@,
	bne	.L174	@,
	ldr	r1, [r8, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	b	.L168	@
.L183:
	mov	r5, #0	@ tmp289,
	add	r2, r7, #4	@, tmp347,
	mov	r1, r5	@, tmp289
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	str	r5, [r8, #4]	@ tmp289, <variable>.ErrRatio
	b	.L178	@
.L184:
	mov	r1, r6	@, VdhId
	mov	r0, #3	@,
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L174	@,
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r8, #8]	@ D.36509, <variable>.ChanId
	movw	r1, #:lower16:g_TraceFramePeriod	@ tmp273,
	movt	r1, #:upper16:g_TraceFramePeriod	@ tmp273,
	add	r4, r4, ip, asl #2	@, tmp269, tmp349, D.36509,
	ldr	r3, [r1, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r2, [r4, #1432]	@ tmp272, last_rec_pos_time
	rsb	ip, r2, r0	@ tmp271, tmp272, currtime
	cmp	ip, r3	@ tmp271, g_TraceFramePeriod
	strhi	r0, [r4, #1432]	@ currtime, last_rec_pos_time
	b	.L174	@
	.fnend
	.size	VDMDRV_AfterDec, .-VDMDRV_AfterDec
	.global	__aeabi_uidiv
	.align	2
	.global	VDMDRV_IsrProcess
	.type	VDMDRV_IsrProcess, %function
VDMDRV_IsrProcess:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	.pad #12
	sub	sp, sp, #12	@,,
	ble	.L186	@,
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC11	@,
	movw	r2, #1027	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	dprint_vfmw	@
.L186:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp303,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp303,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #60]	@ D.35807, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	cmp	r3, #0	@ D.35807,
	beq	.L187	@,
	mov	r0, #2	@,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.35807
	tst	r0, #1	@,
	beq	.L187	@,
	ldr	r3, [r5, #92]	@ D.35600, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	cmp	r3, #0	@ D.35600,
	beq	.L206	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35600
.L189:
	ldr	r3, [r5, #48]	@ D.35605, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.35605,
	beq	.L190	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35605
.L191:
	mov	r6, r4, asl #2	@ tmp301, VdhId,
	movw	r5, #:lower16:.LANCHOR0	@ tmp302,
	add	r7, r6, r4	@ tmp174, tmp301, VdhId
	movt	r5, #:upper16:.LANCHOR0	@ tmp302,
	mov	r0, #6	@,
	add	r8, r5, r7, asl #3	@, tmp178, tmp302, tmp174,
	ldr	r7, [r8, #1384]	@ D.35609, <variable>.ChanId
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L207	@,
.L192:
	add	sl, r4, r4, asl #1	@, tmp190, VdhId, VdhId,
	movw	r8, #:lower16:g_VfmwGlobalStat	@ tmp192,
	movt	r8, #:upper16:g_VfmwGlobalStat	@ tmp192,
	bl	OSAL_GetTimeInMs	@
	add	r7, r8, sl, asl #4	@, pGs, tmp192, tmp190,
	ldr	r2, [r7, #4]	@ prephitmp.1101, <variable>.u32VdhLastStartTimeInMs
	cmp	r2, #0	@ prephitmp.1101,
	beq	.L193	@,
	ldr	r9, [r8, sl, asl #4]	@ <variable>.u32VdhStatisticStartTimeInMs, <variable>.u32VdhStatisticStartTimeInMs
	mov	r1, #180	@ tmp202,
	ldr	ip, [r7, #32]	@ <variable>.u32PicNum, <variable>.u32PicNum
	add	lr, r9, #499712	@ tmp193, <variable>.u32VdhStatisticStartTimeInMs,
	add	r3, lr, #288	@ tmp193, tmp193,
	mla	r9, r1, r4, r5	@ tmp203, tmp202, VdhId, tmp302
	cmp	r2, r3	@ prephitmp.1101, tmp193
	strhi	r2, [r8, sl, asl #4]	@ prephitmp.1101, <variable>.u32VdhStatisticStartTimeInMs
	ldrls	lr, [r7, #8]	@ prephitmp.1116, <variable>.u32VdhWorkTimeInMs
	movhi	r3, #0	@ tmp196,
	ldr	fp, [r8, sl, asl #4]	@ <variable>.u32VdhStatisticStartTimeInMs, <variable>.u32VdhStatisticStartTimeInMs
	movhi	lr, r3	@ prephitmp.1116, tmp196
	strhi	r3, [r7, #8]	@ tmp196, <variable>.u32VdhWorkTimeInMs
	rsb	fp, fp, r0	@ Period, <variable>.u32VdhStatisticStartTimeInMs, CurTime
	add	r0, lr, r0	@ tmp197, prephitmp.1116, CurTime
	rsb	r0, r2, r0	@ D.35834, prephitmp.1101, tmp197
	add	r2, ip, #1	@ tmp209, <variable>.u32PicNum,
	str	r0, [r7, #8]	@ D.35834, <variable>.u32VdhWorkTimeInMs
	cmp	fp, #1000	@ Period,
	str	r2, [r7, #32]	@ tmp209, <variable>.u32PicNum
	ldr	lr, [r9, #76]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	mov	r9, #0	@ tmp198,
	ldr	r3, [r7, #36]	@ <variable>.u32AccountVdhKiloCycle, <variable>.u32AccountVdhKiloCycle
	str	r9, [r7, #4]	@ tmp198, <variable>.u32VdhLastStartTimeInMs
	add	r3, r3, lr, lsr #10	@, D.35830, <variable>.u32AccountVdhKiloCycle, <variable>.DecCyclePerPic,
	str	r3, [r7, #36]	@ D.35830, <variable>.u32AccountVdhKiloCycle
	bcc	.L193	@,
	mov	ip, #1000	@ tmp213,
	mov	r1, fp	@, Period
	mul	r0, ip, r0	@, tmp213, D.35834
	str	r3, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	str	r9, [r8, sl, asl #4]	@ tmp198, <variable>.u32VdhStatisticStartTimeInMs
	str	r9, [r7, #32]	@ tmp198, <variable>.u32PicNum
	ldr	r2, [sp, #4]	@,
	str	fp, [r7, #44]	@ Period, <variable>.u32Period
	str	r9, [r7, #36]	@ tmp198, <variable>.u32AccountVdhKiloCycle
	str	r2, [r7, #40]	@ D.35830, <variable>.u32VdhKiloCyclePerSecond
	str	r0, [r7, #12]	@, <variable>.u32VdhLoad
.L193:
	add	r7, r6, r4	@ tmp223, tmp301, VdhId
	add	r3, r5, r7, asl #3	@, tmp235, tmp302, tmp223,
	ldr	r1, [r3, #1412]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	mov	r0, r3	@ tmp227, tmp235
	ldr	r7, [r3, #1384]	@ ChanId, <variable>.ChanId
	cmp	r1, #1	@ <variable>.ChanResetFlag,
	moveq	r0, #0	@ tmp246,
	streq	r0, [r3, #1412]	@ tmp246, <variable>.ChanResetFlag
	beq	.L197	@,
	ldr	r2, [r3, #1376]	@ D.36583, <variable>.VdmStateMachine
	cmp	r2, #0	@ D.36583,
	beq	.L198	@,
	ldr	r8, [r3, #1392]	@ <variable>.pDecParam, <variable>.pDecParam
	cmp	r8, #0	@ <variable>.pDecParam,
	beq	.L208	@,
.L198:
	mov	r0, r7	@, ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L209	@,
	mov	r0, r7	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L210	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L203:
	add	r4, r6, r4	@ tmp292, tmp301, VdhId
	add	r5, r5, r4, asl #3	@, tmp296, tmp302, tmp292,
	ldr	r0, [r5, #1384]	@, <variable>.ChanId
	bl	VCTRL_InformVdmFree	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_SpinUnLockIRQ	@
.L187:
	add	r4, r4, r4, asl #2	@, tmp162, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp158,
	movt	r1, #:upper16:.LANCHOR0	@ tmp158,
	mov	r2, #0	@ tmp166,
	add	r3, r1, r4, asl #3	@, tmp164, tmp158, tmp162,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	str	r2, [r3, #1376]	@ tmp166, <variable>.VdmStateMachine
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_SpinUnLockIRQ	@
.L209:
	movw	r1, #:lower16:.LC13	@,
	mov	r3, r7	@, ChanId
	movt	r1, #:upper16:.LC13	@,
	movw	r2, #1002	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L197:
	add	r1, r6, r4	@ tmp271, tmp301, VdhId
	mov	r3, #0	@ tmp279,
	add	r0, r5, r1, asl #3	@, tmp275, tmp302, tmp271,
	ldr	ip, [r0, #1384]	@ <variable>.ChanId, <variable>.ChanId
	add	r2, ip, #8	@ tmp277, <variable>.ChanId,
	str	r3, [r5, r2, asl #2]	@ tmp279, g_ChanCtx.ChanDecByVdhPlusOne
	str	r3, [r0, #1376]	@ tmp279, <variable>.VdmStateMachine
	b	.L203	@
.L207:
	bl	OSAL_GetTimeInMs	@
	add	r3, r5, #1440	@ tmp181, tmp302,
	add	sl, r3, #8	@ tmp181, tmp181,
	movw	r8, #:lower16:g_TraceFramePeriod	@ tmp186,
	movt	r8, #:upper16:g_TraceFramePeriod	@ tmp186,
	ldr	r1, [sl, r7, asl #2]	@ tmp185,
	ldr	r2, [r8, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r1, r0	@ tmp184, tmp185, CurTime
	cmp	ip, r2	@ tmp184, g_TraceFramePeriod
	strhi	r0, [sl, r7, asl #2]	@ CurTime,
	b	.L192	@
.L206:
	mov	r0, r3	@, D.35600
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1055	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L189	@
.L190:
	mov	r0, r3	@, D.35605
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1057	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L191	@
.L210:
	mov	r3, r7	@, ChanId
	movw	r1, #:lower16:.LC14	@,
	mov	r2, #1008	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L197	@
.L208:
	mov	r0, r8	@, <variable>.pDecParam
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L197	@,
	mov	r0, r7	@, ChanId
	mov	r2, r8	@, <variable>.pDecParam
	mov	r1, #100	@,
	bl	VCTRL_VdmPostProc	@
	b	.L197	@
	.fnend
	.size	VDMDRV_IsrProcess, .-VDMDRV_IsrProcess
	.align	2
	.global	VDMDRV_CheckDevice
	.type	VDMDRV_CheckDevice, %function
VDMDRV_CheckDevice:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r6, r0, asl #2	@ tmp322, VdhId,
	add	r7, r6, r0	@ tmp148, tmp322, VdhId
	movw	r4, #:lower16:.LANCHOR0	@ tmp321,
	movt	r4, #:upper16:.LANCHOR0	@ tmp321,
	mov	r5, r0	@ VdhId, VdhId
	add	r3, r4, r7, asl #3	@, tmp152, tmp321, tmp148,
	ldr	r0, [r3, #1384]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L226	@,
.L212:
	add	r8, r6, r5	@ tmp200, tmp322, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp196,
	movt	r7, #:upper16:.LANCHOR0	@ tmp196,
	add	sl, r4, r8, asl #3	@, tmp202, tmp321, tmp200,
	ldr	r3, [sl, #1376]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	bne	.L227	@,
.L213:
	add	r4, r6, r4	@ tmp312, tmp322, tmp321
	ldr	r7, [r4, #48]	@ D.35471, s_eVdmDrvSleepState
	cmp	r7, #0	@ D.35471,
	moveq	r0, r7	@ D.35470, D.35471
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #1	@ D.35471,
	moveq	r3, #2	@ tmp319,
	moveq	r0, r7	@ D.35470, D.35471
	streq	r3, [r4, #48]	@ tmp319, s_eVdmDrvSleepState
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L219:
	mov	r0, #1	@ D.35470,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L227:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sl, #1396]	@ D.35852, <variable>.StartTime
	cmp	r0, r1	@ D.35854, D.35852
	mov	r3, r0	@ D.35854,
	str	r0, [sl, #1400]	@ D.35854, <variable>.CurrTime
	strcc	r0, [sl, #1396]	@ D.35854, <variable>.StartTime
	movcc	r0, #1	@ D.35470,
	ldmccfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	subs	r2, r3, r1	@ TimeElapse, D.35854, D.35852
	bmi	.L216	@,
	cmp	r1, #0	@ D.35852,
	beq	.L216	@,
	cmp	r2, #500	@ TimeElapse,
	bls	.L219	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:g_event_report	@ tmp238,
	movt	r3, #:upper16:g_event_report	@ tmp238,
	ldr	r3, [r3, #0]	@ g_event_report.474, g_event_report
	cmp	r3, #0	@ g_event_report.474,
	beq	.L220	@,
	add	lr, r7, r8, asl #3	@, tmp246, tmp196, tmp200,
	mov	r1, #101	@,
	mov	r2, #0	@,
	ldr	r0, [lr, #1384]	@, <variable>.ChanId
	blx	r3	@ g_event_report.474
.L220:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp249,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp249,
	ldr	r3, [r0, #40]	@ D.35462, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35462,
	beq	.L221	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.35462
.L222:
	add	r6, r6, r5	@ tmp255, tmp322, VdhId
	mov	r7, #1	@ tmp259,
	movw	r3, #:lower16:.LANCHOR0	@ tmp251,
	movt	r3, #:upper16:.LANCHOR0	@ tmp251,
	add	r4, r4, r6, asl #3	@, tmp257, tmp321, tmp255,
	ldr	r1, [r4, #1412]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	str	r7, [r4, #1404]	@ tmp259, <variable>.VdmTimeOut
	cmp	r1, r7	@ <variable>.ChanResetFlag,
	bne	.L223	@,
	add	r6, r3, r6, asl #3	@, tmp304, tmp251, tmp255,
	mov	r2, #0	@ tmp277,
	mov	r0, r2	@ D.35470, tmp277
	str	r2, [r4, #1404]	@ tmp277, <variable>.VdmTimeOut
	ldr	lr, [r6, #1384]	@ <variable>.ChanId, <variable>.ChanId
	str	r2, [r4, #1412]	@ tmp277, <variable>.ChanResetFlag
	add	ip, lr, #8	@ tmp306, <variable>.ChanId,
	str	r2, [r4, #1376]	@ tmp277, <variable>.VdmStateMachine
	str	r2, [r3, ip, asl #2]	@ tmp277, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L226:
	add	r7, r4, r7, asl #3	@, tmp161, tmp321, tmp148,
	ldr	r3, [r7, #1376]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	beq	.L213	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	ldr	r3, [r0, #80]	@ D.35449, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.35449,
	beq	.L214	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.35449
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp173,
	strne	r3, [r7, #1412]	@ tmp173, <variable>.ChanResetFlag
	bne	.L212	@,
.L214:
	add	sl, r6, r5	@ tmp178, tmp322, VdhId
	mov	r7, #0	@ tmp182,
	mov	r0, r5	@, VdhId
	add	ip, r4, sl, asl #3	@, tmp180, tmp321, tmp178,
	add	r8, r4, sl, asl #3	@, tmp191, tmp321, tmp178,
	str	r7, [ip, #1412]	@ tmp182, <variable>.ChanResetFlag
	bl	VDMDRV_Reset	@
	ldr	r2, [r8, #1384]	@ <variable>.ChanId, <variable>.ChanId
	add	r1, r2, #8	@ tmp193, <variable>.ChanId,
	str	r7, [r4, r1, asl #2]	@ tmp182, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L212	@
.L216:
	add	r5, r6, r5	@ tmp225, tmp322, VdhId
	mov	r0, #1	@ D.35470,
	add	r4, r4, r5, asl #3	@, tmp227, tmp321, tmp225,
	str	r3, [r4, #1396]	@ D.35854, <variable>.StartTime
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L223:
	mov	r0, r5	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r7	@ D.35470, tmp259
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L221:
	mov	r0, r3	@, D.35462
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #823	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L222	@
	.fnend
	.size	VDMDRV_CheckDevice, .-VDMDRV_CheckDevice
	.align	2
	.global	VDMDRV_WakeUpVdm
	.type	VDMDRV_WakeUpVdm, %function
VDMDRV_WakeUpVdm:
	.fnstart
.LFB1628:
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
.LFB1603:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ VdhId, VdhId
	add	r4, sp, #4	@ tmp149,,
	movw	r5, #:lower16:.LANCHOR0	@ tmp135,
	movt	r5, #:upper16:.LANCHOR0	@ tmp135,
	add	r5, r5, r6, asl #2	@, tmp138, tmp135, VdhId,
	mov	r0, r4	@, tmp149
	bl	OSAL_LockIRQ	@
	ldr	r3, [r5, #48]	@ tmp140, s_eVdmDrvSleepState
	cmp	r3, #2	@ tmp140,
	beq	.L232	@,
	mov	r0, r6	@, VdhId
	bl	VDMDRV_Reset	@
	mov	r0, #2	@ tmp146,
	str	r0, [r5, #48]	@ tmp146, s_eVdmDrvSleepState
.L232:
	mov	r0, r4	@, tmp149
	bl	OSAL_UnLockIRQ	@
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VDMDRV_ForeceSleep, .-VDMDRV_ForeceSleep
	.align	2
	.global	VDMDRV_PrepareSleep
	.type	VDMDRV_PrepareSleep, %function
VDMDRV_PrepareSleep:
	.fnstart
.LFB1601:
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
	bne	.L236	@,
	add	r5, r2, r5	@ tmp147, tmp139, VdhId
	add	r3, r3, r5, asl #3	@, tmp149, tmp137, tmp147,
	ldr	r5, [r3, #1376]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r5, #0	@ <variable>.VdmStateMachine,
	movne	r5, r0	@ ret, tmp142
	moveq	r3, #2	@ tmp157,
	movne	r3, #1	@ tmp163,
	str	r3, [r1, #48]	@ tmp163, s_eVdmDrvSleepState
.L236:
	mov	r0, r4	@, tmp166
	bl	OSAL_UnLockIRQ	@
	mov	r0, r5	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	VDMDRV_PrepareSleep, .-VDMDRV_PrepareSleep
	.global	CapItem
	.global	USE_FF_APT_EN
	.global	g_HwMem
	.global	g_UpMsg
	.global	g_RepairParam
	.global	g_DecReport
	.global	g_BackUp
	.global	g_VdmDrvParam
	.global	g_ChanCtx
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.35134, %object
	.size	__func__.35134, 19
__func__.35134:
	.ascii	"VDMDRV_ChnDecReady\000"
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC1:
	.ascii	"VDMDRV_IsProtocolCopy point of picture para null, w"
	.ascii	"ait forever!!!\012\000"
	.space	1
.LC2:
	.ascii	"The channel %d DEC PARAM is not ready(pDecParam == "
	.ascii	"NULL)\012\000"
	.space	2
.LC3:
	.ascii	"The channel %d DEC PARAM is not ready\012\000"
	.space	1
.LC4:
	.ascii	"The channel %d is decoding\012\000"
.LC5:
	.ascii	"%s The channel %d is not active\012\000"
	.space	3
.LC6:
	.ascii	"VDM Start Fail 2 !\012\000"
.LC7:
	.ascii	"isr begin: *pVdmStateMachine = %d, timeout = %d, Er"
	.ascii	"rRatio = %d\012\000"
.LC8:
	.ascii	"ISR process vdm timeout!\012\000"
	.space	2
.LC9:
	.ascii	"*pErrRatio = %d\012\000"
	.space	3
.LC10:
	.ascii	"Chan %d VdmStateMachine=%d Error!\012\000"
	.space	1
.LC11:
	.ascii	"line: %d\012\000"
	.space	2
.LC12:
	.ascii	"vdm state machine = %d, but DecParam is null!\012\000"
	.space	1
.LC13:
	.ascii	"line :%d ISR called but chan %d is not active!\012\000"
.LC14:
	.ascii	"line :%d ISR called chan %d is active! But Dec Para"
	.ascii	"m in CTX is NULL!!!\012\000"
.LC15:
	.ascii	"Vdm Time Out(%d ms), Reset Vdm!\012\000"
	.space	3
.LC16:
	.ascii	"====== forece VDM sleep! ======\012\000"
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
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	g_RepairParam, %object
	.size	g_RepairParam, 1144
g_RepairParam:
	.space	1144
	.type	g_VdmDrvParam, %object
	.size	g_VdmDrvParam, 40
g_VdmDrvParam:
	.space	40
	.type	last_rec_pos_time.35180, %object
	.size	last_rec_pos_time.35180, 16
last_rec_pos_time.35180:
	.space	16
	.type	last_rec_pos_time.35336, %object
	.size	last_rec_pos_time.35336, 16
last_rec_pos_time.35336:
	.space	16
	.type	last_rec_pos_time.35591, %object
	.size	last_rec_pos_time.35591, 16
last_rec_pos_time.35591:
	.space	16
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
