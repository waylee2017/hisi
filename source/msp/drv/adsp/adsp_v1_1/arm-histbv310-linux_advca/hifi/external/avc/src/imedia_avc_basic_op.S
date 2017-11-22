	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"imedia_avc_basic_op.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I arch/arm/include/generated/uapi -I arch/arm/include/generated
@ -I include -I ./arch/arm/include/uapi -I arch/arm/include/generated/uapi
@ -I ./include/uapi -I include/generated/uapi
@ -I arch/arm/mach-hi3716mv310/include -I ./../../../source/common/include
@ -I ./../../../source/common/api/include
@ -I ./../../../source/common/drv/include -I ./../../../source/msp/include
@ -I ./../../../source/msp/api/include -I ./../../../source/msp/drv/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I ./../../../source/component/ha_codec/include
@ -I -I./../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D HI_SND_AOE_SWSIMULATE_SUPPORT -D INTERLEAVED_OUTPUT
@ -D HI_SND_AVC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(imedia_avc_basic_op)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/.imedia_avc_basic_op.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_basic_op.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_basic_op.o
@ -g0 -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-maybe-uninitialized
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Wformat=1 -Wformat-security -std=gnu90
@ -fno-strict-aliasing -fno-common -fno-PIE -fno-dwarf2-cfi-asm
@ -fno-ipa-sra -funwind-tables -fomit-frame-pointer
@ -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack
@ -fstack-protector -fverbose-asm -fno-delete-null-pointer-checks
@ -fdiagnostics-color=auto -fno-aggressive-loop-optimizations -fno-tree-vrp
@ --param allow-store-data-races=0 --param ssp-buffer-size=4
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference
@ -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
@ -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fshow-column -fshrink-wrap
@ -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
@ -fstack-protector -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
@ -marm -mglibc -mlittle-endian -mlra -mpic-data-is-text-relative
@ -msched-prolog -mvectorize-with-neon-quad -mword-relocations

	.text
	.align	2
	.global	avc_L_abs
	.type	avc_L_abs, %function
avc_L_abs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #-2147483648	@ L_var1,
	beq	.L3	@,
	cmp	r0, #0	@ L_var1,
	rsblt	r0, r0, #0	@ L_var1, L_var1,
	bx	lr	@
.L3:
	mvn	r0, #-2147483648	@ L_var1,
	bx	lr	@
	.fnend
	.size	avc_L_abs, .-avc_L_abs
	.align	2
	.global	avc_norm_l
	.type	avc_norm_l, %function
avc_norm_l:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ L_var1, L_var1
	moveq	r0, r3	@ var_out, L_var1
	beq	.L6	@,
	cmn	r3, #1	@ L_var1,
	moveq	r0, #31	@ var_out,
	beq	.L6	@,
	mvn	r2, r3	@ tmp121, L_var1
	cmp	r3, r2	@ L_var1, tmp121
	mov	r0, #0	@ var_out,
	movlt	r3, r2	@ L_var1, tmp121
	cmn	r3, #-1073741823	@ L_var1,
	bgt	.L6	@,
.L8:
	mov	r3, r3, asl #1	@ L_var1, L_var1,
	add	r0, r0, #1	@ tmp118, var_out,
	cmn	r3, #-1073741823	@ L_var1,
	uxth	r0, r0	@ var_out, tmp118
	ble	.L8	@,
.L6:
	sxth	r0, r0	@, var_out
	bx	lr	@
	.fnend
	.size	avc_norm_l, .-avc_norm_l
	.align	2
	.global	avc_L_shr
	.type	avc_L_shr, %function
avc_L_shr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ var2
	mov	r3, r0	@ L_var1, L_var1
	blt	.L18	@,
	cmp	r1, #30	@ var2,
	ble	.L15	@,
	mov	r0, r0, asr #31	@ L_var_out, L_var1,
	bx	lr	@
.L15:
	cmp	r0, #0	@ L_var1,
	mvnlt	r2, r0	@ D.22194, L_var1
	mvnlt	r0, r2, asr r1	@ L_var_out, D.22194,
	movge	r0, r3, asr r1	@ L_var_out, L_var1,
	bx	lr	@
.L18:
	rsb	r1, r1, #0	@ tmp124, var2
	sxth	r1, r1	@, tmp124
	b	avc_L_shl	@
	.fnend
	.size	avc_L_shr, .-avc_L_shr
	.align	2
	.global	avc_L_shl
	.type	avc_L_shl, %function
avc_L_shl:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ var2
	mov	r3, r0	@ L_var1, L_var1
	bgt	.L27	@,
	b	.L31	@
.L24:
	cmp	r3, #-1073741824	@ L_var1,
	blt	.L32	@,
	sub	r1, r1, #1	@ tmp132, var2,
	mov	r3, r3, asl #1	@ L_var1, L_var1,
	sxth	r1, r1	@ var2, tmp132
	cmp	r1, #0	@ var2,
	beq	.L25	@,
.L27:
	cmn	r3, #-1073741823	@ L_var1,
	ble	.L24	@,
	ldr	r2, .L33	@ tmp125,
	mvn	r3, #-2147483648	@ L_var1,
	mov	r1, #1	@ tmp127,
	strh	r1, [r2]	@ movhi	@ tmp127, avc_Overflow
.L25:
	mov	r0, r3	@, L_var1
	bx	lr	@
.L32:
	ldr	r2, .L33	@ tmp128,
	mov	r3, #-2147483648	@ L_var1,
	mov	r1, #1	@ tmp130,
	mov	r0, r3	@, L_var1
	strh	r1, [r2]	@ movhi	@ tmp130, avc_Overflow
	bx	lr	@
.L31:
	rsb	r1, r1, #0	@ tmp123, var2
	sxth	r1, r1	@, tmp123
	b	avc_L_shr	@
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.fnend
	.size	avc_L_shl, .-avc_L_shl
	.align	2
	.global	avc_L_sub
	.type	avc_L_sub, %function
avc_L_sub:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	teq	r0, r1	@ L_var1, L_var2
	rsb	r1, r1, r0	@ L_var_out, L_var2, L_var1
	bmi	.L39	@,
.L36:
	mov	r0, r1	@, L_var_out
	bx	lr	@
.L39:
	teq	r1, r0	@ L_var_out, L_var1
	bpl	.L36	@,
	cmp	r0, #0	@ L_var1,
	ldr	r3, .L40	@ tmp118,
	mov	r2, #1	@ tmp120,
	movlt	r1, #-2147483648	@ L_var_out,
	mvnge	r1, #-2147483648	@ L_var_out,
	strh	r2, [r3]	@ movhi	@ tmp120, avc_Overflow
	mov	r0, r1	@, L_var_out
	bx	lr	@
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.fnend
	.size	avc_L_sub, .-avc_L_sub
	.align	2
	.global	avc_L_mult
	.type	avc_L_mult, %function
