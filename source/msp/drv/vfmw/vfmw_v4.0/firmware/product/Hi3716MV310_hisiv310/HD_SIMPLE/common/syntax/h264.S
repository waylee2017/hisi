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
	.file	"h264.c"
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
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV310 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(h264)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.h264.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/h264.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/h264.o
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
	.global	IsSTRefFlg
	.type	IsSTRefFlg, %function
IsSTRefFlg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]	@ *s_2(D), *s_2(D)
	bic	r0, r0, #-16777216	@ D.38765, *s_2(D),
	bic	r0, r0, #255	@ D.38765, D.38765,
	sub	r0, r0, #65536	@, D.38765,
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
	.fnend
	.size	IsSTRefFlg, .-IsSTRefFlg
	.align	2
	.global	IsLTRefFlg
	.type	IsLTRefFlg, %function
IsLTRefFlg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]	@ *s_2(D), *s_2(D)
	bic	r0, r0, #-16777216	@ D.38770, *s_2(D),
	bic	r0, r0, #255	@ D.38770, D.38770,
	sub	r0, r0, #256	@, D.38770,
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
	.fnend
	.size	IsLTRefFlg, .-IsLTRefFlg
	.align	2
	.global	compare_pic_by_pic_num_desc
	.type	compare_pic_by_pic_num_desc, %function
compare_pic_by_pic_num_desc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ MEM[(struct H264_STORABLEPIC_S * *)arg1_3(D)], MEM[(struct H264_STORABLEPIC_S * *)arg1_3(D)]
	ldr	r3, [r1]	@ MEM[(struct H264_STORABLEPIC_S * *)arg2_6(D)], MEM[(struct H264_STORABLEPIC_S * *)arg2_6(D)]
	ldr	r2, [r2, #12]	@ D.38777, _4->pic_num
	ldr	r3, [r3, #12]	@ D.38777, _7->pic_num
	cmp	r2, r3	@ D.38777, D.38777
	blt	.L5	@,
	mvngt	r0, #0	@ D.38775,
	movle	r0, #0	@ D.38775,
	bx	lr	@
.L5:
	mov	r0, #1	@ D.38775,
	bx	lr	@
	.fnend
	.size	compare_pic_by_pic_num_desc, .-compare_pic_by_pic_num_desc
	.align	2
	.global	compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc, %function
compare_pic_by_lt_pic_num_asc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ MEM[(struct H264_STORABLEPIC_S * *)arg1_3(D)], MEM[(struct H264_STORABLEPIC_S * *)arg1_3(D)]
	ldr	r3, [r1]	@ MEM[(struct H264_STORABLEPIC_S * *)arg2_6(D)], MEM[(struct H264_STORABLEPIC_S * *)arg2_6(D)]
	ldr	r2, [r2, #8]	@ D.38783, _4->long_term_pic_num
	ldr	r3, [r3, #8]	@ D.38783, _7->long_term_pic_num
	cmp	r2, r3	@ D.38783, D.38783
	blt	.L9	@,
	movgt	r0, #1	@ D.38781,
	movle	r0, #0	@ D.38781,
	bx	lr	@
.L9:
	mvn	r0, #0	@ D.38781,
	bx	lr	@
	.fnend
	.size	compare_pic_by_lt_pic_num_asc, .-compare_pic_by_lt_pic_num_asc
	.align	2
	.global	compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc, %function
compare_fs_by_frame_num_desc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ MEM[(struct H264_FRAMESTORE_S * *)arg1_3(D)], MEM[(struct H264_FRAMESTORE_S * *)arg1_3(D)]
	ldr	r3, [r1]	@ MEM[(struct H264_FRAMESTORE_S * *)arg2_6(D)], MEM[(struct H264_FRAMESTORE_S * *)arg2_6(D)]
	ldr	r2, [r2, #516]	@ D.38789, _4->frame_num_wrap
	ldr	r3, [r3, #516]	@ D.38789, _7->frame_num_wrap
	cmp	r2, r3	@ D.38789, D.38789
	blt	.L12	@,
	mvngt	r0, #0	@ D.38787,
	movle	r0, #0	@ D.38787,
	bx	lr	@
.L12:
	mov	r0, #1	@ D.38787,
	bx	lr	@
	.fnend
	.size	compare_fs_by_frame_num_desc, .-compare_fs_by_frame_num_desc
	.align	2
	.global	compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc, %function
compare_fs_by_lt_pic_idx_asc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ MEM[(struct H264_FRAMESTORE_S * *)arg1_3(D)], MEM[(struct H264_FRAMESTORE_S * *)arg1_3(D)]
	ldr	r3, [r1]	@ MEM[(struct H264_FRAMESTORE_S * *)arg2_6(D)], MEM[(struct H264_FRAMESTORE_S * *)arg2_6(D)]
	ldr	r2, [r2, #520]	@ D.38795, _4->long_term_frame_idx
	ldr	r3, [r3, #520]	@ D.38795, _7->long_term_frame_idx
	cmp	r2, r3	@ D.38795, D.38795
	bcc	.L15	@,
	movhi	r0, #1	@ D.38793,
	movls	r0, #0	@ D.38793,
	bx	lr	@
.L15:
	mvn	r0, #0	@ D.38793,
	bx	lr	@
	.fnend
	.size	compare_fs_by_lt_pic_idx_asc, .-compare_fs_by_lt_pic_idx_asc
	.align	2
	.global	compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc, %function
compare_pic_by_poc_asc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ MEM[(struct H264_STORABLEPIC_S * *)arg1_3(D)], MEM[(struct H264_STORABLEPIC_S * *)arg1_3(D)]
	ldr	r3, [r1]	@ MEM[(struct H264_STORABLEPIC_S * *)arg2_6(D)], MEM[(struct H264_STORABLEPIC_S * *)arg2_6(D)]
	ldr	r2, [r2, #16]	@ D.38801, _4->poc
	ldr	r3, [r3, #16]	@ D.38801, _7->poc
	cmp	r2, r3	@ D.38801, D.38801
	blt	.L18	@,
	movgt	r0, #1	@ D.38799,
	movle	r0, #0	@ D.38799,
	bx	lr	@
.L18:
	mvn	r0, #0	@ D.38799,
	bx	lr	@
	.fnend
	.size	compare_pic_by_poc_asc, .-compare_pic_by_poc_asc
	.align	2
	.global	compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc, %function
compare_pic_by_poc_desc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ MEM[(struct H264_STORABLEPIC_S * *)arg1_3(D)], MEM[(struct H264_STORABLEPIC_S * *)arg1_3(D)]
	ldr	r3, [r1]	@ MEM[(struct H264_STORABLEPIC_S * *)arg2_6(D)], MEM[(struct H264_STORABLEPIC_S * *)arg2_6(D)]
	ldr	r2, [r2, #16]	@ D.38807, _4->poc
	ldr	r3, [r3, #16]	@ D.38807, _7->poc
	cmp	r2, r3	@ D.38807, D.38807
	blt	.L21	@,
	mvngt	r0, #0	@ D.38805,
	movle	r0, #0	@ D.38805,
	bx	lr	@
.L21:
	mov	r0, #1	@ D.38805,
	bx	lr	@
	.fnend
	.size	compare_pic_by_poc_desc, .-compare_pic_by_poc_desc
	.align	2
	.global	compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc, %function
compare_fs_by_poc_asc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ MEM[(struct H264_FRAMESTORE_S * *)arg1_3(D)], MEM[(struct H264_FRAMESTORE_S * *)arg1_3(D)]
	ldr	r3, [r1]	@ MEM[(struct H264_FRAMESTORE_S * *)arg2_6(D)], MEM[(struct H264_FRAMESTORE_S * *)arg2_6(D)]
	ldr	r2, [r2, #524]	@ D.38813, _4->poc
	ldr	r3, [r3, #524]	@ D.38813, _7->poc
	cmp	r2, r3	@ D.38813, D.38813
	blt	.L24	@,
	movgt	r0, #1	@ D.38811,
	movle	r0, #0	@ D.38811,
	bx	lr	@
.L24:
	mvn	r0, #0	@ D.38811,
	bx	lr	@
	.fnend
	.size	compare_fs_by_poc_asc, .-compare_fs_by_poc_asc
	.align	2
	.global	compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc, %function
compare_fs_by_poc_desc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ MEM[(struct H264_FRAMESTORE_S * *)arg1_3(D)], MEM[(struct H264_FRAMESTORE_S * *)arg1_3(D)]
	ldr	r3, [r1]	@ MEM[(struct H264_FRAMESTORE_S * *)arg2_6(D)], MEM[(struct H264_FRAMESTORE_S * *)arg2_6(D)]
	ldr	r2, [r2, #524]	@ D.38819, _4->poc
	ldr	r3, [r3, #524]	@ D.38819, _7->poc
	cmp	r2, r3	@ D.38819, D.38819
	blt	.L27	@,
	mvngt	r0, #0	@ D.38817,
	movle	r0, #0	@ D.38817,
	bx	lr	@
.L27:
	mov	r0, #1	@ D.38817,
	bx	lr	@
	.fnend
	.size	compare_fs_by_poc_desc, .-compare_fs_by_poc_desc
	.align	2
	.type	SetFrmRepeatCount.part.1, %function
SetFrmRepeatCount.part.1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r0, #49152	@ tmp126, pH264Ctx,
	add	r0, r0, #24576	@ tmp133, pH264Ctx,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [ip, #3712]	@ pH264Ctx_1(D)->PicOutCounter, pH264Ctx_1(D)->PicOutCounter
	ldr	r2, [r0, #2048]	@ pH264Ctx_1(D)->DPB.size, pH264Ctx_1(D)->DPB.size
	ldr	r3, [ip, #3708]	@ pH264Ctx_1(D)->NewPicCounter, pH264Ctx_1(D)->NewPicCounter
	add	r2, r2, lr, lsr #1	@ D.38823, pH264Ctx_1(D)->DPB.size, pH264Ctx_1(D)->PicOutCounter,
	add	r0, r2, #1	@ D.38823, D.38823,
	mov	r3, r3, lsr #1	@ D.38823, pH264Ctx_1(D)->NewPicCounter,
	cmp	r3, r0	@ D.38823, D.38823
	movcc	r3, #0	@ tmp152,
	strcc	r3, [r1, #84]	@ tmp152, p_image_11(D)->u32RepeatCnt
	ldrcc	pc, [sp], #4	@
	sub	r3, r3, #1	@ D.38823, D.38823,
	rsb	r3, r2, r3	@ D.38823, D.38823, D.38823
	cmp	r3, #1	@ D.38823,
	movhi	r3, #2	@ tmp138,
	movls	r3, #1	@ tmp145,
	strhi	r3, [r1, #84]	@ tmp138, p_image_11(D)->u32RepeatCnt
	strls	r3, [r1, #84]	@ tmp145, p_image_11(D)->u32RepeatCnt
	ldrhi	r3, [ip, #3712]	@ pH264Ctx_1(D)->PicOutCounter, pH264Ctx_1(D)->PicOutCounter
	ldrls	r3, [ip, #3712]	@ pH264Ctx_1(D)->PicOutCounter, pH264Ctx_1(D)->PicOutCounter
	addhi	r3, r3, #4	@ D.38823, pH264Ctx_1(D)->PicOutCounter,
	addls	r3, r3, #2	@ D.38823, pH264Ctx_1(D)->PicOutCounter,
	str	r3, [ip, #3712]	@ D.38823, pH264Ctx_1(D)->PicOutCounter
	ldr	pc, [sp], #4	@
	.fnend
	.size	SetFrmRepeatCount.part.1, .-SetFrmRepeatCount.part.1
	.align	2
	.type	DumpList.part.5, %function
DumpList.part.5:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r8, r0, #26880	@ ivtmp.359, pH264Ctx,
	add	r8, r8, #152	@ ivtmp.359, ivtmp.359,
	add	r10, r0, #20480	@ ivtmp.384, pH264Ctx,
	.pad #8
	sub	sp, sp, #8	@,,
	add	r10, r10, #240	@ ivtmp.384, ivtmp.384,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r6, #0	@ j,
	mov	r9, r8	@ ivtmp.392, ivtmp.359
.L34:
	ldr	r3, [r10, #4]!	@ MEM[base: _88, offset: 0B], MEM[base: _88, offset: 0B]
	cmp	r3, #0	@ MEM[base: _88, offset: 0B],
	movne	r5, r9	@ ivtmp.370, ivtmp.392
	movne	r4, #0	@ i,
	beq	.L37	@,
.L35:
	ldr	ip, [r5, #4]!	@ MEM[base: _79, offset: 0B], MEM[base: _79, offset: 0B]
	mov	r3, r4	@, i
	mov	r2, r6	@, j
	ldr	r1, .L66	@,
	mov	r0, #13	@,
	add	r4, r4, #1	@ i, i,
	ldr	ip, [ip, #4]	@ D.38883, _4->frame_store
	ldr	lr, [ip, #524]	@ _5->poc, _5->poc
	str	lr, [sp, #4]	@ _5->poc,
	ldr	ip, [ip, #512]	@ _5->frame_num, _5->frame_num
	str	ip, [sp]	@ _5->frame_num,
	bl	dprint_vfmw	@
	ldr	r3, [r10]	@ MEM[base: _88, offset: 0B], MEM[base: _88, offset: 0B]
	cmp	r4, r3	@ i, MEM[base: _88, offset: 0B]
	bcc	.L35	@,
.L37:
	add	r6, r6, #1	@ j, j,
	add	r9, r9, #132	@ ivtmp.392, ivtmp.392,
	cmp	r6, #2	@ j,
	bne	.L34	@,
	add	r5, r7, #20480	@ tmp237, pH264Ctx,
	ldr	r3, [r5, #244]	@ pH264Ctx_1(D)->CurrSlice.listXsize, pH264Ctx_1(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_1(D)->CurrSlice.listXsize,
	bne	.L62	@,
.L38:
	ldr	r3, [r5, #248]	@ pH264Ctx_1(D)->CurrSlice.listXsize, pH264Ctx_1(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_1(D)->CurrSlice.listXsize,
	bne	.L63	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L63:
	ldr	r1, .L66+4	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #248]	@ pH264Ctx_1(D)->CurrSlice.listXsize, pH264Ctx_1(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_1(D)->CurrSlice.listXsize,
	addne	r7, r7, #27136	@ ivtmp.347, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r7, r7, #28	@ ivtmp.347, ivtmp.347,
	bne	.L51	@,
	b	.L52	@
.L64:
	bcc	.L49	@,
	cmp	r2, #2	@ _25->structure,
	ldr	r1, .L66+8	@,
	mov	r0, #13	@,
	bne	.L47	@,
	ldr	r3, [r3, #4]	@ _25->frame_store, _25->frame_store
	ldr	r2, [r3, #524]	@,
	bl	dprint_vfmw	@
.L47:
	ldr	r3, [r5, #248]	@ pH264Ctx_1(D)->CurrSlice.listXsize, pH264Ctx_1(D)->CurrSlice.listXsize
	add	r4, r4, #1	@ i, i,
	cmp	r4, r3	@ i, pH264Ctx_1(D)->CurrSlice.listXsize
	bcs	.L52	@,
.L51:
	ldr	r3, [r7, #4]!	@ D.38882, MEM[base: _24, offset: 0B]
	ldrb	r2, [r3]	@ zero_extendqisi2	@ _25->structure, _25->structure
	cmp	r2, #1	@ _25->structure,
	bne	.L64	@,
	ldr	r3, [r3, #4]	@ _25->frame_store, _25->frame_store
	mov	r0, #13	@,
	ldr	r1, .L66+12	@,
	add	r4, r4, #1	@ i, i,
	ldr	r2, [r3, #524]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #248]	@ pH264Ctx_1(D)->CurrSlice.listXsize, pH264Ctx_1(D)->CurrSlice.listXsize
	cmp	r4, r3	@ i, pH264Ctx_1(D)->CurrSlice.listXsize
	bcc	.L51	@,
.L52:
	ldr	r1, .L66+16	@,
	mov	r0, #13	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L49:
	ldr	r3, [r3, #4]	@ _25->frame_store, _25->frame_store
	mov	r0, #13	@,
	ldr	r1, .L66+20	@,
	ldr	r2, [r3, #524]	@,
	bl	dprint_vfmw	@
	b	.L47	@
.L62:
	ldr	r1, .L66+24	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #244]	@ pH264Ctx_1(D)->CurrSlice.listXsize, pH264Ctx_1(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_1(D)->CurrSlice.listXsize,
	movne	r4, #0	@ i,
	bne	.L39	@,
	b	.L44	@
.L65:
	bcc	.L42	@,
	cmp	r2, #2	@ _13->structure,
	ldr	r1, .L66+8	@,
	mov	r0, #13	@,
	bne	.L40	@,
	ldr	r3, [r3, #4]	@ _13->frame_store, _13->frame_store
	ldr	r2, [r3, #524]	@,
	bl	dprint_vfmw	@
.L40:
	ldr	r3, [r5, #244]	@ pH264Ctx_1(D)->CurrSlice.listXsize, pH264Ctx_1(D)->CurrSlice.listXsize
	add	r4, r4, #1	@ i, i,
	cmp	r4, r3	@ i, pH264Ctx_1(D)->CurrSlice.listXsize
	bcs	.L44	@,
.L39:
	ldr	r3, [r8, #4]!	@ D.38882, MEM[base: _2, offset: 0B]
	ldrb	r2, [r3]	@ zero_extendqisi2	@ _13->structure, _13->structure
	cmp	r2, #1	@ _13->structure,
	bne	.L65	@,
	ldr	r3, [r3, #4]	@ _13->frame_store, _13->frame_store
	mov	r0, #13	@,
	ldr	r1, .L66+12	@,
	add	r4, r4, #1	@ i, i,
	ldr	r2, [r3, #524]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #244]	@ pH264Ctx_1(D)->CurrSlice.listXsize, pH264Ctx_1(D)->CurrSlice.listXsize
	cmp	r4, r3	@ i, pH264Ctx_1(D)->CurrSlice.listXsize
	bcc	.L39	@,
.L44:
	ldr	r1, .L66+16	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	b	.L38	@
.L42:
	ldr	r3, [r3, #4]	@ _13->frame_store, _13->frame_store
	mov	r0, #13	@,
	ldr	r1, .L66+20	@,
	ldr	r2, [r3, #524]	@,
	bl	dprint_vfmw	@
	b	.L40	@
.L67:
	.align	2
.L66:
	.word	.LC0
	.word	.LC6
	.word	.LC5
	.word	.LC4
	.word	.LC2
	.word	.LC3
	.word	.LC1
	.fnend
	.size	DumpList.part.5, .-DumpList.part.5
	.align	2
	.type	CombinePacket.part.10, %function
CombinePacket.part.10:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, .L70	@,
	mov	r0, #7	@,
	mov	r5, #0	@ tmp161,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	ldr	r1, .L70+4	@,
	mov	r0, #7	@,
	ldr	lr, [ip, #40]	@ _2->stream[1].bitstream_length, _2->stream[1].bitstream_length
	ldr	r3, [ip, #44]	@ _2->stream[1].stream_phy_addr, _2->stream[1].stream_phy_addr
	ldr	r2, [ip, #16]	@ _2->stream[0].stream_phy_addr, _2->stream[0].stream_phy_addr
	str	lr, [sp, #4]	@ _2->stream[1].bitstream_length,
	ldr	ip, [ip, #12]	@ _2->stream[0].bitstream_length, _2->stream[0].bitstream_length
	str	ip, [sp]	@ _2->stream[0].bitstream_length,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	ldr	r2, [r3, #12]	@ D.38900, _7->stream[0].bitstream_length
	ldr	r0, [r3, #36]	@ _7->stream[1].streamBuffer, _7->stream[1].streamBuffer
	ldr	r1, [r3, #8]	@, _7->stream[0].streamBuffer
	rsb	r0, r2, r0	@,, _7->stream[1].streamBuffer
	bl	memcpy	@
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	mov	ip, #1	@ tmp171,
	ldr	r1, .L70+8	@,
	mov	r0, #7	@,
	ldr	r2, [r3, #60]	@ _13->stream[1].StreamID, _13->stream[1].StreamID
	ldr	r6, [r3, #32]	@ StreamId, _13->stream[0].StreamID
	str	r2, [r3, #32]	@ _13->stream[1].StreamID, _13->stream[0].StreamID
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	str	r5, [r3, #24]	@ tmp161, _16->stream[0].bitsoffset
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	ldr	lr, [r3, #12]	@ _17->stream[0].bitstream_length, _17->stream[0].bitstream_length
	ldr	r2, [r3, #36]	@ _17->stream[1].streamBuffer, _17->stream[1].streamBuffer
	rsb	r2, lr, r2	@ D.38901, _17->stream[0].bitstream_length, _17->stream[1].streamBuffer
	str	r2, [r3, #8]	@ D.38901, _17->stream[0].streamBuffer
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	ldr	lr, [r3, #12]	@ _22->stream[0].bitstream_length, _22->stream[0].bitstream_length
	ldr	r2, [r3, #44]	@ _22->stream[1].stream_phy_addr, _22->stream[1].stream_phy_addr
	rsb	r2, lr, r2	@ D.38900, _22->stream[0].bitstream_length, _22->stream[1].stream_phy_addr
	str	r2, [r3, #16]	@ D.38900, _22->stream[0].stream_phy_addr
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	ldr	lr, [r3, #40]	@ _26->stream[1].bitstream_length, _26->stream[1].bitstream_length
	ldr	r2, [r3, #12]	@ _26->stream[0].bitstream_length, _26->stream[0].bitstream_length
	add	r2, r2, lr	@ D.38900, _26->stream[0].bitstream_length, _26->stream[1].bitstream_length
	str	r2, [r3, #12]	@ D.38900, _26->stream[0].bitstream_length
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	str	ip, [r3, #68]	@ tmp171, _30->nal_segment
	ldr	r2, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	ldr	r3, [r2, #12]	@, _31->stream[0].bitstream_length
	ldr	r2, [r2, #16]	@, _31->stream[0].stream_phy_addr
	bl	dprint_vfmw	@
	add	r3, r4, #49152	@ tmp176, pH264Ctx,
	mov	r1, r6	@, StreamId
	ldr	r0, [r3, #3688]	@, pH264Ctx_1(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	str	r5, [r3, #36]	@ tmp161, _35->stream[1].streamBuffer
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	str	r5, [r3, #52]	@ tmp161, _36->stream[1].bitsoffset
	ldr	r3, [r4, #368]	@ D.38899, pH264Ctx_1(D)->pCurrNal
	str	r5, [r3, #40]	@ tmp161, _37->stream[1].bitstream_length
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L71:
	.align	2
.L70:
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.fnend
	.size	CombinePacket.part.10, .-CombinePacket.part.10
	.align	2
	.global	ue_v
	.type	ue_v, %function
ue_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #13504	@ D.38913, pH264Ctx,
	add	r6, r6, #24	@ D.38913, D.38913,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ SE_TRACEstring, SE_TRACEstring
	mov	r1, #32	@,
	mov	r0, r6	@, D.38913
	bl	BsShow	@
	mov	r5, r0	@ D.38914,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r4, r0	@ zeros,
	bls	.L77	@,
	cmp	r0, #31	@ zeros,
	bls	.L78	@,
	add	r3, r7, #49152	@ tmp138, pH264Ctx,
	mvn	r5, #0	@ INFO,
	mov	r9, #32	@ NumBits,
	mov	r2, #1	@ tmp139,
	str	r2, [r3, #3628]	@ tmp139, pH264Ctx_4(D)->SeErrFlg
.L74:
	ldr	r6, [r7, #368]	@ D.38916, pH264Ctx_4(D)->pCurrNal
	mov	r2, r8	@, SE_TRACEstring
	mov	r3, r5	@, INFO
	ldr	r1, .L79	@,
	mov	r0, #21	@,
	ldr	lr, [r6, #64]	@ _32->nal_bitoffset, _32->nal_bitoffset
	add	r4, lr, r9	@ D.38915, _32->nal_bitoffset, NumBits
	str	r4, [r6, #64]	@ D.38915, _32->nal_bitoffset
	bl	dprint_vfmw	@
	mov	r0, r5	@, INFO
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L77:
	mov	r4, r0, asl #1	@ D.38915, zeros,
	mov	r0, r6	@, D.38913
	add	r9, r4, #1	@ NumBits, D.38915,
	rsb	r4, r4, #31	@ D.38915, D.38915,
	mov	r4, r5, lsr r4	@ D.38915, D.38914,
	mov	r1, r9	@, NumBits
	sub	r5, r4, #1	@ INFO, D.38915,
	bl	BsSkip	@
	b	.L74	@
.L78:
	add	r5, r0, #1	@ D.38914, zeros,
	mov	r1, r0	@, zeros
	mov	r0, r6	@, D.38913
	bl	BsSkip	@
	mov	r1, r5	@, D.38914
	mov	r0, r6	@, D.38913
	bl	BsShow	@
	mov	r1, r5	@, D.38914
	sub	r5, r0, #1	@ INFO,,
	mov	r0, r6	@, D.38913
	bl	BsSkip	@
	mov	ip, r4, asl #1	@ D.38915, zeros,
	add	r9, ip, #1	@ NumBits, D.38915,
	b	.L74	@
.L80:
	.align	2
.L79:
	.word	.LC10
	.fnend
	.size	ue_v, .-ue_v
	.align	2
	.global	se_v
	.type	se_v, %function
se_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #13504	@ D.38920, pH264Ctx,
	add	r6, r6, #24	@ D.38920, D.38920,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	mov	r7, r1	@ SE_TRACEstring, SE_TRACEstring
	mov	r1, #32	@,
	mov	r0, r6	@, D.38920
	bl	BsShow	@
	mov	r4, r0	@ D.38921,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r5, r0	@ zeros,
	bhi	.L82	@,
	mov	r5, r0, asl #1	@ D.38922, zeros,
	mov	r0, r6	@, D.38920
	rsb	r3, r5, #31	@ D.38922, D.38922,
	add	r5, r5, #1	@ NumBits, D.38922,
	mov	r3, r4, lsr r3	@ D.38922, D.38921,
	and	r2, r3, #1	@ D.38923, D.38922,
	mov	r1, r5	@, NumBits
	rsb	r4, r2, #0	@ D.38925, D.38923
	eor	r4, r4, r3, lsr #1	@ D.38925, D.38925, D.38922,
	add	r4, r4, r2	@ INFO, D.38925, D.38923
	bl	BsSkip	@
.L83:
	ldr	lr, [r8, #368]	@ D.38924, pH264Ctx_6(D)->pCurrNal
	mov	r2, r7	@, SE_TRACEstring
	mov	r3, r4	@, INFO
	ldr	r1, .L87	@,
	mov	r0, #21	@,
	ldr	ip, [lr, #64]	@ _37->nal_bitoffset, _37->nal_bitoffset
	add	r5, ip, r5	@ D.38922, _37->nal_bitoffset, NumBits
	str	r5, [lr, #64]	@ D.38922, _37->nal_bitoffset
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L82:
	cmp	r0, #31	@ zeros,
	bls	.L86	@,
	add	r3, r8, #49152	@ tmp153, pH264Ctx,
	mov	r2, #1	@ tmp154,
	mvn	r4, #-2147483648	@ INFO,
	mov	r5, #32	@ NumBits,
	str	r2, [r3, #3628]	@ tmp154, pH264Ctx_6(D)->SeErrFlg
	b	.L83	@
.L86:
	mov	r1, r0	@, zeros
	mov	r0, r6	@, D.38920
	bl	BsSkip	@
	mov	r1, r5	@, zeros
	mov	r0, r6	@, D.38920
	mov	r5, r5, asl #1	@ D.38922, zeros,
	bl	BsGet	@
	mov	r1, #1	@,
	add	r5, r5, #1	@ NumBits, D.38922,
	mov	r9, r0	@ INFO,
	mov	r0, r6	@, D.38920
	bl	BsGet	@
	and	r0, r0, #1	@ D.38923,,
	rsb	r4, r0, #0	@ D.38925, D.38923
	eor	r9, r9, r4	@ D.38925, INFO, D.38925
	add	r4, r9, r0	@ INFO, D.38925, D.38923
	b	.L83	@
.L88:
	.align	2
.L87:
	.word	.LC10
	.fnend
	.size	se_v, .-se_v
	.align	2
	.global	u_v
	.type	u_v, %function
u_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r6, r1	@ LenInBits, LenInBits
	add	r0, r0, #24	@,,
	mov	r7, r2	@ SE_TRACEstring, SE_TRACEstring
	bl	BsGet	@
	ldr	lr, [r5, #368]	@ D.38930, pH264Ctx_1(D)->pCurrNal
	mov	r2, r7	@, SE_TRACEstring
	ldr	r1, .L91	@,
	ldr	ip, [lr, #64]	@ _8->nal_bitoffset, _8->nal_bitoffset
	add	ip, ip, r6	@ D.38931, _8->nal_bitoffset, LenInBits
	str	ip, [lr, #64]	@ D.38931, _8->nal_bitoffset
	mov	r4, r0	@ INFO,
	mov	r0, #21	@,
	mov	r3, r4	@, INFO
	bl	dprint_vfmw	@
	mov	r0, r4	@, INFO
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L92:
	.align	2
.L91:
	.word	.LC10
	.fnend
	.size	u_v, .-u_v
	.align	2
	.global	u_1
	.type	u_1, %function
u_1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r6, r1	@ SE_TRACEstring, SE_TRACEstring
	add	r0, r0, #24	@,,
	mov	r1, #1	@,
	bl	BsGet	@
	ldr	lr, [r5, #368]	@ D.38936, pH264Ctx_1(D)->pCurrNal
	mov	r2, r6	@, SE_TRACEstring
	ldr	r1, .L95	@,
	ldr	ip, [lr, #64]	@ _7->nal_bitoffset, _7->nal_bitoffset
	add	ip, ip, #1	@ D.38937, _7->nal_bitoffset,
	str	ip, [lr, #64]	@ D.38937, _7->nal_bitoffset
	mov	r4, r0	@ D.38935,
	mov	r3, r0	@, D.38935
	mov	r0, #21	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.38935
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L96:
	.align	2
.L95:
	.word	.LC10
	.fnend
	.size	u_1, .-u_1
	.align	2
	.global	GetMinPOC
	.type	GetMinPOC, %function
GetMinPOC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	add	r5, r0, #24576	@ tmp138, pH264Ctx,
	mov	ip, #0	@ tmp124,
	mvn	r3, #-2147483648	@ tmp125,
	str	ip, [r2]	@ tmp124, *pos_6(D)
	str	r3, [r1]	@ tmp125, *poc_8(D)
	ldr	r3, [r5, #2052]	@ D.38953, pH264Ctx_10(D)->DPB.used_size
	ldr	ip, [r5, #2048]	@ D.38953, pH264Ctx_10(D)->DPB.size
	cmp	r3, ip	@ D.38953, D.38953
	strhi	ip, [r5, #2052]	@ D.38953, pH264Ctx_10(D)->DPB.used_size
	movhi	r3, ip	@ D.38953, D.38953
	cmp	r3, #0	@ D.38953,
	ldmeqfd	sp!, {r4, r5, pc}	@
	add	r0, r0, #26368	@ ivtmp.410, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #60	@ ivtmp.410, ivtmp.410,
.L101:
	ldr	ip, [r0, #4]!	@ D.38955, MEM[base: _1, offset: 0B]
	ldr	r4, [r1]	@ *poc_8(D), *poc_8(D)
	ldr	lr, [ip, #524]	@ D.38954, _16->poc
	cmp	r4, lr	@ *poc_8(D), D.38954
	ble	.L100	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ _16->is_in_dpb, _16->is_in_dpb
	cmp	ip, #0	@ _16->is_in_dpb,
	strne	lr, [r1]	@ D.38954, *poc_8(D)
	strne	r3, [r2]	@ i, *pos_6(D)
.L100:
	ldr	ip, [r5, #2052]	@ pH264Ctx_10(D)->DPB.used_size, pH264Ctx_10(D)->DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	ip, r3	@ pH264Ctx_10(D)->DPB.used_size, i
	bhi	.L101	@,
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	GetMinPOC, .-GetMinPOC
	.align	2
	.global	GetMaxPOC
	.type	GetMaxPOC, %function
GetMaxPOC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	add	r5, r0, #24576	@ tmp145, pH264Ctx,
	mov	r3, #0	@ tmp126,
	str	r3, [r2]	@ tmp126, *pos_6(D)
	ldr	r3, [r5, #2048]	@ D.38975, pH264Ctx_8(D)->DPB.size
	ldr	ip, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	ip, r3	@ pH264Ctx_8(D)->DPB.used_size, D.38975
	strhi	r3, [r5, #2052]	@ D.38975, pH264Ctx_8(D)->DPB.used_size
	ldr	r3, [r5, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	ldr	r4, [r3, #524]	@ D.38979, _12->poc
	str	r4, [r1]	@ D.38979, *poc_14(D)
	ldr	r3, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	ldmeqfd	sp!, {r4, r5, pc}	@
	add	r0, r0, #26368	@ ivtmp.426, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #60	@ ivtmp.426, ivtmp.426,
.L113:
	ldr	ip, [r0, #4]!	@ D.38976, MEM[base: _31, offset: 0B]
	ldr	lr, [ip, #524]	@ D.38977, _18->poc
	cmp	lr, r4	@ D.38977, D.38979
	ble	.L111	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ _18->is_in_dpb, _18->is_in_dpb
	cmp	ip, #0	@ _18->is_in_dpb,
	strne	lr, [r1]	@ D.38977, *poc_14(D)
	strne	r3, [r2]	@ i, *pos_6(D)
.L111:
	ldr	ip, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	ip, r3	@ pH264Ctx_8(D)->DPB.used_size, i
	ldmlsfd	sp!, {r4, r5, pc}	@
	ldr	r4, [r1]	@ D.38979, *poc_14(D)
	b	.L113	@
	.fnend
	.size	GetMaxPOC, .-GetMaxPOC
	.align	2
	.global	FrameStoreRefFlg
	.type	FrameStoreRefFlg, %function
FrameStoreRefFlg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ pFS_2(D)->is_reference, pFS_2(D)->is_reference
	adds	r0, r0, #0	@, pFS_2(D)->is_reference,
	movne	r0, #1	@,
	bx	lr	@
	.fnend
	.size	FrameStoreRefFlg, .-FrameStoreRefFlg
	.align	2
	.global	ShortTermRefFlg
	.type	ShortTermRefFlg, %function
ShortTermRefFlg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.38990, pFS_3(D)->is_reference
	cmp	r3, #3	@ D.38990,
	beq	.L134	@,
	tst	r3, #1	@ D.38990,
	bne	.L135	@,
.L123:
	and	r3, r3, #2	@ tmp134, D.38990,
	ands	r3, r3, #255	@ tmp136, tmp134,
	beq	.L127	@,
.L124:
	ldr	r0, [r0, #472]	@ *pFS_3(D), *pFS_3(D)
	bic	r0, r0, #-16777216	@ D.38991, *pFS_3(D),
	bic	r0, r0, #255	@ D.38991, D.38991,
	sub	r0, r0, #65536	@ D.38989, D.38991,
	clz	r0, r0	@ D.38989, D.38989
	mov	r0, r0, lsr #5	@ D.38989, D.38989,
	bx	lr	@
.L127:
	mov	r0, r3	@ D.38989, tmp136
	bx	lr	@
.L135:
	ldr	r2, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r2, r2, #-16777216	@ D.38991, *pFS_3(D),
	bic	r2, r2, #255	@ D.38991, D.38991,
	cmp	r2, #65536	@ D.38991,
	bne	.L123	@,
.L128:
	mov	r0, #1	@ D.38989,
	bx	lr	@
.L134:
	ldr	r3, [r0, #400]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.38991, *pFS_3(D),
	bic	r3, r3, #255	@ D.38991, D.38991,
	cmp	r3, #65536	@ D.38991,
	beq	.L128	@,
	ldr	r3, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.38991, *pFS_3(D),
	bic	r3, r3, #255	@ D.38991, D.38991,
	cmp	r3, #65536	@ D.38991,
	bne	.L124	@,
	b	.L128	@
	.fnend
	.size	ShortTermRefFlg, .-ShortTermRefFlg
	.align	2
	.global	LongTermRefFlg
	.type	LongTermRefFlg, %function
LongTermRefFlg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.38996, pFS_3(D)->is_reference
	cmp	r3, #3	@ D.38996,
	beq	.L151	@,
	tst	r3, #1	@ D.38996,
	bne	.L152	@,
.L140:
	and	r3, r3, #2	@ tmp134, D.38996,
	ands	r3, r3, #255	@ tmp136, tmp134,
	beq	.L144	@,
.L141:
	ldr	r0, [r0, #472]	@ *pFS_3(D), *pFS_3(D)
	bic	r0, r0, #-16777216	@ D.38997, *pFS_3(D),
	bic	r0, r0, #255	@ D.38997, D.38997,
	sub	r0, r0, #256	@ D.38995, D.38997,
	clz	r0, r0	@ D.38995, D.38995
	mov	r0, r0, lsr #5	@ D.38995, D.38995,
	bx	lr	@
.L144:
	mov	r0, r3	@ D.38995, tmp136
	bx	lr	@
.L152:
	ldr	r2, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r2, r2, #-16777216	@ D.38997, *pFS_3(D),
	bic	r2, r2, #255	@ D.38997, D.38997,
	cmp	r2, #256	@ D.38997,
	bne	.L140	@,
.L145:
	mov	r0, #1	@ D.38995,
	bx	lr	@
.L151:
	ldr	r3, [r0, #400]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.38997, *pFS_3(D),
	bic	r3, r3, #255	@ D.38997, D.38997,
	cmp	r3, #256	@ D.38997,
	beq	.L145	@,
	ldr	r3, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.38997, *pFS_3(D),
	bic	r3, r3, #255	@ D.38997, D.38997,
	cmp	r3, #256	@ D.38997,
	bne	.L141	@,
	b	.L145	@
	.fnend
	.size	LongTermRefFlg, .-LongTermRefFlg
	.align	2
	.global	UpdateLTReflist
	.type	UpdateLTReflist, %function
UpdateLTReflist:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r10, r0, #24576	@ tmp139, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r9, [r10, #2052]	@ D.39027, pH264Ctx_9(D)->DPB.used_size
	cmp	r9, #0	@ D.39027,
	beq	.L160	@,
	add	r8, r0, #26368	@ ivtmp.459, pH264Ctx,
	mov	r4, #0	@ j,
	add	r8, r8, #60	@ ivtmp.459, ivtmp.459,
	mov	r5, r4	@ i, j
.L156:
	ldr	r7, [r8, #4]!	@ D.39026, MEM[base: _36, offset: 0B]
	add	r5, r5, #1	@ i, i,
	mov	r0, r7	@, D.39026
	bl	LongTermRefFlg	@
	add	r3, r4, #6592	@ tmp130, j,
	add	r3, r3, #48	@ tmp130, tmp130,
	cmp	r0, #0	@,
	strne	r7, [r6, r3, asl #2]	@ D.39026, pH264Ctx_9(D)->DPB.fs_ltref
	addne	r4, r4, #1	@ j, j,
	cmp	r5, r9	@ i, D.39027
	bne	.L156	@,
.L154:
	ldr	r3, [r10, #2048]	@ D.39027, pH264Ctx_9(D)->DPB.size
	str	r4, [r10, #2060]	@ j, pH264Ctx_9(D)->DPB.ltref_frames_in_buffer
	cmp	r3, r4	@ D.39027, j
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r0, r4, #6592	@ D.39028, j,
	mov	r2, #0	@ tmp140,
	add	r0, r0, #47	@ D.39028, D.39028,
	add	r0, r6, r0, lsl #2	@ ivtmp.448, pH264Ctx, D.39028,
.L158:
	add	r4, r4, #1	@ j, j,
	str	r2, [r0, #4]!	@ tmp140, MEM[base: _1, offset: 0B]
	cmp	r4, r3	@ j, D.39027
	bne	.L158	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L160:
	mov	r4, r9	@ j, D.39027
	b	.L154	@
	.fnend
	.size	UpdateLTReflist, .-UpdateLTReflist
	.align	2
	.global	UpdateReflist
	.type	UpdateReflist, %function
UpdateReflist:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r10, r0, #24576	@ tmp139, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r9, [r10, #2052]	@ D.39058, pH264Ctx_9(D)->DPB.used_size
	cmp	r9, #0	@ D.39058,
	beq	.L174	@,
	add	r8, r0, #26368	@ ivtmp.484, pH264Ctx,
	mov	r4, #0	@ j,
	add	r8, r8, #60	@ ivtmp.484, ivtmp.484,
	mov	r5, r4	@ i, j
.L170:
	ldr	r7, [r8, #4]!	@ D.39057, MEM[base: _36, offset: 0B]
	add	r5, r5, #1	@ i, i,
	mov	r0, r7	@, D.39057
	bl	ShortTermRefFlg	@
	add	r3, r4, #6592	@ tmp130, j,
	add	r3, r3, #32	@ tmp130, tmp130,
	cmp	r0, #0	@,
	strne	r7, [r6, r3, asl #2]	@ D.39057, pH264Ctx_9(D)->DPB.fs_ref
	addne	r4, r4, #1	@ j, j,
	cmp	r5, r9	@ i, D.39058
	bne	.L170	@,
.L168:
	ldr	r3, [r10, #2048]	@ D.39058, pH264Ctx_9(D)->DPB.size
	str	r4, [r10, #2056]	@ j, pH264Ctx_9(D)->DPB.ref_frames_in_buffer
	cmp	r3, r4	@ D.39058, j
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r0, r4, #6592	@ D.39059, j,
	mov	r2, #0	@ tmp140,
	add	r0, r0, #31	@ D.39059, D.39059,
	add	r0, r6, r0, lsl #2	@ ivtmp.473, pH264Ctx, D.39059,
.L172:
	add	r4, r4, #1	@ j, j,
	str	r2, [r0, #4]!	@ tmp140, MEM[base: _1, offset: 0B]
	cmp	r4, r3	@ j, D.39058
	bne	.L172	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L174:
	mov	r4, r9	@ j, D.39058
	b	.L168	@
	.fnend
	.size	UpdateReflist, .-UpdateReflist
	.align	2
	.global	GetPicNumX
	.type	GetPicNumX, %function
GetPicNumX:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ pCurrPic_3(D)->structure, pCurrPic_3(D)->structure
	cmp	r3, #0	@ pCurrPic_3(D)->structure,
	ldr	r3, [r0, #416]	@ CurrPicNum, pCurrPic_3(D)->frame_num
	mvn	r0, r1	@ D.39064, difference_of_pic_nums_minus1
	movne	r3, r3, asl #1	@ D.39064, pCurrPic_3(D)->frame_num,
	addne	r3, r3, #1	@ CurrPicNum, D.39064,
	add	r0, r0, r3	@, D.39064, CurrPicNum
	bx	lr	@
	.fnend
	.size	GetPicNumX, .-GetPicNumX
	.align	2
	.global	UnMarkFrameStoreRef
	.type	UnMarkFrameStoreRef, %function
UnMarkFrameStoreRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ D.39067, pFrameStore_5(D)->is_used
	tst	r3, #1	@ D.39067,
	beq	.L185	@,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ pFrameStore_5(D)->is_reference, pFrameStore_5(D)->is_reference
	mov	ip, #0	@ tmp128,
	strb	ip, [r1, #437]	@ tmp128, pFrameStore_5(D)->top_field.is_long_term
	and	r2, r2, #2	@ tmp126, pFrameStore_5(D)->is_reference,
	strb	ip, [r1, #438]	@ tmp128, pFrameStore_5(D)->top_field.is_short_term
	strb	r2, [r1, #2]	@ tmp126, pFrameStore_5(D)->is_reference
.L185:
	tst	r3, #2	@ D.39067,
	beq	.L186	@,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ pFrameStore_5(D)->is_reference, pFrameStore_5(D)->is_reference
	mov	ip, #0	@ tmp139,
	strb	ip, [r1, #473]	@ tmp139, pFrameStore_5(D)->bottom_field.is_long_term
	and	r2, r2, #1	@ tmp137, pFrameStore_5(D)->is_reference,
	strb	ip, [r1, #474]	@ tmp139, pFrameStore_5(D)->bottom_field.is_short_term
	strb	r2, [r1, #2]	@ tmp137, pFrameStore_5(D)->is_reference
.L186:
	cmp	r3, #3	@ D.39067,
	add	r0, r0, #49152	@ tmp151, pH264Ctx,
	moveq	r3, #0	@ tmp143,
	streqb	r3, [r1, #402]	@ tmp143, pFrameStore_5(D)->frame.is_short_term
	streqb	r3, [r1, #401]	@ tmp143, pFrameStore_5(D)->frame.is_long_term
	mov	r3, #0	@ tmp147,
	mov	r2, r3	@, tmp147
	strb	r3, [r1, #2]	@ tmp147, pFrameStore_5(D)->is_reference
	ldr	r1, [r1, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r0, #3688]	@, pH264Ctx_22(D)->ChanID
	b	FSP_SetRef	@
	.fnend
	.size	UnMarkFrameStoreRef, .-UnMarkFrameStoreRef
	.align	2
	.type	SlidingWinMark.part.2, %function
SlidingWinMark.part.2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #24576	@ tmp120, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r7, [r3, #2052]	@ D.39084, pH264Ctx_1(D)->DPB.used_size
	cmp	r7, #0	@ D.39084,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r6, r0, #26368	@ ivtmp.501, pH264Ctx,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	add	r6, r6, #60	@ ivtmp.501, ivtmp.501,
	mov	r4, #0	@ i,
.L197:
	ldr	r5, [r6, #4]!	@ D.39082, MEM[base: _17, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ _3->is_reference, _3->is_reference
	mov	r0, r5	@, D.39082
	cmp	r3, #0	@ _3->is_reference,
	beq	.L196	@,
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L209	@,
.L196:
	cmp	r4, r7	@ i, D.39084
	bne	.L197	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L209:
	mov	r0, r8	@, pH264Ctx
	mov	r1, r5	@, D.39082
	bl	UnMarkFrameStoreRef	@
	mov	r0, r8	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	UpdateReflist	@
	.fnend
	.size	SlidingWinMark.part.2, .-SlidingWinMark.part.2
	.align	2
	.global	UnMarkLTFrmByFrmIdx
	.type	UnMarkLTFrmByFrmIdx, %function
UnMarkLTFrmByFrmIdx:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #24576	@ tmp121, pH264Ctx,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r3, #2060]	@ D.39101, pH264Ctx_4(D)->DPB.ltref_frames_in_buffer
	cmp	r4, #0	@ D.39101,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	ip, [r3, #1984]	@ D.39100, pH264Ctx_4(D)->DPB.fs_ltref
	ldr	r3, [ip, #520]	@ _14->long_term_frame_idx, _14->long_term_frame_idx
	cmp	r3, r1	@ _14->long_term_frame_idx, long_term_frame_idx
	addne	r2, r0, #26368	@ ivtmp.514, pH264Ctx,
	movne	r3, #0	@ i,
	addne	r2, r2, #192	@ ivtmp.514, ivtmp.514,
	bne	.L214	@,
	b	.L212	@
.L215:
	ldr	ip, [r2, #4]!	@ D.39100, MEM[base: _19, offset: 0B]
	ldr	lr, [ip, #520]	@ _6->long_term_frame_idx, _6->long_term_frame_idx
	cmp	lr, r1	@ _6->long_term_frame_idx, long_term_frame_idx
	beq	.L212	@,
.L214:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.39101
	bne	.L215	@,
	ldmfd	sp!, {r4, pc}	@
.L212:
	mov	r1, ip	@, D.39100
	ldmfd	sp!, {r4, lr}	@
	b	UnMarkFrameStoreRef	@
	.fnend
	.size	UnMarkLTFrmByFrmIdx, .-UnMarkLTFrmByFrmIdx
	.align	2
	.global	UnMarkLTFldByFrmIdx
	.type	UnMarkLTFldByFrmIdx, %function
UnMarkLTFldByFrmIdx:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r0, #24576	@ tmp130, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [ip, #2060]	@ D.39118, pH264Ctx_4(D)->DPB.ltref_frames_in_buffer
	cmp	r6, #0	@ D.39118,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	add	r4, r0, #26368	@ ivtmp.527, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #188	@ ivtmp.527, ivtmp.527,
	b	.L226	@
.L224:
	cmp	ip, r6	@ i, D.39118
	beq	.L241	@,
.L226:
	ldr	lr, [r4, #4]!	@ D.39117, MEM[base: _27, offset: 0B]
	add	ip, ip, #1	@ i, i,
	ldr	r5, [lr, #520]	@ _6->long_term_frame_idx, _6->long_term_frame_idx
	cmp	r5, r3	@ _6->long_term_frame_idx, long_term_frame_idx
	bne	.L224	@,
	cmp	r2, #1	@ structure,
	ldreqb	r5, [lr, #473]	@ zero_extendqisi2	@ _6->bottom_field.is_long_term, _6->bottom_field.is_long_term
	beq	.L240	@,
	cmp	r2, #2	@ structure,
	bne	.L224	@,
	ldrb	r5, [lr, #437]	@ zero_extendqisi2	@ _6->top_field.is_long_term, _6->top_field.is_long_term
.L240:
	clz	r5, r5	@ tmp145, _6->top_field.is_long_term
	mov	r5, r5, lsr #5	@ tmp145, tmp145,
	cmp	lr, r1	@ D.39117, pFS
	orrne	r5, r5, #1	@,, tmp148, tmp145
	cmp	r5, #0	@ tmp148,
	beq	.L224	@,
	mov	r1, lr	@, D.39117
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L241:
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	UnMarkLTFldByFrmIdx, .-UnMarkLTFldByFrmIdx
	.align	2
	.global	UnMarkSTRef
	.type	UnMarkSTRef, %function
UnMarkSTRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ pCurrPic_9(D)->structure, pCurrPic_9(D)->structure
	cmp	r3, #0	@ pCurrPic_9(D)->structure,
	bne	.L243	@,
	add	ip, r0, #24576	@ tmp179, pH264Ctx,
	ldr	r1, [r1, #416]	@ pCurrPic_9(D)->frame_num, pCurrPic_9(D)->frame_num
	ldr	r4, [ip, #2056]	@ D.39149, pH264Ctx_10(D)->DPB.ref_frames_in_buffer
	sub	r1, r1, #1	@ D.39149, pCurrPic_9(D)->frame_num,
	rsb	r2, r2, r1	@ picNumX, difference_of_pic_nums_minus1, D.39149
	cmp	r4, #0	@ D.39149,
	beq	.L272	@,
	add	ip, r0, #26368	@ ivtmp.540, pH264Ctx,
	add	ip, ip, #124	@ ivtmp.540, ivtmp.540,
	b	.L249	@
.L248:
	cmp	r3, r4	@ i, D.39149
	beq	.L273	@,
.L249:
	ldr	r1, [ip, #4]!	@ D.39150, MEM[base: _29, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	lr, [r1, #412]	@ _12->frame.pic_num, _12->frame.pic_num
	cmp	lr, r2	@ _12->frame.pic_num, picNumX
	bne	.L248	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ _12->is_reference, _12->is_reference
	cmp	lr, #3	@ _12->is_reference,
	bne	.L248	@,
	ldr	lr, [r1, #400]	@ *_12, *_12
	bic	lr, lr, #-16777216	@ D.39149, *_12,
	bic	lr, lr, #255	@ D.39149, D.39149,
	cmp	lr, #65536	@ D.39149,
	bne	.L248	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L243:
	add	r3, r0, #24576	@ tmp183, pH264Ctx,
	ldr	r1, [r1, #416]	@ pCurrPic_9(D)->frame_num, pCurrPic_9(D)->frame_num
	ldr	r5, [r3, #2056]	@ D.39149, pH264Ctx_10(D)->DPB.ref_frames_in_buffer
	rsb	r2, r2, r1, lsl #1	@ picNumX, difference_of_pic_nums_minus1, pCurrPic_9(D)->frame_num,
	cmp	r5, #0	@ D.39149,
	beq	.L274	@,
	add	r4, r0, #26368	@ ivtmp.551, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #124	@ ivtmp.551, ivtmp.551,
	b	.L254	@
.L250:
	tst	r3, #2	@ D.39152,
	beq	.L252	@,
	ldr	r3, [r1, #472]	@ *_21, *_21
	bic	r3, r3, #-16777216	@ D.39149, *_21,
	bic	r3, r3, #255	@ D.39149, D.39149,
	cmp	r3, #65536	@ D.39149,
	beq	.L275	@,
.L252:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r5	@ i, D.39149
	beq	.L276	@,
.L254:
	ldr	r1, [r4, #4]!	@ D.39150, MEM[base: _1, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ D.39152, _21->is_reference
	ands	r6, r3, #1	@ D.39152, D.39152,
	beq	.L250	@,
	ldr	lr, [r1, #436]	@ *_21, *_21
	bic	lr, lr, #-16777216	@ D.39149, *_21,
	bic	lr, lr, #255	@ D.39149, D.39149,
	cmp	lr, #65536	@ D.39149,
	bne	.L250	@,
	ldr	lr, [r1, #448]	@ _21->top_field.pic_num, _21->top_field.pic_num
	cmp	lr, r2	@ _21->top_field.pic_num, picNumX
	bne	.L250	@,
	add	r2, r0, ip, lsl #2	@ D.39155, pH264Ctx, i,
	and	r3, r3, #2	@ tmp196, D.39152,
	add	r2, r2, #24576	@ tmp200, D.39155,
	strb	r3, [r1, #2]	@ tmp196, _86->is_reference
	mov	r1, #0	@ tmp201,
	ldr	r3, [r2, #1920]	@ D.39150, MEM[(struct H264_CTX_S *)_107 + 26496B]
	strb	r1, [r3, #438]	@ tmp201, _58->top_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.39150, MEM[(struct H264_CTX_S *)_107 + 26496B]
	ldrb	ip, [r3, #400]	@ zero_extendqisi2	@ D.39152, _60->frame.structure
	cmp	ip, #3	@ D.39152,
	cmpne	ip, r1	@, D.39152,
	streqb	r1, [r3, #402]	@ tmp201, _60->frame.is_short_term
	ldreq	r3, [r2, #1920]	@ D.39150, MEM[(struct H264_CTX_S *)_107 + 26496B]
	streqb	r1, [r3, #401]	@ tmp201, _66->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.39150, MEM[(struct H264_CTX_S *)_107 + 26496B]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ _96->is_reference, _96->is_reference
	cmp	r1, #0	@ _96->is_reference,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	ip, [r3, #548]	@ D.39149, _96->pmv_address_idc
	add	lr, r0, #49152	@ tmp226, pH264Ctx,
	mov	r2, r1	@, _96->is_reference
	add	ip, ip, #12800	@ tmp222, D.39149,
	add	ip, ip, #12	@ tmp222, tmp222,
	str	r1, [r0, ip, asl #2]	@ _96->is_reference, pH264Ctx_10(D)->PmvStoreUsedFlag
	ldr	r0, [lr, #3688]	@, pH264Ctx_10(D)->ChanID
	ldr	r1, [r3, #508]	@, _96->logic_fs_id
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetRef	@
.L275:
	ldr	r3, [r1, #484]	@ _21->bottom_field.pic_num, _21->bottom_field.pic_num
	cmp	r3, r2	@ _21->bottom_field.pic_num, picNumX
	bne	.L252	@,
	add	r3, r0, ip, lsl #2	@ D.39155, pH264Ctx, i,
	strb	r6, [r1, #2]	@ D.39152, _84->is_reference
	add	r3, r3, #24576	@ tmp238, D.39155,
	mov	r2, #0	@ tmp239,
	ldr	r1, [r3, #1920]	@ D.39150, MEM[(struct H264_CTX_S *)_99 + 26496B]
	strb	r2, [r1, #474]	@ tmp239, _31->bottom_field.is_short_term
	ldr	r1, [r3, #1920]	@ D.39150, MEM[(struct H264_CTX_S *)_99 + 26496B]
	ldrb	ip, [r1, #400]	@ zero_extendqisi2	@ D.39152, _33->frame.structure
	cmp	ip, #3	@ D.39152,
	cmpne	ip, r2	@, D.39152,
	streqb	r2, [r1, #402]	@ tmp239, _33->frame.is_short_term
	ldreq	r1, [r3, #1920]	@ D.39150, MEM[(struct H264_CTX_S *)_99 + 26496B]
	streqb	r2, [r1, #401]	@ tmp239, _39->frame.is_long_term
	ldreq	r1, [r3, #1920]	@ D.39150, MEM[(struct H264_CTX_S *)_99 + 26496B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _43->is_reference, _43->is_reference
	cmp	r3, #0	@ _43->is_reference,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	ip, [r1, #548]	@ D.39149, _43->pmv_address_idc
	add	lr, r0, #49152	@ tmp264, pH264Ctx,
	mov	r2, r3	@, _43->is_reference
	add	ip, ip, #12800	@ tmp260, D.39149,
	add	ip, ip, #12	@ tmp260, tmp260,
	str	r3, [r0, ip, asl #2]	@ _43->is_reference, pH264Ctx_10(D)->PmvStoreUsedFlag
	ldr	r0, [lr, #3688]	@, pH264Ctx_10(D)->ChanID
	ldr	r1, [r1, #508]	@, _43->logic_fs_id
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetRef	@
.L276:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L273:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L272:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L274:
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	UnMarkSTRef, .-UnMarkSTRef
	.align	2
	.global	UnMarkLTRef
	.type	UnMarkLTRef, %function
UnMarkLTRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ pCurrPic_3(D)->structure, pCurrPic_3(D)->structure
	cmp	r3, #0	@ pCurrPic_3(D)->structure,
	beq	.L278	@,
	add	r3, r0, #24576	@ tmp164, pH264Ctx,
	ldr	r5, [r3, #2060]	@ D.39189, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.39189,
	beq	.L307	@,
	add	r4, r0, #26368	@ ivtmp.575, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #188	@ ivtmp.575, ivtmp.575,
	b	.L287	@
.L283:
	tst	r3, #2	@ D.39185,
	beq	.L285	@,
	ldr	r3, [r1, #472]	@ *_21, *_21
	bic	r3, r3, #-16777216	@ D.39189, *_21,
	bic	r3, r3, #255	@ D.39189, D.39189,
	cmp	r3, #256	@ D.39189,
	beq	.L308	@,
.L285:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r5	@ i, D.39189
	beq	.L309	@,
.L287:
	ldr	r1, [r4, #4]!	@ D.39187, MEM[base: _1, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ D.39185, _21->is_reference
	ands	r6, r3, #1	@ D.39185, D.39185,
	beq	.L283	@,
	ldr	lr, [r1, #436]	@ *_21, *_21
	bic	lr, lr, #-16777216	@ D.39189, *_21,
	bic	lr, lr, #255	@ D.39189, D.39189,
	cmp	lr, #256	@ D.39189,
	bne	.L283	@,
	ldr	lr, [r1, #444]	@ _21->top_field.long_term_pic_num, _21->top_field.long_term_pic_num
	cmp	r2, lr	@ long_term_pic_num, _21->top_field.long_term_pic_num
	bne	.L283	@,
	add	r2, r0, ip, lsl #2	@ D.39192, pH264Ctx, i,
	and	r3, r3, #2	@ tmp173, D.39185,
	add	r2, r2, #24576	@ tmp177, D.39192,
	strb	r3, [r1, #2]	@ tmp173, _75->is_reference
	mov	r1, #0	@ tmp178,
	ldr	r3, [r2, #1984]	@ D.39187, MEM[(struct H264_CTX_S *)_91 + 26560B]
	strb	r1, [r3, #437]	@ tmp178, _30->top_field.is_long_term
	ldr	r3, [r2, #1984]	@ D.39187, MEM[(struct H264_CTX_S *)_91 + 26560B]
	ldrb	ip, [r3, #400]	@ zero_extendqisi2	@ D.39185, _31->frame.structure
	cmp	ip, #3	@ D.39185,
	cmpne	ip, r1	@, D.39185,
	streqb	r1, [r3, #402]	@ tmp178, _31->frame.is_short_term
	ldreq	r3, [r2, #1984]	@ D.39187, MEM[(struct H264_CTX_S *)_91 + 26560B]
	streqb	r1, [r3, #401]	@ tmp178, _36->frame.is_long_term
	ldreq	r3, [r2, #1984]	@ D.39187, MEM[(struct H264_CTX_S *)_91 + 26560B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ _81->is_reference, _81->is_reference
	cmp	r2, #0	@ _81->is_reference,
	ldreq	r3, [r3, #548]	@ D.39189, _81->pmv_address_idc
	addeq	r3, r3, #12800	@ tmp199, D.39189,
	addeq	r3, r3, #12	@ tmp199, tmp199,
	streq	r2, [r0, r3, asl #2]	@ _81->is_reference, pH264Ctx_5(D)->PmvStoreUsedFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L278:
	add	r1, r0, #24576	@ tmp166, pH264Ctx,
	ldr	r4, [r1, #2060]	@ D.39189, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r4, #0	@ D.39189,
	beq	.L310	@,
	add	ip, r0, #26368	@ ivtmp.564, pH264Ctx,
	add	ip, ip, #188	@ ivtmp.564, ivtmp.564,
	b	.L289	@
.L288:
	cmp	r3, r4	@ i, D.39189
	beq	.L311	@,
.L289:
	ldr	r1, [ip, #4]!	@ D.39187, MEM[base: _45, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	lr, [r1, #408]	@ _7->frame.long_term_pic_num, _7->frame.long_term_pic_num
	cmp	lr, r2	@ _7->frame.long_term_pic_num, long_term_pic_num
	bne	.L288	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ _7->is_reference, _7->is_reference
	cmp	lr, #3	@ _7->is_reference,
	bne	.L288	@,
	ldr	lr, [r1, #400]	@ *_7, *_7
	bic	lr, lr, #-16777216	@ D.39189, *_7,
	bic	lr, lr, #255	@ D.39189, D.39189,
	cmp	lr, #256	@ D.39189,
	bne	.L288	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L308:
	ldr	r3, [r1, #480]	@ _21->bottom_field.long_term_pic_num, _21->bottom_field.long_term_pic_num
	cmp	r2, r3	@ long_term_pic_num, _21->bottom_field.long_term_pic_num
	bne	.L285	@,
	add	r3, r0, ip, lsl #2	@ D.39192, pH264Ctx, i,
	strb	r6, [r1, #2]	@ D.39185, _71->is_reference
	add	r3, r3, #24576	@ tmp211, D.39192,
	mov	r1, #0	@ tmp212,
	ldr	r2, [r3, #1984]	@ D.39187, MEM[(struct H264_CTX_S *)_83 + 26560B]
	strb	r1, [r2, #473]	@ tmp212, _46->bottom_field.is_long_term
	ldr	r2, [r3, #1984]	@ D.39187, MEM[(struct H264_CTX_S *)_83 + 26560B]
	ldrb	ip, [r2, #400]	@ zero_extendqisi2	@ D.39185, _47->frame.structure
	cmp	ip, #3	@ D.39185,
	cmpne	ip, r1	@, D.39185,
	streqb	r1, [r2, #402]	@ tmp212, _47->frame.is_short_term
	ldreq	r2, [r3, #1984]	@ D.39187, MEM[(struct H264_CTX_S *)_83 + 26560B]
	streqb	r1, [r2, #401]	@ tmp212, _52->frame.is_long_term
	ldreq	r2, [r3, #1984]	@ D.39187, MEM[(struct H264_CTX_S *)_83 + 26560B]
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ _79->is_reference, _79->is_reference
	cmp	r1, #0	@ _79->is_reference,
	ldreq	r3, [r2, #548]	@ D.39189, _79->pmv_address_idc
	addeq	r3, r3, #12800	@ tmp233, D.39189,
	addeq	r3, r3, #12	@ tmp233, tmp233,
	streq	r1, [r0, r3, asl #2]	@ _79->is_reference, pH264Ctx_5(D)->PmvStoreUsedFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L311:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L309:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L310:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L307:
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	UnMarkLTRef, .-UnMarkLTRef
	.align	2
	.global	MarkPicLTRef
	.type	MarkPicLTRef, %function
MarkPicLTRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@ D.39217, pCurrPic_5(D)->structure
	add	r3, r0, #24576	@ tmp195, pH264Ctx,
	cmp	r5, #0	@ D.39217,
	beq	.L313	@,
	ldr	r7, [r3, #2056]	@ D.39220, pH264Ctx_11(D)->DPB.ref_frames_in_buffer
	cmp	r7, #0	@ D.39220,
	beq	.L343	@,
	add	r6, r0, #26368	@ ivtmp.599, pH264Ctx,
	mov	ip, #0	@ i,
	add	r6, r6, #124	@ ivtmp.599, ivtmp.599,
	b	.L327	@
.L319:
	tst	r4, #2	@ D.39217,
	beq	.L322	@,
	ldr	lr, [r3, #472]	@ *_13, *_13
	bic	lr, lr, #-16777216	@ D.39220, *_13,
	bic	lr, lr, #255	@ D.39220, D.39220,
	cmp	lr, #65536	@ D.39220,
	beq	.L344	@,
.L322:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r7	@ i, D.39220
	beq	.L345	@,
.L327:
	ldr	r3, [r6, #4]!	@ D.39219, MEM[base: _119, offset: 0B]
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ D.39217, _13->is_reference
	tst	r4, #1	@ D.39217,
	beq	.L319	@,
	ldr	lr, [r3, #436]	@ *_13, *_13
	bic	lr, lr, #-16777216	@ D.39220, *_13,
	bic	lr, lr, #255	@ D.39220, D.39220,
	cmp	lr, #65536	@ D.39220,
	bne	.L319	@,
	ldr	lr, [r3, #448]	@ _13->top_field.pic_num, _13->top_field.pic_num
	cmp	lr, r2	@ _13->top_field.pic_num, picNumX
	bne	.L319	@,
	ldrb	lr, [r3, #473]	@ zero_extendqisi2	@ _13->bottom_field.is_long_term, _13->bottom_field.is_long_term
	cmp	lr, #1	@ _13->bottom_field.is_long_term,
	bne	.L323	@,
	ldr	lr, [r3, #520]	@ _13->long_term_frame_idx, _13->long_term_frame_idx
	cmp	lr, r1	@ _13->long_term_frame_idx, long_term_frame_idx
	bne	.L322	@,
.L323:
	str	r1, [r3, #520]	@ long_term_frame_idx, _109->long_term_frame_idx
	sub	r3, r5, #1	@ D.39218, D.39217,
	add	r2, r0, ip, lsl #2	@ D.39225, pH264Ctx, i,
	clz	r3, r3	@ D.39218, D.39218
	add	r2, r2, #24576	@ tmp240, D.39225,
	mov	ip, #1	@ tmp247,
	mov	r3, r3, lsr #5	@ D.39218, D.39218,
	mov	r0, #0	@ tmp251,
	add	r1, r3, r1, lsl #1	@ D.39220, D.39218, long_term_frame_idx,
	ldr	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_131 + 26496B]
	str	r1, [r3, #444]	@ D.39220, _56->top_field.long_term_pic_num
	ldr	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_131 + 26496B]
	strb	ip, [r3, #437]	@ tmp247, _61->top_field.is_long_term
	ldr	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_131 + 26496B]
	strb	r0, [r3, #438]	@ tmp251, _63->top_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_131 + 26496B]
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.39217, _65->frame.structure
	cmp	r1, #3	@ D.39217,
	cmpne	r1, r0	@, D.39217,
	bne	.L346	@,
	ldrb	r1, [r3, #473]	@ zero_extendqisi2	@ _65->bottom_field.is_long_term, _65->bottom_field.is_long_term
	ldrb	r0, [r3, #437]	@ zero_extendqisi2	@ D.39217, _65->top_field.is_long_term
	cmp	r1, r0	@ _65->bottom_field.is_long_term, D.39217
	streqb	r1, [r3, #401]	@ _65->bottom_field.is_long_term, _65->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_131 + 26496B]
	ldreqb	r2, [r3, #438]	@ zero_extendqisi2	@ _73->top_field.is_short_term, _73->top_field.is_short_term
	streqb	r2, [r3, #402]	@ _73->top_field.is_short_term,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L313:
	ldr	r6, [r3, #2056]	@ D.39220, pH264Ctx_11(D)->DPB.ref_frames_in_buffer
	cmp	r6, #0	@ D.39220,
	ldmeqfd	sp!, {r4, r5, r6, r7, pc}	@
	add	lr, r0, #26368	@ ivtmp.588, pH264Ctx,
	mov	r3, r5	@ i, D.39217
	add	lr, lr, #124	@ ivtmp.588, ivtmp.588,
	b	.L318	@
.L317:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r6	@ i, D.39220
	beq	.L347	@,
.L318:
	ldr	ip, [lr, #4]!	@ D.39219, MEM[base: _114, offset: 0B]
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ _77->is_reference, _77->is_reference
	cmp	r4, #3	@ _77->is_reference,
	bne	.L317	@,
	ldr	r4, [ip, #400]	@ *_77, *_77
	bic	r4, r4, #-16777216	@ D.39220, *_77,
	bic	r4, r4, #255	@ D.39220, D.39220,
	cmp	r4, #65536	@ D.39220,
	bne	.L317	@,
	ldr	r4, [ip, #412]	@ _77->frame.pic_num, _77->frame.pic_num
	cmp	r4, r2	@ _77->frame.pic_num, picNumX
	bne	.L317	@,
	add	r3, r0, r3, lsl #2	@ D.39225, pH264Ctx, i,
	str	r1, [ip, #520]	@ long_term_frame_idx, _12->long_term_frame_idx
	add	r3, r3, #24576	@ tmp204, D.39225,
	mov	r0, #1	@ tmp207,
	mov	r2, #0	@ tmp219,
	ldr	ip, [r3, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_141 + 26496B]
	str	r1, [ip, #408]	@ long_term_frame_idx, _84->frame.long_term_pic_num
	ldr	r1, [r3, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #401]	@ tmp207, _87->frame.is_long_term
	ldr	r1, [r3, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #437]	@ tmp207, _89->top_field.is_long_term
	ldr	r1, [r3, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #473]	@ tmp207, _91->bottom_field.is_long_term
	ldr	r1, [r3, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r1, #402]	@ tmp219, _93->frame.is_short_term
	ldr	r1, [r3, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r1, #438]	@ tmp219, _95->top_field.is_short_term
	ldr	r3, [r3, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r3, #474]	@ tmp219, _97->bottom_field.is_short_term
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L344:
	ldr	lr, [r3, #484]	@ _13->bottom_field.pic_num, _13->bottom_field.pic_num
	cmp	lr, r2	@ _13->bottom_field.pic_num, picNumX
	bne	.L322	@,
	ldrb	lr, [r3, #437]	@ zero_extendqisi2	@ _13->top_field.is_long_term, _13->top_field.is_long_term
	cmp	lr, #1	@ _13->top_field.is_long_term,
	bne	.L326	@,
	ldr	lr, [r3, #520]	@ _13->long_term_frame_idx, _13->long_term_frame_idx
	cmp	lr, r1	@ _13->long_term_frame_idx, long_term_frame_idx
	bne	.L322	@,
.L326:
	str	r1, [r3, #520]	@ long_term_frame_idx, _110->long_term_frame_idx
	sub	r3, r5, #2	@ D.39218, D.39217,
	add	r2, r0, ip, lsl #2	@ D.39225, pH264Ctx, i,
	clz	r3, r3	@ D.39218, D.39218
	add	r2, r2, #24576	@ tmp279, D.39225,
	mov	ip, #1	@ tmp286,
	mov	r3, r3, lsr #5	@ D.39218, D.39218,
	mov	r0, #0	@ tmp290,
	add	r1, r3, r1, lsl #1	@ D.39220, D.39218, long_term_frame_idx,
	ldr	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_121 + 26496B]
	str	r1, [r3, #480]	@ D.39220, _25->bottom_field.long_term_pic_num
	ldr	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_121 + 26496B]
	strb	ip, [r3, #473]	@ tmp286, _30->bottom_field.is_long_term
	ldr	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_121 + 26496B]
	strb	r0, [r3, #474]	@ tmp290, _32->bottom_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_121 + 26496B]
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.39217, _34->frame.structure
	cmp	r1, #3	@ D.39217,
	cmpne	r1, r0	@, D.39217,
	bne	.L348	@,
	ldrb	r1, [r3, #473]	@ zero_extendqisi2	@ _34->bottom_field.is_long_term, _34->bottom_field.is_long_term
	ldrb	r0, [r3, #437]	@ zero_extendqisi2	@ D.39217, _34->top_field.is_long_term
	cmp	r1, r0	@ _34->bottom_field.is_long_term, D.39217
	streqb	r1, [r3, #401]	@ _34->bottom_field.is_long_term, _34->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.39219, MEM[(struct H264_CTX_S *)_121 + 26496B]
	ldreqb	r2, [r3, #474]	@ zero_extendqisi2	@ _45->bottom_field.is_short_term, _45->bottom_field.is_short_term
	streqb	r2, [r3, #402]	@ _45->bottom_field.is_short_term,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L345:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L347:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L346:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L348:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L343:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	MarkPicLTRef, .-MarkPicLTRef
	.align	2
	.global	MarkSTToLTRef
	.type	MarkSTToLTRef, %function
MarkSTToLTRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r1	@ pCurrPic, pCurrPic
	ldrb	r1, [r1, #3]	@ zero_extendqisi2	@ pCurrPic_4(D)->structure, pCurrPic_4(D)->structure
	mov	r9, r3	@ long_term_frame_idx, long_term_frame_idx
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ pCurrPic_4(D)->structure,
	bne	.L350	@,
	ldr	r6, [r7, #416]	@ pCurrPic_4(D)->frame_num, pCurrPic_4(D)->frame_num
	mov	r1, r3	@, long_term_frame_idx
	sub	r6, r6, #1	@ D.39242, pCurrPic_4(D)->frame_num,
	rsb	r6, r2, r6	@ picNumX, difference_of_pic_nums_minus1, D.39242
	bl	UnMarkLTFrmByFrmIdx	@
.L351:
	mov	r3, r7	@, pCurrPic
	mov	r2, r6	@, picNumX
	mov	r1, r9	@, long_term_frame_idx
	mov	r0, r8	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	MarkPicLTRef	@
.L350:
	add	r3, r0, #24576	@ tmp143, pH264Ctx,
	ldr	r6, [r7, #416]	@ pCurrPic_4(D)->frame_num, pCurrPic_4(D)->frame_num
	ldr	r1, [r3, #2056]	@ D.39242, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	rsb	r6, r2, r6, lsl #1	@ picNumX, difference_of_pic_nums_minus1, pCurrPic_4(D)->frame_num,
	cmp	r1, #0	@ D.39242,
	beq	.L351	@,
	add	r2, r0, #26368	@ ivtmp.612, pH264Ctx,
	mov	lr, #0	@ i,
	add	r2, r2, #124	@ ivtmp.612, ivtmp.612,
	b	.L354	@
.L352:
	tst	r5, #2	@ D.39241,
	beq	.L353	@,
	ldr	r3, [ip, #472]	@ *_10, *_10
	bic	r3, r3, #-16777216	@ D.39242, *_10,
	bic	r3, r3, #255	@ D.39242, D.39242,
	cmp	r3, #65536	@ D.39242,
	beq	.L366	@,
.L353:
	cmp	lr, r1	@ i, D.39242
	beq	.L351	@,
.L354:
	ldr	ip, [r2, #4]!	@ D.39240, MEM[base: _9, offset: 0B]
	add	lr, lr, #1	@ i, i,
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ D.39241, _10->is_reference
	tst	r5, #1	@ D.39241,
	beq	.L352	@,
	ldr	r4, [ip, #436]	@ *_10, *_10
	bic	r4, r4, #-16777216	@ D.39242, *_10,
	bic	r4, r4, #255	@ D.39242, D.39242,
	cmp	r4, #65536	@ D.39242,
	bne	.L352	@,
	ldr	r3, [ip, #448]	@ _10->top_field.pic_num, _10->top_field.pic_num
	cmp	r3, r6	@ _10->top_field.pic_num, picNumX
	bne	.L352	@,
	mov	r1, ip	@, D.39240
	mov	r3, r9	@, long_term_frame_idx
	mov	r2, #1	@,
	mov	r0, r8	@, pH264Ctx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L351	@
.L366:
	ldr	r3, [ip, #484]	@ _10->bottom_field.pic_num, _10->bottom_field.pic_num
	cmp	r3, r6	@ _10->bottom_field.pic_num, picNumX
	bne	.L353	@,
	mov	r1, ip	@, D.39240
	mov	r3, r9	@, long_term_frame_idx
	mov	r2, #2	@,
	mov	r0, r8	@, pH264Ctx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L351	@
	.fnend
	.size	MarkSTToLTRef, .-MarkSTToLTRef
	.align	2
	.global	UpdateMaxLTFrmIdx
	.type	UpdateMaxLTFrmIdx, %function
UpdateMaxLTFrmIdx:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #24576	@ tmp133, pH264Ctx,
	ldr	r3, [r6, #2060]	@ pH264Ctx_5(D)->DPB.ltref_frames_in_buffer, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	str	r1, [r6, #2064]	@ max_long_term_frame_idx_plus1, pH264Ctx_5(D)->DPB.max_long_term_pic_idx
	cmp	r3, #0	@ pH264Ctx_5(D)->DPB.ltref_frames_in_buffer,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r0, #26368	@ ivtmp.628, pH264Ctx,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r3, r1	@ D.39265, max_long_term_frame_idx_plus1
	add	r5, r5, #188	@ ivtmp.628, ivtmp.628,
	mov	r4, #0	@ i,
	b	.L371	@
.L369:
	ldr	r3, [r6, #2060]	@ pH264Ctx_5(D)->DPB.ltref_frames_in_buffer, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r3, r4	@ pH264Ctx_5(D)->DPB.ltref_frames_in_buffer, i
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r6, #2064]	@ D.39265, pH264Ctx_5(D)->DPB.max_long_term_pic_idx
.L371:
	ldr	r1, [r5, #4]!	@ D.39264, MEM[base: _21, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r2, [r1, #520]	@ _9->long_term_frame_idx, _9->long_term_frame_idx
	cmp	r2, r3	@ _9->long_term_frame_idx, D.39265
	bcc	.L369	@,
	mov	r0, r7	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	b	.L369	@
	.fnend
	.size	UpdateMaxLTFrmIdx, .-UpdateMaxLTFrmIdx
	.align	2
	.global	UnMarkAllSTRef
	.type	UnMarkAllSTRef, %function
UnMarkAllSTRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r0, #24576	@ tmp126, pH264Ctx,
	ldr	r3, [r7, #2056]	@ pH264Ctx_4(D)->DPB.ref_frames_in_buffer, pH264Ctx_4(D)->DPB.ref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_4(D)->DPB.ref_frames_in_buffer,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r0, #26368	@ ivtmp.643, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r5, r5, #124	@ ivtmp.643, ivtmp.643,
	mov	r4, #0	@ i,
.L375:
	ldr	r1, [r5, #4]!	@, MEM[base: _15, offset: 0B]
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r7, #2056]	@ pH264Ctx_4(D)->DPB.ref_frames_in_buffer, pH264Ctx_4(D)->DPB.ref_frames_in_buffer
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ pH264Ctx_4(D)->DPB.ref_frames_in_buffer, i
	bhi	.L375	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	UnMarkAllSTRef, .-UnMarkAllSTRef
	.align	2
	.global	MarkCurrPicLT
	.type	MarkCurrPicLT, %function
MarkCurrPicLT:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r2	@ long_term_frame_idx, long_term_frame_idx
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.39287, pCurrPic_3(D)->structure
	mov	r4, r1	@ pCurrPic, pCurrPic
	cmp	r2, #0	@ D.39287,
	beq	.L383	@,
	mov	r3, r5	@, long_term_frame_idx
	ldr	r1, [r1, #408]	@, pCurrPic_3(D)->frame_store
	bl	UnMarkLTFldByFrmIdx	@
.L381:
	mov	r2, #1	@ tmp117,
	mov	r3, #0	@ tmp119,
	str	r5, [r4, #420]	@ long_term_frame_idx, pCurrPic_3(D)->long_term_frame_idx
	strb	r2, [r4, #4]	@ tmp117, pCurrPic_3(D)->is_long_term
	strb	r3, [r4, #5]	@ tmp119, pCurrPic_3(D)->is_short_term
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L383:
	mov	r1, r5	@, long_term_frame_idx
	bl	UnMarkLTFrmByFrmIdx	@
	b	.L381	@
	.fnend
	.size	MarkCurrPicLT, .-MarkCurrPicLT
	.align	2
	.global	RemoveFrameStoreOutDPB
	.type	RemoveFrameStoreOutDPB, %function
RemoveFrameStoreOutDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, r1, lsl #2	@ D.39313, pH264Ctx, pos,
	add	r5, r5, #24576	@ tmp193, D.39313,
	mov	r4, r1	@ pos, pos
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r5, #1856]	@ D.39314, MEM[(struct H264_CTX_S *)_54 + 26432B]
	cmp	r2, #0	@ D.39314,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r2, #552]	@ D.39315, _10->apc_idc
	add	r7, r0, #24576	@ tmp194, pH264Ctx,
	mov	r1, #0	@ tmp145,
	add	r8, r0, #49152	@ tmp195, pH264Ctx,
	add	r3, r3, #6656	@ tmp142, D.39315,
	add	r3, r3, #4	@ tmp142, tmp142,
	add	r3, r0, r3, lsl #2	@ tmp143, pH264Ctx, tmp142,
	str	r1, [r3, #4]	@ tmp145, pH264Ctx_8(D)->APC.is_used
	ldr	r3, [r7, #2328]	@ D.39312, pH264Ctx_8(D)->APC.used_size
	cmp	r3, r1	@ D.39312,
	subne	r3, r3, #1	@ D.39312, D.39312,
	str	r3, [r7, #2328]	@ D.39312, pH264Ctx_8(D)->APC.used_size
	ldr	r1, [r2, #508]	@, _10->logic_fs_id
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogic
	beq	.L387	@,
	ldrsb	r3, [r0, #1]	@ pstLogic_19->s32DispState, pstLogic_19->s32DispState
	cmp	r3, #3	@ pstLogic_19->s32DispState,
	beq	.L388	@,
	ldr	r3, [r5, #1856]	@ MEM[(struct H264_CTX_S *)_54 + 26432B], MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r2, #0	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	ldr	r1, [r3, #508]	@, _22->logic_fs_id
	bl	FSP_SetDisplay	@
.L388:
	ldr	r3, [r5, #1856]	@ MEM[(struct H264_CTX_S *)_54 + 26432B], MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r2, #0	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	ldr	r1, [r3, #508]	@, _26->logic_fs_id
	bl	FSP_SetRef	@
.L387:
	ldr	r2, [r5, #1856]	@ D.39314, MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r3, #0	@ tmp171,
	strb	r3, [r2, #1]	@ tmp171, _29->is_used
	ldr	r2, [r5, #1856]	@ D.39314, MEM[(struct H264_CTX_S *)_54 + 26432B]
	strb	r3, [r2, #4]	@ tmp171, _31->is_in_dpb
	ldr	r2, [r5, #1856]	@ D.39314, MEM[(struct H264_CTX_S *)_54 + 26432B]
	strb	r3, [r2, #2]	@ tmp171, _33->is_reference
	ldr	r1, [r7, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	sub	r1, r1, #1	@ D.39315, pH264Ctx_8(D)->DPB.used_size,
	cmp	r4, r1	@ pos, D.39315
	addcc	r3, r4, #6592	@ D.39311, pos,
	addcc	r3, r3, #16	@ D.39311, D.39311,
	addcc	r3, r6, r3, lsl #2	@ ivtmp.659, pH264Ctx, D.39311,
	bcs	.L391	@,
.L390:
	add	r4, r4, #1	@ pos, pos,
	ldr	r2, [r3, #4]!	@ MEM[base: _45, offset: 0B], MEM[base: _45, offset: 0B]
	cmp	r4, r1	@ pos, D.39315
	str	r2, [r3, #-4]	@ MEM[base: _45, offset: 0B], MEM[base: _45, offset: 4294967292B]
	bne	.L390	@,
.L391:
	add	r3, r1, #6592	@ tmp185, D.39315,
	mov	r2, #0	@ tmp186,
	add	r3, r3, #16	@ tmp185, tmp185,
	str	r2, [r6, r3, asl #2]	@ tmp186, pH264Ctx_8(D)->DPB.fs
	str	r1, [r7, #2052]	@ D.39315, pH264Ctx_8(D)->DPB.used_size
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	RemoveFrameStoreOutDPB, .-RemoveFrameStoreOutDPB
	.align	2
	.global	RemoveUnUsedFrameStore
	.type	RemoveUnUsedFrameStore, %function
RemoveUnUsedFrameStore:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r5, r0, #0	@ pH264Ctx, pH264Ctx
	beq	.L425	@,
	add	r3, r5, #24576	@ tmp144, pH264Ctx,
	ldr	r6, [r3, #2052]	@ k, pH264Ctx_10(D)->DPB.used_size
	cmp	r6, #0	@ k,
	beq	.L416	@,
	mov	r10, #0	@ j,
	add	r7, r5, #49152	@ tmp187, pH264Ctx,
	mov	fp, r10	@ i, j
	mov	r9, r10	@ tmp190, j
	mvn	r8, #0	@ tmp189,
	b	.L415	@
.L427:
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ _40->is_in_dpb, _40->is_in_dpb
	cmp	r2, #0	@ _40->is_in_dpb,
	bne	.L413	@,
	ldr	r1, [r3, #528]	@ _40->eFoState, _40->eFoState
	cmp	r1, #1	@ _40->eFoState,
	beq	.L413	@,
	strb	r2, [r3, #1]	@ _40->is_in_dpb, _40->is_used
	mov	r1, r10	@, j
	mov	r0, r5	@, pH264Ctx
	add	fp, fp, #1	@ i, i,
	bl	RemoveFrameStoreOutDPB	@
	cmp	fp, r6	@ i, k
	beq	.L416	@,
.L415:
	add	r4, r5, r10, lsl #2	@ D.39323, pH264Ctx, j,
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	add	r4, r4, #24576	@ tmp188, D.39323,
	ldr	r3, [r4, #1856]	@ MEM[(struct H264_CTX_S *)_3 + 26432B], MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldr	r1, [r3, #508]	@, _15->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L410	@,
	ldrsh	r3, [r0]	@ *pstLogicFs_18, *pstLogicFs_18
	cmp	r3, #0	@ *pstLogicFs_18,
	bne	.L411	@,
	ldr	r3, [r4, #1856]	@ D.39327, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ _20->is_reference, _20->is_reference
	cmp	r2, #0	@ _20->is_reference,
	bne	.L412	@,
	ldrsb	r1, [r0]	@ pstLogicFs_18->s32IsRef, pstLogicFs_18->s32IsRef
	cmp	r1, #0	@ pstLogicFs_18->s32IsRef,
	bne	.L426	@,
.L412:
	str	r8, [r3, #508]	@ tmp189, _54->logic_fs_id
	ldr	r3, [r4, #1856]	@ D.39327, MEM[(struct H264_CTX_S *)_3 + 26432B]
	strb	r9, [r3, #2]	@ tmp190, _28->is_reference
.L410:
	ldr	r2, [r4, #1856]	@ D.39327, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldr	r3, [r2, #528]	@ _35->eFoState,
	sub	r3, r3, #1	@ tmp177, _35->eFoState,
	clz	r3, r3	@ tmp177, tmp177
	mov	r3, r3, lsr #5	@ tmp177, tmp177,
	strb	r3, [r2, #4]	@ tmp177,
.L411:
	ldr	r3, [r4, #1856]	@ D.39327, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_40].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_40].is_reference
	cmp	r2, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_40].is_reference,
	beq	.L427	@,
.L413:
	add	fp, fp, #1	@ i, i,
	add	r10, r10, #1	@ j, j,
	cmp	fp, r6	@ i, k
	bne	.L415	@,
.L416:
	mov	r0, #0	@ D.39324,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L426:
	ldr	r1, [r3, #508]	@, _20->logic_fs_id
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, #1856]	@ D.39327, MEM[(struct H264_CTX_S *)_3 + 26432B]
	b	.L412	@
.L425:
	movw	r3, #1290	@,
	ldr	r2, .L428	@,
	ldr	r1, .L428+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39324,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L429:
	.align	2
.L428:
	.word	.LANCHOR0
	.word	.LC11
	.fnend
	.size	RemoveUnUsedFrameStore, .-RemoveUnUsedFrameStore
	.align	2
	.global	CheckFrameStore
	.type	CheckFrameStore, %function
CheckFrameStore:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #49152	@ tmp201, pH264Ctx,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r2, [r3, #2180]	@ pH264Ctx_7(D)->IDRFound, pH264Ctx_7(D)->IDRFound
	cmp	r2, #0	@ pH264Ctx_7(D)->IDRFound,
	bne	.L431	@,
	ldr	r2, [r1, #528]	@ pFrameStore_9(D)->eFoState, pFrameStore_9(D)->eFoState
	cmp	r2, #1	@ pFrameStore_9(D)->eFoState,
	beq	.L432	@,
	ldr	r2, [r3, #3616]	@ pH264Ctx_7(D)->OldDecMode, pH264Ctx_7(D)->OldDecMode
	cmp	r2, #0	@ pH264Ctx_7(D)->OldDecMode,
	beq	.L457	@,
.L432:
	mov	r2, #1	@ tmp161,
	str	r2, [r3, #2180]	@ tmp161, pH264Ctx_7(D)->IDRFound
.L431:
	mov	r4, r1	@ pFrameStore, pFrameStore
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r1, #508]	@, pFrameStore_9(D)->logic_fs_id
	ldr	r0, [r3, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L434	@,
	ldrsb	r3, [r0, #1]	@ D.39341, pstLogicFs_18->s32DispState
	cmp	r3, #3	@ D.39341,
	cmpne	r3, #0	@, D.39341,
	beq	.L458	@,
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ D.39343, pFrameStore_9(D)->is_used
	ldrb	r3, [r4]	@ zero_extendqisi2	@ D.39343, pFrameStore_9(D)->non_existing
	cmp	r2, #0	@ D.39343,
	beq	.L442	@,
	cmp	r3, #1	@ D.39343,
	beq	.L442	@,
	ldr	r3, [r4]	@ *pFrameStore_9(D), *pFrameStore_9(D)
	mov	r1, #768	@ tmp186,
	movt	r1, 768	@ tmp186,
	bic	r3, r3, #16711680	@ D.39337, *pFrameStore_9(D),
	bic	r3, r3, #255	@ D.39337, D.39337,
	cmp	r3, r1	@ D.39337, tmp186
	beq	.L459	@,
	cmp	r2, #1	@ D.39343,
	beq	.L460	@,
	cmp	r2, #2	@ D.39343,
	beq	.L461	@,
.L440:
	ldr	r3, [r5]	@ pH264Ctx_7(D)->pstExtraData, pH264Ctx_7(D)->pstExtraData
	ldr	r2, [r0, #188]	@ D.39337, pstLogicFs_18->stDispImg.error_level
	ldr	r3, [r3, #4]	@ D.39340, _49->s32OutErrThr
	cmp	r2, r3	@ D.39337, D.39340
	movls	r0, #0	@ D.39336,
	bhi	.L462	@,
.L455:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L457:
	ldr	r2, [r0]	@ pH264Ctx_7(D)->pstExtraData, pH264Ctx_7(D)->pstExtraData
	ldr	r2, [r2, #12]	@ _12->s32DecOrderOutput, _12->s32DecOrderOutput
	cmp	r2, #0	@ _12->s32DecOrderOutput,
	bne	.L432	@,
	mvn	r0, #0	@ D.39336,
	b	.L455	@
.L458:
	ldr	r2, [r4, #508]	@, pFrameStore_9(D)->logic_fs_id
	mov	r0, #1	@,
	ldr	r1, .L463	@,
	bl	dprint_vfmw	@
.L436:
	ldr	r3, [r4, #528]	@ pFrameStore_9(D)->eFoState, pFrameStore_9(D)->eFoState
	cmp	r3, #1	@ pFrameStore_9(D)->eFoState,
	beq	.L443	@,
	mvn	r0, #2	@ D.39336,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L460:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ D.39343, pFrameStore_9(D)->mode_skip_flag
	tst	r3, #1	@ D.39343,
	beq	.L440	@,
	mov	r0, r2	@,
	ldr	r1, .L463+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39336,
	b	.L455	@
.L461:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ D.39343, pFrameStore_9(D)->mode_skip_flag
	tst	r3, #2	@ D.39343,
	beq	.L440	@,
	ldr	r1, .L463+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39336,
	b	.L455	@
.L443:
	mov	r3, #2	@ tmp181,
	mvn	r0, #2	@ D.39336,
	str	r3, [r4, #528]	@ tmp181, pFrameStore_9(D)->eFoState
	b	.L455	@
.L434:
	ldr	ip, [r4, #508]	@ pFrameStore_9(D)->logic_fs_id, pFrameStore_9(D)->logic_fs_id
	mov	r2, r4	@, pFrameStore
	ldr	r3, [r4, #528]	@ pFrameStore_9(D)->eFoState, pFrameStore_9(D)->eFoState
	mov	r0, #1	@,
	ldr	r1, .L463+12	@,
	str	ip, [sp]	@ pFrameStore_9(D)->logic_fs_id,
	bl	dprint_vfmw	@
	b	.L436	@
.L442:
	ldr	r1, .L463+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39336,
	b	.L455	@
.L462:
	ldr	r1, .L463+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39336,
	b	.L455	@
.L459:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@, pFrameStore_9(D)->mode_skip_flag
	mov	r0, #1	@,
	ldr	r1, .L463+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39336,
	b	.L455	@
.L464:
	.align	2
.L463:
	.word	.LC12
	.word	.LC16
	.word	.LC17
	.word	.LC13
	.word	.LC14
	.word	.LC18
	.word	.LC15
	.fnend
	.size	CheckFrameStore, .-CheckFrameStore
	.align	2
	.global	ExchangePts
	.type	ExchangePts, %function
ExchangePts:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mvn	r5, #0	@,
	ldrd	r2, [r1, #16]	@ pFrameStore_10(D)->fs_image.PTS, pFrameStore,
	mvn	r4, #0	@ tmp136,
	.pad #20
	sub	sp, sp, #20	@,,
	cmp	r3, r5	@ pFrameStore_10(D)->fs_image.PTS,
	cmpeq	r2, r4	@ pFrameStore_10(D)->fs_image.PTS, tmp136
	beq	.L465	@,
	add	r8, r0, #24576	@ tmp161, pH264Ctx,
	ldr	r3, [r8, #2052]	@ pH264Ctx_13(D)->DPB.used_size, pH264Ctx_13(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_13(D)->DPB.used_size,
	beq	.L465	@,
	add	fp, r0, #26368	@ ivtmp.685, pH264Ctx,
	add	r9, r0, #49152	@ tmp162, pH264Ctx,
	add	fp, fp, #60	@ ivtmp.685, ivtmp.685,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mvn	r6, #1	@ MinPts,
	mvn	r7, #0	@ MinPts,
	mvn	r10, #0	@ MinPtsPos,
	mov	r4, #0	@ MinPtsPos,
	str	r1, [sp, #12]	@ pFrameStore, %sfp
.L470:
	ldr	r3, [fp, #4]!	@ D.39366, MEM[base: _40, offset: 0B]
	cmp	r3, #0	@ D.39366,
	beq	.L469	@,
	ldr	r1, [r3, #508]	@, _15->logic_fs_id
	ldr	r0, [r9, #3688]	@, pH264Ctx_13(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L469	@,
	ldrsb	r3, [r0, #1]	@ D.39368, pstLogicFs_20->s32DispState
	cmp	r3, #3	@ D.39368,
	cmpne	r3, #0	@, D.39368,
	beq	.L469	@,
	ldr	r3, [fp]	@ MEM[base: _40, offset: 0B], MEM[base: _40, offset: 0B]
	ldrd	r0, [r3, #16]	@ MinPts, MEM[base: _40, offset: 0B],
	cmp	r1, r7	@ MinPts, MinPts
	cmpeq	r0, r6	@ MinPts, MinPts
	movcc	r6, r0	@ MinPts, MinPts
	movcc	r7, r1	@ MinPts, MinPts
	movcc	r10, r4	@ MinPtsPos, MinPtsPos
.L469:
	ldr	r3, [r8, #2052]	@ pH264Ctx_13(D)->DPB.used_size, pH264Ctx_13(D)->DPB.used_size
	add	r4, r4, #1	@ MinPtsPos, MinPtsPos,
	cmp	r4, r3	@ MinPtsPos, pH264Ctx_13(D)->DPB.used_size
	bcc	.L470	@,
	cmn	r10, #1	@ MinPtsPos,
	beq	.L465	@,
	ldr	r3, [sp, #12]	@ pFrameStore, %sfp
	ldrd	r2, [r3, #16]	@ D.39364, pFrameStore,
	cmp	r3, r7	@ D.39364, MinPts
	cmpeq	r2, r6	@ D.39364, MinPts
	bhi	.L485	@,
.L465:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L485:
	strd	r6, [sp]	@ MinPts,
	mov	r0, #29	@,
	ldr	r1, .L486	@,
	add	r10, r10, #6592	@ tmp160, MinPtsPos,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #12]	@ pFrameStore, %sfp
	add	r10, r10, #16	@ tmp160, tmp160,
	ldrd	r2, [r0, #16]	@ D.39364, pFrameStore,
	ldr	r1, [r5, r10, asl #2]	@ D.39366, pH264Ctx_13(D)->DPB.fs
	strd	r2, [r1, #16]	@ D.39364, D.39366,
	strd	r6, [r0, #16]	@ MinPts, pFrameStore,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L487:
	.align	2
.L486:
	.word	.LC19
	.fnend
	.size	ExchangePts, .-ExchangePts
	.align	2
	.global	GetImagePara
	.type	GetImagePara, %function
GetImagePara:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r2, r0, #20480	@ tmp199, pH264Ctx,
	add	lr, r0, #12288	@ tmp196, pH264Ctx,
	mov	r8, #2208	@ tmp204,
	ldr	r2, [r2, #212]	@ pH264Ctx_21(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_21(D)->CurrSlice.pic_parameter_set_id
	mov	r4, r1	@ pFrameStore, pFrameStore
	ldr	r3, [lr, #1296]	@ pH264Ctx_21(D)->PPS, pH264Ctx_21(D)->PPS
	add	r5, r0, #49152	@ tmp290, pH264Ctx,
	ldr	ip, [r1, #148]	@ D.39381, pFrameStore_30(D)->fs_image.format
	mov	r7, #4000	@ tmp208,
	ldr	r6, [lr, #1292]	@ pH264Ctx_21(D)->SPS, pH264Ctx_21(D)->SPS
	mla	r1, r8, r2, r3	@ tmp205, tmp204, pH264Ctx_21(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_21(D)->PPS
	bic	r2, ip, #768	@ D.39381, D.39381,
	bic	r2, r2, #3	@ D.39381, D.39381,
	ldrb	lr, [r4, #1]	@ zero_extendqisi2	@ pFrameStore_30(D)->is_used, pFrameStore_30(D)->is_used
	ldr	r3, [r1, #28]	@ pps_25->seq_parameter_set_id, pps_25->seq_parameter_set_id
	str	r2, [r4, #148]	@ D.39381, pFrameStore_30(D)->fs_image.format
	ldr	r1, [r5, #2188]	@ pH264Ctx_21(D)->frame_rate, pH264Ctx_21(D)->frame_rate
	mla	r3, r7, r3, r6	@ sps, tmp208, pps_25->seq_parameter_set_id, pH264Ctx_21(D)->SPS
	mov	r1, r1, asl #10	@ D.39381, pH264Ctx_21(D)->frame_rate,
	str	r1, [r4, #176]	@ D.39381, pFrameStore_30(D)->fs_image.frame_rate
	cmp	lr, #3	@ pFrameStore_30(D)->is_used,
	ldrls	pc, [pc, lr, asl #2]	@ pFrameStore_30(D)->is_used
	b	.L524	@
.L491:
	.word	.L490
	.word	.L492
	.word	.L493
	.word	.L490
.L493:
	ldr	r1, [r4, #540]	@ pFrameStore_30(D)->pic_type, pFrameStore_30(D)->pic_type
	add	r6, r0, #24576	@ tmp289, pH264Ctx,
	ldr	ip, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	and	r1, r1, #3	@ D.39381, pFrameStore_30(D)->pic_type,
	orr	r2, r2, r1	@ D.39381, D.39381, D.39381
	orr	r2, r2, #2816	@ D.39381, D.39381,
	str	ip, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
	str	r2, [r4, #148]	@ D.39381, pFrameStore_30(D)->fs_image.format
.L489:
	ldrb	r2, [r3, #18]	@ zero_extendqisi2	@ D.39384, sps_29->frame_mbs_only_flag
	str	r2, [r4, #348]	@ D.39384, pFrameStore_30(D)->fs_image.optm_inf.IsProgressiveSeq
	str	r2, [r4, #352]	@ D.39384, pFrameStore_30(D)->fs_image.optm_inf.IsProgressiveFrm
	ldrb	r2, [r3, #22]	@ zero_extendqisi2	@ sps_29->vui_parameters_present_flag, sps_29->vui_parameters_present_flag
	cmp	r2, #0	@ sps_29->vui_parameters_present_flag,
	ldrne	r2, [r3, #68]	@ D.39378, sps_29->vui_seq_parameters.matrix_coefficients
	mov	r3, #1	@ tmp253,
	str	r3, [r4, #356]	@ tmp253, pFrameStore_30(D)->fs_image.optm_inf.RealFrmRate
	str	r2, [r4, #360]	@ D.39378, pFrameStore_30(D)->fs_image.optm_inf.MatrixCoef
	ldr	r3, [r0]	@ pH264Ctx_21(D)->pstExtraData, pH264Ctx_21(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _115->s32DecOrderOutput, _115->s32DecOrderOutput
	cmp	r3, #0	@ _115->s32DecOrderOutput,
	ble	.L509	@,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ pFrameStore_30(D)->frame.structure, pFrameStore_30(D)->frame.structure
	cmp	r3, #0	@ pFrameStore_30(D)->frame.structure,
	bne	.L509	@,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pFrameStore_30(D)->is_used, pFrameStore_30(D)->is_used
	cmp	r3, #3	@ pFrameStore_30(D)->is_used,
	ldreq	r3, [r4, #148]	@ pFrameStore_30(D)->fs_image.format, pFrameStore_30(D)->fs_image.format
	biceq	r3, r3, #768	@ D.39381, pFrameStore_30(D)->fs_image.format,
	streq	r3, [r4, #148]	@ D.39381, pFrameStore_30(D)->fs_image.format
.L509:
	mov	r1, r4	@, pFrameStore
	bl	ExchangePts	@
	ldrb	r3, [r6, #1808]	@ zero_extendqisi2	@ pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok, pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok
	cmp	r3, #0	@ pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok,
	beq	.L510	@,
	ldr	r3, [r6, #1824]	@ D.39384, pH264Ctx_21(D)->FramePackSEI.frame_packing_arrangement_type
	cmp	r3, #3	@ D.39384,
	moveq	r3, #1	@ tmp266,
	streq	r3, [r4, #288]	@ tmp266, pFrameStore_30(D)->fs_image.eFramePackingType
	beq	.L510	@,
	cmp	r3, #4	@ D.39384,
	moveq	r3, #2	@ tmp267,
	streq	r3, [r4, #288]	@ tmp267, pFrameStore_30(D)->fs_image.eFramePackingType
	beq	.L510	@,
	cmp	r3, #5	@ D.39384,
	moveq	r3, #3	@ tmp268,
	streq	r3, [r4, #288]	@ tmp268, pFrameStore_30(D)->fs_image.eFramePackingType
	beq	.L510	@,
	mov	r0, #0	@ tmp269,
	ldr	r1, .L536	@,
	str	r0, [r4, #288]	@ tmp269, pFrameStore_30(D)->fs_image.eFramePackingType
	ldr	r2, [r6, #1824]	@, pH264Ctx_21(D)->FramePackSEI.frame_packing_arrangement_type
	bl	dprint_vfmw	@
.L510:
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	ldr	r1, [r4, #508]	@, pFrameStore_30(D)->logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pstLogicFsImage,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r2, #392	@,
	add	r1, r4, #8	@, pFrameStore,
	bl	memcpy	@
	mov	r3, #0	@ tmp283,
	str	r3, [r5, #300]	@ tmp283, pstLogicFsImage_134->ImageDnr.video_standard
	mov	r2, #1	@ tmp285,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ D.39379, pFrameStore_30(D)->frame.structure
	strb	r2, [r5, #295]	@ tmp285, pstLogicFsImage_134->ImageDnr.use_pic_qp_en
	cmp	r3, #0	@ D.39379,
	movne	r3, #4	@ D.39379,
	strb	r3, [r5, #288]	@ D.39379, pstLogicFsImage_134->ImageDnr.pic_structure
	ldr	r3, [r4, #428]	@ D.39384, pFrameStore_30(D)->frame.MaxQp
	strb	r2, [r5, #293]	@ tmp285, pstLogicFsImage_134->ImageDnr.chroma_format_idc
	str	r3, [r5, #304]	@ D.39384, pstLogicFsImage_134->ImageDnr.QP_Y
	str	r3, [r5, #312]	@ D.39384, pstLogicFsImage_134->ImageDnr.QP_V
	str	r3, [r5, #308]	@ D.39384, pstLogicFsImage_134->ImageDnr.QP_U
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L492:
	ldr	r1, [r4, #540]	@ pFrameStore_30(D)->pic_type, pFrameStore_30(D)->pic_type
	add	r6, r0, #24576	@ tmp289, pH264Ctx,
	ldr	ip, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	and	r1, r1, #3	@ D.39381, pFrameStore_30(D)->pic_type,
	orr	r2, r2, r1	@ D.39381, D.39381, D.39381
	orr	r2, r2, #1792	@ D.39381, D.39381,
	str	ip, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
	str	r2, [r4, #148]	@ D.39381, pFrameStore_30(D)->fs_image.format
	b	.L489	@
.L490:
	ldrb	r2, [r4, #400]	@ zero_extendqisi2	@ pFrameStore_30(D)->frame.structure, pFrameStore_30(D)->frame.structure
	cmp	r2, #0	@ pFrameStore_30(D)->frame.structure,
	bne	.L494	@,
	ldr	r2, [r4, #536]	@ pFrameStore_30(D)->MbaffFrameFlag, pFrameStore_30(D)->MbaffFrameFlag
	mov	r7, #3072	@ D.39381,
	ldr	lr, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	cmp	r2, #0	@ pFrameStore_30(D)->MbaffFrameFlag,
	ldr	r2, [r4, #540]	@ pic_type, pFrameStore_30(D)->pic_type
	moveq	r1, #512	@ D.39381,
	movne	r1, #768	@ D.39381,
	str	lr, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
.L495:
	ldr	r6, [r4, #452]	@ D.39384, pFrameStore_30(D)->top_field.poc
	ldr	lr, [r4, #488]	@ D.39384, pFrameStore_30(D)->bottom_field.poc
	cmp	r6, lr	@ D.39384, D.39384
	beq	.L533	@,
	movle	lr, #1	@ top_field_first,
	movgt	lr, #0	@ top_field_first,
.L506:
	add	r6, r0, #24576	@ tmp289, pH264Ctx,
	ldrb	r8, [r6, #1844]	@ zero_extendqisi2	@ D.39383, pH264Ctx_21(D)->PicTimingSEI.pic_struct
	cmp	r8, #3	@ D.39383,
	moveq	lr, #4096	@ D.39381,
	beq	.L507	@,
	cmp	r8, #4	@ D.39383,
	movne	lr, lr, asl #12	@ D.39381, top_field_first,
	moveq	lr, #0	@ D.39381,
.L507:
	bic	ip, ip, #13056	@ D.39381, D.39381,
	orr	r1, r7, r1	@ D.39381, D.39381, D.39381
	bic	ip, ip, #3	@ D.39381, D.39381,
	and	r2, r2, #3	@ D.39381, pic_type,
	orr	ip, r1, ip	@ D.39381, D.39381, D.39381
	orr	ip, ip, r2	@ D.39381, D.39381, D.39381
	orr	ip, ip, lr	@ D.39381, D.39381, D.39381
	str	ip, [r4, #148]	@ D.39381, pFrameStore_30(D)->fs_image.format
	b	.L489	@
.L494:
	ldr	r6, [r4, #456]	@ D.39381, pFrameStore_30(D)->top_field.err_level
	ldr	r2, [r5, #3684]	@ D.39381, pH264Ctx_21(D)->out_error_thr
	cmp	r6, r2	@ D.39381, D.39381
	bhi	.L534	@,
	ldr	r1, [r4, #492]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->bottom_field.err_level
	cmp	r2, r1	@ D.39381, pFrameStore_30(D)->bottom_field.err_level
	bcc	.L499	@,
.L497:
	ldr	lr, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	mov	r1, #3	@ valid_field,
	ldr	r2, [r4, #540]	@ pic_type, pFrameStore_30(D)->pic_type
	ldr	r9, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	ldr	r8, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	str	lr, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
.L500:
	ldrb	lr, [r4, #3]	@ zero_extendqisi2	@ D.39383, pFrameStore_30(D)->mode_skip_flag
	cmp	lr, #1	@ D.39383,
	beq	.L535	@,
	cmp	lr, #2	@ D.39383,
	streq	r6, [r4, #188]	@ D.39381, pFrameStore_30(D)->fs_image.error_level
	movne	r7, r1, asl #10	@ D.39381, valid_field,
	moveq	r2, r9	@ pic_type, pic_type
	moveq	r7, #1024	@ D.39381,
.L502:
	mov	r1, #768	@ D.39381,
	str	r9, [r4, #140]	@ pic_type, pFrameStore_30(D)->fs_image.top_fld_type
	str	r8, [r4, #144]	@ pic_type, pFrameStore_30(D)->fs_image.bottom_fld_type
	b	.L495	@
.L499:
	ldr	r2, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	mov	r1, #1	@ valid_field,
	ldr	r8, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	str	r6, [r4, #188]	@ D.39381, pFrameStore_30(D)->fs_image.error_level
	mov	r9, r2	@ pic_type, pic_type
	b	.L500	@
.L533:
	ldr	lr, [r4, #152]	@ pFrameStore_30(D)->fs_image.image_width, pFrameStore_30(D)->fs_image.image_width
	cmp	lr, #720	@ pFrameStore_30(D)->fs_image.image_width,
	movne	lr, #1	@ top_field_first,
	bne	.L506	@,
	ldr	lr, [r4, #156]	@ pFrameStore_30(D)->fs_image.image_height, pFrameStore_30(D)->fs_image.image_height
	subs	lr, lr, #480	@ top_field_first, pFrameStore_30(D)->fs_image.image_height,
	movne	lr, #1	@ top_field_first,
	b	.L506	@
.L534:
	ldr	lr, [r4, #492]	@ D.39381, pFrameStore_30(D)->bottom_field.err_level
	cmp	r2, lr	@ D.39381, D.39381
	bcc	.L497	@,
	ldr	r2, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	mov	r1, #2	@ valid_field,
	str	lr, [r4, #188]	@ D.39381, pFrameStore_30(D)->fs_image.error_level
	ldr	r9, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	mov	r8, r2	@ pic_type, pic_type
	b	.L500	@
.L535:
	ldr	r1, [r4, #492]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->bottom_field.err_level
	mov	r2, r8	@ pic_type, pic_type
	mov	r7, #2048	@ D.39381,
	str	r1, [r4, #188]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->fs_image.error_level
	b	.L502	@
.L524:
	add	r6, r0, #24576	@ tmp289, pH264Ctx,
	b	.L489	@
.L537:
	.align	2
.L536:
	.word	.LC20
	.fnend
	.size	GetImagePara, .-GetImagePara
	.align	2
	.global	SetFrmRepeatCount
	.type	SetFrmRepeatCount, %function
SetFrmRepeatCount:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ pH264Ctx_2(D)->pstExtraData, pH264Ctx_2(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _3->s32FastForwardBackwardSpeed, _3->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.39398, _3->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.39398, D.39398,
	cmp	r3, #4096	@ D.39398,
	movcc	r3, #0	@ tmp120,
	strcc	r3, [r1, #84]	@ tmp120, p_image_7(D)->u32RepeatCnt
	bxcc	lr	@
	b	SetFrmRepeatCount.part.1	@
	.fnend
	.size	SetFrmRepeatCount, .-SetFrmRepeatCount
	.align	2
	.global	SplitFrmToFlds
	.type	SplitFrmToFlds, %function
SplitFrmToFlds:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r5, #1	@ tmp118,
	ldrb	lr, [r0, #401]	@ zero_extendqisi2	@ D.39401, pFrameStore_2(D)->frame.is_long_term
	mov	r4, #2	@ tmp122,
	ldrb	ip, [r0, #402]	@ zero_extendqisi2	@ D.39401, pFrameStore_2(D)->frame.is_short_term
	ldr	r1, [r0, #420]	@ D.39402, pFrameStore_2(D)->frame.err_level
	ldr	r2, [r0, #424]	@ D.39402, pFrameStore_2(D)->frame.pic_type
	ldr	r3, [r0, #404]	@ D.39403, pFrameStore_2(D)->frame.frame_store
	strb	r5, [r0, #436]	@ tmp118, pFrameStore_2(D)->top_field.structure
	strb	r4, [r0, #472]	@ tmp122, pFrameStore_2(D)->bottom_field.structure
	strb	lr, [r0, #437]	@ D.39401, pFrameStore_2(D)->top_field.is_long_term
	strb	lr, [r0, #473]	@ D.39401, pFrameStore_2(D)->bottom_field.is_long_term
	strb	ip, [r0, #438]	@ D.39401, pFrameStore_2(D)->top_field.is_short_term
	strb	ip, [r0, #474]	@ D.39401, pFrameStore_2(D)->bottom_field.is_short_term
	str	r1, [r0, #456]	@ D.39402, pFrameStore_2(D)->top_field.err_level
	str	r1, [r0, #492]	@ D.39402, pFrameStore_2(D)->bottom_field.err_level
	str	r2, [r0, #460]	@ D.39402, pFrameStore_2(D)->top_field.pic_type
	str	r2, [r0, #496]	@ D.39402, pFrameStore_2(D)->bottom_field.pic_type
	str	r3, [r0, #440]	@ D.39403, pFrameStore_2(D)->top_field.frame_store
	str	r3, [r0, #476]	@ D.39403, pFrameStore_2(D)->bottom_field.frame_store
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	SplitFrmToFlds, .-SplitFrmToFlds
	.align	2
	.global	CombineFldsToFrm
	.type	CombineFldsToFrm, %function
CombineFldsToFrm:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #488]	@ pFrameStore_4(D)->bottom_field.poc, pFrameStore_4(D)->bottom_field.poc
	ldr	r1, [r0, #452]	@ pFrameStore_4(D)->top_field.poc, pFrameStore_4(D)->top_field.poc
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	cmp	r2, r1	@ pFrameStore_4(D)->bottom_field.poc, pFrameStore_4(D)->top_field.poc
	ldr	r3, [r0, #492]	@ pFrameStore_4(D)->bottom_field.err_level, pFrameStore_4(D)->bottom_field.err_level
	mov	lr, #3	@ tmp133,
	ldr	r5, [r0, #456]	@ pFrameStore_4(D)->top_field.err_level, pFrameStore_4(D)->top_field.err_level
	movge	r2, r1	@ D.39406, pFrameStore_4(D)->top_field.poc
	ldrb	r4, [r0, #473]	@ zero_extendqisi2	@ pFrameStore_4(D)->bottom_field.is_long_term, pFrameStore_4(D)->bottom_field.is_long_term
	ldr	ip, [r0, #440]	@ pFrameStore_4(D)->top_field.frame_store, pFrameStore_4(D)->top_field.frame_store
	add	r3, r3, r5	@ D.39407, pFrameStore_4(D)->bottom_field.err_level, pFrameStore_4(D)->top_field.err_level
	cmp	r4, #0	@ pFrameStore_4(D)->bottom_field.is_long_term,
	strb	lr, [r0, #400]	@ tmp133, pFrameStore_4(D)->frame.structure
	mov	r3, r3, lsr #1	@ D.39407, D.39407,
	str	r2, [r0, #416]	@ D.39406, pFrameStore_4(D)->frame.poc
	str	ip, [r0, #404]	@ pFrameStore_4(D)->top_field.frame_store, pFrameStore_4(D)->frame.frame_store
	str	r2, [r0, #524]	@ D.39406, pFrameStore_4(D)->poc
	str	r3, [r0, #420]	@ D.39407, pFrameStore_4(D)->frame.err_level
	beq	.L543	@,
	ldrb	r2, [r0, #437]	@ zero_extendqisi2	@ pFrameStore_4(D)->top_field.is_long_term, pFrameStore_4(D)->top_field.is_long_term
	cmp	r2, #0	@ pFrameStore_4(D)->top_field.is_long_term,
	bne	.L544	@,
.L543:
	ldr	r2, [r0, #472]	@ *pFrameStore_4(D), *pFrameStore_4(D)
	mov	r1, #0	@ tmp141,
	strb	r1, [r0, #401]	@ tmp141, pFrameStore_4(D)->frame.is_long_term
	bic	r2, r2, #-16777216	@ D.39407, *pFrameStore_4(D),
	bic	r2, r2, #255	@ D.39407, D.39407,
	cmp	r2, r1	@ D.39407,
	beq	.L548	@,
	ldr	r2, [r0, #436]	@ *pFrameStore_4(D), *pFrameStore_4(D)
	bic	r2, r2, #-16777216	@ D.39407, *pFrameStore_4(D),
	bic	r2, r2, #255	@ D.39407, D.39407,
	cmp	r2, #0	@ D.39407,
	movne	ip, #1	@ D.39409,
	bne	.L546	@,
.L548:
	mov	ip, #0	@ D.39409,
.L546:
	ldr	r2, [r0, #496]	@ pFrameStore_4(D)->bottom_field.pic_type, pFrameStore_4(D)->bottom_field.pic_type
	ldr	r1, [r0, #460]	@ pFrameStore_4(D)->top_field.pic_type, pFrameStore_4(D)->top_field.pic_type
	str	r3, [r0, #544]	@ D.39407, pFrameStore_4(D)->err_level
	cmp	r2, r1	@ pFrameStore_4(D)->bottom_field.pic_type, pFrameStore_4(D)->top_field.pic_type
	strb	ip, [r0, #402]	@ D.39409, pFrameStore_4(D)->frame.is_short_term
	movcs	r3, r2	@ D.39407, pFrameStore_4(D)->bottom_field.pic_type
	movcc	r3, r1	@ D.39407, pFrameStore_4(D)->top_field.pic_type
	str	r3, [r0, #424]	@ D.39407, pFrameStore_4(D)->frame.pic_type
	str	r3, [r0, #540]	@ D.39407, pFrameStore_4(D)->pic_type
	ldmfd	sp!, {r4, r5, pc}	@
.L544:
	mov	r1, #1	@ tmp152,
	strb	r1, [r0, #401]	@ tmp152, pFrameStore_4(D)->frame.is_long_term
	b	.L548	@
	.fnend
	.size	CombineFldsToFrm, .-CombineFldsToFrm
	.align	2
	.global	GetAPC
	.type	GetAPC, %function
GetAPC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	subs	r7, r1, #0	@ pFrameStore, pFrameStore
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L581	@,
	cmp	r2, #1	@ structure,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	beq	.L561	@,
	cmp	r2, #2	@ structure,
	beq	.L562	@,
	ldr	r8, [r7, #452]	@ bottompoc, pFrameStore_8(D)->top_field.poc
	ldr	r9, [r7, #488]	@ bottompoc, pFrameStore_8(D)->bottom_field.poc
.L563:
	add	r6, r5, #24576	@ tmp177, pH264Ctx,
	ldr	ip, [r6, #2324]	@ D.39425, pH264Ctx_16(D)->APC.size
	cmp	ip, #0	@ D.39425,
	beq	.L572	@,
	ldr	r4, [r6, #2068]	@ pH264Ctx_16(D)->APC.is_used, pH264Ctx_16(D)->APC.is_used
	cmp	r4, #0	@ pH264Ctx_16(D)->APC.is_used,
	addne	r3, r5, #26624	@ ivtmp.706, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r3, r3, #20	@ ivtmp.706, ivtmp.706,
	bne	.L566	@,
	b	.L564	@
.L570:
	ldr	r2, [r3, #4]!	@ MEM[base: _40, offset: 0B], MEM[base: _40, offset: 0B]
	cmp	r2, #0	@ MEM[base: _40, offset: 0B],
	beq	.L564	@,
.L566:
	add	r4, r4, #1	@ i, i,
	cmp	r4, ip	@ i, D.39425
	bne	.L570	@,
.L572:
	mvn	r0, #0	@ D.39423,
.L576:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L562:
	ldr	r8, [r7, #488]	@ bottompoc, pFrameStore_8(D)->bottom_field.poc
	mov	r9, r8	@ bottompoc, bottompoc
	b	.L563	@
.L564:
	add	r3, r5, #49152	@ tmp152, pH264Ctx,
	ldr	r1, [r7, #508]	@, pFrameStore_8(D)->logic_fs_id
	ldr	r0, [r3, #3688]	@, pH264Ctx_16(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L567	@,
	ldr	r3, [r0, #408]	@ pstLogicFs_23->pstDecodeFs, pstLogicFs_23->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_23->pstDecodeFs,
	beq	.L567	@,
	add	r5, r5, r4, lsl #2	@ D.39432, pH264Ctx, i,
	mov	r3, #1	@ tmp158,
	add	r5, r5, #24576	@ tmp157, D.39432,
	ldr	r1, .L582	@,
	str	r3, [r5, #2068]	@ tmp158, MEM[(struct H264_CTX_S *)_58 + 26644B]
	ldr	r3, [r0, #408]	@ pstLogicFs_23->pstDecodeFs, pstLogicFs_23->pstDecodeFs
	mov	r0, #13	@,
	ldr	r3, [r3, #4]	@ _26->PhyFsID, _26->PhyFsID
	str	r8, [r5, #2196]	@ bottompoc, MEM[(struct H264_CTX_S *)_58 + 26772B]
	str	r9, [r5, #2260]	@ bottompoc, MEM[(struct H264_CTX_S *)_58 + 26836B]
	str	r3, [r5, #2132]	@ _26->PhyFsID, MEM[(struct H264_CTX_S *)_58 + 26708B]
	ldr	r3, [r6, #2328]	@ D.39425, pH264Ctx_16(D)->APC.used_size
	cmp	r3, #15	@ D.39425,
	addls	r3, r3, #1	@ D.39424, D.39425,
	movhi	r3, #16	@ D.39424,
	str	r3, [r6, #2328]	@ D.39424, pH264Ctx_16(D)->APC.used_size
	mov	r3, r4	@, i
	ldr	r2, [r7, #184]	@, pFrameStore_8(D)->fs_image.image_id
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.39423,
	str	r4, [r7, #552]	@ i, pFrameStore_8(D)->apc_idc
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L561:
	ldr	r8, [r7, #452]	@ bottompoc, pFrameStore_8(D)->top_field.poc
	mov	r9, r8	@ bottompoc, bottompoc
	b	.L563	@
.L567:
	mov	r1, #0	@ tmp174,
	ldr	r2, [r7, #508]	@ D.39426, pFrameStore_8(D)->logic_fs_id
	ldrb	r3, [r7, #2]	@ zero_extendqisi2	@ D.39426, pFrameStore_8(D)->is_reference
	stmia	sp, {r0, r1}	@,,
	mov	r0, r1	@, tmp174
	ldr	r1, .L582+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39423,
	b	.L576	@
.L581:
	mov	r0, r7	@, pFrameStore
	movw	r3, #2010	@,
	ldr	r2, .L582+8	@,
	ldr	r1, .L582+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39423,
	b	.L576	@
.L583:
	.align	2
.L582:
	.word	.LC23
	.word	.LC24
	.word	.LC21
	.word	.LC22
	.fnend
	.size	GetAPC, .-GetAPC
	.align	2
	.global	SlidingWinMark
	.type	SlidingWinMark, %function
SlidingWinMark:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #24576	@ tmp116, pH264Ctx,
	add	r3, r0, #16384	@ tmp118, pH264Ctx,
	ldr	r1, [r2, #2060]	@ pH264Ctx_2(D)->DPB.ltref_frames_in_buffer, pH264Ctx_2(D)->DPB.ltref_frames_in_buffer
	ldr	r3, [r3, #1156]	@ pH264Ctx_2(D)->CurrSPS.num_ref_frames, pH264Ctx_2(D)->CurrSPS.num_ref_frames
	ldr	r2, [r2, #2056]	@ pH264Ctx_2(D)->DPB.ref_frames_in_buffer, pH264Ctx_2(D)->DPB.ref_frames_in_buffer
	rsb	r3, r1, r3	@ D.39439, pH264Ctx_2(D)->DPB.ltref_frames_in_buffer, pH264Ctx_2(D)->CurrSPS.num_ref_frames
	cmp	r2, r3	@ pH264Ctx_2(D)->DPB.ref_frames_in_buffer, D.39439
	bxne	lr	@
	b	SlidingWinMark.part.2	@
	.fnend
	.size	SlidingWinMark, .-SlidingWinMark
	.align	2
	.global	SimpleSlideDPB
	.type	SimpleSlideDPB, %function
SimpleSlideDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #24576	@ tmp116, pH264Ctx,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r3, #2052]	@ pH264Ctx_4(D)->DPB.used_size, pH264Ctx_4(D)->DPB.used_size
	ldr	r2, [r3, #2048]	@ pH264Ctx_4(D)->DPB.size, pH264Ctx_4(D)->DPB.size
	cmp	r1, r2	@ pH264Ctx_4(D)->DPB.used_size, pH264Ctx_4(D)->DPB.size
	bcs	.L593	@,
.L587:
	add	r0, r4, #49152	@ tmp125, pH264Ctx,
	mov	r2, #0	@ tmp126,
	ldr	r3, [r0, #976]	@ pH264Ctx_4(D)->CurrPic.nal_ref_idc, pH264Ctx_4(D)->CurrPic.nal_ref_idc
	strb	r2, [r0, #556]	@ tmp126, pH264Ctx_4(D)->CurrPic.is_long_term
	cmp	r3, r2	@ pH264Ctx_4(D)->CurrPic.nal_ref_idc,
	movne	r3, #1	@ tmp133,
	strneb	r3, [r0, #557]	@ tmp133, pH264Ctx_4(D)->CurrPic.is_short_term
	ldmfd	sp!, {r4, pc}	@
.L593:
	ldr	r1, [r3, #1856]	@, pH264Ctx_4(D)->DPB.fs
	bl	UnMarkFrameStoreRef	@
	mov	r1, #0	@,
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L587	@
	.fnend
	.size	SimpleSlideDPB, .-SimpleSlideDPB
	.align	2
	.global	ReleaseNAL
	.type	ReleaseNAL, %function
ReleaseNAL:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pNalu
	beq	.L603	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r3, #0	@ tmp123,
	add	r8, r1, #56	@ D.39465, pNalu,
	mov	r7, r0	@ ChanID, ChanID
	mov	r5, r1	@ pNalu, pNalu
	mov	r6, r3	@ tmp140, tmp123
	mov	r4, r1	@ ivtmp.727, pNalu
	strb	r3, [r1, #1]	@ tmp123, pNalu_5(D)->is_valid
	strb	r3, [r1, #3]	@ tmp123, pNalu_5(D)->nal_integ
.L597:
	ldr	r3, [r4, #8]	@ MEM[base: _29, offset: 8B], MEM[base: _29, offset: 8B]
	mov	r0, r7	@, ChanID
	cmp	r3, #0	@ MEM[base: _29, offset: 8B],
	beq	.L596	@,
	ldr	r1, [r4, #32]	@, MEM[base: _29, offset: 32B]
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #12]	@, MEM[base: _29, offset: 12B]
	ldr	r2, [r4, #8]	@, MEM[base: _29, offset: 8B]
	mov	r0, #7	@,
	ldr	r1, .L604	@,
	bl	dprint_vfmw	@
	str	r6, [r4, #8]	@ tmp140, MEM[base: _29, offset: 8B]
	str	r6, [r4, #24]	@ tmp140, MEM[base: _29, offset: 24B]
	str	r6, [r4, #12]	@ tmp140, MEM[base: _29, offset: 12B]
.L596:
	add	r4, r4, #28	@ ivtmp.727, ivtmp.727,
	cmp	r4, r8	@ ivtmp.727, D.39465
	bne	.L597	@,
	mov	r3, #0	@ tmp135,
	strb	r3, [r5]	@ tmp135, pNalu_5(D)->nal_used_segment
	str	r3, [r5, #68]	@ tmp135, pNalu_5(D)->nal_segment
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L603:
	mov	r0, r1	@, pNalu
	movw	r3, #3880	@,
	ldr	r2, .L604+4	@,
	ldr	r1, .L604+8	@,
	b	dprint_vfmw	@
.L605:
	.align	2
.L604:
	.word	.LC25
	.word	.LC21
	.word	.LC22
	.fnend
	.size	ReleaseNAL, .-ReleaseNAL
	.align	2
	.global	ClearCurrNal
	.type	ClearCurrNal, %function
ClearCurrNal:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #368]	@ D.39469, pH264Ctx_3(D)->pCurrNal
	cmp	r1, #0	@ D.39469,
	beq	.L612	@,
	add	r3, r0, #49152	@ tmp115, pH264Ctx,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r3, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp117,
	mov	r0, #0	@,
	str	r3, [r4, #368]	@ tmp117, pH264Ctx_3(D)->pCurrNal
	ldmfd	sp!, {r4, pc}	@
.L612:
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	ClearCurrNal, .-ClearCurrNal
	.align	2
	.global	ClearCurrSlice
	.type	ClearCurrSlice, %function
ClearCurrSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, .L619	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #368]	@ D.39474, pH264Ctx_3(D)->pCurrNal
	add	r4, r5, #49152	@ tmp128, pH264Ctx,
	cmp	r1, #0	@ D.39474,
	beq	.L614	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #368]	@ tmp120, pH264Ctx_3(D)->pCurrNal
.L614:
	ldr	r3, [r4, #3644]	@ pH264Ctx_3(D)->TotalSlice, pH264Ctx_3(D)->TotalSlice
	mov	r0, #0	@,
	add	r3, r3, #1	@ D.39473, pH264Ctx_3(D)->TotalSlice,
	str	r3, [r4, #3644]	@ D.39473, pH264Ctx_3(D)->TotalSlice
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L620:
	.align	2
.L619:
	.word	.LC26
	.fnend
	.size	ClearCurrSlice, .-ClearCurrSlice
	.align	2
	.global	ClearAllNal
	.type	ClearAllNal, %function
ClearAllNal:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #13504	@ D.39493, pH264Ctx,
	add	r5, r5, #24	@ D.39493, D.39493,
	add	r4, r0, #376	@ ivtmp.745, pH264Ctx,
	add	r6, r0, #49152	@ tmp156, pH264Ctx,
	b	.L623	@
.L622:
	add	r4, r4, #96	@ ivtmp.745, ivtmp.745,
	cmp	r4, r5	@ ivtmp.745, D.39493
	beq	.L626	@,
.L623:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ MEM[base: _17, offset: 1B], MEM[base: _17, offset: 1B]
	cmp	r3, #1	@ MEM[base: _17, offset: 1B],
	bne	.L622	@,
	mov	r1, r4	@, ivtmp.745
	ldr	r0, [r6, #3688]	@, pH264Ctx_5(D)->ChanID
	add	r4, r4, #96	@ ivtmp.745, ivtmp.745,
	bl	ReleaseNAL	@
	cmp	r4, r5	@ ivtmp.745, D.39493
	bne	.L623	@,
.L626:
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	ClearAllNal, .-ClearAllNal
	.align	2
	.global	ClearAllSlice
	.type	ClearAllSlice, %function
ClearAllSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #50688	@ ivtmp.754, pH264Ctx,
	add	r5, r0, #51200	@ D.39515, pH264Ctx,
	add	r4, r4, #12	@ ivtmp.754, ivtmp.754,
	add	r5, r5, #44	@ D.39515, D.39515,
	add	r6, r0, #49152	@ tmp132, pH264Ctx,
	mov	r7, #0	@ tmp133,
.L629:
	ldr	r1, [r4, #4]!	@ D.39510, MEM[base: _19, offset: 0B]
	cmp	r1, #0	@ D.39510,
	beq	.L628	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	ReleaseNAL	@
	str	r7, [r4]	@ tmp133, MEM[base: _19, offset: 0B]
.L628:
	cmp	r4, r5	@ ivtmp.754, D.39515
	bne	.L629	@,
	mov	r0, #0	@ tmp127,
	str	r0, [r6, #3612]	@ tmp127, pH264Ctx_5(D)->SliceParaNum
	str	r0, [r6, #3672]	@ tmp127, pH264Ctx_5(D)->MaxBytesReceived
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	ClearAllSlice, .-ClearAllSlice
	.align	2
	.global	H264_ClearCurrPic
	.type	H264_ClearCurrPic, %function
H264_ClearCurrPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ClearAllSlice	@
	add	r0, r4, #12288	@ tmp117, pH264Ctx,
	add	r3, r4, #20480	@ tmp115, pH264Ctx,
	mov	r2, #0	@ tmp124,
	movw	r1, #23352	@ tmp121,
	ldr	r0, [r0, #1288]	@ pH264Ctx_2(D)->MaxPpsNum, pH264Ctx_2(D)->MaxPpsNum
	movt	r1, 1	@ tmp121,
	mov	ip, #2	@ tmp128,
	str	r1, [r3, #1864]	@ tmp121, pH264Ctx_2(D)->PrevSlice.frame_num
	strb	ip, [r3, #1849]	@ tmp128, pH264Ctx_2(D)->PrevSlice.bottom_field_flag
	mov	r1, #7	@ tmp132,
	str	r0, [r3, #1856]	@ pH264Ctx_2(D)->MaxPpsNum, pH264Ctx_2(D)->PrevSlice.pic_parameter_set_id
	mov	r0, #32	@ tmp135,
	str	r1, [r3, #1860]	@ tmp132, pH264Ctx_2(D)->PrevSlice.nal_ref_idc
	mov	r1, #3	@ tmp139,
	strb	r0, [r3, #1850]	@ tmp135, pH264Ctx_2(D)->PrevSlice.nal_unit_type
	mvn	r0, #0	@ tmp142,
	str	r1, [r3, #1872]	@ tmp139, pH264Ctx_2(D)->PrevSlice.pic_oder_cnt_lsb
	mov	r1, #262144	@ tmp151,
	str	r0, [r3, #1876]	@ tmp142, pH264Ctx_2(D)->PrevSlice.delta_pic_oder_cnt_bottom
	mov	r0, r2	@, tmp124
	str	r1, [r3, #1888]	@ tmp151, pH264Ctx_2(D)->PrevSlice.first_mb_in_slice
	strb	r2, [r3, #1848]	@ tmp124, pH264Ctx_2(D)->PrevSlice.field_pic_flag
	str	r2, [r3, #1880]	@ tmp124, pH264Ctx_2(D)->PrevSlice.delta_pic_order_cnt
	str	r2, [r3, #1884]	@ tmp124, pH264Ctx_2(D)->PrevSlice.delta_pic_order_cnt
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264_ClearCurrPic, .-H264_ClearCurrPic
	.align	2
	.global	H264_ArrangeVahbMem
	.type	H264_ArrangeVahbMem, %function
H264_ArrangeVahbMem:
	.fnstart
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r1	@ ImgWidth, ImgWidth
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp179,,
	mov	r6, r2	@ ImgHeight, ImgHeight
	bl	__memzero	@
	ldr	r2, [r5]	@ D.39524, pH264Ctx_7(D)->pstExtraData
	mov	r3, #0	@ tmp138,
	str	r4, [sp, #16]	@ ImgWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #20]	@ ImgHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r2, #20]	@ _8->s32DnrDispOutEnable, _8->s32DnrDispOutEnable
	str	r6, [sp, #36]	@ ImgHeight, FspInstCfg.s32DispFsHeight
	ldr	r2, [r2, #32]	@ _8->eCapLevel, _8->eCapLevel
	strb	r1, [sp, #4]	@ _8->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	cmp	r2, #24	@ _8->eCapLevel,
	str	r4, [sp, #24]	@ ImgWidth, FspInstCfg.s32TfFsWidth
	str	r6, [sp, #28]	@ ImgHeight, FspInstCfg.s32TfFsHeight
	str	r4, [sp, #32]	@ ImgWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #5]	@ tmp138, FspInstCfg.s32TfEnable
	strb	r3, [sp, #6]	@ tmp138, FspInstCfg.s32RprEnable
	beq	.L638	@,
	add	r1, r5, #24576	@ tmp144, pH264Ctx,
	ldrb	r2, [sp, #64]	@ zero_extendqisi2	@ D.39522, PmvBlkNum
	strb	r3, [sp, #10]	@ tmp138, FspInstCfg.s32ExpectedTfFsNum
	mov	r0, #5	@ tmp151,
	ldr	r3, [r1, #2048]	@ pH264Ctx_7(D)->DPB.size, pH264Ctx_7(D)->DPB.size
	strb	r0, [sp, #11]	@ tmp151, FspInstCfg.s32ExpectedDispFsNum
	add	r3, r3, #1	@ tmp147, pH264Ctx_7(D)->DPB.size,
	strb	r3, [sp, #9]	@ tmp147, FspInstCfg.s32ExpectedDecFsNum
.L642:
	add	r6, r5, #49152	@ tmp160, pH264Ctx,
	add	r1, sp, #4	@ tmp180,,
	strb	r2, [sp, #12]	@ D.39522, FspInstCfg.s32ExpectedPmvNum
	mov	r7, #0	@ tmp154,
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	mov	r4, #1	@ tmp156,
	strb	r7, [sp, #8]	@ tmp154, FspInstCfg.s32UserDec
	strb	r4, [sp, #7]	@ tmp156, FspInstCfg.s8SubLevelEnable
	bl	FSP_ConfigInstance	@
	subs	r8, r0, #0	@ D.39525,
	bne	.L639	@,
	ldr	r1, [r5]	@ D.39524, pH264Ctx_7(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	ldr	r2, [r1, #28]	@, _41->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _41->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	moveq	r0, r4	@ D.39523, tmp156
	bne	.L645	@,
.L643:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L638:
	mov	r1, #5	@ tmp175,
	strb	r3, [sp, #9]	@ tmp138, FspInstCfg.s32ExpectedDecFsNum
	strb	r3, [sp, #10]	@ tmp138, FspInstCfg.s32ExpectedTfFsNum
	mov	r2, #1	@ D.39522,
	strb	r1, [sp, #11]	@ tmp175, FspInstCfg.s32ExpectedDispFsNum
	b	.L642	@
.L639:
	mov	r0, r7	@, tmp154
	ldr	r1, .L646	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.39523,
	b	.L643	@
.L645:
	mov	r0, r8	@, D.39525
	ldr	r1, .L646+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.39523,
	b	.L643	@
.L647:
	.align	2
.L646:
	.word	.LC28
	.word	.LC27
	.fnend
	.size	H264_ArrangeVahbMem, .-H264_ArrangeVahbMem
	.align	2
	.global	RepairList
	.type	RepairList, %function
RepairList:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp142, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r3, #200]	@ zero_extendqisi2	@ pH264Ctx_17(D)->CurrSlice.slice_type, pH264Ctx_17(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_17(D)->CurrSlice.slice_type,
	beq	.L650	@,
	bcc	.L665	@,
	cmp	r3, #2	@ pH264Ctx_17(D)->CurrSlice.slice_type,
	bne	.L672	@,
.L666:
	mov	r0, #0	@ D.39586,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L662:
	mov	r0, r7	@, pH264Ctx
.L672:
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.39586,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L650:
	mov	r0, #2	@ i_list_cnt,
.L651:
	add	r6, r7, #20480	@ ivtmp.800, pH264Ctx,
	add	r4, r7, #26880	@ ivtmp.808, pH264Ctx,
	add	r6, r6, #240	@ ivtmp.800, ivtmp.800,
	add	r4, r4, #156	@ ivtmp.808, ivtmp.808,
	add	r8, r7, #49152	@ tmp161, pH264Ctx,
	mov	r5, #0	@ i_list,
	ldr	r2, [r6, #4]!	@ D.39588, MEM[base: _62, offset: 0B]
	mov	r9, #1	@ tmp160,
	cmp	r2, #0	@ D.39588,
	beq	.L653	@,
.L674:
	ldr	ip, [r4]	@ pRepairPic, MEM[base: _65, offset: 0B]
	cmp	ip, #0	@ pRepairPic,
	bne	.L667	@,
	mov	r1, r4	@ ivtmp.789, ivtmp.808
	mov	r3, ip	@ i, pRepairPic
	b	.L655	@
.L656:
	ldr	lr, [r1, #4]!	@ pRepairPic, MEM[base: _4, offset: 0B]
	cmp	lr, #0	@ pRepairPic,
	bne	.L658	@,
.L655:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r2	@ i, D.39588
	bne	.L656	@,
	ldr	r3, [r7]	@ pH264Ctx_17(D)->pstExtraData, pH264Ctx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _38->s32DecOrderOutput, _38->s32DecOrderOutput
	cmp	r3, #2	@ _38->s32DecOrderOutput,
	bne	.L662	@,
	ldr	lr, [r8, #960]	@ pH264Ctx_17(D)->CurrPic.frame_store, pH264Ctx_17(D)->CurrPic.frame_store
	add	lr, lr, #400	@ pRepairPic, pH264Ctx_17(D)->CurrPic.frame_store,
.L658:
	mov	r1, r4	@ ivtmp.774, ivtmp.808
	mov	r3, #0	@ i,
	b	.L664	@
.L660:
	ldr	ip, [r1, #4]!	@ D.39592, MEM[base: _32, offset: 0B]
.L664:
	add	r3, r3, #1	@ i, i,
	cmp	ip, #0	@ D.39592,
	streq	lr, [r1]	@ pRepairPic, MEM[base: _5, offset: 0B]
	cmp	r3, r2	@ i, D.39588
	bne	.L660	@,
	add	r5, r5, #1	@ i_list, i_list,
	add	r4, r4, #132	@ ivtmp.808, ivtmp.808,
	cmp	r0, r5	@ i_list_cnt, i_list
	bls	.L666	@,
.L673:
	ldr	r2, [r6, #4]!	@ D.39588, MEM[base: _62, offset: 0B]
	cmp	r2, #0	@ D.39588,
	bne	.L674	@,
.L653:
	ldr	r3, [r7]	@ pH264Ctx_17(D)->pstExtraData, pH264Ctx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _21->s32DecOrderOutput, _21->s32DecOrderOutput
	cmp	r3, #2	@ _21->s32DecOrderOutput,
	bne	.L662	@,
	add	r5, r5, #1	@ i_list, i_list,
	str	r9, [r6]	@ tmp160, MEM[base: _62, offset: 0B]
	cmp	r0, r5	@ i_list_cnt, i_list
	ldr	r3, [r8, #960]	@ pH264Ctx_17(D)->CurrPic.frame_store, pH264Ctx_17(D)->CurrPic.frame_store
	add	r4, r4, #132	@ ivtmp.808, ivtmp.808,
	add	r3, r3, #400	@ D.39592, pH264Ctx_17(D)->CurrPic.frame_store,
	str	r3, [r4, #-132]	@ D.39592, MEM[base: _64, offset: 0B]
	bhi	.L673	@,
	b	.L666	@
.L667:
	mov	lr, ip	@ pRepairPic, pRepairPic
	b	.L658	@
.L665:
	mov	r0, #1	@ i_list_cnt,
	b	.L651	@
	.fnend
	.size	RepairList, .-RepairList
	.align	2
	.global	GetShortTermPicPoint
	.type	GetShortTermPicPoint, %function
GetShortTermPicPoint:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp139, pH264Ctx,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldrb	r4, [r3, #201]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.field_pic_flag, pH264Ctx_6(D)->CurrSlice.field_pic_flag
	cmp	r4, #0	@ pH264Ctx_6(D)->CurrSlice.field_pic_flag,
	beq	.L676	@,
	ldrb	r3, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag,
	movne	r4, #2	@ structure,
	moveq	r4, #1	@ structure,
.L676:
	add	r3, r0, #24576	@ tmp145, pH264Ctx,
	ldr	r5, [r3, #2056]	@ D.39606, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	cmp	r5, #0	@ D.39606,
	beq	.L684	@,
	add	r3, r0, #26368	@ ivtmp.815, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r3, #128	@ ivtmp.815, ivtmp.815,
	b	.L681	@
.L695:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ _25->is_reference, _25->is_reference
	cmp	ip, #3	@ _25->is_reference,
	beq	.L693	@,
.L679:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.815, ivtmp.815,
	cmp	r2, r5	@ i, D.39606
	beq	.L694	@,
.L681:
	cmp	r4, #0	@ structure,
	ldr	r0, [r3]	@ D.39603,* ivtmp.815
	beq	.L695	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ D.39605, _10->is_reference
	tst	lr, #1	@ D.39605,
	beq	.L680	@,
	ldr	ip, [r0, #436]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.39606, *_10,
	bic	ip, ip, #255	@ D.39606, D.39606,
	cmp	ip, #65536	@ D.39606,
	beq	.L696	@,
.L680:
	tst	lr, #2	@ D.39605,
	beq	.L679	@,
	ldr	ip, [r0, #472]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.39606, *_10,
	bic	ip, ip, #255	@ D.39606, D.39606,
	cmp	ip, #65536	@ D.39606,
	bne	.L679	@,
	ldr	ip, [r0, #484]	@ _10->bottom_field.pic_num, _10->bottom_field.pic_num
	cmp	ip, r1	@ _10->bottom_field.pic_num, picNum
	bne	.L679	@,
	add	r0, r0, #472	@ D.39604, D.39603,
	ldmfd	sp!, {r4, r5, pc}	@
.L693:
	ldr	ip, [r0, #400]	@ *_25, *_25
	bic	ip, ip, #-16777216	@ D.39606, *_25,
	bic	ip, ip, #255	@ D.39606, D.39606,
	cmp	ip, #65536	@ D.39606,
	bne	.L679	@,
	ldr	ip, [r0, #412]	@ _25->frame.pic_num, _25->frame.pic_num
	cmp	ip, r1	@ _25->frame.pic_num, picNum
	bne	.L679	@,
	add	r0, r0, #400	@ D.39604, D.39603,
	ldmfd	sp!, {r4, r5, pc}	@
.L696:
	ldr	ip, [r0, #448]	@ _10->top_field.pic_num, _10->top_field.pic_num
	cmp	ip, r1	@ _10->top_field.pic_num, picNum
	bne	.L680	@,
	add	r0, r0, #436	@ D.39604, D.39603,
	ldmfd	sp!, {r4, r5, pc}	@
.L694:
	mov	r0, #0	@ D.39604,
	ldmfd	sp!, {r4, r5, pc}	@
.L684:
	mov	r0, r5	@ D.39604, D.39606
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	GetShortTermPicPoint, .-GetShortTermPicPoint
	.align	2
	.global	GetLongTermPicPoint
	.type	GetLongTermPicPoint, %function
GetLongTermPicPoint:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp139, pH264Ctx,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldrb	r4, [r3, #201]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.field_pic_flag, pH264Ctx_6(D)->CurrSlice.field_pic_flag
	cmp	r4, #0	@ pH264Ctx_6(D)->CurrSlice.field_pic_flag,
	beq	.L698	@,
	ldrb	r3, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag,
	movne	r4, #2	@ structure,
	moveq	r4, #1	@ structure,
.L698:
	add	r3, r0, #24576	@ tmp145, pH264Ctx,
	ldr	r5, [r3, #2060]	@ D.39620, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.39620,
	beq	.L706	@,
	add	r3, r0, #26368	@ ivtmp.822, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r3, #192	@ ivtmp.822, ivtmp.822,
	b	.L703	@
.L717:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ _25->is_reference, _25->is_reference
	cmp	ip, #3	@ _25->is_reference,
	beq	.L715	@,
.L701:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.822, ivtmp.822,
	cmp	r2, r5	@ i, D.39620
	beq	.L716	@,
.L703:
	cmp	r4, #0	@ structure,
	ldr	r0, [r3]	@ D.39617,* ivtmp.822
	beq	.L717	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ D.39619, _10->is_reference
	tst	lr, #1	@ D.39619,
	beq	.L702	@,
	ldr	ip, [r0, #436]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.39620, *_10,
	bic	ip, ip, #255	@ D.39620, D.39620,
	cmp	ip, #256	@ D.39620,
	beq	.L718	@,
.L702:
	tst	lr, #2	@ D.39619,
	beq	.L701	@,
	ldr	ip, [r0, #472]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.39620, *_10,
	bic	ip, ip, #255	@ D.39620, D.39620,
	cmp	ip, #256	@ D.39620,
	bne	.L701	@,
	ldr	ip, [r0, #480]	@ _10->bottom_field.long_term_pic_num, _10->bottom_field.long_term_pic_num
	cmp	ip, r1	@ _10->bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L701	@,
	add	r0, r0, #472	@ D.39618, D.39617,
	ldmfd	sp!, {r4, r5, pc}	@
.L715:
	ldr	ip, [r0, #400]	@ *_25, *_25
	bic	ip, ip, #-16777216	@ D.39620, *_25,
	bic	ip, ip, #255	@ D.39620, D.39620,
	cmp	ip, #256	@ D.39620,
	bne	.L701	@,
	ldr	ip, [r0, #408]	@ _25->frame.long_term_pic_num, _25->frame.long_term_pic_num
	cmp	ip, r1	@ _25->frame.long_term_pic_num, LongtermPicNum
	bne	.L701	@,
	add	r0, r0, #400	@ D.39618, D.39617,
	ldmfd	sp!, {r4, r5, pc}	@
.L718:
	ldr	ip, [r0, #444]	@ _10->top_field.long_term_pic_num, _10->top_field.long_term_pic_num
	cmp	ip, r1	@ _10->top_field.long_term_pic_num, LongtermPicNum
	bne	.L702	@,
	add	r0, r0, #436	@ D.39618, D.39617,
	ldmfd	sp!, {r4, r5, pc}	@
.L716:
	mov	r0, #0	@ D.39618,
	ldmfd	sp!, {r4, r5, pc}	@
.L706:
	mov	r0, r5	@ D.39618, D.39620
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	GetLongTermPicPoint, .-GetLongTermPicPoint
	.align	2
	.global	ReorderSTList
	.type	ReorderSTList, %function
ReorderSTList:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ RefPicListX, RefPicListX
	ldr	r7, [sp, #24]	@ refIdxLX, refIdxLX
	mov	r1, r3	@, picNumLX
	mov	r8, r2	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	mov	r6, r3	@ picNumLX, picNumLX
	bl	GetShortTermPicPoint	@
	add	r2, r8, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	ldr	r4, [r7]	@ D.39651, *refIdxLX_14(D)
	cmp	r2, r4	@ cIdx, D.39651
	ble	.L720	@,
	add	lr, r5, r2, lsl #2	@ ivtmp.841, RefPicListX, cIdx,
	mov	ip, r2	@ cIdx, cIdx
.L721:
	ldr	r4, [lr, #-4]!	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 0B]
	sub	ip, ip, #1	@ cIdx, cIdx,
	str	r4, [lr, #4]	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 4B]
	ldr	r4, [r7]	@ D.39651, *refIdxLX_14(D)
	cmp	r4, ip	@ D.39651, cIdx
	blt	.L721	@,
.L720:
	add	r3, r4, #1	@ D.39651, D.39651,
	str	r3, [r7]	@ D.39651, *refIdxLX_14(D)
	str	r0, [r5, r4, asl #2]	@ picLX, *_31
	ldr	ip, [r7]	@ nIdx, *refIdxLX_14(D)
	cmp	r2, ip	@ cIdx, nIdx
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r5, ip, lsl #2	@ ivtmp.832, RefPicListX, nIdx,
	mov	lr, ip	@ nIdx, nIdx
.L725:
	ldr	r0, [r4], #4	@ D.39652, MEM[base: _61, offset: 0B]
	add	ip, ip, #1	@ nIdx, nIdx,
	cmp	r0, #0	@ D.39652,
	beq	.L723	@,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _37->is_long_term, _37->is_long_term
	cmp	r3, #0	@ _37->is_long_term,
	bne	.L724	@,
	ldr	r3, [r0, #12]	@ _37->pic_num, _37->pic_num
	cmp	r3, r6	@ _37->pic_num, picNumLX
	beq	.L723	@,
.L724:
	str	r0, [r5, lr, asl #2]	@ D.39652, *_43
	add	lr, lr, #1	@ nIdx, nIdx,
.L723:
	cmp	r2, ip	@ cIdx, nIdx
	bge	.L725	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	ReorderSTList, .-ReorderSTList
	.align	2
	.global	ReorderLTList
	.type	ReorderLTList, %function
ReorderLTList:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ RefPicListX, RefPicListX
	ldr	r7, [sp, #24]	@ refIdxLX, refIdxLX
	mov	r1, r3	@, LongTermPicNum
	mov	r8, r2	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	mov	r6, r3	@ LongTermPicNum, LongTermPicNum
	bl	GetLongTermPicPoint	@
	add	r2, r8, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	ldr	r4, [r7]	@ D.39686, *refIdxLX_14(D)
	cmp	r2, r4	@ cIdx, D.39686
	ble	.L734	@,
	add	lr, r5, r2, lsl #2	@ ivtmp.869, RefPicListX, cIdx,
	mov	ip, r2	@ cIdx, cIdx
.L735:
	ldr	r4, [lr, #-4]!	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 0B]
	sub	ip, ip, #1	@ cIdx, cIdx,
	str	r4, [lr, #4]	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 4B]
	ldr	r4, [r7]	@ D.39686, *refIdxLX_14(D)
	cmp	r4, ip	@ D.39686, cIdx
	blt	.L735	@,
.L734:
	add	r3, r4, #1	@ D.39686, D.39686,
	str	r3, [r7]	@ D.39686, *refIdxLX_14(D)
	str	r0, [r5, r4, asl #2]	@ picLX, *_31
	ldr	ip, [r7]	@ nIdx, *refIdxLX_14(D)
	cmp	r2, ip	@ cIdx, nIdx
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r5, ip, lsl #2	@ ivtmp.860, RefPicListX, nIdx,
	mov	lr, ip	@ nIdx, nIdx
.L739:
	ldr	r0, [r4], #4	@ D.39687, MEM[base: _61, offset: 0B]
	add	ip, ip, #1	@ nIdx, nIdx,
	cmp	r0, #0	@ D.39687,
	beq	.L737	@,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _37->is_long_term, _37->is_long_term
	cmp	r3, #0	@ _37->is_long_term,
	beq	.L738	@,
	ldr	r3, [r0, #8]	@ _37->long_term_pic_num, _37->long_term_pic_num
	cmp	r3, r6	@ _37->long_term_pic_num, LongTermPicNum
	beq	.L737	@,
.L738:
	str	r0, [r5, lr, asl #2]	@ D.39687, *_43
	add	lr, lr, #1	@ nIdx, nIdx,
.L737:
	cmp	r2, ip	@ cIdx, nIdx
	bge	.L739	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	ReorderLTList, .-ReorderLTList
	.align	2
	.global	ReorderRefPiclist
	.type	ReorderRefPiclist, %function
ReorderRefPiclist:
	.fnstart
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #20480	@ tmp169, pH264Ctx,
	mov	ip, #0	@ tmp167,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	ldrb	lr, [r2, #201]	@ zero_extendqisi2	@ pH264Ctx_14(D)->CurrSlice.field_pic_flag, pH264Ctx_14(D)->CurrSlice.field_pic_flag
	mov	r8, #2208	@ tmp178,
	str	ip, [sp, #28]	@ tmp167, refIdxLX
	mov	r6, #4000	@ tmp185,
	cmp	lr, ip	@ pH264Ctx_14(D)->CurrSlice.field_pic_flag,
	add	lr, r0, #12288	@ tmp176, pH264Ctx,
	ldr	ip, [sp, #72]	@ reordering_of_pic_nums_idc, reordering_of_pic_nums_idc
	ldr	r5, [r2, #212]	@ pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id
	ldr	r9, [lr, #1296]	@ pH264Ctx_14(D)->PPS, pH264Ctx_14(D)->PPS
	beq	.L751	@,
	ldr	r2, [r2, #220]	@ pH264Ctx_14(D)->CurrSlice.frame_num, pH264Ctx_14(D)->CurrSlice.frame_num
	mov	r4, #2	@ maxPicNum,
	ldr	r7, [lr, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mla	lr, r8, r5, r9	@ tmp179, tmp178, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	mov	r5, r2, asl #1	@ D.39711, pH264Ctx_14(D)->CurrSlice.frame_num,
	add	r2, r5, #1	@ picNumLXPred, D.39711,
	str	r2, [sp, #20]	@ picNumLXPred, %sfp
.L770:
	ldr	lr, [lr, #28]	@ pps_82->seq_parameter_set_id,
	adds	r10, r3, #2	@ D.39711, num_ref_idx_lX_active_minus1,
	mla	r2, r6, lr, r7	@ tmp186, tmp185, pps_82->seq_parameter_set_id, pH264Ctx_14(D)->SPS
	ldr	r2, [r2, #2904]	@ sps_86->log2_max_frame_num_minus4,
	add	r2, r2, #4	@ D.39711, sps_86->log2_max_frame_num_minus4,
	mov	r2, r4, asl r2	@ maxPicNum, maxPicNum,
	str	r2, [sp, #16]	@ maxPicNum, %sfp
	beq	.L750	@,
	ldr	r2, [ip]	@ D.39711, *reordering_of_pic_nums_idc_39(D)
	cmp	r2, #3	@ D.39711,
	beq	.L750	@,
	mov	r8, r3	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	mov	r9, r1	@ list, list
	str	r0, [sp, #12]	@ pH264Ctx, %sfp
	mov	r7, ip	@ ivtmp.888, reordering_of_pic_nums_idc
	ldr	r6, [sp, #76]	@ ivtmp.896, abs_diff_pic_num_minus1
	mov	r4, #0	@ i,
	ldr	r5, [sp, #20]	@ picNumLXPred, %sfp
	add	fp, sp, #28	@ tmp222,,
	b	.L754	@
.L755:
	ldr	r3, [sp, #80]	@ tmp243, long_term_pic_idx
	mov	r2, r8	@, num_ref_idx_lX_active_minus1
	mov	r1, r9	@, list
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r3, [r3, r4, asl #2]	@ MEM[base: long_term_pic_idx_60(D), index: i_73, step: 4, offset: 0B], MEM[base: long_term_pic_idx_60(D), index: i_73, step: 4, offset: 0B]
	add	r4, r4, #1	@ i, i,
	str	fp, [sp]	@ tmp222,
	bl	ReorderLTList	@
	cmp	r4, r10	@ i, D.39711
	beq	.L750	@,
.L760:
	ldr	r2, [r7, #4]!	@ D.39711, MEM[base: _68, offset: 0B]
	add	r6, r6, #4	@ ivtmp.896, ivtmp.896,
	cmp	r2, #3	@ D.39711,
	beq	.L750	@,
.L754:
	cmp	r2, #1	@ D.39711,
	bhi	.L755	@,
	cmp	r2, #0	@ D.39711,
	ldr	r3, [r6]	@ MEM[base: _6, offset: 0B],* ivtmp.896
	bne	.L756	@,
	mvn	r3, r3	@ D.39712, MEM[base: _6, offset: 0B]
	adds	r5, r5, r3	@ picNumLXPred, picNumLXPred, D.39712
	ldrmi	r3, [sp, #16]	@ maxPicNum, %sfp
	addmi	r5, r5, r3	@ picNumLXPred, picNumLXPred, maxPicNum
.L757:
	ldr	r3, [sp, #20]	@ picNumLXPred, %sfp
	mov	r2, r8	@, num_ref_idx_lX_active_minus1
	str	fp, [sp]	@ tmp222,
	mov	r1, r9	@, list
	cmp	r3, r5	@ picNumLXPred, picNumLXPred
	ldr	r0, [sp, #12]	@, %sfp
	add	r4, r4, #1	@ i, i,
	ldrlt	r3, [sp, #16]	@ maxPicNum, %sfp
	movge	r3, r5	@ picNumLXPred, picNumLXPred
	rsblt	r3, r3, r5	@ picNumLXPred, maxPicNum, picNumLXPred
	bl	ReorderSTList	@
	cmp	r4, r10	@ i, D.39711
	bne	.L760	@,
.L750:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L756:
	add	r3, r3, #1	@ D.39712, MEM[base: _11, offset: 0B],
	add	r5, r5, r3	@ picNumLXPred, picNumLXPred, D.39712
	ldr	r3, [sp, #16]	@ maxPicNum, %sfp
	cmp	r3, r5	@ maxPicNum, picNumLXPred
	rsble	r5, r3, r5	@ picNumLXPred, maxPicNum, picNumLXPred
	b	.L757	@
.L751:
	ldr	r2, [r2, #220]	@ picNumLXPred, pH264Ctx_14(D)->CurrSlice.frame_num
	mov	r4, #1	@ tmp219,
	ldr	r7, [lr, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mla	lr, r8, r5, r9	@ tmp209, tmp208, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	str	r2, [sp, #20]	@ picNumLXPred, %sfp
	b	.L770	@
	.fnend
	.size	ReorderRefPiclist, .-ReorderRefPiclist
	.align	2
	.global	ReorderListX
	.type	ReorderListX, %function
ReorderListX:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r5, r0, #20480	@ tmp178, pH264Ctx,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ D.39718, pH264Ctx_4(D)->CurrSlice.slice_type
	cmp	r3, #2	@ D.39718,
	beq	.L771	@,
	add	r6, r0, #16384	@ tmp179, pH264Ctx,
	ldrb	r2, [r6, #3504]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0, pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r2, #0	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0,
	bne	.L784	@,
.L774:
	cmp	r3, #1	@ D.39718,
	ldr	r3, [r5, #256]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r3, #1	@ D.39721, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	str	r3, [r5, #244]	@ D.39721, pH264Ctx_4(D)->CurrSlice.listXsize
	bne	.L771	@,
	ldrb	r3, [r6, #3505]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1, pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r3, #0	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1,
	bne	.L785	@,
.L776:
	ldr	r3, [r5, #260]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #1	@ D.39721, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	str	r3, [r5, #248]	@ D.39721, pH264Ctx_4(D)->CurrSlice.listXsize
.L771:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L784:
	add	r7, r0, #20224	@ D.39723, pH264Ctx,
	add	lr, r0, #19968	@ D.39722, pH264Ctx,
	add	ip, r0, #19712	@ D.39722, pH264Ctx,
	add	r1, r0, #26880	@, pH264Ctx,
	ldr	r3, [r5, #256]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	lr, lr, #188	@ D.39722, D.39722,
	add	ip, ip, #180	@ D.39722, D.39722,
	add	r7, r7, #196	@ D.39723, D.39723,
	stmia	sp, {ip, lr}	@,,
	add	r2, r5, #244	@, tmp2,
	str	r7, [sp, #8]	@ D.39723,
	add	r1, r1, #156	@,,
	bl	ReorderRefPiclist	@
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ D.39718, pH264Ctx_4(D)->CurrSlice.slice_type
	b	.L774	@
.L785:
	add	lr, r4, #20480	@ D.39723, pH264Ctx,
	add	ip, r4, #20224	@ D.39722, pH264Ctx,
	add	r0, r4, #19968	@ D.39722, pH264Ctx,
	add	r1, r4, #27136	@, pH264Ctx,
	ldr	r3, [r5, #260]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1
	mov	r2, lr	@, D.39723
	add	ip, ip, #64	@ D.39722, D.39722,
	add	lr, lr, #68	@ D.39723, D.39723,
	add	r0, r0, #56	@ D.39722, D.39722,
	str	lr, [sp, #8]	@ D.39723,
	stmia	sp, {r0, ip}	@,,
	add	r2, r2, #248	@,,
	add	r1, r1, #32	@,,
	mov	r0, r4	@, pH264Ctx
	bl	ReorderRefPiclist	@
	b	.L776	@
	.fnend
	.size	ReorderListX, .-ReorderListX
	.align	2
	.global	GenPiclistfromFrmlist
	.type	GenPiclistfromFrmlist, %function
GenPiclistfromFrmlist:
	.fnstart
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r2, #31	@ list_idx,
	ldr	lr, .L850	@ tmp256,
	ldr	r7, [sp, #52]	@ long_term, long_term
	mov	r8, r1	@ fs_list, fs_list
	ldr	ip, .L850+4	@ tmp257,
	movcc	r4, r2	@ list_idx, list_idx
	movcs	r4, #31	@ list_idx,
	cmp	r7, #0	@ long_term,
	str	r3, [sp, #4]	@ list, %sfp
	movne	r7, lr	@ is_ref, tmp256
	moveq	r7, ip	@ is_ref, tmp257
	cmp	r0, #1	@ currStrcture,
	ldr	r10, [sp, #48]	@ list_size, list_size
	moveq	r5, #0	@ bot_idx,
	moveq	r6, r5	@ top_idx, bot_idx
	beq	.L789	@,
	cmp	r0, #2	@ currStrcture,
	moveq	r5, #0	@ bot_idx,
	moveq	r6, r5	@ top_idx, bot_idx
	bne	.L797	@,
.L798:
	cmp	r6, r4	@ top_idx, list_idx
	movcs	r3, #0	@ D.39764,
	movcc	r3, #1	@ D.39764,
	cmp	r5, r4	@ bot_idx, list_idx
	mov	r2, r3	@ D.39764, D.39764
	str	r3, [sp]	@ D.39764, %sfp
	movcs	r3, #0	@ D.39764,
	movcc	r3, #1	@ D.39764,
	orrs	r2, r3, r2	@ tmp259, D.39764, D.39764
	beq	.L797	@,
	cmp	r3, #0	@ D.39764,
	beq	.L803	@,
	add	fp, r8, r5, lsl #2	@ ivtmp.933, fs_list, bot_idx,
	b	.L802	@
.L799:
	add	r5, r5, #1	@ bot_idx, bot_idx,
	cmp	r4, r5	@ list_idx, bot_idx
	bls	.L803	@,
.L802:
	mov	r9, fp	@ D.39763, ivtmp.933
	ldr	r0, [fp], #4	@ D.39765, MEM[base: _90, offset: 0B]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _91->is_used, _91->is_used
	tst	r2, #2	@ _91->is_used,
	beq	.L799	@,
	add	r0, r0, #472	@, D.39765,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L799	@,
	ldr	r2, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r5, r5, #1	@ bot_idx, bot_idx,
	ldr	r1, [sp, #4]	@ list, %sfp
	ldr	r3, [r9]	@ *_164, *_164
	add	r3, r3, #472	@ D.39767, *_164,
	str	r3, [r1, r2, asl #2]	@ D.39767, *_102
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.39762, *list_size_47(D),
	str	r3, [r10]	@ D.39762, *list_size_47(D)
.L803:
	ldr	r3, [sp]	@ D.39764, %sfp
	cmp	r3, #0	@ D.39764,
	addne	r9, r8, r6, lsl #2	@ ivtmp.924, fs_list, top_idx,
	bne	.L805	@,
	b	.L798	@
.L804:
	add	r6, r6, #1	@ top_idx, top_idx,
	cmp	r4, r6	@ list_idx, top_idx
	bls	.L798	@,
.L805:
	mov	fp, r9	@ D.39763, ivtmp.924
	ldr	r0, [r9], #4	@ D.39765, MEM[base: _114, offset: 0B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _115->is_used, _115->is_used
	tst	r3, #1	@ _115->is_used,
	beq	.L804	@,
	add	r0, r0, #436	@, D.39765,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L804	@,
	ldr	r1, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r6, r6, #1	@ top_idx, top_idx,
	ldr	r2, [sp, #4]	@ list, %sfp
	ldr	r3, [fp]	@ *_162, *_162
	add	r3, r3, #436	@ D.39767, *_162,
	str	r3, [r2, r1, asl #2]	@ D.39767, *_127
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.39762, *list_size_47(D),
	str	r3, [r10]	@ D.39762, *list_size_47(D)
	b	.L798	@
.L849:
	add	r0, r0, #436	@, D.39765,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L790	@,
	ldr	r2, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r6, r6, #1	@ top_idx, top_idx,
	ldr	r1, [sp, #4]	@ list, %sfp
	ldr	r3, [r9]	@ *_168, *_168
	add	r3, r3, #436	@ D.39767, *_168,
	str	r3, [r1, r2, asl #2]	@ D.39767, *_51
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.39762, *list_size_47(D),
	str	r3, [r10]	@ D.39762, *list_size_47(D)
.L794:
	ldr	r3, [sp]	@ D.39764, %sfp
	cmp	r3, #0	@ D.39764,
	addne	r9, r8, r5, lsl #2	@ ivtmp.906, fs_list, bot_idx,
	bne	.L796	@,
	b	.L789	@
.L795:
	add	r5, r5, #1	@ bot_idx, bot_idx,
	cmp	r4, r5	@ list_idx, bot_idx
	bls	.L789	@,
.L796:
	mov	fp, r9	@ D.39763, ivtmp.906
	ldr	r0, [r9], #4	@ D.39765, MEM[base: _63, offset: 0B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _64->is_used, _64->is_used
	tst	r3, #2	@ _64->is_used,
	beq	.L795	@,
	add	r0, r0, #472	@, D.39765,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L795	@,
	ldr	r1, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r5, r5, #1	@ bot_idx, bot_idx,
	ldr	r2, [sp, #4]	@ list, %sfp
	ldr	r3, [fp]	@ *_166, *_166
	add	r3, r3, #472	@ D.39767, *_166,
	str	r3, [r2, r1, asl #2]	@ D.39767, *_76
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.39762, *list_size_47(D),
	str	r3, [r10]	@ D.39762, *list_size_47(D)
.L789:
	cmp	r6, r4	@ top_idx, list_idx
	movcs	r3, #0	@ D.39764,
	movcc	r3, #1	@ D.39764,
	cmp	r5, r4	@ bot_idx, list_idx
	movcs	r2, #0	@ D.39764,
	movcc	r2, #1	@ D.39764,
	str	r2, [sp]	@ D.39764, %sfp
	orrs	r2, r2, r3	@ tmp258, D.39764, D.39764
	beq	.L797	@,
	cmp	r3, #0	@ D.39764,
	beq	.L794	@,
	add	fp, r8, r6, lsl #2	@ ivtmp.915, fs_list, top_idx,
	b	.L793	@
.L790:
	add	r6, r6, #1	@ top_idx, top_idx,
	cmp	r4, r6	@ list_idx, top_idx
	bls	.L794	@,
.L793:
	mov	r9, fp	@ D.39763, ivtmp.915
	ldr	r0, [fp], #4	@ D.39765, MEM[base: _37, offset: 0B]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _38->is_used, _38->is_used
	tst	r2, #1	@ _38->is_used,
	beq	.L790	@,
	b	.L849	@
.L797:
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L851:
	.align	2
.L850:
	.word	IsLTRefFlg
	.word	IsSTRefFlg
	.fnend
	.size	GenPiclistfromFrmlist, .-GenPiclistfromFrmlist
	.align	2
	.global	InitListX
	.type	InitListX, %function
InitListX:
	.fnstart
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r0, #20480	@ tmp666, pH264Ctx,
	add	r8, r0, #49152	@ tmp670, pH264Ctx,
	.pad #220
	sub	sp, sp, #220	@,,
	ldrb	r3, [r6, #200]	@ zero_extendqisi2	@ pH264Ctx_69(D)->CurrSlice.slice_type, pH264Ctx_69(D)->CurrSlice.slice_type
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	r7, [r8, #555]	@ zero_extendqisi2	@ pH264Ctx_69(D)->CurrPic.structure, pH264Ctx_69(D)->CurrPic.structure
	add	r10, r0, #24576	@ tmp667, pH264Ctx,
	cmp	r3, #0	@ pH264Ctx_69(D)->CurrSlice.slice_type,
	bne	.L853	@,
	cmp	r7, #0	@ pH264Ctx_69(D)->CurrPic.structure,
	bne	.L978	@,
	ldr	ip, [r10, #2056]	@ D.40009, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	ip, #0	@ D.40009,
	beq	.L920	@,
	add	r1, r0, #26368	@ ivtmp.977, pH264Ctx,
	mov	r3, r7	@ i, j
	add	r1, r1, #124	@ ivtmp.977, ivtmp.977,
	b	.L859	@
.L858:
	cmp	r3, ip	@ i, D.40009
	beq	.L857	@,
.L859:
	ldr	r2, [r1, #4]!	@ D.40008, MEM[base: _95, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _73->is_reference, _73->is_reference
	cmp	r0, #3	@ _73->is_reference,
	bne	.L858	@,
	ldr	r0, [r2, #400]	@ *_73, *_73
	bic	r0, r0, #-16777216	@ D.40009, *_73,
	bic	r0, r0, #255	@ D.40009, D.40009,
	cmp	r0, #65536	@ D.40009,
	bne	.L858	@,
	add	r0, r7, #6720	@ tmp353, j,
	cmp	r3, ip	@ i, D.40009
	add	r0, r0, #38	@ tmp353, tmp353,
	add	r2, r2, #400	@ D.40010, D.40008,
	add	r7, r7, #1	@ j, j,
	add	r0, r4, r0, lsl #2	@ tmp354, pH264Ctx, tmp353,
	str	r2, [r0, #4]	@ D.40010, pH264Ctx_69(D)->pListX
	bne	.L859	@,
.L857:
	add	r0, r4, #26880	@, pH264Ctx,
	mov	r1, r7	@, j
	ldr	r3, .L986	@,
	add	r0, r0, #156	@,,
	mov	r2, #4	@,
	bl	qsort	@
	str	r7, [r6, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r1, [r10, #2060]	@ D.40009, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r1, #0	@ D.40009,
	beq	.L921	@,
	add	r0, r4, #26368	@ ivtmp.966, pH264Ctx,
	mov	r5, r7	@ j, j
	add	r0, r0, #188	@ ivtmp.966, ivtmp.966,
	mov	r3, #0	@ i,
	b	.L862	@
.L861:
	cmp	r3, r1	@ i, D.40009
	beq	.L979	@,
.L862:
	ldr	r2, [r0, #4]!	@ D.40008, MEM[base: _193, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ _85->is_reference, _85->is_reference
	cmp	ip, #3	@ _85->is_reference,
	bne	.L861	@,
	ldr	ip, [r2, #400]	@ *_85, *_85
	bic	ip, ip, #-16777216	@ D.40009, *_85,
	bic	ip, ip, #255	@ D.40009, D.40009,
	cmp	ip, #256	@ D.40009,
	bne	.L861	@,
	add	ip, r5, #6720	@ tmp370, j,
	cmp	r3, r1	@ i, D.40009
	add	ip, ip, #38	@ tmp370, tmp370,
	add	r2, r2, #400	@ D.40010, D.40008,
	add	r5, r5, #1	@ j, j,
	add	ip, r4, ip, lsl #2	@ tmp371, pH264Ctx, tmp370,
	str	r2, [ip, #4]	@ D.40010, pH264Ctx_69(D)->pListX
	bne	.L862	@,
.L979:
	rsb	r1, r7, r5	@ D.40009, j, j
.L860:
	add	r0, r4, r7, lsl #2	@ tmp378, pH264Ctx, j,
	ldr	r3, .L986+4	@,
	add	r0, r0, #26880	@, tmp378,
	mov	r2, #4	@,
	add	r0, r0, #156	@,,
	bl	qsort	@
	mov	r2, r5	@ D.40002, j
	cmp	r2, #0	@ D.40002,
	mov	r3, #0	@ tmp413,
	str	r5, [r6, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	str	r3, [r6, #248]	@ tmp413, pH264Ctx_69(D)->CurrSlice.listXsize
	beq	.L980	@,
.L868:
	ldr	r0, [r6, #256]	@ pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1
	ldr	r1, [r6, #260]	@ pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r0, r0, #1	@ D.40009, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r2, r0	@ D.40002, D.40009
	add	r1, r1, #1	@ D.40009, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	movcs	r2, r0	@ i, D.40009
	cmp	r3, r1	@ D.40002, D.40009
	str	r2, [r6, #244]	@ i, pH264Ctx_69(D)->CurrSlice.listXsize
	movcs	r3, r1	@ i, D.40009
	cmp	r2, #32	@ i,
	str	r3, [r6, #248]	@ i, pH264Ctx_69(D)->CurrSlice.listXsize
	bhi	.L912	@,
	add	r2, r2, #6720	@ D.39999, i,
	add	r1, r4, #27136	@ D.40015, pH264Ctx,
	add	r2, r2, #38	@ D.39999, D.39999,
	add	r1, r1, #28	@ D.40015, D.40015,
	mov	r0, #0	@ tmp672,
	add	r2, r4, r2, lsl #2	@ ivtmp.955, pH264Ctx, D.39999,
.L911:
	str	r0, [r2, #4]!	@ tmp672, MEM[base: _287, offset: 0B]
	cmp	r2, r1	@ ivtmp.955, D.40015
	bne	.L911	@,
.L912:
	cmp	r3, #32	@ i,
	bhi	.L910	@,
	add	r3, r3, #6784	@ D.39999, i,
	add	r2, r4, #27136	@ D.40015, pH264Ctx,
	add	r3, r3, #7	@ D.39999, D.39999,
	add	r2, r2, #160	@ D.40015, D.40015,
	mov	r1, #0	@ tmp671,
	add	r4, r4, r3, lsl #2	@ ivtmp.943, pH264Ctx, D.39999,
.L913:
	str	r1, [r4, #4]!	@ tmp671, MEM[base: _205, offset: 0B]
	cmp	r4, r2	@ ivtmp.943, D.40015
	bne	.L913	@,
.L910:
	mov	r0, #0	@ D.40006,
.L963:
	add	sp, sp, #220	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L853:
	cmp	r7, #0	@ pH264Ctx_69(D)->CurrPic.structure,
	ldr	ip, [r10, #2056]	@ D.40009, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	beq	.L874	@,
	cmp	ip, #0	@ D.40009,
	beq	.L981	@,
	add	r9, r0, #26368	@ ivtmp.1148, pH264Ctx,
	mov	r5, #0	@ j,
	add	r9, r9, #124	@ ivtmp.1148, ivtmp.1148,
	mov	r3, r5	@ i, j
	mov	r1, r9	@ ivtmp.1159, ivtmp.1148
.L893:
	ldr	r2, [r1, #4]!	@ D.40008, MEM[base: _459, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ _196->is_used, _196->is_used
	cmp	r0, #0	@ _196->is_used,
	beq	.L892	@,
	add	r0, sp, #216	@ tmp845,,
	ldr	lr, [r8, #980]	@ pH264Ctx_69(D)->CurrPic.thispoc, pH264Ctx_69(D)->CurrPic.thispoc
	add	r7, r0, r5, lsl #2	@ tmp527, tmp845, j,
	ldr	r0, [r2, #524]	@ _196->poc, _196->poc
	cmp	lr, r0	@ pH264Ctx_69(D)->CurrPic.thispoc, _196->poc
	strge	r2, [r7, #-192]	@ D.40008, fs_list0
	addge	r5, r5, #1	@ j, j,
.L892:
	cmp	r3, ip	@ i, D.40009
	bne	.L893	@,
	add	fp, sp, #24	@ tmp661,,
	ldr	r3, .L986+8	@,
	mov	r2, #4	@,
	mov	r1, r5	@, j
	mov	r0, fp	@, tmp661
	bl	qsort	@
	ldr	r7, [r10, #2056]	@ D.40009, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	r7, #0	@ D.40009,
	beq	.L975	@,
.L918:
	mov	r1, r9	@ ivtmp.1148, ivtmp.1148
	mov	r3, #0	@ i,
	mov	r9, r5	@ j, j
.L896:
	ldr	r2, [r1, #4]!	@ D.40008, MEM[base: _454, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ _206->is_used, _206->is_used
	cmp	r0, #0	@ _206->is_used,
	beq	.L895	@,
	add	r0, sp, #216	@ tmp846,,
	ldr	ip, [r8, #980]	@ pH264Ctx_69(D)->CurrPic.thispoc, pH264Ctx_69(D)->CurrPic.thispoc
	add	lr, r0, r9, lsl #2	@ tmp539, tmp846, j,
	ldr	r0, [r2, #524]	@ _206->poc, _206->poc
	cmp	ip, r0	@ pH264Ctx_69(D)->CurrPic.thispoc, _206->poc
	strlt	r2, [lr, #-192]	@ D.40008, fs_list0
	addlt	r9, r9, #1	@ j, j,
.L895:
	cmp	r3, r7	@ i, D.40009
	bne	.L896	@,
	rsb	r7, r5, r9	@ D.40009, j, j
	mov	r3, r5, asl #2	@ D.39999, j,
	add	r0, fp, r3	@, tmp661, D.39999
	str	r3, [sp, #12]	@ D.39999, %sfp
	mov	r1, r7	@, D.40009
	ldr	r3, .L986+12	@,
	mov	r2, #4	@,
	bl	qsort	@
	cmp	r5, #0	@ j,
	addeq	ip, sp, #88	@ tmp662,,
	beq	.L897	@,
.L915:
	add	ip, sp, #88	@ tmp662,,
	mov	r2, fp	@ ivtmp.1136, tmp661
	add	r7, ip, r7, lsl #2	@ ivtmp.1142, tmp662, D.40009,
	mov	r3, #0	@ j,
.L898:
	add	r3, r3, #1	@ j, j,
	ldr	r1, [r2], #4	@ D.40008, MEM[base: _449, offset: 0B]
	cmp	r3, r5	@ j, j
	str	r1, [r7], #4	@ D.40008, MEM[base: _450, offset: 0B]
	bcc	.L898	@,
.L897:
	cmp	r9, r5	@ j, j
	bls	.L899	@,
	ldr	r3, [sp, #12]	@ D.39999, %sfp
	add	r2, fp, r3	@ ivtmp.1123, tmp661, D.39999
	mov	r3, ip	@ ivtmp.1129, tmp662
.L900:
	add	r5, r5, #1	@ j, j,
	ldr	r1, [r2], #4	@ D.40008, MEM[base: _440, offset: 0B]
	cmp	r5, r9	@ j, j
	str	r1, [r3], #4	@ D.40008, MEM[base: _441, offset: 0B]
	bne	.L900	@,
.L899:
	add	r3, r4, #20480	@ D.40012, pH264Ctx,
	add	r5, r4, #26880	@ ivtmp.1015, pH264Ctx,
	add	r5, r5, #156	@ ivtmp.1015, ivtmp.1015,
	mov	r7, #0	@ tmp551,
	mov	r2, r3	@ D.40012, D.40012
	add	r2, r2, #244	@ D.40012, D.40012,
	str	r7, [r6, #244]	@ tmp551, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r1, fp	@, tmp661
	str	r7, [r6, #248]	@ tmp551, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r3, r5	@, ivtmp.1015
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.40009, pH264Ctx_69(D)->CurrPic.structure
	str	ip, [sp, #20]	@ tmp662, %sfp
	mov	ip, r2	@ D.40012, D.40012
	str	r2, [sp, #12]	@ D.40012, %sfp
	mov	r2, r9	@, j
	str	ip, [sp]	@ D.40012,
	str	r7, [sp, #4]	@ tmp551,
	bl	GenPiclistfromFrmlist	@
	ldr	ip, [sp, #20]	@ tmp662, %sfp
	add	r2, r4, #20480	@ D.40012, pH264Ctx,
	add	r3, r4, #27136	@ D.40011, pH264Ctx,
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.40009, pH264Ctx_69(D)->CurrPic.structure
	add	r3, r3, #32	@ D.40011, D.40011,
	mov	lr, r2	@ D.40012, D.40012
	mov	r1, ip	@, tmp662
	mov	r2, r9	@, j
	add	ip, lr, #248	@ D.40012, D.40012,
	str	r7, [sp, #4]	@ tmp551,
	str	ip, [sp]	@ D.40012,
	str	r3, [sp, #16]	@ D.40011, %sfp
	str	ip, [sp, #20]	@ D.40012, %sfp
	bl	GenPiclistfromFrmlist	@
	ldr	r9, [r10, #2060]	@ listltidx, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r9, r7	@ listltidx,
	addeq	fp, sp, #152	@ tmp663,,
	beq	.L901	@,
	add	r3, r4, #26368	@ ivtmp.1105, pH264Ctx,
	add	fp, sp, #152	@ tmp663,,
	add	r3, r3, #188	@ ivtmp.1105, ivtmp.1105,
	mov	r2, fp	@ ivtmp.1115, tmp663
.L902:
	add	r7, r7, #1	@ i, i,
	ldr	r1, [r3, #4]!	@ MEM[base: _432, offset: 0B], MEM[base: _432, offset: 0B]
	cmp	r7, r9	@ i, listltidx
	str	r1, [r2], #4	@ MEM[base: _432, offset: 0B], MEM[base: _433, offset: 0B]
	bne	.L902	@,
.L901:
	ldr	r3, .L986+16	@,
	mov	r2, #4	@,
	mov	r1, r9	@, listltidx
	mov	r0, fp	@, tmp663
	bl	qsort	@
	ldr	r3, [sp, #12]	@ D.40012, %sfp
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.40009, pH264Ctx_69(D)->CurrPic.structure
	mov	r7, #1	@ tmp579,
	mov	r2, r9	@, listltidx
	mov	r1, fp	@, tmp663
	str	r3, [sp]	@ D.40012,
	mov	r3, r5	@, ivtmp.1015
	str	r7, [sp, #4]	@ tmp579,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [sp, #20]	@ D.40012, %sfp
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.40009, pH264Ctx_69(D)->CurrPic.structure
	mov	r1, fp	@, tmp663
	ldr	r3, [sp, #16]	@, %sfp
	str	r2, [sp]	@ D.40012,
	mov	r2, r9	@, listltidx
	str	r7, [sp, #4]	@ tmp579,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [r6, #244]	@ D.40002, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r3, [r6, #248]	@ D.40002, pH264Ctx_69(D)->CurrSlice.listXsize
	rsb	r1, r3, r2	@ D.40005, D.40002, D.40002
	clz	r1, r1	@ D.40005, D.40005
	mov	r1, r1, lsr #5	@ D.40005, D.40005,
.L891:
	cmp	r2, #1	@ D.40002,
	movls	r1, #0	@, tmp595
	andhi	r1, r1, #1	@,, tmp595, D.40005
	cmp	r1, #0	@ tmp595,
	beq	.L903	@,
	cmp	r2, #0	@ D.40002,
	beq	.L904	@,
	ldr	r7, [r10, #2460]	@ D.40010, pH264Ctx_69(D)->pListX
	ldr	r1, [r10, #2592]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
	cmp	r7, r1	@ D.40010, pH264Ctx_69(D)->pListX
	bne	.L903	@,
	add	r0, r4, #27136	@ ivtmp.1024, pH264Ctx,
	mov	r1, #0	@ j,
	add	r0, r0, #32	@ ivtmp.1024, ivtmp.1024,
	b	.L905	@
.L906:
	ldr	lr, [r5, #4]!	@ MEM[base: _270, offset: 0B], MEM[base: _270, offset: 0B]
	ldr	ip, [r0, #4]!	@ MEM[base: _261, offset: 0B], MEM[base: _261, offset: 0B]
	cmp	lr, ip	@ MEM[base: _270, offset: 0B], MEM[base: _261, offset: 0B]
	bne	.L903	@,
.L905:
	add	r1, r1, #1	@ j, j,
	cmp	r1, r2	@ j, D.40002
	bne	.L906	@,
.L907:
	ldr	r1, [r10, #2596]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
	str	r7, [r10, #2596]	@ D.40010, pH264Ctx_69(D)->pListX
	str	r1, [r10, #2592]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
.L903:
	orrs	r1, r2, r3	@ tmp841, D.40002, D.40002
	bne	.L868	@,
	ldr	r1, .L986+20	@,
.L970:
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.40006,
	b	.L963	@
.L874:
	cmp	ip, #0	@ D.40009,
	beq	.L877	@,
	add	r9, r0, #26368	@ ivtmp.1148, pH264Ctx,
	mov	r3, r7	@ i, j
	add	r9, r9, #124	@ ivtmp.1148, ivtmp.1148,
	mov	r1, r9	@ ivtmp.1094, ivtmp.1148
	b	.L879	@
.L878:
	cmp	r3, ip	@ i, D.40009
	beq	.L982	@,
.L879:
	ldr	r2, [r1, #4]!	@ D.40008, MEM[base: _424, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _140->is_reference, _140->is_reference
	cmp	r0, #3	@ _140->is_reference,
	bne	.L878	@,
	add	r0, r7, #6720	@ tmp451, j,
	ldr	lr, [r2, #416]	@ _140->frame.poc, _140->frame.poc
	add	r0, r0, #38	@ tmp451, tmp451,
	ldr	r5, [r8, #984]	@ pH264Ctx_69(D)->CurrPic.framepoc, pH264Ctx_69(D)->CurrPic.framepoc
	add	r2, r2, #400	@ D.40010, D.40008,
	add	r0, r4, r0, lsl #2	@ tmp452, pH264Ctx, tmp451,
	cmp	r5, lr	@ pH264Ctx_69(D)->CurrPic.framepoc, _140->frame.poc
	addge	r7, r7, #1	@ j, j,
	strge	r2, [r0, #4]	@ D.40010, pH264Ctx_69(D)->pListX
	cmp	r3, ip	@ i, D.40009
	bne	.L879	@,
.L982:
	add	r5, r4, #26880	@ ivtmp.1015, pH264Ctx,
	ldr	r3, .L986+24	@,
	add	r5, r5, #156	@ ivtmp.1015, ivtmp.1015,
	mov	r2, #4	@,
	mov	r1, r7	@, j
	mov	r0, r5	@, ivtmp.1015
	bl	qsort	@
	ldr	fp, [r10, #2056]	@ D.40009, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	fp, #0	@ D.40009,
	beq	.L974	@,
.L916:
	mov	r1, r9	@ ivtmp.1083, ivtmp.1148
	mov	r3, #0	@ i,
	mov	r9, r7	@ j, j
	b	.L882	@
.L881:
	cmp	r3, fp	@ i, D.40009
	beq	.L983	@,
.L882:
	ldr	r2, [r1, #4]!	@ D.40008, MEM[base: _419, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _152->is_reference, _152->is_reference
	cmp	r0, #3	@ _152->is_reference,
	bne	.L881	@,
	add	r0, r9, #6720	@ tmp467, j,
	ldr	ip, [r2, #416]	@ _152->frame.poc, _152->frame.poc
	add	r0, r0, #38	@ tmp467, tmp467,
	ldr	lr, [r8, #984]	@ pH264Ctx_69(D)->CurrPic.framepoc, pH264Ctx_69(D)->CurrPic.framepoc
	add	r2, r2, #400	@ D.40010, D.40008,
	add	r0, r4, r0, lsl #2	@ tmp468, pH264Ctx, tmp467,
	cmp	lr, ip	@ pH264Ctx_69(D)->CurrPic.framepoc, _152->frame.poc
	addlt	r9, r9, #1	@ j, j,
	strlt	r2, [r0, #4]	@ D.40010, pH264Ctx_69(D)->pListX
	cmp	r3, fp	@ i, D.40009
	bne	.L882	@,
.L983:
	add	ip, r7, #6720	@ D.39999, j,
	rsb	fp, r7, r9	@ D.40009, j, j
	add	ip, ip, #38	@ D.39999, D.39999,
	mov	r2, #4	@,
	ldr	r3, .L986+28	@,
	mov	r1, fp	@, D.40009
	add	r0, r4, ip, lsl #2	@ tmp475, pH264Ctx, D.39999,
	str	ip, [sp, #12]	@ D.39999, %sfp
	add	r0, r0, r2	@, tmp475,
	add	r8, r4, r9, lsl #2	@ tmp484, pH264Ctx, j,
	bl	qsort	@
	cmp	r7, #0	@ j,
	add	r8, r8, #26880	@ D.40004, tmp484,
	ldr	ip, [sp, #12]	@ D.39999, %sfp
	add	r8, r8, #156	@ D.40004, D.40004,
	beq	.L884	@,
.L914:
	add	fp, fp, #6784	@ D.39999, D.40009,
	add	r2, r4, #26880	@ ivtmp.1064, pH264Ctx,
	add	fp, fp, #7	@ D.39999, D.39999,
	add	r2, r2, #152	@ ivtmp.1064, ivtmp.1064,
	mov	r3, #0	@ j,
	add	fp, r4, fp, lsl #2	@ ivtmp.1073, pH264Ctx, D.39999,
.L885:
	add	r3, r3, #1	@ j, j,
	ldr	r1, [r2, #4]!	@ D.40010, MEM[base: _308, offset: 0B]
	cmp	r3, r7	@ j, j
	str	r1, [fp, #4]!	@ D.40010, MEM[base: _307, offset: 0B]
	bcc	.L885	@,
.L884:
	cmp	r9, r7	@ j, j
	bls	.L886	@,
	add	r3, r4, #27136	@ ivtmp.1054, pH264Ctx,
	add	ip, r4, ip, lsl #2	@ ivtmp.1045, pH264Ctx, D.39999,
	add	r3, r3, #28	@ ivtmp.1054, ivtmp.1054,
.L887:
	add	r7, r7, #1	@ j, j,
	ldr	r2, [ip, #4]!	@ D.40010, MEM[base: _3, offset: 0B]
	cmp	r7, r9	@ j, j
	str	r2, [r3, #4]!	@ D.40010, MEM[base: _41, offset: 0B]
	bne	.L887	@,
.L886:
	str	r9, [r6, #248]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	str	r9, [r6, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r1, [r10, #2060]	@ D.40009, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r1, #0	@ D.40009,
	beq	.L923	@,
	add	r0, r4, #26368	@ ivtmp.1033, pH264Ctx,
	mov	r7, r9	@ j, j
	add	r0, r0, #188	@ ivtmp.1033, ivtmp.1033,
	mov	r3, #0	@ i,
	b	.L890	@
.L889:
	cmp	r3, r1	@ i, D.40009
	beq	.L984	@,
.L890:
	ldr	r2, [r0, #4]!	@ D.40008, MEM[base: _58, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ _175->is_used, _175->is_used
	cmp	ip, #3	@ _175->is_used,
	bne	.L889	@,
	ldrb	ip, [r2, #401]	@ zero_extendqisi2	@ _175->frame.is_long_term, _175->frame.is_long_term
	cmp	ip, #1	@ _175->frame.is_long_term,
	bne	.L889	@,
	add	ip, r4, r7, lsl #2	@ D.40003, pH264Ctx, j,
	cmp	r3, r1	@ i, D.40009
	add	ip, ip, #24576	@ tmp504, D.40003,
	add	r2, r2, #400	@ D.40010, D.40008,
	add	r7, r7, #1	@ j, j,
	str	r2, [ip, #2460]	@ D.40010, MEM[(struct H264_CTX_S *)_461 + 27036B]
	str	r2, [ip, #2592]	@ D.40010, MEM[(struct H264_CTX_S *)_461 + 27168B]
	bne	.L890	@,
.L984:
	rsb	r1, r9, r7	@ D.40009, j, j
.L888:
	mov	r0, r8	@, D.40004
	ldr	r3, .L986+4	@,
	mov	r2, #4	@,
	bl	qsort	@
	ldr	r0, [r6, #244]	@ D.40009, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r3, .L986+4	@,
	mov	r2, #4	@,
	rsb	r1, r0, r7	@, D.40009, j
	add	r0, r4, r0, lsl #2	@ tmp515, pH264Ctx, D.40009,
	add	r0, r0, #27136	@, tmp515,
	add	r0, r0, #32	@,,
	bl	qsort	@
	mov	r3, r7	@ D.40002, j
	str	r7, [r6, #248]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r2, r7	@ D.40002, D.40002
	str	r7, [r6, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r1, #1	@ D.40005,
	b	.L891	@
.L978:
	ldr	lr, [r10, #2056]	@ D.40009, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	lr, #0	@ D.40009,
	moveq	r7, lr	@ j, D.40009
	beq	.L856	@,
	add	r1, r0, #26368	@ ivtmp.1004, pH264Ctx,
	mov	r7, r3	@ j, pH264Ctx_69(D)->CurrSlice.slice_type
	add	r1, r1, #124	@ ivtmp.1004, ivtmp.1004,
.L865:
	ldr	r2, [r1, #4]!	@ D.40008, MEM[base: _348, offset: 0B]
	add	r0, sp, #216	@ tmp842,,
	add	ip, r0, r7, lsl #2	@ tmp384, tmp842, j,
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _100->is_reference, _100->is_reference
	cmp	r0, #0	@ _100->is_reference,
	strne	r2, [ip, #-192]	@ D.40008, fs_list0
	addne	r7, r7, #1	@ j, j,
	cmp	r3, lr	@ i, D.40009
	bne	.L865	@,
.L856:
	add	r9, r4, #26880	@ D.40011, pH264Ctx,
	mov	r1, r7	@, j
	ldr	r3, .L986+32	@,
	mov	r2, #4	@,
	add	r0, sp, #24	@ tmp843,,
	add	r9, r9, #156	@ D.40011, D.40011,
	bl	qsort	@
	add	ip, r4, #20480	@ D.40012, pH264Ctx,
	add	ip, ip, #244	@ D.40012, D.40012,
	mov	r5, #0	@ tmp390,
	mov	r2, r7	@, j
	str	r5, [r6, #244]	@ tmp390, pH264Ctx_69(D)->CurrSlice.listXsize
	add	r1, sp, #24	@ tmp844,,
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.40009, pH264Ctx_69(D)->CurrPic.structure
	mov	r3, r9	@, D.40011
	str	ip, [sp]	@ D.40012,
	str	r5, [sp, #4]	@ tmp390,
	str	ip, [sp, #12]	@ D.40012, %sfp
	bl	GenPiclistfromFrmlist	@
	ldr	r7, [r10, #2060]	@ listltidx, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	ldr	ip, [sp, #12]	@ D.40012, %sfp
	cmp	r7, r5	@ listltidx,
	addeq	fp, sp, #152	@ tmp663,,
	beq	.L866	@,
	add	r3, r4, #26368	@ ivtmp.988, pH264Ctx,
	add	fp, sp, #152	@ tmp663,,
	add	r3, r3, #188	@ ivtmp.988, ivtmp.988,
	mov	r2, fp	@ ivtmp.998, tmp663
.L867:
	add	r5, r5, #1	@ i, i,
	ldr	r1, [r3, #4]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r5, r7	@ i, listltidx
	str	r1, [r2], #4	@ MEM[base: _14, offset: 0B], MEM[base: _11, offset: 0B]
	bne	.L867	@,
.L866:
	ldr	r3, .L986+16	@,
	mov	r2, #4	@,
	mov	r1, r7	@, listltidx
	mov	r0, fp	@, tmp663
	str	ip, [sp, #12]	@ D.40012, %sfp
	bl	qsort	@
	ldr	ip, [sp, #12]	@ D.40012, %sfp
	mov	r3, r9	@, D.40011
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.40009, pH264Ctx_69(D)->CurrPic.structure
	mov	r2, r7	@, listltidx
	mov	r1, fp	@, tmp663
	str	ip, [sp]	@ D.40012,
	mov	ip, #1	@ tmp408,
	str	ip, [sp, #4]	@ tmp408,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [r6, #244]	@ D.40002, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r3, #0	@ tmp413,
	str	r3, [r6, #248]	@ tmp413, pH264Ctx_69(D)->CurrSlice.listXsize
	cmp	r2, #0	@ D.40002,
	bne	.L868	@,
.L980:
	ldr	r3, [r4]	@ pH264Ctx_69(D)->pstExtraData, pH264Ctx_69(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _123->s32DecOrderOutput, _123->s32DecOrderOutput
	cmp	r3, #2	@ _123->s32DecOrderOutput,
	bne	.L869	@,
	ldrb	r3, [r8, #555]	@ zero_extendqisi2	@ D.40007, pH264Ctx_69(D)->CurrPic.structure
	cmp	r3, #0	@ D.40007,
	beq	.L985	@,
	cmp	r3, #1	@ D.40007,
	ldr	r3, [r8, #960]	@ pH264Ctx_69(D)->CurrPic.frame_store, pH264Ctx_69(D)->CurrPic.frame_store
	addeq	r3, r3, #436	@ D.40010, pH264Ctx_69(D)->CurrPic.frame_store,
	addne	r3, r3, #472	@ D.40010, pH264Ctx_69(D)->CurrPic.frame_store,
	str	r3, [r10, #2460]	@ D.40010, pH264Ctx_69(D)->pListX
.L871:
	mov	r3, #0	@ D.40002,
	mov	r2, #1	@ D.40002,
	b	.L868	@
.L985:
	ldr	r3, [r8, #960]	@ pH264Ctx_69(D)->CurrPic.frame_store, pH264Ctx_69(D)->CurrPic.frame_store
	add	r3, r3, #400	@ D.40010, pH264Ctx_69(D)->CurrPic.frame_store,
	str	r3, [r10, #2460]	@ D.40010, pH264Ctx_69(D)->pListX
	b	.L871	@
.L904:
	ldr	r7, [r10, #2592]	@ D.40010, pH264Ctx_69(D)->pListX
	b	.L907	@
.L974:
	add	ip, r7, #6720	@ D.39999, j,
	mov	r2, #4	@,
	add	ip, ip, #38	@ D.39999, D.39999,
	ldr	r3, .L986+28	@,
	mov	r1, fp	@, D.40009
	str	ip, [sp, #12]	@ D.39999, %sfp
	add	r8, r4, ip, lsl #2	@ tmp633, pH264Ctx, D.39999,
	add	r8, r8, r2	@ D.40004, tmp633,
	mov	r0, r8	@, D.40004
	bl	qsort	@
	subs	r9, r7, #0	@ j, j
	ldr	ip, [sp, #12]	@ D.39999, %sfp
	bne	.L914	@,
	b	.L886	@
.L975:
	mov	r3, r5, asl #2	@ D.39999, j,
	mov	r1, r7	@, D.40009
	str	r3, [sp, #12]	@ D.39999, %sfp
	mov	r2, r3	@ D.39999, D.39999
	ldr	r3, .L986+12	@,
	add	r0, fp, r2	@, tmp661, D.39999
	mov	r2, #4	@,
	bl	qsort	@
	subs	r9, r5, #0	@ j, j
	bne	.L915	@,
.L971:
	add	ip, sp, #88	@ tmp662,,
	b	.L899	@
.L920:
	mov	r7, ip	@ j, D.40009
	b	.L857	@
.L981:
	add	fp, sp, #24	@ tmp661,,
	mov	r1, ip	@, D.40009
	ldr	r3, .L986+8	@,
	mov	r2, #4	@,
	mov	r0, fp	@, tmp661
	str	ip, [sp, #12]	@ D.40009, %sfp
	bl	qsort	@
	ldr	r7, [r10, #2056]	@ D.40009, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	ldr	ip, [sp, #12]	@ D.40009, %sfp
	cmp	r7, #0	@ D.40009,
	addne	r9, r4, #26368	@ ivtmp.1148, pH264Ctx,
	movne	r5, ip	@ j, D.40009
	addne	r9, r9, #124	@ ivtmp.1148, ivtmp.1148,
	bne	.L918	@,
	ldr	r3, .L986+12	@,
	mov	r2, #4	@,
	mov	r1, r7	@, D.40009
	mov	r0, fp	@, tmp661
	mov	r9, r7	@ j, tmp1
	bl	qsort	@
	b	.L971	@
.L877:
	add	r5, r0, #26880	@ ivtmp.1015, pH264Ctx,
	mov	r1, ip	@, D.40009
	add	r5, r5, #156	@ ivtmp.1015, ivtmp.1015,
	ldr	r3, .L986+24	@,
	mov	r2, #4	@,
	str	ip, [sp, #12]	@ D.40009, %sfp
	mov	r0, r5	@, ivtmp.1015
	bl	qsort	@
	ldr	fp, [r10, #2056]	@ D.40009, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	ldr	ip, [sp, #12]	@ D.40009, %sfp
	cmp	fp, #0	@ D.40009,
	addne	r9, r4, #26368	@ ivtmp.1148, pH264Ctx,
	movne	r7, ip	@ j, D.40009
	addne	r9, r9, #124	@ ivtmp.1148, ivtmp.1148,
	bne	.L916	@,
	ldr	r3, .L986+28	@,
	mov	r2, #4	@,
	mov	r1, fp	@, D.40009
	mov	r0, r5	@, ivtmp.1015
	mov	r9, fp	@ j, tmp1
	bl	qsort	@
	mov	r8, r5	@ D.40004, ivtmp.1015
	b	.L886	@
.L921:
	mov	r5, r7	@ j, j
	b	.L860	@
.L923:
	mov	r7, r9	@ j, j
	b	.L888	@
.L869:
	ldr	r1, .L986+36	@,
	b	.L970	@
.L987:
	.align	2
.L986:
	.word	compare_pic_by_pic_num_desc
	.word	compare_pic_by_lt_pic_num_asc
	.word	compare_fs_by_poc_desc
	.word	compare_fs_by_poc_asc
	.word	compare_fs_by_lt_pic_idx_asc
	.word	.LC30
	.word	compare_pic_by_poc_desc
	.word	compare_pic_by_poc_asc
	.word	compare_fs_by_frame_num_desc
	.word	.LC29
	.fnend
	.size	InitListX, .-InitListX
	.align	2
	.global	DumpList
	.type	DumpList, %function
DumpList:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L990	@ tmp113,
	ldr	r3, [r3]	@ g_PrintEnable, g_PrintEnable
	tst	r3, #8192	@ g_PrintEnable,
	bxeq	lr	@
	b	DumpList.part.5	@
.L991:
	.align	2
.L990:
	.word	g_PrintEnable
	.fnend
	.size	DumpList, .-DumpList
	.align	2
	.global	FindNearestPOCPicId
	.type	FindNearestPOCPicId, %function
FindNearestPOCPicId:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #24576	@ tmp130, pH264Ctx,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r4, [r3, #2052]	@ D.40039, pH264Ctx_8(D)->DPB.used_size
	cmp	r4, #0	@ D.40039,
	beq	.L997	@,
	ldr	r3, [r3, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	add	r2, r0, #49152	@ tmp132, pH264Ctx,
	ldr	r5, [r2, #980]	@ curr_poc, pH264Ctx_8(D)->CurrPic.thispoc
	ldr	lr, [r3, #524]	@ _11->poc, _11->poc
	rsb	lr, lr, r5	@ D.40041, _11->poc, curr_poc
	cmp	lr, #0	@ nearest_poc_diff,
	rsblt	lr, lr, #0	@ nearest_poc_diff, D.40041,
	cmp	r4, #1	@ D.40039,
	bls	.L998	@,
	add	r1, r0, #26368	@ ivtmp.1175, pH264Ctx,
	mov	r2, #1	@ i,
	add	r1, r1, #64	@ ivtmp.1175, ivtmp.1175,
	mov	r0, #0	@ nearest_pic_id,
.L996:
	ldr	ip, [r1, #4]!	@ D.40040, MEM[base: _1, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	r3, [ip, #524]	@ _15->poc, _15->poc
	rsb	r3, r3, r5	@ D.40041, _15->poc, curr_poc
	cmp	r3, #0	@ nearest_poc_diff,
	rsblt	r3, r3, #0	@ nearest_poc_diff, D.40041,
	cmp	r3, lr	@ nearest_poc_diff, nearest_poc_diff
	ldrlt	r0, [ip, #184]	@ nearest_pic_id, _15->fs_image.image_id
	movlt	lr, r3	@ nearest_poc_diff, nearest_poc_diff
	cmp	r2, r4	@ i, D.40039
	bne	.L996	@,
	ldmfd	sp!, {r4, r5, pc}	@
.L998:
	mov	r0, #0	@ nearest_pic_id,
	ldmfd	sp!, {r4, r5, pc}	@
.L997:
	mvn	r0, #0	@ D.40038,
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	FindNearestPOCPicId, .-FindNearestPOCPicId
	.align	2
	.global	FindMinRefIdx
	.type	FindMinRefIdx, %function
FindMinRefIdx:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp151, pH264Ctx,
	ldrb	r2, [r3, #200]	@ zero_extendqisi2	@ pH264Ctx_10(D)->CurrSlice.slice_type, pH264Ctx_10(D)->CurrSlice.slice_type
	cmp	r2, #2	@ pH264Ctx_10(D)->CurrSlice.slice_type,
	bxeq	lr	@
	add	r2, r0, #49152	@ tmp154, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	ip, [r2, #555]	@ zero_extendqisi2	@ pH264Ctx_10(D)->CurrPic.structure, pH264Ctx_10(D)->CurrPic.structure
	cmp	ip, #0	@ pH264Ctx_10(D)->CurrPic.structure,
	bne	.L1033	@,
	ldr	lr, [r3, #244]	@ D.40092, pH264Ctx_10(D)->CurrSlice.listXsize
	add	r5, r0, #26880	@ ivtmp.1201, pH264Ctx,
	mov	r7, ip	@ j, i
	cmp	lr, #0	@ D.40092,
	mov	r4, r5	@ ivtmp.1204, ivtmp.1201
	mov	r6, r5	@ ivtmp.1188, ivtmp.1204
	add	r4, r4, #32	@ ivtmp.1204, ivtmp.1204,
	add	r5, r5, #28	@ ivtmp.1201, ivtmp.1201,
	add	r6, r6, #152	@ ivtmp.1188, ivtmp.1188,
	beq	.L1009	@,
.L1035:
	mov	r2, r6	@ ivtmp.1188, ivtmp.1188
	mov	r0, #32	@ minrefidx,
	mov	r3, #0	@ j,
	b	.L1007	@
.L1006:
	add	r3, r3, #1	@ j, j,
	cmp	r3, lr	@ j, D.40092
	beq	.L1034	@,
.L1007:
	ldr	r1, [r2, #4]!	@ MEM[base: _61, offset: 0B], MEM[base: _61, offset: 0B]
	ldr	r1, [r1, #4]	@ _34->frame_store, _34->frame_store
	ldr	r1, [r1, #552]	@ _35->apc_idc, _35->apc_idc
	cmp	r1, ip	@ _35->apc_idc, i
	bne	.L1006	@,
	cmp	r0, r3	@ minrefidx, j
	movcs	r0, r3	@ minrefidx, j
	add	r3, r3, #1	@ j, j,
	cmp	r3, lr	@ j, D.40092
	str	r0, [r4, #-4]	@ minrefidx, MEM[base: _67, offset: 4294967292B]
	str	r0, [r5, #4]	@ minrefidx, MEM[base: _57, offset: 4B]
	bne	.L1007	@,
.L1034:
	cmp	r0, #31	@ minrefidx,
	bhi	.L1009	@,
.L1008:
	add	ip, ip, #1	@ i, i,
	add	r5, r5, #8	@ ivtmp.1201, ivtmp.1201,
	cmp	ip, #16	@ i,
	add	r4, r4, #8	@ ivtmp.1204, ivtmp.1204,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	lr, #0	@ D.40092,
	bne	.L1035	@,
.L1009:
	str	r7, [r4, #-4]	@ j, MEM[base: _18, offset: 4294967292B]
	str	r7, [r5, #4]	@ j, MEM[base: _68, offset: 4B]
	b	.L1008	@
.L1033:
	ldr	r5, [r3, #244]	@ D.40092, pH264Ctx_10(D)->CurrSlice.listXsize
	add	r6, r0, #26880	@ ivtmp.1221, pH264Ctx,
	mov	lr, #0	@ i,
	cmp	r5, #0	@ D.40092,
	mov	r7, r6	@ ivtmp.1208, ivtmp.1221
	mov	r8, lr	@ j, i
	add	r6, r6, #28	@ ivtmp.1221, ivtmp.1221,
	add	r7, r7, #152	@ ivtmp.1208, ivtmp.1208,
	beq	.L1013	@,
.L1037:
	mov	r1, r7	@ ivtmp.1208, ivtmp.1208
	mov	r4, #32	@ minrefidx,
	mov	r2, #0	@ j,
	b	.L1011	@
.L1010:
	add	r2, r2, #1	@ j, j,
	cmp	r2, r5	@ j, D.40092
	beq	.L1036	@,
.L1011:
	ldr	r3, [r1, #4]!	@ D.40090, MEM[base: _45, offset: 0B]
	ldr	ip, [r3, #4]	@ _14->frame_store, _14->frame_store
	ldrb	r0, [r3]	@ zero_extendqisi2	@ _14->structure, _14->structure
	ldr	r3, [ip, #552]	@ _15->apc_idc, _15->apc_idc
	mov	r3, r3, asl #1	@ D.40092, _15->apc_idc,
	cmp	r0, #2	@ _14->structure,
	orreq	r3, r3, #1	@,, D.40092, D.40092
	cmp	r3, lr	@ D.40092, i
	bne	.L1010	@,
	cmp	r4, r2	@ minrefidx, j
	movcs	r4, r2	@ minrefidx, j
	add	r2, r2, #1	@ j, j,
	cmp	r2, r5	@ j, D.40092
	str	r4, [r6]	@ minrefidx, MEM[base: _6, offset: 0B]
	bne	.L1011	@,
.L1036:
	cmp	r4, #31	@ minrefidx,
	bhi	.L1013	@,
.L1012:
	add	lr, lr, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.1221, ivtmp.1221,
	cmp	lr, #32	@ i,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r5, #0	@ D.40092,
	bne	.L1037	@,
.L1013:
	str	r8, [r6]	@ j, MEM[base: _4, offset: 0B]
	b	.L1012	@
	.fnend
	.size	FindMinRefIdx, .-FindMinRefIdx
	.align	2
	.global	DecList
	.type	DecList, %function
DecList:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	FindNearestPOCPicId	@
	add	r5, r6, #20480	@ tmp154, pH264Ctx,
	mvn	r4, #0	@ tmp129,
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrSlice.slice_type, pH264Ctx_4(D)->CurrSlice.slice_type
	str	r4, [r5, #1828]	@ tmp129, pH264Ctx_4(D)->CurrSlice.picid_refidx0
	cmp	r3, #2	@ pH264Ctx_4(D)->CurrSlice.slice_type,
	str	r0, [r5, #1832]	@, pH264Ctx_4(D)->CurrSlice.picid_nearpoc
	beq	.L1052	@,
	mov	r0, r6	@, pH264Ctx
	bl	InitListX	@
	cmp	r0, #0	@,
	bne	.L1053	@,
	ldr	r4, .L1056	@ tmp155,
	mov	r0, #13	@,
	ldr	r1, .L1056+4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4]	@ g_PrintEnable, g_PrintEnable
	tst	r3, #8192	@ g_PrintEnable,
	bne	.L1054	@,
.L1042:
	mov	r0, r6	@, pH264Ctx
	bl	ReorderListX	@
	mov	r0, r6	@, pH264Ctx
	bl	RepairList	@
	cmp	r0, #0	@,
	bne	.L1044	@,
	mov	r0, r6	@, pH264Ctx
	bl	FindMinRefIdx	@
	add	r3, r6, #24576	@ tmp145, pH264Ctx,
	mov	r0, #13	@,
	ldr	r1, .L1056+8	@,
	ldr	r3, [r3, #2460]	@ D.40106, pH264Ctx_4(D)->pListX
	cmp	r3, #0	@ D.40106,
	ldrne	r3, [r3, #4]	@ _24->frame_store, _24->frame_store
	mvneq	r3, #0	@ D.40102,
	ldrne	r3, [r3, #184]	@ D.40102, _25->fs_image.image_id
	str	r3, [r5, #1828]	@ D.40102, pH264Ctx_4(D)->CurrSlice.picid_refidx0
	bl	dprint_vfmw	@
	ldr	r4, [r4]	@ g_PrintEnable, g_PrintEnable
	ands	r4, r4, #8192	@ D.40105, g_PrintEnable,
	bne	.L1055	@,
	mov	r0, #0	@ D.40102,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1055:
	mov	r0, r6	@, pH264Ctx
	bl	DumpList.part.5	@
	mov	r0, #0	@ D.40102,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1052:
	mov	r0, #0	@ tmp135,
	str	r0, [r5, #244]	@ tmp135, pH264Ctx_4(D)->CurrSlice.listXsize
	str	r0, [r5, #248]	@ tmp135, pH264Ctx_4(D)->CurrSlice.listXsize
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1054:
	mov	r0, r6	@, pH264Ctx
	bl	DumpList.part.5	@
	b	.L1042	@
.L1044:
	mvn	r0, #0	@ D.40102,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1053:
	ldr	r1, .L1056+12	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.40102, tmp129
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1057:
	.align	2
.L1056:
	.word	g_PrintEnable
	.word	.LC32
	.word	.LC33
	.word	.LC31
	.fnend
	.size	DecList, .-DecList
	.align	2
	.global	GetBackPicFromVOQueue
	.type	GetBackPicFromVOQueue, %function
GetBackPicFromVOQueue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r7, r0, #49152	@ tmp152, pH264Ctx,
	mov	r9, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L1076	@,
.L1059:
	ldr	r3, [r7, #2164]	@ pH264Ctx_10(D)->TotalFsNum, pH264Ctx_10(D)->TotalFsNum
	cmp	r3, #0	@ pH264Ctx_10(D)->TotalFsNum,
	addne	r5, r9, #27392	@ ivtmp.1259, pH264Ctx,
	movne	r8, #0	@ i,
	addne	r5, r5, #124	@ ivtmp.1259, ivtmp.1259,
	movne	r6, r8	@ tmp155, i
	beq	.L1066	@,
.L1065:
	sub	r4, r5, #16	@ ivtmp.1245, ivtmp.1259,
	strb	r6, [r5, #-211]	@ tmp155, MEM[base: _51, offset: 4294967085B]
	strb	r6, [r5, #-210]	@ tmp155, MEM[base: _51, offset: 4294967086B]
.L1064:
	ldr	r1, [r4, #4]!	@ D.40151, MEM[base: _38, offset: 0B]
	cmp	r1, #0	@ D.40151,
	beq	.L1063	@,
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r4]	@ tmp155, MEM[base: _38, offset: 0B]
.L1063:
	cmp	r4, r5	@ ivtmp.1245, ivtmp.1259
	bne	.L1064	@,
	ldr	r3, [r7, #2164]	@ pH264Ctx_10(D)->TotalFsNum, pH264Ctx_10(D)->TotalFsNum
	add	r8, r8, #1	@ i, i,
	add	r5, r5, #560	@ ivtmp.1259, ivtmp.1259,
	cmp	r3, r8	@ pH264Ctx_10(D)->TotalFsNum, i
	bhi	.L1065	@,
.L1066:
	ldr	r1, [r7, #2168]	@ D.40149, pH264Ctx_10(D)->TotalPmvNum
	cmp	r1, #0	@ D.40149,
	beq	.L1077	@,
	add	r2, r9, #51200	@ ivtmp.1231, pH264Ctx,
	mov	r3, #0	@ i,
	add	r2, r2, #44	@ ivtmp.1231, ivtmp.1231,
	mov	r0, r3	@ tmp153, i
.L1067:
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ tmp153, MEM[base: _19, offset: 0B]
	cmp	r3, r1	@ i, D.40149
	bne	.L1067	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1076:
	add	r0, r9, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	b	.L1059	@
.L1077:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	GetBackPicFromVOQueue, .-GetBackPicFromVOQueue
	.align	2
	.global	wait_vo
	.type	wait_vo, %function
wait_vo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	wait_vo, .-wait_vo
	.align	2
	.global	GetReRangeFlag
	.type	GetReRangeFlag, %function
GetReRangeFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r0, #20480	@ tmp164, pH264Ctx,
	add	r6, r0, #12288	@ tmp222, pH264Ctx,
	mov	lr, #2208	@ tmp169,
	ldr	r3, [r3, #212]	@ pH264Ctx_4(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_4(D)->CurrSlice.pic_parameter_set_id
	mov	r4, #4000	@ tmp173,
	ldr	ip, [r6, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r6, #1292]	@ pH264Ctx_4(D)->SPS, pH264Ctx_4(D)->SPS
	mov	r5, r1	@ p_dpb_changed, p_dpb_changed
	ldr	r0, [r6, #1272]	@ D.40160, pH264Ctx_4(D)->CurWidthInMb
	.pad #8
	sub	sp, sp, #8	@,,
	mla	r3, lr, r3, ip	@ tmp170, tmp169, pH264Ctx_4(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_4(D)->PPS
	ldr	r1, [r6, #1276]	@ D.40160, pH264Ctx_4(D)->CurHeightInMb
	ldr	r3, [r3, #28]	@ pPPS_8->seq_parameter_set_id, pPPS_8->seq_parameter_set_id
	mla	r4, r4, r3, r2	@ pSPS, tmp173, pPPS_8->seq_parameter_set_id, pH264Ctx_4(D)->SPS
	ldrb	r3, [r4, #18]	@ zero_extendqisi2	@ D.40160, pSPS_12->frame_mbs_only_flag
	ldr	ip, [r4, #3960]	@ pSPS_12->pic_height_in_map_units_minus1, pSPS_12->pic_height_in_map_units_minus1
	rsb	r3, r3, #2	@ D.40160, D.40160,
	ldr	r2, [r4, #3956]	@ pSPS_12->pic_width_in_mbs_minus1, pSPS_12->pic_width_in_mbs_minus1
	mla	r3, ip, r3, r3	@ newh, pSPS_12->pic_height_in_map_units_minus1, D.40160, D.40160
	add	r2, r2, #1	@ neww, pSPS_12->pic_width_in_mbs_minus1,
	cmp	r2, r0	@ neww, D.40160
	cmpeq	r3, r1	@, newh, D.40160
	movne	ip, #1	@ tmp190,
	moveq	ip, #0	@ tmp190,
	bne	.L1080	@,
	add	r8, r7, #24576	@ tmp192, pH264Ctx,
	ldr	lr, [r4, #3980]	@ D.40165, pSPS_12->dpb_size_plus1
	ldr	r8, [r8, #2048]	@ pH264Ctx_4(D)->DPB.size, pH264Ctx_4(D)->DPB.size
	add	r8, r8, #1	@ D.40158, pH264Ctx_4(D)->DPB.size,
	cmp	lr, r8	@ D.40165, D.40158
	movls	r2, ip	@ D.40158, tmp190
	movls	r0, r2	@ ReRangeFlg, D.40158
	bls	.L1081	@,
.L1080:
	ldr	ip, .L1086	@ tmp195,
	ldr	ip, [ip]	@ D.40163, g_event_report
	cmp	ip, #0	@ D.40163,
	beq	.L1085	@,
	add	lr, r7, #49152	@ tmp206, pH264Ctx,
	mov	r0, r0, asl #4	@ tmp197, D.40160,
	mov	r1, r1, asl #4	@ tmp199, D.40160,
	strh	r0, [sp]	@ movhi	@ tmp197, para
	strh	r1, [sp, #2]	@ movhi	@ tmp199, para
	mov	r2, r2, asl #4	@ tmp201, neww,
	mov	r3, r3, asl #4	@ tmp203, newh,
	strh	r2, [sp, #4]	@ movhi	@ tmp201, para
	ldr	r0, [lr, #3688]	@, pH264Ctx_4(D)->ChanID
	mov	r2, sp	@,
	strh	r3, [sp, #6]	@ movhi	@ tmp203, para
	mov	r1, #2	@,
	blx	ip	@ D.40163
	ldr	lr, [r4, #3980]	@ D.40165, pSPS_12->dpb_size_plus1
	mov	r2, #1	@ D.40158,
	mov	r0, r2	@ ReRangeFlg, D.40158
.L1081:
	add	r3, r7, #16384	@ tmp209, pH264Ctx,
	ldr	r6, [r6, #2044]	@ pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id
	ldr	ip, [r4, #744]	@ pSPS_12->seq_parameter_set_id, pSPS_12->seq_parameter_set_id
	ldr	r1, [r3, #1184]	@ pH264Ctx_4(D)->CurrSPS.dpb_size_plus1, pH264Ctx_4(D)->CurrSPS.dpb_size_plus1
	cmp	r6, ip	@ pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id, pSPS_12->seq_parameter_set_id
	cmpeq	r1, lr	@, pH264Ctx_4(D)->CurrSPS.dpb_size_plus1, D.40165
	movne	r3, #1	@ dpb_changed,
	moveq	r3, #0	@ dpb_changed,
	orr	r2, r3, r2	@ dpb_changed, dpb_changed, D.40158
	str	r2, [r5]	@ dpb_changed, *p_dpb_changed_59(D)
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1085:
	mov	r2, #1	@ D.40158,
	ldr	lr, [r4, #3980]	@ D.40165, pSPS_12->dpb_size_plus1
	mov	r0, r2	@ ReRangeFlg, D.40158
	b	.L1081	@
.L1087:
	.align	2
.L1086:
	.word	g_event_report
	.fnend
	.size	GetReRangeFlag, .-GetReRangeFlag
	.global	__aeabi_uidiv
	.global	__aeabi_uidivmod
	.align	2
	.global	DecPOC
	.type	DecPOC, %function
DecPOC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r2, r0, #12288	@ tmp233, pH264Ctx,
	add	r6, r0, #20480	@ tmp539, pH264Ctx,
	mov	r4, #2208	@ tmp241,
	ldr	r3, [r2, #1296]	@ pH264Ctx_22(D)->PPS, pH264Ctx_22(D)->PPS
	mov	r5, #4000	@ tmp245,
	ldr	r1, [r6, #212]	@ pH264Ctx_22(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_22(D)->CurrSlice.pic_parameter_set_id
	mov	ip, #1	@ tmp249,
	ldr	lr, [r2, #1292]	@ pH264Ctx_22(D)->SPS, pH264Ctx_22(D)->SPS
	ldrb	r2, [r6, #203]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.nal_unit_type, pH264Ctx_22(D)->CurrSlice.nal_unit_type
	mla	r3, r4, r1, r3	@ tmp242, tmp241, pH264Ctx_22(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_22(D)->PPS
	sub	r2, r2, #5	@ D.40193, pH264Ctx_22(D)->CurrSlice.nal_unit_type,
	clz	r2, r2	@ D.40193, D.40193
	mov	r2, r2, lsr #5	@ D.40193, D.40193,
	ldr	r3, [r3, #28]	@ pps_29->seq_parameter_set_id, pps_29->seq_parameter_set_id
	mla	r5, r5, r3, lr	@ sps, tmp245, pps_29->seq_parameter_set_id, pH264Ctx_22(D)->SPS
	ldr	r1, [r5, #2908]	@ D.40195, sps_33->pic_order_cnt_type
	ldr	r3, [r5, #2904]	@ sps_33->log2_max_frame_num_minus4, sps_33->log2_max_frame_num_minus4
	cmp	r1, ip	@ D.40195,
	ldr	lr, [r5, #2912]	@ D.40195, sps_33->log2_max_pic_order_cnt_lsb_minus4
	add	r3, r3, #4	@ D.40195, sps_33->log2_max_frame_num_minus4,
	mov	r3, ip, asl r3	@ MaxFrameNum, tmp249,
	beq	.L1090	@,
	bcc	.L1091	@,
	cmp	r1, #2	@ D.40195,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r2, #0	@ D.40193,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	bne	.L1147	@,
	ldr	r1, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r1, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	bne	.L1124	@,
	ldr	r2, [r4, #3476]	@ D.40195, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r0, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	ldr	r1, [r4, #3484]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	cmp	r2, r0	@ D.40195, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	addcc	r1, r1, r3	@ D.40195, D.40195, MaxFrameNum
	strcc	r1, [r4, #3480]	@ D.40195, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	bcs	.L1126	@,
.L1127:
	add	r3, r1, r2	@ D.40195, D.40195, D.40195
	str	r3, [r4, #3468]	@ D.40195, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r0, [r6, #232]	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	mov	r3, r3, asl #1	@ D.40195, D.40195,
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc,
	subeq	r3, r3, #1	@ D.40197, D.40195,
	str	r3, [r4, #3456]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ThisPOC
	ldrb	r0, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1130	@,
	str	r3, [r4, #3452]	@ D.40197, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r3, [r4, #3448]	@ D.40197, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3444]	@ D.40197, pH264Ctx_22(D)->CurrPOC.toppoc
.L1123:
	str	r2, [r4, #3472]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r1, [r4, #3484]	@ D.40197, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1091:
	cmp	r2, #0	@ D.40193,
	add	lr, lr, #4	@ D.40195, D.40195,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	mov	ip, ip, asl lr	@ MaxPicOrderCntLsb, tmp249,
	bne	.L1097	@,
	ldr	r3, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	bne	.L1095	@,
	ldr	lr, [r4, #3420]	@ D.40201, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	ldr	r1, [r4, #3424]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	mov	r2, lr	@ D.40195, D.40201
.L1096:
	ldr	r0, [r4, #3412]	@ D.40195, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	cmp	r0, r1	@ D.40195, D.40195
	bcs	.L1094	@,
	rsb	r3, r0, r1	@ D.40195, D.40195, D.40195
	cmp	r3, ip, lsr #1	@ D.40195, MaxPicOrderCntLsb,
	addcs	r2, r2, ip	@ D.40195, D.40195, MaxPicOrderCntLsb
	strcs	r2, [r4, #3428]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	bcc	.L1094	@,
.L1098:
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1100	@,
.L1149:
	ldr	r3, [r4, #3416]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom
	add	r2, r2, r0	@ D.40197, D.40195, D.40195
	str	r2, [r4, #3444]	@ D.40197, pH264Ctx_22(D)->CurrPOC.toppoc
	add	r3, r2, r3	@ D.40197, D.40197, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom
	str	r3, [r4, #3448]	@ D.40197, pH264Ctx_22(D)->CurrPOC.bottompoc
	cmp	r3, r2	@ D.40197, D.40197
	movge	r3, r2	@ D.40197, D.40197
	str	r3, [r4, #3456]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ThisPOC
.L1101:
	ldr	r2, [r4, #3476]	@ D.40195, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r1, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r3, [r4, #3452]	@ D.40197, pH264Ctx_22(D)->CurrPOC.framepoc
	cmp	r2, r1	@ D.40195, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	strne	r2, [r4, #3472]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	ldr	r3, [r6, #232]	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc,
	ldrne	r2, [r4, #3412]	@ pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	ldrne	r3, [r4, #3428]	@ pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	strne	r2, [r4, #3424]	@ pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	strne	r3, [r4, #3420]	@ pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1090:
	cmp	r2, #0	@ D.40193,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	movne	r3, #0	@ tmp335,
	strne	r3, [r4, #3480]	@ tmp335, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	bne	.L1105	@,
	ldr	r1, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r1, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	beq	.L1106	@,
	mov	r3, r2	@ D.40195, D.40193
	str	r2, [r4, #3484]	@ D.40193, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	str	r2, [r4, #3472]	@ D.40193, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
.L1107:
	str	r3, [r4, #3480]	@ D.40195, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
.L1105:
	ldr	r3, [r5, #2924]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, #0	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle,
	beq	.L1109	@,
	ldr	r3, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r0, [r4, #3480]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	add	r0, r3, r0	@ D.40199, pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r0, [r4, #3468]	@ D.40199, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r7, [r6, #232]	@ D.40199, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	cmp	r7, #0	@ D.40199,
	bne	.L1111	@,
	cmp	r0, #0	@ D.40199,
	beq	.L1112	@,
	sub	r0, r0, #1	@ D.40199, D.40199,
	str	r0, [r4, #3468]	@ D.40199, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
.L1111:
	mov	r3, #0	@ tmp381,
	str	r3, [r4, #3500]	@ tmp381, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ D.40195, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r3	@ D.40195,
	bgt	.L1132	@,
	cmp	r0, #0	@ D.40199,
	beq	.L1115	@,
.L1150:
	sub	r8, r0, #1	@ D.40195, D.40199,
	mov	r0, r8	@, D.40195
	bl	__aeabi_uidiv	@
	mov	r9, r0	@ D.40195,
	mov	r0, r8	@, D.40195
	str	r9, [r4, #3492]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PicOrderCntCycleCnt
	ldr	r1, [r5, #2924]	@, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	bl	__aeabi_uidivmod	@
	ldr	r0, [r4, #3500]	@ pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	mul	r0, r0, r9	@ D.40197, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle, D.40195
	str	r0, [r4, #3496]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ D.40197,
	str	r1, [r4, #3488]	@ D.40197, pH264Ctx_22(D)->CurrPOC.FrameNumInPicOrderCntCycle
	blt	.L1116	@,
	add	r2, r5, #2912	@ ivtmp.1270, sps,
	mov	r3, #0	@ i,
	add	r2, r2, #12	@ ivtmp.1270, ivtmp.1270,
.L1117:
	add	r3, r3, #1	@ i, i,
	ldr	ip, [r2, #4]!	@ MEM[base: _236, offset: 0B], MEM[base: _236, offset: 0B]
	cmp	r1, r3	@ D.40197, i
	add	r0, r0, ip	@ D.40197, D.40197, MEM[base: _236, offset: 0B]
	str	r0, [r4, #3496]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	bge	.L1117	@,
.L1116:
	cmp	r7, #0	@ D.40199,
	ldreq	r3, [r5, #2916]	@ sps_33->offset_for_non_ref_pic, sps_33->offset_for_non_ref_pic
	addeq	r0, r0, r3	@ D.40197, D.40197, sps_33->offset_for_non_ref_pic
	streq	r0, [r4, #3496]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1119	@,
	ldr	r2, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	ldr	r1, [r4, #3464]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	add	r2, r0, r2	@ D.40197, D.40197, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	str	r2, [r4, #3444]	@ D.40197, pH264Ctx_22(D)->CurrPOC.toppoc
	ldr	r3, [r5, #2920]	@ sps_33->offset_for_top_to_bottom_field, sps_33->offset_for_top_to_bottom_field
	add	r3, r2, r3	@ D.40197, D.40197, sps_33->offset_for_top_to_bottom_field
	add	r0, r3, r1	@ D.40197, D.40197, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	str	r0, [r4, #3448]	@ D.40197, pH264Ctx_22(D)->CurrPOC.bottompoc
	cmp	r0, r2	@ D.40197, D.40197
	movge	r0, r2	@ D.40197, D.40197
	str	r0, [r4, #3456]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ThisPOC
.L1120:
	ldr	r2, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r3, [r4, #3480]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r0, [r4, #3452]	@ D.40197, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r2, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r3, [r4, #3484]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1095:
	ldr	lr, [r4, #3440]	@ D.40201, pH264Ctx_22(D)->CurrPOC.last_pic_bottom_field
	cmp	lr, #0	@ D.40201,
	beq	.L1148	@,
.L1097:
	ldr	r0, [r4, #3412]	@ D.40195, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	mov	r3, #0	@ tmp254,
	mov	lr, r3	@ D.40201, tmp254
	mov	r2, r1	@ D.40195, D.40195
	str	r3, [r4, #3420]	@ tmp254, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	str	r3, [r4, #3424]	@ tmp254, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
.L1094:
	cmp	r0, r1	@ D.40195, D.40195
	bls	.L1099	@,
	rsb	r1, r1, r0	@ D.40195, D.40195, D.40195
	cmp	r1, ip, lsr #1	@ D.40195, MaxPicOrderCntLsb,
	rsbhi	r2, ip, r2	@ D.40195, MaxPicOrderCntLsb, D.40195
	strhi	r2, [r4, #3428]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	bhi	.L1098	@,
.L1099:
	str	lr, [r4, #3428]	@ D.40201, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	beq	.L1149	@,
.L1100:
	ldrb	r3, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	add	r3, r2, r0	@ D.40197, D.40195, D.40195
	streq	r3, [r4, #3444]	@ D.40197, pH264Ctx_22(D)->CurrPOC.toppoc
	strne	r3, [r4, #3448]	@ D.40197, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3456]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1101	@
.L1147:
	mov	r3, #0	@ tmp463,
	ldr	r2, [r4, #3476]	@ D.40195, pH264Ctx_22(D)->CurrPOC.frame_num
	mov	r1, r3	@ D.40197, tmp463
	str	r3, [r4, #3480]	@ tmp463, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r3, [r4, #3448]	@ tmp463, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3444]	@ tmp463, pH264Ctx_22(D)->CurrPOC.toppoc
	str	r3, [r4, #3452]	@ tmp463, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r3, [r4, #3456]	@ tmp463, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1123	@
.L1109:
	str	r3, [r4, #3468]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r7, [r6, #232]	@ D.40199, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
.L1112:
	mov	r0, #0	@ tmp536,
	str	r0, [r4, #3500]	@ tmp536, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r3, [r5, #2924]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, r0	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle,
	ble	.L1115	@,
.L1132:
	add	ip, r5, #2912	@ ivtmp.1281, sps,
	mov	r3, #0	@ D.40197,
	add	ip, ip, #12	@ ivtmp.1281, ivtmp.1281,
	mov	r2, r3	@ i, D.40197
.L1114:
	ldr	r1, [ip, #4]!	@ MEM[base: _55, offset: 0B], MEM[base: _55, offset: 0B]
	add	r2, r2, #1	@ i, i,
	add	r3, r3, r1	@ D.40197, D.40197, MEM[base: _55, offset: 0B]
	str	r3, [r4, #3500]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ D.40195, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r2	@ D.40195, i
	bgt	.L1114	@,
	cmp	r0, #0	@ D.40199,
	bne	.L1150	@,
.L1115:
	mov	r0, #0	@ tmp409,
	str	r0, [r4, #3496]	@ tmp409, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	b	.L1116	@
.L1119:
	ldrb	r3, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	ldrne	r2, [r5, #2920]	@ sps_33->offset_for_top_to_bottom_field, sps_33->offset_for_top_to_bottom_field
	ldreq	r3, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	ldrne	r3, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	addne	r0, r0, r2	@ D.40197, D.40197, sps_33->offset_for_top_to_bottom_field
	addeq	r0, r0, r3	@ D.40197, D.40197, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	streq	r0, [r4, #3444]	@ D.40197, pH264Ctx_22(D)->CurrPOC.toppoc
	addne	r0, r0, r3	@ D.40197, D.40197, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	strne	r0, [r4, #3448]	@ D.40197, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r0, [r4, #3456]	@ D.40197, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1120	@
.L1106:
	ldr	r1, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r2, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	cmp	r1, r2	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	bcs	.L1108	@,
	ldr	r2, [r4, #3484]	@ pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	add	r3, r3, r2	@ D.40195, MaxFrameNum, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	str	r3, [r4, #3480]	@ D.40195, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	b	.L1105	@
.L1130:
	ldrb	r0, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	str	r3, [r4, #3452]	@ D.40197, pH264Ctx_22(D)->CurrPOC.framepoc
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	streq	r3, [r4, #3444]	@ D.40197, pH264Ctx_22(D)->CurrPOC.toppoc
	strne	r3, [r4, #3448]	@ D.40197, pH264Ctx_22(D)->CurrPOC.bottompoc
	b	.L1123	@
.L1124:
	str	r2, [r4, #3472]	@ D.40193, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	mov	r1, r2	@ D.40195, D.40193
	str	r2, [r4, #3484]	@ D.40193, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldr	r2, [r4, #3476]	@ D.40195, pH264Ctx_22(D)->CurrPOC.frame_num
.L1126:
	str	r1, [r4, #3480]	@ D.40195, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	b	.L1127	@
.L1148:
	ldr	r3, [r4, #3444]	@ D.40195, pH264Ctx_22(D)->CurrPOC.toppoc
	mov	r2, r1	@ D.40195, D.40195
	str	lr, [r4, #3420]	@ D.40201, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	mov	r1, r3	@ D.40195, D.40195
	str	r3, [r4, #3424]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	b	.L1096	@
.L1108:
	ldr	r3, [r4, #3484]	@ D.40195, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	b	.L1107	@
	.fnend
	.size	DecPOC, .-DecPOC
	.align	2
	.global	CalcPicNum
	.type	CalcPicNum, %function
CalcPicNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #12288	@ tmp214, pH264Ctx,
	add	r2, r0, #20480	@ tmp211, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, #2208	@ tmp216,
	ldr	ip, [r2, #212]	@ pH264Ctx_19(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_19(D)->CurrSlice.pic_parameter_set_id
	mov	lr, #4000	@ tmp223,
	ldr	r1, [r3, #1296]	@ pH264Ctx_19(D)->PPS, pH264Ctx_19(D)->PPS
	add	r6, r0, #49152	@ tmp318, pH264Ctx,
	ldr	r2, [r3, #1292]	@ pH264Ctx_19(D)->SPS, pH264Ctx_19(D)->SPS
	mov	r7, #1	@ tmp227,
	ldrb	r3, [r6, #555]	@ zero_extendqisi2	@ D.40255, pH264Ctx_19(D)->CurrPic.structure
	mla	r1, r4, ip, r1	@ tmp217, tmp216, pH264Ctx_19(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_19(D)->PPS
	cmp	r3, #0	@ D.40255,
	ldr	r1, [r1, #28]	@ _24->seq_parameter_set_id, _24->seq_parameter_set_id
	mla	r2, lr, r1, r2	@ tmp224, tmp223, _24->seq_parameter_set_id, pH264Ctx_19(D)->SPS
	add	lr, r0, #24576	@ tmp317, pH264Ctx,
	ldr	r2, [r2, #2904]	@ pSPS_27->log2_max_frame_num_minus4, pSPS_27->log2_max_frame_num_minus4
	add	r2, r2, #4	@ D.40253, pSPS_27->log2_max_frame_num_minus4,
	mov	r7, r7, asl r2	@ MaxFrameNum, tmp227,
	beq	.L1152	@,
	sub	r5, r3, #1	@ D.40256, D.40255,
	sub	r4, r3, #2	@ D.40256, D.40255,
	ldr	r3, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	clz	r5, r5	@ D.40256, D.40256
	clz	r4, r4	@ D.40256, D.40256
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer,
	mov	r5, r5, lsr #5	@ D.40256, D.40256,
	addne	ip, r0, #26368	@ ivtmp.1327, pH264Ctx,
	mov	r4, r4, lsr #5	@ D.40256, D.40256,
	movne	r2, #0	@ i,
	addne	ip, ip, #124	@ ivtmp.1327, ivtmp.1327,
	beq	.L1172	@,
.L1171:
	ldr	r1, [ip, #4]!	@ D.40248, MEM[base: _127, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _64->is_reference, _64->is_reference
	cmp	r3, #0	@ _64->is_reference,
	beq	.L1166	@,
	ldr	r3, [r1, #512]	@ D.40253, _64->frame_num
	ldr	r8, [r6, #968]	@ pH264Ctx_19(D)->CurrPic.frame_num, pH264Ctx_19(D)->CurrPic.frame_num
	cmp	r3, r8	@ D.40253, pH264Ctx_19(D)->CurrPic.frame_num
	rsbhi	r3, r7, r3	@ D.40253, MaxFrameNum, D.40253
	str	r3, [r1, #516]	@ D.40253, _64->frame_num_wrap
	ldr	r3, [ip]	@ D.40248, MEM[base: _127, offset: 0B]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ D.40255, _73->is_reference
	tst	r1, #1	@ D.40255,
	beq	.L1169	@,
	ldr	r8, [r3, #436]	@ *_73, *_73
	bic	r8, r8, #-16777216	@ D.40253, *_73,
	bic	r8, r8, #255	@ D.40253, D.40253,
	cmp	r8, #65536	@ D.40253,
	ldreq	r1, [r3, #516]	@ _73->frame_num_wrap, _73->frame_num_wrap
	addeq	r1, r5, r1, lsl #1	@ D.40254, D.40256, _73->frame_num_wrap,
	streq	r1, [r3, #448]	@ D.40254, _73->top_field.pic_num
	ldreq	r3, [ip]	@ D.40248, MEM[base: _127, offset: 0B]
	ldreqb	r1, [r3, #2]	@ zero_extendqisi2	@ D.40255, _147->is_reference
.L1169:
	tst	r1, #2	@ D.40255,
	beq	.L1166	@,
	ldr	r1, [r3, #472]	@ *_148, *_148
	bic	r1, r1, #-16777216	@ D.40253, *_148,
	bic	r1, r1, #255	@ D.40253, D.40253,
	cmp	r1, #65536	@ D.40253,
	ldreq	r1, [r3, #516]	@ _148->frame_num_wrap, _148->frame_num_wrap
	addeq	r1, r4, r1, lsl #1	@ D.40254, D.40256, _148->frame_num_wrap,
	streq	r1, [r3, #484]	@ D.40254, _148->bottom_field.pic_num
.L1166:
	ldr	r3, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i, i,
	cmp	r3, r2	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, i
	bhi	.L1171	@,
.L1172:
	ldr	r3, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer,
	beq	.L1197	@,
	add	r0, r0, #26368	@ ivtmp.1316, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #188	@ ivtmp.1316, ivtmp.1316,
.L1177:
	ldr	r1, [r0, #4]!	@ D.40248, MEM[base: _13, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ D.40255, _93->is_reference
	cmp	r2, #0	@ D.40255,
	beq	.L1174	@,
	tst	r2, #1	@ D.40255,
	beq	.L1175	@,
	ldr	ip, [r1, #436]	@ *_93, *_93
	bic	ip, ip, #-16777216	@ D.40253, *_93,
	bic	ip, ip, #255	@ D.40253, D.40253,
	cmp	ip, #256	@ D.40253,
	ldreq	r2, [r1, #520]	@ _93->long_term_frame_idx, _93->long_term_frame_idx
	addeq	r2, r5, r2, lsl #1	@ D.40253, D.40256, _93->long_term_frame_idx,
	streq	r2, [r1, #444]	@ D.40253, _93->top_field.long_term_pic_num
	ldreq	r1, [r0]	@ D.40248, MEM[base: _13, offset: 0B]
	ldreqb	r2, [r1, #2]	@ zero_extendqisi2	@ D.40255, _7->is_reference
.L1175:
	tst	r2, #2	@ D.40255,
	beq	.L1174	@,
	ldr	r2, [r1, #472]	@ *_1, *_1
	bic	r2, r2, #-16777216	@ D.40253, *_1,
	bic	r2, r2, #255	@ D.40253, D.40253,
	cmp	r2, #256	@ D.40253,
	ldreq	r2, [r1, #520]	@ _1->long_term_frame_idx, _1->long_term_frame_idx
	addeq	r2, r4, r2, lsl #1	@ D.40253, D.40256, _1->long_term_frame_idx,
	streq	r2, [r1, #480]	@ D.40253, _1->bottom_field.long_term_pic_num
.L1174:
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bhi	.L1177	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1152:
	ldr	r2, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	cmp	r2, #0	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer,
	addne	r1, r0, #26368	@ ivtmp.1305, pH264Ctx,
	addne	r1, r1, #124	@ ivtmp.1305, ivtmp.1305,
	bne	.L1161	@,
.L1162:
	ldr	r3, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer,
	beq	.L1198	@,
	add	r0, r0, #26368	@ ivtmp.1294, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #188	@ ivtmp.1294, ivtmp.1294,
	b	.L1164	@
.L1163:
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bls	.L1199	@,
.L1164:
	ldr	r2, [r0, #4]!	@ D.40248, MEM[base: _17, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ _55->is_reference, _55->is_reference
	cmp	r1, #3	@ _55->is_reference,
	bne	.L1163	@,
	ldr	r1, [r2, #400]	@ *_55, *_55
	bic	r1, r1, #-16777216	@ D.40253, *_55,
	bic	r1, r1, #255	@ D.40253, D.40253,
	cmp	r1, #256	@ D.40253,
	ldreq	r1, [r2, #520]	@ _55->long_term_frame_idx, _55->long_term_frame_idx
	streq	r1, [r2, #408]	@ _55->long_term_frame_idx, _55->frame.long_term_pic_num
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bhi	.L1164	@,
.L1199:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1200:
	ldr	ip, [r2, #400]	@ *_39, *_39
	bic	ip, ip, #-16777216	@ D.40253, *_39,
	bic	ip, ip, #255	@ D.40253, D.40253,
	cmp	ip, #65536	@ D.40253,
	bne	.L1158	@,
	ldr	ip, [r2, #512]	@ D.40253, _39->frame_num
	ldr	r4, [r6, #968]	@ pH264Ctx_19(D)->CurrPic.frame_num, pH264Ctx_19(D)->CurrPic.frame_num
	rsb	r5, r7, ip	@ D.40253, MaxFrameNum, D.40253
	cmp	ip, r4	@ D.40253, pH264Ctx_19(D)->CurrPic.frame_num
	strhi	r5, [r2, #516]	@ D.40253, _39->frame_num_wrap
	strls	ip, [r2, #516]	@ D.40253, _39->frame_num_wrap
	ldr	r2, [r1]	@ D.40248, MEM[base: _122, offset: 0B]
	ldr	ip, [r2, #516]	@ _50->frame_num_wrap, _50->frame_num_wrap
	str	ip, [r2, #412]	@ _50->frame_num_wrap, _50->frame.pic_num
.L1158:
	ldr	r2, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	add	r3, r3, #1	@ i, i,
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, i
	bls	.L1162	@,
.L1161:
	ldr	r2, [r1, #4]!	@ D.40248, MEM[base: _122, offset: 0B]
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ _39->is_reference, _39->is_reference
	cmp	ip, #3	@ _39->is_reference,
	bne	.L1158	@,
	b	.L1200	@
.L1198:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1197:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	CalcPicNum, .-CalcPicNum
	.align	2
	.global	IsOutDPB
	.type	IsOutDPB, %function
IsOutDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pFrameStore
	beq	.L1206	@,
	add	r3, r0, #24576	@ tmp122, pH264Ctx,
	ldr	ip, [r3, #2052]	@ D.40273, pH264Ctx_5(D)->DPB.used_size
	cmp	ip, #0	@ D.40273,
	beq	.L1206	@,
	ldr	r3, [r3, #1856]	@ pH264Ctx_5(D)->DPB.fs, pH264Ctx_5(D)->DPB.fs
	cmp	r3, r1	@ pH264Ctx_5(D)->DPB.fs, pFrameStore
	beq	.L1208	@,
	add	r0, r0, #26368	@ ivtmp.1340, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #64	@ ivtmp.1340, ivtmp.1340,
	b	.L1203	@
.L1204:
	ldr	r2, [r0, #4]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r2, r1	@ MEM[base: _14, offset: 0B], pFrameStore
	beq	.L1208	@,
.L1203:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.40273
	bne	.L1204	@,
.L1206:
	mov	r0, #1	@ D.40271,
	bx	lr	@
.L1208:
	mov	r0, #0	@ D.40271,
	bx	lr	@
	.fnend
	.size	IsOutDPB, .-IsOutDPB
	.align	2
	.global	WritePicMsg
	.type	WritePicMsg, %function
WritePicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #49152	@ tmp480, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	lr, [r5, #1028]	@ pH264Ctx_21(D)->CurrPic.pmv_address_idc, pH264Ctx_21(D)->CurrPic.pmv_address_idc
	mov	r0, #2	@,
	ldr	ip, [r5, #744]	@ pH264Ctx_21(D)->CurrPic.fs_image.image_id, pH264Ctx_21(D)->CurrPic.fs_image.image_id
	mov	r7, #0	@ tmp265,
	ldrb	r3, [r5, #555]	@ zero_extendqisi2	@ D.40445, pH264Ctx_21(D)->CurrPic.structure
	add	r9, r4, #12288	@ tmp483, pH264Ctx,
	ldr	r2, [r5, #976]	@ pH264Ctx_21(D)->CurrPic.nal_ref_idc, pH264Ctx_21(D)->CurrPic.nal_ref_idc
	add	r8, r4, #16384	@ tmp484, pH264Ctx,
	ldr	r1, .L1246	@,
	stmia	sp, {ip, lr}	@,,
	bl	dprint_vfmw	@
	movw	r2, #49728	@ tmp270,
	str	r7, [r5, #3612]	@ tmp265, pH264Ctx_21(D)->SliceParaNum
	movw	r3, #51376	@ tmp267,
	ldrd	r0, [r4, r2]	@ pH264Ctx_21(D)->CurrPic.fs_image.PTS, pH264Ctx, tmp270
	strd	r0, [r4, r3]	@ pH264Ctx_21(D)->CurrPic.fs_image.PTS, pH264Ctx, tmp267
	ldr	r0, [r5, #3608]	@ pH264Ctx_21(D)->DecSlicePara, pH264Ctx_21(D)->DecSlicePara
	ldr	r1, [r5, #740]	@ pH264Ctx_21(D)->CurrPic.fs_image.image_stride, pH264Ctx_21(D)->CurrPic.fs_image.image_stride
	ldr	r2, [r5, #976]	@ pH264Ctx_21(D)->CurrPic.nal_ref_idc, pH264Ctx_21(D)->CurrPic.nal_ref_idc
	ldrb	r3, [r5, #555]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrPic.structure, pH264Ctx_21(D)->CurrPic.structure
	str	r0, [r5, #3340]	@ pH264Ctx_21(D)->DecSlicePara, pH264Ctx_21(D)->DecPicPara.pFirstSlice
	str	r1, [r5, #3128]	@ pH264Ctx_21(D)->CurrPic.fs_image.image_stride, pH264Ctx_21(D)->DecPicPara.imgstride
	strb	r3, [r5, #2216]	@ pH264Ctx_21(D)->CurrPic.structure, pH264Ctx_21(D)->DecPicPara.pic_structure
	str	r2, [r5, #2232]	@ pH264Ctx_21(D)->CurrPic.nal_ref_idc, pH264Ctx_21(D)->DecPicPara.nal_ref_idc
	ldr	r1, [r5, #1012]	@ pH264Ctx_21(D)->CurrPic.pic_height_in_mb, pH264Ctx_21(D)->CurrPic.pic_height_in_mb
	ldrb	r2, [r9, #1319]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrSPS.mb_adaptive_frame_field_flag, pH264Ctx_21(D)->CurrSPS.mb_adaptive_frame_field_flag
	ldr	r3, [r5, #1016]	@ pH264Ctx_21(D)->CurrPic.frame_height_in_mb, pH264Ctx_21(D)->CurrPic.frame_height_in_mb
	str	r1, [r5, #2236]	@ pH264Ctx_21(D)->CurrPic.pic_height_in_mb, pH264Ctx_21(D)->DecPicPara.pic_height_in_mb
	str	r2, [r5, #2248]	@ pH264Ctx_21(D)->CurrSPS.mb_adaptive_frame_field_flag, pH264Ctx_21(D)->DecPicPara.mb_adaptive_frame_field_flag
	str	r3, [r5, #2240]	@ pH264Ctx_21(D)->CurrPic.frame_height_in_mb, pH264Ctx_21(D)->DecPicPara.frame_height_in_mb
	ldr	r3, [r8, #1160]	@ pH264Ctx_21(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_21(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r3, r3, #1	@ D.40443, pH264Ctx_21(D)->CurrSPS.pic_width_in_mbs_minus1,
	str	r3, [r5, #2244]	@ D.40443, pH264Ctx_21(D)->DecPicPara.pic_width_in_mb
	ldrb	r3, [r9, #1318]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrSPS.frame_mbs_only_flag, pH264Ctx_21(D)->CurrSPS.frame_mbs_only_flag
	strb	r3, [r5, #2219]	@ pH264Ctx_21(D)->CurrSPS.frame_mbs_only_flag, pH264Ctx_21(D)->DecPicPara.frame_mbs_only_flag
	ldr	r3, [r8, #1264]	@ pH264Ctx_21(D)->CurrPPS.transform_8x8_mode_flag, pH264Ctx_21(D)->CurrPPS.transform_8x8_mode_flag
	str	r3, [r5, #2252]	@ pH264Ctx_21(D)->CurrPPS.transform_8x8_mode_flag, pH264Ctx_21(D)->DecPicPara.transform_8x8_mode_flag
	ldrb	r3, [r8, #1204]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_21(D)->CurrPPS.entropy_coding_mode_flag
	str	r3, [r5, #2256]	@ pH264Ctx_21(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_21(D)->DecPicPara.entropy_coding_mode_flag
	ldr	r3, [r9, #2048]	@ pH264Ctx_21(D)->CurrSPS.chroma_format_idc, pH264Ctx_21(D)->CurrSPS.chroma_format_idc
	strb	r3, [r5, #2217]	@ pH264Ctx_21(D)->CurrSPS.chroma_format_idc, pH264Ctx_21(D)->DecPicPara.chroma_format_idc
	ldrb	r3, [r8, #1208]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrPPS.constrained_intra_pred_flag, pH264Ctx_21(D)->CurrPPS.constrained_intra_pred_flag
	str	r3, [r5, #2260]	@ pH264Ctx_21(D)->CurrPPS.constrained_intra_pred_flag, pH264Ctx_21(D)->DecPicPara.constrained_intra_pred_flag
	ldr	r3, [r8, #3456]	@ pH264Ctx_21(D)->CurrPOC.ThisPOC, pH264Ctx_21(D)->CurrPOC.ThisPOC
	str	r3, [r5, #2264]	@ pH264Ctx_21(D)->CurrPOC.ThisPOC, pH264Ctx_21(D)->DecPicPara.ThisPoc
	ldr	r3, [r8, #3444]	@ pH264Ctx_21(D)->CurrPOC.toppoc, pH264Ctx_21(D)->CurrPOC.toppoc
	str	r3, [r5, #2268]	@ pH264Ctx_21(D)->CurrPOC.toppoc, pH264Ctx_21(D)->DecPicPara.TopPoc
	ldr	r2, [r8, #3448]	@ pH264Ctx_21(D)->CurrPOC.bottompoc, pH264Ctx_21(D)->CurrPOC.bottompoc
	ldr	r3, [r5, #960]	@ pH264Ctx_21(D)->CurrPic.frame_store, pH264Ctx_21(D)->CurrPic.frame_store
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	str	r2, [r5, #2272]	@ pH264Ctx_21(D)->CurrPOC.bottompoc, pH264Ctx_21(D)->DecPicPara.BottomPoc
	ldr	r1, [r3, #508]	@, _69->logic_fs_id
	bl	FSP_GetLogicFs	@
	subs	r10, r0, #0	@ pstLogicFs,
	beq	.L1244	@,
	ldr	r2, [r10, #408]	@ D.40442, pstLogicFs_72->pstDecodeFs
	ldr	r3, [r10, #412]	@ D.40442, pstLogicFs_72->pstDispOutFs
	cmp	r2, #0	@ D.40442,
	beq	.L1213	@,
	cmp	r3, #0	@ D.40442,
	beq	.L1213	@,
	add	r3, r4, #51712	@, pH264Ctx,
	add	r2, r4, #51456	@, pH264Ctx,
	add	r1, r4, #51968	@, pH264Ctx,
	add	r3, r3, #220	@,,
	add	r2, r2, #220	@,,
	add	r1, r1, #220	@,,
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	add	r6, r4, #24576	@ tmp482, pH264Ctx,
	bl	FSP_GetDecFsAddrTab	@
	ldr	r3, [r10, #408]	@ pstLogicFs_72->pstDecodeFs, pstLogicFs_72->pstDecodeFs
	add	r2, r4, #51968	@, pH264Ctx,
	add	r1, r4, #52224	@, pH264Ctx,
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	add	r2, r2, #224	@,,
	ldr	r3, [r3, #4]	@ _83->PhyFsID, _83->PhyFsID
	add	r1, r1, #48	@,,
	str	r3, [r5, #2508]	@ _83->PhyFsID, pH264Ctx_21(D)->DecPicPara.CurrPicImgIdc
	bl	FSP_GetPmvAddrTab	@
	ldr	r3, [r5, #1028]	@ pH264Ctx_21(D)->CurrPic.pmv_address_idc, pH264Ctx_21(D)->CurrPic.pmv_address_idc
	str	r3, [r5, #2516]	@ pH264Ctx_21(D)->CurrPic.pmv_address_idc, pH264Ctx_21(D)->DecPicPara.CurrPicPmvIdc
	ldr	r3, [r10, #424]	@ pstLogicFs_72->HalfPmvOffset, pstLogicFs_72->HalfPmvOffset
	str	r3, [r5, #3124]	@ pstLogicFs_72->HalfPmvOffset, pH264Ctx_21(D)->DecPicPara.half_pmvblk_offset
	ldr	r3, [r10, #412]	@ pstLogicFs_72->pstDispOutFs, pstLogicFs_72->pstDispOutFs
	ldr	r3, [r3, #12]	@ _96->PhyAddr, _96->PhyAddr
	str	r3, [r5, #2512]	@ _96->PhyAddr, pH264Ctx_21(D)->DecPicPara.CurrPicImg2DAddr
	ldr	r3, [r10, #412]	@ pstLogicFs_72->pstDispOutFs, pstLogicFs_72->pstDispOutFs
	ldr	r3, [r3, #32]	@ _100->ChromOffset, _100->ChromOffset
	str	r3, [r5, #2520]	@ _100->ChromOffset, pH264Ctx_21(D)->DecPicPara.uv_offset
	ldr	r0, [r6, #2324]	@ D.40443, pH264Ctx_21(D)->APC.size
	cmp	r0, #0	@ D.40443,
	str	r0, [r5, #3332]	@ D.40443, pH264Ctx_21(D)->DecPicPara.ApcSize
	beq	.L1219	@,
	add	fp, r4, #26624	@ ivtmp.1468, pH264Ctx,
	add	r10, r4, #52224	@ ivtmp.1477, pH264Ctx,
	mov	r3, r7	@ i, tmp265
	mov	lr, fp	@ ivtmp.1484, ivtmp.1468
	mov	ip, r10	@ ivtmp.1491, ivtmp.1477
	mov	r1, fp	@ ivtmp.1498, ivtmp.1484
	mov	r2, r10	@ ivtmp.1505, ivtmp.1491
	add	fp, fp, #80	@ ivtmp.1468, ivtmp.1468,
	add	r10, r10, #64	@ ivtmp.1477, ivtmp.1477,
	add	lr, lr, #144	@ ivtmp.1484, ivtmp.1484,
	add	ip, ip, #128	@ ivtmp.1491, ivtmp.1491,
	add	r1, r1, #208	@ ivtmp.1498, ivtmp.1498,
	add	r2, r2, #192	@ ivtmp.1505, ivtmp.1505,
.L1218:
	ldr	r7, [fp, #4]!	@ D.40443, MEM[base: _236, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, D.40443
	str	r7, [r10, #4]!	@ D.40443, MEM[base: _237, offset: 0B]
	ldr	r7, [lr, #4]!	@ D.40443, MEM[base: _238, offset: 0B]
	str	r7, [ip, #4]!	@ D.40443, MEM[base: _239, offset: 0B]
	ldr	r7, [r1, #4]!	@ D.40443, MEM[base: _240, offset: 0B]
	str	r7, [r2, #4]!	@ D.40443, MEM[base: _241, offset: 0B]
	bne	.L1218	@,
.L1219:
	ldrb	r3, [r9, #1325]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrSPS.seq_scaling_matrix_present_flag, pH264Ctx_21(D)->CurrSPS.seq_scaling_matrix_present_flag
	cmp	r3, #0	@ pH264Ctx_21(D)->CurrSPS.seq_scaling_matrix_present_flag,
	bne	.L1245	@,
	ldrb	r3, [r8, #1222]	@ zero_extendqisi2	@ D.40440, pH264Ctx_21(D)->CurrPPS.pic_scaling_matrix_present_flag
	cmp	r3, #0	@ D.40440,
	bne	.L1220	@,
	add	r2, r4, #51200	@ ivtmp.1401, pH264Ctx,
	ldr	ip, .L1246+4	@ tmp481,
	add	r2, r2, #224	@ ivtmp.1401, ivtmp.1401,
.L1221:
	and	r1, r3, #3	@ D.40443, i,
	add	r3, r3, #1	@ i, i,
	cmp	r3, #24	@ i,
	ldr	r1, [ip, r1, asl #2]	@ D.40443, quant_org
	str	r1, [r2, #4]!	@ D.40443, MEM[base: _2, offset: 0B]
	bne	.L1221	@,
	add	r1, r4, #51456	@ ivtmp.1387, pH264Ctx,
	mov	r3, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1387, ivtmp.1387,
.L1222:
	and	r2, r3, #15	@ D.40443, i,
	add	r3, r3, #1	@ i, i,
	cmp	r3, #32	@ i,
	add	r2, ip, r2, lsl #2	@ tmp427, tmp481, D.40443,
	ldr	r2, [r2, #16]	@ D.40443, quant8_org
	str	r2, [r1, #4]!	@ D.40443, MEM[base: _6, offset: 0B]
	bne	.L1222	@,
.L1227:
	cmp	r0, #0	@ D.40443,
	beq	.L1224	@,
	add	r9, r4, #52480	@ ivtmp.1362, pH264Ctx,
	add	r7, r4, #26624	@ ivtmp.1352, pH264Ctx,
	add	r7, r7, #84	@ ivtmp.1352, ivtmp.1352,
	mov	r8, #0	@ i,
	mov	r4, r9	@ ivtmp.1375, ivtmp.1362
	add	r9, r9, #140	@ ivtmp.1362, ivtmp.1362,
	add	r4, r4, #204	@ ivtmp.1375, ivtmp.1375,
.L1230:
	ldr	r2, [r7]	@, MEM[base: _126, offset: 0B]
	mov	r1, #0	@,
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	add	r8, r8, #1	@ i, i,
	bl	FSP_GetStoreType	@
	adds	r0, r0, #0	@ D.40452,,
	movne	r0, #1	@ D.40452,
	str	r0, [r9, #4]!	@ D.40452, MEM[base: _106, offset: 0B]
	ldr	r3, [r7], #4	@ D.40443, MEM[base: _126, offset: 0B]
	str	r3, [r4, #4]!	@ D.40443, MEM[base: _16, offset: 0B]
	ldr	r3, [r6, #2324]	@ pH264Ctx_21(D)->APC.size, pH264Ctx_21(D)->APC.size
	cmp	r3, r8	@ pH264Ctx_21(D)->APC.size, i
	bhi	.L1230	@,
.L1224:
	mov	r0, #0	@ D.40441,
.L1240:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1245:
	ldrb	r3, [r8, #1222]	@ zero_extendqisi2	@ D.40440, pH264Ctx_21(D)->CurrPPS.pic_scaling_matrix_present_flag
.L1220:
	cmp	r3, #1	@ D.40440,
	add	r1, r4, #51200	@ ivtmp.1429, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #224	@ ivtmp.1429, ivtmp.1429,
	beq	.L1225	@,
.L1228:
	add	r3, r2, #4064	@ tmp451, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #2	@ tmp451, tmp451,
	cmp	r2, #24	@ i,
	add	r3, r4, r3, lsl #2	@ tmp452, pH264Ctx, tmp451,
	ldr	r3, [r3, #4]	@ D.40443, pH264Ctx_21(D)->CurrSPS.qmatrix4x4
	str	r3, [r1, #4]!	@ D.40443, MEM[base: _213, offset: 0B]
	bne	.L1228	@,
	add	r1, r4, #51456	@ ivtmp.1443, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1443, ivtmp.1443,
.L1229:
	add	r3, r2, #4080	@ tmp460, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #10	@ tmp460, tmp460,
	cmp	r2, #32	@ i,
	add	r3, r4, r3, lsl #2	@ tmp461, pH264Ctx, tmp460,
	ldr	r3, [r3, #4]	@ D.40443, pH264Ctx_21(D)->CurrSPS.qmatrix8x8
	str	r3, [r1, #4]!	@ D.40443, MEM[base: _211, offset: 0B]
	bne	.L1229	@,
	b	.L1227	@
.L1225:
	add	r3, r2, #4864	@ tmp434, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #28	@ tmp434, tmp434,
	cmp	r2, #24	@ i,
	add	r3, r4, r3, lsl #2	@ tmp435, pH264Ctx, tmp434,
	ldr	r3, [r3, #4]	@ D.40443, pH264Ctx_21(D)->CurrPPS.qmatrix4x4
	str	r3, [r1, #4]!	@ D.40443, MEM[base: _208, offset: 0B]
	bne	.L1225	@,
	add	r1, r4, #51456	@ ivtmp.1415, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1415, ivtmp.1415,
.L1226:
	add	r3, r2, #4864	@ tmp443, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ tmp443, tmp443,
	cmp	r2, #32	@ i,
	add	r3, r4, r3, lsl #2	@ tmp444, pH264Ctx, tmp443,
	ldr	r3, [r3, #4]	@ D.40443, pH264Ctx_21(D)->CurrPPS.qmatrix8x8
	str	r3, [r1, #4]!	@ D.40443, MEM[base: _190, offset: 0B]
	bne	.L1226	@,
	b	.L1227	@
.L1213:
	ldr	r1, .L1246+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40441,
	b	.L1240	@
.L1244:
	ldr	r3, [r5, #960]	@ pH264Ctx_21(D)->CurrPic.frame_store, pH264Ctx_21(D)->CurrPic.frame_store
	ldr	r1, .L1246+12	@,
	ldr	r2, [r3, #508]	@, _73->logic_fs_id
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40441,
	b	.L1240	@
.L1247:
	.align	2
.L1246:
	.word	.LC34
	.word	.LANCHOR1
	.word	.LC36
	.word	.LC35
	.fnend
	.size	WritePicMsg, .-WritePicMsg
	.align	2
	.global	UpdatePicQpInf
	.type	UpdatePicQpInf, %function
UpdatePicQpInf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r1, #28]	@ pCurPic_2(D)->MaxQp, pCurPic_2(D)->MaxQp
	ldr	r3, [r1, #32]	@ pCurPic_2(D)->MinQp, pCurPic_2(D)->MinQp
	cmp	r2, r0	@ pCurPic_2(D)->MaxQp, SlcQp
	movlt	r2, r0	@ D.40458, SlcQp
	cmp	r3, r0	@ pCurPic_2(D)->MinQp, SlcQp
	str	r2, [r1, #28]	@ D.40458, pCurPic_2(D)->MaxQp
	movge	r3, r0	@ D.40458, SlcQp
	str	r3, [r1, #32]	@ D.40458, pCurPic_2(D)->MinQp
	bx	lr	@
	.fnend
	.size	UpdatePicQpInf, .-UpdatePicQpInf
	.align	2
	.global	WriteSliceMsg
	.type	WriteSliceMsg, %function
WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r10, r0, #49152	@ tmp850, pH264Ctx,
	add	r4, r0, #12288	@ tmp849, pH264Ctx,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r3, [r10, #3612]	@ CurrSliceSlotNum, pH264Ctx_42(D)->SliceParaNum
	movw	ip, #4060	@ tmp490,
	ldr	lr, [r10, #3608]	@ D.41056, pH264Ctx_42(D)->DecSlicePara
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r2, r3	@ CurrSliceSlotNum, CurrSliceSlotNum
	str	r3, [sp, #8]	@ CurrSliceSlotNum, %sfp
	mul	ip, ip, r2	@ D.41055, tmp490, CurrSliceSlotNum
	add	r3, r3, #1	@ D.41055, CurrSliceSlotNum,
	str	r3, [r10, #3612]	@ D.41055, pH264Ctx_42(D)->SliceParaNum
	ldr	r3, [r4, #1280]	@ pH264Ctx_42(D)->MaxSliceNum, pH264Ctx_42(D)->MaxSliceNum
	add	r9, lr, ip	@ pCurrSlicePara, D.41056, D.41055
	sub	r3, r3, #1	@ D.41057, pH264Ctx_42(D)->MaxSliceNum,
	cmp	r2, r3	@ CurrSliceSlotNum, D.41057
	addcc	r1, ip, #4048	@ D.41058, D.41055,
	addcc	r1, r1, #12	@ D.41058, D.41058,
	movcs	r1, #0	@ tmp498,
	addcc	r1, lr, r1	@ D.41056, D.41056, D.41058
	str	r1, [r9, #4056]	@ tmp498, pCurrSlicePara_48->pNextSlice
	ldr	r0, [r0, #368]	@ D.41060, pH264Ctx_42(D)->pCurrNal
	ldrb	r6, [r0]	@ zero_extendqisi2	@ i, _56->nal_used_segment
	ldr	r1, [r0, #68]	@ i, _56->nal_segment
	cmp	r6, #1	@ i,
	cmpls	r6, r1	@, i, i
	bcs	.L1252	@,
	add	r7, r6, #3	@ D.41058, i,
	add	r7, r9, r7, lsl #2	@ ivtmp.2083, pCurrSlicePara, D.41058,
.L1253:
	mov	r3, r6, asl #5	@ tmp510, i,
	sub	r3, r3, r6, asl #2	@ tmp511, tmp510, i,
	add	r6, r6, #1	@ i, i,
	add	r0, r0, r3	@ tmp512, D.41060, tmp511
	ldr	r2, [r0, #24]	@ D.41055, _493->stream[i_467].bitsoffset
	str	r2, [r7, #4]!	@ D.41055, MEM[base: _693, offset: 0B]
	ldr	r2, [r5, #368]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->pCurrNal
	add	r2, r2, r3	@ tmp519, pH264Ctx_42(D)->pCurrNal, tmp511
	ldr	r2, [r2, #20]	@ D.41055, _63->stream[i_467].valid_bitlen
	str	r2, [r7, #-8]	@ D.41055, MEM[base: _693, offset: 4294967288B]
	ldr	r2, [r5, #368]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->pCurrNal
	add	r3, r2, r3	@ tmp526, pH264Ctx_42(D)->pCurrNal, tmp511
	ldr	r3, [r3, #28]	@ D.41055, _66->stream[i_467].bytespos
	str	r3, [r7, #8]	@ D.41055, MEM[base: _693, offset: 8B]
	ldr	r0, [r5, #368]	@ D.41060, pH264Ctx_42(D)->pCurrNal
	ldr	r1, [r0, #68]	@ i, _59->nal_segment
	cmp	r1, r6	@ i, i
	movhi	r3, #1	@ tmp534,
	movls	r3, #0	@ tmp534,
	cmp	r6, #1	@ i,
	movhi	r3, #0	@ tmp534,
	cmp	r3, #0	@ tmp534,
	bne	.L1253	@,
.L1252:
	cmp	r1, #1	@ i,
	bhi	.L1258	@,
	add	r1, r1, #3	@ D.41058, i,
	add	r6, r9, #20	@ D.41067, pCurrSlicePara,
	mov	r0, #0	@ tmp861,
	add	r1, r9, r1, lsl #2	@ ivtmp.2057, pCurrSlicePara, D.41058,
.L1257:
	str	r0, [r1, #4]!	@ tmp861, MEM[base: _683, offset: 0B]
	cmp	r1, r6	@ ivtmp.2057, D.41067
	str	r0, [r1, #-8]	@ tmp861, MEM[base: _683, offset: 4294967288B]
	str	r0, [r1, #8]	@ tmp861, MEM[base: _683, offset: 8B]
	bne	.L1257	@,
.L1258:
	ldrb	r1, [r10, #561]	@ zero_extendqisi2	@ D.41059, pH264Ctx_42(D)->CurrPic.MbaffFrameFlag
	add	r3, r5, #16384	@ tmp851, pH264Ctx,
	add	r7, r5, #20480	@ tmp852, pH264Ctx,
	ldr	r2, [sp, #8]	@ CurrSliceSlotNum, %sfp
	str	r3, [sp, #4]	@ tmp851, %sfp
	strb	r1, [r9, #1]	@ D.41059, pCurrSlicePara_48->MbaffFrameFlag
	cmp	r2, #0	@ CurrSliceSlotNum,
	ldr	r1, [r3, #1252]	@ pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26, pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26
	ldr	r0, [r7, #1812]	@ pH264Ctx_42(D)->CurrSlice.slice_qp_delta, pH264Ctx_42(D)->CurrSlice.slice_qp_delta
	add	r1, r1, #26	@ D.41057, pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26,
	add	r1, r1, r0	@ D.41057, D.41057, pH264Ctx_42(D)->CurrSlice.slice_qp_delta
	str	r1, [r9, #32]	@ D.41057, pCurrSlicePara_48->SliceQPy
	bne	.L1354	@,
	ldr	r0, [r10, #960]	@ D.41061, pH264Ctx_42(D)->CurrPic.frame_store
	str	r1, [r0, #428]	@ D.41057, _83->frame.MaxQp
	ldr	r1, [r10, #960]	@ D.41061, pH264Ctx_42(D)->CurrPic.frame_store
	ldr	r0, [r9, #32]	@ pCurrSlicePara_48->SliceQPy, pCurrSlicePara_48->SliceQPy
	str	r0, [r1, #432]	@ pCurrSlicePara_48->SliceQPy, _85->frame.MinQp
.L1259:
	ldr	r1, [r7, #1808]	@ D.41055, pH264Ctx_42(D)->CurrSlice.cabac_init_idc
	str	r1, [r9, #36]	@ D.41055, pCurrSlicePara_48->cabac_init_idc
	ldr	r1, [r7, #260]	@ D.41055, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1
	str	r1, [r9, #40]	@ D.41055, pCurrSlicePara_48->num_ref_idx_l1_active_minus1
	ldr	r1, [r7, #256]	@ D.41055, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1
	str	r1, [r9, #44]	@ D.41055, pCurrSlicePara_48->num_ref_idx_l0_active_minus1
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ D.41059, pH264Ctx_42(D)->CurrSlice.slice_type
	strb	r1, [lr, ip]	@ D.41059, pCurrSlicePara_48->slice_type
	ldr	r1, [r7, #252]	@ D.41055, pH264Ctx_42(D)->CurrSlice.first_mb_in_slice
	str	r1, [r9, #48]	@ D.41055, pCurrSlicePara_48->first_mb_in_slice
	ldrb	r1, [r7, #206]	@ zero_extendqisi2	@ D.41059, pH264Ctx_42(D)->CurrSlice.direct_spatial_mv_pred_flag
	strb	r1, [r9, #2]	@ D.41059, pCurrSlicePara_48->direct_spatial_mv_pred_flag
	ldrb	r1, [r4, #1320]	@ zero_extendqisi2	@ D.41059, pH264Ctx_42(D)->CurrSPS.direct_8x8_inference_flag
	strb	r1, [r9, #3]	@ D.41059, pCurrSlicePara_48->direct_8x8_inference_flag
	ldr	r1, [r7, #244]	@ D.41055, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r1, [r9, #52]	@ D.41055, pCurrSlicePara_48->listXsize
	ldr	r1, [r7, #248]	@ D.41055, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r1, [r9, #56]	@ D.41055, pCurrSlicePara_48->listXsize
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ D.41059, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ D.41059,
	beq	.L1355	@,
	cmp	r1, #0	@ D.41059,
	ldreq	r3, [sp, #4]	@ tmp851, %sfp
	movne	r1, #0	@ tmp591,
	ldreqb	r1, [r3, #1206]	@ zero_extendqisi2	@ D.41059, pH264Ctx_42(D)->CurrPPS.weighted_pred_flag
	strb	r1, [r9, #4]	@ tmp591, pCurrSlicePara_48->weight_flag
.L1261:
	ldr	r3, [sp, #4]	@ tmp851, %sfp
	ldr	r1, [r3, #1256]	@ D.41057, pH264Ctx_42(D)->CurrPPS.chroma_qp_index_offset
	str	r1, [r9, #60]	@ D.41057, pCurrSlicePara_48->chroma_qp_index_offset
	ldr	r1, [r3, #1260]	@ D.41057, pH264Ctx_42(D)->CurrPPS.second_chroma_qp_index_offset
	str	r1, [r9, #64]	@ D.41057, pCurrSlicePara_48->second_chroma_qp_index_offset
	ldr	r1, [r7, #1820]	@ D.41057, pH264Ctx_42(D)->CurrSlice.slice_alpha_c0_offset_div2
	str	r1, [r9, #68]	@ D.41057, pCurrSlicePara_48->slice_alpha_c0_offset_div2
	ldr	r1, [r7, #1824]	@ D.41057, pH264Ctx_42(D)->CurrSlice.slice_beta_offset_div2
	str	r1, [r9, #72]	@ D.41057, pCurrSlicePara_48->slice_beta_offset_div2
	ldr	r1, [r7, #1816]	@ D.41055, pH264Ctx_42(D)->CurrSlice.disable_deblocking_filter_idc
	str	r1, [r9, #76]	@ D.41055, pCurrSlicePara_48->disable_deblocking_filter_idc
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #2	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1300	@,
	ldr	r8, [r7, #244]	@ D.41055, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r8, #0	@ D.41055,
	beq	.L1303	@,
	add	r1, r5, #24576	@ tmp614, pH264Ctx,
	ldr	r1, [r1, #2460]	@ pH264Ctx_42(D)->pListX, pH264Ctx_42(D)->pListX
	ldr	ip, [r1, #4]	@ D.41063, _455->frame_store
	ldrb	r1, [ip]	@ zero_extendqisi2	@ _456->non_existing, _456->non_existing
	cmp	r1, #0	@ _456->non_existing,
	addne	r0, r5, #26880	@ ivtmp.2045, pH264Ctx,
	movne	r1, #0	@ i,
	addne	r0, r0, #156	@ ivtmp.2045, ivtmp.2045,
	bne	.L1268	@,
	b	.L1266	@
.L1270:
	ldr	r3, [r0, #4]!	@ MEM[base: _676, offset: 0B], MEM[base: _676, offset: 0B]
	ldr	ip, [r3, #4]	@ D.41063, _128->frame_store
	ldrb	r3, [ip]	@ zero_extendqisi2	@ _129->non_existing, _129->non_existing
	cmp	r3, #0	@ _129->non_existing,
	beq	.L1266	@,
.L1268:
	add	r1, r1, #1	@ i, i,
	cmp	r1, r8	@ i, D.41055
	bne	.L1270	@,
	mov	r3, #0	@ ExistImgIdc_0,
	str	r3, [sp, #12]	@ ExistImgIdc_0, %sfp
.L1265:
	ldr	r3, [r7, #248]	@ D.41055, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r3, #0	@ D.41055,
	beq	.L1304	@,
	add	r1, r5, #24576	@ tmp629, pH264Ctx,
	ldr	r1, [r1, #2592]	@ pH264Ctx_42(D)->pListX, pH264Ctx_42(D)->pListX
	ldr	ip, [r1, #4]	@ D.41063, _450->frame_store
	ldrb	r1, [ip]	@ zero_extendqisi2	@ _451->non_existing, _451->non_existing
	cmp	r1, #0	@ _451->non_existing,
	addne	r0, r5, #27136	@ ivtmp.2034, pH264Ctx,
	movne	r1, #0	@ i,
	addne	r0, r0, #32	@ ivtmp.2034, ivtmp.2034,
	bne	.L1274	@,
	b	.L1272	@
.L1276:
	ldr	r2, [r0, #4]!	@ MEM[base: _671, offset: 0B], MEM[base: _671, offset: 0B]
	ldr	ip, [r2, #4]	@ D.41063, _142->frame_store
	ldrb	r2, [ip]	@ zero_extendqisi2	@ _143->non_existing, _143->non_existing
	cmp	r2, #0	@ _143->non_existing,
	beq	.L1272	@,
.L1274:
	add	r1, r1, #1	@ i, i,
	cmp	r1, r3	@ i, D.41055
	bne	.L1276	@,
	mov	r3, #0	@ ExistImgIdc_1,
	str	r3, [sp, #16]	@ ExistImgIdc_1, %sfp
.L1271:
	ldrb	ip, [r10, #555]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrPic.structure, pH264Ctx_42(D)->CurrPic.structure
	ldr	r1, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	ip, #0	@ pH264Ctx_42(D)->CurrPic.structure,
	beq	.L1277	@,
.L1359:
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1292	@,
	add	r4, r5, #26880	@ ivtmp.1959, pH264Ctx,
	mov	r6, r9	@ ivtmp.1976, pCurrSlicePara
	add	r4, r4, #156	@ ivtmp.1959, ivtmp.1959,
	mov	fp, #0	@ i,
	ldr	r8, [sp, #12]	@ ExistImgIdc_0, %sfp
	b	.L1291	@
.L1289:
	strb	r3, [r6, #1630]	@ D.41059, MEM[base: _643, offset: 1630B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.41059, _305->is_long_term
	strb	r3, [r6, #1631]	@ D.41059, MEM[base: _643, offset: 1631B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #16]	@ D.41057, _308->poc
	str	r3, [r6, #1656]	@ D.41057, MEM[base: _643, offset: 1656B]
.L1290:
	ldr	r3, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	add	fp, fp, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1959, ivtmp.1959,
	add	r6, r6, #36	@ ivtmp.1976, ivtmp.1976,
	cmp	r3, fp	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bls	.L1292	@,
.L1291:
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r3, [r3, #4]	@ _259->frame_store, _259->frame_store
	ldr	r1, [r3, #508]	@, _260->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _264->frame_store, _264->frame_store
	ldr	r3, [r3, #548]	@ D.41055, _265->pmv_address_idc
	str	r3, [r6, #1636]	@ D.41055, MEM[base: _643, offset: 1636B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _268->frame_store, _268->frame_store
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.41059, _269->is_used
	strb	r3, [r6, #1625]	@ D.41059, MEM[base: _643, offset: 1625B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _272->frame_store, _272->frame_store
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _273->non_existing, _273->non_existing
	cmp	r3, #1	@ _273->non_existing,
	moveq	r0, r8	@ D.41053, ExistImgIdc_0
	beq	.L1288	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r3, [r0, #408]	@ pstLogicFs_263->pstDecodeFs, pstLogicFs_263->pstDecodeFs
	ldrne	r0, [r3, #4]	@ D.41053, _275->PhyFsID
.L1288:
	str	r0, [r6, #1640]	@ D.41053, MEM[base: _643, offset: 1640B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _279->frame_store, _279->frame_store
	ldr	r3, [r3, #552]	@ D.41055, _280->apc_idc
	str	r3, [r6, #1644]	@ D.41055, MEM[base: _643, offset: 1644B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _283->frame_store, _283->frame_store
	ldr	r3, [r3, #524]	@ D.41057, _284->poc
	str	r3, [r6, #1632]	@ D.41057, MEM[base: _643, offset: 1632B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.41059, _287->structure
	strb	r3, [r6, #1624]	@ D.41059, MEM[base: _643, offset: 1624B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _290->frame_store, _290->frame_store
	ldrb	r3, [r3, #400]	@ zero_extendqisi2	@ D.41059, _291->frame.structure
	strb	r3, [r6, #1626]	@ D.41059, MEM[base: _643, offset: 1626B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.41059, _294->structure
	cmp	r3, #1	@ D.41059,
	bne	.L1289	@,
	strb	r3, [r6, #1628]	@ D.41059, MEM[base: _643, offset: 1628B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.41059, _297->is_long_term
	strb	r3, [r6, #1629]	@ D.41059, MEM[base: _643, offset: 1629B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #16]	@ D.41057, _300->poc
	str	r3, [r6, #1652]	@ D.41057, MEM[base: _643, offset: 1652B]
	b	.L1290	@
.L1292:
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1356	@,
.L1280:
	add	r0, r5, #26880	@ ivtmp.1699, pH264Ctx,
	add	r1, r9, #3920	@ ivtmp.1708, pCurrSlicePara,
	add	lr, r9, #4048	@ D.41067, pCurrSlicePara,
	add	r0, r0, #24	@ ivtmp.1699, ivtmp.1699,
	add	r1, r1, #4	@ ivtmp.1708, ivtmp.1708,
	add	lr, lr, #4	@ D.41067, D.41067,
.L1297:
	ldr	r3, [r0, #4]!	@ D.41055, MEM[base: _543, offset: 0B]
	str	r3, [r1, #4]!	@ D.41055, MEM[base: _544, offset: 0B]
	cmp	r1, lr	@ ivtmp.1708, D.41067
	bne	.L1297	@,
	ldr	r3, [sp, #4]	@ tmp851, %sfp
	ldrb	r1, [r3, #1206]	@ zero_extendqisi2	@ D.41059, pH264Ctx_42(D)->CurrPPS.weighted_pred_flag
	cmp	r1, #0	@ D.41059,
	str	r1, [r10, #2500]	@ D.41059, pH264Ctx_42(D)->DecPicPara.weighted_pred_flag
	ldr	r1, [r3, #1248]	@ D.41055, pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc
	str	r1, [r10, #2504]	@ D.41055, pH264Ctx_42(D)->DecPicPara.weighted_bipred_idc
	beq	.L1298	@,
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #0	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1299	@,
.L1298:
	cmp	r1, #1	@ D.41055,
	beq	.L1357	@,
.L1300:
	ldr	r3, [sp, #8]	@ CurrSliceSlotNum, %sfp
	mov	r2, #0	@ tmp609,
	ldr	r1, [r5, #368]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->pCurrNal
	add	r3, r3, #12672	@ tmp607, CurrSliceSlotNum,
	add	r3, r3, #4	@ tmp607, tmp607,
	str	r1, [r5, r3, asl #2]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->SlcInfo[CurrSliceSlotNum_43].pSliceNal
	str	r2, [r5, #368]	@ tmp609, pH264Ctx_42(D)->pCurrNal
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1354:
	ldr	r0, [r10, #960]	@ D.41061, pH264Ctx_42(D)->CurrPic.frame_store
	ldr	r8, [r0, #428]	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp
	ldr	r6, [r0, #432]	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp
	cmp	r8, r1	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp, D.41057
	movlt	r8, r1	@ D.41057, D.41057
	cmp	r6, r1	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp, D.41057
	str	r8, [r0, #428]	@ D.41057, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp
	movge	r6, r1	@ D.41057, D.41057
	str	r6, [r0, #432]	@ D.41057, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp
	b	.L1259	@
.L1266:
	ldr	r1, [ip, #508]	@, _495->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r1, r0, #0	@ pstLogicFs,
	movweq	r2, #7080	@,
	beq	.L1350	@,
	ldr	r1, [r1, #408]	@ pstLogicFs_136->pstDecodeFs, pstLogicFs_136->pstDecodeFs
	ldr	r3, [r1, #4]	@ ExistImgIdc_0, _138->PhyFsID
	str	r3, [sp, #12]	@ ExistImgIdc_0, %sfp
	b	.L1265	@
.L1357:
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1300	@,
.L1299:
	ldr	r2, [r7, #264]	@ D.41055, pH264Ctx_42(D)->CurrSlice.luma_log2_weight_denom
	add	r3, r5, #20736	@ ivtmp.1607, pH264Ctx,
	add	r4, r5, #21504	@ ivtmp.1652, pH264Ctx,
	add	r6, r5, #20992	@ ivtmp.1638, pH264Ctx,
	add	ip, r5, #21760	@ ivtmp.1680, pH264Ctx,
	mov	r8, r3	@ ivtmp.1624, ivtmp.1607
	str	r2, [r9, #80]	@ D.41055, pCurrSlicePara_48->luma_log2_weight_denom
	mov	lr, r4	@ ivtmp.1666, ivtmp.1652
	ldr	r10, [r7, #268]	@ D.41055, pH264Ctx_42(D)->CurrSlice.chroma_log2_weight_denom
	add	r3, r3, #12	@ ivtmp.1607, ivtmp.1607,
	add	r8, r8, #140	@ ivtmp.1624, ivtmp.1624,
	add	r6, r6, #12	@ ivtmp.1638, ivtmp.1638,
	add	r4, r4, #12	@ ivtmp.1652, ivtmp.1652,
	add	lr, lr, #140	@ ivtmp.1666, ivtmp.1666,
	add	ip, ip, #12	@ ivtmp.1680, ivtmp.1680,
	add	fp, r9, #212	@ ivtmp.1631, pCurrSlicePara,
	mov	r0, r9	@ ivtmp.1616, pCurrSlicePara
	mov	r2, r9	@ ivtmp.1620, pCurrSlicePara
	mov	r1, #0	@ i,
	str	r9, [sp, #4]	@ pCurrSlicePara, %sfp
	str	r10, [r0, #84]!	@ D.41055, pCurrSlicePara_48->chroma_log2_weight_denom
.L1301:
	ldr	r10, [r3, #4]!	@ D.41057, MEM[base: _523, offset: 0B]
	add	r1, r1, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.1620, ivtmp.1620,
	str	r10, [r0, #4]!	@ D.41057, MEM[base: _524, offset: 0B]
	ldr	r10, [r8, #4]!	@ D.41057, MEM[base: _525, offset: 0B]
	str	r10, [fp, #4]!	@ D.41057, MEM[base: _526, offset: 0B]
	ldr	r10, [r6, #4]!	@ D.41057, MEM[base: _527, offset: 0B]
	str	r10, [r2, #340]	@ D.41057, MEM[base: _528, offset: 344B]
	ldr	r10, [r4, #4]!	@ D.41057, MEM[base: _529, offset: 0B]
	str	r10, [r2, #852]	@ D.41057, MEM[base: _528, offset: 856B]
	ldr	r10, [lr, #4]!	@ D.41057, MEM[base: _531, offset: 0B]
	str	r10, [r2, #980]	@ D.41057, MEM[base: _528, offset: 984B]
	ldr	r10, [ip, #4]!	@ D.41057, MEM[base: _533, offset: 0B]
	str	r10, [r2, #1108]	@ D.41057, MEM[base: _528, offset: 1112B]
	ldr	r10, [r7, #256]	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r10, r1	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1, i
	bcs	.L1301	@,
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1300	@,
	add	r4, r5, #21248	@ ivtmp.1535, pH264Ctx,
	add	r0, r5, #22016	@ ivtmp.1577, pH264Ctx,
	add	r6, r5, #20992	@ ivtmp.1518, pH264Ctx,
	add	ip, r5, #21760	@ ivtmp.1563, pH264Ctx,
	add	r8, r9, #468	@ ivtmp.1527, pCurrSlicePara,
	add	r3, r9, #596	@ ivtmp.1542, pCurrSlicePara,
	ldr	r9, [sp, #4]	@ ivtmp.1531, %sfp
	mov	lr, r4	@ ivtmp.1549, ivtmp.1535
	mov	r1, r0	@ ivtmp.1591, ivtmp.1577
	add	r6, r6, #140	@ ivtmp.1518, ivtmp.1518,
	add	r4, r4, #12	@ ivtmp.1535, ivtmp.1535,
	add	lr, lr, #140	@ ivtmp.1549, ivtmp.1549,
	add	ip, ip, #140	@ ivtmp.1563, ivtmp.1563,
	add	r0, r0, #12	@ ivtmp.1577, ivtmp.1577,
	add	r1, r1, #140	@ ivtmp.1591, ivtmp.1591,
	mov	r2, #0	@ i,
.L1302:
	ldr	r10, [r6, #4]!	@ D.41057, MEM[base: _11, offset: 0B]
	add	r2, r2, #1	@ i, i,
	add	r9, r9, #4	@ ivtmp.1531, ivtmp.1531,
	str	r10, [r8, #4]!	@ D.41057, MEM[base: _38, offset: 0B]
	ldr	r10, [r4, #4]!	@ D.41057, MEM[base: _436, offset: 0B]
	str	r10, [r3, #4]!	@ D.41057, MEM[base: _29, offset: 0B]
	ldr	r10, [lr, #4]!	@ D.41057, MEM[base: _5, offset: 0B]
	str	r10, [r9, #724]	@ D.41057, MEM[base: _440, offset: 728B]
	ldr	r10, [ip, #4]!	@ D.41057, MEM[base: _439, offset: 0B]
	str	r10, [r9, #1236]	@ D.41057, MEM[base: _440, offset: 1240B]
	ldr	r10, [r0, #4]!	@ D.41057, MEM[base: _445, offset: 0B]
	str	r10, [r9, #1364]	@ D.41057, MEM[base: _440, offset: 1368B]
	ldr	r10, [r1, #4]!	@ D.41057, MEM[base: _448, offset: 0B]
	str	r10, [r9, #1492]	@ D.41057, MEM[base: _440, offset: 1496B]
	ldr	r10, [r7, #260]	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r10, r2	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1, i
	bcs	.L1302	@,
	b	.L1300	@
.L1272:
	ldr	r1, [ip, #508]	@, _496->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r1, r0, #0	@ pstLogicFs,
	beq	.L1358	@,
	ldr	r1, [r1, #408]	@ pstLogicFs_150->pstDecodeFs, pstLogicFs_150->pstDecodeFs
	ldrb	ip, [r10, #555]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrPic.structure, pH264Ctx_42(D)->CurrPic.structure
	ldr	r3, [r1, #4]	@ ExistImgIdc_1, _152->PhyFsID
	cmp	ip, #0	@ pH264Ctx_42(D)->CurrPic.structure,
	ldr	r1, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r3, [sp, #16]	@ ExistImgIdc_1, %sfp
	bne	.L1359	@,
.L1277:
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1285	@,
	add	r6, r5, #26880	@ ivtmp.1801, pH264Ctx,
	ldr	r8, [sp, #12]	@ ExistImgIdc_0, %sfp
	add	r6, r6, #156	@ ivtmp.1801, ivtmp.1801,
	str	r5, [sp, #20]	@ pH264Ctx, %sfp
	mov	fp, ip	@ D.41053, i
	mov	r5, r7	@ tmp852, tmp852
	mov	r4, r9	@ ivtmp.1818, pCurrSlicePara
	mov	r7, ip	@ i, i
.L1284:
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r2, [r2, #4]	@ _158->frame_store, _158->frame_store
	ldr	r1, [r2, #508]	@, _159->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _163->frame_store, _163->frame_store
	ldr	r2, [r2, #548]	@ D.41055, _164->pmv_address_idc
	str	r2, [r4, #1636]	@ D.41055, MEM[base: _581, offset: 1636B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _167->frame_store, _167->frame_store
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.41059, _168->is_used
	strb	r2, [r4, #1625]	@ D.41059, MEM[base: _581, offset: 1625B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _171->frame_store, _171->frame_store
	ldrb	r2, [r2]	@ zero_extendqisi2	@ _172->non_existing, _172->non_existing
	cmp	r2, #1	@ _172->non_existing,
	moveq	r0, r8	@ D.41053, ExistImgIdc_0
	beq	.L1283	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r2, [r0, #408]	@ pstLogicFs_162->pstDecodeFs, pstLogicFs_162->pstDecodeFs
	ldrne	r0, [r2, #4]	@ D.41053, _174->PhyFsID
.L1283:
	str	r0, [r4, #1640]	@ D.41053, MEM[base: _581, offset: 1640B]
	add	r7, r7, #1	@ i, i,
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	add	r4, r4, #36	@ ivtmp.1818, ivtmp.1818,
	ldr	r2, [r2, #4]	@ _178->frame_store, _178->frame_store
	ldr	r2, [r2, #552]	@ D.41055, _179->apc_idc
	str	r2, [r4, #1608]	@ D.41055, MEM[base: _581, offset: 1644B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _182->frame_store, _182->frame_store
	ldr	r2, [r2, #524]	@ D.41057, _183->poc
	str	r2, [r4, #1596]	@ D.41057, MEM[base: _581, offset: 1632B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.41059, _186->is_long_term
	strb	r2, [r4, #1591]	@ D.41059, MEM[base: _581, offset: 1627B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.41059, _189->structure
	strb	r2, [r4, #1590]	@ D.41059, MEM[base: _581, offset: 1626B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _192->frame_store, _192->frame_store
	ldr	r2, [r2, #416]	@ D.41057, _193->frame.poc
	str	r2, [r4, #1612]	@ D.41057, MEM[base: _581, offset: 1648B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _196->frame_store, _196->frame_store
	ldr	r2, [r2, #452]	@ D.41057, _197->top_field.poc
	str	r2, [r4, #1616]	@ D.41057, MEM[base: _581, offset: 1652B]
	ldr	r2, [r6], #4	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _200->frame_store, _200->frame_store
	ldr	r2, [r2, #488]	@ D.41057, _201->bottom_field.poc
	strb	fp, [r4, #1588]	@ D.41053, MEM[base: _581, offset: 1624B]
	str	r2, [r4, #1620]	@ D.41057, MEM[base: _581, offset: 1656B]
	ldr	r2, [r5, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r2, r7	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bhi	.L1284	@,
	mov	r7, r5	@ tmp852, tmp852
	ldr	r5, [sp, #20]	@ pH264Ctx, %sfp
.L1285:
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1280	@,
	ldr	r1, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1280	@,
	mov	fp, #0	@ i,
	add	r8, r5, #27136	@ ivtmp.1717, pH264Ctx,
	mov	r4, fp	@ D.41053, i
	str	r5, [sp, #12]	@ pH264Ctx, %sfp
	mov	r5, r7	@ tmp852, tmp852
	mov	r7, fp	@ i, i
	ldr	fp, [sp, #16]	@ ExistImgIdc_1, %sfp
	add	r8, r8, #32	@ ivtmp.1717, ivtmp.1717,
	mov	r6, r9	@ ivtmp.1734, pCurrSlicePara
.L1287:
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r2, [r2, #4]	@ _209->frame_store, _209->frame_store
	ldr	r1, [r2, #508]	@, _210->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _214->frame_store, _214->frame_store
	ldr	r2, [r2, #548]	@ D.41055, _215->pmv_address_idc
	str	r2, [r6, #2788]	@ D.41055, MEM[base: _552, offset: 2788B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _218->frame_store, _218->frame_store
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.41059, _219->is_used
	strb	r2, [r6, #2777]	@ D.41059, MEM[base: _552, offset: 2777B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _222->frame_store, _222->frame_store
	ldrb	r2, [r2]	@ zero_extendqisi2	@ _223->non_existing, _223->non_existing
	cmp	r2, #1	@ _223->non_existing,
	moveq	r0, fp	@ D.41053, ExistImgIdc_1
	beq	.L1286	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r2, [r0, #408]	@ pstLogicFs_213->pstDecodeFs, pstLogicFs_213->pstDecodeFs
	ldrne	r0, [r2, #4]	@ D.41053, _225->PhyFsID
.L1286:
	str	r0, [r6, #1640]	@ D.41053, MEM[base: _552, offset: 1640B]
	add	r7, r7, #1	@ i, i,
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	add	r6, r6, #36	@ ivtmp.1734, ivtmp.1734,
	ldr	r2, [r2, #4]	@ _229->frame_store, _229->frame_store
	ldr	r2, [r2, #552]	@ D.41055, _230->apc_idc
	str	r2, [r6, #2760]	@ D.41055, MEM[base: _552, offset: 2796B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _233->frame_store, _233->frame_store
	ldr	r2, [r2, #524]	@ D.41057, _234->poc
	str	r2, [r6, #2748]	@ D.41057, MEM[base: _552, offset: 2784B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.41059, _237->is_long_term
	strb	r2, [r6, #2743]	@ D.41059, MEM[base: _552, offset: 2779B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.41059, _240->structure
	strb	r2, [r6, #2742]	@ D.41059, MEM[base: _552, offset: 2778B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _243->frame_store, _243->frame_store
	ldr	r2, [r2, #416]	@ D.41057, _244->frame.poc
	str	r2, [r6, #2764]	@ D.41057, MEM[base: _552, offset: 2800B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _247->frame_store, _247->frame_store
	ldr	r2, [r2, #452]	@ D.41057, _248->top_field.poc
	str	r2, [r6, #2768]	@ D.41057, MEM[base: _552, offset: 2804B]
	ldr	r2, [r8], #4	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _251->frame_store, _251->frame_store
	ldr	r2, [r2, #488]	@ D.41057, _252->bottom_field.poc
	strb	r4, [r6, #2740]	@ D.41053, MEM[base: _552, offset: 2776B]
	str	r2, [r6, #2772]	@ D.41057, MEM[base: _552, offset: 2808B]
	ldr	r2, [r5, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r2, r7	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bhi	.L1287	@,
	mov	r7, r5	@ tmp852, tmp852
	ldr	r5, [sp, #12]	@ pH264Ctx, %sfp
	b	.L1280	@
.L1355:
	ldr	r3, [sp, #4]	@ tmp851, %sfp
	ldr	r1, [r3, #1248]	@ pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc, pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc
	strb	r1, [r9, #4]	@ pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc, pCurrSlicePara_48->weight_flag
	b	.L1261	@
.L1356:
	ldr	r1, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1280	@,
	add	r4, r5, #27136	@ ivtmp.1885, pH264Ctx,
	mov	r6, r9	@ ivtmp.1902, pCurrSlicePara
	add	r4, r4, #32	@ ivtmp.1885, ivtmp.1885,
	mov	r8, #0	@ i,
	ldr	fp, [sp, #16]	@ ExistImgIdc_1, %sfp
	b	.L1296	@
.L1294:
	strb	r3, [r6, #2782]	@ D.41059, MEM[base: _610, offset: 2782B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.41059, _363->is_long_term
	strb	r3, [r6, #2783]	@ D.41059, MEM[base: _610, offset: 2783B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #16]	@ D.41057, _366->poc
	str	r3, [r6, #2808]	@ D.41057, MEM[base: _610, offset: 2808B]
.L1295:
	ldr	r3, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	add	r8, r8, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1885, ivtmp.1885,
	add	r6, r6, #36	@ ivtmp.1902, ivtmp.1902,
	cmp	r3, r8	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bls	.L1280	@,
.L1296:
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r3, [r3, #4]	@ _315->frame_store, _315->frame_store
	ldr	r1, [r3, #508]	@, _316->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _320->frame_store, _320->frame_store
	ldr	r3, [r3, #548]	@ D.41055, _321->pmv_address_idc
	str	r3, [r6, #2788]	@ D.41055, MEM[base: _610, offset: 2788B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _324->frame_store, _324->frame_store
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.41059, _325->is_used
	strb	r3, [r6, #2777]	@ D.41059, MEM[base: _610, offset: 2777B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _328->frame_store, _328->frame_store
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _329->non_existing, _329->non_existing
	cmp	r3, #1	@ _329->non_existing,
	moveq	r0, fp	@ D.41053, ExistImgIdc_1
	beq	.L1293	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r3, [r0, #408]	@ pstLogicFs_319->pstDecodeFs, pstLogicFs_319->pstDecodeFs
	ldrne	r0, [r3, #4]	@ D.41053, _331->PhyFsID
.L1293:
	str	r0, [r6, #2792]	@ D.41053, MEM[base: _610, offset: 2792B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _336->frame_store, _336->frame_store
	ldr	r3, [r3, #552]	@ D.41055, _337->apc_idc
	str	r3, [r6, #2796]	@ D.41055, MEM[base: _610, offset: 2796B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _340->frame_store, _340->frame_store
	ldr	r3, [r3, #524]	@ D.41057, _341->poc
	str	r3, [r6, #2784]	@ D.41057, MEM[base: _610, offset: 2784B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.41059, _344->structure
	strb	r3, [r6, #2776]	@ D.41059, MEM[base: _610, offset: 2776B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _347->frame_store, _347->frame_store
	ldrb	r3, [r3, #400]	@ zero_extendqisi2	@ D.41059, _348->frame.structure
	strb	r3, [r6, #2778]	@ D.41059, MEM[base: _610, offset: 2778B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.41059, _351->structure
	cmp	r3, #1	@ D.41059,
	bne	.L1294	@,
	strb	r3, [r6, #2780]	@ D.41059, MEM[base: _610, offset: 2780B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.41059, _355->is_long_term
	strb	r3, [r6, #2781]	@ D.41059, MEM[base: _610, offset: 2781B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #16]	@ D.41057, _358->poc
	str	r3, [r6, #2804]	@ D.41057, MEM[base: _610, offset: 2804B]
	b	.L1295	@
.L1303:
	str	r8, [sp, #12]	@ D.41055, %sfp
	b	.L1265	@
.L1304:
	str	r3, [sp, #16]	@ D.41055, %sfp
	b	.L1271	@
.L1358:
	movw	r2, #7101	@,
.L1350:
	ldr	r1, .L1360	@,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L1361:
	.align	2
.L1360:
	.word	.LC37
	.fnend
	.size	WriteSliceMsg, .-WriteSliceMsg
	.align	2
	.global	H264_GetPicStreamSize
	.type	H264_GetPicStreamSize, %function
H264_GetPicStreamSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #49152	@ tmp122, pH264Ctx,
	ldr	r2, [r0, #3340]	@ pH264SliceParam, pH264Ctx_4(D)->DecPicPara.pFirstSlice
	cmp	r2, #0	@ pH264SliceParam,
	beq	.L1365	@,
	mov	r0, #0	@ TotalSize,
.L1364:
	ldr	r3, [r2, #8]	@ pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	ldr	r1, [r2, #12]	@ pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	ldr	r2, [r2, #4056]	@ pH264SliceParam, pH264SliceParam_18->pNextSlice
	add	r3, r3, r1	@ D.41071, pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	add	r3, r3, #7	@ D.41071, D.41071,
	cmp	r2, #0	@ pH264SliceParam,
	add	r0, r0, r3, lsr #3	@ TotalSize, TotalSize, D.41071,
	bne	.L1364	@,
	bx	lr	@
.L1365:
	mov	r0, r2	@ TotalSize, pH264SliceParam
	bx	lr	@
	.fnend
	.size	H264_GetPicStreamSize, .-H264_GetPicStreamSize
	.align	2
	.global	SliceCheck
	.type	SliceCheck, %function
SliceCheck:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #20480	@ tmp128, pH264Ctx,
	ldr	r1, .L1379	@,
	add	r6, r0, #49152	@ tmp130, pH264Ctx,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #252]	@ D.41075, pH264Ctx_5(D)->CurrSlice.first_mb_in_slice
	ldr	r3, [r6, #3628]	@ pH264Ctx_5(D)->SeErrFlg, pH264Ctx_5(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_5(D)->SeErrFlg,
	bne	.L1377	@,
	cmp	r0, #262144	@ D.41075,
	bcs	.L1378	@,
	add	r2, r4, #12288	@ tmp135, pH264Ctx,
	ldr	r1, [r2, #1272]	@ pH264Ctx_5(D)->CurWidthInMb, pH264Ctx_5(D)->CurWidthInMb
	ldr	r3, [r2, #1276]	@ pH264Ctx_5(D)->CurHeightInMb, pH264Ctx_5(D)->CurHeightInMb
	mul	r3, r3, r1	@ D.41076, pH264Ctx_5(D)->CurHeightInMb, pH264Ctx_5(D)->CurWidthInMb
	sub	r3, r3, #1	@ D.41076, D.41076,
	cmp	r0, r3	@ D.41075, D.41076
	bhi	.L1377	@,
	mov	r0, r4	@, pH264Ctx
	ldr	r1, .L1379+4	@,
	bl	ue_v	@
	ldr	r1, .L1379+8	@,
	mov	r2, r0	@, SliceType
	mov	r4, r0	@ SliceType,
	mov	r0, #19	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #3628]	@ pH264Ctx_5(D)->SeErrFlg, pH264Ctx_5(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_5(D)->SeErrFlg,
	bne	.L1377	@,
	cmp	r4, #9	@ SliceType,
	bhi	.L1372	@,
	mov	r1, #1	@ tmp147,
	movw	r0, #297	@ D.41075,
	mov	r2, r1, asl r4	@ D.41075, tmp147,
	and	r0, r0, r2	@ D.41075, D.41075, D.41075
	cmp	r0, #0	@ D.41075,
	bne	.L1373	@,
	ands	r3, r2, #660	@ D.41075, D.41075,
	bne	.L1374	@,
	tst	r2, #66	@ D.41075,
	beq	.L1372	@,
	strb	r1, [r5, #200]	@ tmp147, pH264Ctx_5(D)->CurrSlice.slice_type
	mov	r0, r3	@ D.41074, D.41075
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1373:
	strb	r3, [r5, #200]	@ pH264Ctx_5(D)->SeErrFlg, pH264Ctx_5(D)->CurrSlice.slice_type
	mov	r0, r3	@ D.41074, pH264Ctx_5(D)->SeErrFlg
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1372:
	mov	r2, r4	@, SliceType
	ldr	r1, .L1379+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1377:
	mvn	r0, #0	@ D.41074,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1374:
	mov	r3, #2	@ tmp154,
	strb	r3, [r5, #200]	@ tmp154, pH264Ctx_5(D)->CurrSlice.slice_type
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1378:
	ldr	r1, .L1379+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41074,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1380:
	.align	2
.L1379:
	.word	.LC38
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC39
	.fnend
	.size	SliceCheck, .-SliceCheck
	.align	2
	.global	PPSSPSCheck
	.type	PPSSPSCheck, %function
PPSSPSCheck:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #20480	@ tmp125, pH264Ctx,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r4, r4, #12288	@ tmp131, pH264Ctx,
	ldr	r1, .L1388	@,
	mov	r0, #19	@,
	ldr	r2, [r5, #212]	@, pH264Ctx_4(D)->CurrSlice.pic_parameter_set_id
	bl	dprint_vfmw	@
	ldr	r1, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	ldr	r2, [r5, #212]	@ D.41085, pH264Ctx_4(D)->CurrSlice.pic_parameter_set_id
	mov	r3, #2208	@ tmp133,
	mla	r3, r3, r2, r1	@ pPPS, tmp133, D.41085, pH264Ctx_4(D)->PPS
	ldrb	r1, [r3, #19]	@ zero_extendqisi2	@ pPPS_10->is_valid, pPPS_10->is_valid
	cmp	r1, #0	@ pPPS_10->is_valid,
	beq	.L1386	@,
	ldr	r2, [r3, #28]	@ D.41085, pPPS_10->seq_parameter_set_id
	mov	r3, #4000	@ tmp141,
	ldr	r1, [r4, #1292]	@ pH264Ctx_4(D)->SPS, pH264Ctx_4(D)->SPS
	mla	r3, r3, r2, r1	@ tmp142, tmp141, D.41085, pH264Ctx_4(D)->SPS
	ldrb	r3, [r3, #23]	@ zero_extendqisi2	@ pSPS_16->is_valid, pSPS_16->is_valid
	cmp	r3, #0	@ pSPS_16->is_valid,
	beq	.L1387	@,
	mov	r0, #0	@ D.41084,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1386:
	ldr	r1, .L1388+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41084,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1387:
	ldr	r1, .L1388+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41084,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1389:
	.align	2
.L1388:
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.fnend
	.size	PPSSPSCheck, .-PPSSPSCheck
	.align	2
	.global	PPSSPSCheckTmpId
	.type	PPSSPSCheckTmpId, %function
PPSSPSCheckTmpId:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, r1	@, tmp_pic_parameter_set_id
	mov	r5, r1	@ tmp_pic_parameter_set_id, tmp_pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, .L1399	@,
	mov	r0, #19	@,
	bl	dprint_vfmw	@
	add	r0, r4, #12288	@ tmp128, pH264Ctx,
	mov	r3, #2208	@ tmp130,
	ldr	r2, [r0, #1296]	@ pH264Ctx_6(D)->PPS, pH264Ctx_6(D)->PPS
	mla	r3, r3, r5, r2	@ pPPS, tmp130, tmp_pic_parameter_set_id, pH264Ctx_6(D)->PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ pPPS_9->is_valid, pPPS_9->is_valid
	cmp	r2, #0	@ pPPS_9->is_valid,
	beq	.L1396	@,
	ldr	r1, [r0, #1284]	@ pH264Ctx_6(D)->MaxSpsNum, pH264Ctx_6(D)->MaxSpsNum
	ldr	r2, [r3, #28]	@ D.41101, pPPS_9->seq_parameter_set_id
	sub	r3, r1, #1	@ D.41103, pH264Ctx_6(D)->MaxSpsNum,
	cmp	r2, r3	@ D.41101, D.41103
	bhi	.L1397	@,
	ldr	r1, [r0, #1292]	@ pH264Ctx_6(D)->SPS, pH264Ctx_6(D)->SPS
	mov	r3, #4000	@ tmp143,
	mla	r3, r3, r2, r1	@ tmp144, tmp143, D.41101, pH264Ctx_6(D)->SPS
	ldrb	r3, [r3, #23]	@ zero_extendqisi2	@ pSPS_19->is_valid, pSPS_19->is_valid
	cmp	r3, #0	@ pSPS_19->is_valid,
	beq	.L1398	@,
	mov	r0, #0	@ D.41099,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1396:
	mov	r2, r5	@, tmp_pic_parameter_set_id
	ldr	r1, .L1399+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41099,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1397:
	ldr	r1, .L1399+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41099,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1398:
	ldr	r1, .L1399+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41099,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1400:
	.align	2
.L1399:
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.fnend
	.size	PPSSPSCheckTmpId, .-PPSSPSCheckTmpId
	.align	2
	.global	IsNewPic
	.type	IsNewPic, %function
IsNewPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp301, pH264Ctx,
	add	r1, r0, #12288	@ tmp182, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r1, [r1, #2044]	@ pH264Ctx_7(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_7(D)->CurrSPS.seq_parameter_set_id
	ldr	ip, [r3, #1852]	@ pH264Ctx_7(D)->PrevSlice.seq_parameter_set_id, pH264Ctx_7(D)->PrevSlice.seq_parameter_set_id
	ldr	r2, [r3, #1856]	@ pH264Ctx_7(D)->PrevSlice.pic_parameter_set_id, pH264Ctx_7(D)->PrevSlice.pic_parameter_set_id
	ldr	lr, [r3, #212]	@ pH264Ctx_7(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_7(D)->CurrSlice.pic_parameter_set_id
	ldr	r5, [r3, #1864]	@ pH264Ctx_7(D)->PrevSlice.frame_num, pH264Ctx_7(D)->PrevSlice.frame_num
	cmp	r2, lr	@ pH264Ctx_7(D)->PrevSlice.pic_parameter_set_id, pH264Ctx_7(D)->CurrSlice.pic_parameter_set_id
	cmpeq	ip, r1	@, pH264Ctx_7(D)->PrevSlice.seq_parameter_set_id, pH264Ctx_7(D)->CurrSPS.seq_parameter_set_id
	ldr	r4, [r3, #220]	@ pH264Ctx_7(D)->CurrSlice.frame_num, pH264Ctx_7(D)->CurrSlice.frame_num
	ldrb	lr, [r3, #1848]	@ zero_extendqisi2	@ D.41113, pH264Ctx_7(D)->PrevSlice.field_pic_flag
	ldrb	ip, [r3, #201]	@ zero_extendqisi2	@ D.41113, pH264Ctx_7(D)->CurrSlice.field_pic_flag
	movne	r1, #1	@ tmp195,
	moveq	r1, #0	@ tmp195,
	cmp	r5, r4	@ pH264Ctx_7(D)->PrevSlice.frame_num, pH264Ctx_7(D)->CurrSlice.frame_num
	moveq	r2, r1	@, tmp205, tmp195
	orrne	r2, r1, #1	@,, tmp205, tmp195
	cmp	lr, ip	@ D.41113, D.41113
	orrne	r2, r2, #1	@,, D.41111, tmp205
	cmp	lr, #0	@ D.41113,
	cmpne	ip, #0	@, D.41113,
	beq	.L1403	@,
	ldrb	ip, [r3, #1849]	@ zero_extendqisi2	@ pH264Ctx_7(D)->PrevSlice.bottom_field_flag, pH264Ctx_7(D)->PrevSlice.bottom_field_flag
	ldrb	r1, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_7(D)->CurrSlice.bottom_field_flag, pH264Ctx_7(D)->CurrSlice.bottom_field_flag
	cmp	ip, r1	@ pH264Ctx_7(D)->PrevSlice.bottom_field_flag, pH264Ctx_7(D)->CurrSlice.bottom_field_flag
	orrne	r2, r2, #1	@,, result, D.41111
.L1403:
	ldr	r1, [r3, #1860]	@ D.41112, pH264Ctx_7(D)->PrevSlice.nal_ref_idc
	ldr	ip, [r3, #232]	@ D.41112, pH264Ctx_7(D)->CurrSlice.nal_ref_idc
	cmp	r1, ip	@ D.41112, D.41112
	moveq	r1, #0	@ D.41112,
	beq	.L1404	@,
	cmp	ip, #0	@ D.41112,
	cmpne	r1, #0	@, D.41112,
	moveq	r1, #1	@ D.41112,
	movne	r1, #0	@ D.41112,
.L1404:
	ldrb	ip, [r3, #1850]	@ zero_extendqisi2	@ D.41113, pH264Ctx_7(D)->PrevSlice.nal_unit_type
	ldrb	lr, [r3, #203]	@ zero_extendqisi2	@ D.41113, pH264Ctx_7(D)->CurrSlice.nal_unit_type
	cmp	ip, lr	@ D.41113, D.41113
	orrne	r2, r2, #1	@,, D.41114, result
	cmp	lr, #5	@ D.41113,
	cmpeq	ip, #5	@, D.41113,
	orr	r2, r2, r1	@ result, D.41114, D.41112
	beq	.L1413	@,
.L1405:
	add	r0, r0, #16384	@ tmp257, pH264Ctx,
	ldr	r1, [r0, #112]	@ D.41112, pH264Ctx_7(D)->CurrSPS.pic_order_cnt_type
	cmp	r1, #0	@ D.41112,
	bne	.L1406	@,
	ldr	r1, [r3, #1872]	@ pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb, pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb
	ldr	lr, [r0, #3416]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom
	ldr	ip, [r3, #1876]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom, pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r0, [r0, #3412]	@ pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb
	cmp	r1, r0	@ pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb, pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb
	cmpeq	ip, lr	@, pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom
	movne	r1, #1	@ D.41114,
	moveq	r1, #0	@ D.41114,
	orr	r2, r2, r1	@ result, result, D.41114
.L1407:
	ldr	r4, [r3, #252]	@ pH264Ctx_7(D)->CurrSlice.first_mb_in_slice, pH264Ctx_7(D)->CurrSlice.first_mb_in_slice
	mov	r0, #19	@,
	ldr	r1, .L1414	@,
	cmp	r4, #0	@ pH264Ctx_7(D)->CurrSlice.first_mb_in_slice,
	movne	r4, r2	@, result, result
	orreq	r4, r2, #1	@,, result, result
	mov	r2, r4	@, result
	bl	dprint_vfmw	@
	mov	r0, r4	@, result
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1406:
	cmp	r1, #1	@ D.41112,
	bne	.L1407	@,
	ldr	r1, [r3, #1880]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt
	ldr	lr, [r0, #3464]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	ldr	ip, [r3, #1884]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt
	ldr	r0, [r0, #3460]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	cmp	r1, r0	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	cmpeq	ip, lr	@, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	movne	r1, #1	@ D.41114,
	moveq	r1, #0	@ D.41114,
	orr	r2, r2, r1	@ result, result, D.41114
	b	.L1407	@
.L1413:
	ldr	ip, [r3, #1868]	@ pH264Ctx_7(D)->PrevSlice.idr_pic_id, pH264Ctx_7(D)->PrevSlice.idr_pic_id
	ldr	r1, [r3, #240]	@ pH264Ctx_7(D)->CurrSlice.idr_pic_id, pH264Ctx_7(D)->CurrSlice.idr_pic_id
	cmp	ip, r1	@ pH264Ctx_7(D)->PrevSlice.idr_pic_id, pH264Ctx_7(D)->CurrSlice.idr_pic_id
	orrne	r2, r2, #1	@,, result, result
	b	.L1405	@
.L1415:
	.align	2
.L1414:
	.word	.LC50
	.fnend
	.size	IsNewPic, .-IsNewPic
	.align	2
	.global	ref_pic_list_reordering
	.type	ref_pic_list_reordering, %function
ref_pic_list_reordering:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r3, r0, #12288	@ tmp167, pH264Ctx,
	add	r4, r0, #20480	@ tmp280, pH264Ctx,
	mov	r5, #2208	@ tmp175,
	ldr	r2, [r3, #1296]	@ pH264Ctx_14(D)->PPS, pH264Ctx_14(D)->PPS
	mov	lr, #4000	@ tmp179,
	ldr	r1, [r4, #212]	@ pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id
	add	r8, r0, #16384	@ tmp278, pH264Ctx,
	ldr	r3, [r3, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mov	ip, #0	@ tmp183,
	mov	r6, #1	@ tmp194,
	mla	r2, r5, r1, r2	@ tmp176, tmp175, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	ldr	r2, [r2, #28]	@ pPPS_18->seq_parameter_set_id, pPPS_18->seq_parameter_set_id
	strb	ip, [r8, #3504]	@ tmp183, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	strb	ip, [r8, #3505]	@ tmp183, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	mla	r3, lr, r2, r3	@ pSPS, tmp179, pPPS_18->seq_parameter_set_id, pH264Ctx_14(D)->SPS
	ldrb	r1, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_14(D)->CurrSlice.field_pic_flag, pH264Ctx_14(D)->CurrSlice.field_pic_flag
	cmp	r1, ip	@ pH264Ctx_14(D)->CurrSlice.field_pic_flag,
	ldr	r3, [r3, #2904]	@ pSPS_22->log2_max_frame_num_minus4, pSPS_22->log2_max_frame_num_minus4
	addne	r3, r3, #5	@ D.41147, pSPS_22->log2_max_frame_num_minus4,
	addeq	r3, r3, #4	@ D.41147, pSPS_22->log2_max_frame_num_minus4,
	mov	r6, r6, asl r3	@ MaxPicNum, tmp197,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.41149, pH264Ctx_14(D)->CurrSlice.slice_type
	cmp	r3, #1	@ D.41149,
	addhi	r5, r0, #49152	@ tmp279, pH264Ctx,
	bls	.L1471	@,
.L1470:
	ldr	r3, [r5, #3628]	@ D.41152, pH264Ctx_14(D)->SeErrFlg
.L1435:
	adds	r3, r3, #0	@ D.41154, D.41152,
	movne	r3, #1	@ D.41154,
	rsb	r0, r3, #0	@ D.41145, D.41154
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1471:
	ldr	r1, .L1476	@,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41149,
	strb	r0, [r8, #3504]	@ D.41149, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r0, #0	@ D.41149,
	beq	.L1469	@,
	ldr	r3, [r4, #256]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1
	cmn	r3, #2	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	beq	.L1449	@,
	add	r10, r7, #19712	@ ivtmp.2133, pH264Ctx,
	add	r5, r7, #49152	@ tmp279, pH264Ctx,
	add	r10, r10, #176	@ ivtmp.2133, ivtmp.2133,
	mov	r9, #0	@ i,
	b	.L1432	@
.L1427:
	cmp	r0, #2	@ D.41147,
	beq	.L1472	@,
.L1430:
	ldr	r3, [r4, #256]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r3, #2	@ D.41147, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r3, r9	@ D.41147, i
	bls	.L1473	@,
.L1432:
	ldr	r1, .L1476+4	@,
	mov	r0, r7	@, pH264Ctx
	bl	ue_v	@
	add	r9, r9, #1	@ i, i,
	cmp	r0, #3	@ D.41147,
	str	r0, [r10, #4]!	@ D.41147, MEM[base: _61, offset: 0B]
	ldr	r3, [r5, #3628]	@ D.41147, pH264Ctx_14(D)->SeErrFlg
	bhi	.L1423	@,
	cmp	r3, #0	@ D.41147,
	bne	.L1423	@,
	cmp	r0, #3	@ D.41147,
	beq	.L1426	@,
	cmp	r0, #1	@ D.41147,
	bhi	.L1427	@,
	ldr	r1, .L1476+8	@,
	mov	r0, r7	@, pH264Ctx
	bl	ue_v	@
	cmp	r6, r0	@ MaxPicNum, D.41147
	str	r0, [r10, #264]	@ D.41147, MEM[base: _61, offset: 264B]
	ldr	r3, [r5, #3628]	@ D.41147, pH264Ctx_14(D)->SeErrFlg
	bls	.L1429	@,
	cmp	r3, #0	@ D.41147,
	beq	.L1430	@,
.L1429:
	mov	r2, r0	@, D.41147
	ldr	r1, .L1476+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41145,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1472:
	ldr	r1, .L1476+16	@,
	mov	r0, r7	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r10, #528]	@, MEM[base: _61, offset: 528B]
	b	.L1430	@
.L1469:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.41149, pH264Ctx_14(D)->CurrSlice.slice_type
	add	r5, r7, #49152	@ tmp279, pH264Ctx,
.L1419:
	cmp	r3, #1	@ D.41149,
	bne	.L1470	@,
	ldr	r1, .L1476+20	@,
	mov	r0, r7	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41149,
	strb	r0, [r8, #3505]	@ D.41149, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r0, #0	@ D.41149,
	beq	.L1470	@,
	ldr	r3, [r4, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmn	r3, #2	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	beq	.L1470	@,
	add	r9, r7, #19968	@ ivtmp.2120, pH264Ctx,
	mov	r8, #0	@ i,
	add	r9, r9, #52	@ ivtmp.2120, ivtmp.2120,
	b	.L1447	@
.L1446:
	add	r8, r8, #1	@ i, i,
	cmp	r8, r3	@ i, D.41147
	bcs	.L1470	@,
.L1447:
	ldr	r1, .L1476+24	@,
	mov	r0, r7	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #3	@ D.41147,
	str	r0, [r9, #4]!	@ D.41147, MEM[base: _107, offset: 0B]
	ldr	r3, [r5, #3628]	@ D.41152, pH264Ctx_14(D)->SeErrFlg
	bhi	.L1439	@,
	cmp	r3, #0	@ D.41152,
	bne	.L1439	@,
	cmp	r0, #3	@ D.41147,
	beq	.L1435	@,
	cmp	r0, #1	@ D.41147,
	bls	.L1474	@,
	cmp	r0, #2	@ D.41147,
	beq	.L1475	@,
	ldr	r3, [r4, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #2	@ D.41147, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r8	@ D.41147, i
	bne	.L1446	@,
.L1448:
	ldr	r1, .L1476+28	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41145,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1474:
	ldr	r1, .L1476+32	@,
	mov	r0, r7	@, pH264Ctx
	bl	ue_v	@
	cmp	r6, r0	@ MaxPicNum, D.41147
	str	r0, [r9, #264]	@ D.41147, MEM[base: _107, offset: 264B]
	ldr	r3, [r5, #3628]	@ D.41147, pH264Ctx_14(D)->SeErrFlg
	bls	.L1443	@,
	cmp	r3, #0	@ D.41147,
	bne	.L1443	@,
.L1444:
	ldr	r2, [r4, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r2, #2	@ D.41147, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r8	@ D.41147, i
	bne	.L1446	@,
	add	r2, r2, #4992	@ tmp265, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	add	r2, r2, #16	@ tmp265, tmp265,
	ldr	r2, [r7, r2, asl #2]	@ tmp266, pH264Ctx_14(D)->CurrReorder.reordering_of_pic_nums_idc_l1
	cmp	r2, #3	@ tmp266,
	beq	.L1446	@,
	b	.L1448	@
.L1475:
	ldr	r1, .L1476+36	@,
	mov	r0, r7	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r9, #524]	@, MEM[base: _107, offset: 524B]
	b	.L1444	@
.L1426:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.41149, pH264Ctx_14(D)->CurrSlice.slice_type
	b	.L1419	@
.L1423:
	mov	r2, r0	@, D.41147
	ldr	r1, .L1476+40	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41145,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1439:
	mov	r2, r0	@, D.41147
	ldr	r1, .L1476+44	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41145,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1473:
	cmp	r9, r3	@ i, D.41147
	bne	.L1426	@,
.L1421:
	add	r3, r3, #4928	@ tmp229, D.41147,
	add	r3, r3, #44	@ tmp229, tmp229,
	add	r3, r7, r3, lsl #2	@ tmp230, pH264Ctx, tmp229,
	ldr	r3, [r3, #4]	@ tmp232, pH264Ctx_14(D)->CurrReorder.reordering_of_pic_nums_idc_l0
	cmp	r3, #3	@ tmp232,
	beq	.L1469	@,
	ldr	r1, .L1476+48	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41145,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1443:
	mov	r2, r0	@, D.41147
	ldr	r1, .L1476+52	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41145,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1449:
	mov	r3, #0	@ D.41147,
	b	.L1421	@
.L1477:
	.align	2
.L1476:
	.word	.LC51
	.word	.LC52
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC58
	.word	.LC59
	.word	.LC64
	.word	.LC61
	.word	.LC63
	.word	.LC53
	.word	.LC60
	.word	.LC57
	.word	.LC62
	.fnend
	.size	ref_pic_list_reordering, .-ref_pic_list_reordering
	.align	2
	.global	pred_weight_table
	.type	pred_weight_table, %function
pred_weight_table:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r0, #12288	@ tmp172, pH264Ctx,
	add	r6, r0, #20480	@ tmp254, pH264Ctx,
	mov	r10, #2208	@ tmp177,
	ldr	r2, [r3, #1296]	@ pH264Ctx_15(D)->PPS, pH264Ctx_15(D)->PPS
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	ip, [r6, #212]	@ pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id
	mov	r7, #4000	@ tmp183,
	ldr	r3, [r3, #1292]	@ pH264Ctx_15(D)->SPS, pH264Ctx_15(D)->SPS
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, .L1509	@,
	mov	r4, #1	@ tmp188,
	mla	r10, r10, ip, r2	@ pPPS, tmp177, pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_15(D)->PPS
	ldr	r2, [r10, #28]	@ pPPS_19->seq_parameter_set_id, pPPS_19->seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp183, pPPS_19->seq_parameter_set_id, pH264Ctx_15(D)->SPS
	bl	ue_v	@
	str	r0, [r6, #264]	@ D.41194, pH264Ctx_15(D)->CurrSlice.luma_log2_weight_denom
	mov	r8, r4, asl r0	@ y_default_weight, tmp188,
	ldr	r9, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r9, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1503	@,
.L1479:
	cmp	r0, #7	@ D.41194,
	bhi	.L1482	@,
	ldr	r3, [r6, #268]	@ pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom, pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom
	cmp	r3, #7	@ pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom,
	bhi	.L1482	@,
	add	r3, r5, #49152	@ tmp255, pH264Ctx,
	str	r3, [sp, #4]	@ tmp255, %sfp
	ldr	r2, [r3, #3628]	@ D.41194, pH264Ctx_15(D)->SeErrFlg
	cmp	r2, #0	@ D.41194,
	addeq	fp, r5, #20736	@ ivtmp.2157, pH264Ctx,
	moveq	r4, r2	@ i, D.41194
	addeq	fp, fp, #144	@ ivtmp.2157, ivtmp.2157,
	beq	.L1490	@,
	b	.L1481	@
.L1486:
	ldr	r2, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r2, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1504	@,
.L1487:
	str	r2, [fp]	@ pSPS_23->chroma_format_idc, MEM[base: _146, offset: 0B]
	str	r2, [fp, #768]	@ pSPS_23->chroma_format_idc, MEM[base: _146, offset: 768B]
	str	r2, [fp, #128]	@ pSPS_23->chroma_format_idc, MEM[base: _146, offset: 128B]
	str	r2, [fp, #896]	@ pSPS_23->chroma_format_idc, MEM[base: _146, offset: 896B]
.L1489:
	ldr	r2, [r6, #256]	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r4, r4, #1	@ i, i,
	add	fp, fp, #4	@ ivtmp.2157, ivtmp.2157,
	cmp	r2, r4	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1, i
	bcc	.L1505	@,
.L1490:
	ldr	r1, .L1509+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@ D.41194
	streq	r8, [fp, #-128]	@ y_default_weight, MEM[base: _156, offset: 4294967168B]
	streq	r0, [fp, #640]	@ D.41194,
	beq	.L1486	@,
	ldr	r1, .L1509+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1509+12	@,
	str	r0, [fp, #-128]	@, MEM[base: _154, offset: 4294967168B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #640]	@,
	ldr	r2, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r2, #0	@ pSPS_23->chroma_format_idc,
	beq	.L1487	@,
.L1504:
	ldr	r1, .L1509+16	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@ D.41194
	bne	.L1506	@,
	str	r9, [fp]	@ uv_default_weight, MEM[base: _142, offset: 0B]
	str	r0, [fp, #768]	@ D.41194, MEM[base: _142, offset: 768B]
	str	r9, [fp, #128]	@ uv_default_weight, MEM[base: _142, offset: 128B]
	str	r0, [fp, #896]	@ D.41194,
	b	.L1489	@
.L1505:
	ldr	r3, [r10, #44]	@ pPPS_19->weighted_bipred_idc, pPPS_19->weighted_bipred_idc
	cmp	r3, #1	@ pPPS_19->weighted_bipred_idc,
	beq	.L1491	@,
.L1492:
	ldr	r3, [sp, #4]	@ tmp255, %sfp
	ldr	r0, [r3, #3628]	@ pH264Ctx_15(D)->SeErrFlg, pH264Ctx_15(D)->SeErrFlg
	adds	r0, r0, #0	@ D.41198, pH264Ctx_15(D)->SeErrFlg,
	movne	r0, #1	@ D.41198,
	rsb	r0, r0, #0	@ D.41192, D.41198
.L1484:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1506:
	ldr	r1, .L1509+20	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1509+24	@,
	str	r0, [fp]	@, MEM[base: _150, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1509+20	@,
	str	r0, [fp, #768]	@, MEM[base: _150, offset: 768B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1509+24	@,
	str	r0, [fp, #128]	@, MEM[base: _150, offset: 128B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #896]	@,
	b	.L1489	@
.L1503:
	ldr	r1, .L1509+28	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	mov	r3, r0	@ D.41194,
	ldr	r0, [r6, #264]	@ D.41194, pH264Ctx_15(D)->CurrSlice.luma_log2_weight_denom
	mov	r9, r4, asl r3	@ uv_default_weight, tmp188,
	str	r3, [r6, #268]	@ D.41194, pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom
	b	.L1479	@
.L1491:
	ldrb	r3, [r6, #200]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.slice_type, pH264Ctx_15(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_15(D)->CurrSlice.slice_type,
	bne	.L1492	@,
	add	r4, r5, #21248	@ ivtmp.2147, pH264Ctx,
	mov	r10, #0	@ i,
	add	r4, r4, #16	@ ivtmp.2147, ivtmp.2147,
	b	.L1498	@
.L1494:
	ldr	r3, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r3, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1507	@,
.L1495:
	str	r3, [r4]	@ pSPS_23->chroma_format_idc, MEM[base: _120, offset: 0B]
	str	r3, [r4, #768]	@ pSPS_23->chroma_format_idc, MEM[base: _120, offset: 768B]
	str	r3, [r4, #128]	@ pSPS_23->chroma_format_idc, MEM[base: _120, offset: 128B]
	str	r3, [r4, #896]	@ pSPS_23->chroma_format_idc, MEM[base: _120, offset: 896B]
.L1497:
	ldr	r3, [r6, #260]	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r10, r10, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.2147, ivtmp.2147,
	cmp	r3, r10	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1, i
	bcc	.L1492	@,
.L1498:
	ldr	r1, .L1509+32	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@ D.41194
	streq	r8, [r4, #-128]	@ y_default_weight, MEM[base: _137, offset: 4294967168B]
	streq	r0, [r4, #640]	@ D.41194,
	beq	.L1494	@,
	ldr	r1, .L1509+36	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1509+40	@,
	str	r0, [r4, #-128]	@, MEM[base: _2, offset: 4294967168B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #640]	@,
	ldr	r3, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r3, #0	@ pSPS_23->chroma_format_idc,
	beq	.L1495	@,
.L1507:
	ldr	r1, .L1509+44	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@ D.41194
	bne	.L1508	@,
	str	r9, [r4]	@ uv_default_weight, MEM[base: _124, offset: 0B]
	str	r0, [r4, #768]	@ D.41194, MEM[base: _124, offset: 768B]
	str	r9, [r4, #128]	@ uv_default_weight, MEM[base: _124, offset: 128B]
	str	r0, [r4, #896]	@ D.41194,
	b	.L1497	@
.L1482:
	add	r5, r5, #49152	@ tmp197, pH264Ctx,
	ldr	r2, [r5, #3628]	@ D.41194, pH264Ctx_15(D)->SeErrFlg
.L1481:
	ldr	r1, .L1509+48	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41192,
	b	.L1484	@
.L1508:
	ldr	r1, .L1509+52	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1509+56	@,
	str	r0, [r4]	@, MEM[base: _75, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1509+52	@,
	str	r0, [r4, #768]	@, MEM[base: _75, offset: 768B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1509+56	@,
	str	r0, [r4, #128]	@, MEM[base: _75, offset: 128B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #896]	@,
	b	.L1497	@
.L1510:
	.align	2
.L1509:
	.word	.LC65
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC66
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC67
	.word	.LC78
	.word	.LC79
	.fnend
	.size	pred_weight_table, .-pred_weight_table
	.align	2
	.global	DecMMCO
	.type	DecMMCO, %function
DecMMCO:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ save,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, r0	@ pH264Ctx, pH264Ctx
	moveq	r6, #100	@ D.41229,
	beq	.L1523	@,
	add	r8, r0, #24576	@ tmp264, pH264Ctx,
	mov	r10, #0	@ MMCONum,
	b	.L1514	@
.L1546:
	ldr	r1, .L1552	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r4, #2	@ memory_management_control_operation,
	beq	.L1544	@,
.L1525:
	cmp	r4, #6	@ memory_management_control_operation,
	orreq	r5, r5, #1	@,, tmp255, D.41230
	cmp	r5, #0	@ tmp255,
	bne	.L1528	@,
	cmp	r4, #4	@ memory_management_control_operation,
	beq	.L1545	@,
.L1529:
	cmp	r4, #6	@ memory_management_control_operation,
	bhi	.L1521	@,
.L1526:
	add	r3, r9, #49152	@ tmp261, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1521	@,
	cmp	r4, #0	@ memory_management_control_operation,
	beq	.L1531	@,
.L1530:
	subs	r6, r6, #1	@ D.41229, D.41229,
	beq	.L1532	@,
.L1523:
	ldr	r1, .L1552+4	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	bic	r3, r0, #2	@ D.41227, memory_management_control_operation,
	sub	r5, r0, #3	@ D.41230, memory_management_control_operation,
	clz	r5, r5	@ D.41230, D.41230
	cmp	r3, #1	@ D.41227,
	mov	r4, r0	@ memory_management_control_operation,
	mov	r5, r5, lsr #5	@ D.41230, D.41230,
	beq	.L1546	@,
	cmp	r4, #2	@ memory_management_control_operation,
	bne	.L1525	@,
.L1544:
	ldr	r1, .L1552+8	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r5, #0	@ D.41230,
	beq	.L1526	@,
.L1528:
	ldr	r1, .L1552+12	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r4, #4	@ memory_management_control_operation,
	bne	.L1529	@,
.L1545:
	ldr	r1, .L1552+16	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r9, #49152	@ tmp258, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	beq	.L1530	@,
.L1521:
	ldr	r1, .L1552+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41228,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1551:
	ldr	r1, .L1552	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, [r4, #8]	@ D.41229, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	cmp	r2, #2	@ D.41229,
	str	r0, [r4, #12]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].difference_of_pic_nums_minus1
	beq	.L1547	@,
.L1517:
	cmp	r2, #3	@ D.41229,
	cmpne	r2, #6	@, D.41229,
	beq	.L1548	@,
.L1518:
	cmp	r2, #4	@ D.41229,
	beq	.L1549	@,
.L1519:
	cmp	r2, #6	@ D.41229,
	bhi	.L1521	@,
	add	r3, r9, #49152	@ tmp242, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1521	@,
	cmp	r2, #0	@ D.41229,
	add	r10, r10, #1	@ MMCONum, MMCONum,
	beq	.L1531	@,
	cmp	r10, #100	@ MMCONum,
	beq	.L1550	@,
.L1514:
	ldr	r1, .L1552+4	@,
	mov	r0, r9	@, pH264Ctx
	ldr	r5, [r8, #1804]	@ D.41227, pH264Ctx_17(D)->CurrMarkIdx
	bl	ue_v	@
	mov	r6, r10, asl #2	@ tmp265, MMCONum,
	mov	r7, r10, asl #4	@ tmp266, MMCONum,
	add	r4, r6, r7	@ tmp141, tmp265, tmp266
	movw	r3, #2004	@ tmp143,
	mla	r4, r3, r5, r4	@ tmp144, tmp143, D.41227, tmp141
	add	r4, r9, r4	@ tmp145, pH264Ctx, tmp144
	add	r4, r4, #22272	@ tmp147, tmp145,
	add	r4, r4, #96	@ tmp147, tmp147,
	bic	r1, r0, #2	@ D.41227, D.41229,
	str	r0, [r4, #8]	@ D.41229, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	cmp	r1, #1	@ D.41227,
	mov	r2, r0	@ D.41229,
	beq	.L1551	@,
	cmp	r2, #2	@ D.41229,
	bne	.L1517	@,
.L1547:
	ldr	r1, .L1552+8	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r6, r7	@ tmp174, tmp265, tmp266
	movw	r2, #2004	@ tmp176,
	mla	r3, r2, r5, r3	@ tmp177, tmp176, D.41227, tmp174
	add	r3, r9, r3	@ tmp178, pH264Ctx, tmp177
	add	r2, r3, #22272	@ tmp180, tmp178,
	str	r0, [r2, #112]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].long_term_pic_num
	ldr	r2, [r2, #104]	@ D.41229, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	cmp	r2, #3	@ D.41229,
	cmpne	r2, #6	@, D.41229,
	bne	.L1518	@,
.L1548:
	ldr	r1, .L1552+12	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r6, r7	@ tmp202, tmp265, tmp266
	movw	r2, #2004	@ tmp204,
	mla	r3, r2, r5, r3	@ tmp205, tmp204, D.41227, tmp202
	add	r3, r9, r3	@ tmp206, pH264Ctx, tmp205
	add	r2, r3, #22272	@ tmp208, tmp206,
	str	r0, [r2, #116]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].long_term_frame_idx
	ldr	r2, [r2, #104]	@ D.41229, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	cmp	r2, #4	@ D.41229,
	bne	.L1519	@,
.L1549:
	ldr	r1, .L1552+16	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r6, r6, r7	@ tmp223, tmp265, tmp266
	movw	r7, #2004	@ tmp225,
	mla	r5, r7, r5, r6	@ tmp226, tmp225, D.41227, tmp223
	add	r5, r9, r5	@ tmp227, pH264Ctx, tmp226
	add	r3, r5, #22272	@ tmp229, tmp227,
	add	r5, r3, #96	@ tmp239, tmp239,
	ldr	r2, [r3, #104]	@ D.41229, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	str	r0, [r3, #120]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].max_long_term_frame_idx_plus1
	b	.L1519	@
.L1531:
	mov	r0, #0	@ D.41228,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1550:
	ldr	r1, .L1552+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41228,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1532:
	mvn	r0, #0	@ D.41228,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1553:
	.align	2
.L1552:
	.word	.LC82
	.word	.LC81
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC80
	.fnend
	.size	DecMMCO, .-DecMMCO
	.align	2
	.global	dec_ref_pic_marking
	.type	dec_ref_pic_marking, %function
dec_ref_pic_marking:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp256, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #24576	@ tmp257, pH264Ctx,
	ldrb	r8, [r3, #205]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.new_pic_flag, pH264Ctx_5(D)->CurrSlice.new_pic_flag
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r7, [r6, #1804]	@ tmpMarkIdx, pH264Ctx_5(D)->CurrMarkIdx
	cmp	r8, #0	@ pH264Ctx_5(D)->CurrSlice.new_pic_flag,
	beq	.L1555	@,
	clz	r4, r7	@ D.41243, tmpMarkIdx
	mov	r4, r4, lsr #5	@ D.41243, D.41243,
	str	r4, [r6, #1804]	@ D.41243, pH264Ctx_5(D)->CurrMarkIdx
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	beq	.L1574	@,
.L1556:
	ldr	r1, .L1579	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	movw	r1, #2004	@ tmp179,
	mla	r4, r1, r4, r5	@ tmp180, tmp179, D.41243, pH264Ctx
	ldr	r1, .L1579+4	@,
	add	r4, r4, #22272	@ tmp182, tmp180,
	add	r4, r4, #96	@ tmp182, tmp182,
	mov	r3, r0	@ D.41243,
	uxtb	r2, r0	@, D.41243
	strb	r3, [r4, #7]	@ D.41243, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].adaptive_ref_pic_marking_mode_flag
	mov	r0, #16	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].adaptive_ref_pic_marking_mode_flag, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].adaptive_ref_pic_marking_mode_flag,
	bne	.L1558	@,
.L1562:
	mov	r8, #0	@ D.41240,
.L1570:
	mov	r0, r8	@, D.41240
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1555:
	movw	r4, #2004	@ tmp251,
	mla	r4, r4, r7, r0	@ tmp252, tmp251, tmpMarkIdx, pH264Ctx
	add	r4, r4, #22272	@ tmp254, tmp252,
	add	r4, r4, #96	@ tmp254, tmp254,
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid
	cmp	r2, #0	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid,
	bne	.L1575	@,
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	mov	r4, r7	@ D.41243, tmpMarkIdx
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	bne	.L1556	@,
.L1574:
	ldr	r1, .L1579+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	movw	r3, #2004	@ tmp158,
	mla	r4, r3, r4, r5	@ tmp159, tmp158, D.41243, pH264Ctx
	ldr	r1, .L1579+12	@,
	mov	r8, #0	@ D.41240,
	add	r4, r4, #22272	@ tmp161, tmp159,
	strb	r0, [r4, #101]	@, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].no_output_of_prior_pics_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldrb	r2, [r4, #101]	@ zero_extendqisi2	@, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].no_output_of_prior_pics_flag
	ldr	r1, .L1579+16	@,
	strb	r0, [r4, #102]	@, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].long_term_reference_flag
	mov	r0, #16	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@, D.41240
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1575:
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	beq	.L1576	@,
	ldr	r1, .L1579	@,
	ldrb	r6, [r4, #7]	@ zero_extendqisi2	@ D.41243, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag
	bl	u_1	@
	cmp	r6, r0	@ D.41243,
	bne	.L1577	@,
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag,
	beq	.L1562	@,
	mov	r1, r8	@, pH264Ctx_5(D)->CurrSlice.new_pic_flag
	mov	r0, r5	@, pH264Ctx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	DecMMCO	@
.L1558:
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	DecMMCO	@
	cmn	r0, #1	@ D.41240,
	mov	r8, r0	@ D.41240,
	movne	r3, #1	@ tmp207,
	movne	r8, #0	@ D.41240,
	strneb	r3, [r4, #4]	@ tmp207, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].is_valid
	bne	.L1570	@,
	mov	r3, #0	@ tmp197,
	ldr	r1, .L1579+20	@,
	strb	r3, [r4, #4]	@ tmp197, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_67].is_valid
	mov	r0, #1	@,
	str	r7, [r6, #1804]	@ tmpMarkIdx, pH264Ctx_5(D)->CurrMarkIdx
	bl	dprint_vfmw	@
	b	.L1570	@
.L1576:
	ldr	r1, .L1579+8	@,
	ldrb	r6, [r4, #5]	@ zero_extendqisi2	@ D.41243, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].no_output_of_prior_pics_flag
	bl	u_1	@
	cmp	r6, r0	@ D.41243,
	bne	.L1578	@,
	mov	r0, r5	@, pH264Ctx
	ldr	r1, .L1579+12	@,
	ldrb	r4, [r4, #6]	@ zero_extendqisi2	@ D.41243, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].long_term_reference_flag
	bl	u_1	@
	cmp	r4, r0	@ D.41243,
	beq	.L1562	@,
	ldr	r1, .L1579+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.41240,
	b	.L1570	@
.L1577:
	add	r5, r5, #49152	@ tmp234, pH264Ctx,
	ldr	r1, .L1579+28	@,
	mov	r0, #1	@,
	mvn	r8, #0	@ D.41240,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #3632]	@ pH264Ctx_5(D)->TotalNal, pH264Ctx_5(D)->TotalNal
	ldr	r3, [r5, #3668]	@ pH264Ctx_5(D)->SliceNumInPic, pH264Ctx_5(D)->SliceNumInPic
	mov	r0, #1	@,
	ldr	r2, [r5, #3652]	@ pH264Ctx_5(D)->TotalPicNum, pH264Ctx_5(D)->TotalPicNum
	ldr	r1, .L1579+32	@,
	str	ip, [sp]	@ pH264Ctx_5(D)->TotalNal,
	bl	dprint_vfmw	@
	b	.L1570	@
.L1578:
	ldr	r1, .L1579+36	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.41240,
	b	.L1570	@
.L1580:
	.align	2
.L1579:
	.word	.LC90
	.word	.LC91
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC92
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC93
	.fnend
	.size	dec_ref_pic_marking, .-dec_ref_pic_marking
	.align	2
	.global	ProcessSliceHeaderFirstPart
	.type	ProcessSliceHeaderFirstPart, %function
ProcessSliceHeaderFirstPart:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, r0, #12288	@ tmp189, pH264Ctx,
	ldr	r1, .L1656	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	ldr	r3, [fp, #1288]	@ pH264Ctx_12(D)->MaxPpsNum, pH264Ctx_12(D)->MaxPpsNum
	sub	r3, r3, #1	@ D.41259, pH264Ctx_12(D)->MaxPpsNum,
	cmp	r0, r3	@ tmp_pic_parameter_set_id, D.41259
	mov	r10, r0	@ tmp_pic_parameter_set_id,
	bhi	.L1582	@,
	add	r9, r6, #49152	@ tmp362, pH264Ctx,
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1582	@,
	mov	r1, r0	@, tmp_pic_parameter_set_id
	mov	r0, r6	@, pH264Ctx
	bl	PPSSPSCheckTmpId	@
	subs	r8, r0, #0	@ D.41257,
	bne	.L1647	@,
	add	r4, r6, #20480	@ tmp360, pH264Ctx,
	mov	r7, #2208	@ tmp202,
	mov	r5, #4000	@ tmp208,
	str	r10, [r4, #212]	@ tmp_pic_parameter_set_id, pH264Ctx_12(D)->CurrSlice.pic_parameter_set_id
	ldr	r2, [fp, #1296]	@ pH264Ctx_12(D)->PPS, pH264Ctx_12(D)->PPS
	ldrb	r1, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	ldr	r3, [fp, #1292]	@ pH264Ctx_12(D)->SPS, pH264Ctx_12(D)->SPS
	mla	r7, r7, r10, r2	@ pPPS, tmp202, tmp_pic_parameter_set_id, pH264Ctx_12(D)->PPS
	cmp	r1, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	ldr	r2, [r7, #28]	@ pPPS_25->seq_parameter_set_id, pPPS_25->seq_parameter_set_id
	mla	r5, r5, r2, r3	@ pSPS, tmp208, pPPS_25->seq_parameter_set_id, pH264Ctx_12(D)->SPS
	beq	.L1586	@,
	ldr	r3, [r5, #3952]	@ pSPS_29->num_ref_frames, pSPS_29->num_ref_frames
	cmp	r3, #0	@ pSPS_29->num_ref_frames,
	beq	.L1586	@,
.L1587:
	ldr	r1, [r5, #2904]	@ pSPS_29->log2_max_frame_num_minus4, pSPS_29->log2_max_frame_num_minus4
	mov	r0, r6	@, pH264Ctx
	ldr	r2, .L1656+4	@,
	add	r1, r1, #4	@, pSPS_29->log2_max_frame_num_minus4,
	bl	u_v	@
	str	r0, [r4, #220]	@ D.41259, pH264Ctx_12(D)->CurrSlice.frame_num
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1645	@,
	ldrb	r3, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	beq	.L1648	@,
.L1590:
	mov	r3, #0	@ tmp234,
	strb	r3, [r4, #201]	@ tmp234, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	strb	r3, [r4, #202]	@ tmp234, pH264Ctx_12(D)->CurrSlice.bottom_field_flag
	ldrb	r3, [r5, #18]	@ zero_extendqisi2	@ pSPS_29->frame_mbs_only_flag, pSPS_29->frame_mbs_only_flag
	cmp	r3, #0	@ pSPS_29->frame_mbs_only_flag,
	beq	.L1649	@,
	ldr	r2, [r5, #3956]	@ pSPS_29->pic_width_in_mbs_minus1, pSPS_29->pic_width_in_mbs_minus1
	ldr	r1, [r5, #3960]	@ pSPS_29->pic_height_in_map_units_minus1, pSPS_29->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.41260, pSPS_29->pic_width_in_mbs_minus1,
	mla	r3, r1, r3, r3	@ pic_size, pSPS_29->pic_height_in_map_units_minus1, D.41260, D.41260
.L1614:
	ldrb	r2, [r5, #19]	@ zero_extendqisi2	@ pSPS_29->mb_adaptive_frame_field_flag, pSPS_29->mb_adaptive_frame_field_flag
	cmp	r2, #0	@ pSPS_29->mb_adaptive_frame_field_flag,
	bne	.L1597	@,
	strb	r2, [r4, #204]	@ pSPS_29->mb_adaptive_frame_field_flag, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
.L1599:
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	cmp	r2, r3	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pic_size
	bcs	.L1650	@,
.L1600:
	ldrb	r3, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	beq	.L1651	@,
.L1602:
	add	r10, r6, #16384	@ tmp361, pH264Ctx,
	mov	r3, #0	@ tmp284,
	str	r3, [r10, #3412]	@ tmp284, pH264Ctx_12(D)->CurrPOC.pic_order_cnt_lsb
	str	r3, [r10, #3416]	@ tmp284, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt_bottom
	ldr	r3, [r5, #2908]	@ pSPS_29->pic_order_cnt_type, pSPS_29->pic_order_cnt_type
	cmp	r3, #0	@ pSPS_29->pic_order_cnt_type,
	beq	.L1652	@,
.L1606:
	mov	r3, #0	@ tmp303,
	str	r3, [r10, #3460]	@ tmp303, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	str	r3, [r10, #3464]	@ tmp303, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [r5, #2908]	@ pSPS_29->pic_order_cnt_type, pSPS_29->pic_order_cnt_type
	cmp	r3, #1	@ pSPS_29->pic_order_cnt_type,
	beq	.L1653	@,
.L1609:
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1645	@,
	ldrb	r3, [r7, #17]	@ zero_extendqisi2	@ pPPS_25->redundant_pic_cnt_present_flag, pPPS_25->redundant_pic_cnt_present_flag
	cmp	r3, #0	@ pPPS_25->redundant_pic_cnt_present_flag,
	beq	.L1612	@,
	ldr	r1, .L1656+8	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L1613	@,
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1613	@,
.L1612:
	mov	r0, r6	@, pH264Ctx
	bl	IsNewPic	@
	uxtb	r0, r0	@ D.41263,
	strb	r0, [r4, #205]	@ D.41263, pH264Ctx_12(D)->CurrSlice.new_pic_flag
	cmp	r0, #0	@ D.41263,
	bne	.L1626	@,
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	ldr	r3, [r4, #1888]	@ pH264Ctx_12(D)->PrevSlice.first_mb_in_slice, pH264Ctx_12(D)->PrevSlice.first_mb_in_slice
	cmp	r2, r3	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->PrevSlice.first_mb_in_slice
	bls	.L1654	@,
.L1626:
	mov	r0, r8	@, D.41257
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1586:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.slice_type, pH264Ctx_12(D)->CurrSlice.slice_type
	cmp	r3, #2	@ pH264Ctx_12(D)->CurrSlice.slice_type,
	beq	.L1587	@,
	ldr	r1, .L1656+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.41257,
	b	.L1626	@
.L1597:
	mov	r2, #1	@ tmp354,
	strb	r2, [r4, #204]	@ tmp354, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
.L1617:
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	cmp	r2, r3, lsr #1	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pic_size,
	bcc	.L1600	@,
	ldr	r1, .L1656+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1645:
	mvn	r8, #0	@ D.41257,
	mov	r0, r8	@, D.41257
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1613:
	ldr	r1, .L1656+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L1656+24	@ tmp328,
	ldr	r3, [r3]	@ D.41264, g_event_report
	cmp	r3, #0	@ D.41264,
	beq	.L1645	@,
	ldr	r0, [r9, #3688]	@, pH264Ctx_12(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #102	@,
	mvn	r8, #0	@ D.41257,
	blx	r3	@ D.41264
	mov	r0, r8	@, D.41257
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1649:
	ldr	r1, .L1656+28	@,
	mov	r0, r6	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41265,
	strb	r0, [r4, #201]	@ D.41265, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r0, #0	@ D.41265,
	bne	.L1655	@,
	ldr	r2, [r5, #3956]	@ pSPS_29->pic_width_in_mbs_minus1, pSPS_29->pic_width_in_mbs_minus1
	ldrb	ip, [r5, #18]	@ zero_extendqisi2	@ pSPS_29->frame_mbs_only_flag, pSPS_29->frame_mbs_only_flag
	ldr	r1, [r5, #3960]	@ pSPS_29->pic_height_in_map_units_minus1, pSPS_29->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.41260, pSPS_29->pic_width_in_mbs_minus1,
	cmp	ip, #0	@ pSPS_29->frame_mbs_only_flag,
	mla	r3, r1, r3, r3	@ D.41260, pSPS_29->pic_height_in_map_units_minus1, D.41260, D.41260
	bne	.L1616	@,
	mov	r3, r3, asl #1	@ pic_size, D.41260,
	b	.L1614	@
.L1652:
	ldr	r1, [r5, #2912]	@ pSPS_29->log2_max_pic_order_cnt_lsb_minus4, pSPS_29->log2_max_pic_order_cnt_lsb_minus4
	mov	r0, r6	@, pH264Ctx
	ldr	r2, .L1656+32	@,
	add	r1, r1, #4	@, pSPS_29->log2_max_pic_order_cnt_lsb_minus4,
	bl	u_v	@
	str	r0, [r10, #3412]	@, pH264Ctx_12(D)->CurrPOC.pic_order_cnt_lsb
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ pPPS_25->pic_order_present_flag, pPPS_25->pic_order_present_flag
	cmp	r3, #0	@ pPPS_25->pic_order_present_flag,
	beq	.L1606	@,
	ldrb	r3, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag,
	bne	.L1606	@,
	ldr	r1, .L1656+36	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [r10, #3416]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt_bottom
	b	.L1606	@
.L1648:
	cmp	r0, #0	@ D.41259,
	str	r0, [r4, #216]	@ D.41259, pH264Ctx_12(D)->CurrSlice.prev_frame_num
	beq	.L1590	@,
	ldr	r1, .L1656+40	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1590	@
.L1653:
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ pSPS_29->delta_pic_order_always_zero_flag, pSPS_29->delta_pic_order_always_zero_flag
	cmp	r3, #0	@ pSPS_29->delta_pic_order_always_zero_flag,
	bne	.L1609	@,
	ldr	r1, .L1656+44	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [r10, #3460]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ pPPS_25->pic_order_present_flag, pPPS_25->pic_order_present_flag
	cmp	r3, #1	@ pPPS_25->pic_order_present_flag,
	bne	.L1609	@,
	ldrb	r3, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag,
	bne	.L1609	@,
	ldr	r1, .L1656+48	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [r10, #3464]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	b	.L1609	@
.L1655:
	ldr	r1, .L1656+52	@,
	mov	r0, r6	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #202]	@, pH264Ctx_12(D)->CurrSlice.bottom_field_flag
	ldr	r2, [r5, #3956]	@ pSPS_29->pic_width_in_mbs_minus1, pSPS_29->pic_width_in_mbs_minus1
	ldrb	r0, [r5, #18]	@ zero_extendqisi2	@ pSPS_29->frame_mbs_only_flag, pSPS_29->frame_mbs_only_flag
	ldr	r1, [r5, #3960]	@ pSPS_29->pic_height_in_map_units_minus1, pSPS_29->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.41260, pSPS_29->pic_width_in_mbs_minus1,
	cmp	r0, #0	@ pSPS_29->frame_mbs_only_flag,
	ldrb	r0, [r4, #201]	@ zero_extendqisi2	@ D.41265, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	mla	r3, r1, r3, r3	@ D.41260, pSPS_29->pic_height_in_map_units_minus1, D.41260, D.41260
	moveq	r2, #2	@ D.41258,
	beq	.L1595	@,
.L1616:
	mov	r2, #1	@ D.41258,
.L1595:
	cmp	r0, #0	@ D.41265,
	mul	r3, r2, r3	@ pic_size, D.41258, D.41260
	beq	.L1614	@,
	cmp	r0, #1	@ D.41265,
	mov	r2, #0	@ tmp261,
	strb	r2, [r4, #204]	@ tmp261, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
	bne	.L1599	@,
	b	.L1617	@
.L1651:
	ldr	r1, .L1656+56	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #65536	@ D.41260,
	str	r0, [r4, #240]	@ D.41260, pH264Ctx_12(D)->CurrSlice.idr_pic_id
	bcs	.L1603	@,
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	beq	.L1602	@,
.L1603:
	ldr	r1, .L1656+60	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1602	@
.L1582:
	mov	r2, r10	@, tmp_pic_parameter_set_id
	ldr	r1, .L1656+64	@,
	mvn	r8, #0	@ D.41257,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@, D.41257
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1647:
	ldr	r1, .L1656+68	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.41257,
	b	.L1626	@
.L1650:
	ldr	r1, .L1656+72	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.41257,
	b	.L1626	@
.L1654:
	ldr	r1, .L1656+76	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.41257,
	b	.L1626	@
.L1657:
	.align	2
.L1656:
	.word	.LC97
	.word	.LC101
	.word	.LC113
	.word	.LC100
	.word	.LC105
	.word	.LC114
	.word	g_event_report
	.word	.LC103
	.word	.LC109
	.word	.LC110
	.word	.LC102
	.word	.LC111
	.word	.LC112
	.word	.LC104
	.word	.LC107
	.word	.LC108
	.word	.LC98
	.word	.LC99
	.word	.LC106
	.word	.LC115
	.fnend
	.size	ProcessSliceHeaderFirstPart, .-ProcessSliceHeaderFirstPart
	.align	2
	.global	ProcessSliceHeaderSecondPart
	.type	ProcessSliceHeaderSecondPart, %function
ProcessSliceHeaderSecondPart:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #12288	@ tmp168, pH264Ctx,
	add	r4, r0, #20480	@ tmp319, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r6, #1288]	@ pH264Ctx_13(D)->MaxPpsNum, pH264Ctx_13(D)->MaxPpsNum
	ldr	r2, [r4, #212]	@ D.41290, pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id
	sub	r3, r3, #1	@ D.41289, pH264Ctx_13(D)->MaxPpsNum,
	cmp	r3, r2	@ D.41289, D.41290
	bcc	.L1659	@,
	add	r8, r0, #49152	@ tmp318, pH264Ctx,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1659	@,
	bl	PPSSPSCheck	@
	cmp	r0, #0	@,
	bne	.L1742	@,
	ldr	r2, [r4, #212]	@ pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id
	mov	r7, #2208	@ tmp182,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.41288, pH264Ctx_13(D)->CurrSlice.slice_type
	ldr	r9, [r6, #1296]	@ pH264Ctx_13(D)->PPS, pH264Ctx_13(D)->PPS
	mul	r7, r7, r2	@ D.41290, tmp182, pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id
	cmp	r3, #1	@ D.41288,
	add	r6, r9, r7	@ pPPS, pH264Ctx_13(D)->PPS, D.41290
	beq	.L1743	@,
.L1663:
	ldr	r2, [r6, #36]	@ D.41290, pPPS_25->num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ D.41288,
	str	r2, [r4, #256]	@ D.41290, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	ldr	r2, [r6, #40]	@ D.41290, pPPS_25->num_ref_idx_l1_active_minus1
	str	r2, [r4, #260]	@ D.41290, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	bls	.L1744	@,
	cmp	r3, #2	@ D.41288,
	beq	.L1690	@,
.L1674:
	mov	r3, #32	@ tmp240,
	str	r3, [r4, #260]	@ tmp240, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
.L1675:
	mov	r0, r5	@, pH264Ctx
	bl	ref_pic_list_reordering	@
	subs	r10, r0, #0	@ D.41287,
	bne	.L1745	@,
	ldrb	r3, [r6, #2]	@ zero_extendqisi2	@ pPPS_25->weighted_pred_flag, pPPS_25->weighted_pred_flag
	cmp	r3, #0	@ pPPS_25->weighted_pred_flag,
	beq	.L1677	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	moveq	r2, #1	@ D.41289,
	moveq	r3, r2	@ D.41292, D.41289
	beq	.L1678	@,
.L1677:
	ldr	r3, [r6, #44]	@ pPPS_25->weighted_bipred_idc, pPPS_25->weighted_bipred_idc
	cmp	r3, #1	@ pPPS_25->weighted_bipred_idc,
	beq	.L1746	@,
.L1694:
	mov	r2, #0	@ D.41289,
	mov	r3, r2	@ D.41292, D.41289
.L1678:
	strb	r3, [r4, #207]	@ D.41292, pH264Ctx_13(D)->CurrSlice.apply_weights_flag
	mov	r0, #19	@,
	ldr	r1, .L1752	@,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #207]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.apply_weights_flag, pH264Ctx_13(D)->CurrSlice.apply_weights_flag
	mov	r3, #0	@ tmp255,
	str	r3, [r4, #264]	@ tmp255, pH264Ctx_13(D)->CurrSlice.luma_log2_weight_denom
	cmp	r2, r3	@ pH264Ctx_13(D)->CurrSlice.apply_weights_flag,
	str	r3, [r4, #268]	@ tmp255, pH264Ctx_13(D)->CurrSlice.chroma_log2_weight_denom
	bne	.L1747	@,
.L1679:
	ldr	r3, [r4, #232]	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc, pH264Ctx_13(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc,
	bne	.L1748	@,
.L1680:
	mov	r3, #0	@ tmp269,
	str	r3, [r4, #1808]	@ tmp269, pH264Ctx_13(D)->CurrSlice.cabac_init_idc
	ldrb	r3, [r9, r7]	@ zero_extendqisi2	@ pPPS_25->entropy_coding_mode_flag, pPPS_25->entropy_coding_mode_flag
	cmp	r3, #0	@ pPPS_25->entropy_coding_mode_flag,
	beq	.L1681	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	bls	.L1749	@,
.L1681:
	ldr	r1, .L1752+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	mov	r3, #0	@ tmp286,
	str	r3, [r4, #1816]	@ tmp286, pH264Ctx_13(D)->CurrSlice.disable_deblocking_filter_idc
	str	r3, [r4, #1820]	@ tmp286, pH264Ctx_13(D)->CurrSlice.slice_alpha_c0_offset_div2
	str	r3, [r4, #1824]	@ tmp286, pH264Ctx_13(D)->CurrSlice.slice_beta_offset_div2
	str	r0, [r4, #1812]	@, pH264Ctx_13(D)->CurrSlice.slice_qp_delta
	ldrb	r3, [r6, #3]	@ zero_extendqisi2	@ pPPS_25->deblocking_filter_control_present_flag, pPPS_25->deblocking_filter_control_present_flag
	cmp	r3, #0	@ pPPS_25->deblocking_filter_control_present_flag,
	bne	.L1750	@,
.L1710:
	mov	r0, r10	@, D.41287
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1690:
	mov	r3, #32	@ tmp237,
	str	r3, [r4, #256]	@ tmp237, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	b	.L1674	@
.L1750:
	ldr	r1, .L1752+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.41290,
	str	r0, [r4, #1816]	@ D.41290, pH264Ctx_13(D)->CurrSlice.disable_deblocking_filter_idc
	bhi	.L1684	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1684	@,
	cmp	r0, #1	@ D.41290,
	beq	.L1710	@,
	ldr	r1, .L1752+12	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	add	r3, r0, #6	@ D.41293, D.41289,
	str	r0, [r4, #1820]	@ D.41289, pH264Ctx_13(D)->CurrSlice.slice_alpha_c0_offset_div2
	cmp	r3, #12	@ D.41293,
	bhi	.L1687	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1687	@,
	mov	r0, r5	@, pH264Ctx
	ldr	r1, .L1752+16	@,
	bl	se_v	@
	add	r3, r0, #6	@ D.41293, D.41289,
	str	r0, [r4, #1824]	@ D.41289, pH264Ctx_13(D)->CurrSlice.slice_beta_offset_div2
	cmp	r3, #12	@ D.41293,
	bhi	.L1689	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	beq	.L1710	@,
.L1689:
	ldr	r1, .L1752+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1747:
	mov	r0, r5	@, pH264Ctx
	bl	pred_weight_table	@
	cmp	r0, #0	@,
	beq	.L1679	@,
	ldr	r1, .L1752+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1748:
	mov	r0, r5	@, pH264Ctx
	bl	dec_ref_pic_marking	@
	cmp	r0, #0	@,
	beq	.L1680	@,
	ldr	r1, .L1752+28	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1746:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.41292, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ D.41292,
	moveq	r2, r3	@ D.41289, D.41292
	bne	.L1694	@,
	b	.L1678	@
.L1743:
	ldr	r1, .L1752+32	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.41288, pH264Ctx_13(D)->CurrSlice.slice_type
	strb	r0, [r4, #206]	@, pH264Ctx_13(D)->CurrSlice.direct_spatial_mv_pred_flag
	b	.L1663	@
.L1744:
	ldr	r1, .L1752+36	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L1665	@,
	ldr	r3, [r4, #256]	@ D.41294, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
.L1666:
	ldrb	r2, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.field_pic_flag, pH264Ctx_13(D)->CurrSlice.field_pic_flag
	cmp	r2, #0	@ pH264Ctx_13(D)->CurrSlice.field_pic_flag,
	bne	.L1667	@,
	cmp	r3, #15	@ D.41294,
	bhi	.L1668	@,
	ldr	r3, [r4, #260]	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #15	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	bhi	.L1751	@,
.L1669:
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1668	@,
.L1670:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.41292, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #2	@ D.41292,
	beq	.L1690	@,
	cmp	r3, #1	@ D.41292,
	bne	.L1674	@,
	b	.L1675	@
.L1659:
	ldr	r1, .L1752+40	@,
	mvn	r10, #0	@ D.41287,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r10	@, D.41287
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1749:
	ldr	r1, .L1752+44	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.41290,
	str	r0, [r4, #1808]	@ D.41290, pH264Ctx_13(D)->CurrSlice.cabac_init_idc
	bhi	.L1682	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	beq	.L1681	@,
.L1682:
	ldr	r1, .L1752+48	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1667:
	cmp	r3, #31	@ D.41294,
	bhi	.L1671	@,
	ldr	r3, [r4, #260]	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #31	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L1672	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	bne	.L1672	@,
.L1671:
	ldr	r1, .L1752+52	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1672:
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	beq	.L1670	@,
	b	.L1671	@
.L1751:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	bne	.L1669	@,
.L1668:
	ldr	r1, .L1752+56	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1665:
	ldr	r1, .L1752+60	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldrb	r2, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	mov	r3, r0	@ D.41294,
	str	r0, [r4, #256]	@ D.41294, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L1666	@,
	ldr	r1, .L1752+64	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #256]	@ D.41294, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	str	r0, [r4, #260]	@, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	b	.L1666	@
.L1687:
	ldr	r1, .L1752+68	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1684:
	ldr	r1, .L1752+72	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1742:
	ldr	r1, .L1752+76	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1745:
	ldr	r1, .L1752+80	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.41287,
	b	.L1710	@
.L1753:
	.align	2
.L1752:
	.word	.LC123
	.word	.LC128
	.word	.LC129
	.word	.LC131
	.word	.LC133
	.word	.LC134
	.word	.LC124
	.word	.LC125
	.word	.LC116
	.word	.LC117
	.word	.LC98
	.word	.LC126
	.word	.LC127
	.word	.LC121
	.word	.LC120
	.word	.LC118
	.word	.LC119
	.word	.LC132
	.word	.LC130
	.word	.LC99
	.word	.LC122
	.fnend
	.size	ProcessSliceHeaderSecondPart, .-ProcessSliceHeaderSecondPart
	.align	2
	.global	ExitSlice
	.type	ExitSlice, %function
ExitSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp214, pH264Ctx,
	add	ip, r0, #12288	@ tmp137, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r1, #2208	@ tmp142,
	ldr	r2, [ip, #1296]	@ pH264Ctx_6(D)->PPS, pH264Ctx_6(D)->PPS
	mov	r7, #4000	@ tmp146,
	ldr	lr, [r3, #212]	@ D.41317, pH264Ctx_6(D)->CurrSlice.pic_parameter_set_id
	ldr	r6, [ip, #1292]	@ pH264Ctx_6(D)->SPS, pH264Ctx_6(D)->SPS
	ldrb	ip, [r3, #201]	@ zero_extendqisi2	@ D.41319, pH264Ctx_6(D)->CurrSlice.field_pic_flag
	mla	r1, r1, lr, r2	@ tmp143, tmp142, D.41317, pH264Ctx_6(D)->PPS
	cmp	ip, #0	@ D.41319,
	ldr	r5, [r3, #252]	@ pH264Ctx_6(D)->CurrSlice.first_mb_in_slice, pH264Ctx_6(D)->CurrSlice.first_mb_in_slice
	ldr	r4, [r3, #220]	@ pH264Ctx_6(D)->CurrSlice.frame_num, pH264Ctx_6(D)->CurrSlice.frame_num
	ldr	r2, [r1, #28]	@ pps_10->seq_parameter_set_id, pps_10->seq_parameter_set_id
	str	lr, [r3, #1856]	@ D.41317, pH264Ctx_6(D)->PrevSlice.pic_parameter_set_id
	mla	r2, r7, r2, r6	@ sps, tmp146, pps_10->seq_parameter_set_id, pH264Ctx_6(D)->SPS
	ldr	r1, [r2, #744]	@ D.41317, sps_14->seq_parameter_set_id
	strb	ip, [r3, #1848]	@ D.41319, pH264Ctx_6(D)->PrevSlice.field_pic_flag
	ldr	ip, [r3, #232]	@ pH264Ctx_6(D)->CurrSlice.nal_ref_idc, pH264Ctx_6(D)->CurrSlice.nal_ref_idc
	str	r1, [r3, #1852]	@ D.41317, pH264Ctx_6(D)->PrevSlice.seq_parameter_set_id
	ldrneb	r1, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	str	r5, [r3, #1888]	@ pH264Ctx_6(D)->CurrSlice.first_mb_in_slice, pH264Ctx_6(D)->PrevSlice.first_mb_in_slice
	str	r4, [r3, #1864]	@ pH264Ctx_6(D)->CurrSlice.frame_num, pH264Ctx_6(D)->PrevSlice.frame_num
	strneb	r1, [r3, #1849]	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->PrevSlice.bottom_field_flag
	ldrb	r1, [r3, #203]	@ zero_extendqisi2	@ D.41319, pH264Ctx_6(D)->CurrSlice.nal_unit_type
	str	ip, [r3, #1860]	@ pH264Ctx_6(D)->CurrSlice.nal_ref_idc, pH264Ctx_6(D)->PrevSlice.nal_ref_idc
	cmp	r1, #5	@ D.41319,
	strb	r1, [r3, #1850]	@ D.41319, pH264Ctx_6(D)->PrevSlice.nal_unit_type
	ldreq	r1, [r3, #240]	@ pH264Ctx_6(D)->CurrSlice.idr_pic_id, pH264Ctx_6(D)->CurrSlice.idr_pic_id
	streq	r1, [r3, #1868]	@ pH264Ctx_6(D)->CurrSlice.idr_pic_id, pH264Ctx_6(D)->PrevSlice.idr_pic_id
	ldr	r1, [r2, #2908]	@ D.41317, sps_14->pic_order_cnt_type
	cmp	r1, #0	@ D.41317,
	bne	.L1757	@,
	add	r1, r0, #16384	@ tmp191, pH264Ctx,
	ldr	ip, [r1, #3412]	@ pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb
	str	ip, [r3, #1872]	@ pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_6(D)->PrevSlice.pic_oder_cnt_lsb
	ldr	r1, [r1, #3416]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom
	str	r1, [r3, #1876]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_6(D)->PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r1, [r2, #2908]	@ D.41317, sps_14->pic_order_cnt_type
.L1757:
	cmp	r1, #1	@ D.41317,
	addeq	r2, r0, #16384	@ tmp201, pH264Ctx,
	add	r0, r0, #49152	@ tmp209, pH264Ctx,
	ldreq	r1, [r2, #3460]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt
	streq	r1, [r3, #1880]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	ldreq	r2, [r2, #3464]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt
	streq	r2, [r3, #1884]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	ldr	r3, [r0, #3644]	@ pH264Ctx_6(D)->TotalSlice, pH264Ctx_6(D)->TotalSlice
	add	r3, r3, #1	@ D.41317, pH264Ctx_6(D)->TotalSlice,
	str	r3, [r0, #3644]	@ D.41317, pH264Ctx_6(D)->TotalSlice
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	ExitSlice, .-ExitSlice
	.align	2
	.global	PicTypeStatistic
	.type	PicTypeStatistic, %function
PicTypeStatistic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #20480	@ tmp115, pH264Ctx,
	ldrb	r3, [r2, #200]	@ zero_extendqisi2	@ pH264Ctx_2(D)->CurrSlice.slice_type, pH264Ctx_2(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_2(D)->CurrSlice.slice_type,
	beq	.L1765	@,
	bcc	.L1766	@,
	cmp	r3, #2	@ pH264Ctx_2(D)->CurrSlice.slice_type,
	bxne	lr	@
	ldrb	r3, [r2, #203]	@ zero_extendqisi2	@ pH264Ctx_2(D)->CurrSlice.nal_unit_type, pH264Ctx_2(D)->CurrSlice.nal_unit_type
	add	r0, r0, #49152	@ tmp136, pH264Ctx,
	cmp	r3, #5	@ pH264Ctx_2(D)->CurrSlice.nal_unit_type,
	beq	.L1775	@,
.L1768:
	mov	r3, #0	@ tmp131,
	str	r3, [r0, #1000]	@ tmp131, pH264Ctx_2(D)->CurrPic.is_idr_pic
	bx	lr	@
.L1766:
	add	r0, r0, #49152	@ tmp138, pH264Ctx,
	ldr	r3, [r0, #996]	@ pH264Ctx_2(D)->CurrPic.pic_type, pH264Ctx_2(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_2(D)->CurrPic.pic_type,
	movne	r3, #1	@ tmp128,
	strne	r3, [r0, #996]	@ tmp128, pH264Ctx_2(D)->CurrPic.pic_type
	b	.L1768	@
.L1765:
	add	r0, r0, #49152	@ tmp118, pH264Ctx,
	mov	r2, #2	@ tmp119,
	mov	r3, #0	@ tmp122,
	str	r2, [r0, #996]	@ tmp119, pH264Ctx_2(D)->CurrPic.pic_type
	str	r3, [r0, #1000]	@ tmp122, pH264Ctx_2(D)->CurrPic.is_idr_pic
	bx	lr	@
.L1775:
	mov	r3, #1	@ tmp137,
	str	r3, [r0, #1000]	@ tmp137, pH264Ctx_2(D)->CurrPic.is_idr_pic
	bx	lr	@
	.fnend
	.size	PicTypeStatistic, .-PicTypeStatistic
	.align	2
	.global	CalcStreamBits
	.type	CalcStreamBits, %function
CalcStreamBits:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #16384	@ tmp210, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r3, #1204]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag,
	beq	.L1777	@,
	ldr	r2, [r0, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _15->nal_bitoffset, _15->nal_bitoffset
	add	r3, r3, #7	@ D.41349, _15->nal_bitoffset,
	bic	r3, r3, #7	@ D.41349, D.41349,
	str	r3, [r2, #64]	@ D.41349, _15->nal_bitoffset
	ldr	r2, [r0, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #72]	@ _20->nal_trail_zero_bit_num, _20->nal_trail_zero_bit_num
	sub	r3, r3, #1	@ D.41349, _20->nal_trail_zero_bit_num,
	str	r3, [r2, #72]	@ D.41349, _20->nal_trail_zero_bit_num
.L1777:
	ldr	r0, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldrb	r5, [r0]	@ zero_extendqisi2	@ D.41350, _152->nal_used_segment
	cmp	r5, #0	@ D.41350,
	beq	.L1792	@,
	mov	r2, #0	@ i,
	mov	r1, r0	@ ivtmp.2203, D.41351
	mov	r8, r2	@ code_len_byte, i
.L1779:
	add	r2, r2, #1	@ i, i,
	ldr	r3, [r1, #12]	@ MEM[base: _48, offset: 12B], MEM[base: _48, offset: 12B]
	cmp	r2, r5	@ i, D.41350
	add	r1, r1, #28	@ ivtmp.2203, ivtmp.2203,
	add	r8, r8, r3	@ code_len_byte, code_len_byte, MEM[base: _48, offset: 12B]
	bne	.L1779	@,
.L1778:
	mov	r7, r5, asl #2	@ tmp454, D.41350,
	mov	r6, r5, asl #5	@ tmp455, D.41350,
	ldr	lr, [r0, #72]	@ _152->nal_trail_zero_bit_num, _152->nal_trail_zero_bit_num
	rsb	ip, r7, r6	@ tmp224, tmp454, tmp455
	add	ip, r0, ip	@ tmp225, D.41351, tmp224
	ldr	r2, [r0, #64]	@ _152->nal_bitoffset, _152->nal_bitoffset
	mov	r3, r8	@, code_len_byte
	ldr	r1, .L1813	@,
	str	lr, [sp, #4]	@ _152->nal_trail_zero_bit_num,
	mov	r0, #7	@,
	ldr	ip, [ip, #12]	@ _152->stream[_34].bitstream_length, _152->stream[_34].bitstream_length
	str	ip, [sp]	@ _152->stream[_34].bitstream_length,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldrb	r0, [r3]	@ zero_extendqisi2	@ D.41348, _39->nal_used_segment
	ldr	r2, [r3, #64]	@ _39->nal_bitoffset, _39->nal_bitoffset
	mov	r1, r0, asl #5	@ tmp231, D.41348,
	and	r2, r2, #7	@ D.41349, _39->nal_bitoffset,
	sub	r1, r1, r0, asl #2	@ tmp232, tmp231, D.41348,
	add	r3, r3, r1	@ tmp233, D.41351, tmp232
	str	r2, [r3, #24]	@ D.41349, _39->stream[_41].bitsoffset
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldrb	r0, [r3]	@ zero_extendqisi2	@ D.41348, _45->nal_used_segment
	ldr	ip, [r3, #64]	@ _45->nal_bitoffset, _45->nal_bitoffset
	mov	r1, r0, asl #5	@ tmp239, D.41348,
	sub	r1, r1, r0, asl #2	@ tmp240, tmp239, D.41348,
	add	r3, r3, r1	@ tmp241, D.41351, tmp240
	ldr	r2, [r3, #16]	@ _45->stream[_50].stream_phy_addr, _45->stream[_50].stream_phy_addr
	add	r2, r2, ip, lsr #3	@ D.41349, _45->stream[_50].stream_phy_addr, _45->nal_bitoffset,
	rsb	r2, r8, r2	@ D.41349, code_len_byte, D.41349
	str	r2, [r3, #28]	@ D.41349, _45->stream[_50].bytespos
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldrb	r0, [r3]	@ zero_extendqisi2	@ D.41348, _54->nal_used_segment
	ldr	r2, [r3, #64]	@ _54->nal_bitoffset, _54->nal_bitoffset
	mov	r1, r0, asl #5	@ tmp256, D.41348,
	sub	r1, r1, r0, asl #2	@ tmp257, tmp256, D.41348,
	add	r3, r3, r1	@ tmp258, D.41351, tmp257
	ldr	r1, [r3, #12]	@ _54->stream[_56].bitstream_length, _54->stream[_56].bitstream_length
	add	r8, r8, r1	@ D.41349, code_len_byte, _54->stream[_56].bitstream_length
	rsb	r8, r2, r8, lsl #3	@ D.41349, _54->nal_bitoffset, D.41349,
	str	r8, [r3, #20]	@ D.41349, _54->stream[_56].valid_bitlen
	b	.L1808	@
.L1810:
	rsb	r3, r0, r3	@ tmp281, tmp449, tmp450
	add	r3, r1, r3	@ tmp282, D.41351, tmp281
	ldr	r2, [r3, #24]	@ _171->stream[_173].bitsoffset, _171->stream[_173].bitsoffset
	add	r2, r2, #8	@ D.41349, _171->stream[_173].bitsoffset,
	str	r2, [r3, #24]	@ D.41349, _171->stream[_173].bitsoffset
	ldr	r2, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldrb	r1, [r2]	@ zero_extendqisi2	@ D.41348, _71->nal_used_segment
	mov	r3, r1, asl #5	@ tmp294, D.41348,
	sub	r3, r3, r1, asl #2	@ tmp295, tmp294, D.41348,
	add	r3, r2, r3	@ tmp296, D.41351, tmp295
	ldr	r2, [r3, #28]	@ _71->stream[_73].bytespos, _71->stream[_73].bytespos
	sub	r2, r2, #1	@ D.41349, _71->stream[_73].bytespos,
	str	r2, [r3, #28]	@ D.41349, _71->stream[_73].bytespos
.L1808:
	ldr	r1, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.41348,* D.41351
	mov	r0, r3, asl #2	@ tmp449, D.41348,
	mov	r3, r3, asl #5	@ tmp450, D.41348,
	rsb	r2, r0, r3	@ tmp274, tmp449, tmp450
	add	r2, r1, r2	@ tmp275, D.41351, tmp274
	ldr	lr, [r2, #28]	@ D.41349,
	tst	lr, #3	@ D.41349,
	bne	.L1810	@,
	rsb	ip, r7, r6	@ tmp316, tmp454, tmp455
	mov	r2, r5	@, D.41350
	add	ip, r1, ip	@ tmp317, D.41351, tmp316
	mov	r0, #7	@,
	ldr	r1, .L1813+4	@,
	ldr	r3, [ip, #24]	@ _172->stream[i_158].bitsoffset, _172->stream[i_158].bitsoffset
	str	lr, [sp, #4]	@ D.41349,
	ldr	ip, [ip, #20]	@ _172->stream[i_158].valid_bitlen, _172->stream[i_158].valid_bitlen
	str	ip, [sp]	@ _172->stream[i_158].valid_bitlen,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldr	r2, [r3, #68]	@ D.41349, _83->nal_segment
	sub	r1, r2, #1	@ D.41349, D.41349,
	cmp	r1, #1	@ D.41349,
	bhi	.L1811	@,
	ldrb	r6, [r3]	@ zero_extendqisi2	@ D.41348, _83->nal_used_segment
	add	r6, r6, #1	@ i, D.41348,
	cmp	r2, r6	@ D.41349, i
	bls	.L1783	@,
	mov	r5, #0	@ tmp458,
.L1786:
	mov	ip, r6, asl #2	@ tmp452, i,
	mov	r0, r6, asl #5	@ tmp453, i,
	rsb	r1, ip, r0	@ tmp333, tmp452, tmp453
	add	r3, r3, r1	@ tmp334, D.41351, tmp333
	str	r5, [r3, #24]	@ tmp458, _175->stream[i_159].bitsoffset
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp341, D.41351, tmp333
	ldr	r2, [r3, #16]	@ D.41349, _94->stream[i_159].stream_phy_addr
	str	r2, [r3, #28]	@ D.41349, _94->stream[i_159].bytespos
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp353, D.41351, tmp333
	ldr	r2, [r3, #12]	@ _97->stream[i_159].bitstream_length, _97->stream[i_159].bitstream_length
	mov	r2, r2, asl #3	@ D.41349, _97->stream[i_159].bitstream_length,
	str	r2, [r3, #20]	@ D.41349, _97->stream[i_159].valid_bitlen
	b	.L1809	@
.L1812:
	add	r3, r3, r1	@ tmp375, D.41351, tmp457
	ldr	r2, [r3, #24]	@ _178->stream[i_159].bitsoffset, _178->stream[i_159].bitsoffset
	add	r2, r2, #8	@ D.41349, _178->stream[i_159].bitsoffset,
	str	r2, [r3, #24]	@ D.41349, _178->stream[i_159].bitsoffset
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp389, D.41351, tmp457
	ldr	r2, [r3, #28]	@ _107->stream[i_159].bytespos, _107->stream[i_159].bytespos
	sub	r2, r2, #1	@ D.41349, _107->stream[i_159].bytespos,
	str	r2, [r3, #28]	@ D.41349, _107->stream[i_159].bytespos
.L1809:
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	add	r2, r3, r1	@ tmp367, D.41351, tmp333
	ldr	r2, [r2, #28]	@ _141->stream[i_159].bytespos,
	tst	r2, #3	@ _141->stream[i_159].bytespos,
	bne	.L1812	@,
	rsb	ip, ip, r0	@ tmp410, tmp452, tmp453
	mov	r2, r6	@, i
	add	ip, r3, ip	@ tmp411, D.41351, tmp410
	ldr	r1, .L1813+8	@,
	mov	r0, #7	@,
	add	r6, r6, #1	@ i, i,
	ldr	r3, [ip, #24]	@ _179->stream[i_159].bitsoffset, _179->stream[i_159].bitsoffset
	ldr	ip, [ip, #20]	@ _179->stream[i_159].valid_bitlen, _179->stream[i_159].valid_bitlen
	str	ip, [sp]	@ _179->stream[i_159].valid_bitlen,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldr	r2, [r3, #68]	@ D.41349, _91->nal_segment
	cmp	r2, r6	@ D.41349, i
	bhi	.L1786	@,
	sub	r1, r2, #1	@ D.41349, D.41349,
.L1783:
	mov	r0, r1, asl #5	@ tmp424, D.41349,
	ldr	ip, [r3, #72]	@ _176->nal_trail_zero_bit_num, _176->nal_trail_zero_bit_num
	sub	r1, r0, r1, asl #2	@ tmp425, tmp424, D.41349,
	add	r3, r3, r1	@ tmp426, D.41351, tmp425
	ldr	r2, [r3, #20]	@ _176->stream[_113].valid_bitlen, _176->stream[_113].valid_bitlen
	rsb	r2, ip, r2	@ D.41349, _176->nal_trail_zero_bit_num, _176->stream[_113].valid_bitlen
	str	r2, [r3, #20]	@ D.41349, _176->stream[_113].valid_bitlen
	ldr	ip, [r4, #368]	@ D.41351, pH264Ctx_13(D)->pCurrNal
	ldrb	r1, [ip]	@ zero_extendqisi2	@ i, _125->nal_used_segment
	ldr	r3, [ip, #68]	@ _125->nal_segment, _125->nal_segment
	cmp	r1, r3	@ i, _125->nal_segment
	bcs	.L1776	@,
	sxth	r3, r1	@ D.41350, i
	add	r4, r4, #49152	@ tmp451, pH264Ctx,
	mov	r2, r3, asl #5	@ tmp441, D.41350,
	sub	r3, r2, r3, asl #2	@ D.41353, tmp441, D.41350,
	add	r3, ip, r3	@ ivtmp.2194, D.41351, D.41353
.L1790:
	ldr	r2, [r3, #28]	@ D.41349, MEM[base: _26, offset: 28B]
	add	r1, r1, #1	@ i, i,
	ldr	r0, [r4, #1024]	@ pH264Ctx_13(D)->CurrPic.stream_base_addr, pH264Ctx_13(D)->CurrPic.stream_base_addr
	add	r3, r3, #28	@ ivtmp.2194, ivtmp.2194,
	cmp	r2, r0	@ D.41349, pH264Ctx_13(D)->CurrPic.stream_base_addr
	strcc	r2, [r4, #1024]	@ D.41349, pH264Ctx_13(D)->CurrPic.stream_base_addr
	ldr	r2, [ip, #68]	@ _125->nal_segment, _125->nal_segment
	cmp	r2, r1	@ _125->nal_segment, i
	bhi	.L1790	@,
.L1776:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1811:
	ldr	r1, .L1813+12	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L1792:
	mov	r8, r5	@ code_len_byte, D.41350
	b	.L1778	@
.L1814:
	.align	2
.L1813:
	.word	.LC135
	.word	.LC136
	.word	.LC138
	.word	.LC137
	.fnend
	.size	CalcStreamBits, .-CalcStreamBits
	.align	2
	.global	Scaling_List
	.type	Scaling_List, %function
Scaling_List:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r3, #0	@ sizeOfScalingList
	ldmlefd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	mov	fp, r1	@ scalingList_Org, scalingList_Org
	mov	r1, #8	@ lastScale,
	mov	r10, r2	@ scalingList, scalingList
	mov	r7, r3	@ sizeOfScalingList, sizeOfScalingList
	ldr	r9, .L1828	@ tmp176,
	mov	r6, r1	@ lastScale, lastScale
	mov	r5, #0	@ j,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	b	.L1820	@
.L1819:
	mov	r0, r4, lsr #2	@ D.41368, scanj,
	and	ip, r4, #3	@ b_posit, scanj,
	str	r6, [fp, r4, asl #2]	@ lastScale, *_29
	mov	r3, #255	@ tmp171,
	ldr	r2, [r10, r0, asl #2]	@ *_37, *_37
	mov	ip, ip, asl #3	@ D.41366, b_posit,
	uxtb	lr, r6	@ D.41366, lastScale
	cmp	r5, r7	@ j, sizeOfScalingList
	bic	r2, r2, r3, asl ip	@ D.41368, *_37, tmp171,
	orr	r3, r2, lr, asl ip	@ D.41368, D.41368, D.41366,
	str	r3, [r10, r0, asl #2]	@ D.41368, *_37
	beq	.L1827	@,
.L1820:
	cmp	r7, #16	@ sizeOfScalingList,
	ldreq	r3, .L1828+4	@ tmp191,
	ldrneb	r4, [r5, r9]	@ zero_extendqisi2	@ scanj, MEM[symbol: g_ZZ_SCAN8, index: _68, offset: 0B]
	ldreqb	r4, [r5, r3]	@ zero_extendqisi2	@ scanj, MEM[symbol: g_ZZ_SCAN, index: _69, offset: 0B]
	cmp	r1, #0	@ lastScale,
	add	r5, r5, #1	@ j, j,
	beq	.L1819	@,
	ldr	r1, .L1828+8	@,
	mov	r0, r8	@, pH264Ctx
	bl	se_v	@
	ldr	r2, [sp, #40]	@ tmp192, UseDefaultScalingMatrix
	add	r0, r6, r0	@ D.41366, lastScale,
	add	r0, r0, #256	@ D.41366, D.41366,
	mov	r1, r0, asr #31	@ tmp154, D.41366,
	mov	r1, r1, lsr #24	@ tmp155, tmp154,
	add	r0, r0, r1	@ tmp156, D.41366, tmp155
	uxtb	r0, r0	@ tmp157, tmp156
	rsb	r3, r1, r0	@ D.41367, tmp155, tmp157
	rsb	r1, r1, r0	@ lastScale, tmp155, tmp157
	clz	r3, r3	@ D.41367, D.41367
	mov	r3, r3, lsr #5	@ D.41367, D.41367,
	cmp	r3, #0	@ D.41367,
	moveq	r6, r1	@ lastScale, lastScale
	cmp	r4, #0	@ scanj,
	movne	r3, #0	@, tmp164
	andeq	r3, r3, #1	@,, tmp164, D.41367
	str	r3, [r2]	@ tmp164, *UseDefaultScalingMatrix_25(D)
	b	.L1819	@
.L1827:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1829:
	.align	2
.L1828:
	.word	.LANCHOR0+40
	.word	.LANCHOR0+24
	.word	.LC139
	.fnend
	.size	Scaling_List, .-Scaling_List
	.align	2
	.global	ProcessPPS
	.type	ProcessPPS, %function
ProcessPPS:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1	@ pPPS, pPPS
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r1, .L1889	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	add	r6, r5, #49152	@ tmp356, pH264Ctx,
	strb	r0, [r4]	@, pPPS_22(D)->entropy_coding_mode_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1880	@,
	ldr	r1, .L1889+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #1]	@, pPPS_22(D)->pic_order_present_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1880	@,
	ldr	r1, .L1889+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@ D.41419,
	str	r0, [r4, #32]	@ D.41419, pPPS_22(D)->num_slice_groups_minus1
	bne	.L1834	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	beq	.L1835	@,
.L1834:
	ldr	r1, .L1889+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L1889+16	@ tmp237,
	ldr	r3, [r3]	@ D.41430, g_event_report
	cmp	r3, #0	@ D.41430,
	beq	.L1880	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_18(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #102	@,
	blx	r3	@ D.41430
	mvn	r0, #0	@ D.41415,
.L1832:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1842:
	ldr	r1, .L1889+20	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1889+24	@,
	str	r0, [r4, #60]	@, pPPS_22(D)->transform_8x8_mode_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41420,
	strb	r0, [r4, #18]	@ D.41420, pPPS_22(D)->pic_scaling_matrix_present_flag
	cmp	r0, #1	@ D.41420,
	beq	.L1843	@,
.L1861:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, .L1889+28	@,
	bl	se_v	@
	add	r3, r0, #12	@ D.41429, D.41421,
	str	r0, [r4, #56]	@ D.41421, pPPS_22(D)->second_chroma_qp_index_offset
	cmp	r3, #24	@ D.41429,
	bhi	.L1844	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	beq	.L1862	@,
.L1844:
	ldr	r1, .L1889+32	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1880:
	mvn	r0, #0	@ D.41415,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1835:
	ldr	r1, .L1889+36	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #31	@ D.41419,
	str	r0, [r4, #36]	@ D.41419, pPPS_22(D)->num_ref_idx_l0_active_minus1
	bhi	.L1836	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1836	@,
	ldr	r1, .L1889+40	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #31	@ D.41419,
	str	r0, [r4, #40]	@ D.41419, pPPS_22(D)->num_ref_idx_l1_active_minus1
	bhi	.L1838	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1838	@,
	ldr	r1, .L1889+44	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #2]	@, pPPS_22(D)->weighted_pred_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1880	@,
	ldr	r2, .L1889+48	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	cmp	r0, #2	@ D.41421,
	str	r0, [r4, #44]	@ D.41421, pPPS_22(D)->weighted_bipred_idc
	bhi	.L1881	@,
	ldr	r1, .L1889+52	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1889+56	@,
	str	r0, [r4, #48]	@, pPPS_22(D)->pic_init_qp_minus26
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1889+60	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1889+64	@,
	str	r0, [r4, #52]	@, pPPS_22(D)->chroma_qp_index_offset
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1889+68	@,
	strb	r0, [r4, #3]	@, pPPS_22(D)->deblocking_filter_control_present_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1889+72	@,
	strb	r0, [r4, #4]	@, pPPS_22(D)->constrained_intra_pred_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41420,
	strb	r0, [r4, #17]	@ D.41420, pPPS_22(D)->redundant_pic_cnt_present_flag
	cmp	r0, #0	@ D.41420,
	bne	.L1882	@,
.L1841:
	ldr	r3, [r4, #52]	@ pPPS_22(D)->chroma_qp_index_offset, pPPS_22(D)->chroma_qp_index_offset
	add	r0, r5, #13504	@, pH264Ctx,
	mov	r7, #0	@ tmp269,
	add	r0, r0, #24	@,,
	str	r7, [r4, #60]	@ tmp269, pPPS_22(D)->transform_8x8_mode_flag
	str	r3, [r4, #56]	@ pPPS_22(D)->chroma_qp_index_offset, pPPS_22(D)->second_chroma_qp_index_offset
	strb	r7, [r4, #18]	@ tmp269, pPPS_22(D)->pic_scaling_matrix_present_flag
	bl	BsResidBits	@
	ldr	r3, [r5, #368]	@ pH264Ctx_18(D)->pCurrNal, pH264Ctx_18(D)->pCurrNal
	ldr	r3, [r3, #72]	@ _80->nal_trail_zero_bit_num, _80->nal_trail_zero_bit_num
	add	r3, r3, #3	@ D.41419, _80->nal_trail_zero_bit_num,
	cmp	r0, r3	@, D.41419
	bcs	.L1842	@,
.L1862:
	mov	r0, #0	@ D.41415,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1882:
	ldr	r1, .L1889+76	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1841	@
.L1836:
	ldr	r1, .L1889+80	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41415,
	b	.L1832	@
.L1838:
	ldr	r1, .L1889+84	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41415,
	b	.L1832	@
.L1843:
	add	r9, sp, #12	@ ivtmp.2233,,
	add	fp, r4, #4	@ ivtmp.2239, pPPS,
	add	r8, r4, #1984	@ ivtmp.2246, pPPS,
	add	r10, r4, #64	@ ivtmp.2250, pPPS,
	b	.L1852	@
.L1886:
	ldr	r3, [ip, #1292]	@ pH264Ctx_18(D)->SPS, pH264Ctx_18(D)->SPS
	ldr	ip, [r4, #28]	@ pPPS_22(D)->seq_parameter_set_id, pPPS_22(D)->seq_parameter_set_id
	mla	r3, lr, ip, r3	@ D.41427, tmp301, pPPS_22(D)->seq_parameter_set_id, pH264Ctx_18(D)->SPS
	ldrb	ip, [r3, #25]	@ zero_extendqisi2	@ _107->seq_scaling_matrix_present_flag, _107->seq_scaling_matrix_present_flag
	cmp	ip, #1	@ _107->seq_scaling_matrix_present_flag,
	beq	.L1883	@,
	ldr	r3, .L1889+88	@ tmp390,
	cmp	r1, #0	@ D.41426,
	add	ip, r3, #16	@ tmp391,,
	moveq	r3, ip	@ tmp390, tmp391
	mov	r1, r3	@, tmp390
	bl	memcpy	@
.L1847:
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #16	@ ivtmp.2246, ivtmp.2246,
	cmp	r7, #6	@ i,
	add	r10, r10, #64	@ ivtmp.2250, ivtmp.2250,
	beq	.L1884	@,
.L1852:
	ldr	r1, .L1889+92	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	clz	r1, r7	@ D.41426, i
	add	ip, r5, #12288	@ tmp298, pH264Ctx,
	mov	lr, #4000	@ tmp301,
	mov	r2, #16	@,
	mov	r1, r1, lsr #5	@ D.41426, D.41426,
	cmp	r0, #1	@ D.41419,
	mov	r3, r0	@ D.41419,
	mov	r0, r8	@, ivtmp.2246
	str	r3, [r9, #4]!	@ D.41419, MEM[base: _198, offset: 0B]
	strb	r3, [fp, #1]!	@ D.41419, MEM[base: _199, offset: 0B]
	beq	.L1885	@,
	cmp	r7, #0	@ i,
	cmpne	r7, #3	@, i,
	beq	.L1886	@,
	mov	r2, #16	@,
	sub	r1, r8, #16	@, ivtmp.2246,
	mov	r0, r8	@, ivtmp.2246
	bl	memcpy	@
	b	.L1847	@
.L1884:
	add	r9, r4, #2080	@ ivtmp.2217, pPPS,
	add	fp, r4, #448	@ ivtmp.2220, pPPS,
	add	r8, sp, #8	@ ivtmp.2223,,
	add	r10, r4, #11	@ ivtmp.2225, pPPS,
	mov	r7, #0	@ i,
.L1860:
	ldr	r2, [r4, #60]	@ pPPS_22(D)->transform_8x8_mode_flag, pPPS_22(D)->transform_8x8_mode_flag
	mov	r3, #0	@ tmp324,
	cmp	r2, #1	@ pPPS_22(D)->transform_8x8_mode_flag,
	strne	r3, [r8]	@ tmp324, MEM[base: _185, offset: 0B]
	strneb	r3, [r10]	@ tmp324, MEM[base: _186, offset: 0B]
	beq	.L1887	@,
.L1855:
	add	ip, r5, #12288	@ tmp333, pH264Ctx,
	ldr	r1, [r4, #28]	@ pPPS_22(D)->seq_parameter_set_id, pPPS_22(D)->seq_parameter_set_id
	mov	r3, #4000	@ tmp336,
	mov	r0, r9	@, ivtmp.2217
	ldr	ip, [ip, #1292]	@ pH264Ctx_18(D)->SPS, pH264Ctx_18(D)->SPS
	mov	r2, #64	@,
	mla	r3, r3, r1, ip	@ D.41427, tmp336, pPPS_22(D)->seq_parameter_set_id, pH264Ctx_18(D)->SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ _137->seq_scaling_matrix_present_flag, _137->seq_scaling_matrix_present_flag
	cmp	r1, #1	@ _137->seq_scaling_matrix_present_flag,
	beq	.L1888	@,
	ldr	r1, .L1889+96	@ tmp394,
	cmp	r7, #0	@ i,
	add	r3, r1, #64	@ tmp395,,
	movne	r1, r3	@ tmp394, tmp395
	bl	memcpy	@
.L1856:
	add	r7, r7, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2217, ivtmp.2217,
	cmp	r7, #2	@ i,
	add	fp, fp, #256	@ ivtmp.2220, ivtmp.2220,
	add	r8, r8, #4	@ ivtmp.2223, ivtmp.2223,
	add	r10, r10, #1	@ ivtmp.2225, ivtmp.2225,
	bne	.L1860	@,
	b	.L1861	@
.L1885:
	mov	r3, r2	@,
	str	r9, [sp]	@ ivtmp.2233,
	mov	r2, r8	@, ivtmp.2246
	mov	r1, r10	@, ivtmp.2250
	mov	r0, r5	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [r9]	@ MEM[base: _198, offset: 0B], MEM[base: _198, offset: 0B]
	cmp	r3, #1	@ MEM[base: _198, offset: 0B],
	bne	.L1847	@,
	ldr	r1, .L1889+88	@ tmp388,
	mov	r2, #16	@,
	cmp	r7, #2	@ i,
	mov	r0, r8	@, ivtmp.2246
	add	r3, r1, r2	@ tmp389,,
	movhi	r1, r3	@ tmp388, tmp389
	bl	memcpy	@
	b	.L1847	@
.L1883:
	add	r1, r3, r7, lsl #4	@ tmp306, D.41427, i,
	mov	r2, #16	@,
	add	r1, r1, #2672	@, tmp306,
	mov	r0, r8	@, ivtmp.2246
	add	r1, r1, #8	@,,
	bl	memcpy	@
	b	.L1847	@
.L1881:
	ldr	r1, .L1889+100	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41415,
	b	.L1832	@
.L1887:
	ldr	r1, .L1889+104	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	mov	r2, r9	@, ivtmp.2217
	mov	r1, fp	@, ivtmp.2220
	mov	r3, #64	@,
	mov	ip, r0	@ D.41419,
	cmp	ip, #1	@ D.41419,
	mov	r0, r5	@, pH264Ctx
	str	ip, [r8]	@ D.41419, MEM[base: _183, offset: 0B]
	strb	ip, [r10]	@ D.41419, MEM[base: _184, offset: 0B]
	bne	.L1855	@,
	str	r8, [sp]	@ ivtmp.2223,
	bl	Scaling_List	@
	ldr	r3, [r8]	@ MEM[base: _183, offset: 0B], MEM[base: _183, offset: 0B]
	cmp	r3, #1	@ MEM[base: _183, offset: 0B],
	bne	.L1856	@,
	ldr	r1, .L1889+96	@ tmp392,
	mov	r2, #64	@,
	cmp	r7, #0	@ i,
	mov	r0, r9	@, ivtmp.2217
	add	r3, r1, r2	@ tmp393,,
	movne	r1, r3	@ tmp392, tmp393
	bl	memcpy	@
	b	.L1856	@
.L1888:
	add	r1, r3, r7, lsl #6	@ tmp341, D.41427, i,
	add	r1, r1, #2768	@, tmp341,
	add	r1, r1, #8	@,,
	bl	memcpy	@
	b	.L1856	@
.L1890:
	.align	2
.L1889:
	.word	.LC140
	.word	.LC141
	.word	.LC142
	.word	.LC143
	.word	g_event_report
	.word	.LC158
	.word	.LC159
	.word	.LC160
	.word	.LC163
	.word	.LC144
	.word	.LC146
	.word	.LC148
	.word	.LC149
	.word	.LC151
	.word	.LC152
	.word	.LC153
	.word	.LC154
	.word	.LC155
	.word	.LC156
	.word	.LC157
	.word	.LC145
	.word	.LC147
	.word	.LANCHOR1+80
	.word	.LC161
	.word	.LANCHOR1+112
	.word	.LC150
	.word	.LC162
	.fnend
	.size	ProcessPPS, .-ProcessPPS
	.align	2
	.global	PPSEqual
	.type	PPSEqual, %function
PPSEqual:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r6, r0, #0	@ pPPS1, pPPS1
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L1915	@,
	cmp	r1, #0	@ pPPS2,
	beq	.L1916	@,
	ldr	r2, [r6, #24]	@ pPPS1_12(D)->pic_parameter_set_id, pPPS1_12(D)->pic_parameter_set_id
	ldr	ip, [r6, #28]	@ pPPS1_12(D)->seq_parameter_set_id, pPPS1_12(D)->seq_parameter_set_id
	ldr	r0, [r1, #28]	@ pPPS2_15(D)->seq_parameter_set_id, pPPS2_15(D)->seq_parameter_set_id
	ldr	r4, [r1, #24]	@ pPPS2_15(D)->pic_parameter_set_id, pPPS2_15(D)->pic_parameter_set_id
	ldrb	lr, [r6]	@ zero_extendqisi2	@ pPPS1_12(D)->entropy_coding_mode_flag, pPPS1_12(D)->entropy_coding_mode_flag
	cmp	ip, r0	@ pPPS1_12(D)->seq_parameter_set_id, pPPS2_15(D)->seq_parameter_set_id
	cmpeq	r2, r4	@, pPPS1_12(D)->pic_parameter_set_id, pPPS2_15(D)->pic_parameter_set_id
	ldrb	r3, [r1]	@ zero_extendqisi2	@ pPPS2_15(D)->entropy_coding_mode_flag, pPPS2_15(D)->entropy_coding_mode_flag
	ldrb	r4, [r6, #1]	@ zero_extendqisi2	@ pPPS1_12(D)->pic_order_present_flag, pPPS1_12(D)->pic_order_present_flag
	ldrb	ip, [r1, #1]	@ zero_extendqisi2	@ pPPS2_15(D)->pic_order_present_flag, pPPS2_15(D)->pic_order_present_flag
	moveq	r2, #1	@ tmp229,
	movne	r2, #0	@ tmp229,
	cmp	lr, r3	@ pPPS1_12(D)->entropy_coding_mode_flag, pPPS2_15(D)->entropy_coding_mode_flag
	movne	r0, #0	@, tmp235
	andeq	r0, r2, #1	@,, tmp235, tmp229
	ldr	lr, [r6, #36]	@ pPPS1_12(D)->num_ref_idx_l0_active_minus1, pPPS1_12(D)->num_ref_idx_l0_active_minus1
	cmp	r4, ip	@ pPPS1_12(D)->pic_order_present_flag, pPPS2_15(D)->pic_order_present_flag
	movne	r3, #0	@, tmp241
	andeq	r3, r0, #1	@,, tmp241, tmp235
	ldr	r2, [r1, #36]	@ pPPS2_15(D)->num_ref_idx_l0_active_minus1, pPPS2_15(D)->num_ref_idx_l0_active_minus1
	ldr	r4, [r6, #40]	@ pPPS1_12(D)->num_ref_idx_l1_active_minus1, pPPS1_12(D)->num_ref_idx_l1_active_minus1
	ldr	r0, [r1, #40]	@ pPPS2_15(D)->num_ref_idx_l1_active_minus1, pPPS2_15(D)->num_ref_idx_l1_active_minus1
	cmp	lr, r2	@ pPPS1_12(D)->num_ref_idx_l0_active_minus1, pPPS2_15(D)->num_ref_idx_l0_active_minus1
	movne	ip, #0	@, tmp247
	andeq	ip, r3, #1	@,, tmp247, tmp241
	ldrb	lr, [r6, #2]	@ zero_extendqisi2	@ pPPS1_12(D)->weighted_pred_flag, pPPS1_12(D)->weighted_pred_flag
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ pPPS2_15(D)->weighted_pred_flag, pPPS2_15(D)->weighted_pred_flag
	cmp	r4, r0	@ pPPS1_12(D)->num_ref_idx_l1_active_minus1, pPPS2_15(D)->num_ref_idx_l1_active_minus1
	movne	r2, #0	@, tmp253
	andeq	r2, ip, #1	@,, tmp253, tmp247
	ldr	r4, [r6, #44]	@ pPPS1_12(D)->weighted_bipred_idc, pPPS1_12(D)->weighted_bipred_idc
	ldr	ip, [r1, #44]	@ pPPS2_15(D)->weighted_bipred_idc, pPPS2_15(D)->weighted_bipred_idc
	cmp	lr, r3	@ pPPS1_12(D)->weighted_pred_flag, pPPS2_15(D)->weighted_pred_flag
	movne	r0, #0	@, tmp259
	andeq	r0, r2, #1	@,, tmp259, tmp253
	ldr	lr, [r6, #48]	@ pPPS1_12(D)->pic_init_qp_minus26, pPPS1_12(D)->pic_init_qp_minus26
	ldr	r2, [r1, #48]	@ pPPS2_15(D)->pic_init_qp_minus26, pPPS2_15(D)->pic_init_qp_minus26
	cmp	r4, ip	@ pPPS1_12(D)->weighted_bipred_idc, pPPS2_15(D)->weighted_bipred_idc
	movne	r3, #0	@, tmp265
	andeq	r3, r0, #1	@,, tmp265, tmp259
	ldr	r4, [r6, #52]	@ pPPS1_12(D)->chroma_qp_index_offset, pPPS1_12(D)->chroma_qp_index_offset
	ldr	r0, [r1, #52]	@ pPPS2_15(D)->chroma_qp_index_offset, pPPS2_15(D)->chroma_qp_index_offset
	cmp	lr, r2	@ pPPS1_12(D)->pic_init_qp_minus26, pPPS2_15(D)->pic_init_qp_minus26
	movne	ip, #0	@, tmp271
	andeq	ip, r3, #1	@,, tmp271, tmp265
	ldrb	r5, [r6, #3]	@ zero_extendqisi2	@ pPPS1_12(D)->deblocking_filter_control_present_flag, pPPS1_12(D)->deblocking_filter_control_present_flag
	ldrb	lr, [r1, #3]	@ zero_extendqisi2	@ pPPS2_15(D)->deblocking_filter_control_present_flag, pPPS2_15(D)->deblocking_filter_control_present_flag
	cmp	r4, r0	@ pPPS1_12(D)->chroma_qp_index_offset, pPPS2_15(D)->chroma_qp_index_offset
	movne	r2, #0	@, tmp277
	andeq	r2, ip, #1	@,, tmp277, tmp271
	ldrb	r3, [r6, #4]	@ zero_extendqisi2	@ pPPS1_12(D)->constrained_intra_pred_flag, pPPS1_12(D)->constrained_intra_pred_flag
	ldrb	r4, [r1, #4]	@ zero_extendqisi2	@ pPPS2_15(D)->constrained_intra_pred_flag, pPPS2_15(D)->constrained_intra_pred_flag
	cmp	r5, lr	@ pPPS1_12(D)->deblocking_filter_control_present_flag, pPPS2_15(D)->deblocking_filter_control_present_flag
	movne	r0, #0	@, tmp283
	andeq	r0, r2, #1	@,, tmp283, tmp277
	ldr	ip, [r6, #60]	@ D.41557, pPPS1_12(D)->transform_8x8_mode_flag
	ldr	lr, [r1, #60]	@ pPPS2_15(D)->transform_8x8_mode_flag, pPPS2_15(D)->transform_8x8_mode_flag
	cmp	r3, r4	@ pPPS1_12(D)->constrained_intra_pred_flag, pPPS2_15(D)->constrained_intra_pred_flag
	movne	r3, #0	@, tmp289
	andeq	r3, r0, #1	@,, tmp289, tmp283
	ldrb	r2, [r1, #18]	@ zero_extendqisi2	@ pPPS2_15(D)->pic_scaling_matrix_present_flag, pPPS2_15(D)->pic_scaling_matrix_present_flag
	ldrb	r0, [r6, #18]	@ zero_extendqisi2	@ D.41559, pPPS1_12(D)->pic_scaling_matrix_present_flag
	cmp	ip, lr	@ D.41557, pPPS2_15(D)->transform_8x8_mode_flag
	movne	r3, #0	@, tmp294
	andeq	r3, r3, #1	@,, tmp294, tmp289
	cmp	r2, r0	@ pPPS2_15(D)->pic_scaling_matrix_present_flag, D.41559
	movne	r2, #0	@, equal
	andeq	r2, r3, #1	@,, equal, tmp294
	cmp	r0, #0	@ D.41559,
	beq	.L1895	@,
	mov	ip, ip, asl #1	@ D.41557, D.41557,
	adds	r3, ip, #6	@ D.41557, D.41557,
	beq	.L1895	@,
	sub	r8, r1, #1088	@ ivtmp.2320, pPPS2,
	mov	fp, #0	@ ivtmp.2324,
	sub	r8, r8, #4	@ ivtmp.2320, ivtmp.2320,
	add	r10, r6, #4	@ ivtmp.2302, pPPS1,
	add	r9, r1, #4	@ ivtmp.2310, pPPS2,
	mov	r0, fp	@ i, ivtmp.2324
	mov	r7, r6	@ ivtmp.2319, pPPS1
	mov	r5, r3	@ D.41557, D.41557
	str	r1, [sp, #4]	@ pPPS2, %sfp
.L1900:
	ldrb	r3, [r10, #1]!	@ zero_extendqisi2	@ D.41561, MEM[base: _4, offset: 0B]
	ldrsb	ip, [r9, #1]!	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	sxtb	r1, r3	@ D.41561, D.41561
	cmp	ip, r1	@ MEM[base: _3, offset: 0B], D.41561
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r3, #0	@ D.41561,
	beq	.L1914	@,
	cmp	r0, #5	@ i,
	bhi	.L1897	@,
	ldr	r1, [sp, #4]	@ pPPS2, %sfp
	add	r4, fp, #64	@ ivtmp.2324, ivtmp.2324,
	add	fp, fp, #128	@ D.41563, ivtmp.2324,
	add	r3, r6, r4	@ ivtmp.2262, pPPS1, ivtmp.2324
	add	fp, r6, fp	@ D.41564, pPPS1, D.41563
	add	r1, r1, r4	@ ivtmp.2271, pPPS2, ivtmp.2324
.L1898:
	ldr	lr, [r3], #4	@ D.41560, MEM[base: _137, offset: 0B]
	ldr	ip, [r1], #4	@ D.41560, MEM[base: _136, offset: 0B]
	cmp	lr, ip	@ D.41560, D.41560
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r3, fp	@ ivtmp.2262, D.41564
	bne	.L1898	@,
.L1896:
	add	r0, r0, #1	@ i, i,
	add	r7, r7, #256	@ ivtmp.2319, ivtmp.2319,
	cmp	r0, r5	@ i, D.41557
	add	r8, r8, #256	@ ivtmp.2320, ivtmp.2320,
	mov	fp, r4	@ ivtmp.2324, ivtmp.2324
	bne	.L1900	@,
	ldr	r1, [sp, #4]	@ pPPS2, %sfp
.L1895:
	ldr	r0, [r6, #56]	@ pPPS1_12(D)->second_chroma_qp_index_offset, pPPS1_12(D)->second_chroma_qp_index_offset
	ldr	r3, [r1, #56]	@ pPPS2_15(D)->second_chroma_qp_index_offset, pPPS2_15(D)->second_chroma_qp_index_offset
	cmp	r0, r3	@ pPPS1_12(D)->second_chroma_qp_index_offset, pPPS2_15(D)->second_chroma_qp_index_offset
	movne	r0, #0	@, equal
	andeq	r0, r2, #1	@,, equal, equal
	eor	r0, r0, #1	@ D.41558, equal,
	rsb	r0, r0, #0	@ D.41555, D.41558
.L1893:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1897:
	sub	r3, r7, #1088	@ ivtmp.2283, ivtmp.2319,
	sub	r4, r7, #836	@ D.41564, ivtmp.2319,
	sub	r3, r3, #4	@ ivtmp.2283, ivtmp.2283,
	mov	r1, r8	@ ivtmp.2292, ivtmp.2320
.L1899:
	ldr	lr, [r3, #4]!	@ MEM[base: _123, offset: 0B], MEM[base: _123, offset: 0B]
	ldr	ip, [r1, #4]!	@ MEM[base: _122, offset: 0B], MEM[base: _122, offset: 0B]
	cmp	lr, ip	@ MEM[base: _123, offset: 0B], MEM[base: _122, offset: 0B]
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r3, r4	@ ivtmp.2283, D.41564
	bne	.L1899	@,
.L1914:
	add	r4, fp, #64	@ ivtmp.2324, ivtmp.2324,
	b	.L1896	@
.L1916:
	mov	r0, r1	@, pPPS2
	movw	r3, #9273	@,
	ldr	r2, .L1917	@,
	ldr	r1, .L1917+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41555,
	b	.L1893	@
.L1915:
	movw	r3, #9272	@,
	ldr	r2, .L1917	@,
	ldr	r1, .L1917+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41555,
	b	.L1893	@
.L1918:
	.align	2
.L1917:
	.word	.LC21
	.word	.LC22
	.fnend
	.size	PPSEqual, .-PPSEqual
	.align	2
	.global	H264_DecPPS
	.type	H264_DecPPS, %function
H264_DecPPS:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, .L1937	@,
	add	r4, r0, #12288	@ tmp154, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #1288]	@ pH264Ctx_4(D)->MaxPpsNum, pH264Ctx_4(D)->MaxPpsNum
	sub	r3, r3, #1	@ D.41568, pH264Ctx_4(D)->MaxPpsNum,
	cmp	r0, r3	@ pic_parameter_set_id, D.41568
	mov	r6, r0	@ pic_parameter_set_id,
	bls	.L1920	@,
	ldr	r1, .L1937+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #1288]	@ D.41568, pH264Ctx_4(D)->MaxPpsNum
	sub	r2, r3, #1	@ D.41568, D.41568,
	cmp	r6, r2	@ pic_parameter_set_id, D.41568
	bls	.L1928	@,
	ldr	r2, .L1937+8	@ tmp161,
	ldr	ip, [r2]	@ D.41570, g_event_report
	cmp	ip, #0	@ D.41570,
	beq	.L1928	@,
	add	r5, r5, #49152	@ tmp164, pH264Ctx,
	str	r6, [sp]	@ pic_parameter_set_id, para
	str	r3, [sp, #4]	@ D.41568, para
	mov	r2, sp	@,
	ldr	r0, [r5, #3688]	@, pH264Ctx_4(D)->ChanID
	mov	r1, #110	@,
	blx	ip	@ D.41570
	mvn	r0, #0	@ D.41567,
.L1921:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1920:
	ldr	r1, .L1937+12	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #1284]	@ pH264Ctx_4(D)->MaxSpsNum, pH264Ctx_4(D)->MaxSpsNum
	sub	r3, r3, #1	@ D.41568, pH264Ctx_4(D)->MaxSpsNum,
	cmp	r0, r3	@ seq_parameter_set_id, D.41568
	mov	ip, r0	@ seq_parameter_set_id,
	bhi	.L1933	@,
	ldr	r2, [r4, #1292]	@ pH264Ctx_4(D)->SPS, pH264Ctx_4(D)->SPS
	mov	r3, #4000	@ tmp176,
	mla	r3, r3, r0, r2	@ tmp177, tmp176, seq_parameter_set_id, pH264Ctx_4(D)->SPS
	ldrb	r3, [r3, #23]	@ zero_extendqisi2	@ _29->is_valid, _29->is_valid
	cmp	r3, #0	@ _29->is_valid,
	beq	.L1934	@,
	mov	r9, #2208	@ tmp180,
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mul	r7, r9, r6	@ D.41569, tmp180, pic_parameter_set_id
	add	r3, r3, r7	@ D.41573, pH264Ctx_4(D)->PPS, D.41569
	ldrb	r8, [r3, #19]	@ zero_extendqisi2	@ _34->is_valid, _34->is_valid
	cmp	r8, #0	@ _34->is_valid,
	beq	.L1924	@,
	ldr	r8, .L1937+16	@ tmp185,
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, tmp185
	str	r6, [r8, #24]	@ pic_parameter_set_id, pps_tmp.pic_parameter_set_id
	str	ip, [r8, #28]	@ seq_parameter_set_id, pps_tmp.seq_parameter_set_id
	bl	ProcessPPS	@
	subs	r5, r0, #0	@ D.41568,
	bne	.L1935	@,
	ldr	r1, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r0, r8	@, tmp185
	add	r1, r1, r7	@, pH264Ctx_4(D)->PPS, D.41569
	bl	PPSEqual	@
	cmp	r0, #0	@ D.41567
	beq	.L1921	@,
	ldr	r0, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r2, r9	@, tmp180
	mov	r1, r8	@, tmp185
	mov	r3, #1	@ tmp195,
	add	r0, r0, r7	@, pH264Ctx_4(D)->PPS, D.41569
	strb	r3, [r8, #20]	@ tmp195, pps_tmp.is_refreshed
	strb	r3, [r8, #19]	@ tmp195, pps_tmp.is_valid
	bl	memmove	@
	mov	r0, r5	@ D.41567, D.41568
	b	.L1921	@
.L1924:
	str	r6, [r3, #24]	@ pic_parameter_set_id, _34->pic_parameter_set_id
	mov	r0, r5	@, pH264Ctx
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r3, r3, r7	@ tmp208, pH264Ctx_4(D)->PPS, D.41569
	str	ip, [r3, #28]	@ seq_parameter_set_id, _52->seq_parameter_set_id
	ldr	r1, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r1, r1, r7	@, pH264Ctx_4(D)->PPS, D.41569
	bl	ProcessPPS	@
	cmp	r0, #0	@ D.41567
	bne	.L1936	@,
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r2, #1	@ tmp230,
	add	r3, r3, r7	@ tmp229, pH264Ctx_4(D)->PPS, D.41569
	strb	r2, [r3, #20]	@ tmp230, _66->is_refreshed
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r7, r3, r7	@ tmp235, pH264Ctx_4(D)->PPS, D.41569
	strb	r2, [r7, #19]	@ tmp230, _69->is_valid
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1928:
	mvn	r0, #0	@ D.41567,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1933:
	ldr	r1, .L1937+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41567,
	b	.L1921	@
.L1935:
	ldr	r1, .L1937+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41567,
	b	.L1921	@
.L1934:
	ldr	r1, .L1937+28	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41567,
	b	.L1921	@
.L1936:
	ldr	r1, .L1937+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r2, #1	@ tmp218,
	mvn	r0, #0	@ D.41567,
	add	r3, r3, r7	@ tmp217, pH264Ctx_4(D)->PPS, D.41569
	strb	r2, [r3, #20]	@ tmp218, _60->is_refreshed
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r7, r3, r7	@ tmp223, pH264Ctx_4(D)->PPS, D.41569
	strb	r8, [r7, #19]	@ _34->is_valid, _63->is_valid
	b	.L1921	@
.L1938:
	.align	2
.L1937:
	.word	.LC164
	.word	.LC165
	.word	g_event_report
	.word	.LC166
	.word	.LANCHOR2
	.word	.LC167
	.word	.LC169
	.word	.LC168
	.fnend
	.size	H264_DecPPS, .-H264_DecPPS
	.align	2
	.global	vui_parameters
	.type	vui_parameters, %function
vui_parameters:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r1	@ pVUI, pVUI
	ldr	r1, .L1989	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5]	@ D.41640, pVUI_21(D)->aspect_ratio_info_present_flag
	cmp	r0, #0	@ D.41640,
	streqb	r0, [r5, #15]	@ D.41640, pVUI_21(D)->aspect_ratio_idc
	bne	.L1983	@,
.L1941:
	ldr	r1, .L1989+4	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #1]	@ D.41640, pVUI_21(D)->overscan_info_present_flag
	cmp	r0, #0	@ D.41640,
	bne	.L1984	@,
.L1942:
	ldr	r1, .L1989+8	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #3]	@ D.41640, pVUI_21(D)->video_signal_type_present_flag
	cmp	r0, #0	@ D.41640,
	moveq	r3, #5	@ tmp256,
	streq	r3, [r5, #28]	@ tmp256, pVUI_21(D)->video_format
	bne	.L1985	@,
.L1944:
	ldr	r1, .L1989+12	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #6]	@ D.41640, pVUI_21(D)->chroma_location_info_present_flag
	cmp	r0, #0	@ D.41640,
	bne	.L1986	@,
.L1945:
	ldr	r1, .L1989+16	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #8]	@ D.41640, pVUI_21(D)->timing_info_present_flag
	cmp	r0, #0	@ D.41640,
	bne	.L1987	@,
.L1947:
	ldr	r1, .L1989+20	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #7]	@ D.41640, pVUI_21(D)->nal_hrd_parameters_present_flag
	cmp	r0, #0	@ D.41640,
	beq	.L1949	@,
	ldr	r1, .L1989+24	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, .L1989+28	@,
	mov	r1, #4	@,
	str	r0, [r5, #96]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+32	@,
	mov	r1, #4	@,
	strb	r0, [r5, #92]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r5, #96]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1
	cmp	r3, #31	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1,
	strb	r0, [r5, #93]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_size_scale
	bhi	.L1952	@,
	add	r9, r4, #49152	@ tmp340, pH264Ctx,
	ldr	r6, [r9, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r6, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1952	@,
	add	r7, r5, #96	@ ivtmp.2362, pVUI,
	add	r8, r5, #59	@ ivtmp.2378, pVUI,
.L1953:
	ldr	r1, .L1989+36	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+40	@,
	add	r6, r6, #1	@ SchedSelIdx, SchedSelIdx,
	str	r0, [r7, #4]!	@, MEM[base: _260, offset: 0B]
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+44	@,
	str	r0, [r7, #128]	@, MEM[base: _260, offset: 128B]
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r8, #1]!	@, MEM[base: _262, offset: 0B]
	ldr	r3, [r5, #96]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1
	cmp	r3, r6	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1, SchedSelIdx
	bcs	.L1953	@,
	ldr	r2, .L1989+48	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+52	@,
	mov	r1, #5	@,
	str	r0, [r5, #356]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+56	@,
	mov	r1, #5	@,
	str	r0, [r5, #360]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+60	@,
	mov	r1, #5	@,
	str	r0, [r5, #364]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #368]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].time_offset_length
.L1949:
	ldr	r1, .L1989+64	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #10]	@ D.41640, pVUI_21(D)->vcl_hrd_parameters_present_flag
	cmp	r0, #0	@ D.41640,
	bne	.L1988	@,
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ pVUI_21(D)->nal_hrd_parameters_present_flag, pVUI_21(D)->nal_hrd_parameters_present_flag
	add	r9, r4, #49152	@ tmp340, pH264Ctx,
	cmp	r3, #0	@ pVUI_21(D)->nal_hrd_parameters_present_flag,
	bne	.L1958	@,
.L1957:
	ldr	r1, .L1989+68	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1989+72	@,
	strb	r0, [r5, #11]	@, pVUI_21(D)->pic_struct_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #12]	@ D.41640, pVUI_21(D)->bitstream_restriction_flag
	cmp	r0, #0	@ D.41640,
	bne	.L1959	@,
	ldr	r0, [r9, #3628]	@ D.41638, pH264Ctx_17(D)->SeErrFlg
.L1960:
	adds	r0, r0, #0	@ D.41643, D.41638,
	movne	r0, #1	@ D.41643,
	rsb	r0, r0, #0	@ D.41636, D.41643
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1988:
	ldr	r1, .L1989+24	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, .L1989+28	@,
	mov	r1, #4	@,
	str	r0, [r5, #408]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+32	@,
	mov	r1, #4	@,
	strb	r0, [r5, #404]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r5, #408]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1
	cmp	r3, #31	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1,
	strb	r0, [r5, #405]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_size_scale
	bhi	.L1952	@,
	add	r9, r4, #49152	@ tmp340, pH264Ctx,
	ldr	r6, [r9, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r6, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1952	@,
	add	r8, r5, #368	@ ivtmp.2352, pVUI,
	add	r7, r5, #408	@ ivtmp.2336, pVUI,
	add	r8, r8, #3	@ ivtmp.2352, ivtmp.2352,
.L1955:
	ldr	r1, .L1989+36	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+40	@,
	add	r6, r6, #1	@ SchedSelIdx, SchedSelIdx,
	str	r0, [r7, #4]!	@, MEM[base: _11, offset: 0B]
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+44	@,
	str	r0, [r7, #128]	@, MEM[base: _11, offset: 128B]
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r8, #1]!	@, MEM[base: _242, offset: 0B]
	ldr	r3, [r5, #408]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1
	cmp	r3, r6	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1, SchedSelIdx
	bcs	.L1955	@,
	ldr	r2, .L1989+48	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+52	@,
	mov	r1, #5	@,
	str	r0, [r5, #668]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+56	@,
	mov	r1, #5	@,
	str	r0, [r5, #672]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+60	@,
	mov	r1, #5	@,
	str	r0, [r5, #676]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ pVUI_21(D)->nal_hrd_parameters_present_flag, pVUI_21(D)->nal_hrd_parameters_present_flag
	cmp	r3, #0	@ pVUI_21(D)->nal_hrd_parameters_present_flag,
	str	r0, [r5, #680]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].time_offset_length
	bne	.L1958	@,
	ldrb	r3, [r5, #10]	@ zero_extendqisi2	@ pVUI_21(D)->vcl_hrd_parameters_present_flag, pVUI_21(D)->vcl_hrd_parameters_present_flag
	cmp	r3, #0	@ pVUI_21(D)->vcl_hrd_parameters_present_flag,
	beq	.L1957	@,
.L1958:
	ldr	r1, .L1989+76	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r5, #14]	@, pVUI_21(D)->low_delay_hrd_flag
	b	.L1957	@
.L1987:
	ldr	r2, .L1989+80	@,
	mov	r1, #32	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+84	@,
	mov	r1, #32	@,
	str	r0, [r5, #52]	@, pVUI_21(D)->num_units_in_tick
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, .L1989+88	@,
	str	r0, [r5, #56]	@, pVUI_21(D)->time_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #9]	@ D.41640, pVUI_21(D)->fixed_frame_rate_flag
	cmp	r0, #1	@ D.41640,
	bne	.L1947	@,
	ldr	r1, [r5, #52]	@ D.41639, pVUI_21(D)->num_units_in_tick
	cmp	r1, #0	@ D.41639,
	beq	.L1947	@,
	ldr	r0, [r5, #56]	@, pVUI_21(D)->time_scale
	add	r9, r4, #49152	@ tmp340, pH264Ctx,
	bl	__aeabi_uidiv	@
	mov	r0, r0, lsr #1	@ D.41639,,
	str	r0, [r9, #2188]	@ D.41639, pH264Ctx_17(D)->frame_rate
	b	.L1947	@
.L1986:
	ldr	r1, .L1989+92	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+96	@,
	str	r0, [r5, #44]	@, pVUI_21(D)->chroma_sample_loc_type_top_field
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #48]	@, pVUI_21(D)->chroma_sample_loc_type_bottom_field
	b	.L1945	@
.L1985:
	ldr	r2, .L1989+100	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, .L1989+104	@,
	str	r0, [r5, #28]	@, pVUI_21(D)->video_format
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1989+108	@,
	strb	r0, [r5, #4]	@, pVUI_21(D)->video_full_range_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #5]	@ D.41640, pVUI_21(D)->colour_description_present_flag
	cmp	r0, #0	@ D.41640,
	beq	.L1944	@,
	ldr	r2, .L1989+112	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+116	@,
	mov	r1, #8	@,
	str	r0, [r5, #32]	@, pVUI_21(D)->colour_primaries
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+120	@,
	mov	r1, #8	@,
	str	r0, [r5, #36]	@, pVUI_21(D)->transfer_characteristics
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #40]	@, pVUI_21(D)->matrix_coefficients
	b	.L1944	@
.L1984:
	ldr	r1, .L1989+124	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r5, #2]	@, pVUI_21(D)->overscan_appropriate_flag
	b	.L1942	@
.L1983:
	ldr	r2, .L1989+128	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	uxtb	r0, r0	@ D.41640,
	strb	r0, [r5, #15]	@ D.41640, pVUI_21(D)->aspect_ratio_idc
	cmp	r0, #255	@ D.41640,
	bne	.L1941	@,
	ldr	r2, .L1989+132	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1989+136	@,
	mov	r1, #16	@,
	str	r0, [r5, #16]	@, pVUI_21(D)->sar_width
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #20]	@, pVUI_21(D)->sar_height
	b	.L1941	@
.L1959:
	ldr	r1, .L1989+140	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1989+144	@,
	strb	r0, [r5, #13]	@, pVUI_21(D)->motion_vectors_over_pic_boundaries_flag
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+148	@,
	str	r0, [r5, #684]	@, pVUI_21(D)->max_bytes_per_pic_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+152	@,
	str	r0, [r5, #688]	@, pVUI_21(D)->max_bits_per_mb_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+156	@,
	str	r0, [r5, #696]	@, pVUI_21(D)->log2_max_mv_length_horizontal
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+160	@,
	str	r0, [r5, #692]	@, pVUI_21(D)->log2_max_mv_length_vertical
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1989+164	@,
	str	r0, [r5, #700]	@, pVUI_21(D)->num_reorder_frames
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #704]	@, pVUI_21(D)->max_dec_frame_buffering
	ldr	r0, [r9, #3628]	@ D.41638, pH264Ctx_17(D)->SeErrFlg
	cmp	r0, #0	@ D.41638,
	beq	.L1960	@,
	mvn	r0, #0	@ D.41636,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1952:
	ldr	r1, .L1989+168	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41636,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1990:
	.align	2
.L1989:
	.word	.LC170
	.word	.LC174
	.word	.LC176
	.word	.LC183
	.word	.LC186
	.word	.LC190
	.word	.LC191
	.word	.LC192
	.word	.LC193
	.word	.LC195
	.word	.LC196
	.word	.LC197
	.word	.LC198
	.word	.LC199
	.word	.LC200
	.word	.LC201
	.word	.LC202
	.word	.LC204
	.word	.LC205
	.word	.LC203
	.word	.LC187
	.word	.LC188
	.word	.LC189
	.word	.LC184
	.word	.LC185
	.word	.LC177
	.word	.LC178
	.word	.LC179
	.word	.LC180
	.word	.LC181
	.word	.LC182
	.word	.LC175
	.word	.LC171
	.word	.LC172
	.word	.LC173
	.word	.LC206
	.word	.LC207
	.word	.LC208
	.word	.LC209
	.word	.LC210
	.word	.LC211
	.word	.LC212
	.word	.LC194
	.fnend
	.size	vui_parameters, .-vui_parameters
	.align	2
	.global	SPSEqual
	.type	SPSEqual, %function
SPSEqual:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r5, r0, #0	@ pSPS1, pSPS1
	beq	.L2024	@,
	cmp	r1, #0	@ pSPS2,
	beq	.L2025	@,
	ldrb	lr, [r1]	@ zero_extendqisi2	@ pSPS2_20(D)->constrained_set0_flag, pSPS2_20(D)->constrained_set0_flag
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pSPS1_17(D)->constrained_set0_flag, pSPS1_17(D)->constrained_set0_flag
	ldr	ip, [r5, #736]	@ pSPS1_17(D)->profile_idc, pSPS1_17(D)->profile_idc
	ldr	r2, [r1, #736]	@ pSPS2_20(D)->profile_idc, pSPS2_20(D)->profile_idc
	ldrb	r0, [r5, #1]	@ zero_extendqisi2	@ pSPS1_17(D)->constrained_set1_flag, pSPS1_17(D)->constrained_set1_flag
	cmp	r3, lr	@ pSPS1_17(D)->constrained_set0_flag, pSPS2_20(D)->constrained_set0_flag
	cmpeq	ip, r2	@, pSPS1_17(D)->profile_idc, pSPS2_20(D)->profile_idc
	ldrb	r6, [r1, #1]	@ zero_extendqisi2	@ pSPS2_20(D)->constrained_set1_flag, pSPS2_20(D)->constrained_set1_flag
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ pSPS1_17(D)->constrained_set2_flag, pSPS1_17(D)->constrained_set2_flag
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ pSPS2_20(D)->constrained_set2_flag, pSPS2_20(D)->constrained_set2_flag
	moveq	lr, #1	@ tmp289,
	movne	lr, #0	@ tmp289,
	ldr	r3, [r5, #740]	@ pSPS1_17(D)->level_idc, pSPS1_17(D)->level_idc
	cmp	r0, r6	@ pSPS1_17(D)->constrained_set1_flag, pSPS2_20(D)->constrained_set1_flag
	movne	ip, #0	@, tmp295
	andeq	ip, lr, #1	@,, tmp295, tmp289
	ldr	r6, [r1, #740]	@ pSPS2_20(D)->level_idc, pSPS2_20(D)->level_idc
	cmp	r2, r4	@ pSPS1_17(D)->constrained_set2_flag, pSPS2_20(D)->constrained_set2_flag
	movne	r0, #0	@, tmp301
	andeq	r0, ip, #1	@,, tmp301, tmp295
	ldr	lr, [r1, #744]	@ pSPS2_20(D)->seq_parameter_set_id, pSPS2_20(D)->seq_parameter_set_id
	ldr	r4, [r5, #744]	@ pSPS1_17(D)->seq_parameter_set_id, pSPS1_17(D)->seq_parameter_set_id
	cmp	r3, r6	@ pSPS1_17(D)->level_idc, pSPS2_20(D)->level_idc
	movne	r2, #0	@, tmp307
	andeq	r2, r0, #1	@,, tmp307, tmp301
	ldrb	ip, [r1, #25]	@ zero_extendqisi2	@ pSPS2_20(D)->seq_scaling_matrix_present_flag, pSPS2_20(D)->seq_scaling_matrix_present_flag
	ldrb	r0, [r5, #25]	@ zero_extendqisi2	@ D.41790, pSPS1_17(D)->seq_scaling_matrix_present_flag
	cmp	r4, lr	@ pSPS1_17(D)->seq_parameter_set_id, pSPS2_20(D)->seq_parameter_set_id
	movne	r3, #0	@, tmp313
	andeq	r3, r2, #1	@,, tmp313, tmp307
	cmp	ip, r0	@ pSPS2_20(D)->seq_scaling_matrix_present_flag, D.41790
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, tmp313
	cmp	r0, #0	@ D.41790,
	beq	.L1995	@,
	mov	r6, #0	@ ivtmp.2478,
	add	r10, r5, #3	@ ivtmp.2456, pSPS1,
	add	r9, r1, #3	@ ivtmp.2464, pSPS2,
	sub	r8, r1, #396	@ ivtmp.2474, pSPS2,
	mov	r0, r6	@ i, ivtmp.2478
	mov	r7, r5	@ ivtmp.2473, pSPS1
.L2000:
	ldrb	r2, [r10, #1]!	@ zero_extendqisi2	@ D.41791, MEM[base: _230, offset: 0B]
	ldrsb	lr, [r9, #1]!	@ MEM[base: _231, offset: 0B], MEM[base: _231, offset: 0B]
	sxtb	ip, r2	@ D.41791, D.41791
	cmp	lr, ip	@ MEM[base: _231, offset: 0B], D.41791
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, #0	@ D.41791,
	beq	.L1996	@,
	cmp	r0, #5	@ i,
	bhi	.L1997	@,
	add	ip, r6, #756	@ D.41798, ivtmp.2478,
	add	fp, r6, #820	@ D.41798, ivtmp.2478,
	add	r2, r5, ip	@ ivtmp.2412, pSPS1, D.41798
	add	fp, r5, fp	@ D.41797, pSPS1, D.41798
	add	ip, r1, ip	@ ivtmp.2421, pSPS2, D.41798
.L1998:
	ldr	r4, [r2, #4]!	@ MEM[base: _118, offset: 0B], MEM[base: _118, offset: 0B]
	ldr	lr, [ip, #4]!	@ MEM[base: _114, offset: 0B], MEM[base: _114, offset: 0B]
	cmp	r4, lr	@ MEM[base: _118, offset: 0B], MEM[base: _114, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, fp	@ ivtmp.2412, D.41797
	bne	.L1998	@,
.L1996:
	add	r0, r0, #1	@ i, i,
	add	r7, r7, #256	@ ivtmp.2473, ivtmp.2473,
	cmp	r0, #8	@ i,
	add	r8, r8, #256	@ ivtmp.2474, ivtmp.2474,
	add	r6, r6, #64	@ ivtmp.2478, ivtmp.2478,
	bne	.L2000	@,
.L1995:
	ldr	r2, [r1, #2904]	@ pSPS2_20(D)->log2_max_frame_num_minus4, pSPS2_20(D)->log2_max_frame_num_minus4
	ldr	ip, [r5, #2908]	@ D.41789, pSPS1_17(D)->pic_order_cnt_type
	ldr	r0, [r1, #2908]	@ pSPS2_20(D)->pic_order_cnt_type, pSPS2_20(D)->pic_order_cnt_type
	ldr	lr, [r5, #2904]	@ pSPS1_17(D)->log2_max_frame_num_minus4, pSPS1_17(D)->log2_max_frame_num_minus4
	cmp	ip, r0	@ D.41789, pSPS2_20(D)->pic_order_cnt_type
	cmpeq	lr, r2	@, pSPS1_17(D)->log2_max_frame_num_minus4, pSPS2_20(D)->log2_max_frame_num_minus4
	moveq	r2, #1	@ D.41788,
	movne	r2, #0	@ D.41788,
	cmp	ip, #0	@ D.41789,
	and	r3, r3, r2	@ equal, equal, D.41788
	beq	.L2002	@,
	cmp	ip, #1	@ D.41789,
	bne	.L2001	@,
	ldr	r0, [r1, #2916]	@ pSPS2_20(D)->offset_for_non_ref_pic, pSPS2_20(D)->offset_for_non_ref_pic
	ldr	ip, [r5, #2916]	@ pSPS1_17(D)->offset_for_non_ref_pic, pSPS1_17(D)->offset_for_non_ref_pic
	ldrb	r2, [r5, #16]	@ zero_extendqisi2	@ pSPS1_17(D)->delta_pic_order_always_zero_flag, pSPS1_17(D)->delta_pic_order_always_zero_flag
	ldrb	r6, [r1, #16]	@ zero_extendqisi2	@ pSPS2_20(D)->delta_pic_order_always_zero_flag, pSPS2_20(D)->delta_pic_order_always_zero_flag
	ldr	r4, [r5, #2920]	@ pSPS1_17(D)->offset_for_top_to_bottom_field, pSPS1_17(D)->offset_for_top_to_bottom_field
	cmp	ip, r0	@ pSPS1_17(D)->offset_for_non_ref_pic, pSPS2_20(D)->offset_for_non_ref_pic
	cmpeq	r2, r6	@, pSPS1_17(D)->delta_pic_order_always_zero_flag, pSPS2_20(D)->delta_pic_order_always_zero_flag
	ldr	lr, [r1, #2920]	@ pSPS2_20(D)->offset_for_top_to_bottom_field, pSPS2_20(D)->offset_for_top_to_bottom_field
	ldr	r6, [r5, #2924]	@ D.41789, pSPS1_17(D)->num_ref_frames_in_pic_order_cnt_cycle
	ldr	ip, [r1, #2924]	@ pSPS2_20(D)->num_ref_frames_in_pic_order_cnt_cycle, pSPS2_20(D)->num_ref_frames_in_pic_order_cnt_cycle
	moveq	r0, #1	@ tmp353,
	movne	r0, #0	@ tmp353,
	cmp	r4, lr	@ pSPS1_17(D)->offset_for_top_to_bottom_field, pSPS2_20(D)->offset_for_top_to_bottom_field
	movne	r2, #0	@, tmp359
	andeq	r2, r0, #1	@,, tmp359, tmp353
	cmp	r6, ip	@ D.41789, pSPS2_20(D)->num_ref_frames_in_pic_order_cnt_cycle
	movne	r2, #0	@, D.41788
	andeq	r2, r2, #1	@,, D.41788, tmp359
	cmp	r6, #0	@ D.41789,
	and	r3, r3, r2	@ equal, equal, D.41788
	beq	.L2001	@,
	add	ip, r5, #2912	@ ivtmp.2390, pSPS1,
	add	r0, r1, #2912	@ ivtmp.2399, pSPS2,
	add	ip, ip, #12	@ ivtmp.2390, ivtmp.2390,
	add	r0, r0, #12	@ ivtmp.2399, ivtmp.2399,
	mov	r2, #0	@ i,
.L2004:
	ldr	r4, [ip, #4]!	@ MEM[base: _183, offset: 0B], MEM[base: _183, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	lr, [r0, #4]!	@ MEM[base: _172, offset: 0B], MEM[base: _172, offset: 0B]
	cmp	r4, lr	@ MEM[base: _183, offset: 0B], MEM[base: _172, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, r6	@ i, D.41789
	bne	.L2004	@,
.L2001:
	ldrb	ip, [r1, #17]	@ zero_extendqisi2	@ pSPS2_20(D)->gaps_in_frame_num_value_allowed_flag, pSPS2_20(D)->gaps_in_frame_num_value_allowed_flag
	ldrb	lr, [r5, #17]	@ zero_extendqisi2	@ pSPS1_17(D)->gaps_in_frame_num_value_allowed_flag, pSPS1_17(D)->gaps_in_frame_num_value_allowed_flag
	ldr	r0, [r5, #3952]	@ pSPS1_17(D)->num_ref_frames, pSPS1_17(D)->num_ref_frames
	ldr	r4, [r1, #3952]	@ pSPS2_20(D)->num_ref_frames, pSPS2_20(D)->num_ref_frames
	ldr	r2, [r5, #3956]	@ pSPS1_17(D)->pic_width_in_mbs_minus1, pSPS1_17(D)->pic_width_in_mbs_minus1
	cmp	lr, ip	@ pSPS1_17(D)->gaps_in_frame_num_value_allowed_flag, pSPS2_20(D)->gaps_in_frame_num_value_allowed_flag
	cmpeq	r0, r4	@, pSPS1_17(D)->num_ref_frames, pSPS2_20(D)->num_ref_frames
	ldr	r7, [r1, #3956]	@ pSPS2_20(D)->pic_width_in_mbs_minus1, pSPS2_20(D)->pic_width_in_mbs_minus1
	ldr	r6, [r5, #3960]	@ pSPS1_17(D)->pic_height_in_map_units_minus1, pSPS1_17(D)->pic_height_in_map_units_minus1
	ldr	r4, [r1, #3960]	@ pSPS2_20(D)->pic_height_in_map_units_minus1, pSPS2_20(D)->pic_height_in_map_units_minus1
	moveq	ip, #1	@ tmp380,
	movne	ip, #0	@ tmp380,
	ldrb	lr, [r1, #18]	@ zero_extendqisi2	@ pSPS2_20(D)->frame_mbs_only_flag, pSPS2_20(D)->frame_mbs_only_flag
	cmp	r2, r7	@ pSPS1_17(D)->pic_width_in_mbs_minus1, pSPS2_20(D)->pic_width_in_mbs_minus1
	movne	r0, #0	@, tmp386
	andeq	r0, ip, #1	@,, tmp386, tmp380
	ldrb	ip, [r5, #18]	@ zero_extendqisi2	@ D.41790, pSPS1_17(D)->frame_mbs_only_flag
	cmp	r6, r4	@ pSPS1_17(D)->pic_height_in_map_units_minus1, pSPS2_20(D)->pic_height_in_map_units_minus1
	movne	r2, #0	@, tmp392
	andeq	r2, r0, #1	@,, tmp392, tmp386
	cmp	lr, ip	@ pSPS2_20(D)->frame_mbs_only_flag, D.41790
	movne	r2, #0	@, D.41788
	andeq	r2, r2, #1	@,, D.41788, tmp392
	cmp	ip, #0	@ D.41790,
	and	r3, r3, r2	@ equal, equal, D.41788
	bne	.L2005	@,
	ldrb	r0, [r5, #19]	@ zero_extendqisi2	@ pSPS1_17(D)->mb_adaptive_frame_field_flag, pSPS1_17(D)->mb_adaptive_frame_field_flag
	ldrb	r2, [r1, #19]	@ zero_extendqisi2	@ pSPS2_20(D)->mb_adaptive_frame_field_flag, pSPS2_20(D)->mb_adaptive_frame_field_flag
	cmp	r0, r2	@ pSPS1_17(D)->mb_adaptive_frame_field_flag, pSPS2_20(D)->mb_adaptive_frame_field_flag
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
.L2005:
	ldrb	r2, [r1, #20]	@ zero_extendqisi2	@ pSPS2_20(D)->direct_8x8_inference_flag, pSPS2_20(D)->direct_8x8_inference_flag
	ldrb	ip, [r5, #21]	@ zero_extendqisi2	@ D.41790, pSPS1_17(D)->frame_cropping_flag
	ldrb	r0, [r1, #21]	@ zero_extendqisi2	@ pSPS2_20(D)->frame_cropping_flag, pSPS2_20(D)->frame_cropping_flag
	ldrb	lr, [r5, #20]	@ zero_extendqisi2	@ pSPS1_17(D)->direct_8x8_inference_flag, pSPS1_17(D)->direct_8x8_inference_flag
	cmp	r0, ip	@ pSPS2_20(D)->frame_cropping_flag, D.41790
	cmpeq	lr, r2	@, pSPS1_17(D)->direct_8x8_inference_flag, pSPS2_20(D)->direct_8x8_inference_flag
	moveq	r2, #1	@ D.41788,
	movne	r2, #0	@ D.41788,
	cmp	ip, #0	@ D.41790,
	and	r3, r3, r2	@ equal, equal, D.41788
	beq	.L2006	@,
	ldr	ip, [r1, #3968]	@ pSPS2_20(D)->frame_crop_right_offset, pSPS2_20(D)->frame_crop_right_offset
	ldr	lr, [r5, #3968]	@ pSPS1_17(D)->frame_crop_right_offset, pSPS1_17(D)->frame_crop_right_offset
	ldr	r0, [r5, #3964]	@ pSPS1_17(D)->frame_crop_left_offset, pSPS1_17(D)->frame_crop_left_offset
	ldr	r4, [r1, #3964]	@ pSPS2_20(D)->frame_crop_left_offset, pSPS2_20(D)->frame_crop_left_offset
	ldr	r2, [r1, #3972]	@ pSPS2_20(D)->frame_crop_top_offset, pSPS2_20(D)->frame_crop_top_offset
	cmp	lr, ip	@ pSPS1_17(D)->frame_crop_right_offset, pSPS2_20(D)->frame_crop_right_offset
	cmpeq	r0, r4	@, pSPS1_17(D)->frame_crop_left_offset, pSPS2_20(D)->frame_crop_left_offset
	ldr	r6, [r5, #3972]	@ pSPS1_17(D)->frame_crop_top_offset, pSPS1_17(D)->frame_crop_top_offset
	ldr	r4, [r5, #3976]	@ pSPS1_17(D)->frame_crop_bottom_offset, pSPS1_17(D)->frame_crop_bottom_offset
	ldr	lr, [r1, #3976]	@ pSPS2_20(D)->frame_crop_bottom_offset, pSPS2_20(D)->frame_crop_bottom_offset
	moveq	ip, #1	@ tmp420,
	movne	ip, #0	@ tmp420,
	cmp	r6, r2	@ pSPS1_17(D)->frame_crop_top_offset, pSPS2_20(D)->frame_crop_top_offset
	movne	r0, #0	@, tmp426
	andeq	r0, ip, #1	@,, tmp426, tmp420
	cmp	r4, lr	@ pSPS1_17(D)->frame_crop_bottom_offset, pSPS2_20(D)->frame_crop_bottom_offset
	movne	r2, #0	@, D.41788
	andeq	r2, r0, #1	@,, D.41788, tmp426
	and	r3, r3, r2	@ equal, equal, D.41788
.L2006:
	ldrb	r0, [r5, #22]	@ zero_extendqisi2	@ pSPS1_17(D)->vui_parameters_present_flag, pSPS1_17(D)->vui_parameters_present_flag
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ pSPS2_20(D)->vui_parameters_present_flag, pSPS2_20(D)->vui_parameters_present_flag
	cmp	r0, r2	@ pSPS1_17(D)->vui_parameters_present_flag, pSPS2_20(D)->vui_parameters_present_flag
	movne	r0, #0	@, equal
	andeq	r0, r3, #1	@,, equal, equal
	eor	r0, r0, #1	@ D.41787, equal,
	rsb	r0, r0, #0	@ D.41788, D.41787
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1997:
	sub	r2, r7, #396	@ ivtmp.2434, ivtmp.2473,
	sub	fp, r7, #140	@ D.41797, ivtmp.2473,
	mov	ip, r8	@ ivtmp.2443, ivtmp.2474
.L1999:
	ldr	r4, [r2, #4]!	@ MEM[base: _212, offset: 0B], MEM[base: _212, offset: 0B]
	ldr	lr, [ip, #4]!	@ MEM[base: _210, offset: 0B], MEM[base: _210, offset: 0B]
	cmp	r4, lr	@ MEM[base: _212, offset: 0B], MEM[base: _210, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, fp	@ ivtmp.2434, D.41797
	bne	.L1999	@,
	b	.L1996	@
.L2002:
	ldr	r0, [r5, #2912]	@ pSPS1_17(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS1_17(D)->log2_max_pic_order_cnt_lsb_minus4
	ldr	r2, [r1, #2912]	@ pSPS2_20(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS2_20(D)->log2_max_pic_order_cnt_lsb_minus4
	cmp	r0, r2	@ pSPS1_17(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS2_20(D)->log2_max_pic_order_cnt_lsb_minus4
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	b	.L2001	@
.L2025:
	mov	r0, r1	@, pSPS2
	movw	r3, #9506	@,
	ldr	r2, .L2026	@,
	ldr	r1, .L2026+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41788,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2024:
	movw	r3, #9505	@,
	ldr	r2, .L2026	@,
	ldr	r1, .L2026+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41788,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2027:
	.align	2
.L2026:
	.word	.LC21
	.word	.LC22
	.fnend
	.size	SPSEqual, .-SPSEqual
	.global	__aeabi_idiv
	.align	2
	.global	H264GetDar
	.type	H264GetDar, %function
H264GetDar:
	.fnstart
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ar_idc, ar_idc
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L2051	@,
	mov	lr, r1	@ sar_width, sar_width
	subs	r1, r4, #255	@ D.41802, ar_idc,
	movne	r1, #1	@ D.41802,
	cmp	r4, #16	@ ar_idc,
	movle	r0, #0	@, tmp141
	andgt	r0, r1, #1	@,, tmp141, D.41802
	cmp	r0, #0	@ tmp141,
	bne	.L2038	@,
	cmp	r2, #0	@ sar_height,
	cmpne	lr, #0	@, sar_width,
	moveq	ip, #1	@ tmp148,
	movne	ip, #0	@ tmp148,
	cmp	r4, #255	@ ar_idc,
	movne	ip, #0	@, tmp152
	andeq	ip, ip, #1	@,, tmp152, tmp148
	cmp	ip, #0	@ tmp152,
	bne	.L2039	@,
	cmp	r4, #1	@ ar_idc,
	moveq	r2, ip	@ dar, tmp152
	moveq	r4, #5	@ final_dar,
	beq	.L2029	@,
	cmp	r1, #0	@ D.41802,
	str	r3, [sp, #4]	@ img_width, %sfp
	ldrne	r0, .L2056	@ tmp153,
	addne	r4, r0, r4, lsl #3	@ tmp154, tmp153, ar_idc,
	ldrne	r2, [r4, #108]	@ sar_height, SarTable
	ldrne	lr, [r4, #104]	@ sar_width, SarTable
	mov	r1, r2	@, sar_height
	mov	r0, lr, asl #10	@, sar_width,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@ img_width, %sfp
	ldr	r1, [sp, #16]	@, img_height
	mov	r4, r0	@ D.41801,
	mov	r0, r3, asl #10	@, img_width,
	bl	__aeabi_idiv	@
	mul	r0, r0, r4	@ D.41801,, D.41801
	add	r2, r0, #1020	@ tmp172, D.41801,
	cmp	r0, #0	@ D.41801,
	add	r2, r2, #3	@ tmp172, tmp172,
	movlt	r0, r2	@ D.41801, tmp172
	mov	r2, r0, asr #10	@ dar, D.41801,
	sub	r3, r2, #2400	@ D.41801, dar,
	sub	r1, r2, #2256	@ D.41801, dar,
	sub	r3, r3, #6	@ D.41801, D.41801,
	sub	r1, r1, #7	@ D.41801, D.41801,
	cmp	r3, #0	@ D.41801,
	rsblt	r3, r2, #2400	@ D.41801, dar,
	addlt	r3, r3, #6	@ D.41801, D.41801,
	cmp	r1, #0	@ D.41801,
	rsblt	r1, r2, #2256	@ D.41801, dar,
	addlt	r1, r1, #7	@ D.41801, D.41801,
	cmp	r3, r1	@ D.41801, D.41801
	movlt	r4, #4	@ final_dar,
	blt	.L2029	@,
	sub	r3, r2, #1808	@ D.41801, dar,
	sub	r3, r3, #12	@ D.41801, D.41801,
	cmp	r3, #0	@ D.41801,
	rsblt	r3, r2, #1808	@ D.41801, dar,
	addlt	r3, r3, #12	@ D.41801, D.41801,
	cmp	r1, r3	@ D.41801, D.41801
	movlt	r4, #3	@ final_dar,
	blt	.L2029	@,
	sub	r4, r2, #1360	@ D.41801, dar,
	sub	r4, r4, #5	@ D.41801, D.41801,
	cmp	r4, #0	@ D.41801,
	rsblt	r4, r2, #1360	@ D.41801, dar,
	addlt	r4, r4, #5	@ D.41801, D.41801,
	cmp	r3, r4	@ D.41801, D.41801
	movlt	r4, #2	@ final_dar,
	movge	r4, #1	@ final_dar,
	b	.L2029	@
.L2038:
	mov	r4, #0	@ final_dar,
.L2051:
	mov	r2, r4	@ dar, final_dar
.L2029:
	mov	r3, r4	@, final_dar
	ldr	r1, .L2056+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, final_dar
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L2039:
	mov	r4, r0	@ final_dar, tmp141
	mov	r2, r0	@ dar, final_dar
	b	.L2029	@
.L2057:
	.align	2
.L2056:
	.word	.LANCHOR0
	.word	.LC213
	.fnend
	.size	H264GetDar, .-H264GetDar
	.align	2
	.global	ProcessSPS
	.type	ProcessSPS, %function
ProcessSPS:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r1, #0	@ pSPS, pSPS
	.pad #52
	sub	sp, sp, #52	@,,
	beq	.L2168	@,
	ldr	r2, [r4, #736]	@ D.41848, pSPS_31(D)->profile_idc
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #100	@ D.41848,
	cmpne	r2, #110	@, D.41848,
	moveq	r3, #1	@ tmp322,
	movne	r3, #0	@ tmp322,
	cmp	r2, #122	@ D.41848,
	orreq	r3, r3, #1	@,, tmp326, tmp322
	cmp	r2, #144	@ D.41848,
	orreq	r3, r3, #1	@,, tmp332, tmp326
	cmp	r3, #0	@ tmp332,
	streqb	r3, [r4, #25]	@ tmp332, pSPS_31(D)->seq_scaling_matrix_present_flag
	moveq	r3, #1	@ tmp423,
	streq	r3, [r4, #748]	@ tmp423, pSPS_31(D)->chroma_format_idc
	bne	.L2169	@,
.L2071:
	ldr	r1, .L2183	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #12	@ D.41848,
	str	r0, [r4, #2904]	@ D.41848, pSPS_31(D)->log2_max_frame_num_minus4
	bhi	.L2083	@,
	add	r6, r5, #49152	@ tmp605, pH264Ctx,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2083	@,
	ldr	r1, .L2183+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.41848,
	str	r0, [r4, #2908]	@ D.41848, pSPS_31(D)->pic_order_cnt_type
	bhi	.L2085	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2085	@,
	cmp	r0, #0	@ D.41848,
	beq	.L2170	@,
	cmp	r0, #1	@ D.41848,
	beq	.L2171	@,
.L2091:
	ldr	r1, .L2183+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #3952]	@, pSPS_31(D)->num_ref_frames
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	ldr	r1, .L2183+12	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #17]	@, pSPS_31(D)->gaps_in_frame_num_value_allowed_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	ldr	r1, .L2183+16	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r8, #509	@ tmp476,
	sub	r3, r0, #1	@ D.41848, D.41848,
	str	r0, [r4, #3956]	@ D.41848, pSPS_31(D)->pic_width_in_mbs_minus1
	cmp	r3, r8	@ D.41848, tmp476
	bhi	.L2096	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2096	@,
	ldr	r1, .L2183+20	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #3960]	@, pSPS_31(D)->pic_height_in_map_units_minus1
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	ldr	r1, .L2183+24	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41850,
	strb	r0, [r4, #18]	@ D.41850, pSPS_31(D)->frame_mbs_only_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	cmp	r0, #0	@ D.41850,
	bne	.L2172	@,
	ldr	r1, .L2183+28	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r7, [r4, #3960]	@ pSPS_31(D)->pic_height_in_map_units_minus1, pSPS_31(D)->pic_height_in_map_units_minus1
	add	r7, r7, #1	@ D.41848, pSPS_31(D)->pic_height_in_map_units_minus1,
	cmp	r7, #255	@ D.41848,
	strb	r0, [r4, #19]	@, pSPS_31(D)->mb_adaptive_frame_field_flag
	bhi	.L2129	@,
	ldr	r3, [r4, #3956]	@ pSPS_31(D)->pic_width_in_mbs_minus1, pSPS_31(D)->pic_width_in_mbs_minus1
	add	r3, r3, #1	@ D.41848, pSPS_31(D)->pic_width_in_mbs_minus1,
	cmp	r7, #1	@ D.41848,
	cmphi	r3, #3	@, D.41848,
	movhi	r9, #2	@ temp,
	bls	.L2129	@,
.L2100:
	mul	r7, r7, r9	@ D.41848, D.41848, temp
	mov	r10, r3, asl #4	@ PicWidthInSmp, D.41848,
	mov	r7, r7, asl #4	@ PicHeightInSmp, D.41848,
	mul	r1, r10, r7	@ D.41848, PicWidthInSmp, PicHeightInSmp
	add	r1, r1, r1, lsr #1	@ pic_size, D.41848, D.41848,
	cmp	r1, #100663296	@ pic_size,
	bhi	.L2173	@,
	ldr	r2, [r4, #740]	@ D.41848, pSPS_31(D)->level_idc
	sub	r3, r2, #10	@ tmp506, D.41848,
	cmp	r3, #31	@ tmp506,
	ldrls	pc, [pc, r3, asl #2]	@ tmp506
	b	.L2102	@
.L2104:
	.word	.L2103
	.word	.L2105
	.word	.L2134
	.word	.L2134
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2134
	.word	.L2107
	.word	.L2109
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2109
	.word	.L2110
	.word	.L2111
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2102
	.word	.L2113
	.word	.L2113
.L2169:
	ldr	r1, .L2183+32	@,
	bl	ue_v	@
	cmp	r0, #1	@ D.41848,
	str	r0, [r4, #748]	@ D.41848, pSPS_31(D)->chroma_format_idc
	bhi	.L2062	@,
	add	r6, r5, #49152	@ tmp605, pH264Ctx,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2062	@,
	ldr	r1, .L2183+36	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@ D.41848,
	str	r0, [r4, #752]	@ D.41848, pSPS_31(D)->bit_depth_luma_minus8
	bne	.L2064	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2064	@,
.L2065:
	ldr	r1, .L2183+40	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@ D.41848,
	str	r0, [r4, #756]	@ D.41848, pSPS_31(D)->bit_depth_chroma_minus8
	bne	.L2066	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2066	@,
.L2067:
	ldr	r1, .L2183+44	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L2068	@,
	ldr	r6, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r6, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2068	@,
	ldr	r1, .L2183+48	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41850,
	strb	r0, [r4, #25]	@ D.41850, pSPS_31(D)->seq_scaling_matrix_present_flag
	cmp	r0, #1	@ D.41850,
	bne	.L2071	@,
	add	fp, r4, #2672	@ ivtmp.2517, pSPS,
	ldr	r10, .L2183+52	@ tmp612,
	add	fp, fp, #8	@ ivtmp.2517, ivtmp.2517,
	add	r7, sp, #20	@ ivtmp.2504,,
	add	r9, r4, #3	@ ivtmp.2510, pSPS,
	add	r8, r4, #760	@ ivtmp.2521, pSPS,
	b	.L2077	@
.L2176:
	ldr	r3, .L2183+56	@ tmp615,
	cmp	r1, #0	@ D.41849,
	movne	r3, r10	@ tmp615, tmp612
	mov	r1, r3	@, tmp615
	bl	memcpy	@
.L2073:
	add	r6, r6, #1	@ i, i,
	add	fp, fp, #16	@ ivtmp.2517, ivtmp.2517,
	cmp	r6, #6	@ i,
	add	r8, r8, #64	@ ivtmp.2521, ivtmp.2521,
	beq	.L2174	@,
.L2077:
	ldr	r1, .L2183+60	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	clz	r1, r6	@ D.41849, i
	mov	r2, #16	@,
	mov	r1, r1, lsr #5	@ D.41849, D.41849,
	cmp	r0, #1	@ D.41848,
	mov	r3, r0	@ D.41848,
	mov	r0, fp	@, ivtmp.2517
	str	r3, [r7, #4]!	@ D.41848, MEM[base: _386, offset: 0B]
	strb	r3, [r9, #1]!	@ D.41848, MEM[base: _387, offset: 0B]
	beq	.L2175	@,
	cmp	r6, #0	@ i,
	cmpne	r6, #3	@, i,
	beq	.L2176	@,
	mov	r2, #16	@,
	sub	r1, fp, #16	@, ivtmp.2517,
	mov	r0, fp	@, ivtmp.2517
	bl	memcpy	@
	b	.L2073	@
.L2066:
	ldr	r1, .L2183+64	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L2067	@
.L2064:
	ldr	r1, .L2183+68	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L2065	@
.L2127:
	cmp	r0, r10	@ MaxWidth, PicWidthInSmp
	cmpcs	r3, r7	@, MaxHeight, PicHeightInSmp
	bcs	.L2126	@,
	ldr	r2, .L2183+72	@ tmp590,
	ldr	ip, [r2]	@ D.41860, g_event_report
	cmp	ip, #0	@ D.41860,
	beq	.L2166	@,
	strh	r0, [sp, #20]	@ movhi	@ MaxWidth, para
	add	r2, sp, #16	@,,
	strh	r10, [sp, #16]	@ movhi	@ PicWidthInSmp, para
	mov	r1, #107	@,
	strh	r7, [sp, #18]	@ movhi	@ PicHeightInSmp, para
	strh	r3, [sp, #22]	@ movhi	@ MaxHeight, para
	ldr	r0, [r6, #3688]	@, pH264Ctx_40(D)->ChanID
	blx	ip	@ D.41860
.L2166:
	mvn	r0, #0	@ D.41846,
.L2158:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2172:
	ldr	r7, [r4, #3960]	@ D.41848, pSPS_31(D)->pic_height_in_map_units_minus1
	strb	r3, [r4, #19]	@ pH264Ctx_40(D)->SeErrFlg, pSPS_31(D)->mb_adaptive_frame_field_flag
	sub	r3, r7, #1	@ D.41848, D.41848,
	cmp	r3, r8	@ D.41848, tmp476
	bhi	.L2129	@,
	ldr	r3, [r4, #3956]	@ pSPS_31(D)->pic_width_in_mbs_minus1, pSPS_31(D)->pic_width_in_mbs_minus1
	mov	r9, #1	@ temp,
	add	r7, r7, #1	@ D.41848, D.41848,
	add	r3, r3, r9	@ D.41848, pSPS_31(D)->pic_width_in_mbs_minus1,
	b	.L2100	@
.L2170:
	ldr	r1, .L2183+76	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #12	@ D.41848,
	str	r0, [r4, #2912]	@ D.41848, pSPS_31(D)->log2_max_pic_order_cnt_lsb_minus4
	bhi	.L2088	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	beq	.L2091	@,
.L2088:
	ldr	r1, .L2183+80	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2134:
	mov	r0, #60416	@ size,
	movt	r0, 13	@ size,
.L2106:
	bl	__aeabi_uidiv	@
	ldr	r1, .L2183+84	@,
	cmp	r0, #16	@,
	movcc	r8, r0	@ size,
	movcs	r8, #16	@ size,
	mov	r2, r8	@, size
	mov	r0, #21	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3952]	@ D.41848, pSPS_31(D)->num_ref_frames
	cmp	r2, r8	@ D.41848, size
	bhi	.L2114	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	beq	.L2115	@,
.L2114:
	mov	r3, r8	@, size
	ldr	r1, .L2183+88	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3952]	@ D.41848, pSPS_31(D)->num_ref_frames
	cmp	r3, #16	@ D.41848,
	bhi	.L2163	@,
	cmp	r8, r3	@ size, D.41848
	movcc	r8, r3	@ size, D.41848
.L2163:
	str	r8, [r4, #3952]	@ size, pSPS_31(D)->num_ref_frames
.L2115:
	ldr	r1, .L2183+92	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #20]	@, pSPS_31(D)->direct_8x8_inference_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	ldr	r1, .L2183+96	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.41850,
	strb	r0, [r4, #21]	@ D.41850, pSPS_31(D)->frame_cropping_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	cmp	r0, #0	@ D.41850,
	bne	.L2177	@,
.L2117:
	mov	r2, r10, lsr #1	@ D.41848, PicWidthInSmp,
	mov	r3, r7, lsr #1	@ D.41848, PicHeightInSmp,
	str	r10, [r4, #3984]	@ PicWidthInSmp, pSPS_31(D)->disp_width
	str	r7, [r4, #3988]	@ PicHeightInSmp, pSPS_31(D)->disp_height
	str	r2, [r4, #3992]	@ D.41848, pSPS_31(D)->disp_center_x
	str	r3, [r4, #3996]	@ D.41848, pSPS_31(D)->disp_center_y
.L2119:
	ldr	r1, .L2183+100	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r3, r0	@ D.41850,
	strb	r3, [r4, #22]	@ D.41850, pSPS_31(D)->vui_parameters_present_flag
	ldr	r2, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r2, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	cmp	r3, #0	@ D.41850,
	mov	r2, #2	@ tmp559,
	str	r2, [r4, #68]	@ tmp559, pSPS_31(D)->vui_seq_parameters.matrix_coefficients
	bne	.L2178	@,
	mov	r0, r3	@ D.41855, D.41850
	strb	r3, [r4, #43]	@ D.41850, pSPS_31(D)->vui_seq_parameters.aspect_ratio_idc
	mov	r3, #5	@ tmp573,
	str	r3, [r4, #56]	@ tmp573, pSPS_31(D)->vui_seq_parameters.video_format
.L2122:
	ldr	r2, [r4, #48]	@ pSPS_31(D)->vui_seq_parameters.sar_height, pSPS_31(D)->vui_seq_parameters.sar_height
	mov	r3, r10	@, PicWidthInSmp
	ldr	r1, [r4, #44]	@ pSPS_31(D)->vui_seq_parameters.sar_width, pSPS_31(D)->vui_seq_parameters.sar_width
	str	r7, [sp]	@ PicHeightInSmp,
	bl	H264GetDar	@
	ldr	r3, [r4, #3952]	@ D.41848, pSPS_31(D)->num_ref_frames
	cmp	r3, #0	@ D.41848,
	str	r0, [r4, #52]	@, pSPS_31(D)->vui_seq_parameters.aspect_ratio
	beq	.L2125	@,
	cmp	r8, r3	@ size, D.41848
	movcs	r8, r3	@ size, D.41848
.L2125:
	ldr	r3, [r5]	@ D.41858, pH264Ctx_40(D)->pstExtraData
	cmp	r8, #16	@ size,
	movcs	r8, #16	@ size,
	ldr	r2, [r3, #32]	@ _289->eCapLevel, _289->eCapLevel
	cmp	r2, #25	@ _289->eCapLevel,
	beq	.L2179	@,
.L2126:
	cmp	r7, #1920	@ PicHeightInSmp,
	bcc	.L2128	@,
	cmp	r8, #6	@ size,
	movcs	r8, #6	@ size,
.L2128:
	add	r8, r8, #1	@ D.41848, size,
	mov	r0, #0	@ D.41846,
	str	r8, [r4, #3980]	@ D.41848, pSPS_31(D)->dpb_size_plus1
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2171:
	ldr	r1, .L2183+104	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #16]	@, pSPS_31(D)->delta_pic_order_always_zero_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	ldr	r1, .L2183+108	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #2916]	@, pSPS_31(D)->offset_for_non_ref_pic
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	ldr	r1, .L2183+112	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #2920]	@, pSPS_31(D)->offset_for_top_to_bottom_field
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2166	@,
	ldr	r1, .L2183+116	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #255	@ D.41848,
	str	r0, [r4, #2924]	@ D.41848, pSPS_31(D)->num_ref_frames_in_pic_order_cnt_cycle
	bhi	.L2093	@,
	ldr	r7, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r7, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2093	@,
	cmp	r0, #0	@ D.41848,
	addne	r8, r4, #2912	@ ivtmp.2490, pSPS,
	addne	r8, r8, #12	@ ivtmp.2490, ivtmp.2490,
	bne	.L2095	@,
	b	.L2091	@
.L2180:
	ldr	r3, [r4, #2924]	@ pSPS_31(D)->num_ref_frames_in_pic_order_cnt_cycle, pSPS_31(D)->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, r7	@ pSPS_31(D)->num_ref_frames_in_pic_order_cnt_cycle, i
	bls	.L2091	@,
.L2095:
	ldr	r1, .L2183+120	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	add	r7, r7, #1	@ i, i,
	str	r0, [r8, #4]!	@, MEM[base: _162, offset: 0B]
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	beq	.L2180	@,
	b	.L2166	@
.L2109:
	mov	r0, #30208	@ size,
	movt	r0, 47	@ size,
	b	.L2106	@
.L2113:
	mov	r0, #12582912	@ size,
	b	.L2106	@
.L2096:
	mov	r2, r0	@, D.41848
	ldr	r1, .L2183+124	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2174:
	ldr	r1, .L2183+60	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #1	@ D.41848,
	str	r0, [sp, #8]	@ D.41848, q8x8defaultflag
	strb	r0, [r4, #10]	@ D.41848, pSPS_31(D)->seq_scaling_list_present_flag
	beq	.L2078	@,
	add	r0, r4, #2768	@, pSPS,
	mov	r2, #64	@,
	add	r0, r0, #8	@,,
	ldr	r1, .L2183+128	@,
	bl	memcpy	@
.L2079:
	ldr	r1, .L2183+60	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #1	@ D.41848,
	str	r0, [sp, #12]	@ D.41848, q8x8defaultflag
	strb	r0, [r4, #11]	@ D.41848, pSPS_31(D)->seq_scaling_list_present_flag
	beq	.L2181	@,
	add	r0, r4, #2832	@, pSPS,
	mov	r2, #64	@,
	ldr	r1, .L2183+132	@,
	add	r0, r0, #8	@,,
	bl	memcpy	@
	b	.L2071	@
.L2175:
	mov	r3, r2	@,
	str	r7, [sp]	@ ivtmp.2504,
	mov	r2, fp	@, ivtmp.2517
	mov	r1, r8	@, ivtmp.2521
	mov	r0, r5	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [r7]	@ MEM[base: _386, offset: 0B], MEM[base: _386, offset: 0B]
	cmp	r3, #1	@ MEM[base: _386, offset: 0B],
	bne	.L2073	@,
	cmp	r6, #2	@ i,
	ldr	r1, .L2183+56	@ tmp614,
	mov	r2, #16	@,
	mov	r0, fp	@, ivtmp.2517
	movls	r1, r10	@ tmp614, tmp612
	bl	memcpy	@
	b	.L2073	@
.L2083:
	ldr	r1, .L2183+136	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2177:
	ldr	r1, .L2183+140	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L2183+144	@,
	str	r0, [r4, #3964]	@, pSPS_31(D)->frame_crop_left_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L2183+148	@,
	str	r0, [r4, #3968]	@, pSPS_31(D)->frame_crop_right_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L2183+152	@,
	str	r0, [r4, #3972]	@, pSPS_31(D)->frame_crop_top_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #3972]	@ pSPS_31(D)->frame_crop_top_offset, pSPS_31(D)->frame_crop_top_offset
	ldr	r2, [r4, #3964]	@ pSPS_31(D)->frame_crop_left_offset, pSPS_31(D)->frame_crop_left_offset
	mov	r1, r9, asl #1	@ D.41848, temp,
	ldr	ip, [r4, #3968]	@ pSPS_31(D)->frame_crop_right_offset, pSPS_31(D)->frame_crop_right_offset
	mov	r3, r3, asl #1	@ D.41848, pSPS_31(D)->frame_crop_top_offset,
	mov	r2, r2, asl #1	@ D.41848, pSPS_31(D)->frame_crop_left_offset,
	mul	r9, r9, r3	@ D.41848, temp, D.41848
	rsb	r3, r2, r10	@ D.41848, D.41848, PicWidthInSmp
	sub	r3, r3, ip, asl #1	@ D.41848, D.41848, pSPS_31(D)->frame_crop_right_offset,
	rsb	ip, r9, r7	@ D.41848, D.41848, PicHeightInSmp
	str	r0, [r4, #3976]	@ D.41848, pSPS_31(D)->frame_crop_bottom_offset
	mls	r0, r0, r1, ip	@ D.41848, D.41848, D.41848, D.41848
	cmp	r3, #0	@ D.41848,
	cmpgt	r0, #0	@, D.41848,
	ble	.L2117	@,
	add	r2, r2, r3, lsr #1	@ D.41848, D.41848, D.41848,
	add	r9, r9, r0, lsr #1	@ D.41848, D.41848, D.41848,
	str	r2, [r4, #3992]	@ D.41848, pSPS_31(D)->disp_center_x
	str	r9, [r4, #3996]	@ D.41848, pSPS_31(D)->disp_center_y
	str	r3, [r4, #3984]	@ D.41848, pSPS_31(D)->disp_width
	str	r0, [r4, #3988]	@ D.41848, pSPS_31(D)->disp_height
	b	.L2119	@
.L2178:
	add	r1, r4, #28	@, pSPS,
	mov	r0, r5	@, pH264Ctx
	bl	vui_parameters	@
	cmp	r0, #0	@,
	bne	.L2165	@,
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ pSPS_31(D)->vui_seq_parameters.bitstream_restriction_flag, pSPS_31(D)->vui_seq_parameters.bitstream_restriction_flag
	cmp	r3, #0	@ pSPS_31(D)->vui_seq_parameters.bitstream_restriction_flag,
	beq	.L2165	@,
	ldr	r2, [r4, #732]	@ D.41848, pSPS_31(D)->vui_seq_parameters.max_dec_frame_buffering
	clz	r3, r2	@ tmp565, D.41848
	mov	r3, r3, lsr #5	@ tmp565, tmp565,
	cmp	r8, r2	@ size, D.41848
	orrcc	r3, r3, #1	@,, tmp568, tmp565
	cmp	r3, #0	@ tmp568,
	bne	.L2182	@,
	ldr	r3, [r4, #3952]	@ pSPS_31(D)->num_ref_frames, pSPS_31(D)->num_ref_frames
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ D.41855, pSPS_31(D)->vui_seq_parameters.aspect_ratio_idc
	cmp	r2, r3	@ D.41848, pSPS_31(D)->num_ref_frames
	movcs	r8, r2	@ size, D.41848
	movcc	r8, r3	@ size, pSPS_31(D)->num_ref_frames
	b	.L2122	@
.L2182:
	mov	r3, r8	@, size
	ldr	r1, .L2183+156	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L2165:
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ D.41855, pSPS_31(D)->vui_seq_parameters.aspect_ratio_idc
	b	.L2122	@
.L2062:
	ldr	r1, .L2183+160	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2179:
	ldr	r2, [r3, #608]	@ _289->stChanOption.s32ReRangeEn, _289->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _289->stChanOption.s32ReRangeEn,
	bne	.L2126	@,
	ldr	r1, [r3, #588]	@ D.41848, _289->stChanOption.s32MaxRefFrameNum
	ldr	r0, [r3, #568]	@ MaxWidth, _289->stChanOption.s32MaxWidth
	cmp	r8, r1	@ size, D.41848
	ldr	r3, [r3, #572]	@ MaxHeight, _289->stChanOption.s32MaxHeight
	bls	.L2127	@,
	ldr	r3, .L2183+72	@ tmp578,
	ldr	r3, [r3]	@ D.41860, g_event_report
	cmp	r3, #0	@ D.41860,
	beq	.L2166	@,
	str	r1, [sp, #20]	@ D.41848, para
	add	r2, sp, #16	@,,
	str	r8, [sp, #16]	@ size, para
	mov	r1, #106	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_40(D)->ChanID
	blx	r3	@ D.41860
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2068:
	ldr	r1, .L2183+164	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2103:
	mov	r0, #20992	@ size,
	movt	r0, 2	@ size,
	b	.L2106	@
.L2105:
	mov	r0, #17920	@ size,
	movt	r0, 5	@ size,
	b	.L2106	@
.L2111:
	mov	r0, #7864320	@ size,
	b	.L2106	@
.L2107:
	mov	r0, #55296	@ size,
	movt	r0, 27	@ size,
	b	.L2106	@
.L2110:
	mov	r0, #30720	@ size,
	movt	r0, 105	@ size,
	b	.L2106	@
.L2102:
	ldr	r1, .L2183+168	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2093:
	ldr	r1, .L2183+172	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2129:
	ldr	r1, .L2183+176	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2085:
	ldr	r1, .L2183+180	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2181:
	add	r6, r4, #2832	@ D.41854, pSPS,
	add	r1, r4, #1392	@, pSPS,
	add	r6, r6, #8	@ D.41854, D.41854,
	add	r0, sp, #12	@ tmp407,,
	mov	r3, #64	@,
	str	r0, [sp]	@ tmp407,
	add	r1, r1, #8	@,,
	mov	r2, r6	@, D.41854
	mov	r0, r5	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [sp, #12]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r3, #1	@ q8x8defaultflag,
	bne	.L2071	@,
	mov	r0, r6	@, D.41854
	mov	r2, #64	@,
	ldr	r1, .L2183+132	@,
	bl	memcpy	@
	b	.L2071	@
.L2078:
	add	r6, r4, #2768	@ D.41854, pSPS,
	add	r1, r4, #1136	@, pSPS,
	add	r6, r6, #8	@ D.41854, D.41854,
	add	r0, sp, #8	@ tmp393,,
	mov	r3, #64	@,
	str	r0, [sp]	@ tmp393,
	add	r1, r1, #8	@,,
	mov	r2, r6	@, D.41854
	mov	r0, r5	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [sp, #8]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r3, #1	@ q8x8defaultflag,
	bne	.L2079	@,
	mov	r0, r6	@, D.41854
	mov	r2, #64	@,
	ldr	r1, .L2183+128	@,
	bl	memcpy	@
	b	.L2079	@
.L2173:
	ldr	r1, .L2183+184	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2168:
	mov	r0, r4	@, pSPS
	movw	r3, #9700	@,
	ldr	r2, .L2183+188	@,
	ldr	r1, .L2183+192	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41846,
	b	.L2158	@
.L2184:
	.align	2
.L2183:
	.word	.LC223
	.word	.LC225
	.word	.LC228
	.word	.LC236
	.word	.LC237
	.word	.LC239
	.word	.LC240
	.word	.LC254
	.word	.LC214
	.word	.LC216
	.word	.LC218
	.word	.LC220
	.word	.LC222
	.word	.LANCHOR1+80
	.word	.LANCHOR1+96
	.word	.LC161
	.word	.LC219
	.word	.LC217
	.word	g_event_report
	.word	.LC227
	.word	.LC229
	.word	.LC244
	.word	.LC245
	.word	.LC246
	.word	.LC247
	.word	.LC252
	.word	.LC230
	.word	.LC231
	.word	.LC232
	.word	.LC233
	.word	.LC235
	.word	.LC238
	.word	.LANCHOR1+112
	.word	.LANCHOR1+176
	.word	.LC224
	.word	.LC248
	.word	.LC249
	.word	.LC250
	.word	.LC251
	.word	.LC253
	.word	.LC215
	.word	.LC221
	.word	.LC243
	.word	.LC234
	.word	.LC241
	.word	.LC226
	.word	.LC242
	.word	.LC21
	.word	.LC22
	.fnend
	.size	ProcessSPS, .-ProcessSPS
	.align	2
	.global	H264_DecSPS
	.type	H264_DecSPS, %function
H264_DecSPS:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #8	@,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r2, .L2231	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r8, r0, #49152	@ tmp180, pH264Ctx,
	bl	u_v	@
	ldr	r1, .L2231+4	@,
	mov	r9, r0	@ D.41934,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L2231+8	@,
	mov	fp, r0	@ constrained_set0_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L2231+12	@,
	mov	r10, r0	@ constrained_set1_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L2231+16	@,
	str	r0, [sp, #4]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r2, .L2231+20	@,
	mov	r1, #4	@,
	str	r0, [sp, #8]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2231+24	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, .L2231+28	@,
	mov	r6, r0	@ D.41934,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, [r8, #3628]	@ pH264Ctx_10(D)->SeErrFlg, pH264Ctx_10(D)->SeErrFlg
	cmp	r2, #0	@ pH264Ctx_10(D)->SeErrFlg,
	bne	.L2224	@,
	add	r5, r4, #12288	@ tmp295, pH264Ctx,
	mov	r7, r0	@ seq_parameter_set_id,
	ldr	r2, [r5, #1284]	@ pH264Ctx_10(D)->MaxSpsNum, pH264Ctx_10(D)->MaxSpsNum
	sub	r2, r2, #1	@ D.41934, pH264Ctx_10(D)->MaxSpsNum,
	cmp	r0, r2	@ seq_parameter_set_id, D.41934
	bhi	.L2226	@,
	cmp	r9, #100	@ profile_idc,
	mov	r8, r9	@ profile_idc, D.41934
	beq	.L2191	@,
	bhi	.L2192	@,
	cmp	r9, #77	@ profile_idc,
	beq	.L2191	@,
	cmp	r9, #88	@ profile_idc,
	beq	.L2193	@,
	cmp	r9, #66	@ profile_idc,
	bne	.L2190	@,
	ldr	r1, .L2231+32	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L2191:
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.41934
	bls	.L2223	@,
.L2229:
	cmp	r6, #41	@ level_idc,
	bhi	.L2223	@,
.L2197:
	mov	ip, #4000	@ tmp201,
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	mul	r6, ip, r7	@ D.41935, tmp201, seq_parameter_set_id
	add	r3, r3, r6	@ D.41937, pH264Ctx_10(D)->SPS, D.41935
	ldrb	r1, [r3, #23]	@ zero_extendqisi2	@ _51->is_valid, _51->is_valid
	subs	r9, r1, #0	@ _51->is_valid, _51->is_valid
	beq	.L2198	@,
	ldr	r3, .L2231+36	@ tmp206,
	mov	r0, r4	@, pH264Ctx
	str	ip, [sp, #12]	@ tmp201, %sfp
	ldrb	ip, [sp, #4]	@ zero_extendqisi2	@, %sfp
	add	r1, r3, #2208	@, tmp206,
	str	r8, [r3, #2944]	@ profile_idc, sps_tmp.profile_idc
	strb	fp, [r3, #2208]	@ constrained_set0_flag, sps_tmp.constrained_set0_flag
	strb	ip, [r3, #2210]	@ tmp298, sps_tmp.constrained_set2_flag
	ldrb	ip, [sp, #8]	@ zero_extendqisi2	@, %sfp
	strb	r10, [r3, #2209]	@ constrained_set1_flag, sps_tmp.constrained_set1_flag
	str	r2, [r3, #2948]	@ level_idc, sps_tmp.level_idc
	strb	ip, [r3, #2211]	@ tmp299, sps_tmp.constrained_set3_flag
	str	r7, [r3, #2952]	@ seq_parameter_set_id, sps_tmp.seq_parameter_set_id
	str	r3, [sp, #4]	@ tmp206, %sfp
	bl	ProcessSPS	@
	ldr	r3, [sp, #4]	@ tmp206, %sfp
	ldr	ip, [sp, #12]	@ tmp201, %sfp
	subs	r4, r0, #0	@ D.41934,
	bne	.L2227	@,
	ldr	r1, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r0, r3, #2208	@, tmp206,
	str	ip, [sp, #8]	@ tmp201, %sfp
	add	r1, r1, r6	@, pH264Ctx_10(D)->SPS, D.41935
	str	r3, [sp, #4]	@ tmp206, %sfp
	bl	SPSEqual	@
	ldmib	sp, {r3, ip}	@,,
	cmp	r0, #0	@ D.41933
	bne	.L2228	@,
.L2187:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2192:
	cmp	r9, #122	@ D.41934,
	beq	.L2195	@,
	cmp	r9, #144	@ D.41934,
	beq	.L2195	@,
	cmp	r9, #110	@ D.41934,
	beq	.L2195	@,
.L2190:
	mov	r2, r9	@, D.41934
	ldr	r1, .L2231+40	@,
	mov	r0, #1	@,
	mov	r8, #100	@ profile_idc,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.41934
	bhi	.L2229	@,
.L2223:
	mov	r3, #41	@,
	ldr	r1, .L2231+44	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r2, #41	@ level_idc,
	b	.L2197	@
.L2198:
	str	r8, [r3, #736]	@ profile_idc, _51->profile_idc
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	ldrb	r1, [sp, #4]	@ zero_extendqisi2	@, %sfp
	strb	fp, [r3, r6]	@ constrained_set0_flag, _78->constrained_set0_flag
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r3, r3, r6	@ tmp245, pH264Ctx_10(D)->SPS, D.41935
	strb	r10, [r3, #1]	@ constrained_set1_flag, _82->constrained_set1_flag
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r3, r3, r6	@ tmp250, pH264Ctx_10(D)->SPS, D.41935
	strb	r1, [r3, #2]	@ tmp300, _86->constrained_set2_flag
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	ldrb	r1, [sp, #8]	@ zero_extendqisi2	@, %sfp
	add	r3, r3, r6	@ tmp255, pH264Ctx_10(D)->SPS, D.41935
	strb	r1, [r3, #3]	@ tmp301, _90->constrained_set3_flag
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r3, r3, r6	@ tmp260, pH264Ctx_10(D)->SPS, D.41935
	str	r2, [r3, #740]	@ level_idc, _94->level_idc
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r3, r3, r6	@ tmp264, pH264Ctx_10(D)->SPS, D.41935
	str	r7, [r3, #744]	@ seq_parameter_set_id, _97->seq_parameter_set_id
	ldr	r1, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r1, r1, r6	@, pH264Ctx_10(D)->SPS, D.41935
	bl	ProcessSPS	@
	cmp	r0, #0	@ D.41933
	bne	.L2230	@,
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	mov	r2, #1	@ tmp286,
	add	r3, r3, r6	@ tmp285, pH264Ctx_10(D)->SPS, D.41935
	strb	r2, [r3, #24]	@ tmp286, _111->is_refreshed
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r6, r3, r6	@ tmp291, pH264Ctx_10(D)->SPS, D.41935
	strb	r2, [r6, #23]	@ tmp286, _114->is_valid
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2226:
	ldr	r1, .L2231+48	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #1284]	@ D.41934, pH264Ctx_10(D)->MaxSpsNum
	sub	r2, r3, #1	@ D.41934, D.41934,
	cmp	r7, r2	@ seq_parameter_set_id, D.41934
	bls	.L2224	@,
	ldr	r2, .L2231+52	@ tmp190,
	ldr	r4, [r2]	@ D.41936, g_event_report
	cmp	r4, #0	@ D.41936,
	beq	.L2224	@,
	str	r7, [sp, #16]	@ seq_parameter_set_id, para
	add	r2, sp, #16	@,,
	str	r3, [sp, #20]	@ D.41934, para
	mov	r1, #109	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_10(D)->ChanID
	blx	r4	@ D.41936
.L2224:
	mvn	r0, #0	@ D.41933,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2195:
	ldr	r1, .L2231+56	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.41934
	bhi	.L2229	@,
	b	.L2223	@
.L2193:
	ldr	r1, .L2231+60	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	cmp	r6, #9	@ level_idc,
	mov	r2, r6	@ level_idc, D.41934
	bhi	.L2229	@,
	b	.L2223	@
.L2228:
	ldr	r0, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	mov	r2, ip	@, tmp201
	add	r1, r3, #2208	@, tmp206,
	mov	ip, #1	@ tmp227,
	add	r0, r0, r6	@, pH264Ctx_10(D)->SPS, D.41935
	strb	ip, [r3, #2232]	@ tmp227, sps_tmp.is_refreshed
	strb	ip, [r3, #2231]	@ tmp227, sps_tmp.is_valid
	bl	memmove	@
	mov	r0, r4	@ D.41933, D.41934
	b	.L2187	@
.L2227:
	mov	r3, r7	@, seq_parameter_set_id
	movw	r2, #10232	@,
	ldr	r1, .L2231+64	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.41933,
	b	.L2187	@
.L2230:
	mov	r3, r7	@, seq_parameter_set_id
	movw	r2, #10255	@,
	ldr	r1, .L2231+64	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	mov	r2, #1	@ tmp274,
	mvn	r0, #0	@ D.41933,
	add	r3, r3, r6	@ tmp273, pH264Ctx_10(D)->SPS, D.41935
	strb	r2, [r3, #24]	@ tmp274, _105->is_refreshed
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r6, r3, r6	@ tmp279, pH264Ctx_10(D)->SPS, D.41935
	strb	r9, [r6, #23]	@ tmp302, _108->is_valid
	b	.L2187	@
.L2232:
	.align	2
.L2231:
	.word	.LC255
	.word	.LC256
	.word	.LC257
	.word	.LC258
	.word	.LC259
	.word	.LC260
	.word	.LC261
	.word	.LC262
	.word	.LC263
	.word	.LANCHOR2
	.word	.LC266
	.word	.LC267
	.word	.LC167
	.word	g_event_report
	.word	.LC265
	.word	.LC264
	.word	.LC268
	.fnend
	.size	H264_DecSPS, .-H264_DecSPS
	.align	2
	.global	PassBytes
	.type	PassBytes, %function
PassBytes:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, [r0, #368]	@ D.41962, pH264Ctx_7(D)->pCurrNal
	cmp	ip, #0	@ D.41962,
	cmpne	r1, #0	@, len,
	beq	.L2239	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r3, [ip]	@ zero_extendqisi2	@ D.41963, _8->nal_used_segment
	mov	r2, r3, asl #2	@ tmp146, D.41963,
	mov	r5, r3, asl #5	@ tmp147, D.41963,
	rsb	r4, r2, r5	@ tmp148, tmp146, tmp147
	add	r4, ip, r4	@ tmp149, D.41962, tmp148
	add	r6, r4, #8	@ tmp150, tmp149,
	ldr	lr, [r4, #8]	@ _8->stream[_11].streamBuffer, _8->stream[_11].streamBuffer
	cmp	lr, #0	@ _8->stream[_11].streamBuffer,
	beq	.L2242	@,
	ldr	lr, [ip, #68]	@ D.41960, _8->nal_segment
	cmp	r3, #1	@ D.41963,
	cmpls	lr, #2	@, D.41960,
	bhi	.L2242	@,
	cmp	lr, r3	@ D.41960, segment_idx
	bls	.L2242	@,
	ldr	lr, [r4, #12]	@ _8->stream[segment_idx_14].bitstream_length, _8->stream[segment_idx_14].bitstream_length
	mov	r6, r2	@ tmp207, tmp146
	ldr	r4, [r4, #24]	@ _8->stream[segment_idx_14].bitsoffset, _8->stream[segment_idx_14].bitsoffset
	mov	lr, lr, asl #3	@ D.41960, _8->stream[segment_idx_14].bitstream_length,
	add	r1, r4, r1, lsl #3	@ D.41960, _8->stream[segment_idx_14].bitsoffset, len,
	cmp	r1, lr	@ D.41960, D.41960
	bhi	.L2237	@,
	b	.L2235	@
.L2238:
	ldr	r4, [r2, #24]	@ _16->stream[segment_idx_28].bitsoffset, _16->stream[segment_idx_28].bitsoffset
	ldr	r2, [r2, #12]	@ _16->stream[segment_idx_28].bitstream_length, _16->stream[segment_idx_28].bitstream_length
	rsb	lr, lr, r4	@ D.41967, D.41960, _16->stream[segment_idx_28].bitsoffset
	add	r1, r1, lr	@ D.41960, D.41960, D.41967
	mov	lr, r2, asl #3	@ D.41960, _16->stream[segment_idx_28].bitstream_length,
	cmp	r1, lr	@ D.41960, D.41960
	bls	.L2235	@,
.L2237:
	rsb	r2, r6, r5	@ tmp198, tmp207, tmp208
	add	r3, r3, #1	@ segment_idx, segment_idx,
	add	ip, ip, r2	@ tmp199, D.41962, tmp198
	mov	r6, r3, asl #2	@ tmp207, segment_idx,
	mov	r5, r3, asl #5	@ tmp208, segment_idx,
	str	lr, [ip, #24]	@ D.41960, _52->stream[segment_idx_48].bitsoffset
	rsb	r2, r6, r5	@ tmp177, tmp207, tmp208
	ldr	ip, [r0, #368]	@ D.41962, pH264Ctx_7(D)->pCurrNal
	ldrb	r4, [ip]	@ zero_extendqisi2	@ _24->nal_used_segment, _24->nal_used_segment
	add	r4, r4, #1	@ tmp203, _24->nal_used_segment,
	strb	r4, [ip]	@ tmp203, _24->nal_used_segment
	ldr	ip, [r0, #368]	@ D.41962, pH264Ctx_7(D)->pCurrNal
	add	r2, ip, r2	@ tmp178, D.41962, tmp177
	ldr	r4, [ip, #68]	@ _16->nal_segment, _16->nal_segment
	cmp	r4, r3	@ _16->nal_segment, segment_idx
	bhi	.L2238	@,
	mov	r0, #0	@ D.41961,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2235:
	rsb	r2, r6, r5	@ tmp192, tmp207, tmp208
	mov	r0, #1	@ D.41961,
	add	ip, ip, r2	@ tmp193, D.41962, tmp192
	str	r1, [ip, #24]	@ D.41960, _51->stream[segment_idx_47].bitsoffset
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2242:
	mvn	r0, #0	@ D.41961,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2239:
	mvn	r0, #0	@ D.41961,
	bx	lr	@
	.fnend
	.size	PassBytes, .-PassBytes
	.align	2
	.global	GetBytes
	.type	GetBytes, %function
GetBytes:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pdes
	beq	.L2255	@,
	ldr	r3, [r0, #368]	@ D.41998, pH264Ctx_13(D)->pCurrNal
	cmp	r3, #0	@ D.41998,
	cmpne	r2, #0	@, len,
	ble	.L2255	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r7, [r3]	@ zero_extendqisi2	@ D.41999, _14->nal_used_segment
	mov	ip, r7, asl #5	@ tmp163, D.41999,
	sub	ip, ip, r7, asl #2	@ tmp164, tmp163, D.41999,
	add	ip, r3, ip	@ tmp165, D.41998, tmp164
	ldr	ip, [ip, #8]	@ _14->stream[_17].streamBuffer, _14->stream[_17].streamBuffer
	cmp	ip, #0	@ _14->stream[_17].streamBuffer,
	beq	.L2258	@,
	ldr	ip, [r3, #68]	@ D.42002, _14->nal_segment
	cmp	r7, #1	@ D.41999,
	cmpls	ip, #2	@, D.42002,
	movhi	lr, #1	@ tmp174,
	movls	lr, #0	@ tmp174,
	bhi	.L2258	@,
	cmp	ip, r7	@ D.42002, segment_idx
	bls	.L2258	@,
.L2253:
	mov	r5, r7, asl #5	@ tmp234, segment_idx,
	sub	r5, r5, r7, asl #2	@ tmp178, tmp234, segment_idx,
	add	r3, r3, r5	@ tmp179, D.41998, tmp178
	ldr	r4, [r3, #24]	@ _85->stream[segment_idx_78].bitsoffset, _85->stream[segment_idx_78].bitsoffset
	ldr	r8, [r3, #8]	@ D.42001, _85->stream[segment_idx_78].streamBuffer
	add	r4, r4, #7	@ D.42002, _85->stream[segment_idx_78].bitsoffset,
	ldr	r6, [r3, #12]	@ _85->stream[segment_idx_78].bitstream_length, _85->stream[segment_idx_78].bitstream_length
	add	ip, r8, r4, lsr #3	@ byte_pos, D.42001, D.42002,
	add	r6, r8, r6	@ end_byte, D.42001, _85->stream[segment_idx_78].bitstream_length
	cmp	ip, r6	@ byte_pos, end_byte
	bcs	.L2249	@,
	ldrb	r3, [r8, r4, lsr #3]	@ zero_extendqisi2	@ D.41999, *byte_pos_28
	add	lr, lr, #1	@ cnt, cnt,
	cmp	lr, r2	@ cnt, len
	add	r4, r1, #1	@ pdes, pdes,
	add	ip, ip, #1	@ byte_pos, byte_pos,
	strb	r3, [r1]	@ D.41999, *pdes_77
	b	.L2262	@
.L2251:
	cmp	ip, r6	@ ivtmp.2544, end_byte
	mov	r1, r4	@ pdes, ivtmp.2550
	beq	.L2249	@,
	ldrb	r3, [ip], #1	@ zero_extendqisi2	@ D.41999, MEM[base: _8, offset: 0B]
	add	lr, lr, #1	@ cnt, cnt,
	cmp	lr, r2	@ cnt, len
	strb	r3, [r4], #1	@ D.41999, MEM[base: pdes_86, offset: 0B]
.L2262:
	ldr	r3, [r0, #368]	@ D.41998, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r5	@ tmp202, D.41998, tmp178
	ldr	r1, [r3, #24]	@ _71->stream[segment_idx_78].bitsoffset,
	add	r1, r1, #8	@ D.42002, _71->stream[segment_idx_78].bitsoffset,
	str	r1, [r3, #24]	@ D.42002,
	bcc	.L2251	@,
	mov	r0, r2	@ D.41995, len
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2249:
	ldr	ip, [r0, #368]	@ D.41998, pH264Ctx_13(D)->pCurrNal
	add	r7, r7, #1	@ segment_idx, segment_idx,
	ldrb	r3, [ip]	@ zero_extendqisi2	@ _31->nal_used_segment, _31->nal_used_segment
	add	r3, r3, #1	@ tmp229, _31->nal_used_segment,
	strb	r3, [ip]	@ tmp229, _31->nal_used_segment
	ldr	r3, [r0, #368]	@ D.41998, pH264Ctx_13(D)->pCurrNal
	ldr	ip, [r3, #68]	@ _22->nal_segment, _22->nal_segment
	cmp	ip, r7	@ _22->nal_segment, segment_idx
	bhi	.L2253	@,
	mov	r0, lr	@ D.41995, cnt
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2258:
	mvn	r0, #0	@ D.41995,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2255:
	mvn	r0, #0	@ D.41995,
	bx	lr	@
	.fnend
	.size	GetBytes, .-GetBytes
	.align	2
	.global	H264_DecFramePackingSEI
	.type	H264_DecFramePackingSEI, %function
H264_DecFramePackingSEI:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, .L2271	@,
	add	r4, r5, #24576	@ tmp228, pH264Ctx,
	bl	ue_v	@
	ldr	r2, .L2271+4	@,
	mov	r1, #1	@,
	str	r0, [r4, #1832]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_id
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	uxtb	r0, r0	@ D.42008,
	strb	r0, [r4, #1809]	@ D.42008, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_cancel_flag
	cmp	r0, #0	@ D.42008,
	beq	.L2270	@,
.L2264:
	mov	r0, r5	@, pH264Ctx
	ldr	r2, .L2271+8	@,
	mov	r1, #1	@,
	bl	u_v	@
	mov	r3, #1	@ tmp225,
	strb	r3, [r4, #1808]	@ tmp225, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_dec_ok
	strb	r0, [r4, #1810]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_extension_flag
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2270:
	ldr	r2, .L2271+12	@,
	mov	r1, #7	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+16	@,
	mov	r1, #1	@,
	str	r0, [r4, #1824]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+20	@,
	mov	r1, #6	@,
	strb	r0, [r4, #1811]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+24	@,
	mov	r1, #1	@,
	str	r0, [r4, #1828]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].content_interpretation_type
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+28	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1812]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].spatial_flipping_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+32	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1813]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_flipped_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+36	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1814]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].field_views_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+40	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1815]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].current_frame_is_frame0_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+44	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1816]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_self_contained_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldrb	r3, [r4, #1811]	@ zero_extendqisi2	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag
	cmp	r3, #0	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag,
	strb	r0, [r4, #1817]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_self_contained_flag
	bne	.L2265	@,
	ldr	r3, [r4, #1824]	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type
	cmp	r3, #5	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type,
	beq	.L2265	@,
	ldr	r2, .L2271+48	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+52	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1818]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_grid_position_x
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+56	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1819]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_grid_position_y
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2271+60	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1820]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_grid_position_x
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	strb	r0, [r4, #1821]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_grid_position_y
.L2265:
	ldr	r2, .L2271+64	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r1, .L2271+68	@,
	str	r0, [r4, #1836]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_reserved_byte
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #1840]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_repetition_period
	b	.L2264	@
.L2272:
	.align	2
.L2271:
	.word	.LC269
	.word	.LC270
	.word	.LC286
	.word	.LC271
	.word	.LC272
	.word	.LC273
	.word	.LC274
	.word	.LC275
	.word	.LC276
	.word	.LC277
	.word	.LC278
	.word	.LC279
	.word	.LC280
	.word	.LC281
	.word	.LC282
	.word	.LC283
	.word	.LC284
	.word	.LC285
	.fnend
	.size	H264_DecFramePackingSEI, .-H264_DecFramePackingSEI
	.align	2
	.global	H264_DecPicTimingSEI
	.type	H264_DecPicTimingSEI, %function
H264_DecPicTimingSEI:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #12288	@ tmp141, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, #4000	@ tmp146,
	ldr	r1, [r2, #2044]	@ pH264Ctx_10(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_10(D)->CurrSPS.seq_parameter_set_id
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r2, #1292]	@ pSPS, pH264Ctx_10(D)->SPS
	mla	r4, r4, r1, r3	@ pSPS, tmp146, pH264Ctx_10(D)->CurrSPS.seq_parameter_set_id, pSPS
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ pSPS_15->is_valid, pSPS_15->is_valid
	cmp	r1, #0	@ pSPS_15->is_valid,
	bne	.L2274	@,
	ldr	ip, [r2, #1284]	@ D.42039, pH264Ctx_10(D)->MaxSpsNum
	cmp	ip, #0	@ D.42039,
	ble	.L2275	@,
	ldrb	r2, [r3, #23]	@ zero_extendqisi2	@ pSPS_12->is_valid, pSPS_12->is_valid
	cmp	r2, #0	@ pSPS_12->is_valid,
	addeq	r3, r3, #4000	@ ivtmp.2564, pSPS,
	beq	.L2278	@,
	b	.L2298	@
.L2279:
	ldrb	r1, [r3, #-3977]	@ zero_extendqisi2	@ MEM[base: _34, offset: 4294963319B], MEM[base: _34, offset: 4294963319B]
	cmp	r1, #0	@ MEM[base: _34, offset: 4294963319B],
	bne	.L2276	@,
.L2278:
	add	r2, r2, #1	@ i, i,
	mov	r4, r3	@ pSPS, ivtmp.2564
	cmp	r2, ip	@ i, D.42039
	add	r3, r3, #4000	@ ivtmp.2564, ivtmp.2564,
	bne	.L2279	@,
.L2275:
	ldr	r1, .L2300	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.42036,
.L2280:
	mov	r0, r3	@, D.42036
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2298:
	mov	r4, r3	@ pSPS, pSPS
.L2276:
	cmp	r4, #0	@ pSPS,
	beq	.L2275	@,
.L2274:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ pSPS_2->vui_parameters_present_flag, pSPS_2->vui_parameters_present_flag
	cmp	r3, #0	@ pSPS_2->vui_parameters_present_flag,
	beq	.L2281	@,
	ldrb	r3, [r4, #35]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag, pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag
	cmp	r3, #0	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag,
	beq	.L2299	@,
	ldr	r1, [r4, #388]	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1, pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r7, [r4, #392]	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1, pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r1, #1	@ D.42035, pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r7, r7, #1	@ D.42035, pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1,
.L2284:
	ldr	r2, .L2300+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	add	r6, r5, #24576	@ tmp162, pH264Ctx,
	mov	r1, r7	@, D.42035
	ldr	r2, .L2300+8	@,
	str	r0, [r6, #1848]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].cpb_removal_delay
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	str	r0, [r6, #1852]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].dpb_output_delay
.L2281:
	ldrb	r0, [r4, #39]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.pic_struct_present_flag, pSPS_2->vui_seq_parameters.pic_struct_present_flag
	cmp	r0, #0	@ pSPS_2->vui_seq_parameters.pic_struct_present_flag,
	moveq	r3, r0	@ D.42036, pSPS_2->vui_seq_parameters.pic_struct_present_flag
	beq	.L2280	@,
	ldr	r2, .L2300+12	@,
	mov	r1, #4	@,
	mov	r0, r5	@, pH264Ctx
	add	r5, r5, #24576	@ tmp169, pH264Ctx,
	bl	u_v	@
	mov	r3, #0	@ D.42036,
	strb	r0, [r5, #1844]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].pic_struct
	mov	r0, r3	@, D.42036
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2299:
	ldrb	r3, [r4, #38]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag, pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag
	cmp	r3, #0	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag,
	beq	.L2281	@,
	ldr	r1, [r4, #700]	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r7, [r4, #704]	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r1, #1	@ D.42035, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r7, r7, #1	@ D.42035, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1,
	b	.L2284	@
.L2301:
	.align	2
.L2300:
	.word	.LC287
	.word	.LC288
	.word	.LC289
	.word	.LC290
	.fnend
	.size	H264_DecPicTimingSEI, .-H264_DecPicTimingSEI
	.align	2
	.global	H264_DecSEI
	.type	H264_DecSEI, %function
H264_DecSEI:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r2, [r0, #368]	@ D.42127, pH264Ctx_110(D)->pCurrNal
	add	r8, sp, #32	@ tmp1557,,
	mov	r3, #0	@ tmp559,
	add	r6, r0, #13504	@ D.42121, pH264Ctx,
	mov	r1, #32	@ tmp561,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	add	r6, r6, #24	@ D.42121, D.42121,
	add	r4, r0, #12288	@ tmp1554, pH264Ctx,
	mov	r9, r3	@ payloadType, tmp559
	strb	r3, [r8, #-5]!	@ tmp559, byte_tmp
	str	r1, [r2, #24]	@ tmp561, _111->stream[0].bitsoffset
	b	.L2305	@
.L2544:
	bl	BsSkip	@
	cmp	r5, #0	@ ret,
	ble	.L2304	@,
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	r3, #255	@ byte_tmp,
	bne	.L2543	@,
.L2305:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1557
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	ldrb	r2, [sp, #27]	@ zero_extendqisi2	@ D.42125, byte_tmp
	cmp	r3, ip, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	add	r9, r9, r2	@ payloadType, payloadType, D.42125
	mov	r5, r0	@ ret,
	mov	r0, r6	@, D.42121
	ble	.L2544	@,
.L2304:
	ldr	r1, .L2577	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42120,
	b	.L2307	@
.L2543:
	mov	r3, #0	@ registered_flag,
	str	r3, [sp, #12]	@ registered_flag, %sfp
.L2490:
	mov	r5, #0	@ payloadSize,
	b	.L2311	@
.L2546:
	bl	BsSkip	@
	cmp	r10, #0	@ ret,
	ble	.L2309	@,
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	r3, #255	@ byte_tmp,
	bne	.L2545	@,
.L2311:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1557
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	ldrb	r2, [sp, #27]	@ zero_extendqisi2	@ D.42125, byte_tmp
	cmp	r3, ip, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	add	r5, r5, r2	@ payloadSize, payloadSize, D.42125
	mov	r10, r0	@ ret,
	mov	r0, r6	@, D.42121
	ble	.L2546	@,
.L2309:
	ldr	r1, .L2577+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42120,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2545:
	cmp	r5, #409600	@ payloadSize,
	bgt	.L2309	@,
	ldr	r3, [r7, #368]	@ D.42127, pH264Ctx_110(D)->pCurrNal
	ldr	r2, [r3, #68]	@ _141->nal_segment, _141->nal_segment
	cmp	r2, #2	@ _141->nal_segment,
	ldreq	r2, [r3, #52]	@ _141->stream[1].bitsoffset, _141->stream[1].bitsoffset
	ldreq	r3, [r3, #24]	@ _141->stream[0].bitsoffset, _141->stream[0].bitsoffset
	ldrne	r2, [r3, #24]	@ TotalBitOffset, _141->stream[0].bitsoffset
	addeq	r2, r2, r3	@ D.42130, _141->stream[1].bitsoffset, _141->stream[0].bitsoffset
	moveq	r2, r2, lsr #3	@ TotalBitOffset, D.42130,
	cmp	r9, #45	@ payloadType,
	ldrls	pc, [pc, r9, asl #2]	@ payloadType
	b	.L2314	@
.L2316:
	.word	.L2315
	.word	.L2317
	.word	.L2318
	.word	.L2319
	.word	.L2320
	.word	.L2321
	.word	.L2322
	.word	.L2323
	.word	.L2324
	.word	.L2325
	.word	.L2326
	.word	.L2327
	.word	.L2328
	.word	.L2329
	.word	.L2330
	.word	.L2331
	.word	.L2332
	.word	.L2333
	.word	.L2334
	.word	.L2335
	.word	.L2336
	.word	.L2337
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2314
	.word	.L2338
.L2338:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	ldr	r9, [r4, #1264]	@ bitpos, pH264Ctx_110(D)->BS.TotalPos
	bl	H264_DecFramePackingSEI	@
	ldr	r2, [r4, #1264]	@ D.42120, pH264Ctx_110(D)->BS.TotalPos
	mov	r10, r5, asl #3	@ D.42122, payloadSize,
	rsb	r3, r9, r2	@ bitpos, bitpos, D.42120
	cmp	r3, r10	@ bitpos, D.42122
	bge	.L2470	@,
	rsb	r10, r3, r10	@ D.42122, bitpos, D.42122
	ldr	r3, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	cmp	r10, #0	@ D.42122,
	add	r9, r10, #7	@ tmp1471, D.42122,
	movge	r9, r10	@ D.42122, D.42122
	mov	r9, r9, asr #3	@ D.42122, D.42122,
	cmp	r9, #0	@ D.42122,
	movle	r3, r3, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	ble	.L2472	@,
	add	r1, r2, #8	@ D.42122, D.42120,
	mov	r3, r3, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	cmp	r1, r3	@ D.42122, D.42122
	bgt	.L2472	@,
	mov	fp, #0	@ i,
	b	.L2473	@
.L2474:
	add	r1, r2, #8	@ D.42122, D.42120,
	cmp	r1, r3	@ D.42122, D.42122
	bgt	.L2472	@,
.L2473:
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	add	fp, fp, #1	@ i, i,
	ldr	r3, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	cmp	fp, r9	@ i, D.42122
	ldr	r2, [r4, #1264]	@ D.42120, pH264Ctx_110(D)->BS.TotalPos
	mov	r3, r3, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bne	.L2474	@,
.L2472:
	mov	r1, r10, asr #31	@ tmp1492, D.42122,
	mov	r0, r1, lsr #29	@ tmp1493, tmp1492,
	add	r1, r10, r0	@ tmp1494, D.42122, tmp1493
	and	r1, r1, #7	@ tmp1495, tmp1494,
	rsb	r1, r0, r1	@ tmp1496, tmp1493, tmp1495
	add	r2, r2, r1	@ D.42122, D.42120, tmp1496
	cmp	r3, r2	@ D.42122, D.42122
	bge	.L2547	@,
.L2470:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	cmp	r0, #0	@ ret
	blt	.L2548	@,
.L2540:
	ldr	r3, [fp, #2192]	@ D.42123, pH264Ctx_110(D)->TotalUsrDatNum
.L2341:
	cmp	r3, #3	@ D.42123,
	bhi	.L2549	@,
.L2482:
	mov	r9, #0	@ payloadType,
	b	.L2489	@
.L2487:
	bl	BsSkip	@
	cmp	r5, #0	@ ret,
	ble	.L2488	@,
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ D.42125, byte_tmp
	cmp	r3, #255	@ D.42125,
	bne	.L2550	@,
.L2489:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1557
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	ldrb	r2, [sp, #27]	@ zero_extendqisi2	@ D.42125, byte_tmp
	cmp	r3, ip, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	add	r9, r9, r2	@ payloadType, payloadType, D.42125
	mov	r5, r0	@ ret,
	mov	r0, r6	@, D.42121
	ble	.L2487	@,
.L2488:
	mov	r0, #0	@ D.42120,
.L2307:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2337:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+8	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2551	@,
.L2464:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2467	@
.L2468:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2467:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2468	@,
.L2538:
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2336:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+12	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2552	@,
.L2459:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2462	@
.L2463:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2462:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2463	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2335:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+16	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2553	@,
.L2454:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2457	@
.L2458:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2457:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2458	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2333:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+20	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2554	@,
.L2444:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2447	@
.L2448:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2447:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2448	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2334:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+24	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2555	@,
.L2449:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2452	@
.L2453:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2452:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2453	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2332:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+28	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2556	@,
.L2439:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2442	@
.L2443:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2442:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2443	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2331:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+32	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2557	@,
.L2434:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2437	@
.L2438:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2437:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2438	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2323:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+36	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2558	@,
.L2394:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2397	@
.L2398:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2397:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2398	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2327:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+40	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2559	@,
.L2414:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2417	@
.L2418:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2417:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2418	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2318:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+44	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2560	@,
.L2353:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2356	@
.L2357:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2356:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2357	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2329:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+48	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2561	@,
.L2424:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2427	@
.L2428:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2427:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2428	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2321:
	ldr	r3, [sp, #12]	@ registered_flag, %sfp
	cmp	r3, #0	@ registered_flag,
	bne	.L2320	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+52	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	ldr	r9, [fp, #2192]	@ D.42130, pH264Ctx_110(D)->TotalUsrDatNum
	cmp	r9, #3	@ D.42130,
	bhi	.L2562	@,
.L2365:
	ldr	r0, [fp, #3688]	@, pH264Ctx_110(D)->ChanID
	bl	GetUsd	@
	add	r3, r9, #12800	@ tmp776, D.42130,
	add	r3, r3, #36	@ tmp776, tmp776,
	add	r3, r7, r3, lsl #2	@ tmp777, pH264Ctx, tmp776,
	str	r0, [r3, #4]	@, pH264Ctx_110(D)->pUsrDatArray
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp780, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp780, tmp780,
	add	r3, r7, r3, lsl #2	@ tmp784, pH264Ctx, tmp780,
	ldr	r1, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	cmp	r1, #0	@ D.42132,
	beq	.L2485	@,
	ldr	r2, [r7, #368]	@ D.42127, pH264Ctx_110(D)->pCurrNal
	cmp	r5, #1024	@ payloadSize,
	movlt	r10, r5	@ D.42122, payloadSize
	movge	r10, #1024	@ D.42122,
	ldrb	ip, [r2]	@ zero_extendqisi2	@ segment_idx, _240->nal_used_segment
	ldr	lr, [r2, #68]	@ D.42130, _240->nal_segment
	cmp	ip, lr	@ segment_idx, D.42130
	bcs	.L2493	@,
	sxth	r3, ip	@ D.42125, segment_idx
	mov	r9, #0	@ min_len_tmp,
	mov	r0, r3, asl #5	@ tmp789, D.42125,
	sub	r0, r0, r3, asl #2	@ D.42129, tmp789, D.42125,
	add	r0, r2, r0	@ ivtmp.2603, D.42127, D.42129
.L2368:
	ldr	r3, [r0, #24]	@ MEM[base: _615, offset: 24B], MEM[base: _615, offset: 24B]
	add	ip, ip, #1	@ segment_idx, segment_idx,
	ldr	r2, [r0, #12]	@ MEM[base: _615, offset: 12B], MEM[base: _615, offset: 12B]
	cmp	ip, lr	@ segment_idx, D.42130
	add	r3, r3, #7	@ D.42130, MEM[base: _615, offset: 24B],
	add	r0, r0, #28	@ ivtmp.2603, ivtmp.2603,
	sub	r3, r2, r3, lsr #3	@ D.42130, MEM[base: _615, offset: 12B], D.42130,
	add	r9, r9, r3	@ min_len_tmp, min_len_tmp, D.42130
	bne	.L2368	@,
	mov	r2, r9	@ D.42122, min_len_tmp
.L2367:
	cmp	r10, r2	@ D.42122, D.42122
	ldrsb	r3, [sp, #12]	@ registered_flag, %sfp
	movle	r9, r10	@ min_len_tmp, D.42122
	cmp	r3, #1	@ registered_flag,
	movne	ip, #0	@ D.42130,
	strne	ip, [sp, #8]	@ D.42130, %sfp
	beq	.L2563	@,
.L2370:
	rsb	r2, ip, r9	@, D.42130, min_len_tmp
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	subs	r9, r0, #0	@ ret,
	ble	.L2564	@,
	ldr	r3, [sp, #8]	@ used_byte, %sfp
	rsb	r3, r3, r10	@ D.42122, used_byte, D.42122
	cmp	r9, r3	@ ret, D.42122
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	blt	.L2565	@,
	add	r3, r3, #12800	@ tmp962, pH264Ctx_110(D)->TotalUsrDatNum,
	ldr	r2, [sp, #8]	@ used_byte, %sfp
	add	r3, r3, #36	@ tmp962, tmp962,
	cmp	r10, r5	@ D.42122, payloadSize
	rsb	r9, r2, r5	@ D.42122, used_byte, payloadSize
	add	r3, r7, r3, lsl #2	@ tmp966, pH264Ctx, tmp962,
	ldr	r3, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	str	r9, [r3, #1048]	@ D.42122, _322->data_size
	bcc	.L2566	@,
.L2384:
	cmp	r9, #0	@ D.42122,
	ble	.L2378	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2378	@,
	mov	r5, #0	@ i,
	b	.L2386	@
.L2387:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2378	@,
.L2386:
	add	r5, r5, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ i, D.42122
	bne	.L2387	@,
.L2378:
	ldr	r1, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	mov	r0, #8	@ tmp942,
	ldr	r3, [r7]	@ pH264Ctx_110(D)->pstExtraData, pH264Ctx_110(D)->pstExtraData
	add	r1, r1, #12800	@ tmp926, pH264Ctx_110(D)->TotalUsrDatNum,
	ldr	ip, .L2577+56	@ tmp952,
	add	r1, r1, #36	@ tmp926, tmp926,
	ldrd	r2, [r3, #56]	@ D.42135, pH264Ctx_110(D)->pstExtraData,
	add	r1, r7, r1, lsl #2	@ tmp930, pH264Ctx, tmp926,
	ldr	ip, [ip]	@ D.42136, g_event_report
	ldr	r1, [r1, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	cmp	ip, #0	@ D.42136,
	add	r1, r1, #1056	@ tmp934, D.42132,
	strd	r2, [r1]	@ D.42135,
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp936, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp936, tmp936,
	add	r3, r7, r3, lsl #2	@ tmp940, pH264Ctx, tmp936,
	ldr	r3, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	str	r0, [r3, #1036]	@ tmp942,
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	ldr	r2, [fp, #3648]	@ D.42130, pH264Ctx_110(D)->SeqCnt
	add	r3, r3, #12800	@ tmp944, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp944, tmp944,
	add	r3, r7, r3, lsl #2	@ tmp948, pH264Ctx, tmp944,
	ldr	r3, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	str	r2, [r3, #1040]	@ D.42130,
	beq	.L2381	@,
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	add	r2, sp, #32	@ tmp997,,
	ldr	r0, [fp, #3688]	@, pH264Ctx_110(D)->ChanID
	mov	r1, #6	@,
	add	r3, r3, #12800	@ tmp990, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp990, tmp990,
	add	r3, r7, r3, lsl #2	@ tmp994, pH264Ctx, tmp990,
	ldr	r3, [r3, #4]	@ tmp996, pH264Ctx_110(D)->pUsrDatArray
	str	r3, [r2, #-4]!	@ tmp996,
	blx	ip	@ D.42136
.L2381:
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	add	r3, r3, #1	@ D.42123, pH264Ctx_110(D)->TotalUsrDatNum,
	str	r3, [fp, #2192]	@ D.42123, pH264Ctx_110(D)->TotalUsrDatNum
	cmp	r3, #3	@ D.42123,
	bls	.L2482	@,
.L2549:
	ldr	r1, .L2577+60	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	add	r4, r7, #51200	@ ivtmp.2576, pH264Ctx,
	mov	r5, #0	@ tmp1558,
	mov	r7, r4	@ D.42128, ivtmp.2576
	add	r4, r4, #144	@ ivtmp.2576, ivtmp.2576,
	add	r7, r7, #160	@ D.42128, D.42128,
.L2484:
	ldr	r1, [r4, #4]!	@ D.42132, MEM[base: _789, offset: 0B]
	cmp	r1, #0	@ D.42132,
	beq	.L2483	@,
	ldr	r0, [fp, #3688]	@, pH264Ctx_110(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4]	@ tmp1558, MEM[base: _789, offset: 0B]
.L2483:
	cmp	r4, r7	@ ivtmp.2576, D.42128
	bne	.L2484	@,
.L2485:
	mvn	r0, #0	@ D.42120,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2325:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+64	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2567	@,
.L2404:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2407	@
.L2408:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2407:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2408	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2324:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+68	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2568	@,
.L2399:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2402	@
.L2403:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2402:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2403	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2326:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+72	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2569	@,
.L2409:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2412	@
.L2413:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2412:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2413	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2315:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+76	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2570	@,
.L2339:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2343	@
.L2344:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2343:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2344	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2330:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+80	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2571	@,
.L2429:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2432	@
.L2433:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2432:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2433	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2322:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+84	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2391	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2391	@,
	mov	r9, #0	@ i,
	b	.L2392	@
.L2393:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2391	@,
.L2392:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2393	@,
.L2391:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	bge	.L2538	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	movw	r3, #10894	@,
	str	r0, [sp]	@ ret,
.L2539:
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #2192]	@ D.42123, pH264Ctx_110(D)->TotalUsrDatNum
	b	.L2341	@
.L2328:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+88	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2572	@,
.L2419:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2422	@
.L2423:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2422:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2423	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2317:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+92	@,
	mov	r0, #20	@,
	mov	r10, r5, asl #3	@ D.42122, payloadSize,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	ldr	r9, [r4, #1264]	@ bitpos, pH264Ctx_110(D)->BS.TotalPos
	bl	H264_DecPicTimingSEI	@
	ldr	r2, [r4, #1264]	@ D.42122, pH264Ctx_110(D)->BS.TotalPos
	rsb	r3, r9, r2	@ bitpos, bitpos, D.42122
	cmp	r3, r10	@ bitpos, D.42122
	bge	.L2346	@,
	rsb	r10, r3, r10	@ D.42122, bitpos, D.42122
	ldr	r3, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	cmp	r10, #0	@ D.42122,
	add	r9, r10, #7	@ tmp634, D.42122,
	movge	r9, r10	@ D.42122, D.42122
	mov	r9, r9, asr #3	@ D.42122, D.42122,
	cmp	r9, #0	@ D.42122,
	movle	r3, r3, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	ble	.L2348	@,
	add	r1, r2, #8	@ D.42122, D.42122,
	mov	r3, r3, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	cmp	r1, r3	@ D.42122, D.42122
	bgt	.L2348	@,
	mov	fp, #0	@ i,
	b	.L2349	@
.L2350:
	add	r1, r2, #8	@ D.42122, D.42122,
	cmp	r1, r3	@ D.42122, D.42122
	bgt	.L2348	@,
.L2349:
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	add	fp, fp, #1	@ i, i,
	ldr	r3, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	cmp	fp, r9	@ i, D.42122
	ldr	r2, [r4, #1264]	@ D.42122, pH264Ctx_110(D)->BS.TotalPos
	mov	r3, r3, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bne	.L2350	@,
.L2348:
	mov	r1, r10, asr #31	@ tmp655, D.42122,
	mov	r0, r1, lsr #29	@ tmp656, tmp655,
	add	r1, r10, r0	@ tmp657, D.42122, tmp656
	and	r1, r1, #7	@ tmp658, tmp657,
	rsb	r1, r0, r1	@ tmp659, tmp656, tmp658
	add	r2, r1, r2	@ D.42122, tmp659, D.42122
	cmp	r2, r3	@ D.42122, D.42122
	ble	.L2573	@,
.L2346:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	cmp	r0, #0	@ ret
	bge	.L2540	@,
	str	r0, [sp]	@ ret,
	movw	r3, #10647	@,
	b	.L2539	@
.L2319:
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+96	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2574	@,
.L2358:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2361	@
.L2362:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2361:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2362	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2314:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	blt	.L2575	@,
.L2477:
	cmp	r5, #0	@ payloadSize,
	ble	.L2538	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
	mov	r9, #0	@ i,
	b	.L2480	@
.L2481:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2538	@,
.L2480:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2481	@,
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	b	.L2540	@
.L2550:
	cmp	r3, #128	@ D.42125,
	bne	.L2490	@,
	b	.L2488	@
.L2578:
	.align	2
.L2577:
	.word	.LC291
	.word	.LC292
	.word	.LC319
	.word	.LC318
	.word	.LC317
	.word	.LC315
	.word	.LC316
	.word	.LC314
	.word	.LC313
	.word	.LC305
	.word	.LC309
	.word	.LC296
	.word	.LC311
	.word	.LC299
	.word	g_event_report
	.word	.LC320
	.word	.LC307
	.word	.LC306
	.word	.LC308
	.word	.LC293
	.word	.LC312
	.word	.LC304
	.word	.LC310
	.word	.LC295
	.word	.LC297
	.word	.LC298
	.word	.LC300
	.word	.LC302
	.word	.LANCHOR0+240
	.word	.LC294
	.word	.LC301
	.word	.LC303
.L2320:
	add	fp, r7, #49152	@ tmp1555, pH264Ctx,
	mov	r3, r5	@, payloadSize
	ldr	r1, .L2577+100	@,
	mov	r0, #20	@,
	bl	dprint_vfmw	@
	ldr	r9, [fp, #2192]	@ D.42130, pH264Ctx_110(D)->TotalUsrDatNum
	mov	r3, #1	@ registered_flag,
	str	r3, [sp, #12]	@ registered_flag, %sfp
	cmp	r9, #3	@ D.42130,
	bls	.L2365	@,
.L2562:
	ldr	r1, [fp, #2196]	@, pH264Ctx_110(D)->pUsrDatArray
	ldr	r0, [fp, #3688]	@, pH264Ctx_110(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [fp, #2200]	@, pH264Ctx_110(D)->pUsrDatArray
	ldr	r0, [fp, #3688]	@, pH264Ctx_110(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [fp, #2204]	@, pH264Ctx_110(D)->pUsrDatArray
	ldr	r0, [fp, #3688]	@, pH264Ctx_110(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [fp, #2208]	@, pH264Ctx_110(D)->pUsrDatArray
	ldr	r0, [fp, #3688]	@, pH264Ctx_110(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp759,
	mov	r9, r3	@ D.42130, tmp759
	str	r3, [fp, #2196]	@ tmp759, pH264Ctx_110(D)->pUsrDatArray
	str	r3, [fp, #2200]	@ tmp759, pH264Ctx_110(D)->pUsrDatArray
	str	r3, [fp, #2204]	@ tmp759, pH264Ctx_110(D)->pUsrDatArray
	str	r3, [fp, #2208]	@ tmp759, pH264Ctx_110(D)->pUsrDatArray
	str	r3, [fp, #2192]	@ tmp759, pH264Ctx_110(D)->TotalUsrDatNum
	b	.L2365	@
.L2565:
	add	r3, r3, #12800	@ tmp910, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp910, tmp910,
	add	r3, r7, r3, lsl #2	@ tmp914, pH264Ctx, tmp910,
	ldr	r3, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	str	r9, [r3, #1048]	@ ret, _312->data_size
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2378	@,
	mov	r5, #0	@ i,
	b	.L2379	@
.L2382:
	ldr	r3, [r4, #1264]	@ pH264Ctx_110(D)->BS.TotalPos, pH264Ctx_110(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_110(D)->BS.BsLen, pH264Ctx_110(D)->BS.BsLen
	add	r3, r3, #8	@ D.42122, pH264Ctx_110(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.42122, pH264Ctx_110(D)->BS.BsLen,
	bgt	.L2378	@,
.L2379:
	add	r5, r5, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	cmp	r5, r9	@ i, ret
	bne	.L2382	@,
	b	.L2378	@
.L2563:
	strb	r3, [r1, #1064]	@ registered_flag, _237->IsRegistered
	mov	r0, r7	@, pH264Ctx
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	mov	r1, #8	@,
	ldr	r2, .L2577+104	@,
	add	r3, r3, #12800	@ tmp800, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp800, tmp800,
	add	r3, r7, r3, lsl #2	@ tmp804, pH264Ctx, tmp800,
	ldr	r3, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	str	r3, [sp, #8]	@ D.42132, %sfp
	bl	u_v	@
	ldr	r3, [sp, #8]	@ D.42132, %sfp
	strb	r0, [r3, #1065]	@, _255->itu_t_t35_country_code
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp809, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp809, tmp809,
	add	r3, r7, r3, lsl #2	@ tmp813, pH264Ctx, tmp809,
	ldr	r3, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	ldrb	r2, [r3, #1065]	@ zero_extendqisi2	@ _261->itu_t_t35_country_code, _261->itu_t_t35_country_code
	cmp	r2, #255	@ _261->itu_t_t35_country_code,
	beq	.L2371	@,
	mov	ip, #3	@ D.42130,
	mov	r2, #0	@ tmp816,
	str	ip, [sp, #8]	@ D.42130, %sfp
	strb	r2, [r3, #1066]	@ tmp816, _261->itu_t_t35_country_code_extension_byte
.L2372:
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	mov	r1, #16	@,
	ldr	r2, .L2577+108	@,
	mov	r0, r7	@, pH264Ctx
	add	r3, r3, #12800	@ tmp821, pH264Ctx_110(D)->TotalUsrDatNum,
	str	ip, [sp, #16]	@ D.42130, %sfp
	add	r3, r3, #36	@ tmp821, tmp821,
	add	r3, r7, r3, lsl #2	@ tmp825, pH264Ctx, tmp821,
	ldr	r3, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	str	r3, [sp, #20]	@ D.42132, %sfp
	bl	u_v	@
	ldr	r3, [sp, #20]	@ D.42132, %sfp
	ldr	ip, [sp, #16]	@ D.42130, %sfp
	add	r3, r3, #1056	@ tmp831, D.42132,
	mov	r1, ip	@, D.42130
	strh	r0, [r3, #12]	@ movhi	@, _269->itu_t_t35_provider_code
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	ldr	ip, [sp, #16]	@ D.42130, %sfp
	cmp	r0, #0	@ ret
	blt	.L2576	@,
.L2373:
	cmp	r9, ip	@ min_len_tmp, D.42130
	beq	.L2378	@,
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp836, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp836, tmp836,
	add	r3, r7, r3, lsl #2	@ tmp840, pH264Ctx, tmp836,
	ldr	r1, [r3, #4]	@ D.42132, pH264Ctx_110(D)->pUsrDatArray
	b	.L2370	@
.L2557:
	str	r0, [sp]	@ ret,
	movw	r3, #11114	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2434	@
.L2558:
	str	r0, [sp]	@ ret,
	movw	r3, #10906	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2394	@
.L2559:
	str	r0, [sp]	@ ret,
	movw	r3, #11010	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2414	@
.L2560:
	str	r0, [sp]	@ ret,
	movw	r3, #10659	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2353	@
.L2561:
	str	r0, [sp]	@ ret,
	movw	r3, #11062	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2424	@
.L2553:
	str	r0, [sp]	@ ret,
	movw	r3, #11218	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2454	@
.L2554:
	str	r0, [sp]	@ ret,
	movw	r3, #11166	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2444	@
.L2555:
	str	r0, [sp]	@ ret,
	movw	r3, #11192	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2449	@
.L2556:
	str	r0, [sp]	@ ret,
	movw	r3, #11140	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2439	@
.L2551:
	str	r0, [sp]	@ ret,
	movw	r3, #11270	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2464	@
.L2552:
	str	r0, [sp]	@ ret,
	movw	r3, #11244	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2459	@
.L2572:
	str	r0, [sp]	@ ret,
	movw	r3, #11036	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2419	@
.L2575:
	str	r0, [sp]	@ ret,
	movw	r3, #11334	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2477	@
.L2548:
	str	r0, [sp]	@ ret,
	movw	r3, #11322	@,
	b	.L2539	@
.L2571:
	str	r0, [sp]	@ ret,
	movw	r3, #11088	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2429	@
.L2574:
	str	r0, [sp]	@ ret,
	movw	r3, #10685	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2358	@
.L2567:
	str	r0, [sp]	@ ret,
	movw	r3, #10958	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2404	@
.L2568:
	str	r0, [sp]	@ ret,
	movw	r3, #10932	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2399	@
.L2569:
	str	r0, [sp]	@ ret,
	movw	r3, #10984	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2409	@
.L2570:
	str	r0, [sp]	@ ret,
	movw	r3, #10594	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2339	@
.L2573:
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	b	.L2346	@
.L2547:
	mov	r0, r6	@, D.42121
	bl	BsSkip	@
	b	.L2470	@
.L2566:
	rsb	r1, r10, r5	@, D.42122, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@ ret
	bge	.L2384	@,
	str	r0, [sp]	@ ret,
	movw	r3, #10841	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	b	.L2384	@
.L2493:
	mov	r2, #0	@ D.42122,
	mov	r9, r2	@ min_len_tmp, D.42122
	b	.L2367	@
.L2576:
	str	r0, [sp]	@ ret,
	movw	r3, #10783	@,
	ldr	r2, .L2577+112	@,
	mov	r0, #22	@,
	ldr	r1, .L2577+116	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #16]	@ D.42130, %sfp
	b	.L2373	@
.L2371:
	ldr	r2, .L2577+120	@,
	mov	r1, #8	@,
	mov	r0, r7	@, pH264Ctx
	mov	ip, #4	@ D.42130,
	str	r3, [sp, #16]	@ D.42132, %sfp
	str	ip, [sp, #8]	@ D.42130, %sfp
	bl	u_v	@
	ldr	r3, [sp, #16]	@ D.42132, %sfp
	ldr	ip, [sp, #8]	@ D.42130, %sfp
	strb	r0, [r3, #1066]	@, _261->itu_t_t35_country_code_extension_byte
	b	.L2372	@
.L2564:
	ldr	r1, .L2577+124	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	ldr	r0, [fp, #3688]	@, pH264Ctx_110(D)->ChanID
	add	r3, r3, #12800	@ tmp890, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp890, tmp890,
	add	r3, r7, r3, lsl #2	@ tmp894, pH264Ctx, tmp890,
	ldr	r1, [r3, #4]	@, pH264Ctx_110(D)->pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r3, [fp, #2192]	@ pH264Ctx_110(D)->TotalUsrDatNum, pH264Ctx_110(D)->TotalUsrDatNum
	mov	r2, #0	@ tmp907,
	mvn	r0, #0	@ D.42120,
	add	r3, r3, #12800	@ tmp901, pH264Ctx_110(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp901, tmp901,
	add	r3, r7, r3, lsl #2	@ tmp905, pH264Ctx, tmp901,
	str	r2, [r3, #4]	@ tmp907, pH264Ctx_110(D)->pUsrDatArray
	b	.L2307	@
	.fnend
	.size	H264_DecSEI, .-H264_DecSEI
	.align	2
	.global	InitOldSlice
	.type	InitOldSlice, %function
InitOldSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #12288	@ tmp116, pH264Ctx,
	add	r0, r0, #20480	@ tmp114, pH264Ctx,
	movw	r3, #23352	@ tmp120,
	ldr	r1, [r2, #1288]	@ pH264Ctx_2(D)->MaxPpsNum, pH264Ctx_2(D)->MaxPpsNum
	movt	r3, 1	@ tmp120,
	mov	r2, #2	@ tmp127,
	str	r3, [r0, #1864]	@ tmp120, pH264Ctx_2(D)->PrevSlice.frame_num
	strb	r2, [r0, #1849]	@ tmp127, pH264Ctx_2(D)->PrevSlice.bottom_field_flag
	mov	r3, #32	@ tmp134,
	mov	r2, #7	@ tmp131,
	strb	r3, [r0, #1850]	@ tmp134, pH264Ctx_2(D)->PrevSlice.nal_unit_type
	str	r2, [r0, #1860]	@ tmp131, pH264Ctx_2(D)->PrevSlice.nal_ref_idc
	mvn	r3, #0	@ tmp141,
	mov	r2, #3	@ tmp138,
	str	r3, [r0, #1876]	@ tmp141, pH264Ctx_2(D)->PrevSlice.delta_pic_oder_cnt_bottom
	str	r2, [r0, #1872]	@ tmp138, pH264Ctx_2(D)->PrevSlice.pic_oder_cnt_lsb
	mov	r3, #0	@ tmp123,
	mov	r2, #262144	@ tmp150,
	str	r1, [r0, #1856]	@ pH264Ctx_2(D)->MaxPpsNum, pH264Ctx_2(D)->PrevSlice.pic_parameter_set_id
	str	r2, [r0, #1888]	@ tmp150, pH264Ctx_2(D)->PrevSlice.first_mb_in_slice
	strb	r3, [r0, #1848]	@ tmp123, pH264Ctx_2(D)->PrevSlice.field_pic_flag
	str	r3, [r0, #1880]	@ tmp123, pH264Ctx_2(D)->PrevSlice.delta_pic_order_cnt
	str	r3, [r0, #1884]	@ tmp123, pH264Ctx_2(D)->PrevSlice.delta_pic_order_cnt
	bx	lr	@
	.fnend
	.size	InitOldSlice, .-InitOldSlice
	.align	2
	.global	H264_IsNewPicNal
	.type	H264_IsNewPicNal, %function
H264_IsNewPicNal:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pu8_6(D) + 3B], MEM[(HI_U8 *)pu8_6(D) + 3B]
	and	r3, r3, #31	@ tmp144, MEM[(HI_U8 *)pu8_6(D) + 3B],
	sub	r3, r3, #1	@ tmp145, tmp144,
	cmp	r3, #7	@ tmp145,
	ldrls	pc, [pc, r3, asl #2]	@ tmp145
	b	.L2588	@
.L2583:
	.word	.L2582
	.word	.L2588
	.word	.L2588
	.word	.L2588
	.word	.L2582
	.word	.L2588
	.word	.L2584
	.word	.L2584
.L2584:
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	mov	r2, #1	@ tmp165,
	str	r2, [r0]	@ tmp165, *pNewPicDetector_10(D)
	adds	r0, r3, #0	@ D.42182, *pNewPicDetector_10(D),
	movne	r0, #1	@ D.42182,
	rsb	r0, r0, #0	@ ret, D.42182
	bx	lr	@
.L2582:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pNewPicDetector, pNewPicDetector
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r3, #0	@ *pNewPicDetector_10(D),
	beq	.L2585	@,
.L2587:
	mvn	r0, #0	@ ret,
.L2586:
	mov	r3, #0	@ tmp161,
	str	r3, [r5]	@ tmp161, *pNewPicDetector_10(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2588:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L2585:
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ D.42179, MEM[(HI_U8 *)pu8_6(D) + 5B]
	ldrb	r0, [r1, #6]	@ zero_extendqisi2	@ D.42179, MEM[(HI_U8 *)pu8_6(D) + 6B]
	ldrb	r2, [r1, #7]	@ zero_extendqisi2	@ D.42179, MEM[(HI_U8 *)pu8_6(D) + 7B]
	ldrb	r4, [r1, #4]	@ zero_extendqisi2	@ D.42179, MEM[(HI_U8 *)pu8_6(D) + 4B]
	mov	r3, r3, asl #16	@ D.42179, D.42179,
	orr	r3, r3, r0, asl #8	@ D.42179, D.42179, D.42179,
	orr	r3, r3, r2	@ D.42179, D.42179, D.42179
	orr	r4, r3, r4, asl #24	@ tmpbits, D.42179, D.42179,
	mov	r0, r4	@, tmpbits
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	bhi	.L2587	@,
	mov	r0, r0, asl #1	@ D.42179, zeros,
	rsb	r0, r0, #31	@ D.42179, D.42179,
	mov	r4, r4, lsr r0	@ D.42179, tmpbits,
	subs	r0, r4, #1	@ ret, D.42179,
	mvnne	r0, #0	@ ret,
	b	.L2586	@
	.fnend
	.size	H264_IsNewPicNal, .-H264_IsNewPicNal
	.align	2
	.global	FindZeroBitsInSeg
	.type	FindZeroBitsInSeg, %function
FindZeroBitsInSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ len,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r1, #63	@ tmp142, len,
	movge	r6, r1	@ len, len
	ands	r3, r1, #63	@ D.42212, len,
	mov	r9, r1	@ len, len
	mov	r7, r0	@ ptr, ptr
	movne	r3, #1	@ D.42212,
	add	r6, r3, r6, asr #6	@ r, D.42212, len,
	cmp	r6, #0	@ r,
	ble	.L2603	@,
	ldr	r5, .L2612	@ tmp179,
	mov	fp, r1	@ ivtmp.2668, len
	mov	r4, #0	@ zero_byte,
	mov	r8, r5	@ tmp180, tmp179
.L2601:
	cmp	fp, #64	@ ivtmp.2668,
	ldr	r0, .L2612	@,
	movcc	r10, fp	@ ThisRoundSize, ivtmp.2668
	movcs	r10, #64	@ ThisRoundSize,
	mov	r2, r10	@, ThisRoundSize
	rsb	r1, r10, fp	@ D.42213, ThisRoundSize, ivtmp.2668
	sub	r10, r10, #1	@ D.42213, ThisRoundSize,
	add	r1, r7, r1	@, ptr, D.42213
	bl	memcpy	@
	add	r3, r5, r10	@ pLastByte, tmp179, D.42213
	ldrb	r2, [r5, r10]	@ zero_extendqisi2	@ *pLastByte_31, *pLastByte_31
	cmp	r2, #0	@ *pLastByte_31,
	bne	.L2593	@,
	cmp	r3, r8	@ pLastByte, tmp180
	add	r4, r4, #1	@ zero_byte, zero_byte,
	bne	.L2596	@,
	b	.L2594	@
.L2597:
	cmp	r3, r5	@ pLastByte, tmp179
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L2594	@,
.L2596:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2	@ MEM[base: pLastByte_34, offset: 0B], MEM[base: pLastByte_34, offset: 0B]
	cmp	r2, #0	@ MEM[base: pLastByte_34, offset: 0B],
	beq	.L2597	@,
.L2593:
	mov	r0, r4, asl #3	@ D.42210, zero_byte,
.L2592:
	cmp	r4, r9	@ zero_byte, len
	bge	.L2605	@,
	sub	r9, r9, #1	@ tmp169, len,
	rsb	r4, r4, r9	@ D.42213, zero_byte, tmp169
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@ Byte, *_40
	tst	r2, #1	@ Byte,
	moveq	r2, r2, lsr #1	@ Byte, Byte,
	moveq	r3, #1	@ zero_bit,
	bne	.L2605	@,
.L2600:
	tst	r2, #1	@ Byte,
	mov	r2, r2, lsr #1	@ Byte, Byte,
	bne	.L2598	@,
	add	r3, r3, #1	@ zero_bit, zero_bit,
	cmp	r3, #8	@ zero_bit,
	bne	.L2600	@,
.L2598:
	add	r0, r3, r0	@ D.42216, zero_bit, D.42210
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2594:
	subs	r6, r6, #1	@ r, r,
	sub	fp, fp, #64	@ ivtmp.2668, ivtmp.2668,
	bne	.L2601	@,
	b	.L2593	@
.L2605:
	mov	r3, #0	@ zero_bit,
	add	r0, r3, r0	@ D.42216, zero_bit, D.42210
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2603:
	mov	r0, #0	@ D.42210,
	mov	r4, r0	@ zero_byte, D.42210
	b	.L2592	@
.L2613:
	.align	2
.L2612:
	.word	.LANCHOR3-1976
	.fnend
	.size	FindZeroBitsInSeg, .-FindZeroBitsInSeg
	.align	2
	.global	FindTrailZeros
	.type	FindTrailZeros, %function
FindTrailZeros:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r0, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	ldr	r2, [r3, #68]	@ _8->nal_segment, _8->nal_segment
	cmp	r2, #1	@ _8->nal_segment,
	bls	.L2619	@,
	ldr	r1, [r3, #40]	@, _8->stream[1].bitstream_length
	ldr	r0, [r3, #36]	@, _8->stream[1].streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	ldr	r2, [r3, #40]	@ _16->stream[1].bitstream_length, _16->stream[1].bitstream_length
	cmp	r0, r2, asl #3	@ zero_bit, _16->stream[1].bitstream_length,
	bcs	.L2621	@,
	cmn	r0, #1	@ zero_bit,
	beq	.L2619	@,
.L2617:
	add	r0, r0, #1	@ D.42226, zero_bit,
	str	r0, [r3, #72]	@ D.42226, _61->nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	ldr	r2, [r3, #68]	@ _36->nal_segment, _36->nal_segment
	cmp	r2, #1	@ _36->nal_segment,
	ldmlsfd	sp!, {r4, pc}	@
	ldr	r1, [r3, #40]	@ _36->stream[1].bitstream_length, _36->stream[1].bitstream_length
	ldr	r2, [r3, #72]	@ _36->nal_trail_zero_bit_num, _36->nal_trail_zero_bit_num
	cmp	r2, r1, asl #3	@ _36->nal_trail_zero_bit_num, _36->stream[1].bitstream_length,
	ldmccfd	sp!, {r4, pc}	@
	add	r2, r4, #49152	@ tmp159, pH264Ctx,
	ldr	r1, [r3, #60]	@, _36->stream[1].StreamID
	ldr	r0, [r2, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	mov	r3, #0	@ tmp161,
	mov	r1, #1	@ tmp162,
	str	r3, [r2, #36]	@ tmp161, _44->stream[1].streamBuffer
	ldr	r2, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	str	r1, [r2, #68]	@ tmp162, _46->nal_segment
	ldr	r2, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	str	r3, [r2, #72]	@ tmp161, _48->nal_trail_zero_bit_num
	ldmfd	sp!, {r4, pc}	@
.L2621:
	add	r2, r4, #49152	@ tmp146, pH264Ctx,
	ldr	r1, [r3, #60]	@, _16->stream[1].StreamID
	ldr	r0, [r2, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	mov	r1, #0	@ tmp148,
	mov	r2, #1	@ tmp149,
	str	r1, [r3, #36]	@ tmp148, _22->stream[1].streamBuffer
	ldr	r3, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	str	r2, [r3, #68]	@ tmp149, _24->nal_segment
	ldr	r3, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
.L2619:
	ldr	r1, [r3, #12]	@, _62->stream[0].bitstream_length
	ldr	r0, [r3, #8]	@, _62->stream[0].streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ D.42223, pH264Ctx_7(D)->pCurrNal
	b	.L2617	@
	.fnend
	.size	FindTrailZeros, .-FindTrailZeros
	.align	2
	.global	CombinePacket
	.type	CombinePacket, %function
CombinePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #368]	@ pH264Ctx_2(D)->pCurrNal, pH264Ctx_2(D)->pCurrNal
	ldr	r3, [r3, #12]	@ _3->stream[0].bitstream_length, _3->stream[0].bitstream_length
	cmp	r3, #4096	@ _3->stream[0].bitstream_length,
	bxcs	lr	@
	b	CombinePacket.part.10	@
	.fnend
	.size	CombinePacket, .-CombinePacket
	.align	2
	.global	FindNaluArraySlot
	.type	FindNaluArraySlot, %function
FindNaluArraySlot:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, r0	@ pH264Ctx, pH264Ctx
	ldrb	r0, [r0, #377]	@ zero_extendqisi2	@ pH264Ctx_6(D)->NalArray[0].is_valid, pH264Ctx_6(D)->NalArray[0].is_valid
	cmp	r0, #0	@ pH264Ctx_6(D)->NalArray[0].is_valid,
	beq	.L2629	@,
	mov	r2, ip	@ ivtmp.2684, pH264Ctx
	mov	r3, #1	@ Pos,
	b	.L2627	@
.L2626:
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2632	@,
.L2627:
	ldrb	r1, [r2, #473]	@ zero_extendqisi2	@ MEM[base: _19, offset: 473B], MEM[base: _19, offset: 473B]
	add	r2, r2, #96	@ ivtmp.2684, ivtmp.2684,
	cmp	r1, #0	@ MEM[base: _19, offset: 473B],
	bne	.L2626	@,
	mov	r0, r3	@ D.42242, Pos
.L2625:
	mov	r2, r3, asl #7	@ tmp124, Pos,
	mov	r1, #1	@ tmp128,
	sub	r3, r2, r3, asl #5	@ tmp125, tmp124, Pos,
	add	ip, ip, r3	@ tmp126, pH264Ctx, tmp125
	strb	r1, [ip, #377]	@ tmp128, pH264Ctx_6(D)->NalArray[Pos_23].is_valid
	bx	lr	@
.L2632:
	mvn	r0, #0	@ D.42242,
	bx	lr	@
.L2629:
	mov	r3, r0	@ Pos, D.42242
	b	.L2625	@
	.fnend
	.size	FindNaluArraySlot, .-FindNaluArraySlot
	.align	2
	.global	InquireSliceProperty
	.type	InquireSliceProperty, %function
InquireSliceProperty:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #49152	@ tmp156, pH264Ctx,
	mov	r5, r2	@ IsSizeChanged, IsSizeChanged
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r6, #3632]	@ pH264Ctx_5(D)->TotalNal, pH264Ctx_5(D)->TotalNal
	mov	r9, r1	@ IsNewPic, IsNewPic
	mov	r0, #22	@,
	ldr	r1, .L2643	@,
	sub	r2, r2, #1	@, pH264Ctx_5(D)->TotalNal,
	add	r7, r4, #20480	@ tmp163, pH264Ctx,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp160,
	str	r3, [r5]	@ tmp160, *IsSizeChanged_9(D)
	mov	r0, r4	@, pH264Ctx
	str	r3, [r9]	@ tmp160, *IsNewPic_11(D)
	ldr	r3, [r4, #368]	@ D.42249, pH264Ctx_5(D)->pCurrNal
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ D.42250, _13->nal_unit_type
	strb	r2, [r7, #203]	@ D.42250, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	ldr	r3, [r3, #76]	@ D.42248, _13->nal_ref_idc
	str	r3, [r7, #232]	@ D.42248, pH264Ctx_5(D)->CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r8, r0, #0	@ D.42247,
	bne	.L2637	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L2642	@,
	ldrb	r0, [r7, #205]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.new_pic_flag, pH264Ctx_5(D)->CurrSlice.new_pic_flag
	add	r3, r4, #12288	@ tmp174, pH264Ctx,
	mov	r2, #2208	@ tmp182,
	mov	r10, #4000	@ tmp186,
	sub	r0, r0, #1	@ D.42251, pH264Ctx_5(D)->CurrSlice.new_pic_flag,
	add	r4, r4, #24576	@ tmp218, pH264Ctx,
	clz	r0, r0	@ D.42251, D.42251
	mov	r0, r0, lsr #5	@ D.42251, D.42251,
	str	r0, [r9]	@ D.42251, *IsNewPic_11(D)
	ldr	r0, [r7, #212]	@ pH264Ctx_5(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_5(D)->CurrSlice.pic_parameter_set_id
	ldr	lr, [r3, #1296]	@ pH264Ctx_5(D)->PPS, pH264Ctx_5(D)->PPS
	ldr	ip, [r3, #1272]	@ oldw, pH264Ctx_5(D)->CurWidthInMb
	ldr	r1, [r3, #1292]	@ pH264Ctx_5(D)->SPS, pH264Ctx_5(D)->SPS
	mla	r2, r2, r0, lr	@ tmp183, tmp182, pH264Ctx_5(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_5(D)->PPS
	ldr	r0, [r3, #1276]	@ oldh, pH264Ctx_5(D)->CurHeightInMb
	mov	lr, ip, asl #4	@ D.42252, oldw,
	mov	r7, r0, asl #4	@ D.42252, oldh,
	ldr	r3, [r2, #28]	@ pPPS_30->seq_parameter_set_id, pPPS_30->seq_parameter_set_id
	mla	r1, r10, r3, r1	@ pSPS, tmp186, pPPS_30->seq_parameter_set_id, pH264Ctx_5(D)->SPS
	ldrb	r3, [r1, #18]	@ zero_extendqisi2	@ D.42252, pSPS_34->frame_mbs_only_flag
	ldr	r9, [r1, #3960]	@ pSPS_34->pic_height_in_map_units_minus1, pSPS_34->pic_height_in_map_units_minus1
	rsb	r3, r3, #2	@ D.42252, D.42252,
	ldr	r2, [r1, #3956]	@ pSPS_34->pic_width_in_mbs_minus1, pSPS_34->pic_width_in_mbs_minus1
	str	lr, [r6, #3724]	@ D.42252, pH264Ctx_5(D)->DSD_OldWidth
	mla	r3, r9, r3, r3	@ newh, pSPS_34->pic_height_in_map_units_minus1, D.42252, D.42252
	add	r2, r2, #1	@ neww, pSPS_34->pic_width_in_mbs_minus1,
	str	r7, [r6, #3728]	@ D.42252, pH264Ctx_5(D)->DSD_OldHeight
	mov	lr, r2, asl #4	@ D.42252, neww,
	str	lr, [r6, #3732]	@ D.42252, pH264Ctx_5(D)->DSD_NewWidth
	cmp	ip, r2	@ oldw, neww
	cmpeq	r0, r3	@, oldh, newh
	mov	r3, r3, asl #4	@ D.42252, newh,
	str	r3, [r6, #3736]	@ D.42252, pH264Ctx_5(D)->DSD_NewHeight
	movne	r3, #1	@ tmp216,
	strne	r3, [r5]	@ tmp216, *IsSizeChanged_9(D)
	ldr	r3, [r4, #2048]	@ pH264Ctx_5(D)->DPB.size, pH264Ctx_5(D)->DPB.size
	ldr	r2, [r1, #3980]	@ pSPS_34->dpb_size_plus1, pSPS_34->dpb_size_plus1
	add	r3, r3, #1	@ D.42248, pH264Ctx_5(D)->DPB.size,
	cmp	r2, r3	@ pSPS_34->dpb_size_plus1, D.42248
	movhi	r3, #1	@ tmp222,
	strhi	r3, [r5]	@ tmp222, *IsSizeChanged_9(D)
.L2634:
	mov	r0, r8	@, D.42247
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2637:
	mvn	r8, #0	@ D.42247,
	b	.L2634	@
.L2642:
	ldr	r1, .L2643+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.42247,
	b	.L2634	@
.L2644:
	.align	2
.L2643:
	.word	.LC321
	.word	.LC322
	.fnend
	.size	InquireSliceProperty, .-InquireSliceProperty
	.align	2
	.global	HaveSliceToDec
	.type	HaveSliceToDec, %function
HaveSliceToDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #49152	@ tmp118, pH264Ctx,
	ldr	r0, [r0, #3612]	@ pH264Ctx_3(D)->SliceParaNum, pH264Ctx_3(D)->SliceParaNum
	clz	r0, r0	@ D.42260, pH264Ctx_3(D)->SliceParaNum
	mov	r0, r0, lsr #5	@ D.42260, D.42260,
	rsb	r0, r0, #0	@, D.42260
	bx	lr	@
	.fnend
	.size	HaveSliceToDec, .-HaveSliceToDec
	.align	2
	.global	IsRefListWrong
	.type	IsRefListWrong, %function
IsRefListWrong:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r0, #20480	@ tmp167, pH264Ctx,
	ldr	r3, [r7, #244]	@ pH264Ctx_11(D)->CurrSlice.listXsize, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_11(D)->CurrSlice.listXsize,
	beq	.L2647	@,
	add	r5, r0, #26880	@ ivtmp.2705, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r8, r0, #49152	@ tmp168, pH264Ctx,
	add	r5, r5, #152	@ ivtmp.2705, ivtmp.2705,
	mov	r4, #0	@ i,
	b	.L2651	@
.L2648:
	ldr	r3, [r0, #408]	@ pstLogicFs_20->pstDecodeFs, pstLogicFs_20->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_20->pstDecodeFs,
	beq	.L2650	@,
	ldr	r3, [r7, #244]	@ D.42286, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r4, r3	@ i, D.42286
	bcs	.L2674	@,
.L2651:
	ldr	r3, [r5, #4]!	@ MEM[base: _41, offset: 0B], MEM[base: _41, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r8, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r3, [r3, #4]	@ _16->frame_store, _16->frame_store
	ldr	r1, [r3, #508]	@, _17->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L2648	@,
.L2650:
	mvn	r0, #0	@ D.42288,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2674:
	cmp	r3, #0	@ D.42286,
	beq	.L2647	@,
	ldr	r3, [r7, #248]	@ pH264Ctx_11(D)->CurrSlice.listXsize, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_11(D)->CurrSlice.listXsize,
	addne	r6, r6, #27136	@ ivtmp.2694, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r6, r6, #28	@ ivtmp.2694, ivtmp.2694,
	bne	.L2654	@,
	b	.L2647	@
.L2675:
	ldr	r3, [r0, #408]	@ pstLogicFs_31->pstDecodeFs, pstLogicFs_31->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_31->pstDecodeFs,
	beq	.L2650	@,
	ldr	r3, [r7, #248]	@ pH264Ctx_11(D)->CurrSlice.listXsize, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r4, r3	@ i, pH264Ctx_11(D)->CurrSlice.listXsize
	bcs	.L2647	@,
.L2654:
	ldr	r3, [r6, #4]!	@ MEM[base: _38, offset: 0B], MEM[base: _38, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r8, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r3, [r3, #4]	@ _27->frame_store, _27->frame_store
	ldr	r1, [r3, #508]	@, _28->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L2675	@,
	b	.L2650	@
.L2647:
	mov	r0, #0	@ D.42288,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	IsRefListWrong, .-IsRefListWrong
	.align	2
	.global	H264DEC_RecycleImage
	.type	H264DEC_RecycleImage, %function
H264DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #49152	@ tmp139, pH264Ctx,
	mov	r8, r1	@ PicID, PicID
	mov	r0, #2	@,
	ldr	r1, .L2687	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r1, r8	@, PicID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L2681	@,
	ldrsb	r3, [r0, #1]	@ pstLogicFs_13->s32DispState, pstLogicFs_13->s32DispState
	cmp	r3, #0	@ pstLogicFs_13->s32DispState,
	beq	.L2681	@,
	add	r4, r0, #196	@ ivtmp.2721, pstLogicFs,
	add	r5, r0, #212	@ D.42317, pstLogicFs,
	mov	r7, #0	@ tmp140,
.L2679:
	ldr	r1, [r4, #4]!	@ D.42315, MEM[base: _1, offset: 0B]
	cmp	r1, #0	@ D.42315,
	beq	.L2678	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4]	@ tmp140, MEM[base: _1, offset: 0B]
.L2678:
	cmp	r4, r5	@ ivtmp.2721, D.42317
	bne	.L2679	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r1, r8	@, PicID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.42311,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2681:
	mvn	r0, #0	@ D.42311,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2688:
	.align	2
.L2687:
	.word	.LC323
	.fnend
	.size	H264DEC_RecycleImage, .-H264DEC_RecycleImage
	.align	2
	.global	OutputFrmToVO
	.type	OutputFrmToVO, %function
OutputFrmToVO:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pFrameStore,
	cmpne	r0, #0	@, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	moveq	ip, #1	@ tmp182,
	.pad #8
	sub	sp, sp, #8	@,,
	movne	ip, #0	@ tmp182,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pFrameStore, pFrameStore
	beq	.L2729	@,
	ldr	r3, [r0]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	mov	r7, r2	@ is_last_frame, is_last_frame
	ldr	r3, [r3, #12]	@ _10->s32DecOrderOutput, _10->s32DecOrderOutput
	cmp	r3, #0	@ _10->s32DecOrderOutput,
	ble	.L2692	@,
	add	r3, r0, #49152	@ tmp187, pH264Ctx,
	ldr	r2, [r3, #3616]	@ pH264Ctx_3(D)->OldDecMode, pH264Ctx_3(D)->OldDecMode
	cmp	r2, #2	@ pH264Ctx_3(D)->OldDecMode,
	beq	.L2692	@,
	ldr	r2, [r3, #1544]	@ D.42332, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r2, #0	@ D.42332,
	strneb	ip, [r2, #1]	@ tmp182, _13->is_used
	movne	r0, #1	@ D.42327,
	strne	ip, [r3, #1544]	@ tmp182, pH264Ctx_3(D)->pDirectOutBuf
	beq	.L2694	@,
.L2691:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2692:
	mov	r1, r5	@, pFrameStore
	mov	r0, r4	@, pH264Ctx
	bl	CheckFrameStore	@
	cmn	r0, #3	@,
	beq	.L2694	@,
	add	r6, r4, #49152	@ tmp320, pH264Ctx,
	ldr	r1, [r6, #1544]	@ D.42332, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r1, #0	@ D.42332,
	beq	.L2695	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	ldr	r1, [r6, #1544]	@, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	bl	CheckFrameStore	@
	subs	r3, r0, #0	@ ret,
	beq	.L2730	@,
	cmn	r3, #3	@ ret,
	beq	.L2702	@,
	ldr	r1, .L2738	@,
	movw	r2, #1836	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r3, #184]	@, _47->fs_image.image_id
	bl	H264DEC_RecycleImage	@
.L2702:
	ldr	r3, [r6, #1544]	@ D.42332, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, #0	@ tmp270,
	strb	r0, [r3, #1]	@ tmp270, _49->is_used
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	str	r0, [r6, #1544]	@ tmp270, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r5, r3	@ pFrameStore, pH264Ctx_3(D)->pDirectOutBuf
	beq	.L2691	@,
.L2695:
	mov	r1, r5	@, pFrameStore
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	mov	r1, r5	@, pFrameStore
	mov	r0, r4	@, pH264Ctx
	bl	CheckFrameStore	@
	subs	r3, r0, #0	@ ret,
	beq	.L2731	@,
	cmn	r3, #3	@ ret,
	beq	.L2694	@,
	movw	r2, #1894	@,
	ldr	r1, .L2738	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #184]	@, pFrameStore_5(D)->fs_image.image_id
	mov	r0, r4	@, pH264Ctx
	bl	H264DEC_RecycleImage	@
	mov	r0, #2	@ D.42327,
	b	.L2691	@
.L2729:
	mov	r3, r1	@, pFrameStore
	mov	r2, r0	@, pH264Ctx
	ldr	r1, .L2738+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #2	@ D.42327,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2694:
	mov	r0, #1	@ D.42327,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2731:
	mov	r2, #1	@,
	ldr	r1, [r5, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r5, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pstLogicFsImage,
	beq	.L2732	@,
	cmp	r7, #1	@ is_last_frame,
	add	r3, r4, #8	@, pH264Ctx,
	streq	r7, [r8, #224]	@ is_last_frame, pstLogicFsImage_56->last_frame
	mov	r2, r4	@, pH264Ctx
	ldr	r0, [r6, #3688]	@ pH264Ctx_3(D)->ChanID, pH264Ctx_3(D)->ChanID
	mov	r1, #0	@,
	str	r8, [sp]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	bne	.L2733	@,
	ldr	r3, [r4]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _62->s32FastForwardBackwardSpeed, _62->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.42334, _62->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.42334, D.42334,
	cmp	r3, #4096	@ D.42334,
	movcc	r3, #0	@ tmp304,
	strcc	r3, [r8, #84]	@ tmp304, pstLogicFsImage_56->u32RepeatCnt
	bcs	.L2734	@,
.L2709:
	ldr	r2, [r6, #3720]	@ pH264Ctx_3(D)->numOutputFrame, pH264Ctx_3(D)->numOutputFrame
	mov	r0, #0	@ D.42327,
	ldr	r3, [r6, #3712]	@ pH264Ctx_3(D)->PicOutCounter, pH264Ctx_3(D)->PicOutCounter
	add	r2, r2, #1	@ D.42330, pH264Ctx_3(D)->numOutputFrame,
	str	r2, [r6, #3720]	@ D.42330, pH264Ctx_3(D)->numOutputFrame
	add	r3, r3, #2	@ D.42331, pH264Ctx_3(D)->PicOutCounter,
	str	r3, [r6, #3712]	@ D.42331, pH264Ctx_3(D)->PicOutCounter
	b	.L2691	@
.L2730:
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	mov	r2, #1	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	ldr	r1, [r3, #508]	@, _25->logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	ldr	r1, [r3, #508]	@, _28->logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pstLogicFsImage,
	beq	.L2735	@,
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	mov	r2, r4	@, pH264Ctx
	mov	r1, #0	@,
	cmp	r5, r3	@ pFrameStore, pH264Ctx_3(D)->pDirectOutBuf
	cmpeq	r7, #1	@, is_last_frame,
	moveq	r3, #1	@ tmp226,
	streq	r3, [r8, #224]	@ tmp226, pstLogicFsImage_30->last_frame
	add	r3, r4, #8	@, pH264Ctx,
	ldr	r0, [r6, #3688]	@ pH264Ctx_3(D)->ChanID, pH264Ctx_3(D)->ChanID
	str	r8, [sp]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	bne	.L2736	@,
	ldr	r3, [r4]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _39->s32FastForwardBackwardSpeed, _39->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.42334, _39->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.42334, D.42334,
	cmp	r3, #4096	@ D.42334,
	movcc	r3, #0	@ tmp250,
	strcc	r3, [r8, #84]	@ tmp250, pstLogicFsImage_30->u32RepeatCnt
	bcs	.L2737	@,
.L2701:
	ldr	r2, [r6, #3720]	@ pH264Ctx_3(D)->numOutputFrame, pH264Ctx_3(D)->numOutputFrame
	ldr	r3, [r6, #3712]	@ pH264Ctx_3(D)->PicOutCounter, pH264Ctx_3(D)->PicOutCounter
	add	r2, r2, #1	@ D.42330, pH264Ctx_3(D)->numOutputFrame,
	str	r2, [r6, #3720]	@ D.42330, pH264Ctx_3(D)->numOutputFrame
	add	r3, r3, #2	@ D.42331, pH264Ctx_3(D)->PicOutCounter,
	str	r3, [r6, #3712]	@ D.42331, pH264Ctx_3(D)->PicOutCounter
	b	.L2702	@
.L2734:
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L2709	@
.L2737:
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L2701	@
.L2733:
	mov	r2, r0	@, ret
	ldr	r1, .L2738+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.42327,
	b	.L2691	@
.L2736:
	mov	r2, r0	@, ret
	ldr	r1, .L2738+8	@,
	mov	r0, #0	@,
	mov	r5, r0	@ tmp234,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1544]	@ D.42332, pH264Ctx_3(D)->pDirectOutBuf
	mov	r2, r5	@, tmp234
	strb	r5, [r3, #1]	@ tmp234, _35->is_used
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	ldr	r1, [r3, #508]	@, _37->logic_fs_id
	bl	FSP_SetDisplay	@
	str	r5, [r6, #1544]	@ tmp234, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.42327,
	b	.L2691	@
.L2732:
	movw	r2, #1864	@,
	ldr	r1, .L2738+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42327,
	b	.L2691	@
.L2735:
	movw	r2, #1807	@,
	ldr	r1, .L2738+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42327,
	b	.L2691	@
.L2739:
	.align	2
.L2738:
	.word	.LC327
	.word	.LC324
	.word	.LC326
	.word	.LC328
	.word	.LC325
	.fnend
	.size	OutputFrmToVO, .-OutputFrmToVO
	.align	2
	.global	OutputFrmFromDPB
	.type	OutputFrmFromDPB, %function
OutputFrmFromDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, r1, lsl #2	@ D.42345, pH264Ctx, pos,
	add	r4, r4, #24576	@ tmp122, D.42345,
	mov	r6, r1	@ pos, pos
	mov	r3, #0	@ tmp123,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r4, #1856]	@ D.42342, MEM[(struct H264_CTX_S *)_14 + 26432B]
	mov	r2, r3	@, tmp123
	strb	r3, [r1, #4]	@ tmp123, _5->is_in_dpb
	ldr	r1, [r4, #1856]	@, MEM[(struct H264_CTX_S *)_14 + 26432B]
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1856]	@ MEM[(struct H264_CTX_S *)_14 + 26432B], MEM[(struct H264_CTX_S *)_14 + 26432B]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference
	cmp	r3, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference,
	mov	r7, r0	@ ret,
	bne	.L2741	@,
	mov	r1, r6	@, pos
	mov	r0, r5	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
.L2741:
	mov	r0, r7	@, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	OutputFrmFromDPB, .-OutputFrmFromDPB
	.align	2
	.global	FlushDPB
	.type	FlushDPB, %function
FlushDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r6, r0, #24576	@ tmp143, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	addne	r7, r0, #26368	@ ivtmp.2738, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r7, r7, #60	@ ivtmp.2738, ivtmp.2738,
	bne	.L2748	@,
	b	.L2749	@
.L2747:
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, r4	@ pH264Ctx_8(D)->DPB.used_size, i
	bls	.L2749	@,
.L2748:
	ldr	r1, [r7, #4]!	@ D.42361, MEM[base: _31, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _10->is_reference, _10->is_reference
	cmp	r3, #0	@ _10->is_reference,
	beq	.L2747	@,
	mov	r0, r5	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, r4	@ pH264Ctx_8(D)->DPB.used_size, i
	bhi	.L2748	@,
.L2749:
	mov	r0, r5	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	beq	.L2751	@,
	b	.L2760	@
.L2752:
	bl	GetMinPOC	@
	ldr	r1, [sp]	@, pos
	mov	r0, r5	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret,
	beq	.L2750	@,
.L2751:
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	mov	r2, sp	@,
	add	r1, sp, #4	@ tmp146,,
	mov	r0, r5	@, pH264Ctx
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	bne	.L2752	@,
	mov	r0, r3	@ D.42359, pH264Ctx_8(D)->DPB.used_size
.L2750:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L2760:
	movw	r3, #2838	@,
	ldr	r2, .L2761	@,
	ldr	r1, .L2761+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L2751	@
.L2762:
	.align	2
.L2761:
	.word	.LANCHOR0+252
	.word	.LC329
	.fnend
	.size	FlushDPB, .-FlushDPB
	.align	2
	.global	AdaptiveMemMark
	.type	AdaptiveMemMark, %function
AdaptiveMemMark:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #49152	@ tmp254, pH264Ctx,
	add	r2, r0, #26368	@ ivtmp.2751, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #49664	@ D.42403, pH264Ctx,
	ldr	r4, [r3, #964]	@ D.42401, pH264Ctx_12(D)->CurrPic.pMarkPara
	.pad #12
	sub	sp, sp, #12	@,,
	add	r8, r8, #40	@ D.42403, D.42403,
	add	r9, r0, #16384	@ tmp253, pH264Ctx,
	add	r7, r4, #2000	@ D.42410, D.42401,
	add	r6, r0, #24576	@ tmp257, pH264Ctx,
	add	r4, r4, #4	@ ivtmp.2764, D.42401,
	add	r7, r7, #4	@ D.42410, D.42410,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	str	r3, [sp, #4]	@ tmp254, %sfp
	add	r3, r2, #124	@ ivtmp.2751, ivtmp.2751,
	str	r3, [sp]	@ ivtmp.2751, %sfp
.L2776:
	ldr	r3, [r4]	@ MEM[base: _91, offset: 0B], MEM[base: _91, offset: 0B]
	cmp	r3, #6	@ MEM[base: _91, offset: 0B],
	ldrls	pc, [pc, r3, asl #2]	@ MEM[base: _91, offset: 0B]
	b	.L2764	@
.L2766:
	.word	.L2765
	.word	.L2767
	.word	.L2768
	.word	.L2769
	.word	.L2770
	.word	.L2771
	.word	.L2772
.L2772:
	ldr	r2, [r4, #12]	@, MEM[base: _91, offset: 12B]
	mov	r1, r8	@, D.42403
	mov	r0, r5	@, pH264Ctx
	bl	MarkCurrPicLT	@
.L2764:
	add	r4, r4, #20	@ ivtmp.2764, ivtmp.2764,
	cmp	r4, r7	@ ivtmp.2764, D.42410
	bne	.L2776	@,
.L2765:
	ldr	r3, [r9, #3436]	@ pH264Ctx_12(D)->CurrPOC.last_has_mmco_5, pH264Ctx_12(D)->CurrPOC.last_has_mmco_5
	cmp	r3, #1	@ pH264Ctx_12(D)->CurrPOC.last_has_mmco_5,
	movne	r0, #0	@ D.42400,
	beq	.L2786	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2771:
	ldr	r3, [r6, #2056]	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer,
	ldrne	r10, [sp]	@ ivtmp.2751, %sfp
	movne	fp, #0	@ i,
	beq	.L2775	@,
.L2774:
	ldr	r1, [r10, #4]!	@, MEM[base: _37, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, #2056]	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	add	fp, fp, #1	@ i, i,
	cmp	fp, r1	@ i, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	bcc	.L2774	@,
.L2775:
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r1, #0	@,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r3, #1	@ tmp165,
	str	r3, [r9, #3436]	@ tmp165, pH264Ctx_12(D)->CurrPOC.last_has_mmco_5
	b	.L2764	@
.L2770:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #16]	@, MEM[base: _91, offset: 16B]
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2764	@
.L2769:
	ldr	r3, [r4, #12]	@, MEM[base: _91, offset: 12B]
	mov	r1, r8	@, D.42403
	ldr	r2, [r4, #4]	@, MEM[base: _91, offset: 4B]
	mov	r0, r5	@, pH264Ctx
	bl	MarkSTToLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2764	@
.L2768:
	mov	r0, r5	@, pH264Ctx
	ldr	r2, [r4, #8]	@, MEM[base: _91, offset: 8B]
	mov	r1, r8	@, D.42403
	bl	UnMarkLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2764	@
.L2767:
	mov	r0, r5	@, pH264Ctx
	ldr	r2, [r4, #4]	@, MEM[base: _91, offset: 4B]
	mov	r1, r8	@, D.42403
	bl	UnMarkSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	b	.L2764	@
.L2786:
	ldr	r1, [sp, #4]	@ tmp254, %sfp
	mov	r3, #0	@ tmp190,
	ldrb	r2, [r1, #555]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrPic.structure, pH264Ctx_12(D)->CurrPic.structure
	str	r3, [r1, #968]	@ tmp190, pH264Ctx_12(D)->CurrPic.frame_num
	cmp	r2, #1	@ pH264Ctx_12(D)->CurrPic.structure,
	beq	.L2779	@,
	bcc	.L2780	@,
	cmp	r2, #2	@ pH264Ctx_12(D)->CurrPic.structure,
	bne	.L2778	@,
	ldr	r2, [sp, #4]	@ tmp254, %sfp
	str	r3, [r2, #992]	@ tmp190, pH264Ctx_12(D)->CurrPic.bottompoc
	str	r3, [r2, #980]	@ tmp190, pH264Ctx_12(D)->CurrPic.thispoc
	str	r3, [r9, #3448]	@ tmp190, pH264Ctx_12(D)->CurrPOC.bottompoc
	str	r3, [r9, #3456]	@ tmp190, pH264Ctx_12(D)->CurrPOC.ThisPOC
.L2778:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	adds	r0, r0, #0	@ D.42409,,
	movne	r0, #1	@ D.42409,
	rsb	r0, r0, #0	@ D.42400, D.42409
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2780:
	ldr	r0, [sp, #4]	@ tmp254, %sfp
	ldr	r1, [r0, #980]	@ D.42404, pH264Ctx_12(D)->CurrPic.thispoc
	ldr	r2, [r0, #988]	@ pH264Ctx_12(D)->CurrPic.toppoc, pH264Ctx_12(D)->CurrPic.toppoc
	ldr	r3, [r0, #992]	@ pH264Ctx_12(D)->CurrPic.bottompoc, pH264Ctx_12(D)->CurrPic.bottompoc
	rsb	r2, r1, r2	@ D.42404, D.42404, pH264Ctx_12(D)->CurrPic.toppoc
	str	r2, [r0, #988]	@ D.42404, pH264Ctx_12(D)->CurrPic.toppoc
	rsb	r3, r1, r3	@ D.42404, D.42404, pH264Ctx_12(D)->CurrPic.bottompoc
	str	r3, [r0, #992]	@ D.42404, pH264Ctx_12(D)->CurrPic.bottompoc
	cmp	r3, r2	@ D.42404, D.42404
	movge	r3, r2	@ D.42404, D.42404
	str	r3, [r0, #984]	@ D.42404, pH264Ctx_12(D)->CurrPic.framepoc
	str	r3, [r0, #980]	@ D.42404, pH264Ctx_12(D)->CurrPic.thispoc
	ldr	r1, [r9, #3456]	@ D.42404, pH264Ctx_12(D)->CurrPOC.ThisPOC
	ldr	r2, [r9, #3444]	@ pH264Ctx_12(D)->CurrPOC.toppoc, pH264Ctx_12(D)->CurrPOC.toppoc
	ldr	r3, [r9, #3448]	@ pH264Ctx_12(D)->CurrPOC.bottompoc, pH264Ctx_12(D)->CurrPOC.bottompoc
	rsb	r2, r1, r2	@ D.42404, D.42404, pH264Ctx_12(D)->CurrPOC.toppoc
	str	r2, [r9, #3444]	@ D.42404, pH264Ctx_12(D)->CurrPOC.toppoc
	rsb	r3, r1, r3	@ D.42404, D.42404, pH264Ctx_12(D)->CurrPOC.bottompoc
	str	r3, [r9, #3448]	@ D.42404, pH264Ctx_12(D)->CurrPOC.bottompoc
	cmp	r3, r2	@ D.42404, D.42404
	movge	r3, r2	@ D.42404, D.42404
	str	r3, [r9, #3452]	@ D.42404, pH264Ctx_12(D)->CurrPOC.framepoc
	str	r3, [r9, #3456]	@ D.42404, pH264Ctx_12(D)->CurrPOC.ThisPOC
	b	.L2778	@
.L2779:
	ldr	r2, [sp, #4]	@ tmp254, %sfp
	str	r3, [r2, #988]	@ tmp190, pH264Ctx_12(D)->CurrPic.toppoc
	str	r3, [r2, #980]	@ tmp190, pH264Ctx_12(D)->CurrPic.thispoc
	str	r3, [r9, #3444]	@ tmp190, pH264Ctx_12(D)->CurrPOC.toppoc
	str	r3, [r9, #3456]	@ tmp190, pH264Ctx_12(D)->CurrPOC.ThisPOC
	b	.L2778	@
	.fnend
	.size	AdaptiveMemMark, .-AdaptiveMemMark
	.align	2
	.global	IDRMemMarking
	.type	IDRMemMarking, %function
IDRMemMarking:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r0, #49152	@ tmp248, pH264Ctx,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r6, #964]	@ pH264Ctx_11(D)->CurrPic.pMarkPara, pH264Ctx_11(D)->CurrPic.pMarkPara
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ _12->no_output_of_prior_pics_flag, _12->no_output_of_prior_pics_flag
	cmp	r3, #0	@ _12->no_output_of_prior_pics_flag,
	beq	.L2788	@,
	add	r10, r0, #24576	@ tmp249, pH264Ctx,
	ldr	r3, [r10, #2052]	@ pH264Ctx_11(D)->DPB.used_size, pH264Ctx_11(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_11(D)->DPB.used_size,
	beq	.L2794	@,
	add	r5, r0, #26368	@ ivtmp.2785, pH264Ctx,
	mov	fp, #0	@ i,
	mov	r4, fp	@ tmp251, i
	mov	r9, r5	@ ivtmp.2849, ivtmp.2785
	mov	r8, r5	@ ivtmp.2856, ivtmp.2849
	add	r9, r9, #124	@ ivtmp.2849, ivtmp.2849,
	add	r5, r5, #64	@ ivtmp.2785, ivtmp.2785,
	add	r8, r8, #188	@ ivtmp.2856, ivtmp.2856,
.L2793:
	ldr	r3, [r5]	@ D.42510, MEM[base: _88, offset: 0B]
	mov	r2, #0	@,
	add	fp, fp, #1	@ i, i,
	strb	r4, [r3, #402]	@ tmp251, _18->frame.is_short_term
	strb	r4, [r3, #401]	@ tmp251, _18->frame.is_long_term
	ldr	r3, [r5]	@ D.42510, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #438]	@ tmp251, _21->top_field.is_short_term
	strb	r4, [r3, #437]	@ tmp251, _21->top_field.is_long_term
	ldr	r3, [r5]	@ D.42510, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #474]	@ tmp251, _24->bottom_field.is_short_term
	strb	r4, [r3, #473]	@ tmp251, _24->bottom_field.is_long_term
	ldr	r3, [r5]	@ D.42510, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #2]	@ tmp251, _27->is_reference
	ldr	r3, [r5]	@ MEM[base: _88, offset: 0B], MEM[base: _88, offset: 0B]
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r1, [r3, #508]	@, _30->logic_fs_id
	bl	FSP_SetRef	@
	ldr	r3, [r5]	@ D.42510, MEM[base: _88, offset: 0B]
	mov	r2, #1	@ tmp254,
	strb	r4, [r3, #1]	@ tmp251, _33->is_used
	ldr	r3, [r5]	@ D.42510, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #4]	@ tmp251, _35->is_in_dpb
	ldr	r3, [r5]	@ D.42510, MEM[base: _88, offset: 0B]
	str	r2, [r3, #532]	@ tmp254, _37->is_displayed
	ldr	r2, [r5]	@ D.42510, MEM[base: _88, offset: 0B]
	ldr	r3, [r2, #552]	@ D.42509, _39->apc_idc
	add	r3, r3, #6656	@ tmp194, D.42509,
	add	r3, r3, #4	@ tmp194, tmp194,
	add	r3, r7, r3, lsl #2	@ tmp195, pH264Ctx, tmp194,
	str	r4, [r3, #4]	@ tmp251, pH264Ctx_11(D)->APC.is_used
	ldr	r1, [r2, #508]	@, _39->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	bl	FSP_GetDisplay	@
	mov	r2, #0	@,
	cmp	r0, #3	@,
	beq	.L2792	@,
	ldr	r3, [r5]	@ MEM[base: _88, offset: 0B], MEM[base: _88, offset: 0B]
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r1, [r3, #508]	@, _47->logic_fs_id
	bl	FSP_SetDisplay	@
.L2792:
	str	r4, [r5], #4	@ tmp251, MEM[base: _88, offset: 0B]
	str	r4, [r9, #4]!	@ tmp251, MEM[base: _98, offset: 0B]
	str	r4, [r8, #4]!	@ tmp251, MEM[base: _99, offset: 0B]
	ldr	r3, [r10, #2052]	@ pH264Ctx_11(D)->DPB.used_size, pH264Ctx_11(D)->DPB.used_size
	cmp	r3, fp	@ pH264Ctx_11(D)->DPB.used_size, i
	bhi	.L2793	@,
.L2794:
	mov	r3, #0	@ tmp163,
	str	r3, [r10, #2052]	@ tmp163, pH264Ctx_11(D)->DPB.used_size
	ldr	r1, [r6, #2168]	@ D.42509, pH264Ctx_11(D)->TotalPmvNum
	cmp	r1, r3	@ D.42509,
	addne	r2, r7, #51200	@ ivtmp.2775, pH264Ctx,
	addne	r2, r2, #44	@ ivtmp.2775, ivtmp.2775,
	movne	r0, r3	@ tmp250, i
	beq	.L2791	@,
.L2797:
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ tmp250, MEM[base: _8, offset: 0B]
	cmp	r3, r1	@ i, D.42509
	bne	.L2797	@,
.L2791:
	mov	r0, r7	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r7	@, pH264Ctx
	bl	UpdateLTReflist	@
	ldr	r3, [r6, #964]	@ pH264Ctx_11(D)->CurrPic.pMarkPara, pH264Ctx_11(D)->CurrPic.pMarkPara
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ _60->long_term_reference_flag, _60->long_term_reference_flag
	cmp	r3, #0	@ _60->long_term_reference_flag,
	bne	.L2811	@,
	str	r3, [r10, #2064]	@ _60->long_term_reference_flag, pH264Ctx_11(D)->DPB.max_long_term_pic_idx
	mov	r0, r3	@ D.42504, _60->long_term_reference_flag
	strb	r3, [r6, #556]	@ _60->long_term_reference_flag, pH264Ctx_11(D)->CurrPic.is_long_term
	mov	r3, #1	@ tmp245,
	strb	r3, [r6, #557]	@ tmp245, pH264Ctx_11(D)->CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2788:
	ldrb	r3, [r6, #553]	@ zero_extendqisi2	@ pH264Ctx_11(D)->CurrPic.field_pair_flag, pH264Ctx_11(D)->CurrPic.field_pair_flag
	cmp	r3, #0	@ pH264Ctx_11(D)->CurrPic.field_pair_flag,
	beq	.L2812	@,
.L2809:
	add	r10, r7, #24576	@ tmp249, pH264Ctx,
	b	.L2791	@
.L2811:
	mov	r3, #0	@ tmp227,
	mov	r2, #1	@ tmp224,
	mov	r0, r3	@ D.42504, tmp227
	str	r2, [r10, #2064]	@ tmp224, pH264Ctx_11(D)->DPB.max_long_term_pic_idx
	strb	r2, [r6, #556]	@ tmp224, pH264Ctx_11(D)->CurrPic.is_long_term
	str	r3, [r6, #972]	@ tmp227, pH264Ctx_11(D)->CurrPic.long_term_frame_idx
	strb	r3, [r6, #557]	@ tmp227, pH264Ctx_11(D)->CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2812:
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2809	@,
	mvn	r0, #0	@ D.42504,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	IDRMemMarking, .-IDRMemMarking
	.align	2
	.global	Marking
	.type	Marking, %function
Marking:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r6, r0, #16384	@ tmp212, pH264Ctx,
	add	r4, r0, #49152	@ tmp211, pH264Ctx,
	mov	r3, #0	@ tmp144,
	str	r3, [r6, #3436]	@ tmp144, pH264Ctx_6(D)->CurrPOC.last_has_mmco_5
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.structure, pH264Ctx_6(D)->CurrPic.structure
	sub	r3, r3, #2	@ D.42517, pH264Ctx_6(D)->CurrPic.structure,
	clz	r3, r3	@ D.42517, D.42517
	mov	r3, r3, lsr #5	@ D.42517, D.42517,
	str	r3, [r6, #3440]	@ D.42517, pH264Ctx_6(D)->CurrPOC.last_pic_bottom_field
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.nal_unit_type, pH264Ctx_6(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_6(D)->CurrPic.nal_unit_type,
	beq	.L2814	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_6(D)->CurrPic.pic_type, pH264Ctx_6(D)->CurrPic.pic_type
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrPic.pic_type,
	bne	.L2815	@,
	ldr	r3, [r0]	@ D.42520, pH264Ctx_6(D)->pstExtraData
	ldr	r2, [r3, #540]	@ _14->stPvrInfo.u32BFrmRefFlag, _14->stPvrInfo.u32BFrmRefFlag
	cmp	r2, #1	@ _14->stPvrInfo.u32BFrmRefFlag,
	beq	.L2840	@,
.L2815:
	ldr	r3, [r4, #964]	@ pH264Ctx_6(D)->CurrPic.pMarkPara, pH264Ctx_6(D)->CurrPic.pMarkPara
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ _21->adaptive_ref_pic_marking_mode_flag, _21->adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ _21->adaptive_ref_pic_marking_mode_flag,
	ldr	r3, [r4, #976]	@ pH264Ctx_6(D)->CurrPic.nal_ref_idc, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	beq	.L2841	@,
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrPic.nal_ref_idc,
	bne	.L2842	@,
.L2822:
	mov	r0, #0	@ D.42515,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2841:
	cmp	r3, #0	@ D.42523,
	beq	.L2822	@,
.L2821:
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.field_pair_flag, pH264Ctx_6(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ pH264Ctx_6(D)->CurrPic.field_pair_flag,
	bne	.L2826	@,
	add	r2, r5, #24576	@ tmp195, pH264Ctx,
	ldr	r1, [r6, #1156]	@ pH264Ctx_6(D)->CurrSPS.num_ref_frames, pH264Ctx_6(D)->CurrSPS.num_ref_frames
	ldr	ip, [r2, #2060]	@ pH264Ctx_6(D)->DPB.ltref_frames_in_buffer, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer
	ldr	r0, [r2, #2056]	@ pH264Ctx_6(D)->DPB.ref_frames_in_buffer, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	rsb	r2, ip, r1	@ D.42519, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer, pH264Ctx_6(D)->CurrSPS.num_ref_frames
	cmp	r0, r2	@ pH264Ctx_6(D)->DPB.ref_frames_in_buffer, D.42519
	beq	.L2843	@,
.L2827:
	mov	r2, #0	@ tmp208,
	strb	r2, [r4, #556]	@ tmp208, pH264Ctx_6(D)->CurrPic.is_long_term
.L2824:
	cmp	r3, #0	@ D.42523,
	beq	.L2822	@,
.L2826:
	ldrb	r3, [r4, #556]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.is_long_term, pH264Ctx_6(D)->CurrPic.is_long_term
	mov	r0, #0	@ D.42515,
	clz	r3, r3	@ tmp189, pH264Ctx_6(D)->CurrPic.is_long_term
	mov	r3, r3, lsr #5	@ tmp189, tmp189,
	strb	r3, [r4, #557]	@ tmp189, pH264Ctx_6(D)->CurrPic.is_short_term
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2840:
	ldr	r2, [r3, #536]	@ _14->stPvrInfo.u32IDRFlag, _14->stPvrInfo.u32IDRFlag
	cmp	r2, #0	@ _14->stPvrInfo.u32IDRFlag,
	bne	.L2815	@,
	ldr	r2, [r3, #544]	@ _14->stPvrInfo.u32ContinuousFlag, _14->stPvrInfo.u32ContinuousFlag
	cmp	r2, #0	@ _14->stPvrInfo.u32ContinuousFlag,
	bne	.L2815	@,
	ldr	r3, [r3, #520]	@ _14->s32FastForwardBackwardSpeed, _14->s32FastForwardBackwardSpeed
	add	r3, r3, #1020	@ D.42521, _14->s32FastForwardBackwardSpeed,
	add	r3, r3, #3	@ D.42521, D.42521,
	cmp	r3, #2048	@ D.42521,
	bcc	.L2815	@,
.L2814:
	mov	r0, r5	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	bne	.L2816	@,
.L2823:
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.nal_unit_type, pH264Ctx_6(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_6(D)->CurrPic.nal_unit_type,
	ldreq	r3, [r4, #976]	@ D.42523, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	beq	.L2824	@,
	ldr	r3, [r4, #976]	@ D.42523, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ D.42523,
	beq	.L2822	@,
	ldr	r2, [r4, #964]	@ pH264Ctx_6(D)->CurrPic.pMarkPara, pH264Ctx_6(D)->CurrPic.pMarkPara
	ldrb	r2, [r2, #3]	@ zero_extendqisi2	@ _30->adaptive_ref_pic_marking_mode_flag, _30->adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ _30->adaptive_ref_pic_marking_mode_flag,
	beq	.L2821	@,
	b	.L2826	@
.L2842:
	mov	r0, r5	@, pH264Ctx
	bl	AdaptiveMemMark	@
	cmp	r0, #0	@,
	beq	.L2823	@,
.L2816:
	mvn	r0, #0	@ D.42515,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2843:
	mov	r0, r5	@, pH264Ctx
	bl	SlidingWinMark.part.2	@
	ldr	r3, [r4, #976]	@ D.42523, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	b	.L2827	@
	.fnend
	.size	Marking, .-Marking
	.align	2
	.global	DirectOutput
	.type	DirectOutput, %function
DirectOutput:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r0, #49152	@ tmp935, pH264Ctx,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldrb	r6, [r4, #555]	@ zero_extendqisi2	@ D.42529, pH264Ctx_28(D)->CurrPic.structure
	cmp	r6, #1	@ D.42529,
	beq	.L2846	@,
	bcc	.L2847	@,
	cmp	r6, #2	@ D.42529,
	beq	.L2848	@,
	mov	r6, #0	@ ret,
.L2845:
	mov	r0, r6	@, ret
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2848:
	ldr	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #3	@ tmp695,
	strb	r2, [r3, #400]	@ tmp695, _243->frame.structure
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ D.42529, pH264Ctx_28(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ D.42529,
	bne	.L2866	@,
	ldr	r1, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r1, #0	@ D.42528,
	beq	.L2867	@,
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	str	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #476]	@ D.42528,
	mov	r6, r0	@ ret,
.L2868:
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	mov	r8, #2	@ tmp716,
	ldrb	r0, [r4, #554]	@ zero_extendqisi2	@ D.42531, pH264Ctx_28(D)->CurrPic.non_existing
	mov	r7, #0	@ tmp720,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp935,
	strb	r0, [r3]	@ D.42531, _347->non_existing
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r8, [r3, #1]	@ tmp716, _350->is_used
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp720, _352->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp720, _354->is_displayed
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp720, _356->is_reference
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r0, [r4, #996]	@ D.42532, pH264Ctx_28(D)->CurrPic.pic_type
	str	r0, [r3, #540]	@ D.42532, _358->pic_type
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #536]	@ tmp720, _361->MbaffFrameFlag
	ldr	r0, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.42528,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.42532, pH264Ctx_28(D)->CurrPic.err_level
	str	r2, [r3, #492]	@ D.42532, _365->bottom_field.err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #492]	@ D.42532, _368->bottom_field.err_level
	str	r2, [r3, #420]	@ D.42532, _368->frame.err_level
	str	r2, [r3, #544]	@ D.42532, _368->err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r8, [r3, #472]	@ tmp716, _372->bottom_field.structure
	ldrb	r2, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r2, #1	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag,
	moveq	r2, r8	@ D.42529,
	movne	r2, r7	@ D.42529,
	strb	r2, [r3, #3]	@ D.42529, _374->mode_skip_flag
	ldr	r8, [r4, #3620]	@ pH264Ctx_28(D)->IModeOutFlag, pH264Ctx_28(D)->IModeOutFlag
	cmp	r8, #1	@ pH264Ctx_28(D)->IModeOutFlag,
	bne	.L2845	@,
.L2923:
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	mov	r2, r7	@, tmp720
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_SetRef	@
	mov	r2, r7	@, tmp720
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #1544]	@, pH264Ctx_28(D)->pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_28(D)->pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2878	@,
	ldr	r3, [r4, #960]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, r8	@, pH264Ctx_28(D)->IModeOutFlag
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_ClearLogicFs	@
	b	.L2878	@
.L2847:
	ldr	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #0	@ tmp351,
	strb	r2, [r3, #400]	@ tmp351, _30->frame.structure
	ldr	r1, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r1, r2	@ D.42528,
	beq	.L2849	@,
	bl	OutputFrmToVO	@
	cmp	r0, #0	@ ret
	bne	.L2928	@,
.L2850:
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, #0	@ pH264Ctx_28(D)->pDirectOutBuf,
	beq	.L2849	@,
	ldr	r3, [r4, #960]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@, _38->logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2849:
	ldr	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r0, #3	@ tmp387,
	mov	r7, #0	@ tmp391,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp935,
	str	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #404]	@ D.42528, _42->frame.frame_store
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	ip, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	str	ip, [r3, #440]	@ D.42528, _45->top_field.frame_store
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	ip, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	str	ip, [r3, #476]	@ D.42528, _48->bottom_field.frame_store
	ldrb	ip, [r4, #554]	@ zero_extendqisi2	@ D.42531, pH264Ctx_28(D)->CurrPic.non_existing
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	ip, [r3]	@ D.42531, _51->non_existing
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r0, [r3, #1]	@ tmp387, _54->is_used
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp391, _56->is_reference
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp391, _58->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp391, _60->is_displayed
	ldr	r0, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.42528,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r1, [r4, #1004]	@ D.42532, pH264Ctx_28(D)->CurrPic.err_level
	mov	r2, r7	@, tmp391
	str	r1, [r3, #420]	@ D.42532, _64->frame.err_level
	str	r1, [r3, #544]	@ D.42532, _64->err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #400]	@ tmp391, _68->frame.structure
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ D.42532, pH264Ctx_28(D)->CurrPic.pic_type
	str	r1, [r3, #540]	@ D.42532, _70->pic_type
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r1, [r4, #561]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.MbaffFrameFlag, pH264Ctx_28(D)->CurrPic.MbaffFrameFlag
	str	r1, [r3, #536]	@ pH264Ctx_28(D)->CurrPic.MbaffFrameFlag, _73->MbaffFrameFlag
	ldrb	r1, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r1, #1	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag,
	moveq	r6, #3	@ D.42529,
	strb	r6, [r3, #3]	@ D.42529, _77->mode_skip_flag
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@, _81->logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r7	@, tmp391
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #1544]	@, pH264Ctx_28(D)->pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_28(D)->pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2878	@,
.L2921:
	ldr	r3, [r4, #960]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_ClearLogicFs	@
.L2878:
	mov	r3, #0	@ tmp929,
	mov	r0, r6	@, ret
	str	r3, [r4, #1544]	@ tmp929, pH264Ctx_28(D)->pDirectOutBuf
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2846:
	ldr	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #3	@ tmp456,
	strb	r2, [r3, #400]	@ tmp456, _93->frame.structure
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.field_pair_flag, pH264Ctx_28(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ pH264Ctx_28(D)->CurrPic.field_pair_flag,
	bne	.L2854	@,
	ldr	r1, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r1, #0	@ D.42528,
	beq	.L2855	@,
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	str	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #440]	@ D.42528,
	mov	r6, r0	@ ret,
.L2856:
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	mov	r8, #1	@ tmp478,
	ldrb	r0, [r4, #554]	@ zero_extendqisi2	@ D.42531, pH264Ctx_28(D)->CurrPic.non_existing
	mov	r7, #0	@ tmp482,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp935,
	strb	r0, [r3]	@ D.42531, _197->non_existing
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r8, [r3, #1]	@ tmp478, _200->is_used
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp482, _202->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp482, _204->is_displayed
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp482, _206->is_reference
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r0, [r4, #996]	@ D.42532, pH264Ctx_28(D)->CurrPic.pic_type
	str	r0, [r3, #540]	@ D.42532, _208->pic_type
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #536]	@ tmp482, _211->MbaffFrameFlag
	ldr	r0, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.42528,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.42532, pH264Ctx_28(D)->CurrPic.err_level
	str	r2, [r3, #456]	@ D.42532, _215->top_field.err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #456]	@ D.42532, _218->top_field.err_level
	str	r2, [r3, #420]	@ D.42532, _218->frame.err_level
	str	r2, [r3, #544]	@ D.42532, _218->err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r8, [r3, #436]	@ tmp478, _222->top_field.structure
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	rsb	r3, r8, r3	@ tmp521,, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	clz	r3, r3	@ tmp521, tmp521
	mov	r3, r3, lsr #5	@ tmp521, tmp521,
	strb	r3, [r2, #3]	@ tmp521, _224->mode_skip_flag
	ldr	r8, [r4, #3620]	@ pH264Ctx_28(D)->IModeOutFlag, pH264Ctx_28(D)->IModeOutFlag
	cmp	r8, #1	@ pH264Ctx_28(D)->IModeOutFlag,
	beq	.L2923	@,
	mov	r0, r6	@, ret
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2866:
	ldr	lr, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp935,
	cmp	lr, #0	@ D.42528,
	ldreq	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	streq	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	streq	r3, [r3, #476]	@ D.42528, _247->bottom_field.frame_store
	ldreq	lr, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, lr, #8	@, D.42528,
	ldrd	r6, [lr, #32]	@ OtherFieldDisptime, D.42528,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _406->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _406->fs_image.PTS
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.42528,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _406->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _406->fs_image.DispFrameDistance
	strd	r6, [sp, #8]	@ OtherFieldDisptime,,
	str	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _406->fs_image.DistanceBeforeFirstFrame
	ldr	r6, [lr, #88]	@ OtherFieldGopNum, _406->fs_image.GopNum
	str	r3, [sp, #16]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #16]	@ OtherFieldPts, %sfp
	add	r0, r5, #49664	@ tmp802, pH264Ctx,
	ldr	ip, [sp, #20]	@ OtherFieldPts, %sfp
	movw	r2, #49728	@ tmp801,
	ldr	lr, [r5, r2]	@ pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	ldr	r1, [r0, #68]	@ pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	and	r2, ip, r3	@ tmp810, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp815, tmp810,
	movw	r0, #49744	@ tmp827,
	and	r1, r1, lr	@ tmp804, pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	movne	r2, #1	@ tmp815,
	cmn	r1, #1	@ tmp804,
	movne	r2, #0	@ tmp815,
	cmp	r2, #0	@ tmp815,
	ldrne	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strne	r3, [r2, #20]	@ OtherFieldPts, _260->fs_image.PTS
	add	r3, r5, #49664	@ tmp822, pH264Ctx,
	add	r3, r3, #80	@ tmp822, tmp822,
	strne	ip, [r2, #16]	@ OtherFieldPts, _260->fs_image.PTS
	ldr	r1, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	mov	ip, #2	@ tmp874,
	ldrd	r2, [r3, #-8]	@ D.42533, tmp822,
	cmp	r3, r9	@ D.42533, OtherFieldUsertag
	cmpeq	r2, r8	@ D.42533, OtherFieldUsertag
	movhi	r2, r8	@ D.42533, OtherFieldUsertag
	movhi	r3, r9	@ D.42533, OtherFieldUsertag
	ldrd	r8, [sp, #8]	@ OtherFieldDisptime,,
	strd	r2, [r1, #24]	@ D.42533, D.42528,
	ldrd	r2, [r5, r0]	@ D.42533, pH264Ctx, tmp827
	mov	r0, #3	@ tmp878,
	ldr	r1, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r9	@ D.42533, OtherFieldDisptime
	cmpeq	r2, r8	@ D.42533, OtherFieldDisptime
	movhi	r2, r8	@ D.42533, OtherFieldDisptime
	movhi	r3, r9	@ D.42533, OtherFieldDisptime
	strd	r2, [r1, #32]	@ D.42533, D.42528,
	ldr	r3, [r4, #636]	@ pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag, pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, fp	@ pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.42532, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.42532, _270->fs_image.DispEnableFlag
	ldr	r3, [r4, #640]	@ pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance, pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r10	@ pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.42532, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.42532, _274->fs_image.DispFrameDistance
	ldr	r3, [r4, #644]	@ pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r7	@ D.42532, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.42532, _278->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #648]	@ pH264Ctx_28(D)->CurrPic.fs_image.GopNum, pH264Ctx_28(D)->CurrPic.fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r6	@ pH264Ctx_28(D)->CurrPic.fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r6	@ D.42532, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.42532, _282->fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.42529, _286->non_existing
	cmp	r3, #0	@ D.42529,
	ldrneb	r3, [r4, #554]	@ zero_extendqisi2	@ D.42529, pH264Ctx_28(D)->CurrPic.non_existing
	strb	r3, [r2]	@ D.42529, _286->non_existing
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _290->is_used, _290->is_used
	orr	r3, r3, ip	@ tmp863, _290->is_used,
	strb	r3, [r2, #1]	@ tmp863, _290->is_used
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ pH264Ctx_28(D)->CurrPic.pic_type, pH264Ctx_28(D)->CurrPic.pic_type
	ldr	r3, [r2, #540]	@ _295->pic_type, _295->pic_type
	cmp	r3, r1	@ _295->pic_type, pH264Ctx_28(D)->CurrPic.pic_type
	movcc	r3, r1	@ D.42532, pH264Ctx_28(D)->CurrPic.pic_type
	str	r3, [r2, #540]	@ D.42532, _295->pic_type
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	ip, [r3, #472]	@ tmp874, _299->bottom_field.structure
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r0, [r3, #400]	@ tmp878, _301->frame.structure
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.42532, pH264Ctx_28(D)->CurrPic.err_level
	str	r2, [r3, #492]	@ D.42532, _303->bottom_field.err_level
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r3, [r2, #492]	@ _306->bottom_field.err_level, _306->bottom_field.err_level
	ldr	r1, [r2, #456]	@ _306->top_field.err_level, _306->top_field.err_level
	add	r3, r3, r1	@ D.42532, _306->bottom_field.err_level, _306->top_field.err_level
	mov	r3, r3, lsr #1	@ D.42532, D.42532,
	str	r3, [r2, #420]	@ D.42532, _306->frame.err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #420]	@ _312->frame.err_level, _312->frame.err_level
	str	r2, [r3, #544]	@ _312->frame.err_level, _312->err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #476]	@ _315->bottom_field.frame_store, _315->bottom_field.frame_store
	str	r2, [r3, #404]	@ _315->bottom_field.frame_store, _315->frame.frame_store
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	cmp	r3, #1	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag,
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _319->mode_skip_flag,
	beq	.L2925	@,
.L2877:
	strb	r2, [r3, #3]	@ D.42529,
	mov	r2, #0	@,
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_SetRef	@
	mov	r0, r5	@, pH264Ctx
	mov	r2, #0	@,
	ldr	r1, [r4, #1544]	@, pH264Ctx_28(D)->pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, #0	@ pH264Ctx_28(D)->pDirectOutBuf,
	mov	r6, r0	@ ret,
	bne	.L2921	@,
	b	.L2878	@
.L2854:
	ldr	lr, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp935,
	cmp	lr, #0	@ D.42528,
	ldreq	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	streq	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	streq	r3, [r3, #440]	@ D.42528, _97->top_field.frame_store
	ldreq	lr, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, lr, #8	@, D.42528,
	ldrd	r6, [lr, #32]	@ OtherFieldDisptime, D.42528,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _408->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _408->fs_image.PTS
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.42528,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _408->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _408->fs_image.DispFrameDistance
	strd	r6, [sp, #8]	@ OtherFieldDisptime,,
	str	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _408->fs_image.DistanceBeforeFirstFrame
	ldr	r6, [lr, #88]	@ OtherFieldGopNum, _408->fs_image.GopNum
	str	r3, [sp, #16]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #16]	@ OtherFieldPts, %sfp
	add	r0, r5, #49664	@ tmp565, pH264Ctx,
	ldr	ip, [sp, #20]	@ OtherFieldPts, %sfp
	movw	r2, #49728	@ tmp564,
	ldr	lr, [r5, r2]	@ pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	ldr	r1, [r0, #68]	@ pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	and	r2, ip, r3	@ tmp573, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp578, tmp573,
	movw	r0, #49744	@ tmp590,
	and	r1, r1, lr	@ tmp567, pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	movne	r2, #1	@ tmp578,
	cmn	r1, #1	@ tmp567,
	movne	r2, #0	@ tmp578,
	cmp	r2, #0	@ tmp578,
	ldrne	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strne	r3, [r2, #20]	@ OtherFieldPts, _110->fs_image.PTS
	add	r3, r5, #49664	@ tmp585, pH264Ctx,
	add	r3, r3, #80	@ tmp585, tmp585,
	strne	ip, [r2, #16]	@ OtherFieldPts, _110->fs_image.PTS
	ldr	r1, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	mov	ip, #1	@ tmp637,
	ldrd	r2, [r3, #-8]	@ D.42533, tmp585,
	cmp	r3, r9	@ D.42533, OtherFieldUsertag
	cmpeq	r2, r8	@ D.42533, OtherFieldUsertag
	movhi	r2, r8	@ D.42533, OtherFieldUsertag
	movhi	r3, r9	@ D.42533, OtherFieldUsertag
	ldrd	r8, [sp, #8]	@ OtherFieldDisptime,,
	strd	r2, [r1, #24]	@ D.42533, D.42528,
	ldrd	r2, [r5, r0]	@ D.42533, pH264Ctx, tmp590
	mov	r0, #3	@ tmp641,
	ldr	r1, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r9	@ D.42533, OtherFieldDisptime
	cmpeq	r2, r8	@ D.42533, OtherFieldDisptime
	movhi	r2, r8	@ D.42533, OtherFieldDisptime
	movhi	r3, r9	@ D.42533, OtherFieldDisptime
	strd	r2, [r1, #32]	@ D.42533, D.42528,
	ldr	r3, [r4, #636]	@ pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag, pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, fp	@ pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.42532, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.42532, _120->fs_image.DispEnableFlag
	ldr	r3, [r4, #640]	@ pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance, pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r10	@ pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.42532, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.42532, _124->fs_image.DispFrameDistance
	ldr	r3, [r4, #644]	@ pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r7	@ D.42532, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.42532, _128->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #648]	@ pH264Ctx_28(D)->CurrPic.fs_image.GopNum, pH264Ctx_28(D)->CurrPic.fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r6	@ pH264Ctx_28(D)->CurrPic.fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r6	@ D.42532, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.42532, _132->fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.42529, _136->non_existing
	cmp	r3, #0	@ D.42529,
	ldrneb	r3, [r4, #554]	@ zero_extendqisi2	@ D.42529, pH264Ctx_28(D)->CurrPic.non_existing
	strb	r3, [r2]	@ D.42529, _136->non_existing
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _140->is_used, _140->is_used
	orr	r3, r3, ip	@ tmp626, _140->is_used,
	strb	r3, [r2, #1]	@ tmp626, _140->is_used
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ pH264Ctx_28(D)->CurrPic.pic_type, pH264Ctx_28(D)->CurrPic.pic_type
	ldr	r3, [r2, #540]	@ _145->pic_type, _145->pic_type
	cmp	r3, r1	@ _145->pic_type, pH264Ctx_28(D)->CurrPic.pic_type
	movcc	r3, r1	@ D.42532, pH264Ctx_28(D)->CurrPic.pic_type
	str	r3, [r2, #540]	@ D.42532, _145->pic_type
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	ip, [r3, #436]	@ tmp637, _149->top_field.structure
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	strb	r0, [r3, #400]	@ tmp641, _151->frame.structure
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.42532, pH264Ctx_28(D)->CurrPic.err_level
	str	r2, [r3, #456]	@ D.42532, _153->top_field.err_level
	ldr	r2, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r3, [r2, #492]	@ _156->bottom_field.err_level, _156->bottom_field.err_level
	ldr	r1, [r2, #456]	@ _156->top_field.err_level, _156->top_field.err_level
	add	r3, r3, r1	@ D.42532, _156->bottom_field.err_level, _156->top_field.err_level
	mov	r3, r3, lsr ip	@ D.42532, D.42532,
	str	r3, [r2, #420]	@ D.42532, _156->frame.err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #420]	@ _162->frame.err_level, _162->frame.err_level
	str	r2, [r3, #544]	@ _162->frame.err_level, _162->err_level
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #440]	@ _165->top_field.frame_store, _165->top_field.frame_store
	str	r2, [r3, #404]	@ _165->top_field.frame_store, _165->frame.frame_store
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	cmp	r3, ip	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag,
	ldr	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _169->mode_skip_flag,
	bne	.L2877	@,
.L2925:
	orr	r2, r2, ip	@ D.42529, _319->mode_skip_flag,
	b	.L2877	@
.L2928:
	str	r0, [sp]	@ ret,
	movw	r3, #2488	@,
	ldr	r2, .L2929	@,
	mov	r0, #22	@,
	ldr	r1, .L2929+4	@,
	bl	dprint_vfmw	@
	b	.L2850	@
.L2867:
	ldr	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r6, r1	@ ret, D.42528
	str	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #476]	@ D.42528,
	b	.L2868	@
.L2855:
	ldr	r3, [r4, #960]	@ D.42528, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r6, r1	@ ret, D.42528
	str	r3, [r4, #1544]	@ D.42528, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #440]	@ D.42528,
	b	.L2856	@
.L2930:
	.align	2
.L2929:
	.word	.LANCHOR0+264
	.word	.LC294
	.fnend
	.size	DirectOutput, .-DirectOutput
	.align	2
	.global	H264DEC_GetRemainImg
	.type	H264DEC_GetRemainImg, %function
H264DEC_GetRemainImg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r5, r0, #24576	@ tmp167, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_9(D)->DPB.used_size,
	addne	r7, r0, #26368	@ ivtmp.2871, pH264Ctx,
	movne	r6, #0	@ i,
	addne	r7, r7, #60	@ ivtmp.2871, ivtmp.2871,
	bne	.L2936	@,
	b	.L2937	@
.L2935:
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, r6	@ pH264Ctx_9(D)->DPB.used_size, i
	bls	.L2937	@,
.L2936:
	ldr	r1, [r7, #4]!	@ D.42566, MEM[base: _41, offset: 0B]
	add	r6, r6, #1	@ i, i,
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _11->is_reference, _11->is_reference
	cmp	r3, #0	@ _11->is_reference,
	beq	.L2935	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, r6	@ pH264Ctx_9(D)->DPB.used_size, i
	bhi	.L2936	@,
.L2937:
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	subs	r7, r0, #0	@ ret,
	bne	.L2951	@,
.L2934:
	mov	r6, #0	@ tmp170,
.L2938:
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	mov	r2, sp	@,
	add	r1, sp, #4	@ tmp171,,
	mov	r0, r4	@, pH264Ctx
	cmp	r3, #0	@ pH264Ctx_9(D)->DPB.used_size,
	beq	.L2952	@,
	bl	GetMinPOC	@
	ldr	r3, [sp]	@ pos, pos
	mov	r0, r4	@, pH264Ctx
	add	r3, r4, r3, lsl #2	@ D.42572, pH264Ctx, pos,
	add	r3, r3, #24576	@ tmp149, D.42572,
	ldr	r2, [r3, #1856]	@ D.42566, MEM[(struct H264_CTX_S *)_48 + 26432B]
	strb	r6, [r2, #4]	@ tmp170, _22->is_in_dpb
	ldr	r1, [r3, #1856]	@, MEM[(struct H264_CTX_S *)_48 + 26432B]
	ldr	r2, [r5, #2052]	@, pH264Ctx_9(D)->DPB.used_size
	bl	OutputFrmToVO	@
	ldr	r1, [sp]	@ D.42565, pos
	add	r3, r1, #6592	@ tmp159, D.42565,
	add	r3, r3, #16	@ tmp159, tmp159,
	ldr	r3, [r4, r3, asl #2]	@ tmp160, pH264Ctx_9(D)->DPB.fs
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_30].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_30].is_reference
	cmp	r3, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_30].is_reference,
	mov	r7, r0	@ ret,
	bne	.L2938	@,
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L2938	@
.L2952:
	cmp	r7, #0	@ ret,
	beq	.L2941	@,
	add	r0, r4, #8	@, pH264Ctx,
	bl	GetVoLastImageID	@
	mov	r7, r0	@ ret,
.L2941:
	mov	r0, r7	@, ret
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L2951:
	movw	r3, #2886	@,
	ldr	r2, .L2953	@,
	ldr	r1, .L2953+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L2934	@
.L2954:
	.align	2
.L2953:
	.word	.LANCHOR0+280
	.word	.LC329
	.fnend
	.size	H264DEC_GetRemainImg, .-H264DEC_GetRemainImg
	.align	2
	.global	InitDPB
	.type	InitDPB, %function
InitDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r8, r0, #0	@ pH264Ctx, pH264Ctx
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L2972	@,
	bl	ClearAllSlice	@
	add	r6, r8, #26368	@ ivtmp.2928, pH264Ctx,
	mov	r7, #0	@ i,
	add	r10, r8, #49152	@ tmp239, pH264Ctx,
	mov	r5, r6	@ ivtmp.2937, ivtmp.2928
	mov	r4, r6	@ ivtmp.2944, ivtmp.2937
	add	r5, r5, #192	@ ivtmp.2937, ivtmp.2937,
	add	r6, r6, #64	@ ivtmp.2928, ivtmp.2928,
	add	r4, r4, #128	@ ivtmp.2944, ivtmp.2944,
	mov	r9, r7	@ tmp244, i
.L2960:
	ldr	r3, [r6]	@ D.42672, MEM[base: _98, offset: 0B]
	mov	r2, #1	@,
	add	r7, r7, r2	@ i, i,
	cmp	r3, #0	@ D.42672,
	beq	.L2957	@,
	ldr	r1, [r3, #508]	@, _9->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2957:
	ldr	r3, [r4]	@ D.42672, MEM[base: _103, offset: 0B]
	mov	r2, #1	@,
	cmp	r3, #0	@ D.42672,
	beq	.L2958	@,
	ldr	r1, [r3, #508]	@, _12->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2958:
	ldr	r3, [r5]	@ D.42672, MEM[base: _102, offset: 0B]
	mov	r2, #1	@,
	cmp	r3, #0	@ D.42672,
	beq	.L2959	@,
	ldr	r1, [r3, #508]	@, _15->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2959:
	cmp	r7, #16	@ i,
	str	r9, [r5], #4	@ tmp244, MEM[base: _102, offset: 0B]
	mov	r2, #0	@ tmp171,
	str	r9, [r4], #4	@ tmp244, MEM[base: _103, offset: 0B]
	str	r9, [r6], #4	@ tmp244, MEM[base: _98, offset: 0B]
	bne	.L2960	@,
	add	r3, r8, #16384	@ tmp177, pH264Ctx,
	add	r4, r8, #24576	@ tmp238, pH264Ctx,
	ldr	r3, [r3, #1184]	@ pH264Ctx_5(D)->CurrSPS.dpb_size_plus1, pH264Ctx_5(D)->CurrSPS.dpb_size_plus1
	str	r2, [r4, #2052]	@ tmp171, pH264Ctx_5(D)->DPB.used_size
	sub	r3, r3, #1	@ D.42674, pH264Ctx_5(D)->CurrSPS.dpb_size_plus1,
	str	r2, [r4, #2056]	@ tmp171, pH264Ctx_5(D)->DPB.ref_frames_in_buffer
	str	r3, [r4, #2048]	@ D.42674, pH264Ctx_5(D)->DPB.size
	str	r2, [r4, #2060]	@ tmp171, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	str	r2, [r4, #2064]	@ tmp171, pH264Ctx_5(D)->DPB.max_long_term_pic_idx
	ldr	r1, [r10, #1544]	@ D.42672, pH264Ctx_5(D)->pDirectOutBuf
	cmp	r1, r2	@ D.42672,
	beq	.L2962	@,
	ldr	r3, [r10, #3616]	@ pH264Ctx_5(D)->OldDecMode, pH264Ctx_5(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_5(D)->OldDecMode,
	beq	.L2963	@,
.L2967:
	ldr	r3, [r10, #960]	@ D.42672, pH264Ctx_5(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.42672,
	beq	.L2965	@,
	ldr	r1, [r3, #508]	@, _25->logic_fs_id
	mov	r2, #1	@,
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2965:
	mov	r3, #0	@ tmp211,
	str	r3, [r10, #1544]	@ tmp211, pH264Ctx_5(D)->pDirectOutBuf
.L2962:
	add	r0, r8, #26624	@, pH264Ctx,
	mov	r1, #392	@,
	add	r0, r0, #20	@,,
	bl	__memzero	@
	ldr	r1, [r4, #2048]	@ pH264Ctx_5(D)->DPB.size, pH264Ctx_5(D)->DPB.size
	add	r3, r8, #51200	@ ivtmp.2915, pH264Ctx,
	mov	r0, #0	@ tmp221,
	str	r0, [r4, #2328]	@ tmp221, pH264Ctx_5(D)->APC.used_size
	mov	r2, r3	@ D.42678, ivtmp.2915
	add	r3, r3, #44	@ ivtmp.2915, ivtmp.2915,
	add	r2, r2, #112	@ D.42678, D.42678,
	str	r1, [r4, #2324]	@ pH264Ctx_5(D)->DPB.size, pH264Ctx_5(D)->APC.size
	mov	r1, r0	@ tmp242, tmp221
.L2969:
	str	r1, [r3, #4]!	@ tmp242, MEM[base: _47, offset: 0B]
	cmp	r3, r2	@ ivtmp.2915, D.42678
	bne	.L2969	@,
	add	r2, r8, #26880	@ ivtmp.2901, pH264Ctx,
	add	r3, r8, #27136	@ ivtmp.2887, pH264Ctx,
	add	r2, r2, #152	@ ivtmp.2901, ivtmp.2901,
	add	r3, r3, #28	@ ivtmp.2887, ivtmp.2887,
	mov	r0, #0	@ tmp241,
.L2970:
	str	r0, [r2, #4]!	@ tmp241, MEM[base: _41, offset: 0B]
	cmp	r2, r3	@ ivtmp.2901, ivtmp.2887
	mov	r1, #0	@ tmp227,
	bne	.L2970	@,
	add	r2, r8, #27136	@ D.42678, pH264Ctx,
	add	r8, r8, #20480	@ tmp237, pH264Ctx,
	add	r2, r2, #160	@ D.42678, D.42678,
	mov	ip, r1	@ tmp240, tmp227
	str	r1, [r8, #244]	@ tmp227, pH264Ctx_5(D)->CurrSlice.listXsize
.L2971:
	str	ip, [r3, #4]!	@ tmp240, MEM[base: _30, offset: 0B]
	cmp	r3, r2	@ ivtmp.2887, D.42678
	mov	r0, #0	@ tmp232,
	bne	.L2971	@,
	str	r0, [r8, #248]	@ tmp232, pH264Ctx_5(D)->CurrSlice.listXsize
.L2956:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2963:
	mov	r0, r8	@, pH264Ctx
	bl	OutputFrmToVO	@
	cmp	r0, #0	@ ret
	bne	.L2990	@,
.L2966:
	ldr	r3, [r10, #1544]	@ pH264Ctx_5(D)->pDirectOutBuf, pH264Ctx_5(D)->pDirectOutBuf
	cmp	r3, #0	@ pH264Ctx_5(D)->pDirectOutBuf,
	bne	.L2967	@,
	b	.L2962	@
.L2990:
	str	r0, [sp]	@ ret,
	movw	r3, #5331	@,
	ldr	r2, .L2991	@,
	mov	r0, #22	@,
	ldr	r1, .L2991+4	@,
	bl	dprint_vfmw	@
	b	.L2966	@
.L2972:
	mvn	r0, #0	@ D.42670,
	b	.L2956	@
.L2992:
	.align	2
.L2991:
	.word	.LANCHOR0+304
	.word	.LC294
	.fnend
	.size	InitDPB, .-InitDPB
	.align	2
	.global	ClearDPB
	.type	ClearDPB, %function
ClearDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	beq	.L2994	@,
	mov	r2, #332	@,
	ldr	r1, .L2999	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L2994:
	mov	r0, r4	@, pH264Ctx
	add	r4, r4, #49152	@ tmp115, pH264Ctx,
	bl	InitDPB	@
	mov	r3, #0	@ tmp116,
	mov	r0, r3	@, tmp116
	str	r3, [r4, #2180]	@ tmp116, pH264Ctx_3(D)->IDRFound
	str	r3, [r4, #3696]	@ tmp116, pH264Ctx_3(D)->FirstFrameDisplayed
	ldmfd	sp!, {r4, pc}	@
.L3000:
	.align	2
.L2999:
	.word	.LC330
	.fnend
	.size	ClearDPB, .-ClearDPB
	.align	2
	.global	DecVDM
	.type	DecVDM, %function
DecVDM:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #49152	@ tmp436, pH264Ctx,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.structure, pH264Ctx_9(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.structure,
	beq	.L3002	@,
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.field_pair_flag, pH264Ctx_9(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_9(D)->CurrPic.field_pair_flag,
	beq	.L3002	@,
.L3003:
	ldr	r5, [r4, #3676]	@ IPBDecMode, pH264Ctx_9(D)->advanced_cfg
	ldr	r3, [r4, #3616]	@ D.42690, pH264Ctx_9(D)->OldDecMode
	cmp	r5, #2	@ IPBDecMode,
	cmpne	r5, r3	@, IPBDecMode, D.42690
	beq	.L3004	@,
	sub	r3, r3, #2	@ D.42690, D.42690,
	cmp	r3, #1	@ D.42690,
	bls	.L3090	@,
.L3004:
	sub	r3, r5, #1	@ tmp253, IPBDecMode,
	str	r5, [r4, #3616]	@ IPBDecMode, pH264Ctx_9(D)->OldDecMode
	cmp	r3, #4	@ tmp253,
	ldrls	pc, [pc, r3, asl #2]	@ tmp253
	b	.L3006	@
.L3008:
	.word	.L3007
	.word	.L3009
	.word	.L3010
	.word	.L3006
	.word	.L3011
.L3002:
	ldr	r3, [r4, #3716]	@ pH264Ctx_9(D)->numTotalFrame, pH264Ctx_9(D)->numTotalFrame
	ldr	r1, [r4, #3720]	@ pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numOutputFrame
	add	r3, r3, #1	@ D.42689, pH264Ctx_9(D)->numTotalFrame,
	ldr	r2, [r6]	@ D.42688, pH264Ctx_9(D)->pstExtraData
	cmp	r3, r1	@ D.42689, pH264Ctx_9(D)->numOutputFrame
	movlt	r3, r1	@ D.42689, pH264Ctx_9(D)->numOutputFrame
	str	r3, [r4, #3716]	@ D.42689, pH264Ctx_9(D)->numTotalFrame
	str	r3, [r2, #440]	@ D.42689, MEM[(struct VDEC_CHAN_STATE_S *)_12 + 396B].total_frame_num
	ldr	r3, [r4, #3716]	@ pH264Ctx_9(D)->numTotalFrame, pH264Ctx_9(D)->numTotalFrame
	ldr	r1, [r4, #3720]	@ pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numOutputFrame
	rsb	r3, r1, r3	@ D.42689, pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numTotalFrame
	str	r3, [r2, #444]	@ D.42689, MEM[(struct VDEC_CHAN_STATE_S *)_12 + 396B].error_frame_num
	b	.L3003	@
.L3090:
	cmp	r5, #4	@ IPBDecMode,
	cmpne	r5, #1	@, IPBDecMode,
	bhi	.L3004	@,
	mov	r2, r5	@, IPBDecMode
	ldr	r1, .L3096	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	str	r5, [r4, #3616]	@ IPBDecMode, pH264Ctx_9(D)->OldDecMode
.L3010:
	mov	r0, r6	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r6	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.42686,
.L3083:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3009:
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L3014	@,
	ldr	r3, [r4, #3612]	@ D.42696, pH264Ctx_9(D)->SliceParaNum
	cmp	r3, #0	@ D.42696,
	beq	.L3013	@,
	ldr	r2, [r4, #3608]	@ pH264Ctx_9(D)->DecSlicePara, pH264Ctx_9(D)->DecSlicePara
	ldr	r2, [r2, #48]	@ _41->first_mb_in_slice, _41->first_mb_in_slice
	cmp	r2, #0	@ _41->first_mb_in_slice,
	bne	.L3014	@,
.L3013:
	ldr	r2, [r4, #1000]	@ pH264Ctx_9(D)->CurrPic.is_idr_pic, pH264Ctx_9(D)->CurrPic.is_idr_pic
	cmp	r3, #0	@ D.42696,
	str	r2, [r4, #3692]	@ pH264Ctx_9(D)->CurrPic.is_idr_pic, pH264Ctx_9(D)->PrevPicIsIDR
	beq	.L3086	@,
	cmp	r5, #4	@ IPBDecMode,
	ldr	r3, [r4, #996]	@ D.42690, pH264Ctx_9(D)->CurrPic.pic_type
	beq	.L3091	@,
.L3022:
	cmp	r3, #2	@ D.42690,
	beq	.L3092	@,
	cmp	r3, #1	@ D.42690,
	streq	r3, [r4, #2184]	@ D.42690, pH264Ctx_9(D)->PPicFound
.L3028:
	ldr	r2, [r4, #3652]	@ pH264Ctx_9(D)->TotalPicNum, pH264Ctx_9(D)->TotalPicNum
	mov	r0, #2	@,
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@, pH264Ctx_9(D)->CurrPic.structure
	sub	r2, r2, #1	@, pH264Ctx_9(D)->TotalPicNum,
	ldr	r1, .L3096+4	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #3652]	@ pH264Ctx_9(D)->TotalPicNum, pH264Ctx_9(D)->TotalPicNum
	ldr	ip, [r4, #1020]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->CurrPic.pic_mbs
	mov	r3, #1	@ tmp366,
	ldr	r1, [r4, #1024]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->CurrPic.stream_base_addr
	cmp	r0, #0	@ pH264Ctx_9(D)->TotalPicNum,
	ldr	r2, [r4, #3612]	@ pH264Ctx_9(D)->SliceParaNum, pH264Ctx_9(D)->SliceParaNum
	str	ip, [r4, #3136]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->DecPicPara.mbtodec
	str	r1, [r4, #3132]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->DecPicPara.stream_base_addr
	str	r2, [r4, #3336]	@ pH264Ctx_9(D)->SliceParaNum, pH264Ctx_9(D)->DecPicPara.SliceParaNum
	strb	r3, [r4, #2218]	@ tmp366, pH264Ctx_9(D)->DecPicPara.NewPicFlag
	beq	.L3083	@,
	ldr	r3, [r4, #996]	@ D.42690, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #0	@ D.42690,
	bne	.L3029	@,
	ldr	r2, .L3096+8	@ tmp383,
	ldr	ip, [r2]	@ D.42694, g_event_report
	cmp	ip, #0	@ D.42694,
	beq	.L3030	@,
	ldr	r2, [r4, #3340]	@ pH264SliceParam, pH264Ctx_9(D)->DecPicPara.pFirstSlice
	cmp	r2, #0	@ pH264SliceParam,
	beq	.L3031	@,
	mov	r1, r3	@ TotalSize, D.42690
.L3032:
	ldr	r3, [r2, #8]	@ pH264SliceParam_163->valid_bitlen, pH264SliceParam_163->valid_bitlen
	ldr	r0, [r2, #12]	@ pH264SliceParam_163->valid_bitlen, pH264SliceParam_163->valid_bitlen
	ldr	r2, [r2, #4056]	@ pH264SliceParam, pH264SliceParam_163->pNextSlice
	add	r3, r3, r0	@ D.42690, pH264SliceParam_163->valid_bitlen, pH264SliceParam_163->valid_bitlen
	add	r3, r3, #7	@ D.42690, D.42690,
	cmp	r2, #0	@ pH264SliceParam,
	add	r1, r1, r3, lsr #3	@ TotalSize, TotalSize, D.42690,
	bne	.L3032	@,
	mov	r3, r1	@ D.42690, TotalSize
.L3031:
	add	r2, sp, #8	@ tmp391,,
	mov	r1, #20	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	str	r3, [r2, #-4]!	@ D.42690, para
	blx	ip	@ D.42694
	ldr	r2, [r6]	@ D.42688, pH264Ctx_9(D)->pstExtraData
.L3033:
	add	r3, r6, #51200	@ D.42695, pH264Ctx,
	add	r3, r3, #168	@ D.42695, D.42695,
	str	r3, [r6, #360]	@ D.42695, pH264Ctx_9(D)->pH264DecParam
	ldr	r1, [r2, #708]	@ D.42689, _198->stDisParams.s32Mode
	cmp	r1, #1	@ D.42689,
	beq	.L3093	@,
	cmp	r1, #2	@ D.42689,
	beq	.L3094	@,
.L3036:
	ldr	r3, [r2, #512]	@ D.42689, _198->s32Compress_en
	mov	r0, #0	@ D.42686,
	str	r3, [r4, #3600]	@ D.42689, MEM[(struct H264_DEC_PIC_PARAM_S *)pH264Ctx_9(D) + 51368B].Compress_en
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3011:
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.pic_type,
	beq	.L3017	@,
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.structure, pH264Ctx_9(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.structure,
	beq	.L3014	@,
	ldr	r3, [r4, #1524]	@ pH264Ctx_9(D)->PrevPic.pic_type, pH264Ctx_9(D)->PrevPic.pic_type
	cmp	r3, #0	@ pH264Ctx_9(D)->PrevPic.pic_type,
	bne	.L3014	@,
.L3017:
	ldr	r1, [r6]	@ D.42688, pH264Ctx_9(D)->pstExtraData
	ldr	r2, [r1, #732]	@ _52->s32firstIdecodedflag, _52->s32firstIdecodedflag
	cmp	r2, #0	@ _52->s32firstIdecodedflag,
	bne	.L3014	@,
	ldr	r3, [r4, #3612]	@ D.42696, pH264Ctx_9(D)->SliceParaNum
	cmp	r3, #0	@ D.42696,
	beq	.L3013	@,
	ldr	r0, [r4, #3608]	@ pH264Ctx_9(D)->DecSlicePara, pH264Ctx_9(D)->DecSlicePara
	ldr	r0, [r0, #48]	@ _55->first_mb_in_slice, _55->first_mb_in_slice
	cmp	r0, #0	@ _55->first_mb_in_slice,
	beq	.L3013	@,
	strb	r2, [r4, #559]	@ _52->s32firstIdecodedflag, pH264Ctx_9(D)->CurrPic.mode_skip_flag
	mov	r0, r6	@, pH264Ctx
	str	r2, [r1, #732]	@ _52->s32firstIdecodedflag, _52->s32firstIdecodedflag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42686,
	b	.L3083	@
.L3007:
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	beq	.L3095	@,
.L3087:
	ldr	r3, [r4, #3612]	@ D.42696, pH264Ctx_9(D)->SliceParaNum
	b	.L3013	@
.L3006:
	ldr	r3, [r4, #3612]	@ D.42696, pH264Ctx_9(D)->SliceParaNum
	b	.L3013	@
.L3029:
	add	r3, r6, #24576	@ tmp396, pH264Ctx,
	ldr	r3, [r3, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_9(D)->DPB.used_size,
	bne	.L3030	@,
	ldr	r2, [r6]	@ D.42688, pH264Ctx_9(D)->pstExtraData
	ldr	r3, [r2, #12]	@ _108->s32DecOrderOutput, _108->s32DecOrderOutput
	cmp	r3, #2	@ _108->s32DecOrderOutput,
	beq	.L3033	@,
.L3086:
	mov	r0, r6	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42686,
	b	.L3083	@
.L3092:
	ldr	r3, [r4, #2184]	@ pH264Ctx_9(D)->PPicFound, pH264Ctx_9(D)->PPicFound
	cmp	r3, #2	@ pH264Ctx_9(D)->PPicFound,
	bne	.L3028	@,
	ldr	r3, [r6]	@ pH264Ctx_9(D)->pstExtraData, pH264Ctx_9(D)->pstExtraData
	ldr	r5, [r3, #12]	@ _78->s32DecOrderOutput, _78->s32DecOrderOutput
	cmp	r5, #0	@ _78->s32DecOrderOutput,
	bne	.L3028	@,
	ldr	r3, .L3096+12	@ tmp332,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ g_allow_B_before_P, g_allow_B_before_P
	cmp	r3, #1	@ g_allow_B_before_P,
	beq	.L3028	@,
	ldr	r3, [r4, #976]	@, pH264Ctx_9(D)->CurrPic.nal_ref_idc
	mov	r0, #1	@,
	ldr	r2, [r4, #980]	@, pH264Ctx_9(D)->CurrPic.thispoc
	ldr	r1, .L3096+16	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	mov	r2, r5	@, _78->s32DecOrderOutput
	ldr	r1, [r3, #508]	@, _86->logic_fs_id
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.42686,
	b	.L3083	@
.L3091:
	cmp	r3, #0	@ D.42690,
	bne	.L3022	@,
	ldr	r3, [r4, #2184]	@ pH264Ctx_9(D)->PPicFound, pH264Ctx_9(D)->PPicFound
	cmp	r3, #0	@ pH264Ctx_9(D)->PPicFound,
	moveq	r3, #2	@ tmp323,
	streq	r3, [r4, #2184]	@ tmp323, pH264Ctx_9(D)->PPicFound
	movne	r3, #1	@ tmp328,
	strne	r3, [r4, #2184]	@ tmp328, pH264Ctx_9(D)->PPicFound
	b	.L3028	@
.L3030:
	ldr	r2, [r6]	@ D.42688, pH264Ctx_9(D)->pstExtraData
	b	.L3033	@
.L3093:
	cmp	r3, #0	@ D.42695,
	beq	.L3036	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L3036	@,
	mov	r2, #0	@ tmp403,
	str	r2, [r6, #360]	@ tmp403, pH264Ctx_9(D)->pH264DecParam
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	ldr	r1, [r3, #508]	@, _124->logic_fs_id
	bl	FSP_SetDisplay	@
	b	.L3086	@
.L3094:
	ldr	r1, [r2, #712]	@ _198->stDisParams.s32DisNums, _198->stDisParams.s32DisNums
	cmp	r3, #0	@ D.42695,
	cmpne	r1, #0	@, _198->stDisParams.s32DisNums,
	ble	.L3036	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L3036	@,
	mov	r2, #0	@ tmp420,
	str	r2, [r6, #360]	@ tmp420, pH264Ctx_9(D)->pH264DecParam
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	ldr	r1, [r3, #508]	@, _132->logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r2, [r6]	@ D.42688, pH264Ctx_9(D)->pstExtraData
	mov	r0, r6	@, pH264Ctx
	ldr	r3, [r2, #712]	@ _135->stDisParams.s32DisNums, _135->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.42689, _135->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.42689, _135->stDisParams.s32DisNums
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42686,
	b	.L3083	@
.L3095:
	ldr	r3, [r4, #976]	@ pH264Ctx_9(D)->CurrPic.nal_ref_idc, pH264Ctx_9(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.nal_ref_idc,
	bne	.L3087	@,
.L3014:
	mov	r3, #1	@ tmp259,
	mov	r0, r6	@, pH264Ctx
	strb	r3, [r4, #559]	@ tmp259, pH264Ctx_9(D)->CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42686,
	b	.L3083	@
.L3097:
	.align	2
.L3096:
	.word	.LC331
	.word	.LC333
	.word	g_event_report
	.word	g_allow_B_before_P
	.word	.LC332
	.fnend
	.size	DecVDM, .-DecVDM
	.align	2
	.global	ReceivePacket
	.type	ReceivePacket, %function
ReceivePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	ip, [r1, #12]	@ pPacket_7(D)->stream_len, pPacket_7(D)->stream_len
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r1, #8]	@ pPacket_7(D)->strm_phy_addr, pPacket_7(D)->strm_phy_addr
	mov	r4, r1	@ pPacket, pPacket
	ldr	r2, [r1, #4]	@ pPacket_7(D)->p_stream, pPacket_7(D)->p_stream
	mov	r0, #7	@,
	ldr	r1, .L3151	@,
	str	ip, [sp]	@ pPacket_7(D)->stream_len,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	cmp	r3, #0	@ D.42713,
	beq	.L3102	@,
	ldrb	r2, [r4]	@ zero_extendqisi2	@ pPacket_7(D)->last_pack_in_nal, pPacket_7(D)->last_pack_in_nal
	cmp	r2, #1	@ pPacket_7(D)->last_pack_in_nal,
	beq	.L3149	@,
.L3100:
	ldr	r1, .L3151+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	cmp	r1, #0	@ D.42713,
	beq	.L3102	@,
	add	r3, r5, #49152	@ tmp192, pH264Ctx,
	ldr	r0, [r3, #3688]	@, pH264Ctx_13(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp194,
	str	r3, [r5, #368]	@ tmp194, pH264Ctx_13(D)->pCurrNal
.L3102:
	ldr	r3, [r4, #12]	@ pPacket_7(D)->stream_len, pPacket_7(D)->stream_len
	cmp	r3, #0	@ pPacket_7(D)->stream_len,
	ble	.L3103	@,
	ldr	r3, [r4, #4]	@ pPacket_7(D)->p_stream, pPacket_7(D)->p_stream
	cmp	r3, #0	@ pPacket_7(D)->p_stream,
	beq	.L3103	@,
	ldr	r3, [r4, #8]	@ pPacket_7(D)->strm_phy_addr, pPacket_7(D)->strm_phy_addr
	cmp	r3, #0	@ pPacket_7(D)->strm_phy_addr,
	beq	.L3103	@,
	ldrb	r3, [r5, #377]	@ zero_extendqisi2	@ pH264Ctx_13(D)->NalArray[0].is_valid, pH264Ctx_13(D)->NalArray[0].is_valid
	cmp	r3, #0	@ pH264Ctx_13(D)->NalArray[0].is_valid,
	beq	.L3118	@,
	mov	r2, r5	@ ivtmp.2983, pH264Ctx
	mov	r3, #1	@ Pos,
	b	.L3106	@
.L3105:
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L3116	@,
.L3106:
	ldrb	r1, [r2, #473]	@ zero_extendqisi2	@ MEM[base: _40, offset: 473B], MEM[base: _40, offset: 473B]
	add	r2, r2, #96	@ ivtmp.2983, ivtmp.2983,
	cmp	r1, #0	@ MEM[base: _40, offset: 473B],
	bne	.L3105	@,
	mov	r2, r3	@ D.42711, Pos
.L3104:
	mov	r1, r3, asl #7	@ tmp303, Pos,
	cmn	r2, #1	@ D.42711,
	sub	r3, r1, r3, asl #5	@ tmp304, tmp303, Pos,
	mov	r0, #1	@ tmp307,
	add	r3, r5, r3	@ tmp305, pH264Ctx, tmp304
	strb	r0, [r3, #377]	@ tmp307, pH264Ctx_13(D)->NalArray[Pos_129].is_valid
	beq	.L3116	@,
	mov	r3, r2, asl #7	@ tmp206, D.42711,
	mov	r1, #0	@ tmp229,
	sub	r3, r3, r2, asl #5	@ tmp207, tmp206, D.42711,
	add	r2, r3, #376	@ tmp208, tmp207,
	add	r3, r5, r3	@ tmp214, pH264Ctx, tmp207
	add	r2, r5, r2	@ D.42713, pH264Ctx, tmp208
	str	r2, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	r2, [r4, #4]	@ D.42714, pPacket_7(D)->p_stream
	str	r2, [r3, #384]	@ D.42714, MEM[(struct H264_NALU_S *)pH264Ctx_13(D)].NalArray[_110].stream[0].streamBuffer
	ldr	r2, [r4, #12]	@ pPacket_7(D)->stream_len, pPacket_7(D)->stream_len
	str	r2, [r3, #388]	@ pPacket_7(D)->stream_len, MEM[(struct H264_NALU_S *)pH264Ctx_13(D)].NalArray[_110].stream[0].bitstream_length
	ldr	r2, [r4, #8]	@ D.42715, pPacket_7(D)->strm_phy_addr
	str	r2, [r3, #392]	@ D.42715, MEM[(struct H264_NALU_S *)pH264Ctx_13(D)].NalArray[_110].stream[0].stream_phy_addr
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	str	r1, [r3, #24]	@ tmp229, _43->stream[0].bitsoffset
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	r2, [r4, #16]	@ D.42716, pPacket_7(D)->StreamID
	str	r2, [r3, #32]	@ D.42716, _45->stream[0].StreamID
	ldrd	r2, [r4, #24]	@ D.42720, pPacket,
	ldr	ip, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	strd	r2, [ip, #88]	@ D.42720, D.42713,
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	str	r0, [r3, #68]	@ tmp307, _51->nal_segment
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	strb	r1, [r3]	@ tmp229, _53->nal_used_segment
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldrb	r2, [r4]	@ zero_extendqisi2	@ D.42717, pPacket_7(D)->last_pack_in_nal
	strb	r2, [r3, #3]	@ D.42717, _55->nal_integ
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	b	.L3109	@
.L3149:
	ldr	r1, [r3, #68]	@ _14->nal_segment, _14->nal_segment
	cmp	r1, #1	@ _14->nal_segment,
	bhi	.L3100	@,
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ _14->nal_integ, _14->nal_integ
	cmp	r1, #1	@ _14->nal_integ,
	beq	.L3100	@,
	strb	r2, [r3, #3]	@ pPacket_7(D)->last_pack_in_nal, _14->nal_integ
	ldr	r3, [r4, #12]	@ pPacket_7(D)->stream_len, pPacket_7(D)->stream_len
	cmp	r3, #0	@ pPacket_7(D)->stream_len,
	ble	.L3111	@,
	ldr	r2, [r4, #4]	@ D.42714, pPacket_7(D)->p_stream
	cmp	r2, #0	@ D.42714,
	beq	.L3111	@,
	ldr	r3, [r4, #8]	@ pPacket_7(D)->strm_phy_addr, pPacket_7(D)->strm_phy_addr
	cmp	r3, #0	@ pPacket_7(D)->strm_phy_addr,
	beq	.L3111	@,
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	r1, [r3, #68]	@ D.42715, _70->nal_segment
	cmp	r1, #1	@ D.42715,
	bls	.L3150	@,
.L3112:
	add	r6, r5, #49152	@ tmp287, pH264Ctx,
	mov	r2, #1	@ tmp283,
	strb	r2, [r3, #3]	@ tmp283, _147->nal_integ
	ldr	r1, [r4, #16]	@, pPacket_7(D)->StreamID
	ldr	r0, [r6, #3688]	@, pH264Ctx_13(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L3151+8	@ tmp289,
	ldr	r3, [r3]	@ D.42718, g_event_report
	cmp	r3, #0	@ D.42718,
	beq	.L3147	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_13(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.42718
.L3147:
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
.L3109:
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ _143->nal_integ, _143->nal_integ
	clz	r0, r0	@ D.42712, _143->nal_integ
	mov	r0, r0, lsr #5	@ D.42712, D.42712,
	rsb	r0, r0, #0	@ D.42711, D.42712
.L3144:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3103:
	add	r5, r5, #49152	@ tmp237, pH264Ctx,
	ldr	r1, .L3151+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #16]	@, pPacket_7(D)->StreamID
	ldr	r0, [r5, #3688]	@, pH264Ctx_13(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L3151+8	@ tmp239,
	ldr	r3, [r3]	@ D.42718, g_event_report
	cmp	r3, #0	@ D.42718,
	beq	.L3148	@,
	ldr	r0, [r5, #3688]	@, pH264Ctx_13(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.42718
.L3148:
	mvn	r0, #0	@ D.42711,
	b	.L3144	@
.L3111:
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	b	.L3112	@
.L3150:
	mov	ip, r1, asl #5	@ tmp246, D.42715,
	mov	r0, #0	@ tmp272,
	sub	r1, ip, r1, asl #2	@ tmp247, tmp246, D.42715,
	add	r3, r3, r1	@ tmp248, D.42713, tmp247
	str	r2, [r3, #8]	@ D.42714, _70->stream[_71].streamBuffer
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	ip, [r4, #12]	@ pPacket_7(D)->stream_len, pPacket_7(D)->stream_len
	ldr	r1, [r3, #68]	@ _73->nal_segment, _73->nal_segment
	mov	r2, r1, asl #5	@ tmp253, _73->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp254, tmp253, _73->nal_segment,
	add	r3, r3, r2	@ tmp255, D.42713, tmp254
	str	ip, [r3, #12]	@ pPacket_7(D)->stream_len, _73->stream[_74].bitstream_length
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	ip, [r4, #8]	@ D.42715, pPacket_7(D)->strm_phy_addr
	ldr	r1, [r3, #68]	@ _78->nal_segment, _78->nal_segment
	mov	r2, r1, asl #5	@ tmp261, _78->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp262, tmp261, _78->nal_segment,
	add	r3, r3, r2	@ tmp263, D.42713, tmp262
	str	ip, [r3, #16]	@ D.42715, _78->stream[_79].stream_phy_addr
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	r1, [r3, #68]	@ _82->nal_segment, _82->nal_segment
	mov	r2, r1, asl #5	@ tmp268, _82->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp269, tmp268, _82->nal_segment,
	add	r3, r3, r2	@ tmp270, D.42713, tmp269
	str	r0, [r3, #24]	@ tmp272, _82->stream[_83].bitsoffset
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	r0, [r4, #16]	@ D.42716, pPacket_7(D)->StreamID
	ldr	r1, [r3, #68]	@ _85->nal_segment, _85->nal_segment
	mov	r2, r1, asl #5	@ tmp276, _85->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp277, tmp276, _85->nal_segment,
	add	r3, r3, r2	@ tmp278, D.42713, tmp277
	str	r0, [r3, #32]	@ D.42716, _85->stream[_86].StreamID
	ldr	r2, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #68]	@ _89->nal_segment, _89->nal_segment
	add	r3, r3, #1	@ D.42715, _89->nal_segment,
	str	r3, [r2, #68]	@ D.42715, _89->nal_segment
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	ldr	r2, [r3, #12]	@ _24->stream[0].bitstream_length, _24->stream[0].bitstream_length
	cmp	r2, #4096	@ _24->stream[0].bitstream_length,
	bcs	.L3109	@,
	mov	r0, r5	@, pH264Ctx
	bl	CombinePacket.part.10	@
	ldr	r3, [r5, #368]	@ D.42713, pH264Ctx_13(D)->pCurrNal
	b	.L3109	@
.L3116:
	ldr	r1, .L3151+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	ldr	r3, .L3151+8	@ tmp200,
	ldr	r3, [r3]	@ D.42718, g_event_report
	cmp	r3, #0	@ D.42718,
	beq	.L3148	@,
	add	r5, r5, #49152	@ tmp202, pH264Ctx,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r5, #3688]	@, pH264Ctx_13(D)->ChanID
	blx	r3	@ D.42718
	mvn	r0, #0	@ D.42711,
	b	.L3144	@
.L3118:
	mov	r2, r3	@ D.42711, pH264Ctx_13(D)->NalArray[0].is_valid
	b	.L3104	@
.L3152:
	.align	2
.L3151:
	.word	.LC334
	.word	.LC335
	.word	g_event_report
	.word	.LC337
	.word	.LC336
	.fnend
	.size	ReceivePacket, .-ReceivePacket
	.align	2
	.global	ClearAll
	.type	ClearAll, %function
ClearAll:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r0	@ pH264Ctx, pH264Ctx
	mov	r4, r1	@ flag, flag
	mov	r0, #22	@,
	ldr	r1, .L3180	@,
	add	r8, r10, #49152	@ tmp267, pH264Ctx,
	bl	dprint_vfmw	@
	mov	r0, r10	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r10	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r10	@, pH264Ctx
	bl	InitDPB	@
	cmp	r4, #0	@ flag,
	beq	.L3154	@,
	add	r1, r10, #8	@, pH264Ctx,
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
.L3155:
	add	r4, r10, #27392	@ ivtmp.3050, pH264Ctx,
	mov	r7, #0	@ i,
	add	r4, r4, #124	@ ivtmp.3050, ivtmp.3050,
	mov	r6, r7	@ tmp271, i
	mvn	r9, #0	@ tmp272,
.L3158:
	sub	r5, r4, #16	@ ivtmp.3017, ivtmp.3050,
	sub	r3, r4, #212	@ D.42801, ivtmp.3050,
	mov	r2, #1	@ tmp164,
	mov	ip, #17	@ tmp165,
	mov	r0, #16	@ tmp166,
	mov	r1, #2	@ tmp171,
	strb	r6, [r4, #-212]	@ tmp271, MEM[base: _116, offset: 4294967084B]
	strb	r6, [r4, #-211]	@ tmp271, MEM[base: _116, offset: 4294967085B]
	strb	r6, [r4, #-210]	@ tmp271, MEM[base: _116, offset: 4294967086B]
	str	r6, [r4, #308]	@ tmp271, MEM[base: _116, offset: 308B]
	str	r6, [r4, #300]	@ tmp271, MEM[base: _116, offset: 300B]
	str	r9, [r4, #304]	@ tmp272, MEM[base: _116, offset: 304B]
	str	r6, [r4, #312]	@ tmp271, MEM[base: _116, offset: 312B]
	strb	r6, [r4, #-208]	@ tmp271, MEM[base: _116, offset: 4294967088B]
	str	r7, [r4, #-28]	@ i, MEM[base: _116, offset: 4294967268B]
	strb	r6, [r4, #188]	@ tmp271, MEM[base: _116, offset: 188B]
	str	r2, [r4, #320]	@ tmp164, MEM[base: _116, offset: 320B]
	strb	r2, [r4, #224]	@ tmp164, MEM[base: _116, offset: 224B]
	str	ip, [r4, #336]	@ tmp165, MEM[base: _116, offset: 336B]
	str	r0, [r4, #340]	@ tmp166, MEM[base: _116, offset: 340B]
	str	r3, [r4, #264]	@ D.42801, MEM[base: _116, offset: 264B]
	str	r3, [r4, #228]	@ D.42801, MEM[base: _116, offset: 228B]
	str	r3, [r4, #192]	@ D.42801, MEM[base: _116, offset: 192B]
	strb	r1, [r4, #260]	@ tmp171, MEM[base: _116, offset: 260B]
.L3157:
	ldr	r1, [r5, #4]!	@ D.42798, MEM[base: _110, offset: 0B]
	cmp	r1, #0	@ D.42798,
	beq	.L3156	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5]	@ tmp271, MEM[base: _110, offset: 0B]
.L3156:
	cmp	r5, r4	@ ivtmp.3017, ivtmp.3050
	bne	.L3157	@,
	add	r7, r7, #1	@ i, i,
	add	r4, r5, #560	@ ivtmp.3050, ivtmp.3017,
	cmp	r7, #40	@ i,
	bne	.L3158	@,
	add	r4, r10, #49664	@ ivtmp.3003, pH264Ctx,
	add	r5, r10, #49920	@ D.42794, pH264Ctx,
	add	r4, r4, #244	@ ivtmp.3003, ivtmp.3003,
	add	r5, r5, #4	@ D.42794, D.42794,
	mov	r6, #0	@ tmp269,
.L3160:
	ldr	r1, [r4, #4]!	@ D.42798, MEM[base: _8, offset: 0B]
	cmp	r1, #0	@ D.42798,
	beq	.L3159	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r4]	@ tmp269, MEM[base: _8, offset: 0B]
.L3159:
	cmp	r4, r5	@ ivtmp.3003, D.42794
	bne	.L3160	@,
	ldr	r3, [r8, #2192]	@ pH264Ctx_15(D)->TotalUsrDatNum, pH264Ctx_15(D)->TotalUsrDatNum
	cmp	r3, #0	@ pH264Ctx_15(D)->TotalUsrDatNum,
	beq	.L3164	@,
	add	r5, r10, #51200	@ ivtmp.2989, pH264Ctx,
	mov	r4, #0	@ i,
	add	r5, r5, #144	@ ivtmp.2989, ivtmp.2989,
	mov	r6, r4	@ tmp268, i
.L3163:
	ldr	r1, [r5, #4]!	@ D.42798, MEM[base: _57, offset: 0B]
	add	r4, r4, #1	@ i, i,
	cmp	r1, #0	@ D.42798,
	beq	.L3162	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5]	@ tmp268, MEM[base: _57, offset: 0B]
.L3162:
	ldr	r3, [r8, #2192]	@ pH264Ctx_15(D)->TotalUsrDatNum, pH264Ctx_15(D)->TotalUsrDatNum
	cmp	r3, r4	@ pH264Ctx_15(D)->TotalUsrDatNum, i
	bhi	.L3163	@,
.L3164:
	add	r5, r10, #20480	@ tmp218, pH264Ctx,
	add	r3, r10, #24576	@ tmp215, pH264Ctx,
	mov	r4, #0	@ tmp188,
	add	r0, r5, #200	@,,
	str	r4, [r8, #2192]	@ tmp188, pH264Ctx_15(D)->TotalUsrDatNum
	mov	r1, #1648	@,
	str	r4, [r8, #3664]	@ tmp188, pH264Ctx_15(D)->IDRPicOfCurrPic
	str	r4, [r8, #2172]	@ tmp188, pH264Ctx_15(D)->AllowStartDec
	str	r4, [r8, #3612]	@ tmp188, pH264Ctx_15(D)->SliceParaNum
	str	r4, [r8, #3672]	@ tmp188, pH264Ctx_15(D)->MaxBytesReceived
	str	r4, [r8, #3620]	@ tmp188, pH264Ctx_15(D)->IModeOutFlag
	str	r4, [r8, #2180]	@ tmp188, pH264Ctx_15(D)->IDRFound
	str	r4, [r8, #3696]	@ tmp188, pH264Ctx_15(D)->FirstFrameDisplayed
	str	r4, [r8, #2184]	@ tmp188, pH264Ctx_15(D)->PPicFound
	str	r4, [r10, #368]	@ tmp188, pH264Ctx_15(D)->pCurrNal
	str	r4, [r3, #1804]	@ tmp188, pH264Ctx_15(D)->CurrMarkIdx
	strb	r4, [r5, #3896]	@ tmp188, pH264Ctx_15(D)->Mark[1].is_valid
	strb	r4, [r5, #1892]	@ tmp188, pH264Ctx_15(D)->Mark[0].is_valid
	strb	r4, [r5, #3897]	@ tmp188, pH264Ctx_15(D)->Mark[1].no_output_of_prior_pics_flag
	strb	r4, [r5, #1893]	@ tmp188, pH264Ctx_15(D)->Mark[0].no_output_of_prior_pics_flag
	bl	__memzero	@
	mov	r2, #2	@ tmp237,
	mov	r3, #1	@ tmp241,
	strb	r2, [r5, #200]	@ tmp237, pH264Ctx_15(D)->CurrSlice.slice_type
	strb	r3, [r5, #205]	@ tmp241, pH264Ctx_15(D)->CurrSlice.new_pic_flag
	mov	r0, r4	@, tmp188
	mov	r3, #256	@ tmp253,
	strb	r4, [r8, #552]	@ tmp188, pH264Ctx_15(D)->CurrPic.state
	strb	r4, [r8, #1512]	@ tmp188, pH264Ctx_15(D)->PrevPic.structure
	str	r4, [r8, #1516]	@ tmp188, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	str	r3, [r8, #1520]	@ tmp253, pH264Ctx_15(D)->PrevPic.frame_num
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3154:
	add	r0, r10, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FSP_EmptyInstance	@
	b	.L3155	@
.L3181:
	.align	2
.L3180:
	.word	.LC338
	.fnend
	.size	ClearAll, .-ClearAll
	.align	2
	.global	InsertFrmInDPB
	.type	InsertFrmInDPB, %function
InsertFrmInDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r2	@ pCurrPic, pCurrPic
	ldrb	r8, [r2, #3]	@ zero_extendqisi2	@ D.42806, pCurrPic_25(D)->structure
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pos, pos
	cmp	r8, #1	@ D.42806,
	beq	.L3184	@,
	bcc	.L3185	@,
	cmp	r8, #2	@ D.42806,
	beq	.L3186	@,
	mov	r2, r8	@, D.42806
	ldr	r1, .L3282	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.42808,
.L3190:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3186:
	ldr	r3, [r2, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	mov	r2, #3	@ tmp684,
	strb	r2, [r3, #400]	@ tmp684, _282->frame.structure
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pCurrPic_25(D)->field_pair_flag, pCurrPic_25(D)->field_pair_flag
	cmp	r3, #0	@ pCurrPic_25(D)->field_pair_flag,
	mov	r3, r1, asl #2	@ D.42815, pos,
	beq	.L3206	@,
	add	r7, r0, r3	@ D.42814, pH264Ctx, D.42815
	add	r7, r7, #24576	@ tmp882, D.42814,
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	cmp	r2, #0	@ D.42805,
	beq	.L3206	@,
	strb	r8, [r2, #472]	@ D.42806, _285->bottom_field.structure
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldr	r2, [r4, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	str	r2, [r3, #476]	@ D.42805, _287->bottom_field.frame_store
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_long_term
	strb	r2, [r3, #473]	@ D.42809, _290->bottom_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_short_term
	strb	r2, [r3, #474]	@ D.42809, _293->bottom_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldr	r2, [r4, #440]	@ D.42811, pCurrPic_25(D)->bottompoc
	str	r2, [r3, #488]	@ D.42811, _296->bottom_field.poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldr	r2, [r4, #444]	@ D.42810, pCurrPic_25(D)->pic_type
	str	r2, [r3, #496]	@ D.42810, _299->bottom_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldr	r2, [r4, #452]	@ D.42810, pCurrPic_25(D)->err_level
	str	r2, [r3, #492]	@ D.42810, _302->bottom_field.err_level
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldr	r1, [r3, #456]	@ _305->top_field.err_level, _305->top_field.err_level
	ldr	r2, [r3, #492]	@ _305->bottom_field.err_level, _305->bottom_field.err_level
	add	r2, r2, r1	@ D.42810, _305->bottom_field.err_level, _305->top_field.err_level
	str	r2, [r3, #420]	@ D.42810, _305->frame.err_level
	str	r2, [r3, #544]	@ D.42810, _305->err_level
	add	r1, r4, #16	@, pCurrPic,
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.42806, _311->non_existing
	cmp	r3, #0	@ D.42806,
	ldrneb	r3, [r4, #2]	@ zero_extendqisi2	@ D.42806, pCurrPic_25(D)->non_existing
	strb	r3, [r2]	@ D.42806, _311->non_existing
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _315->is_used, _315->is_used
	orr	r3, r3, #2	@ tmp784, _315->is_used,
	strb	r3, [r2, #1]	@ tmp784, _315->is_used
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	cmp	r3, #1	@ pCurrPic_25(D)->mode_skip_flag,
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _320->mode_skip_flag,
	orreq	r2, r2, #2	@ D.42806, _320->mode_skip_flag,
	strb	r2, [r3, #3]	@ D.42806, _2->mode_skip_flag
	mov	r2, #392	@,
	ldr	lr, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	add	r0, lr, #8	@, D.42805,
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.42805,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _326->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _326->fs_image.PTS
	strd	r8, [sp]	@ OtherFieldUsertag, %sfp
	ldrd	r8, [lr, #32]	@ OtherFieldDispTime, D.42805,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _326->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _326->fs_image.DispFrameDistance
	strd	r8, [sp, #8]	@ OtherFieldDispTime,,
	str	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r9, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _326->fs_image.DistanceBeforeFirstFrame
	ldr	r8, [lr, #88]	@ OtherFieldGopNum, _326->fs_image.GopNum
	str	r3, [sp, #16]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #16]	@ OtherFieldPts, %sfp
	ldr	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r0, [r4, #24]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	ldr	r1, [r4, #28]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	and	r2, ip, r3	@ tmp808, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp813, tmp808,
	and	r1, r1, r0	@ tmp802, pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	movne	r2, #1	@ tmp813,
	cmn	r1, #1	@ tmp802,
	ldrd	r0, [sp]	@ OtherFieldUsertag, %sfp
	movne	r2, #0	@ tmp813,
	cmp	r2, #0	@ tmp813,
	ldrne	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	strne	ip, [r2, #16]	@ OtherFieldPts, _336->fs_image.PTS
	strne	r3, [r2, #20]	@ OtherFieldPts, _336->fs_image.PTS
	ldrd	r2, [r4, #32]	@ D.42812, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	cmp	r3, r1	@ D.42812, OtherFieldUsertag
	cmpeq	r2, r0	@ D.42812, OtherFieldUsertag
	movhi	r2, r0	@ D.42812, OtherFieldUsertag
	movhi	r3, r1	@ D.42812, OtherFieldUsertag
	ldrd	r0, [sp, #8]	@ OtherFieldDispTime,,
	strd	r2, [ip, #24]	@ D.42812, D.42805,
	ldrd	r2, [r4, #40]	@ D.42812, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	cmp	r3, r1	@ D.42812, OtherFieldDispTime
	cmpeq	r2, r0	@ D.42812, OtherFieldDispTime
	movhi	r2, r0	@ D.42812, OtherFieldDispTime
	movhi	r3, r1	@ D.42812, OtherFieldDispTime
	strd	r2, [ip, #32]	@ D.42812, D.42805,
	ldr	r3, [r4, #84]	@ pCurrPic_25(D)->fs_image.DispEnableFlag, pCurrPic_25(D)->fs_image.DispEnableFlag
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	cmp	r3, fp	@ pCurrPic_25(D)->fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.42810, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.42810, _346->fs_image.DispEnableFlag
	ldr	r3, [r4, #88]	@ pCurrPic_25(D)->fs_image.DispFrameDistance, pCurrPic_25(D)->fs_image.DispFrameDistance
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	cmp	r3, r10	@ pCurrPic_25(D)->fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.42810, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.42810, _350->fs_image.DispFrameDistance
	ldr	r3, [r4, #92]	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	cmp	r3, r9	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r9	@ D.42810, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.42810, _354->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #96]	@ pCurrPic_25(D)->fs_image.GopNum, pCurrPic_25(D)->fs_image.GopNum
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	cmp	r3, r8	@ pCurrPic_25(D)->fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r8	@ D.42810, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.42810, _358->fs_image.GopNum
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L3218	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L3218	@,
.L3219:
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldr	r3, [r2, #496]	@ _372->bottom_field.pic_type, _372->bottom_field.pic_type
	ldr	r1, [r2, #460]	@ _372->top_field.pic_type, _372->top_field.pic_type
	cmp	r3, r1	@ _372->bottom_field.pic_type, _372->top_field.pic_type
	movcc	r3, r1	@ D.42810, _372->top_field.pic_type
	str	r3, [r2, #540]	@ D.42810, _372->pic_type
	ldr	r2, [r4, #428]	@ D.42811, pCurrPic_25(D)->thispoc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	str	r2, [r3, #524]	@ D.42811, _377->poc
	ldr	r0, [r7, #1856]	@, MEM[(struct H264_CTX_S *)_626 + 26432B]
	bl	CombineFldsToFrm	@
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldr	r3, [r2, #552]	@ D.42810, _382->apc_idc
	ldr	r2, [r2, #488]	@ _382->bottom_field.poc, _382->bottom_field.poc
	add	r3, r3, #6656	@ tmp862, D.42810,
	add	r3, r3, #52	@ tmp862, tmp862,
	add	r3, r6, r3, lsl #2	@ tmp863, pH264Ctx, tmp862,
	str	r2, [r3, #4]	@ _382->bottom_field.poc, pH264Ctx_28(D)->APC.poc
	b	.L3205	@
.L3185:
	ldr	r2, [r2, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	add	r7, r0, r1, lsl #2	@ D.42814, pH264Ctx, pos,
	add	r7, r7, #24576	@ tmp879, D.42814,
	mov	r3, #3	@ tmp433,
	str	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->non_existing
	strb	r1, [r2]	@ D.42809, _27->non_existing
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	strb	r3, [r2, #1]	@ tmp433, _33->is_used
	ldr	r1, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldrb	r1, [r1, #4]	@ zero_extendqisi2	@ D.42809, _36->is_in_dpb
	strb	r1, [r2, #4]	@ D.42809, _35->is_in_dpb
	ldr	r1, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r1, #532]	@ D.42810, _40->is_displayed
	str	r1, [r2, #532]	@ D.42810, _39->is_displayed
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	cmp	r1, #0	@ pCurrPic_25(D)->is_long_term,
	beq	.L3281	@,
.L3187:
	strb	r3, [r2, #2]	@ D.42806, _43->is_reference
	add	r1, r4, #16	@, pCurrPic,
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	mov	r2, #392	@,
	ldr	r0, [r4, #476]	@ D.42810, pCurrPic_25(D)->pmv_address_idc
	mov	r9, #0	@ tmp464,
	str	r0, [r3, #548]	@ D.42810, _47->pmv_address_idc
	ldr	r0, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	add	r0, r0, #8	@, D.42805,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #452]	@ D.42810, pCurrPic_25(D)->err_level
	mov	lr, #1	@ tmp493,
	mov	ip, #2	@ tmp497,
	mov	r2, r9	@, tmp464
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #420]	@ D.42810, _52->frame.err_level
	str	r1, [r3, #544]	@ D.42810, _52->err_level
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	str	r1, [r3, #476]	@ D.42805, _56->bottom_field.frame_store
	str	r1, [r3, #440]	@ D.42805, _56->top_field.frame_store
	str	r1, [r3, #404]	@ D.42805, _56->frame.frame_store
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #420]	@ D.42810, pCurrPic_25(D)->long_term_frame_idx
	str	r1, [r3, #520]	@ D.42810, _61->long_term_frame_idx
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #416]	@ D.42810, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.42810, _64->frame_num
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	strb	r9, [r3, #400]	@ tmp464, _67->frame.structure
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #401]	@ D.42809, _69->frame.is_long_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #402]	@ D.42809, _72->frame.is_short_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #444]	@ D.42810, pCurrPic_25(D)->pic_type
	str	r1, [r3, #424]	@ D.42810, _75->frame.pic_type
	str	r1, [r3, #540]	@ D.42810, _75->pic_type
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ pCurrPic_25(D)->MbaffFrameFlag, pCurrPic_25(D)->MbaffFrameFlag
	str	r1, [r3, #536]	@ pCurrPic_25(D)->MbaffFrameFlag, _79->MbaffFrameFlag
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #428]	@ D.42811, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.42811, _83->poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #432]	@ D.42811, pCurrPic_25(D)->framepoc
	str	r1, [r3, #416]	@ D.42811, _86->frame.poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #436]	@ D.42811, pCurrPic_25(D)->toppoc
	str	r1, [r3, #452]	@ D.42811, _89->top_field.poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r4, #440]	@ D.42811, pCurrPic_25(D)->bottompoc
	str	r1, [r3, #488]	@ D.42811, _92->bottom_field.poc
	ldrb	r1, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	cmp	r1, lr	@ pCurrPic_25(D)->mode_skip_flag,
	moveq	r8, #3	@ D.42806,
	strb	r8, [r3, #3]	@ D.42806, _95->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_498 + 26432B]
	ldr	r1, [r3, #404]	@ D.42813, _98->frame.frame_store
	ldrb	fp, [r3, #401]	@ zero_extendqisi2	@ D.42809, _98->frame.is_long_term
	ldrb	r10, [r3, #402]	@ zero_extendqisi2	@ D.42809, _98->frame.is_short_term
	ldr	r8, [r3, #420]	@ D.42810, _98->frame.err_level
	ldr	r7, [r3, #424]	@ D.42810, _98->frame.pic_type
	strb	lr, [r3, #436]	@ tmp493, _98->top_field.structure
	strb	ip, [r3, #472]	@ tmp497, _98->bottom_field.structure
	strb	fp, [r3, #437]	@ D.42809, _98->top_field.is_long_term
	strb	fp, [r3, #473]	@ D.42809, _98->bottom_field.is_long_term
	strb	r10, [r3, #438]	@ D.42809, _98->top_field.is_short_term
	strb	r10, [r3, #474]	@ D.42809, _98->bottom_field.is_short_term
	str	r8, [r3, #456]	@ D.42810, _98->top_field.err_level
	str	r8, [r3, #492]	@ D.42810, _98->bottom_field.err_level
	str	r7, [r3, #460]	@ D.42810, _98->top_field.pic_type
	str	r7, [r3, #496]	@ D.42810, _98->bottom_field.pic_type
	str	r1, [r3, #440]	@ D.42813, _98->top_field.frame_store
	str	r1, [r3, #476]	@ D.42813, _98->bottom_field.frame_store
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret
	movne	r3, r0	@, ret
	movwne	r2, #2125	@,
	movne	r0, r9	@, tmp464
	bne	.L3279	@,
.L3205:
	add	r5, r5, #6592	@ tmp868, pos,
	add	r3, r6, #49152	@ tmp872, pH264Ctx,
	add	r5, r5, #16	@ tmp868, tmp868,
	mov	r2, #1	@,
	ldr	r0, [r3, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r3, [r6, r5, asl #2]	@ tmp869, pH264Ctx_28(D)->DPB.fs
	ldr	r1, [r3, #508]	@, _462->logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, #0	@ D.42808,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3184:
	ldr	r3, [r2, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	mov	r2, #3	@ tmp501,
	strb	r2, [r3, #400]	@ tmp501, _105->frame.structure
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pCurrPic_25(D)->field_pair_flag, pCurrPic_25(D)->field_pair_flag
	cmp	r3, #0	@ pCurrPic_25(D)->field_pair_flag,
	mov	r3, r1, asl #2	@ D.42815, pos,
	beq	.L3191	@,
	add	r7, r0, r3	@ D.42814, pH264Ctx, D.42815
	add	r7, r7, #24576	@ tmp880, D.42814,
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	cmp	r2, #0	@ D.42805,
	beq	.L3191	@,
	strb	r8, [r2, #436]	@ D.42806, _108->top_field.structure
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldr	r2, [r4, #444]	@ D.42810, pCurrPic_25(D)->pic_type
	str	r2, [r3, #460]	@ D.42810, _110->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_long_term
	strb	r2, [r3, #437]	@ D.42809, _113->top_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_short_term
	strb	r2, [r3, #438]	@ D.42809, _116->top_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldr	r2, [r4, #436]	@ D.42811, pCurrPic_25(D)->toppoc
	str	r2, [r3, #452]	@ D.42811, _119->top_field.poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldr	r2, [r4, #444]	@ D.42810, pCurrPic_25(D)->pic_type
	str	r2, [r3, #460]	@ D.42810, _122->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldr	r2, [r4, #452]	@ D.42810, pCurrPic_25(D)->err_level
	str	r2, [r3, #456]	@ D.42810, _125->top_field.err_level
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldr	r1, [r3, #456]	@ _128->top_field.err_level, _128->top_field.err_level
	ldr	r2, [r3, #492]	@ _128->bottom_field.err_level, _128->bottom_field.err_level
	add	r2, r2, r1	@ D.42810, _128->bottom_field.err_level, _128->top_field.err_level
	str	r2, [r3, #420]	@ D.42810, _128->frame.err_level
	str	r2, [r3, #544]	@ D.42810, _128->err_level
	add	r1, r4, #16	@, pCurrPic,
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.42806, _134->non_existing
	cmp	r3, #0	@ D.42806,
	ldrneb	r3, [r4, #2]	@ zero_extendqisi2	@ D.42806, pCurrPic_25(D)->non_existing
	strb	r3, [r2]	@ D.42806, _134->non_existing
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _138->is_used, _138->is_used
	orr	r3, r3, #1	@ tmp602, _138->is_used,
	strb	r3, [r2, #1]	@ tmp602, _138->is_used
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	cmp	r3, #1	@ pCurrPic_25(D)->mode_skip_flag,
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _143->mode_skip_flag,
	orreq	r2, r2, #1	@ D.42806, _143->mode_skip_flag,
	strb	r2, [r3, #3]	@ D.42806, _1->mode_skip_flag
	mov	r2, #392	@,
	ldr	lr, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	add	r0, lr, #8	@, D.42805,
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.42805,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _149->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _149->fs_image.PTS
	strd	r8, [sp]	@ OtherFieldUsertag, %sfp
	ldrd	r8, [lr, #32]	@ OtherFieldDispTime, D.42805,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _149->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _149->fs_image.DispFrameDistance
	strd	r8, [sp, #8]	@ OtherFieldDispTime,,
	str	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r9, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _149->fs_image.DistanceBeforeFirstFrame
	ldr	r8, [lr, #88]	@ OtherFieldGopNum, _149->fs_image.GopNum
	str	r3, [sp, #16]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #16]	@ OtherFieldPts, %sfp
	ldr	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r0, [r4, #24]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	ldr	r1, [r4, #28]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	and	r2, ip, r3	@ tmp626, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp631, tmp626,
	and	r1, r1, r0	@ tmp620, pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	movne	r2, #1	@ tmp631,
	cmn	r1, #1	@ tmp620,
	ldrd	r0, [sp]	@ OtherFieldUsertag, %sfp
	movne	r2, #0	@ tmp631,
	cmp	r2, #0	@ tmp631,
	ldrne	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	strne	ip, [r2, #16]	@ OtherFieldPts, _159->fs_image.PTS
	strne	r3, [r2, #20]	@ OtherFieldPts, _159->fs_image.PTS
	ldrd	r2, [r4, #32]	@ D.42812, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	cmp	r3, r1	@ D.42812, OtherFieldUsertag
	cmpeq	r2, r0	@ D.42812, OtherFieldUsertag
	movhi	r2, r0	@ D.42812, OtherFieldUsertag
	movhi	r3, r1	@ D.42812, OtherFieldUsertag
	ldrd	r0, [sp, #8]	@ OtherFieldDispTime,,
	strd	r2, [ip, #24]	@ D.42812, D.42805,
	ldrd	r2, [r4, #40]	@ D.42812, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	cmp	r3, r1	@ D.42812, OtherFieldDispTime
	cmpeq	r2, r0	@ D.42812, OtherFieldDispTime
	movhi	r2, r0	@ D.42812, OtherFieldDispTime
	movhi	r3, r1	@ D.42812, OtherFieldDispTime
	strd	r2, [ip, #32]	@ D.42812, D.42805,
	ldr	r3, [r4, #84]	@ pCurrPic_25(D)->fs_image.DispEnableFlag, pCurrPic_25(D)->fs_image.DispEnableFlag
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	cmp	r3, fp	@ pCurrPic_25(D)->fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.42810, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.42810, _169->fs_image.DispEnableFlag
	ldr	r3, [r4, #88]	@ pCurrPic_25(D)->fs_image.DispFrameDistance, pCurrPic_25(D)->fs_image.DispFrameDistance
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	cmp	r3, r10	@ pCurrPic_25(D)->fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.42810, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.42810, _173->fs_image.DispFrameDistance
	ldr	r3, [r4, #92]	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	cmp	r3, r9	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r9	@ D.42810, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.42810, _177->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #96]	@ pCurrPic_25(D)->fs_image.GopNum, pCurrPic_25(D)->fs_image.GopNum
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	cmp	r3, r8	@ pCurrPic_25(D)->fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r8	@ D.42810, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.42810, _181->fs_image.GopNum
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L3202	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L3202	@,
.L3203:
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldr	r3, [r2, #496]	@ _195->bottom_field.pic_type, _195->bottom_field.pic_type
	ldr	r1, [r2, #460]	@ _195->top_field.pic_type, _195->top_field.pic_type
	cmp	r3, r1	@ _195->bottom_field.pic_type, _195->top_field.pic_type
	movcc	r3, r1	@ D.42810, _195->top_field.pic_type
	str	r3, [r2, #540]	@ D.42810, _195->pic_type
	ldr	r2, [r4, #428]	@ D.42811, pCurrPic_25(D)->thispoc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	str	r2, [r3, #524]	@ D.42811, _200->poc
	ldr	r0, [r7, #1856]	@, MEM[(struct H264_CTX_S *)_532 + 26432B]
	bl	CombineFldsToFrm	@
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldr	r3, [r2, #552]	@ D.42810, _205->apc_idc
	ldr	r2, [r2, #452]	@ _205->top_field.poc, _205->top_field.poc
	add	r3, r3, #6656	@ tmp680, D.42810,
	add	r3, r3, #36	@ tmp680, tmp680,
	add	r3, r6, r3, lsl #2	@ tmp681, pH264Ctx, tmp680,
	str	r2, [r3, #4]	@ _205->top_field.poc, pH264Ctx_28(D)->APC.poc
	b	.L3205	@
.L3191:
	add	r7, r6, r3	@ D.42814, pH264Ctx, D.42815
	ldr	r3, [r4, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	add	r7, r7, #24576	@ tmp881, D.42814,
	mov	r2, #1	@ tmp510,
	str	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	strb	r2, [r3, #436]	@ tmp510, _210->top_field.structure
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r4, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	str	r1, [r3, #440]	@ D.42805, _213->top_field.frame_store
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #437]	@ D.42809, _216->top_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #438]	@ D.42809, _219->top_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r4, #436]	@ D.42811, pCurrPic_25(D)->toppoc
	str	r1, [r3, #452]	@ D.42811, _222->top_field.poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r4, #444]	@ D.42810, pCurrPic_25(D)->pic_type
	str	r1, [r3, #460]	@ D.42810, _225->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r4, #452]	@ D.42810, pCurrPic_25(D)->err_level
	str	r1, [r3, #456]	@ D.42810, _228->top_field.err_level
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r3, #456]	@ D.42810, _231->top_field.err_level
	str	r1, [r3, #420]	@ D.42810, _231->frame.err_level
	str	r1, [r3, #544]	@ D.42810, _231->err_level
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->non_existing
	strb	r1, [r3]	@ D.42809, _235->non_existing
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	strb	r2, [r3, #1]	@ tmp510, _238->is_used
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ D.42809, _241->is_in_dpb
	strb	r2, [r3, #4]	@ D.42809, _240->is_in_dpb
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r2, [r2, #532]	@ D.42810, _245->is_displayed
	str	r2, [r3, #532]	@ D.42810, _244->is_displayed
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L3193	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L3193	@,
.L3194:
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	mov	r8, #0	@ tmp553,
	mov	r2, #392	@,
	add	r1, r4, #16	@, pCurrPic,
	str	r8, [r3, #536]	@ tmp553, _256->MbaffFrameFlag
	ldr	r0, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	add	r0, r0, #8	@, D.42805,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r4, #476]	@ D.42810, pCurrPic_25(D)->pmv_address_idc
	mov	r2, #1	@,
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #548]	@ D.42810, _260->pmv_address_idc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r4, #416]	@ D.42810, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.42810, _263->frame_num
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r4, #428]	@ D.42811, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.42811, _266->poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldr	r1, [r4, #444]	@ D.42810, pCurrPic_25(D)->pic_type
	str	r1, [r3, #540]	@ D.42810, _269->pic_type
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r1, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	rsb	r3, r2, r3	@ tmp571,, pCurrPic_25(D)->mode_skip_flag
	clz	r3, r3	@ tmp571, tmp571
	mov	r3, r3, lsr #5	@ tmp571, tmp571,
	strb	r3, [r1, #3]	@ tmp571, _272->mode_skip_flag
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret
	beq	.L3205	@,
	mov	r3, r0	@, ret
	movw	r2, #2178	@,
	mov	r0, r8	@, tmp553
.L3279:
	ldr	r1, .L3282+4	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.42808,
	b	.L3190	@
.L3206:
	add	r7, r6, r3	@ D.42814, pH264Ctx, D.42815
	ldr	r3, [r4, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	add	r7, r7, #24576	@ tmp883, D.42814,
	mov	r2, #2	@ tmp693,
	str	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	strb	r2, [r3, #472]	@ tmp693, _387->bottom_field.structure
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r4, #408]	@ D.42805, pCurrPic_25(D)->frame_store
	str	r1, [r3, #476]	@ D.42805, _390->bottom_field.frame_store
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #473]	@ D.42809, _393->bottom_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #474]	@ D.42809, _396->bottom_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r4, #440]	@ D.42811, pCurrPic_25(D)->bottompoc
	str	r1, [r3, #488]	@ D.42811, _399->bottom_field.poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r4, #444]	@ D.42810, pCurrPic_25(D)->pic_type
	str	r1, [r3, #496]	@ D.42810, _402->bottom_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r4, #452]	@ D.42810, pCurrPic_25(D)->err_level
	str	r1, [r3, #492]	@ D.42810, _405->bottom_field.err_level
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r3, #456]	@ D.42810, _408->top_field.err_level
	str	r1, [r3, #420]	@ D.42810, _408->frame.err_level
	str	r1, [r3, #544]	@ D.42810, _408->err_level
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.42809, pCurrPic_25(D)->non_existing
	strb	r1, [r3]	@ D.42809, _412->non_existing
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	strb	r2, [r3, #1]	@ tmp693, _415->is_used
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ D.42809, _418->is_in_dpb
	strb	r2, [r3, #4]	@ D.42809, _417->is_in_dpb
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r2, [r2, #532]	@ D.42810, _422->is_displayed
	str	r2, [r3, #532]	@ D.42810, _421->is_displayed
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L3208	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L3208	@,
.L3209:
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	mov	r9, #0	@ tmp736,
	mov	r2, #392	@,
	add	r1, r4, #16	@, pCurrPic,
	str	r9, [r3, #536]	@ tmp736, _433->MbaffFrameFlag
	ldr	r0, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	add	r0, r0, #8	@, D.42805,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r4, #476]	@ D.42810, pCurrPic_25(D)->pmv_address_idc
	mov	r2, #2	@,
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #548]	@ D.42810, _437->pmv_address_idc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r4, #416]	@ D.42810, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.42810, _440->frame_num
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r4, #428]	@ D.42811, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.42811, _443->poc
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldr	r1, [r4, #444]	@ D.42810, pCurrPic_25(D)->pic_type
	str	r1, [r3, #496]	@ D.42810, _446->bottom_field.pic_type
	str	r1, [r3, #540]	@ D.42810, _446->pic_type
	ldrb	r1, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	cmp	r1, #1	@ pCurrPic_25(D)->mode_skip_flag,
	moveq	r8, r2	@ D.42806,
	movne	r8, r9	@ D.42806,
	strb	r8, [r3, #3]	@ D.42806, _450->mode_skip_flag
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@ ret
	movne	r3, r0	@, ret
	movwne	r2, #2323	@,
	movne	r0, r9	@, tmp736
	beq	.L3205	@,
	b	.L3279	@
.L3281:
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ D.42806, pCurrPic_25(D)->is_short_term
	cmp	r3, #0	@ D.42806,
	movne	r3, #3	@ D.42806,
	b	.L3187	@
.L3208:
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	mov	r2, #2	@ tmp729,
	strb	r2, [r3, #2]	@ tmp729, _427->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_678 + 26432B]
	ldreq	r2, [r4, #420]	@ D.42810, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.42810, _430->long_term_frame_idx
	b	.L3209	@
.L3193:
	ldr	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	mov	r2, #1	@ tmp546,
	strb	r2, [r3, #2]	@ tmp546, _250->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, r2	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_584 + 26432B]
	ldreq	r2, [r4, #420]	@ D.42810, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.42810, _253->long_term_frame_idx
	b	.L3194	@
.L3202:
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2	@ _187->is_reference, _187->is_reference
	orr	r3, r3, #1	@ tmp662, _187->is_reference,
	strb	r3, [r2, #2]	@ tmp662, _187->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_532 + 26432B]
	ldreq	r2, [r4, #420]	@ D.42810, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.42810, _192->long_term_frame_idx
	b	.L3203	@
.L3218:
	ldr	r2, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2	@ _364->is_reference, _364->is_reference
	orr	r3, r3, #2	@ tmp844, _364->is_reference,
	strb	r3, [r2, #2]	@ tmp844, _364->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.42805, MEM[(struct H264_CTX_S *)_626 + 26432B]
	ldreq	r2, [r4, #420]	@ D.42810, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.42810, _369->long_term_frame_idx
	b	.L3219	@
.L3283:
	.align	2
.L3282:
	.word	.LC340
	.word	.LC339
	.fnend
	.size	InsertFrmInDPB, .-InsertFrmInDPB
	.align	2
	.global	StorePicInDPB
	.type	StorePicInDPB, %function
StorePicInDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r3, r0, #16384	@ tmp259, pH264Ctx,
	add	r4, r0, #49152	@ tmp581, pH264Ctx,
	mov	r7, #0	@ tmp260,
	str	r7, [r3, #3436]	@ tmp260, pH264Ctx_30(D)->CurrPOC.last_has_mmco_5
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldrb	r2, [r4, #555]	@ zero_extendqisi2	@ D.42859, pH264Ctx_30(D)->CurrPic.structure
	.pad #16
	sub	sp, sp, #16	@,,
	sub	r1, r2, #2	@ D.42860, D.42859,
	clz	r1, r1	@ D.42860, D.42860
	mov	r1, r1, lsr #5	@ D.42860, D.42860,
	str	r1, [r3, #3440]	@ D.42860, pH264Ctx_30(D)->CurrPOC.last_pic_bottom_field
	ldrb	r0, [r4, #552]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.state, pH264Ctx_30(D)->CurrPic.state
	cmp	r0, r7	@ pH264Ctx_30(D)->CurrPic.state,
	beq	.L3430	@,
	ldr	r0, [r4, #3616]	@ pH264Ctx_30(D)->OldDecMode, pH264Ctx_30(D)->OldDecMode
	ldr	r3, [r4, #3704]	@ pH264Ctx_30(D)->PicCounter, pH264Ctx_30(D)->PicCounter
	cmp	r0, #2	@ pH264Ctx_30(D)->OldDecMode,
	str	r3, [r4, #3700]	@ pH264Ctx_30(D)->PicCounter, pH264Ctx_30(D)->PrevStorePicCounter
	beq	.L3431	@,
	ldr	r6, [r5]	@ D.42863, pH264Ctx_30(D)->pstExtraData
	ldr	r3, [r6, #12]	@ D.42861, _40->s32DecOrderOutput
	cmp	r3, #0	@ D.42861,
	ble	.L3432	@,
	ldrb	r1, [r4, #554]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.non_existing, pH264Ctx_30(D)->CurrPic.non_existing
	cmp	r1, #0	@ pH264Ctx_30(D)->CurrPic.non_existing,
	bne	.L3291	@,
.L3442:
	sub	r1, r2, #1	@ tmp301, D.42859,
	ldr	r7, [r4, #960]	@ pOutFrameStore, pH264Ctx_30(D)->CurrPic.frame_store
	cmp	r1, #1	@ tmp301,
	movhi	r1, #0	@ D.42860,
	movls	r1, #1	@ D.42860,
	cmp	r2, #0	@ D.42859,
	beq	.L3292	@,
	ldrb	r0, [r7, #1]	@ zero_extendqisi2	@ pOutFrameStore_44->is_used, pOutFrameStore_44->is_used
	cmp	r0, #0	@ pOutFrameStore_44->is_used,
	moveq	ip, r1	@, tmp308, D.42860
	orrne	ip, r1, #1	@,, tmp308, D.42860
	cmp	ip, #0	@ tmp308,
	beq	.L3291	@,
	cmp	r1, #0	@ D.42860,
	beq	.L3433	@,
.L3360:
	ldr	r1, [r4, #3696]	@ D.42864, pH264Ctx_30(D)->FirstFrameDisplayed
	cmp	r1, #0	@ D.42864,
	bne	.L3295	@,
	add	r0, r4, #1024	@, tmp581,
	mov	r3, #1	@ tmp313,
	add	r0, r0, #8	@,,
	str	r3, [r4, #3696]	@ tmp313, pH264Ctx_30(D)->FirstFrameDisplayed
	mov	r2, #480	@,
	add	r1, r4, #552	@, tmp581,
	bl	memcpy	@
	ldr	r3, [r6, #12]	@ D.42861, _40->s32DecOrderOutput
.L3291:
	cmp	r3, #2	@ D.42861,
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	beq	.L3434	@,
.L3316:
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	beq	.L3325	@,
	ldr	r3, [r4, #3680]	@ D.42862, pH264Ctx_30(D)->ref_error_thr
	ldr	r2, [r4, #1004]	@ D.42862, pH264Ctx_30(D)->CurrPic.err_level
	cmp	r3, r2	@ D.42862, D.42862
	bcs	.L3326	@,
	ldrb	r6, [r4, #554]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.non_existing, pH264Ctx_30(D)->CurrPic.non_existing
	cmp	r6, #0	@ pH264Ctx_30(D)->CurrPic.non_existing,
	beq	.L3435	@,
.L3326:
	mov	r0, r5	@, pH264Ctx
	bl	Marking	@
	subs	r2, r0, #0	@ ret,
	beq	.L3328	@,
	ldr	r1, .L3456	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	movw	r3, #3693	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3292:
	cmp	r1, #0	@ D.42860,
	bne	.L3360	@,
.L3298:
	add	r8, r5, #49664	@ pOutPic, pH264Ctx,
	add	r8, r8, #40	@ pOutPic, pOutPic,
.L3300:
	cmp	r2, #0	@ D.42859,
	beq	.L3301	@,
	ldrb	r3, [r8, #1]	@ zero_extendqisi2	@ pOutPic_6->field_pair_flag, pOutPic_6->field_pair_flag
	cmp	r3, #1	@ pOutPic_6->field_pair_flag,
	beq	.L3436	@,
.L3301:
	ldr	r3, [r8, #452]	@ D.42862, pOutPic_6->err_level
	str	r3, [r7, #544]	@ D.42862, pOutFrameStore_7->err_level
.L3302:
	mov	r1, r7	@, pOutFrameStore
	mov	r0, r5	@, pH264Ctx
	bl	GetImagePara	@
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L3437	@,
	ldrd	r2, [r8, #24]	@ D.42865, pOutPic,
	strd	r2, [r6, #8]	@ D.42865, pImg,
	ldrd	r2, [r8, #32]	@ D.42865, pOutPic,
	strd	r2, [r6, #16]	@ D.42865, pImg,
	ldrd	r2, [r8, #40]	@ D.42865, pOutPic,
	strd	r2, [r6, #24]	@ D.42865, pImg,
	ldr	r3, [r8, #84]	@ D.42862, pOutPic_6->fs_image.DispEnableFlag
	str	r3, [r6, #68]	@ D.42862, pImg_71->DispEnableFlag
	ldr	r3, [r8, #88]	@ D.42862, pOutPic_6->fs_image.DispFrameDistance
	str	r3, [r6, #72]	@ D.42862, pImg_71->DispFrameDistance
	ldr	r3, [r8, #92]	@ D.42862, pOutPic_6->fs_image.DistanceBeforeFirstFrame
	str	r3, [r6, #76]	@ D.42862, pImg_71->DistanceBeforeFirstFrame
	ldr	r3, [r8, #96]	@ D.42862, pOutPic_6->fs_image.GopNum
	str	r3, [r6, #80]	@ D.42862, pImg_71->GopNum
	ldr	r3, [r7, #544]	@ D.42862, pOutFrameStore_7->err_level
	cmp	r3, #0	@ D.42862,
	str	r3, [r6, #180]	@ D.42862, pImg_71->error_level
	beq	.L3309	@,
	ldr	r2, [r6, #140]	@ pImg_71->format, pImg_71->format
	ands	r8, r2, #3	@ D.42862, pImg_71->format,
	beq	.L3438	@,
.L3307:
	ldr	r2, [r5]	@ pH264Ctx_30(D)->pstExtraData, pH264Ctx_30(D)->pstExtraData
	ldr	r2, [r2, #4]	@ _95->s32OutErrThr, _95->s32OutErrThr
	cmp	r2, r3	@ _95->s32OutErrThr, D.42862
	bcc	.L3439	@,
.L3309:
	mov	r2, #1	@,
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, #3688]	@ pH264Ctx_30(D)->ChanID, pH264Ctx_30(D)->ChanID
	add	r3, r5, #8	@, pH264Ctx,
	str	r6, [sp]	@ pImg,
	mov	r2, r5	@, pH264Ctx
	mov	r1, #0	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.42861,
	beq	.L3440	@,
	mov	r2, #0	@,
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	bl	FSP_SetDisplay	@
.L3311:
	ldr	r3, [r5]	@ pH264Ctx_30(D)->pstExtraData, pH264Ctx_30(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _272->s32FastForwardBackwardSpeed, _272->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.42871, _272->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.42871, D.42871,
	cmp	r3, #4096	@ D.42871,
	movcc	r3, #0	@ tmp377,
	strcc	r3, [r6, #84]	@ tmp377, pImg_71->u32RepeatCnt
	bcs	.L3441	@,
.L3313:
	ldr	r2, [r4, #3696]	@ pH264Ctx_30(D)->FirstFrameDisplayed, pH264Ctx_30(D)->FirstFrameDisplayed
	ldr	r3, [r4, #3712]	@ pH264Ctx_30(D)->PicOutCounter, pH264Ctx_30(D)->PicOutCounter
	cmp	r2, #2	@ pH264Ctx_30(D)->FirstFrameDisplayed,
	add	r3, r3, #2	@ D.42862, pH264Ctx_30(D)->PicOutCounter,
	str	r3, [r4, #3712]	@ D.42862, pH264Ctx_30(D)->PicOutCounter
	movne	r3, #1	@ tmp392,
	strne	r3, [r7, #528]	@ tmp392, pOutFrameStore_7->eFoState
	mov	r3, #2	@ tmp395,
	str	r3, [r4, #3696]	@ tmp395, pH264Ctx_30(D)->FirstFrameDisplayed
	ldr	r3, [r5]	@ pH264Ctx_30(D)->pstExtraData, pH264Ctx_30(D)->pstExtraData
	ldr	r3, [r3, #12]	@ D.42861, _333->s32DecOrderOutput
	cmp	r3, #2	@ D.42861,
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	bne	.L3316	@,
	b	.L3434	@
.L3430:
	ldr	r1, .L3456+8	@,
	bl	dprint_vfmw	@
	movw	r3, #3428	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
.L3359:
	ldr	r3, [r4, #960]	@ pH264Ctx_30(D)->CurrPic.frame_store, pH264Ctx_30(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	mvn	r6, #0	@ ret,
	ldr	r1, [r3, #508]	@, _261->logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r3, r6	@, ret
	mov	r2, #3856	@,
	ldr	r1, .L3456+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #960]	@ D.42869, pH264Ctx_30(D)->CurrPic.frame_store
	mov	r3, #0	@ tmp563,
	strb	r3, [r2, #4]	@ tmp563, _265->is_in_dpb
	ldr	r2, [r4, #960]	@ D.42869, pH264Ctx_30(D)->CurrPic.frame_store
	strb	r3, [r2, #1]	@ tmp563, _267->is_used
.L3357:
	mov	r0, r6	@ D.42858, ret
	mov	r3, #0	@ tmp571,
	strb	r3, [r4, #552]	@ tmp571, pH264Ctx_30(D)->CurrPic.state
.L3418:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3432:
	ldr	r1, [r4, #3696]	@ pH264Ctx_30(D)->FirstFrameDisplayed, pH264Ctx_30(D)->FirstFrameDisplayed
	cmp	r1, #2	@ pH264Ctx_30(D)->FirstFrameDisplayed,
	beq	.L3291	@,
	ldrb	r1, [r4, #554]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.non_existing, pH264Ctx_30(D)->CurrPic.non_existing
	cmp	r1, #0	@ pH264Ctx_30(D)->CurrPic.non_existing,
	bne	.L3291	@,
	b	.L3442	@
.L3434:
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	beq	.L3318	@,
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.nal_unit_type, pH264Ctx_30(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_30(D)->CurrPic.nal_unit_type,
	beq	.L3319	@,
.L3323:
	mov	r0, r5	@, pH264Ctx
	add	r6, r5, #24576	@ tmp406, pH264Ctx,
	bl	SimpleSlideDPB	@
	add	r2, r5, #49664	@, pH264Ctx,
	ldr	r1, [r6, #2052]	@, pH264Ctx_30(D)->DPB.used_size
	add	r2, r2, #40	@,,
	mov	r0, r5	@, pH264Ctx
	bl	InsertFrmInDPB	@
	subs	r7, r0, #0	@ ret,
	beq	.L3443	@,
	mov	r3, r7	@, ret
	movw	r2, #3659	@,
	ldr	r1, .L3456+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	movw	r3, #3660	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3433:
	cmp	r0, #0	@ pOutFrameStore_44->is_used,
	beq	.L3291	@,
	b	.L3298	@
.L3328:
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	beq	.L3318	@,
	movw	r3, #3707	@,
	ldr	r2, .L3456+16	@,
	ldr	r1, .L3456+20	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L3318:
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.field_pair_flag, pH264Ctx_30(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_30(D)->CurrPic.field_pair_flag,
	beq	.L3330	@,
	add	r6, r5, #24576	@ tmp582, pH264Ctx,
.L3334:
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	beq	.L3444	@,
	ldr	r2, [r6, #2056]	@ D.42862, pH264Ctx_30(D)->DPB.ref_frames_in_buffer
	ldr	r1, [r6, #2060]	@ D.42862, pH264Ctx_30(D)->DPB.ltref_frames_in_buffer
	ldr	r3, [r6, #2048]	@ D.42872, pH264Ctx_30(D)->DPB.size
	add	r0, r1, r2	@ D.42862, D.42862, D.42862
	cmp	r3, r0	@ D.42872, D.42862
	bls	.L3445	@,
.L3341:
	mvn	r9, #0	@ pre_used_size,
	mov	r8, r9	@ pre_pos, pre_used_size
	b	.L3348	@
.L3349:
	bl	GetMinPOC	@
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	bne	.L3342	@,
	ldr	r2, [r4, #980]	@ pH264Ctx_30(D)->CurrPic.thispoc, pH264Ctx_30(D)->CurrPic.thispoc
	ldr	r3, [sp, #8]	@ min_poc, min_poc
	cmp	r2, r3	@ pH264Ctx_30(D)->CurrPic.thispoc, min_poc
	blt	.L3446	@,
.L3342:
	ldr	r7, [r6, #2052]	@ pre_used_size, pH264Ctx_30(D)->DPB.used_size
	cmp	r7, r9	@ pre_used_size, pre_used_size
	ldrne	r8, [sp, #12]	@ pre_pos, pos
	bne	.L3346	@,
	ldr	r3, [sp, #12]	@ D.42862, pos
	cmp	r3, r8	@ D.42862, pre_pos
	beq	.L3447	@,
	mov	r8, r3	@ pre_pos, D.42862
.L3346:
	mov	r1, r8	@, pre_pos
	mov	r0, r5	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	mov	r9, r7	@ pre_used_size, pre_used_size
	cmn	r0, #1	@ ret,
	mov	r10, r0	@ ret,
	beq	.L3347	@,
	ldr	r3, [r6, #2048]	@ D.42872, pH264Ctx_30(D)->DPB.size
.L3348:
	ldr	ip, [r6, #2052]	@ D.42862, pH264Ctx_30(D)->DPB.used_size
	add	r2, sp, #12	@ tmp588,,
	add	r1, sp, #8	@ tmp589,,
	mov	r0, r5	@, pH264Ctx
	cmp	ip, r3	@ D.42862, D.42872
	bcs	.L3349	@,
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	beq	.L3350	@,
	ldrb	r3, [r4, #556]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.is_long_term, pH264Ctx_30(D)->CurrPic.is_long_term
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.is_long_term,
	bne	.L3350	@,
	ldr	r2, [r6, #2056]	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer, pH264Ctx_30(D)->DPB.ref_frames_in_buffer
	cmp	r2, #0	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer,
	beq	.L3350	@,
	add	r2, r5, #26368	@ ivtmp.3059, pH264Ctx,
	mov	r7, r3	@ tmp583, i
	add	r2, r2, #124	@ ivtmp.3059, ivtmp.3059,
	b	.L3355	@
.L3352:
	ldr	r1, [r6, #2056]	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer, pH264Ctx_30(D)->DPB.ref_frames_in_buffer
	cmp	r1, r3	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer, i
	bls	.L3448	@,
.L3355:
	ldr	r1, [r2, #4]!	@ D.42869, MEM[base: _192, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	r0, [r4, #968]	@ pH264Ctx_30(D)->CurrPic.frame_num, pH264Ctx_30(D)->CurrPic.frame_num
	ldr	ip, [r1, #512]	@ _219->frame_num, _219->frame_num
	cmp	ip, r0	@ _219->frame_num, pH264Ctx_30(D)->CurrPic.frame_num
	bne	.L3352	@,
	strb	r7, [r1, #2]	@ tmp583, _219->is_reference
	ldr	r1, [r2]	@ D.42869, MEM[base: _192, offset: 0B]
	ldrb	r0, [r1, #4]	@ zero_extendqisi2	@ _223->is_in_dpb, _223->is_in_dpb
	cmp	r0, #1	@ _223->is_in_dpb,
	streq	r0, [r1, #532]	@ _223->is_in_dpb, _223->is_displayed
	ldreq	r1, [r2]	@ D.42869, MEM[base: _192, offset: 0B]
	streqb	r7, [r1, #4]	@ tmp583, _226->is_in_dpb
	ldreq	r1, [r2]	@ D.42869, MEM[base: _192, offset: 0B]
	ldr	lr, [r4, #2168]	@ D.42862, pH264Ctx_30(D)->TotalPmvNum
	ldr	ip, [r1, #548]	@ D.42862, _347->pmv_address_idc
	add	r0, ip, #12800	@ tmp535, D.42862,
	cmp	ip, lr	@ D.42862, D.42862
	add	r0, r0, #12	@ tmp535, tmp535,
	strne	r7, [r5, r0, asl #2]	@ tmp583, pH264Ctx_30(D)->PmvStoreUsedFlag
	strne	lr, [r1, #548]	@ D.42862, _347->pmv_address_idc
	b	.L3352	@
.L3448:
	ldr	ip, [r6, #2052]	@ D.42862, pH264Ctx_30(D)->DPB.used_size
.L3350:
	add	r2, r5, #49664	@, pH264Ctx,
	mov	r1, ip	@, D.42862
	add	r2, r2, #40	@,,
	mov	r0, r5	@, pH264Ctx
	bl	InsertFrmInDPB	@
	ldr	r2, [r6, #2052]	@ D.42862, pH264Ctx_30(D)->DPB.used_size
	str	r2, [r4, #1540]	@ D.42862, pH264Ctx_30(D)->PrevPic.Dpb_pos
	subs	r3, r0, #0	@ ret,
	bne	.L3449	@,
	add	r2, r2, #1	@ D.42862, D.42862,
	mov	r0, r5	@, pH264Ctx
	str	r2, [r6, #2052]	@ D.42862, pH264Ctx_30(D)->DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
.L3324:
	mov	r6, #0	@ ret,
	b	.L3357	@
.L3325:
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.field_pair_flag, pH264Ctx_30(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_30(D)->CurrPic.field_pair_flag,
	beq	.L3330	@,
	add	r6, r5, #24576	@ tmp582, pH264Ctx,
	ldr	r3, [r6, #2048]	@ D.42872, pH264Ctx_30(D)->DPB.size
	b	.L3341	@
.L3444:
	ldr	r3, [r6, #2048]	@ D.42872, pH264Ctx_30(D)->DPB.size
	b	.L3341	@
.L3330:
	ldr	r3, [r4, #1544]	@ D.42869, pH264Ctx_30(D)->pDirectOutBuf
	ldr	r0, [r4, #960]	@ D.42869, pH264Ctx_30(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.42869,
	rsb	r1, r3, r0	@ tmp454, D.42869, D.42869
	clz	r1, r1	@ tmp454, tmp454
	mov	r1, r1, lsr #5	@ tmp454, tmp454,
	moveq	r1, #0	@ tmp454,
	cmp	r1, #0	@ tmp454,
	beq	.L3450	@,
	mov	r0, r5	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L3451	@,
.L3337:
	movw	r3, #3725	@,
	mov	r2, r6	@, ret
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3289	@
.L3431:
	ldr	r1, .L3456+24	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	DirectOutput	@
	ldr	r3, [r4, #1028]	@ D.42862, pH264Ctx_30(D)->CurrPic.pmv_address_idc
	ldr	r2, [r4, #2168]	@ D.42862, pH264Ctx_30(D)->TotalPmvNum
	ldr	r1, .L3456+4	@,
	cmp	r3, r2	@ D.42862, D.42862
	addne	r3, r3, #12800	@ tmp286, D.42862,
	addne	r3, r3, #12	@ tmp286, tmp286,
	strne	r7, [r5, r3, asl #2]	@ tmp260, pH264Ctx_30(D)->PmvStoreUsedFlag
	movw	r3, #3473	@,
	strne	r2, [r4, #1028]	@ D.42862, pH264Ctx_30(D)->CurrPic.pmv_address_idc
	mov	r6, r0	@ ret,
	mov	r2, r0	@, ret
	mov	r0, #14	@,
	bl	dprint_vfmw	@
.L3289:
	cmn	r6, #1	@ ret,
	bne	.L3357	@,
	b	.L3359	@
.L3295:
	cmp	r1, #1	@ D.42864,
	beq	.L3452	@,
	cmp	r2, #0	@ D.42859,
	beq	.L3298	@,
	ldrb	r1, [r7, #1]	@ zero_extendqisi2	@ pOutFrameStore_44->is_used, pOutFrameStore_44->is_used
	cmp	r1, #0	@ pOutFrameStore_44->is_used,
	bne	.L3298	@,
	b	.L3291	@
.L3450:
	add	r6, r5, #24576	@ tmp582, pH264Ctx,
	ldr	ip, [r6, #2052]	@ D.42862, pH264Ctx_30(D)->DPB.used_size
	cmp	ip, #0	@ D.42862,
	beq	.L3334	@,
	ldr	r3, [r6, #1856]	@ pH264Ctx_30(D)->DPB.fs, pH264Ctx_30(D)->DPB.fs
	cmp	r0, r3	@ D.42869, pH264Ctx_30(D)->DPB.fs
	addne	r3, r5, #26368	@ ivtmp.3070, pH264Ctx,
	addne	r3, r3, #64	@ ivtmp.3070, ivtmp.3070,
	beq	.L3335	@,
.L3338:
	add	r1, r1, #1	@ i, i,
	cmp	r1, ip	@ i, D.42862
	beq	.L3334	@,
	ldr	r2, [r3, #4]!	@ MEM[base: _2, offset: 0B], MEM[base: _2, offset: 0B]
	cmp	r0, r2	@ D.42869, MEM[base: _2, offset: 0B]
	bne	.L3338	@,
.L3335:
	add	r2, r5, #49664	@, pH264Ctx,
	mov	r0, r5	@, pH264Ctx
	add	r2, r2, #40	@,,
	bl	InsertFrmInDPB	@
	cmn	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L3453	@,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r3, #3745	@,
	mov	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3324	@
.L3347:
	mov	r3, r0	@, ret
	movw	r2, #3805	@,
	ldr	r1, .L3456+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r2, r10	@, ret
	movw	r3, #3806	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3440:
	ldr	r3, [r4, #3720]	@ pH264Ctx_30(D)->numOutputFrame, pH264Ctx_30(D)->numOutputFrame
	add	r3, r3, #1	@ D.42861, pH264Ctx_30(D)->numOutputFrame,
	str	r3, [r4, #3720]	@ D.42861, pH264Ctx_30(D)->numOutputFrame
	ldr	r3, [r5]	@ D.42863, pH264Ctx_30(D)->pstExtraData
	str	r0, [r3, #732]	@ D.42861, _115->s32firstIdecodedflag
	b	.L3311	@
.L3435:
	ldr	r1, .L3456+28	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L3456+32	@ tmp428,
	ldr	r3, [r3]	@ D.42866, g_event_report
	cmp	r3, #0	@ D.42866,
	beq	.L3327	@,
	mov	r2, r6	@, pH264Ctx_30(D)->CurrPic.non_existing
	mov	r1, #104	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	blx	r3	@ D.42866
.L3327:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	movw	r3, #3684	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3449:
	movw	r2, #3842	@,
	ldr	r1, .L3456+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	movw	r3, #3843	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3443:
	ldr	r3, [r6, #2052]	@ pH264Ctx_30(D)->DPB.used_size, pH264Ctx_30(D)->DPB.used_size
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, #1	@ D.42862, pH264Ctx_30(D)->DPB.used_size,
	str	r3, [r6, #2052]	@ D.42862, pH264Ctx_30(D)->DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r2, r7	@, ret
	movw	r3, #3668	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3324	@
.L3438:
	movw	r2, #3580	@,
	ldr	r1, .L3456+36	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L3456+32	@ tmp356,
	ldr	r3, [r3]	@ D.42866, g_event_report
	cmp	r3, #0	@ D.42866,
	beq	.L3308	@,
	mov	r2, r8	@, D.42862
	mov	r1, #111	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	blx	r3	@ D.42866
.L3308:
	ldr	r3, [r6, #180]	@ D.42862, pImg_71->error_level
	cmp	r3, #0	@ D.42862,
	bne	.L3307	@,
	b	.L3309	@
.L3451:
	mov	r3, r0	@, ret
	movw	r2, #3721	@,
	ldr	r1, .L3456+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L3337	@
.L3445:
	str	r1, [sp, #4]	@ D.42862,
	mov	r0, #1	@,
	str	r2, [sp]	@ D.42862,
	movw	r2, #3758	@,
	ldr	r1, .L3456+40	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	movw	r3, #3761	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3446:
	ldr	r3, [r4, #3616]	@ pH264Ctx_30(D)->OldDecMode, pH264Ctx_30(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_30(D)->OldDecMode,
	beq	.L3454	@,
.L3343:
	mov	r0, r5	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L3455	@,
.L3344:
	movw	r3, #3784	@,
	mov	r2, r6	@, ret
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3289	@
.L3447:
	mov	r3, r9	@, pre_used_size
	str	r8, [sp]	@ pre_pos,
	movw	r2, #3790	@,
	ldr	r1, .L3456+44	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	movw	r3, #3791	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3441:
	mov	r1, r6	@, pImg
	mov	r0, r5	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L3313	@
.L3439:
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	mov	r2, #0	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	bl	FSP_SetDisplay	@
	movw	r3, #3613	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3319:
	mov	r0, r5	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	beq	.L3323	@,
	mvn	r0, #0	@ D.42858,
	b	.L3418	@
.L3452:
	add	r8, r5, #50176	@ pOutPic, pH264Ctx,
	ldr	r7, [r4, #1440]	@ pOutFrameStore, pH264Ctx_30(D)->LastPic.frame_store
	add	r8, r8, #8	@ pOutPic, pOutPic,
	ldrb	r2, [r4, #1035]	@ zero_extendqisi2	@ D.42859, MEM[(struct H264_CURRPIC_S *)pH264Ctx_30(D) + 50184B].structure
	b	.L3300	@
.L3436:
	mov	r2, #3	@ tmp334,
	ldr	r3, [r7, #544]	@ pOutFrameStore_7->err_level, pOutFrameStore_7->err_level
	strb	r2, [r7, #1]	@ tmp334, pOutFrameStore_7->is_used
	ldr	r2, [r8, #452]	@ pOutPic_6->err_level, pOutPic_6->err_level
	add	r3, r3, r2	@ D.42862, pOutFrameStore_7->err_level, pOutPic_6->err_level
	str	r3, [r7, #544]	@ D.42862, pOutFrameStore_7->err_level
	b	.L3302	@
.L3453:
	mov	r3, r0	@, ret
	movw	r2, #3738	@,
	ldr	r1, .L3456+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, ret
	movw	r3, #3739	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3454:
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.structure, pH264Ctx_30(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.structure,
	ldrne	r3, [r4, #960]	@ pH264Ctx_30(D)->CurrPic.frame_store, pH264Ctx_30(D)->CurrPic.frame_store
	strne	r3, [r4, #1548]	@ pH264Ctx_30(D)->CurrPic.frame_store, pH264Ctx_30(D)->pLastFieldBuf
	b	.L3343	@
.L3437:
	movw	r2, #3564	@,
	ldr	r1, .L3456+48	@,
	bl	dprint_vfmw	@
	movw	r3, #3565	@,
	mvn	r2, #0	@,
	ldr	r1, .L3456+4	@,
	mov	r0, #14	@,
	bl	dprint_vfmw	@
	b	.L3359	@
.L3455:
	mov	r3, r0	@, ret
	movw	r2, #3781	@,
	ldr	r1, .L3456+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L3344	@
.L3457:
	.align	2
.L3456:
	.word	.LC348
	.word	.LC342
	.word	.LC341
	.word	.LC346
	.word	.LANCHOR0+312
	.word	.LC329
	.word	.LC343
	.word	.LC347
	.word	g_event_report
	.word	.LC345
	.word	.LC349
	.word	.LC350
	.word	.LC344
	.fnend
	.size	StorePicInDPB, .-StorePicInDPB
	.align	2
	.global	AllocFrameStore
	.type	AllocFrameStore, %function
AllocFrameStore:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #20480	@ tmp478, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	ldrb	r4, [r8, #201]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag, pH264Ctx_15(D)->CurrSlice.field_pic_flag
	cmp	r4, #0	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag,
	beq	.L3459	@,
	ldrb	r3, [r8, #202]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag, pH264Ctx_15(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag,
	beq	.L3521	@,
	add	r7, r0, #49152	@ tmp479, pH264Ctx,
	ldr	r4, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r4, #2	@ pH264Ctx_15(D)->OldDecMode,
	beq	.L3518	@,
	ldrb	r3, [r7, #1512]	@ zero_extendqisi2	@ pH264Ctx_15(D)->PrevPic.structure, pH264Ctx_15(D)->PrevPic.structure
	mov	r2, #0	@ tmp409,
	mov	r4, #2	@ structure,
	strb	r2, [r7, #553]	@ tmp409, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_15(D)->PrevPic.structure,
	bne	.L3489	@,
.L3485:
	ldr	r2, [r7, #1520]	@ pH264Ctx_15(D)->PrevPic.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r3, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	cmp	r2, r3	@ pH264Ctx_15(D)->PrevPic.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	bne	.L3489	@,
	ldr	r3, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc,
	ldr	r3, [r7, #1516]	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	beq	.L3522	@,
	cmp	r3, #0	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc,
	beq	.L3489	@,
.L3465:
	ldr	r3, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	ldr	r2, [r7, #3700]	@ pH264Ctx_15(D)->PrevStorePicCounter, pH264Ctx_15(D)->PrevStorePicCounter
	rsb	r3, r2, r3	@ D.42910, pH264Ctx_15(D)->PrevStorePicCounter, pH264Ctx_15(D)->PicCounter
	cmp	r3, #2	@ D.42910,
	bhi	.L3489	@,
	ldr	ip, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r3, #1	@ tmp245,
	strb	r3, [r7, #553]	@ tmp245, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	ip, #0	@ D.42908,
	beq	.L3467	@,
	cmp	r4, #2	@ structure,
	beq	.L3523	@,
	cmp	r4, #1	@ structure,
	beq	.L3524	@,
.L3492:
	mov	r6, #0	@ D.42910,
	b	.L3471	@
.L3459:
	add	r7, r0, #49152	@ tmp479, pH264Ctx,
	ldr	r3, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_15(D)->OldDecMode,
	strneb	r4, [r7, #553]	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	beq	.L3518	@,
.L3489:
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r7, #2164]	@ D.42910, pH264Ctx_15(D)->TotalFsNum
	str	r1, [sp, #4]	@ IsDecGap, %sfp
	mov	r1, #0	@ tmp266,
	cmp	r0, r1	@ D.42910,
	strb	r1, [r7, #552]	@ tmp266, pH264Ctx_15(D)->CurrPic.state
	beq	.L3479	@,
	add	r2, r5, #27136	@ ivtmp.3096, pH264Ctx,
	add	r10, r5, #26368	@ ivtmp.3083, pH264Ctx,
	add	r2, r2, #168	@ ivtmp.3096, ivtmp.3096,
	add	r10, r10, #64	@ ivtmp.3083, ivtmp.3083,
	add	r9, r5, #24576	@ tmp480, pH264Ctx,
.L3478:
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[base: _192, offset: 1B], MEM[base: _192, offset: 1B]
	cmp	r3, #0	@ MEM[base: _192, offset: 1B],
	bne	.L3474	@,
	cmp	r2, #0	@ ivtmp.3096,
	beq	.L3494	@,
	ldr	lr, [r9, #2052]	@ D.42910, pH264Ctx_15(D)->DPB.used_size
	cmp	lr, #0	@ D.42910,
	beq	.L3494	@,
	ldr	ip, [r9, #1856]	@ pH264Ctx_15(D)->DPB.fs, pH264Ctx_15(D)->DPB.fs
	cmp	ip, r2	@ pH264Ctx_15(D)->DPB.fs, ivtmp.3096
	beq	.L3474	@,
	mov	ip, r10	@ ivtmp.3083, ivtmp.3083
	b	.L3476	@
.L3477:
	ldr	fp, [ip, #4]!	@ MEM[base: _153, offset: 0B], MEM[base: _153, offset: 0B]
	cmp	fp, r2	@ MEM[base: _153, offset: 0B], ivtmp.3096
	beq	.L3474	@,
.L3476:
	add	r3, r3, #1	@ i, i,
	cmp	r3, lr	@ i, D.42910
	bne	.L3477	@,
.L3494:
	mov	r9, #560	@ tmp434,
	movw	ip, #27848	@ tmp436,
	mla	r9, r9, r1, r5	@ tmp435, tmp434, i, pH264Ctx
	mov	r10, #0	@ tmp438,
	str	r2, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r6, #1	@ tmp429,
	mov	fp, r2	@ D.42908, ivtmp.3096
	strb	r6, [r7, #552]	@ tmp429, pH264Ctx_15(D)->CurrPic.state
	add	r1, r9, #27136	@, tmp435,
	mov	lr, #101	@ tmp441,
	mov	r2, #392	@,
	add	r1, r1, #176	@,,
	str	r10, [r9, ip]	@ tmp438, MEM[(struct H264_FRAMESTORE_S *)pH264Ctx_15(D)].FrameStore[i_177].err_level
	add	r0, r7, #568	@, tmp479,
	str	lr, [r7, #1004]	@ tmp441, pH264Ctx_15(D)->CurrPic.err_level
	bl	memcpy	@
	add	r1, r9, #27136	@ tmp460, tmp435,
	str	r10, [r7, #748]	@ tmp438, pH264Ctx_15(D)->CurrPic.fs_image.error_level
	strb	r10, [r1, #171]	@ tmp438, MEM[(struct H264_FRAMESTORE_S *)pH264Ctx_15(D)].FrameStore[i_177].mode_skip_flag
	str	r10, [fp, #532]	@ tmp438, _9->is_displayed
	ldr	r2, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	strb	r10, [r2, #2]	@ tmp438, _57->is_reference
	ldr	r2, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	strb	r6, [r2, #4]	@ tmp429, _59->is_in_dpb
	ldr	r3, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	str	r10, [r3, #528]	@ tmp438, _61->eFoState
	ldrb	r9, [r7, #552]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrPic.state, pH264Ctx_15(D)->CurrPic.state
	cmp	r9, r6	@ pH264Ctx_15(D)->CurrPic.state,
	bne	.L3479	@,
	ldr	r3, [sp, #4]	@ IsDecGap, %sfp
	ldr	r0, [r7, #3688]	@, pH264Ctx_15(D)->ChanID
	clz	r1, r3	@, IsDecGap
	mov	r1, r1, lsr #5	@,,
	bl	FSP_NewLogicFs	@
	mov	r6, r0	@ LogicFsID,
	mov	r1, r0	@, LogicFsID
	ldr	r0, [r7, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FSP_GetLogicFs	@
	mvn	r3, r6	@ tmp296, LogicFsID
	mov	r3, r3, lsr #31	@ tmp296, tmp296,
	cmp	r0, #0	@ pstLFs,
	mov	r10, r0	@ pstLFs,
	moveq	r3, #0	@ tmp296,
	cmp	r3, #0	@ tmp296,
	beq	.L3480	@,
	ldr	r3, [r5]	@ pH264Ctx_15(D)->pstExtraData, pH264Ctx_15(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _83->eCapLevel, _83->eCapLevel
	cmp	r3, #25	@ _83->eCapLevel,
	beq	.L3525	@,
.L3481:
	ldr	r0, [r7, #960]	@ pH264Ctx_15(D)->CurrPic.frame_store, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r2, #392	@,
	add	r1, r10, #8	@, pstLFs,
	add	r0, r0, #8	@, pH264Ctx_15(D)->CurrPic.frame_store,
	bl	memcpy	@
	ldr	r9, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	add	r0, r5, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r0, r0, #56	@,,
	add	r1, r9, #8	@, D.42908,
	bl	memcpy	@
	str	r6, [r9, #508]	@ LogicFsID, _123->logic_fs_id
	ldrsb	r3, [r10, #4]	@ pstLFs_74->PmvIdc, pstLFs_74->PmvIdc
	ldr	ip, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	str	r3, [r7, #1028]	@ pstLFs_74->PmvIdc, pH264Ctx_15(D)->CurrPic.pmv_address_idc
.L3471:
	uxtb	r2, r4	@ D.42909, structure
	strb	r2, [r7, #555]	@ D.42909, pH264Ctx_15(D)->CurrPic.structure
	ldrb	r3, [r8, #201]	@ zero_extendqisi2	@ D.42906, pH264Ctx_15(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ D.42906,
	movne	r3, #3	@ D.42906,
	strb	r3, [ip, #400]	@ D.42906, _180->frame.structure
	ldrb	r3, [r7, #553]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrPic.field_pair_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_15(D)->CurrPic.field_pair_flag,
	beq	.L3526	@,
	strb	r2, [r7, #1512]	@ D.42909, pH264Ctx_15(D)->PrevPic.structure
	cmp	r4, #0	@ structure,
	ldr	r3, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	ldr	r2, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	movne	r0, #0	@ D.42907,
	moveq	r0, r4	@ D.42907, structure
	str	r3, [r7, #1520]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r3, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	str	r6, [r7, #1532]	@ D.42910, pH264Ctx_15(D)->PrevPic.image_id
	str	r2, [r7, #1528]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PrevPic.pic_counter
	str	r3, [r7, #1516]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	movne	r3, #1	@ tmp400,
	streqb	r4, [r7, #1536]	@ structure, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
	strneb	r3, [r7, #1536]	@ tmp400, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
.L3514:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3474:
	add	r1, r1, #1	@ i, i,
	add	r2, r2, #560	@ ivtmp.3096, ivtmp.3096,
	cmp	r1, r0	@ i, D.42910
	bne	.L3478	@,
.L3479:
	ldr	r1, .L3528	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.42907,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3521:
	add	r7, r0, #49152	@ tmp479, pH264Ctx,
	ldr	r2, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r2, #2	@ pH264Ctx_15(D)->OldDecMode,
	beq	.L3527	@,
	ldrb	r2, [r7, #1512]	@ zero_extendqisi2	@ pH264Ctx_15(D)->PrevPic.structure, pH264Ctx_15(D)->PrevPic.structure
	mov	r4, #1	@ structure,
	strb	r3, [r7, #553]	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r2, #2	@ pH264Ctx_15(D)->PrevPic.structure,
	bne	.L3489	@,
	b	.L3485	@
.L3527:
	mov	r4, #1	@ structure,
.L3518:
	mov	r3, #0	@ tmp256,
	strb	r3, [r7, #553]	@ tmp256, pH264Ctx_15(D)->CurrPic.field_pair_flag
	b	.L3489	@
.L3525:
	add	r2, r5, #12288	@ tmp300, pH264Ctx,
	ldr	r9, [r0, #180]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride
	ldr	r0, [r0, #112]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_phy_addr, MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_phy_addr
	ldr	r3, [r2, #1276]	@ pH264Ctx_15(D)->CurHeightInMb, pH264Ctx_15(D)->CurHeightInMb
	ldr	r2, [r2, #1272]	@ pH264Ctx_15(D)->CurWidthInMb, pH264Ctx_15(D)->CurWidthInMb
	mov	r3, r3, asl #4	@ HeightAligh, pH264Ctx_15(D)->CurHeightInMb,
	str	r3, [r10, #156]	@ HeightAligh, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_height
	mov	r2, r2, asl #4	@ D.42912, pH264Ctx_15(D)->CurWidthInMb,
	str	r2, [r10, #152]	@ D.42912, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_width
	mul	r9, r9, r3	@ ChromOffset, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride, HeightAligh
	add	r0, r9, r0	@ D.42910, ChromOffset, MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_phy_addr
	str	r0, [r10, #116]	@ D.42910, MEM[(struct IMAGE *)pstLFs_74 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r10, #128]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_2d_phy_addr, MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_2d_phy_addr
	ldr	r1, [r10, #96]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].top_luma_phy_addr, MEM[(struct IMAGE *)pstLFs_74 + 8B].top_luma_phy_addr
	add	r3, r9, r3	@ D.42910, ChromOffset, MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_2d_phy_addr
	ldr	r2, [r10, #180]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride
	add	r9, r9, r1	@ D.42910, ChromOffset, MEM[(struct IMAGE *)pstLFs_74 + 8B].top_luma_phy_addr
	str	r3, [r10, #132]	@ D.42910, MEM[(struct IMAGE *)pstLFs_74 + 8B].chrom_2d_phy_addr
	str	r9, [r10, #100]	@ D.42910, MEM[(struct IMAGE *)pstLFs_74 + 8B].top_chrom_phy_addr
	add	r9, r9, r2	@ D.42910, D.42910, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride
	str	r9, [r10, #108]	@ D.42910, MEM[(struct IMAGE *)pstLFs_74 + 8B].btm_chrom_phy_addr
	str	r0, [r10, #44]	@, MEM[(struct IMAGE *)pstLFs_74 + 8B].chrom_vir_addr
	mov	r0, r3	@, D.42910
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #60]	@, MEM[(struct IMAGE *)pstLFs_74 + 8B].chrom_2d_vir_addr
	b	.L3481	@
.L3526:
	mov	r3, #0	@ tmp355,
	strb	r3, [r7, #1512]	@ tmp355, pH264Ctx_15(D)->PrevPic.structure
	ldr	r1, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	mov	r0, r3	@ D.42907, tmp355
	ldr	r2, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	str	r1, [r7, #1520]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r1, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	strb	r3, [r7, #1536]	@ tmp355, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
	str	r6, [r7, #1532]	@ D.42910, pH264Ctx_15(D)->PrevPic.image_id
	str	r1, [r7, #1516]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	str	r2, [r7, #1528]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PrevPic.pic_counter
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3522:
	cmp	r3, #0	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc,
	beq	.L3465	@,
	b	.L3489	@
.L3480:
	ldr	r2, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r0, r3	@, tmp296
	strb	r3, [r7, #552]	@ tmp296, pH264Ctx_15(D)->CurrPic.state
	ldr	r1, .L3528+4	@,
	strb	r3, [r2, #4]	@ tmp296, _79->is_in_dpb
	bl	dprint_vfmw	@
	mov	r1, r9	@, pH264Ctx_15(D)->CurrPic.state
	mov	r0, r5	@, pH264Ctx
	bl	ClearAll	@
	mvn	r0, #0	@ D.42907,
	b	.L3514	@
.L3524:
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ _32->is_used, _32->is_used
	cmp	r3, #2	@ _32->is_used,
	bne	.L3518	@,
.L3470:
	ldr	ip, [r7, #960]	@ D.42908, pH264Ctx_15(D)->CurrPic.frame_store
	cmp	ip, #0	@ D.42908,
	bne	.L3492	@,
	b	.L3489	@
.L3523:
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.42906, _32->is_used
	cmp	r3, #1	@ D.42906,
	bne	.L3518	@,
	b	.L3470	@
.L3467:
	strb	ip, [r7, #553]	@ D.42908, pH264Ctx_15(D)->CurrPic.field_pair_flag
	b	.L3489	@
.L3529:
	.align	2
.L3528:
	.word	.LC351
	.word	.LC352
	.fnend
	.size	AllocFrameStore, .-AllocFrameStore
	.global	__aeabi_idivmod
	.align	2
	.global	DecGap
	.type	DecGap, %function
DecGap:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #24576	@ tmp296, pH264Ctx,
	add	r1, r0, #12288	@ tmp170, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r2, #1804]	@ D.42933, pH264Ctx_8(D)->CurrMarkIdx
	movw	r3, #2004	@ tmp165,
	ldrb	r1, [r1, #1317]	@ zero_extendqisi2	@ pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag, pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag
	.pad #28
	sub	sp, sp, #28	@,,
	add	r10, r6, #20480	@ tmp297, pH264Ctx,
	add	r7, r6, #16384	@ tmp295, pH264Ctx,
	mul	r3, r3, r0	@ tmp164, tmp165, D.42933
	cmp	r1, #1	@ pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag,
	ldr	ip, [r10, #220]	@ D.42933, pH264Ctx_8(D)->CurrSlice.frame_num
	add	r4, r6, #49152	@ tmp298, pH264Ctx,
	moveq	r1, #2	@ nal_ref_idc,
	movne	r1, #0	@ nal_ref_idc,
	str	r1, [sp, #4]	@ nal_ref_idc, %sfp
	add	r1, r6, r3	@ tmp166, pH264Ctx, tmp164
	add	r1, r1, #22272	@ tmp168, tmp166,
	str	ip, [sp]	@ D.42933, %sfp
	ldr	r0, [r10, #216]	@ D.42933, pH264Ctx_8(D)->CurrSlice.prev_frame_num
	mov	r3, r1	@ D.42936, tmp168
	add	r1, r1, #96	@ tmp168, tmp168,
	ldr	ip, [r7, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	add	r3, r3, #100	@ D.42936, D.42936,
	ldrb	r1, [r1, #7]	@ zero_extendqisi2	@ D.42935, pH264Ctx_8(D)->Mark[_22].adaptive_ref_pic_marking_mode_flag
	ldr	r9, [r7, #108]	@ D.42933, pH264Ctx_8(D)->CurrSPS.log2_max_frame_num_minus4
	str	ip, [sp, #12]	@ tmp1, %sfp
	str	r1, [sp, #20]	@ D.42935, %sfp
	ldr	r1, [r7, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	str	r3, [r4, #964]	@ D.42936, pH264Ctx_8(D)->CurrPic.pMarkPara
	ldr	r5, [r2, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	str	r1, [sp, #16]	@ tmp2, %sfp
	cmp	r5, #0	@ pH264Ctx_8(D)->DPB.used_size,
	beq	.L3546	@,
	add	r9, r9, #4	@ D.42933, D.42933,
	mov	r5, #1	@ tmp185,
	mov	r3, r5, asl r9	@ MaxFrameNum, tmp185,
	add	r0, r0, r5	@, D.42933,
	str	r3, [sp, #8]	@ MaxFrameNum, %sfp
	mov	r1, r3	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	mov	r3, #0	@ tmp194,
	mov	r0, #2	@,
	str	r3, [r7, #3464]	@ tmp194, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	str	r3, [r7, #3460]	@ tmp194, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	mov	r9, r1	@ UnusedShortTermFrameNum,
	ldr	r1, .L3550	@,
	bl	dprint_vfmw	@
	ldr	r8, [sp]	@ D.42933, %sfp
	mov	r3, r9	@, UnusedShortTermFrameNum
	ldr	r1, .L3550+4	@,
	mov	r0, #2	@,
	mov	r2, r8	@, D.42933
	bl	dprint_vfmw	@
	cmp	r8, r9	@ D.42933, UnusedShortTermFrameNum
	mov	r3, r8	@ D.42933, D.42933
	movgt	r3, r4	@ tmp298, tmp298
	movgt	r4, r10	@ tmp297, tmp297
	movgt	r10, r9	@ UnusedShortTermFrameNum, UnusedShortTermFrameNum
	movgt	r9, r3	@ tmp298, tmp298
	bgt	.L3538	@,
	b	.L3539	@
.L3536:
	mov	r1, r8	@, tmp277
	strb	r8, [r9, #556]	@ tmp277, pH264Ctx_8(D)->CurrPic.is_long_term
	mov	r0, r6	@, pH264Ctx
	bl	StorePicInDPB	@
	ldr	r1, [sp, #8]	@, %sfp
	subs	r3, r0, #0	@ ret,
	add	r0, r10, #1	@, UnusedShortTermFrameNum,
	bne	.L3547	@,
	str	r10, [r4, #216]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrSlice.prev_frame_num
	bl	__aeabi_idivmod	@
	ldr	r3, [sp]	@ D.42933, %sfp
	cmp	r3, r1	@ D.42933, UnusedShortTermFrameNum
	mov	r10, r1	@ UnusedShortTermFrameNum,
	ble	.L3548	@,
.L3538:
	mov	r1, #1	@,
	mov	r0, r6	@, pH264Ctx
	bl	AllocFrameStore	@
	mov	r8, #0	@ tmp277,
	ldr	r1, .L3550+8	@,
	subs	fp, r0, #0	@ ret,
	mov	r0, #2	@,
	bne	.L3549	@,
	bl	dprint_vfmw	@
	ldr	r1, [r9, #960]	@ D.42937, pH264Ctx_8(D)->CurrPic.frame_store
	strb	r5, [r9, #558]	@ tmp299, pH264Ctx_8(D)->CurrPic.nal_unit_type
	ldr	r3, [sp, #4]	@ nal_ref_idc, %sfp
	str	r10, [r1, #512]	@ UnusedShortTermFrameNum, _37->frame_num
	ldr	r1, [r9, #960]	@ D.42937, pH264Ctx_8(D)->CurrPic.frame_store
	str	r10, [r9, #968]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrPic.frame_num
	str	r10, [r1, #412]	@ UnusedShortTermFrameNum, _41->frame.pic_num
	ldr	r1, [r9, #960]	@ D.42937, pH264Ctx_8(D)->CurrPic.frame_store
	str	r3, [r9, #976]	@ nal_ref_idc, pH264Ctx_8(D)->CurrPic.nal_ref_idc
	str	fp, [r1, #408]	@ ret, _45->frame.long_term_pic_num
	ldr	r1, [r9, #960]	@ D.42937, pH264Ctx_8(D)->CurrPic.frame_store
	str	r5, [r1, #532]	@ tmp299, _47->is_displayed
	ldr	r1, [r9, #960]	@ D.42937, pH264Ctx_8(D)->CurrPic.frame_store
	strb	fp, [r1, #4]	@ ret, _49->is_in_dpb
	ldr	r1, [r9, #960]	@ D.42937, pH264Ctx_8(D)->CurrPic.frame_store
	strb	r5, [r1]	@ tmp299, _51->non_existing
	ldr	r1, [r9, #964]	@ D.42936, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	r5, [r9, #554]	@ tmp299, pH264Ctx_8(D)->CurrPic.non_existing
	strb	fp, [r1, #3]	@ ret, _54->adaptive_ref_pic_marking_mode_flag
	ldr	r3, [r7, #112]	@ pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type, pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type
	cmp	r3, #0	@ pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type,
	beq	.L3536	@,
	str	r10, [r7, #3476]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrPOC.frame_num
	mov	r0, r6	@, pH264Ctx
	bl	DecPOC	@
	ldr	r3, [r7, #3456]	@ pH264Ctx_8(D)->CurrPOC.ThisPOC, pH264Ctx_8(D)->CurrPOC.ThisPOC
	str	r3, [r9, #980]	@ pH264Ctx_8(D)->CurrPOC.ThisPOC, pH264Ctx_8(D)->CurrPic.thispoc
	ldr	r3, [r7, #3452]	@ pH264Ctx_8(D)->CurrPOC.framepoc, pH264Ctx_8(D)->CurrPOC.framepoc
	str	r3, [r9, #984]	@ pH264Ctx_8(D)->CurrPOC.framepoc, pH264Ctx_8(D)->CurrPic.framepoc
	ldr	r3, [r7, #3444]	@ pH264Ctx_8(D)->CurrPOC.toppoc, pH264Ctx_8(D)->CurrPOC.toppoc
	str	r3, [r9, #988]	@ pH264Ctx_8(D)->CurrPOC.toppoc, pH264Ctx_8(D)->CurrPic.toppoc
	ldr	r3, [r7, #3448]	@ pH264Ctx_8(D)->CurrPOC.bottompoc, pH264Ctx_8(D)->CurrPOC.bottompoc
	str	r3, [r9, #992]	@ pH264Ctx_8(D)->CurrPOC.bottompoc, pH264Ctx_8(D)->CurrPic.bottompoc
	b	.L3536	@
.L3546:
	ldr	r1, .L3550+12	@,
	mov	r0, r5	@, pH264Ctx_8(D)->DPB.used_size
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.42932, pH264Ctx_8(D)->DPB.used_size
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3548:
	mov	r4, r9	@ tmp298, tmp298
.L3539:
	ldr	r3, [sp, #12]	@ tmp1, %sfp
	mov	r0, #0	@ D.42932,
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@, %sfp
	str	r3, [r7, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [sp, #16]	@ tmp2, %sfp
	str	r3, [r7, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [r4, #964]	@ D.42936, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	r2, [r3, #3]	@ tmp318, _85->adaptive_ref_pic_marking_mode_flag
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3549:
	ldr	r3, [sp, #12]	@ tmp1, %sfp
	mov	r0, r8	@, tmp277
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@, %sfp
	ldr	r1, .L3550+16	@,
	str	r3, [r7, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [sp, #16]	@ tmp2, %sfp
	str	r3, [r7, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [r9, #964]	@ D.42936, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	r2, [r3, #3]	@ tmp321, _80->adaptive_ref_pic_marking_mode_flag
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42932,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3547:
	ldr	r2, [sp, #12]	@ tmp1, %sfp
	mov	r0, r8	@, tmp277
	ldrb	lr, [sp, #20]	@ zero_extendqisi2	@, %sfp
	ldr	r1, .L3550+20	@,
	str	r2, [r7, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r2, [sp, #16]	@ tmp2, %sfp
	str	r2, [r7, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	movw	r2, #6185	@,
	ldr	ip, [r9, #964]	@ D.42936, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	lr, [ip, #3]	@ tmp325, _75->adaptive_ref_pic_marking_mode_flag
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.42932,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3551:
	.align	2
.L3550:
	.word	.LC354
	.word	.LC355
	.word	.LC357
	.word	.LC353
	.word	.LC356
	.word	.LC358
	.fnend
	.size	DecGap, .-DecGap
	.align	2
	.global	H264DEC_Init
	.type	H264DEC_Init, %function
H264DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r4, [r0, #352]	@ D.42947, pH264Ctx_8(D)->ImageQue.ResetMagicWord
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #52896	@,
	bl	__memzero	@
	add	r0, r6, #8	@, pH264Ctx,
	str	r4, [r6, #352]	@ D.42947, pH264Ctx_8(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	mov	r3, #0	@ tmp150,
	str	r7, [r6]	@ pstExtraData, pH264Ctx_8(D)->pstExtraData
	str	r3, [r6, #360]	@ tmp150, pH264Ctx_8(D)->pH264DecParam
	str	r3, [r6, #364]	@ tmp150, pH264Ctx_8(D)->StartMode
	ldr	r3, [r7, #32]	@ pstExtraData_14(D)->eCapLevel, pstExtraData_14(D)->eCapLevel
	cmp	r3, #25	@ pstExtraData_14(D)->eCapLevel,
	beq	.L3570	@,
	add	r5, r6, #12288	@ tmp297, pH264Ctx,
	mov	r1, #32	@ tmp161,
	mov	r2, #256	@ tmp164,
	mov	r3, #136	@ tmp167,
	str	r1, [r5, #1284]	@ tmp161, pH264Ctx_8(D)->MaxSpsNum
	str	r2, [r5, #1288]	@ tmp164, pH264Ctx_8(D)->MaxPpsNum
	str	r3, [r5, #1280]	@ tmp167, pH264Ctx_8(D)->MaxSliceNum
.L3554:
	ldr	r0, [r7, #504]	@, pstExtraData_14(D)->s32ContextMemAddr
	mov	r8, #2208	@ tmp180,
	bl	MEM_Phy2Vir	@
	ldr	r9, [r5, #1284]	@ D.42947, pH264Ctx_8(D)->MaxSpsNum
	ldr	r3, [r6]	@ pH264Ctx_8(D)->pstExtraData, pH264Ctx_8(D)->pstExtraData
	mov	r2, #4000	@ tmp175,
	ldr	r10, [r5, #1288]	@ D.42947, pH264Ctx_8(D)->MaxPpsNum
	add	r4, r6, #49152	@ tmp296, pH264Ctx,
	mul	r2, r2, r9	@ D.42947, tmp175, D.42947
	ldr	r3, [r3, #500]	@ _32->s32BasicCtxSize, _32->s32BasicCtxSize
	mul	r1, r8, r10	@ D.42947, tmp180, D.42947
	add	r3, r0, r3	@ D.42954,, _32->s32BasicCtxSize
	str	r3, [r5, #1292]	@ D.42954, pH264Ctx_8(D)->SPS
	add	ip, r3, r2	@ D.42955, D.42954, D.42947
	str	ip, [r5, #1296]	@ D.42955, pH264Ctx_8(D)->PPS
	cmp	r3, #0	@ D.42954,
	cmpne	ip, #0	@, D.42955,
	add	r0, ip, r1	@ D.42956, D.42955, D.42947
	str	r0, [r4, #3608]	@ D.42956, pH264Ctx_8(D)->DecSlicePara
	moveq	lr, #1	@ tmp187,
	movne	lr, #0	@ tmp187,
	cmp	r0, #0	@ D.42956,
	orreq	lr, lr, #1	@,, tmp193, tmp187
	cmp	lr, #0	@ tmp193,
	bne	.L3571	@,
	ldr	lr, [r7, #524]	@ pstExtraData_14(D)->s32KeepSPSPPS, pstExtraData_14(D)->s32KeepSPSPPS
	cmp	lr, #0	@ pstExtraData_14(D)->s32KeepSPSPPS,
	bne	.L3557	@,
	cmp	r2, #0	@ D.42947,
	bne	.L3572	@,
	cmp	r1, #0	@ D.42947,
	bne	.L3573	@,
.L3569:
	ldr	r9, [r5, #1284]	@ D.42947, pH264Ctx_8(D)->MaxSpsNum
	ldr	r0, [r4, #3608]	@ D.42956, pH264Ctx_8(D)->DecSlicePara
.L3557:
	add	r2, r6, #16384	@ tmp214, pH264Ctx,
	movw	r3, #4060	@ tmp220,
	str	r10, [r2, #1228]	@ D.42947, pH264Ctx_8(D)->CurrPPS.pic_parameter_set_id
	ldr	r1, [r5, #1280]	@ pH264Ctx_8(D)->MaxSliceNum, pH264Ctx_8(D)->MaxSliceNum
	str	r9, [r5, #2044]	@ D.42947, pH264Ctx_8(D)->CurrSPS.seq_parameter_set_id
	mul	r1, r3, r1	@ __n, tmp220, pH264Ctx_8(D)->MaxSliceNum
	cmp	r1, #0	@ __n,
	bne	.L3574	@,
.L3560:
	ldr	r3, [r4, #3676]	@ pH264Ctx_8(D)->advanced_cfg, pH264Ctx_8(D)->advanced_cfg
	mov	r5, #0	@ tmp228,
	mov	r1, #40	@ tmp252,
	mov	r2, #17	@ tmp255,
	str	r5, [r4, #3632]	@ tmp228, pH264Ctx_8(D)->TotalNal
	mov	r7, #1	@ tmp291,
	str	r3, [r4, #3616]	@ pH264Ctx_8(D)->advanced_cfg, pH264Ctx_8(D)->OldDecMode
	mov	r0, r6	@, pH264Ctx
	mov	r3, #25	@ tmp288,
	str	r5, [r4, #3636]	@ tmp228, pH264Ctx_8(D)->TotalSPS
	str	r5, [r4, #3640]	@ tmp228, pH264Ctx_8(D)->TotalPPS
	str	r5, [r4, #3644]	@ tmp228, pH264Ctx_8(D)->TotalSlice
	str	r5, [r4, #3648]	@ tmp228, pH264Ctx_8(D)->SeqCnt
	str	r5, [r4, #3652]	@ tmp228, pH264Ctx_8(D)->TotalPicNum
	str	r5, [r4, #3656]	@ tmp228, pH264Ctx_8(D)->TotalFrameNum
	str	r5, [r4, #3660]	@ tmp228, pH264Ctx_8(D)->TotalFieldNum
	str	r5, [r4, #3624]	@ tmp228, pH264Ctx_8(D)->MutexHold
	str	r5, [r4, #2192]	@ tmp228, pH264Ctx_8(D)->TotalUsrDatNum
	str	r5, [r4, #2196]	@ tmp228, pH264Ctx_8(D)->pUsrDatArray
	str	r5, [r4, #2200]	@ tmp228, pH264Ctx_8(D)->pUsrDatArray
	str	r5, [r4, #2204]	@ tmp228, pH264Ctx_8(D)->pUsrDatArray
	str	r5, [r4, #2208]	@ tmp228, pH264Ctx_8(D)->pUsrDatArray
	str	r5, [r4, #2172]	@ tmp228, pH264Ctx_8(D)->AllowStartDec
	str	r5, [r4, #2180]	@ tmp228, pH264Ctx_8(D)->IDRFound
	str	r5, [r4, #3696]	@ tmp228, pH264Ctx_8(D)->FirstFrameDisplayed
	str	r5, [r4, #2184]	@ tmp228, pH264Ctx_8(D)->PPicFound
	str	r1, [r4, #2164]	@ tmp252, pH264Ctx_8(D)->TotalFsNum
	str	r2, [r4, #2168]	@ tmp255, pH264Ctx_8(D)->TotalPmvNum
	str	r3, [r4, #2188]	@ tmp288, pH264Ctx_8(D)->frame_rate
	str	r7, [r4, #3740]	@ tmp291, pH264Ctx_8(D)->DSD_NeedClearQue
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.42950,
	str	r0, [r4, #3688]	@ D.42950, pH264Ctx_8(D)->ChanID
	beq	.L3575	@,
	mov	r1, r5	@, tmp228
	mov	r0, r6	@, pH264Ctx
	bl	ClearAll	@
	mov	r0, r7	@ D.42946, tmp291
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3574:
	bl	__memzero	@
	b	.L3560	@
.L3570:
	ldr	r3, [r7, #580]	@ D.42950, pstExtraData_14(D)->stChanOption.s32MaxSpsNum
	add	r5, r6, #12288	@ tmp297, pH264Ctx,
	str	r3, [r5, #1284]	@ D.42950, pH264Ctx_8(D)->MaxSpsNum
	ldr	r3, [r7, #584]	@ D.42950, pstExtraData_14(D)->stChanOption.s32MaxPpsNum
	str	r3, [r5, #1288]	@ D.42950, pH264Ctx_8(D)->MaxPpsNum
	ldr	r3, [r7, #576]	@ D.42950, pstExtraData_14(D)->stChanOption.s32MaxSliceNum
	str	r3, [r5, #1280]	@ D.42950, pH264Ctx_8(D)->MaxSliceNum
	b	.L3554	@
.L3572:
	mov	r1, r2	@, D.42947
	mov	r0, r3	@, D.42954
	bl	__memzero	@
	ldr	r10, [r5, #1288]	@ D.42947, pH264Ctx_8(D)->MaxPpsNum
	ldr	ip, [r5, #1296]	@ D.42955, pH264Ctx_8(D)->PPS
	mul	r1, r8, r10	@ D.42947, tmp180, D.42947
	cmp	r1, #0	@ D.42947,
	beq	.L3569	@,
.L3573:
	mov	r0, ip	@, D.42955
	bl	__memzero	@
	ldr	r10, [r5, #1288]	@ D.42947, pH264Ctx_8(D)->MaxPpsNum
	b	.L3569	@
.L3571:
	movw	r3, #12255	@,
	ldr	r2, .L3576	@,
	ldr	r1, .L3576+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.42946,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3575:
	mov	r0, r5	@, tmp228
	ldr	r1, .L3576+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.42946,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3577:
	.align	2
.L3576:
	.word	.LANCHOR0+328
	.word	.LC359
	.word	.LC360
	.fnend
	.size	H264DEC_Init, .-H264DEC_Init
	.align	2
	.global	InitPic
	.type	InitPic, %function
InitPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r9, r0, #12288	@ tmp960, pH264Ctx,
	add	r8, r0, #20480	@ tmp961, pH264Ctx,
	add	r4, r0, #49152	@ tmp959, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r9, #1296]	@ pH264Ctx_34(D)->PPS, pH264Ctx_34(D)->PPS
	ldr	r0, [r8, #212]	@ pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id
	mov	r10, #2208	@ tmp391,
	ldrb	r2, [r4, #552]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPic.state, pH264Ctx_34(D)->CurrPic.state
	mov	r7, #4000	@ tmp397,
	ldr	r3, [r9, #1292]	@ pH264Ctx_34(D)->SPS, pH264Ctx_34(D)->SPS
	.pad #28
	sub	sp, sp, #28	@,,
	mla	r10, r10, r0, r1	@ pPPS, tmp391, pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_34(D)->PPS
	cmp	r2, #0	@ pH264Ctx_34(D)->CurrPic.state,
	ldr	r2, [r10, #28]	@ pPPS_38->seq_parameter_set_id, pPPS_38->seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp397, pPPS_38->seq_parameter_set_id, pH264Ctx_34(D)->SPS
	beq	.L3579	@,
	ldr	r3, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.43034,
	beq	.L3580	@,
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ _44->is_used, _44->is_used
	cmp	r6, #0	@ _44->is_used,
	beq	.L3706	@,
.L3581:
	mov	r3, #0	@ tmp422,
	strb	r3, [r4, #552]	@ tmp422, pH264Ctx_34(D)->CurrPic.state
.L3579:
	add	r1, sp, #20	@,,
	mov	r0, r5	@, pH264Ctx
	bl	GetReRangeFlag	@
	ldr	r2, [r9, #2044]	@ pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id
	ldr	r3, [r7, #744]	@ pSPS_42->seq_parameter_set_id, pSPS_42->seq_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id, pSPS_42->seq_parameter_set_id
	mov	r6, r0	@ D.43035,
	beq	.L3707	@,
.L3582:
	add	r0, r5, #13568	@, pH264Ctx,
	mov	r3, #0	@ tmp430,
	add	r0, r0, #20	@,,
	strb	r3, [r7, #24]	@ tmp430, pSPS_42->is_refreshed
	mov	r2, #4000	@,
	mov	r1, r7	@, pSPS
	bl	memmove	@
.L3583:
	ldr	r3, [sp, #20]	@ dpb_changed, dpb_changed
	cmp	r3, #0	@ dpb_changed,
	beq	.L3704	@,
	ldr	r2, [r5]	@ D.43036, pH264Ctx_34(D)->pstExtraData
	ldr	fp, [r2, #608]	@ _65->stChanOption.s32ReRangeEn, _65->stChanOption.s32ReRangeEn
	cmp	fp, #0	@ _65->stChanOption.s32ReRangeEn,
	beq	.L3708	@,
.L3586:
	ldr	r3, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	cmp	r6, #0	@ D.43035,
	add	r3, r3, #1	@ D.43027, pH264Ctx_34(D)->SeqCnt,
	str	r3, [r4, #3648]	@ D.43027, pH264Ctx_34(D)->SeqCnt
	beq	.L3595	@,
	ldr	r3, [r2, #692]	@ _65->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _65->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _65->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3709	@,
.L3596:
	ldr	r1, .L3723	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	bl	GetBackPicFromVOQueue	@
.L3597:
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@ ret
	bne	.L3638	@,
	add	r6, r5, #16384	@ tmp962, pH264Ctx,
	add	r3, r5, #51200	@, pH264Ctx,
	add	r3, r3, #116	@,,
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r6, #1184]	@ D.43027, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	str	r1, [r4, #2168]	@ D.43027, pH264Ctx_34(D)->TotalPmvNum
	ldr	r2, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	ldrb	fp, [r9, #1318]	@ zero_extendqisi2	@ D.43035, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	add	r2, r2, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	rsb	fp, fp, #2	@ D.43035, D.43035,
	str	r1, [sp]	@ D.43027,
	mov	r2, r2, asl #4	@ D.43027, D.43027,
	add	ip, ip, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mul	fp, fp, r2	@ ImageHeight, D.43035, D.43027
	mov	ip, ip, asl #4	@ ImageWidth, D.43027,
	str	ip, [sp, #8]	@ ImageWidth, %sfp
	mov	r1, ip	@, ImageWidth
	mov	r2, fp	@, ImageHeight
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L3599	@,
	ldr	ip, [sp, #8]	@ ImageWidth, %sfp
	mov	fp, fp, lsr #4	@ D.43027, ImageHeight,
	str	fp, [r9, #1276]	@ D.43027, pH264Ctx_34(D)->CurHeightInMb
	mov	ip, ip, lsr #4	@ D.43027, ImageWidth,
	str	ip, [r9, #1272]	@ D.43027, pH264Ctx_34(D)->CurWidthInMb
	ldr	r2, [r6, #1228]	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id
	ldr	r3, [r10, #24]	@ pPPS_38->pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	bne	.L3600	@,
.L3711:
	ldrb	r3, [r10, #20]	@ zero_extendqisi2	@ pPPS_38->is_refreshed, pPPS_38->is_refreshed
	cmp	r3, #0	@ pPPS_38->is_refreshed,
	beq	.L3601	@,
	b	.L3600	@
.L3595:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@ ret
	bne	.L3710	@,
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@ ret
	bne	.L3638	@,
.L3704:
	add	r6, r5, #16384	@ tmp962, pH264Ctx,
.L3585:
	ldr	r2, [r6, #1228]	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id
	ldr	r3, [r10, #24]	@ pPPS_38->pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	beq	.L3711	@,
.L3600:
	add	r0, r5, #17408	@, pH264Ctx,
	mov	r3, #0	@ tmp517,
	add	r0, r0, #180	@,,
	strb	r3, [r10, #20]	@ tmp517, pPPS_38->is_refreshed
	mov	r1, r10	@, pPPS
	mov	r2, #2208	@,
	bl	memmove	@
.L3601:
	ldr	r3, [r6, #3436]	@ pH264Ctx_34(D)->CurrPOC.last_has_mmco_5, pH264Ctx_34(D)->CurrPOC.last_has_mmco_5
	ldr	r10, [r6, #108]	@ D.43027, pH264Ctx_34(D)->CurrSPS.log2_max_frame_num_minus4
	cmp	r3, #0	@ pH264Ctx_34(D)->CurrPOC.last_has_mmco_5,
	movne	r3, #0	@ tmp528,
	strne	r3, [r8, #216]	@ tmp528, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	strne	r3, [r4, #1520]	@ tmp528, pH264Ctx_34(D)->PrevPic.frame_num
	ldr	r3, [r4, #3616]	@ pH264Ctx_34(D)->OldDecMode, pH264Ctx_34(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_34(D)->OldDecMode,
	beq	.L3603	@,
	ldr	r2, [r5]	@ D.43036, pH264Ctx_34(D)->pstExtraData
	ldr	r3, [r2, #12]	@ _176->s32DecOrderOutput, _176->s32DecOrderOutput
	str	r2, [sp, #8]	@ D.43036, %sfp
	cmp	r3, #2	@ _176->s32DecOrderOutput,
	beq	.L3603	@,
	ldr	fp, [r8, #220]	@ D.43027, pH264Ctx_34(D)->CurrSlice.frame_num
	ldr	r3, [r8, #216]	@ D.43030, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	cmp	fp, r3	@ D.43027, D.43030
	beq	.L3604	@,
	mov	r1, #1	@ tmp541,
	add	r10, r10, #4	@ D.43027, D.43027,
	mov	r10, r1, asl r10	@ MaxFrameNum, tmp541,
	add	r0, r3, r1	@, D.43030,
	str	r3, [sp, #12]	@ D.43030, %sfp
	mov	r1, r10	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	fp, r1	@ D.43027,
	beq	.L3641	@,
	ldr	r2, [sp, #8]	@ D.43036, %sfp
	ldr	r3, [sp, #12]	@ D.43030, %sfp
	ldr	r1, [r2, #516]	@ _176->s32MoreGapEnable, _176->s32MoreGapEnable
	cmp	r1, #0	@ _176->s32MoreGapEnable,
	bne	.L3605	@,
	ldr	r1, [r2, #540]	@ _176->stPvrInfo.u32BFrmRefFlag, _176->stPvrInfo.u32BFrmRefFlag
	cmp	r1, #1	@ _176->stPvrInfo.u32BFrmRefFlag,
	beq	.L3712	@,
.L3606:
	cmp	fp, r3	@ D.43027, D.43030
	bls	.L3607	@,
	ldr	r2, [r6, #1184]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	rsb	r3, r3, fp	@ D.43027, D.43030, D.43027
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, D.43027
	bcs	.L3605	@,
	ldrb	r3, [r8, #200]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.slice_type, pH264Ctx_34(D)->CurrSlice.slice_type
	cmp	r3, #2	@ pH264Ctx_34(D)->CurrSlice.slice_type,
	bne	.L3713	@,
	cmp	fp, #0	@ D.43027,
	mov	r0, r5	@, pH264Ctx
	subeq	fp, r10, #1	@ D.43030, MaxFrameNum,
	subne	fp, fp, #1	@ D.43030, D.43027,
	str	fp, [r8, #216]	@ D.43030, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	beq	.L3605	@,
	movw	r2, #6462	@,
	ldr	r1, .L3723+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3641:
	mov	r3, fp	@ D.43030, D.43027
.L3604:
	ldr	r2, [r8, #232]	@ pH264Ctx_34(D)->CurrSlice.nal_ref_idc, pH264Ctx_34(D)->CurrSlice.nal_ref_idc
	mov	r0, r5	@, pH264Ctx
	cmp	r2, #0	@ pH264Ctx_34(D)->CurrSlice.nal_ref_idc,
	strne	r3, [r8, #216]	@ D.43030, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	str	r3, [r6, #3476]	@ D.43030, pH264Ctx_34(D)->CurrPOC.frame_num
	bl	DecPOC	@
	mov	r1, #0	@,
	mov	r0, r5	@, pH264Ctx
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret
	bne	.L3714	@,
	strb	r0, [r4, #559]	@ ret, pH264Ctx_34(D)->CurrPic.mode_skip_flag
	mov	r1, #1	@ tmp645,
	strb	r1, [r4, #552]	@ tmp645, pH264Ctx_34(D)->CurrPic.state
	mvn	ip, #0	@ tmp695,
	ldrb	r3, [r8, #203]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.nal_unit_type, pH264Ctx_34(D)->CurrSlice.nal_unit_type
	strb	r3, [r4, #558]	@ pH264Ctx_34(D)->CurrSlice.nal_unit_type, pH264Ctx_34(D)->CurrPic.nal_unit_type
	ldr	r2, [r8, #220]	@ D.43027, pH264Ctx_34(D)->CurrSlice.frame_num
	str	r2, [r4, #968]	@ D.43027, pH264Ctx_34(D)->CurrPic.frame_num
	ldr	r3, [r8, #232]	@ D.43027, pH264Ctx_34(D)->CurrSlice.nal_ref_idc
	str	r2, [sp, #8]	@ D.43027, %sfp
	str	r3, [r4, #976]	@ D.43027, pH264Ctx_34(D)->CurrPic.nal_ref_idc
	ldr	lr, [r6, #3456]	@ pH264Ctx_34(D)->CurrPOC.ThisPOC, pH264Ctx_34(D)->CurrPOC.ThisPOC
	str	r3, [sp, #12]	@ D.43027, %sfp
	str	lr, [r4, #980]	@ pH264Ctx_34(D)->CurrPOC.ThisPOC, pH264Ctx_34(D)->CurrPic.thispoc
	ldr	lr, [r6, #3452]	@ pH264Ctx_34(D)->CurrPOC.framepoc, pH264Ctx_34(D)->CurrPOC.framepoc
	str	lr, [r4, #984]	@ pH264Ctx_34(D)->CurrPOC.framepoc, pH264Ctx_34(D)->CurrPic.framepoc
	ldr	lr, [r6, #3444]	@ pH264Ctx_34(D)->CurrPOC.toppoc, pH264Ctx_34(D)->CurrPOC.toppoc
	str	lr, [r4, #988]	@ pH264Ctx_34(D)->CurrPOC.toppoc, pH264Ctx_34(D)->CurrPic.toppoc
	ldr	lr, [r6, #3448]	@ pH264Ctx_34(D)->CurrPOC.bottompoc, pH264Ctx_34(D)->CurrPOC.bottompoc
	str	ip, [r4, #1024]	@ tmp695, pH264Ctx_34(D)->CurrPic.stream_base_addr
	strb	r0, [r4, #554]	@ ret, pH264Ctx_34(D)->CurrPic.non_existing
	strb	r0, [r4, #557]	@ ret, pH264Ctx_34(D)->CurrPic.is_short_term
	str	lr, [r4, #992]	@ pH264Ctx_34(D)->CurrPOC.bottompoc, pH264Ctx_34(D)->CurrPic.bottompoc
	strb	r0, [r4, #556]	@ ret, pH264Ctx_34(D)->CurrPic.is_long_term
	ldrb	fp, [r8, #201]	@ zero_extendqisi2	@ D.43039, pH264Ctx_34(D)->CurrSlice.field_pic_flag
	cmp	fp, #0	@ D.43039,
	strneb	r1, [r8, #201]	@ tmp645, pH264Ctx_34(D)->CurrSlice.field_pic_flag
	ldrb	r10, [r9, #1318]	@ zero_extendqisi2	@ D.43035, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r0, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	movne	fp, r1	@ D.43039, tmp645
	rsb	r10, r10, #2	@ D.43035, D.43035,
	movne	r1, #2	@ D.43027,
	mla	r10, r0, r10, r10	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, D.43035, D.43035
	mov	r0, r10	@, D.43027
	bl	__aeabi_uidiv	@
	str	r10, [r4, #1016]	@ D.43027, pH264Ctx_34(D)->CurrPic.frame_height_in_mb
	cmp	fp, #0	@ D.43039,
	ldr	r2, [sp, #8]	@ D.43027, %sfp
	ldr	r3, [sp, #12]	@ D.43027, %sfp
	str	r0, [r4, #1012]	@ tmp712, pH264Ctx_34(D)->CurrPic.pic_height_in_mb
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r1, ip, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	str	r1, [r4, #1008]	@ D.43027, pH264Ctx_34(D)->CurrPic.pic_width_in_mb
	mul	r1, r1, r0	@ D.43027, D.43027, tmp712
	str	r1, [r4, #1020]	@ D.43027, pH264Ctx_34(D)->CurrPic.pic_mbs
	ldrb	r1, [r6, #1204]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag
	strb	r1, [r4, #560]	@ pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_34(D)->CurrPic.entropy_coding_mode_flag
	movne	r1, #0	@ D.43028,
	beq	.L3715	@,
.L3622:
	cmp	r3, #0	@ D.43027,
	add	r3, r5, #24576	@ tmp744, pH264Ctx,
	strb	r1, [r4, #561]	@ D.43028, pH264Ctx_34(D)->CurrPic.MbaffFrameFlag
	movw	ip, #2004	@ tmp747,
	strne	r2, [r8, #216]	@ D.43027, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	movw	lr, #49728	@ tmp753,
	ldr	r0, [r3, #1804]	@ pH264Ctx_34(D)->CurrMarkIdx, pH264Ctx_34(D)->CurrMarkIdx
	add	r8, r5, #49664	@ tmp757, pH264Ctx,
	movw	r10, #49744	@ tmp756,
	ldr	r1, .L3723+8	@,
	mla	ip, ip, r0, r5	@ tmp749, tmp747, pH264Ctx_34(D)->CurrMarkIdx, pH264Ctx
	mov	r0, #29	@,
	add	ip, ip, #22272	@ D.43044, tmp749,
	add	ip, ip, #100	@ D.43044, D.43044,
	str	ip, [r4, #964]	@ D.43044, pH264Ctx_34(D)->CurrPic.pMarkPara
	ldr	ip, [r5]	@ D.43036, pH264Ctx_34(D)->pstExtraData
	ldrd	r2, [ip, #56]	@ tmp991, D.43036,
	strd	r2, [r5, lr]	@ tmp991, pH264Ctx, tmp753
	ldrd	r2, [ip, #72]	@ tmp992, D.43036,
	strd	r2, [r8, #72]	@ tmp992, tmp757,
	ldrd	r2, [ip, #88]	@ tmp993, D.43036,
	strd	r2, [r5, r10]	@ tmp993, pH264Ctx, tmp756
	mvn	r2, #0	@ tmp1001,
	ldr	r10, [ip, #104]	@ D.43027, _302->DispEnableFlag
	mvn	r3, #0	@,
	str	r10, [r4, #636]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.DispEnableFlag
	ldr	r10, [ip, #108]	@ D.43027, _302->DispFrameDistance
	str	r10, [r4, #640]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.DispFrameDistance
	ldr	r10, [ip, #112]	@ D.43027, _302->DistanceBeforeFirstFrame
	str	r10, [r4, #644]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	r10, [ip, #128]	@ D.43027, _302->GopNum
	str	r10, [r4, #648]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.GopNum
	ldr	r10, [r7, #752]	@ D.43027, pSPS_42->bit_depth_luma_minus8
	str	r10, [r4, #780]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.bit_depth_luma_minus8
	ldr	r10, [r7, #756]	@ D.43027, pSPS_42->bit_depth_chroma_minus8
	str	r10, [r4, #784]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.bit_depth_chroma_minus8
	strd	r2, [ip, #56]	@ tmp1001, D.43036,
	ldrd	r2, [r5, lr]	@, pH264Ctx, tmp753
	bl	dprint_vfmw	@
	ldrd	r2, [r8, #72]	@, tmp757,
	ldr	r1, .L3723+12	@,
	mov	r0, #29	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r0, r5, #49664	@, pH264Ctx,
	add	r3, r3, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	add	r0, r0, #56	@,,
	mov	r3, r3, asl #4	@ D.43027, D.43027,
	str	r3, [r4, #712]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.image_width
	ldrb	r2, [r9, #1318]	@ zero_extendqisi2	@ D.43035, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r1, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	r3, r2, #2	@ D.43035, D.43035,
	mla	r3, r1, r3, r3	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, D.43035, D.43035
	mov	r3, r3, asl #4	@ D.43027, D.43027,
	str	r3, [r4, #716]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.image_height
	ldr	r2, [r9, #2048]	@ pH264Ctx_34(D)->CurrSPS.chroma_format_idc, pH264Ctx_34(D)->CurrSPS.chroma_format_idc
	ldr	r3, [r9, #1356]	@ pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format
	subs	r2, r2, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.chroma_format_idc,
	ldr	r1, [r9, #1352]	@ pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio
	movne	r2, #1	@ D.43027,
	and	r1, r1, #7	@ dar, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio,
	mov	r3, r3, asl #5	@ D.43027, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format,
	mov	r2, r2, asl #2	@ D.43027, D.43027,
	orr	r2, r2, r1, asl #14	@ D.43027, D.43027, dar,
	uxtb	r3, r3	@ D.43027, D.43027
	orr	r3, r2, r3	@ D.43027, D.43027, D.43027
	str	r3, [r4, #708]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.format
	bl	SetAspectRatio	@
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPic.structure, pH264Ctx_34(D)->CurrPic.structure
	ldr	r2, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	adds	r3, r3, #0	@ D.43038, pH264Ctx_34(D)->CurrPic.structure,
	ldr	r1, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	movne	r3, #1	@ D.43038,
	cmp	r2, #0	@ D.43034,
	str	r3, [r4, #696]	@ D.43038, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	str	r1, [r4, #752]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->CurrPic.fs_image.seq_cnt
	beq	.L3716	@,
	ldr	r3, [r4, #708]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.format
	str	r3, [r2, #148]	@ D.43027, _365->fs_image.format
	ldr	r3, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #696]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	str	r2, [r3, #136]	@ D.43027, _369->fs_image.is_fld_save
	ldr	r3, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #632]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.u32AspectHeight
	str	r2, [r3, #72]	@ D.43027, _372->fs_image.u32AspectHeight
	ldr	r3, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #628]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.u32AspectWidth
	str	r2, [r3, #68]	@ D.43027, _375->fs_image.u32AspectWidth
	ldr	r3, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #712]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.image_width
	str	r2, [r3, #152]	@ D.43027, _378->fs_image.image_width
	ldr	r3, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #716]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.image_height
	str	r2, [r3, #156]	@ D.43027, _381->fs_image.image_height
	ldr	r3, [r7, #3992]	@ D.43027, pSPS_42->disp_center_x
	ldr	r2, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	str	r3, [r2, #168]	@ D.43027, _384->fs_image.disp_center_x
	str	r3, [r4, #728]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.disp_center_x
	ldr	r2, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3996]	@ D.43027, pSPS_42->disp_center_y
	str	r3, [r2, #172]	@ D.43027, _388->fs_image.disp_center_y
	str	r3, [r4, #732]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.disp_center_y
	ldr	r2, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3984]	@ D.43027, pSPS_42->disp_width
	str	r3, [r2, #160]	@ D.43027, _392->fs_image.disp_width
	str	r3, [r4, #720]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.disp_width
	ldr	r2, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3988]	@ D.43027, pSPS_42->disp_height
	str	r3, [r2, #164]	@ D.43027, _396->fs_image.disp_height
	str	r3, [r4, #724]	@ D.43027, pH264Ctx_34(D)->CurrPic.fs_image.disp_height
	ldr	r3, [r4, #960]	@ pH264Ctx_34(D)->CurrPic.frame_store, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	ldr	r1, [r3, #508]	@, _401->logic_fs_id
	bl	FSP_GetDispPhyFs	@
	cmp	r0, #0	@ pstDecFs
	beq	.L3625	@,
	ldr	r3, [r4, #696]	@ pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	mov	r1, #0	@,
	ldr	r2, [r0, #4]	@, pstDecFs_404->PhyFsID
	subs	r3, r3, r1	@, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	movne	r3, #1	@,
	bl	FSP_SetStoreType	@
.L3625:
	add	r8, r5, #49664	@ ivtmp.3109, pH264Ctx,
	add	r0, r5, #49920	@ D.43043, pH264Ctx,
	add	r8, r8, #244	@ ivtmp.3109, ivtmp.3109,
	add	lr, r5, #51200	@ ivtmp.3139, pH264Ctx,
	ldr	r7, [r4, #2192]	@ D.43030, pH264Ctx_34(D)->TotalUsrDatNum
	add	r0, r0, #4	@ D.43043, D.43043,
	add	lr, lr, #148	@ ivtmp.3139, ivtmp.3139,
	mov	r2, r8	@ ivtmp.3160, ivtmp.3109
	mov	r6, #0	@ tmp966,
.L3629:
	ldr	r3, [r2, #4]!	@ MEM[base: _415, offset: 0B], MEM[base: _415, offset: 0B]
	cmp	r3, #0	@ MEM[base: _415, offset: 0B],
	beq	.L3717	@,
.L3626:
	cmp	r2, r0	@ ivtmp.3160, D.43043
	bne	.L3629	@,
	cmp	r7, #0	@ D.43030,
	beq	.L3630	@,
	ble	.L3630	@,
	add	r6, r7, #12800	@ D.43040, uidxpic,
	mov	r9, #0	@ tmp965,
	add	r6, r6, #37	@ D.43040, D.43040,
	add	r6, r5, r6, lsl #2	@ ivtmp.3122, pH264Ctx, D.43040,
.L3631:
	ldr	r1, [r6, #-4]!	@, MEM[base: _105, offset: 0B]
	sub	r7, r7, #1	@ uidxpic, uidxpic,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r7, #0	@ uidxpic,
	str	r9, [r6]	@ tmp965, MEM[base: _105, offset: 0B]
	bne	.L3631	@,
.L3630:
	mov	r3, #0	@ uidxpic,
.L3633:
	ldr	r2, [r8, #4]!	@ D.43048, MEM[base: _284, offset: 0B]
	add	r1, r3, #50	@ tmp918, uidxpic,
	add	r3, r3, #1	@ uidxpic, uidxpic,
	cmp	r2, #0	@ D.43048,
	ldrne	r0, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	strne	r2, [r0, r1, asl #2]	@ D.43048, _432->fs_image.p_usrdat
	cmp	r3, #4	@ uidxpic,
	bne	.L3633	@,
	mov	r0, r5	@, pH264Ctx
	mov	r5, #0	@ tmp921,
	str	r5, [r4, #2192]	@ tmp921, pH264Ctx_34(D)->TotalUsrDatNum
	str	r5, [r4, #996]	@ tmp921, pH264Ctx_34(D)->CurrPic.pic_type
	bl	CalcPicNum	@
	mov	r0, r5	@ D.43029, tmp921
.L3699:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3712:
	ldr	r1, [r2, #536]	@ _176->stPvrInfo.u32IDRFlag, _176->stPvrInfo.u32IDRFlag
	cmp	r1, #0	@ _176->stPvrInfo.u32IDRFlag,
	bne	.L3606	@,
	ldr	r1, [r2, #544]	@ _176->stPvrInfo.u32ContinuousFlag, _176->stPvrInfo.u32ContinuousFlag
	cmp	r1, #0	@ _176->stPvrInfo.u32ContinuousFlag,
	bne	.L3606	@,
	ldr	r2, [r2, #520]	@ _176->s32FastForwardBackwardSpeed, _176->s32FastForwardBackwardSpeed
	add	r2, r2, #1020	@ D.43043, _176->s32FastForwardBackwardSpeed,
	add	r2, r2, #3	@ D.43043, D.43043,
	cmp	r2, #2048	@ D.43043,
	bcc	.L3606	@,
.L3605:
	ldrb	r3, [r9, #1317]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag, pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag
	cmp	r3, #0	@ pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag,
	beq	.L3718	@,
	mov	r0, r5	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	bne	.L3719	@,
.L3603:
	ldr	r3, [r8, #220]	@ D.43030, pH264Ctx_34(D)->CurrSlice.frame_num
	b	.L3604	@
.L3717:
	cmp	r7, #0	@ D.43030,
	beq	.L3626	@,
	ldr	r1, [r4, #2196]	@ D.43048, pH264Ctx_34(D)->pUsrDatArray
	subs	r7, r7, #1	@ D.43030, D.43030,
	str	r1, [r2]	@ D.43048, MEM[base: _415, offset: 0B]
	beq	.L3627	@,
	mov	r1, lr	@ ivtmp.3139, ivtmp.3139
.L3628:
	add	r3, r3, #1	@ uidxsei, uidxsei,
	ldr	ip, [r1, #4]!	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 0B]
	cmp	r3, r7	@ uidxsei, D.43030
	str	ip, [r1, #-4]	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 4294967292B]
	bne	.L3628	@,
.L3627:
	add	r3, r7, #12800	@ tmp902, D.43030,
	add	r3, r3, #36	@ tmp902, tmp902,
	add	r3, r5, r3, lsl #2	@ tmp903, pH264Ctx, tmp902,
	str	r6, [r3, #4]	@ tmp966, pH264Ctx_34(D)->pUsrDatArray
	str	r7, [r4, #2192]	@ D.43030, pH264Ctx_34(D)->TotalUsrDatNum
	b	.L3626	@
.L3715:
	ldrb	r1, [r9, #1319]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag, pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag
	adds	r1, r1, #0	@ D.43028, pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag,
	movne	r1, #1	@ D.43028,
	b	.L3622	@
.L3708:
	ldr	r3, [r2, #32]	@ _65->eCapLevel, _65->eCapLevel
	cmp	r3, #25	@ _65->eCapLevel,
	bne	.L3586	@,
	ldr	r3, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	cmp	r6, #0	@ D.43035,
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, #1	@ D.43027, pH264Ctx_34(D)->SeqCnt,
	str	r3, [r4, #3648]	@ D.43027, pH264Ctx_34(D)->SeqCnt
	beq	.L3587	@,
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	bne	.L3720	@,
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	subs	r3, r0, #0	@ ret,
	bne	.L3634	@,
	add	r6, r5, #16384	@ tmp962, pH264Ctx,
	ldrb	ip, [r9, #1318]	@ zero_extendqisi2	@ D.43035, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r2, [r9, #1272]	@ pH264Ctx_34(D)->CurWidthInMb, pH264Ctx_34(D)->CurWidthInMb
	ldr	r3, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	ip, ip, #2	@ D.43035, D.43035,
	ldr	fp, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	cmp	r2, #0	@ pH264Ctx_34(D)->CurWidthInMb,
	add	r3, r3, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	add	fp, fp, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mov	r3, r3, asl #4	@ D.43027, D.43027,
	mov	fp, fp, asl #4	@ ImageWidth, D.43027,
	mul	ip, ip, r3	@ ImageHeight, D.43035, D.43027
	bne	.L3594	@,
	ldr	r0, [r6, #1184]	@ D.43027, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	str	r0, [r4, #2168]	@ D.43027, pH264Ctx_34(D)->TotalPmvNum
	ldr	r3, [r5]	@ D.43036, pH264Ctx_34(D)->pstExtraData
	ldr	r1, [r3, #568]	@ D.43027, _91->stChanOption.s32MaxWidth
	cmp	r1, fp	@ D.43027, ImageWidth
	bcc	.L3590	@,
	ldr	r2, [r3, #572]	@ D.43027, _91->stChanOption.s32MaxHeight
	cmp	r2, ip	@ D.43027, ImageHeight
	str	r2, [sp, #8]	@ D.43027, %sfp
	bcc	.L3590	@,
	add	lr, r5, #24576	@ tmp451, pH264Ctx,
	ldr	r2, [r3, #588]	@ tmp990, _91->stChanOption.s32MaxRefFrameNum
	ldr	lr, [lr, #2048]	@ pH264Ctx_34(D)->DPB.size, pH264Ctx_34(D)->DPB.size
	cmp	r2, lr	@ tmp990, pH264Ctx_34(D)->DPB.size
	bcc	.L3721	@,
	ldr	lr, [r3, #596]	@ _91->stChanOption.s32SupportBFrame, _91->stChanOption.s32SupportBFrame
	str	ip, [sp, #12]	@ ImageHeight, %sfp
	cmp	lr, #0	@ _91->stChanOption.s32SupportBFrame,
	moveq	r0, #1	@ tmp458,
	streq	r0, [r4, #2168]	@ tmp458, pH264Ctx_34(D)->TotalPmvNum
	ldreq	r1, [r3, #568]	@ D.43027, _91->stChanOption.s32MaxWidth
	ldreq	r3, [r3, #572]	@ D.43027, _91->stChanOption.s32MaxHeight
	str	r0, [sp]	@ D.43027,
	mov	r0, r5	@, pH264Ctx
	streq	r3, [sp, #8]	@ D.43027, %sfp
	add	r3, r5, #51200	@, pH264Ctx,
	ldr	r2, [sp, #8]	@, %sfp
	add	r3, r3, #116	@,,
	bl	H264_ArrangeVahbMem	@
	ldr	ip, [sp, #12]	@ ImageHeight, %sfp
	cmp	r0, #1	@,
	beq	.L3594	@,
.L3599:
	mov	r4, #0	@ tmp463,
	ldr	r1, .L3723+16	@,
	str	r4, [r9, #1272]	@ tmp463, pH264Ctx_34(D)->CurWidthInMb
	mov	r0, r4	@, tmp463
	str	r4, [r9, #1276]	@ tmp463, pH264Ctx_34(D)->CurHeightInMb
	bl	dprint_vfmw	@
	mov	r1, r4	@, tmp463
	mov	r0, r5	@, pH264Ctx
	bl	ClearAll	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3707:
	ldrb	r3, [r7, #24]	@ zero_extendqisi2	@ pSPS_42->is_refreshed, pSPS_42->is_refreshed
	cmp	r3, #0	@ pSPS_42->is_refreshed,
	beq	.L3583	@,
	b	.L3582	@
.L3709:
	ldr	r3, [r4, #3740]	@ pH264Ctx_34(D)->DSD_NeedClearQue, pH264Ctx_34(D)->DSD_NeedClearQue
	cmp	r3, #1	@ pH264Ctx_34(D)->DSD_NeedClearQue,
	bne	.L3597	@,
	b	.L3596	@
.L3718:
	ldr	r1, .L3723+20	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5]	@ pH264Ctx_34(D)->pstExtraData, pH264Ctx_34(D)->pstExtraData
	ldr	fp, [r3, #520]	@ _224->s32FastForwardBackwardSpeed, _224->s32FastForwardBackwardSpeed
	bics	fp, fp, #1024	@ D.43035, _224->s32FastForwardBackwardSpeed,
	bne	.L3603	@,
	ldr	r3, [r8, #220]	@ D.43030, pH264Ctx_34(D)->CurrSlice.frame_num
	mov	r1, r10	@, MaxFrameNum
	ldr	r0, [r8, #216]	@ pH264Ctx_34(D)->CurrSlice.prev_frame_num, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	add	r0, r0, #1	@, pH264Ctx_34(D)->CurrSlice.prev_frame_num,
	str	r3, [sp, #8]	@ D.43030, %sfp
	bl	__aeabi_uidivmod	@
	ldr	r3, [sp, #8]	@ D.43030, %sfp
	cmp	r3, r1	@ D.43030,
	bcs	.L3616	@,
	ldrb	r2, [r8, #200]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.slice_type, pH264Ctx_34(D)->CurrSlice.slice_type
	cmp	r2, #2	@ pH264Ctx_34(D)->CurrSlice.slice_type,
	beq	.L3604	@,
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	mov	r0, fp	@, D.43035
	movw	r2, #6513	@,
	ldr	r1, .L3723+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3706:
	ldr	r1, [r3, #508]	@, _44->logic_fs_id
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	strb	r6, [r3, #1]	@ _44->is_used, _49->is_used
	ldr	r3, [r4, #960]	@ D.43034, pH264Ctx_34(D)->CurrPic.frame_store
	strb	r6, [r3, #4]	@ _44->is_used, _51->is_in_dpb
	b	.L3581	@
.L3607:
	rsb	r3, r3, fp	@ D.43027, D.43030, D.43027
	ldr	r2, [r6, #1184]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	add	r3, r3, r10	@ D.43027, D.43027, MaxFrameNum
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, D.43027
	bcs	.L3605	@,
	ldrb	r3, [r8, #200]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.slice_type, pH264Ctx_34(D)->CurrSlice.slice_type
	cmp	r3, #2	@ pH264Ctx_34(D)->CurrSlice.slice_type,
	bne	.L3722	@,
	cmp	fp, #0	@ D.43027,
	mov	r0, r5	@, pH264Ctx
	subeq	fp, r10, #1	@ D.43030, MaxFrameNum,
	subne	fp, fp, #1	@ D.43030, D.43027,
	str	fp, [r8, #216]	@ D.43030, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	beq	.L3605	@,
	movw	r2, #6488	@,
	ldr	r1, .L3723+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3587:
	bl	InitDPB	@
	subs	r3, r0, #0	@ ret,
	bne	.L3634	@,
	add	r6, r5, #16384	@ tmp962, pH264Ctx,
	ldrb	ip, [r9, #1318]	@ zero_extendqisi2	@ D.43035, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r3, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	ip, ip, #2	@ D.43035, D.43035,
	ldr	fp, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r3, r3, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	add	fp, fp, #1	@ D.43027, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mov	r3, r3, asl #4	@ D.43027, D.43027,
	mov	fp, fp, asl #4	@ ImageWidth, D.43027,
	mul	ip, ip, r3	@ ImageHeight, D.43035, D.43027
.L3594:
	mov	fp, fp, lsr #4	@ D.43027, ImageWidth,
	mov	ip, ip, lsr #4	@ D.43027, ImageHeight,
	str	fp, [r9, #1272]	@ D.43027, pH264Ctx_34(D)->CurWidthInMb
	str	ip, [r9, #1276]	@ D.43027, pH264Ctx_34(D)->CurHeightInMb
	b	.L3585	@
.L3580:
	movw	r3, #6248	@,
	ldr	r2, .L3723+28	@,
	ldr	r1, .L3723+32	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L3581	@
.L3616:
	mov	r0, r5	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	beq	.L3603	@,
	mov	r0, fp	@, D.43035
	movw	r2, #6525	@,
	ldr	r1, .L3723+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3638:
	mov	r3, r0	@, ret
	movw	r2, #6383	@,
	ldr	r1, .L3723+40	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3719:
	movw	r2, #6539	@,
	ldr	r1, .L3723+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3714:
	movw	r2, #6559	@,
	ldr	r1, .L3723+44	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3716:
	movw	r3, #6643	@,
	ldr	r2, .L3723+28	@,
	ldr	r1, .L3723+48	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3710:
	mov	r3, r0	@, ret
	movw	r2, #6374	@,
	mov	r0, r6	@, D.43035
	ldr	r1, .L3723+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3713:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	ldr	ip, [r6, #1184]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	ldr	r1, [r8, #220]	@ pH264Ctx_34(D)->CurrSlice.frame_num, pH264Ctx_34(D)->CurrSlice.frame_num
	movw	r2, #6451	@,
.L3705:
	ldr	r3, [r8, #216]	@ pH264Ctx_34(D)->CurrSlice.prev_frame_num, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	mov	r0, #0	@,
	str	ip, [sp]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1,
	rsb	r3, r3, r1	@, pH264Ctx_34(D)->CurrSlice.prev_frame_num, pH264Ctx_34(D)->CurrSlice.frame_num
	ldr	r1, .L3723+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3722:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	ldr	ip, [r6, #1184]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	ldr	r1, [r8, #220]	@ pH264Ctx_34(D)->CurrSlice.frame_num, pH264Ctx_34(D)->CurrSlice.frame_num
	movw	r2, #6477	@,
	b	.L3705	@
.L3634:
	movw	r2, #6289	@,
	ldr	r1, .L3723+40	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3590:
	ldr	r1, .L3723+56	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3720:
	mov	r0, fp	@, _65->stChanOption.s32ReRangeEn
	movw	r2, #6280	@,
	ldr	r1, .L3723+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3721:
	ldr	r1, .L3723+60	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43029,
	b	.L3699	@
.L3724:
	.align	2
.L3723:
	.word	.LC366
	.word	.LC330
	.word	.LC372
	.word	.LC373
	.word	.LC365
	.word	.LC368
	.word	.LC369
	.word	.LANCHOR0+344
	.word	.LC361
	.word	.LC370
	.word	.LC362
	.word	.LC371
	.word	.LC374
	.word	.LC367
	.word	.LC363
	.word	.LC364
	.fnend
	.size	InitPic, .-InitPic
	.align	2
	.global	H264_DecSlice
	.type	H264_DecSlice, %function
H264_DecSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #49152	@ tmp279, pH264Ctx,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r2, [r6, #3632]	@ pH264Ctx_22(D)->TotalNal, pH264Ctx_22(D)->TotalNal
	mov	r0, #22	@,
	ldr	r1, .L3779	@,
	add	r5, r4, #20480	@ tmp280, pH264Ctx,
	sub	r2, r2, #1	@, pH264Ctx_22(D)->TotalNal,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #368]	@ D.43081, pH264Ctx_22(D)->pCurrNal
	mov	r0, r4	@, pH264Ctx
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ D.43082, _26->nal_unit_type
	strb	r2, [r5, #203]	@ D.43082, pH264Ctx_22(D)->CurrSlice.nal_unit_type
	ldr	r3, [r3, #76]	@ D.43080, _26->nal_ref_idc
	str	r3, [r5, #232]	@ D.43080, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3773	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderSecondPart	@
	cmp	r0, #0	@ ret
	bne	.L3773	@,
	ldr	r2, [r6, #3612]	@ D.43080, pH264Ctx_22(D)->SliceParaNum
	cmp	r2, #0	@ D.43080,
	moveq	r3, r2	@ Size, D.43080
	beq	.L3732	@,
	add	r10, r4, #50688	@ ivtmp.3173, pH264Ctx,
	mov	r1, r0	@ PrevNalAddr, PrevNalSize
	add	r10, r10, #12	@ ivtmp.3173, ivtmp.3173,
	mov	r3, r0	@ Size, PrevNalSize
	mov	r7, r0	@ i, PrevNalSize
.L3740:
	ldr	r8, [r10, #4]!	@ D.43081, MEM[base: _5, offset: 0B]
	ldr	lr, [r8, #8]	@ PrevNalAddr, _50->stream[0].streamBuffer
	ldr	ip, [r8, #36]	@ PrevNalAddr, _50->stream[1].streamBuffer
	cmp	lr, #0	@ PrevNalAddr,
	ldrne	r9, [r8, #12]	@ PrevNalSize, _50->stream[0].bitstream_length
	moveq	r9, lr	@ PrevNalSize, PrevNalAddr
	cmp	ip, #0	@ PrevNalAddr,
	moveq	r8, ip	@ PrevNalSize, PrevNalAddr
	ldrne	r8, [r8, #40]	@ PrevNalSize, _50->stream[1].bitstream_length
	cmp	r1, #0	@ PrevNalAddr,
	addeq	r3, r9, r3	@ D.43080, PrevNalSize, Size
	addeq	r3, r3, r8	@ Size, D.43080, PrevNalSize
	beq	.L3738	@,
	cmp	lr, r1	@ PrevNalAddr, PrevNalAddr
	add	r3, r8, r3	@ D.43077, PrevNalSize, Size
	addhi	r1, r1, r0	@ D.43080, PrevNalAddr, PrevNalSize
	rsbhi	r1, r1, lr	@ D.43077, D.43080, PrevNalAddr
	movls	r1, r9	@ D.43077, PrevNalSize
	addhi	r1, r1, r9	@ D.43077, D.43077, PrevNalSize
	add	r3, r3, r1	@ Size, D.43077, D.43077
.L3738:
	cmp	ip, #0	@ PrevNalAddr,
	add	r7, r7, #1	@ i, i,
	movne	r1, ip	@ PrevNalAddr, PrevNalAddr
	movne	r0, r8	@ PrevNalSize, PrevNalSize
	moveq	r1, lr	@ PrevNalAddr, PrevNalAddr
	moveq	r0, r9	@ PrevNalSize, PrevNalSize
	cmp	r7, r2	@ i, D.43080
	bne	.L3740	@,
.L3732:
	ldr	ip, [r6, #1012]	@ pH264Ctx_22(D)->CurrPic.pic_height_in_mb, pH264Ctx_22(D)->CurrPic.pic_height_in_mb
	movw	r0, #1620	@ tmp209,
	ldr	r1, [r6, #1008]	@ pH264Ctx_22(D)->CurrPic.pic_width_in_mb, pH264Ctx_22(D)->CurrPic.pic_width_in_mb
	str	r3, [r6, #3672]	@ Size, pH264Ctx_22(D)->MaxBytesReceived
	mul	r1, r1, ip	@ TotalMbs, pH264Ctx_22(D)->CurrPic.pic_width_in_mb, pH264Ctx_22(D)->CurrPic.pic_height_in_mb
	cmp	r1, r0	@ TotalMbs, tmp209
	movgt	r1, r1, asl #7	@ MaxStreamThr, TotalMbs,
	ble	.L3774	@,
.L3742:
	add	r7, r4, #12288	@ tmp281, pH264Ctx,
	ldr	r0, [r7, #1280]	@ pH264Ctx_22(D)->MaxSliceNum, pH264Ctx_22(D)->MaxSliceNum
	cmp	r0, r2	@ pH264Ctx_22(D)->MaxSliceNum, D.43080
	bls	.L3743	@,
	cmp	r1, r3	@ MaxStreamThr, Size
	bcc	.L3743	@,
	ldrb	r3, [r5, #205]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.new_pic_flag, pH264Ctx_22(D)->CurrSlice.new_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.new_pic_flag,
	bne	.L3775	@,
.L3746:
	mov	r0, r4	@, pH264Ctx
	bl	PicTypeStatistic	@
	mov	r0, r4	@, pH264Ctx
	bl	DecList	@
	cmp	r0, #0	@ ret
	bne	.L3776	@,
	mov	r0, r4	@, pH264Ctx
	bl	IsRefListWrong	@
	subs	r5, r0, #0	@ ret,
	bne	.L3777	@,
	mov	r0, r4	@, pH264Ctx
	bl	CalcStreamBits	@
	mov	r0, r4	@, pH264Ctx
	bl	WriteSliceMsg	@
	mov	r0, r4	@, pH264Ctx
	bl	ExitSlice	@
	ldr	r3, [r6, #3668]	@ pH264Ctx_22(D)->SliceNumInPic, pH264Ctx_22(D)->SliceNumInPic
	mov	r0, r5	@ D.43079, ret
	mov	r2, #1	@ tmp271,
	add	r3, r3, r2	@ D.43080, pH264Ctx_22(D)->SliceNumInPic,
	str	r2, [r6, #2172]	@ tmp271, pH264Ctx_22(D)->AllowStartDec
	str	r3, [r6, #3668]	@ D.43080, pH264Ctx_22(D)->SliceNumInPic
.L3729:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3774:
	mov	r0, r1, asl #10	@ tmp212, TotalMbs,
	movw	ip, #32769	@ tmp214,
	sub	r1, r0, r1, asl #8	@ tmp213, tmp212, TotalMbs,
	cmp	r1, ip	@ tmp213, tmp214
	movgt	r1, r1, asr #1	@ MaxStreamThr, tmp213,
	movle	r1, #16384	@ MaxStreamThr,
	b	.L3742	@
.L3775:
	ldr	r1, .L3779+4	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #203]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.nal_unit_type, pH264Ctx_22(D)->CurrSlice.nal_unit_type
	ldrb	r1, [r6, #555]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrPic.structure, pH264Ctx_22(D)->CurrPic.structure
	mov	r2, #0	@ tmp247,
	cmp	r3, #5	@ pH264Ctx_22(D)->CurrSlice.nal_unit_type,
	ldr	r3, [r6, #3652]	@ D.43077, pH264Ctx_22(D)->TotalPicNum
	str	r2, [r6, #3668]	@ tmp247, pH264Ctx_22(D)->SliceNumInPic
	mov	r0, r4	@, pH264Ctx
	streq	r3, [r6, #3664]	@ D.43077, pH264Ctx_22(D)->IDRPicOfCurrPic
	cmp	r1, r2	@ pH264Ctx_22(D)->CurrPic.structure,
	add	r3, r3, #1	@ D.43080, D.43077,
	str	r3, [r6, #3652]	@ D.43080, pH264Ctx_22(D)->TotalPicNum
	ldreq	r3, [r6, #3656]	@ pH264Ctx_22(D)->TotalFrameNum, pH264Ctx_22(D)->TotalFrameNum
	ldrne	r3, [r6, #3660]	@ pH264Ctx_22(D)->TotalFieldNum, pH264Ctx_22(D)->TotalFieldNum
	addeq	r3, r3, #1	@ D.43080, pH264Ctx_22(D)->TotalFrameNum,
	addne	r3, r3, #1	@ D.43080, pH264Ctx_22(D)->TotalFieldNum,
	streq	r3, [r6, #3656]	@ D.43080, pH264Ctx_22(D)->TotalFrameNum
	strne	r3, [r6, #3660]	@ D.43080, pH264Ctx_22(D)->TotalFieldNum
	bl	InitPic	@
	cmp	r0, #0	@,
	bne	.L3778	@,
	mov	r0, r4	@, pH264Ctx
	bl	WritePicMsg	@
	b	.L3746	@
.L3773:
	ldr	r1, .L3779+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L3779+12	@ tmp183,
	ldr	r3, [r3]	@ D.43083, g_event_report
	cmp	r3, #0	@ D.43083,
	beq	.L3771	@,
	add	r2, sp, #16	@ tmp185,,
	ldr	r0, [r6, #3688]	@, pH264Ctx_22(D)->ChanID
	mvn	ip, #0	@ tmp184,
	mov	r1, #100	@,
	str	ip, [r2, #-8]!	@ tmp184,
	blx	r3	@ D.43083
.L3771:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.43079,
	b	.L3729	@
.L3743:
	str	r1, [sp]	@ MaxStreamThr,
	mov	r0, #0	@,
	ldr	r1, .L3779+16	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #1280]	@ D.43080, pH264Ctx_22(D)->MaxSliceNum
	ldr	r2, [r6, #3612]	@ D.43080, pH264Ctx_22(D)->SliceParaNum
	cmp	r2, r3	@ D.43080, D.43080
	bcc	.L3745	@,
	ldr	r1, .L3779+12	@ tmp226,
	ldr	ip, [r1]	@ D.43083, g_event_report
	cmp	ip, #0	@ D.43083,
	beq	.L3745	@,
	str	r2, [sp, #8]	@ D.43080, para
	mov	r1, #108	@,
	add	r2, sp, #8	@,,
	str	r3, [sp, #12]	@ D.43080, para
	ldr	r0, [r6, #3688]	@, pH264Ctx_22(D)->ChanID
	blx	ip	@ D.43083
.L3745:
	ldr	r1, .L3779+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.43079,
	b	.L3729	@
.L3776:
	mov	r2, r0	@, ret
	ldr	r1, .L3779+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43079,
	b	.L3729	@
.L3777:
	ldr	r1, .L3779+28	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L3771	@
.L3778:
	ldr	r1, .L3779+32	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43079,
	b	.L3729	@
.L3780:
	.align	2
.L3779:
	.word	.LC321
	.word	.LC377
	.word	.LC322
	.word	g_event_report
	.word	.LC375
	.word	.LC376
	.word	.LC379
	.word	.LC380
	.word	.LC378
	.fnend
	.size	H264_DecSlice, .-H264_DecSlice
	.align	2
	.global	H264_DecOneNal
	.type	H264_DecOneNal, %function
H264_DecOneNal:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r4, r0, #49152	@ tmp462, pH264Ctx,
	ldr	r5, [r0, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ NalMode, NalMode
	ldr	r3, [r5, #68]	@ _264->nal_segment, _264->nal_segment
	cmp	r3, #0	@ _264->nal_segment,
	movne	ip, r5	@ ivtmp.3208, D.43127
	movne	r2, #0	@ i,
	ldrne	r3, [r4, #3672]	@ D.43124, pH264Ctx_19(D)->MaxBytesReceived
	beq	.L3786	@,
.L3785:
	ldr	lr, [ip, #12]	@ MEM[base: _20, offset: 12B], MEM[base: _20, offset: 12B]
	add	r2, r2, #1	@ i, i,
	add	ip, ip, #28	@ ivtmp.3208, ivtmp.3208,
	add	r3, r3, lr	@ D.43124, D.43124, MEM[base: _20, offset: 12B]
	str	r3, [r4, #3672]	@ D.43124, pH264Ctx_19(D)->MaxBytesReceived
	ldr	lr, [r5, #68]	@ _264->nal_segment, _264->nal_segment
	cmp	lr, r2	@ _264->nal_segment, i
	bhi	.L3785	@,
.L3786:
	add	r8, r7, #13504	@ D.43125, pH264Ctx,
	mov	r9, #0	@ tmp241,
	add	r8, r8, #24	@ D.43125, D.43125,
	strb	r9, [r5]	@ tmp241, _264->nal_used_segment
	mov	r1, #32	@,
	mov	r0, r8	@, D.43125
	bl	BsGet	@
	ldr	r3, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	ldr	r1, .L3939	@,
	and	lr, r0, #31	@ tmp245, nal_header,
	strb	lr, [r3, #2]	@ tmp245, _33->nal_unit_type
	ldr	r3, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	ubfx	ip, r0, #5, #2	@ D.43124, nal_header,,
	ubfx	r2, r0, #7, #1	@ D.43124, nal_header,,
	mov	r5, r0	@ nal_header,
	mov	r0, #22	@,
	str	ip, [r3, #76]	@ D.43124, _37->nal_ref_idc
	ldr	r3, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	str	r2, [r3, #80]	@ D.43124, _41->forbidden_bit
	ldr	r2, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _45->nal_bitoffset, _45->nal_bitoffset
	add	r3, r3, #32	@ D.43124, _45->nal_bitoffset,
	str	r3, [r2, #64]	@ D.43124, _45->nal_bitoffset
	str	r9, [r4, #3628]	@ tmp241, pH264Ctx_19(D)->SeErrFlg
	ldr	r3, [r7, #368]	@ pH264Ctx_19(D)->pCurrNal, pH264Ctx_19(D)->pCurrNal
	ldr	r2, [r4, #3632]	@, pH264Ctx_19(D)->TotalNal
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@, _51->nal_unit_type
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3632]	@ D.43124, pH264Ctx_19(D)->TotalNal
	movw	r3, #371	@ tmp264,
	cmp	r2, r3	@ D.43124, tmp264
	beq	.L3934	@,
.L3784:
	add	r2, r2, #1	@ D.43124, D.43124,
	str	r2, [r4, #3632]	@ D.43124, pH264Ctx_19(D)->TotalNal
	ldr	r3, [r7, #368]	@ pH264Ctx_19(D)->pCurrNal, pH264Ctx_19(D)->pCurrNal
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ D.43128, _60->nal_unit_type
	sub	r3, r2, #1	@ tmp278, D.43128,
	cmp	r3, #29	@ tmp278,
	ldrls	pc, [pc, r3, asl #2]	@ tmp278
	b	.L3787	@
.L3789:
	.word	.L3788
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3788
	.word	.L3790
	.word	.L3791
	.word	.L3792
	.word	.L3793
	.word	.L3794
	.word	.L3795
	.word	.L3796
	.word	.L3797
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3798
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3787
	.word	.L3799
.L3799:
	mov	r2, #30	@,
	ldr	r1, .L3939+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ NalMode,
	bne	.L3816	@,
	ldr	r1, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.43127,
	beq	.L3816	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	str	r6, [r7, #368]	@ NalMode, pH264Ctx_19(D)->pCurrNal
.L3816:
	mov	r1, #32	@,
	mov	r0, r8	@, D.43125
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.43126,
	mov	r0, r8	@, D.43125
	bl	BsGet	@
	ldr	r3, .L3939+8	@ tmp427,
	rev	r5, r5	@ code0, D.43126
	ldr	r2, [r3, #440]	@ MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B], MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B]
	ldr	r3, [r3, #436]	@ MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B], MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B]
	rev	r0, r0	@ code1,
	cmp	r0, r2	@ code1, MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B]
	cmpeq	r5, r3	@, code0, MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B]
	bne	.L3917	@,
	ldr	r5, .L3939+12	@ tmp461,
	ldr	r3, [r5]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	beq	.L3817	@,
	mov	r2, #0	@,
	mov	r1, #112	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	blx	r3	@ D.43129
.L3817:
	mov	r6, #0	@ tmp442,
	mov	r0, r7	@, pH264Ctx
	str	r6, [r7, #364]	@ tmp442, pH264Ctx_19(D)->StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3917	@,
.L3930:
	ldr	r3, [r5]	@ D.43129, g_event_report
	cmp	r3, r6	@ D.43129,
	beq	.L3916	@,
	mov	r2, r6	@, tmp442
.L3921:
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.43129
.L3916:
	mvn	r0, #0	@ D.43122,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3788:
	ldr	r3, [r4, #3644]	@, pH264Ctx_19(D)->TotalSlice
	mov	r0, #22	@,
	ldr	r1, .L3939+16	@,
	bl	dprint_vfmw	@
	ldr	r2, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	add	r3, r7, #20480	@ tmp284, pH264Ctx,
	mov	r0, r7	@, pH264Ctx
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ D.43128, _65->nal_unit_type
	strb	r1, [r3, #203]	@ D.43128, pH264Ctx_19(D)->CurrSlice.nal_unit_type
	ldr	r2, [r2, #76]	@ D.43124, _65->nal_ref_idc
	str	r2, [r3, #232]	@ D.43124, pH264Ctx_19(D)->CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r8, r0, #0	@ ret,
	mov	r0, r7	@, pH264Ctx
	bne	.L3935	@,
	bl	H264_DecSlice	@
	cmp	r0, #0	@,
	beq	.L3917	@,
	add	r5, r7, #51200	@ ivtmp.3189, pH264Ctx,
	add	r6, r7, #49664	@ ivtmp.3198, pH264Ctx,
	add	r6, r6, #244	@ ivtmp.3198, ivtmp.3198,
	mov	r7, r5	@ D.43134, ivtmp.3189
	add	r5, r5, #144	@ ivtmp.3189, ivtmp.3189,
	add	r7, r7, #160	@ D.43134, D.43134,
.L3806:
	ldr	r1, [r5, #4]!	@ D.43130, MEM[base: _172, offset: 0B]
	cmp	r1, #0	@ D.43130,
	beq	.L3804	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r5]	@ tmp463, MEM[base: _172, offset: 0B]
.L3804:
	ldr	r1, [r6, #4]!	@ D.43130, MEM[base: _167, offset: 0B]
	cmp	r1, #0	@ D.43130,
	beq	.L3805	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r6]	@ tmp463, MEM[base: _167, offset: 0B]
.L3805:
	cmp	r5, r7	@ ivtmp.3189, D.43134
	bne	.L3806	@,
	ldr	r3, .L3939+12	@ tmp306,
	mov	r2, #0	@ tmp305,
	str	r2, [r4, #2192]	@ tmp305, pH264Ctx_19(D)->TotalUsrDatNum
	ldr	r3, [r3]	@ D.43129, g_event_report
	cmp	r3, r2	@ D.43129,
	bne	.L3921	@,
	b	.L3916	@
.L3790:
	ldr	r1, .L3939+20	@,
	mov	r2, #6	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecSEI	@
	ldr	r1, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.43127,
	mov	r5, r0	@ ret,
	beq	.L3812	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp364,
	str	r3, [r7, #368]	@ tmp364, pH264Ctx_19(D)->pCurrNal
.L3812:
	cmp	r5, #0	@ ret,
	bne	.L3936	@,
.L3917:
	mov	r0, #0	@ D.43122,
.L3913:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3791:
	ldr	r1, .L3939+24	@,
	mov	r2, #7	@,
	ldr	r3, [r4, #3636]	@, pH264Ctx_19(D)->TotalSPS
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecSPS	@
	ldr	r1, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.43127,
	mov	r5, r0	@ ret,
	beq	.L3810	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp342,
	str	r3, [r7, #368]	@ tmp342, pH264Ctx_19(D)->pCurrNal
.L3810:
	cmp	r5, #0	@ ret,
	bne	.L3937	@,
	ldr	r3, [r4, #3636]	@ pH264Ctx_19(D)->TotalSPS, pH264Ctx_19(D)->TotalSPS
	mov	r0, r5	@ D.43122, ret
	add	r3, r3, #1	@ D.43124, pH264Ctx_19(D)->TotalSPS,
	str	r3, [r4, #3636]	@ D.43124, pH264Ctx_19(D)->TotalSPS
	b	.L3913	@
.L3792:
	ldr	r1, .L3939+28	@,
	mov	r2, #8	@,
	ldr	r3, [r4, #3640]	@, pH264Ctx_19(D)->TotalPPS
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecPPS	@
	ldr	r1, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.43127,
	mov	r5, r0	@ ret,
	beq	.L3808	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp317,
	str	r3, [r7, #368]	@ tmp317, pH264Ctx_19(D)->pCurrNal
.L3808:
	cmp	r5, #0	@ ret,
	bne	.L3938	@,
	ldr	r3, [r4, #3640]	@ pH264Ctx_19(D)->TotalPPS, pH264Ctx_19(D)->TotalPPS
	mov	r0, r5	@ D.43122, ret
	add	r3, r3, #1	@ D.43124, pH264Ctx_19(D)->TotalPPS,
	str	r3, [r4, #3640]	@ D.43124, pH264Ctx_19(D)->TotalPPS
	b	.L3913	@
.L3793:
	ldr	r1, .L3939+32	@,
	mov	r2, #9	@,
.L3923:
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L3927:
	ldr	r1, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.43127,
	beq	.L3917	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp421,
	mov	r0, r3	@ D.43122, tmp421
	str	r3, [r7, #368]	@ tmp421, pH264Ctx_19(D)->pCurrNal
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3794:
	mov	r2, #10	@,
	ldr	r1, .L3939+36	@,
	b	.L3923	@
.L3795:
	mov	r2, #11	@,
	ldr	r1, .L3939+40	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r1, #32	@,
	mov	r0, r8	@, D.43125
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.43126,
	mov	r0, r8	@, D.43125
	bl	BsGet	@
	movw	r2, #20036	@ tmp388,
	movw	r3, #20553	@ tmp391,
	movt	r2, 17221	@ tmp388,
	movt	r3, 18515	@ tmp391,
	cmp	r0, r2	@, tmp388
	cmpeq	r5, r3	@, D.43126, tmp391
	bne	.L3927	@,
	ldr	r5, .L3939+12	@ tmp461,
	add	r3, r7, #12288	@ tmp396, pH264Ctx,
	mov	r2, #1	@ tmp397,
	strb	r2, [r3, #1268]	@ tmp397, pH264Ctx_19(D)->IsStreamEndFlag
	ldr	r3, [r5]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	beq	.L3815	@,
	mov	r2, #0	@,
	mov	r1, #112	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	blx	r3	@ D.43129
.L3815:
	mov	r6, #0	@ tmp403,
	mov	r0, r7	@, pH264Ctx
	str	r6, [r7, #364]	@ tmp403, pH264Ctx_19(D)->StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3927	@,
	b	.L3930	@
.L3796:
	mov	r2, #12	@,
	ldr	r1, .L3939+44	@,
	b	.L3923	@
.L3797:
	mov	r2, #13	@,
	ldr	r1, .L3939+48	@,
	b	.L3923	@
.L3798:
	mov	r2, #19	@,
	ldr	r1, .L3939+52	@,
	b	.L3923	@
.L3787:
	mov	r3, r5	@, nal_header
	ldr	r1, .L3939+56	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r5, #256	@ nal_header,
	ldr	r5, .L3939+12	@ tmp461,
	beq	.L3818	@,
	ldr	r3, [r5]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	beq	.L3819	@,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	blx	r3	@ D.43129
.L3818:
	ldr	r1, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.43127,
	beq	.L3820	@,
.L3821:
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp455,
	str	r3, [r7, #368]	@ tmp455, pH264Ctx_19(D)->pCurrNal
.L3820:
	ldr	r3, [r5]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	beq	.L3917	@,
.L3920:
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.43129
	b	.L3917	@
.L3934:
	ldr	r1, .L3939+60	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3632]	@ D.43124, pH264Ctx_19(D)->TotalNal
	b	.L3784	@
.L3935:
	bl	ClearCurrSlice	@
	ldr	r3, .L3939+12	@ tmp288,
	ldr	r3, [r3]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	beq	.L3916	@,
.L3801:
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.43129
	mvn	r0, #0	@ D.43122,
	b	.L3913	@
.L3819:
	ldr	r1, [r7, #368]	@ D.43127, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.43127,
	bne	.L3821	@,
	b	.L3917	@
.L3938:
	ldr	r6, .L3939+12	@ tmp319,
	mov	r0, #1	@,
	ldr	r1, .L3939+64	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	beq	.L3916	@,
.L3932:
	add	r2, sp, #8	@ tmp346,,
	mvn	r5, #0	@ tmp345,
	mov	r1, #100	@,
	str	r5, [r2, #-4]!	@ tmp345,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	blx	r3	@ D.43129
	ldr	r3, [r6]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	bne	.L3801	@,
	b	.L3916	@
.L3937:
	ldr	r6, .L3939+12	@ tmp344,
	mov	r0, #1	@,
	ldr	r1, .L3939+68	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	bne	.L3932	@,
	b	.L3916	@
.L3936:
	ldr	r1, .L3939+72	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L3939+12	@ tmp366,
	ldr	r3, [r3]	@ D.43129, g_event_report
	cmp	r3, #0	@ D.43129,
	bne	.L3920	@,
	b	.L3917	@
.L3940:
	.align	2
.L3939:
	.word	.LC381
	.word	.LC395
	.word	.LANCHOR1
	.word	g_event_report
	.word	.LC383
	.word	.LC387
	.word	.LC385
	.word	.LC384
	.word	.LC389
	.word	.LC390
	.word	.LC392
	.word	.LC391
	.word	.LC393
	.word	.LC394
	.word	.LC396
	.word	.LC382
	.word	.LC169
	.word	.LC386
	.word	.LC388
	.fnend
	.size	H264_DecOneNal, .-H264_DecOneNal
	.align	2
	.global	H264DEC_DecodePacket
	.type	H264DEC_DecodePacket, %function
H264DEC_DecodePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	subs	r2, r1, #0	@ pPacket, pPacket
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r3, #0	@ tmp192,
	str	r3, [sp, #16]	@ tmp192, u32Pos
	str	r3, [sp, #20]	@ tmp192, s32MaxPoc
	str	r3, [sp, #12]	@ tmp192, NewNum
	str	r3, [sp, #8]	@ tmp192, ReadNum
	str	r3, [sp, #4]	@ tmp192, RefNum
	beq	.L3983	@,
	ldr	r2, [r0]	@ D.43155, pH264Ctx_22(D)->pstExtraData
	add	r4, r0, #49152	@ tmp346, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	lr, [r4, #2176]	@ pH264Ctx_22(D)->HaveNalNotDecoded, pH264Ctx_22(D)->HaveNalNotDecoded
	ldr	ip, [r2, #8]	@ _23->s32DecMode, _23->s32DecMode
	cmp	lr, #1	@ pH264Ctx_22(D)->HaveNalNotDecoded,
	str	ip, [r4, #3676]	@ _23->s32DecMode, pH264Ctx_22(D)->advanced_cfg
	ldr	ip, [r2]	@ _23->s32RefErrThr, _23->s32RefErrThr
	str	ip, [r4, #3680]	@ _23->s32RefErrThr, pH264Ctx_22(D)->ref_error_thr
	ldr	r2, [r2, #4]	@ _23->s32OutErrThr, _23->s32OutErrThr
	str	r3, [r4, #3628]	@ tmp192, pH264Ctx_22(D)->SeErrFlg
	str	r2, [r4, #3684]	@ _23->s32OutErrThr, pH264Ctx_22(D)->out_error_thr
	beq	.L3944	@,
	bl	ReceivePacket	@
	mov	r3, #0	@ tmp219,
	str	r3, [r4, #2176]	@ tmp219, pH264Ctx_22(D)->HaveNalNotDecoded
	mov	r6, r0	@ ret,
	cmp	r6, #0	@ ret,
	beq	.L3946	@,
.L3962:
	mov	r0, #0	@ D.43154,
.L3980:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L3944:
	ldr	r6, [r0, #368]	@ pH264Ctx_22(D)->pCurrNal, pH264Ctx_22(D)->pCurrNal
	mov	r3, #0	@ tmp219,
	str	r3, [r4, #2176]	@ tmp219, pH264Ctx_22(D)->HaveNalNotDecoded
	clz	r6, r6	@ D.43162, pH264Ctx_22(D)->pCurrNal
	mov	r6, r6, lsr #5	@ D.43162, D.43162,
	rsb	r6, r6, #0	@ ret, D.43162
	cmp	r6, #0	@ ret,
	bne	.L3962	@,
.L3946:
	ldr	r3, [r5, #368]	@ D.43158, pH264Ctx_22(D)->pCurrNal
	add	r7, r5, #13504	@ D.43159, pH264Ctx,
	add	r7, r7, #24	@ D.43159, D.43159,
	str	r6, [r3, #64]	@ ret, _39->nal_bitoffset
	mov	r0, r7	@, D.43159
	ldr	r3, [r5, #368]	@ D.43158, pH264Ctx_22(D)->pCurrNal
	ldr	r2, [r3, #12]	@, _42->stream[0].bitstream_length
	ldr	r1, [r3, #8]	@, _42->stream[0].streamBuffer
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r7	@, D.43159
	bl	BsGet	@
	ldr	r1, [r5, #368]	@ D.43158, pH264Ctx_22(D)->pCurrNal
	uxtb	r3, r0	@ nal_header,
	and	r2, r3, #27	@ tmp231, nal_header,
	and	r0, r3, #31	@ tmp224, nal_header,
	cmp	r2, #1	@ tmp231,
	strb	r0, [r1, #2]	@ tmp224, _50->nal_unit_type
	ldr	r2, [r5, #368]	@ D.43158, pH264Ctx_22(D)->pCurrNal
	ubfx	r3, r3, #5, #2	@ tmp229, nal_header,,
	str	r3, [r2, #76]	@ tmp229, _53->nal_ref_idc
	bne	.L3947	@,
	add	r2, sp, #28	@,,
	add	r1, sp, #24	@,,
	mov	r0, r5	@, pH264Ctx
	bl	InquireSliceProperty	@
	cmp	r0, #0	@,
	bne	.L3948	@,
	ldr	r2, [sp, #24]	@ IsNewPic, IsNewPic
	ldr	r1, [r4, #3704]	@ pH264Ctx_22(D)->PicCounter, pH264Ctx_22(D)->PicCounter
	sub	r3, r2, #1	@ D.43162, IsNewPic,
	clz	r3, r3	@ D.43162, D.43162
	mov	r3, r3, lsr #5	@ D.43162, D.43162,
	cmp	r3, #0	@ D.43162,
	add	r3, r3, r1	@ D.43157, D.43162, pH264Ctx_22(D)->PicCounter
	str	r3, [r4, #3704]	@ D.43157, pH264Ctx_22(D)->PicCounter
	bne	.L3984	@,
.L3949:
	ldr	r3, [sp, #28]	@ IsSizeChanged, IsSizeChanged
	cmp	r3, #1	@ IsSizeChanged,
	beq	.L3985	@,
.L3947:
	mov	r0, r5	@, pH264Ctx
	mov	r4, #0	@ tmp337,
	bl	FindTrailZeros	@
	ldr	r3, [r5, #368]	@ D.43158, pH264Ctx_22(D)->pCurrNal
	mov	r0, r7	@, D.43159
	str	r4, [r3, #64]	@ tmp337, _129->nal_bitoffset
	ldr	r3, [r5, #368]	@ D.43158, pH264Ctx_22(D)->pCurrNal
	ldr	r1, [r3, #8]	@, _131->stream[0].streamBuffer
	ldr	r2, [r3, #12]	@, _131->stream[0].bitstream_length
	bl	BsInit	@
	mov	r1, r4	@, tmp337
	mov	r0, r5	@, pH264Ctx
	bl	H264_DecOneNal	@
	cmp	r0, r4	@,
	beq	.L3962	@,
	ldr	r1, .L3990	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L3982:
	mvn	r0, #0	@ D.43154,
	b	.L3980	@
.L3948:
	ldr	r1, [r5, #368]	@ D.43158, pH264Ctx_22(D)->pCurrNal
	cmp	r1, #0	@ D.43158,
	beq	.L3961	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_22(D)->ChanID
	bl	ReleaseNAL	@
	str	r6, [r5, #368]	@ ret, pH264Ctx_22(D)->pCurrNal
.L3961:
	ldr	r3, .L3990+4	@ tmp333,
	ldr	r3, [r3]	@ D.43164, g_event_report
	cmp	r3, #0	@ D.43164,
	beq	.L3982	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_22(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.43164
	mvn	r0, #0	@ D.43154,
	b	.L3980	@
.L3985:
	ldr	r3, [r5]	@ pH264Ctx_22(D)->pstExtraData, pH264Ctx_22(D)->pstExtraData
	ldr	r6, [r3, #692]	@ _88->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _88->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ _88->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3986	@,
.L3956:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	subs	r3, r0, #0	@ ret,
	bne	.L3987	@,
.L3957:
	ldr	r0, [r4, #3688]	@, pH264Ctx_22(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L3947	@,
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	ldr	r0, [r4, #3688]	@, pH264Ctx_22(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5]	@ D.43155, pH264Ctx_22(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _103->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _103->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _103->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3988	@,
.L3958:
	ldr	r3, [r3, #608]	@ _103->stChanOption.s32ReRangeEn, _103->stChanOption.s32ReRangeEn
	cmp	r3, #1	@ _103->stChanOption.s32ReRangeEn,
	bne	.L3947	@,
	ldr	r2, [sp, #8]	@ ReadNum, ReadNum
	ldr	r1, [sp, #12]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.43156, ReadNum, NewNum
	cmp	r2, #0	@ D.43156,
	ble	.L3947	@,
	str	r3, [r4, #2176]	@ _103->stChanOption.s32ReRangeEn, pH264Ctx_22(D)->HaveNalNotDecoded
	mvn	r0, #1	@ D.43154,
	str	r3, [r4, #3740]	@ _103->stChanOption.s32ReRangeEn, pH264Ctx_22(D)->DSD_NeedClearQue
	b	.L3980	@
.L3984:
	add	r6, r5, #20480	@ tmp345, pH264Ctx,
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #1	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	ldr	r3, [r4, #3708]	@ pH264Ctx_22(D)->NewPicCounter, pH264Ctx_22(D)->NewPicCounter
	addeq	r3, r3, #1	@ D.43157, pH264Ctx_22(D)->NewPicCounter,
	addne	r3, r3, #2	@ D.43157, pH264Ctx_22(D)->NewPicCounter,
	str	r3, [r4, #3708]	@ D.43157, pH264Ctx_22(D)->NewPicCounter
	ldr	r3, [r4, #3612]	@ pH264Ctx_22(D)->SliceParaNum, pH264Ctx_22(D)->SliceParaNum
	cmp	r3, #0	@ pH264Ctx_22(D)->SliceParaNum,
	beq	.L3949	@,
	ldr	r3, [r5, #368]	@ D.43158, pH264Ctx_22(D)->pCurrNal
	mov	ip, #0	@ tmp258,
	mov	r0, r7	@, D.43159
	mov	r2, #12	@,
	ldr	r1, .L3990+8	@,
	str	ip, [r3, #64]	@ tmp258, _75->nal_bitoffset
	bl	BsInit	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	H264_DecOneNal	@
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	mvn	r0, #1	@ D.43154,
	cmp	r3, #1	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	ldr	r3, [r4, #3708]	@ pH264Ctx_22(D)->NewPicCounter, pH264Ctx_22(D)->NewPicCounter
	subeq	r3, r3, #1	@ D.43157, pH264Ctx_22(D)->NewPicCounter,
	subne	r3, r3, #2	@ D.43157, pH264Ctx_22(D)->NewPicCounter,
	str	r3, [r4, #3708]	@ D.43157, pH264Ctx_22(D)->NewPicCounter
	mov	r3, #1	@ tmp278,
	str	r3, [r4, #2176]	@ tmp278, pH264Ctx_22(D)->HaveNalNotDecoded
	b	.L3980	@
.L3987:
	movw	r2, #12470	@,
	ldr	r1, .L3990+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L3957	@
.L3986:
	add	r3, r5, #24576	@ tmp283, pH264Ctx,
	ldr	r3, [r3, #2052]	@ pH264Ctx_22(D)->DPB.used_size, pH264Ctx_22(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_22(D)->DPB.used_size,
	beq	.L3956	@,
	add	r2, sp, #16	@,,
	add	r1, sp, #20	@,,
	mov	r0, r5	@, pH264Ctx
	bl	GetMaxPOC	@
	ldr	r3, [sp, #16]	@ u32Pos, u32Pos
	add	r3, r3, #6592	@ tmp288, u32Pos,
	add	r3, r3, #16	@ tmp288, tmp288,
	ldr	r3, [r5, r3, asl #2]	@ D.43163, pH264Ctx_22(D)->DPB.fs
	str	r6, [r3, #384]	@ _88->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _93->fs_image.u32IsLastFrame
	b	.L3956	@
.L3983:
	mov	r0, r2	@, pPacket
	movw	r3, #12369	@,
	ldr	r2, .L3990+16	@,
	ldr	r1, .L3990+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.43154,
	b	.L3980	@
.L3988:
	ldr	r1, [r4, #3724]	@ pH264Ctx_22(D)->DSD_OldWidth, pH264Ctx_22(D)->DSD_OldWidth
	ldr	r2, [r3, #720]	@ _103->s32DSDThrWidth, _103->s32DSDThrWidth
	cmp	r1, r2	@ pH264Ctx_22(D)->DSD_OldWidth, _103->s32DSDThrWidth
	bgt	.L3959	@,
	ldr	r1, [r4, #3728]	@ pH264Ctx_22(D)->DSD_OldHeight, pH264Ctx_22(D)->DSD_OldHeight
	ldr	r2, [r3, #724]	@ _103->s32DSDThrHeight, _103->s32DSDThrHeight
	cmp	r1, r2	@ pH264Ctx_22(D)->DSD_OldHeight, _103->s32DSDThrHeight
	ble	.L3958	@,
.L3959:
	ldr	r3, [r3, #608]	@ _103->stChanOption.s32ReRangeEn, _103->stChanOption.s32ReRangeEn
	cmp	r3, #1	@ _103->stChanOption.s32ReRangeEn,
	bne	.L3947	@,
	ldr	r3, [sp, #12]	@ NewNum, NewNum
	cmp	r3, #0	@ NewNum,
	ble	.L3989	@,
.L3960:
	mov	r2, #0	@ tmp325,
	mov	r3, #1	@ tmp328,
	str	r2, [r4, #3740]	@ tmp325, pH264Ctx_22(D)->DSD_NeedClearQue
	mvn	r0, #1	@ D.43154,
	str	r3, [r4, #2176]	@ tmp328, pH264Ctx_22(D)->HaveNalNotDecoded
	b	.L3980	@
.L3989:
	ldr	r3, [sp, #8]	@ ReadNum, ReadNum
	cmp	r3, #4	@ ReadNum,
	ble	.L3947	@,
	b	.L3960	@
.L3991:
	.align	2
.L3990:
	.word	.LC397
	.word	g_event_report
	.word	.LANCHOR1+432
	.word	.LC330
	.word	.LC21
	.word	.LC22
	.fnend
	.size	H264DEC_DecodePacket, .-H264DEC_DecodePacket
	.align	2
	.global	H264DEC_VDMPostProc
	.type	H264DEC_VDMPostProc, %function
H264DEC_VDMPostProc:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r5, [r0, #364]	@ D.43168, pH264Ctx_6(D)->StartMode
	mov	r7, r3	@ pLumaInfo, pLumaInfo
	cmp	r5, #0	@ D.43168,
	bne	.L3993	@,
	add	r6, r0, #49152	@ tmp129, pH264Ctx,
	str	r1, [r6, #1004]	@ ErrRatio, pH264Ctx_6(D)->CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r7	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	cmp	r0, #1	@ ret,
	mov	r7, r0	@ ret,
	bls	.L3994	@,
	ldr	r3, [r6, #960]	@ pH264Ctx_6(D)->CurrPic.frame_store, pH264Ctx_6(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_6(D)->ChanID
	ldr	r1, [r3, #508]	@, _17->logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r2, r7	@, ret
	ldr	r1, .L4007	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	str	r5, [r6, #960]	@ D.43168, pH264Ctx_6(D)->CurrPic.frame_store
	mvn	r5, #0	@ D.43168,
	mov	r0, r5	@, D.43168
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3993:
	add	r5, r0, #49152	@ tmp190, pH264Ctx,
	str	r1, [r5, #1004]	@ ErrRatio, pH264Ctx_6(D)->CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r7	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	subs	r2, r0, #0	@ ret,
	bne	.L4005	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r2, r0, #0	@ ret,
	bne	.L4006	@,
.L3997:
	add	r2, r4, #12288	@ tmp154, pH264Ctx,
	mov	r3, #0	@ tmp150,
	str	r3, [r5, #2172]	@ tmp150, pH264Ctx_6(D)->AllowStartDec
	add	r4, r4, #20480	@ tmp152, pH264Ctx,
	ldr	r1, [r2, #1288]	@ pH264Ctx_6(D)->MaxPpsNum, pH264Ctx_6(D)->MaxPpsNum
	mov	r5, r3	@ D.43168, tmp150
	movw	r2, #23352	@ tmp158,
	strb	r3, [r4, #1848]	@ tmp150, pH264Ctx_6(D)->PrevSlice.field_pic_flag
	str	r3, [r4, #1880]	@ tmp150, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	movt	r2, 1	@ tmp158,
	str	r1, [r4, #1856]	@ pH264Ctx_6(D)->MaxPpsNum, pH264Ctx_6(D)->PrevSlice.pic_parameter_set_id
	mov	r0, #7	@ tmp169,
	mov	r1, #2	@ tmp165,
	str	r3, [r4, #1884]	@ tmp150, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	str	r2, [r4, #1864]	@ tmp158, pH264Ctx_6(D)->PrevSlice.frame_num
	mov	r3, #32	@ tmp172,
	strb	r1, [r4, #1849]	@ tmp165, pH264Ctx_6(D)->PrevSlice.bottom_field_flag
	mvn	r2, #0	@ tmp179,
	mov	r1, #3	@ tmp176,
	str	r0, [r4, #1860]	@ tmp169, pH264Ctx_6(D)->PrevSlice.nal_ref_idc
	strb	r3, [r4, #1850]	@ tmp172, pH264Ctx_6(D)->PrevSlice.nal_unit_type
	mov	r0, r5	@, D.43168
	mov	r3, #262144	@ tmp188,
	str	r1, [r4, #1872]	@ tmp176, pH264Ctx_6(D)->PrevSlice.pic_oder_cnt_lsb
	str	r2, [r4, #1876]	@ tmp179, pH264Ctx_6(D)->PrevSlice.delta_pic_oder_cnt_bottom
	str	r3, [r4, #1888]	@ tmp188, pH264Ctx_6(D)->PrevSlice.first_mb_in_slice
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3994:
	mov	r3, #1	@ tmp143,
	mov	r0, r5	@, D.43168
	str	r3, [r6, #2172]	@ tmp143, pH264Ctx_6(D)->AllowStartDec
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L4005:
	ldr	r1, .L4007+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	subs	r2, r0, #0	@ ret,
	beq	.L3997	@,
.L4006:
	ldr	r1, .L4007+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L3997	@
.L4008:
	.align	2
.L4007:
	.word	.LC398
	.word	.LC399
	.word	.LC400
	.fnend
	.size	H264DEC_VDMPostProc, .-H264DEC_VDMPostProc
	.align	2
	.global	H264DEC_GetImageBuffer
	.type	H264DEC_GetImageBuffer, %function
H264DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r4, r0, #49152	@ tmp212, pH264Ctx,
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r7, [r4, #2164]	@ D.43213, pH264Ctx_8(D)->TotalFsNum
	cmp	r7, #0	@ D.43213,
	beq	.L4025	@,
	add	r6, r0, #27136	@ ivtmp.3232, pH264Ctx,
	add	r9, r0, #26368	@ ivtmp.3236, pH264Ctx,
	add	r6, r6, #168	@ ivtmp.3232, ivtmp.3232,
	add	r9, r9, #64	@ ivtmp.3236, ivtmp.3236,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r8, r0, #24576	@ tmp216, pH264Ctx,
	mov	lr, r6	@ ivtmp.3249, ivtmp.3232
	mov	r0, #0	@ i,
.L4017:
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ MEM[base: _81, offset: 1B], MEM[base: _81, offset: 1B]
	cmp	r3, #0	@ MEM[base: _81, offset: 1B],
	bne	.L4012	@,
	cmp	lr, #0	@ ivtmp.3249,
	beq	.L4013	@,
	ldr	r1, [r8, #2052]	@ D.43213, pH264Ctx_8(D)->DPB.used_size
	cmp	r1, #0	@ D.43213,
	beq	.L4013	@,
	ldr	r2, [r8, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	cmp	r2, lr	@ pH264Ctx_8(D)->DPB.fs, ivtmp.3249
	beq	.L4012	@,
	mov	r2, r9	@ ivtmp.3236, ivtmp.3236
	b	.L4014	@
.L4015:
	ldr	ip, [r2, #4]!	@ MEM[base: _76, offset: 0B], MEM[base: _76, offset: 0B]
	cmp	ip, lr	@ MEM[base: _76, offset: 0B], ivtmp.3249
	beq	.L4012	@,
.L4014:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r1	@ i, D.43213
	bne	.L4015	@,
.L4013:
	ldr	r0, [r4, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ ret,
	beq	.L4025	@,
	cmn	r0, #1	@ ret,
	bne	.L4046	@,
	add	r1, r5, #8	@, pH264Ctx,
	ldr	r0, [r4, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	b	.L4046	@
.L4012:
	add	r0, r0, #1	@ i, i,
	add	lr, lr, #560	@ ivtmp.3249, ivtmp.3249,
	cmp	r0, r7	@ i, D.43213
	bne	.L4017	@,
	add	r2, sp, #12	@,,
	add	r1, sp, #8	@,,
	add	r0, r5, #8	@, pH264Ctx,
	bl	GetQueueImgNum	@
	ldr	r1, .L4050	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, .L4050+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2164]	@ pH264Ctx_8(D)->TotalFsNum, pH264Ctx_8(D)->TotalFsNum
	cmp	r3, #0	@ pH264Ctx_8(D)->TotalFsNum,
	addne	r8, r5, #26368	@ ivtmp.3218, pH264Ctx,
	addne	r9, r5, #24576	@ tmp211, pH264Ctx,
	addne	r8, r8, #64	@ ivtmp.3218, ivtmp.3218,
	movne	r7, #0	@ i,
	beq	.L4048	@,
.L4018:
	cmp	r6, #0	@ ivtmp.3232,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ D.43217, MEM[base: _52, offset: 1B]
	ldrb	lr, [r6, #4]	@ zero_extendqisi2	@ D.43217, MEM[base: _52, offset: 4B]
	beq	.L4029	@,
	ldr	r2, [r9, #2052]	@ D.43213, pH264Ctx_8(D)->DPB.used_size
	cmp	r2, #0	@ D.43213,
	beq	.L4029	@,
	ldr	r1, [r9, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	cmp	r6, r1	@ ivtmp.3232, pH264Ctx_8(D)->DPB.fs
	beq	.L4031	@,
	mov	r1, r8	@ ivtmp.3218, ivtmp.3218
	mov	ip, #0	@ i,
	b	.L4022	@
.L4023:
	ldr	r0, [r1, #4]!	@ MEM[base: _5, offset: 0B], MEM[base: _5, offset: 0B]
	cmp	r6, r0	@ ivtmp.3232, MEM[base: _5, offset: 0B]
	beq	.L4031	@,
.L4022:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r2	@ i, D.43213
	bne	.L4023	@,
.L4029:
	mov	r2, #1	@ D.43214,
.L4021:
	str	r2, [sp, #4]	@ D.43214,
	mov	r0, #0	@,
	mov	r2, r7	@, i
	str	lr, [sp]	@ D.43217,
	ldr	r1, .L4050+8	@,
	add	r7, r7, #1	@ i, i,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2164]	@ pH264Ctx_8(D)->TotalFsNum, pH264Ctx_8(D)->TotalFsNum
	add	r6, r6, #560	@ ivtmp.3232, ivtmp.3232,
	cmp	r3, r7	@ pH264Ctx_8(D)->TotalFsNum, i
	bhi	.L4018	@,
.L4024:
	ldr	r3, [sp, #12]	@, NewImgNum
	mov	r0, #0	@,
	ldr	r2, [sp, #8]	@, ReadImgNum
	ldr	r1, .L4050+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2164]	@ pH264Ctx_8(D)->TotalFsNum, pH264Ctx_8(D)->TotalFsNum
	ldr	r0, [r9, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	ldr	r2, [sp, #8]	@ ReadImgNum, ReadImgNum
	sub	r3, r3, #2	@ D.43213, pH264Ctx_8(D)->TotalFsNum,
	ldr	r1, [sp, #12]	@ NewImgNum, NewImgNum
	rsb	r3, r0, r3	@ D.43213, pH264Ctx_8(D)->DPB.used_size, D.43213
	add	r2, r2, r1	@ D.43217, ReadImgNum, NewImgNum
	cmp	r2, r3	@ D.43217, D.43213
	blt	.L4049	@,
.L4046:
	mov	r0, #0	@ D.43214,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L4025:
	mov	r0, #1	@ D.43214,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L4031:
	mov	r2, #0	@ D.43214,
	b	.L4021	@
.L4049:
	ldr	r1, .L4050+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.43214,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L4048:
	add	r9, r5, #24576	@ tmp211, pH264Ctx,
	b	.L4024	@
.L4051:
	.align	2
.L4050:
	.word	.LC401
	.word	.LC402
	.word	.LC404
	.word	.LC403
	.word	.LC405
	.fnend
	.size	H264DEC_GetImageBuffer, .-H264DEC_GetImageBuffer
	.global	TmpBuf
	.global	quant8_org
	.global	quant_org
	.global	quant8_inter_default
	.global	quant8_intra_default
	.global	quant_inter_default
	.global	quant_intra_default
	.global	g_ZZ_SCAN8
	.global	g_ZZ_SCAN
	.global	g_AspecRatioIdc
	.global	g_NalTypeEOPIC
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.30692, %object
	.size	__func__.30692, 23
__func__.30692:
	.ascii	"RemoveUnUsedFrameStore\000"
	.space	1
	.type	g_ZZ_SCAN, %object
	.size	g_ZZ_SCAN, 16
g_ZZ_SCAN:
	.byte	0
	.byte	1
	.byte	4
	.byte	8
	.byte	5
	.byte	2
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	13
	.byte	10
	.byte	7
	.byte	11
	.byte	14
	.byte	15
	.type	g_ZZ_SCAN8, %object
	.size	g_ZZ_SCAN8, 64
g_ZZ_SCAN8:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.type	SarTable.31727, %object
	.size	SarTable.31727, 136
SarTable.31727:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	12
	.word	11
	.word	10
	.word	11
	.word	16
	.word	11
	.word	40
	.word	33
	.word	24
	.word	11
	.word	20
	.word	11
	.word	32
	.word	11
	.word	80
	.word	33
	.word	18
	.word	11
	.word	15
	.word	11
	.word	64
	.word	33
	.word	160
	.word	99
	.word	4
	.word	3
	.word	3
	.word	2
	.word	2
	.word	1
	.type	__func__.31861, %object
	.size	__func__.31861, 12
__func__.31861:
	.ascii	"H264_DecSEI\000"
	.type	__func__.30815, %object
	.size	__func__.30815, 9
__func__.30815:
	.ascii	"FlushDPB\000"
	.space	3
	.type	__func__.30800, %object
	.size	__func__.30800, 13
__func__.30800:
	.ascii	"DirectOutput\000"
	.space	3
	.type	__func__.30829, %object
	.size	__func__.30829, 21
__func__.30829:
	.ascii	"H264DEC_GetRemainImg\000"
	.space	3
	.type	__func__.31230, %object
	.size	__func__.31230, 8
__func__.31230:
	.ascii	"InitDPB\000"
	.type	__func__.30898, %object
	.size	__func__.30898, 14
__func__.30898:
	.ascii	"StorePicInDPB\000"
	.space	2
	.type	__func__.32101, %object
	.size	__func__.32101, 13
__func__.32101:
	.ascii	"H264DEC_Init\000"
	.space	3
	.type	__func__.31367, %object
	.size	__func__.31367, 8
__func__.31367:
	.ascii	"InitPic\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	quant_org, %object
	.size	quant_org, 16
quant_org:
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.type	quant8_org, %object
	.size	quant8_org, 64
quant8_org:
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.type	quant_intra_default, %object
	.size	quant_intra_default, 16
quant_intra_default:
	.word	471076102
	.word	538711053
	.word	622861332
	.word	707076124
	.type	quant_inter_default, %object
	.size	quant_inter_default, 16
quant_inter_default:
	.word	403967498
	.word	454562830
	.word	505092116
	.word	572398360
	.type	quant8_intra_default, %object
	.size	quant8_intra_default, 64
quant8_intra_default:
	.word	269289990
	.word	454629138
	.word	303041290
	.word	488315159
	.word	387059725
	.word	522001177
	.word	420942352
	.word	555687195
	.word	454629138
	.word	606150429
	.word	488315159
	.word	639901983
	.word	522001177
	.word	673588257
	.word	555687195
	.word	707274276
	.type	quant8_inter_default, %object
	.size	quant8_inter_default, 256
quant8_inter_default:
	.word	286199049
	.word	404100371
	.word	319884557
	.word	421008917
	.word	353571087
	.word	454629398
	.word	370479889
	.word	471537944
	.word	404100371
	.word	505158425
	.word	421008917
	.word	538844187
	.word	454629398
	.word	555752988
	.word	471537944
	.word	589373470
	.space	192
	.type	g_NalTypeEOPIC, %object
	.size	g_NalTypeEOPIC, 12
g_NalTypeEOPIC:
	.byte	0
	.byte	0
	.byte	1
	.byte	30
	.byte	72
	.byte	83
	.byte	80
	.byte	73
	.byte	67
	.byte	69
	.byte	78
	.byte	68
	.type	g_AspecRatioIdc, %object
	.size	g_AspecRatioIdc, 112
g_AspecRatioIdc:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	12
	.word	11
	.word	10
	.word	11
	.word	16
	.word	11
	.word	40
	.word	33
	.word	24
	.word	11
	.word	20
	.word	11
	.word	32
	.word	11
	.word	80
	.word	33
	.word	18
	.word	11
	.word	15
	.word	11
	.word	64
	.word	33
	.word	160
	.word	99
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"list[%d][%d]: frame_num=%d, poc=%d\012\000"
.LC1:
	.ascii	"L0: \000"
	.space	3
.LC2:
	.ascii	"\012\000"
	.space	2
.LC3:
	.ascii	"%d \000"
.LC4:
	.ascii	"%dt \000"
	.space	3
.LC5:
	.ascii	"%db \000"
	.space	3
.LC6:
	.ascii	"L1:\000"
.LC7:
	.ascii	"\012\012END of the bit buffer, copy the first packe"
	.ascii	"t!\012\012\000"
	.space	2
.LC8:
	.ascii	"0:phy:0x%x, 1:phy:0x%x; len0:%d len1:%d\012\000"
	.space	3
.LC9:
	.ascii	"0:phy:0x%x, len0:%d\012\000"
	.space	3
.LC10:
	.ascii	"%-50s%50d\012\000"
	.space	1
.LC11:
	.ascii	"[%s][%d],Error parm!!!\012\000"
.LC12:
	.ascii	"frame %d, state=%d, is already output\012\000"
	.space	1
.LC13:
	.ascii	"plfs(fs=%p, eFoState=%d) is null, logic_fs_id = %d\012"
	.ascii	"\000"
.LC14:
	.ascii	"not used frame: (%d,%d)\012\000"
	.space	3
.LC15:
	.ascii	"frame skip: is_used=%d,skip=%d\012\000"
.LC16:
	.ascii	"topfield skip\012\000"
	.space	1
.LC17:
	.ascii	"bottom field skip\012\000"
	.space	1
.LC18:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC19:
	.ascii	"exg_pts: %lld <-> %lld\012\000"
.LC20:
	.ascii	"stream frame packing type is %d! what can we do?\012"
	.ascii	"\000"
	.space	2
.LC21:
	.ascii	"/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_h"
	.ascii	"i3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/"
	.ascii	"firmware/common/syntax/h264.c\000"
.LC22:
	.ascii	"NULL pointer: %s, L%d\012\000"
	.space	1
.LC23:
	.ascii	"framestore %d allocate apc %d\012\000"
	.space	1
.LC24:
	.ascii	"find APC, but logic_fs_id %d abnormal(ref=%d,plfs=%"
	.ascii	"p, pdfs=%p)\012\000"
.LC25:
	.ascii	"\012 VFMW ** release streambuff=%08x   bitstream_le"
	.ascii	"ngth=%d\012\000"
	.space	3
.LC26:
	.ascii	"clear curr slice.\012\000"
	.space	1
.LC27:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC28:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC29:
	.ascii	"for P slice size of list equal 0.\012\000"
	.space	1
.LC30:
	.ascii	"for B slice size of two list all equal 0.\012\000"
	.space	1
.LC31:
	.ascii	"init list error.\012\000"
	.space	2
.LC32:
	.ascii	"L0: list after init.\012\000"
	.space	2
.LC33:
	.ascii	"L0: list after reorder.\012\000"
	.space	3
.LC34:
	.ascii	"nal_ref_idc=%d, structure=%d, image_id=%d, pmv_idc="
	.ascii	"%d\012\000"
	.space	1
.LC35:
	.ascii	"logic frame id(=%d): get LogicFs error!\012\000"
	.space	3
.LC36:
	.ascii	"phy fs is null: pstDecodeFs = %p, pstDispOutFs = %p"
	.ascii	"\012\000"
	.space	3
.LC37:
	.ascii	"line: %d pstLogicFs is null\012\000"
	.space	3
.LC38:
	.ascii	"SH: first_mb_in_slice\000"
	.space	2
.LC39:
	.ascii	"slicecheck first_mb_in_slice >= MAX_MB_NUM_IN_PIC e"
	.ascii	"rror.\012\000"
	.space	2
.LC40:
	.ascii	"SH: slice_type\000"
	.space	1
.LC41:
	.ascii	"slice type = %d\012\000"
	.space	3
.LC42:
	.ascii	"slice type = %d, err\012\000"
	.space	2
.LC43:
	.ascii	"slice  pps id = %d\012\000"
.LC44:
	.ascii	"pps with this pic_parameter_set_id = %d havn't deco"
	.ascii	"de\012\000"
	.space	1
.LC45:
	.ascii	"sps with this pic_parameter_set_id = %d havn't deco"
	.ascii	"de\012\000"
	.space	1
.LC46:
	.ascii	"tmp slice  pps id = %d\012\000"
.LC47:
	.ascii	"PPSSPSCheckTmpId: pps with this pic_parameter_set_i"
	.ascii	"d = %d havn't decode\012\000"
	.space	3
.LC48:
	.ascii	"PPSSPSCheckTmpId: seq_parameter_set_id out of range"
	.ascii	".\012\000"
	.space	2
.LC49:
	.ascii	"PPSSPSCheckTmpId: sps with this pic_parameter_set_i"
	.ascii	"d = %d havn't decode\012\000"
	.space	3
.LC50:
	.ascii	"new pic flag = %d\012\000"
	.space	1
.LC51:
	.ascii	"SH: ref_pic_list_reordering_flag_l0\000"
.LC52:
	.ascii	"SH: reordering_of_pic_nums_idc_l0\000"
	.space	2
.LC53:
	.ascii	"reorder idc l0 = %d, g_SeErrFlag=%d\012\000"
	.space	3
.LC54:
	.ascii	"SH: abs_diff_pic_num_minus1_l0\000"
	.space	1
.LC55:
	.ascii	"abs_diff_pic_num_minus1_l0 = %d, g_SeErrFlag=%d\012"
	.ascii	"\000"
	.space	3
.LC56:
	.ascii	"SH: long_term_pic_idx_l0\000"
	.space	3
.LC57:
	.ascii	"num of idc l0 exceed\012\000"
	.space	2
.LC58:
	.ascii	"SH: ref_pic_list_reordering_flag_l1\000"
.LC59:
	.ascii	"SH: reordering_of_pic_nums_idc_l1\000"
	.space	2
.LC60:
	.ascii	"reorder idc l1 = %d, g_SeErrFlag=%d\012\000"
	.space	3
.LC61:
	.ascii	"SH: abs_diff_pic_num_minus1_l1\000"
	.space	1
.LC62:
	.ascii	"abs_diff_pic_num_minus1_l1 = %d, g_SeErrFlag=%d\012"
	.ascii	"\000"
	.space	3
.LC63:
	.ascii	"SH: long_term_pic_idx_l1\000"
	.space	3
.LC64:
	.ascii	"num of idc l1 exceed\012\000"
	.space	2
.LC65:
	.ascii	"SH: luma_log2_weight_denom\000"
	.space	1
.LC66:
	.ascii	"SH: chroma_log2_weight_denom\000"
	.space	3
.LC67:
	.ascii	"WP log2 exceed  and err flag = %d\012\000"
	.space	1
.LC68:
	.ascii	"SH: luma_weight_flag_l0\000"
.LC69:
	.ascii	"SH: luma_weight_l0\000"
	.space	1
.LC70:
	.ascii	"SH: luma_offset_l0\000"
	.space	1
.LC71:
	.ascii	"SH: chroma_weight_flag_l0\000"
	.space	2
.LC72:
	.ascii	"SH: chroma_weight_l0\000"
	.space	3
.LC73:
	.ascii	"SH: chroma_offset_l0\000"
	.space	3
.LC74:
	.ascii	"SH: luma_weight_flag_l1\000"
.LC75:
	.ascii	"SH: luma_weight_l1\000"
	.space	1
.LC76:
	.ascii	"SH: luma_offset_l1\000"
	.space	1
.LC77:
	.ascii	"SH: chroma_weight_flag_l1\000"
	.space	2
.LC78:
	.ascii	"SH: chroma_weight_l1\000"
	.space	3
.LC79:
	.ascii	"SH: chroma_offset_l1\000"
	.space	3
.LC80:
	.ascii	"overflow MAX_MMCO_LEN\012\000"
	.space	1
.LC81:
	.ascii	"SH: memory_management_control_operation\000"
.LC82:
	.ascii	"SH: difference_of_pic_nums_minus1\000"
	.space	2
.LC83:
	.ascii	"SH: long_term_pic_num\000"
	.space	2
.LC84:
	.ascii	"SH: long_term_frame_idx\000"
.LC85:
	.ascii	"SH: max_long_term_frame_idx_plus1\000"
	.space	2
.LC86:
	.ascii	"mmco exceed 6\012\000"
	.space	1
.LC87:
	.ascii	"SH: no_output_of_prior_pics_flag\000"
	.space	3
.LC88:
	.ascii	"SH: long_term_reference_flag\000"
	.space	3
.LC89:
	.ascii	"IDR and no_output_of_prior_pics_flag = %d\012\000"
	.space	1
.LC90:
	.ascii	"SH: adaptive_ref_pic_marking_mode_flag\000"
	.space	1
.LC91:
	.ascii	"adaptive_ref_pic_marking_mode_flag = %d\012\000"
	.space	3
.LC92:
	.ascii	"MMCO para would save dec err\012\000"
	.space	2
.LC93:
	.ascii	"mulitislice diff no_out_of_prior_pics_flag, used fi"
	.ascii	"rst.\012\000"
	.space	3
.LC94:
	.ascii	"mulitislice diff long_term_reference_flag, used fir"
	.ascii	"st.\012\000"
.LC95:
	.ascii	"mulitislice diff adaptive_ref_pic_marking_mode_flag"
	.ascii	", used first.\012\000"
	.space	2
.LC96:
	.ascii	"TotalPicNum=%d, SliceNumInPic=%d, TotalNal=%d\012\000"
	.space	1
.LC97:
	.ascii	"SH: pic_parameter_set_id\000"
	.space	3
.LC98:
	.ascii	"pps id:%d in sliceheader err\012\000"
	.space	2
.LC99:
	.ascii	"PPS or SPS of this slice not valid\012\000"
.LC100:
	.ascii	"recover point but isn't I_SLICE.\012\000"
	.space	2
.LC101:
	.ascii	"SH: frame_num\000"
	.space	2
.LC102:
	.ascii	"IDR NAL but frame_num!=0.\012\000"
	.space	1
.LC103:
	.ascii	"SH: field_pic_flag\000"
	.space	1
.LC104:
	.ascii	"SH: bottom_field_flag\000"
	.space	2
.LC105:
	.ascii	"field first_mb_in_slice bigger than pic size\012\000"
	.space	2
.LC106:
	.ascii	"frame first_mb_in_slice bigger than pic size\012\000"
	.space	2
.LC107:
	.ascii	"SH: idr_pic_id\000"
	.space	1
.LC108:
	.ascii	"idr_pic_id bigger than 65535\012\000"
	.space	2
.LC109:
	.ascii	"SH: pic_order_cnt_lsb\000"
	.space	2
.LC110:
	.ascii	"SH: delta_pic_order_cnt_bottom\000"
	.space	1
.LC111:
	.ascii	"SH: delta_pic_order_cnt[0]\000"
	.space	1
.LC112:
	.ascii	"SH: delta_pic_order_cnt[1]\000"
	.space	1
.LC113:
	.ascii	"SH: redundant_pic_cnt\000"
	.space	2
.LC114:
	.ascii	"redundant pic not support.\012\000"
.LC115:
	.ascii	"first_mb_in_slice in currslice small than prevslice"
	.ascii	" in same pic\012\000"
	.space	3
.LC116:
	.ascii	"SH: direct_spatial_mv_pred_flag\000"
.LC117:
	.ascii	"SH: num_ref_idx_override_flag\000"
	.space	2
.LC118:
	.ascii	"SH: num_ref_idx_l0_active_minus1\000"
	.space	3
.LC119:
	.ascii	"SH: num_ref_idx_l1_active_minus1\000"
	.space	3
.LC120:
	.ascii	"frame num_ref_idx_lx_active_minus1 exceed\012\000"
	.space	1
.LC121:
	.ascii	"field num_ref_idx_lx_active_minus1 exceed\012\000"
	.space	1
.LC122:
	.ascii	"reordering para dec err\012\000"
	.space	3
.LC123:
	.ascii	"apply_weights_flag=%d\012\000"
	.space	1
.LC124:
	.ascii	"wpt dec err\012\000"
	.space	3
.LC125:
	.ascii	"mark para dec err\012\000"
	.space	1
.LC126:
	.ascii	"SH: cabac_init_idc\000"
	.space	1
.LC127:
	.ascii	"cabac_init_idc bigger than 3\012\000"
	.space	2
.LC128:
	.ascii	"SH: slice_qp_delta\000"
	.space	1
.LC129:
	.ascii	"SH: disable_deblocking_filter_idc\000"
	.space	2
.LC130:
	.ascii	"disable_deblocking_filter_idc dec err\012\000"
	.space	1
.LC131:
	.ascii	"SH: slice_alpha_c0_offset_div2\000"
	.space	1
.LC132:
	.ascii	"slice_alpha_c0_offset_div2 dec err\012\000"
.LC133:
	.ascii	"SH: slice_beta_offset_div2\000"
	.space	1
.LC134:
	.ascii	"slice_beta_offset_div2 dec err\012\000"
.LC135:
	.ascii	"pH264Ctx->pCurrNal->nal_bitoffset = %d; code_len_by"
	.ascii	"te = %d; bitstream_length = %d; pH264Ctx->pCurrNal-"
	.ascii	">nal_trail_zero_bit_num = %d\012\000"
.LC136:
	.ascii	"stream[%d]: bitsoffset = %d; valid_bitlen = %d; byt"
	.ascii	"espos = %x\012\000"
	.space	1
.LC137:
	.ascii	"nal_segment = %d is not expected value\012\000"
.LC138:
	.ascii	"stream[%d]: bitsoffset = %d; valid_bitlen = %d\012\000"
.LC139:
	.ascii	"   : delta_sl   \000"
	.space	3
.LC140:
	.ascii	"PPS: entropy_coding_mode_flag\000"
	.space	2
.LC141:
	.ascii	"PPS: pic_order_present_flag\000"
.LC142:
	.ascii	"PPS: num_slice_groups_minus1\000"
	.space	3
.LC143:
	.ascii	"Baseline stream with FMO, not support.\012\000"
.LC144:
	.ascii	"PPS: num_ref_idx_l0_active_minus1\000"
	.space	2
.LC145:
	.ascii	"num_ref_idx_l0_active_minus1 out of range.\012\000"
.LC146:
	.ascii	"PPS: num_ref_idx_l1_active_minus1\000"
	.space	2
.LC147:
	.ascii	"num_ref_idx_l1_active_minus1 out of range.\012\000"
.LC148:
	.ascii	"PPS: weighted prediction flag\000"
	.space	2
.LC149:
	.ascii	"PPS: weighted_bipred_idc\000"
	.space	3
.LC150:
	.ascii	"weighted_bipred_idc out of range\012\000"
	.space	2
.LC151:
	.ascii	"PPS: pic_init_qp_minus26\000"
	.space	3
.LC152:
	.ascii	"PPS: pic_init_qs_minus26\000"
	.space	3
.LC153:
	.ascii	"PPS: chroma_qp_index_offset\000"
.LC154:
	.ascii	"PPS: deblocking_filter_control_present_flag\000"
.LC155:
	.ascii	"PPS: constrained_intra_pred_flag\000"
	.space	3
.LC156:
	.ascii	"PPS: redundant_pic_cnt_present_flag\000"
.LC157:
	.ascii	"redundant pic not support when find redundant slice"
	.ascii	" later, exit\012\000"
	.space	3
.LC158:
	.ascii	"PPS: transform_8x8_mode_flag\000"
	.space	3
.LC159:
	.ascii	"PPS: pic_scaling_matrix_present_flag\000"
	.space	3
.LC160:
	.ascii	"PPS: second_chroma_qp_index_offset\000"
	.space	1
.LC161:
	.ascii	"SPS: seq_scaling_list_present_flag\000"
	.space	1
.LC162:
	.ascii	"PPS: pic_scaling_list_present_flag\000"
	.space	1
.LC163:
	.ascii	"second_chroma_qp_index_offset out of range.\012\000"
	.space	3
.LC164:
	.ascii	"PPS: pic_parameter_set_id\000"
	.space	2
.LC165:
	.ascii	"pic_parameter_set_id out of range.\012\000"
.LC166:
	.ascii	"PPS: seq_parameter_set_id\000"
	.space	2
.LC167:
	.ascii	"seq_parameter_set_id out of range.\012\000"
.LC168:
	.ascii	"SPS haven't decode.\012\000"
	.space	3
.LC169:
	.ascii	"PPS decode error.\012\000"
	.space	1
.LC170:
	.ascii	"VUI: aspect_ratio_info_present_flag\000"
.LC171:
	.ascii	"VUI: aspect_ratio_idc\000"
	.space	2
.LC172:
	.ascii	"VUI: sar_width\000"
	.space	1
.LC173:
	.ascii	"VUI: sar_height\000"
.LC174:
	.ascii	"VUI: overscan_info_present_flag\000"
.LC175:
	.ascii	"VUI: overscan_appropriate_flag\000"
	.space	1
.LC176:
	.ascii	"VUI: video_signal_type_present_flag\000"
.LC177:
	.ascii	"VUI: video_format\000"
	.space	2
.LC178:
	.ascii	"VUI: video_full_range_flag\000"
	.space	1
.LC179:
	.ascii	"VUI: color_description_present_flag\000"
.LC180:
	.ascii	"VUI: colour_primaries\000"
	.space	2
.LC181:
	.ascii	"VUI: transfer_characteristics\000"
	.space	2
.LC182:
	.ascii	"VUI: matrix_coefficients\000"
	.space	3
.LC183:
	.ascii	"VUI: chroma_loc_info_present_flag\000"
	.space	2
.LC184:
	.ascii	"VUI: chroma_sample_loc_type_top_field\000"
	.space	2
.LC185:
	.ascii	"VUI: chroma_sample_loc_type_bottom_field\000"
	.space	3
.LC186:
	.ascii	"VUI: timing_info_present_flag\000"
	.space	2
.LC187:
	.ascii	"VUI: num_units_in_tick\000"
	.space	1
.LC188:
	.ascii	"VUI: time_scale\000"
.LC189:
	.ascii	"VUI: fixed_frame_rate_flag\000"
	.space	1
.LC190:
	.ascii	"VUI: nal_hrd_parameters_present_flag\000"
	.space	3
.LC191:
	.ascii	"VUI: cpb_cnt_minus1\000"
.LC192:
	.ascii	"VUI: bit_rate_scale\000"
.LC193:
	.ascii	"VUI: cpb_size_scale\000"
.LC194:
	.ascii	"hrd->cpb_cnt_minus1 out of range\012\000"
	.space	2
.LC195:
	.ascii	"VUI: bit_rate_value_minus1\000"
	.space	1
.LC196:
	.ascii	"VUI: cpb_size_value_minus1\000"
	.space	1
.LC197:
	.ascii	"VUI: cbr_flag\000"
	.space	2
.LC198:
	.ascii	"VUI: initial_cpb_removal_delay_length_minus1\000"
	.space	3
.LC199:
	.ascii	"VUI: cpb_removal_delay_length_minus1\000"
	.space	3
.LC200:
	.ascii	"VUI: dpb_output_delay_length_minus1\000"
.LC201:
	.ascii	"VUI: time_offset_length\000"
.LC202:
	.ascii	"VUI: vcl_hrd_parameters_present_flag\000"
	.space	3
.LC203:
	.ascii	"VUI: low_delay_hrd_flag\000"
.LC204:
	.ascii	"VUI: pic_struct_present_flag\000"
	.space	3
.LC205:
	.ascii	"VUI: bitstream_restriction_flag\000"
.LC206:
	.ascii	"VUI: motion_vectors_over_pic_boundaries_flag\000"
	.space	3
.LC207:
	.ascii	"VUI: max_bytes_per_pic_denom\000"
	.space	3
.LC208:
	.ascii	"VUI: max_bits_per_mb_denom\000"
	.space	1
.LC209:
	.ascii	"VUI: log2_max_mv_length_horizontal\000"
	.space	1
.LC210:
	.ascii	"VUI: log2_max_mv_length_vertical\000"
	.space	3
.LC211:
	.ascii	"VUI: num_reorder_frames\000"
.LC212:
	.ascii	"VUI: max_dec_frame_buffering\000"
	.space	3
.LC213:
	.ascii	"dar=%d,final_dar=%d\012\000"
	.space	3
.LC214:
	.ascii	"SPS: chroma_format_idc\000"
	.space	1
.LC215:
	.ascii	"pSPS->chroma_format_idc out of range.\012\000"
	.space	1
.LC216:
	.ascii	"SPS: bit_depth_luma_minus8\000"
	.space	1
.LC217:
	.ascii	"bit_depth_luma_minus8 not equal 0.\012\000"
.LC218:
	.ascii	"SPS: bit_depth_chroma_minus8\000"
	.space	3
.LC219:
	.ascii	"bit_depth_chroma_minus8 not equal 0.\012\000"
	.space	2
.LC220:
	.ascii	"SPS: qpprime_y_zero_trans_bypass_flag\000"
	.space	2
.LC221:
	.ascii	"qpprime_y_zero_trans_bypass_flag not equal 0.\012\000"
	.space	1
.LC222:
	.ascii	"SPS: seq_scaling_matrix_present_flag\000"
	.space	3
.LC223:
	.ascii	"SPS: log2_max_frame_num_minus4\000"
	.space	1
.LC224:
	.ascii	"pSPS->log2_max_frame_num_minus4 out of range.\012\000"
	.space	1
.LC225:
	.ascii	"SPS: pic_order_cnt_type\000"
.LC226:
	.ascii	"pSPS->pic_order_cnt_type out of range.\012\000"
.LC227:
	.ascii	"SPS: log2_max_pic_order_cnt_lsb_minus4\000"
	.space	1
.LC228:
	.ascii	"SPS: num_ref_frames\000"
.LC229:
	.ascii	"pSPS->log2_max_pic_order_cnt_lsb_minus4 out of rang"
	.ascii	"e.\012\000"
	.space	1
.LC230:
	.ascii	"SPS: delta_pic_order_always_zero_flag\000"
	.space	2
.LC231:
	.ascii	"SPS: offset_for_non_ref_pic\000"
.LC232:
	.ascii	"SPS: offset_for_top_to_bottom_field\000"
.LC233:
	.ascii	"SPS: num_ref_frames_in_pic_order_cnt_cycle\000"
	.space	1
.LC234:
	.ascii	"pSPS->num_ref_frames_in_pic_order_cnt_cycle out of "
	.ascii	"range.\012\000"
	.space	1
.LC235:
	.ascii	"SPS: offset_for_ref_frame[i]\000"
	.space	3
.LC236:
	.ascii	"SPS: gaps_in_frame_num_value_allowed_flag\000"
	.space	2
.LC237:
	.ascii	"SPS: pic_width_in_mbs_minus1\000"
	.space	3
.LC238:
	.ascii	"pSPS->pic_width_in_mbs_minus1 out of range(=%d).\012"
	.ascii	"\000"
	.space	2
.LC239:
	.ascii	"SPS: pic_height_in_map_units_minus1\000"
.LC240:
	.ascii	"SPS: frame_mbs_only_flag\000"
	.space	3
.LC241:
	.ascii	"pSPS->pic_height_in_map_units_minus1 out of range.\012"
	.ascii	"\000"
.LC242:
	.ascii	"pic size too large.\012\000"
	.space	3
.LC243:
	.ascii	"level_idc %d not support.\012\000"
	.space	1
.LC244:
	.ascii	"dpb size according level : %d\012\000"
	.space	1
.LC245:
	.ascii	"pSPS->num_ref_frames(%d) > DPB size(%d), try to sel"
	.ascii	"ect the reasonable one.\012\000"
.LC246:
	.ascii	"SPS: direct_8x8_inference_flag\000"
	.space	1
.LC247:
	.ascii	"SPS: frame_cropping_flag\000"
	.space	3
.LC248:
	.ascii	"SPS: frame_cropping_rect_left_offset\000"
	.space	3
.LC249:
	.ascii	"SPS: frame_cropping_rect_right_offset\000"
	.space	2
.LC250:
	.ascii	"SPS: frame_cropping_rect_top_offset\000"
.LC251:
	.ascii	"SPS: frame_cropping_rect_bottom_offset\000"
	.space	1
.LC252:
	.ascii	"SPS: vui_parameters_present_flag\000"
	.space	3
.LC253:
	.ascii	"max_dec_frame_buffering(%d) > MaxDpbSize(%d)\012\000"
	.space	2
.LC254:
	.ascii	"SPS: mb_adaptive_frame_field_flag\000"
	.space	2
.LC255:
	.ascii	"SPS: profile_idc\000"
	.space	3
.LC256:
	.ascii	"SPS: constrained_set0_flag\000"
	.space	1
.LC257:
	.ascii	"SPS: constrained_set1_flag\000"
	.space	1
.LC258:
	.ascii	"SPS: constrained_set2_flag\000"
	.space	1
.LC259:
	.ascii	"SPS: constrained_set3_flag\000"
	.space	1
.LC260:
	.ascii	"SPS: reserved_zero_4bits\000"
	.space	3
.LC261:
	.ascii	"SPS: level_idc\000"
	.space	1
.LC262:
	.ascii	"SPS: seq_parameter_set_id\000"
	.space	2
.LC263:
	.ascii	"Baseline stream, try to decode, exit when FMO occur"
	.ascii	"red.\012\000"
	.space	3
.LC264:
	.ascii	"EXTENDED stream, try to decode, exit when dataparti"
	.ascii	"tion occurred.\012\000"
	.space	1
.LC265:
	.ascii	"others High profile stream, try to decode, exit whe"
	.ascii	"n high profile not support occurred.\012\000"
	.space	3
.LC266:
	.ascii	"profile_idc = %5d error, try to decode as main prof"
	.ascii	"ile.\012\000"
	.space	3
.LC267:
	.ascii	"level_idc = %5d error, try to decode as level_idc %"
	.ascii	"d.\012\000"
	.space	1
.LC268:
	.ascii	"Line %d: SPS[%d] decode error.\012\000"
.LC269:
	.ascii	"SEI: frame_packing_arrangement_id\000"
	.space	2
.LC270:
	.ascii	"SEI: frame_packing_arrangement_cancel_flag\000"
	.space	1
.LC271:
	.ascii	"SEI: frame_packing_arrangement_type\000"
.LC272:
	.ascii	"SEI: quincunx_sampling_flag\000"
.LC273:
	.ascii	"SEI: content_interpretation_type\000"
	.space	3
.LC274:
	.ascii	"SEI: spatial_flipping_flag\000"
	.space	1
.LC275:
	.ascii	"SEI: frame0_flipped_flag\000"
	.space	3
.LC276:
	.ascii	"SEI: field_views_flag\000"
	.space	2
.LC277:
	.ascii	"SEI: current_frame_is_frame0_flag\000"
	.space	2
.LC278:
	.ascii	"SEI: frame0_self_contained_flag\000"
.LC279:
	.ascii	"SEI: frame1_self_contained_flag\000"
.LC280:
	.ascii	"SEI: frame0_grid_position_x\000"
.LC281:
	.ascii	"SEI: frame0_grid_position_y\000"
.LC282:
	.ascii	"SEI: frame1_grid_position_x\000"
.LC283:
	.ascii	"SEI: frame1_grid_position_y\000"
.LC284:
	.ascii	"SEI: frame_packing_arrangement_reserved_byte\000"
	.space	3
.LC285:
	.ascii	"SEI: frame_packing_arrangement_repetition_period\000"
	.space	3
.LC286:
	.ascii	"SEI: frame_packing_arrangement_extension_flag\000"
	.space	2
.LC287:
	.ascii	"DecPicTimingSEI but SPS is invalid.\012\000"
	.space	3
.LC288:
	.ascii	"SEI: cpb_removal_delay\000"
	.space	1
.LC289:
	.ascii	"SEI: dpb_output_delay\000"
	.space	2
.LC290:
	.ascii	"pic_struct\000"
	.space	1
.LC291:
	.ascii	"SEI nal dec payload type err\012\000"
	.space	2
.LC292:
	.ascii	"SEI nal dec payloadSize err\012\000"
	.space	3
.LC293:
	.ascii	"SEI_BUFFERING_PERIOD,offset = %d,payload_size = %d "
	.ascii	"\012\000"
	.space	3
.LC294:
	.ascii	"[%s][[%d] %d!\012\000"
	.space	1
.LC295:
	.ascii	"SEI_PIC_TIMING,offset = %d,payload_size = %d \012\000"
	.space	1
.LC296:
	.ascii	"SEI_PAN_SCAN_RECT,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	2
.LC297:
	.ascii	"SEI_FILLER_PAYLOAD,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	1
.LC298:
	.ascii	"SEI_USER_DATA_REGISTERED_ITU_T_T35, offset = %d, pa"
	.ascii	"yload_size = %d \012\000"
	.space	3
.LC299:
	.ascii	"SEI_USER_DATA_UNREGISTERED, offset = %d, payload_si"
	.ascii	"ze = %d \012\000"
	.space	3
.LC300:
	.ascii	"SEI: itu_t_t35_country_code\000"
.LC301:
	.ascii	"SEI: itu_t_t35_country_code_extension_byte\000"
	.space	1
.LC302:
	.ascii	"SEI: itu_t_t35_provider_code\000"
	.space	3
.LC303:
	.ascii	"cann't dec usrdata\012\000"
.LC304:
	.ascii	"SEI_RECOVERY_POINT,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	1
.LC305:
	.ascii	"SEI_DEC_REF_PIC_MARKING_REPETITION,offset = %d,payl"
	.ascii	"oad_size = %d \012\000"
	.space	1
.LC306:
	.ascii	"SEI_SPARE_PIC,offset = %d,payload_size = %d \012\000"
	.space	2
.LC307:
	.ascii	"SEI_SCENE_INFO,offset = %d,payload_size = %d \012\000"
	.space	1
.LC308:
	.ascii	"SEI_SUB_SEQ_INFO,offset = %d,payload_size = %d \012"
	.ascii	"\000"
	.space	3
.LC309:
	.ascii	"SEI_SUB_SEQ_LAYER_CHARACTERISTICS,offset = %d,paylo"
	.ascii	"ad_size = %d \012\000"
	.space	2
.LC310:
	.ascii	"SEI_SUB_SEQ_CHARACTERISTICS,offset = %d,payload_siz"
	.ascii	"e = %d \012\000"
.LC311:
	.ascii	"SEI_FULL_FRAME_FREEZE,offset = %d,payload_size = %d"
	.ascii	" \012\000"
	.space	2
.LC312:
	.ascii	"SEI_FULL_FRAME_FREEZE_RELEASE,offset = %d,payload_s"
	.ascii	"ize = %d \012\000"
	.space	2
.LC313:
	.ascii	"SEI_FULL_FRAME_SNAPSHOT,offset = %d,payload_size = "
	.ascii	"%d \012\000"
.LC314:
	.ascii	"SEI_PROGRESSIVE_REFINEMENT_SEGMENT_START,offset = %"
	.ascii	"d,payload_size = %d \012\000"
	.space	3
.LC315:
	.ascii	"SEI_PROGRESSIVE_REFINEMENT_SEGMENT_END,offset = %d,"
	.ascii	"payload_size = %d \012\000"
	.space	1
.LC316:
	.ascii	"SEI_MOTION_CONSTRAINED_SLICE_GROUP_SET,offset = %d,"
	.ascii	"payload_size = %d \012\000"
	.space	1
.LC317:
	.ascii	"SEI_FILM_GRAIN_CHARACTERISTICS,offset = %d,payload_"
	.ascii	"size = %d \012\000"
	.space	1
.LC318:
	.ascii	"SEI_DEBLOCKING_FILTER_DISPLAY_PREFERENCE,offset = %"
	.ascii	"d,payload_size = %d \012\000"
	.space	3
.LC319:
	.ascii	"SEI_STEREO_VIDEO_INFO,offset = %d,payload_size = %d"
	.ascii	" \012\000"
	.space	2
.LC320:
	.ascii	"too much usrdat, cann't dec SEI\012\000"
	.space	3
.LC321:
	.ascii	"\012Slice nal or IDR nal = %d\012\000"
.LC322:
	.ascii	"sliceheader dec err\012\000"
	.space	3
.LC323:
	.ascii	"H264 recycle image\012\000"
.LC324:
	.ascii	"pH264Ctx is %#x, pFrameStore is %#x\012\000"
	.space	3
.LC325:
	.ascii	"line; %d pstLogicFsImage is NULL!\012\000"
	.space	1
.LC326:
	.ascii	"InsertVO err:%d, ClearAll\012\000"
	.space	1
.LC327:
	.ascii	"H264.c line %d: frame para err(ret=%d), recycle ima"
	.ascii	"ge self\012\000"
.LC328:
	.ascii	"line: %d pstLogicFsImage is NULL!\012\000"
	.space	1
.LC329:
	.ascii	"[%s][%d],RemoveUnUsedFrameStore failed!!\012\000"
	.space	2
.LC330:
	.ascii	"line %d: flush dpb return %d\012\000"
	.space	2
.LC331:
	.ascii	"----------------- Imode -> %d ------------------\012"
	.ascii	"\000"
	.space	2
.LC332:
	.ascii	"Discard this B(poc=%d) befor P, is_ref_idc=%d.\012\000"
.LC333:
	.ascii	"***** VDM start, TotalPicNum=%d, pH264Ctx->CurrPic."
	.ascii	"structure=%d.\012\000"
	.space	2
.LC334:
	.ascii	"\012 receive streambuff=0x%08x; phy_addr=0x%x; bits"
	.ascii	"tream_length=%d\012\000"
	.space	3
.LC335:
	.ascii	"nal_release_err\012\000"
	.space	3
.LC336:
	.ascii	"cann't find slot for current nal\012\000"
	.space	2
.LC337:
	.ascii	"receive a zero packet\012\000"
	.space	1
.LC338:
	.ascii	"clear all dec para\012\000"
.LC339:
	.ascii	"line %d, get APC error, ret %d\012\000"
.LC340:
	.ascii	"InserFrmInDPB: cur pic struct = %d!\012\000"
	.space	3
.LC341:
	.ascii	"CurrPic.state is 'EMPTY'\012\000"
	.space	2
.LC342:
	.ascii	"StorePicInDPB return(%d) from L%d\012\000"
	.space	1
.LC343:
	.ascii	"directoutput mode\012\000"
	.space	1
.LC344:
	.ascii	"line: %d pImg is NULL!\012\000"
.LC345:
	.ascii	"line %d, REPORT_IFRAME_ERR\012\000"
.LC346:
	.ascii	"line %d, return %d\012\000"
.LC347:
	.ascii	"err(%d) > ref_thr(%d)\012\000"
	.space	1
.LC348:
	.ascii	"marking return %d\012\000"
	.space	1
.LC349:
	.ascii	"line %d: pH264Ctx->DPB.size = %d, ref %d, ltref %d\012"
	.ascii	"\000"
.LC350:
	.ascii	"line %d,DPB.used_size %d; pos(%d) = pre_pos, force "
	.ascii	"return.\012\000"
.LC351:
	.ascii	"FS_ALLOC_ERR, ClearAll\012\000"
.LC352:
	.ascii	"Can not new logic fs! ClearAll\012\000"
.LC353:
	.ascii	"GAP found while DPB is empty!\012\000"
	.space	1
.LC354:
	.ascii	"frame num gap try to fill it \012\000"
	.space	1
.LC355:
	.ascii	"CurrFrameNum = %d  UnusedShortTermFrameNum = %d\012"
	.ascii	"\000"
	.space	3
.LC356:
	.ascii	"cann't allocate frame store when gap find\012\000"
	.space	1
.LC357:
	.ascii	"allocate frame store when gap find\012\000"
.LC358:
	.ascii	"line %d: store gap pic err, ret=%d\012\000"
.LC359:
	.ascii	"%s %d unknow error!!\012\000"
	.space	2
.LC360:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC361:
	.ascii	"%s %d frame_store is null!!\012\000"
	.space	3
.LC362:
	.ascii	"line %d: init dpb return %d\012\000"
	.space	3
.LC363:
	.ascii	"resolution error, the CAP_LEVEL_USER_DEFINE_WITH_OP"
	.ascii	"TION channel with s32ReRangeEn == 0 can't support s"
	.ascii	"uch bitstream.\012\000"
	.space	2
.LC364:
	.ascii	"s32MaxRefFrameNum < pH264Ctx->DPB.size, the CAP_LEV"
	.ascii	"EL_USER_DEFINE_WITH_OPTION channel can't support su"
	.ascii	"ch bitstream.\012\000"
	.space	3
.LC365:
	.ascii	"mem arrange err, ClearAll\012\000"
	.space	1
.LC366:
	.ascii	"get back frm\012\000"
	.space	2
.LC367:
	.ascii	"line %d: frame gap(=%d) > dpb size(=%d)\012\000"
	.space	3
.LC368:
	.ascii	"frame num gap don't allowed but gap find\012\000"
	.space	2
.LC369:
	.ascii	"line %d: find gap in NON-I slice but here gap is no"
	.ascii	"t allowed\012\000"
	.space	2
.LC370:
	.ascii	"line %d: dec gap failed\012\000"
	.space	3
.LC371:
	.ascii	"line %d: alloc framestore failed\012\000"
	.space	2
.LC372:
	.ascii	"dec_pts: %lld\012\000"
	.space	1
.LC373:
	.ascii	"dec_usertag: %lld\012\000"
	.space	1
.LC374:
	.ascii	"%s %d NULL == pH264Ctx->CurrPic.frame_store!!\012\000"
	.space	1
.LC375:
	.ascii	"Start Reason: SliceParaNum, MaxBytesReceived = %d, "
	.ascii	"%d(thr=%d)\012\000"
	.space	1
.LC376:
	.ascii	"Too many slice or bitstream, err!\012\000"
	.space	1
.LC377:
	.ascii	"Start Reason: new_pic_flag\012\000"
.LC378:
	.ascii	"init pic err, find next recover point or next valid"
	.ascii	" sps, pps, or exit\012\000"
	.space	1
.LC379:
	.ascii	"DecList error, ret=%d\012\000"
	.space	1
.LC380:
	.ascii	"dec list err.\012\000"
	.space	1
.LC381:
	.ascii	"pH264Ctx->TotalNal = %d, type:%d\012\000"
	.space	2
.LC382:
	.ascii	"stop i want\012\000"
	.space	3
.LC383:
	.ascii	"***** NAL: IDR/Slice, nal_unit_type=%d, TotalSlice="
	.ascii	"%d\012\000"
	.space	1
.LC384:
	.ascii	"***** NAL: PPS, nal_unit_type=%d, TotalPPS=%d\012\000"
	.space	1
.LC385:
	.ascii	"***** NAL: SPS, nal_unit_type=%d, TotalSPS=%d\012\000"
	.space	1
.LC386:
	.ascii	"SPS decode error.\012\000"
	.space	1
.LC387:
	.ascii	"***** NAL: SEI, nal_unit_type=%d\012\000"
	.space	2
.LC388:
	.ascii	"SEI decode error.\012\000"
	.space	1
.LC389:
	.ascii	"***** NAL: AUD, nal_unit_type=%d\012\000"
	.space	2
.LC390:
	.ascii	"***** NAL: EOSEQ, nal_unit_type=%d\012\000"
.LC391:
	.ascii	"***** NAL: FILL, nal_unit_type=%d\012\000"
	.space	1
.LC392:
	.ascii	"***** NAL: EOSTREAM, nal_unit_type=%d\012\000"
	.space	1
.LC393:
	.ascii	"***** NAL: SPSEXT, nal_unit_type=%d\012\000"
	.space	3
.LC394:
	.ascii	"***** NAL: AUX, nal_unit_type=%d\012\000"
	.space	2
.LC395:
	.ascii	"***** NAL: EOPIC, nal_unit_type=%d\012\000"
.LC396:
	.ascii	"***** NAL: UNSUPPORT, nal_unit_type=%d,nalu header:"
	.ascii	"%x\012\000"
	.space	1
.LC397:
	.ascii	"H264_DecOneNal ERR\012\000"
.LC398:
	.ascii	"store pic err, ret = %d\012\000"
	.space	3
.LC399:
	.ascii	"imode nal store pic err, ret = %d\012\000"
	.space	1
.LC400:
	.ascii	"imode nal flush dpb err, ret = %d\012\000"
	.space	1
.LC401:
	.ascii	"cann't find FrameStore\012\000"
.LC402:
	.ascii	"========== H264 FrameStore state(is_used, is_in_dpb"
	.ascii	", IsOutDPB) ========\012\000"
	.space	3
.LC403:
	.ascii	"ReadImgNum = %d, NewImgNum = %d\012\000"
	.space	3
.LC404:
	.ascii	"%02d: %d %d %d\012\000"
.LC405:
	.ascii	"FrameStore leak, ClearAll\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
.LANCHOR3 = . + 8184
	.type	pps_tmp.31647, %object
	.size	pps_tmp.31647, 2208
pps_tmp.31647:
	.space	2208
	.type	sps_tmp.31781, %object
	.size	sps_tmp.31781, 4000
sps_tmp.31781:
	.space	4000
	.type	TmpBuf, %object
	.size	TmpBuf, 68
TmpBuf:
	.space	68
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
