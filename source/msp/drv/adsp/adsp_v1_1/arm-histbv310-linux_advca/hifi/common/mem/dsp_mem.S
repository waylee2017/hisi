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
	.file	"dsp_mem.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(dsp_mem)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/mem/.dsp_mem.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/mem/dsp_mem.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/mem/dsp_mem.o
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
	.global	HI_ADSP_MALLOC
	.type	HI_ADSP_MALLOC, %function
HI_ADSP_MALLOC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1	@ u32Size, u32Size
	mov	r1, #192	@,
	movt	r1, 576	@,
	b	__kmalloc	@
	.fnend
	.size	HI_ADSP_MALLOC, .-HI_ADSP_MALLOC
	.align	2
	.global	HI_ADSP_FREE
	.type	HI_ADSP_FREE, %function
HI_ADSP_FREE:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r1, #0	@ pMemAddr, pMemAddr
	bxeq	lr	@
	b	kfree	@
	.fnend
	.size	HI_ADSP_FREE, .-HI_ADSP_FREE
	.align	2
	.global	HI_ADSP_V_MALLOC
	.type	HI_ADSP_V_MALLOC, %function
HI_ADSP_V_MALLOC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1	@, u32Size
	b	vmalloc	@
	.fnend
	.size	HI_ADSP_V_MALLOC, .-HI_ADSP_V_MALLOC
	.align	2
	.global	HI_ADSP_V_FREE
	.type	HI_ADSP_V_FREE, %function
HI_ADSP_V_FREE:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r1, #0	@ pMemAddr, pMemAddr
	bxeq	lr	@
	b	vfree	@
	.fnend
	.size	HI_ADSP_V_FREE, .-HI_ADSP_V_FREE
	.global	__aeabi_uidivmod
	.align	2
	.global	HI_ADSP_MALLOC_Aligned
	.type	HI_ADSP_MALLOC_Aligned, %function
HI_ADSP_MALLOC_Aligned:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r3, r2, #4	@ D.11635, iAlignToBytes,
	cmp	r3, #252	@ D.11635,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bhi	.L13	@,
	cmp	r2, #1	@ iAlignToBytes,
	bls	.L15	@,
	mov	r3, #0	@ iLog2,
.L12:
	add	r3, r3, #1	@ iLog2, iLog2,
	mov	ip, r2, lsr r3	@ D.11635, iAlignToBytes,
	cmp	ip, #1	@ D.11635,
	bhi	.L12	@,
	mvn	r5, #0	@ tmp135,
	mov	r5, r5, asl r3	@ mask, tmp135,
	bics	r3, r2, r5	@ tmp152, iAlignToBytes, mask
	bne	.L13	@,
.L11:
	cmp	r2, r1	@ iAlignToBytes, u32Size
	mov	r6, r1	@ u32Size, u32Size
	mov	r7, r0	@ u32ModuleID, u32ModuleID
	mov	r4, r2	@ iAlignToBytes, iAlignToBytes
	bcs	.L14	@,
	mov	r1, r2	@, iAlignToBytes
	mov	r0, r6	@, u32Size
	bl	__aeabi_uidivmod	@
	cmp	r1, #0	@,
	bne	.L13	@,
.L14:
	add	r1, r4, r6	@, iAlignToBytes, u32Size
	mov	r0, r7	@, u32ModuleID
	bl	HI_ADSP_MALLOC	@
	cmp	r0, #0	@ buffer
	beq	.L13	@,
	add	r2, r0, r4	@ D.11636, buffer, iAlignToBytes
	and	r2, r2, r5	@ D.11635, D.11636, mask
	rsb	r3, r0, r2	@ D.11637, buffer, D.11635
	mov	r0, r2	@ D.11634, D.11635
	strb	r3, [r2, #-1]	@ D.11637, MEM[(HI_U8 *)retBuffer_18 + 4294967295B]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L13:
	mov	r0, #0	@ D.11634,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L15:
	mvn	r5, #0	@ mask,
	b	.L11	@
	.fnend
	.size	HI_ADSP_MALLOC_Aligned, .-HI_ADSP_MALLOC_Aligned
	.align	2
	.global	HI_ADSP_FREE_Aligned
	.type	HI_ADSP_FREE_Aligned, %function
HI_ADSP_FREE_Aligned:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pMemAddr
	bxeq	lr	@
	ldrb	r0, [r1, #-1]	@ zero_extendqisi2	@ D.11641, MEM[(HI_U8 *)pMemAddr_2(D) + 4294967295B]
	subs	r0, r1, r0	@ realBuffer, pMemAddr, D.11641
	bxeq	lr	@
	b	kfree	@
	.fnend
	.size	HI_ADSP_FREE_Aligned, .-HI_ADSP_FREE_Aligned
	.align	2
	.global	HI_ADSP_VMALLOC_Aligned
	.type	HI_ADSP_VMALLOC_Aligned, %function
HI_ADSP_VMALLOC_Aligned:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r3, r2, #2	@ D.11647, iAlignToBytes,
	cmp	r3, #254	@ D.11647,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L34	@,
	cmp	r2, #1	@ iAlignToBytes,
	bls	.L36	@,
	mov	r3, #0	@ iLog2,
.L33:
	add	r3, r3, #1	@ iLog2, iLog2,
	mov	ip, r2, lsr r3	@ D.11647, iAlignToBytes,
	cmp	ip, #1	@ D.11647,
	bhi	.L33	@,
	mvn	r5, #0	@ tmp135,
	mov	r5, r5, asl r3	@ mask, tmp135,
	bics	r3, r2, r5	@ tmp151, iAlignToBytes, mask
	bne	.L34	@,
.L32:
	cmp	r2, r1	@ iAlignToBytes, u32Size
	mov	r6, r1	@ u32Size, u32Size
	mov	r4, r2	@ iAlignToBytes, iAlignToBytes
	bcs	.L35	@,
	mov	r1, r2	@, iAlignToBytes
	mov	r0, r6	@, u32Size
	bl	__aeabi_uidivmod	@
	cmp	r1, #0	@,
	bne	.L34	@,
.L35:
	add	r0, r4, r6	@, iAlignToBytes, u32Size
	bl	vmalloc	@
	cmp	r0, #0	@ buffer
	beq	.L34	@,
	add	r2, r0, r4	@ D.11648, buffer, iAlignToBytes
	and	r2, r2, r5	@ D.11647, D.11648, mask
	rsb	r3, r0, r2	@ D.11649, buffer, D.11647
	mov	r0, r2	@ D.11646, D.11647
	strb	r3, [r2, #-1]	@ D.11649, MEM[(HI_U8 *)retBuffer_16 + 4294967295B]
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L34:
	mov	r0, #0	@ D.11646,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L36:
	mvn	r5, #0	@ mask,
	b	.L32	@
	.fnend
	.size	HI_ADSP_VMALLOC_Aligned, .-HI_ADSP_VMALLOC_Aligned
	.align	2
	.global	HI_ADSP_VFREE_Aligned
	.type	HI_ADSP_VFREE_Aligned, %function
HI_ADSP_VFREE_Aligned:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pMemAddr
	bxeq	lr	@
	ldrb	r0, [r1, #-1]	@ zero_extendqisi2	@ D.11653, MEM[(HI_U8 *)pMemAddr_2(D) + 4294967295B]
	subs	r0, r1, r0	@ realBuffer, pMemAddr, D.11653
	bxeq	lr	@
	b	vfree	@
	.fnend
	.size	HI_ADSP_VFREE_Aligned, .-HI_ADSP_VFREE_Aligned
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