avc_L_mult:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	r0, r0, r1	@ L_var_out, var1, var2
	cmp	r0, #1073741824	@ L_var_out,
	ldreq	r3, .L45	@ tmp117,
	movne	r0, r0, asl #1	@ L_var_out, L_var_out,
	moveq	r2, #1	@ tmp119,
	mvneq	r0, #-2147483648	@ L_var_out,
	streqh	r2, [r3]	@ movhi	@ tmp119, avc_Overflow
	bx	lr	@
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.fnend
	.size	avc_L_mult, .-avc_L_mult
	.align	2
	.global	avc_mult_r
	.type	avc_mult_r, %function
avc_mult_r:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #16384	@ tmp121,
	mla	r0, r0, r1, r3	@ L_produit_arr, var1, var2, tmp121
	ldr	r3, .L55	@ tmp127,
	mov	r0, r0, asr #15	@ L_produit_arr, L_produit_arr,
	tst	r0, #65536	@ L_produit_arr,
	mvnne	r0, r0, asl #16	@ L_produit_arr, L_produit_arr,
	mvnne	r0, r0, lsr #16	@ L_produit_arr, L_produit_arr,
	cmp	r0, #32768	@ L_produit_arr,
	blt	.L49	@,
	movw	r0, #32767	@ var_out,
	mov	r2, #1	@ tmp129,
	sxth	r0, r0	@, var_out
	strh	r2, [r3]	@ movhi	@ tmp129, avc_Overflow
	bx	lr	@
.L49:
	cmn	r0, #32768	@ L_produit_arr,
	uxthge	r0, r0	@ var_out, L_produit_arr
	movlt	r0, #32768	@ var_out,
	movlt	r2, #1	@ tmp133,
	movge	r2, #0	@ tmp136,
	sxth	r0, r0	@, var_out
	strh	r2, [r3]	@ movhi	@ tmp136, avc_Overflow
	bx	lr	@
.L56:
	.align	2
.L55:
	.word	.LANCHOR0
	.fnend
	.size	avc_mult_r, .-avc_mult_r
	.align	2
	.global	avc_shr
	.type	avc_shr, %function
avc_shr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ var2
	mov	r3, r0	@ var1, var1
	blt	.L61	@,
	cmp	r1, #14	@ var2,
	movgt	r3, r0, asr #31	@ tmp130, var1,
	movle	r3, r3, asr r1	@ D.22231, var1,
	uxth	r0, r3	@ var_out, D.22231
	sxth	r0, r0	@, var_out
	bx	lr	@
.L61:
	rsb	r1, r1, #0	@ tmp123, var2
	sxth	r1, r1	@, tmp123
	b	avc_shl	@
	.fnend
	.size	avc_shr, .-avc_shr
	.align	2
	.global	avc_shl
	.type	avc_shl, %function
avc_shl:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ var2
	mov	r2, r0	@ var1, var1
	blt	.L67	@,
	cmp	r0, #0	@ var1,
	cmpne	r1, #15	@, var2,
	ble	.L68	@,
.L64:
	ldr	r1, .L69	@ tmp136,
	cmp	r2, #0	@ var1,
	movw	r3, #32767	@ tmp142,
	mov	r0, #32768	@ tmp143,
	movt	r0, 65535	@ tmp143,
	movgt	r0, r3	@ var_out, tmp142
	mov	r3, #1	@ tmp138,
	strh	r3, [r1]	@ movhi	@ tmp138, avc_Overflow
	bx	lr	@
.L68:
	mov	r1, r0, asl r1	@ resultat, var1,
	sxth	r0, r1	@ var_out, resultat
	cmp	r0, r1	@ var_out, resultat
	bne	.L64	@,
	bx	lr	@
.L67:
	rsb	r1, r1, #0	@ tmp125, var2
	sxth	r1, r1	@, tmp125
	b	avc_shr	@
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.fnend
	.size	avc_shl, .-avc_shl
	.align	2
	.global	avc_sature
	.type	avc_sature, %function
avc_sature:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #32768	@ L_var1,
	ldr	r3, .L75	@ tmp113,
	blt	.L72	@,
	movw	r0, #32767	@ var_out,
	mov	r2, #1	@ tmp115,
	sxth	r0, r0	@, var_out
	strh	r2, [r3]	@ movhi	@ tmp115, avc_Overflow
	bx	lr	@
.L72:
	cmn	r0, #32768	@ L_var1,
	uxthge	r0, r0	@ var_out, L_var1
	movlt	r0, #32768	@ var_out,
	movlt	r2, #1	@ tmp119,
	movge	r2, #0	@ tmp122,
	sxth	r0, r0	@, var_out
	strh	r2, [r3]	@ movhi	@ tmp122, avc_Overflow
	bx	lr	@
.L76:
	.align	2
.L75:
	.word	.LANCHOR0
	.fnend
	.size	avc_sature, .-avc_sature
	.align	2
	.global	avc_extract_l
	.type	avc_extract_l, %function
avc_extract_l:
	.fnstart
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ L_var1,
	add	r3, r0, #32768	@ L_arrondi, L_var1,
	blt	.L84	@,
	teq	r3, r0	@ L_arrondi, L_var1
	bmi	.L81	@,
.L84:
	mov	r0, r3, lsr #16	@ D.22258, L_arrondi,
	sxth	r0, r0	@, D.22258
	bx	lr	@
.L81:
	cmp	r0, #0	@ L_var1,
	ldr	r3, .L85	@ tmp122,
	movw	r0, #32767	@ tmp127,
	mov	r2, #1	@ tmp124,
	movlt	r0, #32768	@ D.22258,
	strh	r2, [r3]	@ movhi	@ tmp124, avc_Overflow
	sxth	r0, r0	@, D.22258
	bx	lr	@
.L86:
	.align	2
.L85:
	.word	.LANCHOR0
	.fnend
	.size	avc_round32, .-avc_round32
	.align	2
	.global	avc_L_add
	.type	avc_L_add, %function
