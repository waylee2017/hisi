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
	.file	"dsp_mem.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dsp_mem)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/mem/.dsp_mem.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/mem/dsp_mem.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/mem/dsp_mem.o
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
	.global	HI_ADSP_V_FREE
	.type	HI_ADSP_V_FREE, %function
HI_ADSP_V_FREE:
	.fnstart
.LFB634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r1, #0	@ pMemAddr, pMemAddr
	bxeq	lr	@
	b	vfree	@
	.fnend
	.size	HI_ADSP_V_FREE, .-HI_ADSP_V_FREE
	.align	2
	.global	HI_ADSP_VFREE_Aligned
	.type	HI_ADSP_VFREE_Aligned, %function
HI_ADSP_VFREE_Aligned:
	.fnstart
.LFB639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pMemAddr
	bxeq	lr	@
	ldrb	r3, [r1, #-1]	@ zero_extendqisi2	@ tmp137,
	rsb	r1, r3, r1	@, tmp137, pMemAddr
	b	HI_ADSP_V_FREE	@
	.fnend
	.size	HI_ADSP_VFREE_Aligned, .-HI_ADSP_VFREE_Aligned
	.align	2
	.global	HI_ADSP_V_MALLOC
	.type	HI_ADSP_V_MALLOC, %function
HI_ADSP_V_MALLOC:
	.fnstart
.LFB633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1	@, u32Size
	b	vmalloc	@
	.fnend
	.size	HI_ADSP_V_MALLOC, .-HI_ADSP_V_MALLOC
	.global	__aeabi_uidivmod
	.align	2
	.global	HI_ADSP_VMALLOC_Aligned
	.type	HI_ADSP_VMALLOC_Aligned, %function
HI_ADSP_VMALLOC_Aligned:
	.fnstart
.LFB638:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #1	@ iAlignToBytes,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ u32ModuleID, u32ModuleID
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r1	@ u32Size, u32Size
	bhi	.L17	@,
.L11:
	mov	r0, #0	@ retBuffer,
.L14:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L17:
	cmp	r2, #256	@ iAlignToBytes,
	bhi	.L11	@,
	mov	r3, #0	@ iLog2,
.L12:
	add	r3, r3, #1	@ iLog2, iLog2,
	mov	r1, r2, lsr r3	@ tmp143, iAlignToBytes,
	cmp	r1, #1	@ tmp143,
	bhi	.L12	@,
	mvn	r6, #0	@ tmp144,
	mov	r6, r6, asl r3	@ mask, tmp144,
	bics	r3, r2, r6	@, iAlignToBytes, mask
	bne	.L11	@,
	cmp	r2, r4	@ iAlignToBytes, u32Size
	bcs	.L13	@,
	mov	r1, r2	@, iAlignToBytes
	mov	r0, r4	@, u32Size
	str	r2, [sp, #4]	@,
	bl	__aeabi_uidivmod	@
	ldr	r2, [sp, #4]	@,
	cmp	r1, #0	@,
	bne	.L11	@,
.L13:
	add	r1, r2, r4	@, iAlignToBytes, u32Size
	mov	r0, r5	@, u32ModuleID
	str	r2, [sp, #4]	@,
	bl	HI_ADSP_V_MALLOC	@
	ldr	r2, [sp, #4]	@,
	subs	r3, r0, #0	@ buffer,
	beq	.L11	@,
	add	r2, r3, r2	@ tmp154, buffer, iAlignToBytes
	and	r0, r2, r6	@ retBuffer, tmp154, mask
	rsb	r3, r3, r0	@ tmp157, buffer, retBuffer
	strb	r3, [r0, #-1]	@ tmp157,
	b	.L14	@
	.fnend
	.size	HI_ADSP_VMALLOC_Aligned, .-HI_ADSP_VMALLOC_Aligned
	.align	2
	.global	HI_ADSP_FREE
	.type	HI_ADSP_FREE, %function
HI_ADSP_FREE:
	.fnstart
.LFB632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r1, #0	@ pMemAddr, pMemAddr
	bxeq	lr	@
	b	kfree	@
	.fnend
	.size	HI_ADSP_FREE, .-HI_ADSP_FREE
	.align	2
	.global	HI_ADSP_FREE_Aligned
	.type	HI_ADSP_FREE_Aligned, %function
HI_ADSP_FREE_Aligned:
	.fnstart
.LFB637:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pMemAddr
	bxeq	lr	@
	ldrb	r3, [r1, #-1]	@ zero_extendqisi2	@ tmp137,
	rsb	r1, r3, r1	@, tmp137, pMemAddr
	b	HI_ADSP_FREE	@
	.fnend
	.size	HI_ADSP_FREE_Aligned, .-HI_ADSP_FREE_Aligned
	.align	2
	.global	HI_ADSP_MALLOC
	.type	HI_ADSP_MALLOC, %function
HI_ADSP_MALLOC:
	.fnstart
.LFB631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1	@, u32Size
	mov	r1, #208	@,
	b	__kmalloc	@
	.fnend
	.size	HI_ADSP_MALLOC, .-HI_ADSP_MALLOC
	.align	2
	.global	HI_ADSP_MALLOC_Aligned
	.type	HI_ADSP_MALLOC_Aligned, %function
HI_ADSP_MALLOC_Aligned:
	.fnstart
.LFB636:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #3	@ iAlignToBytes,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ u32ModuleID, u32ModuleID
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r1	@ u32Size, u32Size
	bhi	.L33	@,
.L27:
	mov	r0, #0	@ retBuffer,
.L30:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L33:
	cmp	r2, #256	@ iAlignToBytes,
	bhi	.L27	@,
	mov	r3, #0	@ iLog2,
.L28:
	add	r3, r3, #1	@ iLog2, iLog2,
	mov	r1, r2, lsr r3	@ tmp142, iAlignToBytes,
	cmp	r1, #1	@ tmp142,
	bhi	.L28	@,
	mvn	r6, #0	@ tmp143,
	mov	r6, r6, asl r3	@ mask, tmp143,
	bics	r3, r2, r6	@, iAlignToBytes, mask
	bne	.L27	@,
	cmp	r2, r4	@ iAlignToBytes, u32Size
	bcs	.L29	@,
	mov	r1, r2	@, iAlignToBytes
	mov	r0, r4	@, u32Size
	str	r2, [sp, #4]	@,
	bl	__aeabi_uidivmod	@
	ldr	r2, [sp, #4]	@,
	cmp	r1, #0	@,
	bne	.L27	@,
.L29:
	add	r1, r2, r4	@, iAlignToBytes, u32Size
	mov	r0, r5	@, u32ModuleID
	str	r2, [sp, #4]	@,
	bl	HI_ADSP_MALLOC	@
	ldr	r2, [sp, #4]	@,
	subs	r3, r0, #0	@ buffer,
	beq	.L27	@,
	add	r2, r3, r2	@ tmp153, buffer, iAlignToBytes
	and	r0, r6, r2	@ retBuffer, mask, tmp153
	rsb	r3, r3, r0	@ tmp156, buffer, retBuffer
	strb	r3, [r0, #-1]	@ tmp156,
	b	.L30	@
	.fnend
	.size	HI_ADSP_MALLOC_Aligned, .-HI_ADSP_MALLOC_Aligned
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
