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
	.file	"resample.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(resample)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/resampler/.resample.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/resampler/resample.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/resampler/resample.o
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
	.type	cvtShortShort, %function
cvtShortShort:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	ip, [sp, #4]	@ chans, chans
	sub	lr, ip, #2	@ D.6434, chans,
	cmp	r3, #0	@ bInterleaved,
	cmpeq	ip, #2	@, chans,
	clz	lr, lr	@ D.6434, D.6434
	mov	lr, lr, lsr #5	@ D.6434, D.6434,
	bne	.L2	@,
	add	r2, r1, r2, lsl #1	@ src_R, s, n,
	cmp	r1, r2	@ s, src_R
	beq	.L8	@,
	add	r0, r0, #4	@ ivtmp.123, d,
	sub	ip, r2, #2	@ ivtmp.132, src_R,
	mov	r3, r1	@ s, s
.L4:
	ldrh	lr, [r3], #2	@ D.6436, MEM[base: s_51, offset: 0B]
	add	r0, r0, #4	@ ivtmp.123, ivtmp.123,
	cmp	r2, r3	@ src_R, s
	strh	lr, [r0, #-8]	@ movhi	@ D.6436, MEM[base: _2, offset: 4294967292B]
	ldrh	lr, [ip, #2]!	@ D.6436, MEM[base: _71, offset: 0B]
	strh	lr, [r0, #-6]	@ movhi	@ D.6436, MEM[base: _2, offset: 4294967294B]
	bne	.L4	@,
	add	r0, r1, #2	@ D.6438, s,
	rsb	r0, r0, r2	@ D.6433, D.6438, src_R
	mov	r0, r0, lsr #1	@ D.6437, D.6433,
	add	r0, r0, #1	@ D.6437, D.6437,
	mov	r0, r0, asl #2	@ D.6437, D.6437,
	mov	r0, r0, asr #1	@ D.6439, D.6437,
	ldr	pc, [sp], #4	@
.L2:
	cmp	lr, #0	@ D.6434,
	movne	r2, r2, asl #1	@ n, n,
	add	r2, r1, r2, lsl #1	@ srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L8	@,
	mov	r3, r1	@ s, s
.L6:
	ldrh	ip, [r3], #2	@ D.6436, MEM[base: s_53, offset: 0B]
	cmp	r2, r3	@ srcEnd, s
	strh	ip, [r0], #2	@ movhi	@ D.6436, MEM[base: d_50, offset: 0B]
	bne	.L6	@,
	add	r0, r1, #2	@ D.6438, s,
	rsb	r0, r0, r2	@ D.6433, D.6438, srcEnd
	bic	r0, r0, #1	@ D.6437, D.6433,
	add	r0, r0, #2	@ D.6437, D.6437,
	mov	r0, r0, asr #1	@ D.6439, D.6437,
	ldr	pc, [sp], #4	@
.L8:
	mov	r0, #0	@ D.6439,
	ldr	pc, [sp], #4	@
	.fnend
	.size	cvtShortShort, .-cvtShortShort
	.align	2
	.type	cvt2int, %function
cvt2int:
	.fnstart
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	ip, [sp, #12]	@ chans, chans
	ldr	lr, [sp, #8]	@ bInterleaved, bInterleaved
	sub	r4, ip, #2	@ D.6511, chans,
	clz	r4, r4	@ D.6511, D.6511
	cmp	lr, #0	@ bInterleaved,
	cmpeq	ip, #2	@, chans,
	mov	r4, r4, lsr #5	@ D.6511, D.6511,
	bne	.L17	@,
	cmp	r3, #16	@ bitdepth,
	beq	.L38	@,
	add	r2, r1, r2, lsl #2	@ src_R, s, n,
	cmp	r1, r2	@ s, src_R
	beq	.L29	@,
	add	r0, r0, #8	@ ivtmp.176, d,
	sub	ip, r2, #4	@ ivtmp.185, src_R,
	mov	r3, r1	@ s, s
.L21:
	ldr	lr, [r3], #4	@ D.6513, MEM[base: s_93, offset: 0B]
	add	r0, r0, #8	@ ivtmp.176, ivtmp.176,
	cmp	r2, r3	@ src_R, s
	str	lr, [r0, #-16]	@ D.6513, MEM[base: _136, offset: 4294967288B]
	ldr	lr, [ip, #4]!	@ D.6513, MEM[base: _137, offset: 0B]
	str	lr, [r0, #-12]	@ D.6513, MEM[base: _136, offset: 4294967292B]
	bne	.L21	@,
	add	r0, r1, #4	@ D.6510, s,
	rsb	r0, r0, r2	@ D.6508, D.6510, src_R
	mov	r0, r0, lsr #2	@ D.6509, D.6508,
	add	r0, r0, #1	@ D.6509, D.6509,
	mov	r0, r0, asl #3	@ D.6509, D.6509,
	mov	r0, r0, asr #2	@ D.6513, D.6509,
	ldmfd	sp!, {r4, pc}	@
.L17:
	cmp	r4, #0	@ D.6511,
	movne	r2, r2, asl #1	@ n, n,
	cmp	r3, #16	@ bitdepth,
	beq	.L39	@,
	add	r2, r1, r2, lsl #2	@ srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L29	@,
	mov	r3, r1	@ s, s
.L25:
	ldr	ip, [r3], #4	@ D.6513, MEM[base: s_96, offset: 0B]
	cmp	r2, r3	@ srcEnd, s
	str	ip, [r0], #4	@ D.6513, MEM[base: d_90, offset: 0B]
	bne	.L25	@,
	add	r0, r1, #4	@ D.6510, s,
	rsb	r0, r0, r2	@ D.6508, D.6510, srcEnd
	bic	r0, r0, #3	@ D.6509, D.6508,
	add	r0, r0, #4	@ D.6509, D.6509,
	mov	r0, r0, asr #2	@ D.6513, D.6509,
	ldmfd	sp!, {r4, pc}	@
.L39:
	add	r2, r1, r2, lsl #1	@ srcEnd, s, n,
	cmp	r1, r2	@ s, srcEnd
	beq	.L29	@,
	mov	ip, r1	@ ivtmp.198, s
.L24:
	ldrsh	r3, [ip], #2	@ D.6513, MEM[base: _36, offset: 0B]
	cmp	r2, ip	@ srcEnd, ivtmp.198
	mov	r3, r3, asl #16	@ D.6513, D.6513,
	str	r3, [r0], #4	@ D.6513, MEM[base: d_89, offset: 0B]
	bne	.L24	@,
	add	r0, r1, #2	@ D.6510, s,
	rsb	r2, r0, r2	@ D.6508, D.6510, srcEnd
	mov	r0, r2, lsr #1	@ D.6509, D.6508,
	add	r0, r0, #1	@ D.6509, D.6509,
	sbfx	r0, r0, #0, #30	@ D.6513, D.6509,,
	ldmfd	sp!, {r4, pc}	@
.L38:
	add	r2, r1, r2, lsl #1	@ src_R, s, n,
	cmp	r1, r2	@ s, src_R
	beq	.L29	@,
	add	r0, r0, #8	@ ivtmp.158, d,
	sub	lr, r2, #2	@ ivtmp.167, src_R,
	mov	ip, r1	@ s, s
.L20:
	ldrsh	r3, [ip], #2	@ D.6513, MEM[base: s_91, offset: 0B]
	add	r0, r0, #8	@ ivtmp.158, ivtmp.158,
	cmp	r2, ip	@ src_R, s
	mov	r3, r3, asl #16	@ D.6513, D.6513,
	str	r3, [r0, #-16]	@ D.6513, MEM[base: _129, offset: 4294967288B]
	ldrsh	r3, [lr, #2]!	@ D.6513, MEM[base: _130, offset: 0B]
	mov	r3, r3, asl #16	@ D.6513, D.6513,
	str	r3, [r0, #-12]	@ D.6513, MEM[base: _129, offset: 4294967292B]
	bne	.L20	@,
	add	r0, r1, #2	@ D.6510, s,
	rsb	r2, r0, r2	@ D.6508, D.6510, src_R
	mov	r0, r2, lsr #1	@ D.6509, D.6508,
	add	r0, r0, #1	@ D.6509, D.6509,
	mov	r0, r0, asl #3	@ D.6509, D.6509,
	mov	r0, r0, asr #2	@ D.6513, D.6509,
	ldmfd	sp!, {r4, pc}	@
.L29:
	mov	r0, #0	@ D.6513,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	cvt2int, .-cvt2int
	.align	2
	.type	ResamplerStereoProcess24, %function
ResamplerStereoProcess24:
	.fnstart
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r6, r0	@ inst, inst
	ldr	r4, [r0, #40]	@ s_2->bitwidth, s_2->bitwidth
	ldr	lr, [sp, #72]	@ bInterleaved, bInterleaved
	mov	ip, #2	@ tmp211,
	ldr	r7, [r6, #72]	@ nextphase, s_2->nextphase
	mov	r9, r3	@ outbuf, outbuf
	ldr	r5, [r6, #28]	@ phase, s_2->phase
	str	r0, [sp, #24]	@ inst, %sfp
	str	r3, [sp, #28]	@ outbuf, %sfp
	mov	r3, r4	@, s_2->bitwidth
	ldr	r0, [r0, #56]	@ s_2->pcmbuf32, s_2->pcmbuf32
	ldr	r4, [r6, #20]	@ nwing, s_2->nwing
	str	lr, [sp]	@ bInterleaved,
	str	ip, [sp, #4]	@ tmp211,
	str	r7, [sp, #12]	@ nextphase, %sfp
	bl	cvt2int	@
	sub	r2, r4, #1	@ D.6580, nwing,
	ldr	r3, [r6, #56]	@ s_2->pcmbuf32, s_2->pcmbuf32
	ldr	r8, [r6, #32]	@ s_2->offset, s_2->offset
	sub	r3, r3, r2, asl #3	@ pcmptr32, s_2->pcmbuf32, D.6580,
	mov	r2, r6	@ inst, inst
	ldr	fp, [r2, #68]	@ D.6583, s_2->filter
	add	r8, r3, r8, lsl #2	@ pcmptr32, pcmptr32, s_2->offset,
	ldr	r7, [r6, #64]	@ rwingptr, s_2->rwingptr
	ldr	r6, [r6, #60]	@ lwingptr, s_2->lwingptr
	mov	r2, r0, asl #2	@ D.6582,,
	str	r2, [sp, #20]	@ D.6582, %sfp
	add	r2, r3, r2	@ pcmend32, pcmptr32, D.6582
	str	r2, [sp, #16]	@ pcmend32, %sfp
	cmp	r2, r8	@ pcmend32, pcmptr32
	bls	.L49	@,
	add	r9, r9, #8	@ ivtmp.251, outbuf,
.L48:
	cmp	r4, #0	@ nwing,
	ble	.L50	@,
	mov	lr, #0	@ i,
	sub	r1, r8, #20	@ ivtmp.226, pcmptr32,
	add	r2, r8, #16	@ ivtmp.228, pcmptr32,
	mov	r10, lr	@ acc1, i
	mov	r3, lr	@ acc1, i
	str	r5, [sp, #8]	@ phase, %sfp
.L43:
	ldr	ip, [r7], #4	@ cx, MEM[base: rwingptr_67, offset: 4294967292B]
	ldr	r0, [r6], #4	@ cy, MEM[base: lwingptr_70, offset: 4294967292B]
	ldr	r5, [r1, #16]	@ tmp300, MEM[base: _173, offset: 16B]
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r3, r5, ip, r3	@ acc1, tmp300, cx, acc1
@ 0 "" 2
	ldr	r5, [r2, #-16]	@ tmp301, MEM[base: _169, offset: 4294967280B]
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r10, r5, r0, r10	@ acc0, tmp301, cy, acc1
@ 0 "" 2
	ldr	r5, [r1, #12]	@ tmp302, MEM[base: _173, offset: 12B]
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r10, r5, ip, r10	@ acc0, tmp302, cx, acc0
@ 0 "" 2
	ldr	r5, [r2, #-12]	@ tmp303, MEM[base: _169, offset: 4294967284B]
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r3, r5, r0, r3	@ acc1, tmp303, cy, acc1
@ 0 "" 2
	ldr	r5, [r1, #8]	@ tmp304, MEM[base: _173, offset: 8B]
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r3, r5, ip, r3	@ acc1, tmp304, cx, acc1
@ 0 "" 2
	ldr	r5, [r2, #-8]	@ tmp305, MEM[base: _169, offset: 4294967288B]
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r10, r5, r0, r10	@ acc0, tmp305, cy, acc0
@ 0 "" 2
	ldr	r5, [r1, #4]	@ tmp306, MEM[base: _173, offset: 4B]
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r10, r5, ip, r10	@ acc1, tmp306, cx, acc0
@ 0 "" 2
	ldr	ip, [r2, #-4]	@ MEM[base: _169, offset: 4294967292B], MEM[base: _169, offset: 4294967292B]
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r3, ip, r0, r3	@ acc1, MEM[base: _169, offset: 4294967292B], cy, acc1
@ 0 "" 2
	add	lr, lr, #2	@ i, i,
	sub	r1, r1, #16	@ ivtmp.226, ivtmp.226,
	cmp	r4, lr	@ nwing, i
	add	r2, r2, #16	@ ivtmp.228, ivtmp.228,
	bgt	.L43	@,
	add	r10, r10, #64	@ D.6580, acc1,
	ldr	r5, [sp, #8]	@ phase, %sfp
	mov	r2, r10, asr #31	@ sign, D.6580,
	mov	r1, r10, asr #7	@ acc0, D.6580,
	cmp	r2, r10, asr #30	@ sign, D.6580,
	beq	.L54	@,
	movw	r1, #65535	@ acc0,
	add	r3, r3, #64	@ D.6580, acc1,
	movt	r1, 127	@ acc0,
	eor	r1, r1, r2	@ acc0, acc0, sign
	mov	r0, r3, asr #31	@ D.6580, D.6580,
	mov	r2, r3, asr #7	@ D.6580, D.6580,
	mov	r1, r1, asl #8	@ D.6580, acc0,
	mov	r3, r3, asr #30	@ D.6580, D.6580,
.L45:
	cmp	r0, r3	@ D.6580, D.6580
	str	r1, [r9, #-8]	@ D.6580, MEM[base: outbuf_181, offset: 4294967288B]
	biceq	r2, r2, #-16777216	@ acc1, D.6580,
	mov	r3, r9	@ outbuf, ivtmp.251
	movwne	r2, #65535	@ acc1,
	add	r9, r9, #8	@ ivtmp.251, ivtmp.251,
	movtne	r2, 127	@ acc1,
	eorne	r2, r2, r0	@ acc1, acc1, D.6580
	mov	r2, r2, asl #8	@ D.6580, acc1,
	str	r2, [r9, #-12]	@ D.6580, MEM[base: outbuf_181, offset: 4294967292B]
	ldr	r2, [sp, #12]	@ nextphase, %sfp
	ldr	r5, [r2, r5, asl #2]	@ phase, *_117
	ubfx	r6, r5, #8, #12	@ D.6580, phase,,
	mov	r7, r5, lsr #20	@ D.6586, phase,
	uxtb	r2, r5	@ pcmstep, phase
	mul	r6, r6, r4	@ D.6580, D.6580, nwing
	add	r8, r8, r2, lsl #2	@ pcmptr32, pcmptr32, pcmstep,
	mul	r7, r7, r4	@ D.6580, D.6586, nwing
	ldr	r2, [sp, #16]	@ pcmend32, %sfp
	mov	r5, r5, asr #20	@ phase, phase,
	cmp	r2, r8	@ pcmend32, pcmptr32
	add	r6, fp, r6, lsl #1	@ lwingptr, D.6583, D.6580,
	add	r7, fp, r7, lsl #1	@ rwingptr, D.6583, D.6580,
	bhi	.L48	@,
	ldr	r2, [sp, #28]	@ outbuf, %sfp
	rsb	r3, r2, r3	@ D.6580, outbuf, outbuf
	mov	r3, r3, asr #2	@ D.6580, D.6580,
	add	r3, r3, r3, lsr #31	@ tmp255, D.6580, D.6580,
	mov	r4, r3, asr #1	@ D.6587, tmp255,
.L41:
	ldr	ip, [sp, #24]	@ inst, %sfp
	mov	r3, #0	@ tmp257,
	ldr	r1, [sp, #20]	@ D.6582, %sfp
	ldr	r2, [ip, #24]	@ s_2->nhist, s_2->nhist
	ldr	r0, [ip, #52]	@ D.6579, s_2->histbuf32
	str	r5, [ip, #28]	@ phase, s_2->phase
	add	r1, r0, r1	@, D.6579, D.6582
	str	r7, [ip, #64]	@ rwingptr, s_2->rwingptr
	str	r6, [ip, #60]	@ lwingptr, s_2->lwingptr
	mov	r2, r2, asl #2	@, s_2->nhist,
	str	r3, [ip, #32]	@ tmp257, s_2->offset
	bl	memmove	@
	mov	r0, r4	@, D.6587
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L54:
	add	r3, r3, #64	@ D.6580, acc1,
	mov	r1, r1, asl #8	@ D.6580, acc0,
	mov	r2, r3, asr #7	@ D.6580, D.6580,
	mov	r0, r3, asr #31	@ D.6580, D.6580,
	mov	r3, r3, asr #30	@ D.6580, D.6580,
	b	.L45	@
.L50:
	mov	r3, #0	@ D.6580,
	mov	r0, r3	@ D.6580, D.6580
	mov	r2, r3	@ D.6580, D.6580
	mov	r1, r3	@ D.6580, D.6580
	b	.L45	@
.L49:
	mov	r4, #0	@ D.6587,
	b	.L41	@
	.fnend
	.size	ResamplerStereoProcess24, .-ResamplerStereoProcess24
	.align	2
	.type	ResamplerMonoProcess24, %function
ResamplerMonoProcess24:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0	@ inst, inst
	ldr	lr, [r6, #28]	@ phase, s_21->phase
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r5, [r6, #20]	@ nwing, s_21->nwing
	mov	ip, #1	@ tmp221,
	str	r3, [sp, #28]	@ outbuf, %sfp
	mov	r4, r3	@ outbuf, outbuf
	str	lr, [sp, #8]	@ phase, %sfp
	ldr	lr, [r6, #72]	@ nextphase, s_21->nextphase
	ldr	r3, [r0, #40]	@ s_21->bitwidth, s_21->bitwidth
	ldr	r0, [r0, #56]	@ s_21->pcmbuf32, s_21->pcmbuf32
	str	ip, [sp, #4]	@ tmp221,
	str	ip, [sp]	@ tmp221,
	str	lr, [sp, #20]	@ nextphase, %sfp
	bl	cvt2int	@
	mov	r2, r5, asl #2	@ tmp224, nwing,
	ldr	r3, [r6, #56]	@ s_21->pcmbuf32, s_21->pcmbuf32
	ldr	r9, [r6, #32]	@ s_21->offset, s_21->offset
	rsb	r2, r2, #4	@ D.6631, tmp224,
	add	r3, r3, r2	@ pcmptr32, s_21->pcmbuf32, D.6631
	ldr	r7, [r6, #64]	@ rwingptr, s_21->rwingptr
	ldr	r8, [r6, #60]	@ lwingptr, s_21->lwingptr
	add	r9, r3, r9, lsl #2	@ yptr32, pcmptr32, s_21->offset,
	mov	r2, r0, asl #2	@ D.6632,,
	str	r2, [sp, #24]	@ D.6632, %sfp
	add	r3, r3, r2	@ pcmend32, pcmptr32, D.6632
	str	r3, [sp, #16]	@ pcmend32, %sfp
	cmp	r3, r9	@ pcmend32, yptr32
	bls	.L73	@,
	add	r10, r4, #4	@ ivtmp.283, outbuf,
	mov	r3, r4	@ outbuf, outbuf
	mov	fp, r4	@ ivtmp.285, outbuf
.L71:
	cmp	r5, #0	@ nwing,
	ble	.L57	@,
	mov	ip, #0	@ i,
	sub	r0, r9, #12	@ ivtmp.261, yptr32,
	add	r1, r9, #8	@ ivtmp.263, yptr32,
	mov	r3, ip	@ acc1, i
	mov	r2, ip	@ acc1, i
	str	fp, [sp, #12]	@ ivtmp.285, %sfp
.L58:
	ldr	fp, [r7], #4	@ cx, MEM[base: rwingptr_48, offset: 4294967292B]
	ldr	r4, [r8], #4	@ cy, MEM[base: lwingptr_50, offset: 4294967292B]
	ldr	lr, [r0, #8]	@ tmp296, MEM[base: _134, offset: 8B]
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r2, lr, fp, r2	@ acc0, tmp296, cx, acc1
@ 0 "" 2
	ldr	lr, [r1, #-8]	@ tmp297, MEM[base: _135, offset: 4294967288B]
#APP
@ 665 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawb r3, lr, r4, r3	@ acc1, tmp297, cy, acc1
@ 0 "" 2
	ldr	lr, [r0, #4]	@ tmp298, MEM[base: _134, offset: 4B]
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r2, lr, fp, r2	@ acc1, tmp298, cx, acc0
@ 0 "" 2
	ldr	fp, [r1, #-4]	@ MEM[base: _135, offset: 4294967292B], MEM[base: _135, offset: 4294967292B]
#APP
@ 655 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlawt r3, fp, r4, r3	@ acc1, MEM[base: _135, offset: 4294967292B], cy, acc1
@ 0 "" 2
	add	ip, ip, #2	@ i, i,
	sub	r0, r0, #8	@ ivtmp.261, ivtmp.261,
	cmp	r5, ip	@ nwing, i
	add	r1, r1, #8	@ ivtmp.263, ivtmp.263,
	bgt	.L58	@,
	ldr	r1, [r6, #40]	@ D.6630, s_21->bitwidth
	add	r3, r3, r2	@ acc0, acc1, acc1
	ldr	fp, [sp, #12]	@ ivtmp.285, %sfp
	cmp	r1, #16	@ D.6630,
	beq	.L81	@,
	cmp	r1, #18	@ D.6630,
	beq	.L82	@,
.L63:
	cmp	r1, #20	@ D.6630,
	beq	.L83	@,
	add	r3, r3, #64	@ acc0, acc0,
	mov	r1, r3, asr #31	@ sign, acc0,
	mov	r2, r3, asr #7	@ acc0, acc0,
	cmp	r1, r3, asr #30	@ sign, acc0,
	biceq	r3, r2, #-16777216	@ acc0, acc0,
	movwne	r3, #65535	@ acc0,
	movtne	r3, 127	@ acc0,
	eorne	r3, r3, r1	@ acc0, acc0, sign
	mov	r1, r10	@ outbuf, ivtmp.283
.L79:
	str	r3, [fp]	@ acc0,* ivtmp.285
.L62:
	ldr	r2, [sp, #8]	@ phase, %sfp
	add	r10, r10, #4	@ ivtmp.283, ivtmp.283,
	ldr	r3, [sp, #20]	@ nextphase, %sfp
	add	fp, fp, #4	@ ivtmp.285, ivtmp.285,
	ldr	r3, [r3, r2, asl #2]	@ phase, *_96
	ldr	r2, [r6, #68]	@ D.6633, s_21->filter
	ubfx	r8, r3, #8, #12	@ D.6630, phase,,
	ubfx	r0, r3, #1, #7	@ pcmstep, phase,,
	mov	r7, r3, lsr #20	@ D.6634, phase,
	mov	r3, r3, asr #20	@ phase, phase,
	mul	r8, r5, r8	@ D.6630, nwing, D.6630
	str	r3, [sp, #8]	@ phase, %sfp
	mul	r3, r5, r7	@ D.6630, nwing, D.6634
	add	r9, r9, r0, lsl #2	@ yptr32, yptr32, pcmstep,
	ldr	r0, [sp, #16]	@ pcmend32, %sfp
	cmp	r0, r9	@ pcmend32, yptr32
	add	r8, r2, r8, lsl #1	@ lwingptr, D.6633, D.6630,
	add	r7, r2, r3, lsl #1	@ rwingptr, D.6633, D.6630,
	bhi	.L71	@,
	ldr	r3, [sp, #28]	@ outbuf, %sfp
	rsb	r1, r3, r1	@ D.6630, outbuf, outbuf
	mov	r4, r1, asr #2	@ D.6630, D.6630,
.L56:
	ldr	r3, [sp, #16]	@ pcmend32, %sfp
	ldr	r1, [sp, #8]	@ phase, %sfp
	rsb	r3, r3, r9	@ D.6630, pcmend32, yptr32
	ldr	r2, [r6, #24]	@ s_21->nhist, s_21->nhist
	ldr	r0, [r6, #52]	@ D.6629, s_21->histbuf32
	mov	r3, r3, asr #2	@ D.6630, D.6630,
	str	r3, [r6, #32]	@ D.6630, s_21->offset
	ldr	r3, [sp, #24]	@ D.6632, %sfp
	mov	r2, r2, asl #2	@, s_21->nhist,
	str	r1, [r6, #28]	@ phase, s_21->phase
	str	r7, [r6, #64]	@ rwingptr, s_21->rwingptr
	add	r1, r0, r3	@, D.6629, D.6632
	str	r8, [r6, #60]	@ lwingptr, s_21->lwingptr
	bl	memmove	@
	mov	r0, r4	@, D.6630
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L81:
	add	r3, r3, #16384	@ D.6630, acc0,
	mov	r1, r10	@ outbuf, ivtmp.283
	mov	r2, r3, asr #31	@ sign, D.6630,
	mov	r0, r3, asr #15	@ x, D.6630,
	cmp	r2, r3, asr #30	@ sign, D.6630,
	eorne	r3, r2, #32512	@ x, sign,
	sxtheq	r3, r0	@ D.6630, x
	eorne	r3, r3, #255	@ x, x,
	sxthne	r3, r3	@ D.6630, x
	b	.L79	@
.L82:
	add	r3, r3, #4096	@ D.6630, acc0,
	mov	r1, r3, asr #31	@ sign, D.6630,
	mov	r2, r3, asr #13	@ acc0, D.6630,
	cmp	r1, r3, asr #30	@ sign, D.6630,
	beq	.L64	@,
	movw	r3, #65535	@ acc0,
	movt	r3, 1	@ acc0,
	eor	r3, r3, r1	@ acc0, acc0, sign
.L68:
	str	r3, [fp]	@ acc0,* ivtmp.285
	mov	r1, r10	@ outbuf, ivtmp.283
	b	.L62	@
.L83:
	add	r3, r3, #1024	@ D.6630, acc0,
	mov	r1, r3, asr #31	@ sign, D.6630,
	mov	r2, r3, asr #11	@ acc0, D.6630,
	cmp	r1, r3, asr #30	@ sign, D.6630,
	ubfxeq	r3, r2, #0, #20	@ acc0, acc0,,
	movwne	r3, #65535	@ acc0,
	movtne	r3, 7	@ acc0,
	eorne	r3, r3, r1	@ acc0, acc0, sign
	b	.L68	@
.L57:
	ldr	r1, [r6, #40]	@ D.6630, s_21->bitwidth
	cmp	r1, #16	@ D.6630,
	beq	.L72	@,
	cmp	r1, #18	@ D.6630,
	movne	r3, #0	@ acc0,
	bne	.L63	@,
	mov	r2, #0	@ acc0,
.L64:
	ubfx	r3, r2, #0, #18	@ acc0, acc0,,
	b	.L68	@
.L73:
	mov	r4, #0	@ D.6630,
	b	.L56	@
.L72:
	mov	r1, r10	@ outbuf, ivtmp.283
	mov	r3, #0	@ D.6630,
	b	.L79	@
	.fnend
	.size	ResamplerMonoProcess24, .-ResamplerMonoProcess24
	.global	__aeabi_idiv
	.align	2
	.global	ResampleConfig
	.type	ResampleConfig, %function
ResampleConfig:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2	@ inrate, outrate
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r1	@ inrate, inrate
	mov	r8, r2	@ outrate, outrate
	mov	r7, r0	@ s, s
	beq	.L97	@,
	mov	r3, r2	@ outrate, outrate
	mov	r4, r1	@ inrate, inrate
.L88:
	cmp	r4, r3	@ inrate, outrate
	rsbgt	r4, r3, r4	@ inrate, outrate, inrate
	rsble	r3, r4, r3	@ outrate, inrate, outrate
	cmp	r3, r4	@ outrate, inrate
	bne	.L88	@,
.L85:
	mov	r1, r4	@, inrate
	mov	r0, r8	@, outrate
	bl	__aeabi_idiv	@
	mov	r1, r4	@, inrate
	mov	r9, r0	@ up,
	mov	r0, r5	@, inrate
	bl	__aeabi_idiv	@
	cmp	r9, #1280	@ up,
	mov	r10, r0	@ dn,
	bgt	.L100	@,
	add	r0, r0, r9	@ D.6654, dn, up
	mov	r1, r9	@, up
	sub	r0, r0, #1	@, D.6654,
	ldr	fp, [r7, #16]	@ D.6654, s_11(D)->nchans
	bl	__aeabi_idiv	@
	mul	r0, r0, fp	@ D.6654,, D.6654
	cmp	r0, #255	@ D.6654,
	bgt	.L100	@,
	cmp	r5, #0	@ inrate,
	add	r4, r5, #3	@ tmp179, inrate,
	add	r2, r8, #3	@ tmp182, outrate,
	add	r6, r5, r5, lsr #31	@ tmp173, inrate, inrate,
	movge	r4, r5	@ inrate, inrate
	cmp	r8, #0	@ outrate,
	add	r0, r8, r8, lsr #31	@ tmp176, outrate, outrate,
	ldr	ip, .L110	@ srcinfoptr,
	movge	r2, r8	@ outrate, outrate
	mov	r4, r4, asr #2	@ D.6654, inrate,
	mov	r2, r2, asr #2	@ D.6654, outrate,
	mov	r6, r6, asr #1	@ D.6654, tmp173,
	mov	r0, r0, asr #1	@ D.6654, tmp176,
	mov	lr, #0	@ i,
	b	.L94	@
.L90:
	cmp	r3, r6	@ D.6654, D.6654
	beq	.L108	@,
	cmp	r3, r4	@ D.6654, D.6654
	beq	.L109	@,
.L93:
	add	lr, lr, #1	@ i, i,
	add	ip, ip, #24	@ srcinfoptr, srcinfoptr,
	cmp	lr, #40	@ i,
	beq	.L100	@,
.L94:
	ldr	r3, [ip]	@ D.6654, MEM[base: srcinfoptr_81, offset: 0B]
	cmp	r3, r5	@ D.6654, inrate
	bne	.L90	@,
	ldr	r1, [ip, #4]	@ MEM[base: srcinfoptr_81, offset: 4B], MEM[base: srcinfoptr_81, offset: 4B]
	cmp	r1, r8	@ MEM[base: srcinfoptr_81, offset: 4B], outrate
	bne	.L90	@,
.L91:
	cmp	lr, #40	@ i,
	beq	.L100	@,
	ldr	r1, [ip, #20]	@ D.6655, srcinfoptr_82->filter
	mov	r4, #0	@ tmp188,
	ldr	lr, [ip, #12]	@ nwing, srcinfoptr_82->nwing
	ldr	r3, [r7, #40]	@ D.6654, s_11(D)->bitwidth
	str	r1, [r7, #68]	@ D.6655, s_11(D)->filter
	ldr	r2, [ip, #16]	@ D.6656, srcinfoptr_82->nextphase
	mov	r0, lr, asl #1	@ ntaps, nwing,
	cmp	r3, #16	@ D.6654,
	str	r4, [r7, #36]	@ tmp188, s_11(D)->isCloned
	mul	fp, r0, fp	@ nhist, ntaps, D.6654
	str	r2, [r7, #72]	@ D.6656, s_11(D)->nextphase
	beq	.L107	@,
	sub	r2, r3, #18	@ D.6654, D.6654,
	bics	r2, r2, #2	@ tmp217, D.6654,
	moveq	r2, #1	@ tmp195,
	movne	r2, #0	@ tmp195,
	cmp	r3, #24	@ D.6654,
	movne	r3, r2	@, tmp200, tmp195
	orreq	r3, r2, #1	@,, tmp200, tmp195
	cmp	r3, #0	@ tmp200,
	bne	.L107	@,
.L96:
	sub	r3, r9, #1	@ D.6654, up,
	mov	r2, #0	@ tmp204,
	str	r5, [r7, #8]	@ inrate, s_11(D)->inrate
	mov	r0, r2	@ D.6653, tmp204
	mul	r3, r3, lr	@ D.6654, D.6654, nwing
	str	r8, [r7, #12]	@ outrate, s_11(D)->outrate
	stmia	r7, {r9, r10}	@ s,,
	str	lr, [r7, #20]	@ nwing, s_11(D)->nwing
	str	fp, [r7, #24]	@ nhist, s_11(D)->nhist
	str	r1, [r7, #64]	@ D.6655, s_11(D)->rwingptr
	add	r3, r1, r3, lsl #1	@ D.6660, D.6655, D.6654,
	str	r2, [r7, #28]	@ tmp204, s_11(D)->phase
	str	r3, [r7, #60]	@ D.6660, s_11(D)->lwingptr
	str	r2, [r7, #32]	@ tmp204, s_11(D)->offset
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L108:
	ldr	r1, [ip, #4]	@ MEM[base: srcinfoptr_81, offset: 4B], MEM[base: srcinfoptr_81, offset: 4B]
	cmp	r1, r0	@ MEM[base: srcinfoptr_81, offset: 4B], D.6654
	beq	.L91	@,
	cmp	r3, r4	@ D.6654, D.6654
	bne	.L93	@,
.L109:
	ldr	r3, [ip, #4]	@ MEM[base: srcinfoptr_81, offset: 4B], MEM[base: srcinfoptr_81, offset: 4B]
	cmp	r3, r2	@ MEM[base: srcinfoptr_81, offset: 4B], D.6654
	beq	.L91	@,
	add	lr, lr, #1	@ i, i,
	add	ip, ip, #24	@ srcinfoptr, srcinfoptr,
	cmp	lr, #40	@ i,
	bne	.L94	@,
.L100:
	mvn	r0, #0	@ D.6653,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L107:
	ldr	r3, [r7, #52]	@ s_11(D)->histbuf32, s_11(D)->histbuf32
	add	r3, r3, fp, lsl #2	@ D.6657, s_11(D)->histbuf32, nhist,
	str	r3, [r7, #56]	@ D.6657, s_11(D)->pcmbuf32
	b	.L96	@
.L97:
	mov	r4, r1	@ inrate, inrate
	b	.L85	@
.L111:
	.align	2
.L110:
	.word	.LANCHOR0
	.fnend
	.size	ResampleConfig, .-ResampleConfig
	.align	2
	.global	ResamplerCreate
	.type	ResamplerCreate, %function
ResamplerCreate:
	.fnstart
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #32000	@ inrate,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ inrate, inrate
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r1	@ outrate, outrate
	beq	.L114	@,
	ble	.L198	@,
	movw	r1, #22664	@ tmp187,
	movt	r1, 1	@ tmp187,
	cmp	r0, r1	@ inrate, tmp187
	beq	.L114	@,
	ble	.L199	@,
	movw	r1, #45328	@ tmp191,
	movt	r1, 2	@ tmp191,
	cmp	r0, r1	@ inrate, tmp191
	beq	.L114	@,
	mov	r1, #60928	@ tmp192,
	movt	r1, 2	@ tmp192,
	cmp	r0, r1	@ inrate, tmp192
	beq	.L114	@,
	mov	r1, #30464	@ tmp193,
	movt	r1, 1	@ tmp193,
	cmp	r0, r1	@ inrate, tmp193
	beq	.L114	@,
.L146:
	str	r2, [sp]	@ chans,
	add	r0, sp, #20	@,,
	mov	r2, r5	@, outrate
	mov	r1, r4	@, inrate
	bl	LSRC_Create	@
	ldr	r0, [sp, #20]	@ D.6709, hLSRC
	cmp	r0, #0	@ D.6709,
	bne	.L200	@,
.L142:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L207:
	cmp	r0, #8000	@ inrate,
	beq	.L114	@,
	movw	r1, #11025	@ tmp184,
	cmp	r0, r1	@ inrate, tmp184
	bne	.L146	@,
.L114:
	cmp	r5, #32000	@ outrate,
	beq	.L118	@,
	ble	.L201	@,
	movw	r1, #22664	@ tmp199,
	movt	r1, 1	@ tmp199,
	cmp	r5, r1	@ outrate, tmp199
	beq	.L118	@,
	ble	.L202	@,
	movw	r1, #45328	@ tmp203,
	movt	r1, 2	@ tmp203,
	cmp	r5, r1	@ outrate, tmp203
	beq	.L118	@,
	mov	r1, #60928	@ tmp204,
	movt	r1, 2	@ tmp204,
	cmp	r5, r1	@ outrate, tmp204
	beq	.L118	@,
	mov	r1, #30464	@ tmp205,
	movt	r1, 1	@ tmp205,
	cmp	r5, r1	@ outrate, tmp205
	bne	.L146	@,
.L118:
	cmp	r4, r5	@ inrate, outrate
	bge	.L146	@,
	sub	r1, r2, #1	@ D.6711, chans,
	cmp	r1, #1	@ D.6711,
	bhi	.L146	@,
	bic	r1, r3, #2	@ D.6713, SampleFormat,
	cmp	r1, #16	@ D.6713,
	beq	.L149	@,
	sub	r1, r3, #20	@ D.6713, SampleFormat,
	bics	r1, r1, #4	@ tmp278, D.6713,
	bne	.L146	@,
.L149:
	mov	r6, r5	@ outrate, outrate
	mov	r1, r4	@ inrate, inrate
.L126:
	cmp	r1, r6	@ inrate, outrate
	rsbgt	r1, r6, r1	@ inrate, outrate, inrate
	rsble	r6, r1, r6	@ outrate, inrate, outrate
	cmp	r6, r1	@ outrate, inrate
	bne	.L126	@,
	mov	r1, r6	@, outrate
	mov	r0, r5	@, outrate
	str	r3, [sp, #12]	@ SampleFormat, %sfp
	str	r2, [sp, #8]	@ chans, %sfp
	bl	__aeabi_idiv	@
	ldr	r2, [sp, #8]	@ chans, %sfp
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	cmp	r0, #1280	@ up,
	mov	r10, r0	@ up,
	bgt	.L146	@,
	mov	r1, r6	@, outrate
	mov	r0, r4	@, inrate
	bl	__aeabi_idiv	@
	mov	r1, r10	@, up
	mov	r6, r0	@ dn,
	add	r0, r10, r0	@ D.6713, up, dn
	sub	r0, r0, #1	@, D.6713,
	bl	__aeabi_idiv	@
	ldr	r2, [sp, #8]	@ chans, %sfp
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	mul	r0, r0, r2	@ D.6713,, chans
	cmp	r0, #255	@ D.6713,
	bgt	.L146	@,
	cmp	r4, #0	@ inrate,
	add	r0, r4, #3	@ tmp230, inrate,
	add	r7, r5, #3	@ tmp233, outrate,
	add	lr, r4, r4, lsr #31	@ tmp224, inrate, inrate,
	movge	r0, r4	@ inrate, inrate
	cmp	r5, #0	@ outrate,
	add	r8, r5, r5, lsr #31	@ tmp227, outrate, outrate,
	ldr	r9, .L211	@ srcinfoptr,
	movge	r7, r5	@ outrate, outrate
	mov	r0, r0, asr #2	@ D.6713, inrate,
	mov	r7, r7, asr #2	@ D.6713, outrate,
	mov	lr, lr, asr #1	@ D.6713, tmp224,
	mov	r8, r8, asr #1	@ D.6713, tmp227,
	mov	r1, #0	@ i,
	b	.L131	@
.L127:
	cmp	ip, lr	@ D.6713, D.6713
	beq	.L203	@,
.L129:
	cmp	ip, r0	@ D.6713, D.6713
	beq	.L204	@,
.L130:
	add	r1, r1, #1	@ i, i,
	add	r9, r9, #24	@ srcinfoptr, srcinfoptr,
	cmp	r1, #40	@ i,
	beq	.L146	@,
.L131:
	ldr	ip, [r9]	@ D.6713, MEM[base: srcinfoptr_146, offset: 0B]
	cmp	r4, ip	@ inrate, D.6713
	bne	.L127	@,
	ldr	fp, [r9, #4]	@ MEM[base: srcinfoptr_146, offset: 4B], MEM[base: srcinfoptr_146, offset: 4B]
	cmp	r5, fp	@ outrate, MEM[base: srcinfoptr_146, offset: 4B]
	bne	.L127	@,
	ldr	fp, [r9, #8]	@ MEM[base: srcinfoptr_146, offset: 8B], MEM[base: srcinfoptr_146, offset: 8B]
	cmp	fp, #2	@ MEM[base: srcinfoptr_146, offset: 8B],
	bne	.L127	@,
.L128:
	cmp	r1, #40	@ i,
	beq	.L146	@,
	ldr	r8, [r9, #12]	@ nwing, srcinfoptr_147->nwing
	mov	r1, #88	@,
	mov	r0, #17	@,
	str	r3, [sp, #12]	@ SampleFormat, %sfp
	str	r2, [sp, #8]	@ chans, %sfp
	mov	r7, r8, asl #1	@ ntaps, nwing,
	mul	r7, r7, r2	@ nhist, ntaps, chans
	bl	HI_ADSP_MALLOC	@
	ldr	r2, [sp, #8]	@ chans, %sfp
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	subs	fp, r0, #0	@ s,
	beq	.L146	@,
	ldr	ip, [r9, #20]	@ D.6714, srcinfoptr_147->filter
	cmp	r3, #16	@ SampleFormat,
	mov	r0, #0	@ tmp242,
	str	ip, [fp, #68]	@ D.6714, s_65->filter
	ldr	r1, [r9, #16]	@ D.6715, srcinfoptr_147->nextphase
	str	r3, [fp, #40]	@ SampleFormat, s_65->bitwidth
	str	r0, [fp, #36]	@ tmp242, s_65->isCloned
	str	r1, [fp, #72]	@ D.6715, s_65->nextphase
	beq	.L205	@,
	sub	r1, r3, #18	@ D.6713, SampleFormat,
	bics	r1, r1, #2	@ tmp279, D.6713,
	moveq	r1, #1	@ tmp252,
	movne	r1, #0	@ tmp252,
	cmp	r3, #24	@ SampleFormat,
	orreq	r1, r1, #1	@,, tmp257, tmp252
	cmp	r1, #0	@ tmp257,
	bne	.L206	@,
.L137:
	sub	r1, r10, #1	@ D.6713, up,
	subs	r0, fp, #0	@ D.6709, s
	mov	lr, #0	@ tmp259,
	str	r4, [fp, #8]	@ inrate, s_65->inrate
	mul	r1, r1, r8	@ D.6713, D.6713, nwing
	str	r5, [fp, #12]	@ outrate, s_65->outrate
	str	r10, [fp]	@ up, s_65->up
	str	r6, [fp, #4]	@ dn, s_65->dn
	str	r2, [fp, #16]	@ chans, s_65->nchans
	str	r8, [fp, #20]	@ nwing, s_65->nwing
	add	r1, ip, r1, lsl #1	@ D.6718, D.6718, D.6713,
	str	r1, [fp, #60]	@ D.6718, s_65->lwingptr
	ldr	r1, [sp, #64]	@ tmp281, isForec2Out32bit
	str	r7, [fp, #24]	@ nhist, s_65->nhist
	str	ip, [fp, #64]	@ D.6718, s_65->rwingptr
	str	r1, [fp, #76]	@ tmp281, s_65->isForec2Out32bit
	str	lr, [fp, #28]	@ tmp259, s_65->phase
	str	lr, [fp, #32]	@ tmp259, s_65->offset
	str	lr, [fp, #80]	@ tmp259, s_65->isLinearMode
	str	lr, [fp, #84]	@ tmp259, s_65->hLSRC
	bne	.L142	@,
	b	.L146	@
.L198:
	movw	r1, #12000	@ tmp182,
	cmp	r0, r1	@ inrate, tmp182
	beq	.L114	@,
	ble	.L207	@,
	movw	r1, #22050	@ tmp185,
	cmp	r0, r1	@ inrate, tmp185
	beq	.L114	@,
	movw	r1, #24000	@ tmp186,
	cmp	r0, r1	@ inrate, tmp186
	beq	.L114	@,
	cmp	r0, #16000	@ inrate,
	bne	.L146	@,
	b	.L114	@
.L201:
	movw	r1, #12000	@ tmp194,
	cmp	r5, r1	@ outrate, tmp194
	beq	.L118	@,
	ble	.L208	@,
	movw	r1, #22050	@ tmp197,
	cmp	r5, r1	@ outrate, tmp197
	beq	.L118	@,
	movw	r1, #24000	@ tmp198,
	cmp	r5, r1	@ outrate, tmp198
	beq	.L118	@,
	cmp	r5, #16000	@ outrate,
	bne	.L146	@,
	b	.L118	@
.L202:
	movw	r1, #44100	@ tmp201,
	cmp	r5, r1	@ outrate, tmp201
	beq	.L118	@,
	movw	r1, #48000	@ tmp202,
	cmp	r5, r1	@ outrate, tmp202
	bne	.L146	@,
	b	.L118	@
.L208:
	cmp	r5, #8000	@ outrate,
	beq	.L118	@,
	movw	r1, #11025	@ tmp196,
	cmp	r5, r1	@ outrate, tmp196
	bne	.L146	@,
	b	.L118	@
.L199:
	movw	r1, #44100	@ tmp189,
	cmp	r0, r1	@ inrate, tmp189
	beq	.L114	@,
	movw	r1, #48000	@ tmp190,
	cmp	r0, r1	@ inrate, tmp190
	bne	.L146	@,
	b	.L114	@
.L200:
	mov	r1, #88	@,
	mov	r0, #17	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ s,
	beq	.L209	@,
	ldr	r3, [sp, #20]	@ hLSRC, hLSRC
	mov	r0, r4	@ D.6709, s
	mov	r2, #1	@ tmp269,
	str	r2, [r4, #80]	@ tmp269, s_16->isLinearMode
	str	r3, [r4, #84]	@ hLSRC, s_16->hLSRC
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L203:
	ldr	fp, [r9, #4]	@ MEM[base: srcinfoptr_146, offset: 4B], MEM[base: srcinfoptr_146, offset: 4B]
	cmp	fp, r8	@ MEM[base: srcinfoptr_146, offset: 4B], D.6713
	bne	.L129	@,
	ldr	fp, [r9, #8]	@ MEM[base: srcinfoptr_146, offset: 8B], MEM[base: srcinfoptr_146, offset: 8B]
	cmp	fp, #2	@ MEM[base: srcinfoptr_146, offset: 8B],
	bne	.L129	@,
	b	.L128	@
.L204:
	ldr	ip, [r9, #4]	@ MEM[base: srcinfoptr_146, offset: 4B], MEM[base: srcinfoptr_146, offset: 4B]
	cmp	ip, r7	@ MEM[base: srcinfoptr_146, offset: 4B], D.6713
	bne	.L130	@,
	ldr	ip, [r9, #8]	@ MEM[base: srcinfoptr_146, offset: 8B], MEM[base: srcinfoptr_146, offset: 8B]
	cmp	ip, #2	@ MEM[base: srcinfoptr_146, offset: 8B],
	bne	.L130	@,
	b	.L128	@
.L209:
	ldr	r0, [sp, #20]	@, hLSRC
	bl	LSRC_Destroy	@
	mov	r0, r4	@ D.6709, s
	b	.L142	@
.L206:
	mov	r1, #16640	@,
	mov	r0, #17	@,
	str	r3, [sp, #12]	@ SampleFormat, %sfp
	str	r2, [sp, #8]	@ chans, %sfp
	bl	HI_ADSP_MALLOC	@
	ldr	r2, [sp, #8]	@ chans, %sfp
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	cmp	r0, #0	@ D.6716,
	mov	ip, r0	@ D.6716,
	str	r0, [fp, #52]	@ D.6716, s_65->histbuf32
	beq	.L197	@,
	movs	r9, r7, asl #2	@ __n, nhist,
	bne	.L210	@,
.L141:
	add	r9, ip, r9	@ D.6717, D.6717, __n
	ldr	ip, [fp, #68]	@ D.6718, s_65->filter
	str	r9, [fp, #56]	@ D.6717, s_65->pcmbuf32
	b	.L137	@
.L205:
	ldr	r1, [sp, #64]	@ tmp280, isForec2Out32bit
	cmp	r1, r0	@ tmp280,
	beq	.L133	@,
	mov	r1, #16640	@,
	mov	r0, #17	@,
	bl	HI_ADSP_MALLOC	@
	ldr	r2, [sp, #8]	@ chans, %sfp
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	cmp	r0, #0	@ D.6716,
	str	r0, [fp, #52]	@ D.6716, s_65->histbuf32
	beq	.L197	@,
	movs	r9, r7, asl #2	@ __n, nhist,
	beq	.L136	@,
	mov	r1, r9	@, __n
	str	r3, [sp, #12]	@ SampleFormat, %sfp
	str	r2, [sp, #8]	@ chans, %sfp
	bl	__memzero	@
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	ldr	r2, [sp, #8]	@ chans, %sfp
.L136:
	ldr	r1, [fp, #52]	@ s_65->histbuf32, s_65->histbuf32
	ldr	ip, [fp, #68]	@ D.6718, s_65->filter
	add	r1, r1, r9	@ D.6717, s_65->histbuf32, __n
	str	r1, [fp, #56]	@ D.6717, s_65->pcmbuf32
	b	.L137	@
.L133:
	add	r1, r7, #4096	@ D.6713, nhist,
	mov	r0, #17	@,
	str	r3, [sp, #12]	@ SampleFormat, %sfp
	mov	r1, r1, asl #1	@, D.6713,
	str	r2, [sp, #8]	@ chans, %sfp
	bl	HI_ADSP_MALLOC	@
	ldr	r2, [sp, #8]	@ chans, %sfp
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	cmp	r0, #0	@ D.6716,
	str	r0, [fp, #44]	@ D.6716, s_65->histbuf
	beq	.L197	@,
	movs	r9, r7, asl #1	@ __n, nhist,
	beq	.L139	@,
	mov	r1, r9	@, __n
	str	r3, [sp, #12]	@ SampleFormat, %sfp
	str	r2, [sp, #8]	@ chans, %sfp
	bl	__memzero	@
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	ldr	r2, [sp, #8]	@ chans, %sfp
.L139:
	ldr	r1, [fp, #44]	@ s_65->histbuf, s_65->histbuf
	ldr	ip, [fp, #68]	@ D.6718, s_65->filter
	add	r1, r1, r9	@ D.6718, s_65->histbuf, __n
	str	r1, [fp, #48]	@ D.6718, s_65->pcmbuf
	b	.L137	@
.L210:
	mov	r1, r9	@, __n
	str	r3, [sp, #12]	@ SampleFormat, %sfp
	str	r2, [sp, #8]	@ chans, %sfp
	bl	__memzero	@
	ldr	ip, [fp, #52]	@ D.6717, s_65->histbuf32
	ldr	r2, [sp, #8]	@ chans, %sfp
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	b	.L141	@
.L197:
	mov	r1, fp	@, s
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	ldr	r2, [sp, #8]	@ chans, %sfp
	ldr	r3, [sp, #12]	@ SampleFormat, %sfp
	b	.L146	@
.L212:
	.align	2
.L211:
	.word	.LANCHOR0
	.fnend
	.size	ResamplerCreate, .-ResamplerCreate
	.align	2
	.global	ResamplerFree
	.type	ResamplerFree, %function
ResamplerFree:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ inst
	bxeq	lr	@
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ inst, inst
	ldr	r3, [r0, #80]	@ s_4->isLinearMode, s_4->isLinearMode
	cmp	r3, #0	@ s_4->isLinearMode,
	beq	.L236	@,
	ldr	r0, [r0, #84]	@, s_4->hLSRC
	bl	LSRC_Destroy	@
.L233:
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
.L236:
	ldr	r3, [r0, #40]	@ D.6729, s_4->bitwidth
	cmp	r3, #16	@ D.6729,
	beq	.L237	@,
	sub	r2, r3, #18	@ D.6729, D.6729,
	bics	r2, r2, #2	@ tmp137, D.6729,
	moveq	r2, #1	@ tmp129,
	movne	r2, #0	@ tmp129,
	cmp	r3, #24	@ D.6729,
	movne	r3, r2	@, tmp134, tmp129
	orreq	r3, r2, #1	@,, tmp134, tmp129
	cmp	r3, #0	@ tmp134,
	beq	.L233	@,
.L235:
	ldr	r1, [r4, #52]	@ D.6731, s_4->histbuf32
	cmp	r1, #0	@ D.6731,
	beq	.L233	@,
.L232:
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
.L237:
	ldr	r3, [r0, #76]	@ s_4->isForec2Out32bit, s_4->isForec2Out32bit
	cmp	r3, #0	@ s_4->isForec2Out32bit,
	bne	.L235	@,
	ldr	r1, [r0, #44]	@ D.6732, s_4->histbuf
	cmp	r1, #0	@ D.6732,
	bne	.L232	@,
	b	.L233	@
	.fnend
	.size	ResamplerFree, .-ResamplerFree
	.align	2
	.global	ResampleFlush
	.type	ResampleFlush, %function
ResampleFlush:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ inst
	bxeq	lr	@
	ldr	r3, [r0, #80]	@ s_4->isLinearMode, s_4->isLinearMode
	cmp	r3, #0	@ s_4->isLinearMode,
	bxne	lr	@
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ inst, inst
	ldr	r2, [r0]	@ s_4->up, s_4->up
	mov	r0, #0	@ tmp166,
	ldr	r1, [r4, #20]	@ s_4->nwing, s_4->nwing
	sub	r2, r2, #1	@ D.6744, s_4->up,
	ldr	ip, [r4, #40]	@ D.6744, s_4->bitwidth
	ldr	r3, [r4, #68]	@ D.6746, s_4->filter
	mul	r2, r1, r2	@ D.6744, s_4->nwing, D.6744
	cmp	ip, #16	@ D.6744,
	str	r3, [r4, #64]	@ D.6746, s_4->rwingptr
	str	r0, [r4, #28]	@ tmp166, s_4->phase
	str	r0, [r4, #32]	@ tmp166, s_4->offset
	str	r0, [r4, #36]	@ tmp166, s_4->isCloned
	add	r3, r3, r2, lsl #1	@ D.6746, D.6746, D.6744,
	str	r3, [r4, #60]	@ D.6746, s_4->lwingptr
	beq	.L261	@,
	sub	r3, ip, #18	@ D.6744, D.6744,
	bics	r3, r3, #2	@ tmp195, D.6744,
	moveq	r3, #1	@ tmp185,
	movne	r3, #0	@ tmp185,
	cmp	ip, #24	@ D.6744,
	movne	ip, r3	@, tmp190, tmp185
	orreq	ip, r3, #1	@,, tmp190, tmp185
	cmp	ip, #0	@ tmp190,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r3, [r4, #24]	@ D.6744, s_4->nhist
.L260:
	add	r1, r3, #4096	@ D.6744, D.6744,
	ldr	r0, [r4, #52]	@ __p, s_4->histbuf32
	movs	r1, r1, asl #2	@ __n, D.6744,
	bne	.L262	@,
.L246:
	add	r0, r0, r3, lsl #2	@ D.6748, D.6748, D.6744,
	str	r0, [r4, #56]	@ D.6748, s_4->pcmbuf32
	ldmfd	sp!, {r4, pc}	@
.L261:
	ldr	r3, [r4, #76]	@ s_4->isForec2Out32bit, s_4->isForec2Out32bit
	cmp	r3, r0	@ s_4->isForec2Out32bit,
	ldr	r3, [r4, #24]	@ D.6744, s_4->nhist
	bne	.L260	@,
	add	r1, r3, #4096	@ D.6744, D.6744,
	ldr	r0, [r4, #44]	@ __p, s_4->histbuf
	movs	r1, r1, asl #1	@ __n, D.6744,
	beq	.L245	@,
	bl	__memzero	@
	ldr	r0, [r4, #44]	@ D.6746, s_4->histbuf
	ldr	r3, [r4, #24]	@ D.6744, s_4->nhist
.L245:
	add	r0, r0, r3, lsl #1	@ D.6746, D.6746, D.6744,
	str	r0, [r4, #48]	@ D.6746, s_4->pcmbuf
	ldmfd	sp!, {r4, pc}	@
.L262:
	bl	__memzero	@
	ldr	r0, [r4, #52]	@ D.6748, s_4->histbuf32
	ldr	r3, [r4, #24]	@ D.6744, s_4->nhist
	b	.L246	@
	.fnend
	.size	ResampleFlush, .-ResampleFlush
	.align	2
	.global	NEW_ResamplerCheck
	.type	NEW_ResamplerCheck, %function
NEW_ResamplerCheck:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ inst
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r3	@ chans, chans
	ldr	r3, [sp, #16]	@ SampleFormat, SampleFormat
	beq	.L266	@,
	ldr	lr, [r0, #80]	@ s_4->isLinearMode, s_4->isLinearMode
	cmp	lr, #0	@ s_4->isLinearMode,
	bne	.L265	@,
	mov	r6, r2	@ outrate, outrate
	ldr	r2, [r0, #8]	@ s_4->inrate, s_4->inrate
	mov	r4, r1	@ inrate, inrate
	cmp	r1, r2	@ inrate, s_4->inrate
	beq	.L271	@,
.L269:
	mov	r0, #1	@ D.6751,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L271:
	ldr	r2, [r0, #12]	@ s_4->outrate, s_4->outrate
	cmp	r6, r2	@ outrate, s_4->outrate
	bne	.L269	@,
	ldr	r2, [r0, #16]	@ s_4->nchans, s_4->nchans
	cmp	r5, r2	@ chans, s_4->nchans
	bne	.L269	@,
	ldr	r0, [r0, #40]	@ s_4->bitwidth, s_4->bitwidth
	subs	r0, r3, r0	@ D.6751, SampleFormat, s_4->bitwidth
	movne	r0, #1	@ D.6751,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L265:
	ldr	r0, [r0, #84]	@ s_4->hLSRC, s_4->hLSRC
	str	r5, [sp, #16]	@ chans,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	LSRC_CheckUpdate	@
.L266:
	mov	r0, #-2147483647	@ D.6751,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	NEW_ResamplerCheck, .-NEW_ResamplerCheck
	.align	2
	.global	ResamplerGetMaxOutputNum
	.type	ResamplerGetMaxOutputNum, %function
ResamplerGetMaxOutputNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ inst
	beq	.L275	@,
	ldr	r2, [r0, #80]	@ s_4->isLinearMode, s_4->isLinearMode
	cmp	r2, #0	@ s_4->isLinearMode,
	bne	.L274	@,
	cmp	r1, #2048	@ insamps,
	mov	r3, r1	@ insamps, insamps
	bgt	.L278	@,
	tst	r1, #1	@ insamps,
	bne	.L278	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r2, [r0, #16]	@ s_4->nchans, s_4->nchans
	ldr	ip, [r0, #12]	@ s_4->outrate, s_4->outrate
	sub	r2, r2, #1	@ D.6758, s_4->nchans,
	ldr	r1, [r0, #8]	@, s_4->inrate
	add	r0, r3, r2	@ inframes, insamps, D.6758
	mul	r0, ip, r0	@, s_4->outrate, inframes
	bl	__aeabi_idiv	@
	add	r0, r0, #1	@ D.6757,,
	ldmfd	sp!, {r4, pc}	@
.L278:
	mov	r0, #-2147483645	@ D.6757,
	bx	lr	@
.L274:
	ldr	r0, [r0, #84]	@, s_4->hLSRC
	b	LSRC_GetMaxOutputNum	@
.L275:
	mov	r0, #-2147483647	@ D.6757,
	bx	lr	@
	.fnend
	.size	ResamplerGetMaxOutputNum, .-ResamplerGetMaxOutputNum
	.global	__aeabi_idivmod
	.align	2
	.global	ResamplerGetMinInputNum
	.type	ResamplerGetMinInputNum, %function
ResamplerGetMinInputNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ inst
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ OutSamps, OutSamps
	beq	.L286	@,
	ldr	r3, [r0, #80]	@ s_4->isLinearMode, s_4->isLinearMode
	cmp	r3, #0	@ s_4->isLinearMode,
	bne	.L283	@,
	ldr	r6, [r0, #8]	@ s_4->inrate, s_4->inrate
	mov	r5, r0	@ inst, inst
	ldr	r7, [r0, #12]	@ D.6768, s_4->outrate
	mul	r6, r6, r1	@ D.6768, s_4->inrate, OutSamps
	mov	r1, r7	@, D.6768
	mov	r0, r6	@, D.6768
	bl	__aeabi_idiv	@
	mov	r1, r7	@, D.6768
	mov	r4, r0	@ insamps,
	mov	r0, r6	@, D.6768
	bl	__aeabi_idivmod	@
	ldr	r3, [r5, #16]	@ s_4->nchans, s_4->nchans
	cmp	r1, #0	@,
	addne	r4, r4, #1	@ insamps, insamps,
	mul	r3, r3, r4	@ D.6768, s_4->nchans, insamps
	tst	r3, #1	@ D.6768,
	addne	r4, r4, #1	@ insamps, insamps,
	cmp	r4, #2048	@ insamps,
	movle	r0, r4	@ D.6767, insamps
	movgt	r0, #-2147483645	@ D.6767,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L283:
	ldr	r0, [r0, #84]	@, s_4->hLSRC
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	LSRC_GetMinInputNum	@
.L286:
	mov	r0, r1	@ D.6767, OutSamps
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	ResamplerGetMinInputNum, .-ResamplerGetMinInputNum
	.align	2
	.global	ResamplerProcessFrame
	.type	ResamplerProcessFrame, %function
ResamplerProcessFrame:
	.fnstart
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r5, r0, #0	@ inst, inst
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r4, [sp, #80]	@ inrate, inrate
	ldr	r9, [sp, #84]	@ outrate, outrate
	ldr	r7, [sp, #88]	@ bInterleaved, bInterleaved
	beq	.L300	@,
	ldr	ip, [r5, #80]	@ s_4->isLinearMode, s_4->isLinearMode
	cmp	ip, #0	@ s_4->isLinearMode,
	beq	.L342	@,
	ldr	r0, [r5, #84]	@, s_4->hLSRC
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	LSRC_ProcessFrame	@
.L342:
	cmp	r1, #0	@ inbuf,
	mov	lr, r1	@ inbuf, inbuf
	beq	.L325	@,
	cmp	r3, #2048	@ insamps,
	bgt	.L302	@,
	tst	r3, #1	@ insamps,
	bne	.L302	@,
	cmp	r2, #0	@ pOutpcm,
	beq	.L325	@,
	mov	r6, r3	@ insamps, insamps
	ldr	r3, [r5, #8]	@ s_4->inrate, s_4->inrate
	str	r2, [sp, #12]	@ pOutpcm, %sfp
	mov	r8, r1	@ inbuf, inbuf
	cmp	r4, r3	@ inrate, s_4->inrate
	beq	.L343	@,
.L303:
	mov	r2, r9	@, outrate
	mov	r1, r4	@, inrate
	mov	r0, r5	@, inst
	bl	ResampleConfig	@
.L304:
	mov	r1, r6	@, insamps
	mov	r0, r5	@, inst
	bl	ResamplerGetMaxOutputNum	@
	cmp	r0, #0	@ maxout
	blt	.L344	@,
	ldr	ip, [r5, #16]	@ D.6900, s_4->nchans
	cmp	ip, #2	@ D.6900,
	beq	.L345	@,
	cmp	ip, #1	@ D.6900,
	bne	.L327	@,
	ldr	r3, [r5, #40]	@ D.6900, s_4->bitwidth
	cmp	r3, #16	@ D.6900,
	beq	.L346	@,
	sub	r2, r3, #18	@ D.6900, D.6900,
	bics	r2, r2, #2	@ tmp473, D.6900,
	moveq	r2, #1	@ tmp419,
	movne	r2, #0	@ tmp419,
	cmp	r3, #24	@ D.6900,
	movne	r3, r2	@, tmp424, tmp419
	orreq	r3, r2, #1	@,, tmp424, tmp419
	cmp	r3, #0	@ tmp424,
	beq	.L341	@,
.L317:
	ldr	r3, [sp, #12]	@, %sfp
	mov	r2, r6	@, insamps
	mov	r1, r8	@, inbuf
	mov	r0, r5	@, inst
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	ResamplerMonoProcess24	@
.L343:
	ldr	r3, [r5, #12]	@ s_4->outrate, s_4->outrate
	cmp	r9, r3	@ outrate, s_4->outrate
	bne	.L303	@,
	b	.L304	@
.L345:
	ldr	r3, [r5, #40]	@ D.6900, s_4->bitwidth
	cmp	r3, #16	@ D.6900,
	beq	.L347	@,
	sub	r2, r3, #18	@ D.6900, D.6900,
	bics	r2, r2, #2	@ tmp472, D.6900,
	moveq	r2, #1	@ tmp370,
	movne	r2, #0	@ tmp370,
	cmp	r3, #24	@ D.6900,
	movne	r3, r2	@, tmp375, tmp370
	orreq	r3, r2, #1	@,, tmp375, tmp370
	cmp	r3, #0	@ tmp375,
	beq	.L341	@,
.L308:
	str	r7, [sp, #80]	@ bInterleaved,
	mov	r2, r6	@, insamps
	ldr	r3, [sp, #12]	@, %sfp
	mov	r1, r8	@, inbuf
	mov	r0, r5	@, inst
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	ResamplerStereoProcess24	@
.L344:
	cmp	r0, #-2147483647	@ maxout,
	beq	.L300	@,
	cmp	r0, #-2147483645	@ maxout,
	movne	r4, #-2147483640	@ D.6899,
	beq	.L302	@,
.L338:
	mov	r0, r4	@, D.6899
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L302:
	mov	r4, #-2147483645	@ D.6899,
	b	.L338	@
.L347:
	ldr	r4, [r5, #76]	@ D.6899, s_4->isForec2Out32bit
	cmp	r4, #0	@ D.6899,
	bne	.L308	@,
	ldr	lr, [r5, #28]	@ phase, s_4->phase
	mov	r3, r7	@, bInterleaved
	mov	r2, r6	@, insamps
	ldr	r0, [r5, #48]	@ s_4->pcmbuf, s_4->pcmbuf
	ldr	r6, [r5, #20]	@ nwing, s_4->nwing
	mov	r1, r8	@, inbuf
	str	lr, [sp, #16]	@ phase, %sfp
	ldr	lr, [r5, #72]	@ nextphase, s_4->nextphase
	str	ip, [sp]	@ D.6900,
	str	lr, [sp, #28]	@ nextphase, %sfp
	bl	cvtShortShort	@
	sub	r2, r6, #1	@ D.6900, nwing,
	ldr	r3, [r5, #48]	@ s_4->pcmbuf, s_4->pcmbuf
	ldr	r9, [r5, #32]	@ s_4->offset, s_4->offset
	sub	r3, r3, r2, asl #2	@ pcmptr, s_4->pcmbuf, D.6900,
	ldr	r7, [r5, #64]	@ rwingptr, s_4->rwingptr
	ldr	r8, [r5, #60]	@ lwingptr, s_4->lwingptr
	add	r9, r3, r9, lsl #1	@ yptr, pcmptr, s_4->offset,
	mov	r2, r0, asl #1	@ D.6902,,
	str	r2, [sp, #32]	@ D.6902, %sfp
	add	r3, r3, r2	@ pcmend, pcmptr, D.6902
	str	r3, [sp, #20]	@ pcmend, %sfp
	cmp	r3, r9	@ pcmend, yptr
	bls	.L309	@,
	ldr	r3, [sp, #12]	@ pOutpcm, %sfp
	str	r4, [sp, #36]	@ D.6899, %sfp
	add	r3, r3, #4	@ ivtmp.347, pOutpcm,
	str	r5, [sp, #24]	@ inst, %sfp
	mov	fp, r3	@ ivtmp.347, ivtmp.347
.L315:
	cmp	r6, #0	@ nwing,
	ble	.L310	@,
	mov	r10, #0	@ i,
	sub	r5, r9, #12	@ ivtmp.325, yptr,
	add	r4, r9, #8	@ ivtmp.327, yptr,
	mov	r2, r10	@ acc1, i
	mov	r1, r10	@ acc1, i
.L311:
	ldr	ip, [r7], #4	@ cx, MEM[base: rwingptr_65, offset: 4294967292B]
	ldr	r0, [r8], #4	@ cy, MEM[base: lwingptr_68, offset: 4294967292B]
	ldr	r3, [r5, #8]	@ x, MEM[base: _352, offset: 8B]
	ldr	lr, [r4, #-8]	@ y, MEM[base: _303, offset: 4294967288B]
#APP
@ 759 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r1, r3, ip, r1	@ acc0, x, cx, acc1
@ 0 "" 2
@ 779 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatb r3, r3, ip, r2	@ acc1, x, cx, acc1
@ 0 "" 2
@ 759 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r1, lr, r0, r1	@ acc0, y, cy, acc0
@ 0 "" 2
@ 779 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatb r3, lr, r0, r3	@ acc1, y, cy, acc1
@ 0 "" 2
	ldr	r2, [r5, #4]	@ x, MEM[base: _352, offset: 4B]
	ldr	lr, [r4, #-4]	@ y, MEM[base: _303, offset: 4294967292B]
#APP
@ 769 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt r1, r2, ip, r1	@ acc0, x, cx, acc0
@ 0 "" 2
@ 789 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatt r3, r2, ip, r3	@ acc1, x, cx, acc1
@ 0 "" 2
@ 769 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt r1, lr, r0, r1	@ acc1, y, cy, acc0
@ 0 "" 2
@ 789 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlatt r2, lr, r0, r3	@ acc1, y, cy, acc1
@ 0 "" 2
	add	r10, r10, #2	@ i, i,
	sub	r5, r5, #8	@ ivtmp.325, ivtmp.325,
	cmp	r6, r10	@ nwing, i
	add	r4, r4, #8	@ ivtmp.327, ivtmp.327,
	bgt	.L311	@,
	add	r1, r1, #16384	@ D.6900, acc1,
	mov	r3, r1, asr #31	@ sign, D.6900,
	mov	r0, r1, asr #15	@ x, D.6900,
	cmp	r3, r1, asr #30	@ sign, D.6900,
	addeq	r2, r2, #16384	@ D.6900, acc1,
	eorne	r3, r3, #32512	@ x, sign,
	addne	r2, r2, #16384	@ D.6900, acc1,
	eorne	r3, r3, #255	@ x, x,
	moveq	r1, r2, asr #31	@ D.6899, D.6900,
	uxtheq	r3, r0	@ D.6905, x
	movne	r1, r2, asr #31	@ D.6899, D.6900,
	moveq	r0, r2, asr #30	@ D.6900, D.6900,
	movne	r0, r2, asr #30	@ D.6900, D.6900,
	uxthne	r3, r3	@ D.6905, x
	cmp	r1, r0	@ D.6899, D.6900
	mov	r2, r2, asr #15	@ x, D.6900,
	eorne	r2, r1, #32512	@ x, D.6899,
	strh	r3, [fp, #-4]	@ movhi	@ D.6905, MEM[base: _142, offset: 4294967292B]
	eorne	r2, r2, #255	@ x, x,
	movne	r1, fp	@ pOutpcm, ivtmp.347
	moveq	r1, fp	@ pOutpcm, ivtmp.347
.L314:
	strh	r2, [fp, #-2]	@ movhi	@ x, MEM[base: pOutpcm_319, offset: 4294967294B]
	add	fp, fp, #4	@ ivtmp.347, ivtmp.347,
	ldr	r2, [sp, #16]	@ phase, %sfp
	ldr	r3, [sp, #28]	@ nextphase, %sfp
	ldr	r3, [r3, r2, asl #2]	@ phase, *_109
	ldr	r2, [sp, #24]	@ inst, %sfp
	ubfx	r8, r3, #8, #12	@ D.6900, phase,,
	uxtb	r0, r3	@ pcmstep, phase
	ldr	r7, [r2, #68]	@ D.6903, s_4->filter
	mov	r2, r3, lsr #20	@ D.6910, phase,
	mul	r8, r8, r6	@ D.6900, D.6900, nwing
	add	r9, r9, r0, lsl #1	@ yptr, yptr, pcmstep,
	mul	r2, r2, r6	@ D.6900, D.6910, nwing
	ldr	r0, [sp, #20]	@ pcmend, %sfp
	mov	r3, r3, asr #20	@ phase, phase,
	str	r3, [sp, #16]	@ phase, %sfp
	cmp	r0, r9	@ pcmend, yptr
	add	r8, r7, r8, lsl #1	@ lwingptr, D.6903, D.6900,
	add	r7, r7, r2, lsl #1	@ rwingptr, D.6903, D.6900,
	bhi	.L315	@,
	ldr	r3, [sp, #12]	@ pOutpcm, %sfp
	ldr	r5, [sp, #24]	@ inst, %sfp
	rsb	r1, r3, r1	@ D.6900, pOutpcm, pOutpcm
	mov	r4, r1, asr #1	@ D.6900, D.6900,
	add	r4, r4, r4, lsr #31	@ tmp360, D.6900, D.6900,
	mov	r4, r4, asr #1	@ D.6899, tmp360,
.L309:
	ldr	r3, [sp, #20]	@ pcmend, %sfp
	ldr	r1, [sp, #16]	@ phase, %sfp
	rsb	r3, r3, r9	@ D.6900, pcmend, yptr
	ldr	r0, [r5, #44]	@ D.6903, s_4->histbuf
	ldr	r2, [r5, #24]	@ s_4->nhist, s_4->nhist
	mov	r3, r3, asr #1	@ D.6900, D.6900,
	str	r3, [r5, #32]	@ D.6900, s_4->offset
	ldr	r3, [sp, #32]	@ D.6902, %sfp
	str	r1, [r5, #28]	@ phase, s_4->phase
.L340:
	add	r1, r0, r3	@, D.6903, D.6902
	str	r7, [r5, #64]	@ rwingptr, s_4->rwingptr
	str	r8, [r5, #60]	@ lwingptr, s_4->lwingptr
	mov	r2, r2, asl #1	@, s_4->nhist,
	bl	memmove	@
	b	.L338	@
.L346:
	ldr	r4, [r5, #76]	@ D.6899, s_4->isForec2Out32bit
	cmp	r4, #0	@ D.6899,
	bne	.L317	@,
	ldr	lr, [r5, #28]	@ phase, s_4->phase
	mov	r3, r7	@, bInterleaved
	mov	r2, r6	@, insamps
	ldr	r0, [r5, #48]	@ s_4->pcmbuf, s_4->pcmbuf
	ldr	r6, [r5, #20]	@ nwing, s_4->nwing
	mov	r1, r8	@, inbuf
	str	lr, [sp, #16]	@ phase, %sfp
	ldr	lr, [r5, #72]	@ nextphase, s_4->nextphase
	str	ip, [sp]	@ D.6900,
	str	lr, [sp, #24]	@ nextphase, %sfp
	bl	cvtShortShort	@
	mov	r2, r6, asl #1	@ tmp379, nwing,
	ldr	r3, [r5, #48]	@ s_4->pcmbuf, s_4->pcmbuf
	ldr	r9, [r5, #32]	@ s_4->offset, s_4->offset
	rsb	r2, r2, #2	@ D.6904, tmp379,
	add	r3, r3, r2	@ pcmptr, s_4->pcmbuf, D.6904
	ldr	r7, [r5, #64]	@ rwingptr, s_4->rwingptr
	ldr	r8, [r5, #60]	@ lwingptr, s_4->lwingptr
	add	r9, r3, r9, lsl #1	@ yptr, pcmptr, s_4->offset,
	mov	r2, r0, asl #1	@ D.6902,,
	str	r2, [sp, #28]	@ D.6902, %sfp
	add	r3, r3, r2	@ pcmend, pcmptr, D.6902
	str	r3, [sp, #20]	@ pcmend, %sfp
	cmp	r3, r9	@ pcmend, yptr
	bls	.L318	@,
	ldr	r3, [sp, #12]	@ pOutpcm, %sfp
	add	r10, r3, #2	@ ivtmp.376, pOutpcm,
.L323:
	cmp	r6, #0	@ nwing,
	ble	.L319	@,
	mov	ip, #0	@ i,
	sub	r0, r9, #6	@ ivtmp.355, yptr,
	add	r1, r9, #4	@ ivtmp.357, yptr,
	mov	r3, ip	@ acc1, i
	mov	r2, ip	@ acc1, i
.L320:
	ldr	lr, [r7], #4	@ cx, MEM[base: rwingptr_170, offset: 4294967292B]
	ldr	r4, [r8], #4	@ cy, MEM[base: lwingptr_173, offset: 4294967292B]
	ldrsh	fp, [r0, #4]	@ x, MEM[base: _243, offset: 4B]
#APP
@ 759 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r2, fp, lr, r2	@ acc0, x, cx, acc1
@ 0 "" 2
	ldrsh	fp, [r1, #-4]	@ y, MEM[base: _244, offset: 4294967292B]
#APP
@ 759 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabb r3, fp, r4, r3	@ acc1, y, cy, acc1
@ 0 "" 2
	ldrsh	fp, [r0, #2]	@ x, MEM[base: _243, offset: 2B]
#APP
@ 769 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt r2, fp, lr, r2	@ acc1, x, cx, acc0
@ 0 "" 2
	ldrsh	lr, [r1, #-2]	@ y, MEM[base: _244, offset: 4294967294B]
#APP
@ 769 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smlabt r3, lr, r4, r3	@ acc1, y, cy, acc1
@ 0 "" 2
	add	ip, ip, #2	@ i, i,
	sub	r0, r0, #4	@ ivtmp.355, ivtmp.355,
	cmp	r6, ip	@ nwing, i
	add	r1, r1, #4	@ ivtmp.357, ivtmp.357,
	bgt	.L320	@,
	add	r3, r3, r2	@ acc0, acc1, acc1
	mov	r2, r10	@ pOutpcm, ivtmp.376
	add	r3, r3, #16384	@ D.6900, acc0,
	mov	r1, r3, asr #31	@ sign, D.6900,
	mov	r0, r3, asr #15	@ x, D.6900,
	cmp	r1, r3, asr #30	@ sign, D.6900,
	eorne	r3, r1, #32512	@ x, sign,
	uxtheq	r3, r0	@ D.6905, x
	eorne	r3, r3, #255	@ x, x,
	uxthne	r3, r3	@ D.6905, x
.L322:
	strh	r3, [r10, #-2]	@ movhi	@ D.6905, MEM[base: _99, offset: 4294967294B]
	add	r10, r10, #2	@ ivtmp.376, ivtmp.376,
	ldr	r1, [sp, #16]	@ phase, %sfp
	ldr	r3, [sp, #24]	@ nextphase, %sfp
	ldr	r7, [r5, #68]	@ D.6903, s_4->filter
	ldr	r3, [r3, r1, asl #2]	@ phase, *_208
	ubfx	r8, r3, #8, #12	@ D.6900, phase,,
	and	r0, r3, #254	@ D.6902, phase,
	mov	r1, r3, lsr #20	@ D.6910, phase,
	add	r9, r9, r0	@ yptr, yptr, D.6902
	mul	r8, r8, r6	@ D.6900, D.6900, nwing
	ldr	r0, [sp, #20]	@ pcmend, %sfp
	mul	r1, r1, r6	@ D.6900, D.6910, nwing
	cmp	r0, r9	@ pcmend, yptr
	mov	r3, r3, asr #20	@ phase, phase,
	str	r3, [sp, #16]	@ phase, %sfp
	add	r8, r7, r8, lsl #1	@ lwingptr, D.6903, D.6900,
	add	r7, r7, r1, lsl #1	@ rwingptr, D.6903, D.6900,
	bhi	.L323	@,
	ldr	r3, [sp, #12]	@ pOutpcm, %sfp
	rsb	r2, r3, r2	@ D.6900, pOutpcm, pOutpcm
	mov	r4, r2, asr #1	@ D.6899, D.6900,
.L318:
	ldr	r3, [sp, #20]	@ pcmend, %sfp
	ldr	r1, [sp, #16]	@ phase, %sfp
	rsb	r3, r3, r9	@ D.6900, pcmend, yptr
	ldr	r0, [r5, #44]	@ D.6903, s_4->histbuf
	ldr	r2, [r5, #24]	@ s_4->nhist, s_4->nhist
	mov	r3, r3, asr #1	@ D.6900, D.6900,
	str	r1, [r5, #28]	@ phase, s_4->phase
	str	r3, [r5, #32]	@ D.6900, s_4->offset
	ldr	r3, [sp, #28]	@ D.6902, %sfp
	b	.L340	@
.L300:
	mov	r4, #-2147483647	@ D.6899,
	b	.L338	@
.L319:
	mov	r2, r10	@ pOutpcm, ivtmp.376
	mov	r3, #0	@ D.6905,
	b	.L322	@
.L327:
	mov	r4, #-2147483643	@ D.6899,
	b	.L338	@
.L341:
	mov	r4, #-2147483642	@ D.6899,
	b	.L338	@
.L310:
	ldrh	r3, [sp, #36]	@, %sfp
	mov	r1, fp	@ pOutpcm, ivtmp.347
	mov	r2, #0	@ x,
	strh	r3, [fp, #-4]	@ movhi	@ tmp506, MEM[base: _100, offset: 4294967292B]
	b	.L314	@
.L325:
	mov	r4, #-2147483646	@ D.6899,
	b	.L338	@
	.fnend
	.size	ResamplerProcessFrame, .-ResamplerProcessFrame
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
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
