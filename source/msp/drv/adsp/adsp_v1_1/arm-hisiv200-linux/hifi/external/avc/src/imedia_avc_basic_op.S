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
	.file	"imedia_avc_basic_op.c"
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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/component/ha_codec/include
@ -I
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -D_FORTIFY_SOURCE=2
@ -DCHIP_TYPE_hi3716mv330 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1
@ -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT
@ -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT -DHI_SND_AVC_SUPPORT
@ -DMODULE -DKBUILD_STR(s)=#s
@ -DKBUILD_BASENAME=KBUILD_STR(imedia_avc_basic_op)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/.imedia_avc_basic_op.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_basic_op.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_basic_op.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fverbose-asm
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
	.global	avc_L_abs
	.type	avc_L_abs, %function
avc_L_abs:
	.fnstart
.LFB1298:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #-2147483648	@ L_var1,
	mvneq	r0, #-2147483648	@ L_var_out,
	bxeq	lr	@
	cmp	r0, #0	@ L_var1,
	rsblt	r0, r0, #0	@ L_var_out, L_var1
	bx	lr	@
	.fnend
	.size	avc_L_abs, .-avc_L_abs
	.align	2
	.global	avc_norm_l
	.type	avc_norm_l, %function
avc_norm_l:
	.fnstart
.LFB1299:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ L_var1, L_var1
	beq	.L7	@,
	cmn	r3, #1	@ L_var1,
	moveq	r0, #31	@ var_out,
	beq	.L9	@,
	cmp	r3, #0	@ L_var1,
	mvnlt	r3, r3	@ L_var1, L_var1
	cmn	r3, #-1073741823	@ L_var1,
	bgt	.L7	@,
	mov	r0, #0	@ var_out,
.L11:
	mov	r3, r3, asl #1	@ L_var1, L_var1,
	add	r0, r0, #1	@ tmp141, var_out,
	cmn	r3, #-1073741823	@ L_var1,
	uxth	r0, r0	@ var_out, tmp141
	ble	.L11	@,
.L9:
	sxth	r0, r0	@, var_out
	bx	lr	@
.L7:
	mov	r0, #0	@ var_out,
	sxth	r0, r0	@, var_out
	bx	lr	@
	.fnend
	.size	avc_norm_l, .-avc_norm_l
	.align	2
	.global	avc_L_shr
	.type	avc_L_shr, %function
avc_L_shr:
	.fnstart
.LFB1301:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ var2
	mov	r3, r0	@ L_var1, L_var1
	blt	.L21	@,
	cmp	r1, #30	@ var2,
	ble	.L16	@,
	cmp	r0, #0	@ L_var1,
	mvnlt	r0, #0	@, L_var_out,
	movge	r0, #0	@, L_var_out,
	bx	lr	@
.L16:
	cmp	r0, #0	@ L_var1,
	movge	r0, r3, asr r1	@ L_var_out, L_var1,
	mvnlt	r3, r0	@ tmp139, L_var1
	mvnlt	r0, r3, asr r1	@ L_var_out, tmp139,
	bx	lr	@
.L21:
	rsb	r1, r1, #0	@ tmp137, var2
	sxth	r1, r1	@, tmp137
	b	avc_L_shl	@
	.fnend
	.size	avc_L_shr, .-avc_L_shr
	.align	2
	.global	avc_L_shl
	.type	avc_L_shl, %function
avc_L_shl:
	.fnstart
.LFB1300:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ var2
	mov	r3, r0	@ L_var1, L_var1
	ble	.L23	@,
	cmn	r0, #-1073741823	@ L_var1,
	bgt	.L24	@,
	cmp	r0, #-1073741824	@ L_var1,
	blt	.L25	@,
	sub	r1, r1, #1	@ tmp143, var2,
	mov	r0, r0, asl #1	@ L_var1.523, L_var1,
	uxth	r1, r1	@ var2.524, tmp143
	cmp	r1, #0	@ var2.524,
	bxeq	lr	@
	cmn	r0, #-1073741823	@ L_var1.523,
	sub	r2, r1, #1	@ tmp156, var2.524,
	and	r1, r2, #1	@ tmp157, tmp156,
	bgt	.L24	@,
	cmp	r0, #-1073741824	@ L_var1.523,
	blt	.L25	@,
	uxth	r2, r2	@ var2.524, tmp156
	mov	r0, r3, asl #2	@ L_var1.523, L_var1,
	cmp	r2, #0	@ var2.524,
	bxeq	lr	@
	cmp	r1, #0	@ tmp157,
	beq	.L32	@,
	cmn	r0, #-1073741823	@ L_var1.523,
	bgt	.L24	@,
	cmp	r0, #-1073741824	@ L_var1.523,
	blt	.L25	@,
	sub	r3, r2, #1	@ tmp163, var2.524,
	mov	r0, r0, asl #1	@ L_var1.523, L_var1.523,
	uxth	r2, r3	@ var2.524, tmp163
	cmp	r2, #0	@ var2.524,
	bne	.L32	@,
	bx	lr	@
.L28:
	cmp	r0, #-1073741824	@ L_var1.523,
	uxth	r1, r2	@ var2.524, tmp153
	sub	r2, r1, #1	@ tmp164, var2.524,
	mov	r0, r0, asl #2	@ L_var1.523, L_var1.523,
	blt	.L25	@,
	cmn	r3, #-1073741823	@ L_var1.523,
	uxth	r2, r2	@ var2.524, tmp164
	bgt	.L24	@,
	cmp	r3, #-1073741824	@ L_var1.523,
	blt	.L25	@,
	cmp	r2, #0	@ var2.524,
	beq	.L46	@,
.L32:
	cmn	r0, #-1073741823	@ L_var1.523,
	mov	r3, r0, asl #1	@ L_var1.523, L_var1.523,
	sub	r2, r2, #1	@ tmp153, var2.524,
	ble	.L28	@,
