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
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(mpeg4)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg4.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.o
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
	.global	log2bin
	.type	log2bin, %function
log2bin:
	.fnstart
.LFB1917:
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
	sxth	r0, r3	@ prephitmp.717, n
	bx	lr	@
	.fnend
	.size	log2bin, .-log2bin
	.global	__aeabi_idiv
	.align	2
	.global	MP4_GetGMCparam
	.type	MP4_GetGMCparam, %function
MP4_GetGMCparam:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r4, [r0, #65]	@ zero_extendqisi2	@ D.36185, <variable>.syn_vol.sprite_warping_accuracy
	mov	r9, #2	@ tmp205,
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r3, r9, asl r4	@, tmp205,
	mov	fp, r0	@ p_syntax_des, p_syntax_des
	mov	r6, r1	@ p_gmc, p_gmc
	mov	r0, #16	@,
	mov	r1, r3	@,
	str	r3, [sp, #24]	@, %sfp
	rsb	r4, r4, #3	@, D.36185,
	str	r4, [sp, #48]	@, %sfp
	bl	__aeabi_idiv	@
	ldr	sl, [fp, #708]	@ D.36187, <variable>.image_width
	ldr	r9, [fp, #704]	@ D.36189, <variable>.image_height
	cmp	sl, #1	@ D.36187,
	mov	r8, sl, asl #4	@ tmp209, D.36187,
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
	ldr	r2, [fp, #680]	@ sprite_ref$0$0.791, <variable>.x
	ldr	ip, [fp, #684]	@ sprite_ref$0$1, <variable>.y
	ldr	r0, [fp, #688]	@ D.36199, <variable>.x
	str	r1, [sp, #16]	@, %sfp
	ldr	r5, [fp, #696]	@, <variable>.x
	str	r5, [sp, #20]	@, %sfp
	ldr	lr, [fp, #700]	@ D.36202, <variable>.y
	ble	.L10	@,
	mov	r4, #0	@ alpha,
	mov	r1, #1	@ tmp366,
.L11:
	add	r4, r4, #1	@ alpha, alpha,
	mov	r7, r1, asl r4	@ w2, tmp366,
	cmp	sl, r7	@ D.36187, w2
	bgt	.L11	@,
.L10:
	cmp	r9, #1	@ D.36189,
	movgt	r5, #0	@ beta,
	movgt	r1, #1	@ tmp365,
	ble	.L44	@,
.L14:
	add	r5, r5, #1	@ beta, beta,
	mov	r8, r1, asl r5	@ h2, tmp365,
	cmp	r9, r8	@ D.36189, h2
	bgt	.L14	@,
	mov	r1, r8, asl #4	@, h2,
	str	r1, [sp, #52]	@, %sfp
.L13:
	ldrb	r1, [fp, #12]	@ zero_extendqisi2	@ <variable>.FF_BUG_DIVX500B413, <variable>.FF_BUG_DIVX500B413
	cmp	r1, #1	@ <variable>.FF_BUG_DIVX500B413,
	beq	.L45	@,
	ldr	fp, [sp, #16]	@, %sfp
	add	r0, r0, r2	@ tmp220, D.36199, sprite_ref$0$0.791
	add	lr, lr, ip	@ tmp225, D.36202, sprite_ref$0$1
	add	r0, r0, sl, asl #1	@, tmp222, tmp220, D.36187,
	add	r1, fp, ip	@,, sprite_ref$0$1
	ldr	fp, [sp, #20]	@, %sfp
	str	r1, [sp, #16]	@, %sfp
	add	lr, lr, r9, asl #1	@, tmp227, tmp225, D.36189,
	add	r1, fp, r2	@,, sprite_ref$0$0.791
	ldr	fp, [sp, #24]	@, %sfp
	str	r1, [sp, #20]	@, %sfp
	mov	r1, fp, asr #1	@ D.36238,,
	ldr	fp, [sp, #16]	@, %sfp
	mul	lr, r1, lr	@, D.36238, tmp227
	mul	fp, fp, r1	@,, D.36238
	mul	ip, ip, r1	@ sprite_ref$0$1, sprite_ref$0$1, D.36238
	mul	r0, r1, r0	@ sprite_ref$1$0, D.36238, tmp222
	str	lr, [sp, #44]	@, %sfp
	str	fp, [sp, #36]	@, %sfp
	ldr	fp, [sp, #20]	@, %sfp
	mul	r2, r2, r1	@ sprite_ref$0$0.791, sprite_ref$0$0.791, D.36238
	mul	fp, fp, r1	@,, D.36238
	str	fp, [sp, #40]	@, %sfp
.L16:
	rsb	r1, sl, sl, asl #28	@, tmp231, D.36187, D.36187,
	rsb	fp, r7, sl	@ D.36264, w2, D.36187
	mul	lr, r3, r2	@, r, sprite_ref$0$0.791
	mov	r1, r1, asl #4	@ tmp232, tmp231,
	str	r2, [sp, #12]	@,
	mla	r0, r3, r0, r1	@ tmp233, r, sprite_ref$1$0, tmp232
	stmib	sp, {r3, ip}	@ phole stm
	mul	r1, fp, lr	@ tmp235, D.36264,
	str	lr, [sp, #16]	@, %sfp
	mla	r0, r7, r0, r1	@ D.36275, w2, tmp233, tmp235
	cmp	r0, #0	@ D.36275,
	movgt	r1, sl, asr #1	@, D.36187,
	movle	lr, sl, asr #1	@, D.36187,
	strgt	r1, [sp, #28]	@, %sfp
	addgt	r0, r0, r1	@ iftmp.498, D.36275,
	rsble	r0, lr, r0	@ iftmp.498,, D.36275
	mov	r1, sl	@, D.36187
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
	mla	r1, fp, lr, r2	@ D.36294, D.36264,, tmp243
	ldr	r2, [sp, #12]	@,
	cmp	r1, #0	@ D.36294,
	str	r2, [sp, #12]	@,
	ldrgt	fp, [sp, #28]	@, %sfp
	ldrle	lr, [sp, #28]	@, %sfp
	add	r0, r0, r7, asl #4	@,,, w2,
	str	r0, [sp, #36]	@, %sfp
	addgt	r0, fp, r1	@ iftmp.499,, D.36294
	rsble	r0, lr, r1	@ iftmp.499,, D.36294
	mov	r1, sl	@, D.36187
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@,
	ldr	sl, [sp, #40]	@, %sfp
	rsb	r1, r8, r9	@ D.36302, h2, D.36189
	ldr	r2, [sp, #16]	@, %sfp
	mul	fp, r3, r8	@ tmp248, r, h2
	mul	ip, sl, fp	@ tmp249,, tmp248
	ldr	fp, [sp, #20]	@, %sfp
	mov	sl, r9, asr #1	@ prephitmp.781, D.36189,
	str	r0, [sp, #28]	@, %sfp
	mla	r0, r1, r2, ip	@ D.36309, D.36302,, tmp249
	ldr	r2, [sp, #12]	@,
	mul	r1, r1, fp	@ tmp257, D.36302,
	ldr	fp, [sp, #44]	@, %sfp
	cmp	r0, #0	@ D.36309,
	ldr	ip, [sp, #8]	@,
	addgt	r0, r0, sl	@, D.36309, prephitmp.781
	rsble	r0, sl, r0	@, prephitmp.781, D.36309
	str	r0, [sp, #16]	@, %sfp
	rsb	r0, r9, r9, asl #28	@, tmp253, D.36189, D.36189,
	mov	r0, r0, asl #4	@ tmp254, tmp253,
	mla	r0, r3, fp, r0	@ tmp255, r,, tmp254
	mla	r1, r8, r0, r1	@ D.36325, h2, tmp255, tmp257
	cmp	r1, #0	@ D.36325,
	addgt	fp, sl, r1	@ iftmp.501, prephitmp.781, D.36325
	rsble	fp, sl, r1	@ iftmp.501, prephitmp.781, D.36325
	ldr	sl, [sp, #32]	@, %sfp
	mov	r0, sl	@ D.36196,
	mov	r1, r0, asr #31	@ D.36196
	cmp	r1, #0	@ D.36196,
	cmpeq	r0, #3	@ D.36196,
	bls	.L46	@,
.L25:
	ldr	r5, [r6, #16]	@ prephitmp.760, <variable>.dU
	mov	r4, #0	@ shift$0,
	ldr	sl, [r6, #32]	@ sprite_ref$0$0.780, <variable>.Uo
	mov	r2, r4	@ shift$1, shift$0
.L31:
	ldr	r3, [sp, #24]	@, %sfp
	mov	ip, r3, asl r4	@ a.782,,
	cmp	r5, ip	@ prephitmp.760, a.782
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
	mov	sl, sl, asl r4	@ tmp347, sprite_ref$0$0.780,
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
	cmp	r0, #3	@ D.36196,
	ldrls	pc, [pc, r0, asl #2]	@ D.36196
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
	mul	r4, sl, r2	@,, sprite_ref$0$0.791
	mov	r8, r8, asr r5	@ h3, h2,
	str	r4, [sp, #20]	@, %sfp
	rsb	r4, r5, r0	@ shift$0, min_ab, tmp298
	ldr	r1, [sp, #20]	@, %sfp
	sub	sl, r4, #1	@ tmp299, shift$0,
	ldr	r0, [sp, #36]	@, %sfp
	mov	sl, lr, asl sl	@ D.36407,,
	mov	r5, r7, asr r5	@, w2,
	add	lr, r0, r1	@ tmp303,,
	add	r0, sl, ip, asl r4	@, tmp302, D.36407, sprite_ref$0$1,
	str	r0, [r6, #36]	@ tmp302, <variable>.Vo
	add	sl, sl, r2, asl r4	@, sprite_ref$0$0.780, D.36407, sprite_ref$0$0.791,
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r9	@, D.36189
	str	sl, [r6, #32]	@ sprite_ref$0$0.780, <variable>.Uo
	str	r5, [sp, #16]	@, %sfp
	str	r2, [sp, #12]	@,
	mul	r5, r8, lr	@ prephitmp.760, h3, tmp303
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
	mul	r3, r1, ip	@ temp.787,, sprite_ref$0$1
	mov	r1, r9	@, D.36189
	mul	r9, r8, r2	@ tmp318, h3, tmp317
	ldr	r2, [sp, #28]	@, %sfp
	mul	lr, r8, r7	@, h3, tmp310
	add	r7, r2, r3	@,, temp.787
	ldr	r2, [sp, #36]	@, %sfp
	str	r7, [sp, #28]	@, %sfp
	ldr	r7, [sp, #52]	@, %sfp
	str	lr, [sp, #32]	@, %sfp
	mov	lr, #1	@,
	add	r9, r9, lr, asl r2	@, D.36424, tmp318,,
	add	r3, r3, r7	@ tmp324, temp.787,
	ldr	r2, [sp, #28]	@, %sfp
	ldr	r7, [sp, #12]	@,
	ldr	lr, [sp, #32]	@, %sfp
	mul	r8, r8, r2	@ D.36434, h3,
	mla	r2, lr, r7, r9	@ tmp320,, sprite_ref$0$0.791, D.36424
	ldr	lr, [sp, #20]	@, %sfp
	add	r2, r2, r5	@ tmp321, tmp320, prephitmp.760
	add	r7, r0, lr	@ tmp308,,
	mov	r0, fp	@, iftmp.501
	ldr	fp, [sp, #16]	@, %sfp
	mul	r7, fp, r7	@ D.36422,, tmp308
	add	lr, r2, r7	@ tmp322, tmp321, D.36422
	str	lr, [r6, #40]	@ tmp322, <variable>.Uco
	stmib	sp, {r3, ip}	@ phole stm
	bl	__aeabi_idiv	@
	ldr	r2, [sp, #8]	@,
	ldr	r1, [sp, #32]	@, %sfp
	str	r7, [r6, #20]	@ D.36422, <variable>.dU
	str	r8, [r6, #24]	@ D.36434, <variable>.dV
	str	r5, [r6, #16]	@ prephitmp.760, <variable>.dU
	ldr	r3, [sp, #4]	@,
	mla	ip, r1, r2, r9	@ tmp331,, sprite_ref$0$1, D.36424
	add	r2, r4, #2	@ shift$1, shift$0,
	add	r1, ip, r8	@ tmp332, tmp331, D.36434
	add	r3, r3, r0	@ tmp329, tmp324,
	mul	r3, fp, r3	@ D.36437,, tmp329
	add	ip, r1, r3	@ tmp333, tmp332, D.36437
	str	ip, [r6, #44]	@ tmp333, <variable>.Vco
	str	r3, [r6, #28]	@ D.36437, <variable>.dV
	b	.L31	@
.L28:
	ldr	fp, [sp, #48]	@, %sfp
	mov	r8, r3, asl #1	@ tmp280, r,
	rsb	r0, r7, r7, asl #28	@, tmp286, w2, w2,
	mov	r9, #1	@ tmp276,
	add	r4, r4, fp	@ shift$0, alpha,
	rsb	fp, r3, #0	@ D.36365, r
	mul	r7, r7, r8	@ D.36377, w2, tmp280
	add	sl, r4, r9	@ tmp281, shift$0,
	mov	r1, r0, asl #4	@ tmp287, tmp286,
	sub	r5, r4, #1	@ tmp275, shift$0,
	ldr	r8, [sp, #28]	@, %sfp
	add	r0, r1, r9, asl sl	@, D.36374, tmp287, tmp276,
	mov	sl, r9, asl r5	@ D.36356, tmp276,
	ldr	r9, [sp, #36]	@, %sfp
	mla	r1, fp, ip, r8	@ D.36385, D.36365, sprite_ref$0$1,
	mla	r5, fp, r2, r9	@ prephitmp.760, D.36365, sprite_ref$0$0.791,
	ldr	fp, [sp, #20]	@, %sfp
	rsb	r3, r8, fp	@ D.36360,,
	str	r3, [r6, #20]	@ D.36360, <variable>.dU
	mla	r8, r7, ip, r0	@ tmp294, D.36377, sprite_ref$0$1, D.36374
	str	r1, [r6, #24]	@ D.36385, <variable>.dV
	mla	r0, r7, r2, r0	@ tmp289, D.36377, sprite_ref$0$0.791, D.36374
	add	ip, sl, ip, asl r4	@, tmp278, D.36356, sprite_ref$0$1,
	add	r8, r8, r5	@ tmp295, tmp294, prephitmp.760
	add	sl, sl, r2, asl r4	@, sprite_ref$0$0.780, D.36356, sprite_ref$0$0.791,
	str	ip, [r6, #36]	@ tmp278, <variable>.Vo
	add	r1, r8, r1	@ tmp296, tmp295, D.36385
	add	r0, r0, r5	@ tmp290, tmp289, prephitmp.760
	str	r1, [r6, #44]	@ tmp296, <variable>.Vco
	add	ip, r0, r3	@ tmp291, tmp290, D.36360
	str	r5, [r6, #16]	@ prephitmp.760, <variable>.dU
	str	ip, [r6, #40]	@ tmp291, <variable>.Uco
	add	r2, r4, #2	@ shift$1, shift$0,
	str	r5, [r6, #28]	@ prephitmp.760, <variable>.dV
	str	sl, [r6, #32]	@ sprite_ref$0$0.780, <variable>.Uo
	b	.L31	@
.L27:
	and	r3, r2, #1	@ tmp267, sprite_ref$0$0.791,
	and	r1, ip, #1	@ tmp270, sprite_ref$0$1,
	orr	r0, r1, ip, asr #1	@, tmp272, tmp270, sprite_ref$0$1,
	mov	r4, #0	@ tmp273,
	str	r0, [r6, #44]	@ tmp272, <variable>.Vco
	orr	sl, r3, r2, asr #1	@, tmp269, tmp267, sprite_ref$0$0.791,
	str	r2, [r6, #32]	@ sprite_ref$0$0.791, <variable>.Uo
	str	sl, [r6, #40]	@ tmp269, <variable>.Uco
	str	r4, [r6, #24]	@ tmp273, <variable>.dV
	str	ip, [r6, #36]	@ sprite_ref$0$1, <variable>.Vo
	ldr	r0, [sp, #24]	@, %sfp
	str	r4, [r6, #20]	@ tmp273, <variable>.dU
	str	r0, [r6, #16]	@, <variable>.dU
	str	r0, [r6, #28]	@, <variable>.dV
.L32:
	ldr	ip, [sp, #24]	@ a.782, %sfp
	mov	r4, #0	@ shift$0,
	mov	sl, r2	@ sprite_ref$0$0.780, sprite_ref$0$0.791
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
	cmp	ip, r0	@ a.782, <variable>.dV
	bne	.L33	@,
	ldr	ip, [r6, #36]	@ <variable>.Vo, <variable>.Vo
	mov	sl, sl, asr r4	@ tmp337, sprite_ref$0$0.780,
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
	mov	r2, r5	@ sprite_ref$0$0.791, tmp261
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
	add	lr, lr, ip	@ tmp218, D.36202, sprite_ref$0$1
	add	r0, r0, r2	@ tmp216, D.36199, sprite_ref$0$0.791
	add	r1, fp, ip	@,, sprite_ref$0$1
	ldr	fp, [sp, #20]	@, %sfp
	str	r1, [sp, #36]	@, %sfp
	add	r1, fp, r2	@,, sprite_ref$0$0.791
	ldr	fp, [sp, #24]	@, %sfp
	str	r1, [sp, #40]	@, %sfp
	mla	lr, r9, fp, lr	@, D.36189,, tmp218
	mla	r0, sl, fp, r0	@ sprite_ref$1$0, D.36187,, tmp216
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
.LFB1938:
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
.LFB1942:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #22092	@ tmp135,
	ldr	r3, [r0, r1]	@ <variable>.DecMode, <variable>.DecMode
	cmp	r3, #2	@ <variable>.DecMode,
	beq	.L59	@,
	movw	r3, #22060	@ tmp143,
	ldr	ip, [r0, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #8]	@ temp.845, <variable>.s32DecMode
	cmp	r3, #2	@ temp.845,
	beq	.L52	@,
.L53:
	cmp	r3, #1	@ temp.845,
	beq	.L58	@,
	cmp	r3, #4	@ temp.845,
	movwne	r3, #22092	@ tmp150,
	movne	r2, #0	@ tmp151,
	strne	r2, [r0, r3]	@ tmp151, <variable>.DecMode
	bxne	lr	@
.L58:
	movw	ip, #22092	@ tmp148,
	str	r3, [r0, ip]	@ temp.845, <variable>.DecMode
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
	ldr	r3, [ip, #8]	@ temp.845, <variable>.s32DecMode
	cmp	r3, #2	@ temp.845,
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
.LFB1950:
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
.LFB1958:
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
.LFB1955:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #19968	@ tmp144,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r2, [r0, ip]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r3, r0	@ pCtx, pCtx
	movw	r0, #15612	@ tmp143,
	tst	r2, #2	@ <variable>.PicIntegrality,
	ldr	r0, [r3, r0]	@ SlcNum, <variable>.Mp4DecParam.SlcNum
	beq	.L69	@,
	movw	r2, #15709	@ tmp147,
	ldrb	r2, [r3, r2]	@ zero_extendqisi2	@ D.38927, <variable>.IsLastSeg
	cmp	r2, #1	@ D.38927,
	beq	.L80	@,
	cmp	r2, #0	@ D.38927,
	bne	.L69	@,
	movw	r2, #15789	@ tmp219,
	ldrb	ip, [r3, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	beq	.L81	@,
.L69:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38933,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L80:
	sub	r0, r0, #1	@ tmp148, SlcNum,
	movw	ip, #510	@ tmp149,
	cmp	r0, ip	@ tmp148, tmp149
	bhi	.L69	@,
	mov	ip, r0, asl #3	@ tmp274, tmp148,
	rsb	r4, r0, ip	@ tmp153, tmp148, tmp274
	add	r4, r3, r4, asl #2	@, tmp155, pCtx, tmp153,
	add	r5, r4, #1280	@ tmp156, tmp155,
	add	r2, r5, #4	@ tmp156, tmp156,
	ldr	r5, [r2, #4]	@ D.38940, <variable>.bit_len
	cmp	r5, #0	@ D.38940,
	beq	.L73	@,
	ldr	r4, [r4, #1296]	@ D.38942, <variable>.phy_address
	cmp	r4, #0	@ D.38942,
	beq	.L73	@,
	movw	r0, #15712	@ tmp208,
	ldr	r3, [r3, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r4, r3	@ D.38942, <variable>.PhyAddr
	addls	r1, r5, r1, asl #3	@, tmp218, D.38940, CodeLen,
	strls	r1, [r2, #4]	@ tmp218, <variable>.bit_len
	movls	r0, #0	@ D.38933,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	b	.L69	@
.L73:
	rsb	r0, r0, ip	@ tmp168, tmp148, tmp274
	movw	r4, #15712	@ tmp164,
	ldr	r5, [r3, r4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r3, r0, asl #2	@, tmp170, pCtx, tmp168,
	ldr	r0, [r2, #1292]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r5, r0	@ <variable>.PhyAddr, <variable>.phy_address
	movls	r1, r1, asl #3	@ tmp198, CodeLen,
	strls	r1, [r2, #1288]	@ tmp198, <variable>.bit_len
	ldrls	r3, [r3, r4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movhi	r0, #0	@ D.38933,
	ldrhi	r3, [r2, #1284]	@ <variable>.bit_len, <variable>.bit_len
	movls	r0, #0	@ D.38933,
	addhi	r1, r3, r1, asl #3	@, tmp190, <variable>.bit_len, CodeLen,
	strls	r3, [r2, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	strhi	r1, [r2, #1284]	@ tmp190, <variable>.bit_len
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L81:
	sub	ip, r0, #1	@ temp.923, SlcNum,
	rsb	r0, ip, ip, asl #3	@, tmp224, temp.923, temp.923,
	add	ip, r3, r0, asl #2	@, tmp226, pCtx, tmp224,
	add	r2, ip, #1280	@ tmp227, tmp226,
	add	r2, r2, #4	@ tmp227, tmp227,
	ldr	r0, [r2, #4]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	beq	.L82	@,
.L78:
	mvn	r0, #0	@ D.38933,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L82:
	add	r4, ip, #1280	@ tmp235, tmp226,
	add	r4, r4, #12	@ tmp235, tmp235,
	ldr	r0, [r4, #4]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r0, #0	@ <variable>.phy_address,
	bne	.L78	@,
	ldr	r5, [ip, #1284]	@ <variable>.bit_len, <variable>.bit_len
	add	r1, r5, r1, asl #3	@, tmp253, <variable>.bit_len, CodeLen,
	str	r1, [ip, #1284]	@ tmp253, <variable>.bit_len
	movw	ip, #15792	@ tmp261,
	ldr	r1, [r3, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	ip, #15796	@ tmp270,
	str	r1, [r4, #4]	@ <variable>.PhyAddr, <variable>.phy_address
	ldr	r3, [r3, ip]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, r3, asl #3	@ tmp272, <variable>.LenInByte,
	str	r1, [r2, #4]	@ tmp272, <variable>.bit_len
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	Mp4_Combine_SliceData, .-Mp4_Combine_SliceData
	.align	2
	.global	Mp4_Check_Slice_NotSH
	.type	Mp4_Check_Slice_NotSH, %function
Mp4_Check_Slice_NotSH:
	.fnstart
.LFB1954:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #20019	@ tmp140,
	movw	r2, #21208	@ tmp139,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vol.resync_marker_disable, <variable>.MP4Vol.resync_marker_disable
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.38900, <variable>.MP4Vop.vop_coding_type
	cmp	r3, #0	@ <variable>.MP4Vol.resync_marker_disable,
	bne	.L84	@,
	movw	r3, #15864	@ tmp142,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ tmp144,
	tst	ip, #120	@ tmp144,
	bne	.L84	@,
	ldrh	r3, [r0, r3]	@ tmp150,
	ubfx	r3, r3, #7, #4	@ D.38908, tmp150,,
	cmp	r2, #3	@ D.38900,
	ldrls	pc, [pc, r2, asl #2]	@ D.38900
	b	.L85	@
.L89:
	.word	.L86
	.word	.L87
	.word	.L88
	.word	.L87
.L88:
	movw	r2, #21216	@ tmp156,
	movw	r1, #21217	@ tmp155,
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r1, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	cmp	r1, ip	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_forward
	movcs	ip, r1	@ tmp160, <variable>.MP4Vop.vop_fcode_backward
	add	r2, ip, #16	@ StartCodeLen, tmp160,
	cmp	r2, #18	@ StartCodeLen,
	movlt	r2, #18	@ StartCodeLen,
.L90:
	add	r3, r3, #17	@ tmp161, D.38908,
	cmp	r2, r3	@ StartCodeLen, tmp161
	moveq	r0, #0	@ ret,
	ldmeqfd	sp!, {r3, pc}	@
.L84:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L87:
	movw	r1, #21216	@ tmp152,
	ldrb	r2, [r0, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	add	r2, r2, #16	@ StartCodeLen, <variable>.MP4Vop.vop_fcode_forward,
	b	.L90	@
.L86:
	mov	r2, #17	@ StartCodeLen,
	b	.L90	@
.L85:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	Mp4_Check_Slice_NotSH, .-Mp4_Check_Slice_NotSH
	.align	2
	.global	MP4_Combine_HdPacket
	.type	MP4_Combine_HdPacket, %function
MP4_Combine_HdPacket:
	.fnstart
.LFB1965:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #22096	@ tmp138,
	ldr	r3, [r4, r0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L99	@,
	movw	r1, #15709	@ tmp140,
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ D.39344, <variable>.IsLastSeg
	cmp	r5, #1	@ D.39344,
	beq	.L102	@,
	cmp	r5, #0	@ D.39344,
	bne	.L100	@,
	movw	r2, #15789	@ tmp175,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L100	@,
	movw	r3, #22108	@ tmp177,
	movw	lr, #15716	@ tmp178,
	ldr	r2, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r1, r4, #15744	@, pCtx,
	ldr	ip, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r0, r4, #22016	@, pCtx,
	add	r0, r0, #160	@,,
	add	r1, r1, #40	@,,
	add	lr, ip, r2	@ tmp182, <variable>.LenInByte, <variable>.LenInByte
	mov	r2, #80	@,
	str	lr, [r4, r3]	@ tmp182, <variable>.LenInByte
	bl	memcpy	@
	mov	r0, r5	@ D.39343, D.39344
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L102:
	movw	r6, #22101	@ tmp141,
	ldrb	r5, [r4, r6]	@ zero_extendqisi2	@ D.39347, <variable>.IsLastSeg
	cmp	r5, #1	@ D.39347,
	beq	.L103	@,
	cmp	r5, #0	@ D.39347,
	bne	.L99	@,
	movw	r3, #22181	@ tmp167,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L99	@,
	movw	ip, #22188	@ tmp169,
	movw	r0, #15716	@ tmp170,
	ldr	r1, [r4, r0]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, r5	@ D.39343, D.39347
	ldr	r3, [r4, ip]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r2, r1, r3	@ tmp174, <variable>.LenInByte, <variable>.LenInByte
	str	r2, [r4, ip]	@ tmp174, <variable>.LenInByte
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L100:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39343,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L103:
	movw	r0, #15712	@ tmp142,
	movw	r3, #22104	@ tmp143,
	ldr	r2, [r4, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, ip	@ <variable>.PhyAddr, <variable>.PhyAddr
	blt	.L104	@,
	movw	r3, #22108	@ tmp161,
	movw	r0, #15716	@ tmp162,
	ldr	r1, [r4, r0]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ D.39343,
	ldr	r2, [r4, r3]	@ <variable>.LenInByte, <variable>.LenInByte
	add	ip, r1, r2	@ tmp166, <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r3]	@ tmp166, <variable>.LenInByte
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L99:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39343,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L104:
	add	r2, r4, #22016	@, pCtx,
	add	lr, r4, #15680	@, pCtx,
	add	r0, r2, #160	@,,
	add	r1, lr, #24	@,,
	mov	r2, #80	@,
	bl	memcpy	@
	movw	r1, #22181	@ tmp158,
	mov	r0, #0	@ tmp156,
	strb	r0, [r4, r6]	@ tmp156, <variable>.IsLastSeg
	strb	r5, [r4, r1]	@ D.39347, <variable>.IsLastSeg
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP4_Combine_HdPacket, .-MP4_Combine_HdPacket
	.align	2
	.global	MP4_GetScdUpMsg
	.type	MP4_GetScdUpMsg, %function
MP4_GetScdUpMsg:
	.fnstart
.LFB1953:
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
.LFB1952:
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
	ble	.L108	@,
	add	r4, sl, #15808	@ tmp168, pCtx,
	mov	r0, r7	@, ChanID
	mov	r6, #1	@ i,
	sub	r9, r8, #1	@ tmp172, StreamIDNum,
	ldr	r1, [r4, #60]	@, <variable>.StreamID
	and	r9, r9, #1	@ tmp174, tmp172,
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum,
	add	r5, r4, #64	@ ivtmp.1035, tmp168,
	ble	.L108	@,
	cmp	r9, #0	@ tmp174,
	beq	.L109	@,
	ldr	r1, [r5, #0]	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r6, #2	@ i,
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #68	@ ivtmp.1035, tmp168,
	ble	.L108	@,
.L109:
	mov	r4, r5	@ tmp176, ivtmp.1035
	add	r6, r6, #1	@ tmp175, i,
	ldr	r1, [r4], #4	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	add	r6, r6, #1	@ i, tmp175,
	ldr	r1, [r5, #4]	@, <variable>.StreamID
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum, i
	add	r5, r4, #4	@ ivtmp.1035, tmp176,
	bgt	.L109	@,
.L108:
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
.LFB1962:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #22516	@ tmp140,
	movw	r3, #22960	@ tmp139,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r8, [r0, r1]	@ StreamIDNum, <variable>.stHdPktInfo.StreamIDNum
	ldr	r7, [r0, r3]	@ ChanID, <variable>.ChanID
	cmp	r8, #64	@ StreamIDNum,
	movge	r8, #64	@ StreamIDNum.1068,
	cmp	r8, #0	@ StreamIDNum.1068,
	addle	sl, r0, #22016	@ tmp145, pCtx,
	ble	.L118	@,
	add	sl, r0, #22016	@ tmp145, pCtx,
	mov	r0, r7	@, ChanID
	mov	r6, #1	@ i,
	sub	r4, r8, #1	@ tmp146, StreamIDNum.1068,
	ldr	r1, [sl, #244]	@, <variable>.stHdPktInfo.StreamId
	and	r4, r4, #1	@ tmp148, tmp146,
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum.1068,
	add	r5, sl, #248	@ ivtmp.1065, tmp145,
	ble	.L118	@,
	cmp	r4, #0	@ tmp148,
	beq	.L119	@,
	ldr	r1, [r5, #0]	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r6, #2	@ i,
	cmp	r8, r6	@ StreamIDNum.1068, i
	add	r5, sl, #252	@ ivtmp.1065, tmp145,
	ble	.L118	@,
.L119:
	mov	r4, r5	@ tmp150, ivtmp.1065
	add	r6, r6, #1	@ tmp149, i,
	ldr	r1, [r4], #4	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	add	r6, r6, #1	@ i, tmp149,
	ldr	r1, [r5, #4]	@, <variable>.stHdPktInfo.StreamId
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r8, r6	@ StreamIDNum.1068, i
	add	r5, r4, #4	@ ivtmp.1065, tmp150,
	bgt	.L119	@,
.L118:
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
.LFB1951:
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
	bne	.L130	@,
	ldrb	r0, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L132	@,
.L130:
	mov	r0, r4	@, pMp4Packet
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L132:
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L130	@
	.fnend
	.size	MP4_ClearCurPacket, .-MP4_ClearCurPacket
	.align	2
	.global	MP4_Record_PacketID
	.type	MP4_Record_PacketID, %function
MP4_Record_PacketID:
	.fnstart
.LFB1964:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #22516	@ tmp136,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, r2]	@ D.39318, <variable>.stHdPktInfo.StreamIDNum
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #62	@ D.39318,
	bgt	.L137	@,
	add	r1, r3, #5504	@ tmp141, D.39318,
	movw	r0, #15720	@ tmp147,
	add	ip, r1, #60	@ tmp141, tmp141,
	ldr	r0, [r4, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ D.39327, D.39318,
	str	r3, [r4, r2]	@ D.39327, <variable>.stHdPktInfo.StreamIDNum
	add	r1, r4, ip, asl #2	@, tmp145, pCtx, tmp141,
	movw	ip, #15709	@ tmp152,
	str	r0, [r1, #4]	@ <variable>.StreamID, <variable>.stHdPktInfo.StreamId
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #0	@ <variable>.IsLastSeg,
	ldmnefd	sp!, {r4, pc}	@
	movw	r0, #15789	@ tmp154,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	ldmnefd	sp!, {r4, pc}	@
	add	ip, r3, #5504	@ tmp156, D.39327,
	movw	r0, #15800	@ tmp162,
	add	r1, ip, #60	@ tmp156, tmp156,
	ldr	ip, [r4, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ tmp165, D.39327,
	str	r3, [r4, r2]	@ tmp165, <variable>.stHdPktInfo.StreamIDNum
	add	r4, r4, r1, asl #2	@, tmp160, pCtx, tmp156,
	str	ip, [r4, #4]	@ <variable>.StreamID, <variable>.stHdPktInfo.StreamId
	ldmfd	sp!, {r4, pc}	@
.L137:
	bl	MP4_Clean_HeadPacket	@
	movw	r3, #22960	@ tmp137,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	MP4_Record_PacketID, .-MP4_Record_PacketID
	.align	2
	.global	MP4_Record_HeadPacketInfo
	.type	MP4_Record_HeadPacketInfo, %function
MP4_Record_HeadPacketInfo:
	.fnstart
.LFB1961:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r7, r1	@ StartCode, StartCode
	beq	.L142	@,
	add	r5, r4, #22016	@ tmp136, pCtx,
	add	r6, r4, #15680	@, pCtx,
	add	r1, r6, #24	@,,
	mov	r2, #160	@,
	add	r0, r5, #80	@, tmp136,
	movw	r6, #22524	@ tmp149,
	bl	memcpy	@
	add	r1, r4, #15808	@ tmp146, pCtx,
	ldr	r0, [r4, r6]	@ <variable>.stHdPktInfo.GetHeadFirstFlag, <variable>.stHdPktInfo.GetHeadFirstFlag
	movw	r2, #22520	@ tmp148,
	ldr	r3, [r1, #56]	@ <variable>.ScdUpMsg, <variable>.ScdUpMsg
	cmp	r0, #0	@ <variable>.stHdPktInfo.GetHeadFirstFlag,
	str	r7, [r4, r2]	@ StartCode, <variable>.stHdPktInfo.HeadCode
	str	r3, [r5, #240]	@ <variable>.ScdUpMsg, <variable>.stHdPktInfo.stScdUpMsg
	beq	.L143	@,
	mov	r3, #22528	@ tmp153,
	ldr	r2, [r4, r3]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	add	lr, r2, #1	@ tmp156, <variable>.stHdPktInfo.CountVopNum,
	str	lr, [r4, r3]	@ tmp156, <variable>.stHdPktInfo.CountVopNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L143:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_PacketID	@
	mov	r3, #22528	@ tmp153,
	ldr	r2, [r4, r3]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	mov	ip, #1	@ tmp152,
	str	ip, [r4, r6]	@ tmp152, <variable>.stHdPktInfo.GetHeadFirstFlag
	add	lr, r2, #1	@ tmp156, <variable>.stHdPktInfo.CountVopNum,
	str	lr, [r4, r3]	@ tmp156, <variable>.stHdPktInfo.CountVopNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L142:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	MP4_Record_HeadPacketInfo, .-MP4_Record_HeadPacketInfo
	.align	2
	.global	MP4_Renew_CurPacket
	.type	MP4_Renew_CurPacket, %function
MP4_Renew_CurPacket:
	.fnstart
.LFB1966:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pCtx, pCtx
	bl	MP4_Combine_HdPacket	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L148	@,
	mov	r0, r4	@, pCtx
	add	r5, r4, #22016	@ tmp144, pCtx,
	bl	MP4_Record_PacketID	@
	add	r0, r4, #15680	@, pCtx,
	add	r1, r5, #80	@, tmp144,
	mov	r2, #160	@,
	add	r0, r0, #24	@,,
	add	r4, r4, #15744	@ tmp150, pCtx,
	bl	memcpy	@
	ldr	r2, [r5, #240]	@ <variable>.stHdPktInfo.stScdUpMsg, <variable>.stHdPktInfo.stScdUpMsg
	mov	r0, #0	@ D.39385,
	str	r2, [r4, #32]	@ <variable>.stHdPktInfo.stScdUpMsg, <variable>.stMp4UpMsg
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L148:
	movw	r3, #22960	@ tmp137,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.39385, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	MP4_Renew_CurPacket, .-MP4_Renew_CurPacket
	.align	2
	.global	MP4_Check_CurPacket
	.type	MP4_Check_CurPacket, %function
MP4_Check_CurPacket:
	.fnstart
.LFB1963:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r5, #15704	@ tmp145,
	ldr	r1, [r0, r5]	@ D.39469, <variable>.VirAddr
	movw	r3, #15716	@ tmp147,
	movw	r2, #15712	@ tmp143,
	ldr	lr, [r0, r3]	@ D.39467, <variable>.LenInByte
	mov	r4, r0	@ pCtx, pCtx
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r0, [r0, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r5, sp, #4	@ tmp151,,
	movw	ip, #22044	@ tmp146,
	movw	r3, #22056	@ tmp149,
	str	r1, [r4, ip]	@ D.39469, <variable>.BitsObj.vir_addr
	movw	r2, #22048	@ tmp142,
	movw	ip, #22052	@ tmp148,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.BitsObj.phy_addr
	str	lr, [r4, ip]	@ D.39467, <variable>.BitsObj.len
	mov	r2, lr	@, D.39467
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
	bne	.L150	@,
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
	beq	.L152	@,
.L171:
	movw	r2, #22520	@ tmp178,
	movw	ip, #438	@ tmp179,
	ldr	r3, [r4, r2]	@ D.39277, <variable>.stHdPktInfo.HeadCode
	cmp	r3, ip	@ D.39277, tmp179
	beq	.L153	@,
	cmp	r0, #196	@ StartCode,
	beq	.L153	@,
.L154:
	mov	r0, r4	@, pCtx
	bl	MP4_Renew_CurPacket	@
	movw	r1, #15704	@ tmp194,
	ldr	r3, [r4, r1]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	bne	.L170	@,
.L162:
	mvn	r0, #0	@ ret,
.L163:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, pc}
.L150:
	movw	r3, #21277	@ tmp169,
	movw	lr, #15864	@ tmp172,
	mov	r2, #1	@ tmp170,
	strb	r2, [r4, r3]	@ tmp170,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ tmp174,
	mov	r0, #196	@ StartCode,
	tst	r1, #2	@ tmp174,
	bne	.L171	@,
.L152:
	movw	ip, #22520	@ tmp187,
	movw	lr, #438	@ tmp188,
	ldr	r3, [r4, ip]	@ temp.1190, <variable>.stHdPktInfo.HeadCode
	cmp	r3, lr	@ temp.1190, tmp188
	beq	.L159	@,
	cmp	r0, #196	@ StartCode,
	beq	.L172	@,
.L160:
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, #0	@ ret,
.L158:
	movw	r1, #15704	@ tmp194,
	ldr	r3, [r4, r1]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L162	@,
.L170:
	movw	ip, #15712	@ tmp196,
	ldr	lr, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	bne	.L163	@,
	b	.L162	@
.L153:
	movw	lr, #22041	@ tmp180,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vop_decode_right, <variable>.MP4SyntaxState.vop_decode_right
	cmp	r1, #1	@ <variable>.MP4SyntaxState.vop_decode_right,
	beq	.L155	@,
	cmp	r0, #196	@ StartCode,
	bne	.L154	@,
.L155:
	movw	ip, #22524	@ tmp182,
	ldr	r0, [r4, ip]	@ <variable>.stHdPktInfo.GetHeadFirstFlag, <variable>.stHdPktInfo.GetHeadFirstFlag
	cmp	r0, #1	@ <variable>.stHdPktInfo.GetHeadFirstFlag,
	beq	.L173	@,
.L157:
	mov	r0, #0	@ ret,
	b	.L158	@
.L159:
	cmp	r0, r3	@ StartCode, temp.1190
	beq	.L166	@,
	mov	r0, #0	@ ret,
	b	.L158	@
.L173:
	movw	r2, #438	@ tmp184,
	cmp	r3, r2	@ D.39277, tmp184
	bne	.L157	@,
	movw	r1, #22108	@ tmp185,
	ldr	r3, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r3, #4	@ <variable>.LenInByte,
	beq	.L154	@,
	mov	r0, #0	@ ret,
	b	.L158	@
.L172:
	cmp	r3, #196	@ temp.1190,
	bne	.L157	@,
.L166:
	mov	r2, #22528	@ tmp192,
	ldr	r0, [r4, r2]	@ <variable>.stHdPktInfo.CountVopNum, <variable>.stHdPktInfo.CountVopNum
	cmp	r0, #1	@ <variable>.stHdPktInfo.CountVopNum,
	bgt	.L160	@,
	mov	r0, #0	@ ret,
	b	.L158	@
	.fnend
	.size	MP4_Check_CurPacket, .-MP4_Check_CurPacket
	.align	2
	.global	MP4_Record_SlcSegID
	.type	MP4_Record_SlcSegID, %function
MP4_Record_SlcSegID:
	.fnstart
.LFB1960:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #19964	@ tmp136,
	movw	r1, #1022	@ tmp137,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, r2]	@ D.39206, <variable>.StreamIDNum
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, r1	@ D.39206, tmp137
	bhi	.L178	@,
	add	ip, r3, #3952	@ tmp142, D.39206,
	movw	r0, #15720	@ tmp148,
	add	r1, ip, #14	@ tmp142, tmp142,
	ldr	r0, [r4, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ D.39214, D.39206,
	str	r3, [r4, r2]	@ D.39214, <variable>.StreamIDNum
	add	ip, r4, r1, asl #2	@, tmp146, pCtx, tmp142,
	movw	r1, #15709	@ tmp153,
	str	r0, [ip, #4]	@ <variable>.StreamID, <variable>.StreamID
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #0	@ <variable>.IsLastSeg,
	ldmnefd	sp!, {r4, pc}	@
	movw	r0, #15789	@ tmp155,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	ldmnefd	sp!, {r4, pc}	@
	add	ip, r3, #3952	@ tmp157, D.39214,
	movw	r0, #15800	@ tmp163,
	add	r1, ip, #14	@ tmp157, tmp157,
	ldr	ip, [r4, r0]	@ <variable>.StreamID, <variable>.StreamID
	add	r3, r3, #1	@ tmp166, D.39214,
	str	r3, [r4, r2]	@ tmp166, <variable>.StreamIDNum
	add	r4, r4, r1, asl #2	@, tmp161, pCtx, tmp157,
	str	ip, [r4, #4]	@ <variable>.StreamID, <variable>.StreamID
	ldmfd	sp!, {r4, pc}	@
.L178:
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	add	r0, r4, #15680	@, pCtx,
	movw	r3, #22960	@ tmp138,
	add	r1, r0, #24	@,,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	MP4_Record_SlcSegID, .-MP4_Record_SlcSegID
	.align	2
	.global	Mp4_Syntax_Init
	.type	Mp4_Syntax_Init, %function
Mp4_Syntax_Init:
	.fnstart
.LFB1922:
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
	mov	r3, #0	@ ivtmp.1261,
	mov	r2, #1	@ tmp151,
	str	r2, [r4, r5]	@ tmp151, <variable>.IPVopErr
	strb	r2, [r4, r0]	@ tmp151, <variable>.MP4Syntax.syn_vos.visual_object_verid
.L180:
	add	r2, r3, #4	@ tmp169, ivtmp.1261,
	add	r0, r4, r3	@ tmp155, pCtx, ivtmp.1261
	ldr	r5, [r1, r3]	@ tmp159, default_intra_matrix
	add	r6, r4, r2	@ tmp171, pCtx, tmp169
	add	r3, r2, #4	@ ivtmp.1261, tmp169,
	ldr	lr, [r1, r2]	@ tmp174, default_intra_matrix
	add	ip, r0, #19968	@ tmp157, tmp155,
	cmp	r3, #256	@ ivtmp.1261,
	add	r0, r6, #19968	@ tmp172, tmp171,
	str	r5, [ip, #120]	@ tmp159, <variable>.MP4Vol.intra_quant_mat
	str	lr, [r0, #120]	@ tmp174, <variable>.MP4Vol.intra_quant_mat
	bne	.L180	@,
	ldr	r1, .L187	@ tmp167,
	mov	r3, #0	@ ivtmp.1251,
.L181:
	add	r2, r3, #4	@ tmp168, ivtmp.1251,
	add	r0, r4, r3	@ tmp160, pCtx, ivtmp.1251
	ldr	r5, [r1, r3]	@ tmp165, default_inter_matrix
	add	r6, r4, r2	@ tmp176, pCtx, tmp168
	add	r3, r2, #4	@ ivtmp.1251, tmp168,
	ldr	lr, [r1, r2]	@ tmp179, default_inter_matrix
	add	ip, r0, #20224	@ tmp162, tmp160,
	cmp	r3, #256	@ ivtmp.1251,
	add	r0, r6, #20224	@ tmp177, tmp176,
	str	r5, [ip, #120]	@ tmp165, <variable>.MP4Vol.nonintra_quant_mat
	str	lr, [r0, #120]	@ tmp179, <variable>.MP4Vol.nonintra_quant_mat
	bne	.L181	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L188:
	.align	2
.L187:
	.word	.LANCHOR0+256
	.fnend
	.size	Mp4_Syntax_Init, .-Mp4_Syntax_Init
	.align	2
	.global	Global_Data_Init
	.type	Global_Data_Init, %function
Global_Data_Init:
	.fnstart
.LFB1923:
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
.LFB1918:
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
	beq	.L193	@,
	ldrb	r1, [r4, #12]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #8]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #1	@ i,
	beq	.L193	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #20]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #16]	@ <variable>.code, <variable>.code
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #2	@ i,
	beq	.L193	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #28]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	ip, [r4, #24]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	moveq	r6, #3	@ i,
	beq	.L193	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #36]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #32]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #4	@ i,
	beq	.L193	@,
	ldrb	r1, [r4, #44]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #40]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #5	@ i,
	beq	.L193	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #52]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #48]	@ <variable>.code, <variable>.code
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #6	@ i,
	beq	.L193	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #60]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	ip, [r4, #56]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	moveq	r6, #7	@ i,
	beq	.L193	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #68]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r3, [r4, #64]	@ <variable>.code, <variable>.code
	cmp	r0, r3	@, <variable>.code
	moveq	r6, #8	@ i,
	beq	.L193	@,
	ldrb	r1, [r4, #76]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	r1, [r4, #72]	@ <variable>.code, <variable>.code
	cmp	r0, r1	@, <variable>.code
	moveq	r6, #9	@ i,
	beq	.L193	@,
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #84]	@ zero_extendqisi2	@, <variable>.len
	bl	BsShow	@
	ldr	r2, [r4, #80]	@ <variable>.code, <variable>.code
	movw	r6, #:lower16:.LANCHOR1	@ tmp189,
	movt	r6, #:upper16:.LANCHOR1	@ tmp189,
	cmp	r0, r2	@, <variable>.code
	moveq	r6, #10	@ i,
	beq	.L193	@,
	ldrb	r1, [r6, #92]	@ zero_extendqisi2	@, <variable>.len
	mov	r0, r5	@, pBs
	bl	BsShow	@
	ldr	ip, [r6, #88]	@ <variable>.code, <variable>.code
	cmp	r0, ip	@, <variable>.code
	mvnne	r6, #0	@ i,
	beq	.L207	@,
	mov	r0, r6	@, i
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L207:
	mov	r6, #11	@ i,
.L193:
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
.LFB1924:
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
	b	.L210	@
.L220:
	mov	r6, r0	@ value, D.36593
.L210:
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
	cmp	r0, #0	@ D.36593,
	str	r0, [r7, r2, asl #2]	@ D.36593,* matrix
	moveq	r3, #0	@, tmp162,
	cmp	r3, #0	@ tmp162,
	bne	.L220	@,
	cmp	r0, #0	@ D.36593,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	sub	r0, r4, #1	@ tmp163, i,
	cmp	r0, #63	@ tmp163,
	ldmgtfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	ldr	ip, .L221	@ tmp165,
	add	r4, ip, r4, asl #2	@, ivtmp.1423, tmp165, i,
	add	ip, ip, #260	@ D.40279, tmp165,
	add	r3, r4, #4	@ ivtmp.1423, ivtmp.1423,
	rsb	r2, r4, ip	@ tmp174, ivtmp.1423, D.40279
	ldr	lr, [r4, #-4]	@ tmp169, scan_tables
	cmp	r3, ip	@ ivtmp.1423, D.40279
	sub	r1, r2, #4	@ tmp175, tmp174,
	ubfx	r1, r1, #2, #1	@ tmp176, tmp175,,
	str	r6, [r7, lr, asl #2]	@ value,* matrix
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r1, #0	@ tmp176,
	beq	.L212	@,
	ldr	r2, [r3, #-4]	@ tmp182, scan_tables
	add	r3, r3, #4	@ ivtmp.1423, ivtmp.1423,
	cmp	r3, ip	@ ivtmp.1423, D.40279
	str	r6, [r7, r2, asl #2]	@ value,* matrix
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L212:
	mov	r1, r3	@ tmp177, ivtmp.1423
	ldr	r0, [r3, #-4]	@ tmp179, scan_tables
	ldr	lr, [r1], #4	@ tmp181, scan_tables
	add	r3, r1, #4	@ ivtmp.1423, tmp177,
	str	r6, [r7, r0, asl #2]	@ value,* matrix
	cmp	r3, ip	@ ivtmp.1423, D.40279
	str	r6, [r7, lr, asl #2]	@ value,* matrix
	bne	.L212	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L222:
	.align	2
.L221:
	.word	.LANCHOR0+512
	.fnend
	.size	Bs_Get_Matrix, .-Bs_Get_Matrix
	.align	2
	.global	Mp4_Syntax_Slice_SH
	.type	Mp4_Syntax_Slice_SH, %function
Mp4_Syntax_Slice_SH:
	.fnstart
.LFB1957:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #15612	@ tmp145,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, [r0, r3]	@ D.39073, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #510	@ tmp147,
	sub	r7, r5, #1	@ D.39083, D.39073,
	.pad #36
	sub	sp, sp, #36	@,,
	cmp	r7, r0	@ D.39083, tmp147
	mov	r9, r2	@ len, len
	bhi	.L232	@,
	movw	r0, #15864	@ tmp158,
	add	r6, sp, #4	@ tmp163,,
	ldrb	r8, [r4, r0]	@ zero_extendqisi2	@ tmp160,
	add	lr, r5, #1	@ tmp157, D.39073,
	mov	r0, r6	@, tmp163
	str	lr, [r4, r3]	@ tmp157, <variable>.Mp4DecParam.SlcNum
	ubfx	sl, r8, #3, #4	@ tmp162, tmp160,,
	bl	BsInit	@
	add	sl, sl, #17	@ D.39089, tmp162,
	mov	r0, r6	@, tmp163
	mov	r8, r5, asl #3	@ tmp387, D.39073,
	mov	r1, sl	@, D.39089
	rsb	fp, r5, r8	@ tmp171, D.39073, tmp387
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r6	@, tmp163
	add	fp, r4, fp, asl #2	@, tmp173, pCtx, tmp171,
	bl	BsGet	@
	movw	ip, #21220	@ tmp166,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.num_mb_ingob, <variable>.MP4Vop.num_mb_ingob
	movw	r2, #1204	@ tmp175,
	mul	r3, r3, r0	@ D.39095, <variable>.MP4Vop.num_mb_ingob,
	movw	r0, #1206	@ tmp177,
	str	r3, [fp, #1300]	@ D.39095, <variable>.mb_start_num
	ldrh	r1, [r4, r0]	@ <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicHeightInMb
	ldrh	ip, [r4, r2]	@ <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicWidthInMb
	mul	r2, r1, ip	@ tmp179, <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicWidthInMb
	sub	r0, r2, #1	@ tmp180, tmp179,
	cmp	r3, r0	@ D.39095, tmp180
	bhi	.L233	@,
	mov	r1, #2	@,
	mov	r0, r6	@, tmp163
	bl	BsSkip	@
	mov	r0, r6	@, tmp163
	mov	r1, #5	@,
	add	sl, fp, #1264	@ tmp189, tmp173,
	bl	BsGet	@
	add	sl, sl, #8	@ tmp189, tmp189,
	movw	r2, #21208	@ tmp198,
	movw	ip, #21216	@ tmp218,
	strb	r0, [sl, #9]	@, <variable>.vop_quant
	mov	r0, r6	@, tmp163
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	movw	r6, #21212	@ tmp208,
	strb	r3, [sl, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	movw	r3, #21217	@ tmp228,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	r1, [sl, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	strb	r2, [sl, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	strb	r6, [sl, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	bl	BsPos	@
	movw	ip, #22056	@ tmp254,
	mov	r1, r0, asr #31	@ tmp249, BitUsed,
	mov	r6, r0	@ BitUsed,
	rsb	r9, r0, r9, asl #3	@, tmp240, BitUsed, len,
	str	r9, [fp, #1284]	@ tmp240, <variable>.bit_len
	mov	r3, r1, lsr #29	@ tmp250, tmp249,
	ldr	r1, [r4, ip]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	add	r2, r0, r3	@ tmp251, BitUsed, tmp250
	add	ip, r0, #7	@ tmp269, BitUsed,
	and	r0, r2, #7	@ tmp252, tmp251,
	cmp	r6, #0	@ BitUsed,
	rsb	r3, r3, r0	@ tmp253, tmp250, tmp252
	add	r2, r3, r1	@ tmp258, tmp253, <variable>.BitsObj.offset
	movw	r3, #22048	@ tmp271,
	strb	r2, [sl, #10]	@ tmp258, <variable>.bit_offset
	movge	ip, r6	@ BitUsed, BitUsed
	ldr	r1, [r4, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	r2, #15709	@ tmp278,
	mov	r3, #19968	@ tmp274,
	add	r0, r1, ip, asr #3	@, tmp273, <variable>.BitsObj.phy_addr, BitUsed,
	str	r0, [fp, #1292]	@ tmp273, <variable>.phy_address
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	ldr	ip, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	cmp	r2, #0	@ <variable>.IsLastSeg,
	orr	r1, ip, #16	@ tmp277, <variable>.PicIntegrality,
	str	r1, [r4, r3]	@ tmp277, <variable>.PicIntegrality
	beq	.L234	@,
.L227:
	rsb	r2, r5, r8	@ tmp313, D.39073, tmp387
	mov	ip, #0	@ tmp317,
	add	r0, r4, r2, asl #2	@, tmp315, pCtx, tmp313,
	add	r3, r0, #1280	@ tmp333, tmp315,
	add	r5, r0, #1264	@ tmp324, tmp315,
	add	r1, r3, #4	@ tmp316, tmp316,
	add	r5, r5, #9	@ tmp324, tmp324,
	add	r2, r3, #12	@ tmp333, tmp333,
	str	ip, [r1, #4]	@ tmp317, <variable>.bit_len
	str	ip, [r2, #4]	@ tmp317, <variable>.phy_address
	strb	ip, [r5, #10]	@ tmp317, <variable>.bit_offset
.L228:
	mov	r3, r7, asl #3	@ tmp386, D.39083,
	rsb	r1, r7, r3	@ tmp338, D.39083, tmp386
	add	r2, r4, r1, asl #2	@, tmp340, pCtx, tmp338,
	ldr	ip, [r2, #1296]	@ <variable>.phy_address, <variable>.phy_address
	cmp	ip, #0	@ <variable>.phy_address,
	bne	.L235	@,
.L229:
	rsb	r3, r7, r3	@ tmp366, D.39083, tmp386
	movw	r2, #15864	@ tmp370,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ tmp372,
	add	r0, r4, r3, asl #2	@, tmp368, pCtx, tmp366,
	ubfx	ip, lr, #3, #4	@ tmp374, tmp372,,
	ldr	r1, [r0, #1284]	@ <variable>.bit_len, <variable>.bit_len
	add	r2, ip, r1	@ tmp383, tmp374, <variable>.bit_len
	str	r2, [r0, #1284]	@ tmp383, <variable>.bit_len
.L230:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
.L225:
	mov	r0, r6	@, BitUsed
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L235:
	add	lr, r2, #1280	@ tmp349, tmp340,
	add	r2, lr, #4	@ tmp349, tmp349,
	ldr	r1, [r2, #4]	@ D.39139, <variable>.bit_len
	cmp	r1, #0	@ D.39139,
	beq	.L229	@,
	movw	lr, #15864	@ tmp357,
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ tmp359,
	ubfx	r3, ip, #3, #4	@ tmp361, tmp359,,
	add	r0, r3, r1	@ tmp362, tmp361, D.39139
	str	r0, [r2, #4]	@ tmp362, <variable>.bit_len
	b	.L230	@
.L234:
	movw	r0, #15789	@ tmp280,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L227	@,
	movw	r0, #15796	@ tmp289,
	movw	r1, #15792	@ tmp308,
	ldr	lr, [r4, r0]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r2, [fp, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r3, lr, asl #3	@ tmp291, <variable>.LenInByte,
	str	r3, [fp, #1288]	@ tmp291, <variable>.bit_len
	ldr	ip, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [fp, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L228	@
.L232:
	add	ip, r4, #15680	@, pCtx,
	movw	r6, #22960	@ tmp148,
	add	r1, ip, #24	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r3, #19968	@ tmp152,
	ldr	r1, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r6, #0	@ BitUsed,
	bic	r2, r1, #178	@ tmp155, <variable>.PicIntegrality,
	str	r2, [r4, r3]	@ tmp155, <variable>.PicIntegrality
	bl	vfmw_dprint_nothing	@
	b	.L225	@
.L233:
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ BitUsed,
	b	.L225	@
	.fnend
	.size	Mp4_Syntax_Slice_SH, .-Mp4_Syntax_Slice_SH
	.align	2
	.global	Mp4_Syntax_Slice_NotSH
	.type	Mp4_Syntax_Slice_NotSH, %function
Mp4_Syntax_Slice_NotSH:
	.fnstart
.LFB1956:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #15612	@ tmp154,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r6, [r0, r3]	@ D.38986, <variable>.Mp4DecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #510	@ tmp156,
	sub	ip, r6, #1	@ tmp155, D.38986,
	.pad #32
	sub	sp, sp, #32	@,,
	cmp	ip, r0	@ tmp155, tmp156
	mov	r7, r2	@ len, len
	bhi	.L252	@,
	movw	sl, #15864	@ tmp167,
	add	r5, sp, #4	@ tmp399,,
	ldrh	ip, [r4, sl]	@ tmp169,
	add	r0, r6, #1	@ tmp166, D.38986,
	str	r0, [r4, r3]	@ tmp166, <variable>.Mp4DecParam.SlcNum
	mov	r0, r5	@, tmp399
	ubfx	lr, ip, #7, #4	@ tmp171, tmp169,,
	movw	sl, #21972	@ tmp174,
	add	r8, lr, #17	@ D.39000, tmp171,
	bl	BsInit	@
	mov	r0, r5	@, tmp399
	mov	r1, r8	@, D.39000
	bl	BsSkip	@
	movw	r2, #21976	@ tmp178,
	ldr	r3, [r4, sl]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	ldr	r1, [r4, r2]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	add	ip, r3, #15	@ tmp175, <variable>.MP4Syntax.image_height,
	add	r0, r1, #15	@ tmp179, <variable>.MP4Syntax.image_width,
	mov	r8, ip, lsr #4	@ tmp177, tmp175,
	mov	sl, r0, lsr #4	@ tmp181, tmp179,
	mul	sl, sl, r8	@ MbCnt.1489, tmp181, tmp177
	cmp	sl, #0	@ MbCnt.1489,
	beq	.L239	@,
	mov	r3, sl	@ MbCnt, MbCnt.1489
	mov	r1, #0	@ n,
.L240:
	add	r1, r1, #1	@ tmp183, n,
	movs	r3, r3, lsr #1	@ MbCnt, MbCnt,
	uxth	r1, r1	@ n, tmp183
	bne	.L240	@,
	sxth	r1, r1	@, n
	mov	r0, r5	@, tmp399
	bl	BsGet	@
	mov	r8, r6, asl #3	@ tmp398, D.38986,
	rsb	r2, r6, r8	@ tmp189, D.38986, tmp398
	sub	sl, sl, #1	@ tmp193, MbCnt.1489,
	add	r3, r4, r2, asl #2	@, tmp191, pCtx, tmp189,
	cmp	r0, sl	@ D.39008, tmp193
	str	r0, [r3, #1300]	@ D.39008, <variable>.mb_start_num
	bhi	.L253	@,
.L241:
	mov	r1, #5	@,
	mov	r0, r5	@, tmp399
	bl	BsGet	@
	rsb	sl, r6, r8	@ tmp198, D.38986, tmp398
	mov	r1, #1	@,
	add	ip, r4, sl, asl #2	@, tmp200, pCtx, tmp198,
	add	r9, ip, #1264	@ tmp201, tmp200,
	add	sl, r9, #8	@ tmp201, tmp201,
	strb	r0, [sl, #9]	@, <variable>.vop_quant
	mov	r0, r5	@, tmp399
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L242	@,
.L249:
	mov	r0, r5	@, tmp399
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L249	@,
	mov	r1, #1	@,
	mov	r0, r5	@, tmp399
	bl	BsSkip	@
	movw	r0, #20068	@ tmp206,
	ldr	r1, [r4, r0]	@ D.39020, <variable>.MP4Vol.vop_time_incr_bits
	cmp	r1, #0	@ D.39020,
	bne	.L254	@,
.L244:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp399
	bl	BsSkip	@
	mov	r1, #2	@,
	mov	r0, r5	@, tmp399
	rsb	r9, r6, r8	@ tmp213, D.38986, tmp398
	bl	BsGet	@
	mov	r1, #3	@,
	add	r2, r4, r9, asl #2	@, tmp215, pCtx, tmp213,
	add	r3, r2, #1264	@ tmp216, tmp215,
	add	sl, r3, #8	@ tmp216, tmp216,
	strb	r0, [sl, #8]	@, <variable>.vop_coding_type
	mov	r0, r5	@, tmp399
	bl	BsGet	@
	ldrb	r1, [sl, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	cmp	r1, #0	@ <variable>.vop_coding_type,
	strb	r0, [sl, #7]	@, <variable>.intra_dc_vlc_thr
	bne	.L255	@,
.L245:
	rsb	r9, r6, r8	@ tmp268, D.38986, tmp398
	movw	r0, #21216	@ tmp272,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	movw	r1, #21217	@ tmp282,
	add	r9, r4, r9, asl #2	@, tmp270, pCtx, tmp268,
	mov	lr, #19968	@ tmp285,
	add	sl, r9, #1264	@ tmp271, tmp270,
	mov	r0, r5	@, tmp399
	add	sl, sl, #8	@ tmp271, tmp271,
	strb	r2, [sl, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	strb	ip, [sl, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	ldr	r2, [r4, lr]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	orr	r5, r2, #16	@ tmp288, <variable>.PicIntegrality,
	str	r5, [r4, lr]	@ tmp288, <variable>.PicIntegrality
	bl	BsPos	@
	movw	r1, #22056	@ tmp312,
	mov	r3, r0, asr #31	@ tmp307, BitUsed,
	mov	r5, r0	@ BitUsed,
	rsb	r7, r0, r7, asl #3	@, tmp298, BitUsed, len,
	str	r7, [r9, #1284]	@ tmp298, <variable>.bit_len
	mov	ip, r3, lsr #29	@ tmp308, tmp307,
	ldr	r2, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	add	r0, r0, ip	@ tmp309, BitUsed, tmp308
	cmp	r5, #0	@ BitUsed,
	and	r0, r0, #7	@ tmp310, tmp309,
	add	r1, r5, #7	@ tmp327, BitUsed,
	rsb	r3, ip, r0	@ tmp311, tmp308, tmp310
	movge	r1, r5	@ BitUsed, BitUsed
	add	ip, r3, r2	@ tmp316, tmp311, <variable>.BitsObj.offset
	movw	r3, #22048	@ tmp329,
	strb	ip, [sl, #10]	@ tmp316, <variable>.bit_offset
	movw	r2, #15709	@ tmp332,
	ldr	r0, [r4, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	add	ip, r0, r1, asr #3	@, tmp331, <variable>.BitsObj.phy_addr, BitUsed,
	str	ip, [r9, #1292]	@ tmp331, <variable>.phy_address
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L246	@,
	movw	ip, #15789	@ tmp334,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	beq	.L256	@,
.L246:
	rsb	r3, r6, r8	@ tmp367, D.38986, tmp398
	mov	ip, #0	@ tmp371,
	add	lr, r4, r3, asl #2	@, tmp369, pCtx, tmp367,
	add	r0, lr, #1280	@ tmp387, tmp369,
	add	r6, lr, #1264	@ tmp378, tmp369,
	add	r1, r0, #4	@ tmp370, tmp370,
	add	r6, r6, #9	@ tmp378, tmp378,
	add	r3, r0, #12	@ tmp387, tmp387,
	str	ip, [r1, #4]	@ tmp371, <variable>.bit_len
	str	ip, [r3, #4]	@ tmp371, <variable>.phy_address
	strb	ip, [r6, #10]	@ tmp371, <variable>.bit_offset
.L247:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
.L238:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L242:
	movw	r3, #21208	@ tmp252,
	movw	r0, #21212	@ tmp262,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	strb	r1, [sl, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	lr, [sl, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	b	.L245	@
.L252:
	add	lr, r4, #15680	@, pCtx,
	movw	r5, #22960	@ tmp157,
	add	r1, lr, #24	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r3, #19968	@ tmp161,
	ldr	r1, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	mov	r5, #0	@ BitUsed,
	bic	r2, r1, #178	@ tmp164, <variable>.PicIntegrality,
	str	r2, [r4, r3]	@ tmp164, <variable>.PicIntegrality
	bl	vfmw_dprint_nothing	@
	b	.L238	@
.L254:
	mov	r0, r5	@, tmp399
	bl	BsSkip	@
	b	.L244	@
.L255:
	mov	r0, r5	@, tmp399
	mov	r1, #3	@,
	bl	BsSkip	@
	ldrb	ip, [sl, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	cmp	ip, #2	@ <variable>.vop_coding_type,
	bne	.L245	@,
	mov	r0, r5	@, tmp399
	mov	r1, #3	@,
	bl	BsSkip	@
	b	.L245	@
.L256:
	movw	lr, #15796	@ tmp343,
	movw	r1, #15792	@ tmp362,
	ldr	r2, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r3, [r9, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r0, r2, asl #3	@ tmp345, <variable>.LenInByte,
	str	r0, [r9, #1288]	@ tmp345, <variable>.bit_len
	ldr	r3, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r9, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L247	@
.L239:
	mov	r1, sl	@, MbCnt.1489
	mov	r0, r5	@, tmp399
	bl	BsGet	@
	mov	r8, r6, asl #3	@ tmp398, D.38986,
	rsb	r9, r6, r8	@ tmp394, D.38986, tmp398
	add	sl, r4, r9, asl #2	@, tmp396, pCtx, tmp394,
	str	r0, [sl, #1300]	@, <variable>.mb_start_num
	b	.L241	@
.L253:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #0	@ BitUsed,
	b	.L238	@
	.fnend
	.size	Mp4_Syntax_Slice_NotSH, .-Mp4_Syntax_Slice_NotSH
	.align	2
	.global	MP4_Dec_Slice
	.type	MP4_Dec_Slice, %function
MP4_Dec_Slice:
	.fnstart
.LFB1959:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #15864	@ tmp144,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	r3, [r0, ip]	@ zero_extendqisi2	@ D.39170,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ pCtx, pCtx
	tst	r3, #1	@ D.39170,
	beq	.L265	@,
	tst	r3, #4	@ D.39170,
	bne	.L262	@,
	ldrh	r0, [r0, ip]	@ tmp161,
	ubfx	r0, r0, #7, #4	@ D.39191, tmp161,,
	cmp	r0, #0	@ D.39191,
	beq	.L262	@,
	cmp	r0, #7	@ D.39191,
	bfile	r3, r0, #3, #4	@ D.39170, D.39191,,
	strleb	r3, [r4, ip]	@ D.39170,
.L262:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_SH	@
	cmn	r0, #1	@,
	beq	.L264	@,
.L260:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L265:
	str	r1, [sp, #4]	@,
	str	r2, [sp, #0]	@,
	bl	Mp4_Check_Slice_NotSH	@
	ldr	r1, [sp, #4]	@,
	ldr	r2, [sp, #0]	@,
	cmp	r0, #0	@,
	beq	.L266	@,
	mov	r1, r2	@, len
	mov	r0, r4	@, pCtx
	bl	Mp4_Combine_SliceData	@
	cmp	r0, #0	@,
	bne	.L264	@,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L260	@
.L266:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_NotSH	@
	cmn	r0, #1	@,
	bne	.L260	@,
.L264:
	movw	r3, #22960	@ tmp166,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	b	.L260	@
	.fnend
	.size	MP4_Dec_Slice, .-MP4_Dec_Slice
	.align	2
	.global	Mp4_Syntax_Vos
	.type	Mp4_Syntax_Vos, %function
Mp4_Syntax_Vos:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	add	r5, sp, #4	@ tmp173,,
	mov	r4, r0	@ pCtx, pCtx
	movw	r6, #21292	@ tmp142,
	movw	r7, #19984	@ tmp146,
	mov	r0, r5	@, tmp173
	bl	BsInit	@
	mov	r3, #0	@ tmp143,
	mov	r1, #32	@,
	str	r3, [r4, r6]	@ tmp143, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	mov	r0, r5	@, tmp173
	bl	BsSkip	@
	mov	r0, r5	@, tmp173
	mov	r1, #8	@,
	bl	BsGet	@
	sub	r2, r0, #1	@ tmp147, D.37476,
	str	r0, [r4, r7]	@ D.37476, <variable>.MP4Vos.profile_and_level_indication
	cmp	r0, #8	@ D.37476,
	cmpne	r2, #2	@, tmp147,
	movhi	r2, #0	@, tmp154
	movls	r2, #1	@, tmp154
	bls	.L268	@,
	cmp	r0, #240	@ D.37476,
	beq	.L268	@,
	cmp	r0, #241	@ D.37476,
	beq	.L268	@,
	cmp	r0, #242	@ D.37476,
	beq	.L268	@,
	cmp	r0, #243	@ D.37476,
	beq	.L268	@,
	cmp	r0, #244	@ D.37476,
	beq	.L268	@,
	cmp	r0, #245	@ D.37476,
	beq	.L268	@,
	cmp	r0, #0	@ D.37476,
	beq	.L273	@,
	movw	lr, #:lower16:g_event_report	@ tmp168,
	movt	lr, #:upper16:g_event_report	@ tmp168,
	movw	r1, #22036	@ tmp165,
	strb	r2, [r4, r1]	@ tmp154, <variable>.MP4SyntaxState.vos_decode_right
	ldr	r3, [lr, #0]	@ g_event_report.586, g_event_report
	cmp	r3, #0	@ g_event_report.586,
	beq	.L270	@,
	movw	ip, #22960	@ tmp169,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.586
	b	.L270	@
.L268:
	movw	ip, #21292	@ tmp158,
	movw	r1, #22036	@ tmp155,
	str	r0, [r4, ip]	@ D.37476, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	mov	r0, #1	@ tmp156,
	strb	r0, [r4, r1]	@ tmp156, <variable>.MP4SyntaxState.vos_decode_right
.L270:
	mov	r0, r5	@, tmp173
	bl	BsPos	@
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L273:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r7]	@ <variable>.MP4Vos.profile_and_level_indication, <variable>.MP4Vos.profile_and_level_indication
	movw	r2, #22036	@ tmp159,
	mov	r0, #1	@ tmp160,
	strb	r0, [r4, r2]	@ tmp160, <variable>.MP4SyntaxState.vos_decode_right
	str	r3, [r4, r6]	@ <variable>.MP4Vos.profile_and_level_indication, <variable>.MP4Syntax.syn_vos.profile_and_level_indication
	b	.L270	@
	.fnend
	.size	Mp4_Syntax_Vos, .-Mp4_Syntax_Vos
	.align	2
	.global	Mp4_Syntax_Vol
	.type	Mp4_Syntax_Vol, %function
Mp4_Syntax_Vol:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #22960	@ tmp250,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	sl, [r0, r3]	@ <variable>.ChanID, <variable>.ChanID
	movw	lr, #:lower16:s_pstVfmwChan	@ tmp248,
	movt	lr, #:upper16:s_pstVfmwChan	@ tmp248,
	.pad #36
	sub	sp, sp, #36	@,,
	add	r6, r0, #19968	@ tmp609, pCtx,
	ldr	r5, [lr, sl, asl #2]	@ D.37161, s_pstVfmwChan
	mov	r4, r0	@ pCtx, pCtx
	add	r6, r6, #32	@ tmp609, tmp609,
	movw	sl, #20004	@ tmp259,
	cmp	r5, #0	@ D.37161,
	ldrne	r7, [r5, #1460]	@ MaxVerSize, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	moveq	r7, #8192	@ MaxVerSize,
	ldrne	r8, [r5, #1456]	@ MaxHorSize, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	add	r5, sp, #4	@ tmp610,,
	moveq	r8, r7	@ MaxHorSize, MaxVerSize
	mov	r0, r5	@, tmp610
	bl	BsInit	@
	movw	r0, #21269	@ tmp252,
	mov	ip, #0	@ tmp253,
	mov	r1, #604	@,
	strb	ip, [r4, r0]	@ tmp253, <variable>.MP4Syntax.vol_decode_over
	mov	r0, r6	@, tmp609
	bl	__memzero	@
	mov	r1, #32	@,
	mov	r0, r5	@, tmp610
	bl	BsSkip	@
	mov	r1, #1	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, sl]	@, <variable>.MP4Vol.random_accessible_vol
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r2, #20028	@ tmp262,
	mov	r1, #1	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vol.video_object_type_indication
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r3, #20000	@ tmp264,
	uxtb	r0, r0	@ D.37175,
	strb	r0, [r4, r3]	@ D.37175, <variable>.MP4Vol.is_object_layer_identifier
	cmp	r0, #0	@ D.37175,
	bne	.L366	@,
	movw	lr, #21285	@ tmp273,
	movw	r0, #20001	@ tmp272,
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vos.visual_object_verid, <variable>.MP4Syntax.syn_vos.visual_object_verid
	mov	r1, #4	@,
	strb	ip, [r4, r0]	@ <variable>.MP4Syntax.syn_vos.visual_object_verid, <variable>.MP4Vol.video_object_layer_verid
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r3, #20003	@ tmp277,
	uxtb	sl, r0	@ D.37186,
	strb	sl, [r4, r3]	@ D.37186, <variable>.MP4Vol.aspect_ratio_info
	cmp	sl, #15	@ D.37186,
	beq	.L367	@,
.L279:
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #20005	@ tmp284,
	uxtb	r0, r0	@ D.37195,
	strb	r0, [r4, ip]	@ D.37195, <variable>.MP4Vol.vol_control_parameters
	cmp	r0, #0	@ D.37195,
	movweq	ip, #20006	@ tmp349,
	moveq	r2, #1	@ tmp350,
	streqb	r2, [r4, ip]	@ tmp350, <variable>.MP4Vol.chroma_format
	bne	.L368	@,
.L283:
	mov	r0, r5	@, tmp610
	mov	r1, #2	@,
	bl	BsGet	@
	uxtb	sl, r0	@ D.37258,
	movw	r0, #20008	@ tmp353,
	cmp	sl, #0	@ D.37258,
	strb	sl, [r4, r0]	@ D.37258, <variable>.MP4Vol.video_object_layer_shape
	beq	.L288	@,
.L359:
	mov	r0, r5	@, tmp610
	movw	r5, #22039	@ tmp582,
	mov	r6, #0	@ tmp583,
	strb	r6, [r4, r5]	@ tmp583, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp586,
	movt	r0, #:upper16:g_event_report	@ tmp586,
	ldr	r3, [r0, #0]	@ g_event_report.1650, g_event_report
	cmp	r3, r6	@ g_event_report.1650,
	beq	.L282	@,
	movw	lr, #22960	@ tmp587,
	mov	r2, r6	@, tmp583
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1650
.L282:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L288:
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r9, r0, #0	@ D.37265,
	beq	.L350	@,
	mov	r1, #16	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r1, #20072	@ tmp371,
	cmp	r0, #0	@ D.37271,
	str	r0, [r4, r1]	@ D.37271, <variable>.MP4Vol.vop_time_increment_resolution
	movweq	r1, #20068	@ tmp377,
	moveq	r2, #1	@ tmp378,
	streq	r2, [r4, r1]	@ tmp378, <variable>.MP4Vol.vop_time_incr_bits
	beq	.L295	@,
	subs	r0, r0, #1	@ value.1618, D.37271,
	beq	.L291	@,
	mov	r3, r0	@ value, value.1618
.L292:
	add	lr, sl, #1	@ tmp373, n,
	movs	r3, r3, lsr #1	@ value, value,
	uxth	sl, lr	@ n, tmp373
	bne	.L292	@,
	cmp	sl, #0	@ n,
	beq	.L291	@,
.L293:
	add	ip, r3, #1	@ tmp375, n,
	movs	r0, r0, lsr #1	@ value.1618, value.1618,
	uxth	r3, ip	@ n, tmp375
	bne	.L293	@,
	sxth	r3, r3	@ iftmp.566, n
.L294:
	movw	r2, #20068	@ tmp376,
	str	r3, [r4, r2]	@ iftmp.566, <variable>.MP4Vol.vop_time_incr_bits
.L295:
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	subs	sl, r0, #0	@ D.37284,
	beq	.L347	@,
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #20009	@ tmp388,
	uxtb	sl, r0	@ D.37291,
	strb	sl, [r4, r3]	@ D.37291, <variable>.MP4Vol.fixed_vop_rate
	cmp	sl, #0	@ D.37291,
	bne	.L369	@,
.L297:
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	subs	sl, r0, #0	@ D.37299,
	beq	.L347	@,
	mov	r1, #13	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	sl, #20080	@ tmp403,
	mov	r1, #1	@,
	str	r0, [r4, sl]	@, <variable>.MP4Vol.video_object_layer_width
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	subs	r9, r0, #0	@ D.37307,
	beq	.L350	@,
	mov	r1, #13	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r9, #20084	@ tmp413,
	mov	r1, #1	@,
	str	r0, [r4, r9]	@, <variable>.MP4Vol.video_object_layer_height
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	subs	fp, r0, #0	@ D.37315,
	beq	.L370	@,
	ldr	r3, [r4, sl]	@ D.37323, <variable>.MP4Vol.video_object_layer_width
	cmp	r3, #31	@ D.37323,
	bls	.L301	@,
	ldr	r2, [r4, r9]	@ D.37325, <variable>.MP4Vol.video_object_layer_height
	cmp	r2, #31	@ D.37325,
	bls	.L301	@,
	mul	r3, r3, r2	@ tmp424, D.37323, D.37325
	mul	r7, r8, r7	@ tmp425, MaxHorSize, MaxVerSize
	cmp	r3, r7	@ tmp424, tmp425
	bls	.L302	@,
.L301:
	mov	r0, r5	@, tmp610
	movw	r5, #22039	@ tmp426,
	mov	r6, #0	@ tmp427,
	strb	r6, [r4, r5]	@ tmp427, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp430,
	movt	r2, #:upper16:g_event_report	@ tmp430,
	ldr	r3, [r2, #0]	@ g_event_report.1652, g_event_report
	cmp	r3, r6	@ g_event_report.1652,
	mov	r5, r0	@ BitUsed,
	beq	.L282	@,
	movw	ip, #22960	@ tmp431,
	mov	r2, r6	@, tmp427
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1652
	b	.L282	@
.L350:
	bl	vfmw_dprint_nothing	@
	movw	r3, #22039	@ tmp405,
	strb	r9, [r4, r3]	@ D.37307, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp610
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp409,
	movt	r2, #:upper16:g_event_report	@ tmp409,
	ldr	r3, [r2, #0]	@ g_event_report.1624, g_event_report
	cmp	r3, #0	@ g_event_report.1624,
	mov	r5, r0	@ BitUsed,
	beq	.L282	@,
	movw	lr, #22960	@ tmp410,
	mov	r2, r9	@, D.37307
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1624
	b	.L282	@
.L368:
	mov	r0, r5	@, tmp610
	mov	r1, #2	@,
	bl	BsGet	@
	movw	r3, #20006	@ tmp287,
	uxtb	sl, r0	@ D.37200,
	strb	sl, [r4, r3]	@ D.37200, <variable>.MP4Vol.chroma_format
	cmp	sl, #1	@ D.37200,
	beq	.L281	@,
	movw	lr, #22039	@ tmp289,
	mov	r0, r5	@, tmp610
	mov	r5, #0	@ tmp290,
	strb	r5, [r4, lr]	@ tmp290, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L282	@
.L366:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r2, #20001	@ tmp267,
	mov	r1, #3	@,
	strb	r0, [r4, r2]	@, <variable>.MP4Vol.video_object_layer_verid
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r1, #20002	@ tmp270,
	strb	r0, [r4, r1]	@, <variable>.MP4Vol.video_object_layer_priority
	mov	r0, r5	@, tmp610
	mov	r1, #4	@,
	bl	BsGet	@
	movw	r3, #20003	@ tmp277,
	uxtb	sl, r0	@ D.37186,
	strb	sl, [r4, r3]	@ D.37186, <variable>.MP4Vol.aspect_ratio_info
	cmp	sl, #15	@ D.37186,
	bne	.L279	@,
.L367:
	mov	r1, #8	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r2, #20032	@ tmp280,
	mov	r1, #8	@,
	str	r0, [r4, r2]	@, <variable>.MP4Vol.par_width
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r1, #20036	@ tmp282,
	str	r0, [r4, r1]	@, <variable>.MP4Vol.par_height
	b	.L279	@
.L281:
	mov	r1, sl	@, D.37200
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r2, #20007	@ tmp294,
	mov	r1, sl	@, D.37200
	strb	r0, [r4, r2]	@, <variable>.MP4Vol.low_delay
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r1, #20040	@ tmp297,
	cmp	r0, #0	@ D.37208,
	str	r0, [r4, r1]	@ D.37208, <variable>.MP4Vol.vbv_parameters
	beq	.L283	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r9, #20044	@ tmp299,
	mov	r1, sl	@, D.37200
	str	r0, [r4, r9]	@, <variable>.MP4Vol.first_half_bit_rate
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	subs	r9, r0, #0	@ D.37215,
	beq	.L350	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	ip, #20048	@ tmp309,
	mov	r1, sl	@, D.37200
	str	r0, [r4, ip]	@, <variable>.MP4Vol.latter_half_bit_rate
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	subs	r9, r0, #0	@ D.37224,
	beq	.L350	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r3, #20052	@ tmp319,
	mov	r1, sl	@, D.37200
	str	r0, [r4, r3]	@, <variable>.MP4Vol.first_half_vbv_buffer_size
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	subs	r9, r0, #0	@ D.37232,
	beq	.L350	@,
	mov	r1, #3	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r9, #20056	@ tmp329,
	mov	r1, #11	@,
	str	r0, [r4, r9]	@, <variable>.MP4Vol.latter_half_vbv_buffer_size
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r2, #20060	@ tmp331,
	mov	r1, sl	@, D.37200
	str	r0, [r4, r2]	@, <variable>.MP4Vol.first_half_vbv_occupancy
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	subs	r9, r0, #0	@ D.37242,
	beq	.L350	@,
	mov	r1, #15	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	mov	r1, sl	@, D.37200
	movw	sl, #20064	@ tmp341,
	str	r0, [r4, sl]	@, <variable>.MP4Vol.latter_half_vbv_occupancy
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	subs	sl, r0, #0	@ D.37250,
	bne	.L283	@,
.L347:
	bl	vfmw_dprint_nothing	@
	movw	ip, #22039	@ tmp395,
	mov	r0, r5	@, tmp610
	strb	sl, [r4, ip]	@ D.37299, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp399,
	movt	r0, #:upper16:g_event_report	@ tmp399,
	ldr	r3, [r0, #0]	@ g_event_report.1622, g_event_report
	cmp	r3, #0	@ g_event_report.1622,
	beq	.L282	@,
	movw	r1, #22960	@ tmp400,
	mov	r2, sl	@, D.37299
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1622
	b	.L282	@
.L291:
	mov	r3, #1	@ iftmp.566,
	b	.L294	@
.L369:
	movw	lr, #20068	@ tmp391,
	mov	r0, r5	@, tmp610
	ldr	r1, [r4, lr]	@, <variable>.MP4Vol.vop_time_incr_bits
	bl	BsGet	@
	movw	r1, #20076	@ tmp393,
	str	r0, [r4, r1]	@, <variable>.MP4Vol.fixed_vop_time_increment
	b	.L297	@
.L370:
	bl	vfmw_dprint_nothing	@
	movw	r1, #22039	@ tmp415,
	mov	r0, r5	@, tmp610
	strb	fp, [r4, r1]	@ tmp12, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp419,
	movt	r0, #:upper16:g_event_report	@ tmp419,
	ldr	r3, [r0, #0]	@ g_event_report.1626, g_event_report
	cmp	r3, #0	@ g_event_report.1626,
	beq	.L282	@,
	movw	lr, #22960	@ tmp420,
	mov	r2, fp	@, D.37315
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1626
	b	.L282	@
.L302:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r8, #20010	@ tmp434,
	mov	r1, #1	@,
	movw	r7, #20011	@ tmp437,
	strb	r0, [r4, r8]	@, <variable>.MP4Vol.interlaced
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	uxtb	r2, r0	@ D.37336,
	strb	r2, [r4, r7]	@ D.37336, <variable>.MP4Vol.obmc_disable
	cmp	r2, #0	@ D.37336,
	bne	.L303	@,
	movw	r0, #:lower16:g_event_report	@ tmp442,
	movt	r0, #:upper16:g_event_report	@ tmp442,
	movw	r1, #22039	@ tmp439,
	strb	r2, [r4, r1]	@ D.37336, <variable>.MP4SyntaxState.vol_decode_right
	ldr	r3, [r0, #0]	@ g_event_report.1628, g_event_report
	cmp	r3, #0	@ g_event_report.1628,
	beq	.L303	@,
	movw	lr, #22960	@ tmp443,
	mov	r1, #102	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1628
.L303:
	movw	r3, #20001	@ tmp444,
	mov	r0, r5	@, tmp610
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	movw	r8, #20012	@ tmp447,
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	movne	r1, #2	@,,
	bl	BsGet	@
	uxtb	r7, r0	@ D.37348,
	strb	r7, [r4, r8]	@ D.37348, <variable>.MP4Vol.sprite_enable
	cmp	r7, #0	@ D.37348,
	bne	.L371	@,
.L306:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r2, #20013	@ tmp490,
	uxtb	r1, r0	@ D.37385,
	strb	r1, [r4, r2]	@ D.37385, <variable>.MP4Vol.not_8_bit
	cmp	r1, #0	@ D.37385,
	bne	.L362	@,
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #20014	@ tmp499,
	uxtb	r7, r0	@ D.37393,
	strb	r7, [r4, ip]	@ D.37393, <variable>.MP4Vol.quant_type
	cmp	r7, #0	@ D.37393,
	bne	.L372	@,
.L316:
	movw	r3, #20001	@ tmp524,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	beq	.L322	@,
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r7, #20017	@ tmp527,
	strb	r0, [r4, r7]	@, <variable>.MP4Vol.quarter_sample
.L323:
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #20018	@ tmp533,
	uxtb	r7, r0	@ D.37422,
	strb	r7, [r4, ip]	@ D.37422, <variable>.MP4Vol.complexity_estimation_disable
	cmp	r7, #0	@ D.37422,
	beq	.L357	@,
	mov	r1, #1	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r3, #20019	@ tmp542,
	mov	r1, #1	@,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.resync_marker_disable
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r2, #20020	@ tmp545,
	uxtb	r7, r0	@ D.37432,
	strb	r7, [r4, r2]	@ D.37432, <variable>.MP4Vol.data_partitioned
	cmp	r7, #0	@ D.37432,
	bne	.L365	@,
	movw	r0, #20001	@ tmp553,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vol.video_object_layer_verid, <variable>.MP4Vol.video_object_layer_verid
	cmp	r1, #1	@ <variable>.MP4Vol.video_object_layer_verid,
	beq	.L326	@,
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #20021	@ tmp556,
	uxtb	r8, r0	@ D.37442,
	strb	r8, [r4, ip]	@ D.37442, <variable>.MP4Vol.newpred_enable
	cmp	r8, #0	@ D.37442,
	bne	.L357	@,
	mov	r1, #1	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	ip, #20022	@ tmp565,
	uxtb	r1, r0	@ D.37450,
	strb	r1, [r4, ip]	@ D.37450, <variable>.MP4Vol.reduced_resolution_vop_enable
	cmp	r1, #0	@ D.37450,
	bne	.L373	@,
.L328:
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #20023	@ tmp580,
	uxtb	ip, r0	@ D.37459,
	strb	ip, [r4, r2]	@ D.37459, <variable>.MP4Vol.scalability
	cmp	ip, #0	@ D.37459,
	beq	.L329	@,
.L365:
	bl	vfmw_dprint_nothing	@
	b	.L359	@
.L371:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp449,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp449,
	ldr	sl, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	sl, sl, #8	@ tmp450, g_VdmCharacter,
	beq	.L374	@,
	sub	lr, r7, #1	@ tmp458, D.37348,
	uxtb	r0, lr	@ tmp459, tmp458
	cmp	r0, #1	@ tmp459,
	bhi	.L362	@,
	cmp	r7, #2	@ D.37348,
	bne	.L362	@,
	mov	r1, #6	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r3, #20024	@ tmp467,
	mov	r1, r7	@, D.37348
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.sprite_warping_points
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	ip, #20025	@ tmp470,
	mov	r1, #1	@,
	strb	r0, [r4, ip]	@, <variable>.MP4Vol.sprite_warping_accuracy
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Vol.sprite_enable, <variable>.MP4Vol.sprite_enable
	movw	r3, #20026	@ tmp473,
	cmp	r2, #2	@ <variable>.MP4Vol.sprite_enable,
	strb	r0, [r4, r3]	@, <variable>.MP4Vol.sprite_brightness_change
	beq	.L306	@,
.L362:
	mov	r0, r5	@, tmp610
	movw	r5, #22039	@ tmp492,
	mov	r6, #0	@ tmp493,
	strb	r6, [r4, r5]	@ tmp493, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp496,
	movt	r0, #:upper16:g_event_report	@ tmp496,
	ldr	r3, [r0, #0]	@ g_event_report.1638, g_event_report
	cmp	r3, r6	@ g_event_report.1638,
	beq	.L315	@,
	movw	lr, #22960	@ tmp497,
	mov	r2, r6	@, tmp493
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1638
.L315:
	bl	vfmw_dprint_nothing	@
	b	.L282	@
.L374:
	mov	r0, r5	@, tmp610
	movw	r5, #22039	@ tmp452,
	strb	sl, [r4, r5]	@ tmp450, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	movw	ip, #:lower16:g_event_report	@ tmp456,
	movt	ip, #:upper16:g_event_report	@ tmp456,
	ldr	r3, [ip, #0]	@ g_event_report.1630, g_event_report
	cmp	r3, #0	@ g_event_report.1630,
	mov	r5, r0	@ BitUsed,
	beq	.L315	@,
	movw	r1, #22960	@ tmp457,
	mov	r2, sl	@, tmp450
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1630
	bl	vfmw_dprint_nothing	@
	b	.L282	@
.L357:
	bl	vfmw_dprint_nothing	@
	movw	r3, #22039	@ tmp558,
	strb	r7, [r4, r3]	@ D.37432, <variable>.MP4SyntaxState.vol_decode_right
	mov	r0, r5	@, tmp610
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp562,
	movt	r2, #:upper16:g_event_report	@ tmp562,
	ldr	r3, [r2, #0]	@ g_event_report.1646, g_event_report
	cmp	r3, #0	@ g_event_report.1646,
	mov	r5, r0	@ BitUsed,
	beq	.L282	@,
	movw	lr, #22960	@ tmp563,
	mov	r2, r7	@, D.37432
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1646
	b	.L282	@
.L322:
	movw	lr, #20017	@ tmp529,
	mov	r0, #0	@ tmp530,
	strb	r0, [r4, lr]	@ tmp530, <variable>.MP4Vol.quarter_sample
	b	.L323	@
.L372:
	mov	r0, r5	@, tmp610
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #20015	@ tmp502,
	uxtb	r3, r0	@ D.37398,
	strb	r3, [r4, r2]	@ D.37398, <variable>.MP4Vol.load_intra_quant_mat
	cmp	r3, #0	@ D.37398,
	movweq	r2, #:lower16:.LANCHOR0	@ tmp607,
	movteq	r2, #:upper16:.LANCHOR0	@ tmp607,
	bne	.L375	@,
.L319:
	add	r1, r3, #4	@ tmp612, ivtmp.1598,
	add	ip, r4, r3	@ tmp507, pCtx, ivtmp.1598
	ldr	lr, [r2, r3]	@ tmp511, default_intra_matrix
	add	r7, r4, r1	@ tmp614, pCtx, tmp612
	add	r3, r1, #4	@ ivtmp.1598, tmp612,
	ldr	r0, [r2, r1]	@ tmp617, default_intra_matrix
	add	ip, ip, #19968	@ tmp509, tmp507,
	add	r1, r7, #19968	@ tmp615, tmp614,
	cmp	r3, #256	@ ivtmp.1598,
	str	lr, [ip, #120]	@ tmp511, <variable>.MP4Vol.intra_quant_mat
	str	r0, [r1, #120]	@ tmp617, <variable>.MP4Vol.intra_quant_mat
	bne	.L319	@,
.L318:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp610
	bl	BsGet	@
	movw	r2, #20016	@ tmp513,
	uxtb	r3, r0	@ D.37408,
	strb	r3, [r4, r2]	@ D.37408, <variable>.MP4Vol.load_nonintra_quant_mat
	cmp	r3, #0	@ D.37408,
	ldreq	r1, .L377	@ tmp608,
	bne	.L376	@,
.L321:
	add	r2, r3, #4	@ tmp611, ivtmp.1588,
	add	ip, r4, r3	@ tmp518, pCtx, ivtmp.1588
	ldr	lr, [r1, r3]	@ tmp523, default_inter_matrix
	add	r7, r4, r2	@ tmp619, pCtx, tmp611
	add	r3, r2, #4	@ ivtmp.1588, tmp611,
	ldr	r0, [r1, r2]	@ tmp622, default_inter_matrix
	add	ip, ip, #20224	@ tmp520, tmp518,
	add	r2, r7, #20224	@ tmp620, tmp619,
	cmp	r3, #256	@ ivtmp.1588,
	str	lr, [ip, #120]	@ tmp523, <variable>.MP4Vol.nonintra_quant_mat
	str	r0, [r2, #120]	@ tmp622, <variable>.MP4Vol.nonintra_quant_mat
	bne	.L321	@,
	b	.L316	@
.L375:
	add	r3, r4, #19968	@, pCtx,
	mov	r0, r5	@, tmp610
	add	r1, r3, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L318	@
.L373:
	bl	vfmw_dprint_nothing	@
	movw	r2, #22039	@ tmp567,
	mov	r0, r5	@, tmp610
	strb	r8, [r4, r2]	@ D.37442, <variable>.MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp571,
	movt	r0, #:upper16:g_event_report	@ tmp571,
	ldr	r3, [r0, #0]	@ g_event_report.1648, g_event_report
	cmp	r3, #0	@ g_event_report.1648,
	beq	.L282	@,
	movw	lr, #22960	@ tmp572,
	mov	r2, r8	@, D.37442
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.1648
	b	.L282	@
.L326:
	movw	r1, #20022	@ tmp576,
	sub	r3, r1, #1	@ tmp573, tmp573,
	strb	r7, [r4, r1]	@ D.37432, <variable>.MP4Vol.reduced_resolution_vop_enable
	strb	r7, [r4, r3]	@ D.37432, <variable>.MP4Vol.newpred_enable
	b	.L328	@
.L329:
	movw	lr, #22040	@ tmp594,
	sub	r2, lr, #1	@ tmp588, tmp588,
	movw	ip, #21269	@ tmp591,
	add	r0, r4, #20480	@, pCtx,
	mov	r3, #1	@ tmp589,
	mov	r1, r6	@, tmp609
	strb	r3, [r4, r2]	@ tmp589, <variable>.MP4SyntaxState.vol_decode_right
	add	r0, r0, #124	@,,
	strb	r3, [r4, lr]	@ tmp589, <variable>.MP4SyntaxState.last_vol_decode_right
	mov	r2, #604	@,
	strb	r3, [r4, ip]	@ tmp589, <variable>.MP4Syntax.vol_decode_over
	bl	memcpy	@
	mov	r0, r5	@, tmp610
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L282	@
.L376:
	add	r3, r4, #20224	@, pCtx,
	mov	r0, r5	@, tmp610
	add	r1, r3, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L316	@
.L378:
	.align	2
.L377:
	.word	.LANCHOR0+256
	.fnend
	.size	Mp4_Syntax_Vol, .-Mp4_Syntax_Vol
	.align	2
	.global	Mp4_Syntax_Vop
	.type	Mp4_Syntax_Vop, %function
Mp4_Syntax_Vop:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #15612	@ tmp181,
	ldr	r3, [r0, r5]	@ <variable>.Mp4DecParam.SlcNum, <variable>.Mp4DecParam.SlcNum
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ ptr, ptr
	cmp	r3, #0	@ <variable>.Mp4DecParam.SlcNum,
	mov	r6, r2	@ len, len
	bne	.L431	@,
	movw	ip, #21269	@ tmp185,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4Syntax.vol_decode_over
	cmp	r1, #0	@ <variable>.MP4Syntax.vol_decode_over,
	movweq	r2, #22041	@ tmp187,
	moveq	r5, #32	@ BitUsed,
	streqb	r1, [r4, r2]	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4SyntaxState.vop_decode_right
	bne	.L432	@,
.L382:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L431:
	bl	vfmw_dprint_nothing	@
	movw	ip, #21269	@ tmp185,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4Syntax.vol_decode_over
	mov	r0, #0	@ tmp184,
	str	r0, [r4, r5]	@ tmp184, <variable>.Mp4DecParam.SlcNum
	cmp	r1, #0	@ <variable>.MP4Syntax.vol_decode_over,
	movweq	r2, #22041	@ tmp187,
	moveq	r5, #32	@ BitUsed,
	streqb	r1, [r4, r2]	@ <variable>.MP4Syntax.vol_decode_over, <variable>.MP4SyntaxState.vop_decode_right
	beq	.L382	@,
.L432:
	add	r5, sp, #12	@ tmp423,,
	add	r8, r4, #20992	@ tmp424, pCtx,
	add	r8, r8, #216	@ tmp424, tmp424,
	mov	r1, r7	@, ptr
	mov	r2, r6	@, len
	mov	r0, r5	@, tmp423
	bl	BsInit	@
	movw	sl, #22041	@ tmp193,
	mov	r0, r8	@, tmp424
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r2, #0	@ tmp194,
	mov	r1, #32	@,
	strb	r2, [r4, sl]	@ tmp194, <variable>.MP4SyntaxState.vop_decode_right
	mov	r0, r5	@, tmp423
	movw	r7, #21208	@ tmp198,
	bl	BsSkip	@
	mov	r1, #2	@,
	mov	r0, r5	@, tmp423
	bl	BsGet	@
	strb	r0, [r4, r7]	@, <variable>.MP4Vop.vop_coding_type
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, r7]	@ zero_extendqisi2	@ D.36971, <variable>.MP4Vop.vop_coding_type
	cmp	r2, #3	@ D.36971,
	beq	.L433	@,
.L383:
	movw	r3, #21275	@ tmp211,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.36983, <variable>.MP4Syntax.coding_mode
	cmp	r3, #1	@ D.36983,
	beq	.L434	@,
	cmp	r3, #2	@ D.36983,
	beq	.L387	@,
.L386:
	movw	r1, #22600	@ tmp213,
	ldr	r0, [r4, r1]	@ <variable>.IPVopErr, <variable>.IPVopErr
	cmp	r0, #1	@ <variable>.IPVopErr,
	beq	.L435	@,
.L388:
	mov	r6, r6, asl #3	@ D.36998, len,
	mov	r7, #0	@ i,
	b	.L391	@
.L437:
	bl	BsPos	@
	mov	r1, #1	@,
	add	r7, r7, r1	@ i, i,
	cmp	r0, r6	@, D.36998
	mov	r0, r5	@, tmp423
	bgt	.L425	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	mov	r0, r5	@, tmp423
	beq	.L389	@,
	bl	BsPos	@
	add	r7, r7, #1	@ i, i,
	cmp	r0, r6	@, D.36998
	bgt	.L425	@,
	cmp	r7, #6400	@ i,
	beq	.L436	@,
.L391:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp423
	bl	BsGet	@
	cmp	r0, #0	@,
	mov	r0, r5	@, tmp423
	bne	.L437	@,
.L389:
	mov	r0, r5	@, tmp423
	mov	r1, #1	@,
	bl	BsGet	@
	subs	sl, r0, #0	@ D.37005,
	beq	.L438	@,
	movw	r3, #21376	@ tmp227,
	ldr	r1, [r4, r3]	@ D.37011, <variable>.MP4Syntax.syn_vol.vop_time_incr_bits
	cmp	r1, #0	@ D.37011,
	bne	.L439	@,
.L395:
	movw	r0, #21980	@ tmp229,
	str	r7, [r4, r0]	@ i, <variable>.MP4Syntax.time_incr
	movw	r7, #21984	@ tmp230,
	str	r1, [r4, r7]	@ time_increment, <variable>.MP4Syntax.time_increment
	mov	r0, r5	@, tmp423
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r7, r0, #0	@ D.37016,
	bne	.L396	@,
	bl	vfmw_dprint_nothing	@
	movw	ip, #22041	@ tmp232,
	mov	r0, r5	@, tmp423
	strb	r7, [r4, ip]	@ D.37016, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp236,
	movt	r1, #:upper16:g_event_report	@ tmp236,
	ldr	r3, [r1, #0]	@ g_event_report.1701, g_event_report
	cmp	r3, #0	@ g_event_report.1701,
	mov	r5, r0	@ BitUsed,
	beq	.L382	@,
	movw	lr, #22960	@ tmp237,
	mov	r2, r7	@, D.37016
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1701
	b	.L382	@
.L433:
	movw	lr, #:lower16:g_VdmCharacter	@ tmp201,
	movt	lr, #:upper16:g_VdmCharacter	@ tmp201,
	ldr	r7, [lr, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	r7, r7, #8	@ tmp202, g_VdmCharacter,
	streqb	r7, [r4, sl]	@ tmp202, <variable>.MP4SyntaxState.vop_decode_right
	moveq	r0, r5	@, tmp423
	bne	.L383	@,
.L430:
	bl	BsPos	@
	movw	r2, #:lower16:g_event_report	@ tmp346,
	movt	r2, #:upper16:g_event_report	@ tmp346,
	ldr	r3, [r2, #0]	@ g_event_report.1718, g_event_report
	cmp	r3, #0	@ g_event_report.1718,
	mov	r5, r0	@ BitUsed,
	beq	.L427	@,
	movw	lr, #22960	@ tmp347,
	mov	r2, r7	@, D.37104
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1718
.L427:
	bl	vfmw_dprint_nothing	@
	b	.L382	@
.L434:
	cmp	r2, #0	@ D.36971,
	beq	.L386	@,
.L387:
	mov	r0, r5	@, tmp423
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L382	@
.L436:
	movw	r3, #22041	@ tmp419,
	mov	r0, r5	@, tmp423
	mov	r5, #0	@ tmp420,
	strb	r5, [r4, r3]	@ tmp420, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	bl	vfmw_dprint_nothing	@
	b	.L382	@
.L425:
	mov	r0, r5	@, tmp423
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	bl	vfmw_dprint_nothing	@
	b	.L382	@
.L435:
	cmp	r2, #0	@ D.36971,
	beq	.L388	@,
	b	.L387	@
.L396:
	mov	r0, r5	@, tmp423
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r3, #21209	@ tmp240,
	uxtb	r2, r0	@ D.37023,
	strb	r2, [r4, r3]	@ D.37023, <variable>.MP4Vop.vop_coded
	cmp	r2, #0	@ D.37023,
	beq	.L440	@,
	movw	sl, #21208	@ tmp256,
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ temp.1703, <variable>.MP4Vop.vop_coding_type
	cmp	r3, #1	@ temp.1703,
	beq	.L398	@,
	cmp	r3, #3	@ temp.1703,
	beq	.L441	@,
.L399:
	movw	r2, #21210	@ tmp262,
	mov	lr, #0	@ tmp263,
	strb	lr, [r4, r2]	@ tmp263, <variable>.MP4Vop.vop_rounding_type
.L400:
	movw	r7, #21316	@ tmp268,
	movw	sl, #21211	@ tmp265,
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.video_object_layer_shape, <variable>.MP4Syntax.syn_vol.video_object_layer_shape
	mov	r1, #0	@ tmp266,
	strb	r1, [r4, sl]	@ tmp266, <variable>.MP4Vop.vop_reduced_resolution
	cmp	r3, #2	@ <variable>.MP4Syntax.syn_vol.video_object_layer_shape,
	beq	.L401	@,
	mov	r0, r5	@, tmp423
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r2, #20010	@ tmp273,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vol.interlaced, <variable>.MP4Vol.interlaced
	movw	ip, #21212	@ tmp271,
	cmp	r3, #0	@ <variable>.MP4Vol.interlaced,
	strb	r0, [r4, ip]	@, <variable>.MP4Vop.intra_dc_vlc_thr
	bne	.L442	@,
	movw	r1, #21214	@ tmp284,
	movw	lr, #21213	@ tmp281,
	mov	r0, #2	@ tmp282,
	strb	r3, [r4, r1]	@ <variable>.MP4Vol.interlaced, <variable>.MP4Vop.alternate_vertical_scan_flag
	strb	r0, [r4, lr]	@ tmp282, <variable>.MP4Vop.top_field_first
.L403:
	movw	r3, #21320	@ tmp287,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	sub	ip, r2, #1	@ tmp290, <variable>.MP4Syntax.syn_vol.sprite_enable,
	uxtb	r7, ip	@ tmp291, tmp290
	cmp	r7, #1	@ tmp291,
	bls	.L443	@,
.L404:
	mov	r0, r5	@, tmp423
	mov	r1, #5	@,
	bl	BsGet	@
	movw	r7, #21215	@ tmp321,
	uxtb	sl, r0	@ D.37087,
	strb	sl, [r4, r7]	@ D.37087, <variable>.MP4Vop.vop_quant
	cmp	sl, #0	@ D.37087,
	moveq	r2, #1	@ tmp324,
	streqb	r2, [r4, r7]	@ tmp324, <variable>.MP4Vop.vop_quant
	movw	r7, #21208	@ tmp326,
	ldrb	r2, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	r2, #0	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L444	@,
.L401:
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp364,,,,
	add	r9, r4, #21760	@ tmp359, pCtx,
	add	ip, r9, #152	@ tmp359, tmp359,
	movw	lr, #15612	@ tmp355,
	mov	r7, #19968	@ tmp351,
	ldr	fp, [r4, lr]	@ <variable>.Mp4DecParam.SlcNum, <variable>.Mp4DecParam.SlcNum
	mov	sl, ip	@ tmp363, tmp359
	ldr	r9, [r4, r7]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	stmia	sl!, {r0, r1, r2, r3}	@ tmp363,,,,
	orr	ip, r9, #2	@ tmp354, <variable>.PicIntegrality,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp434,,,,
	str	ip, [r4, r7]	@ tmp354, <variable>.PicIntegrality
	add	ip, fp, #1	@ tmp358, <variable>.Mp4DecParam.SlcNum,
	str	ip, [r4, lr]	@ tmp358, <variable>.Mp4DecParam.SlcNum
	movw	ip, #22041	@ tmp348,
	mov	lr, #1	@ tmp349,
	strb	lr, [r4, ip]	@ tmp349, <variable>.MP4SyntaxState.vop_decode_right
	mov	lr, sl	@ tmp435, tmp363
	stmia	lr!, {r0, r1, r2, r3}	@ tmp435,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp436,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp435,,,,
	ldmia	r8, {r0, r1, r2}	@ tmp436,,,
	stmia	lr, {r0, r1, r2}	@ tmp437,,,
	mov	r0, r5	@, tmp423
	bl	BsPos	@
	movw	r2, #15709	@ tmp386,
	ldrb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	movw	r1, #22056	@ tmp373,
	mov	r5, r0	@ BitUsed,
	mov	r0, r0, asr #31	@ tmp368, BitUsed,
	cmp	r5, #0	@ BitUsed,
	rsb	r6, r5, r6	@ tmp366, BitUsed, D.36998
	mov	r3, r0, lsr #29	@ tmp369, tmp368,
	add	r0, r5, #7	@ tmp381, BitUsed,
	add	ip, r5, r3	@ tmp370, BitUsed, tmp369
	movge	r0, r5	@ BitUsed, BitUsed
	and	lr, ip, #7	@ tmp371, tmp370,
	ldr	ip, [r4, r1]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	movw	r1, #22048	@ tmp383,
	cmp	r2, #0	@ <variable>.IsLastSeg,
	ldr	r1, [r4, r1]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	rsb	r3, r3, lr	@ tmp372, tmp369, tmp371
	add	lr, r3, ip	@ tmp377, tmp372, <variable>.BitsObj.offset
	str	r6, [r4, #1284]	@ tmp366, <variable>.bit_len
	add	r3, r1, r0, asr #3	@, tmp385, <variable>.BitsObj.phy_addr, BitUsed,
	strb	lr, [r4, #1282]	@ tmp377, <variable>.bit_offset
	str	r3, [r4, #1292]	@ tmp385, <variable>.phy_address
	bne	.L416	@,
	movw	r0, #15789	@ tmp388,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L445	@,
.L416:
	mov	r0, #0	@ tmp397,
	str	r0, [r4, #1296]	@ tmp397, <variable>.phy_address
	str	r0, [r4, #1288]	@ tmp397, <variable>.bit_len
	strb	r0, [r4, #1283]	@ tmp397, <variable>.bit_offset
.L417:
	movw	ip, #19964	@ tmp416,
	movw	r1, #21208	@ tmp401,
	ldr	lr, [r4, ip]	@ <variable>.StreamIDNum, <variable>.StreamIDNum
	movw	r0, #21217	@ tmp404,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	movw	r2, #21216	@ tmp407,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	movw	r3, #21215	@ tmp410,
	movw	r0, #21212	@ tmp413,
	cmp	lr, #0	@ <variable>.StreamIDNum,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_quant, <variable>.MP4Vop.vop_quant
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	ip, [r4, #1280]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	strb	r1, [r4, #1278]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	strb	lr, [r4, #1277]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	strb	r2, [r4, #1281]	@ <variable>.MP4Vop.vop_quant, <variable>.vop_quant
	strb	r3, [r4, #1279]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bne	.L446	@,
.L418:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L382	@
.L438:
	bl	vfmw_dprint_nothing	@
	movw	r2, #22041	@ tmp220,
	mov	r0, r5	@, tmp423
	strb	sl, [r4, r2]	@ D.37005, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	ip, #:lower16:g_event_report	@ tmp224,
	movt	ip, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [ip, #0]	@ g_event_report.1699, g_event_report
	cmp	r3, #0	@ g_event_report.1699,
	mov	r5, r0	@ BitUsed,
	beq	.L382	@,
	movw	lr, #22960	@ tmp225,
	mov	r2, sl	@, D.37005
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1699
	b	.L382	@
.L439:
	mov	r0, r5	@, tmp423
	bl	BsGet	@
	mov	r1, r0	@ time_increment,
	b	.L395	@
.L446:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L418	@
.L440:
	mov	r3, #19968	@ tmp251,
	mov	r0, r5	@, tmp423
	ldr	r1, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	movw	r2, #21912	@ tmp248,
	movw	ip, #21208	@ tmp242,
	mov	lr, #4	@ tmp243,
	orr	r5, r1, #128	@ tmp254, <variable>.PicIntegrality,
	movw	r1, #22041	@ tmp245,
	str	r5, [r4, r3]	@ tmp254, <variable>.PicIntegrality
	mov	r5, #1	@ tmp246,
	strb	lr, [r4, r2]	@ tmp243, <variable>.MP4Syntax.syn_vop.vop_coding_type
	strb	r5, [r4, r1]	@ tmp246, <variable>.MP4SyntaxState.vop_decode_right
	strb	lr, [r4, ip]	@ tmp243, <variable>.MP4Vop.vop_coding_type
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L382	@
.L441:
	movw	r0, #21320	@ tmp257,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_enable, <variable>.MP4Syntax.syn_vol.sprite_enable
	cmp	r7, #2	@ <variable>.MP4Syntax.syn_vol.sprite_enable,
	bne	.L399	@,
.L398:
	mov	r0, r5	@, tmp423
	mov	r1, #1	@,
	bl	BsGet	@
	movw	ip, #21210	@ tmp260,
	strb	r0, [r4, ip]	@, <variable>.MP4Vop.vop_rounding_type
	b	.L400	@
.L442:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp423
	bl	BsGet	@
	movw	sl, #21213	@ tmp276,
	mov	r1, #1	@,
	strb	r0, [r4, sl]	@, <variable>.MP4Vop.top_field_first
	mov	r0, r5	@, tmp423
	bl	BsGet	@
	movw	r3, #21214	@ tmp279,
	strb	r0, [r4, r3]	@, <variable>.MP4Vop.alternate_vertical_scan_flag
	b	.L403	@
.L444:
	mov	r0, r5	@, tmp423
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r3, #21216	@ tmp329,
	uxtb	sl, r0	@ D.37094,
	strb	sl, [r4, r3]	@ D.37094, <variable>.MP4Vop.vop_fcode_forward
	cmp	sl, #0	@ D.37094,
	beq	.L447	@,
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L401	@,
	mov	r0, r5	@, tmp423
	mov	r1, #3	@,
	bl	BsGet	@
	movw	r3, #21217	@ tmp340,
	uxtb	r7, r0	@ D.37104,
	strb	r7, [r4, r3]	@ D.37104, <variable>.MP4Vop.vop_fcode_backward
	cmp	r7, #0	@ D.37104,
	bne	.L401	@,
	add	ip, r3, #824	@ tmp342, tmp342,
	mov	r0, r5	@, tmp423
	strb	r7, [r4, ip]	@ D.37104, <variable>.MP4SyntaxState.vop_decode_right
	b	.L430	@
.L443:
	movw	r0, #21208	@ tmp292,
	ldrb	sl, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	sl, #3	@ <variable>.MP4Vop.vop_coding_type,
	bne	.L404	@,
	movw	r1, #21332	@ tmp294,
	ldrb	lr, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points, <variable>.MP4Syntax.syn_vol.sprite_warping_points
	cmp	lr, #0	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points,
	beq	.L404	@,
	add	r7, r4, #20992	@ ivtmp.1684, pCtx,
	mov	fp, #0	@,
	add	r7, r7, #252	@ ivtmp.1684, ivtmp.1684,
	str	fp, [sp, #4]	@, %sfp
.L411:
	mov	r0, r5	@, tmp423
	bl	bs_get_spritetrajectory	@
	subs	sl, r0, #0	@ length,
	moveq	r9, sl	@ x, length
	bne	.L448	@,
.L406:
	mov	r2, #22016	@,
	ldr	r3, [r4, r2]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r3, #500	@ <variable>.MP4Syntax.divx_version,
	bne	.L407	@,
	add	r1, r2, #4	@,,
	movw	r0, #413	@,
	ldr	lr, [r4, r1]	@ <variable>.MP4Syntax.divx_build, <variable>.MP4Syntax.divx_build
	cmp	lr, r0	@ <variable>.MP4Syntax.divx_build,
	beq	.L408	@,
.L407:
	mov	r0, r5	@, tmp423
	mov	r1, #1	@,
	bl	BsSkip	@
.L408:
	mov	r0, r5	@, tmp423
	bl	bs_get_spritetrajectory	@
	subs	fp, r0, #0	@ length.1707,
	moveq	sl, fp	@ y, length.1707
	bne	.L449	@,
.L410:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp423
	bl	BsSkip	@
	stmia	r7, {r9, sl}	@ phole stm
	movw	r0, #21332	@,
	ldr	ip, [sp, #4]	@, %sfp
	add	r7, r7, #8	@ ivtmp.1684, ivtmp.1684,
	add	r1, ip, #1	@,,
	str	r1, [sp, #4]	@, %sfp
	ldr	sl, [sp, #4]	@, %sfp
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points, <variable>.MP4Syntax.syn_vol.sprite_warping_points
	cmp	r3, sl	@ <variable>.MP4Syntax.syn_vol.sprite_warping_points,
	bhi	.L411	@,
	b	.L404	@
.L445:
	movw	r1, #15796	@ tmp390,
	movw	ip, #15792	@ tmp395,
	ldr	lr, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r3, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	strb	r2, [r4, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	r2, lr, asl #3	@ tmp392, <variable>.LenInByte,
	str	r2, [r4, #1288]	@ tmp392, <variable>.bit_len
	str	r3, [r4, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L417	@
.L447:
	mov	r0, r5	@, tmp423
	movw	r5, #22041	@ tmp331,
	strb	sl, [r4, r5]	@ D.37094, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp335,
	movt	r0, #:upper16:g_event_report	@ tmp335,
	ldr	r3, [r0, #0]	@ g_event_report.1715, g_event_report
	cmp	r3, #0	@ g_event_report.1715,
	beq	.L427	@,
	movw	lr, #22960	@ tmp336,
	mov	r2, sl	@, D.37094
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1715
	bl	vfmw_dprint_nothing	@
	b	.L382	@
.L448:
	mov	r0, r5	@, tmp423
	mov	r1, sl	@, length
	bl	BsGet	@
	sub	r2, sl, #1	@ tmp299, length,
	movs	ip, r0, asr r2	@, x,
	mov	r9, r0	@ x,
	moveq	r2, #1	@,
	moveq	ip, r2, asl sl	@ tmp301,,
	subeq	ip, ip, #1	@ tmp303, tmp301,
	eoreq	r9, r0, ip	@ D.37069, x, tmp303
	rsbeq	r9, r9, #0	@ x, D.37069
	b	.L406	@
.L449:
	mov	r0, r5	@, tmp423
	mov	r1, fp	@, length.1707
	bl	BsGet	@
	sub	r2, fp, #1	@ tmp312, length.1707,
	movs	ip, r0, asr r2	@, y,
	mov	sl, r0	@ y,
	moveq	r2, #1	@,
	moveq	ip, r2, asl fp	@ tmp314,,
	subeq	ip, ip, #1	@ tmp316, tmp314,
	eoreq	sl, r0, ip	@ D.37082, y, tmp316
	rsbeq	sl, sl, #0	@ y, D.37082
	b	.L410	@
	.fnend
	.size	Mp4_Syntax_Vop, .-Mp4_Syntax_Vop
	.align	2
	.global	Mp4_Syntax_Vo
	.type	Mp4_Syntax_Vo, %function
Mp4_Syntax_Vo:
	.fnstart
.LFB1928:
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
	uxtb	r0, r0	@ D.36879,
	strb	r0, [r4, r3]	@ D.36879, <variable>.MP4Vos.is_visual_object_identifier
	cmp	r0, #0	@ D.36879,
	movweq	r3, #19977	@ tmp196,
	streqb	r6, [r4, r3]	@ tmp160, <variable>.MP4Vos.visual_object_verid
	bne	.L458	@,
	mov	r0, r5	@, tmp275
	mov	r1, #4	@,
	bl	BsGet	@
	movw	r3, #19979	@ tmp200,
	uxtb	r6, r0	@ D.36889,
	strb	r6, [r4, r3]	@ D.36889, <variable>.MP4Vos.visual_object_type
	cmp	r6, #1	@ D.36889,
	beq	.L459	@,
.L453:
	mov	r0, r5	@, tmp275
	movw	r5, #22037	@ tmp220,
	mov	r6, #0	@ tmp221,
	strb	r6, [r4, r5]	@ tmp221, <variable>.MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	movw	r0, #:lower16:g_event_report	@ tmp224,
	movt	r0, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [r0, #0]	@ g_event_report.534, g_event_report
	cmp	r3, r6	@ g_event_report.534,
	beq	.L455	@,
	movw	lr, #22960	@ tmp225,
	mov	r2, r6	@, tmp221
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.534
.L455:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L458:
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
	uxtb	r6, r0	@ D.36889,
	strb	r6, [r4, r3]	@ D.36889, <variable>.MP4Vos.visual_object_type
	cmp	r6, #1	@ D.36889,
	bne	.L453	@,
.L459:
	mov	r1, r6	@, D.36889
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	ip, #19980	@ tmp203,
	uxtb	r1, r0	@ D.36894,
	strb	r1, [r4, ip]	@ D.36894, <variable>.MP4Vos.video_signal_type
	cmp	r1, #0	@ D.36894,
	bne	.L460	@,
.L454:
	movw	r1, #22037	@ tmp227,
	mov	ip, #1	@ tmp228,
	mov	r0, r5	@, tmp275
	strb	ip, [r4, r1]	@ tmp228, <variable>.MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	cmp	r0, r7, asl #3	@, len,
	bgt	.L456	@,
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
.L456:
	mov	r0, r5	@, tmp275
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L455	@
.L460:
	mov	r1, #3	@,
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	ip, #19981	@ tmp206,
	mov	r1, r6	@, D.36889
	strb	r0, [r4, ip]	@, <variable>.MP4Vos.video_format
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r3, #19982	@ tmp209,
	mov	r1, r6	@, D.36889
	strb	r0, [r4, r3]	@, <variable>.MP4Vos.video_range
	mov	r0, r5	@, tmp275
	bl	BsGet	@
	movw	r2, #19983	@ tmp212,
	uxtb	r0, r0	@ D.36903,
	strb	r0, [r4, r2]	@ D.36903, <variable>.MP4Vos.colour_description
	cmp	r0, #0	@ D.36903,
	beq	.L454	@,
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
	b	.L454	@
	.fnend
	.size	Mp4_Syntax_Vo, .-Mp4_Syntax_Vo
	.align	2
	.global	Mp4_Syntax_ShortHeader
	.type	Mp4_Syntax_ShortHeader, %function
Mp4_Syntax_ShortHeader:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #15612	@ tmp151,
	ldr	r7, [r0, r5]	@ <variable>.Mp4DecParam.SlcNum, <variable>.Mp4DecParam.SlcNum
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r6, r2	@ len, len
	cmp	r7, #0	@ <variable>.Mp4DecParam.SlcNum,
	bne	.L485	@,
.L463:
	add	r5, sp, #12	@ tmp408,,
	mov	r2, r6	@, len
	mov	r0, r5	@, tmp408
	bl	BsInit	@
	add	r0, r4, #20992	@, pCtx,
	add	r0, r0, #216	@,,
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r1, #22	@,
	mov	r0, r5	@, tmp408
	bl	BsSkip	@
	mov	r1, #13	@,
	mov	r0, r5	@, tmp408
	bl	BsSkip	@
	mov	r1, #3	@,
	mov	r0, r5	@, tmp408
	bl	BsGet	@
	movw	r2, #21218	@ tmp160,
	uxtb	r1, r0	@ D.36657,
	strb	r1, [r4, r2]	@ D.36657, <variable>.MP4Vop.source_format
	sub	r3, r1, #1	@ tmp162, D.36657,
	cmp	r3, #3	@ tmp162,
	ldrls	pc, [pc, r3, asl #2]	@ tmp162
	b	.L464	@
.L469:
	.word	.L465
	.word	.L466
	.word	.L467
	.word	.L468
.L468:
	movw	lr, #21219	@ tmp193,
	mov	ip, #18	@ tmp194,
	movw	r0, #21220	@ tmp196,
	strb	ip, [r4, lr]	@ tmp194, <variable>.MP4Vop.num_gobs_invop
	movw	r3, #21976	@ tmp199,
	movw	lr, #21972	@ tmp201,
	mov	r2, #88	@ tmp197,
	mov	r1, #704	@ tmp200,
	mov	ip, #576	@ tmp202,
	strb	r2, [r4, r0]	@ tmp197, <variable>.MP4Vop.num_mb_ingob
	str	r1, [r4, r3]	@ tmp200, <variable>.MP4Syntax.image_width
	str	ip, [r4, lr]	@ tmp202, <variable>.MP4Syntax.image_height
.L470:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp408
	bl	BsGet	@
	movw	r1, #21275	@ tmp213,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.coding_mode, <variable>.MP4Syntax.coding_mode
	movw	r3, #21208	@ tmp211,
	cmp	r2, #2	@ <variable>.MP4Syntax.coding_mode,
	uxtb	r0, r0	@ D.36667,
	strb	r0, [r4, r3]	@ D.36667, <variable>.MP4Vop.vop_coding_type
	beq	.L472	@,
	movw	ip, #22600	@ tmp215,
	ldr	lr, [r4, ip]	@ <variable>.IPVopErr, <variable>.IPVopErr
	cmp	lr, #1	@ <variable>.IPVopErr,
	bne	.L473	@,
	cmp	r0, #0	@ D.36667,
	bne	.L472	@,
.L473:
	mov	r1, #4	@,
	mov	r0, r5	@, tmp408
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r0, r5	@, tmp408
	movw	r8, #21215	@ tmp220,
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r6, asl #3	@ D.36685, len,
	uxtb	r0, r0	@ D.36677,
	strb	r0, [r4, r8]	@ D.36677, <variable>.MP4Vop.vop_quant
	cmp	r0, #0	@ D.36677,
	mov	r0, r5	@, tmp408
	moveq	r2, #1	@ tmp223,
	streqb	r2, [r4, r8]	@ tmp223, <variable>.MP4Vop.vop_quant
	bl	BsSkip	@
	mov	r8, #0	@ i,
.L477:
	mov	r1, #1	@,
	mov	r0, r5	@, tmp408
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L486	@,
	add	r8, r8, #1	@ i, i,
.L482:
	cmp	r8, #15	@ i,
	bls	.L478	@,
	mov	r0, r5	@, tmp408
	movw	r5, #22041	@ tmp235,
	mov	r6, #0	@ tmp236,
	strb	r6, [r4, r5]	@ tmp236, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp239,
	movt	r3, #:upper16:g_event_report	@ tmp239,
	ldr	r3, [r3, #0]	@ g_event_report.1774, g_event_report
	cmp	r3, r6	@ g_event_report.1774,
	mov	r5, r0	@ BitUsed,
	beq	.L471	@,
	movw	r1, #22960	@ tmp240,
	mov	r2, r6	@, tmp236
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.1774
.L471:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L467:
	movw	r0, #21219	@ tmp183,
	mov	r2, #18	@ tmp184,
	movw	r3, #21220	@ tmp186,
	strb	r2, [r4, r0]	@ tmp184, <variable>.MP4Vop.num_gobs_invop
	movw	lr, #21976	@ tmp189,
	movw	r0, #21972	@ tmp191,
	mov	r1, #22	@ tmp187,
	mov	ip, #352	@ tmp190,
	mov	r2, #288	@ tmp192,
	strb	r1, [r4, r3]	@ tmp187, <variable>.MP4Vop.num_mb_ingob
	str	ip, [r4, lr]	@ tmp190, <variable>.MP4Syntax.image_width
	str	r2, [r4, r0]	@ tmp192, <variable>.MP4Syntax.image_height
	b	.L470	@
.L466:
	movw	r3, #21219	@ tmp173,
	mov	r1, #9	@ tmp174,
	movw	lr, #21220	@ tmp176,
	strb	r1, [r4, r3]	@ tmp174, <variable>.MP4Vop.num_gobs_invop
	movw	r0, #21976	@ tmp179,
	movw	r3, #21972	@ tmp181,
	mov	ip, #11	@ tmp177,
	mov	r2, #176	@ tmp180,
	mov	r1, #144	@ tmp182,
	strb	ip, [r4, lr]	@ tmp177, <variable>.MP4Vop.num_mb_ingob
	str	r2, [r4, r0]	@ tmp180, <variable>.MP4Syntax.image_width
	str	r1, [r4, r3]	@ tmp182, <variable>.MP4Syntax.image_height
	b	.L470	@
.L465:
	movw	lr, #21219	@ tmp163,
	mov	ip, #6	@ tmp164,
	movw	r0, #21220	@ tmp166,
	strb	ip, [r4, lr]	@ tmp164, <variable>.MP4Vop.num_gobs_invop
	movw	r3, #21976	@ tmp169,
	movw	lr, #21972	@ tmp171,
	mov	r2, #8	@ tmp167,
	mov	r1, #128	@ tmp170,
	mov	ip, #96	@ tmp172,
	strb	r2, [r4, r0]	@ tmp167, <variable>.MP4Vop.num_mb_ingob
	str	r1, [r4, r3]	@ tmp170, <variable>.MP4Syntax.image_width
	str	ip, [r4, lr]	@ tmp172, <variable>.MP4Syntax.image_height
	b	.L470	@
.L464:
	mov	r0, r5	@, tmp408
	movw	r5, #22041	@ tmp203,
	mov	r6, #0	@ tmp204,
	strb	r6, [r4, r5]	@ tmp204, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	movw	r1, #:lower16:g_event_report	@ tmp207,
	movt	r1, #:upper16:g_event_report	@ tmp207,
	ldr	r3, [r1, #0]	@ g_event_report.507, g_event_report
	cmp	r3, r6	@ g_event_report.507,
	mov	r5, r0	@ BitUsed,
	beq	.L471	@,
	movw	ip, #22960	@ tmp208,
	mov	r2, r6	@, tmp204
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.507
	b	.L471	@
.L486:
	mov	r0, r5	@, tmp408
	add	r8, r8, #1	@ i, i,
	bl	BsPos	@
	mov	r1, #8	@,
	cmp	r0, r6	@, D.36685
	mov	r0, r5	@, tmp408
	bgt	.L487	@,
	bl	BsSkip	@
	cmp	r8, #15	@ i,
	bls	.L477	@,
	b	.L482	@
.L485:
	str	r1, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r7, [r4, r5]	@ prephitmp.1760, <variable>.Mp4DecParam.SlcNum
	ldr	r1, [sp, #4]	@,
	b	.L463	@
.L478:
	movw	ip, #15612	@ tmp249,
	mov	r2, #19968	@ tmp245,
	ldr	lr, [r4, r2]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	ldr	r3, [r4, ip]	@ <variable>.Mp4DecParam.SlcNum, <variable>.Mp4DecParam.SlcNum
	orr	r1, lr, #2	@ tmp248, <variable>.PicIntegrality,
	str	r1, [r4, r2]	@ tmp248, <variable>.PicIntegrality
	add	r0, r3, #1	@ tmp252, <variable>.Mp4DecParam.SlcNum,
	movw	r2, #22041	@ tmp242,
	str	r0, [r4, ip]	@ tmp252, <variable>.Mp4DecParam.SlcNum
	mov	r0, r5	@, tmp408
	movw	r5, #21216	@ tmp253,
	mov	lr, #1	@ tmp243,
	strb	lr, [r4, r5]	@ tmp243, <variable>.MP4Vop.vop_fcode_forward
	strb	lr, [r4, r2]	@ tmp243, <variable>.MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r2, r7, asl #3	@ tmp409, prephitmp.1760,
	rsb	r3, r7, r2	@ tmp260, prephitmp.1760, tmp409
	add	r3, r4, r3, asl #2	@, tmp262, pCtx, tmp260,
	mov	r1, r0, asr #31	@ tmp273, BitUsed,
	mov	r5, r0	@ BitUsed,
	rsb	r6, r0, r6	@ tmp264, BitUsed, D.36685
	str	r6, [r3, #1284]	@ tmp264, <variable>.bit_len
	mov	r1, r1, lsr #29	@ tmp274, tmp273,
	cmp	r5, #0	@ BitUsed,
	add	ip, r0, r1	@ tmp275, BitUsed, tmp274
	and	r0, ip, #7	@ tmp276, tmp275,
	add	ip, r5, #7	@ tmp293, BitUsed,
	rsb	r1, r1, r0	@ tmp277, tmp274, tmp276
	movw	r0, #22056	@ tmp278,
	ldr	r0, [r4, r0]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	movge	ip, r5	@ BitUsed, BitUsed
	add	r1, r1, r0	@ tmp282, tmp277, <variable>.BitsObj.offset
	strb	r1, [r3, #1282]	@ tmp282, <variable>.bit_offset
	movw	r1, #22048	@ tmp295,
	ldr	r0, [r4, r1]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	add	r1, r0, ip, asr #3	@, tmp297, <variable>.BitsObj.phy_addr, BitUsed,
	movw	ip, #15709	@ tmp298,
	str	r1, [r3, #1292]	@ tmp297, <variable>.phy_address
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #0	@ <variable>.IsLastSeg,
	beq	.L488	@,
.L479:
	rsb	lr, r7, r2	@ tmp333, prephitmp.1760, tmp409
	mov	r1, #0	@ tmp337,
	add	ip, r4, lr, asl #2	@, tmp335, pCtx, tmp333,
	add	lr, ip, #1280	@ tmp353, tmp335,
	add	r3, ip, #1264	@ tmp344, tmp335,
	add	r3, r3, #9	@ tmp344, tmp344,
	add	ip, lr, #4	@ tmp336, tmp336,
	add	r0, lr, #12	@ tmp353, tmp353,
	str	r1, [ip, #4]	@ tmp337, <variable>.bit_len
	str	r1, [r0, #4]	@ tmp337, <variable>.phy_address
	strb	r1, [r3, #10]	@ tmp337, <variable>.bit_offset
.L480:
	rsb	r1, r7, r2	@ tmp358, prephitmp.1760, tmp409
	movw	r2, #21208	@ tmp362,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	movw	r0, #21217	@ tmp372,
	add	lr, r4, r1, asl #2	@, tmp360, pCtx, tmp358,
	movw	r1, #21216	@ tmp382,
	add	r7, lr, #1264	@ tmp361, tmp360,
	movw	lr, #21215	@ tmp392,
	add	r7, r7, #8	@ tmp361, tmp361,
	strb	ip, [r7, #8]	@ <variable>.MP4Vop.vop_coding_type, <variable>.vop_coding_type
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.MP4Vop.vop_fcode_backward
	movw	r0, #21212	@ tmp402,
	strb	r3, [r7, #6]	@ <variable>.MP4Vop.vop_fcode_backward, <variable>.vop_fcode_backward
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.MP4Vop.vop_fcode_forward
	movw	r1, #19964	@ tmp405,
	strb	r2, [r7, #5]	@ <variable>.MP4Vop.vop_fcode_forward, <variable>.vop_fcode_forward
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_quant, <variable>.MP4Vop.vop_quant
	strb	ip, [r7, #9]	@ <variable>.MP4Vop.vop_quant, <variable>.vop_quant
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.MP4Vop.intra_dc_vlc_thr
	strb	r3, [r7, #7]	@ <variable>.MP4Vop.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	ldr	r2, [r4, r1]	@ <variable>.StreamIDNum, <variable>.StreamIDNum
	cmp	r2, #0	@ <variable>.StreamIDNum,
	bne	.L489	@,
.L481:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L471	@
.L472:
	mov	r0, r5	@, tmp408
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L471	@
.L488:
	movw	ip, #15789	@ tmp300,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	bne	.L479	@,
	movw	lr, #15796	@ tmp309,
	ldr	r0, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	lr, #15792	@ tmp328,
	strb	r1, [r3, #1283]	@ <variable>.IsLastSeg, <variable>.bit_offset
	mov	ip, r0, asl #3	@ tmp311, <variable>.LenInByte,
	str	ip, [r3, #1288]	@ tmp311, <variable>.bit_len
	ldr	r1, [r4, lr]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r3, #1296]	@ <variable>.PhyAddr, <variable>.phy_address
	b	.L480	@
.L489:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L481	@
.L487:
	bl	BsPos	@
	mov	r5, r0	@ BitUsed,
	b	.L471	@
	.fnend
	.size	Mp4_Syntax_ShortHeader, .-Mp4_Syntax_ShortHeader
	.align	2
	.global	Mp4_Syntax_Gop
	.type	Mp4_Syntax_Gop, %function
Mp4_Syntax_Gop:
	.fnstart
.LFB1925:
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
	subs	r6, r0, #0	@ D.36611,
	bne	.L491	@,
	bl	vfmw_dprint_nothing	@
	movw	r0, #22038	@ tmp147,
	strb	r6, [r5, r0]	@ D.36611, <variable>.MP4SyntaxState.gop_decode_right
	mov	r0, r4	@, tmp142
	bl	BsPos	@
	movw	r3, #:lower16:g_event_report	@ tmp151,
	movt	r3, #:upper16:g_event_report	@ tmp151,
	ldr	r3, [r3, #0]	@ g_event_report.504, g_event_report
	cmp	r3, #0	@ g_event_report.504,
	mov	r4, r0	@ BitUsed,
	beq	.L492	@,
	movw	r1, #22960	@ tmp152,
	mov	r2, r6	@, D.36611
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	mov	r1, #103	@,
	blx	r3	@ g_event_report.504
.L492:
	mov	r0, r4	@, BitUsed
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L491:
	mov	r1, #6	@,
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	mov	r0, r4	@, tmp142
	mov	r1, #1	@,
	bl	BsGet	@
	movw	r2, #21270	@ tmp156,
	mov	r1, #1	@,
	strb	r0, [r5, r2]	@, <variable>.MP4Syntax.closed_gov
	mov	r0, r4	@, tmp142
	bl	BsGet	@
	movw	r3, #22038	@ tmp161,
	movw	r2, #21271	@ tmp159,
	mov	ip, #1	@ tmp162,
	strb	ip, [r5, r3]	@ tmp162, <variable>.MP4SyntaxState.gop_decode_right
	strb	r0, [r5, r2]	@, <variable>.MP4Syntax.broken_link
	mov	r0, r4	@, tmp142
	bl	BsPos	@
	mov	r4, r0	@ BitUsed,
	b	.L492	@
	.fnend
	.size	Mp4_Syntax_Gop, .-Mp4_Syntax_Gop
	.align	2
	.global	MPEG4DEC_GetImageBuffer
	.type	MPEG4DEC_GetImageBuffer, %function
MPEG4DEC_GetImageBuffer:
	.fnstart
.LFB1949:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #22960	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38830,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.38833,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #22528	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #80	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.38833,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	MPEG4DEC_GetImageBuffer, .-MPEG4DEC_GetImageBuffer
	.align	2
	.global	MP4_SetImgFormat
	.type	MP4_SetImgFormat, %function
MP4_SetImgFormat:
	.fnstart
.LFB1946:
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
	ldr	r3, [r4, r2]	@ D.38656, <variable>.MP4Syntax.image_width
	cmp	r3, #0	@ D.38656,
	beq	.L501	@,
	movw	r2, #21972	@ tmp141,
	ldr	ip, [r4, r2]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	cmp	ip, #0	@ <variable>.MP4Syntax.image_height,
	beq	.L501	@,
	ldr	r1, [r0, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	lr, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, r3	@ <variable>.image_width, D.38656
	strls	r1, [r0, #152]	@, <variable>.image_width, <variable>.disp_width
	strhi	r3, [r0, #152]	@, D.38656, <variable>.disp_width
	ldr	r3, [r4, r2]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	cmp	lr, r3	@ <variable>.image_height, <variable>.MP4Syntax.image_height
	strls	lr, [r0, #156]	@, <variable>.image_height, <variable>.disp_height
	strhi	r3, [r0, #156]	@, <variable>.MP4Syntax.image_height, <variable>.disp_height
	b	.L502	@
.L501:
	ldr	r2, [r0, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	str	r2, [r0, #152]	@ <variable>.image_width, <variable>.disp_width
	str	ip, [r0, #156]	@ <variable>.image_height, <variable>.disp_height
.L502:
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
.LFB1921:
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
.LFB1945:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	mvneq	r0, #1	@ D.38636,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r5, #22960	@ tmp139,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	moveq	r0, #1	@ D.38636,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp146,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #1	@ D.38636,
	str	r7, [r6, #196]	@ tmp146, <variable>.p_usrdat
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	MPEG4DEC_RecycleImage, .-MPEG4DEC_RecycleImage
	.align	2
	.global	Vdm_Mem_Move
	.type	Vdm_Mem_Move, %function
Vdm_Mem_Move:
	.fnstart
.LFB1937:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #4
	sub	sp, sp, #4	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r6, r1	@ pCur, pCur
	ldr	r9, [sp, #44]	@ ImgWidth, ImgWidth
	mov	r7, r2	@ dst, dst
	mov	fp, r3	@ dst_2d, dst_2d
	ldr	r8, [sp, #40]	@ src, src
	ldr	sl, [sp, #48]	@ ImgHeight, ImgHeight
	bl	vfmw_dprint_nothing	@
	movw	r3, #15628	@ tmp144,
	str	r7, [r4, #1252]	@ dst, <variable>.Mp4DecParam.CurPicPhyAddr
	str	fp, [r4, r3]	@ dst_2d, <variable>.Mp4DecParam.DispFramePhyAddr
	add	ip, r9, #15	@ tmp147, ImgWidth,
	ldr	r3, [r6, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	add	r1, sl, #15	@ tmp150, ImgHeight,
	mov	r0, ip, lsr #4	@ tmp148, tmp147,
	movw	r2, #1204	@ tmp146,
	movw	ip, #1206	@ tmp149,
	strh	r0, [r4, r2]	@ movhi	@ tmp148, <variable>.Mp4DecParam.PicWidthInMb
	str	r3, [r4, #1264]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.CurPmvPhyAddr
	mov	r1, r1, lsr #4	@ tmp151, tmp150,
	str	r8, [r4, #1256]	@ src, <variable>.Mp4DecParam.FwdRefPicPhyAddr
	movw	r0, #15640	@ tmp152,
	strh	r1, [r4, ip]	@ movhi	@ tmp151, <variable>.Mp4DecParam.PicHeightInMb
	movw	r5, #22060	@ tmp160,
	ldr	r2, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r1, r4, #1040	@ D.37986, pCtx,
	ldr	r3, [r4, r5]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #20]	@ <variable>.Stride, <variable>.Stride
	str	ip, [r4, r0]	@ <variable>.Stride, <variable>.Mp4DecParam.VahbStride
	movw	r0, #15644	@ tmp155,
	ldr	r2, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [r2, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	movw	r2, #15700	@ tmp158,
	str	ip, [r4, r0]	@ <variable>.ChromOffset, <variable>.Mp4DecParam.uv_offset
	ldr	r0, [r3, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r1, [r4, #1036]	@ D.37986, <variable>.pMp4DecParam
	str	r0, [r4, r2]	@ <variable>.s32Compress_en, <variable>.Mp4DecParam.Compress_en
	ldr	r2, [r3, #708]	@ D.37987, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.37987,
	beq	.L515	@,
	cmp	r2, #2	@ D.37987,
	beq	.L516	@,
.L513:
	mov	r0, #1	@ tmp177,
	strb	r0, [r4, #1198]	@ tmp177, <variable>.Mp4DecParam.IsNvopCopy
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L515:
	cmp	r1, #0	@ D.37986,
	beq	.L513	@,
	movw	lr, #22988	@ tmp166,
	movw	r1, #22960	@ tmp164,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, #0	@ tmp163,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	str	r2, [r4, #1036]	@ tmp163, <variable>.pMp4DecParam
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pCtx
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	MP4_ClearCurPic	@
.L516:
	ldr	r0, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L513	@,
	cmp	r1, #0	@ D.37986,
	beq	.L513	@,
	movw	lr, #22988	@ tmp172,
	movw	r1, #22960	@ tmp170,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, #0	@ tmp169,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	str	r2, [r4, #1036]	@ tmp169, <variable>.pMp4DecParam
	bl	FSP_SetDisplay	@
	ldr	ip, [r4, r5]	@ temp.1947, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	ldr	r3, [ip, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp176, <variable>.stDisParams.s32DisNums,
	str	r2, [ip, #712]	@ tmp176, <variable>.stDisParams.s32DisNums
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
.LFB1941:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #84
	sub	sp, sp, #84	@,,
	mov	r5, r2	@ ptr_strm_para, ptr_strm_para
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #48	@,
	add	r0, sp, #32	@,,
	bl	__memzero	@
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L543	@,
	movw	r3, #22048	@ tmp205,
	movw	sl, #22044	@ tmp207,
	ldr	r9, [r4, r3]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	r8, #22052	@ tmp216,
	ldr	lr, [r4, sl]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	movw	r2, #22056	@ tmp213,
	ldr	r7, [r4, r8]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	and	r1, r9, #3	@ tmp210, <variable>.BitsObj.phy_addr,
	ldr	r6, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	fp, [r4, r2]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	str	lr, [r4, #1056]	@ <variable>.BitsObj.vir_addr, <variable>.Mp4DecParam.StreamVirAddr
	bic	r0, r6, #3	@ tmp204, <variable>.PhyAddr,
	str	r9, [r4, #1220]	@ <variable>.BitsObj.phy_addr, <variable>.Mp4DecParam.StreamPhyAddr
	rsb	ip, fp, r7, asl #3	@, tmp221, <variable>.BitsObj.offset, <variable>.BitsObj.len,
	str	r0, [r4, #1208]	@ tmp204, <variable>.Mp4DecParam.StreamBaseAddr
	add	sl, fp, r1, asl #3	@, tmp215, <variable>.BitsObj.offset, tmp210,
	str	ip, [r4, #1236]	@ tmp221, <variable>.Mp4DecParam.StreamLength
	mov	r0, #0	@ tmp229,
	str	sl, [r4, #1228]	@ tmp215, <variable>.Mp4DecParam.StreamBitOffset
	ldr	r8, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r8, [r4, #1224]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.StreamPhyAddr
	ldr	r7, [r5, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r7, [r4, #1060]	@ <variable>.VirAddr, <variable>.Mp4DecParam.StreamVirAddr
	ldr	lr, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	ip, lr, #3	@ tmp224, <variable>.PhyAddr,
	mov	r6, ip, asl #3	@ tmp226, tmp224,
	str	r6, [r4, #1232]	@ tmp226, <variable>.Mp4DecParam.StreamBitOffset
	ldr	r1, [r5, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r0, [r4, #1216]	@ tmp229, <variable>.Mp4DecParam.StreamFirstIsLastFlag
	mov	r3, r1, asl #3	@ tmp228, <variable>.LenInByte,
	str	r3, [r4, #1240]	@ tmp228, <variable>.Mp4DecParam.StreamLength
.L519:
	movw	sl, #21976	@ tmp231,
	movw	r1, #21912	@ tmp240,
	ldr	r2, [r4, sl]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r3, #21972	@ tmp236,
	ldrb	r8, [r4, r1]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	r7, #21322	@ tmp243,
	add	r0, r2, #15	@ tmp232, <variable>.MP4Syntax.image_width,
	ldr	r3, [r4, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	movw	r6, #21277	@ tmp246,
	movw	r5, #21919	@ tmp249,
	str	r8, [sp, #4]	@, %sfp
	movw	lr, #21924	@ tmp252,
	movw	ip, #21923	@ tmp255,
	movw	fp, #21376	@ tmp258,
	movw	r9, #21920	@ tmp261,
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.quant_type, <variable>.MP4Syntax.syn_vol.quant_type
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.MP4Syntax.is_short_header, <variable>.MP4Syntax.is_short_header
	movw	r1, #21921	@ tmp264,
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_quant, <variable>.MP4Syntax.syn_vop.vop_quant
	add	sl, r3, #15	@ tmp237, <variable>.MP4Syntax.image_height,
	ldrb	r5, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.num_mb_ingob, <variable>.MP4Syntax.syn_vop.num_mb_ingob
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.num_gobs_invop, <variable>.MP4Syntax.syn_vop.num_gobs_invop
	mov	sl, sl, lsr #4	@ tmp239, tmp237,
	ldr	ip, [r4, fp]	@ <variable>.MP4Syntax.syn_vol.vop_time_incr_bits, <variable>.MP4Syntax.syn_vol.vop_time_incr_bits
	mov	fp, r0, lsr #4	@ tmp234, tmp232,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_fcode_forward, <variable>.MP4Syntax.syn_vop.vop_fcode_forward
	movw	r9, #21916	@ tmp267,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.intra_dc_vlc_thr
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_fcode_backward, <variable>.MP4Syntax.syn_vop.vop_fcode_backward
	str	r9, [sp, #8]	@, %sfp
	movw	r9, #21327	@ tmp270,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vol.resync_marker_disable
	str	r9, [sp, #12]	@, %sfp
	movw	r9, #21325	@ tmp273,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vol.quarter_sample
	str	r9, [sp, #16]	@, %sfp
	movw	r9, #21914	@ tmp276,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.vop_rounding_type
	str	r9, [sp, #20]	@, %sfp
	movw	r9, #21918	@ tmp279,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.alternate_vertical_scan_flag
	str	r9, [sp, #24]	@, %sfp
	movw	r9, #21917	@ tmp282,
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@, <variable>.MP4Syntax.syn_vop.top_field_first
	str	r9, [sp, #28]	@, %sfp
	movw	r9, #1204	@ tmp230,
	strh	fp, [r4, r9]	@ movhi	@, <variable>.Mp4DecParam.PicWidthInMb
	movw	r9, #1206	@ tmp235,
	strh	sl, [r4, r9]	@ movhi	@ tmp239, <variable>.Mp4DecParam.PicHeightInMb
	movw	r9, #21320	@ tmp317,
	strb	r8, [r4, #1041]	@ <variable>.MP4Syntax.syn_vol.quant_type, <variable>.Mp4DecParam.PicQuantType
	movw	sl, #21318	@ tmp285,
	strb	r7, [r4, #1042]	@ <variable>.MP4Syntax.is_short_header, <variable>.Mp4DecParam.IsShortHeader
	movw	r8, #22008	@ tmp288,
	strb	r6, [r4, #1043]	@ <variable>.MP4Syntax.syn_vop.vop_quant, <variable>.Mp4DecParam.VopQuant
	movw	r7, #22004	@ tmp290,
	strb	r5, [r4, #1044]	@ <variable>.MP4Syntax.syn_vop.num_mb_ingob, <variable>.Mp4DecParam.GobMbNum
	strb	lr, [r4, #1045]	@ <variable>.MP4Syntax.syn_vop.num_gobs_invop, <variable>.Mp4DecParam.VopGobNum
	strb	ip, [r4, #1046]	@ <variable>.MP4Syntax.syn_vol.vop_time_incr_bits, <variable>.Mp4DecParam.BitsOfVopTimeIncr
	strb	r0, [r4, #1047]	@ <variable>.MP4Syntax.syn_vop.vop_fcode_forward, <variable>.Mp4DecParam.FwdFcode
	strb	r1, [r4, #1048]	@ <variable>.MP4Syntax.syn_vop.vop_fcode_backward, <variable>.Mp4DecParam.BwdFcode
	ldr	r6, [sp, #8]	@, %sfp
	strb	r6, [r4, #1049]	@, <variable>.Mp4DecParam.intra_dc_vlc_thr
	movw	r6, #21280	@ tmp292,
	ldr	r5, [sp, #12]	@, %sfp
	strb	r5, [r4, #1050]	@, <variable>.Mp4DecParam.resync_marker_disable
	movw	r5, #21279	@ tmp295,
	ldr	lr, [sp, #16]	@, %sfp
	strb	lr, [r4, #1051]	@, <variable>.Mp4DecParam.QuarterSample
	movw	lr, #21278	@ tmp298,
	ldr	ip, [sp, #20]	@, %sfp
	strb	ip, [r4, #1052]	@, <variable>.Mp4DecParam.vop_rounding_type
	movw	ip, #21281	@ tmp301,
	ldr	r0, [sp, #24]	@, %sfp
	strb	r0, [r4, #1053]	@, <variable>.Mp4DecParam.alternate_vertical_scan
	movw	r0, #21282	@ tmp304,
	ldr	fp, [sp, #4]	@, %sfp
	strb	fp, [r4, #1040]	@, <variable>.Mp4DecParam.PicCodingType
	movw	fp, #21283	@ tmp307,
	ldr	r1, [sp, #28]	@, %sfp
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
	movw	fp, #15652	@ tmp310,
	str	r2, [r4, fp]	@ <variable>.MP4Syntax.image_width, <variable>.Mp4DecParam.image_width
	movw	r2, #15648	@ tmp313,
	strb	r5, [r4, #1192]	@ <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT, <variable>.Mp4DecParam.FF_BUG_EDGE_FIND_POINT
	movw	r5, #15656	@ tmp316,
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
	beq	.L544	@,
.L520:
	movw	ip, #21333	@ tmp348,
	movw	r0, #15664	@ tmp347,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy
	movw	r2, #15696	@ tmp366,
	movw	r3, #15660	@ tmp350,
	movw	r7, #15668	@ tmp352,
	movw	r6, #15672	@ tmp354,
	movw	r5, #15676	@ tmp356,
	str	r1, [r4, r0]	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.Mp4DecParam.sprite_warping_accuracy
	mov	lr, #15680	@ tmp358,
	mov	r1, #0	@ tmp351,
	movw	ip, #15684	@ tmp360,
	str	r1, [r4, r2]	@ tmp351, <variable>.Mp4DecParam.Vco
	movw	r0, #15688	@ tmp362,
	movw	r2, #15692	@ tmp364,
	str	r1, [r4, r7]	@ tmp351, <variable>.Mp4DecParam.dU
	str	r1, [r4, r5]	@ tmp351, <variable>.Mp4DecParam.dV
	str	r1, [r4, r3]	@ tmp351, <variable>.Mp4DecParam.sprite_warping_points
	str	r1, [r4, r6]	@ tmp351, <variable>.Mp4DecParam.dU
	str	r1, [r4, lr]	@ tmp351, <variable>.Mp4DecParam.dV
	str	r1, [r4, ip]	@ tmp351, <variable>.Mp4DecParam.Uo
	str	r1, [r4, r0]	@ tmp351, <variable>.Mp4DecParam.Vo
	str	r1, [r4, r2]	@ tmp351, <variable>.Mp4DecParam.Uco
.L521:
	movw	lr, #22988	@ tmp370,
	movw	r6, #22960	@ tmp368,
	ldr	r1, [r4, lr]	@, <variable>.CurFsID
	movw	r7, #22972	@ tmp374,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #22980	@ tmp378,
	ldr	r1, [r4, r3]	@, <variable>.BwdFsID
	mov	r7, r0	@ pFwd,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r7, #0	@, pFwd,
	beq	.L525	@,
	cmp	r0, #0	@ pBwd,
	beq	.L525	@,
	ldr	r2, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #0	@ <variable>.pstDecodeFs,
	beq	.L525	@,
	ldr	r1, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r1, #0	@ <variable>.pstTfOutFs,
	beq	.L525	@,
	ldr	ip, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L525	@,
	ldr	r3, [r5, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r3, [r4, #1264]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.CurPmvPhyAddr
	ldr	lr, [r0, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	lr, [r4, #1268]	@ <variable>.PmvAddr, <variable>.Mp4DecParam.BwdPmvPhyAddr
	ldr	r6, [r0, #408]	@ D.38323, <variable>.pstDecodeFs
	cmp	r6, #0	@ D.38323,
	ldreq	r6, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r6, #12]	@ iftmp.630, <variable>.PhyAddr
	mov	r6, #15616	@ tmp397,
	str	ip, [r4, #1260]	@ iftmp.630, <variable>.Mp4DecParam.BwdRefPicPhyAddr
	ldr	r8, [r7, #408]	@ D.38330, <variable>.pstDecodeFs
	cmp	r8, #0	@ D.38330,
	ldreq	r8, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [r8, #12]	@ iftmp.631, <variable>.PhyAddr
	str	r1, [r4, #1256]	@ iftmp.631, <variable>.Mp4DecParam.FwdRefPicPhyAddr
	movw	r1, #15620	@ tmp399,
	ldr	r2, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r4, #1252]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.CurPicPhyAddr
	add	r3, r4, #21248	@ ivtmp.1982, pCtx,
	ldr	lr, [r0, #416]	@ D.38337, <variable>.pstTfOutFs
	add	r3, r3, #148	@ ivtmp.1982, ivtmp.1982,
	cmp	lr, #0	@ D.38337,
	ldreq	lr, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	ip, [lr, #12]	@ iftmp.632, <variable>.PhyAddr
	str	ip, [r4, r6]	@ iftmp.632, <variable>.Mp4DecParam.TfBwdPhyAddr
	ldr	r8, [r7, #416]	@ D.38344, <variable>.pstTfOutFs
	movw	r7, #15624	@ tmp400,
	cmp	r8, #0	@ D.38344,
	ldreq	r8, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r2, [r8, #12]	@ iftmp.633, <variable>.PhyAddr
	movw	r8, #15628	@ tmp403,
	str	r2, [r4, r1]	@ iftmp.633, <variable>.Mp4DecParam.TfFwdPhyAddr
	mov	r2, r4	@ ivtmp.1986, pCtx
	ldr	r0, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	lr, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #0	@ i,
	str	lr, [r4, r7]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.TfCurPhyAddr
	movw	r7, #15640	@ tmp406,
	ldr	r6, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r4, r8]	@ <variable>.PhyAddr, <variable>.Mp4DecParam.DispFramePhyAddr
	movw	r8, #15644	@ tmp409,
	ldr	r1, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [r1, #20]	@ <variable>.Stride, <variable>.Stride
	str	lr, [r4, r7]	@ <variable>.Stride, <variable>.Mp4DecParam.VahbStride
	ldr	r6, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r5, [r6, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r5, [r4, r8]	@ <variable>.ChromOffset, <variable>.Mp4DecParam.uv_offset
.L535:
	add	ip, r3, #4	@ tmp429, ivtmp.1982,
	ldr	r6, [r3, #4]	@ tmp434, <variable>.MP4Syntax.syn_vol.intra_quant_mat
	ldr	r8, [r3, #0]	@ tmp413, <variable>.MP4Syntax.syn_vol.intra_quant_mat
	add	r0, r0, #2	@ i, i,
	ldr	r7, [r3, #256]	@ tmp415, <variable>.MP4Syntax.syn_vol.nonintra_quant_mat
	add	r1, r2, #1	@ tmp430, ivtmp.1986,
	ldr	r5, [ip, #256]	@ tmp435, <variable>.MP4Syntax.syn_vol.nonintra_quant_mat
	cmp	r0, #64	@ i,
	strb	r8, [r2, #1064]	@ tmp413, <variable>.Mp4DecParam.IntraQuantTab
	add	r3, ip, #4	@ ivtmp.1982, tmp429,
	strb	r7, [r2, #1128]	@ tmp415, <variable>.Mp4DecParam.NonintraQuantTab
	add	r2, r1, #1	@ ivtmp.1986, tmp430,
	strb	r6, [r1, #1064]	@ tmp434, <variable>.Mp4DecParam.IntraQuantTab
	strb	r5, [r1, #1128]	@ tmp435, <variable>.Mp4DecParam.NonintraQuantTab
	bne	.L535	@,
	movw	r1, #1206	@ tmp418,
	movw	lr, #1204	@ tmp420,
	ldrh	r0, [r4, lr]	@ <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicWidthInMb
	movw	r3, #22060	@ tmp425,
	ldrh	r2, [r4, r1]	@ <variable>.Mp4DecParam.PicHeightInMb, <variable>.Mp4DecParam.PicHeightInMb
	movw	ip, #21944	@ tmp417,
	ldr	lr, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mul	r1, r0, r2	@ tmp422, <variable>.Mp4DecParam.PicWidthInMb, <variable>.Mp4DecParam.PicHeightInMb
	movw	r2, #15700	@ tmp423,
	str	r1, [r4, ip]	@ tmp422, <variable>.MP4Syntax.syn_vop.mb_total
	ldr	r0, [lr, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r4, r2]	@ <variable>.s32Compress_en, <variable>.Mp4DecParam.Compress_en
.L536:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L525:
	bl	vfmw_dprint_nothing	@
	b	.L536	@
.L544:
	ldr	r2, [sp, #4]	@, %sfp
	cmp	r2, #3	@,
	bne	.L520	@,
	add	sl, r4, #21248	@, pCtx,
	add	r1, sp, #32	@,,
	add	r0, sl, #20	@,,
	movw	r8, #21333	@ tmp327,
	bl	MP4_GetGMCparam	@
	ldrb	sl, [r4, r8]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy
	ldr	r8, [sp, #32]	@ gmc.num_wp, gmc.num_wp
	movw	r3, #15664	@ tmp326,
	ldr	r7, [sp, #48]	@ gmc.dU, gmc.dU
	ldr	r6, [sp, #52]	@ gmc.dU, gmc.dU
	ldr	r5, [sp, #56]	@ gmc.dV, gmc.dV
	ldr	lr, [sp, #60]	@ gmc.dV, gmc.dV
	ldr	ip, [sp, #64]	@ gmc.Uo, gmc.Uo
	add	r0, sp, #68
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	str	sl, [r4, r3]	@ <variable>.MP4Syntax.syn_vol.sprite_warping_accuracy, <variable>.Mp4DecParam.sprite_warping_accuracy
	movw	r3, #15660	@ tmp329,
	str	r8, [r4, r3]	@ gmc.num_wp, <variable>.Mp4DecParam.sprite_warping_points
	movw	r3, #15668	@ tmp331,
	str	r7, [r4, r3]	@ gmc.dU, <variable>.Mp4DecParam.dU
	movw	r3, #15672	@ tmp333,
	str	r6, [r4, r3]	@ gmc.dU, <variable>.Mp4DecParam.dU
	movw	r7, #15676	@ tmp335,
	mov	r6, #15680	@ tmp337,
	str	r5, [r4, r7]	@ gmc.dV, <variable>.Mp4DecParam.dV
	str	lr, [r4, r6]	@ gmc.dV, <variable>.Mp4DecParam.dV
	movw	r5, #15684	@ tmp339,
	movw	lr, #15688	@ tmp341,
	str	ip, [r4, r5]	@ gmc.Uo, <variable>.Mp4DecParam.Uo
	str	r0, [r4, lr]	@ gmc.Vo, <variable>.Mp4DecParam.Vo
	movw	ip, #15692	@ tmp343,
	movw	r0, #15696	@ tmp345,
	str	r1, [r4, ip]	@ gmc.Uco, <variable>.Mp4DecParam.Uco
	str	r2, [r4, r0]	@ gmc.Vco, <variable>.Mp4DecParam.Vco
	b	.L521	@
.L543:
	movw	r2, #22048	@ tmp179,
	movw	fp, #22044	@ tmp184,
	ldr	r1, [r4, r2]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	movw	sl, #22052	@ tmp193,
	ldr	r8, [r4, fp]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	movw	r9, #22056	@ tmp190,
	ldr	r7, [r4, sl]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	and	ip, r1, #3	@ tmp187, <variable>.BitsObj.phy_addr,
	ldr	r6, [r4, r9]	@ <variable>.BitsObj.offset, <variable>.BitsObj.offset
	mov	r2, #0	@ tmp200,
	bic	r5, r1, #3	@ tmp183, <variable>.BitsObj.phy_addr,
	str	r8, [r4, #1056]	@ <variable>.BitsObj.vir_addr, <variable>.Mp4DecParam.StreamVirAddr
	rsb	lr, r6, r7, asl #3	@, tmp198, <variable>.BitsObj.offset, <variable>.BitsObj.len,
	add	r0, r6, ip, asl #3	@, tmp192, <variable>.BitsObj.offset, tmp187,
	str	r5, [r4, #1220]	@ tmp183, <variable>.Mp4DecParam.StreamPhyAddr
	str	lr, [r4, #1236]	@ tmp198, <variable>.Mp4DecParam.StreamLength
	str	r3, [r4, #1216]	@ <variable>.IsLastSeg, <variable>.Mp4DecParam.StreamFirstIsLastFlag
	str	r0, [r4, #1228]	@ tmp192, <variable>.Mp4DecParam.StreamBitOffset
	str	r2, [r4, #1240]	@ tmp200, <variable>.Mp4DecParam.StreamLength
	str	r1, [r4, #1208]	@ <variable>.BitsObj.phy_addr, <variable>.Mp4DecParam.StreamBaseAddr
	str	r2, [r4, #1224]	@ tmp200, <variable>.Mp4DecParam.StreamPhyAddr
	str	r2, [r4, #1232]	@ tmp200, <variable>.Mp4DecParam.StreamBitOffset
	b	.L519	@
	.fnend
	.size	Mp4_Set_DecPar, .-Mp4_Set_DecPar
	.align	2
	.global	MPEG4DEC_VDMPostProc
	.type	MPEG4DEC_VDMPostProc, %function
MPEG4DEC_VDMPostProc:
	.fnstart
.LFB1948:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r6, r1	@ ErrRatio, ErrRatio
	add	r0, r0, #1040	@, pCtx,
	movw	r1, #14664	@,
	bl	__memzero	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	movw	r5, #22960	@ tmp154,
	movw	r3, #22988	@ tmp156,
	movw	sl, #22544	@ tmp153,
	ldr	r1, [r4, r3]	@, <variable>.CurFsID
	movw	r7, #22972	@ tmp164,
	str	r6, [r4, sl]	@ ErrRatio, <variable>.ErrorLevel
	movw	r6, #22980	@ tmp160,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, r6]	@, <variable>.BwdFsID
	mov	r9, r0	@ pCurImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	mov	fp, r0	@ pBwdImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r9, #0	@ pCurImg,
	beq	.L566	@,
	bl	vfmw_dprint_nothing	@
	add	r8, r4, #22528	@ tmp338, pCtx,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, sl]	@ <variable>.ErrorLevel, <variable>.ErrorLevel
	add	r1, r8, #52	@, tmp338,
	str	r2, [r9, #180]	@ <variable>.ErrorLevel, <variable>.error_level
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	Mp4_ClearUsrData	@
	movw	r1, #21912	@ tmp172,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L548	@,
	movw	r0, #22060	@ tmp176,
	ldr	ip, [r4, sl]	@ <variable>.ErrorLevel, <variable>.ErrorLevel
	ldr	r3, [r4, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	ip, lr	@ <variable>.ErrorLevel, <variable>.s32RefErrThr
	bhi	.L567	@,
.L548:
	movw	r1, #22600	@ tmp219,
	mov	lr, #0	@ tmp220,
	mov	r0, r4	@, pCtx
	str	lr, [r4, r1]	@ tmp220, <variable>.IPVopErr
	bl	MP4_SetImgFormat	@
	movw	r0, #22060	@ tmp222,
	ldr	r3, [r4, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, #1	@ <variable>.s32DecOrderOutput,
	beq	.L550	@,
	movw	r2, #21912	@ tmp224,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L551	@,
	movw	r1, #22968	@ tmp226,
	movw	r3, #22968	@ tmp230,
	ldr	lr, [r4, r1]	@ <variable>.RefNum, <variable>.RefNum
	movw	r0, #22992	@ tmp229,
	ldr	ip, [r4, r3]	@ <variable>.RefNum, <variable>.RefNum
	cmp	lr, #1	@ <variable>.RefNum,
	movwgt	lr, #22972	@ tmp228,
	mvnle	r1, #0	@ prephitmp.2054,
	ldrgt	r1, [r4, lr]	@ prephitmp.2054, <variable>.FwdFsID
	cmp	ip, #1	@ <variable>.RefNum,
	movwgt	ip, #22976	@ tmp232,
	ldrgtb	r7, [r4, #0]	@ zero_extendqisi2	@ ToQueCodingType, <variable>.FwdCodingType
	ldrgt	sl, [r4, ip]	@ ToQueTimePP, <variable>.FwdTimePP
	mvnle	sl, #0	@ ToQueTimePP,
	movle	r7, sl	@ ToQueCodingType, ToQueTimePP
	str	r1, [r4, r0]	@ prephitmp.2054, <variable>.ToQueFsID
.L555:
	cmn	r1, #1	@ prephitmp.2054,
	beq	.L557	@,
	movw	r6, #22960	@ tmp241,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pToQueImg,
	beq	.L566	@,
	cmp	sl, #0	@ ToQueTimePP,
	cmpeq	r7, #4	@, ToQueCodingType,
	movne	sl, #0	@, tmp249
	moveq	sl, #1	@, tmp249
	beq	.L568	@,
	ldr	r3, [r5, #180]	@ D.38808, <variable>.error_level
	cmp	r3, #0	@ D.38808,
	beq	.L560	@,
	movw	r2, #22060	@ tmp282,
	ldr	r1, [r4, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r1, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	r3, lr	@ D.38808, <variable>.s32OutErrThr
	bhi	.L561	@,
.L560:
	movw	r6, #22960	@ tmp284,
	movw	sl, #22992	@ tmp286,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.ToQueFsID
	bl	FSP_GetLogicFs	@
	subs	r9, r0, #0	@ pstLogicFs,
	beq	.L569	@,
	cmp	r7, #2	@ ToQueCodingType,
	beq	.L563	@,
	ldrsb	r0, [r9, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #2	@ <variable>.s32DispState,
	beq	.L563	@,
	bl	vfmw_dprint_nothing	@
.L557:
	movw	lr, #22552	@ tmp333,
	mov	r0, #0	@ D.38740,
	ldr	r1, [r4, lr]	@ <variable>.FrameNum, <variable>.FrameNum
	add	ip, r1, #1	@ tmp336, <variable>.FrameNum,
	str	ip, [r4, lr]	@ tmp336, <variable>.FrameNum
.L547:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L563:
	movw	r6, #22960	@ tmp301,
	movw	r7, #22992	@ tmp303,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r8, #80	@, tmp338,
	mov	r1, #2	@,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L557	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r8, #0	@ tmp312,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r5, #192]	@ tmp312, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r5, #196]	@ tmp312, <variable>.p_usrdat
	mov	r2, r8	@, tmp312
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38740,
	b	.L547	@
.L550:
	movw	r3, #22988	@ tmp237,
	movw	r0, #21912	@ tmp239,
	ldr	r1, [r4, r3]	@ prephitmp.2054, <variable>.CurFsID
	movw	ip, #22004	@ tmp240,
	movw	r2, #22992	@ tmp238,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ ToQueCodingType, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldr	sl, [r4, ip]	@ ToQueTimePP, <variable>.MP4Syntax.time_pp
	str	r1, [r4, r2]	@ prephitmp.2054, <variable>.ToQueFsID
	b	.L555	@
.L551:
	movw	sl, #22988	@ tmp233,
	cmp	fp, #0	@ pBwdImg,
	ldr	r1, [r4, sl]	@ prephitmp.2054, <variable>.CurFsID
	movw	ip, #22992	@ tmp234,
	movw	r7, #22004	@ tmp235,
	ldr	sl, [r4, r7]	@ ToQueTimePP, <variable>.MP4Syntax.time_pp
	str	r1, [r4, ip]	@ prephitmp.2054, <variable>.ToQueFsID
	beq	.L556	@,
	ldrd	r2, [fp, #8]	@, pBwdImg,
	strd	r2, [sp, #16]	@,,
	ldrd	r6, [r9, #8]	@, pCurImg,
	strd	r6, [sp, #8]	@,,
	cmp	r2, r6	@,
	sbcs	r7, r3, r7	@,,
	bge	.L556	@,
	strd	r2, [r9, #8]	@, pCurImg,
	mov	r7, r0	@ ToQueCodingType, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldrd	r2, [sp, #8]	@,,
	strd	r2, [fp, #8]	@, pBwdImg,
	ldr	r1, [r4, ip]	@ prephitmp.2054, <variable>.ToQueFsID
	b	.L555	@
.L556:
	mov	r7, #2	@ ToQueCodingType,
	b	.L555	@
.L561:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r5, #192]	@ tmp249, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r3, #22992	@ tmp331,
	str	sl, [r5, #196]	@ tmp249, <variable>.p_usrdat
	mov	r2, sl	@, tmp249
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	b	.L557	@
.L566:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38740,
	b	.L547	@
.L567:
	movw	r8, #22600	@ tmp179,
	mov	r9, #1	@ tmp180,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r9, [r4, r8]	@ tmp180, <variable>.IPVopErr
	ldr	r1, [r4, r6]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L549	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	sl, #0	@ tmp197,
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r8, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r8, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r8, #204]	@ tmp197, <variable>.p_usrdat
	str	sl, [r8, #192]	@ tmp197, <variable>.p_usrdat
	mov	r2, r9	@, tmp180
	str	sl, [r8, #196]	@ tmp197, <variable>.p_usrdat
	str	sl, [r8, #200]	@ tmp197, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	mov	r2, r9	@, tmp180
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	bl	FSP_ClearLogicFs	@
	str	sl, [r4, r6]	@ tmp197, <variable>.BwdFsID
	str	sl, [r4, r7]	@ tmp197, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.38759, <variable>.FwdFsID
	str	r0, [r4, r6]	@ D.38759, <variable>.BwdFsID
.L549:
	movw	r2, #22968	@ tmp217,
	mov	r1, #0	@ tmp218,
	mvn	r0, #0	@ D.38740,
	str	r1, [r4, r2]	@ tmp218, <variable>.RefNum
	b	.L547	@
.L568:
	ldr	ip, [r4, r6]	@ temp.2098, <variable>.ChanID
	movw	r0, #:lower16:g_VfmwChanStat	@ tmp251,
	movt	r0, #:upper16:g_VfmwChanStat	@ tmp251,
	mov	r7, #0	@ tmp272,
	add	r3, ip, ip, asl #1	@, tmp255, temp.2098, temp.2098,
	add	r1, r0, r3, asl #3	@, tmp257, tmp251, tmp255,
	ldr	r2, [r1, #16]	@ <variable>.u32SkipDiscard, <variable>.u32SkipDiscard
	add	lr, r2, #1	@ tmp268, <variable>.u32SkipDiscard,
	str	lr, [r1, #16]	@ tmp268, <variable>.u32SkipDiscard
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r5, #192]	@ tmp272, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	ip, #22992	@ tmp279,
	str	r7, [r5, #196]	@ tmp272, <variable>.p_usrdat
	mov	r2, r7	@, tmp272
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38740,
	b	.L547	@
.L569:
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
	ldr	r1, [r4, sl]	@, <variable>.ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.38740,
	b	.L547	@
	.fnend
	.size	MPEG4DEC_VDMPostProc, .-MPEG4DEC_VDMPostProc
	.align	2
	.type	MP4_FlushFrameToVo, %function
MP4_FlushFrameToVo:
	.fnstart
.LFB1932:
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
	beq	.L572	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r6, r0	@ display_flag,
	movne	r0, #1	@ ret,
	beq	.L576	@,
.L572:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L576:
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
	beq	.L572	@,
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
	b	.L572	@
	.fnend
	.size	MP4_FlushFrameToVo, .-MP4_FlushFrameToVo
	.align	2
	.global	MPEG4DEC_GetRemainImg
	.type	MPEG4DEC_GetRemainImg, %function
MPEG4DEC_GetRemainImg:
	.fnstart
.LFB1947:
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
	beq	.L589	@,
	movw	r6, #22960	@ tmp143,
	movw	r5, #22980	@ tmp145,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L589	@,
	ldr	r1, [r4, r5]	@, <variable>.BwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r8, r0	@ display_flag,
	beq	.L587	@,
.L589:
	add	r5, r4, #22528	@ tmp175, pCtx,
	add	r5, r5, #80	@ tmp175, tmp175,
.L578:
	mov	r0, r5	@, tmp175
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	GetVoLastImageID	@
.L587:
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
	beq	.L579	@,
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
	b	.L578	@
.L579:
	ldr	r2, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L578	@,
	ldr	lr, [r7, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	lr, #31	@ <variable>.image_width,
	bls	.L578	@,
	ldr	r3, [r7, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r3, #31	@ <variable>.image_height,
	bls	.L578	@,
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
.LFB1943:
	@ args = 0, pretend = 0, frame = 776
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #780
	sub	sp, sp, #780	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	bl	vfmw_dprint_nothing	@
	cmp	r4, #0	@ pCtx,
	cmpne	r5, #0	@, pstExtraData,
	beq	.L591	@,
	ldr	r3, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r3, #1	@ <variable>.s32KeepSPSPPS,
	beq	.L598	@,
.L592:
	movw	r6, #22952	@ tmp169,
	movw	r1, #23008	@,
	ldr	r7, [r4, r6]	@ D.38407, <variable>.ImageQue.ResetMagicWord
	mov	r0, r4	@, pCtx
	bl	__memzero	@
	add	r1, r4, #22528	@, pCtx,
	add	r0, r1, #80	@,,
	str	r7, [r4, r6]	@ D.38407, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r0, #22060	@ tmp173,
	str	r5, [r4, r0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r2, #22960	@ tmp174,
	cmn	r0, #1	@ D.38415,
	str	r0, [r4, r2]	@ D.38415, <variable>.ChanID
	beq	.L599	@,
	mov	r0, r4	@, pCtx
	bl	Global_Data_Init	@
	subs	r6, r0, #0	@ D.38419,
	beq	.L600	@,
.L591:
	mvn	r0, #0	@ D.38403,
.L594:
	add	sp, sp, #780	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L600:
	movw	ip, #22576	@ tmp177,
	movw	r3, #22548	@ tmp175,
	mov	lr, #1	@ tmp176,
	str	r6, [r4, ip]	@ D.38419, <variable>.PPicFound
	str	lr, [r4, r3]	@ tmp176, <variable>.InitComplete
	bl	vfmw_dprint_nothing	@
	ldr	r5, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	r5, #1	@ <variable>.s32KeepSPSPPS,
	beq	.L595	@,
	mov	r0, r6	@ D.38403, D.38419
	b	.L594	@
.L598:
	add	r7, r4, #21248	@, pCtx,
	mov	r2, #768	@,
	add	r1, r7, #20	@,,
	add	r6, r4, #19968	@ tmp157, pCtx,
	mov	r0, sp	@,
	bl	memcpy	@
	add	lr, r6, #8	@ tmp157, tmp157,
	add	ip, sp, #16	@ tmp155,,
	add	r6, sp, #768	@ tmp165,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp205,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp155,,,,
	ldmia	lr, {r0, r1}	@ tmp205,,
	mov	r2, #604	@,
	stmia	ip, {r0, r1}	@ tmp206,,
	add	r1, r4, #19968	@, pCtx,
	add	r1, r1, #32	@,,
	add	r0, sp, #40	@,,
	bl	memcpy	@
	add	r0, r4, #22016	@ tmp166, pCtx,
	add	r7, r0, #20	@ tmp166, tmp166,
	ldmia	r7, {r0, r1}	@ tmp166,,
	mov	r2, r1, lsr #16	@ tmp167,,
	strb	r2, [r6, #6]	@ tmp167, MP4SyntaxState
	str	r0, [sp, #768]	@, MP4SyntaxState
	strh	r1, [r6, #4]	@ movhi	@, MP4SyntaxState
	b	.L592	@
.L599:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.38403,
	b	.L594	@
.L595:
	add	r2, r4, #21248	@, pCtx,
	mov	r1, sp	@,
	add	r0, r2, #20	@,,
	mov	r2, #768	@,
	bl	memcpy	@
	add	lr, sp, #16	@ tmp188,,
	add	ip, r4, #19968	@ tmp187, pCtx,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp209,,,,
	add	ip, ip, #8	@ tmp187, tmp187,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp187,,,,
	ldmia	lr, {r0, r1}	@ tmp209,,
	mov	r2, #604	@,
	stmia	ip, {r0, r1}	@ tmp210,,
	add	r1, r4, #19968	@, pCtx,
	add	r0, r1, #32	@,,
	add	r1, sp, #40	@,,
	bl	memcpy	@
	add	r0, r4, #22016	@, pCtx,
	mov	r2, #7	@,
	add	r0, r0, #20	@,,
	add	r1, sp, #768	@,,
	bl	memcpy	@
	movw	r2, #22997	@ tmp201,
	strb	r5, [r4, r2]	@ <variable>.s32KeepSPSPPS, <variable>.SeekReset
	mov	r0, r6	@ D.38403, D.38419
	b	.L594	@
	.fnend
	.size	MPEG4DEC_Init, .-MPEG4DEC_Init
	.global	__aeabi_uidiv
	.align	2
	.global	Mp4_RecordFrameAtr
	.type	Mp4_RecordFrameAtr, %function
Mp4_RecordFrameAtr:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r3, #21311	@ tmp150,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ D.38032, <variable>.MP4Syntax.syn_vol.aspect_ratio_info
	mov	r5, r0	@ pCtx, pCtx
	mov	r4, r1	@ id, id
	cmp	r3, #15	@ D.38032,
	beq	.L612	@,
	sub	r1, r3, #2	@ tmp173, D.38032,
	uxtb	ip, r1	@ tmp174, tmp173
	cmp	ip, #1	@ tmp174,
	bls	.L606	@,
	sub	lr, r3, #4	@ tmp175, D.38032,
	uxtb	r2, lr	@ tmp176, tmp175
	cmp	r2, #1	@ tmp176,
	bls	.L607	@,
	cmp	r3, #1	@ D.38032,
	moveq	r6, #5	@ aspect_ratio,
	beq	.L608	@,
.L603:
	mov	r6, #0	@ aspect_ratio,
.L608:
	mov	r1, r4	@, id
	movw	r4, #22960	@ tmp177,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L614:
	movw	r1, #21976	@ tmp179,
	movw	r2, #21972	@ tmp181,
	ldr	lr, [r5, r1]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	mov	r1, r6	@, aspect_ratio
	str	lr, [r4, #144]	@ <variable>.MP4Syntax.image_width, <variable>.image_width
	ldr	ip, [r5, r2]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	ip, [r4, #148]	@ <variable>.MP4Syntax.image_height, <variable>.image_height
	bl	SetAspectRatio	@
	movw	r0, #22060	@ tmp184,
	ldr	r3, [r5, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r7, #25	@ <variable>.eCapLevel,
	beq	.L613	@,
.L610:
	movw	r0, #21976	@ tmp199,
	movw	r1, #21972	@ tmp201,
	ldr	r7, [r5, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	movw	r2, #21912	@ tmp214,
	str	r7, [r4, #152]	@ <variable>.MP4Syntax.image_width, <variable>.disp_width
	mov	r7, #0	@ tmp239,
	ldr	r3, [r5, r1]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	str	r3, [r4, #156]	@ <variable>.MP4Syntax.image_height, <variable>.disp_height
	movw	r3, #22060	@ tmp249,
	ldr	lr, [r5, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	mov	ip, lr, lsr #1	@ tmp205, <variable>.MP4Syntax.image_width,
	str	ip, [r4, #160]	@ tmp205, <variable>.disp_center_x
	ldr	r0, [r5, r1]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	movw	ip, #22540	@ tmp209,
	mov	lr, r0, lsr #1	@ tmp208, <variable>.MP4Syntax.image_height,
	str	lr, [r4, #164]	@ tmp208, <variable>.disp_center_y
	ldr	r1, [r5, ip]	@ <variable>.ImgCntOfSeq, <variable>.ImgCntOfSeq
	movw	r0, #22536	@ tmp211,
	movw	ip, #21917	@ tmp217,
	str	r1, [r4, #188]	@ <variable>.ImgCntOfSeq, <variable>.seq_img_cnt
	movw	r1, #21289	@ tmp222,
	ldr	lr, [r5, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	movw	r0, #21318	@ tmp227,
	str	lr, [r4, #184]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldrb	lr, [r5, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.top_field_first, <variable>.MP4Syntax.syn_vop.top_field_first
	ldrb	ip, [r5, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vos.video_format, <variable>.MP4Syntax.syn_vos.video_format
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	ldrb	r0, [r5, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vol.interlaced, <variable>.MP4Syntax.syn_vol.interlaced
	and	r1, r1, #3	@ tmp216, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	mov	ip, ip, asl #5	@ tmp224, <variable>.MP4Syntax.syn_vos.video_format,
	orr	r1, r1, lr, asl #12	@, tmp220, tmp216, <variable>.MP4Syntax.syn_vop.top_field_first,
	and	ip, ip, #255	@ tmp225, tmp224,
	orr	lr, r1, #3072	@ tmp221, tmp220,
	and	r0, r0, #1	@ tmp229, <variable>.MP4Syntax.syn_vol.interlaced,
	orr	r1, lr, ip	@ tmp226, tmp221, tmp225
	orr	ip, r1, r0, asl #8	@, tmp231, tmp226, tmp229,
	movw	r0, #22580	@ tmp240,
	orr	r6, ip, r6, asl #14	@, tmp232, tmp231, aspect_ratio,
	str	r6, [r4, #140]	@ tmp232, <variable>.format
	ldrb	lr, [r5, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	and	r1, lr, #3	@ tmp235, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	str	r1, [r4, #132]	@ tmp235, <variable>.top_fld_type
	ldrb	ip, [r5, r2]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	movw	r1, #22584	@ tmp242,
	str	r7, [r4, #128]	@ tmp239, <variable>.is_fld_save
	and	r2, ip, #3	@ tmp238, <variable>.MP4Syntax.syn_vop.vop_coding_type,
	str	r2, [r4, #136]	@ tmp238, <variable>.bottom_fld_type
	ldr	lr, [r5, r0]	@ <variable>.UsrData, <variable>.UsrData
	movw	r2, #22588	@ tmp244,
	str	lr, [r4, #192]	@ <variable>.UsrData, <variable>.p_usrdat
	movw	lr, #22592	@ tmp246,
	ldr	ip, [r5, r1]	@ <variable>.UsrData, <variable>.UsrData
	str	ip, [r4, #196]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	r0, [r5, r2]	@ <variable>.UsrData, <variable>.UsrData
	str	r0, [r4, #200]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	r1, [r5, lr]	@ <variable>.UsrData, <variable>.UsrData
	str	r1, [r4, #204]	@ <variable>.UsrData, <variable>.p_usrdat
	ldr	ip, [r5, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [ip, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r0, [r4, #8]	@ <variable>.pts, pImg,
	ldr	r2, [r5, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [r2, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r0, [r4, #16]	@ <variable>.Usertag, pImg,
	ldr	lr, [r5, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [lr, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r0, [r4, #24]	@ <variable>.DispTime, pImg,
	mvn	r0, #0	@ tmp271,
	ldr	ip, [r5, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r1, #0	@,
	ldr	r2, [ip, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r4, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r5, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r2, [r5, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r4, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	ip, [r5, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r2, [r4, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	lr, [r5, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r0, [lr, #56]	@ tmp271, <variable>.pstExtraData,
	bl	vfmw_dprint_nothing	@
	mov	r3, #8	@ tmp277,
	mov	ip, #2	@ tmp272,
	mov	r2, #1	@ tmp280,
	strb	r7, [r4, #295]	@ tmp239, <variable>.ImageDnr.use_pic_qp_en
	strb	r7, [r4, #288]	@ tmp239, <variable>.ImageDnr.pic_structure
	str	r3, [r4, #308]	@ tmp277, <variable>.ImageDnr.QP_U
	str	ip, [r4, #300]	@ tmp272, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #293]	@ tmp280, <variable>.ImageDnr.chroma_format_idc
	str	r3, [r4, #304]	@ tmp277, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp277, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L612:
	movw	r0, #21340	@ tmp151,
	movw	r2, #21344	@ tmp152,
	ldr	r3, [r5, r0]	@ sar_width, <variable>.MP4Syntax.syn_vol.par_width
	ldr	r2, [r5, r2]	@ D.38038, <variable>.MP4Syntax.syn_vol.par_height
	cmp	r3, #0	@ sar_width,
	cmpne	r2, #0	@, D.38038,
	beq	.L603	@,
	movw	r6, #21392	@ tmp160,
	ldr	r1, [r5, r6]	@ <variable>.MP4Syntax.syn_vol.video_object_layer_height, <variable>.MP4Syntax.syn_vol.video_object_layer_height
	mul	r1, r1, r2	@ D.38047, <variable>.MP4Syntax.syn_vol.video_object_layer_height, D.38038
	cmp	r1, #0	@ D.38047,
	beq	.L603	@,
	movw	r0, #21388	@ tmp163,
	mov	r6, r3, asl #10	@ tmp162, sar_width,
	ldr	lr, [r5, r0]	@ <variable>.MP4Syntax.syn_vol.video_object_layer_width, <variable>.MP4Syntax.syn_vol.video_object_layer_width
	mul	r0, lr, r6	@, <variable>.MP4Syntax.syn_vol.video_object_layer_width, tmp162
	bl	__aeabi_uidiv	@
	sub	r2, r0, #1360	@ iftmp.616, true_dar,
	sub	r1, r0, #1808	@ iftmp.617, true_dar,
	sub	ip, r2, #5	@ iftmp.616, iftmp.616,
	sub	r3, r1, #12	@ iftmp.617, iftmp.617,
	cmp	ip, #0	@ iftmp.616,
	rsblt	ip, r0, #1360	@ tmp170, true_dar,
	addlt	ip, ip, #5	@ iftmp.616, tmp170,
	cmp	r3, #0	@ iftmp.617,
	rsblt	r3, r0, #1808	@ tmp172, true_dar,
	addlt	r3, r3, #12	@ iftmp.617, tmp172,
	cmp	ip, r3	@ iftmp.616, iftmp.617
	bge	.L607	@,
.L606:
	mov	r1, r4	@, id
	movw	r4, #22960	@ tmp177,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r6, #1	@ aspect_ratio,
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	bne	.L614	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L607:
	mov	r1, r4	@, id
	movw	r4, #22960	@ tmp177,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r6, #2	@ aspect_ratio,
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	bne	.L614	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L613:
	ldr	r7, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.38093, <variable>.image_stride
	add	r1, r7, #15	@ tmp187, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r7, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	ip, r2, asl #4	@ tmp186, D.38093,
	mov	lr, r1, lsr #4	@ tmp189, tmp187,
	add	r0, r3, r2	@ tmp194, <variable>.luma_phy_addr, D.38093
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r1, lr, ip	@ D.38099, tmp189, tmp186
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #96]	@ tmp194, <variable>.btm_luma_phy_addr
	str	r7, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	add	r3, r1, r3	@ tmp191, D.38099, <variable>.luma_phy_addr
	add	ip, r7, r1	@ tmp193, <variable>.luma_vir_addr, D.38099
	add	r0, r3, r2	@ tmp195, tmp191, D.38093
	str	ip, [r4, #36]	@ tmp193, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp195, <variable>.btm_chrom_phy_addr
	mov	r0, r3	@, tmp191
	str	r3, [r4, #108]	@ tmp191, <variable>.chrom_phy_addr
	str	r3, [r4, #92]	@ tmp191, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r7, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r7, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L610	@
	.fnend
	.size	Mp4_RecordFrameAtr, .-Mp4_RecordFrameAtr
	.align	2
	.global	Mp4_Frame_Atr
	.type	Mp4_Frame_Atr, %function
Mp4_Frame_Atr:
	.fnstart
.LFB1940:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #21912	@ tmp140,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ D.38157, <variable>.MP4Syntax.syn_vop.vop_coding_type
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #4	@ D.38157,
	strb	r3, [r0, #2]	@ D.38157, <variable>.CurCodingType
	beq	.L622	@,
.L616:
	movw	ip, #22960	@ tmp163,
	mov	r1, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r3, #22988	@ tmp165,
	cmp	r0, #0	@ D.38164,
	str	r0, [r4, r3]	@ D.38164, <variable>.CurFsID
	blt	.L617	@,
	movw	r1, #22964	@ tmp166,
	ldr	lr, [r4, r1]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	lr, #0	@ <variable>.FspPartitionOK,
	bne	.L618	@,
.L617:
	movw	r5, #22960	@ tmp168,
	movw	r8, #22980	@ tmp170,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L619	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp184,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movw	sl, #22972	@ tmp194,
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
	str	r7, [r6, #204]	@ tmp184, <variable>.p_usrdat
	str	r7, [r6, #192]	@ tmp184, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r7, [r6, #196]	@ tmp184, <variable>.p_usrdat
	str	r7, [r6, #200]	@ tmp184, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, r8]	@ tmp184, <variable>.BwdFsID
	str	r7, [r4, sl]	@ tmp184, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.38179, <variable>.FwdFsID
	str	r0, [r4, r8]	@ D.38179, <variable>.BwdFsID
.L619:
	add	r0, r4, #22528	@, pCtx,
	movw	ip, #22960	@ tmp206,
	movw	r3, #22968	@ tmp204,
	add	r1, r0, #80	@,,
	mov	r2, #0	@ tmp205,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, r3]	@ tmp205, <variable>.RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L622:
	movw	r0, #22960	@ tmp142,
	movw	ip, #:lower16:g_VfmwChanStat	@ tmp143,
	ldr	r2, [r4, r0]	@ D.38161, <variable>.ChanID
	movt	ip, #:upper16:g_VfmwChanStat	@ tmp143,
	add	r1, r2, r2, asl #1	@, tmp146, D.38161, D.38161,
	add	lr, r1, #1	@ tmp147, tmp146,
	add	r2, ip, lr, asl #3	@, tmp150, tmp143, tmp147,
	ldr	r0, [r2, r3]	@ <variable>.u32SkipFind, <variable>.u32SkipFind
	add	r1, r0, #1	@ tmp162, <variable>.u32SkipFind,
	str	r1, [r2, r3]	@ tmp162, <variable>.u32SkipFind
	b	.L616	@
.L618:
	mov	r1, r0	@, D.38164
	mov	r0, r4	@, pCtx
	bl	Mp4_RecordFrameAtr	@
	movw	r2, #22544	@ tmp210,
	mov	r1, #0	@ tmp211,
	mov	r0, #0	@,
	str	r1, [r4, r2]	@ tmp211, <variable>.ErrorLevel
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	Mp4_Frame_Atr, .-Mp4_Frame_Atr
	.align	2
	.global	Frame_Init
	.type	Frame_Init, %function
Frame_Init:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #22060	@ tmp156,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r0, r3]	@ D.37866, <variable>.pstExtraData
	mov	r4, r0	@ pCtx, pCtx
	.pad #76
	sub	sp, sp, #76	@,,
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L624	@,
	ldr	ip, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L649	@,
.L625:
	mov	sl, #2	@,
	mov	r7, r2	@ PicHeight.2329, PicHeight
	str	sl, [sp, #28]	@, %sfp
	mov	r6, r1	@ PicWidth.2328, PicWidth
	mov	r8, #5	@ DispFsNum,
	mov	sl, #3	@ DecFsNum,
.L632:
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp166,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp166,
	ldr	ip, [r2, #36]	@ D.37898, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37898,
	beq	.L645	@,
	movw	r0, #22960	@ tmp172,
	ldr	r1, [r3, #28]	@ <variable>.s32SyntaxMemSize, <variable>.s32SyntaxMemSize
	ldr	lr, [r4, r0]	@ <variable>.ChanID, <variable>.ChanID
	mov	fp, #2	@ tmp169,
	ldr	r0, [r3, #24]	@ <variable>.s32SyntaxMemAddr, <variable>.s32SyntaxMemAddr
	mov	r5, #0	@ tmp171,
	str	fp, [sp, #0]	@ tmp169,
	mov	r3, #40	@ tmp170,
	str	r5, [sp, #8]	@ tmp171,
	mov	fp, #64	@ tmp175,
	str	r3, [sp, #4]	@ tmp170,
	movw	r5, #:lower16:.LANCHOR2	@ tmp174,
	str	fp, [sp, #20]	@ tmp175,
	movt	r5, #:upper16:.LANCHOR2	@ tmp174,
	str	lr, [sp, #12]	@ <variable>.ChanID,
	mov	r2, r6	@, PicWidth.2328
	str	r5, [sp, #16]	@ tmp174,
	mov	r3, r7	@, PicHeight.2329
	blx	ip	@ D.37898
	subs	fp, r0, #0	@ D.37905,
	bne	.L645	@,
	ldr	r1, [r5, #404]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	cmp	r1, #1	@ MemArrange.ValidPMVNum,
	ble	.L645	@,
	ldr	ip, [r5, #276]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	ip, #2	@ MemArrange.ValidFrameNum,
	ble	.L645	@,
	ldr	lr, [r5, #8]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	movw	r1, #22080	@ tmp180,
	add	r9, sp, #32	@ tmp216,,
	str	lr, [r4, r1]	@ MemArrange.FrameAddr, <variable>.VdmMemAllot.frame_phy_addr
	ldr	r0, [r5, #8]	@, MemArrange.FrameAddr
	movw	r5, #22068	@ tmp185,
	bl	MEM_Phy2Vir	@
	mov	r1, #36	@,
	str	r0, [r4, r5]	@, <variable>.VdmMemAllot.frame_vir_addr
	mov	r0, r9	@, tmp216
	bl	__memzero	@
	movw	r3, #22060	@ tmp188,
	ldr	r2, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #22060	@ tmp199,
	ldr	r5, [r2, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	strb	fp, [sp, #34]	@, FspInstCfg.s32RprEnable
	str	r6, [sp, #60]	@ PicWidth.2328, FspInstCfg.s32DispFsWidth
	strb	r5, [sp, #32]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r7, [sp, #64]	@ PicHeight.2329, FspInstCfg.s32DispFsHeight
	str	r6, [sp, #44]	@ PicWidth.2328, FspInstCfg.s32DecFsWidth
	str	r7, [sp, #48]	@ PicHeight.2329, FspInstCfg.s32DecFsHeight
	ldr	ip, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	mov	r2, #0	@ tmp202,
	cmp	ip, #24	@ <variable>.eCapLevel,
	uxtbne	fp, sl	@ iftmp.611, DecFsNum
	strb	fp, [sp, #37]	@, FspInstCfg.s32ExpectedDecFsNum
	ldr	r0, [r4, r1]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r1, r9	@, tmp216
	strb	r8, [sp, #39]	@ DispFsNum, FspInstCfg.s32ExpectedDispFsNum
	ldr	r3, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #24	@ <variable>.eCapLevel,
	ldrne	r5, [sp, #28]	@, %sfp
	moveq	r3, #1	@ iftmp.612,
	uxtbne	r3, r5	@ iftmp.612,
	movw	r5, #22960	@ tmp204,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	strb	r3, [sp, #40]	@ iftmp.612, FspInstCfg.s32ExpectedPmvNum
	strb	r2, [sp, #36]	@ tmp202, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	cmp	r0, #0	@,
	bne	.L645	@,
	movw	r2, #22060	@ tmp207,
	add	r3, sp, #68	@,,
	ldr	ip, [r4, r2]	@ temp.2344, <variable>.pstExtraData
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r2, [ip, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [ip, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@ Ret
	movweq	r3, #22964	@ tmp213,
	moveq	r2, #1	@ tmp214,
	streq	r2, [r4, r3]	@ tmp214, <variable>.FspPartitionOK
	bne	.L645	@,
.L628:
	add	sp, sp, #76	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L624:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L625	@,
	ldr	ip, [r3, #568]	@ <variable>.stChanOption.s32MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r1, ip	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	bhi	.L645	@,
	ldr	r0, [r3, #572]	@ <variable>.stChanOption.s32MaxHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r2, r0	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L645	@,
	ldr	r6, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r3, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r6, #1	@,
	streq	r6, [sp, #28]	@, %sfp
	beq	.L636	@,
	add	r7, sl, #1	@ PmvNum.2335, DecFsNum,
	cmp	r7, #17	@ PmvNum.2335,
	movge	r7, #17	@ PmvNum.2335,
	str	r7, [sp, #28]	@ PmvNum.2335, %sfp
.L636:
	mov	r7, r2	@ PicHeight.2329, PicHeight
	mov	r6, r1	@ PicWidth.2328, PicWidth
.L648:
	ldr	r8, [r3, #616]	@ DispFsNum, <variable>.stChanOption.s32DisplayFrameNum
	b	.L632	@
.L645:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37878,
	b	.L628	@
.L649:
	ldr	r6, [r3, #568]	@ PicWidth.2328, <variable>.stChanOption.s32MaxWidth
	cmp	r6, r1	@ PicWidth.2328, PicWidth
	bcc	.L645	@,
	ldr	r7, [r3, #572]	@ PicHeight.2329, <variable>.stChanOption.s32MaxHeight
	cmp	r7, r2	@ PicHeight.2329, PicHeight
	bcc	.L645	@,
	movw	r1, #22964	@ tmp159,
	ldr	r2, [r4, r1]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r2, #1	@ <variable>.FspPartitionOK,
	beq	.L628	@,
	ldr	r8, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r3, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r8, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r0, #1	@,
	streq	r0, [sp, #28]	@, %sfp
	beq	.L648	@,
	add	r0, sl, #1	@ PmvNum.2330, DecFsNum,
	cmp	r0, #17	@ PmvNum.2330,
	movge	r0, #17	@ PmvNum.2330,
	str	r0, [sp, #28]	@ PmvNum.2330, %sfp
	ldr	r8, [r3, #616]	@ DispFsNum, <variable>.stChanOption.s32DisplayFrameNum
	b	.L632	@
	.fnend
	.size	Frame_Init, .-Frame_Init
	.align	2
	.global	Mp4_GetUserDataBuf
	.type	Mp4_GetUserDataBuf, %function
Mp4_GetUserDataBuf:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r1, r2, asl #2]	@ prephitmp.2361,* pUserData
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ prephitmp.2361,
	beq	.L653	@,
.L651:
	mov	r0, r3	@, prephitmp.2361
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L653:
	str	r1, [sp, #4]	@,
	str	r2, [sp, #0]	@,
	bl	GetUsd	@
	ldr	r2, [sp, #0]	@,
	ldr	r1, [sp, #4]	@,
	cmp	r0, #0	@ prephitmp.2361,
	mov	r3, r0	@ prephitmp.2361,
	str	r0, [r1, r2, asl #2]	@ prephitmp.2361,* pUserData
	addne	r0, r2, #4	@ tmp140, UserID,
	strne	r0, [r3, #1036]	@ tmp140, <variable>.from
	ldrne	r3, [r1, r2, asl #2]	@ prephitmp.2361,* pUserData
	b	.L651	@
	.fnend
	.size	Mp4_GetUserDataBuf, .-Mp4_GetUserDataBuf
	.align	2
	.global	Mp4_Syntax_UserData
	.type	Mp4_Syntax_UserData, %function
Mp4_Syntax_UserData:
	.fnstart
.LFB1927:
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
	bgt	.L660	@,
	b	.L702	@
.L692:
	ldrb	r0, [r1, r5]	@ zero_extendqisi2	@ D.36755,* i
	orr	r3, r3, r0	@ D.36757, monitor, D.36755
	mov	r3, r3, asl #8	@ monitor, D.36757,
	cmp	r3, #256	@ monitor,
	beq	.L693	@,
	add	r5, r5, #1	@ i, i,
	strb	r0, [ip, #3]	@ D.36755, <variable>.TmpUserData
	cmp	r2, r5	@ len, i
	add	r7, r7, #1	@ userdata_len, userdata_len,
	ble	.L658	@,
.L660:
	ldrb	r0, [r1, r5]	@ zero_extendqisi2	@ D.36755,* i
	add	ip, r4, r7	@ tmp173, pCtx, userdata_len
	orr	r3, r3, r0	@ D.36757, monitor, D.36755
	mov	r3, r3, asl #8	@ monitor, D.36757,
	cmp	r3, #256	@ monitor,
	beq	.L693	@,
	add	r7, r7, #1	@ userdata_len, userdata_len,
	strb	r0, [ip, #3]	@ D.36755, <variable>.TmpUserData
	cmp	r7, r6	@ userdata_len, tmp323
	add	ip, r4, r7	@ tmp330, pCtx, userdata_len
	beq	.L695	@,
	add	r5, r5, #1	@ i, i,
	cmp	r2, r5	@ len, i
	bgt	.L692	@,
.L658:
	cmp	r5, r2	@ i, len
	addgt	r2, r2, #1	@ tmp318, len,
	movgt	r5, r2, asl #3	@ BitUsed, tmp318,
	bgt	.L656	@,
.L697:
	cmp	r7, #2	@ userdata_len,
	movw	r2, #22042	@ tmp180,
	mov	ip, #1	@ tmp181,
	mov	r5, r5, asl #3	@ BitUsed, i,
	strb	ip, [r4, r2]	@ tmp181, <variable>.MP4SyntaxState.userdata_decode_right
	bhi	.L696	@,
.L656:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L702:
	add	r2, r2, #1	@ tmp172, len,
	movw	r3, #22042	@ tmp169,
	strb	r7, [r0, r3]	@ tmp163, <variable>.MP4SyntaxState.userdata_decode_right
	mov	r5, r2, asl #3	@ BitUsed, tmp172,
	b	.L656	@
.L693:
	sub	r5, r5, #2	@ i, i,
	cmp	r5, r2	@ i, len
	addgt	r2, r2, #1	@ tmp318, len,
	movgt	r5, r2, asl #3	@ BitUsed, tmp318,
	bgt	.L656	@,
	b	.L697	@
.L696:
	movw	lr, #22960	@ tmp183,
	add	sl, r4, #22528	@, pCtx,
	movw	r8, #22572	@ tmp187,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r1, sl, #52	@,,
	ldr	r2, [r4, r8]	@, <variable>.UserID
	bl	Mp4_GetUserDataBuf	@
	movw	r3, #22596	@ tmp189,
	cmp	r0, #0	@ D.36771,
	str	r0, [r4, r3]	@ D.36771, <variable>.CurUsrData
	addeq	r9, r7, #-2147483646	@ prephitmp.2400, userdata_len,
	addeq	r6, r4, #3	@ buf, pCtx,
	beq	.L663	@,
	adds	r9, r7, #-2147483648	@ prephitmp.2400, userdata_len,
	sub	r8, r7, #2	@ userdata_len.2428, userdata_len,
	str	r8, [r0, #1048]	@ userdata_len.2428, <variable>.data_size
	movpl	r2, #0	@ iftmp.514,
	ldr	r0, [r4, r3]	@ D.36772, <variable>.CurUsrData
	bmi	.L698	@,
.L665:
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
	ldr	r3, [r3, #0]	@ g_event_report.515, g_event_report
	cmp	r3, #0	@ g_event_report.515,
	moveq	r7, r8	@ userdata_len, userdata_len.2428
	beq	.L663	@,
	ldr	sl, [r4, r2]	@ <variable>.CurUsrData, <variable>.CurUsrData
	add	r2, sp, #40	@ tmp207,,
	movw	r7, #22960	@ tmp205,
	mov	r1, #6	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r7, r8	@ userdata_len, userdata_len.2428
	str	sl, [r2, #-24]!	@ <variable>.CurUsrData, para
	blx	r3	@ g_event_report.515
.L663:
	cmp	r9, #0	@ prephitmp.2400,
	movge	r3, #0	@ tmp,
	blt	.L699	@,
.L668:
	add	lr, r4, r3	@ tmp209, pCtx, tmp
	add	sl, sp, #32	@ tmp320,,
	add	r8, sp, #28	@ tmp322,,
	mov	r2, #0	@ tmp211,
	mov	r0, r6	@, buf
	strb	r2, [lr, #3]	@ tmp211, <variable>.TmpUserData
	movw	r1, #:lower16:.LC0	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC0	@,
	mov	r3, r8	@, tmp322
	add	r7, sp, #39	@ last.518,,
	str	r7, [sp, #0]	@ last.518,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L700	@,
.L669:
	ldr	r2, [sp, #28]	@ build, build
	cmp	r0, #3	@ e,
	ldr	r0, [sp, #32]	@ ver, ver
	mov	r1, #22016	@ tmp219,
	movw	r3, #22020	@ tmp221,
	str	r2, [r4, r3]	@ build, <variable>.MP4Syntax.divx_build
	movne	r2, #0	@ prephitmp.2405,
	str	r0, [r4, r1]	@ ver, <variable>.MP4Syntax.divx_version
	beq	.L701	@,
.L672:
	movw	lr, #22024	@ tmp226,
	str	r2, [r4, lr]	@ prephitmp.2405, <variable>.MP4Syntax.divx_packed
.L670:
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC2	@,
	mov	r2, r8	@, tmp322
	movt	r1, #:upper16:.LC2	@,
	bl	sscanf	@
	cmp	r0, #1	@,
	beq	.L673	@,
	add	r9, sp, #24	@ tmp231,,
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC3	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC3	@,
	mov	r3, r9	@, tmp231
	str	r8, [sp, #4]	@ tmp322,
	add	r7, sp, #20	@ tmp232,,
	str	r7, [sp, #0]	@ tmp232,
	bl	sscanf	@
	cmp	r0, #4	@,
	beq	.L673	@,
	mov	r2, sl	@, tmp320
	mov	r3, r9	@, tmp231
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	str	r7, [sp, #0]	@ tmp232,
	bl	sscanf	@
	add	r0, r0, #1	@ e.2434,,
	cmp	r0, #1	@ e.2434,
	ble	.L674	@,
	ldr	ip, [sp, #24]	@ ver2, ver2
	cmp	r0, #4	@ e.2434,
	ldr	r0, [sp, #32]	@ ver, ver
	ldr	r3, [sp, #20]	@ ver3, ver3
	mov	r1, ip, asl #8	@ tmp240, ver2,
	add	r2, r1, r0, asl #16	@, tmp242, tmp240, ver,
	add	r3, r2, r3	@ prephitmp.2404, tmp242, ver3
	str	r3, [sp, #28]	@ prephitmp.2404, build
	beq	.L675	@,
.L674:
	mov	r2, #7	@,
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	strncmp	@
	cmp	r0, #0	@,
	movweq	r3, #22032	@ tmp246,
	movweq	r2, #4600	@ tmp247,
	streq	r2, [r4, r3]	@ tmp247, <variable>.MP4Syntax.lavc_build
.L676:
	mov	r2, r8	@, tmp322
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	sscanf	@
	movw	ip, #21282	@ tmp256,
	movw	r1, #21281	@ tmp253,
	cmp	r0, #1	@,
	movw	r0, #21279	@ tmp259,
	ldreq	r2, [sp, #28]	@ build, build
	movweq	r3, #22028	@ tmp251,
	streq	r2, [r4, r3]	@ build, <variable>.MP4Syntax.xvid_build
	movw	r3, #22028	@ tmp268,
	ldr	r2, [r4, r3]	@ prephitmp.2402, <variable>.MP4Syntax.xvid_build
	mov	r3, #0	@ tmp254,
	strb	r3, [r4, ip]	@ tmp254, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA2
	movw	ip, #21278	@ tmp262,
	cmp	r2, #0	@ prephitmp.2402,
	strb	r3, [r4, r0]	@ tmp254, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	movw	r0, #21280	@ tmp265,
	strb	r3, [r4, ip]	@ tmp254, <variable>.MP4Syntax.FF_BUG_EDGE_FIND_POINT
	strb	r3, [r4, r0]	@ tmp254, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	strb	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	bne	.L678	@,
	mov	lr, #22016	@ tmp269,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r2, #500	@ <variable>.MP4Syntax.divx_version,
	movcs	r2, #1	@ tmp280,
	strcsb	r2, [r4, r1]	@ tmp280, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	bcc	.L680	@,
.L682:
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
	ldr	ip, [r4, r3]	@ prephitmp.2442, <variable>.MP4Syntax.divx_version
	movw	r2, #498	@ tmp307,
	movwls	r1, #21279	@ tmp302,
	movls	r0, #1	@ tmp303,
	sub	lr, ip, #1	@ tmp306, prephitmp.2442,
	strlsb	r0, [r4, r1]	@ tmp303, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	lr, r2	@ tmp306, tmp307
	movwls	r2, #21279	@ tmp308,
	movls	lr, #1	@ tmp309,
	strlsb	lr, [r4, r2]	@ tmp309, <variable>.MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	ip, #500	@ prephitmp.2442,
	bne	.L656	@,
	movw	r0, #22020	@ tmp312,
	movw	r3, #413	@ tmp314,
	ldr	r2, [r4, r0]	@ <variable>.MP4Syntax.divx_build, <variable>.MP4Syntax.divx_build
	cmp	r2, r3	@ <variable>.MP4Syntax.divx_build, tmp314
	movweq	r3, #21280	@ tmp315,
	moveq	r2, #1	@ tmp316,
	streqb	r2, [r4, r3]	@ tmp316, <variable>.MP4Syntax.FF_BUG_DIVX500B413
	b	.L656	@
.L695:
	sub	r5, r5, #2	@ tmp176, i,
	movw	r1, #22042	@ tmp177,
	mov	r0, #0	@ tmp178,
	strb	r0, [r4, r1]	@ tmp178, <variable>.MP4SyntaxState.userdata_decode_right
	mov	r5, r5, asl #3	@ BitUsed, tmp176,
	b	.L656	@
.L673:
	ldr	r3, [sp, #28]	@ prephitmp.2404, build
.L675:
	movw	lr, #22032	@ tmp248,
	str	r3, [r4, lr]	@ prephitmp.2404, <variable>.MP4Syntax.lavc_build
	b	.L676	@
.L698:
	cmp	r7, #1024	@ userdata_len,
	movlt	r2, r7	@ iftmp.514, userdata_len
	movge	r2, #1024	@ iftmp.514,
	b	.L665	@
.L701:
	ldrsb	ip, [sp, #39]	@ last, last
	cmp	ip, #112	@ last,
	movne	r2, #0	@, prephitmp.2405
	moveq	r2, #1	@, prephitmp.2405
	b	.L672	@
.L678:
	mov	r1, #22016	@ tmp272,
	ldr	r0, [r4, r1]	@ <variable>.MP4Syntax.divx_version, <variable>.MP4Syntax.divx_version
	cmp	r0, #0	@ <variable>.MP4Syntax.divx_version,
	beq	.L681	@,
	str	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.divx_version
	movw	r1, #22020	@ tmp276,
	str	r3, [r4, r1]	@ tmp254, <variable>.MP4Syntax.divx_build
.L680:
	movw	r3, #22028	@ tmp278,
	ldr	r2, [r4, r3]	@ prephitmp.2402, <variable>.MP4Syntax.xvid_build
.L681:
	cmp	r2, #1	@ prephitmp.2402,
	movweq	r3, #21281	@ tmp283,
	streqb	r2, [r4, r3]	@ prephitmp.2402, <variable>.MP4Syntax.FF_BUG_QPEL_CHROMA
	b	.L682	@
.L699:
	add	r3, r7, #2	@ tmp, userdata_len,
	cmp	r3, #1024	@ tmp,
	movge	r3, #1024	@ tmp,
	b	.L668	@
.L700:
	mov	r0, r6	@, buf
	movw	r1, #:lower16:.LC1	@,
	mov	r2, sl	@, tmp320
	movt	r1, #:upper16:.LC1	@,
	mov	r3, r8	@, tmp322
	str	r7, [sp, #0]	@ last.518,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L670	@,
	b	.L669	@
	.fnend
	.size	Mp4_Syntax_UserData, .-Mp4_Syntax_UserData
	.align	2
	.global	Mp4_Syntax_Parse
	.type	Mp4_Syntax_Parse, %function
Mp4_Syntax_Parse:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #84
	sub	sp, sp, #84	@,,
	add	r5, sp, #32	@ tmp684,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r8, r2	@ CodeLen, CodeLen
	mov	r7, r1	@ pCode, pCode
	mov	r0, r5	@, tmp684
	movw	sl, #15864	@ tmp185,
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r5	@, tmp684
	bl	BsShow	@
	ldrb	r3, [r4, sl]	@ zero_extendqisi2	@ tmp186,
	mov	r1, #0	@ tmp184,
	and	r3, r3, #1	@ prephitmp.2468, tmp186,
	mov	r6, r0	@ StartCode,
	cmp	r6, #32768	@ StartCode,
	movne	r2, #0	@, tmp191
	andeq	r2, r3, #1	@,, tmp191, prephitmp.2468
	cmp	r2, r1	@ tmp191,
	movw	r0, #19972	@ tmp183,
	str	r1, [r4, r0]	@ tmp184, <variable>.IsWaitToDecFlag
	bne	.L704	@,
	eor	ip, r3, #1	@ tmp196, prephitmp.2468,
	movw	lr, #438	@ tmp193,
	cmp	r6, lr	@ StartCode, tmp193
	movne	ip, #0	@, tmp199
	andeq	ip, ip, #1	@,, tmp199, tmp196
	cmp	ip, #0	@ tmp199,
	beq	.L705	@,
.L704:
	mov	sl, r5	@ tmp201, tmp684
	add	r5, sp, #4	@ tmp200,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp201,,,,
	mov	ip, r5	@, tmp200
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	sl, {r0, r1, r2}	@ tmp201,,,
	stmia	ip, {r0, r1, r2}	@ tmp686,,,
	mov	r1, #32	@,
	mov	r0, r5	@, tmp200
	bl	BsSkip	@
	mov	r0, r5	@, tmp200
	mov	r1, #32	@,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	sl, r0	@ D.37568,
	mov	r0, r5	@, tmp200
	bl	BsGet	@
	movw	r5, #:lower16:1128615492	@ tmp206,
	movw	r1, #:lower16:1213419593	@ tmp209,
	movt	r5, #:upper16:1128615492	@ tmp206,
	movt	r1, #:upper16:1213419593	@ tmp209,
	cmp	r0, r5	@, tmp206
	cmpeq	sl, r1	@, D.37568, tmp209
	bne	.L779	@,
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
.L708:
	mov	r0, r5	@, BitUsed
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L779:
	movw	r0, #15864	@ tmp214,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ tmp215,
	and	r3, r2, #1	@ prephitmp.2468, tmp215,
.L705:
	cmp	r3, #0	@ prephitmp.2468,
	beq	.L780	@,
	movw	r0, #21277	@ tmp242,
	mov	r6, #196	@ StartCode,
	mov	sl, #1	@ tmp243,
	strb	sl, [r4, r0]	@ tmp243,
.L710:
	movw	ip, #15864	@ tmp245,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ tmp247,
	and	r1, r5, #2	@ tmp249, tmp247,
	uxtb	r5, r1	@ tmp250, tmp249
	cmp	r5, #0	@ tmp250,
	bne	.L711	@,
.L795:
	mov	sl, #19968	@ tmp251,
	ldr	r3, [r4, sl]	@ tmp253,
	ands	r9, r3, #130	@ tmp252, tmp253,
	bne	.L781	@,
	cmp	r6, #197	@ StartCode,
	beq	.L782	@,
	cmp	r6, #432	@ StartCode,
	beq	.L783	@,
	movw	lr, #437	@ tmp266,
	cmp	r6, lr	@ StartCode, tmp266
	beq	.L784	@,
	bic	r2, r6, #15	@ tmp269, StartCode,
	cmp	r2, #288	@ tmp269,
	beq	.L785	@,
	movw	r2, #435	@ tmp290,
	cmp	r6, r2	@ StartCode, tmp290
	beq	.L786	@,
	movw	r1, #438	@ tmp293,
	cmp	r6, r1	@ StartCode, tmp293
	beq	.L787	@,
	cmp	r6, #196	@ StartCode,
	beq	.L788	@,
	movw	r2, #434	@ tmp308,
	cmp	r6, r2	@ StartCode, tmp308
	beq	.L789	@,
	movw	r0, #286	@ tmp313,
	cmp	r6, r0	@ StartCode, tmp313
	beq	.L790	@,
.L727:
	add	lr, r4, #15680	@, pCtx,
	movw	r3, #22960	@ tmp321,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, lr, #24	@,,
	bl	MP4_ClearCurPacket	@
	sub	r8, r8, #4	@ len, CodeLen,
	add	sl, r7, #4	@ ptr, pCode,
	mov	r5, #0	@ BitUsed,
.L715:
	movw	r1, #22997	@ tmp325,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.SeekReset, <variable>.SeekReset
	cmp	r2, #1	@ <variable>.SeekReset,
	beq	.L791	@,
.L729:
	cmp	r5, r8, asl #3	@ BitUsed, len,
	bhi	.L731	@,
	movw	r2, #438	@ tmp338,
	cmp	r6, r2	@ StartCode, tmp338
	cmpne	r6, #196	@, StartCode,
	bne	.L732	@,
	mov	ip, #19968	@ tmp343,
	ldr	r1, [r4, ip]	@ tmp345,
	tst	r1, #130	@ tmp345,
	beq	.L732	@,
	movw	r0, #21277	@ tmp346,
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.is_short_header, <variable>.MP4Syntax.is_short_header
	cmp	r6, #2	@ <variable>.MP4Syntax.is_short_header,
	beq	.L792	@,
	movw	r3, #21976	@ tmp387,
	movw	r2, #21972	@ tmp389,
	ldr	r3, [r4, r3]	@ prephitmp.2474, <variable>.MP4Syntax.image_width
	movw	r1, #22564	@ tmp388,
	ldr	r2, [r4, r2]	@ D.37694, <variable>.MP4Syntax.image_height
	movw	r0, #22568	@ tmp390,
	cmp	r3, #0	@ prephitmp.2474,
	str	r3, [r4, r1]	@ prephitmp.2474, <variable>.NewPicWidth
	str	r2, [r4, r0]	@ D.37694, <variable>.NewPicHeight
	bne	.L793	@,
.L736:
	cmp	r2, #0	@ D.37694,
	beq	.L738	@,
	movw	r0, #22560	@ tmp394,
	ldr	lr, [r4, r0]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	r2, lr	@ D.37694, <variable>.OldPicHeight
	beq	.L738	@,
.L776:
	movw	r1, #22060	@ tmp396,
	ldr	r2, [r4, r1]	@ prephitmp.2476, <variable>.pstExtraData
.L737:
	ldr	r3, [r2, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L794	@,
.L740:
	ldr	r6, [r2, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r6, #0	@ <variable>.s32DSDWaitFlag,
	beq	.L750	@,
	movw	r2, #22564	@ tmp440,
	ldr	r3, [r4, r2]	@ prephitmp.2474, <variable>.NewPicWidth
.L739:
	movw	r0, #22568	@ tmp502,
	movw	ip, #22556	@ tmp500,
	ldr	r6, [r4, r0]	@ <variable>.NewPicHeight, <variable>.NewPicHeight
	movw	r1, #22560	@ tmp501,
	str	r3, [r4, ip]	@ prephitmp.2474, <variable>.OldPicWidth
	str	r6, [r4, r1]	@ <variable>.NewPicHeight, <variable>.OldPicHeight
.L735:
	add	r0, r4, #20992	@ tmp506, pCtx,
	add	r6, r4, #21760	@ tmp504, pCtx,
	add	lr, r0, #216	@ tmp506, tmp506,
	add	ip, r6, #152	@ tmp504, tmp504,
	rsb	r7, r7, sl	@ tmp514, pCode, ptr
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp509,,,,
	mov	r6, ip	@ tmp508, tmp504
	add	r5, r5, r7, asl #3	@, BitUsed, BitUsed, tmp514,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp508,,,,
	mov	ip, r6	@ tmp688, tmp508
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp687,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp688,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp689,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp688,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp689,,,
	stmia	ip, {r0, r1, r2}	@ tmp690,,,
	bl	vfmw_dprint_nothing	@
	movw	r3, #22540	@ tmp510,
	ldr	r1, [r4, r3]	@ <variable>.ImgCntOfSeq, <variable>.ImgCntOfSeq
	add	r2, r1, #1	@ tmp513, <variable>.ImgCntOfSeq,
	str	r2, [r4, r3]	@ tmp513,
	b	.L708	@
.L780:
	mov	r5, r6, lsr #8	@ tmp235, StartCode,
	movw	r0, #21277	@ tmp232,
	sub	r1, r5, #128	@ tmp236, tmp235,
	mov	sl, #2	@ tmp233,
	cmp	r1, #3	@ tmp236,
	strb	sl, [r4, r0]	@ tmp233, <variable>.MP4Syntax.is_short_header
	bhi	.L710	@,
	movw	r3, #15864	@ tmp237,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ tmp239,
	orr	ip, r2, #2	@ tmp240, tmp239,
	strb	ip, [r4, r3]	@ tmp240,
	movw	ip, #15864	@ tmp245,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ tmp247,
	and	r1, r5, #2	@ tmp249, tmp247,
	uxtb	r5, r1	@ tmp250, tmp249
	cmp	r5, #0	@ tmp250,
	beq	.L795	@,
.L711:
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	mov	sl, r7	@ ptr, pCode
	bl	MP4_Dec_Slice	@
	mov	r5, r0	@ BitUsed,
	b	.L715	@
.L732:
	movw	r1, #22039	@ tmp516,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	cmp	r2, #1	@ <variable>.MP4SyntaxState.vol_decode_right,
	bne	.L708	@,
	movw	r3, #22536	@ tmp518,
	movw	r2, #22540	@ tmp522,
	ldr	r6, [r4, r3]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r0, r4, #21248	@, pCtx,
	add	r1, r4, #19968	@, pCtx,
	mov	lr, #0	@ tmp523,
	add	ip, r6, #1	@ tmp521, <variable>.SeqCnt,
	str	lr, [r4, r2]	@ tmp523, <variable>.ImgCntOfSeq
	str	ip, [r4, r3]	@ tmp521, <variable>.SeqCnt
	add	r0, r0, #60	@,,
	add	r1, r1, #32	@,,
	mov	r2, #604	@,
	bl	memcpy	@
	movw	r6, #20084	@ tmp533,
	movw	r0, #21972	@ tmp532,
	ldr	r3, [r4, r6]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	ldr	ip, [r4, r0]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	cmp	ip, r3	@ <variable>.MP4Syntax.image_height, <variable>.MP4Vol.video_object_layer_height
	beq	.L796	@,
.L756:
	movw	r2, #:lower16:g_event_report	@ tmp542,
	movt	r2, #:upper16:g_event_report	@ tmp542,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L758	@,
	movw	ip, #21976	@ tmp544,
	movw	lr, #21972	@ tmp546,
	ldrh	r1, [r4, ip]	@, <variable>.MP4Syntax.image_width
	movw	r0, #20080	@ tmp548,
	movw	ip, #20084	@ tmp550,
	strh	r1, [sp, #60]	@ movhi	@, para
	ldrh	r2, [r4, lr]	@, <variable>.MP4Syntax.image_height
	movw	lr, #22960	@ tmp553,
	strh	r2, [sp, #62]	@ movhi	@, para
	add	r2, sp, #60	@,,
	ldrh	r6, [r4, r0]	@, <variable>.MP4Vol.video_object_layer_width
	strh	r6, [sp, #64]	@ movhi	@, para
	ldrh	r1, [r4, ip]	@, <variable>.MP4Vol.video_object_layer_height
	strh	r1, [sp, #66]	@ movhi	@, para
	mov	r1, #2	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report
.L758:
	movw	ip, #20080	@ tmp558,
	movw	r1, #20084	@ tmp561,
	movw	r3, #22060	@ tmp563,
	ldr	r6, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	ldr	lr, [r4, ip]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	movw	r2, #21976	@ tmp557,
	ldr	r3, [r4, r3]	@ prephitmp.2472, <variable>.pstExtraData
	movw	r0, #21972	@ tmp560,
	str	r6, [r4, r0]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Syntax.image_height
	str	lr, [r4, r2]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Syntax.image_width
	ldr	r6, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L797	@,
.L759:
	ldr	r6, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r6, #0	@ <variable>.s32DSDWaitFlag,
	beq	.L767	@,
	movw	r6, #21976	@ tmp605,
	ldr	r2, [r4, r6]	@ prephitmp.2470, <variable>.MP4Syntax.image_width
.L757:
	movw	lr, #20084	@ tmp670,
	movw	r3, #21972	@ tmp667,
	ldr	r0, [r4, lr]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Vol.video_object_layer_height
	movw	r1, #20080	@ tmp673,
	ldr	ip, [r4, r3]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	movw	r6, #22556	@ tmp665,
	ldr	lr, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	str	r2, [r4, r6]	@ prephitmp.2470, <variable>.OldPicWidth
	movw	r2, #22039	@ tmp675,
	mov	r6, #0	@ tmp676,
	str	r0, [r4, r3]	@ <variable>.MP4Vol.video_object_layer_height, <variable>.MP4Syntax.image_height
	strb	r6, [r4, r2]	@ tmp676, <variable>.MP4SyntaxState.vol_decode_right
	movw	r3, #21976	@ tmp672,
	movw	r2, #22560	@ tmp666,
	str	lr, [r4, r3]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Syntax.image_width
	str	ip, [r4, r2]	@ <variable>.MP4Syntax.image_height, <variable>.OldPicHeight
	b	.L708	@
.L781:
	orr	r0, r3, #32	@ tmp257, tmp253,
	movw	r3, #19972	@ tmp258,
	str	r0, [r4, sl]	@ tmp257, <variable>.PicIntegrality
	mov	r2, #1	@ tmp259,
	str	r2, [r4, r3]	@ tmp259,
	b	.L708	@
.L731:
	bl	vfmw_dprint_nothing	@
	mov	r3, #19968	@ tmp678,
	ldr	ip, [r4, r3]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	rsb	r7, r7, sl	@ tmp682, pCode, ptr
	bic	r0, ip, #178	@ tmp681, <variable>.PicIntegrality,
	mov	r5, r7, asl #3	@ BitUsed, tmp682,
	str	r0, [r4, r3]	@ tmp681,
	b	.L708	@
.L791:
	movw	r0, #20080	@ tmp327,
	movw	ip, #20084	@ tmp329,
	ldr	r1, [r4, r0]	@, <variable>.MP4Vol.video_object_layer_width
	mov	r0, r4	@, pCtx
	ldr	r2, [r4, ip]	@, <variable>.MP4Vol.video_object_layer_height
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L798	@,
.L730:
	movw	r3, #22997	@ tmp331,
	mov	lr, #0	@ tmp332,
	strb	lr, [r4, r3]	@ tmp332, <variable>.SeekReset
	b	.L729	@
.L790:
	movw	r5, #:lower16:g_event_report	@ tmp314,
	movt	r5, #:upper16:g_event_report	@ tmp314,
	ldr	r3, [r5, #0]	@ g_event_report.594, g_event_report
	cmp	r3, #0	@ g_event_report.594,
	beq	.L727	@,
	movw	sl, #22960	@ tmp315,
	mov	r1, #112	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.594
	b	.L727	@
.L784:
	bl	vfmw_dprint_nothing	@
	movw	r3, #22572	@ tmp267,
	mov	ip, #1	@ tmp268,
	mov	r2, r8	@, CodeLen
	str	ip, [r4, r3]	@ tmp268, <variable>.UserID
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	bl	Mp4_Syntax_Vo	@
.L774:
	mov	r5, r0	@ BitUsed,
	mov	r1, r6	@, StartCode
	mov	r0, r4	@, pCtx
	mov	sl, r7	@ ptr, pCode
	bl	MP4_Record_HeadPacketInfo	@
	b	.L715	@
.L793:
	movw	ip, #22556	@ tmp391,
	ldr	r6, [r4, ip]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	cmp	r3, r6	@ prephitmp.2474, <variable>.OldPicWidth
	bne	.L776	@,
	b	.L736	@
.L798:
	bl	vfmw_dprint_nothing	@
	b	.L730	@
.L783:
	movw	sl, #22572	@ tmp264,
	bl	vfmw_dprint_nothing	@
	str	r9, [r4, sl]	@ tmp252, <variable>.UserID
	mov	r2, r8	@, CodeLen
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	bl	Mp4_Syntax_Vos	@
	b	.L774	@
.L785:
	movw	r5, #22572	@ tmp270,
	bl	vfmw_dprint_nothing	@
	mov	r9, #2	@ tmp271,
	mov	r2, r8	@, CodeLen
	str	r9, [r4, r5]	@ tmp271, <variable>.UserID
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	movw	r9, #22039	@ tmp272,
	bl	Mp4_Syntax_Vol	@
	mov	r1, r6	@, StartCode
	mov	r5, r0	@ BitUsed,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.vol_decode_right, <variable>.MP4SyntaxState.vol_decode_right
	cmp	r0, #1	@ <variable>.MP4SyntaxState.vol_decode_right,
	beq	.L718	@,
	movw	r1, #22040	@ tmp274,
	ldrb	fp, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4SyntaxState.last_vol_decode_right, <variable>.MP4SyntaxState.last_vol_decode_right
	cmp	fp, #1	@ <variable>.MP4SyntaxState.last_vol_decode_right,
	beq	.L799	@,
.L718:
	mov	sl, r7	@ ptr, pCode
	b	.L715	@
.L799:
	add	r3, r4, #19968	@, pCtx,
	add	lr, r4, #20480	@, pCtx,
	add	r0, r3, #32	@,,
	add	r1, lr, #124	@,,
	mov	r2, #604	@,
	mov	sl, r7	@ ptr, pCode
	bl	memcpy	@
	movw	ip, #21269	@ tmp287,
	strb	fp, [r4, ip]	@ tmp10, <variable>.MP4Syntax.vol_decode_over
	strb	fp, [r4, r9]	@, <variable>.MP4SyntaxState.vol_decode_right
	b	.L715	@
.L782:
	bl	vfmw_dprint_nothing	@
	movw	r5, #22960	@ tmp260,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	mov	r5, r9	@ BitUsed, tmp252
	bl	MP4_ClearCurPacket	@
	b	.L708	@
.L738:
	movw	r2, #22060	@ tmp397,
	ldr	r2, [r4, r2]	@ prephitmp.2476, <variable>.pstExtraData
	ldr	r6, [r2, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r6, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L739	@,
	b	.L737	@
.L786:
	movw	r5, #22572	@ tmp291,
	bl	vfmw_dprint_nothing	@
	mov	r0, #3	@ tmp292,
	mov	r2, r8	@, CodeLen
	str	r0, [r4, r5]	@ tmp292, <variable>.UserID
	mov	r1, r7	@, pCode
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Gop	@
	b	.L774	@
.L792:
	movw	r3, #21208	@ tmp348,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Vop.vop_coding_type, <variable>.MP4Vop.vop_coding_type
	cmp	lr, #2	@ <variable>.MP4Vop.vop_coding_type,
	beq	.L734	@,
	movw	r1, #21988	@ tmp351,
	movw	ip, #21980	@ tmp353,
	ldr	lr, [r4, ip]	@ <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_incr
	movw	r2, #20072	@ tmp358,
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.time_base, <variable>.MP4Syntax.time_base
	movw	r0, #21984	@ tmp361,
	ldr	r6, [r4, r2]	@ <variable>.MP4Vol.vop_time_increment_resolution, <variable>.MP4Vol.vop_time_increment_resolution
	movw	r2, #22000	@ tmp365,
	ldr	r3, [r4, r0]	@ <variable>.MP4Syntax.time_increment, <variable>.MP4Syntax.time_increment
	add	r0, lr, ip	@ D.37677, <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_base
	ldr	lr, [r4, r2]	@ <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.last_non_b_time
	str	r0, [r4, r1]	@ D.37677, <variable>.MP4Syntax.time_base
	movw	r1, #22004	@ tmp364,
	mla	r3, r6, r0, r3	@ D.37681, <variable>.MP4Vol.vop_time_increment_resolution, D.37677, <variable>.MP4Syntax.time_increment
	movw	r6, #21992	@ tmp350,
	str	ip, [r4, r6]	@ <variable>.MP4Syntax.time_base, <variable>.MP4Syntax.last_time_base
	rsb	ip, lr, r3	@ tmp367, <variable>.MP4Syntax.last_non_b_time, D.37681
	str	ip, [r4, r1]	@ tmp367, <variable>.MP4Syntax.time_pp
	str	r3, [r4, r2]	@ D.37681, <variable>.MP4Syntax.last_non_b_time
	movw	r2, #21996	@ tmp363,
	str	r3, [r4, r2]	@ D.37681, <variable>.MP4Syntax.time
	b	.L735	@
.L787:
	bl	vfmw_dprint_nothing	@
	cmp	r8, #4	@ CodeLen,
	beq	.L800	@,
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	bl	Mp4_Syntax_Vop	@
	ldr	ip, [r4, sl]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	tst	ip, #2	@ <variable>.PicIntegrality,
	mov	r5, r0	@ BitUsed,
	bne	.L723	@,
	add	sl, r4, #15680	@, pCtx,
	movw	lr, #22960	@ tmp297,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	add	r1, sl, #24	@,,
	bl	MP4_ClearCurPacket	@
.L722:
	bl	vfmw_dprint_nothing	@
	mov	sl, r7	@ ptr, pCode
	b	.L715	@
.L767:
	movw	r7, #22960	@ tmp606,
	movw	sl, #22980	@ tmp608,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L768	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r9, #22972	@ tmp632,
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
	str	r0, [r4, r9]	@ D.37824, <variable>.FwdFsID
	str	r0, [r4, sl]	@ D.37824, <variable>.BwdFsID
.L768:
	add	r0, r4, #22528	@ temp.2593, pCtx,
	movw	r3, #22960	@ tmp645,
	add	r6, r0, #80	@ temp.2593, temp.2593,
	movw	r1, #22968	@ tmp642,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	lr, #0	@ tmp643,
	str	lr, [r4, r1]	@ tmp643, <variable>.RefNum
	mov	r1, r6	@, temp.2593
	bl	FSP_ClearNotInVoQueue	@
	movw	ip, #22060	@ tmp647,
	ldr	r3, [r4, ip]	@ temp.2594, <variable>.pstExtraData
	ldr	r2, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r2, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L769	@,
	ldr	r2, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #25	@ <variable>.eCapLevel,
	beq	.L801	@,
.L769:
	movw	r1, #22960	@ tmp652,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L770	@,
	movw	r2, #22060	@ tmp655,
	ldr	r0, [r4, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L771	@,
	movw	lr, #23004	@ tmp657,
	ldr	ip, [r4, lr]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	ip, #1	@ <variable>.DSDNeedClearQue,
	beq	.L771	@,
.L770:
	movw	r1, #21972	@ tmp661,
	movw	r6, #21976	@ tmp659,
	ldr	r2, [r4, r1]	@, <variable>.MP4Syntax.image_height
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r6]	@, <variable>.MP4Syntax.image_width
	bl	Frame_Init	@
	cmp	r0, #0	@,
	ldreq	r2, [r4, r6]	@ prephitmp.2470, <variable>.MP4Syntax.image_width
	beq	.L757	@
.L772:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r6]	@ prephitmp.2470, <variable>.MP4Syntax.image_width
	b	.L757	@
.L788:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	bl	Mp4_Syntax_ShortHeader	@
	ldr	r3, [r4, sl]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	tst	r3, #2	@ <variable>.PicIntegrality,
	mov	r5, r0	@ BitUsed,
	beq	.L775	@,
	mov	r0, r4	@, pCtx
	mov	r1, #196	@,
	bl	MP4_Record_HeadPacketInfo	@
	mov	sl, r7	@ ptr, pCode
	b	.L715	@
.L789:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	bl	Mp4_Syntax_UserData	@
	mov	r5, r0	@ BitUsed,
.L775:
	movw	ip, #22960	@ tmp309,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	mov	sl, r7	@ ptr, pCode
	b	.L715	@
.L796:
	movw	ip, #21976	@ tmp536,
	movw	r1, #20080	@ tmp537,
	ldr	r2, [r4, ip]	@ prephitmp.2470, <variable>.MP4Syntax.image_width
	ldr	lr, [r4, r1]	@ <variable>.MP4Vol.video_object_layer_width, <variable>.MP4Vol.video_object_layer_width
	cmp	r2, lr	@ prephitmp.2470, <variable>.MP4Vol.video_object_layer_width
	bne	.L756	@,
	movw	r0, #22060	@ tmp540,
	ldr	r6, [r4, r0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r6, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r3, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L757	@,
	b	.L756	@
.L750:
	movw	r8, #22960	@ tmp441,
	movw	fp, #22980	@ tmp443,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, fp]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImg,
	beq	.L751	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r9, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r9, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r9, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r9, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r9, #204]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	str	r6, [r9, #192]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r6, [r9, #196]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	str	r6, [r9, #200]	@ <variable>.s32DSDWaitFlag, <variable>.p_usrdat
	ldr	r1, [r4, fp]	@, <variable>.BwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	r3, #22972	@,
	ldr	r1, [r4, r3]	@, <variable>.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	ip, #22972	@,
	str	r6, [r4, fp]	@ <variable>.s32DSDWaitFlag, <variable>.BwdFsID
	str	r6, [r4, ip]	@ <variable>.s32DSDWaitFlag, <variable>.FwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #22972	@,
	str	r0, [r4, r1]	@ D.37748, <variable>.FwdFsID
	str	r0, [r4, fp]	@ D.37748, <variable>.BwdFsID
.L751:
	add	r6, r4, #22528	@ D.37749, pCtx,
	movw	ip, #22960	@ tmp480,
	add	r6, r6, #80	@ D.37749, D.37749,
	movw	r1, #22968	@ tmp477,
	mov	lr, #0	@ tmp478,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	lr, [r4, r1]	@ tmp478, <variable>.RefNum
	mov	r1, r6	@, D.37749
	bl	FSP_ClearNotInVoQueue	@
	movw	r2, #22060	@ tmp482,
	ldr	r3, [r4, r2]	@ temp.2545, <variable>.pstExtraData
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L752	@,
	ldr	r3, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L802	@,
.L752:
	movw	lr, #22960	@ tmp487,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L753	@,
	movw	r3, #22060	@ tmp490,
	ldr	ip, [r4, r3]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L754	@,
	movw	r2, #23004	@ tmp492,
	ldr	r0, [r4, r2]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r0, #1	@ <variable>.DSDNeedClearQue,
	beq	.L754	@,
.L753:
	movw	lr, #22568	@ tmp496,
	movw	r6, #22564	@ tmp494,
	ldr	r2, [r4, lr]	@, <variable>.NewPicHeight
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r6]	@, <variable>.NewPicWidth
	bl	Frame_Init	@
	cmp	r0, #0	@,
	ldreq	r3, [r4, r6]	@ prephitmp.2474, <variable>.NewPicWidth
	beq	.L739	@
.L755:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r6]	@ prephitmp.2474, <variable>.NewPicWidth
	b	.L739	@
.L723:
	mov	r0, r4	@, pCtx
	movw	r1, #438	@,
	bl	MP4_Record_HeadPacketInfo	@
	b	.L722	@
.L734:
	movw	lr, #21980	@ tmp369,
	movw	ip, #21992	@ tmp370,
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.time_incr
	movw	r6, #20072	@ tmp374,
	ldr	r3, [r4, ip]	@ <variable>.MP4Syntax.last_time_base, <variable>.MP4Syntax.last_time_base
	movw	r1, #21984	@ tmp377,
	ldr	ip, [r4, r6]	@ <variable>.MP4Vol.vop_time_increment_resolution, <variable>.MP4Vol.vop_time_increment_resolution
	movw	r0, #22004	@ tmp381,
	ldr	r6, [r4, r1]	@ <variable>.MP4Syntax.time_increment, <variable>.MP4Syntax.time_increment
	add	r3, r2, r3	@ tmp371, <variable>.MP4Syntax.time_incr, <variable>.MP4Syntax.last_time_base
	movw	lr, #22000	@ tmp382,
	ldr	r1, [r4, r0]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	ldr	r2, [r4, lr]	@ <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.last_non_b_time
	movw	lr, #22008	@ tmp380,
	mla	r3, ip, r3, r6	@ D.37689, <variable>.MP4Vol.vop_time_increment_resolution, tmp371, <variable>.MP4Syntax.time_increment
	rsb	r0, r2, r1	@ tmp383, <variable>.MP4Syntax.last_non_b_time, <variable>.MP4Syntax.time_pp
	movw	r1, #21996	@ tmp379,
	add	r6, r0, r3	@ tmp386, tmp383, D.37689
	str	r6, [r4, lr]	@ tmp386, <variable>.MP4Syntax.time_bp
	str	r3, [r4, r1]	@ D.37689, <variable>.MP4Syntax.time
	b	.L735	@
.L797:
	movw	r0, #22972	@ tmp568,
	movw	r7, #22980	@ tmp570,
	ldr	r1, [r4, r0]	@, <variable>.FwdFsID
	mov	r0, r4	@, pCtx
	mov	lr, #0	@ tmp565,
	str	lr, [sp, #68]	@ tmp565, RefNum
	str	lr, [sp, #76]	@ tmp565, NewNum
	str	lr, [sp, #72]	@ tmp565, ReadNum
	bl	MP4_FlushFrameToVo	@
	ldr	r1, [r4, r7]	@, <variable>.BwdFsID
	mov	r0, r4	@, pCtx
	bl	MP4_FlushFrameToVo	@
	movw	r1, #22960	@ tmp572,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.BwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	ip, #22960	@ tmp577,
	add	r2, sp, #72	@,,
	add	r3, sp, #76	@,,
	add	r1, sp, #68	@,,
	cmp	r0, #0	@ pImage
	strne	r6, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	VCTRL_GetChanImgNum	@
	movw	r3, #22060	@ tmp582,
	ldr	r3, [r4, r3]	@ temp.2572, <variable>.pstExtraData
	movw	r2, #22556	@ tmp583,
	ldr	r6, [r4, r2]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	ldr	r0, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r6, r0	@ <variable>.OldPicWidth, <variable>.s32DSDThrWidth
	bhi	.L761	@,
	movw	ip, #22560	@ tmp586,
	ldr	r2, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r6, [r4, ip]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	r6, r2	@ <variable>.OldPicHeight, <variable>.s32DSDThrHeight
	bhi	.L761	@,
	ldr	r0, [sp, #72]	@ ReadNum, ReadNum
	ldr	r1, [sp, #76]	@ NewNum, NewNum
	add	lr, r1, r0	@ tmp589, NewNum, ReadNum
	cmp	lr, #0	@ tmp589,
	ble	.L765	@,
.L764:
	mov	ip, #1	@ tmp599,
	str	ip, [r3, #728]	@ tmp599, <variable>.s32DSDWaitFlag
.L766:
	movw	r3, #22060	@ tmp603,
	movw	r1, #23004	@ tmp601,
	mov	r0, #1	@ tmp602,
	ldr	r3, [r4, r3]	@ prephitmp.2472, <variable>.pstExtraData
	str	r0, [r4, r1]	@ tmp602, <variable>.DSDNeedClearQue
	b	.L759	@
.L800:
	mov	r0, r4	@, pCtx
	mov	r1, r6	@, StartCode
	bl	MP4_Record_HeadPacketInfo	@
	mov	r5, r9	@ BitUsed, tmp252
	b	.L722	@
.L794:
	movw	lr, #22972	@ tmp403,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, lr]	@, <variable>.FwdFsID
	mov	ip, #0	@ tmp400,
	str	ip, [sp, #76]	@ tmp400, RefNum
	str	ip, [sp, #68]	@ tmp400, NewNum
	str	ip, [sp, #72]	@ tmp400, ReadNum
	bl	MP4_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L803	@,
.L741:
	movw	r6, #22980	@ tmp405,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r6]	@, <variable>.BwdFsID
	bl	MP4_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L804	@,
.L742:
	movw	lr, #22980	@ tmp409,
	movw	r6, #22960	@ tmp407,
	ldr	r1, [r4, lr]	@, <variable>.BwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	ip, #22960	@ tmp412,
	add	r1, sp, #76	@,,
	add	r2, sp, #72	@,,
	cmp	r0, #0	@ pImage
	movne	r3, #1	@ tmp411,
	strne	r3, [r0, #376]	@ tmp411, <variable>.u32IsLastFrame
	add	r3, sp, #68	@,,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	VCTRL_GetChanImgNum	@
	movw	r3, #22060	@ tmp417,
	ldr	r3, [r4, r3]	@ D.37705, <variable>.pstExtraData
	movw	r2, #22556	@ tmp418,
	ldr	r0, [r4, r2]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	ldr	r1, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r0, r1	@ <variable>.OldPicWidth, <variable>.s32DSDThrWidth
	bhi	.L744	@,
	movw	r1, #22560	@ tmp421,
	ldr	r2, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r0, [r4, r1]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	r0, r2	@ <variable>.OldPicHeight, <variable>.s32DSDThrHeight
	bhi	.L744	@,
	ldr	r2, [sp, #68]	@ NewNum, NewNum
	movw	lr, #22060	@ tmp431,
	ldr	r0, [sp, #72]	@ ReadNum, ReadNum
	mov	ip, #1	@ tmp430,
	add	r6, r2, r0	@ tmp424, NewNum, ReadNum
	cmp	r6, #0	@ tmp424,
	movgt	r6, #1	@ tmp427,
	movle	r6, #0	@ tmp428,
	str	r6, [r3, #728]	@ tmp428, <variable>.s32DSDWaitFlag
	movw	r3, #23004	@ tmp429,
	ldr	r2, [r4, lr]	@ prephitmp.2476, <variable>.pstExtraData
	str	ip, [r4, r3]	@ tmp430, <variable>.DSDNeedClearQue
	b	.L740	@
.L801:
	movw	lr, #22964	@ tmp650,
	ldr	ip, [r4, lr]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	ip, #0	@ <variable>.FspPartitionOK,
	bne	.L770	@,
.L771:
	mov	r0, r6	@, temp.2593
	bl	ResetVoQueue	@
	b	.L770	@
.L761:
	ldr	r6, [sp, #76]	@ NewNum, NewNum
	cmp	r6, #0	@ NewNum,
	bgt	.L764	@,
	ldr	r2, [sp, #72]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L764	@,
.L765:
	mov	lr, #0	@ tmp600,
	str	lr, [r3, #728]	@ tmp600, <variable>.s32DSDWaitFlag
	b	.L766	@
.L744:
	ldr	r1, [sp, #68]	@ NewNum, NewNum
	cmp	r1, #0	@ NewNum,
	ble	.L805	@,
.L747:
	mov	lr, #1	@ tmp434,
	str	lr, [r3, #728]	@ tmp434, <variable>.s32DSDWaitFlag
.L749:
	movw	r0, #22060	@ tmp438,
	movw	r3, #23004	@ tmp436,
	mov	r6, #0	@ tmp437,
	ldr	r2, [r4, r0]	@ prephitmp.2476, <variable>.pstExtraData
	str	r6, [r4, r3]	@ tmp437, <variable>.DSDNeedClearQue
	b	.L740	@
.L802:
	movw	r2, #22964	@ tmp485,
	ldr	r0, [r4, r2]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r0, #0	@ <variable>.FspPartitionOK,
	bne	.L753	@,
.L754:
	mov	r0, r6	@, D.37749
	bl	ResetVoQueue	@
	b	.L753	@
.L805:
	ldr	ip, [sp, #72]	@ ReadNum, ReadNum
	cmp	ip, #3	@ ReadNum,
	movle	ip, #0	@ tmp435,
	strle	ip, [r3, #728]	@ tmp435, <variable>.s32DSDWaitFlag
	ble	.L749	@,
	b	.L747	@
.L804:
	bl	vfmw_dprint_nothing	@
	b	.L742	@
.L803:
	bl	vfmw_dprint_nothing	@
	b	.L741	@
	.fnend
	.size	Mp4_Syntax_Parse, .-Mp4_Syntax_Parse
	.align	2
	.global	MPEG4DEC_Decode
	.type	MPEG4DEC_Decode, %function
MPEG4DEC_Decode:
	.fnstart
.LFB1944:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #22548	@ tmp168,
	.pad #32
	sub	sp, sp, #32	@,,
	ldr	r3, [r4, r0]	@ <variable>.InitComplete, <variable>.InitComplete
	mov	r6, r1	@ ptr_strm_para, ptr_strm_para
	cmp	r3, #0	@ <variable>.InitComplete,
	beq	.L845	@,
	ldr	r1, [r1, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r1, #0	@ <variable>.LenInByte,
	beq	.L845	@,
	ldr	r2, [r6, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r2, #0	@ <variable>.PhyAddr,
	beq	.L845	@,
	ldr	ip, [r6, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L845	@,
	add	r5, r4, #15680	@ D.38454, pCtx,
	bl	vfmw_dprint_nothing	@
	add	r5, r5, #24	@ D.38454, D.38454,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r2, #160	@,
	mov	r1, r6	@, ptr_strm_para
	mov	r0, r5	@, D.38454
	bl	memcpy	@
	mov	r0, r4	@, pCtx
	mov	r1, r5	@, D.38454
	bl	MP4_GetScdUpMsg	@
	mov	r0, r4	@, pCtx
	bl	MP4_Check_CurPacket	@
	cmn	r0, #1	@ D.38455,
	beq	.L852	@,
	mov	r1, r5	@, D.38454
	mov	r0, r4	@, pCtx
	movw	r9, #15712	@ tmp179,
	movw	r8, #15704	@ tmp182,
	movw	r7, #15716	@ tmp185,
	bl	MP4_GetScdUpMsg	@
	ldr	ip, [r4, r9]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #22052	@ tmp184,
	ldr	r1, [r4, r8]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r0, #22044	@ tmp181,
	ldr	r2, [r4, r7]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r5, #22048	@ tmp178,
	movw	sl, #22056	@ tmp187,
	str	ip, [r4, r5]	@ <variable>.PhyAddr, <variable>.BitsObj.phy_addr
	str	r1, [r4, r0]	@ <variable>.VirAddr, <variable>.BitsObj.vir_addr
	mov	r9, #0	@ tmp188,
	str	r2, [r4, r3]	@ <variable>.LenInByte, <variable>.BitsObj.len
	mov	r0, r4	@, pCtx
	str	r9, [r4, sl]	@ tmp188, <variable>.BitsObj.offset
	movw	r8, #22060	@ tmp189,
	bl	Mp4_Get_DecMode	@
	ldr	r3, [r4, r8]	@ D.38461, <variable>.pstExtraData
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L853	@,
.L811:
	mov	ip, #19968	@ tmp196,
	movw	r0, #23000	@ tmp195,
	ldr	r1, [r4, ip]	@ <variable>.PicIntegrality, <variable>.PicIntegrality
	str	r1, [r4, r0]	@ <variable>.PicIntegrality,
.L812:
	movw	r7, #22044	@ tmp198,
	movw	r5, #22052	@ tmp200,
	ldr	r1, [r4, r7]	@, <variable>.BitsObj.vir_addr
	mov	r0, r4	@, pCtx
	ldr	r2, [r4, r5]	@, <variable>.BitsObj.len
	movw	r9, #22060	@ tmp216,
	bl	Mp4_Syntax_Parse	@
	movw	r2, #22048	@ tmp206,
	ldr	r1, [r4, r9]	@ temp.2646, <variable>.pstExtraData
	movw	r9, #22056	@ tmp214,
	ldr	sl, [r4, r2]	@ <variable>.BitsObj.phy_addr, <variable>.BitsObj.phy_addr
	ldr	r8, [r4, r7]	@ <variable>.BitsObj.vir_addr, <variable>.BitsObj.vir_addr
	ldr	ip, [r4, r5]	@ <variable>.BitsObj.len, <variable>.BitsObj.len
	mov	r3, r0, lsr #3	@ byte_num, bits_consume,
	and	r0, r0, #7	@ tmp215, bits_consume,
	add	r8, r8, r3	@ tmp205, <variable>.BitsObj.vir_addr, byte_num
	str	r0, [r4, r9]	@ tmp215, <variable>.BitsObj.offset
	str	r8, [r4, r7]	@ tmp205, <variable>.BitsObj.vir_addr
	add	r0, r3, sl	@ tmp209, byte_num, <variable>.BitsObj.phy_addr
	rsb	r3, r3, ip	@ tmp213, byte_num, <variable>.BitsObj.len
	str	r0, [r4, r2]	@ tmp209, <variable>.BitsObj.phy_addr
	str	r3, [r4, r5]	@ tmp213, <variable>.BitsObj.len
	ldr	r2, [r1, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L854	@,
.L813:
	mov	r2, #19968	@ tmp219,
	ldr	r3, [r4, r2]	@ temp.2649, <variable>.PicIntegrality
	tst	r3, #32	@ temp.2649,
	beq	.L845	@,
	bic	r1, r3, #178	@ tmp222, temp.2649,
	movw	r3, #22092	@ tmp223,
	ldr	r3, [r4, r3]	@ D.38482, <variable>.DecMode
	str	r1, [r4, r2]	@ tmp222, <variable>.PicIntegrality
	cmp	r3, #2	@ D.38482,
	beq	.L855	@,
	cmp	r3, #1	@ D.38482,
	beq	.L856	@,
	cmp	r3, #4	@ D.38482,
	bne	.L818	@,
	movw	r1, #21912	@ tmp228,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2633, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ prephitmp.2633,
	movweq	r2, #22576	@ tmp229,
	streq	r3, [r4, r2]	@ prephitmp.2633, <variable>.PPicFound
	cmp	r3, #2	@ prephitmp.2633,
	cmpne	r3, #4	@, prephitmp.2633,
	beq	.L857	@,
.L821:
	cmp	r3, #1	@ prephitmp.2633,
	movweq	r2, #22576	@ tmp241,
	streq	r3, [r4, r2]	@ prephitmp.2633, <variable>.PPicFound
.L818:
	mov	r0, r4	@, pCtx
	bl	Mp4_Frame_Atr	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L858	@,
	cmn	r0, #2	@ ret,
	beq	.L846	@,
	movw	r5, #22960	@ tmp243,
	movw	r7, #22972	@ tmp245,
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #22980	@ tmp249,
	ldr	r1, [r4, r3]	@, <variable>.BwdFsID
	mov	r7, r0	@ pFwdImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pFwdImg,
	cmpne	r0, #0	@, pBwdImg,
	beq	.L845	@,
	movw	ip, #21275	@ tmp258,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ D.38515, <variable>.MP4Syntax.coding_mode
	cmp	r3, #1	@ D.38515,
	cmpne	r3, #3	@, D.38515,
	bne	.L825	@,
	movw	r2, #22060	@ tmp267,
	ldr	r0, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r1, [r4, r2]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r1, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r0, lr	@ <variable>.error_level, <variable>.s32RefErrThr
	bls	.L826	@,
.L850:
	movw	r2, #22988	@ tmp279,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38453,
.L809:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L825:
	cmp	r3, #2	@ D.38515,
	beq	.L859	@,
.L826:
	movw	r3, #21912	@ tmp286,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L828	@,
	movw	r9, #22968	@ tmp288,
	movw	r5, #22972	@ tmp291,
	ldr	r8, [r4, r9]	@ <variable>.RefNum, <variable>.RefNum
	movw	r7, #22980	@ tmp292,
	ldr	r3, [r4, r5]	@ prephitmp.2631, <variable>.FwdFsID
	cmp	r8, #0	@ <variable>.RefNum,
	ldr	sl, [r4, r7]	@ <variable>.BwdFsID, <variable>.BwdFsID
	movgt	r8, #2	@ iftmp.640,
	movle	r8, #1	@ iftmp.640,
	cmp	r3, sl	@ prephitmp.2631, <variable>.BwdFsID
	str	r8, [r4, r9]	@ iftmp.640, <variable>.RefNum
	beq	.L831	@,
	movw	r8, #22960	@ tmp294,
	mov	r1, r3	@, prephitmp.2631
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.FwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #3	@,
	beq	.L844	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r5]	@, <variable>.FwdFsID
	bl	FSP_SetDisplay	@
.L844:
	ldr	r3, [r4, r7]	@ prephitmp.2631, <variable>.BwdFsID
.L831:
	ldrb	lr, [r4, #1]	@ zero_extendqisi2	@ <variable>.BwdCodingType, <variable>.BwdCodingType
	movw	r1, #22984	@ tmp310,
	movw	r5, #22004	@ tmp318,
	movw	r8, #22988	@ tmp313,
	ldr	r9, [r4, r1]	@ <variable>.BwdTimePP, <variable>.BwdTimePP
	movw	r7, #22972	@ tmp306,
	ldr	r0, [r4, r8]	@ <variable>.CurFsID, <variable>.CurFsID
	movw	r2, #22976	@ tmp309,
	ldr	sl, [r4, r5]	@ <variable>.MP4Syntax.time_pp, <variable>.MP4Syntax.time_pp
	movw	r5, #22960	@ tmp320,
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ <variable>.CurCodingType, <variable>.CurCodingType
	strb	lr, [r4, #0]	@ <variable>.BwdCodingType, <variable>.FwdCodingType
	movw	lr, #22980	@ tmp312,
	str	r0, [r4, lr]	@ <variable>.CurFsID, <variable>.BwdFsID
	str	r9, [r4, r2]	@ <variable>.BwdTimePP, <variable>.FwdTimePP
	mov	r2, #1	@,
	str	sl, [r4, r1]	@ <variable>.MP4Syntax.time_pp, <variable>.BwdTimePP
	mov	r1, r0	@, <variable>.CurFsID
	str	r3, [r4, r7]	@ prephitmp.2631, <variable>.FwdFsID
	strb	ip, [r4, #1]	@ <variable>.CurCodingType, <variable>.BwdCodingType
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_RemovePmv	@
	movw	r1, #21912	@ tmp328,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r2, #4	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L828	@,
	movw	r0, #21272	@ tmp370,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.MP4Syntax.packed_mode, <variable>.MP4Syntax.packed_mode
	cmp	r3, #0	@ <variable>.MP4Syntax.packed_mode,
	beq	.L860	@,
.L814:
	mov	r0, #0	@ D.38453,
	b	.L809	@
.L828:
	mov	r2, r6	@, ptr_strm_para
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	Mp4_Set_DecPar	@
	movw	r3, #21912	@ tmp330,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.38565, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ D.38565,
	cmpne	r3, #4	@, D.38565,
	bne	.L834	@,
	movw	ip, #22576	@ tmp338,
	ldr	r2, [r4, ip]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	beq	.L861	@,
.L834:
	movw	r5, #22060	@ tmp346,
	cmp	r3, #1	@ D.38565,
	ldr	r1, [r4, r5]	@ temp.2678, <variable>.pstExtraData
	movweq	r2, #22576	@ tmp344,
	streq	r3, [r4, r2]	@ D.38565, <variable>.PPicFound
	add	r3, r4, #1040	@ D.38573, pCtx,
	str	r3, [r4, #1036]	@ D.38573, <variable>.pMp4DecParam
	ldr	r2, [r1, #708]	@ D.38574, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.38574,
	beq	.L862	@,
	cmp	r2, #2	@ D.38574,
	beq	.L863	@,
.L837:
	movw	r1, #21912	@ tmp363,
	mov	ip, #0	@ tmp361,
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	strb	ip, [r4, #1198]	@ tmp361, <variable>.Mp4DecParam.IsNvopCopy
	cmp	r5, ip	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L814	@,
	movw	r2, #:lower16:g_event_report	@ tmp365,
	movt	r2, #:upper16:g_event_report	@ tmp365,
	ldr	r3, [r2, #0]	@ g_event_report.641, g_event_report
	cmp	r3, #0	@ g_event_report.641,
	beq	.L814	@,
	add	r2, sp, #32	@ tmp369,,
	movw	lr, #22960	@ tmp367,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r1, #20	@,
	str	r5, [r2, #-4]!	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, para
	blx	r3	@ g_event_report.641
	mov	r0, r5	@ D.38453, <variable>.MP4Syntax.syn_vop.vop_coding_type
	b	.L809	@
.L853:
	ldr	lr, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	lr, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L811	@,
	movw	r3, #23000	@ tmp193,
	mov	r2, #19968	@ tmp192,
	ldr	sl, [r4, r3]	@ <variable>.LastPicIntegrality, <variable>.LastPicIntegrality
	str	sl, [r4, r2]	@ <variable>.LastPicIntegrality,
	b	.L812	@
.L855:
	movw	ip, #21912	@ tmp224,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r2, #0	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	beq	.L818	@,
.L817:
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.38453,
	b	.L809	@
.L859:
	movw	lr, #22060	@ tmp275,
	ldr	ip, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r3, [r4, lr]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r3, #0]	@ temp.2657, <variable>.s32RefErrThr
	cmp	ip, r3	@ <variable>.error_level, temp.2657
	bhi	.L850	@,
	ldr	r1, [r0, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r3, r1	@ temp.2657, <variable>.error_level
	bcs	.L826	@,
	movw	ip, #22988	@ tmp284,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CurFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
.L845:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38453,
	b	.L809	@
.L860:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, r8]	@, <variable>.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	beq	.L864	@,
	ldr	r3, [r6, #408]	@ D.38611, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.38611,
	beq	.L839	@,
	ldr	ip, [r6, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	ip, #0	@ <variable>.pstTfOutFs,
	beq	.L839	@,
	ldr	r1, [r6, #412]	@ D.38615, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.38615,
	beq	.L839	@,
	ldr	ip, [r0, #408]	@ D.38621, <variable>.pstDecodeFs
	movw	r0, #21976	@ tmp396,
	ldr	r2, [r3, #12]	@ iftmp.2695, <variable>.PhyAddr
	cmp	ip, #0	@ D.38621,
	ldr	r3, [r1, #12]	@ D.38618, <variable>.PhyAddr
	movw	r1, #21972	@ tmp398,
	ldr	lr, [r4, r0]	@ <variable>.MP4Syntax.image_width, <variable>.MP4Syntax.image_width
	ldrne	r5, [ip, #12]	@ iftmp.644, <variable>.PhyAddr
	mov	r0, r4	@, pCtx
	ldr	ip, [r4, r1]	@ <variable>.MP4Syntax.image_height, <variable>.MP4Syntax.image_height
	mov	r1, r6	@, pCur
	moveq	r5, r2	@ iftmp.644, iftmp.2695
	stmia	sp, {r5, lr}	@ phole stm
	str	ip, [sp, #8]	@ <variable>.MP4Syntax.image_height,
	bl	Vdm_Mem_Move	@
	mov	r0, #0	@ D.38453,
	b	.L809	@
.L862:
	cmp	r3, #0	@ D.38573,
	beq	.L837	@,
	movw	r3, #21912	@ tmp347,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L837	@,
	movw	r0, #22988	@ tmp351,
	sub	lr, r0, #28	@ tmp350, tmp350,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	ip, #0	@ tmp349,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	ip, [r4, #1036]	@ tmp349, <variable>.pMp4DecParam
	bl	FSP_ClearLogicFs	@
.L848:
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.38453,
	b	.L809	@
.L856:
	movw	lr, #21912	@ tmp226,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r0, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L818	@,
	b	.L817	@
.L854:
	ldr	lr, [r1, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	lr, #0	@ <variable>.s32DSDWaitFlag,
	beq	.L813	@,
	mov	r0, #0	@ D.38453,
	b	.L809	@
.L861:
	movw	r0, #22988	@ tmp342,
	movw	lr, #22960	@ tmp340,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mvn	r0, #0	@ D.38453,
	b	.L809	@
.L863:
	ldr	r2, [r1, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r2, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L837	@,
	cmp	r3, #0	@ D.38573,
	beq	.L837	@,
	movw	r3, #21912	@ tmp353,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type, <variable>.MP4Syntax.syn_vop.vop_coding_type
	cmp	r1, #2	@ <variable>.MP4Syntax.syn_vop.vop_coding_type,
	bne	.L837	@,
	movw	r0, #22988	@ tmp357,
	sub	r3, r0, #28	@ tmp356, tmp356,
	mov	lr, #0	@ tmp355,
	ldr	r1, [r4, r0]	@, <variable>.CurFsID
	str	lr, [r4, #1036]	@ tmp355, <variable>.pMp4DecParam
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r5]	@ temp.2685, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	ldr	r2, [r1, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	ip, r2, #1	@ tmp360, <variable>.stDisParams.s32DisNums,
	str	ip, [r1, #712]	@ tmp360, <variable>.stDisParams.s32DisNums
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.38453,
	b	.L809	@
.L852:
	str	r0, [sp, #20]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #20]	@,
	b	.L809	@
.L857:
	movw	r2, #22576	@ tmp239,
	ldr	r2, [r4, r2]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	bne	.L821	@,
	mvn	r0, #0	@ D.38453,
	b	.L809	@
.L839:
	movw	r2, #22988	@ tmp394,
	movw	lr, #22960	@ tmp392,
	ldr	r1, [r4, r2]	@, <variable>.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
.L846:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.38453,
	b	.L809	@
.L858:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r5	@ D.38453, ret
	b	.L809	@
.L864:
	ldr	r1, [r4, r8]	@, <variable>.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	b	.L848	@
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
	.ascii	"DivX%dBuild%d%c\000"
.LC1:
	.ascii	"DivX%db%d%c\000"
.LC2:
	.ascii	"FFmpe%*[^b]b%d\000"
	.space	1
.LC3:
	.ascii	"FFmpeg v%d.%d.%d / libavcodec build: %d\000"
.LC4:
	.ascii	"Lavc%d.%d.%d\000"
	.space	3
.LC5:
	.ascii	"ffmpeg\000"
	.space	1
.LC6:
	.ascii	"XviD%d\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	MemArrange.37853, %object
	.size	MemArrange.37853, 416
MemArrange.37853:
	.space	416
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
