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
	.file	"public.c"
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
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV330 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv330
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(public)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.public.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/public.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/public.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
@ -fno-common -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
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
	.global	IsDprintTypeEnable
	.type	IsDprintTypeEnable, %function
IsDprintTypeEnable:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #32	@ type,
	beq	.L3	@,
	ldr	r3, .L5	@ tmp121,
	mov	r2, #1	@ tmp120,
	ldr	r3, [r3]	@ g_PrintEnable, g_PrintEnable
	ands	r3, r3, r2, asl r0	@, tmp127, g_PrintEnable, tmp120,
	movne	r0, r2	@ D.27615,
	moveq	r0, #0	@ D.27615,
	bx	lr	@
.L3:
	mov	r0, #1	@ D.27615,
	bx	lr	@
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.fnend
	.size	IsDprintTypeEnable, .-IsDprintTypeEnable
	.align	2
	.global	vfmw_dprint_nothing
	.type	vfmw_dprint_nothing, %function
vfmw_dprint_nothing:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	vfmw_dprint_nothing, .-vfmw_dprint_nothing
	.align	2
	.global	dprint_vfmw
	.type	dprint_vfmw, %function
dprint_vfmw:
	.fnstart
	@ args = 4, pretend = 12, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	cmp	r0, #32	@ type,
	stmfd	sp!, {r1, r2, r3}	@,
	.save {r1, r2, r3}
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L9	@,
	ldr	r3, .L21	@ tmp143,
	mov	r2, #1	@ tmp125,
	ldr	r3, [r3]	@ g_PrintEnable, g_PrintEnable
	ands	r3, r3, r2, asl r0	@, tmp144, g_PrintEnable, tmp125,
	beq	.L11	@,
