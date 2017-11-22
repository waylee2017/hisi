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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(mpeg4)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg4.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg4.o
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
	sxth	r0, r3	@ D.33868, n
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
	mov	r1, r4, asl #3	@ D.33884, i,
	add	r5, r5, #8	@ ivtmp.179, ivtmp.179,
	cmp	r0, r3	@, MEM[symbol: sprite_trajectory_len, index: _24, offset: 0B]
	beq	.L13	@,
	add	r4, r4, #1	@ i, i,
	cmp	r4, #12	@ i,
	bne	.L10	@,
	mvn	r0, #0	@ D.33879,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L13:
	add	r2, r2, r1	@ tmp193, tmp189, D.33884
	mov	r0, r7	@, pBs
	ldrb	r1, [r2, #4]	@ zero_extendqisi2	@, sprite_trajectory_len[i_17].len
	bl	BsSkip	@
	mov	r0, r4	@ D.33879, i
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
	ldrb	r5, [r0, #65]	@ zero_extendqisi2	@ D.33895, p_syntax_des_9(D)->syn_vol.sprite_warping_accuracy
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r10, r0	@ p_syntax_des, p_syntax_des
	mov	r9, r1	@ p_gmc, p_gmc
	mov	r3, r3, asl r5	@ a, tmp280,
	mov	r0, #16	@,
	rsb	r2, r5, #3	@ rho, D.33895,
	str	r3, [sp, #12]	@ a, %sfp
	mov	r1, r3	@, a
	str	r2, [sp, #48]	@ rho, %sfp
	bl	__aeabi_idiv	@
	ldr	r8, [r10, #708]	@ D.33895, p_syntax_des_9(D)->image_width
	ldr	r3, [r10, #704]	@ D.33895, p_syntax_des_9(D)->image_height
	cmp	r8, #1	@ D.33895,
	mov	r2, r8, asl #4	@ tmp402, D.33895,
	str	r2, [r9, #8]	@ tmp402, p_gmc_22(D)->sW
	str	r2, [sp, #24]	@ tmp402, %sfp
	ldr	r2, [r10, #704]	@ p_syntax_des_9(D)->image_height, p_syntax_des_9(D)->image_height
	mov	r2, r2, asl #4	@ D.33896, p_syntax_des_9(D)->image_height,
	str	r2, [r9, #12]	@ D.33896, p_gmc_22(D)->sH
	ldrb	r2, [r10, #65]	@ zero_extendqisi2	@ p_syntax_des_9(D)->syn_vol.sprite_warping_accuracy, p_syntax_des_9(D)->syn_vol.sprite_warping_accuracy
	str	r2, [r9, #4]	@ p_syntax_des_9(D)->syn_vol.sprite_warping_accuracy, p_gmc_22(D)->accuracy
	ldrb	r2, [r10, #64]	@ zero_extendqisi2	@ D.33894, p_syntax_des_9(D)->syn_vol.sprite_warping_points
	str	r2, [r9]	@ D.33894, p_gmc_22(D)->num_wp
	str	r2, [sp, #20]	@ D.33894, %sfp
	ldr	r2, [r10, #688]	@ D.33895, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[1].x
	ldr	lr, [r10, #680]	@ sprite_ref$0$0, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[0].x
	ldr	ip, [r10, #684]	@ sprite_ref$0$1, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[0].y
	str	r2, [sp, #8]	@ D.33895, %sfp
	ldr	r1, [r10, #692]	@ D.33895, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[1].y
	ldr	fp, [r10, #696]	@ D.33895, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[2].x
	str	r0, [sp, #4]	@, %sfp
	ldr	r0, [r10, #700]	@ D.33895, MEM[(struct MPEG4_WARPPOINTS *)p_syntax_des_9(D) + 680B].duv[2].y
	ble	.L41	@,
	mov	r5, #0	@ alpha,
	mov	r2, #1	@ tmp404,
.L18:
	add	r5, r5, #1	@ alpha, alpha,
	mov	r6, r2, asl r5	@ w2, tmp404,
	cmp	r8, r6	@ D.33895, w2
	bgt	.L18	@,
	mov	r2, r6, asl #4	@ D.33895, w2,
	str	r2, [sp, #44]	@ D.33895, %sfp
.L17:
	cmp	r3, #1	@ D.33895,
	ble	.L42	@,
	mov	r4, #0	@ beta,
	mov	r2, #1	@ tmp403,
.L20:
	add	r4, r4, #1	@ beta, beta,
	mov	r7, r2, asl r4	@ h2, tmp403,
	cmp	r3, r7	@ D.33895, h2
	bgt	.L20	@,
	mov	r2, r7, asl #4	@ D.33895, h2,
	str	r2, [sp, #52]	@ D.33895, %sfp
.L19:
	ldrb	r2, [r10, #12]	@ zero_extendqisi2	@ p_syntax_des_9(D)->FF_BUG_DIVX500B413, p_syntax_des_9(D)->FF_BUG_DIVX500B413
	cmp	r2, #1	@ p_syntax_des_9(D)->FF_BUG_DIVX500B413,
	beq	.L47	@,
	add	r1, ip, r1	@ D.33895, sprite_ref$0$1, D.33895
	str	r1, [sp, #28]	@ D.33895, %sfp
	ldr	r1, [sp, #8]	@ D.33895, %sfp
	add	r2, lr, r8, lsl #1	@ D.33895, sprite_ref$0$0, D.33895,
	add	fp, lr, fp	@ D.33895, sprite_ref$0$0, D.33895
	add	r10, ip, r3, lsl #1	@ D.33895, sprite_ref$0$1, D.33895,
	add	r2, r1, r2	@ D.33895, D.33895, D.33895
	ldr	r1, [sp, #12]	@ a, %sfp
	add	r0, r0, r10	@ D.33895, D.33895, D.33895
	mov	r1, r1, asr #1	@ D.33895, a,
	mul	lr, r1, lr	@ sprite_ref$0$0, D.33895, sprite_ref$0$0
	mul	r0, r0, r1	@ sprite_ref$2$1, D.33895, D.33895
	mul	r2, r2, r1	@ sprite_ref$1$0, D.33895, D.33895
	str	lr, [sp, #16]	@ sprite_ref$0$0, %sfp
	ldr	lr, [sp, #28]	@ D.33895, %sfp
	str	r0, [sp, #40]	@ sprite_ref$2$1, %sfp
	mul	r10, lr, r1	@ sprite_ref$1$1, D.33895, D.33895
	mul	lr, fp, r1	@ sprite_ref$2$0, D.33895, D.33895
	mul	r1, r1, ip	@ sprite_ref$0$1, D.33895, sprite_ref$0$1
	str	lr, [sp, #36]	@ sprite_ref$2$0, %sfp
	str	r1, [sp, #8]	@ sprite_ref$0$1, %sfp
.L22:
	ldr	r1, [sp, #24]	@ tmp402, %sfp
	ldr	ip, [sp, #16]	@ sprite_ref$0$0, %sfp
	rsb	r0, r1, #0	@ D.33895, tmp402
	ldr	r1, [sp, #4]	@ r, %sfp
	str	r3, [sp, #24]	@ D.33895, %sfp
	mla	r0, r2, r1, r0	@ D.33895, sprite_ref$1$0, r, D.33895
	mov	r2, r8, asr #1	@ D.33895, D.33895,
	mul	fp, ip, r1	@ D.33895, sprite_ref$0$0, r
	rsb	ip, r6, r8	@ D.33895, w2, D.33895
	mov	r1, r8	@, D.33895
	str	r2, [sp, #32]	@ D.33895, %sfp
	str	ip, [sp, #28]	@ D.33895, %sfp
	mul	r0, r6, r0	@ D.33895, w2, D.33895
	mla	r0, fp, ip, r0	@ D.33895, D.33895, D.33895, D.33895
	cmp	r0, #0	@ D.33895,
	addgt	r0, r0, r2	@ D.33893, D.33895, D.33895
	rsble	r0, r2, r0	@ D.33893, D.33895, D.33895
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@ r, %sfp
	ldr	r2, [sp, #8]	@ sprite_ref$0$1, %sfp
	ldr	ip, [sp, #28]	@ D.33895, %sfp
	mul	r1, r10, r3	@ D.33895, sprite_ref$1$1, r
	mul	r10, r2, r3	@ D.33895, sprite_ref$0$1, r
	ldr	r3, [sp, #44]	@ D.33895, %sfp
	ldr	r2, [sp, #32]	@ D.33895, %sfp
	mul	r1, r6, r1	@ D.33895, w2, D.33895
	mla	ip, r10, ip, r1	@ D.33895, D.33895, D.33895, D.33895
	mov	r1, r8	@, D.33895
	cmp	ip, #0	@ D.33895,
	add	r3, r0, r3	@ D.33895,, D.33895
	str	r3, [sp, #28]	@ D.33895, %sfp
	ldr	r3, [sp, #24]	@ D.33895, %sfp
	addgt	r0, ip, r2	@ D.33893, D.33895, D.33895
	rsble	r0, r2, ip	@ D.33893, D.33895, D.33895
	str	r3, [sp, #24]	@ D.33895, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #36]	@ sprite_ref$2$0, %sfp
	ldr	r2, [sp, #4]	@ r, %sfp
	ldr	lr, [sp, #4]	@ r, %sfp
	ldr	r8, [sp, #40]	@ sprite_ref$2$1, %sfp
	mov	ip, r0	@ D.33895,
	mul	r0, r3, r2	@ D.33895, sprite_ref$2$0, r
	ldr	r3, [sp, #24]	@ D.33895, %sfp
	rsb	r2, r7, r3	@ D.33895, h2, D.33895
	mov	r1, r3, asr #1	@ D.33895, D.33895,
	mul	r0, r7, r0	@ D.33895, h2, D.33895
	mla	fp, r2, fp, r0	@ D.33895, D.33895, D.33895, D.33895
	mov	r0, r3, asl #4	@ tmp326, D.33895,
	rsb	r0, r0, #0	@ D.33895, tmp326
	mla	r0, r8, lr, r0	@ D.33895, sprite_ref$2$1, r, D.33895
	cmp	fp, #0	@ D.33895,
	addgt	fp, fp, r1	@ D.33893, D.33895, D.33895
	rsble	fp, r1, fp	@ D.33893, D.33895, D.33895
	mul	r0, r7, r0	@ D.33895, h2, D.33895
	mla	r0, r2, r10, r0	@ D.33895, D.33895, D.33895, D.33895
	cmp	r0, #0	@ D.33895,
	addgt	r2, r0, r1	@ D.33893, D.33895, D.33895
	rsble	r2, r1, r0	@ D.33893, D.33895, D.33895
	str	r2, [sp, #24]	@ D.33893, %sfp
	ldr	r2, [sp, #20]	@ D.33894, %sfp
	cmp	r2, #3	@ D.33894,
	ldrls	pc, [pc, r2, asl #2]	@ D.33894
	b	.L31	@
.L33:
	.word	.L43
	.word	.L34
	.word	.L35
	.word	.L36
.L43:
	mov	r6, #0	@ D.33895,
	mov	r3, r6	@ D.33895, D.33895
	mov	r8, r6	@ D.33895, D.33895
	mov	fp, r6	@ D.33895, D.33895
.L32:
	mov	r5, #0	@ shift$0,
	mov	lr, r5	@ shift$1, shift$0
.L40:
	ldr	r1, [sp, #12]	@ a, %sfp
	mov	r3, r3, asr lr	@ D.33895, D.33895,
	mov	fp, fp, asr r5	@ D.33895, D.33895,
	mov	lr, r6, asr lr	@ D.33895, D.33895,
	mov	r5, r8, asr r5	@ D.33895, D.33895,
	str	r3, [r9, #40]	@ D.33895, p_gmc_22(D)->Uco
	mov	r2, #1	@ tmp393,
	mov	r3, #0	@ tmp391,
	str	fp, [r9, #32]	@ D.33895, p_gmc_22(D)->Uo
	str	r5, [r9, #36]	@ D.33895, p_gmc_22(D)->Vo
	str	lr, [r9, #44]	@ D.33895, p_gmc_22(D)->Vco
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
	str	ip, [sp, #40]	@ D.33895, %sfp
	rsb	r10, r2, #0	@ D.33895, r
	ldr	ip, [sp, #48]	@ rho, %sfp
	add	r2, r5, r4	@ D.33895, alpha, beta
	mul	r0, r1, r10	@ D.33895, sprite_ref$0$0, D.33895
	add	r2, r2, ip	@ D.33895, D.33895, rho
	movge	r4, r5	@ min_ab, alpha
	rsb	r5, r4, r2	@ shift$0, min_ab, D.33895
	mov	ip, #1	@ tmp488,
	sub	r8, r5, #1	@ D.33895, shift$0,
	mov	r8, ip, asl r8	@ D.33895, tmp488,
	ldr	ip, [sp, #28]	@ D.33895, %sfp
	mov	r7, r7, asr r4	@ h3, h2,
	mov	lr, r6, asr r4	@ w3, w2,
	add	r2, ip, r0	@ D.33895, D.33895, D.33895
	ldr	ip, [sp, #8]	@ sprite_ref$0$1, %sfp
	str	r0, [sp, #36]	@ D.33895, %sfp
	mov	r0, fp	@, D.33893
	add	fp, r8, r1, asl r5	@ D.33895, D.33895, sprite_ref$0$0,
	mov	r1, r3	@, D.33895
	add	r8, r8, ip, asl r5	@ D.33895, D.33895, sprite_ref$0$1,
	str	fp, [r9, #32]	@ D.33895, p_gmc_22(D)->Uo
	str	r8, [r9, #36]	@ D.33895, p_gmc_22(D)->Vo
	mul	r4, r7, r2	@ D.33895, h3, D.33895
	str	r3, [sp, #28]	@ D.33895, %sfp
	str	lr, [sp, #20]	@ w3, %sfp
	bl	__aeabi_idiv	@
	mov	r2, r6, asl #1	@ D.33895, w2,
	mov	r6, r6, asl #4	@ tmp368, w2,
	rsb	r6, r6, #0	@ D.33895, tmp368
	ldr	r3, [sp, #28]	@ D.33895, %sfp
	ldr	ip, [sp, #8]	@ sprite_ref$0$1, %sfp
	mul	r6, r7, r6	@ D.33895, h3, D.33895
	mov	r1, r3	@, D.33895
	mul	r2, r7, r2	@ D.33895, h3, D.33895
	add	r3, r5, #1	@ D.33895, shift$0,
	mul	r10, ip, r10	@ D.33895, sprite_ref$0$1, D.33895
	ldr	ip, [sp, #40]	@ D.33895, %sfp
	str	r6, [sp, #28]	@ D.33895, %sfp
	mov	r6, #1	@ tmp498,
	mov	r6, r6, asl r3	@ D.33895, tmp498,
	ldr	r3, [sp, #4]	@ r, %sfp
	str	r6, [sp, #32]	@ D.33895, %sfp
	add	ip, ip, r10	@ D.33895, D.33895, D.33895
	ldr	lr, [sp, #20]	@ w3, %sfp
	mul	r6, r3, r2	@ D.33895, r, D.33895
	ldr	r3, [sp, #36]	@ D.33895, %sfp
	str	r10, [sp, #4]	@ D.33895, %sfp
	ldr	r2, [sp, #16]	@ sprite_ref$0$0, %sfp
	mul	r7, r7, ip	@ D.33895, h3, D.33895
	add	r10, r0, r3	@ D.33895,, D.33895
	ldr	r0, [sp, #24]	@, %sfp
	mul	r10, lr, r10	@ D.33895, w3, D.33895
	ldr	lr, [sp, #32]	@ D.33895, %sfp
	add	r3, r4, r10	@ D.33895, D.33895, D.33895
	mla	r3, r2, r6, r3	@ D.33895, sprite_ref$0$0, D.33895, D.33895
	ldr	r2, [sp, #28]	@ D.33895, %sfp
	add	r3, r3, r2	@ D.33895, D.33895, D.33895
	add	r3, r3, lr	@ D.33895, D.33895, D.33895
	str	r3, [r9, #40]	@ D.33895, p_gmc_22(D)->Uco
	str	r3, [sp, #16]	@ D.33895, %sfp
	bl	__aeabi_idiv	@
	ldr	r1, [sp, #52]	@ D.33895, %sfp
	add	lr, r5, #2	@ shift$1, shift$0,
	ldr	r2, [sp, #4]	@ D.33895, %sfp
	ldr	r3, [sp, #20]	@ w3, %sfp
	ldr	ip, [sp, #8]	@ sprite_ref$0$1, %sfp
	str	r10, [r9, #20]	@ D.33895, p_gmc_22(D)->dU
	str	r4, [r9, #16]	@ D.33895, p_gmc_22(D)->dU
	str	r7, [r9, #24]	@ D.33895, p_gmc_22(D)->dV
	add	r0, r0, r1	@ D.33895,, D.33895
	add	r0, r0, r2	@ D.33895, D.33895, D.33895
	mul	r0, r3, r0	@ D.33895, w3, D.33895
	ldr	r3, [sp, #32]	@ D.33895, %sfp
	add	r2, r7, r0	@ D.33895, D.33895, D.33895
	mla	r6, ip, r6, r2	@ D.33895, sprite_ref$0$1, D.33895, D.33895
	ldr	r2, [sp, #28]	@ D.33895, %sfp
	str	r0, [r9, #28]	@ D.33895, p_gmc_22(D)->dV
	add	r6, r2, r6	@ D.33895, D.33895, D.33895
	add	r6, r3, r6	@ D.33895, D.33895, D.33895
	ldr	r3, [sp, #16]	@ D.33895, %sfp
	str	r6, [r9, #44]	@ D.33895, p_gmc_22(D)->Vco
.L37:
	ldr	r2, [sp, #12]	@ a, %sfp
	cmp	r4, r2, asl r5	@ D.33895, a,
	beq	.L48	@,
.L38:
	rsb	r5, r5, #16	@ shift_y, shift$0,
	rsb	lr, lr, #16	@ shift_c, shift$1,
	mov	fp, fp, asl r5	@ D.33895, D.33895,
	mov	r8, r8, asl r5	@ D.33895, D.33895,
	mov	r2, r4, asl r5	@ D.33895, D.33895,
	mov	r10, r10, asl r5	@ D.33895, D.33895,
	mov	r7, r7, asl r5	@ D.33895, D.33895,
	mov	r3, r3, asl lr	@ D.33895, D.33895,
	mov	r5, r0, asl r5	@ D.33895, D.33895,
	mov	lr, r6, asl lr	@ D.33895, D.33895,
	str	fp, [r9, #32]	@ D.33895, p_gmc_22(D)->Uo
	str	r8, [r9, #36]	@ D.33895, p_gmc_22(D)->Vo
	str	r2, [r9, #16]	@ D.33895, p_gmc_22(D)->dU
	str	r10, [r9, #20]	@ D.33895, p_gmc_22(D)->dU
	str	r7, [r9, #24]	@ D.33895, p_gmc_22(D)->dV
	str	r5, [r9, #28]	@ D.33895, p_gmc_22(D)->dV
	str	r3, [r9, #40]	@ D.33895, p_gmc_22(D)->Uco
	str	lr, [r9, #44]	@ D.33895, p_gmc_22(D)->Vco
.L16:
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L35:
	ldr	r0, [sp, #4]	@ r, %sfp
	mov	r1, r6, asl #1	@ D.33895, w2,
	ldr	r8, [sp, #16]	@ sprite_ref$0$0, %sfp
	rsb	r10, ip, r10	@ D.33895, D.33895, D.33895
	ldr	fp, [sp, #8]	@ sprite_ref$0$1, %sfp
	rsb	r7, r0, #0	@ D.33895, r
	ldr	r2, [sp, #28]	@ D.33895, %sfp
	mov	r6, r6, asl #4	@ tmp341, w2,
	mul	r1, r0, r1	@ D.33895, r, D.33895
	ldr	r3, [sp, #48]	@ rho, %sfp
	mla	r4, r8, r7, r2	@ D.33895, sprite_ref$0$0, D.33895, D.33895
	add	r5, r5, r3	@ shift$0, alpha, rho
	mla	r7, fp, r7, ip	@ D.33895, sprite_ref$0$1, D.33895, D.33895
	rsb	r2, r6, #0	@ D.33895, tmp341
	add	r3, r10, r4	@ D.33895, D.33895, D.33895
	add	r6, r5, #1	@ D.33895, shift$0,
	mov	ip, #1	@ tmp335,
	str	r10, [r9, #20]	@ D.33895, p_gmc_22(D)->dU
	add	lr, r4, r7	@ D.33895, D.33895, D.33895
	mov	r0, ip, asl r6	@ D.33895, tmp335,
	mla	r3, r8, r1, r3	@ D.33895, sprite_ref$0$0, D.33895, D.33895
	mov	r6, r8	@ sprite_ref$0$0, sprite_ref$0$0
	mla	r1, fp, r1, lr	@ D.33895, sprite_ref$0$1, D.33895, D.33895
	sub	r8, r5, #1	@ D.33895, shift$0,
	mov	r8, ip, asl r8	@ D.33895, tmp335,
	add	r3, r3, r2	@ D.33895, D.33895, D.33895
	add	fp, r8, r6, asl r5	@ D.33895, D.33895, sprite_ref$0$0,
	add	r3, r3, r0	@ D.33895, D.33895, D.33895
	add	r6, r2, r1	@ D.33895, D.33895, D.33895
	ldr	r2, [sp, #8]	@ sprite_ref$0$1, %sfp
	add	r6, r0, r6	@ D.33895, D.33895, D.33895
	str	r4, [r9, #16]	@ D.33895, p_gmc_22(D)->dU
	str	r7, [r9, #24]	@ D.33895, p_gmc_22(D)->dV
	mov	r0, r4	@ D.33895, D.33895
	add	r8, r8, r2, asl r5	@ D.33895, D.33895, sprite_ref$0$1,
	ldr	r2, [sp, #12]	@ a, %sfp
	str	r4, [r9, #28]	@ D.33895, p_gmc_22(D)->dV
	add	lr, r5, #2	@ shift$1, shift$0,
	str	r3, [r9, #40]	@ D.33895, p_gmc_22(D)->Uco
	cmp	r4, r2, asl r5	@ D.33895, a,
	str	fp, [r9, #32]	@ D.33895, p_gmc_22(D)->Uo
	str	r6, [r9, #44]	@ D.33895, p_gmc_22(D)->Vco
	str	r8, [r9, #36]	@ D.33895, p_gmc_22(D)->Vo
	bne	.L38	@,
.L48:
	cmp	r10, #0	@ D.33895,
	bne	.L38	@,
	cmp	r7, #0	@ D.33895,
	bne	.L38	@,
	cmp	r4, r0	@ D.33895, D.33895
	bne	.L38	@,
	b	.L40	@
.L34:
	ldr	r2, [sp, #16]	@ sprite_ref$0$0, %sfp
	ldr	r1, [sp, #8]	@ sprite_ref$0$1, %sfp
	and	r3, r2, #1	@ D.33895, sprite_ref$0$0,
	and	r6, r1, #1	@ D.33895, sprite_ref$0$1,
	orr	r3, r3, r2, asr #1	@ D.33895, D.33895, sprite_ref$0$0,
	mov	fp, r2	@ D.33895, sprite_ref$0$0
	orr	r6, r6, r1, asr #1	@ D.33895, D.33895, sprite_ref$0$1,
	mov	r8, r1	@ D.33895, sprite_ref$0$1
	b	.L32	@
.L47:
	ldr	r2, [sp, #12]	@ a, %sfp
	add	r10, ip, r1	@ sprite_ref$1$1, sprite_ref$0$1, D.33895
	ldr	r1, [sp, #12]	@ a, %sfp
	add	fp, lr, fp	@ sprite_ref$2$0, sprite_ref$0$0, D.33895
	str	fp, [sp, #36]	@ sprite_ref$2$0, %sfp
	mla	r2, r8, r2, lr	@ D.33895, D.33895, a, sprite_ref$0$0
	ldr	fp, [sp, #8]	@ D.33895, %sfp
	mla	r1, r3, r1, ip	@ D.33895, D.33895, a, sprite_ref$0$1
	str	lr, [sp, #16]	@ sprite_ref$0$0, %sfp
	add	r2, fp, r2	@ sprite_ref$1$0, D.33895, D.33895
	str	ip, [sp, #8]	@ sprite_ref$0$1, %sfp
	add	r1, r0, r1	@ sprite_ref$2$1, D.33895, D.33895
	str	r1, [sp, #40]	@ sprite_ref$2$1, %sfp
	b	.L22	@
.L31:
	mov	lr, #0	@ shift$1,
	ldr	r4, [r9, #16]	@ D.33895, p_gmc_22(D)->dU
	mov	r5, lr	@ shift$0, shift$1
	ldr	fp, [r9, #32]	@ D.33895, p_gmc_22(D)->Uo
	ldr	r8, [r9, #36]	@ D.33895, p_gmc_22(D)->Vo
	ldr	r3, [r9, #40]	@ D.33895, p_gmc_22(D)->Uco
	ldr	r6, [r9, #44]	@ D.33895, p_gmc_22(D)->Vco
	ldr	r10, [r9, #20]	@ D.33895, p_gmc_22(D)->dU
	ldr	r7, [r9, #24]	@ D.33895, p_gmc_22(D)->dV
	ldr	r0, [r9, #28]	@ D.33895, p_gmc_22(D)->dV
	b	.L37	@
.L41:
	mov	r2, #16	@ D.33895,
	mov	r6, #1	@ w2,
	str	r2, [sp, #44]	@ D.33895, %sfp
	mov	r5, #0	@ alpha,
	b	.L17	@
.L42:
	mov	r2, #16	@ D.33895,
	mov	r7, #1	@ h2,
	str	r2, [sp, #52]	@ D.33895, %sfp
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
	ldr	r3, [r1, r2, asl #2]	@ D.33902, *_5
	cmp	r3, #0	@ D.33902,
	beq	.L56	@,
	mov	r0, r3	@, D.33902
	bx	lr	@
.L56:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r2	@ UserID, UserID
	mov	r5, r1	@ pUserData, pUserData
	bl	GetUsd	@
	cmp	r0, #0	@ D.33902,
	str	r0, [r5, r4, asl #2]	@ D.33902, *_5
	mov	r3, r0	@ D.33902,
	addne	r2, r4, #4	@ D.33900, UserID,
	strne	r2, [r0, #1036]	@ D.33900, _10->from
	ldrne	r3, [r5, r4, asl #2]	@ D.33902, *_5
	mov	r0, r3	@, D.33902
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
	add	r5, r1, #12	@ D.33923, pUserData,
	mov	r7, r0	@ ChanID, ChanID
	mov	r6, #0	@ tmp120,
.L58:
	ldr	r1, [r4, #4]!	@, MEM[base: _18, offset: 0B]
	mov	r0, r7	@, ChanID
	bl	FreeUsdByDec	@
	cmp	r4, r5	@ ivtmp.196, D.33923
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
	add	r0, r4, #20480	@ D.33970, pCtx,
	ldr	r2, .L67+4	@ ivtmp.214,
	add	r0, r0, #116	@ D.33970, D.33970,
.L63:
	ldr	r1, [r2, #4]!	@ MEM[base: _40, offset: 0B], MEM[base: _40, offset: 0B]
	str	r1, [r3, #4]!	@ MEM[base: _40, offset: 0B], MEM[base: _41, offset: 0B]
	cmp	r3, r0	@ ivtmp.220, D.33970
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
	mov	r5, r0	@ last, D.33987
.L72:
	mov	r1, #8	@,
	mov	r0, r8	@, bs
	bl	BsGet	@
	add	ip, r4, #1	@ tmp172, i,
	sxth	r9, r4	@ D.33987, i
	uxth	r3, ip	@ i, tmp172
	add	r1, r7, r9, lsl #2	@ tmp155, tmp171, D.33987,
	sxth	r2, r3	@ i, i
	uxth	r3, r3	@ i, i
	ldr	r1, [r1, #512]	@ D.33987, scan_tables
	mov	r4, r3	@ i, i
	adds	lr, r0, #0	@ D.33990, D.33987,
	str	r0, [r6, r1, asl #2]	@ D.33987, *_20
	movne	lr, #1	@ D.33990,
	cmp	r2, #63	@ i,
	movgt	r2, #0	@, D.33990
	andle	r2, lr, #1	@,, D.33990, D.33990
	cmp	r2, #0	@ D.33990,
	bne	.L76	@,
	cmp	lr, #0	@ D.33990,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r9, #63	@ D.33987,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L75:
	uxth	r4, ip	@ i, tmp172
	str	r5, [r6, r1, asl #2]	@ last, *_33
	add	ip, r4, #1	@ tmp172, i,
	sxth	r3, r4	@ i, i
	cmp	r3, #64	@ i,
	add	r3, r7, r3, lsl #2	@ tmp169, tmp171, i,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r1, [r3, #512]	@ D.33992, scan_tables
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
	add	r0, sp, #4	@ tmp154,,
	bl	BsInit	@
	mov	r1, #32	@,
	add	r0, sp, #4	@ tmp155,,
	bl	BsSkip	@
	mov	r1, #5	@,
	add	r0, sp, #4	@ tmp156,,
	bl	BsGet	@
	mov	r1, #6	@,
	add	r0, sp, #4	@ tmp157,,
	bl	BsGet	@
	add	r0, sp, #4	@ tmp158,,
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r6, r0, #0	@ D.33996,
	bne	.L85	@,
	add	r4, r4, #20480	@ tmp131, pCtx,
	ldr	r1, .L89	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	strb	r6, [r4, #1558]	@ D.33996, pCtx_14(D)->MP4SyntaxState.gop_decode_right
	add	r0, sp, #4	@ tmp159,,
	bl	BsPos	@
	ldr	r3, .L89+4	@ tmp135,
	ldr	r3, [r3]	@ D.33997, g_event_report
	cmp	r3, #0	@ D.33997,
	mov	r5, r0	@ BitUsed,
	beq	.L86	@,
	mov	r2, r6	@, D.33996
	ldr	r0, [r4, #2480]	@, pCtx_14(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.33997
	mov	r0, r5	@ D.33995, BitUsed
.L86:
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L85:
	mov	r1, #6	@,
	add	r0, sp, #4	@ tmp160,,
	bl	BsGet	@
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp161,,
	add	r4, r4, #20480	@ tmp142, pCtx,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #790]	@, pCtx_14(D)->MP4Syntax.closed_gov
	add	r0, sp, #4	@ tmp162,,
	bl	BsGet	@
	mov	r3, #1	@ tmp150,
	strb	r3, [r4, #1558]	@ tmp150, pCtx_14(D)->MP4SyntaxState.gop_decode_right
	strb	r0, [r4, #791]	@, pCtx_14(D)->MP4Syntax.broken_link
	add	r0, sp, #4	@ tmp163,,
	bl	BsPos	@
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L90:
	.align	2
.L89:
	.word	.LC0
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
	mov	r5, r0	@ D.34027, pCtx
	ldrb	r0, [r1, #4]!	@ zero_extendqisi2	@ D.34032, MEM[(HI_U8 *)ptr_44(D) + 4B]
	mov	ip, #4	@ i,
	movw	r7, #1030	@ tmp388,
	mvn	r3, r0, asl #24	@ D.34026, D.34032,
	strb	r0, [r5, #3]!	@ D.34032, pCtx_39(D)->TmpUserData
	mvn	r3, r3, lsr #24	@ D.34026, D.34026,
	mov	r0, r5	@ ivtmp.275, D.34027
	mov	r3, r3, asl #8	@ monitor, D.34026,
	b	.L94	@
.L99:
	ldrb	lr, [r1, #1]!	@ zero_extendqisi2	@ D.34032, MEM[base: _200, offset: 0B]
	orr	r3, r3, lr	@ D.34026, monitor, D.34032
	mov	r3, r3, asl #8	@ monitor, D.34026,
	cmp	r3, #256	@ monitor,
	beq	.L154	@,
	cmp	ip, r7	@ i, tmp388
	strb	lr, [r0, #1]!	@ D.34032, MEM[base: _192, offset: 0B]
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
	mov	r0, r7	@ D.34028, BitUsed
.L149:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L92:
	add	r4, r0, #20480	@ tmp205, pCtx,
	add	r2, r2, #1	@ D.34031, len,
	strb	r3, [r4, #1562]	@ tmp195, pCtx_39(D)->MP4SyntaxState.userdata_decode_right
	mov	r0, r2, asl #3	@ D.34028, D.34031,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L154:
	sub	ip, ip, #2	@ len, i,
	cmp	r2, ip	@ len, len
	bge	.L157	@,
.L98:
	add	r2, r2, #1	@ D.34031, len,
	mov	r0, r2, asl #3	@ D.34028, D.34031,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L156:
	add	r1, r4, #22528	@, pCtx,
	ldr	r2, [r8, #2092]	@, pCtx_39(D)->UserID
	add	r1, r1, #52	@,,
	ldr	r0, [r8, #2480]	@, pCtx_39(D)->ChanID
	bl	Mp4_GetUserDataBuf	@
	cmp	r0, #0	@ D.34034,
	str	r0, [r8, #2116]	@ D.34034, pCtx_39(D)->CurUsrData
	beq	.L102	@,
	cmn	r6, #-2147483648	@ userdata_len,
	sub	r6, r6, #2	@ userdata_len, userdata_len,
	str	r6, [r0, #1048]	@ userdata_len, _64->data_size
	movpl	r2, #0	@ D.34029,
	ldr	r0, [r8, #2116]	@ D.34035, pCtx_39(D)->CurUsrData
	bmi	.L158	@,
.L103:
	mov	r1, r5	@, D.34027
	bl	memcpy	@
	ldr	r2, .L161	@ tmp243,
	ldr	r3, [r8, #1580]	@ pCtx_39(D)->pstExtraData, pCtx_39(D)->pstExtraData
	ldr	r1, [r8, #2116]	@ D.34034, pCtx_39(D)->CurUsrData
	ldr	ip, [r2]	@ D.34039, g_event_report
	ldrd	r2, [r3, #56]	@ D.34038, pCtx_39(D)->pstExtraData,
	add	r1, r1, #1056	@ tmp242, D.34034,
	cmp	ip, #0	@ D.34039,
	strd	r2, [r1]	@ D.34038, _79->PTS
	beq	.L102	@,
	ldr	r3, [r8, #2116]	@ pCtx_39(D)->CurUsrData, pCtx_39(D)->CurUsrData
	add	r2, sp, #32	@ tmp247,,
	mov	r1, #6	@,
	ldr	r0, [r8, #2480]	@, pCtx_39(D)->ChanID
	str	r3, [r2, #-4]!	@ pCtx_39(D)->CurUsrData, para
	blx	ip	@ D.34039
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
	mov	r0, r5	@, D.34027
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
	movne	r3, #0	@ D.34026,
	ldreqsb	r3, [sp, #11]	@ last, last
	str	r2, [r8, #1536]	@ ver, pCtx_39(D)->MP4Syntax.divx_version
	subeq	r3, r3, #112	@ D.34026, last,
	clzeq	r3, r3	@ D.34026, D.34026
	moveq	r3, r3, lsr #5	@ D.34026, D.34026,
	str	r3, [r8, #1544]	@ D.34026, pCtx_39(D)->MP4Syntax.divx_packed
.L106:
	add	r2, sp, #16	@ tmp396,,
	ldr	r1, .L161+8	@,
	mov	r0, r5	@, D.34027
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
	mov	r0, r5	@, D.34027
	bl	sscanf	@
	cmp	r0, #4	@,
	beq	.L108	@,
	str	r4, [sp]	@ tmp280,
	add	r3, sp, #20	@ tmp400,,
	add	r2, sp, #12	@ tmp401,,
	ldr	r1, .L161+16	@,
	mov	r0, r5	@, D.34027
	bl	sscanf	@
	add	r0, r0, #1	@ e,,
	cmp	r0, #1	@ e,
	ble	.L109	@,
	ldr	r2, [sp, #20]	@ ver2, ver2
	ldr	r3, [sp, #12]	@ ver, ver
	ldr	r1, [sp, #24]	@ ver3, ver3
	mov	r2, r2, asl #8	@ D.34031, ver2,
	add	r3, r2, r3, lsl #16	@ D.34031, D.34031, ver,
	add	r3, r3, r1	@ D.34031, D.34031, ver3
	str	r3, [sp, #16]	@ D.34031, build
.L109:
	cmp	r0, #4	@ e,
	beq	.L108	@,
	mov	r2, #7	@,
	ldr	r1, .L161+20	@,
	mov	r0, r5	@, D.34027
	bl	strncmp	@
	cmp	r0, #0	@,
	movweq	r3, #4600	@ tmp296,
	streq	r3, [r8, #1552]	@ tmp296, pCtx_39(D)->MP4Syntax.lavc_build
.L120:
	add	r2, sp, #16	@ tmp402,,
	ldr	r1, .L161+24	@,
	mov	r0, r5	@, D.34027
	bl	sscanf	@
	mov	r3, #0	@ tmp308,
	ldr	r1, [r8, #1536]	@ pCtx_39(D)->MP4Syntax.divx_version, pCtx_39(D)->MP4Syntax.divx_version
	strb	r3, [r8, #801]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA
	strb	r3, [r8, #802]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA2
	strb	r3, [r8, #799]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_EXTEND
	strb	r3, [r8, #798]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_FIND_POINT
	strb	r3, [r8, #800]	@ tmp308, pCtx_39(D)->MP4Syntax.FF_BUG_DIVX500B413
	cmp	r0, #1	@,
	ldreq	r2, [sp, #16]	@ D.34030, build
	ldrne	r2, [r8, #1548]	@ D.34030, pCtx_39(D)->MP4Syntax.xvid_build
	streq	r2, [r8, #1548]	@ D.34030, pCtx_39(D)->MP4Syntax.xvid_build
	cmp	r2, #0	@ D.34030,
	beq	.L113	@,
	cmp	r1, r3	@ pCtx_39(D)->MP4Syntax.divx_version,
	strne	r3, [r8, #1536]	@ tmp308, pCtx_39(D)->MP4Syntax.divx_version
	strne	r3, [r8, #1540]	@ tmp308, pCtx_39(D)->MP4Syntax.divx_build
	cmp	r2, #1	@ D.34030,
	mvnne	r0, #0	@ D.34026,
	movne	r1, #0	@ D.34026,
	beq	.L153	@,
.L123:
	movw	r3, #502	@ tmp335,
	cmp	r1, r3	@ D.34026, tmp335
	bls	.L115	@,
.L122:
	mov	r3, #1	@ tmp338,
	strb	r3, [r8, #802]	@ tmp338, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA2
.L115:
	sub	r2, r2, #1	@ D.34026, D.34030,
	cmp	r2, #11	@ D.34026,
	bhi	.L116	@,
.L124:
	mov	r3, #1	@ tmp343,
	strb	r3, [r8, #799]	@ tmp343, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_EXTEND
.L116:
	ldr	r3, [r8, #1552]	@ pCtx_39(D)->MP4Syntax.lavc_build, pCtx_39(D)->MP4Syntax.lavc_build
	movw	r2, #4668	@ tmp349,
	sub	r3, r3, #1	@ D.34026, pCtx_39(D)->MP4Syntax.lavc_build,
	cmp	r3, r2	@ D.34026, tmp349
	movls	r3, #1	@ tmp352,
	strlsb	r3, [r8, #799]	@ tmp352, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_EXTEND
	movw	r3, #498	@ tmp354,
	cmp	r0, r3	@ D.34026, tmp354
	movls	r3, #1	@ tmp357,
	strlsb	r3, [r8, #799]	@ tmp357, pCtx_39(D)->MP4Syntax.FF_BUG_EDGE_EXTEND
	cmp	r1, #500	@ D.34026,
	bne	.L131	@,
	ldr	r2, [r8, #1540]	@ pCtx_39(D)->MP4Syntax.divx_build, pCtx_39(D)->MP4Syntax.divx_build
	movw	r3, #413	@ tmp362,
	mov	r0, r7	@ D.34028, BitUsed
	cmp	r2, r3	@ pCtx_39(D)->MP4Syntax.divx_build, tmp362
	moveq	r3, #1	@ tmp365,
	streqb	r3, [r8, #800]	@ tmp365, pCtx_39(D)->MP4Syntax.FF_BUG_DIVX500B413
	b	.L149	@
.L155:
	add	r4, r4, #20480	@ tmp212, pCtx,
	mov	r3, #0	@ tmp213,
	movw	r0, #8224	@ D.34028,
	strb	r3, [r4, #1562]	@ tmp213, pCtx_39(D)->MP4SyntaxState.userdata_decode_right
	b	.L149	@
.L108:
	ldr	r3, [sp, #16]	@ build, build
	str	r3, [r8, #1552]	@ build, pCtx_39(D)->MP4Syntax.lavc_build
	b	.L120	@
.L158:
	cmp	r9, #1024	@ userdata_len,
	movlt	r2, r9	@ D.34029, userdata_len
	movge	r2, #1024	@ D.34029,
	b	.L103	@
.L113:
	cmp	r1, #500	@ D.34026,
	subcs	r0, r1, #1	@ D.34026, D.34026,
	movcs	r3, #1	@ tmp378,
	strcsb	r3, [r8, #801]	@ tmp378, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA
	bcs	.L123	@,
	movw	r3, #502	@ tmp375,
	cmp	r1, r3	@ D.34026, tmp375
	sub	r0, r1, #1	@ D.34026, D.34026,
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
	mov	r0, #32	@ D.34028,
	strb	r3, [r4, #1562]	@ tmp371, pCtx_39(D)->MP4SyntaxState.userdata_decode_right
	b	.L149	@
.L157:
	mov	r2, ip	@ len, len
	b	.L151	@
.L160:
	add	r3, sp, #11	@ tmp393,,
	add	r2, sp, #12	@ tmp395,,
	str	r3, [sp]	@ tmp393,
	mov	r0, r5	@, D.34027
	add	r3, sp, #16	@ tmp394,,
	ldr	r1, .L161+28	@,
	bl	sscanf	@
	cmp	r0, #1	@ e,
	ble	.L106	@,
	b	.L105	@
.L153:
	strb	r2, [r8, #801]	@ D.34030, pCtx_39(D)->MP4Syntax.FF_BUG_QPEL_CHROMA
	mvn	r0, #0	@ D.34026,
	mov	r1, #0	@ D.34026,
	b	.L124	@
.L162:
	.align	2
.L161:
	.word	g_event_report
	.word	.LC1
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC2
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
	add	r4, r0, #20480	@ tmp322, pCtx,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r5, r0	@ pCtx, pCtx
	add	r0, sp, #4	@ tmp325,,
	mov	r7, r2	@ len, len
	mov	r6, #1	@ tmp161,
	bl	BsInit	@
	mov	r3, #0	@ tmp157,
	mov	r1, #32	@,
	strb	r3, [r4, #804]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.is_visual_object_identifier
	add	r0, sp, #4	@ tmp326,,
	strb	r3, [r4, #806]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_priority
	add	r5, r5, #16384	@ tmp324, pCtx,
	strb	r3, [r4, #807]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_type
	strb	r3, [r4, #808]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.video_signal_type
	strb	r3, [r4, #809]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.video_format
	strb	r3, [r4, #810]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.video_range
	strb	r3, [r4, #811]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.colour_description
	str	r3, [r4, #816]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.colour_primaries
	str	r3, [r4, #820]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.transfer_characteristics
	str	r3, [r4, #824]	@ tmp157, pCtx_11(D)->MP4Syntax.syn_vos.matrix_coefficients
	strb	r6, [r4, #805]	@ tmp161, pCtx_11(D)->MP4Syntax.syn_vos.visual_object_verid
	bl	BsSkip	@
	mov	r1, r6	@, tmp161
	add	r0, sp, #4	@ tmp327,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34059,
	strb	r0, [r5, #3592]	@ D.34059, pCtx_11(D)->MP4Vos.is_visual_object_identifier
	cmp	r0, #0	@ D.34059,
	streqb	r6, [r5, #3593]	@ tmp161, pCtx_11(D)->MP4Vos.visual_object_verid
	bne	.L179	@,
.L165:
	mov	r1, #4	@,
	add	r0, sp, r1	@ tmp330,,
	bl	BsGet	@
	uxtb	r6, r0	@ D.34059,
	strb	r6, [r5, #3595]	@ D.34059, pCtx_11(D)->MP4Vos.visual_object_type
	cmp	r6, #1	@ D.34059,
	beq	.L180	@,
	mov	r6, #0	@ tmp244,
	add	r0, sp, #4	@ tmp338,,
	strb	r6, [r4, #1557]	@ tmp244, pCtx_11(D)->MP4SyntaxState.vo_decode_right
	bl	BsPos	@
	ldr	r3, .L182	@ tmp247,
	ldr	r3, [r3]	@ D.34060, g_event_report
	cmp	r3, r6	@ D.34060,
	mov	r5, r0	@ BitUsed,
	beq	.L169	@,
	mov	r2, r6	@, tmp244
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34060
	mov	r0, r5	@ D.34057, BitUsed
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
	mov	r1, r6	@, D.34059
	add	r0, sp, #4	@ tmp331,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34059,
	strb	r0, [r5, #3596]	@ D.34059, pCtx_11(D)->MP4Vos.video_signal_type
	cmp	r0, #0	@ D.34059,
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
	mov	r1, r6	@, D.34059
	strb	r0, [r5, #3597]	@, pCtx_11(D)->MP4Vos.video_format
	add	r0, sp, #4	@ tmp333,,
	bl	BsGet	@
	mov	r1, r6	@, D.34059
	strb	r0, [r5, #3598]	@, pCtx_11(D)->MP4Vos.video_range
	add	r0, sp, #4	@ tmp334,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34059,
	strb	r0, [r5, #3599]	@ D.34059, pCtx_11(D)->MP4Vos.colour_description
	cmp	r0, #0	@ D.34059,
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
	add	r6, r0, #20480	@ tmp817, pCtx,
	mov	r7, r0	@ pCtx, pCtx
	ldr	r3, .L345	@ tmp332,
	ldr	r0, [r6, #2480]	@ pCtx_45(D)->ChanID, pCtx_45(D)->ChanID
	add	r8, r7, #19968	@ __p, pCtx,
	.pad #36
	sub	sp, sp, #36	@,,
	add	r8, r8, #32	@ __p, __p,
	add	r4, r7, #16384	@ tmp816, pCtx,
	ldr	r3, [r3, r0, asl #2]	@ D.34116, s_pstVfmwChan
	add	r0, sp, #4	@ tmp820,,
	cmp	r3, #0	@ D.34116,
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
	add	r0, sp, #4	@ tmp821,,
	bl	BsSkip	@
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp822,,
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #3620]	@, pCtx_45(D)->MP4Vol.random_accessible_vol
	add	r0, sp, #4	@ tmp823,,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #3644]	@, pCtx_45(D)->MP4Vol.video_object_type_indication
	add	r0, sp, #4	@ tmp824,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3616]	@ D.34117, pCtx_45(D)->MP4Vol.is_object_layer_identifier
	cmp	r0, #0	@ D.34117,
	ldreqb	r3, [r6, #805]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Syntax.syn_vos.visual_object_verid, pCtx_45(D)->MP4Syntax.syn_vos.visual_object_verid
	streqb	r3, [r4, #3617]	@ pCtx_45(D)->MP4Syntax.syn_vos.visual_object_verid, pCtx_45(D)->MP4Vol.video_object_layer_verid
	bne	.L333	@,
.L187:
	mov	r1, #4	@,
	add	r0, sp, r1	@ tmp827,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3619]	@ D.34117, pCtx_45(D)->MP4Vol.aspect_ratio_info
	cmp	r0, #15	@ D.34117,
	beq	.L334	@,
.L188:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp830,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3621]	@ D.34117, pCtx_45(D)->MP4Vol.vol_control_parameters
	cmp	r0, #0	@ D.34117,
	moveq	r3, #1	@ tmp472,
	streqb	r3, [r4, #3622]	@ tmp472, pCtx_45(D)->MP4Vol.chroma_format
	bne	.L335	@,
.L193:
	mov	r1, #2	@,
	add	r0, sp, #4	@ tmp851,,
	bl	BsGet	@
	uxtb	r5, r0	@ D.34117,
	strb	r5, [r4, #3624]	@ D.34117, pCtx_45(D)->MP4Vol.video_object_layer_shape
	cmp	r5, #0	@ D.34117,
	addne	r0, sp, #4	@ tmp852,,
	movne	r5, #0	@ tmp480,
	beq	.L336	@,
.L327:
	strb	r5, [r6, #1559]	@ tmp780, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp783,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, r5	@ D.34119,
	mov	r4, r0	@ BitUsed,
	beq	.L264	@,
.L306:
	mov	r2, r5	@, tmp780
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34119
	mov	r0, r4	@ D.34109, BitUsed
.L299:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L336:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp853,,
	bl	BsGet	@
	subs	fp, r0, #0	@ D.34111,
	beq	.L337	@,
	mov	r1, #16	@,
	add	r0, sp, #4	@ tmp855,,
	bl	BsGet	@
	cmp	r0, #0	@ D.34111,
	str	r0, [r4, #3688]	@ D.34111, pCtx_45(D)->MP4Vol.vop_time_increment_resolution
	beq	.L201	@,
	subs	r0, r0, #1	@ value, D.34111,
	beq	.L201	@,
	mov	r3, r0	@ value, value
.L203:
	add	r5, r5, #1	@ tmp502, n,
	movs	r3, r3, lsr #1	@ value, value,
	uxth	r5, r5	@ n, tmp502
	bne	.L203	@,
	sxth	r5, r5	@ n, n
	cmp	r5, #0	@ n,
	ble	.L201	@,
.L205:
	add	r3, r3, #1	@ tmp504, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp504
	bne	.L205	@,
	sxth	r3, r3	@ D.34110, n
.L302:
	str	r3, [r4, #3684]	@ tmp509, pCtx_45(D)->MP4Vol.vop_time_incr_bits
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp856,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	beq	.L312	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp858,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3625]	@ D.34117, pCtx_45(D)->MP4Vol.fixed_vop_rate
	cmp	r0, #0	@ D.34117,
	bne	.L338	@,
.L208:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp860,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	beq	.L312	@,
	mov	r1, #13	@,
	add	r0, sp, #4	@ tmp862,,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #3696]	@, pCtx_45(D)->MP4Vol.video_object_layer_width
	add	r0, sp, #4	@ tmp863,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	beq	.L312	@,
	mov	r1, #13	@,
	add	r0, sp, #4	@ tmp865,,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #3700]	@, pCtx_45(D)->MP4Vol.video_object_layer_height
	add	r0, sp, #4	@ tmp866,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	beq	.L312	@,
	ldr	r3, [r4, #3696]	@ D.34118, pCtx_45(D)->MP4Vol.video_object_layer_width
	cmp	r3, #31	@ D.34118,
	bls	.L212	@,
	ldr	r2, [r4, #3700]	@ D.34118, pCtx_45(D)->MP4Vol.video_object_layer_height
	cmp	r2, #31	@ D.34118,
	bls	.L212	@,
	mul	r3, r3, r2	@ D.34118, D.34118, D.34118
	mul	r9, r9, r10	@ D.34111, MaxVerSize, MaxHorSize
	cmp	r3, r9	@ D.34118, D.34111
	bls	.L213	@,
.L212:
	mov	r5, #0	@ tmp578,
	add	r0, sp, #4	@ tmp868,,
	strb	r5, [r6, #1559]	@ tmp578, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp581,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, r5	@ D.34119,
	mov	r4, r0	@ BitUsed,
	bne	.L310	@,
.L264:
	mov	r0, r4	@ D.34109, BitUsed
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L335:
	mov	r1, #2	@,
	add	r0, sp, #4	@ tmp831,,
	bl	BsGet	@
	uxtb	fp, r0	@ D.34117,
	strb	fp, [r4, #3622]	@ D.34117, pCtx_45(D)->MP4Vol.chroma_format
	cmp	fp, #1	@ D.34117,
	beq	.L190	@,
	mov	r3, #0	@ tmp388,
	add	r0, sp, #4	@ tmp832,,
	strb	r3, [r6, #1559]	@ tmp388, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L333:
	mov	r1, #4	@,
	add	r0, sp, r1	@ tmp825,,
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #3617]	@, pCtx_45(D)->MP4Vol.video_object_layer_verid
	add	r0, sp, #4	@ tmp826,,
	bl	BsGet	@
	strb	r0, [r4, #3618]	@, pCtx_45(D)->MP4Vol.video_object_layer_priority
	b	.L187	@
.L337:
	ldr	r1, .L345+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	strb	fp, [r6, #1559]	@ D.34111, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp854,,
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp494,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, #0	@ D.34119,
	mov	r4, r0	@ BitUsed,
	beq	.L264	@,
	mov	r2, fp	@, D.34111
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.34119
	mov	r0, r4	@ D.34109, BitUsed
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L190:
	mov	r1, fp	@, D.34117
	add	r0, sp, #4	@ tmp833,,
	bl	BsGet	@
	mov	r1, fp	@, D.34117
	strb	r0, [r4, #3623]	@, pCtx_45(D)->MP4Vol.low_delay
	add	r0, sp, #4	@ tmp834,,
	bl	BsGet	@
	cmp	r0, #0	@ D.34111,
	str	r0, [r4, #3656]	@ D.34111, pCtx_45(D)->MP4Vol.vbv_parameters
	beq	.L193	@,
	mov	r1, #15	@,
	add	r0, sp, #4	@ tmp835,,
	bl	BsGet	@
	mov	r1, fp	@, D.34117
	str	r0, [r4, #3660]	@, pCtx_45(D)->MP4Vol.first_half_bit_rate
	add	r0, sp, #4	@ tmp836,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	beq	.L329	@,
	mov	r1, #15	@,
	add	r0, sp, #4	@ tmp838,,
	bl	BsGet	@
	mov	r1, fp	@, D.34117
	str	r0, [r4, #3664]	@, pCtx_45(D)->MP4Vol.latter_half_bit_rate
	add	r0, sp, #4	@ tmp839,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	beq	.L329	@,
	mov	r1, #15	@,
	add	r0, sp, #4	@ tmp841,,
	bl	BsGet	@
	mov	r1, fp	@, D.34117
	str	r0, [r4, #3668]	@, pCtx_45(D)->MP4Vol.first_half_vbv_buffer_size
	add	r0, sp, #4	@ tmp842,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	beq	.L329	@,
	mov	r1, #3	@,
	add	r0, sp, #4	@ tmp844,,
	bl	BsGet	@
	mov	r1, #11	@,
	str	r0, [r4, #3672]	@, pCtx_45(D)->MP4Vol.latter_half_vbv_buffer_size
	add	r0, sp, #4	@ tmp845,,
	bl	BsGet	@
	mov	r1, fp	@, D.34117
	str	r0, [r4, #3676]	@, pCtx_45(D)->MP4Vol.first_half_vbv_occupancy
	add	r0, sp, #4	@ tmp846,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	beq	.L329	@,
	mov	r1, #15	@,
	add	r0, sp, #4	@ tmp848,,
	bl	BsGet	@
	mov	r1, fp	@, D.34117
	str	r0, [r4, #3680]	@, pCtx_45(D)->MP4Vol.latter_half_vbv_occupancy
	add	r0, sp, #4	@ tmp849,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.34111,
	bne	.L193	@,
.L329:
	mov	r0, fp	@, D.34117
	ldr	r1, .L345+8	@,
	b	.L315	@
.L312:
	ldr	r1, .L345+8	@,
	mov	r0, #1	@,
.L315:
	bl	dprint_vfmw	@
	strb	r5, [r6, #1559]	@ D.34111, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp867,,
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp566,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, #0	@ D.34119,
	mov	r4, r0	@ BitUsed,
	beq	.L264	@,
.L310:
	mov	r2, r5	@, tmp578
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.34119
	mov	r0, r4	@ D.34109, BitUsed
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L334:
	mov	r1, #8	@,
	add	r0, sp, #4	@ tmp828,,
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r4, #3648]	@, pCtx_45(D)->MP4Vol.par_width
	add	r0, sp, #4	@ tmp829,,
	bl	BsGet	@
	str	r0, [r4, #3652]	@, pCtx_45(D)->MP4Vol.par_height
	b	.L188	@
.L201:
	mov	r3, #1	@ tmp509,
	b	.L302	@
.L338:
	ldr	r1, [r4, #3684]	@, pCtx_45(D)->MP4Vol.vop_time_incr_bits
	add	r0, sp, #4	@ tmp859,,
	bl	BsGet	@
	str	r0, [r4, #3692]	@, pCtx_45(D)->MP4Vol.fixed_vop_time_increment
	b	.L208	@
.L213:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp869,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #3626]	@, pCtx_45(D)->MP4Vol.interlaced
	add	r0, sp, #4	@ tmp870,,
	bl	BsGet	@
	uxtb	r2, r0	@ D.34117,
	strb	r2, [r4, #3627]	@ D.34117, pCtx_45(D)->MP4Vol.obmc_disable
	cmp	r2, #0	@ D.34117,
	bne	.L215	@,
	ldr	r3, .L345+4	@ tmp597,
	strb	r2, [r6, #1559]	@ D.34117, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, #0	@ D.34119,
	beq	.L215	@,
	mov	r1, #102	@,
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	blx	r3	@ D.34119
.L215:
	ldrb	r3, [r4, #3617]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Vol.video_object_layer_verid, pCtx_45(D)->MP4Vol.video_object_layer_verid
	add	r0, sp, #4	@ tmp871,,
	cmp	r3, #1	@ pCtx_45(D)->MP4Vol.video_object_layer_verid,
	moveq	r1, #1	@,
	movne	r1, #2	@,
	bl	BsGet	@
	uxtb	r5, r0	@ D.34117,
	strb	r5, [r4, #3628]	@ D.34117, pCtx_45(D)->MP4Vol.sprite_enable
	cmp	r5, #0	@ D.34117,
	beq	.L218	@,
	ldr	r3, .L345+12	@ tmp607,
	ldr	r9, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r9, r9, #8	@ D.34111, g_VdmCharacter,
	beq	.L339	@,
	sub	r3, r5, #1	@ tmp620, D.34117,
	cmp	r3, #1	@ tmp620,
	bls	.L340	@,
	mov	r5, #0	@ tmp656,
	add	r0, sp, #4	@ tmp878,,
	strb	r5, [r6, #1559]	@ tmp656, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp659,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, r5	@ D.34119,
	mov	r4, r0	@ BitUsed,
	beq	.L225	@,
	mov	r2, r5	@, tmp656
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34119
.L225:
	ldr	r1, .L345+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34109, BitUsed
	b	.L299	@
.L341:
	mov	r1, #6	@,
	add	r0, sp, #4	@ tmp874,,
	bl	BsGet	@
	mov	r1, r5	@, D.34117
	strb	r0, [r4, #3640]	@, pCtx_45(D)->MP4Vol.sprite_warping_points
	add	r0, sp, #4	@ tmp875,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #3641]	@, pCtx_45(D)->MP4Vol.sprite_warping_accuracy
	add	r0, sp, #4	@ tmp876,,
	bl	BsGet	@
	ldrb	r3, [r4, #3628]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Vol.sprite_enable, pCtx_45(D)->MP4Vol.sprite_enable
	cmp	r3, #2	@ pCtx_45(D)->MP4Vol.sprite_enable,
	strb	r0, [r4, #3642]	@, pCtx_45(D)->MP4Vol.sprite_brightness_change
	bne	.L331	@,
.L218:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp879,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3629]	@ D.34117, pCtx_45(D)->MP4Vol.not_8_bit
	cmp	r0, #0	@ D.34117,
	beq	.L226	@,
	mov	r5, #0	@ tmp669,
	add	r0, sp, #4	@ tmp880,,
	strb	r5, [r6, #1559]	@ tmp669, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp672,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, r5	@ D.34119,
	mov	r4, r0	@ BitUsed,
	beq	.L227	@,
	mov	r2, r5	@, tmp669
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34119
.L227:
	ldr	r1, .L345+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34109, BitUsed
	b	.L299	@
.L340:
	cmp	r5, #2	@ D.34117,
	beq	.L341	@,
.L331:
	mov	r5, #0	@ tmp647,
	add	r0, sp, #4	@ tmp877,,
	strb	r5, [r6, #1559]	@ tmp647, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp650,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, r5	@ D.34119,
	mov	r4, r0	@ BitUsed,
	beq	.L224	@,
	mov	r2, r5	@, tmp647
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34119
.L224:
	ldr	r1, .L345+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34109, BitUsed
	b	.L299	@
.L226:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp881,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3630]	@ D.34117, pCtx_45(D)->MP4Vol.quant_type
	cmp	r0, #0	@ D.34117,
	bne	.L342	@,
.L229:
	ldrb	r3, [r4, #3617]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Vol.video_object_layer_verid, pCtx_45(D)->MP4Vol.video_object_layer_verid
	cmp	r3, #1	@ pCtx_45(D)->MP4Vol.video_object_layer_verid,
	moveq	r3, #0	@ tmp704,
	streqb	r3, [r4, #3633]	@ tmp704, pCtx_45(D)->MP4Vol.quarter_sample
	beq	.L236	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp885,,
	bl	BsGet	@
	strb	r0, [r4, #3633]	@, pCtx_45(D)->MP4Vol.quarter_sample
.L236:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp886,,
	bl	BsGet	@
	uxtb	r5, r0	@ D.34117,
	strb	r5, [r4, #3634]	@ D.34117, pCtx_45(D)->MP4Vol.complexity_estimation_disable
	cmp	r5, #0	@ D.34117,
	ldreq	r1, .L345+28	@,
	beq	.L325	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp888,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #3635]	@, pCtx_45(D)->MP4Vol.resync_marker_disable
	add	r0, sp, #4	@ tmp889,,
	bl	BsGet	@
	uxtb	r5, r0	@ D.34117,
	strb	r5, [r4, #3636]	@ D.34117, pCtx_45(D)->MP4Vol.data_partitioned
	cmp	r5, #0	@ D.34117,
	ldrne	r1, .L345+32	@,
	bne	.L323	@,
	ldrb	r3, [r4, #3617]	@ zero_extendqisi2	@ pCtx_45(D)->MP4Vol.video_object_layer_verid, pCtx_45(D)->MP4Vol.video_object_layer_verid
	cmp	r3, #1	@ pCtx_45(D)->MP4Vol.video_object_layer_verid,
	beq	.L239	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp891,,
	bl	BsGet	@
	uxtb	r9, r0	@ D.34117,
	strb	r9, [r4, #3637]	@ D.34117, pCtx_45(D)->MP4Vol.newpred_enable
	cmp	r9, #0	@ D.34117,
	beq	.L240	@,
	ldr	r1, .L345+36	@,
.L325:
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	strb	r5, [r6, #1559]	@ D.34117, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp892,,
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp749,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, #0	@ D.34119,
	mov	r4, r0	@ BitUsed,
	bne	.L306	@,
	b	.L264	@
.L339:
	strb	r9, [r6, #1559]	@ D.34111, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp872,,
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp615,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, #0	@ D.34119,
	mov	r4, r0	@ BitUsed,
	beq	.L220	@,
	mov	r2, r9	@, D.34111
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34119
.L220:
	ldr	r1, .L345+40	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34109, BitUsed
	b	.L299	@
.L342:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp882,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3631]	@ D.34117, pCtx_45(D)->MP4Vol.load_intra_quant_mat
	cmp	r0, #0	@ D.34117,
	bne	.L343	@,
	add	r3, r7, #19968	@ ivtmp.325, pCtx,
	add	r1, r7, #20224	@ D.34113, pCtx,
	ldr	r2, .L345+44	@ ivtmp.319,
	add	r3, r3, #116	@ ivtmp.325, ivtmp.325,
	add	r1, r1, #116	@ D.34113, D.34113,
.L232:
	ldr	r0, [r2, #4]!	@ MEM[base: _2, offset: 0B], MEM[base: _2, offset: 0B]
	str	r0, [r3, #4]!	@ MEM[base: _2, offset: 0B], MEM[base: _34, offset: 0B]
	cmp	r3, r1	@ ivtmp.325, D.34113
	bne	.L232	@,
.L231:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp898,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3632]	@ D.34117, pCtx_45(D)->MP4Vol.load_nonintra_quant_mat
	cmp	r0, #0	@ D.34117,
	bne	.L244	@,
	add	r3, r7, #20224	@ ivtmp.306, pCtx,
	add	r1, r7, #20480	@ D.34113, pCtx,
	ldr	r2, .L345+48	@ ivtmp.300,
	add	r3, r3, #116	@ ivtmp.306, ivtmp.306,
	add	r1, r1, #116	@ D.34113, D.34113,
.L233:
	ldr	r0, [r2, #4]!	@ MEM[base: _33, offset: 0B], MEM[base: _33, offset: 0B]
	str	r0, [r3, #4]!	@ MEM[base: _33, offset: 0B], MEM[base: _11, offset: 0B]
	cmp	r3, r1	@ ivtmp.306, D.34113
	bne	.L233	@,
	b	.L229	@
.L240:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp893,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3638]	@ D.34117, pCtx_45(D)->MP4Vol.reduced_resolution_vop_enable
	cmp	r0, #0	@ D.34117,
	bne	.L344	@,
.L241:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp895,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34117,
	strb	r0, [r4, #3639]	@ D.34117, pCtx_45(D)->MP4Vol.scalability
	cmp	r0, #0	@ D.34117,
	beq	.L242	@,
	ldr	r1, .L345+52	@,
.L323:
	mov	r0, #1	@,
	mov	r5, #0	@ tmp780,
	bl	dprint_vfmw	@
	add	r0, sp, #4	@ tmp896,,
	b	.L327	@
.L242:
	add	r0, r7, #20480	@, pCtx,
	mov	r3, #1	@ tmp788,
	mov	r1, r8	@, __p
	mov	r2, #604	@,
	strb	r3, [r6, #1559]	@ tmp788, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, r0, #124	@,,
	strb	r3, [r6, #789]	@ tmp788, pCtx_45(D)->MP4Syntax.vol_decode_over
	strb	r3, [r6, #1560]	@ tmp788, pCtx_45(D)->MP4SyntaxState.last_vol_decode_right
	bl	memcpy	@
	add	r0, sp, #4	@ tmp897,,
	bl	BsPos	@
	b	.L299	@
.L344:
	ldr	r1, .L345+56	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	strb	r9, [r6, #1559]	@ D.34117, pCtx_45(D)->MP4SyntaxState.vol_decode_right
	add	r0, sp, #4	@ tmp894,,
	bl	BsPos	@
	ldr	r3, .L345+4	@ tmp762,
	ldr	r3, [r3]	@ D.34119, g_event_report
	cmp	r3, #0	@ D.34119,
	mov	r4, r0	@ BitUsed,
	beq	.L264	@,
	mov	r2, r9	@, D.34117
	ldr	r0, [r6, #2480]	@, pCtx_45(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34119
	mov	r0, r4	@ D.34109, BitUsed
	b	.L299	@
.L239:
	strb	r5, [r4, #3637]	@ D.34117, pCtx_45(D)->MP4Vol.newpred_enable
	strb	r5, [r4, #3638]	@ D.34117, pCtx_45(D)->MP4Vol.reduced_resolution_vop_enable
	b	.L241	@
.L343:
	add	r1, r7, #19968	@, pCtx,
	add	r0, sp, #4	@ tmp883,,
	add	r1, r1, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L231	@
.L244:
	add	r1, r7, #20224	@, pCtx,
	add	r0, sp, #4	@ tmp884,,
	add	r1, r1, #120	@,,
	bl	Bs_Get_Matrix	@
	b	.L229	@
.L346:
	.align	2
.L345:
	.word	s_pstVfmwChan
	.word	g_event_report
	.word	.LC8
	.word	g_VdmCharacter
	.word	.LC11
	.word	.LC12
	.word	.LC10
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC9
	.word	.LANCHOR1-4
	.word	.LANCHOR1+252
	.word	.LC17
	.word	.LC16
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
	add	r5, r0, #20480	@ tmp129, pCtx,
	.pad #36
	sub	sp, sp, #36	@,,
	add	r4, r0, #16384	@ tmp134, pCtx,
	add	r0, sp, #4	@ tmp175,,
	bl	BsInit	@
	mov	r3, #0	@ tmp130,
	mov	r1, #32	@,
	str	r3, [r5, #812]	@ tmp130, pCtx_6(D)->MP4Syntax.syn_vos.profile_and_level_indication
	add	r0, sp, #4	@ tmp176,,
	bl	BsSkip	@
	add	r0, sp, #4	@ tmp177,,
	mov	r1, #8	@,
	bl	BsGet	@
	sub	r2, r0, #240	@ D.34140, D.34136,
	sub	r3, r0, #1	@ D.34137, D.34136,
	cmp	r2, #5	@ D.34140,
	cmphi	r3, #2	@, D.34137,
	str	r0, [r4, #3600]	@ D.34136, pCtx_6(D)->MP4Vos.profile_and_level_indication
	movls	r2, #1	@ tmp141,
	movhi	r2, #0	@ tmp141,
	cmp	r0, #8	@ D.34136,
	orreq	r2, r2, #1	@,, tmp147, tmp141
	cmp	r2, #0	@ tmp147,
	strne	r0, [r5, #812]	@ D.34136, pCtx_6(D)->MP4Syntax.syn_vos.profile_and_level_indication
	movne	r3, #1	@ tmp150,
	strneb	r3, [r5, #1556]	@ tmp150, pCtx_6(D)->MP4SyntaxState.vos_decode_right
	bne	.L349	@,
	cmp	r0, #0	@ D.34136,
	beq	.L355	@,
	ldr	r3, .L356	@ tmp168,
	strb	r2, [r5, #1556]	@ tmp147, pCtx_6(D)->MP4SyntaxState.vos_decode_right
	ldr	r3, [r3]	@ D.34139, g_event_report
	cmp	r3, #0	@ D.34139,
	beq	.L349	@,
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34139
.L349:
	add	r0, sp, #4	@ tmp178,,
	bl	BsPos	@
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L355:
	mov	r2, r0	@, D.34136
	ldr	r1, .L356+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ tmp157,
	strb	r3, [r5, #1556]	@ tmp157, pCtx_6(D)->MP4SyntaxState.vos_decode_right
	ldr	r3, [r4, #3600]	@ pCtx_6(D)->MP4Vos.profile_and_level_indication, pCtx_6(D)->MP4Vos.profile_and_level_indication
	str	r3, [r5, #812]	@ pCtx_6(D)->MP4Vos.profile_and_level_indication, pCtx_6(D)->MP4Syntax.syn_vos.profile_and_level_indication
	b	.L349	@
.L357:
	.align	2
.L356:
	.word	g_event_report
	.word	.LC18
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
	add	r4, r0, #20480	@ tmp226, pCtx,
	mov	r7, r2	@ PicHeight, PicHeight
	.pad #68
	sub	sp, sp, #68	@,,
	ldr	r2, [r4, #1580]	@ D.34146, pCtx_14(D)->pstExtraData
	mov	r6, r1	@ PicWidth, PicWidth
	ldr	r5, [r2, #608]	@ D.34144, _15->stChanOption.s32ReRangeEn
	ldr	r3, [r2, #32]	@ _15->eCapLevel, _15->eCapLevel
	cmp	r5, #0	@ D.34144,
	bne	.L359	@,
	cmp	r3, #25	@ _15->eCapLevel,
	beq	.L389	@,
.L381:
	mov	r8, #2	@ PmvNum,
	mov	r9, #5	@ DispFsNum,
	mov	r10, #3	@ DecFsNum,
.L360:
	ldr	r3, .L392	@ tmp171,
	ldr	ip, [r3, #36]	@ D.34150, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.34150,
	beq	.L371	@,
	ldr	r5, .L392+4	@ tmp176,
	mov	fp, #16	@ tmp175,
	ldr	r1, [r2, #28]	@ _15->s32SyntaxMemSize, _15->s32SyntaxMemSize
	mov	r3, #0	@ tmp180,
	ldr	r0, [r2, #24]	@ _15->s32SyntaxMemAddr, _15->s32SyntaxMemAddr
	mov	lr, #2	@ tmp182,
	str	r5, [sp, #16]	@ tmp176,
	mov	r2, #40	@ tmp181,
	str	fp, [sp, #20]	@ tmp175,
	ldr	fp, [r4, #2480]	@ pCtx_14(D)->ChanID, pCtx_14(D)->ChanID
	str	r3, [sp, #8]	@ tmp180,
	mov	r3, r7	@, PicHeight
	str	r2, [sp, #4]	@ tmp181,
	mov	r2, r6	@, PicWidth
	str	fp, [sp, #12]	@ pCtx_14(D)->ChanID,
	str	lr, [sp]	@ tmp182,
	blx	ip	@ D.34150
	subs	fp, r0, #0	@ D.34148,
	bne	.L371	@,
	ldr	r2, [r5, #404]	@ D.34148, MemArrange.ValidPMVNum
	ldr	r3, [r5, #276]	@ D.34148, MemArrange.ValidFrameNum
	cmp	r2, #1	@ D.34148,
	ble	.L373	@,
	cmp	r3, #2	@ D.34148,
	ble	.L373	@,
	ldr	r0, [r5, #8]	@ D.34148, MemArrange.FrameAddr
	str	r0, [r4, #1600]	@ D.34148, pCtx_14(D)->VdmMemAllot.frame_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r1, #36	@,
	str	r0, [r4, #1588]	@, pCtx_14(D)->VdmMemAllot.frame_vir_addr
	add	r0, sp, #28	@ tmp228,,
	bl	__memzero	@
	ldr	r3, [r4, #1580]	@ D.34146, pCtx_14(D)->pstExtraData
	strb	fp, [sp, #30]	@ D.34148, FspInstCfg.s32RprEnable
	str	r6, [sp, #40]	@ PicWidth, FspInstCfg.s32DecFsWidth
	ldr	r2, [r3, #20]	@ _61->s32DnrDispOutEnable, _61->s32DnrDispOutEnable
	str	r7, [sp, #60]	@ PicHeight, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _61->eCapLevel, _61->eCapLevel
	str	r7, [sp, #44]	@ PicHeight, FspInstCfg.s32DecFsHeight
	cmp	r3, #24	@ _61->eCapLevel,
	strb	r2, [sp, #28]	@ _61->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r6, [sp, #56]	@ PicWidth, FspInstCfg.s32DispFsWidth
	beq	.L375	@,
	uxtb	r8, r8	@ D.34145, PmvNum
	strb	r10, [sp, #33]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r9, [sp, #35]	@ DispFsNum, FspInstCfg.s32ExpectedDispFsNum
.L378:
	add	r1, sp, #28	@ tmp229,,
	ldr	r0, [r4, #2480]	@, pCtx_14(D)->ChanID
	strb	r8, [sp, #36]	@ D.34145, FspInstCfg.s32ExpectedPmvNum
	mov	r6, #0	@ tmp203,
	strb	r6, [sp, #32]	@ tmp203, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.34144,
	bne	.L376	@,
	ldr	r1, [r4, #1580]	@ D.34146, pCtx_14(D)->pstExtraData
	add	r3, sp, #24	@,,
	ldr	r0, [r4, #2480]	@, pCtx_14(D)->ChanID
	ldr	r2, [r1, #28]	@, _82->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _82->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r6	@,
	moveq	r3, #1	@ tmp220,
	streq	r3, [r4, #2484]	@ tmp220, pCtx_14(D)->FspPartitionOK
	bne	.L390	@,
.L384:
	mov	r0, r5	@, D.34144
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L359:
	cmp	r3, #25	@ _15->eCapLevel,
	bne	.L381	@,
	ldr	r1, [r2, #568]	@ D.34148, _15->stChanOption.s32MaxWidth
	ldr	r3, [r2, #572]	@ D.34148, _15->stChanOption.s32MaxHeight
	cmp	r6, r1	@ PicWidth, D.34148
	bhi	.L367	@,
	cmp	r7, r3	@ PicHeight, D.34148
	bhi	.L367	@,
	ldr	r3, [r2, #596]	@ _15->stChanOption.s32SupportBFrame, _15->stChanOption.s32SupportBFrame
	ldr	r10, [r2, #588]	@ DecFsNum, _15->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _15->stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	bne	.L391	@,
	ldr	r9, [r2, #616]	@ DispFsNum, _15->stChanOption.s32DisplayFrameNum
	b	.L360	@
.L375:
	strb	fp, [sp, #33]	@ D.34148, FspInstCfg.s32ExpectedDecFsNum
	mov	r8, #1	@ D.34145,
	strb	r9, [sp, #35]	@ DispFsNum, FspInstCfg.s32ExpectedDispFsNum
	b	.L378	@
.L389:
	ldr	r1, [r2, #568]	@ D.34148, _15->stChanOption.s32MaxWidth
	cmp	r1, r6	@ D.34148, PicWidth
	ldrcc	r0, [r2, #572]	@ D.34148, _15->stChanOption.s32MaxHeight
	bcc	.L362	@,
	ldr	r3, [r2, #572]	@ PicHeight, _15->stChanOption.s32MaxHeight
	cmp	r3, r7	@ PicHeight, PicHeight
	mov	r0, r3	@ D.34148, PicHeight
	bcc	.L362	@,
	ldr	r0, [r4, #2484]	@ pCtx_14(D)->FspPartitionOK, pCtx_14(D)->FspPartitionOK
	cmp	r0, #1	@ pCtx_14(D)->FspPartitionOK,
	beq	.L384	@,
	ldr	r0, [r2, #596]	@ _15->stChanOption.s32SupportBFrame, _15->stChanOption.s32SupportBFrame
	ldr	r10, [r2, #588]	@ DecFsNum, _15->stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ _15->stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L365	@,
	add	r8, r10, #1	@ PmvNum, DecFsNum,
	cmp	r8, #17	@ PmvNum,
	movge	r8, #17	@ PmvNum,
.L365:
	mov	r7, r3	@ PicHeight, PicHeight
	mov	r6, r1	@ PicWidth, D.34148
	ldr	r9, [r2, #616]	@ DispFsNum, _15->stChanOption.s32DisplayFrameNum
	b	.L360	@
.L391:
	add	r8, r10, #1	@ PmvNum, DecFsNum,
	ldr	r9, [r2, #616]	@ DispFsNum, _15->stChanOption.s32DisplayFrameNum
	cmp	r8, #17	@ PmvNum,
	movge	r8, #17	@ PmvNum,
	b	.L360	@
.L373:
	ldr	r1, .L392+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.34144,
	b	.L384	@
.L371:
	ldr	r1, .L392+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.34144,
	b	.L384	@
.L376:
	mov	r0, r6	@, tmp203
	ldr	r1, .L392+16	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.34144,
	b	.L384	@
.L367:
	str	r3, [sp, #4]	@ D.34148,
.L388:
	str	r1, [sp]	@ D.34148,
	mov	r3, r7	@, PicHeight
	mov	r2, r6	@, PicWidth
	ldr	r1, .L392+20	@,
	mov	r0, #0	@,
	mvn	r5, #0	@ D.34144,
	bl	dprint_vfmw	@
	b	.L384	@
.L390:
	mov	r0, r5	@, D.34144
	ldr	r1, .L392+24	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.34144,
	b	.L384	@
.L362:
	str	r0, [sp, #4]	@ D.34148,
	b	.L388	@
.L393:
	.align	2
.L392:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR2
	.word	.LC21
	.word	.LC20
	.word	.LC23
	.word	.LC19
	.word	.LC22
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r8, r0, #20480	@ tmp369, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r1	@ id, id
	ldrb	r3, [r8, #831]	@ zero_extendqisi2	@ D.34163, pCtx_12(D)->MP4Syntax.syn_vol.aspect_ratio_info
	cmp	r3, #15	@ D.34163,
	beq	.L412	@,
	sub	r2, r3, #2	@ tmp244, D.34163,
	cmp	r2, #1	@ tmp244,
	movls	r9, #1	@ aspect_ratio,
	bls	.L397	@,
	sub	r2, r3, #4	@ tmp246, D.34163,
	cmp	r2, #1	@ tmp246,
	movls	r9, #2	@ aspect_ratio,
	bls	.L397	@,
	cmp	r3, #1	@ D.34163,
	moveq	r9, #5	@ aspect_ratio,
	movne	r9, #0	@ aspect_ratio,
.L397:
	mov	r1, r4	@, id
	ldr	r0, [r8, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	beq	.L395	@,
	ldr	r3, [r8, #1496]	@ D.34164, pCtx_12(D)->MP4Syntax.image_width
	mov	r1, r9	@, aspect_ratio
	str	r3, [r4, #144]	@ D.34164, pImg_40->image_width
	ldr	r3, [r8, #1492]	@ D.34164, pCtx_12(D)->MP4Syntax.image_height
	str	r3, [r4, #148]	@ D.34164, pImg_40->image_height
	bl	SetAspectRatio	@
	ldr	r3, [r8, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _46->eCapLevel, _46->eCapLevel
	cmp	r3, #25	@ _46->eCapLevel,
	beq	.L413	@,
.L401:
	ldr	r3, [r8, #1496]	@ D.34164, pCtx_12(D)->MP4Syntax.image_width
	mov	r5, #0	@ tmp323,
	mvn	r6, #0	@ tmp355,
	mvn	r7, #0	@,
	ldr	r1, .L414	@,
	mov	r0, #29	@,
	str	r3, [r4, #152]	@ D.34164, pImg_40->disp_width
	ldr	r3, [r8, #1492]	@ D.34164, pCtx_12(D)->MP4Syntax.image_height
	str	r3, [r4, #156]	@ D.34164, pImg_40->disp_height
	ldr	r3, [r8, #1496]	@ pCtx_12(D)->MP4Syntax.image_width, pCtx_12(D)->MP4Syntax.image_width
	mov	r3, r3, lsr #1	@ D.34164, pCtx_12(D)->MP4Syntax.image_width,
	str	r3, [r4, #160]	@ D.34164, pImg_40->disp_center_x
	ldr	r3, [r8, #1492]	@ pCtx_12(D)->MP4Syntax.image_height, pCtx_12(D)->MP4Syntax.image_height
	mov	r3, r3, lsr #1	@ D.34164, pCtx_12(D)->MP4Syntax.image_height,
	str	r3, [r4, #164]	@ D.34164, pImg_40->disp_center_y
	ldr	r3, [r8, #2060]	@ D.34164, pCtx_12(D)->ImgCntOfSeq
	str	r3, [r4, #188]	@ D.34164, pImg_40->seq_img_cnt
	ldr	r3, [r8, #2056]	@ D.34164, pCtx_12(D)->SeqCnt
	str	r3, [r4, #184]	@ D.34164, pImg_40->seq_cnt
	ldrb	ip, [r8, #809]	@ zero_extendqisi2	@ D.34162, pCtx_12(D)->MP4Syntax.syn_vos.video_format
	ldrb	lr, [r8, #1437]	@ zero_extendqisi2	@ D.34162, pCtx_12(D)->MP4Syntax.syn_vop.top_field_first
	ldrb	r2, [r8, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	ldrb	r3, [r8, #838]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vol.interlaced, pCtx_12(D)->MP4Syntax.syn_vol.interlaced
	mov	ip, ip, asl #5	@ D.34162, D.34162,
	and	r2, r2, #3	@ D.34162, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	orr	r2, r2, lr, asl #12	@ D.34162, D.34162, D.34162,
	uxtb	ip, ip	@ D.34162, D.34162
	orr	r2, r2, #3072	@ D.34162, D.34162,
	and	r3, r3, #1	@ D.34162, pCtx_12(D)->MP4Syntax.syn_vol.interlaced,
	orr	r2, r2, ip	@ D.34162, D.34162, D.34162
	orr	r3, r2, r3, asl #8	@ D.34162, D.34162, D.34162,
	orr	r3, r3, r9, asl #14	@ D.34164, D.34162, aspect_ratio,
	str	r3, [r4, #140]	@ D.34164, pImg_40->format
	ldrb	r3, [r8, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	and	r3, r3, #3	@ tmp316, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	str	r3, [r4, #132]	@ tmp316, pImg_40->top_fld_type
	ldrb	r3, [r8, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	str	r5, [r4, #128]	@ tmp323, pImg_40->is_fld_save
	and	r3, r3, #3	@ tmp322, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	str	r3, [r4, #136]	@ tmp322, pImg_40->bottom_fld_type
	ldr	r3, [r8, #2100]	@ D.34170, pCtx_12(D)->UsrData
	str	r3, [r4, #192]	@ D.34170, pImg_40->p_usrdat
	ldr	r3, [r8, #2104]	@ D.34170, MEM[(struct MP4_CTX_S *)pCtx_12(D) + 22584B]
	str	r3, [r4, #196]	@ D.34170, MEM[(struct IMAGE *)pImg_40 + 196B]
	ldr	r3, [r8, #2108]	@ D.34170, MEM[(struct MP4_CTX_S *)pCtx_12(D) + 22588B]
	str	r3, [r4, #200]	@ D.34170, MEM[(struct IMAGE *)pImg_40 + 200B]
	ldr	r3, [r8, #2112]	@ D.34170, MEM[(struct MP4_CTX_S *)pCtx_12(D) + 22592B]
	str	r3, [r4, #204]	@ D.34170, MEM[(struct IMAGE *)pImg_40 + 204B]
	ldr	r3, [r8, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldrd	r2, [r3, #56]	@ D.34171, pCtx_12(D)->pstExtraData,
	strd	r2, [r4, #8]	@ D.34171, pImg,
	ldr	r3, [r8, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldrd	r2, [r3, #72]	@ D.34171, pCtx_12(D)->pstExtraData,
	strd	r2, [r4, #16]	@ D.34171, pImg,
	ldr	r3, [r8, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldrd	r2, [r3, #88]	@ D.34171, pCtx_12(D)->pstExtraData,
	strd	r2, [r4, #24]	@ D.34171, pImg,
	ldr	r3, [r8, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #104]	@ D.34164, _131->DispEnableFlag
	str	r3, [r4, #68]	@ D.34164, pImg_40->DispEnableFlag
	ldr	r3, [r8, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #108]	@ D.34164, _134->DispFrameDistance
	str	r3, [r4, #72]	@ D.34164, pImg_40->DispFrameDistance
	ldr	r3, [r8, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #112]	@ D.34164, _137->DistanceBeforeFirstFrame
	str	r3, [r4, #76]	@ D.34164, pImg_40->DistanceBeforeFirstFrame
	ldr	r3, [r8, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #128]	@ D.34164, _140->GopNum
	str	r3, [r4, #80]	@ D.34164, pImg_40->GopNum
	ldr	r3, [r8, #1580]	@ D.34166, pCtx_12(D)->pstExtraData
	strd	r6, [r3, #56]	@ tmp355, D.34166,
	ldrd	r6, [r4, #16]	@ pImg_40->Usertag, pImg,
	ldrd	r2, [r4, #8]	@ pImg_40->PTS, pImg,
	strd	r6, [sp]	@ pImg_40->Usertag,
	bl	dprint_vfmw	@
	mov	r3, #8	@ tmp364,
	mov	r2, #2	@ tmp359,
	strb	r5, [r4, #288]	@ tmp323, pImg_40->ImageDnr.pic_structure
	str	r2, [r4, #300]	@ tmp359, pImg_40->ImageDnr.video_standard
	mov	r2, #1	@ tmp367,
	strb	r5, [r4, #295]	@ tmp323, pImg_40->ImageDnr.use_pic_qp_en
	str	r3, [r4, #304]	@ tmp364, pImg_40->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp364, pImg_40->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp364, pImg_40->ImageDnr.QP_U
	strb	r2, [r4, #293]	@ tmp367, pImg_40->ImageDnr.chroma_format_idc
.L395:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L413:
	ldr	r3, [r4, #148]	@ pImg_40->image_height, pImg_40->image_height
	ldr	r1, [r4, #172]	@ D.34164, pImg_40->image_stride
	add	r3, r3, #15	@ D.34164, pImg_40->image_height,
	ldr	r0, [r4, #104]	@ D.34164, pImg_40->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.34168, pImg_40->luma_vir_addr
	mov	r2, r3, lsr #4	@ D.34164, D.34164,
	mov	r3, r1, asl #4	@ D.34164, D.34164,
	add	lr, r1, r0	@ D.34162, D.34164, D.34164
	str	r0, [r4, #88]	@ D.34164, pImg_40->top_luma_phy_addr
	mul	r3, r2, r3	@ D.34164, D.34164, D.34164
	str	r0, [r4, #120]	@ D.34164, pImg_40->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.34162, pImg_40->btm_luma_phy_addr
	str	ip, [r4, #48]	@ D.34168, pImg_40->luma_2d_vir_addr
	add	r0, r3, r0	@ D.34164, D.34164, D.34164
	add	r3, ip, r3	@ D.34168, D.34168, D.34164
	add	r1, r1, r0	@ D.34162, D.34164, D.34164
	str	r3, [r4, #36]	@ D.34168, pImg_40->chrom_vir_addr
	str	r0, [r4, #108]	@ D.34164, pImg_40->chrom_phy_addr
	str	r0, [r4, #92]	@ D.34164, pImg_40->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.34162, pImg_40->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_40->top_chrom_phy_addr, pImg_40->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_40->top_chrom_phy_addr, pImg_40->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_40->chrom_2d_vir_addr
	b	.L401	@
.L412:
	ldr	r2, [r8, #860]	@ sar_height, pCtx_12(D)->MP4Syntax.syn_vol.par_width
	ldr	r1, [r8, #864]	@ D.34164, pCtx_12(D)->MP4Syntax.syn_vol.par_height
	cmp	r2, #0	@ sar_height,
	cmpne	r1, #0	@, D.34164,
	moveq	r9, #0	@ aspect_ratio,
	beq	.L397	@,
	ldr	r3, [r8, #912]	@ pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_height, pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_height
	mul	r1, r3, r1	@ D.34164, pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_height, D.34164
	cmp	r1, #0	@ D.34164,
	beq	.L403	@,
	ldr	r0, [r8, #908]	@ pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_width, pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_width
	mov	r2, r2, asl #10	@ D.34162, sar_height,
	mul	r0, r0, r2	@, pCtx_12(D)->MP4Syntax.syn_vol.video_object_layer_width, D.34162
	bl	__aeabi_uidiv	@
	sub	r9, r0, #1360	@ D.34162, true_dar,
	sub	r3, r0, #1808	@ D.34162, true_dar,
	sub	r9, r9, #5	@ D.34162, D.34162,
	sub	r3, r3, #12	@ D.34162, D.34162,
	cmp	r9, #0	@ D.34162,
	rsblt	r9, r0, #1360	@ D.34162, true_dar,
	addlt	r9, r9, #5	@ D.34162, D.34162,
	cmp	r3, #0	@ D.34162,
	rsblt	r3, r0, #1808	@ D.34162, true_dar,
	addlt	r3, r3, #12	@ D.34162, D.34162,
	cmp	r9, r3	@ D.34162, D.34162
	movlt	r9, #1	@ aspect_ratio,
	movge	r9, #2	@ aspect_ratio,
	b	.L397	@
.L403:
	mov	r9, r1	@ aspect_ratio, D.34164
	b	.L397	@
.L415:
	.align	2
.L414:
	.word	.LC24
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
	add	r4, r0, #20480	@ tmp230, pCtx,
	mov	r7, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ D.34176, pCtx_5(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #4	@ D.34176,
	strb	r3, [r0, #2]	@ D.34176, pCtx_5(D)->CurCodingType
	ldr	r0, [r4, #2480]	@ D.34181, pCtx_5(D)->ChanID
	ldreq	r2, .L427	@ tmp150,
	moveq	r3, r0, asl #5	@ tmp148, D.34181,
	subeq	r3, r3, r0, asl #3	@ tmp149, tmp148, D.34181,
	addeq	r3, r3, r2	@ tmp151, tmp149, tmp150
	ldreq	r2, [r3, #4]	@ g_VfmwChanStat[_8].u32SkipFind, g_VfmwChanStat[_8].u32SkipFind
	addeq	r2, r2, #1	@ D.34177, g_VfmwChanStat[_8].u32SkipFind,
	streq	r2, [r3, #4]	@ D.34177, g_VfmwChanStat[_8].u32SkipFind
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.34178,
	str	r0, [r4, #2508]	@ D.34178, pCtx_5(D)->CurFsID
	blt	.L419	@,
	ldr	r3, [r4, #2484]	@ pCtx_5(D)->FspPartitionOK, pCtx_5(D)->FspPartitionOK
	cmp	r3, #0	@ pCtx_5(D)->FspPartitionOK,
	bne	.L420	@,
.L419:
	ldr	r1, .L427+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2500]	@, pCtx_5(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L421	@,
	ldr	r1, [r5, #192]	@, pImg_24->p_usrdat
	mov	r6, #0	@ tmp189,
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
	str	r6, [r5, #192]	@ tmp189, pImg_24->p_usrdat
	str	r6, [r5, #196]	@ tmp189, pImg_24->p_usrdat
	mov	r2, #1	@,
	str	r6, [r5, #200]	@ tmp189, pImg_24->p_usrdat
	str	r6, [r5, #204]	@ tmp189, pImg_24->p_usrdat
	ldr	r1, [r4, #2500]	@, pCtx_5(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2492]	@, pCtx_5(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2492]	@ tmp189, pCtx_5(D)->FwdFsID
	str	r6, [r4, #2500]	@ tmp189, pCtx_5(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2500]	@ D.34178, pCtx_5(D)->BwdFsID
	str	r0, [r4, #2492]	@ D.34178, pCtx_5(D)->FwdFsID
.L421:
	add	r1, r7, #22528	@, pCtx,
	mov	r3, #0	@ tmp220,
	add	r1, r1, #80	@,,
	str	r3, [r4, #2488]	@ tmp220, pCtx_5(D)->RefNum
	ldr	r0, [r4, #2480]	@, pCtx_5(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L420:
	mov	r1, r0	@, D.34178
	mov	r0, r7	@, pCtx
	bl	Mp4_RecordFrameAtr	@
	mov	r3, #0	@ tmp228,
	mov	r0, #0	@,
	str	r3, [r4, #2064]	@ tmp228, pCtx_5(D)->ErrorLevel
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L428:
	.align	2
.L427:
	.word	g_VfmwChanStat+8
	.word	.LC25
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
	.pad #68
	sub	sp, sp, #68	@,,
	mov	r6, r2	@ ptr_strm_para, ptr_strm_para
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #48	@,
	add	r0, sp, #16	@ tmp617,,
	bl	__memzero	@
	ldrb	r3, [r6, #5]	@ zero_extendqisi2	@ ptr_strm_para_14(D)->StreamPack[0].IsLastSeg, ptr_strm_para_14(D)->StreamPack[0].IsLastSeg
	cmp	r3, #1	@ ptr_strm_para_14(D)->StreamPack[0].IsLastSeg,
	beq	.L455	@,
	ldr	r3, [r6, #88]	@ ptr_strm_para_14(D)->StreamPack[1].PhyAddr, ptr_strm_para_14(D)->StreamPack[1].PhyAddr
	add	r5, r4, #20480	@ tmp613, pCtx,
	mov	r1, #0	@ tmp328,
	bic	r3, r3, #3	@ D.34223, ptr_strm_para_14(D)->StreamPack[1].PhyAddr,
	str	r3, [r4, #1208]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBaseAddr
	ldr	r3, [r5, #1568]	@ D.34223, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].phy_addr
	and	r2, r3, #3	@ D.34223, D.34223,
	str	r3, [r4, #1220]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamPhyAddr
	ldr	r3, [r5, #1564]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr
	str	r3, [r4, #1056]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamVirAddr
	ldr	r3, [r5, #1576]	@ D.34223, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].offset
	add	r2, r3, r2, lsl #3	@ D.34223, D.34223, D.34223,
	str	r2, [r4, #1228]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBitOffset
	ldr	r2, [r5, #1572]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len
	rsb	r3, r3, r2, lsl #3	@ D.34223, D.34223, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len,
	str	r3, [r4, #1236]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamLength
	ldr	r3, [r6, #88]	@ D.34223, ptr_strm_para_14(D)->StreamPack[1].PhyAddr
	str	r3, [r4, #1224]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamPhyAddr
	ldr	r3, [r6, #80]	@ D.34224, ptr_strm_para_14(D)->StreamPack[1].VirAddr
	str	r3, [r4, #1060]	@ D.34224, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamVirAddr
	ldr	r3, [r6, #88]	@ ptr_strm_para_14(D)->StreamPack[1].PhyAddr, ptr_strm_para_14(D)->StreamPack[1].PhyAddr
	and	r3, r3, #3	@ D.34223, ptr_strm_para_14(D)->StreamPack[1].PhyAddr,
	mov	r3, r3, asl #3	@ D.34223, D.34223,
	str	r3, [r4, #1232]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBitOffset
	ldr	r3, [r6, #92]	@ ptr_strm_para_14(D)->StreamPack[1].LenInByte, ptr_strm_para_14(D)->StreamPack[1].LenInByte
	str	r1, [r4, #1216]	@ tmp328, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamFirstIsLastFlag
	mov	r3, r3, asl #3	@ D.34223, ptr_strm_para_14(D)->StreamPack[1].LenInByte,
	str	r3, [r4, #1240]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamLength
.L431:
	ldr	r2, [r5, #1496]	@ D.34223, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].image_width
	add	r7, r4, #1040	@ tmp612, pCtx,
	add	r6, r4, #12288	@ tmp615, pCtx,
	add	r3, r2, #15	@ D.34223, D.34223,
	mov	r3, r3, lsr #4	@ D.34223, D.34223,
	strh	r3, [r7, #164]	@ movhi	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicWidthInMb
	ldr	r1, [r5, #1492]	@ D.34223, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].image_height
	add	r3, r1, #15	@ D.34223, D.34223,
	mov	r3, r3, lsr #4	@ D.34223, D.34223,
	strh	r3, [r7, #166]	@ movhi	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicHeightInMb
	ldrb	r3, [r5, #1432]	@ zero_extendqisi2	@ D.34222, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.vop_coding_type
	strb	r3, [r4, #1040]	@ D.34222, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicCodingType
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
	str	r1, [r6, #3360]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].image_height
	str	r2, [r6, #3364]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].image_width
	ldrb	r2, [r5, #840]	@ zero_extendqisi2	@ D.34222, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_enable
	cmp	r2, #2	@ D.34222,
	cmpeq	r3, #3	@, D.34222,
	str	r2, [r6, #3368]	@ D.34222, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_enable
	moveq	r3, #1	@ tmp450,
	movne	r3, #0	@ tmp450,
	beq	.L456	@,
	ldrb	r2, [r5, #853]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy
	str	r3, [r6, #3372]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_warping_points
	str	r3, [r6, #3380]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dU
	str	r2, [r6, #3376]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_warping_accuracy
	str	r3, [r6, #3384]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dU
	str	r3, [r6, #3388]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dV
	str	r3, [r6, #3392]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dV
	str	r3, [r6, #3396]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Uo
	str	r3, [r6, #3400]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Vo
	str	r3, [r6, #3404]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Uco
	str	r3, [r6, #3408]	@ tmp450, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Vco
.L433:
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
	moveq	r3, #1	@ tmp540,
	movne	r3, #0	@ tmp540,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp546, tmp540
	cmp	r3, #0	@ tmp546,
	bne	.L457	@,
	ldr	r1, [r8, #408]	@ D.34228, pCur_170->pstDecodeFs
	ldr	ip, [r8, #416]	@ D.34228, pCur_170->pstTfOutFs
	cmp	r1, #0	@ D.34228,
	ldr	lr, [r8, #412]	@ D.34228, pCur_170->pstDispOutFs
	beq	.L437	@,
	cmp	ip, #0	@ D.34228,
	beq	.L437	@,
	cmp	lr, #0	@ D.34228,
	beq	.L437	@,
	ldr	r3, [r8, #420]	@ pCur_170->PmvAddr, pCur_170->PmvAddr
	add	lr, r4, #21248	@ ivtmp.356, pCtx,
	add	ip, r4, #1056	@ ivtmp.365, pCtx,
	add	r1, r4, #21504	@ ivtmp.373, pCtx,
	add	r2, r4, #1120	@ ivtmp.380, pCtx,
	add	lr, lr, #144	@ ivtmp.356, ivtmp.356,
	str	r3, [r4, #1264]	@ pCur_170->PmvAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].CurPmvPhyAddr
	add	ip, ip, #7	@ ivtmp.365, ivtmp.365,
	ldr	r3, [r0, #420]	@ pBwd_178->PmvAddr, pBwd_178->PmvAddr
	add	r1, r1, #144	@ ivtmp.373, ivtmp.373,
	add	r2, r2, #7	@ ivtmp.380, ivtmp.380,
	str	r3, [r4, #1268]	@ pBwd_178->PmvAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].BwdPmvPhyAddr
	ldr	r3, [r0, #408]	@ D.34228, pBwd_178->pstDecodeFs
	cmp	r3, #0	@ D.34228,
	ldreq	r3, [r8, #408]	@ pCur_170->pstDecodeFs, pCur_170->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.34221,
	str	r3, [r4, #1260]	@ D.34221, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].BwdRefPicPhyAddr
	ldr	r3, [r9, #408]	@ D.34228, pFwd_174->pstDecodeFs
	cmp	r3, #0	@ D.34228,
	ldreq	r3, [r8, #408]	@ pCur_170->pstDecodeFs, pCur_170->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.34221,
	str	r3, [r4, #1256]	@ D.34221, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].FwdRefPicPhyAddr
	ldr	r3, [r8, #408]	@ pCur_170->pstDecodeFs, pCur_170->pstDecodeFs
	ldr	r3, [r3, #12]	@ _205->PhyAddr, _205->PhyAddr
	str	r3, [r4, #1252]	@ _205->PhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].CurPicPhyAddr
	ldr	r3, [r0, #416]	@ D.34228, pBwd_178->pstTfOutFs
	cmp	r3, #0	@ D.34228,
	ldreq	r3, [r8, #416]	@ pCur_170->pstTfOutFs, pCur_170->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.34221,
	str	r3, [r6, #3328]	@ D.34221, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].TfBwdPhyAddr
	ldr	r3, [r9, #416]	@ D.34228, pFwd_174->pstTfOutFs
	cmp	r3, #0	@ D.34228,
	ldreq	r3, [r8, #416]	@ pCur_170->pstTfOutFs, pCur_170->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.34221,
	str	r3, [r6, #3332]	@ D.34221, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].TfFwdPhyAddr
	ldr	r3, [r8, #416]	@ pCur_170->pstTfOutFs, pCur_170->pstTfOutFs
	ldr	r0, [r3, #12]	@ _223->PhyAddr, _223->PhyAddr
	mov	r3, #0	@ i,
	str	r0, [r6, #3336]	@ _223->PhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].TfCurPhyAddr
	ldr	r0, [r8, #412]	@ pCur_170->pstDispOutFs, pCur_170->pstDispOutFs
	ldr	r0, [r0, #12]	@ _227->PhyAddr, _227->PhyAddr
	str	r0, [r6, #3340]	@ _227->PhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].DispFramePhyAddr
	ldr	r0, [r8, #412]	@ pCur_170->pstDispOutFs, pCur_170->pstDispOutFs
	ldr	r0, [r0, #20]	@ _231->Stride, _231->Stride
	str	r0, [r6, #3352]	@ _231->Stride, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].VahbStride
	ldr	r0, [r8, #412]	@ pCur_170->pstDispOutFs, pCur_170->pstDispOutFs
	ldr	r0, [r0, #32]	@ _235->ChromOffset, _235->ChromOffset
	str	r0, [r6, #3356]	@ _235->ChromOffset, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].uv_offset
.L448:
	ldr	r0, [lr, #4]!	@ MEM[base: _278, offset: 0B], MEM[base: _278, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	strb	r0, [ip, #1]!	@ MEM[base: _278, offset: 0B], MEM[base: _277, offset: 0B]
	ldr	r0, [r1, #4]!	@ MEM[base: _276, offset: 0B], MEM[base: _276, offset: 0B]
	strb	r0, [r2, #1]!	@ MEM[base: _276, offset: 0B], MEM[base: _275, offset: 0B]
	bne	.L448	@,
	ldrh	r1, [r7, #164]	@ D.34225, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicWidthInMb
	ldrh	r3, [r7, #166]	@ D.34225, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].PicHeightInMb
	ldr	r2, [r5, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	mul	r3, r3, r1	@ D.34225, D.34225, D.34225
	str	r3, [r5, #1464]	@ D.34225, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vop.mb_total
	ldr	r3, [r2, #512]	@ D.34225, _253->s32Compress_en
	str	r3, [r6, #3412]	@ D.34225, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Compress_en
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L457:
	movw	r3, #3543	@,
	ldr	r2, .L458	@,
	ldr	r1, .L458+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L455:
	add	r5, r4, #20480	@ tmp613, pCtx,
	mov	r0, #0	@ tmp303,
	ldr	r2, [r5, #1568]	@ D.34223, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].phy_addr
	bic	r1, r2, #3	@ D.34223, D.34223,
	str	r1, [r4, #1220]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamPhyAddr
	str	r2, [r4, #1208]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBaseAddr
	and	r2, r2, #3	@ D.34223, D.34223,
	ldr	r1, [r5, #1564]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr
	str	r1, [r4, #1056]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].vir_addr, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamVirAddr
	ldr	r1, [r5, #1576]	@ D.34223, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].offset
	add	r2, r1, r2, lsl #3	@ D.34223, D.34223, D.34223,
	str	r2, [r4, #1228]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBitOffset
	ldr	r2, [r5, #1572]	@ MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len
	str	r3, [r4, #1216]	@ ptr_strm_para_14(D)->StreamPack[0].IsLastSeg, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamFirstIsLastFlag
	str	r0, [r4, #1224]	@ tmp303, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamPhyAddr
	rsb	r1, r1, r2, lsl #3	@ D.34223, D.34223, MEM[(struct BITS_OBJ *)pCtx_12(D) + 22044B].len,
	str	r0, [r4, #1232]	@ tmp303, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamBitOffset
	str	r1, [r4, #1236]	@ D.34223, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamLength
	str	r0, [r4, #1240]	@ tmp303, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].StreamLength
	b	.L431	@
.L437:
	ldr	r4, [r5, #2500]	@ pCtx_12(D)->BwdFsID, pCtx_12(D)->BwdFsID
	mov	r0, #0	@,
	ldr	r3, [r5, #2508]	@ pCtx_12(D)->CurFsID, pCtx_12(D)->CurFsID
	ldr	r2, [r5, #2492]	@ pCtx_12(D)->FwdFsID, pCtx_12(D)->FwdFsID
	stmib	sp, {r1, ip, lr}	@,,,
	str	r4, [sp]	@ pCtx_12(D)->BwdFsID,
	ldr	r1, .L458+8	@,
	bl	dprint_vfmw	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L456:
	add	r0, r4, #21248	@, pCtx,
	add	r1, sp, #16	@ tmp618,,
	add	r0, r0, #20	@,,
	bl	MP4_GetGMCparam	@
	add	r0, sp, #48	@,,
	ldrb	fp, [r5, #853]	@ zero_extendqisi2	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy, MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy
	ldmia	r0, {r0, r1, r2, r3}	@,,,,
	ldr	r10, [sp, #16]	@ gmc.num_wp, gmc.num_wp
	ldr	r9, [sp, #32]	@ gmc.dU, gmc.dU
	ldr	r8, [sp, #36]	@ gmc.dU, gmc.dU
	ldr	lr, [sp, #40]	@ gmc.dV, gmc.dV
	ldr	ip, [sp, #44]	@ gmc.dV, gmc.dV
	str	fp, [r6, #3376]	@ MEM[(struct MP4_SYNTAX *)pCtx_12(D) + 21268B].syn_vol.sprite_warping_accuracy, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_warping_accuracy
	str	r10, [r6, #3372]	@ gmc.num_wp, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].sprite_warping_points
	str	r9, [r6, #3380]	@ gmc.dU, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dU
	str	r8, [r6, #3384]	@ gmc.dU, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dU
	str	lr, [r6, #3388]	@ gmc.dV, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dV
	str	ip, [r6, #3392]	@ gmc.dV, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].dV
	str	r0, [r6, #3396]	@ gmc.Uo, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Uo
	str	r1, [r6, #3400]	@ gmc.Vo, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Vo
	str	r2, [r6, #3404]	@ gmc.Uco, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Uco
	str	r3, [r6, #3408]	@ gmc.Vco, MEM[(struct MP4_DEC_PARAM_S *)pCtx_12(D) + 1040B].Vco
	b	.L433	@
.L459:
	.align	2
.L458:
	.word	.LANCHOR1+1280
	.word	.LC26
	.word	.LC27
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
	ldr	r3, [r0, #1580]	@ D.34238, pCtx_4(D)->pstExtraData
	beq	.L472	@,
.L462:
	ldr	r3, [r3, #8]	@ D.34237, _17->s32DecMode
	cmp	r3, #2	@ D.34237,
	beq	.L465	@,
	cmp	r3, #1	@ D.34237,
	beq	.L471	@,
	cmp	r3, #4	@ D.34237,
	movne	r3, #0	@ tmp137,
.L471:
	str	r3, [r0, #1612]	@ tmp137, pCtx_4(D)->DecMode
	bx	lr	@
.L472:
	ldr	r2, [r3, #8]	@ _6->s32DecMode, _6->s32DecMode
	cmp	r2, #2	@ _6->s32DecMode,
	movne	r2, #1	@ tmp128,
	strne	r2, [r0, #2120]	@ tmp128, pCtx_4(D)->IPVopErr
	bne	.L462	@,
.L465:
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
	mov	r5, r0	@ pCtx, pCtx
	mov	r6, r1	@ pstExtraData, pstExtraData
	.pad #788
	sub	sp, sp, #788	@,,
	mov	r0, #2	@,
	ldr	r1, .L485	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ pstExtraData,
	cmpne	r5, #0	@, pCtx,
	beq	.L478	@,
	ldr	r3, [r6, #524]	@ pstExtraData_9(D)->s32KeepSPSPPS, pstExtraData_9(D)->s32KeepSPSPPS
	cmp	r3, #1	@ pstExtraData_9(D)->s32KeepSPSPPS,
	addne	r4, r5, #20480	@ tmp249, pCtx,
	beq	.L482	@,
.L476:
	ldr	r7, [r4, #2472]	@ D.34247, pCtx_7(D)->ImageQue.ResetMagicWord
	movw	r1, #23008	@,
	mov	r0, r5	@, pCtx
	bl	__memzero	@
	add	r0, r5, #22528	@, pCtx,
	add	r0, r0, #80	@,,
	str	r7, [r4, #2472]	@ D.34247, pCtx_7(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r4, #1580]	@ pstExtraData, pCtx_7(D)->pstExtraData
	mov	r0, r5	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.34243,
	str	r0, [r4, #2480]	@ D.34243, pCtx_7(D)->ChanID
	beq	.L483	@,
	mov	r0, r5	@, pCtx
	bl	Global_Data_Init	@
	subs	r7, r0, #0	@ D.34241,
	bne	.L478	@,
	mov	r2, #1	@ tmp194,
	str	r7, [r4, #2096]	@ D.34241, pCtx_7(D)->PPicFound
	ldr	r1, .L485+4	@,
	mov	r0, #2	@,
	str	r2, [r4, #2068]	@ tmp194, pCtx_7(D)->InitComplete
	bl	dprint_vfmw	@
	ldr	r6, [r6, #524]	@ pstExtraData_9(D)->s32KeepSPSPPS, pstExtraData_9(D)->s32KeepSPSPPS
	cmp	r6, #1	@ pstExtraData_9(D)->s32KeepSPSPPS,
	beq	.L484	@,
.L475:
	mov	r0, r7	@, D.34241
	add	sp, sp, #788	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L484:
	add	r0, r5, #21248	@, pCtx,
	add	r1, sp, #16	@,,
	mov	r2, #768	@,
	add	r0, r0, #20	@,,
	bl	memcpy	@
	add	r0, r5, #19968	@, pCtx,
	add	r1, sp, #32	@,,
	mov	r2, #24	@,
	add	r0, r0, #8	@,,
	bl	memcpy	@
	add	r0, r5, #19968	@, pCtx,
	mov	r2, #604	@,
	add	r1, sp, #56	@,,
	add	r0, r0, #32	@,,
	bl	memcpy	@
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@, %sfp
	mov	r0, r7	@, D.34241
	strb	fp, [r4, #1556]	@ MP4SyntaxState$vos_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22036B]
	strb	r10, [r4, #1557]	@ MP4SyntaxState$vo_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22037B]
	strb	r3, [r4, #1560]	@ tmp253, MEM[(char * {ref-all})pCtx_7(D) + 22040B]
	ldrb	r3, [sp, #8]	@ zero_extendqisi2	@, %sfp
	strb	r9, [r4, #1558]	@ MP4SyntaxState$gop_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22038B]
	strb	r8, [r4, #1559]	@ MP4SyntaxState$vol_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22039B]
	strb	r3, [r4, #1561]	@ tmp254, MEM[(char * {ref-all})pCtx_7(D) + 22041B]
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@, %sfp
	strb	r6, [r4, #2517]	@ pstExtraData_9(D)->s32KeepSPSPPS, pCtx_7(D)->SeekReset
	strb	r3, [r4, #1562]	@ tmp255, MEM[(char * {ref-all})pCtx_7(D) + 22042B]
	add	sp, sp, #788	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L482:
	add	r1, r5, #21248	@, pCtx,
	mov	r2, #768	@,
	add	r1, r1, #20	@,,
	add	r0, sp, #16	@,,
	bl	memcpy	@
	add	r1, r5, #19968	@, pCtx,
	add	r1, r1, #8	@,,
	mov	r2, #24	@,
	add	r0, sp, #32	@,,
	add	r4, r5, #20480	@ tmp249, pCtx,
	bl	memcpy	@
	add	r1, r5, #19968	@, pCtx,
	add	r1, r1, #32	@,,
	mov	r2, #604	@,
	add	r0, sp, #56	@,,
	bl	memcpy	@
	ldrb	r3, [r4, #1560]	@ zero_extendqisi2	@ MP4SyntaxState$last_vol_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22040B]
	ldrb	fp, [r4, #1556]	@ zero_extendqisi2	@ MP4SyntaxState$vos_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22036B]
	ldrb	r10, [r4, #1557]	@ zero_extendqisi2	@ MP4SyntaxState$vo_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22037B]
	str	r3, [sp, #4]	@ MP4SyntaxState$last_vol_decode_right, %sfp
	ldrb	r3, [r4, #1561]	@ zero_extendqisi2	@ MP4SyntaxState$vop_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22041B]
	ldrb	r9, [r4, #1558]	@ zero_extendqisi2	@ MP4SyntaxState$gop_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22038B]
	ldrb	r8, [r4, #1559]	@ zero_extendqisi2	@ MP4SyntaxState$vol_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22039B]
	str	r3, [sp, #8]	@ MP4SyntaxState$vop_decode_right, %sfp
	ldrb	r3, [r4, #1562]	@ zero_extendqisi2	@ MP4SyntaxState$userdata_decode_right, MEM[(char * {ref-all})pCtx_7(D) + 22042B]
	str	r3, [sp, #12]	@ MP4SyntaxState$userdata_decode_right, %sfp
	b	.L476	@
.L478:
	mvn	r7, #0	@ D.34241,
	mov	r0, r7	@, D.34241
	add	sp, sp, #788	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L483:
	ldr	r1, .L485+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r7, #19	@ D.34241,
	b	.L475	@
.L486:
	.align	2
.L485:
	.word	.LC28
	.word	.LC30
	.word	.LC29
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
	beq	.L489	@,
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
	beq	.L490	@,
	ldr	r1, [r5, #192]	@, pImg_11->p_usrdat
	mov	r6, #0	@ tmp132,
	ldr	r0, [r4, #2480]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp132, pImg_11->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_11->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp132, pImg_11->p_usrdat
	mov	r0, #1	@ D.34272,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L490:
	mov	r0, #1	@ D.34272,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L489:
	mvn	r0, #1	@ D.34272,
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
	ldr	r2, [r4, #1496]	@ D.34278, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_width
	cmp	r2, #0	@ D.34278,
	beq	.L494	@,
	ldr	r1, [r4, #1492]	@ MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height
	cmp	r1, #0	@ MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height,
	beq	.L494	@,
	ldr	r0, [r3, #144]	@ pImg_8->image_width, pImg_8->image_width
	ldr	r1, [r3, #148]	@ pImg_8->image_height, pImg_8->image_height
	cmp	r0, r2	@ pImg_8->image_width, D.34278
	movcs	r0, r2	@ D.34278, D.34278
	str	r0, [r3, #152]	@ D.34278, pImg_8->disp_width
	ldr	r2, [r4, #1492]	@ MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height
	cmp	r1, r2	@ pImg_8->image_height, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height
	movcs	r1, r2	@ D.34278, MEM[(struct MP4_SYNTAX *)pCtx_3(D) + 21268B].image_height
	str	r1, [r3, #156]	@ D.34278, pImg_8->disp_height
	b	.L495	@
.L494:
	ldr	r1, [r3, #144]	@ pImg_8->image_width, pImg_8->image_width
	ldr	r2, [r3, #148]	@ pImg_8->image_height, pImg_8->image_height
	str	r1, [r3, #152]	@ pImg_8->image_width, pImg_8->disp_width
	str	r2, [r3, #156]	@ pImg_8->image_height, pImg_8->disp_height
.L495:
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
	beq	.L508	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r6, r0	@ display_flag,
	movne	r0, #1	@ ret,
	beq	.L512	@,
.L507:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L512:
	mov	r0, r5	@, pCtx
	bl	MP4_SetImgFormat	@
	mov	r2, #1	@,
	ldr	r1, [r7, #176]	@, pImg_8->image_id
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #22528	@, pCtx,
	ldr	r0, [r4, #2480]	@ pCtx_4(D)->ChanID, pCtx_4(D)->ChanID
	mov	r1, r6	@, display_flag
	str	r7, [sp]	@ pImg,
	add	r3, r3, #80	@,,
	mov	r2, r5	@, pCtx
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L507	@,
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
	b	.L507	@
.L508:
	mvn	r0, #0	@ ret,
	b	.L507	@
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
	addeq	r6, r0, #22528	@ D.34287, pCtx,
	addeq	r6, r6, #80	@ D.34287, D.34287,
	beq	.L518	@,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2500]	@, pCtx_6(D)->BwdFsID
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L529	@,
	ldr	r1, [r5, #2500]	@, pCtx_6(D)->BwdFsID
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@ display_flag,
	mov	r8, r0	@ display_flag,
	beq	.L527	@,
.L529:
	add	r6, r4, #22528	@ D.34287, pCtx,
	add	r6, r6, #80	@ D.34287, D.34287,
.L518:
	mov	r0, r6	@, D.34287
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	GetVoLastImageID	@
.L527:
	mov	r0, r4	@, pCtx
	add	r6, r4, #22528	@ D.34287, pCtx,
	bl	MP4_SetImgFormat	@
	add	r6, r6, #80	@ D.34287, D.34287,
	mov	r3, #1	@ tmp152,
	ldr	r1, [r7, #176]	@, pImg_12->image_id
	mov	r2, r3	@, tmp152
	str	r3, [r7, #224]	@ tmp152, pImg_12->last_frame
	ldr	r0, [r5, #2480]	@, pCtx_6(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, #2480]	@ pCtx_6(D)->ChanID, pCtx_6(D)->ChanID
	mov	r1, r8	@, display_flag
	str	r7, [sp]	@ pImg,
	mov	r3, r6	@, D.34287
	mov	r2, r4	@, pCtx
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L515	@,
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
	b	.L518	@
.L515:
	ldr	r3, [r7, #180]	@ pImg_12->error_level, pImg_12->error_level
	cmp	r3, #100	@ pImg_12->error_level,
	bhi	.L518	@,
	ldr	r3, [r7, #144]	@ pImg_12->image_width, pImg_12->image_width
	cmp	r3, #31	@ pImg_12->image_width,
	bls	.L518	@,
	ldr	r3, [r7, #148]	@ pImg_12->image_height, pImg_12->image_height
	cmp	r3, #31	@ pImg_12->image_height,
	bls	.L518	@,
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
	cmp	r0, #1	@ D.34294,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L537	@,
	mov	r0, #0	@ D.34294,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L537:
	add	r1, r5, #22528	@, pCtx,
	ldr	r0, [r4, #2480]	@, pCtx_4(D)->ChanID
	add	r1, r1, #80	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.34294,
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
	bne	.L542	@,
	ldrb	r3, [r4, #85]	@ zero_extendqisi2	@ pMp4Packet_3(D)->StreamPack[1].IsLastSeg, pMp4Packet_3(D)->StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pMp4Packet_3(D)->StreamPack[1].IsLastSeg,
	beq	.L544	@,
.L542:
	mov	r0, r4	@, pMp4Packet
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L544:
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
	ble	.L548	@,
.L547:
	add	r4, r4, #1	@ i, i,
	ldr	r1, [r5, #4]!	@, MEM[base: _19, offset: 0B]
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r6, r4	@ StreamIDNum, i
	bne	.L547	@,
.L548:
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
	mov	r0, #2	@,
	ldr	r1, .L564	@,
	mov	fp, r2	@ dst, dst
	mov	r10, r3	@ dst_2d, dst_2d
	ldr	r9, [sp, #40]	@ src, src
	ldr	r6, [sp, #44]	@ ImgWidth, ImgWidth
	add	r8, r4, #20480	@ tmp171, pCtx,
	ldr	r5, [sp, #48]	@ ImgHeight, ImgHeight
	bl	dprint_vfmw	@
	add	r0, r4, #12288	@ tmp148, pCtx,
	str	fp, [r4, #1252]	@ dst, pCtx_4(D)->Mp4DecParam.CurPicPhyAddr
	add	r6, r6, #15	@ D.34324, ImgWidth,
	add	r5, r5, #15	@ D.34324, ImgHeight,
	str	r10, [r0, #3340]	@ dst_2d, pCtx_4(D)->Mp4DecParam.DispFramePhyAddr
	movw	r2, #1204	@ tmp152,
	ldr	ip, [r7, #420]	@ pCur_9(D)->PmvAddr, pCur_9(D)->PmvAddr
	movw	r3, #1206	@ tmp158,
	str	r9, [r4, #1256]	@ src, pCtx_4(D)->Mp4DecParam.FwdRefPicPhyAddr
	mov	r6, r6, lsr #4	@ D.34324, D.34324,
	mov	r5, r5, lsr #4	@ D.34324, D.34324,
	add	r1, r4, #1040	@ D.34328, pCtx,
	str	ip, [r4, #1264]	@ pCur_9(D)->PmvAddr, pCtx_4(D)->Mp4DecParam.CurPmvPhyAddr
	strh	r6, [r4, r2]	@ movhi	@ D.34324, pCtx_4(D)->Mp4DecParam.PicWidthInMb
	strh	r5, [r4, r3]	@ movhi	@ D.34324, pCtx_4(D)->Mp4DecParam.PicHeightInMb
	ldr	r3, [r7, #412]	@ pCur_9(D)->pstDispOutFs, pCur_9(D)->pstDispOutFs
	ldr	r3, [r3, #20]	@ _25->Stride, _25->Stride
	str	r3, [r0, #3352]	@ _25->Stride, pCtx_4(D)->Mp4DecParam.VahbStride
	ldr	r3, [r7, #412]	@ pCur_9(D)->pstDispOutFs, pCur_9(D)->pstDispOutFs
	ldr	r3, [r3, #32]	@ _29->ChromOffset, _29->ChromOffset
	str	r3, [r0, #3356]	@ _29->ChromOffset, pCtx_4(D)->Mp4DecParam.uv_offset
	ldr	r3, [r8, #1580]	@ D.34327, pCtx_4(D)->pstExtraData
	ldr	r2, [r3, #512]	@ D.34323, _33->s32Compress_en
	str	r2, [r0, #3412]	@ D.34323, pCtx_4(D)->Mp4DecParam.Compress_en
	str	r1, [r4, #1036]	@ D.34328, pCtx_4(D)->pMp4DecParam
	ldr	r2, [r3, #708]	@ D.34323, _33->stDisParams.s32Mode
	cmp	r2, #1	@ D.34323,
	beq	.L562	@,
	cmp	r2, #2	@ D.34323,
	beq	.L563	@,
.L554:
	mov	r3, #1	@ tmp200,
	strb	r3, [r4, #1198]	@ tmp200, pCtx_4(D)->Mp4DecParam.IsNvopCopy
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L562:
	cmp	r1, #0	@ D.34328,
	beq	.L554	@,
	mov	r2, #0	@ tmp174,
	str	r2, [r4, #1036]	@ tmp174, pCtx_4(D)->pMp4DecParam
	ldr	r0, [r8, #2480]	@, pCtx_4(D)->ChanID
	ldr	r1, [r8, #2508]	@, pCtx_4(D)->CurFsID
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pCtx
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	MP4_ClearCurPic	@
.L563:
	ldr	r3, [r3, #712]	@ _33->stDisParams.s32DisNums, _33->stDisParams.s32DisNums
	cmp	r1, #0	@ D.34328,
	cmpne	r3, #0	@, _33->stDisParams.s32DisNums,
	ble	.L554	@,
	mov	r2, #0	@ tmp189,
	str	r2, [r4, #1036]	@ tmp189, pCtx_4(D)->pMp4DecParam
	ldr	r0, [r8, #2480]	@, pCtx_4(D)->ChanID
	ldr	r1, [r8, #2508]	@, pCtx_4(D)->CurFsID
	bl	FSP_SetDisplay	@
	ldr	r2, [r8, #1580]	@ D.34327, pCtx_4(D)->pstExtraData
	mov	r0, r4	@, pCtx
	ldr	r3, [r2, #712]	@ _49->stDisParams.s32DisNums, _49->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.34323, _49->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.34323, _49->stDisParams.s32DisNums
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	MP4_ClearCurPic	@
.L565:
	.align	2
.L564:
	.word	.LC31
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
	add	r3, r0, #16384	@ tmp134, pCtx,
	add	r1, r0, #20480	@ tmp171, pCtx,
	ldrb	r3, [r3, #3635]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vol.resync_marker_disable, pCtx_6(D)->MP4Vol.resync_marker_disable
	ldrb	r2, [r1, #728]	@ zero_extendqisi2	@ D.34343, pCtx_6(D)->MP4Vop.vop_coding_type
	cmp	r3, #0	@ pCtx_6(D)->MP4Vol.resync_marker_disable,
	bne	.L575	@,
	add	r0, r0, #12288	@ tmp137, pCtx,
	ldrb	r3, [r0, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	tst	r3, #120	@ *pCtx_6(D),
	bne	.L575	@,
	movw	r3, #3576	@ tmp149,
	ldrh	r0, [r0, r3]	@ *pCtx_6(D), *pCtx_6(D)
	ubfx	r0, r0, #7, #4	@ D.34345, *pCtx_6(D),,
	add	r0, r0, #17	@ goldenLen, D.34345,
	cmp	r2, #3	@ D.34343,
	ldrls	pc, [pc, r2, asl #2]	@ D.34343
	b	.L569	@
.L571:
	.word	.L576
	.word	.L572
	.word	.L573
	.word	.L572
.L575:
	mvn	r0, #0	@ D.34342,
	bx	lr	@
.L576:
	mov	r3, #17	@ StartCodeLen,
.L570:
	subs	r0, r3, r0	@ D.34342, StartCodeLen, goldenLen
	mvnne	r0, #0	@ D.34342,
	bx	lr	@
.L573:
	ldrb	r3, [r1, #737]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_fcode_backward, pCtx_6(D)->MP4Vop.vop_fcode_backward
	ldrb	r2, [r1, #736]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_fcode_forward, pCtx_6(D)->MP4Vop.vop_fcode_forward
	cmp	r3, r2	@ pCtx_6(D)->MP4Vop.vop_fcode_backward, pCtx_6(D)->MP4Vop.vop_fcode_forward
	movcc	r3, r2	@ Fcode, pCtx_6(D)->MP4Vop.vop_fcode_forward
	add	r3, r3, #16	@ StartCodeLen, Fcode,
	cmp	r3, #18	@ StartCodeLen,
	movlt	r3, #18	@ StartCodeLen,
	b	.L570	@
.L572:
	ldrb	r3, [r1, #736]	@ zero_extendqisi2	@ Fcode, pCtx_6(D)->MP4Vop.vop_fcode_forward
	add	r3, r3, #16	@ StartCodeLen, Fcode,
	b	.L570	@
.L569:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #1	@,
	ldr	r1, .L579	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34342,
	ldmfd	sp!, {r4, pc}	@
.L580:
	.align	2
.L579:
	.word	.LC32
	.fnend
	.size	Mp4_Check_Slice_NotSH, .-Mp4_Check_Slice_NotSH
	.align	2
	.global	Mp4_Combine_SliceData
	.type	Mp4_Combine_SliceData, %function
Mp4_Combine_SliceData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #16384	@ tmp155, pCtx,
	add	r3, r0, #12288	@ tmp206, pCtx,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r0, r0, #1264	@ pSlcPara, pCtx,
	ldr	ip, [r2, #3584]	@ pCtx_4(D)->PicIntegrality, pCtx_4(D)->PicIntegrality
	add	r0, r0, #12	@ pSlcPara, pSlcPara,
	ldr	r2, [r3, #3324]	@ SlcNum, pCtx_4(D)->Mp4DecParam.SlcNum
	tst	ip, #2	@ pCtx_4(D)->PicIntegrality,
	beq	.L582	@,
	ldrb	ip, [r3, #3421]	@ zero_extendqisi2	@ D.34351, pCtx_4(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	ip, #1	@ D.34351,
	beq	.L597	@,
	cmp	ip, #0	@ D.34351,
	bne	.L590	@,
	ldrb	ip, [r3, #3501]	@ zero_extendqisi2	@ pCtx_4(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_4(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	ip, #1	@ pCtx_4(D)->stCurPacket.StreamPack[1].IsLastSeg,
	bne	.L590	@,
	mov	ip, r2, asl #5	@ tmp189, SlcNum,
	sub	r2, ip, r2, asl #2	@ D.34350, tmp189, SlcNum,
	sub	r2, r2, #28	@ D.34352, D.34350,
	add	r2, r0, r2	@ D.34353, pSlcPara, D.34352
	ldr	r0, [r2, #12]	@ _39->bit_len, _39->bit_len
	cmp	r0, #0	@ _39->bit_len,
	bne	.L592	@,
	ldr	r0, [r2, #20]	@ _39->phy_address, _39->phy_address
	cmp	r0, #0	@ _39->phy_address,
	bne	.L592	@,
	ldr	ip, [r2, #8]	@ _39->bit_len, _39->bit_len
	add	r1, ip, r1, lsl #3	@ D.34350, _39->bit_len, CodeLen,
	str	r1, [r2, #8]	@ D.34350, _39->bit_len
	ldr	r1, [r3, #3504]	@ D.34350, pCtx_4(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r1, [r2, #20]	@ D.34350, _39->phy_address
	ldr	r3, [r3, #3508]	@ pCtx_4(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_4(D)->stCurPacket.StreamPack[1].LenInByte
	mov	r3, r3, asl #3	@ D.34350, pCtx_4(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r3, [r2, #12]	@ D.34350, _39->bit_len
	ldmfd	sp!, {r4, pc}	@
.L597:
	sub	r4, r2, #1	@ D.34350, SlcNum,
	movw	lr, #510	@ tmp161,
	cmp	r4, lr	@ D.34350, tmp161
	bhi	.L598	@,
	mov	lr, r2, asl #5	@ tmp165, SlcNum,
	sub	r2, lr, r2, asl #2	@ D.34350, tmp165, SlcNum,
	sub	r2, r2, #28	@ D.34352, D.34350,
	add	r2, r0, r2	@ D.34353, pSlcPara, D.34352
	ldr	r0, [r2, #12]	@ D.34350, _14->bit_len
	cmp	r0, #0	@ D.34350,
	beq	.L586	@,
	ldr	lr, [r2, #20]	@ D.34350, _14->phy_address
	cmp	lr, #0	@ D.34350,
	beq	.L586	@,
	ldr	r3, [r3, #3424]	@ pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr
	cmp	lr, r3	@ D.34350, pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr
	bhi	.L599	@,
	add	r1, r0, r1, lsl #3	@ D.34350, D.34350, CodeLen,
	mov	r0, #0	@ D.34349,
	str	r1, [r2, #12]	@ D.34350, _14->bit_len
	ldmfd	sp!, {r4, pc}	@
.L586:
	ldr	ip, [r3, #3424]	@ pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr
	ldr	r0, [r2, #16]	@ _14->phy_address, _14->phy_address
	cmp	ip, r0	@ pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr, _14->phy_address
	movls	r1, r1, asl #3	@ D.34354, CodeLen,
	strls	r1, [r2, #12]	@ D.34354, _14->bit_len
	ldrls	r3, [r3, #3424]	@ D.34350, pCtx_4(D)->stCurPacket.StreamPack[0].PhyAddr
	movhi	r0, #0	@ D.34349,
	ldrhi	r3, [r2, #8]	@ _14->bit_len, _14->bit_len
	movls	r0, #0	@ D.34349,
	addhi	r1, r3, r1, lsl #3	@ D.34350, _14->bit_len, CodeLen,
	strls	r3, [r2, #20]	@ D.34350, _14->phy_address
	strhi	r1, [r2, #8]	@ D.34350, _14->bit_len
	ldmfd	sp!, {r4, pc}	@
.L590:
	movw	r2, #4666	@,
	ldr	r1, .L600	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34349,
	ldmfd	sp!, {r4, pc}	@
.L592:
	mvn	r0, #0	@ D.34349,
	ldmfd	sp!, {r4, pc}	@
.L582:
	mov	r2, #4672	@,
	ldr	r1, .L600	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34349,
	ldmfd	sp!, {r4, pc}	@
.L598:
	mov	r0, ip	@, D.34351
	ldr	r1, .L600+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34349,
	ldmfd	sp!, {r4, pc}	@
.L599:
	mov	r0, ip	@, D.34351
	movw	r2, #4642	@,
	ldr	r1, .L600	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34349,
	ldmfd	sp!, {r4, pc}	@
.L601:
	.align	2
.L600:
	.word	.LC34
	.word	.LC33
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
	bne	.L603	@,
	mov	r3, #2	@ tmp127,
	strb	r3, [r0, #797]	@ tmp127, pCtx_1(D)->MP4Syntax.is_short_header
	ldr	r3, [r1]	@ *StartCode_6(D), *StartCode_6(D)
	mov	r3, r3, lsr #8	@ D.34365, *StartCode_6(D),
	sub	r3, r3, #128	@ D.34365, D.34365,
	cmp	r3, #3	@ D.34365,
	ldrlsb	r3, [r2, #3576]	@ zero_extendqisi2	@ pCtx_1(D)->ScdUpMsg.SliceFlag, pCtx_1(D)->ScdUpMsg.SliceFlag
	orrls	r3, r3, #2	@ tmp136, pCtx_1(D)->ScdUpMsg.SliceFlag,
	strlsb	r3, [r2, #3576]	@ tmp136, pCtx_1(D)->ScdUpMsg.SliceFlag
.L604:
	mov	r0, #0	@,
	bx	lr	@
.L603:
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
	ble	.L608	@,
.L607:
	add	r4, r4, #1	@ i, i,
	ldr	r1, [r5, #4]!	@, MEM[base: _20, offset: 0B]
	mov	r0, r7	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	cmp	r4, r6	@ i, StreamIDNum
	bne	.L607	@,
.L608:
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
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r1	@ ErrRatio, ErrRatio
	add	r0, r0, #1040	@, pCtx,
	movw	r1, #14664	@,
	add	r4, r5, #20480	@ tmp481, pCtx,
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
	beq	.L650	@,
	ldr	r2, [r4, #2072]	@, pCtx_12(D)->FrameNum
	mov	r0, #11	@,
	ldr	r1, .L656	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #1432]	@ zero_extendqisi2	@, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	ldr	r1, .L656+4	@,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2064]	@ D.34386, pCtx_12(D)->ErrorLevel
	add	r1, r5, #22528	@, pCtx,
	add	r1, r1, #52	@,,
	str	r3, [r7, #180]	@ D.34386, pCurImg_24->error_level
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	Mp4_ClearUsrData	@
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	beq	.L614	@,
	ldr	r3, [r4, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r2, [r4, #2064]	@ pCtx_12(D)->ErrorLevel, pCtx_12(D)->ErrorLevel
	ldr	r3, [r3]	@ _46->s32RefErrThr, _46->s32RefErrThr
	cmp	r2, r3	@ pCtx_12(D)->ErrorLevel, _46->s32RefErrThr
	bhi	.L651	@,
.L614:
	mov	r3, #0	@ tmp322,
	mov	r0, r5	@, pCtx
	str	r3, [r4, #2120]	@ tmp322, pCtx_12(D)->IPVopErr
	bl	MP4_SetImgFormat	@
	ldr	r3, [r4, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _86->s32DecOrderOutput, _86->s32DecOrderOutput
	cmp	r3, #1	@ _86->s32DecOrderOutput,
	beq	.L616	@,
	ldrb	r6, [r4, #1432]	@ zero_extendqisi2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r6, #2	@ pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type,
	beq	.L617	@,
	ldr	r3, [r4, #2488]	@ pCtx_12(D)->RefNum, pCtx_12(D)->RefNum
	cmp	r3, #1	@ pCtx_12(D)->RefNum,
	ble	.L618	@,
	ldr	r3, [r4, #2492]	@ D.34385, pCtx_12(D)->FwdFsID
	ldr	r9, [r4, #2496]	@ ToQueTimePP, pCtx_12(D)->FwdTimePP
	str	r3, [r4, #2512]	@ D.34385, pCtx_12(D)->ToQueFsID
	ldrb	r6, [r5]	@ zero_extendqisi2	@ ToQueCodingType, pCtx_12(D)->FwdCodingType
.L619:
	cmn	r3, #1	@ D.34385,
	beq	.L621	@,
	mov	r1, r3	@, D.34385
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pToQueImg,
	beq	.L652	@,
	cmp	r9, #0	@ ToQueTimePP,
	cmpeq	r6, #4	@, ToQueCodingType,
	moveq	r9, #1	@ tmp365,
	movne	r9, #0	@ tmp365,
	beq	.L653	@,
	ldr	r2, [r7, #180]	@ D.34386, pToQueImg_114->error_level
	cmp	r2, #0	@ D.34386,
	beq	.L624	@,
	ldr	r3, [r4, #1580]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #4]	@ D.34387, _134->s32OutErrThr
	cmp	r2, r3	@ D.34386, D.34387
	bhi	.L625	@,
.L624:
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r8, r0, #0	@ pstLogicFs,
	beq	.L654	@,
	cmp	r6, #2	@ ToQueCodingType,
	beq	.L627	@,
	ldrsb	r3, [r8, #1]	@ pstLogicFs_152->s32DispState, pstLogicFs_152->s32DispState
	cmp	r3, #2	@ pstLogicFs_152->s32DispState,
	beq	.L627	@,
	ldr	r2, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	mov	r0, #11	@,
	ldr	r1, .L656+8	@,
	bl	dprint_vfmw	@
	b	.L621	@
.L627:
	mov	r2, #1	@,
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #22528	@, pCtx,
	ldr	r0, [r4, #2480]	@ pCtx_12(D)->ChanID, pCtx_12(D)->ChanID
	add	r3, r3, #80	@,,
	str	r7, [sp]	@ pToQueImg,
	mov	r2, r5	@, pCtx
	mov	r1, #2	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L655	@,
.L621:
	ldr	r3, [r4, #2072]	@ pCtx_12(D)->FrameNum, pCtx_12(D)->FrameNum
	mov	r0, #0	@ D.34385,
	add	r3, r3, #1	@ D.34386, pCtx_12(D)->FrameNum,
	str	r3, [r4, #2072]	@ D.34386, pCtx_12(D)->FrameNum
.L647:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L616:
	ldr	r3, [r4, #2508]	@ D.34385, pCtx_12(D)->CurFsID
	ldrb	r6, [r4, #1432]	@ zero_extendqisi2	@ ToQueCodingType, pCtx_12(D)->MP4Syntax.syn_vop.vop_coding_type
	ldr	r9, [r4, #1524]	@ ToQueTimePP, pCtx_12(D)->MP4Syntax.time_pp
	str	r3, [r4, #2512]	@ D.34385, pCtx_12(D)->ToQueFsID
	b	.L619	@
.L618:
	mvn	r3, #0	@ tmp480,
	str	r3, [r4, #2512]	@ tmp480, pCtx_12(D)->ToQueFsID
	b	.L621	@
.L617:
	ldr	r3, [r4, #2508]	@ D.34385, pCtx_12(D)->CurFsID
	cmp	r8, #0	@ pBwdImg,
	ldr	r9, [r4, #1524]	@ ToQueTimePP, pCtx_12(D)->MP4Syntax.time_pp
	str	r3, [r4, #2512]	@ D.34385, pCtx_12(D)->ToQueFsID
	beq	.L619	@,
	ldrd	r10, [r8, #8]	@ D.34392, pBwdImg,
	ldrd	r0, [r7, #8]	@ D.34392, pCurImg,
	cmp	r10, r0	@ D.34392, D.34392
	sbcs	r2, fp, r1	@ tmp482, D.34392, D.34392
	strltd	r10, [r7, #8]	@ D.34392, pCurImg,
	strltd	r0, [r8, #8]	@ D.34392, pBwdImg,
	ldrlt	r3, [r4, #2512]	@ D.34385, pCtx_12(D)->ToQueFsID
	b	.L619	@
.L625:
	ldr	r1, .L656+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r7, #192]	@, pToQueImg_114->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r9, [r7, #192]	@ tmp365, pToQueImg_114->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_114->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r9, [r7, #196]	@ tmp365, pToQueImg_114->p_usrdat
	mov	r2, r9	@, tmp365
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L621	@
.L651:
	mov	r7, #1	@ tmp265,
	ldr	r1, [r4, #2500]	@, pCtx_12(D)->BwdFsID
	str	r7, [r4, #2120]	@ tmp265, pCtx_12(D)->IPVopErr
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L615	@,
	ldr	r1, [r5, #192]	@, pImg_53->p_usrdat
	mov	r6, #0	@ tmp288,
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_53->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_53->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_53->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp288, pImg_53->p_usrdat
	str	r6, [r5, #196]	@ tmp288, pImg_53->p_usrdat
	mov	r2, r7	@, tmp265
	str	r6, [r5, #200]	@ tmp288, pImg_53->p_usrdat
	str	r6, [r5, #204]	@ tmp288, pImg_53->p_usrdat
	ldr	r1, [r4, #2500]	@, pCtx_12(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, r7	@, tmp265
	ldr	r1, [r4, #2492]	@, pCtx_12(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2492]	@ tmp288, pCtx_12(D)->FwdFsID
	str	r6, [r4, #2500]	@ tmp288, pCtx_12(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2500]	@ D.34387, pCtx_12(D)->BwdFsID
	str	r0, [r4, #2492]	@ D.34387, pCtx_12(D)->FwdFsID
.L615:
	mov	r3, #0	@ tmp319,
	mvn	r0, #0	@ D.34385,
	str	r3, [r4, #2488]	@ tmp319, pCtx_12(D)->RefNum
	b	.L647	@
.L655:
	ldr	r1, [r7, #192]	@, pToQueImg_114->p_usrdat
	mov	r5, #0	@ tmp438,
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
.L649:
	bl	FreeUsdByDec	@
	str	r5, [r7, #192]	@ tmp438, pToQueImg_114->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_114->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r7, #196]	@ tmp438, pToQueImg_114->p_usrdat
	mov	r2, r5	@, tmp438
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.34385,
	b	.L647	@
.L653:
	ldr	ip, [r4, #2480]	@ D.34387, pCtx_12(D)->ChanID
	mov	r5, #0	@ tmp385,
	ldr	r3, .L656+16	@ tmp368,
	ldr	r1, [r7, #192]	@, pToQueImg_114->p_usrdat
	mov	r2, ip, asl #5	@ tmp371, D.34387,
	mov	r0, ip	@, D.34387
	sub	r2, r2, ip, asl #3	@ tmp372, tmp371, D.34387,
	add	r3, r3, r2	@ tmp373, tmp368, tmp372
	ldr	r2, [r3, #16]	@ g_VfmwChanStat[_119].u32SkipDiscard, g_VfmwChanStat[_119].u32SkipDiscard
	add	r2, r2, #1	@ D.34386, g_VfmwChanStat[_119].u32SkipDiscard,
	str	r2, [r3, #16]	@ D.34386, g_VfmwChanStat[_119].u32SkipDiscard
	b	.L649	@
.L650:
	str	r0, [sp]	@ pFwdImg,
	mov	r3, r8	@, pBwdImg
	mov	r2, r7	@, pCurImg
	mov	r0, r7	@, tmp2
	ldr	r1, .L656+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34385,
	b	.L647	@
.L652:
	movw	r2, #4405	@,
	ldr	r1, .L656+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34385,
	b	.L647	@
.L654:
	ldr	r1, [r7, #192]	@, pToQueImg_114->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #192]	@ pstLogicFs, pToQueImg_114->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_114->p_usrdat
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #196]	@ pstLogicFs, pToQueImg_114->p_usrdat
	mov	r2, r8	@, pstLogicFs
	ldr	r0, [r4, #2480]	@, pCtx_12(D)->ChanID
	ldr	r1, [r4, #2512]	@, pCtx_12(D)->ToQueFsID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.34385,
	b	.L647	@
.L657:
	.align	2
.L656:
	.word	.LC36
	.word	.LC37
	.word	.LC39
	.word	.LC40
	.word	g_VfmwChanStat
	.word	.LC35
	.word	.LC38
	.fnend
	.size	MPEG4DEC_VDMPostProc, .-MPEG4DEC_VDMPostProc
	.align	2
	.global	MP4_Record_SlcSegID
	.type	MP4_Record_SlcSegID, %function
MP4_Record_SlcSegID:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #16384	@ tmp126, pCtx,
	movw	r6, #1022	@ tmp127,
	mov	r1, r0	@ pCtx, pCtx
	ldr	r2, [r5, #3580]	@ D.34407, pCtx_2(D)->StreamIDNum
	cmp	r2, r6	@ D.34407, tmp127
	bhi	.L662	@,
	add	r0, r0, #12288	@ tmp141, pCtx,
	add	r1, r1, r2, lsl #2	@ D.34412, pCtx, D.34407,
	add	r1, r1, #12288	@ tmp139, D.34412,
	add	r3, r2, #1	@ D.34407, D.34407,
	ldr	ip, [r0, #3432]	@ pCtx_2(D)->stCurPacket.StreamPack[0].StreamID, pCtx_2(D)->stCurPacket.StreamPack[0].StreamID
	str	ip, [r1, #3580]	@ pCtx_2(D)->stCurPacket.StreamPack[0].StreamID, MEM[(HI_U32 *)_25 + 15868B]
	str	r3, [r5, #3580]	@ D.34407, pCtx_2(D)->StreamIDNum
	ldrb	r3, [r0, #3421]	@ zero_extendqisi2	@ pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldrb	r3, [r0, #3501]	@ zero_extendqisi2	@ pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg,
	ldreq	r3, [r0, #3512]	@ pCtx_2(D)->stCurPacket.StreamPack[1].StreamID, pCtx_2(D)->stCurPacket.StreamPack[1].StreamID
	addeq	r2, r2, #2	@ D.34407, D.34407,
	streq	r3, [r1, #3584]	@ pCtx_2(D)->stCurPacket.StreamPack[1].StreamID, MEM[(HI_U32 *)_25 + 15872B]
	streq	r2, [r5, #3580]	@ D.34407, pCtx_2(D)->StreamIDNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L662:
	mov	r4, r0	@ pCtx, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r4	@, pCtx
	bl	MP4_ClearCurPic	@
	add	r3, r4, #20480	@ tmp131, pCtx,
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r3, #2480]	@, pCtx_2(D)->ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	mov	r3, r6	@, tmp127
	ldr	r2, [r5, #3580]	@, pCtx_2(D)->StreamIDNum
	mov	r0, #0	@,
	ldr	r1, .L663	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L664:
	.align	2
.L663:
	.word	.LC41
	.fnend
	.size	MP4_Record_SlcSegID, .-MP4_Record_SlcSegID
	.align	2
	.global	Mp4_Syntax_ShortHeader
	.type	Mp4_Syntax_ShortHeader, %function
Mp4_Syntax_ShortHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #12288	@ tmp475, pCtx,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r7, r0	@ pCtx, pCtx
	ldr	r6, [r8, #3324]	@ D.34420, pCtx_14(D)->Mp4DecParam.SlcNum
	mov	r5, r1	@ ptr, ptr
	mov	r4, r2	@ len, len
	cmp	r6, #0	@ D.34420,
	bne	.L702	@,
.L666:
	mov	r2, r4	@, len
	mov	r1, r5	@, ptr
	add	r0, sp, #4	@ tmp480,,
	add	r5, r7, #20480	@ tmp472, pCtx,
	bl	BsInit	@
	add	r0, r7, #20992	@, pCtx,
	add	r0, r0, #216	@,,
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r1, #22	@,
	add	r0, sp, #4	@ tmp481,,
	bl	BsSkip	@
	mov	r1, #13	@,
	add	r0, sp, #4	@ tmp482,,
	bl	BsSkip	@
	add	r0, sp, #4	@ tmp483,,
	mov	r1, #3	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34422,
	strb	r0, [r5, #738]	@ D.34422, pCtx_14(D)->MP4Vop.source_format
	sub	r3, r0, #1	@ tmp181, D.34422,
	cmp	r3, #3	@ tmp181,
	ldrls	pc, [pc, r3, asl #2]	@ tmp181
	b	.L667	@
.L669:
	.word	.L668
	.word	.L670
	.word	.L671
	.word	.L672
.L672:
	mov	r2, #18	@ tmp226,
	mov	r3, #88	@ tmp230,
	strb	r2, [r5, #739]	@ tmp226, pCtx_14(D)->MP4Vop.num_gobs_invop
	mov	r2, #704	@ tmp234,
	strb	r3, [r5, #740]	@ tmp230, pCtx_14(D)->MP4Vop.num_mb_ingob
	mov	r3, #576	@ tmp237,
	str	r2, [r5, #1496]	@ tmp234, pCtx_14(D)->MP4Syntax.image_width
	str	r3, [r5, #1492]	@ tmp237, pCtx_14(D)->MP4Syntax.image_height
.L673:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp485,,
	bl	BsGet	@
	ldrb	r3, [r5, #795]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Syntax.coding_mode, pCtx_14(D)->MP4Syntax.coding_mode
	cmp	r3, #2	@ pCtx_14(D)->MP4Syntax.coding_mode,
	uxtb	r0, r0	@ D.34422,
	strb	r0, [r5, #728]	@ D.34422, pCtx_14(D)->MP4Vop.vop_coding_type
	beq	.L675	@,
	adds	r0, r0, #0	@ tmp263, D.34422,
	ldr	r3, [r5, #2120]	@ pCtx_14(D)->IPVopErr, pCtx_14(D)->IPVopErr
	movne	r0, #1	@ tmp263,
	cmp	r3, #1	@ pCtx_14(D)->IPVopErr,
	movne	r0, #0	@ tmp263,
	cmp	r0, #0	@ tmp263,
	bne	.L675	@,
	mov	r1, #4	@,
	add	r0, sp, r1	@ tmp487,,
	bl	BsSkip	@
	mov	r1, #5	@,
	add	r0, sp, #4	@ tmp488,,
	mov	r10, r4, asl #3	@ D.34421, len,
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r4, #0	@ i,
	uxtb	r0, r0	@ D.34422,
	cmp	r0, #0	@ D.34422,
	strneb	r0, [r5, #735]	@ D.34422, pCtx_14(D)->MP4Vop.vop_quant
	add	r0, sp, #4	@ tmp489,,
	moveq	r3, #1	@ tmp272,
	streqb	r3, [r5, #735]	@ tmp272, pCtx_14(D)->MP4Vop.vop_quant
	bl	BsSkip	@
.L681:
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp490,,
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L703	@,
	add	r4, r4, #1	@ i, i,
	cmp	r4, #15	@ i,
	bls	.L682	@,
.L700:
	mov	r4, #0	@ tmp281,
	add	r0, sp, #4	@ tmp494,,
	strb	r4, [r5, #1561]	@ tmp281, pCtx_14(D)->MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	ldr	r3, .L707	@ tmp284,
	ldr	r3, [r3]	@ D.34423, g_event_report
	cmp	r3, r4	@ D.34423,
	mov	r9, r0	@ BitUsed,
	beq	.L688	@,
	mov	r2, r4	@, tmp281
	ldr	r0, [r5, #2480]	@, pCtx_14(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.34423
	mov	r0, r9	@ D.34418, BitUsed
.L699:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L671:
	mov	r2, #18	@ tmp212,
	mov	r3, #22	@ tmp216,
	strb	r2, [r5, #739]	@ tmp212, pCtx_14(D)->MP4Vop.num_gobs_invop
	mov	r2, #352	@ tmp220,
	strb	r3, [r5, #740]	@ tmp216, pCtx_14(D)->MP4Vop.num_mb_ingob
	mov	r3, #288	@ tmp223,
	str	r2, [r5, #1496]	@ tmp220, pCtx_14(D)->MP4Syntax.image_width
	str	r3, [r5, #1492]	@ tmp223, pCtx_14(D)->MP4Syntax.image_height
	b	.L673	@
.L670:
	mov	r2, #9	@ tmp198,
	mov	r3, #11	@ tmp202,
	strb	r2, [r5, #739]	@ tmp198, pCtx_14(D)->MP4Vop.num_gobs_invop
	mov	r2, #176	@ tmp206,
	strb	r3, [r5, #740]	@ tmp202, pCtx_14(D)->MP4Vop.num_mb_ingob
	mov	r3, #144	@ tmp209,
	str	r2, [r5, #1496]	@ tmp206, pCtx_14(D)->MP4Syntax.image_width
	str	r3, [r5, #1492]	@ tmp209, pCtx_14(D)->MP4Syntax.image_height
	b	.L673	@
.L668:
	mov	r2, #6	@ tmp184,
	mov	r3, #8	@ tmp188,
	strb	r2, [r5, #739]	@ tmp184, pCtx_14(D)->MP4Vop.num_gobs_invop
	mov	r2, #128	@ tmp192,
	strb	r3, [r5, #740]	@ tmp188, pCtx_14(D)->MP4Vop.num_mb_ingob
	mov	r3, #96	@ tmp195,
	str	r2, [r5, #1496]	@ tmp192, pCtx_14(D)->MP4Syntax.image_width
	str	r3, [r5, #1492]	@ tmp195, pCtx_14(D)->MP4Syntax.image_height
	b	.L673	@
.L703:
	add	r0, sp, #4	@ tmp491,,
	add	r4, r4, #1	@ i, i,
	bl	BsPos	@
	mov	r1, #8	@,
	cmp	r0, r10	@, D.34421
	add	r0, sp, #4	@ tmp492,,
	bgt	.L704	@,
	bl	BsSkip	@
	cmp	r4, #15	@ i,
	bls	.L681	@,
	b	.L700	@
.L702:
	mov	r2, r6	@, D.34420
	ldr	r1, .L707+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r6, [r8, #3324]	@ D.34420, pCtx_14(D)->Mp4DecParam.SlcNum
	b	.L666	@
.L682:
	add	fp, r7, #16384	@ tmp474, pCtx,
	mov	r2, #1	@ tmp290,
	strb	r2, [r5, #1561]	@ tmp290, pCtx_14(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #4	@ tmp495,,
	ldr	r3, [fp, #3584]	@ pCtx_14(D)->PicIntegrality, pCtx_14(D)->PicIntegrality
	orr	r3, r3, #2	@ D.34420, pCtx_14(D)->PicIntegrality,
	str	r3, [fp, #3584]	@ D.34420, pCtx_14(D)->PicIntegrality
	ldr	r3, [r8, #3324]	@ pCtx_14(D)->Mp4DecParam.SlcNum, pCtx_14(D)->Mp4DecParam.SlcNum
	add	r3, r3, r2	@ D.34420, pCtx_14(D)->Mp4DecParam.SlcNum,
	str	r3, [r8, #3324]	@ D.34420, pCtx_14(D)->Mp4DecParam.SlcNum
	strb	r2, [r5, #736]	@ tmp290, pCtx_14(D)->MP4Vop.vop_fcode_forward
	bl	BsPos	@
	mov	r3, r6, asl #2	@ tmp476, D.34420,
	mov	r6, r6, asl #5	@ tmp471, D.34420,
	mov	r2, r0, asr #31	@ tmp324, BitUsed,
	mov	r9, r0	@ BitUsed,
	rsb	r0, r3, r6	@ tmp312, tmp476, tmp471
	rsb	r4, r9, r10	@ D.34421, BitUsed, D.34421
	add	r0, r7, r0	@ tmp313, pCtx, tmp312
	mov	r2, r2, lsr #29	@ tmp325, tmp324,
	add	r1, r9, r2	@ tmp326, BitUsed, tmp325
	cmp	r9, #0	@ BitUsed,
	and	r1, r1, #7	@ tmp327, tmp326,
	str	r4, [r0, #1284]	@ D.34421, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].bit_len
	ldr	lr, [r5, #1576]	@ pCtx_14(D)->BitsObj.offset, pCtx_14(D)->BitsObj.offset
	rsb	r2, r2, r1	@ D.34421, tmp325, tmp327
	add	ip, r9, #7	@ tmp345, BitUsed,
	movge	r1, r9	@ BitUsed, BitUsed
	add	r2, r2, lr	@ tmp334, D.34421, pCtx_14(D)->BitsObj.offset
	strb	r2, [r0, #1282]	@ tmp334, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].bit_offset
	ldr	r2, [r5, #1568]	@ pCtx_14(D)->BitsObj.phy_addr, pCtx_14(D)->BitsObj.phy_addr
	movlt	r1, ip	@ BitUsed, tmp345
	add	r2, r2, r1, asr #3	@ D.34420, pCtx_14(D)->BitsObj.phy_addr, BitUsed,
	str	r2, [r0, #1292]	@ D.34420, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].phy_address
	ldrb	r2, [r8, #3421]	@ zero_extendqisi2	@ pCtx_14(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_14(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r2, #0	@ pCtx_14(D)->stCurPacket.StreamPack[0].IsLastSeg,
	beq	.L705	@,
.L683:
	rsb	r2, r3, r6	@ tmp390, tmp476, tmp471
	mov	r1, #0	@ tmp394,
	add	r2, r7, r2	@ tmp391, pCtx, tmp390
	add	ip, r2, #1280	@ tmp393, tmp391,
	add	r0, r2, #1264	@ tmp401, tmp391,
	str	r1, [ip, #8]	@ tmp394, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].bit_len
	strb	r1, [r0, #19]	@ tmp394, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].bit_offset
	str	r1, [ip, #16]	@ tmp394, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].phy_address
.L684:
	ldrb	r2, [r5, #728]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.vop_coding_type, pCtx_14(D)->MP4Vop.vop_coding_type
	rsb	r6, r3, r6	@ tmp415, tmp476, tmp471
	add	r3, r7, r6	@ tmp416, pCtx, tmp415
	strb	r2, [r3, #1280]	@ pCtx_14(D)->MP4Vop.vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].vop_coding_type
	ldrb	r2, [r5, #737]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.vop_fcode_backward, pCtx_14(D)->MP4Vop.vop_fcode_backward
	strb	r2, [r3, #1278]	@ pCtx_14(D)->MP4Vop.vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].vop_fcode_backward
	ldrb	r2, [r5, #736]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.vop_fcode_forward, pCtx_14(D)->MP4Vop.vop_fcode_forward
	strb	r2, [r3, #1277]	@ pCtx_14(D)->MP4Vop.vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].vop_fcode_forward
	ldrb	r2, [r5, #735]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.vop_quant, pCtx_14(D)->MP4Vop.vop_quant
	strb	r2, [r3, #1281]	@ pCtx_14(D)->MP4Vop.vop_quant, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].vop_quant
	ldrb	r2, [r5, #732]	@ zero_extendqisi2	@ pCtx_14(D)->MP4Vop.intra_dc_vlc_thr, pCtx_14(D)->MP4Vop.intra_dc_vlc_thr
	strb	r2, [r3, #1279]	@ pCtx_14(D)->MP4Vop.intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].intra_dc_vlc_thr
	ldr	r2, [fp, #3580]	@ D.34420, pCtx_14(D)->StreamIDNum
	cmp	r2, #0	@ D.34420,
	bne	.L706	@,
.L685:
	mov	r0, r7	@, pCtx
	bl	MP4_Record_SlcSegID	@
	mov	r0, r9	@ D.34418, BitUsed
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L675:
	add	r0, sp, #4	@ tmp486,,
	bl	BsPos	@
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L667:
	mov	r4, #0	@ tmp240,
	add	r0, sp, #4	@ tmp484,,
	strb	r4, [r5, #1561]	@ tmp240, pCtx_14(D)->MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	ldr	r3, .L707	@ tmp243,
	ldr	r3, [r3]	@ D.34423, g_event_report
	cmp	r3, r4	@ D.34423,
	mov	r9, r0	@ BitUsed,
	beq	.L688	@,
	mov	r2, r4	@, tmp240
	ldr	r0, [r5, #2480]	@, pCtx_14(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.34423
	mov	r0, r9	@ D.34418, BitUsed
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L705:
	ldrb	r1, [r8, #3501]	@ zero_extendqisi2	@ pCtx_14(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_14(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r1, #1	@ pCtx_14(D)->stCurPacket.StreamPack[1].IsLastSeg,
	bne	.L683	@,
	ldr	r1, [r8, #3508]	@ pCtx_14(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_14(D)->stCurPacket.StreamPack[1].LenInByte
	strb	r2, [r0, #1283]	@ pCtx_14(D)->stCurPacket.StreamPack[0].IsLastSeg, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].bit_offset
	mov	r2, r1, asl #3	@ D.34420, pCtx_14(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r2, [r0, #1288]	@ D.34420, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].bit_len
	ldr	r2, [r8, #3504]	@ pCtx_14(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_14(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r2, [r0, #1296]	@ pCtx_14(D)->stCurPacket.StreamPack[1].PhyAddr, MEM[(struct MP4_SLICE_INFO *)pCtx_14(D)].Mp4DecParam.SlcPara[_140].phy_address
	b	.L684	@
.L706:
	ldr	r1, .L707+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L685	@
.L688:
	mov	r0, r9	@ D.34418, BitUsed
	b	.L699	@
.L704:
	bl	BsPos	@
	b	.L699	@
.L708:
	.align	2
.L707:
	.word	g_event_report
	.word	.LC42
	.word	.LC43
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
	add	r7, r0, #12288	@ tmp581, pCtx,
	mov	r6, r2	@ len, len
	.pad #52
	sub	sp, sp, #52	@,,
	ldr	r2, [r7, #3324]	@ D.34442, pCtx_31(D)->Mp4DecParam.SlcNum
	mov	r5, r0	@ pCtx, pCtx
	mov	r9, r1	@ ptr, ptr
	cmp	r2, #0	@ D.34442,
	bne	.L788	@,
	add	r4, r5, #20480	@ tmp583, pCtx,
	ldrb	r3, [r4, #789]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.vol_decode_over, pCtx_31(D)->MP4Syntax.vol_decode_over
	cmp	r3, #0	@ pCtx_31(D)->MP4Syntax.vol_decode_over,
	bne	.L711	@,
.L789:
	mov	r0, #32	@ D.34439,
	strb	r3, [r4, #1561]	@ pCtx_31(D)->MP4Syntax.vol_decode_over, pCtx_31(D)->MP4SyntaxState.vop_decode_right
.L712:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L788:
	add	r4, r5, #20480	@ tmp583, pCtx,
	ldr	r1, .L804	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp251,
	str	r3, [r7, #3324]	@ tmp251, pCtx_31(D)->Mp4DecParam.SlcNum
	ldrb	r3, [r4, #789]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.vol_decode_over, pCtx_31(D)->MP4Syntax.vol_decode_over
	cmp	r3, #0	@ pCtx_31(D)->MP4Syntax.vol_decode_over,
	beq	.L789	@,
.L711:
	add	r8, r5, #20992	@ __p, pCtx,
	mov	r2, r6	@, len
	add	r8, r8, #216	@ __p, __p,
	mov	r1, r9	@, ptr
	add	r0, sp, #20	@ tmp604,,
	bl	BsInit	@
	mov	r0, r8	@, __p
	mov	r1, #60	@,
	bl	__memzero	@
	mov	r3, #0	@ tmp263,
	mov	r1, #32	@,
	strb	r3, [r4, #1561]	@ tmp263, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp605,,
	bl	BsSkip	@
	mov	r1, #2	@,
	add	r0, sp, #20	@ tmp606,,
	bl	BsGet	@
	ldr	r1, .L804+4	@,
	uxtb	r2, r0	@, D.34444
	strb	r0, [r4, #728]	@ D.34444, pCtx_31(D)->MP4Vop.vop_coding_type
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r9, [r4, #728]	@ zero_extendqisi2	@ D.34443, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r9, #3	@ D.34443,
	beq	.L790	@,
.L713:
	adds	r9, r9, #0	@ D.34440, D.34443,
	ldrb	r3, [r4, #795]	@ zero_extendqisi2	@ D.34443, pCtx_31(D)->MP4Syntax.coding_mode
	movne	r9, #1	@ D.34440,
	cmp	r3, #1	@ D.34443,
	movne	r2, #0	@, tmp295
	andeq	r2, r9, #1	@,, tmp295, D.34440
	cmp	r2, #0	@ tmp295,
	bne	.L716	@,
	cmp	r3, #2	@ D.34443,
	beq	.L716	@,
	ldr	r3, [r4, #2120]	@ pCtx_31(D)->IPVopErr, pCtx_31(D)->IPVopErr
	cmp	r3, #1	@ pCtx_31(D)->IPVopErr,
	movne	r9, #0	@, tmp304
	andeq	r9, r9, #1	@,, tmp304, D.34440
	cmp	r9, #0	@ tmp304,
	bne	.L716	@,
	mov	r6, r6, asl #3	@ D.34444, len,
	b	.L719	@
.L792:
	bl	BsPos	@
	add	r9, r9, #1	@ i, i,
	cmp	r0, r6	@, D.34444
	bgt	.L791	@,
	cmp	r9, #6400	@ i,
	beq	.L720	@,
.L719:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp609,,
	bl	BsGet	@
	cmp	r0, #0	@,
	add	r0, sp, #20	@ tmp610,,
	bne	.L792	@,
	cmp	r9, #6400	@ i,
	bcs	.L720	@,
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp613,,
	bl	BsGet	@
	subs	r10, r0, #0	@ D.34444,
	beq	.L793	@,
	ldr	r1, [r4, #896]	@ D.34442, pCtx_31(D)->MP4Syntax.syn_vol.vop_time_incr_bits
	cmp	r1, #0	@ D.34442,
	moveq	r0, r1	@ time_increment, D.34442
	bne	.L794	@,
.L723:
	str	r9, [r4, #1500]	@ i, pCtx_31(D)->MP4Syntax.time_incr
	mov	r1, #1	@,
	str	r0, [r4, #1504]	@ time_increment, pCtx_31(D)->MP4Syntax.time_increment
	add	r0, sp, #20	@ tmp616,,
	bl	BsGet	@
	subs	r9, r0, #0	@ D.34444,
	bne	.L724	@,
	ldr	r1, .L804+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	strb	r9, [r4, #1561]	@ D.34444, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp617,,
	bl	BsPos	@
	ldr	r3, .L804+12	@ tmp340,
	ldr	r3, [r3]	@ D.34445, g_event_report
	cmp	r3, #0	@ D.34445,
	mov	r5, r0	@ BitUsed,
	beq	.L750	@,
	mov	r2, r9	@, D.34444
	ldr	r0, [r4, #2480]	@, pCtx_31(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.34445
	mov	r0, r5	@ D.34439, BitUsed
	b	.L712	@
.L720:
	mov	r3, #0	@ tmp311,
	add	r0, sp, #20	@ tmp612,,
	strb	r3, [r4, #1561]	@ tmp311, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	bl	BsPos	@
	mov	r2, r9	@, i
	ldr	r1, .L804+16	@,
	mov	r4, r0	@ BitUsed,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34439, BitUsed
	b	.L712	@
.L791:
	add	r0, sp, #20	@ tmp611,,
	bl	BsPos	@
	ldr	r1, .L804+20	@,
	mov	r4, r0	@ BitUsed,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34439, BitUsed
	b	.L712	@
.L790:
	ldr	r3, .L804+24	@ tmp274,
	ldr	r2, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r10, r2, #8	@ D.34444, g_VdmCharacter,
	bne	.L713	@,
	strb	r10, [r4, #1561]	@ D.34444, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp607,,
	bl	BsPos	@
	ldr	r3, .L804+12	@ tmp282,
	ldr	r3, [r3]	@ D.34445, g_event_report
	cmp	r3, #0	@ D.34445,
	mov	r5, r0	@ BitUsed,
	beq	.L714	@,
	mov	r2, r10	@, D.34444
	ldr	r0, [r4, #2480]	@, pCtx_31(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.34445
.L714:
	ldr	r1, .L804+28	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34439, BitUsed
	b	.L712	@
.L716:
	add	r0, sp, #20	@ tmp608,,
	bl	BsPos	@
	b	.L712	@
.L724:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp618,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34443,
	strb	r0, [r4, #729]	@ D.34443, pCtx_31(D)->MP4Vop.vop_coded
	cmp	r0, #0	@ D.34443,
	beq	.L795	@,
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ D.34443, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r3, #1	@ D.34443,
	beq	.L726	@,
	cmp	r3, #3	@ D.34443,
	beq	.L796	@,
.L727:
	mov	r3, #0	@ tmp378,
	strb	r3, [r4, #730]	@ tmp378, pCtx_31(D)->MP4Vop.vop_rounding_type
.L728:
	ldrb	r3, [r4, #836]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.syn_vol.video_object_layer_shape, pCtx_31(D)->MP4Syntax.syn_vol.video_object_layer_shape
	mov	r2, #0	@ tmp382,
	strb	r2, [r4, #731]	@ tmp382, pCtx_31(D)->MP4Vop.vop_reduced_resolution
	cmp	r3, #2	@ pCtx_31(D)->MP4Syntax.syn_vol.video_object_layer_shape,
	addeq	r9, r5, #16384	@ tmp582, pCtx,
	beq	.L729	@,
	mov	r1, #3	@,
	add	r0, sp, #20	@ tmp621,,
	bl	BsGet	@
	add	r9, r5, #16384	@ tmp582, pCtx,
	strb	r0, [r4, #732]	@, pCtx_31(D)->MP4Vop.intra_dc_vlc_thr
	ldrb	r3, [r9, #3626]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vol.interlaced, pCtx_31(D)->MP4Vol.interlaced
	cmp	r3, #0	@ pCtx_31(D)->MP4Vol.interlaced,
	streqb	r3, [r4, #734]	@ pCtx_31(D)->MP4Vol.interlaced, pCtx_31(D)->MP4Vop.alternate_vertical_scan_flag
	moveq	r3, #2	@ tmp404,
	streqb	r3, [r4, #733]	@ tmp404, pCtx_31(D)->MP4Vop.top_field_first
	bne	.L797	@,
.L731:
	ldrb	r3, [r4, #840]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable, pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable
	sub	r3, r3, #1	@ tmp415, pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable,
	cmp	r3, #1	@ tmp415,
	bls	.L732	@,
.L735:
	mov	r1, #5	@,
	add	r0, sp, #20	@ tmp624,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34443,
	cmp	r0, #0	@ D.34443,
	moveq	r3, #1	@ tmp455,
	streqb	r3, [r4, #735]	@ tmp455, pCtx_31(D)->MP4Vop.vop_quant
	strneb	r0, [r4, #735]	@ D.34443, pCtx_31(D)->MP4Vop.vop_quant
.L741:
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_coding_type, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r3, #0	@ pCtx_31(D)->MP4Vop.vop_coding_type,
	bne	.L798	@,
.L729:
	mov	r3, #1	@ tmp494,
	strb	r3, [r4, #1561]	@ tmp494, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	ldr	r3, [r9, #3584]	@ pCtx_31(D)->PicIntegrality, pCtx_31(D)->PicIntegrality
	add	r0, r5, #21760	@, pCtx,
	mov	r1, r8	@, __p
	mov	r2, #60	@,
	orr	r3, r3, #2	@ D.34442, pCtx_31(D)->PicIntegrality,
	str	r3, [r9, #3584]	@ D.34442, pCtx_31(D)->PicIntegrality
	ldr	r3, [r7, #3324]	@ pCtx_31(D)->Mp4DecParam.SlcNum, pCtx_31(D)->Mp4DecParam.SlcNum
	add	r0, r0, #152	@,,
	add	r3, r3, #1	@ D.34442, pCtx_31(D)->Mp4DecParam.SlcNum,
	str	r3, [r7, #3324]	@ D.34442, pCtx_31(D)->Mp4DecParam.SlcNum
	bl	memcpy	@
	add	r0, sp, #20	@ tmp639,,
	bl	BsPos	@
	mov	r3, r0, asr #31	@ tmp517, BitUsed,
	mov	r8, r0	@ BitUsed,
	add	r1, r0, #7	@ tmp531, BitUsed,
	rsb	r6, r0, r6	@ D.34444, BitUsed, D.34444
	mov	r3, r3, lsr #29	@ tmp518, tmp517,
	str	r6, [r5, #1284]	@ D.34444, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_len
	add	r2, r8, r3	@ tmp519, BitUsed, tmp518
	ldr	r0, [r4, #1576]	@ pCtx_31(D)->BitsObj.offset, pCtx_31(D)->BitsObj.offset
	and	r2, r2, #7	@ tmp520, tmp519,
	cmp	r8, #0	@ BitUsed,
	rsb	r3, r3, r2	@ D.34444, tmp518, tmp520
	add	r3, r3, r0	@ tmp527, D.34444, pCtx_31(D)->BitsObj.offset
	strb	r3, [r5, #1282]	@ tmp527, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_offset
	ldr	r3, [r4, #1568]	@ pCtx_31(D)->BitsObj.phy_addr, pCtx_31(D)->BitsObj.phy_addr
	movge	r1, r8	@ BitUsed, BitUsed
	add	r3, r3, r1, asr #3	@ D.34442, pCtx_31(D)->BitsObj.phy_addr, BitUsed,
	str	r3, [r5, #1292]	@ D.34442, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].phy_address
	ldrb	r3, [r7, #3421]	@ zero_extendqisi2	@ pCtx_31(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_31(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_31(D)->stCurPacket.StreamPack[0].IsLastSeg,
	bne	.L745	@,
	ldrb	r2, [r7, #3501]	@ zero_extendqisi2	@ pCtx_31(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_31(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_31(D)->stCurPacket.StreamPack[1].IsLastSeg,
	beq	.L799	@,
.L745:
	mov	r3, #0	@ tmp552,
	str	r3, [r5, #1288]	@ tmp552, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_len
	strb	r3, [r5, #1283]	@ tmp552, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_offset
	str	r3, [r5, #1296]	@ tmp552, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].phy_address
.L746:
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
	ldr	r2, [r9, #3580]	@ D.34442, pCtx_31(D)->StreamIDNum
	cmp	r2, #0	@ D.34442,
	bne	.L800	@,
.L747:
	mov	r0, r5	@, pCtx
	bl	MP4_Record_SlcSegID	@
	mov	r0, r8	@ D.34439, BitUsed
	b	.L712	@
.L793:
	ldr	r1, .L804+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	strb	r10, [r4, #1561]	@ D.34444, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp614,,
	bl	BsPos	@
	ldr	r3, .L804+12	@ tmp322,
	ldr	r3, [r3]	@ D.34445, g_event_report
	cmp	r3, #0	@ D.34445,
	mov	r5, r0	@ BitUsed,
	beq	.L750	@,
	mov	r2, r10	@, D.34444
	ldr	r0, [r4, #2480]	@, pCtx_31(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.34445
	mov	r0, r5	@ D.34439, BitUsed
	b	.L712	@
.L794:
	add	r0, sp, #20	@ tmp615,,
	bl	BsGet	@
	b	.L723	@
.L750:
	mov	r0, r5	@ D.34439, BitUsed
	b	.L712	@
.L800:
	ldr	r1, .L804+32	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pCtx
	bl	MP4_ClearCurPic	@
	b	.L747	@
.L795:
	add	r5, r5, #16384	@ tmp361, pCtx,
	mov	r3, #4	@ tmp350,
	mov	r2, #1	@ tmp354,
	strb	r3, [r4, #728]	@ tmp350, pCtx_31(D)->MP4Vop.vop_coding_type
	strb	r3, [r4, #1432]	@ tmp350, pCtx_31(D)->MP4Syntax.syn_vop.vop_coding_type
	add	r0, sp, #20	@ tmp619,,
	strb	r2, [r4, #1561]	@ tmp354, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	ldr	r3, [r5, #3584]	@ pCtx_31(D)->PicIntegrality, pCtx_31(D)->PicIntegrality
	orr	r3, r3, #128	@ D.34442, pCtx_31(D)->PicIntegrality,
	str	r3, [r5, #3584]	@ D.34442, pCtx_31(D)->PicIntegrality
	bl	BsPos	@
	b	.L712	@
.L796:
	ldrb	r3, [r4, #840]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable, pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable
	cmp	r3, #2	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_enable,
	bne	.L727	@,
.L726:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp620,,
	bl	BsGet	@
	strb	r0, [r4, #730]	@, pCtx_31(D)->MP4Vop.vop_rounding_type
	b	.L728	@
.L798:
	mov	r1, #3	@,
	add	r0, sp, #20	@ tmp635,,
	bl	BsGet	@
	uxtb	r10, r0	@ D.34443,
	strb	r10, [r4, #736]	@ D.34443, pCtx_31(D)->MP4Vop.vop_fcode_forward
	cmp	r10, #0	@ D.34443,
	beq	.L801	@,
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_coding_type, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r3, #2	@ pCtx_31(D)->MP4Vop.vop_coding_type,
	bne	.L729	@,
	mov	r1, #3	@,
	add	r0, sp, #20	@ tmp637,,
	bl	BsGet	@
	uxtb	r10, r0	@ D.34443,
	strb	r10, [r4, #737]	@ D.34443, pCtx_31(D)->MP4Vop.vop_fcode_backward
	cmp	r10, #0	@ D.34443,
	bne	.L729	@,
	strb	r10, [r4, #1561]	@ D.34443, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp638,,
	bl	BsPos	@
	ldr	r3, .L804+12	@ tmp488,
	ldr	r3, [r3]	@ D.34445, g_event_report
	cmp	r3, #0	@ D.34445,
	mov	r5, r0	@ BitUsed,
	beq	.L744	@,
	mov	r2, r10	@, D.34443
	ldr	r0, [r4, #2480]	@, pCtx_31(D)->ChanID
	mov	r1, #103	@,
	blx	r3	@ D.34445
.L744:
	ldr	r1, .L804+36	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34439, BitUsed
	b	.L712	@
.L797:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp622,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #733]	@, pCtx_31(D)->MP4Vop.top_field_first
	add	r0, sp, #20	@ tmp623,,
	bl	BsGet	@
	strb	r0, [r4, #734]	@, pCtx_31(D)->MP4Vop.alternate_vertical_scan_flag
	b	.L731	@
.L732:
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Vop.vop_coding_type, pCtx_31(D)->MP4Vop.vop_coding_type
	cmp	r3, #3	@ pCtx_31(D)->MP4Vop.vop_coding_type,
	bne	.L735	@,
	ldrb	r3, [r4, #852]	@ zero_extendqisi2	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_warping_points, pCtx_31(D)->MP4Syntax.syn_vol.sprite_warping_points
	cmp	r3, #0	@ pCtx_31(D)->MP4Syntax.syn_vol.sprite_warping_points,
	beq	.L735	@,
	add	fp, r5, #20992	@ ivtmp.452, pCtx,
	mov	r3, #0	@ i,
	str	r8, [sp, #4]	@ __p, %sfp
	add	fp, fp, #252	@ ivtmp.452, ivtmp.452,
	mov	r8, r3	@ i, i
	str	r5, [sp, #8]	@ pCtx, %sfp
	b	.L740	@
.L736:
	ldr	r3, [r4, #1536]	@ pCtx_31(D)->MP4Syntax.divx_version, pCtx_31(D)->MP4Syntax.divx_version
	cmp	r3, #500	@ pCtx_31(D)->MP4Syntax.divx_version,
	bne	.L737	@,
	ldr	r3, [r4, #1540]	@ pCtx_31(D)->MP4Syntax.divx_build, pCtx_31(D)->MP4Syntax.divx_build
	movw	r2, #413	@ tmp629,
	cmp	r3, r2	@ pCtx_31(D)->MP4Syntax.divx_build, tmp629
	beq	.L738	@,
.L737:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp630,,
	bl	BsSkip	@
.L738:
	add	r0, sp, #20	@ tmp631,,
	bl	bs_get_spritetrajectory	@
	subs	r3, r0, #0	@ length,
	moveq	r5, r3	@ y, length
	bne	.L802	@,
.L739:
	mov	r1, #1	@,
	add	r0, sp, #20	@ tmp634,,
	bl	BsSkip	@
	str	r10, [fp]	@ x, MEM[base: _265, offset: 0B]
	str	r5, [fp, #4]	@ y, MEM[base: _265, offset: 4B]
	add	r8, r8, #1	@ i, i,
	ldrb	r3, [r4, #852]	@ zero_extendqisi2	@ D.34442, pCtx_31(D)->MP4Syntax.syn_vol.sprite_warping_points
	add	fp, fp, #8	@ ivtmp.452, ivtmp.452,
	cmp	r3, r8	@ D.34442, i
	bls	.L803	@,
.L740:
	add	r0, sp, #20	@ tmp626,,
	bl	bs_get_spritetrajectory	@
	subs	r5, r0, #0	@ length,
	moveq	r10, r5	@ x, length
	beq	.L736	@,
	mov	r1, r5	@, length
	add	r0, sp, #20	@ tmp627,,
	bl	BsGet	@
	sub	r2, r5, #1	@ D.34442, length,
	movs	r3, r0, asr r2	@ tmp602, x,
	mov	r10, r0	@ x,
	moveq	r3, #1	@ tmp628,
	moveq	r3, r3, asl r5	@ D.34444, tmp628,
	subeq	r3, r3, #1	@ D.34444, D.34444,
	eoreq	r10, r10, r3	@ D.34444, x, D.34444
	rsbeq	r10, r10, #0	@ x, D.34444
	b	.L736	@
.L802:
	mov	r1, r3	@, length
	add	r0, sp, #20	@ tmp632,,
	str	r3, [sp, #12]	@ length, %sfp
	bl	BsGet	@
	ldr	r3, [sp, #12]	@ length, %sfp
	sub	r2, r3, #1	@ D.34442, length,
	movs	r2, r0, asr r2	@ tmp603, y,
	mov	r5, r0	@ y,
	moveq	r2, #1	@ tmp633,
	moveq	r3, r2, asl r3	@ D.34444, tmp633,
	subeq	r2, r3, #1	@ D.34444, D.34444,
	eoreq	r3, r0, r2	@ D.34444, y, D.34444
	rsbeq	r5, r3, #0	@ y, D.34444
	b	.L739	@
.L799:
	ldr	r2, [r7, #3508]	@ pCtx_31(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_31(D)->stCurPacket.StreamPack[1].LenInByte
	strb	r3, [r5, #1283]	@ pCtx_31(D)->stCurPacket.StreamPack[0].IsLastSeg, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_offset
	mov	r3, r2, asl #3	@ D.34442, pCtx_31(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r3, [r5, #1288]	@ D.34442, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].bit_len
	ldr	r3, [r7, #3504]	@ pCtx_31(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_31(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r3, [r5, #1296]	@ pCtx_31(D)->stCurPacket.StreamPack[1].PhyAddr, MEM[(struct MP4_SLICE_INFO *)pCtx_31(D)].Mp4DecParam.SlcPara[0].phy_address
	b	.L746	@
.L801:
	strb	r10, [r4, #1561]	@ D.34443, pCtx_31(D)->MP4SyntaxState.vop_decode_right
	add	r0, sp, #20	@ tmp636,,
	bl	BsPos	@
	ldr	r3, .L804+12	@ tmp469,
	ldr	r3, [r3]	@ D.34445, g_event_report
	cmp	r3, #0	@ D.34445,
	mov	r5, r0	@ BitUsed,
	beq	.L743	@,
	mov	r2, r10	@, D.34443
	mov	r1, #103	@,
	ldr	r0, [r4, #2480]	@, pCtx_31(D)->ChanID
	blx	r3	@ D.34445
.L743:
	ldrb	r2, [r4, #728]	@ zero_extendqisi2	@, pCtx_31(D)->MP4Vop.vop_coding_type
	mov	r0, #1	@,
	ldr	r1, .L804+40	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34439, BitUsed
	b	.L712	@
.L803:
	ldr	r8, [sp, #4]	@ __p, %sfp
	ldr	r5, [sp, #8]	@ pCtx, %sfp
	b	.L735	@
.L805:
	.align	2
.L804:
	.word	.LC42
	.word	.LC44
	.word	.LC8
	.word	g_event_report
	.word	.LC47
	.word	.LC46
	.word	g_VdmCharacter
	.word	.LC45
	.word	.LC43
	.word	.LC49
	.word	.LC48
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
	add	r7, r0, #12288	@ tmp459, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #510	@ tmp184,
	ldr	r9, [r7, #3324]	@ D.34463, pCtx_9(D)->Mp4DecParam.SlcNum
	.pad #44
	sub	sp, sp, #44	@,,
	sub	r0, r9, #1	@ D.34463, D.34463,
	cmp	r0, r3	@ D.34463, tmp184
	bhi	.L828	@,
	movw	r3, #3576	@ tmp211,
	add	r0, sp, #12	@ tmp465,,
	ldrh	r5, [r7, r3]	@ *pCtx_9(D), *pCtx_9(D)
	add	r6, r4, #20480	@ tmp457, pCtx,
	add	r3, r9, #1	@ D.34463, D.34463,
	str	r3, [r7, #3324]	@ D.34463, pCtx_9(D)->Mp4DecParam.SlcNum
	ubfx	r5, r5, #7, #4	@ D.34464, *pCtx_9(D),,
	mov	r8, r2	@ len, len
	add	r5, r5, #17	@ D.34464, D.34464,
	bl	BsInit	@
	add	r0, sp, #12	@ tmp466,,
	mov	r1, r5	@, D.34464
	bl	BsSkip	@
	ldr	r2, [r6, #1492]	@ pCtx_9(D)->MP4Syntax.image_height, pCtx_9(D)->MP4Syntax.image_height
	ldr	r10, [r6, #1496]	@ pCtx_9(D)->MP4Syntax.image_width, pCtx_9(D)->MP4Syntax.image_width
	add	r2, r2, #15	@ D.34463, pCtx_9(D)->MP4Syntax.image_height,
	add	r10, r10, #15	@ D.34463, pCtx_9(D)->MP4Syntax.image_width,
	mov	r2, r2, lsr #4	@ HeightInMb, D.34463,
	mov	r10, r10, lsr #4	@ WidthInMb, D.34463,
	mul	r10, r10, r2	@ MbCnt, WidthInMb, HeightInMb
	cmp	r10, #0	@ MbCnt,
	beq	.L809	@,
	mov	lr, r10	@ MbCnt, MbCnt
	mov	r1, #0	@ n,
.L810:
	add	ip, r1, #1	@ tmp230, n,
	movs	lr, lr, lsr #1	@ MbCnt, MbCnt,
	uxth	r1, ip	@ n, tmp230
	bne	.L810	@,
	sxth	r1, r1	@, n
	add	r0, sp, #12	@ tmp467,,
	bl	BsGet	@
	mov	r5, r9, asl #2	@ tmp460, D.34463,
	mov	r9, r9, asl #5	@ tmp461, D.34463,
	sub	r1, r10, #1	@ D.34463, MbCnt,
	rsb	r3, r5, r9	@ tmp236, tmp460, tmp461
	add	r3, r4, r3	@ tmp237, pCtx, tmp236
	cmp	r0, r1	@ D.34464, D.34463
	str	r0, [r3, #1300]	@ D.34464, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].mb_start_num
	bhi	.L829	@,
.L811:
	mov	r1, #5	@,
	add	r0, sp, #12	@ tmp468,,
	bl	BsGet	@
	rsb	r10, r5, r9	@ tmp245, tmp460, tmp461
	add	r10, r4, r10	@ tmp246, pCtx, tmp245
	mov	r1, #1	@,
	add	r10, r10, #1264	@ tmp248, tmp246,
	add	r10, r10, #8	@ tmp248, tmp248,
	strb	r0, [r10, #9]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_quant
	add	r0, sp, #12	@ tmp469,,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L812	@,
.L822:
	mov	r1, #1	@,
	add	r0, sp, #12	@ tmp470,,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L822	@,
	mov	r1, #1	@,
	add	r0, sp, #12	@ tmp471,,
	add	r3, r4, #16384	@ tmp458, pCtx,
	str	r3, [sp, #4]	@ tmp458, %sfp
	bl	BsSkip	@
	ldr	r3, [sp, #4]	@ tmp458, %sfp
	ldr	r1, [r3, #3684]	@ D.34463, pCtx_9(D)->MP4Vol.vop_time_incr_bits
	cmp	r1, #0	@ D.34463,
	bne	.L830	@,
.L814:
	mov	r1, #1	@,
	add	r0, sp, #12	@ tmp473,,
	str	r3, [sp, #4]	@ tmp458, %sfp
	bl	BsSkip	@
	mov	r1, #2	@,
	add	r0, sp, #12	@ tmp474,,
	bl	BsGet	@
	rsb	r10, r5, r9	@ tmp261, tmp460, tmp461
	add	r10, r4, r10	@ tmp262, pCtx, tmp261
	mov	r1, #3	@,
	add	r10, r10, #1264	@ tmp264, tmp262,
	strb	r0, [r10, #16]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type
	add	r0, sp, #12	@ tmp475,,
	bl	BsGet	@
	ldrb	r2, [r10, #16]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type
	ldr	r3, [sp, #4]	@ tmp458, %sfp
	cmp	r2, #0	@ MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type,
	strb	r0, [r10, #15]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].intra_dc_vlc_thr
	add	r10, r10, #8	@ tmp264, tmp264,
	bne	.L831	@,
.L816:
	ldrb	r2, [r6, #736]	@ zero_extendqisi2	@ pCtx_9(D)->MP4Vop.vop_fcode_forward, pCtx_9(D)->MP4Vop.vop_fcode_forward
	rsb	fp, r5, r9	@ tmp318, tmp460, tmp461
	add	fp, r4, fp	@ tmp319, pCtx, tmp318
	add	r0, sp, #12	@ tmp478,,
	add	r1, fp, #1264	@ tmp321, tmp319,
	strb	r2, [fp, #1277]	@ pCtx_9(D)->MP4Vop.vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_fcode_forward
	add	r1, r1, #8	@ tmp321, tmp321,
	ldrb	r2, [r6, #737]	@ zero_extendqisi2	@ pCtx_9(D)->MP4Vop.vop_fcode_backward, pCtx_9(D)->MP4Vop.vop_fcode_backward
	str	r1, [sp, #4]	@ tmp321, %sfp
	strb	r2, [fp, #1278]	@ pCtx_9(D)->MP4Vop.vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_fcode_backward
	ldr	r2, [r3, #3584]	@ pCtx_9(D)->PicIntegrality, pCtx_9(D)->PicIntegrality
	orr	r2, r2, #16	@ D.34463, pCtx_9(D)->PicIntegrality,
	str	r2, [r3, #3584]	@ D.34463, pCtx_9(D)->PicIntegrality
	bl	BsPos	@
	ldr	r1, [sp, #4]	@ tmp321, %sfp
	mov	r3, r0, asr #31	@ tmp360, BitUsed,
	mov	r10, r0	@ BitUsed,
	rsb	r8, r0, r8, lsl #3	@ D.34464, BitUsed, len,
	str	r8, [fp, #1284]	@ D.34464, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_len
	mov	r3, r3, lsr #29	@ tmp361, tmp360,
	ldr	ip, [r6, #1576]	@ pCtx_9(D)->BitsObj.offset, pCtx_9(D)->BitsObj.offset
	add	r2, r10, r3	@ tmp362, BitUsed, tmp361
	cmp	r10, #0	@ BitUsed,
	and	r2, r2, #7	@ tmp363, tmp362,
	add	r0, r0, #7	@ tmp381, BitUsed,
	rsb	r3, r3, r2	@ D.34464, tmp361, tmp363
	movge	r0, r10	@ BitUsed, BitUsed
	add	r3, r3, ip	@ tmp370, D.34464, pCtx_9(D)->BitsObj.offset
	strb	r3, [r1, #10]	@ tmp370, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_offset
	ldr	r3, [r6, #1568]	@ pCtx_9(D)->BitsObj.phy_addr, pCtx_9(D)->BitsObj.phy_addr
	add	r3, r3, r0, asr #3	@ D.34463, pCtx_9(D)->BitsObj.phy_addr, BitUsed,
	str	r3, [fp, #1292]	@ D.34463, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].phy_address
	ldrb	r3, [r7, #3421]	@ zero_extendqisi2	@ pCtx_9(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_9(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_9(D)->stCurPacket.StreamPack[0].IsLastSeg,
	bne	.L818	@,
	ldrb	r2, [r7, #3501]	@ zero_extendqisi2	@ pCtx_9(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_9(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_9(D)->stCurPacket.StreamPack[1].IsLastSeg,
	beq	.L832	@,
.L818:
	rsb	r5, r5, r9	@ tmp426, tmp460, tmp461
	mov	r3, #0	@ tmp430,
	add	r5, r4, r5	@ tmp427, pCtx, tmp426
	add	r1, r5, #1280	@ tmp429, tmp427,
	add	r2, r5, #1264	@ tmp437, tmp427,
	str	r3, [r1, #8]	@ tmp430, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_len
	mov	r5, r1	@ tmp446, tmp429
	strb	r3, [r2, #19]	@ tmp430, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_offset
	str	r3, [r5, #16]	@ tmp430, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].phy_address
.L819:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	mov	r0, r10	@ D.34462, BitUsed
.L826:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L812:
	ldrb	r2, [r6, #728]	@ zero_extendqisi2	@ pCtx_9(D)->MP4Vop.vop_coding_type, pCtx_9(D)->MP4Vop.vop_coding_type
	add	r3, r4, #16384	@ tmp458, pCtx,
	strb	r2, [r10, #8]	@ pCtx_9(D)->MP4Vop.vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type
	ldrb	r2, [r6, #732]	@ zero_extendqisi2	@ pCtx_9(D)->MP4Vop.intra_dc_vlc_thr, pCtx_9(D)->MP4Vop.intra_dc_vlc_thr
	strb	r2, [r10, #7]	@ pCtx_9(D)->MP4Vop.intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].intra_dc_vlc_thr
	b	.L816	@
.L828:
	add	r3, r4, #20480	@ tmp188, pCtx,
	add	r1, r4, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r3, #2480]	@, pCtx_9(D)->ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	add	r4, r4, #16384	@ tmp191, pCtx,
	bl	MP4_ClearCurPic	@
	ldr	r2, .L833	@,
	mov	r0, #1	@,
	ldr	r3, [r4, #3584]	@ pCtx_9(D)->PicIntegrality, pCtx_9(D)->PicIntegrality
	ldr	r1, .L833+4	@,
	bic	r3, r3, #178	@ D.34463, pCtx_9(D)->PicIntegrality,
	str	r3, [r4, #3584]	@ D.34463, pCtx_9(D)->PicIntegrality
	ldr	r3, [r7, #3324]	@, pCtx_9(D)->Mp4DecParam.SlcNum
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34462,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L830:
	add	r0, sp, #12	@ tmp472,,
	bl	BsSkip	@
	ldr	r3, [sp, #4]	@ tmp458, %sfp
	b	.L814	@
.L831:
	mov	r1, #3	@,
	add	r0, sp, #12	@ tmp476,,
	bl	BsSkip	@
	ldrb	r2, [r10, #8]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type
	ldr	r3, [sp, #4]	@ tmp458, %sfp
	cmp	r2, #2	@ MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].vop_coding_type,
	bne	.L816	@,
	mov	r1, #3	@,
	add	r0, sp, #12	@ tmp477,,
	bl	BsSkip	@
	ldr	r3, [sp, #4]	@ tmp458, %sfp
	b	.L816	@
.L832:
	ldr	r2, [r7, #3508]	@ pCtx_9(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_9(D)->stCurPacket.StreamPack[1].LenInByte
	strb	r3, [fp, #1283]	@ pCtx_9(D)->stCurPacket.StreamPack[0].IsLastSeg, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_offset
	mov	r3, r2, asl #3	@ D.34463, pCtx_9(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r3, [fp, #1288]	@ D.34463, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].bit_len
	ldr	r3, [r7, #3504]	@ pCtx_9(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_9(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r3, [fp, #1296]	@ pCtx_9(D)->stCurPacket.StreamPack[1].PhyAddr, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].phy_address
	b	.L819	@
.L809:
	mov	r1, r10	@, MbCnt
	add	r0, sp, #12	@ tmp479,,
	bl	BsGet	@
	mov	r5, r9, asl #2	@ tmp460, D.34463,
	mov	r9, r9, asl #5	@ tmp461, D.34463,
	rsb	r3, r5, r9	@ tmp453, tmp460, tmp461
	add	r3, r4, r3	@ tmp454, pCtx, tmp453
	str	r0, [r3, #1300]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_9(D)].Mp4DecParam.SlcPara[_10].mb_start_num
	b	.L811	@
.L829:
	mov	r2, r0	@, D.34464
	mov	r3, r10	@, MbCnt
	ldr	r1, .L833+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34462,
	b	.L826	@
.L834:
	.align	2
.L833:
	.word	.LANCHOR1+1296
	.word	.LC50
	.word	.LC51
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
	add	r8, r0, #12288	@ tmp451, pCtx,
	movw	r3, #510	@ tmp175,
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r4, [r8, #3324]	@ D.34474, pCtx_6(D)->Mp4DecParam.SlcNum
	mov	r5, r0	@ pCtx, pCtx
	sub	r6, r4, #1	@ D.34474, D.34474,
	cmp	r6, r3	@ D.34474, tmp175
	bhi	.L850	@,
	ldrb	r7, [r8, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	add	r3, r4, #1	@ D.34474, D.34474,
	add	r0, sp, #12	@ tmp456,,
	str	r3, [r8, #3324]	@ D.34474, pCtx_6(D)->Mp4DecParam.SlcNum
	ubfx	r7, r7, #3, #4	@ D.34475, *pCtx_6(D),,
	mov	r10, r2	@ len, len
	add	r7, r7, #17	@ D.34475, D.34475,
	bl	BsInit	@
	add	r0, sp, #12	@ tmp457,,
	add	fp, r5, #20480	@ tmp210, pCtx,
	mov	r1, r7	@, D.34475
	bl	BsSkip	@
	mov	r3, r4, asl #2	@ tmp452, D.34474,
	mov	r1, #5	@,
	add	r0, sp, #12	@ tmp458,,
	mov	r7, r3	@ tmp452, tmp452
	str	r3, [sp, #4]	@ tmp452, %sfp
	bl	BsGet	@
	ldrb	lr, [fp, #740]	@ zero_extendqisi2	@ D.34475, pCtx_6(D)->MP4Vop.num_mb_ingob
	mov	ip, r4, asl #5	@ tmp454, D.34474,
	movw	r1, #1206	@ tmp220,
	rsb	r2, r7, ip	@ tmp215, tmp452, tmp454
	movw	r3, #1204	@ tmp225,
	add	r4, r5, r2	@ tmp216, pCtx, tmp215
	mul	r0, lr, r0	@ D.34474, D.34475,
	str	r0, [r4, #1300]	@ D.34474, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].mb_start_num
	ldrh	r1, [r5, r1]	@ D.34475, pCtx_6(D)->Mp4DecParam.PicHeightInMb
	ldrh	r3, [r5, r3]	@ D.34475, pCtx_6(D)->Mp4DecParam.PicWidthInMb
	mul	r3, r3, r1	@ D.34475, D.34475, D.34475
	sub	r3, r3, #1	@ totalMbMin1, D.34475,
	cmp	r0, r3	@ D.34474, totalMbMin1
	bhi	.L851	@,
	mov	r1, #2	@,
	add	r0, sp, #12	@ tmp461,,
	str	ip, [sp]	@ tmp454, %sfp
	bl	BsSkip	@
	mov	r1, #5	@,
	add	r0, sp, #12	@ tmp462,,
	bl	BsGet	@
	strb	r0, [r4, #1281]	@, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].vop_quant
	add	r0, sp, #12	@ tmp463,,
	ldrb	r3, [fp, #728]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_coding_type, pCtx_6(D)->MP4Vop.vop_coding_type
	strb	r3, [r4, #1280]	@ pCtx_6(D)->MP4Vop.vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].vop_coding_type
	ldrb	r3, [fp, #732]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.intra_dc_vlc_thr, pCtx_6(D)->MP4Vop.intra_dc_vlc_thr
	strb	r3, [r4, #1279]	@ pCtx_6(D)->MP4Vop.intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].intra_dc_vlc_thr
	ldrb	r3, [fp, #736]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_fcode_forward, pCtx_6(D)->MP4Vop.vop_fcode_forward
	strb	r3, [r4, #1277]	@ pCtx_6(D)->MP4Vop.vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].vop_fcode_forward
	ldrb	r3, [fp, #737]	@ zero_extendqisi2	@ pCtx_6(D)->MP4Vop.vop_fcode_backward, pCtx_6(D)->MP4Vop.vop_fcode_backward
	strb	r3, [r4, #1278]	@ pCtx_6(D)->MP4Vop.vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].vop_fcode_backward
	bl	BsPos	@
	add	lr, r5, #16384	@ tmp329, pCtx,
	ldr	ip, [sp]	@ tmp454, %sfp
	mov	r3, r0, asr #31	@ tmp301, BitUsed,
	mov	r7, r0	@ BitUsed,
	rsb	r10, r0, r10, lsl #3	@ D.34475, BitUsed, len,
	str	r10, [r4, #1284]	@ D.34475, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_len
	mov	r3, r3, lsr #29	@ tmp302, tmp301,
	ldr	r10, [fp, #1576]	@ pCtx_6(D)->BitsObj.offset, pCtx_6(D)->BitsObj.offset
	add	r1, r7, r3	@ tmp303, BitUsed, tmp302
	cmp	r7, #0	@ BitUsed,
	and	r1, r1, #7	@ tmp304, tmp303,
	add	r0, r0, #7	@ tmp322, BitUsed,
	rsb	r3, r3, r1	@ D.34475, tmp302, tmp304
	movge	r0, r7	@ BitUsed, BitUsed
	add	r3, r3, r10	@ tmp311, D.34475, pCtx_6(D)->BitsObj.offset
	strb	r3, [r4, #1282]	@ tmp311, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_offset
	ldr	r3, [fp, #1568]	@ pCtx_6(D)->BitsObj.phy_addr, pCtx_6(D)->BitsObj.phy_addr
	add	r0, r3, r0, asr #3	@ D.34474, pCtx_6(D)->BitsObj.phy_addr, BitUsed,
	str	r0, [r4, #1292]	@ D.34474, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].phy_address
	ldr	r3, [lr, #3584]	@ pCtx_6(D)->PicIntegrality, pCtx_6(D)->PicIntegrality
	orr	r3, r3, #16	@ D.34474, pCtx_6(D)->PicIntegrality,
	str	r3, [lr, #3584]	@ D.34474, pCtx_6(D)->PicIntegrality
	ldrb	r3, [r8, #3421]	@ zero_extendqisi2	@ pCtx_6(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_6(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_6(D)->stCurPacket.StreamPack[0].IsLastSeg,
	beq	.L852	@,
.L839:
	ldr	r3, [sp, #4]	@ tmp452, %sfp
	rsb	r2, r3, ip	@ tmp373, tmp452, tmp454
	mov	r3, #0	@ tmp377,
	add	r2, r5, r2	@ tmp374, pCtx, tmp373
	add	r0, r2, #1280	@ tmp376, tmp374,
	add	r1, r2, #1264	@ tmp384, tmp374,
	str	r3, [r0, #8]	@ tmp377, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_len
	mov	r2, r0	@ tmp393, tmp376
	strb	r3, [r1, #19]	@ tmp377, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_offset
	str	r3, [r2, #16]	@ tmp377, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].phy_address
.L840:
	mov	r1, r6, asl #2	@ tmp453, D.34474,
	mov	r3, r6, asl #5	@ tmp455, D.34474,
	rsb	r2, r1, r3	@ tmp398, tmp453, tmp455
	add	r2, r5, r2	@ tmp399, pCtx, tmp398
	ldr	r0, [r2, #1296]	@ MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].phy_address, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].phy_address
	cmp	r0, #0	@ MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].phy_address,
	bne	.L853	@,
.L841:
	rsb	r3, r1, r3	@ tmp430, tmp453, tmp455
	ldrb	r2, [r8, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	add	r3, r5, r3	@ tmp431, pCtx, tmp430
	ubfx	r2, r2, #3, #4	@ D.34474, *pCtx_6(D),,
	ldr	r1, [r3, #1284]	@ MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
	add	r2, r2, r1	@ D.34474, D.34474, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
	str	r2, [r3, #1284]	@ D.34474, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
.L842:
	mov	r0, r5	@, pCtx
	bl	MP4_Record_SlcSegID	@
	mov	r0, r7	@ D.34473, BitUsed
.L837:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L853:
	ldr	r0, [r2, #1288]	@ D.34474, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
	add	r2, r2, #1280	@ tmp409, tmp399,
	add	r2, r2, #4	@ tmp409, tmp409,
	cmp	r0, #0	@ D.34474,
	beq	.L841	@,
	ldrb	r3, [r8, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	ubfx	r3, r3, #3, #4	@ D.34474, *pCtx_6(D),,
	add	r3, r3, r0	@ D.34474, D.34474, D.34474
	str	r3, [r2, #4]	@ D.34474, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_8].bit_len
	b	.L842	@
.L852:
	ldrb	r1, [r8, #3501]	@ zero_extendqisi2	@ pCtx_6(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_6(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r1, #1	@ pCtx_6(D)->stCurPacket.StreamPack[1].IsLastSeg,
	bne	.L839	@,
	ldr	r1, [r8, #3508]	@ pCtx_6(D)->stCurPacket.StreamPack[1].LenInByte, pCtx_6(D)->stCurPacket.StreamPack[1].LenInByte
	strb	r3, [r4, #1283]	@ pCtx_6(D)->stCurPacket.StreamPack[0].IsLastSeg, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_offset
	mov	r3, r1, asl #3	@ D.34474, pCtx_6(D)->stCurPacket.StreamPack[1].LenInByte,
	str	r3, [r4, #1288]	@ D.34474, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].bit_len
	ldr	r3, [r8, #3504]	@ pCtx_6(D)->stCurPacket.StreamPack[1].PhyAddr, pCtx_6(D)->stCurPacket.StreamPack[1].PhyAddr
	str	r3, [r4, #1296]	@ pCtx_6(D)->stCurPacket.StreamPack[1].PhyAddr, MEM[(struct MP4_SLICE_INFO *)pCtx_6(D)].Mp4DecParam.SlcPara[_7].phy_address
	b	.L840	@
.L850:
	add	r3, r0, #20480	@ tmp179, pCtx,
	add	r1, r0, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r3, #2480]	@, pCtx_6(D)->ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r5	@, pCtx
	add	r5, r5, #16384	@ tmp182, pCtx,
	bl	MP4_ClearCurPic	@
	ldr	r2, .L854	@,
	mov	r0, #1	@,
	ldr	r3, [r5, #3584]	@ pCtx_6(D)->PicIntegrality, pCtx_6(D)->PicIntegrality
	ldr	r1, .L854+4	@,
	bic	r3, r3, #178	@ D.34474, pCtx_6(D)->PicIntegrality,
	str	r3, [r5, #3584]	@ D.34474, pCtx_6(D)->PicIntegrality
	ldr	r3, [r8, #3324]	@, pCtx_6(D)->Mp4DecParam.SlcNum
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34473,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L851:
	mov	r2, r0	@, D.34474
	ldr	r1, .L854+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34473,
	b	.L837	@
.L855:
	.align	2
.L854:
	.word	.LANCHOR1+1320
	.word	.LC50
	.word	.LC52
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
	ldrb	r3, [ip, #3576]	@ zero_extendqisi2	@ D.34490, MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B]
	.pad #8
	sub	sp, sp, #8	@,,
	tst	r3, #1	@ D.34490,
	beq	.L867	@,
	tst	r3, #4	@ D.34490,
	beq	.L868	@,
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_SH	@
	cmn	r0, #1	@,
	beq	.L865	@,
.L860:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L868:
	movw	r0, #3576	@ tmp161,
	ldrh	r0, [ip, r0]	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B], MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B]
	ubfx	r0, r0, #7, #4	@ D.34491, MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B],,
	sub	lr, r0, #1	@ D.34494, D.34491,
	cmp	lr, #6	@ D.34494,
	bfils	r3, r0, #3, #4	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B].StartCodeBitOffset, D.34491,,
	mov	r0, r4	@, pCtx
	strlsb	r3, [ip, #3576]	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B].StartCodeBitOffset, MEM[(struct MP4_SCD_UPMSG *)pCtx_2(D) + 15864B].StartCodeBitOffset
	bl	Mp4_Syntax_Slice_SH	@
	cmn	r0, #1	@,
	bne	.L860	@,
.L865:
	add	r3, r4, #20480	@ tmp174, pCtx,
	add	r1, r4, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r3, #2480]	@, pCtx_2(D)->ChanID
	bl	MP4_ClearCurPacket	@
	ldr	r2, .L870	@,
	ldr	r1, .L870+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L867:
	stmia	sp, {r1, r2}	@,,
	bl	Mp4_Check_Slice_NotSH	@
	ldmia	sp, {r1, r2}	@,,
	cmp	r0, #0	@,
	beq	.L869	@,
	mov	r1, r2	@, len
	mov	r0, r4	@, pCtx
	bl	Mp4_Combine_SliceData	@
	cmp	r0, #0	@,
	bne	.L865	@,
	mov	r0, r4	@, pCtx
	bl	MP4_Record_SlcSegID	@
	b	.L860	@
.L869:
	mov	r0, r4	@, pCtx
	bl	Mp4_Syntax_Slice_NotSH	@
	cmn	r0, #1	@,
	beq	.L865	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L871:
	.align	2
.L870:
	.word	.LANCHOR1+1340
	.word	.LC53
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
	add	r5, r0, #20480	@ tmp127, pCtx,
	mov	r1, r0	@ pCtx, pCtx
	ldr	r3, [r5, #2036]	@ D.34500, pCtx_2(D)->stHdPktInfo.StreamIDNum
	cmp	r3, #62	@ D.34500,
	bgt	.L876	@,
	add	r0, r0, #12288	@ tmp141, pCtx,
	add	r1, r1, r3, lsl #2	@ D.34505, pCtx, D.34500,
	add	r1, r1, #20480	@ tmp139, D.34505,
	add	r2, r3, #1	@ D.34500, D.34500,
	ldr	ip, [r0, #3432]	@ pCtx_2(D)->stCurPacket.StreamPack[0].StreamID, pCtx_2(D)->stCurPacket.StreamPack[0].StreamID
	str	ip, [r1, #1780]	@ pCtx_2(D)->stCurPacket.StreamPack[0].StreamID, MEM[(HI_U32 *)_25 + 22260B]
	str	r2, [r5, #2036]	@ D.34500, pCtx_2(D)->stHdPktInfo.StreamIDNum
	ldrb	r2, [r0, #3421]	@ zero_extendqisi2	@ pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg, pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r2, #0	@ pCtx_2(D)->stCurPacket.StreamPack[0].IsLastSeg,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldrb	r2, [r0, #3501]	@ zero_extendqisi2	@ pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_2(D)->stCurPacket.StreamPack[1].IsLastSeg,
	ldreq	r2, [r0, #3512]	@ pCtx_2(D)->stCurPacket.StreamPack[1].StreamID, pCtx_2(D)->stCurPacket.StreamPack[1].StreamID
	addeq	r3, r3, #2	@ D.34500, D.34500,
	streq	r2, [r1, #1784]	@ pCtx_2(D)->stCurPacket.StreamPack[1].StreamID, MEM[(HI_U32 *)_25 + 22264B]
	streq	r3, [r5, #2036]	@ D.34500, pCtx_2(D)->stHdPktInfo.StreamIDNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L876:
	mov	r4, r0	@ pCtx, pCtx
	bl	MP4_Clean_HeadPacket	@
	add	r1, r4, #15680	@, pCtx,
	ldr	r0, [r5, #2480]	@, pCtx_2(D)->ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	ldr	r2, [r5, #2036]	@, pCtx_2(D)->stHdPktInfo.StreamIDNum
	mov	r3, #62	@,
	ldr	r1, .L877	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L878:
	.align	2
.L877:
	.word	.LC41
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
	beq	.L883	@,
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
	add	r5, r4, #20480	@ tmp150, pCtx,
	add	r1, r4, #15808	@, pCtx,
	add	r0, r4, #22016	@, pCtx,
	add	r1, r1, #56	@,,
	add	r0, r0, #240	@,,
	mov	r2, #4	@,
	bl	memcpy	@
	ldr	r3, [r5, #2044]	@ pCtx_3(D)->stHdPktInfo.GetHeadFirstFlag, pCtx_3(D)->stHdPktInfo.GetHeadFirstFlag
	str	r6, [r5, #2040]	@ StartCode, pCtx_3(D)->stHdPktInfo.HeadCode
	cmp	r3, #0	@ pCtx_3(D)->stHdPktInfo.GetHeadFirstFlag,
	beq	.L884	@,
.L881:
	ldr	r3, [r5, #2048]	@ pCtx_3(D)->stHdPktInfo.CountVopNum, pCtx_3(D)->stHdPktInfo.CountVopNum
	add	r3, r3, #1	@ D.34514, pCtx_3(D)->stHdPktInfo.CountVopNum,
	str	r3, [r5, #2048]	@ D.34514, pCtx_3(D)->stHdPktInfo.CountVopNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L884:
	mov	r0, r4	@, pCtx
	bl	MP4_Record_PacketID	@
	mov	r3, #1	@ tmp143,
	str	r3, [r5, #2044]	@ tmp143, pCtx_3(D)->stHdPktInfo.GetHeadFirstFlag
	b	.L881	@
.L883:
	ldr	r1, .L885	@,
	mov	r0, #1	@,
	b	dprint_vfmw	@
.L886:
	.align	2
.L885:
	.word	.LC54
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
	add	r9, r0, #16384	@ tmp1053, pCtx,
	add	r10, r0, #12288	@ tmp1055, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	add	r0, sp, #16	@ tmp1063,,
	mov	r8, r2	@ CodeLen, CodeLen
	mov	r7, r1	@ pCode, pCode
	bl	BsInit	@
	mov	r1, #32	@,
	add	r0, sp, #16	@ tmp1064,,
	bl	BsShow	@
	mov	r3, #0	@ tmp361,
	str	r3, [r9, #3588]	@ tmp361, pCtx_39(D)->IsWaitToDecFlag
	ldrb	r3, [r10, #3576]	@ zero_extendqisi2	@ D.34533, MEM[(struct MP4_SCD_UPMSG *)pCtx_39(D) + 15864B]
	and	r1, r3, #1	@ D.34533, D.34533,
	cmp	r0, #32768	@ StartCode,
	movne	r2, #0	@, tmp371
	andeq	r2, r3, #1	@,, tmp371, D.34533
	mov	r5, r0	@ StartCode,
	cmp	r2, #0	@ tmp371,
	bne	.L888	@,
	eor	r2, r1, #1	@ tmp376, D.34533,
	movw	r0, #438	@ tmp374,
	cmp	r5, r0	@ StartCode, tmp374
	movne	r2, #0	@, tmp379
	andeq	r2, r2, #1	@,, tmp379, tmp376
	cmp	r2, #0	@ tmp379,
	bne	.L888	@,
.L889:
	cmp	r1, #0	@ D.34533,
	beq	.L1020	@,
	add	r4, r6, #20480	@ tmp1052, pCtx,
	mov	r5, #196	@ StartCode,
	mov	r2, #1	@ tmp435,
	strb	r2, [r4, #797]	@ tmp435, pCtx_39(D)->MP4Syntax.is_short_header
.L894:
	and	r3, r3, #2	@ tmp437, D.34533,
	ands	r3, r3, #255	@ tmp439, tmp437,
	bne	.L895	@,
	ldr	r2, [r9, #3584]	@ *pCtx_39(D), *pCtx_39(D)
	ands	r10, r2, #130	@ D.34529, *pCtx_39(D),
	bne	.L1021	@,
	cmp	r5, #197	@ StartCode,
	beq	.L1022	@,
	cmp	r5, #432	@ StartCode,
	beq	.L1023	@,
	movw	r3, #437	@ tmp462,
	cmp	r5, r3	@ StartCode, tmp462
	beq	.L1024	@,
	bic	r3, r5, #15	@ D.34531, StartCode,
	cmp	r3, #288	@ D.34531,
	beq	.L1025	@,
	movw	r3, #435	@ tmp494,
	cmp	r5, r3	@ StartCode, tmp494
	beq	.L1026	@,
	movw	r3, #438	@ tmp499,
	cmp	r5, r3	@ StartCode, tmp499
	beq	.L1027	@,
	cmp	r5, #196	@ StartCode,
	beq	.L1028	@,
	movw	r3, #434	@ tmp521,
	cmp	r5, r3	@ StartCode, tmp521
	beq	.L1029	@,
	movw	r3, #286	@ tmp528,
	cmp	r5, r3	@ StartCode, tmp528
	bne	.L910	@,
	ldr	r3, .L1043	@ tmp529,
	ldr	r3, [r3]	@ D.34535, g_event_report
	cmp	r3, #0	@ D.34535,
	beq	.L910	@,
	mov	r2, #0	@,
	mov	r1, #112	@,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	blx	r3	@ D.34535
.L910:
	add	r1, r6, #15680	@, pCtx,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	add	r1, r1, #24	@,,
	sub	r8, r8, #4	@ CodeLen, CodeLen,
	bl	MP4_ClearCurPacket	@
	ldrb	r3, [r4, #2517]	@ zero_extendqisi2	@ pCtx_39(D)->SeekReset, pCtx_39(D)->SeekReset
	add	fp, r7, #4	@ pCode, pCode,
	mov	r10, #0	@ BitUsed,
	cmp	r3, #1	@ pCtx_39(D)->SeekReset,
	beq	.L963	@,
.L916:
	ldrb	r3, [r4, #1559]	@ zero_extendqisi2	@ pCtx_39(D)->MP4SyntaxState.vol_decode_right, pCtx_39(D)->MP4SyntaxState.vol_decode_right
	cmp	r3, #1	@ pCtx_39(D)->MP4SyntaxState.vol_decode_right,
	bne	.L1014	@,
	ldr	r3, [r4, #2056]	@ pCtx_39(D)->SeqCnt, pCtx_39(D)->SeqCnt
	add	r1, r6, #19968	@, pCtx,
	add	r0, r6, #21248	@, pCtx,
	add	r1, r1, #32	@,,
	add	r3, r3, #1	@ D.34531, pCtx_39(D)->SeqCnt,
	add	r0, r0, #60	@,,
	str	r3, [r4, #2056]	@ D.34531, pCtx_39(D)->SeqCnt
	mov	r2, #604	@,
	mov	r3, #0	@ tmp832,
	str	r3, [r4, #2060]	@ tmp832, pCtx_39(D)->ImgCntOfSeq
	bl	memcpy	@
	ldr	r3, [r4, #1492]	@ D.34529, pCtx_39(D)->MP4Syntax.image_height
	ldr	r0, [r9, #3700]	@ D.34529, pCtx_39(D)->MP4Vol.video_object_layer_height
	cmp	r3, r0	@ D.34529, D.34529
	beq	.L944	@,
	ldr	ip, [r9, #3696]	@ D.34529, pCtx_39(D)->MP4Vol.video_object_layer_width
.L945:
	ldr	r2, .L1043	@ tmp855,
	ldr	r5, [r2]	@ D.34535, g_event_report
	cmp	r5, #0	@ D.34535,
	beq	.L947	@,
	ldr	lr, [r4, #1496]	@ pCtx_39(D)->MP4Syntax.image_width, pCtx_39(D)->MP4Syntax.image_width
	add	r2, sp, #8	@,,
	strh	ip, [sp, #12]	@ movhi	@ D.34529, para
	mov	r1, #2	@,
	strh	r0, [sp, #14]	@ movhi	@ D.34529, para
	strh	r3, [sp, #10]	@ movhi	@ D.34529, para
	strh	lr, [sp, #8]	@ movhi	@ pCtx_39(D)->MP4Syntax.image_width, para
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	blx	r5	@ D.34535
	ldr	r0, [r9, #3700]	@ D.34529, pCtx_39(D)->MP4Vol.video_object_layer_height
	ldr	ip, [r9, #3696]	@ D.34529, pCtx_39(D)->MP4Vol.video_object_layer_width
.L947:
	ldr	r3, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	str	ip, [r4, #1496]	@ D.34529, pCtx_39(D)->MP4Syntax.image_width
	str	r0, [r4, #1492]	@ D.34529, pCtx_39(D)->MP4Syntax.image_height
	ldr	r5, [r3, #692]	@ _363->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _363->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r5, #1	@ _363->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1030	@,
.L948:
	ldr	r5, [r3, #728]	@ _530->s32DSDWaitFlag, _530->s32DSDWaitFlag
	cmp	r5, #0	@ _530->s32DSDWaitFlag,
	beq	.L1031	@,
.L1018:
	ldr	r2, [r4, #1496]	@ D.34529, pCtx_39(D)->MP4Syntax.image_width
	ldr	r3, [r4, #1492]	@ D.34529, pCtx_39(D)->MP4Syntax.image_height
	ldr	r0, [r9, #3700]	@ D.34529, pCtx_39(D)->MP4Vol.video_object_layer_height
	ldr	r1, [r9, #3696]	@ D.34529, pCtx_39(D)->MP4Vol.video_object_layer_width
.L946:
	str	r3, [r4, #2080]	@ D.34529, pCtx_39(D)->OldPicHeight
	mov	r3, #0	@ tmp1037,
	str	r2, [r4, #2076]	@ D.34529, pCtx_39(D)->OldPicWidth
	str	r0, [r4, #1492]	@ D.34529, pCtx_39(D)->MP4Syntax.image_height
	str	r1, [r4, #1496]	@ D.34529, pCtx_39(D)->MP4Syntax.image_width
	strb	r3, [r4, #1559]	@ tmp1037, pCtx_39(D)->MP4SyntaxState.vol_decode_right
	b	.L1014	@
.L1021:
	orr	r2, r2, #32	@ D.34531, *pCtx_39(D),
	mov	r10, r3	@ D.34529, tmp439
	str	r2, [r9, #3584]	@ D.34531, pCtx_39(D)->PicIntegrality
	mov	r3, #1	@ tmp451,
	str	r3, [r9, #3588]	@ tmp451, pCtx_39(D)->IsWaitToDecFlag
.L1014:
	mov	r0, r10	@, D.34529
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L888:
	add	ip, sp, #16	@ tmp1065,,
	add	lr, sp, #44	@ tmp380,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp381,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp380,,,,
	ldmia	ip, {r0, r1, r2}	@ tmp381,,,
	stmia	lr, {r0, r1, r2}	@ tmp380,,,
	mov	r1, #32	@,
	add	r0, sp, #44	@ tmp1066,,
	bl	BsSkip	@
	mov	r1, #32	@,
	add	r0, sp, #44	@ tmp1067,,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r4, r0	@ D.34532,
	add	r0, sp, #44	@ tmp1068,,
	bl	BsGet	@
	movw	r2, #20036	@ tmp387,
	movw	r3, #20553	@ tmp390,
	movt	r2, 17221	@ tmp387,
	movt	r3, 18515	@ tmp390,
	cmp	r0, r2	@, tmp387
	cmpeq	r4, r3	@, D.34532, tmp390
	bne	.L1032	@,
	add	r4, r6, #20480	@ tmp1052, pCtx,
	mov	r2, #1	@ tmp399,
	add	r1, r6, #15680	@, pCtx,
	mov	r10, #0	@ D.34529,
	strb	r2, [r4, #2516]	@ tmp399, pCtx_39(D)->IsStreamEndFlag
	add	r1, r1, #24	@,,
	ldr	r3, [r9, #3584]	@ *pCtx_39(D), *pCtx_39(D)
	tst	r3, #130	@ *pCtx_39(D),
	strne	r2, [r9, #3588]	@ tmp399, pCtx_39(D)->IsWaitToDecFlag
	orrne	r3, r3, #32	@ D.34531, *pCtx_39(D),
	strne	r3, [r9, #3584]	@ D.34531, pCtx_39(D)->PicIntegrality
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	MP4_ClearCurPacket	@
	mov	r0, r10	@, D.34529
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L895:
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	MP4_Dec_Slice	@
	mov	r10, r0	@ BitUsed,
.L899:
	ldrb	r3, [r4, #2517]	@ zero_extendqisi2	@ pCtx_39(D)->SeekReset, pCtx_39(D)->SeekReset
	mov	fp, r7	@ pCode, pCode
	cmp	r3, #1	@ pCtx_39(D)->SeekReset,
	beq	.L963	@,
.L913:
	cmp	r10, r8, asl #3	@ BitUsed, CodeLen,
	bhi	.L915	@,
	movw	r3, #438	@ tmp562,
	cmp	r5, r3	@ StartCode, tmp562
	cmpne	r5, #196	@, StartCode,
	bne	.L916	@,
	ldr	r3, [r9, #3584]	@ *pCtx_39(D), *pCtx_39(D)
	tst	r3, #130	@ *pCtx_39(D),
	beq	.L916	@,
	ldrb	r3, [r4, #797]	@ zero_extendqisi2	@ pCtx_39(D)->MP4Syntax.is_short_header, pCtx_39(D)->MP4Syntax.is_short_header
	cmp	r3, #2	@ pCtx_39(D)->MP4Syntax.is_short_header,
	beq	.L1033	@,
	ldr	r3, [r4, #1496]	@ D.34531, pCtx_39(D)->MP4Syntax.image_width
	ldr	r2, [r4, #1492]	@ D.34531, pCtx_39(D)->MP4Syntax.image_height
	cmp	r3, #0	@ D.34531,
	str	r3, [r4, #2084]	@ D.34531, pCtx_39(D)->NewPicWidth
	str	r2, [r4, #2088]	@ D.34531, pCtx_39(D)->NewPicHeight
	beq	.L920	@,
	ldr	r1, [r4, #2076]	@ pCtx_39(D)->OldPicWidth, pCtx_39(D)->OldPicWidth
	cmp	r3, r1	@ D.34531, pCtx_39(D)->OldPicWidth
	beq	.L920	@,
.L921:
	ldr	r3, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _217->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _217->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _217->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L964	@,
.L925:
	ldr	r5, [r3, #728]	@ _540->s32DSDWaitFlag, _540->s32DSDWaitFlag
	cmp	r5, #0	@ _540->s32DSDWaitFlag,
	beq	.L1034	@,
.L1017:
	ldr	r3, [r4, #2084]	@ D.34531, pCtx_39(D)->NewPicWidth
	ldr	r2, [r4, #2088]	@ D.34531, pCtx_39(D)->NewPicHeight
.L924:
	str	r3, [r4, #2076]	@ D.34531, pCtx_39(D)->OldPicWidth
	str	r2, [r4, #2080]	@ D.34531, pCtx_39(D)->OldPicHeight
.L919:
	add	r1, r6, #20992	@, pCtx,
	add	r0, r6, #21760	@, pCtx,
	mov	r2, #60	@,
	add	r1, r1, #216	@,,
	add	r0, r0, #152	@,,
	rsb	r7, r7, fp	@ D.34532, pCode, pCode
	bl	memcpy	@
	ldr	r1, .L1043+4	@,
	mov	r0, #2	@,
	add	r10, r10, r7, lsl #3	@ D.34529, BitUsed, D.34532,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2060]	@ pCtx_39(D)->ImgCntOfSeq, pCtx_39(D)->ImgCntOfSeq
	mov	r0, r10	@, D.34529
	add	r3, r3, #1	@ D.34531, pCtx_39(D)->ImgCntOfSeq,
	str	r3, [r4, #2060]	@ D.34531, pCtx_39(D)->ImgCntOfSeq
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1020:
	mov	r2, r5, lsr #8	@ D.34531, StartCode,
	add	r4, r6, #20480	@ tmp1052, pCtx,
	sub	r2, r2, #128	@ D.34531, D.34531,
	mov	r1, #2	@ tmp421,
	cmp	r2, #3	@ D.34531,
	strb	r1, [r4, #797]	@ tmp421, pCtx_39(D)->MP4Syntax.is_short_header
	ldrlsb	r3, [r10, #3576]	@ zero_extendqisi2	@ pCtx_39(D)->ScdUpMsg.SliceFlag, pCtx_39(D)->ScdUpMsg.SliceFlag
	orrls	r3, r3, r1	@ tmp429, pCtx_39(D)->ScdUpMsg.SliceFlag,
	strlsb	r3, [r10, #3576]	@ tmp429, pCtx_39(D)->ScdUpMsg.SliceFlag
	b	.L894	@
.L1032:
	ldrb	r3, [r10, #3576]	@ zero_extendqisi2	@ D.34533, MEM[(struct MP4_SCD_UPMSG *)pCtx_39(D) + 15864B]
	and	r1, r3, #1	@ D.34533, D.34533,
	b	.L889	@
.L920:
	cmp	r2, #0	@ D.34531,
	bne	.L1035	@,
.L922:
	ldr	r1, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	ldr	r0, [r1, #728]	@ _215->s32DSDWaitFlag, _215->s32DSDWaitFlag
	cmp	r0, #1	@ _215->s32DSDWaitFlag,
	bne	.L924	@,
	ldr	r1, [r1, #692]	@ _215->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _215->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ _215->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L924	@,
.L964:
	ldr	r1, [r4, #2492]	@, pCtx_39(D)->FwdFsID
	mov	r0, r6	@, pCtx
	mov	r3, #0	@ tmp648,
	str	r3, [sp]	@ tmp648, NewNum
	str	r3, [sp, #4]	@ tmp648, ReadNum
	str	r3, [sp, #8]	@ tmp648, RefNum
	bl	MP4_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L1036	@,
.L926:
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	mov	r0, r6	@, pCtx
	bl	MP4_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L1037	@,
.L927:
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@,,
	cmp	r0, #0	@ pImage
	movne	r3, #1	@ tmp671,
	strne	r3, [r0, #376]	@ tmp671, pImage_233->u32IsLastFrame
	mov	r3, sp	@,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	ldr	r1, [r4, #2076]	@ pCtx_39(D)->OldPicWidth, pCtx_39(D)->OldPicWidth
	ldr	r2, [r3, #720]	@ _238->s32DSDThrWidth, _238->s32DSDThrWidth
	cmp	r1, r2	@ pCtx_39(D)->OldPicWidth, _238->s32DSDThrWidth
	bhi	.L929	@,
	ldr	r1, [r4, #2080]	@ pCtx_39(D)->OldPicHeight, pCtx_39(D)->OldPicHeight
	ldr	r2, [r3, #724]	@ _238->s32DSDThrHeight, _238->s32DSDThrHeight
	cmp	r1, r2	@ pCtx_39(D)->OldPicHeight, _238->s32DSDThrHeight
	bhi	.L929	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.34532, ReadNum, NewNum
	cmp	r2, #0	@ D.34532,
	movgt	r2, #1	@ tmp691,
	movle	r2, #0	@ tmp692,
	str	r2, [r3, #728]	@ tmp692, _238->s32DSDWaitFlag
	mov	r3, #1	@ tmp695,
	str	r3, [r4, #2524]	@ tmp695, pCtx_39(D)->DSDNeedClearQue
.L932:
	ldr	r3, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	b	.L925	@
.L963:
	ldr	r2, [r9, #3700]	@, pCtx_39(D)->MP4Vol.video_object_layer_height
	mov	r0, r6	@, pCtx
	ldr	r1, [r9, #3696]	@, pCtx_39(D)->MP4Vol.video_object_layer_width
	bl	Frame_Init	@
	cmp	r0, #0	@,
	bne	.L1038	@,
.L914:
	mov	r3, #0	@ tmp555,
	strb	r3, [r4, #2517]	@ tmp555, pCtx_39(D)->SeekReset
	b	.L913	@
.L915:
	ldr	r1, .L1043+8	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	rsb	r7, r7, fp	@ D.34532, pCode, pCode
	ldr	r3, [r9, #3584]	@ pCtx_39(D)->PicIntegrality, pCtx_39(D)->PicIntegrality
	mov	r10, r7, asl #3	@ D.34529, D.34532,
	bic	r3, r3, #178	@ D.34531, pCtx_39(D)->PicIntegrality,
	str	r3, [r9, #3584]	@ D.34531, pCtx_39(D)->PicIntegrality
	mov	r0, r10	@, D.34529
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1026:
	ldr	r1, .L1043+12	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r3, #3	@ tmp498,
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	str	r3, [r4, #2092]	@ tmp498, pCtx_39(D)->UserID
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Gop	@
	mov	r1, r5	@, StartCode
	mov	r10, r0	@ BitUsed,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L899	@
.L1035:
	ldr	r1, [r4, #2080]	@ pCtx_39(D)->OldPicHeight, pCtx_39(D)->OldPicHeight
	cmp	r2, r1	@ D.34531, pCtx_39(D)->OldPicHeight
	bne	.L921	@,
	b	.L922	@
.L1023:
	ldr	r1, .L1043+16	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	str	r10, [r4, #2092]	@ D.34529, pCtx_39(D)->UserID
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Vos	@
	mov	r1, r5	@, StartCode
	mov	r10, r0	@ BitUsed,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L899	@
.L1024:
	ldr	r1, .L1043+20	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ tmp466,
	mov	r1, r7	@, pCode
	mov	r2, r8	@, CodeLen
	str	r3, [r4, #2092]	@ tmp466, pCtx_39(D)->UserID
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Vo	@
	mov	r1, r5	@, StartCode
	mov	r10, r0	@ BitUsed,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L899	@
.L1025:
	ldr	r1, .L1043+24	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r3, #2	@ tmp471,
	mov	r2, r8	@, CodeLen
	str	r3, [r4, #2092]	@ tmp471, pCtx_39(D)->UserID
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Vol	@
	mov	r1, r5	@, StartCode
	mov	r10, r0	@ BitUsed,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	ldrb	r3, [r4, #1559]	@ zero_extendqisi2	@ pCtx_39(D)->MP4SyntaxState.vol_decode_right, pCtx_39(D)->MP4SyntaxState.vol_decode_right
	cmp	r3, #1	@ pCtx_39(D)->MP4SyntaxState.vol_decode_right,
	beq	.L899	@,
	ldrb	fp, [r4, #1560]	@ zero_extendqisi2	@ pCtx_39(D)->MP4SyntaxState.last_vol_decode_right, pCtx_39(D)->MP4SyntaxState.last_vol_decode_right
	cmp	fp, #1	@ pCtx_39(D)->MP4SyntaxState.last_vol_decode_right,
	bne	.L899	@,
	add	r1, r6, #20480	@, pCtx,
	add	r0, r6, #19968	@, pCtx,
	add	r1, r1, #124	@,,
	add	r0, r0, #32	@,,
	mov	r2, #604	@,
	bl	memcpy	@
	strb	fp, [r4, #1559]	@ pCtx_39(D)->MP4SyntaxState.last_vol_decode_right, pCtx_39(D)->MP4SyntaxState.vol_decode_right
	strb	fp, [r4, #789]	@ pCtx_39(D)->MP4SyntaxState.last_vol_decode_right, pCtx_39(D)->MP4Syntax.vol_decode_over
	b	.L899	@
.L1022:
	ldr	r1, .L1043+28	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	add	r1, r6, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	MP4_ClearCurPacket	@
	b	.L1014	@
.L1033:
	ldrb	r3, [r4, #728]	@ zero_extendqisi2	@ pCtx_39(D)->MP4Vop.vop_coding_type, pCtx_39(D)->MP4Vop.vop_coding_type
	cmp	r3, #2	@ pCtx_39(D)->MP4Vop.vop_coding_type,
	beq	.L918	@,
	ldr	r2, [r4, #1508]	@ D.34531, pCtx_39(D)->MP4Syntax.time_base
	ldr	r3, [r4, #1500]	@ pCtx_39(D)->MP4Syntax.time_incr, pCtx_39(D)->MP4Syntax.time_incr
	ldr	r0, [r4, #1504]	@ pCtx_39(D)->MP4Syntax.time_increment, pCtx_39(D)->MP4Syntax.time_increment
	str	r2, [r4, #1512]	@ D.34531, pCtx_39(D)->MP4Syntax.last_time_base
	add	r2, r2, r3	@ D.34531, D.34531, pCtx_39(D)->MP4Syntax.time_incr
	str	r2, [r4, #1508]	@ D.34531, pCtx_39(D)->MP4Syntax.time_base
	ldr	r3, [r9, #3688]	@ pCtx_39(D)->MP4Vol.vop_time_increment_resolution, pCtx_39(D)->MP4Vol.vop_time_increment_resolution
	ldr	r1, [r4, #1520]	@ pCtx_39(D)->MP4Syntax.last_non_b_time, pCtx_39(D)->MP4Syntax.last_non_b_time
	mla	r3, r3, r2, r0	@ D.34531, pCtx_39(D)->MP4Vol.vop_time_increment_resolution, D.34531, pCtx_39(D)->MP4Syntax.time_increment
	rsb	r2, r1, r3	@ D.34531, pCtx_39(D)->MP4Syntax.last_non_b_time, D.34531
	str	r2, [r4, #1524]	@ D.34531, pCtx_39(D)->MP4Syntax.time_pp
	str	r3, [r4, #1516]	@ D.34531, pCtx_39(D)->MP4Syntax.time
	str	r3, [r4, #1520]	@ D.34531, pCtx_39(D)->MP4Syntax.last_non_b_time
	b	.L919	@
.L1027:
	ldr	r1, .L1043+32	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	cmp	r8, #4	@ CodeLen,
	beq	.L1039	@,
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_Vop	@
	ldr	r3, [r9, #3584]	@ pCtx_39(D)->PicIntegrality, pCtx_39(D)->PicIntegrality
	tst	r3, #2	@ pCtx_39(D)->PicIntegrality,
	mov	r10, r0	@ BitUsed,
	bne	.L906	@,
	add	r1, r6, #15680	@, pCtx,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
.L905:
	mov	r2, r10	@, BitUsed
	ldr	r1, .L1043+36	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	b	.L899	@
.L1038:
	ldr	r1, .L1043+40	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L914	@
.L1028:
	ldr	r1, .L1043+44	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_ShortHeader	@
	ldr	r3, [r9, #3584]	@ pCtx_39(D)->PicIntegrality, pCtx_39(D)->PicIntegrality
	tst	r3, #2	@ pCtx_39(D)->PicIntegrality,
	mov	r10, r0	@ BitUsed,
	beq	.L1016	@,
	mov	r1, #196	@,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L899	@
.L1029:
	ldr	r1, .L1043+48	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, CodeLen
	mov	r1, r7	@, pCode
	mov	r0, r6	@, pCtx
	bl	Mp4_Syntax_UserData	@
	mov	r10, r0	@ BitUsed,
.L1016:
	add	r1, r6, #15680	@, pCtx,
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	add	r1, r1, #24	@,,
	bl	MP4_ClearCurPacket	@
	b	.L899	@
.L1034:
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L937	@,
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
	str	r0, [r4, #2500]	@ D.34532, pCtx_39(D)->BwdFsID
	str	r0, [r4, #2492]	@ D.34532, pCtx_39(D)->FwdFsID
.L937:
	add	r5, r6, #22528	@ D.34539, pCtx,
	mov	r3, #0	@ tmp763,
	add	r5, r5, #80	@ D.34539, D.34539,
	str	r3, [r4, #2488]	@ tmp763, pCtx_39(D)->RefNum
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	mov	r1, r5	@, D.34539
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _297->stChanOption.s32ReRangeEn, _297->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _297->stChanOption.s32ReRangeEn,
	bne	.L938	@,
	ldr	r3, [r3, #32]	@ _297->eCapLevel, _297->eCapLevel
	cmp	r3, #25	@ _297->eCapLevel,
	beq	.L1040	@,
.L938:
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L940	@,
	ldr	r3, [r4, #1580]	@ pCtx_39(D)->pstExtraData, pCtx_39(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _305->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _305->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _305->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L942	@,
	ldr	r3, [r4, #2524]	@ pCtx_39(D)->DSDNeedClearQue, pCtx_39(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_39(D)->DSDNeedClearQue,
	beq	.L942	@,
.L940:
	ldr	r2, [r4, #2088]	@, pCtx_39(D)->NewPicHeight
	mov	r0, r6	@, pCtx
	ldr	r1, [r4, #2084]	@, pCtx_39(D)->NewPicWidth
	bl	Frame_Init	@
	cmp	r0, #0	@,
	beq	.L1017	@,
	ldr	r1, .L1043+52	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1017	@
.L944:
	ldr	r2, [r4, #1496]	@ D.34529, pCtx_39(D)->MP4Syntax.image_width
	ldr	ip, [r9, #3696]	@ D.34529, pCtx_39(D)->MP4Vol.video_object_layer_width
	cmp	r2, ip	@ D.34529, D.34529
	bne	.L945	@,
	ldr	r1, [r4, #1580]	@ pCtx_39(D)->pstExtraData, pCtx_39(D)->pstExtraData
	ldr	r1, [r1, #728]	@ _343->s32DSDWaitFlag, _343->s32DSDWaitFlag
	cmp	r1, #1	@ _343->s32DSDWaitFlag,
	movne	r1, r2	@ D.34529, D.34529
	movne	r0, r3	@ D.34529, D.34529
	bne	.L946	@,
	b	.L945	@
.L1031:
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L956	@,
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
	str	r0, [r4, #2500]	@ D.34532, pCtx_39(D)->BwdFsID
	str	r0, [r4, #2492]	@ D.34532, pCtx_39(D)->FwdFsID
.L956:
	add	r5, r6, #22528	@ D.34539, pCtx,
	mov	r3, #0	@ tmp982,
	add	r5, r5, #80	@ D.34539, D.34539,
	str	r3, [r4, #2488]	@ tmp982, pCtx_39(D)->RefNum
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	mov	r1, r5	@, D.34539
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _439->stChanOption.s32ReRangeEn, _439->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _439->stChanOption.s32ReRangeEn,
	bne	.L957	@,
	ldr	r3, [r3, #32]	@ _439->eCapLevel, _439->eCapLevel
	cmp	r3, #25	@ _439->eCapLevel,
	beq	.L1041	@,
.L957:
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L959	@,
	ldr	r3, [r4, #1580]	@ pCtx_39(D)->pstExtraData, pCtx_39(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _447->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _447->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _447->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L961	@,
	ldr	r3, [r4, #2524]	@ pCtx_39(D)->DSDNeedClearQue, pCtx_39(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_39(D)->DSDNeedClearQue,
	beq	.L961	@,
.L959:
	mov	r0, r6	@, pCtx
	ldr	r2, [r4, #1492]	@, pCtx_39(D)->MP4Syntax.image_height
	ldr	r1, [r4, #1496]	@, pCtx_39(D)->MP4Syntax.image_width
	bl	Frame_Init	@
	cmp	r0, #0	@,
	beq	.L1018	@,
	ldr	r1, .L1043+56	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1018	@
.L906:
	movw	r1, #438	@,
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L905	@
.L918:
	ldr	r1, [r4, #1512]	@ pCtx_39(D)->MP4Syntax.last_time_base, pCtx_39(D)->MP4Syntax.last_time_base
	ldr	r2, [r4, #1500]	@ pCtx_39(D)->MP4Syntax.time_incr, pCtx_39(D)->MP4Syntax.time_incr
	ldr	r3, [r9, #3688]	@ pCtx_39(D)->MP4Vol.vop_time_increment_resolution, pCtx_39(D)->MP4Vol.vop_time_increment_resolution
	ldr	ip, [r4, #1504]	@ pCtx_39(D)->MP4Syntax.time_increment, pCtx_39(D)->MP4Syntax.time_increment
	add	r2, r2, r1	@ D.34531, pCtx_39(D)->MP4Syntax.time_incr, pCtx_39(D)->MP4Syntax.last_time_base
	ldr	r0, [r4, #1520]	@ pCtx_39(D)->MP4Syntax.last_non_b_time, pCtx_39(D)->MP4Syntax.last_non_b_time
	ldr	r1, [r4, #1524]	@ pCtx_39(D)->MP4Syntax.time_pp, pCtx_39(D)->MP4Syntax.time_pp
	mla	r3, r3, r2, ip	@ D.34531, pCtx_39(D)->MP4Vol.vop_time_increment_resolution, D.34531, pCtx_39(D)->MP4Syntax.time_increment
	rsb	r2, r0, r1	@ D.34531, pCtx_39(D)->MP4Syntax.last_non_b_time, pCtx_39(D)->MP4Syntax.time_pp
	add	r2, r2, r3	@ D.34531, D.34531, D.34531
	str	r2, [r4, #1528]	@ D.34531, pCtx_39(D)->MP4Syntax.time_bp
	str	r3, [r4, #1516]	@ D.34531, pCtx_39(D)->MP4Syntax.time
	b	.L919	@
.L1039:
	mov	r1, r5	@, StartCode
	mov	r0, r6	@, pCtx
	bl	MP4_Record_HeadPacketInfo	@
	b	.L905	@
.L1030:
	ldr	r1, [r4, #2492]	@, pCtx_39(D)->FwdFsID
	mov	r0, r6	@, pCtx
	mov	r3, #0	@ tmp874,
	str	r3, [sp]	@ tmp874, NewNum
	str	r3, [sp, #4]	@ tmp874, ReadNum
	str	r3, [sp, #8]	@ tmp874, RefNum
	bl	MP4_FlushFrameToVo	@
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	mov	r0, r6	@, pCtx
	bl	MP4_FlushFrameToVo	@
	ldr	r1, [r4, #2500]	@, pCtx_39(D)->BwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r3, sp	@,
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@,,
	cmp	r0, #0	@ pImage
	strne	r5, [r0, #376]	@ _363->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_375->u32IsLastFrame
	ldr	r0, [r4, #2480]	@, pCtx_39(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	ldr	r1, [r4, #2076]	@ pCtx_39(D)->OldPicWidth, pCtx_39(D)->OldPicWidth
	ldr	r2, [r3, #720]	@ _380->s32DSDThrWidth, _380->s32DSDThrWidth
	cmp	r1, r2	@ pCtx_39(D)->OldPicWidth, _380->s32DSDThrWidth
	bhi	.L950	@,
	ldr	r1, [r4, #2080]	@ pCtx_39(D)->OldPicHeight, pCtx_39(D)->OldPicHeight
	ldr	r2, [r3, #724]	@ _380->s32DSDThrHeight, _380->s32DSDThrHeight
	cmp	r1, r2	@ pCtx_39(D)->OldPicHeight, _380->s32DSDThrHeight
	bhi	.L950	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.34532, ReadNum, NewNum
	cmp	r2, #0	@ D.34532,
	ble	.L951	@,
.L953:
	mov	r2, #1	@ tmp918,
	str	r2, [r3, #728]	@ tmp918, _380->s32DSDWaitFlag
.L952:
	mov	r2, #1	@ tmp913,
	ldr	r3, [r4, #1580]	@ D.34537, pCtx_39(D)->pstExtraData
	str	r2, [r4, #2524]	@ tmp913, pCtx_39(D)->DSDNeedClearQue
	b	.L948	@
.L929:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L1042	@,
.L933:
	mov	r2, #1	@ tmp698,
	str	r2, [r3, #728]	@ tmp698, _238->s32DSDWaitFlag
.L935:
	mov	r3, #0	@ tmp702,
	str	r3, [r4, #2524]	@ tmp702, pCtx_39(D)->DSDNeedClearQue
	b	.L932	@
.L1040:
	ldr	r3, [r4, #2484]	@ pCtx_39(D)->FspPartitionOK, pCtx_39(D)->FspPartitionOK
	cmp	r3, #0	@ pCtx_39(D)->FspPartitionOK,
	bne	.L940	@,
.L942:
	mov	r0, r5	@, D.34539
	bl	ResetVoQueue	@
	b	.L940	@
.L950:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	bgt	.L953	@,
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L953	@,
.L951:
	mov	r2, #0	@ tmp910,
	str	r2, [r3, #728]	@ tmp910, _380->s32DSDWaitFlag
	b	.L952	@
.L1041:
	ldr	r3, [r4, #2484]	@ pCtx_39(D)->FspPartitionOK, pCtx_39(D)->FspPartitionOK
	cmp	r3, #0	@ pCtx_39(D)->FspPartitionOK,
	bne	.L959	@,
.L961:
	mov	r0, r5	@, D.34539
	bl	ResetVoQueue	@
	b	.L959	@
.L1042:
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #3	@ ReadNum,
	movle	r2, #0	@ tmp699,
	strle	r2, [r3, #728]	@ tmp699, _238->s32DSDWaitFlag
	ble	.L935	@,
	b	.L933	@
.L1037:
	movw	r3, #2601	@,
	ldr	r2, .L1043+60	@,
	ldr	r1, .L1043+64	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	b	.L927	@
.L1036:
	movw	r3, #2593	@,
	ldr	r2, .L1043+60	@,
	ldr	r1, .L1043+64	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	b	.L926	@
.L1044:
	.align	2
.L1043:
	.word	g_event_report
	.word	.LC67
	.word	.LC69
	.word	.LC59
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC55
	.word	.LC60
	.word	.LC61
	.word	.LC64
	.word	.LC62
	.word	.LC63
	.word	.LC66
	.word	.LC68
	.word	.LANCHOR1+1356
	.word	.LC65
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
	beq	.L1054	@,
	add	r3, r0, #12288	@ tmp138, pCtx,
	ldrb	r4, [r3, #3421]	@ zero_extendqisi2	@ D.34575, pCtx_3(D)->stCurPacket.StreamPack[0].IsLastSeg
	cmp	r4, #1	@ D.34575,
	beq	.L1055	@,
	cmp	r4, #0	@ D.34575,
	bne	.L1052	@,
	ldrb	r2, [r3, #3501]	@ zero_extendqisi2	@ pCtx_3(D)->stCurPacket.StreamPack[1].IsLastSeg, pCtx_3(D)->stCurPacket.StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pCtx_3(D)->stCurPacket.StreamPack[1].IsLastSeg,
	bne	.L1052	@,
	ldr	r2, [r5, #1628]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	add	r1, r0, #15744	@, pCtx,
	ldr	r3, [r3, #3428]	@ pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte
	add	r0, r0, #22016	@, pCtx,
	add	r1, r1, #40	@,,
	add	r0, r0, #160	@,,
	add	r3, r3, r2	@ D.34576, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	mov	r2, #80	@,
	str	r3, [r5, #1628]	@ D.34576, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	bl	memcpy	@
	mov	r0, r4	@ D.34573, D.34575
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1055:
	ldrb	r4, [r5, #1621]	@ zero_extendqisi2	@ D.34575, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].IsLastSeg
	cmp	r4, #1	@ D.34575,
	beq	.L1056	@,
	cmp	r4, #0	@ D.34575,
	bne	.L1051	@,
	ldrb	r2, [r5, #1701]	@ zero_extendqisi2	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].IsLastSeg, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].IsLastSeg
	cmp	r2, #1	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].IsLastSeg,
	bne	.L1051	@,
	ldr	r3, [r3, #3428]	@ pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte
	mov	r0, r4	@ D.34573, D.34575
	ldr	r2, [r5, #1708]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].LenInByte
	add	r3, r3, r2	@ D.34576, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].LenInByte
	str	r3, [r5, #1708]	@ D.34576, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].LenInByte
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1052:
	movw	r2, #5206	@,
	ldr	r1, .L1058	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34573,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1056:
	ldr	r1, [r3, #3424]	@ pCtx_3(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_3(D)->stCurPacket.StreamPack[0].PhyAddr
	ldr	r2, [r5, #1624]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].PhyAddr, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].PhyAddr
	cmp	r1, r2	@ pCtx_3(D)->stCurPacket.StreamPack[0].PhyAddr, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].PhyAddr
	bcc	.L1057	@,
	ldr	r3, [r3, #3428]	@ pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte
	mov	r0, #0	@ D.34573,
	ldr	r2, [r5, #1628]	@ MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	add	r3, r3, r2	@ D.34576, pCtx_3(D)->stCurPacket.StreamPack[0].LenInByte, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	str	r3, [r5, #1628]	@ D.34576, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].LenInByte
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1051:
	movw	r2, #5194	@,
	ldr	r1, .L1058	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34573,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1057:
	add	r1, r0, #15680	@, pCtx,
	add	r0, r0, #22016	@, pCtx,
	add	r1, r1, #24	@,,
	mov	r2, #80	@,
	add	r0, r0, #160	@,,
	bl	memcpy	@
	mov	r3, #0	@ tmp158,
	strb	r4, [r5, #1701]	@ D.34575, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[1].IsLastSeg
	mov	r0, r3	@ D.34573, tmp158
	strb	r3, [r5, #1621]	@ tmp158, MEM[(struct DEC_STREAM_PACKET_S *)pCtx_3(D) + 22096B].StreamPack[0].IsLastSeg
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1054:
	ldr	r1, .L1058+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34573,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1059:
	.align	2
.L1058:
	.word	.LC34
	.word	.LC70
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
	beq	.L1064	@,
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
	mov	r0, #0	@ D.34590,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1064:
	add	r3, r4, #20480	@ tmp123, pCtx,
	add	r1, r4, #15680	@, pCtx,
	add	r1, r1, #24	@,,
	ldr	r0, [r3, #2480]	@, pCtx_4(D)->ChanID
	bl	MP4_ClearCurPacket	@
	movw	r2, #5222	@,
	ldr	r1, .L1065	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34590, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1066:
	.align	2
.L1065:
	.word	.LC71
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
	add	r4, r0, #12288	@ tmp282, pCtx,
	add	r5, r0, #20480	@ tmp283, pCtx,
	.pad #32
	sub	sp, sp, #32	@,,
	ldr	r2, [r4, #3424]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].PhyAddr, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].PhyAddr
	mov	r3, #0	@ tmp168,
	mov	r6, r0	@ pCtx, pCtx
	add	r0, sp, #4	@ tmp286,,
	str	r2, [r5, #1568]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].PhyAddr, MEM[(struct BITS_OBJ *)pCtx_6(D) + 22044B].phy_addr
	ldr	r1, [r4, #3416]	@ D.34613, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].VirAddr
	str	r1, [r5, #1564]	@ D.34613, MEM[(struct BITS_OBJ *)pCtx_6(D) + 22044B].vir_addr
	ldr	r2, [r4, #3428]	@ D.34610, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_6(D) + 15704B].StreamPack[0].LenInByte
	str	r3, [r5, #1576]	@ tmp168, MEM[(struct BITS_OBJ *)pCtx_6(D) + 22044B].offset
	str	r2, [r5, #1572]	@ D.34610, MEM[(struct BITS_OBJ *)pCtx_6(D) + 22044B].len
	bl	BsInit	@
	add	r0, sp, #4	@ tmp287,,
	mov	r1, #32	@,
	bl	BsShow	@
	ldrb	r2, [r4, #3576]	@ zero_extendqisi2	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_6(D) + 15864B], MEM[(struct MP4_SCD_UPMSG *)pCtx_6(D) + 15864B]
	tst	r2, #1	@ MEM[(struct MP4_SCD_UPMSG *)pCtx_6(D) + 15864B],
	beq	.L1094	@,
	mov	r3, #1	@ tmp192,
	strb	r3, [r5, #797]	@ tmp192, pCtx_6(D)->MP4Syntax.is_short_header
	ldrb	r3, [r4, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	tst	r3, #2	@ *pCtx_6(D),
	bne	.L1070	@,
	ldr	r2, [r5, #2040]	@ D.34612, pCtx_6(D)->stHdPktInfo.HeadCode
	mov	r0, #196	@ StartCode,
.L1074:
	movw	r3, #438	@ tmp250,
	cmp	r0, r3	@ StartCode, tmp250
	cmpeq	r2, r3	@, D.34612, tmp250
	beq	.L1081	@,
	cmp	r0, #196	@ StartCode,
	cmpeq	r2, #196	@, D.34612,
	bne	.L1092	@,
.L1081:
	ldr	r3, [r5, #2048]	@ pCtx_6(D)->stHdPktInfo.CountVopNum, pCtx_6(D)->stHdPktInfo.CountVopNum
	cmp	r3, #1	@ pCtx_6(D)->stHdPktInfo.CountVopNum,
	bgt	.L1073	@,
	b	.L1092	@
.L1094:
	mov	r2, r0, lsr #8	@ D.34612, D.34610,
	mov	r1, #2	@ tmp180,
	sub	r2, r2, #128	@ D.34612, D.34612,
	mov	r3, r0	@ D.34610,
	cmp	r2, #3	@ D.34612,
	strb	r1, [r5, #797]	@ tmp180, pCtx_6(D)->MP4Syntax.is_short_header
	bls	.L1095	@,
.L1069:
	ldrb	r2, [r4, #3576]	@ zero_extendqisi2	@ *pCtx_6(D), *pCtx_6(D)
	tst	r2, #2	@ *pCtx_6(D),
	ldr	r2, [r5, #2040]	@ pCtx_6(D)->stHdPktInfo.HeadCode, pCtx_6(D)->stHdPktInfo.HeadCode
	bne	.L1072	@,
	movw	r1, #438	@ tmp212,
	cmp	r2, r1	@ D.34612, tmp212
	cmpne	r3, #196	@, D.34610,
	beq	.L1074	@,
.L1073:
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
.L1092:
	mov	r0, #0	@ ret,
.L1078:
	ldr	r3, [r4, #3416]	@ pCtx_6(D)->stCurPacket.StreamPack[0].VirAddr, pCtx_6(D)->stCurPacket.StreamPack[0].VirAddr
	cmp	r3, #0	@ pCtx_6(D)->stCurPacket.StreamPack[0].VirAddr,
	beq	.L1084	@,
	ldr	r3, [r4, #3424]	@ pCtx_6(D)->stCurPacket.StreamPack[0].PhyAddr, pCtx_6(D)->stCurPacket.StreamPack[0].PhyAddr
	cmp	r3, #0	@ pCtx_6(D)->stCurPacket.StreamPack[0].PhyAddr,
	mvneq	r0, #0	@ D.34608,
.L1090:
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1072:
	movw	r1, #438	@ tmp225,
	sub	r3, r3, #196	@ D.34611, D.34610,
	rsb	r2, r1, r2	@ D.34611, tmp225, pCtx_6(D)->stHdPktInfo.HeadCode
	clz	r3, r3	@ D.34611, D.34611
	clz	r2, r2	@ D.34611, D.34611
	mov	r3, r3, lsr #5	@ D.34611, D.34611,
	mov	r2, r2, lsr #5	@ D.34611, D.34611,
	orrs	r1, r3, r2	@ tmp285, D.34611, D.34611
	beq	.L1075	@,
	ldrb	r0, [r5, #1561]	@ zero_extendqisi2	@ pCtx_6(D)->MP4SyntaxState.vop_decode_right, pCtx_6(D)->MP4SyntaxState.vop_decode_right
	cmp	r0, #1	@ pCtx_6(D)->MP4SyntaxState.vop_decode_right,
	orreq	r3, r3, #1	@,, tmp236, D.34611
	cmp	r3, #0	@ tmp236,
	bne	.L1083	@,
.L1075:
	mov	r0, r6	@, pCtx
	bl	MP4_Renew_CurPacket	@
	b	.L1078	@
.L1070:
	ldr	r3, [r5, #2040]	@ pCtx_6(D)->stHdPktInfo.HeadCode, pCtx_6(D)->stHdPktInfo.HeadCode
	movw	r2, #438	@ tmp279,
	rsb	r2, r2, r3	@ D.34611, tmp279, pCtx_6(D)->stHdPktInfo.HeadCode
	clz	r2, r2	@ D.34611, D.34611
	mov	r2, r2, lsr #5	@ D.34611, D.34611,
.L1083:
	ldr	r3, [r5, #2044]	@ pCtx_6(D)->stHdPktInfo.GetHeadFirstFlag, pCtx_6(D)->stHdPktInfo.GetHeadFirstFlag
	cmp	r3, #1	@ pCtx_6(D)->stHdPktInfo.GetHeadFirstFlag,
	movne	r2, #0	@, tmp244
	andeq	r2, r2, #1	@,, tmp244, D.34611
	cmp	r2, #0	@ tmp244,
	beq	.L1092	@,
	ldr	r3, [r5, #1628]	@ pCtx_6(D)->stHdPktInfo.stLastPacket.StreamPack[0].LenInByte, pCtx_6(D)->stHdPktInfo.stLastPacket.StreamPack[0].LenInByte
	cmp	r3, #4	@ pCtx_6(D)->stHdPktInfo.stLastPacket.StreamPack[0].LenInByte,
	bne	.L1092	@,
	b	.L1075	@
.L1095:
	ldrb	r2, [r4, #3576]	@ zero_extendqisi2	@ pCtx_6(D)->ScdUpMsg.SliceFlag, pCtx_6(D)->ScdUpMsg.SliceFlag
	orr	r2, r2, r1	@ tmp188, pCtx_6(D)->ScdUpMsg.SliceFlag,
	strb	r2, [r4, #3576]	@ tmp188, pCtx_6(D)->ScdUpMsg.SliceFlag
	b	.L1069	@
.L1084:
	mvn	r0, #0	@ D.34608,
	b	.L1090	@
	.fnend
	.size	MP4_Check_CurPacket, .-MP4_Check_CurPacket
	.align	2
	.global	MPEG4DEC_Decode
	.type	MPEG4DEC_Decode, %function
MPEG4DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r0, #20480	@ tmp722, pCtx,
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r3, [r4, #2068]	@ pCtx_11(D)->InitComplete, pCtx_11(D)->InitComplete
	cmp	r3, #0	@ pCtx_11(D)->InitComplete,
	beq	.L1097	@,
	ldr	r3, [r1, #12]	@ ptr_strm_para_14(D)->StreamPack[0].LenInByte, ptr_strm_para_14(D)->StreamPack[0].LenInByte
	mov	r5, r1	@ ptr_strm_para, ptr_strm_para
	cmp	r3, #0	@ ptr_strm_para_14(D)->StreamPack[0].LenInByte,
	beq	.L1097	@,
	ldr	r3, [r1, #8]	@ ptr_strm_para_14(D)->StreamPack[0].PhyAddr, ptr_strm_para_14(D)->StreamPack[0].PhyAddr
	cmp	r3, #0	@ ptr_strm_para_14(D)->StreamPack[0].PhyAddr,
	beq	.L1097	@,
	ldr	r3, [r1]	@ ptr_strm_para_14(D)->StreamPack[0].VirAddr, ptr_strm_para_14(D)->StreamPack[0].VirAddr
	cmp	r3, #0	@ ptr_strm_para_14(D)->StreamPack[0].VirAddr,
	beq	.L1097	@,
	ldr	r1, .L1197	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #8]	@, ptr_strm_para_14(D)->StreamPack[0].PhyAddr
	ldr	r1, .L1197+4	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #12]	@, ptr_strm_para_14(D)->StreamPack[0].LenInByte
	ldr	r1, .L1197+8	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@, ptr_strm_para_14(D)->StreamPack[0].IsLastSeg
	ldr	r1, .L1197+12	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #88]	@, ptr_strm_para_14(D)->StreamPack[1].PhyAddr
	ldr	r1, .L1197+16	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #92]	@, ptr_strm_para_14(D)->StreamPack[1].LenInByte
	ldr	r1, .L1197+20	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #85]	@ zero_extendqisi2	@, ptr_strm_para_14(D)->StreamPack[1].IsLastSeg
	ldr	r1, .L1197+24	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #12]	@, ptr_strm_para_14(D)->StreamPack[0].LenInByte
	ldr	r1, .L1197+28	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5]	@ ptr_strm_para_14(D)->StreamPack[0].VirAddr, ptr_strm_para_14(D)->StreamPack[0].VirAddr
	ldr	r1, .L1197+32	@,
	mov	r0, #7	@,
	add	r7, r6, #15680	@ tmp332, pCtx,
	add	r8, r6, #15808	@ pScdUpMsg, pCtx,
	ldrb	r2, [r3]	@ zero_extendqisi2	@, *_35
	add	r9, r7, #96	@ D.34629, tmp332,
	bl	dprint_vfmw	@
	ldr	r3, [r5]	@ ptr_strm_para_14(D)->StreamPack[0].VirAddr, ptr_strm_para_14(D)->StreamPack[0].VirAddr
	ldr	r1, .L1197+36	@,
	mov	r0, #7	@,
	add	r7, r7, #24	@ tmp332, tmp332,
	add	r8, r8, #56	@ pScdUpMsg, pScdUpMsg,
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@, MEM[(HI_U8 *)_39 + 1B]
	bl	dprint_vfmw	@
	ldr	r3, [r5]	@ ptr_strm_para_14(D)->StreamPack[0].VirAddr, ptr_strm_para_14(D)->StreamPack[0].VirAddr
	ldr	r1, .L1197+40	@,
	mov	r0, #7	@,
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@, MEM[(HI_U8 *)_43 + 2B]
	bl	dprint_vfmw	@
	ldr	r3, [r5]	@ ptr_strm_para_14(D)->StreamPack[0].VirAddr, ptr_strm_para_14(D)->StreamPack[0].VirAddr
	ldr	r1, .L1197+44	@,
	mov	r0, #7	@,
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@, MEM[(HI_U8 *)_47 + 3B]
	bl	dprint_vfmw	@
	mov	r0, r7	@, tmp332
	mov	r2, #160	@,
	mov	r1, r5	@, ptr_strm_para
	bl	memcpy	@
	mov	r1, r9	@, D.34629
	mov	r2, #4	@,
	mov	r0, r8	@, pScdUpMsg
	bl	memcpy	@
	mov	r0, r6	@, pCtx
	bl	MP4_Check_CurPacket	@
	cmn	r0, #1	@ D.34616,
	mov	r7, r0	@ D.34616,
	beq	.L1181	@,
	mov	r1, r9	@, D.34629
	mov	r2, #4	@,
	mov	r0, r8	@, pScdUpMsg
	bl	memcpy	@
	add	r3, r6, #12288	@ tmp352, pCtx,
	mov	r2, #0	@ tmp366,
	mov	r0, r6	@, pCtx
	ldr	r1, [r3, #3424]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].PhyAddr, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].PhyAddr
	str	r1, [r4, #1568]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].PhyAddr, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr
	ldr	r1, [r3, #3416]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].VirAddr, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].VirAddr
	str	r1, [r4, #1564]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].VirAddr, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr
	ldr	r3, [r3, #3428]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].LenInByte, MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].LenInByte
	str	r2, [r4, #1576]	@ tmp366, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].offset
	str	r3, [r4, #1572]	@ MEM[(const struct DEC_STREAM_PACKET_S *)pCtx_11(D) + 15704B].StreamPack[0].LenInByte, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len
	bl	Mp4_Get_DecMode	@
	ldr	r3, [r4, #1580]	@ D.34623, pCtx_11(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _59->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _59->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _59->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1182	@,
.L1101:
	add	r7, r6, #16384	@ tmp721, pCtx,
	ldr	r3, [r7, #3584]	@ pCtx_11(D)->PicIntegrality, pCtx_11(D)->PicIntegrality
	str	r3, [r4, #2520]	@ pCtx_11(D)->PicIntegrality, pCtx_11(D)->LastPicIntegrality
.L1102:
	ldr	r2, [r4, #1572]	@, pCtx_11(D)->BitsObj.len
	mov	r0, r6	@, pCtx
	ldr	r1, [r4, #1564]	@, pCtx_11(D)->BitsObj.vir_addr
	bl	Mp4_Syntax_Parse	@
	ldr	lr, [r4, #1580]	@ D.34623, pCtx_11(D)->pstExtraData
	ldr	ip, [r4, #1564]	@ MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr
	ldr	r2, [r4, #1568]	@ MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr
	ldr	r3, [r4, #1572]	@ MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len
	mov	r1, r0, lsr #3	@ byte_num, bits_consume,
	and	r0, r0, #7	@ D.34620, bits_consume,
	rsb	r3, r1, r3	@ D.34620, byte_num, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len
	add	ip, ip, r1	@ D.34621, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr, byte_num
	str	r0, [r4, #1576]	@ D.34620, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].offset
	add	r2, r1, r2	@ D.34620, byte_num, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr
	str	ip, [r4, #1564]	@ D.34621, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].vir_addr
	str	r2, [r4, #1568]	@ D.34620, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].phy_addr
	str	r3, [r4, #1572]	@ D.34620, MEM[(struct BITS_OBJ *)pCtx_11(D) + 22044B].len
	ldr	r3, [lr, #692]	@ _71->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _71->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _71->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1183	@,
.L1103:
	ldr	r3, [r7, #3584]	@ D.34620, pCtx_11(D)->PicIntegrality
	tst	r3, #32	@ D.34620,
	beq	.L1104	@,
	bic	r3, r3, #178	@ D.34620, D.34620,
	str	r3, [r7, #3584]	@ D.34620, pCtx_11(D)->PicIntegrality
	ldr	r3, [r4, #1612]	@ D.34624, pCtx_11(D)->DecMode
	cmp	r3, #2	@ D.34624,
	beq	.L1184	@,
	cmp	r3, #1	@ D.34624,
	beq	.L1185	@,
	cmp	r3, #4	@ D.34624,
	bne	.L1107	@,
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ D.34619, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ D.34619,
	bne	.L1186	@,
	str	r3, [r4, #2096]	@ D.34619, pCtx_11(D)->PPicFound
.L1107:
	mov	r0, r6	@, pCtx
	bl	Mp4_Frame_Atr	@
	cmn	r0, #1	@ ret,
	mov	r7, r0	@ ret,
	beq	.L1187	@,
	cmn	r0, #2	@ ret,
	beq	.L1188	@,
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2500]	@, pCtx_11(D)->BwdFsID
	mov	r8, r0	@ pFwdImg,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	clz	r3, r8	@ D.34625, pFwdImg
	mov	r3, r3, lsr #5	@ D.34625, D.34625,
	clz	r1, r0	@ D.34625,
	mov	r10, r0	@ pBwdImg,
	mov	r1, r1, lsr #5	@ D.34625, D.34625,
	orrs	r2, r1, r3	@ tmp727, D.34625, D.34625
	bne	.L1189	@,
	ldrb	ip, [r4, #795]	@ zero_extendqisi2	@ D.34619, pCtx_11(D)->MP4Syntax.coding_mode
	and	r9, ip, #253	@ tmp469, D.34619,
	cmp	r9, #1	@ tmp469,
	beq	.L1190	@,
	cmp	ip, #2	@ D.34619,
	beq	.L1191	@,
.L1117:
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type,
	beq	.L1127	@,
	ldr	r3, [r4, #2488]	@ pCtx_11(D)->RefNum, pCtx_11(D)->RefNum
	ldr	r1, [r4, #2492]	@ D.34617, pCtx_11(D)->FwdFsID
	cmp	r3, #0	@ pCtx_11(D)->RefNum,
	ldr	r3, [r4, #2500]	@ D.34616, pCtx_11(D)->BwdFsID
	movgt	r2, #2	@ D.34617,
	movle	r2, #1	@ D.34617,
	cmp	r1, r3	@ D.34617, D.34616
	str	r2, [r4, #2488]	@ D.34617, pCtx_11(D)->RefNum
	beq	.L1125	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #3	@,
	beq	.L1180	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_SetDisplay	@
.L1180:
	ldr	r3, [r4, #2500]	@ D.34616, pCtx_11(D)->BwdFsID
.L1125:
	str	r3, [r4, #2492]	@ D.34616, pCtx_11(D)->FwdFsID
	mov	r2, #1	@,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ pCtx_11(D)->BwdCodingType, pCtx_11(D)->BwdCodingType
	strb	r3, [r6]	@ pCtx_11(D)->BwdCodingType, pCtx_11(D)->FwdCodingType
	ldr	r3, [r4, #2504]	@ pCtx_11(D)->BwdTimePP, pCtx_11(D)->BwdTimePP
	ldr	r1, [r4, #2508]	@ D.34617, pCtx_11(D)->CurFsID
	str	r3, [r4, #2496]	@ pCtx_11(D)->BwdTimePP, pCtx_11(D)->FwdTimePP
	str	r1, [r4, #2500]	@ D.34617, pCtx_11(D)->BwdFsID
	ldrb	r3, [r6, #2]	@ zero_extendqisi2	@ pCtx_11(D)->CurCodingType, pCtx_11(D)->CurCodingType
	strb	r3, [r6, #1]	@ pCtx_11(D)->CurCodingType, pCtx_11(D)->BwdCodingType
	ldr	r3, [r4, #1524]	@ pCtx_11(D)->MP4Syntax.time_pp, pCtx_11(D)->MP4Syntax.time_pp
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	str	r3, [r4, #2504]	@ pCtx_11(D)->MP4Syntax.time_pp, pCtx_11(D)->BwdTimePP
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_RemovePmv	@
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #4	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type,
	bne	.L1127	@,
	ldrb	r8, [r4, #792]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.packed_mode, pCtx_11(D)->MP4Syntax.packed_mode
	cmp	r8, #0	@ pCtx_11(D)->MP4Syntax.packed_mode,
	beq	.L1192	@,
.L1134:
	mov	r7, #0	@ D.34616,
.L1174:
	mov	r0, r7	@, D.34616
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1190:
	cmp	r3, #0	@ D.34625,
	bne	.L1115	@,
	ldr	r3, [r4, #1580]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r2, [r8, #180]	@ pFwdImg_99->error_level, pFwdImg_99->error_level
	ldr	r3, [r3]	@ _113->s32RefErrThr, _113->s32RefErrThr
	cmp	r2, r3	@ pFwdImg_99->error_level, _113->s32RefErrThr
	bls	.L1117	@,
	mov	r2, r9	@, tmp469
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mvn	r7, #0	@ D.34616,
	bl	FSP_ClearLogicFs	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	r3, [r4, #1580]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r2, [r8, #180]	@, pFwdImg_99->error_level
	mov	r0, r9	@, tmp469
	ldr	r1, .L1197+48	@,
	ldr	r3, [r3]	@,* pCtx_11(D)->pstExtraData
	bl	dprint_vfmw	@
	mov	r0, r7	@, D.34616
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1186:
	sub	r2, r3, #2	@ tmp431, D.34619,
	tst	r2, #253	@ tmp431,
	bne	.L1110	@,
	ldr	r2, [r4, #2096]	@ pCtx_11(D)->PPicFound, pCtx_11(D)->PPicFound
	cmp	r2, #0	@ pCtx_11(D)->PPicFound,
	beq	.L1141	@,
.L1110:
	cmp	r3, #1	@ D.34619,
	streq	r3, [r4, #2096]	@ D.34619, pCtx_11(D)->PPicFound
	b	.L1107	@
.L1183:
	ldr	r3, [lr, #728]	@ _71->s32DSDWaitFlag, _71->s32DSDWaitFlag
	cmp	r3, #0	@ _71->s32DSDWaitFlag,
	beq	.L1103	@,
	b	.L1134	@
.L1182:
	ldr	r3, [r3, #728]	@ _59->s32DSDWaitFlag, _59->s32DSDWaitFlag
	cmp	r3, #1	@ _59->s32DSDWaitFlag,
	bne	.L1101	@,
	ldr	r3, [r4, #2520]	@ pCtx_11(D)->LastPicIntegrality, pCtx_11(D)->LastPicIntegrality
	add	r7, r6, #16384	@ tmp721, pCtx,
	str	r3, [r7, #3584]	@ pCtx_11(D)->LastPicIntegrality, pCtx_11(D)->PicIntegrality
	b	.L1102	@
.L1127:
	mov	r0, r6	@, pCtx
	mov	r2, r5	@, ptr_strm_para
	mov	r1, #0	@,
	bl	Mp4_Set_DecPar	@
	ldrb	r7, [r4, #1432]	@ zero_extendqisi2	@ D.34619, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	sub	r3, r7, #2	@ tmp487, D.34619,
	sub	r0, r7, #2	@ D.34625, D.34619,
	clz	r0, r0	@ D.34625, D.34625
	tst	r3, #253	@ tmp487,
	mov	r0, r0, lsr #5	@ D.34625, D.34625,
	bne	.L1123	@,
	ldr	r3, [r4, #2096]	@ pCtx_11(D)->PPicFound, pCtx_11(D)->PPicFound
	cmp	r3, #0	@ pCtx_11(D)->PPicFound,
	beq	.L1193	@,
.L1123:
	cmp	r7, #1	@ D.34619,
	beq	.L1194	@,
	add	r3, r6, #1040	@ D.34626, pCtx,
	str	r3, [r6, #1036]	@ D.34626, pCtx_11(D)->pMp4DecParam
	ldr	r1, [r4, #1580]	@ D.34623, pCtx_11(D)->pstExtraData
	ldr	r2, [r1, #708]	@ D.34617, _196->stDisParams.s32Mode
	cmp	r2, #1	@ D.34617,
	beq	.L1195	@,
	cmp	r2, #2	@ D.34617,
	beq	.L1139	@,
.L1133:
	cmp	r7, #0	@ D.34619,
	mov	r3, #0	@ tmp597,
	strb	r3, [r6, #1198]	@ tmp597, pCtx_11(D)->Mp4DecParam.IsNvopCopy
	bne	.L1134	@,
	ldr	r3, .L1197+52	@ tmp599,
	ldr	r3, [r3]	@ D.34627, g_event_report
	cmp	r3, #0	@ D.34627,
	beq	.L1134	@,
	add	r2, sp, #24	@ tmp601,,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mov	r1, #20	@,
	str	r7, [r2, #-4]!	@ D.34619, para
	blx	r3	@ D.34627
	b	.L1174	@
.L1184:
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #0	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type,
	beq	.L1107	@,
.L1106:
	mov	r0, r6	@, pCtx
	mvn	r7, #0	@ D.34616,
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	b	.L1174	@
.L1185:
	ldrb	r3, [r4, #1432]	@ zero_extendqisi2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type, pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type
	cmp	r3, #2	@ pCtx_11(D)->MP4Syntax.syn_vop.vop_coding_type,
	bne	.L1107	@,
	b	.L1106	@
.L1192:
	ldr	r1, .L1197+56	@,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2492]	@, pCtx_11(D)->FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	mov	r9, r0	@ pFwd,
	beq	.L1196	@,
	ldr	r2, [r5, #408]	@ D.34628, pCur_226->pstDecodeFs
	cmp	r2, #0	@ D.34628,
	beq	.L1136	@,
	ldr	r3, [r5, #416]	@ pCur_226->pstTfOutFs, pCur_226->pstTfOutFs
	cmp	r3, #0	@ pCur_226->pstTfOutFs,
	beq	.L1136	@,
	ldr	r3, [r5, #412]	@ D.34628, pCur_226->pstDispOutFs
	cmp	r3, #0	@ D.34628,
	beq	.L1136	@,
	ldr	r1, [r0, #408]	@ D.34628, pFwd_230->pstDecodeFs
	mov	r0, r6	@, pCtx
	ldr	r2, [r2, #12]	@ D.34620, _240->PhyAddr
	mov	r7, #0	@ D.34616,
	cmp	r1, #0	@ D.34628,
	ldr	lr, [r4, #1492]	@ pCtx_11(D)->MP4Syntax.image_height, pCtx_11(D)->MP4Syntax.image_height
	ldr	ip, [r4, #1496]	@ pCtx_11(D)->MP4Syntax.image_width, pCtx_11(D)->MP4Syntax.image_width
	ldrne	r1, [r1, #12]	@ D.34618, _247->PhyAddr
	moveq	r1, r2	@ D.34618, D.34620
	ldr	r3, [r3, #12]	@ D.34620, _242->PhyAddr
	stmib	sp, {ip, lr}	@,,
	str	r1, [sp]	@ D.34618,
	mov	r1, r5	@, pCur
	bl	Vdm_Mem_Move	@
	b	.L1174	@
.L1194:
	str	r7, [r4, #2096]	@ D.34619, pCtx_11(D)->PPicFound
	add	r3, r6, #1040	@ D.34626, pCtx,
	str	r3, [r6, #1036]	@ D.34626, pCtx_11(D)->pMp4DecParam
	ldr	r1, [r4, #1580]	@ D.34623, pCtx_11(D)->pstExtraData
	ldr	r2, [r1, #708]	@ D.34617, _337->stDisParams.s32Mode
	cmp	r2, #1	@ D.34617,
	beq	.L1130	@,
	cmp	r2, #2	@ D.34617,
	beq	.L1139	@,
.L1130:
	mov	r3, #0	@ tmp719,
	strb	r3, [r6, #1198]	@ tmp719, pCtx_11(D)->Mp4DecParam.IsNvopCopy
	b	.L1134	@
.L1195:
	cmp	r3, #0	@ D.34626,
	moveq	r3, #0	@, tmp572
	andne	r3, r0, #1	@,, tmp572, D.34625
	cmp	r3, #0	@ tmp572,
	beq	.L1133	@,
	mov	r3, #0	@ tmp573,
	str	r3, [r6, #1036]	@ tmp573, pCtx_11(D)->pMp4DecParam
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	mvn	r7, #0	@ D.34616,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	b	.L1174	@
.L1097:
	ldr	r1, .L1197+60	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ D.34616,
	mov	r0, r7	@, D.34616
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1191:
	cmp	r3, #0	@ D.34625,
	bne	.L1118	@,
	ldr	r3, [r4, #1580]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r2, [r8, #180]	@ pFwdImg_99->error_level, pFwdImg_99->error_level
	ldr	r3, [r3]	@ D.34620, _127->s32RefErrThr
	cmp	r2, r3	@ pFwdImg_99->error_level, D.34620
	bhi	.L1119	@,
	cmp	r1, #0	@ D.34625,
	bne	.L1120	@,
	ldr	r2, [r0, #180]	@ pBwdImg_103->error_level, pBwdImg_103->error_level
	cmp	r3, r2	@ D.34620, pBwdImg_103->error_level
	bcs	.L1117	@,
.L1120:
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mvn	r7, #0	@ D.34616,
	bl	FSP_ClearLogicFs	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	r3, [r4, #1580]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r2, [r10, #180]	@, pBwdImg_103->error_level
	mov	r0, #1	@,
	ldr	r1, .L1197+64	@,
	ldr	r3, [r3]	@,* pCtx_11(D)->pstExtraData
	bl	dprint_vfmw	@
	b	.L1174	@
.L1119:
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mvn	r7, #0	@ D.34616,
	bl	FSP_ClearLogicFs	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	ldr	r3, [r4, #1580]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r2, [r8, #180]	@, pFwdImg_99->error_level
	mov	r0, #1	@,
	ldr	r1, .L1197+68	@,
	ldr	r3, [r3]	@,* pCtx_11(D)->pstExtraData
	bl	dprint_vfmw	@
	b	.L1174	@
.L1141:
	mvn	r7, #0	@ D.34616,
	b	.L1174	@
.L1193:
	mov	r2, #1	@,
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mvn	r7, #0	@ D.34616,
	bl	FSP_ClearLogicFs	@
	b	.L1174	@
.L1139:
	ldr	r2, [r1, #712]	@ _330->stDisParams.s32DisNums, _330->stDisParams.s32DisNums
	cmp	r2, #0	@ _330->stDisParams.s32DisNums,
	andgt	r0, r0, #1	@ tmp581, D.34625,
	movle	r0, #0	@ tmp581,
	cmp	r3, #0	@ D.34626,
	moveq	r3, #0	@, tmp587
	andne	r3, r0, #1	@,, tmp587, tmp581
	cmp	r3, #0	@ tmp587,
	beq	.L1133	@,
	mov	r3, #0	@ tmp588,
	mov	r2, #1	@,
	str	r3, [r6, #1036]	@ tmp588, pCtx_11(D)->pMp4DecParam
	mvn	r7, #0	@ D.34616,
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [r4, #1580]	@ D.34623, pCtx_11(D)->pstExtraData
	mov	r0, r6	@, pCtx
	ldr	r3, [r2, #712]	@ _209->stDisParams.s32DisNums, _209->stDisParams.s32DisNums
	add	r3, r3, r7	@ D.34617, _209->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.34617, _209->stDisParams.s32DisNums
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	b	.L1174	@
.L1115:
	mov	r2, r9	@, tmp469
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mvn	r7, #0	@ D.34616,
	bl	FSP_ClearLogicFs	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mov	r0, r9	@, tmp469
	movw	r3, #3917	@,
	ldr	r2, .L1197+72	@,
	ldr	r1, .L1197+76	@,
	bl	dprint_vfmw	@
	b	.L1174	@
.L1181:
	ldr	r1, .L1197+80	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1174	@
.L1104:
	ldr	r1, .L1197+84	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ D.34616,
	b	.L1174	@
.L1189:
	movw	r3, #3903	@,
	ldr	r2, .L1197+72	@,
	ldr	r1, .L1197+88	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ D.34616,
	b	.L1174	@
.L1188:
	ldr	r1, .L1197+92	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	mvn	r7, #0	@ D.34616,
	b	.L1174	@
.L1118:
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mvn	r7, #0	@ D.34616,
	bl	FSP_ClearLogicFs	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	movw	r3, #3937	@,
	ldr	r2, .L1197+72	@,
	mov	r0, #1	@,
	ldr	r1, .L1197+76	@,
	bl	dprint_vfmw	@
	b	.L1174	@
.L1187:
	ldr	r1, .L1197+96	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	b	.L1174	@
.L1136:
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mvn	r7, #0	@ D.34616,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r5, #412]	@ pCur_226->pstDispOutFs, pCur_226->pstDispOutFs
	ldr	r3, [r4, #2508]	@ pCtx_11(D)->CurFsID, pCtx_11(D)->CurFsID
	mov	r0, #0	@,
	ldr	r2, [r4, #2492]	@ pCtx_11(D)->FwdFsID, pCtx_11(D)->FwdFsID
	str	r1, [sp, #12]	@ pCur_226->pstDispOutFs,
	ldr	ip, [r5, #416]	@ pCur_226->pstTfOutFs, pCur_226->pstTfOutFs
	ldr	lr, [r4, #2500]	@ pCtx_11(D)->BwdFsID, pCtx_11(D)->BwdFsID
	ldr	r1, .L1197+100	@,
	str	ip, [sp, #8]	@ pCur_226->pstTfOutFs,
	ldr	ip, [r5, #408]	@ pCur_226->pstDecodeFs, pCur_226->pstDecodeFs
	str	lr, [sp]	@ pCtx_11(D)->BwdFsID,
	str	ip, [sp, #4]	@ pCur_226->pstDecodeFs,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	b	.L1174	@
.L1196:
	ldr	r1, [r4, #2508]	@, pCtx_11(D)->CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #2480]	@, pCtx_11(D)->ChanID
	mvn	r7, #0	@ D.34616,
	bl	FSP_ClearLogicFs	@
	mov	r3, r5	@, pCur
	movw	r2, #4086	@,
	ldr	r1, .L1197+104	@,
	str	r9, [sp]	@ pFwd,
	mov	r0, r8	@, pCtx_11(D)->MP4Syntax.packed_mode
	bl	dprint_vfmw	@
	mov	r0, r6	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r6	@, pCtx
	bl	MP4_Clean_HeadPacket	@
	b	.L1174	@
.L1198:
	.align	2
.L1197:
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC94
	.word	g_event_report
	.word	.LC89
	.word	.LC72
	.word	.LC96
	.word	.LC95
	.word	.LANCHOR1+1376
	.word	.LC93
	.word	.LC85
	.word	.LC92
	.word	.LC88
	.word	.LC87
	.word	.LC86
	.word	.LC91
	.word	.LC90
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
	.type	__func__.30753, %object
	.size	__func__.30753, 15
__func__.30753:
	.ascii	"Mp4_Set_DecPar\000"
	.space	1
	.type	__func__.30880, %object
	.size	__func__.30880, 23
__func__.30880:
	.ascii	"Mp4_Syntax_Slice_NotSH\000"
	.space	1
	.type	__func__.30894, %object
	.size	__func__.30894, 20
__func__.30894:
	.ascii	"Mp4_Syntax_Slice_SH\000"
	.type	__func__.30909, %object
	.size	__func__.30909, 14
__func__.30909:
	.ascii	"MP4_Dec_Slice\000"
	.space	2
	.type	__func__.30670, %object
	.size	__func__.30670, 17
__func__.30670:
	.ascii	"Mp4_Syntax_Parse\000"
	.space	3
	.type	__func__.30779, %object
	.size	__func__.30779, 16
__func__.30779:
	.ascii	"MPEG4DEC_Decode\000"
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
	.ascii	"fatal stream error --- GOP marker_bit = 0\012\000"
	.space	1
.LC1:
	.ascii	"DivX%4dBuild%4d%c\000"
	.space	2
.LC2:
	.ascii	"DivX%4db%4d%c\000"
	.space	2
.LC3:
	.ascii	"FFmpe%*[^b]b%4d\000"
.LC4:
	.ascii	"FFmpeg v%4d.%4d.%4d / libavcodec build: %4d\000"
.LC5:
	.ascii	"Lavc%4d.%4d.%4d\000"
.LC6:
	.ascii	"ffmpeg\000"
	.space	1
.LC7:
	.ascii	"XviD%4d\000"
.LC8:
	.ascii	"fatal stream error --- VOP marker_bit = 0\012\000"
	.space	1
.LC9:
	.ascii	"VDH doesn't support SPRITE_STATIC & SPRITE_GMC\012\000"
.LC10:
	.ascii	"VDH doesn't support SPRITE_STATIC\012\000"
	.space	1
.LC11:
	.ascii	"Unknown sprite_enable\012\000"
	.space	1
.LC12:
	.ascii	"ERROR: not_8_bit !=0\012\000"
	.space	2
.LC13:
	.ascii	"not support no complexity_estimation_disable\012\000"
	.space	2
.LC14:
	.ascii	"not support data_partitioned\012\000"
	.space	2
.LC15:
	.ascii	"not support newpred_enable\012\000"
.LC16:
	.ascii	"not support reduced_resolution_vop_eanble\012\000"
	.space	1
.LC17:
	.ascii	"not support scalability\012\000"
	.space	3
.LC18:
	.ascii	"warning! profile_and_level_indication=%#x, maybe HD"
	.ascii	" pic...\012\000"
.LC19:
	.ascii	"actual frame size(%dx%d) exeed max config(%dx%d)\012"
	.ascii	"\000"
	.space	2
.LC20:
	.ascii	"MPEG4 Frame_Init return err!\012\000"
	.space	2
.LC21:
	.ascii	"MPEG4 Frame_Init PmvNum=%d, FrameNum=%d, error!\012"
	.ascii	"\000"
	.space	3
.LC22:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC23:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC24:
	.ascii	"dec_pts: %lld Usertag: %lld\012\000"
	.space	3
.LC25:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC26:
	.ascii	"%s %d  abnormal!\012\000"
	.space	2
.LC27:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC28:
	.ascii	"MPEG4DEC Init  -----\012\000"
	.space	2
.LC29:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC30:
	.ascii	"MPEG4DEC Init success -----\012\000"
	.space	3
.LC31:
	.ascii	"NVOP VDM copy process................\012\000"
	.space	1
.LC32:
	.ascii	"vop_coding_type = %d is not expected!\012\000"
	.space	1
.LC33:
	.ascii	" slice num %d is not extpected!\012\000"
	.space	3
.LC34:
	.ascii	" line %d packet is wrong!\012\000"
	.space	1
.LC35:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC36:
	.ascii	"FrameNum=%d\012\000"
	.space	3
.LC37:
	.ascii	"vop_coding_type=%d\012\000"
.LC38:
	.ascii	"line: %d pToQueImg is null!\012\000"
	.space	3
.LC39:
	.ascii	"CurImage %d is already out put\012\000"
.LC40:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC41:
	.ascii	"StreamIDNum = %d > (%d)\012\000"
	.space	3
.LC42:
	.ascii	"Warning : vop slice num %d != 0\012\000"
	.space	3
.LC43:
	.ascii	"warning streamIDNum %d != 0 \012\000"
	.space	2
.LC44:
	.ascii	"vop ---%d\012\000"
	.space	1
.LC45:
	.ascii	"VDH doesn't support S_VOP\012\000"
	.space	1
.LC46:
	.ascii	"parse time_module_base stream not enough\012\000"
	.space	2
.LC47:
	.ascii	"module time base parse error, more than %d '1' was "
	.ascii	"found!\012\000"
	.space	1
.LC48:
	.ascii	"error: vop_coding_type = %d, but vop_fcode_forward "
	.ascii	"= 0\012\000"
.LC49:
	.ascii	"error: B vop, but vop_fcode_backward = 0\012\000"
	.space	2
.LC50:
	.ascii	"FUN: %s pCtx->Mp4DecParam.SlcNum = %d\012\000"
	.space	1
.LC51:
	.ascii	" pSlcPara->mb_start_num = %d, MbCnt = %d\012\000"
	.space	2
.LC52:
	.ascii	"pSlcPara->mb_start_num = %d, totalMbMin1 = %d\012\000"
	.space	1
.LC53:
	.ascii	"FUN: %s MP4_ClearCurPacket\012\000"
.LC54:
	.ascii	"pCtx is NUL!!!\012\000"
.LC55:
	.ascii	"Not find start code \012\000"
	.space	2
.LC56:
	.ascii	"VOS beginning ~ !\012\000"
	.space	1
.LC57:
	.ascii	"VO beginning ~ !\012\000"
	.space	2
.LC58:
	.ascii	"VOL beginning ~ !\012\000"
	.space	1
.LC59:
	.ascii	"GOP beginning ~ !\012\000"
	.space	1
.LC60:
	.ascii	"VOP beginning ~ !\012\000"
	.space	1
.LC61:
	.ascii	"BitUsed=%d\012\000"
.LC62:
	.ascii	"SHVOP beginning ~ !\012\000"
	.space	3
.LC63:
	.ascii	"USERDATA beginning ~ !\012\000"
.LC64:
	.ascii	"MPEG4 Frame_Init return err 3!\012\000"
.LC65:
	.ascii	"Fail, %s, %d\012\000"
	.space	2
.LC66:
	.ascii	"MPEG4 Frame_Init return err 1!\012\000"
.LC67:
	.ascii	"vop right\012\000"
	.space	1
.LC68:
	.ascii	"MPEG4 Frame_Init return err 2!\012\000"
.LC69:
	.ascii	"bits over boundary\012\000"
.LC70:
	.ascii	"pLastPacket->StreamPack[0].VirAddr is NULL!!\012\000"
	.space	2
.LC71:
	.ascii	"line %d MP4_Combine_HdPacket failed!!\012\000"
	.space	1
.LC72:
	.ascii	"bitsream para error -----\012\000"
	.space	1
.LC73:
	.ascii	"MPEG4DEC Decode -----\012\000"
	.space	1
.LC74:
	.ascii	"ptr_strm_para->PhyAddr0=0x%x\012\000"
	.space	2
.LC75:
	.ascii	"ptr_strm_para->Length0=%d\012\000"
	.space	1
.LC76:
	.ascii	"ptr_strm_para->IsLastSeg0=%d\012\000"
	.space	2
.LC77:
	.ascii	"ptr_strm_para->PhyAddr1=0x%x\012\000"
	.space	2
.LC78:
	.ascii	"ptr_strm_para->Length1=%d\012\000"
	.space	1
.LC79:
	.ascii	"ptr_strm_para->IsLastSeg1=%d\012\000"
	.space	2
.LC80:
	.ascii	"ptr_strm_para->Length0 = %d\012\000"
	.space	3
.LC81:
	.ascii	"byte0: = 0x%x\012\000"
	.space	1
.LC82:
	.ascii	"byte1: = 0x%x\012\000"
	.space	1
.LC83:
	.ascii	"byte2: = 0x%x\012\000"
	.space	1
.LC84:
	.ascii	"byte3: = 0x%x\012\000"
	.space	1
.LC85:
	.ascii	"MP4_Check_CurPacket failed!\012\000"
	.space	3
.LC86:
	.ascii	"Mp4_Frame_Atr return fail\012\000"
	.space	1
.LC87:
	.ascii	"Frame req error---\012\000"
.LC88:
	.ascii	"fuction return value is null, %s %d!!\012\000"
	.space	1
.LC89:
	.ascii	"NVOP mem move--\012\000"
	.space	3
.LC90:
	.ascii	"line: %d pCur = %p, pFwd = %p\012\000"
	.space	1
.LC91:
	.ascii	"CurFsID(f%d,%d,b%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC92:
	.ascii	"bits not enought\012\000"
	.space	2
.LC93:
	.ascii	"fuction return value is null,%s %d!!\012\000"
	.space	2
.LC94:
	.ascii	"dec P/S frame, fwd ref err(%d) > ref_thr(%d)\012\000"
	.space	2
.LC95:
	.ascii	"dec B frame, bwd ref err(%d) > ref_thr(%d)\012\000"
.LC96:
	.ascii	"dec B frame, fwd ref err(%d) > ref_thr(%d)\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	MemArrange.30684, %object
	.size	MemArrange.30684, 416
MemArrange.30684:
	.space	416
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