avc_L_add:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	teq	r0, r1	@ L_var1, L_var2
	add	r1, r0, r1	@ L_var_out, L_var1, L_var2
	bmi	.L88	@,
	teq	r1, r0	@ L_var_out, L_var1
	bpl	.L88	@,
	cmp	r0, #0	@ L_var1,
	ldr	r3, .L91	@ tmp118,
	mov	r2, #1	@ tmp120,
	movlt	r1, #-2147483648	@ L_var_out,
	mvnge	r1, #-2147483648	@ L_var_out,
	strh	r2, [r3]	@ movhi	@ tmp120, avc_Overflow
.L88:
	mov	r0, r1	@, L_var_out
	bx	lr	@
.L92:
	.align	2
.L91:
	.word	.LANCHOR0
	.fnend
	.size	avc_L_add, .-avc_L_add
	.align	2
	.global	avc_extract_h
	.type	avc_extract_h, %function
avc_extract_h:
	.fnstart
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	adds	r2, r0, #1	@ D.22273, var,
	adc	r3, r1, #0	@ D.22273, var,
	cmp	r3, #0	@ D.22273,
	cmpeq	r2, #1	@ D.22273,
	bls	.L98	@,
	mov	r2, r1, asr #31	@ tmp127, var,
	eor	r0, r0, r2	@ var, var, tmp127
	eor	r1, r1, r2	@ var, var, tmp3
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	mvn	r4, #0	@ tmp120,
	cmp	r4, r0	@ tmp120, var
	mvn	r5, #-1073741824	@,
	sbcs	r3, r5, r1	@ tmp131,, var
	mov	r3, #0	@ var_out,
	blt	.L95	@,
.L97:
	adds	r0, r0, r0	@ var, var, var
	add	r3, r3, #1	@ tmp123, var_out,
	adc	r1, r1, r1	@ var, var, var
	cmp	r4, r0	@ tmp130, var
	sbcs	r2, r5, r1	@ tmp132,, var
	uxth	r3, r3	@ var_out, tmp123
	bge	.L97	@,
.L95:
	sxth	r0, r3	@, var_out
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
.L98:
	mov	r3, #63	@ var_out,
	sxth	r0, r3	@, var_out
	bx	lr	@
	.fnend
	.size	avc_norm_ll, .-avc_norm_ll
	.align	2
	.global	avc_Shr64s
	.type	avc_Shr64s, %function
avc_Shr64s:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ sQ
	blt	.L110	@,
	cmp	r2, #63	@ sQ,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	mov	r5, r1	@ var, var
	bgt	.L111	@,
	cmp	r0, #0	@ var,
	mov	r4, r0	@ var, var
	sbcs	r3, r1, #0	@ tmp140, var,
	blt	.L112	@,
	mov	r0, r4, lsr r2	@ var_out, var,
	rsb	r3, r2, #32	@ tmp132, sQ,
	subs	ip, r2, #32	@ tmp133, sQ,
	orr	r0, r0, r5, asl r3	@ var_out, var_out, var,
	orrpl	r0, r0, r5, asr ip	@ var_out, var_out, var,
	mov	r1, r5, asr r2	@ var_out, var,
.L105:
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
.L111:
	mov	r0, r1, lsr #31	@ tmp127, var,
	rsbs	r0, r0, #0	@ var_out, tmp127,
	sbc	r1, r1, r1	@ var_out, var_out, var_out
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
.L110:
	rsb	r2, r2, #0	@ tmp124, sQ
	sxth	r2, r2	@, tmp124
	b	avc_Shl64s	@
.L112:
	mvn	r4, r0	@ D.22288, var
	mvn	r5, r1	@ D.22288, var
	rsb	r3, r2, #32	@ tmp130, sQ,
	mov	r0, r4, lsr r2	@ D.22288, D.22288,
	orr	r0, r0, r5, asl r3	@ D.22288, D.22288, D.22288,
	subs	ip, r2, #32	@ tmp131, sQ,
	orrpl	r0, r0, r5, asr ip	@ D.22288, D.22288, D.22288,
	mov	r1, r5, asr r2	@ D.22288, D.22288,
	mvn	r0, r0	@ var_out, D.22288
	mvn	r1, r1	@ var_out, D.22288
	b	.L105	@
	.fnend
	.size	avc_Shr64s, .-avc_Shr64s
	.align	2
	.global	avc_Shl64s
	.type	avc_Shl64s, %function
avc_Shl64s:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ sQ
	blt	.L114	@,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	mov	r4, r0	@ var, var
	mov	r5, r1	@ var, var
	ble	.L115	@,
	mvn	r0, #0	@ tmp122,
	cmp	r0, r4	@ tmp122, var
	mvn	r1, #-1073741824	@,
	sbcs	r3, r1, r5	@ tmp139,, var
	bge	.L119	@,
	b	.L116	@
.L120:
	sub	r2, r2, #1	@ tmp135, sQ,
	adds	r4, r4, r4	@ var, var, var
	adc	r5, r5, r5	@ var, var, var
	sxth	r2, r2	@ sQ, tmp135
	cmp	r2, #0	@ sQ,
	beq	.L115	@,
	cmp	r0, r4	@ tmp137, var
	sbcs	r3, r1, r5	@ tmp141,, var
	blt	.L116	@,
