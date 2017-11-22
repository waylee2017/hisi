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
	.file	"mpeg4.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(mpeg4)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg4.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.o
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
	.global	log2bin
	.type	log2bin, %function
log2bin:
	.fnstart
.LFB1597:
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
	sxth	r0, r3	@ prephitmp.650, n
	bx	lr	@
	.fnend
	.size	log2bin, .-log2bin
	.global	__aeabi_idiv
	.align	2
	.global	MP4_GetGMCparam
	.type	MP4_GetGMCparam, %function
MP4_GetGMCparam:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r4, [r0, #65]	@ zero_extendqisi2	@ D.34527, <variable>.syn_vol.sprite_warping_accuracy
	mov	r9, #2	@ tmp205,
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r3, r9, asl r4	@, tmp205,
	mov	fp, r0	@ p_syntax_des, p_syntax_des
	mov	r6, r1	@ p_gmc, p_gmc
	mov	r0, #16	@,
	mov	r1, r3	@,
	str	r3, [sp, #24]	@, %sfp
	rsb	r4, r4, #3	@, D.34527,
	str	r4, [sp, #48]	@, %sfp
	bl	__aeabi_idiv	@
	ldr	sl, [fp, #708]	@ D.34529, <variable>.image_width
	ldr	r9, [fp, #704]	@ D.34531, <variable>.image_height
	cmp	sl, #1	@ D.34529,
	mov	r8, sl, asl #4	@ tmp209, D.34529,
	str	r8, [r6, #8]	@ tmp209, <variable>.sW
	ldr	r5, [fp, #704]	@ <variable>.image_height, <variable>.image_height
	movle	r7, #1	@ w2,
	movle	r4, #0	@ alpha,
	mov	r1, r5, asl #4	@ tmp211, <variable>.image_height,
	str	r1, [r6, #12]	@ tmp211, <variable>.sH
	ldrb	r2, [fp, #65]	@ zero_extendqisi2	@ <variable>.syn_vol.sprite_warping_accuracy, <variable>.syn_vol.sprite_warping_accuracy
	str	r2, [r6, #4]	@ <variable>.syn_vol.sprite_warping_accuracy, <variable>.accuracy
	mov	r3, r0	@ r,
	ldrb	r0, [fp, #64]	@ zero_extendqisi2	@, <variable>.syn_vol.sprite_warping_points
	str	r0, [sp, #32]	@, %sfp
	str	r0, [r6, #0]	@, <variable>.num_wp
	ldr	r1, [fp, #692]	@, <variable>.y
	ldr	r2, [fp, #680]	@ sprite_ref$0$0.724, <variable>.x
	ldr	ip, [fp, #684]	@ sprite_ref$0$1, <variable>.y
	ldr	r0, [fp, #688]	@ D.34541, <variable>.x
	str	r1, [sp, #16]	@, %sfp
	ldr	r5, [fp, #696]	@, <variable>.x
	str	r5, [sp, #20]	@, %sfp
	ldr	lr, [fp, #700]	@ D.34544, <variable>.y
	ble	.L10	@,
	mov	r4, #0	@ alpha,
	mov	r1, #1	@ tmp366,
.L11:
	add	r4, r4, #1	@ alpha, alpha,
	mov	r7, r1, asl r4	@ w2, tmp366,
	cmp	sl, r7	@ D.34529, w2
	bgt	.L11	@,
.L10:
	cmp	r9, #1	@ D.34531,
	movgt	r5, #0	@ beta,
	movgt	r1, #1	@ tmp365,
	ble	.L44	@,
.L14:
	add	r5, r5, #1	@ beta, beta,
	mov	r8, r1, asl r5	@ h2, tmp365,
	cmp	r9, r8	@ D.34531, h2
	bgt	.L14	@,
	mov	r1, r8, asl #4	@, h2,
	str	r1, [sp, #52]	@, %sfp
.L13:
	ldrb	r1, [fp, #12]	@ zero_extendqisi2	@ <variable>.FF_BUG_DIVX500B413, <variable>.FF_BUG_DIVX500B413
	cmp	r1, #1	@ <variable>.FF_BUG_DIVX500B413,
	beq	.L45	@,
	ldr	fp, [sp, #16]	@, %sfp
	add	r0, r0, r2	@ tmp220, D.34541, sprite_ref$0$0.724
	add	lr, lr, ip	@ tmp225, D.34544, sprite_ref$0$1
	add	r0, r0, sl, asl #1	@, tmp222, tmp220, D.34529,
	add	r1, fp, ip	@,, sprite_ref$0$1
	ldr	fp, [sp, #20]	@, %sfp
	str	r1, [sp, #16]	@, %sfp
	add	lr, lr, r9, asl #1	@, tmp227, tmp225, D.34531,
	add	r1, fp, r2	@,, sprite_ref$0$0.724
	ldr	fp, [sp, #24]	@, %sfp
	str	r1, [sp, #20]	@, %sfp
	mov	r1, fp, asr #1	@ D.34580,,
	ldr	fp, [sp, #16]	@, %sfp
	mul	lr, r1, lr	@, D.34580, tmp227
	mul	fp, fp, r1	@,, D.34580
	mul	ip, ip, r1	@ sprite_ref$0$1, sprite_ref$0$1, D.34580
	mul	r0, r1, r0	@ sprite_ref$1$0, D.34580, tmp222
	str	lr, [sp, #44]	@, %sfp
	str	fp, [sp, #36]	@, %sfp
	ldr	fp, [sp, #20]	@, %sfp
	mul	r2, r2, r1	@ sprite_ref$0$0.724, sprite_ref$0$0.724, D.34580
	mul	fp, fp, r1	@,, D.34580
	str	fp, [sp, #40]	@, %sfp
.L16:
	rsb	r1, sl, sl, asl #28	@, tmp231, D.34529, D.34529,
	rsb	fp, r7, sl	@ D.34606, w2, D.34529
	mul	lr, r3, r2	@, r, sprite_ref$0$0.724
	mov	r1, r1, asl #4	@ tmp232, tmp231,
	str	r2, [sp, #12]	@,
	mla	r0, r3, r0, r1	@ tmp233, r, sprite_ref$1$0, tmp232
	stmib	sp, {r3, ip}	@ phole stm
	mul	r1, fp, lr	@ tmp235, D.34606,
	str	lr, [sp, #16]	@, %sfp
	mla	r0, r7, r0, r1	@ D.34617, w2, tmp233, tmp235
	cmp	r0, #0	@ D.34617,
	movgt	r1, sl, asr #1	@, D.34529,
	movle	lr, sl, asr #1	@, D.34529,
	strgt	r1, [sp, #28]	@, %sfp
	addgt	r0, r0, r1	@ iftmp.431, D.34617,
	rsble	r0, lr, r0	@ iftmp.431,, D.34617
	mov	r1, sl	@, D.34529
	strle	lr, [sp, #28]	@, %sfp
	bl	__aeabi_idiv	@
	ldmib	sp, {r3, ip}	@ phole ldm
	ldr	lr, [sp, #36]	@, %sfp
	mul	r1, r3, r7	@ tmp242, r, w2
	str	r3, [sp, #4]	@,
	mul	r2, r3, ip	@, r, sprite_ref$0$1
	str	ip, [sp, #8]	@,
	str	r2, [sp, #20]	@, %sfp
	mul	r2, lr, r1	@ tmp243,, tmp242
	ldr	lr, [sp, #20]	@, %sfp
	mla	r1, fp, lr, r2	@ D.34636, D.34606,, tmp243
	ldr	r2, [sp, #12]	@,
	cmp	r1, #0	@ D.34636,
	str	r2, [sp, #12]	@,
	ldrgt	fp, [sp, #28]	@, %sfp
	ldrle	lr, [sp, #28]	@, %sfp
	add	r0, r0, r7, asl #4	@,,, w2,
	str	r0, [sp, #36]	@, %sfp
	addgt	r0, fp, r1	@ iftmp.432,, D.34636
	rsble	r0, lr, r1	@ iftmp.432,, D.34636
	mov	r1, sl	@, D.34529
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@,
	ldr	sl, [sp, #40]	@, %sfp
	rsb	r1, r8, r9	@ D.34644, h2, D.34531
	ldr	r2, [sp, #16]	@, %sfp
	mul	fp, r3, r8	@ tmp248, r, h2
	mul	ip, sl, fp	@ tmp249,, tmp248
	ldr	fp, [sp, #20]	@, %sfp
	mov	sl, r9, asr #1	@ prephitmp.714, D.34531,
	str	r0, [sp, #28]	@, %sfp
	mla	r0, r1, r2, ip	@ D.34651, D.34644,, tmp249
	ldr	r2, [sp, #12]	@,
	mul	r1, r1, fp	@ tmp257, D.34644,
	ldr	fp, [sp, #44]	@, %sfp
	cmp	r0, #0	@ D.34651,
	ldr	ip, [sp, #8]	@,
	addgt	r0, r0, sl	@, D.34651, prephitmp.714
	rsble	r0, sl, r0	@, prephitmp.714, D.34651
	str	r0, [sp, #16]	@, %sfp
	rsb	r0, r9, r9, asl #28	@, tmp253, D.34531, D.34531,
	mov	r0, r0, asl #4	@ tmp254, tmp253,
	mla	r0, r3, fp, r0	@ tmp255, r,, tmp254
	mla	r1, r8, r0, r1	@ D.34667, h2, tmp255, tmp257
	cmp	r1, #0	@ D.34667,
	addgt	fp, sl, r1	@ iftmp.434, prephitmp.714, D.34667
	rsble	fp, sl, r1	@ iftmp.434, prephitmp.714, D.34667
	ldr	sl, [sp, #32]	@, %sfp
	mov	r0, sl	@ D.34538,
	mov	r1, r0, asr #31	@ D.34538
	cmp	r1, #0	@ D.34538,
	cmpeq	r0, #3	@ D.34538,
	bls	.L46	@,
.L25:
	ldr	r5, [r6, #16]	@ prephitmp.693, <variable>.dU
	mov	r4, #0	@ shift$0,
	ldr	sl, [r6, #32]	@ sprite_ref$0$0.713, <variable>.Uo
	mov	r2, r4	@ shift$1, shift$0
.L31:
	ldr	r3, [sp, #24]	@, %sfp
	mov	ip, r3, asl r4	@ a.715,,
	cmp	r5, ip	@ prephitmp.693, a.715
	beq	.L35	@,
	ldr	r3, [r6, #20]	@ <variable>.dU, <variable>.dU
	ldr	r1, [r6, #24]	@ <variable>.dV, <variable>.dV
	ldr	r0, [r6, #28]	@ <variable>.dV, <variable>.dV
.L33:
	rsb	r4, r4, #16	@ shift_y, shift$0,
	ldr	r7, [r6, #36]	@ <variable>.Vo, <variable>.Vo
	mov	r8, r0, asl r4	@ tmp361, <variable>.dV,
	ldr	r5, [r6, #40]	@ <variable>.Uco, <variable>.Uco
	ldr	ip, [r6, #44]	@ <variable>.Vco, <variable>.Vco
	rsb	r2, r2, #16	@ shift_c, shift$1,
	ldr	r0, [r6, #16]	@ <variable>.dU, <variable>.dU
	mov	sl, sl, asl r4	@ tmp347, sprite_ref$0$0.713,
	mov	r7, r7, asl r4	@ tmp349, <variable>.Vo,
	str	r8, [r6, #28]	@ tmp361, <variable>.dV
	mov	ip, ip, asl r2	@ tmp353, <variable>.Vco,
	str	sl, [r6, #32]	@ tmp347, <variable>.Uo
	mov	r2, r5, asl r2	@ tmp351, <variable>.Uco,
	mov	r0, r0, asl r4	@ tmp355, <variable>.dU,
	str	r2, [r6, #40]	@ tmp351, <variable>.Uco
	mov	r2, r3, asl r4	@ tmp357, <variable>.dU,
	str	r7, [r6, #36]	@ tmp349, <variable>.Vo
	mov	r4, r1, asl r4	@ tmp359, <variable>.dV,
	str	ip, [r6, #44]	@ tmp353, <variable>.Vco
	str	r0, [r6, #16]	@ tmp355, <variable>.dU
	str	r2, [r6, #20]	@ tmp357, <variable>.dU
	str	r4, [r6, #24]	@ tmp359, <variable>.dV
.L36:
	add	sp, sp, #60	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L46:
	cmp	r0, #3	@ D.34538,
	ldrls	pc, [pc, r0, asl #2]	@ D.34538
	b	.L25	@
.L30:
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
.L29:
	ldr	lr, [sp, #48]	@, %sfp
	rsb	sl, r3, #0	@, r
	str	sl, [sp, #32]	@, %sfp
	add	r1, r4, lr	@ tmp297, alpha,
	mov	lr, #1	@,
	add	r0, r1, r5	@ tmp298, tmp297, beta
	cmp	r5, r4	@ beta, alpha
	movge	r5, r4	@ min_ab, alpha
	mul	r4, sl, r2	@,, sprite_ref$0$0.724
	mov	r8, r8, asr r5	@ h3, h2,
	str	r4, [sp, #20]	@, %sfp
	rsb	r4, r5, r0	@ shift$0, min_ab, tmp298
	ldr	r1, [sp, #20]	@, %sfp
	sub	sl, r4, #1	@ tmp299, shift$0,
	ldr	r0, [sp, #36]	@, %sfp
	mov	sl, lr, asl sl	@ D.34749,,
	mov	r5, r7, asr r5	@, w2,
	add	lr, r0, r1	@ tmp303,,
	add	r0, sl, ip, asl r4	@, tmp302, D.34749, sprite_ref$0$1,
	str	r0, [r6, #36]	@ tmp302, <variable>.Vo
	add	sl, sl, r2, asl r4	@, sprite_ref$0$0.713, D.34749, sprite_ref$0$0.724,
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r9	@, D.34531
	str	sl, [r6, #32]	@ sprite_ref$0$0.713, <variable>.Uo
	str	r5, [sp, #16]	@, %sfp
	str	r2, [sp, #12]	@,
	mul	r5, r8, lr	@ prephitmp.693, h3, tmp303
	stmib	sp, {r3, ip}	@ phole stm
	bl	__aeabi_idiv	@
	ldr	r2, [sp, #4]	@,
	rsb	ip, r7, r7, asl #28	@, tmp316, w2, w2,
	ldr	r1, [sp, #32]	@, %sfp
	add	lr, r4, #1	@, shift$0,
	str	lr, [sp, #36]	@, %sfp
	mov	r3, r2, asl #1	@ tmp309, r,
	mov	r2, ip, asl #4	@ tmp317, tmp316,
	ldr	ip, [sp, #8]	@,
	mul	r7, r7, r3	@ tmp310, w2, tmp309
	mul	r3, r1, ip	@ temp.720,, sprite_ref$0$1
	mov	r1, r9	@, D.34531
	mul	r9, r8, r2	@ tmp318, h3, tmp317
	ldr	r2, [sp, #28]	@, %sfp
	mul	lr, r8, r7	@, h3, tmp310
	add	r7, r2, r3	@,, temp.720
	ldr	r2, [sp, #36]	@, %sfp
	str	r7, [sp, #28]	@, %sfp
	ldr	r7, [sp, #52]	@, %sfp
	str	lr, [sp, #32]	@, %sfp
	mov	lr, #1	@,
	add	r9, r9, lr, asl r2	@, D.34766, tmp318,,
	add	r3, r3, r7	@ tmp324, temp.720,
	ldr	r2, [sp, #28]	@, %sfp
	ldr	r7, [sp, #12]	@,
	ldr	lr, [sp, #32]	@, %sfp
	mul	r8, r8, r2	@ D.34776, h3,
	mla	r2, lr, r7, r9	@ tmp320,, sprite_ref$0$0.724, D.34766
	ldr	lr, [sp, #20]	@, %sfp
	add	r2, r2, r5	@ tmp321, tmp320, prephitmp.693
	add	r7, r0, lr	@ tmp308,,
	mov	r0, fp	@, iftmp.434
	ldr	fp, [sp, #16]	@, %sfp
	mul	r7, fp, r7	@ D.34764,, tmp308
	add	lr, r2, r7	@ tmp322, tmp321, D.34764
	str	lr, [r6, #40]	@ tmp322, <variable>.Uco
	stmib	sp, {r3, ip}	@ phole stm
	bl	__aeabi_idiv	@
	ldr	r2, [sp, #8]	@,
	ldr	r1, [sp, #32]	@, %sfp
	str	r7, [r6, #20]	@ D.34764, <variable>.dU
	str	r8, [r6, #24]	@ D.34776, <variable>.dV
	str	r5, [r6, #16]	@ prephitmp.693, <variable>.dU
	ldr	r3, [sp, #4]	@,
	mla	ip, r1, r2, r9	@ tmp331,, sprite_ref$0$1, D.34766
	add	r2, r4, #2	@ shift$1, shift$0,
	add	r1, ip, r8	@ tmp332, tmp331, D.34776
	add	r3, r3, r0	@ tmp329, tmp324,
	mul	r3, fp, r3	@ D.34779,, tmp329
	add	ip, r1, r3	@ tmp333, tmp332, D.34779
	str	ip, [r6, #44]	@ tmp333, <variable>.Vco
	str	r3, [r6, #28]	@ D.34779, <variable>.dV
	b	.L31	@
.L28:
	ldr	fp, [sp, #48]	@, %sfp
	mov	r8, r3, asl #1	@ tmp280, r,
	rsb	r0, r7, r7, asl #28	@, tmp286, w2, w2,
	mov	r9, #1	@ tmp276,
	add	r4, r4, fp	@ shift$0, alpha,
	rsb	fp, r3, #0	@ D.34707, r
	mul	r7, r7, r8	@ D.34719, w2, tmp280
	add	sl, r4, r9	@ tmp281, shift$0,
	mov	r1, r0, asl #4	@ tmp287, tmp286,
	sub	r5, r4, #1	@ tmp275, shift$0,
	ldr	r8, [sp, #28]	@, %sfp
	add	r0, r1, r9, asl sl	@, D.34716, tmp287, tmp276,
	mov	sl, r9, asl r5	@ D.34698, tmp276,
	ldr	r9, [sp, #36]	@, %sfp
	mla	r1, fp, ip, r8	@ D.34727, D.34707, sprite_ref$0$1,
	mla	r5, fp, r2, r9	@ prephitmp.693, D.34707, sprite_ref$0$0.724,
	ldr	fp, [sp, #20]	@, %sfp
	rsb	r3, r8, fp	@ D.34702,,
	str	r3, [r6, #20]	@ D.34702, <variable>.dU
	mla	r8, r7, ip, r0	@ tmp294, D.34719, sprite_ref$0$1, D.34716
	str	r1, [r6, #24]	@ D.34727, <variable>.dV
	mla	r0, r7, r2, r0	@ tmp289, D.34719, sprite_ref$0$0.724, D.34716
	add	ip, sl, ip, asl r4	@, tmp278, D.34698, sprite_ref$0$1,
	add	r8, r8, r5	@ tmp295, tmp294, prephitmp.693
	add	sl, sl, r2, asl r4	@, sprite_ref$0$0.713, D.34698, sprite_ref$0$0.724,
	str	ip, [r6, #36]	@ tmp278, <variable>.Vo
	add	r1, r8, r1	@ tmp296, tmp295, D.34727
	add	r0, r0, r5	@ tmp290, tmp289, prephitmp.693
	str	r1, [r6, #44]	@ tmp296, <variable>.Vco
	add	ip, r0, r3	@ tmp291, tmp290, D.34702
	str	r5, [r6, #16]	@ prephitmp.693, <variable>.dU
	str	ip, [r6, #40]	@ tmp291, <variable>.Uco
	add	r2, r4, #2	@ shift$1, shift$0,
	str	r5, [r6, #28]	@ prephitmp.693, <variable>.dV
	str	sl, [r6, #32]	@ sprite_ref$0$0.713, <variable>.Uo
	b	.L31	@
.L27:
	and	r3, r2, #1	@ tmp267, sprite_ref$0$0.724,
	and	r1, ip, #1	@ tmp270, sprite_ref$0$1,
	orr	r0, r1, ip, asr #1	@, tmp272, tmp270, sprite_ref$0$1,
	mov	r4, #0	@ tmp273,
	str	r0, [r6, #44]	@ tmp272, <variable>.Vco
	orr	sl, r3, r2, asr #1	@, tmp269, tmp267, sprite_ref$0$0.724,
	str	r2, [r6, #32]	@ sprite_ref$0$0.724, <variable>.Uo
	str	sl, [r6, #40]	@ tmp269, <variable>.Uco
	str	r4, [r6, #24]	@ tmp273, <variable>.dV
	str	ip, [r6, #36]	@ sprite_ref$0$1, <variable>.Vo
	ldr	r0, [sp, #24]	@, %sfp
	str	r4, [r6, #20]	@ tmp273, <variable>.dU
	str	r0, [r6, #16]	@, <variable>.dU
	str	r0, [r6, #28]	@, <variable>.dV
.L32:
	ldr	ip, [sp, #24]	@ a.715, %sfp
	mov	r4, #0	@ shift$0,
	mov	sl, r2	@ sprite_ref$0$0.713, sprite_ref$0$0.724
	mov	r2, r4	@ shift$1, shift$0
.L35:
	ldr	r3, [r6, #20]	@ <variable>.dU, <variable>.dU
	cmp	r3, #0	@ <variable>.dU,
	bne	.L47	@,
	ldr	r1, [r6, #24]	@ <variable>.dV, <variable>.dV
	cmp	r1, #0	@ <variable>.dV,
	ldrne	r0, [r6, #28]	@ <variable>.dV, <variable>.dV
	bne	.L33	@,
	ldr	r0, [r6, #28]	@ <variable>.dV, <variable>.dV
	cmp	ip, r0	@ a.715, <variable>.dV
	bne	.L33	@,
	ldr	ip, [r6, #36]	@ <variable>.Vo, <variable>.Vo
	mov	sl, sl, asr r4	@ tmp337, sprite_ref$0$0.713,
	ldr	r3, [r6, #40]	@ <variable>.Uco, <variable>.Uco
	mov	r5, #1	@ tmp346,
	ldr	r0, [r6, #44]	@ <variable>.Vco, <variable>.Vco
	str	r5, [r6, #0]	@ tmp346, <variable>.num_wp
	mov	r4, ip, asr r4	@ tmp339, <variable>.Vo,
	mov	r5, r3, asr r2	@ tmp341, <variable>.Uco,
	str	sl, [r6, #32]	@ tmp337, <variable>.Uo
	mov	ip, r0, asr r2	@ tmp343, <variable>.Vco,
	str	r4, [r6, #36]	@ tmp339, <variable>.Vo
	str	r5, [r6, #40]	@ tmp341, <variable>.Uco
	str	ip, [r6, #44]	@ tmp343, <variable>.Vco
	str	r1, [r6, #24]	@ <variable>.dV, <variable>.dV
	ldr	r5, [sp, #24]	@, %sfp
	str	r1, [r6, #20]	@ <variable>.dV, <variable>.dU
	str	r5, [r6, #28]	@, <variable>.dV
	str	r5, [r6, #16]	@, <variable>.dU
	b	.L36	@
.L26:
	ldr	fp, [sp, #24]	@, %sfp
	mov	r5, #0	@ tmp261,
	mov	r2, r5	@ sprite_ref$0$0.724, tmp261
	str	r5, [r6, #32]	@ tmp261, <variable>.Uo
	str	r5, [r6, #36]	@ tmp261, <variable>.Vo
	str	fp, [r6, #16]	@, <variable>.dU
	str	r5, [r6, #40]	@ tmp261, <variable>.Uco
	str	r5, [r6, #44]	@ tmp261, <variable>.Vco
	str	r5, [r6, #20]	@ tmp261, <variable>.dU
	str	r5, [r6, #24]	@ tmp261, <variable>.dV
	str	fp, [r6, #28]	@, <variable>.dV
	b	.L32	@
.L45:
	ldr	fp, [sp, #16]	@, %sfp
	add	lr, lr, ip	@ tmp218, D.34544, sprite_ref$0$1
	add	r0, r0, r2	@ tmp216, D.34541, sprite_ref$0$0.724
	add	r1, fp, ip	@,, sprite_ref$0$1
	ldr	fp, [sp, #20]	@, %sfp
	str	r1, [sp, #36]	@, %sfp
	add	r1, fp, r2	@,, sprite_ref$0$0.724
	ldr	fp, [sp, #24]	@, %sfp
	str	r1, [sp, #40]	@, %sfp
	mla	lr, r9, fp, lr	@, D.34531,, tmp218
	mla	r0, sl, fp, r0	@ sprite_ref$1$0, D.34529,, tmp216
	str	lr, [sp, #44]	@, %sfp
	b	.L16	@
.L47:
	ldr	r1, [r6, #24]	@ <variable>.dV, <variable>.dV
	ldr	r0, [r6, #28]	@ <variable>.dV, <variable>.dV
	b	.L33	@
.L44:
	mov	r1, #16	@,
	mov	r8, #1	@ h2,
	str	r1, [sp, #52]	@, %sfp
	mov	r5, #0	@ beta,
	b	.L13	@
	.fnend
	.size	MP4_GetGMCparam, .-MP4_GetGMCparam
	.align	2
	.global	Mp4_RecordVFMWState
	.type	Mp4_RecordVFMWState, %function
Mp4_RecordVFMWState:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	Mp4_RecordVFMWState, .-Mp4_RecordVFMWState
	.align	2
	.global	Mp4_Get_DecMode
	.type	Mp4_Get_DecMode, %function
Mp4_Get_DecMode:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #22092	@ tmp135,
	ldr	r3, [r0, r1]	@ <variable>.DecMode, <variable>.DecMode
	cmp	r3, #2	@ <variable>.DecMode,
	beq	.L59	@,
	movw	r3, #22060	@ tmp143,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #8]	@ temp.778, <variable>.s32DecMode
	cmp	r3, #2	@ temp.778,
	beq	.L52	@,
.L53:
	cmp	r3, #1	@ temp.778,
	beq	.L58	@,
	cmp	r3, #4	@ temp.778,
	movwne	r3, #22092	@ tmp150,
	movne	r2, #0	@ tmp151,
	strne	r2, [r0, r3]	@ tmp151, <variable>.DecMode
	bxne	lr	@
.L58:
	movw	ip, #22092	@ tmp148,
	str	r3, [r0, ip]	@ temp.778, <variable>.DecMode
	bx	lr	@
.L59:
	movw	r3, #22060	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r2, #2	@ <variable>.s32DecMode,
	beq	.L52	@,
	movw	r3, #22060	@ tmp143,
	movw	r1, #22600	@ tmp140,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #1	@ tmp141,
	str	r2, [r0, r1]	@ tmp141, <variable>.IPVopErr
	ldr	r3, [ip, #8]	@ temp.778, <variable>.s32DecMode
	cmp	r3, #2	@ temp.778,
	bne	.L53	@,
.L52:
	movw	r1, #22092	@ tmp144,
	mov	r2, #2	@ tmp145,
	str	r2, [r0, r1]	@ tmp145, <variable>.DecMode
	bx	lr	@
	.fnend
	.size	Mp4_Get_DecMode, .-Mp4_Get_DecMode
	.align	2
	.global	MP4_GetPacketState
	.type	MP4_GetPacketState, %function
MP4_GetPacketState:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #19972	@ tmp136,
	ldr	r3, [r0, r1]	@ <variable>.IsWaitToDecFlag, <variable>.IsWaitToDecFlag
	cmp	r3, #1	@ <variable>.IsWaitToDecFlag,
	mvnne	r0, #0	@,,
	moveq	r0, #3	@,,
	bx	lr	@
	.fnend
	.size	MP4_GetPacketState, .-MP4_GetPacketState
	.align	2
	.global	MP4_Check_StreamType
	.type	MP4_Check_StreamType, %function
MP4_Check_StreamType:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #15864	@ tmp136,
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ tmp138,
	tst	r2, #1	@ tmp138,
	bne	.L65	@,
	movw	ip, #21277	@ tmp142,
	mov	r4, #2	@ tmp143,
	strb	r4, [r0, ip]	@ tmp143, <variable>.MP4Syntax.is_short_header
	ldr	r1, [r1, #0]	@ tmp146,* StartCode
	mov	ip, r1, lsr #8	@ tmp145, tmp146,
	sub	r1, ip, #128	@ tmp147, tmp145,
	cmp	r1, #3	@ tmp147,
	orrls	r2, r2, r4	@ tmp151, tmp138,
	strlsb	r2, [r0, r3]	@ tmp151,
.L66:
	mov	r0, #0	@,
	ldmfd	sp!, {r4}
	bx	lr
.L65:
	movw	r3, #21277	@ tmp154,
	mov	ip, #196	@ tmp153,
	mov	r2, #1	@ tmp155,
	str	ip, [r1, #0]	@ tmp153,* StartCode
	strb	r2, [r0, r3]	@ tmp155,
	b	.L66	@
	.fnend
	.size	MP4_Check_StreamType, .-MP4_Check_StreamType
	.align	2
	.global	Mp4_Combine_SliceData
	.type	Mp4_Combine_SliceData, %function
Mp4_Combine_SliceData:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #19968	@ tmp144,
	mov	r3, r0	@ pCtx, pCtx
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r0, [r0, ip]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	movw	r2, #15612	@ tmp143,
	tst	r0, #2	@ <variable>.PicIntegrality,
	ldr	r2, [r3, r2]	@ SlcNum, <variable>.Mp4DecParam.SlcNum
	beq	.L69	@,
	movw	r0, #15709	@ tmp147,
	ldrb	r0, [r3, r0]	@ zero_extendqisi2	@ D.37371, <variable>.IsLastSeg
	cmp	r0, #1	@ D.37371,
	beq	.L80	@,
	cmp	r0, #0	@ D.37371,
	bne	.L77	@,
	movw	ip, #15789	@ tmp221,
	ldrb	r0, [r3, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L81	@,
.L77:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4666	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37378,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L80:
	sub	ip, r2, #1	@ tmp148, SlcNum,
	movw	r4, #510	@ tmp149,
	cmp	ip, r4	@ tmp148, tmp149
	bhi	.L82	@,
	mov	r4, ip, asl #3	@ tmp278, tmp148,
	rsb	r5, ip, r4	@ tmp154, tmp148, tmp278
	add	r5, r3, r5, asl #2	@, tmp156, pCtx, tmp154,
	add	r6, r5, #1280	@ tmp157, tmp156,
	add	r2, r6, #4	@ tmp157, tmp157,
	ldr	r6, [r2, #4]	@ D.37385, <variable>.bit_len
	cmp	r6, #0	@ D.37385,
	beq	.L73	@,
	ldr	r5, [r5, #1296]	@ D.37387, <variable>.phy_address
	cmp	r5, #0	@ D.37387,
	beq	.L73	@,
	movw	ip, #15712	@ tmp209,
	ldr	r3, [r3, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r5, r3	@ D.37387, <variable>.PhyAddr
	addls	r1, r6, r1, asl #3	@, tmp220, D.37385, CodeLen,
	strls	r1, [r2, #4]	@ tmp220, <variable>.bit_len
	movls	r0, #0	@ D.37378,
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #4642	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37378,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L73:
	rsb	r0, ip, r4	@ tmp169, tmp148, tmp278
	movw	r2, #15712	@ tmp165,
	ldr	r5, [r3, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	ip, r3, r0, asl #2	@, tmp171, pCtx, tmp169,
	ldr	r0, [ip, #1292]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r5, r0	@ <variable>.PhyAddr, <variable>.phy_address
	movls	r1, r1, asl #3	@ tmp199, CodeLen,
	strls	r1, [ip, #1288]	@ tmp199, <variable>.bit_len
	ldrls	r3, [r3, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movhi	r0, #0	@ D.37378,
	ldrhi	r3, [ip, #1284]	@ <variable>.bit_len, <variable>.bit_len
	movls	r0, #0	@ D.37378,
	addhi	r1, r3, r1, asl #3	@, tmp191, <variable>.bit_len, CodeLen,
	strls	r3, [ip, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	strhi	r1, [ip, #1284]	@ tmp191, <variable>.bit_len
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L81:
	sub	r0, r2, #1	@ temp.854, SlcNum,
	rsb	r2, r0, r0, asl #3	@, tmp226, temp.854, temp.854,
	add	r2, r3, r2, asl #2	@, tmp228, pCtx, tmp226,
	add	ip, r2, #1280	@ tmp229, tmp228,
	add	ip, ip, #4	@ tmp229, tmp229,
	ldr	r0, [ip, #4]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	beq	.L83	@,
.L78:
	mvn	r0, #0	@ D.37378,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L69:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #4672	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37378,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L83:
	add	r4, r2, #1280	@ tmp237, tmp228,
	add	r4, r4, #12	@ tmp237, tmp237,
	ldr	r0, [r4, #4]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r0, #0	@ <variable>.phy_address,
	bne	.L78	@,
	ldr	r5, [r2, #1284]	@ <variable>.bit_len, <variable>.bit_len
	add	r1, r5, r1, asl #3	@, tmp255, <variable>.bit_len, CodeLen,
	str	r1, [r2, #1284]	@ tmp255, <variable>.bit_len
	movw	r2, #15792	@ tmp263,
	ldr	r1, [r3, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r2, #15796	@ tmp272,
	str	r1, [r4, #4]	@ <variable>.PhyAddr, <variable>.phy_address
	ldr	r3, [r3, r2]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, r3, asl #3	@ tmp274, <variable>.LenInByte,
	str	r1, [ip, #4]	@ tmp274, <variable>.bit_len
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L82:
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37378,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Mp4_Combine_SliceData, .-Mp4_Combine_SliceData
	.align	2
	.global	Mp4_Check_Slice_NotSH
	.type	Mp4_Check_Slice_NotSH, %function
Mp4_Check_Slice_NotSH:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #20019	@ tmp140,
	movw	r2, #21208	@ tmp139,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vol.resync_marker_disable, <variable>.MP4Vol.resync_marker_disable
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.37343, <variable>.MP4Vop.vop_coding_type
	cmp	r3, #0	@ <variable>.MP4Vol.resync_marker_disable,
	bne	.L85	@,
	movw	r3, #15864	@ tmp142,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ tmp144,
	tst	ip, #120	@ tmp144,
	bne	.L85	@,
	ldrh	r3, [r0, r3]	@ tmp150,
	ubfx	r3, r3, #7, #4	@ D.37351, tmp150,,
	cmp	r2, #3	@ D.37343,
	ldrls	pc, [pc, r2, asl #2]	@ D.37343
	b	.L86	@
.L90:
	.word	.L87
	.word	.L88
	.word	.L89
	.word	.L88
.L89:
	movw	r2, #21216	@ tmp156,
	movw	r1, #21217	@ tmp155,
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r1, ip	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_forward
	movcs	ip, r1	@ tmp160, <variable>.MP4Vop.vop_fcode_backward
	add	r2, ip, #16	@ StartCodeLen, tmp160,
	cmp	r2, #18	@ StartCodeLen,
	movlt	r2, #18	@ StartCodeLen,
.L91:
	add	r3, r3, #17	@ tmp162, D.37351,
	cmp	r2, r3	@ StartCodeLen, tmp162
	moveq	r0, #0	@ ret,
	ldmeqfd	sp!, {r3, pc}	@
.L85:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L88:
	movw	r1, #21216	@ tmp152,
	ldrb	r2, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	add	r2, r2, #16	@ StartCodeLen, <variable>.MP4Vop.vop_fcode_forward,
	b	.L91	@
.L87:
	mov	r2, #17	@ StartCodeLen,
	b	.L91	@
.L86:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	Mp4_Check_Slice_NotSH, .-Mp4_Check_Slice_NotSH
	.align	2
	.global	MP4_Combine_HdPacket
	.type	MP4_Combine_HdPacket, %function
MP4_Combine_HdPacket:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #22096	@ tmp138,
	ldr	r3, [r4, r0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L103	@,
	movw	r1, #15709	@ tmp141,
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ D.37798, <variable>.IsLastSeg
	cmp	r5, #1	@ D.37798,
	beq	.L104	@,
	cmp	r5, #0	@ D.37798,
	bne	.L101	@,
	movw	r2, #15789	@ tmp177,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L101	@,
	movw	r3, #22108	@ tmp179,
	movw	lr, #15716	@ tmp180,
	ldr	r2, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r1, r4, #15744	@, pCtx,
	ldr	ip, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r0, r4, #22016	@, pCtx,
	add	r0, r0, #160	@,,
	add	r1, r1, #40	@,,
	add	lr, ip, r2	@ tmp184, <variable>.LenInByte, <variable>.LenInByte
	mov	r2, #80	@,
	str	lr, [r4, r3]	@ tmp184, <variable>.LenInByte
	bl	memcpy	@
	mov	r0, r5	@ D.37797, D.37798
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L104:
	movw	r6, #22101	@ tmp142,
	ldrb	r5, [r4, r6]	@ zero_extendqisi2	@ D.37801, <variable>.IsLastSeg
	cmp	r5, #1	@ D.37801,
	beq	.L105	@,
	cmp	r5, #0	@ D.37801,
	bne	.L100	@,
	movw	r3, #22181	@ tmp168,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L100	@,
	movw	ip, #22188	@ tmp170,
	movw	r0, #15716	@ tmp171,
	ldr	r1, [r4, r0]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, r5	@ D.37797, D.37801
	ldr	r3, [r4, ip]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r2, r1, r3	@ tmp175, <variable>.LenInByte, <variable>.LenInByte
	str	r2, [r4, ip]	@ tmp175, <variable>.LenInByte
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L101:
	movw	r2, #5206	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37797,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L105:
	movw	r0, #15712	@ tmp143,
	movw	r3, #22104	@ tmp144,
	ldr	r2, [r4, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, ip	@ <variable>.PhyAddr, <variable>.PhyAddr
	bcc	.L106	@,
	movw	r3, #22108	@ tmp162,
	movw	r0, #15716	@ tmp163,
	ldr	r1, [r4, r0]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ D.37797,
	ldr	r2, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	add	ip, r1, r2	@ tmp167, <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r3]	@ tmp167, <variable>.LenInByte
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L100:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #5194	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37797,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L106:
	add	r2, r4, #22016	@, pCtx,
	add	lr, r4, #15680	@, pCtx,
	add	r0, r2, #160	@,,
	add	r1, lr, #24	@,,
	mov	r2, #80	@,
	bl	memcpy	@
	movw	r1, #22181	@ tmp159,
	mov	r0, #0	@ tmp157,
	strb	r0, [r4, r6]	@ tmp157, <variable>.IsLastSeg
	strb	r5, [r4, r1]	@ D.37801, <variable>.IsLastSeg
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L103:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37797,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP4_Combine_HdPacket, .-MP4_Combine_HdPacket
	.align	2
	.global	MP4_GetScdUpMsg
	.type	MP4_GetScdUpMsg, %function
MP4_GetScdUpMsg:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #72]	@ <variable>.stMp4UpMsg, <variable>.stMp4UpMsg
	add	r0, r0, #15808	@ tmp136, pCtx,
	str	r3, [r0, #56]	@ <variable>.stMp4UpMsg, <variable>.ScdUpMsg
	bx	lr	@
	.fnend
	.size	MP4_GetScdUpMsg, .-MP4_GetScdUpMsg
	.align	2
	.global	MP4_ClearCurPic
	.type	MP4_ClearCurPic, %function
MP4_ClearCurPic:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	sl, r0	@ pCtx, pCtx
	movw	r0, #19964	@ tmp167,
	movw	r3, #22960	@ tmp166,
	ldr	r8, [sl, r0]	@ StreamIDNum, <variable>.StreamIDNum
	ldr	r7, [sl, r3]	@ ChanID, <variable>.ChanID
	cmp	r8, #0	@ StreamIDNum,
	ble	.L110	@,
	add	r4, sl, #15808	@ tmp168, pCtx,
	mov	r0, r7	@, ChanID
	mov	r6, #1	@ i,
	sub	r9, r8, #1	@ tmp172, StreamIDNum,
	ldr	r1, [r4, #60]	@, <variable>.StreamID
	and	r9, r9, #1	@ tmp174, tmp172,
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum,
	add	r5, r4, #64	@ ivtmp.969, tmp168,
	ble	.L110	@,
	cmp	r9, #0	@ tmp174,
	beq	.L111	@,
	ldr	r1, [r5, #0]	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r6, #2	@ i,
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #68	@ ivtmp.969, tmp168,
	ble	.L110	@,
.L111:
	mov	r4, r5	@ tmp176, ivtmp.969
	add	r6, r6, #1	@ tmp175, i,
	ldr	r1, [r4], #4	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	add	r6, r6, #1	@ i, tmp175,
	ldr	r1, [r5, #4]	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #4	@ ivtmp.969, tmp176,
	bgt	.L111	@,
.L110:
	movw	r1, #19964	@ tmp170,
	mov	r2, #0	@ tmp171,
	str	r2, [sl, r1]	@ tmp171, <variable>.StreamIDNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	MP4_ClearCurPic, .-MP4_ClearCurPic
	.align	2
	.global	MP4_Clean_HeadPacket
	.type	MP4_Clean_HeadPacket, %function
MP4_Clean_HeadPacket:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #22516	@ tmp140,
	movw	r3, #22960	@ tmp139,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r8, [r0, r1]	@ StreamIDNum, <variable>.stHdPktInfo.StreamIDNum
	ldr	r7, [r0, r3]	@ ChanID, <variable>.ChanID
	cmp	r8, #64	@ StreamIDNum,
	movge	r8, #64	@ StreamIDNum.1002,
	cmp	r8, #0	@ StreamIDNum.1002,
	addle	sl, r0, #22016	@ tmp145, pCtx,
	ble	.L120	@,
	add	sl, r0, #22016	@ tmp145, pCtx,
	mov	r0, r7	@, ChanID
	mov	r6, #1	@ i,
	sub	r4, r8, #1	@ tmp146, StreamIDNum.1002,
	ldr	r1, [sl, #244]	@, <variable>.stHdPktInfo.StreamId
	and	r4, r4, #1	@ tmp148, tmp146,
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum.1002,
	add	r5, sl, #248	@ ivtmp.999, tmp145,
	ble	.L120	@,
	cmp	r4, #0	@ tmp148,
	beq	.L121	@,
	ldr	r1, [r5, #0]	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r6, #2	@ i,
	cmp	r8, r6	@ StreamIDNum.1002, i
	add	r5, sl, #252	@ ivtmp.999, tmp145,
	ble	.L120	@,
.L121:
	mov	r4, r5	@ tmp150, ivtmp.999
	add	r6, r6, #1	@ tmp149, i,
	ldr	r1, [r4], #4	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	add	r6, r6, #1	@ i, tmp149,
	ldr	r1, [r5, #4]	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum.1002, i
	add	r5, r4, #4	@ ivtmp.999, tmp150,
	bgt	.L121	@,
.L120:
	add	r0, sl, #80	@, tmp145,
	mov	r1, #440	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	__memzero	@
	.fnend
	.size	MP4_Clean_HeadPacket, .-MP4_Clean_HeadPacket
	.align	2
	.global	MP4_ClearCurPacket
	.type	MP4_ClearCurPacket, %function
MP4_ClearCurPacket:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pMp4Packet, pMp4Packet
	ldr	r1, [r1, #16]	@, <variable>.StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L132	@,
	ldrb	r0, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L134	@,
.L132:
	mov	r0, r4	@, pMp4Packet
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L134:
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L132	@
	.fnend
	.size	MP4_ClearCurPacket, .-MP4_ClearCurPacket
	.align	2
	.global	MP4_Record_PacketID
	.type	MP4_Record_PacketID, %function
MP4_Record_PacketID:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #22516	@ tmp136,
	ldr	r3, [r0, r5]	@ D.37770, <variable>.stHdPktInfo.StreamIDNum
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #62	@ D.37770,
	bgt	.L139	@,
	add	ip, r3, #5504	@ tmp144, D.37770,
	movw	r1, #15720	@ tmp150,
	add	r0, ip, #60	@ tmp144, tmp144,
	ldr	ip, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ D.37780, D.37770,
	str	r3, [r4, r5]	@ D.37780, <variable>.stHdPktInfo.StreamIDNum
	add	r2, r4, r0, asl #2	@, tmp148, pCtx, tmp144,
	movw	r0, #15709	@ tmp155,
	str	ip, [r2, #4]	@ <variable>.StreamID, <variable>.stHdPktInfo.StreamId
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r0, #15789	@ tmp157,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #1	@ <variable>.IsLastSeg,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	add	r2, r3, #5504	@ tmp159, D.37780,
	movw	r0, #15800	@ tmp165,
	add	ip, r2, #60	@ tmp159, tmp159,
	ldr	r1, [r4, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ tmp168, D.37780,
	str	r3, [r4, r5]	@ tmp168, <variable>.stHdPktInfo.StreamIDNum
	add	r4, r4, ip, asl #2	@, tmp163, pCtx, tmp159,
	str	r1, [r4, #4]	@ <variable>.StreamID, <variable>.stHdPktInfo.StreamId
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L139:
	bl	MP4_Clean_HeadPacket	@
	movw	r3, #22960	@ tmp137,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldr	r2, [r4, r5]	@, <variable>.stHdPktInfo.StreamIDNum
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC4	@,
	mov	r3, #62	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	MP4_Record_PacketID, .-MP4_Record_PacketID
	.align	2
	.global	MP4_Record_HeadPacketInfo
	.type	MP4_Record_HeadPacketInfo, %function
MP4_Record_HeadPacketInfo:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r7, r1	@ StartCode, StartCode
	beq	.L144	@,
	add	r5, r4, #22016	@ tmp137, pCtx,
	add	r6, r4, #15680	@, pCtx,
	add	r1, r6, #24	@,,
	mov	r2, #160	@,
	add	r0, r5, #80	@, tmp137,
	movw	r6, #22524	@ tmp150,
	bl	memcpy	@
	add	r1, r4, #15808	@ tmp147, pCtx,
	ldr	r0, [r4, r6]	@ <variable>.stHdPktInfo.GetHeadFirstFlag, <variable>.stHdPktInfo.GetHeadFirstFlag
	movw	r2, #22520	@ tmp149,
	ldr	r3, [r1, #56]	@ <variable>.ScdUpMsg, <variable>.ScdUpMsg
	cmp	r0, #0	@ <variable>.stHdPktInfo.GetHeadFirstFlag,
	str	r7, [r4, r2]	@ StartCode, <variable>.stHdPktInfo.HeadCode
	str	r3, [r5, #240]	@ <variable>.ScdUpMsg, <variable>.stHdPktInfo.stScdUpMsg
	beq	.L145	@,
	mov	r3, #22528	@ tmp154,
	ldr	r2, [r4, r3]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	add	lr, r2, #1	@ tmp157, <variable>.stHdPktInfo.CountVopNum,
	str	lr, [r4, r3]	@ tmp157, <variable>.stHdPktInfo.CountVopNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L145:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_PacketID	@
	mov	r3, #22528	@ tmp154,
	ldr	r2, [r4, r3]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	mov	ip, #1	@ tmp153,
	str	ip, [r4, r6]	@ tmp153, <variable>.stHdPktInfo.GetHeadFirstFlag
	add	lr, r2, #1	@ tmp157, <variable>.stHdPktInfo.CountVopNum,
	str	lr, [r4, r3]	@ tmp157, <variable>.stHdPktInfo.CountVopNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L144:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC5	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	MP4_Record_HeadPacketInfo, .-MP4_Record_HeadPacketInfo
	.align	2
	.global	MP4_Renew_CurPacket
	.type	MP4_Renew_CurPacket, %function
MP4_Renew_CurPacket:
	.fnstart
.LFB1646:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pCtx, pCtx
	bl	MP4_Combine_HdPacket	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L150	@,
	mov	r0, r4	@, pCtx
	add	r5, r4, #22016	@ tmp145, pCtx,
	bl	MP4_Record_PacketID	@
	add	r0, r4, #15680	@, pCtx,
	add	r1, r5, #80	@, tmp145,
	mov	r2, #160	@,
	add	r0, r0, #24	@,,
	add	r4, r4, #15744	@ tmp151, pCtx,
	bl	memcpy	@
	ldr	r2, [r5, #240]	@ <variable>.stHdPktInfo.stScdUpMsg, <variable>.stHdPktInfo.stScdUpMsg
	mov	r0, #0	@ D.37841,
	str	r2, [r4, #32]	@ <variable>.stHdPktInfo.stScdUpMsg, <variable>.stMp4UpMsg
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L150:
	movw	r3, #22960	@ tmp137,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #5222	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.37841, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	MP4_Renew_CurPacket, .-MP4_Renew_CurPacket
	.align	2
	.global	MP4_Check_CurPacket
	.type	MP4_Check_CurPacket, %function
MP4_Check_CurPacket:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r5, #15704	@ tmp145,
	ldr	r1, [r0, r5]	@ D.37925, <variable>.VirAddr
	movw	r3, #15716	@ tmp147,
	movw	r2, #15712	@ tmp143,
	ldr	lr, [r0, r3]	@ D.37923, <variable>.LenInByte
	mov	r4, r0	@ pCtx, pCtx
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r0, [r0, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r5, sp, #4	@ tmp151,,
	movw	ip, #22044	@ tmp146,
	movw	r3, #22056	@ tmp149,
	str	r1, [r4, ip]	@ D.37925, <variable>.BitsObj.vir_addr
	movw	r2, #22048	@ tmp142,
	movw	ip, #22052	@ tmp148,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.BitsObj.phy_addr
	str	lr, [r4, ip]	@ D.37923, <variable>.BitsObj.len
	mov	r2, lr	@, D.37923
	mov	r0, #0	@ tmp150,
	str	r0, [r4, r3]	@ tmp150, <variable>.BitsObj.offset
	mov	r0, r5	@, tmp151
	bl	BsInit	@
	mov	r0, r5	@, tmp151
	mov	r1, #32	@,
	bl	BsShow	@
	movw	r3, #15864	@ tmp153,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ tmp155,
	tst	r2, #1	@ tmp155,
	bne	.L152	@,
	mov	ip, r0, lsr #8	@ tmp162, StartCode,
	movw	lr, #21277	@ tmp159,
	sub	r1, ip, #128	@ tmp163, tmp162,
	mov	r5, #2	@ tmp160,
	cmp	r1, #3	@ tmp163,
	strb	r5, [r4, lr]	@ tmp160, <variable>.MP4Syntax.is_short_header
	movw	lr, #15864	@ tmp172,
	orrls	r2, r2, r5	@ tmp167, tmp155,
	strlsb	r2, [r4, r3]	@ tmp167,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ tmp174,
	tst	r1, #2	@ tmp174,
	beq	.L154	@,
.L173:
	movw	r2, #22520	@ tmp178,
	movw	ip, #438	@ tmp179,
	ldr	r3, [r4, r2]	@ D.37729, <variable>.stHdPktInfo.HeadCode
	cmp	r3, ip	@ D.37729, tmp179
	beq	.L155	@,
	cmp	r0, #196	@ StartCode,
	beq	.L155	@,
.L156:
	mov	r0, r4	@, pCtx
	bl	MP4_Renew_CurPacket	@
	movw	r1, #15704	@ tmp194,
	ldr	r3, [r4, r1]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	bne	.L172	@,
.L164:
	mvn	r0, #0	@ ret,
.L165:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, pc}
.L152:
	movw	r3, #21277	@ tmp169,
	movw	lr, #15864	@ tmp172,
	mov	r2, #1	@ tmp170,
	strb	r2, [r4, r3]	@ tmp170,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ tmp174,
	mov	r0, #196	@ StartCode,
	tst	r1, #2	@ tmp174,
	bne	.L173	@,
.L154:
	movw	ip, #22520	@ tmp187,
	movw	lr, #438	@ tmp188,
	ldr	r3, [r4, ip]	@ temp.1125, <variable>.stHdPktInfo.HeadCode
	cmp	r3, lr	@ temp.1125, tmp188
	beq	.L161	@,
	cmp	r0, #196	@ StartCode,
	beq	.L174	@,
.L162:
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, #0	@ ret,
.L160:
	movw	r1, #15704	@ tmp194,
	ldr	r3, [r4, r1]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L164	@,
.L172:
	movw	ip, #15712	@ tmp196,
	ldr	lr, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	bne	.L165	@,
	b	.L164	@
.L155:
	movw	lr, #22041	@ tmp180,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vop_decode_right, <variable>.MP4SyntaxState.vop_decode_right
	cmp	r1, #1	@ <variable>.MP4SyntaxState.vop_decode_right,
	beq	.L157	@,
	cmp	r0, #196	@ StartCode,
	bne	.L156	@,
.L157:
	movw	ip, #22524	@ tmp182,
	ldr	r0, [r4, ip]	@ <variable>.stHdPktInfo.GetHeadFirstFlag, <variable>.stHdPktInfo.GetHeadFirstFlag
	cmp	r0, #1	@ <variable>.stHdPktInfo.GetHeadFirstFlag,
	beq	.L175	@,
.L159:
	mov	r0, #0	@ ret,
	b	.L160	@
.L161:
	cmp	r0, r3	@ StartCode, temp.1125
	beq	.L168	@,
	mov	r0, #0	@ ret,
	b	.L160	@
.L175:
	movw	r2, #438	@ tmp184,
	cmp	r3, r2	@ D.37729, tmp184
	bne	.L159	@,
	movw	r1, #22108	@ tmp185,
	ldr	r3, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r3, #4	@ <variable>.LenInByte,
	beq	.L156	@,
	mov	r0, #0	@ ret,
	b	.L160	@
.L174:
	cmp	r3, #196	@ temp.1125,
	bne	.L159	@,
.L168:
	mov	r2, #22528	@ tmp192,
	ldr	r0, [r4, r2]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	cmp	r0, #1	@ <variable>.stHdPktInfo.CountVopNum,
	bgt	.L162	@,
	mov	r0, #0	@ ret,
	b	.L160	@
	.fnend
	.size	MP4_Check_CurPacket, .-MP4_Check_CurPacket
	.align	2
	.global	MP4_Record_SlcSegID
	.type	MP4_Record_SlcSegID, %function
MP4_Record_SlcSegID:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r6, #19964	@ tmp136,
	ldr	r3, [r0, r6]	@ D.37656, <variable>.StreamIDNum
	movw	r4, #1022	@ tmp137,
	mov	r5, r0	@ pCtx, pCtx
	cmp	r3, r4	@ D.37656, tmp137
	bhi	.L180	@,
	add	ip, r3, #3952	@ tmp145, D.37656,
	movw	r1, #15720	@ tmp151,
	add	r0, ip, #14	@ tmp145, tmp145,
	ldr	ip, [r5, r1]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ D.37665, D.37656,
	str	r3, [r5, r6]	@ D.37665, <variable>.StreamIDNum
	add	r2, r5, r0, asl #2	@, tmp149, pCtx, tmp145,
	movw	r0, #15709	@ tmp156,
	str	ip, [r2, #4]	@ <variable>.StreamID, <variable>.StreamID
	ldrb	r2, [r5, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r0, #15789	@ tmp158,
	ldrb	r2, [r5, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #1	@ <variable>.IsLastSeg,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	add	r2, r3, #3952	@ tmp160, D.37665,
	movw	r0, #15800	@ tmp166,
	add	ip, r2, #14	@ tmp160, tmp160,
	ldr	r1, [r5, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ tmp169, D.37665,
	str	r3, [r5, r6]	@ tmp169, <variable>.StreamIDNum
	add	r5, r5, ip, asl #2	@, tmp164, pCtx, tmp160,
	str	r1, [r5, #4]	@ <variable>.StreamID, <variable>.StreamID
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L180:
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r5	@, pCtx
	bl	MP4_ClearCurPic	@
	movw	r3, #22960	@ tmp138,
	add	r1, r5, #15680	@, pCtx,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldr	r2, [r5, r6]	@, <variable>.StreamIDNum
	mov	r3, r4	@, tmp137
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC4	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	MP4_Record_SlcSegID, .-MP4_Record_SlcSegID
	.align	2
	.global	Mp4_Syntax_Init
	.type	Mp4_Syntax_Init, %function
Mp4_Syntax_Init:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #19968	@ tmp141, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #24	@,
	add	r0, r5, #8	@, tmp141,
	add	r6, r4, #20992	@, pCtx,
	bl	__memzero	@
	add	r0, r5, #32	@, tmp141,
	mov	r1, #604	@,
	movw	r5, #22600	@ tmp153,
	bl	__memzero	@
	add	r0, r6, #216	@,,
	mov	r1, #60	@,
	bl	__memzero	@
	add	r3, r4, #21248	@, pCtx,
	add	r0, r3, #20	@,,
	mov	r1, #768	@,
	bl	__memzero	@
	add	r1, r4, #22016	@, pCtx,
	add	r0, r1, #20	@,,
	mov	r1, #7	@,
	bl	__memzero	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp166,
	movt	r1, #:upper16:.LANCHOR0	@ tmp166,
	movw	r0, #21285	@ tmp150,
	mov	r3, #0	@ ivtmp.1197,
	mov	r2, #1	@ tmp151,
	str	r2, [r4, r5]	@ tmp151, <variable>.IPVopErr
	strb	r2, [r4, r0]	@ tmp151, <variable>.MP4Syntax.syn_vos.visual_object_verid
.L182:
	add	r2, r3, #4	@ tmp169, ivtmp.1197,
	add	r0, r4, r3	@ tmp155, pCtx, ivtmp.1197
	ldr	r5, [r1, r3]	@ tmp159, default_intra_matrix
	add	r6, r4, r2	@ tmp171, pCtx, tmp169
	add	r3, r2, #4	@ ivtmp.1197, tmp169,
	ldr	lr, [r1, r2]	@ tmp174, default_intra_matrix
	add	ip, r0, #19968	@ tmp157, tmp155,
	cmp	r3, #256	@ ivtmp.1197,
	add	r0, r6, #19968	@ tmp172, tmp171,
	str	r5, [ip, #120]	@ tmp159, <variable>.MP4Vol.intra_quant_mat
	str	lr, [r0, #120]	@ tmp174, <variable>.MP4Vol.intra_quant_mat
	bne	.L182	@,
	ldr	r1, .L189	@ tmp167,
	mov	r3, #0	@ ivtmp.1187,
.L183:
	add	r2, r3, #4	@ tmp168, ivtmp.1187,
	add	r0, r4, r3	@ tmp160, pCtx, ivtmp.1187
	ldr	r5, [r1, r3]	@ tmp165, default_inter_matrix
	add	r6, r4, r2	@ tmp176, pCtx, tmp168
	add	r3, r2, #4	@ ivtmp.1187, tmp168,
	ldr	lr, [r1, r2]	@ tmp179, default_inter_matrix
	add	ip, r0, #20224	@ tmp162, tmp160,
	cmp	r3, #256	@ ivtmp.1187,
	add	r0, r6, #20224	@ tmp177, tmp176,
	str	r5, [ip, #120]	@ tmp165, <variable>.MP4Vol.nonintra_quant_mat
	str	lr, [r0, #120]	@ tmp179, <variable>.MP4Vol.nonintra_quant_mat
	bne	.L183	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L190:
	.align	2
.L189:
	.word	.LANCHOR0+256
	.fnend
	.size	Mp4_Syntax_Init, .-Mp4_Syntax_Init
	.align	2
	.global	Global_Data_Init
	.type	Global_Data_Init, %function
Global_Data_Init:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	add	r5, r0, #22016	@ tmp136, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #24	@,
	add	r0, r5, #48	@, tmp136,
	bl	__memzero	@
	add	r0, r5, #28	@, tmp136,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Init	@
	movw	r1, #22580	@ tmp139,
	movw	r2, #22584	@ tmp141,
	mov	r3, #0	@ tmp140,
	movw	ip, #22588	@ tmp143,
	str	r3, [r4, r1]	@ tmp140, <variable>.UsrData
	str	r3, [r4, r2]	@ tmp140, <variable>.UsrData
	movw	r1, #22592	@ tmp145,
	movw	r2, #22552	@ tmp147,
	str	r3, [r4, ip]	@ tmp140, <variable>.UsrData
	str	r3, [r4, r2]	@ tmp140, <variable>.FrameNum
	movw	ip, #22092	@ tmp149,
	str	r3, [r4, r1]	@ tmp140, <variable>.UsrData
	movw	r2, #22540	@ tmp153,
	movw	r1, #22536	@ tmp151,
	str	r3, [r4, ip]	@ tmp140, <variable>.DecMode
	str	r3, [r4, r1]	@ tmp140, <variable>.SeqCnt
	movw	ip, #22544	@ tmp155,
	str	r3, [r4, r2]	@ tmp140, <variable>.ImgCntOfSeq
	movw	r1, #22596	@ tmp157,
	movw	r2, #22556	@ tmp159,
	movw	r0, #22572	@ tmp167,
	str	r3, [r4, ip]	@ tmp140, <variable>.ErrorLevel
	movw	ip, #22560	@ tmp161,
	str	r3, [r4, r1]	@ tmp140, <variable>.CurUsrData
	movw	r1, #22564	@ tmp163,
	str	r3, [r4, r2]	@ tmp140, <variable>.OldPicWidth
	movw	r2, #22568	@ tmp165,
	str	r3, [r4, r0]	@ tmp140, <variable>.UserID
	mov	r0, r3	@, tmp140
	str	r3, [r4, ip]	@ tmp140, <variable>.OldPicHeight
	str	r3, [r4, r1]	@ tmp140, <variable>.NewPicWidth
	str	r3, [r4, r2]	@ tmp140, <variable>.NewPicHeight
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	Global_Data_Init, .-Global_Data_Init
	.align	2
	.global	bs_get_spritetrajectory
	.type	bs_get_spritetrajectory, %function
bs_get_spritetrajectory:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR1	@ tmp204,
	movt	r4, #:upper16:.LANCHOR1	@ tmp204,
	mov	r5, r0	@ pBs, pBs
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #0]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #0	@ i,
	beq	.L195	@,
	ldrb	r1, [r4, #12]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #8]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #1	@ i,
	beq	.L195	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #20]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #16]	@ <variable>.code, <variable>.code
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #2	@ i,
	beq	.L195	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #28]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	ip, [r4, #24]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	moveq	r6, #3	@ i,
	beq	.L195	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #36]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #32]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #4	@ i,
	beq	.L195	@,
	ldrb	r1, [r4, #44]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #40]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #5	@ i,
	beq	.L195	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #52]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #48]	@ <variable>.code, <variable>.code
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #6	@ i,
	beq	.L195	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #60]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	ip, [r4, #56]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	moveq	r6, #7	@ i,
	beq	.L195	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #68]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #64]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #8	@ i,
	beq	.L195	@,
	ldrb	r1, [r4, #76]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #72]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #9	@ i,
	beq	.L195	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #84]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #80]	@ <variable>.code, <variable>.code
	movw	r6, #:lower16:.LANCHOR1	@ tmp189,
	movt	r6, #:upper16:.LANCHOR1	@ tmp189,
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #10	@ i,
	beq	.L195	@,
	ldrb	r1, [r6, #92]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	ip, [r6, #88]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	mvnne	r6, #0	@ i,
	beq	.L209	@,
	mov	r0, r6	@, i
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L209:
	mov	r6, #11	@ i,
.L195:
	add	r4, r4, r6, asl #3	@, tmp200, tmp204, i,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@, <variable>.len
	bl	BsSkip	@
	mov	r0, r6	@, i
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	bs_get_spritetrajectory, .-bs_get_spritetrajectory
	.align	2
	.global	Bs_Get_Matrix
	.type	Bs_Get_Matrix, %function
Bs_Get_Matrix:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r6, #0	@ value,
	movw	r8, #:lower16:.LANCHOR0	@ tmp171,
	mov	sl, r0	@ bs, bs
	movt	r8, #:upper16:.LANCHOR0	@ tmp171,
	mov	r7, r1	@ matrix, matrix
	mov	r5, r6	@ i, value
	mov	r4, r6	@ i, value
	b	.L212	@
.L222:
	mov	r6, r0	@ value, D.34935
.L212:
	mov	r0, sl	@, bs
	mov	r1, #8	@,
	bl	BsGet	@
	add	r5, r5, #1	@ tmp154, i,
	add	r4, r8, r4, asl #2	@, tmp150, tmp171, i,
	uxth	r5, r5	@ i, tmp154
	ldr	r2, [r4, #512]	@ tmp152, scan_tables
	sxth	r4, r5	@ i, i
	cmp	r4, #63	@ i,
	movgt	r3, #0	@, tmp162
	movle	r3, #1	@, tmp162
	cmp	r0, #0	@ D.34935,
	str	r0, [r7, r2, asl #2]	@ D.34935,* matrix
	moveq	r3, #0	@, tmp162,
	cmp	r3, #0	@ tmp162,
	bne	.L222	@,
	cmp	r0, #0	@ D.34935,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	sub	r0, r4, #1	@ tmp163, i,
	cmp	r0, #63	@ tmp163,
	ldmgtfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	ldr	ip, .L223	@ tmp165,
	add	r4, ip, r4, asl #2	@, ivtmp.1359, tmp165, i,
	add	ip, ip, #260	@ D.38736, tmp165,
	add	r3, r4, #4	@ ivtmp.1359, ivtmp.1359,
	rsb	r2, r4, ip	@ tmp174, ivtmp.1359, D.38736
	ldr	lr, [r4, #-4]	@ tmp169, scan_tables
	cmp	r3, ip	@ ivtmp.1359, D.38736
	sub	r1, r2, #4	@ tmp175, tmp174,
	ubfx	r1, r1, #2, #1	@ tmp176, tmp175,,
	str	r6, [r7, lr, asl #2]	@ value,* matrix
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r1, #0	@ tmp176,
	beq	.L214	@,
	ldr	r2, [r3, #-4]	@ tmp182, scan_tables
	add	r3, r3, #4	@ ivtmp.1359, ivtmp.1359,
	cmp	r3, ip	@ ivtmp.1359, D.38736
	str	r6, [r7, r2, asl #2]	@ value,* matrix
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L214:
	mov	r1, r3	@ tmp177, ivtmp.1359
	ldr	r0, [r3, #-4]	@ tmp179, scan_tables
	ldr	lr, [r1], #4	@ tmp181, scan_tables
	add	r3, r1, #4	@ ivtmp.1359, tmp177,
	str	r6, [r7, r0, asl #2]	@ value,* matrix
	cmp	r3, ip	@ ivtmp.1359, D.38736
	str	r6, [r7, lr, asl #2]	@ value,* matrix
	bne	.L214	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L224:
	.align	2
.L223:
	.word	.LANCHOR0+512
	.fnend
	.size	Bs_Get_Matrix, .-Bs_Get_Matrix
	.align	2
	.global	Mp4_Syntax_Slice_SH
	.type	Mp4_Syntax_Slice_SH, %function
Mp4_Syntax_Slice_SH:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r8, #15612	@ tmp146,
	ldr	r6, [r0, r8]	@ D.37520, <variable>.Mp4DecParam.SlcNum
	movw	r3, #510	@ tmp148,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r0	@ pCtx, pCtx
	sub	r7, r6, #1	@ D.37531, D.37520,
	mov	fp, r2	@ len, len
	cmp	r7, r3	@ D.37531, tmp148
	bhi	.L234	@,
	movw	r3, #15864	@ tmp164,
	add	r5, sp, #4	@ tmp169,,
	ldrb	lr, [r0, r3]	@ zero_extendqisi2	@ tmp166,
	add	r0, r6, #1	@ tmp163, D.37520,
	str	r0, [r4, r8]	@ tmp163, <variable>.Mp4DecParam.SlcNum
	mov	r0, r5	@, tmp169
	ubfx	sl, lr, #3, #4	@ tmp168, tmp166,,
	bl	BsInit	@
	add	sl, sl, #17	@ D.37537, tmp168,
	mov	r0, r5	@, tmp169
	mov	r8, r6, asl #3	@ tmp393, D.37520,
	mov	r1, sl	@, D.37537
	rsb	r9, r6, r8	@ tmp177, D.37520, tmp393
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r5	@, tmp169
	add	r9, r4, r9, asl #2	@, tmp179, pCtx, tmp177,
	bl	BsGet	@
	movw	r2, #21220	@ tmp172,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.num_mb_ingob, <variable>.MP4Vop.num_mb_ingob
	movw	r3, #1204	@ tmp181,
	movw	r1, #1206	@ tmp183,
	mul	r0, ip, r0	@ D.37543, <variable>.MP4Vop.num_mb_ingob,
	str	r0, [r9, #1300]	@ D.37543, <variable>.mb_start_num
	ldrh	ip, [r4, r3]	@ <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicWidthInMb
	ldrh	r2, [r4, r1]	@ <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicHeightInMb
	mul	r3, r2, ip	@ tmp185, <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicWidthInMb
	sub	r3, r3, #1	@ totalMbMin1, tmp185,
	cmp	r0, r3	@ D.37543, totalMbMin1
	bhi	.L235	@,
	mov	r1, #2	@,
	mov	r0, r5	@, tmp169
	bl	BsSkip	@
	mov	r0, r5	@, tmp169
	mov	r1, #5	@,
	add	sl, r9, #1264	@ tmp195, tmp179,
	bl	BsGet	@
	add	sl, sl, #8	@ tmp195, tmp195,
	movw	ip, #21208	@ tmp204,
	movw	r2, #21216	@ tmp224,
	strb	r0, [sl, #9]	@, <variable>.vop_quant
	mov	r0, r5	@, tmp169
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	movw	r5, #21212	@ tmp214,
	strb	r1, [sl, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	movw	r1, #21217	@ tmp234,
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	r3, [sl, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	strb	ip, [sl, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	strb	r5, [sl, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	bl	BsPos	@
	movw	r2, #22056	@ tmp260,
	mov	r3, r0, asr #31	@ tmp255, BitUsed,
	mov	r5, r0	@ BitUsed,
	rsb	fp, r0, fp, asl #3	@, tmp246, BitUsed, len,
	str	fp, [r9, #1284]	@ tmp246, <variable>.bit_len
	mov	ip, r3, lsr #29	@ tmp256, tmp255,
	ldr	r1, [r4, r2]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	add	r0, r0, ip	@ tmp257, BitUsed, tmp256
	cmp	r5, #0	@ BitUsed,
	and	r0, r0, #7	@ tmp258, tmp257,
	add	r2, r5, #7	@ tmp275, BitUsed,
	rsb	r3, ip, r0	@ tmp259, tmp256, tmp258
	movw	ip, #22048	@ tmp277,
	add	r0, r3, r1	@ tmp264, tmp259, <variable>.BitsObj.offset
	strb	r0, [sl, #10]	@ tmp264, <variable>.bit_offset
	ldr	r1, [r4, ip]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movge	r2, r5	@ BitUsed, BitUsed
	mov	ip, #19968	@ tmp280,
	add	r3, r1, r2, asr #3	@, tmp279, <variable>.BitsObj.phy_addr, BitUsed,
	movw	r2, #15709	@ tmp284,
	str	r3, [r9, #1292]	@ tmp279, <variable>.phy_address
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	ldr	r0, [r4, ip]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	cmp	r2, #0	@ <variable>.IsLastSeg,
	orr	r1, r0, #16	@ tmp283, <variable>.PicIntegrality,
	str	r1, [r4, ip]	@ tmp283, <variable>.PicIntegrality
	beq	.L236	@,
.L229:
	rsb	r2, r6, r8	@ tmp319, D.37520, tmp393
	mov	r0, #0	@ tmp323,
	add	lr, r4, r2, asl #2	@, tmp321, pCtx, tmp319,
	add	ip, lr, #1280	@ tmp339, tmp321,
	add	r6, lr, #1264	@ tmp330, tmp321,
	add	r3, ip, #4	@ tmp322, tmp322,
	add	r6, r6, #9	@ tmp330, tmp330,
	add	r2, ip, #12	@ tmp339, tmp339,
	str	r0, [r3, #4]	@ tmp323, <variable>.bit_len
	str	r0, [r2, #4]	@ tmp323, <variable>.phy_address
	strb	r0, [r6, #10]	@ tmp323, <variable>.bit_offset
.L230:
	mov	r3, r7, asl #3	@ tmp392, D.37531,
	rsb	ip, r7, r3	@ tmp344, D.37531, tmp392
	add	r2, r4, ip, asl #2	@, tmp346, pCtx, tmp344,
	ldr	r0, [r2, #1296]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r0, #0	@ <variable>.phy_address,
	bne	.L237	@,
.L231:
	rsb	r3, r7, r3	@ tmp372, D.37531, tmp392
	movw	r2, #15864	@ tmp376,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ tmp378,
	add	lr, r4, r3, asl #2	@, tmp374, pCtx, tmp372,
	ubfx	r0, ip, #3, #4	@ tmp380, tmp378,,
	ldr	r1, [lr, #1284]	@ <variable>.bit_len, <variable>.bit_len
	add	r2, r0, r1	@ tmp389, tmp380, <variable>.bit_len
	str	r2, [lr, #1284]	@ tmp389, <variable>.bit_len
.L232:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
.L227:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L237:
	add	r1, r2, #1280	@ tmp355, tmp346,
	add	r2, r1, #4	@ tmp355, tmp355,
	ldr	r1, [r2, #4]	@ D.37587, <variable>.bit_len
	cmp	r1, #0	@ D.37587,
	beq	.L231	@,
	movw	ip, #15864	@ tmp363,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ tmp365,
	ubfx	r3, r0, #3, #4	@ tmp367, tmp365,,
	add	lr, r3, r1	@ tmp368, tmp367, D.37587
	str	lr, [r2, #4]	@ tmp368, <variable>.bit_len
	b	.L232	@
.L236:
	movw	r0, #15789	@ tmp286,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L229	@,
	movw	lr, #15796	@ tmp295,
	movw	r3, #15792	@ tmp314,
	ldr	ip, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r2, [r9, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r1, ip, asl #3	@ tmp297, <variable>.LenInByte,
	str	r1, [r9, #1288]	@ tmp297, <variable>.bit_len
	ldr	r2, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r9, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L230	@
.L234:
	movw	lr, #22960	@ tmp149,
	add	r1, r0, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r0, lr]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r2, #19968	@ tmp153,
	ldr	r5, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r0, #1	@,
	ldr	r3, [r4, r8]	@, <variable>.Mp4DecParam.SlcNum
	movw	r1, #:lower16:.LC7	@,
	bic	ip, r5, #178	@ tmp156, <variable>.PicIntegrality,
	movt	r1, #:upper16:.LC7	@,
	str	ip, [r4, r2]	@ tmp156, <variable>.PicIntegrality
	mov	r5, #0	@ BitUsed,
	ldr	r2, .L238	@,
	bl	dprint_vfmw	@
	b	.L227	@
.L235:
	mov	r2, r0	@, D.37543
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC8	@,
	mvn	r5, #0	@ BitUsed,
	bl	dprint_vfmw	@
	b	.L227	@
.L239:
	.align	2
.L238:
	.word	.LANCHOR0+1280
	.fnend
	.size	Mp4_Syntax_Slice_SH, .-Mp4_Syntax_Slice_SH
	.align	2
	.global	Mp4_Syntax_Slice_NotSH
	.type	Mp4_Syntax_Slice_NotSH, %function
Mp4_Syntax_Slice_NotSH:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r7, #15612	@ tmp154,
	ldr	r6, [r0, r7]	@ D.37431, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #510	@ tmp156,
	.pad #32
	sub	sp, sp, #32	@,,
	sub	r0, r6, #1	@ tmp155, D.37431,
	mov	r8, r2	@ len, len
	cmp	r0, r3	@ tmp155, tmp156
	bhi	.L256	@,
	movw	ip, #15864	@ tmp173,
	add	r5, sp, #4	@ tmp405,,
	ldrh	r3, [r4, ip]	@ tmp175,
	add	r0, r6, #1	@ tmp172, D.37431,
	str	r0, [r4, r7]	@ tmp172, <variable>.Mp4DecParam.SlcNum
	mov	r0, r5	@, tmp405
	ubfx	lr, r3, #7, #4	@ tmp177, tmp175,,
	movw	r7, #21972	@ tmp180,
	add	sl, lr, #17	@ D.37446, tmp177,
	bl	BsInit	@
	mov	r0, r5	@, tmp405
	mov	r1, sl	@, D.37446
	bl	BsSkip	@
	movw	r2, #21976	@ tmp184,
	ldr	r1, [r4, r7]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	ldr	ip, [r4, r2]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	add	r3, r1, #15	@ tmp181, <variable>.MP4Syntax.image_height,
	add	r0, ip, #15	@ tmp185, <variable>.MP4Syntax.image_width,
	mov	sl, r3, lsr #4	@ tmp183, tmp181,
	mov	r7, r0, lsr #4	@ tmp187, tmp185,
	mul	r7, r7, sl	@ MbCnt, tmp187, tmp183
	cmp	r7, #0	@ MbCnt,
	beq	.L243	@,
	mov	r3, r7	@ MbCnt.1430, MbCnt
	mov	r1, #0	@ n,
.L244:
	add	r1, r1, #1	@ tmp189, n,
	movs	r3, r3, lsr #1	@ MbCnt.1430, MbCnt.1430,
	uxth	r1, r1	@ n, tmp189
	bne	.L244	@,
	sxth	r1, r1	@, n
	mov	r0, r5	@, tmp405
	bl	BsGet	@
	mov	sl, r6, asl #3	@ tmp406, D.37431,
	rsb	r3, r6, sl	@ tmp195, D.37431, tmp406
	sub	ip, r7, #1	@ tmp199, MbCnt,
	add	r2, r4, r3, asl #2	@, tmp197, pCtx, tmp195,
	cmp	r0, ip	@ temp.1427, tmp199
	str	r0, [r2, #1300]	@ temp.1427, <variable>.mb_start_num
	bhi	.L257	@,
.L245:
	mov	r1, #5	@,
	mov	r0, r5	@, tmp405
	bl	BsGet	@
	rsb	r2, r6, sl	@ tmp205, D.37431, tmp406
	mov	r1, #1	@,
	add	r7, r4, r2, asl #2	@, tmp207, pCtx, tmp205,
	add	r9, r7, #1264	@ tmp208, tmp207,
	add	r7, r9, #8	@ tmp208, tmp208,
	strb	r0, [r7, #9]	@, <variable>.vop_quant
	mov	r0, r5	@, tmp405
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L246	@,
.L253:
	mov	r0, r5	@, tmp405
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L253	@,
	mov	r1, #1	@,
	mov	r0, r5	@, tmp405
	bl	BsSkip	@
	movw	r0, #20068	@ tmp213,
	ldr	r1, [r4, r0]	@ D.37467, <variable>.MP4Vol.vop_time_incr_bits
	cmp	r1, #0	@ D.37467,
	bne	.L258	@,
.L248:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp405
	bl	BsSkip	@
	mov	r1, #2	@,
	mov	r0, r5	@, tmp405
	rsb	r9, r6, sl	@ tmp220, D.37431, tmp406
	bl	BsGet	@
	mov	r1, #3	@,
	add	ip, r4, r9, asl #2	@, tmp222, pCtx, tmp220,
	add	r3, ip, #1264	@ tmp223, tmp222,
	add	r7, r3, #8	@ tmp223, tmp223,
	strb	r0, [r7, #8]	@, <variable>.vop_coding_type
	mov	r0, r5	@, tmp405
	bl	BsGet	@
	ldrb	r1, [r7, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	cmp	r1, #0	@ <variable>.vop_coding_type,
	strb	r0, [r7, #7]	@, <variable>.intra_dc_vlc_thr
	bne	.L259	@,
.L249:
	rsb	r9, r6, sl	@ tmp275, D.37431, tmp406
	movw	r0, #21216	@ tmp279,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	movw	r1, #21217	@ tmp289,
	add	r9, r4, r9, asl #2	@, tmp277, pCtx, tmp275,
	mov	lr, #19968	@ tmp292,
	add	r7, r9, #1264	@ tmp278, tmp277,
	mov	r0, r5	@, tmp405
	add	r7, r7, #8	@ tmp278, tmp278,
	strb	r2, [r7, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	strb	ip, [r7, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	ldr	r2, [r4, lr]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	orr	r5, r2, #16	@ tmp295, <variable>.PicIntegrality,
	str	r5, [r4, lr]	@ tmp295, <variable>.PicIntegrality
	bl	BsPos	@
	movw	r1, #22056	@ tmp319,
	mov	r3, r0, asr #31	@ tmp314, BitUsed,
	mov	r5, r0	@ BitUsed,
	rsb	r8, r0, r8, asl #3	@, tmp305, BitUsed, len,
	str	r8, [r9, #1284]	@ tmp305, <variable>.bit_len
	mov	ip, r3, lsr #29	@ tmp315, tmp314,
	ldr	r2, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	add	r0, r0, ip	@ tmp316, BitUsed, tmp315
	cmp	r5, #0	@ BitUsed,
	and	r0, r0, #7	@ tmp317, tmp316,
	add	r1, r5, #7	@ tmp334, BitUsed,
	rsb	r3, ip, r0	@ tmp318, tmp315, tmp317
	movge	r1, r5	@ BitUsed, BitUsed
	add	ip, r3, r2	@ tmp323, tmp318, <variable>.BitsObj.offset
	movw	r3, #22048	@ tmp336,
	strb	ip, [r7, #10]	@ tmp323, <variable>.bit_offset
	movw	ip, #15709	@ tmp339,
	ldr	r2, [r4, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	add	r0, r2, r1, asr #3	@, tmp338, <variable>.BitsObj.phy_addr, BitUsed,
	str	r0, [r9, #1292]	@ tmp338, <variable>.phy_address
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L250	@,
	movw	ip, #15789	@ tmp341,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	beq	.L260	@,
.L250:
	rsb	r3, r6, sl	@ tmp374, D.37431, tmp406
	mov	ip, #0	@ tmp378,
	add	lr, r4, r3, asl #2	@, tmp376, pCtx, tmp374,
	add	r0, lr, #1280	@ tmp394, tmp376,
	add	r6, lr, #1264	@ tmp385, tmp376,
	add	r1, r0, #4	@ tmp377, tmp377,
	add	r6, r6, #9	@ tmp385, tmp385,
	add	r3, r0, #12	@ tmp394, tmp394,
	str	ip, [r1, #4]	@ tmp378, <variable>.bit_len
	str	ip, [r3, #4]	@ tmp378, <variable>.phy_address
	strb	ip, [r6, #10]	@ tmp378, <variable>.bit_offset
.L251:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
.L242:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L246:
	movw	r3, #21208	@ tmp259,
	movw	r0, #21212	@ tmp269,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	strb	r1, [r7, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [r7, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	b	.L249	@
.L256:
	movw	lr, #22960	@ tmp157,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r2, #19968	@ tmp161,
	ldr	r5, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r0, #1	@,
	ldr	r3, [r4, r7]	@, <variable>.Mp4DecParam.SlcNum
	movw	r1, #:lower16:.LC7	@,
	bic	ip, r5, #178	@ tmp164, <variable>.PicIntegrality,
	movt	r1, #:upper16:.LC7	@,
	str	ip, [r4, r2]	@ tmp164, <variable>.PicIntegrality
	mov	r5, #0	@ BitUsed,
	ldr	r2, .L261	@,
	bl	dprint_vfmw	@
	b	.L242	@
.L258:
	mov	r0, r5	@, tmp405
	bl	BsSkip	@
	b	.L248	@
.L259:
	mov	r0, r5	@, tmp405
	mov	r1, #3	@,
	bl	BsSkip	@
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	cmp	r2, #2	@ <variable>.vop_coding_type,
	bne	.L249	@,
	mov	r0, r5	@, tmp405
	mov	r1, #3	@,
	bl	BsSkip	@
	b	.L249	@
.L260:
	movw	lr, #15796	@ tmp350,
	movw	r1, #15792	@ tmp369,
	ldr	r2, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r3, [r9, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r0, r2, asl #3	@ tmp352, <variable>.LenInByte,
	str	r0, [r9, #1288]	@ tmp352, <variable>.bit_len
	ldr	r3, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r9, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L251	@
.L243:
	mov	r1, r7	@, MbCnt
	mov	r0, r5	@, tmp405
	bl	BsGet	@
	mov	sl, r6, asl #3	@ tmp406, D.37431,
	rsb	r9, r6, sl	@ tmp401, D.37431, tmp406
	add	r7, r4, r9, asl #2	@, tmp403, pCtx, tmp401,
	str	r0, [r7, #1300]	@, <variable>.mb_start_num
	b	.L245	@
.L257:
	mov	r2, r0	@, temp.1427
	mov	r3, r7	@, MbCnt
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC9	@,
	mvn	r5, #0	@ BitUsed,
	bl	dprint_vfmw	@
	b	.L242	@
.L262:
	.align	2
.L261:
	.word	.LANCHOR0+1300
	.fnend
	.size	Mp4_Syntax_Slice_NotSH, .-Mp4_Syntax_Slice_NotSH
	.align	2
	.global	MP4_Dec_Slice
	.type	MP4_Dec_Slice, %function
MP4_Dec_Slice:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #15864	@ tmp144,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	r3, [r0, ip]	@ zero_extendqisi2	@ D.37619,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ pCtx, pCtx
	tst	r3, #1	@ D.37619,
	beq	.L271	@,
	tst	r3, #4	@ D.37619,
	bne	.L268	@,
	ldrh	r0, [r0, ip]	@ tmp169,
	ubfx	r0, r0, #7, #4	@ D.37641, tmp169,,
	cmp	r0, #0	@ D.37641,
	beq	.L268	@,
	cmp	r0, #7	@ D.37641,
	bfile	r3, r0, #3, #4	@ D.37619, D.37641,,
	strleb	r3, [r4, ip]	@ D.37619,
.L268:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_SH	@
	cmn	r0, #1	@,
	beq	.L272	@,
.L266:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L271:
	str	r1, [sp, #4]	@,
	str	r2, [sp, #0]	@,
	bl	Mp4_Check_Slice_NotSH	@
	ldr	r1, [sp, #4]	@,
	ldr	r2, [sp, #0]	@,
	cmp	r0, #0	@,
	beq	.L273	@,
	mov	r1, r2	@, len
	mov	r0, r4	@, pCtx
	bl	Mp4_Combine_SliceData	@
	cmp	r0, #0	@,
	bne	.L270	@,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L266	@
.L273:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_NotSH	@
	cmn	r0, #1	@,
	bne	.L266	@,
.L270:
	movw	r3, #22960	@ tmp156,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, .L274	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L266	@
.L272:
	add	r2, r4, #15680	@, pCtx,
	movw	ip, #22960	@ tmp174,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r2, #24	@,,
	bl	MP4_ClearCurPacket	@
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, .L274	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L266	@
.L275:
	.align	2
.L274:
	.word	.LANCHOR0+1324
	.fnend
	.size	MP4_Dec_Slice, .-MP4_Dec_Slice
	.align	2
	.global	Mp4_Syntax_Vos
	.type	Mp4_Syntax_Vos, %function
Mp4_Syntax_Vos:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	add	r5, sp, #4	@ tmp174,,
	mov	r4, r0	@ pCtx, pCtx
	movw	r6, #21292	@ tmp142,
	movw	r7, #19984	@ tmp146,
	mov	r0, r5	@, tmp174
	bl	BsInit	@
	mov	r3, #0	@ tmp143,
	mov	r1, #32	@,
	str	r3, [r4, r6]	@ tmp143, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	mov	r0, r5	@, tmp174
	bl	BsSkip	@
	mov	r0, r5	@, tmp174
	mov	r1, #8	@,
	bl	BsGet	@
	sub	r2, r0, #1	@ tmp147, D.35839,
	str	r0, [r4, r7]	@ D.35839, <variable>.MP4Vos.profile_and_level_indication
	cmp	r0, #8	@ D.35839,
	cmpne	r2, #2	@, tmp147,
	movhi	r2, #0	@, tmp154
	movls	r2, #1	@, tmp154
	bls	.L277	@,
	cmp	r0, #240	@ D.35839,
	beq	.L277	@,
	cmp	r0, #241	@ D.35839,
	beq	.L277	@,
	cmp	r0, #242	@ D.35839,
	beq	.L277	@,
	cmp	r0, #243	@ D.35839,
	beq	.L277	@,
	cmp	r0, #244	@ D.35839,
	beq	.L277	@,
	cmp	r0, #245	@ D.35839,
	beq	.L277	@,
	cmp	r0, #0	@ D.35839,
	beq	.L282	@,
	movw	lr, #:lower16:g_event_report	@ tmp169,
	movt	lr, #:upper16:g_event_report	@ tmp169,
	movw	r1, #22036	@ tmp166,
	strb	r2, [r4, r1]	@ tmp154, <variable>.MP4SyntaxState.vos_decode_right
	ldr	r3, [lr, #0]	@ g_event_report.519, g_event_report
	cmp	r3, #0	@ g_event_report.519,
	beq	.L279	@,
	movw	ip, #22960	@ tmp170,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.519
	b	.L279	@
.L277:
	movw	ip, #21292	@ tmp158,
	movw	r1, #22036	@ tmp155,
	str	r0, [r4, ip]	@ D.35839, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	mov	r0, #1	@ tmp156,
	strb	r0, [r4, r1]	@ tmp156, <variable>.MP4SyntaxState.vos_decode_right
.L279:
	mov	r0, r5	@, tmp174
	bl	BsPos	@
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L282:
	mov	r2, r0	@, D.35839
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ <variable>.MP4Vos.profile_and_level_indication, <variable>.MP4Vos.profile_and_level_indication
	movw	r2, #22036	@ tmp160,
	mov	r0, #1	@ tmp161,
	strb	r0, [r4, r2]	@ tmp161, <variable>.MP4SyntaxState.vos_decode_right
	str	r3, [r4, r6]	@ <variable>.MP4Vos.profile_and_level_indication, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	b	.L279	@
	.fnend
	.size	Mp4_Syntax_Vos, .-Mp4_Syntax_Vos
	.align	2
	.global	Mp4_Syntax_Vol
	.type	Mp4_Syntax_Vol, %function
Mp4_Syntax_Vol:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #22960	@ tmp250,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r9, [r0, r3]	@ <variable>.ChanID, <variable>.ChanID
	movw	lr, #:lower16:s_pstVfmwChan	@ tmp248,
	movt	lr, #:upper16:s_pstVfmwChan	@ tmp248,
	.pad #36
	sub	sp, sp, #36	@,,
	add	r6, r0, #19968	@ tmp627, pCtx,
	ldr	r5, [lr, r9, asl #2]	@ D.35514, s_pstVfmwChan
	mov	r4, r0	@ pCtx, pCtx
	add	r6, r6, #32	@ tmp627, tmp627,
	movw	r9, #20004	@ tmp259,
	cmp	r5, #0	@ D.35514,
	ldrne	r7, [r5, #1460]	@ MaxVerSize, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	moveq	r7, #8192	@ MaxVerSize,
	ldrne	r8, [r5, #1456]	@ MaxHorSize, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	add	r5, sp, #4	@ tmp628,,
	moveq	r8, r7	@ MaxHorSize, MaxVerSize
	mov	r0, r5	@, tmp628
	bl	BsInit	@
	movw	r0, #21269	@ tmp252,
	mov	ip, #0	@ tmp253,
	mov	r1, #604	@,
	strb	ip, [r4, r0]	@ tmp253, <variable>.MP4Syntax.vol_decode_over
	mov	r0, r6	@, tmp627
	bl	__memzero	@
	mov	r1, #32	@,
	mov	r0, r5	@, tmp628
	bl	BsSkip	@
	mov	r1, #1	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, r9]	@, <variable>.MP4Vol.random_accessible_vol
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r2, #20028	@ tmp262,
	mov	r1, #1	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vol.video_object_type_indication
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r3, #20000	@ tmp264,
	uxtb	r0, r0	@ D.35528,
	strb	r0, [r4, r3]	@ D.35528, <variable>.MP4Vol.is_object_layer_identifier
	cmp	r0, #0	@ D.35528,
	bne	.L379	@,
	movw	lr, #21285	@ tmp273,
	movw	r0, #20001	@ tmp272,
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vos.visual_object_verid, <variable>.MP4Syntax.syn_vos.visual_object_verid
	mov	r1, #4	@,
	strb	ip, [r4, r0]	@ <variable>.MP4Syntax.syn_vos.visual_object_verid, <variable>.MP4Vol.video_object_layer_verid
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r3, #20003	@ tmp277,
	uxtb	r9, r0	@ D.35539,
	strb	r9, [r4, r3]	@ D.35539, <variable>.MP4Vol.aspect_ratio_info
	cmp	r9, #15	@ D.35539,
	beq	.L380	@,
.L288:
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #20005	@ tmp284,
	uxtb	r0, r0	@ D.35548,
	strb	r0, [r4, ip]	@ D.35548, <variable>.MP4Vol.vol_control_parameters
	cmp	r0, #0	@ D.35548,
	movweq	ip, #20006	@ tmp354,
	moveq	r2, #1	@ tmp355,
	streqb	r2, [r4, ip]	@ tmp355, <variable>.MP4Vol.chroma_format
	bne	.L381	@,
.L292:
	mov	r0, r5	@, tmp628
	mov	r1, #2	@,
	bl	BsGet	@
	uxtb	r9, r0	@ D.35612,
	movw	r0, #20008	@ tmp358,
	cmp	r9, #0	@ D.35612,
	strb	r9, [r4, r0]	@ D.35612, <variable>.MP4Vol.video_object_layer_shape
	beq	.L297	@,
	mov	r0, r5	@, tmp628
	movw	r5, #22039	@ tmp360,
	mov	r6, #0	@ tmp361,
	strb	r6, [r4, r5]	@ tmp361, <variable>.MP4SyntaxState.vol_decode_right
.L372:
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp606,
	movt	r3, #:upper16:g_event_report	@ tmp606,
	ldr	r3, [r3, #0]	@ g_event_report.1600, g_event_report
	cmp	r3, r6	@ g_event_report.1600,
	mov	r5, r0	@ BitUsed,
	beq	.L291	@,
	movw	lr, #22960	@ tmp607,
	mov	r2, r6	@, tmp603
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1600
.L291:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L297:
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35619,
	beq	.L358	@,
	mov	r1, #16	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r1, #20072	@ tmp377,
	cmp	r0, #0	@ D.35625,
	str	r0, [r4, r1]	@ D.35625, <variable>.MP4Vol.vop_time_increment_resolution
	movweq	r1, #20068	@ tmp383,
	moveq	r2, #1	@ tmp384,
	streq	r2, [r4, r1]	@ tmp384, <variable>.MP4Vol.vop_time_incr_bits
	beq	.L304	@,
	subs	r0, r0, #1	@ value.1563, D.35625,
	beq	.L300	@,
	mov	r3, r0	@ value, value.1563
.L301:
	add	r9, r9, #1	@ tmp379, n,
	movs	r3, r3, lsr #1	@ value, value,
	uxth	r9, r9	@ n, tmp379
	bne	.L301	@,
	cmp	r9, #0	@ n,
	beq	.L300	@,
.L302:
	add	lr, r3, #1	@ tmp381, n,
	movs	r0, r0, lsr #1	@ value.1563, value.1563,
	uxth	r3, lr	@ n, tmp381
	bne	.L302	@,
	sxth	r3, r3	@ iftmp.499, n
.L303:
	movw	r2, #20068	@ tmp382,
	str	r3, [r4, r2]	@ iftmp.499, <variable>.MP4Vol.vop_time_incr_bits
.L304:
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35638,
	beq	.L358	@,
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #20009	@ tmp395,
	uxtb	sl, r0	@ D.35645,
	strb	sl, [r4, r3]	@ D.35645, <variable>.MP4Vol.fixed_vop_rate
	cmp	sl, #0	@ D.35645,
	bne	.L382	@,
.L306:
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35653,
	beq	.L358	@,
	mov	r1, #13	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r9, #20080	@ tmp411,
	mov	r1, #1	@,
	str	r0, [r4, r9]	@, <variable>.MP4Vol.video_object_layer_width
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35661,
	beq	.L358	@,
	mov	r1, #13	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	fp, #20084	@ tmp422,
	mov	r1, #1	@,
	str	r0, [r4, fp]	@, <variable>.MP4Vol.video_object_layer_height
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35669,
	beq	.L358	@,
	ldr	r3, [r4, r9]	@ D.35677, <variable>.MP4Vol.video_object_layer_width
	cmp	r3, #31	@ D.35677,
	bls	.L310	@,
	ldr	r2, [r4, fp]	@ D.35679, <variable>.MP4Vol.video_object_layer_height
	cmp	r2, #31	@ D.35679,
	bls	.L310	@,
	mul	r3, r3, r2	@ tmp434, D.35677, D.35679
	mul	r7, r8, r7	@ tmp435, MaxHorSize, MaxVerSize
	cmp	r3, r7	@ tmp434, tmp435
	bls	.L311	@,
.L310:
	mov	r0, r5	@, tmp628
	movw	r5, #22039	@ tmp436,
	mov	r6, #0	@ tmp437,
	strb	r6, [r4, r5]	@ tmp437, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp440,
	movt	r2, #:upper16:g_event_report	@ tmp440,
	ldr	r3, [r2, #0]	@ g_event_report.1602, g_event_report
	cmp	r3, r6	@ g_event_report.1602,
	mov	r5, r0	@ BitUsed,
	beq	.L291	@,
	movw	lr, #22960	@ tmp441,
	mov	r2, r6	@, tmp437
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1602
	b	.L291	@
.L358:
	mov	r0, #1	@,
.L360:
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r1, #22039	@ tmp425,
	mov	r0, r5	@, tmp628
	strb	sl, [r4, r1]	@ D.35669, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp429,
	movt	r0, #:upper16:g_event_report	@ tmp429,
	ldr	r3, [r0, #0]	@ g_event_report.1575, g_event_report
	cmp	r3, #0	@ g_event_report.1575,
	beq	.L291	@,
	movw	ip, #22960	@ tmp430,
	mov	r2, sl	@, D.35669
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1575
	b	.L291	@
.L381:
	mov	r0, r5	@, tmp628
	mov	r1, #2	@,
	bl	BsGet	@
	movw	r3, #20006	@ tmp287,
	uxtb	r9, r0	@ D.35553,
	strb	r9, [r4, r3]	@ D.35553, <variable>.MP4Vol.chroma_format
	cmp	r9, #1	@ D.35553,
	beq	.L290	@,
	movw	lr, #22039	@ tmp289,
	mov	r0, r5	@, tmp628
	mov	r5, #0	@ tmp290,
	strb	r5, [r4, lr]	@ tmp290, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L291	@
.L379:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r2, #20001	@ tmp267,
	mov	r1, #3	@,
	strb	r0, [r4, r2]	@, <variable>.MP4Vol.video_object_layer_verid
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r1, #20002	@ tmp270,
	strb	r0, [r4, r1]	@, <variable>.MP4Vol.video_object_layer_priority
	mov	r0, r5	@, tmp628
	mov	r1, #4	@,
	bl	BsGet	@
	movw	r3, #20003	@ tmp277,
	uxtb	r9, r0	@ D.35539,
	strb	r9, [r4, r3]	@ D.35539, <variable>.MP4Vol.aspect_ratio_info
	cmp	r9, #15	@ D.35539,
	bne	.L288	@,
.L380:
	mov	r1, #8	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r2, #20032	@ tmp280,
	mov	r1, #8	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vol.par_width
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r1, #20036	@ tmp282,
	str	r0, [r4, r1]	@, <variable>.MP4Vol.par_height
	b	.L288	@
.L290:
	mov	r1, r9	@, D.35553
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r2, #20007	@ tmp294,
	mov	r1, r9	@, D.35553
	strb	r0, [r4, r2]	@, <variable>.MP4Vol.low_delay
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r1, #20040	@ tmp297,
	cmp	r0, #0	@ D.35561,
	str	r0, [r4, r1]	@ D.35561, <variable>.MP4Vol.vbv_parameters
	beq	.L292	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	sl, #20044	@ tmp299,
	mov	r1, r9	@, D.35553
	str	r0, [r4, sl]	@, <variable>.MP4Vol.first_half_bit_rate
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35568,
	beq	.L375	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	ip, #20048	@ tmp310,
	mov	r1, r9	@, D.35553
	str	r0, [r4, ip]	@, <variable>.MP4Vol.latter_half_bit_rate
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35578,
	beq	.L375	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r3, #20052	@ tmp321,
	mov	r1, r9	@, D.35553
	str	r0, [r4, r3]	@, <variable>.MP4Vol.first_half_vbv_buffer_size
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35586,
	beq	.L375	@,
	mov	r1, #3	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	sl, #20056	@ tmp332,
	mov	r1, #11	@,
	str	r0, [r4, sl]	@, <variable>.MP4Vol.latter_half_vbv_buffer_size
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r2, #20060	@ tmp334,
	mov	r1, r9	@, D.35553
	str	r0, [r4, r2]	@, <variable>.MP4Vol.first_half_vbv_occupancy
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35596,
	beq	.L375	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	ip, #20064	@ tmp345,
	mov	r1, r9	@, D.35553
	str	r0, [r4, ip]	@, <variable>.MP4Vol.latter_half_vbv_occupancy
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35604,
	bne	.L292	@,
.L375:
	mov	r0, r9	@, D.35553
	b	.L360	@
.L300:
	mov	r3, #1	@ iftmp.499,
	b	.L303	@
.L382:
	movw	lr, #20068	@ tmp398,
	mov	r0, r5	@, tmp628
	ldr	r1, [r4, lr]	@, <variable>.MP4Vol.vop_time_incr_bits
	bl	BsGet	@
	movw	ip, #20076	@ tmp400,
	str	r0, [r4, ip]	@, <variable>.MP4Vol.fixed_vop_time_increment
	b	.L306	@
.L311:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r8, #20010	@ tmp444,
	mov	r1, #1	@,
	movw	r7, #20011	@ tmp447,
	strb	r0, [r4, r8]	@, <variable>.MP4Vol.interlaced
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	uxtb	r2, r0	@ D.35690,
	strb	r2, [r4, r7]	@ D.35690, <variable>.MP4Vol.obmc_disable
	cmp	r2, #0	@ D.35690,
	bne	.L312	@,
	movw	r0, #:lower16:g_event_report	@ tmp452,
	movt	r0, #:upper16:g_event_report	@ tmp452,
	movw	r1, #22039	@ tmp449,
	strb	r2, [r4, r1]	@ D.35690, <variable>.MP4SyntaxState.vol_decode_right
	ldr	r3, [r0, #0]	@ g_event_report.1577, g_event_report
	cmp	r3, #0	@ g_event_report.1577,
	beq	.L312	@,
	movw	ip, #22960	@ tmp453,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1577
.L312:
	movw	r3, #20001	@ tmp454,
	mov	r0, r5	@, tmp628
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	movw	r8, #20012	@ tmp457,
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	movne	r1, #2	@,,
	bl	BsGet	@
	uxtb	r7, r0	@ D.35702,
	strb	r7, [r4, r8]	@ D.35702, <variable>.MP4Vol.sprite_enable
	cmp	r7, #0	@ D.35702,
	bne	.L383	@,
.L315:
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #20013	@ tmp504,
	uxtb	r0, r0	@ D.35742,
	strb	r0, [r4, r3]	@ D.35742, <variable>.MP4Vol.not_8_bit
	cmp	r0, #0	@ D.35742,
	beq	.L323	@,
	mov	r0, r5	@, tmp628
	movw	r5, #22039	@ tmp506,
	mov	r6, #0	@ tmp507,
	strb	r6, [r4, r5]	@ tmp507, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp510,
	movt	r1, #:upper16:g_event_report	@ tmp510,
	ldr	r3, [r1, #0]	@ g_event_report.1588, g_event_report
	cmp	r3, r6	@ g_event_report.1588,
	mov	r5, r0	@ BitUsed,
	beq	.L324	@,
	movw	lr, #22960	@ tmp511,
	mov	r2, r6	@, tmp507
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1588
.L324:
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	b	.L291	@
.L383:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp459,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp459,
	ldr	sl, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	sl, sl, #8	@ tmp460, g_VdmCharacter,
	beq	.L384	@,
	sub	ip, r7, #1	@ tmp469, D.35702,
	uxtb	r1, ip	@ tmp470, tmp469
	cmp	r1, #1	@ tmp470,
	bls	.L385	@,
	movw	r2, #22039	@ tmp496,
	mov	r0, r5	@, tmp628
	mov	r6, #0	@ tmp497,
	strb	r6, [r4, r2]	@ tmp497, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp500,
	movt	r1, #:upper16:g_event_report	@ tmp500,
	ldr	r3, [r1, #0]	@ g_event_report.1586, g_event_report
	cmp	r3, r6	@ g_event_report.1586,
	mov	r5, r0	@ BitUsed,
	beq	.L322	@,
	movw	ip, #22960	@ tmp501,
	mov	r2, r6	@, tmp497
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1586
.L322:
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	b	.L291	@
.L385:
	cmp	r7, #2	@ D.35702,
	beq	.L319	@,
.L377:
	mov	r0, r5	@, tmp628
	movw	r5, #22039	@ tmp489,
	mov	r6, #0	@ tmp490,
	strb	r6, [r4, r5]	@ tmp490, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp493,
	movt	r0, #:upper16:g_event_report	@ tmp493,
	ldr	r3, [r0, #0]	@ g_event_report.1583, g_event_report
	cmp	r3, r6	@ g_event_report.1583,
	beq	.L321	@,
	movw	lr, #22960	@ tmp494,
	mov	r2, r6	@, tmp490
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1583
.L321:
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L291	@
.L384:
	mov	r0, r5	@, tmp628
	movw	r5, #22039	@ tmp462,
	strb	sl, [r4, r5]	@ tmp460, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp466,
	movt	r0, #:upper16:g_event_report	@ tmp466,
	ldr	r3, [r0, #0]	@ g_event_report.1579, g_event_report
	cmp	r3, #0	@ g_event_report.1579,
	beq	.L317	@,
	movw	lr, #22960	@ tmp467,
	mov	r2, sl	@, tmp460
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1579
.L317:
	movw	r1, #:lower16:.LC13	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	b	.L291	@
.L323:
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #20014	@ tmp514,
	uxtb	r7, r0	@ D.35751,
	strb	r7, [r4, r2]	@ D.35751, <variable>.MP4Vol.quant_type
	cmp	r7, #0	@ D.35751,
	bne	.L386	@,
.L325:
	movw	r3, #20001	@ tmp539,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	beq	.L331	@,
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r7, #20017	@ tmp542,
	strb	r0, [r4, r7]	@, <variable>.MP4Vol.quarter_sample
.L332:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	ip, #20018	@ tmp548,
	uxtb	r7, r0	@ D.35780,
	strb	r7, [r4, ip]	@ D.35780, <variable>.MP4Vol.complexity_estimation_disable
	cmp	r7, #0	@ D.35780,
	movweq	r1, #:lower16:.LC17	@,
	moveq	r0, #1	@,
	movteq	r1, #:upper16:.LC17	@,
	beq	.L370	@,
	mov	r1, #1	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r3, #20019	@ tmp558,
	mov	r1, #1	@,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.resync_marker_disable
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r2, #20020	@ tmp561,
	uxtb	r7, r0	@ D.35791,
	strb	r7, [r4, r2]	@ D.35791, <variable>.MP4Vol.data_partitioned
	cmp	r7, #0	@ D.35791,
	movwne	r1, #:lower16:.LC18	@,
	movne	r0, #1	@,
	movtne	r1, #:upper16:.LC18	@,
	bne	.L378	@,
	movw	r0, #20001	@ tmp570,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	beq	.L335	@,
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #20021	@ tmp573,
	uxtb	r8, r0	@ D.35802,
	strb	r8, [r4, ip]	@ D.35802, <variable>.MP4Vol.newpred_enable
	cmp	r8, #0	@ D.35802,
	beq	.L336	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	mov	r0, #1	@,
.L370:
	bl	dprint_vfmw	@
	movw	r3, #22039	@ tmp576,
	strb	r7, [r4, r3]	@ D.35791, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp628
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp580,
	movt	r2, #:upper16:g_event_report	@ tmp580,
	ldr	r3, [r2, #0]	@ g_event_report.1596, g_event_report
	cmp	r3, #0	@ g_event_report.1596,
	mov	r5, r0	@ BitUsed,
	beq	.L291	@,
	movw	lr, #22960	@ tmp581,
	mov	r2, r7	@, D.35791
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1596
	b	.L291	@
.L331:
	movw	lr, #20017	@ tmp544,
	mov	r0, #0	@ tmp545,
	strb	r0, [r4, lr]	@ tmp545, <variable>.MP4Vol.quarter_sample
	b	.L332	@
.L386:
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #20015	@ tmp517,
	uxtb	r3, r0	@ D.35756,
	strb	r3, [r4, r2]	@ D.35756, <variable>.MP4Vol.load_intra_quant_mat
	cmp	r3, #0	@ D.35756,
	movweq	r2, #:lower16:.LANCHOR0	@ tmp629,
	movteq	r2, #:upper16:.LANCHOR0	@ tmp629,
	bne	.L387	@,
.L328:
	add	r1, r3, #4	@ tmp632, ivtmp.1538,
	add	ip, r4, r3	@ tmp522, pCtx, ivtmp.1538
	ldr	lr, [r2, r3]	@ tmp526, default_intra_matrix
	add	r7, r4, r1	@ tmp634, pCtx, tmp632
	add	r3, r1, #4	@ ivtmp.1538, tmp632,
	ldr	r0, [r2, r1]	@ tmp637, default_intra_matrix
	add	ip, ip, #19968	@ tmp524, tmp522,
	add	r1, r7, #19968	@ tmp635, tmp634,
	cmp	r3, #256	@ ivtmp.1538,
	str	lr, [ip, #120]	@ tmp526, <variable>.MP4Vol.intra_quant_mat
	str	r0, [r1, #120]	@ tmp637, <variable>.MP4Vol.intra_quant_mat
	bne	.L328	@,
.L327:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r2, #20016	@ tmp528,
	uxtb	r3, r0	@ D.35766,
	strb	r3, [r4, r2]	@ D.35766, <variable>.MP4Vol.load_nonintra_quant_mat
	cmp	r3, #0	@ D.35766,
	ldreq	r1, .L390	@ tmp630,
	bne	.L388	@,
.L330:
	add	r2, r3, #4	@ tmp631, ivtmp.1528,
	add	ip, r4, r3	@ tmp533, pCtx, ivtmp.1528
	ldr	lr, [r1, r3]	@ tmp538, default_inter_matrix
	add	r7, r4, r2	@ tmp639, pCtx, tmp631
	add	r3, r2, #4	@ ivtmp.1528, tmp631,
	ldr	r0, [r1, r2]	@ tmp642, default_inter_matrix
	add	ip, ip, #20224	@ tmp535, tmp533,
	add	r2, r7, #20224	@ tmp640, tmp639,
	cmp	r3, #256	@ ivtmp.1528,
	str	lr, [ip, #120]	@ tmp538, <variable>.MP4Vol.nonintra_quant_mat
	str	r0, [r2, #120]	@ tmp642, <variable>.MP4Vol.nonintra_quant_mat
	bne	.L330	@,
	b	.L325	@
.L319:
	mov	r1, #6	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	r3, #20024	@ tmp479,
	mov	r1, r7	@, D.35702
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.sprite_warping_points
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	ip, #20025	@ tmp482,
	mov	r1, #1	@,
	strb	r0, [r4, ip]	@, <variable>.MP4Vol.sprite_warping_accuracy
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vol.sprite_enable, <variable>.MP4Vol.sprite_enable
	movw	r3, #20026	@ tmp485,
	cmp	r2, #2	@ <variable>.MP4Vol.sprite_enable,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.sprite_brightness_change
	bne	.L377	@,
	b	.L315	@
.L336:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp628
	bl	BsGet	@
	movw	ip, #20022	@ tmp583,
	uxtb	r1, r0	@ D.35811,
	strb	r1, [r4, ip]	@ D.35811, <variable>.MP4Vol.reduced_resolution_vop_enable
	cmp	r1, #0	@ D.35811,
	bne	.L389	@,
.L337:
	mov	r0, r5	@, tmp628
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #20023	@ tmp599,
	uxtb	ip, r0	@ D.35821,
	strb	ip, [r4, r2]	@ D.35821, <variable>.MP4Vol.scalability
	cmp	ip, #0	@ D.35821,
	beq	.L338	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	mov	r0, #1	@,
.L378:
	bl	dprint_vfmw	@
	movw	r0, #22039	@ tmp602,
	mov	r6, #0	@ tmp603,
	strb	r6, [r4, r0]	@ tmp603, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp628
	b	.L372	@
.L338:
	movw	lr, #22040	@ tmp614,
	sub	r2, lr, #1	@ tmp608, tmp608,
	movw	ip, #21269	@ tmp611,
	add	r0, r4, #20480	@, pCtx,
	mov	r3, #1	@ tmp609,
	mov	r1, r6	@, tmp627
	strb	r3, [r4, r2]	@ tmp609, <variable>.MP4SyntaxState.vol_decode_right
	add	r0, r0, #124	@,,
	strb	r3, [r4, lr]	@ tmp609, <variable>.MP4SyntaxState.last_vol_decode_right
	mov	r2, #604	@,
	strb	r3, [r4, ip]	@ tmp609, <variable>.MP4Syntax.vol_decode_over
	bl	memcpy	@
	mov	r0, r5	@, tmp628
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L291	@
.L389:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	movw	r2, #22039	@ tmp586,
	mov	r0, r5	@, tmp628
	strb	r8, [r4, r2]	@ D.35802, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp590,
	movt	r0, #:upper16:g_event_report	@ tmp590,
	ldr	r3, [r0, #0]	@ g_event_report.1598, g_event_report
	cmp	r3, #0	@ g_event_report.1598,
	beq	.L291	@,
	movw	lr, #22960	@ tmp591,
	mov	r2, r8	@, D.35802
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1598
	b	.L291	@
.L335:
	movw	r1, #20022	@ tmp595,
	sub	r3, r1, #1	@ tmp592, tmp592,
	strb	r7, [r4, r1]	@ D.35791, <variable>.MP4Vol.reduced_resolution_vop_enable
	strb	r7, [r4, r3]	@ D.35791, <variable>.MP4Vol.newpred_enable
	b	.L337	@
.L387:
	add	ip, r4, #19968	@, pCtx,
	mov	r0, r5	@, tmp628
	add	r1, ip, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L327	@
.L388:
	add	r3, r4, #20224	@, pCtx,
	mov	r0, r5	@, tmp628
	add	r1, r3, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L325	@
.L391:
	.align	2
.L390:
	.word	.LANCHOR0+256
	.fnend
	.size	Mp4_Syntax_Vol, .-Mp4_Syntax_Vol
	.align	2
	.global	Mp4_Syntax_Vop
	.type	Mp4_Syntax_Vop, %function
Mp4_Syntax_Vop:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #15612	@ tmp184,
	ldr	r3, [r0, r5]	@ D.35299, <variable>.Mp4DecParam.SlcNum
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ ptr, ptr
	cmp	r3, #0	@ D.35299,
	mov	r6, r2	@ len, len
	bne	.L440	@,
	movw	r1, #21269	@ tmp188,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4Syntax.vol_decode_over
	cmp	r0, #0	@ <variable>.MP4Syntax.vol_decode_over,
	movweq	r2, #22041	@ tmp190,
	moveq	r5, #32	@ BitUsed,
	streqb	r0, [r4, r2]	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4SyntaxState.vop_decode_right
	bne	.L441	@,
.L395:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L440:
	mov	r2, r3	@, D.35299
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	movw	r1, #21269	@ tmp188,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4Syntax.vol_decode_over
	mov	r3, #0	@ tmp187,
	str	r3, [r4, r5]	@ tmp187, <variable>.Mp4DecParam.SlcNum
	cmp	r0, #0	@ <variable>.MP4Syntax.vol_decode_over,
	movweq	r2, #22041	@ tmp190,
	moveq	r5, #32	@ BitUsed,
	streqb	r0, [r4, r2]	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4SyntaxState.vop_decode_right
	beq	.L395	@,
.L441:
	add	r5, sp, #12	@ tmp437,,
	add	r8, r4, #20992	@ tmp436, pCtx,
	add	r8, r8, #216	@ tmp436, tmp436,
	mov	r1, r7	@, ptr
	mov	r2, r6	@, len
	mov	r0, r5	@, tmp437
	bl	BsInit	@
	movw	sl, #22041	@ tmp196,
	mov	r0, r8	@, tmp436
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r2, #0	@ tmp197,
	mov	r1, #32	@,
	strb	r2, [r4, sl]	@ tmp197, <variable>.MP4SyntaxState.vop_decode_right
	mov	r0, r5	@, tmp437
	movw	r7, #21208	@ tmp201,
	bl	BsSkip	@
	mov	r1, #2	@,
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	uxtb	r2, r0	@ D.35315,
	mov	r0, #18	@,
	strb	r2, [r4, r7]	@ D.35315, <variable>.MP4Vop.vop_coding_type
	bl	dprint_vfmw	@
	ldrb	r2, [r4, r7]	@ zero_extendqisi2	@ D.35317, <variable>.MP4Vop.vop_coding_type
	cmp	r2, #3	@ D.35317,
	beq	.L442	@,
.L396:
	movw	r0, #21275	@ tmp216,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ D.35331, <variable>.MP4Syntax.coding_mode
	cmp	r3, #1	@ D.35331,
	beq	.L443	@,
	cmp	r3, #2	@ D.35331,
	beq	.L400	@,
.L399:
	movw	ip, #22600	@ tmp218,
	ldr	r1, [r4, ip]	@ <variable>.IPVopErr, <variable>.IPVopErr
	cmp	r1, #1	@ <variable>.IPVopErr,
	beq	.L444	@,
.L401:
	mov	r6, r6, asl #3	@ D.35346, len,
	mov	r7, #0	@ i,
	b	.L404	@
.L446:
	bl	BsPos	@
	mov	r1, #1	@,
	add	r7, r7, r1	@ i, i,
	cmp	r0, r6	@, D.35346
	mov	r0, r5	@, tmp437
	bgt	.L438	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	mov	r0, r5	@, tmp437
	beq	.L402	@,
	bl	BsPos	@
	add	r7, r7, #1	@ i, i,
	cmp	r0, r6	@, D.35346
	bgt	.L438	@,
	cmp	r7, #6400	@ i,
	beq	.L445	@,
.L404:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	cmp	r0, #0	@,
	mov	r0, r5	@, tmp437
	bne	.L446	@,
.L402:
	mov	r0, r5	@, tmp437
	mov	r1, #1	@,
	bl	BsGet	@
	subs	sl, r0, #0	@ D.35355,
	beq	.L447	@,
	movw	r0, #21376	@ tmp234,
	ldr	r1, [r4, r0]	@ D.35362, <variable>.MP4Syntax.syn_vol.vop_time_incr_bits
	cmp	r1, #0	@ D.35362,
	bne	.L448	@,
.L408:
	movw	ip, #21980	@ tmp236,
	mov	r0, r5	@, tmp437
	str	r7, [r4, ip]	@ i, <variable>.MP4Syntax.time_incr
	movw	r7, #21984	@ tmp237,
	str	r1, [r4, r7]	@ time_increment, <variable>.MP4Syntax.time_increment
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r7, r0, #0	@ D.35367,
	bne	.L409	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r2, #22041	@ tmp240,
	mov	r0, r5	@, tmp437
	strb	r7, [r4, r2]	@ D.35367, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp244,
	movt	r1, #:upper16:g_event_report	@ tmp244,
	ldr	r3, [r1, #0]	@ g_event_report.1652, g_event_report
	cmp	r3, #0	@ g_event_report.1652,
	mov	r5, r0	@ BitUsed,
	beq	.L395	@,
	movw	lr, #22960	@ tmp245,
	mov	r2, r7	@, D.35367
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1652
	b	.L395	@
.L442:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp205,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp205,
	ldr	r7, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	r7, r7, #8	@ tmp206, g_VdmCharacter,
	bne	.L396	@,
	mov	r0, r5	@, tmp437
	strb	r7, [r4, sl]	@ tmp206, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp212,
	movt	r3, #:upper16:g_event_report	@ tmp212,
	ldr	r3, [r3, #0]	@ g_event_report.471, g_event_report
	cmp	r3, #0	@ g_event_report.471,
	mov	r5, r0	@ BitUsed,
	beq	.L397	@,
	movw	lr, #22960	@ tmp213,
	mov	r2, r7	@, tmp206
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.471
.L397:
	movw	r1, #:lower16:.LC24	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	b	.L395	@
.L443:
	cmp	r2, #0	@ D.35317,
	beq	.L399	@,
.L400:
	mov	r0, r5	@, tmp437
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L395	@
.L445:
	movw	r2, #22041	@ tmp431,
	mov	r0, r5	@, tmp437
	mov	r5, #0	@ tmp432,
	strb	r5, [r4, r2]	@ tmp432, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r2, r7	@, i
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	mov	r5, r0	@ BitUsed,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L395	@
.L438:
	mov	r0, r5	@, tmp437
	bl	BsPos	@
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	mov	r5, r0	@ BitUsed,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L395	@
.L444:
	cmp	r2, #0	@ D.35317,
	beq	.L401	@,
	b	.L400	@
.L409:
	mov	r0, r5	@, tmp437
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #21209	@ tmp248,
	uxtb	r0, r0	@ D.35374,
	strb	r0, [r4, r3]	@ D.35374, <variable>.MP4Vop.vop_coded
	cmp	r0, #0	@ D.35374,
	beq	.L449	@,
	movw	sl, #21208	@ tmp264,
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ temp.1654, <variable>.MP4Vop.vop_coding_type
	cmp	r3, #1	@ temp.1654,
	beq	.L411	@,
	cmp	r3, #3	@ temp.1654,
	beq	.L450	@,
.L412:
	movw	r2, #21210	@ tmp270,
	mov	lr, #0	@ tmp271,
	strb	lr, [r4, r2]	@ tmp271, <variable>.MP4Vop.vop_rounding_type
.L413:
	movw	r7, #21316	@ tmp276,
	movw	sl, #21211	@ tmp273,
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.video_object_layer_shape, <variable>.MP4Syntax.syn_vol.video_object_layer_shape
	mov	ip, #0	@ tmp274,
	strb	ip, [r4, sl]	@ tmp274, <variable>.MP4Vop.vop_reduced_resolution
	cmp	r3, #2	@ <variable>.MP4Syntax.syn_vol.video_object_layer_shape,
	beq	.L414	@,
	mov	r1, #3	@,
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	movw	r2, #20010	@ tmp281,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vol.interlaced, <variable>.MP4Vol.interlaced
	movw	r1, #21212	@ tmp279,
	cmp	r3, #0	@ <variable>.MP4Vol.interlaced,
	strb	r0, [r4, r1]	@, <variable>.MP4Vop.intra_dc_vlc_thr
	bne	.L451	@,
	movw	sl, #21214	@ tmp292,
	movw	lr, #21213	@ tmp289,
	mov	r0, #2	@ tmp290,
	strb	r3, [r4, sl]	@ <variable>.MP4Vol.interlaced, <variable>.MP4Vop.alternate_vertical_scan_flag
	strb	r0, [r4, lr]	@ tmp290, <variable>.MP4Vop.top_field_first
.L416:
	movw	r3, #21320	@ tmp295,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	sub	r1, r2, #1	@ tmp298, <variable>.MP4Syntax.syn_vol.sprite_enable,
	uxtb	r7, r1	@ tmp299, tmp298
	cmp	r7, #1	@ tmp299,
	bls	.L452	@,
.L417:
	mov	r0, r5	@, tmp437
	mov	r1, #5	@,
	bl	BsGet	@
	movw	r7, #21215	@ tmp329,
	uxtb	sl, r0	@ D.35438,
	strb	sl, [r4, r7]	@ D.35438, <variable>.MP4Vop.vop_quant
	cmp	sl, #0	@ D.35438,
	moveq	r2, #1	@ tmp332,
	streqb	r2, [r4, r7]	@ tmp332, <variable>.MP4Vop.vop_quant
	movw	r7, #21208	@ tmp334,
	ldrb	r2, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	r2, #0	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L453	@,
.L414:
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp376,,,,
	add	r9, r4, #21760	@ tmp371, pCtx,
	add	ip, r9, #152	@ tmp371, tmp371,
	movw	lr, #15612	@ tmp367,
	mov	r7, #19968	@ tmp363,
	ldr	fp, [r4, lr]	@ <variable>.Mp4DecParam.SlcNum, <variable>.Mp4DecParam.SlcNum
	mov	sl, ip	@ tmp375, tmp371
	ldr	r9, [r4, r7]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	stmia	sl!, {r0, r1, r2, r3}	@ tmp375,,,,
	orr	ip, r9, #2	@ tmp366, <variable>.PicIntegrality,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp447,,,,
	str	ip, [r4, r7]	@ tmp366, <variable>.PicIntegrality
	add	ip, fp, #1	@ tmp370, <variable>.Mp4DecParam.SlcNum,
	str	ip, [r4, lr]	@ tmp370, <variable>.Mp4DecParam.SlcNum
	movw	ip, #22041	@ tmp360,
	mov	lr, #1	@ tmp361,
	strb	lr, [r4, ip]	@ tmp361, <variable>.MP4SyntaxState.vop_decode_right
	mov	lr, sl	@ tmp448, tmp375
	stmia	lr!, {r0, r1, r2, r3}	@ tmp448,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp449,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp448,,,,
	ldmia	r8, {r0, r1, r2}	@ tmp449,,,
	stmia	lr, {r0, r1, r2}	@ tmp450,,,
	mov	r0, r5	@, tmp437
	bl	BsPos	@
	movw	r2, #15709	@ tmp398,
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	movw	r1, #22056	@ tmp385,
	mov	r5, r0	@ BitUsed,
	mov	r0, r0, asr #31	@ tmp380, BitUsed,
	cmp	r5, #0	@ BitUsed,
	rsb	r6, r5, r6	@ tmp378, BitUsed, D.35346
	mov	r3, r0, lsr #29	@ tmp381, tmp380,
	add	r0, r5, #7	@ tmp393, BitUsed,
	add	ip, r5, r3	@ tmp382, BitUsed, tmp381
	movge	r0, r5	@ BitUsed, BitUsed
	and	lr, ip, #7	@ tmp383, tmp382,
	ldr	ip, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	movw	r1, #22048	@ tmp395,
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldr	r1, [r4, r1]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	rsb	r3, r3, lr	@ tmp384, tmp381, tmp383
	add	r3, r3, ip	@ tmp389, tmp384, <variable>.BitsObj.offset
	str	r6, [r4, #1284]	@ tmp378, <variable>.bit_len
	add	lr, r1, r0, asr #3	@, tmp397, <variable>.BitsObj.phy_addr, BitUsed,
	strb	r3, [r4, #1282]	@ tmp389, <variable>.bit_offset
	str	lr, [r4, #1292]	@ tmp397, <variable>.phy_address
	bne	.L429	@,
	movw	r0, #15789	@ tmp400,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L454	@,
.L429:
	mov	r0, #0	@ tmp409,
	str	r0, [r4, #1296]	@ tmp409, <variable>.phy_address
	str	r0, [r4, #1288]	@ tmp409, <variable>.bit_len
	strb	r0, [r4, #1283]	@ tmp409, <variable>.bit_offset
.L430:
	movw	lr, #19964	@ tmp428,
	movw	ip, #21208	@ tmp413,
	movw	r0, #21217	@ tmp416,
	movw	r1, #21216	@ tmp419,
	movw	r3, #21215	@ tmp422,
	ldr	r2, [r4, lr]	@ D.35490, <variable>.StreamIDNum
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r2, #0	@ D.35490,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_quant, <variable>.MP4Vop.vop_quant
	movw	r3, #21212	@ tmp425,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [r4, #1280]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	strb	ip, [r4, #1278]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	strb	r0, [r4, #1277]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	strb	r1, [r4, #1281]	@ <variable>.MP4Vop.vop_quant, <variable>.vop_quant
	strb	r3, [r4, #1279]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bne	.L455	@,
.L431:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L395	@
.L447:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r3, #22041	@ tmp227,
	strb	sl, [r4, r3]	@ D.35355, <variable>.MP4SyntaxState.vop_decode_right
	mov	r0, r5	@, tmp437
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp231,
	movt	r2, #:upper16:g_event_report	@ tmp231,
	ldr	r3, [r2, #0]	@ g_event_report.1649, g_event_report
	cmp	r3, #0	@ g_event_report.1649,
	mov	r5, r0	@ BitUsed,
	beq	.L395	@,
	movw	lr, #22960	@ tmp232,
	mov	r2, sl	@, D.35355
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1649
	b	.L395	@
.L448:
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	mov	r1, r0	@ time_increment,
	b	.L408	@
.L455:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L431	@
.L449:
	mov	r3, #19968	@ tmp259,
	mov	r0, r5	@, tmp437
	ldr	ip, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	movw	r2, #21912	@ tmp256,
	movw	r1, #21208	@ tmp250,
	mov	lr, #4	@ tmp251,
	orr	r5, ip, #128	@ tmp262, <variable>.PicIntegrality,
	movw	ip, #22041	@ tmp253,
	str	r5, [r4, r3]	@ tmp262, <variable>.PicIntegrality
	mov	r5, #1	@ tmp254,
	strb	lr, [r4, r2]	@ tmp251, <variable>.MP4Syntax.syn_vop.vop_coding_type
	strb	r5, [r4, ip]	@ tmp254, <variable>.MP4SyntaxState.vop_decode_right
	strb	lr, [r4, r1]	@ tmp251, <variable>.MP4Vop.vop_coding_type
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L395	@
.L450:
	movw	r0, #21320	@ tmp265,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	cmp	r7, #2	@ <variable>.MP4Syntax.syn_vol.sprite_enable,
	bne	.L412	@,
.L411:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	movw	r1, #21210	@ tmp268,
	strb	r0, [r4, r1]	@, <variable>.MP4Vop.vop_rounding_type
	b	.L413	@
.L451:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	movw	ip, #21213	@ tmp284,
	mov	r1, #1	@,
	strb	r0, [r4, ip]	@, <variable>.MP4Vop.top_field_first
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	movw	r3, #21214	@ tmp287,
	strb	r0, [r4, r3]	@, <variable>.MP4Vop.alternate_vertical_scan_flag
	b	.L416	@
.L453:
	mov	r0, r5	@, tmp437
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r3, #21216	@ tmp337,
	uxtb	sl, r0	@ D.35445,
	strb	sl, [r4, r3]	@ D.35445, <variable>.MP4Vop.vop_fcode_forward
	cmp	sl, #0	@ D.35445,
	beq	.L456	@,
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L414	@,
	mov	r0, r5	@, tmp437
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r3, #21217	@ tmp351,
	uxtb	r7, r0	@ D.35456,
	strb	r7, [r4, r3]	@ D.35456, <variable>.MP4Vop.vop_fcode_backward
	cmp	r7, #0	@ D.35456,
	bne	.L414	@,
	add	r3, r3, #824	@ tmp353, tmp353,
	mov	r0, r5	@, tmp437
	strb	r7, [r4, r3]	@ D.35456, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp357,
	movt	r2, #:upper16:g_event_report	@ tmp357,
	ldr	r3, [r2, #0]	@ g_event_report.1671, g_event_report
	cmp	r3, #0	@ g_event_report.1671,
	mov	r5, r0	@ BitUsed,
	beq	.L428	@,
	movw	ip, #22960	@ tmp358,
	mov	r2, r7	@, D.35456
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1671
.L428:
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	b	.L395	@
.L452:
	movw	r0, #21208	@ tmp300,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	ip, #3	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L417	@,
	movw	sl, #21332	@ tmp302,
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points, <variable>.MP4Syntax.syn_vol.sprite_warping_points
	cmp	lr, #0	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points,
	beq	.L417	@,
	add	r7, r4, #20992	@ ivtmp.1634, pCtx,
	mov	fp, #0	@,
	add	r7, r7, #252	@ ivtmp.1634, ivtmp.1634,
	str	fp, [sp, #4]	@, %sfp
.L424:
	mov	r0, r5	@, tmp437
	bl	bs_get_spritetrajectory	@
	subs	sl, r0, #0	@ length,
	moveq	r9, sl	@ x, length
	bne	.L457	@,
.L419:
	mov	r2, #22016	@,
	ldr	r3, [r4, r2]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r3, #500	@ <variable>.MP4Syntax.divx_version,
	bne	.L420	@,
	add	lr, r2, #4	@,,
	movw	ip, #413	@,
	ldr	r0, [r4, lr]	@ <variable>.MP4Syntax.divx_build, <variable>.MP4Syntax.divx_build
	cmp	r0, ip	@ <variable>.MP4Syntax.divx_build,
	beq	.L421	@,
.L420:
	mov	r0, r5	@, tmp437
	mov	r1, #1	@,
	bl	BsSkip	@
.L421:
	mov	r0, r5	@, tmp437
	bl	bs_get_spritetrajectory	@
	subs	fp, r0, #0	@ length.1658,
	moveq	sl, fp	@ y, length.1658
	bne	.L458	@,
.L423:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp437
	bl	BsSkip	@
	stmia	r7, {r9, sl}	@ phole stm
	movw	ip, #21332	@,
	ldr	r1, [sp, #4]	@, %sfp
	add	r7, r7, #8	@ ivtmp.1634, ivtmp.1634,
	add	r0, r1, #1	@,,
	str	r0, [sp, #4]	@, %sfp
	ldr	sl, [sp, #4]	@, %sfp
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points, <variable>.MP4Syntax.syn_vol.sprite_warping_points
	cmp	r3, sl	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points,
	bhi	.L424	@,
	b	.L417	@
.L454:
	movw	r1, #15796	@ tmp402,
	movw	ip, #15792	@ tmp407,
	ldr	lr, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r3, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	strb	r2, [r4, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r2, lr, asl #3	@ tmp404, <variable>.LenInByte,
	str	r2, [r4, #1288]	@ tmp404, <variable>.bit_len
	str	r3, [r4, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L430	@
.L456:
	mov	r0, r5	@, tmp437
	movw	r5, #22041	@ tmp339,
	strb	sl, [r4, r5]	@ D.35445, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	ip, #:lower16:g_event_report	@ tmp343,
	movt	ip, #:upper16:g_event_report	@ tmp343,
	ldr	r3, [ip, #0]	@ g_event_report.1666, g_event_report
	cmp	r3, #0	@ g_event_report.1666,
	mov	r5, r0	@ BitUsed,
	beq	.L427	@,
	movw	lr, #22960	@ tmp344,
	mov	r2, sl	@, D.35445
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1666
.L427:
	movw	r0, #21208	@ tmp346,
	movw	r1, #:lower16:.LC26	@,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@, <variable>.MP4Vop.vop_coding_type
	movt	r1, #:upper16:.LC26	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L395	@
.L457:
	mov	r1, sl	@, length
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	sub	r2, sl, #1	@ tmp307, length,
	movs	r1, r0, asr r2	@, x,
	mov	r9, r0	@ x,
	moveq	r2, #1	@,
	moveq	r1, r2, asl sl	@ tmp309,,
	subeq	r1, r1, #1	@ tmp311, tmp309,
	eoreq	r9, r0, r1	@ D.35420, x, tmp311
	rsbeq	r9, r9, #0	@ x, D.35420
	b	.L419	@
.L458:
	mov	r1, fp	@, length.1658
	mov	r0, r5	@, tmp437
	bl	BsGet	@
	sub	r2, fp, #1	@ tmp320, length.1658,
	movs	r1, r0, asr r2	@, y,
	mov	sl, r0	@ y,
	moveq	r2, #1	@,
	moveq	r1, r2, asl fp	@ tmp322,,
	subeq	r1, r1, #1	@ tmp324, tmp322,
	eoreq	sl, r0, r1	@ D.35433, y, tmp324
	rsbeq	sl, sl, #0	@ y, D.35433
	b	.L423	@
	.fnend
	.size	Mp4_Syntax_Vop, .-Mp4_Syntax_Vop
	.align	2
	.global	Mp4_Syntax_Vo
	.type	Mp4_Syntax_Vo, %function
Mp4_Syntax_Vo:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	add	r5, sp, #4	@ tmp275,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r2	@ len, len
	mov	r6, #1	@ tmp160,
	mov	r0, r5	@, tmp275
	bl	BsInit	@
	movw	ip, #21285	@ tmp159,
	movw	r3, #21286	@ tmp162,
	movw	r2, #21287	@ tmp165,
	strb	r6, [r4, ip]	@ tmp160, <variable>.MP4Syntax.syn_vos.visual_object_verid
	mov	ip, #0	@ tmp157,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.visual_object_priority
	movw	r3, #21288	@ tmp168,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.visual_object_type
	movw	r2, #21289	@ tmp171,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_signal_type
	movw	r3, #21290	@ tmp174,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_format
	movw	r2, #21291	@ tmp177,
	strb	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.video_range
	movw	r0, #21304	@ tmp184,
	movw	r3, #21296	@ tmp180,
	strb	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.colour_description
	movw	r1, #21284	@ tmp156,
	movw	r2, #21300	@ tmp182,
	str	ip, [r4, r0]	@ tmp157, <variable>.MP4Syntax.syn_vos.matrix_coefficients
	mov	r0, r5	@, tmp275
	strb	ip, [r4, r1]	@ tmp157, <variable>.MP4Syntax.syn_vos.is_visual_object_identifier
	mov	r1, #32	@,
	str	ip, [r4, r3]	@ tmp157, <variable>.MP4Syntax.syn_vos.colour_primaries
	str	ip, [r4, r2]	@ tmp157, <variable>.MP4Syntax.syn_vos.transfer_characteristics
	bl	BsSkip	@
	mov	r0, r5	@, tmp275
	mov	r1, r6	@, tmp160
	bl	BsGet	@
	movw	r3, #19976	@ tmp188,
	uxtb	r0, r0	@ D.35223,
	strb	r0, [r4, r3]	@ D.35223, <variable>.MP4Vos.is_visual_object_identifier
	cmp	r0, #0	@ D.35223,
	movweq	r3, #19977	@ tmp196,
	streqb	r6, [r4, r3]	@ tmp160, <variable>.MP4Vos.visual_object_verid
	bne	.L467	@,
	mov	r0, r5	@, tmp275
	mov	r1, #4	@,
	bl	BsGet	@
	movw	r3, #19979	@ tmp200,
	uxtb	r6, r0	@ D.35233,
	strb	r6, [r4, r3]	@ D.35233, <variable>.MP4Vos.visual_object_type
	cmp	r6, #1	@ D.35233,
	beq	.L468	@,
.L462:
	mov	r0, r5	@, tmp275
	movw	r5, #22037	@ tmp220,
	mov	r6, #0	@ tmp221,
	strb	r6, [r4, r5]	@ tmp221, <variable>.MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp224,
	movt	r0, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [r0, #0]	@ g_event_report.467, g_event_report
	cmp	r3, r6	@ g_event_report.467,
	beq	.L464	@,
	movw	lr, #22960	@ tmp225,
	mov	r2, r6	@, tmp221
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.467
.L464:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L467:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19977	@ tmp191,
	mov	r1, #3	@,
	movw	r6, #19978	@ tmp194,
	strb	r0, [r4, r2]	@, <variable>.MP4Vos.visual_object_verid
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, r6]	@, <variable>.MP4Vos.visual_object_priority
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19979	@ tmp200,
	uxtb	r6, r0	@ D.35233,
	strb	r6, [r4, r3]	@ D.35233, <variable>.MP4Vos.visual_object_type
	cmp	r6, #1	@ D.35233,
	bne	.L462	@,
.L468:
	mov	r1, r6	@, D.35233
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	ip, #19980	@ tmp203,
	uxtb	r1, r0	@ D.35238,
	strb	r1, [r4, ip]	@ D.35238, <variable>.MP4Vos.video_signal_type
	cmp	r1, #0	@ D.35238,
	bne	.L469	@,
.L463:
	movw	r1, #22037	@ tmp227,
	mov	ip, #1	@ tmp228,
	mov	r0, r5	@, tmp275
	strb	ip, [r4, r1]	@ tmp228, <variable>.MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	cmp	r0, r7, asl #3	@, len,
	bgt	.L465	@,
	movw	r9, #19976	@ tmp233,
	movw	r8, #19977	@ tmp237,
	ldrb	fp, [r4, r9]	@ zero_extendqisi2	@ <variable>.MP4Vos.is_visual_object_identifier, <variable>.MP4Vos.is_visual_object_identifier
	movw	r7, #19978	@ tmp241,
	ldrb	r9, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_verid, <variable>.MP4Vos.visual_object_verid
	movw	r6, #19979	@ tmp245,
	movw	lr, #19980	@ tmp249,
	movw	ip, #19981	@ tmp253,
	movw	r0, #19982	@ tmp257,
	movw	r1, #19983	@ tmp261,
	movw	r2, #19988	@ tmp265,
	movw	sl, #19992	@ tmp268,
	movw	r3, #19996	@ tmp271,
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_priority, <variable>.MP4Vos.visual_object_priority
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.MP4Vos.visual_object_type, <variable>.MP4Vos.visual_object_type
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_signal_type, <variable>.MP4Vos.video_signal_type
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_format, <variable>.MP4Vos.video_format
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vos.video_range, <variable>.MP4Vos.video_range
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vos.colour_description, <variable>.MP4Vos.colour_description
	ldr	r1, [r4, r2]	@ <variable>.MP4Vos.colour_primaries, <variable>.MP4Vos.colour_primaries
	ldr	r2, [r4, sl]	@ <variable>.MP4Vos.transfer_characteristics, <variable>.MP4Vos.transfer_characteristics
	ldr	sl, [r4, r3]	@ <variable>.MP4Vos.matrix_coefficients, <variable>.MP4Vos.matrix_coefficients
	movw	r3, #21284	@ tmp232,
	strb	fp, [r4, r3]	@, <variable>.MP4Syntax.syn_vos.is_visual_object_identifier
	movw	r3, #21285	@ tmp236,
	strb	r9, [r4, r3]	@ <variable>.MP4Vos.visual_object_verid, <variable>.MP4Syntax.syn_vos.visual_object_verid
	movw	r3, #21304	@ tmp270,
	str	sl, [r4, r3]	@ <variable>.MP4Vos.matrix_coefficients, <variable>.MP4Syntax.syn_vos.matrix_coefficients
	movw	r3, #21286	@ tmp240,
	strb	r8, [r4, r3]	@ <variable>.MP4Vos.visual_object_priority, <variable>.MP4Syntax.syn_vos.visual_object_priority
	movw	r3, #21287	@ tmp244,
	strb	r7, [r4, r3]	@ <variable>.MP4Vos.visual_object_type, <variable>.MP4Syntax.syn_vos.visual_object_type
	movw	r3, #21288	@ tmp248,
	strb	r6, [r4, r3]	@ <variable>.MP4Vos.video_signal_type, <variable>.MP4Syntax.syn_vos.video_signal_type
	movw	r3, #21289	@ tmp252,
	strb	lr, [r4, r3]	@ <variable>.MP4Vos.video_format, <variable>.MP4Syntax.syn_vos.video_format
	movw	r3, #21290	@ tmp256,
	movw	lr, #21291	@ tmp260,
	strb	ip, [r4, r3]	@ <variable>.MP4Vos.video_range, <variable>.MP4Syntax.syn_vos.video_range
	strb	r0, [r4, lr]	@ <variable>.MP4Vos.colour_description, <variable>.MP4Syntax.syn_vos.colour_description
	movw	r3, #21300	@ tmp267,
	movw	r0, #21296	@ tmp264,
	str	r2, [r4, r3]	@ <variable>.MP4Vos.transfer_characteristics, <variable>.MP4Syntax.syn_vos.transfer_characteristics
	str	r1, [r4, r0]	@ <variable>.MP4Vos.colour_primaries, <variable>.MP4Syntax.syn_vos.colour_primaries
.L465:
	mov	r0, r5	@, tmp275
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L464	@
.L469:
	mov	r1, #3	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	ip, #19981	@ tmp206,
	mov	r1, r6	@, D.35233
	strb	r0, [r4, ip]	@, <variable>.MP4Vos.video_format
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19982	@ tmp209,
	mov	r1, r6	@, D.35233
	strb	r0, [r4, r3]	@, <variable>.MP4Vos.video_range
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19983	@ tmp212,
	uxtb	r0, r0	@ D.35247,
	strb	r0, [r4, r2]	@ D.35247, <variable>.MP4Vos.colour_description
	cmp	r0, #0	@ D.35247,
	beq	.L463	@,
	mov	r1, #8	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19988	@ tmp215,
	mov	r1, #8	@,
	str	r0, [r4, r3]	@, <variable>.MP4Vos.colour_primaries
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19992	@ tmp217,
	mov	r1, #8	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vos.transfer_characteristics
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r1, #19996	@ tmp219,
	str	r0, [r4, r1]	@, <variable>.MP4Vos.matrix_coefficients
	b	.L463	@
	.fnend
	.size	Mp4_Syntax_Vo, .-Mp4_Syntax_Vo
	.align	2
	.global	Mp4_Syntax_ShortHeader
	.type	Mp4_Syntax_ShortHeader, %function
Mp4_Syntax_ShortHeader:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #15612	@ tmp153,
	ldr	r7, [r0, r5]	@ D.34989, <variable>.Mp4DecParam.SlcNum
	.pad #32
	sub	sp, sp, #32	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r8, r1	@ ptr, ptr
	cmp	r7, #0	@ D.34989,
	mov	r6, r2	@ len, len
	bne	.L494	@,
.L472:
	add	r5, sp, #4	@ tmp411,,
	mov	r2, r6	@, len
	mov	r1, r8	@, ptr
	mov	r0, r5	@, tmp411
	bl	BsInit	@
	add	r0, r4, #20992	@, pCtx,
	add	r0, r0, #216	@,,
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r1, #22	@,
	mov	r0, r5	@, tmp411
	bl	BsSkip	@
	mov	r1, #13	@,
	mov	r0, r5	@, tmp411
	bl	BsSkip	@
	mov	r1, #3	@,
	mov	r0, r5	@, tmp411
	bl	BsGet	@
	movw	r2, #21218	@ tmp162,
	uxtb	r1, r0	@ D.35001,
	strb	r1, [r4, r2]	@ D.35001, <variable>.MP4Vop.source_format
	sub	r3, r1, #1	@ tmp164, D.35001,
	cmp	r3, #3	@ tmp164,
	ldrls	pc, [pc, r3, asl #2]	@ tmp164
	b	.L473	@
.L478:
	.word	.L474
	.word	.L475
	.word	.L476
	.word	.L477
.L477:
	movw	lr, #21219	@ tmp195,
	mov	ip, #18	@ tmp196,
	movw	r0, #21220	@ tmp198,
	strb	ip, [r4, lr]	@ tmp196, <variable>.MP4Vop.num_gobs_invop
	movw	r3, #21976	@ tmp201,
	movw	lr, #21972	@ tmp203,
	mov	r2, #88	@ tmp199,
	mov	r1, #704	@ tmp202,
	mov	ip, #576	@ tmp204,
	strb	r2, [r4, r0]	@ tmp199, <variable>.MP4Vop.num_mb_ingob
	str	r1, [r4, r3]	@ tmp202, <variable>.MP4Syntax.image_width
	str	ip, [r4, lr]	@ tmp204, <variable>.MP4Syntax.image_height
.L479:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp411
	bl	BsGet	@
	movw	r1, #21275	@ tmp215,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.coding_mode, <variable>.MP4Syntax.coding_mode
	movw	r3, #21208	@ tmp213,
	cmp	r2, #2	@ <variable>.MP4Syntax.coding_mode,
	uxtb	r0, r0	@ D.35011,
	strb	r0, [r4, r3]	@ D.35011, <variable>.MP4Vop.vop_coding_type
	beq	.L481	@,
	movw	ip, #22600	@ tmp217,
	ldr	lr, [r4, ip]	@ <variable>.IPVopErr, <variable>.IPVopErr
	cmp	lr, #1	@ <variable>.IPVopErr,
	bne	.L482	@,
	cmp	r0, #0	@ D.35011,
	bne	.L481	@,
.L482:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp411
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r5	@, tmp411
	movw	r8, #21215	@ tmp222,
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r6, asl #3	@ D.35029, len,
	uxtb	r0, r0	@ D.35021,
	strb	r0, [r4, r8]	@ D.35021, <variable>.MP4Vop.vop_quant
	cmp	r0, #0	@ D.35021,
	mov	r0, r5	@, tmp411
	moveq	r2, #1	@ tmp225,
	streqb	r2, [r4, r8]	@ tmp225, <variable>.MP4Vop.vop_quant
	bl	BsSkip	@
	mov	r8, #0	@ i,
.L486:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp411
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L495	@,
	add	r8, r8, #1	@ i, i,
.L491:
	cmp	r8, #15	@ i,
	bls	.L487	@,
	mov	r0, r5	@, tmp411
	movw	r5, #22041	@ tmp237,
	mov	r6, #0	@ tmp238,
	strb	r6, [r4, r5]	@ tmp238, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp241,
	movt	r3, #:upper16:g_event_report	@ tmp241,
	ldr	r3, [r3, #0]	@ g_event_report.1727, g_event_report
	cmp	r3, r6	@ g_event_report.1727,
	mov	r5, r0	@ BitUsed,
	beq	.L480	@,
	movw	r1, #22960	@ tmp242,
	mov	r2, r6	@, tmp238
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1727
.L480:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L476:
	movw	r0, #21219	@ tmp185,
	mov	r2, #18	@ tmp186,
	movw	r3, #21220	@ tmp188,
	strb	r2, [r4, r0]	@ tmp186, <variable>.MP4Vop.num_gobs_invop
	movw	lr, #21976	@ tmp191,
	movw	r0, #21972	@ tmp193,
	mov	r1, #22	@ tmp189,
	mov	ip, #352	@ tmp192,
	mov	r2, #288	@ tmp194,
	strb	r1, [r4, r3]	@ tmp189, <variable>.MP4Vop.num_mb_ingob
	str	ip, [r4, lr]	@ tmp192, <variable>.MP4Syntax.image_width
	str	r2, [r4, r0]	@ tmp194, <variable>.MP4Syntax.image_height
	b	.L479	@
.L475:
	movw	r3, #21219	@ tmp175,
	mov	r1, #9	@ tmp176,
	movw	lr, #21220	@ tmp178,
	strb	r1, [r4, r3]	@ tmp176, <variable>.MP4Vop.num_gobs_invop
	movw	r0, #21976	@ tmp181,
	movw	r3, #21972	@ tmp183,
	mov	ip, #11	@ tmp179,
	mov	r2, #176	@ tmp182,
	mov	r1, #144	@ tmp184,
	strb	ip, [r4, lr]	@ tmp179, <variable>.MP4Vop.num_mb_ingob
	str	r2, [r4, r0]	@ tmp182, <variable>.MP4Syntax.image_width
	str	r1, [r4, r3]	@ tmp184, <variable>.MP4Syntax.image_height
	b	.L479	@
.L474:
	movw	lr, #21219	@ tmp165,
	mov	ip, #6	@ tmp166,
	movw	r0, #21220	@ tmp168,
	strb	ip, [r4, lr]	@ tmp166, <variable>.MP4Vop.num_gobs_invop
	movw	r3, #21976	@ tmp171,
	movw	lr, #21972	@ tmp173,
	mov	r2, #8	@ tmp169,
	mov	r1, #128	@ tmp172,
	mov	ip, #96	@ tmp174,
	strb	r2, [r4, r0]	@ tmp169, <variable>.MP4Vop.num_mb_ingob
	str	r1, [r4, r3]	@ tmp172, <variable>.MP4Syntax.image_width
	str	ip, [r4, lr]	@ tmp174, <variable>.MP4Syntax.image_height
	b	.L479	@
.L473:
	mov	r0, r5	@, tmp411
	movw	r5, #22041	@ tmp205,
	mov	r6, #0	@ tmp206,
	strb	r6, [r4, r5]	@ tmp206, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp209,
	movt	r1, #:upper16:g_event_report	@ tmp209,
	ldr	r3, [r1, #0]	@ g_event_report.440, g_event_report
	cmp	r3, r6	@ g_event_report.440,
	mov	r5, r0	@ BitUsed,
	beq	.L480	@,
	movw	ip, #22960	@ tmp210,
	mov	r2, r6	@, tmp206
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.440
	b	.L480	@
.L495:
	mov	r0, r5	@, tmp411
	add	r8, r8, #1	@ i, i,
	bl	BsPos	@
	mov	r1, #8	@,
	cmp	r0, r6	@, D.35029
	mov	r0, r5	@, tmp411
	bgt	.L496	@,
	bl	BsSkip	@
	cmp	r8, #15	@ i,
	bls	.L486	@,
	b	.L491	@
.L494:
	mov	r2, r7	@, D.34989
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r7, [r4, r5]	@ prephitmp.1713, <variable>.Mp4DecParam.SlcNum
	b	.L472	@
.L487:
	movw	ip, #15612	@ tmp251,
	mov	r2, #19968	@ tmp247,
	ldr	lr, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	ldr	r3, [r4, ip]	@ <variable>.Mp4DecParam.SlcNum, <variable>.Mp4DecParam.SlcNum
	orr	r1, lr, #2	@ tmp250, <variable>.PicIntegrality,
	str	r1, [r4, r2]	@ tmp250, <variable>.PicIntegrality
	add	r0, r3, #1	@ tmp254, <variable>.Mp4DecParam.SlcNum,
	movw	r2, #22041	@ tmp244,
	str	r0, [r4, ip]	@ tmp254, <variable>.Mp4DecParam.SlcNum
	mov	r0, r5	@, tmp411
	movw	r5, #21216	@ tmp255,
	mov	lr, #1	@ tmp245,
	strb	lr, [r4, r5]	@ tmp245, <variable>.MP4Vop.vop_fcode_forward
	strb	lr, [r4, r2]	@ tmp245, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r2, r7, asl #3	@ tmp410, prephitmp.1713,
	rsb	r3, r7, r2	@ tmp262, prephitmp.1713, tmp410
	add	r3, r4, r3, asl #2	@, tmp264, pCtx, tmp262,
	mov	r1, r0, asr #31	@ tmp275, BitUsed,
	mov	r5, r0	@ BitUsed,
	rsb	r6, r0, r6	@ tmp266, BitUsed, D.35029
	str	r6, [r3, #1284]	@ tmp266, <variable>.bit_len
	mov	r1, r1, lsr #29	@ tmp276, tmp275,
	cmp	r5, #0	@ BitUsed,
	add	ip, r0, r1	@ tmp277, BitUsed, tmp276
	and	r0, ip, #7	@ tmp278, tmp277,
	add	ip, r5, #7	@ tmp295, BitUsed,
	rsb	r1, r1, r0	@ tmp279, tmp276, tmp278
	movw	r0, #22056	@ tmp280,
	ldr	r0, [r4, r0]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	movge	ip, r5	@ BitUsed, BitUsed
	add	r1, r1, r0	@ tmp284, tmp279, <variable>.BitsObj.offset
	strb	r1, [r3, #1282]	@ tmp284, <variable>.bit_offset
	movw	r1, #22048	@ tmp297,
	ldr	r0, [r4, r1]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	add	r1, r0, ip, asr #3	@, tmp299, <variable>.BitsObj.phy_addr, BitUsed,
	movw	ip, #15709	@ tmp300,
	str	r1, [r3, #1292]	@ tmp299, <variable>.phy_address
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #0	@ <variable>.IsLastSeg,
	beq	.L497	@,
.L488:
	rsb	lr, r7, r2	@ tmp335, prephitmp.1713, tmp410
	mov	r1, #0	@ tmp339,
	add	ip, r4, lr, asl #2	@, tmp337, pCtx, tmp335,
	add	lr, ip, #1280	@ tmp355, tmp337,
	add	r3, ip, #1264	@ tmp346, tmp337,
	add	r3, r3, #9	@ tmp346, tmp346,
	add	ip, lr, #4	@ tmp338, tmp338,
	add	r0, lr, #12	@ tmp355, tmp355,
	str	r1, [ip, #4]	@ tmp339, <variable>.bit_len
	str	r1, [r0, #4]	@ tmp339, <variable>.phy_address
	strb	r1, [r3, #10]	@ tmp339, <variable>.bit_offset
.L489:
	rsb	lr, r7, r2	@ tmp360, prephitmp.1713, tmp410
	movw	r1, #21208	@ tmp364,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	movw	r3, #21217	@ tmp374,
	add	ip, r4, lr, asl #2	@, tmp362, pCtx, tmp360,
	movw	r1, #21216	@ tmp384,
	add	r7, ip, #1264	@ tmp363, tmp362,
	movw	ip, #21215	@ tmp394,
	add	r7, r7, #8	@ tmp363, tmp363,
	strb	r0, [r7, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	movw	r3, #21212	@ tmp404,
	strb	r2, [r7, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	ldrb	lr, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	movw	r1, #19964	@ tmp407,
	strb	lr, [r7, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_quant, <variable>.MP4Vop.vop_quant
	strb	r0, [r7, #9]	@ <variable>.MP4Vop.vop_quant, <variable>.vop_quant
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	r2, [r7, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	ldr	r2, [r4, r1]	@ D.35068, <variable>.StreamIDNum
	cmp	r2, #0	@ D.35068,
	bne	.L498	@,
.L490:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L480	@
.L481:
	mov	r0, r5	@, tmp411
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L480	@
.L497:
	movw	ip, #15789	@ tmp302,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	bne	.L488	@,
	movw	lr, #15796	@ tmp311,
	ldr	r0, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	lr, #15792	@ tmp330,
	strb	r1, [r3, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	ip, r0, asl #3	@ tmp313, <variable>.LenInByte,
	str	ip, [r3, #1288]	@ tmp313, <variable>.bit_len
	ldr	r1, [r4, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r3, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L489	@
.L498:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L490	@
.L496:
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L480	@
	.fnend
	.size	Mp4_Syntax_ShortHeader, .-Mp4_Syntax_ShortHeader
	.align	2
	.global	Mp4_Syntax_Gop
	.type	Mp4_Syntax_Gop, %function
Mp4_Syntax_Gop:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #32
	sub	sp, sp, #32	@,,
	add	r4, sp, #4	@ tmp142,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r0, r4	@, tmp142
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r4	@, tmp142
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	mov	r1, #6	@,
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	mov	r0, r4	@, tmp142
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r6, r0, #0	@ D.34953,
	bne	.L500	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	movw	r0, #22038	@ tmp148,
	strb	r6, [r5, r0]	@ D.34953, <variable>.MP4SyntaxState.gop_decode_right
	mov	r0, r4	@, tmp142
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp152,
	movt	r3, #:upper16:g_event_report	@ tmp152,
	ldr	r3, [r3, #0]	@ g_event_report.437, g_event_report
	cmp	r3, #0	@ g_event_report.437,
	mov	r4, r0	@ BitUsed,
	beq	.L501	@,
	movw	r1, #22960	@ tmp153,
	mov	r2, r6	@, D.34953
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.437
.L501:
	mov	r0, r4	@, BitUsed
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L500:
	mov	r1, #6	@,
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	mov	r0, r4	@, tmp142
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #21270	@ tmp157,
	mov	r1, #1	@,
	strb	r0, [r5, r2]	@, <variable>.MP4Syntax.closed_gov
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	movw	r3, #22038	@ tmp162,
	movw	r2, #21271	@ tmp160,
	mov	ip, #1	@ tmp163,
	strb	ip, [r5, r3]	@ tmp163, <variable>.MP4SyntaxState.gop_decode_right
	strb	r0, [r5, r2]	@, <variable>.MP4Syntax.broken_link
	mov	r0, r4	@, tmp142
	bl	BsPos	@
	mov	r4, r0	@ BitUsed,
	b	.L501	@
	.fnend
	.size	Mp4_Syntax_Gop, .-Mp4_Syntax_Gop
	.align	2
	.global	MPEG4DEC_GetImageBuffer
	.type	MPEG4DEC_GetImageBuffer, %function
MPEG4DEC_GetImageBuffer:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #22960	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.37273,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.37276,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #22528	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #80	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.37276,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	MPEG4DEC_GetImageBuffer, .-MPEG4DEC_GetImageBuffer
	.align	2
	.global	MP4_SetImgFormat
	.type	MP4_SetImgFormat, %function
MP4_SetImgFormat:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r1, #22960	@ tmp136,
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #22988	@ tmp138,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	ldmeqfd	sp!, {r4, pc}	@
	movw	r2, #21976	@ tmp140,
	ldr	r3, [r4, r2]	@ D.37092, <variable>.MP4Syntax.image_width
	cmp	r3, #0	@ D.37092,
	beq	.L510	@,
	movw	r2, #21972	@ tmp141,
	ldr	ip, [r4, r2]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	cmp	ip, #0	@ <variable>.MP4Syntax.image_height,
	beq	.L510	@,
	ldr	r1, [r0, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	lr, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, r3	@ <variable>.image_width, D.37092
	strls	r1, [r0, #152]	@, <variable>.image_width, <variable>.disp_width
	strhi	r3, [r0, #152]	@, D.37092, <variable>.disp_width
	ldr	r3, [r4, r2]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	cmp	lr, r3	@ <variable>.image_height, <variable>.MP4Syntax.image_height
	strls	lr, [r0, #156]	@, <variable>.image_height, <variable>.disp_height
	strhi	r3, [r0, #156]	@, <variable>.MP4Syntax.image_height, <variable>.disp_height
	b	.L511	@
.L510:
	ldr	r2, [r0, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	str	r2, [r0, #152]	@ <variable>.image_width, <variable>.disp_width
	str	ip, [r0, #156]	@ <variable>.image_height, <variable>.disp_height
.L511:
	mov	lr, #8	@ tmp156,
	mov	r3, #0	@ tmp152,
	mov	ip, #2	@ tmp151,
	mov	r1, #1	@ tmp159,
	str	lr, [r0, #308]	@ tmp156, <variable>.ImageDnr.QP_U
	str	lr, [r0, #304]	@ tmp156, <variable>.ImageDnr.QP_Y
	strb	r3, [r0, #295]	@ tmp152, <variable>.ImageDnr.use_pic_qp_en
	str	ip, [r0, #300]	@ tmp151, <variable>.ImageDnr.video_standard
	strb	r1, [r0, #293]	@ tmp159, <variable>.ImageDnr.chroma_format_idc
	strb	r3, [r0, #288]	@ tmp152, <variable>.ImageDnr.pic_structure
	str	lr, [r0, #312]	@ tmp156, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	MP4_SetImgFormat, .-MP4_SetImgFormat
	.align	2
	.global	Mp4_ClearUsrData
	.type	Mp4_ClearUsrData, %function
Mp4_ClearUsrData:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pUserData, pUserData
	mov	r6, r0	@ ChanID, ChanID
	ldr	r1, [r1, #0]	@,* pUserData
	mov	r5, #0	@ tmp139,
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #4]	@,
	str	r5, [r4, #0]	@ tmp139,* pUserData
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #8]	@,
	str	r5, [r4, #4]	@ tmp139,
	bl	FreeUsdByDec	@
	str	r5, [r4, #8]	@ tmp139,
	mov	r0, r6	@, ChanID
	ldr	r1, [r4, #12]	@,
	bl	FreeUsdByDec	@
	str	r5, [r4, #12]	@ tmp139,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Mp4_ClearUsrData, .-Mp4_ClearUsrData
	.align	2
	.global	MPEG4DEC_RecycleImage
	.type	MPEG4DEC_RecycleImage, %function
MPEG4DEC_RecycleImage:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	mvneq	r0, #1	@ D.37072,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r5, #22960	@ tmp139,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	moveq	r0, #1	@ D.37072,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp146,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #1	@ D.37072,
	str	r7, [r6, #196]	@ tmp146, <variable>.p_usrdat
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	MPEG4DEC_RecycleImage, .-MPEG4DEC_RecycleImage
	.align	2
	.global	Vdm_Mem_Move
	.type	Vdm_Mem_Move, %function
Vdm_Mem_Move:
	.fnstart
.LFB1617:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #4
	sub	sp, sp, #4	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pCur, pCur
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	mov	r7, r2	@ dst, dst
	mov	fp, r3	@ dst_2d, dst_2d
	ldr	r8, [sp, #40]	@ src, src
	ldr	r9, [sp, #44]	@ ImgWidth, ImgWidth
	movw	r6, #22060	@ tmp161,
	ldr	sl, [sp, #48]	@ ImgHeight, ImgHeight
	bl	dprint_vfmw	@
	movw	r0, #15628	@ tmp145,
	str	r7, [r4, #1252]	@ dst, <variable>.Mp4DecParam.CurPicPhyAddr
	str	fp, [r4, r0]	@ dst_2d, <variable>.Mp4DecParam.DispFramePhyAddr
	add	r9, r9, #15	@ tmp148, ImgWidth,
	ldr	r3, [r5, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	add	sl, sl, #15	@ tmp151, ImgHeight,
	movw	ip, #1204	@ tmp147,
	movw	r1, #1206	@ tmp150,
	str	r8, [r4, #1256]	@ src, <variable>.Mp4DecParam.FwdRefPicPhyAddr
	mov	r9, r9, lsr #4	@ tmp149, tmp148,
	str	r3, [r4, #1264]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.CurPmvPhyAddr
	mov	sl, sl, lsr #4	@ tmp152, tmp151,
	strh	r9, [r4, ip]	@ movhi	@ tmp149, <variable>.Mp4DecParam.PicWidthInMb
	movw	r0, #15640	@ tmp153,
	strh	sl, [r4, r1]	@ movhi	@ tmp152, <variable>.Mp4DecParam.PicHeightInMb
	add	r1, r4, #1040	@ D.36371, pCtx,
	ldr	r2, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r4, r6]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #20]	@ <variable>.Stride, <variable>.Stride
	str	ip, [r4, r0]	@ <variable>.Stride, <variable>.Mp4DecParam.VahbStride
	movw	r0, #15644	@ tmp156,
	ldr	r2, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [r2, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	movw	r2, #15700	@ tmp159,
	str	ip, [r4, r0]	@ <variable>.ChromOffset, <variable>.Mp4DecParam.uv_offset
	ldr	r0, [r3, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r1, [r4, #1036]	@ D.36371, <variable>.pMp4DecParam
	str	r0, [r4, r2]	@ <variable>.s32Compress_en, <variable>.Mp4DecParam.Compress_en
	ldr	r2, [r3, #708]	@ D.36372, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.36372,
	beq	.L524	@,
	cmp	r2, #2	@ D.36372,
	beq	.L525	@,
.L522:
	mov	r0, #1	@ tmp178,
	strb	r0, [r4, #1198]	@ tmp178, <variable>.Mp4DecParam.IsNvopCopy
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L524:
	cmp	r1, #0	@ D.36371,
	beq	.L522	@,
	movw	r3, #22960	@ tmp165,
	movw	lr, #22988	@ tmp167,
	mov	r2, #0	@ tmp164,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	str	r2, [r4, #1036]	@ tmp164, <variable>.pMp4DecParam
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pCtx
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	MP4_ClearCurPic	@
.L525:
	ldr	r2, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r2, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L522	@,
	cmp	r1, #0	@ D.36371,
	beq	.L522	@,
	movw	lr, #22988	@ tmp173,
	movw	r1, #22960	@ tmp171,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, #0	@ tmp170,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	str	r2, [r4, #1036]	@ tmp170, <variable>.pMp4DecParam
	bl	FSP_SetDisplay	@
	ldr	ip, [r4, r6]	@ temp.1900, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	ldr	r3, [ip, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, r3, #1	@ tmp177, <variable>.stDisParams.s32DisNums,
	str	r1, [ip, #712]	@ tmp177, <variable>.stDisParams.s32DisNums
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	MP4_ClearCurPic	@
	.fnend
	.size	Vdm_Mem_Move, .-Vdm_Mem_Move
	.align	2
	.global	Mp4_Set_DecPar
	.type	Mp4_Set_DecPar, %function
Mp4_Set_DecPar:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #100
	sub	sp, sp, #100	@,,
	mov	r5, r2	@ ptr_strm_para, ptr_strm_para
	mov	r1, #48	@,
	mov	r4, r0	@ pCtx, pCtx
	add	r0, sp, r1	@,,
	bl	__memzero	@
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L554	@,
	movw	r3, #22048	@ tmp208,
	movw	sl, #22044	@ tmp210,
	ldr	r9, [r4, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	r8, #22052	@ tmp219,
	ldr	lr, [r4, sl]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	movw	r2, #22056	@ tmp216,
	ldr	r7, [r4, r8]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	and	r1, r9, #3	@ tmp213, <variable>.BitsObj.phy_addr,
	ldr	r6, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	fp, [r4, r2]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	str	lr, [r4, #1056]	@ <variable>.BitsObj.vir_addr, <variable>.Mp4DecParam.StreamVirAddr
	bic	r0, r6, #3	@ tmp207, <variable>.PhyAddr,
	str	r9, [r4, #1220]	@ <variable>.BitsObj.phy_addr, <variable>.Mp4DecParam.StreamPhyAddr
	rsb	ip, fp, r7, asl #3	@, tmp224, <variable>.BitsObj.offset, <variable>.BitsObj.len,
	str	r0, [r4, #1208]	@ tmp207, <variable>.Mp4DecParam.StreamBaseAddr
	add	sl, fp, r1, asl #3	@, tmp218, <variable>.BitsObj.offset, tmp213,
	str	ip, [r4, #1236]	@ tmp224, <variable>.Mp4DecParam.StreamLength
	mov	r0, #0	@ tmp232,
	str	sl, [r4, #1228]	@ tmp218, <variable>.Mp4DecParam.StreamBitOffset
	ldr	r8, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r8, [r4, #1224]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.StreamPhyAddr
	ldr	r7, [r5, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r7, [r4, #1060]	@ <variable>.VirAddr, <variable>.Mp4DecParam.StreamVirAddr
	ldr	lr, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	ip, lr, #3	@ tmp227, <variable>.PhyAddr,
	mov	r6, ip, asl #3	@ tmp229, tmp227,
	str	r6, [r4, #1232]	@ tmp229, <variable>.Mp4DecParam.StreamBitOffset
	ldr	r1, [r5, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r0, [r4, #1216]	@ tmp232, <variable>.Mp4DecParam.StreamFirstIsLastFlag
	mov	r3, r1, asl #3	@ tmp231, <variable>.LenInByte,
	str	r3, [r4, #1240]	@ tmp231, <variable>.Mp4DecParam.StreamLength
.L528:
	movw	sl, #21976	@ tmp234,
	movw	r1, #21912	@ tmp243,
	ldr	r2, [r4, sl]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r3, #21972	@ tmp239,
	ldrb	r8, [r4, r1]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	r7, #21322	@ tmp246,
	add	r0, r2, #15	@ tmp235, <variable>.MP4Syntax.image_width,
	ldr	r3, [r4, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	movw	r6, #21277	@ tmp249,
	movw	r5, #21919	@ tmp252,
	str	r8, [sp, #20]	@, %sfp
	movw	lr, #21924	@ tmp255,
	movw	ip, #21923	@ tmp258,
	movw	fp, #21376	@ tmp261,
	movw	r9, #21920	@ tmp264,
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.quant_type, <variable>.MP4Syntax.syn_vol.quant_type
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.MP4Syntax.is_short_header, <variable>.MP4Syntax.is_short_header
	movw	r1, #21921	@ tmp267,
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_quant, <variable>.MP4Syntax.syn_vop.vop_quant
	add	sl, r3, #15	@ tmp240, <variable>.MP4Syntax.image_height,
	ldrb	r5, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.num_mb_ingob, <variable>.MP4Syntax.syn_vop.num_mb_ingob
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.num_gobs_invop, <variable>.MP4Syntax.syn_vop.num_gobs_invop
	mov	sl, sl, lsr #4	@ tmp242, tmp240,
	ldr	ip, [r4, fp]	@ <variable>.MP4Syntax.syn_vol.vop_time_incr_bits, <variable>.MP4Syntax.syn_vol.vop_time_incr_bits
	mov	fp, r0, lsr #4	@ tmp237, tmp235,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_fcode_forward, <variable>.MP4Syntax.syn_vop.vop_fcode_forward
	movw	r9, #21916	@ tmp270,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.intra_dc_vlc_thr
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_fcode_backward, <variable>.MP4Syntax.syn_vop.vop_fcode_backward
	str	r9, [sp, #24]	@, %sfp
	movw	r9, #21327	@ tmp273,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vol.resync_marker_disable
	str	r9, [sp, #28]	@, %sfp
	movw	r9, #21325	@ tmp276,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vol.quarter_sample
	str	r9, [sp, #32]	@, %sfp
	movw	r9, #21914	@ tmp279,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_rounding_type
	str	r9, [sp, #36]	@, %sfp
	movw	r9, #21918	@ tmp282,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.alternate_vertical_scan_flag
	str	r9, [sp, #40]	@, %sfp
	movw	r9, #21917	@ tmp285,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.top_field_first
	str	r9, [sp, #44]	@, %sfp
	movw	r9, #1204	@ tmp233,
	strh	fp, [r4, r9]	@ movhi	@, <variable>.Mp4DecParam.PicWidthInMb
	movw	r9, #1206	@ tmp238,
	strh	sl, [r4, r9]	@ movhi	@ tmp242, <variable>.Mp4DecParam.PicHeightInMb
	movw	r9, #21320	@ tmp320,
	strb	r8, [r4, #1041]	@ <variable>.MP4Syntax.syn_vol.quant_type, <variable>.Mp4DecParam.PicQuantType
	movw	sl, #21318	@ tmp288,
	strb	r7, [r4, #1042]	@ <variable>.MP4Syntax.is_short_header, <variable>.Mp4DecParam.IsShortHeader
	movw	r8, #22008	@ tmp291,
	strb	r6, [r4, #1043]	@ <variable>.MP4Syntax.syn_vop.vop_quant, <variable>.Mp4DecParam.VopQuant
	movw	r7, #22004	@ tmp293,
	strb	r5, [r4, #1044]	@ <variable>.MP4Syntax.syn_vop.num_mb_ingob, <variable>.Mp4DecParam.GobMbNum
	strb	lr, [r4, #1045]	@ <variable>.MP4Syntax.syn_vop.num_gobs_invop, <variable>.Mp4DecParam.VopGobNum
	strb	ip, [r4, #1046]	@ <variable>.MP4Syntax.syn_vol.vop_time_incr_bits, <variable>.Mp4DecParam.BitsOfVopTimeIncr
	strb	r0, [r4, #1047]	@ <variable>.MP4Syntax.syn_vop.vop_fcode_forward, <variable>.Mp4DecParam.FwdFcode
	strb	r1, [r4, #1048]	@ <variable>.MP4Syntax.syn_vop.vop_fcode_backward, <variable>.Mp4DecParam.BwdFcode
	ldr	r6, [sp, #24]	@, %sfp
	strb	r6, [r4, #1049]	@, <variable>.Mp4DecParam.intra_dc_vlc_thr
	movw	r6, #21280	@ tmp295,
	ldr	r5, [sp, #28]	@, %sfp
	strb	r5, [r4, #1050]	@, <variable>.Mp4DecParam.resync_marker_disable
	movw	r5, #21279	@ tmp298,
	ldr	lr, [sp, #32]	@, %sfp
	strb	lr, [r4, #1051]	@, <variable>.Mp4DecParam.QuarterSample
	movw	lr, #21278	@ tmp301,
	ldr	ip, [sp, #36]	@, %sfp
	strb	ip, [r4, #1052]	@, <variable>.Mp4DecParam.vop_rounding_type
	movw	ip, #21281	@ tmp304,
	ldr	r0, [sp, #40]	@, %sfp
	strb	r0, [r4, #1053]	@, <variable>.Mp4DecParam.alternate_vertical_scan
	movw	r0, #21282	@ tmp307,
	ldr	fp, [sp, #20]	@, %sfp
	strb	fp, [r4, #1040]	@, <variable>.Mp4DecParam.PicCodingType
	movw	fp, #21283	@ tmp310,
	ldr	r1, [sp, #44]	@, %sfp
	strb	r1, [r4, #1054]	@, <variable>.Mp4DecParam.top_field_first
	ldrb	r1, [r4, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.interlaced, <variable>.MP4Syntax.syn_vol.interlaced
	ldr	sl, [r4, r8]	@ <variable>.MP4Syntax.time_bp, <variable>.MP4Syntax.time_bp
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vol.sprite_enable,
	ldr	r8, [r4, r7]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_DIVX500B413, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	ldrb	r5, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT, <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	ldrb	r0, [r4, fp]	@ zero_extendqisi2	@ <variable>.MP4Syntax.FF_BUG_QPEL_FILED, <variable>.MP4Syntax.FF_BUG_QPEL_FILED
	movw	fp, #15652	@ tmp313,
	str	r2, [r4, fp]	@ <variable>.MP4Syntax.image_width, <variable>.Mp4DecParam.image_width
	movw	r2, #15648	@ tmp316,
	strb	r5, [r4, #1192]	@ <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT, <variable>.Mp4DecParam.FF_BUG_EDGE_FIND_POINT
	movw	r5, #15656	@ tmp319,
	str	r3, [r4, r2]	@ <variable>.MP4Syntax.image_height, <variable>.Mp4DecParam.image_height
	strb	r9, [r4, #1055]	@ <variable>.MP4Syntax.syn_vol.interlaced, <variable>.Mp4DecParam.Interlaced
	str	sl, [r4, #1244]	@ <variable>.MP4Syntax.time_bp, <variable>.Mp4DecParam.Trb
	str	r8, [r4, #1248]	@ <variable>.MP4Syntax.time_pp, <variable>.Mp4DecParam.Trd
	strb	r7, [r4, #1194]	@ <variable>.MP4Syntax.FF_BUG_DIVX500B413, <variable>.Mp4DecParam.FF_BUG_DIVX500B413
	strb	r6, [r4, #1193]	@ <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND, <variable>.Mp4DecParam.FF_BUG_EDGE_EXTEND
	strb	lr, [r4, #1195]	@ <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA, <variable>.Mp4DecParam.FF_BUG_QPEL_CHROMA
	strb	ip, [r4, #1196]	@ <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2, <variable>.Mp4DecParam.FF_BUG_QPEL_CHROMA2
	strb	r0, [r4, #1197]	@ <variable>.MP4Syntax.FF_BUG_QPEL_FILED, <variable>.Mp4DecParam.FF_BUG_QPEL_FILED
	str	r1, [r4, r5]	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.Mp4DecParam.sprite_enable
	beq	.L555	@,
.L529:
	movw	ip, #21333	@ tmp351,
	movw	r0, #15664	@ tmp350,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy
	movw	r2, #15696	@ tmp369,
	movw	r3, #15660	@ tmp353,
	movw	r8, #15668	@ tmp355,
	movw	r7, #15672	@ tmp357,
	movw	r5, #15676	@ tmp359,
	str	r1, [r4, r0]	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.Mp4DecParam.sprite_warping_accuracy
	mov	lr, #15680	@ tmp361,
	mov	r1, #0	@ tmp354,
	movw	ip, #15684	@ tmp363,
	str	r1, [r4, r2]	@ tmp354, <variable>.Mp4DecParam.Vco
	movw	r0, #15688	@ tmp365,
	movw	r2, #15692	@ tmp367,
	str	r1, [r4, r8]	@ tmp354, <variable>.Mp4DecParam.dU
	str	r1, [r4, r5]	@ tmp354, <variable>.Mp4DecParam.dV
	str	r1, [r4, r3]	@ tmp354, <variable>.Mp4DecParam.sprite_warping_points
	str	r1, [r4, r7]	@ tmp354, <variable>.Mp4DecParam.dU
	str	r1, [r4, lr]	@ tmp354, <variable>.Mp4DecParam.dV
	str	r1, [r4, ip]	@ tmp354, <variable>.Mp4DecParam.Uo
	str	r1, [r4, r0]	@ tmp354, <variable>.Mp4DecParam.Vo
	str	r1, [r4, r2]	@ tmp354, <variable>.Mp4DecParam.Uco
.L530:
	movw	lr, #22988	@ tmp373,
	movw	r5, #22960	@ tmp371,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	movw	r8, #22972	@ tmp377,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r8]	@, <variable>.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #22980	@ tmp381,
	ldr	r1, [r4, r3]	@, <variable>.BwdFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pCur,
	cmpne	r8, #0	@, pFwd,
	beq	.L531	@,
	cmp	r0, #0	@ pBwd,
	beq	.L531	@,
	ldr	ip, [r7, #408]	@ D.36701, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.36701,
	ldreq	r6, [r7, #412]	@ prephitmp.1983, <variable>.pstDispOutFs
	ldreq	r5, [r7, #416]	@ prephitmp.1919, <variable>.pstTfOutFs
	beq	.L535	@,
	ldr	r5, [r7, #416]	@ prephitmp.1919, <variable>.pstTfOutFs
	cmp	r5, #0	@ prephitmp.1919,
	ldreq	r6, [r7, #412]	@ prephitmp.1983, <variable>.pstDispOutFs
	beq	.L535	@,
	ldr	r6, [r7, #412]	@ prephitmp.1983, <variable>.pstDispOutFs
	cmp	r6, #0	@ prephitmp.1983,
	beq	.L535	@,
	ldr	r2, [r7, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r2, [r4, #1264]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.CurPmvPhyAddr
	ldr	lr, [r0, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	lr, [r4, #1268]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.BwdPmvPhyAddr
	ldr	ip, [r0, #408]	@ D.36712, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.36712,
	ldreq	ip, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r5, [ip, #12]	@ iftmp.563, <variable>.PhyAddr
	mov	ip, #15616	@ tmp408,
	str	r5, [r4, #1260]	@ iftmp.563, <variable>.Mp4DecParam.BwdRefPicPhyAddr
	ldr	r6, [r8, #408]	@ D.36719, <variable>.pstDecodeFs
	cmp	r6, #0	@ D.36719,
	ldreq	r6, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r6, #12]	@ iftmp.564, <variable>.PhyAddr
	str	r3, [r4, #1256]	@ iftmp.564, <variable>.Mp4DecParam.FwdRefPicPhyAddr
	movw	r3, #15620	@ tmp410,
	ldr	r1, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r1, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r4, #1252]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.CurPicPhyAddr
	add	r2, r4, #21248	@ ivtmp.1937, pCtx,
	ldr	lr, [r0, #416]	@ D.36726, <variable>.pstTfOutFs
	cmp	lr, #0	@ D.36726,
	ldreq	lr, [r7, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r5, [lr, #12]	@ iftmp.565, <variable>.PhyAddr
	str	r5, [r4, ip]	@ iftmp.565, <variable>.Mp4DecParam.TfBwdPhyAddr
	ldr	r6, [r8, #416]	@ D.36733, <variable>.pstTfOutFs
	movw	r8, #15624	@ tmp411,
	cmp	r6, #0	@ D.36733,
	ldreq	r6, [r7, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r1, [r6, #12]	@ iftmp.566, <variable>.PhyAddr
	movw	r6, #15628	@ tmp414,
	str	r1, [r4, r3]	@ iftmp.566, <variable>.Mp4DecParam.TfFwdPhyAddr
	add	r3, r2, #148	@ ivtmp.1937, ivtmp.1937,
	ldr	r0, [r7, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	mov	r2, r4	@ ivtmp.1941, pCtx
	ldr	lr, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #0	@ i,
	str	lr, [r4, r8]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.TfCurPhyAddr
	movw	r8, #15640	@ tmp417,
	ldr	ip, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r5, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r5, [r4, r6]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.DispFramePhyAddr
	movw	r6, #15644	@ tmp420,
	ldr	r1, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [r1, #20]	@ <variable>.Stride, <variable>.Stride
	str	lr, [r4, r8]	@ <variable>.Stride, <variable>.Mp4DecParam.VahbStride
	ldr	ip, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r5, [ip, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r5, [r4, r6]	@ <variable>.ChromOffset, <variable>.Mp4DecParam.uv_offset
.L546:
	add	ip, r3, #4	@ tmp440, ivtmp.1937,
	ldr	r6, [r3, #4]	@ tmp445, <variable>.MP4Syntax.syn_vol.intra_quant_mat
	ldr	r8, [r3, #0]	@ tmp424, <variable>.MP4Syntax.syn_vol.intra_quant_mat
	add	r0, r0, #2	@ i, i,
	ldr	r7, [r3, #256]	@ tmp426, <variable>.MP4Syntax.syn_vol.nonintra_quant_mat
	add	r1, r2, #1	@ tmp441, ivtmp.1941,
	ldr	r5, [ip, #256]	@ tmp446, <variable>.MP4Syntax.syn_vol.nonintra_quant_mat
	cmp	r0, #64	@ i,
	strb	r8, [r2, #1064]	@ tmp424, <variable>.Mp4DecParam.IntraQuantTab
	add	r3, ip, #4	@ ivtmp.1937, tmp440,
	strb	r7, [r2, #1128]	@ tmp426, <variable>.Mp4DecParam.NonintraQuantTab
	add	r2, r1, #1	@ ivtmp.1941, tmp441,
	strb	r6, [r1, #1064]	@ tmp445, <variable>.Mp4DecParam.IntraQuantTab
	strb	r5, [r1, #1128]	@ tmp446, <variable>.Mp4DecParam.NonintraQuantTab
	bne	.L546	@,
	movw	r1, #1206	@ tmp429,
	movw	lr, #1204	@ tmp431,
	ldrh	r0, [r4, r1]	@ <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicHeightInMb
	movw	r3, #22060	@ tmp436,
	ldrh	ip, [r4, lr]	@ <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicWidthInMb
	movw	r2, #21944	@ tmp428,
	ldr	lr, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #15700	@ tmp434,
	mul	r1, ip, r0	@ tmp433, <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicHeightInMb
	str	r1, [r4, r2]	@ tmp433, <variable>.MP4Syntax.syn_vop.mb_total
	ldr	r0, [lr, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r4, r3]	@ <variable>.s32Compress_en, <variable>.Mp4DecParam.Compress_en
.L547:
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L531:
	movw	r1, #:lower16:.LC32	@,
	ldr	r2, .L556	@,
	movt	r1, #:upper16:.LC32	@,
	movw	r3, #3543	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L547	@
.L555:
	ldr	r2, [sp, #20]	@, %sfp
	cmp	r2, #3	@,
	bne	.L529	@,
	add	sl, r4, #21248	@, pCtx,
	add	r1, sp, #48	@,,
	add	r0, sl, #20	@,,
	movw	r6, #21333	@ tmp330,
	bl	MP4_GetGMCparam	@
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy
	ldr	r8, [sp, #48]	@ gmc.num_wp, gmc.num_wp
	movw	r3, #15664	@ tmp329,
	ldr	r7, [sp, #64]	@ gmc.dU, gmc.dU
	ldr	r5, [sp, #72]	@ gmc.dV, gmc.dV
	ldr	lr, [sp, #76]	@ gmc.dV, gmc.dV
	ldr	ip, [sp, #80]	@ gmc.Uo, gmc.Uo
	ldr	r0, [sp, #84]	@ gmc.Vo, gmc.Vo
	ldr	r6, [sp, #68]	@ gmc.dU, gmc.dU
	ldr	r1, [sp, #88]	@ gmc.Uco, gmc.Uco
	ldr	r2, [sp, #92]	@ gmc.Vco, gmc.Vco
	str	sl, [r4, r3]	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.Mp4DecParam.sprite_warping_accuracy
	movw	r3, #15660	@ tmp332,
	str	r8, [r4, r3]	@ gmc.num_wp, <variable>.Mp4DecParam.sprite_warping_points
	movw	r8, #15668	@ tmp334,
	str	r7, [r4, r8]	@ gmc.dU, <variable>.Mp4DecParam.dU
	movw	r8, #15676	@ tmp338,
	mov	r7, #15680	@ tmp340,
	str	r5, [r4, r8]	@ gmc.dV, <variable>.Mp4DecParam.dV
	str	lr, [r4, r7]	@ gmc.dV, <variable>.Mp4DecParam.dV
	movw	r5, #15684	@ tmp342,
	movw	lr, #15688	@ tmp344,
	movw	r3, #15672	@ tmp336,
	str	ip, [r4, r5]	@ gmc.Uo, <variable>.Mp4DecParam.Uo
	movw	ip, #15692	@ tmp346,
	str	r0, [r4, lr]	@ gmc.Vo, <variable>.Mp4DecParam.Vo
	movw	r0, #15696	@ tmp348,
	str	r6, [r4, r3]	@ gmc.dU, <variable>.Mp4DecParam.dU
	str	r1, [r4, ip]	@ gmc.Uco, <variable>.Mp4DecParam.Uco
	str	r2, [r4, r0]	@ gmc.Vco, <variable>.Mp4DecParam.Vco
	b	.L530	@
.L554:
	movw	r2, #22048	@ tmp182,
	movw	fp, #22044	@ tmp187,
	ldr	r1, [r4, r2]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	sl, #22052	@ tmp196,
	ldr	r8, [r4, fp]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	movw	r9, #22056	@ tmp193,
	ldr	r7, [r4, sl]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	and	ip, r1, #3	@ tmp190, <variable>.BitsObj.phy_addr,
	ldr	r6, [r4, r9]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	mov	r2, #0	@ tmp203,
	bic	r5, r1, #3	@ tmp186, <variable>.BitsObj.phy_addr,
	str	r8, [r4, #1056]	@ <variable>.BitsObj.vir_addr, <variable>.Mp4DecParam.StreamVirAddr
	rsb	lr, r6, r7, asl #3	@, tmp201, <variable>.BitsObj.offset, <variable>.BitsObj.len,
	add	r0, r6, ip, asl #3	@, tmp195, <variable>.BitsObj.offset, tmp190,
	str	r5, [r4, #1220]	@ tmp186, <variable>.Mp4DecParam.StreamPhyAddr
	str	lr, [r4, #1236]	@ tmp201, <variable>.Mp4DecParam.StreamLength
	str	r3, [r4, #1216]	@ <variable>.IsLastSeg, <variable>.Mp4DecParam.StreamFirstIsLastFlag
	str	r0, [r4, #1228]	@ tmp195, <variable>.Mp4DecParam.StreamBitOffset
	str	r2, [r4, #1240]	@ tmp203, <variable>.Mp4DecParam.StreamLength
	str	r1, [r4, #1208]	@ <variable>.BitsObj.phy_addr, <variable>.Mp4DecParam.StreamBaseAddr
	str	r2, [r4, #1224]	@ tmp203, <variable>.Mp4DecParam.StreamPhyAddr
	str	r2, [r4, #1232]	@ tmp203, <variable>.Mp4DecParam.StreamBitOffset
	b	.L528	@
.L535:
	movw	r0, #22980	@ tmp399,
	movw	r3, #22972	@ tmp395,
	ldr	lr, [r4, r0]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movw	r1, #22988	@ tmp397,
	ldr	r2, [r4, r3]	@ <variable>.FwdFsID, <variable>.FwdFsID
	mov	r0, #0	@,
	ldr	r3, [r4, r1]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	str	ip, [sp, #4]	@ D.36701,
	str	lr, [sp, #0]	@ <variable>.BwdFsID,
	str	r5, [sp, #8]	@ prephitmp.1919,
	str	r6, [sp, #12]	@ prephitmp.1983,
	bl	dprint_vfmw	@
	b	.L547	@
.L557:
	.align	2
.L556:
	.word	.LANCHOR0+1340
	.fnend
	.size	Mp4_Set_DecPar, .-Mp4_Set_DecPar
	.align	2
	.global	MPEG4DEC_VDMPostProc
	.type	MPEG4DEC_VDMPostProc, %function
MPEG4DEC_VDMPostProc:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r7, r1	@ ErrRatio, ErrRatio
	add	r0, r0, #1040	@, pCtx,
	movw	r1, #14664	@,
	bl	__memzero	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	movw	r5, #22960	@ tmp156,
	movw	r3, #22988	@ tmp158,
	movw	r6, #22544	@ tmp155,
	ldr	r1, [r4, r3]	@, <variable>.CurFsID
	movw	r9, #22980	@ tmp162,
	str	r7, [r4, r6]	@ ErrRatio, <variable>.ErrorLevel
	movw	fp, #22972	@ tmp166,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, r9]	@, <variable>.BwdFsID
	mov	r7, r0	@ pCurImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	str	r0, [sp, #20]	@, %sfp
	ldr	r1, [r4, fp]	@, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L579	@,
	movw	r1, #22552	@ tmp170,
	movw	r8, #21912	@ tmp173,
	ldr	r2, [r4, r1]	@, <variable>.FrameNum
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_coding_type
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	add	sl, r4, #22528	@, pCtx,
	str	sl, [sp, #12]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r2, [r4, r6]	@ <variable>.ErrorLevel, <variable>.ErrorLevel
	ldr	sl, [sp, #12]	@, %sfp
	str	r2, [r7, #180]	@ <variable>.ErrorLevel, <variable>.error_level
	add	r1, sl, #52	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	Mp4_ClearUsrData	@
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L561	@,
	movw	r0, #22060	@ tmp185,
	ldr	ip, [r4, r6]	@ <variable>.ErrorLevel, <variable>.ErrorLevel
	ldr	r3, [r4, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	ip, lr	@ <variable>.ErrorLevel, <variable>.s32RefErrThr
	bhi	.L580	@,
.L561:
	movw	r0, #22600	@ tmp228,
	mov	lr, #0	@ tmp229,
	str	lr, [r4, r0]	@ tmp229, <variable>.IPVopErr
	mov	r0, r4	@, pCtx
	bl	MP4_SetImgFormat	@
	movw	r3, #22060	@ tmp231,
	ldr	ip, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r8, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r8, #1	@ <variable>.s32DecOrderOutput,
	beq	.L563	@,
	movw	r2, #21912	@ tmp233,
	ldrb	r8, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r8, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L564	@,
	movw	r1, #22968	@ tmp235,
	movw	r3, #22968	@ tmp239,
	ldr	r0, [r4, r1]	@ <variable>.RefNum, <variable>.RefNum
	movw	lr, #22992	@ tmp238,
	ldr	ip, [r4, r3]	@ <variable>.RefNum, <variable>.RefNum
	cmp	r0, #1	@ <variable>.RefNum,
	movwgt	r0, #22972	@ tmp237,
	mvnle	r1, #0	@ prephitmp.2011,
	ldrgt	r1, [r4, r0]	@ prephitmp.2011, <variable>.FwdFsID
	cmp	ip, #1	@ <variable>.RefNum,
	movwgt	ip, #22976	@ tmp241,
	ldrgtb	r8, [r4, #0]	@ zero_extendqisi2	@ ToQueCodingType, <variable>.FwdCodingType
	ldrgt	r9, [r4, ip]	@ ToQueTimePP, <variable>.FwdTimePP
	mvnle	r9, #0	@ ToQueTimePP,
	movle	r8, r9	@ ToQueCodingType, ToQueTimePP
	str	r1, [r4, lr]	@ prephitmp.2011, <variable>.ToQueFsID
.L568:
	cmn	r1, #1	@ prephitmp.2011,
	beq	.L570	@,
	movw	r6, #22960	@ tmp250,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pToQueImg,
	beq	.L581	@,
	cmp	r9, #0	@ ToQueTimePP,
	cmpeq	r8, #4	@, ToQueCodingType,
	movne	r7, #0	@, tmp259
	moveq	r7, #1	@, tmp259
	beq	.L582	@,
	ldr	r2, [r5, #180]	@ D.37250, <variable>.error_level
	cmp	r2, #0	@ D.37250,
	beq	.L573	@,
	movw	ip, #22060	@ tmp292,
	ldr	r1, [r4, ip]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #4]	@ D.37252, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.37250, D.37252
	bhi	.L574	@,
.L573:
	movw	r6, #22960	@ tmp293,
	movw	r7, #22992	@ tmp295,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_GetLogicFs	@
	subs	r9, r0, #0	@ pstLogicFs,
	beq	.L583	@,
	cmp	r8, #2	@ ToQueCodingType,
	beq	.L576	@,
	ldrsb	r2, [r9, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r2, #2	@ <variable>.s32DispState,
	beq	.L576	@,
	movw	r1, #:lower16:.LC38	@,
	ldr	r2, [r4, r7]	@, <variable>.ToQueFsID
	movt	r1, #:upper16:.LC38	@,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
.L570:
	movw	r1, #22552	@ tmp346,
	mov	r0, #0	@ D.37177,
	ldr	ip, [r4, r1]	@ <variable>.FrameNum, <variable>.FrameNum
	add	lr, ip, #1	@ tmp349, <variable>.FrameNum,
	str	lr, [r4, r1]	@ tmp349, <variable>.FrameNum
.L560:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L576:
	movw	r6, #22960	@ tmp310,
	movw	r7, #22992	@ tmp312,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	ldr	fp, [sp, #12]	@, %sfp
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #2	@,
	add	r3, fp, #80	@,,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L570	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r8, #0	@ tmp321,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r5, #192]	@ tmp321, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r5, #196]	@ tmp321, <variable>.p_usrdat
	mov	r2, r8	@, tmp321
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.37177,
	b	.L560	@
.L563:
	movw	r8, #22988	@ tmp246,
	movw	r3, #21912	@ tmp248,
	ldr	r1, [r4, r8]	@ prephitmp.2011, <variable>.CurFsID
	movw	lr, #22004	@ tmp249,
	movw	ip, #22992	@ tmp247,
	ldrb	r8, [r4, r3]	@ zero_extendqisi2	@ ToQueCodingType, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldr	r9, [r4, lr]	@ ToQueTimePP, <variable>.MP4Syntax.time_pp
	str	r1, [r4, ip]	@ prephitmp.2011, <variable>.ToQueFsID
	b	.L568	@
.L564:
	ldr	fp, [sp, #20]	@, %sfp
	movw	r9, #22988	@ tmp242,
	ldr	r1, [r4, r9]	@ prephitmp.2011, <variable>.CurFsID
	movw	r0, #22992	@ tmp243,
	cmp	fp, #0	@,
	movw	r2, #22004	@ tmp244,
	ldr	r9, [r4, r2]	@ ToQueTimePP, <variable>.MP4Syntax.time_pp
	str	r1, [r4, r0]	@ prephitmp.2011, <variable>.ToQueFsID
	beq	.L569	@,
	ldr	r3, [sp, #20]	@, %sfp
	ldrd	r2, [r3, #8]	@,,
	strd	r2, [sp, #32]	@,,
	ldrd	sl, [r7, #8]	@, pCurImg,
	strd	sl, [sp, #24]	@,,
	cmp	r2, sl	@,
	sbcs	fp, r3, fp	@,,
	bge	.L569	@,
	strd	r2, [r7, #8]	@, pCurImg,
	ldrd	r2, [sp, #24]	@,,
	ldr	sl, [sp, #20]	@, %sfp
	strd	r2, [sl, #8]	@,,
	ldr	r1, [r4, r0]	@ prephitmp.2011, <variable>.ToQueFsID
	b	.L568	@
.L569:
	mov	r8, #2	@ ToQueCodingType,
	b	.L568	@
.L574:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r5, #192]	@ tmp259, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r3, #22992	@ tmp344,
	str	r7, [r5, #196]	@ tmp259, <variable>.p_usrdat
	mov	r2, r7	@, tmp259
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	b	.L570	@
.L581:
	movw	r1, #:lower16:.LC37	@,
	movw	r2, #4405	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37177,
	b	.L560	@
.L580:
	movw	r6, #22600	@ tmp188,
	mov	r8, #1	@ tmp189,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r8, [r4, r6]	@ tmp189, <variable>.IPVopErr
	ldr	r1, [r4, r9]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L562	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp206,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #204]	@ tmp206, <variable>.p_usrdat
	str	r7, [r6, #192]	@ tmp206, <variable>.p_usrdat
	mov	r2, r8	@, tmp189
	str	r7, [r6, #196]	@ tmp206, <variable>.p_usrdat
	str	r7, [r6, #200]	@ tmp206, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	mov	r2, r8	@, tmp189
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, fp]	@, <variable>.FwdFsID
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, r9]	@ tmp206, <variable>.BwdFsID
	str	r7, [r4, fp]	@ tmp206, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, fp]	@ D.37200, <variable>.FwdFsID
	str	r0, [r4, r9]	@ D.37200, <variable>.BwdFsID
.L562:
	movw	r1, #22968	@ tmp226,
	mov	r2, #0	@ tmp227,
	mvn	r0, #0	@ D.37177,
	str	r2, [r4, r1]	@ tmp227, <variable>.RefNum
	b	.L560	@
.L582:
	ldr	r0, [r4, r6]	@ temp.2056, <variable>.ChanID
	movw	lr, #:lower16:g_VfmwChanStat	@ tmp261,
	movt	lr, #:upper16:g_VfmwChanStat	@ tmp261,
	mov	r7, #0	@ tmp282,
	add	r3, r0, r0, asl #1	@, tmp265, temp.2056, temp.2056,
	add	ip, lr, r3, asl #3	@, tmp267, tmp261, tmp265,
	ldr	r2, [ip, #16]	@ <variable>.u32SkipDiscard, <variable>.u32SkipDiscard
	add	r1, r2, #1	@ tmp278, <variable>.u32SkipDiscard,
	str	r1, [ip, #16]	@ tmp278, <variable>.u32SkipDiscard
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r5, #192]	@ tmp282, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r0, #22992	@ tmp289,
	str	r7, [r5, #196]	@ tmp282, <variable>.p_usrdat
	mov	r2, r7	@, tmp282
	ldr	r1, [r4, r0]	@, <variable>.ToQueFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.37177,
	b	.L560	@
.L579:
	mov	r0, r7	@, pCurImg
	ldr	r3, [sp, #20]	@, %sfp
	movw	r1, #:lower16:.LC34	@,
	mov	r2, r7	@,
	movt	r1, #:upper16:.LC34	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37177,
	b	.L560	@
.L583:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r9, [r5, #192]	@ pstLogicFs, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r9, [r5, #196]	@ pstLogicFs, <variable>.p_usrdat
	mov	r2, r9	@, pstLogicFs
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.37177,
	b	.L560	@
	.fnend
	.size	MPEG4DEC_VDMPostProc, .-MPEG4DEC_VDMPostProc
	.align	2
	.type	MP4_FlushFrameToVo, %function
MP4_FlushFrameToVo:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r5, #22960	@ tmp140,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	mov	r6, r1	@ FsID, FsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	mvneq	r0, #0	@ ret,
	beq	.L586	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r6, r0	@ display_flag,
	movne	r0, #1	@ ret,
	beq	.L590	@,
.L586:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L590:
	mov	r0, r4	@, pCtx
	bl	MP4_SetImgFormat	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #22528	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, r6	@, display_flag
	add	r3, r3, #80	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L586	@,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG4DEC_RecycleImage	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	r6, #0	@ tmp155,
	bl	FreeUsdByDec	@
	str	r6, [r7, #192]	@ tmp155, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mvn	r0, #0	@ ret,
	str	r6, [r7, #196]	@ tmp155, <variable>.p_usrdat
	b	.L586	@
	.fnend
	.size	MP4_FlushFrameToVo, .-MP4_FlushFrameToVo
	.align	2
	.global	MPEG4DEC_GetRemainImg
	.type	MPEG4DEC_GetRemainImg, %function
MPEG4DEC_GetRemainImg:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #22060	@ tmp141,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r1]	@ <variable>.pstExtraData, <variable>.pstExtraData
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L603	@,
	movw	r6, #22960	@ tmp143,
	movw	r5, #22980	@ tmp145,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L603	@,
	ldr	r1, [r4, r5]	@, <variable>.BwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r8, r0	@ display_flag,
	beq	.L601	@,
.L603:
	add	r5, r4, #22528	@ tmp175, pCtx,
	add	r5, r5, #80	@ tmp175, tmp175,
.L592:
	mov	r0, r5	@, tmp175
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	GetVoLastImageID	@
.L601:
	mov	r0, r4	@, pCtx
	add	r5, r4, #22528	@ tmp175, pCtx,
	bl	MP4_SetImgFormat	@
	add	r5, r5, #80	@ tmp175, tmp175,
	mov	ip, #1	@ tmp151,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r2, ip	@, tmp151
	str	ip, [r7, #224]	@ tmp151, <variable>.last_frame
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, r8	@, display_flag
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp175
	str	r7, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L593	@,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG4DEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp163,
	bl	FreeUsdByDec	@
	str	r8, [r7, #192]	@ tmp163, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #196]	@ tmp163, <variable>.p_usrdat
	b	.L592	@
.L593:
	ldr	r2, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L592	@,
	ldr	lr, [r7, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	lr, #31	@ <variable>.image_width,
	bls	.L592	@,
	ldr	r3, [r7, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r3, #31	@ <variable>.image_height,
	bls	.L592	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.fnend
	.size	MPEG4DEC_GetRemainImg, .-MPEG4DEC_GetRemainImg
	.align	2
	.global	MPEG4DEC_Init
	.type	MPEG4DEC_Init, %function
MPEG4DEC_Init:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 776
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	.pad #780
	sub	sp, sp, #780	@,,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pCtx,
	cmpne	r5, #0	@, pstExtraData,
	beq	.L605	@,
	ldr	r3, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r3, #1	@ <variable>.s32KeepSPSPPS,
	beq	.L612	@,
.L606:
	movw	r6, #22952	@ tmp170,
	movw	r1, #23008	@,
	ldr	r7, [r4, r6]	@ D.36797, <variable>.ImageQue.ResetMagicWord
	mov	r0, r4	@, pCtx
	bl	__memzero	@
	add	r1, r4, #22528	@, pCtx,
	add	r0, r1, #80	@,,
	str	r7, [r4, r6]	@ D.36797, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r0, #22060	@ tmp174,
	str	r5, [r4, r0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r2, #22960	@ tmp175,
	cmn	r0, #1	@ D.36805,
	str	r0, [r4, r2]	@ D.36805, <variable>.ChanID
	beq	.L613	@,
	mov	r0, r4	@, pCtx
	bl	Global_Data_Init	@
	subs	r6, r0, #0	@ D.36810,
	beq	.L614	@,
.L605:
	mvn	r0, #0	@ D.36793,
.L608:
	add	sp, sp, #780	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L614:
	movw	ip, #22576	@ tmp179,
	movw	r3, #22548	@ tmp177,
	mov	lr, #1	@ tmp178,
	str	r6, [r4, ip]	@ D.36810, <variable>.PPicFound
	str	lr, [r4, r3]	@ tmp178, <variable>.InitComplete
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	ldr	r5, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r5, #1	@ <variable>.s32KeepSPSPPS,
	beq	.L609	@,
	mov	r0, r6	@ D.36793, D.36810
	b	.L608	@
.L612:
	add	r7, r4, #21248	@, pCtx,
	mov	r2, #768	@,
	add	r1, r7, #20	@,,
	add	r6, r4, #19968	@ tmp158, pCtx,
	mov	r0, sp	@,
	bl	memcpy	@
	add	lr, r6, #8	@ tmp158, tmp158,
	add	ip, sp, #16	@ tmp156,,
	add	r6, sp, #768	@ tmp166,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp208,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp156,,,,
	ldmia	lr, {r0, r1}	@ tmp208,,
	mov	r2, #604	@,
	stmia	ip, {r0, r1}	@ tmp209,,
	add	r1, r4, #19968	@, pCtx,
	add	r1, r1, #32	@,,
	add	r0, sp, #40	@,,
	bl	memcpy	@
	add	r0, r4, #22016	@ tmp167, pCtx,
	add	r7, r0, #20	@ tmp167, tmp167,
	ldmia	r7, {r0, r1}	@ tmp167,,
	mov	r2, r1, lsr #16	@ tmp168,,
	strb	r2, [r6, #6]	@ tmp168, MP4SyntaxState
	str	r0, [sp, #768]	@, MP4SyntaxState
	strh	r1, [r6, #4]	@ movhi	@, MP4SyntaxState
	b	.L606	@
.L613:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36793,
	b	.L608	@
.L609:
	add	r2, r4, #21248	@, pCtx,
	mov	r1, sp	@,
	add	r0, r2, #20	@,,
	mov	r2, #768	@,
	bl	memcpy	@
	add	lr, sp, #16	@ tmp191,,
	add	ip, r4, #19968	@ tmp190, pCtx,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp212,,,,
	add	ip, ip, #8	@ tmp190, tmp190,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp190,,,,
	ldmia	lr, {r0, r1}	@ tmp212,,
	mov	r2, #604	@,
	stmia	ip, {r0, r1}	@ tmp213,,
	add	r1, r4, #19968	@, pCtx,
	add	r0, r1, #32	@,,
	add	r1, sp, #40	@,,
	bl	memcpy	@
	add	r0, r4, #22016	@, pCtx,
	mov	r2, #7	@,
	add	r0, r0, #20	@,,
	add	r1, sp, #768	@,,
	bl	memcpy	@
	movw	r2, #22997	@ tmp204,
	strb	r5, [r4, r2]	@ <variable>.s32KeepSPSPPS, <variable>.SeekReset
	mov	r0, r6	@ D.36793, D.36810
	b	.L608	@
	.fnend
	.size	MPEG4DEC_Init, .-MPEG4DEC_Init
	.global	__aeabi_uidiv
	.align	2
	.global	Mp4_RecordFrameAtr
	.type	Mp4_RecordFrameAtr, %function
Mp4_RecordFrameAtr:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #21311	@ tmp150,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ D.36417, <variable>.MP4Syntax.syn_vol.aspect_ratio_info
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ pCtx, pCtx
	cmp	r3, #15	@ D.36417,
	mov	r4, r1	@ id, id
	beq	.L626	@,
	sub	r1, r3, #2	@ tmp173, D.36417,
	uxtb	ip, r1	@ tmp174, tmp173
	cmp	ip, #1	@ tmp174,
	bls	.L620	@,
	sub	lr, r3, #4	@ tmp175, D.36417,
	uxtb	r2, lr	@ tmp176, tmp175
	cmp	r2, #1	@ tmp176,
	bls	.L621	@,
	cmp	r3, #1	@ D.36417,
	moveq	r7, #5	@ aspect_ratio,
	beq	.L622	@,
.L617:
	mov	r7, #0	@ aspect_ratio,
.L622:
	mov	r1, r4	@, id
	movw	r4, #22960	@ tmp177,
	ldr	r0, [r6, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	beq	.L625	@,
	movw	r1, #21976	@ tmp179,
	movw	r3, #21972	@ tmp181,
	ldr	ip, [r6, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r9, #22060	@ tmp184,
	mov	r1, r7	@, aspect_ratio
	str	ip, [r4, #144]	@ <variable>.MP4Syntax.image_width, <variable>.image_width
	ldr	sl, [r6, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	sl, [r4, #148]	@ <variable>.MP4Syntax.image_height, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r8, [r6, r9]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r5, [r8, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L627	@,
.L624:
	movw	r0, #21976	@ tmp199,
	movw	r2, #21972	@ tmp201,
	ldr	r5, [r6, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r9, #21912	@ tmp214,
	movw	r3, #22060	@ tmp249,
	str	r5, [r4, #152]	@ <variable>.MP4Syntax.image_width, <variable>.disp_width
	mov	r5, #0	@ tmp239,
	ldr	r1, [r6, r2]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	r1, [r4, #156]	@ <variable>.MP4Syntax.image_height, <variable>.disp_height
	movw	r1, #:lower16:.LC43	@,
	ldr	ip, [r6, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movt	r1, #:upper16:.LC43	@,
	mov	r0, #29	@,
	mov	lr, ip, lsr #1	@ tmp205, <variable>.MP4Syntax.image_width,
	str	lr, [r4, #160]	@ tmp205, <variable>.disp_center_x
	ldr	sl, [r6, r2]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	movw	ip, #22540	@ tmp209,
	movw	r2, #22536	@ tmp211,
	mov	r8, sl, lsr #1	@ tmp208, <variable>.MP4Syntax.image_height,
	str	r8, [r4, #164]	@ tmp208, <variable>.disp_center_y
	ldr	lr, [r6, ip]	@ <variable>.ImgCntOfSeq, <variable>.ImgCntOfSeq
	movw	r8, #21917	@ tmp217,
	movw	ip, #21289	@ tmp222,
	str	lr, [r4, #188]	@ <variable>.ImgCntOfSeq, <variable>.seq_img_cnt
	movw	lr, #21318	@ tmp227,
	ldr	sl, [r6, r2]	@ <variable>.SeqCnt, <variable>.SeqCnt
	str	sl, [r4, #184]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldrb	r2, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldrb	sl, [r6, r8]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.top_field_first, <variable>.MP4Syntax.syn_vop.top_field_first
	ldrb	r8, [r6, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vos.video_format, <variable>.MP4Syntax.syn_vos.video_format
	and	ip, r2, #3	@ tmp216, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	ldrb	lr, [r6, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.interlaced, <variable>.MP4Syntax.syn_vol.interlaced
	orr	ip, ip, sl, asl #12	@, tmp220, tmp216, <variable>.MP4Syntax.syn_vop.top_field_first,
	mov	r2, r8, asl #5	@ tmp224, <variable>.MP4Syntax.syn_vos.video_format,
	and	lr, lr, #1	@ tmp229, <variable>.MP4Syntax.syn_vol.interlaced,
	and	r8, r2, #255	@ tmp225, tmp224,
	orr	r2, ip, #3072	@ tmp221, tmp220,
	orr	ip, r2, r8	@ tmp226, tmp221, tmp225
	orr	r8, ip, lr, asl #8	@, tmp231, tmp226, tmp229,
	orr	r2, r8, r7, asl #14	@, tmp232, tmp231, aspect_ratio,
	str	r2, [r4, #140]	@ tmp232, <variable>.format
	ldrb	ip, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	r2, #22580	@ tmp240,
	and	lr, ip, #3	@ tmp235, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	str	lr, [r4, #132]	@ tmp235, <variable>.top_fld_type
	ldrb	r8, [r6, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	ip, #22584	@ tmp242,
	str	r5, [r4, #128]	@ tmp239, <variable>.is_fld_save
	and	r7, r8, #3	@ tmp238, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	str	r7, [r4, #136]	@ tmp238, <variable>.bottom_fld_type
	ldr	r9, [r6, r2]	@ <variable>.UsrData, <variable>.UsrData
	movw	r8, #22588	@ tmp244,
	movw	r2, #22592	@ tmp246,
	str	r9, [r4, #192]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	lr, [r6, ip]	@ <variable>.UsrData, <variable>.UsrData
	str	lr, [r4, #196]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	r7, [r6, r8]	@ <variable>.UsrData, <variable>.UsrData
	str	r7, [r4, #200]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	r9, [r6, r2]	@ <variable>.UsrData, <variable>.UsrData
	str	r9, [r4, #204]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	ip, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [ip, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r8, [r4, #8]	@ <variable>.pts, pImg,
	ldr	lr, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [lr, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r8, [r4, #16]	@ <variable>.Usertag, pImg,
	ldr	r7, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r8, [r7, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r8, [r4, #24]	@ <variable>.DispTime, pImg,
	ldr	r2, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r4, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r7, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r2, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r4, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	lr, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [lr, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r7, [r4, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r7, #0	@,
	ldr	r2, [r6, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r6, #0	@ tmp271,
	strd	r6, [r2, #56]	@ tmp271, <variable>.pstExtraData,
	ldrd	r6, [r4, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r4, #8]	@ <variable>.PTS, pImg,
	strd	r6, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	mov	r3, #8	@ tmp280,
	mov	r1, #2	@ tmp275,
	mov	ip, #1	@ tmp283,
	strb	r5, [r4, #295]	@ tmp239, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #308]	@ tmp280, <variable>.ImageDnr.QP_U
	str	r1, [r4, #300]	@ tmp275, <variable>.ImageDnr.video_standard
	strb	ip, [r4, #293]	@ tmp283, <variable>.ImageDnr.chroma_format_idc
	strb	r5, [r4, #288]	@ tmp239, <variable>.ImageDnr.pic_structure
	str	r3, [r4, #304]	@ tmp280, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp280, <variable>.ImageDnr.QP_V
.L625:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L626:
	movw	r0, #21340	@ tmp151,
	movw	r2, #21344	@ tmp152,
	ldr	r3, [r6, r0]	@ sar_width, <variable>.MP4Syntax.syn_vol.par_width
	ldr	r2, [r6, r2]	@ D.36423, <variable>.MP4Syntax.syn_vol.par_height
	cmp	r3, #0	@ sar_width,
	cmpne	r2, #0	@, D.36423,
	beq	.L617	@,
	movw	r7, #21392	@ tmp160,
	ldr	r1, [r6, r7]	@ <variable>.MP4Syntax.syn_vol.video_object_layer_height, <variable>.MP4Syntax.syn_vol.video_object_layer_height
	mul	r1, r1, r2	@ D.36432, <variable>.MP4Syntax.syn_vol.video_object_layer_height, D.36423
	cmp	r1, #0	@ D.36432,
	beq	.L617	@,
	movw	r0, #21388	@ tmp163,
	mov	r7, r3, asl #10	@ tmp162, sar_width,
	ldr	lr, [r6, r0]	@ <variable>.MP4Syntax.syn_vol.video_object_layer_width, <variable>.MP4Syntax.syn_vol.video_object_layer_width
	mul	r0, lr, r7	@, <variable>.MP4Syntax.syn_vol.video_object_layer_width, tmp162
	bl	__aeabi_uidiv	@
	sub	r2, r0, #1360	@ iftmp.549, true_dar,
	sub	r1, r0, #1808	@ iftmp.550, true_dar,
	sub	ip, r2, #5	@ iftmp.549, iftmp.549,
	sub	r3, r1, #12	@ iftmp.550, iftmp.550,
	cmp	ip, #0	@ iftmp.549,
	rsblt	ip, r0, #1360	@ tmp170, true_dar,
	addlt	ip, ip, #5	@ iftmp.549, tmp170,
	cmp	r3, #0	@ iftmp.550,
	rsblt	r3, r0, #1808	@ tmp172, true_dar,
	addlt	r3, r3, #12	@ iftmp.550, tmp172,
	cmp	ip, r3	@ iftmp.549, iftmp.550
	bge	.L621	@,
.L620:
	mov	r7, #1	@ aspect_ratio,
	b	.L622	@
.L621:
	mov	r7, #2	@ aspect_ratio,
	b	.L622	@
.L627:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r5, [r4, #172]	@ D.36478, <variable>.image_stride
	add	lr, r0, #15	@ tmp187, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	sl, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	r2, lr, lsr #4	@ tmp189, tmp187,
	mov	r1, r5, asl #4	@ tmp186, D.36478,
	add	ip, r3, r5	@ tmp194, <variable>.luma_phy_addr, D.36478
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r9, r2, r1	@ D.36484, tmp189, tmp186
	str	ip, [r4, #96]	@ tmp194, <variable>.btm_luma_phy_addr
	str	sl, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r9, r3	@ tmp191, D.36484, <variable>.luma_phy_addr
	add	r8, sl, r9	@ tmp193, <variable>.luma_vir_addr, D.36484
	add	r0, lr, r5	@ tmp195, tmp191, D.36478
	str	r8, [r4, #36]	@ tmp193, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp195, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp191
	str	lr, [r4, #108]	@ tmp191, <variable>.chrom_phy_addr
	str	lr, [r4, #92]	@ tmp191, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r2, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L624	@
	.fnend
	.size	Mp4_RecordFrameAtr, .-Mp4_RecordFrameAtr
	.align	2
	.global	Mp4_Frame_Atr
	.type	Mp4_Frame_Atr, %function
Mp4_Frame_Atr:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #21912	@ tmp140,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ D.36545, <variable>.MP4Syntax.syn_vop.vop_coding_type
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #4	@ D.36545,
	strb	r3, [r0, #2]	@ D.36545, <variable>.CurCodingType
	beq	.L635	@,
.L629:
	movw	ip, #22960	@ tmp163,
	mov	r1, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r3, #22988	@ tmp165,
	cmp	r0, #0	@ D.36552,
	str	r0, [r4, r3]	@ D.36552, <variable>.CurFsID
	blt	.L630	@,
	movw	r1, #22964	@ tmp166,
	ldr	lr, [r4, r1]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	lr, #0	@ <variable>.FspPartitionOK,
	bne	.L631	@,
.L630:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC44	@,
	movw	r5, #22960	@ tmp169,
	movt	r1, #:upper16:.LC44	@,
	movw	r8, #22980	@ tmp171,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L632	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp185,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movw	sl, #22972	@ tmp195,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #204]	@ tmp185, <variable>.p_usrdat
	str	r7, [r6, #192]	@ tmp185, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r7, [r6, #196]	@ tmp185, <variable>.p_usrdat
	str	r7, [r6, #200]	@ tmp185, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, r8]	@ tmp185, <variable>.BwdFsID
	str	r7, [r4, sl]	@ tmp185, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.36568, <variable>.FwdFsID
	str	r0, [r4, r8]	@ D.36568, <variable>.BwdFsID
.L632:
	add	r0, r4, #22528	@, pCtx,
	movw	ip, #22960	@ tmp207,
	movw	r3, #22968	@ tmp205,
	add	r1, r0, #80	@,,
	mov	r2, #0	@ tmp206,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, r3]	@ tmp206, <variable>.RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L635:
	movw	r0, #22960	@ tmp142,
	movw	ip, #:lower16:g_VfmwChanStat	@ tmp143,
	ldr	r2, [r4, r0]	@ D.36549, <variable>.ChanID
	movt	ip, #:upper16:g_VfmwChanStat	@ tmp143,
	add	r1, r2, r2, asl #1	@, tmp146, D.36549, D.36549,
	add	lr, r1, #1	@ tmp147, tmp146,
	add	r2, ip, lr, asl #3	@, tmp150, tmp143, tmp147,
	ldr	r0, [r2, r3]	@ <variable>.u32SkipFind, <variable>.u32SkipFind
	add	r1, r0, #1	@ tmp162, <variable>.u32SkipFind,
	str	r1, [r2, r3]	@ tmp162, <variable>.u32SkipFind
	b	.L629	@
.L631:
	mov	r1, r0	@, D.36552
	mov	r0, r4	@, pCtx
	bl	Mp4_RecordFrameAtr	@
	movw	r2, #22544	@ tmp211,
	mov	r1, #0	@ tmp212,
	mov	r0, #0	@,
	str	r1, [r4, r2]	@ tmp212, <variable>.ErrorLevel
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	Mp4_Frame_Atr, .-Mp4_Frame_Atr
	.align	2
	.global	Frame_Init
	.type	Frame_Init, %function
Frame_Init:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #22060	@ tmp162,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, [r0, r3]	@ D.36246, <variable>.pstExtraData
	mov	r4, r0	@ pCtx, pCtx
	.pad #76
	sub	sp, sp, #76	@,,
	mov	r3, r2	@ PicHeight, PicHeight
	ldr	r0, [r5, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L637	@,
	ldr	r2, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #25	@ <variable>.eCapLevel,
	beq	.L665	@,
.L638:
	mov	r8, #2	@,
	mov	r6, r3	@ PicHeight.2291, PicHeight
	str	r8, [sp, #28]	@, %sfp
	mov	r7, r1	@ PicWidth.2290, PicWidth
	mov	r8, #5	@ DispFsNum,
	mov	sl, #3	@ DecFsNum,
.L646:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp172,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp172,
	ldr	ip, [lr, #36]	@ D.36279, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36279,
	beq	.L652	@,
	movw	r0, #22960	@ tmp178,
	ldr	r1, [r5, #28]	@ <variable>.s32SyntaxMemSize, <variable>.s32SyntaxMemSize
	ldr	r3, [r4, r0]	@ <variable>.ChanID, <variable>.ChanID
	mov	lr, #2	@ tmp175,
	ldr	r0, [r5, #24]	@ <variable>.s32SyntaxMemAddr, <variable>.s32SyntaxMemAddr
	mov	r2, #40	@ tmp176,
	mov	r5, #0	@ tmp177,
	str	r2, [sp, #4]	@ tmp176,
	str	r3, [sp, #12]	@ <variable>.ChanID,
	mov	fp, #16	@ tmp181,
	str	r5, [sp, #8]	@ tmp177,
	mov	r2, r7	@, PicWidth.2290
	str	fp, [sp, #20]	@ tmp181,
	movw	r5, #:lower16:.LANCHOR2	@ tmp180,
	str	lr, [sp, #0]	@ tmp175,
	movt	r5, #:upper16:.LANCHOR2	@ tmp180,
	mov	r3, r6	@, PicHeight.2291
	str	r5, [sp, #16]	@ tmp180,
	blx	ip	@ D.36279
	subs	fp, r0, #0	@ D.36286,
	bne	.L652	@,
	ldr	r2, [r5, #404]	@ D.36290, MemArrange.ValidPMVNum
	cmp	r2, #1	@ D.36290,
	ldrle	r3, [r5, #276]	@ prephitmp.2279, MemArrange.ValidFrameNum
	ble	.L655	@,
	ldr	r3, [r5, #276]	@ prephitmp.2279, MemArrange.ValidFrameNum
	cmp	r3, #2	@ prephitmp.2279,
	ble	.L655	@,
	ldr	lr, [r5, #8]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	movw	r1, #22080	@ tmp187,
	add	r9, sp, #32	@ tmp225,,
	str	lr, [r4, r1]	@ MemArrange.FrameAddr, <variable>.VdmMemAllot.frame_phy_addr
	ldr	r0, [r5, #8]	@, MemArrange.FrameAddr
	bl	MEM_Phy2Vir	@
	movw	ip, #22068	@ tmp192,
	mov	r1, #36	@,
	str	r0, [r4, ip]	@, <variable>.VdmMemAllot.frame_vir_addr
	mov	r0, r9	@, tmp225
	bl	__memzero	@
	movw	r0, #22060	@ tmp195,
	ldr	r3, [r4, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r1, fp	@,
	ldr	r2, [r3, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r7, [sp, #60]	@ PicWidth.2290, FspInstCfg.s32DispFsWidth
	strb	fp, [sp, #34]	@ tmp1, FspInstCfg.s32RprEnable
	str	r7, [sp, #44]	@ PicWidth.2290, FspInstCfg.s32DecFsWidth
	movw	r7, #22060	@ tmp206,
	str	r6, [sp, #64]	@ PicHeight.2291, FspInstCfg.s32DispFsHeight
	strb	r2, [sp, #32]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r6, [sp, #48]	@ PicHeight.2291, FspInstCfg.s32DecFsHeight
	ldr	r5, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #24	@ <variable>.eCapLevel,
	uxtbne	fp, sl	@ iftmp.544, DecFsNum
	strb	fp, [sp, #37]	@, FspInstCfg.s32ExpectedDecFsNum
	ldr	r6, [r4, r7]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r7, #0	@ tmp209,
	strb	r8, [sp, #39]	@ DispFsNum, FspInstCfg.s32ExpectedDispFsNum
	ldr	ip, [r6, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movw	r6, #22960	@ tmp211,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	ip, #24	@ <variable>.eCapLevel,
	strb	r7, [sp, #36]	@ tmp209, FspInstCfg.s32UserDec
	ldrne	r1, [sp, #28]	@, %sfp
	moveq	ip, #1	@ iftmp.545,
	uxtbne	ip, r1	@ iftmp.545,
	mov	r1, r9	@, tmp225
	strb	ip, [sp, #40]	@ iftmp.545, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.36314,
	bne	.L661	@,
	movw	r3, #22060	@ tmp214,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	ip, [r4, r3]	@ temp.2308, <variable>.pstExtraData
	add	r3, sp, #68	@,,
	ldr	r2, [ip, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [ip, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@ Ret
	movweq	r3, #22964	@ tmp222,
	moveq	r2, #1	@ tmp223,
	streq	r2, [r4, r3]	@ tmp223, <variable>.FspPartitionOK
	bne	.L666	@,
.L642:
	add	sp, sp, #76	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L637:
	ldr	ip, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	bne	.L638	@,
	ldr	ip, [r5, #568]	@ temp.2294, <variable>.stChanOption.s32MaxWidth
	cmp	r1, ip	@ PicWidth, temp.2294
	ldrhi	lr, [r5, #572]	@ prephitmp.2296, <variable>.stChanOption.s32MaxHeight
	bhi	.L648	@,
	ldr	lr, [r5, #572]	@ prephitmp.2296, <variable>.stChanOption.s32MaxHeight
	cmp	r2, lr	@ PicHeight, prephitmp.2296
	bhi	.L648	@,
	ldr	r6, [r5, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r5, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r6, #1	@,
	streq	r6, [sp, #28]	@, %sfp
	beq	.L651	@,
	add	r7, sl, #1	@ PmvNum.2297, DecFsNum,
	cmp	r7, #17	@ PmvNum.2297,
	movge	r7, #17	@ PmvNum.2297,
	str	r7, [sp, #28]	@ PmvNum.2297, %sfp
.L651:
	mov	r6, r3	@ PicHeight.2291, PicHeight
	mov	r7, r1	@ PicWidth.2290, PicWidth
.L664:
	ldr	r8, [r5, #616]	@ DispFsNum, <variable>.stChanOption.s32DisplayFrameNum
	b	.L646	@
.L665:
	ldr	ip, [r5, #568]	@ D.36253, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r1	@ D.36253, PicWidth
	mov	r7, ip	@ PicWidth.2290, D.36253
	ldrcc	r8, [r5, #572]	@ prephitmp.2299, <variable>.stChanOption.s32MaxHeight
	bcc	.L640	@,
	ldr	r6, [r5, #572]	@ PicHeight.2291, <variable>.stChanOption.s32MaxHeight
	cmp	r6, r3	@ PicHeight.2291, PicHeight
	mov	r8, r6	@ prephitmp.2299, PicHeight.2291
	bcc	.L640	@,
	movw	ip, #22964	@ tmp166,
	ldr	r1, [r4, ip]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r1, #1	@ <variable>.FspPartitionOK,
	beq	.L642	@,
	ldr	r0, [r5, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r5, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r2, #1	@,
	streq	r2, [sp, #28]	@, %sfp
	beq	.L664	@,
	add	r2, sl, #1	@ PmvNum.2292, DecFsNum,
	cmp	r2, #17	@ PmvNum.2292,
	movge	r2, #17	@ PmvNum.2292,
	str	r2, [sp, #28]	@ PmvNum.2292, %sfp
	ldr	r8, [r5, #616]	@ DispFsNum, <variable>.stChanOption.s32DisplayFrameNum
	b	.L646	@
.L655:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36259,
	b	.L642	@
.L652:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36259,
	b	.L642	@
.L661:
	mov	r0, r7	@, tmp209
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36259,
	b	.L642	@
.L648:
	mov	r2, r1	@, PicWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36259,
	b	.L642	@
.L666:
	mov	r0, r5	@, D.36314
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36259,
	b	.L642	@
.L640:
	mov	r2, r1	@, PicWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	str	ip, [sp, #0]	@ D.36253,
	str	r8, [sp, #4]	@ prephitmp.2299,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36259,
	b	.L642	@
	.fnend
	.size	Frame_Init, .-Frame_Init
	.align	2
	.global	Mp4_GetUserDataBuf
	.type	Mp4_GetUserDataBuf, %function
Mp4_GetUserDataBuf:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r1, r2, asl #2]	@ prephitmp.2325,* pUserData
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ prephitmp.2325,
	beq	.L670	@,
.L668:
	mov	r0, r3	@, prephitmp.2325
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L670:
	str	r1, [sp, #4]	@,
	str	r2, [sp, #0]	@,
	bl	GetUsd	@
	ldr	r2, [sp, #0]	@,
	ldr	r1, [sp, #4]	@,
	cmp	r0, #0	@ prephitmp.2325,
	mov	r3, r0	@ prephitmp.2325,
	str	r0, [r1, r2, asl #2]	@ prephitmp.2325,* pUserData
	addne	r0, r2, #4	@ tmp140, UserID,
	strne	r0, [r3, #1036]	@ tmp140, <variable>.from
	ldrne	r3, [r1, r2, asl #2]	@ prephitmp.2325,* pUserData
	b	.L668	@
	.fnend
	.size	Mp4_GetUserDataBuf, .-Mp4_GetUserDataBuf
	.align	2
	.global	Mp4_Syntax_UserData
	.type	Mp4_Syntax_UserData, %function
Mp4_Syntax_UserData:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r2, #6	@ len,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r7, #0	@ tmp163,
	mov	r4, r0	@ pCtx, pCtx
	mvngt	r3, #255	@ monitor,
	str	r7, [sp, #32]	@ tmp163, ver
	movgt	r5, #4	@ i,
	str	r7, [sp, #28]	@ tmp163, build
	movwgt	r6, #1027	@ tmp323,
	str	r7, [sp, #24]	@ tmp163, ver2
	str	r7, [sp, #20]	@ tmp163, ver3
	strb	r7, [sp, #39]	@ tmp163, last
	bgt	.L677	@,
	b	.L719	@
.L709:
	ldrb	r0, [r1, r5]	@ zero_extendqisi2	@ D.35099,* i
	orr	r3, r3, r0	@ D.35101, monitor, D.35099
	mov	r3, r3, asl #8	@ monitor, D.35101,
	cmp	r3, #256	@ monitor,
	beq	.L710	@,
	add	r5, r5, #1	@ i, i,
	strb	r0, [ip, #3]	@ D.35099, <variable>.TmpUserData
	cmp	r2, r5	@ len, i
	add	r7, r7, #1	@ userdata_len, userdata_len,
	ble	.L675	@,
.L677:
	ldrb	r0, [r1, r5]	@ zero_extendqisi2	@ D.35099,* i
	add	ip, r4, r7	@ tmp173, pCtx, userdata_len
	orr	r3, r3, r0	@ D.35101, monitor, D.35099
	mov	r3, r3, asl #8	@ monitor, D.35101,
	cmp	r3, #256	@ monitor,
	beq	.L710	@,
	add	r7, r7, #1	@ userdata_len, userdata_len,
	strb	r0, [ip, #3]	@ D.35099, <variable>.TmpUserData
	cmp	r7, r6	@ userdata_len, tmp323
	add	ip, r4, r7	@ tmp330, pCtx, userdata_len
	beq	.L712	@,
	add	r5, r5, #1	@ i, i,
	cmp	r2, r5	@ len, i
	bgt	.L709	@,
.L675:
	cmp	r5, r2	@ i, len
	addgt	r2, r2, #1	@ tmp318, len,
	movgt	r5, r2, asl #3	@ BitUsed, tmp318,
	bgt	.L673	@,
.L714:
	cmp	r7, #2	@ userdata_len,
	movw	r2, #22042	@ tmp180,
	mov	ip, #1	@ tmp181,
	mov	r5, r5, asl #3	@ BitUsed, i,
	strb	ip, [r4, r2]	@ tmp181, <variable>.MP4SyntaxState.userdata_decode_right
	bhi	.L713	@,
.L673:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L719:
	add	r2, r2, #1	@ tmp172, len,
	movw	r3, #22042	@ tmp169,
	strb	r7, [r0, r3]	@ tmp163, <variable>.MP4SyntaxState.userdata_decode_right
	mov	r5, r2, asl #3	@ BitUsed, tmp172,
	b	.L673	@
.L710:
	sub	r5, r5, #2	@ i, i,
	cmp	r5, r2	@ i, len
	addgt	r2, r2, #1	@ tmp318, len,
	movgt	r5, r2, asl #3	@ BitUsed, tmp318,
	bgt	.L673	@,
	b	.L714	@
.L713:
	movw	lr, #22960	@ tmp183,
	add	sl, r4, #22528	@, pCtx,
	movw	r8, #22572	@ tmp187,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r1, sl, #52	@,,
	ldr	r2, [r4, r8]	@, <variable>.UserID
	bl	Mp4_GetUserDataBuf	@
	movw	r3, #22596	@ tmp189,
	cmp	r0, #0	@ D.35115,
	str	r0, [r4, r3]	@ D.35115, <variable>.CurUsrData
	addeq	r9, r7, #-2147483646	@ prephitmp.2364, userdata_len,
	addeq	r6, r4, #3	@ buf, pCtx,
	beq	.L680	@,
	adds	r9, r7, #-2147483648	@ prephitmp.2364, userdata_len,
	sub	r8, r7, #2	@ userdata_len.2392, userdata_len,
	str	r8, [r0, #1048]	@ userdata_len.2392, <variable>.data_size
	movpl	r2, #0	@ iftmp.447,
	ldr	r0, [r4, r3]	@ D.35116, <variable>.CurUsrData
	bmi	.L715	@,
.L682:
	add	r6, r4, #3	@ buf, pCtx,
	movw	fp, #22060	@ tmp200,
	mov	r1, r6	@, buf
	bl	memcpy	@
	ldr	ip, [r4, fp]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #22596	@ tmp197,
	movw	r3, #:lower16:g_event_report	@ tmp202,
	ldr	r0, [r4, r2]	@ <variable>.CurUsrData, <variable>.CurUsrData
	movt	r3, #:upper16:g_event_report	@ tmp202,
	ldrd	sl, [ip, #56]	@, <variable>.pstExtraData,
	mov	r1, #1056	@ tmp198,
	strd	sl, [r0, r1]	@, <variable>.CurUsrData, tmp198
	ldr	r3, [r3, #0]	@ g_event_report.448, g_event_report
	cmp	r3, #0	@ g_event_report.448,
	moveq	r7, r8	@ userdata_len, userdata_len.2392
	beq	.L680	@,
	ldr	sl, [r4, r2]	@ <variable>.CurUsrData, <variable>.CurUsrData
	add	r2, sp, #40	@ tmp207,,
	movw	r7, #22960	@ tmp205,
	mov	r1, #6	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r7, r8	@ userdata_len, userdata_len.2392
	str	sl, [r2, #-24]!	@ <variable>.CurUsrData, para
	blx	r3	@ g_event_report.448
.L680:
	cmp	r9, #0	@ prephitmp.2364,
	movge	r3, #0	@ tmp,
	blt	.L716	@,
.L685:
	add	lr, r4, r3	@ tmp209, pCtx, tmp
	add	sl, sp, #32	@ tmp320,,
	add	r8, sp, #28	@ tmp322,,
	mov	r2, #0	@ tmp211,
	mov	r0, r6	@, buf
	strb	r2, [lr, #3]	@ tmp211, <variable>.TmpUserData
	movw	r1, #:lower16:.LC50	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC50	@,
	mov	r3, r8	@, tmp322
	add	r7, sp, #39	@ last.451,,
	str	r7, [sp, #0]	@ last.451,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L717	@,
.L686:
	ldr	r2, [sp, #28]	@ build, build
	cmp	r0, #3	@ e,
	ldr	r0, [sp, #32]	@ ver, ver
	mov	r1, #22016	@ tmp219,
	movw	r3, #22020	@ tmp221,
	str	r2, [r4, r3]	@ build, <variable>.MP4Syntax.divx_build
	movne	r2, #0	@ prephitmp.2369,
	str	r0, [r4, r1]	@ ver, <variable>.MP4Syntax.divx_version
	beq	.L718	@,
.L689:
	movw	lr, #22024	@ tmp226,
	str	r2, [r4, lr]	@ prephitmp.2369, <variable>.MP4Syntax.divx_packed
.L687:
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC52	@,
	mov	r2, r8	@, tmp322
	movt	r1, #:upper16:.LC52	@,
	bl	sscanf	@
	cmp	r0, #1	@,
	beq	.L690	@,
	add	r9, sp, #24	@ tmp231,,
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC53	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC53	@,
	mov	r3, r9	@, tmp231
	str	r8, [sp, #4]	@ tmp322,
	add	r7, sp, #20	@ tmp232,,
	str	r7, [sp, #0]	@ tmp232,
	bl	sscanf	@
	cmp	r0, #4	@,
	beq	.L690	@,
	mov	r2, sl	@, tmp320
	mov	r3, r9	@, tmp231
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	str	r7, [sp, #0]	@ tmp232,
	bl	sscanf	@
	add	r0, r0, #1	@ e.2398,,
	cmp	r0, #1	@ e.2398,
	ble	.L691	@,
	ldr	ip, [sp, #24]	@ ver2, ver2
	cmp	r0, #4	@ e.2398,
	ldr	r0, [sp, #32]	@ ver, ver
	ldr	r3, [sp, #20]	@ ver3, ver3
	mov	r1, ip, asl #8	@ tmp240, ver2,
	add	r2, r1, r0, asl #16	@, tmp242, tmp240, ver,
	add	r3, r2, r3	@ prephitmp.2368, tmp242, ver3
	str	r3, [sp, #28]	@ prephitmp.2368, build
	beq	.L692	@,
.L691:
	mov	r2, #7	@,
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	strncmp	@
	cmp	r0, #0	@,
	movweq	r3, #22032	@ tmp246,
	movweq	r2, #4600	@ tmp247,
	streq	r2, [r4, r3]	@ tmp247, <variable>.MP4Syntax.lavc_build
.L693:
	mov	r2, r8	@, tmp322
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	sscanf	@
	movw	ip, #21282	@ tmp256,
	movw	r1, #21281	@ tmp253,
	cmp	r0, #1	@,
	movw	r0, #21279	@ tmp259,
	ldreq	r2, [sp, #28]	@ build, build
	movweq	r3, #22028	@ tmp251,
	streq	r2, [r4, r3]	@ build, <variable>.MP4Syntax.xvid_build
	movw	r3, #22028	@ tmp268,
	ldr	r2, [r4, r3]	@ prephitmp.2366, <variable>.MP4Syntax.xvid_build
	mov	r3, #0	@ tmp254,
	strb	r3, [r4, ip]	@ tmp254, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	movw	ip, #21278	@ tmp262,
	cmp	r2, #0	@ prephitmp.2366,
	strb	r3, [r4, r0]	@ tmp254, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	movw	r0, #21280	@ tmp265,
	strb	r3, [r4, ip]	@ tmp254, <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT
	strb	r3, [r4, r0]	@ tmp254, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	strb	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	bne	.L695	@,
	mov	lr, #22016	@ tmp269,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r2, #500	@ <variable>.MP4Syntax.divx_version,
	movcs	r2, #1	@ tmp280,
	strcsb	r2, [r4, r1]	@ tmp280, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	bcc	.L697	@,
.L699:
	mov	lr, #22016	@ tmp286,
	movw	r1, #22028	@ tmp292,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	movw	ip, #502	@ tmp288,
	ldr	r0, [r4, r1]	@ <variable>.MP4Syntax.xvid_build, <variable>.MP4Syntax.xvid_build
	movw	lr, #22032	@ tmp298,
	cmp	r2, ip	@ <variable>.MP4Syntax.divx_version, tmp288
	movw	r1, #4668	@ tmp301,
	sub	r3, r0, #1	@ tmp293, <variable>.MP4Syntax.xvid_build,
	movwhi	ip, #21282	@ tmp289,
	movhi	r2, #1	@ tmp290,
	strhib	r2, [r4, ip]	@ tmp290, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	cmp	r3, #11	@ tmp293,
	ldr	ip, [r4, lr]	@ <variable>.MP4Syntax.lavc_build, <variable>.MP4Syntax.lavc_build
	movwls	r3, #21279	@ tmp295,
	movls	r2, #1	@ tmp296,
	sub	r0, ip, #1	@ tmp299, <variable>.MP4Syntax.lavc_build,
	strlsb	r2, [r4, r3]	@ tmp296, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	mov	r3, #22016	@ tmp305,
	cmp	r0, r1	@ tmp299, tmp301
	ldr	ip, [r4, r3]	@ prephitmp.2406, <variable>.MP4Syntax.divx_version
	movw	r2, #498	@ tmp307,
	movwls	r1, #21279	@ tmp302,
	movls	r0, #1	@ tmp303,
	sub	lr, ip, #1	@ tmp306, prephitmp.2406,
	strlsb	r0, [r4, r1]	@ tmp303, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	lr, r2	@ tmp306, tmp307
	movwls	r2, #21279	@ tmp308,
	movls	lr, #1	@ tmp309,
	strlsb	lr, [r4, r2]	@ tmp309, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	ip, #500	@ prephitmp.2406,
	bne	.L673	@,
	movw	r0, #22020	@ tmp312,
	movw	r3, #413	@ tmp314,
	ldr	r2, [r4, r0]	@ <variable>.MP4Syntax.divx_build, <variable>.MP4Syntax.divx_build
	cmp	r2, r3	@ <variable>.MP4Syntax.divx_build, tmp314
	movweq	r3, #21280	@ tmp315,
	moveq	r2, #1	@ tmp316,
	streqb	r2, [r4, r3]	@ tmp316, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	b	.L673	@
.L712:
	sub	r5, r5, #2	@ tmp176, i,
	movw	r1, #22042	@ tmp177,
	mov	r0, #0	@ tmp178,
	strb	r0, [r4, r1]	@ tmp178, <variable>.MP4SyntaxState.userdata_decode_right
	mov	r5, r5, asl #3	@ BitUsed, tmp176,
	b	.L673	@
.L690:
	ldr	r3, [sp, #28]	@ prephitmp.2368, build
.L692:
	movw	lr, #22032	@ tmp248,
	str	r3, [r4, lr]	@ prephitmp.2368, <variable>.MP4Syntax.lavc_build
	b	.L693	@
.L715:
	cmp	r7, #1024	@ userdata_len,
	movlt	r2, r7	@ iftmp.447, userdata_len
	movge	r2, #1024	@ iftmp.447,
	b	.L682	@
.L718:
	ldrsb	ip, [sp, #39]	@ last, last
	cmp	ip, #112	@ last,
	movne	r2, #0	@, prephitmp.2369
	moveq	r2, #1	@, prephitmp.2369
	b	.L689	@
.L695:
	mov	r1, #22016	@ tmp272,
	ldr	r0, [r4, r1]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r0, #0	@ <variable>.MP4Syntax.divx_version,
	beq	.L698	@,
	str	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.divx_version
	movw	r1, #22020	@ tmp276,
	str	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.divx_build
.L697:
	movw	r3, #22028	@ tmp278,
	ldr	r2, [r4, r3]	@ prephitmp.2366, <variable>.MP4Syntax.xvid_build
.L698:
	cmp	r2, #1	@ prephitmp.2366,
	movweq	r3, #21281	@ tmp283,
	streqb	r2, [r4, r3]	@ prephitmp.2366, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	b	.L699	@
.L716:
	add	r3, r7, #2	@ tmp, userdata_len,
	cmp	r3, #1024	@ tmp,
	movge	r3, #1024	@ tmp,
	b	.L685	@
.L717:
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC51	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC51	@,
	mov	r3, r8	@, tmp322
	str	r7, [sp, #0]	@ last.451,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L687	@,
	b	.L686	@
	.fnend
	.size	Mp4_Syntax_UserData, .-Mp4_Syntax_UserData
	.align	2
	.global	Mp4_Syntax_Parse
	.type	Mp4_Syntax_Parse, %function
Mp4_Syntax_Parse:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #84
	sub	sp, sp, #84	@,,
	add	r5, sp, #32	@ tmp708,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r8, r2	@ CodeLen, CodeLen
	mov	r7, r1	@ pCode, pCode
	mov	r0, r5	@, tmp708
	movw	sl, #15864	@ tmp185,
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r5	@, tmp708
	bl	BsShow	@
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ tmp186,
	mov	r1, #0	@ tmp184,
	and	r3, r3, #1	@ prephitmp.2433, tmp186,
	mov	r6, r0	@ StartCode,
	cmp	r6, #32768	@ StartCode,
	movne	r2, #0	@, tmp191
	andeq	r2, r3, #1	@,, tmp191, prephitmp.2433
	cmp	r2, r1	@ tmp191,
	movw	r0, #19972	@ tmp183,
	str	r1, [r4, r0]	@ tmp184, <variable>.IsWaitToDecFlag
	bne	.L721	@,
	eor	ip, r3, #1	@ tmp196, prephitmp.2433,
	movw	lr, #438	@ tmp193,
	cmp	r6, lr	@ StartCode, tmp193
	movne	ip, #0	@, tmp199
	andeq	ip, ip, #1	@,, tmp199, tmp196
	cmp	ip, #0	@ tmp199,
	beq	.L722	@,
.L721:
	mov	sl, r5	@ tmp201, tmp708
	add	r5, sp, #4	@ tmp200,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp201,,,,
	mov	ip, r5	@, tmp200
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	sl, {r0, r1, r2}	@ tmp201,,,
	stmia	ip, {r0, r1, r2}	@ tmp710,,,
	mov	r1, #32	@,
	mov	r0, r5	@, tmp200
	bl	BsSkip	@
	mov	r0, r5	@, tmp200
	mov	r1, #32	@,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	sl, r0	@ D.35933,
	mov	r0, r5	@, tmp200
	bl	BsGet	@
	movw	r5, #:lower16:1128615492	@ tmp206,
	movw	r1, #:lower16:1213419593	@ tmp209,
	movt	r5, #:upper16:1128615492	@ tmp206,
	movt	r1, #:upper16:1213419593	@ tmp209,
	cmp	r0, r5	@, tmp206
	cmpeq	sl, r1	@, D.35933, tmp209
	bne	.L794	@,
	mov	r3, #19968	@ tmp219,
	movw	ip, #22996	@ tmp216,
	ldr	r5, [r4, r3]	@ tmp221,
	mov	r2, #1	@ tmp217,
	add	lr, r4, #15680	@, pCtx,
	strb	r2, [r4, ip]	@ tmp217, <variable>.IsStreamEndFlag
	tst	r5, #130	@ tmp221,
	movw	r1, #22960	@ tmp228,
	orrne	r5, r5, #32	@ tmp225, tmp221,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	movwne	ip, #19972	@ tmp226,
	strne	r5, [r4, r3]	@ tmp225, <variable>.PicIntegrality
	strne	r2, [r4, ip]	@ tmp217, <variable>.IsWaitToDecFlag
	add	r1, lr, #24	@,,
	bl	MP4_ClearCurPacket	@
	mov	r5, #0	@ BitUsed,
.L725:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L794:
	movw	r0, #15864	@ tmp214,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ tmp215,
	and	r3, r2, #1	@ prephitmp.2433, tmp215,
.L722:
	cmp	r3, #0	@ prephitmp.2433,
	beq	.L795	@,
	movw	r0, #21277	@ tmp242,
	mov	r6, #196	@ StartCode,
	mov	sl, #1	@ tmp243,
	strb	sl, [r4, r0]	@ tmp243,
.L727:
	movw	ip, #15864	@ tmp245,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ tmp247,
	and	r1, r5, #2	@ tmp249, tmp247,
	uxtb	r5, r1	@ tmp250, tmp249
	cmp	r5, #0	@ tmp250,
	bne	.L728	@,
.L810:
	mov	sl, #19968	@ tmp251,
	ldr	r3, [r4, sl]	@ tmp253,
	ands	r9, r3, #130	@ tmp252, tmp253,
	bne	.L796	@,
	cmp	r6, #197	@ StartCode,
	beq	.L797	@,
	cmp	r6, #432	@ StartCode,
	beq	.L798	@,
	movw	lr, #437	@ tmp268,
	cmp	r6, lr	@ StartCode, tmp268
	beq	.L799	@,
	bic	r2, r6, #15	@ tmp272, StartCode,
	cmp	r2, #288	@ tmp272,
	beq	.L800	@,
	movw	r5, #435	@ tmp294,
	cmp	r6, r5	@ StartCode, tmp294
	beq	.L801	@,
	movw	r1, #438	@ tmp298,
	cmp	r6, r1	@ StartCode, tmp298
	beq	.L802	@,
	cmp	r6, #196	@ StartCode,
	beq	.L803	@,
	movw	r5, #434	@ tmp316,
	cmp	r6, r5	@ StartCode, tmp316
	beq	.L804	@,
	movw	r0, #286	@ tmp322,
	cmp	r6, r0	@ StartCode, tmp322
	beq	.L805	@,
.L744:
	add	r2, r4, #15680	@, pCtx,
	movw	ip, #22960	@ tmp330,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r2, #24	@,,
	bl	MP4_ClearCurPacket	@
	sub	sl, r8, #4	@ len, CodeLen,
	add	r8, r7, #4	@ ptr, pCode,
	mov	r5, #0	@ BitUsed,
.L732:
	movw	r3, #22997	@ tmp334,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.SeekReset, <variable>.SeekReset
	cmp	r1, #1	@ <variable>.SeekReset,
	beq	.L806	@,
.L746:
	cmp	r5, sl, asl #3	@ BitUsed, len,
	bhi	.L748	@,
	movw	r1, #438	@ tmp348,
	cmp	r6, r1	@ StartCode, tmp348
	cmpne	r6, #196	@, StartCode,
	bne	.L749	@,
	mov	lr, #19968	@ tmp353,
	ldr	r3, [r4, lr]	@ tmp355,
	tst	r3, #130	@ tmp355,
	beq	.L749	@,
	movw	r0, #21277	@ tmp356,
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.is_short_header, <variable>.MP4Syntax.is_short_header
	cmp	r6, #2	@ <variable>.MP4Syntax.is_short_header,
	beq	.L807	@,
	movw	r3, #21976	@ tmp397,
	movw	r2, #21972	@ tmp399,
	ldr	r3, [r4, r3]	@ prephitmp.2439, <variable>.MP4Syntax.image_width
	movw	r1, #22564	@ tmp398,
	ldr	r2, [r4, r2]	@ D.36069, <variable>.MP4Syntax.image_height
	movw	r0, #22568	@ tmp400,
	cmp	r3, #0	@ prephitmp.2439,
	str	r3, [r4, r1]	@ prephitmp.2439, <variable>.NewPicWidth
	str	r2, [r4, r0]	@ D.36069, <variable>.NewPicHeight
	bne	.L808	@,
.L753:
	cmp	r2, #0	@ D.36069,
	beq	.L755	@,
	movw	r0, #22560	@ tmp404,
	ldr	lr, [r4, r0]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	r2, lr	@ D.36069, <variable>.OldPicHeight
	beq	.L755	@,
.L791:
	movw	r1, #22060	@ tmp406,
	ldr	r2, [r4, r1]	@ prephitmp.2441, <variable>.pstExtraData
.L754:
	ldr	r3, [r2, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L809	@,
.L757:
	ldr	r6, [r2, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r6, #0	@ <variable>.s32DSDWaitFlag,
	beq	.L767	@,
	movw	r2, #22564	@ tmp460,
	ldr	r3, [r4, r2]	@ prephitmp.2439, <variable>.NewPicWidth
.L756:
	movw	r0, #22568	@ tmp523,
	movw	ip, #22556	@ tmp521,
	ldr	r6, [r4, r0]	@ <variable>.NewPicHeight, <variable>.NewPicHeight
	movw	r1, #22560	@ tmp522,
	str	r3, [r4, ip]	@ prephitmp.2439, <variable>.OldPicWidth
	str	r6, [r4, r1]	@ <variable>.NewPicHeight, <variable>.OldPicHeight
.L752:
	add	r0, r4, #20992	@ tmp527, pCtx,
	add	r6, r4, #21760	@ tmp525, pCtx,
	add	lr, r0, #216	@ tmp527, tmp527,
	add	ip, r6, #152	@ tmp525, tmp525,
	rsb	r7, r7, r8	@ tmp536, pCode, ptr
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp530,,,,
	mov	r6, ip	@ tmp529, tmp525
	add	r5, r5, r7, asl #3	@, BitUsed, BitUsed, tmp536,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp529,,,,
	mov	ip, r6	@ tmp712, tmp529
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp711,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp712,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp713,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp712,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp713,,,
	stmia	ip, {r0, r1, r2}	@ tmp714,,,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	movw	r3, #22540	@ tmp532,
	ldr	r1, [r4, r3]	@ <variable>.ImgCntOfSeq, <variable>.ImgCntOfSeq
	add	r2, r1, #1	@ tmp535, <variable>.ImgCntOfSeq,
	str	r2, [r4, r3]	@ tmp535,
	b	.L725	@
.L795:
	mov	r5, r6, lsr #8	@ tmp235, StartCode,
	movw	r0, #21277	@ tmp232,
	sub	r1, r5, #128	@ tmp236, tmp235,
	mov	sl, #2	@ tmp233,
	cmp	r1, #3	@ tmp236,
	strb	sl, [r4, r0]	@ tmp233, <variable>.MP4Syntax.is_short_header
	bhi	.L727	@,
	movw	r3, #15864	@ tmp237,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ tmp239,
	orr	ip, r2, #2	@ tmp240, tmp239,
	strb	ip, [r4, r3]	@ tmp240,
	movw	ip, #15864	@ tmp245,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ tmp247,
	and	r1, r5, #2	@ tmp249, tmp247,
	uxtb	r5, r1	@ tmp250, tmp249
	cmp	r5, #0	@ tmp250,
	beq	.L810	@,
.L728:
	mov	r2, r8	@, CodeLen
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	sl, r8	@ len, CodeLen
	bl	MP4_Dec_Slice	@
	mov	r8, r7	@ ptr, pCode
	mov	r5, r0	@ BitUsed,
	b	.L732	@
.L749:
	movw	r1, #22039	@ tmp538,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	cmp	r2, #1	@ <variable>.MP4SyntaxState.vol_decode_right,
	bne	.L725	@,
	movw	r3, #22536	@ tmp540,
	movw	r2, #22540	@ tmp544,
	ldr	r6, [r4, r3]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r0, r4, #21248	@, pCtx,
	add	r1, r4, #19968	@, pCtx,
	mov	lr, #0	@ tmp545,
	add	ip, r6, #1	@ tmp543, <variable>.SeqCnt,
	str	lr, [r4, r2]	@ tmp545, <variable>.ImgCntOfSeq
	str	ip, [r4, r3]	@ tmp543, <variable>.SeqCnt
	add	r0, r0, #60	@,,
	add	r1, r1, #32	@,,
	mov	r2, #604	@,
	bl	memcpy	@
	movw	r6, #20084	@ tmp555,
	movw	r0, #21972	@ tmp554,
	ldr	r3, [r4, r6]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	ldr	ip, [r4, r0]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	cmp	ip, r3	@ <variable>.MP4Syntax.image_height, <variable>.MP4Vol.video_object_layer_height
	beq	.L811	@,
.L773:
	movw	r2, #:lower16:g_event_report	@ tmp564,
	movt	r2, #:upper16:g_event_report	@ tmp564,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L775	@,
	movw	ip, #21976	@ tmp566,
	movw	lr, #21972	@ tmp568,
	ldrh	r1, [r4, ip]	@, <variable>.MP4Syntax.image_width
	movw	r0, #20080	@ tmp570,
	movw	ip, #20084	@ tmp572,
	strh	r1, [sp, #60]	@ movhi	@, para
	ldrh	r2, [r4, lr]	@, <variable>.MP4Syntax.image_height
	movw	lr, #22960	@ tmp575,
	strh	r2, [sp, #62]	@ movhi	@, para
	add	r2, sp, #60	@,,
	ldrh	r6, [r4, r0]	@, <variable>.MP4Vol.video_object_layer_width
	strh	r6, [sp, #64]	@ movhi	@, para
	ldrh	r1, [r4, ip]	@, <variable>.MP4Vol.video_object_layer_height
	strh	r1, [sp, #66]	@ movhi	@, para
	mov	r1, #2	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report
.L775:
	movw	ip, #20080	@ tmp580,
	movw	r1, #20084	@ tmp583,
	movw	r3, #22060	@ tmp585,
	ldr	r6, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	ldr	lr, [r4, ip]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	movw	r2, #21976	@ tmp579,
	ldr	r3, [r4, r3]	@ prephitmp.2437, <variable>.pstExtraData
	movw	r0, #21972	@ tmp582,
	str	r6, [r4, r0]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Syntax.image_height
	str	lr, [r4, r2]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Syntax.image_width
	ldr	r6, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L812	@,
.L776:
	ldr	r6, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r6, #0	@ <variable>.s32DSDWaitFlag,
	beq	.L784	@,
	movw	r6, #21976	@ tmp627,
	ldr	r2, [r4, r6]	@ prephitmp.2435, <variable>.MP4Syntax.image_width
.L774:
	movw	lr, #20084	@ tmp693,
	movw	r3, #21972	@ tmp690,
	ldr	r0, [r4, lr]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	movw	r1, #20080	@ tmp696,
	ldr	ip, [r4, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	movw	r6, #22556	@ tmp688,
	ldr	lr, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	str	r2, [r4, r6]	@ prephitmp.2435, <variable>.OldPicWidth
	movw	r2, #22039	@ tmp698,
	mov	r6, #0	@ tmp699,
	str	r0, [r4, r3]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Syntax.image_height
	strb	r6, [r4, r2]	@ tmp699, <variable>.MP4SyntaxState.vol_decode_right
	movw	r3, #21976	@ tmp695,
	movw	r2, #22560	@ tmp689,
	str	lr, [r4, r3]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Syntax.image_width
	str	ip, [r4, r2]	@ <variable>.MP4Syntax.image_height, <variable>.OldPicHeight
	b	.L725	@
.L796:
	orr	r0, r3, #32	@ tmp257, tmp253,
	movw	r3, #19972	@ tmp258,
	str	r0, [r4, sl]	@ tmp257, <variable>.PicIntegrality
	mov	r2, #1	@ tmp259,
	str	r2, [r4, r3]	@ tmp259,
	b	.L725	@
.L748:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	rsb	r7, r7, r8	@ tmp706, pCode, ptr
	bl	dprint_vfmw	@
	mov	r3, #19968	@ tmp702,
	ldr	ip, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r5, r7, asl #3	@ BitUsed, tmp706,
	bic	r0, ip, #178	@ tmp705, <variable>.PicIntegrality,
	str	r0, [r4, r3]	@ tmp705,
	b	.L725	@
.L806:
	movw	r0, #20080	@ tmp336,
	movw	lr, #20084	@ tmp338,
	ldr	r1, [r4, r0]	@, <variable>.MP4Vol.video_object_layer_width
	mov	r0, r4	@, pCtx
	ldr	r2, [r4, lr]	@, <variable>.MP4Vol.video_object_layer_height
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L813	@,
.L747:
	movw	ip, #22997	@ tmp341,
	mov	r2, #0	@ tmp342,
	strb	r2, [r4, ip]	@ tmp342, <variable>.SeekReset
	b	.L746	@
.L805:
	movw	sl, #:lower16:g_event_report	@ tmp323,
	movt	sl, #:upper16:g_event_report	@ tmp323,
	ldr	r3, [sl, #0]	@ g_event_report.527, g_event_report
	cmp	r3, #0	@ g_event_report.527,
	beq	.L744	@,
	movw	lr, #22960	@ tmp324,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.527
	b	.L744	@
.L799:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	movw	r3, #22572	@ tmp270,
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r8, #1	@ tmp271,
	mov	r0, r4	@, pCtx
	str	r8, [r4, r3]	@ tmp271, <variable>.UserID
	mov	r8, r7	@ ptr, pCode
	bl	Mp4_Syntax_Vo	@
	mov	r1, r6	@, StartCode
	mov	r5, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L732	@
.L808:
	movw	ip, #22556	@ tmp401,
	ldr	r6, [r4, ip]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	cmp	r3, r6	@ prephitmp.2439, <variable>.OldPicWidth
	bne	.L791	@,
	b	.L753	@
.L813:
	movw	r1, #:lower16:.LC66	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	b	.L747	@
.L798:
	movw	r5, #22572	@ tmp266,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	str	r9, [r4, r5]	@ tmp252, <variable>.UserID
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	mov	sl, r8	@ len, CodeLen
	bl	Mp4_Syntax_Vos	@
	mov	r1, r6	@, StartCode
	mov	r8, r7	@ ptr, pCode
	mov	r5, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L732	@
.L800:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	movw	r9, #22039	@ tmp276,
	bl	dprint_vfmw	@
	movw	ip, #22572	@ tmp274,
	mov	r2, r8	@, CodeLen
	mov	r0, #2	@ tmp275,
	mov	r1, r7	@, pCode
	str	r0, [r4, ip]	@ tmp275, <variable>.UserID
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Vol	@
	mov	r1, r6	@, StartCode
	mov	r5, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	cmp	sl, #1	@ <variable>.MP4SyntaxState.vol_decode_right,
	beq	.L735	@,
	movw	r1, #22040	@ tmp278,
	ldrb	fp, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.last_vol_decode_right, <variable>.MP4SyntaxState.last_vol_decode_right
	cmp	fp, #1	@ <variable>.MP4SyntaxState.last_vol_decode_right,
	beq	.L814	@,
.L735:
	mov	sl, r8	@ len, CodeLen
	mov	r8, r7	@ ptr, pCode
	b	.L732	@
.L797:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	mov	r5, r9	@ BitUsed, tmp252
	bl	dprint_vfmw	@
	add	r1, r4, #15680	@, pCtx,
	movw	ip, #22960	@ tmp261,
	add	r1, r1, #24	@,,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	b	.L725	@
.L755:
	movw	r2, #22060	@ tmp407,
	ldr	r2, [r4, r2]	@ prephitmp.2441, <variable>.pstExtraData
	ldr	r6, [r2, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r6, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L756	@,
	b	.L754	@
.L801:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	movw	ip, #22572	@ tmp296,
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, #3	@ tmp297,
	str	r0, [r4, ip]	@ tmp297, <variable>.UserID
	mov	r0, r4	@, pCtx
	mov	r8, r7	@ ptr, pCode
	bl	Mp4_Syntax_Gop	@
	mov	r1, r6	@, StartCode
	mov	r5, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L732	@
.L807:
	movw	ip, #21208	@ tmp358,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	r2, #2	@ <variable>.MP4Vop.vop_coding_type,
	beq	.L751	@,
	movw	r1, #21988	@ tmp361,
	movw	ip, #21980	@ tmp363,
	ldr	lr, [r4, ip]	@ <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_incr
	movw	r2, #20072	@ tmp368,
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.time_base, <variable>.MP4Syntax.time_base
	movw	r0, #21984	@ tmp371,
	ldr	r6, [r4, r2]	@ <variable>.MP4Vol.vop_time_increment_resolution, <variable>.MP4Vol.vop_time_increment_resolution
	movw	r2, #22000	@ tmp375,
	ldr	r3, [r4, r0]	@ <variable>.MP4Syntax.time_increment, <variable>.MP4Syntax.time_increment
	add	r0, lr, ip	@ D.36052, <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_base
	ldr	lr, [r4, r2]	@ <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.last_non_b_time
	str	r0, [r4, r1]	@ D.36052, <variable>.MP4Syntax.time_base
	movw	r1, #21996	@ tmp373,
	mla	r3, r6, r0, r3	@ D.36056, <variable>.MP4Vol.vop_time_increment_resolution, D.36052, <variable>.MP4Syntax.time_increment
	movw	r6, #21992	@ tmp360,
	str	ip, [r4, r6]	@ <variable>.MP4Syntax.time_base, <variable>.MP4Syntax.last_time_base
	rsb	r6, lr, r3	@ tmp377, <variable>.MP4Syntax.last_non_b_time, D.36056
	movw	lr, #22004	@ tmp374,
	str	r6, [r4, lr]	@ tmp377, <variable>.MP4Syntax.time_pp
	str	r3, [r4, r2]	@ D.36056, <variable>.MP4Syntax.last_non_b_time
	str	r3, [r4, r1]	@ D.36056, <variable>.MP4Syntax.time
	b	.L752	@
.L802:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	cmp	r8, #4	@ CodeLen,
	beq	.L815	@,
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	bl	Mp4_Syntax_Vop	@
	ldr	r3, [r4, sl]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	tst	r3, #2	@ <variable>.PicIntegrality,
	mov	r5, r0	@ BitUsed,
	bne	.L740	@,
	add	sl, r4, #15680	@, pCtx,
	movw	lr, #22960	@ tmp303,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r1, sl, #24	@,,
	bl	MP4_ClearCurPacket	@
.L739:
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC63	@,
	mov	r2, r5	@, BitUsed
	movt	r1, #:upper16:.LC63	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	mov	r8, r7	@ ptr, pCode
	b	.L732	@
.L784:
	movw	r7, #22960	@ tmp628,
	movw	sl, #22980	@ tmp630,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L785	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r9, #22972	@ tmp654,
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r8, #204]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	str	r6, [r8, #192]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r6, [r8, #196]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	str	r6, [r8, #200]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, sl]	@ <variable>.s32DSDWaitFlag, <variable>.BwdFsID
	str	r6, [r4, r9]	@ <variable>.s32DSDWaitFlag, <variable>.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r9]	@ D.36202, <variable>.FwdFsID
	str	r0, [r4, sl]	@ D.36202, <variable>.BwdFsID
.L785:
	add	r0, r4, #22528	@ temp.2559, pCtx,
	movw	r3, #22960	@ tmp667,
	add	r6, r0, #80	@ temp.2559, temp.2559,
	movw	r1, #22968	@ tmp664,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	lr, #0	@ tmp665,
	str	lr, [r4, r1]	@ tmp665, <variable>.RefNum
	mov	r1, r6	@, temp.2559
	bl	FSP_ClearNotInVoQueue	@
	movw	ip, #22060	@ tmp669,
	ldr	r3, [r4, ip]	@ temp.2560, <variable>.pstExtraData
	ldr	r2, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r2, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L786	@,
	ldr	r2, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #25	@ <variable>.eCapLevel,
	beq	.L816	@,
.L786:
	movw	r1, #22960	@ tmp674,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L787	@,
	movw	r2, #22060	@ tmp677,
	ldr	r0, [r4, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L788	@,
	movw	lr, #23004	@ tmp679,
	ldr	ip, [r4, lr]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	ip, #1	@ <variable>.DSDNeedClearQue,
	beq	.L788	@,
.L787:
	movw	r1, #21972	@ tmp683,
	movw	r6, #21976	@ tmp681,
	ldr	r2, [r4, r1]	@, <variable>.MP4Syntax.image_height
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r6]	@, <variable>.MP4Syntax.image_width
	bl	Frame_Init	@
	cmp	r0, #0	@,
	ldreq	r2, [r4, r6]	@ prephitmp.2435, <variable>.MP4Syntax.image_width
	beq	.L774	@
.L789:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r6]	@ prephitmp.2435, <variable>.MP4Syntax.image_width
	b	.L774	@
.L803:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	bl	Mp4_Syntax_ShortHeader	@
	ldr	r2, [r4, sl]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	tst	r2, #2	@ <variable>.PicIntegrality,
	mov	r5, r0	@ BitUsed,
	bne	.L742	@,
	add	ip, r4, #15680	@, pCtx,
	movw	r1, #22960	@ tmp312,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	add	r1, ip, #24	@,,
	mov	sl, r8	@ len, CodeLen
	bl	MP4_ClearCurPacket	@
	mov	r8, r7	@ ptr, pCode
	b	.L732	@
.L804:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	mov	sl, r8	@ len, CodeLen
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_UserData	@
	add	r8, r4, #15680	@, pCtx,
	movw	r3, #22960	@ tmp318,
	add	r1, r8, #24	@,,
	mov	r8, r7	@ ptr, pCode
	mov	r5, r0	@ BitUsed,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	b	.L732	@
.L811:
	movw	ip, #21976	@ tmp558,
	movw	r1, #20080	@ tmp559,
	ldr	r2, [r4, ip]	@ prephitmp.2435, <variable>.MP4Syntax.image_width
	ldr	lr, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	cmp	r2, lr	@ prephitmp.2435, <variable>.MP4Vol.video_object_layer_width
	bne	.L773	@,
	movw	r0, #22060	@ tmp562,
	ldr	r6, [r4, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r6, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r3, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L774	@,
	b	.L773	@
.L767:
	movw	sl, #22960	@ tmp461,
	movw	fp, #22980	@ tmp463,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, fp]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImg,
	beq	.L768	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r9, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r9, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r9, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r9, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r9, #204]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	str	r6, [r9, #192]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r6, [r9, #196]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	str	r6, [r9, #200]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	ldr	r1, [r4, fp]	@, <variable>.BwdFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	r3, #22972	@,
	ldr	r1, [r4, r3]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	ip, #22972	@,
	str	r6, [r4, fp]	@ <variable>.s32DSDWaitFlag, <variable>.BwdFsID
	str	r6, [r4, ip]	@ <variable>.s32DSDWaitFlag, <variable>.FwdFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #22972	@,
	str	r0, [r4, r1]	@ D.36124, <variable>.FwdFsID
	str	r0, [r4, fp]	@ D.36124, <variable>.BwdFsID
.L768:
	add	r6, r4, #22528	@ D.36125, pCtx,
	movw	ip, #22960	@ tmp500,
	add	r6, r6, #80	@ D.36125, D.36125,
	movw	r1, #22968	@ tmp497,
	mov	lr, #0	@ tmp498,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	lr, [r4, r1]	@ tmp498, <variable>.RefNum
	mov	r1, r6	@, D.36125
	bl	FSP_ClearNotInVoQueue	@
	movw	r2, #22060	@ tmp502,
	ldr	r3, [r4, r2]	@ temp.2511, <variable>.pstExtraData
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L769	@,
	ldr	r3, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L817	@,
.L769:
	movw	lr, #22960	@ tmp507,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L770	@,
	movw	r3, #22060	@ tmp510,
	ldr	ip, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L771	@,
	movw	r2, #23004	@ tmp512,
	ldr	r0, [r4, r2]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r0, #1	@ <variable>.DSDNeedClearQue,
	beq	.L771	@,
.L770:
	movw	lr, #22568	@ tmp516,
	movw	r6, #22564	@ tmp514,
	ldr	r2, [r4, lr]	@, <variable>.NewPicHeight
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r6]	@, <variable>.NewPicWidth
	bl	Frame_Init	@
	cmp	r0, #0	@,
	ldreq	r3, [r4, r6]	@ prephitmp.2439, <variable>.NewPicWidth
	beq	.L756	@
.L772:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@ prephitmp.2439, <variable>.NewPicWidth
	b	.L756	@
.L742:
	mov	r0, r4	@, pCtx
	mov	r1, #196	@,
	mov	sl, r8	@ len, CodeLen
	bl	MP4_Record_HeadPacketInfo	@
	mov	r8, r7	@ ptr, pCode
	b	.L732	@
.L740:
	mov	r0, r4	@, pCtx
	movw	r1, #438	@,
	bl	MP4_Record_HeadPacketInfo	@
	b	.L739	@
.L751:
	movw	lr, #21980	@ tmp379,
	movw	ip, #21992	@ tmp380,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_incr
	movw	r6, #20072	@ tmp384,
	ldr	r3, [r4, ip]	@ <variable>.MP4Syntax.last_time_base, <variable>.MP4Syntax.last_time_base
	movw	r1, #21984	@ tmp387,
	ldr	ip, [r4, r6]	@ <variable>.MP4Vol.vop_time_increment_resolution, <variable>.MP4Vol.vop_time_increment_resolution
	movw	r0, #22004	@ tmp391,
	ldr	r6, [r4, r1]	@ <variable>.MP4Syntax.time_increment, <variable>.MP4Syntax.time_increment
	add	r3, r2, r3	@ tmp381, <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.last_time_base
	movw	lr, #22000	@ tmp392,
	ldr	r1, [r4, r0]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.last_non_b_time
	movw	lr, #22008	@ tmp390,
	mla	r3, ip, r3, r6	@ D.36064, <variable>.MP4Vol.vop_time_increment_resolution, tmp381, <variable>.MP4Syntax.time_increment
	rsb	r0, r2, r1	@ tmp393, <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.time_pp
	movw	r1, #21996	@ tmp389,
	add	r6, r0, r3	@ tmp396, tmp393, D.36064
	str	r6, [r4, lr]	@ tmp396, <variable>.MP4Syntax.time_bp
	str	r3, [r4, r1]	@ D.36064, <variable>.MP4Syntax.time
	b	.L752	@
.L812:
	movw	r0, #22972	@ tmp590,
	movw	r7, #22980	@ tmp592,
	ldr	r1, [r4, r0]	@, <variable>.FwdFsID
	mov	r0, r4	@, pCtx
	mov	lr, #0	@ tmp587,
	str	lr, [sp, #68]	@ tmp587, RefNum
	str	lr, [sp, #76]	@ tmp587, NewNum
	str	lr, [sp, #72]	@ tmp587, ReadNum
	bl	MP4_FlushFrameToVo	@
	ldr	r1, [r4, r7]	@, <variable>.BwdFsID
	mov	r0, r4	@, pCtx
	bl	MP4_FlushFrameToVo	@
	movw	r1, #22960	@ tmp594,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	ip, #22960	@ tmp599,
	add	r2, sp, #72	@,,
	add	r3, sp, #76	@,,
	add	r1, sp, #68	@,,
	cmp	r0, #0	@ pImage
	strne	r6, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	VCTRL_GetChanImgNum	@
	movw	r3, #22060	@ tmp604,
	ldr	r3, [r4, r3]	@ temp.2538, <variable>.pstExtraData
	movw	r2, #22556	@ tmp605,
	ldr	r6, [r4, r2]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	ldr	r0, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r6, r0	@ <variable>.OldPicWidth, <variable>.s32DSDThrWidth
	bhi	.L778	@,
	movw	ip, #22560	@ tmp608,
	ldr	r2, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r6, [r4, ip]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	r6, r2	@ <variable>.OldPicHeight, <variable>.s32DSDThrHeight
	bhi	.L778	@,
	ldr	r0, [sp, #72]	@ ReadNum, ReadNum
	ldr	r1, [sp, #76]	@ NewNum, NewNum
	add	lr, r1, r0	@ tmp611, NewNum, ReadNum
	cmp	lr, #0	@ tmp611,
	ble	.L782	@,
.L781:
	mov	ip, #1	@ tmp621,
	str	ip, [r3, #728]	@ tmp621, <variable>.s32DSDWaitFlag
.L783:
	movw	r3, #22060	@ tmp625,
	movw	r1, #23004	@ tmp623,
	mov	r0, #1	@ tmp624,
	ldr	r3, [r4, r3]	@ prephitmp.2437, <variable>.pstExtraData
	str	r0, [r4, r1]	@ tmp624, <variable>.DSDNeedClearQue
	b	.L776	@
.L815:
	mov	r0, r4	@, pCtx
	mov	r1, r6	@, StartCode
	bl	MP4_Record_HeadPacketInfo	@
	mov	r5, r9	@ BitUsed, tmp252
	b	.L739	@
.L809:
	movw	lr, #22972	@ tmp413,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, lr]	@, <variable>.FwdFsID
	mov	ip, #0	@ tmp410,
	str	ip, [sp, #76]	@ tmp410, RefNum
	str	ip, [sp, #68]	@ tmp410, NewNum
	str	ip, [sp, #72]	@ tmp410, ReadNum
	bl	MP4_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L818	@,
.L758:
	movw	r6, #22980	@ tmp420,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r6]	@, <variable>.BwdFsID
	bl	MP4_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L819	@,
.L759:
	movw	lr, #22980	@ tmp429,
	movw	r6, #22960	@ tmp427,
	ldr	r1, [r4, lr]	@, <variable>.BwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	ip, #22960	@ tmp432,
	add	r1, sp, #76	@,,
	add	r2, sp, #72	@,,
	cmp	r0, #0	@ pImage
	movne	r3, #1	@ tmp431,
	strne	r3, [r0, #376]	@ tmp431, <variable>.u32IsLastFrame
	add	r3, sp, #68	@,,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	VCTRL_GetChanImgNum	@
	movw	r3, #22060	@ tmp437,
	ldr	r3, [r4, r3]	@ D.36080, <variable>.pstExtraData
	movw	r2, #22556	@ tmp438,
	ldr	r0, [r4, r2]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	ldr	r1, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r0, r1	@ <variable>.OldPicWidth, <variable>.s32DSDThrWidth
	bhi	.L761	@,
	movw	r1, #22560	@ tmp441,
	ldr	r2, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r0, [r4, r1]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	r0, r2	@ <variable>.OldPicHeight, <variable>.s32DSDThrHeight
	bhi	.L761	@,
	ldr	r2, [sp, #68]	@ NewNum, NewNum
	movw	lr, #22060	@ tmp451,
	ldr	r0, [sp, #72]	@ ReadNum, ReadNum
	mov	ip, #1	@ tmp450,
	add	r6, r2, r0	@ tmp444, NewNum, ReadNum
	cmp	r6, #0	@ tmp444,
	movgt	r6, #1	@ tmp447,
	movle	r6, #0	@ tmp448,
	str	r6, [r3, #728]	@ tmp448, <variable>.s32DSDWaitFlag
	movw	r3, #23004	@ tmp449,
	ldr	r2, [r4, lr]	@ prephitmp.2441, <variable>.pstExtraData
	str	ip, [r4, r3]	@ tmp450, <variable>.DSDNeedClearQue
	b	.L757	@
.L816:
	movw	lr, #22964	@ tmp672,
	ldr	ip, [r4, lr]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	ip, #0	@ <variable>.FspPartitionOK,
	bne	.L787	@,
.L788:
	mov	r0, r6	@, temp.2559
	bl	ResetVoQueue	@
	b	.L787	@
.L778:
	ldr	r6, [sp, #76]	@ NewNum, NewNum
	cmp	r6, #0	@ NewNum,
	bgt	.L781	@,
	ldr	r2, [sp, #72]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L781	@,
.L782:
	mov	lr, #0	@ tmp622,
	str	lr, [r3, #728]	@ tmp622, <variable>.s32DSDWaitFlag
	b	.L783	@
.L761:
	ldr	r1, [sp, #68]	@ NewNum, NewNum
	cmp	r1, #0	@ NewNum,
	ble	.L820	@,
.L764:
	mov	lr, #1	@ tmp454,
	str	lr, [r3, #728]	@ tmp454, <variable>.s32DSDWaitFlag
.L766:
	movw	r0, #22060	@ tmp458,
	movw	r3, #23004	@ tmp456,
	mov	r6, #0	@ tmp457,
	ldr	r2, [r4, r0]	@ prephitmp.2441, <variable>.pstExtraData
	str	r6, [r4, r3]	@ tmp457, <variable>.DSDNeedClearQue
	b	.L757	@
.L817:
	movw	r2, #22964	@ tmp505,
	ldr	r0, [r4, r2]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r0, #0	@ <variable>.FspPartitionOK,
	bne	.L770	@,
.L771:
	mov	r0, r6	@, D.36125
	bl	ResetVoQueue	@
	b	.L770	@
.L814:
	add	r2, r4, #19968	@, pCtx,
	add	lr, r4, #20480	@, pCtx,
	add	r0, r2, #32	@,,
	add	r1, lr, #124	@,,
	mov	r2, #604	@,
	mov	sl, r8	@ len, CodeLen
	bl	memcpy	@
	movw	r3, #21269	@ tmp291,
	strb	fp, [r4, r3]	@ tmp8, <variable>.MP4Syntax.vol_decode_over
	mov	r8, r7	@ ptr, pCode
	strb	fp, [r4, r9]	@, <variable>.MP4SyntaxState.vol_decode_right
	b	.L732	@
.L820:
	ldr	ip, [sp, #72]	@ ReadNum, ReadNum
	cmp	ip, #3	@ ReadNum,
	movle	ip, #0	@ tmp455,
	strle	ip, [r3, #728]	@ tmp455, <variable>.s32DSDWaitFlag
	ble	.L766	@,
	b	.L764	@
.L819:
	movw	r1, #:lower16:.LC67	@,
	ldr	r2, .L821	@,
	movt	r1, #:upper16:.LC67	@,
	movw	r3, #2601	@,
	add	r0, r0, #32	@,,
	bl	dprint_vfmw	@
	b	.L759	@
.L818:
	movw	r1, #:lower16:.LC67	@,
	ldr	r2, .L821	@,
	movt	r1, #:upper16:.LC67	@,
	movw	r3, #2593	@,
	add	r0, r0, #32	@,,
	bl	dprint_vfmw	@
	b	.L758	@
.L822:
	.align	2
.L821:
	.word	.LANCHOR0+1356
	.fnend
	.size	Mp4_Syntax_Parse, .-Mp4_Syntax_Parse
	.align	2
	.global	MPEG4DEC_Decode
	.type	MPEG4DEC_Decode, %function
MPEG4DEC_Decode:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #22548	@ tmp167,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r3, [r4, r0]	@ <variable>.InitComplete, <variable>.InitComplete
	mov	r5, r1	@ ptr_strm_para, ptr_strm_para
	cmp	r3, #0	@ <variable>.InitComplete,
	beq	.L824	@,
	ldr	r1, [r1, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r1, #0	@ <variable>.LenInByte,
	beq	.L824	@,
	ldr	r2, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, #0	@ <variable>.PhyAddr,
	beq	.L824	@,
	ldr	ip, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L824	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	add	r6, r4, #15680	@ D.36877, pCtx,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #8]	@, <variable>.PhyAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	add	r6, r6, #24	@ D.36877, D.36877,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #88]	@, <variable>.PhyAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #92]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #85]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	r7, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@,* <variable>.VirAddr
	bl	dprint_vfmw	@
	ldr	ip, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	ldrb	r2, [ip, #1]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	ldr	r7, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@,
	bl	dprint_vfmw	@
	mov	r2, #160	@,
	mov	r1, r5	@, ptr_strm_para
	mov	r0, r6	@, D.36877
	bl	memcpy	@
	mov	r0, r4	@, pCtx
	mov	r1, r6	@, D.36877
	bl	MP4_GetScdUpMsg	@
	mov	r0, r4	@, pCtx
	bl	MP4_Check_CurPacket	@
	cmn	r0, #1	@ D.36878,
	mov	r7, r0	@ D.36878,
	beq	.L865	@,
	mov	r1, r6	@, D.36877
	mov	r0, r4	@, pCtx
	movw	sl, #15712	@ tmp207,
	movw	r9, #15704	@ tmp210,
	movw	r8, #15716	@ tmp213,
	bl	MP4_GetScdUpMsg	@
	ldr	r7, [r4, sl]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #22044	@ tmp209,
	ldr	ip, [r4, r9]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r0, #22052	@ tmp212,
	ldr	r2, [r4, r8]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #22056	@ tmp215,
	movw	r6, #22048	@ tmp206,
	mov	sl, #0	@ tmp216,
	str	ip, [r4, r3]	@ <variable>.VirAddr, <variable>.BitsObj.vir_addr
	movw	r9, #22060	@ tmp217,
	str	r2, [r4, r0]	@ <variable>.LenInByte, <variable>.BitsObj.len
	mov	r0, r4	@, pCtx
	str	r7, [r4, r6]	@ <variable>.PhyAddr, <variable>.BitsObj.phy_addr
	str	sl, [r4, r1]	@ tmp216, <variable>.BitsObj.offset
	bl	Mp4_Get_DecMode	@
	ldr	r3, [r4, r9]	@ D.36885, <variable>.pstExtraData
	ldr	r8, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r8, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L866	@,
.L828:
	mov	r7, #19968	@ tmp224,
	movw	r3, #23000	@ tmp223,
	ldr	ip, [r4, r7]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	str	ip, [r4, r3]	@ <variable>.PicIntegrality,
.L829:
	movw	r7, #22044	@ tmp226,
	movw	r6, #22052	@ tmp228,
	ldr	r1, [r4, r7]	@, <variable>.BitsObj.vir_addr
	mov	r0, r4	@, pCtx
	ldr	r2, [r4, r6]	@, <variable>.BitsObj.len
	movw	r9, #22060	@ tmp244,
	bl	Mp4_Syntax_Parse	@
	movw	r2, #22048	@ tmp234,
	ldr	r1, [r4, r9]	@ temp.2620, <variable>.pstExtraData
	movw	r9, #22056	@ tmp242,
	ldr	sl, [r4, r2]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	ldr	r8, [r4, r7]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	ldr	ip, [r4, r6]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	mov	r3, r0, lsr #3	@ byte_num, bits_consume,
	and	r0, r0, #7	@ tmp243, bits_consume,
	add	r8, r8, r3	@ tmp233, <variable>.BitsObj.vir_addr, byte_num
	str	r0, [r4, r9]	@ tmp243, <variable>.BitsObj.offset
	str	r8, [r4, r7]	@ tmp233, <variable>.BitsObj.vir_addr
	add	r0, r3, sl	@ tmp237, byte_num, <variable>.BitsObj.phy_addr
	rsb	r3, r3, ip	@ tmp241, byte_num, <variable>.BitsObj.len
	str	r0, [r4, r2]	@ tmp237, <variable>.BitsObj.phy_addr
	str	r3, [r4, r6]	@ tmp241, <variable>.BitsObj.len
	ldr	r2, [r1, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L867	@,
.L830:
	mov	r2, #19968	@ tmp247,
	ldr	r3, [r4, r2]	@ temp.2623, <variable>.PicIntegrality
	tst	r3, #32	@ temp.2623,
	beq	.L832	@,
	bic	r1, r3, #178	@ tmp250, temp.2623,
	movw	r3, #22092	@ tmp251,
	ldr	r3, [r4, r3]	@ D.36906, <variable>.DecMode
	str	r1, [r4, r2]	@ tmp250, <variable>.PicIntegrality
	cmp	r3, #2	@ D.36906,
	beq	.L868	@,
	cmp	r3, #1	@ D.36906,
	beq	.L869	@,
	cmp	r3, #4	@ D.36906,
	bne	.L835	@,
	movw	r1, #21912	@ tmp256,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2600, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ prephitmp.2600,
	movweq	r2, #22576	@ tmp257,
	streq	r3, [r4, r2]	@ prephitmp.2600, <variable>.PPicFound
	cmp	r3, #2	@ prephitmp.2600,
	cmpne	r3, #4	@, prephitmp.2600,
	beq	.L870	@,
.L838:
	cmp	r3, #1	@ prephitmp.2600,
	movweq	r2, #22576	@ tmp269,
	streq	r3, [r4, r2]	@ prephitmp.2600, <variable>.PPicFound
.L835:
	mov	r0, r4	@, pCtx
	bl	Mp4_Frame_Atr	@
	cmn	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L871	@,
	cmn	r0, #2	@ ret,
	beq	.L872	@,
	movw	sl, #22960	@ tmp273,
	movw	r6, #22972	@ tmp275,
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	movw	r7, #22980	@ tmp279,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, r7]	@, <variable>.BwdFsID
	mov	r6, r0	@ pFwdImg,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r6, #0	@ pFwdImg,
	cmpne	r0, #0	@, pBwdImg,
	mov	r7, r0	@ pBwdImg,
	beq	.L873	@,
	movw	r3, #21275	@ tmp291,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.36942, <variable>.MP4Syntax.coding_mode
	cmp	r3, #1	@ D.36942,
	cmpne	r3, #3	@, D.36942,
	bne	.L842	@,
	movw	r7, #22060	@ tmp300,
	ldr	ip, [r6, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	lr, [r4, r7]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [lr, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	ip, r0	@ <variable>.error_level, <variable>.s32RefErrThr
	bls	.L843	@,
	movw	r2, #22988	@ tmp305,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	r3, [r4, r7]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r6, #180]	@, <variable>.error_level
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	ldr	r3, [r3, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36847,
.L826:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L842:
	cmp	r3, #2	@ D.36942,
	beq	.L874	@,
.L843:
	movw	r3, #21912	@ tmp334,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L845	@,
	movw	r9, #22968	@ tmp336,
	movw	r6, #22972	@ tmp339,
	ldr	r8, [r4, r9]	@ <variable>.RefNum, <variable>.RefNum
	movw	r7, #22980	@ tmp340,
	ldr	r3, [r4, r6]	@ prephitmp.2598, <variable>.FwdFsID
	cmp	r8, #0	@ <variable>.RefNum,
	ldr	sl, [r4, r7]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movgt	r8, #2	@ iftmp.573,
	movle	r8, #1	@ iftmp.573,
	cmp	r3, sl	@ prephitmp.2598, <variable>.BwdFsID
	str	r8, [r4, r9]	@ iftmp.573, <variable>.RefNum
	beq	.L848	@,
	movw	r8, #22960	@ tmp342,
	mov	r1, r3	@, prephitmp.2598
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #3	@,
	beq	.L861	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.FwdFsID
	bl	FSP_SetDisplay	@
.L861:
	ldr	r3, [r4, r7]	@ prephitmp.2598, <variable>.BwdFsID
.L848:
	ldrb	lr, [r4, #1]	@ zero_extendqisi2	@ <variable>.BwdCodingType, <variable>.BwdCodingType
	movw	r1, #22984	@ tmp358,
	movw	r7, #22004	@ tmp366,
	movw	sl, #22988	@ tmp361,
	ldr	r9, [r4, r1]	@ <variable>.BwdTimePP, <variable>.BwdTimePP
	movw	r8, #22960	@ tmp368,
	ldr	r0, [r4, sl]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r2, #22976	@ tmp357,
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ <variable>.CurCodingType, <variable>.CurCodingType
	ldr	r6, [r4, r7]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	movw	r7, #22972	@ tmp354,
	strb	lr, [r4, #0]	@ <variable>.BwdCodingType, <variable>.FwdCodingType
	movw	lr, #22980	@ tmp360,
	str	r0, [r4, lr]	@ <variable>.CurFsID, <variable>.BwdFsID
	strb	ip, [r4, #1]	@ <variable>.CurCodingType, <variable>.BwdCodingType
	str	r9, [r4, r2]	@ <variable>.BwdTimePP, <variable>.FwdTimePP
	mov	r2, #1	@,
	str	r6, [r4, r1]	@ <variable>.MP4Syntax.time_pp, <variable>.BwdTimePP
	mov	r1, r0	@, <variable>.CurFsID
	str	r3, [r4, r7]	@ prephitmp.2598, <variable>.FwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	bl	FSP_RemovePmv	@
	movw	ip, #21912	@ tmp376,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #4	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L845	@,
	movw	r3, #21272	@ tmp421,
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.packed_mode, <variable>.MP4Syntax.packed_mode
	cmp	r6, #0	@ <variable>.MP4Syntax.packed_mode,
	beq	.L875	@,
.L831:
	mov	r0, #0	@ D.36847,
	b	.L826	@
.L845:
	mov	r2, r5	@, ptr_strm_para
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	Mp4_Set_DecPar	@
	movw	r3, #21912	@ tmp378,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.36997, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ D.36997,
	cmpne	r3, #4	@, D.36997,
	bne	.L851	@,
	movw	ip, #22576	@ tmp386,
	ldr	r2, [r4, ip]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	beq	.L876	@,
.L851:
	movw	r5, #22060	@ tmp394,
	cmp	r3, #1	@ D.36997,
	ldr	r1, [r4, r5]	@ temp.2661, <variable>.pstExtraData
	movweq	r2, #22576	@ tmp392,
	streq	r3, [r4, r2]	@ D.36997, <variable>.PPicFound
	add	r3, r4, #1040	@ D.37005, pCtx,
	str	r3, [r4, #1036]	@ D.37005, <variable>.pMp4DecParam
	ldr	r2, [r1, #708]	@ D.37006, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.37006,
	beq	.L877	@,
	cmp	r2, #2	@ D.37006,
	beq	.L878	@,
.L854:
	movw	r1, #21912	@ tmp411,
	mov	ip, #0	@ tmp409,
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	strb	ip, [r4, #1198]	@ tmp409, <variable>.Mp4DecParam.IsNvopCopy
	cmp	r5, ip	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L831	@,
	movw	r2, #:lower16:g_event_report	@ tmp413,
	movt	r2, #:upper16:g_event_report	@ tmp413,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L831	@,
	add	r2, sp, #24	@ tmp419,,
	movw	lr, #22960	@ tmp417,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #20	@,
	str	r5, [r2, #-4]!	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, para
	blx	r3	@ g_event_report
	mov	r0, r5	@ D.36847, <variable>.MP4Syntax.syn_vop.vop_coding_type
	b	.L826	@
.L866:
	ldr	lr, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	lr, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L828	@,
	movw	r0, #23000	@ tmp221,
	mov	r2, #19968	@ tmp220,
	ldr	r1, [r4, r0]	@ <variable>.LastPicIntegrality, <variable>.LastPicIntegrality
	str	r1, [r4, r2]	@ <variable>.LastPicIntegrality,
	b	.L829	@
.L868:
	movw	ip, #21912	@ tmp252,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r2, #0	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L835	@,
.L834:
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L874:
	movw	r8, #22060	@ tmp313,
	ldr	r1, [r6, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	ip, [r4, r8]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #0]	@ temp.2634, <variable>.s32RefErrThr
	cmp	r1, r3	@ <variable>.error_level, temp.2634
	bhi	.L879	@,
	ldr	r0, [r0, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r3, r0	@ temp.2634, <variable>.error_level
	bcs	.L843	@,
	movw	r2, #22988	@ tmp327,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	ip, [r4, r8]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r7, #180]	@, <variable>.error_level
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	ldr	r3, [ip, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L875:
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, sl]	@, <variable>.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	mov	r7, r0	@ pFwd,
	beq	.L880	@,
	ldr	r3, [r5, #408]	@ D.37045, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.37045,
	beq	.L856	@,
	ldr	r0, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r0, #0	@ <variable>.pstTfOutFs,
	beq	.L856	@,
	ldr	r1, [r5, #412]	@ D.37049, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.37049,
	beq	.L856	@,
	ldr	ip, [r7, #408]	@ D.37056, <variable>.pstDecodeFs
	movw	r0, #21976	@ tmp459,
	ldr	r2, [r3, #12]	@ iftmp.2679, <variable>.PhyAddr
	cmp	ip, #0	@ D.37056,
	ldr	r3, [r1, #12]	@ D.37053, <variable>.PhyAddr
	movw	r1, #21972	@ tmp461,
	ldr	lr, [r4, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	ldrne	r6, [ip, #12]	@ iftmp.577, <variable>.PhyAddr
	mov	r0, r4	@, pCtx
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	mov	r1, r5	@, pCur
	moveq	r6, r2	@ iftmp.577, iftmp.2679
	stmia	sp, {r6, lr}	@ phole stm
	str	ip, [sp, #8]	@ <variable>.MP4Syntax.image_height,
	bl	Vdm_Mem_Move	@
	mov	r0, #0	@ D.36847,
	b	.L826	@
.L877:
	cmp	r3, #0	@ D.37005,
	beq	.L854	@,
	movw	r3, #21912	@ tmp395,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L854	@,
	movw	r0, #22988	@ tmp399,
	sub	lr, r0, #28	@ tmp398, tmp398,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	ip, #0	@ tmp397,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	ip, [r4, #1036]	@ tmp397, <variable>.pMp4DecParam
	bl	FSP_ClearLogicFs	@
.L862:
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L869:
	movw	lr, #21912	@ tmp254,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L835	@,
	b	.L834	@
.L824:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L867:
	ldr	lr, [r1, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	lr, #0	@ <variable>.s32DSDWaitFlag,
	beq	.L830	@,
	mov	r0, #0	@ D.36847,
	b	.L826	@
.L879:
	movw	lr, #22988	@ tmp317,
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	r3, [r4, r8]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r6, #180]	@, <variable>.error_level
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	ldr	r3, [r3, #0]	@, <variable>.s32RefErrThr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L876:
	movw	r0, #22988	@ tmp390,
	movw	lr, #22960	@ tmp388,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L878:
	ldr	r2, [r1, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r2, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L854	@,
	cmp	r3, #0	@ D.37005,
	beq	.L854	@,
	movw	r3, #21912	@ tmp401,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L854	@,
	movw	r0, #22988	@ tmp405,
	sub	r3, r0, #28	@ tmp404, tmp404,
	mov	lr, #0	@ tmp403,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	str	lr, [r4, #1036]	@ tmp403, <variable>.pMp4DecParam
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r5]	@ temp.2668, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	ldr	r2, [r1, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	ip, r2, #1	@ tmp408, <variable>.stDisParams.s32DisNums,
	str	ip, [r1, #712]	@ tmp408, <variable>.stDisParams.s32DisNums
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L865:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36847, D.36878
	b	.L826	@
.L870:
	movw	r2, #22576	@ tmp267,
	ldr	r2, [r4, r2]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	bne	.L838	@,
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L832:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L873:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC88	@,
	ldr	r2, .L881	@,
	movt	r1, #:upper16:.LC88	@,
	movw	r3, #3903	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36847,
	b	.L826	@
.L872:
	movw	r1, #:lower16:.LC87	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	b	.L862	@
.L871:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r6	@ D.36847, ret
	b	.L826	@
.L856:
	movw	r6, #22988	@ tmp447,
	movw	lr, #22960	@ tmp445,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r2, #22980	@ tmp454,
	ldr	ip, [r4, r2]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movw	r1, #22972	@ tmp450,
	ldr	r2, [r4, r1]	@ <variable>.FwdFsID, <variable>.FwdFsID
	mov	r0, #0	@,
	ldr	r3, [r4, r6]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r1, #:lower16:.LC94	@,
	str	ip, [sp, #0]	@ <variable>.BwdFsID,
	movt	r1, #:upper16:.LC94	@,
	ldr	ip, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	ip, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	ip, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	ip, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	ip, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	ip, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
	b	.L862	@
.L880:
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, sl]	@, <variable>.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r3, r5	@, pCur
	mov	r0, r6	@, <variable>.MP4Syntax.packed_mode
	movw	r2, #4086	@,
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	str	r7, [sp, #0]	@ pFwd,
	bl	dprint_vfmw	@
	b	.L862	@
.L882:
	.align	2
.L881:
	.word	.LANCHOR0+1376
	.fnend
	.size	MPEG4DEC_Decode, .-MPEG4DEC_Decode
	.global	scan_tables
	.global	default_intra_matrix
	.global	default_inter_matrix
	.global	sprite_trajectory_len
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	default_intra_matrix, %object
	.size	default_intra_matrix, 256
default_intra_matrix:
	.word	8
	.word	17
	.word	18
	.word	19
	.word	21
	.word	23
	.word	25
	.word	27
	.word	17
	.word	18
	.word	19
	.word	21
	.word	23
	.word	25
	.word	27
	.word	28
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	26
	.word	28
	.word	30
	.word	21
	.word	22
	.word	23
	.word	24
	.word	26
	.word	28
	.word	30
	.word	32
	.word	22
	.word	23
	.word	24
	.word	26
	.word	28
	.word	30
	.word	32
	.word	35
	.word	23
	.word	24
	.word	26
	.word	28
	.word	30
	.word	32
	.word	35
	.word	38
	.word	25
	.word	26
	.word	28
	.word	30
	.word	32
	.word	35
	.word	38
	.word	41
	.word	27
	.word	28
	.word	30
	.word	32
	.word	35
	.word	38
	.word	41
	.word	45
	.type	default_inter_matrix, %object
	.size	default_inter_matrix, 256
default_inter_matrix:
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	26
	.word	27
	.word	20
	.word	21
	.word	22
	.word	23
	.word	25
	.word	26
	.word	27
	.word	28
	.word	21
	.word	22
	.word	23
	.word	24
	.word	26
	.word	27
	.word	28
	.word	30
	.word	22
	.word	23
	.word	24
	.word	26
	.word	27
	.word	28
	.word	30
	.word	31
	.word	23
	.word	24
	.word	25
	.word	27
	.word	28
	.word	30
	.word	31
	.word	33
	.type	scan_tables, %object
	.size	scan_tables, 768
scan_tables:
	.word	0
	.word	1
	.word	8
	.word	16
	.word	9
	.word	2
	.word	3
	.word	10
	.word	17
	.word	24
	.word	32
	.word	25
	.word	18
	.word	11
	.word	4
	.word	5
	.word	12
	.word	19
	.word	26
	.word	33
	.word	40
	.word	48
	.word	41
	.word	34
	.word	27
	.word	20
	.word	13
	.word	6
	.word	7
	.word	14
	.word	21
	.word	28
	.word	35
	.word	42
	.word	49
	.word	56
	.word	57
	.word	50
	.word	43
	.word	36
	.word	29
	.word	22
	.word	15
	.word	23
	.word	30
	.word	37
	.word	44
	.word	51
	.word	58
	.word	59
	.word	52
	.word	45
	.word	38
	.word	31
	.word	39
	.word	46
	.word	53
	.word	60
	.word	61
	.word	54
	.word	47
	.word	55
	.word	62
	.word	63
	.word	0
	.word	1
	.word	2
	.word	3
	.word	8
	.word	9
	.word	16
	.word	17
	.word	10
	.word	11
	.word	4
	.word	5
	.word	6
	.word	7
	.word	15
	.word	14
	.word	13
	.word	12
	.word	19
	.word	18
	.word	24
	.word	25
	.word	32
	.word	33
	.word	26
	.word	27
	.word	20
	.word	21
	.word	22
	.word	23
	.word	28
	.word	29
	.word	30
	.word	31
	.word	34
	.word	35
	.word	40
	.word	41
	.word	48
	.word	49
	.word	42
	.word	43
	.word	36
	.word	37
	.word	38
	.word	39
	.word	44
	.word	45
	.word	46
	.word	47
	.word	50
	.word	51
	.word	56
	.word	57
	.word	58
	.word	59
	.word	52
	.word	53
	.word	54
	.word	55
	.word	60
	.word	61
	.word	62
	.word	63
	.word	0
	.word	8
	.word	16
	.word	24
	.word	1
	.word	9
	.word	2
	.word	10
	.word	17
	.word	25
	.word	32
	.word	40
	.word	48
	.word	56
	.word	57
	.word	49
	.word	41
	.word	33
	.word	26
	.word	18
	.word	3
	.word	11
	.word	4
	.word	12
	.word	19
	.word	27
	.word	34
	.word	42
	.word	50
	.word	58
	.word	35
	.word	43
	.word	51
	.word	59
	.word	20
	.word	28
	.word	5
	.word	13
	.word	6
	.word	14
	.word	21
	.word	29
	.word	36
	.word	44
	.word	52
	.word	60
	.word	37
	.word	45
	.word	53
	.word	61
	.word	22
	.word	30
	.word	7
	.word	15
	.word	23
	.word	31
	.word	38
	.word	46
	.word	54
	.word	62
	.word	39
	.word	47
	.word	55
	.word	63
	.type	__func__.37519, %object
	.size	__func__.37519, 20
__func__.37519:
	.ascii	"Mp4_Syntax_Slice_SH\000"
	.type	__func__.37428, %object
	.size	__func__.37428, 23
__func__.37428:
	.ascii	"Mp4_Syntax_Slice_NotSH\000"
	.space	1
	.type	__func__.37618, %object
	.size	__func__.37618, 14
__func__.37618:
	.ascii	"MP4_Dec_Slice\000"
	.space	2
	.type	__func__.36590, %object
	.size	__func__.36590, 15
__func__.36590:
	.ascii	"Mp4_Set_DecPar\000"
	.space	1
	.type	__func__.35910, %object
	.size	__func__.35910, 17
__func__.35910:
	.ascii	"Mp4_Syntax_Parse\000"
	.space	3
	.type	__func__.36833, %object
	.size	__func__.36833, 16
__func__.36833:
	.ascii	"MPEG4DEC_Decode\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	sprite_trajectory_len, %object
	.size	sprite_trajectory_len, 120
sprite_trajectory_len:
@ code:
	.word	0
@ len:
	.byte	2
	.space	3
@ code:
	.word	2
@ len:
	.byte	3
	.space	3
@ code:
	.word	3
@ len:
	.byte	3
	.space	3
@ code:
	.word	4
@ len:
	.byte	3
	.space	3
@ code:
	.word	5
@ len:
	.byte	3
	.space	3
@ code:
	.word	6
@ len:
	.byte	3
	.space	3
@ code:
	.word	14
@ len:
	.byte	4
	.space	3
@ code:
	.word	30
@ len:
	.byte	5
	.space	3
@ code:
	.word	62
@ len:
	.byte	6
	.space	3
@ code:
	.word	126
@ len:
	.byte	7
	.space	3
@ code:
	.word	254
@ len:
	.byte	8
	.space	3
@ code:
	.word	510
@ len:
	.byte	9
	.space	3
@ code:
	.word	1022
@ len:
	.byte	10
	.space	3
@ code:
	.word	2046
@ len:
	.byte	11
	.space	3
@ code:
	.word	4094
@ len:
	.byte	12
	.space	3
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	" slice num %d is not extpected!\012\000"
	.space	3
.LC1:
	.ascii	" line %d packet is wrong!\012\000"
	.space	1
.LC2:
	.ascii	"vop_coding_type = %d is not expected!\012\000"
	.space	1
.LC3:
	.ascii	"pLastPacket->StreamPack[0].VirAddr is NULL!!\012\000"
	.space	2
.LC4:
	.ascii	"StreamIDNum = %d > (%d)\012\000"
	.space	3
.LC5:
	.ascii	"pCtx is NUL!!!\012\000"
.LC6:
	.ascii	"line %d MP4_Combine_HdPacket failed!!\012\000"
	.space	1
.LC7:
	.ascii	"FUN: %s pCtx->Mp4DecParam.SlcNum = %d\012\000"
	.space	1
.LC8:
	.ascii	"pSlcPara->mb_start_num = %d, totalMbMin1 = %d\012\000"
	.space	1
.LC9:
	.ascii	" pSlcPara->mb_start_num = %d, MbCnt = %d\012\000"
	.space	2
.LC10:
	.ascii	"FUN: %s MP4_ClearCurPacket\012\000"
.LC11:
	.ascii	"warning! profile_and_level_indication=%#x, maybe HD"
	.ascii	" pic...\012\000"
.LC12:
	.ascii	"fatal stream error --- VOP marker_bit = 0\012\000"
	.space	1
.LC13:
	.ascii	"VDH doesn't support SPRITE_STATIC & SPRITE_GMC\012\000"
.LC14:
	.ascii	"VDH doesn't support SPRITE_STATIC\012\000"
	.space	1
.LC15:
	.ascii	"Unknown sprite_enable\012\000"
	.space	1
.LC16:
	.ascii	"ERROR: not_8_bit !=0\012\000"
	.space	2
.LC17:
	.ascii	"not support no complexity_estimation_disable\012\000"
	.space	2
.LC18:
	.ascii	"not support data_partitioned\012\000"
	.space	2
.LC19:
	.ascii	"not support newpred_enable\012\000"
.LC20:
	.ascii	"not support reduced_resolution_vop_eanble\012\000"
	.space	1
.LC21:
	.ascii	"not support scalability\012\000"
	.space	3
.LC22:
	.ascii	"Warning : vop slice num %d != 0\012\000"
	.space	3
.LC23:
	.ascii	"vop ---%d\012\000"
	.space	1
.LC24:
	.ascii	"VDH doesn't support S_VOP\012\000"
	.space	1
.LC25:
	.ascii	"parse time_module_base stream not enough\012\000"
	.space	2
.LC26:
	.ascii	"error: vop_coding_type = %d, but vop_fcode_forward "
	.ascii	"= 0\012\000"
.LC27:
	.ascii	"error: B vop, but vop_fcode_backward = 0\012\000"
	.space	2
.LC28:
	.ascii	"warning streamIDNum %d != 0 \012\000"
	.space	2
.LC29:
	.ascii	"module time base parse error, more than %d '1' was "
	.ascii	"found!\012\000"
	.space	1
.LC30:
	.ascii	"fatal stream error --- GOP marker_bit = 0\012\000"
	.space	1
.LC31:
	.ascii	"NVOP VDM copy process................\012\000"
	.space	1
.LC32:
	.ascii	"%s %d  abnormal!\012\000"
	.space	2
.LC33:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC34:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC35:
	.ascii	"FrameNum=%d\012\000"
	.space	3
.LC36:
	.ascii	"vop_coding_type=%d\012\000"
.LC37:
	.ascii	"line: %d pToQueImg is null!\012\000"
	.space	3
.LC38:
	.ascii	"CurImage %d is already out put\012\000"
.LC39:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC40:
	.ascii	"MPEG4DEC Init  -----\012\000"
	.space	2
.LC41:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC42:
	.ascii	"MPEG4DEC Init success -----\012\000"
	.space	3
.LC43:
	.ascii	"dec_pts: %lld Usertag: %lld\012\000"
	.space	3
.LC44:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC45:
	.ascii	"actual frame size(%dx%d) exeed max config(%dx%d)\012"
	.ascii	"\000"
	.space	2
.LC46:
	.ascii	"MPEG4 Frame_Init return err!\012\000"
	.space	2
.LC47:
	.ascii	"MPEG4 Frame_Init PmvNum=%d, FrameNum=%d, error!\012"
	.ascii	"\000"
	.space	3
.LC48:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC49:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC50:
	.ascii	"DivX%4dBuild%4d%c\000"
	.space	2
.LC51:
	.ascii	"DivX%4db%4d%c\000"
	.space	2
.LC52:
	.ascii	"FFmpe%*[^b]b%4d\000"
.LC53:
	.ascii	"FFmpeg v%4d.%4d.%4d / libavcodec build: %4d\000"
.LC54:
	.ascii	"Lavc%4d.%4d.%4d\000"
.LC55:
	.ascii	"ffmpeg\000"
	.space	1
.LC56:
	.ascii	"XviD%4d\000"
.LC57:
	.ascii	"Not find start code \012\000"
	.space	2
.LC58:
	.ascii	"VOS beginning ~ !\012\000"
	.space	1
.LC59:
	.ascii	"VO beginning ~ !\012\000"
	.space	2
.LC60:
	.ascii	"VOL beginning ~ !\012\000"
	.space	1
.LC61:
	.ascii	"GOP beginning ~ !\012\000"
	.space	1
.LC62:
	.ascii	"VOP beginning ~ !\012\000"
	.space	1
.LC63:
	.ascii	"BitUsed=%d\012\000"
.LC64:
	.ascii	"SHVOP beginning ~ !\012\000"
	.space	3
.LC65:
	.ascii	"USERDATA beginning ~ !\012\000"
.LC66:
	.ascii	"MPEG4 Frame_Init return err 3!\012\000"
.LC67:
	.ascii	"Fail, %s, %d\012\000"
	.space	2
.LC68:
	.ascii	"MPEG4 Frame_Init return err 1!\012\000"
.LC69:
	.ascii	"vop right\012\000"
	.space	1
.LC70:
	.ascii	"MPEG4 Frame_Init return err 2!\012\000"
.LC71:
	.ascii	"bits over boundary\012\000"
.LC72:
	.ascii	"bitsream para error -----\012\000"
	.space	1
.LC73:
	.ascii	"MPEG4DEC Decode -----\012\000"
	.space	1
.LC74:
	.ascii	"ptr_strm_para->PhyAddr0=0x%x\012\000"
	.space	2
.LC75:
	.ascii	"ptr_strm_para->Length0=%d\012\000"
	.space	1
.LC76:
	.ascii	"ptr_strm_para->IsLastSeg0=%d\012\000"
	.space	2
.LC77:
	.ascii	"ptr_strm_para->PhyAddr1=0x%x\012\000"
	.space	2
.LC78:
	.ascii	"ptr_strm_para->Length1=%d\012\000"
	.space	1
.LC79:
	.ascii	"ptr_strm_para->IsLastSeg1=%d\012\000"
	.space	2
.LC80:
	.ascii	"ptr_strm_para->Length0 = %d\012\000"
	.space	3
.LC81:
	.ascii	"byte0: = 0x%x\012\000"
	.space	1
.LC82:
	.ascii	"byte1: = 0x%x\012\000"
	.space	1
.LC83:
	.ascii	"byte2: = 0x%x\012\000"
	.space	1
.LC84:
	.ascii	"byte3: = 0x%x\012\000"
	.space	1
.LC85:
	.ascii	"MP4_Check_CurPacket failed!\012\000"
	.space	3
.LC86:
	.ascii	"Mp4_Frame_Atr return fail\012\000"
	.space	1
.LC87:
	.ascii	"Frame req error---\012\000"
.LC88:
	.ascii	"fuction return value is null, %s %d!!\012\000"
	.space	1
.LC89:
	.ascii	"dec P/S frame, fwd ref err(%d) > ref_thr(%d)\012\000"
	.space	2
.LC90:
	.ascii	"dec B frame, bwd ref err(%d) > ref_thr(%d)\012\000"
.LC91:
	.ascii	"dec B frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC92:
	.ascii	"NVOP mem move--\012\000"
	.space	3
.LC93:
	.ascii	"line: %d pCur = %p, pFwd = %p\012\000"
	.space	1
.LC94:
	.ascii	"CurFsID(f%d,%d,b%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC95:
	.ascii	"bits not enought\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	MemArrange.36233, %object
	.size	MemArrange.36233, 416
MemArrange.36233:
	.space	416
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
