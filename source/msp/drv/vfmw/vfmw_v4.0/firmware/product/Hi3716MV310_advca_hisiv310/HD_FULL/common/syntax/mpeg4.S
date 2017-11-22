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
	.file	"mpeg4.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I arch/arm/include/generated/uapi -I arch/arm/include/generated
@ -I include -I ./arch/arm/include/uapi -I arch/arm/include/generated/uapi
@ -I ./include/uapi -I include/generated/uapi
@ -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV310 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_REAL8_SUPPORT -D VFMW_REAL9_SUPPORT -D VFMW_VP6_SUPPORT
@ -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4 -D CFG_MAX_CHAN_NUM=4
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(mpeg4)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg4.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.o
@ -g0 -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-maybe-uninitialized
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Wformat=1 -Wformat-security -std=gnu90
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -fno-ipa-sra
@ -funwind-tables -fomit-frame-pointer -fno-var-tracking-assignments
@ -fno-strict-overflow -fconserve-stack -fno-pic -fstack-protector
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
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
	.global	log2bin
	.type	log2bin, %function
log2bin:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ value
	bxeq	lr	@
	mov	r3, #0	@ n,
.L3:
	add	r3, r3, #1	@ tmp119, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp119
	bne	.L3	@,
	sxth	r0, r3	@ D.40352, n
	bx	lr	@
	.fnend
	.size	log2bin, .-log2bin
	.align	2
	.global	bs_get_spritetrajectory
	.type	bs_get_spritetrajectory, %function
bs_get_spritetrajectory:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ pBs, pBs
	ldr	r6, .L14	@ tmp197,
	mov	r4, #0	@ i,
	mov	r5, r6	@ ivtmp.179, tmp197