.L119:
	cmp	r4, #0	@ var,
	sbcs	r3, r5, #-1073741824	@ tmp142, var,
	bge	.L120	@,
	ldr	r3, .L126	@ tmp131,
	mov	r4, #0	@ var,
	mov	r5, #-2147483648	@ var,
	mov	r2, #1	@ tmp132,
	str	r2, [r3, #4]	@ tmp132, giOverflow
.L115:
	mov	r0, r4	@, var
	mov	r1, r5	@, var
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
.L116:
	ldr	r3, .L126	@ tmp128,
	mvn	r4, #0	@ var,
	mvn	r5, #-2147483648	@ var,
	mov	r0, r4	@, var
	mov	r1, r5	@, var
	mov	r2, #1	@ tmp129,
	str	r2, [r3, #4]	@ tmp129, giOverflow
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
.L114:
	rsb	r2, r2, #0	@ tmp125, sQ
	sxth	r2, r2	@, tmp125
	b	avc_Shr64s	@
.L127:
	.align	2
.L126:
	.word	.LANCHOR0
	.fnend
	.size	avc_Shl64s, .-avc_Shl64s
	.align	2
	.global	avc_Mul_f32x32
	.type	avc_Mul_f32x32, %function
avc_Mul_f32x32:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #-2147483648	@ var1,
	cmpeq	r1, #-2147483648	@, var2,
	bne	.L129	@,
	ldr	r3, .L131	@ tmp127,
	mov	r2, #1	@ tmp128,
	mvn	r0, #0	@ L_product,
	mvn	r1, #-2147483648	@ L_product,
	str	r2, [r3, #4]	@ tmp128, giOverflow
	bx	lr	@
.L129:
	smull	r0, r1, r0, r1	@ L_product, var1, var2
	adds	r0, r0, r0	@ L_product, L_product, L_product
	adc	r1, r1, r1	@ L_product, L_product, L_product
	bx	lr	@
.L132:
	.align	2
.L131:
	.word	.LANCHOR0
	.fnend
	.size	avc_Mul_f32x32, .-avc_Mul_f32x32
	.align	2
	.global	avc_Sub64s
	.type	avc_Sub64s, %function
avc_Sub64s:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	eor	r4, r0, r2	@ D.22310, L_var1, L_var2
	subs	r2, r0, r2	@ L_var_out, L_var1, L_var2
	eor	r5, r1, r3	@ D.22310, L_var1, L_var2
	sbc	r3, r1, r3	@ L_var_out, L_var1, L_var2
	cmp	r4, #0	@ D.22310,
	sbcs	ip, r5, #0	@ tmp121, D.22310,
	blt	.L138	@,
.L134:
	mov	r0, r2	@, L_var_out
	mov	r1, r3	@, L_var_out
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
.L138:
	eor	r4, r2, r0	@ D.22310, L_var_out, L_var1
	eor	r5, r3, r1	@ D.22310, L_var_out, L_var1
	cmp	r4, #0	@ D.22310,
	sbcs	ip, r5, #0	@ tmp122, D.22310,
	bge	.L134	@,
	cmp	r0, #0	@ L_var1,
	mov	r0, #1	@ tmp119,
	sbcs	r3, r1, #0	@ tmp123, L_var1,
	ldr	r1, .L139	@ tmp118,
	mvnge	r2, #0	@ L_var_out,
	mvnge	r3, #-2147483648	@ L_var_out,
	movlt	r2, #0	@ L_var_out,
	movlt	r3, #-2147483648	@ L_var_out,
	str	r0, [r1, #4]	@ tmp119, giOverflow
	mov	r0, r2	@, L_var_out
	mov	r1, r3	@, L_var_out
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
.L140:
	.align	2
.L139:
	.word	.LANCHOR0
	.fnend
	.size	avc_Sub64s, .-avc_Sub64s
	.align	2
	.global	avc_Add64s
	.type	avc_Add64s, %function
avc_Add64s:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	eor	r4, r0, r2	@ D.22313, L_var1, L_var2
	adds	r2, r2, r0	@ L_var_out, L_var2, L_var1
	eor	r5, r1, r3	@ D.22313, L_var1, L_var2
	adc	r3, r3, r1	@ L_var_out, L_var2, L_var1
	cmp	r4, #0	@ D.22313,
	sbcs	ip, r5, #0	@ tmp121, D.22313,
	blt	.L142	@,
	eor	r4, r2, r0	@ D.22313, L_var_out, L_var1
	eor	r5, r3, r1	@ D.22313, L_var_out, L_var1
	cmp	r4, #0	@ D.22313,
	sbcs	ip, r5, #0	@ tmp122, D.22313,
	bge	.L142	@,
	cmp	r0, #0	@ L_var1,
	mov	r0, #1	@ tmp119,
	sbcs	r3, r1, #0	@ tmp123, L_var1,
	ldr	r1, .L146	@ tmp118,
	mvnge	r2, #0	@ L_var_out,
	mvnge	r3, #-2147483648	@ L_var_out,
	movlt	r2, #0	@ L_var_out,
	movlt	r3, #-2147483648	@ L_var_out,
	str	r0, [r1, #4]	@ tmp119, giOverflow
.L142:
	mov	r0, r2	@, L_var_out
	mov	r1, r3	@, L_var_out
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
.L147:
	.align	2
.L146:
	.word	.LANCHOR0
	.fnend
	.size	avc_Add64s, .-avc_Add64s
	.align	2
	.global	iMedia_AVC_sature_32
	.type	iMedia_AVC_sature_32, %function
iMedia_AVC_sature_32:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #-2147483647	@ tmp113,
	cmp	r2, r0	@ tmp113, var
	mov	r3, #0	@,
	sbcs	r3, r3, r1	@ tmp116,, var
	bge	.L152	@,
	mvn	r0, #-2147483648	@ D.22316,
	bx	lr	@
.L152:
	mov	r2, #-2147483646	@ tmp114,
	cmp	r0, r2	@ var, tmp114
	mvn	r3, #0	@,
	sbcs	r3, r1, r3	@ tmp117, var,
	movlt	r0, #-2147483647	@ D.22316,
	bx	lr	@
	.fnend
	.size	iMedia_AVC_sature_32, .-iMedia_AVC_sature_32
	.align	2
	.global	iMedia_AVC_saturate_to_16bit
	.type	iMedia_AVC_saturate_to_16bit, %function
iMedia_AVC_saturate_to_16bit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #32766	@ tmp113,
	cmp	r0, r3	@ L_var, tmp113
	movwgt	r0, #32767	@ D.22319,
	ble	.L157	@,
	sxth	r0, r0	@, D.22319
	bx	lr	@
.L157:
	movw	r3, #32770	@ tmp114,
	movt	r3, 65535	@ tmp114,
	cmp	r0, r3	@ L_var, tmp114
	uxthge	r0, r0	@ D.22319, L_var
	movwlt	r0, #32769	@ D.22319,
	sxth	r0, r0	@, D.22319
	bx	lr	@
	.fnend
	.size	iMedia_AVC_saturate_to_16bit, .-iMedia_AVC_saturate_to_16bit
	.align	2
	.global	avc_round_64
	.type	avc_round_64, %function
avc_round_64:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	orrs	r3, r0, r1	@ tmp114, var
	bxeq	lr	@
	adds	r0, r0, #-2147483648	@ D.22322, var,
	sbc	r1, r1, #0	@ D.22322, var,
	bx	lr	@
	.fnend
	.size	avc_round_64, .-avc_round_64
	.align	2
	.global	iMedia_AVC_Log10
	.type	iMedia_AVC_Log10, %function
iMedia_AVC_Log10:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ iIn
	ble	.L171	@,
	cmn	r0, #1	@ iIn,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	moveq	r4, #31	@ var_out,
	beq	.L163	@,
	mvn	r3, r0	@ tmp175, iIn
	cmp	r0, r3	@ iIn, tmp175
	mov	r4, #0	@ var_out,
	movge	r3, r0	@ iIn, iIn
	cmn	r3, #-1073741823	@ iIn,
	bgt	.L163	@,
.L165:
	mov	r3, r3, asl #1	@ iIn, iIn,
	add	r4, r4, #1	@ tmp151, var_out,
	cmn	r3, #-1073741823	@ iIn,
	uxth	r4, r4	@ var_out, tmp151
	ble	.L165	@,
.L163:
	mov	r6, r1	@ sQ, sQ
	sxth	r1, r4	@, var_out
	bl	avc_L_shl	@
	mov	r1, #25	@,
	mov	r5, r0	@ L_x,
	bl	avc_L_shr	@
	ldr	r2, .L182	@ tmp153,
	ubfx	r3, r5, #10, #15	@ D.22342, L_x,,
	sub	r0, r0, #32	@ tmp154,,
	ldr	r2, [r2, r0, asl #2]	@ D.22340, iMedia_AVC_Log2Tab
	uxth	r1, r2	@ D.22342, D.22340
	mov	r2, r2, lsr #16	@ D.22340, D.22340,
	smulbb	r3, r1, r3	@ L_var_out, D.22342, D.22342
	mov	r2, r2, asl #16	@ D.22340, D.22340,
	mov	r3, r3, asl #1	@ L_var_out, L_var_out,
	teq	r3, r2	@ L_var_out, D.22340
	rsb	r3, r3, r2	@ L_y, L_var_out, D.22340
	bmi	.L181	@,
.L168:
	cmp	r5, #0	@ L_x,
	mov	r1, #13	@,
	rsbgt	r4, r4, #30	@ tmp168, var_out,
	movgt	r5, r3, asr #16	@ D.22340, L_y,
	movle	r5, #0	@ D.22340,
	sxthgt	r0, r4	@ D.22340, tmp168
	movle	r0, r5	@ D.22340, D.22340
	rsb	r0, r6, r0	@, sQ, D.22340
	bl	avc_L_shl	@
	mov	r1, #2	@,
	mov	r4, r0	@ D.22340,
	mov	r0, r5	@, D.22340
	bl	avc_L_shr	@
	movw	r3, #2466	@ tmp172,
	mov	r1, #15	@,
	add	r0, r4, r0	@ D.22340, D.22340,
	mul	r0, r3, r0	@, tmp172, D.22340
	bl	avc_L_shr	@
	uxth	r0, r0	@ D.22339,
	sxth	r0, r0	@, D.22339
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L181:
	teq	r3, r2	@ L_y, D.22340
	bpl	.L168	@,
	cmp	r2, #0	@ D.22340,
	ldr	r2, .L182+4	@ tmp164,
	mov	r1, #1	@ tmp166,
	movlt	r3, #-2147483648	@ L_y,
	mvnge	r3, #-2147483648	@ L_y,
	strh	r1, [r2]	@ movhi	@ tmp166, avc_Overflow
	b	.L168	@
.L171:
	mov	r0, #45056	@ D.22339,
	sxth	r0, r0	@, D.22339
	bx	lr	@
.L183:
	.align	2
.L182:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.fnend
	.size	iMedia_AVC_Log10, .-iMedia_AVC_Log10
	.align	2
	.global	iMedia_AVC_L_exp10_i
	.type	iMedia_AVC_L_exp10_i, %function
iMedia_AVC_L_exp10_i:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #26754	@ tmp153,
	movt	r3, 2	@ tmp153,
	cmp	r0, r3	@ x, tmp153
	ble	.L206	@,
	mvn	r0, #-2147483648	@ D.22350,
	bx	lr	@
.L206:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r3, r0	@ x, x
	movw	r1, #27213	@,
	ubfx	r0, r0, #0, #15	@, x,,
	ubfx	r4, r3, #15, #16	@ sInt, x,,
	bl	avc_mult_r	@
	mov	r1, #2	@,
	bl	avc_L_shl	@
	mov	r1, #15	@,
	mov	r5, r0	@ iTemp,
	bl	avc_L_shr	@
	mov	r1, #15	@,
	sxth	r7, r0	@ sHigh,
	mov	r0, r7	@, sHigh
	bl	avc_L_shl	@
	teq	r0, r5	@ D.22351, iTemp
	rsb	r3, r0, r5	@ L_var_out, D.22351, iTemp
	bmi	.L207	@,
.L204:
	uxth	r5, r3	@ D.22354, L_var_out
	mov	r6, #0	@ tmp171,
	movt	r6, 8222	@ tmp171,
	movw	r3, #10643	@ tmp170,
	smlabb	r6, r5, r3, r6	@ D.22351, D.22354, tmp170, tmp171
.L187:
	mov	r1, r7	@, sHigh
	mov	r0, #1	@,
	bl	avc_shl	@
	sxth	r1, r5	@ D.22354, D.22354
	mov	r7, r0	@ sHigh,
	mov	r0, r1	@,
	bl	avc_mult_r	@
	movw	r3, #5615	@ tmp183,
	mla	r0, r0, r3, r6	@ iTemp,, tmp183, D.22351
	mov	r1, r0, asl #1	@ iTemp, iTemp,
	cmp	r1, #0	@ iTemp,
	add	r3, r1, #32768	@ L_arrondi, iTemp,
	blt	.L205	@,
	teq	r3, r1	@ L_arrondi, iTemp
	bmi	.L192	@,
.L205:
	mov	r3, r3, asr #16	@ D.22351, L_arrondi,
.L191:
	mul	r0, r3, r7	@ L_var_out, D.22351, sHigh
	cmp	r0, #1073741824	@ L_var_out,
	ldreq	r3, .L210	@ tmp192,
	movne	r0, r0, asl #1	@ iTemp, L_var_out,
	moveq	r2, #1	@ tmp194,
	mvneq	r0, #-2147483648	@ Tmp_64,
	movne	r1, r0, asr #31	@ Tmp_64, iTemp,
	moveq	r1, #0	@ Tmp_64,
	streqh	r2, [r3]	@ movhi	@ tmp194, avc_Overflow
	sxth	r3, r4	@ sInt, sInt
	cmp	r3, #1	@ sInt,
	beq	.L208	@,
	cmp	r3, #2	@ sInt,
	beq	.L209	@,
	cmp	r3, #3	@ sInt,
	movweq	r3, #10000	@ tmp211,
	umulleq	r0, r1, r0, r3	@ Tmp_64, Tmp_64, tmp211
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L192:
	ldr	ip, .L210	@ tmp188,
	mov	r2, #32768	@ tmp222,
	cmp	r1, #0	@ iTemp,
	movt	r2, 65535	@ tmp222,
	movw	r3, #32767	@ tmp223,
	movlt	r3, r2	@ D.22351, tmp222
	mov	r2, #1	@ tmp190,
	strh	r2, [ip]	@ movhi	@ tmp190, avc_Overflow
	b	.L191	@
.L208:
	adds	r2, r0, r0	@ tmp197, Tmp_64, Tmp_64
	adds	r2, r2, r2	@ tmp198, tmp197, tmp197
	adds	r0, r0, r2	@ tmp199, Tmp_64, tmp198
	adds	r0, r0, r0	@ Tmp_64, tmp199, tmp199
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L207:
	teq	r3, r5	@ L_var_out, iTemp
	bpl	.L204	@,
	ldr	r1, .L210	@ tmp172,
	cmp	r5, #0	@ iTemp,
	mov	r3, #0	@ tmp219,
	movw	r2, #54893	@ tmp220,
	movt	r3, 8222	@ tmp219,
	movt	r2, 8221	@ tmp220,
	movw	r5, #65535	@ tmp221,
	movlt	r6, r3	@ D.22351, tmp219
	movge	r6, r2	@ D.22351, tmp220
	mov	r3, #1	@ tmp174,
	movlt	r5, #0	@ D.22354,
	strh	r3, [r1]	@ movhi	@ tmp174, avc_Overflow
	b	.L187	@
.L209:
	adds	r4, r0, r0	@ tmp203, Tmp_64, Tmp_64
	adc	r5, r1, r1	@, Tmp_64, Tmp_64
	adds	r4, r4, r0	@ tmp204, tmp203, Tmp_64
	mov	r2, r4, asl #5	@ tmp205, tmp204,
	adc	r5, r5, r1	@,, Tmp_64
	adds	r2, r2, r4	@ tmp208, tmp205, tmp204
	adds	r0, r0, r2	@ Tmp_64, Tmp_64, tmp208
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L211:
	.align	2
.L210:
	.word	.LANCHOR0
	.fnend
	.size	iMedia_AVC_L_exp10_i, .-iMedia_AVC_L_exp10_i
	.align	2
	.global	iMedia_AVC_L_divide_Q
	.type	iMedia_AVC_L_divide_Q, %function
iMedia_AVC_L_divide_Q:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}	@,
	.save {r4, r6, r7, lr}
	mov	r7, r0, asr #31	@ D.22357, D.22357,
	mov	r4, r1	@ __base, iDenom
	sub	r3, r2, #32	@ tmp123, sQ,
	mov	r1, r7, asl r2	@ __n, D.22357,
	mov	r6, r0	@ D.22357, iNum
	orr	r1, r1, r0, asl r3	@ __n, __n, iNum,
	rsb	r3, r2, #32	@ tmp124, sQ,
	orr	r1, r1, r0, lsr r3	@ __n, __n, iNum,
	mov	r0, r0, asl r2	@ __n, iNum,
#APP
@ 751 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_basic_op.c" 1
	.ifnc r1,r1; .ifnc r1r1,fpr11; .ifnc r1r1,r11fp; .ifnc r1r1,ipr12; .ifnc r1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif	@ __rem
	.ifnc r2,r2; .ifnc r2r2,fpr11; .ifnc r2r2,r11fp; .ifnc r2r2,ipr12; .ifnc r2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif	@ __res
	.ifnc r0,r0; .ifnc r0r0,fpr11; .ifnc r0r0,r11fp; .ifnc r0r0,ipr12; .ifnc r0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif	@ __n
	.ifnc r4,r4; .ifnc r4r4,fpr11; .ifnc r4r4,r11fp; .ifnc r4r4,ipr12; .ifnc r4r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif	@ __base
	bl	__do_div64
@ 0 "" 2
	mov	r0, r2	@, __res
	ldmfd	sp!, {r4, r6, r7, pc}	@
	.fnend
	.size	iMedia_AVC_L_divide_Q, .-iMedia_AVC_L_divide_Q
	.align	2
	.global	iMedia_AVC_sqrt_i64
	.type	iMedia_AVC_sqrt_i64, %function
iMedia_AVC_sqrt_i64:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1	@ x,
	sbcs	r3, r1, #0	@ tmp343, x,
	blt	.L251	@,
	adds	r2, r0, #1	@ D.22401, x,
	adc	r3, r1, #0	@ D.22401, x,
	cmp	r3, #0	@ D.22401,
	cmpeq	r2, #1	@ D.22401,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	bls	.L252	@,
	mov	r4, r1, asr #31	@ tmp334, x,
	mvn	r6, #0	@ tmp208,
	mvn	r7, #-1073741824	@,
	mov	r5, r4	@, tmp334
	eor	r4, r4, r0	@ x, tmp334, x
	eor	r5, r5, r1	@ x,, x
	cmp	r6, r4	@ tmp208, x
	sbcs	r3, r7, r5	@ tmp344,, x
	blt	.L254	@,
	mov	r2, #0	@ exp1,
.L218:
	adds	r4, r4, r4	@ x, x, x
	add	r2, r2, #1	@ tmp211, exp1,
	adc	r5, r5, r5	@ x, x, x
	cmp	r6, r4	@ tmp337, x
	sbcs	r3, r7, r5	@ tmp345,, x
	uxth	r2, r2	@ exp1, tmp211
	bge	.L218	@,
	bic	r2, r2, #1	@ tmp214, exp1,
	uxth	r2, r2	@ D.22404, tmp214
	sub	r8, r2, #32	@ tmp216, D.22404,
	sbfx	r8, r8, #1, #15	@ tmp218, tmp216,,
	uxth	r8, r8	@ D.22403, tmp218
	add	r9, r8, #15	@ tmp219, D.22403,
	add	r8, r8, #16	@ tmp220, D.22403,
	uxth	r9, r9	@ D.22405, tmp219
	uxth	r8, r8	@ D.22405, tmp220
	b	.L216	@
.L252:
	mov	r8, #31	@ D.22405,
	mov	r9, #30	@ D.22405,
	mov	r2, #62	@ D.22404,
.L216:
	sxth	r2, r2	@, D.22404
	bl	avc_Shl64s	@
	cmp	r0, #0	@ x,
	mov	r6, r0	@ x,
	sbcs	r3, r1, #0	@ tmp346, x,
	mov	r7, r1	@ x,
	movge	r0, r1, asr #24	@ var_out, x,
	mvnlt	r3, r1	@ D.22402, x
	mov	r1, #1	@,
	movlt	r0, r3, asr #24	@ D.22402, D.22402,
	mvnlt	r0, r0	@ var_out, D.22402
	bl	avc_L_shl	@
	ldr	r3, .L270	@ tmp228,
	bic	r0, r0, r0, asr #31	@ index,
	add	r2, r3, r0, lsl #2	@ tmp229, tmp228, index,
	ldr	r3, [r2, #128]	@ fx0, iMedia_AVC_sqrt_32_tab
	ldr	ip, [r2, #132]	@ fpx0, iMedia_AVC_sqrt_32_tab
	cmp	r3, #-2147483648	@ fx0,
	bne	.L221	@,
	ldr	r2, .L270+4	@ tmp235,
	mvn	r4, #0	@ llTmp1,
	mvn	r5, #-2147483648	@ llTmp1,
	mov	r1, #1	@ tmp236,
	str	r1, [r2, #4]	@ tmp236, giOverflow
.L222:
	eor	r0, r4, r6	@ D.22402, llTmp1, x
	subs	r4, r6, r4	@ llTmp1, x, llTmp1
	eor	r1, r5, r7	@ D.22402, llTmp1, x
	sbc	r5, r7, r5	@ llTmp1, x, llTmp1
	cmp	r0, #0	@ D.22402,
	sbcs	r2, r1, #0	@ tmp347, D.22402,
	blt	.L264	@,
.L223:
	cmp	r4, #0	@ llTmp1,
	sub	lr, ip, #-2147483648	@ D.22400, fpx0,
	sbcs	r2, r5, #0	@ tmp350, llTmp1,
	clz	lr, lr	@ D.22400, D.22400
	mvnlt	r5, r5	@ D.22402, llTmp1
	movge	r0, r5	@ var_out, llTmp1
	movlt	r0, r5	@ D.22402, D.22402
	mov	lr, lr, lsr #5	@ D.22400, D.22400,
	mvnlt	r0, r0	@ var_out, D.22402
	cmp	r0, #-2147483648	@ var_out,
	cmpeq	ip, #-2147483648	@, fpx0,
	bne	.L227	@,
	ldr	r2, .L270+4	@ tmp256,
	mvn	r4, #-2147483648	@ D.22398,
	mov	r1, #1	@ tmp257,
	str	r1, [r2, #4]	@ tmp257, giOverflow
.L230:
	teq	r4, r3	@ D.22398, fx0
	add	r4, r3, r4	@ fx0, fx0, D.22398
	bmi	.L231	@,
	teq	r4, r3	@ fx0, fx0
	bmi	.L265	@,
.L231:
	cmp	r4, #-2147483648	@ fx0,
	bne	.L233	@,
	ldr	r1, .L270+4	@ tmp273,
	mvn	r2, #0	@ llTmp1,
	mvn	r3, #-2147483648	@ llTmp1,
	mov	r0, #1	@ tmp274,
	str	r0, [r1, #4]	@ tmp274, giOverflow
.L234:
	eor	r0, r2, r6	@ D.22402, llTmp1, x
	subs	r2, r6, r2	@ llTmp1, x, llTmp1
	eor	r1, r3, r7	@ D.22402, llTmp1, x
	sbc	r3, r7, r3	@ llTmp1, x, llTmp1
	cmp	r0, #0	@ D.22402,
	sbcs	r1, r1, #0	@ tmp352, D.22402,
	blt	.L266	@,
.L235:
	cmp	r2, #0	@ llTmp1,
	sbcs	r1, r3, #0	@ tmp355, llTmp1,
	mvnlt	r3, r3	@ D.22402, llTmp1
	movge	r0, r3	@ var_out, llTmp1
	movlt	r0, r3	@ D.22402, D.22402
	mvnlt	r0, r0	@ var_out, D.22402
	cmp	r0, #-2147483648	@ var_out,
	movne	lr, #0	@, tmp291
	andeq	lr, lr, #1	@,, tmp291, D.22400
	cmp	lr, #0	@ tmp291,
	beq	.L239	@,
	ldr	r3, .L270+4	@ tmp292,
	mvn	r5, #-2147483648	@ D.22398,
	mov	r2, #1	@ tmp293,
	str	r2, [r3, #4]	@ tmp293, giOverflow
.L242:
	teq	r5, r4	@ D.22398, fx0
	add	r5, r4, r5	@ fx0, fx0, D.22398
	bmi	.L243	@,
	teq	r5, r4	@ fx0, fx0
	bmi	.L267	@,
.L243:
	sxth	r1, r9	@, D.22405
	mov	r0, #1	@,
	bl	avc_L_shl	@
	teq	r0, r5	@ round, fx0
	add	r0, r0, r5	@ fx0, round, fx0
	bmi	.L245	@,
	teq	r0, r5	@ fx0, fx0
	bmi	.L268	@,
.L245:
	sxth	r1, r8	@, D.22405
	movw	r4, #31130	@ tmp317,
	bl	avc_L_shr	@
	movt	r4, 23170	@ tmp317,
	mov	r1, #30	@,
	mov	r3, r0	@ fx0,
	mov	r0, #1	@,
	smull	r4, r5, r3, r4	@ L_product, fx0, tmp317
	adds	r4, r4, r4	@ tmp318, L_product, L_product
	adc	r5, r5, r5	@, L_product, L_product
	bl	avc_L_shl	@
	mov	r1, r0, asr #31	@ D.22402,,
	adds	r2, r0, r4	@ llTmp1, D.22402, tmp318
	eor	r6, r4, r0	@ D.22402, tmp318, D.22402
	adc	r3, r1, r5	@ llTmp1, D.22402,
	eor	r7, r5, r1	@ D.22402,, D.22402
	cmp	r6, #0	@ D.22402,
	sbcs	r1, r7, #0	@ tmp357, D.22402,
	blt	.L247	@,
	eor	r0, r2, r4	@ D.22402, llTmp1, tmp318
	eor	r1, r3, r5	@ D.22402, llTmp1,
	cmp	r0, #0	@ D.22402,
	sbcs	r1, r1, #0	@ tmp358, D.22402,
	blt	.L269	@,
.L247:
	cmp	r2, #0	@ llTmp1,
	sbcs	r1, r3, #0	@ tmp360, llTmp1,
	mvnlt	r2, r2	@ D.22402, llTmp1
	mvnlt	r3, r3	@ D.22402, llTmp1
	movlt	r0, r2, lsr #31	@ D.22402, D.22402,
	orrlt	r0, r0, r3, asl #1	@ D.22402, D.22402, D.22402,
	mvnlt	r0, r0	@ var_out, D.22402
	movge	r0, r2, lsr #31	@ var_out, llTmp1,
	orrge	r0, r0, r3, asl #1	@ var_out, var_out, llTmp1,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L233:
	smull	r2, r3, r4, r4	@ L_product, fx0, fx0
	adds	r2, r2, r2	@ llTmp1, L_product, L_product
	adc	r3, r3, r3	@ llTmp1, L_product, L_product
	b	.L234	@
.L239:
	smull	r0, r1, ip, r0	@ L_product, fpx0, var_out
	adds	r0, r0, r0	@ tmp295, L_product, L_product
	adc	r1, r1, r1	@, L_product, L_product
	cmp	r0, #0	@ tmp295,
	sbcs	r3, r1, #0	@ tmp356,,
	mvnlt	r1, r1	@ D.22402,
	movge	r5, r1	@ D.22398,
	movlt	r5, r1	@ D.22402, D.22402
	mvnlt	r5, r5	@ D.22398, D.22402
	b	.L242	@
.L221:
	smull	r4, r5, r3, r3	@ L_product, fx0, fx0
	adds	r4, r4, r4	@ llTmp1, L_product, L_product
	adc	r5, r5, r5	@ llTmp1, L_product, L_product
	b	.L222	@
.L227:
	smull	r0, r1, ip, r0	@ L_product, fpx0, var_out
	adds	r0, r0, r0	@ tmp259, L_product, L_product
	adc	r1, r1, r1	@, L_product, L_product
	cmp	r0, #0	@ tmp259,
	sbcs	r2, r1, #0	@ tmp351,,
	mvnlt	r1, r1	@ D.22402,
	movge	r4, r1	@ D.22398,
	movlt	r4, r1	@ D.22402, D.22402
	mvnlt	r4, r4	@ D.22398, D.22402
	b	.L230	@
.L264:
	eor	r0, r4, r6	@ D.22402, llTmp1, x
	eor	r1, r5, r7	@ D.22402, llTmp1, x
	cmp	r0, #0	@ D.22402,
	sbcs	r2, r1, #0	@ tmp348, D.22402,
	bge	.L223	@,
	cmp	r6, #0	@ x,
	mov	r1, #1	@ tmp242,
	sbcs	r2, r7, #0	@ tmp349, x,
	ldr	r2, .L270+4	@ tmp241,
	mvnge	r4, #0	@ llTmp1,
	mvnge	r5, #-2147483648	@ llTmp1,
	movlt	r4, #0	@ llTmp1,
	movlt	r5, #-2147483648	@ llTmp1,
	str	r1, [r2, #4]	@ tmp242, giOverflow
	b	.L223	@
.L266:
	eor	r0, r2, r6	@ D.22402, llTmp1, x
	eor	r1, r3, r7	@ D.22402, llTmp1, x
	cmp	r0, #0	@ D.22402,
	sbcs	r1, r1, #0	@ tmp353, D.22402,
	bge	.L235	@,
	cmp	r6, #0	@ x,
	ldr	r1, .L270+4	@ tmp279,
	sbcs	r3, r7, #0	@ tmp354, x,
	mov	r0, #1	@ tmp280,
	mvnge	r2, #0	@ llTmp1,
	mvnge	r3, #-2147483648	@ llTmp1,
	movlt	r2, #0	@ llTmp1,
	movlt	r3, #-2147483648	@ llTmp1,
	str	r0, [r1, #4]	@ tmp280, giOverflow
	b	.L235	@
.L251:
	mov	r0, #0	@ D.22398,
	bx	lr	@
.L265:
	cmp	r3, #0	@ fx0,
	ldr	r3, .L270+4	@ tmp270,
	mov	r2, #1	@ tmp272,
	movlt	r4, #-2147483648	@ fx0,
	mvnge	r4, #-2147483648	@ fx0,
	strh	r2, [r3]	@ movhi	@ tmp272, avc_Overflow
	b	.L231	@
.L269:
	cmp	r4, #0	@ tmp318,
	ldr	r1, .L270+4	@ tmp321,
	sbcs	r3, r5, #0	@ tmp359,,
	mov	r0, #1	@ tmp322,
	mvnge	r2, #0	@ llTmp1,
	mvnge	r3, #-2147483648	@ llTmp1,
	movlt	r2, #0	@ llTmp1,
	movlt	r3, #-2147483648	@ llTmp1,
	str	r0, [r1, #4]	@ tmp322, giOverflow
	b	.L247	@
.L267:
	ldr	r3, .L270+4	@ tmp306,
	cmp	r4, #0	@ fx0,
	mov	r2, #1	@ tmp308,
	movlt	r5, #-2147483648	@ fx0,
	mvnge	r5, #-2147483648	@ fx0,
	strh	r2, [r3]	@ movhi	@ tmp308, avc_Overflow
	b	.L243	@
.L268:
	ldr	r3, .L270+4	@ tmp312,
	cmp	r5, #0	@ fx0,
	mov	r2, #1	@ tmp314,
	movlt	r0, #-2147483648	@ fx0,
	mvnge	r0, #-2147483648	@ fx0,
	strh	r2, [r3]	@ movhi	@ tmp314, avc_Overflow
	b	.L245	@
.L254:
	mov	r8, #0	@ D.22405,
	movw	r9, #65535	@ D.22405,
	mov	r2, r8	@ D.22404, D.22405
	b	.L216	@
.L271:
	.align	2
.L270:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.fnend
	.size	iMedia_AVC_sqrt_i64, .-iMedia_AVC_sqrt_i64
	.align	2
	.global	iMedia_AVC_memcpy
	.type	iMedia_AVC_memcpy, %function
iMedia_AVC_memcpy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ memsize
	bxle	lr	@
	sub	r0, r0, #1	@ ivtmp.146, mem_target,
	add	r2, r1, r2	@ D.22426, ivtmp.142, memsize
.L274:
	ldrb	r3, [r1], #1	@ zero_extendqisi2	@ D.22421, MEM[base: _22, offset: 0B]
	cmp	r1, r2	@ ivtmp.142, D.22426
	strb	r3, [r0, #1]!	@ D.22421, MEM[base: _23, offset: 0B]
	bne	.L274	@,
	bx	lr	@
	.fnend
	.size	iMedia_AVC_memcpy, .-iMedia_AVC_memcpy
	.global	giOldOverflow
	.global	giOverflow
	.global	avc_Carry
	.global	avc_Overflow
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
	.type	giOldOverflow, %object
	.size	giOldOverflow, 4
giOldOverflow:
	.space	4
	.type	avc_Carry, %object
	.size	avc_Carry, 2
avc_Carry:
	.space	2
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