.L24:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	mov	ip, #1	@ movhi	@,
	mvn	r0, #-2147483648	@ L_var_out,
	strh	ip, [r3, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
.L25:
	movw	ip, #:lower16:.LANCHOR0	@ tmp149,
	movt	ip, #:upper16:.LANCHOR0	@ tmp149,
	mov	r2, #1	@ movhi	@,
	mov	r0, #-2147483648	@ L_var_out,
	strh	r2, [ip, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
.L46:
	bx	lr	@
.L23:
	rsb	r2, r1, #0	@ tmp144, var2
	sxth	r1, r2	@, tmp144
	b	avc_L_shr	@
	.fnend
	.size	avc_L_shl, .-avc_L_shl
	.align	2
	.global	avc_L_sub
	.type	avc_L_sub, %function
avc_L_sub:
	.fnstart
.LFB1302:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	teq	r1, r0	@ L_var2, L_var1
	mov	r3, r0	@ L_var1, L_var1
	rsb	r0, r1, r0	@ L_var_out, L_var2, L_var1
	bxpl	lr	@
	teq	r0, r3	@ L_var_out, L_var1
	bxpl	lr	@
	cmp	r3, #0	@ L_var1,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r2, #1	@ movhi	@,
	movlt	r0, #-2147483648	@, L_var_out,
	mvnge	r0, #-2147483648	@, L_var_out,
	strh	r2, [r3, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
	.fnend
	.size	avc_L_sub, .-avc_L_sub
	.align	2
	.global	avc_L_mult
	.type	avc_L_mult, %function
avc_L_mult:
	.fnstart
.LFB1303:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	r0, r1, r0	@ L_var_out.569, var2, var1
	cmp	r0, #1073741824	@ L_var_out.569,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp138,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp138,
	moveq	r2, #1	@ movhi	@,
	movne	r0, r0, asl #1	@ L_var_out, L_var_out.569,
	mvneq	r0, #-2147483648	@ L_var_out,
	streqh	r2, [r3, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
	.fnend
	.size	avc_L_mult, .-avc_L_mult
	.align	2
	.global	avc_mult_r
	.type	avc_mult_r, %function
avc_mult_r:
	.fnstart
.LFB1304:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	ip, r1, r0	@ L_produit_arr.592, var2, var1
	movw	r0, #32767	@ tmp144,
	add	r3, ip, #16384	@ L_produit_arr.593, L_produit_arr.592,
	mov	r3, r3, asr #15	@ L_produit_arr, L_produit_arr.593,
	tst	r3, #65536	@ L_produit_arr,
	mvnne	r3, r3, asl #16	@ L_produit_arr, L_produit_arr,
	mvnne	r3, r3, lsr #16	@ L_produit_arr, L_produit_arr,
	cmp	r3, r0	@ L_produit_arr, tmp144
	ble	.L58	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp145,
	movt	r2, #:upper16:.LANCHOR0	@ tmp145,
	mov	r1, #1	@ movhi	@,
	sxth	r0, r0	@, var_out
	strh	r1, [r2, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
.L58:
	cmn	r3, #32768	@ L_produit_arr,
	uxthge	r0, r3	@ var_out, L_produit_arr
	movwlt	r3, #:lower16:.LANCHOR0	@ tmp149,
	movwge	r2, #:lower16:.LANCHOR0	@ tmp152,
	movtlt	r3, #:upper16:.LANCHOR0	@ tmp149,
	movtge	r2, #:upper16:.LANCHOR0	@ tmp152,
	movlt	r0, #32768	@ var_out,
	movlt	r2, #1	@ movhi	@,
	movge	r3, #0	@ movhi	@,
	strlth	r2, [r3, #0]	@ movhi	@, avc_Overflow
	strgeh	r3, [r2, #0]	@ movhi	@, avc_Overflow
	sxth	r0, r0	@, var_out
	bx	lr	@
	.fnend
	.size	avc_mult_r, .-avc_mult_r
	.align	2
	.global	avc_shr
	.type	avc_shr, %function
avc_shr:
	.fnstart
.LFB1306:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ var2
	mov	r3, r0	@ var1, var1
	blt	.L68	@,
	cmp	r1, #14	@ var2,
	movle	r3, r0, asr r1	@ tmp140, var1,
	uxthle	r0, r3	@ var_out, tmp140
	ble	.L66	@,
	cmp	r3, #0	@ var1,
	movw	r0, #65535	@ tmp143,
	movge	r0, #0	@ var_out,
.L66:
	sxth	r0, r0	@, var_out
	bx	lr	@
.L68:
	rsb	r1, r1, #0	@ tmp137, var2
	sxth	r1, r1	@, tmp137
	b	avc_shl	@
	.fnend
	.size	avc_shr, .-avc_shr
	.align	2
	.global	avc_shl
	.type	avc_shl, %function
avc_shl:
	.fnstart
.LFB1305:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ var2
	mov	r3, r0	@ var1, var1
	blt	.L75	@,
	cmp	r0, #0	@ var1,
	cmpne	r1, #15	@, var2,
	ble	.L76	@,
.L71:
	cmp	r3, #0	@ var1,
	movw	ip, #:lower16:.LANCHOR0	@ tmp149,
	movw	r1, #:lower16:-32768	@ tmp157,
	movt	ip, #:upper16:.LANCHOR0	@ tmp149,
	movt	r1, #:upper16:-32768	@ tmp157,
	movw	r0, #32767	@ tmp155,
	mov	r3, #1	@ movhi	@,
	strh	r3, [ip, #0]	@ movhi	@, avc_Overflow
	movle	r0, r1	@ var_out, tmp157
	bx	lr	@
.L76:
	mov	r2, r0, asl r1	@ resultat, var1,
	sxth	r0, r2	@ var_out, resultat
	cmp	r0, r2	@ var_out, resultat
	bne	.L71	@,
	bx	lr	@
.L75:
	rsb	r1, r1, #0	@ tmp138, var2
	sxth	r1, r1	@, tmp138
	b	avc_shr	@
	.fnend
	.size	avc_shl, .-avc_shl
	.align	2
	.global	avc_sature
	.type	avc_sature, %function
avc_sature:
	.fnstart
.LFB1307:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #32767	@ tmp136,
	cmp	r0, r2	@ L_var1, tmp136
	ble	.L78	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	mov	r1, #1	@ movhi	@,
	sxth	r0, r2	@, var_out
	strh	r1, [r3, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
.L78:
	cmn	r0, #32768	@ L_var1,
	movw	ip, #:lower16:.LANCHOR0	@ tmp141,
	uxthge	r2, r0	@ var_out, L_var1
	movt	ip, #:upper16:.LANCHOR0	@ tmp141,
	movlt	r2, #32768	@ var_out,
	movlt	r1, #1	@ movhi	@,
	movge	r1, #0	@ movhi	@,
	sxth	r0, r2	@, var_out
	strh	r1, [ip, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
	.fnend
	.size	avc_sature, .-avc_sature
	.align	2
	.global	avc_extract_l
	.type	avc_extract_l, %function
avc_extract_l:
	.fnstart
.LFB1308:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sxth	r0, r0	@, L_var1
	bx	lr	@
	.fnend
	.size	avc_extract_l, .-avc_extract_l
	.align	2
	.global	avc_round32
	.type	avc_round32, %function
avc_round32:
	.fnstart
.LFB1309:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ L_var1,
	add	r3, r0, #32768	@ L_arrondi, L_var1,
	blt	.L91	@,
	teq	r3, r0	@ L_arrondi, L_var1
	bmi	.L87	@,
.L91:
	mov	r0, r3, lsr #16	@ prephitmp.700, L_arrondi,
	sxth	r0, r0	@, prephitmp.700
	bx	lr	@
.L87:
	cmp	r0, #0	@ L_var1,
	movw	r1, #32767	@ tmp146,
	movw	r2, #:lower16:.LANCHOR0	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp141,
	movge	r0, r1	@ prephitmp.700, tmp146
	movlt	r0, #32768	@ prephitmp.700,
	mov	r3, #1	@ movhi	@,
	sxth	r0, r0	@, prephitmp.700
	strh	r3, [r2, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
	.fnend
	.size	avc_round32, .-avc_round32
	.align	2
	.global	avc_L_add
	.type	avc_L_add, %function
avc_L_add:
	.fnstart
.LFB1310:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	teq	r1, r0	@ L_var2, L_var1
	mov	r3, r0	@ L_var1, L_var1
	add	r0, r1, r0	@ L_var_out, L_var2, L_var1
	bxmi	lr	@
	teq	r0, r3	@ L_var_out, L_var1
	bxpl	lr	@
	cmp	r3, #0	@ L_var1,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	mov	r2, #1	@ movhi	@,
	movlt	r0, #-2147483648	@, L_var_out,
	mvnge	r0, #-2147483648	@, L_var_out,
	strh	r2, [r3, #0]	@ movhi	@, avc_Overflow
	bx	lr	@
	.fnend
	.size	avc_L_add, .-avc_L_add
	.align	2
	.global	avc_extract_h
	.type	avc_extract_h, %function
avc_extract_h:
	.fnstart
.LFB1311:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r0, asr #16	@, L_var1,
	bx	lr	@
	.fnend
	.size	avc_extract_h, .-avc_extract_h
	.align	2
	.global	avc_norm_ll
	.type	avc_norm_ll, %function
avc_norm_ll:
	.fnstart
.LFB1312:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orrs	r2, r0, r1	@, var
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	beq	.L100	@,
	mvn	r2, #0	@ tmp138,
	mvn	r3, #0	@,
	cmp	r1, r3	@ var, tmp138
	cmpeq	r0, r2	@ var, tmp138
	beq	.L100	@,
	cmp	r0, #0	@ var,
	sbcs	r3, r1, #0	@, var,
	mvn	r4, #0	@ tmp139,
	mvn	r5, #-1073741824	@,
	mvnlt	r0, r0	@ var, var
	mvnlt	r1, r1	@ var, var
	cmp	r4, r0	@ tmp139, var
	sbcs	r2, r5, r1	@, tmp139, var
	movlt	r3, #0	@ var_out,
	blt	.L103	@,
	mov	r3, #0	@ var_out,
.L104:
	adds	r0, r0, r0	@ var, var, var
	add	r3, r3, #1	@ tmp142, var_out,
	adc	r1, r1, r1	@ var, var, var
	cmp	r4, r0	@ tmp146, var
	sbcs	r2, r5, r1	@, tmp146, var
	uxth	r3, r3	@ var_out, tmp142
	bge	.L104	@,
.L103:
	sxth	r0, r3	@, var_out
	ldmfd	sp!, {r4, r5}
	bx	lr
.L100:
	mov	r3, #63	@ var_out,
	b	.L103	@
	.fnend
	.size	avc_norm_ll, .-avc_norm_ll
	.align	2
	.global	avc_Shr64s
	.type	avc_Shr64s, %function
avc_Shr64s:
	.fnstart
.LFB1314:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ sQ
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	mov	r4, r0	@ var, var
	mov	r5, r1	@ var, var
	blt	.L114	@,
	cmp	r2, #63	@ sQ,
	bgt	.L115	@,
	cmp	r4, #0	@ var,
	sbcs	r3, r5, #0	@, var,
	blt	.L116	@,
	mov	r7, r0, lsr r2	@ var_out, var,
	rsb	r3, r2, #32	@ tmp148, sQ,
	orr	r6, r7, r1, asl r3	@, var_out, var_out, var,
	subs	ip, r2, #32	@ tmp146, sQ,
	mov	r7, r1, asr r2	@ var_out, var,
	movpl	r6, r1, asr ip	@, var_out, var,
.L111:
	mov	r1, r7	@, var_out
	mov	r0, r6	@, var_out
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L115:
	cmp	r4, #0	@ var,
	sbcs	r3, r5, #0	@, var,
	movge	r6, #0	@ var_out,
	movge	r7, #0	@ var_out,
	mvnlt	r6, #0	@ var_out,
	mvnlt	r7, #0	@ var_out,
	b	.L111	@
.L114:
	rsb	r2, r2, #0	@ tmp137, sQ
	sxth	r2, r2	@, tmp137
	ldmfd	sp!, {r4, r5, r6, r7}
	b	avc_Shl64s	@
.L116:
	mvn	r4, r0	@ tmp139, var
	mvn	r5, r1	@, var
	mov	r0, r4, lsr r2	@ tmp141, tmp139,
	rsb	r1, r2, #32	@ tmp144, sQ,
	subs	r3, r2, #32	@ tmp142, sQ,
	orr	r6, r0, r5, asl r1	@, tmp141, tmp141,,
	mov	r7, r5, asr r2	@,,
	movpl	r6, r5, asr r3	@, tmp141,,
	mvn	r6, r6	@ var_out, tmp141
	mvn	r7, r7	@ var_out,
	b	.L111	@
	.fnend
	.size	avc_Shr64s, .-avc_Shr64s
	.align	2
	.global	avc_Shl64s
	.type	avc_Shl64s, %function
avc_Shl64s:
	.fnstart
.LFB1313:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ sQ
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	mov	r4, r0	@ var, var
	mov	r5, r1	@ var, var
	blt	.L118	@,
	beq	.L124	@,
	mvn	r0, #0	@ tmp141,
	mvn	r1, #-1073741824	@,
	cmp	r0, r4	@ tmp141, var
	sbcs	r3, r1, r5	@, tmp141, var
	blt	.L120	@,
	cmp	r4, #0	@ var,
	sbcs	r3, r5, #-1073741824	@, var,
	blt	.L121	@,
	sub	r3, r2, #1	@ tmp157, sQ,
	tst	r3, #1	@ tmp157,
	bne	.L138	@,
.L127:
	sub	r3, r2, #1	@ tmp150, sQ,
	adds	r4, r4, r4	@ var, var, var
	adc	r5, r5, r5	@ var, var, var
	sxth	r2, r3	@ sQ, tmp150
	cmp	r2, #0	@ sQ,
	sub	r2, r2, #1	@ tmp165, sQ,
	beq	.L124	@,
	cmp	r0, r4	@ tmp155, var
	sbcs	r3, r1, r5	@, tmp155, var
	sxth	r2, r2	@ sQ, tmp165
	blt	.L120	@,
	cmp	r4, #0	@ var,
	sbcs	r3, r5, #-1073741824	@, var,
	blt	.L121	@,
	adds	r4, r4, r4	@ var, var, var
	adc	r5, r5, r5	@ var, var, var
	cmp	r0, r4	@ tmp155, var
	sbcs	r3, r1, r5	@, tmp155, var
	blt	.L120	@,
.L140:
	cmp	r4, #0	@ var,
	sbcs	r3, r5, #-1073741824	@, var,
	bge	.L127	@,
.L121:
	movw	ip, #:lower16:.LANCHOR0	@ tmp147,
	movt	ip, #:upper16:.LANCHOR0	@ tmp147,
	mov	r4, #0	@ var_out,
	mov	r5, #-2147483648	@ var_out,
	mov	r1, #1	@ tmp148,
	str	r1, [ip, #4]	@ tmp148, giOverflow
.L124:
	mov	r1, r5	@, var_out
	mov	r0, r4	@, var_out
	ldmfd	sp!, {r4, r5}
	bx	lr
.L138:
	adds	r4, r4, r4	@ var, var, var
	sxth	r2, r3	@ sQ, tmp157
	adc	r5, r5, r5	@ var, var, var
	cmp	r0, r4	@ tmp155, var
	sbcs	r3, r1, r5	@, tmp155, var
	bge	.L140	@,
.L120:
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	mov	r0, #1	@ tmp146,
	mvn	r4, #0	@ var_out,
	mvn	r5, #-2147483648	@ var_out,
	str	r0, [r3, #4]	@ tmp146, giOverflow
	b	.L124	@
.L118:
	rsb	r2, r2, #0	@ tmp142, sQ
	sxth	r2, r2	@, tmp142
	ldmfd	sp!, {r4, r5}
	b	avc_Shr64s	@
	.fnend
	.size	avc_Shl64s, .-avc_Shl64s
	.align	2
	.global	avc_Mul_f32x32
	.type	avc_Mul_f32x32, %function
avc_Mul_f32x32:
	.fnstart
.LFB1315:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #-2147483648	@ var2,
	cmpeq	r0, #-2147483648	@, var1,
	bne	.L142	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp145,
	movt	r1, #:upper16:.LANCHOR0	@ tmp145,
	mvn	r2, #0	@ L_product,
	mvn	r3, #-2147483648	@ L_product,
	mov	r0, #1	@ tmp146,
	str	r0, [r1, #4]	@ tmp146, giOverflow
	mov	r1, r3	@, L_product
	mov	r0, r2	@, L_product
	bx	lr	@
.L142:
	smull	r2, r3, r1, r0	@ L_product.852, var2, var1
	adds	r2, r2, r2	@ L_product, L_product.852, L_product.852
	adc	r3, r3, r3	@ L_product, L_product.852, L_product.852
	mov	r0, r2	@, L_product
	mov	r1, r3	@, L_product
	bx	lr	@
	.fnend
	.size	avc_Mul_f32x32, .-avc_Mul_f32x32
	.align	2
	.global	avc_Sub64s
	.type	avc_Sub64s, %function
avc_Sub64s:
	.fnstart
.LFB1316:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	eor	r4, r2, r0	@ tmp137, L_var2, L_var1
	eor	r5, r3, r1	@, L_var2, L_var1
	subs	r2, r0, r2	@ L_var_out, L_var1, L_var2
	sbc	r3, r1, r3	@ L_var_out, L_var1, L_var2
	cmp	r4, #0	@ tmp137,
	sbcs	ip, r5, #0	@, tmp137,
	blt	.L150	@,
.L146:
	mov	r1, r3	@, L_var_out
	mov	r0, r2	@, L_var_out
	ldmfd	sp!, {r4, r5}
	bx	lr
.L150:
	eor	r4, r2, r0	@ tmp138, L_var_out, L_var1
	eor	r5, r3, r1	@, L_var_out, L_var1
	cmp	r4, #0	@ tmp138,
	sbcs	ip, r5, #0	@, tmp138,
	bge	.L146	@,
	cmp	r0, #0	@ L_var1,
	sbcs	r3, r1, #0	@, L_var1,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #1	@ tmp140,
	mvnge	r2, #0	@ L_var_out,
	mvnge	r3, #-2147483648	@ L_var_out,
	movlt	r2, #0	@ L_var_out,
	movlt	r3, #-2147483648	@ L_var_out,
	str	r0, [r1, #4]	@ tmp140, giOverflow
	b	.L146	@
	.fnend
	.size	avc_Sub64s, .-avc_Sub64s
	.align	2
	.global	avc_Add64s
	.type	avc_Add64s, %function
avc_Add64s:
	.fnstart
.LFB1317:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	mov	r4, r0	@ L_var1, L_var1
	mov	r5, r1	@ L_var1, L_var1
	eor	r0, r2, r0	@ tmp137, L_var2, L_var1
	eor	r1, r3, r1	@, L_var2, L_var1
	adds	r2, r2, r4	@ L_var_out, L_var2, L_var1
	adc	r3, r3, r5	@ L_var_out, L_var2, L_var1
	cmp	r0, #0	@ tmp137,
	sbcs	ip, r1, #0	@, tmp137,
	blt	.L152	@,
	eor	r0, r2, r4	@ tmp138, L_var_out, L_var1
	eor	r1, r3, r5	@, L_var_out, L_var1
	cmp	r0, #0	@ tmp138,
	sbcs	ip, r1, #0	@, tmp138,
	bge	.L152	@,
	cmp	r4, #0	@ L_var1,
	sbcs	r3, r5, #0	@, L_var1,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	mov	r0, #1	@ tmp140,
	mvnge	r2, #0	@ L_var_out,
	mvnge	r3, #-2147483648	@ L_var_out,
	movlt	r2, #0	@ L_var_out,
	movlt	r3, #-2147483648	@ L_var_out,
	str	r0, [r1, #4]	@ tmp140, giOverflow
.L152:
	mov	r1, r3	@, L_var_out
	mov	r0, r2	@, L_var_out
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	avc_Add64s, .-avc_Add64s
	.align	2
	.global	iMedia_AVC_sature_32
	.type	iMedia_AVC_sature_32, %function
iMedia_AVC_sature_32:
	.fnstart
.LFB1318:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #-2147483647	@ tmp136,
	mov	r3, #0	@,
	cmp	r2, r0	@ tmp136, var
	sbcs	ip, r3, r1	@, tmp136, var
	mvnlt	r0, #-2147483648	@ D.19740,
	bxlt	lr	@
	mov	r2, #-2147483646	@ tmp137,
	mvn	r3, #0	@,
	cmp	r0, r2	@ var, tmp137
	sbcs	ip, r1, r3	@, var, tmp137
	movlt	r0, #-2147483647	@, D.19740,
	bx	lr	@
	.fnend
	.size	iMedia_AVC_sature_32, .-iMedia_AVC_sature_32
	.align	2
	.global	iMedia_AVC_saturate_to_16bit
	.type	iMedia_AVC_saturate_to_16bit, %function
iMedia_AVC_saturate_to_16bit:
	.fnstart
.LFB1319:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #32766	@ tmp136,
	cmp	r0, r3	@ L_var, tmp136
	movwgt	r0, #32767	@ D.19748,
	ble	.L166	@,
.L163:
	sxth	r0, r0	@, D.19748
	bx	lr	@
.L166:
	movw	r1, #:lower16:-32766	@ tmp137,
	movt	r1, #:upper16:-32766	@ tmp137,
	cmp	r0, r1	@ L_var, tmp137
	uxthge	r0, r0	@ D.19748, L_var
	movwlt	r0, #32769	@ D.19748,
	b	.L163	@
	.fnend
	.size	iMedia_AVC_saturate_to_16bit, .-iMedia_AVC_saturate_to_16bit
	.align	2
	.global	avc_round_64
	.type	avc_round_64, %function
avc_round_64:
	.fnstart
.LFB1320:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0	@ var, var
	mov	r3, r1	@ var, var
	cmp	r2, #1	@ var,
	sbcs	r1, r3, #0	@, var,
	blt	.L168	@,
.L171:
	mov	r0, #-2147483648	@ tmp137,
	adds	r2, r2, r0	@ var, var, tmp137
	mvn	r1, #0	@,
	adc	r3, r3, r1	@ var, var,
	mov	r0, r2	@, var
	mov	r1, r3	@, var
	bx	lr	@
.L168:
	orrs	r1, r2, r3	@, var
	bne	.L171	@,
	mov	r1, r3	@, var
	mov	r0, r2	@, var
	bx	lr	@
	.fnend
	.size	avc_round_64, .-avc_round_64
	.align	2
	.global	iMedia_AVC_Log10
	.type	iMedia_AVC_Log10, %function
iMedia_AVC_Log10:
	.fnstart
.LFB1322:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ iIn
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movle	r0, #45056	@ D.19800,
	mov	r5, r1	@ sQ, sQ
	ble	.L175	@,
	cmn	r0, #-1073741823	@ iIn,
	movgt	r6, #0	@ prephitmp.977,
	movgt	r1, r6	@ var_out, prephitmp.977
	bgt	.L177	@,
	mov	r3, r0	@ iIn.996, iIn
	mov	r1, #0	@ var_out,
.L178:
	mov	r3, r3, asl #1	@ iIn.996, iIn.996,
	add	r1, r1, #1	@ tmp157, var_out,
	cmn	r3, #-1073741823	@ iIn.996,
	uxth	r1, r1	@ var_out, tmp157
	ble	.L178	@,
	sxth	r6, r1	@ prephitmp.977, var_out
.L177:
	sxth	r1, r1	@, var_out
	bl	avc_L_shl	@
	mov	r1, #25	@,
	mov	r4, r0	@ L_x,
	bl	avc_L_shr	@
	movw	ip, #:lower16:.LANCHOR1	@ tmp159,
	movt	ip, #:upper16:.LANCHOR1	@ tmp159,
	ubfx	r2, r4, #10, #15	@ tmp164, L_x,,
	sub	r0, r0, #32	@ tmp160,,
	ldr	r1, [ip, r0, asl #2]	@ D.20162, iMedia_AVC_Log2Tab
	smulbb	ip, r1, r2	@ L_var_out, D.20162, tmp164
	mov	r3, r1, lsr #16	@ D.20161, D.20162,
	mov	r3, r3, asl #16	@ D.20161, D.20161,
	mov	r2, ip, asl #1	@ L_var_out.997, L_var_out,
	teq	r2, r3	@ L_var_out.997, D.20161
	rsb	r2, r2, r3	@ L_y, L_var_out.997, D.20161
	bmi	.L186	@,
.L179:
	cmp	r4, #0	@ L_x,
	mov	r1, #13	@,
	rsbgt	r6, r6, #30	@ tmp171, prephitmp.977,
	movgt	r4, r2, asr #16	@ prephitmp.981, L_y,
	movle	r4, #0	@ prephitmp.981,
	sxthgt	r0, r6	@ prephitmp.979, tmp171
	movle	r0, r4	@ prephitmp.979, prephitmp.981
	rsb	r0, r5, r0	@, sQ, prephitmp.979
	bl	avc_L_shl	@
	mov	r1, #2	@,
	mov	r5, r0	@ D.19805,
	mov	r0, r4	@, prephitmp.981
	bl	avc_L_shr	@
	movw	r2, #2466	@ tmp175,
	mov	r1, #15	@,
	add	r0, r0, r5	@ tmp174,, D.19805
	mul	r0, r2, r0	@, tmp175, tmp174
	bl	avc_L_shr	@
	uxth	r0, r0	@ D.19800,
.L175:
	sxth	r0, r0	@, D.19800
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L186:
	teq	r2, r3	@ L_y, D.20161
	bpl	.L179	@,
	cmp	r3, #0	@ D.20161,
	movw	r3, #:lower16:.LANCHOR0	@ tmp167,
	movt	r3, #:upper16:.LANCHOR0	@ tmp167,
	mov	lr, #1	@ movhi	@,
	movlt	r2, #-2147483648	@, L_y,
	mvnge	r2, #-2147483648	@, L_y,
	strh	lr, [r3, #0]	@ movhi	@, avc_Overflow
	b	.L179	@
	.fnend
	.size	iMedia_AVC_Log10, .-iMedia_AVC_Log10
	.align	2
	.global	iMedia_AVC_L_exp10_i
	.type	iMedia_AVC_L_exp10_i, %function
iMedia_AVC_L_exp10_i:
	.fnstart
.LFB1324:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:157826	@ tmp155,
	movt	r2, #:upper16:157826	@ tmp155,
	cmp	r0, r2	@ x, tmp155
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r3, r0	@ x, x
	mvngt	r0, #-2147483648	@ iTemp,
	ldmgtfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	mov	r0, r3, asl #17	@, x,
	movw	r1, #27213	@,
	ubfx	r7, r3, #15, #16	@ sInt, x,,
	mov	r0, r0, lsr #17	@,,
	bl	avc_mult_r	@
	mov	r1, #2	@,
	sxth	r0, r0	@,
	bl	avc_L_shl	@
	mov	r1, #15	@,
	mov	r4, r0	@ iTemp.1049,
	bl	avc_L_shr	@
	mov	r1, #15	@,
	sxth	r5, r0	@ sHigh,
	mov	r0, r5	@, sHigh
	bl	avc_L_shl	@
	teq	r0, r4	@ D.19841, iTemp.1049
	rsb	r0, r0, r4	@ L_var_out, D.19841, iTemp.1049
	bmi	.L190	@,
.L206:
	uxth	r4, r0	@ prephitmp.1029, L_var_out
	movw	r6, #10643	@ tmp168,
	smulbb	r6, r4, r6	@ prephitmp.1031, prephitmp.1029, tmp168
.L191:
	mov	r1, r5	@, sHigh
	mov	r0, #1	@,
	bl	avc_shl	@
	sxth	r4, r4	@ prephitmp.1029, prephitmp.1029
	add	r6, r6, #536870912	@ tmp179, prephitmp.1031,
	mov	r1, r4	@,
	uxth	r5, r0	@ sHigh.1050,
	mov	r0, r4	@, prephitmp.1029
	bl	avc_mult_r	@
	add	r2, r6, #1966080	@ tmp179, tmp179,
	movw	r3, #5615	@ tmp178,
	sxth	r0, r0	@ iTemp,
	mla	ip, r0, r3, r2	@ iTemp.1051, iTemp, tmp178, tmp179
	mov	r6, ip, asl #1	@ iTemp.1052, iTemp.1051,
	cmp	r6, #0	@ iTemp.1052,
	add	r0, r6, #32768	@ L_arrondi, iTemp.1052,
	blt	.L207	@,
	teq	r0, r6	@ L_arrondi, iTemp.1052
	bmi	.L197	@,
.L207:
	mov	r0, r0, asr #16	@ prephitmp.1037, L_arrondi,
.L196:
	sxth	r5, r5	@ sHigh.1050, sHigh.1050
	sxth	r7, r7	@ sInt, sInt
	mul	r5, r5, r0	@ L_var_out, sHigh.1050, prephitmp.1037
	cmp	r5, #1073741824	@ L_var_out,
	movne	r0, r5, asl #1	@ tmp189, L_var_out,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp190,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp190,
	moveq	r2, #1	@ movhi	@,
	movne	r1, r0, asr #31	@ Tmp_64
	mvneq	r0, #-2147483648	@ Tmp_64,
	streqh	r2, [r3, #0]	@ movhi	@, avc_Overflow
	cmp	r7, #1	@ sInt,
	beq	.L208	@,
	cmp	r7, #2	@ sInt,
	beq	.L209	@,
	cmp	r7, #3	@ sInt,
	movweq	r3, #10000	@ tmp207,
	umulleq	r0, r1, r0, r3	@ Tmp_64, Tmp_64, tmp207
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L197:
	movw	lr, #:lower16:-32768	@ tmp215,
	movw	r3, #:lower16:.LANCHOR0	@ tmp185,
	movt	lr, #:upper16:-32768	@ tmp215,
	movt	r3, #:upper16:.LANCHOR0	@ tmp185,
	cmp	r6, #0	@ iTemp.1052,
	movw	r0, #32767	@ tmp214,
	mov	r2, #1	@ movhi	@,
	strh	r2, [r3, #0]	@ movhi	@, avc_Overflow
	movlt	r0, lr	@ prephitmp.1037, tmp215
	b	.L196	@
.L208:
	mov	r3, #10	@ tmp195,
	umull	r0, r1, r0, r3	@ Tmp_64, Tmp_64, tmp195
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L190:
	teq	r0, r4	@ L_var_out, iTemp.1049
	bpl	.L206	@,
	cmp	r4, #0	@ iTemp.1049,
	movw	r3, #:lower16:.LANCHOR0	@ tmp169,
	movt	r3, #:upper16:.LANCHOR0	@ tmp169,
	mov	r1, #1	@ movhi	@,
	movlt	r6, #0	@ prephitmp.1031,
	movwge	r6, #:lower16:-10643	@ prephitmp.1031,
	movwge	r4, #65535	@ prephitmp.1029,
	movtge	r6, #:upper16:-10643	@ prephitmp.1031,
	movlt	r4, r6	@ prephitmp.1029, prephitmp.1031
	strh	r1, [r3, #0]	@ movhi	@, avc_Overflow
	b	.L191	@
.L209:
	mov	ip, #100	@ tmp201,
	umull	r0, r1, r0, ip	@ Tmp_64, Tmp_64, tmp201
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	iMedia_AVC_L_exp10_i, .-iMedia_AVC_L_exp10_i
	.align	2
	.global	iMedia_AVC_sqrt_i64
	.type	iMedia_AVC_sqrt_i64, %function
iMedia_AVC_sqrt_i64:
	.fnstart
.LFB1326:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1	@ x,
	sbcs	r2, r1, #0	@, x,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movlt	r0, #0	@ fx0,
	ldmltfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	mvn	r4, #0	@ tmp181,
	mvn	r5, #-1073741824	@,
	cmp	r4, r0	@ tmp181, x
	sbcs	r3, r5, r1	@, tmp181, x
	movlt	r9, #0	@ prephitmp.1086,
	movwlt	fp, #65535	@ prephitmp.1082,
	movlt	r2, r9	@ prephitmp.1074, prephitmp.1086
	blt	.L214	@,
	mov	r2, r0	@ x.1107, x
	mov	r3, r1	@ x.1107, x
	mov	ip, #0	@ exp1,
.L215:
	adds	r2, r2, r2	@ x.1107, x.1107, x.1107
	add	ip, ip, #1	@ tmp184, exp1,
	adc	r3, r3, r3	@ x.1107, x.1107, x.1107
	cmp	r4, r2	@ tmp282, x.1107
	sbcs	lr, r5, r3	@, tmp282, x.1107
	uxth	ip, ip	@ exp1, tmp184
	bge	.L215	@,
	movw	r2, #:lower16:65534	@ prephitmp.1074,
	movt	r2, #:upper16:65534	@ prephitmp.1074,
	and	r2, ip, r2	@ prephitmp.1074, exp1, prephitmp.1074
	sub	r5, r2, #32	@ tmp188, prephitmp.1074,
	sbfx	r4, r5, #1, #15	@ tmp190, tmp188,,
	uxth	r3, r4	@ pretmp.1079,
	add	r9, r3, #16	@ tmp192, pretmp.1079,
	add	fp, r3, #15	@ tmp191, pretmp.1079,
	uxth	r9, r9	@ prephitmp.1086, tmp192
	uxth	fp, fp	@ prephitmp.1082,
.L214:
	sxth	r2, r2	@, prephitmp.1074
	movw	sl, #:lower16:.LANCHOR1	@ tmp194,
	bl	avc_Shl64s	@
	mov	r2, #56	@,
	movt	sl, #:upper16:.LANCHOR1	@ tmp194,
	mov	r6, r0	@ x.1099,
	mov	r7, r1	@ x.1099,
	bl	avc_Shr64s	@
	mov	r1, #1	@,
	bl	avc_L_shl	@
	bic	r8, r0, r0, asr #31	@ index.1101,
	add	r1, sl, r8, asl #2	@, tmp197, tmp194, index.1101,
	ldr	r5, [r1, #128]	@ fx0.1102, iMedia_AVC_sqrt_32_tab
	ldr	r8, [r1, #132]	@ fpx0, iMedia_AVC_sqrt_32_tab
	cmp	r5, #-2147483648	@ fx0.1102,
	beq	.L244	@,
	mov	r0, r5	@ D.20206, fx0.1102
	mov	r1, r0, asr #31	@ D.20206
	mul	r3, r0, r1	@ tmp207, D.20206, D.20206
	umull	r0, r1, r0, r0	@ tmp209, D.20206, D.20206
	adds	r0, r0, r0	@ llTmp1, tmp209, tmp209
	add	r4, r1, r3, asl #1	@,,, tmp207,
	adc	r1, r4, r4	@ llTmp1,,
	eor	r2, r0, r6	@ tmp211, llTmp1, x.1099
	eor	r3, r1, r7	@, llTmp1, x.1099
	subs	r0, r6, r0	@ llTmp1.1108, x.1099, llTmp1
	sbc	r1, r7, r1	@ llTmp1.1108, x.1099, llTmp1
	cmp	r2, #0	@ tmp211,
	sbcs	ip, r3, #0	@, tmp211,
	blt	.L245	@,
.L218:
	mov	r2, #32	@,
	cmp	r8, #-2147483648	@ fpx0,
	movne	sl, #0	@, D.20224
	moveq	sl, #1	@, D.20224
	bl	avc_Shr64s	@
	cmp	r0, #-2147483648	@ D.20039,
	cmpeq	r8, #-2147483648	@, fpx0,
	bne	.L221	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp222,
	movt	ip, #:upper16:.LANCHOR0	@ tmp222,
	mvn	r0, #0	@ llTmp1.1109,
	mvn	r1, #-2147483648	@ llTmp1.1109,
	mov	lr, #1	@ tmp223,
	str	lr, [ip, #4]	@ tmp223, giOverflow
.L222:
	mov	r2, #32	@,
	bl	avc_Shr64s	@
	teq	r0, r5	@ D.20041, fx0.1102
	add	r4, r0, r5	@ fx0.1110, D.20041, fx0.1102
	bmi	.L223	@,
	teq	r4, r5	@ fx0.1110, fx0.1102
	bmi	.L246	@,
.L223:
	cmp	r4, #-2147483648	@ fx0.1110,
	bne	.L226	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp231,
	movt	r3, #:upper16:.LANCHOR0	@ tmp231,
	mvn	r0, #0	@ llTmp1.1111,
	mvn	r1, #-2147483648	@ llTmp1.1111,
	mov	r2, #1	@ tmp232,
	str	r2, [r3, #4]	@ tmp232, giOverflow
	eor	r2, r0, r6	@ tmp237, llTmp1.1111, x.1099
	eor	r3, r1, r7	@, llTmp1.1111, x.1099
	subs	r0, r6, r0	@ llTmp1.1112, x.1099, llTmp1.1111
	sbc	r1, r7, r1	@ llTmp1.1112, x.1099, llTmp1.1111
	cmp	r2, #0	@ tmp237,
	sbcs	lr, r3, #0	@, tmp237,
	blt	.L247	@,
.L228:
	mov	r2, #32	@,
	bl	avc_Shr64s	@
	cmp	r0, #-2147483648	@ D.20045,
	movne	sl, #0	@, tmp245
	andeq	sl, sl, #1	@,, tmp245, D.20224
	cmp	sl, #0	@ tmp245,
	beq	.L231	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp246,
	movt	r3, #:upper16:.LANCHOR0	@ tmp246,
	mvn	r0, #0	@ llTmp1.1114,
	mvn	r1, #-2147483648	@ llTmp1.1114,
	mov	r2, #1	@ tmp247,
	str	r2, [r3, #4]	@ tmp247, giOverflow
.L232:
	mov	r2, #32	@,
	bl	avc_Shr64s	@
	teq	r0, r4	@ D.20047, fx0.1110
	add	r5, r0, r4	@ fx0.1115, D.20047, fx0.1110
	bmi	.L233	@,
	teq	r5, r4	@ fx0.1115, fx0.1110
	bmi	.L248	@,
.L233:
	sxth	r1, fp	@,
	mov	r0, #1	@,
	bl	avc_L_shl	@
	teq	r5, r0	@ fx0.1115, round
	add	r0, r5, r0	@ fx0.1116, fx0.1115, round
	bmi	.L236	@,
	teq	r0, r5	@ fx0.1116, fx0.1115
	bmi	.L249	@,
.L236:
	sxth	r1, r9	@, prephitmp.1086
	movw	r4, #:lower16:1518500250	@ tmp263,
	bl	avc_L_shr	@
	movt	r4, #:upper16:1518500250	@ tmp263,
	mov	r1, #30	@,
	smull	r4, r5, r0, r4	@ tmp262,, tmp263
	mov	r0, #1	@,
	adds	r4, r4, r4	@ tmp264, tmp262, tmp262
	adc	r5, r5, r5	@,,
	bl	avc_L_shl	@
	mov	r1, r0, asr #31	@ D.20059
	eor	r2, r4, r0	@ tmp265, tmp264, D.20059
	eor	r3, r5, r1	@,, D.20059
	adds	r0, r0, r4	@ llTmp1.1118, D.20059, tmp264
	adc	r1, r1, r5	@ llTmp1.1118, D.20059,
	cmp	r2, #0	@ tmp265,
	sbcs	lr, r3, #0	@, tmp265,
	blt	.L239	@,
	eor	r2, r0, r4	@ tmp266, llTmp1.1118, tmp264
	eor	r3, r1, r5	@, llTmp1.1118,
	cmp	r2, #0	@ tmp266,
	sbcs	ip, r3, #0	@, tmp266,
	blt	.L250	@,
.L239:
	mov	r2, #31	@,
	bl	avc_Shr64s	@
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L244:
	movw	ip, #:lower16:.LANCHOR0	@ tmp205,
	movt	ip, #:upper16:.LANCHOR0	@ tmp205,
	mvn	r0, #0	@ llTmp1,
	mvn	r1, #-2147483648	@ llTmp1,
	eor	r2, r0, r6	@ tmp211, llTmp1, x.1099
	eor	r3, r1, r7	@, llTmp1, x.1099
	mov	lr, #1	@ tmp206,
	subs	r0, r6, r0	@ llTmp1.1108, x.1099, llTmp1
	sbc	r1, r7, r1	@ llTmp1.1108, x.1099, llTmp1
	str	lr, [ip, #4]	@ tmp206, giOverflow
	cmp	r2, #0	@ tmp211,
	sbcs	ip, r3, #0	@, tmp211,
	bge	.L218	@,
.L245:
	eor	r2, r0, r6	@ tmp212, llTmp1.1108, x.1099
	eor	r3, r1, r7	@, llTmp1.1108, x.1099
	cmp	r2, #0	@ tmp212,
	sbcs	lr, r3, #0	@, tmp212,
	bge	.L218	@,
	cmp	r6, #0	@ x.1099,
	sbcs	r2, r7, #0	@, x.1099,
	movw	sl, #:lower16:.LANCHOR0	@ tmp213,
	movt	sl, #:upper16:.LANCHOR0	@ tmp213,
	mov	r2, #1	@ tmp214,
	mvnge	r0, #0	@ llTmp1.1108,
	mvnge	r1, #-2147483648	@ llTmp1.1108,
	movlt	r0, #0	@ llTmp1.1108,
	movlt	r1, #-2147483648	@ llTmp1.1108,
	str	r2, [sl, #4]	@ tmp214, giOverflow
	b	.L218	@
.L231:
	smull	r0, r1, r0, r8	@ tmp248, D.20045, fpx0
	adds	r0, r0, r0	@ llTmp1.1114, tmp248, tmp248
	adc	r1, r1, r1	@ llTmp1.1114,,
	b	.L232	@
.L226:
	mov	r0, r4	@ D.20236, fx0.1110
	mov	r1, r0, asr #31	@ D.20236
	mul	lr, r0, r1	@ tmp233, D.20236, D.20236
	umull	r0, r1, r0, r0	@ tmp235, D.20236, D.20236
	adds	r0, r0, r0	@ llTmp1.1111, tmp235, tmp235
	add	r1, r1, lr, asl #1	@,,, tmp233,
	adc	r1, r1, r1	@ llTmp1.1111,,
	eor	r2, r0, r6	@ tmp237, llTmp1.1111, x.1099
	eor	r3, r1, r7	@, llTmp1.1111, x.1099
	subs	r0, r6, r0	@ llTmp1.1112, x.1099, llTmp1.1111
	sbc	r1, r7, r1	@ llTmp1.1112, x.1099, llTmp1.1111
	cmp	r2, #0	@ tmp237,
	sbcs	lr, r3, #0	@, tmp237,
	bge	.L228	@,
.L247:
	eor	r2, r0, r6	@ tmp238, llTmp1.1112, x.1099
	eor	r3, r1, r7	@, llTmp1.1112, x.1099
	cmp	r2, #0	@ tmp238,
	sbcs	ip, r3, #0	@, tmp238,
	bge	.L228	@,
	cmp	r6, #0	@ x.1099,
	sbcs	lr, r7, #0	@, x.1099,
	movw	r5, #:lower16:.LANCHOR0	@ tmp239,
	movt	r5, #:upper16:.LANCHOR0	@ tmp239,
	mov	ip, #1	@ tmp240,
	mvnge	r0, #0	@ llTmp1.1112,
	mvnge	r1, #-2147483648	@ llTmp1.1112,
	movlt	r0, #0	@ llTmp1.1112,
	movlt	r1, #-2147483648	@ llTmp1.1112,
	str	ip, [r5, #4]	@ tmp240, giOverflow
	b	.L228	@
.L221:
	smull	r0, r1, r0, r8	@ tmp224, D.20039, fpx0
	adds	r0, r0, r0	@ llTmp1.1109, tmp224, tmp224
	adc	r1, r1, r1	@ llTmp1.1109,,
	b	.L222	@
.L250:
	cmp	r4, #0	@ tmp264,
	sbcs	lr, r5, #0	@, tmp264,
	movw	r2, #:lower16:.LANCHOR0	@ tmp267,
	movt	r2, #:upper16:.LANCHOR0	@ tmp267,
	mov	ip, #1	@ tmp268,
	mvnge	r0, #0	@ llTmp1.1118,
	mvnge	r1, #-2147483648	@ llTmp1.1118,
	str	ip, [r2, #4]	@ tmp268, giOverflow
	movlt	r0, #0	@ llTmp1.1118,
	movlt	r1, #-2147483648	@ llTmp1.1118,
	mov	r2, #31	@,
	bl	avc_Shr64s	@
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L249:
	cmp	r5, #0	@ fx0.1115,
	movw	r1, #:lower16:.LANCHOR0	@ tmp258,
	movt	r1, #:upper16:.LANCHOR0	@ tmp258,
	mov	lr, #1	@ movhi	@,
	movlt	r0, #-2147483648	@, fx0.1116,
	mvnge	r0, #-2147483648	@, fx0.1116,
	strh	lr, [r1, #0]	@ movhi	@, avc_Overflow
	b	.L236	@
.L248:
	cmp	r4, #0	@ fx0.1110,
	movw	r0, #:lower16:.LANCHOR0	@ tmp252,
	movt	r0, #:upper16:.LANCHOR0	@ tmp252,
	mov	r4, #1	@ movhi	@,
	movlt	r5, #-2147483648	@, fx0.1115,
	mvnge	r5, #-2147483648	@, fx0.1115,
	strh	r4, [r0, #0]	@ movhi	@, avc_Overflow
	b	.L233	@
.L246:
	cmp	r5, #0	@ fx0.1102,
	movw	r5, #:lower16:.LANCHOR0	@ tmp228,
	movt	r5, #:upper16:.LANCHOR0	@ tmp228,
	mov	r0, #1	@ movhi	@,
	movlt	r4, #-2147483648	@, fx0.1110,
	mvnge	r4, #-2147483648	@, fx0.1110,
	strh	r0, [r5, #0]	@ movhi	@, avc_Overflow
	b	.L223	@
	.fnend
	.size	iMedia_AVC_sqrt_i64, .-iMedia_AVC_sqrt_i64
	.align	2
	.global	iMedia_AVC_memcpy
	.type	iMedia_AVC_memcpy, %function
iMedia_AVC_memcpy:
	.fnstart
.LFB1327:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ memsize
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ble	.L254	@,
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ tmp166,* mem_source
	mov	r3, #1	@ i,
	cmp	r3, r2	@ i, memsize
	sub	r4, r2, #1	@ tmp168, memsize,
	and	r4, r4, r3	@ tmp170, tmp168,
	strb	ip, [r0, #0]	@ tmp166,* mem_target
	beq	.L254	@,
	cmp	r4, #0	@ tmp170,
	beq	.L253	@,
	ldrb	ip, [r1, #1]	@ zero_extendqisi2	@ tmp176,
	mov	r3, #2	@ i,
	cmp	r3, r2	@ i, memsize
	strb	ip, [r0, #1]	@ tmp176,
	beq	.L254	@,
.L253:
	ldrb	r4, [r1, r3]	@ zero_extendqisi2	@ tmp173,* i
	add	ip, r3, #1	@ tmp171, i,
	strb	r4, [r0, r3]	@ tmp173,* i
	add	r3, ip, #1	@ i, tmp171,
	ldrb	r4, [r1, ip]	@ zero_extendqisi2	@ tmp175,
	cmp	r3, r2	@ i, memsize
	strb	r4, [r0, ip]	@ tmp175,
	bne	.L253	@,
.L254:
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	iMedia_AVC_memcpy, .-iMedia_AVC_memcpy
	.align	2
	.global	iMedia_AVC_L_divide_Q
	.type	iMedia_AVC_L_divide_Q, %function
iMedia_AVC_L_divide_Q:
	.fnstart
.LFB1325:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}	@,
	.save {r4, r6, r7, lr}
	mov	r6, r0	@ iNum, iNum
	mov	r7, r6, asr #31	@ iNum
	mov	r4, r1	@ __base, iDenom
	rsb	r0, r2, #32	@ tmp142, sQ,
	mov	r1, r7, asl r2	@ __n, iNum,
	subs	r3, r2, #32	@ tmp140, sQ,
	orr	r1, r1, r6, lsr r0	@, __n, __n, iNum,
	mov	r0, r6, asl r2	@ __n, iNum,
	movpl	r1, r6, asl r3	@, __n, iNum,
#APP
@ 751 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_basic_op.c" 1
	.ifnc r1,r1 ; .err ; .endif	@ __rem
	.ifnc r2,r2 ; .err ; .endif	@ __res
	.ifnc r0,r0 ; .err ; .endif	@ __n
	.ifnc r4,r4 ; .err ; .endif	@ __base
	bl	__do_div64
@ 0 "" 2
	mov	r0, r2	@, __res
	ldmfd	sp!, {r4, r6, r7, pc}	@
	.fnend
	.size	iMedia_AVC_L_divide_Q, .-iMedia_AVC_L_divide_Q
	.global	avc_Overflow
	.global	avc_Carry
	.global	giOverflow
	.global	giOldOverflow
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	iMedia_AVC_Log2Tab, %object
	.size	iMedia_AVC_Log2Tab, 128
iMedia_AVC_Log2Tab:
	.word	64081
	.word	95419005
	.word	187890342
	.word	277674700
	.word	364968689
	.word	449837843
	.word	532478772
	.word	612957011
	.word	691403633
	.word	767884173
	.word	842529704
	.word	915405761
	.word	986643417
	.word	1056308209
	.word	1124400136
	.word	1190984733
	.word	1256193073
	.word	1320090693
	.word	1382677592
	.word	1444019306
	.word	1504181371
	.word	1563229325
	.word	1621097628
	.word	1677982892
	.word	1733819580
	.word	1788607690
	.word	1842478295
	.word	1895496934
	.word	1947532531
	.word	1998716159
	.word	2049113355
	.word	2098724120
	.type	iMedia_AVC_sqrt_32_tab, %object
	.size	iMedia_AVC_sqrt_32_tab, 1024
iMedia_AVC_sqrt_32_tab:
	.word	134217728
	.word	2147483647
	.word	232471924
	.word	2147483647
	.word	300119964
	.word	2147483647
	.word	355106730
	.word	2147483647
	.word	402653184
	.word	2147483647
	.word	445149844
	.word	2147483647
	.word	483928900
	.word	2147483647
	.word	519823025
	.word	2147483647
	.word	553393869
	.word	2147483647
	.word	585041513
	.word	2147483647
	.word	615062898
	.word	2147483647
	.word	643685611
	.word	2147483647
	.word	671088640
	.word	2147483647
	.word	697415773
	.word	2147483647
	.word	722784585
	.word	2147483647
	.word	747292683
	.word	2147483647
	.word	771022147
	.word	2147483647
	.word	794042787
	.word	2147483647
	.word	816414567
	.word	2147483647
	.word	838189443
	.word	2147483647
	.word	859412787
	.word	2147483647
	.word	880124500
	.word	2147483647
	.word	900359891
	.word	2147483647
	.word	920150384
	.word	2147483647
	.word	939524096
	.word	2147483647
	.word	958506298
	.word	2147483647
	.word	977119809
	.word	2147483647
	.word	995385311
	.word	2147483647
	.word	1013321625
	.word	2147483647
	.word	1030945931
	.word	2147483647
	.word	1048273967
	.word	2147483647
	.word	1065320189
	.word	2147483647
	.word	1082097918
	.word	2130900515
	.word	1098619452
	.word	2098855072
	.word	1114896182
	.word	2068213208
	.word	1130938678
	.word	2038875364
	.word	1146756771
	.word	2010751598
	.word	1162359621
	.word	1983760420
	.word	1177755783
	.word	1957827796
	.word	1192953261
	.word	1932886296
	.word	1207959552
	.word	1908874354
	.word	1222781696
	.word	1885735628
	.word	1237426310
	.word	1863418444
	.word	1251899625
	.word	1841875310
	.word	1266207514
	.word	1821062491
	.word	1280355523
	.word	1800939636
	.word	1294348895
	.word	1781469447
	.word	1308192592
	.word	1762617387
	.word	1321891318
	.word	1744351429
	.word	1335449532
	.word	1726641819
	.word	1348871473
	.word	1709460876
	.word	1362161168
	.word	1692782810
	.word	1375322451
	.word	1676583559
	.word	1388358974
	.word	1660840642
	.word	1401274219
	.word	1645533028
	.word	1414071510
	.word	1630641020
	.word	1426754019
	.word	1616146146
	.word	1439324782
	.word	1602031062
	.word	1451786701
	.word	1588279468
	.word	1464142555
	.word	1574876026
	.word	1476395008
	.word	1561806289
	.word	1488546612
	.word	1549056637
	.word	1500599818
	.word	1536614214
	.word	1512556978
	.word	1524466875
	.word	1524420351
	.word	1512603139
	.word	1536192112
	.word	1501012140
	.word	1547874349
	.word	1489683584
	.word	1559469076
	.word	1478607716
	.word	1570978229
	.word	1467775280
	.word	1582403676
	.word	1457177486
	.word	1593747216
	.word	1446805984
	.word	1605010588
	.word	1436652834
	.word	1616195466
	.word	1426710480
	.word	1627303469
	.word	1416971728
	.word	1638336161
	.word	1407429723
	.word	1649295054
	.word	1398077927
	.word	1660181608
	.word	1388910104
	.word	1670997238
	.word	1379920300
	.word	1681743312
	.word	1371102827
	.word	1692421154
	.word	1362452250
	.word	1703032049
	.word	1353963368
	.word	1713577240
	.word	1345631207
	.word	1724057932
	.word	1337451002
	.word	1734475296
	.word	1329418191
	.word	1744830464
	.word	1321528399
	.word	1755124538
	.word	1313777432
	.word	1765358587
	.word	1306161267
	.word	1775533649
	.word	1298676040
	.word	1785650732
	.word	1291318043
	.word	1795710816
	.word	1284083712
	.word	1805714853
	.word	1276969620
	.word	1815663770
	.word	1269972473
	.word	1825558469
	.word	1263089103
	.word	1835399826
	.word	1256316458
	.word	1845188694
	.word	1249651603
	.word	1854925906
	.word	1243091706
	.word	1864612269
	.word	1236634043
	.word	1874248572
	.word	1230275986
	.word	1883835584
	.word	1224014999
	.word	1893374053
	.word	1217848637
	.word	1902864709
	.word	1211774541
	.word	1912308264
	.word	1205790433
	.word	1921705413
	.word	1199894112
	.word	1931056833
	.word	1194083452
	.word	1940363185
	.word	1188356400
	.word	1949625114
	.word	1182710970
	.word	1958843251
	.word	1177145240
	.word	1968018211
	.word	1171657354
	.word	1977150595
	.word	1166245512
	.word	1986240991
	.word	1160907976
	.word	1995289972
	.word	1155643060
	.word	2004298098
	.word	1150449133
	.word	2013265920
	.word	1145324612
	.word	2022193972
	.word	1140267967
	.word	2031082780
	.word	1135277711
	.word	2039932856
	.word	1130352405
	.word	2048744702
	.word	1125490652
	.word	2057518809
	.word	1120691096
	.word	2066255659
	.word	1115952423
	.word	2074955721
	.word	1111273357
	.word	2083619457
	.word	1106652658
	.word	2092247318
	.word	1102089122
	.word	2100839745
	.word	1097581581
	.word	2109397173
	.word	1093128899
	.word	2117920024
	.word	1088729972
	.word	2126408716
	.word	1084383727
	.word	2134863654
	.word	1080089122
	.word	2143285240
	.word	1075845140
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	avc_Overflow, %object
	.size	avc_Overflow, 2
avc_Overflow:
	.space	2
	.space	2
	.type	giOverflow, %object
	.size	giOverflow, 4
giOverflow:
	.space	4
	.type	avc_Carry, %object
	.size	avc_Carry, 2
avc_Carry:
	.space	2
	.space	2
	.type	giOldOverflow, %object
	.size	giOldOverflow, 4
giOldOverflow:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