.L10:
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@, MEM[base: _23, offset: 4B]
	mov	r0, r7	@, pBs
	bl	BsShow	@
	ldr	r3, [r6, r4, asl #3]	@ MEM[symbol: sprite_trajectory_len, index: _24, offset: 0B], MEM[symbol: sprite_trajectory_len, index: _24, offset: 0B]
	ldr	r2, .L14	@ tmp189,
	mov	r1, r4, asl #3	@ D.40368, i,
	add	r5, r5, #8	@ ivtmp.179, ivtmp.179,
	cmp	r0, r3	@, MEM[symbol: sprite_trajectory_len, index: _24, offset: 0B]
	beq	.L13	@,
	add	r4, r4, #1	@ i, i,
	cmp	r4, #12	@ i,
	bne	.L10	@,
	mvn	r0, #0	@ D.40363,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L13:
	add	r2, r2, r1	@ tmp193, tmp189, D.40368
	mov	r0, r7	@, pBs
	ldrb	r1, [r2, #4]	@ zero_extendqisi2	@, sprite_trajectory_len[i_17].len
	bl	BsSkip	@
	mov	r0, r4	@ D.40363, i
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.fnend
	.size	bs_get_spritetrajectory, .-bs_get_spritetrajectory
	.global	__aeabi_idiv
	.align	2
	.global	MP4_GetGMCparam
	.type	MP4_GetGMCparam, %function
MP4_GetGMCparam:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #2	@ tmp280,
	ldrb	r5, [r0, #65]	@ zero_extendqisi2	@ D.40379, p_syntax_des_9(D)->syn_vol.sprite_warping_accuracy
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r10, r0	@ p_syntax_des, p_syntax_des
	mov	r9, r1	@ p_gmc, p_gmc
	mov	r3, r3, asl r5	@ a, tmp280,
	mov	r0, #16	@,
	rsb	r2, r5, #3	@ rho, D.40379,
	str	r3, [sp, #12]	@ a, %sfp
	mov	r1, r3	@, a
	str	r2, [sp, #48]	@ rho, %sfp
	bl	__aeabi_idiv	@
	ldr	r8, [r10, #708]	@ D.40379, p_syntax_des_9(D)->image_width
	ldr	r3, [r10, #704]	@ D.40379, p_syntax_des_9(D)->image_height
	cmp	r8, #1	@ D.40379,
	mov	r2, r8, asl #4	@ tmp402, D.40379,
	str	r2, [r9, #8]	@ tmp402, p_gmc_22(D)->sW
	str	r2, [sp, #24]	@ tmp402, %sfp
	ldr	r2, [r10, #704]	@ p_syntax_des_9(D)->image_height, p_syntax_des_9(D)->image_height
	str	r0, [sp, #4]	@, %sfp
	mov	r2, r2, asl #4	@ D.40380, p_syntax_des_9(D)->image_height,
	str	r2, [r9, #12]	@ D.40380, p_gmc_22(D)->sH
	ldrb	r2, [r10, #65]	@ zero_extendqisi2	@ p_syntax_des_9(D)->syn_vol.sprite_warping_accuracy, p_syntax_des_9(D)->syn_vol.sprite_warping_accuracy
	str	r2, [r9, #4]	@ p_syntax_des_9(D)->syn_vol.sprite_warping_accuracy, p_gmc_22(D)->accuracy
	ldrb	r2, [r10, #64]	@ zero_extendqisi2	@ D.40378, p_syntax_des_9(D)->syn_vol.sprite_warping_points
	str	r2, [r9]	@ D.40378, p_gmc_22(D)->num_wp
	str	r2, [sp, #20]	@ D.40378, %sfp
	ldr	r2, [r10, #688]	@ D.40379, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[1].x
	ldr	lr, [r10, #680]	@ sprite_ref$0$0, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[0].x
	ldr	ip, [r10, #684]	@ sprite_ref$0$1, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[0].y
	str	r2, [sp, #8]	@ D.40379, %sfp
	ldr	r1, [r10, #692]	@ D.40379, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[1].y
	ldr	fp, [r10, #696]	@ D.40379, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[2].x
	ldr	r0, [r10, #700]	@ D.40379, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[2].y
	ble	.L41	@,
	mov	r5, #0	@ alpha,
	mov	r2, #1	@ tmp404,
.L18:
	add	r5, r5, #1	@ alpha, alpha,
	mov	r6, r2, asl r5	@ w2, tmp404,
	cmp	r8, r6	@ D.40379, w2
	bgt	.L18	@,
	mov	r2, r6, asl #4	@ D.40379, w2,
	str	r2, [sp, #44]	@ D.40379, %sfp
.L17:
	cmp	r3, #1	@ D.40379,
	ble	.L42	@,
	mov	r4, #0	@ beta,
	mov	r2, #1	@ tmp403,
.L20:
	add	r4, r4, #1	@ beta, beta,
	mov	r7, r2, asl r4	@ h2, tmp403,
	cmp	r3, r7	@ D.40379, h2
	bgt	.L20	@,
	mov	r2, r7, asl #4	@ D.40379, h2,
	str	r2, [sp, #52]	@ D.40379, %sfp
.L19:
	ldrb	r2, [r10, #12]	@ zero_extendqisi2	@ p_syntax_des_9(D)->FF_BUG_DIVX500B413, p_syntax_des_9(D)->FF_BUG_DIVX500B413
	cmp	r2, #1	@ p_syntax_des_9(D)->FF_BUG_DIVX500B413,
	beq	.L47	@,
	add	r1, ip, r1	@ D.40379, sprite_ref$0$1, D.40379
	str	r1, [sp, #28]	@ D.40379, %sfp
	ldr	r1, [sp, #8]	@ D.40379, %sfp
	add	r2, lr, r8, lsl #1	@ D.40379, sprite_ref$0$0, D.40379,
	add	fp, lr, fp	@ D.40379, sprite_ref$0$0, D.40379
	add	r10, ip, r3, lsl #1	@ D.40379, sprite_ref$0$1, D.40379,
	add	r2, r1, r2	@ D.40379, D.40379, D.40379
	ldr	r1, [sp, #12]	@ a, %sfp
	add	r0, r0, r10	@ D.40379, D.40379, D.40379
	mov	r1, r1, asr #1	@ D.40379, a,
	mul	lr, r1, lr	@ sprite_ref$0$0, D.40379, sprite_ref$0$0
	mul	r0, r0, r1	@ sprite_ref$2$1, D.40379, D.40379
	mul	r2, r2, r1	@ sprite_ref$1$0, D.40379, D.40379
	str	lr, [sp, #16]	@ sprite_ref$0$0, %sfp
	ldr	lr, [sp, #28]	@ D.40379, %sfp
	str	r0, [sp, #40]	@ sprite_ref$2$1, %sfp
	mul	r10, lr, r1	@ sprite_ref$1$1, D.40379, D.40379
	mul	lr, fp, r1	@ sprite_ref$2$0, D.40379, D.40379
	mul	r1, r1, ip	@ sprite_ref$0$1, D.40379, sprite_ref$0$1
	str	lr, [sp, #36]	@ sprite_ref$2$0, %sfp
	str	r1, [sp, #8]	@ sprite_ref$0$1, %sfp
.L22:
	ldr	r1, [sp, #24]	@ tmp402, %sfp
	ldr	ip, [sp, #16]	@ sprite_ref$0$0, %sfp
	rsb	r0, r1, #0	@ D.40379, tmp402
	ldr	r1, [sp, #4]	@ r, %sfp
	str	r3, [sp, #24]	@ D.40379, %sfp
	mla	r0, r2, r1, r0	@ D.40379, sprite_ref$1$0, r, D.40379
	mov	r2, r8, asr #1	@ D.40379, D.40379,
	mul	fp, ip, r1	@ D.40379, sprite_ref$0$0, r
	rsb	ip, r6, r8	@ D.40379, w2, D.40379
	mov	r1, r8	@, D.40379
	str	r2, [sp, #32]	@ D.40379, %sfp
	str	ip, [sp, #28]	@ D.40379, %sfp
	mul	r0, r6, r0	@ D.40379, w2, D.40379
	mla	r0, fp, ip, r0	@ D.40379, D.40379, D.40379, D.40379
	cmp	r0, #0	@ D.40379,
	addgt	r0, r0, r2	@ D.40377, D.40379, D.40379
	rsble	r0, r2, r0	@ D.40377, D.40379, D.40379
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@ r, %sfp
	ldr	r2, [sp, #8]	@ sprite_ref$0$1, %sfp
	ldr	ip, [sp, #28]	@ D.40379, %sfp
	mul	r1, r10, r3	@ D.40379, sprite_ref$1$1, r
	mul	r10, r2, r3	@ D.40379, sprite_ref$0$1, r
	ldr	r3, [sp, #44]	@ D.40379, %sfp
	ldr	r2, [sp, #32]	@ D.40379, %sfp
	add	r3, r0, r3	@ D.40379,, D.40379
	str	r3, [sp, #28]	@ D.40379, %sfp
	mul	r1, r6, r1	@ D.40379, w2, D.40379
	ldr	r3, [sp, #24]	@ D.40379, %sfp
	mla	ip, r10, ip, r1	@ D.40379, D.40379, D.40379, D.40379
	mov	r1, r8	@, D.40379
	str	r3, [sp, #24]	@ D.40379, %sfp
	cmp	ip, #0	@ D.40379,
	addgt	r0, ip, r2	@ D.40377, D.40379, D.40379
	rsble	r0, r2, ip	@ D.40377, D.40379, D.40379
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #36]	@ sprite_ref$2$0, %sfp
	mov	ip, r0	@ D.40379,
	ldr	r2, [sp, #4]	@ r, %sfp
	ldr	lr, [sp, #4]	@ r, %sfp
	ldr	r8, [sp, #40]	@ sprite_ref$2$1, %sfp
	mul	r0, r3, r2	@ D.40379, sprite_ref$2$0, r
	ldr	r3, [sp, #24]	@ D.40379, %sfp
	rsb	r2, r7, r3	@ D.40379, h2, D.40379
	mov	r1, r3, asr #1	@ D.40379, D.40379,
	mul	r0, r7, r0	@ D.40379, h2, D.40379
	mla	fp, r2, fp, r0	@ D.40379, D.40379, D.40379, D.40379
	mov	r0, r3, asl #4	@ tmp326, D.40379,
	rsb	r0, r0, #0	@ D.40379, tmp326
	mla	r0, r8, lr, r0	@ D.40379, sprite_ref$2$1, r, D.40379
	cmp	fp, #0	@ D.40379,
	addgt	fp, fp, r1	@ D.40377, D.40379, D.40379
	rsble	fp, r1, fp	@ D.40377, D.40379, D.40379
	mul	r0, r7, r0	@ D.40379, h2, D.40379
	mla	r0, r2, r10, r0	@ D.40379, D.40379, D.40379, D.40379
	cmp	r0, #0	@ D.40379,
	addgt	r2, r0, r1	@ D.40377, D.40379, D.40379
	rsble	r2, r1, r0	@ D.40377, D.40379, D.40379
	str	r2, [sp, #24]	@ D.40377, %sfp
	ldr	r2, [sp, #20]	@ D.40378, %sfp
	cmp	r2, #3	@ D.40378,
	ldrls	pc, [pc, r2, asl #2]	@ D.40378
	b	.L31	@
.L33:
	.word	.L43
	.word	.L34
	.word	.L35
	.word	.L36
.L43:
	mov	r6, #0	@ D.40379,
	mov	r3, r6	@ D.40379, D.40379
	mov	r8, r6	@ D.40379, D.40379
	mov	fp, r6	@ D.40379, D.40379
.L32:
	mov	r5, #0	@ shift$0,
	mov	lr, r5	@ shift$1, shift$0
.L40:
	ldr	r1, [sp, #12]	@ a, %sfp
	mov	r3, r3, asr lr	@ D.40379, D.40379,
	mov	fp, fp, asr r5	@ D.40379, D.40379,
	mov	lr, r6, asr lr	@ D.40379, D.40379,
	mov	r5, r8, asr r5	@ D.40379, D.40379,
	str	r3, [r9, #40]	@ D.40379, p_gmc_22(D)->Uco
	mov	r2, #1	@ tmp393,
	mov	r3, #0	@ tmp391,
	str	fp, [r9, #32]	@ D.40379, p_gmc_22(D)->Uo
	str	r5, [r9, #36]	@ D.40379, p_gmc_22(D)->Vo
	str	lr, [r9, #44]	@ D.40379, p_gmc_22(D)->Vco
	str	r1, [r9, #16]	@ a, p_gmc_22(D)->dU
	str	r1, [r9, #28]	@ a, p_gmc_22(D)->dV
	str	r3, [r9, #20]	@ tmp391, p_gmc_22(D)->dU
	str	r3, [r9, #24]	@ tmp391, p_gmc_22(D)->dV
	str	r2, [r9]	@ tmp393, p_gmc_22(D)->num_wp
	b	.L16	@
.L36:
	ldr	r2, [sp, #4]	@ r, %sfp
	cmp	r4, r5	@ beta, alpha
	ldr	r1, [sp, #16]	@ sprite_ref$0$0, %sfp
	str	ip, [sp, #40]	@ D.40379, %sfp
	rsb	r10, r2, #0	@ D.40379, r
	ldr	ip, [sp, #48]	@ rho, %sfp
	add	r2, r5, r4	@ D.40379, alpha, beta
	mul	r0, r1, r10	@ D.40379, sprite_ref$0$0, D.40379
	add	r2, r2, ip	@ D.40379, D.40379, rho
	movge	r4, r5	@ min_ab, alpha
	rsb	r5, r4, r2	@ shift$0, min_ab, D.40379
	mov	ip, #1	@ tmp488,
	sub	r8, r5, #1	@ D.40379, shift$0,
	mov	r8, ip, asl r8	@ D.40379, tmp488,
	ldr	ip, [sp, #28]	@ D.40379, %sfp
	mov	r7, r7, asr r4	@ h3, h2,
	mov	lr, r6, asr r4	@ w3, w2,
	add	r2, ip, r0	@ D.40379, D.40379, D.40379
	ldr	ip, [sp, #8]	@ sprite_ref$0$1, %sfp
	str	r0, [sp, #36]	@ D.40379, %sfp
	mov	r0, fp	@, D.40377
	add	fp, r8, r1, asl r5	@ D.40379, D.40379, sprite_ref$0$0,
	mov	r1, r3	@, D.40379
	add	r8, r8, ip, asl r5	@ D.40379, D.40379, sprite_ref$0$1,
	str	fp, [r9, #32]	@ D.40379, p_gmc_22(D)->Uo
	str	r8, [r9, #36]	@ D.40379, p_gmc_22(D)->Vo
	mul	r4, r7, r2	@ D.40379, h3, D.40379
	str	r3, [sp, #28]	@ D.40379, %sfp
	str	lr, [sp, #20]	@ w3, %sfp
	bl	__aeabi_idiv	@
	mov	r2, r6, asl #1	@ D.40379, w2,
	mov	r6, r6, asl #4	@ tmp368, w2,
	rsb	r6, r6, #0	@ D.40379, tmp368
	mul	r2, r7, r2	@ D.40379, h3, D.40379
	mul	r6, r7, r6	@ D.40379, h3, D.40379
	ldr	r3, [sp, #28]	@ D.40379, %sfp
	ldr	ip, [sp, #8]	@ sprite_ref$0$1, %sfp
	str	r6, [sp, #28]	@ D.40379, %sfp
	mov	r6, #1	@ tmp498,
	mov	r1, r3	@, D.40379
	add	r3, r5, #1	@ D.40379, shift$0,
	mul	r10, ip, r10	@ D.40379, sprite_ref$0$1, D.40379
	mov	r6, r6, asl r3	@ D.40379, tmp498,
	ldr	r3, [sp, #4]	@ r, %sfp
	str	r6, [sp, #32]	@ D.40379, %sfp
	ldr	ip, [sp, #40]	@ D.40379, %sfp
	mul	r6, r3, r2	@ D.40379, r, D.40379
	ldr	r3, [sp, #36]	@ D.40379, %sfp
	ldr	lr, [sp, #20]	@ w3, %sfp
	add	ip, ip, r10	@ D.40379, D.40379, D.40379
	str	r10, [sp, #4]	@ D.40379, %sfp
	add	r10, r0, r3	@ D.40379,, D.40379
	ldr	r2, [sp, #16]	@ sprite_ref$0$0, %sfp
	mul	r10, lr, r10	@ D.40379, w3, D.40379
	ldr	lr, [sp, #32]	@ D.40379, %sfp
	ldr	r0, [sp, #24]	@, %sfp
	mul	r7, r7, ip	@ D.40379, h3, D.40379
	add	r3, r4, r10	@ D.40379, D.40379, D.40379
	mla	r3, r2, r6, r3	@ D.40379, sprite_ref$0$0, D.40379, D.40379
	ldr	r2, [sp, #28]	@ D.40379, %sfp
	add	r3, r3, r2	@ D.40379, D.40379, D.40379
	add	r3, r3, lr	@ D.40379, D.40379, D.40379
	str	r3, [r9, #40]	@ D.40379, p_gmc_22(D)->Uco
	str	r3, [sp, #16]	@ D.40379, %sfp
	bl	__aeabi_idiv	@
	add	lr, r5, #2	@ shift$1, shift$0,
	str	r10, [r9, #20]	@ D.40379, p_gmc_22(D)->dU
	str	r4, [r9, #16]	@ D.40379, p_gmc_22(D)->dU
	str	r7, [r9, #24]	@ D.40379, p_gmc_22(D)->dV
	ldr	r1, [sp, #52]	@ D.40379, %sfp
	ldr	r2, [sp, #4]	@ D.40379, %sfp
	ldr	r3, [sp, #20]	@ w3, %sfp
	add	r0, r0, r1	@ D.40379,, D.40379
	add	r0, r0, r2	@ D.40379, D.40379, D.40379
	ldr	ip, [sp, #8]	@ sprite_ref$0$1, %sfp
	mul	r0, r3, r0	@ D.40379, w3, D.40379
	ldr	r3, [sp, #32]	@ D.40379, %sfp
	add	r2, r7, r0	@ D.40379, D.40379, D.40379
	mla	r6, ip, r6, r2	@ D.40379, sprite_ref$0$1, D.40379, D.40379
	ldr	r2, [sp, #28]	@ D.40379, %sfp
	str	r0, [r9, #28]	@ D.40379, p_gmc_22(D)->dV
	add	r6, r2, r6	@ D.40379, D.40379, D.40379
	add	r6, r3, r6	@ D.40379, D.40379, D.40379
	ldr	r3, [sp, #16]	@ D.40379, %sfp
	str	r6, [r9, #44]	@ D.40379, p_gmc_22(D)->Vco
.L37:
	ldr	r2, [sp, #12]	@ a, %sfp
	cmp	r4, r2, asl r5	@ D.40379, a,
	beq	.L48	@,
.L38:
	rsb	r5, r5, #16	@ shift_y, shift$0,
	rsb	lr, lr, #16	@ shift_c, shift$1,
	mov	fp, fp, asl r5	@ D.40379, D.40379,
	mov	r8, r8, asl r5	@ D.40379, D.40379,
	mov	r2, r4, asl r5	@ D.40379, D.40379,
	mov	r10, r10, asl r5	@ D.40379, D.40379,
	mov	r7, r7, asl r5	@ D.40379, D.40379,
	mov	r3, r3, asl lr	@ D.40379, D.40379,
	mov	r5, r0, asl r5	@ D.40379, D.40379,
	mov	lr, r6, asl lr	@ D.40379, D.40379,
	str	fp, [r9, #32]	@ D.40379, p_gmc_22(D)->Uo
	str	r8, [r9, #36]	@ D.40379, p_gmc_22(D)->Vo
	str	r2, [r9, #16]	@ D.40379, p_gmc_22(D)->dU
	str	r10, [r9, #20]	@ D.40379, p_gmc_22(D)->dU
	str	r7, [r9, #24]	@ D.40379, p_gmc_22(D)->dV
	str	r5, [r9, #28]	@ D.40379, p_gmc_22(D)->dV
	str	r3, [r9, #40]	@ D.40379, p_gmc_22(D)->Uco
	str	lr, [r9, #44]	@ D.40379, p_gmc_22(D)->Vco
.L16:
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L35:
	ldr	r0, [sp, #4]	@ r, %sfp
	mov	r1, r6, asl #1	@ D.40379, w2,
	ldr	r8, [sp, #16]	@ sprite_ref$0$0, %sfp
	rsb	r10, ip, r10	@ D.40379, D.40379, D.40379
	ldr	fp, [sp, #8]	@ sprite_ref$0$1, %sfp
	rsb	r7, r0, #0	@ D.40379, r
	ldr	r2, [sp, #28]	@ D.40379, %sfp
	mov	r6, r6, asl #4	@ tmp341, w2,
	mul	r1, r0, r1	@ D.40379, r, D.40379
	ldr	r3, [sp, #48]	@ rho, %sfp
	mla	r4, r8, r7, r2	@ D.40379, sprite_ref$0$0, D.40379, D.40379
	add	r5, r5, r3	@ shift$0, alpha, rho
	mla	r7, fp, r7, ip	@ D.40379, sprite_ref$0$1, D.40379, D.40379
	rsb	r2, r6, #0	@ D.40379, tmp341
	add	r3, r10, r4	@ D.40379, D.40379, D.40379
	add	r6, r5, #1	@ D.40379, shift$0,
	mov	ip, #1	@ tmp335,
	str	r10, [r9, #20]	@ D.40379, p_gmc_22(D)->dU
	add	lr, r4, r7	@ D.40379, D.40379, D.40379
	mov	r0, ip, asl r6	@ D.40379, tmp335,
	mla	r3, r8, r1, r3	@ D.40379, sprite_ref$0$0, D.40379, D.40379
	mov	r6, r8	@ sprite_ref$0$0, sprite_ref$0$0
	mla	r1, fp, r1, lr	@ D.40379, sprite_ref$0$1, D.40379, D.40379
	sub	r8, r5, #1	@ D.40379, shift$0,
	mov	r8, ip, asl r8	@ D.40379, tmp335,
	add	r3, r3, r2	@ D.40379, D.40379, D.40379
	add	fp, r8, r6, asl r5	@ D.40379, D.40379, sprite_ref$0$0,
	add	r3, r3, r0	@ D.40379, D.40379, D.40379
	add	r6, r2, r1	@ D.40379, D.40379, D.40379
	ldr	r2, [sp, #8]	@ sprite_ref$0$1, %sfp
	add	r6, r0, r6	@ D.40379, D.40379, D.40379
	str	r4, [r9, #16]	@ D.40379, p_gmc_22(D)->dU
	str	r7, [r9, #24]	@ D.40379, p_gmc_22(D)->dV
	mov	r0, r4	@ D.40379, D.40379
	add	r8, r8, r2, asl r5	@ D.40379, D.40379, sprite_ref$0$1,
	ldr	r2, [sp, #12]	@ a, %sfp
	str	r4, [r9, #28]	@ D.40379, p_gmc_22(D)->dV
	add	lr, r5, #2	@ shift$1, shift$0,
	str	r3, [r9, #40]	@ D.40379, p_gmc_22(D)->Uco
	cmp	r4, r2, asl r5	@ D.40379, a,
	str	fp, [r9, #32]	@ D.40379, p_gmc_22(D)->Uo
	str	r6, [r9, #44]	@ D.40379, p_gmc_22(D)->Vco
	str	r8, [r9, #36]	@ D.40379, p_gmc_22(D)->Vo
	bne	.L38	@,
.L48:
	cmp	r10, #0	@ D.40379,
	bne	.L38	@,
	cmp	r7, #0	@ D.40379,
	bne	.L38	@,
	cmp	r4, r0	@ D.40379, D.40379
	bne	.L38	@,
	b	.L40	@
.L34:
	ldr	r2, [sp, #16]	@ sprite_ref$0$0, %sfp
	ldr	r1, [sp, #8]	@ sprite_ref$0$1, %sfp
	and	r3, r2, #1	@ D.40379, sprite_ref$0$0,
	and	r6, r1, #1	@ D.40379, sprite_ref$0$1,
	orr	r3, r3, r2, asr #1	@ D.40379, D.40379, sprite_ref$0$0,
	mov	fp, r2	@ D.40379, sprite_ref$0$0
	orr	r6, r6, r1, asr #1	@ D.40379, D.40379, sprite_ref$0$1,
	mov	r8, r1	@ D.40379, sprite_ref$0$1
	b	.L32	@
.L47:
	ldr	r2, [sp, #12]	@ a, %sfp
	add	r10, ip, r1	@ sprite_ref$1$1, sprite_ref$0$1, D.40379
	ldr	r1, [sp, #12]	@ a, %sfp
	add	fp, lr, fp	@ sprite_ref$2$0, sprite_ref$0$0, D.40379
	str	fp, [sp, #36]	@ sprite_ref$2$0, %sfp
	mla	r2, r8, r2, lr	@ D.40379, D.40379, a, sprite_ref$0$0
	ldr	fp, [sp, #8]	@ D.40379, %sfp
	mla	r1, r3, r1, ip	@ D.40379, D.40379, a, sprite_ref$0$1
	str	lr, [sp, #16]	@ sprite_ref$0$0, %sfp
	add	r2, fp, r2	@ sprite_ref$1$0, D.40379, D.40379
	str	ip, [sp, #8]	@ sprite_ref$0$1, %sfp
	add	r1, r0, r1	@ sprite_ref$2$1, D.40379, D.40379
	str	r1, [sp, #40]	@ sprite_ref$2$1, %sfp
	b	.L22	@
.L31:
	mov	lr, #0	@ shift$1,
	ldr	r4, [r9, #16]	@ D.40379, p_gmc_22(D)->dU
	mov	r5, lr	@ shift$0, shift$1
	ldr	fp, [r9, #32]	@ D.40379, p_gmc_22(D)->Uo
	ldr	r8, [r9, #36]	@ D.40379, p_gmc_22(D)->Vo
	ldr	r3, [r9, #40]	@ D.40379, p_gmc_22(D)->Uco
	ldr	r6, [r9, #44]	@ D.40379, p_gmc_22(D)->Vco
	ldr	r10, [r9, #20]	@ D.40379, p_gmc_22(D)->dU
	ldr	r7, [r9, #24]	@ D.40379, p_gmc_22(D)->dV
	ldr	r0, [r9, #28]	@ D.40379, p_gmc_22(D)->dV
	b	.L37	@
.L41:
	mov	r2, #16	@ D.40379,
	mov	r6, #1	@ w2,
	str	r2, [sp, #44]	@ D.40379, %sfp
	mov	r5, #0	@ alpha,
	b	.L17	@
.L42:
	mov	r2, #16	@ D.40379,
	mov	r7, #1	@ h2,
	str	r2, [sp, #52]	@ D.40379, %sfp
	mov	r4, #0	@ beta,
	b	.L19	@
	.fnend
	.size	MP4_GetGMCparam, .-MP4_GetGMCparam
	.align	2
	.global	Mp4_GetUserDataBuf
	.type	Mp4_GetUserDataBuf, %function
Mp4_GetUserDataBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, r2, asl #2]	@ D.40386, *_5
	cmp	r3, #0	@ D.40386,
	beq	.L56	@,
	mov	r0, r3	@, D.40386
	bx	lr	@
.L56:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r2	@ UserID, UserID
	mov	r5, r1	@ pUserData, pUserData
	bl	GetUsd	@
	cmp	r0, #0	@ D.40386,
	str	r0, [r5, r4, asl #2]	@ D.40386, *_5
	mov	r3, r0	@ D.40386,
	addne	r2, r4, #4	@ D.40384, UserID,
	strne	r2, [r0, #1036]	@ D.40384, _10->from
	ldrne	r3, [r5, r4, asl #2]	@ D.40386, *_5
	mov	r0, r3	@, D.40386
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Mp4_GetUserDataBuf, .-Mp4_GetUserDataBuf
	.align	2
	.global	Mp4_ClearUsrData
	.type	Mp4_ClearUsrData, %function
Mp4_ClearUsrData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	sub	r4, r1, #4	@ ivtmp.196, pUserData,
	add	r5, r1, #12	@ D.40407, pUserData,
	mov	r7, r0	@ ChanID, ChanID
	mov	r6, #0	@ tmp120,
.L58:
	ldr	r1, [r4, #4]!	@, MEM[base: _18, offset: 0B]
	mov	r0, r7	@, ChanID
	bl	FreeUsdByDec	@
	cmp	r4, r5	@ ivtmp.196, D.40407
	str	r6, [r4]	@ tmp120, MEM[base: _18, offset: 0B]
	bne	.L58	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Mp4_ClearUsrData, .-Mp4_ClearUsrData
	.align	2
	.global	Mp4_Syntax_Init
	.type	Mp4_Syntax_Init, %function
Mp4_Syntax_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #19968	@, pCtx,
	mov	r1, #24	@,
	add	r0, r0, #8	@,,
	bl	__memzero	@
	add	r0, r4, #19968	@, pCtx,
	add	r0, r0, #32	@,,
	mov	r1, #604	@,
	bl	__memzero	@
	add	r0, r4, #20992	@, pCtx,
	add	r0, r0, #216	@,,
	mov	r1, #60	@,
	bl	__memzero	@
	add	r0, r4, #21248	@, pCtx,
	add	r0, r0, #20	@,,
	mov	r1, #768	@,
	bl	__memzero	@
	add	r0, r4, #22016	@, pCtx,
	add	r0, r0, #20	@,,
	mov	r1, #7	@,
	bl	__memzero	@
	add	r2, r4, #19968	@ ivtmp.240, pCtx,
	add	r3, r4, #20224	@ ivtmp.220, pCtx,
	ldr	r1, .L67	@ ivtmp.234,
	add	r0, r4, #20480	@ tmp147, pCtx,
	add	r2, r2, #116	@ ivtmp.240, ivtmp.240,
	add	r3, r3, #116	@ ivtmp.220, ivtmp.220,
	mov	ip, #1	@ tmp148,
	strb	ip, [r0, #805]	@ tmp148, pCtx_5(D)->MP4Syntax.syn_vos.visual_object_verid
	str	ip, [r0, #2120]	@ tmp148, pCtx_5(D)->IPVopErr
.L62:
	ldr	ip, [r1, #4]!	@ MEM[base: _46, offset: 0B], MEM[base: _46, offset: 0B]
	str	ip, [r2, #4]!	@ MEM[base: _46, offset: 0B], MEM[base: _47, offset: 0B]
	cmp	r2, r3	@ ivtmp.240, ivtmp.220
	bne	.L62	@,
	add	r0, r4, #20480	@ D.40454, pCtx,
	ldr	r2, .L67+4	@ ivtmp.214,
	add	r0, r0, #116	@ D.40454, D.40454,
.L63:
	ldr	r1, [r2, #4]!	@ MEM[base: _40, offset: 0B], MEM[base: _40, offset: 0B]
	str	r1, [r3, #4]!	@ MEM[base: _40, offset: 0B], MEM[base: _41, offset: 0B]
	cmp	r3, r0	@ ivtmp.220, D.40454
	bne	.L63	@,
	ldmfd	sp!, {r4, pc}	@
.L68:
	.align	2
.L67:
	.word	.LANCHOR1-4
	.word	.LANCHOR1+252
	.fnend
	.size	Mp4_Syntax_Init, .-Mp4_Syntax_Init
	.align	2
	.global	Global_Data_Init
	.type	Global_Data_Init, %function
Global_Data_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #22016	@, pCtx,
	mov	r1, #24	@,
	add	r0, r0, #48	@,,
	bl	__memzero	@
	add	r0, r4, #22016	@, pCtx,
	mov	r1, #16	@,
	add	r0, r0, #28	@,,
	bl	__memzero	@
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Init	@
	add	r3, r4, #20480	@ tmp119, pCtx,
	mov	r2, #0	@ tmp120,
	mov	r0, r2	@, tmp120
	str	r2, [r3, #2100]	@ tmp120, pCtx_3(D)->UsrData
	str	r2, [r3, #2104]	@ tmp120, pCtx_3(D)->UsrData
	str	r2, [r3, #2108]	@ tmp120, pCtx_3(D)->UsrData
	str	r2, [r3, #2112]	@ tmp120, pCtx_3(D)->UsrData
	str	r2, [r3, #2072]	@ tmp120, pCtx_3(D)->FrameNum
	str	r2, [r3, #1612]	@ tmp120, pCtx_3(D)->DecMode
	str	r2, [r3, #2056]	@ tmp120, pCtx_3(D)->SeqCnt
	str	r2, [r3, #2060]	@ tmp120, pCtx_3(D)->ImgCntOfSeq
	str	r2, [r3, #2064]	@ tmp120, pCtx_3(D)->ErrorLevel
	str	r2, [r3, #2116]	@ tmp120, pCtx_3(D)->CurUsrData
	str	r2, [r3, #2076]	@ tmp120, pCtx_3(D)->OldPicWidth
	str	r2, [r3, #2080]	@ tmp120, pCtx_3(D)->OldPicHeight
	str	r2, [r3, #2084]	@ tmp120, pCtx_3(D)->NewPicWidth
	str	r2, [r3, #2088]	@ tmp120, pCtx_3(D)->NewPicHeight
	str	r2, [r3, #2092]	@ tmp120, pCtx_3(D)->UserID
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Global_Data_Init, .-Global_Data_Init
	.align	2
	.global	Bs_Get_Matrix
	.type	Bs_Get_Matrix, %function
Bs_Get_Matrix:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0	@ last,
	mov	r8, r0	@ bs, bs
	mov	r6, r1	@ matrix, matrix
	mov	r4, r5	@ i, last
	ldr	r7, .L82	@ tmp171,
	b	.L72	@
.L76:
	mov	r5, r0	@ last, D.40471
.L72:
	mov	r1, #8	@,
	mov	r0, r8	@, bs
	bl	BsGet	@
	add	ip, r4, #1	@ tmp172, i,
	sxth	r9, r4	@ D.40471, i
	uxth	r3, ip	@ i, tmp172
	add	r1, r7, r9, lsl #2	@ tmp155, tmp171, D.40471,
	sxth	r2, r3	@ i, i
	uxth	r3, r3	@ i, i
	ldr	r1, [r1, #512]	@ D.40471, scan_tables
	mov	r4, r3	@ i, i
	adds	lr, r0, #0	@ D.40474, D.40471,
	str	r0, [r6, r1, asl #2]	@ D.40471, *_20
	movne	lr, #1	@ D.40474,
	cmp	r2, #63	@ i,
	movgt	r2, #0	@, D.40474
	andle	r2, lr, #1	@,, D.40474, D.40474
	cmp	r2, #0	@ D.40474,
	bne	.L76	@,
	cmp	lr, #0	@ D.40474,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r9, #63	@ D.40471,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L75:
	uxth	r4, ip	@ i, tmp172
	str	r5, [r6, r1, asl #2]	@ last, *_33
	add	ip, r4, #1	@ tmp172, i,
	sxth	r3, r4	@ i, i
	cmp	r3, #64	@ i,
	add	r3, r7, r3, lsl #2	@ tmp169, tmp171, i,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r1, [r3, #512]	@ D.40476, scan_tables
	b	.L75	@
.L83:
	.align	2
.L82:
	.word	.LANCHOR1
	.fnend
	.size	Bs_Get_Matrix, .-Bs_Get_Matrix
	.align	2
	.global	Mp4_Syntax_Gop
	.type	Mp4_Syntax_Gop, %function
Mp4_Syntax_Gop:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #32
	sub	sp, sp, #32	@,,
	mov	r4, r0	@ pCtx, pCtx
	add	r0, sp, #4	@ tmp153,,
	bl	BsInit	@
	mov	r1, #32	@,
	add	r0, sp, #4	@ tmp154,,
	bl	BsSkip	@
	mov	r1, #5	@,
	add	r0, sp, #4	@ tmp155,,
	bl	BsGet	@
	mov	r1, #6	@,
	add	r0, sp, #4	@ tmp156,,
	bl	BsGet	@
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp157,,
	bl	BsGet	@
	subs	r6, r0, #0	@ D.40480,
	bne	.L85	@,
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #20480	@ tmp130, pCtx,
	strb	r6, [r4, #1558]	@ D.40480, pCtx_14(D)->MP4SyntaxState.gop_decode_right
	add	r0, sp, #4	@ tmp158,,
	bl	BsPos	@
	ldr	r3, .L89	@ tmp134,
	ldr	r3, [r3]	@ D.40481, g_event_report
	cmp	r3, #0	@ D.40481,
	mov	r5, r0	@ BitUsed,
	beq	.L86	@,
	mov	r2, r6	@, D.40480
	ldr	r0, [r4, #2480]	@, pCtx_14(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.40481
	mov	r0, r5	@ D.40479, BitUsed
.L86:
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L85:
	mov	r1, #6	@,
	add	r0, sp, #4	@ tmp159,,
	bl	BsGet	@
	mov	r1, #1	@,
	add	r4, r4, #20480	@ tmp141, pCtx,
	add	r0, sp, #4	@ tmp160,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #790]	@, pCtx_14(D)->MP4Syntax.closed_gov
	add	r0, sp, #4	@ tmp161,,
	bl	BsGet	@
	mov	r3, #1	@ tmp149,
	strb	r3, [r4, #1558]	@ tmp149, pCtx_14(D)->MP4SyntaxState.gop_decode_right
	strb	r0, [r4, #791]	@, pCtx_14(D)->MP4Syntax.broken_link
	add	r0, sp, #4	@ tmp162,,
	bl	BsPos	@
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L90:
	.align	2
.L89:
	.word	g_event_report
	.fnend
	.size	Mp4_Syntax_Gop, .-Mp4_Syntax_Gop
	.align	2
	.global	Mp4_Syntax_UserData
	.type	Mp4_Syntax_UserData, %function
Mp4_Syntax_UserData:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	cmp	r2, #6	@ len,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r3, #0	@ tmp195,
	mov	r4, r0	@ pCtx, pCtx
	str	r3, [sp, #12]	@ tmp195, ver
	str	r3, [sp, #16]	@ tmp195, build
	str	r3, [sp, #20]	@ tmp195, ver2
	str	r3, [sp, #24]	@ tmp195, ver3
	strb	r3, [sp, #11]	@ tmp195, last
	ble	.L92	@,
	cmp	r2, #4	@ len,
	ble	.L93	@,
	mov	r5, r0	@ D.40510, pCtx
	ldrb	r0, [r1, #4]!	@ zero_extendqisi2	@ D.40515, MEM[(HI_U8 *)ptr_44(D) + 4B]
	mov	ip, #4	@ i,
	movw	r7, #1030	@ tmp388,
	mvn	r3, r0, asl #24	@ D.40509, D.40515,
	strb	r0, [r5, #3]!	@ D.40515, pCtx_39(D)->TmpUserData
	mvn	r3, r3, lsr #24	@ D.40509, D.40509,
	mov	r0, r5	@ ivtmp.275, D.40510
	mov	r3, r3, asl #8	@ monitor, D.40509,
	b	.L94	@
.L99:
	ldrb	lr, [r1, #1]!	@ zero_extendqisi2	@ D.40515, MEM[base: _200, offset: 0B]
	orr	r3, r3, lr	@ D.40509, monitor, D.40515
	mov	r3, r3, asl #8	@ monitor, D.40509,
	cmp	r3, #256	@ monitor,
	beq	.L154	@,
	cmp	ip, r7	@ i, tmp388
	strb	lr, [r0, #1]!	@ D.40515, MEM[base: _192, offset: 0B]
	beq	.L155	@,
.L94:
	sub	r6, ip, #3	@ userdata_len, i,
	add	ip, ip, #1	@ i, i,
	cmp	ip, r2	@ i, len
	bne	.L99	@,
.L151:
	add	r8, r4, #20480	@ tmp385, pCtx,
	cmp	r6, #2	@ userdata_len,
	mov	r3, #1	@ tmp217,
	mov	r9, r6	@ userdata_len, userdata_len
	mov	r7, r2, asl #3	@ BitUsed, len,
	strb	r3, [r8, #1562]	@ tmp217, pCtx_39(D)->MP4SyntaxState.userdata_decode_right
	bhi	.L156	@,
.L131:
	mov	r0, r7	@ D.40511, BitUsed
.L149:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L92:
	add	r4, r0, #20480	@ tmp205, pCtx,
	add	r2, r2, #1	@ D.40514, len,
	strb	r3, [r4, #1562]	@ tmp195, pCtx_39(D)->MP4SyntaxState.userdata_decode_right
	mov	r0, r2, asl #3	@ D.40511, D.40514,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L154:
	sub	ip, ip, #2	@ len, i,
	cmp	r2, ip	@ len, len
	bge	.L157	@,
.L98:
	add	r2, r2, #1	@ D.40514, len,
	mov	r0, r2, asl #3	@ D.40511, D.40514,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L156:
	add	r1, r4, #22528	@, pCtx,
	ldr	r2, [r8, #2092]	@, pCtx_39(D)->UserID
	add	r1, r1, #52	@,,
	ldr	r0, [r8, #2480]	@, pCtx_39(D)->ChanID
	bl	Mp4_GetUserDataBuf	@
	cmp	r0, #0	@ D.40517,
	str	r0, [r8, #2116]	@ D.40517, pCtx_39(D)->CurUsrData
	beq	.L102	@,
	cmn	r6, #-2147483648	@ userdata_len,
	sub	r6, r6, #2	@ userdata_len, userdata_len,
	str	r6, [r0, #1048]	@ userdata_len, _64->data_size
	movpl	r2, #0	@ D.40512,
	ldr	r0, [r8, #2116]	@ D.40518, pCtx_39(D)->CurUsrData
	bmi	.L158	@,
.L103:
	mov	r1, r5	@, D.40510
	bl	memcpy	@
	ldr	r2, .L161	@ tmp243,
	ldr	r3, [r8, #1580]	@ pCtx_39(D)->pstExtraData, pCtx_39(D)->pstExtraData
	ldr	r1, [r8, #2116]	@ D.40517, pCtx_39(D)->CurUsrData
	ldr	ip, [r2]	@ D.40522, g_event_report
	ldrd	r2, [r3, #56]	@ D.40521, pCtx_39(D)->pstExtraData,
	add	r1, r1, #1056	@ tmp242, D.40517,
	cmp	ip, #0	@ D.40522,
	strd	r2, [r1]	@ D.40521, _79->PTS
	beq	.L102	@,
	ldr	r3, [r8, #2116]	@ pCtx_39(D)->CurUsrData, pCtx_39(D)->CurUsrData
	add	r2, sp, #32	@ tmp247,,
	mov	r1, #6	@,
	ldr	r0, [r8, #2480]	@, pCtx_39(D)->ChanID
	str	r3, [r2, #-4]!	@ pCtx_39(D)->CurUsrData, para
	blx	ip	@ D.40522
.L102:
	cmn	r6, #-2147483646	@ userdata_len,
	movpl	r6, #0	@ tmp,
	bmi	.L159	@,
.L104:
	add	r6, r4, r6	@ tmp252, pCtx, tmp
	mov	r2, #0	@ tmp253,
	add	ip, sp, #11	@ tmp392,,
	add	r3, sp, #16	@ tmp390,,
	strb	r2, [r6, #3]	@ tmp253, pCtx_39(D)->TmpUserData
	mov	r0, r5	@, D.40510
	add	r2, sp, #12	@ tmp391,,
	ldr	r1, .L161+4	@,
	str	ip, [sp]	@ tmp392,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L160	@,
.L105:
	ldr	r3, [sp, #16]	@ build, build
	cmp	r0, #3	@ e,
	ldr	r2, [sp, #12]	@ ver, ver
	str	r3, [r8, #1540]	@ build, pCtx_39(D)->MP4Syntax.divx_build
	movne	r3, #0	@ D.40509,
	ldreqsb	r3, [sp, #11]	@ last, last
	str	r2, [r8, #1536]	@ ver, pCtx_39(D)->MP4Syntax.divx_version
	subeq	r3, r3, #112	@ D.40509, last,
	clzeq	r3, r3	@ D.40509, D.40509
	moveq	r3, r3, lsr #5	@ D.40509, D.40509,
	str	r3, [r8, #1544]	@ D.40509, pCtx_39(D)->MP4Syntax.divx_packed
.L106:
	add	r2, sp, #16	@ tmp396,,
	ldr	r1, .L161+8	@,
	mov	r0, r5	@, D.40510
	bl	sscanf	@
	cmp	r0, #1	@,
	beq	.L108	@,
	add	r3, sp, #16	@ tmp397,,
	add	r4, sp, #24	@ tmp280,,
	str	r3, [sp, #4]	@ tmp397,
	add	r2, sp, #12	@ tmp398,,
	add	r3, sp, #20	@ tmp399,,
	str	r4, [sp]	@ tmp280,
	ldr	r1, .L161+12	@,
	mov	r0, r5	@, D.40510
	bl	sscanf	@
	cmp	r0, #4	@,
	beq	.L108	@,
	str	r4, [sp]	@ tmp280,
	add	r3, sp, #20	@ tmp400,,
	add	r2, sp, #12	@ tmp401,,
	ldr	r1, .L161+16	@,
	mov	r0, r5	@, D.40510
	bl	sscanf	@
	add	r0, r0, #1	@ e,,
	cmp	r0, #1	@ e,
	ble	.L109	@,
	ldr	r2, [sp, #20]	@ ver2, ver2
	ldr	r3, [sp, #12]	@ ver, ver
	ldr	r1, [sp, #24]	@ ver3, ver3
	mov	r2, r2, asl #8	@ D.40514, ver2,
	add	r3, r2, r3, lsl #16	@ D.40514, D.40514, ver,
	add	r3, r3, r1	@ D.40514, D.40514, ver3
	str	r3, [sp, #16]	@ D.40514, build
.L109:
	cmp	r0, #4	@ e,
	beq	.L108	@,
	mov	r2, #7	@,
	ldr	r1, .L161+20	@,
	mov	r0, r5	@, D.40510
	bl	strncmp	@
	cmp	r0, #0	@,
	movweq	r3, #4600	@ tmp296,
	streq	r3, [r8, #1552]	@ tmp296, pCtx_39(D)->MP4Syntax.lavc_build
.L120:
	add	r2, sp, #16	@ tmp402,,
	ldr	r1, .L161+24	@,
	mov	r0, r5	@, D.40510
	bl	sscanf	@
	mov	r3, #0	@ tmp308,
	ldr	r1, [r8, #1536]	@ pCtx_39(D)->MP4Syntax.divx_version, pCtx_39(D)->MP4Syntax.divx_version
	strb	r3, [r8, #801]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA
	strb	r3, [r8, #802]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA2
	strb	r3, [r8, #799]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_EXTEND
	strb	r3, [r8, #798]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_FIND_POINT
	strb	r3, [r8, #800]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_DIVX500B413
	cmp	r0, #1	@,
	ldreq	r2, [sp, #16]	@ D.40513, build
	ldrne	r2, [r8, #1548]	@ D.40513, pCtx_39(D)->MP4Syntax.xvid_build
	streq	r2, [r8, #1548]	@ D.40513, pCtx_39(D)->MP4Syntax.xvid_build
	cmp	r2, #0	@ D.40513,
	beq	.L113	@,
	cmp	r1, r3	@ pCtx_39(D)->MP4Syntax.divx_version,
	strne	r3, [r8, #1536]	@ tmp308, pCtx_39(D)->MP4Syntax.divx_version
	strne	r3, [r8, #1540]	@ tmp308, pCtx_39(D)->MP4Syntax.divx_build
	cmp	r2, #1	@ D.40513,
	mvnne	r0, #0	@ D.40509,
	movne	r1, #0	@ D.40509,
	beq	.L153	@,
.L123:
	movw	r3, #502	@ tmp335,
	cmp	r1, r3	@ D.40509, tmp335
	bls	.L115	@,
.L122:
	mov	r3, #1	@ tmp338,
	strb	r3, [r8, #802]	@ tmp338, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA2
.L115:
	sub	r2, r2, #1	@ D.40509, D.40513,
	cmp	r2, #11	@ D.40509,
	bhi	.L116	@,
.L124:
	mov	r3, #1	@ tmp343,
	strb	r3, [r8, #799]	@ tmp343, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_EXTEND
.L116:
	ldr	r3, [r8, #1552]	@ pCtx_39(D)->MP4Syntax.lavc_build, pCtx_39(D)->MP4Syntax.lavc_build
	movw	r2, #4668	@ tmp349,
	sub	r3, r3, #1	@ D.40509, pCtx_39(D)->MP4Syntax.lavc_build,
	cmp	r3, r2	@ D.40509, tmp349
	movls	r3, #1	@ tmp352,
	strlsb	r3, [r8, #799]	@ tmp352, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_EXTEND
	movw	r3, #498	@ tmp354,
	cmp	r0, r3	@ D.40509, tmp354
	movls	r3, #1	@ tmp357,
	strlsb	r3, [r8, #799]	@ tmp357, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	r1, #500	@ D.40509,
	bne	.L131	@,
	ldr	r2, [r8, #1540]	@ pCtx_39(D)->MP4Syntax.divx_build, pCtx_39(D)->MP4Syntax.divx_build
	movw	r3, #413	@ tmp362,
	mov	r0, r7	@ D.40511, BitUsed
	cmp	r2, r3	@ pCtx_39(D)->MP4Syntax.divx_build, tmp362
	moveq	r3, #1	@ tmp365,
	streqb	r3, [r8, #800]	@ tmp365, pCtx_39(D)->MP4Syntax.FF_BUG_DIVX500B413
	b	.L149	@
.L155:
	add	r4, r4, #20480	@ tmp212, pCtx,
	mov	r3, #0	@ tmp213,
	movw	r0, #8224	@ D.40511,
	strb	r3, [r4, #1562]	@ tmp213, pCtx_39(D)->MP4SyntaxState.userdata_decode_right
	b	.L149	@
.L108:
	ldr	r3, [sp, #16]	@ build, build
	str	r3, [r8, #1552]	@ build, pCtx_39(D)->MP4Syntax.lavc_build
	b	.L120	@
.L158:
	cmp	r9, #1024	@ userdata_len,
	movlt	r2, r9	@ D.40512, userdata_len
	movge	r2, #1024	@ D.40512,
	b	.L103	@
.L113:
	cmp	r1, #500	@ D.40509,
	subcs	r0, r1, #1	@ D.40509, D.40509,
	movcs	r3, #1	@ tmp378,
	strcsb	r3, [r8, #801]	@ tmp378, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA
	bcs	.L123	@,
	movw	r3, #502	@ tmp375,
	cmp	r1, r3	@ D.40509, tmp375
	sub	r0, r1, #1	@ D.40509, D.40509,
	bhi	.L122	@,
	b	.L116	@
.L159:
	add	r6, r6, #2	@ tmp, userdata_len,
	cmp	r6, #1024	@ tmp,
	movge	r6, #1024	@ tmp,
	b	.L104	@
.L93:
	cmp	r2, #3	@ len,
	ble	.L98	@,
	add	r4, r4, #20480	@ tmp370, pCtx,
	mov	r3, #1	@ tmp371,
	mov	r0, #32	@ D.40511,
	strb	r3, [r4, #1562]	@ tmp371, pCtx_39(D)->MP4SyntaxState.userdata_decode_right
	b	.L149	@
.L157:
	mov	r2, ip	@ len, len
	b	.L151	@
.L160:
	add	r3, sp, #11	@ tmp393,,
	add	r2, sp, #12	@ tmp395,,
	str	r3, [sp]	@ tmp393,
	mov	r0, r5	@, D.40510
	add	r3, sp, #16	@ tmp394,,
	ldr	r1, .L161+28	@,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L106	@,
	b	.L105	@
.L153:
	strb	r2, [r8, #801]	@ D.40513, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA
	mvn	r0, #0	@ D.40509,
	mov	r1, #0	@ D.40509,
	b	.L124	@
.L162:
	.align	2
.L161:
	.word	g_event_report
	.word	.LC0
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC1
	.fnend
	.size	Mp4_Syntax_UserData, .-Mp4_Syntax_UserData
	.align	2
	.global	Mp4_Syntax_Vo
	.type	Mp4_Syntax_Vo, %function
Mp4_Syntax_Vo:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	add	r4, r0, #20480	@ tmp322, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	add	r0, sp, #4	@ tmp325,,
	mov	r7, r2	@ len, len
	bl	BsInit	@
	mov	r6, #1	@ tmp161,
	mov	r3, #0	@ tmp157,
	mov	r1, #32	@,
	strb	r3, [r4, #804]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.is_visual_object_identifier
	add	r5, r5, #16384	@ tmp324, pCtx,
	strb	r3, [r4, #806]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_priority
	strb	r3, [r4, #807]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_type
	strb	r3, [r4, #808]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.video_signal_type
	strb	r3, [r4, #809]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.video_format
	strb	r3, [r4, #810]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.video_range
	strb	r3, [r4, #811]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.colour_description
	str	r3, [r4, #816]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.colour_primaries
	str	r3, [r4, #820]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.transfer_characteristics
	str	r3, [r4, #824]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.matrix_coefficients
	strb	r6, [r4, #805]	@ tmp161, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_verid
	add	r0, sp, #4	@ tmp326,,
	bl	BsSkip	@
	mov	r1, r6	@, tmp161
	add	r0, sp, #4	@ tmp327,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40542,
	strb	r0, [r5, #3592]	@ D.40542, pCtx_11(D)->MP4Vos.is_visual_object_identifier
	cmp	r0, #0	@ D.40542,
	streqb	r6, [r5, #3593]	@ tmp161, pCtx_11(D)->MP4Vos.visual_object_verid
	bne	.L179	@,
.L165:
	mov	r1, #4	@,
	add	r0, sp, r1	@ tmp330,,
	bl	BsGet	@
	uxtb	r6, r0	@ D.40542,
	strb	r6, [r5, #3595]	@ D.40542, pCtx_11(D)->MP4Vos.visual_object_type
	cmp	r6, #1	@ D.40542,
	beq	.L180	@,
	mov	r6, #0	@ tmp244,
	add	r0, sp, #4	@ tmp338,,
	strb	r6, [r4, #1557]	@ tmp244, pCtx_11(D)->MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	ldr	r3, .L182	@ tmp247,
	ldr	r3, [r3]	@ D.40543, g_event_report
	cmp	r3, r6	@ D.40543,
	mov	r5, r0	@ BitUsed,
	beq	.L169	@,
	mov	r2, r6	@, tmp244
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.40543
	mov	r0, r5	@ D.40540, BitUsed
.L169:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L179:
	mov	r1, #4	@,
	add	r0, sp, r1	@ tmp328,,
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r5, #3593]	@, pCtx_11(D)->MP4Vos.visual_object_verid
	add	r0, sp, #4	@ tmp329,,
	bl	BsGet	@
	strb	r0, [r5, #3594]	@, pCtx_11(D)->MP4Vos.visual_object_priority
	b	.L165	@
.L180:
	mov	r1, r6	@, D.40542
	add	r0, sp, #4	@ tmp331,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40542,
	strb	r0, [r5, #3596]	@ D.40542, pCtx_11(D)->MP4Vos.video_signal_type
	cmp	r0, #0	@ D.40542,
	bne	.L181	@,
.L168:
	mov	r3, #1	@ tmp253,
	add	r0, sp, #4	@ tmp339,,
	strb	r3, [r4, #1557]	@ tmp253, pCtx_11(D)->MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	cmp	r0, r7, asl #3	@, len,
	bgt	.L170	@,
	ldrb	r3, [r5, #3592]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Vos.is_visual_object_identifier, pCtx_11(D)->MP4Vos.is_visual_object_identifier
	strb	r3, [r4, #804]	@ pCtx_11(D)->MP4Vos.is_visual_object_identifier, pCtx_11(D)->MP4Syntax.syn_vos.is_visual_object_identifier
	ldrb	r3, [r5, #3593]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Vos.visual_object_verid, pCtx_11(D)->MP4Vos.visual_object_verid
	strb	r3, [r4, #805]	@ pCtx_11(D)->MP4Vos.visual_object_verid, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_verid
	ldrb	r3, [r5, #3594]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Vos.visual_object_priority, pCtx_11(D)->MP4Vos.visual_object_priority
	strb	r3, [r4, #806]	@ pCtx_11(D)->MP4Vos.visual_object_priority, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_priority
	ldrb	r3, [r5, #3595]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Vos.visual_object_type, pCtx_11(D)->MP4Vos.visual_object_type
	strb	r3, [r4, #807]	@ pCtx_11(D)->MP4Vos.visual_object_type, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_type
	ldrb	r3, [r5, #3596]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Vos.video_signal_type, pCtx_11(D)->MP4Vos.video_signal_type
	strb	r3, [r4, #808]	@ pCtx_11(D)->MP4Vos.video_signal_type, pCtx_11(D)->MP4Syntax.syn_vos.video_signal_type
	ldrb	r3, [r5, #3597]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Vos.video_format, pCtx_11(D)->MP4Vos.video_format
	strb	r3, [r4, #809]	@ pCtx_11(D)->MP4Vos.video_format, pCtx_11(D)->MP4Syntax.syn_vos.video_format
	ldrb	r3, [r5, #3598]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Vos.video_range, pCtx_11(D)->MP4Vos.video_range
	strb	r3, [r4, #810]	@ pCtx_11(D)->MP4Vos.video_range, pCtx_11(D)->MP4Syntax.syn_vos.video_range
	ldrb	r3, [r5, #3599]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Vos.colour_description, pCtx_11(D)->MP4Vos.colour_description
	strb	r3, [r4, #811]	@ pCtx_11(D)->MP4Vos.colour_description, pCtx_11(D)->MP4Syntax.syn_vos.colour_description
	ldr	r3, [r5, #3604]	@ pCtx_11(D)->MP4Vos.colour_primaries, pCtx_11(D)->MP4Vos.colour_primaries
	str	r3, [r4, #816]	@ pCtx_11(D)->MP4Vos.colour_primaries, pCtx_11(D)->MP4Syntax.syn_vos.colour_primaries
	ldr	r3, [r5, #3608]	@ pCtx_11(D)->MP4Vos.transfer_characteristics, pCtx_11(D)->MP4Vos.transfer_characteristics
	str	r3, [r4, #820]	@ pCtx_11(D)->MP4Vos.transfer_characteristics, pCtx_11(D)->MP4Syntax.syn_vos.transfer_characteristics
	ldr	r3, [r5, #3612]	@ pCtx_11(D)->MP4Vos.matrix_coefficients, pCtx_11(D)->MP4Vos.matrix_coefficients
	str	r3, [r4, #824]	@ pCtx_11(D)->MP4Vos.matrix_coefficients, pCtx_11(D)->MP4Syntax.syn_vos.matrix_coefficients
.L170:
	add	r0, sp, #4	@ tmp340,,
	bl	BsPos	@
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L181:
	mov	r1, #3	@,
	add	r0, sp, #4	@ tmp332,,
	bl	BsGet	@
	mov	r1, r6	@, D.40542
	strb	r0, [r5, #3597]	@, pCtx_11(D)->MP4Vos.video_format
	add	r0, sp, #4	@ tmp333,,
	bl	BsGet	@
	mov	r1, r6	@, D.40542
	strb	r0, [r5, #3598]	@, pCtx_11(D)->MP4Vos.video_range
	add	r0, sp, #4	@ tmp334,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40542,
	strb	r0, [r5, #3599]	@ D.40542, pCtx_11(D)->MP4Vos.colour_description
	cmp	r0, #0	@ D.40542,
	beq	.L168	@,
	mov	r1, #8	@,
	add	r0, sp, #4	@ tmp335,,
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r5, #3604]	@, pCtx_11(D)->MP4Vos.colour_primaries
	add	r0, sp, #4	@ tmp336,,
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r5, #3608]	@, pCtx_11(D)->MP4Vos.transfer_characteristics
	add	r0, sp, #4	@ tmp337,,
	bl	BsGet	@
	str	r0, [r5, #3612]	@, pCtx_11(D)->MP4Vos.matrix_coefficients
	b	.L168	@
.L183:
	.align	2
.L182:
	.word	g_event_report
	.fnend
	.size	Mp4_Syntax_Vo, .-Mp4_Syntax_Vo
	.align	2
	.global	Mp4_Syntax_Vol
	.type	Mp4_Syntax_Vol, %function
Mp4_Syntax_Vol:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r0, #20480	@ tmp797, pCtx,
	mov	r7, r0	@ pCtx, pCtx
	ldr	r3, .L341	@ tmp332,
	ldr	r0, [r6, #2480]	@ pCtx_45(D)->ChanID, pCtx_45(D)->ChanID
	add	r8, r7, #19968	@ __p, pCtx,
	.pad #36
	sub	sp, sp, #36	@,,
	add	r8, r8, #32	@ __p, __p,
	add	r4, r7, #16384	@ tmp796, pCtx,
	ldr	r3, [r3, r0, asl #2]	@ D.40599, s_pstVfmwChan
	add	r0, sp, #4	@ tmp800,,
	cmp	r3, #0	@ D.40599,
	moveq	r9, #8192	@ MaxVerSize,
	ldrne	r10, [r3, #1456]	@ MaxHorSize, _47->stSynExtraData.stChanOption.s32MaxWidth
	ldrne	r9, [r3, #1460]	@ MaxVerSize, _47->stSynExtraData.stChanOption.s32MaxHeight
	moveq	r10, r9	@ MaxHorSize, MaxVerSize
	bl	BsInit	@
	mov	r3, #0	@ tmp339,
	mov	r0, r8	@, __p
	strb	r3, [r6, #789]	@ tmp339, pCtx_45(D)->MP4Syntax.vol_decode_over
	mov	r1, #604	@,
	bl	__memzero	@
	mov	r1, #32	@,
	add	r0, sp, #4	@ tmp801,,
	bl	BsSkip	@
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp802,,
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #3620]	@, pCtx_45(D)->MP4Vol.random_accessible_vol
	add	r0, sp, #4	@ tmp803,,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #3644]	@, pCtx_45(D)->MP4Vol.video_object_type_indication
	add	r0, sp, #4	@ tmp804,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3616]	@ D.40600, pCtx_45(D)->MP4Vol.is_object_layer_identifier
	cmp	r0, #0	@ D.40600,
	ldreqb	r3, [r6, #805]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Syntax.syn_vos.visual_object_verid, pCtx_45(D)->MP4Syntax.syn_vos.visual_object_verid
	streqb	r3, [r4, #3617]	@ pCtx_45(D)->MP4Syntax.syn_vos.visual_object_verid, pCtx_45(D)->MP4Vol.video_object_layer_verid
	bne	.L331	@,
.L187:
	mov	r1, #4	@,
	add	r0, sp, r1	@ tmp807,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3619]	@ D.40600, pCtx_45(D)->MP4Vol.aspect_ratio_info
	cmp	r0, #15	@ D.40600,
	beq	.L332	@,
.L188:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp810,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3621]	@ D.40600, pCtx_45(D)->MP4Vol.vol_control_parameters
	cmp	r0, #0	@ D.40600,
	moveq	r3, #1	@ tmp467,
	streqb	r3, [r4, #3622]	@ tmp467, pCtx_45(D)->MP4Vol.chroma_format
	bne	.L333	@,
.L193:
	mov	r1, #2	@,
	add	r0, sp, #4	@ tmp831,,
	bl	BsGet	@
	uxtb	r5, r0	@ D.40600,
	strb	r5, [r4, #3624]	@ D.40600, pCtx_45(D)->MP4Vol.video_object_layer_shape
	cmp	r5, #0	@ D.40600,
	addne	r0, sp, #4	@ tmp832,,
	movne	r5, #0	@ tmp475,
	beq	.L334	@,
.L325:
	strb	r5, [r6, #1559]	@ tmp760, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	ldr	r3, .L341+4	@ tmp763,
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, r5	@ D.40602,
	mov	r4, r0	@ BitUsed,
	beq	.L264	@,
.L306:
	mov	r2, r5	@, tmp760
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.40602
	mov	r0, r4	@ D.40592, BitUsed
.L299:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L334:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp833,,
	bl	BsGet	@
	subs	fp, r0, #0	@ D.40594,
	beq	.L310	@,
	mov	r1, #16	@,
	add	r0, sp, #4	@ tmp835,,
	bl	BsGet	@
	cmp	r0, #0	@ D.40594,
	str	r0, [r4, #3688]	@ D.40594, pCtx_45(D)->MP4Vol.vop_time_increment_resolution
	beq	.L201	@,
	subs	r0, r0, #1	@ value, D.40594,
	beq	.L201	@,
	mov	r3, r0	@ value, value
.L203:
	add	r5, r5, #1	@ tmp496, n,
	movs	r3, r3, lsr #1	@ value, value,
	uxth	r5, r5	@ n, tmp496
	bne	.L203	@,
	sxth	r5, r5	@ n, n
	cmp	r5, #0	@ n,
	ble	.L201	@,
.L205:
	add	r3, r3, #1	@ tmp498, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp498
	bne	.L205	@,
	sxth	r3, r3	@ D.40593, n
.L302:
	str	r3, [r4, #3684]	@ tmp503, pCtx_45(D)->MP4Vol.vop_time_incr_bits
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp836,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.40594,
	beq	.L315	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp838,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3625]	@ D.40600, pCtx_45(D)->MP4Vol.fixed_vop_rate
	cmp	r0, #0	@ D.40600,
	bne	.L335	@,
.L208:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp840,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.40594,
	beq	.L315	@,
	mov	r1, #13	@,
	add	r0, sp, #4	@ tmp842,,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #3696]	@, pCtx_45(D)->MP4Vol.video_object_layer_width
	add	r0, sp, #4	@ tmp843,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.40594,
	beq	.L315	@,
	mov	r1, #13	@,
	add	r0, sp, #4	@ tmp845,,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #3700]	@, pCtx_45(D)->MP4Vol.video_object_layer_height
	add	r0, sp, #4	@ tmp846,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.40594,
	beq	.L315	@,
	ldr	r3, [r4, #3696]	@ D.40601, pCtx_45(D)->MP4Vol.video_object_layer_width
	cmp	r3, #31	@ D.40601,
	bls	.L212	@,
	ldr	r2, [r4, #3700]	@ D.40601, pCtx_45(D)->MP4Vol.video_object_layer_height
	cmp	r2, #31	@ D.40601,
	bls	.L212	@,
	mul	r3, r3, r2	@ D.40601, D.40601, D.40601
	mul	r9, r9, r10	@ D.40594, MaxVerSize, MaxHorSize
	cmp	r3, r9	@ D.40601, D.40594
	bls	.L213	@,
.L212:
	mov	r5, #0	@ tmp568,
	add	r0, sp, #4	@ tmp848,,
	strb	r5, [r6, #1559]	@ tmp568, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	ldr	r3, .L341+4	@ tmp571,
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, r5	@ D.40602,
	mov	r4, r0	@ BitUsed,
	bne	.L308	@,
.L264:
	mov	r0, r4	@ D.40592, BitUsed
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L310:
	bl	vfmw_dprint_nothing	@
	strb	fp, [r6, #1559]	@ D.40594, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp834,,
	bl	BsPos	@
	ldr	r3, .L341+4	@ tmp488,
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, #0	@ D.40602,
	mov	r4, r0	@ BitUsed,
	beq	.L264	@,
	mov	r2, fp	@, D.40594
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.40602
	mov	r0, r4	@ D.40592, BitUsed
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L333:
	mov	r1, #2	@,
	add	r0, sp, #4	@ tmp811,,
	bl	BsGet	@
	uxtb	r5, r0	@ D.40600,
	strb	r5, [r4, #3622]	@ D.40600, pCtx_45(D)->MP4Vol.chroma_format
	cmp	r5, #1	@ D.40600,
	beq	.L190	@,
	mov	r3, #0	@ tmp388,
	add	r0, sp, #4	@ tmp812,,
	strb	r3, [r6, #1559]	@ tmp388, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L331:
	mov	r1, #4	@,
	add	r0, sp, r1	@ tmp805,,
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #3617]	@, pCtx_45(D)->MP4Vol.video_object_layer_verid
	add	r0, sp, #4	@ tmp806,,
	bl	BsGet	@
	strb	r0, [r4, #3618]	@, pCtx_45(D)->MP4Vol.video_object_layer_priority
	b	.L187	@
.L190:
	mov	r1, r5	@, D.40600
	add	r0, sp, #4	@ tmp813,,
	bl	BsGet	@
	mov	r1, r5	@, D.40600
	strb	r0, [r4, #3623]	@, pCtx_45(D)->MP4Vol.low_delay
	add	r0, sp, #4	@ tmp814,,
	bl	BsGet	@
	cmp	r0, #0	@ D.40594,
	str	r0, [r4, #3656]	@ D.40594, pCtx_45(D)->MP4Vol.vbv_parameters
	beq	.L193	@,
	mov	r1, #15	@,
	add	r0, sp, #4	@ tmp815,,
	bl	BsGet	@
	mov	r1, r5	@, D.40600
	str	r0, [r4, #3660]	@, pCtx_45(D)->MP4Vol.first_half_bit_rate
	add	r0, sp, #4	@ tmp816,,
	bl	BsGet	@
	subs	fp, r0, #0	@ D.40594,
	beq	.L310	@,
	mov	r1, #15	@,
	add	r0, sp, #4	@ tmp818,,
	bl	BsGet	@
	mov	r1, r5	@, D.40600
	str	r0, [r4, #3664]	@, pCtx_45(D)->MP4Vol.latter_half_bit_rate
	add	r0, sp, #4	@ tmp819,,
	bl	BsGet	@
	subs	fp, r0, #0	@ D.40594,
	beq	.L310	@,
	mov	r1, #15	@,
	add	r0, sp, #4	@ tmp821,,
	bl	BsGet	@
	mov	r1, r5	@, D.40600
	str	r0, [r4, #3668]	@, pCtx_45(D)->MP4Vol.first_half_vbv_buffer_size
	add	r0, sp, #4	@ tmp822,,
	bl	BsGet	@
	subs	fp, r0, #0	@ D.40594,
	beq	.L310	@,
	mov	r1, #3	@,
	add	r0, sp, #4	@ tmp824,,
	bl	BsGet	@
	mov	r1, #11	@,
	str	r0, [r4, #3672]	@, pCtx_45(D)->MP4Vol.latter_half_vbv_buffer_size
	add	r0, sp, #4	@ tmp825,,
	bl	BsGet	@
	mov	r1, r5	@, D.40600
	str	r0, [r4, #3676]	@, pCtx_45(D)->MP4Vol.first_half_vbv_occupancy
	add	r0, sp, #4	@ tmp826,,
	bl	BsGet	@
	subs	fp, r0, #0	@ D.40594,
	beq	.L310	@,
	mov	r1, #15	@,
	add	r0, sp, #4	@ tmp828,,
	bl	BsGet	@
	mov	r1, r5	@, D.40600
	str	r0, [r4, #3680]	@, pCtx_45(D)->MP4Vol.latter_half_vbv_occupancy
	add	r0, sp, #4	@ tmp829,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.40594,
	bne	.L193	@,
.L315:
	bl	vfmw_dprint_nothing	@
	strb	r5, [r6, #1559]	@ D.40594, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp847,,
	bl	BsPos	@
	ldr	r3, .L341+4	@ tmp556,
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, #0	@ D.40602,
	mov	r4, r0	@ BitUsed,
	beq	.L264	@,
.L308:
	mov	r2, r5	@, tmp568
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.40602
	mov	r0, r4	@ D.40592, BitUsed
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L332:
	mov	r1, #8	@,
	add	r0, sp, #4	@ tmp808,,
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r4, #3648]	@, pCtx_45(D)->MP4Vol.par_width
	add	r0, sp, #4	@ tmp809,,
	bl	BsGet	@
	str	r0, [r4, #3652]	@, pCtx_45(D)->MP4Vol.par_height
	b	.L188	@
.L201:
	mov	r3, #1	@ tmp503,
	b	.L302	@
.L335:
	ldr	r1, [r4, #3684]	@, pCtx_45(D)->MP4Vol.vop_time_incr_bits
	add	r0, sp, #4	@ tmp839,,
	bl	BsGet	@
	str	r0, [r4, #3692]	@, pCtx_45(D)->MP4Vol.fixed_vop_time_increment
	b	.L208	@
.L213:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp849,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #3626]	@, pCtx_45(D)->MP4Vol.interlaced
	add	r0, sp, #4	@ tmp850,,
	bl	BsGet	@
	uxtb	r2, r0	@ D.40600,
	strb	r2, [r4, #3627]	@ D.40600, pCtx_45(D)->MP4Vol.obmc_disable
	cmp	r2, #0	@ D.40600,
	bne	.L215	@,
	ldr	r3, .L341+4	@ tmp587,
	strb	r2, [r6, #1559]	@ D.40600, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, #0	@ D.40602,
	beq	.L215	@,
	mov	r1, #102	@,
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	blx	r3	@ D.40602
.L215:
	ldrb	r3, [r4, #3617]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Vol.video_object_layer_verid, pCtx_45(D)->MP4Vol.video_object_layer_verid
	add	r0, sp, #4	@ tmp851,,
	cmp	r3, #1	@ pCtx_45(D)->MP4Vol.video_object_layer_verid,
	moveq	r1, #1	@,
	movne	r1, #2	@,
	bl	BsGet	@
	uxtb	r5, r0	@ D.40600,
	strb	r5, [r4, #3628]	@ D.40600, pCtx_45(D)->MP4Vol.sprite_enable
	cmp	r5, #0	@ D.40600,
	beq	.L218	@,
	ldr	r3, .L341+8	@ tmp597,
	ldr	r9, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r9, r9, #8	@ D.40594, g_VdmCharacter,
	beq	.L336	@,
	sub	r3, r5, #1	@ tmp609, D.40600,
	cmp	r3, #1	@ tmp609,
	bls	.L337	@,
.L327:
	mov	r5, #0	@ tmp655,
	add	r0, sp, #4	@ tmp860,,
	strb	r5, [r6, #1559]	@ tmp655, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	ldr	r3, .L341+4	@ tmp658,
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, r5	@ D.40602,
	mov	r4, r0	@ BitUsed,
	beq	.L227	@,
	mov	r2, r5	@, tmp655
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.40602
.L227:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.40592, BitUsed
	b	.L299	@
.L337:
	cmp	r5, #2	@ D.40600,
	bne	.L327	@,
	mov	r1, #6	@,
	add	r0, sp, #4	@ tmp854,,
	bl	BsGet	@
	mov	r1, r5	@, D.40600
	strb	r0, [r4, #3640]	@, pCtx_45(D)->MP4Vol.sprite_warping_points
	add	r0, sp, #4	@ tmp855,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #3641]	@, pCtx_45(D)->MP4Vol.sprite_warping_accuracy
	add	r0, sp, #4	@ tmp856,,
	bl	BsGet	@
	ldrb	r3, [r4, #3628]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Vol.sprite_enable, pCtx_45(D)->MP4Vol.sprite_enable
	cmp	r3, #2	@ pCtx_45(D)->MP4Vol.sprite_enable,
	strb	r0, [r4, #3642]	@, pCtx_45(D)->MP4Vol.sprite_brightness_change
	bne	.L327	@,
.L218:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp859,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3629]	@ D.40600, pCtx_45(D)->MP4Vol.not_8_bit
	cmp	r0, #0	@ D.40600,
	bne	.L327	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp861,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3630]	@ D.40600, pCtx_45(D)->MP4Vol.quant_type
	cmp	r0, #0	@ D.40600,
	bne	.L338	@,
.L229:
	ldrb	r3, [r4, #3617]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Vol.video_object_layer_verid, pCtx_45(D)->MP4Vol.video_object_layer_verid
	cmp	r3, #1	@ pCtx_45(D)->MP4Vol.video_object_layer_verid,
	moveq	r3, #0	@ tmp689,
	streqb	r3, [r4, #3633]	@ tmp689, pCtx_45(D)->MP4Vol.quarter_sample
	beq	.L236	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp865,,
	bl	BsGet	@
	strb	r0, [r4, #3633]	@, pCtx_45(D)->MP4Vol.quarter_sample
.L236:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp866,,
	bl	BsGet	@
	uxtb	r5, r0	@ D.40600,
	strb	r5, [r4, #3634]	@ D.40600, pCtx_45(D)->MP4Vol.complexity_estimation_disable
	cmp	r5, #0	@ D.40600,
	beq	.L323	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp868,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #3635]	@, pCtx_45(D)->MP4Vol.resync_marker_disable
	add	r0, sp, #4	@ tmp869,,
	bl	BsGet	@
	uxtb	r5, r0	@ D.40600,
	strb	r5, [r4, #3636]	@ D.40600, pCtx_45(D)->MP4Vol.data_partitioned
	cmp	r5, #0	@ D.40600,
	bne	.L321	@,
	ldrb	r3, [r4, #3617]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Vol.video_object_layer_verid, pCtx_45(D)->MP4Vol.video_object_layer_verid
	cmp	r3, #1	@ pCtx_45(D)->MP4Vol.video_object_layer_verid,
	beq	.L239	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp871,,
	bl	BsGet	@
	uxtb	r9, r0	@ D.40600,
	strb	r9, [r4, #3637]	@ D.40600, pCtx_45(D)->MP4Vol.newpred_enable
	cmp	r9, #0	@ D.40600,
	bne	.L323	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp873,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3638]	@ D.40600, pCtx_45(D)->MP4Vol.reduced_resolution_vop_enable
	cmp	r0, #0	@ D.40600,
	bne	.L339	@,
.L241:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp875,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3639]	@ D.40600, pCtx_45(D)->MP4Vol.scalability
	cmp	r0, #0	@ D.40600,
	beq	.L242	@,
.L321:
	bl	vfmw_dprint_nothing	@
	mov	r5, #0	@ tmp760,
	add	r0, sp, #4	@ tmp876,,
	b	.L325	@
.L336:
	strb	r9, [r6, #1559]	@ D.40594, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp852,,
	bl	BsPos	@
	ldr	r3, .L341+4	@ tmp605,
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, #0	@ D.40602,
	mov	r4, r0	@ BitUsed,
	beq	.L227	@,
	mov	r2, r9	@, D.40594
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.40602
	b	.L227	@
.L323:
	bl	vfmw_dprint_nothing	@
	strb	r5, [r6, #1559]	@ D.40600, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp872,,
	bl	BsPos	@
	ldr	r3, .L341+4	@ tmp731,
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, #0	@ D.40602,
	mov	r4, r0	@ BitUsed,
	bne	.L306	@,
	b	.L264	@
.L338:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp862,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3631]	@ D.40600, pCtx_45(D)->MP4Vol.load_intra_quant_mat
	cmp	r0, #0	@ D.40600,
	bne	.L340	@,
	add	r3, r7, #19968	@ ivtmp.325, pCtx,
	add	r1, r7, #20224	@ D.40596, pCtx,
	ldr	r2, .L341+12	@ ivtmp.319,
	add	r3, r3, #116	@ ivtmp.325, ivtmp.325,
	add	r1, r1, #116	@ D.40596, D.40596,
.L232:
	ldr	r0, [r2, #4]!	@ MEM[base: _2, offset: 0B], MEM[base: _2, offset: 0B]
	str	r0, [r3, #4]!	@ MEM[base: _2, offset: 0B], MEM[base: _34, offset: 0B]
	cmp	r3, r1	@ ivtmp.325, D.40596
	bne	.L232	@,
.L231:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp878,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40600,
	strb	r0, [r4, #3632]	@ D.40600, pCtx_45(D)->MP4Vol.load_nonintra_quant_mat
	cmp	r0, #0	@ D.40600,
	bne	.L244	@,
	add	r3, r7, #20224	@ ivtmp.306, pCtx,
	add	r1, r7, #20480	@ D.40596, pCtx,
	ldr	r2, .L341+16	@ ivtmp.300,
	add	r3, r3, #116	@ ivtmp.306, ivtmp.306,
	add	r1, r1, #116	@ D.40596, D.40596,
.L233:
	ldr	r0, [r2, #4]!	@ MEM[base: _33, offset: 0B], MEM[base: _33, offset: 0B]
	str	r0, [r3, #4]!	@ MEM[base: _33, offset: 0B], MEM[base: _11, offset: 0B]
	cmp	r3, r1	@ ivtmp.306, D.40596
	bne	.L233	@,
	b	.L229	@
.L242:
	add	r0, r7, #20480	@, pCtx,
	mov	r3, #1	@ tmp768,
	mov	r1, r8	@, __p
	mov	r2, #604	@,
	strb	r3, [r6, #1559]	@ tmp768, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, r0, #124	@,,
	strb	r3, [r6, #789]	@ tmp768, pCtx_45(D)->MP4Syntax.vol_decode_over
	strb	r3, [r6, #1560]	@ tmp768, pCtx_45(D)->MP4SyntaxState.last_vol_decode_right
	bl	memcpy	@
	add	r0, sp, #4	@ tmp877,,
	bl	BsPos	@
	b	.L299	@
.L340:
	add	r1, r7, #19968	@, pCtx,
	add	r0, sp, #4	@ tmp863,,
	add	r1, r1, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L231	@
.L244:
	add	r1, r7, #20224	@, pCtx,
	add	r0, sp, #4	@ tmp864,,
	add	r1, r1, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L229	@
.L339:
	bl	vfmw_dprint_nothing	@
	strb	r9, [r6, #1559]	@ D.40600, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp874,,
	bl	BsPos	@
	ldr	r3, .L341+4	@ tmp743,
	ldr	r3, [r3]	@ D.40602, g_event_report
	cmp	r3, #0	@ D.40602,
	mov	r4, r0	@ BitUsed,
	beq	.L264	@,
	mov	r2, r9	@, D.40600
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.40602
	mov	r0, r4	@ D.40592, BitUsed
	b	.L299	@
.L239:
	strb	r5, [r4, #3637]	@ D.40600, pCtx_45(D)->MP4Vol.newpred_enable
	strb	r5, [r4, #3638]	@ D.40600, pCtx_45(D)->MP4Vol.reduced_resolution_vop_enable
	b	.L241	@
.L342:
	.align	2
.L341:
	.word	s_pstVfmwChan
	.word	g_event_report
	.word	g_VdmCharacter
	.word	.LANCHOR1-4
	.word	.LANCHOR1+252
	.fnend
	.size	Mp4_Syntax_Vol, .-Mp4_Syntax_Vol
	.align	2
	.global	Mp4_Syntax_Vos
	.type	Mp4_Syntax_Vos, %function
Mp4_Syntax_Vos:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	add	r5, r0, #20480	@ tmp129, pCtx,
	add	r4, r0, #16384	@ tmp134, pCtx,
	add	r0, sp, #4	@ tmp174,,
	bl	BsInit	@
	mov	r3, #0	@ tmp130,
	mov	r1, #32	@,
	str	r3, [r5, #812]	@ tmp130, pCtx_6(D)->MP4Syntax.syn_vos.profile_and_level_indication
	add	r0, sp, #4	@ tmp175,,
	bl	BsSkip	@
	mov	r1, #8	@,
	add	r0, sp, #4	@ tmp176,,
	bl	BsGet	@
	sub	r2, r0, #240	@ D.40613, D.40609,
	sub	r3, r0, #1	@ D.40610, D.40609,
	cmp	r2, #5	@ D.40613,
	cmphi	r3, #2	@, D.40610,
	str	r0, [r4, #3600]	@ D.40609, pCtx_6(D)->MP4Vos.profile_and_level_indication
	movls	r2, #1	@ tmp141,
	movhi	r2, #0	@ tmp141,
	cmp	r0, #8	@ D.40609,
	orreq	r2, r2, #1	@,, tmp147, tmp141
	cmp	r2, #0	@ tmp147,
	strne	r0, [r5, #812]	@ D.40609, pCtx_6(D)->MP4Syntax.syn_vos.profile_and_level_indication
	movne	r3, #1	@ tmp150,
	strneb	r3, [r5, #1556]	@ tmp150, pCtx_6(D)->MP4SyntaxState.vos_decode_right
	bne	.L345	@,
	cmp	r0, #0	@ D.40609,
	beq	.L351	@,
	ldr	r3, .L352	@ tmp167,
	strb	r2, [r5, #1556]	@ tmp147, pCtx_6(D)->MP4SyntaxState.vos_decode_right
	ldr	r3, [r3]	@ D.40612, g_event_report
	cmp	r3, #0	@ D.40612,
	beq	.L345	@,
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.40612
.L345:
	add	r0, sp, #4	@ tmp177,,
	bl	BsPos	@
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L351:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ tmp156,
	strb	r3, [r5, #1556]	@ tmp156, pCtx_6(D)->MP4SyntaxState.vos_decode_right
	ldr	r3, [r4, #3600]	@ pCtx_6(D)->MP4Vos.profile_and_level_indication, pCtx_6(D)->MP4Vos.profile_and_level_indication
	str	r3, [r5, #812]	@ pCtx_6(D)->MP4Vos.profile_and_level_indication, pCtx_6(D)->MP4Syntax.syn_vos.profile_and_level_indication
	b	.L345	@
.L353:
	.align	2
.L352:
	.word	g_event_report
	.fnend
	.size	Mp4_Syntax_Vos, .-Mp4_Syntax_Vos
	.align	2
	.global	Frame_Init
	.type	Frame_Init, %function
Frame_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r0, #20480	@ tmp223, pCtx,
	mov	r7, r2	@ PicHeight, PicHeight
	.pad #68
	sub	sp, sp, #68	@,,
	ldr	r2, [r4, #1580]	@ D.40618, pCtx_14(D)->pstExtraData
	mov	r6, r1	@ PicWidth, PicWidth
	ldr	r5, [r2, #608]	@ D.40616, _15->stChanOption.s32ReRangeEn
	ldr	r3, [r2, #32]	@ _15->eCapLevel, _15->eCapLevel
	cmp	r5, #0	@ D.40616,
	bne	.L355	@,
	cmp	r3, #25	@ _15->eCapLevel,
	beq	.L381	@,
.L369:
	mov	r8, #2	@ PmvNum,
	mov	r9, #5	@ DispFsNum,
	mov	r10, #3	@ DecFsNum,
.L356:
	ldr	r3, .L383	@ tmp171,
	ldr	ip, [r3, #36]	@ D.40622, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.40622,
	beq	.L380	@,
	ldr	r5, .L383+4	@ tmp175,
	mov	fp, #64	@ tmp174,
	ldr	r1, [r2, #28]	@ _15->s32SyntaxMemSize, _15->s32SyntaxMemSize
	mov	r3, #0	@ tmp179,
	ldr	r0, [r2, #24]	@ _15->s32SyntaxMemAddr, _15->s32SyntaxMemAddr
	mov	lr, #2	@ tmp181,
	str	r5, [sp, #16]	@ tmp175,
	mov	r2, #40	@ tmp180,
	str	fp, [sp, #20]	@ tmp174,
	ldr	fp, [r4, #2480]	@ pCtx_14(D)->ChanID, pCtx_14(D)->ChanID
	str	r3, [sp, #8]	@ tmp179,
	mov	r3, r7	@, PicHeight
	str	r2, [sp, #4]	@ tmp180,
	mov	r2, r6	@, PicWidth
	str	fp, [sp, #12]	@ pCtx_14(D)->ChanID,
	str	lr, [sp]	@ tmp181,
	blx	ip	@ D.40622
	subs	fp, r0, #0	@ D.40620,
	bne	.L380	@,
	ldr	r3, [r5, #404]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	cmp	r3, #1	@ MemArrange.ValidPMVNum,
	ble	.L380	@,
	ldr	r3, [r5, #276]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #2	@ MemArrange.ValidFrameNum,
	ble	.L380	@,
	ldr	r0, [r5, #8]	@ D.40620, MemArrange.FrameAddr
	str	r0, [r4, #1600]	@ D.40620, pCtx_14(D)->VdmMemAllot.frame_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r1, #36	@,
	str	r0, [r4, #1588]	@, pCtx_14(D)->VdmMemAllot.frame_vir_addr
	add	r0, sp, #28	@ tmp225,,
	bl	__memzero	@
	ldr	r3, [r4, #1580]	@ D.40618, pCtx_14(D)->pstExtraData
	ldr	r2, [r3, #20]	@ _59->s32DnrDispOutEnable, _59->s32DnrDispOutEnable
	str	r7, [sp, #60]	@ PicHeight, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _59->eCapLevel, _59->eCapLevel
	strb	fp, [sp, #30]	@ D.40620, FspInstCfg.s32RprEnable
	cmp	r3, #24	@ _59->eCapLevel,
	str	r6, [sp, #40]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r7, [sp, #44]	@ PicHeight, FspInstCfg.s32DecFsHeight
	strb	r2, [sp, #28]	@ _59->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r6, [sp, #56]	@ PicWidth, FspInstCfg.s32DispFsWidth
	beq	.L364	@,
	uxtb	r8, r8	@ D.40617, PmvNum
	strb	r10, [sp, #33]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r9, [sp, #35]	@ DispFsNum, FspInstCfg.s32ExpectedDispFsNum
.L366:
	add	r1, sp, #28	@ tmp226,,
	ldr	r0, [r4, #2480]	@, pCtx_14(D)->ChanID
	mov	r3, #0	@ tmp202,
	strb	r8, [sp, #36]	@ D.40617, FspInstCfg.s32ExpectedPmvNum
	strb	r3, [sp, #32]	@ tmp202, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.40616,
	bne	.L380	@,
	ldr	r1, [r4, #1580]	@ D.40618, pCtx_14(D)->pstExtraData
	add	r3, sp, #24	@,,
	ldr	r0, [r4, #2480]	@, pCtx_14(D)->ChanID
	ldr	r2, [r1, #28]	@, _80->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _80->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r3, #1	@ tmp218,
	streq	r3, [r4, #2484]	@ tmp218, pCtx_14(D)->FspPartitionOK
	bne	.L380	@,
.L373:
	mov	r0, r5	@, D.40616
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L355:
	cmp	r3, #25	@ _15->eCapLevel,
	bne	.L369	@,
	ldr	r3, [r2, #568]	@ _15->stChanOption.s32MaxWidth, _15->stChanOption.s32MaxWidth
	cmp	r1, r3	@ PicWidth, _15->stChanOption.s32MaxWidth
	bhi	.L380	@,
	ldr	r3, [r2, #572]	@ _15->stChanOption.s32MaxHeight, _15->stChanOption.s32MaxHeight
	cmp	r7, r3	@ PicHeight, _15->stChanOption.s32MaxHeight
	bhi	.L380	@,
	ldr	r3, [r2, #596]	@ _15->stChanOption.s32SupportBFrame, _15->stChanOption.s32SupportBFrame
	ldr	r10, [r2, #588]	@ DecFsNum, _15->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _15->stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	bne	.L382	@,
	ldr	r9, [r2, #616]	@ DispFsNum, _15->stChanOption.s32DisplayFrameNum
	b	.L356	@
.L364:
	strb	fp, [sp, #33]	@ D.40620, FspInstCfg.s32ExpectedDecFsNum
	mov	r8, #1	@ D.40617,
	strb	r9, [sp, #35]	@ DispFsNum, FspInstCfg.s32ExpectedDispFsNum
	b	.L366	@
.L380:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #0	@ D.40616,
	mov	r0, r5	@, D.40616
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L381:
	ldr	r3, [r2, #568]	@ PicWidth, _15->stChanOption.s32MaxWidth
	cmp	r3, r1	@ PicWidth, PicWidth
	bcc	.L380	@,
	ldr	r1, [r2, #572]	@ PicHeight, _15->stChanOption.s32MaxHeight
	cmp	r1, r7	@ PicHeight, PicHeight
	bcc	.L380	@,
	ldr	r0, [r4, #2484]	@ pCtx_14(D)->FspPartitionOK, pCtx_14(D)->FspPartitionOK
	cmp	r0, #1	@ pCtx_14(D)->FspPartitionOK,
	beq	.L373	@,
	ldr	r0, [r2, #596]	@ _15->stChanOption.s32SupportBFrame, _15->stChanOption.s32SupportBFrame
	ldr	r10, [r2, #588]	@ DecFsNum, _15->stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ _15->stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L362	@,
	add	r8, r10, #1	@ PmvNum, DecFsNum,
	cmp	r8, #17	@ PmvNum,
	movge	r8, #17	@ PmvNum,
.L362:
	mov	r7, r1	@ PicHeight, PicHeight
	mov	r6, r3	@ PicWidth, PicWidth
	ldr	r9, [r2, #616]	@ DispFsNum, _15->stChanOption.s32DisplayFrameNum
	b	.L356	@
.L382:
	add	r8, r10, #1	@ PmvNum, DecFsNum,
	ldr	r9, [r2, #616]	@ DispFsNum, _15->stChanOption.s32DisplayFrameNum
	cmp	r8, #17	@ PmvNum,
	movge	r8, #17	@ PmvNum,
	b	.L356	@
.L384:
	.align	2
.L383:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR2
	.fnend
	.size	Frame_Init, .-Frame_Init
	.align	2
	.global	Mp4_RecordVFMWState
	.type	Mp4_RecordVFMWState, %function
Mp4_RecordVFMWState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	Mp4_RecordVFMWState, .-Mp4_RecordVFMWState
	.global	__aeabi_uidiv
	.align	2
	.global	Mp4_RecordFrameAtr
	.type	Mp4_RecordFrameAtr, %function
Mp4_RecordFrameAtr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #20480	@ tmp364, pCtx,
	mov	r4, r1	@ id, id
	ldrb	r3, [r5, #831]	@ zero_extendqisi2	@ D.40630, pCtx_12(D)->MP4Syntax.syn_vol.aspect_ratio_info
	cmp	r3, #15	@ D.40630,
	beq	.L403	@,
	sub	r2, r3, #2	@ tmp242, D.40630,
	cmp	r2, #1	@ tmp242,
	movls	r6, #1	@ aspect_ratio,
	bls	.L388	@,
	sub	r2, r3, #4	@ tmp244, D.40630,
	cmp	r2, #1	@ tmp244,
	movls	r6, #2	@ aspect_ratio,
	bls	.L388	@,
	cmp	r3, #1	@ D.40630,
	moveq	r6, #5	@ aspect_ratio,
	movne	r6, #0	@ aspect_ratio,
.L388:
	mov	r1, r4	@, id
	ldr	r0, [r5, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r5, #1496]	@ D.40631, pCtx_12(D)->MP4Syntax.image_width
	mov	r1, r6	@, aspect_ratio
	str	r3, [r4, #144]	@ D.40631, pImg_40->image_width
	ldr	r3, [r5, #1492]	@ D.40631, pCtx_12(D)->MP4Syntax.image_height
	str	r3, [r4, #148]	@ D.40631, pImg_40->image_height
	bl	SetAspectRatio	@
	ldr	r3, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _46->eCapLevel, _46->eCapLevel
	cmp	r3, #25	@ _46->eCapLevel,
	beq	.L404	@,
.L392:
	ldr	r1, [r5, #1496]	@ D.40631, pCtx_12(D)->MP4Syntax.image_width
	mov	r8, #0	@ tmp321,
	mvn	r2, #0	@ tmp353,
	mvn	r3, #0	@,
	str	r1, [r4, #152]	@ D.40631, pImg_40->disp_width
	ldr	r1, [r5, #1492]	@ D.40631, pCtx_12(D)->MP4Syntax.image_height
	str	r1, [r4, #156]	@ D.40631, pImg_40->disp_height
	ldr	r1, [r5, #1496]	@ pCtx_12(D)->MP4Syntax.image_width, pCtx_12(D)->MP4Syntax.image_width
	mov	r1, r1, lsr #1	@ D.40631, pCtx_12(D)->MP4Syntax.image_width,
	str	r1, [r4, #160]	@ D.40631, pImg_40->disp_center_x
	ldr	r1, [r5, #1492]	@ pCtx_12(D)->MP4Syntax.image_height, pCtx_12(D)->MP4Syntax.image_height
	mov	r1, r1, lsr #1	@ D.40631, pCtx_12(D)->MP4Syntax.image_height,
	str	r1, [r4, #164]	@ D.40631, pImg_40->disp_center_y
	ldr	r1, [r5, #2060]	@ D.40631, pCtx_12(D)->ImgCntOfSeq
	str	r1, [r4, #188]	@ D.40631, pImg_40->seq_img_cnt
	ldr	r1, [r5, #2056]	@ D.40631, pCtx_12(D)->SeqCnt
	str	r1, [r4, #184]	@ D.40631, pImg_40->seq_cnt
	ldrb	ip, [r5, #809]	@ zero_extendqisi2	@ D.40629, pCtx_12(D)->MP4Syntax.syn_vos.video_format
	ldrb	lr, [r5, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	ldrb	r0, [r5, #1437]	@ zero_extendqisi2	@ D.40629, pCtx_12(D)->MP4Syntax.syn_vop.top_field_first
	ldrb	r1, [r5, #838]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vol.interlaced, pCtx_12(D)->MP4Syntax.syn_vol.interlaced
	and	lr, lr, #3	@ D.40629, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	mov	ip, ip, asl #5	@ D.40629, D.40629,
	orr	r0, lr, r0, asl #12	@ D.40629, D.40629, D.40629,
	and	r1, r1, #1	@ D.40629, pCtx_12(D)->MP4Syntax.syn_vol.interlaced,
	uxtb	ip, ip	@ D.40629, D.40629
	orr	r0, r0, #3072	@ D.40629, D.40629,
	orr	r0, r0, ip	@ D.40629, D.40629, D.40629
	orr	r0, r0, r1, asl #8	@ D.40629, D.40629, D.40629,
	orr	r1, r0, r6, asl #14	@ D.40631, D.40629, aspect_ratio,
	str	r1, [r4, #140]	@ D.40631, pImg_40->format
	ldrb	r1, [r5, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	and	r1, r1, #3	@ tmp314, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	str	r1, [r4, #132]	@ tmp314, pImg_40->top_fld_type
	ldrb	r1, [r5, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	str	r8, [r4, #128]	@ tmp321, pImg_40->is_fld_save
	and	r1, r1, #3	@ tmp320, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	str	r1, [r4, #136]	@ tmp320, pImg_40->bottom_fld_type
	ldr	r1, [r5, #2100]	@ D.40637, pCtx_12(D)->UsrData
	str	r1, [r4, #192]	@ D.40637, pImg_40->p_usrdat
	ldr	r1, [r5, #2104]	@ D.40637, MEM[(struct MP4_CTX_S *)pCtx_12(D) + 22584B]
	str	r1, [r4, #196]	@ D.40637, MEM[(struct IMAGE *)pImg_40 + 196B]
	ldr	r1, [r5, #2108]	@ D.40637, MEM[(struct MP4_CTX_S *)pCtx_12(D) + 22588B]
	str	r1, [r4, #200]	@ D.40637, MEM[(struct IMAGE *)pImg_40 + 200B]
	ldr	r1, [r5, #2112]	@ D.40637, MEM[(struct MP4_CTX_S *)pCtx_12(D) + 22592B]
	str	r1, [r4, #204]	@ D.40637, MEM[(struct IMAGE *)pImg_40 + 204B]
	ldr	r1, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldrd	r6, [r1, #56]	@ D.40638, pCtx_12(D)->pstExtraData,
	strd	r6, [r4, #8]	@ D.40638, pImg,
	ldr	r1, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldrd	r6, [r1, #72]	@ D.40638, pCtx_12(D)->pstExtraData,
	strd	r6, [r4, #16]	@ D.40638, pImg,
	ldr	r1, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldrd	r6, [r1, #88]	@ D.40638, pCtx_12(D)->pstExtraData,
	strd	r6, [r4, #24]	@ D.40638, pImg,
	ldr	r1, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r1, [r1, #104]	@ D.40631, _131->DispEnableFlag
	str	r1, [r4, #68]	@ D.40631, pImg_40->DispEnableFlag
	ldr	r1, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r1, [r1, #108]	@ D.40631, _134->DispFrameDistance
	str	r1, [r4, #72]	@ D.40631, pImg_40->DispFrameDistance
	ldr	r1, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r1, [r1, #112]	@ D.40631, _137->DistanceBeforeFirstFrame
	str	r1, [r4, #76]	@ D.40631, pImg_40->DistanceBeforeFirstFrame
	ldr	r1, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r1, [r1, #128]	@ D.40631, _140->GopNum
	str	r1, [r4, #80]	@ D.40631, pImg_40->GopNum
	ldr	r1, [r5, #1580]	@ D.40633, pCtx_12(D)->pstExtraData
	strd	r2, [r1, #56]	@ tmp353, D.40633,
	bl	vfmw_dprint_nothing	@
	mov	r3, #8	@ tmp359,
	mov	r2, #2	@ tmp354,
	strb	r8, [r4, #288]	@ tmp321, pImg_40->ImageDnr.pic_structure
	str	r2, [r4, #300]	@ tmp354, pImg_40->ImageDnr.video_standard
	mov	r2, #1	@ tmp362,
	strb	r8, [r4, #295]	@ tmp321, pImg_40->ImageDnr.use_pic_qp_en
	str	r3, [r4, #304]	@ tmp359, pImg_40->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp359, pImg_40->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp359, pImg_40->ImageDnr.QP_U
	strb	r2, [r4, #293]	@ tmp362, pImg_40->ImageDnr.chroma_format_idc
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L404:
	ldr	r3, [r4, #148]	@ pImg_40->image_height, pImg_40->image_height
	ldr	r1, [r4, #172]	@ D.40631, pImg_40->image_stride
	add	r3, r3, #15	@ D.40631, pImg_40->image_height,
	ldr	r0, [r4, #104]	@ D.40631, pImg_40->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.40635, pImg_40->luma_vir_addr
	mov	r2, r3, lsr #4	@ D.40631, D.40631,
	mov	r3, r1, asl #4	@ D.40631, D.40631,
	add	lr, r1, r0	@ D.40629, D.40631, D.40631
	str	r0, [r4, #88]	@ D.40631, pImg_40->top_luma_phy_addr
	mul	r3, r2, r3	@ D.40631, D.40631, D.40631
	str	r0, [r4, #120]	@ D.40631, pImg_40->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.40629, pImg_40->btm_luma_phy_addr
	str	ip, [r4, #48]	@ D.40635, pImg_40->luma_2d_vir_addr
	add	r0, r3, r0	@ D.40631, D.40631, D.40631
	add	r3, ip, r3	@ D.40635, D.40635, D.40631
	add	r1, r1, r0	@ D.40629, D.40631, D.40631
	str	r3, [r4, #36]	@ D.40635, pImg_40->chrom_vir_addr
	str	r0, [r4, #108]	@ D.40631, pImg_40->chrom_phy_addr
	str	r0, [r4, #92]	@ D.40631, pImg_40->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.40629, pImg_40->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_40->top_chrom_phy_addr, pImg_40->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_40->top_chrom_phy_addr, pImg_40->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_40->chrom_2d_vir_addr
	b	.L392	@
.L403:
	ldr	r2, [r5, #860]	@ sar_height, pCtx_12(D)->MP4Syntax.syn_vol.par_width
	ldr	r1, [r5, #864]	@ D.40631, pCtx_12(D)->MP4Syntax.syn_vol.par_height
	cmp	r2, #0	@ sar_height,
	cmpne	r1, #0	@, D.40631,
	moveq	r6, #0	@ aspect_ratio,
	beq	.L388	@,
	ldr	r3, [r5, #912]	@ pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_height, pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_height
	mul	r1, r3, r1	@ D.40631, pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_height, D.40631
	cmp	r1, #0	@ D.40631,
	beq	.L394	@,
	ldr	r0, [r5, #908]	@ pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_width, pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_width
	mov	r2, r2, asl #10	@ D.40629, sar_height,
	mul	r0, r0, r2	@, pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_width, D.40629
	bl	__aeabi_uidiv	@
	sub	r1, r0, #1360	@ D.40629, true_dar,
	sub	r3, r0, #1808	@ D.40629, true_dar,
	sub	r1, r1, #5	@ D.40629, D.40629,
	sub	r3, r3, #12	@ D.40629, D.40629,
	cmp	r1, #0	@ D.40629,
	rsblt	r1, r0, #1360	@ D.40629, true_dar,
	addlt	r1, r1, #5	@ D.40629, D.40629,
	cmp	r3, #0	@ D.40629,
	rsblt	r3, r0, #1808	@ D.40629, true_dar,
	addlt	r3, r3, #12	@ D.40629, D.40629,
	cmp	r1, r3	@ D.40629, D.40629
	movlt	r6, #1	@ aspect_ratio,
	movge	r6, #2	@ aspect_ratio,
	b	.L388	@
.L394:
	mov	r6, r1	@ aspect_ratio, D.40631
	b	.L388	@
	.fnend
	.size	Mp4_RecordFrameAtr, .-Mp4_RecordFrameAtr
	.align	2
	.global	Mp4_Frame_Atr
	.type	Mp4_Frame_Atr, %function
Mp4_Frame_Atr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #20480	@ tmp229, pCtx,
	mov	r7, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ D.40642, pCtx_5(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #4	@ D.40642,
	strb	r3, [r0, #2]	@ D.40642, pCtx_5(D)->CurCodingType
	ldr	r0, [r4, #2480]	@ D.40647, pCtx_5(D)->ChanID
	ldreq	r2, .L416	@ tmp150,
	moveq	r3, r0, asl #5	@ tmp148, D.40647,
	subeq	r3, r3, r0, asl #3	@ tmp149, tmp148, D.40647,
	addeq	r3, r3, r2	@ tmp151, tmp149, tmp150
	ldreq	r2, [r3, #4]	@ g_VfmwChanStat[_8].u32SkipFind, g_VfmwChanStat[_8].u32SkipFind
	addeq	r2, r2, #1	@ D.40643, g_VfmwChanStat[_8].u32SkipFind,
	streq	r2, [r3, #4]	@ D.40643, g_VfmwChanStat[_8].u32SkipFind
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.40644,
	str	r0, [r4, #2508]	@ D.40644, pCtx_5(D)->CurFsID
	blt	.L408	@,
	ldr	r3, [r4, #2484]	@ pCtx_5(D)->FspPartitionOK, pCtx_5(D)->FspPartitionOK
	cmp	r3, #0	@ pCtx_5(D)->FspPartitionOK,
	bne	.L409	@,
.L408:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2500]	@, pCtx_5(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L410	@,
	ldr	r1, [r5, #192]	@, pImg_24->p_usrdat
	mov	r6, #0	@ tmp188,
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_24->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_24->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_24->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp188, pImg_24->p_usrdat
	str	r6, [r5, #196]	@ tmp188, pImg_24->p_usrdat
	mov	r2, #1	@,
	str	r6, [r5, #200]	@ tmp188, pImg_24->p_usrdat
	str	r6, [r5, #204]	@ tmp188, pImg_24->p_usrdat
	ldr	r1, [r4, #2500]	@, pCtx_5(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2492]	@, pCtx_5(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2492]	@ tmp188, pCtx_5(D)->FwdFsID
	str	r6, [r4, #2500]	@ tmp188, pCtx_5(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2500]	@ D.40644, pCtx_5(D)->BwdFsID
	str	r0, [r4, #2492]	@ D.40644, pCtx_5(D)->FwdFsID
.L410:
	add	r1, r7, #22528	@, pCtx,
	mov	r3, #0	@ tmp219,
	add	r1, r1, #80	@,,
	str	r3, [r4, #2488]	@ tmp219, pCtx_5(D)->RefNum
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L409:
	mov	r1, r0	@, D.40644
	mov	r0, r7	@, pCtx
	bl	Mp4_RecordFrameAtr	@
	mov	r3, #0	@ tmp227,
	mov	r0, #0	@,
	str	r3, [r4, #2064]	@ tmp227, pCtx_5(D)->ErrorLevel
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L417:
	.align	2
.L416:
	.word	g_VfmwChanStat+8
	.fnend
	.size	Mp4_Frame_Atr, .-Mp4_Frame_Atr
	.align	2
	.global	Mp4_Set_DecPar
	.type	Mp4_Set_DecPar, %function
Mp4_Set_DecPar:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r6, r2	@ ptr_strm_para, ptr_strm_para
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #48	@,
	mov	r0, sp	@,
	bl	__memzero	@
	ldrb	r3, [r6, #5]	@ zero_extendqisi2	@ ptr_strm_para_14(D)->StreamPack[0].IsLastSeg, ptr_strm_para_14(D)->StreamPack[0].IsLastSeg
	cmp	r3, #1	@ ptr_strm_para_14(D)->StreamPack[0].IsLastSeg,
	beq	.L450	@,
	ldr	r3, [r6, #88]	@ ptr_strm_para_14(D)->StreamPack[1].PhyAddr, ptr_strm_para_14(D)->StreamPack[1].PhyAddr
	add	r5, r4, #20480	@ tmp604, pCtx,
	mov	r1, #0	@ tmp329,
	bic	r3, r3, #3	@ D.40688, ptr_strm_para_14(D)->StreamPack[1].PhyAddr,
	str	r3, [r4, #1208]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBaseAddr
	ldr	r3, [r5, #1568]	@ D.40688, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].phy_addr
	and	r2, r3, #3	@ D.40688, D.40688,
	str	r3, [r4, #1220]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamPhyAddr
	ldr	r3, [r5, #1564]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr
	str	r3, [r4, #1056]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamVirAddr
	ldr	r3, [r5, #1576]	@ D.40688, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].offset
	add	r2, r3, r2, lsl #3	@ D.40688, D.40688, D.40688,
	str	r2, [r4, #1228]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBitOffset
	ldr	r2, [r5, #1572]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len
	rsb	r3, r3, r2, lsl #3	@ D.40688, D.40688, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len,
	str	r3, [r4, #1236]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamLength
	ldr	r3, [r6, #88]	@ ptr_strm_para_14(D)->StreamPack[1].PhyAddr, ptr_strm_para_14(D)->StreamPack[1].PhyAddr
	str	r3, [r4, #1224]	@ ptr_strm_para_14(D)->StreamPack[1].PhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamPhyAddr
	ldr	r3, [r6, #80]	@ D.40689, ptr_strm_para_14(D)->StreamPack[1].VirAddr
	str	r3, [r4, #1060]	@ D.40689, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamVirAddr
	ldr	r3, [r6, #88]	@ ptr_strm_para_14(D)->StreamPack[1].PhyAddr, ptr_strm_para_14(D)->StreamPack[1].PhyAddr
	and	r3, r3, #3	@ D.40690, ptr_strm_para_14(D)->StreamPack[1].PhyAddr,
	mov	r3, r3, asl #3	@ D.40690, D.40690,
	str	r3, [r4, #1232]	@ D.40690, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBitOffset
	ldr	r3, [r6, #92]	@ ptr_strm_para_14(D)->StreamPack[1].LenInByte, ptr_strm_para_14(D)->StreamPack[1].LenInByte
	str	r1, [r4, #1216]	@ tmp329, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamFirstIsLastFlag
	mov	r3, r3, asl #3	@ D.40688, ptr_strm_para_14(D)->StreamPack[1].LenInByte,
	str	r3, [r4, #1240]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamLength
.L420:
	ldr	r2, [r5, #1496]	@ D.40688, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].image_width
	add	r7, r4, #1040	@ tmp605, pCtx,
	add	r6, r4, #12288	@ tmp606, pCtx,
	add	r3, r2, #15	@ D.40688, D.40688,
	mov	r3, r3, lsr #4	@ D.40688, D.40688,
	strh	r3, [r7, #164]	@ movhi	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicWidthInMb
	ldr	r1, [r5, #1492]	@ D.40688, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].image_height
	add	r3, r1, #15	@ D.40688, D.40688,
	mov	r3, r3, lsr #4	@ D.40688, D.40688,
	strh	r3, [r7, #166]	@ movhi	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicHeightInMb
	ldrb	r3, [r5, #1432]	@ zero_extendqisi2	@ D.40687, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_coding_type
	strb	r3, [r4, #1040]	@ D.40687, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicCodingType
	ldrb	r0, [r5, #842]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.quant_type, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.quant_type
	strb	r0, [r4, #1041]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.quant_type, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicQuantType
	ldrb	r0, [r5, #797]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].is_short_header, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].is_short_header
	strb	r0, [r4, #1042]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].is_short_header, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].IsShortHeader
	ldrb	r0, [r5, #1439]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_quant, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_quant
	strb	r0, [r4, #1043]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_quant, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].VopQuant
	ldrb	r0, [r5, #1444]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.num_mb_ingob, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.num_mb_ingob
	strb	r0, [r4, #1044]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.num_mb_ingob, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].GobMbNum
	ldrb	r0, [r5, #1443]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.num_gobs_invop, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.num_gobs_invop
	strb	r0, [r4, #1045]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.num_gobs_invop, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].VopGobNum
	ldr	r0, [r5, #896]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.vop_time_incr_bits, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.vop_time_incr_bits
	strb	r0, [r4, #1046]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.vop_time_incr_bits, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].BitsOfVopTimeIncr
	ldrb	r0, [r5, #1440]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_fcode_forward, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_fcode_forward
	strb	r0, [r4, #1047]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_fcode_forward, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FwdFcode
	ldrb	r0, [r5, #1441]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_fcode_backward, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_fcode_backward
	strb	r0, [r4, #1048]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_fcode_backward, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].BwdFcode
	ldrb	r0, [r5, #1436]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.intra_dc_vlc_thr, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.intra_dc_vlc_thr
	strb	r0, [r4, #1049]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.intra_dc_vlc_thr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].intra_dc_vlc_thr
	ldrb	r0, [r5, #847]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.resync_marker_disable, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.resync_marker_disable
	strb	r0, [r4, #1050]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.resync_marker_disable, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].resync_marker_disable
	ldrb	r0, [r5, #845]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.quarter_sample, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.quarter_sample
	strb	r0, [r4, #1051]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.quarter_sample, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].QuarterSample
	ldrb	r0, [r5, #1434]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_rounding_type, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_rounding_type
	strb	r0, [r4, #1052]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_rounding_type, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].vop_rounding_type
	ldrb	r0, [r5, #1438]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.alternate_vertical_scan_flag, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.alternate_vertical_scan_flag
	strb	r0, [r4, #1053]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.alternate_vertical_scan_flag, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].alternate_vertical_scan
	ldrb	r0, [r5, #1437]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.top_field_first, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.top_field_first
	strb	r0, [r4, #1054]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.top_field_first, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].top_field_first
	ldrb	r0, [r5, #838]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.interlaced, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.interlaced
	strb	r0, [r4, #1055]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.interlaced, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Interlaced
	ldr	r0, [r5, #1528]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].time_bp, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].time_bp
	str	r0, [r4, #1244]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].time_bp, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Trb
	ldr	r0, [r5, #1524]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].time_pp, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].time_pp
	str	r0, [r4, #1248]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].time_pp, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Trd
	ldrb	r0, [r5, #800]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_DIVX500B413, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_DIVX500B413
	strb	r0, [r4, #1194]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_DIVX500B413, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FF_BUG_DIVX500B413
	ldrb	r0, [r5, #799]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_EDGE_EXTEND, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_EDGE_EXTEND
	strb	r0, [r4, #1193]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_EDGE_EXTEND, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FF_BUG_EDGE_EXTEND
	ldrb	r0, [r5, #798]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_EDGE_FIND_POINT, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_EDGE_FIND_POINT
	strb	r0, [r4, #1192]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_EDGE_FIND_POINT, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FF_BUG_EDGE_FIND_POINT
	ldrb	r0, [r5, #801]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_CHROMA, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_CHROMA
	strb	r0, [r4, #1195]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_CHROMA, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FF_BUG_QPEL_CHROMA
	ldrb	r0, [r5, #802]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_CHROMA2, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_CHROMA2
	strb	r0, [r4, #1196]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_CHROMA2, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FF_BUG_QPEL_CHROMA2
	ldrb	r0, [r5, #803]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_FILED, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_FILED
	strb	r0, [r4, #1197]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].FF_BUG_QPEL_FILED, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FF_BUG_QPEL_FILED
	str	r1, [r6, #3360]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].image_height
	str	r2, [r6, #3364]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].image_width
	ldrb	r2, [r5, #840]	@ zero_extendqisi2	@ D.40687, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_enable
	cmp	r2, #2	@ D.40687,
	cmpeq	r3, #3	@, D.40687,
	str	r2, [r6, #3368]	@ D.40687, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_enable
	moveq	r3, #1	@ tmp451,
	movne	r3, #0	@ tmp451,
	beq	.L451	@,
	ldrb	r2, [r5, #853]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy
	str	r3, [r6, #3372]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_warping_points
	str	r3, [r6, #3380]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dU
	str	r2, [r6, #3376]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_warping_accuracy
	str	r3, [r6, #3384]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dU
	str	r3, [r6, #3388]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dV
	str	r3, [r6, #3392]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dV
	str	r3, [r6, #3396]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Uo
	str	r3, [r6, #3400]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Vo
	str	r3, [r6, #3404]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Uco
	str	r3, [r6, #3408]	@ tmp451, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Vco
.L422:
	ldr	r1, [r5, #2508]	@, pCtx_12(D)->CurFsID
	ldr	r0, [r5, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r5, #2492]	@, pCtx_12(D)->FwdFsID
	mov	r8, r0	@ pCur,
	ldr	r0, [r5, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r5, #2500]	@, pCtx_12(D)->BwdFsID
	mov	r9, r0	@ pFwd,
	ldr	r0, [r5, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r8, #0	@ pCur,
	cmpne	r9, #0	@, pFwd,
	moveq	r3, #1	@ tmp541,
	movne	r3, #0	@ tmp541,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp547, tmp541
	cmp	r3, #0	@ tmp547,
	bne	.L425	@,
	ldr	r3, [r8, #408]	@ pCur_173->pstDecodeFs, pCur_173->pstDecodeFs
	cmp	r3, #0	@ pCur_173->pstDecodeFs,
	beq	.L425	@,
	ldr	r3, [r8, #416]	@ pCur_173->pstTfOutFs, pCur_173->pstTfOutFs
	cmp	r3, #0	@ pCur_173->pstTfOutFs,
	beq	.L425	@,
	ldr	r3, [r8, #412]	@ pCur_173->pstDispOutFs, pCur_173->pstDispOutFs
	cmp	r3, #0	@ pCur_173->pstDispOutFs,
	beq	.L425	@,
	ldr	r3, [r8, #420]	@ pCur_173->PmvAddr, pCur_173->PmvAddr
	add	lr, r4, #21248	@ ivtmp.356, pCtx,
	add	ip, r4, #1056	@ ivtmp.365, pCtx,
	add	r1, r4, #21504	@ ivtmp.373, pCtx,
	add	r2, r4, #1120	@ ivtmp.380, pCtx,
	add	lr, lr, #144	@ ivtmp.356, ivtmp.356,
	str	r3, [r4, #1264]	@ pCur_173->PmvAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].CurPmvPhyAddr
	add	ip, ip, #7	@ ivtmp.365, ivtmp.365,
	ldr	r3, [r0, #420]	@ pBwd_181->PmvAddr, pBwd_181->PmvAddr
	add	r1, r1, #144	@ ivtmp.373, ivtmp.373,
	add	r2, r2, #7	@ ivtmp.380, ivtmp.380,
	str	r3, [r4, #1268]	@ pBwd_181->PmvAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].BwdPmvPhyAddr
	ldr	r3, [r0, #408]	@ D.40693, pBwd_181->pstDecodeFs
	cmp	r3, #0	@ D.40693,
	ldreq	r3, [r8, #408]	@ pCur_173->pstDecodeFs, pCur_173->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.40686,
	str	r3, [r4, #1260]	@ D.40686, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].BwdRefPicPhyAddr
	ldr	r3, [r9, #408]	@ D.40693, pFwd_177->pstDecodeFs
	cmp	r3, #0	@ D.40693,
	ldreq	r3, [r8, #408]	@ pCur_173->pstDecodeFs, pCur_173->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.40686,
	str	r3, [r4, #1256]	@ D.40686, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FwdRefPicPhyAddr
	ldr	r3, [r8, #408]	@ pCur_173->pstDecodeFs, pCur_173->pstDecodeFs
	ldr	r3, [r3, #12]	@ _208->PhyAddr, _208->PhyAddr
	str	r3, [r4, #1252]	@ _208->PhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].CurPicPhyAddr
	ldr	r3, [r0, #416]	@ D.40693, pBwd_181->pstTfOutFs
	cmp	r3, #0	@ D.40693,
	ldreq	r3, [r8, #416]	@ pCur_173->pstTfOutFs, pCur_173->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.40686,
	str	r3, [r6, #3328]	@ D.40686, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].TfBwdPhyAddr
	ldr	r3, [r9, #416]	@ D.40693, pFwd_177->pstTfOutFs
	cmp	r3, #0	@ D.40693,
	ldreq	r3, [r8, #416]	@ pCur_173->pstTfOutFs, pCur_173->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.40686,
	str	r3, [r6, #3332]	@ D.40686, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].TfFwdPhyAddr
	ldr	r3, [r8, #416]	@ pCur_173->pstTfOutFs, pCur_173->pstTfOutFs
	ldr	r0, [r3, #12]	@ _226->PhyAddr, _226->PhyAddr
	mov	r3, #0	@ i,
	str	r0, [r6, #3336]	@ _226->PhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].TfCurPhyAddr
	ldr	r0, [r8, #412]	@ pCur_173->pstDispOutFs, pCur_173->pstDispOutFs
	ldr	r0, [r0, #12]	@ _230->PhyAddr, _230->PhyAddr
	str	r0, [r6, #3340]	@ _230->PhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].DispFramePhyAddr
	ldr	r0, [r8, #412]	@ pCur_173->pstDispOutFs, pCur_173->pstDispOutFs
	ldr	r0, [r0, #20]	@ _234->Stride, _234->Stride
	str	r0, [r6, #3352]	@ _234->Stride, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].VahbStride
	ldr	r0, [r8, #412]	@ pCur_173->pstDispOutFs, pCur_173->pstDispOutFs
	ldr	r0, [r0, #32]	@ _238->ChromOffset, _238->ChromOffset
	str	r0, [r6, #3356]	@ _238->ChromOffset, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].uv_offset
.L434:
	ldr	r0, [lr, #4]!	@ MEM[base: _274, offset: 0B], MEM[base: _274, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	strb	r0, [ip, #1]!	@ MEM[base: _274, offset: 0B], MEM[base: _273, offset: 0B]
	ldr	r0, [r1, #4]!	@ MEM[base: _272, offset: 0B], MEM[base: _272, offset: 0B]
	strb	r0, [r2, #1]!	@ MEM[base: _272, offset: 0B], MEM[base: _271, offset: 0B]
	bne	.L434	@,
	ldrh	r1, [r7, #164]	@ D.40690, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicWidthInMb
	ldrh	r3, [r7, #166]	@ D.40690, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicHeightInMb
	ldr	r2, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	mul	r3, r3, r1	@ D.40690, D.40690, D.40690
	str	r3, [r5, #1464]	@ D.40690, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.mb_total
	ldr	r3, [r2, #512]	@ D.40690, _256->s32Compress_en
	str	r3, [r6, #3412]	@ D.40690, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Compress_en
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L425:
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L450:
	add	r5, r4, #20480	@ tmp604, pCtx,
	mov	r0, #0	@ tmp303,
	ldr	r2, [r5, #1568]	@ D.40688, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].phy_addr
	bic	r1, r2, #3	@ D.40688, D.40688,
	str	r1, [r4, #1220]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamPhyAddr
	str	r2, [r4, #1208]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBaseAddr
	and	r2, r2, #3	@ D.40688, D.40688,
	ldr	r1, [r5, #1564]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr
	str	r1, [r4, #1056]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamVirAddr
	ldr	r1, [r5, #1576]	@ D.40688, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].offset
	add	r2, r1, r2, lsl #3	@ D.40688, D.40688, D.40688,
	str	r2, [r4, #1228]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBitOffset
	ldr	r2, [r5, #1572]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len
	str	r3, [r4, #1216]	@ ptr_strm_para_14(D)->StreamPack[0].IsLastSeg, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamFirstIsLastFlag
	str	r0, [r4, #1224]	@ tmp303, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamPhyAddr
	rsb	r1, r1, r2, lsl #3	@ D.40688, D.40688, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len,
	str	r0, [r4, #1232]	@ tmp303, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBitOffset
	str	r1, [r4, #1236]	@ D.40688, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamLength
	str	r0, [r4, #1240]	@ tmp303, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamLength
	b	.L420	@
.L451:
	add	r0, r4, #21248	@, pCtx,
	mov	r1, sp	@,
	add	r0, r0, #20	@,,
	bl	MP4_GetGMCparam	@
	ldrb	fp, [r5, #853]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy
	str	fp, [r6, #3376]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_warping_accuracy
	add	r0, sp, #32	@,,
	ldr	r10, [sp]	@ gmc.num_wp, gmc.num_wp
	ldr	r9, [sp, #16]	@ gmc.dU, gmc.dU
	ldmia	r0, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [sp, #20]	@ gmc.dU, gmc.dU
	ldr	lr, [sp, #24]	@ gmc.dV, gmc.dV
	ldr	ip, [sp, #28]	@ gmc.dV, gmc.dV
	str	r10, [r6, #3372]	@ gmc.num_wp, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_warping_points
	str	r9, [r6, #3380]	@ gmc.dU, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dU
	str	r8, [r6, #3384]	@ gmc.dU, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dU
	str	lr, [r6, #3388]	@ gmc.dV, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dV
	str	ip, [r6, #3392]	@ gmc.dV, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dV
	str	r0, [r6, #3396]	@ gmc.Uo, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Uo
	str	r1, [r6, #3400]	@ gmc.Vo, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Vo
	str	r2, [r6, #3404]	@ gmc.Uco, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Uco
	str	r3, [r6, #3408]	@ gmc.Vco, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Vco
	b	.L422	@
	.fnend
	.size	Mp4_Set_DecPar, .-Mp4_Set_DecPar
	.align	2
	.global	Mp4_Get_DecMode
	.type	Mp4_Get_DecMode, %function
Mp4_Get_DecMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #20480	@ tmp138, pCtx,
	ldr	r3, [r0, #1612]	@ pCtx_4(D)->DecMode, pCtx_4(D)->DecMode
	cmp	r3, #2	@ pCtx_4(D)->DecMode,
	ldr	r3, [r0, #1580]	@ D.40701, pCtx_4(D)->pstExtraData
	beq	.L464	@,
.L454:
	ldr	r3, [r3, #8]	@ D.40700, _17->s32DecMode
	cmp	r3, #2	@ D.40700,
	beq	.L457	@,
	cmp	r3, #1	@ D.40700,
	beq	.L463	@,
	cmp	r3, #4	@ D.40700,
	movne	r3, #0	@ tmp137,
.L463:
	str	r3, [r0, #1612]	@ tmp137, pCtx_4(D)->DecMode
	bx	lr	@
.L464:
	ldr	r2, [r3, #8]	@ _6->s32DecMode, _6->s32DecMode
	cmp	r2, #2	@ _6->s32DecMode,
	movne	r2, #1	@ tmp128,
	strne	r2, [r0, #2120]	@ tmp128, pCtx_4(D)->IPVopErr
	bne	.L454	@,
.L457:
	mov	r3, #2	@ tmp125,
	str	r3, [r0, #1612]	@ tmp125, pCtx_4(D)->DecMode
	bx	lr	@
	.fnend
	.size	Mp4_Get_DecMode, .-Mp4_Get_DecMode
	.align	2
	.global	MPEG4DEC_Init
	.type	MPEG4DEC_Init, %function
MPEG4DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 784
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #788
	sub	sp, sp, #788	@,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r6, r1	@ pstExtraData, pstExtraData
	bl	vfmw_dprint_nothing	@
	cmp	r6, #0	@ pstExtraData,
	cmpne	r5, #0	@, pCtx,
	beq	.L470	@,
	ldr	r3, [r6, #524]	@ pstExtraData_9(D)->s32KeepSPSPPS, pstExtraData_9(D)->s32KeepSPSPPS
	cmp	r3, #1	@ pstExtraData_9(D)->s32KeepSPSPPS,
	addne	r4, r5, #20480	@ tmp246, pCtx,
	beq	.L474	@,
.L468:
	ldr	r7, [r4, #2472]	@ D.40710, pCtx_7(D)->ImageQue.ResetMagicWord
	movw	r1, #23008	@,
	mov	r0, r5	@, pCtx
	bl	__memzero	@
	add	r0, r5, #22528	@, pCtx,
	add	r0, r0, #80	@,,
	str	r7, [r4, #2472]	@ D.40710, pCtx_7(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r4, #1580]	@ pstExtraData, pCtx_7(D)->pstExtraData
	mov	r0, r5	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.40706,
	str	r0, [r4, #2480]	@ D.40706, pCtx_7(D)->ChanID
	beq	.L475	@,
	mov	r0, r5	@, pCtx
	bl	Global_Data_Init	@
	subs	r7, r0, #0	@ D.40704,
	bne	.L470	@,
	mov	r2, #1	@ tmp192,
	str	r7, [r4, #2096]	@ D.40704, pCtx_7(D)->PPicFound
	str	r2, [r4, #2068]	@ tmp192, pCtx_7(D)->InitComplete
	bl	vfmw_dprint_nothing	@
	ldr	r6, [r6, #524]	@ pstExtraData_9(D)->s32KeepSPSPPS, pstExtraData_9(D)->s32KeepSPSPPS
	cmp	r6, #1	@ pstExtraData_9(D)->s32KeepSPSPPS,
	beq	.L476	@,
.L467:
	mov	r0, r7	@, D.40704
	add	sp, sp, #788	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L476:
	add	r0, r5, #21248	@, pCtx,
	mov	r2, #768	@,
	add	r1, sp, #16	@,,
	add	r0, r0, #20	@,,
	bl	memcpy	@
	add	r0, r5, #19968	@, pCtx,
	mov	r2, #24	@,
	add	r0, r0, #8	@,,
	add	r1, sp, #32	@,,
	bl	memcpy	@
	add	r0, r5, #19968	@, pCtx,
	mov	r2, #604	@,
	add	r0, r0, #32	@,,
	add	r1, sp, #56	@,,
	bl	memcpy	@
	mov	r0, r7	@, D.40704
	strb	fp, [r4, #1556]	@ MP4SyntaxState$vos_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22036B]
	strb	r10, [r4, #1557]	@ MP4SyntaxState$vo_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22037B]
	strb	r9, [r4, #1558]	@ MP4SyntaxState$gop_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22038B]
	strb	r8, [r4, #1559]	@ MP4SyntaxState$vol_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22039B]
	strb	r6, [r4, #2517]	@ pstExtraData_9(D)->s32KeepSPSPPS, pCtx_7(D)->SeekReset
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@, %sfp
	strb	r3, [r4, #1560]	@ tmp250, MEM[(char * {ref-all})pCtx_7(D) + 22040B]
	ldrb	r3, [sp, #8]	@ zero_extendqisi2	@, %sfp
	strb	r3, [r4, #1561]	@ tmp251, MEM[(char * {ref-all})pCtx_7(D) + 22041B]
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@, %sfp
	strb	r3, [r4, #1562]	@ tmp252, MEM[(char * {ref-all})pCtx_7(D) + 22042B]
	add	sp, sp, #788	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L474:
	add	r1, r5, #21248	@, pCtx,
	mov	r2, #768	@,
	add	r1, r1, #20	@,,
	add	r0, sp, #16	@,,
	bl	memcpy	@
	add	r1, r5, #19968	@, pCtx,
	add	r1, r1, #8	@,,
	mov	r2, #24	@,
	add	r4, r5, #20480	@ tmp246, pCtx,
	add	r0, sp, #32	@,,
	bl	memcpy	@
	add	r1, r5, #19968	@, pCtx,
	add	r1, r1, #32	@,,
	mov	r2, #604	@,
	add	r0, sp, #56	@,,
	bl	memcpy	@
	ldrb	r3, [r4, #1560]	@ zero_extendqisi2	@ MP4SyntaxState$last_vol_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22040B]
	ldrb	fp, [r4, #1556]	@ zero_extendqisi2	@ MP4SyntaxState$vos_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22036B]
	ldrb	r10, [r4, #1557]	@ zero_extendqisi2	@ MP4SyntaxState$vo_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22037B]
	ldrb	r9, [r4, #1558]	@ zero_extendqisi2	@ MP4SyntaxState$gop_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22038B]
	ldrb	r8, [r4, #1559]	@ zero_extendqisi2	@ MP4SyntaxState$vol_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22039B]
	str	r3, [sp, #4]	@ MP4SyntaxState$last_vol_decode_right, %sfp
	ldrb	r3, [r4, #1561]	@ zero_extendqisi2	@ MP4SyntaxState$vop_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22041B]
	str	r3, [sp, #8]	@ MP4SyntaxState$vop_decode_right, %sfp
	ldrb	r3, [r4, #1562]	@ zero_extendqisi2	@ MP4SyntaxState$userdata_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22042B]
	str	r3, [sp, #12]	@ MP4SyntaxState$userdata_decode_right, %sfp
	b	.L468	@
.L470:
	mvn	r7, #0	@ D.40704,
	mov	r0, r7	@, D.40704
	add	sp, sp, #788	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L475:
	bl	vfmw_dprint_nothing	@
	mvn	r7, #19	@ D.40704,
	b	.L467	@
	.fnend
	.size	MPEG4DEC_Init, .-MPEG4DEC_Init
	.align	2
	.global	MPEG4DEC_RecycleImage
	.type	MPEG4DEC_RecycleImage, %function
MPEG4DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pCtx
	beq	.L479	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #20480	@ tmp123, pCtx,
	mov	r5, r1	@ ImgID, ImgID
	mov	r2, #0	@,
	ldr	r0, [r4, #2480]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #2480]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L480	@,
	ldr	r1, [r5, #192]	@, pImg_11->p_usrdat
	mov	r6, #0	@ tmp132,
	ldr	r0, [r4, #2480]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp132, pImg_11->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_11->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp132, pImg_11->p_usrdat
	mov	r0, #1	@ D.40732,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L480:
	mov	r0, #1	@ D.40732,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L479:
	mvn	r0, #1	@ D.40732,
	bx	lr	@
	.fnend
	.size	MPEG4DEC_RecycleImage, .-MPEG4DEC_RecycleImage
	.align	2
	.global	MP4_SetImgFormat
	.type	MP4_SetImgFormat, %function
MP4_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r0, #20480	@ tmp124, pCtx,
	ldr	r1, [r4, #2508]	@, pCtx_3(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r2, [r4, #1496]	@ D.40738, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_width
	cmp	r2, #0	@ D.40738,
	beq	.L484	@,
	ldr	r1, [r4, #1492]	@ MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height
	cmp	r1, #0	@ MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height,
	beq	.L484	@,
	ldr	r0, [r3, #144]	@ pImg_8->image_width, pImg_8->image_width
	ldr	r1, [r3, #148]	@ pImg_8->image_height, pImg_8->image_height
	cmp	r0, r2	@ pImg_8->image_width, D.40738
	movcs	r0, r2	@ D.40738, D.40738
	str	r0, [r3, #152]	@ D.40738, pImg_8->disp_width
	ldr	r2, [r4, #1492]	@ MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height
	cmp	r1, r2	@ pImg_8->image_height, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height
	movcs	r1, r2	@ D.40738, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height
	str	r1, [r3, #156]	@ D.40738, pImg_8->disp_height
	b	.L485	@
.L484:
	ldr	r1, [r3, #144]	@ pImg_8->image_width, pImg_8->image_width
	ldr	r2, [r3, #148]	@ pImg_8->image_height, pImg_8->image_height
	str	r1, [r3, #152]	@ pImg_8->image_width, pImg_8->disp_width
	str	r2, [r3, #156]	@ pImg_8->image_height, pImg_8->disp_height
.L485:
	mov	r2, #2	@ tmp143,
	mov	r1, #0	@ tmp144,
	str	r2, [r3, #300]	@ tmp143, pImg_8->ImageDnr.video_standard
	mov	r0, #1	@ tmp151,
	mov	r2, #8	@ tmp148,
	strb	r1, [r3, #288]	@ tmp144, pImg_8->ImageDnr.pic_structure
	strb	r1, [r3, #295]	@ tmp144, pImg_8->ImageDnr.use_pic_qp_en
	str	r2, [r3, #304]	@ tmp148, pImg_8->ImageDnr.QP_Y
	str	r2, [r3, #312]	@ tmp148, pImg_8->ImageDnr.QP_V
	str	r2, [r3, #308]	@ tmp148, pImg_8->ImageDnr.QP_U
	strb	r0, [r3, #293]	@ tmp151, pImg_8->ImageDnr.chroma_format_idc
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	MP4_SetImgFormat, .-MP4_SetImgFormat
	.align	2
	.type	MP4_FlushFrameToVo, %function
MP4_FlushFrameToVo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #20480	@ tmp130, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	mov	r6, r1	@ FsID, FsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L498	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r6, r0	@ display_flag,
	movne	r0, #1	@ ret,
	beq	.L502	@,
.L497:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L502:
	mov	r0, r5	@, pCtx
	bl	MP4_SetImgFormat	@
	mov	r2, #1	@,
	ldr	r1, [r7, #176]	@, pImg_8->image_id
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #22528	@, pCtx,
	ldr	r0, [r4, #2480]	@ pCtx_4(D)->ChanID, pCtx_4(D)->ChanID
	mov	r1, r6	@, display_flag
	add	r3, r3, #80	@,,
	mov	r2, r5	@, pCtx
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L497	@,
	mov	r0, r5	@, pCtx
	ldr	r1, [r7, #176]	@, pImg_8->image_id
	bl	MPEG4DEC_RecycleImage	@
	ldr	r1, [r7, #192]	@, pImg_8->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	mov	r5, #0	@ tmp149,
	bl	FreeUsdByDec	@
	str	r5, [r7, #192]	@ tmp149, pImg_8->p_usrdat
	ldr	r1, [r7, #196]	@, pImg_8->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r7, #196]	@ tmp149, pImg_8->p_usrdat
	mvn	r0, #0	@ ret,
	b	.L497	@
.L498:
	mvn	r0, #0	@ ret,
	b	.L497	@
	.fnend
	.size	MP4_FlushFrameToVo, .-MP4_FlushFrameToVo
	.align	2
	.global	MPEG4DEC_GetRemainImg
	.type	MPEG4DEC_GetRemainImg, %function
MPEG4DEC_GetRemainImg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #20480	@ tmp138, pCtx,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r5, #1580]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _7->s32DecOrderOutput, _7->s32DecOrderOutput
	cmp	r3, #1	@ _7->s32DecOrderOutput,
	addeq	r6, r0, #22528	@ D.40747, pCtx,
	addeq	r6, r6, #80	@ D.40747, D.40747,
	beq	.L508	@,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2500]	@, pCtx_6(D)->BwdFsID
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L519	@,
	ldr	r1, [r5, #2500]	@, pCtx_6(D)->BwdFsID
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r8, r0	@ display_flag,
	beq	.L517	@,
.L519:
	add	r6, r4, #22528	@ D.40747, pCtx,
	add	r6, r6, #80	@ D.40747, D.40747,
.L508:
	mov	r0, r6	@, D.40747
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	GetVoLastImageID	@
.L517:
	mov	r0, r4	@, pCtx
	add	r6, r4, #22528	@ D.40747, pCtx,
	bl	MP4_SetImgFormat	@
	mov	r3, #1	@ tmp152,
	mov	r2, r3	@, tmp152
	str	r3, [r7, #224]	@ tmp152, pImg_12->last_frame
	ldr	r1, [r7, #176]	@, pImg_12->image_id
	add	r6, r6, #80	@ D.40747, D.40747,
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, #2480]	@ pCtx_6(D)->ChanID, pCtx_6(D)->ChanID
	mov	r1, r8	@, display_flag
	mov	r3, r6	@, D.40747
	mov	r2, r4	@, pCtx
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L505	@,
	mov	r0, r4	@, pCtx
	ldr	r1, [r7, #176]	@, pImg_12->image_id
	bl	MPEG4DEC_RecycleImage	@
	ldr	r1, [r7, #192]	@, pImg_12->p_usrdat
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	mov	r4, #0	@ tmp166,
	bl	FreeUsdByDec	@
	str	r4, [r7, #192]	@ tmp166, pImg_12->p_usrdat
	ldr	r1, [r7, #196]	@, pImg_12->p_usrdat
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	bl	FreeUsdByDec	@
	str	r4, [r7, #196]	@ tmp166, pImg_12->p_usrdat
	b	.L508	@
.L505:
	ldr	r3, [r7, #180]	@ pImg_12->error_level, pImg_12->error_level
	cmp	r3, #100	@ pImg_12->error_level,
	bhi	.L508	@,
	ldr	r3, [r7, #144]	@ pImg_12->image_width, pImg_12->image_width
	cmp	r3, #31	@ pImg_12->image_width,
	bls	.L508	@,
	ldr	r3, [r7, #148]	@ pImg_12->image_height, pImg_12->image_height
	cmp	r3, #31	@ pImg_12->image_height,
	bls	.L508	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MPEG4DEC_GetRemainImg, .-MPEG4DEC_GetRemainImg
	.align	2
	.global	MPEG4DEC_GetImageBuffer
	.type	MPEG4DEC_GetImageBuffer, %function
MPEG4DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #20480	@ tmp119, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.40754,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L527	@,
	mov	r0, #0	@ D.40754,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L527:
	add	r1, r5, #22528	@, pCtx,
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	add	r1, r1, #80	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.40754,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MPEG4DEC_GetImageBuffer, .-MPEG4DEC_GetImageBuffer
	.align	2
	.global	MP4_GetPacketState
	.type	MP4_GetPacketState, %function
MP4_GetPacketState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #16384	@ tmp115, pCtx,
	ldr	r3, [r0, #3588]	@ pCtx_3(D)->IsWaitToDecFlag, pCtx_3(D)->IsWaitToDecFlag
	cmp	r3, #1	@ pCtx_3(D)->IsWaitToDecFlag,
	mvnne	r0, #0	@,
	moveq	r0, #3	@,
	bx	lr	@
	.fnend
	.size	MP4_GetPacketState, .-MP4_GetPacketState
	.align	2
	.global	MP4_ClearCurPacket
	.type	MP4_ClearCurPacket, %function
MP4_ClearCurPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pMp4Packet, pMp4Packet
	ldr	r1, [r1, #16]	@, pMp4Packet_3(D)->StreamPack[0].StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pMp4Packet_3(D)->StreamPack[0].IsLastSeg, pMp4Packet_3(D)->StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pMp4Packet_3(D)->StreamPack[0].IsLastSeg,
	bne	.L532	@,
	ldrb	r3, [r4, #85]	@ zero_extendqisi2	@ pMp4Packet_3(D)->StreamPack[1].IsLastSeg, pMp4Packet_3(D)->StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pMp4Packet_3(D)->StreamPack[1].IsLastSeg,
	beq	.L534	@,
.L532:
	mov	r0, r4	@, pMp4Packet
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L534:
	ldr	r1, [r4, #96]	@, pMp4Packet_3(D)->StreamPack[1].StreamID
	mov	r0, r5	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r4	@, pMp4Packet
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
	.fnend
	.size	MP4_ClearCurPacket, .-MP4_ClearCurPacket
	.align	2
	.global	MP4_ClearCurPic
	.type	MP4_ClearCurPic, %function
MP4_ClearCurPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r8, r0, #16384	@ tmp129, pCtx,
	add	r3, r0, #20480	@ tmp121, pCtx,
	ldr	r6, [r8, #3580]	@ StreamIDNum, pCtx_4(D)->StreamIDNum
	ldr	r7, [r3, #2480]	@ ChanID, pCtx_4(D)->ChanID
	cmp	r6, #0	@ StreamIDNum,
	movgt	r5, r0	@ pCtx, pCtx
	addgt	r5, r5, #15808	@ ivtmp.409, pCtx,
	movgt	r4, #0	@ i,
	addgt	r5, r5, #56	@ ivtmp.409, ivtmp.409,
	ble	.L538	@,
.L537:
	add	r4, r4, #1	@ i, i,
	ldr	r1, [r5, #4]!	@, MEM[base: _19, offset: 0B]
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r6, r4	@ StreamIDNum, i
	bne	.L537	@,
.L538:
	mov	r3, #0	@ tmp126,
	str	r3, [r8, #3580]	@ tmp126, pCtx_4(D)->StreamIDNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MP4_ClearCurPic, .-MP4_ClearCurPic
	.align	2
	.global	Vdm_Mem_Move
	.type	Vdm_Mem_Move, %function
Vdm_Mem_Move:
	.fnstart
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ pCur, pCur
	mov	fp, r2	@ dst, dst
	mov	r10, r3	@ dst_2d, dst_2d
	add	r8, r0, #20480	@ tmp170, pCtx,
	ldr	r9, [sp, #40]	@ src, src
	ldr	r6, [sp, #44]	@ ImgWidth, ImgWidth
	ldr	r5, [sp, #48]	@ ImgHeight, ImgHeight
	bl	vfmw_dprint_nothing	@
	add	r0, r4, #12288	@ tmp147, pCtx,
	str	fp, [r4, #1252]	@ dst, pCtx_4(D)->Mp4DecParam.CurPicPhyAddr
	add	r6, r6, #15	@ D.40784, ImgWidth,
	add	r5, r5, #15	@ D.40784, ImgHeight,
	str	r10, [r0, #3340]	@ dst_2d, pCtx_4(D)->Mp4DecParam.DispFramePhyAddr
	movw	r2, #1204	@ tmp151,
	ldr	ip, [r7, #420]	@ pCur_9(D)->PmvAddr, pCur_9(D)->PmvAddr
	movw	r3, #1206	@ tmp157,
	str	r9, [r4, #1256]	@ src, pCtx_4(D)->Mp4DecParam.FwdRefPicPhyAddr
	mov	r6, r6, lsr #4	@ D.40784, D.40784,
	mov	r5, r5, lsr #4	@ D.40784, D.40784,
	add	r1, r4, #1040	@ D.40788, pCtx,
	str	ip, [r4, #1264]	@ pCur_9(D)->PmvAddr, pCtx_4(D)->Mp4DecParam.CurPmvPhyAddr
	strh	r6, [r4, r2]	@ movhi	@ D.40784, pCtx_4(D)->Mp4DecParam.PicWidthInMb
	strh	r5, [r4, r3]	@ movhi	@ D.40784, pCtx_4(D)->Mp4DecParam.PicHeightInMb
	ldr	r3, [r7, #412]	@ pCur_9(D)->pstDispOutFs, pCur_9(D)->pstDispOutFs
	ldr	r3, [r3, #20]	@ _25->Stride, _25->Stride
	str	r3, [r0, #3352]	@ _25->Stride, pCtx_4(D)->Mp4DecParam.VahbStride
	ldr	r3, [r7, #412]	@ pCur_9(D)->pstDispOutFs, pCur_9(D)->pstDispOutFs
	ldr	r3, [r3, #32]	@ _29->ChromOffset, _29->ChromOffset
	str	r3, [r0, #3356]	@ _29->ChromOffset, pCtx_4(D)->Mp4DecParam.uv_offset
	ldr	r3, [r8, #1580]	@ D.40787, pCtx_4(D)->pstExtraData
	ldr	r2, [r3, #512]	@ D.40783, _33->s32Compress_en
	str	r2, [r0, #3412]	@ D.40783, pCtx_4(D)->Mp4DecParam.Compress_en
	str	r1, [r4, #1036]	@ D.40788, pCtx_4(D)->pMp4DecParam
	ldr	r2, [r3, #708]	@ D.40783, _33->stDisParams.s32Mode
	cmp	r2, #1	@ D.40783,
	beq	.L552	@,
	cmp	r2, #2	@ D.40783,
	beq	.L553	@,
.L544:
	mov	r3, #1	@ tmp199,
	strb	r3, [r4, #1198]	@ tmp199, pCtx_4(D)->Mp4DecParam.IsNvopCopy
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L552:
	cmp	r1, #0	@ D.40788,
	beq	.L544	@,
	mov	r2, #0	@ tmp173,
	str	r2, [r4, #1036]	@ tmp173, pCtx_4(D)->pMp4DecParam
	ldr	r0, [r8, #2480]	@, pCtx_4(D)->ChanID
	ldr	r1, [r8, #2508]	@, pCtx_4(D)->CurFsID
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pCtx
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	MP4_ClearCurPic	@
.L553:
	ldr	r3, [r3, #712]	@ _33->stDisParams.s32DisNums, _33->stDisParams.s32DisNums
	cmp	r1, #0	@ D.40788,
	cmpne	r3, #0	@, _33->stDisParams.s32DisNums,
	ble	.L544	@,
	mov	r2, #0	@ tmp188,
	str	r2, [r4, #1036]	@ tmp188, pCtx_4(D)->pMp4DecParam
	ldr	r0, [r8, #2480]	@, pCtx_4(D)->ChanID
	ldr	r1, [r8, #2508]	@, pCtx_4(D)->CurFsID
	bl	FSP_SetDisplay	@
	ldr	r2, [r8, #1580]	@ D.40787, pCtx_4(D)->pstExtraData
	mov	r0, r4	@, pCtx
	ldr	r3, [r2, #712]	@ _49->stDisParams.s32DisNums, _49->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.40783, _49->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.40783, _49->stDisParams.s32DisNums
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	MP4_ClearCurPic	@
	.fnend
	.size	Vdm_Mem_Move, .-Vdm_Mem_Move
	.align	2
	.global	MP4_GetScdUpMsg
	.type	MP4_GetScdUpMsg, %function
MP4_GetScdUpMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #15808	@, pCtx,
	add	r1, r1, #72	@, pMp4Packet,
	add	r0, r0, #56	@,,
	mov	r2, #4	@,
	b	memcpy	@
	.fnend
	.size	MP4_GetScdUpMsg, .-MP4_GetScdUpMsg
	.align	2
	.global	Mp4_Check_Slice_NotSH
	.type	Mp4_Check_Slice_NotSH, %function
Mp4_Check_Slice_NotSH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #16384	@ tmp133, pCtx,
	add	r2, r0, #20480	@ tmp169, pCtx,
	ldrb	r3, [r3, #3635]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vol.resync_marker_disable, pCtx_6(D)->MP4Vol.resync_marker_disable
	ldrb	r1, [r2, #728]	@ zero_extendqisi2	@ D.40802, pCtx_6(D)->MP4Vop.vop_coding_type
	cmp	r3, #0	@ pCtx_6(D)->MP4Vol.resync_marker_disable,
	bne	.L563	@,
	add	r0, r0, #12288	@ tmp136, pCtx,
	ldrb	r3, [r0, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	tst	r3, #120	@ *pCtx_6(D),
	bne	.L563	@,
	movw	r3, #3576	@ tmp148,
	ldrh	r0, [r0, r3]	@ *pCtx_6(D), *pCtx_6(D)
	ubfx	r0, r0, #7, #4	@ D.40804, *pCtx_6(D),,
	add	r0, r0, #17	@ goldenLen, D.40804,
	cmp	r1, #3	@ D.40802,
	ldrls	pc, [pc, r1, asl #2]	@ D.40802
	b	.L557	@
.L559:
	.word	.L564
	.word	.L560
	.word	.L561
	.word	.L560
.L563:
	mvn	r0, #0	@ D.40801,
	bx	lr	@
.L564:
	mov	r3, #17	@ StartCodeLen,
.L558:
	subs	r0, r3, r0	@ D.40801, StartCodeLen, goldenLen
	mvnne	r0, #0	@ D.40801,
	bx	lr	@
.L561:
	ldrb	r3, [r2, #737]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_fcode_backward, pCtx_6(D)->MP4Vop.vop_fcode_backward
	ldrb	r2, [r2, #736]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_fcode_forward, pCtx_6(D)->MP4Vop.vop_fcode_forward
	cmp	r3, r2	@ pCtx_6(D)->MP4Vop.vop_fcode_backward, pCtx_6(D)->MP4Vop.vop_fcode_forward
	movcc	r3, r2	@ Fcode, pCtx_6(D)->MP4Vop.vop_fcode_forward
	add	r3, r3, #16	@ StartCodeLen, Fcode,
	cmp	r3, #18	@ StartCodeLen,
	movlt	r3, #18	@ StartCodeLen,
	b	.L558	@
.L560:
	ldrb	r3, [r2, #736]	@ zero_extendqisi2	@ Fcode, pCtx_6(D)->MP4Vop.vop_fcode_forward
	add	r3, r3, #16	@ StartCodeLen, Fcode,
	b	.L558	@
.L557:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40801,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Mp4_Check_Slice_NotSH, .-Mp4_Check_Slice_NotSH
	.align	2
	.global	Mp4_Combine_SliceData
	.type	Mp4_Combine_SliceData, %function
Mp4_Combine_SliceData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #16384	@ tmp159, pCtx,
	add	r2, r0, #12288	@ tmp208, pCtx,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r0, r0, #1264	@ pSlcPara, pCtx,
	ldr	r3, [r3, #3584]	@ pCtx_4(D)->PicIntegrality, pCtx_4(D)->PicIntegrality
	add	r0, r0, #12	@ pSlcPara, pSlcPara,
	ldr	ip, [r2, #3324]	@ SlcNum, pCtx_4(D)->Mp4DecParam.SlcNum
	tst	r3, #2	@ pCtx_4(D)->PicIntegrality,
	beq	.L568	@,
	ldrb	r3, [r2, #3421]	@ zero_extendqisi2	@ D.40809, pCtx_4(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ D.40809,
	beq	.L584	@,
	cmp	r3, #0	@ D.40809,
	bne	.L568	@,
	ldrb	r3, [r2, #3501]	@ zero_extendqisi2	@ pCtx_4(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_4(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pCtx_4(D)->stCurPacket.StreamPack[1].IsLastSeg,
	bne	.L568	@,
	mov	r3, ip, asl #5	@ tmp192, SlcNum,
	sub	r3, r3, ip, asl #2	@ D.40808, tmp192, SlcNum,
	sub	r3, r3, #28	@ D.40810, D.40808,
	add	r3, r0, r3	@ D.40811, pSlcPara, D.40810
	ldr	r0, [r3, #12]	@ _42->bit_len, _42->bit_len
	cmp	r0, #0	@ _42->bit_len,
	bne	.L576	@,
	ldr	r0, [r3, #20]	@ _42->phy_address, _42->phy_address
	cmp	r0, #0	@ _42->phy_address,
	bne	.L576	@,
	ldr	ip, [r3, #8]	@ _42->bit_len, _42->bit_len
	add	r1, ip, r1, lsl #3	@ D.40808, _42->bit_len, CodeLen,
	str	r1, [r3, #8]	@ D.40808, _42->bit_len
	ldr	r1, [r2, #3504]	@ pCtx_4(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_4(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r1, [r3, #20]	@ pCtx_4(D)->stCurPacket.StreamPack[1].PhyAddr, _42->phy_address
	ldr	r2, [r2, #3508]	@ pCtx_4(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_4(D)->stCurPacket.StreamPack[1].LenInByte
	mov	r2, r2, asl #3	@ D.40808, pCtx_4(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r2, [r3, #12]	@ D.40808, _42->bit_len
	ldmfd	sp!, {r4, pc}	@
.L584:
	sub	lr, ip, #1	@ D.40808, SlcNum,
	movw	r3, #510	@ tmp165,
	cmp	lr, r3	@ D.40808, tmp165
	bhi	.L568	@,
	mov	r3, ip, asl #5	@ tmp168, SlcNum,
	sub	r3, r3, ip, asl #2	@ D.40808, tmp168, SlcNum,
	sub	r3, r3, #28	@ D.40810, D.40808,
	add	r3, r0, r3	@ D.40811, pSlcPara, D.40810
	ldr	r0, [r3, #12]	@ D.40808, _14->bit_len
	cmp	r0, #0	@ D.40808,
	beq	.L572	@,
	ldr	ip, [r3, #20]	@ D.40808, _14->phy_address
	cmp	ip, #0	@ D.40808,
	beq	.L572	@,
	ldr	r2, [r2, #3424]	@ pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr
	cmp	ip, r2	@ D.40808, pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr
	bhi	.L568	@,
	add	r1, r0, r1, lsl #3	@ D.40808, D.40808, CodeLen,
	mov	r0, #0	@ D.40807,
	str	r1, [r3, #12]	@ D.40808, _14->bit_len
	ldmfd	sp!, {r4, pc}	@
.L572:
	ldr	ip, [r2, #3424]	@ pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr
	ldr	r0, [r3, #16]	@ _14->phy_address, _14->phy_address
	cmp	ip, r0	@ pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr, _14->phy_address
	movls	r1, r1, asl #3	@ D.40812, CodeLen,
	strls	r1, [r3, #12]	@ D.40812, _14->bit_len
	ldrls	r2, [r2, #3424]	@ pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr
	movhi	r0, #0	@ D.40807,
	ldrhi	r2, [r3, #8]	@ _14->bit_len, _14->bit_len
	movls	r0, #0	@ D.40807,
	addhi	r1, r2, r1, lsl #3	@ D.40808, _14->bit_len, CodeLen,
	strls	r2, [r3, #20]	@ pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr, _14->phy_address
	strhi	r1, [r3, #8]	@ D.40808, _14->bit_len
	ldmfd	sp!, {r4, pc}	@
.L568:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40807,
	ldmfd	sp!, {r4, pc}	@
.L576:
	mvn	r0, #0	@ D.40807,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Mp4_Combine_SliceData, .-Mp4_Combine_SliceData
	.align	2
	.global	MP4_Check_StreamType
	.type	MP4_Check_StreamType, %function
MP4_Check_StreamType:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #12288	@ tmp119, pCtx,
	add	r0, r0, #20480	@ tmp126, pCtx,
	ldrb	r3, [r2, #3576]	@ zero_extendqisi2	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_1(D) + 15864B], MEM[(struct MP4_SCD_UPMSG *)pCtx_1(D) + 15864B]
	tst	r3, #1	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_1(D) + 15864B],
	bne	.L586	@,
	mov	r3, #2	@ tmp127,
	strb	r3, [r0, #797]	@ tmp127, pCtx_1(D)->MP4Syntax.is_short_header
	ldr	r3, [r1]	@ *StartCode_6(D), *StartCode_6(D)
	mov	r3, r3, lsr #8	@ D.40821, *StartCode_6(D),
	sub	r3, r3, #128	@ D.40821, D.40821,
	cmp	r3, #3	@ D.40821,
	ldrlsb	r3, [r2, #3576]	@ zero_extendqisi2	@ pCtx_1(D)->ScdUpMsg.SliceFlag, pCtx_1(D)->ScdUpMsg.SliceFlag
	orrls	r3, r3, #2	@ tmp136, pCtx_1(D)->ScdUpMsg.SliceFlag,
	strlsb	r3, [r2, #3576]	@ tmp136, pCtx_1(D)->ScdUpMsg.SliceFlag
.L587:
	mov	r0, #0	@,
	bx	lr	@
.L586:
	mov	r2, #196	@ tmp138,
	mov	r3, #1	@ tmp141,
	str	r2, [r1]	@ tmp138, *StartCode_6(D)
	strb	r3, [r0, #797]	@ tmp141, pCtx_1(D)->MP4Syntax.is_short_header
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	MP4_Check_StreamType, .-MP4_Check_StreamType
	.align	2
	.global	MP4_Clean_HeadPacket
	.type	MP4_Clean_HeadPacket, %function
MP4_Clean_HeadPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp122, pCtx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r0	@ pCtx, pCtx
	ldr	r6, [r3, #2036]	@ StreamIDNum, pCtx_4(D)->stHdPktInfo.StreamIDNum
	ldr	r7, [r3, #2480]	@ ChanID, pCtx_4(D)->ChanID
	cmp	r6, #64	@ StreamIDNum,
	movge	r6, #64	@ StreamIDNum,
	cmp	r6, #0	@ StreamIDNum,
	addgt	r5, r0, #22016	@ ivtmp.432, pCtx,
	movgt	r4, #0	@ i,
	addgt	r5, r5, #240	@ ivtmp.432, ivtmp.432,
	ble	.L591	@,
.L590:
	add	r4, r4, #1	@ i, i,
	ldr	r1, [r5, #4]!	@, MEM[base: _20, offset: 0B]
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r4, r6	@ i, StreamIDNum
	bne	.L590	@,
.L591:
	add	r0, r8, #22016	@, pCtx,
	mov	r1, #440	@,
	add	r0, r0, #80	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	__memzero	@
	.fnend
	.size	MP4_Clean_HeadPacket, .-MP4_Clean_HeadPacket
	.align	2
	.global	MPEG4DEC_VDMPostProc
	.type	MPEG4DEC_VDMPostProc, %function
MPEG4DEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pCtx, pCtx
	mov	r6, r1	@ ErrRatio, ErrRatio
	add	r0, r0, #1040	@, pCtx,
	movw	r1, #14664	@,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r4, r5, #20480	@ tmp462, pCtx,
	bl	__memzero	@
	mov	r0, r5	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r5	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	r1, [r4, #2508]	@, pCtx_12(D)->CurFsID
	str	r6, [r4, #2064]	@ ErrRatio, pCtx_12(D)->ErrorLevel
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2500]	@, pCtx_12(D)->BwdFsID
	mov	r7, r0	@ pCurImg,
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2492]	@, pCtx_12(D)->FwdFsID
	mov	r8, r0	@ pBwdImg,
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pCurImg,
	beq	.L605	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2064]	@ D.40842, pCtx_12(D)->ErrorLevel
	add	r1, r5, #22528	@, pCtx,
	add	r1, r1, #52	@,,
	str	r3, [r7, #180]	@ D.40842, pCurImg_24->error_level
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	Mp4_ClearUsrData	@
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	beq	.L597	@,
	ldr	r3, [r4, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r2, [r4, #2064]	@ pCtx_12(D)->ErrorLevel, pCtx_12(D)->ErrorLevel
	ldr	r3, [r3]	@ _42->s32RefErrThr, _42->s32RefErrThr
	cmp	r2, r3	@ pCtx_12(D)->ErrorLevel, _42->s32RefErrThr
	bhi	.L636	@,
.L597:
	mov	r3, #0	@ tmp308,
	mov	r0, r5	@, pCtx
	str	r3, [r4, #2120]	@ tmp308, pCtx_12(D)->IPVopErr
	bl	MP4_SetImgFormat	@
	ldr	r3, [r4, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _82->s32DecOrderOutput, _82->s32DecOrderOutput
	cmp	r3, #1	@ _82->s32DecOrderOutput,
	beq	.L599	@,
	ldrb	r6, [r4, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r6, #2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	beq	.L600	@,
	ldr	r3, [r4, #2488]	@ pCtx_12(D)->RefNum, pCtx_12(D)->RefNum
	cmp	r3, #1	@ pCtx_12(D)->RefNum,
	ble	.L601	@,
	ldr	r3, [r4, #2492]	@ D.40841, pCtx_12(D)->FwdFsID
	ldr	r9, [r4, #2496]	@ ToQueTimePP, pCtx_12(D)->FwdTimePP
	str	r3, [r4, #2512]	@ D.40841, pCtx_12(D)->ToQueFsID
	ldrb	r6, [r5]	@ zero_extendqisi2	@ ToQueCodingType, pCtx_12(D)->FwdCodingType
.L602:
	cmn	r3, #1	@ D.40841,
	beq	.L604	@,
	mov	r1, r3	@, D.40841
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pToQueImg,
	beq	.L605	@,
	cmp	r9, #0	@ ToQueTimePP,
	cmpeq	r6, #4	@, ToQueCodingType,
	moveq	r9, #1	@ tmp350,
	movne	r9, #0	@ tmp350,
	beq	.L637	@,
	ldr	r3, [r7, #180]	@ D.40842, pToQueImg_110->error_level
	cmp	r3, #0	@ D.40842,
	beq	.L607	@,
	ldr	r2, [r4, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r2, [r2, #4]	@ _130->s32OutErrThr, _130->s32OutErrThr
	cmp	r3, r2	@ D.40842, _130->s32OutErrThr
	bhi	.L608	@,
.L607:
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r8, r0, #0	@ pstLogicFs,
	beq	.L638	@,
	cmp	r6, #2	@ ToQueCodingType,
	beq	.L610	@,
	ldrsb	r3, [r8, #1]	@ pstLogicFs_148->s32DispState, pstLogicFs_148->s32DispState
	cmp	r3, #2	@ pstLogicFs_148->s32DispState,
	beq	.L610	@,
	bl	vfmw_dprint_nothing	@
	b	.L604	@
.L610:
	mov	r2, #1	@,
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #22528	@, pCtx,
	ldr	r0, [r4, #2480]	@ pCtx_12(D)->ChanID, pCtx_12(D)->ChanID
	mov	r2, r5	@, pCtx
	add	r3, r3, #80	@,,
	mov	r1, #2	@,
	str	r7, [sp]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L639	@,
.L604:
	ldr	r3, [r4, #2072]	@ pCtx_12(D)->FrameNum, pCtx_12(D)->FrameNum
	mov	r0, #0	@ D.40841,
	add	r3, r3, #1	@ D.40842, pCtx_12(D)->FrameNum,
	str	r3, [r4, #2072]	@ D.40842, pCtx_12(D)->FrameNum
.L633:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L599:
	ldr	r3, [r4, #2508]	@ D.40841, pCtx_12(D)->CurFsID
	ldrb	r6, [r4, #1432]	@ zero_extendqisi2	@ ToQueCodingType, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	ldr	r9, [r4, #1524]	@ ToQueTimePP, pCtx_12(D)->MP4Syntax.time_pp
	str	r3, [r4, #2512]	@ D.40841, pCtx_12(D)->ToQueFsID
	b	.L602	@
.L601:
	mvn	r3, #0	@ tmp461,
	str	r3, [r4, #2512]	@ tmp461, pCtx_12(D)->ToQueFsID
	b	.L604	@
.L600:
	ldr	r3, [r4, #2508]	@ D.40841, pCtx_12(D)->CurFsID
	cmp	r8, #0	@ pBwdImg,
	ldr	r9, [r4, #1524]	@ ToQueTimePP, pCtx_12(D)->MP4Syntax.time_pp
	str	r3, [r4, #2512]	@ D.40841, pCtx_12(D)->ToQueFsID
	beq	.L602	@,
	ldrd	r10, [r8, #8]	@ D.40848, pBwdImg,
	ldrd	r0, [r7, #8]	@ D.40848, pCurImg,
	cmp	r10, r0	@ D.40848, D.40848
	sbcs	r2, fp, r1	@ tmp463, D.40848, D.40848
	strltd	r10, [r7, #8]	@ D.40848, pCurImg,
	strltd	r0, [r8, #8]	@ D.40848, pBwdImg,
	ldrlt	r3, [r4, #2512]	@ D.40841, pCtx_12(D)->ToQueFsID
	b	.L602	@
.L608:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, #192]	@, pToQueImg_110->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r9, [r7, #192]	@ tmp350, pToQueImg_110->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_110->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r9, [r7, #196]	@ tmp350, pToQueImg_110->p_usrdat
	mov	r2, r9	@, tmp350
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L604	@
.L636:
	mov	r7, #1	@ tmp251,
	ldr	r1, [r4, #2500]	@, pCtx_12(D)->BwdFsID
	str	r7, [r4, #2120]	@ tmp251, pCtx_12(D)->IPVopErr
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L598	@,
	ldr	r1, [r5, #192]	@, pImg_49->p_usrdat
	mov	r6, #0	@ tmp274,
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_49->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_49->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_49->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp274, pImg_49->p_usrdat
	str	r6, [r5, #196]	@ tmp274, pImg_49->p_usrdat
	mov	r2, r7	@, tmp251
	str	r6, [r5, #200]	@ tmp274, pImg_49->p_usrdat
	str	r6, [r5, #204]	@ tmp274, pImg_49->p_usrdat
	ldr	r1, [r4, #2500]	@, pCtx_12(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, r7	@, tmp251
	ldr	r1, [r4, #2492]	@, pCtx_12(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2492]	@ tmp274, pCtx_12(D)->FwdFsID
	str	r6, [r4, #2500]	@ tmp274, pCtx_12(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2500]	@ D.40843, pCtx_12(D)->BwdFsID
	str	r0, [r4, #2492]	@ D.40843, pCtx_12(D)->FwdFsID
.L598:
	mov	r3, #0	@ tmp305,
	mvn	r0, #0	@ D.40841,
	str	r3, [r4, #2488]	@ tmp305, pCtx_12(D)->RefNum
	b	.L633	@
.L639:
	ldr	r1, [r7, #192]	@, pToQueImg_110->p_usrdat
	mov	r5, #0	@ tmp424,
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
.L635:
	bl	FreeUsdByDec	@
	str	r5, [r7, #192]	@ tmp424, pToQueImg_110->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_110->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r7, #196]	@ tmp424, pToQueImg_110->p_usrdat
	mov	r2, r5	@, tmp424
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.40841,
	b	.L633	@
.L605:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40841,
	b	.L633	@
.L637:
	ldr	ip, [r4, #2480]	@ D.40843, pCtx_12(D)->ChanID
	mov	r5, #0	@ tmp370,
	ldr	r3, .L640	@ tmp353,
	ldr	r1, [r7, #192]	@, pToQueImg_110->p_usrdat
	mov	r2, ip, asl #5	@ tmp356, D.40843,
	mov	r0, ip	@, D.40843
	sub	r2, r2, ip, asl #3	@ tmp357, tmp356, D.40843,
	add	r3, r3, r2	@ tmp358, tmp353, tmp357
	ldr	r2, [r3, #16]	@ g_VfmwChanStat[_115].u32SkipDiscard, g_VfmwChanStat[_115].u32SkipDiscard
	add	r2, r2, #1	@ D.40842, g_VfmwChanStat[_115].u32SkipDiscard,
	str	r2, [r3, #16]	@ D.40842, g_VfmwChanStat[_115].u32SkipDiscard
	b	.L635	@
.L638:
	ldr	r1, [r7, #192]	@, pToQueImg_110->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #192]	@ pstLogicFs, pToQueImg_110->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_110->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #196]	@ pstLogicFs, pToQueImg_110->p_usrdat
	mov	r2, r8	@, pstLogicFs
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.40841,
	b	.L633	@
.L641:
	.align	2
.L640:
	.word	g_VfmwChanStat
	.fnend
	.size	MPEG4DEC_VDMPostProc, .-MPEG4DEC_VDMPostProc
	.align	2
	.global	MP4_Record_SlcSegID
	.type	MP4_Record_SlcSegID, %function
MP4_Record_SlcSegID:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r0, #16384	@ tmp125, pCtx,
	movw	r2, #1022	@ tmp126,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, r0	@ pCtx, pCtx
	ldr	r3, [ip, #3580]	@ D.40857, pCtx_2(D)->StreamIDNum
	cmp	r3, r2	@ D.40857, tmp126
	bhi	.L646	@,
	add	r0, r0, #12288	@ tmp136, pCtx,
	add	r1, r1, r3, lsl #2	@ D.40862, pCtx, D.40857,
	add	r1, r1, #12288	@ tmp134, D.40862,
	add	r2, r3, #1	@ D.40857, D.40857,
	ldr	lr, [r0, #3432]	@ pCtx_2(D)->stCurPacket.StreamPack[0].StreamID, pCtx_2(D)->stCurPacket.StreamPack[0].StreamID
	str	lr, [r1, #3580]	@ pCtx_2(D)->stCurPacket.StreamPack[0].StreamID, MEM[(HI_U32 *)_24 + 15868B]
	str	r2, [ip, #3580]	@ D.40857, pCtx_2(D)->StreamIDNum
	ldrb	r2, [r0, #3421]	@ zero_extendqisi2	@ pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r2, #0	@ pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg,
	ldmnefd	sp!, {r4, pc}	@
	ldrb	r2, [r0, #3501]	@ zero_extendqisi2	@ pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg,
	ldreq	r2, [r0, #3512]	@ pCtx_2(D)->stCurPacket.StreamPack[1].StreamID, pCtx_2(D)->stCurPacket.StreamPack[1].StreamID
	addeq	r3, r3, #2	@ D.40857, D.40857,
	streq	r2, [r1, #3584]	@ pCtx_2(D)->stCurPacket.StreamPack[1].StreamID, MEM[(HI_U32 *)_24 + 15872B]
	streq	r3, [ip, #3580]	@ D.40857, pCtx_2(D)->StreamIDNum
	ldmfd	sp!, {r4, pc}	@
.L646:
	mov	r4, r0	@ pCtx, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	add	r3, r4, #20480	@ tmp130, pCtx,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r3, #2480]	@, pCtx_2(D)->ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	MP4_Record_SlcSegID, .-MP4_Record_SlcSegID
	.align	2
	.global	Mp4_Syntax_ShortHeader
	.type	Mp4_Syntax_ShortHeader, %function
Mp4_Syntax_ShortHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #12288	@ tmp474, pCtx,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r7, r0	@ pCtx, pCtx
	ldr	r6, [r8, #3324]	@ D.40869, pCtx_14(D)->Mp4DecParam.SlcNum
	mov	r4, r2	@ len, len
	cmp	r6, #0	@ D.40869,
	bne	.L684	@,
.L648:
	mov	r2, r4	@, len
	add	r0, sp, #12	@ tmp480,,
	bl	BsInit	@
	add	r0, r7, #20992	@, pCtx,
	add	r0, r0, #216	@,,
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r1, #22	@,
	add	r5, r7, #20480	@ tmp472, pCtx,
	add	r0, sp, #12	@ tmp481,,
	bl	BsSkip	@
	mov	r1, #13	@,
	add	r0, sp, #12	@ tmp482,,
	bl	BsSkip	@
	mov	r1, #3	@,
	add	r0, sp, #12	@ tmp483,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40871,
	strb	r0, [r5, #738]	@ D.40871, pCtx_14(D)->MP4Vop.source_format
	sub	r3, r0, #1	@ tmp181, D.40871,
	cmp	r3, #3	@ tmp181,
	ldrls	pc, [pc, r3, asl #2]	@ tmp181
	b	.L649	@
.L651:
	.word	.L650
	.word	.L652
	.word	.L653
	.word	.L654
.L654:
	mov	r2, #18	@ tmp226,
	mov	r3, #88	@ tmp230,
	strb	r2, [r5, #739]	@ tmp226, pCtx_14(D)->MP4Vop.num_gobs_invop
	mov	r2, #704	@ tmp234,
	strb	r3, [r5, #740]	@ tmp230, pCtx_14(D)->MP4Vop.num_mb_ingob
	mov	r3, #576	@ tmp237,
	str	r2, [r5, #1496]	@ tmp234, pCtx_14(D)->MP4Syntax.image_width
	str	r3, [r5, #1492]	@ tmp237, pCtx_14(D)->MP4Syntax.image_height
.L655:
	mov	r1, #1	@,
	add	r0, sp, #12	@ tmp485,,
	bl	BsGet	@
	ldrb	r3, [r5, #795]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Syntax.coding_mode, pCtx_14(D)->MP4Syntax.coding_mode
	cmp	r3, #2	@ pCtx_14(D)->MP4Syntax.coding_mode,
	uxtb	r0, r0	@ D.40871,
	strb	r0, [r5, #728]	@ D.40871, pCtx_14(D)->MP4Vop.vop_coding_type
	beq	.L657	@,
	adds	r0, r0, #0	@ tmp263, D.40871,
	ldr	r3, [r5, #2120]	@ pCtx_14(D)->IPVopErr, pCtx_14(D)->IPVopErr
	movne	r0, #1	@ tmp263,
	cmp	r3, #1	@ pCtx_14(D)->IPVopErr,
	movne	r0, #0	@ tmp263,
	cmp	r0, #0	@ tmp263,
	bne	.L657	@,
	mov	r1, #4	@,
	add	r0, sp, #12	@ tmp487,,
	bl	BsSkip	@
	mov	r1, #5	@,
	mov	r10, r4, asl #3	@ D.40870, len,
	mov	r4, #0	@ i,
	add	r0, sp, #12	@ tmp488,,
	bl	BsGet	@
	mov	r1, #1	@,
	uxtb	r0, r0	@ D.40871,
	cmp	r0, #0	@ D.40871,
	strneb	r0, [r5, #735]	@ D.40871, pCtx_14(D)->MP4Vop.vop_quant
	add	r0, sp, #12	@ tmp489,,
	moveq	r3, #1	@ tmp272,
	streqb	r3, [r5, #735]	@ tmp272, pCtx_14(D)->MP4Vop.vop_quant
	bl	BsSkip	@
.L663:
	mov	r1, #1	@,
	add	r0, sp, #12	@ tmp490,,
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L685	@,
	add	r4, r4, #1	@ i, i,
	cmp	r4, #15	@ i,
	bls	.L664	@,
.L682:
	mov	r4, #0	@ tmp281,
	add	r0, sp, #12	@ tmp494,,
	strb	r4, [r5, #1561]	@ tmp281, pCtx_14(D)->MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	ldr	r3, .L689	@ tmp284,
	ldr	r3, [r3]	@ D.40872, g_event_report
	cmp	r3, r4	@ D.40872,
	mov	r9, r0	@ BitUsed,
	beq	.L670	@,
	mov	r2, r4	@, tmp281
	ldr	r0, [r5, #2480]	@, pCtx_14(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.40872
	mov	r0, r9	@ D.40867, BitUsed
.L681:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L653:
	mov	r2, #18	@ tmp212,
	mov	r3, #22	@ tmp216,
	strb	r2, [r5, #739]	@ tmp212, pCtx_14(D)->MP4Vop.num_gobs_invop
	mov	r2, #352	@ tmp220,
	strb	r3, [r5, #740]	@ tmp216, pCtx_14(D)->MP4Vop.num_mb_ingob
	mov	r3, #288	@ tmp223,
	str	r2, [r5, #1496]	@ tmp220, pCtx_14(D)->MP4Syntax.image_width
	str	r3, [r5, #1492]	@ tmp223, pCtx_14(D)->MP4Syntax.image_height
	b	.L655	@
.L652:
	mov	r2, #9	@ tmp198,
	mov	r3, #11	@ tmp202,
	strb	r2, [r5, #739]	@ tmp198, pCtx_14(D)->MP4Vop.num_gobs_invop
	mov	r2, #176	@ tmp206,
	strb	r3, [r5, #740]	@ tmp202, pCtx_14(D)->MP4Vop.num_mb_ingob
	mov	r3, #144	@ tmp209,
	str	r2, [r5, #1496]	@ tmp206, pCtx_14(D)->MP4Syntax.image_width
	str	r3, [r5, #1492]	@ tmp209, pCtx_14(D)->MP4Syntax.image_height
	b	.L655	@
.L650:
	mov	r2, #6	@ tmp184,
	mov	r3, #8	@ tmp188,
	strb	r2, [r5, #739]	@ tmp184, pCtx_14(D)->MP4Vop.num_gobs_invop
	mov	r2, #128	@ tmp192,
	strb	r3, [r5, #740]	@ tmp188, pCtx_14(D)->MP4Vop.num_mb_ingob
	mov	r3, #96	@ tmp195,
	str	r2, [r5, #1496]	@ tmp192, pCtx_14(D)->MP4Syntax.image_width
	str	r3, [r5, #1492]	@ tmp195, pCtx_14(D)->MP4Syntax.image_height
	b	.L655	@
.L685:
	add	r0, sp, #12	@ tmp491,,
	add	r4, r4, #1	@ i, i,
	bl	BsPos	@
	mov	r1, #8	@,
	cmp	r0, r10	@, D.40870
	add	r0, sp, #12	@ tmp492,,
	bgt	.L686	@,
	bl	BsSkip	@
	cmp	r4, #15	@ i,
	bls	.L663	@,
	b	.L682	@
.L684:
	str	r1, [sp, #4]	@ ptr, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	r6, [r8, #3324]	@ D.40869, pCtx_14(D)->Mp4DecParam.SlcNum
	ldr	r1, [sp, #4]	@ ptr, %sfp
	b	.L648	@
.L664:
	add	fp, r7, #16384	@ tmp471, pCtx,
	mov	r2, #1	@ tmp290,
	strb	r2, [r5, #1561]	@ tmp290, pCtx_14(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #12	@ tmp495,,
	ldr	r3, [fp, #3584]	@ pCtx_14(D)->PicIntegrality, pCtx_14(D)->PicIntegrality
	orr	r3, r3, #2	@ D.40869, pCtx_14(D)->PicIntegrality,
	str	r3, [fp, #3584]	@ D.40869, pCtx_14(D)->PicIntegrality
	ldr	r3, [r8, #3324]	@ pCtx_14(D)->Mp4DecParam.SlcNum, pCtx_14(D)->Mp4DecParam.SlcNum
	add	r3, r3, r2	@ D.40869, pCtx_14(D)->Mp4DecParam.SlcNum,
	str	r3, [r8, #3324]	@ D.40869, pCtx_14(D)->Mp4DecParam.SlcNum
	strb	r2, [r5, #736]	@ tmp290, pCtx_14(D)->MP4Vop.vop_fcode_forward
	bl	BsPos	@
	mov	r3, r6, asl #2	@ tmp475, D.40869,
	mov	r6, r6, asl #5	@ tmp476, D.40869,
	mov	r2, r0, asr #31	@ tmp324, BitUsed,
	mov	r9, r0	@ BitUsed,
	rsb	r0, r3, r6	@ tmp312, tmp475, tmp476
	rsb	r4, r9, r10	@ D.40870, BitUsed, D.40870
	add	r0, r7, r0	@ tmp313, pCtx, tmp312
	mov	r2, r2, lsr #29	@ tmp325, tmp324,
	add	r1, r9, r2	@ tmp326, BitUsed, tmp325
	cmp	r9, #0	@ BitUsed,
	and	r1, r1, #7	@ tmp327, tmp326,
	str	r4, [r0, #1284]	@ D.40870, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].bit_len
	ldr	lr, [r5, #1576]	@ pCtx_14(D)->BitsObj.offset, pCtx_14(D)->BitsObj.offset
	rsb	r2, r2, r1	@ D.40870, tmp325, tmp327
	add	ip, r9, #7	@ tmp345, BitUsed,
	movge	r1, r9	@ BitUsed, BitUsed
	add	r2, r2, lr	@ tmp334, D.40870, pCtx_14(D)->BitsObj.offset
	strb	r2, [r0, #1282]	@ tmp334, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].bit_offset
	ldr	r2, [r5, #1568]	@ pCtx_14(D)->BitsObj.phy_addr, pCtx_14(D)->BitsObj.phy_addr
	movlt	r1, ip	@ BitUsed, tmp345
	add	r2, r2, r1, asr #3	@ D.40869, pCtx_14(D)->BitsObj.phy_addr, BitUsed,
	str	r2, [r0, #1292]	@ D.40869, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].phy_address
	ldrb	r2, [r8, #3421]	@ zero_extendqisi2	@ pCtx_14(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_14(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r2, #0	@ pCtx_14(D)->stCurPacket.StreamPack[0].IsLastSeg,
	beq	.L687	@,
.L665:
	rsb	r2, r3, r6	@ tmp390, tmp475, tmp476
	mov	r1, #0	@ tmp394,
	add	r2, r7, r2	@ tmp391, pCtx, tmp390
	add	ip, r2, #1280	@ tmp393, tmp391,
	add	r0, r2, #1264	@ tmp401, tmp391,
	str	r1, [ip, #8]	@ tmp394, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].bit_len
	strb	r1, [r0, #19]	@ tmp394, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].bit_offset
	str	r1, [ip, #16]	@ tmp394, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].phy_address
.L666:
	ldrb	r2, [r5, #728]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.vop_coding_type, pCtx_14(D)->MP4Vop.vop_coding_type
	rsb	r6, r3, r6	@ tmp415, tmp475, tmp476
	add	r3, r7, r6	@ tmp416, pCtx, tmp415
	strb	r2, [r3, #1280]	@ pCtx_14(D)->MP4Vop.vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].vop_coding_type
	ldrb	r2, [r5, #737]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.vop_fcode_backward, pCtx_14(D)->MP4Vop.vop_fcode_backward
	strb	r2, [r3, #1278]	@ pCtx_14(D)->MP4Vop.vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].vop_fcode_backward
	ldrb	r2, [r5, #736]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.vop_fcode_forward, pCtx_14(D)->MP4Vop.vop_fcode_forward
	strb	r2, [r3, #1277]	@ pCtx_14(D)->MP4Vop.vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].vop_fcode_forward
	ldrb	r2, [r5, #735]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.vop_quant, pCtx_14(D)->MP4Vop.vop_quant
	strb	r2, [r3, #1281]	@ pCtx_14(D)->MP4Vop.vop_quant, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].vop_quant
	ldrb	r2, [r5, #732]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.intra_dc_vlc_thr, pCtx_14(D)->MP4Vop.intra_dc_vlc_thr
	strb	r2, [r3, #1279]	@ pCtx_14(D)->MP4Vop.intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].intra_dc_vlc_thr
	ldr	r3, [fp, #3580]	@ pCtx_14(D)->StreamIDNum, pCtx_14(D)->StreamIDNum
	cmp	r3, #0	@ pCtx_14(D)->StreamIDNum,
	bne	.L688	@,
.L667:
	mov	r0, r7	@, pCtx
	bl	MP4_Record_SlcSegID	@
	mov	r0, r9	@ D.40867, BitUsed
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L657:
	add	r0, sp, #12	@ tmp486,,
	bl	BsPos	@
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L649:
	mov	r4, #0	@ tmp240,
	add	r0, sp, #12	@ tmp484,,
	strb	r4, [r5, #1561]	@ tmp240, pCtx_14(D)->MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	ldr	r3, .L689	@ tmp243,
	ldr	r3, [r3]	@ D.40872, g_event_report
	cmp	r3, r4	@ D.40872,
	mov	r9, r0	@ BitUsed,
	beq	.L670	@,
	mov	r2, r4	@, tmp240
	ldr	r0, [r5, #2480]	@, pCtx_14(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.40872
	mov	r0, r9	@ D.40867, BitUsed
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L687:
	ldrb	r1, [r8, #3501]	@ zero_extendqisi2	@ pCtx_14(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_14(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r1, #1	@ pCtx_14(D)->stCurPacket.StreamPack[1].IsLastSeg,
	bne	.L665	@,
	ldr	r1, [r8, #3508]	@ pCtx_14(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_14(D)->stCurPacket.StreamPack[1].LenInByte
	strb	r2, [r0, #1283]	@ pCtx_14(D)->stCurPacket.StreamPack[0].IsLastSeg, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].bit_offset
	mov	r2, r1, asl #3	@ D.40869, pCtx_14(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r2, [r0, #1288]	@ D.40869, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].bit_len
	ldr	r2, [r8, #3504]	@ pCtx_14(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_14(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r2, [r0, #1296]	@ pCtx_14(D)->stCurPacket.StreamPack[1].PhyAddr, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_141].phy_address
	b	.L666	@
.L688:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L667	@
.L670:
	mov	r0, r9	@ D.40867, BitUsed
	b	.L681	@
.L686:
	bl	BsPos	@
	b	.L681	@
.L690:
	.align	2
.L689:
	.word	g_event_report
	.fnend
	.size	Mp4_Syntax_ShortHeader, .-Mp4_Syntax_ShortHeader
	.align	2
	.global	Mp4_Syntax_Vop
	.type	Mp4_Syntax_Vop, %function
Mp4_Syntax_Vop:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r7, r0, #12288	@ tmp565, pCtx,
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r3, [r7, #3324]	@ pCtx_31(D)->Mp4DecParam.SlcNum, pCtx_31(D)->Mp4DecParam.SlcNum
	mov	r9, r1	@ ptr, ptr
	mov	r6, r2	@ len, len
	cmp	r3, #0	@ pCtx_31(D)->Mp4DecParam.SlcNum,
	bne	.L773	@,
	add	r4, r5, #20480	@ tmp568, pCtx,
	ldrb	r3, [r4, #789]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.vol_decode_over, pCtx_31(D)->MP4Syntax.vol_decode_over
	cmp	r3, #0	@ pCtx_31(D)->MP4Syntax.vol_decode_over,
	bne	.L693	@,
.L774:
	mov	r0, #32	@ D.40886,
	strb	r3, [r4, #1561]	@ pCtx_31(D)->MP4Syntax.vol_decode_over, pCtx_31(D)->MP4SyntaxState.vop_decode_right
.L694:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L773:
	add	r4, r5, #20480	@ tmp568, pCtx,
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ tmp248,
	str	r3, [r7, #3324]	@ tmp248, pCtx_31(D)->Mp4DecParam.SlcNum
	ldrb	r3, [r4, #789]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.vol_decode_over, pCtx_31(D)->MP4Syntax.vol_decode_over
	cmp	r3, #0	@ pCtx_31(D)->MP4Syntax.vol_decode_over,
	beq	.L774	@,
.L693:
	add	r8, r5, #20992	@ __p, pCtx,
	mov	r2, r6	@, len
	add	r8, r8, #216	@ __p, __p,
	mov	r1, r9	@, ptr
	add	r0, sp, #20	@ tmp589,,
	bl	BsInit	@
	mov	r0, r8	@, __p
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r3, #0	@ tmp260,
	mov	r1, #32	@,
	strb	r3, [r4, #1561]	@ tmp260, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp590,,
	bl	BsSkip	@
	mov	r1, #2	@,
	add	r0, sp, #20	@ tmp591,,
	bl	BsGet	@
	strb	r0, [r4, #728]	@, pCtx_31(D)->MP4Vop.vop_coding_type
	bl	vfmw_dprint_nothing	@
	ldrb	r9, [r4, #728]	@ zero_extendqisi2	@ D.40890, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r9, #3	@ D.40890,
	beq	.L775	@,
.L695:
	adds	r9, r9, #0	@ D.40888, D.40890,
	ldrb	r3, [r4, #795]	@ zero_extendqisi2	@ D.40890, pCtx_31(D)->MP4Syntax.coding_mode
	movne	r9, #1	@ D.40888,
	cmp	r3, #1	@ D.40890,
	movne	r2, #0	@, tmp289
	andeq	r2, r9, #1	@,, tmp289, D.40888
	cmp	r2, #0	@ tmp289,
	bne	.L698	@,
	cmp	r3, #2	@ D.40890,
	beq	.L698	@,
	ldr	r3, [r4, #2120]	@ pCtx_31(D)->IPVopErr, pCtx_31(D)->IPVopErr
	cmp	r3, #1	@ pCtx_31(D)->IPVopErr,
	movne	r9, #0	@, tmp298
	andeq	r9, r9, #1	@,, tmp298, D.40888
	cmp	r9, #0	@ tmp298,
	bne	.L698	@,
	mov	r6, r6, asl #3	@ D.40891, len,
	b	.L701	@
.L777:
	bl	BsPos	@
	add	r9, r9, #1	@ time_incr, time_incr,
	cmp	r0, r6	@, D.40891
	bgt	.L776	@,
	cmp	r9, #6400	@ time_incr,
	beq	.L702	@,
.L701:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp594,,
	bl	BsGet	@
	cmp	r0, #0	@,
	add	r0, sp, #20	@ tmp595,,
	bne	.L777	@,
	cmp	r9, #6400	@ time_incr,
	bcs	.L702	@,
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp598,,
	bl	BsGet	@
	subs	r10, r0, #0	@ D.40891,
	beq	.L778	@,
	ldr	r1, [r4, #896]	@ D.40889, pCtx_31(D)->MP4Syntax.syn_vol.vop_time_incr_bits
	cmp	r1, #0	@ D.40889,
	moveq	r0, r1	@ time_increment, D.40889
	bne	.L779	@,
.L704:
	str	r9, [r4, #1500]	@ time_incr, pCtx_31(D)->MP4Syntax.time_incr
	mov	r1, #1	@,
	str	r0, [r4, #1504]	@ time_increment, pCtx_31(D)->MP4Syntax.time_increment
	add	r0, sp, #20	@ tmp601,,
	bl	BsGet	@
	subs	r9, r0, #0	@ D.40891,
	bne	.L705	@,
	bl	vfmw_dprint_nothing	@
	strb	r9, [r4, #1561]	@ D.40891, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp602,,
	bl	BsPos	@
	ldr	r3, .L788	@ tmp330,
	ldr	r3, [r3]	@ D.40892, g_event_report
	cmp	r3, #0	@ D.40892,
	mov	r5, r0	@ BitUsed,
	beq	.L731	@,
	mov	r2, r9	@, D.40891
	ldr	r0, [r4, #2480]	@, pCtx_31(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.40892
	mov	r0, r5	@ D.40886, BitUsed
	b	.L694	@
.L702:
	mov	r3, #0	@ tmp304,
	add	r0, sp, #20	@ tmp597,,
	strb	r3, [r4, #1561]	@ tmp304, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r4, r0	@ BitUsed,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.40886, BitUsed
	b	.L694	@
.L776:
	add	r0, sp, #20	@ tmp596,,
	bl	BsPos	@
	mov	r4, r0	@ BitUsed,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.40886, BitUsed
	b	.L694	@
.L775:
	ldr	r3, .L788+4	@ tmp269,
	ldr	r2, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r10, r2, #8	@ D.40891, g_VdmCharacter,
	bne	.L695	@,
.L770:
	strb	r10, [r4, #1561]	@ D.40890, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp623,,
	bl	BsPos	@
	ldr	r3, .L788	@ tmp474,
	ldr	r3, [r3]	@ D.40892, g_event_report
	cmp	r3, #0	@ D.40892,
	mov	r5, r0	@ BitUsed,
	beq	.L725	@,
	mov	r2, r10	@, D.40890
	ldr	r0, [r4, #2480]	@, pCtx_31(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.40892
.L725:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.40886, BitUsed
	b	.L694	@
.L698:
	add	r0, sp, #20	@ tmp593,,
	bl	BsPos	@
	b	.L694	@
.L705:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp603,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40890,
	strb	r0, [r4, #729]	@ D.40890, pCtx_31(D)->MP4Vop.vop_coded
	cmp	r0, #0	@ D.40890,
	beq	.L780	@,
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ D.40890, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r3, #1	@ D.40890,
	beq	.L707	@,
	cmp	r3, #3	@ D.40890,
	beq	.L781	@,
.L708:
	mov	r3, #0	@ tmp368,
	strb	r3, [r4, #730]	@ tmp368, pCtx_31(D)->MP4Vop.vop_rounding_type
.L709:
	ldrb	r3, [r4, #836]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.syn_vol.video_object_layer_shape, pCtx_31(D)->MP4Syntax.syn_vol.video_object_layer_shape
	mov	r2, #0	@ tmp372,
	strb	r2, [r4, #731]	@ tmp372, pCtx_31(D)->MP4Vop.vop_reduced_resolution
	cmp	r3, #2	@ pCtx_31(D)->MP4Syntax.syn_vol.video_object_layer_shape,
	addeq	r9, r5, #16384	@ tmp566, pCtx,
	beq	.L710	@,
	mov	r1, #3	@,
	add	r0, sp, #20	@ tmp606,,
	bl	BsGet	@
	add	r9, r5, #16384	@ tmp566, pCtx,
	strb	r0, [r4, #732]	@, pCtx_31(D)->MP4Vop.intra_dc_vlc_thr
	ldrb	r3, [r9, #3626]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vol.interlaced, pCtx_31(D)->MP4Vol.interlaced
	cmp	r3, #0	@ pCtx_31(D)->MP4Vol.interlaced,
	streqb	r3, [r4, #734]	@ pCtx_31(D)->MP4Vol.interlaced, pCtx_31(D)->MP4Vop.alternate_vertical_scan_flag
	moveq	r3, #2	@ tmp394,
	streqb	r3, [r4, #733]	@ tmp394, pCtx_31(D)->MP4Vop.top_field_first
	bne	.L782	@,
.L712:
	ldrb	r3, [r4, #840]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable, pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable
	sub	r3, r3, #1	@ tmp405, pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable,
	cmp	r3, #1	@ tmp405,
	bls	.L713	@,
.L716:
	mov	r1, #5	@,
	add	r0, sp, #20	@ tmp609,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40890,
	cmp	r0, #0	@ D.40890,
	moveq	r3, #1	@ tmp445,
	streqb	r3, [r4, #735]	@ tmp445, pCtx_31(D)->MP4Vop.vop_quant
	strneb	r0, [r4, #735]	@ D.40890, pCtx_31(D)->MP4Vop.vop_quant
.L722:
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_coding_type, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r3, #0	@ pCtx_31(D)->MP4Vop.vop_coding_type,
	bne	.L783	@,
.L710:
	mov	r3, #1	@ tmp479,
	strb	r3, [r4, #1561]	@ tmp479, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	ldr	r3, [r9, #3584]	@ pCtx_31(D)->PicIntegrality, pCtx_31(D)->PicIntegrality
	add	r0, r5, #21760	@, pCtx,
	mov	r1, r8	@, __p
	mov	r2, #60	@,
	orr	r3, r3, #2	@ D.40889, pCtx_31(D)->PicIntegrality,
	str	r3, [r9, #3584]	@ D.40889, pCtx_31(D)->PicIntegrality
	ldr	r3, [r7, #3324]	@ pCtx_31(D)->Mp4DecParam.SlcNum, pCtx_31(D)->Mp4DecParam.SlcNum
	add	r0, r0, #152	@,,
	add	r3, r3, #1	@ D.40889, pCtx_31(D)->Mp4DecParam.SlcNum,
	str	r3, [r7, #3324]	@ D.40889, pCtx_31(D)->Mp4DecParam.SlcNum
	bl	memcpy	@
	add	r0, sp, #20	@ tmp624,,
	bl	BsPos	@
	mov	r3, r0, asr #31	@ tmp502, BitUsed,
	mov	r8, r0	@ BitUsed,
	add	r1, r0, #7	@ tmp516, BitUsed,
	rsb	r6, r0, r6	@ D.40891, BitUsed, D.40891
	mov	r3, r3, lsr #29	@ tmp503, tmp502,
	str	r6, [r5, #1284]	@ D.40891, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_len
	add	r2, r8, r3	@ tmp504, BitUsed, tmp503
	ldr	r0, [r4, #1576]	@ pCtx_31(D)->BitsObj.offset, pCtx_31(D)->BitsObj.offset
	and	r2, r2, #7	@ tmp505, tmp504,
	cmp	r8, #0	@ BitUsed,
	rsb	r3, r3, r2	@ D.40891, tmp503, tmp505
	add	r3, r3, r0	@ tmp512, D.40891, pCtx_31(D)->BitsObj.offset
	strb	r3, [r5, #1282]	@ tmp512, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_offset
	ldr	r3, [r4, #1568]	@ pCtx_31(D)->BitsObj.phy_addr, pCtx_31(D)->BitsObj.phy_addr
	movge	r1, r8	@ BitUsed, BitUsed
	add	r3, r3, r1, asr #3	@ D.40889, pCtx_31(D)->BitsObj.phy_addr, BitUsed,
	str	r3, [r5, #1292]	@ D.40889, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].phy_address
	ldrb	r3, [r7, #3421]	@ zero_extendqisi2	@ pCtx_31(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_31(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_31(D)->stCurPacket.StreamPack[0].IsLastSeg,
	bne	.L726	@,
	ldrb	r2, [r7, #3501]	@ zero_extendqisi2	@ pCtx_31(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_31(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_31(D)->stCurPacket.StreamPack[1].IsLastSeg,
	beq	.L784	@,
.L726:
	mov	r3, #0	@ tmp537,
	str	r3, [r5, #1288]	@ tmp537, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_len
	strb	r3, [r5, #1283]	@ tmp537, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_offset
	str	r3, [r5, #1296]	@ tmp537, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].phy_address
.L727:
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_coding_type, pCtx_31(D)->MP4Vop.vop_coding_type
	strb	r3, [r5, #1280]	@ pCtx_31(D)->MP4Vop.vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].vop_coding_type
	ldrb	r3, [r4, #737]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_fcode_backward, pCtx_31(D)->MP4Vop.vop_fcode_backward
	strb	r3, [r5, #1278]	@ pCtx_31(D)->MP4Vop.vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].vop_fcode_backward
	ldrb	r3, [r4, #736]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_fcode_forward, pCtx_31(D)->MP4Vop.vop_fcode_forward
	strb	r3, [r5, #1277]	@ pCtx_31(D)->MP4Vop.vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].vop_fcode_forward
	ldrb	r3, [r4, #735]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_quant, pCtx_31(D)->MP4Vop.vop_quant
	strb	r3, [r5, #1281]	@ pCtx_31(D)->MP4Vop.vop_quant, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].vop_quant
	ldrb	r3, [r4, #732]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.intra_dc_vlc_thr, pCtx_31(D)->MP4Vop.intra_dc_vlc_thr
	strb	r3, [r5, #1279]	@ pCtx_31(D)->MP4Vop.intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].intra_dc_vlc_thr
	ldr	r3, [r9, #3580]	@ pCtx_31(D)->StreamIDNum, pCtx_31(D)->StreamIDNum
	cmp	r3, #0	@ pCtx_31(D)->StreamIDNum,
	bne	.L785	@,
.L728:
	mov	r0, r5	@, pCtx
	bl	MP4_Record_SlcSegID	@
	mov	r0, r8	@ D.40886, BitUsed
	b	.L694	@
.L778:
	bl	vfmw_dprint_nothing	@
	strb	r10, [r4, #1561]	@ D.40891, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp599,,
	bl	BsPos	@
	ldr	r3, .L788	@ tmp313,
	ldr	r3, [r3]	@ D.40892, g_event_report
	cmp	r3, #0	@ D.40892,
	mov	r5, r0	@ BitUsed,
	beq	.L731	@,
	mov	r2, r10	@, D.40891
	ldr	r0, [r4, #2480]	@, pCtx_31(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.40892
	mov	r0, r5	@ D.40886, BitUsed
	b	.L694	@
.L779:
	add	r0, sp, #20	@ tmp600,,
	bl	BsGet	@
	b	.L704	@
.L731:
	mov	r0, r5	@ D.40886, BitUsed
	b	.L694	@
.L785:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L728	@
.L780:
	add	r5, r5, #16384	@ tmp351, pCtx,
	mov	r3, #4	@ tmp340,
	mov	r2, #1	@ tmp344,
	strb	r3, [r4, #728]	@ tmp340, pCtx_31(D)->MP4Vop.vop_coding_type
	strb	r3, [r4, #1432]	@ tmp340, pCtx_31(D)->MP4Syntax.syn_vop.vop_coding_type
	add	r0, sp, #20	@ tmp604,,
	strb	r2, [r4, #1561]	@ tmp344, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	ldr	r3, [r5, #3584]	@ pCtx_31(D)->PicIntegrality, pCtx_31(D)->PicIntegrality
	orr	r3, r3, #128	@ D.40889, pCtx_31(D)->PicIntegrality,
	str	r3, [r5, #3584]	@ D.40889, pCtx_31(D)->PicIntegrality
	bl	BsPos	@
	b	.L694	@
.L781:
	ldrb	r3, [r4, #840]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable, pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable
	cmp	r3, #2	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable,
	bne	.L708	@,
.L707:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp605,,
	bl	BsGet	@
	strb	r0, [r4, #730]	@, pCtx_31(D)->MP4Vop.vop_rounding_type
	b	.L709	@
.L783:
	mov	r1, #3	@,
	add	r0, sp, #20	@ tmp620,,
	bl	BsGet	@
	uxtb	r10, r0	@ D.40890,
	strb	r10, [r4, #736]	@ D.40890, pCtx_31(D)->MP4Vop.vop_fcode_forward
	cmp	r10, #0	@ D.40890,
	beq	.L770	@,
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_coding_type, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r3, #2	@ pCtx_31(D)->MP4Vop.vop_coding_type,
	bne	.L710	@,
	mov	r1, #3	@,
	add	r0, sp, #20	@ tmp622,,
	bl	BsGet	@
	uxtb	r10, r0	@ D.40890,
	strb	r10, [r4, #737]	@ D.40890, pCtx_31(D)->MP4Vop.vop_fcode_backward
	cmp	r10, #0	@ D.40890,
	bne	.L710	@,
	b	.L770	@
.L782:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp607,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #733]	@, pCtx_31(D)->MP4Vop.top_field_first
	add	r0, sp, #20	@ tmp608,,
	bl	BsGet	@
	strb	r0, [r4, #734]	@, pCtx_31(D)->MP4Vop.alternate_vertical_scan_flag
	b	.L712	@
.L713:
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_coding_type, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r3, #3	@ pCtx_31(D)->MP4Vop.vop_coding_type,
	bne	.L716	@,
	ldrb	r3, [r4, #852]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_warping_points, pCtx_31(D)->MP4Syntax.syn_vol.sprite_warping_points
	cmp	r3, #0	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_warping_points,
	beq	.L716	@,
	add	fp, r5, #20992	@ ivtmp.452, pCtx,
	mov	r3, #0	@ i,
	str	r8, [sp, #4]	@ __p, %sfp
	add	fp, fp, #252	@ ivtmp.452, ivtmp.452,
	mov	r8, r3	@ i, i
	str	r5, [sp, #8]	@ pCtx, %sfp
	b	.L721	@
.L717:
	ldr	r3, [r4, #1536]	@ pCtx_31(D)->MP4Syntax.divx_version, pCtx_31(D)->MP4Syntax.divx_version
	cmp	r3, #500	@ pCtx_31(D)->MP4Syntax.divx_version,
	bne	.L718	@,
	ldr	r3, [r4, #1540]	@ pCtx_31(D)->MP4Syntax.divx_build, pCtx_31(D)->MP4Syntax.divx_build
	movw	r2, #413	@ tmp614,
	cmp	r3, r2	@ pCtx_31(D)->MP4Syntax.divx_build, tmp614
	beq	.L719	@,
.L718:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp615,,
	bl	BsSkip	@
.L719:
	add	r0, sp, #20	@ tmp616,,
	bl	bs_get_spritetrajectory	@
	subs	r3, r0, #0	@ length,
	moveq	r5, r3	@ y, length
	bne	.L786	@,
.L720:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp619,,
	bl	BsSkip	@
	str	r10, [fp]	@ x, MEM[base: _198, offset: 0B]
	str	r5, [fp, #4]	@ y, MEM[base: _198, offset: 4B]
	add	r8, r8, #1	@ i, i,
	ldrb	r3, [r4, #852]	@ zero_extendqisi2	@ D.40889, pCtx_31(D)->MP4Syntax.syn_vol.sprite_warping_points
	add	fp, fp, #8	@ ivtmp.452, ivtmp.452,
	cmp	r3, r8	@ D.40889, i
	bls	.L787	@,
.L721:
	add	r0, sp, #20	@ tmp611,,
	bl	bs_get_spritetrajectory	@
	subs	r5, r0, #0	@ length,
	moveq	r10, r5	@ x, length
	beq	.L717	@,
	mov	r1, r5	@, length
	add	r0, sp, #20	@ tmp612,,
	bl	BsGet	@
	sub	r2, r5, #1	@ D.40889, length,
	movs	r3, r0, asr r2	@ tmp587, x,
	mov	r10, r0	@ x,
	moveq	r3, #1	@ tmp613,
	moveq	r3, r3, asl r5	@ D.40891, tmp613,
	subeq	r3, r3, #1	@ D.40891, D.40891,
	eoreq	r10, r10, r3	@ D.40891, x, D.40891
	rsbeq	r10, r10, #0	@ x, D.40891
	b	.L717	@
.L786:
	mov	r1, r3	@, length
	add	r0, sp, #20	@ tmp617,,
	str	r3, [sp, #12]	@ length, %sfp
	bl	BsGet	@
	ldr	r3, [sp, #12]	@ length, %sfp
	mov	r5, r0	@ y,
	sub	r2, r3, #1	@ D.40889, length,
	movs	r2, r0, asr r2	@ tmp588, y,
	moveq	r2, #1	@ tmp618,
	moveq	r3, r2, asl r3	@ D.40891, tmp618,
	subeq	r2, r3, #1	@ D.40891, D.40891,
	eoreq	r3, r0, r2	@ D.40891, y, D.40891
	rsbeq	r5, r3, #0	@ y, D.40891
	b	.L720	@
.L784:
	ldr	r2, [r7, #3508]	@ pCtx_31(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_31(D)->stCurPacket.StreamPack[1].LenInByte
	strb	r3, [r5, #1283]	@ pCtx_31(D)->stCurPacket.StreamPack[0].IsLastSeg, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_offset
	mov	r3, r2, asl #3	@ D.40889, pCtx_31(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r3, [r5, #1288]	@ D.40889, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_len
	ldr	r3, [r7, #3504]	@ pCtx_31(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_31(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r3, [r5, #1296]	@ pCtx_31(D)->stCurPacket.StreamPack[1].PhyAddr, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].phy_address
	b	.L727	@
.L787:
	ldr	r8, [sp, #4]	@ __p, %sfp
	ldr	r5, [sp, #8]	@ pCtx, %sfp
	b	.L716	@
.L789:
	.align	2
.L788:
	.word	g_event_report
	.word	g_VdmCharacter
	.fnend
	.size	Mp4_Syntax_Vop, .-Mp4_Syntax_Vop
	.align	2
	.global	Mp4_Syntax_Slice_NotSH
	.type	Mp4_Syntax_Slice_NotSH, %function
Mp4_Syntax_Slice_NotSH:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r7, r0, #12288	@ tmp449, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #510	@ tmp184,
	ldr	r10, [r7, #3324]	@ D.40904, pCtx_9(D)->Mp4DecParam.SlcNum
	.pad #44
	sub	sp, sp, #44	@,,
	sub	r0, r10, #1	@ D.40904, D.40904,
	cmp	r0, r3	@ D.40904, tmp184
	bhi	.L812	@,
	movw	r3, #3576	@ tmp205,
	add	r0, sp, #12	@ tmp457,,
	ldrh	r5, [r7, r3]	@ *pCtx_9(D), *pCtx_9(D)
	add	r3, r10, #1	@ D.40904, D.40904,
	str	r3, [r7, #3324]	@ D.40904, pCtx_9(D)->Mp4DecParam.SlcNum
	mov	r8, r2	@ len, len
	bl	BsInit	@
	ubfx	r5, r5, #7, #4	@ D.40905, *pCtx_9(D),,
	add	r5, r5, #17	@ D.40905, D.40905,
	add	r6, r4, #20480	@ tmp451, pCtx,
	mov	r1, r5	@, D.40905
	add	r0, sp, #12	@ tmp458,,
	bl	BsSkip	@
	ldr	r3, [r6, #1492]	@ pCtx_9(D)->MP4Syntax.image_height, pCtx_9(D)->MP4Syntax.image_height
	ldr	r9, [r6, #1496]	@ pCtx_9(D)->MP4Syntax.image_width, pCtx_9(D)->MP4Syntax.image_width
	add	r3, r3, #15	@ D.40904, pCtx_9(D)->MP4Syntax.image_height,
	add	r9, r9, #15	@ D.40904, pCtx_9(D)->MP4Syntax.image_width,
	mov	r3, r3, lsr #4	@ HeightInMb, D.40904,
	mov	r9, r9, lsr #4	@ WidthInMb, D.40904,
	mul	r9, r9, r3	@ MbCnt, WidthInMb, HeightInMb
	cmp	r9, #0	@ MbCnt,
	beq	.L793	@,
	mov	ip, r9	@ MbCnt, MbCnt
	mov	r1, #0	@ n,
.L794:
	add	r3, r1, #1	@ tmp224, n,
	movs	ip, ip, lsr #1	@ MbCnt, MbCnt,
	uxth	r1, r3	@ n, tmp224
	bne	.L794	@,
	sxth	r1, r1	@, n
	add	r0, sp, #12	@ tmp459,,
	bl	BsGet	@
	mov	r5, r10, asl #2	@ tmp453, D.40904,
	mov	r10, r10, asl #5	@ tmp454, D.40904,
	sub	r9, r9, #1	@ D.40904, MbCnt,
	rsb	r3, r5, r10	@ tmp230, tmp453, tmp454
	add	r3, r4, r3	@ tmp231, pCtx, tmp230
	cmp	r0, r9	@ D.40905, D.40904
	str	r0, [r3, #1300]	@ D.40905, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].mb_start_num
	bhi	.L813	@,
.L795:
	mov	r1, #5	@,
	add	r0, sp, #12	@ tmp460,,
	bl	BsGet	@
	rsb	r9, r5, r10	@ tmp238, tmp453, tmp454
	add	r9, r4, r9	@ tmp239, pCtx, tmp238
	mov	r1, #1	@,
	add	r9, r9, #1264	@ tmp241, tmp239,
	add	r9, r9, #8	@ tmp241, tmp241,
	strb	r0, [r9, #9]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_quant
	add	r0, sp, #12	@ tmp461,,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L796	@,
.L806:
	mov	r1, #1	@,
	add	r0, sp, #12	@ tmp462,,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L806	@,
	mov	r1, #1	@,
	add	r0, sp, #12	@ tmp463,,
	add	r3, r4, #16384	@ tmp450, pCtx,
	str	r3, [sp, #4]	@ tmp450, %sfp
	bl	BsSkip	@
	ldr	r3, [sp, #4]	@ tmp450, %sfp
	ldr	r1, [r3, #3684]	@ D.40904, pCtx_9(D)->MP4Vol.vop_time_incr_bits
	cmp	r1, #0	@ D.40904,
	bne	.L814	@,
.L798:
	mov	r1, #1	@,
	add	r0, sp, #12	@ tmp465,,
	str	r3, [sp, #4]	@ tmp450, %sfp
	bl	BsSkip	@
	mov	r1, #2	@,
	rsb	r9, r5, r10	@ tmp254, tmp453, tmp454
	add	r9, r4, r9	@ tmp255, pCtx, tmp254
	add	r9, r9, #1264	@ tmp257, tmp255,
	add	r0, sp, #12	@ tmp466,,
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r9, #16]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type
	add	r0, sp, #12	@ tmp467,,
	bl	BsGet	@
	ldrb	r2, [r9, #16]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type
	cmp	r2, #0	@ MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type,
	strb	r0, [r9, #15]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].intra_dc_vlc_thr
	add	r9, r9, #8	@ tmp257, tmp257,
	ldr	r3, [sp, #4]	@ tmp450, %sfp
	bne	.L815	@,
.L800:
	ldrb	r2, [r6, #736]	@ zero_extendqisi2	@ pCtx_9(D)->MP4Vop.vop_fcode_forward, pCtx_9(D)->MP4Vop.vop_fcode_forward
	rsb	fp, r5, r10	@ tmp311, tmp453, tmp454
	add	fp, r4, fp	@ tmp312, pCtx, tmp311
	add	r0, sp, #12	@ tmp470,,
	add	r1, fp, #1264	@ tmp314, tmp312,
	strb	r2, [fp, #1277]	@ pCtx_9(D)->MP4Vop.vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_fcode_forward
	add	r1, r1, #8	@ tmp314, tmp314,
	ldrb	r2, [r6, #737]	@ zero_extendqisi2	@ pCtx_9(D)->MP4Vop.vop_fcode_backward, pCtx_9(D)->MP4Vop.vop_fcode_backward
	str	r1, [sp, #4]	@ tmp314, %sfp
	strb	r2, [fp, #1278]	@ pCtx_9(D)->MP4Vop.vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_fcode_backward
	ldr	r2, [r3, #3584]	@ pCtx_9(D)->PicIntegrality, pCtx_9(D)->PicIntegrality
	orr	r2, r2, #16	@ D.40904, pCtx_9(D)->PicIntegrality,
	str	r2, [r3, #3584]	@ D.40904, pCtx_9(D)->PicIntegrality
	bl	BsPos	@
	mov	r3, r0, asr #31	@ tmp353, BitUsed,
	mov	r9, r0	@ BitUsed,
	ldr	r1, [sp, #4]	@ tmp314, %sfp
	rsb	r8, r0, r8, lsl #3	@ D.40905, BitUsed, len,
	mov	r3, r3, lsr #29	@ tmp354, tmp353,
	str	r8, [fp, #1284]	@ D.40905, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_len
	add	r2, r9, r3	@ tmp355, BitUsed, tmp354
	ldr	ip, [r6, #1576]	@ pCtx_9(D)->BitsObj.offset, pCtx_9(D)->BitsObj.offset
	and	r2, r2, #7	@ tmp356, tmp355,
	cmp	r9, #0	@ BitUsed,
	rsb	r3, r3, r2	@ D.40905, tmp354, tmp356
	add	r0, r0, #7	@ tmp374, BitUsed,
	add	r3, r3, ip	@ tmp363, D.40905, pCtx_9(D)->BitsObj.offset
	strb	r3, [r1, #10]	@ tmp363, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_offset
	ldr	r3, [r6, #1568]	@ pCtx_9(D)->BitsObj.phy_addr, pCtx_9(D)->BitsObj.phy_addr
	movge	r0, r9	@ BitUsed, BitUsed
	add	r3, r3, r0, asr #3	@ D.40904, pCtx_9(D)->BitsObj.phy_addr, BitUsed,
	str	r3, [fp, #1292]	@ D.40904, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].phy_address
	ldrb	r3, [r7, #3421]	@ zero_extendqisi2	@ pCtx_9(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_9(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_9(D)->stCurPacket.StreamPack[0].IsLastSeg,
	bne	.L802	@,
	ldrb	r2, [r7, #3501]	@ zero_extendqisi2	@ pCtx_9(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_9(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_9(D)->stCurPacket.StreamPack[1].IsLastSeg,
	beq	.L816	@,
.L802:
	rsb	r5, r5, r10	@ tmp419, tmp453, tmp454
	mov	r3, #0	@ tmp423,
	add	r5, r4, r5	@ tmp420, pCtx, tmp419
	add	r1, r5, #1280	@ tmp422, tmp420,
	add	r2, r5, #1264	@ tmp430, tmp420,
	str	r3, [r1, #8]	@ tmp423, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_len
	mov	r5, r1	@ tmp439, tmp422
	strb	r3, [r2, #19]	@ tmp423, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_offset
	str	r3, [r5, #16]	@ tmp423, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].phy_address
.L803:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	mov	r0, r9	@ D.40903, BitUsed
.L810:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L796:
	ldrb	r2, [r6, #728]	@ zero_extendqisi2	@ pCtx_9(D)->MP4Vop.vop_coding_type, pCtx_9(D)->MP4Vop.vop_coding_type
	add	r3, r4, #16384	@ tmp450, pCtx,
	strb	r2, [r9, #8]	@ pCtx_9(D)->MP4Vop.vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type
	ldrb	r2, [r6, #732]	@ zero_extendqisi2	@ pCtx_9(D)->MP4Vop.intra_dc_vlc_thr, pCtx_9(D)->MP4Vop.intra_dc_vlc_thr
	strb	r2, [r9, #7]	@ pCtx_9(D)->MP4Vop.intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].intra_dc_vlc_thr
	b	.L800	@
.L812:
	add	r3, r4, #20480	@ tmp188, pCtx,
	add	r1, r4, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r3, #2480]	@, pCtx_9(D)->ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	add	r4, r4, #16384	@ tmp191, pCtx,
	bl	MP4_ClearCurPic	@
	ldr	r3, [r4, #3584]	@ pCtx_9(D)->PicIntegrality, pCtx_9(D)->PicIntegrality
	bic	r3, r3, #178	@ D.40904, pCtx_9(D)->PicIntegrality,
	str	r3, [r4, #3584]	@ D.40904, pCtx_9(D)->PicIntegrality
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40903,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L814:
	add	r0, sp, #12	@ tmp464,,
	bl	BsSkip	@
	ldr	r3, [sp, #4]	@ tmp450, %sfp
	b	.L798	@
.L815:
	mov	r1, #3	@,
	add	r0, sp, #12	@ tmp468,,
	bl	BsSkip	@
	ldrb	r2, [r9, #8]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type
	cmp	r2, #2	@ MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type,
	ldr	r3, [sp, #4]	@ tmp450, %sfp
	bne	.L800	@,
	mov	r1, #3	@,
	add	r0, sp, #12	@ tmp469,,
	bl	BsSkip	@
	ldr	r3, [sp, #4]	@ tmp450, %sfp
	b	.L800	@
.L816:
	ldr	r2, [r7, #3508]	@ pCtx_9(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_9(D)->stCurPacket.StreamPack[1].LenInByte
	strb	r3, [fp, #1283]	@ pCtx_9(D)->stCurPacket.StreamPack[0].IsLastSeg, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_offset
	mov	r3, r2, asl #3	@ D.40904, pCtx_9(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r3, [fp, #1288]	@ D.40904, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_len
	ldr	r3, [r7, #3504]	@ pCtx_9(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_9(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r3, [fp, #1296]	@ pCtx_9(D)->stCurPacket.StreamPack[1].PhyAddr, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].phy_address
	b	.L803	@
.L793:
	mov	r1, r9	@, MbCnt
	add	r0, sp, #12	@ tmp471,,
	bl	BsGet	@
	mov	r5, r10, asl #2	@ tmp453, D.40904,
	mov	r10, r10, asl #5	@ tmp454, D.40904,
	rsb	r3, r5, r10	@ tmp446, tmp453, tmp454
	add	r3, r4, r3	@ tmp447, pCtx, tmp446
	str	r0, [r3, #1300]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].mb_start_num
	b	.L795	@
.L813:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40903,
	b	.L810	@
	.fnend
	.size	Mp4_Syntax_Slice_NotSH, .-Mp4_Syntax_Slice_NotSH
	.align	2
	.global	Mp4_Syntax_Slice_SH
	.type	Mp4_Syntax_Slice_SH, %function
Mp4_Syntax_Slice_SH:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #12288	@ tmp448, pCtx,
	movw	r3, #510	@ tmp175,
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r4, [r8, #3324]	@ D.40913, pCtx_6(D)->Mp4DecParam.SlcNum
	mov	r5, r0	@ pCtx, pCtx
	sub	r6, r4, #1	@ D.40913, D.40913,
	cmp	r6, r3	@ D.40913, tmp175
	bhi	.L832	@,
	add	r3, r4, #1	@ D.40913, D.40913,
	add	r0, sp, #12	@ tmp449,,
	str	r3, [r8, #3324]	@ D.40913, pCtx_6(D)->Mp4DecParam.SlcNum
	mov	r10, r2	@ len, len
	ldrb	r7, [r8, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	bl	BsInit	@
	add	fp, r5, #20480	@ tmp203, pCtx,
	ubfx	r7, r7, #3, #4	@ D.40914, *pCtx_6(D),,
	add	r7, r7, #17	@ D.40914, D.40914,
	mov	r1, r7	@, D.40914
	add	r0, sp, #12	@ tmp450,,
	bl	BsSkip	@
	mov	r3, r4, asl #2	@ tmp444, D.40913,
	mov	r1, #5	@,
	mov	r7, r3	@ tmp444, tmp444
	add	r0, sp, #12	@ tmp451,,
	str	r3, [sp]	@ tmp444, %sfp
	bl	BsGet	@
	ldrb	lr, [fp, #740]	@ zero_extendqisi2	@ D.40914, pCtx_6(D)->MP4Vop.num_mb_ingob
	mov	r3, r4, asl #5	@ tmp446, D.40913,
	movw	r1, #1206	@ tmp213,
	mov	r2, r3	@ tmp446, tmp446
	rsb	ip, r7, r2	@ tmp208, tmp444, tmp446
	add	r4, r5, ip	@ tmp209, pCtx, tmp208
	movw	r2, #1204	@ tmp218,
	mul	r0, lr, r0	@ D.40913, D.40914,
	str	r3, [sp, #4]	@ tmp446, %sfp
	str	r0, [r4, #1300]	@ D.40913, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].mb_start_num
	ldrh	r1, [r5, r1]	@ D.40914, pCtx_6(D)->Mp4DecParam.PicHeightInMb
	ldrh	r2, [r5, r2]	@ D.40914, pCtx_6(D)->Mp4DecParam.PicWidthInMb
	mul	r2, r2, r1	@ D.40914, D.40914, D.40914
	sub	r2, r2, #1	@ D.40914, D.40914,
	cmp	r0, r2	@ D.40913, D.40914
	bhi	.L833	@,
	mov	r1, #2	@,
	add	r0, sp, #12	@ tmp456,,
	bl	BsSkip	@
	mov	r1, #5	@,
	add	r0, sp, #12	@ tmp457,,
	bl	BsGet	@
	strb	r0, [r4, #1281]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].vop_quant
	add	r0, sp, #12	@ tmp458,,
	ldrb	r2, [fp, #728]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_coding_type, pCtx_6(D)->MP4Vop.vop_coding_type
	strb	r2, [r4, #1280]	@ pCtx_6(D)->MP4Vop.vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].vop_coding_type
	ldrb	r2, [fp, #732]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.intra_dc_vlc_thr, pCtx_6(D)->MP4Vop.intra_dc_vlc_thr
	strb	r2, [r4, #1279]	@ pCtx_6(D)->MP4Vop.intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].intra_dc_vlc_thr
	ldrb	r2, [fp, #736]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_fcode_forward, pCtx_6(D)->MP4Vop.vop_fcode_forward
	strb	r2, [r4, #1277]	@ pCtx_6(D)->MP4Vop.vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].vop_fcode_forward
	ldrb	r2, [fp, #737]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_fcode_backward, pCtx_6(D)->MP4Vop.vop_fcode_backward
	strb	r2, [r4, #1278]	@ pCtx_6(D)->MP4Vop.vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].vop_fcode_backward
	bl	BsPos	@
	add	lr, r5, #16384	@ tmp322, pCtx,
	mov	r2, r0, asr #31	@ tmp294, BitUsed,
	mov	r7, r0	@ BitUsed,
	rsb	r10, r0, r10, lsl #3	@ D.40914, BitUsed, len,
	str	r10, [r4, #1284]	@ D.40914, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_len
	mov	r2, r2, lsr #29	@ tmp295, tmp294,
	ldr	r10, [fp, #1576]	@ pCtx_6(D)->BitsObj.offset, pCtx_6(D)->BitsObj.offset
	add	r1, r7, r2	@ tmp296, BitUsed, tmp295
	cmp	r7, #0	@ BitUsed,
	and	r1, r1, #7	@ tmp297, tmp296,
	add	r0, r0, #7	@ tmp315, BitUsed,
	rsb	r2, r2, r1	@ D.40914, tmp295, tmp297
	movge	r0, r7	@ BitUsed, BitUsed
	add	r2, r2, r10	@ tmp304, D.40914, pCtx_6(D)->BitsObj.offset
	strb	r2, [r4, #1282]	@ tmp304, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_offset
	ldr	r3, [fp, #1568]	@ pCtx_6(D)->BitsObj.phy_addr, pCtx_6(D)->BitsObj.phy_addr
	add	r0, r3, r0, asr #3	@ D.40913, pCtx_6(D)->BitsObj.phy_addr, BitUsed,
	str	r0, [r4, #1292]	@ D.40913, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].phy_address
	ldr	r3, [lr, #3584]	@ pCtx_6(D)->PicIntegrality, pCtx_6(D)->PicIntegrality
	orr	r3, r3, #16	@ D.40913, pCtx_6(D)->PicIntegrality,
	str	r3, [lr, #3584]	@ D.40913, pCtx_6(D)->PicIntegrality
	ldrb	r3, [r8, #3421]	@ zero_extendqisi2	@ pCtx_6(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_6(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_6(D)->stCurPacket.StreamPack[0].IsLastSeg,
	beq	.L834	@,
.L821:
	ldmia	sp, {r2, r3}	@,,
	rsb	r2, r2, r3	@ tmp366, tmp444, tmp446
	mov	r3, #0	@ tmp370,
	add	r2, r5, r2	@ tmp367, pCtx, tmp366
	add	r0, r2, #1280	@ tmp369, tmp367,
	add	r1, r2, #1264	@ tmp377, tmp367,
	str	r3, [r0, #8]	@ tmp370, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_len
	strb	r3, [r1, #19]	@ tmp370, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_offset
	str	r3, [r0, #16]	@ tmp370, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].phy_address
.L822:
	mov	r1, r6, asl #2	@ tmp445, D.40913,
	mov	r3, r6, asl #5	@ tmp447, D.40913,
	rsb	r2, r1, r3	@ tmp391, tmp445, tmp447
	add	r2, r5, r2	@ tmp392, pCtx, tmp391
	ldr	r0, [r2, #1296]	@ MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].phy_address, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].phy_address
	cmp	r0, #0	@ MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].phy_address,
	bne	.L835	@,
.L823:
	rsb	r3, r1, r3	@ tmp423, tmp445, tmp447
	ldrb	r2, [r8, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	add	r3, r5, r3	@ tmp424, pCtx, tmp423
	ubfx	r2, r2, #3, #4	@ D.40913, *pCtx_6(D),,
	ldr	r1, [r3, #1284]	@ MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
	add	r2, r2, r1	@ D.40913, D.40913, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
	str	r2, [r3, #1284]	@ D.40913, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
.L824:
	mov	r0, r5	@, pCtx
	bl	MP4_Record_SlcSegID	@
	mov	r0, r7	@ D.40912, BitUsed
.L819:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L835:
	ldr	r0, [r2, #1288]	@ D.40913, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
	add	r2, r2, #1280	@ tmp402, tmp392,
	add	r2, r2, #4	@ tmp402, tmp402,
	cmp	r0, #0	@ D.40913,
	beq	.L823	@,
	ldrb	r3, [r8, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	ubfx	r3, r3, #3, #4	@ D.40913, *pCtx_6(D),,
	add	r3, r3, r0	@ D.40913, D.40913, D.40913
	str	r3, [r2, #4]	@ D.40913, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
	b	.L824	@
.L834:
	ldrb	r2, [r8, #3501]	@ zero_extendqisi2	@ pCtx_6(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_6(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_6(D)->stCurPacket.StreamPack[1].IsLastSeg,
	bne	.L821	@,
	ldr	r2, [r8, #3508]	@ pCtx_6(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_6(D)->stCurPacket.StreamPack[1].LenInByte
	strb	r3, [r4, #1283]	@ pCtx_6(D)->stCurPacket.StreamPack[0].IsLastSeg, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_offset
	mov	r3, r2, asl #3	@ D.40913, pCtx_6(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r3, [r4, #1288]	@ D.40913, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_len
	ldr	r3, [r8, #3504]	@ pCtx_6(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_6(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r3, [r4, #1296]	@ pCtx_6(D)->stCurPacket.StreamPack[1].PhyAddr, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].phy_address
	b	.L822	@
.L832:
	add	r3, r0, #20480	@ tmp179, pCtx,
	add	r1, r0, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r3, #2480]	@, pCtx_6(D)->ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r5	@, pCtx
	add	r5, r5, #16384	@ tmp182, pCtx,
	bl	MP4_ClearCurPic	@
	ldr	r3, [r5, #3584]	@ pCtx_6(D)->PicIntegrality, pCtx_6(D)->PicIntegrality
	bic	r3, r3, #178	@ D.40913, pCtx_6(D)->PicIntegrality,
	str	r3, [r5, #3584]	@ D.40913, pCtx_6(D)->PicIntegrality
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40912,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L833:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40912,
	b	.L819	@
	.fnend
	.size	Mp4_Syntax_Slice_SH, .-Mp4_Syntax_Slice_SH
	.align	2
	.global	MP4_Dec_Slice
	.type	MP4_Dec_Slice, %function
MP4_Dec_Slice:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r0, #12288	@ tmp131, pCtx,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldrb	r3, [ip, #3576]	@ zero_extendqisi2	@ D.40928, MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B]
	.pad #8
	sub	sp, sp, #8	@,,
	tst	r3, #1	@ D.40928,
	beq	.L847	@,
	tst	r3, #4	@ D.40928,
	beq	.L848	@,
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_SH	@
	cmn	r0, #1	@,
	beq	.L845	@,
.L840:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L848:
	movw	r0, #3576	@ tmp153,
	ldrh	r0, [ip, r0]	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B], MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B]
	ubfx	r0, r0, #7, #4	@ D.40929, MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B],,
	sub	lr, r0, #1	@ D.40932, D.40929,
	cmp	lr, #6	@ D.40932,
	bfils	r3, r0, #3, #4	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B].StartCodeBitOffset, D.40929,,
	mov	r0, r4	@, pCtx
	strlsb	r3, [ip, #3576]	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B].StartCodeBitOffset, MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B].StartCodeBitOffset
	bl	Mp4_Syntax_Slice_SH	@
	cmn	r0, #1	@,
	bne	.L840	@,
.L845:
	add	r3, r4, #20480	@ tmp166, pCtx,
	add	r1, r4, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r3, #2480]	@, pCtx_2(D)->ChanID
	bl	MP4_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L847:
	stmia	sp, {r1, r2}	@,,
	bl	Mp4_Check_Slice_NotSH	@
	cmp	r0, #0	@,
	ldmia	sp, {r1, r2}	@,,
	beq	.L849	@,
	mov	r1, r2	@, len
	mov	r0, r4	@, pCtx
	bl	Mp4_Combine_SliceData	@
	cmp	r0, #0	@,
	bne	.L845	@,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L840	@
.L849:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_NotSH	@
	cmn	r0, #1	@,
	beq	.L845	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	MP4_Dec_Slice, .-MP4_Dec_Slice
	.align	2
	.global	MP4_Record_PacketID
	.type	MP4_Record_PacketID, %function
MP4_Record_PacketID:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #20480	@ tmp126, pCtx,
	mov	r1, r0	@ pCtx, pCtx
	ldr	r3, [r5, #2036]	@ D.40937, pCtx_2(D)->stHdPktInfo.StreamIDNum
	cmp	r3, #62	@ D.40937,
	bgt	.L854	@,
	add	r0, r0, #12288	@ tmp136, pCtx,
	add	r1, r1, r3, lsl #2	@ D.40942, pCtx, D.40937,
	add	r1, r1, #20480	@ tmp134, D.40942,
	add	r2, r3, #1	@ D.40937, D.40937,
	ldr	ip, [r0, #3432]	@ pCtx_2(D)->stCurPacket.StreamPack[0].StreamID, pCtx_2(D)->stCurPacket.StreamPack[0].StreamID
	str	ip, [r1, #1780]	@ pCtx_2(D)->stCurPacket.StreamPack[0].StreamID, MEM[(HI_U32 *)_24 + 22260B]
	str	r2, [r5, #2036]	@ D.40937, pCtx_2(D)->stHdPktInfo.StreamIDNum
	ldrb	r2, [r0, #3421]	@ zero_extendqisi2	@ pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r2, #0	@ pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldrb	r2, [r0, #3501]	@ zero_extendqisi2	@ pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg,
	ldreq	r2, [r0, #3512]	@ pCtx_2(D)->stCurPacket.StreamPack[1].StreamID, pCtx_2(D)->stCurPacket.StreamPack[1].StreamID
	addeq	r3, r3, #2	@ D.40937, D.40937,
	streq	r2, [r1, #1784]	@ pCtx_2(D)->stCurPacket.StreamPack[1].StreamID, MEM[(HI_U32 *)_24 + 22264B]
	streq	r3, [r5, #2036]	@ D.40937, pCtx_2(D)->stHdPktInfo.StreamIDNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L854:
	mov	r4, r0	@ pCtx, pCtx
	bl	MP4_Clean_HeadPacket	@
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r5, #2480]	@, pCtx_2(D)->ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	MP4_Record_PacketID, .-MP4_Record_PacketID
	.align	2
	.global	MP4_Record_HeadPacketInfo
	.type	MP4_Record_HeadPacketInfo, %function
MP4_Record_HeadPacketInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pCtx
	beq	.L859	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCtx, pCtx
	mov	r6, r1	@ StartCode, StartCode
	add	r1, r0, #15680	@, pCtx,
	add	r0, r0, #22016	@, pCtx,
	add	r1, r1, #24	@,,
	mov	r2, #160	@,
	add	r0, r0, #80	@,,
	bl	memcpy	@
	add	r5, r4, #20480	@ tmp149, pCtx,
	add	r1, r4, #15808	@, pCtx,
	add	r0, r4, #22016	@, pCtx,
	add	r1, r1, #56	@,,
	add	r0, r0, #240	@,,
	mov	r2, #4	@,
	bl	memcpy	@
	ldr	r3, [r5, #2044]	@ pCtx_3(D)->stHdPktInfo.GetHeadFirstFlag, pCtx_3(D)->stHdPktInfo.GetHeadFirstFlag
	str	r6, [r5, #2040]	@ StartCode, pCtx_3(D)->stHdPktInfo.HeadCode
	cmp	r3, #0	@ pCtx_3(D)->stHdPktInfo.GetHeadFirstFlag,
	beq	.L860	@,
.L857:
	ldr	r3, [r5, #2048]	@ pCtx_3(D)->stHdPktInfo.CountVopNum, pCtx_3(D)->stHdPktInfo.CountVopNum
	add	r3, r3, #1	@ D.40947, pCtx_3(D)->stHdPktInfo.CountVopNum,
	str	r3, [r5, #2048]	@ D.40947, pCtx_3(D)->stHdPktInfo.CountVopNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L860:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_PacketID	@
	mov	r3, #1	@ tmp142,
	str	r3, [r5, #2044]	@ tmp142, pCtx_3(D)->stHdPktInfo.GetHeadFirstFlag
	b	.L857	@
.L859:
	b	vfmw_dprint_nothing	@
	.fnend
	.size	MP4_Record_HeadPacketInfo, .-MP4_Record_HeadPacketInfo
	.align	2
	.global	Mp4_Syntax_Parse
	.type	Mp4_Syntax_Parse, %function
Mp4_Syntax_Parse:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #76
	sub	sp, sp, #76	@,,
	add	r9, r0, #16384	@ tmp1032, pCtx,
	add	r10, r0, #12288	@ tmp1031, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	add	r0, sp, #16	@ tmp1041,,
	mov	r8, r2	@ CodeLen, CodeLen
	mov	r7, r1	@ pCode, pCode
	bl	BsInit	@
	mov	r1, #32	@,
	add	r0, sp, #16	@ tmp1042,,
	bl	BsShow	@
	mov	r3, #0	@ tmp361,
	str	r3, [r9, #3588]	@ tmp361, pCtx_39(D)->IsWaitToDecFlag
	ldrb	r3, [r10, #3576]	@ zero_extendqisi2	@ D.40965, MEM[(struct MP4_SCD_UPMSG *)pCtx_39(D) + 15864B]
	and	r1, r3, #1	@ D.40965, D.40965,
	cmp	r0, #32768	@ StartCode,
	movne	r2, #0	@, tmp371
	andeq	r2, r3, #1	@,, tmp371, D.40965
	mov	r5, r0	@ StartCode,
	cmp	r2, #0	@ tmp371,
	bne	.L862	@,
	eor	r2, r1, #1	@ tmp376, D.40965,
	movw	r0, #438	@ tmp374,
	cmp	r5, r0	@ StartCode, tmp374
	movne	r2, #0	@, tmp379
	andeq	r2, r2, #1	@,, tmp379, tmp376
	cmp	r2, #0	@ tmp379,
	bne	.L862	@,
.L863:
	cmp	r1, #0	@ D.40965,
	beq	.L994	@,
	add	r4, r6, #20480	@ tmp1033, pCtx,
	mov	r5, #196	@ StartCode,
	mov	r2, #1	@ tmp435,
	strb	r2, [r4, #797]	@ tmp435, pCtx_39(D)->MP4Syntax.is_short_header
.L868:
	and	r3, r3, #2	@ tmp437, D.40965,
	ands	r3, r3, #255	@ tmp439, tmp437,
	bne	.L869	@,
	ldr	r2, [r9, #3584]	@ *pCtx_39(D), *pCtx_39(D)
	ands	r10, r2, #130	@ D.40961, *pCtx_39(D),
	bne	.L995	@,
	cmp	r5, #197	@ StartCode,
	beq	.L996	@,
	cmp	r5, #432	@ StartCode,
	beq	.L997	@,
	movw	r3, #437	@ tmp460,
	cmp	r5, r3	@ StartCode, tmp460
	beq	.L998	@,
	bic	r3, r5, #15	@ D.40963, StartCode,
	cmp	r3, #288	@ D.40963,
	beq	.L999	@,
	movw	r3, #435	@ tmp490,
	cmp	r5, r3	@ StartCode, tmp490
	beq	.L1000	@,
	movw	r3, #438	@ tmp494,
	cmp	r5, r3	@ StartCode, tmp494
	beq	.L1001	@,
	cmp	r5, #196	@ StartCode,
	beq	.L1002	@,
	movw	r3, #434	@ tmp513,
	cmp	r5, r3	@ StartCode, tmp513
	beq	.L1003	@,
	movw	r3, #286	@ tmp519,
	cmp	r5, r3	@ StartCode, tmp519
	bne	.L884	@,
	ldr	r3, .L1017	@ tmp520,
	ldr	r3, [r3]	@ D.40967, g_event_report
	cmp	r3, #0	@ D.40967,
	beq	.L884	@,
	mov	r2, #0	@,
	mov	r1, #112	@,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	blx	r3	@ D.40967
.L884:
	add	r1, r6, #15680	@, pCtx,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	add	r1, r1, #24	@,,
	sub	r8, r8, #4	@ CodeLen, CodeLen,
	bl	MP4_ClearCurPacket	@
	ldrb	r3, [r4, #2517]	@ zero_extendqisi2	@ pCtx_39(D)->SeekReset, pCtx_39(D)->SeekReset
	add	fp, r7, #4	@ pCode, pCode,
	mov	r10, #0	@ BitUsed,
	cmp	r3, #1	@ pCtx_39(D)->SeekReset,
	beq	.L937	@,
.L890:
	ldrb	r3, [r4, #1559]	@ zero_extendqisi2	@ pCtx_39(D)->MP4SyntaxState.vol_decode_right, pCtx_39(D)->MP4SyntaxState.vol_decode_right
	cmp	r3, #1	@ pCtx_39(D)->MP4SyntaxState.vol_decode_right,
	bne	.L988	@,
	ldr	r3, [r4, #2056]	@ pCtx_39(D)->SeqCnt, pCtx_39(D)->SeqCnt
	add	r1, r6, #19968	@, pCtx,
	add	r0, r6, #21248	@, pCtx,
	add	r1, r1, #32	@,,
	add	r3, r3, #1	@ D.40963, pCtx_39(D)->SeqCnt,
	add	r0, r0, #60	@,,
	str	r3, [r4, #2056]	@ D.40963, pCtx_39(D)->SeqCnt
	mov	r2, #604	@,
	mov	r3, #0	@ tmp812,
	str	r3, [r4, #2060]	@ tmp812, pCtx_39(D)->ImgCntOfSeq
	bl	memcpy	@
	ldr	r3, [r4, #1492]	@ D.40961, pCtx_39(D)->MP4Syntax.image_height
	ldr	r0, [r9, #3700]	@ D.40961, pCtx_39(D)->MP4Vol.video_object_layer_height
	cmp	r3, r0	@ D.40961, D.40961
	beq	.L918	@,
	ldr	ip, [r9, #3696]	@ D.40961, pCtx_39(D)->MP4Vol.video_object_layer_width
.L919:
	ldr	r2, .L1017	@ tmp835,
	ldr	r5, [r2]	@ D.40967, g_event_report
	cmp	r5, #0	@ D.40967,
	beq	.L921	@,
	ldr	lr, [r4, #1496]	@ pCtx_39(D)->MP4Syntax.image_width, pCtx_39(D)->MP4Syntax.image_width
	add	r2, sp, #8	@,,
	strh	ip, [sp, #12]	@ movhi	@ D.40961, para
	mov	r1, #2	@,
	strh	r0, [sp, #14]	@ movhi	@ D.40961, para
	strh	r3, [sp, #10]	@ movhi	@ D.40961, para
	strh	lr, [sp, #8]	@ movhi	@ pCtx_39(D)->MP4Syntax.image_width, para
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	blx	r5	@ D.40967
	ldr	r0, [r9, #3700]	@ D.40961, pCtx_39(D)->MP4Vol.video_object_layer_height
	ldr	ip, [r9, #3696]	@ D.40961, pCtx_39(D)->MP4Vol.video_object_layer_width
.L921:
	ldr	r3, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	str	ip, [r4, #1496]	@ D.40961, pCtx_39(D)->MP4Syntax.image_width
	str	r0, [r4, #1492]	@ D.40961, pCtx_39(D)->MP4Syntax.image_height
	ldr	r5, [r3, #692]	@ _363->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _363->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r5, #1	@ _363->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1004	@,
.L922:
	ldr	r5, [r3, #728]	@ _530->s32DSDWaitFlag, _530->s32DSDWaitFlag
	cmp	r5, #0	@ _530->s32DSDWaitFlag,
	beq	.L1005	@,
.L992:
	ldr	r2, [r4, #1496]	@ D.40961, pCtx_39(D)->MP4Syntax.image_width
	ldr	r3, [r4, #1492]	@ D.40961, pCtx_39(D)->MP4Syntax.image_height
	ldr	r0, [r9, #3700]	@ D.40961, pCtx_39(D)->MP4Vol.video_object_layer_height
	ldr	r1, [r9, #3696]	@ D.40961, pCtx_39(D)->MP4Vol.video_object_layer_width
.L920:
	str	r3, [r4, #2080]	@ D.40961, pCtx_39(D)->OldPicHeight
	mov	r3, #0	@ tmp1016,
	str	r2, [r4, #2076]	@ D.40961, pCtx_39(D)->OldPicWidth
	str	r0, [r4, #1492]	@ D.40961, pCtx_39(D)->MP4Syntax.image_height
	str	r1, [r4, #1496]	@ D.40961, pCtx_39(D)->MP4Syntax.image_width
	strb	r3, [r4, #1559]	@ tmp1016, pCtx_39(D)->MP4SyntaxState.vol_decode_right
	b	.L988	@
.L995:
	orr	r2, r2, #32	@ D.40963, *pCtx_39(D),
	mov	r10, r3	@ D.40961, tmp439
	str	r2, [r9, #3584]	@ D.40963, pCtx_39(D)->PicIntegrality
	mov	r3, #1	@ tmp451,
	str	r3, [r9, #3588]	@ tmp451, pCtx_39(D)->IsWaitToDecFlag
.L988:
	mov	r0, r10	@, D.40961
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L862:
	add	ip, sp, #16	@ tmp1043,,
	add	lr, sp, #44	@ tmp380,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp381,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp380,,,,
	ldmia	ip, {r0, r1, r2}	@ tmp381,,,
	stmia	lr, {r0, r1, r2}	@ tmp380,,,
	mov	r1, #32	@,
	add	r0, sp, #44	@ tmp1044,,
	bl	BsSkip	@
	mov	r1, #32	@,
	add	r0, sp, #44	@ tmp1045,,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r4, r0	@ D.40964,
	add	r0, sp, #44	@ tmp1046,,
	bl	BsGet	@
	movw	r2, #20036	@ tmp387,
	movw	r3, #20553	@ tmp390,
	movt	r2, 17221	@ tmp387,
	movt	r3, 18515	@ tmp390,
	cmp	r0, r2	@, tmp387
	cmpeq	r4, r3	@, D.40964, tmp390
	bne	.L1006	@,
	add	r4, r6, #20480	@ tmp1033, pCtx,
	mov	r2, #1	@ tmp399,
	add	r1, r6, #15680	@, pCtx,
	mov	r10, #0	@ D.40961,
	strb	r2, [r4, #2516]	@ tmp399, pCtx_39(D)->IsStreamEndFlag
	add	r1, r1, #24	@,,
	ldr	r3, [r9, #3584]	@ *pCtx_39(D), *pCtx_39(D)
	tst	r3, #130	@ *pCtx_39(D),
	strne	r2, [r9, #3588]	@ tmp399, pCtx_39(D)->IsWaitToDecFlag
	orrne	r3, r3, #32	@ D.40963, *pCtx_39(D),
	strne	r3, [r9, #3584]	@ D.40963, pCtx_39(D)->PicIntegrality
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r10	@, D.40961
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L869:
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	MP4_Dec_Slice	@
	mov	r10, r0	@ BitUsed,
.L873:
	ldrb	r3, [r4, #2517]	@ zero_extendqisi2	@ pCtx_39(D)->SeekReset, pCtx_39(D)->SeekReset
	mov	fp, r7	@ pCode, pCode
	cmp	r3, #1	@ pCtx_39(D)->SeekReset,
	beq	.L937	@,
.L887:
	cmp	r10, r8, asl #3	@ BitUsed, CodeLen,
	bhi	.L889	@,
	movw	r3, #438	@ tmp552,
	cmp	r5, r3	@ StartCode, tmp552
	cmpne	r5, #196	@, StartCode,
	bne	.L890	@,
	ldr	r3, [r9, #3584]	@ *pCtx_39(D), *pCtx_39(D)
	tst	r3, #130	@ *pCtx_39(D),
	beq	.L890	@,
	ldrb	r3, [r4, #797]	@ zero_extendqisi2	@ pCtx_39(D)->MP4Syntax.is_short_header, pCtx_39(D)->MP4Syntax.is_short_header
	cmp	r3, #2	@ pCtx_39(D)->MP4Syntax.is_short_header,
	beq	.L1007	@,
	ldr	r3, [r4, #1496]	@ D.40963, pCtx_39(D)->MP4Syntax.image_width
	ldr	r2, [r4, #1492]	@ D.40963, pCtx_39(D)->MP4Syntax.image_height
	cmp	r3, #0	@ D.40963,
	str	r3, [r4, #2084]	@ D.40963, pCtx_39(D)->NewPicWidth
	str	r2, [r4, #2088]	@ D.40963, pCtx_39(D)->NewPicHeight
	beq	.L894	@,
	ldr	r1, [r4, #2076]	@ pCtx_39(D)->OldPicWidth, pCtx_39(D)->OldPicWidth
	cmp	r3, r1	@ D.40963, pCtx_39(D)->OldPicWidth
	beq	.L894	@,
.L895:
	ldr	r3, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _217->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _217->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _217->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L938	@,
.L899:
	ldr	r5, [r3, #728]	@ _540->s32DSDWaitFlag, _540->s32DSDWaitFlag
	cmp	r5, #0	@ _540->s32DSDWaitFlag,
	beq	.L1008	@,
.L991:
	ldr	r3, [r4, #2084]	@ D.40963, pCtx_39(D)->NewPicWidth
	ldr	r2, [r4, #2088]	@ D.40963, pCtx_39(D)->NewPicHeight
.L898:
	str	r3, [r4, #2076]	@ D.40963, pCtx_39(D)->OldPicWidth
	str	r2, [r4, #2080]	@ D.40963, pCtx_39(D)->OldPicHeight
.L893:
	add	r1, r6, #20992	@, pCtx,
	add	r0, r6, #21760	@, pCtx,
	add	r1, r1, #216	@,,
	mov	r2, #60	@,
	add	r0, r0, #152	@,,
	rsb	r7, r7, fp	@ D.40964, pCode, pCode
	bl	memcpy	@
	bl	vfmw_dprint_nothing	@
	add	r10, r10, r7, lsl #3	@ D.40961, BitUsed, D.40964,
	ldr	r3, [r4, #2060]	@ pCtx_39(D)->ImgCntOfSeq, pCtx_39(D)->ImgCntOfSeq
	mov	r0, r10	@, D.40961
	add	r3, r3, #1	@ D.40963, pCtx_39(D)->ImgCntOfSeq,
	str	r3, [r4, #2060]	@ D.40963, pCtx_39(D)->ImgCntOfSeq
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L994:
	mov	r2, r5, lsr #8	@ D.40963, StartCode,
	add	r4, r6, #20480	@ tmp1033, pCtx,
	sub	r2, r2, #128	@ D.40963, D.40963,
	mov	r1, #2	@ tmp421,
	cmp	r2, #3	@ D.40963,
	strb	r1, [r4, #797]	@ tmp421, pCtx_39(D)->MP4Syntax.is_short_header
	ldrlsb	r3, [r10, #3576]	@ zero_extendqisi2	@ pCtx_39(D)->ScdUpMsg.SliceFlag, pCtx_39(D)->ScdUpMsg.SliceFlag
	orrls	r3, r3, r1	@ tmp429, pCtx_39(D)->ScdUpMsg.SliceFlag,
	strlsb	r3, [r10, #3576]	@ tmp429, pCtx_39(D)->ScdUpMsg.SliceFlag
	b	.L868	@
.L1006:
	ldrb	r3, [r10, #3576]	@ zero_extendqisi2	@ D.40965, MEM[(struct MP4_SCD_UPMSG *)pCtx_39(D) + 15864B]
	and	r1, r3, #1	@ D.40965, D.40965,
	b	.L863	@
.L894:
	cmp	r2, #0	@ D.40963,
	bne	.L1009	@,
.L896:
	ldr	r1, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	ldr	r0, [r1, #728]	@ _215->s32DSDWaitFlag, _215->s32DSDWaitFlag
	cmp	r0, #1	@ _215->s32DSDWaitFlag,
	bne	.L898	@,
	ldr	r1, [r1, #692]	@ _215->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _215->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ _215->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L898	@,
.L938:
	ldr	r1, [r4, #2492]	@, pCtx_39(D)->FwdFsID
	mov	r0, r6	@, pCtx
	mov	r3, #0	@ tmp638,
	str	r3, [sp]	@ tmp638, NewNum
	str	r3, [sp, #4]	@ tmp638, ReadNum
	str	r3, [sp, #8]	@ tmp638, RefNum
	bl	MP4_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L1010	@,
.L900:
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	mov	r0, r6	@, pCtx
	bl	MP4_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L1011	@,
.L901:
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@,,
	movne	r3, #1	@ tmp653,
	strne	r3, [r0, #376]	@ tmp653, pImage_233->u32IsLastFrame
	mov	r3, sp	@,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	ldr	r1, [r4, #2076]	@ pCtx_39(D)->OldPicWidth, pCtx_39(D)->OldPicWidth
	ldr	r2, [r3, #720]	@ _238->s32DSDThrWidth, _238->s32DSDThrWidth
	cmp	r1, r2	@ pCtx_39(D)->OldPicWidth, _238->s32DSDThrWidth
	bhi	.L903	@,
	ldr	r1, [r4, #2080]	@ pCtx_39(D)->OldPicHeight, pCtx_39(D)->OldPicHeight
	ldr	r2, [r3, #724]	@ _238->s32DSDThrHeight, _238->s32DSDThrHeight
	cmp	r1, r2	@ pCtx_39(D)->OldPicHeight, _238->s32DSDThrHeight
	bhi	.L903	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.40964, ReadNum, NewNum
	cmp	r2, #0	@ D.40964,
	movgt	r2, #1	@ tmp673,
	movle	r2, #0	@ tmp674,
	str	r2, [r3, #728]	@ tmp674, _238->s32DSDWaitFlag
	mov	r3, #1	@ tmp677,
	str	r3, [r4, #2524]	@ tmp677, pCtx_39(D)->DSDNeedClearQue
.L906:
	ldr	r3, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	b	.L899	@
.L937:
	ldr	r2, [r9, #3700]	@, pCtx_39(D)->MP4Vol.video_object_layer_height
	mov	r0, r6	@, pCtx
	ldr	r1, [r9, #3696]	@, pCtx_39(D)->MP4Vol.video_object_layer_width
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L1012	@,
.L888:
	mov	r3, #0	@ tmp545,
	strb	r3, [r4, #2517]	@ tmp545, pCtx_39(D)->SeekReset
	b	.L887	@
.L889:
	bl	vfmw_dprint_nothing	@
	rsb	r7, r7, fp	@ D.40964, pCode, pCode
	ldr	r3, [r9, #3584]	@ pCtx_39(D)->PicIntegrality, pCtx_39(D)->PicIntegrality
	mov	r10, r7, asl #3	@ D.40961, D.40964,
	bic	r3, r3, #178	@ D.40963, pCtx_39(D)->PicIntegrality,
	str	r3, [r9, #3584]	@ D.40963, pCtx_39(D)->PicIntegrality
	mov	r0, r10	@, D.40961
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1000:
	bl	vfmw_dprint_nothing	@
	mov	r3, #3	@ tmp493,
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	str	r3, [r4, #2092]	@ tmp493, pCtx_39(D)->UserID
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Gop	@
	mov	r1, r5	@, StartCode
	mov	r10, r0	@ BitUsed,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L873	@
.L1009:
	ldr	r1, [r4, #2080]	@ pCtx_39(D)->OldPicHeight, pCtx_39(D)->OldPicHeight
	cmp	r2, r1	@ D.40963, pCtx_39(D)->OldPicHeight
	bne	.L895	@,
	b	.L896	@
.L997:
	bl	vfmw_dprint_nothing	@
	str	r10, [r4, #2092]	@ D.40961, pCtx_39(D)->UserID
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Vos	@
	mov	r1, r5	@, StartCode
	mov	r10, r0	@ BitUsed,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L873	@
.L998:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ tmp463,
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	str	r3, [r4, #2092]	@ tmp463, pCtx_39(D)->UserID
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Vo	@
	mov	r1, r5	@, StartCode
	mov	r10, r0	@ BitUsed,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L873	@
.L999:
	bl	vfmw_dprint_nothing	@
	mov	r3, #2	@ tmp467,
	mov	r2, r8	@, CodeLen
	str	r3, [r4, #2092]	@ tmp467, pCtx_39(D)->UserID
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Vol	@
	mov	r1, r5	@, StartCode
	mov	r10, r0	@ BitUsed,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	ldrb	r3, [r4, #1559]	@ zero_extendqisi2	@ pCtx_39(D)->MP4SyntaxState.vol_decode_right, pCtx_39(D)->MP4SyntaxState.vol_decode_right
	cmp	r3, #1	@ pCtx_39(D)->MP4SyntaxState.vol_decode_right,
	beq	.L873	@,
	ldrb	fp, [r4, #1560]	@ zero_extendqisi2	@ pCtx_39(D)->MP4SyntaxState.last_vol_decode_right, pCtx_39(D)->MP4SyntaxState.last_vol_decode_right
	cmp	fp, #1	@ pCtx_39(D)->MP4SyntaxState.last_vol_decode_right,
	bne	.L873	@,
	add	r1, r6, #20480	@, pCtx,
	add	r0, r6, #19968	@, pCtx,
	add	r1, r1, #124	@,,
	add	r0, r0, #32	@,,
	mov	r2, #604	@,
	bl	memcpy	@
	strb	fp, [r4, #1559]	@ pCtx_39(D)->MP4SyntaxState.last_vol_decode_right, pCtx_39(D)->MP4SyntaxState.vol_decode_right
	strb	fp, [r4, #789]	@ pCtx_39(D)->MP4SyntaxState.last_vol_decode_right, pCtx_39(D)->MP4Syntax.vol_decode_over
	b	.L873	@
.L996:
	bl	vfmw_dprint_nothing	@
	add	r1, r6, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	MP4_ClearCurPacket	@
	b	.L988	@
.L1007:
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_39(D)->MP4Vop.vop_coding_type, pCtx_39(D)->MP4Vop.vop_coding_type
	cmp	r3, #2	@ pCtx_39(D)->MP4Vop.vop_coding_type,
	beq	.L892	@,
	ldr	r2, [r4, #1508]	@ D.40963, pCtx_39(D)->MP4Syntax.time_base
	ldr	r3, [r4, #1500]	@ pCtx_39(D)->MP4Syntax.time_incr, pCtx_39(D)->MP4Syntax.time_incr
	ldr	r0, [r4, #1504]	@ pCtx_39(D)->MP4Syntax.time_increment, pCtx_39(D)->MP4Syntax.time_increment
	str	r2, [r4, #1512]	@ D.40963, pCtx_39(D)->MP4Syntax.last_time_base
	add	r2, r2, r3	@ D.40963, D.40963, pCtx_39(D)->MP4Syntax.time_incr
	str	r2, [r4, #1508]	@ D.40963, pCtx_39(D)->MP4Syntax.time_base
	ldr	r3, [r9, #3688]	@ pCtx_39(D)->MP4Vol.vop_time_increment_resolution, pCtx_39(D)->MP4Vol.vop_time_increment_resolution
	ldr	r1, [r4, #1520]	@ pCtx_39(D)->MP4Syntax.last_non_b_time, pCtx_39(D)->MP4Syntax.last_non_b_time
	mla	r3, r3, r2, r0	@ D.40963, pCtx_39(D)->MP4Vol.vop_time_increment_resolution, D.40963, pCtx_39(D)->MP4Syntax.time_increment
	rsb	r2, r1, r3	@ D.40963, pCtx_39(D)->MP4Syntax.last_non_b_time, D.40963
	str	r2, [r4, #1524]	@ D.40963, pCtx_39(D)->MP4Syntax.time_pp
	str	r3, [r4, #1516]	@ D.40963, pCtx_39(D)->MP4Syntax.time
	str	r3, [r4, #1520]	@ D.40963, pCtx_39(D)->MP4Syntax.last_non_b_time
	b	.L893	@
.L1001:
	bl	vfmw_dprint_nothing	@
	cmp	r8, #4	@ CodeLen,
	beq	.L1013	@,
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Vop	@
	ldr	r3, [r9, #3584]	@ pCtx_39(D)->PicIntegrality, pCtx_39(D)->PicIntegrality
	tst	r3, #2	@ pCtx_39(D)->PicIntegrality,
	mov	r10, r0	@ BitUsed,
	bne	.L880	@,
	add	r1, r6, #15680	@, pCtx,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
.L879:
	bl	vfmw_dprint_nothing	@
	b	.L873	@
.L1012:
	bl	vfmw_dprint_nothing	@
	b	.L888	@
.L1002:
	bl	vfmw_dprint_nothing	@
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_ShortHeader	@
	ldr	r3, [r9, #3584]	@ pCtx_39(D)->PicIntegrality, pCtx_39(D)->PicIntegrality
	tst	r3, #2	@ pCtx_39(D)->PicIntegrality,
	mov	r10, r0	@ BitUsed,
	beq	.L990	@,
	mov	r1, #196	@,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L873	@
.L1003:
	bl	vfmw_dprint_nothing	@
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_UserData	@
	mov	r10, r0	@ BitUsed,
.L990:
	add	r1, r6, #15680	@, pCtx,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	b	.L873	@
.L1008:
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L911	@,
	ldr	r1, [r8, #192]	@, pImg_263->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #196]	@, pImg_263->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #200]	@, pImg_263->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #204]	@, pImg_263->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r8, #192]	@ _540->s32DSDWaitFlag, pImg_263->p_usrdat
	str	r5, [r8, #196]	@ _540->s32DSDWaitFlag, pImg_263->p_usrdat
	mov	r2, #1	@,
	str	r5, [r8, #200]	@ _540->s32DSDWaitFlag, pImg_263->p_usrdat
	str	r5, [r8, #204]	@ _540->s32DSDWaitFlag, pImg_263->p_usrdat
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2492]	@, pCtx_39(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #2492]	@ _540->s32DSDWaitFlag, pCtx_39(D)->FwdFsID
	str	r5, [r4, #2500]	@ _540->s32DSDWaitFlag, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2500]	@ D.40964, pCtx_39(D)->BwdFsID
	str	r0, [r4, #2492]	@ D.40964, pCtx_39(D)->FwdFsID
.L911:
	add	r5, r6, #22528	@ D.40971, pCtx,
	mov	r3, #0	@ tmp745,
	add	r5, r5, #80	@ D.40971, D.40971,
	str	r3, [r4, #2488]	@ tmp745, pCtx_39(D)->RefNum
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	mov	r1, r5	@, D.40971
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _297->stChanOption.s32ReRangeEn, _297->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _297->stChanOption.s32ReRangeEn,
	bne	.L912	@,
	ldr	r3, [r3, #32]	@ _297->eCapLevel, _297->eCapLevel
	cmp	r3, #25	@ _297->eCapLevel,
	beq	.L1014	@,
.L912:
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L914	@,
	ldr	r3, [r4, #1580]	@ pCtx_39(D)->pstExtraData, pCtx_39(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _305->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _305->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _305->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L916	@,
	ldr	r3, [r4, #2524]	@ pCtx_39(D)->DSDNeedClearQue, pCtx_39(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_39(D)->DSDNeedClearQue,
	beq	.L916	@,
.L914:
	ldr	r2, [r4, #2088]	@, pCtx_39(D)->NewPicHeight
	mov	r0, r6	@, pCtx
	ldr	r1, [r4, #2084]	@, pCtx_39(D)->NewPicWidth
	bl	Frame_Init	@
	cmp	r0, #0	@,
	beq	.L991	@,
	bl	vfmw_dprint_nothing	@
	b	.L991	@
.L918:
	ldr	r2, [r4, #1496]	@ D.40961, pCtx_39(D)->MP4Syntax.image_width
	ldr	ip, [r9, #3696]	@ D.40961, pCtx_39(D)->MP4Vol.video_object_layer_width
	cmp	r2, ip	@ D.40961, D.40961
	bne	.L919	@,
	ldr	r1, [r4, #1580]	@ pCtx_39(D)->pstExtraData, pCtx_39(D)->pstExtraData
	ldr	r1, [r1, #728]	@ _343->s32DSDWaitFlag, _343->s32DSDWaitFlag
	cmp	r1, #1	@ _343->s32DSDWaitFlag,
	movne	r1, r2	@ D.40961, D.40961
	movne	r0, r3	@ D.40961, D.40961
	bne	.L920	@,
	b	.L919	@
.L1005:
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L930	@,
	ldr	r1, [r7, #192]	@, pImg_405->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #196]	@, pImg_405->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #200]	@, pImg_405->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #204]	@, pImg_405->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r7, #192]	@ _530->s32DSDWaitFlag, pImg_405->p_usrdat
	str	r5, [r7, #196]	@ _530->s32DSDWaitFlag, pImg_405->p_usrdat
	mov	r2, #1	@,
	str	r5, [r7, #200]	@ _530->s32DSDWaitFlag, pImg_405->p_usrdat
	str	r5, [r7, #204]	@ _530->s32DSDWaitFlag, pImg_405->p_usrdat
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2492]	@, pCtx_39(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #2492]	@ _530->s32DSDWaitFlag, pCtx_39(D)->FwdFsID
	str	r5, [r4, #2500]	@ _530->s32DSDWaitFlag, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2500]	@ D.40964, pCtx_39(D)->BwdFsID
	str	r0, [r4, #2492]	@ D.40964, pCtx_39(D)->FwdFsID
.L930:
	add	r5, r6, #22528	@ D.40971, pCtx,
	mov	r3, #0	@ tmp962,
	add	r5, r5, #80	@ D.40971, D.40971,
	str	r3, [r4, #2488]	@ tmp962, pCtx_39(D)->RefNum
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	mov	r1, r5	@, D.40971
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _439->stChanOption.s32ReRangeEn, _439->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _439->stChanOption.s32ReRangeEn,
	bne	.L931	@,
	ldr	r3, [r3, #32]	@ _439->eCapLevel, _439->eCapLevel
	cmp	r3, #25	@ _439->eCapLevel,
	beq	.L1015	@,
.L931:
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L933	@,
	ldr	r3, [r4, #1580]	@ pCtx_39(D)->pstExtraData, pCtx_39(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _447->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _447->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _447->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L935	@,
	ldr	r3, [r4, #2524]	@ pCtx_39(D)->DSDNeedClearQue, pCtx_39(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_39(D)->DSDNeedClearQue,
	beq	.L935	@,
.L933:
	mov	r0, r6	@, pCtx
	ldr	r2, [r4, #1492]	@, pCtx_39(D)->MP4Syntax.image_height
	ldr	r1, [r4, #1496]	@, pCtx_39(D)->MP4Syntax.image_width
	bl	Frame_Init	@
	cmp	r0, #0	@,
	beq	.L992	@,
	bl	vfmw_dprint_nothing	@
	b	.L992	@
.L880:
	movw	r1, #438	@,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L879	@
.L892:
	ldr	r1, [r4, #1512]	@ pCtx_39(D)->MP4Syntax.last_time_base, pCtx_39(D)->MP4Syntax.last_time_base
	ldr	r2, [r4, #1500]	@ pCtx_39(D)->MP4Syntax.time_incr, pCtx_39(D)->MP4Syntax.time_incr
	ldr	r3, [r9, #3688]	@ pCtx_39(D)->MP4Vol.vop_time_increment_resolution, pCtx_39(D)->MP4Vol.vop_time_increment_resolution
	ldr	ip, [r4, #1504]	@ pCtx_39(D)->MP4Syntax.time_increment, pCtx_39(D)->MP4Syntax.time_increment
	add	r2, r2, r1	@ D.40963, pCtx_39(D)->MP4Syntax.time_incr, pCtx_39(D)->MP4Syntax.last_time_base
	ldr	r0, [r4, #1520]	@ pCtx_39(D)->MP4Syntax.last_non_b_time, pCtx_39(D)->MP4Syntax.last_non_b_time
	ldr	r1, [r4, #1524]	@ pCtx_39(D)->MP4Syntax.time_pp, pCtx_39(D)->MP4Syntax.time_pp
	mla	r3, r3, r2, ip	@ D.40963, pCtx_39(D)->MP4Vol.vop_time_increment_resolution, D.40963, pCtx_39(D)->MP4Syntax.time_increment
	rsb	r2, r0, r1	@ D.40963, pCtx_39(D)->MP4Syntax.last_non_b_time, pCtx_39(D)->MP4Syntax.time_pp
	add	r2, r2, r3	@ D.40963, D.40963, D.40963
	str	r2, [r4, #1528]	@ D.40963, pCtx_39(D)->MP4Syntax.time_bp
	str	r3, [r4, #1516]	@ D.40963, pCtx_39(D)->MP4Syntax.time
	b	.L893	@
.L1013:
	mov	r1, r5	@, StartCode
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L879	@
.L1004:
	ldr	r1, [r4, #2492]	@, pCtx_39(D)->FwdFsID
	mov	r0, r6	@, pCtx
	mov	r3, #0	@ tmp854,
	str	r3, [sp]	@ tmp854, NewNum
	str	r3, [sp, #4]	@ tmp854, ReadNum
	str	r3, [sp, #8]	@ tmp854, RefNum
	bl	MP4_FlushFrameToVo	@
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	mov	r0, r6	@, pCtx
	bl	MP4_FlushFrameToVo	@
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	mov	r3, sp	@,
	strne	r5, [r0, #376]	@ _363->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_375->u32IsLastFrame
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@,,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	ldr	r1, [r4, #2076]	@ pCtx_39(D)->OldPicWidth, pCtx_39(D)->OldPicWidth
	ldr	r2, [r3, #720]	@ _380->s32DSDThrWidth, _380->s32DSDThrWidth
	cmp	r1, r2	@ pCtx_39(D)->OldPicWidth, _380->s32DSDThrWidth
	bhi	.L924	@,
	ldr	r1, [r4, #2080]	@ pCtx_39(D)->OldPicHeight, pCtx_39(D)->OldPicHeight
	ldr	r2, [r3, #724]	@ _380->s32DSDThrHeight, _380->s32DSDThrHeight
	cmp	r1, r2	@ pCtx_39(D)->OldPicHeight, _380->s32DSDThrHeight
	bhi	.L924	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.40964, ReadNum, NewNum
	cmp	r2, #0	@ D.40964,
	ble	.L925	@,
.L927:
	mov	r2, #1	@ tmp898,
	str	r2, [r3, #728]	@ tmp898, _380->s32DSDWaitFlag
.L926:
	mov	r2, #1	@ tmp893,
	ldr	r3, [r4, #1580]	@ D.40969, pCtx_39(D)->pstExtraData
	str	r2, [r4, #2524]	@ tmp893, pCtx_39(D)->DSDNeedClearQue
	b	.L922	@
.L903:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L1016	@,
.L907:
	mov	r2, #1	@ tmp680,
	str	r2, [r3, #728]	@ tmp680, _238->s32DSDWaitFlag
.L909:
	mov	r3, #0	@ tmp684,
	str	r3, [r4, #2524]	@ tmp684, pCtx_39(D)->DSDNeedClearQue
	b	.L906	@
.L1014:
	ldr	r3, [r4, #2484]	@ pCtx_39(D)->FspPartitionOK, pCtx_39(D)->FspPartitionOK
	cmp	r3, #0	@ pCtx_39(D)->FspPartitionOK,
	bne	.L914	@,
.L916:
	mov	r0, r5	@, D.40971
	bl	ResetVoQueue	@
	b	.L914	@
.L924:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	bgt	.L927	@,
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L927	@,
.L925:
	mov	r2, #0	@ tmp890,
	str	r2, [r3, #728]	@ tmp890, _380->s32DSDWaitFlag
	b	.L926	@
.L1015:
	ldr	r3, [r4, #2484]	@ pCtx_39(D)->FspPartitionOK, pCtx_39(D)->FspPartitionOK
	cmp	r3, #0	@ pCtx_39(D)->FspPartitionOK,
	bne	.L933	@,
.L935:
	mov	r0, r5	@, D.40971
	bl	ResetVoQueue	@
	b	.L933	@
.L1016:
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #3	@ ReadNum,
	movle	r2, #0	@ tmp681,
	strle	r2, [r3, #728]	@ tmp681, _238->s32DSDWaitFlag
	ble	.L909	@,
	b	.L907	@
.L1011:
	bl	vfmw_dprint_nothing	@
	b	.L901	@
.L1010:
	bl	vfmw_dprint_nothing	@
	b	.L900	@
.L1018:
	.align	2
.L1017:
	.word	g_event_report
	.fnend
	.size	Mp4_Syntax_Parse, .-Mp4_Syntax_Parse
	.align	2
	.global	MP4_Combine_HdPacket
	.type	MP4_Combine_HdPacket, %function
MP4_Combine_HdPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #20480	@ tmp134, pCtx,
	ldr	r3, [r5, #1616]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].VirAddr, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].VirAddr
	cmp	r3, #0	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].VirAddr,
	beq	.L1025	@,
	add	r3, r0, #12288	@ tmp137, pCtx,
	ldrb	r4, [r3, #3421]	@ zero_extendqisi2	@ D.40992, pCtx_3(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r4, #1	@ D.40992,
	beq	.L1027	@,
	cmp	r4, #0	@ D.40992,
	bne	.L1025	@,
	ldrb	r2, [r3, #3501]	@ zero_extendqisi2	@ pCtx_3(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_3(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_3(D)->stCurPacket.StreamPack[1].IsLastSeg,
	bne	.L1025	@,
	ldr	r2, [r5, #1628]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	add	r1, r0, #15744	@, pCtx,
	ldr	r3, [r3, #3428]	@ pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte
	add	r0, r0, #22016	@, pCtx,
	add	r1, r1, #40	@,,
	add	r0, r0, #160	@,,
	add	r3, r3, r2	@ D.40993, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	mov	r2, #80	@,
	str	r3, [r5, #1628]	@ D.40993, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	bl	memcpy	@
	mov	r0, r4	@ D.40990, D.40992
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1027:
	ldrb	r4, [r5, #1621]	@ zero_extendqisi2	@ D.40992, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].IsLastSeg
	cmp	r4, #1	@ D.40992,
	beq	.L1028	@,
	cmp	r4, #0	@ D.40992,
	bne	.L1025	@,
	ldrb	r2, [r5, #1701]	@ zero_extendqisi2	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].IsLastSeg, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].IsLastSeg
	cmp	r2, #1	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].IsLastSeg,
	bne	.L1025	@,
	ldr	r3, [r3, #3428]	@ pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte
	mov	r0, r4	@ D.40990, D.40992
	ldr	r2, [r5, #1708]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].LenInByte
	add	r3, r3, r2	@ D.40993, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].LenInByte
	str	r3, [r5, #1708]	@ D.40993, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].LenInByte
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1025:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40990,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1028:
	ldr	r1, [r3, #3424]	@ pCtx_3(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_3(D)->stCurPacket.StreamPack[0].PhyAddr
	ldr	r2, [r5, #1624]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].PhyAddr, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].PhyAddr
	cmp	r1, r2	@ pCtx_3(D)->stCurPacket.StreamPack[0].PhyAddr, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].PhyAddr
	blt	.L1029	@,
	ldr	r3, [r3, #3428]	@ pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte
	mov	r0, #0	@ D.40990,
	ldr	r2, [r5, #1628]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	add	r3, r3, r2	@ D.40993, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	str	r3, [r5, #1628]	@ D.40993, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1029:
	add	r1, r0, #15680	@, pCtx,
	add	r0, r0, #22016	@, pCtx,
	add	r1, r1, #24	@,,
	mov	r2, #80	@,
	add	r0, r0, #160	@,,
	bl	memcpy	@
	mov	r3, #0	@ tmp157,
	strb	r4, [r5, #1701]	@ D.40992, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].IsLastSeg
	mov	r0, r3	@ D.40990, tmp157
	strb	r3, [r5, #1621]	@ tmp157, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].IsLastSeg
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP4_Combine_HdPacket, .-MP4_Combine_HdPacket
	.align	2
	.global	MP4_Renew_CurPacket
	.type	MP4_Renew_CurPacket, %function
MP4_Renew_CurPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCtx, pCtx
	bl	MP4_Combine_HdPacket	@
	cmn	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	beq	.L1034	@,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_PacketID	@
	add	r1, r4, #22016	@, pCtx,
	add	r0, r4, #15680	@, pCtx,
	add	r1, r1, #80	@,,
	mov	r2, #160	@,
	add	r0, r0, #24	@,,
	bl	memcpy	@
	add	r1, r4, #22016	@, pCtx,
	add	r0, r4, #15744	@, pCtx,
	add	r1, r1, #240	@,,
	mov	r2, #4	@,
	add	r0, r0, #32	@,,
	bl	memcpy	@
	mov	r0, #0	@ D.41007,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1034:
	add	r3, r4, #20480	@ tmp123, pCtx,
	add	r1, r4, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r3, #2480]	@, pCtx_4(D)->ChanID
	bl	MP4_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.41007, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP4_Renew_CurPacket, .-MP4_Renew_CurPacket
	.align	2
	.global	MP4_Check_CurPacket
	.type	MP4_Check_CurPacket, %function
MP4_Check_CurPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #12288	@ tmp283, pCtx,
	add	r5, r0, #20480	@ tmp284, pCtx,
	.pad #32
	sub	sp, sp, #32	@,,
	ldr	r2, [r4, #3424]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].PhyAddr, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].PhyAddr
	mov	r3, #0	@ tmp169,
	mov	r6, r0	@ pCtx, pCtx
	add	r0, sp, #4	@ tmp287,,
	str	r2, [r5, #1568]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].PhyAddr, MEM[(struct BITS_OBJ *)pCtx_6(D) + 22044B].phy_addr
	ldr	r1, [r4, #3416]	@ D.41029, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].VirAddr
	str	r1, [r5, #1564]	@ D.41029, MEM[(struct BITS_OBJ *)pCtx_6(D) + 22044B].vir_addr
	ldr	r2, [r4, #3428]	@ D.41026, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].LenInByte
	str	r3, [r5, #1576]	@ tmp169, MEM[(struct BITS_OBJ *)pCtx_6(D) + 22044B].offset
	str	r2, [r5, #1572]	@ D.41026, MEM[(struct BITS_OBJ *)pCtx_6(D) + 22044B].len
	bl	BsInit	@
	mov	r1, #32	@,
	add	r0, sp, #4	@ tmp288,,
	bl	BsShow	@
	ldrb	r2, [r4, #3576]	@ zero_extendqisi2	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_6(D) + 15864B], MEM[(struct MP4_SCD_UPMSG *)pCtx_6(D) + 15864B]
	tst	r2, #1	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_6(D) + 15864B],
	beq	.L1062	@,
	mov	r3, #1	@ tmp193,
	strb	r3, [r5, #797]	@ tmp193, pCtx_6(D)->MP4Syntax.is_short_header
	ldrb	r3, [r4, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	tst	r3, #2	@ *pCtx_6(D),
	bne	.L1038	@,
	ldr	r2, [r5, #2040]	@ D.41028, pCtx_6(D)->stHdPktInfo.HeadCode
	mov	r0, #196	@ StartCode,
.L1042:
	movw	r3, #438	@ tmp251,
	cmp	r0, r3	@ StartCode, tmp251
	cmpeq	r2, r3	@, D.41028, tmp251
	beq	.L1049	@,
	cmp	r0, #196	@ StartCode,
	cmpeq	r2, #196	@, D.41028,
	bne	.L1060	@,
.L1049:
	ldr	r3, [r5, #2048]	@ pCtx_6(D)->stHdPktInfo.CountVopNum, pCtx_6(D)->stHdPktInfo.CountVopNum
	cmp	r3, #1	@ pCtx_6(D)->stHdPktInfo.CountVopNum,
	bgt	.L1041	@,
	b	.L1060	@
.L1062:
	mov	r2, r0, lsr #8	@ D.41028, D.41026,
	mov	r1, #2	@ tmp181,
	sub	r2, r2, #128	@ D.41028, D.41028,
	mov	r3, r0	@ D.41026,
	cmp	r2, #3	@ D.41028,
	strb	r1, [r5, #797]	@ tmp181, pCtx_6(D)->MP4Syntax.is_short_header
	bls	.L1063	@,
.L1037:
	ldrb	r2, [r4, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	tst	r2, #2	@ *pCtx_6(D),
	ldr	r2, [r5, #2040]	@ pCtx_6(D)->stHdPktInfo.HeadCode, pCtx_6(D)->stHdPktInfo.HeadCode
	bne	.L1040	@,
	movw	r1, #438	@ tmp213,
	cmp	r2, r1	@ D.41028, tmp213
	cmpne	r3, #196	@, D.41026,
	beq	.L1042	@,
.L1041:
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
.L1060:
	mov	r0, #0	@ ret,
.L1046:
	ldr	r3, [r4, #3416]	@ pCtx_6(D)->stCurPacket.StreamPack[0].VirAddr, pCtx_6(D)->stCurPacket.StreamPack[0].VirAddr
	cmp	r3, #0	@ pCtx_6(D)->stCurPacket.StreamPack[0].VirAddr,
	beq	.L1052	@,
	ldr	r3, [r4, #3424]	@ pCtx_6(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_6(D)->stCurPacket.StreamPack[0].PhyAddr
	cmp	r3, #0	@ pCtx_6(D)->stCurPacket.StreamPack[0].PhyAddr,
	mvneq	r0, #0	@ D.41024,
.L1058:
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1040:
	movw	r1, #438	@ tmp226,
	sub	r3, r3, #196	@ D.41027, D.41026,
	rsb	r2, r1, r2	@ D.41027, tmp226, pCtx_6(D)->stHdPktInfo.HeadCode
	clz	r3, r3	@ D.41027, D.41027
	clz	r2, r2	@ D.41027, D.41027
	mov	r3, r3, lsr #5	@ D.41027, D.41027,
	mov	r2, r2, lsr #5	@ D.41027, D.41027,
	orrs	r1, r3, r2	@ tmp286, D.41027, D.41027
	beq	.L1043	@,
	ldrb	r0, [r5, #1561]	@ zero_extendqisi2	@ pCtx_6(D)->MP4SyntaxState.vop_decode_right, pCtx_6(D)->MP4SyntaxState.vop_decode_right
	cmp	r0, #1	@ pCtx_6(D)->MP4SyntaxState.vop_decode_right,
	orreq	r3, r3, #1	@,, tmp237, D.41027
	cmp	r3, #0	@ tmp237,
	bne	.L1051	@,
.L1043:
	mov	r0, r6	@, pCtx
	bl	MP4_Renew_CurPacket	@
	b	.L1046	@
.L1038:
	ldr	r3, [r5, #2040]	@ pCtx_6(D)->stHdPktInfo.HeadCode, pCtx_6(D)->stHdPktInfo.HeadCode
	movw	r2, #438	@ tmp280,
	rsb	r2, r2, r3	@ D.41027, tmp280, pCtx_6(D)->stHdPktInfo.HeadCode
	clz	r2, r2	@ D.41027, D.41027
	mov	r2, r2, lsr #5	@ D.41027, D.41027,
.L1051:
	ldr	r3, [r5, #2044]	@ pCtx_6(D)->stHdPktInfo.GetHeadFirstFlag, pCtx_6(D)->stHdPktInfo.GetHeadFirstFlag
	cmp	r3, #1	@ pCtx_6(D)->stHdPktInfo.GetHeadFirstFlag,
	movne	r2, #0	@, tmp245
	andeq	r2, r2, #1	@,, tmp245, D.41027
	cmp	r2, #0	@ tmp245,
	beq	.L1060	@,
	ldr	r3, [r5, #1628]	@ pCtx_6(D)->stHdPktInfo.stLastPacket.StreamPack[0].LenInByte, pCtx_6(D)->stHdPktInfo.stLastPacket.StreamPack[0].LenInByte
	cmp	r3, #4	@ pCtx_6(D)->stHdPktInfo.stLastPacket.StreamPack[0].LenInByte,
	bne	.L1060	@,
	b	.L1043	@
.L1063:
	ldrb	r2, [r4, #3576]	@ zero_extendqisi2	@ pCtx_6(D)->ScdUpMsg.SliceFlag, pCtx_6(D)->ScdUpMsg.SliceFlag
	orr	r2, r2, r1	@ tmp189, pCtx_6(D)->ScdUpMsg.SliceFlag,
	strb	r2, [r4, #3576]	@ tmp189, pCtx_6(D)->ScdUpMsg.SliceFlag
	b	.L1037	@
.L1052:
	mvn	r0, #0	@ D.41024,
	b	.L1058	@
	.fnend
	.size	MP4_Check_CurPacket, .-MP4_Check_CurPacket
	.align	2
	.global	MPEG4DEC_Decode
	.type	MPEG4DEC_Decode, %function
MPEG4DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r4, r0, #20480	@ tmp577, pCtx,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r3, [r4, #2068]	@ pCtx_11(D)->InitComplete, pCtx_11(D)->InitComplete
	cmp	r3, #0	@ pCtx_11(D)->InitComplete,
	beq	.L1152	@,
	ldr	r3, [r1, #12]	@ ptr_strm_para_14(D)->StreamPack[0].LenInByte, ptr_strm_para_14(D)->StreamPack[0].LenInByte
	mov	r6, r1	@ ptr_strm_para, ptr_strm_para
	cmp	r3, #0	@ ptr_strm_para_14(D)->StreamPack[0].LenInByte,
	beq	.L1152	@,
	ldr	r3, [r1, #8]	@ ptr_strm_para_14(D)->StreamPack[0].PhyAddr, ptr_strm_para_14(D)->StreamPack[0].PhyAddr
	cmp	r3, #0	@ ptr_strm_para_14(D)->StreamPack[0].PhyAddr,
	beq	.L1152	@,
	ldr	r3, [r1]	@ ptr_strm_para_14(D)->StreamPack[0].VirAddr, ptr_strm_para_14(D)->StreamPack[0].VirAddr
	cmp	r3, #0	@ ptr_strm_para_14(D)->StreamPack[0].VirAddr,
	beq	.L1152	@,
	bl	vfmw_dprint_nothing	@
	add	r7, r5, #15680	@ tmp262, pCtx,
	bl	vfmw_dprint_nothing	@
	add	r9, r7, #96	@ D.41046, tmp262,
	bl	vfmw_dprint_nothing	@
	add	r8, r5, #15808	@ pScdUpMsg, pCtx,
	bl	vfmw_dprint_nothing	@
	add	r7, r7, #24	@ tmp262, tmp262,
	bl	vfmw_dprint_nothing	@
	add	r8, r8, #56	@ pScdUpMsg, pScdUpMsg,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r2, #160	@,
	mov	r1, r6	@, ptr_strm_para
	mov	r0, r7	@, tmp262
	bl	memcpy	@
	mov	r1, r9	@, D.41046
	mov	r2, #4	@,
	mov	r0, r8	@, pScdUpMsg
	bl	memcpy	@
	mov	r0, r5	@, pCtx
	bl	MP4_Check_CurPacket	@
	cmn	r0, #1	@,
	beq	.L1152	@,
	mov	r1, r9	@, D.41046
	mov	r2, #4	@,
	mov	r0, r8	@, pScdUpMsg
	bl	memcpy	@
	add	r3, r5, #12288	@ tmp281, pCtx,
	mov	r2, #0	@ tmp295,
	mov	r0, r5	@, pCtx
	ldr	r1, [r3, #3424]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].PhyAddr, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].PhyAddr
	str	r1, [r4, #1568]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].PhyAddr, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr
	ldr	r1, [r3, #3416]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].VirAddr, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].VirAddr
	str	r1, [r4, #1564]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].VirAddr, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr
	ldr	r3, [r3, #3428]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].LenInByte, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].LenInByte
	str	r2, [r4, #1576]	@ tmp295, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].offset
	str	r3, [r4, #1572]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].LenInByte, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len
	bl	Mp4_Get_DecMode	@
	ldr	r3, [r4, #1580]	@ D.41039, pCtx_11(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _38->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _38->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _38->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1157	@,
.L1068:
	add	r7, r5, #16384	@ tmp576, pCtx,
	ldr	r3, [r7, #3584]	@ pCtx_11(D)->PicIntegrality, pCtx_11(D)->PicIntegrality
	str	r3, [r4, #2520]	@ pCtx_11(D)->PicIntegrality, pCtx_11(D)->LastPicIntegrality
.L1069:
	ldr	r2, [r4, #1572]	@, pCtx_11(D)->BitsObj.len
	mov	r0, r5	@, pCtx
	ldr	r1, [r4, #1564]	@, pCtx_11(D)->BitsObj.vir_addr
	bl	Mp4_Syntax_Parse	@
	ldr	lr, [r4, #1580]	@ D.41039, pCtx_11(D)->pstExtraData
	ldr	ip, [r4, #1564]	@ MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr
	ldr	r2, [r4, #1568]	@ MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr
	ldr	r3, [r4, #1572]	@ MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len
	mov	r1, r0, lsr #3	@ byte_num, bits_consume,
	and	r0, r0, #7	@ D.41036, bits_consume,
	rsb	r3, r1, r3	@ D.41036, byte_num, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len
	add	ip, ip, r1	@ D.41037, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr, byte_num
	str	r0, [r4, #1576]	@ D.41036, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].offset
	add	r2, r1, r2	@ D.41036, byte_num, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr
	str	ip, [r4, #1564]	@ D.41037, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr
	str	r2, [r4, #1568]	@ D.41036, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr
	str	r3, [r4, #1572]	@ D.41036, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len
	ldr	r3, [lr, #692]	@ _50->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _50->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _50->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1158	@,
.L1070:
	ldr	r3, [r7, #3584]	@ D.41036, pCtx_11(D)->PicIntegrality
	tst	r3, #32	@ D.41036,
	beq	.L1152	@,
	bic	r3, r3, #178	@ D.41036, D.41036,
	str	r3, [r7, #3584]	@ D.41036, pCtx_11(D)->PicIntegrality
	ldr	r3, [r4, #1612]	@ D.41040, pCtx_11(D)->DecMode
	cmp	r3, #2	@ D.41040,
	beq	.L1159	@,
	cmp	r3, #1	@ D.41040,
	beq	.L1160	@,
	cmp	r3, #4	@ D.41040,
	bne	.L1073	@,
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ D.41035, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ D.41035,
	bne	.L1161	@,
	str	r3, [r4, #2096]	@ D.41035, pCtx_11(D)->PPicFound
.L1073:
	mov	r0, r5	@, pCtx
	bl	Mp4_Frame_Atr	@
	add	r0, r0, #2	@ D.41042,,
	cmp	r0, #1	@ D.41042,
	bls	.L1156	@,
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2500]	@, pCtx_11(D)->BwdFsID
	mov	r7, r0	@ pFwdImg,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	clz	r3, r7	@ D.41041, pFwdImg
	mov	r3, r3, lsr #5	@ D.41041, D.41041,
	clz	r2, r0	@ D.41041,
	mov	r2, r2, lsr #5	@ D.41041, D.41041,
	orrs	r1, r2, r3	@ tmp582, D.41041, D.41041
	bne	.L1152	@,
	ldrb	r1, [r4, #795]	@ zero_extendqisi2	@ D.41035, pCtx_11(D)->MP4Syntax.coding_mode
	and	ip, r1, #253	@ tmp393, D.41035,
	cmp	ip, #1	@ tmp393,
	beq	.L1162	@,
	cmp	r1, #2	@ D.41035,
	beq	.L1163	@,
.L1079:
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type,
	beq	.L1086	@,
	ldr	r3, [r4, #2488]	@ pCtx_11(D)->RefNum, pCtx_11(D)->RefNum
	ldr	r1, [r4, #2492]	@ D.41033, pCtx_11(D)->FwdFsID
	cmp	r3, #0	@ pCtx_11(D)->RefNum,
	ldr	r3, [r4, #2500]	@ D.41032, pCtx_11(D)->BwdFsID
	movgt	r2, #2	@ D.41033,
	movle	r2, #1	@ D.41033,
	cmp	r1, r3	@ D.41033, D.41032
	str	r2, [r4, #2488]	@ D.41033, pCtx_11(D)->RefNum
	beq	.L1084	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #3	@,
	beq	.L1149	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_SetDisplay	@
.L1149:
	ldr	r3, [r4, #2500]	@ D.41032, pCtx_11(D)->BwdFsID
.L1084:
	str	r3, [r4, #2492]	@ D.41032, pCtx_11(D)->FwdFsID
	mov	r2, #1	@,
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ pCtx_11(D)->BwdCodingType, pCtx_11(D)->BwdCodingType
	strb	r3, [r5]	@ pCtx_11(D)->BwdCodingType, pCtx_11(D)->FwdCodingType
	ldr	r3, [r4, #2504]	@ pCtx_11(D)->BwdTimePP, pCtx_11(D)->BwdTimePP
	ldr	r1, [r4, #2508]	@ D.41033, pCtx_11(D)->CurFsID
	str	r3, [r4, #2496]	@ pCtx_11(D)->BwdTimePP, pCtx_11(D)->FwdTimePP
	str	r1, [r4, #2500]	@ D.41033, pCtx_11(D)->BwdFsID
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ pCtx_11(D)->CurCodingType, pCtx_11(D)->CurCodingType
	strb	r3, [r5, #1]	@ pCtx_11(D)->CurCodingType, pCtx_11(D)->BwdCodingType
	ldr	r3, [r4, #1524]	@ pCtx_11(D)->MP4Syntax.time_pp, pCtx_11(D)->MP4Syntax.time_pp
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	str	r3, [r4, #2504]	@ pCtx_11(D)->MP4Syntax.time_pp, pCtx_11(D)->BwdTimePP
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_RemovePmv	@
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #4	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type,
	bne	.L1086	@,
	ldrb	r3, [r4, #792]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.packed_mode, pCtx_11(D)->MP4Syntax.packed_mode
	cmp	r3, #0	@ pCtx_11(D)->MP4Syntax.packed_mode,
	beq	.L1164	@,
.L1153:
	mov	r0, #0	@ D.41032,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1162:
	cmp	r3, #0	@ D.41041,
	bne	.L1078	@,
	ldr	r3, [r4, #1580]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r2, [r7, #180]	@ pFwdImg_78->error_level, pFwdImg_78->error_level
	ldr	r3, [r3]	@ _92->s32RefErrThr, _92->s32RefErrThr
	cmp	r2, r3	@ pFwdImg_78->error_level, _92->s32RefErrThr
	bls	.L1079	@,
.L1078:
	mov	r2, #1	@,
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r5	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r5	@, pCtx
	bl	MP4_Clean_HeadPacket	@
.L1152:
	bl	vfmw_dprint_nothing	@
.L1155:
	mvn	r0, #0	@ D.41032,
.L1143:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1161:
	sub	r2, r3, #2	@ tmp360, D.41035,
	tst	r2, #253	@ tmp360,
	bne	.L1076	@,
	ldr	r2, [r4, #2096]	@ pCtx_11(D)->PPicFound, pCtx_11(D)->PPicFound
	cmp	r2, #0	@ pCtx_11(D)->PPicFound,
	beq	.L1155	@,
.L1076:
	cmp	r3, #1	@ D.41035,
	streq	r3, [r4, #2096]	@ D.41035, pCtx_11(D)->PPicFound
	b	.L1073	@
.L1158:
	ldr	r3, [lr, #728]	@ _50->s32DSDWaitFlag, _50->s32DSDWaitFlag
	cmp	r3, #0	@ _50->s32DSDWaitFlag,
	beq	.L1070	@,
	b	.L1153	@
.L1157:
	ldr	r3, [r3, #728]	@ _38->s32DSDWaitFlag, _38->s32DSDWaitFlag
	cmp	r3, #1	@ _38->s32DSDWaitFlag,
	bne	.L1068	@,
	ldr	r3, [r4, #2520]	@ pCtx_11(D)->LastPicIntegrality, pCtx_11(D)->LastPicIntegrality
	add	r7, r5, #16384	@ tmp576, pCtx,
	str	r3, [r7, #3584]	@ pCtx_11(D)->LastPicIntegrality, pCtx_11(D)->PicIntegrality
	b	.L1069	@
.L1086:
	mov	r2, r6	@, ptr_strm_para
	mov	r0, r5	@, pCtx
	mov	r1, #0	@,
	bl	Mp4_Set_DecPar	@
	ldrb	r6, [r4, #1432]	@ zero_extendqisi2	@ D.41035, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	sub	r3, r6, #2	@ tmp411, D.41035,
	sub	r0, r6, #2	@ D.41041, D.41035,
	clz	r0, r0	@ D.41041, D.41041
	tst	r3, #253	@ tmp411,
	mov	r0, r0, lsr #5	@ D.41041, D.41041,
	bne	.L1082	@,
	ldr	r3, [r4, #2096]	@ pCtx_11(D)->PPicFound, pCtx_11(D)->PPicFound
	cmp	r3, #0	@ pCtx_11(D)->PPicFound,
	beq	.L1165	@,
.L1082:
	cmp	r6, #1	@ D.41035,
	beq	.L1166	@,
	add	r3, r5, #1040	@ D.41043, pCtx,
	str	r3, [r5, #1036]	@ D.41043, pCtx_11(D)->pMp4DecParam
	ldr	r1, [r4, #1580]	@ D.41039, pCtx_11(D)->pstExtraData
	ldr	r2, [r1, #708]	@ D.41033, _166->stDisParams.s32Mode
	cmp	r2, #1	@ D.41033,
	beq	.L1167	@,
	cmp	r2, #2	@ D.41033,
	beq	.L1099	@,
.L1092:
	cmp	r6, #0	@ D.41035,
	mov	r3, #0	@ tmp521,
	strb	r3, [r5, #1198]	@ tmp521, pCtx_11(D)->Mp4DecParam.IsNvopCopy
	bne	.L1153	@,
	ldr	r3, .L1168	@ tmp523,
	ldr	r3, [r3]	@ D.41044, g_event_report
	cmp	r3, #0	@ D.41044,
	beq	.L1153	@,
	add	r2, sp, #24	@ tmp525,,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mov	r1, #20	@,
	str	r6, [r2, #-4]!	@ D.41035, para
	blx	r3	@ D.41044
	mov	r0, r6	@ D.41032, D.41035
	b	.L1143	@
.L1159:
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type,
	beq	.L1073	@,
.L1154:
	mov	r0, r5	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r5	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	b	.L1155	@
.L1160:
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type,
	bne	.L1073	@,
	b	.L1154	@
.L1164:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	beq	.L1095	@,
	ldr	r2, [r6, #408]	@ D.41045, pCur_196->pstDecodeFs
	cmp	r2, #0	@ D.41045,
	beq	.L1095	@,
	ldr	r3, [r6, #416]	@ pCur_196->pstTfOutFs, pCur_196->pstTfOutFs
	cmp	r3, #0	@ pCur_196->pstTfOutFs,
	beq	.L1095	@,
	ldr	r3, [r6, #412]	@ D.41045, pCur_196->pstDispOutFs
	cmp	r3, #0	@ D.41045,
	beq	.L1095	@,
	ldr	r1, [r0, #408]	@ D.41045, pFwd_200->pstDecodeFs
	mov	r0, r5	@, pCtx
	ldr	r2, [r2, #12]	@ D.41036, _210->PhyAddr
	cmp	r1, #0	@ D.41045,
	ldr	lr, [r4, #1492]	@ pCtx_11(D)->MP4Syntax.image_height, pCtx_11(D)->MP4Syntax.image_height
	ldr	ip, [r4, #1496]	@ pCtx_11(D)->MP4Syntax.image_width, pCtx_11(D)->MP4Syntax.image_width
	ldrne	r1, [r1, #12]	@ D.41034, _217->PhyAddr
	moveq	r1, r2	@ D.41034, D.41036
	ldr	r3, [r3, #12]	@ D.41036, _212->PhyAddr
	stmib	sp, {ip, lr}	@,,
	str	r1, [sp]	@ D.41034,
	mov	r1, r6	@, pCur
	bl	Vdm_Mem_Move	@
	b	.L1153	@
.L1166:
	str	r6, [r4, #2096]	@ D.41035, pCtx_11(D)->PPicFound
	add	r3, r5, #1040	@ D.41043, pCtx,
	str	r3, [r5, #1036]	@ D.41043, pCtx_11(D)->pMp4DecParam
	ldr	r1, [r4, #1580]	@ D.41039, pCtx_11(D)->pstExtraData
	ldr	r2, [r1, #708]	@ D.41033, _302->stDisParams.s32Mode
	cmp	r2, #1	@ D.41033,
	beq	.L1089	@,
	cmp	r2, #2	@ D.41033,
	beq	.L1099	@,
.L1089:
	mov	r3, #0	@ tmp574,
	strb	r3, [r5, #1198]	@ tmp574, pCtx_11(D)->Mp4DecParam.IsNvopCopy
	b	.L1153	@
.L1167:
	cmp	r3, #0	@ D.41043,
	moveq	r3, #0	@, tmp496
	andne	r3, r0, #1	@,, tmp496, D.41041
	cmp	r3, #0	@ tmp496,
	beq	.L1092	@,
	mov	r3, #0	@ tmp497,
	str	r3, [r5, #1036]	@ tmp497, pCtx_11(D)->pMp4DecParam
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	b	.L1154	@
.L1163:
	cmp	r3, #0	@ D.41041,
	bne	.L1078	@,
	ldr	r3, [r4, #1580]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r1, [r7, #180]	@ pFwdImg_78->error_level, pFwdImg_78->error_level
	ldr	r3, [r3]	@ D.41036, _103->s32RefErrThr
	cmp	r1, r3	@ pFwdImg_78->error_level, D.41036
	bhi	.L1078	@,
	cmp	r2, #0	@ D.41041,
	bne	.L1078	@,
	ldr	r2, [r0, #180]	@ pBwdImg_82->error_level, pBwdImg_82->error_level
	cmp	r3, r2	@ D.41036, pBwdImg_82->error_level
	bcc	.L1078	@,
	b	.L1079	@
.L1165:
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	bl	FSP_ClearLogicFs	@
	mvn	r0, #0	@ D.41032,
	b	.L1143	@
.L1099:
	ldr	r2, [r1, #712]	@ _291->stDisParams.s32DisNums, _291->stDisParams.s32DisNums
	cmp	r2, #0	@ _291->stDisParams.s32DisNums,
	andgt	r0, r0, #1	@ tmp505, D.41041,
	movle	r0, #0	@ tmp505,
	cmp	r3, #0	@ D.41043,
	moveq	r3, #0	@, tmp511
	andne	r3, r0, #1	@,, tmp511, tmp505
	cmp	r3, #0	@ tmp511,
	beq	.L1092	@,
	mov	r3, #0	@ tmp512,
	mov	r2, #1	@,
	str	r3, [r5, #1036]	@ tmp512, pCtx_11(D)->pMp4DecParam
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [r4, #1580]	@ D.41039, pCtx_11(D)->pstExtraData
	mov	r0, r5	@, pCtx
	ldr	r3, [r2, #712]	@ _179->stDisParams.s32DisNums, _179->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.41033, _179->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.41033, _179->stDisParams.s32DisNums
	bl	MP4_ClearCurPic	@
	mov	r0, r5	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r0, #0	@ D.41032,
	b	.L1143	@
.L1095:
	mov	r2, #1	@,
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L1156:
	bl	vfmw_dprint_nothing	@
	b	.L1154	@
.L1169:
	.align	2
.L1168:
	.word	g_event_report
	.fnend
	.size	MPEG4DEC_Decode, .-MPEG4DEC_Decode
	.global	sprite_trajectory_len
	.global	default_inter_matrix
	.global	default_intra_matrix
	.global	scan_tables
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
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
.LANCHOR0 = . + 0
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
	.ascii	"DivX%4dBuild%4d%c\000"
	.space	2
.LC1:
	.ascii	"DivX%4db%4d%c\000"
	.space	2
.LC2:
	.ascii	"FFmpe%*[^b]b%4d\000"
.LC3:
	.ascii	"FFmpeg v%4d.%4d.%4d / libavcodec build: %4d\000"
.LC4:
	.ascii	"Lavc%4d.%4d.%4d\000"
.LC5:
	.ascii	"ffmpeg\000"
	.space	1
.LC6:
	.ascii	"XviD%4d\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	MemArrange.37191, %object
	.size	MemArrange.37191, 416
MemArrange.37191:
	.space	416
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
