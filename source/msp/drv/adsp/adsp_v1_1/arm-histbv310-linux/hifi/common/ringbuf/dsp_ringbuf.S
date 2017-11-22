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
	.file	"dsp_ringbuf.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -I arch/arm/include/generated -I include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -I arch/arm/include/generated/uapi
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -I include/generated/uapi -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/component/ha_codec/include
@ -I -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv330
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_SND_AOE_SWSIMULATE_SUPPORT -D INTERLEAVED_OUTPUT
@ -D HI_SND_AVC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(dsp_ringbuf)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/ringbuf/.dsp_ringbuf.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/ringbuf/dsp_ringbuf.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/ringbuf/dsp_ringbuf.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
@ -fno-common -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fverbose-asm
@ -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
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
@ -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
@ -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
@ -ftree-switch-conversion -ftree-tail-merge -ftree-ter -funit-at-a-time
@ -funwind-tables -fverbose-asm -fzero-initialized-in-bss -marm -mglibc
@ -mlittle-endian -mlra -mpic-data-is-text-relative -msched-prolog
@ -mvectorize-with-neon-quad -mword-relocations

	.text
	.align	2
	.global	RBUF_Create
	.type	RBUF_Create, %function
RBUF_Create:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ phRBUF, phRBUF
	mov	r5, r1	@ pstAttr, pstAttr
	mov	r0, #17	@,
	mov	r1, #84	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ __p,
	beq	.L2	@,
	mov	r1, #84	@,
	bl	__memzero	@
	mov	lr, r5	@ pstAttr, pstAttr
	ldmia	lr!, {r0, r1, r2, r3}	@ pstAttr,,,,
	mov	ip, r4	@ __p, __p
	stmia	ip!, {r0, r1, r2, r3}	@ __p,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ pstAttr,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ __p,,,,
	ldr	r3, [lr]	@ *pstAttr_9(D), *pstAttr_9(D)
	str	r3, [ip]	@ *pstAttr_9(D), MEM[(struct RBUF_STATE_S *)__p_7].stAttr
	ldr	r3, [r5]	@ pstAttr_9(D)->bExtMem, pstAttr_9(D)->bExtMem
	cmp	r3, #0	@ pstAttr_9(D)->bExtMem,
	beq	.L3	@,
	ldr	r3, [r4, #4]	@ D.5580, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufAddr
	ldr	r0, [r4, #8]	@ D.5580, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufSize
.L4:
	ldr	r1, [r4, #12]	@ D.5578, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufWptr
	mov	r2, #0	@ tmp132,
	ldr	ip, [r4, #16]	@ D.5578, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufRptr
	str	r3, [r4, #44]	@ D.5580, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].pu8Data
	str	r0, [r4, #48]	@ D.5580, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].u32Lenght
	str	ip, [r4, #40]	@ D.5578, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].pu32Read
	str	r1, [r4, #36]	@ D.5578, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].pu32Write
	str	r2, [r1]	@ tmp132, MEM[(volatile HI_U32 *)_21]
	ldr	r3, [r4, #40]	@ D.5579, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].pu32Read
	str	r2, [r3]	@ tmp132, *_34
	str	r4, [r6]	@ __p, *phRBUF_29(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3:
	ldr	r2, [r5, #24]	@, pstAttr_9(D)->uFrameSize
	mov	r0, #17	@,
	ldr	r1, [r5, #8]	@, pstAttr_9(D)->uBufSize
	bl	HI_ADSP_VMALLOC_Aligned	@
	cmp	r0, #0	@ rbfbase
	beq	.L2	@,
	mov	r3, r0	@ D.5580, rbfbase
	str	r0, [r4, #4]	@ D.5580, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufAddr
	ldr	r0, [r5, #8]	@ D.5580, pstAttr_9(D)->uBufSize
	str	r0, [r4, #8]	@ D.5580, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufSize
	b	.L4	@
.L2:
	mov	r1, r4	@, __p
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	mov	r1, #0	@,
	mov	r0, #17	@,
	bl	HI_ADSP_FREE_Aligned	@
	mov	r3, #0	@ tmp134,
	str	r3, [r6]	@ tmp134, *phRBUF_29(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	RBUF_Create, .-RBUF_Create
	.align	2
	.global	RBUF_Create_EXT
	.type	RBUF_Create_EXT, %function
RBUF_Create_EXT:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ phRBUF, phRBUF
	mov	r5, r1	@ pstAttr, pstAttr
	mov	r0, #17	@,
	mov	r1, #84	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ __p,
	beq	.L15	@,
	mov	r1, #84	@,
	bl	__memzero	@
	mov	lr, r5	@ pstAttr, pstAttr
	ldmia	lr!, {r0, r1, r2, r3}	@ pstAttr,,,,
	mov	ip, r4	@ __p, __p
	stmia	ip!, {r0, r1, r2, r3}	@ __p,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ pstAttr,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ __p,,,,
	ldr	r3, [lr]	@ *pstAttr_9(D), *pstAttr_9(D)
	str	r3, [ip]	@ *pstAttr_9(D), MEM[(struct RBUF_STATE_S *)__p_7].stAttr
	ldr	r3, [r5]	@ pstAttr_9(D)->bExtMem, pstAttr_9(D)->bExtMem
	cmp	r3, #0	@ pstAttr_9(D)->bExtMem,
	beq	.L16	@,
	ldr	r3, [r4, #4]	@ D.5586, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufAddr
	ldr	r2, [r4, #8]	@ D.5586, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufSize
.L17:
	ldr	r0, [r4, #16]	@ D.5585, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufRptr
	ldr	r1, [r4, #12]	@ MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufWptr, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufWptr
	str	r3, [r4, #44]	@ D.5586, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].pu8Data
	str	r2, [r4, #48]	@ D.5586, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].u32Lenght
	str	r0, [r4, #40]	@ D.5585, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].pu32Read
	str	r1, [r4, #36]	@ MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufWptr, MEM[(struct CIRC_BUF_S *)__p_7 + 36B].pu32Write
	str	r4, [r6]	@ __p, *phRBUF_29(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L16:
	ldr	r2, [r5, #24]	@, pstAttr_9(D)->uFrameSize
	mov	r0, #17	@,
	ldr	r1, [r5, #8]	@, pstAttr_9(D)->uBufSize
	bl	HI_ADSP_VMALLOC_Aligned	@
	cmp	r0, #0	@ rbfbase
	beq	.L15	@,
	str	r0, [r4, #4]	@ D.5586, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufAddr
	mov	r3, r0	@ D.5586, rbfbase
	ldr	r2, [r5, #8]	@ D.5586, pstAttr_9(D)->uBufSize
	str	r2, [r4, #8]	@ D.5586, MEM[(struct RBUF_STATE_S *)__p_7].stAttr.uBufSize
	b	.L17	@
.L15:
	mov	r1, r4	@, __p
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	mov	r1, #0	@,
	mov	r0, #17	@,
	bl	HI_ADSP_FREE_Aligned	@
	mov	r3, #0	@ tmp132,
	str	r3, [r6]	@ tmp132, *phRBUF_29(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	RBUF_Create_EXT, .-RBUF_Create_EXT
	.align	2
	.global	RBUF_Destroy
	.type	RBUF_Destroy, %function
RBUF_Destroy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ hRBUF
	bxeq	lr	@
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ hRBUF, hRBUF
	ldr	r3, [r0]	@ state_5->stAttr.bExtMem, state_5->stAttr.bExtMem
	cmp	r3, #0	@ state_5->stAttr.bExtMem,
	beq	.L30	@,
	mov	r1, r4	@, hRBUF
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
.L30:
	ldr	r1, [r0, #4]	@, state_5->stAttr.uBufAddr
	mov	r0, #17	@,
	bl	HI_ADSP_VFREE_Aligned	@
	mov	r1, r4	@, hRBUF
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
	.fnend
	.size	RBUF_Destroy, .-RBUF_Destroy
	.align	2
	.global	RBUF_ReadData
	.type	RBUF_ReadData, %function
RBUF_ReadData:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ hRBUF
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r6, r0	@ hRBUF, hRBUF
	mov	ip, r1	@ pu32Dest, pu32Dest
	ldr	r0, [r0, #40]	@ D.5595, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Read
	ldr	r1, [r6, #36]	@ D.5595, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Write
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r6, #56]	@ state_6->stProc.uTryReadCnt, state_6->stProc.uTryReadCnt
	mov	lr, #0	@ tmp146,
	str	lr, [sp, #4]	@ tmp146, u32RdPos
	add	r3, r3, #1	@ D.5594, state_6->stProc.uTryReadCnt,
	str	r3, [r6, #56]	@ D.5594, state_6->stProc.uTryReadCnt
	ldr	r7, [r0]	@ u32ReadPos, *_19
	ldr	r3, [r1]	@ u32WritePos, *_21
	cmp	r7, r3	@ u32ReadPos, u32WritePos
	bhi	.L33	@,
	add	r1, r2, r7	@ D.5594, u32DestSize, u32ReadPos
	cmp	r3, r1	@ u32WritePos, D.5594
	rsbcc	r4, r7, r3	@ D.5597, u32ReadPos, u32WritePos
	bcs	.L45	@,
.L34:
	cmp	r4, #0	@ D.5597,
	moveq	r5, r4	@ D.5597, D.5597
	beq	.L36	@,
	ldr	r1, [r6, #44]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data
	mov	r2, r4	@, D.5597
	mov	r0, ip	@, pu32Dest
	mov	r5, r4	@ D.5597, tmp2
	add	r1, r1, r7	@, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, u32ReadPos
	mov	r4, #0	@ D.5597,
	bl	memcpy	@
.L41:
	ldr	r3, [r6, #48]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght
	add	r7, r7, r5	@ u32ReadPos, u32ReadPos, D.5597
	cmp	r3, r7	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght, u32ReadPos
	beq	.L51	@,
.L37:
	ldr	r3, [r6, #40]	@ D.5595, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Read
	adds	r0, r5, r4	@ D.5597, D.5597, D.5597
	str	r7, [r3]	@ u32ReadPos, *_40
	ldreq	r3, [r6, #60]	@ state_6->stProc.uBufEmptyCnt, state_6->stProc.uBufEmptyCnt
	addeq	r3, r3, #1	@ D.5594, state_6->stProc.uBufEmptyCnt,
	streq	r3, [r6, #60]	@ D.5594, state_6->stProc.uBufEmptyCnt
.L38:
	ldr	r3, [r6, #52]	@ state_6->stProc.uTotalByteRead, state_6->stProc.uTotalByteRead
	add	r3, r3, r0	@ D.5594, state_6->stProc.uTotalByteRead, D.5597
	str	r3, [r6, #52]	@ D.5594, state_6->stProc.uTotalByteRead
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L33:
	ldr	r0, [r6, #48]	@ D.5594, MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght
	add	r1, r2, r7	@ D.5594, u32DestSize, u32ReadPos
	cmp	r1, r0	@ D.5594, D.5594
	bls	.L45	@,
	rsb	r5, r7, r0	@ D.5597, u32ReadPos, D.5594
	rsb	r4, r5, r2	@ D.5594, D.5597, u32DestSize
	cmp	r4, r3	@ D.5594, u32WritePos
	movcs	r4, r3	@ D.5597, u32WritePos
	cmp	r5, #0	@ D.5597,
	beq	.L36	@,
	ldr	r1, [r6, #44]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data
	mov	r2, r5	@, D.5597
	mov	r0, ip	@, pu32Dest
	add	r1, r1, r7	@, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, u32ReadPos
	bl	memcpy	@
	cmp	r4, #0	@ D.5597,
	add	r0, r0, r5	@ pu32Dest, pu32Dest, D.5597
	beq	.L41	@,
	ldr	r3, [sp, #4]	@ D.5594, u32RdPos
	mov	r2, r4	@, D.5597
	ldr	r1, [r6, #44]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data
	add	r7, r3, r4	@ u32ReadPos, D.5594, D.5597
	add	r1, r1, r3	@, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, D.5594
	bl	memcpy	@
.L36:
	ldr	r3, [r6, #48]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght
	cmp	r3, r7	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght, u32ReadPos
	moveq	r7, #0	@ u32ReadPos,
	b	.L37	@
.L45:
	mov	r4, r2	@ D.5597, u32DestSize
	b	.L34	@
.L51:
	ldr	r3, [r6, #40]	@ D.5595, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Read
	mov	r2, #0	@ tmp169,
	mov	r0, r5	@ D.5597, D.5597
	str	r2, [r3]	@ tmp169, *_46
	b	.L38	@
	.fnend
	.size	RBUF_ReadData, .-RBUF_ReadData
	.align	2
	.global	RBUF_WriteData
	.type	RBUF_WriteData, %function
RBUF_WriteData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r4, r0, #0	@ hRBUF, hRBUF
	beq	.L64	@,
	ldr	ip, [r4, #40]	@ D.5611, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu32Read
	mov	r0, r2	@ u3SrcLen, u3SrcLen
	ldr	r3, [r4, #36]	@ D.5611, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu32Write
	mov	r8, r1	@ pu32Src, pu32Src
	ldr	r2, [r4, #72]	@ state_7->stProc.uTryWriteCnt, state_7->stProc.uTryWriteCnt
	add	r2, r2, #1	@ D.5610, state_7->stProc.uTryWriteCnt,
	str	r2, [r4, #72]	@ D.5610, state_7->stProc.uTryWriteCnt
	ldr	r6, [ip]	@ u32ReadPos, *_19
	ldr	r9, [r3]	@ u32WritePos, *_21
	cmp	r6, r9	@ u32ReadPos, u32WritePos
	bhi	.L54	@,
	ldr	r5, [r4, #48]	@ D.5610, MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght
	add	r2, r0, r9	@ D.5610, u3SrcLen, u32WritePos
	cmp	r5, r2	@ D.5610, D.5610
	bcs	.L66	@,
	rsb	r5, r9, r5	@ D.5610, u32WritePos, D.5610
	cmp	r5, #0	@ D.5610,
	rsb	r7, r5, r0	@ u32WritePos, D.5610, u3SrcLen
	moveq	r6, r7	@ D.5613, u32WritePos
	moveq	r7, r9	@ u32WritePos, u32WritePos
	beq	.L57	@,
	ldr	r0, [r4, #44]	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data
	mov	r2, r5	@, D.5610
	add	r0, r0, r9	@, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data, u32WritePos
	bl	memcpy	@
	cmp	r7, #0	@ u32WritePos,
	add	r1, r8, r5	@ pu32Src, pu32Src, D.5610
	beq	.L72	@,
	mov	r2, r7	@, u32WritePos
	ldr	r0, [r4, #44]	@, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data
	bl	memcpy	@
	ldr	r3, [r4, #36]	@ D.5611, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu32Write
	mov	r6, r7	@ D.5613, u32WritePos
.L57:
	ldr	r2, [r4, #48]	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght
	cmp	r2, r7	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght, u32WritePos
	movls	r7, #0	@ u32WritePos,
.L58:
	adds	r0, r5, r6	@ D.5613, D.5610, D.5613
	str	r7, [r3]	@ u32WritePos, *_77
	ldreq	r3, [r4, #76]	@ state_7->stProc.uBufFullCnt, state_7->stProc.uBufFullCnt
	addeq	r3, r3, #1	@ D.5610, state_7->stProc.uBufFullCnt,
	streq	r3, [r4, #76]	@ D.5610, state_7->stProc.uBufFullCnt
.L59:
	ldr	r3, [r4, #68]	@ state_7->stProc.uTotalByteWrite, state_7->stProc.uTotalByteWrite
	add	r3, r3, r0	@ D.5610, state_7->stProc.uTotalByteWrite, D.5613
	str	r3, [r4, #68]	@ D.5610, state_7->stProc.uTotalByteWrite
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L54:
	add	r2, r0, r9	@ D.5610, u3SrcLen, u32WritePos
	cmp	r6, r2	@ u32ReadPos, D.5610
	rsbls	r6, r9, r6	@ D.5613, u32WritePos, u32ReadPos
	bhi	.L66	@,
.L55:
	cmp	r6, #0	@ D.5613,
	moveq	r7, r9	@ u32WritePos, u32WritePos
	moveq	r5, r6	@ D.5610, D.5613
	beq	.L57	@,
	ldr	r0, [r4, #44]	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data
	mov	r2, r6	@, D.5613
	mov	r1, r8	@, pu32Src
	mov	r5, r6	@ D.5610, tmp2
	add	r0, r0, r9	@, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data, u32WritePos
	mov	r6, #0	@ D.5613,
	bl	memcpy	@
.L62:
	ldr	r2, [r4, #48]	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght
	add	r7, r9, r5	@ u32WritePos, u32WritePos, D.5610
	ldr	r3, [r4, #36]	@ D.5611, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu32Write
	cmp	r2, r7	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght, u32WritePos
	bhi	.L58	@,
	mov	r2, #0	@ tmp166,
	mov	r0, r5	@ D.5613, D.5610
	str	r2, [r3]	@ tmp166, *_89
	b	.L59	@
.L66:
	mov	r6, r0	@ D.5613, u3SrcLen
	b	.L55	@
.L64:
	mov	r0, r2	@ D.5613, u3SrcLen
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L72:
	mov	r6, r7	@ D.5613, u32WritePos
	b	.L62	@
	.fnend
	.size	RBUF_WriteData, .-RBUF_WriteData
	.align	2
	.global	RBUF_ReadDataComplete
	.type	RBUF_ReadDataComplete, %function
RBUF_ReadDataComplete:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ hRBUF
	bxeq	lr	@
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	lr, [r0, #40]	@ D.5629, MEM[(struct CIRC_BUF_S *)state_4 + 36B].pu32Read
	ldr	r3, [r0, #36]	@ D.5629, MEM[(struct CIRC_BUF_S *)state_4 + 36B].pu32Write
	ldr	r2, [lr]	@ u32RdLen$1, *_11
	ldr	ip, [r3]	@ u32RdLen$1, *_13
	cmp	r2, ip	@ u32RdLen$1, u32RdLen$1
	bhi	.L75	@,
	add	r3, r1, r2	@ D.5628, amountRead, u32RdLen$1
	cmp	ip, r3	@ u32RdLen$1, D.5628
	rsbcc	r5, r2, ip	@ amountRead, u32RdLen$1, u32RdLen$1
	ldrcs	r4, [r0, #48]	@ D.5628, MEM[(struct CIRC_BUF_S *)state_4 + 36B].u32Lenght
	movcs	r5, r1	@ amountRead, amountRead
	ldrcc	r4, [r0, #48]	@ D.5628, MEM[(struct CIRC_BUF_S *)state_4 + 36B].u32Lenght
.L77:
	cmp	r5, #0	@ amountRead,
	beq	.L90	@,
.L82:
	add	r3, r5, r2	@ u32RdLen$1, amountRead, u32RdLen$1
.L79:
	cmp	r4, r3	@ D.5628, u32RdLen$1
	moveq	r3, #0	@ u32RdLen$1,
	str	r3, [lr]	@ u32RdLen$1, *_11
	ldr	r3, [r0, #52]	@ state_4->stProc.uTotalByteRead, state_4->stProc.uTotalByteRead
	add	r1, r3, r1	@ D.5628, state_4->stProc.uTotalByteRead, amountRead
	str	r1, [r0, #52]	@ D.5628, state_4->stProc.uTotalByteRead
	ldmfd	sp!, {r4, r5, pc}	@
.L75:
	ldr	r4, [r0, #48]	@ D.5628, MEM[(struct CIRC_BUF_S *)state_4 + 36B].u32Lenght
	add	r3, r1, r2	@ D.5628, amountRead, u32RdLen$1
	cmp	r3, r4	@ D.5628, D.5628
	bls	.L83	@,
	rsb	r5, r2, r4	@ amountRead, u32RdLen$1, D.5628
	rsb	r3, r5, r1	@ u32RdLen$1, amountRead, amountRead
	cmp	r3, ip	@ u32RdLen$1, u32RdLen$1
	movcs	r3, ip	@ u32RdLen$1, u32RdLen$1
	cmp	r5, #0	@ amountRead,
	beq	.L90	@,
	cmp	r3, #0	@ u32RdLen$1,
	bne	.L79	@,
	b	.L82	@
.L83:
	mov	r5, r1	@ amountRead, amountRead
	b	.L77	@
.L90:
	mov	r3, r2	@ u32RdLen$1, u32RdLen$1
	b	.L79	@
	.fnend
	.size	RBUF_ReadDataComplete, .-RBUF_ReadDataComplete
	.align	2
	.global	RBUF_WriteDataComplete
	.type	RBUF_WriteDataComplete, %function
RBUF_WriteDataComplete:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ hRBUF
	bxeq	lr	@
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #40]	@ D.5637, MEM[(struct CIRC_BUF_S *)state_4 + 36B].pu32Read
	ldr	r2, [r0, #36]	@ D.5637, MEM[(struct CIRC_BUF_S *)state_4 + 36B].pu32Write
	ldr	lr, [r0, #48]	@ D.5636, MEM[(struct CIRC_BUF_S *)state_4 + 36B].u32Lenght
	ldr	r3, [r3]	@ u32ReadPos, *_11
	ldr	ip, [r2]	@ u32WtPos$0, *_13
	cmp	r3, ip	@ u32ReadPos, u32WtPos$0
	bls	.L106	@,
.L95:
	cmp	r1, #0	@ amountWritten,
	movne	r4, r1	@ amountWritten, amountWritten
	beq	.L99	@,
.L98:
	add	r3, r4, ip	@ u32WtPos$0, amountWritten, u32WtPos$0
.L96:
	cmp	lr, r3	@ D.5636, u32WtPos$0
	moveq	r3, #0	@ u32WtPos$0,
	str	r3, [r2]	@ u32WtPos$0, *_13
	ldr	r3, [r0, #68]	@ state_4->stProc.uTotalByteWrite, state_4->stProc.uTotalByteWrite
	add	r1, r3, r1	@ D.5636, state_4->stProc.uTotalByteWrite, amountWritten
	str	r1, [r0, #68]	@ D.5636, state_4->stProc.uTotalByteWrite
	ldmfd	sp!, {r4, pc}	@
.L106:
	add	r3, r1, ip	@ D.5636, amountWritten, u32WtPos$0
	cmp	lr, r3	@ D.5636, D.5636
	bcs	.L95	@,
	rsb	r4, ip, lr	@ amountWritten, u32WtPos$0, D.5636
	cmp	r4, #0	@ amountWritten,
	rsb	r3, r4, r1	@ u32WtPos$0, amountWritten, amountWritten
	beq	.L99	@,
	cmp	r3, #0	@ u32WtPos$0,
	bne	.L96	@,
	b	.L98	@
.L99:
	mov	r3, ip	@ u32WtPos$0, u32WtPos$0
	b	.L96	@
	.fnend
	.size	RBUF_WriteDataComplete, .-RBUF_WriteDataComplete
	.align	2
	.global	RBUF_QueryInfo
	.type	RBUF_QueryInfo, %function
RBUF_QueryInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ hRBUF
	beq	.L117	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #28]	@ D.5640, state_6->stAttr.uLatencySize
	ldr	lr, [r0, #24]	@ u32Gap, state_6->stAttr.uFrameSize
	str	r3, [r1, #32]	@ D.5640, pstBufInfo_3(D)->u32LatencySize
	ldr	r3, [r0, #44]	@ state_6->stCB.pu8Data, state_6->stCB.pu8Data
	str	r3, [r1]	@ state_6->stCB.pu8Data, pstBufInfo_3(D)->u32BasePtr
	ldr	r3, [r0, #48]	@ D.5640, state_6->stCB.u32Lenght
	str	r3, [r1, #12]	@ D.5640, pstBufInfo_3(D)->u32BufSize
	ldr	r3, [r0, #36]	@ D.5642, state_6->stCB.pu32Write
	ldr	r3, [r3]	@ D.5640, *_15
	str	r3, [r1, #8]	@ D.5640, pstBufInfo_3(D)->u32WritePtr
	ldr	r3, [r0, #40]	@ D.5642, state_6->stCB.pu32Read
	ldr	r3, [r3]	@ D.5640, *_18
	str	r3, [r1, #4]	@ D.5640, pstBufInfo_3(D)->u32ReadPtr
	ldr	r2, [r0, #40]	@ D.5642, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Read
	ldr	r3, [r0, #36]	@ D.5642, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Write
	ldr	ip, [r2]	@ u32ReadPos, *_23
	ldr	r3, [r3]	@ u32WritePos, *_25
	cmp	ip, r3	@ u32ReadPos, u32WritePos
	rsbls	r3, ip, r3	@ u32BusyLen, u32ReadPos, u32WritePos
	strls	r3, [r1, #16]	@ u32BusyLen, MEM[(HI_U32 *)pstBufInfo_3(D) + 16B]
	ldrhi	r4, [r0, #48]	@ D.5640, MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght
	addhi	r2, r3, r4	@ D.5640, u32WritePos, D.5640
	rsbhi	r4, ip, r4	@ D.5640, u32ReadPos, D.5640
	rsbhi	r3, ip, r2	@ u32BusyLen, u32ReadPos, D.5640
	strhi	r4, [r1, #16]	@ D.5640, MEM[(HI_U32 *)pstBufInfo_3(D) + 16B]
	str	r3, [r1, #20]	@ u32BusyLen, MEM[(HI_U32 *)pstBufInfo_3(D) + 20B]
	ldr	r3, [r0, #40]	@ D.5642, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Read
	ldr	r2, [r0, #36]	@ D.5642, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Write
	ldr	r3, [r3]	@ u32ReadPos, *_21
	ldr	r2, [r2]	@ u32WritePos, *_33
	cmp	r3, r2	@ u32ReadPos, u32WritePos
	rsbhi	r3, r2, r3	@ u32FreeLen, u32WritePos, u32ReadPos
	strhi	r3, [r1, #24]	@ u32FreeLen, MEM[(HI_U32 *)pstBufInfo_3(D) + 24B]
	ldrls	r0, [r0, #48]	@ D.5640, MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght
	addls	r3, r3, r0	@ D.5640, u32ReadPos, D.5640
	rsbls	r0, r2, r0	@ D.5640, u32WritePos, D.5640
	rsbls	r3, r2, r3	@ u32FreeLen, u32WritePos, D.5640
	strls	r0, [r1, #24]	@ D.5640, MEM[(HI_U32 *)pstBufInfo_3(D) + 24B]
	cmp	lr, r3	@ u32Gap, u32FreeLen
	str	r3, [r1, #28]	@ u32FreeLen, MEM[(HI_U32 *)pstBufInfo_3(D) + 28B]
	bcs	.L118	@,
	ldr	r2, [r1, #28]	@ MEM[(HI_U32 *)pstBufInfo_3(D) + 28B], MEM[(HI_U32 *)pstBufInfo_3(D) + 28B]
	rsb	r3, lr, r3	@ u32FreeLen, u32Gap, u32FreeLen
	ldr	r0, [r1, #24]	@ MEM[(HI_U32 *)pstBufInfo_3(D) + 24B], MEM[(HI_U32 *)pstBufInfo_3(D) + 24B]
	str	r3, [r1, #28]	@ u32FreeLen, MEM[(HI_U32 *)pstBufInfo_3(D) + 28B]
	rsb	r2, r0, r2	@ D.5640, MEM[(HI_U32 *)pstBufInfo_3(D) + 24B], MEM[(HI_U32 *)pstBufInfo_3(D) + 28B]
	cmp	lr, r2	@ u32Gap, D.5640
	strhi	r3, [r1, #24]	@ u32FreeLen, MEM[(HI_U32 *)pstBufInfo_3(D) + 24B]
	ldmfd	sp!, {r4, pc}	@
.L118:
	mov	r3, #0	@ tmp149,
	str	r3, [r1, #24]	@ tmp149, MEM[(HI_U32 *)pstBufInfo_3(D) + 24B]
	str	r3, [r1, #28]	@ tmp149, MEM[(HI_U32 *)pstBufInfo_3(D) + 28B]
	ldmfd	sp!, {r4, pc}	@
.L117:
	mov	r0, r1	@, pstBufInfo
	mov	r1, #36	@,
	b	__memzero	@
	.fnend
	.size	RBUF_QueryInfo, .-RBUF_QueryInfo
	.align	2
	.global	RBUF_QueryBusy
	.type	RBUF_QueryBusy, %function
RBUF_QueryBusy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #40]	@ D.5645, MEM[(struct CIRC_BUF_S *)state_2 + 36B].pu32Read
	ldr	r2, [r0, #36]	@ D.5645, MEM[(struct CIRC_BUF_S *)state_2 + 36B].pu32Write
	ldr	r3, [r3]	@ u32ReadPos, *_4
	ldr	r2, [r2]	@ u32WritePos, *_6
	cmp	r3, r2	@ u32ReadPos, u32WritePos
	rsbls	r0, r3, r2	@ u32BusyLen, u32ReadPos, u32WritePos
	ldrhi	r0, [r0, #48]	@ MEM[(struct CIRC_BUF_S *)state_2 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_2 + 36B].u32Lenght
	addhi	r0, r2, r0	@ D.5646, u32WritePos, MEM[(struct CIRC_BUF_S *)state_2 + 36B].u32Lenght
	rsbhi	r0, r3, r0	@ u32BusyLen, u32ReadPos, D.5646
	bx	lr	@
	.fnend
	.size	RBUF_QueryBusy, .-RBUF_QueryBusy
	.align	2
	.global	RBUF_QueryFree
	.type	RBUF_QueryFree, %function
RBUF_QueryFree:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #40]	@ D.5650, MEM[(struct CIRC_BUF_S *)state_2 + 36B].pu32Read
	ldr	r3, [r0, #36]	@ D.5650, MEM[(struct CIRC_BUF_S *)state_2 + 36B].pu32Write
	ldr	r1, [r0, #24]	@ D.5649, state_2->stAttr.uFrameSize
	ldr	r2, [r2]	@ u32ReadPos, *_5
	ldr	r3, [r3]	@ u32WritePos, *_7
	cmp	r2, r3	@ u32ReadPos, u32WritePos
	ldrls	r0, [r0, #48]	@ MEM[(struct CIRC_BUF_S *)state_2 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_2 + 36B].u32Lenght
	addls	r2, r2, r0	@ D.5649, u32ReadPos, MEM[(struct CIRC_BUF_S *)state_2 + 36B].u32Lenght
	rsb	r3, r3, r2	@ u32FreeLen, u32WritePos, u32ReadPos
	cmp	r1, r3	@ D.5649, u32FreeLen
	rsbcc	r0, r1, r3	@ u32FreeLen, D.5649, u32FreeLen
	movcs	r0, #0	@ u32FreeLen,
	bx	lr	@
	.fnend
	.size	RBUF_QueryFree, .-RBUF_QueryFree
	.align	2
	.global	RBUF_CheckFree
	.type	RBUF_CheckFree, %function
RBUF_CheckFree:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #40]	@ D.5654, MEM[(struct CIRC_BUF_S *)state_3 + 36B].pu32Read
	ldr	r2, [r0, #36]	@ D.5654, MEM[(struct CIRC_BUF_S *)state_3 + 36B].pu32Write
	ldr	r4, [r0, #24]	@ D.5653, state_3->stAttr.uFrameSize
	ldr	r3, [r3]	@ u32ReadPos, *_9
	ldr	r2, [r2]	@ u32WritePos, *_11
	cmp	r3, r2	@ u32ReadPos, u32WritePos
	rsbls	ip, r3, r2	@ u32TotalDataSize, u32ReadPos, u32WritePos
	rsbhi	lr, r2, r3	@ u32FreeLen, u32WritePos, u32ReadPos
	ldrls	lr, [r0, #48]	@ MEM[(struct CIRC_BUF_S *)state_3 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_3 + 36B].u32Lenght
	ldrhi	ip, [r0, #48]	@ MEM[(struct CIRC_BUF_S *)state_3 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_3 + 36B].u32Lenght
	addls	r3, r3, lr	@ D.5653, u32ReadPos, MEM[(struct CIRC_BUF_S *)state_3 + 36B].u32Lenght
	addhi	r2, r2, ip	@ D.5653, u32WritePos, MEM[(struct CIRC_BUF_S *)state_3 + 36B].u32Lenght
	rsbls	lr, r2, r3	@ u32FreeLen, u32WritePos, D.5653
	rsbhi	ip, r3, r2	@ u32TotalDataSize, u32ReadPos, D.5653
	cmp	r4, lr	@ D.5653, u32FreeLen
	addcs	r2, ip, r1	@ D.5653, u32TotalDataSize, blocksize
	movcs	r1, #1	@ D.5655,
	bcs	.L131	@,
	rsb	r3, r4, lr	@ u32TotalFreeSize, D.5653, u32FreeLen
	add	r2, ip, r1	@ D.5653, u32TotalDataSize, blocksize
	cmp	r1, r3	@ blocksize, u32TotalFreeSize
	movcc	r1, #0	@ D.5655,
	movcs	r1, #1	@ D.5655,
.L131:
	ldr	r0, [r0, #28]	@ state_3->stAttr.uLatencySize, state_3->stAttr.uLatencySize
	cmp	r0, r2	@ state_3->stAttr.uLatencySize, D.5653
	movcs	r0, r1	@, tmp144, D.5655
	orrcc	r0, r1, #1	@,, tmp144, D.5655
	eor	r0, r0, #1	@, tmp144,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	RBUF_CheckFree, .-RBUF_CheckFree
	.align	2
	.global	RBUF_Flush
	.type	RBUF_Flush, %function
RBUF_Flush:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #36]	@ D.5659, MEM[(struct CIRC_BUF_S *)state_2 + 36B]
	ldr	r3, [r0, #40]	@ D.5659, MEM[(struct CIRC_BUF_S *)state_2 + 40B]
	ldr	r2, [r2]	@ D.5660, *_4
	str	r2, [r3]	@ D.5660, *_5
	bx	lr	@
	.fnend
	.size	RBUF_Flush, .-RBUF_Flush
	.align	2
	.global	RBUF_ReadDataDma
	.type	RBUF_ReadDataDma, %function
RBUF_ReadDataDma:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ hRBUF
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r6, r0	@ hRBUF, hRBUF
	mov	ip, r1	@ pu32Dest, pu32Dest
	ldr	r0, [r0, #40]	@ D.5664, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Read
	ldr	r1, [r6, #36]	@ D.5664, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Write
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r6, #56]	@ state_6->stProc.uTryReadCnt, state_6->stProc.uTryReadCnt
	mov	lr, #0	@ tmp146,
	str	lr, [sp, #4]	@ tmp146, u32RdPos
	add	r3, r3, #1	@ D.5663, state_6->stProc.uTryReadCnt,
	str	r3, [r6, #56]	@ D.5663, state_6->stProc.uTryReadCnt
	ldr	r7, [r0]	@ u32ReadPos, *_19
	ldr	r3, [r1]	@ u32WritePos, *_21
	cmp	r7, r3	@ u32ReadPos, u32WritePos
	bhi	.L136	@,
	add	r1, r2, r7	@ D.5663, u32DestSize, u32ReadPos
	cmp	r3, r1	@ u32WritePos, D.5663
	rsbcc	r4, r7, r3	@ D.5666, u32ReadPos, u32WritePos
	bcs	.L148	@,
.L137:
	cmp	r4, #0	@ D.5666,
	moveq	r5, r4	@ D.5666, D.5666
	beq	.L139	@,
	ldr	r1, [r6, #44]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data
	mov	r2, r4	@, D.5666
	mov	r0, ip	@, pu32Dest
	mov	r5, r4	@ D.5666, tmp2
	add	r1, r1, r7	@, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, u32ReadPos
	mov	r4, #0	@ D.5666,
	bl	memcpy	@
.L144:
	ldr	r3, [r6, #48]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght
	add	r7, r7, r5	@ u32ReadPos, u32ReadPos, D.5666
	cmp	r3, r7	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght, u32ReadPos
	beq	.L154	@,
.L140:
	ldr	r3, [r6, #40]	@ D.5664, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Read
	adds	r0, r5, r4	@ D.5666, D.5666, D.5666
	str	r7, [r3]	@ u32ReadPos, *_40
	ldreq	r3, [r6, #60]	@ state_6->stProc.uBufEmptyCnt, state_6->stProc.uBufEmptyCnt
	addeq	r3, r3, #1	@ D.5663, state_6->stProc.uBufEmptyCnt,
	streq	r3, [r6, #60]	@ D.5663, state_6->stProc.uBufEmptyCnt
.L141:
	ldr	r3, [r6, #52]	@ state_6->stProc.uTotalByteRead, state_6->stProc.uTotalByteRead
	add	r3, r3, r0	@ D.5663, state_6->stProc.uTotalByteRead, D.5666
	str	r3, [r6, #52]	@ D.5663, state_6->stProc.uTotalByteRead
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L136:
	ldr	r0, [r6, #48]	@ D.5663, MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght
	add	r1, r2, r7	@ D.5663, u32DestSize, u32ReadPos
	cmp	r1, r0	@ D.5663, D.5663
	bls	.L148	@,
	rsb	r5, r7, r0	@ D.5666, u32ReadPos, D.5663
	rsb	r4, r5, r2	@ D.5663, D.5666, u32DestSize
	cmp	r4, r3	@ D.5663, u32WritePos
	movcs	r4, r3	@ D.5666, u32WritePos
	cmp	r5, #0	@ D.5666,
	beq	.L139	@,
	ldr	r1, [r6, #44]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data
	mov	r2, r5	@, D.5666
	mov	r0, ip	@, pu32Dest
	add	r1, r1, r7	@, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, u32ReadPos
	bl	memcpy	@
	cmp	r4, #0	@ D.5666,
	add	r0, r0, r5	@ pu32Dest, pu32Dest, D.5666
	beq	.L144	@,
	ldr	r3, [sp, #4]	@ D.5663, u32RdPos
	mov	r2, r4	@, D.5666
	ldr	r1, [r6, #44]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data
	add	r7, r3, r4	@ u32ReadPos, D.5663, D.5666
	add	r1, r1, r3	@, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu8Data, D.5663
	bl	memcpy	@
.L139:
	ldr	r3, [r6, #48]	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght
	cmp	r3, r7	@ MEM[(struct CIRC_BUF_S *)state_6 + 36B].u32Lenght, u32ReadPos
	moveq	r7, #0	@ u32ReadPos,
	b	.L140	@
.L148:
	mov	r4, r2	@ D.5666, u32DestSize
	b	.L137	@
.L154:
	ldr	r3, [r6, #40]	@ D.5664, MEM[(struct CIRC_BUF_S *)state_6 + 36B].pu32Read
	mov	r2, #0	@ tmp169,
	mov	r0, r5	@ D.5666, D.5666
	str	r2, [r3]	@ tmp169, *_46
	b	.L141	@
	.fnend
	.size	RBUF_ReadDataDma, .-RBUF_ReadDataDma
	.align	2
	.global	RBUF_WriteDataDma
	.type	RBUF_WriteDataDma, %function
RBUF_WriteDataDma:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r4, r0, #0	@ hRBUF, hRBUF
	beq	.L167	@,
	ldr	ip, [r4, #40]	@ D.5679, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu32Read
	mov	r0, r2	@ u3SrcLen, u3SrcLen
	ldr	r3, [r4, #36]	@ D.5679, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu32Write
	mov	r8, r1	@ pu32Src, pu32Src
	ldr	r2, [r4, #72]	@ state_7->stProc.uTryWriteCnt, state_7->stProc.uTryWriteCnt
	add	r2, r2, #1	@ D.5678, state_7->stProc.uTryWriteCnt,
	str	r2, [r4, #72]	@ D.5678, state_7->stProc.uTryWriteCnt
	ldr	r6, [ip]	@ u32ReadPos, *_19
	ldr	r9, [r3]	@ u32WritePos, *_21
	cmp	r6, r9	@ u32ReadPos, u32WritePos
	bhi	.L157	@,
	ldr	r5, [r4, #48]	@ D.5678, MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght
	add	r2, r0, r9	@ D.5678, u3SrcLen, u32WritePos
	cmp	r5, r2	@ D.5678, D.5678
	bcs	.L169	@,
	rsb	r5, r9, r5	@ D.5678, u32WritePos, D.5678
	cmp	r5, #0	@ D.5678,
	rsb	r7, r5, r0	@ u32WritePos, D.5678, u3SrcLen
	moveq	r6, r7	@ D.5681, u32WritePos
	moveq	r7, r9	@ u32WritePos, u32WritePos
	beq	.L160	@,
	ldr	r0, [r4, #44]	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data
	mov	r2, r5	@, D.5678
	add	r0, r0, r9	@, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data, u32WritePos
	bl	memcpy	@
	cmp	r7, #0	@ u32WritePos,
	add	r1, r8, r5	@ pu32Src, pu32Src, D.5678
	beq	.L175	@,
	mov	r2, r7	@, u32WritePos
	ldr	r0, [r4, #44]	@, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data
	bl	memcpy	@
	ldr	r3, [r4, #36]	@ D.5679, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu32Write
	mov	r6, r7	@ D.5681, u32WritePos
.L160:
	ldr	r2, [r4, #48]	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght
	cmp	r2, r7	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght, u32WritePos
	movls	r7, #0	@ u32WritePos,
.L161:
	adds	r0, r5, r6	@ D.5681, D.5678, D.5681
	str	r7, [r3]	@ u32WritePos, *_77
	ldreq	r3, [r4, #76]	@ state_7->stProc.uBufFullCnt, state_7->stProc.uBufFullCnt
	addeq	r3, r3, #1	@ D.5678, state_7->stProc.uBufFullCnt,
	streq	r3, [r4, #76]	@ D.5678, state_7->stProc.uBufFullCnt
.L162:
	ldr	r3, [r4, #68]	@ state_7->stProc.uTotalByteWrite, state_7->stProc.uTotalByteWrite
	add	r3, r3, r0	@ D.5678, state_7->stProc.uTotalByteWrite, D.5681
	str	r3, [r4, #68]	@ D.5678, state_7->stProc.uTotalByteWrite
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L157:
	add	r2, r0, r9	@ D.5678, u3SrcLen, u32WritePos
	cmp	r6, r2	@ u32ReadPos, D.5678
	rsbls	r6, r9, r6	@ D.5681, u32WritePos, u32ReadPos
	bhi	.L169	@,
.L158:
	cmp	r6, #0	@ D.5681,
	moveq	r7, r9	@ u32WritePos, u32WritePos
	moveq	r5, r6	@ D.5678, D.5681
	beq	.L160	@,
	ldr	r0, [r4, #44]	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data
	mov	r2, r6	@, D.5681
	mov	r1, r8	@, pu32Src
	mov	r5, r6	@ D.5678, tmp2
	add	r0, r0, r9	@, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu8Data, u32WritePos
	mov	r6, #0	@ D.5681,
	bl	memcpy	@
.L165:
	ldr	r2, [r4, #48]	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght, MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght
	add	r7, r9, r5	@ u32WritePos, u32WritePos, D.5678
	ldr	r3, [r4, #36]	@ D.5679, MEM[(struct CIRC_BUF_S *)state_7 + 36B].pu32Write
	cmp	r2, r7	@ MEM[(struct CIRC_BUF_S *)state_7 + 36B].u32Lenght, u32WritePos
	bhi	.L161	@,
	mov	r2, #0	@ tmp166,
	mov	r0, r5	@ D.5681, D.5678
	str	r2, [r3]	@ tmp166, *_89
	b	.L162	@
.L169:
	mov	r6, r0	@ D.5681, u3SrcLen
	b	.L158	@
.L167:
	mov	r0, r2	@ D.5681, u3SrcLen
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L175:
	mov	r6, r7	@ D.5681, u32WritePos
	b	.L165	@
	.fnend
	.size	RBUF_WriteDataDma, .-RBUF_WriteDataDma
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
