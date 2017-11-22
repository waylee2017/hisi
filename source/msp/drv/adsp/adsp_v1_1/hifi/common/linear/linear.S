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
	.file	"linear.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(linear)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/linear/.linear.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/linear/linear.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/linear/linear.o
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

	.global	__aeabi_idiv
	.text
	.align	2
	.global	LSRC_GetMaxOutputNum
	.type	LSRC_GetMaxOutputNum, %function
LSRC_GetMaxOutputNum:
	.fnstart
.LFB168:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ hLSRC, hLSRC
	mov	r2, r1	@ insamps, insamps
	mvneq	r0, #0	@ outsamps,
	ldmeqfd	sp!, {r3, pc}	@
	ldr	r0, [r3, #16]	@ <variable>.OutRate, <variable>.OutRate
	ldr	r1, [r3, #8]	@, <variable>.AdjustInRate
	mul	r0, r0, r2	@, <variable>.OutRate, insamps
	bl	__aeabi_idiv	@
	add	r0, r0, #1	@ outsamps,,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	LSRC_GetMaxOutputNum, .-LSRC_GetMaxOutputNum
	.global	__aeabi_idivmod
	.align	2
	.global	LSRC_GetMinInputNum
	.type	LSRC_GetMinInputNum, %function
LSRC_GetMinInputNum:
	.fnstart
.LFB169:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ hLSRC
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mvneq	r4, #0	@ insamps,
	beq	.L8	@,
	ldr	r6, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r5, [r0, #16]	@ D.3996, <variable>.OutRate
	mul	r6, r6, r1	@ D.3995, <variable>.AdjustInRate, outsamps
	mov	r1, r5	@, D.3996
	mov	r0, r6	@, D.3995
	bl	__aeabi_idiv	@
	mov	r1, r5	@, D.3996
	mov	r4, r0	@ insamps,
	mov	r0, r6	@, D.3995
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	addne	r4, r4, #1	@ insamps, insamps,
.L8:
	mov	r0, r4	@, insamps
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	LSRC_GetMinInputNum, .-LSRC_GetMinInputNum
	.align	2
	.global	LSRC_CheckUpdate
	.type	LSRC_CheckUpdate, %function
LSRC_CheckUpdate:
	.fnstart
.LFB170:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r4, [r0, #12]	@ <variable>.InRate, <variable>.InRate
	ldr	ip, [r0, #16]	@ <variable>.OutRate, <variable>.OutRate
	ldr	r5, [r0, #0]	@ <variable>.BitPerSample, <variable>.BitPerSample
	subs	r4, r4, r1	@ tmp147, <variable>.InRate, inRate
	movne	r4, #1	@ tmp147
	cmp	ip, r2	@ <variable>.OutRate, outRate
	addne	r4, r4, #1	@,, change, tmp147
	ldr	r2, [r0, #4]	@ <variable>.Channels, <variable>.Channels
	cmp	r5, r3	@ <variable>.BitPerSample, BitPerSample
	addne	r4, r4, #1	@,, change.168, change
	ldr	r5, [sp, #8]	@ Channels, Channels
	cmp	r2, r5	@ <variable>.Channels, Channels
	moveq	r1, r4	@, tmp155, change.168
	addne	r1, r4, #1	@,, tmp155, change.168
	subs	r0, r1, #0	@, tmp155,
	movne	r0, #1	@
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	LSRC_CheckUpdate, .-LSRC_CheckUpdate
	.align	2
	.global	LSRC_UpdateChange
	.type	LSRC_UpdateChange, %function
LSRC_UpdateChange:
	.fnstart
.LFB171:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldr	r5, [r0, #12]	@ <variable>.InRate, <variable>.InRate
	ldr	r4, [r0, #16]	@ <variable>.OutRate, <variable>.OutRate
	subs	ip, r5, r1	@ tmp179, <variable>.InRate, inRate
	movne	ip, #1	@ tmp179
	ldr	r6, [r0, #0]	@ <variable>.BitPerSample, <variable>.BitPerSample
	cmp	r4, r2	@ <variable>.OutRate, outRate
	moveq	r4, ip	@, change, tmp179
	addne	r4, ip, #1	@,, change, tmp179
	ldr	r5, [r0, #4]	@ <variable>.Channels, <variable>.Channels
	ldr	ip, [sp, #12]	@ Channels, Channels
	cmp	r6, r3	@ <variable>.BitPerSample, BitPerSample
	addne	r4, r4, #1	@,, change.201, change
	cmp	r5, ip	@ <variable>.Channels, Channels
	addne	r4, r4, #1	@,, tmp186, change.201
	cmp	r4, #0	@ tmp186,
	beq	.L29	@,
	cmp	r2, #8000	@ outRate,
	str	r3, [r0, #0]	@ BitPerSample, <variable>.BitPerSample
	str	r1, [r0, #12]	@ inRate, <variable>.InRate
	mov	r3, #0	@ tmp187,
	str	ip, [r0, #4]	@ Channels, <variable>.Channels
	str	r1, [r0, #8]	@ inRate, <variable>.AdjustInRate
	str	r2, [r0, #16]	@ outRate, <variable>.OutRate
	str	r3, [r0, #20]	@ tmp187, <variable>.Remainder
	str	r3, [r0, #24]	@ tmp187, <variable>.DisContinuity
	str	r3, [r0, #28]	@ tmp187, <variable>.SpeedAdjust
	beq	.L15	@,
	movw	r3, #11025	@ tmp190,
	cmp	r2, r3	@ outRate, tmp190
	moveq	r3, #1	@ n,
	beq	.L15	@,
	movw	r3, #12000	@ tmp191,
	cmp	r2, r3	@ outRate, tmp191
	moveq	r3, #2	@ n,
	beq	.L15	@,
	cmp	r2, #16000	@ outRate,
	moveq	r3, #3	@ n,
	beq	.L15	@,
	movw	r3, #22050	@ tmp192,
	cmp	r2, r3	@ outRate, tmp192
	moveq	r3, #4	@ n,
	beq	.L15	@,
	movw	r3, #24000	@ tmp193,
	cmp	r2, r3	@ outRate, tmp193
	moveq	r3, #5	@ n,
	beq	.L15	@,
	cmp	r2, #32000	@ outRate,
	moveq	r3, #6	@ n,
	beq	.L15	@,
	movw	r3, #44100	@ tmp194,
	cmp	r2, r3	@ outRate, tmp194
	moveq	r3, #7	@ n,
	beq	.L15	@,
	movw	r3, #48000	@ tmp195,
	cmp	r2, r3	@ outRate, tmp195
	moveq	r3, #8	@ n,
	beq	.L15	@,
	movw	r3, #:lower16:88200	@ tmp196,
	movt	r3, #:upper16:88200	@ tmp196,
	cmp	r2, r3	@ outRate, tmp196
	moveq	r3, #9	@ n,
	beq	.L15	@,
	movw	r3, #:lower16:96000	@ tmp197,
	movt	r3, #:upper16:96000	@ tmp197,
	cmp	r2, r3	@ outRate, tmp197
	moveq	r3, #10	@ n,
	beq	.L15	@,
	movw	r3, #:lower16:176400	@ tmp198,
	movt	r3, #:upper16:176400	@ tmp198,
	cmp	r2, r3	@ outRate, tmp198
	moveq	r3, #11	@ n,
	beq	.L15	@,
	movw	r3, #:lower16:192000	@ tmp199,
	movt	r3, #:upper16:192000	@ tmp199,
	cmp	r2, r3	@ outRate, tmp199
	beq	.L36	@,
.L27:
	cmp	ip, #0	@ Channels,
	beq	.L29	@,
	mov	r3, #1	@ n.204,
	cmp	r3, ip	@ n.204, Channels
	sub	r4, ip, #1	@ tmp204, Channels,
	add	r2, r0, #4	@ ivtmp.199, hLSRC,
	and	r1, r4, r3	@ tmp206, tmp204,
	mov	r4, #0	@ tmp203,
	str	r4, [r0, #36]	@ tmp203, <variable>.PreSample
	bcs	.L29	@,
	cmp	r1, #0	@ tmp206,
	beq	.L28	@,
	mov	r3, #2	@ n.204,
	cmp	r3, ip	@ n.204, Channels
	str	r4, [r2, #36]	@ tmp203, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.199, ivtmp.199,
	bcs	.L29	@,
.L28:
	add	r3, r3, #2	@ n.204, n.204,
	add	r0, r2, #4	@ tmp208, ivtmp.199,
	cmp	r3, ip	@ n.204, Channels
	str	r4, [r2, #36]	@ tmp203, <variable>.PreSample
	str	r4, [r0, #36]	@ tmp203, <variable>.PreSample
	add	r2, r0, #4	@ ivtmp.199, tmp208,
	bcc	.L28	@,
.L29:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L36:
	mov	r3, #12	@ n,
.L15:
	movw	r2, #:lower16:.LANCHOR0	@ tmp200,
	movt	r2, #:upper16:.LANCHOR0	@ tmp200,
	ldr	r1, [r2, r3, asl #2]	@ tmp201, g_s32IvtSfTab
	str	r1, [r0, #32]	@ tmp201, <variable>.IvtSFFactor
	b	.L27	@
	.fnend
	.size	LSRC_UpdateChange, .-LSRC_UpdateChange
	.align	2
	.global	LSRC_Flush
	.type	LSRC_Flush, %function
LSRC_Flush:
	.fnstart
.LFB172:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r3, [r0, #16]	@ pretmp.229, <variable>.OutRate
	mov	r2, #0	@ tmp141,
	str	r2, [r0, #20]	@ tmp141, <variable>.Remainder
	cmp	r3, #8000	@ pretmp.229,
	str	r2, [r0, #24]	@ tmp141, <variable>.DisContinuity
	beq	.L39	@,
	movw	r2, #11025	@ tmp143,
	cmp	r3, r2	@ pretmp.229, tmp143
	moveq	r2, #1	@ n.248,
	beq	.L39	@,
	movw	r2, #12000	@ tmp144,
	cmp	r3, r2	@ pretmp.229, tmp144
	moveq	r2, #2	@ n.248,
	beq	.L39	@,
	cmp	r3, #16000	@ pretmp.229,
	moveq	r2, #3	@ n.248,
	beq	.L39	@,
	movw	r2, #22050	@ tmp145,
	cmp	r3, r2	@ pretmp.229, tmp145
	moveq	r2, #4	@ n.248,
	beq	.L39	@,
	movw	r2, #24000	@ tmp146,
	cmp	r3, r2	@ pretmp.229, tmp146
	moveq	r2, #5	@ n.248,
	beq	.L39	@,
	cmp	r3, #32000	@ pretmp.229,
	moveq	r2, #6	@ n.248,
	beq	.L39	@,
	movw	r2, #44100	@ tmp147,
	cmp	r3, r2	@ pretmp.229, tmp147
	moveq	r2, #7	@ n.248,
	beq	.L39	@,
	movw	r2, #48000	@ tmp148,
	cmp	r3, r2	@ pretmp.229, tmp148
	moveq	r2, #8	@ n.248,
	beq	.L39	@,
	movw	r2, #:lower16:88200	@ tmp149,
	movt	r2, #:upper16:88200	@ tmp149,
	cmp	r3, r2	@ pretmp.229, tmp149
	moveq	r2, #9	@ n.248,
	beq	.L39	@,
	movw	r2, #:lower16:96000	@ tmp150,
	movt	r2, #:upper16:96000	@ tmp150,
	cmp	r3, r2	@ pretmp.229, tmp150
	moveq	r2, #10	@ n.248,
	beq	.L39	@,
	movw	r2, #:lower16:176400	@ tmp151,
	movt	r2, #:upper16:176400	@ tmp151,
	cmp	r3, r2	@ pretmp.229, tmp151
	moveq	r2, #11	@ n.248,
	beq	.L39	@,
	movw	r2, #:lower16:192000	@ tmp152,
	movt	r2, #:upper16:192000	@ tmp152,
	cmp	r3, r2	@ pretmp.229, tmp152
	beq	.L61	@,
.L51:
	ldr	r4, [r0, #4]	@ D.4071, <variable>.Channels
	cmp	r4, #0	@ D.4071,
	beq	.L54	@,
	cmp	r4, #1	@ D.4071,
	sub	ip, r4, #1	@ tmp157, D.4071,
	and	r1, ip, #1	@ tmp159, tmp157,
	add	r3, r0, #4	@ ivtmp.247, pLinearSrc,
	mov	ip, #0	@ tmp156,
	mov	r2, #1	@ n,
	str	ip, [r0, #36]	@ tmp156, <variable>.PreSample
	bls	.L54	@,
	cmp	r1, #0	@ tmp159,
	beq	.L53	@,
	mov	r2, #2	@ n,
	cmp	r4, r2	@ D.4071, n
	str	ip, [r3, #36]	@ tmp156, <variable>.PreSample
	add	r3, r3, #4	@ ivtmp.247, ivtmp.247,
	bls	.L54	@,
.L53:
	add	r2, r2, #2	@ n, n,
	add	r0, r3, #4	@ tmp161, ivtmp.247,
	cmp	r4, r2	@ D.4071, n
	str	ip, [r3, #36]	@ tmp156, <variable>.PreSample
	str	ip, [r0, #36]	@ tmp156, <variable>.PreSample
	add	r3, r0, #4	@ ivtmp.247, tmp161,
	bhi	.L53	@,
.L54:
	ldmfd	sp!, {r4}
	bx	lr
.L61:
	mov	r2, #12	@ n.248,
.L39:
	movw	r1, #:lower16:.LANCHOR0	@ tmp153,
	movt	r1, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r3, [r1, r2, asl #2]	@ tmp154, g_s32IvtSfTab
	str	r3, [r0, #32]	@ tmp154, <variable>.IvtSFFactor
	b	.L51	@
	.fnend
	.size	LSRC_Flush, .-LSRC_Flush
	.align	2
	.global	LSRC_CheckDoSRC
	.type	LSRC_CheckDoSRC, %function
LSRC_CheckDoSRC:
	.fnstart
.LFB173:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r3, [r0, #16]	@ <variable>.OutRate, <variable>.OutRate
	cmp	r2, r3	@ <variable>.AdjustInRate, <variable>.OutRate
	movne	r0, #1	@ D.4083,
	bxne	lr	@
	ldr	r0, [r0, #24]	@ <variable>.DisContinuity, <variable>.DisContinuity
	subs	r0, r0, #0	@ D.4083, <variable>.DisContinuity,
	movne	r0, #1	@ D.4083
	bx	lr	@
	.fnend
	.size	LSRC_CheckDoSRC, .-LSRC_CheckDoSRC
	.align	2
	.global	LSRC_SetSpeedAdjust
	.type	LSRC_SetSpeedAdjust, %function
LSRC_SetSpeedAdjust:
	.fnstart
.LFB174:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]	@ prephitmp.300, <variable>.SpeedAdjust
	cmp	r3, r1	@ prephitmp.300, SpeedAdjust
	bxeq	lr	@
	cmp	r1, #100	@ SpeedAdjust,
	bxgt	lr	@
	cmn	r1, #100	@ SpeedAdjust,
	bxlt	lr	@
	subs	r2, r1, #0	@ tmp143, SpeedAdjust,
	movne	r2, #1	@ tmp143
	cmp	r3, #0	@ prephitmp.300,
	ldr	ip, [r0, #12]	@ <variable>.InRate, <variable>.InRate
	movne	r2, #0	@, tmp143,
	cmp	r2, #0	@ tmp143,
	str	r1, [r0, #28]	@ SpeedAdjust, <variable>.SpeedAdjust
	movne	r2, #1	@ tmp144,
	strne	r2, [r0, #24]	@ tmp144, <variable>.DisContinuity
	add	r2, r1, #1000	@ tmp153, SpeedAdjust,
	subs	r3, r3, #0	@ tmp151, prephitmp.300,
	movne	r3, #1	@ tmp151
	cmp	r1, #0	@ SpeedAdjust,
	mov	r1, #0	@ tmp161,
	mul	r2, ip, r2	@ tmp154, <variable>.InRate, tmp153
	movne	r3, #0	@, tmp151,
	cmp	r3, #0	@ tmp151,
	str	r1, [r0, #20]	@ tmp161, <variable>.Remainder
	movne	r3, #1	@ tmp152,
	strne	r3, [r0, #24]	@ tmp152, <variable>.DisContinuity
	movw	r3, #:lower16:274877907	@ tmp157,
	movt	r3, #:upper16:274877907	@ tmp157,
	smull	r1, ip, r3, r2	@, tmp156, tmp157, tmp154
	mov	r2, r2, asr #31	@ tmp159, tmp154,
	rsb	r3, r2, ip, asr #6	@, tmp160, tmp159, tmp156,
	str	r3, [r0, #8]	@ tmp160, <variable>.AdjustInRate
	bx	lr	@
	.fnend
	.size	LSRC_SetSpeedAdjust, .-LSRC_SetSpeedAdjust
	.align	2
	.global	LSRC_ProcessFrame
	.type	LSRC_ProcessFrame, %function
LSRC_ProcessFrame:
	.fnstart
.LFB177:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	.pad #56
	sub	sp, sp, #56	@,,
	str	r1, [sp, #48]	@ pInPcmBuf, %sfp
	ldr	r1, [r0, #0]	@ <variable>.BitPerSample, <variable>.BitPerSample
	str	r2, [sp, #44]	@ pOutpcmBuf, %sfp
	cmp	r1, #16	@ <variable>.BitPerSample,
	str	r3, [sp, #40]	@ InSamps, %sfp
	beq	.L224	@,
	ldr	r8, [r0, #24]	@ <variable>.DisContinuity, <variable>.DisContinuity
	ldr	r5, [sp, #40]	@, %sfp
	ldr	sl, [r0, #4]	@ Channels, <variable>.Channels
	cmp	r8, #0	@ <variable>.DisContinuity,
	cmpne	r5, #0	@,,
	movle	r3, #0	@, tmp338
	movgt	r3, #1	@, tmp338
	bgt	.L102	@,
	str	r3, [sp, #52]	@ tmp338, %sfp
	ldr	r6, [sp, #52]	@, %sfp
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	str	r6, [sp, #24]	@, %sfp
	str	r6, [sp, #28]	@, %sfp
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L103:
	cmp	r3, r8	@ <variable>.AdjustInRate, temp.667
	beq	.L225	@,
	ldr	r2, [sp, #40]	@, %sfp
	cmp	r2, #0	@,
	ble	.L115	@,
	ldr	r4, [r0, #20]	@ prephitmp.387, <variable>.Remainder
	cmp	r8, r4	@ temp.667, prephitmp.387
	ble	.L116	@,
	ldr	r9, [sp, #24]	@, %sfp
	mov	r2, sl, asl #2	@, Channels,
	ldr	r5, [sp, #52]	@, %sfp
	ldr	r7, [sp, #44]	@, %sfp
	mul	fp, sl, r9	@ tmp353, Channels,
	ldr	ip, [sp, #48]	@, %sfp
	mul	r1, sl, r5	@ pretmp.392, Channels,
	movw	r9, #32767	@ tmp429,
	str	r2, [sp, #16]	@, %sfp
	add	fp, r7, fp, asl #2	@, ivtmp.586,, tmp353,
	add	r6, ip, r1, asl #2	@,,, pretmp.392,
	str	r6, [sp, #12]	@, %sfp
.L117:
	cmp	sl, #0	@ Channels,
	ble	.L120	@,
	tst	sl, #1	@ Channels,
	ldr	r1, [sp, #12]	@ ivtmp.578, %sfp
	mov	ip, r0	@ ivtmp.584, hLSRC
	mov	r2, fp	@ ivtmp.662, ivtmp.586
	mov	r7, #0	@ ch.647,
	strne	fp, [sp, #20]	@ ivtmp.586, %sfp
	bne	.L121	@,
	ldr	r6, [r0, #32]	@ D.4725, <variable>.IvtSFFactor
	ldr	r7, [sp, #12]	@, %sfp
	mul	ip, r6, r4	@ tmp696, D.4725, prephitmp.387
	ldr	r1, [r7, #0]	@ tmp695,
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,ip,r1,ip	@, sum, tmp695, sum
@ 0 "" 2
	rsb	r3, r4, r8	@ tmp700, prephitmp.387, temp.667
	ldr	r5, [r0, #36]	@ tmp699, <variable>.PreSample
	mul	r2, r6, r3	@ tmp701, D.4725, tmp700
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r2,r5,r2	@, y, tmp699, y
@ 0 "" 2
	add	r8, r2, ip	@ tmp704, y, sum
	mov	r2, fp	@ ivtmp.662, ivtmp.586
	add	ip, r0, #4	@ ivtmp.584, hLSRC,
	mov	r4, r8, asr #31	@ sign, tmp704,
	mov	r7, r8, asr #14	@ x, tmp704,
	cmp	r4, r8, asr #29	@ sign, tmp704,
	eorne	r7, r4, r9	@ x, sign, tmp429
	mov	r1, r7, asl #16	@ tmp710, x,
	str	r1, [r2], #4	@ tmp710,
	ldr	r3, [sp, #12]	@, %sfp
	mov	r7, #1	@ ch.647,
	ldr	r4, [r0, #20]	@ prephitmp.387, <variable>.Remainder
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
	add	r1, r3, #4	@ ivtmp.578,,
	str	fp, [sp, #20]	@ ivtmp.586, %sfp
	b	.L121	@
.L119:
	ldr	r6, [r0, #20]	@ prephitmp.387, <variable>.Remainder
	ldr	r5, [r0, #32]	@ D.4725, <variable>.IvtSFFactor
	ldr	r1, [r1, #4]	@ tmp355,
	ldr	r7, [r0, #16]	@ temp.667, <variable>.OutRate
	mul	r3, r5, r6	@ tmp356, D.4725, prephitmp.387
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r3,r1,r3	@, sum, tmp355, sum
@ 0 "" 2
	rsb	r6, r6, r7	@ tmp358, prephitmp.387, temp.667
	ldr	r1, [ip, #36]	@ tmp357, <variable>.PreSample
	mul	r7, r5, r6	@ tmp360, D.4725, tmp358
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,r7,r1,r7	@, y, tmp357, y
@ 0 "" 2
	add	r3, r7, r3	@ tmp361, y, sum
	add	r1, r8, #4	@ ivtmp.578, tmp485,
	add	r7, r4, #1	@ ch.647, tmp484,
	add	ip, ip, #4	@ ivtmp.584, tmp486,
	mov	fp, r3, asr #31	@ sign, tmp361,
	mov	r5, r3, asr #14	@ x, tmp361,
	cmp	fp, r3, asr #29	@ sign, tmp361,
	eorne	r5, fp, r9	@ x, sign, tmp429
	mov	fp, r5, asl #16	@ tmp713, x,
	str	fp, [r2], #4	@ tmp713,
	ldr	r4, [r0, #20]	@ prephitmp.387, <variable>.Remainder
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L121:
	ldr	r5, [r0, #32]	@ D.4725, <variable>.IvtSFFactor
	ldr	r6, [r1, #0]	@ tmp592,* ivtmp.578
	mul	r3, r5, r4	@ tmp593, D.4725, prephitmp.387
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r3,r6,r3	@, sum, tmp592, sum
@ 0 "" 2
	rsb	fp, r4, r8	@ tmp598, prephitmp.387, temp.667
	ldr	r6, [ip, #36]	@ tmp597, <variable>.PreSample
	mul	r4, r5, fp	@ tmp599, D.4725, tmp598
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,r4,r6,r4	@, y, tmp597, y
@ 0 "" 2
	add	r8, r4, r3	@ tmp602, y, sum
	add	r4, r7, #1	@ tmp484, ch.647,
	add	ip, ip, #4	@ tmp486, ivtmp.584,
	mov	r5, r8, asr #31	@ sign, tmp602,
	mov	fp, r8, asr #14	@ x, tmp602,
	cmp	r5, r8, asr #29	@ sign, tmp602,
	add	r8, r1, #4	@ tmp485, ivtmp.578,
	eorne	fp, r5, r9	@ x, sign, tmp429
	cmp	r4, sl	@ tmp484, Channels
	mov	r5, fp, asl #16	@ tmp365, x,
	str	r5, [r2], #4	@ tmp365,
	bne	.L119	@,
	ldr	fp, [sp, #20]	@ ivtmp.586, %sfp
	ldr	r4, [r0, #20]	@ prephitmp.387, <variable>.Remainder
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L120:
	ldr	r7, [sp, #28]	@, %sfp
	add	r4, r4, r3	@ prephitmp.387, prephitmp.387, <variable>.AdjustInRate
	ldr	r2, [sp, #24]	@, %sfp
	cmp	r4, r8	@ prephitmp.387, temp.667
	add	r6, r7, #1	@,,
	str	r6, [sp, #28]	@, %sfp
	add	r7, r2, #1	@,,
	str	r7, [sp, #24]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.387, <variable>.Remainder
	ldr	ip, [sp, #16]	@, %sfp
	add	fp, fp, ip	@ ivtmp.586, ivtmp.586,
	blt	.L117	@,
.L116:
	ldr	r1, [sp, #40]	@, %sfp
	rsb	r4, r8, r4	@ prephitmp.649, temp.667, prephitmp.387
	str	r4, [r0, #20]	@ prephitmp.649, <variable>.Remainder
	cmp	r1, #1	@,
	beq	.L115	@,
	ldr	r5, [sp, #52]	@, %sfp
	mov	r1, sl, asl #2	@, Channels,
	ldr	r6, [sp, #48]	@, %sfp
	add	r7, r5, #1	@ tmp369,,
	ldr	r9, [sp, #40]	@, %sfp
	mul	ip, sl, r5	@ tmp371, Channels,
	str	r1, [sp, #32]	@, %sfp
	mla	r2, r7, r1, r6	@, tmp369,,
	str	r9, [sp, #36]	@, %sfp
	movw	r9, #32767	@ tmp420,
	add	r5, r6, ip, asl #2	@,,, tmp371,
	str	r5, [sp, #16]	@, %sfp
	str	r2, [sp, #20]	@, %sfp
.L122:
	cmp	r4, r8	@ prephitmp.649, temp.667
	bge	.L125	@,
	ldr	ip, [sp, #24]	@, %sfp
	ldr	r7, [sp, #44]	@, %sfp
	mul	r5, sl, ip	@ tmp385, Channels,
	add	fp, r7, r5, asl #2	@,,, tmp385,
	str	fp, [sp, #12]	@, %sfp
.L128:
	cmp	sl, #0	@ Channels,
	ble	.L126	@,
	tst	sl, #1	@ Channels,
	ldr	r1, [sp, #12]	@ ivtmp.672, %sfp
	ldr	r2, [sp, #16]	@ ivtmp.553, %sfp
	mov	ip, #0	@ ch.660,
	ldr	r6, [sp, #20]	@ ivtmp.663, %sfp
	bne	.L127	@,
	ldr	r2, [r0, #32]	@ temp.650, <variable>.IvtSFFactor
	ldr	ip, [sp, #20]	@, %sfp
	mul	r7, r2, r4	@ tmp676, temp.650, prephitmp.649
	ldr	r6, [ip, #0]	@ tmp675,
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull ip,r7,r6,r7	@, sum.652, tmp675, sum.652
@ 0 "" 2
	rsb	r4, r4, r8	@ tmp680, prephitmp.649, temp.667
	ldr	r8, [sp, #16]	@, %sfp
	mul	r3, r2, r4	@ tmp681, temp.650, tmp680
	ldr	fp, [r8, #0]	@ tmp679,
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r3,fp,r3	@, y, tmp679, y
@ 0 "" 2
	add	r5, r3, r7	@ tmp684, y, sum.652
	mov	r1, r5, asr #31	@ sign, tmp684,
	mov	r6, r5, asr #14	@ x, tmp684,
	cmp	r1, r5, asr #29	@ sign, tmp684,
	eorne	r6, r1, r9	@ x, sign, tmp420
	ldr	r1, [sp, #12]	@ ivtmp.672, %sfp
	mov	ip, r6, asl #16	@ tmp690, x,
	str	ip, [r1], #4	@ tmp690,
	mov	ip, #1	@ ch.660,
	ldr	r4, [sp, #20]	@, %sfp
	ldr	r8, [sp, #16]	@, %sfp
	add	r6, r4, #4	@ ivtmp.663,,
	ldr	r4, [r0, #20]	@ prephitmp.649, <variable>.Remainder
	add	r2, r8, #4	@ ivtmp.553,,
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
	b	.L127	@
.L124:
	ldr	r5, [r0, #20]	@ prephitmp.649, <variable>.Remainder
	ldr	r4, [r0, #32]	@ temp.650, <variable>.IvtSFFactor
	ldr	r6, [r6, #4]	@,
	mul	r3, r4, r5	@ tmp374, temp.650, prephitmp.649
	str	r6, [sp, #4]	@, %sfp
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r3,r6,r3	@, sum.652,, sum.652
@ 0 "" 2
	ldr	r6, [r0, #16]	@, <variable>.OutRate
	ldr	r2, [r2, #4]	@ tmp375,
	rsb	fp, r5, r6	@ tmp376, prephitmp.649,
	mul	r6, r4, fp	@ tmp378, temp.650, tmp376
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r6,r2,r6	@, y, tmp375, y
@ 0 "" 2
	add	r4, r6, r3	@ tmp379, y, sum.652
	add	r6, r8, #4	@ ivtmp.663, tmp478,
	add	ip, ip, #1	@ ch.660, tmp477,
	mov	r3, r4, asr #31	@ sign, tmp379,
	mov	r2, r4, asr #14	@ x, tmp379,
	cmp	r3, r4, asr #29	@ sign, tmp379,
	eorne	r2, r3, r9	@ x, sign, tmp420
	mov	r5, r2, asl #16	@ tmp693, x,
	str	r5, [r1], #4	@ tmp693,
	ldr	r4, [r0, #20]	@ prephitmp.649, <variable>.Remainder
	add	r2, r7, #4	@ ivtmp.553, tmp479,
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L127:
	ldr	r5, [r0, #32]	@ temp.650, <variable>.IvtSFFactor
	ldr	r7, [r6, #0]	@ tmp612,* ivtmp.663
	mul	r3, r5, r4	@ tmp613, temp.650, prephitmp.649
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r3,r7,r3	@, sum.652, tmp612, sum.652
@ 0 "" 2
	rsb	r4, r4, r8	@ tmp618, prephitmp.649, temp.667
	ldr	fp, [r2, #0]	@ tmp617,* ivtmp.553
	mul	r8, r5, r4	@ tmp619, temp.650, tmp618
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,r8,fp,r8	@, y, tmp617, y
@ 0 "" 2
	add	r7, r8, r3	@ tmp622, y, sum.652
	add	ip, ip, #1	@ tmp477, ch.660,
	add	r8, r6, #4	@ tmp478, ivtmp.663,
	mov	r4, r7, asr #31	@ sign, tmp622,
	mov	fp, r7, asr #14	@ x, tmp622,
	cmp	r4, r7, asr #29	@ sign, tmp622,
	add	r7, r2, #4	@ tmp479, ivtmp.553,
	eorne	fp, r4, r9	@ x, sign, tmp420
	cmp	ip, sl	@ tmp477, Channels
	mov	r3, fp, asl #16	@ tmp383, x,
	str	r3, [r1], #4	@ tmp383,
	bne	.L124	@,
	ldr	r4, [r0, #20]	@ prephitmp.649, <variable>.Remainder
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L126:
	ldr	r5, [sp, #28]	@, %sfp
	add	r4, r4, r3	@ prephitmp.649, prephitmp.649, <variable>.AdjustInRate
	ldr	r6, [sp, #24]	@, %sfp
	cmp	r4, r8	@ prephitmp.649, temp.667
	add	fp, r5, #1	@,,
	str	fp, [sp, #28]	@, %sfp
	add	r2, r6, #1	@,,
	str	r2, [sp, #24]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.649, <variable>.Remainder
	ldr	r1, [sp, #12]	@, %sfp
	ldr	ip, [sp, #32]	@, %sfp
	add	fp, r1, ip	@,,
	str	fp, [sp, #12]	@, %sfp
	blt	.L128	@,
.L125:
	ldr	r6, [sp, #36]	@, %sfp
	rsb	r4, r8, r4	@ prephitmp.649, temp.667, prephitmp.649
	sub	r2, r6, #1	@,,
	str	r2, [sp, #36]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.649, <variable>.Remainder
	cmp	r2, #1	@,
	ldr	ip, [sp, #20]	@, %sfp
	ldr	r5, [sp, #32]	@, %sfp
	ldr	r7, [sp, #16]	@, %sfp
	add	r1, ip, r5	@,,
	str	r1, [sp, #20]	@, %sfp
	add	r6, r7, r5	@,,
	str	r6, [sp, #16]	@, %sfp
	bne	.L122	@,
	ldr	r9, [sp, #52]	@, %sfp
	ldr	r7, [sp, #40]	@, %sfp
	add	r1, r7, r9	@ D.4858,,
	sub	r3, r1, #1	@, D.4858,
	str	r3, [sp, #52]	@, %sfp
.L115:
	cmp	sl, #0	@ Channels,
	ble	.L84	@,
	ldr	r1, [sp, #52]	@, %sfp
	sub	r2, sl, #1	@ tmp468, Channels,
	ldr	r4, [sp, #48]	@, %sfp
	mul	r3, sl, r1	@ tmp387, Channels,
	mov	r1, #1	@ ch.665,
	cmp	r1, sl	@ ch.665, Channels
	and	ip, r2, r1	@ tmp470, tmp468,
	add	r2, r0, #4	@ ivtmp.544, hLSRC,
	add	r3, r4, r3, asl #2	@, ivtmp.541,, tmp387,
	ldr	r4, [r3], #4	@ tmp389,
	str	r4, [r0, #36]	@ tmp389, <variable>.PreSample
	beq	.L84	@,
	cmp	ip, #0	@ tmp470,
	beq	.L129	@,
	ldr	r0, [r3], #4	@ tmp673,
	mov	r1, #2	@ ch.665,
	cmp	r1, sl	@ ch.665, Channels
	str	r0, [r2, #36]	@ tmp673, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.544, ivtmp.544,
	beq	.L84	@,
.L129:
	mov	r0, r3	@ tmp472, ivtmp.541
	add	r1, r1, #2	@ ch.665, ch.665,
	ldr	r4, [r0], #4	@ tmp631,
	add	ip, r2, #4	@ tmp473, ivtmp.544,
	cmp	r1, sl	@ ch.665, Channels
	str	r4, [r2, #36]	@ tmp631, <variable>.PreSample
	add	r2, ip, #4	@ ivtmp.544, tmp473,
	ldr	r4, [r3, #4]	@ tmp635,
	add	r3, r0, #4	@ ivtmp.541, tmp472,
	str	r4, [ip, #36]	@ tmp635, <variable>.PreSample
	bne	.L129	@,
.L84:
	ldr	r0, [sp, #28]	@, %sfp
	add	sp, sp, #56	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L102:
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
	cmp	r3, r8	@ <variable>.AdjustInRate, temp.667
	beq	.L104	@,
	cmp	sl, #0	@ Channels,
	ble	.L106	@,
	ldr	fp, [sp, #48]	@, %sfp
	mov	r2, #1	@ ch.636,
	cmp	r2, sl	@ ch.636, Channels
	sub	r1, sl, #1	@ tmp493, Channels,
	and	ip, r1, r2	@ tmp495, tmp493,
	add	r1, r0, #4	@ ivtmp.606, hLSRC,
	ldr	r4, [fp, #0]	@ tmp345,
	str	r4, [r0, #36]	@ tmp345, <variable>.PreSample
	beq	.L106	@,
	cmp	ip, #0	@ tmp495,
	beq	.L223	@,
	ldr	r5, [sp, #48]	@, %sfp
	mov	r2, #2	@ ch.636,
	cmp	r2, sl	@ ch.636, Channels
	ldr	ip, [r5, #4]	@ tmp717,
	str	ip, [r1, #36]	@ tmp717, <variable>.PreSample
	add	r1, r1, #4	@ ivtmp.606, ivtmp.606,
	beq	.L106	@,
.L223:
	ldr	r5, [sp, #48]	@ pInPcmBuf, %sfp
.L109:
	ldr	r6, [r5, r2, asl #2]	@ tmp575,* pInPcmBuf
	add	r4, r2, #1	@ tmp496, ch.636,
	add	r2, r4, #1	@ ch.636, tmp496,
	add	ip, r1, #4	@ tmp497, ivtmp.606,
	cmp	r2, sl	@ ch.636, Channels
	str	r6, [r1, #36]	@ tmp575, <variable>.PreSample
	add	r1, ip, #4	@ ivtmp.606, tmp497,
	ldr	r4, [r5, r4, asl #2]	@ tmp579,* pInPcmBuf
	str	r4, [ip, #36]	@ tmp579, <variable>.PreSample
	bne	.L109	@,
.L106:
	ldr	r1, [sp, #40]	@, %sfp
	mov	r2, #0	@ tmp346,
	str	r2, [sp, #24]	@ tmp346, %sfp
	sub	ip, r1, #1	@,,
	str	r2, [sp, #28]	@ tmp346, %sfp
	str	ip, [sp, #40]	@, %sfp
	mov	r1, #1	@,
	str	r1, [sp, #52]	@, %sfp
	str	r2, [r0, #24]	@ tmp346, <variable>.DisContinuity
	b	.L103	@
.L225:
	ldr	r2, [sp, #40]	@, %sfp
	cmp	r2, #0	@,
	ble	.L84	@,
	ldr	r6, [sp, #52]	@, %sfp
	mov	r7, r2	@ InSamps.642,
	ldr	r4, [sp, #24]	@, %sfp
	ldr	r9, [sp, #48]	@, %sfp
	mul	fp, sl, r6	@ tmp348, Channels,
	mov	r6, sl, asl #2	@ D.5074, Channels,
	mul	r5, sl, r4	@ tmp350, Channels,
	add	r8, r9, fp, asl #2	@, ivtmp.640,, tmp348,
	ldr	fp, [sp, #44]	@, %sfp
	add	r5, fp, r5, asl #2	@, ivtmp.671,, tmp350,
.L111:
	cmp	sl, #0	@ Channels,
	ble	.L114	@,
	mov	r0, r8	@ ivtmp.510, ivtmp.640
	mov	ip, #1	@ ch,
	ldr	r3, [r0], #4	@ tmp352,
	cmp	ip, sl	@ ch, Channels
	sub	r2, sl, #1	@ tmp462, Channels,
	mov	r1, r5	@ ivtmp.512, ivtmp.671
	and	r2, r2, ip	@ tmp464, tmp462,
	str	r3, [r1], #4	@ tmp352,
	beq	.L114	@,
	cmp	r2, #0	@ tmp464,
	beq	.L112	@,
	ldr	r2, [r0], #4	@ tmp672,
	mov	ip, #2	@ ch,
	cmp	ip, sl	@ ch, Channels
	str	r2, [r1], #4	@ tmp672,
	beq	.L114	@,
.L112:
	mov	r2, r0	@ tmp466, ivtmp.510
	mov	r3, r1	@ tmp467, ivtmp.512
	ldr	r4, [r2], #4	@ tmp583,
	add	ip, ip, #2	@ ch, ch,
	cmp	ip, sl	@ ch, Channels
	str	r4, [r3], #4	@ tmp583,
	ldr	r4, [r0, #4]	@ tmp587,
	add	r0, r2, #4	@ ivtmp.510, tmp466,
	str	r4, [r1, #4]	@ tmp587,
	add	r1, r3, #4	@ ivtmp.512, tmp467,
	bne	.L112	@,
.L114:
	subs	r7, r7, #1	@ InSamps.642, InSamps.642,
	add	r8, r8, r6	@ ivtmp.640, ivtmp.640, D.5074
	add	r5, r5, r6	@ ivtmp.671, ivtmp.671, D.5074
	bne	.L111	@,
	ldr	r1, [sp, #28]	@, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	add	ip, r1, r0	@,,
	str	ip, [sp, #28]	@, %sfp
	b	.L84	@
.L224:
	ldr	r3, [r0, #24]	@ <variable>.DisContinuity, <variable>.DisContinuity
	ldr	r8, [sp, #40]	@, %sfp
	ldr	sl, [r0, #4]	@ Channels, <variable>.Channels
	cmp	r3, #0	@ <variable>.DisContinuity,
	cmpne	r8, #0	@,,
	movle	r3, #0	@, tmp282
	movgt	r3, #1	@, tmp282
	bgt	.L73	@,
	str	r3, [sp, #36]	@ tmp282, %sfp
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	str	r2, [sp, #24]	@, %sfp
	str	r2, [sp, #28]	@, %sfp
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L74:
	cmp	r3, r8	@ <variable>.AdjustInRate, temp.667
	beq	.L226	@,
	ldr	r1, [sp, #40]	@, %sfp
	cmp	r1, #0	@,
	ble	.L87	@,
	ldr	r4, [r0, #20]	@ prephitmp.618, <variable>.Remainder
	cmp	r8, r4	@ temp.667, prephitmp.618
	ble	.L88	@,
	ldr	r5, [sp, #36]	@, %sfp
	ldr	r9, [sp, #24]	@, %sfp
	ldr	r7, [sp, #48]	@, %sfp
	mul	ip, sl, r5	@ D.4663, Channels,
	ldr	r6, [sp, #44]	@, %sfp
	mul	r2, sl, r9	@ tmp298, Channels,
	movw	r9, #32767	@ tmp410,
	mov	r5, sl, asl #1	@, Channels,
	str	r5, [sp, #16]	@, %sfp
	add	fp, r7, ip, asl #1	@,,, D.4663,
	str	fp, [sp, #12]	@, %sfp
	add	fp, r6, r2, asl #1	@, ivtmp.615,, tmp298,
.L89:
	cmp	sl, #0	@ Channels,
	ble	.L92	@,
	tst	sl, #1	@ Channels,
	ldr	r1, [sp, #12]	@ ivtmp.468, %sfp
	mov	ip, r0	@ ivtmp.476, hLSRC
	mov	r2, fp	@ ivtmp.478, ivtmp.615
	mov	r6, #0	@ ch.616,
	strne	fp, [sp, #20]	@ ivtmp.615, %sfp
	bne	.L93	@,
	ldr	r6, [r0, #32]	@ D.4656, <variable>.IvtSFFactor
	ldr	r3, [sp, #12]	@, %sfp
	mul	ip, r6, r4	@ tmp656, D.4656, prephitmp.618
	ldrsh	r7, [r3, #0]	@ tmp655,
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,ip,r7,ip	@, sum, tmp655, sum
@ 0 "" 2
	rsb	r5, r4, r8	@ tmp660, prephitmp.618, temp.667
	ldr	r1, [r0, #36]	@ tmp659, <variable>.PreSample
	mul	r2, r6, r5	@ tmp661, D.4656, tmp660
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r2,r1,r2	@, y, tmp659, y
@ 0 "" 2
	add	r3, r2, ip	@ tmp664, y, sum
	mov	r2, fp	@ ivtmp.478, ivtmp.615
	mov	r6, #1	@ ch.616,
	add	ip, r0, #4	@ ivtmp.476, hLSRC,
	mov	r7, r3, asl #2	@ x, tmp664,
	mov	r4, r7, asr #31	@ sign, x,
	cmp	r4, r7, asr #15	@ sign, x,
	eorne	r7, r4, r9	@ x, sign, tmp410
	strh	r7, [r2], #2	@ movhi	@ x,
	ldr	r5, [sp, #12]	@, %sfp
	ldr	r4, [r0, #20]	@ prephitmp.618, <variable>.Remainder
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
	add	r1, r5, #2	@ ivtmp.468,,
	str	fp, [sp, #20]	@ ivtmp.615, %sfp
	b	.L93	@
.L91:
	ldr	r7, [r0, #20]	@ prephitmp.618, <variable>.Remainder
	ldr	r4, [r0, #32]	@ D.4656, <variable>.IvtSFFactor
	ldrsh	r1, [r1, #2]	@ tmp300,
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
	mul	r3, r4, r7	@ tmp301, D.4656, prephitmp.618
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r3,r1,r3	@, sum, tmp300, sum
@ 0 "" 2
	rsb	fp, r7, r8	@ tmp303, prephitmp.618, temp.667
	ldr	r1, [ip, #36]	@ tmp302, <variable>.PreSample
	mul	r4, r4, fp	@ tmp305, D.4656, tmp303
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r7,r4,r1,r4	@, y, tmp302, y
@ 0 "" 2
	add	r3, r4, r3	@ tmp306, y, sum
	add	r6, r6, #1	@ ch.616, tmp453,
	add	r1, r5, #2	@ ivtmp.468, tmp454,
	add	ip, ip, #4	@ ivtmp.476, tmp455,
	mov	r3, r3, asl #2	@ x, tmp306,
	mov	r8, r3, asr #31	@ sign, x,
	cmp	r8, r3, asr #15	@ sign, x,
	eorne	r3, r8, r9	@ x, sign, tmp410
	strh	r3, [r2], #2	@ movhi	@ x,
	ldr	r4, [r0, #20]	@ prephitmp.618, <variable>.Remainder
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L93:
	ldr	r5, [r0, #32]	@ D.4656, <variable>.IvtSFFactor
	ldrsh	r7, [r1, #0]	@ tmp518,* ivtmp.468
	mul	r3, r5, r4	@ tmp519, D.4656, prephitmp.618
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r3,r7,r3	@, sum, tmp518, sum
@ 0 "" 2
	rsb	r4, r4, r8	@ tmp524, prephitmp.618, temp.667
	ldr	r7, [ip, #36]	@ tmp523, <variable>.PreSample
	mul	fp, r5, r4	@ tmp525, D.4656, tmp524
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,fp,r7,fp	@, y, tmp523, y
@ 0 "" 2
	add	r5, fp, r3	@ tmp528, y, sum
	add	r6, r6, #1	@ tmp453, ch.616,
	add	ip, ip, #4	@ tmp455, ivtmp.476,
	mov	r3, r5, asl #2	@ x, tmp528,
	add	r5, r1, #2	@ tmp454, ivtmp.468,
	mov	r4, r3, asr #31	@ sign, x,
	cmp	r4, r3, asr #15	@ sign, x,
	eorne	r3, r4, r9	@ x, sign, tmp410
	cmp	r6, sl	@ tmp453, Channels
	strh	r3, [r2], #2	@ movhi	@ x,
	bne	.L91	@,
	ldr	fp, [sp, #20]	@ ivtmp.615, %sfp
	ldr	r4, [r0, #20]	@ prephitmp.618, <variable>.Remainder
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L92:
	ldr	r6, [sp, #28]	@, %sfp
	add	r4, r4, r3	@ prephitmp.618, prephitmp.618, <variable>.AdjustInRate
	ldr	ip, [sp, #24]	@, %sfp
	cmp	r4, r8	@ prephitmp.618, temp.667
	add	r6, r6, #1	@,,
	str	r6, [sp, #28]	@, %sfp
	add	r7, ip, #1	@,,
	str	r7, [sp, #24]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.618, <variable>.Remainder
	ldr	r2, [sp, #16]	@, %sfp
	add	fp, fp, r2	@ ivtmp.615, ivtmp.615,
	blt	.L89	@,
.L88:
	ldr	r1, [sp, #40]	@, %sfp
	rsb	r4, r8, r4	@ prephitmp.619, temp.667, prephitmp.618
	str	r4, [r0, #20]	@ prephitmp.619, <variable>.Remainder
	cmp	r1, #1	@,
	beq	.L87	@,
	ldr	r6, [sp, #36]	@, %sfp
	mov	r5, sl, asl #1	@, Channels,
	ldr	r7, [sp, #48]	@, %sfp
	add	r1, r6, #1	@ tmp312,,
	ldr	r9, [sp, #40]	@, %sfp
	mul	ip, sl, r6	@ tmp314, Channels,
	str	r5, [sp, #32]	@, %sfp
	mla	r2, r1, r5, r7	@, tmp312,,
	str	r9, [sp, #52]	@, %sfp
	movw	r9, #32767	@ tmp401,
	add	r5, r7, ip, asl #1	@,,, tmp314,
	str	r5, [sp, #16]	@, %sfp
	str	r2, [sp, #20]	@, %sfp
.L94:
	cmp	r8, r4	@ temp.667, prephitmp.619
	ble	.L97	@,
	ldr	ip, [sp, #24]	@, %sfp
	ldr	r7, [sp, #44]	@, %sfp
	mul	r5, sl, ip	@ tmp326, Channels,
	add	fp, r7, r5, asl #1	@,,, tmp326,
	str	fp, [sp, #12]	@, %sfp
.L100:
	cmp	sl, #0	@ Channels,
	ble	.L98	@,
	tst	sl, #1	@ Channels,
	ldr	r1, [sp, #12]	@ ivtmp.669, %sfp
	ldr	r2, [sp, #16]	@ ivtmp.443, %sfp
	mov	ip, #0	@ ch.629,
	ldr	r6, [sp, #20]	@ ivtmp.631, %sfp
	bne	.L99	@,
	ldr	r2, [r0, #32]	@ temp.620, <variable>.IvtSFFactor
	ldr	fp, [sp, #20]	@, %sfp
	mul	r3, r2, r4	@ tmp640, temp.620, prephitmp.619
	ldrsh	r6, [fp, #0]	@ tmp639,
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull ip,r3,r6,r3	@, sum.622, tmp639, sum.622
@ 0 "" 2
	rsb	ip, r4, r8	@ tmp644, prephitmp.619, temp.667
	ldr	r8, [sp, #16]	@, %sfp
	mul	r4, r2, ip	@ tmp645, temp.620, tmp644
	ldrsh	r1, [r8, #0]	@ tmp643,
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r6,r4,r1,r4	@, y, tmp643, y
@ 0 "" 2
	add	r7, r4, r3	@ tmp648, y, sum.622
	ldr	r1, [sp, #12]	@ ivtmp.669, %sfp
	mov	ip, #1	@ ch.629,
	mov	r6, r7, asl #2	@ x, tmp648,
	mov	r5, r6, asr #31	@ sign, x,
	cmp	r5, r6, asr #15	@ sign, x,
	eorne	r6, r5, r9	@ x, sign, tmp401
	strh	r6, [r1], #2	@ movhi	@ x,
	ldr	r8, [sp, #16]	@, %sfp
	ldr	fp, [sp, #20]	@, %sfp
	add	r2, r8, #2	@ ivtmp.443,,
	ldr	r4, [r0, #20]	@ prephitmp.619, <variable>.Remainder
	add	r6, fp, #2	@ ivtmp.631,,
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
	b	.L99	@
.L96:
	ldr	r5, [r0, #20]	@ prephitmp.619, <variable>.Remainder
	ldr	r4, [r0, #32]	@ temp.620, <variable>.IvtSFFactor
	ldrsh	r6, [r6, #2]	@,
	mul	r3, r4, r5	@ tmp317, temp.620, prephitmp.619
	str	r6, [sp, #4]	@, %sfp
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r3,r6,r3	@, sum.622,, sum.622
@ 0 "" 2
	ldr	r6, [r0, #16]	@, <variable>.OutRate
	ldrsh	r2, [r2, #2]	@ tmp318,
	rsb	fp, r5, r6	@ tmp319, prephitmp.619,
	mul	r5, r4, fp	@ tmp321, temp.620, tmp319
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r5,r2,r5	@, y, tmp318, y
@ 0 "" 2
	add	r3, r5, r3	@ tmp322, y, sum.622
	add	r6, r8, #2	@ ivtmp.631, tmp447,
	add	ip, ip, #1	@ ch.629, tmp446,
	add	r2, r7, #2	@ ivtmp.443, tmp448,
	mov	r3, r3, asl #2	@ x, tmp322,
	mov	fp, r3, asr #31	@ sign, x,
	cmp	fp, r3, asr #15	@ sign, x,
	eorne	r3, fp, r9	@ x, sign, tmp401
	strh	r3, [r1], #2	@ movhi	@ x,
	ldr	r4, [r0, #20]	@ prephitmp.619, <variable>.Remainder
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L99:
	ldr	r5, [r0, #32]	@ temp.620, <variable>.IvtSFFactor
	ldrsh	r7, [r6, #0]	@ tmp538,* ivtmp.631
	mul	r3, r5, r4	@ tmp539, temp.620, prephitmp.619
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r3,r7,r3	@, sum.622, tmp538, sum.622
@ 0 "" 2
	rsb	r4, r4, r8	@ tmp544, prephitmp.619, temp.667
	ldrsh	fp, [r2, #0]	@ tmp543,* ivtmp.443
	mul	r8, r5, r4	@ tmp545, temp.620, tmp544
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r5,r8,fp,r8	@, y, tmp543, y
@ 0 "" 2
	add	r7, r8, r3	@ tmp548, y, sum.622
	add	ip, ip, #1	@ tmp446, ch.629,
	add	r8, r6, #2	@ tmp447, ivtmp.631,
	mov	r3, r7, asl #2	@ x, tmp548,
	add	r7, r2, #2	@ tmp448, ivtmp.443,
	mov	fp, r3, asr #31	@ sign, x,
	cmp	fp, r3, asr #15	@ sign, x,
	eorne	r3, fp, r9	@ x, sign, tmp401
	cmp	ip, sl	@ tmp446, Channels
	strh	r3, [r1], #2	@ movhi	@ x,
	bne	.L96	@,
	ldr	r4, [r0, #20]	@ prephitmp.619, <variable>.Remainder
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L98:
	ldr	r5, [sp, #28]	@, %sfp
	add	r4, r4, r3	@ prephitmp.619, prephitmp.619, <variable>.AdjustInRate
	ldr	r6, [sp, #24]	@, %sfp
	cmp	r4, r8	@ prephitmp.619, temp.667
	add	fp, r5, #1	@,,
	str	fp, [sp, #28]	@, %sfp
	add	r2, r6, #1	@,,
	str	r2, [sp, #24]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.619, <variable>.Remainder
	ldr	r1, [sp, #12]	@, %sfp
	ldr	ip, [sp, #32]	@, %sfp
	add	fp, r1, ip	@,,
	str	fp, [sp, #12]	@, %sfp
	blt	.L100	@,
.L97:
	ldr	r6, [sp, #52]	@, %sfp
	rsb	r4, r8, r4	@ prephitmp.619, temp.667, prephitmp.619
	sub	r2, r6, #1	@,,
	str	r2, [sp, #52]	@, %sfp
	str	r4, [r0, #20]	@ prephitmp.619, <variable>.Remainder
	cmp	r2, #1	@,
	ldr	ip, [sp, #20]	@, %sfp
	ldr	r5, [sp, #32]	@, %sfp
	ldr	r7, [sp, #16]	@, %sfp
	add	r1, ip, r5	@,,
	str	r1, [sp, #20]	@, %sfp
	add	r6, r7, r5	@,,
	str	r6, [sp, #16]	@, %sfp
	bne	.L94	@,
	ldr	r9, [sp, #36]	@, %sfp
	ldr	r7, [sp, #40]	@, %sfp
	add	r1, r7, r9	@ D.4854,,
	sub	r3, r1, #1	@, D.4854,
	str	r3, [sp, #36]	@, %sfp
.L87:
	cmp	sl, #0	@ Channels,
	ble	.L84	@,
	ldr	r1, [sp, #36]	@, %sfp
	sub	r2, sl, #1	@ tmp437, Channels,
	ldr	r4, [sp, #48]	@, %sfp
	mul	r3, sl, r1	@ tmp328, Channels,
	mov	r1, #1	@ ch.634,
	cmp	r1, sl	@ ch.634, Channels
	and	ip, r2, r1	@ tmp439, tmp437,
	add	r2, r0, #4	@ ivtmp.434, hLSRC,
	add	r3, r4, r3, asl #1	@, ivtmp.430,, tmp328,
	ldrsh	r4, [r3], #2	@ tmp330,
	str	r4, [r0, #36]	@ tmp330, <variable>.PreSample
	beq	.L84	@,
	cmp	ip, #0	@ tmp439,
	beq	.L101	@,
	ldrsh	ip, [r3], #2	@ tmp637,
	mov	r1, #2	@ ch.634,
	cmp	r1, sl	@ ch.634, Channels
	str	ip, [r2, #36]	@ tmp637, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.434, ivtmp.434,
	beq	.L84	@,
.L101:
	mov	r0, r3	@ tmp441, ivtmp.430
	add	r1, r1, #2	@ ch.634, ch.634,
	ldrsh	r4, [r0], #2	@ tmp557,
	add	ip, r2, #4	@ tmp442, ivtmp.434,
	cmp	r1, sl	@ ch.634, Channels
	str	r4, [r2, #36]	@ tmp557, <variable>.PreSample
	add	r2, ip, #4	@ ivtmp.434, tmp442,
	ldrsh	r4, [r3, #2]	@ tmp561,
	add	r3, r0, #2	@ ivtmp.430, tmp441,
	str	r4, [ip, #36]	@ tmp561, <variable>.PreSample
	bne	.L101	@,
	b	.L84	@
.L73:
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
	cmp	r3, r8	@ <variable>.AdjustInRate, temp.667
	moveq	r2, r0	@ ivtmp.495, hLSRC
	moveq	r3, #0	@ ch,
	beq	.L76	@,
	cmp	sl, #0	@ Channels,
	ble	.L78	@,
	ldr	r7, [sp, #48]	@, %sfp
	mov	r2, #1	@ ch.607,
	cmp	r2, sl	@ ch.607, Channels
	sub	r9, sl, #1	@ tmp457, Channels,
	and	ip, r9, r2	@ tmp459, tmp457,
	add	r1, r0, #4	@ ivtmp.507, hLSRC,
	ldrsh	r4, [r7, #0]	@ tmp289,
	str	r4, [r0, #36]	@ tmp289, <variable>.PreSample
	beq	.L78	@,
	cmp	ip, #0	@ tmp459,
	beq	.L217	@,
	ldr	r9, [sp, #48]	@, %sfp
	mov	r2, #2	@ tmp670,
	cmp	r2, sl	@ ch.607, Channels
	ldrsh	fp, [r9, r2]	@ tmp671,
	str	fp, [r1, #36]	@ tmp671, <variable>.PreSample
	add	r1, r1, #4	@ ivtmp.507, ivtmp.507,
	beq	.L78	@,
.L217:
	ldr	r5, [sp, #48]	@ pInPcmBuf, %sfp
.L80:
	mov	r6, r2, asl #1	@ tmp500, ch.607,
	add	ip, r2, #1	@ tmp460, ch.607,
	add	r2, ip, #1	@ ch.607, tmp460,
	add	fp, r1, #4	@ tmp461, ivtmp.507,
	ldrsh	r6, [r5, r6]	@ tmp501,
	mov	r4, ip, asl #1	@ tmp504, tmp460,
	cmp	r2, sl	@ ch.607, Channels
	str	r6, [r1, #36]	@ tmp501, <variable>.PreSample
	add	r1, fp, #4	@ ivtmp.507, tmp461,
	ldrsh	r4, [r5, r4]	@ tmp505,
	str	r4, [fp, #36]	@ tmp505, <variable>.PreSample
	bne	.L80	@,
.L78:
	ldr	r2, [sp, #40]	@, %sfp
	mov	r1, #0	@ tmp290,
	mov	fp, #1	@,
	str	r1, [sp, #24]	@ tmp290, %sfp
	sub	r9, r2, #1	@,,
	str	fp, [sp, #36]	@, %sfp
	str	r9, [sp, #40]	@, %sfp
	str	r1, [sp, #28]	@ tmp290, %sfp
	str	r1, [r0, #24]	@ tmp290, <variable>.DisContinuity
	b	.L74	@
.L76:
	cmp	sl, r3	@ Channels, ch
	mov	r1, r3, asl #1	@ tmp285, ch,
	add	r2, r2, #4	@ ivtmp.495, ivtmp.495,
	add	r3, r3, #1	@ ch, ch,
	ble	.L227	@,
	ldrh	r4, [r2, #32]	@, <variable>.PreSample
	ldr	r5, [sp, #44]	@, %sfp
	strh	r4, [r5, r1]	@ movhi	@,
	b	.L76	@
.L104:
	cmp	sl, #0	@ Channels,
	ble	.L107	@,
	sub	r7, sl, #1	@ tmp488, Channels,
	mov	r3, #1	@ ch.635,
	ldr	r9, [r0, #36]	@ tmp342, <variable>.PreSample
	and	r1, r7, r3	@ tmp490, tmp488,
	ldr	r7, [sp, #44]	@, %sfp
	cmp	r3, sl	@ ch.635, Channels
	add	r2, r0, #4	@ ivtmp.599, hLSRC,
	str	r9, [r7, #0]	@ tmp342,
	beq	.L200	@,
	cmp	r1, #0	@ tmp490,
	beq	.L221	@,
	ldr	r9, [r2, #36]	@ tmp715, <variable>.PreSample
	mov	r3, #2	@ ch.635,
	ldr	r4, [sp, #44]	@, %sfp
	cmp	r3, sl	@ ch.635, Channels
	add	r2, r2, #4	@ ivtmp.599, ivtmp.599,
	str	r9, [r4, #4]	@ tmp715,
	beq	.L200	@,
.L221:
	ldr	r4, [sp, #44]	@ pOutpcmBuf, %sfp
.L108:
	ldr	r5, [r2, #36]	@ tmp567, <variable>.PreSample
	add	r8, r2, #4	@ tmp492, ivtmp.599,
	add	r1, r3, #1	@ tmp491, ch.635,
	add	r2, r8, #4	@ ivtmp.599, tmp492,
	str	r5, [r4, r3, asl #2]	@ tmp567,* pOutpcmBuf
	add	r3, r1, #1	@ ch.635, tmp491,
	ldr	ip, [r8, #36]	@ tmp571, <variable>.PreSample
	cmp	r3, sl	@ ch.635, Channels
	str	ip, [r4, r1, asl #2]	@ tmp571,* pOutpcmBuf
	bne	.L108	@,
.L200:
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
.L107:
	mov	r2, #0	@ tmp343,
	mov	r9, #1	@,
	str	r9, [sp, #24]	@, %sfp
	str	r2, [r0, #24]	@ tmp343, <variable>.DisContinuity
	str	r2, [sp, #52]	@ tmp343, %sfp
	str	r9, [sp, #28]	@, %sfp
	b	.L103	@
.L226:
	ldr	r4, [sp, #36]	@, %sfp
	ldr	r3, [sp, #24]	@, %sfp
	ldr	r8, [sp, #48]	@, %sfp
	mul	r7, sl, r4	@ tmp292, Channels,
	ldr	r0, [sp, #44]	@, %sfp
	mul	r5, sl, r3	@ tmp294, Channels,
	mov	r4, sl, asl #1	@ D.4886, Channels,
	add	r6, r8, r7, asl #1	@, ivtmp.412,, tmp292,
	ldr	r8, [sp, #28]	@ outsampls, %sfp
	ldr	r7, [sp, #40]	@ InSamps, %sfp
	add	r5, r0, r5, asl #1	@, ivtmp.668,, tmp294,
.L82:
	cmp	r7, #0	@ InSamps,
	ble	.L205	@,
	cmp	sl, #0	@ Channels,
	ble	.L86	@,
	sub	r9, sl, #1	@ tmp431, Channels,
	mov	r2, r6	@ ivtmp.639, ivtmp.412
	mov	r1, #1	@ ch.611,
	and	r0, r9, r1	@ tmp433, tmp431,
	ldrh	r9, [r2], #2	@,
	cmp	r1, sl	@ ch.611, Channels
	mov	r3, r5	@ ivtmp.414, ivtmp.668
	strh	r9, [r3], #2	@ movhi	@,
	beq	.L86	@,
	cmp	r0, #0	@ tmp433,
	beq	.L83	@,
	ldrh	r9, [r2], #2	@,
	mov	r1, #2	@ ch.611,
	cmp	r1, sl	@ ch.611, Channels
	strh	r9, [r3], #2	@ movhi	@,
	beq	.L86	@,
.L83:
	mov	ip, r2	@ tmp435, ivtmp.639
	mov	r0, r3	@ tmp436, ivtmp.414
	ldrh	fp, [ip], #2	@,
	add	r1, r1, #2	@ ch.611, ch.611,
	cmp	r1, sl	@ ch.611, Channels
	strh	fp, [r0], #2	@ movhi	@,
	ldrh	r2, [r2, #2]	@,
	strh	r2, [r3, #2]	@ movhi	@,
	add	r2, ip, #2	@ ivtmp.639, tmp435,
	add	r3, r0, #2	@ ivtmp.414, tmp436,
	bne	.L83	@,
.L86:
	add	r8, r8, #1	@ outsampls, outsampls,
	sub	r7, r7, #1	@ InSamps, InSamps,
	add	r6, r6, r4	@ ivtmp.412, ivtmp.412, D.4886
	add	r5, r5, r4	@ ivtmp.668, ivtmp.668, D.4886
	b	.L82	@
.L205:
	str	r8, [sp, #28]	@ outsampls, %sfp
	b	.L84	@
.L227:
	mov	ip, #0	@ tmp287,
	mov	r6, #1	@,
	str	r6, [sp, #24]	@, %sfp
	str	ip, [r0, #24]	@ tmp287, <variable>.DisContinuity
	str	ip, [sp, #36]	@ tmp287, %sfp
	str	r6, [sp, #28]	@, %sfp
	ldr	r3, [r0, #8]	@ <variable>.AdjustInRate, <variable>.AdjustInRate
	ldr	r8, [r0, #16]	@ temp.667, <variable>.OutRate
	b	.L74	@
	.fnend
	.size	LSRC_ProcessFrame, .-LSRC_ProcessFrame
	.align	2
	.global	LSRC_Destroy
	.type	LSRC_Destroy, %function
LSRC_Destroy:
	.fnstart
.LFB167:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ hLSRC, hLSRC
	bxeq	lr	@
	mov	r0, #17	@,
	b	HI_ADSP_FREE	@
	.fnend
	.size	LSRC_Destroy, .-LSRC_Destroy
	.align	2
	.global	LSRC_Create
	.type	LSRC_Create, %function
LSRC_Create:
	.fnstart
.LFB166:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	ip, #:lower16:191999	@ tmp146,
	sub	r5, r1, #1	@ tmp145, inRate,
	movt	ip, #:upper16:191999	@ tmp146,
	cmp	r5, ip	@ tmp145, tmp146
	mov	r7, #0	@ tmp144,
	str	r7, [r0, #0]	@ tmp144,* phLSRC
	mov	r4, r1	@ inRate, inRate
	mov	r5, r0	@ phLSRC, phLSRC
	mov	r6, r2	@ outRate, outRate
	mov	sl, r3	@ BitPerSample, BitPerSample
	ldr	r8, [sp, #32]	@ Channels, Channels
	ldmhifd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	sub	r3, r2, #1	@ tmp147, outRate,
	cmp	r3, ip	@ tmp147, tmp146
	ldmhifd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	mov	r0, r2	@, outRate
	bl	__aeabi_idiv	@
	cmp	r0, #6	@,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	mov	r0, #17	@,
	mov	r1, #76	@,
	bl	HI_ADSP_MALLOC	@
	subs	r9, r0, #0	@ pLinearSrc,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	mov	r1, #76	@,
	bl	__memzero	@
	cmp	r6, #8000	@ outRate,
	beq	.L234	@,
	movw	r0, #11025	@ tmp153,
	cmp	r6, r0	@ outRate, tmp153
	moveq	r7, #1	@ n.728,
	beq	.L234	@,
	movw	r1, #12000	@ tmp154,
	cmp	r6, r1	@ outRate, tmp154
	moveq	r7, #2	@ n.728,
	beq	.L234	@,
	cmp	r6, #16000	@ outRate,
	moveq	r7, #3	@ n.728,
	beq	.L234	@,
	movw	r2, #22050	@ tmp155,
	cmp	r6, r2	@ outRate, tmp155
	moveq	r7, #4	@ n.728,
	beq	.L234	@,
	movw	ip, #24000	@ tmp156,
	cmp	r6, ip	@ outRate, tmp156
	moveq	r7, #5	@ n.728,
	beq	.L234	@,
	cmp	r6, #32000	@ outRate,
	moveq	r7, #6	@ n.728,
	beq	.L234	@,
	movw	lr, #44100	@ tmp157,
	cmp	r6, lr	@ outRate, tmp157
	moveq	r7, #7	@ n.728,
	beq	.L234	@,
	movw	r3, #48000	@ tmp158,
	cmp	r6, r3	@ outRate, tmp158
	moveq	r7, #8	@ n.728,
	beq	.L234	@,
	movw	r0, #:lower16:88200	@ tmp159,
	movt	r0, #:upper16:88200	@ tmp159,
	cmp	r6, r0	@ outRate, tmp159
	moveq	r7, #9	@ n.728,
	beq	.L234	@,
	movw	r1, #:lower16:96000	@ tmp160,
	movt	r1, #:upper16:96000	@ tmp160,
	cmp	r6, r1	@ outRate, tmp160
	moveq	r7, #10	@ n.728,
	beq	.L234	@,
	movw	r2, #:lower16:176400	@ tmp161,
	movt	r2, #:upper16:176400	@ tmp161,
	cmp	r6, r2	@ outRate, tmp161
	moveq	r7, #11	@ n.728,
	beq	.L234	@,
	movw	ip, #:lower16:192000	@ tmp162,
	movt	ip, #:upper16:192000	@ tmp162,
	cmp	r6, ip	@ outRate, tmp162
	beq	.L256	@,
.L246:
	cmp	r8, #0	@ Channels,
	beq	.L247	@,
	mov	r3, #1	@ n,
	cmp	r3, r8	@ n, Channels
	sub	r2, r8, #1	@ tmp167, Channels,
	mov	r0, #0	@ tmp166,
	and	r1, r2, r3	@ tmp169, tmp167,
	str	r0, [r9, #36]	@ tmp166, <variable>.PreSample
	add	r2, r9, #4	@ ivtmp.726, pLinearSrc,
	bcs	.L247	@,
	cmp	r1, #0	@ tmp169,
	beq	.L248	@,
	mov	r3, #2	@ n,
	cmp	r3, r8	@ n, Channels
	str	r0, [r2, #36]	@ tmp166, <variable>.PreSample
	add	r2, r2, #4	@ ivtmp.726, ivtmp.726,
	bcs	.L247	@,
.L248:
	add	r3, r3, #2	@ n, n,
	add	r1, r2, #4	@ tmp171, ivtmp.726,
	cmp	r3, r8	@ n, Channels
	str	r0, [r2, #36]	@ tmp166, <variable>.PreSample
	str	r0, [r1, #36]	@ tmp166, <variable>.PreSample
	add	r2, r1, #4	@ ivtmp.726, tmp171,
	bcc	.L248	@,
.L247:
	str	sl, [r9, #0]	@ BitPerSample, <variable>.BitPerSample
	str	r8, [r9, #4]	@ Channels, <variable>.Channels
	str	r4, [r9, #12]	@ inRate, <variable>.InRate
	str	r6, [r9, #16]	@ outRate, <variable>.OutRate
	str	r4, [r9, #8]	@ inRate, <variable>.AdjustInRate
	str	r9, [r5, #0]	@ pLinearSrc,* phLSRC
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L256:
	mov	r7, #12	@ n.728,
.L234:
	movw	r3, #:lower16:.LANCHOR0	@ tmp163,
	movt	r3, #:upper16:.LANCHOR0	@ tmp163,
	ldr	lr, [r3, r7, asl #2]	@ tmp164, g_s32IvtSfTab
	str	lr, [r9, #32]	@ tmp164, <variable>.IvtSFFactor
	b	.L246	@
	.fnend
	.size	LSRC_Create, .-LSRC_Create
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	g_s32IvtSfTab, %object
	.size	g_s32IvtSfTab, 52
g_s32IvtSfTab:
	.word	134217
	.word	97391
	.word	89478
	.word	67109
	.word	48696
	.word	44739
	.word	33554
	.word	24348
	.word	22369
	.word	12174
	.word	11185
	.word	6087
	.word	5592
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
