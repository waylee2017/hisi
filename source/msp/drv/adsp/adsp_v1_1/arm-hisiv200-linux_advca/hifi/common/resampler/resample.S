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
	.file	"resample.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I./../../../source/common/include -I./../../../source/common/api/include
@ -I./../../../source/common/drv/include -I./../../../source/msp/include
@ -I./../../../source/msp/api/include -I./../../../source/msp/drv/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I./../../../source/component/ha_codec/include -I
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I./../../../source/msp/drv/adsp/adsp_v1_1 -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT -DHI_SND_AVC_SUPPORT
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(resample)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/resampler/.resample.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/resampler/resample.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/resampler/resample.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fverbose-asm
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
	.type	cvtShortShort, %function
cvtShortShort:
	.fnstart
.LFB37:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldr	ip, [sp, #12]	@ chans, chans
	cmp	ip, #2	@ chans,
	movne	r4, #0	@, D.2227
	moveq	r4, #1	@, D.2227
	cmp	r3, #0	@ bInterleaved,
	cmpeq	ip, #2	@, chans,
	mov	r3, r0	@ dst, d
	bne	.L2	@,
	add	r2, r1, r2, asl #1	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L3	@,
	mov	ip, r1	@ tmp193, s
	rsb	r5, r1, r2	@ tmp215, s, srcEnd
	ldrh	r4, [ip], #2	@,
	sub	r3, r5, #2	@ tmp216, tmp215,
	cmp	r2, ip	@ srcEnd, tmp193
	mov	ip, #2	@ ivtmp.142,
	strh	r4, [r0, #0]	@ movhi	@,* d
	ubfx	r4, r3, #1, #1	@ tmp217, tmp216,,
	ldrh	r5, [r2, #0]	@,* srcEnd
	add	r3, r0, #4	@ dst.160, d,
	strh	r5, [r0, #2]	@ movhi	@,
	beq	.L20	@,
	cmp	r4, #0	@ tmp217,
	beq	.L4	@,
	ldrh	r4, [r1, #2]	@,
	mov	ip, #4	@ ivtmp.142,
	add	r5, ip, r1	@ tmp244, ivtmp.142, s
	cmp	r2, r5	@ srcEnd, tmp244
	strh	r4, [r3, #0]	@ movhi	@,* dst.160
	ldrh	r5, [r2, #2]	@,
	strh	r5, [r3, #2]	@ movhi	@,
	add	r3, r3, ip	@ dst.160, dst.160,
	beq	.L20	@,
.L4:
	ldrh	r4, [r1, ip]	@,* ivtmp.142
	strh	r4, [r3, #0]	@ movhi	@,* dst.160
	add	r4, ip, #2	@ tmp219, ivtmp.142,
	ldrh	r5, [r2, ip]	@,* ivtmp.142
	add	ip, r4, #2	@ ivtmp.142, tmp219,
	add	r6, ip, r1	@ tmp235, ivtmp.142, s
	cmp	r2, r6	@ srcEnd, tmp235
	strh	r5, [r3, #2]	@ movhi	@,
	add	r5, r3, #4	@ tmp218, dst.160,
	ldrh	r6, [r1, r4]	@,
	strh	r6, [r3, #4]	@ movhi	@,
	add	r3, r5, #4	@ dst.160, tmp218,
	ldrh	r4, [r2, r4]	@,
	strh	r4, [r5, #2]	@ movhi	@,
	bne	.L4	@,
.L20:
	add	ip, r1, #2	@ tmp194, s,
	rsb	r3, ip, r2	@ tmp195, tmp194, srcEnd
	mov	r2, r3, lsr #1	@ tmp197, tmp195,
	add	r1, r2, #1	@ tmp198, tmp197,
	add	r3, r0, r1, asl #2	@, dst, d, tmp198,
.L3:
	rsb	r0, r0, r3	@ tmp211, d, dst
	mov	r0, r0, asr #1	@, tmp211,
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L2:
	cmp	r4, #0	@ D.2227,
	movne	r2, r2, asl #1	@ n, n,
	add	r2, r1, r2, asl #1	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L3	@,
	mov	r3, r1	@ tmp203, s
	rsb	ip, r1, r2	@ tmp222, s, srcEnd
	ldrh	r4, [r3], #2	@,
	sub	ip, ip, #2	@ tmp223, tmp222,
	ubfx	ip, ip, #1, #1	@ tmp224, tmp223,,
	cmp	r2, r3	@ srcEnd, tmp203
	mov	r3, #2	@ ivtmp.153,
	strh	r4, [r0, #0]	@ movhi	@,* d
	beq	.L21	@,
	cmp	ip, #0	@ tmp224,
	beq	.L6	@,
	mov	r3, #4	@ ivtmp.153,
	add	r6, r3, r1	@ tmp246, ivtmp.153, s
	cmp	r2, r6	@ srcEnd, tmp246
	ldrh	r6, [r1, #2]	@,
	strh	r6, [r0, #2]	@ movhi	@,
	beq	.L21	@,
.L6:
	ldrh	r5, [r1, r3]	@,* ivtmp.153
	add	ip, r3, #2	@ tmp225, ivtmp.153,
	strh	r5, [r0, r3]	@ movhi	@,* ivtmp.153
	add	r3, ip, #2	@ ivtmp.153, tmp225,
	add	r4, r3, r1	@ tmp241, ivtmp.153, s
	ldrh	r6, [r1, ip]	@,
	cmp	r2, r4	@ srcEnd, tmp241
	strh	r6, [r0, ip]	@ movhi	@,
	bne	.L6	@,
.L21:
	add	ip, r1, #2	@ tmp204, s,
	rsb	r3, ip, r2	@ tmp205, tmp204, srcEnd
	bic	r2, r3, #1	@ tmp208, tmp205,
	add	r1, r2, #2	@ tmp209, tmp208,
	add	r3, r0, r1	@ dst, d, tmp209
	b	.L3	@
	.fnend
	.size	cvtShortShort, .-cvtShortShort
	.align	2
	.type	cvt2int, %function
cvt2int:
	.fnstart
.LFB38:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldr	ip, [sp, #20]	@ chans, chans
	ldr	r5, [sp, #16]	@ bInterleaved, bInterleaved
	cmp	ip, #2	@ chans,
	movne	r4, #0	@, D.2275
	moveq	r4, #1	@, D.2275
	cmp	r5, #0	@ bInterleaved,
	cmpeq	ip, #2	@, chans,
	mov	ip, r0	@ dst, d
	bne	.L24	@,
	cmp	r3, #16	@ bitdepth,
	beq	.L62	@,
	add	r2, r1, r2, asl #2	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L26	@,
	mov	ip, r1	@ tmp208, s
	rsb	r5, r1, r2	@ tmp247, s, srcEnd
	ldr	r4, [ip], #4	@ tmp206,
	sub	r3, r5, #4	@ tmp248, tmp247,
	ubfx	r5, r3, #2, #1	@ tmp249, tmp248,,
	add	r3, r0, #8	@ dst.235, d,
	cmp	r2, ip	@ srcEnd, tmp208
	mov	ip, #4	@ ivtmp.207,
	str	r4, [r0, #0]	@ tmp206,* d
	ldr	r4, [r2, #0]	@ tmp207,* srcEnd
	str	r4, [r0, #4]	@ tmp207,
	beq	.L59	@,
	cmp	r5, #0	@ tmp249,
	beq	.L28	@,
	ldr	r4, [r1, #4]	@ tmp309,
	mov	ip, #8	@ ivtmp.207,
	add	r5, ip, r1	@ tmp311, ivtmp.207, s
	cmp	r2, r5	@ srcEnd, tmp311
	str	r4, [r3, #0]	@ tmp309,* dst.235
	ldr	r4, [r2, #4]	@ tmp310,
	str	r4, [r3, #4]	@ tmp310,
	add	r3, r3, ip	@ dst.235, dst.235,
	beq	.L59	@,
.L28:
	ldr	r7, [r1, ip]	@ tmp280,* ivtmp.207
	add	r4, ip, #4	@ tmp250, ivtmp.207,
	add	r5, r3, #8	@ tmp251, dst.235,
	str	r7, [r3, #0]	@ tmp280,* dst.235
	ldr	r6, [r2, ip]	@ tmp281,* ivtmp.207
	add	ip, r4, #4	@ ivtmp.207, tmp250,
	add	r7, ip, r1	@ tmp287, ivtmp.207, s
	cmp	r2, r7	@ srcEnd, tmp287
	str	r6, [r3, #4]	@ tmp281,
	ldr	r6, [r1, r4]	@ tmp285,
	str	r6, [r3, #8]	@ tmp285,
	add	r3, r5, #8	@ dst.235, tmp251,
	ldr	r4, [r2, r4]	@ tmp286,
	str	r4, [r5, #4]	@ tmp286,
	bne	.L28	@,
.L59:
	add	r3, r1, #4	@ tmp209, s,
	rsb	r2, r3, r2	@ tmp210, tmp209, srcEnd
	mov	ip, r2, lsr #2	@ tmp212, tmp210,
	add	r1, ip, #1	@ tmp213, tmp212,
	add	ip, r0, r1, asl #3	@, dst, d, tmp213,
.L26:
	rsb	r0, r0, ip	@ tmp236, d, dst
	mov	r0, r0, asr #2	@, tmp236,
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L24:
	cmp	r4, #0	@ D.2275,
	movne	r2, r2, asl #1	@ n, n,
	cmp	r3, #16	@ bitdepth,
	beq	.L63	@,
	add	r2, r1, r2, asl #2	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L26	@,
	mov	ip, r1	@ tmp228, s
	rsb	r5, r1, r2	@ tmp260, s, srcEnd
	ldr	r4, [ip], #4	@ tmp227,
	sub	r3, r5, #4	@ tmp261, tmp260,
	ubfx	r5, r3, #2, #1	@ tmp262, tmp261,,
	mov	r3, #4	@ ivtmp.224,
	cmp	r2, ip	@ srcEnd, tmp228
	str	r4, [r0, #0]	@ tmp227,* d
	beq	.L61	@,
	cmp	r5, #0	@ tmp262,
	beq	.L32	@,
	ldr	ip, [r1, #4]	@ tmp316,
	mov	r3, #8	@ ivtmp.224,
	add	r4, r3, r1	@ tmp317, ivtmp.224, s
	cmp	r2, r4	@ srcEnd, tmp317
	str	ip, [r0, #4]	@ tmp316,
	beq	.L61	@,
.L32:
	ldr	r4, [r1, r3]	@ tmp299,* ivtmp.224
	add	ip, r3, #4	@ tmp263, ivtmp.224,
	str	r4, [r0, r3]	@ tmp299,* ivtmp.224
	add	r3, ip, #4	@ ivtmp.224, tmp263,
	ldr	r4, [r1, ip]	@ tmp302,
	add	r5, r3, r1	@ tmp303, ivtmp.224, s
	cmp	r2, r5	@ srcEnd, tmp303
	str	r4, [r0, ip]	@ tmp302,
	bne	.L32	@,
.L61:
	add	ip, r1, #4	@ tmp229, s,
	rsb	r2, ip, r2	@ tmp230, tmp229, srcEnd
	bic	r3, r2, #3	@ tmp233, tmp230,
	add	r1, r3, #4	@ tmp234, tmp233,
	add	ip, r0, r1	@ dst, d, tmp234
	b	.L26	@
.L62:
	add	r2, r1, r2, asl #1	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L26	@,
	mov	ip, r1	@ tmp198, s
	rsb	r5, r1, r2	@ tmp240, s, srcEnd
	ldrsh	r4, [ip], #2	@ tmp194,
	sub	r3, r5, #2	@ tmp241, tmp240,
	ubfx	r5, r3, #1, #1	@ tmp242, tmp241,,
	add	r3, r0, #8	@ dst.234, d,
	cmp	r2, ip	@ srcEnd, tmp198
	mov	ip, #2	@ ivtmp.197,
	mov	r4, r4, asl #16	@ tmp195, tmp194,
	str	r4, [r0, #0]	@ tmp195,* d
	ldrsh	r4, [r2, #0]	@ tmp196,* srcEnd
	mov	r4, r4, asl #16	@ tmp197, tmp196,
	str	r4, [r0, #4]	@ tmp197,
	beq	.L58	@,
	cmp	r5, #0	@ tmp242,
	beq	.L27	@,
	ldrsh	r4, [r1, #2]	@ tmp304,
	mov	ip, #4	@ ivtmp.197,
	add	r5, ip, r1	@ tmp308, ivtmp.197, s
	cmp	r2, r5	@ srcEnd, tmp308
	mov	r4, r4, asl #16	@ tmp305, tmp304,
	str	r4, [r3, #0]	@ tmp305,* dst.234
	ldrsh	r4, [r2, #2]	@ tmp306,
	mov	r4, r4, asl #16	@ tmp307, tmp306,
	str	r4, [r3, #4]	@ tmp307,
	add	r3, r3, #8	@ dst.234, dst.234,
	beq	.L58	@,
.L27:
	ldrsh	r6, [r1, ip]	@ tmp266,* ivtmp.197
	add	r4, ip, #2	@ tmp244, ivtmp.197,
	add	r5, r3, #8	@ tmp243, dst.234,
	mov	r7, r6, asl #16	@ tmp267, tmp266,
	str	r7, [r3, #0]	@ tmp267,* dst.234
	ldrsh	r6, [r2, ip]	@ tmp268,* ivtmp.197
	add	ip, r4, #2	@ ivtmp.197, tmp244,
	add	r7, ip, r1	@ tmp277, ivtmp.197, s
	cmp	r2, r7	@ srcEnd, tmp277
	mov	r6, r6, asl #16	@ tmp269, tmp268,
	str	r6, [r3, #4]	@ tmp269,
	ldrsh	r6, [r1, r4]	@ tmp273,
	mov	r6, r6, asl #16	@ tmp274, tmp273,
	str	r6, [r3, #8]	@ tmp274,
	ldrsh	r4, [r2, r4]	@ tmp275,
	add	r3, r5, #8	@ dst.234, tmp243,
	mov	r4, r4, asl #16	@ tmp276, tmp275,
	str	r4, [r5, #4]	@ tmp276,
	bne	.L27	@,
.L58:
	add	r3, r1, #2	@ tmp199, s,
	rsb	r2, r3, r2	@ tmp200, tmp199, srcEnd
	mov	ip, r2, lsr #1	@ tmp202, tmp200,
	add	r1, ip, #1	@ tmp203, tmp202,
	add	ip, r0, r1, asl #3	@, dst, d, tmp203,
	b	.L26	@
.L63:
	add	r2, r1, r2, asl #1	@, srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L26	@,
	mov	ip, r1	@ tmp219, s
	rsb	r5, r1, r2	@ tmp254, s, srcEnd
	ldrsh	r4, [ip], #2	@ tmp217,
	sub	r3, r5, #2	@ tmp255, tmp254,
	ubfx	r5, r3, #1, #1	@ tmp256, tmp255,,
	mov	r3, #2	@ ivtmp.217,
	cmp	r2, ip	@ srcEnd, tmp219
	mov	ip, r4, asl #16	@ tmp218, tmp217,
	str	ip, [r0, #0]	@ tmp218,* d
	beq	.L60	@,
	cmp	r5, #0	@ tmp256,
	beq	.L31	@,
	mov	ip, #4	@ tmp312,
	ldrsh	r4, [r1, #2]	@ tmp313,
	add	r5, ip, r1	@ tmp315, ivtmp.217, s
	mov	r3, ip	@ ivtmp.217, tmp312
	cmp	r2, r5	@ srcEnd, tmp315
	mov	r4, r4, asl #16	@ tmp314, tmp313,
	str	r4, [r0, ip]	@ tmp314,
	beq	.L60	@,
.L31:
	ldrsh	r4, [r1, r3]	@ tmp290,* ivtmp.217
	add	ip, r3, #2	@ tmp257, ivtmp.217,
	mov	r5, r4, asl #16	@ tmp291, tmp290,
	str	r5, [r0, r3, asl #1]	@ tmp291,* d
	add	r3, ip, #2	@ ivtmp.217, tmp257,
	ldrsh	r4, [r1, ip]	@ tmp295,
	add	r5, r3, r1	@ tmp297, ivtmp.217, s
	cmp	r2, r5	@ srcEnd, tmp297
	mov	r4, r4, asl #16	@ tmp296, tmp295,
	str	r4, [r0, ip, asl #1]	@ tmp296,* d
	bne	.L31	@,
.L60:
	add	ip, r1, #2	@ tmp220, s,
	rsb	r2, ip, r2	@ tmp221, tmp220, srcEnd
	mov	r3, r2, lsr #1	@ tmp223, tmp221,
	add	r1, r3, #1	@ tmp224, tmp223,
	add	ip, r0, r1, asl #2	@, dst, d, tmp224,
	b	.L26	@
	.fnend
	.size	cvt2int, .-cvt2int
	.global	__aeabi_idiv
	.align	2
	.global	ResampleConfig
	.type	ResampleConfig, %function
ResampleConfig:
	.fnstart
.LFB47:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2	@ inrate, outrate
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r1	@ inrate, inrate
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r2	@ outrate, outrate
	mov	r7, r0	@ s, s
	moveq	r8, r1	@ outrate.280, inrate
	beq	.L66	@,
	mov	r3, r2	@ outrate.286, outrate
	mov	r8, r1	@ divisor, inrate
.L69:
	cmp	r3, r8	@ outrate.286, divisor
	rsblt	r8, r3, r8	@ divisor, outrate.286, divisor
	rsbge	r3, r8, r3	@ outrate.286, divisor, outrate.286
	cmp	r8, r3	@ divisor, outrate.286
	bne	.L69	@,
.L66:
	mov	r0, r5	@, outrate
	mov	r1, r8	@, outrate.280
	bl	__aeabi_idiv	@
	cmp	r0, #1280	@ up,
	mov	r6, r0	@ up,
	ble	.L88	@,
.L70:
	mvn	r0, #0	@ D.2979,
.L79:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L88:
	mov	r1, r8	@, outrate.280
	mov	r0, r4	@, inrate
	bl	__aeabi_idiv	@
	mov	r1, r6	@, up
	ldr	sl, [r7, #16]	@ D.2980, <variable>.nchans
	add	r2, r6, r0	@ tmp168, up, dn
	mov	r8, r0	@ dn,
	sub	r0, r2, #1	@, tmp168,
	bl	__aeabi_idiv	@
	mul	r0, sl, r0	@ tmp174, D.2980,
	cmp	r0, #255	@ tmp174,
	bgt	.L70	@,
	cmp	r4, #0	@ inrate,
	add	ip, r4, #3	@ tmp182, inrate,
	add	r1, r5, #3	@ tmp185, outrate,
	add	r9, r4, r4, lsr #31	@, tmp176, inrate, inrate,
	movge	ip, r4	@ inrate, inrate
	cmp	r5, #0	@ outrate,
	add	fp, r5, r5, lsr #31	@, tmp179, outrate, outrate,
	movw	r3, #:lower16:.LANCHOR0	@ srcinfoptr,
	movge	r1, r5	@ outrate, outrate
	str	r8, [sp, #4]	@ dn, %sfp
	mov	ip, ip, asr #2	@ D.2997, inrate,
	mov	r0, r1, asr #2	@ D.3000, outrate,
	mov	r9, r9, asr #1	@ D.2994, tmp176,
	mov	fp, fp, asr #1	@ D.2996, tmp179,
	movt	r3, #:upper16:.LANCHOR0	@ srcinfoptr,
	mov	r2, #0	@ i,
	mov	r8, r6	@ up, up
	b	.L75	@
.L71:
	cmp	r1, r9	@ D.2989, D.2994
	beq	.L89	@,
.L73:
	cmp	r1, ip	@ D.2989, D.2997
	beq	.L90	@,
.L74:
	add	r3, r3, #24	@ srcinfoptr, srcinfoptr,
	add	r2, r2, #1	@, i,
	str	r2, [sp, #0]	@, %sfp
	ldr	r2, [r3, #0]	@ D.2989, <variable>.inrate
	mov	r1, r3	@ tmp218, srcinfoptr
	cmp	r2, r4	@ D.2989, inrate
	beq	.L91	@,
.L83:
	cmp	r2, r9	@ D.2989, D.2994
	beq	.L92	@,
.L84:
	cmp	r2, ip	@ D.2989, D.2997
	beq	.L93	@,
.L85:
	ldr	r3, [sp, #0]	@, %sfp
	add	r2, r3, #1	@ i,,
	add	r3, r1, #24	@ srcinfoptr, tmp218,
	cmp	r2, #40	@ i,
	beq	.L70	@,
.L75:
	ldr	r1, [r3, #0]	@ D.2989, <variable>.inrate
	cmp	r1, r4	@ D.2989, inrate
	bne	.L71	@,
	ldr	r6, [r3, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r6, r5	@ <variable>.outrate, outrate
	bne	.L71	@,
.L72:
	ldr	r1, [r3, #12]	@ nwing, <variable>.nwing
	mov	r6, r8	@ up, up
	ldr	ip, [r3, #20]	@ <variable>.filter, <variable>.filter
	mov	r0, #0	@ tmp194,
	ldr	r2, [r7, #40]	@ D.3006, <variable>.bitwidth
	mul	sl, r1, sl	@ tmp191, nwing, D.2980
	ldr	r8, [sp, #4]	@ dn, %sfp
	str	ip, [r7, #68]	@ <variable>.filter, <variable>.filter
	cmp	r2, #16	@ D.3006,
	ldr	r3, [r3, #16]	@ <variable>.nextphase, <variable>.nextphase
	str	r0, [r7, #36]	@ tmp194, <variable>.isCloned
	str	r3, [r7, #72]	@ <variable>.nextphase, <variable>.nextphase
	mov	ip, sl, asl #1	@ nhist, tmp191,
	beq	.L94	@,
	cmp	r2, #24	@ D.3006,
	cmpne	r2, #20	@, D.3006,
	beq	.L78	@,
	cmp	r2, #18	@ D.3006,
	beq	.L78	@,
.L77:
	sub	r0, r6, #1	@ tmp211, up,
	str	r4, [r7, #8]	@ inrate, <variable>.inrate
	ldr	lr, [r7, #68]	@ <variable>.filter, <variable>.filter
	mov	r2, #0	@ tmp208,
	mul	r4, r1, r0	@ tmp212, nwing, tmp211
	str	r1, [r7, #20]	@ nwing, <variable>.nwing
	str	r5, [r7, #12]	@ outrate, <variable>.outrate
	mov	r0, r2	@ D.2979, tmp208
	str	r8, [r7, #4]	@ dn, <variable>.dn
	str	ip, [r7, #24]	@ nhist, <variable>.nhist
	str	r6, [r7, #0]	@ up, <variable>.up
	add	r1, lr, r4, asl #1	@, tmp215, <variable>.filter, tmp212,
	str	r2, [r7, #28]	@ tmp208, <variable>.phase
	str	r1, [r7, #60]	@ tmp215, <variable>.lwingptr
	str	r2, [r7, #32]	@ tmp208, <variable>.offset
	str	lr, [r7, #64]	@ <variable>.filter, <variable>.rwingptr
	b	.L79	@
.L90:
	ldr	lr, [r3, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	lr, r0	@ <variable>.outrate, D.3000
	bne	.L74	@,
	b	.L72	@
.L89:
	ldr	r6, [r3, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r6, fp	@ <variable>.outrate, D.2996
	bne	.L73	@,
	b	.L72	@
.L93:
	ldr	lr, [r1, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	lr, r0	@ <variable>.outrate, D.3000
	bne	.L85	@,
	b	.L72	@
.L92:
	ldr	r6, [r1, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r6, fp	@ <variable>.outrate, D.2996
	bne	.L84	@,
	b	.L72	@
.L91:
	ldr	r6, [r3, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r6, r5	@ <variable>.outrate, outrate
	bne	.L83	@,
	b	.L72	@
.L78:
	ldr	r3, [r7, #52]	@ <variable>.histbuf32, <variable>.histbuf32
	add	r2, r3, ip, asl #2	@, tmp207, <variable>.histbuf32, nhist,
	str	r2, [r7, #56]	@ tmp207, <variable>.pcmbuf32
	b	.L77	@
.L94:
	ldr	lr, [r7, #52]	@ <variable>.histbuf32, <variable>.histbuf32
	add	sl, lr, sl, asl #3	@, tmp197, <variable>.histbuf32, tmp191,
	str	sl, [r7, #56]	@ tmp197, <variable>.pcmbuf32
	b	.L77	@
	.fnend
	.size	ResampleConfig, .-ResampleConfig
	.align	2
	.type	ResamplerStereoProcess24, %function
ResamplerStereoProcess24:
	.fnstart
.LFB45:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #52
	sub	sp, sp, #52	@,,
	str	r0, [sp, #28]	@ inst, %sfp
	ldr	ip, [sp, #28]	@, %sfp
	ldr	r0, [r0, #56]	@ <variable>.pcmbuf32, <variable>.pcmbuf32
	str	r3, [sp, #44]	@ outbuf, %sfp
	ldr	lr, [ip, #28]	@, <variable>.phase
	ldr	r4, [ip, #20]	@ nwing, <variable>.nwing
	ldr	r3, [ip, #40]	@ <variable>.bitwidth, <variable>.bitwidth
	str	lr, [sp, #12]	@, %sfp
	ldr	lr, [sp, #88]	@ bInterleaved, bInterleaved
	ldr	ip, [ip, #72]	@, <variable>.nextphase
	str	lr, [sp, #0]	@ bInterleaved,
	str	ip, [sp, #36]	@, %sfp
	mov	ip, #2	@ tmp201,
	str	ip, [sp, #4]	@ tmp201,
	bl	cvt2int	@
	ldr	lr, [sp, #28]	@, %sfp
	rsb	r1, r4, #1	@ tmp202, nwing,
	ldr	r3, [lr, #56]	@ <variable>.pcmbuf32, <variable>.pcmbuf32
	ldr	r2, [lr, #32]	@ <variable>.offset, <variable>.offset
	add	ip, r3, r1, asl #3	@, pcmptr32, <variable>.pcmbuf32, tmp202,
	ldr	r1, [lr, #64]	@ rwingptr, <variable>.rwingptr
	ldr	r3, [lr, #60]	@ lwingptr, <variable>.lwingptr
	add	r2, ip, r2, asl #2	@, pcmptr32.350, pcmptr32, <variable>.offset,
	ldr	lr, [lr, #68]	@, <variable>.filter
	str	lr, [sp, #16]	@, %sfp
	mov	r0, r0, asl #2	@,,
	str	r0, [sp, #40]	@, %sfp
	add	ip, ip, r0	@, pcmptr32,
	str	ip, [sp, #32]	@, %sfp
	cmp	ip, r2	@, pcmptr32.350
	movls	r4, #0	@ prephitmp.309,
	bls	.L97	@,
	ldr	fp, [sp, #44]	@, %sfp
	movw	r0, #:lower16:8388607	@,
	movt	r0, #:upper16:8388607	@,
	str	r0, [sp, #20]	@, %sfp
	str	fp, [sp, #8]	@, %sfp
.L104:
	cmp	r4, #0	@ nwing,
	ble	.L98	@,
	sub	r6, r4, #1	@ tmp248, nwing,
	ldr	r5, [r1, #0]	@ cx,* rwingptr
	ubfx	r6, r6, #1, #1	@ tmp249, tmp248,,
	ldr	lr, [r3, #0]	@ cy,* lwingptr
	ldr	fp, [r2, #-4]	@ tmp207,
	mov	r0, #0	@,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r8, fp, r5, r0	@ acc1, tmp207, cx,
@ 0 "" 2
	ldr	r7, [r2, #0]	@ tmp208,* pcmptr32.350
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r9, r7, lr, r0	@ acc0.351, tmp208, cy,
@ 0 "" 2
	ldr	r0, [r2, #-8]	@ tmp209,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r7, r0, r5, r9	@ acc0.354, tmp209, cx, acc0.351
@ 0 "" 2
	ldr	ip, [r2, #4]	@ tmp210,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb fp, ip, lr, r8	@ acc1.355, tmp210, cy, acc1
@ 0 "" 2
	ldr	r0, [r2, #-12]	@ tmp211,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt fp, r0, r5, fp	@ acc1.358, tmp211, cx, acc1.355
@ 0 "" 2
	ldr	ip, [r2, #8]	@ tmp212,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, ip, lr, r7	@ acc0.359, tmp212, cy, acc0.354
@ 0 "" 2
	mov	r0, r2	@ ivtmp.336, pcmptr32.350
	ldr	r7, [r2, #12]	@ y.361,
	add	ip, r2, #16	@ pcmptr32.367, pcmptr32.350,
	ldr	r8, [r0, #-16]!	@ tmp213,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, r8, r5, r9	@ acc0, tmp213, cx, acc0.359
@ 0 "" 2
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt fp, r7, lr, fp	@ acc1.362, y.361, cy, acc1.358
@ 0 "" 2
	mov	r8, #2	@ i,
	cmp	r4, r8	@ nwing, i
	mov	lr, #4	@ ivtmp.324,
	ble	.L113	@,
	cmp	r6, #0	@ tmp249,
	beq	.L115	@,
	ldr	r6, [r1, lr]	@ cx,* ivtmp.324
	ldr	r5, [r3, lr]	@ cy,* ivtmp.324
	ldr	r8, [r0, #-4]	@ tmp300,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb fp, r8, r6, fp	@ acc1, tmp300, cx, acc1.362
@ 0 "" 2
	ldr	r7, [ip, #0]	@ tmp302,* pcmptr32.367
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r9, r7, r5, r9	@ acc0.351, tmp302, cy, acc0
@ 0 "" 2
	ldr	r8, [r0, #-8]	@ tmp304,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r9, r8, r6, r9	@ acc0.354, tmp304, cx, acc0.351
@ 0 "" 2
	ldr	r7, [ip, #4]	@ tmp306,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb fp, r7, r5, fp	@ acc1.355, tmp306, cy, acc1
@ 0 "" 2
	ldr	r8, [r0, #-12]	@ tmp308,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt fp, r8, r6, fp	@ acc1.358, tmp308, cx, acc1.355
@ 0 "" 2
	ldr	r7, [ip, #8]	@ tmp310,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, r7, r5, r9	@ acc0.359, tmp310, cy, acc0.354
@ 0 "" 2
	ldr	r7, [ip, #12]	@ y.361,
	add	ip, ip, #16	@ pcmptr32.367, pcmptr32.367,
	ldr	r8, [r0, #-16]!	@ tmp313,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, r8, r6, r9	@ acc0, tmp313, cx, acc0.359
@ 0 "" 2
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt fp, r7, r5, fp	@ acc1.362, y.361, cy, acc1.358
@ 0 "" 2
	cmp	r4, lr	@ nwing, i
	mov	r8, lr	@ i, ivtmp.324
	mov	lr, #8	@ ivtmp.324,
	ble	.L113	@,
.L115:
	str	r2, [sp, #24]	@ pcmptr32.350, %sfp
.L99:
	ldr	r6, [r1, lr]	@ cx,* ivtmp.324
	ldr	r5, [r3, lr]	@ cy,* ivtmp.324
	ldr	r2, [r0, #-4]	@ tmp262,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb fp, r2, r6, fp	@ acc1, tmp262, cx, acc1.362
@ 0 "" 2
	ldr	sl, [ip, #0]	@ tmp264,* pcmptr32.367
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r9, sl, r5, r9	@ acc0.351, tmp264, cy, acc0
@ 0 "" 2
	ldr	r7, [r0, #-8]	@ tmp266,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb sl, r7, r6, r9	@ acc0.354, tmp266, cx, acc0.351
@ 0 "" 2
	ldr	r2, [ip, #4]	@ tmp268,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb fp, r2, r5, fp	@ acc1.355, tmp268, cy, acc1
@ 0 "" 2
	ldr	r7, [r0, #-12]	@ tmp270,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r7, r7, r6, fp	@ acc1.358, tmp270, cx, acc1.355
@ 0 "" 2
	ldr	r2, [ip, #8]	@ tmp272,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, r2, r5, sl	@ acc0.359, tmp272, cy, acc0.354
@ 0 "" 2
	ldr	sl, [ip, #12]	@ y.361,
	add	r2, ip, #16	@ tmp253, pcmptr32.367,
	ldr	fp, [r0, #-16]!	@ tmp276,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r6, fp, r6, r9	@ acc0, tmp276, cx, acc0.359
@ 0 "" 2
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, sl, r5, r7	@ acc1.362, y.361, cy, acc1.358
@ 0 "" 2
	add	lr, lr, #4	@ tmp251, ivtmp.324,
	add	r8, r8, #2	@ tmp250, i,
	ldr	r7, [r0, #-4]	@ tmp284,
	ldr	r9, [r1, lr]	@ cx,
	ldr	sl, [r3, lr]	@ cy,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r7, r9, r5	@ acc1, tmp284, cx, acc1.362
@ 0 "" 2
	ldr	fp, [ip, #16]	@ tmp286,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r7, fp, sl, r6	@ acc0.351, tmp286, cy, acc0
@ 0 "" 2
	ldr	ip, [r0, #-8]	@ tmp288,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r6, ip, r9, r7	@ acc0.354, tmp288, cx, acc0.351
@ 0 "" 2
	ldr	r7, [r2, #4]	@ tmp290,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r5, r7, sl, r5	@ acc1.355, tmp290, cy, acc1
@ 0 "" 2
	ldr	fp, [r0, #-12]	@ tmp292,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r5, fp, r9, r5	@ acc1.358, tmp292, cx, acc1.355
@ 0 "" 2
	ldr	ip, [r2, #8]	@ tmp294,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r6, ip, sl, r6	@ acc0.359, tmp294, cy, acc0.354
@ 0 "" 2
	add	ip, r2, #16	@ pcmptr32.367, tmp253,
	ldr	fp, [r2, #12]	@ y.361,
	ldr	r2, [r0, #-16]!	@ tmp297,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, r2, r9, r6	@ acc0, tmp297, cx, acc0.359
@ 0 "" 2
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt fp, fp, sl, r5	@ acc1.362, y.361, cy, acc1.358
@ 0 "" 2
	add	r8, r8, #2	@ i, tmp250,
	add	lr, lr, #4	@ ivtmp.324, tmp251,
	cmp	r4, r8	@ nwing, i
	bgt	.L99	@,
	ldr	r2, [sp, #24]	@ pcmptr32.350, %sfp
.L113:
	add	r9, r9, #64	@ D.3508, acc0,
	add	ip, fp, #64	@ tmp216, acc1.362,
	mov	r3, r9, asr #31	@ sign, D.3508,
	mov	r1, r9, asr #7	@ acc0.363, D.3508,
	cmp	r3, r9, asr #30	@ sign, D.3508,
	mov	r0, ip, asr #7	@ prephitmp.374, tmp219,
	moveq	r3, r1, asl #8	@ prephitmp.311, acc0.363,
	mov	fp, ip, asr #31	@ prephitmp.375, tmp219,
	ldrne	r1, [sp, #20]	@, %sfp
	moveq	r1, ip, asr #30	@ prephitmp.376, tmp216,
	eorne	r3, r3, r1	@ tmp217, sign,
	movne	r1, ip, asr #30	@ prephitmp.376, tmp219,
	movne	r3, r3, asl #8	@ prephitmp.311, tmp217,
.L101:
	ldr	ip, [sp, #8]	@, %sfp
	cmp	fp, r1	@ prephitmp.375, prephitmp.376
	biceq	fp, r0, #-16777216	@ acc1.365, prephitmp.374,
	str	r3, [ip, #0]	@ prephitmp.311,
	ldrne	lr, [sp, #20]	@, %sfp
	eorne	fp, fp, lr	@ acc1.365, prephitmp.375,
	ldr	lr, [sp, #8]	@, %sfp
	mov	fp, fp, asl #8	@ tmp221, acc1.365,
	add	r0, lr, #8	@,,
	str	fp, [lr, #4]	@ tmp221,
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r3, [sp, #36]	@, %sfp
	ldr	ip, [r3, r1, asl #2]	@ phase.366,
	str	r0, [sp, #8]	@, %sfp
	and	r1, ip, #255	@ tmp231, phase.366,
	ubfx	r3, ip, #8, #12	@ tmp224, phase.366,,
	mov	lr, ip, lsr #20	@ tmp228, phase.366,
	ldr	r0, [sp, #32]	@, %sfp
	add	r2, r2, r1, asl #2	@, pcmptr32.350, pcmptr32.350, tmp231,
	mov	ip, ip, asr #20	@, phase.366,
	mul	r1, r4, lr	@ tmp229, nwing, tmp228
	cmp	r0, r2	@, pcmptr32.350
	mul	r3, r4, r3	@ tmp226, nwing, tmp224
	ldr	lr, [sp, #16]	@, %sfp
	str	ip, [sp, #12]	@, %sfp
	add	r1, lr, r1, asl #1	@, rwingptr,, tmp229,
	add	r3, lr, r3, asl #1	@, lwingptr,, tmp226,
	bhi	.L104	@,
	ldr	r0, [sp, #8]	@, %sfp
	ldr	ip, [sp, #44]	@, %sfp
	rsb	lr, ip, r0	@ pretmp.370,,
	mov	r2, lr, asr #2	@ tmp234, pretmp.370,
	add	r4, r2, r2, lsr #31	@, tmp236, tmp234, tmp234,
	mov	r4, r4, asr #1	@ prephitmp.309, tmp236,
.L97:
	ldr	ip, [sp, #28]	@, %sfp
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r2, [ip, #24]	@ <variable>.nhist, <variable>.nhist
	str	lr, [ip, #28]	@, <variable>.phase
	ldr	lr, [sp, #28]	@, %sfp
	ldr	r0, [ip, #52]	@ D.2837, <variable>.histbuf32
	mov	ip, #0	@ tmp238,
	mov	r2, r2, asl #2	@, <variable>.nhist,
	str	r1, [lr, #64]	@ rwingptr, <variable>.rwingptr
	str	ip, [lr, #32]	@ tmp238, <variable>.offset
	str	r3, [lr, #60]	@ lwingptr, <variable>.lwingptr
	ldr	r3, [sp, #40]	@, %sfp
	add	r1, r0, r3	@,,
	bl	memmove	@
	mov	r0, r4	@, prephitmp.309
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L98:
	mov	r1, #0	@ prephitmp.376,
	mov	fp, r1	@ prephitmp.375, prephitmp.376
	mov	r0, r1	@ prephitmp.374, prephitmp.376
	mov	r3, r1	@ prephitmp.311, prephitmp.376
	b	.L101	@
	.fnend
	.size	ResamplerStereoProcess24, .-ResamplerStereoProcess24
	.align	2
	.type	ResamplerMonoProcess24, %function
ResamplerMonoProcess24:
	.fnstart
.LFB46:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #60
	sub	sp, sp, #60	@,,
	mov	ip, #1	@ tmp190,
	str	r0, [sp, #16]	@ inst, %sfp
	ldr	r5, [sp, #16]	@, %sfp
	str	r3, [sp, #52]	@ outbuf, %sfp
	ldr	r0, [r0, #56]	@ <variable>.pcmbuf32, <variable>.pcmbuf32
	ldr	lr, [r5, #28]	@, <variable>.phase
	ldr	r4, [r5, #20]	@ nwing, <variable>.nwing
	ldr	r3, [r5, #40]	@ <variable>.bitwidth, <variable>.bitwidth
	str	lr, [sp, #20]	@, %sfp
	ldr	r5, [r5, #72]	@, <variable>.nextphase
	str	ip, [sp, #4]	@ tmp190,
	str	ip, [sp, #0]	@ tmp190,
	str	r5, [sp, #32]	@, %sfp
	bl	cvt2int	@
	ldr	lr, [sp, #16]	@, %sfp
	rsb	r1, r4, #1	@ tmp192, nwing,
	ldr	r3, [lr, #56]	@ <variable>.pcmbuf32, <variable>.pcmbuf32
	ldr	ip, [lr, #32]	@ <variable>.offset, <variable>.offset
	add	r5, r3, r1, asl #2	@, pcmptr32, <variable>.pcmbuf32, tmp192,
	ldr	r1, [lr, #64]	@ rwingptr, <variable>.rwingptr
	ldr	r3, [lr, #60]	@ lwingptr, <variable>.lwingptr
	add	ip, r5, ip, asl #2	@, pcmptr32.468, pcmptr32, <variable>.offset,
	mov	r0, r0, asl #2	@,,
	str	r0, [sp, #48]	@, %sfp
	add	r2, r5, r0	@, pcmptr32,
	str	r2, [sp, #28]	@, %sfp
	cmp	r2, ip	@, pcmptr32.468
	movls	r4, #0	@ prephitmp.432,
	bls	.L118	@,
	ldr	r2, [sp, #52]	@, %sfp
	movw	r0, #:lower16:8388607	@,
	movw	r5, #:lower16:524287	@,
	movt	r0, #:upper16:8388607	@,
	movt	r5, #:upper16:524287	@,
	add	lr, r2, #4	@,,
	str	r5, [sp, #44]	@, %sfp
	movw	r5, #:lower16:131071	@,
	str	r0, [sp, #36]	@, %sfp
	movt	r5, #:upper16:131071	@,
	str	lr, [sp, #12]	@, %sfp
	str	r5, [sp, #40]	@, %sfp
.L133:
	cmp	r4, #0	@ nwing,
	movle	r9, #0	@ prephitmp.483,
	ble	.L120	@,
	sub	r6, r4, #1	@ tmp242, nwing,
	ldr	r5, [r1, #0]	@ cx,* rwingptr
	ubfx	r6, r6, #1, #1	@ tmp243, tmp242,,
	ldr	lr, [r3, #0]	@ cy,* lwingptr
	ldr	sl, [ip, #-4]	@ tmp197,
	mov	r0, #0	@,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r9, sl, r5, r0	@ acc0.478, tmp197, cx,
@ 0 "" 2
	ldr	r8, [ip, #0]	@ tmp198,* pcmptr32.468
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb fp, r8, lr, r0	@ acc1, tmp198, cy,
@ 0 "" 2
	mov	r2, ip	@ ivtmp.457, pcmptr32.468
	ldr	sl, [ip, #4]	@ y.470,
	add	r0, ip, #8	@ yptr32, pcmptr32.468,
	ldr	r8, [r2, #-8]!	@ tmp199,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, r8, r5, r9	@ acc0.479, tmp199, cx, acc0.478
@ 0 "" 2
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt fp, sl, lr, fp	@ acc1.480, y.470, cy, acc1
@ 0 "" 2
	mov	r5, #2	@ i,
	cmp	r4, r5	@ nwing, i
	mov	lr, #4	@ ivtmp.445,
	ble	.L142	@,
	cmp	r6, #0	@ tmp243,
	beq	.L144	@,
	ldr	r6, [r1, lr]	@ cx,* ivtmp.445
	ldr	r5, [r3, lr]	@ cy,* ivtmp.445
	ldr	r7, [r2, #-4]	@ tmp278,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r9, r7, r6, r9	@ acc0.478, tmp278, cx, acc0.479
@ 0 "" 2
	ldr	sl, [r0, #0]	@ tmp280,* yptr32
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb fp, sl, r5, fp	@ acc1, tmp280, cy, acc1.480
@ 0 "" 2
	ldr	sl, [r0, #4]	@ y.470,
	add	r0, r0, #8	@ yptr32, yptr32,
	ldr	r8, [r2, #-8]!	@ tmp283,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, r8, r6, r9	@ acc0.479, tmp283, cx, acc0.478
@ 0 "" 2
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt fp, sl, r5, fp	@ acc1.480, y.470, cy, acc1
@ 0 "" 2
	cmp	r4, lr	@ nwing, i
	mov	r5, lr	@ i, ivtmp.445
	mov	lr, #8	@ ivtmp.445,
	ble	.L142	@,
.L144:
	str	ip, [sp, #24]	@ pcmptr32.468, %sfp
.L121:
	ldr	r7, [r1, lr]	@ cx,* ivtmp.445
	ldr	r6, [r3, lr]	@ cy,* ivtmp.445
	ldr	r8, [r2, #-4]	@ tmp256,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r9, r8, r7, r9	@ acc0.478, tmp256, cx, acc0.479
@ 0 "" 2
	ldr	ip, [r0, #0]	@ tmp258,* yptr32
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb fp, ip, r6, fp	@ acc1, tmp258, cy, acc1.480
@ 0 "" 2
	ldr	r8, [r0, #4]	@ y.470,
	add	ip, r0, #8	@ tmp246, yptr32,
	ldr	sl, [r2, #-8]!	@ tmp262,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r7, sl, r7, r9	@ acc0.479, tmp262, cx, acc0.478
@ 0 "" 2
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r6, r8, r6, fp	@ acc1.480, y.470, cy, acc1
@ 0 "" 2
	add	lr, lr, #4	@ tmp244, ivtmp.445,
	add	r5, r5, #2	@ tmp247, i,
	ldr	fp, [r2, #-4]	@ tmp270,
	ldr	r8, [r1, lr]	@ cx,
	ldr	sl, [r3, lr]	@ cy,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r7, fp, r8, r7	@ acc0.478, tmp270, cx, acc0.479
@ 0 "" 2
	ldr	r9, [r0, #8]	@ tmp272,
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r6, r9, sl, r6	@ acc1, tmp272, cy, acc1.480
@ 0 "" 2
	add	r0, ip, #8	@ yptr32, tmp246,
	ldr	fp, [ip, #4]	@ y.470,
	ldr	ip, [r2, #-8]!	@ tmp275,
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r9, ip, r8, r7	@ acc0.479, tmp275, cx, acc0.478
@ 0 "" 2
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt fp, fp, sl, r6	@ acc1.480, y.470, cy, acc1
@ 0 "" 2
	add	r5, r5, #2	@ i, tmp247,
	add	lr, lr, #4	@ ivtmp.445, tmp244,
	cmp	r4, r5	@ nwing, i
	bgt	.L121	@,
	ldr	ip, [sp, #24]	@ pcmptr32.468, %sfp
.L142:
	add	r9, fp, r9	@ prephitmp.483, acc1.480, acc0.479
.L120:
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r2, [r1, #40]	@ temp.471, <variable>.bitwidth
	cmp	r2, #16	@ temp.471,
	beq	.L145	@,
	cmp	r2, #18	@ temp.471,
	beq	.L146	@,
	cmp	r2, #20	@ temp.471,
	beq	.L147	@,
	add	r9, r9, #64	@ acc0.474, prephitmp.483,
	ldr	r0, [sp, #12]	@ outptr, %sfp
	mov	r1, r9, asr #31	@ sign, acc0.474,
	mov	r2, r9, asr #7	@ acc0.475, acc0.474,
	cmp	r1, r9, asr #30	@ sign, acc0.474,
	biceq	r1, r2, #-16777216	@ acc0.465, acc0.475,
	ldrne	lr, [sp, #36]	@, %sfp
	eorne	r1, r1, lr	@ acc0.465, sign,
	str	r1, [r0, #-4]	@ acc0.465,
.L124:
	ldr	r3, [sp, #20]	@, %sfp
	ldr	lr, [sp, #32]	@, %sfp
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r5, [lr, r3, asl #2]	@ phase.476,
	add	r2, r1, #4	@,,
	ldr	lr, [sp, #16]	@, %sfp
	ubfx	r3, r5, #8, #12	@ tmp219, phase.476,,
	str	r2, [sp, #12]	@, %sfp
	mov	r1, r5, lsr #20	@ tmp223, phase.476,
	mul	r3, r4, r3	@ tmp221, nwing, tmp219
	ldr	r2, [lr, #68]	@ D.2933, <variable>.filter
	mul	r1, r4, r1	@ tmp224, nwing, tmp223
	ubfx	lr, r5, #1, #7	@ tmp216, phase.476,,
	mov	r5, r5, asr #20	@, phase.476,
	str	r5, [sp, #20]	@, %sfp
	ldr	r5, [sp, #28]	@, %sfp
	add	ip, ip, lr, asl #2	@, pcmptr32.468, pcmptr32.468, tmp216,
	add	r3, r2, r3, asl #1	@, lwingptr, D.2933, tmp221,
	cmp	r5, ip	@, pcmptr32.468
	add	r1, r2, r1, asl #1	@, rwingptr, D.2933, tmp224,
	bhi	.L133	@,
	ldr	r4, [sp, #52]	@, %sfp
	rsb	r0, r4, r0	@ tmp226,, outptr
	mov	r4, r0, asr #2	@ prephitmp.432, tmp226,
.L118:
	ldr	r5, [sp, #28]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	ldr	lr, [sp, #20]	@, %sfp
	rsb	ip, r5, ip	@ tmp228,, pcmptr32.468
	ldr	r5, [sp, #16]	@, %sfp
	ldr	r2, [r0, #24]	@ <variable>.nhist, <variable>.nhist
	ldr	r0, [r0, #52]	@ D.2950, <variable>.histbuf32
	str	lr, [r5, #28]	@, <variable>.phase
	mov	lr, ip, asr #2	@ tmp229, tmp228,
	str	r1, [r5, #64]	@ rwingptr, <variable>.rwingptr
	mov	r2, r2, asl #2	@, <variable>.nhist,
	str	lr, [r5, #32]	@ tmp229, <variable>.offset
	str	r3, [r5, #60]	@ lwingptr, <variable>.lwingptr
	ldr	ip, [sp, #48]	@, %sfp
	add	r1, r0, ip	@,,
	bl	memmove	@
	mov	r0, r4	@, prephitmp.432
	add	sp, sp, #60	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L145:
	add	r9, r9, #16384	@ tmp200, prephitmp.483,
	ldr	r2, [sp, #12]	@, %sfp
	mov	lr, r9, asr #31	@ sign, tmp200,
	mov	r3, r9, asr #15	@ x, tmp200,
	cmp	lr, r9, asr #30	@ sign, tmp200,
	movwne	r5, #32767	@,
	eorne	r3, lr, r5	@ x, sign,
	sxth	r0, r3	@ x, x
	str	r0, [r2, #-4]	@ x,
	ldr	r0, [sp, #12]	@ outptr, %sfp
	b	.L124	@
.L146:
	add	r9, r9, #4096	@ tmp204, prephitmp.483,
	ldr	r5, [sp, #12]	@, %sfp
	mov	r1, r9, asr #31	@ sign, tmp204,
	mov	r2, r9, asr #13	@ acc0.472, tmp204,
	cmp	r1, r9, asr #30	@ sign, tmp204,
	biceq	r1, r2, #-16777216	@ acc0, acc0.472,
	ldrne	r0, [sp, #40]	@, %sfp
	biceq	r1, r1, #16515072	@ acc0, acc0,
	eorne	r1, r1, r0	@ acc0, sign,
	str	r1, [r5, #-4]	@ acc0,
	ldr	r0, [sp, #12]	@ outptr, %sfp
	b	.L124	@
.L147:
	add	r5, r9, #1024	@ tmp208, prephitmp.483,
	ldr	r3, [sp, #12]	@, %sfp
	mov	r0, r5, asr #31	@ sign, tmp208,
	mov	lr, r5, asr #11	@ acc0.473, tmp208,
	cmp	r0, r5, asr #30	@ sign, tmp208,
	biceq	r0, lr, #-16777216	@ acc0.464, acc0.473,
	ldrne	r5, [sp, #44]	@, %sfp
	biceq	r0, r0, #15728640	@ acc0.464, acc0.464,
	eorne	r0, r0, r5	@ acc0.464, sign,
	str	r0, [r3, #-4]	@ acc0.464,
	ldr	r0, [sp, #12]	@ outptr, %sfp
	b	.L124	@
	.fnend
	.size	ResamplerMonoProcess24, .-ResamplerMonoProcess24
	.global	__aeabi_idivmod
	.align	2
	.global	ResamplerGetMinInputNum
	.type	ResamplerGetMinInputNum, %function
ResamplerGetMinInputNum:
	.fnstart
.LFB58:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ inst, inst
	mov	r0, r1	@ OutSamps, OutSamps
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r4, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r3, #0	@ <variable>.isLinearMode,
	bne	.L150	@,
	ldr	r7, [r4, #8]	@ <variable>.inrate, <variable>.inrate
	ldr	r6, [r4, #12]	@ D.3561, <variable>.outrate
	mul	r7, r7, r1	@ D.3562, <variable>.inrate, OutSamps
	mov	r1, r6	@, D.3561
	mov	r0, r7	@, D.3562
	bl	__aeabi_idiv	@
	mov	r1, r6	@, D.3561
	mov	r5, r0	@ OutSamps,
	mov	r0, r7	@, D.3562
	bl	__aeabi_idivmod	@
	ldr	r2, [r4, #16]	@ <variable>.nchans, <variable>.nchans
	cmp	r1, #0	@,
	addne	r5, r5, #1	@ OutSamps, OutSamps,
	mul	r1, r2, r5	@ tmp150, <variable>.nchans, OutSamps
	tst	r1, #1	@ tmp150,
	addne	r5, r5, #1	@ OutSamps, OutSamps,
	cmp	r5, #2048	@ OutSamps,
	movle	r0, r5	@ OutSamps, OutSamps
	movgt	r0, #-2147483645	@ OutSamps,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L150:
	ldr	r0, [r4, #84]	@, <variable>.hLSRC
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	LSRC_GetMinInputNum	@
	.fnend
	.size	ResamplerGetMinInputNum, .-ResamplerGetMinInputNum
	.align	2
	.global	ResamplerGetMaxOutputNum
	.type	ResamplerGetMaxOutputNum, %function
ResamplerGetMaxOutputNum:
	.fnstart
.LFB57:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ inst
	mov	r3, r1	@ insamps, insamps
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	moveq	r0, #-2147483647	@ outsamps,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r2, [r0, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r2, #0	@ <variable>.isLinearMode,
	bne	.L157	@,
	cmp	r1, #2048	@ insamps,
	bgt	.L158	@,
	tst	r1, #1	@ insamps,
	bne	.L158	@,
	ldr	r1, [r0, #16]	@ <variable>.nchans, <variable>.nchans
	ldr	lr, [r0, #12]	@ <variable>.outrate, <variable>.outrate
	sub	ip, r1, #1	@ tmp140, <variable>.nchans,
	ldr	r1, [r0, #8]	@, <variable>.inrate
	add	r3, ip, r3	@ tmp142, tmp140, insamps
	mul	r0, lr, r3	@, <variable>.outrate, tmp142
	bl	__aeabi_idiv	@
	add	r0, r0, #1	@ outsamps,,
	ldmfd	sp!, {r4, pc}	@
.L158:
	mov	r0, #-2147483645	@ outsamps,
	ldmfd	sp!, {r4, pc}	@
.L157:
	ldr	r0, [r0, #84]	@, <variable>.hLSRC
	ldmfd	sp!, {r4, lr}	@
	b	LSRC_GetMaxOutputNum	@
	.fnend
	.size	ResamplerGetMaxOutputNum, .-ResamplerGetMaxOutputNum
	.align	2
	.global	ResamplerProcessFrame
	.type	ResamplerProcessFrame, %function
ResamplerProcessFrame:
	.fnstart
.LFB59:
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ inst, inst
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r5, r1	@ inbuf, inbuf
	mov	r7, r2	@ pOutpcm, pOutpcm
	mov	r6, r3	@ insamps, insamps
	ldr	ip, [sp, #80]	@ inrate, inrate
	moveq	r0, #-2147483647	@ nsamps,
	ldr	r8, [sp, #84]	@ outrate, outrate
	ldr	sl, [sp, #88]	@ bInterleaved, bInterleaved
	beq	.L162	@,
	ldr	r0, [r4, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r0, #0	@ <variable>.isLinearMode,
	beq	.L194	@,
	ldr	r0, [r4, #84]	@, <variable>.hLSRC
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	LSRC_ProcessFrame	@
.L196:
	cmp	r0, #-2147483647	@ maxout,
	beq	.L162	@,
	cmp	r0, #-2147483645	@ maxout,
	moveq	r0, #-2147483645	@ nsamps,
	movne	r0, #-2147483640	@ nsamps,
.L162:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L194:
	cmp	r1, #0	@ inbuf,
	bne	.L164	@,
.L192:
	mov	r0, #-2147483646	@ nsamps,
	b	.L162	@
.L164:
	cmp	r3, #2048	@ insamps,
	ble	.L195	@,
.L165:
	mov	r0, #-2147483645	@ nsamps,
	b	.L162	@
.L195:
	tst	r3, #1	@ insamps,
	bne	.L165	@,
	cmp	r2, #0	@ pOutpcm,
	beq	.L192	@,
	ldr	r3, [r4, #8]	@ <variable>.inrate, <variable>.inrate
	cmp	ip, r3	@ inrate, <variable>.inrate
	bne	.L167	@,
	ldr	r1, [r4, #12]	@ <variable>.outrate, <variable>.outrate
	cmp	r8, r1	@ outrate, <variable>.outrate
	beq	.L168	@,
.L167:
	mov	r1, ip	@, inrate
	mov	r2, r8	@, outrate
	mov	r0, r4	@, inst
	bl	ResampleConfig	@
.L168:
	mov	r0, r4	@, inst
	mov	r1, r6	@, insamps
	bl	ResamplerGetMaxOutputNum	@
	cmp	r0, #0	@ maxout
	blt	.L196	@,
	ldr	r0, [r4, #16]	@ D.4199, <variable>.nchans
	cmp	r0, #2	@ D.4199,
	bne	.L172	@,
	ldr	r3, [r4, #40]	@ D.4198, <variable>.bitwidth
	cmp	r3, #16	@ D.4198,
	beq	.L197	@,
	cmp	r3, #24	@ D.4198,
	cmpne	r3, #20	@, D.4198,
	bne	.L198	@,
.L181:
	mov	r0, r4	@, inst
	mov	r1, r5	@, inbuf
	mov	r2, r6	@, insamps
	mov	r3, r7	@, pOutpcm
	str	sl, [sp, #80]	@ bInterleaved,
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	ResamplerStereoProcess24	@
.L198:
	cmp	r3, #18	@ D.4198,
	beq	.L181	@,
.L193:
	mov	r0, #-2147483642	@ nsamps,
	b	.L162	@
.L197:
	ldr	r2, [r4, #76]	@ <variable>.isForec2Out32bit, <variable>.isForec2Out32bit
	cmp	r2, #0	@ <variable>.isForec2Out32bit,
	bne	.L181	@,
	mov	r1, r5	@, inbuf
	ldr	r5, [r4, #28]	@, <variable>.phase
	mov	r2, r6	@, insamps
	ldr	r6, [r4, #20]	@ nwing, <variable>.nwing
	mov	r3, sl	@, bInterleaved
	str	r5, [sp, #16]	@, %sfp
	mov	r5, r7	@ outptr.632, pOutpcm
	ldr	lr, [r4, #72]	@, <variable>.nextphase
	str	r0, [sp, #0]	@ D.4199,
	str	lr, [sp, #32]	@, %sfp
	ldr	r0, [r4, #48]	@, <variable>.pcmbuf
	bl	cvtShortShort	@
	ldr	r3, [r4, #48]	@ <variable>.pcmbuf, <variable>.pcmbuf
	ldr	r1, [r4, #32]	@ <variable>.offset, <variable>.offset
	rsb	ip, r6, #1	@ tmp222, nwing,
	add	r2, r3, ip, asl #2	@, pcmptr.634, <variable>.pcmbuf, tmp222,
	ldr	ip, [r4, #64]	@ rwingptr, <variable>.rwingptr
	add	r1, r2, r1, asl #1	@, pcmptr, pcmptr.634, <variable>.offset,
	ldr	r3, [r4, #60]	@ lwingptr, <variable>.lwingptr
	str	r7, [sp, #36]	@ pOutpcm, %sfp
	mov	r0, r0, asl #1	@,,
	str	r0, [sp, #24]	@, %sfp
	add	fp, r2, r0	@, pcmptr.634,
	str	fp, [sp, #28]	@, %sfp
.L175:
	ldr	fp, [sp, #28]	@, %sfp
	cmp	fp, r1	@, pcmptr
	bls	.L199	@,
	mov	r2, #0	@ ivtmp.559,
	mov	r0, r1	@ ivtmp.570, pcmptr
	mov	fp, r1	@ ivtmp.656, pcmptr
	mov	r9, r2	@ i, ivtmp.559
	mov	r8, r2	@ acc1, ivtmp.559
	mov	sl, r2	@ acc0.635, ivtmp.559
	str	r1, [sp, #12]	@ pcmptr, %sfp
	b	.L176	@
.L177:
	ldr	r7, [ip, r2]	@ cx,* ivtmp.559
	ldr	lr, [r3, r2]	@ cy,* ivtmp.559
	ldr	r1, [fp, #-4]	@,
#APP
@ 759 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb sl, r1, r7, sl	@ acc0,, cx, acc0.635
@ 0 "" 2
@ 779 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatb r8, r1, r7, r8	@ acc1.636,, cx, acc1
@ 0 "" 2
	ldr	r1, [r0, #-8]	@,
#APP
@ 759 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb sl, r1, lr, sl	@ acc0.637,, cy, acc0
@ 0 "" 2
@ 779 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatb r1, r1, lr, r8	@,, cy, acc1.636
@ 0 "" 2
	str	r1, [sp, #20]	@, %sfp
	ldr	r8, [fp, #-8]!	@ x.639,
#APP
@ 769 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt sl, r8, r7, sl	@ acc0.641, x.639, cx, acc0.637
@ 0 "" 2
@ 789 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatt r8, r8, r7, r1	@ acc1.642, x.639, cx,
@ 0 "" 2
	ldr	r1, [r0, #-4]	@,
#APP
@ 769 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt sl, r1, lr, sl	@ acc0.635,, cy, acc0.641
@ 0 "" 2
@ 789 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatt r8, r1, lr, r8	@ acc1,, cy, acc1.642
@ 0 "" 2
	add	r9, r9, #2	@ i, i,
	add	r2, r2, #4	@ ivtmp.559, ivtmp.559,
.L176:
	cmp	r6, r9	@ nwing, i
	add	r0, r0, #8	@ ivtmp.570, ivtmp.570,
	bgt	.L177	@,
	add	sl, sl, #16384	@ tmp227, acc0.635,
	add	r8, r8, #16384	@ tmp230, acc1,
	ldr	r1, [sp, #12]	@ pcmptr, %sfp
	mov	r0, sl, asr #31	@ sign, tmp227,
	mov	r2, r8, asr #31	@ sign, tmp230,
	cmp	r0, sl, asr #30	@ sign, tmp227,
	mov	lr, sl, asr #15	@ x, tmp227,
	mov	r7, r8, asr #15	@ x, tmp230,
	movwne	fp, #32767	@,
	eorne	lr, r0, fp	@ x, sign,
	cmp	r2, r8, asr #30	@ sign, tmp230,
	strh	lr, [r5, #0]	@ movhi	@ x,* outptr.632
	movwne	ip, #32767	@,
	eorne	r7, r2, ip	@ x, sign,
	strh	r7, [r5, #2]	@ movhi	@ x,
	add	r5, r5, #4	@ outptr.632, outptr.632,
	ldr	r3, [sp, #16]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	ldr	r7, [r0, r3, asl #2]	@ phase.643,
	ldr	r0, [r4, #68]	@ D.4262, <variable>.filter
	ubfx	fp, r7, #8, #12	@ tmp239, phase.643,,
	mov	ip, r7, lsr #20	@ tmp243, phase.643,
	uxtb	lr, r7	@ tmp236, phase.643
	mul	r3, r6, fp	@ tmp241, nwing, tmp239
	mov	r2, r7, asr #20	@, phase.643,
	mul	fp, r6, ip	@ tmp244, nwing, tmp243
	add	r1, r1, lr, asl #1	@, pcmptr, pcmptr, tmp236,
	str	r2, [sp, #16]	@, %sfp
	add	r3, r0, r3, asl #1	@, lwingptr, D.4262, tmp241,
	add	ip, r0, fp, asl #1	@, rwingptr, D.4262, tmp244,
	b	.L175	@
.L172:
	cmp	r0, #1	@ D.4199,
	movne	r0, #-2147483643	@ nsamps,
	bne	.L162	@,
	ldr	r3, [r4, #40]	@ temp.629, <variable>.bitwidth
	cmp	r3, #16	@ temp.629,
	beq	.L200	@,
	cmp	r3, #24	@ temp.629,
	cmpne	r3, #20	@, temp.629,
	bne	.L201	@,
.L190:
	mov	r0, r4	@, inst
	mov	r1, r5	@, inbuf
	mov	r2, r6	@, insamps
	mov	r3, r7	@, pOutpcm
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	ResamplerMonoProcess24	@
.L199:
	ldr	fp, [sp, #28]	@, %sfp
	ldr	lr, [sp, #16]	@, %sfp
	rsb	r1, fp, r1	@ tmp246,, pcmptr
	ldr	r7, [sp, #36]	@ pOutpcm, %sfp
	ldr	r2, [r4, #24]	@ <variable>.nhist, <variable>.nhist
	str	ip, [r4, #64]	@ rwingptr, <variable>.rwingptr
	mov	r1, r1, asr #1	@ tmp247, tmp246,
	str	r3, [r4, #60]	@ lwingptr, <variable>.lwingptr
	str	r1, [r4, #32]	@ tmp247, <variable>.offset
	mov	r2, r2, asl #1	@, <variable>.nhist,
	str	lr, [r4, #28]	@, <variable>.phase
	ldr	r0, [r4, #44]	@ D.4245, <variable>.histbuf
	ldr	lr, [sp, #24]	@, %sfp
	add	r1, r0, lr	@,,
	bl	memmove	@
	rsb	r3, r7, r5	@ tmp251, pOutpcm, outptr.632
	mov	r1, r3, asr #1	@ tmp253, tmp251,
	add	ip, r1, r1, lsr #31	@, tmp255, tmp253, tmp253,
	mov	r0, ip, asr #1	@ nsamps, tmp255,
	b	.L162	@
.L201:
	cmp	r3, #18	@ temp.629,
	bne	.L193	@,
	b	.L190	@
.L200:
	ldr	ip, [r4, #76]	@ <variable>.isForec2Out32bit, <variable>.isForec2Out32bit
	cmp	ip, #0	@ <variable>.isForec2Out32bit,
	bne	.L190	@,
	mov	r1, r5	@, inbuf
	mov	r2, r6	@, insamps
	ldr	r5, [r4, #20]	@ nwing, <variable>.nwing
	mov	r3, sl	@, bInterleaved
	ldr	r6, [r4, #28]	@ phase, <variable>.phase
	str	r7, [sp, #16]	@ pOutpcm, %sfp
	ldr	fp, [r4, #72]	@, <variable>.nextphase
	str	r0, [sp, #0]	@ D.4199,
	str	fp, [sp, #36]	@, %sfp
	ldr	r0, [r4, #48]	@, <variable>.pcmbuf
	bl	cvtShortShort	@
	ldr	r3, [r4, #48]	@ <variable>.pcmbuf, <variable>.pcmbuf
	ldr	r1, [r4, #32]	@ <variable>.offset, <variable>.offset
	rsb	ip, r5, #1	@ tmp266, nwing,
	add	r2, r3, ip, asl #1	@, pcmptr, <variable>.pcmbuf, tmp266,
	ldr	ip, [r4, #64]	@ rwingptr, <variable>.rwingptr
	ldr	r3, [r4, #60]	@ lwingptr, <variable>.lwingptr
	add	r1, r2, r1, asl #1	@, yptr, pcmptr, <variable>.offset,
	mov	r0, r0, asl #1	@,,
	str	r0, [sp, #12]	@, %sfp
	add	r2, r2, r0	@, pcmptr,
	str	r2, [sp, #24]	@, %sfp
.L185:
	ldr	r0, [sp, #24]	@, %sfp
	cmp	r0, r1	@, yptr
	bls	.L202	@,
	mov	r2, #0	@ ivtmp.598,
	mov	r9, r1	@ ivtmp.620, yptr
	mov	sl, r1	@ yptr.646, yptr
	mov	r8, r2	@ i, ivtmp.598
	mov	lr, r2	@ acc1, ivtmp.598
	mov	r0, r2	@ acc0.647, ivtmp.598
	str	r4, [sp, #20]	@ inst, %sfp
.L186:
	cmp	r5, r8	@ nwing, i
	ble	.L203	@,
	ldrsh	fp, [r9, #-2]	@ tmp271,
	ldr	r4, [ip, r2]	@,* ivtmp.598
#APP
@ 759 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb fp, fp, r4, r0	@ acc0, tmp271,, acc0.647
@ 0 "" 2
	ldrsh	r0, [r1, r2]	@ tmp272,* ivtmp.598
	ldr	r4, [r3, r2]	@,* ivtmp.598
#APP
@ 759 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r4, r0, r4, lr	@, tmp272,, acc1
@ 0 "" 2
	str	r4, [sp, #32]	@, %sfp
	ldrsh	lr, [sl, #2]	@ y.652,
	add	sl, sl, #4	@ yptr.646, yptr.646,
	ldrsh	r0, [r9, #-4]!	@ tmp273,
	ldr	r4, [ip, r2]	@,* ivtmp.598
#APP
@ 769 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt r0, r0, r4, fp	@ acc0.647, tmp273,, acc0
@ 0 "" 2
	ldr	fp, [sp, #32]	@, %sfp
	ldr	r4, [r3, r2]	@,* ivtmp.598
#APP
@ 769 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt lr, lr, r4, fp	@ acc1, y.652,,
@ 0 "" 2
	add	r8, r8, #2	@ i, i,
	add	r2, r2, #4	@ ivtmp.598, ivtmp.598,
	b	.L186	@
.L202:
	rsb	r1, r0, r1	@ tmp290,, yptr
	ldr	r2, [r4, #24]	@ <variable>.nhist, <variable>.nhist
	str	r6, [r4, #28]	@ phase, <variable>.phase
	mov	lr, r1, asr #1	@ tmp291, tmp290,
	str	ip, [r4, #64]	@ rwingptr, <variable>.rwingptr
	str	lr, [r4, #32]	@ tmp291, <variable>.offset
	mov	r2, r2, asl #1	@, <variable>.nhist,
	str	r3, [r4, #60]	@ lwingptr, <variable>.lwingptr
	ldr	r0, [r4, #44]	@ D.4321, <variable>.histbuf
	ldr	r4, [sp, #12]	@, %sfp
	add	r1, r0, r4	@,,
	bl	memmove	@
	ldr	r4, [sp, #16]	@, %sfp
	rsb	r1, r7, r4	@ tmp295, pOutpcm,
	mov	r0, r1, asr #1	@ nsamps, tmp295,
	b	.L162	@
.L203:
	add	r2, lr, r0	@ tmp274, acc1, acc0.647
	ldr	r3, [sp, #16]	@, %sfp
	add	r0, r2, #16384	@ tmp275, tmp274,
	ldr	r4, [sp, #20]	@ inst, %sfp
	mov	ip, r0, asr #31	@ sign, tmp275,
	mov	lr, r0, asr #15	@ x, tmp275,
	cmp	ip, r0, asr #30	@ sign, tmp275,
	movwne	fp, #32767	@,
	eorne	lr, ip, fp	@ x, sign,
	strh	lr, [r3], #2	@ movhi	@ x,
	ldr	r2, [sp, #36]	@, %sfp
	str	r3, [sp, #16]	@, %sfp
	ldr	r6, [r2, r6, asl #2]	@ phase.654,
	ldr	r2, [r4, #68]	@ D.4338, <variable>.filter
	ubfx	ip, r6, #8, #12	@ tmp283, phase.654,,
	and	r0, r6, #254	@ tmp281, phase.654,
	mov	lr, r6, lsr #20	@ tmp287, phase.654,
	add	r1, r1, r0	@ yptr, yptr, tmp281
	mul	r3, r5, ip	@ tmp285, nwing, tmp283
	mov	r6, r6, asr #20	@ phase, phase.654,
	mul	ip, r5, lr	@ tmp288, nwing, tmp287
	add	r3, r2, r3, asl #1	@, lwingptr, D.4338, tmp285,
	add	ip, r2, ip, asl #1	@, rwingptr, D.4338, tmp288,
	b	.L185	@
	.fnend
	.size	ResamplerProcessFrame, .-ResamplerProcessFrame
	.align	2
	.global	NEW_ResamplerCheck
	.type	NEW_ResamplerCheck, %function
NEW_ResamplerCheck:
	.fnstart
.LFB56:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ inst
	mov	ip, r3	@ chans, chans
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldr	r3, [sp, #12]	@ SampleFormat, SampleFormat
	mov	r4, r1	@ inrate, inrate
	mov	r6, r2	@ outrate, outrate
	moveq	r0, #-2147483647	@ D.3585,
	beq	.L206	@,
	ldr	r5, [r0, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r5, #0	@ <variable>.isLinearMode,
	bne	.L207	@,
	ldr	r2, [r0, #8]	@ <variable>.inrate, <variable>.inrate
	cmp	r1, r2	@ inrate, <variable>.inrate
	beq	.L210	@,
.L208:
	mov	r0, #1	@ D.3585,
.L206:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L207:
	ldr	r0, [r0, #84]	@ <variable>.hLSRC, <variable>.hLSRC
	str	ip, [sp, #12]	@ chans,
	ldmfd	sp!, {r4, r5, r6}
	b	LSRC_CheckUpdate	@
.L210:
	ldr	r1, [r0, #12]	@ <variable>.outrate, <variable>.outrate
	cmp	r6, r1	@ outrate, <variable>.outrate
	bne	.L208	@,
	ldr	r2, [r0, #16]	@ <variable>.nchans, <variable>.nchans
	cmp	ip, r2	@ chans, <variable>.nchans
	bne	.L208	@,
	ldr	r0, [r0, #40]	@ <variable>.bitwidth, <variable>.bitwidth
	subs	r0, r3, r0	@ D.3585, SampleFormat, <variable>.bitwidth
	movne	r0, #1	@ D.3585
	b	.L206	@
	.fnend
	.size	NEW_ResamplerCheck, .-NEW_ResamplerCheck
	.align	2
	.global	ResampleFlush
	.type	ResampleFlush, %function
ResampleFlush:
	.fnstart
.LFB55:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ inst, inst
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r3, [r4, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r3, #0	@ <variable>.isLinearMode,
	ldmnefd	sp!, {r4, pc}	@
	ldr	r2, [r4, #0]	@ <variable>.up, <variable>.up
	ldr	ip, [r4, #20]	@ <variable>.nwing, <variable>.nwing
	sub	r0, r2, #1	@ tmp152, <variable>.up,
	ldr	r2, [r4, #40]	@ D.4543, <variable>.bitwidth
	ldr	r1, [r4, #68]	@ <variable>.filter, <variable>.filter
	mul	r0, ip, r0	@ tmp154, <variable>.nwing, tmp152
	cmp	r2, #16	@ D.4543,
	str	r1, [r4, #64]	@ <variable>.filter, <variable>.rwingptr
	str	r3, [r4, #36]	@ <variable>.isLinearMode, <variable>.isCloned
	str	r3, [r4, #28]	@ <variable>.isLinearMode, <variable>.phase
	str	r3, [r4, #32]	@ <variable>.isLinearMode, <variable>.offset
	add	r1, r1, r0, asl #1	@, tmp158, <variable>.filter, tmp154,
	str	r1, [r4, #60]	@ tmp158, <variable>.lwingptr
	beq	.L225	@,
	cmp	r2, #24	@ D.4543,
	cmpne	r2, #20	@, D.4543,
	beq	.L219	@,
	cmp	r2, #18	@ D.4543,
	ldmnefd	sp!, {r4, pc}	@
.L219:
	ldr	r3, [r4, #24]	@ prephitmp.708, <variable>.nhist
	ldr	r0, [r4, #52]	@ __p, <variable>.histbuf32
	add	r2, r3, #4096	@ tmp174, prephitmp.708,
	movs	r1, r2, asl #2	@ __n, tmp174,
	bne	.L226	@,
.L221:
	add	r3, r0, r3, asl #2	@, tmp176, prephitmp.706, prephitmp.708,
	str	r3, [r4, #56]	@ tmp176, <variable>.pcmbuf32
	ldmfd	sp!, {r4, pc}	@
.L225:
	ldr	r3, [r4, #76]	@ <variable>.isForec2Out32bit, <variable>.isForec2Out32bit
	cmp	r3, #0	@ <variable>.isForec2Out32bit,
	bne	.L219	@,
	ldr	r3, [r4, #24]	@ prephitmp.712, <variable>.nhist
	ldr	r0, [r4, #44]	@ __p, <variable>.histbuf
	add	r1, r3, #4096	@ tmp164, prephitmp.712,
	movs	r1, r1, asl #1	@ __n, tmp164,
	beq	.L218	@,
	bl	__memzero	@
	ldr	r0, [r4, #44]	@ prephitmp.710, <variable>.histbuf
	ldr	r3, [r4, #24]	@ prephitmp.712, <variable>.nhist
.L218:
	add	ip, r0, r3, asl #1	@, tmp166, prephitmp.710, prephitmp.712,
	str	ip, [r4, #48]	@ tmp166, <variable>.pcmbuf
	ldmfd	sp!, {r4, pc}	@
.L226:
	bl	__memzero	@
	ldr	r0, [r4, #52]	@ prephitmp.706, <variable>.histbuf32
	ldr	r3, [r4, #24]	@ prephitmp.708, <variable>.nhist
	b	.L221	@
	.fnend
	.size	ResampleFlush, .-ResampleFlush
	.align	2
	.global	ResamplerFree
	.type	ResamplerFree, %function
ResamplerFree:
	.fnstart
.LFB54:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ inst, inst
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r3, [r4, #80]	@ <variable>.isLinearMode, <variable>.isLinearMode
	cmp	r3, #0	@ <variable>.isLinearMode,
	beq	.L238	@,
	ldr	r0, [r4, #84]	@, <variable>.hLSRC
	bl	LSRC_Destroy	@
.L236:
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
.L238:
	ldr	r3, [r4, #40]	@ D.4624, <variable>.bitwidth
	cmp	r3, #16	@ D.4624,
	beq	.L239	@,
	cmp	r3, #24	@ D.4624,
	cmpne	r3, #20	@, D.4624,
	beq	.L233	@,
	cmp	r3, #18	@ D.4624,
	bne	.L236	@,
.L233:
	ldr	r1, [r4, #52]	@ temp.758, <variable>.histbuf32
	cmp	r1, #0	@ temp.758,
	beq	.L236	@,
.L235:
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	b	.L236	@
.L239:
	ldr	r0, [r4, #76]	@ <variable>.isForec2Out32bit, <variable>.isForec2Out32bit
	cmp	r0, #0	@ <variable>.isForec2Out32bit,
	bne	.L233	@,
	ldr	r1, [r4, #44]	@ D.4621, <variable>.histbuf
	cmp	r1, #0	@ D.4621,
	bne	.L235	@,
	b	.L236	@
	.fnend
	.size	ResamplerFree, .-ResamplerFree
	.align	2
	.global	ResamplerCreate
	.type	ResamplerCreate, %function
ResamplerCreate:
	.fnstart
.LFB53:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #32000	@ inrate,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ inrate, inrate
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r1	@ outrate, outrate
	mov	r6, r2	@ chans, chans
	beq	.L242	@,
	ble	.L286	@,
	movw	lr, #:lower16:88200	@ tmp171,
	movt	lr, #:upper16:88200	@ tmp171,
	cmp	r0, lr	@ inrate, tmp171
	beq	.L242	@,
	ble	.L287	@,
	movw	r1, #:lower16:176400	@ tmp175,
	movt	r1, #:upper16:176400	@ tmp175,
	cmp	r0, r1	@ inrate, tmp175
	beq	.L242	@,
	movw	ip, #:lower16:192000	@ tmp176,
	movt	ip, #:upper16:192000	@ tmp176,
	cmp	r0, ip	@ inrate, tmp176
	beq	.L242	@,
	movw	lr, #:lower16:96000	@ tmp177,
	movt	lr, #:upper16:96000	@ tmp177,
	cmp	r0, lr	@ inrate, tmp177
	beq	.L242	@,
.L241:
	add	r0, sp, #20	@,,
	mov	r1, r4	@, inrate
	mov	r2, r5	@, outrate
	str	r6, [sp, #0]	@ chans,
	bl	LSRC_Create	@
	ldr	r0, [sp, #20]	@ hLSRC, hLSRC
	cmp	r0, #0	@ hLSRC,
	bne	.L288	@,
.L269:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L286:
	movw	r2, #12000	@ tmp166,
	cmp	r0, r2	@ inrate, tmp166
	beq	.L242	@,
	ble	.L289	@,
	movw	r1, #22050	@ tmp169,
	cmp	r0, r1	@ inrate, tmp169
	beq	.L242	@,
	movw	ip, #24000	@ tmp170,
	cmp	r0, ip	@ inrate, tmp170
	beq	.L242	@,
	cmp	r0, #16000	@ inrate,
	bne	.L241	@,
.L242:
	cmp	r5, #32000	@ outrate,
	beq	.L246	@,
	bgt	.L247	@,
	movw	r2, #12000	@ tmp178,
	cmp	r5, r2	@ outrate, tmp178
	beq	.L246	@,
	bgt	.L248	@,
	cmp	r5, #8000	@ outrate,
	beq	.L246	@,
	movw	r0, #11025	@ tmp180,
	cmp	r5, r0	@ outrate, tmp180
	bne	.L241	@,
.L246:
	cmp	r4, r5	@ inrate, outrate
	bge	.L241	@,
	sub	r2, r6, #1	@ tmp190, chans,
	cmp	r2, #1	@ tmp190,
	bhi	.L241	@,
	cmp	r3, #24	@ SampleFormat,
	cmpne	r3, #16	@, SampleFormat,
	beq	.L250	@,
	cmp	r3, #18	@ SampleFormat,
	cmpne	r3, #20	@, SampleFormat,
	bne	.L241	@,
.L250:
	mov	r7, r5	@ outrate.807, outrate
	mov	r2, r4	@ inrate.816, inrate
.L253:
	cmp	r7, r2	@ outrate.807, inrate.816
	rsblt	r2, r7, r2	@ inrate.816, outrate.807, inrate.816
	rsbge	r7, r2, r7	@ outrate.807, inrate.816, outrate.807
	cmp	r7, r2	@ outrate.807, inrate.816
	bne	.L253	@,
	mov	r0, r5	@, outrate
	mov	r1, r7	@, outrate.807
	str	r3, [sp, #8]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #8]	@,
	cmp	r0, #1280	@ up,
	mov	sl, r0	@ up,
	bgt	.L241	@,
	mov	r1, r7	@, outrate.807
	mov	r0, r4	@, inrate
	bl	__aeabi_idiv	@
	mov	r1, sl	@, up
	str	r0, [sp, #12]	@, %sfp
	add	r0, sl, r0	@ tmp211, up,
	sub	r0, r0, #1	@, tmp211,
	bl	__aeabi_idiv	@
	mul	r3, r6, r0	@ tmp217, chans,
	cmp	r3, #255	@ tmp217,
	ldr	r3, [sp, #8]	@,
	bgt	.L241	@,
	movw	r7, #:lower16:.LANCHOR0	@ srcinfoptr,
	mov	ip, r4, asr #1	@ D.4706, inrate,
	movt	r7, #:upper16:.LANCHOR0	@ srcinfoptr,
	mov	r9, r5, asr #1	@ D.4707, outrate,
	mov	r0, r4, asr #2	@ D.4708, inrate,
	mov	r8, r5, asr #2	@ D.4709, outrate,
	mov	lr, #0	@ i,
	b	.L258	@
.L254:
	cmp	r2, ip	@ D.4703, D.4706
	beq	.L290	@,
.L256:
	cmp	r2, r0	@ D.4703, D.4708
	beq	.L291	@,
.L257:
	add	r7, r7, #24	@ srcinfoptr, srcinfoptr,
	add	lr, lr, #1	@ tmp258, i,
	ldr	r2, [r7, #0]	@ D.4703, <variable>.inrate
	mov	r1, r7	@ tmp257, srcinfoptr
	cmp	r4, r2	@ inrate, D.4703
	beq	.L292	@,
.L275:
	cmp	r2, ip	@ D.4703, D.4706
	beq	.L293	@,
.L276:
	cmp	r2, r0	@ D.4703, D.4708
	beq	.L294	@,
.L277:
	add	lr, lr, #1	@ i, tmp258,
	add	r7, r1, #24	@ srcinfoptr, tmp257,
	cmp	lr, #40	@ i,
	beq	.L241	@,
.L258:
	ldr	r2, [r7, #0]	@ D.4703, <variable>.inrate
	cmp	r4, r2	@ inrate, D.4703
	bne	.L254	@,
	ldr	r1, [r7, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r5, r1	@ outrate, <variable>.outrate
	bne	.L254	@,
	ldr	r1, [r7, #8]	@ <variable>.quality, <variable>.quality
	cmp	r1, #2	@ <variable>.quality,
	bne	.L254	@,
.L255:
	mov	r0, #17	@,
	mov	r1, #88	@,
	ldr	r9, [r7, #12]	@ nwing, <variable>.nwing
	str	r3, [sp, #8]	@,
	bl	HI_ADSP_MALLOC	@
	ldr	r3, [sp, #8]	@,
	subs	r8, r0, #0	@ s,
	beq	.L241	@,
	ldr	r0, [r7, #20]	@ <variable>.filter, <variable>.filter
	mov	lr, r9, asl #1	@ tmp225, nwing,
	cmp	r3, #16	@ SampleFormat,
	str	r0, [r8, #68]	@ <variable>.filter, <variable>.filter
	mov	r0, #0	@ tmp228,
	ldr	ip, [r7, #16]	@ <variable>.nextphase, <variable>.nextphase
	str	r0, [r8, #36]	@ tmp228, <variable>.isCloned
	mul	r7, r6, lr	@ nhist, chans, tmp225
	str	ip, [r8, #72]	@ <variable>.nextphase, <variable>.nextphase
	str	r3, [r8, #40]	@ SampleFormat, <variable>.bitwidth
	beq	.L295	@,
	cmp	r3, #24	@ SampleFormat,
	cmpne	r3, #20	@, SampleFormat,
	beq	.L266	@,
	cmp	r3, #18	@ SampleFormat,
	beq	.L266	@,
.L263:
	sub	lr, sl, #1	@ tmp244, up,
	str	r4, [r8, #8]	@ inrate, <variable>.inrate
	str	r5, [r8, #12]	@ outrate, <variable>.outrate
	mov	r0, r8	@ inst, s
	ldr	ip, [sp, #12]	@, %sfp
	mul	r1, r9, lr	@ tmp245, nwing, tmp244
	str	r6, [r8, #16]	@ chans, <variable>.nchans
	str	ip, [r8, #4]	@, <variable>.dn
	mov	lr, #0	@ tmp241,
	str	r7, [r8, #24]	@ nhist, <variable>.nhist
	ldr	r3, [sp, #64]	@, isForec2Out32bit
	ldr	r2, [r8, #68]	@ <variable>.filter, <variable>.filter
	str	lr, [r8, #84]	@ tmp241, <variable>.hLSRC
	add	r1, r2, r1, asl #1	@, tmp248, <variable>.filter, tmp245,
	str	r3, [r8, #76]	@, <variable>.isForec2Out32bit
	str	r1, [r8, #60]	@ tmp248, <variable>.lwingptr
	str	sl, [r8, #0]	@ up, <variable>.up
	str	r9, [r8, #20]	@ nwing, <variable>.nwing
	str	lr, [r8, #28]	@ tmp241, <variable>.phase
	str	lr, [r8, #32]	@ tmp241, <variable>.offset
	str	r2, [r8, #64]	@ <variable>.filter, <variable>.rwingptr
	str	lr, [r8, #80]	@ tmp241, <variable>.isLinearMode
	b	.L269	@
.L247:
	movw	lr, #:lower16:88200	@ tmp183,
	movt	lr, #:upper16:88200	@ tmp183,
	cmp	r5, lr	@ outrate, tmp183
	beq	.L246	@,
	bgt	.L249	@,
	movw	r2, #44100	@ tmp185,
	cmp	r5, r2	@ outrate, tmp185
	beq	.L246	@,
	movw	r0, #48000	@ tmp186,
	cmp	r5, r0	@ outrate, tmp186
	bne	.L241	@,
	b	.L246	@
.L287:
	movw	r2, #44100	@ tmp173,
	cmp	r0, r2	@ inrate, tmp173
	beq	.L242	@,
	movw	r0, #48000	@ tmp174,
	cmp	r4, r0	@ inrate, tmp174
	bne	.L241	@,
	b	.L242	@
.L289:
	cmp	r0, #8000	@ inrate,
	beq	.L242	@,
	movw	r0, #11025	@ tmp168,
	cmp	r4, r0	@ inrate, tmp168
	bne	.L241	@,
	b	.L242	@
.L288:
	mov	r0, #17	@,
	mov	r1, #88	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ D.3262,
	beq	.L296	@,
	mov	r0, #1	@ tmp254,
	str	r0, [r4, #80]	@ tmp254, <variable>.isLinearMode
	ldr	r2, [sp, #20]	@ hLSRC, hLSRC
	mov	r0, r4	@ inst, D.3262
	str	r2, [r4, #84]	@ hLSRC, <variable>.hLSRC
	b	.L269	@
.L248:
	movw	r1, #22050	@ tmp181,
	cmp	r5, r1	@ outrate, tmp181
	beq	.L246	@,
	movw	ip, #24000	@ tmp182,
	cmp	r5, ip	@ outrate, tmp182
	beq	.L246	@,
	cmp	r5, #16000	@ outrate,
	bne	.L241	@,
	b	.L246	@
.L249:
	movw	r1, #:lower16:176400	@ tmp187,
	movt	r1, #:upper16:176400	@ tmp187,
	cmp	r5, r1	@ outrate, tmp187
	beq	.L246	@,
	movw	ip, #:lower16:192000	@ tmp188,
	movt	ip, #:upper16:192000	@ tmp188,
	cmp	r5, ip	@ outrate, tmp188
	beq	.L246	@,
	movw	lr, #:lower16:96000	@ tmp189,
	movt	lr, #:upper16:96000	@ tmp189,
	cmp	r5, lr	@ outrate, tmp189
	bne	.L241	@,
	b	.L246	@
.L291:
	ldr	r2, [r7, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r2, r8	@ <variable>.outrate, D.4709
	bne	.L257	@,
	ldr	r1, [r7, #8]	@ <variable>.quality, <variable>.quality
	cmp	r1, #2	@ <variable>.quality,
	bne	.L257	@,
	b	.L255	@
.L290:
	ldr	r1, [r7, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r1, r9	@ <variable>.outrate, D.4707
	bne	.L256	@,
	ldr	r1, [r7, #8]	@ <variable>.quality, <variable>.quality
	cmp	r1, #2	@ <variable>.quality,
	bne	.L256	@,
	b	.L255	@
.L293:
	ldr	fp, [r1, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	fp, r9	@ <variable>.outrate, D.4707
	bne	.L276	@,
	ldr	fp, [r1, #8]	@ <variable>.quality, <variable>.quality
	cmp	fp, #2	@ <variable>.quality,
	bne	.L276	@,
	b	.L255	@
.L292:
	ldr	fp, [r7, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r5, fp	@ outrate, <variable>.outrate
	bne	.L275	@,
	ldr	fp, [r7, #8]	@ <variable>.quality, <variable>.quality
	cmp	fp, #2	@ <variable>.quality,
	bne	.L275	@,
	b	.L255	@
.L294:
	ldr	r2, [r1, #4]	@ <variable>.outrate, <variable>.outrate
	cmp	r2, r8	@ <variable>.outrate, D.4709
	bne	.L277	@,
	ldr	r2, [r1, #8]	@ <variable>.quality, <variable>.quality
	cmp	r2, #2	@ <variable>.quality,
	bne	.L277	@,
	b	.L255	@
.L296:
	ldr	r0, [sp, #20]	@, hLSRC
	bl	LSRC_Destroy	@
	mov	r0, r4	@ inst, D.3262
	b	.L269	@
.L266:
	mov	r0, #17	@,
.L285:
	mov	r1, #16640	@,
	str	r3, [sp, #8]	@,
	bl	HI_ADSP_MALLOC	@
	cmp	r0, #0	@ prephitmp.778,
	mov	r2, r0	@ prephitmp.778,
	str	r0, [r8, #52]	@ prephitmp.778, <variable>.histbuf32
	beq	.L281	@,
	movs	fp, r7, asl #2	@ __n, nhist,
	bne	.L297	@,
.L268:
	add	ip, r2, fp	@ tmp240, prephitmp.778, __n
	str	ip, [r8, #56]	@ tmp240, <variable>.pcmbuf32
	b	.L263	@
.L295:
	ldr	r2, [sp, #64]	@, isForec2Out32bit
	cmp	r2, r0	@,
	addne	r0, r0, #17	@,,
	bne	.L285	@,
	add	r1, r7, #4096	@ tmp230, nhist,
	mov	r0, #17	@,
	str	r3, [sp, #8]	@,
	mov	r1, r1, asl #1	@, tmp230,
	bl	HI_ADSP_MALLOC	@
	cmp	r0, #0	@ prephitmp.780,
	mov	r2, r0	@ prephitmp.780,
	str	r0, [r8, #44]	@ prephitmp.780, <variable>.histbuf
	beq	.L281	@,
	movs	fp, r7, asl #1	@ __n, nhist,
	beq	.L265	@,
	mov	r1, fp	@, __n
	bl	__memzero	@
	ldr	r2, [r8, #44]	@ prephitmp.780, <variable>.histbuf
.L265:
	add	r3, r2, fp	@ tmp232, prephitmp.780, __n
	str	r3, [r8, #48]	@ tmp232, <variable>.pcmbuf
	b	.L263	@
.L297:
	mov	r1, fp	@, __n
	bl	__memzero	@
	ldr	r2, [r8, #52]	@ prephitmp.778, <variable>.histbuf32
	b	.L268	@
.L281:
	mov	r1, r8	@, s
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldr	r3, [sp, #8]	@,
	b	.L241	@
	.fnend
	.size	ResamplerCreate, .-ResamplerCreate
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	resampler_info, %object
	.size	resampler_info, 960
resampler_info:
@ inrate:
	.word	32000
@ outrate:
	.word	48000
@ quality:
	.word	1
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_32_48_mid_nextphasetab
@ filter:
	.word	SRC_res_32_48_mid_filttab
@ inrate:
	.word	44100
@ outrate:
	.word	48000
@ quality:
	.word	1
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_44_48_mid_nextphasetab
@ filter:
	.word	SRC_res_44_48_mid_filttab
@ inrate:
	.word	48000
@ outrate:
	.word	48000
@ quality:
	.word	1
@ nwing:
	.word	8
@ nextphase:
	.word	res_48_48_nextphasetab
@ filter:
	.word	res_48_48_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	11025
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_11_good_nextphasetab
@ filter:
	.word	SRC_res_8_11_mid_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	22050
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_11_good_nextphasetab
@ filter:
	.word	SRC_res_8_11_mid_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	22050
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_22_good_nextphasetab
@ filter:
	.word	SRC_res_8_22_mid_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_22_good_nextphasetab
@ filter:
	.word	SRC_res_8_22_mid_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_8_44_good_nextphasetab
@ filter:
	.word	SRC_res_8_44_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	12000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_12_good_nextphasetab
@ filter:
	.word	SRC_res_11_12_mid_filttab
@ inrate:
	.word	22050
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_12_good_nextphasetab
@ filter:
	.word	SRC_res_11_12_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	16000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_16_good_nextphasetab
@ filter:
	.word	SRC_res_11_16_mid_filttab
@ inrate:
	.word	22050
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_16_good_nextphasetab
@ filter:
	.word	SRC_res_11_16_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_24_good_nextphasetab
@ filter:
	.word	SRC_res_11_24_mid_filttab
@ inrate:
	.word	22050
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_24_good_nextphasetab
@ filter:
	.word	SRC_res_11_24_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_32_good_nextphasetab
@ filter:
	.word	SRC_res_11_32_mid_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_11_48_good_nextphasetab
@ filter:
	.word	SRC_res_11_48_mid_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	22050
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_12_22_good_nextphasetab
@ filter:
	.word	SRC_res_12_22_mid_filttab
@ inrate:
	.word	24000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_12_22_good_nextphasetab
@ filter:
	.word	SRC_res_12_22_mid_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	SRC_res_12_44_good_nextphasetab
@ filter:
	.word	SRC_res_12_44_mid_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	12000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_12_good_nextphasetab
@ filter:
	.word	SRC_res_8_12_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	16000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_24_good_nextphasetab
@ filter:
	.word	SRC_res_8_24_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_32_good_nextphasetab
@ filter:
	.word	SRC_res_8_32_good_filttab
@ inrate:
	.word	8000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_48_good_nextphasetab
@ filter:
	.word	SRC_res_8_48_good_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	22050
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	11025
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_32_good_nextphasetab
@ filter:
	.word	SRC_res_8_32_good_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	16000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_12_16_good_nextphasetab
@ filter:
	.word	SRC_res_12_16_good_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_12_32_good_nextphasetab
@ filter:
	.word	SRC_res_12_32_good_filttab
@ inrate:
	.word	12000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_32_good_nextphasetab
@ filter:
	.word	SRC_res_8_32_good_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	24000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_12_good_nextphasetab
@ filter:
	.word	SRC_res_8_12_good_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	16000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_24_good_nextphasetab
@ filter:
	.word	SRC_res_8_24_good_filttab
@ inrate:
	.word	22050
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	24000
@ outrate:
	.word	32000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_12_16_good_nextphasetab
@ filter:
	.word	SRC_res_12_16_good_filttab
@ inrate:
	.word	24000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_16_good_nextphasetab
@ filter:
	.word	SRC_res_8_16_good_filttab
@ inrate:
	.word	32000
@ outrate:
	.word	44100
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_11_good_nextphasetab
@ filter:
	.word	SRC_res_8_11_good_filttab
@ inrate:
	.word	32000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	16
@ nextphase:
	.word	SRC_res_8_12_good_nextphasetab
@ filter:
	.word	SRC_res_8_12_good_filttab
@ inrate:
	.word	44100
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	36
@ nextphase:
	.word	SRC_res_11_12_good_nextphasetab
@ filter:
	.word	SRC_res_11_12_good_filttab
@ inrate:
	.word	48000
@ outrate:
	.word	48000
@ quality:
	.word	2
@ nwing:
	.word	8
@ nextphase:
	.word	res_48_48_nextphasetab
@ filter:
	.word	res_48_48_good_filttab
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