.L9:
	add	ip, sp, #24	@ tmp129,,
	ldr	r4, .L21	@ tmp131,
	ldr	r2, [sp, #20]	@, format
	mov	r1, #1024	@,
	mov	r3, ip	@, tmp129
	add	r0, r4, #4	@, tmp131,
	str	ip, [sp, #4]	@ tmp129, MEM[(struct  *)&args].__ap
	bl	vsnprintf	@
	movw	r3, #1021	@ tmp134,
	sub	r2, r0, #1	@ D.27626, nTotalChar,
	cmp	r2, r3	@ D.27626, tmp134
	bhi	.L11	@,
	ldr	r3, .L21+4	@ tmp135,
	ldr	r3, [r3]	@ D.27625, g_PrintDevice
	cmp	r3, #1	@ D.27625,
	beq	.L20	@,
	cmp	r3, #3	@ D.27625,
	bne	.L11	@,
	ldr	r2, [r4, #1028]	@ D.27627, g_fpLog
	cmp	r2, #0	@ D.27627,
	beq	.L11	@,
	mov	r1, r0	@, nTotalChar
	add	r0, r4, #4	@, tmp131,
	bl	klib_fwrite	@
.L10:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	add	sp, sp, #12	@,,
	bx	lr	@
.L11:
	mvn	r0, #0	@ D.27623,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	add	sp, sp, #12	@,,
	bx	lr	@
.L20:
	add	r1, r4, #4	@, tmp131,
	ldr	r0, .L21+8	@,
	bl	printk	@
	b	.L10	@
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC0
	.fnend
	.size	dprint_vfmw, .-dprint_vfmw
	.align	2
	.global	CHECK_REC_POS_ENABLE
	.type	CHECK_REC_POS_ENABLE, %function
CHECK_REC_POS_ENABLE:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24	@ tmp118,
	ldr	r3, [r3, #4]	@ g_TraceCtrl, g_TraceCtrl
	mov	r0, r3, asr r0	@ D.27631, g_TraceCtrl,
	and	r0, r0, #1	@, D.27631,
	bx	lr	@
.L25:
	.align	2
.L24:
	.word	.LANCHOR1
	.fnend
	.size	CHECK_REC_POS_ENABLE, .-CHECK_REC_POS_ENABLE
	.global	__aeabi_uidiv
	.align	2
	.global	qsort
	.type	qsort, %function
qsort:
	.fnstart
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #0	@ width,
	cmpne	r1, #1	@, num,
	.pad #260
	sub	sp, sp, #260	@,,
	movls	fp, #1	@ tmp253,
	movhi	fp, #0	@ tmp253,
	str	r0, [sp, #4]	@ base, %sfp
	bls	.L26	@,
	sub	r1, r1, #1	@ D.27795, num,
	rsb	r9, r2, #0	@ D.27797, width
	mov	r6, r2	@ width, width
	mov	r5, r3	@ comp, comp
	mla	r7, r2, r1, r0	@ higuy, width, D.27795, base
	sub	r3, r2, #1	@ width, width,
	str	fp, [sp, #8]	@ tmp253, %sfp
	str	r3, [sp, #12]	@ width, %sfp
.L28:
	ldr	r3, [sp, #4]	@ base, %sfp
	mov	r1, r6	@, width
	rsb	r0, r3, r7	@, base, higuy
	bl	__aeabi_uidiv	@
	add	r0, r0, #1	@ size,,
	cmp	r0, #8	@ size,
	bhi	.L29	@,
	ldr	r3, [sp, #4]	@ base, %sfp
	cmp	r3, r7	@ base, higuy
	bcs	.L30	@,
	add	r8, r3, r6	@ base, base, width
	mov	fp, r3	@ base, base
.L35:
	cmp	r8, r7	@ base, higuy
	mov	r4, fp	@ base, base
	bhi	.L31	@,
	mov	r10, r8	@ base, base
.L33:
	mov	r1, r4	@, base
	mov	r0, r10	@, base
	blx	r5	@ comp
	cmp	r0, #0	@,
	movgt	r4, r10	@ base, base
	add	r10, r10, r6	@ base, base, width
	cmp	r10, r7	@ base, higuy
	bls	.L33	@,
.L31:
	cmp	r4, r7	@ base, higuy
	beq	.L36	@,
	cmp	r6, #0	@ width,
	beq	.L36	@,
	add	r0, r4, r6	@ D.27798, base, width
	mov	r3, r7	@ higuy, higuy
.L37:
	ldrb	r1, [r3]	@ zero_extendqisi2	@ D.27799, MEM[base: higuy_271, offset: 0B]
	ldrb	r2, [r4]	@ zero_extendqisi2	@ tmp, MEM[base: base_270, offset: 0B]
	strb	r1, [r4], #1	@ D.27799, MEM[base: base_181, offset: 4294967295B]
	cmp	r4, r0	@ base, D.27798
	strb	r2, [r3], #1	@ tmp, MEM[base: higuy_184, offset: 4294967295B]
	bne	.L37	@,
.L36:
	add	r7, r7, r9	@ higuy, higuy, D.27797
	cmp	fp, r7	@ base, higuy
	bcc	.L35	@,
.L30:
	ldr	r3, [sp, #8]	@ stkptr, %sfp
	subs	r3, r3, #1	@ stkptr, stkptr,
	str	r3, [sp, #8]	@ stkptr, %sfp
	bmi	.L26	@,
	add	r2, sp, #256	@ tmp470,,
	add	r3, r2, r3, lsl #2	@ tmp302, tmp470, stkptr,
	ldr	r2, [r3, #-240]	@ base, lostk
	ldr	r7, [r3, #-120]	@ higuy, histk
	str	r2, [sp, #4]	@ base, %sfp
	b	.L28	@
.L29:
	ldr	r8, [sp, #4]	@ base, %sfp
	mov	r4, r0, lsr #1	@ D.27795, size,
	mla	r4, r6, r4, r8	@ base, width, D.27795, base
	mov	r0, r8	@, base
	mov	r1, r4	@, base
	blx	r5	@ comp
	mov	r3, r8	@ base, base
	cmp	r8, r4	@ base, base
	cmpne	r0, #0	@,,
	ble	.L38	@,
	cmp	r6, #0	@ width,
	ldr	r8, [sp, #12]	@ width, %sfp
	beq	.L39	@,
	add	ip, r3, r6	@ D.27798, base, width
	mov	r2, r4	@ base, base
.L40:
	ldrb	r0, [r2]	@ zero_extendqisi2	@ D.27799, MEM[base: base_255, offset: 0B]
	ldrb	r1, [r3]	@ zero_extendqisi2	@ tmp, MEM[base: base_254, offset: 0B]
	strb	r0, [r3], #1	@ D.27799, MEM[base: base_113, offset: 4294967295B]
	cmp	r3, ip	@ base, D.27798
	strb	r1, [r2], #1	@ tmp, MEM[base: base_116, offset: 4294967295B]
	bne	.L40	@,
	ldr	r10, [sp, #4]	@ base, %sfp
	mov	r1, r7	@, higuy
	mov	r0, r10	@, base
	blx	r5	@ comp
	cmp	r10, r7	@ base, higuy
	cmpne	r0, #0	@,,
	ble	.L135	@,
.L72:
	ldr	r2, [sp, #4]	@ base, %sfp
	sub	r3, r2, #1	@ ivtmp.143, base,
	add	ip, r2, r8	@ D.27793, base, width
	mov	r2, r7	@ higuy, higuy
.L44:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2	@ tmp, MEM[base: _280, offset: 0B]
	ldrb	r0, [r2]	@ zero_extendqisi2	@ D.27799, MEM[base: higuy_257, offset: 0B]
	cmp	r3, ip	@ ivtmp.143, D.27793
	strb	r0, [r3]	@ D.27799, MEM[base: _280, offset: 0B]
	strb	r1, [r2], #1	@ tmp, MEM[base: higuy_126, offset: 4294967295B]
	bne	.L44	@,
	mov	r1, r7	@, higuy
	mov	r0, r4	@, base
	blx	r5	@ comp
	cmp	r7, r4	@ higuy, base
	cmpne	r0, #0	@,,
	ble	.L48	@,
.L74:
	add	r8, r4, r8	@ D.27793, base, width
	sub	r3, r4, #1	@ ivtmp.119, base,
	mov	r2, r7	@ higuy, higuy
.L49:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2	@ tmp, MEM[base: _218, offset: 0B]
	ldrb	r0, [r2]	@ zero_extendqisi2	@ D.27799, MEM[base: higuy_259, offset: 0B]
	cmp	r3, r8	@ ivtmp.119, D.27793
	strb	r0, [r3]	@ D.27799, MEM[base: _218, offset: 0B]
	strb	r1, [r2], #1	@ tmp, MEM[base: higuy_134, offset: 4294967295B]
	bne	.L49	@,
.L48:
	ldr	r3, [sp, #4]	@ base, %sfp
	mov	r10, r7	@ higuy, higuy
	add	fp, r3, r6	@ base, base, width
	mov	r8, r3	@ base, base
.L47:
	cmp	r4, r8	@ base, base
	bls	.L53	@,
	b	.L51	@
.L136:
	blx	r5	@ comp
	cmp	r0, #0	@,
	bgt	.L57	@,
	add	fp, fp, r6	@ base, base, width
.L51:
	cmp	r4, fp	@ base, base
	mov	r1, r4	@, base
	mov	r0, fp	@, base
	mov	r8, fp	@ base, base
	bhi	.L136	@,
	b	.L127	@
.L54:
	blx	r5	@ comp
	cmp	r0, #0	@,
	ble	.L58	@,
.L57:
	add	r10, r10, r9	@ higuy, higuy, D.27797
	mov	r1, r4	@, base
	cmp	r4, r10	@ base, higuy
	mov	r0, r10	@, higuy
	bcc	.L54	@,
.L58:
	cmp	fp, r10	@ base, higuy
	bhi	.L137	@,
	cmp	r10, fp	@ higuy, base
	beq	.L138	@,
	cmp	r6, #0	@ width,
	beq	.L61	@,
	add	fp, fp, r6	@ base, base, width
	mov	r2, r10	@ higuy, higuy
	mov	r3, r8	@ base, base
.L62:
	ldrb	r0, [r2]	@ zero_extendqisi2	@ D.27799, MEM[base: higuy_261, offset: 0B]
	ldrb	r1, [r3]	@ zero_extendqisi2	@ tmp, MEM[base: base_250, offset: 0B]
	strb	r0, [r3], #1	@ D.27799, MEM[base: base_138, offset: 4294967295B]
	cmp	r3, fp	@ base, base
	strb	r1, [r2], #1	@ tmp, MEM[base: higuy_141, offset: 4294967295B]
	bne	.L62	@,
.L61:
	cmp	r4, r10	@ base, higuy
	moveq	r4, r8	@ base, base
	b	.L47	@
.L139:
	blx	r5	@ comp
	cmp	r0, #0	@,
	bgt	.L57	@,
.L127:
	add	fp, fp, r6	@ base, base, width
.L53:
	cmp	r7, fp	@ higuy, base
	mov	r1, r4	@, base
	mov	r0, fp	@, base
	mov	r8, fp	@ base, base
	bcs	.L139	@,
	b	.L57	@
.L138:
	cmp	r4, r10	@ base, higuy
	add	fp, r10, r6	@ base, higuy, width
	moveq	r4, r8	@ base, base
	b	.L47	@
.L137:
	add	r8, r10, r6	@ higuy, higuy, width
	cmp	r8, r4	@ higuy, base
	bhi	.L64	@,
.L125:
	ldr	r10, [sp, #4]	@ base, %sfp
	b	.L67	@
.L141:
	blx	r5	@ comp
	cmp	r0, #0	@,
	bne	.L140	@,
.L67:
	add	r8, r8, r9	@ higuy, higuy, D.27797
	mov	r1, r4	@, base
	cmp	r10, r8	@ base, higuy
	mov	r0, r8	@, higuy
	bcc	.L141	@,
	rsb	r2, r10, r8	@ D.27796, base, higuy
	rsb	r1, fp, r7	@ D.27796, base, higuy
	cmp	r2, r1	@ D.27796, D.27796
	str	r10, [sp, #4]	@ base, %sfp
	bge	.L69	@,
	cmp	r7, fp	@ higuy, base
	bls	.L30	@,
.L81:
	ldr	r3, [sp, #8]	@ stkptr, %sfp
	add	r2, sp, #256	@ tmp463,,
	add	r2, r2, r3, lsl #2	@ tmp298, tmp463, stkptr,
	add	r3, r3, #1	@ stkptr, stkptr,
	str	r3, [sp, #8]	@ stkptr, %sfp
	str	fp, [r2, #-240]	@ base, lostk
	str	r7, [r2, #-120]	@ higuy, histk
.L71:
	ldr	r3, [sp, #4]	@ base, %sfp
	cmp	r3, r8	@ base, higuy
	bcs	.L30	@,
.L84:
	mov	r7, r8	@ higuy, higuy
	b	.L28	@
.L64:
	add	r8, r8, r9	@ higuy, higuy, D.27797
	mov	r1, r4	@, base
	cmp	r8, r4	@ higuy, base
	mov	r0, r8	@, higuy
	bls	.L125	@,
	blx	r5	@ comp
	cmp	r0, #0	@,
	beq	.L64	@,
	ldr	r3, [sp, #4]	@ base, %sfp
	rsb	r1, fp, r7	@ D.27796, base, higuy
	rsb	r2, r3, r8	@ D.27796, base, higuy
	cmp	r2, r1	@ D.27796, D.27796
	blt	.L142	@,
	ldr	r3, [sp, #4]	@ base, %sfp
	cmp	r3, r8	@ base, higuy
	bcs	.L69	@,
.L77:
	ldr	r3, [sp, #8]	@ stkptr, %sfp
	add	r2, sp, #256	@ tmp458,,
	ldr	r1, [sp, #4]	@ base, %sfp
	add	r2, r2, r3, lsl #2	@ tmp294, tmp458, stkptr,
	add	r3, r3, #1	@ stkptr, stkptr,
	str	r3, [sp, #8]	@ stkptr, %sfp
	str	r1, [r2, #-240]	@ base, lostk
	str	r8, [r2, #-120]	@ higuy, histk
.L69:
	cmp	r7, fp	@ higuy, base
	bls	.L30	@,
	str	fp, [sp, #4]	@ base, %sfp
	b	.L28	@
.L38:
	ldr	r8, [sp, #4]	@ base, %sfp
	mov	r1, r7	@, higuy
	mov	r0, r8	@, base
	blx	r5	@ comp
	cmp	r8, r7	@ base, higuy
	cmpne	r0, #0	@,,
	ble	.L42	@,
	cmp	r6, #0	@ width,
	ldr	r8, [sp, #12]	@ width, %sfp
	bne	.L72	@,
	mov	r1, r7	@, higuy
	mov	r0, r4	@, base
	blx	r5	@ comp
	b	.L48	@
.L142:
	cmp	r7, fp	@ higuy, base
	bls	.L71	@,
	b	.L81	@
.L39:
	mov	r1, r7	@, higuy
	ldr	r0, [sp, #4]	@, %sfp
	blx	r5	@ comp
.L42:
	mov	r1, r7	@, higuy
	mov	r0, r4	@, base
	blx	r5	@ comp
	cmp	r7, r4	@ higuy, base
	cmpne	r0, #0	@,,
	ble	.L48	@,
	cmp	r6, #0	@ width,
	ldr	r8, [sp, #12]	@ width, %sfp
	bne	.L74	@,
	b	.L48	@
.L140:
	rsb	r2, r10, r8	@ D.27796, base, higuy
	rsb	r1, fp, r7	@ D.27796, base, higuy
	cmp	r2, r1	@ D.27796, D.27796
	str	r10, [sp, #4]	@ base, %sfp
	bge	.L77	@,
	cmp	r7, fp	@ higuy, base
	bhi	.L81	@,
	b	.L84	@
.L26:
	add	sp, sp, #260	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L135:
	mov	r1, r7	@, higuy
	mov	r0, r4	@, base
	blx	r5	@ comp
	cmp	r7, r4	@ higuy, base
	cmpne	r0, #0	@,,
	ldrgt	r8, [sp, #12]	@ width, %sfp
	bgt	.L74	@,
	b	.L48	@
	.fnend
	.size	qsort, .-qsort
	.global	g_NoStreamReportPeriod
	.global	g_TraceImgPeriod
	.global	g_TraceFramePeriod
	.global	g_TraceBsPeriod
	.global	g_TraceCtrl
	.global	g_TmpMsg
	.global	g_pMemPrint
	.global	g_PrintDevice
	.global	g_PrintEnable
	.global	g_LogFileName
	.global	g_LogEnable
	.global	g_fpLog
	.global	TracerPhyAddr
	.global	s_pstTracer
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_PrintDevice, %object
	.size	g_PrintDevice, 4
g_PrintDevice:
	.word	1
	.type	g_TraceCtrl, %object
	.size	g_TraceCtrl, 4
g_TraceCtrl:
	.word	-1
	.type	g_NoStreamReportPeriod, %object
	.size	g_NoStreamReportPeriod, 4
g_NoStreamReportPeriod:
	.word	200
	.type	g_TraceImgPeriod, %object
	.size	g_TraceImgPeriod, 4
g_TraceImgPeriod:
	.word	500
	.type	g_TraceBsPeriod, %object
	.size	g_TraceBsPeriod, 4
g_TraceBsPeriod:
	.word	200
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_PrintEnable, %object
	.size	g_PrintEnable, 4
g_PrintEnable:
	.space	4
	.type	g_TmpMsg, %object
	.size	g_TmpMsg, 1024
g_TmpMsg:
	.space	1024
	.type	g_fpLog, %object
	.size	g_fpLog, 4
g_fpLog:
	.space	4
	.type	g_TraceFramePeriod, %object
	.size	g_TraceFramePeriod, 4
g_TraceFramePeriod:
	.space	4
	.type	g_pMemPrint, %object
	.size	g_pMemPrint, 4
g_pMemPrint:
	.space	4
	.type	g_LogFileName, %object
	.size	g_LogFileName, 500
g_LogFileName:
	.space	500
	.type	g_LogEnable, %object
	.size	g_LogEnable, 4
g_LogEnable:
	.space	4
	.type	TracerPhyAddr, %object
	.size	TracerPhyAddr, 4
TracerPhyAddr:
	.space	4
	.type	s_pstTracer, %object
	.size	s_pstTracer, 4
s_pstTracer:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
