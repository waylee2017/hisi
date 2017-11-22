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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(h264) -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
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
	bic	r0, r0, #-16777216	@ D.38777, *s_2(D),
	bic	r0, r0, #255	@ D.38777, D.38777,
	sub	r0, r0, #65536	@, D.38777,
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
	bic	r0, r0, #-16777216	@ D.38782, *s_2(D),
	bic	r0, r0, #255	@ D.38782, D.38782,
	sub	r0, r0, #256	@, D.38782,
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
	ldr	r2, [r2, #12]	@ D.38789, _4->pic_num
	ldr	r3, [r3, #12]	@ D.38789, _7->pic_num
	cmp	r2, r3	@ D.38789, D.38789
	blt	.L5	@,
	mvngt	r0, #0	@ D.38787,
	movle	r0, #0	@ D.38787,
	bx	lr	@
.L5:
	mov	r0, #1	@ D.38787,
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
	ldr	r2, [r2, #8]	@ D.38795, _4->long_term_pic_num
	ldr	r3, [r3, #8]	@ D.38795, _7->long_term_pic_num
	cmp	r2, r3	@ D.38795, D.38795
	blt	.L9	@,
	movgt	r0, #1	@ D.38793,
	movle	r0, #0	@ D.38793,
	bx	lr	@
.L9:
	mvn	r0, #0	@ D.38793,
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
	ldr	r2, [r2, #516]	@ D.38801, _4->frame_num_wrap
	ldr	r3, [r3, #516]	@ D.38801, _7->frame_num_wrap
	cmp	r2, r3	@ D.38801, D.38801
	blt	.L12	@,
	mvngt	r0, #0	@ D.38799,
	movle	r0, #0	@ D.38799,
	bx	lr	@
.L12:
	mov	r0, #1	@ D.38799,
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
	ldr	r2, [r2, #520]	@ D.38807, _4->long_term_frame_idx
	ldr	r3, [r3, #520]	@ D.38807, _7->long_term_frame_idx
	cmp	r2, r3	@ D.38807, D.38807
	bcc	.L15	@,
	movhi	r0, #1	@ D.38805,
	movls	r0, #0	@ D.38805,
	bx	lr	@
.L15:
	mvn	r0, #0	@ D.38805,
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
	ldr	r2, [r2, #16]	@ D.38813, _4->poc
	ldr	r3, [r3, #16]	@ D.38813, _7->poc
	cmp	r2, r3	@ D.38813, D.38813
	blt	.L18	@,
	movgt	r0, #1	@ D.38811,
	movle	r0, #0	@ D.38811,
	bx	lr	@
.L18:
	mvn	r0, #0	@ D.38811,
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
	ldr	r2, [r2, #16]	@ D.38819, _4->poc
	ldr	r3, [r3, #16]	@ D.38819, _7->poc
	cmp	r2, r3	@ D.38819, D.38819
	blt	.L21	@,
	mvngt	r0, #0	@ D.38817,
	movle	r0, #0	@ D.38817,
	bx	lr	@
.L21:
	mov	r0, #1	@ D.38817,
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
	ldr	r2, [r2, #524]	@ D.38825, _4->poc
	ldr	r3, [r3, #524]	@ D.38825, _7->poc
	cmp	r2, r3	@ D.38825, D.38825
	blt	.L24	@,
	movgt	r0, #1	@ D.38823,
	movle	r0, #0	@ D.38823,
	bx	lr	@
.L24:
	mvn	r0, #0	@ D.38823,
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
	ldr	r2, [r2, #524]	@ D.38831, _4->poc
	ldr	r3, [r3, #524]	@ D.38831, _7->poc
	cmp	r2, r3	@ D.38831, D.38831
	blt	.L27	@,
	mvngt	r0, #0	@ D.38829,
	movle	r0, #0	@ D.38829,
	bx	lr	@
.L27:
	mov	r0, #1	@ D.38829,
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
	add	r2, r2, lr, lsr #1	@ D.38835, pH264Ctx_1(D)->DPB.size, pH264Ctx_1(D)->PicOutCounter,
	add	r0, r2, #1	@ D.38835, D.38835,
	mov	r3, r3, lsr #1	@ D.38835, pH264Ctx_1(D)->NewPicCounter,
	cmp	r3, r0	@ D.38835, D.38835
	movcc	r3, #0	@ tmp152,
	strcc	r3, [r1, #84]	@ tmp152, p_image_11(D)->u32RepeatCnt
	ldrcc	pc, [sp], #4	@
	sub	r3, r3, #1	@ D.38835, D.38835,
	rsb	r3, r2, r3	@ D.38835, D.38835, D.38835
	cmp	r3, #1	@ D.38835,
	movhi	r3, #2	@ tmp138,
	movls	r3, #1	@ tmp145,
	strhi	r3, [r1, #84]	@ tmp138, p_image_11(D)->u32RepeatCnt
	strls	r3, [r1, #84]	@ tmp145, p_image_11(D)->u32RepeatCnt
	ldrhi	r3, [ip, #3712]	@ pH264Ctx_1(D)->PicOutCounter, pH264Ctx_1(D)->PicOutCounter
	ldrls	r3, [ip, #3712]	@ pH264Ctx_1(D)->PicOutCounter, pH264Ctx_1(D)->PicOutCounter
	addhi	r3, r3, #4	@ D.38835, pH264Ctx_1(D)->PicOutCounter,
	addls	r3, r3, #2	@ D.38835, pH264Ctx_1(D)->PicOutCounter,
	str	r3, [ip, #3712]	@ D.38835, pH264Ctx_1(D)->PicOutCounter
	ldr	pc, [sp], #4	@
	.fnend
	.size	SetFrmRepeatCount.part.1, .-SetFrmRepeatCount.part.1
	.align	2
	.type	ReleaseNAL.part.3, %function
ReleaseNAL.part.3:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pNalu, pNalu
	ldr	r3, [r1, #8]	@ pNalu_1(D)->stream[0].streamBuffer, pNalu_1(D)->stream[0].streamBuffer
	mov	r5, r0	@ ChanID, ChanID
	cmp	r3, #0	@ pNalu_1(D)->stream[0].streamBuffer,
	beq	.L34	@,
	ldr	r1, [r1, #32]	@, pNalu_1(D)->stream[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp118,
	str	r3, [r4, #8]	@ tmp118, pNalu_1(D)->stream[0].streamBuffer
	str	r3, [r4, #24]	@ tmp118, pNalu_1(D)->stream[0].bitsoffset
	str	r3, [r4, #12]	@ tmp118, pNalu_1(D)->stream[0].bitstream_length
.L34:
	ldr	r3, [r4, #36]	@ pNalu_1(D)->stream[1].streamBuffer, pNalu_1(D)->stream[1].streamBuffer
	cmp	r3, #0	@ pNalu_1(D)->stream[1].streamBuffer,
	beq	.L35	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #60]	@, pNalu_1(D)->stream[1].StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp123,
	str	r3, [r4, #36]	@ tmp123, pNalu_1(D)->stream[1].streamBuffer
	str	r3, [r4, #52]	@ tmp123, pNalu_1(D)->stream[1].bitsoffset
	str	r3, [r4, #40]	@ tmp123, pNalu_1(D)->stream[1].bitstream_length
.L35:
	mov	r3, #0	@ tmp126,
	strb	r3, [r4]	@ tmp126, pNalu_1(D)->nal_used_segment
	str	r3, [r4, #68]	@ tmp126, pNalu_1(D)->nal_segment
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	ReleaseNAL.part.3, .-ReleaseNAL.part.3
	.align	2
	.type	DumpList.part.5, %function
DumpList.part.5:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	DumpList.part.5, .-DumpList.part.5
	.align	2
	.global	ue_v
	.type	ue_v, %function
ue_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #13504	@ D.38849, pH264Ctx,
	add	r5, r5, #24	@ D.38849, D.38849,
	mov	r1, #32	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	mov	r0, r5	@, D.38849
	bl	BsShow	@
	mov	r7, r0	@ D.38850,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r4, r0	@ zeros,
	bls	.L49	@,
	cmp	r0, #31	@ zeros,
	bls	.L50	@,
	add	r2, r6, #49152	@ tmp138, pH264Ctx,
	mvn	r7, #0	@ INFO,
	mov	r5, #32	@ NumBits,
	mov	r3, #1	@ tmp139,
	str	r3, [r2, #3628]	@ tmp139, pH264Ctx_4(D)->SeErrFlg
.L46:
	ldr	ip, [r6, #368]	@ D.38852, pH264Ctx_4(D)->pCurrNal
	mov	r0, r7	@, INFO
	ldr	r2, [ip, #64]	@ _32->nal_bitoffset, _32->nal_bitoffset
	add	r4, r2, r5	@ D.38851, _32->nal_bitoffset, NumBits
	str	r4, [ip, #64]	@ D.38851, _32->nal_bitoffset
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L49:
	mov	r4, r0, asl #1	@ D.38851, zeros,
	mov	r0, r5	@, D.38849
	add	r5, r4, #1	@ NumBits, D.38851,
	rsb	r4, r4, #31	@ D.38851, D.38851,
	mov	r7, r7, lsr r4	@ D.38851, D.38850,
	mov	r1, r5	@, NumBits
	sub	r7, r7, #1	@ INFO, D.38851,
	bl	BsSkip	@
	b	.L46	@
.L50:
	add	r7, r0, #1	@ D.38850, zeros,
	mov	r1, r0	@, zeros
	mov	r0, r5	@, D.38849
	bl	BsSkip	@
	mov	r1, r7	@, D.38850
	mov	r0, r5	@, D.38849
	bl	BsShow	@
	mov	r1, r7	@, D.38850
	sub	r7, r0, #1	@ INFO,,
	mov	r0, r5	@, D.38849
	bl	BsSkip	@
	mov	r3, r4, asl #1	@ D.38851, zeros,
	add	r5, r3, #1	@ NumBits, D.38851,
	b	.L46	@
	.fnend
	.size	ue_v, .-ue_v
	.align	2
	.global	se_v
	.type	se_v, %function
se_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #13504	@ D.38855, pH264Ctx,
	add	r5, r5, #24	@ D.38855, D.38855,
	mov	r1, #32	@,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r0, r5	@, D.38855
	bl	BsShow	@
	mov	r6, r0	@ D.38856,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r4, r0	@ zeros,
	bhi	.L52	@,
	mov	r4, r0, asl #1	@ D.38857, zeros,
	mov	r0, r5	@, D.38855
	rsb	r3, r4, #31	@ D.38857, D.38857,
	add	r4, r4, #1	@ NumBits, D.38857,
	mov	r6, r6, lsr r3	@ D.38857, D.38856,
	and	r5, r6, #1	@ D.38858, D.38857,
	mov	r1, r4	@, NumBits
	rsb	r3, r5, #0	@ D.38860, D.38858
	eor	r3, r3, r6, lsr #1	@ D.38860, D.38860, D.38857,
	add	r5, r3, r5	@ INFO, D.38860, D.38858
	bl	BsSkip	@
.L53:
	ldr	r2, [r7, #368]	@ D.38859, pH264Ctx_6(D)->pCurrNal
	mov	r0, r5	@, INFO
	ldr	r3, [r2, #64]	@ _37->nal_bitoffset, _37->nal_bitoffset
	add	r4, r3, r4	@ D.38857, _37->nal_bitoffset, NumBits
	str	r4, [r2, #64]	@ D.38857, _37->nal_bitoffset
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L52:
	cmp	r0, #31	@ zeros,
	bls	.L56	@,
	add	r3, r7, #49152	@ tmp153, pH264Ctx,
	mov	r2, #1	@ tmp154,
	mvn	r5, #-2147483648	@ INFO,
	mov	r4, #32	@ NumBits,
	str	r2, [r3, #3628]	@ tmp154, pH264Ctx_6(D)->SeErrFlg
	b	.L53	@
.L56:
	mov	r1, r0	@, zeros
	mov	r0, r5	@, D.38855
	bl	BsSkip	@
	mov	r1, r4	@, zeros
	mov	r0, r5	@, D.38855
	mov	r4, r4, asl #1	@ D.38857, zeros,
	bl	BsGet	@
	mov	r1, #1	@,
	add	r4, r4, #1	@ NumBits, D.38857,
	mov	r6, r0	@ INFO,
	mov	r0, r5	@, D.38855
	bl	BsGet	@
	and	r0, r0, #1	@ D.38858,,
	rsb	r5, r0, #0	@ D.38860, D.38858
	eor	r6, r6, r5	@ D.38860, INFO, D.38860
	add	r5, r6, r0	@ INFO, D.38860, D.38858
	b	.L53	@
	.fnend
	.size	se_v, .-se_v
	.align	2
	.global	u_v
	.type	u_v, %function
u_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r5, r1	@ LenInBits, LenInBits
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.38865, pH264Ctx_1(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _8->nal_bitoffset, _8->nal_bitoffset
	add	r1, r3, r5	@ D.38866, _8->nal_bitoffset, LenInBits
	str	r1, [r2, #64]	@ D.38866, _8->nal_bitoffset
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	u_v, .-u_v
	.align	2
	.global	u_1
	.type	u_1, %function
u_1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r1, #1	@,
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.38871, pH264Ctx_1(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _7->nal_bitoffset, _7->nal_bitoffset
	add	r3, r3, #1	@ D.38872, _7->nal_bitoffset,
	str	r3, [r2, #64]	@ D.38872, _7->nal_bitoffset
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	u_1, .-u_1
	.align	2
	.global	ClearCurrNal
	.type	ClearCurrNal, %function
ClearCurrNal:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #368]	@ D.38875, pH264Ctx_3(D)->pCurrNal
	cmp	r3, #0	@ D.38875,
	beq	.L67	@,
	add	r2, r0, #49152	@ tmp115, pH264Ctx,
	mov	r1, r3	@, D.38875
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, #0	@ tmp116,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r2, #3688]	@ D.38876, pH264Ctx_3(D)->ChanID
	strb	r5, [r3, #1]	@ tmp116, _4->is_valid
	strb	r5, [r3, #3]	@ tmp116, _4->nal_integ
	bl	ReleaseNAL.part.3	@
	str	r5, [r4, #368]	@ tmp116, pH264Ctx_3(D)->pCurrNal
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L67:
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	ClearCurrNal, .-ClearCurrNal
	.align	2
	.global	ClearAllNal
	.type	ClearAllNal, %function
ClearAllNal:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #13504	@ D.38894, pH264Ctx,
	add	r5, r5, #24	@ D.38894, D.38894,
	add	r4, r0, #376	@ ivtmp.370, pH264Ctx,
	add	r7, r0, #49152	@ tmp159, pH264Ctx,
	mov	r6, #0	@ tmp160,
	b	.L70	@
.L69:
	add	r4, r4, #96	@ ivtmp.370, ivtmp.370,
	cmp	r4, r5	@ ivtmp.370, D.38894
	beq	.L76	@,
.L70:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ MEM[base: _19, offset: 1B], MEM[base: _19, offset: 1B]
	cmp	r3, #1	@ MEM[base: _19, offset: 1B],
	bne	.L69	@,
	subs	r1, r4, #0	@, ivtmp.370
	ldr	r0, [r7, #3688]	@ D.38890, pH264Ctx_5(D)->ChanID
	beq	.L69	@,
	strb	r6, [r4, #1]	@ tmp160, MEM[base: _19, offset: 1B]
	add	r4, r4, #96	@ ivtmp.370, ivtmp.370,
	strb	r6, [r4, #-93]	@ tmp160, MEM[base: _19, offset: 3B]
	bl	ReleaseNAL.part.3	@
	cmp	r4, r5	@ ivtmp.370, D.38894
	bne	.L70	@,
.L76:
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	ClearAllNal, .-ClearAllNal
	.align	2
	.global	ClearCurrSlice
	.type	ClearCurrSlice, %function
ClearCurrSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ClearCurrNal	@
	add	r3, r4, #49152	@ tmp115, pH264Ctx,
	mov	r0, #0	@,
	ldr	r2, [r3, #3644]	@ pH264Ctx_2(D)->TotalSlice, pH264Ctx_2(D)->TotalSlice
	add	r2, r2, #1	@ D.38897, pH264Ctx_2(D)->TotalSlice,
	str	r2, [r3, #3644]	@ D.38897, pH264Ctx_2(D)->TotalSlice
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ClearCurrSlice, .-ClearCurrSlice
	.align	2
	.global	ClearAllSlice
	.type	ClearAllSlice, %function
ClearAllSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #50688	@ ivtmp.382, pH264Ctx,
	add	r6, r0, #51200	@ D.38919, pH264Ctx,
	add	r4, r4, #12	@ ivtmp.382, ivtmp.382,
	add	r6, r6, #44	@ D.38919, D.38919,
	add	r7, r0, #49152	@ tmp166, pH264Ctx,
	mov	r5, #0	@ tmp167,
.L81:
	ldr	r3, [r4, #4]!	@ D.38914, MEM[base: _21, offset: 0B]
	cmp	r3, #0	@ D.38914,
	mov	r1, r3	@, D.38914
	beq	.L80	@,
	ldr	r0, [r7, #3688]	@ D.38915, pH264Ctx_5(D)->ChanID
	strb	r5, [r3, #1]	@ tmp167, _6->is_valid
	strb	r5, [r3, #3]	@ tmp167, _6->nal_integ
	bl	ReleaseNAL.part.3	@
	str	r5, [r4]	@ tmp167, MEM[base: _21, offset: 0B]
.L80:
	cmp	r4, r6	@ ivtmp.382, D.38919
	bne	.L81	@,
	mov	r0, #0	@ tmp161,
	str	r0, [r7, #3612]	@ tmp161, pH264Ctx_5(D)->SliceParaNum
	str	r0, [r7, #3672]	@ tmp161, pH264Ctx_5(D)->MaxBytesReceived
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
	ldr	r3, [r5, #2052]	@ D.38939, pH264Ctx_10(D)->DPB.used_size
	ldr	ip, [r5, #2048]	@ D.38939, pH264Ctx_10(D)->DPB.size
	cmp	r3, ip	@ D.38939, D.38939
	strhi	ip, [r5, #2052]	@ D.38939, pH264Ctx_10(D)->DPB.used_size
	movhi	r3, ip	@ D.38939, D.38939
	cmp	r3, #0	@ D.38939,
	ldmeqfd	sp!, {r4, r5, pc}	@
	add	r0, r0, #26368	@ ivtmp.397, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #60	@ ivtmp.397, ivtmp.397,
.L93:
	ldr	ip, [r0, #4]!	@ D.38941, MEM[base: _1, offset: 0B]
	ldr	r4, [r1]	@ *poc_8(D), *poc_8(D)
	ldr	lr, [ip, #524]	@ D.38940, _16->poc
	cmp	r4, lr	@ *poc_8(D), D.38940
	ble	.L92	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ _16->is_in_dpb, _16->is_in_dpb
	cmp	ip, #0	@ _16->is_in_dpb,
	strne	lr, [r1]	@ D.38940, *poc_8(D)
	strne	r3, [r2]	@ i, *pos_6(D)
.L92:
	ldr	ip, [r5, #2052]	@ pH264Ctx_10(D)->DPB.used_size, pH264Ctx_10(D)->DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	ip, r3	@ pH264Ctx_10(D)->DPB.used_size, i
	bhi	.L93	@,
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
	ldr	r3, [r5, #2048]	@ D.38961, pH264Ctx_8(D)->DPB.size
	ldr	ip, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	ip, r3	@ pH264Ctx_8(D)->DPB.used_size, D.38961
	strhi	r3, [r5, #2052]	@ D.38961, pH264Ctx_8(D)->DPB.used_size
	ldr	r3, [r5, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	ldr	r4, [r3, #524]	@ D.38965, _12->poc
	str	r4, [r1]	@ D.38965, *poc_14(D)
	ldr	r3, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	ldmeqfd	sp!, {r4, r5, pc}	@
	add	r0, r0, #26368	@ ivtmp.413, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #60	@ ivtmp.413, ivtmp.413,
.L105:
	ldr	ip, [r0, #4]!	@ D.38962, MEM[base: _31, offset: 0B]
	ldr	lr, [ip, #524]	@ D.38963, _18->poc
	cmp	lr, r4	@ D.38963, D.38965
	ble	.L103	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ _18->is_in_dpb, _18->is_in_dpb
	cmp	ip, #0	@ _18->is_in_dpb,
	strne	lr, [r1]	@ D.38963, *poc_14(D)
	strne	r3, [r2]	@ i, *pos_6(D)
.L103:
	ldr	ip, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	ip, r3	@ pH264Ctx_8(D)->DPB.used_size, i
	ldmlsfd	sp!, {r4, r5, pc}	@
	ldr	r4, [r1]	@ D.38965, *poc_14(D)
	b	.L105	@
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.38976, pFS_3(D)->is_reference
	cmp	r3, #3	@ D.38976,
	beq	.L126	@,
	tst	r3, #1	@ D.38976,
	bne	.L127	@,
.L115:
	and	r3, r3, #2	@ tmp134, D.38976,
	ands	r3, r3, #255	@ tmp136, tmp134,
	beq	.L119	@,
.L116:
	ldr	r0, [r0, #472]	@ *pFS_3(D), *pFS_3(D)
	bic	r0, r0, #-16777216	@ D.38977, *pFS_3(D),
	bic	r0, r0, #255	@ D.38977, D.38977,
	sub	r0, r0, #65536	@ D.38975, D.38977,
	clz	r0, r0	@ D.38975, D.38975
	mov	r0, r0, lsr #5	@ D.38975, D.38975,
	bx	lr	@
.L119:
	mov	r0, r3	@ D.38975, tmp136
	bx	lr	@
.L127:
	ldr	r2, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r2, r2, #-16777216	@ D.38977, *pFS_3(D),
	bic	r2, r2, #255	@ D.38977, D.38977,
	cmp	r2, #65536	@ D.38977,
	bne	.L115	@,
.L120:
	mov	r0, #1	@ D.38975,
	bx	lr	@
.L126:
	ldr	r3, [r0, #400]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.38977, *pFS_3(D),
	bic	r3, r3, #255	@ D.38977, D.38977,
	cmp	r3, #65536	@ D.38977,
	beq	.L120	@,
	ldr	r3, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.38977, *pFS_3(D),
	bic	r3, r3, #255	@ D.38977, D.38977,
	cmp	r3, #65536	@ D.38977,
	bne	.L116	@,
	b	.L120	@
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.38982, pFS_3(D)->is_reference
	cmp	r3, #3	@ D.38982,
	beq	.L143	@,
	tst	r3, #1	@ D.38982,
	bne	.L144	@,
.L132:
	and	r3, r3, #2	@ tmp134, D.38982,
	ands	r3, r3, #255	@ tmp136, tmp134,
	beq	.L136	@,
.L133:
	ldr	r0, [r0, #472]	@ *pFS_3(D), *pFS_3(D)
	bic	r0, r0, #-16777216	@ D.38983, *pFS_3(D),
	bic	r0, r0, #255	@ D.38983, D.38983,
	sub	r0, r0, #256	@ D.38981, D.38983,
	clz	r0, r0	@ D.38981, D.38981
	mov	r0, r0, lsr #5	@ D.38981, D.38981,
	bx	lr	@
.L136:
	mov	r0, r3	@ D.38981, tmp136
	bx	lr	@
.L144:
	ldr	r2, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r2, r2, #-16777216	@ D.38983, *pFS_3(D),
	bic	r2, r2, #255	@ D.38983, D.38983,
	cmp	r2, #256	@ D.38983,
	bne	.L132	@,
.L137:
	mov	r0, #1	@ D.38981,
	bx	lr	@
.L143:
	ldr	r3, [r0, #400]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.38983, *pFS_3(D),
	bic	r3, r3, #255	@ D.38983, D.38983,
	cmp	r3, #256	@ D.38983,
	beq	.L137	@,
	ldr	r3, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.38983, *pFS_3(D),
	bic	r3, r3, #255	@ D.38983, D.38983,
	cmp	r3, #256	@ D.38983,
	bne	.L133	@,
	b	.L137	@
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
	ldr	r9, [r10, #2052]	@ D.39013, pH264Ctx_9(D)->DPB.used_size
	cmp	r9, #0	@ D.39013,
	beq	.L152	@,
	add	r8, r0, #26368	@ ivtmp.446, pH264Ctx,
	mov	r4, #0	@ j,
	add	r8, r8, #60	@ ivtmp.446, ivtmp.446,
	mov	r5, r4	@ i, j
.L148:
	ldr	r7, [r8, #4]!	@ D.39012, MEM[base: _36, offset: 0B]
	add	r5, r5, #1	@ i, i,
	mov	r0, r7	@, D.39012
	bl	LongTermRefFlg	@
	add	r3, r4, #6592	@ tmp130, j,
	add	r3, r3, #48	@ tmp130, tmp130,
	cmp	r0, #0	@,
	strne	r7, [r6, r3, asl #2]	@ D.39012, pH264Ctx_9(D)->DPB.fs_ltref
	addne	r4, r4, #1	@ j, j,
	cmp	r5, r9	@ i, D.39013
	bne	.L148	@,
.L146:
	ldr	r3, [r10, #2048]	@ D.39013, pH264Ctx_9(D)->DPB.size
	str	r4, [r10, #2060]	@ j, pH264Ctx_9(D)->DPB.ltref_frames_in_buffer
	cmp	r3, r4	@ D.39013, j
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r0, r4, #6592	@ D.39014, j,
	mov	r2, #0	@ tmp140,
	add	r0, r0, #47	@ D.39014, D.39014,
	add	r0, r6, r0, lsl #2	@ ivtmp.435, pH264Ctx, D.39014,
.L150:
	add	r4, r4, #1	@ j, j,
	str	r2, [r0, #4]!	@ tmp140, MEM[base: _1, offset: 0B]
	cmp	r4, r3	@ j, D.39013
	bne	.L150	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L152:
	mov	r4, r9	@ j, D.39013
	b	.L146	@
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
	ldr	r9, [r10, #2052]	@ D.39044, pH264Ctx_9(D)->DPB.used_size
	cmp	r9, #0	@ D.39044,
	beq	.L166	@,
	add	r8, r0, #26368	@ ivtmp.471, pH264Ctx,
	mov	r4, #0	@ j,
	add	r8, r8, #60	@ ivtmp.471, ivtmp.471,
	mov	r5, r4	@ i, j
.L162:
	ldr	r7, [r8, #4]!	@ D.39043, MEM[base: _36, offset: 0B]
	add	r5, r5, #1	@ i, i,
	mov	r0, r7	@, D.39043
	bl	ShortTermRefFlg	@
	add	r3, r4, #6592	@ tmp130, j,
	add	r3, r3, #32	@ tmp130, tmp130,
	cmp	r0, #0	@,
	strne	r7, [r6, r3, asl #2]	@ D.39043, pH264Ctx_9(D)->DPB.fs_ref
	addne	r4, r4, #1	@ j, j,
	cmp	r5, r9	@ i, D.39044
	bne	.L162	@,
.L160:
	ldr	r3, [r10, #2048]	@ D.39044, pH264Ctx_9(D)->DPB.size
	str	r4, [r10, #2056]	@ j, pH264Ctx_9(D)->DPB.ref_frames_in_buffer
	cmp	r3, r4	@ D.39044, j
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r0, r4, #6592	@ D.39045, j,
	mov	r2, #0	@ tmp140,
	add	r0, r0, #31	@ D.39045, D.39045,
	add	r0, r6, r0, lsl #2	@ ivtmp.460, pH264Ctx, D.39045,
.L164:
	add	r4, r4, #1	@ j, j,
	str	r2, [r0, #4]!	@ tmp140, MEM[base: _1, offset: 0B]
	cmp	r4, r3	@ j, D.39044
	bne	.L164	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L166:
	mov	r4, r9	@ j, D.39044
	b	.L160	@
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
	mvn	r0, r1	@ D.39050, difference_of_pic_nums_minus1
	movne	r3, r3, asl #1	@ D.39050, pCurrPic_3(D)->frame_num,
	addne	r3, r3, #1	@ CurrPicNum, D.39050,
	add	r0, r0, r3	@, D.39050, CurrPicNum
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
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ D.39053, pFrameStore_5(D)->is_used
	tst	r3, #1	@ D.39053,
	beq	.L177	@,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ pFrameStore_5(D)->is_reference, pFrameStore_5(D)->is_reference
	mov	ip, #0	@ tmp128,
	strb	ip, [r1, #437]	@ tmp128, pFrameStore_5(D)->top_field.is_long_term
	and	r2, r2, #2	@ tmp126, pFrameStore_5(D)->is_reference,
	strb	ip, [r1, #438]	@ tmp128, pFrameStore_5(D)->top_field.is_short_term
	strb	r2, [r1, #2]	@ tmp126, pFrameStore_5(D)->is_reference
.L177:
	tst	r3, #2	@ D.39053,
	beq	.L178	@,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ pFrameStore_5(D)->is_reference, pFrameStore_5(D)->is_reference
	mov	ip, #0	@ tmp139,
	strb	ip, [r1, #473]	@ tmp139, pFrameStore_5(D)->bottom_field.is_long_term
	and	r2, r2, #1	@ tmp137, pFrameStore_5(D)->is_reference,
	strb	ip, [r1, #474]	@ tmp139, pFrameStore_5(D)->bottom_field.is_short_term
	strb	r2, [r1, #2]	@ tmp137, pFrameStore_5(D)->is_reference
.L178:
	cmp	r3, #3	@ D.39053,
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
	ldr	r7, [r3, #2052]	@ D.39070, pH264Ctx_1(D)->DPB.used_size
	cmp	r7, #0	@ D.39070,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r6, r0, #26368	@ ivtmp.488, pH264Ctx,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	add	r6, r6, #60	@ ivtmp.488, ivtmp.488,
	mov	r4, #0	@ i,
.L189:
	ldr	r5, [r6, #4]!	@ D.39068, MEM[base: _17, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ _3->is_reference, _3->is_reference
	mov	r0, r5	@, D.39068
	cmp	r3, #0	@ _3->is_reference,
	beq	.L188	@,
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L201	@,
.L188:
	cmp	r4, r7	@ i, D.39070
	bne	.L189	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L201:
	mov	r0, r8	@, pH264Ctx
	mov	r1, r5	@, D.39068
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
	ldr	r4, [r3, #2060]	@ D.39087, pH264Ctx_4(D)->DPB.ltref_frames_in_buffer
	cmp	r4, #0	@ D.39087,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	ip, [r3, #1984]	@ D.39086, pH264Ctx_4(D)->DPB.fs_ltref
	ldr	r3, [ip, #520]	@ _14->long_term_frame_idx, _14->long_term_frame_idx
	cmp	r3, r1	@ _14->long_term_frame_idx, long_term_frame_idx
	addne	r2, r0, #26368	@ ivtmp.501, pH264Ctx,
	movne	r3, #0	@ i,
	addne	r2, r2, #192	@ ivtmp.501, ivtmp.501,
	bne	.L206	@,
	b	.L204	@
.L207:
	ldr	ip, [r2, #4]!	@ D.39086, MEM[base: _19, offset: 0B]
	ldr	lr, [ip, #520]	@ _6->long_term_frame_idx, _6->long_term_frame_idx
	cmp	lr, r1	@ _6->long_term_frame_idx, long_term_frame_idx
	beq	.L204	@,
.L206:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.39087
	bne	.L207	@,
	ldmfd	sp!, {r4, pc}	@
.L204:
	mov	r1, ip	@, D.39086
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
	ldr	r6, [ip, #2060]	@ D.39104, pH264Ctx_4(D)->DPB.ltref_frames_in_buffer
	cmp	r6, #0	@ D.39104,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	add	r4, r0, #26368	@ ivtmp.514, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #188	@ ivtmp.514, ivtmp.514,
	b	.L218	@
.L216:
	cmp	ip, r6	@ i, D.39104
	beq	.L233	@,
.L218:
	ldr	lr, [r4, #4]!	@ D.39103, MEM[base: _27, offset: 0B]
	add	ip, ip, #1	@ i, i,
	ldr	r5, [lr, #520]	@ _6->long_term_frame_idx, _6->long_term_frame_idx
	cmp	r5, r3	@ _6->long_term_frame_idx, long_term_frame_idx
	bne	.L216	@,
	cmp	r2, #1	@ structure,
	ldreqb	r5, [lr, #473]	@ zero_extendqisi2	@ _6->bottom_field.is_long_term, _6->bottom_field.is_long_term
	beq	.L232	@,
	cmp	r2, #2	@ structure,
	bne	.L216	@,
	ldrb	r5, [lr, #437]	@ zero_extendqisi2	@ _6->top_field.is_long_term, _6->top_field.is_long_term
.L232:
	clz	r5, r5	@ tmp145, _6->top_field.is_long_term
	mov	r5, r5, lsr #5	@ tmp145, tmp145,
	cmp	lr, r1	@ D.39103, pFS
	orrne	r5, r5, #1	@,, tmp148, tmp145
	cmp	r5, #0	@ tmp148,
	beq	.L216	@,
	mov	r1, lr	@, D.39103
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L233:
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
	bne	.L235	@,
	add	ip, r0, #24576	@ tmp179, pH264Ctx,
	ldr	r1, [r1, #416]	@ pCurrPic_9(D)->frame_num, pCurrPic_9(D)->frame_num
	ldr	r4, [ip, #2056]	@ D.39135, pH264Ctx_10(D)->DPB.ref_frames_in_buffer
	sub	r1, r1, #1	@ D.39135, pCurrPic_9(D)->frame_num,
	rsb	r2, r2, r1	@ picNumX, difference_of_pic_nums_minus1, D.39135
	cmp	r4, #0	@ D.39135,
	beq	.L264	@,
	add	ip, r0, #26368	@ ivtmp.527, pH264Ctx,
	add	ip, ip, #124	@ ivtmp.527, ivtmp.527,
	b	.L241	@
.L240:
	cmp	r3, r4	@ i, D.39135
	beq	.L265	@,
.L241:
	ldr	r1, [ip, #4]!	@ D.39136, MEM[base: _29, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	lr, [r1, #412]	@ _12->frame.pic_num, _12->frame.pic_num
	cmp	lr, r2	@ _12->frame.pic_num, picNumX
	bne	.L240	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ _12->is_reference, _12->is_reference
	cmp	lr, #3	@ _12->is_reference,
	bne	.L240	@,
	ldr	lr, [r1, #400]	@ *_12, *_12
	bic	lr, lr, #-16777216	@ D.39135, *_12,
	bic	lr, lr, #255	@ D.39135, D.39135,
	cmp	lr, #65536	@ D.39135,
	bne	.L240	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L235:
	add	r3, r0, #24576	@ tmp183, pH264Ctx,
	ldr	r1, [r1, #416]	@ pCurrPic_9(D)->frame_num, pCurrPic_9(D)->frame_num
	ldr	r5, [r3, #2056]	@ D.39135, pH264Ctx_10(D)->DPB.ref_frames_in_buffer
	rsb	r2, r2, r1, lsl #1	@ picNumX, difference_of_pic_nums_minus1, pCurrPic_9(D)->frame_num,
	cmp	r5, #0	@ D.39135,
	beq	.L266	@,
	add	r4, r0, #26368	@ ivtmp.538, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #124	@ ivtmp.538, ivtmp.538,
	b	.L246	@
.L242:
	tst	r3, #2	@ D.39138,
	beq	.L244	@,
	ldr	r3, [r1, #472]	@ *_21, *_21
	bic	r3, r3, #-16777216	@ D.39135, *_21,
	bic	r3, r3, #255	@ D.39135, D.39135,
	cmp	r3, #65536	@ D.39135,
	beq	.L267	@,
.L244:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r5	@ i, D.39135
	beq	.L268	@,
.L246:
	ldr	r1, [r4, #4]!	@ D.39136, MEM[base: _1, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ D.39138, _21->is_reference
	ands	r6, r3, #1	@ D.39138, D.39138,
	beq	.L242	@,
	ldr	lr, [r1, #436]	@ *_21, *_21
	bic	lr, lr, #-16777216	@ D.39135, *_21,
	bic	lr, lr, #255	@ D.39135, D.39135,
	cmp	lr, #65536	@ D.39135,
	bne	.L242	@,
	ldr	lr, [r1, #448]	@ _21->top_field.pic_num, _21->top_field.pic_num
	cmp	lr, r2	@ _21->top_field.pic_num, picNumX
	bne	.L242	@,
	add	r2, r0, ip, lsl #2	@ D.39141, pH264Ctx, i,
	and	r3, r3, #2	@ tmp196, D.39138,
	add	r2, r2, #24576	@ tmp200, D.39141,
	strb	r3, [r1, #2]	@ tmp196, _86->is_reference
	mov	r1, #0	@ tmp201,
	ldr	r3, [r2, #1920]	@ D.39136, MEM[(struct H264_CTX_S *)_107 + 26496B]
	strb	r1, [r3, #438]	@ tmp201, _58->top_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.39136, MEM[(struct H264_CTX_S *)_107 + 26496B]
	ldrb	ip, [r3, #400]	@ zero_extendqisi2	@ D.39138, _60->frame.structure
	cmp	ip, #3	@ D.39138,
	cmpne	ip, r1	@, D.39138,
	streqb	r1, [r3, #402]	@ tmp201, _60->frame.is_short_term
	ldreq	r3, [r2, #1920]	@ D.39136, MEM[(struct H264_CTX_S *)_107 + 26496B]
	streqb	r1, [r3, #401]	@ tmp201, _66->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.39136, MEM[(struct H264_CTX_S *)_107 + 26496B]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ _96->is_reference, _96->is_reference
	cmp	r1, #0	@ _96->is_reference,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	ip, [r3, #548]	@ D.39135, _96->pmv_address_idc
	add	lr, r0, #49152	@ tmp226, pH264Ctx,
	mov	r2, r1	@, _96->is_reference
	add	ip, ip, #12800	@ tmp222, D.39135,
	add	ip, ip, #12	@ tmp222, tmp222,
	str	r1, [r0, ip, asl #2]	@ _96->is_reference, pH264Ctx_10(D)->PmvStoreUsedFlag
	ldr	r0, [lr, #3688]	@, pH264Ctx_10(D)->ChanID
	ldr	r1, [r3, #508]	@, _96->logic_fs_id
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetRef	@
.L267:
	ldr	r3, [r1, #484]	@ _21->bottom_field.pic_num, _21->bottom_field.pic_num
	cmp	r3, r2	@ _21->bottom_field.pic_num, picNumX
	bne	.L244	@,
	add	r3, r0, ip, lsl #2	@ D.39141, pH264Ctx, i,
	strb	r6, [r1, #2]	@ D.39138, _84->is_reference
	add	r3, r3, #24576	@ tmp238, D.39141,
	mov	r2, #0	@ tmp239,
	ldr	r1, [r3, #1920]	@ D.39136, MEM[(struct H264_CTX_S *)_99 + 26496B]
	strb	r2, [r1, #474]	@ tmp239, _31->bottom_field.is_short_term
	ldr	r1, [r3, #1920]	@ D.39136, MEM[(struct H264_CTX_S *)_99 + 26496B]
	ldrb	ip, [r1, #400]	@ zero_extendqisi2	@ D.39138, _33->frame.structure
	cmp	ip, #3	@ D.39138,
	cmpne	ip, r2	@, D.39138,
	streqb	r2, [r1, #402]	@ tmp239, _33->frame.is_short_term
	ldreq	r1, [r3, #1920]	@ D.39136, MEM[(struct H264_CTX_S *)_99 + 26496B]
	streqb	r2, [r1, #401]	@ tmp239, _39->frame.is_long_term
	ldreq	r1, [r3, #1920]	@ D.39136, MEM[(struct H264_CTX_S *)_99 + 26496B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _43->is_reference, _43->is_reference
	cmp	r3, #0	@ _43->is_reference,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	ip, [r1, #548]	@ D.39135, _43->pmv_address_idc
	add	lr, r0, #49152	@ tmp264, pH264Ctx,
	mov	r2, r3	@, _43->is_reference
	add	ip, ip, #12800	@ tmp260, D.39135,
	add	ip, ip, #12	@ tmp260, tmp260,
	str	r3, [r0, ip, asl #2]	@ _43->is_reference, pH264Ctx_10(D)->PmvStoreUsedFlag
	ldr	r0, [lr, #3688]	@, pH264Ctx_10(D)->ChanID
	ldr	r1, [r1, #508]	@, _43->logic_fs_id
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetRef	@
.L268:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L265:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L264:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L266:
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
	beq	.L270	@,
	add	r3, r0, #24576	@ tmp164, pH264Ctx,
	ldr	r5, [r3, #2060]	@ D.39175, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.39175,
	beq	.L299	@,
	add	r4, r0, #26368	@ ivtmp.562, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #188	@ ivtmp.562, ivtmp.562,
	b	.L279	@
.L275:
	tst	r3, #2	@ D.39171,
	beq	.L277	@,
	ldr	r3, [r1, #472]	@ *_21, *_21
	bic	r3, r3, #-16777216	@ D.39175, *_21,
	bic	r3, r3, #255	@ D.39175, D.39175,
	cmp	r3, #256	@ D.39175,
	beq	.L300	@,
.L277:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r5	@ i, D.39175
	beq	.L301	@,
.L279:
	ldr	r1, [r4, #4]!	@ D.39173, MEM[base: _1, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ D.39171, _21->is_reference
	ands	r6, r3, #1	@ D.39171, D.39171,
	beq	.L275	@,
	ldr	lr, [r1, #436]	@ *_21, *_21
	bic	lr, lr, #-16777216	@ D.39175, *_21,
	bic	lr, lr, #255	@ D.39175, D.39175,
	cmp	lr, #256	@ D.39175,
	bne	.L275	@,
	ldr	lr, [r1, #444]	@ _21->top_field.long_term_pic_num, _21->top_field.long_term_pic_num
	cmp	r2, lr	@ long_term_pic_num, _21->top_field.long_term_pic_num
	bne	.L275	@,
	add	r2, r0, ip, lsl #2	@ D.39178, pH264Ctx, i,
	and	r3, r3, #2	@ tmp173, D.39171,
	add	r2, r2, #24576	@ tmp177, D.39178,
	strb	r3, [r1, #2]	@ tmp173, _75->is_reference
	mov	r1, #0	@ tmp178,
	ldr	r3, [r2, #1984]	@ D.39173, MEM[(struct H264_CTX_S *)_91 + 26560B]
	strb	r1, [r3, #437]	@ tmp178, _30->top_field.is_long_term
	ldr	r3, [r2, #1984]	@ D.39173, MEM[(struct H264_CTX_S *)_91 + 26560B]
	ldrb	ip, [r3, #400]	@ zero_extendqisi2	@ D.39171, _31->frame.structure
	cmp	ip, #3	@ D.39171,
	cmpne	ip, r1	@, D.39171,
	streqb	r1, [r3, #402]	@ tmp178, _31->frame.is_short_term
	ldreq	r3, [r2, #1984]	@ D.39173, MEM[(struct H264_CTX_S *)_91 + 26560B]
	streqb	r1, [r3, #401]	@ tmp178, _36->frame.is_long_term
	ldreq	r3, [r2, #1984]	@ D.39173, MEM[(struct H264_CTX_S *)_91 + 26560B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ _81->is_reference, _81->is_reference
	cmp	r2, #0	@ _81->is_reference,
	ldreq	r3, [r3, #548]	@ D.39175, _81->pmv_address_idc
	addeq	r3, r3, #12800	@ tmp199, D.39175,
	addeq	r3, r3, #12	@ tmp199, tmp199,
	streq	r2, [r0, r3, asl #2]	@ _81->is_reference, pH264Ctx_5(D)->PmvStoreUsedFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L270:
	add	r1, r0, #24576	@ tmp166, pH264Ctx,
	ldr	r4, [r1, #2060]	@ D.39175, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r4, #0	@ D.39175,
	beq	.L302	@,
	add	ip, r0, #26368	@ ivtmp.551, pH264Ctx,
	add	ip, ip, #188	@ ivtmp.551, ivtmp.551,
	b	.L281	@
.L280:
	cmp	r3, r4	@ i, D.39175
	beq	.L303	@,
.L281:
	ldr	r1, [ip, #4]!	@ D.39173, MEM[base: _45, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	lr, [r1, #408]	@ _7->frame.long_term_pic_num, _7->frame.long_term_pic_num
	cmp	lr, r2	@ _7->frame.long_term_pic_num, long_term_pic_num
	bne	.L280	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ _7->is_reference, _7->is_reference
	cmp	lr, #3	@ _7->is_reference,
	bne	.L280	@,
	ldr	lr, [r1, #400]	@ *_7, *_7
	bic	lr, lr, #-16777216	@ D.39175, *_7,
	bic	lr, lr, #255	@ D.39175, D.39175,
	cmp	lr, #256	@ D.39175,
	bne	.L280	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L300:
	ldr	r3, [r1, #480]	@ _21->bottom_field.long_term_pic_num, _21->bottom_field.long_term_pic_num
	cmp	r2, r3	@ long_term_pic_num, _21->bottom_field.long_term_pic_num
	bne	.L277	@,
	add	r3, r0, ip, lsl #2	@ D.39178, pH264Ctx, i,
	strb	r6, [r1, #2]	@ D.39171, _71->is_reference
	add	r3, r3, #24576	@ tmp211, D.39178,
	mov	r1, #0	@ tmp212,
	ldr	r2, [r3, #1984]	@ D.39173, MEM[(struct H264_CTX_S *)_83 + 26560B]
	strb	r1, [r2, #473]	@ tmp212, _46->bottom_field.is_long_term
	ldr	r2, [r3, #1984]	@ D.39173, MEM[(struct H264_CTX_S *)_83 + 26560B]
	ldrb	ip, [r2, #400]	@ zero_extendqisi2	@ D.39171, _47->frame.structure
	cmp	ip, #3	@ D.39171,
	cmpne	ip, r1	@, D.39171,
	streqb	r1, [r2, #402]	@ tmp212, _47->frame.is_short_term
	ldreq	r2, [r3, #1984]	@ D.39173, MEM[(struct H264_CTX_S *)_83 + 26560B]
	streqb	r1, [r2, #401]	@ tmp212, _52->frame.is_long_term
	ldreq	r2, [r3, #1984]	@ D.39173, MEM[(struct H264_CTX_S *)_83 + 26560B]
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ _79->is_reference, _79->is_reference
	cmp	r1, #0	@ _79->is_reference,
	ldreq	r3, [r2, #548]	@ D.39175, _79->pmv_address_idc
	addeq	r3, r3, #12800	@ tmp233, D.39175,
	addeq	r3, r3, #12	@ tmp233, tmp233,
	streq	r1, [r0, r3, asl #2]	@ _79->is_reference, pH264Ctx_5(D)->PmvStoreUsedFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L303:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L301:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L302:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L299:
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
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@ D.39203, pCurrPic_5(D)->structure
	add	r3, r0, #24576	@ tmp195, pH264Ctx,
	cmp	r5, #0	@ D.39203,
	beq	.L305	@,
	ldr	r7, [r3, #2056]	@ D.39206, pH264Ctx_11(D)->DPB.ref_frames_in_buffer
	cmp	r7, #0	@ D.39206,
	beq	.L335	@,
	add	r6, r0, #26368	@ ivtmp.586, pH264Ctx,
	mov	ip, #0	@ i,
	add	r6, r6, #124	@ ivtmp.586, ivtmp.586,
	b	.L319	@
.L311:
	tst	r4, #2	@ D.39203,
	beq	.L314	@,
	ldr	lr, [r3, #472]	@ *_13, *_13
	bic	lr, lr, #-16777216	@ D.39206, *_13,
	bic	lr, lr, #255	@ D.39206, D.39206,
	cmp	lr, #65536	@ D.39206,
	beq	.L336	@,
.L314:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r7	@ i, D.39206
	beq	.L337	@,
.L319:
	ldr	r3, [r6, #4]!	@ D.39205, MEM[base: _119, offset: 0B]
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ D.39203, _13->is_reference
	tst	r4, #1	@ D.39203,
	beq	.L311	@,
	ldr	lr, [r3, #436]	@ *_13, *_13
	bic	lr, lr, #-16777216	@ D.39206, *_13,
	bic	lr, lr, #255	@ D.39206, D.39206,
	cmp	lr, #65536	@ D.39206,
	bne	.L311	@,
	ldr	lr, [r3, #448]	@ _13->top_field.pic_num, _13->top_field.pic_num
	cmp	lr, r2	@ _13->top_field.pic_num, picNumX
	bne	.L311	@,
	ldrb	lr, [r3, #473]	@ zero_extendqisi2	@ _13->bottom_field.is_long_term, _13->bottom_field.is_long_term
	cmp	lr, #1	@ _13->bottom_field.is_long_term,
	bne	.L315	@,
	ldr	lr, [r3, #520]	@ _13->long_term_frame_idx, _13->long_term_frame_idx
	cmp	lr, r1	@ _13->long_term_frame_idx, long_term_frame_idx
	bne	.L314	@,
.L315:
	str	r1, [r3, #520]	@ long_term_frame_idx, _109->long_term_frame_idx
	sub	r3, r5, #1	@ D.39204, D.39203,
	add	r2, r0, ip, lsl #2	@ D.39211, pH264Ctx, i,
	clz	r3, r3	@ D.39204, D.39204
	add	r2, r2, #24576	@ tmp240, D.39211,
	mov	ip, #1	@ tmp247,
	mov	r3, r3, lsr #5	@ D.39204, D.39204,
	mov	r0, #0	@ tmp251,
	add	r1, r3, r1, lsl #1	@ D.39206, D.39204, long_term_frame_idx,
	ldr	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_131 + 26496B]
	str	r1, [r3, #444]	@ D.39206, _56->top_field.long_term_pic_num
	ldr	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_131 + 26496B]
	strb	ip, [r3, #437]	@ tmp247, _61->top_field.is_long_term
	ldr	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_131 + 26496B]
	strb	r0, [r3, #438]	@ tmp251, _63->top_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_131 + 26496B]
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.39203, _65->frame.structure
	cmp	r1, #3	@ D.39203,
	cmpne	r1, r0	@, D.39203,
	bne	.L338	@,
	ldrb	r1, [r3, #473]	@ zero_extendqisi2	@ _65->bottom_field.is_long_term, _65->bottom_field.is_long_term
	ldrb	r0, [r3, #437]	@ zero_extendqisi2	@ D.39203, _65->top_field.is_long_term
	cmp	r1, r0	@ _65->bottom_field.is_long_term, D.39203
	streqb	r1, [r3, #401]	@ _65->bottom_field.is_long_term, _65->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_131 + 26496B]
	ldreqb	r2, [r3, #438]	@ zero_extendqisi2	@ _73->top_field.is_short_term, _73->top_field.is_short_term
	streqb	r2, [r3, #402]	@ _73->top_field.is_short_term,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L305:
	ldr	r6, [r3, #2056]	@ D.39206, pH264Ctx_11(D)->DPB.ref_frames_in_buffer
	cmp	r6, #0	@ D.39206,
	ldmeqfd	sp!, {r4, r5, r6, r7, pc}	@
	add	lr, r0, #26368	@ ivtmp.575, pH264Ctx,
	mov	r3, r5	@ i, D.39203
	add	lr, lr, #124	@ ivtmp.575, ivtmp.575,
	b	.L310	@
.L309:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r6	@ i, D.39206
	beq	.L339	@,
.L310:
	ldr	ip, [lr, #4]!	@ D.39205, MEM[base: _114, offset: 0B]
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ _77->is_reference, _77->is_reference
	cmp	r4, #3	@ _77->is_reference,
	bne	.L309	@,
	ldr	r4, [ip, #400]	@ *_77, *_77
	bic	r4, r4, #-16777216	@ D.39206, *_77,
	bic	r4, r4, #255	@ D.39206, D.39206,
	cmp	r4, #65536	@ D.39206,
	bne	.L309	@,
	ldr	r4, [ip, #412]	@ _77->frame.pic_num, _77->frame.pic_num
	cmp	r4, r2	@ _77->frame.pic_num, picNumX
	bne	.L309	@,
	add	r3, r0, r3, lsl #2	@ D.39211, pH264Ctx, i,
	str	r1, [ip, #520]	@ long_term_frame_idx, _12->long_term_frame_idx
	add	r3, r3, #24576	@ tmp204, D.39211,
	mov	r0, #1	@ tmp207,
	mov	r2, #0	@ tmp219,
	ldr	ip, [r3, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_141 + 26496B]
	str	r1, [ip, #408]	@ long_term_frame_idx, _84->frame.long_term_pic_num
	ldr	r1, [r3, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #401]	@ tmp207, _87->frame.is_long_term
	ldr	r1, [r3, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #437]	@ tmp207, _89->top_field.is_long_term
	ldr	r1, [r3, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #473]	@ tmp207, _91->bottom_field.is_long_term
	ldr	r1, [r3, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r1, #402]	@ tmp219, _93->frame.is_short_term
	ldr	r1, [r3, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r1, #438]	@ tmp219, _95->top_field.is_short_term
	ldr	r3, [r3, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r3, #474]	@ tmp219, _97->bottom_field.is_short_term
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L336:
	ldr	lr, [r3, #484]	@ _13->bottom_field.pic_num, _13->bottom_field.pic_num
	cmp	lr, r2	@ _13->bottom_field.pic_num, picNumX
	bne	.L314	@,
	ldrb	lr, [r3, #437]	@ zero_extendqisi2	@ _13->top_field.is_long_term, _13->top_field.is_long_term
	cmp	lr, #1	@ _13->top_field.is_long_term,
	bne	.L318	@,
	ldr	lr, [r3, #520]	@ _13->long_term_frame_idx, _13->long_term_frame_idx
	cmp	lr, r1	@ _13->long_term_frame_idx, long_term_frame_idx
	bne	.L314	@,
.L318:
	str	r1, [r3, #520]	@ long_term_frame_idx, _110->long_term_frame_idx
	sub	r3, r5, #2	@ D.39204, D.39203,
	add	r2, r0, ip, lsl #2	@ D.39211, pH264Ctx, i,
	clz	r3, r3	@ D.39204, D.39204
	add	r2, r2, #24576	@ tmp279, D.39211,
	mov	ip, #1	@ tmp286,
	mov	r3, r3, lsr #5	@ D.39204, D.39204,
	mov	r0, #0	@ tmp290,
	add	r1, r3, r1, lsl #1	@ D.39206, D.39204, long_term_frame_idx,
	ldr	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_121 + 26496B]
	str	r1, [r3, #480]	@ D.39206, _25->bottom_field.long_term_pic_num
	ldr	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_121 + 26496B]
	strb	ip, [r3, #473]	@ tmp286, _30->bottom_field.is_long_term
	ldr	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_121 + 26496B]
	strb	r0, [r3, #474]	@ tmp290, _32->bottom_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_121 + 26496B]
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.39203, _34->frame.structure
	cmp	r1, #3	@ D.39203,
	cmpne	r1, r0	@, D.39203,
	bne	.L340	@,
	ldrb	r1, [r3, #473]	@ zero_extendqisi2	@ _34->bottom_field.is_long_term, _34->bottom_field.is_long_term
	ldrb	r0, [r3, #437]	@ zero_extendqisi2	@ D.39203, _34->top_field.is_long_term
	cmp	r1, r0	@ _34->bottom_field.is_long_term, D.39203
	streqb	r1, [r3, #401]	@ _34->bottom_field.is_long_term, _34->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.39205, MEM[(struct H264_CTX_S *)_121 + 26496B]
	ldreqb	r2, [r3, #474]	@ zero_extendqisi2	@ _45->bottom_field.is_short_term, _45->bottom_field.is_short_term
	streqb	r2, [r3, #402]	@ _45->bottom_field.is_short_term,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L337:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L339:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L338:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L340:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L335:
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
	bne	.L342	@,
	ldr	r6, [r7, #416]	@ pCurrPic_4(D)->frame_num, pCurrPic_4(D)->frame_num
	mov	r1, r3	@, long_term_frame_idx
	sub	r6, r6, #1	@ D.39228, pCurrPic_4(D)->frame_num,
	rsb	r6, r2, r6	@ picNumX, difference_of_pic_nums_minus1, D.39228
	bl	UnMarkLTFrmByFrmIdx	@
.L343:
	mov	r3, r7	@, pCurrPic
	mov	r2, r6	@, picNumX
	mov	r1, r9	@, long_term_frame_idx
	mov	r0, r8	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	MarkPicLTRef	@
.L342:
	add	r3, r0, #24576	@ tmp143, pH264Ctx,
	ldr	r6, [r7, #416]	@ pCurrPic_4(D)->frame_num, pCurrPic_4(D)->frame_num
	ldr	r1, [r3, #2056]	@ D.39228, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	rsb	r6, r2, r6, lsl #1	@ picNumX, difference_of_pic_nums_minus1, pCurrPic_4(D)->frame_num,
	cmp	r1, #0	@ D.39228,
	beq	.L343	@,
	add	r2, r0, #26368	@ ivtmp.599, pH264Ctx,
	mov	lr, #0	@ i,
	add	r2, r2, #124	@ ivtmp.599, ivtmp.599,
	b	.L346	@
.L344:
	tst	r5, #2	@ D.39227,
	beq	.L345	@,
	ldr	r3, [ip, #472]	@ *_10, *_10
	bic	r3, r3, #-16777216	@ D.39228, *_10,
	bic	r3, r3, #255	@ D.39228, D.39228,
	cmp	r3, #65536	@ D.39228,
	beq	.L358	@,
.L345:
	cmp	lr, r1	@ i, D.39228
	beq	.L343	@,
.L346:
	ldr	ip, [r2, #4]!	@ D.39226, MEM[base: _9, offset: 0B]
	add	lr, lr, #1	@ i, i,
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ D.39227, _10->is_reference
	tst	r5, #1	@ D.39227,
	beq	.L344	@,
	ldr	r4, [ip, #436]	@ *_10, *_10
	bic	r4, r4, #-16777216	@ D.39228, *_10,
	bic	r4, r4, #255	@ D.39228, D.39228,
	cmp	r4, #65536	@ D.39228,
	bne	.L344	@,
	ldr	r3, [ip, #448]	@ _10->top_field.pic_num, _10->top_field.pic_num
	cmp	r3, r6	@ _10->top_field.pic_num, picNumX
	bne	.L344	@,
	mov	r1, ip	@, D.39226
	mov	r3, r9	@, long_term_frame_idx
	mov	r2, #1	@,
	mov	r0, r8	@, pH264Ctx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L343	@
.L358:
	ldr	r3, [ip, #484]	@ _10->bottom_field.pic_num, _10->bottom_field.pic_num
	cmp	r3, r6	@ _10->bottom_field.pic_num, picNumX
	bne	.L345	@,
	mov	r1, ip	@, D.39226
	mov	r3, r9	@, long_term_frame_idx
	mov	r2, #2	@,
	mov	r0, r8	@, pH264Ctx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L343	@
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
	add	r5, r0, #26368	@ ivtmp.615, pH264Ctx,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r3, r1	@ D.39251, max_long_term_frame_idx_plus1
	add	r5, r5, #188	@ ivtmp.615, ivtmp.615,
	mov	r4, #0	@ i,
	b	.L363	@
.L361:
	ldr	r3, [r6, #2060]	@ pH264Ctx_5(D)->DPB.ltref_frames_in_buffer, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r3, r4	@ pH264Ctx_5(D)->DPB.ltref_frames_in_buffer, i
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r6, #2064]	@ D.39251, pH264Ctx_5(D)->DPB.max_long_term_pic_idx
.L363:
	ldr	r1, [r5, #4]!	@ D.39250, MEM[base: _21, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r2, [r1, #520]	@ _9->long_term_frame_idx, _9->long_term_frame_idx
	cmp	r2, r3	@ _9->long_term_frame_idx, D.39251
	bcc	.L361	@,
	mov	r0, r7	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	b	.L361	@
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
	add	r5, r0, #26368	@ ivtmp.630, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r5, r5, #124	@ ivtmp.630, ivtmp.630,
	mov	r4, #0	@ i,
.L367:
	ldr	r1, [r5, #4]!	@, MEM[base: _15, offset: 0B]
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r7, #2056]	@ pH264Ctx_4(D)->DPB.ref_frames_in_buffer, pH264Ctx_4(D)->DPB.ref_frames_in_buffer
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ pH264Ctx_4(D)->DPB.ref_frames_in_buffer, i
	bhi	.L367	@,
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
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.39273, pCurrPic_3(D)->structure
	mov	r4, r1	@ pCurrPic, pCurrPic
	cmp	r2, #0	@ D.39273,
	beq	.L375	@,
	mov	r3, r5	@, long_term_frame_idx
	ldr	r1, [r1, #408]	@, pCurrPic_3(D)->frame_store
	bl	UnMarkLTFldByFrmIdx	@
.L373:
	mov	r2, #1	@ tmp117,
	mov	r3, #0	@ tmp119,
	str	r5, [r4, #420]	@ long_term_frame_idx, pCurrPic_3(D)->long_term_frame_idx
	strb	r2, [r4, #4]	@ tmp117, pCurrPic_3(D)->is_long_term
	strb	r3, [r4, #5]	@ tmp119, pCurrPic_3(D)->is_short_term
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L375:
	mov	r1, r5	@, long_term_frame_idx
	bl	UnMarkLTFrmByFrmIdx	@
	b	.L373	@
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
	add	r5, r0, r1, lsl #2	@ D.39299, pH264Ctx, pos,
	add	r5, r5, #24576	@ tmp193, D.39299,
	mov	r4, r1	@ pos, pos
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r5, #1856]	@ D.39300, MEM[(struct H264_CTX_S *)_54 + 26432B]
	cmp	r2, #0	@ D.39300,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r2, #552]	@ D.39301, _10->apc_idc
	add	r7, r0, #24576	@ tmp194, pH264Ctx,
	mov	r1, #0	@ tmp145,
	add	r8, r0, #49152	@ tmp195, pH264Ctx,
	add	r3, r3, #6656	@ tmp142, D.39301,
	add	r3, r3, #4	@ tmp142, tmp142,
	add	r3, r0, r3, lsl #2	@ tmp143, pH264Ctx, tmp142,
	str	r1, [r3, #4]	@ tmp145, pH264Ctx_8(D)->APC.is_used
	ldr	r3, [r7, #2328]	@ D.39298, pH264Ctx_8(D)->APC.used_size
	cmp	r3, r1	@ D.39298,
	subne	r3, r3, #1	@ D.39298, D.39298,
	str	r3, [r7, #2328]	@ D.39298, pH264Ctx_8(D)->APC.used_size
	ldr	r1, [r2, #508]	@, _10->logic_fs_id
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogic
	beq	.L379	@,
	ldrsb	r3, [r0, #1]	@ pstLogic_19->s32DispState, pstLogic_19->s32DispState
	cmp	r3, #3	@ pstLogic_19->s32DispState,
	beq	.L380	@,
	ldr	r3, [r5, #1856]	@ MEM[(struct H264_CTX_S *)_54 + 26432B], MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r2, #0	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	ldr	r1, [r3, #508]	@, _22->logic_fs_id
	bl	FSP_SetDisplay	@
.L380:
	ldr	r3, [r5, #1856]	@ MEM[(struct H264_CTX_S *)_54 + 26432B], MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r2, #0	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	ldr	r1, [r3, #508]	@, _26->logic_fs_id
	bl	FSP_SetRef	@
.L379:
	ldr	r2, [r5, #1856]	@ D.39300, MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r3, #0	@ tmp171,
	strb	r3, [r2, #1]	@ tmp171, _29->is_used
	ldr	r2, [r5, #1856]	@ D.39300, MEM[(struct H264_CTX_S *)_54 + 26432B]
	strb	r3, [r2, #4]	@ tmp171, _31->is_in_dpb
	ldr	r2, [r5, #1856]	@ D.39300, MEM[(struct H264_CTX_S *)_54 + 26432B]
	strb	r3, [r2, #2]	@ tmp171, _33->is_reference
	ldr	r1, [r7, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	sub	r1, r1, #1	@ D.39301, pH264Ctx_8(D)->DPB.used_size,
	cmp	r4, r1	@ pos, D.39301
	addcc	r3, r4, #6592	@ D.39297, pos,
	addcc	r3, r3, #16	@ D.39297, D.39297,
	addcc	r3, r6, r3, lsl #2	@ ivtmp.646, pH264Ctx, D.39297,
	bcs	.L383	@,
.L382:
	add	r4, r4, #1	@ pos, pos,
	ldr	r2, [r3, #4]!	@ MEM[base: _45, offset: 0B], MEM[base: _45, offset: 0B]
	cmp	r4, r1	@ pos, D.39301
	str	r2, [r3, #-4]	@ MEM[base: _45, offset: 0B], MEM[base: _45, offset: 4294967292B]
	bne	.L382	@,
.L383:
	add	r3, r1, #6592	@ tmp185, D.39301,
	mov	r2, #0	@ tmp186,
	add	r3, r3, #16	@ tmp185, tmp185,
	str	r2, [r6, r3, asl #2]	@ tmp186, pH264Ctx_8(D)->DPB.fs
	str	r1, [r7, #2052]	@ D.39301, pH264Ctx_8(D)->DPB.used_size
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
	cmp	r0, #0	@ pH264Ctx
	beq	.L408	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r0, #24576	@ tmp142, pH264Ctx,
	ldr	r6, [r3, #2052]	@ k, pH264Ctx_10(D)->DPB.used_size
	cmp	r6, #0	@ k,
	beq	.L407	@,
	mov	r10, #0	@ j,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r7, r0, #49152	@ tmp186, pH264Ctx,
	mov	fp, r10	@ i, j
	mov	r9, r10	@ tmp188, j
	mvn	r8, #0	@ tmp187,
	b	.L406	@
.L419:
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ _39->is_in_dpb, _39->is_in_dpb
	cmp	r2, #0	@ _39->is_in_dpb,
	bne	.L404	@,
	ldr	r1, [r3, #528]	@ _39->eFoState, _39->eFoState
	cmp	r1, #1	@ _39->eFoState,
	beq	.L404	@,
	strb	r2, [r3, #1]	@ _39->is_in_dpb, _39->is_used
	mov	r1, r10	@, j
	mov	r0, r5	@, pH264Ctx
	add	fp, fp, #1	@ i, i,
	bl	RemoveFrameStoreOutDPB	@
	cmp	fp, r6	@ i, k
	beq	.L407	@,
.L406:
	add	r4, r5, r10, lsl #2	@ D.39309, pH264Ctx, j,
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	add	r4, r4, #24576	@ tmp185, D.39309,
	ldr	r3, [r4, #1856]	@ MEM[(struct H264_CTX_S *)_3 + 26432B], MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldr	r1, [r3, #508]	@, _14->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L401	@,
	ldrsh	r3, [r0]	@ *pstLogicFs_17, *pstLogicFs_17
	cmp	r3, #0	@ *pstLogicFs_17,
	bne	.L402	@,
	ldr	r3, [r4, #1856]	@ D.39313, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ _19->is_reference, _19->is_reference
	cmp	r2, #0	@ _19->is_reference,
	bne	.L403	@,
	ldrsb	r1, [r0]	@ pstLogicFs_17->s32IsRef, pstLogicFs_17->s32IsRef
	cmp	r1, #0	@ pstLogicFs_17->s32IsRef,
	bne	.L418	@,
.L403:
	str	r8, [r3, #508]	@ tmp187, _53->logic_fs_id
	ldr	r3, [r4, #1856]	@ D.39313, MEM[(struct H264_CTX_S *)_3 + 26432B]
	strb	r9, [r3, #2]	@ tmp188, _27->is_reference
.L401:
	ldr	r2, [r4, #1856]	@ D.39313, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldr	r3, [r2, #528]	@ _34->eFoState,
	sub	r3, r3, #1	@ tmp175, _34->eFoState,
	clz	r3, r3	@ tmp175, tmp175
	mov	r3, r3, lsr #5	@ tmp175, tmp175,
	strb	r3, [r2, #4]	@ tmp175,
.L402:
	ldr	r3, [r4, #1856]	@ D.39313, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_39].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_39].is_reference
	cmp	r2, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_39].is_reference,
	beq	.L419	@,
.L404:
	add	fp, fp, #1	@ i, i,
	add	r10, r10, #1	@ j, j,
	cmp	fp, r6	@ i, k
	bne	.L406	@,
.L407:
	mov	r0, #0	@ D.39310,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L418:
	ldr	r1, [r3, #508]	@, _19->logic_fs_id
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, #1856]	@ D.39313, MEM[(struct H264_CTX_S *)_3 + 26432B]
	b	.L403	@
.L408:
	mvn	r0, #0	@ D.39310,
	bx	lr	@
	.fnend
	.size	RemoveUnUsedFrameStore, .-RemoveUnUsedFrameStore
	.align	2
	.global	CheckFrameStore
	.type	CheckFrameStore, %function
CheckFrameStore:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #49152	@ tmp189, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r2, [r3, #2180]	@ pH264Ctx_6(D)->IDRFound, pH264Ctx_6(D)->IDRFound
	cmp	r2, #0	@ pH264Ctx_6(D)->IDRFound,
	bne	.L421	@,
	ldr	r2, [r1, #528]	@ pFrameStore_8(D)->eFoState, pFrameStore_8(D)->eFoState
	cmp	r2, #1	@ pFrameStore_8(D)->eFoState,
	beq	.L422	@,
	ldr	r2, [r3, #3616]	@ pH264Ctx_6(D)->OldDecMode, pH264Ctx_6(D)->OldDecMode
	cmp	r2, #0	@ pH264Ctx_6(D)->OldDecMode,
	beq	.L443	@,
.L422:
	mov	r2, #1	@ tmp152,
	str	r2, [r3, #2180]	@ tmp152, pH264Ctx_6(D)->IDRFound
.L421:
	mov	r4, r1	@ pFrameStore, pFrameStore
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r1, #508]	@, pFrameStore_8(D)->logic_fs_id
	ldr	r0, [r3, #3688]	@, pH264Ctx_6(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L424	@,
	ldrsb	r3, [r0, #1]	@ D.39326, pstLogicFs_17->s32DispState
	cmp	r3, #3	@ D.39326,
	cmpne	r3, #0	@, D.39326,
	beq	.L424	@,
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ D.39328, pFrameStore_8(D)->is_used
	cmp	r2, #0	@ D.39328,
	beq	.L426	@,
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pFrameStore_8(D)->non_existing, pFrameStore_8(D)->non_existing
	cmp	r3, #1	@ pFrameStore_8(D)->non_existing,
	beq	.L426	@,
	ldr	r3, [r4]	@ *pFrameStore_8(D), *pFrameStore_8(D)
	mov	r1, #768	@ tmp172,
	movt	r1, 768	@ tmp172,
	bic	r3, r3, #16711680	@ D.39322, *pFrameStore_8(D),
	bic	r3, r3, #255	@ D.39322, D.39322,
	cmp	r3, r1	@ D.39322, tmp172
	beq	.L426	@,
	cmp	r2, #1	@ D.39328,
	beq	.L444	@,
	cmp	r2, #2	@ D.39328,
	beq	.L445	@,
.L428:
	ldr	r2, [r5]	@ pH264Ctx_6(D)->pstExtraData, pH264Ctx_6(D)->pstExtraData
	ldr	r3, [r0, #188]	@ pstLogicFs_17->stDispImg.error_level, pstLogicFs_17->stDispImg.error_level
	ldr	r0, [r2, #4]	@ _32->s32OutErrThr, _32->s32OutErrThr
	cmp	r3, r0	@ pstLogicFs_17->stDispImg.error_level, _32->s32OutErrThr
	movls	r0, #0	@ D.39321,
	mvnhi	r0, #0	@ D.39321,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L443:
	ldr	r2, [r0]	@ pH264Ctx_6(D)->pstExtraData, pH264Ctx_6(D)->pstExtraData
	ldr	r2, [r2, #12]	@ _11->s32DecOrderOutput, _11->s32DecOrderOutput
	cmp	r2, #0	@ _11->s32DecOrderOutput,
	bne	.L422	@,
.L426:
	mvn	r0, #0	@ D.39321,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L424:
	ldr	r3, [r4, #528]	@ pFrameStore_8(D)->eFoState, pFrameStore_8(D)->eFoState
	cmp	r3, #1	@ pFrameStore_8(D)->eFoState,
	beq	.L446	@,
	mvn	r0, #2	@ D.39321,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L444:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pFrameStore_8(D)->mode_skip_flag, pFrameStore_8(D)->mode_skip_flag
	tst	r3, #1	@ pFrameStore_8(D)->mode_skip_flag,
	beq	.L428	@,
	b	.L426	@
.L446:
	mov	r3, #2	@ tmp167,
	mvn	r0, #2	@ D.39321,
	str	r3, [r4, #528]	@ tmp167, pFrameStore_8(D)->eFoState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L445:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pFrameStore_8(D)->mode_skip_flag, pFrameStore_8(D)->mode_skip_flag
	tst	r3, #2	@ pFrameStore_8(D)->mode_skip_flag,
	beq	.L428	@,
	b	.L426	@
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
	mvn	r4, #0	@ tmp135,
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, r5	@ pFrameStore_10(D)->fs_image.PTS,
	cmpeq	r2, r4	@ pFrameStore_10(D)->fs_image.PTS, tmp135
	beq	.L447	@,
	add	r10, r0, #24576	@ tmp159, pH264Ctx,
	ldr	r3, [r10, #2052]	@ pH264Ctx_13(D)->DPB.used_size, pH264Ctx_13(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_13(D)->DPB.used_size,
	beq	.L447	@,
	add	fp, r0, #26368	@ ivtmp.672, pH264Ctx,
	add	r5, r0, #49152	@ tmp160, pH264Ctx,
	add	fp, fp, #60	@ ivtmp.672, ivtmp.672,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	mvn	r6, #1	@ MinPts,
	mvn	r7, #0	@ MinPts,
	mvn	r9, #0	@ MinPtsPos,
	mov	r4, #0	@ MinPtsPos,
	str	r1, [sp, #4]	@ pFrameStore, %sfp
.L452:
	ldr	r3, [fp, #4]!	@ D.39344, MEM[base: _38, offset: 0B]
	cmp	r3, #0	@ D.39344,
	beq	.L451	@,
	ldr	r1, [r3, #508]	@, _15->logic_fs_id
	ldr	r0, [r5, #3688]	@, pH264Ctx_13(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L451	@,
	ldrsb	r3, [r0, #1]	@ D.39346, pstLogicFs_20->s32DispState
	cmp	r3, #3	@ D.39346,
	cmpne	r3, #0	@, D.39346,
	beq	.L451	@,
	ldr	r3, [fp]	@ MEM[base: _38, offset: 0B], MEM[base: _38, offset: 0B]
	ldrd	r0, [r3, #16]	@ MinPts, MEM[base: _38, offset: 0B],
	cmp	r1, r7	@ MinPts, MinPts
	cmpeq	r0, r6	@ MinPts, MinPts
	movcc	r6, r0	@ MinPts, MinPts
	movcc	r7, r1	@ MinPts, MinPts
	movcc	r9, r4	@ MinPtsPos, MinPtsPos
.L451:
	ldr	r3, [r10, #2052]	@ pH264Ctx_13(D)->DPB.used_size, pH264Ctx_13(D)->DPB.used_size
	add	r4, r4, #1	@ MinPtsPos, MinPtsPos,
	cmp	r4, r3	@ MinPtsPos, pH264Ctx_13(D)->DPB.used_size
	bcc	.L452	@,
	cmn	r9, #1	@ MinPtsPos,
	beq	.L447	@,
	ldr	r0, [sp, #4]	@ pFrameStore, %sfp
	ldrd	r2, [r0, #16]	@ D.39342, pFrameStore,
	cmp	r3, r7	@ D.39342, MinPts
	cmpeq	r2, r6	@ D.39342, MinPts
	bls	.L447	@,
	add	r9, r9, #6592	@ tmp158, MinPtsPos,
	add	r9, r9, #16	@ tmp158, tmp158,
	ldr	r1, [r8, r9, asl #2]	@ D.39344, pH264Ctx_13(D)->DPB.fs
	strd	r2, [r1, #16]	@ D.39342, D.39344,
	strd	r6, [r0, #16]	@ MinPts, pFrameStore,
.L447:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
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
	add	r2, r0, #20480	@ tmp198, pH264Ctx,
	add	lr, r0, #12288	@ tmp195, pH264Ctx,
	mov	r8, #2208	@ tmp203,
	ldr	r2, [r2, #212]	@ pH264Ctx_21(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_21(D)->CurrSlice.pic_parameter_set_id
	mov	r4, r1	@ pFrameStore, pFrameStore
	ldr	r3, [lr, #1296]	@ pH264Ctx_21(D)->PPS, pH264Ctx_21(D)->PPS
	add	r5, r0, #49152	@ tmp285, pH264Ctx,
	ldr	ip, [r1, #148]	@ D.39358, pFrameStore_30(D)->fs_image.format
	mov	r7, #4000	@ tmp207,
	ldr	r6, [lr, #1292]	@ pH264Ctx_21(D)->SPS, pH264Ctx_21(D)->SPS
	mla	r1, r8, r2, r3	@ tmp204, tmp203, pH264Ctx_21(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_21(D)->PPS
	bic	r2, ip, #768	@ D.39358, D.39358,
	bic	r2, r2, #3	@ D.39358, D.39358,
	ldrb	lr, [r4, #1]	@ zero_extendqisi2	@ pFrameStore_30(D)->is_used, pFrameStore_30(D)->is_used
	ldr	r3, [r1, #28]	@ pps_25->seq_parameter_set_id, pps_25->seq_parameter_set_id
	str	r2, [r4, #148]	@ D.39358, pFrameStore_30(D)->fs_image.format
	ldr	r1, [r5, #2188]	@ pH264Ctx_21(D)->frame_rate, pH264Ctx_21(D)->frame_rate
	mla	r3, r7, r3, r6	@ sps, tmp207, pps_25->seq_parameter_set_id, pH264Ctx_21(D)->SPS
	mov	r1, r1, asl #10	@ D.39358, pH264Ctx_21(D)->frame_rate,
	str	r1, [r4, #176]	@ D.39358, pFrameStore_30(D)->fs_image.frame_rate
	cmp	lr, #3	@ pFrameStore_30(D)->is_used,
	ldrls	pc, [pc, lr, asl #2]	@ pFrameStore_30(D)->is_used
	b	.L503	@
.L470:
	.word	.L469
	.word	.L471
	.word	.L472
	.word	.L469
.L472:
	ldr	r1, [r4, #540]	@ pFrameStore_30(D)->pic_type, pFrameStore_30(D)->pic_type
	add	r6, r0, #24576	@ tmp284, pH264Ctx,
	ldr	ip, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	and	r1, r1, #3	@ D.39358, pFrameStore_30(D)->pic_type,
	orr	r2, r2, r1	@ D.39358, D.39358, D.39358
	orr	r2, r2, #2816	@ D.39358, D.39358,
	str	ip, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
	str	r2, [r4, #148]	@ D.39358, pFrameStore_30(D)->fs_image.format
.L468:
	ldrb	r2, [r3, #18]	@ zero_extendqisi2	@ D.39361, sps_29->frame_mbs_only_flag
	str	r2, [r4, #348]	@ D.39361, pFrameStore_30(D)->fs_image.optm_inf.IsProgressiveSeq
	str	r2, [r4, #352]	@ D.39361, pFrameStore_30(D)->fs_image.optm_inf.IsProgressiveFrm
	ldrb	r2, [r3, #22]	@ zero_extendqisi2	@ sps_29->vui_parameters_present_flag, sps_29->vui_parameters_present_flag
	cmp	r2, #0	@ sps_29->vui_parameters_present_flag,
	ldrne	r2, [r3, #68]	@ D.39355, sps_29->vui_seq_parameters.matrix_coefficients
	mov	r3, #1	@ tmp252,
	str	r3, [r4, #356]	@ tmp252, pFrameStore_30(D)->fs_image.optm_inf.RealFrmRate
	str	r2, [r4, #360]	@ D.39355, pFrameStore_30(D)->fs_image.optm_inf.MatrixCoef
	ldr	r3, [r0]	@ pH264Ctx_21(D)->pstExtraData, pH264Ctx_21(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _115->s32DecOrderOutput, _115->s32DecOrderOutput
	cmp	r3, #0	@ _115->s32DecOrderOutput,
	ble	.L488	@,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ pFrameStore_30(D)->frame.structure, pFrameStore_30(D)->frame.structure
	cmp	r3, #0	@ pFrameStore_30(D)->frame.structure,
	bne	.L488	@,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pFrameStore_30(D)->is_used, pFrameStore_30(D)->is_used
	cmp	r3, #3	@ pFrameStore_30(D)->is_used,
	ldreq	r3, [r4, #148]	@ pFrameStore_30(D)->fs_image.format, pFrameStore_30(D)->fs_image.format
	biceq	r3, r3, #768	@ D.39358, pFrameStore_30(D)->fs_image.format,
	streq	r3, [r4, #148]	@ D.39358, pFrameStore_30(D)->fs_image.format
.L488:
	mov	r1, r4	@, pFrameStore
	bl	ExchangePts	@
	ldrb	r3, [r6, #1808]	@ zero_extendqisi2	@ pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok, pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok
	cmp	r3, #0	@ pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok,
	beq	.L489	@,
	ldr	r3, [r6, #1824]	@ D.39361, pH264Ctx_21(D)->FramePackSEI.frame_packing_arrangement_type
	cmp	r3, #3	@ D.39361,
	moveq	r3, #1	@ tmp265,
	streq	r3, [r4, #288]	@ tmp265, pFrameStore_30(D)->fs_image.eFramePackingType
	beq	.L489	@,
	cmp	r3, #4	@ D.39361,
	moveq	r3, #2	@ tmp266,
	streq	r3, [r4, #288]	@ tmp266, pFrameStore_30(D)->fs_image.eFramePackingType
	beq	.L489	@,
	cmp	r3, #5	@ D.39361,
	moveq	r3, #3	@ tmp267,
	movne	r3, #0	@ tmp268,
	str	r3, [r4, #288]	@ tmp268, pFrameStore_30(D)->fs_image.eFramePackingType
.L489:
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	ldr	r1, [r4, #508]	@, pFrameStore_30(D)->logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pstLogicFsImage,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r2, #392	@,
	add	r1, r4, #8	@, pFrameStore,
	bl	memcpy	@
	mov	r3, #0	@ tmp278,
	str	r3, [r5, #300]	@ tmp278, pstLogicFsImage_132->ImageDnr.video_standard
	mov	r2, #1	@ tmp280,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ D.39356, pFrameStore_30(D)->frame.structure
	strb	r2, [r5, #295]	@ tmp280, pstLogicFsImage_132->ImageDnr.use_pic_qp_en
	cmp	r3, #0	@ D.39356,
	movne	r3, #4	@ D.39356,
	strb	r3, [r5, #288]	@ D.39356, pstLogicFsImage_132->ImageDnr.pic_structure
	ldr	r3, [r4, #428]	@ D.39361, pFrameStore_30(D)->frame.MaxQp
	strb	r2, [r5, #293]	@ tmp280, pstLogicFsImage_132->ImageDnr.chroma_format_idc
	str	r3, [r5, #304]	@ D.39361, pstLogicFsImage_132->ImageDnr.QP_Y
	str	r3, [r5, #312]	@ D.39361, pstLogicFsImage_132->ImageDnr.QP_V
	str	r3, [r5, #308]	@ D.39361, pstLogicFsImage_132->ImageDnr.QP_U
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L471:
	ldr	r1, [r4, #540]	@ pFrameStore_30(D)->pic_type, pFrameStore_30(D)->pic_type
	add	r6, r0, #24576	@ tmp284, pH264Ctx,
	ldr	ip, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	and	r1, r1, #3	@ D.39358, pFrameStore_30(D)->pic_type,
	orr	r2, r2, r1	@ D.39358, D.39358, D.39358
	orr	r2, r2, #1792	@ D.39358, D.39358,
	str	ip, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
	str	r2, [r4, #148]	@ D.39358, pFrameStore_30(D)->fs_image.format
	b	.L468	@
.L469:
	ldrb	r2, [r4, #400]	@ zero_extendqisi2	@ pFrameStore_30(D)->frame.structure, pFrameStore_30(D)->frame.structure
	cmp	r2, #0	@ pFrameStore_30(D)->frame.structure,
	bne	.L473	@,
	ldr	r2, [r4, #536]	@ pFrameStore_30(D)->MbaffFrameFlag, pFrameStore_30(D)->MbaffFrameFlag
	mov	r7, #3072	@ D.39358,
	ldr	lr, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	cmp	r2, #0	@ pFrameStore_30(D)->MbaffFrameFlag,
	ldr	r2, [r4, #540]	@ pic_type, pFrameStore_30(D)->pic_type
	moveq	r1, #512	@ D.39358,
	movne	r1, #768	@ D.39358,
	str	lr, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
.L474:
	ldr	r6, [r4, #452]	@ D.39361, pFrameStore_30(D)->top_field.poc
	ldr	lr, [r4, #488]	@ D.39361, pFrameStore_30(D)->bottom_field.poc
	cmp	r6, lr	@ D.39361, D.39361
	beq	.L512	@,
	movle	lr, #1	@ top_field_first,
	movgt	lr, #0	@ top_field_first,
.L485:
	add	r6, r0, #24576	@ tmp284, pH264Ctx,
	ldrb	r8, [r6, #1844]	@ zero_extendqisi2	@ D.39360, pH264Ctx_21(D)->PicTimingSEI.pic_struct
	cmp	r8, #3	@ D.39360,
	moveq	lr, #4096	@ D.39358,
	beq	.L486	@,
	cmp	r8, #4	@ D.39360,
	movne	lr, lr, asl #12	@ D.39358, top_field_first,
	moveq	lr, #0	@ D.39358,
.L486:
	bic	ip, ip, #13056	@ D.39358, D.39358,
	orr	r1, r7, r1	@ D.39358, D.39358, D.39358
	bic	ip, ip, #3	@ D.39358, D.39358,
	and	r2, r2, #3	@ D.39358, pic_type,
	orr	ip, r1, ip	@ D.39358, D.39358, D.39358
	orr	ip, ip, r2	@ D.39358, D.39358, D.39358
	orr	ip, ip, lr	@ D.39358, D.39358, D.39358
	str	ip, [r4, #148]	@ D.39358, pFrameStore_30(D)->fs_image.format
	b	.L468	@
.L473:
	ldr	r6, [r4, #456]	@ D.39358, pFrameStore_30(D)->top_field.err_level
	ldr	r2, [r5, #3684]	@ D.39358, pH264Ctx_21(D)->out_error_thr
	cmp	r6, r2	@ D.39358, D.39358
	bhi	.L513	@,
	ldr	r1, [r4, #492]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->bottom_field.err_level
	cmp	r2, r1	@ D.39358, pFrameStore_30(D)->bottom_field.err_level
	bcc	.L478	@,
.L476:
	ldr	lr, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	mov	r1, #3	@ valid_field,
	ldr	r2, [r4, #540]	@ pic_type, pFrameStore_30(D)->pic_type
	ldr	r9, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	ldr	r8, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	str	lr, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
.L479:
	ldrb	lr, [r4, #3]	@ zero_extendqisi2	@ D.39360, pFrameStore_30(D)->mode_skip_flag
	cmp	lr, #1	@ D.39360,
	beq	.L514	@,
	cmp	lr, #2	@ D.39360,
	streq	r6, [r4, #188]	@ D.39358, pFrameStore_30(D)->fs_image.error_level
	movne	r7, r1, asl #10	@ D.39358, valid_field,
	moveq	r2, r9	@ pic_type, pic_type
	moveq	r7, #1024	@ D.39358,
.L481:
	mov	r1, #768	@ D.39358,
	str	r9, [r4, #140]	@ pic_type, pFrameStore_30(D)->fs_image.top_fld_type
	str	r8, [r4, #144]	@ pic_type, pFrameStore_30(D)->fs_image.bottom_fld_type
	b	.L474	@
.L478:
	ldr	r2, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	mov	r1, #1	@ valid_field,
	ldr	r8, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	str	r6, [r4, #188]	@ D.39358, pFrameStore_30(D)->fs_image.error_level
	mov	r9, r2	@ pic_type, pic_type
	b	.L479	@
.L512:
	ldr	lr, [r4, #152]	@ pFrameStore_30(D)->fs_image.image_width, pFrameStore_30(D)->fs_image.image_width
	cmp	lr, #720	@ pFrameStore_30(D)->fs_image.image_width,
	movne	lr, #1	@ top_field_first,
	bne	.L485	@,
	ldr	lr, [r4, #156]	@ pFrameStore_30(D)->fs_image.image_height, pFrameStore_30(D)->fs_image.image_height
	subs	lr, lr, #480	@ top_field_first, pFrameStore_30(D)->fs_image.image_height,
	movne	lr, #1	@ top_field_first,
	b	.L485	@
.L513:
	ldr	lr, [r4, #492]	@ D.39358, pFrameStore_30(D)->bottom_field.err_level
	cmp	r2, lr	@ D.39358, D.39358
	bcc	.L476	@,
	ldr	r2, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	mov	r1, #2	@ valid_field,
	str	lr, [r4, #188]	@ D.39358, pFrameStore_30(D)->fs_image.error_level
	ldr	r9, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	mov	r8, r2	@ pic_type, pic_type
	b	.L479	@
.L514:
	ldr	r1, [r4, #492]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->bottom_field.err_level
	mov	r2, r8	@ pic_type, pic_type
	mov	r7, #2048	@ D.39358,
	str	r1, [r4, #188]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->fs_image.error_level
	b	.L481	@
.L503:
	add	r6, r0, #24576	@ tmp284, pH264Ctx,
	b	.L468	@
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
	add	r3, r3, #2032	@ D.39375, _3->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.39375, D.39375,
	cmp	r3, #4096	@ D.39375,
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
	ldrb	lr, [r0, #401]	@ zero_extendqisi2	@ D.39378, pFrameStore_2(D)->frame.is_long_term
	mov	r4, #2	@ tmp122,
	ldrb	ip, [r0, #402]	@ zero_extendqisi2	@ D.39378, pFrameStore_2(D)->frame.is_short_term
	ldr	r1, [r0, #420]	@ D.39379, pFrameStore_2(D)->frame.err_level
	ldr	r2, [r0, #424]	@ D.39379, pFrameStore_2(D)->frame.pic_type
	ldr	r3, [r0, #404]	@ D.39380, pFrameStore_2(D)->frame.frame_store
	strb	r5, [r0, #436]	@ tmp118, pFrameStore_2(D)->top_field.structure
	strb	r4, [r0, #472]	@ tmp122, pFrameStore_2(D)->bottom_field.structure
	strb	lr, [r0, #437]	@ D.39378, pFrameStore_2(D)->top_field.is_long_term
	strb	lr, [r0, #473]	@ D.39378, pFrameStore_2(D)->bottom_field.is_long_term
	strb	ip, [r0, #438]	@ D.39378, pFrameStore_2(D)->top_field.is_short_term
	strb	ip, [r0, #474]	@ D.39378, pFrameStore_2(D)->bottom_field.is_short_term
	str	r1, [r0, #456]	@ D.39379, pFrameStore_2(D)->top_field.err_level
	str	r1, [r0, #492]	@ D.39379, pFrameStore_2(D)->bottom_field.err_level
	str	r2, [r0, #460]	@ D.39379, pFrameStore_2(D)->top_field.pic_type
	str	r2, [r0, #496]	@ D.39379, pFrameStore_2(D)->bottom_field.pic_type
	str	r3, [r0, #440]	@ D.39380, pFrameStore_2(D)->top_field.frame_store
	str	r3, [r0, #476]	@ D.39380, pFrameStore_2(D)->bottom_field.frame_store
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
	movge	r2, r1	@ D.39383, pFrameStore_4(D)->top_field.poc
	ldrb	r4, [r0, #473]	@ zero_extendqisi2	@ pFrameStore_4(D)->bottom_field.is_long_term, pFrameStore_4(D)->bottom_field.is_long_term
	ldr	ip, [r0, #440]	@ pFrameStore_4(D)->top_field.frame_store, pFrameStore_4(D)->top_field.frame_store
	add	r3, r3, r5	@ D.39384, pFrameStore_4(D)->bottom_field.err_level, pFrameStore_4(D)->top_field.err_level
	cmp	r4, #0	@ pFrameStore_4(D)->bottom_field.is_long_term,
	strb	lr, [r0, #400]	@ tmp133, pFrameStore_4(D)->frame.structure
	mov	r3, r3, lsr #1	@ D.39384, D.39384,
	str	r2, [r0, #416]	@ D.39383, pFrameStore_4(D)->frame.poc
	str	ip, [r0, #404]	@ pFrameStore_4(D)->top_field.frame_store, pFrameStore_4(D)->frame.frame_store
	str	r2, [r0, #524]	@ D.39383, pFrameStore_4(D)->poc
	str	r3, [r0, #420]	@ D.39384, pFrameStore_4(D)->frame.err_level
	beq	.L520	@,
	ldrb	r2, [r0, #437]	@ zero_extendqisi2	@ pFrameStore_4(D)->top_field.is_long_term, pFrameStore_4(D)->top_field.is_long_term
	cmp	r2, #0	@ pFrameStore_4(D)->top_field.is_long_term,
	bne	.L521	@,
.L520:
	ldr	r2, [r0, #472]	@ *pFrameStore_4(D), *pFrameStore_4(D)
	mov	r1, #0	@ tmp141,
	strb	r1, [r0, #401]	@ tmp141, pFrameStore_4(D)->frame.is_long_term
	bic	r2, r2, #-16777216	@ D.39384, *pFrameStore_4(D),
	bic	r2, r2, #255	@ D.39384, D.39384,
	cmp	r2, r1	@ D.39384,
	beq	.L525	@,
	ldr	r2, [r0, #436]	@ *pFrameStore_4(D), *pFrameStore_4(D)
	bic	r2, r2, #-16777216	@ D.39384, *pFrameStore_4(D),
	bic	r2, r2, #255	@ D.39384, D.39384,
	cmp	r2, #0	@ D.39384,
	movne	ip, #1	@ D.39386,
	bne	.L523	@,
.L525:
	mov	ip, #0	@ D.39386,
.L523:
	ldr	r2, [r0, #496]	@ pFrameStore_4(D)->bottom_field.pic_type, pFrameStore_4(D)->bottom_field.pic_type
	ldr	r1, [r0, #460]	@ pFrameStore_4(D)->top_field.pic_type, pFrameStore_4(D)->top_field.pic_type
	str	r3, [r0, #544]	@ D.39384, pFrameStore_4(D)->err_level
	cmp	r2, r1	@ pFrameStore_4(D)->bottom_field.pic_type, pFrameStore_4(D)->top_field.pic_type
	strb	ip, [r0, #402]	@ D.39386, pFrameStore_4(D)->frame.is_short_term
	movcs	r3, r2	@ D.39384, pFrameStore_4(D)->bottom_field.pic_type
	movcc	r3, r1	@ D.39384, pFrameStore_4(D)->top_field.pic_type
	str	r3, [r0, #424]	@ D.39384, pFrameStore_4(D)->frame.pic_type
	str	r3, [r0, #540]	@ D.39384, pFrameStore_4(D)->pic_type
	ldmfd	sp!, {r4, r5, pc}	@
.L521:
	mov	r1, #1	@ tmp152,
	strb	r1, [r0, #401]	@ tmp152, pFrameStore_4(D)->frame.is_long_term
	b	.L525	@
	.fnend
	.size	CombineFldsToFrm, .-CombineFldsToFrm
	.align	2
	.global	GetAPC
	.type	GetAPC, %function
GetAPC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pFrameStore
	beq	.L565	@,
	cmp	r2, #1	@ structure,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	beq	.L538	@,
	cmp	r2, #2	@ structure,
	beq	.L539	@,
	ldr	r7, [r1, #452]	@ bottompoc, pFrameStore_7(D)->top_field.poc
	ldr	r8, [r1, #488]	@ bottompoc, pFrameStore_7(D)->bottom_field.poc
.L540:
	add	r6, r0, #24576	@ tmp166, pH264Ctx,
	ldr	ip, [r6, #2324]	@ D.39402, pH264Ctx_14(D)->APC.size
	cmp	ip, #0	@ D.39402,
	beq	.L541	@,
	ldr	r4, [r6, #2068]	@ pH264Ctx_14(D)->APC.is_used, pH264Ctx_14(D)->APC.is_used
	cmp	r4, #0	@ pH264Ctx_14(D)->APC.is_used,
	addne	r3, r0, #26624	@ ivtmp.693, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r3, r3, #20	@ ivtmp.693, ivtmp.693,
	bne	.L544	@,
	b	.L542	@
.L546:
	ldr	r2, [r3, #4]!	@ MEM[base: _44, offset: 0B], MEM[base: _44, offset: 0B]
	cmp	r2, #0	@ MEM[base: _44, offset: 0B],
	beq	.L542	@,
.L544:
	add	r4, r4, #1	@ i, i,
	cmp	r4, ip	@ i, D.39402
	bne	.L546	@,
.L541:
	mvn	r0, #0	@ D.39400,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L539:
	ldr	r7, [r1, #488]	@ bottompoc, pFrameStore_7(D)->bottom_field.poc
	mov	r8, r7	@ bottompoc, bottompoc
	b	.L540	@
.L542:
	add	r3, r0, #49152	@ tmp145, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r9, r1	@ pFrameStore, pFrameStore
	ldr	r1, [r1, #508]	@, pFrameStore_7(D)->logic_fs_id
	ldr	r0, [r3, #3688]	@, pH264Ctx_14(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L541	@,
	ldr	r3, [r0, #408]	@ pstLogicFs_21->pstDecodeFs, pstLogicFs_21->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_21->pstDecodeFs,
	beq	.L541	@,
	add	r3, r5, r4, lsl #2	@ D.39408, pH264Ctx, i,
	mov	r2, #1	@ tmp151,
	add	r3, r3, #24576	@ tmp150, D.39408,
	str	r2, [r3, #2068]	@ tmp151, MEM[(struct H264_CTX_S *)_46 + 26644B]
	ldr	r2, [r0, #408]	@ pstLogicFs_21->pstDecodeFs, pstLogicFs_21->pstDecodeFs
	mov	r0, #0	@ D.39400,
	ldr	r2, [r2, #4]	@ _24->PhyFsID, _24->PhyFsID
	str	r7, [r3, #2196]	@ bottompoc, MEM[(struct H264_CTX_S *)_46 + 26772B]
	str	r8, [r3, #2260]	@ bottompoc, MEM[(struct H264_CTX_S *)_46 + 26836B]
	str	r2, [r3, #2132]	@ _24->PhyFsID, MEM[(struct H264_CTX_S *)_46 + 26708B]
	ldr	r3, [r6, #2328]	@ D.39402, pH264Ctx_14(D)->APC.used_size
	cmp	r3, #15	@ D.39402,
	addls	r3, r3, #1	@ D.39401, D.39402,
	movhi	r3, #16	@ D.39401,
	str	r3, [r6, #2328]	@ D.39401, pH264Ctx_14(D)->APC.used_size
	str	r4, [r9, #552]	@ i, pFrameStore_7(D)->apc_idc
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L538:
	ldr	r7, [r1, #452]	@ bottompoc, pFrameStore_7(D)->top_field.poc
	mov	r8, r7	@ bottompoc, bottompoc
	b	.L540	@
.L565:
	mvn	r0, #0	@ D.39400,
	bx	lr	@
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
	rsb	r3, r1, r3	@ D.39411, pH264Ctx_2(D)->DPB.ltref_frames_in_buffer, pH264Ctx_2(D)->CurrSPS.num_ref_frames
	cmp	r2, r3	@ pH264Ctx_2(D)->DPB.ref_frames_in_buffer, D.39411
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
	bcs	.L575	@,
.L569:
	add	r0, r4, #49152	@ tmp125, pH264Ctx,
	mov	r2, #0	@ tmp126,
	ldr	r3, [r0, #976]	@ pH264Ctx_4(D)->CurrPic.nal_ref_idc, pH264Ctx_4(D)->CurrPic.nal_ref_idc
	strb	r2, [r0, #556]	@ tmp126, pH264Ctx_4(D)->CurrPic.is_long_term
	cmp	r3, r2	@ pH264Ctx_4(D)->CurrPic.nal_ref_idc,
	movne	r3, #1	@ tmp133,
	strneb	r3, [r0, #557]	@ tmp133, pH264Ctx_4(D)->CurrPic.is_short_term
	ldmfd	sp!, {r4, pc}	@
.L575:
	ldr	r1, [r3, #1856]	@, pH264Ctx_4(D)->DPB.fs
	bl	UnMarkFrameStoreRef	@
	mov	r1, #0	@,
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L569	@
	.fnend
	.size	SimpleSlideDPB, .-SimpleSlideDPB
	.align	2
	.global	ReleaseNAL
	.type	ReleaseNAL, %function
ReleaseNAL:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #0	@ pNalu, pNalu
	bxeq	lr	@
	mov	r2, #0	@ tmp112,
	strb	r2, [r3, #1]	@ tmp112, pNalu_3(D)->is_valid
	strb	r2, [r3, #3]	@ tmp112, pNalu_3(D)->nal_integ
	b	ReleaseNAL.part.3	@
	.fnend
	.size	ReleaseNAL, .-ReleaseNAL
	.align	2
	.global	H264_ArrangeVahbMem
	.type	H264_ArrangeVahbMem, %function
H264_ArrangeVahbMem:
	.fnstart
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r5, r1	@ ImgWidth, ImgWidth
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp177,,
	mov	r6, r2	@ ImgHeight, ImgHeight
	bl	__memzero	@
	ldr	r2, [r4]	@ D.39422, pH264Ctx_7(D)->pstExtraData
	mov	r3, #0	@ tmp138,
	str	r5, [sp, #16]	@ ImgWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #20]	@ ImgHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r2, #20]	@ _8->s32DnrDispOutEnable, _8->s32DnrDispOutEnable
	str	r6, [sp, #36]	@ ImgHeight, FspInstCfg.s32DispFsHeight
	ldr	r2, [r2, #32]	@ _8->eCapLevel, _8->eCapLevel
	strb	r1, [sp, #4]	@ _8->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	cmp	r2, #24	@ _8->eCapLevel,
	str	r5, [sp, #24]	@ ImgWidth, FspInstCfg.s32TfFsWidth
	str	r6, [sp, #28]	@ ImgHeight, FspInstCfg.s32TfFsHeight
	str	r5, [sp, #32]	@ ImgWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #5]	@ tmp138, FspInstCfg.s32TfEnable
	strb	r3, [sp, #6]	@ tmp138, FspInstCfg.s32RprEnable
	beq	.L579	@,
	add	r1, r4, #24576	@ tmp144, pH264Ctx,
	ldrb	r2, [sp, #56]	@ zero_extendqisi2	@ D.39420, PmvBlkNum
	strb	r3, [sp, #10]	@ tmp138, FspInstCfg.s32ExpectedTfFsNum
	mov	r0, #5	@ tmp151,
	ldr	r3, [r1, #2048]	@ pH264Ctx_7(D)->DPB.size, pH264Ctx_7(D)->DPB.size
	strb	r0, [sp, #11]	@ tmp151, FspInstCfg.s32ExpectedDispFsNum
	add	r3, r3, #1	@ tmp147, pH264Ctx_7(D)->DPB.size,
	strb	r3, [sp, #9]	@ tmp147, FspInstCfg.s32ExpectedDecFsNum
.L582:
	add	r5, r4, #49152	@ tmp160, pH264Ctx,
	add	r1, sp, #4	@ tmp178,,
	strb	r2, [sp, #12]	@ D.39420, FspInstCfg.s32ExpectedPmvNum
	mov	r3, #1	@ tmp156,
	ldr	r0, [r5, #3688]	@, pH264Ctx_7(D)->ChanID
	mov	r2, #0	@ tmp154,
	strb	r3, [sp, #7]	@ tmp156, FspInstCfg.s8SubLevelEnable
	strb	r2, [sp, #8]	@ tmp154, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	cmp	r0, #0	@,
	bne	.L583	@,
	ldr	r1, [r4]	@ D.39422, pH264Ctx_7(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r5, #3688]	@, pH264Ctx_7(D)->ChanID
	ldr	r2, [r1, #28]	@, _41->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _41->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ D.39421,
	mvnne	r0, #19	@ D.39421,
.L584:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L579:
	mov	r1, #5	@ tmp173,
	strb	r3, [sp, #9]	@ tmp138, FspInstCfg.s32ExpectedDecFsNum
	strb	r3, [sp, #10]	@ tmp138, FspInstCfg.s32ExpectedTfFsNum
	mov	r2, #1	@ D.39420,
	strb	r1, [sp, #11]	@ tmp173, FspInstCfg.s32ExpectedDispFsNum
	b	.L582	@
.L583:
	mvn	r0, #19	@ D.39421,
	b	.L584	@
	.fnend
	.size	H264_ArrangeVahbMem, .-H264_ArrangeVahbMem
	.align	2
	.global	RepairList
	.type	RepairList, %function
RepairList:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp146, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r3, #200]	@ zero_extendqisi2	@ pH264Ctx_17(D)->CurrSlice.slice_type, pH264Ctx_17(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_17(D)->CurrSlice.slice_type,
	beq	.L588	@,
	bcc	.L603	@,
	cmp	r3, #2	@ pH264Ctx_17(D)->CurrSlice.slice_type,
	bne	.L610	@,
.L604:
	mov	r0, #0	@ D.39484,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L600:
	mov	r0, r7	@, pH264Ctx
.L610:
	add	r7, r7, #49152	@ tmp159, pH264Ctx,
	bl	ClearCurrNal	@
	mvn	r0, #0	@ D.39484,
	ldr	r3, [r7, #3644]	@ pH264Ctx_17(D)->TotalSlice, pH264Ctx_17(D)->TotalSlice
	add	r3, r3, #1	@ D.39486, pH264Ctx_17(D)->TotalSlice,
	str	r3, [r7, #3644]	@ D.39486, pH264Ctx_17(D)->TotalSlice
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L588:
	mov	r0, #2	@ i_list_cnt,
.L589:
	add	r6, r7, #20480	@ ivtmp.743, pH264Ctx,
	add	r4, r7, #26880	@ ivtmp.751, pH264Ctx,
	add	r6, r6, #240	@ ivtmp.743, ivtmp.743,
	add	r4, r4, #156	@ ivtmp.751, ivtmp.751,
	add	r8, r7, #49152	@ tmp177, pH264Ctx,
	mov	r5, #0	@ i_list,
	ldr	r2, [r6, #4]!	@ D.39486, MEM[base: _12, offset: 0B]
	mov	r9, #1	@ tmp176,
	cmp	r2, #0	@ D.39486,
	beq	.L591	@,
.L612:
	ldr	ip, [r4]	@ pRepairPic, MEM[base: _71, offset: 0B]
	cmp	ip, #0	@ pRepairPic,
	bne	.L605	@,
	mov	r1, r4	@ ivtmp.732, ivtmp.751
	mov	r3, ip	@ i, pRepairPic
	b	.L593	@
.L594:
	ldr	lr, [r1, #4]!	@ pRepairPic, MEM[base: _6, offset: 0B]
	cmp	lr, #0	@ pRepairPic,
	bne	.L596	@,
.L593:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r2	@ i, D.39486
	bne	.L594	@,
	ldr	r3, [r7]	@ pH264Ctx_17(D)->pstExtraData, pH264Ctx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _38->s32DecOrderOutput, _38->s32DecOrderOutput
	cmp	r3, #2	@ _38->s32DecOrderOutput,
	bne	.L600	@,
	ldr	lr, [r8, #960]	@ pH264Ctx_17(D)->CurrPic.frame_store, pH264Ctx_17(D)->CurrPic.frame_store
	add	lr, lr, #400	@ pRepairPic, pH264Ctx_17(D)->CurrPic.frame_store,
.L596:
	mov	r1, r4	@ ivtmp.717, ivtmp.751
	mov	r3, #0	@ i,
	b	.L602	@
.L598:
	ldr	ip, [r1, #4]!	@ D.39490, MEM[base: _53, offset: 0B]
.L602:
	add	r3, r3, #1	@ i, i,
	cmp	ip, #0	@ D.39490,
	streq	lr, [r1]	@ pRepairPic, MEM[base: _34, offset: 0B]
	cmp	r3, r2	@ i, D.39486
	bne	.L598	@,
	add	r5, r5, #1	@ i_list, i_list,
	add	r4, r4, #132	@ ivtmp.751, ivtmp.751,
	cmp	r0, r5	@ i_list_cnt, i_list
	bls	.L604	@,
.L611:
	ldr	r2, [r6, #4]!	@ D.39486, MEM[base: _12, offset: 0B]
	cmp	r2, #0	@ D.39486,
	bne	.L612	@,
.L591:
	ldr	r3, [r7]	@ pH264Ctx_17(D)->pstExtraData, pH264Ctx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _21->s32DecOrderOutput, _21->s32DecOrderOutput
	cmp	r3, #2	@ _21->s32DecOrderOutput,
	bne	.L600	@,
	add	r5, r5, #1	@ i_list, i_list,
	str	r9, [r6]	@ tmp176, MEM[base: _12, offset: 0B]
	cmp	r0, r5	@ i_list_cnt, i_list
	ldr	r3, [r8, #960]	@ pH264Ctx_17(D)->CurrPic.frame_store, pH264Ctx_17(D)->CurrPic.frame_store
	add	r4, r4, #132	@ ivtmp.751, ivtmp.751,
	add	r3, r3, #400	@ D.39490, pH264Ctx_17(D)->CurrPic.frame_store,
	str	r3, [r4, #-132]	@ D.39490, MEM[base: _70, offset: 0B]
	bhi	.L611	@,
	b	.L604	@
.L605:
	mov	lr, ip	@ pRepairPic, pRepairPic
	b	.L596	@
.L603:
	mov	r0, #1	@ i_list_cnt,
	b	.L589	@
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
	beq	.L614	@,
	ldrb	r3, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag,
	movne	r4, #2	@ structure,
	moveq	r4, #1	@ structure,
.L614:
	add	r3, r0, #24576	@ tmp145, pH264Ctx,
	ldr	r5, [r3, #2056]	@ D.39502, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	cmp	r5, #0	@ D.39502,
	beq	.L622	@,
	add	r3, r0, #26368	@ ivtmp.758, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r3, #128	@ ivtmp.758, ivtmp.758,
	b	.L619	@
.L633:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ _25->is_reference, _25->is_reference
	cmp	ip, #3	@ _25->is_reference,
	beq	.L631	@,
.L617:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.758, ivtmp.758,
	cmp	r2, r5	@ i, D.39502
	beq	.L632	@,
.L619:
	cmp	r4, #0	@ structure,
	ldr	r0, [r3]	@ D.39499,* ivtmp.758
	beq	.L633	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ D.39501, _10->is_reference
	tst	lr, #1	@ D.39501,
	beq	.L618	@,
	ldr	ip, [r0, #436]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.39502, *_10,
	bic	ip, ip, #255	@ D.39502, D.39502,
	cmp	ip, #65536	@ D.39502,
	beq	.L634	@,
.L618:
	tst	lr, #2	@ D.39501,
	beq	.L617	@,
	ldr	ip, [r0, #472]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.39502, *_10,
	bic	ip, ip, #255	@ D.39502, D.39502,
	cmp	ip, #65536	@ D.39502,
	bne	.L617	@,
	ldr	ip, [r0, #484]	@ _10->bottom_field.pic_num, _10->bottom_field.pic_num
	cmp	ip, r1	@ _10->bottom_field.pic_num, picNum
	bne	.L617	@,
	add	r0, r0, #472	@ D.39500, D.39499,
	ldmfd	sp!, {r4, r5, pc}	@
.L631:
	ldr	ip, [r0, #400]	@ *_25, *_25
	bic	ip, ip, #-16777216	@ D.39502, *_25,
	bic	ip, ip, #255	@ D.39502, D.39502,
	cmp	ip, #65536	@ D.39502,
	bne	.L617	@,
	ldr	ip, [r0, #412]	@ _25->frame.pic_num, _25->frame.pic_num
	cmp	ip, r1	@ _25->frame.pic_num, picNum
	bne	.L617	@,
	add	r0, r0, #400	@ D.39500, D.39499,
	ldmfd	sp!, {r4, r5, pc}	@
.L634:
	ldr	ip, [r0, #448]	@ _10->top_field.pic_num, _10->top_field.pic_num
	cmp	ip, r1	@ _10->top_field.pic_num, picNum
	bne	.L618	@,
	add	r0, r0, #436	@ D.39500, D.39499,
	ldmfd	sp!, {r4, r5, pc}	@
.L632:
	mov	r0, #0	@ D.39500,
	ldmfd	sp!, {r4, r5, pc}	@
.L622:
	mov	r0, r5	@ D.39500, D.39502
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
	beq	.L636	@,
	ldrb	r3, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag,
	movne	r4, #2	@ structure,
	moveq	r4, #1	@ structure,
.L636:
	add	r3, r0, #24576	@ tmp145, pH264Ctx,
	ldr	r5, [r3, #2060]	@ D.39516, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.39516,
	beq	.L644	@,
	add	r3, r0, #26368	@ ivtmp.765, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r3, #192	@ ivtmp.765, ivtmp.765,
	b	.L641	@
.L655:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ _25->is_reference, _25->is_reference
	cmp	ip, #3	@ _25->is_reference,
	beq	.L653	@,
.L639:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.765, ivtmp.765,
	cmp	r2, r5	@ i, D.39516
	beq	.L654	@,
.L641:
	cmp	r4, #0	@ structure,
	ldr	r0, [r3]	@ D.39513,* ivtmp.765
	beq	.L655	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ D.39515, _10->is_reference
	tst	lr, #1	@ D.39515,
	beq	.L640	@,
	ldr	ip, [r0, #436]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.39516, *_10,
	bic	ip, ip, #255	@ D.39516, D.39516,
	cmp	ip, #256	@ D.39516,
	beq	.L656	@,
.L640:
	tst	lr, #2	@ D.39515,
	beq	.L639	@,
	ldr	ip, [r0, #472]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.39516, *_10,
	bic	ip, ip, #255	@ D.39516, D.39516,
	cmp	ip, #256	@ D.39516,
	bne	.L639	@,
	ldr	ip, [r0, #480]	@ _10->bottom_field.long_term_pic_num, _10->bottom_field.long_term_pic_num
	cmp	ip, r1	@ _10->bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L639	@,
	add	r0, r0, #472	@ D.39514, D.39513,
	ldmfd	sp!, {r4, r5, pc}	@
.L653:
	ldr	ip, [r0, #400]	@ *_25, *_25
	bic	ip, ip, #-16777216	@ D.39516, *_25,
	bic	ip, ip, #255	@ D.39516, D.39516,
	cmp	ip, #256	@ D.39516,
	bne	.L639	@,
	ldr	ip, [r0, #408]	@ _25->frame.long_term_pic_num, _25->frame.long_term_pic_num
	cmp	ip, r1	@ _25->frame.long_term_pic_num, LongtermPicNum
	bne	.L639	@,
	add	r0, r0, #400	@ D.39514, D.39513,
	ldmfd	sp!, {r4, r5, pc}	@
.L656:
	ldr	ip, [r0, #444]	@ _10->top_field.long_term_pic_num, _10->top_field.long_term_pic_num
	cmp	ip, r1	@ _10->top_field.long_term_pic_num, LongtermPicNum
	bne	.L640	@,
	add	r0, r0, #436	@ D.39514, D.39513,
	ldmfd	sp!, {r4, r5, pc}	@
.L654:
	mov	r0, #0	@ D.39514,
	ldmfd	sp!, {r4, r5, pc}	@
.L644:
	mov	r0, r5	@ D.39514, D.39516
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
	ldr	r4, [r7]	@ D.39547, *refIdxLX_14(D)
	cmp	r2, r4	@ cIdx, D.39547
	ble	.L658	@,
	add	lr, r5, r2, lsl #2	@ ivtmp.784, RefPicListX, cIdx,
	mov	ip, r2	@ cIdx, cIdx
.L659:
	ldr	r4, [lr, #-4]!	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 0B]
	sub	ip, ip, #1	@ cIdx, cIdx,
	str	r4, [lr, #4]	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 4B]
	ldr	r4, [r7]	@ D.39547, *refIdxLX_14(D)
	cmp	r4, ip	@ D.39547, cIdx
	blt	.L659	@,
.L658:
	add	r3, r4, #1	@ D.39547, D.39547,
	str	r3, [r7]	@ D.39547, *refIdxLX_14(D)
	str	r0, [r5, r4, asl #2]	@ picLX, *_31
	ldr	ip, [r7]	@ nIdx, *refIdxLX_14(D)
	cmp	r2, ip	@ cIdx, nIdx
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r5, ip, lsl #2	@ ivtmp.775, RefPicListX, nIdx,
	mov	lr, ip	@ nIdx, nIdx
.L663:
	ldr	r0, [r4], #4	@ D.39548, MEM[base: _61, offset: 0B]
	add	ip, ip, #1	@ nIdx, nIdx,
	cmp	r0, #0	@ D.39548,
	beq	.L661	@,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _37->is_long_term, _37->is_long_term
	cmp	r3, #0	@ _37->is_long_term,
	bne	.L662	@,
	ldr	r3, [r0, #12]	@ _37->pic_num, _37->pic_num
	cmp	r3, r6	@ _37->pic_num, picNumLX
	beq	.L661	@,
.L662:
	str	r0, [r5, lr, asl #2]	@ D.39548, *_43
	add	lr, lr, #1	@ nIdx, nIdx,
.L661:
	cmp	r2, ip	@ cIdx, nIdx
	bge	.L663	@,
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
	ldr	r4, [r7]	@ D.39582, *refIdxLX_14(D)
	cmp	r2, r4	@ cIdx, D.39582
	ble	.L672	@,
	add	lr, r5, r2, lsl #2	@ ivtmp.812, RefPicListX, cIdx,
	mov	ip, r2	@ cIdx, cIdx
.L673:
	ldr	r4, [lr, #-4]!	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 0B]
	sub	ip, ip, #1	@ cIdx, cIdx,
	str	r4, [lr, #4]	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 4B]
	ldr	r4, [r7]	@ D.39582, *refIdxLX_14(D)
	cmp	r4, ip	@ D.39582, cIdx
	blt	.L673	@,
.L672:
	add	r3, r4, #1	@ D.39582, D.39582,
	str	r3, [r7]	@ D.39582, *refIdxLX_14(D)
	str	r0, [r5, r4, asl #2]	@ picLX, *_31
	ldr	ip, [r7]	@ nIdx, *refIdxLX_14(D)
	cmp	r2, ip	@ cIdx, nIdx
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r5, ip, lsl #2	@ ivtmp.803, RefPicListX, nIdx,
	mov	lr, ip	@ nIdx, nIdx
.L677:
	ldr	r0, [r4], #4	@ D.39583, MEM[base: _61, offset: 0B]
	add	ip, ip, #1	@ nIdx, nIdx,
	cmp	r0, #0	@ D.39583,
	beq	.L675	@,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _37->is_long_term, _37->is_long_term
	cmp	r3, #0	@ _37->is_long_term,
	beq	.L676	@,
	ldr	r3, [r0, #8]	@ _37->long_term_pic_num, _37->long_term_pic_num
	cmp	r3, r6	@ _37->long_term_pic_num, LongTermPicNum
	beq	.L675	@,
.L676:
	str	r0, [r5, lr, asl #2]	@ D.39583, *_43
	add	lr, lr, #1	@ nIdx, nIdx,
.L675:
	cmp	r2, ip	@ cIdx, nIdx
	bge	.L677	@,
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
	beq	.L689	@,
	ldr	r2, [r2, #220]	@ pH264Ctx_14(D)->CurrSlice.frame_num, pH264Ctx_14(D)->CurrSlice.frame_num
	mov	r4, #2	@ maxPicNum,
	ldr	r7, [lr, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mla	lr, r8, r5, r9	@ tmp179, tmp178, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	mov	r5, r2, asl #1	@ D.39607, pH264Ctx_14(D)->CurrSlice.frame_num,
	add	r2, r5, #1	@ picNumLXPred, D.39607,
	str	r2, [sp, #20]	@ picNumLXPred, %sfp
.L708:
	ldr	lr, [lr, #28]	@ pps_82->seq_parameter_set_id,
	adds	r10, r3, #2	@ D.39607, num_ref_idx_lX_active_minus1,
	mla	r2, r6, lr, r7	@ tmp186, tmp185, pps_82->seq_parameter_set_id, pH264Ctx_14(D)->SPS
	ldr	r2, [r2, #2904]	@ sps_86->log2_max_frame_num_minus4,
	add	r2, r2, #4	@ D.39607, sps_86->log2_max_frame_num_minus4,
	mov	r2, r4, asl r2	@ maxPicNum, maxPicNum,
	str	r2, [sp, #16]	@ maxPicNum, %sfp
	beq	.L688	@,
	ldr	r2, [ip]	@ D.39607, *reordering_of_pic_nums_idc_39(D)
	cmp	r2, #3	@ D.39607,
	beq	.L688	@,
	mov	r8, r3	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	mov	r9, r1	@ list, list
	str	r0, [sp, #12]	@ pH264Ctx, %sfp
	mov	r7, ip	@ ivtmp.831, reordering_of_pic_nums_idc
	ldr	r6, [sp, #76]	@ ivtmp.839, abs_diff_pic_num_minus1
	mov	r4, #0	@ i,
	ldr	r5, [sp, #20]	@ picNumLXPred, %sfp
	add	fp, sp, #28	@ tmp222,,
	b	.L692	@
.L693:
	ldr	r3, [sp, #80]	@ tmp243, long_term_pic_idx
	mov	r2, r8	@, num_ref_idx_lX_active_minus1
	mov	r1, r9	@, list
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r3, [r3, r4, asl #2]	@ MEM[base: long_term_pic_idx_60(D), index: i_73, step: 4, offset: 0B], MEM[base: long_term_pic_idx_60(D), index: i_73, step: 4, offset: 0B]
	add	r4, r4, #1	@ i, i,
	str	fp, [sp]	@ tmp222,
	bl	ReorderLTList	@
	cmp	r4, r10	@ i, D.39607
	beq	.L688	@,
.L698:
	ldr	r2, [r7, #4]!	@ D.39607, MEM[base: _68, offset: 0B]
	add	r6, r6, #4	@ ivtmp.839, ivtmp.839,
	cmp	r2, #3	@ D.39607,
	beq	.L688	@,
.L692:
	cmp	r2, #1	@ D.39607,
	bhi	.L693	@,
	cmp	r2, #0	@ D.39607,
	ldr	r3, [r6]	@ MEM[base: _6, offset: 0B],* ivtmp.839
	bne	.L694	@,
	mvn	r3, r3	@ D.39608, MEM[base: _6, offset: 0B]
	adds	r5, r5, r3	@ picNumLXPred, picNumLXPred, D.39608
	ldrmi	r3, [sp, #16]	@ maxPicNum, %sfp
	addmi	r5, r5, r3	@ picNumLXPred, picNumLXPred, maxPicNum
.L695:
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
	cmp	r4, r10	@ i, D.39607
	bne	.L698	@,
.L688:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L694:
	add	r3, r3, #1	@ D.39608, MEM[base: _11, offset: 0B],
	add	r5, r5, r3	@ picNumLXPred, picNumLXPred, D.39608
	ldr	r3, [sp, #16]	@ maxPicNum, %sfp
	cmp	r3, r5	@ maxPicNum, picNumLXPred
	rsble	r5, r3, r5	@ picNumLXPred, maxPicNum, picNumLXPred
	b	.L695	@
.L689:
	ldr	r2, [r2, #220]	@ picNumLXPred, pH264Ctx_14(D)->CurrSlice.frame_num
	mov	r4, #1	@ tmp219,
	ldr	r7, [lr, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mla	lr, r8, r5, r9	@ tmp209, tmp208, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	str	r2, [sp, #20]	@ picNumLXPred, %sfp
	b	.L708	@
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
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ D.39614, pH264Ctx_4(D)->CurrSlice.slice_type
	cmp	r3, #2	@ D.39614,
	beq	.L709	@,
	add	r6, r0, #16384	@ tmp179, pH264Ctx,
	ldrb	r2, [r6, #3504]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0, pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r2, #0	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0,
	bne	.L722	@,
.L712:
	cmp	r3, #1	@ D.39614,
	ldr	r3, [r5, #256]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r3, #1	@ D.39617, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	str	r3, [r5, #244]	@ D.39617, pH264Ctx_4(D)->CurrSlice.listXsize
	bne	.L709	@,
	ldrb	r3, [r6, #3505]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1, pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r3, #0	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1,
	bne	.L723	@,
.L714:
	ldr	r3, [r5, #260]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #1	@ D.39617, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	str	r3, [r5, #248]	@ D.39617, pH264Ctx_4(D)->CurrSlice.listXsize
.L709:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L722:
	add	r7, r0, #20224	@ D.39619, pH264Ctx,
	add	lr, r0, #19968	@ D.39618, pH264Ctx,
	add	ip, r0, #19712	@ D.39618, pH264Ctx,
	add	r1, r0, #26880	@, pH264Ctx,
	ldr	r3, [r5, #256]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	lr, lr, #188	@ D.39618, D.39618,
	add	ip, ip, #180	@ D.39618, D.39618,
	add	r7, r7, #196	@ D.39619, D.39619,
	stmia	sp, {ip, lr}	@,,
	add	r2, r5, #244	@, tmp2,
	str	r7, [sp, #8]	@ D.39619,
	add	r1, r1, #156	@,,
	bl	ReorderRefPiclist	@
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ D.39614, pH264Ctx_4(D)->CurrSlice.slice_type
	b	.L712	@
.L723:
	add	lr, r4, #20480	@ D.39619, pH264Ctx,
	add	ip, r4, #20224	@ D.39618, pH264Ctx,
	add	r0, r4, #19968	@ D.39618, pH264Ctx,
	add	r1, r4, #27136	@, pH264Ctx,
	ldr	r3, [r5, #260]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1
	mov	r2, lr	@, D.39619
	add	ip, ip, #64	@ D.39618, D.39618,
	add	lr, lr, #68	@ D.39619, D.39619,
	add	r0, r0, #56	@ D.39618, D.39618,
	str	lr, [sp, #8]	@ D.39619,
	stmia	sp, {r0, ip}	@,,
	add	r2, r2, #248	@,,
	add	r1, r1, #32	@,,
	mov	r0, r4	@, pH264Ctx
	bl	ReorderRefPiclist	@
	b	.L714	@
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
	ldr	lr, .L788	@ tmp256,
	ldr	r7, [sp, #52]	@ long_term, long_term
	mov	r8, r1	@ fs_list, fs_list
	ldr	ip, .L788+4	@ tmp257,
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
	beq	.L727	@,
	cmp	r0, #2	@ currStrcture,
	moveq	r5, #0	@ bot_idx,
	moveq	r6, r5	@ top_idx, bot_idx
	bne	.L735	@,
.L736:
	cmp	r6, r4	@ top_idx, list_idx
	movcs	r3, #0	@ D.39660,
	movcc	r3, #1	@ D.39660,
	cmp	r5, r4	@ bot_idx, list_idx
	mov	r2, r3	@ D.39660, D.39660
	str	r3, [sp]	@ D.39660, %sfp
	movcs	r3, #0	@ D.39660,
	movcc	r3, #1	@ D.39660,
	orrs	r2, r3, r2	@ tmp259, D.39660, D.39660
	beq	.L735	@,
	cmp	r3, #0	@ D.39660,
	beq	.L741	@,
	add	fp, r8, r5, lsl #2	@ ivtmp.876, fs_list, bot_idx,
	b	.L740	@
.L737:
	add	r5, r5, #1	@ bot_idx, bot_idx,
	cmp	r4, r5	@ list_idx, bot_idx
	bls	.L741	@,
.L740:
	mov	r9, fp	@ D.39659, ivtmp.876
	ldr	r0, [fp], #4	@ D.39661, MEM[base: _90, offset: 0B]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _91->is_used, _91->is_used
	tst	r2, #2	@ _91->is_used,
	beq	.L737	@,
	add	r0, r0, #472	@, D.39661,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L737	@,
	ldr	r2, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r5, r5, #1	@ bot_idx, bot_idx,
	ldr	r1, [sp, #4]	@ list, %sfp
	ldr	r3, [r9]	@ *_164, *_164
	add	r3, r3, #472	@ D.39663, *_164,
	str	r3, [r1, r2, asl #2]	@ D.39663, *_102
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.39658, *list_size_47(D),
	str	r3, [r10]	@ D.39658, *list_size_47(D)
.L741:
	ldr	r3, [sp]	@ D.39660, %sfp
	cmp	r3, #0	@ D.39660,
	addne	r9, r8, r6, lsl #2	@ ivtmp.867, fs_list, top_idx,
	bne	.L743	@,
	b	.L736	@
.L742:
	add	r6, r6, #1	@ top_idx, top_idx,
	cmp	r4, r6	@ list_idx, top_idx
	bls	.L736	@,
.L743:
	mov	fp, r9	@ D.39659, ivtmp.867
	ldr	r0, [r9], #4	@ D.39661, MEM[base: _114, offset: 0B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _115->is_used, _115->is_used
	tst	r3, #1	@ _115->is_used,
	beq	.L742	@,
	add	r0, r0, #436	@, D.39661,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L742	@,
	ldr	r1, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r6, r6, #1	@ top_idx, top_idx,
	ldr	r2, [sp, #4]	@ list, %sfp
	ldr	r3, [fp]	@ *_162, *_162
	add	r3, r3, #436	@ D.39663, *_162,
	str	r3, [r2, r1, asl #2]	@ D.39663, *_127
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.39658, *list_size_47(D),
	str	r3, [r10]	@ D.39658, *list_size_47(D)
	b	.L736	@
.L787:
	add	r0, r0, #436	@, D.39661,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L728	@,
	ldr	r2, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r6, r6, #1	@ top_idx, top_idx,
	ldr	r1, [sp, #4]	@ list, %sfp
	ldr	r3, [r9]	@ *_168, *_168
	add	r3, r3, #436	@ D.39663, *_168,
	str	r3, [r1, r2, asl #2]	@ D.39663, *_51
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.39658, *list_size_47(D),
	str	r3, [r10]	@ D.39658, *list_size_47(D)
.L732:
	ldr	r3, [sp]	@ D.39660, %sfp
	cmp	r3, #0	@ D.39660,
	addne	r9, r8, r5, lsl #2	@ ivtmp.849, fs_list, bot_idx,
	bne	.L734	@,
	b	.L727	@
.L733:
	add	r5, r5, #1	@ bot_idx, bot_idx,
	cmp	r4, r5	@ list_idx, bot_idx
	bls	.L727	@,
.L734:
	mov	fp, r9	@ D.39659, ivtmp.849
	ldr	r0, [r9], #4	@ D.39661, MEM[base: _63, offset: 0B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _64->is_used, _64->is_used
	tst	r3, #2	@ _64->is_used,
	beq	.L733	@,
	add	r0, r0, #472	@, D.39661,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L733	@,
	ldr	r1, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r5, r5, #1	@ bot_idx, bot_idx,
	ldr	r2, [sp, #4]	@ list, %sfp
	ldr	r3, [fp]	@ *_166, *_166
	add	r3, r3, #472	@ D.39663, *_166,
	str	r3, [r2, r1, asl #2]	@ D.39663, *_76
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.39658, *list_size_47(D),
	str	r3, [r10]	@ D.39658, *list_size_47(D)
.L727:
	cmp	r6, r4	@ top_idx, list_idx
	movcs	r3, #0	@ D.39660,
	movcc	r3, #1	@ D.39660,
	cmp	r5, r4	@ bot_idx, list_idx
	movcs	r2, #0	@ D.39660,
	movcc	r2, #1	@ D.39660,
	str	r2, [sp]	@ D.39660, %sfp
	orrs	r2, r2, r3	@ tmp258, D.39660, D.39660
	beq	.L735	@,
	cmp	r3, #0	@ D.39660,
	beq	.L732	@,
	add	fp, r8, r6, lsl #2	@ ivtmp.858, fs_list, top_idx,
	b	.L731	@
.L728:
	add	r6, r6, #1	@ top_idx, top_idx,
	cmp	r4, r6	@ list_idx, top_idx
	bls	.L732	@,
.L731:
	mov	r9, fp	@ D.39659, ivtmp.858
	ldr	r0, [fp], #4	@ D.39661, MEM[base: _37, offset: 0B]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _38->is_used, _38->is_used
	tst	r2, #1	@ _38->is_used,
	beq	.L728	@,
	b	.L787	@
.L735:
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L789:
	.align	2
.L788:
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
	add	r8, r0, #20480	@ tmp684, pH264Ctx,
	.pad #220
	sub	sp, sp, #220	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r8, #200]	@ zero_extendqisi2	@ pH264Ctx_69(D)->CurrSlice.slice_type, pH264Ctx_69(D)->CurrSlice.slice_type
	add	r10, r0, #49152	@ tmp676, pH264Ctx,
	cmp	r3, #0	@ pH264Ctx_69(D)->CurrSlice.slice_type,
	bne	.L791	@,
	ldrb	r6, [r10, #555]	@ zero_extendqisi2	@ pH264Ctx_69(D)->CurrPic.structure, pH264Ctx_69(D)->CurrPic.structure
	add	r9, r0, #24576	@ tmp682, pH264Ctx,
	cmp	r6, #0	@ pH264Ctx_69(D)->CurrPic.structure,
	bne	.L915	@,
	ldr	ip, [r9, #2056]	@ D.39905, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	ip, #0	@ D.39905,
	beq	.L858	@,
	add	r1, r0, #26368	@ ivtmp.920, pH264Ctx,
	mov	r3, r6	@ i, j
	add	r1, r1, #124	@ ivtmp.920, ivtmp.920,
	b	.L797	@
.L796:
	cmp	r3, ip	@ i, D.39905
	beq	.L795	@,
.L797:
	ldr	r2, [r1, #4]!	@ D.39904, MEM[base: _95, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _73->is_reference, _73->is_reference
	cmp	r0, #3	@ _73->is_reference,
	bne	.L796	@,
	ldr	r0, [r2, #400]	@ *_73, *_73
	bic	r0, r0, #-16777216	@ D.39905, *_73,
	bic	r0, r0, #255	@ D.39905, D.39905,
	cmp	r0, #65536	@ D.39905,
	bne	.L796	@,
	add	r0, r6, #6720	@ tmp357, j,
	cmp	r3, ip	@ i, D.39905
	add	r0, r0, #38	@ tmp357, tmp357,
	add	r2, r2, #400	@ D.39906, D.39904,
	add	r6, r6, #1	@ j, j,
	add	r0, r4, r0, lsl #2	@ tmp358, pH264Ctx, tmp357,
	str	r2, [r0, #4]	@ D.39906, pH264Ctx_69(D)->pListX
	bne	.L797	@,
.L795:
	add	r0, r4, #26880	@, pH264Ctx,
	mov	r1, r6	@, j
	ldr	r3, .L923	@,
	add	r0, r0, #156	@,,
	mov	r2, #4	@,
	bl	qsort	@
	str	r6, [r8, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r1, [r9, #2060]	@ D.39905, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r1, #0	@ D.39905,
	beq	.L859	@,
	add	r0, r4, #26368	@ ivtmp.909, pH264Ctx,
	mov	r5, r6	@ j, j
	add	r0, r0, #188	@ ivtmp.909, ivtmp.909,
	mov	r3, #0	@ i,
	b	.L800	@
.L799:
	cmp	r3, r1	@ i, D.39905
	beq	.L916	@,
.L800:
	ldr	r2, [r0, #4]!	@ D.39904, MEM[base: _192, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ _85->is_reference, _85->is_reference
	cmp	ip, #3	@ _85->is_reference,
	bne	.L799	@,
	ldr	ip, [r2, #400]	@ *_85, *_85
	bic	ip, ip, #-16777216	@ D.39905, *_85,
	bic	ip, ip, #255	@ D.39905, D.39905,
	cmp	ip, #256	@ D.39905,
	bne	.L799	@,
	add	ip, r5, #6720	@ tmp374, j,
	cmp	r3, r1	@ i, D.39905
	add	ip, ip, #38	@ tmp374, tmp374,
	add	r2, r2, #400	@ D.39906, D.39904,
	add	r5, r5, #1	@ j, j,
	add	ip, r4, ip, lsl #2	@ tmp375, pH264Ctx, tmp374,
	str	r2, [ip, #4]	@ D.39906, pH264Ctx_69(D)->pListX
	bne	.L800	@,
.L916:
	rsb	r1, r6, r5	@ D.39905, j, j
.L798:
	add	r0, r4, r6, lsl #2	@ tmp382, pH264Ctx, j,
	ldr	r3, .L923+4	@,
	add	r0, r0, #26880	@, tmp382,
	mov	r2, #4	@,
	add	r0, r0, #156	@,,
	bl	qsort	@
	mov	r2, r5	@ D.39898, j
	cmp	r2, #0	@ D.39898,
	mov	r3, #0	@ tmp417,
	str	r5, [r8, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	str	r3, [r8, #248]	@ tmp417, pH264Ctx_69(D)->CurrSlice.listXsize
	beq	.L917	@,
.L806:
	ldr	r0, [r8, #256]	@ pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1
	ldr	r1, [r8, #260]	@ pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r0, r0, #1	@ D.39905, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r2, r0	@ D.39898, D.39905
	add	r1, r1, #1	@ D.39905, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	movcs	r2, r0	@ i, D.39905
	cmp	r3, r1	@ D.39898, D.39905
	str	r2, [r8, #244]	@ i, pH264Ctx_69(D)->CurrSlice.listXsize
	movcs	r3, r1	@ i, D.39905
	cmp	r2, #32	@ i,
	str	r3, [r8, #248]	@ i, pH264Ctx_69(D)->CurrSlice.listXsize
	bhi	.L850	@,
	add	r2, r2, #6720	@ D.39895, i,
	add	r1, r4, #27136	@ D.39911, pH264Ctx,
	add	r2, r2, #38	@ D.39895, D.39895,
	add	r1, r1, #28	@ D.39911, D.39911,
	mov	r0, #0	@ tmp686,
	add	r2, r4, r2, lsl #2	@ ivtmp.898, pH264Ctx, D.39895,
.L849:
	str	r0, [r2, #4]!	@ tmp686, MEM[base: _285, offset: 0B]
	cmp	r2, r1	@ ivtmp.898, D.39911
	bne	.L849	@,
.L850:
	cmp	r3, #32	@ i,
	bhi	.L848	@,
	add	r3, r3, #6784	@ D.39895, i,
	add	r2, r4, #27136	@ D.39911, pH264Ctx,
	add	r3, r3, #7	@ D.39895, D.39895,
	add	r2, r2, #160	@ D.39911, D.39911,
	mov	r1, #0	@ tmp685,
	add	r4, r4, r3, lsl #2	@ ivtmp.886, pH264Ctx, D.39895,
.L851:
	str	r1, [r4, #4]!	@ tmp685, MEM[base: _204, offset: 0B]
	cmp	r4, r2	@ ivtmp.886, D.39911
	bne	.L851	@,
.L848:
	mov	r0, #0	@ D.39902,
.L901:
	add	sp, sp, #220	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L791:
	ldrb	r5, [r10, #555]	@ zero_extendqisi2	@ pH264Ctx_69(D)->CurrPic.structure, pH264Ctx_69(D)->CurrPic.structure
	add	r9, r0, #24576	@ tmp682, pH264Ctx,
	cmp	r5, #0	@ pH264Ctx_69(D)->CurrPic.structure,
	ldr	fp, [r9, #2056]	@ D.39905, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	beq	.L812	@,
	cmp	fp, #0	@ D.39905,
	beq	.L918	@,
	add	r6, r0, #26368	@ ivtmp.1091, pH264Ctx,
	mov	r5, #0	@ j,
	add	r6, r6, #124	@ ivtmp.1091, ivtmp.1091,
	mov	r3, r5	@ i, j
	mov	r1, r6	@ ivtmp.1102, ivtmp.1091
.L831:
	ldr	r2, [r1, #4]!	@ D.39904, MEM[base: _463, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ _195->is_used, _195->is_used
	cmp	r0, #0	@ _195->is_used,
	beq	.L830	@,
	add	r0, sp, #216	@ tmp863,,
	ldr	ip, [r10, #980]	@ pH264Ctx_69(D)->CurrPic.thispoc, pH264Ctx_69(D)->CurrPic.thispoc
	add	lr, r0, r5, lsl #2	@ tmp536, tmp863, j,
	ldr	r0, [r2, #524]	@ _195->poc, _195->poc
	cmp	ip, r0	@ pH264Ctx_69(D)->CurrPic.thispoc, _195->poc
	strge	r2, [lr, #-192]	@ D.39904, fs_list0
	addge	r5, r5, #1	@ j, j,
.L830:
	cmp	r3, fp	@ i, D.39905
	bne	.L831	@,
	add	ip, sp, #24	@ tmp683,,
	ldr	r3, .L923+8	@,
	mov	r2, #4	@,
	mov	r1, r5	@, j
	mov	r0, ip	@, tmp683
	str	ip, [sp, #12]	@ tmp683, %sfp
	bl	qsort	@
	ldr	r7, [r9, #2056]	@ D.39905, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	ldr	ip, [sp, #12]	@ tmp683, %sfp
	cmp	r7, #0	@ D.39905,
	beq	.L912	@,
.L856:
	mov	fp, r5	@ j, j
	mov	r3, #0	@ i,
.L834:
	ldr	r2, [r6, #4]!	@ D.39904, MEM[base: _458, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ _205->is_used, _205->is_used
	cmp	r1, #0	@ _205->is_used,
	beq	.L833	@,
	add	r1, sp, #216	@ tmp864,,
	ldr	r0, [r10, #980]	@ pH264Ctx_69(D)->CurrPic.thispoc, pH264Ctx_69(D)->CurrPic.thispoc
	add	lr, r1, fp, lsl #2	@ tmp548, tmp864, j,
	ldr	r1, [r2, #524]	@ _205->poc, _205->poc
	cmp	r0, r1	@ pH264Ctx_69(D)->CurrPic.thispoc, _205->poc
	strlt	r2, [lr, #-192]	@ D.39904, fs_list0
	addlt	fp, fp, #1	@ j, j,
.L833:
	cmp	r3, r7	@ i, D.39905
	bne	.L834	@,
	rsb	r7, r5, fp	@ D.39905, j, j
	mov	r3, r5, asl #2	@ D.39895, j,
	add	r0, ip, r3	@, tmp683, D.39895
	str	r3, [sp, #12]	@ D.39895, %sfp
	mov	r1, r7	@, D.39905
	ldr	r3, .L923+12	@,
	mov	r2, #4	@,
	str	ip, [sp, #16]	@ tmp683, %sfp
	bl	qsort	@
	cmp	r5, #0	@ j,
	ldr	ip, [sp, #16]	@ tmp683, %sfp
	addeq	r6, sp, #88	@ tmp675,,
	beq	.L835	@,
.L853:
	add	r6, sp, #88	@ tmp675,,
	mov	r2, ip	@ ivtmp.1079, tmp683
	add	r7, r6, r7, lsl #2	@ ivtmp.1085, tmp675, D.39905,
	mov	r3, #0	@ j,
.L836:
	add	r3, r3, #1	@ j, j,
	ldr	r1, [r2], #4	@ D.39904, MEM[base: _453, offset: 0B]
	cmp	r3, r5	@ j, j
	str	r1, [r7], #4	@ D.39904, MEM[base: _454, offset: 0B]
	bcc	.L836	@,
.L835:
	cmp	fp, r5	@ j, j
	bls	.L837	@,
	ldr	r3, [sp, #12]	@ D.39895, %sfp
	add	r2, ip, r3	@ ivtmp.1066, tmp683, D.39895
	mov	r3, r6	@ ivtmp.1072, tmp675
.L838:
	add	r5, r5, #1	@ j, j,
	ldr	r1, [r2], #4	@ D.39904, MEM[base: _444, offset: 0B]
	cmp	r5, fp	@ j, j
	str	r1, [r3], #4	@ D.39904, MEM[base: _445, offset: 0B]
	bne	.L838	@,
.L837:
	add	r3, r4, #26880	@ ivtmp.958, pH264Ctx,
	add	r7, r4, #20480	@ D.39908, pH264Ctx,
	mov	r5, #0	@ tmp560,
	add	r3, r3, #156	@ ivtmp.958, ivtmp.958,
	str	r5, [r8, #244]	@ tmp560, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r1, ip	@, tmp683
	str	r5, [r8, #248]	@ tmp560, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r2, fp	@, j
	ldrb	r0, [r10, #555]	@ zero_extendqisi2	@ D.39905, pH264Ctx_69(D)->CurrPic.structure
	add	r7, r7, #244	@ D.39908, D.39908,
	str	r5, [sp, #4]	@ tmp560,
	str	r7, [sp]	@ D.39908,
	str	r3, [sp, #12]	@ ivtmp.958, %sfp
	bl	GenPiclistfromFrmlist	@
	add	ip, r4, #27136	@ D.39907, pH264Ctx,
	add	r3, r4, #20480	@ D.39908, pH264Ctx,
	add	ip, ip, #32	@ D.39907, D.39907,
	ldrb	r0, [r10, #555]	@ zero_extendqisi2	@ D.39905, pH264Ctx_69(D)->CurrPic.structure
	mov	lr, r3	@ D.39908, D.39908
	mov	r2, fp	@, j
	mov	r1, r6	@, tmp675
	mov	r3, ip	@, D.39907
	str	ip, [sp, #20]	@ D.39907, %sfp
	add	ip, lr, #248	@ D.39908, D.39908,
	str	r5, [sp, #4]	@ tmp560,
	str	ip, [sp]	@ D.39908,
	str	ip, [sp, #16]	@ D.39908, %sfp
	bl	GenPiclistfromFrmlist	@
	ldr	r6, [r9, #2060]	@ listltidx, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	ldr	ip, [sp, #20]	@ D.39907, %sfp
	cmp	r6, r5	@ listltidx,
	addeq	fp, sp, #152	@ tmp678,,
	beq	.L839	@,
	add	r3, r4, #26368	@ ivtmp.1048, pH264Ctx,
	add	fp, sp, #152	@ tmp678,,
	add	r3, r3, #188	@ ivtmp.1048, ivtmp.1048,
	mov	r2, fp	@ ivtmp.1058, tmp678
.L840:
	add	r5, r5, #1	@ i, i,
	ldr	r1, [r3, #4]!	@ MEM[base: _436, offset: 0B], MEM[base: _436, offset: 0B]
	cmp	r5, r6	@ i, listltidx
	str	r1, [r2], #4	@ MEM[base: _436, offset: 0B], MEM[base: _437, offset: 0B]
	bne	.L840	@,
.L839:
	ldr	r3, .L923+16	@,
	mov	r2, #4	@,
	mov	r1, r6	@, listltidx
	mov	r0, fp	@, tmp678
	str	ip, [sp, #20]	@ D.39907, %sfp
	mov	r5, #1	@ tmp588,
	bl	qsort	@
	ldrb	r0, [r10, #555]	@ zero_extendqisi2	@ D.39905, pH264Ctx_69(D)->CurrPic.structure
	ldr	r3, [sp, #12]	@, %sfp
	mov	r2, r6	@, listltidx
	mov	r1, fp	@, tmp678
	str	r7, [sp]	@ D.39908,
	str	r5, [sp, #4]	@ tmp588,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [sp, #16]	@ D.39908, %sfp
	ldr	ip, [sp, #20]	@ D.39907, %sfp
	mov	r1, fp	@, tmp678
	ldrb	r0, [r10, #555]	@ zero_extendqisi2	@ D.39905, pH264Ctx_69(D)->CurrPic.structure
	str	r2, [sp]	@ D.39908,
	mov	r2, r6	@, listltidx
	mov	r3, ip	@, D.39907
	str	r5, [sp, #4]	@ tmp588,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [r8, #244]	@ D.39898, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r3, [r8, #248]	@ D.39898, pH264Ctx_69(D)->CurrSlice.listXsize
	rsb	r1, r3, r2	@ D.39901, D.39898, D.39898
	clz	r1, r1	@ D.39901, D.39901
	mov	r1, r1, lsr #5	@ D.39901, D.39901,
.L829:
	cmp	r2, #1	@ D.39898,
	movls	r1, #0	@, tmp604
	andhi	r1, r1, #1	@,, tmp604, D.39901
	cmp	r1, #0	@ tmp604,
	beq	.L841	@,
	cmp	r2, #0	@ D.39898,
	beq	.L842	@,
	ldr	r6, [r9, #2460]	@ D.39906, pH264Ctx_69(D)->pListX
	ldr	r1, [r9, #2592]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
	cmp	r6, r1	@ D.39906, pH264Ctx_69(D)->pListX
	bne	.L841	@,
	add	r0, r4, #27136	@ ivtmp.967, pH264Ctx,
	ldr	ip, [sp, #12]	@ ivtmp.958, %sfp
	add	r0, r0, #32	@ ivtmp.967, ivtmp.967,
	mov	r1, #0	@ j,
	b	.L843	@
.L844:
	ldr	r5, [ip, #4]!	@ MEM[base: _268, offset: 0B], MEM[base: _268, offset: 0B]
	ldr	lr, [r0, #4]!	@ MEM[base: _260, offset: 0B], MEM[base: _260, offset: 0B]
	cmp	r5, lr	@ MEM[base: _268, offset: 0B], MEM[base: _260, offset: 0B]
	bne	.L841	@,
.L843:
	add	r1, r1, #1	@ j, j,
	cmp	r1, r2	@ j, D.39898
	bne	.L844	@,
.L845:
	ldr	r1, [r9, #2596]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
	str	r6, [r9, #2596]	@ D.39906, pH264Ctx_69(D)->pListX
	str	r1, [r9, #2592]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
.L841:
	orrs	r1, r2, r3	@ tmp856, D.39898, D.39898
	bne	.L806	@,
.L908:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r10, #3644]	@ pH264Ctx_69(D)->TotalSlice, pH264Ctx_69(D)->TotalSlice
	mvn	r0, #0	@ D.39902,
	add	r3, r3, #1	@ D.39905, pH264Ctx_69(D)->TotalSlice,
	str	r3, [r10, #3644]	@ D.39905, pH264Ctx_69(D)->TotalSlice
	b	.L901	@
.L812:
	cmp	fp, #0	@ D.39905,
	beq	.L815	@,
	add	r6, r0, #26368	@ ivtmp.1091, pH264Ctx,
	mov	r3, r5	@ i, j
	add	r6, r6, #124	@ ivtmp.1091, ivtmp.1091,
	mov	r1, r6	@ ivtmp.1037, ivtmp.1091
	b	.L817	@
.L816:
	cmp	r3, fp	@ i, D.39905
	beq	.L919	@,
.L817:
	ldr	r2, [r1, #4]!	@ D.39904, MEM[base: _428, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _139->is_reference, _139->is_reference
	cmp	r0, #3	@ _139->is_reference,
	bne	.L816	@,
	add	r0, r5, #6720	@ tmp460, j,
	ldr	ip, [r2, #416]	@ _139->frame.poc, _139->frame.poc
	add	r0, r0, #38	@ tmp460, tmp460,
	ldr	lr, [r10, #984]	@ pH264Ctx_69(D)->CurrPic.framepoc, pH264Ctx_69(D)->CurrPic.framepoc
	add	r2, r2, #400	@ D.39906, D.39904,
	add	r0, r4, r0, lsl #2	@ tmp461, pH264Ctx, tmp460,
	cmp	lr, ip	@ pH264Ctx_69(D)->CurrPic.framepoc, _139->frame.poc
	addge	r5, r5, #1	@ j, j,
	strge	r2, [r0, #4]	@ D.39906, pH264Ctx_69(D)->pListX
	cmp	r3, fp	@ i, D.39905
	bne	.L817	@,
.L919:
	add	r3, r4, #26880	@ ivtmp.958, pH264Ctx,
	mov	r1, r5	@, j
	mov	r2, r3	@ ivtmp.958, ivtmp.958
	add	r2, r2, #156	@ ivtmp.958, ivtmp.958,
	ldr	r3, .L923+20	@,
	mov	r0, r2	@ ivtmp.958, ivtmp.958
	str	r2, [sp, #12]	@ ivtmp.958, %sfp
	mov	r2, #4	@,
	bl	qsort	@
	ldr	r7, [r9, #2056]	@ D.39905, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	r7, #0	@ D.39905,
	beq	.L911	@,
.L854:
	mov	fp, r5	@ j, j
	mov	r3, #0	@ i,
	b	.L820	@
.L819:
	cmp	r3, r7	@ i, D.39905
	beq	.L920	@,
.L820:
	ldr	r2, [r6, #4]!	@ D.39904, MEM[base: _423, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ _151->is_reference, _151->is_reference
	cmp	r1, #3	@ _151->is_reference,
	bne	.L819	@,
	add	r1, fp, #6720	@ tmp476, j,
	ldr	r0, [r2, #416]	@ _151->frame.poc, _151->frame.poc
	add	r1, r1, #38	@ tmp476, tmp476,
	ldr	ip, [r10, #984]	@ pH264Ctx_69(D)->CurrPic.framepoc, pH264Ctx_69(D)->CurrPic.framepoc
	add	r2, r2, #400	@ D.39906, D.39904,
	add	r1, r4, r1, lsl #2	@ tmp477, pH264Ctx, tmp476,
	cmp	ip, r0	@ pH264Ctx_69(D)->CurrPic.framepoc, _151->frame.poc
	addlt	fp, fp, #1	@ j, j,
	strlt	r2, [r1, #4]	@ D.39906, pH264Ctx_69(D)->pListX
	cmp	r3, r7	@ i, D.39905
	bne	.L820	@,
.L920:
	add	r6, r5, #6720	@ D.39895, j,
	rsb	r7, r5, fp	@ D.39905, j, j
	add	r6, r6, #38	@ D.39895, D.39895,
	mov	r2, #4	@,
	ldr	r3, .L923+24	@,
	mov	r1, r7	@, D.39905
	add	r0, r4, r6, lsl #2	@ tmp484, pH264Ctx, D.39895,
	add	r0, r0, r2	@, tmp484,
	bl	qsort	@
	add	ip, r4, fp, lsl #2	@ tmp493, pH264Ctx, j,
	cmp	r5, #0	@ j,
	add	ip, ip, #26880	@ D.39900, tmp493,
	add	ip, ip, #156	@ D.39900, D.39900,
	beq	.L822	@,
.L852:
	add	r7, r7, #6784	@ D.39895, D.39905,
	add	r2, r4, #26880	@ ivtmp.1007, pH264Ctx,
	add	r7, r7, #7	@ D.39895, D.39895,
	add	r2, r2, #152	@ ivtmp.1007, ivtmp.1007,
	mov	r3, #0	@ j,
	add	r7, r4, r7, lsl #2	@ ivtmp.1016, pH264Ctx, D.39895,
.L823:
	add	r3, r3, #1	@ j, j,
	ldr	r1, [r2, #4]!	@ D.39906, MEM[base: _312, offset: 0B]
	cmp	r3, r5	@ j, j
	str	r1, [r7, #4]!	@ D.39906, MEM[base: _311, offset: 0B]
	bcc	.L823	@,
.L822:
	cmp	fp, r5	@ j, j
	bls	.L824	@,
	add	r3, r4, #27136	@ ivtmp.997, pH264Ctx,
	add	r6, r4, r6, lsl #2	@ ivtmp.988, pH264Ctx, D.39895,
	add	r3, r3, #28	@ ivtmp.997, ivtmp.997,
.L825:
	add	r5, r5, #1	@ j, j,
	ldr	r2, [r6, #4]!	@ D.39906, MEM[base: _3, offset: 0B]
	cmp	r5, fp	@ j, j
	str	r2, [r3, #4]!	@ D.39906, MEM[base: _41, offset: 0B]
	bne	.L825	@,
.L824:
	str	fp, [r8, #248]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	str	fp, [r8, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r1, [r9, #2060]	@ D.39905, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r1, #0	@ D.39905,
	beq	.L861	@,
	add	r0, r4, #26368	@ ivtmp.976, pH264Ctx,
	mov	r5, fp	@ j, j
	add	r0, r0, #188	@ ivtmp.976, ivtmp.976,
	mov	r3, #0	@ i,
	b	.L828	@
.L827:
	cmp	r3, r1	@ i, D.39905
	beq	.L921	@,
.L828:
	ldr	r2, [r0, #4]!	@ D.39904, MEM[base: _58, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	lr, [r2, #1]	@ zero_extendqisi2	@ _174->is_used, _174->is_used
	cmp	lr, #3	@ _174->is_used,
	bne	.L827	@,
	ldrb	lr, [r2, #401]	@ zero_extendqisi2	@ _174->frame.is_long_term, _174->frame.is_long_term
	cmp	lr, #1	@ _174->frame.is_long_term,
	bne	.L827	@,
	add	lr, r4, r5, lsl #2	@ D.39899, pH264Ctx, j,
	cmp	r3, r1	@ i, D.39905
	add	lr, lr, #24576	@ tmp513, D.39899,
	add	r2, r2, #400	@ D.39906, D.39904,
	add	r5, r5, #1	@ j, j,
	str	r2, [lr, #2460]	@ D.39906, MEM[(struct H264_CTX_S *)_465 + 27036B]
	str	r2, [lr, #2592]	@ D.39906, MEM[(struct H264_CTX_S *)_465 + 27168B]
	bne	.L828	@,
.L921:
	rsb	r1, fp, r5	@ D.39905, j, j
.L826:
	mov	r0, ip	@, D.39900
	ldr	r3, .L923+4	@,
	mov	r2, #4	@,
	bl	qsort	@
	ldr	r0, [r8, #244]	@ D.39905, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r3, .L923+4	@,
	mov	r2, #4	@,
	rsb	r1, r0, r5	@, D.39905, j
	add	r0, r4, r0, lsl #2	@ tmp524, pH264Ctx, D.39905,
	add	r0, r0, #27136	@, tmp524,
	add	r0, r0, #32	@,,
	bl	qsort	@
	mov	r3, r5	@ D.39898, j
	str	r5, [r8, #248]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r2, r5	@ D.39898, D.39898
	str	r5, [r8, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r1, #1	@ D.39901,
	b	.L829	@
.L915:
	ldr	lr, [r9, #2056]	@ D.39905, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	lr, #0	@ D.39905,
	moveq	r6, lr	@ j, D.39905
	beq	.L794	@,
	add	r1, r0, #26368	@ ivtmp.947, pH264Ctx,
	mov	r6, r3	@ j, pH264Ctx_69(D)->CurrSlice.slice_type
	add	r1, r1, #124	@ ivtmp.947, ivtmp.947,
.L803:
	ldr	r2, [r1, #4]!	@ D.39904, MEM[base: _352, offset: 0B]
	add	r0, sp, #216	@ tmp857,,
	add	ip, r0, r6, lsl #2	@ tmp388, tmp857, j,
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _100->is_reference, _100->is_reference
	cmp	r0, #0	@ _100->is_reference,
	strne	r2, [ip, #-192]	@ D.39904, fs_list0
	addne	r6, r6, #1	@ j, j,
	cmp	r3, lr	@ i, D.39905
	bne	.L803	@,
.L794:
	add	r7, r4, #26880	@ D.39907, pH264Ctx,
	mov	r1, r6	@, j
	ldr	r3, .L923+28	@,
	mov	r2, #4	@,
	add	r0, sp, #24	@ tmp858,,
	add	r7, r7, #156	@ D.39907, D.39907,
	bl	qsort	@
	add	ip, r4, #20480	@ D.39908, pH264Ctx,
	add	ip, ip, #244	@ D.39908, D.39908,
	mov	r5, #0	@ tmp394,
	mov	r2, r6	@, j
	str	r5, [r8, #244]	@ tmp394, pH264Ctx_69(D)->CurrSlice.listXsize
	add	r1, sp, #24	@ tmp859,,
	ldrb	r0, [r10, #555]	@ zero_extendqisi2	@ D.39905, pH264Ctx_69(D)->CurrPic.structure
	mov	r3, r7	@, D.39907
	str	ip, [sp]	@ D.39908,
	str	r5, [sp, #4]	@ tmp394,
	str	ip, [sp, #12]	@ D.39908, %sfp
	bl	GenPiclistfromFrmlist	@
	ldr	r6, [r9, #2060]	@ listltidx, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	ldr	ip, [sp, #12]	@ D.39908, %sfp
	cmp	r6, r5	@ listltidx,
	addeq	fp, sp, #152	@ tmp678,,
	beq	.L804	@,
	add	r3, r4, #26368	@ ivtmp.931, pH264Ctx,
	add	fp, sp, #152	@ tmp678,,
	add	r3, r3, #188	@ ivtmp.931, ivtmp.931,
	mov	r2, fp	@ ivtmp.941, tmp678
.L805:
	add	r5, r5, #1	@ i, i,
	ldr	r1, [r3, #4]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r5, r6	@ i, listltidx
	str	r1, [r2], #4	@ MEM[base: _14, offset: 0B], MEM[base: _11, offset: 0B]
	bne	.L805	@,
.L804:
	ldr	r3, .L923+16	@,
	mov	r2, #4	@,
	mov	r1, r6	@, listltidx
	mov	r0, fp	@, tmp678
	str	ip, [sp, #12]	@ D.39908, %sfp
	bl	qsort	@
	ldr	ip, [sp, #12]	@ D.39908, %sfp
	mov	r3, r7	@, D.39907
	ldrb	r0, [r10, #555]	@ zero_extendqisi2	@ D.39905, pH264Ctx_69(D)->CurrPic.structure
	mov	r2, r6	@, listltidx
	mov	r1, fp	@, tmp678
	str	ip, [sp]	@ D.39908,
	mov	ip, #1	@ tmp412,
	str	ip, [sp, #4]	@ tmp412,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [r8, #244]	@ D.39898, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r3, #0	@ tmp417,
	str	r3, [r8, #248]	@ tmp417, pH264Ctx_69(D)->CurrSlice.listXsize
	cmp	r2, #0	@ D.39898,
	bne	.L806	@,
.L917:
	ldr	r3, [r4]	@ pH264Ctx_69(D)->pstExtraData, pH264Ctx_69(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _123->s32DecOrderOutput, _123->s32DecOrderOutput
	cmp	r3, #2	@ _123->s32DecOrderOutput,
	bne	.L908	@,
	ldrb	r3, [r10, #555]	@ zero_extendqisi2	@ D.39903, pH264Ctx_69(D)->CurrPic.structure
	cmp	r3, #0	@ D.39903,
	beq	.L922	@,
	cmp	r3, #1	@ D.39903,
	ldr	r3, [r10, #960]	@ pH264Ctx_69(D)->CurrPic.frame_store, pH264Ctx_69(D)->CurrPic.frame_store
	addeq	r3, r3, #436	@ D.39906, pH264Ctx_69(D)->CurrPic.frame_store,
	addne	r3, r3, #472	@ D.39906, pH264Ctx_69(D)->CurrPic.frame_store,
	str	r3, [r9, #2460]	@ D.39906, pH264Ctx_69(D)->pListX
.L809:
	mov	r3, #0	@ D.39898,
	mov	r2, #1	@ D.39898,
	b	.L806	@
.L922:
	ldr	r3, [r10, #960]	@ pH264Ctx_69(D)->CurrPic.frame_store, pH264Ctx_69(D)->CurrPic.frame_store
	add	r3, r3, #400	@ D.39906, pH264Ctx_69(D)->CurrPic.frame_store,
	str	r3, [r9, #2460]	@ D.39906, pH264Ctx_69(D)->pListX
	b	.L809	@
.L842:
	ldr	r6, [r9, #2592]	@ D.39906, pH264Ctx_69(D)->pListX
	b	.L845	@
.L912:
	mov	r3, r5, asl #2	@ D.39895, j,
	mov	r1, r7	@, D.39905
	str	r3, [sp, #12]	@ D.39895, %sfp
	mov	r2, r3	@ D.39895, D.39895
	ldr	r3, .L923+12	@,
	add	r0, ip, r2	@, tmp683, D.39895
	mov	r2, #4	@,
	str	ip, [sp, #16]	@ tmp683, %sfp
	bl	qsort	@
	subs	fp, r5, #0	@ j, j
	ldr	ip, [sp, #16]	@ tmp683, %sfp
	addeq	r6, sp, #88	@ tmp675,,
	bne	.L853	@,
	b	.L837	@
.L911:
	add	r6, r5, #6720	@ D.39895, j,
	mov	r2, #4	@,
	add	r6, r6, #38	@ D.39895, D.39895,
	ldr	r3, .L923+24	@,
	mov	r1, r7	@, D.39905
	add	ip, r4, r6, lsl #2	@ tmp647, pH264Ctx, D.39895,
	add	ip, ip, r2	@ D.39900, tmp647,
	str	ip, [sp, #16]	@ D.39900, %sfp
	mov	r0, ip	@, D.39900
	bl	qsort	@
	subs	fp, r5, #0	@ j, j
	ldr	ip, [sp, #16]	@ D.39900, %sfp
	bne	.L852	@,
	b	.L824	@
.L859:
	mov	r5, r6	@ j, j
	b	.L798	@
.L918:
	add	ip, sp, #24	@ tmp683,,
	ldr	r3, .L923+8	@,
	mov	r2, #4	@,
	mov	r1, fp	@, D.39905
	mov	r0, ip	@, tmp683
	str	ip, [sp, #12]	@ tmp683, %sfp
	bl	qsort	@
	ldr	r7, [r9, #2056]	@ D.39905, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	ldr	ip, [sp, #12]	@ tmp683, %sfp
	cmp	r7, #0	@ D.39905,
	addne	r6, r4, #26368	@ ivtmp.1091, pH264Ctx,
	movne	r5, fp	@ j, D.39905
	addne	r6, r6, #124	@ ivtmp.1091, ivtmp.1091,
	bne	.L856	@,
	mov	r0, ip	@, tmp683
	ldr	r3, .L923+12	@,
	mov	r2, #4	@,
	mov	r1, r7	@, D.39905
	str	ip, [sp, #12]	@ tmp683, %sfp
	mov	fp, r7	@ j, tmp1
	bl	qsort	@
	add	r6, sp, #88	@ tmp675,,
	ldr	ip, [sp, #12]	@ tmp683, %sfp
	b	.L837	@
.L815:
	add	r3, r0, #26880	@ ivtmp.958, pH264Ctx,
	mov	r1, fp	@, D.39905
	mov	r2, r3	@ ivtmp.958, ivtmp.958
	add	r2, r2, #156	@ ivtmp.958, ivtmp.958,
	ldr	r3, .L923+20	@,
	mov	r0, r2	@ ivtmp.958, ivtmp.958
	str	r2, [sp, #12]	@ ivtmp.958, %sfp
	mov	r2, #4	@,
	bl	qsort	@
	ldr	r7, [r9, #2056]	@ D.39905, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	r7, #0	@ D.39905,
	addne	r6, r4, #26368	@ ivtmp.1091, pH264Ctx,
	movne	r5, fp	@ j, D.39905
	addne	r6, r6, #124	@ ivtmp.1091, ivtmp.1091,
	bne	.L854	@,
	ldr	r5, [sp, #12]	@ ivtmp.958, %sfp
	mov	r2, #4	@,
	ldr	r3, .L923+24	@,
	mov	r1, r7	@, D.39905
	mov	fp, r7	@ j, tmp1
	mov	r0, r5	@, ivtmp.958
	bl	qsort	@
	mov	ip, r5	@ D.39900, ivtmp.958
	b	.L824	@
.L858:
	mov	r6, ip	@ j, D.39905
	b	.L795	@
.L861:
	mov	r5, fp	@ j, j
	b	.L826	@
.L924:
	.align	2
.L923:
	.word	compare_pic_by_pic_num_desc
	.word	compare_pic_by_lt_pic_num_asc
	.word	compare_fs_by_poc_desc
	.word	compare_fs_by_poc_asc
	.word	compare_fs_by_lt_pic_idx_asc
	.word	compare_pic_by_poc_desc
	.word	compare_pic_by_poc_asc
	.word	compare_fs_by_frame_num_desc
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
	bx	lr	@
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
	ldr	r4, [r3, #2052]	@ D.39932, pH264Ctx_8(D)->DPB.used_size
	cmp	r4, #0	@ D.39932,
	beq	.L931	@,
	ldr	r3, [r3, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	add	r2, r0, #49152	@ tmp132, pH264Ctx,
	ldr	r5, [r2, #980]	@ curr_poc, pH264Ctx_8(D)->CurrPic.thispoc
	ldr	lr, [r3, #524]	@ _11->poc, _11->poc
	rsb	lr, lr, r5	@ D.39934, _11->poc, curr_poc
	cmp	lr, #0	@ nearest_poc_diff,
	rsblt	lr, lr, #0	@ nearest_poc_diff, D.39934,
	cmp	r4, #1	@ D.39932,
	bls	.L932	@,
	add	r1, r0, #26368	@ ivtmp.1118, pH264Ctx,
	mov	r2, #1	@ i,
	add	r1, r1, #64	@ ivtmp.1118, ivtmp.1118,
	mov	r0, #0	@ nearest_pic_id,
.L930:
	ldr	ip, [r1, #4]!	@ D.39933, MEM[base: _1, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	r3, [ip, #524]	@ _15->poc, _15->poc
	rsb	r3, r3, r5	@ D.39934, _15->poc, curr_poc
	cmp	r3, #0	@ nearest_poc_diff,
	rsblt	r3, r3, #0	@ nearest_poc_diff, D.39934,
	cmp	r3, lr	@ nearest_poc_diff, nearest_poc_diff
	ldrlt	r0, [ip, #184]	@ nearest_pic_id, _15->fs_image.image_id
	movlt	lr, r3	@ nearest_poc_diff, nearest_poc_diff
	cmp	r2, r4	@ i, D.39932
	bne	.L930	@,
	ldmfd	sp!, {r4, r5, pc}	@
.L932:
	mov	r0, #0	@ nearest_pic_id,
	ldmfd	sp!, {r4, r5, pc}	@
.L931:
	mvn	r0, #0	@ D.39931,
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
	bne	.L967	@,
	ldr	lr, [r3, #244]	@ D.39985, pH264Ctx_10(D)->CurrSlice.listXsize
	add	r5, r0, #26880	@ ivtmp.1144, pH264Ctx,
	mov	r7, ip	@ j, i
	cmp	lr, #0	@ D.39985,
	mov	r4, r5	@ ivtmp.1147, ivtmp.1144
	mov	r6, r5	@ ivtmp.1131, ivtmp.1147
	add	r4, r4, #32	@ ivtmp.1147, ivtmp.1147,
	add	r5, r5, #28	@ ivtmp.1144, ivtmp.1144,
	add	r6, r6, #152	@ ivtmp.1131, ivtmp.1131,
	beq	.L943	@,
.L969:
	mov	r2, r6	@ ivtmp.1131, ivtmp.1131
	mov	r0, #32	@ minrefidx,
	mov	r3, #0	@ j,
	b	.L941	@
.L940:
	add	r3, r3, #1	@ j, j,
	cmp	r3, lr	@ j, D.39985
	beq	.L968	@,
.L941:
	ldr	r1, [r2, #4]!	@ MEM[base: _61, offset: 0B], MEM[base: _61, offset: 0B]
	ldr	r1, [r1, #4]	@ _34->frame_store, _34->frame_store
	ldr	r1, [r1, #552]	@ _35->apc_idc, _35->apc_idc
	cmp	r1, ip	@ _35->apc_idc, i
	bne	.L940	@,
	cmp	r0, r3	@ minrefidx, j
	movcs	r0, r3	@ minrefidx, j
	add	r3, r3, #1	@ j, j,
	cmp	r3, lr	@ j, D.39985
	str	r0, [r4, #-4]	@ minrefidx, MEM[base: _67, offset: 4294967292B]
	str	r0, [r5, #4]	@ minrefidx, MEM[base: _57, offset: 4B]
	bne	.L941	@,
.L968:
	cmp	r0, #31	@ minrefidx,
	bhi	.L943	@,
.L942:
	add	ip, ip, #1	@ i, i,
	add	r5, r5, #8	@ ivtmp.1144, ivtmp.1144,
	cmp	ip, #16	@ i,
	add	r4, r4, #8	@ ivtmp.1147, ivtmp.1147,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	lr, #0	@ D.39985,
	bne	.L969	@,
.L943:
	str	r7, [r4, #-4]	@ j, MEM[base: _18, offset: 4294967292B]
	str	r7, [r5, #4]	@ j, MEM[base: _68, offset: 4B]
	b	.L942	@
.L967:
	ldr	r5, [r3, #244]	@ D.39985, pH264Ctx_10(D)->CurrSlice.listXsize
	add	r6, r0, #26880	@ ivtmp.1164, pH264Ctx,
	mov	lr, #0	@ i,
	cmp	r5, #0	@ D.39985,
	mov	r7, r6	@ ivtmp.1151, ivtmp.1164
	mov	r8, lr	@ j, i
	add	r6, r6, #28	@ ivtmp.1164, ivtmp.1164,
	add	r7, r7, #152	@ ivtmp.1151, ivtmp.1151,
	beq	.L947	@,
.L971:
	mov	r1, r7	@ ivtmp.1151, ivtmp.1151
	mov	r4, #32	@ minrefidx,
	mov	r2, #0	@ j,
	b	.L945	@
.L944:
	add	r2, r2, #1	@ j, j,
	cmp	r2, r5	@ j, D.39985
	beq	.L970	@,
.L945:
	ldr	r3, [r1, #4]!	@ D.39983, MEM[base: _45, offset: 0B]
	ldr	ip, [r3, #4]	@ _14->frame_store, _14->frame_store
	ldrb	r0, [r3]	@ zero_extendqisi2	@ _14->structure, _14->structure
	ldr	r3, [ip, #552]	@ _15->apc_idc, _15->apc_idc
	mov	r3, r3, asl #1	@ D.39985, _15->apc_idc,
	cmp	r0, #2	@ _14->structure,
	orreq	r3, r3, #1	@,, D.39985, D.39985
	cmp	r3, lr	@ D.39985, i
	bne	.L944	@,
	cmp	r4, r2	@ minrefidx, j
	movcs	r4, r2	@ minrefidx, j
	add	r2, r2, #1	@ j, j,
	cmp	r2, r5	@ j, D.39985
	str	r4, [r6]	@ minrefidx, MEM[base: _6, offset: 0B]
	bne	.L945	@,
.L970:
	cmp	r4, #31	@ minrefidx,
	bhi	.L947	@,
.L946:
	add	lr, lr, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.1164, ivtmp.1164,
	cmp	lr, #32	@ i,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r5, #0	@ D.39985,
	bne	.L971	@,
.L947:
	str	r8, [r6]	@ j, MEM[base: _4, offset: 0B]
	b	.L946	@
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	FindNearestPOCPicId	@
	add	r5, r4, #20480	@ tmp141, pH264Ctx,
	mvn	r6, #0	@ tmp125,
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrSlice.slice_type, pH264Ctx_4(D)->CurrSlice.slice_type
	str	r6, [r5, #1828]	@ tmp125, pH264Ctx_4(D)->CurrSlice.picid_refidx0
	cmp	r3, #2	@ pH264Ctx_4(D)->CurrSlice.slice_type,
	str	r0, [r5, #1832]	@, pH264Ctx_4(D)->CurrSlice.picid_nearpoc
	beq	.L980	@,
	mov	r0, r4	@, pH264Ctx
	bl	InitListX	@
	cmp	r0, #0	@,
	bne	.L976	@,
	mov	r0, r4	@, pH264Ctx
	bl	ReorderListX	@
	mov	r0, r4	@, pH264Ctx
	bl	RepairList	@
	cmp	r0, #0	@,
	bne	.L976	@,
	mov	r0, r4	@, pH264Ctx
	add	r4, r4, #24576	@ tmp136, pH264Ctx,
	bl	FindMinRefIdx	@
	mov	r0, #0	@ D.39995,
	ldr	r3, [r4, #2460]	@ D.39998, pH264Ctx_4(D)->pListX
	cmp	r3, #0	@ D.39998,
	ldrne	r3, [r3, #4]	@ _20->frame_store, _20->frame_store
	ldrne	r6, [r3, #184]	@ D.39995, _21->fs_image.image_id
	str	r6, [r5, #1828]	@ D.39995, pH264Ctx_4(D)->CurrSlice.picid_refidx0
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L980:
	mov	r0, #0	@ tmp131,
	str	r0, [r5, #244]	@ tmp131, pH264Ctx_4(D)->CurrSlice.listXsize
	str	r0, [r5, #248]	@ tmp131, pH264Ctx_4(D)->CurrSlice.listXsize
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L976:
	mvn	r0, #0	@ D.39995,
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	beq	.L999	@,
.L982:
	ldr	r3, [r7, #2164]	@ pH264Ctx_10(D)->TotalFsNum, pH264Ctx_10(D)->TotalFsNum
	cmp	r3, #0	@ pH264Ctx_10(D)->TotalFsNum,
	addne	r5, r9, #27392	@ ivtmp.1202, pH264Ctx,
	movne	r8, #0	@ i,
	addne	r5, r5, #124	@ ivtmp.1202, ivtmp.1202,
	movne	r6, r8	@ tmp155, i
	beq	.L989	@,
.L988:
	sub	r4, r5, #16	@ ivtmp.1188, ivtmp.1202,
	strb	r6, [r5, #-211]	@ tmp155, MEM[base: _51, offset: 4294967085B]
	strb	r6, [r5, #-210]	@ tmp155, MEM[base: _51, offset: 4294967086B]
.L987:
	ldr	r1, [r4, #4]!	@ D.40041, MEM[base: _38, offset: 0B]
	cmp	r1, #0	@ D.40041,
	beq	.L986	@,
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r4]	@ tmp155, MEM[base: _38, offset: 0B]
.L986:
	cmp	r4, r5	@ ivtmp.1188, ivtmp.1202
	bne	.L987	@,
	ldr	r3, [r7, #2164]	@ pH264Ctx_10(D)->TotalFsNum, pH264Ctx_10(D)->TotalFsNum
	add	r8, r8, #1	@ i, i,
	add	r5, r5, #560	@ ivtmp.1202, ivtmp.1202,
	cmp	r3, r8	@ pH264Ctx_10(D)->TotalFsNum, i
	bhi	.L988	@,
.L989:
	ldr	r1, [r7, #2168]	@ D.40039, pH264Ctx_10(D)->TotalPmvNum
	cmp	r1, #0	@ D.40039,
	beq	.L1000	@,
	add	r2, r9, #51200	@ ivtmp.1174, pH264Ctx,
	mov	r3, #0	@ i,
	add	r2, r2, #44	@ ivtmp.1174, ivtmp.1174,
	mov	r0, r3	@ tmp153, i
.L990:
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ tmp153, MEM[base: _19, offset: 0B]
	cmp	r3, r1	@ i, D.40039
	bne	.L990	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L999:
	add	r0, r9, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	b	.L982	@
.L1000:
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
	ldr	r0, [r6, #1272]	@ D.40050, pH264Ctx_4(D)->CurWidthInMb
	.pad #8
	sub	sp, sp, #8	@,,
	mla	r3, lr, r3, ip	@ tmp170, tmp169, pH264Ctx_4(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_4(D)->PPS
	ldr	r1, [r6, #1276]	@ D.40050, pH264Ctx_4(D)->CurHeightInMb
	ldr	r3, [r3, #28]	@ pPPS_8->seq_parameter_set_id, pPPS_8->seq_parameter_set_id
	mla	r4, r4, r3, r2	@ pSPS, tmp173, pPPS_8->seq_parameter_set_id, pH264Ctx_4(D)->SPS
	ldrb	r3, [r4, #18]	@ zero_extendqisi2	@ D.40050, pSPS_12->frame_mbs_only_flag
	ldr	ip, [r4, #3960]	@ pSPS_12->pic_height_in_map_units_minus1, pSPS_12->pic_height_in_map_units_minus1
	rsb	r3, r3, #2	@ D.40050, D.40050,
	ldr	r2, [r4, #3956]	@ pSPS_12->pic_width_in_mbs_minus1, pSPS_12->pic_width_in_mbs_minus1
	mla	r3, ip, r3, r3	@ newh, pSPS_12->pic_height_in_map_units_minus1, D.40050, D.40050
	add	r2, r2, #1	@ neww, pSPS_12->pic_width_in_mbs_minus1,
	cmp	r2, r0	@ neww, D.40050
	cmpeq	r3, r1	@, newh, D.40050
	movne	ip, #1	@ tmp190,
	moveq	ip, #0	@ tmp190,
	bne	.L1003	@,
	add	r8, r7, #24576	@ tmp192, pH264Ctx,
	ldr	lr, [r4, #3980]	@ D.40055, pSPS_12->dpb_size_plus1
	ldr	r8, [r8, #2048]	@ pH264Ctx_4(D)->DPB.size, pH264Ctx_4(D)->DPB.size
	add	r8, r8, #1	@ D.40048, pH264Ctx_4(D)->DPB.size,
	cmp	lr, r8	@ D.40055, D.40048
	movls	r2, ip	@ D.40048, tmp190
	movls	r0, r2	@ ReRangeFlg, D.40048
	bls	.L1004	@,
.L1003:
	ldr	ip, .L1009	@ tmp195,
	ldr	ip, [ip]	@ D.40053, g_event_report
	cmp	ip, #0	@ D.40053,
	beq	.L1008	@,
	add	lr, r7, #49152	@ tmp206, pH264Ctx,
	mov	r0, r0, asl #4	@ tmp197, D.40050,
	mov	r1, r1, asl #4	@ tmp199, D.40050,
	strh	r0, [sp]	@ movhi	@ tmp197, para
	strh	r1, [sp, #2]	@ movhi	@ tmp199, para
	mov	r2, r2, asl #4	@ tmp201, neww,
	mov	r3, r3, asl #4	@ tmp203, newh,
	strh	r2, [sp, #4]	@ movhi	@ tmp201, para
	ldr	r0, [lr, #3688]	@, pH264Ctx_4(D)->ChanID
	mov	r2, sp	@,
	strh	r3, [sp, #6]	@ movhi	@ tmp203, para
	mov	r1, #2	@,
	blx	ip	@ D.40053
	ldr	lr, [r4, #3980]	@ D.40055, pSPS_12->dpb_size_plus1
	mov	r2, #1	@ D.40048,
	mov	r0, r2	@ ReRangeFlg, D.40048
.L1004:
	add	r3, r7, #16384	@ tmp209, pH264Ctx,
	ldr	r6, [r6, #2044]	@ pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id
	ldr	ip, [r4, #744]	@ pSPS_12->seq_parameter_set_id, pSPS_12->seq_parameter_set_id
	ldr	r1, [r3, #1184]	@ pH264Ctx_4(D)->CurrSPS.dpb_size_plus1, pH264Ctx_4(D)->CurrSPS.dpb_size_plus1
	cmp	r6, ip	@ pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id, pSPS_12->seq_parameter_set_id
	cmpeq	r1, lr	@, pH264Ctx_4(D)->CurrSPS.dpb_size_plus1, D.40055
	movne	r3, #1	@ dpb_changed,
	moveq	r3, #0	@ dpb_changed,
	orr	r2, r3, r2	@ dpb_changed, dpb_changed, D.40048
	str	r2, [r5]	@ dpb_changed, *p_dpb_changed_59(D)
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1008:
	mov	r2, #1	@ D.40048,
	ldr	lr, [r4, #3980]	@ D.40055, pSPS_12->dpb_size_plus1
	mov	r0, r2	@ ReRangeFlg, D.40048
	b	.L1004	@
.L1010:
	.align	2
.L1009:
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
	sub	r2, r2, #5	@ D.40083, pH264Ctx_22(D)->CurrSlice.nal_unit_type,
	clz	r2, r2	@ D.40083, D.40083
	mov	r2, r2, lsr #5	@ D.40083, D.40083,
	ldr	r3, [r3, #28]	@ pps_29->seq_parameter_set_id, pps_29->seq_parameter_set_id
	mla	r5, r5, r3, lr	@ sps, tmp245, pps_29->seq_parameter_set_id, pH264Ctx_22(D)->SPS
	ldr	r1, [r5, #2908]	@ D.40085, sps_33->pic_order_cnt_type
	ldr	r3, [r5, #2904]	@ sps_33->log2_max_frame_num_minus4, sps_33->log2_max_frame_num_minus4
	cmp	r1, ip	@ D.40085,
	ldr	lr, [r5, #2912]	@ D.40085, sps_33->log2_max_pic_order_cnt_lsb_minus4
	add	r3, r3, #4	@ D.40085, sps_33->log2_max_frame_num_minus4,
	mov	r3, ip, asl r3	@ MaxFrameNum, tmp249,
	beq	.L1013	@,
	bcc	.L1014	@,
	cmp	r1, #2	@ D.40085,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r2, #0	@ D.40083,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	bne	.L1070	@,
	ldr	r1, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r1, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	bne	.L1047	@,
	ldr	r2, [r4, #3476]	@ D.40085, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r0, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	ldr	r1, [r4, #3484]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	cmp	r2, r0	@ D.40085, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	addcc	r1, r1, r3	@ D.40085, D.40085, MaxFrameNum
	strcc	r1, [r4, #3480]	@ D.40085, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	bcs	.L1049	@,
.L1050:
	add	r3, r1, r2	@ D.40085, D.40085, D.40085
	str	r3, [r4, #3468]	@ D.40085, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r0, [r6, #232]	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	mov	r3, r3, asl #1	@ D.40085, D.40085,
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc,
	subeq	r3, r3, #1	@ D.40087, D.40085,
	str	r3, [r4, #3456]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ThisPOC
	ldrb	r0, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1053	@,
	str	r3, [r4, #3452]	@ D.40087, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r3, [r4, #3448]	@ D.40087, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3444]	@ D.40087, pH264Ctx_22(D)->CurrPOC.toppoc
.L1046:
	str	r2, [r4, #3472]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r1, [r4, #3484]	@ D.40087, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1014:
	cmp	r2, #0	@ D.40083,
	add	lr, lr, #4	@ D.40085, D.40085,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	mov	ip, ip, asl lr	@ MaxPicOrderCntLsb, tmp249,
	bne	.L1020	@,
	ldr	r3, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	bne	.L1018	@,
	ldr	lr, [r4, #3420]	@ D.40091, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	ldr	r1, [r4, #3424]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	mov	r2, lr	@ D.40085, D.40091
.L1019:
	ldr	r0, [r4, #3412]	@ D.40085, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	cmp	r0, r1	@ D.40085, D.40085
	bcs	.L1017	@,
	rsb	r3, r0, r1	@ D.40085, D.40085, D.40085
	cmp	r3, ip, lsr #1	@ D.40085, MaxPicOrderCntLsb,
	addcs	r2, r2, ip	@ D.40085, D.40085, MaxPicOrderCntLsb
	strcs	r2, [r4, #3428]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	bcc	.L1017	@,
.L1021:
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1023	@,
.L1072:
	ldr	r3, [r4, #3416]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom
	add	r2, r2, r0	@ D.40087, D.40085, D.40085
	str	r2, [r4, #3444]	@ D.40087, pH264Ctx_22(D)->CurrPOC.toppoc
	add	r3, r2, r3	@ D.40087, D.40087, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom
	str	r3, [r4, #3448]	@ D.40087, pH264Ctx_22(D)->CurrPOC.bottompoc
	cmp	r3, r2	@ D.40087, D.40087
	movge	r3, r2	@ D.40087, D.40087
	str	r3, [r4, #3456]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ThisPOC
.L1024:
	ldr	r2, [r4, #3476]	@ D.40085, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r1, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r3, [r4, #3452]	@ D.40087, pH264Ctx_22(D)->CurrPOC.framepoc
	cmp	r2, r1	@ D.40085, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	strne	r2, [r4, #3472]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	ldr	r3, [r6, #232]	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc,
	ldrne	r2, [r4, #3412]	@ pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	ldrne	r3, [r4, #3428]	@ pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	strne	r2, [r4, #3424]	@ pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	strne	r3, [r4, #3420]	@ pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1013:
	cmp	r2, #0	@ D.40083,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	movne	r3, #0	@ tmp335,
	strne	r3, [r4, #3480]	@ tmp335, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	bne	.L1028	@,
	ldr	r1, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r1, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	beq	.L1029	@,
	mov	r3, r2	@ D.40085, D.40083
	str	r2, [r4, #3484]	@ D.40083, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	str	r2, [r4, #3472]	@ D.40083, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
.L1030:
	str	r3, [r4, #3480]	@ D.40085, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
.L1028:
	ldr	r3, [r5, #2924]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, #0	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle,
	beq	.L1032	@,
	ldr	r3, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r0, [r4, #3480]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	add	r0, r3, r0	@ D.40089, pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r0, [r4, #3468]	@ D.40089, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r7, [r6, #232]	@ D.40089, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	cmp	r7, #0	@ D.40089,
	bne	.L1034	@,
	cmp	r0, #0	@ D.40089,
	beq	.L1035	@,
	sub	r0, r0, #1	@ D.40089, D.40089,
	str	r0, [r4, #3468]	@ D.40089, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
.L1034:
	mov	r3, #0	@ tmp381,
	str	r3, [r4, #3500]	@ tmp381, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ D.40085, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r3	@ D.40085,
	bgt	.L1055	@,
	cmp	r0, #0	@ D.40089,
	beq	.L1038	@,
.L1073:
	sub	r8, r0, #1	@ D.40085, D.40089,
	mov	r0, r8	@, D.40085
	bl	__aeabi_uidiv	@
	mov	r9, r0	@ D.40085,
	mov	r0, r8	@, D.40085
	str	r9, [r4, #3492]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PicOrderCntCycleCnt
	ldr	r1, [r5, #2924]	@, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	bl	__aeabi_uidivmod	@
	ldr	r0, [r4, #3500]	@ pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	mul	r0, r0, r9	@ D.40087, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle, D.40085
	str	r0, [r4, #3496]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ D.40087,
	str	r1, [r4, #3488]	@ D.40087, pH264Ctx_22(D)->CurrPOC.FrameNumInPicOrderCntCycle
	blt	.L1039	@,
	add	r2, r5, #2912	@ ivtmp.1213, sps,
	mov	r3, #0	@ i,
	add	r2, r2, #12	@ ivtmp.1213, ivtmp.1213,
.L1040:
	add	r3, r3, #1	@ i, i,
	ldr	ip, [r2, #4]!	@ MEM[base: _236, offset: 0B], MEM[base: _236, offset: 0B]
	cmp	r1, r3	@ D.40087, i
	add	r0, r0, ip	@ D.40087, D.40087, MEM[base: _236, offset: 0B]
	str	r0, [r4, #3496]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	bge	.L1040	@,
.L1039:
	cmp	r7, #0	@ D.40089,
	ldreq	r3, [r5, #2916]	@ sps_33->offset_for_non_ref_pic, sps_33->offset_for_non_ref_pic
	addeq	r0, r0, r3	@ D.40087, D.40087, sps_33->offset_for_non_ref_pic
	streq	r0, [r4, #3496]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1042	@,
	ldr	r2, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	ldr	r1, [r4, #3464]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	add	r2, r0, r2	@ D.40087, D.40087, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	str	r2, [r4, #3444]	@ D.40087, pH264Ctx_22(D)->CurrPOC.toppoc
	ldr	r3, [r5, #2920]	@ sps_33->offset_for_top_to_bottom_field, sps_33->offset_for_top_to_bottom_field
	add	r3, r2, r3	@ D.40087, D.40087, sps_33->offset_for_top_to_bottom_field
	add	r0, r3, r1	@ D.40087, D.40087, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	str	r0, [r4, #3448]	@ D.40087, pH264Ctx_22(D)->CurrPOC.bottompoc
	cmp	r0, r2	@ D.40087, D.40087
	movge	r0, r2	@ D.40087, D.40087
	str	r0, [r4, #3456]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ThisPOC
.L1043:
	ldr	r2, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r3, [r4, #3480]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r0, [r4, #3452]	@ D.40087, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r2, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r3, [r4, #3484]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1018:
	ldr	lr, [r4, #3440]	@ D.40091, pH264Ctx_22(D)->CurrPOC.last_pic_bottom_field
	cmp	lr, #0	@ D.40091,
	beq	.L1071	@,
.L1020:
	ldr	r0, [r4, #3412]	@ D.40085, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	mov	r3, #0	@ tmp254,
	mov	lr, r3	@ D.40091, tmp254
	mov	r2, r1	@ D.40085, D.40085
	str	r3, [r4, #3420]	@ tmp254, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	str	r3, [r4, #3424]	@ tmp254, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
.L1017:
	cmp	r0, r1	@ D.40085, D.40085
	bls	.L1022	@,
	rsb	r1, r1, r0	@ D.40085, D.40085, D.40085
	cmp	r1, ip, lsr #1	@ D.40085, MaxPicOrderCntLsb,
	rsbhi	r2, ip, r2	@ D.40085, MaxPicOrderCntLsb, D.40085
	strhi	r2, [r4, #3428]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	bhi	.L1021	@,
.L1022:
	str	lr, [r4, #3428]	@ D.40091, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	beq	.L1072	@,
.L1023:
	ldrb	r3, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	add	r3, r2, r0	@ D.40087, D.40085, D.40085
	streq	r3, [r4, #3444]	@ D.40087, pH264Ctx_22(D)->CurrPOC.toppoc
	strne	r3, [r4, #3448]	@ D.40087, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3456]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1024	@
.L1070:
	mov	r3, #0	@ tmp463,
	ldr	r2, [r4, #3476]	@ D.40085, pH264Ctx_22(D)->CurrPOC.frame_num
	mov	r1, r3	@ D.40087, tmp463
	str	r3, [r4, #3480]	@ tmp463, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r3, [r4, #3448]	@ tmp463, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3444]	@ tmp463, pH264Ctx_22(D)->CurrPOC.toppoc
	str	r3, [r4, #3452]	@ tmp463, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r3, [r4, #3456]	@ tmp463, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1046	@
.L1032:
	str	r3, [r4, #3468]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r7, [r6, #232]	@ D.40089, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
.L1035:
	mov	r0, #0	@ tmp536,
	str	r0, [r4, #3500]	@ tmp536, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r3, [r5, #2924]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, r0	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle,
	ble	.L1038	@,
.L1055:
	add	ip, r5, #2912	@ ivtmp.1224, sps,
	mov	r3, #0	@ D.40087,
	add	ip, ip, #12	@ ivtmp.1224, ivtmp.1224,
	mov	r2, r3	@ i, D.40087
.L1037:
	ldr	r1, [ip, #4]!	@ MEM[base: _55, offset: 0B], MEM[base: _55, offset: 0B]
	add	r2, r2, #1	@ i, i,
	add	r3, r3, r1	@ D.40087, D.40087, MEM[base: _55, offset: 0B]
	str	r3, [r4, #3500]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ D.40085, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r2	@ D.40085, i
	bgt	.L1037	@,
	cmp	r0, #0	@ D.40089,
	bne	.L1073	@,
.L1038:
	mov	r0, #0	@ tmp409,
	str	r0, [r4, #3496]	@ tmp409, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	b	.L1039	@
.L1042:
	ldrb	r3, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	ldrne	r2, [r5, #2920]	@ sps_33->offset_for_top_to_bottom_field, sps_33->offset_for_top_to_bottom_field
	ldreq	r3, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	ldrne	r3, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	addne	r0, r0, r2	@ D.40087, D.40087, sps_33->offset_for_top_to_bottom_field
	addeq	r0, r0, r3	@ D.40087, D.40087, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	streq	r0, [r4, #3444]	@ D.40087, pH264Ctx_22(D)->CurrPOC.toppoc
	addne	r0, r0, r3	@ D.40087, D.40087, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	strne	r0, [r4, #3448]	@ D.40087, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r0, [r4, #3456]	@ D.40087, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1043	@
.L1029:
	ldr	r1, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r2, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	cmp	r1, r2	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	bcs	.L1031	@,
	ldr	r2, [r4, #3484]	@ pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	add	r3, r3, r2	@ D.40085, MaxFrameNum, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	str	r3, [r4, #3480]	@ D.40085, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	b	.L1028	@
.L1053:
	ldrb	r0, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	str	r3, [r4, #3452]	@ D.40087, pH264Ctx_22(D)->CurrPOC.framepoc
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	streq	r3, [r4, #3444]	@ D.40087, pH264Ctx_22(D)->CurrPOC.toppoc
	strne	r3, [r4, #3448]	@ D.40087, pH264Ctx_22(D)->CurrPOC.bottompoc
	b	.L1046	@
.L1047:
	str	r2, [r4, #3472]	@ D.40083, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	mov	r1, r2	@ D.40085, D.40083
	str	r2, [r4, #3484]	@ D.40083, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldr	r2, [r4, #3476]	@ D.40085, pH264Ctx_22(D)->CurrPOC.frame_num
.L1049:
	str	r1, [r4, #3480]	@ D.40085, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	b	.L1050	@
.L1071:
	ldr	r3, [r4, #3444]	@ D.40085, pH264Ctx_22(D)->CurrPOC.toppoc
	mov	r2, r1	@ D.40085, D.40085
	str	lr, [r4, #3420]	@ D.40091, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	mov	r1, r3	@ D.40085, D.40085
	str	r3, [r4, #3424]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	b	.L1019	@
.L1031:
	ldr	r3, [r4, #3484]	@ D.40085, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	b	.L1030	@
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
	ldrb	r3, [r6, #555]	@ zero_extendqisi2	@ D.40145, pH264Ctx_19(D)->CurrPic.structure
	mla	r1, r4, ip, r1	@ tmp217, tmp216, pH264Ctx_19(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_19(D)->PPS
	cmp	r3, #0	@ D.40145,
	ldr	r1, [r1, #28]	@ _24->seq_parameter_set_id, _24->seq_parameter_set_id
	mla	r2, lr, r1, r2	@ tmp224, tmp223, _24->seq_parameter_set_id, pH264Ctx_19(D)->SPS
	add	lr, r0, #24576	@ tmp317, pH264Ctx,
	ldr	r2, [r2, #2904]	@ pSPS_27->log2_max_frame_num_minus4, pSPS_27->log2_max_frame_num_minus4
	add	r2, r2, #4	@ D.40143, pSPS_27->log2_max_frame_num_minus4,
	mov	r7, r7, asl r2	@ MaxFrameNum, tmp227,
	beq	.L1075	@,
	sub	r5, r3, #1	@ D.40146, D.40145,
	sub	r4, r3, #2	@ D.40146, D.40145,
	ldr	r3, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	clz	r5, r5	@ D.40146, D.40146
	clz	r4, r4	@ D.40146, D.40146
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer,
	mov	r5, r5, lsr #5	@ D.40146, D.40146,
	addne	ip, r0, #26368	@ ivtmp.1270, pH264Ctx,
	mov	r4, r4, lsr #5	@ D.40146, D.40146,
	movne	r2, #0	@ i,
	addne	ip, ip, #124	@ ivtmp.1270, ivtmp.1270,
	beq	.L1095	@,
.L1094:
	ldr	r1, [ip, #4]!	@ D.40138, MEM[base: _127, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _64->is_reference, _64->is_reference
	cmp	r3, #0	@ _64->is_reference,
	beq	.L1089	@,
	ldr	r3, [r1, #512]	@ D.40143, _64->frame_num
	ldr	r8, [r6, #968]	@ pH264Ctx_19(D)->CurrPic.frame_num, pH264Ctx_19(D)->CurrPic.frame_num
	cmp	r3, r8	@ D.40143, pH264Ctx_19(D)->CurrPic.frame_num
	rsbhi	r3, r7, r3	@ D.40143, MaxFrameNum, D.40143
	str	r3, [r1, #516]	@ D.40143, _64->frame_num_wrap
	ldr	r3, [ip]	@ D.40138, MEM[base: _127, offset: 0B]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ D.40145, _73->is_reference
	tst	r1, #1	@ D.40145,
	beq	.L1092	@,
	ldr	r8, [r3, #436]	@ *_73, *_73
	bic	r8, r8, #-16777216	@ D.40143, *_73,
	bic	r8, r8, #255	@ D.40143, D.40143,
	cmp	r8, #65536	@ D.40143,
	ldreq	r1, [r3, #516]	@ _73->frame_num_wrap, _73->frame_num_wrap
	addeq	r1, r5, r1, lsl #1	@ D.40144, D.40146, _73->frame_num_wrap,
	streq	r1, [r3, #448]	@ D.40144, _73->top_field.pic_num
	ldreq	r3, [ip]	@ D.40138, MEM[base: _127, offset: 0B]
	ldreqb	r1, [r3, #2]	@ zero_extendqisi2	@ D.40145, _147->is_reference
.L1092:
	tst	r1, #2	@ D.40145,
	beq	.L1089	@,
	ldr	r1, [r3, #472]	@ *_148, *_148
	bic	r1, r1, #-16777216	@ D.40143, *_148,
	bic	r1, r1, #255	@ D.40143, D.40143,
	cmp	r1, #65536	@ D.40143,
	ldreq	r1, [r3, #516]	@ _148->frame_num_wrap, _148->frame_num_wrap
	addeq	r1, r4, r1, lsl #1	@ D.40144, D.40146, _148->frame_num_wrap,
	streq	r1, [r3, #484]	@ D.40144, _148->bottom_field.pic_num
.L1089:
	ldr	r3, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i, i,
	cmp	r3, r2	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, i
	bhi	.L1094	@,
.L1095:
	ldr	r3, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer,
	beq	.L1120	@,
	add	r0, r0, #26368	@ ivtmp.1259, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #188	@ ivtmp.1259, ivtmp.1259,
.L1100:
	ldr	r1, [r0, #4]!	@ D.40138, MEM[base: _13, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ D.40145, _93->is_reference
	cmp	r2, #0	@ D.40145,
	beq	.L1097	@,
	tst	r2, #1	@ D.40145,
	beq	.L1098	@,
	ldr	ip, [r1, #436]	@ *_93, *_93
	bic	ip, ip, #-16777216	@ D.40143, *_93,
	bic	ip, ip, #255	@ D.40143, D.40143,
	cmp	ip, #256	@ D.40143,
	ldreq	r2, [r1, #520]	@ _93->long_term_frame_idx, _93->long_term_frame_idx
	addeq	r2, r5, r2, lsl #1	@ D.40143, D.40146, _93->long_term_frame_idx,
	streq	r2, [r1, #444]	@ D.40143, _93->top_field.long_term_pic_num
	ldreq	r1, [r0]	@ D.40138, MEM[base: _13, offset: 0B]
	ldreqb	r2, [r1, #2]	@ zero_extendqisi2	@ D.40145, _7->is_reference
.L1098:
	tst	r2, #2	@ D.40145,
	beq	.L1097	@,
	ldr	r2, [r1, #472]	@ *_1, *_1
	bic	r2, r2, #-16777216	@ D.40143, *_1,
	bic	r2, r2, #255	@ D.40143, D.40143,
	cmp	r2, #256	@ D.40143,
	ldreq	r2, [r1, #520]	@ _1->long_term_frame_idx, _1->long_term_frame_idx
	addeq	r2, r4, r2, lsl #1	@ D.40143, D.40146, _1->long_term_frame_idx,
	streq	r2, [r1, #480]	@ D.40143, _1->bottom_field.long_term_pic_num
.L1097:
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bhi	.L1100	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1075:
	ldr	r2, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	cmp	r2, #0	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer,
	addne	r1, r0, #26368	@ ivtmp.1248, pH264Ctx,
	addne	r1, r1, #124	@ ivtmp.1248, ivtmp.1248,
	bne	.L1084	@,
.L1085:
	ldr	r3, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer,
	beq	.L1121	@,
	add	r0, r0, #26368	@ ivtmp.1237, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #188	@ ivtmp.1237, ivtmp.1237,
	b	.L1087	@
.L1086:
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bls	.L1122	@,
.L1087:
	ldr	r2, [r0, #4]!	@ D.40138, MEM[base: _17, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ _55->is_reference, _55->is_reference
	cmp	r1, #3	@ _55->is_reference,
	bne	.L1086	@,
	ldr	r1, [r2, #400]	@ *_55, *_55
	bic	r1, r1, #-16777216	@ D.40143, *_55,
	bic	r1, r1, #255	@ D.40143, D.40143,
	cmp	r1, #256	@ D.40143,
	ldreq	r1, [r2, #520]	@ _55->long_term_frame_idx, _55->long_term_frame_idx
	streq	r1, [r2, #408]	@ _55->long_term_frame_idx, _55->frame.long_term_pic_num
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bhi	.L1087	@,
.L1122:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1123:
	ldr	ip, [r2, #400]	@ *_39, *_39
	bic	ip, ip, #-16777216	@ D.40143, *_39,
	bic	ip, ip, #255	@ D.40143, D.40143,
	cmp	ip, #65536	@ D.40143,
	bne	.L1081	@,
	ldr	ip, [r2, #512]	@ D.40143, _39->frame_num
	ldr	r4, [r6, #968]	@ pH264Ctx_19(D)->CurrPic.frame_num, pH264Ctx_19(D)->CurrPic.frame_num
	rsb	r5, r7, ip	@ D.40143, MaxFrameNum, D.40143
	cmp	ip, r4	@ D.40143, pH264Ctx_19(D)->CurrPic.frame_num
	strhi	r5, [r2, #516]	@ D.40143, _39->frame_num_wrap
	strls	ip, [r2, #516]	@ D.40143, _39->frame_num_wrap
	ldr	r2, [r1]	@ D.40138, MEM[base: _122, offset: 0B]
	ldr	ip, [r2, #516]	@ _50->frame_num_wrap, _50->frame_num_wrap
	str	ip, [r2, #412]	@ _50->frame_num_wrap, _50->frame.pic_num
.L1081:
	ldr	r2, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	add	r3, r3, #1	@ i, i,
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, i
	bls	.L1085	@,
.L1084:
	ldr	r2, [r1, #4]!	@ D.40138, MEM[base: _122, offset: 0B]
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ _39->is_reference, _39->is_reference
	cmp	ip, #3	@ _39->is_reference,
	bne	.L1081	@,
	b	.L1123	@
.L1121:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1120:
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
	beq	.L1129	@,
	add	r3, r0, #24576	@ tmp122, pH264Ctx,
	ldr	ip, [r3, #2052]	@ D.40163, pH264Ctx_5(D)->DPB.used_size
	cmp	ip, #0	@ D.40163,
	beq	.L1129	@,
	ldr	r3, [r3, #1856]	@ pH264Ctx_5(D)->DPB.fs, pH264Ctx_5(D)->DPB.fs
	cmp	r3, r1	@ pH264Ctx_5(D)->DPB.fs, pFrameStore
	beq	.L1131	@,
	add	r0, r0, #26368	@ ivtmp.1283, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #64	@ ivtmp.1283, ivtmp.1283,
	b	.L1126	@
.L1127:
	ldr	r2, [r0, #4]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r2, r1	@ MEM[base: _14, offset: 0B], pFrameStore
	beq	.L1131	@,
.L1126:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.40163
	bne	.L1127	@,
.L1129:
	mov	r0, #1	@ D.40161,
	bx	lr	@
.L1131:
	mov	r0, #0	@ D.40161,
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
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #49152	@ tmp457, pH264Ctx,
	movw	r2, #49728	@ tmp250,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r7, #0	@ tmp245,
	str	r7, [r5, #3612]	@ tmp245, pH264Ctx_21(D)->SliceParaNum
	ldrd	r0, [r0, r2]	@ pH264Ctx_21(D)->CurrPic.fs_image.PTS, pH264Ctx, tmp250
	movw	r3, #51376	@ tmp247,
	add	r9, r4, #12288	@ tmp460, pH264Ctx,
	add	r8, r4, #16384	@ tmp458, pH264Ctx,
	strd	r0, [r4, r3]	@ pH264Ctx_21(D)->CurrPic.fs_image.PTS, pH264Ctx, tmp247
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
	add	r3, r3, #1	@ D.40334, pH264Ctx_21(D)->CurrSPS.pic_width_in_mbs_minus1,
	str	r3, [r5, #2244]	@ D.40334, pH264Ctx_21(D)->DecPicPara.pic_width_in_mb
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
	ldr	r1, [r3, #508]	@, _63->logic_fs_id
	bl	FSP_GetLogicFs	@
	subs	r10, r0, #0	@ pstLogicFs,
	beq	.L1153	@,
	ldr	r3, [r10, #408]	@ pstLogicFs_66->pstDecodeFs, pstLogicFs_66->pstDecodeFs
	cmp	r3, r7	@ pstLogicFs_66->pstDecodeFs,
	beq	.L1153	@,
	ldr	r3, [r10, #412]	@ pstLogicFs_66->pstDispOutFs, pstLogicFs_66->pstDispOutFs
	cmp	r3, r7	@ pstLogicFs_66->pstDispOutFs,
	beq	.L1153	@,
	add	r3, r4, #51712	@, pH264Ctx,
	add	r2, r4, #51456	@, pH264Ctx,
	add	r1, r4, #51968	@, pH264Ctx,
	add	r3, r3, #220	@,,
	add	r2, r2, #220	@,,
	add	r1, r1, #220	@,,
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	add	r6, r4, #24576	@ tmp459, pH264Ctx,
	bl	FSP_GetDecFsAddrTab	@
	ldr	r3, [r10, #408]	@ pstLogicFs_66->pstDecodeFs, pstLogicFs_66->pstDecodeFs
	add	r2, r4, #51968	@, pH264Ctx,
	add	r1, r4, #52224	@, pH264Ctx,
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	add	r2, r2, #224	@,,
	ldr	r3, [r3, #4]	@ _75->PhyFsID, _75->PhyFsID
	add	r1, r1, #48	@,,
	str	r3, [r5, #2508]	@ _75->PhyFsID, pH264Ctx_21(D)->DecPicPara.CurrPicImgIdc
	bl	FSP_GetPmvAddrTab	@
	ldr	r3, [r5, #1028]	@ pH264Ctx_21(D)->CurrPic.pmv_address_idc, pH264Ctx_21(D)->CurrPic.pmv_address_idc
	str	r3, [r5, #2516]	@ pH264Ctx_21(D)->CurrPic.pmv_address_idc, pH264Ctx_21(D)->DecPicPara.CurrPicPmvIdc
	ldr	r3, [r10, #424]	@ pstLogicFs_66->HalfPmvOffset, pstLogicFs_66->HalfPmvOffset
	str	r3, [r5, #3124]	@ pstLogicFs_66->HalfPmvOffset, pH264Ctx_21(D)->DecPicPara.half_pmvblk_offset
	ldr	r3, [r10, #412]	@ pstLogicFs_66->pstDispOutFs, pstLogicFs_66->pstDispOutFs
	ldr	r3, [r3, #12]	@ _88->PhyAddr, _88->PhyAddr
	str	r3, [r5, #2512]	@ _88->PhyAddr, pH264Ctx_21(D)->DecPicPara.CurrPicImg2DAddr
	ldr	r3, [r10, #412]	@ pstLogicFs_66->pstDispOutFs, pstLogicFs_66->pstDispOutFs
	ldr	r3, [r3, #32]	@ _92->ChromOffset, _92->ChromOffset
	str	r3, [r5, #2520]	@ _92->ChromOffset, pH264Ctx_21(D)->DecPicPara.uv_offset
	ldr	r0, [r6, #2324]	@ D.40334, pH264Ctx_21(D)->APC.size
	cmp	r0, r7	@ D.40334,
	str	r0, [r5, #3332]	@ D.40334, pH264Ctx_21(D)->DecPicPara.ApcSize
	beq	.L1138	@,
	add	fp, r4, #26624	@ ivtmp.1411, pH264Ctx,
	add	r10, r4, #52224	@ ivtmp.1420, pH264Ctx,
	mov	r3, r7	@ i, tmp245
	mov	lr, fp	@ ivtmp.1427, ivtmp.1411
	mov	ip, r10	@ ivtmp.1434, ivtmp.1420
	mov	r1, fp	@ ivtmp.1441, ivtmp.1427
	mov	r2, r10	@ ivtmp.1448, ivtmp.1434
	add	fp, fp, #80	@ ivtmp.1411, ivtmp.1411,
	add	r10, r10, #64	@ ivtmp.1420, ivtmp.1420,
	add	lr, lr, #144	@ ivtmp.1427, ivtmp.1427,
	add	ip, ip, #128	@ ivtmp.1434, ivtmp.1434,
	add	r1, r1, #208	@ ivtmp.1441, ivtmp.1441,
	add	r2, r2, #192	@ ivtmp.1448, ivtmp.1448,
.L1137:
	ldr	r7, [fp, #4]!	@ D.40334, MEM[base: _224, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, D.40334
	str	r7, [r10, #4]!	@ D.40334, MEM[base: _225, offset: 0B]
	ldr	r7, [lr, #4]!	@ D.40334, MEM[base: _226, offset: 0B]
	str	r7, [ip, #4]!	@ D.40334, MEM[base: _227, offset: 0B]
	ldr	r7, [r1, #4]!	@ D.40334, MEM[base: _228, offset: 0B]
	str	r7, [r2, #4]!	@ D.40334, MEM[base: _229, offset: 0B]
	bne	.L1137	@,
.L1138:
	ldrb	r3, [r9, #1325]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrSPS.seq_scaling_matrix_present_flag, pH264Ctx_21(D)->CurrSPS.seq_scaling_matrix_present_flag
	cmp	r3, #0	@ pH264Ctx_21(D)->CurrSPS.seq_scaling_matrix_present_flag,
	bne	.L1166	@,
	ldrb	r3, [r8, #1222]	@ zero_extendqisi2	@ D.40331, pH264Ctx_21(D)->CurrPPS.pic_scaling_matrix_present_flag
	cmp	r3, #0	@ D.40331,
	bne	.L1139	@,
	add	r2, r4, #51200	@ ivtmp.1344, pH264Ctx,
	ldr	ip, .L1167	@ tmp456,
	add	r2, r2, #224	@ ivtmp.1344, ivtmp.1344,
.L1140:
	and	r1, r3, #3	@ D.40334, i,
	add	r3, r3, #1	@ i, i,
	cmp	r3, #24	@ i,
	ldr	r1, [ip, r1, asl #2]	@ D.40334, quant_org
	str	r1, [r2, #4]!	@ D.40334, MEM[base: _11, offset: 0B]
	bne	.L1140	@,
	add	r1, r4, #51456	@ ivtmp.1330, pH264Ctx,
	mov	r3, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1330, ivtmp.1330,
.L1141:
	and	r2, r3, #15	@ D.40334, i,
	add	r3, r3, #1	@ i, i,
	cmp	r3, #32	@ i,
	add	r2, ip, r2, lsl #2	@ tmp403, tmp456, D.40334,
	ldr	r2, [r2, #16]	@ D.40334, quant8_org
	str	r2, [r1, #4]!	@ D.40334, MEM[base: _175, offset: 0B]
	bne	.L1141	@,
.L1146:
	cmp	r0, #0	@ D.40334,
	beq	.L1143	@,
	add	r9, r4, #52480	@ ivtmp.1305, pH264Ctx,
	add	r7, r4, #26624	@ ivtmp.1295, pH264Ctx,
	add	r7, r7, #84	@ ivtmp.1295, ivtmp.1295,
	mov	r8, #0	@ i,
	mov	r4, r9	@ ivtmp.1318, ivtmp.1305
	add	r9, r9, #140	@ ivtmp.1305, ivtmp.1305,
	add	r4, r4, #204	@ ivtmp.1318, ivtmp.1318,
.L1149:
	ldr	r2, [r7]	@, MEM[base: _18, offset: 0B]
	mov	r1, #0	@,
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	add	r8, r8, #1	@ i, i,
	bl	FSP_GetStoreType	@
	adds	r0, r0, #0	@ D.40342,,
	movne	r0, #1	@ D.40342,
	str	r0, [r9, #4]!	@ D.40342, MEM[base: _16, offset: 0B]
	ldr	r3, [r7], #4	@ D.40334, MEM[base: _18, offset: 0B]
	str	r3, [r4, #4]!	@ D.40334, MEM[base: _13, offset: 0B]
	ldr	r3, [r6, #2324]	@ pH264Ctx_21(D)->APC.size, pH264Ctx_21(D)->APC.size
	cmp	r3, r8	@ pH264Ctx_21(D)->APC.size, i
	bhi	.L1149	@,
.L1143:
	mov	r0, #0	@ D.40330,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1166:
	ldrb	r3, [r8, #1222]	@ zero_extendqisi2	@ D.40331, pH264Ctx_21(D)->CurrPPS.pic_scaling_matrix_present_flag
.L1139:
	cmp	r3, #1	@ D.40331,
	add	r1, r4, #51200	@ ivtmp.1372, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #224	@ ivtmp.1372, ivtmp.1372,
	beq	.L1144	@,
.L1147:
	add	r3, r2, #4064	@ tmp427, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #2	@ tmp427, tmp427,
	cmp	r2, #24	@ i,
	add	r3, r4, r3, lsl #2	@ tmp428, pH264Ctx, tmp427,
	ldr	r3, [r3, #4]	@ D.40334, pH264Ctx_21(D)->CurrSPS.qmatrix4x4
	str	r3, [r1, #4]!	@ D.40334, MEM[base: _201, offset: 0B]
	bne	.L1147	@,
	add	r1, r4, #51456	@ ivtmp.1386, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1386, ivtmp.1386,
.L1148:
	add	r3, r2, #4080	@ tmp436, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #10	@ tmp436, tmp436,
	cmp	r2, #32	@ i,
	add	r3, r4, r3, lsl #2	@ tmp437, pH264Ctx, tmp436,
	ldr	r3, [r3, #4]	@ D.40334, pH264Ctx_21(D)->CurrSPS.qmatrix8x8
	str	r3, [r1, #4]!	@ D.40334, MEM[base: _199, offset: 0B]
	bne	.L1148	@,
	b	.L1146	@
.L1144:
	add	r3, r2, #4864	@ tmp410, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #28	@ tmp410, tmp410,
	cmp	r2, #24	@ i,
	add	r3, r4, r3, lsl #2	@ tmp411, pH264Ctx, tmp410,
	ldr	r3, [r3, #4]	@ D.40334, pH264Ctx_21(D)->CurrPPS.qmatrix4x4
	str	r3, [r1, #4]!	@ D.40334, MEM[base: _178, offset: 0B]
	bne	.L1144	@,
	add	r1, r4, #51456	@ ivtmp.1358, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1358, ivtmp.1358,
.L1145:
	add	r3, r2, #4864	@ tmp419, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ tmp419, tmp419,
	cmp	r2, #32	@ i,
	add	r3, r4, r3, lsl #2	@ tmp420, pH264Ctx, tmp419,
	ldr	r3, [r3, #4]	@ D.40334, pH264Ctx_21(D)->CurrPPS.qmatrix8x8
	str	r3, [r1, #4]!	@ D.40334, MEM[base: _1, offset: 0B]
	bne	.L1145	@,
	b	.L1146	@
.L1153:
	mvn	r0, #0	@ D.40330,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1168:
	.align	2
.L1167:
	.word	.LANCHOR0
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
	movlt	r2, r0	@ D.40345, SlcQp
	cmp	r3, r0	@ pCurPic_2(D)->MinQp, SlcQp
	str	r2, [r1, #28]	@ D.40345, pCurPic_2(D)->MaxQp
	movge	r3, r0	@ D.40345, SlcQp
	str	r3, [r1, #32]	@ D.40345, pCurPic_2(D)->MinQp
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
	add	r5, r0, #12288	@ tmp849, pH264Ctx,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r3, [r10, #3612]	@ CurrSliceSlotNum, pH264Ctx_42(D)->SliceParaNum
	movw	ip, #4060	@ tmp490,
	ldr	lr, [r10, #3608]	@ D.40943, pH264Ctx_42(D)->DecSlicePara
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r2, r3	@ CurrSliceSlotNum, CurrSliceSlotNum
	str	r3, [sp, #8]	@ CurrSliceSlotNum, %sfp
	mul	ip, ip, r2	@ D.40942, tmp490, CurrSliceSlotNum
	add	r3, r3, #1	@ D.40942, CurrSliceSlotNum,
	str	r3, [r10, #3612]	@ D.40942, pH264Ctx_42(D)->SliceParaNum
	ldr	r3, [r5, #1280]	@ pH264Ctx_42(D)->MaxSliceNum, pH264Ctx_42(D)->MaxSliceNum
	add	r9, lr, ip	@ pCurrSlicePara, D.40943, D.40942
	sub	r3, r3, #1	@ D.40944, pH264Ctx_42(D)->MaxSliceNum,
	cmp	r2, r3	@ CurrSliceSlotNum, D.40944
	addcc	r1, ip, #4048	@ D.40945, D.40942,
	addcc	r1, r1, #12	@ D.40945, D.40945,
	movcs	r1, #0	@ tmp498,
	addcc	r1, lr, r1	@ D.40943, D.40943, D.40945
	str	r1, [r9, #4056]	@ tmp498, pCurrSlicePara_48->pNextSlice
	ldr	r0, [r0, #368]	@ D.40947, pH264Ctx_42(D)->pCurrNal
	ldrb	r6, [r0]	@ zero_extendqisi2	@ i, _56->nal_used_segment
	ldr	r1, [r0, #68]	@ i, _56->nal_segment
	cmp	r6, #1	@ i,
	cmpls	r6, r1	@, i, i
	bcs	.L1173	@,
	add	r7, r6, #3	@ D.40945, i,
	add	r7, r9, r7, lsl #2	@ ivtmp.2026, pCurrSlicePara, D.40945,
.L1174:
	mov	r3, r6, asl #5	@ tmp510, i,
	sub	r3, r3, r6, asl #2	@ tmp511, tmp510, i,
	add	r6, r6, #1	@ i, i,
	add	r0, r0, r3	@ tmp512, D.40947, tmp511
	ldr	r2, [r0, #24]	@ D.40942, _491->stream[i_465].bitsoffset
	str	r2, [r7, #4]!	@ D.40942, MEM[base: _692, offset: 0B]
	ldr	r2, [r4, #368]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->pCurrNal
	add	r2, r2, r3	@ tmp519, pH264Ctx_42(D)->pCurrNal, tmp511
	ldr	r2, [r2, #20]	@ D.40942, _63->stream[i_465].valid_bitlen
	str	r2, [r7, #-8]	@ D.40942, MEM[base: _692, offset: 4294967288B]
	ldr	r2, [r4, #368]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->pCurrNal
	add	r3, r2, r3	@ tmp526, pH264Ctx_42(D)->pCurrNal, tmp511
	ldr	r3, [r3, #28]	@ D.40942, _66->stream[i_465].bytespos
	str	r3, [r7, #8]	@ D.40942, MEM[base: _692, offset: 8B]
	ldr	r0, [r4, #368]	@ D.40947, pH264Ctx_42(D)->pCurrNal
	ldr	r1, [r0, #68]	@ i, _59->nal_segment
	cmp	r1, r6	@ i, i
	movhi	r3, #1	@ tmp534,
	movls	r3, #0	@ tmp534,
	cmp	r6, #1	@ i,
	movhi	r3, #0	@ tmp534,
	cmp	r3, #0	@ tmp534,
	bne	.L1174	@,
.L1173:
	cmp	r1, #1	@ i,
	bhi	.L1179	@,
	add	r1, r1, #3	@ D.40945, i,
	add	r6, r9, #20	@ D.40954, pCurrSlicePara,
	mov	r0, #0	@ tmp859,
	add	r1, r9, r1, lsl #2	@ ivtmp.2000, pCurrSlicePara, D.40945,
.L1178:
	str	r0, [r1, #4]!	@ tmp859, MEM[base: _682, offset: 0B]
	cmp	r1, r6	@ ivtmp.2000, D.40954
	str	r0, [r1, #-8]	@ tmp859, MEM[base: _682, offset: 4294967288B]
	str	r0, [r1, #8]	@ tmp859, MEM[base: _682, offset: 8B]
	bne	.L1178	@,
.L1179:
	ldrb	r1, [r10, #561]	@ zero_extendqisi2	@ D.40946, pH264Ctx_42(D)->CurrPic.MbaffFrameFlag
	add	r3, r4, #16384	@ tmp847, pH264Ctx,
	add	r7, r4, #20480	@ tmp848, pH264Ctx,
	ldr	r2, [sp, #8]	@ CurrSliceSlotNum, %sfp
	str	r3, [sp, #4]	@ tmp847, %sfp
	strb	r1, [r9, #1]	@ D.40946, pCurrSlicePara_48->MbaffFrameFlag
	cmp	r2, #0	@ CurrSliceSlotNum,
	ldr	r1, [r3, #1252]	@ pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26, pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26
	ldr	r0, [r7, #1812]	@ pH264Ctx_42(D)->CurrSlice.slice_qp_delta, pH264Ctx_42(D)->CurrSlice.slice_qp_delta
	add	r1, r1, #26	@ D.40944, pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26,
	add	r1, r1, r0	@ D.40944, D.40944, pH264Ctx_42(D)->CurrSlice.slice_qp_delta
	str	r1, [r9, #32]	@ D.40944, pCurrSlicePara_48->SliceQPy
	bne	.L1276	@,
	ldr	r0, [r10, #960]	@ D.40948, pH264Ctx_42(D)->CurrPic.frame_store
	str	r1, [r0, #428]	@ D.40944, _83->frame.MaxQp
	ldr	r1, [r10, #960]	@ D.40948, pH264Ctx_42(D)->CurrPic.frame_store
	ldr	r0, [r9, #32]	@ pCurrSlicePara_48->SliceQPy, pCurrSlicePara_48->SliceQPy
	str	r0, [r1, #432]	@ pCurrSlicePara_48->SliceQPy, _85->frame.MinQp
.L1180:
	ldr	r1, [r7, #1808]	@ D.40942, pH264Ctx_42(D)->CurrSlice.cabac_init_idc
	str	r1, [r9, #36]	@ D.40942, pCurrSlicePara_48->cabac_init_idc
	ldr	r1, [r7, #260]	@ D.40942, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1
	str	r1, [r9, #40]	@ D.40942, pCurrSlicePara_48->num_ref_idx_l1_active_minus1
	ldr	r1, [r7, #256]	@ D.40942, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1
	str	r1, [r9, #44]	@ D.40942, pCurrSlicePara_48->num_ref_idx_l0_active_minus1
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ D.40946, pH264Ctx_42(D)->CurrSlice.slice_type
	strb	r1, [lr, ip]	@ D.40946, pCurrSlicePara_48->slice_type
	ldr	r1, [r7, #252]	@ D.40942, pH264Ctx_42(D)->CurrSlice.first_mb_in_slice
	str	r1, [r9, #48]	@ D.40942, pCurrSlicePara_48->first_mb_in_slice
	ldrb	r1, [r7, #206]	@ zero_extendqisi2	@ D.40946, pH264Ctx_42(D)->CurrSlice.direct_spatial_mv_pred_flag
	strb	r1, [r9, #2]	@ D.40946, pCurrSlicePara_48->direct_spatial_mv_pred_flag
	ldrb	r1, [r5, #1320]	@ zero_extendqisi2	@ D.40946, pH264Ctx_42(D)->CurrSPS.direct_8x8_inference_flag
	strb	r1, [r9, #3]	@ D.40946, pCurrSlicePara_48->direct_8x8_inference_flag
	ldr	r1, [r7, #244]	@ D.40942, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r1, [r9, #52]	@ D.40942, pCurrSlicePara_48->listXsize
	ldr	r1, [r7, #248]	@ D.40942, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r1, [r9, #56]	@ D.40942, pCurrSlicePara_48->listXsize
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ D.40946, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ D.40946,
	beq	.L1277	@,
	cmp	r1, #0	@ D.40946,
	ldreq	r3, [sp, #4]	@ tmp847, %sfp
	movne	r1, #0	@ tmp591,
	ldreqb	r1, [r3, #1206]	@ zero_extendqisi2	@ D.40946, pH264Ctx_42(D)->CurrPPS.weighted_pred_flag
	strb	r1, [r9, #4]	@ tmp591, pCurrSlicePara_48->weight_flag
.L1182:
	ldr	r3, [sp, #4]	@ tmp847, %sfp
	ldr	r1, [r3, #1256]	@ D.40944, pH264Ctx_42(D)->CurrPPS.chroma_qp_index_offset
	str	r1, [r9, #60]	@ D.40944, pCurrSlicePara_48->chroma_qp_index_offset
	ldr	r1, [r3, #1260]	@ D.40944, pH264Ctx_42(D)->CurrPPS.second_chroma_qp_index_offset
	str	r1, [r9, #64]	@ D.40944, pCurrSlicePara_48->second_chroma_qp_index_offset
	ldr	r1, [r7, #1820]	@ D.40944, pH264Ctx_42(D)->CurrSlice.slice_alpha_c0_offset_div2
	str	r1, [r9, #68]	@ D.40944, pCurrSlicePara_48->slice_alpha_c0_offset_div2
	ldr	r1, [r7, #1824]	@ D.40944, pH264Ctx_42(D)->CurrSlice.slice_beta_offset_div2
	str	r1, [r9, #72]	@ D.40944, pCurrSlicePara_48->slice_beta_offset_div2
	ldr	r1, [r7, #1816]	@ D.40942, pH264Ctx_42(D)->CurrSlice.disable_deblocking_filter_idc
	str	r1, [r9, #76]	@ D.40942, pCurrSlicePara_48->disable_deblocking_filter_idc
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #2	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1221	@,
	ldr	r8, [r7, #244]	@ D.40942, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r8, #0	@ D.40942,
	beq	.L1224	@,
	add	r1, r4, #24576	@ tmp614, pH264Ctx,
	ldr	r1, [r1, #2460]	@ pH264Ctx_42(D)->pListX, pH264Ctx_42(D)->pListX
	ldr	ip, [r1, #4]	@ D.40950, _453->frame_store
	ldrb	r1, [ip]	@ zero_extendqisi2	@ _454->non_existing, _454->non_existing
	cmp	r1, #0	@ _454->non_existing,
	addne	r0, r4, #26880	@ ivtmp.1988, pH264Ctx,
	movne	r1, #0	@ i,
	addne	r0, r0, #156	@ ivtmp.1988, ivtmp.1988,
	bne	.L1189	@,
	b	.L1187	@
.L1191:
	ldr	r3, [r0, #4]!	@ MEM[base: _675, offset: 0B], MEM[base: _675, offset: 0B]
	ldr	ip, [r3, #4]	@ D.40950, _128->frame_store
	ldrb	r3, [ip]	@ zero_extendqisi2	@ _129->non_existing, _129->non_existing
	cmp	r3, #0	@ _129->non_existing,
	beq	.L1187	@,
.L1189:
	add	r1, r1, #1	@ i, i,
	cmp	r1, r8	@ i, D.40942
	bne	.L1191	@,
	mov	r3, #0	@ ExistImgIdc_0,
	str	r3, [sp, #12]	@ ExistImgIdc_0, %sfp
.L1186:
	ldr	r3, [r7, #248]	@ D.40942, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r3, #0	@ D.40942,
	beq	.L1225	@,
	add	r1, r4, #24576	@ tmp628, pH264Ctx,
	ldr	r1, [r1, #2592]	@ pH264Ctx_42(D)->pListX, pH264Ctx_42(D)->pListX
	ldr	ip, [r1, #4]	@ D.40950, _448->frame_store
	ldrb	r1, [ip]	@ zero_extendqisi2	@ _449->non_existing, _449->non_existing
	cmp	r1, #0	@ _449->non_existing,
	addne	r0, r4, #27136	@ ivtmp.1977, pH264Ctx,
	movne	r1, #0	@ i,
	addne	r0, r0, #32	@ ivtmp.1977, ivtmp.1977,
	bne	.L1195	@,
	b	.L1193	@
.L1197:
	ldr	r2, [r0, #4]!	@ MEM[base: _670, offset: 0B], MEM[base: _670, offset: 0B]
	ldr	ip, [r2, #4]	@ D.40950, _141->frame_store
	ldrb	r2, [ip]	@ zero_extendqisi2	@ _142->non_existing, _142->non_existing
	cmp	r2, #0	@ _142->non_existing,
	beq	.L1193	@,
.L1195:
	add	r1, r1, #1	@ i, i,
	cmp	r1, r3	@ i, D.40942
	bne	.L1197	@,
	mov	r3, #0	@ ExistImgIdc_1,
	str	r3, [sp, #16]	@ ExistImgIdc_1, %sfp
.L1192:
	ldrb	ip, [r10, #555]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrPic.structure, pH264Ctx_42(D)->CurrPic.structure
	ldr	r1, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	ip, #0	@ pH264Ctx_42(D)->CurrPic.structure,
	beq	.L1198	@,
.L1280:
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1213	@,
	add	r5, r4, #26880	@ ivtmp.1902, pH264Ctx,
	mov	r6, r9	@ ivtmp.1919, pCurrSlicePara
	add	r5, r5, #156	@ ivtmp.1902, ivtmp.1902,
	mov	fp, #0	@ i,
	ldr	r8, [sp, #12]	@ ExistImgIdc_0, %sfp
	b	.L1212	@
.L1210:
	strb	r3, [r6, #1630]	@ D.40946, MEM[base: _642, offset: 1630B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.40946, _303->is_long_term
	strb	r3, [r6, #1631]	@ D.40946, MEM[base: _642, offset: 1631B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r3, [r3, #16]	@ D.40944, _306->poc
	str	r3, [r6, #1656]	@ D.40944, MEM[base: _642, offset: 1656B]
.L1211:
	ldr	r3, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	add	fp, fp, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.1902, ivtmp.1902,
	add	r6, r6, #36	@ ivtmp.1919, ivtmp.1919,
	cmp	r3, fp	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bls	.L1213	@,
.L1212:
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r3, [r3, #4]	@ _257->frame_store, _257->frame_store
	ldr	r1, [r3, #508]	@, _258->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r3, [r3, #4]	@ _262->frame_store, _262->frame_store
	ldr	r3, [r3, #548]	@ D.40942, _263->pmv_address_idc
	str	r3, [r6, #1636]	@ D.40942, MEM[base: _642, offset: 1636B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r3, [r3, #4]	@ _266->frame_store, _266->frame_store
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.40946, _267->is_used
	strb	r3, [r6, #1625]	@ D.40946, MEM[base: _642, offset: 1625B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r3, [r3, #4]	@ _270->frame_store, _270->frame_store
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _271->non_existing, _271->non_existing
	cmp	r3, #1	@ _271->non_existing,
	moveq	r0, r8	@ D.40940, ExistImgIdc_0
	beq	.L1209	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r3, [r0, #408]	@ pstLogicFs_261->pstDecodeFs, pstLogicFs_261->pstDecodeFs
	ldrne	r0, [r3, #4]	@ D.40940, _273->PhyFsID
.L1209:
	str	r0, [r6, #1640]	@ D.40940, MEM[base: _642, offset: 1640B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r3, [r3, #4]	@ _277->frame_store, _277->frame_store
	ldr	r3, [r3, #552]	@ D.40942, _278->apc_idc
	str	r3, [r6, #1644]	@ D.40942, MEM[base: _642, offset: 1644B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r3, [r3, #4]	@ _281->frame_store, _281->frame_store
	ldr	r3, [r3, #524]	@ D.40944, _282->poc
	str	r3, [r6, #1632]	@ D.40944, MEM[base: _642, offset: 1632B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.40946, _285->structure
	strb	r3, [r6, #1624]	@ D.40946, MEM[base: _642, offset: 1624B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r3, [r3, #4]	@ _288->frame_store, _288->frame_store
	ldrb	r3, [r3, #400]	@ zero_extendqisi2	@ D.40946, _289->frame.structure
	strb	r3, [r6, #1626]	@ D.40946, MEM[base: _642, offset: 1626B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.40946, _292->structure
	cmp	r3, #1	@ D.40946,
	bne	.L1210	@,
	strb	r3, [r6, #1628]	@ D.40946, MEM[base: _642, offset: 1628B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.40946, _295->is_long_term
	strb	r3, [r6, #1629]	@ D.40946, MEM[base: _642, offset: 1629B]
	ldr	r3, [r5]	@ MEM[base: _640, offset: 0B], MEM[base: _640, offset: 0B]
	ldr	r3, [r3, #16]	@ D.40944, _298->poc
	str	r3, [r6, #1652]	@ D.40944, MEM[base: _642, offset: 1652B]
	b	.L1211	@
.L1213:
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1278	@,
.L1201:
	add	r0, r4, #26880	@ ivtmp.1642, pH264Ctx,
	add	r1, r9, #3920	@ ivtmp.1651, pCurrSlicePara,
	add	lr, r9, #4048	@ D.40954, pCurrSlicePara,
	add	r0, r0, #24	@ ivtmp.1642, ivtmp.1642,
	add	r1, r1, #4	@ ivtmp.1651, ivtmp.1651,
	add	lr, lr, #4	@ D.40954, D.40954,
.L1218:
	ldr	r3, [r0, #4]!	@ D.40942, MEM[base: _542, offset: 0B]
	str	r3, [r1, #4]!	@ D.40942, MEM[base: _543, offset: 0B]
	cmp	r1, lr	@ ivtmp.1651, D.40954
	bne	.L1218	@,
	ldr	r3, [sp, #4]	@ tmp847, %sfp
	ldrb	r1, [r3, #1206]	@ zero_extendqisi2	@ D.40946, pH264Ctx_42(D)->CurrPPS.weighted_pred_flag
	cmp	r1, #0	@ D.40946,
	str	r1, [r10, #2500]	@ D.40946, pH264Ctx_42(D)->DecPicPara.weighted_pred_flag
	ldr	r1, [r3, #1248]	@ D.40942, pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc
	str	r1, [r10, #2504]	@ D.40942, pH264Ctx_42(D)->DecPicPara.weighted_bipred_idc
	beq	.L1219	@,
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #0	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1220	@,
.L1219:
	cmp	r1, #1	@ D.40942,
	beq	.L1279	@,
.L1221:
	ldr	r3, [sp, #8]	@ CurrSliceSlotNum, %sfp
	mov	r2, #0	@ tmp609,
	ldr	r1, [r4, #368]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->pCurrNal
	add	r3, r3, #12672	@ tmp607, CurrSliceSlotNum,
	add	r3, r3, #4	@ tmp607, tmp607,
	str	r1, [r4, r3, asl #2]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->SlcInfo[CurrSliceSlotNum_43].pSliceNal
	str	r2, [r4, #368]	@ tmp609, pH264Ctx_42(D)->pCurrNal
.L1170:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1276:
	ldr	r0, [r10, #960]	@ D.40948, pH264Ctx_42(D)->CurrPic.frame_store
	ldr	r8, [r0, #428]	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp
	ldr	r6, [r0, #432]	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp
	cmp	r8, r1	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp, D.40944
	movlt	r8, r1	@ D.40944, D.40944
	cmp	r6, r1	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp, D.40944
	str	r8, [r0, #428]	@ D.40944, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp
	movge	r6, r1	@ D.40944, D.40944
	str	r6, [r0, #432]	@ D.40944, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp
	b	.L1180	@
.L1187:
	ldr	r1, [ip, #508]	@, _493->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1170	@,
	ldr	r1, [r0, #408]	@ pstLogicFs_136->pstDecodeFs, pstLogicFs_136->pstDecodeFs
	ldr	r3, [r1, #4]	@ ExistImgIdc_0, _137->PhyFsID
	str	r3, [sp, #12]	@ ExistImgIdc_0, %sfp
	b	.L1186	@
.L1193:
	ldr	r1, [ip, #508]	@, _494->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1170	@,
	ldr	r1, [r0, #408]	@ pstLogicFs_149->pstDecodeFs, pstLogicFs_149->pstDecodeFs
	ldrb	ip, [r10, #555]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrPic.structure, pH264Ctx_42(D)->CurrPic.structure
	ldr	r3, [r1, #4]	@ ExistImgIdc_1, _150->PhyFsID
	cmp	ip, #0	@ pH264Ctx_42(D)->CurrPic.structure,
	ldr	r1, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r3, [sp, #16]	@ ExistImgIdc_1, %sfp
	bne	.L1280	@,
.L1198:
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1206	@,
	add	r6, r4, #26880	@ ivtmp.1744, pH264Ctx,
	ldr	r8, [sp, #12]	@ ExistImgIdc_0, %sfp
	add	r6, r6, #156	@ ivtmp.1744, ivtmp.1744,
	str	r4, [sp, #20]	@ pH264Ctx, %sfp
	mov	fp, ip	@ D.40940, i
	mov	r4, r7	@ tmp848, tmp848
	mov	r5, r9	@ ivtmp.1761, pCurrSlicePara
	mov	r7, ip	@ i, i
.L1205:
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r2, [r2, #4]	@ _156->frame_store, _156->frame_store
	ldr	r1, [r2, #508]	@, _157->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldr	r2, [r2, #4]	@ _161->frame_store, _161->frame_store
	ldr	r2, [r2, #548]	@ D.40942, _162->pmv_address_idc
	str	r2, [r5, #1636]	@ D.40942, MEM[base: _580, offset: 1636B]
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldr	r2, [r2, #4]	@ _165->frame_store, _165->frame_store
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.40946, _166->is_used
	strb	r2, [r5, #1625]	@ D.40946, MEM[base: _580, offset: 1625B]
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldr	r2, [r2, #4]	@ _169->frame_store, _169->frame_store
	ldrb	r2, [r2]	@ zero_extendqisi2	@ _170->non_existing, _170->non_existing
	cmp	r2, #1	@ _170->non_existing,
	moveq	r0, r8	@ D.40940, ExistImgIdc_0
	beq	.L1204	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r2, [r0, #408]	@ pstLogicFs_160->pstDecodeFs, pstLogicFs_160->pstDecodeFs
	ldrne	r0, [r2, #4]	@ D.40940, _172->PhyFsID
.L1204:
	str	r0, [r5, #1640]	@ D.40940, MEM[base: _580, offset: 1640B]
	add	r7, r7, #1	@ i, i,
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	add	r5, r5, #36	@ ivtmp.1761, ivtmp.1761,
	ldr	r2, [r2, #4]	@ _176->frame_store, _176->frame_store
	ldr	r2, [r2, #552]	@ D.40942, _177->apc_idc
	str	r2, [r5, #1608]	@ D.40942, MEM[base: _580, offset: 1644B]
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldr	r2, [r2, #4]	@ _180->frame_store, _180->frame_store
	ldr	r2, [r2, #524]	@ D.40944, _181->poc
	str	r2, [r5, #1596]	@ D.40944, MEM[base: _580, offset: 1632B]
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.40946, _184->is_long_term
	strb	r2, [r5, #1591]	@ D.40946, MEM[base: _580, offset: 1627B]
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.40946, _187->structure
	strb	r2, [r5, #1590]	@ D.40946, MEM[base: _580, offset: 1626B]
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldr	r2, [r2, #4]	@ _190->frame_store, _190->frame_store
	ldr	r2, [r2, #416]	@ D.40944, _191->frame.poc
	str	r2, [r5, #1612]	@ D.40944, MEM[base: _580, offset: 1648B]
	ldr	r2, [r6]	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldr	r2, [r2, #4]	@ _194->frame_store, _194->frame_store
	ldr	r2, [r2, #452]	@ D.40944, _195->top_field.poc
	str	r2, [r5, #1616]	@ D.40944, MEM[base: _580, offset: 1652B]
	ldr	r2, [r6], #4	@ MEM[base: _578, offset: 0B], MEM[base: _578, offset: 0B]
	ldr	r2, [r2, #4]	@ _198->frame_store, _198->frame_store
	ldr	r2, [r2, #488]	@ D.40944, _199->bottom_field.poc
	strb	fp, [r5, #1588]	@ D.40940, MEM[base: _580, offset: 1624B]
	str	r2, [r5, #1620]	@ D.40944, MEM[base: _580, offset: 1656B]
	ldr	r2, [r4, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r2, r7	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bhi	.L1205	@,
	mov	r7, r4	@ tmp848, tmp848
	ldr	r4, [sp, #20]	@ pH264Ctx, %sfp
.L1206:
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1201	@,
	ldr	r1, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1201	@,
	mov	fp, #0	@ i,
	add	r8, r4, #27136	@ ivtmp.1660, pH264Ctx,
	mov	r5, fp	@ D.40940, i
	str	r4, [sp, #12]	@ pH264Ctx, %sfp
	mov	r4, r7	@ tmp848, tmp848
	mov	r7, fp	@ i, i
	ldr	fp, [sp, #16]	@ ExistImgIdc_1, %sfp
	add	r8, r8, #32	@ ivtmp.1660, ivtmp.1660,
	mov	r6, r9	@ ivtmp.1677, pCurrSlicePara
.L1208:
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r2, [r2, #4]	@ _207->frame_store, _207->frame_store
	ldr	r1, [r2, #508]	@, _208->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldr	r2, [r2, #4]	@ _212->frame_store, _212->frame_store
	ldr	r2, [r2, #548]	@ D.40942, _213->pmv_address_idc
	str	r2, [r6, #2788]	@ D.40942, MEM[base: _551, offset: 2788B]
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldr	r2, [r2, #4]	@ _216->frame_store, _216->frame_store
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.40946, _217->is_used
	strb	r2, [r6, #2777]	@ D.40946, MEM[base: _551, offset: 2777B]
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldr	r2, [r2, #4]	@ _220->frame_store, _220->frame_store
	ldrb	r2, [r2]	@ zero_extendqisi2	@ _221->non_existing, _221->non_existing
	cmp	r2, #1	@ _221->non_existing,
	moveq	r0, fp	@ D.40940, ExistImgIdc_1
	beq	.L1207	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r2, [r0, #408]	@ pstLogicFs_211->pstDecodeFs, pstLogicFs_211->pstDecodeFs
	ldrne	r0, [r2, #4]	@ D.40940, _223->PhyFsID
.L1207:
	str	r0, [r6, #1640]	@ D.40940, MEM[base: _551, offset: 1640B]
	add	r7, r7, #1	@ i, i,
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	add	r6, r6, #36	@ ivtmp.1677, ivtmp.1677,
	ldr	r2, [r2, #4]	@ _227->frame_store, _227->frame_store
	ldr	r2, [r2, #552]	@ D.40942, _228->apc_idc
	str	r2, [r6, #2760]	@ D.40942, MEM[base: _551, offset: 2796B]
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldr	r2, [r2, #4]	@ _231->frame_store, _231->frame_store
	ldr	r2, [r2, #524]	@ D.40944, _232->poc
	str	r2, [r6, #2748]	@ D.40944, MEM[base: _551, offset: 2784B]
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.40946, _235->is_long_term
	strb	r2, [r6, #2743]	@ D.40946, MEM[base: _551, offset: 2779B]
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.40946, _238->structure
	strb	r2, [r6, #2742]	@ D.40946, MEM[base: _551, offset: 2778B]
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldr	r2, [r2, #4]	@ _241->frame_store, _241->frame_store
	ldr	r2, [r2, #416]	@ D.40944, _242->frame.poc
	str	r2, [r6, #2764]	@ D.40944, MEM[base: _551, offset: 2800B]
	ldr	r2, [r8]	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldr	r2, [r2, #4]	@ _245->frame_store, _245->frame_store
	ldr	r2, [r2, #452]	@ D.40944, _246->top_field.poc
	str	r2, [r6, #2768]	@ D.40944, MEM[base: _551, offset: 2804B]
	ldr	r2, [r8], #4	@ MEM[base: _549, offset: 0B], MEM[base: _549, offset: 0B]
	ldr	r2, [r2, #4]	@ _249->frame_store, _249->frame_store
	ldr	r2, [r2, #488]	@ D.40944, _250->bottom_field.poc
	strb	r5, [r6, #2740]	@ D.40940, MEM[base: _551, offset: 2776B]
	str	r2, [r6, #2772]	@ D.40944, MEM[base: _551, offset: 2808B]
	ldr	r2, [r4, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r2, r7	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bhi	.L1208	@,
	mov	r7, r4	@ tmp848, tmp848
	ldr	r4, [sp, #12]	@ pH264Ctx, %sfp
	b	.L1201	@
.L1279:
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1221	@,
.L1220:
	ldr	r2, [r7, #264]	@ D.40942, pH264Ctx_42(D)->CurrSlice.luma_log2_weight_denom
	add	r3, r4, #20736	@ ivtmp.1550, pH264Ctx,
	add	r5, r4, #21504	@ ivtmp.1595, pH264Ctx,
	add	r6, r4, #20992	@ ivtmp.1581, pH264Ctx,
	add	ip, r4, #21760	@ ivtmp.1623, pH264Ctx,
	mov	r8, r3	@ ivtmp.1567, ivtmp.1550
	str	r2, [r9, #80]	@ D.40942, pCurrSlicePara_48->luma_log2_weight_denom
	mov	lr, r5	@ ivtmp.1609, ivtmp.1595
	ldr	r10, [r7, #268]	@ D.40942, pH264Ctx_42(D)->CurrSlice.chroma_log2_weight_denom
	add	r3, r3, #12	@ ivtmp.1550, ivtmp.1550,
	add	r8, r8, #140	@ ivtmp.1567, ivtmp.1567,
	add	r6, r6, #12	@ ivtmp.1581, ivtmp.1581,
	add	r5, r5, #12	@ ivtmp.1595, ivtmp.1595,
	add	lr, lr, #140	@ ivtmp.1609, ivtmp.1609,
	add	ip, ip, #12	@ ivtmp.1623, ivtmp.1623,
	add	fp, r9, #212	@ ivtmp.1574, pCurrSlicePara,
	mov	r0, r9	@ ivtmp.1559, pCurrSlicePara
	mov	r2, r9	@ ivtmp.1563, pCurrSlicePara
	mov	r1, #0	@ i,
	str	r9, [sp, #4]	@ pCurrSlicePara, %sfp
	str	r10, [r0, #84]!	@ D.40942, pCurrSlicePara_48->chroma_log2_weight_denom
.L1222:
	ldr	r10, [r3, #4]!	@ D.40944, MEM[base: _522, offset: 0B]
	add	r1, r1, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.1563, ivtmp.1563,
	str	r10, [r0, #4]!	@ D.40944, MEM[base: _523, offset: 0B]
	ldr	r10, [r8, #4]!	@ D.40944, MEM[base: _524, offset: 0B]
	str	r10, [fp, #4]!	@ D.40944, MEM[base: _525, offset: 0B]
	ldr	r10, [r6, #4]!	@ D.40944, MEM[base: _526, offset: 0B]
	str	r10, [r2, #340]	@ D.40944, MEM[base: _527, offset: 344B]
	ldr	r10, [r5, #4]!	@ D.40944, MEM[base: _528, offset: 0B]
	str	r10, [r2, #852]	@ D.40944, MEM[base: _527, offset: 856B]
	ldr	r10, [lr, #4]!	@ D.40944, MEM[base: _530, offset: 0B]
	str	r10, [r2, #980]	@ D.40944, MEM[base: _527, offset: 984B]
	ldr	r10, [ip, #4]!	@ D.40944, MEM[base: _532, offset: 0B]
	str	r10, [r2, #1108]	@ D.40944, MEM[base: _527, offset: 1112B]
	ldr	r10, [r7, #256]	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r10, r1	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1, i
	bcs	.L1222	@,
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1221	@,
	add	r5, r4, #21248	@ ivtmp.1478, pH264Ctx,
	add	r0, r4, #22016	@ ivtmp.1520, pH264Ctx,
	add	r6, r4, #20992	@ ivtmp.1461, pH264Ctx,
	add	ip, r4, #21760	@ ivtmp.1506, pH264Ctx,
	add	r8, r9, #468	@ ivtmp.1470, pCurrSlicePara,
	add	r3, r9, #596	@ ivtmp.1485, pCurrSlicePara,
	ldr	r9, [sp, #4]	@ ivtmp.1474, %sfp
	mov	lr, r5	@ ivtmp.1492, ivtmp.1478
	mov	r1, r0	@ ivtmp.1534, ivtmp.1520
	add	r6, r6, #140	@ ivtmp.1461, ivtmp.1461,
	add	r5, r5, #12	@ ivtmp.1478, ivtmp.1478,
	add	lr, lr, #140	@ ivtmp.1492, ivtmp.1492,
	add	ip, ip, #140	@ ivtmp.1506, ivtmp.1506,
	add	r0, r0, #12	@ ivtmp.1520, ivtmp.1520,
	add	r1, r1, #140	@ ivtmp.1534, ivtmp.1534,
	mov	r2, #0	@ i,
.L1223:
	ldr	r10, [r6, #4]!	@ D.40944, MEM[base: _38, offset: 0B]
	add	r2, r2, #1	@ i, i,
	add	r9, r9, #4	@ ivtmp.1474, ivtmp.1474,
	str	r10, [r8, #4]!	@ D.40944, MEM[base: _434, offset: 0B]
	ldr	r10, [r5, #4]!	@ D.40944, MEM[base: _29, offset: 0B]
	str	r10, [r3, #4]!	@ D.40944, MEM[base: _5, offset: 0B]
	ldr	r10, [lr, #4]!	@ D.40944, MEM[base: _438, offset: 0B]
	str	r10, [r9, #724]	@ D.40944, MEM[base: _437, offset: 728B]
	ldr	r10, [ip, #4]!	@ D.40944, MEM[base: _444, offset: 0B]
	str	r10, [r9, #1236]	@ D.40944, MEM[base: _437, offset: 1240B]
	ldr	r10, [r0, #4]!	@ D.40944, MEM[base: _4, offset: 0B]
	str	r10, [r9, #1364]	@ D.40944, MEM[base: _437, offset: 1368B]
	ldr	r10, [r1, #4]!	@ D.40944, MEM[base: _3, offset: 0B]
	str	r10, [r9, #1492]	@ D.40944, MEM[base: _437, offset: 1496B]
	ldr	r10, [r7, #260]	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r10, r2	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1, i
	bcs	.L1223	@,
	b	.L1221	@
.L1277:
	ldr	r3, [sp, #4]	@ tmp847, %sfp
	ldr	r1, [r3, #1248]	@ pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc, pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc
	strb	r1, [r9, #4]	@ pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc, pCurrSlicePara_48->weight_flag
	b	.L1182	@
.L1278:
	ldr	r1, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1201	@,
	add	r5, r4, #27136	@ ivtmp.1828, pH264Ctx,
	mov	r6, r9	@ ivtmp.1845, pCurrSlicePara
	add	r5, r5, #32	@ ivtmp.1828, ivtmp.1828,
	mov	r8, #0	@ i,
	ldr	fp, [sp, #16]	@ ExistImgIdc_1, %sfp
	b	.L1217	@
.L1215:
	strb	r3, [r6, #2782]	@ D.40946, MEM[base: _609, offset: 2782B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.40946, _361->is_long_term
	strb	r3, [r6, #2783]	@ D.40946, MEM[base: _609, offset: 2783B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r3, [r3, #16]	@ D.40944, _364->poc
	str	r3, [r6, #2808]	@ D.40944, MEM[base: _609, offset: 2808B]
.L1216:
	ldr	r3, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	add	r8, r8, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.1828, ivtmp.1828,
	add	r6, r6, #36	@ ivtmp.1845, ivtmp.1845,
	cmp	r3, r8	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bls	.L1201	@,
.L1217:
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r3, [r3, #4]	@ _313->frame_store, _313->frame_store
	ldr	r1, [r3, #508]	@, _314->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r3, [r3, #4]	@ _318->frame_store, _318->frame_store
	ldr	r3, [r3, #548]	@ D.40942, _319->pmv_address_idc
	str	r3, [r6, #2788]	@ D.40942, MEM[base: _609, offset: 2788B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r3, [r3, #4]	@ _322->frame_store, _322->frame_store
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.40946, _323->is_used
	strb	r3, [r6, #2777]	@ D.40946, MEM[base: _609, offset: 2777B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r3, [r3, #4]	@ _326->frame_store, _326->frame_store
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _327->non_existing, _327->non_existing
	cmp	r3, #1	@ _327->non_existing,
	moveq	r0, fp	@ D.40940, ExistImgIdc_1
	beq	.L1214	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r3, [r0, #408]	@ pstLogicFs_317->pstDecodeFs, pstLogicFs_317->pstDecodeFs
	ldrne	r0, [r3, #4]	@ D.40940, _329->PhyFsID
.L1214:
	str	r0, [r6, #2792]	@ D.40940, MEM[base: _609, offset: 2792B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r3, [r3, #4]	@ _334->frame_store, _334->frame_store
	ldr	r3, [r3, #552]	@ D.40942, _335->apc_idc
	str	r3, [r6, #2796]	@ D.40942, MEM[base: _609, offset: 2796B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r3, [r3, #4]	@ _338->frame_store, _338->frame_store
	ldr	r3, [r3, #524]	@ D.40944, _339->poc
	str	r3, [r6, #2784]	@ D.40944, MEM[base: _609, offset: 2784B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.40946, _342->structure
	strb	r3, [r6, #2776]	@ D.40946, MEM[base: _609, offset: 2776B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r3, [r3, #4]	@ _345->frame_store, _345->frame_store
	ldrb	r3, [r3, #400]	@ zero_extendqisi2	@ D.40946, _346->frame.structure
	strb	r3, [r6, #2778]	@ D.40946, MEM[base: _609, offset: 2778B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.40946, _349->structure
	cmp	r3, #1	@ D.40946,
	bne	.L1215	@,
	strb	r3, [r6, #2780]	@ D.40946, MEM[base: _609, offset: 2780B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.40946, _353->is_long_term
	strb	r3, [r6, #2781]	@ D.40946, MEM[base: _609, offset: 2781B]
	ldr	r3, [r5]	@ MEM[base: _607, offset: 0B], MEM[base: _607, offset: 0B]
	ldr	r3, [r3, #16]	@ D.40944, _356->poc
	str	r3, [r6, #2804]	@ D.40944, MEM[base: _609, offset: 2804B]
	b	.L1216	@
.L1224:
	str	r8, [sp, #12]	@ D.40942, %sfp
	b	.L1186	@
.L1225:
	str	r3, [sp, #16]	@ D.40942, %sfp
	b	.L1192	@
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
	beq	.L1284	@,
	mov	r0, #0	@ TotalSize,
.L1283:
	ldr	r3, [r2, #8]	@ pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	ldr	r1, [r2, #12]	@ pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	ldr	r2, [r2, #4056]	@ pH264SliceParam, pH264SliceParam_18->pNextSlice
	add	r3, r3, r1	@ D.40957, pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	add	r3, r3, #7	@ D.40957, D.40957,
	cmp	r2, #0	@ pH264SliceParam,
	add	r0, r0, r3, lsr #3	@ TotalSize, TotalSize, D.40957,
	bne	.L1283	@,
	bx	lr	@
.L1284:
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
	add	r4, r0, #20480	@ tmp134, pH264Ctx,
	ldr	r1, .L1294	@,
	add	r6, r0, #49152	@ tmp139, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #252]	@ D.40962, pH264Ctx_5(D)->CurrSlice.first_mb_in_slice
	ldr	r3, [r6, #3628]	@ pH264Ctx_5(D)->SeErrFlg, pH264Ctx_5(D)->SeErrFlg
	adds	r3, r3, #0	@ tmp142, pH264Ctx_5(D)->SeErrFlg,
	movne	r3, #1	@ tmp142,
	cmp	r0, #262144	@ D.40962,
	orrcs	r3, r3, #1	@,, tmp145, tmp142
	cmp	r3, #0	@ tmp145,
	bne	.L1289	@,
	add	r2, r5, #12288	@ tmp147, pH264Ctx,
	ldr	r1, [r2, #1272]	@ pH264Ctx_5(D)->CurWidthInMb, pH264Ctx_5(D)->CurWidthInMb
	ldr	r3, [r2, #1276]	@ pH264Ctx_5(D)->CurHeightInMb, pH264Ctx_5(D)->CurHeightInMb
	mul	r3, r3, r1	@ D.40963, pH264Ctx_5(D)->CurHeightInMb, pH264Ctx_5(D)->CurWidthInMb
	sub	r3, r3, #1	@ D.40963, D.40963,
	cmp	r0, r3	@ D.40962, D.40963
	bhi	.L1289	@,
	mov	r0, r5	@, pH264Ctx
	ldr	r1, .L1294+4	@,
	bl	ue_v	@
	ldr	r3, [r6, #3628]	@ pH264Ctx_5(D)->SeErrFlg, pH264Ctx_5(D)->SeErrFlg
	cmp	r0, #9	@ SliceType,
	cmpls	r3, #0	@, pH264Ctx_5(D)->SeErrFlg,
	movne	r3, #1	@ tmp164,
	moveq	r3, #0	@ tmp164,
	bne	.L1289	@,
	mov	ip, #1	@ tmp165,
	movw	r1, #297	@ D.40962,
	mov	r2, ip, asl r0	@ D.40962, tmp165,
	and	r1, r1, r2	@ D.40962, D.40962, D.40962
	cmp	r1, #0	@ D.40962,
	bne	.L1290	@,
	ands	r0, r2, #660	@ D.40962, D.40962,
	bne	.L1291	@,
	tst	r2, #66	@ D.40962,
	beq	.L1289	@,
	strb	ip, [r4, #200]	@ tmp165, pH264Ctx_5(D)->CurrSlice.slice_type
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1290:
	strb	r3, [r4, #200]	@ tmp164, pH264Ctx_5(D)->CurrSlice.slice_type
	mov	r0, r3	@ D.40960, tmp164
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1291:
	mov	r3, #2	@ tmp172,
	mov	r0, r1	@ D.40960, D.40962
	strb	r3, [r4, #200]	@ tmp172, pH264Ctx_5(D)->CurrSlice.slice_type
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1289:
	mvn	r0, #0	@ D.40960,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1295:
	.align	2
.L1294:
	.word	.LC0
	.word	.LC1
	.fnend
	.size	SliceCheck, .-SliceCheck
	.align	2
	.global	PPSSPSCheck
	.type	PPSSPSCheck, %function
PPSSPSCheck:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r0, #12288	@ tmp126, pH264Ctx,
	add	r0, r0, #20480	@ tmp128, pH264Ctx,
	mov	ip, #2208	@ tmp131,
	ldr	r2, [r0, #212]	@ pH264Ctx_3(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_3(D)->CurrSlice.pic_parameter_set_id
	ldr	r3, [r1, #1296]	@ pH264Ctx_3(D)->PPS, pH264Ctx_3(D)->PPS
	mla	r3, ip, r2, r3	@ pPPS, tmp131, pH264Ctx_3(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_3(D)->PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ pPPS_7->is_valid, pPPS_7->is_valid
	cmp	r2, #0	@ pPPS_7->is_valid,
	ldrne	r2, [r3, #28]	@ pPPS_7->seq_parameter_set_id, pPPS_7->seq_parameter_set_id
	movne	r0, #4000	@ tmp139,
	ldrne	r3, [r1, #1292]	@ pH264Ctx_3(D)->SPS, pH264Ctx_3(D)->SPS
	mlane	r3, r0, r2, r3	@ tmp140, tmp139, pPPS_7->seq_parameter_set_id, pH264Ctx_3(D)->SPS
	ldrneb	r0, [r3, #23]	@ zero_extendqisi2	@ pSPS_12->is_valid, pSPS_12->is_valid
	clzne	r0, r0	@ D.40973, pSPS_12->is_valid
	movne	r0, r0, lsr #5	@ D.40973, D.40973,
	rsbne	r0, r0, #0	@ D.40968, D.40973
	mvneq	r0, #0	@ D.40968,
	bx	lr	@
	.fnend
	.size	PPSSPSCheck, .-PPSSPSCheck
	.align	2
	.global	PPSSPSCheckTmpId
	.type	PPSSPSCheckTmpId, %function
PPSSPSCheckTmpId:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #12288	@ tmp129, pH264Ctx,
	mov	r3, #2208	@ tmp131,
	ldr	r2, [r0, #1296]	@ pH264Ctx_3(D)->PPS, pH264Ctx_3(D)->PPS
	mla	r1, r3, r1, r2	@ pPPS, tmp131, tmp_pic_parameter_set_id, pH264Ctx_3(D)->PPS
	ldrb	r3, [r1, #19]	@ zero_extendqisi2	@ pPPS_7->is_valid, pPPS_7->is_valid
	cmp	r3, #0	@ pPPS_7->is_valid,
	beq	.L1302	@,
	ldr	r2, [r0, #1284]	@ pH264Ctx_3(D)->MaxSpsNum, pH264Ctx_3(D)->MaxSpsNum
	ldr	r3, [r1, #28]	@ D.40979, pPPS_7->seq_parameter_set_id
	sub	r2, r2, #1	@ D.40981, pH264Ctx_3(D)->MaxSpsNum,
	cmp	r3, r2	@ D.40979, D.40981
	bhi	.L1302	@,
	ldr	r2, [r0, #1292]	@ pH264Ctx_3(D)->SPS, pH264Ctx_3(D)->SPS
	mov	r1, #4000	@ tmp142,
	mla	r3, r1, r3, r2	@ tmp143, tmp142, D.40979, pH264Ctx_3(D)->SPS
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ pSPS_15->is_valid, pSPS_15->is_valid
	clz	r0, r0	@ D.40983, pSPS_15->is_valid
	mov	r0, r0, lsr #5	@ D.40983, D.40983,
	rsb	r0, r0, #0	@ D.40977, D.40983
	bx	lr	@
.L1302:
	mvn	r0, #0	@ D.40977,
	bx	lr	@
	.fnend
	.size	PPSSPSCheckTmpId, .-PPSSPSCheckTmpId
	.align	2
	.global	IsNewPic
	.type	IsNewPic, %function
IsNewPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp300, pH264Ctx,
	add	r1, r0, #12288	@ tmp182, pH264Ctx,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r1, [r1, #2044]	@ pH264Ctx_7(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_7(D)->CurrSPS.seq_parameter_set_id
	ldr	ip, [r3, #1852]	@ pH264Ctx_7(D)->PrevSlice.seq_parameter_set_id, pH264Ctx_7(D)->PrevSlice.seq_parameter_set_id
	ldr	r2, [r3, #1856]	@ pH264Ctx_7(D)->PrevSlice.pic_parameter_set_id, pH264Ctx_7(D)->PrevSlice.pic_parameter_set_id
	ldr	lr, [r3, #212]	@ pH264Ctx_7(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_7(D)->CurrSlice.pic_parameter_set_id
	ldr	r5, [r3, #1864]	@ pH264Ctx_7(D)->PrevSlice.frame_num, pH264Ctx_7(D)->PrevSlice.frame_num
	cmp	r2, lr	@ pH264Ctx_7(D)->PrevSlice.pic_parameter_set_id, pH264Ctx_7(D)->CurrSlice.pic_parameter_set_id
	cmpeq	ip, r1	@, pH264Ctx_7(D)->PrevSlice.seq_parameter_set_id, pH264Ctx_7(D)->CurrSPS.seq_parameter_set_id
	ldr	r4, [r3, #220]	@ pH264Ctx_7(D)->CurrSlice.frame_num, pH264Ctx_7(D)->CurrSlice.frame_num
	ldrb	lr, [r3, #1848]	@ zero_extendqisi2	@ D.40988, pH264Ctx_7(D)->PrevSlice.field_pic_flag
	ldrb	ip, [r3, #201]	@ zero_extendqisi2	@ D.40988, pH264Ctx_7(D)->CurrSlice.field_pic_flag
	movne	r1, #1	@ tmp195,
	moveq	r1, #0	@ tmp195,
	cmp	r5, r4	@ pH264Ctx_7(D)->PrevSlice.frame_num, pH264Ctx_7(D)->CurrSlice.frame_num
	moveq	r2, r1	@, tmp205, tmp195
	orrne	r2, r1, #1	@,, tmp205, tmp195
	cmp	lr, ip	@ D.40988, D.40988
	orrne	r2, r2, #1	@,, D.40986, tmp205
	cmp	lr, #0	@ D.40988,
	cmpne	ip, #0	@, D.40988,
	beq	.L1305	@,
	ldrb	ip, [r3, #1849]	@ zero_extendqisi2	@ pH264Ctx_7(D)->PrevSlice.bottom_field_flag, pH264Ctx_7(D)->PrevSlice.bottom_field_flag
	ldrb	r1, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_7(D)->CurrSlice.bottom_field_flag, pH264Ctx_7(D)->CurrSlice.bottom_field_flag
	cmp	ip, r1	@ pH264Ctx_7(D)->PrevSlice.bottom_field_flag, pH264Ctx_7(D)->CurrSlice.bottom_field_flag
	orrne	r2, r2, #1	@,, result, D.40986
.L1305:
	ldr	r1, [r3, #1860]	@ D.40987, pH264Ctx_7(D)->PrevSlice.nal_ref_idc
	ldr	ip, [r3, #232]	@ D.40987, pH264Ctx_7(D)->CurrSlice.nal_ref_idc
	cmp	r1, ip	@ D.40987, D.40987
	moveq	r1, #0	@ D.40987,
	beq	.L1306	@,
	cmp	ip, #0	@ D.40987,
	cmpne	r1, #0	@, D.40987,
	moveq	r1, #1	@ D.40987,
	movne	r1, #0	@ D.40987,
.L1306:
	ldrb	ip, [r3, #1850]	@ zero_extendqisi2	@ D.40988, pH264Ctx_7(D)->PrevSlice.nal_unit_type
	ldrb	lr, [r3, #203]	@ zero_extendqisi2	@ D.40988, pH264Ctx_7(D)->CurrSlice.nal_unit_type
	cmp	ip, lr	@ D.40988, D.40988
	orrne	r2, r2, #1	@,, D.40989, result
	cmp	lr, #5	@ D.40988,
	cmpeq	ip, #5	@, D.40988,
	orr	r2, r2, r1	@ result, D.40989, D.40987
	beq	.L1315	@,
.L1307:
	add	r0, r0, #16384	@ tmp257, pH264Ctx,
	ldr	r1, [r0, #112]	@ D.40987, pH264Ctx_7(D)->CurrSPS.pic_order_cnt_type
	cmp	r1, #0	@ D.40987,
	bne	.L1308	@,
	ldr	r1, [r3, #1872]	@ pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb, pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb
	ldr	lr, [r0, #3416]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom
	ldr	ip, [r3, #1876]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom, pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r0, [r0, #3412]	@ pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb
	cmp	r1, r0	@ pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb, pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb
	cmpeq	ip, lr	@, pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom
	movne	r1, #1	@ D.40989,
	moveq	r1, #0	@ D.40989,
	orr	r2, r2, r1	@ result, result, D.40989
.L1309:
	ldr	r0, [r3, #252]	@ pH264Ctx_7(D)->CurrSlice.first_mb_in_slice, pH264Ctx_7(D)->CurrSlice.first_mb_in_slice
	cmp	r0, #0	@ pH264Ctx_7(D)->CurrSlice.first_mb_in_slice,
	movne	r0, r2	@,, result
	orreq	r0, r2, #1	@,,, result
	ldmfd	sp!, {r4, r5, pc}	@
.L1308:
	cmp	r1, #1	@ D.40987,
	bne	.L1309	@,
	ldr	r1, [r3, #1880]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt
	ldr	lr, [r0, #3464]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	ldr	ip, [r3, #1884]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt
	ldr	r0, [r0, #3460]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	cmp	r1, r0	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	cmpeq	ip, lr	@, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	movne	r1, #1	@ D.40989,
	moveq	r1, #0	@ D.40989,
	orr	r2, r2, r1	@ result, result, D.40989
	b	.L1309	@
.L1315:
	ldr	ip, [r3, #1868]	@ pH264Ctx_7(D)->PrevSlice.idr_pic_id, pH264Ctx_7(D)->PrevSlice.idr_pic_id
	ldr	r1, [r3, #240]	@ pH264Ctx_7(D)->CurrSlice.idr_pic_id, pH264Ctx_7(D)->CurrSlice.idr_pic_id
	cmp	ip, r1	@ pH264Ctx_7(D)->PrevSlice.idr_pic_id, pH264Ctx_7(D)->CurrSlice.idr_pic_id
	orrne	r2, r2, #1	@,, result, result
	b	.L1307	@
	.fnend
	.size	IsNewPic, .-IsNewPic
	.align	2
	.global	ref_pic_list_reordering
	.type	ref_pic_list_reordering, %function
ref_pic_list_reordering:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #20480	@ tmp283, pH264Ctx,
	add	r3, r0, #12288	@ tmp175, pH264Ctx,
	mov	lr, #2208	@ tmp183,
	ldr	r1, [r5, #212]	@ pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id
	mov	ip, #4000	@ tmp187,
	ldr	r2, [r3, #1296]	@ pH264Ctx_14(D)->PPS, pH264Ctx_14(D)->PPS
	add	r7, r0, #16384	@ tmp282, pH264Ctx,
	ldr	r3, [r3, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r0, #0	@ tmp191,
	mov	r6, #1	@ tmp202,
	mla	r2, lr, r1, r2	@ tmp184, tmp183, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	ldr	r2, [r2, #28]	@ pPPS_18->seq_parameter_set_id, pPPS_18->seq_parameter_set_id
	strb	r0, [r7, #3504]	@ tmp191, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	strb	r0, [r7, #3505]	@ tmp191, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	mla	r3, ip, r2, r3	@ pSPS, tmp187, pPPS_18->seq_parameter_set_id, pH264Ctx_14(D)->SPS
	ldrb	r1, [r5, #201]	@ zero_extendqisi2	@ pH264Ctx_14(D)->CurrSlice.field_pic_flag, pH264Ctx_14(D)->CurrSlice.field_pic_flag
	cmp	r1, r0	@ pH264Ctx_14(D)->CurrSlice.field_pic_flag,
	ldrb	r1, [r5, #200]	@ zero_extendqisi2	@ D.41023, pH264Ctx_14(D)->CurrSlice.slice_type
	ldr	r3, [r3, #2904]	@ pSPS_22->log2_max_frame_num_minus4, pSPS_22->log2_max_frame_num_minus4
	addne	r3, r3, #5	@ D.41021, pSPS_22->log2_max_frame_num_minus4,
	addeq	r3, r3, #4	@ D.41021, pSPS_22->log2_max_frame_num_minus4,
	cmp	r1, #1	@ D.41023,
	mov	r6, r6, asl r3	@ MaxPicNum, tmp205,
	bls	.L1352	@,
.L1333:
	add	r4, r4, #49152	@ tmp252, pH264Ctx,
	ldr	r3, [r4, #3628]	@ D.41026, pH264Ctx_14(D)->SeErrFlg
.L1331:
	adds	r0, r3, #0	@ D.41029, D.41026,
	movne	r0, #1	@ D.41029,
	rsb	r0, r0, #0	@ D.41019, D.41029
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1352:
	add	r8, r4, #13504	@ D.41025, pH264Ctx,
	mov	r1, #1	@,
	add	r8, r8, #24	@ D.41025, D.41025,
	mov	r0, r8	@, D.41025
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41028, pH264Ctx_14(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _84->nal_bitoffset, _84->nal_bitoffset
	add	r3, r3, #1	@ D.41021, _84->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41021, _84->nal_bitoffset
	uxtb	r0, r0	@ D.41023,
	strb	r0, [r7, #3504]	@ D.41023, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r0, #0	@ D.41023,
	beq	.L1351	@,
	ldr	r3, [r5, #256]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1
	cmn	r3, #2	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	beq	.L1339	@,
	add	r10, r4, #19712	@ ivtmp.2076, pH264Ctx,
	mov	r9, #0	@ i,
	add	r10, r10, #176	@ ivtmp.2076, ivtmp.2076,
	b	.L1329	@
.L1326:
	cmp	r0, #2	@ D.41021,
	beq	.L1353	@,
.L1327:
	ldr	r3, [r5, #256]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r3, #2	@ D.41021, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r3, r9	@ D.41021, i
	bls	.L1354	@,
.L1329:
	ldr	r1, .L1358	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	add	fp, r4, #49152	@ tmp223, pH264Ctx,
	add	r9, r9, #1	@ i, i,
	cmp	r0, #3	@ D.41021,
	str	r0, [r10, #4]!	@ D.41021, MEM[base: _98, offset: 0B]
	bhi	.L1324	@,
	ldr	r3, [fp, #3628]	@ pH264Ctx_14(D)->SeErrFlg, pH264Ctx_14(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_14(D)->SeErrFlg,
	bne	.L1324	@,
	cmp	r0, #3	@ D.41021,
	beq	.L1351	@,
	cmp	r0, #1	@ D.41021,
	bhi	.L1326	@,
	ldr	r1, .L1358+4	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r6, r0	@ MaxPicNum, D.41021
	str	r0, [r10, #264]	@ D.41021, MEM[base: _98, offset: 264B]
	bls	.L1324	@,
	ldr	r3, [fp, #3628]	@ pH264Ctx_14(D)->SeErrFlg, pH264Ctx_14(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_14(D)->SeErrFlg,
	beq	.L1327	@,
.L1324:
	mvn	r0, #0	@ D.41019,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1354:
	cmp	r9, r3	@ i, D.41021
	bne	.L1351	@,
.L1321:
	add	r3, r3, #4928	@ tmp236, D.41021,
	add	r3, r3, #44	@ tmp236, tmp236,
	add	r3, r4, r3, lsl #2	@ tmp237, pH264Ctx, tmp236,
	ldr	r3, [r3, #4]	@ tmp239, pH264Ctx_14(D)->CurrReorder.reordering_of_pic_nums_idc_l0
	cmp	r3, #3	@ tmp239,
	bne	.L1324	@,
.L1351:
	ldrb	r1, [r5, #200]	@ zero_extendqisi2	@ D.41023, pH264Ctx_14(D)->CurrSlice.slice_type
	cmp	r1, #1	@ D.41023,
	bne	.L1333	@,
	mov	r0, r8	@, D.41025
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41028, pH264Ctx_14(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _89->nal_bitoffset, _89->nal_bitoffset
	add	r3, r3, #1	@ D.41021, _89->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41021, _89->nal_bitoffset
	uxtb	r0, r0	@ D.41023,
	strb	r0, [r7, #3505]	@ D.41023, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r0, #0	@ D.41023,
	beq	.L1333	@,
	ldr	r3, [r5, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmn	r3, #2	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	beq	.L1333	@,
	add	r8, r4, #19968	@ ivtmp.2063, pH264Ctx,
	mov	r7, #0	@ i,
	add	r8, r8, #52	@ ivtmp.2063, ivtmp.2063,
	b	.L1338	@
.L1337:
	add	r7, r7, #1	@ i, i,
	cmp	r7, r3	@ i, D.41021
	bcs	.L1355	@,
.L1338:
	ldr	r1, .L1358+8	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #3	@ D.41021,
	str	r0, [r8, #4]!	@ D.41021, MEM[base: _103, offset: 0B]
	bhi	.L1324	@,
	add	r9, r4, #49152	@ tmp281, pH264Ctx,
	ldr	r3, [r9, #3628]	@ D.41026, pH264Ctx_14(D)->SeErrFlg
	cmp	r3, #0	@ D.41026,
	bne	.L1324	@,
	cmp	r0, #3	@ D.41021,
	beq	.L1331	@,
	cmp	r0, #1	@ D.41021,
	bls	.L1356	@,
	cmp	r0, #2	@ D.41021,
	beq	.L1357	@,
	ldr	r3, [r5, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #2	@ D.41021, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r7	@ D.41021, i
	bne	.L1337	@,
	mvn	r0, #0	@ D.41019,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1356:
	ldr	r1, .L1358+12	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r6, r0	@ MaxPicNum, D.41021
	str	r0, [r8, #264]	@ D.41021, MEM[base: _103, offset: 264B]
	bls	.L1324	@,
	ldr	r3, [r9, #3628]	@ pH264Ctx_14(D)->SeErrFlg, pH264Ctx_14(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_14(D)->SeErrFlg,
	bne	.L1324	@,
.L1335:
	ldr	r2, [r5, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r2, #2	@ D.41021, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r7	@ D.41021, i
	bne	.L1337	@,
	add	r2, r2, #4992	@ tmp269, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	add	r2, r2, #16	@ tmp269, tmp269,
	ldr	r2, [r4, r2, asl #2]	@ tmp270, pH264Ctx_14(D)->CurrReorder.reordering_of_pic_nums_idc_l1
	cmp	r2, #3	@ tmp270,
	beq	.L1337	@,
	b	.L1324	@
.L1353:
	ldr	r1, .L1358+16	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r10, #528]	@, MEM[base: _98, offset: 528B]
	b	.L1327	@
.L1357:
	ldr	r1, .L1358+20	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r8, #524]	@, MEM[base: _103, offset: 524B]
	b	.L1335	@
.L1355:
	ldr	r3, [r9, #3628]	@ D.41026, pH264Ctx_14(D)->SeErrFlg
	b	.L1331	@
.L1339:
	mov	r3, #0	@ D.41021,
	b	.L1321	@
.L1359:
	.align	2
.L1358:
	.word	.LC2
	.word	.LC3
	.word	.LC5
	.word	.LC6
	.word	.LC4
	.word	.LC7
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
	add	r3, r0, #12288	@ tmp185, pH264Ctx,
	add	r7, r0, #20480	@ tmp271, pH264Ctx,
	mov	fp, #2208	@ tmp190,
	ldr	r2, [r3, #1296]	@ pH264Ctx_15(D)->PPS, pH264Ctx_15(D)->PPS
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	ip, [r7, #212]	@ pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id
	mov	r8, #4000	@ tmp196,
	ldr	r3, [r3, #1292]	@ pH264Ctx_15(D)->SPS, pH264Ctx_15(D)->SPS
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, .L1390	@,
	mov	r4, #1	@ tmp201,
	mla	r2, fp, ip, r2	@ pPPS, tmp190, pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_15(D)->PPS
	str	r2, [sp]	@ pPPS, %sfp
	ldr	r2, [r2, #28]	@ pPPS_19->seq_parameter_set_id, pPPS_19->seq_parameter_set_id
	mla	r8, r8, r2, r3	@ pSPS, tmp196, pPPS_19->seq_parameter_set_id, pH264Ctx_15(D)->SPS
	bl	ue_v	@
	str	r0, [r7, #264]	@ D.41063, pH264Ctx_15(D)->CurrSlice.luma_log2_weight_denom
	mov	r9, r4, asl r0	@ y_default_weight, tmp201,
	ldr	r10, [r8, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r10, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1384	@,
.L1361:
	cmp	r0, #7	@ D.41063,
	bhi	.L1380	@,
	ldr	r3, [r7, #268]	@ pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom, pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom
	cmp	r3, #7	@ pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom,
	bhi	.L1380	@,
	add	r3, r5, #49152	@ tmp270, pH264Ctx,
	str	r3, [sp, #4]	@ tmp270, %sfp
	ldr	r4, [r3, #3628]	@ pH264Ctx_15(D)->SeErrFlg, pH264Ctx_15(D)->SeErrFlg
	cmp	r4, #0	@ pH264Ctx_15(D)->SeErrFlg,
	bne	.L1380	@,
	add	r6, r5, #13504	@ D.41069, pH264Ctx,
	add	fp, r5, #20736	@ ivtmp.2100, pH264Ctx,
	add	r6, r6, #24	@ D.41069, D.41069,
	add	fp, fp, #144	@ ivtmp.2100, ivtmp.2100,
	b	.L1368	@
.L1364:
	ldr	r2, [r8, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r2, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1385	@,
.L1365:
	str	r2, [fp]	@ pSPS_23->chroma_format_idc, MEM[base: _160, offset: 0B]
	str	r2, [fp, #768]	@ pSPS_23->chroma_format_idc, MEM[base: _160, offset: 768B]
	str	r2, [fp, #128]	@ pSPS_23->chroma_format_idc, MEM[base: _160, offset: 128B]
	str	r2, [fp, #896]	@ pSPS_23->chroma_format_idc, MEM[base: _160, offset: 896B]
.L1367:
	ldr	r2, [r7, #256]	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r4, r4, #1	@ i, i,
	add	fp, fp, #4	@ ivtmp.2100, ivtmp.2100,
	cmp	r2, r4	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1, i
	bcc	.L1386	@,
.L1368:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41069
	bl	BsGet	@
	ldr	r1, [r5, #368]	@ D.41067, pH264Ctx_15(D)->pCurrNal
	ldr	r2, [r1, #64]	@ _109->nal_bitoffset, _109->nal_bitoffset
	add	r2, r2, #1	@ D.41063, _109->nal_bitoffset,
	str	r2, [r1, #64]	@ D.41063, _109->nal_bitoffset
	cmp	r0, #0	@ D.41065
	streq	r9, [fp, #-128]	@ y_default_weight, MEM[base: _170, offset: 4294967168B]
	streq	r0, [fp, #640]	@ D.41065,
	beq	.L1364	@,
	ldr	r1, .L1390+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1390+8	@,
	str	r0, [fp, #-128]	@, MEM[base: _168, offset: 4294967168B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #640]	@,
	ldr	r2, [r8, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r2, #0	@ pSPS_23->chroma_format_idc,
	beq	.L1365	@,
.L1385:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41069
	bl	BsGet	@
	ldr	r1, [r5, #368]	@ D.41067, pH264Ctx_15(D)->pCurrNal
	ldr	r2, [r1, #64]	@ _113->nal_bitoffset, _113->nal_bitoffset
	add	r2, r2, #1	@ D.41063, _113->nal_bitoffset,
	str	r2, [r1, #64]	@ D.41063, _113->nal_bitoffset
	cmp	r0, #0	@ D.41065
	bne	.L1387	@,
	str	r10, [fp]	@ uv_default_weight, MEM[base: _156, offset: 0B]
	str	r0, [fp, #768]	@ D.41065, MEM[base: _156, offset: 768B]
	str	r10, [fp, #128]	@ uv_default_weight, MEM[base: _156, offset: 128B]
	str	r0, [fp, #896]	@ D.41065,
	b	.L1367	@
.L1386:
	ldr	r3, [sp]	@ pPPS, %sfp
	ldr	r3, [r3, #44]	@ pPPS_19->weighted_bipred_idc, pPPS_19->weighted_bipred_idc
	cmp	r3, #1	@ pPPS_19->weighted_bipred_idc,
	beq	.L1369	@,
.L1370:
	ldr	r3, [sp, #4]	@ tmp270, %sfp
	ldr	r0, [r3, #3628]	@ pH264Ctx_15(D)->SeErrFlg, pH264Ctx_15(D)->SeErrFlg
	adds	r0, r0, #0	@ D.41068, pH264Ctx_15(D)->SeErrFlg,
	movne	r0, #1	@ D.41068,
	rsb	r0, r0, #0	@ D.41060, D.41068
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1387:
	ldr	r1, .L1390+12	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1390+16	@,
	str	r0, [fp]	@, MEM[base: _164, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1390+12	@,
	str	r0, [fp, #768]	@, MEM[base: _164, offset: 768B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1390+16	@,
	str	r0, [fp, #128]	@, MEM[base: _164, offset: 128B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #896]	@,
	b	.L1367	@
.L1384:
	ldr	r1, .L1390+20	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	mov	r3, r0	@ D.41063,
	ldr	r0, [r7, #264]	@ D.41063, pH264Ctx_15(D)->CurrSlice.luma_log2_weight_denom
	mov	r10, r4, asl r3	@ uv_default_weight, tmp201,
	str	r3, [r7, #268]	@ D.41063, pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom
	b	.L1361	@
.L1369:
	ldrb	r3, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.slice_type, pH264Ctx_15(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_15(D)->CurrSlice.slice_type,
	bne	.L1370	@,
	add	fp, r5, #21248	@ ivtmp.2090, pH264Ctx,
	mov	r4, #0	@ i,
	add	fp, fp, #16	@ ivtmp.2090, ivtmp.2090,
	b	.L1376	@
.L1372:
	ldr	r3, [r8, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r3, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1388	@,
.L1373:
	str	r3, [fp]	@ pSPS_23->chroma_format_idc, MEM[base: _137, offset: 0B]
	str	r3, [fp, #768]	@ pSPS_23->chroma_format_idc, MEM[base: _137, offset: 768B]
	str	r3, [fp, #128]	@ pSPS_23->chroma_format_idc, MEM[base: _137, offset: 128B]
	str	r3, [fp, #896]	@ pSPS_23->chroma_format_idc, MEM[base: _137, offset: 896B]
.L1375:
	ldr	r3, [r7, #260]	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r4, r4, #1	@ i, i,
	add	fp, fp, #4	@ ivtmp.2090, ivtmp.2090,
	cmp	r3, r4	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1, i
	bcc	.L1370	@,
.L1376:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41069
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41067, pH264Ctx_15(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _117->nal_bitoffset, _117->nal_bitoffset
	add	r3, r3, #1	@ D.41063, _117->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41063, _117->nal_bitoffset
	cmp	r0, #0	@ D.41065
	streq	r9, [fp, #-128]	@ y_default_weight, MEM[base: _152, offset: 4294967168B]
	streq	r0, [fp, #640]	@ D.41065,
	beq	.L1372	@,
	ldr	r1, .L1390+24	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1390+28	@,
	str	r0, [fp, #-128]	@, MEM[base: _3, offset: 4294967168B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #640]	@,
	ldr	r3, [r8, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r3, #0	@ pSPS_23->chroma_format_idc,
	beq	.L1373	@,
.L1388:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41069
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41067, pH264Ctx_15(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _121->nal_bitoffset, _121->nal_bitoffset
	add	r3, r3, #1	@ D.41063, _121->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41063, _121->nal_bitoffset
	cmp	r0, #0	@ D.41065
	bne	.L1389	@,
	str	r10, [fp]	@ uv_default_weight, MEM[base: _141, offset: 0B]
	str	r0, [fp, #768]	@ D.41065, MEM[base: _141, offset: 768B]
	str	r10, [fp, #128]	@ uv_default_weight, MEM[base: _141, offset: 128B]
	str	r0, [fp, #896]	@ D.41065,
	b	.L1375	@
.L1380:
	mvn	r0, #0	@ D.41060,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1389:
	ldr	r1, .L1390+32	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1390+36	@,
	str	r0, [fp]	@, MEM[base: _106, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1390+32	@,
	str	r0, [fp, #768]	@, MEM[base: _106, offset: 768B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1390+36	@,
	str	r0, [fp, #128]	@, MEM[base: _106, offset: 128B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #896]	@,
	b	.L1375	@
.L1391:
	.align	2
.L1390:
	.word	.LC8
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC9
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
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
	moveq	r6, #100	@ D.41094,
	beq	.L1403	@,
	add	r8, r0, #24576	@ tmp264, pH264Ctx,
	mov	r10, #0	@ MMCONum,
	b	.L1395	@
.L1428:
	ldr	r1, .L1433	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r4, #2	@ memory_management_control_operation,
	beq	.L1426	@,
.L1405:
	cmp	r4, #6	@ memory_management_control_operation,
	orreq	r5, r5, #1	@,, tmp253, D.41095
	cmp	r5, #0	@ tmp253,
	bne	.L1408	@,
	cmp	r4, #4	@ memory_management_control_operation,
	beq	.L1427	@,
.L1409:
	cmp	r4, #6	@ memory_management_control_operation,
	bhi	.L1401	@,
.L1406:
	add	r3, r9, #49152	@ tmp259, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1401	@,
	cmp	r4, #0	@ memory_management_control_operation,
	beq	.L1411	@,
.L1410:
	subs	r6, r6, #1	@ D.41094, D.41094,
	beq	.L1401	@,
.L1403:
	ldr	r1, .L1433+4	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	bic	r3, r0, #2	@ D.41092, memory_management_control_operation,
	sub	r5, r0, #3	@ D.41095, memory_management_control_operation,
	clz	r5, r5	@ D.41095, D.41095
	cmp	r3, #1	@ D.41092,
	mov	r4, r0	@ memory_management_control_operation,
	mov	r5, r5, lsr #5	@ D.41095, D.41095,
	beq	.L1428	@,
	cmp	r4, #2	@ memory_management_control_operation,
	bne	.L1405	@,
.L1426:
	ldr	r1, .L1433+8	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r5, #0	@ D.41095,
	beq	.L1406	@,
.L1408:
	ldr	r1, .L1433+12	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r4, #4	@ memory_management_control_operation,
	bne	.L1409	@,
.L1427:
	ldr	r1, .L1433+16	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r9, #49152	@ tmp256, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	beq	.L1410	@,
.L1401:
	mvn	r0, #0	@ D.41093,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1432:
	ldr	r1, .L1433	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, [r4, #8]	@ D.41094, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].memory_management_control_operation
	cmp	r2, #2	@ D.41094,
	str	r0, [r4, #12]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].difference_of_pic_nums_minus1
	beq	.L1429	@,
.L1398:
	cmp	r2, #3	@ D.41094,
	cmpne	r2, #6	@, D.41094,
	beq	.L1430	@,
.L1399:
	cmp	r2, #4	@ D.41094,
	beq	.L1431	@,
.L1400:
	cmp	r2, #6	@ D.41094,
	bhi	.L1401	@,
	add	r3, r9, #49152	@ tmp240, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1401	@,
	cmp	r2, #0	@ D.41094,
	add	r10, r10, #1	@ MMCONum, MMCONum,
	beq	.L1411	@,
	cmp	r10, #100	@ MMCONum,
	beq	.L1401	@,
.L1395:
	ldr	r1, .L1433+4	@,
	mov	r0, r9	@, pH264Ctx
	ldr	r5, [r8, #1804]	@ D.41092, pH264Ctx_17(D)->CurrMarkIdx
	bl	ue_v	@
	mov	r6, r10, asl #2	@ tmp262, MMCONum,
	mov	r7, r10, asl #4	@ tmp263, MMCONum,
	add	r4, r6, r7	@ tmp140, tmp262, tmp263
	movw	r3, #2004	@ tmp142,
	mla	r4, r3, r5, r4	@ tmp143, tmp142, D.41092, tmp140
	add	r4, r9, r4	@ tmp144, pH264Ctx, tmp143
	add	r4, r4, #22272	@ tmp146, tmp144,
	add	r4, r4, #96	@ tmp146, tmp146,
	bic	r1, r0, #2	@ D.41092, D.41094,
	str	r0, [r4, #8]	@ D.41094, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].memory_management_control_operation
	cmp	r1, #1	@ D.41092,
	mov	r2, r0	@ D.41094,
	beq	.L1432	@,
	cmp	r2, #2	@ D.41094,
	bne	.L1398	@,
.L1429:
	ldr	r1, .L1433+8	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r6, r7	@ tmp173, tmp262, tmp263
	movw	r2, #2004	@ tmp175,
	mla	r3, r2, r5, r3	@ tmp176, tmp175, D.41092, tmp173
	add	r3, r9, r3	@ tmp177, pH264Ctx, tmp176
	add	r2, r3, #22272	@ tmp179, tmp177,
	str	r0, [r2, #112]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].long_term_pic_num
	ldr	r2, [r2, #104]	@ D.41094, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].memory_management_control_operation
	cmp	r2, #3	@ D.41094,
	cmpne	r2, #6	@, D.41094,
	bne	.L1399	@,
.L1430:
	ldr	r1, .L1433+12	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r6, r7	@ tmp201, tmp262, tmp263
	movw	r2, #2004	@ tmp203,
	mla	r3, r2, r5, r3	@ tmp204, tmp203, D.41092, tmp201
	add	r3, r9, r3	@ tmp205, pH264Ctx, tmp204
	add	r2, r3, #22272	@ tmp207, tmp205,
	str	r0, [r2, #116]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].long_term_frame_idx
	ldr	r2, [r2, #104]	@ D.41094, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].memory_management_control_operation
	cmp	r2, #4	@ D.41094,
	bne	.L1400	@,
.L1431:
	ldr	r1, .L1433+16	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r6, r6, r7	@ tmp222, tmp262, tmp263
	movw	r7, #2004	@ tmp224,
	mla	r5, r7, r5, r6	@ tmp225, tmp224, D.41092, tmp222
	add	r5, r9, r5	@ tmp226, pH264Ctx, tmp225
	add	r3, r5, #22272	@ tmp228, tmp226,
	add	r5, r3, #96	@ tmp238, tmp238,
	ldr	r2, [r3, #104]	@ D.41094, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].memory_management_control_operation
	str	r0, [r3, #120]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_67].max_long_term_frame_idx_plus1
	b	.L1400	@
.L1411:
	mov	r0, #0	@ D.41093,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1434:
	.align	2
.L1433:
	.word	.LC19
	.word	.LC18
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.fnend
	.size	DecMMCO, .-DecMMCO
	.align	2
	.global	dec_ref_pic_marking
	.type	dec_ref_pic_marking, %function
dec_ref_pic_marking:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp260, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #24576	@ tmp261, pH264Ctx,
	ldrb	r8, [r3, #205]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.new_pic_flag, pH264Ctx_5(D)->CurrSlice.new_pic_flag
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r7, [r6, #1804]	@ tmpMarkIdx, pH264Ctx_5(D)->CurrMarkIdx
	cmp	r8, #0	@ pH264Ctx_5(D)->CurrSlice.new_pic_flag,
	beq	.L1436	@,
	clz	r4, r7	@ D.41106, tmpMarkIdx
	mov	r4, r4, lsr #5	@ D.41106, D.41106,
	str	r4, [r6, #1804]	@ D.41106, pH264Ctx_5(D)->CurrMarkIdx
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	beq	.L1455	@,
.L1437:
	add	r0, r5, #13504	@, pH264Ctx,
	mov	r1, #1	@,
	add	r0, r0, #24	@,,
	bl	BsGet	@
	movw	r3, #2004	@ tmp197,
	mla	r4, r3, r4, r5	@ tmp198, tmp197, D.41106, pH264Ctx
	ldr	r2, [r5, #368]	@ D.41109, pH264Ctx_5(D)->pCurrNal
	add	r4, r4, #22272	@ tmp200, tmp198,
	ldr	r3, [r2, #64]	@ _52->nal_bitoffset, _52->nal_bitoffset
	add	r4, r4, #96	@ tmp200, tmp200,
	add	r3, r3, #1	@ D.41106, _52->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41106, _52->nal_bitoffset
	uxtb	r0, r0	@ D.41104,
	strb	r0, [r4, #7]	@ D.41104, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_86].adaptive_ref_pic_marking_mode_flag
	cmp	r0, #0	@ D.41104,
	bne	.L1439	@,
.L1444:
	mov	r3, #0	@ D.41103,
.L1451:
	mov	r0, r3	@, D.41103
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1436:
	movw	r4, #2004	@ tmp255,
	mla	r4, r4, r7, r0	@ tmp256, tmp255, tmpMarkIdx, pH264Ctx
	add	r4, r4, #22272	@ tmp258, tmp256,
	add	r4, r4, #96	@ tmp258, tmp258,
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid
	cmp	r2, #0	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid,
	bne	.L1456	@,
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	mov	r4, r7	@ D.41106, tmpMarkIdx
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	bne	.L1437	@,
.L1455:
	add	r6, r5, #13504	@ D.41107, pH264Ctx,
	mov	r1, #1	@,
	add	r6, r6, #24	@ D.41107, D.41107,
	mov	r0, r6	@, D.41107
	bl	BsGet	@
	movw	r3, #2004	@ tmp179,
	mla	r4, r3, r4, r5	@ tmp180, tmp179, D.41106, pH264Ctx
	ldr	r2, [r5, #368]	@ D.41109, pH264Ctx_5(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _42->nal_bitoffset, _42->nal_bitoffset
	add	r4, r4, #22272	@ tmp182, tmp180,
	add	r4, r4, #96	@ tmp182, tmp182,
	add	r3, r3, r1	@ D.41106, _42->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41106, _42->nal_bitoffset
	strb	r0, [r4, #5]	@, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_86].no_output_of_prior_pics_flag
	mov	r0, r6	@, D.41107
	bl	BsGet	@
	ldr	r1, [r5, #368]	@ D.41109, pH264Ctx_5(D)->pCurrNal
	mov	r3, #0	@ D.41103,
	ldr	r2, [r1, #64]	@ _47->nal_bitoffset, _47->nal_bitoffset
	add	r2, r2, #1	@ D.41106, _47->nal_bitoffset,
	str	r2, [r1, #64]	@ D.41106, _47->nal_bitoffset
	strb	r0, [r4, #6]	@, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_86].long_term_reference_flag
	mov	r0, r3	@, D.41103
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1456:
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	beq	.L1457	@,
	add	r0, r5, #13504	@, pH264Ctx,
	mov	r1, #1	@,
	add	r0, r0, #24	@,,
	ldrb	r6, [r4, #7]	@ zero_extendqisi2	@ D.41106, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41109, pH264Ctx_5(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _67->nal_bitoffset, _67->nal_bitoffset
	add	r3, r3, #1	@ D.41106, _67->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41106, _67->nal_bitoffset
	cmp	r6, r0	@ D.41106,
	bne	.L1443	@,
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag,
	beq	.L1444	@,
	mov	r1, r8	@, pH264Ctx_5(D)->CurrSlice.new_pic_flag
	mov	r0, r5	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	DecMMCO	@
.L1439:
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	DecMMCO	@
	cmn	r0, #1	@ D.41103,
	mov	r3, r0	@ D.41103,
	movne	r3, #0	@ D.41103,
	moveq	r2, #0	@ tmp207,
	movne	r2, #1	@ tmp216,
	streqb	r2, [r4, #4]	@ tmp207, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_86].is_valid
	strneb	r2, [r4, #4]	@ tmp216, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_86].is_valid
	mov	r0, r3	@, D.41103
	streq	r7, [r6, #1804]	@ tmpMarkIdx, pH264Ctx_5(D)->CurrMarkIdx
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1457:
	add	r6, r5, #13504	@ D.41107, pH264Ctx,
	mov	r1, #1	@,
	add	r6, r6, #24	@ D.41107, D.41107,
	ldrb	r7, [r4, #5]	@ zero_extendqisi2	@ D.41106, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].no_output_of_prior_pics_flag
	mov	r0, r6	@, D.41107
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41109, pH264Ctx_5(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _57->nal_bitoffset, _57->nal_bitoffset
	add	r3, r3, #1	@ D.41106, _57->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41106, _57->nal_bitoffset
	cmp	r7, r0	@ D.41106,
	bne	.L1443	@,
	mov	r0, r6	@, D.41107
	mov	r1, #1	@,
	ldrb	r4, [r4, #6]	@ zero_extendqisi2	@ D.41106, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].long_term_reference_flag
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41109, pH264Ctx_5(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _62->nal_bitoffset, _62->nal_bitoffset
	add	r3, r3, #1	@ D.41106, _62->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41106, _62->nal_bitoffset
	subs	r3, r4, r0	@ D.41103, D.41106,
	mvnne	r3, #0	@ D.41103,
	b	.L1451	@
.L1443:
	mvn	r3, #0	@ D.41103,
	b	.L1451	@
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
	add	fp, r0, #12288	@ tmp203, pH264Ctx,
	ldr	r1, .L1514	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	ldr	r3, [fp, #1288]	@ pH264Ctx_12(D)->MaxPpsNum, pH264Ctx_12(D)->MaxPpsNum
	sub	r3, r3, #1	@ D.41114, pH264Ctx_12(D)->MaxPpsNum,
	cmp	r0, r3	@ tmp_pic_parameter_set_id, D.41114
	mov	r9, r0	@ tmp_pic_parameter_set_id,
	bhi	.L1461	@,
	add	r10, r6, #49152	@ tmp365, pH264Ctx,
	ldr	r3, [r10, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1461	@,
	mov	r1, r0	@, tmp_pic_parameter_set_id
	mov	r0, r6	@, pH264Ctx
	bl	PPSSPSCheckTmpId	@
	subs	r8, r0, #0	@ D.41112,
	bne	.L1461	@,
	add	r4, r6, #20480	@ tmp367, pH264Ctx,
	mov	r7, #2208	@ tmp214,
	mov	r5, #4000	@ tmp220,
	str	r9, [r4, #212]	@ tmp_pic_parameter_set_id, pH264Ctx_12(D)->CurrSlice.pic_parameter_set_id
	ldr	r1, [fp, #1296]	@ pH264Ctx_12(D)->PPS, pH264Ctx_12(D)->PPS
	ldrb	r2, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	ldr	r3, [fp, #1292]	@ pH264Ctx_12(D)->SPS, pH264Ctx_12(D)->SPS
	mla	r7, r7, r9, r1	@ pPPS, tmp214, tmp_pic_parameter_set_id, pH264Ctx_12(D)->PPS
	cmp	r2, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	ldr	r2, [r7, #28]	@ pPPS_23->seq_parameter_set_id, pPPS_23->seq_parameter_set_id
	mla	r5, r5, r2, r3	@ pSPS, tmp220, pPPS_23->seq_parameter_set_id, pH264Ctx_12(D)->SPS
	beq	.L1462	@,
	ldr	r3, [r5, #3952]	@ pSPS_27->num_ref_frames, pSPS_27->num_ref_frames
	cmp	r3, #0	@ pSPS_27->num_ref_frames,
	beq	.L1462	@,
.L1463:
	ldr	fp, [r5, #2904]	@ pSPS_27->log2_max_frame_num_minus4, pSPS_27->log2_max_frame_num_minus4
	add	r9, r6, #13504	@ D.41120, pH264Ctx,
	add	r9, r9, #24	@ D.41120, D.41120,
	add	fp, fp, #4	@ D.41115, pSPS_27->log2_max_frame_num_minus4,
	mov	r0, r9	@, D.41120
	mov	r1, fp	@, D.41115
	bl	BsGet	@
	ldr	r2, [r6, #368]	@ D.41121, pH264Ctx_12(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _104->nal_bitoffset, _104->nal_bitoffset
	add	fp, r3, fp	@ D.41115, _104->nal_bitoffset, D.41115
	str	fp, [r2, #64]	@ D.41115, _104->nal_bitoffset
	str	r0, [r4, #220]	@ INFO, pH264Ctx_12(D)->CurrSlice.frame_num
	ldr	r3, [r10, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1461	@,
	ldrb	r3, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	mov	r3, #0	@ tmp245,
	streq	r0, [r4, #216]	@ INFO, pH264Ctx_12(D)->CurrSlice.prev_frame_num
	strb	r3, [r4, #201]	@ tmp245, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	strb	r3, [r4, #202]	@ tmp245, pH264Ctx_12(D)->CurrSlice.bottom_field_flag
	ldrb	r3, [r5, #18]	@ zero_extendqisi2	@ pSPS_27->frame_mbs_only_flag, pSPS_27->frame_mbs_only_flag
	cmp	r3, #0	@ pSPS_27->frame_mbs_only_flag,
	beq	.L1508	@,
	ldr	r2, [r5, #3956]	@ pSPS_27->pic_width_in_mbs_minus1, pSPS_27->pic_width_in_mbs_minus1
	ldr	r1, [r5, #3960]	@ pSPS_27->pic_height_in_map_units_minus1, pSPS_27->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.41115, pSPS_27->pic_width_in_mbs_minus1,
	mla	r3, r1, r3, r3	@ pic_size, pSPS_27->pic_height_in_map_units_minus1, D.41115, D.41115
.L1484:
	ldrb	r2, [r5, #19]	@ zero_extendqisi2	@ pSPS_27->mb_adaptive_frame_field_flag, pSPS_27->mb_adaptive_frame_field_flag
	cmp	r2, #0	@ pSPS_27->mb_adaptive_frame_field_flag,
	bne	.L1470	@,
	strb	r2, [r4, #204]	@ pSPS_27->mb_adaptive_frame_field_flag, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
.L1472:
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	cmp	r2, r3	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pic_size
	bcs	.L1461	@,
	ldrb	r3, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	beq	.L1509	@,
.L1474:
	add	fp, r6, #16384	@ tmp366, pH264Ctx,
	mov	r3, #0	@ tmp291,
	str	r3, [fp, #3412]	@ tmp291, pH264Ctx_12(D)->CurrPOC.pic_order_cnt_lsb
	str	r3, [fp, #3416]	@ tmp291, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt_bottom
	ldr	r3, [r5, #2908]	@ pSPS_27->pic_order_cnt_type, pSPS_27->pic_order_cnt_type
	cmp	r3, #0	@ pSPS_27->pic_order_cnt_type,
	beq	.L1510	@,
.L1477:
	mov	r3, #0	@ tmp310,
	str	r3, [fp, #3460]	@ tmp310, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	str	r3, [fp, #3464]	@ tmp310, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [r5, #2908]	@ pSPS_27->pic_order_cnt_type, pSPS_27->pic_order_cnt_type
	cmp	r3, #1	@ pSPS_27->pic_order_cnt_type,
	beq	.L1511	@,
.L1480:
	ldr	r3, [r10, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1461	@,
	ldrb	r3, [r7, #17]	@ zero_extendqisi2	@ pPPS_23->redundant_pic_cnt_present_flag, pPPS_23->redundant_pic_cnt_present_flag
	cmp	r3, #0	@ pPPS_23->redundant_pic_cnt_present_flag,
	bne	.L1512	@,
.L1482:
	mov	r0, r6	@, pH264Ctx
	bl	IsNewPic	@
	uxtb	r0, r0	@ D.41118,
	strb	r0, [r4, #205]	@ D.41118, pH264Ctx_12(D)->CurrSlice.new_pic_flag
	cmp	r0, #0	@ D.41118,
	bne	.L1493	@,
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	ldr	r3, [r4, #1888]	@ pH264Ctx_12(D)->PrevSlice.first_mb_in_slice, pH264Ctx_12(D)->PrevSlice.first_mb_in_slice
	cmp	r2, r3	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->PrevSlice.first_mb_in_slice
	bhi	.L1493	@,
.L1461:
	mvn	r8, #0	@ D.41112,
.L1493:
	mov	r0, r8	@, D.41112
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1462:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.slice_type, pH264Ctx_12(D)->CurrSlice.slice_type
	cmp	r3, #2	@ pH264Ctx_12(D)->CurrSlice.slice_type,
	beq	.L1463	@,
	b	.L1461	@
.L1508:
	mov	r1, #1	@,
	mov	r0, r9	@, D.41120
	bl	BsGet	@
	ldr	r2, [r6, #368]	@ D.41121, pH264Ctx_12(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _109->nal_bitoffset, _109->nal_bitoffset
	add	r3, r3, #1	@ D.41115, _109->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41115, _109->nal_bitoffset
	uxtb	r0, r0	@ D.41122,
	strb	r0, [r4, #201]	@ D.41122, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r0, #0	@ D.41122,
	bne	.L1513	@,
	ldr	r2, [r5, #3956]	@ pSPS_27->pic_width_in_mbs_minus1, pSPS_27->pic_width_in_mbs_minus1
	ldrb	ip, [r5, #18]	@ zero_extendqisi2	@ pSPS_27->frame_mbs_only_flag, pSPS_27->frame_mbs_only_flag
	ldr	r1, [r5, #3960]	@ pSPS_27->pic_height_in_map_units_minus1, pSPS_27->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.41115, pSPS_27->pic_width_in_mbs_minus1,
	cmp	ip, #0	@ pSPS_27->frame_mbs_only_flag,
	mla	r3, r1, r3, r3	@ D.41115, pSPS_27->pic_height_in_map_units_minus1, D.41115, D.41115
	bne	.L1486	@,
	mov	r3, r3, asl #1	@ pic_size, D.41115,
	b	.L1484	@
.L1470:
	mov	r2, #1	@ tmp359,
	strb	r2, [r4, #204]	@ tmp359, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
.L1487:
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	cmp	r2, r3, lsr #1	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pic_size,
	bcs	.L1461	@,
	ldrb	r3, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	bne	.L1474	@,
.L1509:
	ldr	r1, .L1514+4	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #240]	@, pH264Ctx_12(D)->CurrSlice.idr_pic_id
	b	.L1474	@
.L1513:
	mov	r1, #1	@,
	mov	r0, r9	@, D.41120
	bl	BsGet	@
	ldr	r2, [r6, #368]	@ D.41121, pH264Ctx_12(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _114->nal_bitoffset, _114->nal_bitoffset
	add	r3, r3, #1	@ D.41115, _114->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41115, _114->nal_bitoffset
	strb	r0, [r4, #202]	@, pH264Ctx_12(D)->CurrSlice.bottom_field_flag
	ldr	r2, [r5, #3956]	@ pSPS_27->pic_width_in_mbs_minus1, pSPS_27->pic_width_in_mbs_minus1
	ldrb	r0, [r5, #18]	@ zero_extendqisi2	@ pSPS_27->frame_mbs_only_flag, pSPS_27->frame_mbs_only_flag
	ldr	r1, [r5, #3960]	@ pSPS_27->pic_height_in_map_units_minus1, pSPS_27->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.41115, pSPS_27->pic_width_in_mbs_minus1,
	cmp	r0, #0	@ pSPS_27->frame_mbs_only_flag,
	ldrb	r0, [r4, #201]	@ zero_extendqisi2	@ D.41122, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	mla	r3, r1, r3, r3	@ D.41115, pSPS_27->pic_height_in_map_units_minus1, D.41115, D.41115
	moveq	r2, #2	@ D.41113,
	beq	.L1468	@,
.L1486:
	mov	r2, #1	@ D.41113,
.L1468:
	cmp	r0, #0	@ D.41122,
	mul	r3, r2, r3	@ pic_size, D.41113, D.41115
	beq	.L1484	@,
	cmp	r0, #1	@ D.41122,
	mov	r2, #0	@ tmp274,
	strb	r2, [r4, #204]	@ tmp274, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
	bne	.L1472	@,
	b	.L1487	@
.L1510:
	ldr	r3, [r5, #2912]	@ pSPS_27->log2_max_pic_order_cnt_lsb_minus4, pSPS_27->log2_max_pic_order_cnt_lsb_minus4
	mov	r0, r9	@, D.41120
	add	r9, r3, #4	@ D.41115, pSPS_27->log2_max_pic_order_cnt_lsb_minus4,
	mov	r1, r9	@, D.41115
	bl	BsGet	@
	ldr	r2, [r6, #368]	@ D.41121, pH264Ctx_12(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _119->nal_bitoffset, _119->nal_bitoffset
	add	r9, r3, r9	@ D.41115, _119->nal_bitoffset, D.41115
	str	r9, [r2, #64]	@ D.41115, _119->nal_bitoffset
	str	r0, [fp, #3412]	@, pH264Ctx_12(D)->CurrPOC.pic_order_cnt_lsb
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ pPPS_23->pic_order_present_flag, pPPS_23->pic_order_present_flag
	cmp	r3, #0	@ pPPS_23->pic_order_present_flag,
	beq	.L1477	@,
	ldrb	r3, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag,
	bne	.L1477	@,
	ldr	r1, .L1514+8	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #3416]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt_bottom
	b	.L1477	@
.L1511:
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ pSPS_27->delta_pic_order_always_zero_flag, pSPS_27->delta_pic_order_always_zero_flag
	cmp	r3, #0	@ pSPS_27->delta_pic_order_always_zero_flag,
	bne	.L1480	@,
	ldr	r1, .L1514+12	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #3460]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ pPPS_23->pic_order_present_flag, pPPS_23->pic_order_present_flag
	cmp	r3, #1	@ pPPS_23->pic_order_present_flag,
	bne	.L1480	@,
	ldrb	r3, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag,
	bne	.L1480	@,
	ldr	r1, .L1514+16	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #3464]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	b	.L1480	@
.L1512:
	ldr	r1, .L1514+20	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L1483	@,
	ldr	r3, [r10, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	beq	.L1482	@,
.L1483:
	ldr	r3, .L1514+24	@ tmp334,
	ldr	r3, [r3]	@ D.41119, g_event_report
	cmp	r3, #0	@ D.41119,
	beq	.L1461	@,
	ldr	r0, [r10, #3688]	@, pH264Ctx_12(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #102	@,
	mvn	r8, #0	@ D.41112,
	blx	r3	@ D.41119
	mov	r0, r8	@, D.41112
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1515:
	.align	2
.L1514:
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	g_event_report
	.fnend
	.size	ProcessSliceHeaderFirstPart, .-ProcessSliceHeaderFirstPart
	.align	2
	.global	ProcessSliceHeaderSecondPart
	.type	ProcessSliceHeaderSecondPart, %function
ProcessSliceHeaderSecondPart:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #12288	@ tmp179, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r0, #20480	@ tmp337, pH264Ctx,
	ldr	r3, [r2, #1288]	@ pH264Ctx_13(D)->MaxPpsNum, pH264Ctx_13(D)->MaxPpsNum
	ldr	r1, [r4, #212]	@ D.41133, pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id
	sub	r3, r3, #1	@ D.41132, pH264Ctx_13(D)->MaxPpsNum,
	cmp	r3, r1	@ D.41132, D.41133
	bcc	.L1519	@,
	add	r8, r0, #49152	@ tmp338, pH264Ctx,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1519	@,
	mov	r7, #2208	@ tmp188,
	ldr	r9, [r2, #1296]	@ pH264Ctx_13(D)->PPS, pH264Ctx_13(D)->PPS
	mul	r7, r7, r1	@ D.41133, tmp188, D.41133
	add	r5, r9, r7	@ pPPS, pH264Ctx_13(D)->PPS, D.41133
	ldrb	r3, [r5, #19]	@ zero_extendqisi2	@ pPPS_94->is_valid, pPPS_94->is_valid
	cmp	r3, #0	@ pPPS_94->is_valid,
	beq	.L1519	@,
	ldr	r3, [r2, #1292]	@ pH264Ctx_13(D)->SPS, pH264Ctx_13(D)->SPS
	mov	r1, #4000	@ tmp196,
	ldr	r2, [r5, #28]	@ pPPS_94->seq_parameter_set_id, pPPS_94->seq_parameter_set_id
	mla	r3, r1, r2, r3	@ tmp197, tmp196, pPPS_94->seq_parameter_set_id, pH264Ctx_13(D)->SPS
	ldrb	r3, [r3, #23]	@ zero_extendqisi2	@ pSPS_99->is_valid, pSPS_99->is_valid
	cmp	r3, #0	@ pSPS_99->is_valid,
	beq	.L1519	@,
	ldrb	r1, [r4, #200]	@ zero_extendqisi2	@ D.41134, pH264Ctx_13(D)->CurrSlice.slice_type
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #1	@ D.41134,
	beq	.L1578	@,
.L1520:
	ldr	r3, [r5, #36]	@ D.41133, pPPS_94->num_ref_idx_l0_active_minus1
	cmp	r1, #1	@ D.41134,
	str	r3, [r4, #256]	@ D.41133, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	ldr	r3, [r5, #40]	@ D.41133, pPPS_94->num_ref_idx_l1_active_minus1
	str	r3, [r4, #260]	@ D.41133, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	bls	.L1579	@,
	cmp	r1, #2	@ D.41134,
	beq	.L1539	@,
.L1528:
	mov	r3, #32	@ tmp256,
	str	r3, [r4, #260]	@ tmp256, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
.L1529:
	mov	r0, r6	@, pH264Ctx
	bl	ref_pic_list_reordering	@
	subs	r10, r0, #0	@ D.41131,
	bne	.L1519	@,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ pPPS_94->weighted_pred_flag, pPPS_94->weighted_pred_flag
	cmp	r3, #0	@ pPPS_94->weighted_pred_flag,
	beq	.L1530	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	bne	.L1530	@,
.L1531:
	mov	r3, #0	@ tmp323,
	mov	r2, #1	@ tmp319,
	mov	r0, r6	@, pH264Ctx
	strb	r2, [r4, #207]	@ tmp319, pH264Ctx_13(D)->CurrSlice.apply_weights_flag
	str	r3, [r4, #264]	@ tmp323, pH264Ctx_13(D)->CurrSlice.luma_log2_weight_denom
	str	r3, [r4, #268]	@ tmp323, pH264Ctx_13(D)->CurrSlice.chroma_log2_weight_denom
	bl	pred_weight_table	@
	cmp	r0, #0	@,
	bne	.L1519	@,
	ldr	r3, [r4, #232]	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc, pH264Ctx_13(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc,
	bne	.L1533	@,
.L1536:
	mov	r3, #0	@ tmp270,
	str	r3, [r4, #1808]	@ tmp270, pH264Ctx_13(D)->CurrSlice.cabac_init_idc
	ldrb	r3, [r9, r7]	@ zero_extendqisi2	@ pPPS_94->entropy_coding_mode_flag, pPPS_94->entropy_coding_mode_flag
	cmp	r3, #0	@ pPPS_94->entropy_coding_mode_flag,
	beq	.L1535	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	bls	.L1580	@,
.L1535:
	ldr	r1, .L1583	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	mov	r3, #0	@ tmp277,
	str	r3, [r4, #1816]	@ tmp277, pH264Ctx_13(D)->CurrSlice.disable_deblocking_filter_idc
	str	r3, [r4, #1820]	@ tmp277, pH264Ctx_13(D)->CurrSlice.slice_alpha_c0_offset_div2
	str	r3, [r4, #1824]	@ tmp277, pH264Ctx_13(D)->CurrSlice.slice_beta_offset_div2
	str	r0, [r4, #1812]	@, pH264Ctx_13(D)->CurrSlice.slice_qp_delta
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ pPPS_94->deblocking_filter_control_present_flag, pPPS_94->deblocking_filter_control_present_flag
	cmp	r3, #0	@ pPPS_94->deblocking_filter_control_present_flag,
	beq	.L1552	@,
	ldr	r1, .L1583+4	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.41133,
	str	r0, [r4, #1816]	@ D.41133, pH264Ctx_13(D)->CurrSlice.disable_deblocking_filter_idc
	bhi	.L1519	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1519	@,
	cmp	r0, #1	@ D.41133,
	beq	.L1552	@,
	ldr	r1, .L1583+8	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	add	r3, r0, #6	@ D.41136, D.41132,
	str	r0, [r4, #1820]	@ D.41132, pH264Ctx_13(D)->CurrSlice.slice_alpha_c0_offset_div2
	cmp	r3, #12	@ D.41136,
	bhi	.L1519	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1519	@,
	mov	r0, r6	@, pH264Ctx
	ldr	r1, .L1583+12	@,
	bl	se_v	@
	add	r3, r0, #6	@ D.41136, D.41132,
	str	r0, [r4, #1824]	@ D.41132, pH264Ctx_13(D)->CurrSlice.slice_beta_offset_div2
	cmp	r3, #12	@ D.41136,
	bhi	.L1519	@,
	ldr	r10, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	adds	r10, r10, #0	@ D.41139, pH264Ctx_13(D)->SeErrFlg,
	movne	r10, #1	@ D.41139,
	rsb	r10, r10, #0	@ D.41131, D.41139
	mov	r0, r10	@, D.41131
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1579:
	add	r0, r6, #13504	@, pH264Ctx,
	mov	r1, #1	@,
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r2, [r6, #368]	@ D.41140, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _109->nal_bitoffset, _109->nal_bitoffset
	add	r3, r3, #1	@ D.41133, _109->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41133, _109->nal_bitoffset
	cmp	r0, #0	@,
	bne	.L1522	@,
	ldr	r3, [r4, #256]	@ D.41141, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
.L1523:
	ldrb	r2, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.field_pic_flag, pH264Ctx_13(D)->CurrSlice.field_pic_flag
	cmp	r2, #0	@ pH264Ctx_13(D)->CurrSlice.field_pic_flag,
	bne	.L1524	@,
	cmp	r3, #15	@ D.41141,
	bhi	.L1519	@,
	ldr	r3, [r4, #260]	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #15	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L1525	@,
.L1575:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	beq	.L1519	@,
.L1525:
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	beq	.L1581	@,
.L1519:
	mvn	r10, #0	@ D.41131,
.L1552:
	mov	r0, r10	@, D.41131
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1530:
	ldr	r3, [r5, #44]	@ pPPS_94->weighted_bipred_idc, pPPS_94->weighted_bipred_idc
	cmp	r3, #1	@ pPPS_94->weighted_bipred_idc,
	beq	.L1582	@,
.L1532:
	mov	r3, #0	@ tmp329,
	strb	r3, [r4, #207]	@ tmp329, pH264Ctx_13(D)->CurrSlice.apply_weights_flag
	str	r3, [r4, #264]	@ tmp329, pH264Ctx_13(D)->CurrSlice.luma_log2_weight_denom
	str	r3, [r4, #268]	@ tmp329, pH264Ctx_13(D)->CurrSlice.chroma_log2_weight_denom
	ldr	r3, [r4, #232]	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc, pH264Ctx_13(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc,
	beq	.L1536	@,
.L1533:
	mov	r0, r6	@, pH264Ctx
	bl	dec_ref_pic_marking	@
	cmp	r0, #0	@,
	beq	.L1536	@,
	b	.L1519	@
.L1539:
	mov	r3, #32	@ tmp253,
	str	r3, [r4, #256]	@ tmp253, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	b	.L1528	@
.L1582:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	bne	.L1532	@,
	b	.L1531	@
.L1578:
	add	r0, r0, #13504	@, pH264Ctx,
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r2, [r6, #368]	@ D.41140, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _105->nal_bitoffset, _105->nal_bitoffset
	add	r3, r3, #1	@ D.41133, _105->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41133, _105->nal_bitoffset
	ldrb	r1, [r4, #200]	@ zero_extendqisi2	@ D.41134, pH264Ctx_13(D)->CurrSlice.slice_type
	strb	r0, [r4, #206]	@, pH264Ctx_13(D)->CurrSlice.direct_spatial_mv_pred_flag
	b	.L1520	@
.L1581:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.41134, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #2	@ D.41134,
	beq	.L1539	@,
	cmp	r3, #1	@ D.41134,
	bne	.L1528	@,
	b	.L1529	@
.L1580:
	ldr	r1, .L1583+16	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.41133,
	str	r0, [r4, #1808]	@ D.41133, pH264Ctx_13(D)->CurrSlice.cabac_init_idc
	bhi	.L1519	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	beq	.L1535	@,
	b	.L1519	@
.L1524:
	cmp	r3, #31	@ D.41141,
	bhi	.L1519	@,
	ldr	r3, [r4, #260]	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #31	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L1525	@,
	b	.L1575	@
.L1522:
	ldr	r1, .L1583+20	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	ldrb	r2, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	mov	r3, r0	@ D.41141,
	str	r0, [r4, #256]	@ D.41141, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L1523	@,
	ldr	r1, .L1583+24	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #256]	@ D.41141, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	str	r0, [r4, #260]	@, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	b	.L1523	@
.L1584:
	.align	2
.L1583:
	.word	.LC31
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC32
	.word	.LC29
	.word	.LC30
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
	ldr	lr, [r3, #212]	@ D.41152, pH264Ctx_6(D)->CurrSlice.pic_parameter_set_id
	ldr	r6, [ip, #1292]	@ pH264Ctx_6(D)->SPS, pH264Ctx_6(D)->SPS
	ldrb	ip, [r3, #201]	@ zero_extendqisi2	@ D.41154, pH264Ctx_6(D)->CurrSlice.field_pic_flag
	mla	r1, r1, lr, r2	@ tmp143, tmp142, D.41152, pH264Ctx_6(D)->PPS
	cmp	ip, #0	@ D.41154,
	ldr	r5, [r3, #252]	@ pH264Ctx_6(D)->CurrSlice.first_mb_in_slice, pH264Ctx_6(D)->CurrSlice.first_mb_in_slice
	ldr	r4, [r3, #220]	@ pH264Ctx_6(D)->CurrSlice.frame_num, pH264Ctx_6(D)->CurrSlice.frame_num
	ldr	r2, [r1, #28]	@ pps_10->seq_parameter_set_id, pps_10->seq_parameter_set_id
	str	lr, [r3, #1856]	@ D.41152, pH264Ctx_6(D)->PrevSlice.pic_parameter_set_id
	mla	r2, r7, r2, r6	@ sps, tmp146, pps_10->seq_parameter_set_id, pH264Ctx_6(D)->SPS
	ldr	r1, [r2, #744]	@ D.41152, sps_14->seq_parameter_set_id
	strb	ip, [r3, #1848]	@ D.41154, pH264Ctx_6(D)->PrevSlice.field_pic_flag
	ldr	ip, [r3, #232]	@ pH264Ctx_6(D)->CurrSlice.nal_ref_idc, pH264Ctx_6(D)->CurrSlice.nal_ref_idc
	str	r1, [r3, #1852]	@ D.41152, pH264Ctx_6(D)->PrevSlice.seq_parameter_set_id
	ldrneb	r1, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	str	r5, [r3, #1888]	@ pH264Ctx_6(D)->CurrSlice.first_mb_in_slice, pH264Ctx_6(D)->PrevSlice.first_mb_in_slice
	str	r4, [r3, #1864]	@ pH264Ctx_6(D)->CurrSlice.frame_num, pH264Ctx_6(D)->PrevSlice.frame_num
	strneb	r1, [r3, #1849]	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->PrevSlice.bottom_field_flag
	ldrb	r1, [r3, #203]	@ zero_extendqisi2	@ D.41154, pH264Ctx_6(D)->CurrSlice.nal_unit_type
	str	ip, [r3, #1860]	@ pH264Ctx_6(D)->CurrSlice.nal_ref_idc, pH264Ctx_6(D)->PrevSlice.nal_ref_idc
	cmp	r1, #5	@ D.41154,
	strb	r1, [r3, #1850]	@ D.41154, pH264Ctx_6(D)->PrevSlice.nal_unit_type
	ldreq	r1, [r3, #240]	@ pH264Ctx_6(D)->CurrSlice.idr_pic_id, pH264Ctx_6(D)->CurrSlice.idr_pic_id
	streq	r1, [r3, #1868]	@ pH264Ctx_6(D)->CurrSlice.idr_pic_id, pH264Ctx_6(D)->PrevSlice.idr_pic_id
	ldr	r1, [r2, #2908]	@ D.41152, sps_14->pic_order_cnt_type
	cmp	r1, #0	@ D.41152,
	bne	.L1588	@,
	add	r1, r0, #16384	@ tmp191, pH264Ctx,
	ldr	ip, [r1, #3412]	@ pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb
	str	ip, [r3, #1872]	@ pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_6(D)->PrevSlice.pic_oder_cnt_lsb
	ldr	r1, [r1, #3416]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom
	str	r1, [r3, #1876]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_6(D)->PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r1, [r2, #2908]	@ D.41152, sps_14->pic_order_cnt_type
.L1588:
	cmp	r1, #1	@ D.41152,
	addeq	r2, r0, #16384	@ tmp201, pH264Ctx,
	add	r0, r0, #49152	@ tmp209, pH264Ctx,
	ldreq	r1, [r2, #3460]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt
	streq	r1, [r3, #1880]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	ldreq	r2, [r2, #3464]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt
	streq	r2, [r3, #1884]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	ldr	r3, [r0, #3644]	@ pH264Ctx_6(D)->TotalSlice, pH264Ctx_6(D)->TotalSlice
	add	r3, r3, #1	@ D.41152, pH264Ctx_6(D)->TotalSlice,
	str	r3, [r0, #3644]	@ D.41152, pH264Ctx_6(D)->TotalSlice
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
	beq	.L1596	@,
	bcc	.L1597	@,
	cmp	r3, #2	@ pH264Ctx_2(D)->CurrSlice.slice_type,
	bxne	lr	@
	ldrb	r3, [r2, #203]	@ zero_extendqisi2	@ pH264Ctx_2(D)->CurrSlice.nal_unit_type, pH264Ctx_2(D)->CurrSlice.nal_unit_type
	add	r0, r0, #49152	@ tmp136, pH264Ctx,
	cmp	r3, #5	@ pH264Ctx_2(D)->CurrSlice.nal_unit_type,
	beq	.L1606	@,
.L1599:
	mov	r3, #0	@ tmp131,
	str	r3, [r0, #1000]	@ tmp131, pH264Ctx_2(D)->CurrPic.is_idr_pic
	bx	lr	@
.L1597:
	add	r0, r0, #49152	@ tmp138, pH264Ctx,
	ldr	r3, [r0, #996]	@ pH264Ctx_2(D)->CurrPic.pic_type, pH264Ctx_2(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_2(D)->CurrPic.pic_type,
	movne	r3, #1	@ tmp128,
	strne	r3, [r0, #996]	@ tmp128, pH264Ctx_2(D)->CurrPic.pic_type
	b	.L1599	@
.L1596:
	add	r0, r0, #49152	@ tmp118, pH264Ctx,
	mov	r2, #2	@ tmp119,
	mov	r3, #0	@ tmp122,
	str	r2, [r0, #996]	@ tmp119, pH264Ctx_2(D)->CurrPic.pic_type
	str	r3, [r0, #1000]	@ tmp122, pH264Ctx_2(D)->CurrPic.is_idr_pic
	bx	lr	@
.L1606:
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
	add	r3, r0, #16384	@ tmp199, pH264Ctx,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	r3, [r3, #1204]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag,
	beq	.L1608	@,
	ldr	r2, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _15->nal_bitoffset, _15->nal_bitoffset
	add	r3, r3, #7	@ D.41183, _15->nal_bitoffset,
	bic	r3, r3, #7	@ D.41183, D.41183,
	str	r3, [r2, #64]	@ D.41183, _15->nal_bitoffset
	ldr	r2, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #72]	@ _20->nal_trail_zero_bit_num, _20->nal_trail_zero_bit_num
	sub	r3, r3, #1	@ D.41183, _20->nal_trail_zero_bit_num,
	str	r3, [r2, #72]	@ D.41183, _20->nal_trail_zero_bit_num
.L1608:
	ldr	r4, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	ldrb	ip, [r4]	@ zero_extendqisi2	@ D.41184, _130->nal_used_segment
	cmp	ip, #0	@ D.41184,
	beq	.L1621	@,
	mov	r3, #0	@ i,
	mov	r2, r4	@ ivtmp.2146, D.41185
	mov	lr, r3	@ code_len_byte, i
.L1610:
	add	r3, r3, #1	@ i, i,
	ldr	r1, [r2, #12]	@ MEM[base: _32, offset: 12B], MEM[base: _32, offset: 12B]
	cmp	r3, ip	@ i, D.41184
	add	r2, r2, #28	@ ivtmp.2146, ivtmp.2146,
	add	lr, lr, r1	@ code_len_byte, code_len_byte, MEM[base: _32, offset: 12B]
	bne	.L1610	@,
.L1609:
	mov	r2, ip, asl #5	@ tmp209, D.41184,
	ldr	r3, [r4, #64]	@ _130->nal_bitoffset, _130->nal_bitoffset
	sub	ip, r2, ip, asl #2	@ tmp210, tmp209, D.41184,
	add	r4, r4, ip	@ tmp211, D.41185, tmp210
	and	r3, r3, #7	@ D.41183, _130->nal_bitoffset,
	str	r3, [r4, #24]	@ D.41183, _130->stream[_31].bitsoffset
	ldr	r3, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	ldrb	ip, [r3]	@ zero_extendqisi2	@ D.41186, _36->nal_used_segment
	ldr	r4, [r3, #64]	@ _36->nal_bitoffset, _36->nal_bitoffset
	mov	r1, ip, asl #5	@ tmp217, D.41186,
	sub	r1, r1, ip, asl #2	@ tmp218, tmp217, D.41186,
	add	r3, r3, r1	@ tmp219, D.41185, tmp218
	ldr	r2, [r3, #16]	@ _36->stream[_41].stream_phy_addr, _36->stream[_41].stream_phy_addr
	add	r2, r2, r4, lsr #3	@ D.41183, _36->stream[_41].stream_phy_addr, _36->nal_bitoffset,
	rsb	r2, lr, r2	@ D.41183, code_len_byte, D.41183
	str	r2, [r3, #28]	@ D.41183, _36->stream[_41].bytespos
	ldr	r2, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	ldrb	ip, [r2]	@ zero_extendqisi2	@ D.41186, _45->nal_used_segment
	ldr	r1, [r2, #64]	@ _45->nal_bitoffset, _45->nal_bitoffset
	mov	r3, ip, asl #5	@ tmp234, D.41186,
	sub	r3, r3, ip, asl #2	@ tmp235, tmp234, D.41186,
	add	r2, r2, r3	@ tmp236, D.41185, tmp235
	ldr	r3, [r2, #12]	@ _45->stream[_47].bitstream_length, _45->stream[_47].bitstream_length
	add	r3, lr, r3	@ D.41183, code_len_byte, _45->stream[_47].bitstream_length
	rsb	r3, r1, r3, lsl #3	@ D.41183, _45->nal_bitoffset, D.41183,
	str	r3, [r2, #20]	@ D.41183, _45->stream[_47].valid_bitlen
	b	.L1637	@
.L1639:
	rsb	r2, lr, r2	@ tmp260, tmp399, tmp400
	add	r3, r3, r2	@ tmp261, D.41185, tmp260
	ldr	r2, [r3, #24]	@ _148->stream[_150].bitsoffset, _148->stream[_150].bitsoffset
	add	r2, r2, #8	@ D.41183, _148->stream[_150].bitsoffset,
	str	r2, [r3, #24]	@ D.41183, _148->stream[_150].bitsoffset
	ldr	r2, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	ldrb	r1, [r2]	@ zero_extendqisi2	@ D.41186, _62->nal_used_segment
	mov	r3, r1, asl #5	@ tmp273, D.41186,
	sub	r3, r3, r1, asl #2	@ tmp274, tmp273, D.41186,
	add	r3, r2, r3	@ tmp275, D.41185, tmp274
	ldr	r2, [r3, #28]	@ _62->stream[_64].bytespos, _62->stream[_64].bytespos
	sub	r2, r2, #1	@ D.41183, _62->stream[_64].bytespos,
	str	r2, [r3, #28]	@ D.41183, _62->stream[_64].bytespos
.L1637:
	ldr	r3, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	ldrb	ip, [r3]	@ zero_extendqisi2	@ D.41186,* D.41185
	mov	lr, ip, asl #2	@ tmp399, D.41186,
	mov	r2, ip, asl #5	@ tmp400, D.41186,
	rsb	r1, lr, r2	@ tmp252, tmp399, tmp400
	add	r1, r3, r1	@ tmp253, D.41185, tmp252
	ldr	r1, [r1, #28]	@ _123->stream[_125].bytespos,
	tst	r1, #3	@ _123->stream[_125].bytespos,
	bne	.L1639	@,
	ldr	r3, [r3, #68]	@ _149->nal_segment, _149->nal_segment
	sub	r3, r3, #1	@ D.41183, _149->nal_segment,
	cmp	r3, #1	@ D.41183,
	ldmhifd	sp!, {r4, pc}	@
	ldr	r3, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	add	ip, ip, #1	@ i, D.41186,
	ldr	r2, [r3, #68]	@ D.41183, _116->nal_segment
	cmp	ip, r2	@ i, D.41183
	bcs	.L1614	@,
	mov	lr, #0	@ tmp406,
.L1617:
	mov	r1, ip, asl #5	@ tmp402, i,
	sub	r1, r1, ip, asl #2	@ tmp298, tmp402, i,
	add	r3, r3, r1	@ tmp299, D.41185, tmp298
	str	lr, [r3, #24]	@ tmp406, _152->stream[i_136].bitsoffset
	ldr	r3, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp306, D.41185, tmp298
	ldr	r2, [r3, #16]	@ D.41183, _77->stream[i_136].stream_phy_addr
	str	r2, [r3, #28]	@ D.41183, _77->stream[i_136].bytespos
	ldr	r3, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp318, D.41185, tmp298
	ldr	r2, [r3, #12]	@ _80->stream[i_136].bitstream_length, _80->stream[i_136].bitstream_length
	mov	r2, r2, asl #3	@ D.41183, _80->stream[i_136].bitstream_length,
	str	r2, [r3, #20]	@ D.41183, _80->stream[i_136].valid_bitlen
	b	.L1638	@
.L1640:
	add	r3, r3, r1	@ tmp340, D.41185, tmp405
	ldr	r2, [r3, #24]	@ _155->stream[i_136].bitsoffset, _155->stream[i_136].bitsoffset
	add	r2, r2, #8	@ D.41183, _155->stream[i_136].bitsoffset,
	str	r2, [r3, #24]	@ D.41183, _155->stream[i_136].bitsoffset
	ldr	r3, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp354, D.41185, tmp405
	ldr	r2, [r3, #28]	@ _90->stream[i_136].bytespos, _90->stream[i_136].bytespos
	sub	r2, r2, #1	@ D.41183, _90->stream[i_136].bytespos,
	str	r2, [r3, #28]	@ D.41183, _90->stream[i_136].bytespos
.L1638:
	ldr	r3, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	add	r2, r3, r1	@ tmp332, D.41185, tmp298
	ldr	r2, [r2, #28]	@ _119->stream[i_136].bytespos,
	tst	r2, #3	@ _119->stream[i_136].bytespos,
	bne	.L1640	@,
	ldr	r2, [r3, #68]	@ D.41183, _1->nal_segment
	add	ip, ip, #1	@ i, i,
	cmp	r2, ip	@ D.41183, i
	bhi	.L1617	@,
.L1614:
	sub	r2, r2, #1	@ D.41183, D.41183,
	ldr	ip, [r3, #72]	@ _153->nal_trail_zero_bit_num, _153->nal_trail_zero_bit_num
	mov	r1, r2, asl #5	@ tmp374, D.41183,
	sub	r2, r1, r2, asl #2	@ tmp375, tmp374, D.41183,
	add	r3, r3, r2	@ tmp376, D.41185, tmp375
	ldr	r2, [r3, #20]	@ _153->stream[_97].valid_bitlen, _153->stream[_97].valid_bitlen
	rsb	r2, ip, r2	@ D.41183, _153->nal_trail_zero_bit_num, _153->stream[_97].valid_bitlen
	str	r2, [r3, #20]	@ D.41183, _153->stream[_97].valid_bitlen
	ldr	lr, [r0, #368]	@ D.41185, pH264Ctx_13(D)->pCurrNal
	ldrb	ip, [lr]	@ zero_extendqisi2	@ i, _103->nal_used_segment
	ldr	r3, [lr, #68]	@ _103->nal_segment, _103->nal_segment
	cmp	ip, r3	@ i, _103->nal_segment
	ldmcsfd	sp!, {r4, pc}	@
	sxth	r2, ip	@ D.41184, i
	add	r3, r0, #49152	@ tmp403, pH264Ctx,
	mov	r1, r2, asl #5	@ tmp391, D.41184,
	sub	r2, r1, r2, asl #2	@ D.41188, tmp391, D.41184,
	add	r2, lr, r2	@ ivtmp.2137, D.41185, D.41188
.L1620:
	ldr	r1, [r2, #28]	@ D.41183, MEM[base: _95, offset: 28B]
	add	ip, ip, #1	@ i, i,
	ldr	r0, [r3, #1024]	@ pH264Ctx_13(D)->CurrPic.stream_base_addr, pH264Ctx_13(D)->CurrPic.stream_base_addr
	add	r2, r2, #28	@ ivtmp.2137, ivtmp.2137,
	cmp	r1, r0	@ D.41183, pH264Ctx_13(D)->CurrPic.stream_base_addr
	strcc	r1, [r3, #1024]	@ D.41183, pH264Ctx_13(D)->CurrPic.stream_base_addr
	ldr	r1, [lr, #68]	@ _103->nal_segment, _103->nal_segment
	cmp	r1, ip	@ _103->nal_segment, i
	bhi	.L1620	@,
	ldmfd	sp!, {r4, pc}	@
.L1621:
	mov	lr, ip	@ code_len_byte, D.41184
	b	.L1609	@
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
	ldr	r9, .L1654	@ tmp175,
	mov	r6, r1	@ lastScale, lastScale
	mov	r5, #0	@ j,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	b	.L1646	@
.L1645:
	mov	r0, r4, lsr #2	@ D.41199, scanj,
	and	ip, r4, #3	@ b_posit, scanj,
	str	r6, [fp, r4, asl #2]	@ lastScale, *_29
	mov	r3, #255	@ tmp170,
	ldr	r2, [r10, r0, asl #2]	@ *_37, *_37
	mov	ip, ip, asl #3	@ D.41197, b_posit,
	uxtb	lr, r6	@ D.41197, lastScale
	cmp	r5, r7	@ j, sizeOfScalingList
	bic	r2, r2, r3, asl ip	@ D.41199, *_37, tmp170,
	orr	r3, r2, lr, asl ip	@ D.41199, D.41199, D.41197,
	str	r3, [r10, r0, asl #2]	@ D.41199, *_37
	beq	.L1653	@,
.L1646:
	cmp	r7, #16	@ sizeOfScalingList,
	ldreq	r3, .L1654+4	@ tmp190,
	ldrneb	r4, [r5, r9]	@ zero_extendqisi2	@ scanj, MEM[symbol: g_ZZ_SCAN8, index: _68, offset: 0B]
	ldreqb	r4, [r5, r3]	@ zero_extendqisi2	@ scanj, MEM[symbol: g_ZZ_SCAN, index: _69, offset: 0B]
	cmp	r1, #0	@ lastScale,
	add	r5, r5, #1	@ j, j,
	beq	.L1645	@,
	ldr	r1, .L1654+8	@,
	mov	r0, r8	@, pH264Ctx
	bl	se_v	@
	ldr	r2, [sp, #40]	@ tmp191, UseDefaultScalingMatrix
	add	r0, r6, r0	@ D.41197, lastScale,
	add	r0, r0, #256	@ D.41197, D.41197,
	mov	r1, r0, asr #31	@ tmp153, D.41197,
	mov	r1, r1, lsr #24	@ tmp154, tmp153,
	add	r0, r0, r1	@ tmp155, D.41197, tmp154
	uxtb	r0, r0	@ tmp156, tmp155
	rsb	r3, r1, r0	@ D.41198, tmp154, tmp156
	rsb	r1, r1, r0	@ lastScale, tmp154, tmp156
	clz	r3, r3	@ D.41198, D.41198
	mov	r3, r3, lsr #5	@ D.41198, D.41198,
	cmp	r3, #0	@ D.41198,
	moveq	r6, r1	@ lastScale, lastScale
	cmp	r4, #0	@ scanj,
	movne	r3, #0	@, tmp163
	andeq	r3, r3, #1	@,, tmp163, D.41198
	str	r3, [r2]	@ tmp163, *UseDefaultScalingMatrix_25(D)
	b	.L1645	@
.L1653:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1655:
	.align	2
.L1654:
	.word	.LANCHOR1+16
	.word	.LANCHOR1
	.word	.LC36
	.fnend
	.size	Scaling_List, .-Scaling_List
	.align	2
	.global	ProcessPPS
	.type	ProcessPPS, %function
ProcessPPS:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #13504	@ D.41261, pH264Ctx,
	add	r5, r5, #24	@ D.41261, D.41261,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ pPPS, pPPS
	add	r7, r0, #49152	@ tmp400, pH264Ctx,
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r1, #1	@,
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _135->nal_bitoffset, _135->nal_bitoffset
	add	r3, r3, #1	@ D.41252, _135->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _135->nal_bitoffset
	strb	r0, [r6]	@, pPPS_19(D)->entropy_coding_mode_flag
	ldr	r3, [r7, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1692	@,
	mov	r1, #1	@,
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _140->nal_bitoffset, _140->nal_bitoffset
	add	r3, r3, #1	@ D.41252, _140->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _140->nal_bitoffset
	strb	r0, [r6, #1]	@, pPPS_19(D)->pic_order_present_flag
	ldr	r3, [r7, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1692	@,
	ldr	r1, .L1700	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@ D.41252,
	str	r0, [r6, #32]	@ D.41252, pPPS_19(D)->num_slice_groups_minus1
	beq	.L1693	@,
.L1660:
	ldr	r3, .L1700+4	@ tmp277,
	ldr	r3, [r3]	@ D.41260, g_event_report
	cmp	r3, #0	@ D.41260,
	beq	.L1692	@,
	ldr	r0, [r7, #3688]	@, pH264Ctx_17(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #102	@,
	blx	r3	@ D.41260
.L1692:
	mvn	r0, #0	@ D.41246,
.L1658:
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1693:
	ldr	r3, [r7, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1660	@,
	ldr	r1, .L1700+8	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #31	@ D.41252,
	str	r0, [r6, #36]	@ D.41252, pPPS_19(D)->num_ref_idx_l0_active_minus1
	bhi	.L1692	@,
	ldr	r3, [r7, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1692	@,
	ldr	r1, .L1700+12	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #31	@ D.41252,
	str	r0, [r6, #40]	@ D.41252, pPPS_19(D)->num_ref_idx_l1_active_minus1
	bhi	.L1692	@,
	ldr	r3, [r7, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1692	@,
	mov	r1, #1	@,
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _145->nal_bitoffset, _145->nal_bitoffset
	add	r3, r3, #1	@ D.41252, _145->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _145->nal_bitoffset
	strb	r0, [r6, #2]	@, pPPS_19(D)->weighted_pred_flag
	ldr	r3, [r7, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1692	@,
	mov	r1, #2	@,
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _149->nal_bitoffset, _149->nal_bitoffset
	add	r3, r3, #2	@ D.41252, _149->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _149->nal_bitoffset
	cmp	r0, #2	@ INFO,
	str	r0, [r6, #44]	@ INFO, pPPS_19(D)->weighted_bipred_idc
	bhi	.L1692	@,
	ldr	r1, .L1700+16	@,
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1700+20	@,
	mov	r8, #0	@ tmp310,
	str	r0, [r6, #48]	@, pPPS_19(D)->pic_init_qp_minus26
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1700+24	@,
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	mov	r1, #1	@,
	str	r0, [r6, #52]	@, pPPS_19(D)->chroma_qp_index_offset
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _154->nal_bitoffset, _154->nal_bitoffset
	add	r3, r3, r1	@ D.41252, _154->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _154->nal_bitoffset
	strb	r0, [r6, #3]	@, pPPS_19(D)->deblocking_filter_control_present_flag
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _159->nal_bitoffset, _159->nal_bitoffset
	add	r3, r3, r1	@ D.41252, _159->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _159->nal_bitoffset
	strb	r0, [r6, #4]	@, pPPS_19(D)->constrained_intra_pred_flag
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _164->nal_bitoffset, _164->nal_bitoffset
	add	r3, r3, #1	@ D.41252, _164->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _164->nal_bitoffset
	ldr	r3, [r6, #52]	@ pPPS_19(D)->chroma_qp_index_offset, pPPS_19(D)->chroma_qp_index_offset
	str	r8, [r6, #60]	@ tmp310, pPPS_19(D)->transform_8x8_mode_flag
	strb	r8, [r6, #18]	@ tmp310, pPPS_19(D)->pic_scaling_matrix_present_flag
	str	r3, [r6, #56]	@ pPPS_19(D)->chroma_qp_index_offset, pPPS_19(D)->second_chroma_qp_index_offset
	strb	r0, [r6, #17]	@, pPPS_19(D)->redundant_pic_cnt_present_flag
	mov	r0, r5	@, D.41261
	bl	BsResidBits	@
	ldr	r3, [r4, #368]	@ pH264Ctx_17(D)->pCurrNal, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r3, #72]	@ _62->nal_trail_zero_bit_num, _62->nal_trail_zero_bit_num
	add	r3, r3, #3	@ D.41252, _62->nal_trail_zero_bit_num,
	cmp	r0, r3	@, D.41252
	movcc	r0, r8	@ D.41246, tmp310
	bcc	.L1658	@,
	mov	r1, #1	@,
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _169->nal_bitoffset, _169->nal_bitoffset
	add	r3, r3, r1	@ D.41252, _169->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _169->nal_bitoffset
	str	r0, [r6, #60]	@, pPPS_19(D)->transform_8x8_mode_flag
	mov	r0, r5	@, D.41261
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _174->nal_bitoffset, _174->nal_bitoffset
	add	r3, r3, #1	@ D.41252, _174->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41252, _174->nal_bitoffset
	uxtb	r0, r0	@ D.41251,
	strb	r0, [r6, #18]	@ D.41251, pPPS_19(D)->pic_scaling_matrix_present_flag
	cmp	r0, #1	@ D.41251,
	beq	.L1662	@,
.L1679:
	mov	r0, r4	@, pH264Ctx
	ldr	r1, .L1700+28	@,
	bl	se_v	@
	add	r3, r0, #12	@ D.41259, D.41253,
	str	r0, [r6, #56]	@ D.41253, pPPS_19(D)->second_chroma_qp_index_offset
	cmp	r3, #24	@ D.41259,
	bhi	.L1692	@,
	ldr	r0, [r7, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	adds	r8, r0, #0	@ D.41257, pH264Ctx_17(D)->SeErrFlg,
	movne	r8, #1	@ D.41257,
	rsb	r0, r8, #0	@ D.41246, D.41257
	b	.L1658	@
.L1662:
	add	r3, r6, #4	@ ivtmp.2182, pPPS,
	add	r9, r6, #1984	@ ivtmp.2189, pPPS,
	add	fp, r6, #64	@ ivtmp.2193, pPPS,
	str	r6, [sp, #16]	@ pPPS, %sfp
	add	r10, sp, #28	@ ivtmp.2176,,
	str	r5, [sp, #12]	@ D.41261, %sfp
	mov	r6, r3	@ ivtmp.2182, ivtmp.2182
	str	r7, [sp, #20]	@ tmp400, %sfp
	b	.L1670	@
.L1697:
	ldr	r3, [sp, #16]	@ pPPS, %sfp
	ldr	ip, [r7, #1292]	@ pH264Ctx_17(D)->SPS, pH264Ctx_17(D)->SPS
	ldr	r3, [r3, #28]	@ pPPS_19(D)->seq_parameter_set_id, pPPS_19(D)->seq_parameter_set_id
	mla	r5, r5, r3, ip	@ D.41258, tmp343, pPPS_19(D)->seq_parameter_set_id, pH264Ctx_17(D)->SPS
	ldrb	r3, [r5, #25]	@ zero_extendqisi2	@ _83->seq_scaling_matrix_present_flag, _83->seq_scaling_matrix_present_flag
	cmp	r3, #1	@ _83->seq_scaling_matrix_present_flag,
	beq	.L1694	@,
	ldr	r3, .L1700+32	@ tmp438,
	cmp	r1, #0	@ D.41257,
	add	ip, r3, #16	@ tmp439,,
	moveq	r3, ip	@ tmp438, tmp439
	mov	r1, r3	@, tmp438
	bl	memcpy	@
.L1665:
	add	r8, r8, #1	@ i, i,
	add	r9, r9, #16	@ ivtmp.2189, ivtmp.2189,
	cmp	r8, #6	@ i,
	add	fp, fp, #64	@ ivtmp.2193, ivtmp.2193,
	beq	.L1695	@,
.L1670:
	mov	r1, #1	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	BsGet	@
	ldr	lr, [r4, #368]	@ D.41254, pH264Ctx_17(D)->pCurrNal
	clz	r1, r8	@ D.41257, i
	add	r7, r4, #12288	@ tmp340, pH264Ctx,
	mov	r5, #4000	@ tmp343,
	mov	r2, #16	@,
	ldr	ip, [lr, #64]	@ _179->nal_bitoffset, _179->nal_bitoffset
	mov	r1, r1, lsr #5	@ D.41257, D.41257,
	add	ip, ip, #1	@ D.41252, _179->nal_bitoffset,
	str	ip, [lr, #64]	@ D.41252, _179->nal_bitoffset
	cmp	r0, #1	@ D.41253,
	mov	r3, r0	@ D.41253,
	mov	r0, r9	@, ivtmp.2189
	str	r3, [r10, #4]!	@ D.41253, MEM[base: _240, offset: 0B]
	strb	r3, [r6, #1]!	@ D.41253, MEM[base: _241, offset: 0B]
	beq	.L1696	@,
	cmp	r8, #0	@ i,
	cmpne	r8, #3	@, i,
	beq	.L1697	@,
	mov	r2, #16	@,
	sub	r1, r9, #16	@, ivtmp.2189,
	mov	r0, r9	@, ivtmp.2189
	bl	memcpy	@
	b	.L1665	@
.L1695:
	add	r5, sp, #12	@,,
	add	r2, r4, #12288	@ tmp409, pH264Ctx,
	add	r9, sp, #24	@ ivtmp.2166,,
	mov	r8, #0	@ i,
	ldmia	r5, {r5, r6, r7}	@,,,
	add	r3, r6, #448	@ ivtmp.2163, pPPS,
	add	r10, r6, #2080	@ ivtmp.2160, pPPS,
	add	fp, r6, #11	@ ivtmp.2168, pPPS,
	str	r5, [sp, #16]	@ D.41261, %sfp
	str	r7, [sp, #12]	@ tmp400, %sfp
	mov	r5, r3	@ ivtmp.2163, ivtmp.2163
	mov	r7, r2	@ tmp409, tmp409
.L1678:
	ldr	r1, [r6, #60]	@ pPPS_19(D)->transform_8x8_mode_flag, pPPS_19(D)->transform_8x8_mode_flag
	mov	r3, #0	@ tmp367,
	cmp	r1, #1	@ pPPS_19(D)->transform_8x8_mode_flag,
	strne	r3, [r9]	@ tmp367, MEM[base: _227, offset: 0B]
	strneb	r3, [fp]	@ tmp367, MEM[base: _228, offset: 0B]
	beq	.L1698	@,
.L1673:
	ldr	r1, [r6, #28]	@ pPPS_19(D)->seq_parameter_set_id, pPPS_19(D)->seq_parameter_set_id
	mov	ip, #4000	@ tmp379,
	ldr	r3, [r7, #1292]	@ pH264Ctx_17(D)->SPS, pH264Ctx_17(D)->SPS
	mov	r0, r10	@, ivtmp.2160
	mov	r2, #64	@,
	mla	r3, ip, r1, r3	@ D.41258, tmp379, pPPS_19(D)->seq_parameter_set_id, pH264Ctx_17(D)->SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ _112->seq_scaling_matrix_present_flag, _112->seq_scaling_matrix_present_flag
	cmp	r1, #1	@ _112->seq_scaling_matrix_present_flag,
	beq	.L1699	@,
	ldr	r1, .L1700+36	@ tmp446,
	cmp	r8, #0	@ i,
	add	r3, r1, #64	@ tmp447,,
	movne	r1, r3	@ tmp446, tmp447
	bl	memcpy	@
.L1674:
	add	r8, r8, #1	@ i, i,
	add	r10, r10, #64	@ ivtmp.2160, ivtmp.2160,
	cmp	r8, #2	@ i,
	add	r5, r5, #256	@ ivtmp.2163, ivtmp.2163,
	add	r9, r9, #4	@ ivtmp.2166, ivtmp.2166,
	add	fp, fp, #1	@ ivtmp.2168, ivtmp.2168,
	bne	.L1678	@,
	ldr	r7, [sp, #12]	@ tmp400, %sfp
	b	.L1679	@
.L1696:
	mov	r3, r2	@,
	str	r10, [sp]	@ ivtmp.2176,
	mov	r2, r9	@, ivtmp.2189
	mov	r1, fp	@, ivtmp.2193
	mov	r0, r4	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [r10]	@ MEM[base: _240, offset: 0B], MEM[base: _240, offset: 0B]
	cmp	r3, #1	@ MEM[base: _240, offset: 0B],
	bne	.L1665	@,
	ldr	r1, .L1700+32	@ tmp435,
	mov	r2, #16	@,
	cmp	r8, #2	@ i,
	mov	r0, r9	@, ivtmp.2189
	add	r3, r1, r2	@ tmp436,,
	movhi	r1, r3	@ tmp435, tmp436
	bl	memcpy	@
	b	.L1665	@
.L1694:
	add	r1, r5, r8, lsl #4	@ tmp348, D.41258, i,
	mov	r2, #16	@,
	add	r1, r1, #2672	@, tmp348,
	mov	r0, r9	@, ivtmp.2189
	add	r1, r1, #8	@,,
	bl	memcpy	@
	b	.L1665	@
.L1698:
	ldr	r0, [sp, #16]	@, %sfp
	bl	BsGet	@
	ldr	lr, [r4, #368]	@ tmp442, pH264Ctx_17(D)->pCurrNal
	mov	r2, r10	@, ivtmp.2160
	mov	r1, r5	@, ivtmp.2163
	mov	r3, #64	@,
	ldr	lr, [lr, #64]	@ _184->nal_bitoffset, _184->nal_bitoffset
	add	lr, lr, #1	@ D.41252, _184->nal_bitoffset,
	mov	ip, r0	@ D.41253,
	str	ip, [sp, #20]	@ D.41253, %sfp
	cmp	ip, #1	@ D.41253,
	ldr	ip, [r4, #368]	@ tmp443, pH264Ctx_17(D)->pCurrNal
	mov	r0, r4	@, pH264Ctx
	str	lr, [ip, #64]	@ D.41252, _184->nal_bitoffset
	ldr	ip, [sp, #20]	@ D.41253, %sfp
	str	ip, [r9]	@ D.41253, MEM[base: _225, offset: 0B]
	strb	ip, [fp]	@ tmp452, MEM[base: _226, offset: 0B]
	bne	.L1673	@,
	str	r9, [sp]	@ ivtmp.2166,
	bl	Scaling_List	@
	ldr	r3, [r9]	@ MEM[base: _225, offset: 0B], MEM[base: _225, offset: 0B]
	cmp	r3, #1	@ MEM[base: _225, offset: 0B],
	bne	.L1674	@,
	ldr	r1, .L1700+36	@ tmp444,
	mov	r2, #64	@,
	cmp	r8, #0	@ i,
	mov	r0, r10	@, ivtmp.2160
	add	r3, r1, r2	@ tmp445,,
	movne	r1, r3	@ tmp444, tmp445
	bl	memcpy	@
	b	.L1674	@
.L1699:
	add	r1, r3, r8, lsl #6	@ tmp384, D.41258, i,
	add	r1, r1, #2768	@, tmp384,
	add	r1, r1, #8	@,,
	bl	memcpy	@
	b	.L1674	@
.L1701:
	.align	2
.L1700:
	.word	.LC37
	.word	g_event_report
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LANCHOR0+80
	.word	.LANCHOR0+112
	.fnend
	.size	ProcessPPS, .-ProcessPPS
	.align	2
	.global	PPSEqual
	.type	PPSEqual, %function
PPSEqual:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pPPS2,
	cmpne	r0, #0	@, pPPS1,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	moveq	fp, #1	@ tmp226,
	.pad #12
	sub	sp, sp, #12	@,,
	movne	fp, #0	@ tmp226,
	beq	.L1710	@,
	ldr	r2, [r0, #24]	@ pPPS1_11(D)->pic_parameter_set_id, pPPS1_11(D)->pic_parameter_set_id
	ldr	lr, [r0, #28]	@ pPPS1_11(D)->seq_parameter_set_id, pPPS1_11(D)->seq_parameter_set_id
	ldr	ip, [r1, #28]	@ pPPS2_12(D)->seq_parameter_set_id, pPPS2_12(D)->seq_parameter_set_id
	ldr	r5, [r1, #24]	@ pPPS2_12(D)->pic_parameter_set_id, pPPS2_12(D)->pic_parameter_set_id
	ldrb	r4, [r0]	@ zero_extendqisi2	@ pPPS1_11(D)->entropy_coding_mode_flag, pPPS1_11(D)->entropy_coding_mode_flag
	cmp	lr, ip	@ pPPS1_11(D)->seq_parameter_set_id, pPPS2_12(D)->seq_parameter_set_id
	cmpeq	r2, r5	@, pPPS1_11(D)->pic_parameter_set_id, pPPS2_12(D)->pic_parameter_set_id
	ldrb	r3, [r1]	@ zero_extendqisi2	@ pPPS2_12(D)->entropy_coding_mode_flag, pPPS2_12(D)->entropy_coding_mode_flag
	ldrb	r5, [r0, #1]	@ zero_extendqisi2	@ pPPS1_11(D)->pic_order_present_flag, pPPS1_11(D)->pic_order_present_flag
	ldrb	lr, [r1, #1]	@ zero_extendqisi2	@ pPPS2_12(D)->pic_order_present_flag, pPPS2_12(D)->pic_order_present_flag
	moveq	r2, #1	@ tmp235,
	movne	r2, #0	@ tmp235,
	cmp	r4, r3	@ pPPS1_11(D)->entropy_coding_mode_flag, pPPS2_12(D)->entropy_coding_mode_flag
	movne	ip, #0	@, tmp241
	andeq	ip, r2, #1	@,, tmp241, tmp235
	ldr	r4, [r0, #36]	@ pPPS1_11(D)->num_ref_idx_l0_active_minus1, pPPS1_11(D)->num_ref_idx_l0_active_minus1
	cmp	r5, lr	@ pPPS1_11(D)->pic_order_present_flag, pPPS2_12(D)->pic_order_present_flag
	movne	r3, #0	@, tmp247
	andeq	r3, ip, #1	@,, tmp247, tmp241
	ldr	r2, [r1, #36]	@ pPPS2_12(D)->num_ref_idx_l0_active_minus1, pPPS2_12(D)->num_ref_idx_l0_active_minus1
	ldr	r5, [r0, #40]	@ pPPS1_11(D)->num_ref_idx_l1_active_minus1, pPPS1_11(D)->num_ref_idx_l1_active_minus1
	ldr	ip, [r1, #40]	@ pPPS2_12(D)->num_ref_idx_l1_active_minus1, pPPS2_12(D)->num_ref_idx_l1_active_minus1
	cmp	r4, r2	@ pPPS1_11(D)->num_ref_idx_l0_active_minus1, pPPS2_12(D)->num_ref_idx_l0_active_minus1
	movne	lr, #0	@, tmp253
	andeq	lr, r3, #1	@,, tmp253, tmp247
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ pPPS1_11(D)->weighted_pred_flag, pPPS1_11(D)->weighted_pred_flag
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ pPPS2_12(D)->weighted_pred_flag, pPPS2_12(D)->weighted_pred_flag
	cmp	r5, ip	@ pPPS1_11(D)->num_ref_idx_l1_active_minus1, pPPS2_12(D)->num_ref_idx_l1_active_minus1
	movne	r2, #0	@, tmp259
	andeq	r2, lr, #1	@,, tmp259, tmp253
	ldr	r5, [r0, #44]	@ pPPS1_11(D)->weighted_bipred_idc, pPPS1_11(D)->weighted_bipred_idc
	ldr	lr, [r1, #44]	@ pPPS2_12(D)->weighted_bipred_idc, pPPS2_12(D)->weighted_bipred_idc
	cmp	r4, r3	@ pPPS1_11(D)->weighted_pred_flag, pPPS2_12(D)->weighted_pred_flag
	movne	ip, #0	@, tmp265
	andeq	ip, r2, #1	@,, tmp265, tmp259
	ldr	r4, [r0, #48]	@ pPPS1_11(D)->pic_init_qp_minus26, pPPS1_11(D)->pic_init_qp_minus26
	ldr	r2, [r1, #48]	@ pPPS2_12(D)->pic_init_qp_minus26, pPPS2_12(D)->pic_init_qp_minus26
	cmp	r5, lr	@ pPPS1_11(D)->weighted_bipred_idc, pPPS2_12(D)->weighted_bipred_idc
	movne	r3, #0	@, tmp271
	andeq	r3, ip, #1	@,, tmp271, tmp265
	ldr	r5, [r0, #52]	@ pPPS1_11(D)->chroma_qp_index_offset, pPPS1_11(D)->chroma_qp_index_offset
	ldr	ip, [r1, #52]	@ pPPS2_12(D)->chroma_qp_index_offset, pPPS2_12(D)->chroma_qp_index_offset
	cmp	r4, r2	@ pPPS1_11(D)->pic_init_qp_minus26, pPPS2_12(D)->pic_init_qp_minus26
	movne	lr, #0	@, tmp277
	andeq	lr, r3, #1	@,, tmp277, tmp271
	ldrb	r6, [r0, #3]	@ zero_extendqisi2	@ pPPS1_11(D)->deblocking_filter_control_present_flag, pPPS1_11(D)->deblocking_filter_control_present_flag
	ldrb	r4, [r1, #3]	@ zero_extendqisi2	@ pPPS2_12(D)->deblocking_filter_control_present_flag, pPPS2_12(D)->deblocking_filter_control_present_flag
	cmp	r5, ip	@ pPPS1_11(D)->chroma_qp_index_offset, pPPS2_12(D)->chroma_qp_index_offset
	movne	r2, #0	@, tmp283
	andeq	r2, lr, #1	@,, tmp283, tmp277
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ pPPS1_11(D)->constrained_intra_pred_flag, pPPS1_11(D)->constrained_intra_pred_flag
	ldrb	r5, [r1, #4]	@ zero_extendqisi2	@ pPPS2_12(D)->constrained_intra_pred_flag, pPPS2_12(D)->constrained_intra_pred_flag
	cmp	r6, r4	@ pPPS1_11(D)->deblocking_filter_control_present_flag, pPPS2_12(D)->deblocking_filter_control_present_flag
	movne	ip, #0	@, tmp289
	andeq	ip, r2, #1	@,, tmp289, tmp283
	ldr	lr, [r0, #60]	@ D.41371, pPPS1_11(D)->transform_8x8_mode_flag
	ldr	r4, [r1, #60]	@ pPPS2_12(D)->transform_8x8_mode_flag, pPPS2_12(D)->transform_8x8_mode_flag
	cmp	r3, r5	@ pPPS1_11(D)->constrained_intra_pred_flag, pPPS2_12(D)->constrained_intra_pred_flag
	movne	r3, #0	@, tmp295
	andeq	r3, ip, #1	@,, tmp295, tmp289
	ldrb	r2, [r1, #18]	@ zero_extendqisi2	@ pPPS2_12(D)->pic_scaling_matrix_present_flag, pPPS2_12(D)->pic_scaling_matrix_present_flag
	ldrb	ip, [r0, #18]	@ zero_extendqisi2	@ D.41373, pPPS1_11(D)->pic_scaling_matrix_present_flag
	cmp	lr, r4	@ D.41371, pPPS2_12(D)->transform_8x8_mode_flag
	movne	r3, #0	@, tmp300
	andeq	r3, r3, #1	@,, tmp300, tmp295
	cmp	r2, ip	@ pPPS2_12(D)->pic_scaling_matrix_present_flag, D.41373
	movne	r2, #0	@, equal
	andeq	r2, r3, #1	@,, equal, tmp300
	cmp	ip, #0	@ D.41373,
	beq	.L1704	@,
	mov	lr, lr, asl #1	@ D.41371, D.41371,
	adds	r3, lr, #6	@ D.41371, D.41371,
	beq	.L1704	@,
	sub	r8, r1, #1088	@ ivtmp.2263, pPPS2,
	add	r10, r0, #4	@ ivtmp.2245, pPPS1,
	sub	r8, r8, #4	@ ivtmp.2263, ivtmp.2263,
	add	r9, r1, #4	@ ivtmp.2253, pPPS2,
	mov	r6, fp	@ i, ivtmp.2267
	mov	r7, r0	@ ivtmp.2262, pPPS1
	mov	r5, r3	@ D.41371, D.41371
	str	r1, [sp, #4]	@ pPPS2, %sfp
.L1709:
	ldrb	r3, [r10, #1]!	@ zero_extendqisi2	@ D.41375, MEM[base: _4, offset: 0B]
	ldrsb	ip, [r9, #1]!	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	sxtb	r1, r3	@ D.41375, D.41375
	cmp	ip, r1	@ MEM[base: _3, offset: 0B], D.41375
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r3, #0	@ D.41375,
	beq	.L1724	@,
	cmp	r6, #5	@ i,
	bhi	.L1706	@,
	ldr	r1, [sp, #4]	@ pPPS2, %sfp
	add	r4, fp, #64	@ ivtmp.2267, ivtmp.2267,
	add	fp, fp, #128	@ D.41377, ivtmp.2267,
	add	r3, r0, r4	@ ivtmp.2205, pPPS1, ivtmp.2267
	add	fp, r0, fp	@ D.41378, pPPS1, D.41377
	add	r1, r1, r4	@ ivtmp.2214, pPPS2, ivtmp.2267
.L1707:
	ldr	lr, [r3], #4	@ D.41374, MEM[base: _137, offset: 0B]
	ldr	ip, [r1], #4	@ D.41374, MEM[base: _136, offset: 0B]
	cmp	lr, ip	@ D.41374, D.41374
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r3, fp	@ ivtmp.2205, D.41378
	bne	.L1707	@,
.L1705:
	add	r6, r6, #1	@ i, i,
	add	r7, r7, #256	@ ivtmp.2262, ivtmp.2262,
	cmp	r6, r5	@ i, D.41371
	add	r8, r8, #256	@ ivtmp.2263, ivtmp.2263,
	mov	fp, r4	@ ivtmp.2267, ivtmp.2267
	bne	.L1709	@,
	ldr	r1, [sp, #4]	@ pPPS2, %sfp
.L1704:
	ldr	r0, [r0, #56]	@ pPPS1_11(D)->second_chroma_qp_index_offset, pPPS1_11(D)->second_chroma_qp_index_offset
	ldr	r3, [r1, #56]	@ pPPS2_12(D)->second_chroma_qp_index_offset, pPPS2_12(D)->second_chroma_qp_index_offset
	cmp	r0, r3	@ pPPS1_11(D)->second_chroma_qp_index_offset, pPPS2_12(D)->second_chroma_qp_index_offset
	movne	r0, #0	@, equal
	andeq	r0, r2, #1	@,, equal, equal
	eor	r0, r0, #1	@ D.41372, equal,
	rsb	r0, r0, #0	@ D.41369, D.41372
.L1703:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1706:
	sub	r3, r7, #1088	@ ivtmp.2226, ivtmp.2262,
	sub	r4, r7, #836	@ D.41378, ivtmp.2262,
	sub	r3, r3, #4	@ ivtmp.2226, ivtmp.2226,
	mov	r1, r8	@ ivtmp.2235, ivtmp.2263
.L1708:
	ldr	lr, [r3, #4]!	@ MEM[base: _123, offset: 0B], MEM[base: _123, offset: 0B]
	ldr	ip, [r1, #4]!	@ MEM[base: _122, offset: 0B], MEM[base: _122, offset: 0B]
	cmp	lr, ip	@ MEM[base: _123, offset: 0B], MEM[base: _122, offset: 0B]
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r3, r4	@ ivtmp.2226, D.41378
	bne	.L1708	@,
.L1724:
	add	r4, fp, #64	@ ivtmp.2267, ivtmp.2267,
	b	.L1705	@
.L1710:
	mvn	r0, #0	@ D.41369,
	b	.L1703	@
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
	ldr	r1, .L1741	@,
	add	r5, r0, #12288	@ tmp149, pH264Ctx,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r5, #1288]	@ D.41382, pH264Ctx_4(D)->MaxPpsNum
	sub	r2, r3, #1	@ D.41382, D.41382,
	cmp	r0, r2	@ pic_parameter_set_id, D.41382
	mov	r6, r0	@ pic_parameter_set_id,
	bls	.L1726	@,
	ldr	r2, .L1741+4	@ tmp151,
	ldr	ip, [r2]	@ D.41384, g_event_report
	cmp	ip, #0	@ D.41384,
	beq	.L1739	@,
	add	r4, r4, #49152	@ tmp154, pH264Ctx,
	str	r0, [sp]	@ pic_parameter_set_id, para
	str	r3, [sp, #4]	@ D.41382, para
	mov	r2, sp	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_4(D)->ChanID
	mov	r1, #110	@,
	blx	ip	@ D.41384
.L1739:
	mvn	r0, #0	@ D.41381,
.L1728:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1726:
	ldr	r1, .L1741+8	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r5, #1284]	@ pH264Ctx_4(D)->MaxSpsNum, pH264Ctx_4(D)->MaxSpsNum
	sub	r3, r3, #1	@ D.41382, pH264Ctx_4(D)->MaxSpsNum,
	cmp	r0, r3	@ seq_parameter_set_id, D.41382
	mov	ip, r0	@ seq_parameter_set_id,
	bhi	.L1739	@,
	ldr	r2, [r5, #1292]	@ pH264Ctx_4(D)->SPS, pH264Ctx_4(D)->SPS
	mov	r3, #4000	@ tmp165,
	mla	r3, r3, r0, r2	@ tmp166, tmp165, seq_parameter_set_id, pH264Ctx_4(D)->SPS
	ldrb	r3, [r3, #23]	@ zero_extendqisi2	@ _24->is_valid, _24->is_valid
	cmp	r3, #0	@ _24->is_valid,
	beq	.L1739	@,
	mov	r9, #2208	@ tmp168,
	ldr	r3, [r5, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mul	r7, r9, r6	@ D.41383, tmp168, pic_parameter_set_id
	add	r3, r3, r7	@ D.41387, pH264Ctx_4(D)->PPS, D.41383
	ldrb	r8, [r3, #19]	@ zero_extendqisi2	@ _28->is_valid, _28->is_valid
	cmp	r8, #0	@ _28->is_valid,
	beq	.L1730	@,
	ldr	r8, .L1741+12	@ tmp173,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, tmp173
	str	r6, [r8, #24]	@ pic_parameter_set_id, pps_tmp.pic_parameter_set_id
	str	ip, [r8, #28]	@ seq_parameter_set_id, pps_tmp.seq_parameter_set_id
	bl	ProcessPPS	@
	subs	r4, r0, #0	@ D.41382,
	bne	.L1739	@,
	ldr	r3, [r5, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r0, r8	@, tmp173
	add	r7, r3, r7	@ D.41387, pH264Ctx_4(D)->PPS, D.41383
	mov	r1, r7	@, D.41387
	bl	PPSEqual	@
	cmp	r0, #0	@ D.41381
	beq	.L1728	@,
	mov	r2, r9	@, tmp168
	mov	r0, r7	@, D.41387
	mov	r1, r8	@, tmp173
	mov	r3, #1	@ tmp181,
	strb	r3, [r8, #20]	@ tmp181, pps_tmp.is_refreshed
	strb	r3, [r8, #19]	@ tmp181, pps_tmp.is_valid
	bl	memmove	@
	mov	r0, r4	@ D.41381, D.41382
	b	.L1728	@
.L1730:
	str	r6, [r3, #24]	@ pic_parameter_set_id, _28->pic_parameter_set_id
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [r5, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r3, r3, r7	@ tmp190, pH264Ctx_4(D)->PPS, D.41383
	str	ip, [r3, #28]	@ seq_parameter_set_id, _42->seq_parameter_set_id
	ldr	r1, [r5, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r1, r1, r7	@, pH264Ctx_4(D)->PPS, D.41383
	bl	ProcessPPS	@
	ldr	r3, [r5, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r2, #1	@ tmp199,
	cmp	r0, #0	@ D.41381
	bne	.L1740	@,
	add	r3, r3, r7	@ tmp210, pH264Ctx_4(D)->PPS, D.41383
	strb	r2, [r3, #20]	@ tmp211, _55->is_refreshed
	ldr	r3, [r5, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r7, r3, r7	@ tmp216, pH264Ctx_4(D)->PPS, D.41383
	strb	r2, [r7, #19]	@ tmp211, _58->is_valid
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1740:
	add	r3, r3, r7	@ tmp198, pH264Ctx_4(D)->PPS, D.41383
	mvn	r0, #0	@ D.41381,
	strb	r2, [r3, #20]	@ tmp199, _49->is_refreshed
	ldr	r3, [r5, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r7, r3, r7	@ tmp204, pH264Ctx_4(D)->PPS, D.41383
	strb	r8, [r7, #19]	@ _28->is_valid, _52->is_valid
	b	.L1728	@
.L1742:
	.align	2
.L1741:
	.word	.LC44
	.word	g_event_report
	.word	.LC45
	.word	.LANCHOR2
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
	add	r6, r0, #13504	@ D.41450, pH264Ctx,
	add	r6, r6, #24	@ D.41450, D.41450,
	mov	r5, r1	@ pVUI, pVUI
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _162->nal_bitoffset, _162->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _162->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _162->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5]	@ D.41448, pVUI_19(D)->aspect_ratio_info_present_flag
	cmp	r0, #0	@ D.41448,
	streqb	r0, [r5, #15]	@ D.41448, pVUI_19(D)->aspect_ratio_idc
	bne	.L1786	@,
.L1745:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _179->nal_bitoffset, _179->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _179->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _179->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #1]	@ D.41448, pVUI_19(D)->overscan_info_present_flag
	cmp	r0, #0	@ D.41448,
	bne	.L1787	@,
.L1746:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _189->nal_bitoffset, _189->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _189->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _189->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #3]	@ D.41448, pVUI_19(D)->video_signal_type_present_flag
	cmp	r0, #0	@ D.41448,
	moveq	r3, #5	@ tmp385,
	streq	r3, [r5, #28]	@ tmp385, pVUI_19(D)->video_format
	bne	.L1788	@,
.L1748:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _220->nal_bitoffset, _220->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _220->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _220->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #6]	@ D.41448, pVUI_19(D)->chroma_location_info_present_flag
	cmp	r0, #0	@ D.41448,
	bne	.L1789	@,
.L1749:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _225->nal_bitoffset, _225->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _225->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _225->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #8]	@ D.41448, pVUI_19(D)->timing_info_present_flag
	cmp	r0, #0	@ D.41448,
	bne	.L1790	@,
.L1751:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _243->nal_bitoffset, _243->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _243->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _243->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #7]	@ D.41448, pVUI_19(D)->nal_hrd_parameters_present_flag
	cmp	r0, #0	@ D.41448,
	beq	.L1753	@,
	ldr	r1, .L1792	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r1, #4	@,
	str	r0, [r5, #96]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_cnt_minus1
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #4	@,
	ldr	r3, [r2, #64]	@ _247->nal_bitoffset, _247->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _247->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _247->nal_bitoffset
	strb	r0, [r5, #92]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].bit_rate_scale
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _251->nal_bitoffset, _251->nal_bitoffset
	add	r3, r3, #4	@ D.41449, _251->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _251->nal_bitoffset
	ldr	r3, [r5, #96]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_cnt_minus1
	cmp	r3, #31	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_cnt_minus1,
	strb	r0, [r5, #93]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_size_scale
	bhi	.L1756	@,
	add	r9, r4, #49152	@ tmp493, pH264Ctx,
	ldr	r7, [r9, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r7, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1756	@,
	add	r8, r5, #96	@ ivtmp.2305, pVUI,
	add	r9, r5, #59	@ ivtmp.2321, pVUI,
.L1757:
	ldr	r1, .L1792+4	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1792+8	@,
	add	r7, r7, #1	@ SchedSelIdx, SchedSelIdx,
	str	r0, [r8, #4]!	@, MEM[base: _412, offset: 0B]
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r1, #1	@,
	str	r0, [r8, #128]	@, MEM[base: _412, offset: 128B]
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _256->nal_bitoffset, _256->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _256->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _256->nal_bitoffset
	strb	r0, [r9, #1]!	@, MEM[base: _414, offset: 0B]
	ldr	r3, [r5, #96]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_cnt_minus1
	cmp	r3, r7	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_cnt_minus1, SchedSelIdx
	bcs	.L1757	@,
	mov	r1, #5	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #5	@,
	ldr	r3, [r2, #64]	@ _260->nal_bitoffset, _260->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _260->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _260->nal_bitoffset
	str	r0, [r5, #356]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].initial_cpb_removal_delay_length_minus1
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #5	@,
	ldr	r3, [r2, #64]	@ _264->nal_bitoffset, _264->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _264->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _264->nal_bitoffset
	str	r0, [r5, #360]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].cpb_removal_delay_length_minus1
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #5	@,
	ldr	r3, [r2, #64]	@ _268->nal_bitoffset, _268->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _268->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _268->nal_bitoffset
	str	r0, [r5, #364]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].dpb_output_delay_length_minus1
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _272->nal_bitoffset, _272->nal_bitoffset
	add	r3, r3, #5	@ D.41449, _272->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _272->nal_bitoffset
	str	r0, [r5, #368]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 60B].time_offset_length
.L1753:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _277->nal_bitoffset, _277->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _277->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _277->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #10]	@ D.41448, pVUI_19(D)->vcl_hrd_parameters_present_flag
	cmp	r0, #0	@ D.41448,
	bne	.L1791	@,
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ pVUI_19(D)->nal_hrd_parameters_present_flag, pVUI_19(D)->nal_hrd_parameters_present_flag
	add	r9, r4, #49152	@ tmp493, pH264Ctx,
	cmp	r3, #0	@ pVUI_19(D)->nal_hrd_parameters_present_flag,
	bne	.L1762	@,
.L1761:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _316->nal_bitoffset, _316->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _316->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _316->nal_bitoffset
	strb	r0, [r5, #11]	@, pVUI_19(D)->pic_struct_present_flag
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _321->nal_bitoffset, _321->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _321->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _321->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #12]	@ D.41448, pVUI_19(D)->bitstream_restriction_flag
	cmp	r0, #0	@ D.41448,
	bne	.L1763	@,
	ldr	r0, [r9, #3628]	@ D.41447, pH264Ctx_17(D)->SeErrFlg
.L1764:
	adds	r0, r0, #0	@ D.41453, D.41447,
	movne	r0, #1	@ D.41453,
	rsb	r0, r0, #0	@ D.41445, D.41453
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1791:
	ldr	r1, .L1792	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r1, #4	@,
	str	r0, [r5, #408]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_cnt_minus1
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #4	@,
	ldr	r3, [r2, #64]	@ _281->nal_bitoffset, _281->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _281->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _281->nal_bitoffset
	strb	r0, [r5, #404]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].bit_rate_scale
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _285->nal_bitoffset, _285->nal_bitoffset
	add	r3, r3, #4	@ D.41449, _285->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _285->nal_bitoffset
	ldr	r3, [r5, #408]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_cnt_minus1
	cmp	r3, #31	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_cnt_minus1,
	strb	r0, [r5, #405]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_size_scale
	bhi	.L1756	@,
	add	r9, r4, #49152	@ tmp493, pH264Ctx,
	ldr	r7, [r9, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r7, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1756	@,
	add	r10, r5, #368	@ ivtmp.2295, pVUI,
	add	r8, r5, #408	@ ivtmp.2279, pVUI,
	add	r10, r10, #3	@ ivtmp.2295, ivtmp.2295,
.L1759:
	ldr	r1, .L1792+4	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1792+8	@,
	add	r7, r7, #1	@ SchedSelIdx, SchedSelIdx,
	str	r0, [r8, #4]!	@, MEM[base: _11, offset: 0B]
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r1, #1	@,
	str	r0, [r8, #128]	@, MEM[base: _11, offset: 128B]
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _290->nal_bitoffset, _290->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _290->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _290->nal_bitoffset
	strb	r0, [r10, #1]!	@, MEM[base: _310, offset: 0B]
	ldr	r3, [r5, #408]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_cnt_minus1
	cmp	r3, r7	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_cnt_minus1, SchedSelIdx
	bcs	.L1759	@,
	mov	r1, #5	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #5	@,
	ldr	r3, [r2, #64]	@ _294->nal_bitoffset, _294->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _294->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _294->nal_bitoffset
	str	r0, [r5, #668]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].initial_cpb_removal_delay_length_minus1
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #5	@,
	ldr	r3, [r2, #64]	@ _298->nal_bitoffset, _298->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _298->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _298->nal_bitoffset
	str	r0, [r5, #672]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].cpb_removal_delay_length_minus1
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #5	@,
	ldr	r3, [r2, #64]	@ _302->nal_bitoffset, _302->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _302->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _302->nal_bitoffset
	str	r0, [r5, #676]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].dpb_output_delay_length_minus1
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _306->nal_bitoffset, _306->nal_bitoffset
	add	r3, r3, #5	@ D.41449, _306->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _306->nal_bitoffset
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ pVUI_19(D)->nal_hrd_parameters_present_flag, pVUI_19(D)->nal_hrd_parameters_present_flag
	cmp	r3, #0	@ pVUI_19(D)->nal_hrd_parameters_present_flag,
	str	r0, [r5, #680]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_19(D) + 372B].time_offset_length
	bne	.L1762	@,
	ldrb	r3, [r5, #10]	@ zero_extendqisi2	@ pVUI_19(D)->vcl_hrd_parameters_present_flag, pVUI_19(D)->vcl_hrd_parameters_present_flag
	cmp	r3, #0	@ pVUI_19(D)->vcl_hrd_parameters_present_flag,
	beq	.L1761	@,
.L1762:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _311->nal_bitoffset, _311->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _311->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _311->nal_bitoffset
	strb	r0, [r5, #14]	@, pVUI_19(D)->low_delay_hrd_flag
	b	.L1761	@
.L1790:
	mov	r1, #32	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #32	@,
	ldr	r3, [r2, #64]	@ _229->nal_bitoffset, _229->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _229->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _229->nal_bitoffset
	str	r0, [r5, #52]	@, pVUI_19(D)->num_units_in_tick
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _233->nal_bitoffset, _233->nal_bitoffset
	add	r3, r3, #32	@ D.41449, _233->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _233->nal_bitoffset
	str	r0, [r5, #56]	@, pVUI_19(D)->time_scale
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _238->nal_bitoffset, _238->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _238->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _238->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #9]	@ D.41448, pVUI_19(D)->fixed_frame_rate_flag
	cmp	r0, #1	@ D.41448,
	bne	.L1751	@,
	ldr	r1, [r5, #52]	@ D.41449, pVUI_19(D)->num_units_in_tick
	cmp	r1, #0	@ D.41449,
	beq	.L1751	@,
	ldr	r0, [r5, #56]	@, pVUI_19(D)->time_scale
	add	r9, r4, #49152	@ tmp493, pH264Ctx,
	bl	__aeabi_uidiv	@
	mov	r0, r0, lsr #1	@ D.41449,,
	str	r0, [r9, #2188]	@ D.41449, pH264Ctx_17(D)->frame_rate
	b	.L1751	@
.L1789:
	ldr	r1, .L1792+12	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1792+16	@,
	str	r0, [r5, #44]	@, pVUI_19(D)->chroma_sample_loc_type_top_field
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #48]	@, pVUI_19(D)->chroma_sample_loc_type_bottom_field
	b	.L1749	@
.L1788:
	mov	r1, #3	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _193->nal_bitoffset, _193->nal_bitoffset
	add	r3, r3, #3	@ D.41449, _193->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _193->nal_bitoffset
	str	r0, [r5, #28]	@, pVUI_19(D)->video_format
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _198->nal_bitoffset, _198->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _198->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _198->nal_bitoffset
	strb	r0, [r5, #4]	@, pVUI_19(D)->video_full_range_flag
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _203->nal_bitoffset, _203->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _203->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _203->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #5]	@ D.41448, pVUI_19(D)->colour_description_present_flag
	cmp	r0, #0	@ D.41448,
	beq	.L1748	@,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #8	@,
	ldr	r3, [r2, #64]	@ _207->nal_bitoffset, _207->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _207->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _207->nal_bitoffset
	str	r0, [r5, #32]	@, pVUI_19(D)->colour_primaries
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #8	@,
	ldr	r3, [r2, #64]	@ _211->nal_bitoffset, _211->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _211->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _211->nal_bitoffset
	str	r0, [r5, #36]	@, pVUI_19(D)->transfer_characteristics
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _215->nal_bitoffset, _215->nal_bitoffset
	add	r3, r3, #8	@ D.41449, _215->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _215->nal_bitoffset
	str	r0, [r5, #40]	@, pVUI_19(D)->matrix_coefficients
	b	.L1748	@
.L1787:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _184->nal_bitoffset, _184->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _184->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _184->nal_bitoffset
	strb	r0, [r5, #2]	@, pVUI_19(D)->overscan_appropriate_flag
	b	.L1746	@
.L1786:
	mov	r1, #8	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _166->nal_bitoffset, _166->nal_bitoffset
	add	r3, r3, #8	@ D.41449, _166->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _166->nal_bitoffset
	uxtb	r0, r0	@ D.41448,
	strb	r0, [r5, #15]	@ D.41448, pVUI_19(D)->aspect_ratio_idc
	cmp	r0, #255	@ D.41448,
	bne	.L1745	@,
	mov	r1, #16	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	mov	r1, #16	@,
	ldr	r3, [r2, #64]	@ _170->nal_bitoffset, _170->nal_bitoffset
	add	r3, r3, r1	@ D.41449, _170->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _170->nal_bitoffset
	str	r0, [r5, #16]	@, pVUI_19(D)->sar_width
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _174->nal_bitoffset, _174->nal_bitoffset
	add	r3, r3, #16	@ D.41449, _174->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _174->nal_bitoffset
	str	r0, [r5, #20]	@, pVUI_19(D)->sar_height
	b	.L1745	@
.L1763:
	mov	r1, #1	@,
	mov	r0, r6	@, D.41450
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41452, pH264Ctx_17(D)->pCurrNal
	ldr	r1, .L1792+20	@,
	ldr	r3, [r2, #64]	@ _326->nal_bitoffset, _326->nal_bitoffset
	add	r3, r3, #1	@ D.41449, _326->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41449, _326->nal_bitoffset
	strb	r0, [r5, #13]	@, pVUI_19(D)->motion_vectors_over_pic_boundaries_flag
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1792+24	@,
	str	r0, [r5, #684]	@, pVUI_19(D)->max_bytes_per_pic_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1792+28	@,
	str	r0, [r5, #688]	@, pVUI_19(D)->max_bits_per_mb_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1792+32	@,
	str	r0, [r5, #696]	@, pVUI_19(D)->log2_max_mv_length_horizontal
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1792+36	@,
	str	r0, [r5, #692]	@, pVUI_19(D)->log2_max_mv_length_vertical
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1792+40	@,
	str	r0, [r5, #700]	@, pVUI_19(D)->num_reorder_frames
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #704]	@, pVUI_19(D)->max_dec_frame_buffering
	ldr	r0, [r9, #3628]	@ D.41447, pH264Ctx_17(D)->SeErrFlg
	cmp	r0, #0	@ D.41447,
	beq	.L1764	@,
.L1756:
	mvn	r0, #0	@ D.41445,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1793:
	.align	2
.L1792:
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC46
	.word	.LC47
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.fnend
	.size	vui_parameters, .-vui_parameters
	.align	2
	.global	SPSEqual
	.type	SPSEqual, %function
SPSEqual:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pSPS2,
	cmpne	r0, #0	@, pSPS1,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	moveq	r6, #1	@ tmp286,
	movne	r6, #0	@ tmp286,
	beq	.L1808	@,
	ldrb	r4, [r1]	@ zero_extendqisi2	@ pSPS2_17(D)->constrained_set0_flag, pSPS2_17(D)->constrained_set0_flag
	ldrb	r3, [r0]	@ zero_extendqisi2	@ pSPS1_16(D)->constrained_set0_flag, pSPS1_16(D)->constrained_set0_flag
	ldr	lr, [r0, #736]	@ pSPS1_16(D)->profile_idc, pSPS1_16(D)->profile_idc
	ldr	r2, [r1, #736]	@ pSPS2_17(D)->profile_idc, pSPS2_17(D)->profile_idc
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ pSPS1_16(D)->constrained_set1_flag, pSPS1_16(D)->constrained_set1_flag
	cmp	r3, r4	@ pSPS1_16(D)->constrained_set0_flag, pSPS2_17(D)->constrained_set0_flag
	cmpeq	lr, r2	@, pSPS1_16(D)->profile_idc, pSPS2_17(D)->profile_idc
	ldrb	r7, [r1, #1]	@ zero_extendqisi2	@ pSPS2_17(D)->constrained_set1_flag, pSPS2_17(D)->constrained_set1_flag
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ pSPS1_16(D)->constrained_set2_flag, pSPS1_16(D)->constrained_set2_flag
	ldrb	r5, [r1, #2]	@ zero_extendqisi2	@ pSPS2_17(D)->constrained_set2_flag, pSPS2_17(D)->constrained_set2_flag
	moveq	r4, #1	@ tmp295,
	movne	r4, #0	@ tmp295,
	ldr	r3, [r0, #740]	@ pSPS1_16(D)->level_idc, pSPS1_16(D)->level_idc
	cmp	ip, r7	@ pSPS1_16(D)->constrained_set1_flag, pSPS2_17(D)->constrained_set1_flag
	movne	lr, #0	@, tmp301
	andeq	lr, r4, #1	@,, tmp301, tmp295
	ldr	r7, [r1, #740]	@ pSPS2_17(D)->level_idc, pSPS2_17(D)->level_idc
	cmp	r2, r5	@ pSPS1_16(D)->constrained_set2_flag, pSPS2_17(D)->constrained_set2_flag
	movne	ip, #0	@, tmp307
	andeq	ip, lr, #1	@,, tmp307, tmp301
	ldr	r4, [r1, #744]	@ pSPS2_17(D)->seq_parameter_set_id, pSPS2_17(D)->seq_parameter_set_id
	ldr	r5, [r0, #744]	@ pSPS1_16(D)->seq_parameter_set_id, pSPS1_16(D)->seq_parameter_set_id
	cmp	r3, r7	@ pSPS1_16(D)->level_idc, pSPS2_17(D)->level_idc
	movne	r2, #0	@, tmp313
	andeq	r2, ip, #1	@,, tmp313, tmp307
	ldrb	lr, [r1, #25]	@ zero_extendqisi2	@ pSPS2_17(D)->seq_scaling_matrix_present_flag, pSPS2_17(D)->seq_scaling_matrix_present_flag
	ldrb	ip, [r0, #25]	@ zero_extendqisi2	@ D.41569, pSPS1_16(D)->seq_scaling_matrix_present_flag
	cmp	r5, r4	@ pSPS1_16(D)->seq_parameter_set_id, pSPS2_17(D)->seq_parameter_set_id
	movne	r3, #0	@, tmp319
	andeq	r3, r2, #1	@,, tmp319, tmp313
	cmp	lr, ip	@ pSPS2_17(D)->seq_scaling_matrix_present_flag, D.41569
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, tmp319
	cmp	ip, #0	@ D.41569,
	beq	.L1796	@,
	add	r10, r0, #3	@ ivtmp.2399, pSPS1,
	add	r9, r1, #3	@ ivtmp.2407, pSPS2,
	sub	r8, r1, #396	@ ivtmp.2417, pSPS2,
	mov	r5, r6	@ i, ivtmp.2421
	mov	r7, r0	@ ivtmp.2416, pSPS1
.L1801:
	ldrb	r2, [r10, #1]!	@ zero_extendqisi2	@ D.41570, MEM[base: _230, offset: 0B]
	ldrsb	lr, [r9, #1]!	@ MEM[base: _231, offset: 0B], MEM[base: _231, offset: 0B]
	sxtb	ip, r2	@ D.41570, D.41570
	cmp	lr, ip	@ MEM[base: _231, offset: 0B], D.41570
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, #0	@ D.41570,
	beq	.L1797	@,
	cmp	r5, #5	@ i,
	bhi	.L1798	@,
	add	ip, r6, #756	@ D.41577, ivtmp.2421,
	add	fp, r6, #820	@ D.41577, ivtmp.2421,
	add	r2, r0, ip	@ ivtmp.2355, pSPS1, D.41577
	add	fp, r0, fp	@ D.41576, pSPS1, D.41577
	add	ip, r1, ip	@ ivtmp.2364, pSPS2, D.41577
.L1799:
	ldr	r4, [r2, #4]!	@ MEM[base: _115, offset: 0B], MEM[base: _115, offset: 0B]
	ldr	lr, [ip, #4]!	@ MEM[base: _111, offset: 0B], MEM[base: _111, offset: 0B]
	cmp	r4, lr	@ MEM[base: _115, offset: 0B], MEM[base: _111, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, fp	@ ivtmp.2355, D.41576
	bne	.L1799	@,
.L1797:
	add	r5, r5, #1	@ i, i,
	add	r7, r7, #256	@ ivtmp.2416, ivtmp.2416,
	cmp	r5, #8	@ i,
	add	r8, r8, #256	@ ivtmp.2417, ivtmp.2417,
	add	r6, r6, #64	@ ivtmp.2421, ivtmp.2421,
	bne	.L1801	@,
.L1796:
	ldr	r2, [r1, #2904]	@ pSPS2_17(D)->log2_max_frame_num_minus4, pSPS2_17(D)->log2_max_frame_num_minus4
	ldr	lr, [r0, #2908]	@ D.41568, pSPS1_16(D)->pic_order_cnt_type
	ldr	ip, [r1, #2908]	@ pSPS2_17(D)->pic_order_cnt_type, pSPS2_17(D)->pic_order_cnt_type
	ldr	r4, [r0, #2904]	@ pSPS1_16(D)->log2_max_frame_num_minus4, pSPS1_16(D)->log2_max_frame_num_minus4
	cmp	lr, ip	@ D.41568, pSPS2_17(D)->pic_order_cnt_type
	cmpeq	r4, r2	@, pSPS1_16(D)->log2_max_frame_num_minus4, pSPS2_17(D)->log2_max_frame_num_minus4
	moveq	r2, #1	@ D.41567,
	movne	r2, #0	@ D.41567,
	cmp	lr, #0	@ D.41568,
	and	r3, r3, r2	@ equal, equal, D.41567
	beq	.L1803	@,
	cmp	lr, #1	@ D.41568,
	bne	.L1802	@,
	ldr	ip, [r1, #2916]	@ pSPS2_17(D)->offset_for_non_ref_pic, pSPS2_17(D)->offset_for_non_ref_pic
	ldr	lr, [r0, #2916]	@ pSPS1_16(D)->offset_for_non_ref_pic, pSPS1_16(D)->offset_for_non_ref_pic
	ldrb	r2, [r0, #16]	@ zero_extendqisi2	@ pSPS1_16(D)->delta_pic_order_always_zero_flag, pSPS1_16(D)->delta_pic_order_always_zero_flag
	ldrb	r6, [r1, #16]	@ zero_extendqisi2	@ pSPS2_17(D)->delta_pic_order_always_zero_flag, pSPS2_17(D)->delta_pic_order_always_zero_flag
	ldr	r5, [r0, #2920]	@ pSPS1_16(D)->offset_for_top_to_bottom_field, pSPS1_16(D)->offset_for_top_to_bottom_field
	cmp	lr, ip	@ pSPS1_16(D)->offset_for_non_ref_pic, pSPS2_17(D)->offset_for_non_ref_pic
	cmpeq	r2, r6	@, pSPS1_16(D)->delta_pic_order_always_zero_flag, pSPS2_17(D)->delta_pic_order_always_zero_flag
	ldr	r4, [r1, #2920]	@ pSPS2_17(D)->offset_for_top_to_bottom_field, pSPS2_17(D)->offset_for_top_to_bottom_field
	ldr	r6, [r0, #2924]	@ D.41568, pSPS1_16(D)->num_ref_frames_in_pic_order_cnt_cycle
	ldr	lr, [r1, #2924]	@ pSPS2_17(D)->num_ref_frames_in_pic_order_cnt_cycle, pSPS2_17(D)->num_ref_frames_in_pic_order_cnt_cycle
	moveq	ip, #1	@ tmp359,
	movne	ip, #0	@ tmp359,
	cmp	r5, r4	@ pSPS1_16(D)->offset_for_top_to_bottom_field, pSPS2_17(D)->offset_for_top_to_bottom_field
	movne	r2, #0	@, tmp365
	andeq	r2, ip, #1	@,, tmp365, tmp359
	cmp	r6, lr	@ D.41568, pSPS2_17(D)->num_ref_frames_in_pic_order_cnt_cycle
	movne	r2, #0	@, D.41567
	andeq	r2, r2, #1	@,, D.41567, tmp365
	cmp	r6, #0	@ D.41568,
	and	r3, r3, r2	@ equal, equal, D.41567
	beq	.L1802	@,
	add	lr, r0, #2912	@ ivtmp.2333, pSPS1,
	add	ip, r1, #2912	@ ivtmp.2342, pSPS2,
	add	lr, lr, #12	@ ivtmp.2333, ivtmp.2333,
	add	ip, ip, #12	@ ivtmp.2342, ivtmp.2342,
	mov	r2, #0	@ i,
.L1805:
	ldr	r5, [lr, #4]!	@ MEM[base: _183, offset: 0B], MEM[base: _183, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	r4, [ip, #4]!	@ MEM[base: _169, offset: 0B], MEM[base: _169, offset: 0B]
	cmp	r5, r4	@ MEM[base: _183, offset: 0B], MEM[base: _169, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, r6	@ i, D.41568
	bne	.L1805	@,
.L1802:
	ldrb	lr, [r1, #17]	@ zero_extendqisi2	@ pSPS2_17(D)->gaps_in_frame_num_value_allowed_flag, pSPS2_17(D)->gaps_in_frame_num_value_allowed_flag
	ldrb	r4, [r0, #17]	@ zero_extendqisi2	@ pSPS1_16(D)->gaps_in_frame_num_value_allowed_flag, pSPS1_16(D)->gaps_in_frame_num_value_allowed_flag
	ldr	ip, [r0, #3952]	@ pSPS1_16(D)->num_ref_frames, pSPS1_16(D)->num_ref_frames
	ldr	r5, [r1, #3952]	@ pSPS2_17(D)->num_ref_frames, pSPS2_17(D)->num_ref_frames
	ldr	r2, [r0, #3956]	@ pSPS1_16(D)->pic_width_in_mbs_minus1, pSPS1_16(D)->pic_width_in_mbs_minus1
	cmp	r4, lr	@ pSPS1_16(D)->gaps_in_frame_num_value_allowed_flag, pSPS2_17(D)->gaps_in_frame_num_value_allowed_flag
	cmpeq	ip, r5	@, pSPS1_16(D)->num_ref_frames, pSPS2_17(D)->num_ref_frames
	ldr	r7, [r1, #3956]	@ pSPS2_17(D)->pic_width_in_mbs_minus1, pSPS2_17(D)->pic_width_in_mbs_minus1
	ldr	r6, [r0, #3960]	@ pSPS1_16(D)->pic_height_in_map_units_minus1, pSPS1_16(D)->pic_height_in_map_units_minus1
	ldr	r5, [r1, #3960]	@ pSPS2_17(D)->pic_height_in_map_units_minus1, pSPS2_17(D)->pic_height_in_map_units_minus1
	moveq	lr, #1	@ tmp386,
	movne	lr, #0	@ tmp386,
	ldrb	r4, [r1, #18]	@ zero_extendqisi2	@ pSPS2_17(D)->frame_mbs_only_flag, pSPS2_17(D)->frame_mbs_only_flag
	cmp	r2, r7	@ pSPS1_16(D)->pic_width_in_mbs_minus1, pSPS2_17(D)->pic_width_in_mbs_minus1
	movne	ip, #0	@, tmp392
	andeq	ip, lr, #1	@,, tmp392, tmp386
	ldrb	lr, [r0, #18]	@ zero_extendqisi2	@ D.41569, pSPS1_16(D)->frame_mbs_only_flag
	cmp	r6, r5	@ pSPS1_16(D)->pic_height_in_map_units_minus1, pSPS2_17(D)->pic_height_in_map_units_minus1
	movne	r2, #0	@, tmp398
	andeq	r2, ip, #1	@,, tmp398, tmp392
	cmp	r4, lr	@ pSPS2_17(D)->frame_mbs_only_flag, D.41569
	movne	r2, #0	@, D.41567
	andeq	r2, r2, #1	@,, D.41567, tmp398
	cmp	lr, #0	@ D.41569,
	and	r3, r3, r2	@ equal, equal, D.41567
	bne	.L1806	@,
	ldrb	ip, [r0, #19]	@ zero_extendqisi2	@ pSPS1_16(D)->mb_adaptive_frame_field_flag, pSPS1_16(D)->mb_adaptive_frame_field_flag
	ldrb	r2, [r1, #19]	@ zero_extendqisi2	@ pSPS2_17(D)->mb_adaptive_frame_field_flag, pSPS2_17(D)->mb_adaptive_frame_field_flag
	cmp	ip, r2	@ pSPS1_16(D)->mb_adaptive_frame_field_flag, pSPS2_17(D)->mb_adaptive_frame_field_flag
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
.L1806:
	ldrb	r2, [r1, #20]	@ zero_extendqisi2	@ pSPS2_17(D)->direct_8x8_inference_flag, pSPS2_17(D)->direct_8x8_inference_flag
	ldrb	lr, [r0, #21]	@ zero_extendqisi2	@ D.41569, pSPS1_16(D)->frame_cropping_flag
	ldrb	ip, [r1, #21]	@ zero_extendqisi2	@ pSPS2_17(D)->frame_cropping_flag, pSPS2_17(D)->frame_cropping_flag
	ldrb	r4, [r0, #20]	@ zero_extendqisi2	@ pSPS1_16(D)->direct_8x8_inference_flag, pSPS1_16(D)->direct_8x8_inference_flag
	cmp	ip, lr	@ pSPS2_17(D)->frame_cropping_flag, D.41569
	cmpeq	r4, r2	@, pSPS1_16(D)->direct_8x8_inference_flag, pSPS2_17(D)->direct_8x8_inference_flag
	moveq	r2, #1	@ D.41567,
	movne	r2, #0	@ D.41567,
	cmp	lr, #0	@ D.41569,
	and	r3, r3, r2	@ equal, equal, D.41567
	beq	.L1807	@,
	ldr	lr, [r1, #3968]	@ pSPS2_17(D)->frame_crop_right_offset, pSPS2_17(D)->frame_crop_right_offset
	ldr	r4, [r0, #3968]	@ pSPS1_16(D)->frame_crop_right_offset, pSPS1_16(D)->frame_crop_right_offset
	ldr	ip, [r0, #3964]	@ pSPS1_16(D)->frame_crop_left_offset, pSPS1_16(D)->frame_crop_left_offset
	ldr	r5, [r1, #3964]	@ pSPS2_17(D)->frame_crop_left_offset, pSPS2_17(D)->frame_crop_left_offset
	ldr	r2, [r1, #3972]	@ pSPS2_17(D)->frame_crop_top_offset, pSPS2_17(D)->frame_crop_top_offset
	cmp	r4, lr	@ pSPS1_16(D)->frame_crop_right_offset, pSPS2_17(D)->frame_crop_right_offset
	cmpeq	ip, r5	@, pSPS1_16(D)->frame_crop_left_offset, pSPS2_17(D)->frame_crop_left_offset
	ldr	r6, [r0, #3972]	@ pSPS1_16(D)->frame_crop_top_offset, pSPS1_16(D)->frame_crop_top_offset
	ldr	r5, [r0, #3976]	@ pSPS1_16(D)->frame_crop_bottom_offset, pSPS1_16(D)->frame_crop_bottom_offset
	ldr	r4, [r1, #3976]	@ pSPS2_17(D)->frame_crop_bottom_offset, pSPS2_17(D)->frame_crop_bottom_offset
	moveq	lr, #1	@ tmp426,
	movne	lr, #0	@ tmp426,
	cmp	r6, r2	@ pSPS1_16(D)->frame_crop_top_offset, pSPS2_17(D)->frame_crop_top_offset
	movne	ip, #0	@, tmp432
	andeq	ip, lr, #1	@,, tmp432, tmp426
	cmp	r5, r4	@ pSPS1_16(D)->frame_crop_bottom_offset, pSPS2_17(D)->frame_crop_bottom_offset
	movne	r2, #0	@, D.41567
	andeq	r2, ip, #1	@,, D.41567, tmp432
	and	r3, r3, r2	@ equal, equal, D.41567
.L1807:
	ldrb	r0, [r0, #22]	@ zero_extendqisi2	@ pSPS1_16(D)->vui_parameters_present_flag, pSPS1_16(D)->vui_parameters_present_flag
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ pSPS2_17(D)->vui_parameters_present_flag, pSPS2_17(D)->vui_parameters_present_flag
	cmp	r0, r2	@ pSPS1_16(D)->vui_parameters_present_flag, pSPS2_17(D)->vui_parameters_present_flag
	movne	r0, #0	@, equal
	andeq	r0, r3, #1	@,, equal, equal
	eor	r0, r0, #1	@ D.41566, equal,
	rsb	r0, r0, #0	@ D.41567, D.41566
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1798:
	sub	r2, r7, #396	@ ivtmp.2377, ivtmp.2416,
	sub	fp, r7, #140	@ D.41576, ivtmp.2416,
	mov	ip, r8	@ ivtmp.2386, ivtmp.2417
.L1800:
	ldr	r4, [r2, #4]!	@ MEM[base: _212, offset: 0B], MEM[base: _212, offset: 0B]
	ldr	lr, [ip, #4]!	@ MEM[base: _210, offset: 0B], MEM[base: _210, offset: 0B]
	cmp	r4, lr	@ MEM[base: _212, offset: 0B], MEM[base: _210, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, fp	@ ivtmp.2377, D.41576
	bne	.L1800	@,
	b	.L1797	@
.L1803:
	ldr	ip, [r0, #2912]	@ pSPS1_16(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS1_16(D)->log2_max_pic_order_cnt_lsb_minus4
	ldr	r2, [r1, #2912]	@ pSPS2_17(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS2_17(D)->log2_max_pic_order_cnt_lsb_minus4
	cmp	ip, r2	@ pSPS1_16(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS2_17(D)->log2_max_pic_order_cnt_lsb_minus4
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	b	.L1802	@
.L1808:
	mvn	r0, #0	@ D.41567,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
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
	cmp	r0, #0	@ ar_idc
	bxeq	lr	@
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	lr, r0, #255	@ D.41588, ar_idc,
	.pad #8
	sub	sp, sp, #8	@,,
	movne	lr, #1	@ D.41588,
	cmp	r0, #16	@ ar_idc,
	movle	r4, #0	@, tmp141
	andgt	r4, lr, #1	@,, tmp141, D.41588
	cmp	r4, #0	@ tmp141,
	movne	r0, #0	@ final_dar,
	bne	.L1847	@,
	cmp	r2, #0	@ sar_height,
	cmpne	r1, #0	@, sar_width,
	mov	ip, r1	@ sar_width, sar_width
	moveq	r1, #1	@ tmp148,
	movne	r1, #0	@ tmp148,
	cmp	r0, #255	@ ar_idc,
	movne	r1, #0	@, tmp152
	andeq	r1, r1, #1	@,, tmp152, tmp148
	cmp	r1, #0	@ tmp152,
	movne	r0, r4	@ final_dar, tmp141
	bne	.L1847	@,
	cmp	r0, #1	@ ar_idc,
	moveq	r0, #5	@ final_dar,
	beq	.L1847	@,
	cmp	lr, #0	@ D.41588,
	str	r3, [sp, #4]	@ img_width, %sfp
	ldrne	r2, .L1855	@ tmp153,
	addne	r0, r2, r0, lsl #3	@ tmp154, tmp153, ar_idc,
	ldrne	r2, [r0, #84]	@ sar_height, SarTable
	ldrne	ip, [r0, #80]	@ sar_width, SarTable
	mov	r1, r2	@, sar_height
	mov	r0, ip, asl #10	@, sar_width,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@ img_width, %sfp
	ldr	r1, [sp, #16]	@, img_height
	mov	r4, r0	@ D.41589,
	mov	r0, r3, asl #10	@, img_width,
	bl	__aeabi_idiv	@
	mul	r0, r0, r4	@ D.41589,, D.41589
	add	r2, r0, #1020	@ tmp172, D.41589,
	cmp	r0, #0	@ D.41589,
	add	r2, r2, #3	@ tmp172, tmp172,
	movlt	r0, r2	@ D.41589, tmp172
	mov	r2, r0, asr #10	@ dar, D.41589,
	sub	r3, r2, #2400	@ D.41589, dar,
	sub	r1, r2, #2256	@ D.41589, dar,
	sub	r3, r3, #6	@ D.41589, D.41589,
	sub	r1, r1, #7	@ D.41589, D.41589,
	cmp	r3, #0	@ D.41589,
	rsblt	r3, r2, #2400	@ D.41589, dar,
	addlt	r3, r3, #6	@ D.41589, D.41589,
	cmp	r1, #0	@ D.41589,
	rsblt	r1, r2, #2256	@ D.41589, dar,
	addlt	r1, r1, #7	@ D.41589, D.41589,
	cmp	r1, r3	@ D.41589, D.41589
	movgt	r0, #4	@ final_dar,
	bgt	.L1847	@,
	sub	r3, r2, #1808	@ D.41589, dar,
	sub	r3, r3, #12	@ D.41589, D.41589,
	cmp	r3, #0	@ D.41589,
	rsblt	r3, r2, #1808	@ D.41589, dar,
	addlt	r3, r3, #12	@ D.41589, D.41589,
	cmp	r3, r1	@ D.41589, D.41589
	movgt	r0, #3	@ final_dar,
	ble	.L1854	@,
.L1847:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1854:
	sub	r0, r2, #1360	@ D.41589, dar,
	sub	r0, r0, #5	@ D.41589, D.41589,
	cmp	r0, #0	@ D.41589,
	rsblt	r0, r2, #1360	@ D.41589, dar,
	addlt	r0, r0, #5	@ D.41589, D.41589,
	cmp	r3, r0	@ D.41589, D.41589
	movlt	r0, #2	@ final_dar,
	movge	r0, #1	@ final_dar,
	b	.L1847	@
.L1856:
	.align	2
.L1855:
	.word	.LANCHOR1
	.fnend
	.size	H264GetDar, .-H264GetDar
	.align	2
	.global	ProcessSPS
	.type	ProcessSPS, %function
ProcessSPS:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pSPS
	beq	.L1949	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r1, #736]	@ D.41664, pSPS_29(D)->profile_idc
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r4, r1	@ pSPS, pSPS
	cmp	r2, #100	@ D.41664,
	cmpne	r2, #110	@, D.41664,
	moveq	r3, #1	@ tmp364,
	movne	r3, #0	@ tmp364,
	cmp	r2, #122	@ D.41664,
	orreq	r3, r3, #1	@,, tmp368, tmp364
	cmp	r2, #144	@ D.41664,
	orreq	r3, r3, #1	@,, tmp374, tmp368
	cmp	r3, #0	@ tmp374,
	streqb	r3, [r1, #25]	@ tmp374, pSPS_29(D)->seq_scaling_matrix_present_flag
	moveq	r3, #1	@ tmp431,
	streq	r3, [r1, #748]	@ tmp431, pSPS_29(D)->chroma_format_idc
	bne	.L1951	@,
.L1863:
	ldr	r1, .L1962	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #12	@ D.41664,
	str	r0, [r4, #2904]	@ D.41664, pSPS_29(D)->log2_max_frame_num_minus4
	bhi	.L1948	@,
	add	r6, r5, #49152	@ tmp612, pH264Ctx,
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	ldr	r1, .L1962+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.41664,
	mov	r1, r0	@ D.41664,
	str	r0, [r4, #2908]	@ D.41664, pSPS_29(D)->pic_order_cnt_type
	bhi	.L1948	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	cmp	r0, #0	@ D.41664,
	beq	.L1952	@,
	cmp	r0, #1	@ D.41664,
	beq	.L1953	@,
.L1878:
	ldr	r1, .L1962+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #3952]	@, pSPS_29(D)->num_ref_frames
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	add	r8, r5, #13504	@ D.41668, pH264Ctx,
	mov	r1, #1	@,
	add	r8, r8, #24	@ D.41668, D.41668,
	mov	r0, r8	@, D.41668
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _313->nal_bitoffset, _313->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _313->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _313->nal_bitoffset
	strb	r0, [r4, #17]	@, pSPS_29(D)->gaps_in_frame_num_value_allowed_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	ldr	r1, .L1962+12	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r9, #509	@ tmp485,
	sub	r3, r0, #1	@ D.41664, D.41664,
	str	r0, [r4, #3956]	@ D.41664, pSPS_29(D)->pic_width_in_mbs_minus1
	cmp	r3, r9	@ D.41664, tmp485
	bhi	.L1948	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	ldr	r1, .L1962+16	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #3960]	@, pSPS_29(D)->pic_height_in_map_units_minus1
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	mov	r1, #1	@,
	mov	r0, r8	@, D.41668
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _318->nal_bitoffset, _318->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _318->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _318->nal_bitoffset
	uxtb	r0, r0	@ D.41666,
	strb	r0, [r4, #18]	@ D.41666, pSPS_29(D)->frame_mbs_only_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	cmp	r0, #0	@ D.41666,
	beq	.L1880	@,
	ldr	r7, [r4, #3960]	@ D.41664, pSPS_29(D)->pic_height_in_map_units_minus1
	strb	r3, [r4, #19]	@ pH264Ctx_37(D)->SeErrFlg, pSPS_29(D)->mb_adaptive_frame_field_flag
	sub	r3, r7, #1	@ D.41664, D.41664,
	cmp	r3, r9	@ D.41664, tmp485
	bhi	.L1948	@,
	ldr	r10, [r4, #3956]	@ pSPS_29(D)->pic_width_in_mbs_minus1, pSPS_29(D)->pic_width_in_mbs_minus1
	mov	fp, #1	@ temp,
	add	r7, r7, #1	@ D.41664, D.41664,
	add	r10, r10, fp	@ D.41664, pSPS_29(D)->pic_width_in_mbs_minus1,
.L1911:
	mul	r7, r7, fp	@ D.41664, D.41664, temp
	mov	r10, r10, asl #4	@ PicWidthInSmp, D.41664,
	mov	r7, r7, asl #4	@ PicHeightInSmp, D.41664,
	mul	r1, r10, r7	@ D.41664, PicWidthInSmp, PicHeightInSmp
	add	r1, r1, r1, lsr #1	@ pic_size, D.41664, D.41664,
	cmp	r1, #100663296	@ pic_size,
	bhi	.L1948	@,
	ldr	r3, [r4, #740]	@ pSPS_29(D)->level_idc, pSPS_29(D)->level_idc
	sub	r3, r3, #10	@ tmp514, pSPS_29(D)->level_idc,
	cmp	r3, #31	@ tmp514,
	ldrls	pc, [pc, r3, asl #2]	@ tmp514
	b	.L1948	@
.L1883:
	.word	.L1917
	.word	.L1884
	.word	.L1887
	.word	.L1887
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1887
	.word	.L1888
	.word	.L1890
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1890
	.word	.L1891
	.word	.L1892
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1948
	.word	.L1894
	.word	.L1894
.L1908:
	cmp	r0, r10	@ MaxWidth, PicWidthInSmp
	cmpcs	r3, r7	@, MaxHeight, PicHeightInSmp
	bcs	.L1907	@,
	ldr	r2, .L1962+20	@ tmp596,
	ldr	ip, [r2]	@ D.41676, g_event_report
	cmp	ip, #0	@ D.41676,
	beq	.L1948	@,
	strh	r0, [sp, #20]	@ movhi	@ MaxWidth, para
	add	r2, sp, #16	@,,
	strh	r10, [sp, #16]	@ movhi	@ PicWidthInSmp, para
	mov	r1, #107	@,
	strh	r7, [sp, #18]	@ movhi	@ PicHeightInSmp, para
	strh	r3, [sp, #22]	@ movhi	@ MaxHeight, para
	ldr	r0, [r6, #3688]	@, pH264Ctx_37(D)->ChanID
	blx	ip	@ D.41676
.L1948:
	mvn	r0, #0	@ D.41660,
.L1939:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1951:
	ldr	r1, .L1962+24	@,
	bl	ue_v	@
	cmp	r0, #1	@ D.41664,
	str	r0, [r4, #748]	@ D.41664, pSPS_29(D)->chroma_format_idc
	bhi	.L1948	@,
	add	r6, r5, #49152	@ tmp377, pH264Ctx,
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	ldr	r1, .L1962+28	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1962+32	@,
	add	r7, r5, #13504	@ D.41668, pH264Ctx,
	add	r7, r7, #24	@ D.41668, D.41668,
	str	r0, [r4, #752]	@, pSPS_29(D)->bit_depth_luma_minus8
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	mov	r1, #1	@,
	str	r0, [r4, #756]	@, pSPS_29(D)->bit_depth_chroma_minus8
	mov	r0, r7	@, D.41668
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _288->nal_bitoffset, _288->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _288->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _288->nal_bitoffset
	cmp	r0, #0	@,
	bne	.L1948	@,
	ldr	r6, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r6, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	mov	r1, #1	@,
	mov	r0, r7	@, D.41668
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _293->nal_bitoffset, _293->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _293->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _293->nal_bitoffset
	uxtb	r0, r0	@ D.41666,
	strb	r0, [r4, #25]	@ D.41666, pSPS_29(D)->seq_scaling_matrix_present_flag
	cmp	r0, #1	@ D.41666,
	bne	.L1863	@,
	add	r8, r4, #2672	@ ivtmp.2485, pSPS,
	add	r9, sp, #20	@ ivtmp.2472,,
	add	r8, r8, #8	@ ivtmp.2485, ivtmp.2485,
	add	fp, r4, #3	@ ivtmp.2478, pSPS,
	add	r10, r4, #760	@ ivtmp.2489, pSPS,
	b	.L1869	@
.L1956:
	ldr	r3, .L1962+36	@ tmp653,
	cmp	r1, #0	@ D.41665,
	add	ip, r3, #16	@ tmp654,,
	moveq	r3, ip	@ tmp653, tmp654
	mov	r1, r3	@, tmp653
	bl	memcpy	@
.L1865:
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #16	@ ivtmp.2485, ivtmp.2485,
	cmp	r6, #6	@ i,
	add	r10, r10, #64	@ ivtmp.2489, ivtmp.2489,
	beq	.L1954	@,
.L1869:
	mov	r1, #1	@,
	mov	r0, r7	@, D.41668
	bl	BsGet	@
	ldr	lr, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	clz	r1, r6	@ D.41665, i
	mov	r2, #16	@,
	ldr	ip, [lr, #64]	@ _298->nal_bitoffset, _298->nal_bitoffset
	mov	r1, r1, lsr #5	@ D.41665, D.41665,
	add	ip, ip, #1	@ D.41664, _298->nal_bitoffset,
	str	ip, [lr, #64]	@ D.41664, _298->nal_bitoffset
	cmp	r0, #1	@ D.41671,
	mov	r3, r0	@ D.41671,
	mov	r0, r8	@, ivtmp.2485
	str	r3, [r9, #4]!	@ D.41671, MEM[base: _3, offset: 0B]
	strb	r3, [fp, #1]!	@ D.41671, MEM[base: _2, offset: 0B]
	beq	.L1955	@,
	cmp	r6, #0	@ i,
	cmpne	r6, #3	@, i,
	beq	.L1956	@,
	mov	r2, #16	@,
	sub	r1, r8, #16	@, ivtmp.2485,
	mov	r0, r8	@, ivtmp.2485
	bl	memcpy	@
	b	.L1865	@
.L1952:
	ldr	r1, .L1962+40	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #12	@ D.41664,
	str	r0, [r4, #2912]	@ D.41664, pSPS_29(D)->log2_max_pic_order_cnt_lsb_minus4
	bhi	.L1948	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	beq	.L1878	@,
	b	.L1948	@
.L1880:
	mov	r1, #1	@,
	mov	r0, r8	@, D.41668
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _323->nal_bitoffset, _323->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _323->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _323->nal_bitoffset
	ldr	r7, [r4, #3960]	@ pSPS_29(D)->pic_height_in_map_units_minus1, pSPS_29(D)->pic_height_in_map_units_minus1
	add	r7, r7, #1	@ D.41664, pSPS_29(D)->pic_height_in_map_units_minus1,
	cmp	r7, #255	@ D.41664,
	strb	r0, [r4, #19]	@, pSPS_29(D)->mb_adaptive_frame_field_flag
	bhi	.L1948	@,
	ldr	r10, [r4, #3956]	@ pSPS_29(D)->pic_width_in_mbs_minus1, pSPS_29(D)->pic_width_in_mbs_minus1
	add	r10, r10, #1	@ D.41664, pSPS_29(D)->pic_width_in_mbs_minus1,
	cmp	r7, #1	@ D.41664,
	cmphi	r10, #3	@, D.41664,
	bls	.L1948	@,
	mov	fp, #2	@ temp,
	b	.L1911	@
.L1887:
	mov	r0, #60416	@ size,
	movt	r0, 13	@ size,
.L1882:
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #3952]	@ D.41664, pSPS_29(D)->num_ref_frames
	cmp	r0, #16	@,
	movcc	r9, r0	@ size,
	movcs	r9, #16	@ size,
	cmp	r3, r9	@ D.41664, size
	bhi	.L1895	@,
	ldr	r2, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r2, #0	@ pH264Ctx_37(D)->SeErrFlg,
	beq	.L1896	@,
.L1895:
	cmp	r3, #16	@ D.41664,
	bhi	.L1945	@,
	cmp	r9, r3	@ size, D.41664
	movcc	r9, r3	@ size, D.41664
.L1945:
	str	r9, [r4, #3952]	@ size, pSPS_29(D)->num_ref_frames
.L1896:
	mov	r1, #1	@,
	mov	r0, r8	@, D.41668
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _328->nal_bitoffset, _328->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _328->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _328->nal_bitoffset
	strb	r0, [r4, #20]	@, pSPS_29(D)->direct_8x8_inference_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	mov	r1, #1	@,
	mov	r0, r8	@, D.41668
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _333->nal_bitoffset, _333->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _333->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _333->nal_bitoffset
	uxtb	r0, r0	@ D.41666,
	strb	r0, [r4, #21]	@ D.41666, pSPS_29(D)->frame_cropping_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	cmp	r0, #0	@ D.41666,
	bne	.L1957	@,
.L1898:
	mov	r2, r10, lsr #1	@ D.41664, PicWidthInSmp,
	mov	r3, r7, lsr #1	@ D.41664, PicHeightInSmp,
	str	r10, [r4, #3984]	@ PicWidthInSmp, pSPS_29(D)->disp_width
	str	r7, [r4, #3988]	@ PicHeightInSmp, pSPS_29(D)->disp_height
	str	r2, [r4, #3992]	@ D.41664, pSPS_29(D)->disp_center_x
	str	r3, [r4, #3996]	@ D.41664, pSPS_29(D)->disp_center_y
.L1900:
	mov	r0, r8	@, D.41668
	mov	r1, #1	@,
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _338->nal_bitoffset, _338->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _338->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _338->nal_bitoffset
	uxtb	r3, r0	@ D.41666,
	strb	r3, [r4, #22]	@ D.41666, pSPS_29(D)->vui_parameters_present_flag
	ldr	r2, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r2, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	cmp	r3, #0	@ D.41666,
	mov	r2, #2	@ tmp567,
	str	r2, [r4, #68]	@ tmp567, pSPS_29(D)->vui_seq_parameters.matrix_coefficients
	bne	.L1958	@,
	ldr	r8, [r4, #3952]	@ D.41680, pSPS_29(D)->num_ref_frames
	mov	r0, r3	@ D.41671, D.41666
	strb	r3, [r4, #43]	@ D.41666, pSPS_29(D)->vui_seq_parameters.aspect_ratio_idc
	mov	r3, #5	@ tmp579,
	str	r3, [r4, #56]	@ tmp579, pSPS_29(D)->vui_seq_parameters.video_format
.L1903:
	ldr	r2, [r4, #48]	@ pSPS_29(D)->vui_seq_parameters.sar_height, pSPS_29(D)->vui_seq_parameters.sar_height
	mov	r3, r10	@, PicWidthInSmp
	ldr	r1, [r4, #44]	@ pSPS_29(D)->vui_seq_parameters.sar_width, pSPS_29(D)->vui_seq_parameters.sar_width
	str	r7, [sp]	@ PicHeightInSmp,
	bl	H264GetDar	@
	cmp	r8, #0	@ D.41680,
	str	r0, [r4, #52]	@, pSPS_29(D)->vui_seq_parameters.aspect_ratio
	beq	.L1906	@,
	cmp	r9, r8	@ size, D.41680
	movcs	r9, r8	@ size, D.41680
.L1906:
	ldr	r3, [r5]	@ D.41674, pH264Ctx_37(D)->pstExtraData
	cmp	r9, #16	@ size,
	movcs	r9, #16	@ size,
	ldr	r2, [r3, #32]	@ _249->eCapLevel, _249->eCapLevel
	cmp	r2, #25	@ _249->eCapLevel,
	beq	.L1959	@,
.L1907:
	cmp	r7, #1920	@ PicHeightInSmp,
	bcc	.L1909	@,
	cmp	r9, #6	@ size,
	movcs	r9, #6	@ size,
.L1909:
	add	r9, r9, #1	@ D.41664, size,
	mov	r0, #0	@ D.41660,
	str	r9, [r4, #3980]	@ D.41664, pSPS_29(D)->dpb_size_plus1
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1954:
	add	r6, r4, #2768	@ ivtmp.2460, pSPS,
	add	r8, r4, #1136	@ ivtmp.2463, pSPS,
	add	r6, r6, #8	@ ivtmp.2460, ivtmp.2460,
	add	r8, r8, #8	@ ivtmp.2463, ivtmp.2463,
	add	r9, sp, #4	@ ivtmp.2447,,
	add	r10, r4, #9	@ ivtmp.2453, pSPS,
	mov	fp, #0	@ i,
.L1874:
	mov	r1, #1	@,
	mov	r0, r7	@, D.41668
	bl	BsGet	@
	ldr	ip, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	mov	r2, #64	@,
	ldr	r1, [ip, #64]	@ _303->nal_bitoffset, _303->nal_bitoffset
	add	r1, r1, #1	@ D.41664, _303->nal_bitoffset,
	str	r1, [ip, #64]	@ D.41664, _303->nal_bitoffset
	mov	r3, r0	@ D.41671,
	cmp	r3, #1	@ D.41671,
	mov	r0, r6	@, ivtmp.2460
	str	r3, [r9, #4]!	@ D.41671, MEM[base: _371, offset: 0B]
	strb	r3, [r10, #1]!	@ D.41671, MEM[base: _370, offset: 0B]
	beq	.L1960	@,
	ldr	r1, .L1962+44	@ tmp657,
	cmp	fp, #0	@ i,
	add	r3, r1, #64	@ tmp658,,
	movne	r1, r3	@ tmp657, tmp658
	bl	memcpy	@
.L1871:
	add	fp, fp, #1	@ i, i,
	add	r6, r6, #64	@ ivtmp.2460, ivtmp.2460,
	cmp	fp, #2	@ i,
	add	r8, r8, #256	@ ivtmp.2463, ivtmp.2463,
	bne	.L1874	@,
	b	.L1863	@
.L1955:
	mov	r3, r2	@,
	str	r9, [sp]	@ ivtmp.2472,
	mov	r2, r8	@, ivtmp.2485
	mov	r1, r10	@, ivtmp.2489
	mov	r0, r5	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [r9]	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	r3, #1	@ MEM[base: _3, offset: 0B],
	bne	.L1865	@,
	ldr	r1, .L1962+36	@ tmp651,
	mov	r2, #16	@,
	cmp	r6, #2	@ i,
	mov	r0, r8	@, ivtmp.2485
	add	r3, r1, r2	@ tmp652,,
	movhi	r1, r3	@ tmp651, tmp652
	bl	memcpy	@
	b	.L1865	@
.L1957:
	ldr	r1, .L1962+48	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1962+52	@,
	str	r0, [r4, #3964]	@, pSPS_29(D)->frame_crop_left_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1962+56	@,
	str	r0, [r4, #3968]	@, pSPS_29(D)->frame_crop_right_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1962+60	@,
	str	r0, [r4, #3972]	@, pSPS_29(D)->frame_crop_top_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, [r4, #3972]	@ pSPS_29(D)->frame_crop_top_offset, pSPS_29(D)->frame_crop_top_offset
	ldr	r1, [r4, #3964]	@ pSPS_29(D)->frame_crop_left_offset, pSPS_29(D)->frame_crop_left_offset
	mov	ip, fp, asl #1	@ D.41664, temp,
	ldr	r3, [r4, #3968]	@ pSPS_29(D)->frame_crop_right_offset, pSPS_29(D)->frame_crop_right_offset
	mov	r2, r2, asl #1	@ D.41664, pSPS_29(D)->frame_crop_top_offset,
	mov	r1, r1, asl #1	@ D.41664, pSPS_29(D)->frame_crop_left_offset,
	mul	fp, fp, r2	@ D.41664, temp, D.41664
	rsb	r2, r1, r10	@ D.41664, D.41664, PicWidthInSmp
	sub	r3, r2, r3, asl #1	@ D.41664, D.41664, pSPS_29(D)->frame_crop_right_offset,
	rsb	r2, fp, r7	@ D.41664, D.41664, PicHeightInSmp
	str	r0, [r4, #3976]	@ D.41664, pSPS_29(D)->frame_crop_bottom_offset
	mls	r0, r0, ip, r2	@ D.41664, D.41664, D.41664, D.41664
	cmp	r3, #0	@ D.41664,
	cmpgt	r0, #0	@, D.41664,
	ble	.L1898	@,
	add	r1, r1, r3, lsr #1	@ D.41664, D.41664, D.41664,
	add	fp, fp, r0, lsr #1	@ D.41664, D.41664, D.41664,
	str	r1, [r4, #3992]	@ D.41664, pSPS_29(D)->disp_center_x
	str	fp, [r4, #3996]	@ D.41664, pSPS_29(D)->disp_center_y
	str	r3, [r4, #3984]	@ D.41664, pSPS_29(D)->disp_width
	str	r0, [r4, #3988]	@ D.41664, pSPS_29(D)->disp_height
	b	.L1900	@
.L1958:
	add	r1, r4, #28	@, pSPS,
	mov	r0, r5	@, pH264Ctx
	bl	vui_parameters	@
	cmp	r0, #0	@,
	bne	.L1947	@,
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ pSPS_29(D)->vui_seq_parameters.bitstream_restriction_flag, pSPS_29(D)->vui_seq_parameters.bitstream_restriction_flag
	cmp	r3, #0	@ pSPS_29(D)->vui_seq_parameters.bitstream_restriction_flag,
	beq	.L1947	@,
	ldr	r2, [r4, #732]	@ D.41664, pSPS_29(D)->vui_seq_parameters.max_dec_frame_buffering
	clz	r3, r2	@ tmp573, D.41664
	mov	r3, r3, lsr #5	@ tmp573, tmp573,
	cmp	r9, r2	@ size, D.41664
	orrcc	r3, r3, #1	@,, tmp576, tmp573
	cmp	r3, #0	@ tmp576,
	bne	.L1947	@,
	ldr	r8, [r4, #3952]	@ D.41680, pSPS_29(D)->num_ref_frames
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ D.41671, pSPS_29(D)->vui_seq_parameters.aspect_ratio_idc
	cmp	r8, r2	@ D.41680, D.41664
	movcs	r9, r8	@ size, D.41680
	movcc	r9, r2	@ size, D.41664
	b	.L1903	@
.L1947:
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ D.41671, pSPS_29(D)->vui_seq_parameters.aspect_ratio_idc
	ldr	r8, [r4, #3952]	@ D.41680, pSPS_29(D)->num_ref_frames
	b	.L1903	@
.L1959:
	ldr	r2, [r3, #608]	@ _249->stChanOption.s32ReRangeEn, _249->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _249->stChanOption.s32ReRangeEn,
	bne	.L1907	@,
	ldr	r1, [r3, #588]	@ D.41664, _249->stChanOption.s32MaxRefFrameNum
	ldr	r0, [r3, #568]	@ MaxWidth, _249->stChanOption.s32MaxWidth
	cmp	r9, r1	@ size, D.41664
	ldr	r3, [r3, #572]	@ MaxHeight, _249->stChanOption.s32MaxHeight
	bls	.L1908	@,
	ldr	r3, .L1962+20	@ tmp584,
	ldr	r3, [r3]	@ D.41676, g_event_report
	cmp	r3, #0	@ D.41676,
	beq	.L1948	@,
	str	r1, [sp, #20]	@ D.41664, para
	add	r2, sp, #16	@,,
	str	r9, [sp, #16]	@ size, para
	mov	r1, #106	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_37(D)->ChanID
	blx	r3	@ D.41676
	mvn	r0, #0	@ D.41660,
	b	.L1939	@
.L1953:
	add	r0, r5, #13504	@, pH264Ctx,
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41679, pH264Ctx_37(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _308->nal_bitoffset, _308->nal_bitoffset
	add	r3, r3, #1	@ D.41664, _308->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41664, _308->nal_bitoffset
	strb	r0, [r4, #16]	@, pSPS_29(D)->delta_pic_order_always_zero_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	ldr	r1, .L1962+64	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #2916]	@, pSPS_29(D)->offset_for_non_ref_pic
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	ldr	r1, .L1962+68	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #2920]	@, pSPS_29(D)->offset_for_top_to_bottom_field
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	ldr	r1, .L1962+72	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #255	@ D.41664,
	str	r0, [r4, #2924]	@ D.41664, pSPS_29(D)->num_ref_frames_in_pic_order_cnt_cycle
	bhi	.L1948	@,
	ldr	r7, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r7, #0	@ pH264Ctx_37(D)->SeErrFlg,
	bne	.L1948	@,
	cmp	r0, #0	@ D.41664,
	beq	.L1878	@,
	add	r8, r4, #2912	@ ivtmp.2433, pSPS,
	add	r8, r8, #12	@ ivtmp.2433, ivtmp.2433,
	b	.L1879	@
.L1961:
	ldr	r3, [r4, #2924]	@ pSPS_29(D)->num_ref_frames_in_pic_order_cnt_cycle, pSPS_29(D)->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, r7	@ pSPS_29(D)->num_ref_frames_in_pic_order_cnt_cycle, i
	bls	.L1878	@,
.L1879:
	ldr	r1, .L1962+76	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	add	r7, r7, #1	@ i, i,
	str	r0, [r8, #4]!	@, MEM[base: _235, offset: 0B]
	ldr	r3, [r6, #3628]	@ pH264Ctx_37(D)->SeErrFlg, pH264Ctx_37(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_37(D)->SeErrFlg,
	beq	.L1961	@,
	b	.L1948	@
.L1890:
	mov	r0, #30208	@ size,
	movt	r0, 47	@ size,
	b	.L1882	@
.L1894:
	mov	r0, #12582912	@ size,
	b	.L1882	@
.L1917:
	mov	r0, #20992	@ size,
	movt	r0, 2	@ size,
	b	.L1882	@
.L1891:
	mov	r0, #30720	@ size,
	movt	r0, 105	@ size,
	b	.L1882	@
.L1884:
	mov	r0, #17920	@ size,
	movt	r0, 5	@ size,
	b	.L1882	@
.L1888:
	mov	r0, #55296	@ size,
	movt	r0, 27	@ size,
	b	.L1882	@
.L1892:
	mov	r0, #7864320	@ size,
	b	.L1882	@
.L1960:
	mov	r3, r2	@,
	str	r9, [sp]	@ ivtmp.2447,
	mov	r2, r6	@, ivtmp.2460
	mov	r1, r8	@, ivtmp.2463
	mov	r0, r5	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [r9]	@ MEM[base: _371, offset: 0B], MEM[base: _371, offset: 0B]
	cmp	r3, #1	@ MEM[base: _371, offset: 0B],
	bne	.L1871	@,
	ldr	r1, .L1962+44	@ tmp655,
	mov	r2, #64	@,
	cmp	fp, #0	@ i,
	mov	r0, r6	@, ivtmp.2460
	add	r3, r1, r2	@ tmp656,,
	movne	r1, r3	@ tmp655, tmp656
	bl	memcpy	@
	b	.L1871	@
.L1949:
	mvn	r0, #0	@ D.41660,
	bx	lr	@
.L1963:
	.align	2
.L1962:
	.word	.LC60
	.word	.LC61
	.word	.LC63
	.word	.LC68
	.word	.LC69
	.word	g_event_report
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LANCHOR0+80
	.word	.LC62
	.word	.LANCHOR0+112
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.fnend
	.size	ProcessSPS, .-ProcessSPS
	.align	2
	.global	H264_DecSPS
	.type	H264_DecSPS, %function
H264_DecSPS:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #13504	@ D.41726, pH264Ctx,
	add	r5, r5, #24	@ D.41726, D.41726,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r1, #8	@,
	mov	r0, r5	@, D.41726
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41727, pH264Ctx_7(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _88->nal_bitoffset, _88->nal_bitoffset
	add	r3, r3, #8	@ D.41721, _88->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41721, _88->nal_bitoffset
	mov	r6, r0	@ INFO,
	mov	r0, r5	@, D.41726
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41727, pH264Ctx_7(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _93->nal_bitoffset, _93->nal_bitoffset
	add	r3, r3, r1	@ D.41721, _93->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41721, _93->nal_bitoffset
	mov	fp, r0	@ D.41722,
	mov	r0, r5	@, D.41726
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41727, pH264Ctx_7(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _98->nal_bitoffset, _98->nal_bitoffset
	add	r3, r3, r1	@ D.41721, _98->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41721, _98->nal_bitoffset
	mov	r10, r0	@ D.41722,
	mov	r0, r5	@, D.41726
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41727, pH264Ctx_7(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _103->nal_bitoffset, _103->nal_bitoffset
	add	r3, r3, r1	@ D.41721, _103->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41721, _103->nal_bitoffset
	mov	r9, r0	@ D.41722,
	mov	r0, r5	@, D.41726
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41727, pH264Ctx_7(D)->pCurrNal
	mov	r1, #4	@,
	ldr	r3, [r2, #64]	@ _108->nal_bitoffset, _108->nal_bitoffset
	add	r3, r3, #1	@ D.41721, _108->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41721, _108->nal_bitoffset
	mov	r8, r0	@ D.41722,
	mov	r0, r5	@, D.41726
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41727, pH264Ctx_7(D)->pCurrNal
	mov	r1, #8	@,
	mov	r0, r5	@, D.41726
	ldr	r3, [r2, #64]	@ _111->nal_bitoffset, _111->nal_bitoffset
	add	r3, r3, #4	@ D.41721, _111->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41721, _111->nal_bitoffset
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.41727, pH264Ctx_7(D)->pCurrNal
	ldr	r1, .L2007	@,
	ldr	r3, [r2, #64]	@ _115->nal_bitoffset, _115->nal_bitoffset
	add	r3, r3, #8	@ D.41721, _115->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41721, _115->nal_bitoffset
	mov	r7, r0	@ INFO,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r3, r0	@ seq_parameter_set_id,
	add	r0, r4, #49152	@ tmp206, pH264Ctx,
	ldr	r2, [r0, #3628]	@ pH264Ctx_7(D)->SeErrFlg, pH264Ctx_7(D)->SeErrFlg
	cmp	r2, #0	@ pH264Ctx_7(D)->SeErrFlg,
	bne	.L2004	@,
	add	r5, r4, #12288	@ tmp303, pH264Ctx,
	ldr	r1, [r5, #1284]	@ D.41722, pH264Ctx_7(D)->MaxSpsNum
	sub	r2, r1, #1	@ D.41722, D.41722,
	cmp	r3, r2	@ seq_parameter_set_id, D.41722
	bhi	.L2005	@,
	cmp	r6, #100	@ profile_idc,
	beq	.L1970	@,
	bhi	.L1971	@,
	cmp	r6, #77	@ profile_idc,
	beq	.L1970	@,
	cmp	r6, #88	@ profile_idc,
	beq	.L1970	@,
	cmp	r6, #66	@ profile_idc,
	bne	.L1969	@,
.L1970:
	cmp	r7, #9	@ INFO,
	movls	lr, #41	@ D.41719,
	bls	.L1972	@,
	cmp	r7, #41	@ INFO,
	movcc	lr, r7	@ D.41719, INFO
	movcs	lr, #41	@ D.41719,
.L1972:
	mov	r2, #4000	@ tmp216,
	ldr	r1, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	mul	r7, r2, r3	@ D.41721, tmp216, seq_parameter_set_id
	add	r1, r1, r7	@ D.41724, pH264Ctx_7(D)->SPS, D.41721
	ldrb	ip, [r1, #23]	@ zero_extendqisi2	@ _26->is_valid, _26->is_valid
	cmp	ip, #0	@ _26->is_valid,
	beq	.L1973	@,
	ldr	ip, .L2007+4	@ tmp221,
	mov	r0, r4	@, pH264Ctx
	str	r2, [sp, #4]	@ tmp216, %sfp
	add	r1, ip, #2208	@, tmp221,
	str	r6, [ip, #2944]	@ profile_idc, sps_tmp.profile_idc
	strb	fp, [ip, #2208]	@ D.41722, sps_tmp.constrained_set0_flag
	strb	r10, [ip, #2209]	@ D.41722, sps_tmp.constrained_set1_flag
	strb	r9, [ip, #2210]	@ D.41722, sps_tmp.constrained_set2_flag
	strb	r8, [ip, #2211]	@ D.41722, sps_tmp.constrained_set3_flag
	str	lr, [ip, #2948]	@ D.41719, sps_tmp.level_idc
	str	r3, [ip, #2952]	@ seq_parameter_set_id, sps_tmp.seq_parameter_set_id
	str	ip, [sp]	@ tmp221, %sfp
	bl	ProcessSPS	@
	subs	r4, r0, #0	@ D.41722,
	bne	.L2004	@,
	ldr	r3, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	ldr	ip, [sp]	@ tmp221, %sfp
	add	r7, r3, r7	@ D.41724, pH264Ctx_7(D)->SPS, D.41721
	add	r0, ip, #2208	@, tmp221,
	mov	r1, r7	@, D.41724
	bl	SPSEqual	@
	ldr	ip, [sp]	@ tmp221, %sfp
	ldr	r2, [sp, #4]	@ tmp216, %sfp
	cmp	r0, #0	@ D.41720
	beq	.L1966	@,
	mov	r0, r7	@, D.41724
	add	r1, ip, #2208	@, tmp221,
	mov	r3, #1	@ tmp240,
	strb	r3, [ip, #2232]	@ tmp240, sps_tmp.is_refreshed
	strb	r3, [ip, #2231]	@ tmp240, sps_tmp.is_valid
	bl	memmove	@
	mov	r0, r4	@ D.41720, D.41722
	b	.L1966	@
.L2005:
	ldr	r2, .L2007+8	@ tmp211,
	ldr	ip, [r2]	@ D.41723, g_event_report
	cmp	ip, #0	@ D.41723,
	beq	.L2004	@,
	str	r1, [sp, #12]	@ D.41722, para
	add	r2, sp, #8	@,,
	str	r3, [sp, #8]	@ seq_parameter_set_id, para
	mov	r1, #109	@,
	ldr	r0, [r0, #3688]	@, pH264Ctx_7(D)->ChanID
	blx	ip	@ D.41723
.L2004:
	mvn	r0, #0	@ D.41720,
.L1966:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1973:
	str	r6, [r1, #736]	@ profile_idc, _26->profile_idc
	mov	r0, r4	@, pH264Ctx
	ldr	r2, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	str	ip, [sp]	@ _26->is_valid, %sfp
	strb	fp, [r2, r7]	@ D.41722, _49->constrained_set0_flag
	ldr	r2, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	add	r2, r2, r7	@ tmp254, pH264Ctx_7(D)->SPS, D.41721
	strb	r10, [r2, #1]	@ D.41722, _53->constrained_set1_flag
	ldr	r2, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	add	r2, r2, r7	@ tmp259, pH264Ctx_7(D)->SPS, D.41721
	strb	r9, [r2, #2]	@ D.41722, _57->constrained_set2_flag
	ldr	r2, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	add	r2, r2, r7	@ tmp264, pH264Ctx_7(D)->SPS, D.41721
	strb	r8, [r2, #3]	@ D.41722, _61->constrained_set3_flag
	ldr	r2, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	add	r2, r2, r7	@ tmp269, pH264Ctx_7(D)->SPS, D.41721
	str	lr, [r2, #740]	@ D.41719, _65->level_idc
	ldr	r2, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	add	r2, r2, r7	@ tmp273, pH264Ctx_7(D)->SPS, D.41721
	str	r3, [r2, #744]	@ seq_parameter_set_id, _68->seq_parameter_set_id
	ldr	r1, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	add	r1, r1, r7	@, pH264Ctx_7(D)->SPS, D.41721
	bl	ProcessSPS	@
	ldr	r3, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	mov	r2, #1	@ tmp282,
	ldr	ip, [sp]	@ _26->is_valid, %sfp
	cmp	r0, #0	@ D.41720
	bne	.L2006	@,
	add	r3, r3, r7	@ tmp293, pH264Ctx_7(D)->SPS, D.41721
	strb	r2, [r3, #24]	@ tmp294, _81->is_refreshed
	ldr	r3, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	add	r7, r3, r7	@ tmp299, pH264Ctx_7(D)->SPS, D.41721
	strb	r2, [r7, #23]	@ tmp294, _84->is_valid
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1971:
	cmp	r6, #122	@ profile_idc,
	beq	.L1970	@,
	cmp	r6, #144	@ profile_idc,
	beq	.L1970	@,
	cmp	r6, #110	@ profile_idc,
	beq	.L1970	@,
.L1969:
	mov	r6, #100	@ profile_idc,
	b	.L1970	@
.L2006:
	add	r3, r3, r7	@ tmp281, pH264Ctx_7(D)->SPS, D.41721
	mvn	r0, #0	@ D.41720,
	strb	r2, [r3, #24]	@ tmp282, _75->is_refreshed
	ldr	r3, [r5, #1292]	@ pH264Ctx_7(D)->SPS, pH264Ctx_7(D)->SPS
	add	r7, r3, r7	@ tmp287, pH264Ctx_7(D)->SPS, D.41721
	strb	ip, [r7, #23]	@ _26->is_valid, _78->is_valid
	b	.L1966	@
.L2008:
	.align	2
.L2007:
	.word	.LC74
	.word	.LANCHOR2
	.word	g_event_report
	.fnend
	.size	H264_DecSPS, .-H264_DecSPS
	.align	2
	.global	PassBytes
	.type	PassBytes, %function
PassBytes:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, [r0, #368]	@ D.41737, pH264Ctx_7(D)->pCurrNal
	cmp	ip, #0	@ D.41737,
	cmpne	r1, #0	@, len,
	beq	.L2015	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r3, [ip]	@ zero_extendqisi2	@ D.41738, _8->nal_used_segment
	mov	r2, r3, asl #2	@ tmp146, D.41738,
	mov	r5, r3, asl #5	@ tmp147, D.41738,
	rsb	r4, r2, r5	@ tmp148, tmp146, tmp147
	add	r4, ip, r4	@ tmp149, D.41737, tmp148
	add	r6, r4, #8	@ tmp150, tmp149,
	ldr	lr, [r4, #8]	@ _8->stream[_11].streamBuffer, _8->stream[_11].streamBuffer
	cmp	lr, #0	@ _8->stream[_11].streamBuffer,
	beq	.L2018	@,
	ldr	lr, [ip, #68]	@ D.41735, _8->nal_segment
	cmp	r3, #1	@ D.41738,
	cmpls	lr, #2	@, D.41735,
	bhi	.L2018	@,
	cmp	lr, r3	@ D.41735, segment_idx
	bls	.L2018	@,
	ldr	lr, [r4, #12]	@ _8->stream[segment_idx_14].bitstream_length, _8->stream[segment_idx_14].bitstream_length
	mov	r6, r2	@ tmp207, tmp146
	ldr	r4, [r4, #24]	@ _8->stream[segment_idx_14].bitsoffset, _8->stream[segment_idx_14].bitsoffset
	mov	lr, lr, asl #3	@ D.41735, _8->stream[segment_idx_14].bitstream_length,
	add	r1, r4, r1, lsl #3	@ D.41735, _8->stream[segment_idx_14].bitsoffset, len,
	cmp	r1, lr	@ D.41735, D.41735
	bhi	.L2013	@,
	b	.L2011	@
.L2014:
	ldr	r4, [r2, #24]	@ _16->stream[segment_idx_28].bitsoffset, _16->stream[segment_idx_28].bitsoffset
	ldr	r2, [r2, #12]	@ _16->stream[segment_idx_28].bitstream_length, _16->stream[segment_idx_28].bitstream_length
	rsb	lr, lr, r4	@ D.41742, D.41735, _16->stream[segment_idx_28].bitsoffset
	add	r1, r1, lr	@ D.41735, D.41735, D.41742
	mov	lr, r2, asl #3	@ D.41735, _16->stream[segment_idx_28].bitstream_length,
	cmp	r1, lr	@ D.41735, D.41735
	bls	.L2011	@,
.L2013:
	rsb	r2, r6, r5	@ tmp198, tmp207, tmp208
	add	r3, r3, #1	@ segment_idx, segment_idx,
	add	ip, ip, r2	@ tmp199, D.41737, tmp198
	mov	r6, r3, asl #2	@ tmp207, segment_idx,
	mov	r5, r3, asl #5	@ tmp208, segment_idx,
	str	lr, [ip, #24]	@ D.41735, _52->stream[segment_idx_48].bitsoffset
	rsb	r2, r6, r5	@ tmp177, tmp207, tmp208
	ldr	ip, [r0, #368]	@ D.41737, pH264Ctx_7(D)->pCurrNal
	ldrb	r4, [ip]	@ zero_extendqisi2	@ _24->nal_used_segment, _24->nal_used_segment
	add	r4, r4, #1	@ tmp203, _24->nal_used_segment,
	strb	r4, [ip]	@ tmp203, _24->nal_used_segment
	ldr	ip, [r0, #368]	@ D.41737, pH264Ctx_7(D)->pCurrNal
	add	r2, ip, r2	@ tmp178, D.41737, tmp177
	ldr	r4, [ip, #68]	@ _16->nal_segment, _16->nal_segment
	cmp	r4, r3	@ _16->nal_segment, segment_idx
	bhi	.L2014	@,
	mov	r0, #0	@ D.41736,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2011:
	rsb	r2, r6, r5	@ tmp192, tmp207, tmp208
	mov	r0, #1	@ D.41736,
	add	ip, ip, r2	@ tmp193, D.41737, tmp192
	str	r1, [ip, #24]	@ D.41735, _51->stream[segment_idx_47].bitsoffset
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2018:
	mvn	r0, #0	@ D.41736,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2015:
	mvn	r0, #0	@ D.41736,
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
	beq	.L2031	@,
	ldr	r3, [r0, #368]	@ D.41773, pH264Ctx_13(D)->pCurrNal
	cmp	r3, #0	@ D.41773,
	cmpne	r2, #0	@, len,
	ble	.L2031	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r7, [r3]	@ zero_extendqisi2	@ D.41774, _14->nal_used_segment
	mov	ip, r7, asl #5	@ tmp163, D.41774,
	sub	ip, ip, r7, asl #2	@ tmp164, tmp163, D.41774,
	add	ip, r3, ip	@ tmp165, D.41773, tmp164
	ldr	ip, [ip, #8]	@ _14->stream[_17].streamBuffer, _14->stream[_17].streamBuffer
	cmp	ip, #0	@ _14->stream[_17].streamBuffer,
	beq	.L2034	@,
	ldr	ip, [r3, #68]	@ D.41777, _14->nal_segment
	cmp	r7, #1	@ D.41774,
	cmpls	ip, #2	@, D.41777,
	movhi	lr, #1	@ tmp174,
	movls	lr, #0	@ tmp174,
	bhi	.L2034	@,
	cmp	ip, r7	@ D.41777, segment_idx
	bls	.L2034	@,
.L2029:
	mov	r5, r7, asl #5	@ tmp234, segment_idx,
	sub	r5, r5, r7, asl #2	@ tmp178, tmp234, segment_idx,
	add	r3, r3, r5	@ tmp179, D.41773, tmp178
	ldr	r4, [r3, #24]	@ _85->stream[segment_idx_78].bitsoffset, _85->stream[segment_idx_78].bitsoffset
	ldr	r8, [r3, #8]	@ D.41776, _85->stream[segment_idx_78].streamBuffer
	add	r4, r4, #7	@ D.41777, _85->stream[segment_idx_78].bitsoffset,
	ldr	r6, [r3, #12]	@ _85->stream[segment_idx_78].bitstream_length, _85->stream[segment_idx_78].bitstream_length
	add	ip, r8, r4, lsr #3	@ byte_pos, D.41776, D.41777,
	add	r6, r8, r6	@ end_byte, D.41776, _85->stream[segment_idx_78].bitstream_length
	cmp	ip, r6	@ byte_pos, end_byte
	bcs	.L2025	@,
	ldrb	r3, [r8, r4, lsr #3]	@ zero_extendqisi2	@ D.41774, *byte_pos_28
	add	lr, lr, #1	@ cnt, cnt,
	cmp	lr, r2	@ cnt, len
	add	r4, r1, #1	@ pdes, pdes,
	add	ip, ip, #1	@ byte_pos, byte_pos,
	strb	r3, [r1]	@ D.41774, *pdes_77
	b	.L2038	@
.L2027:
	cmp	ip, r6	@ ivtmp.2512, end_byte
	mov	r1, r4	@ pdes, ivtmp.2518
	beq	.L2025	@,
	ldrb	r3, [ip], #1	@ zero_extendqisi2	@ D.41774, MEM[base: _8, offset: 0B]
	add	lr, lr, #1	@ cnt, cnt,
	cmp	lr, r2	@ cnt, len
	strb	r3, [r4], #1	@ D.41774, MEM[base: pdes_86, offset: 0B]
.L2038:
	ldr	r3, [r0, #368]	@ D.41773, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r5	@ tmp202, D.41773, tmp178
	ldr	r1, [r3, #24]	@ _71->stream[segment_idx_78].bitsoffset,
	add	r1, r1, #8	@ D.41777, _71->stream[segment_idx_78].bitsoffset,
	str	r1, [r3, #24]	@ D.41777,
	bcc	.L2027	@,
	mov	r0, r2	@ D.41770, len
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2025:
	ldr	ip, [r0, #368]	@ D.41773, pH264Ctx_13(D)->pCurrNal
	add	r7, r7, #1	@ segment_idx, segment_idx,
	ldrb	r3, [ip]	@ zero_extendqisi2	@ _31->nal_used_segment, _31->nal_used_segment
	add	r3, r3, #1	@ tmp229, _31->nal_used_segment,
	strb	r3, [ip]	@ tmp229, _31->nal_used_segment
	ldr	r3, [r0, #368]	@ D.41773, pH264Ctx_13(D)->pCurrNal
	ldr	ip, [r3, #68]	@ _22->nal_segment, _22->nal_segment
	cmp	ip, r7	@ _22->nal_segment, segment_idx
	bhi	.L2029	@,
	mov	r0, lr	@ D.41770, cnt
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2034:
	mvn	r0, #0	@ D.41770,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2031:
	mvn	r0, #0	@ D.41770,
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
	ldr	r1, .L2047	@,
	add	r6, r5, #13504	@ D.41784, pH264Ctx,
	bl	ue_v	@
	add	r4, r5, #24576	@ tmp294, pH264Ctx,
	add	r6, r6, #24	@ D.41784, D.41784,
	mov	r1, #1	@,
	str	r0, [r4, #1832]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_id
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _48->nal_bitoffset, _48->nal_bitoffset
	add	r3, r3, #1	@ D.41781, _48->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _48->nal_bitoffset
	uxtb	r0, r0	@ D.41783,
	strb	r0, [r4, #1809]	@ D.41783, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_cancel_flag
	cmp	r0, #0	@ D.41783,
	beq	.L2046	@,
.L2040:
	mov	r0, r6	@, D.41784
	mov	r1, #1	@,
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@ tmp291,
	ldr	r3, [r2, #64]	@ _108->nal_bitoffset, _108->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _108->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _108->nal_bitoffset
	strb	r1, [r4, #1808]	@ tmp291, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_dec_ok
	strb	r0, [r4, #1810]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_extension_flag
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2046:
	mov	r1, #7	@,
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _52->nal_bitoffset, _52->nal_bitoffset
	add	r3, r3, #7	@ D.41781, _52->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _52->nal_bitoffset
	str	r0, [r4, #1824]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #6	@,
	ldr	r3, [r2, #64]	@ _56->nal_bitoffset, _56->nal_bitoffset
	add	r3, r3, #1	@ D.41781, _56->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _56->nal_bitoffset
	strb	r0, [r4, #1811]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _60->nal_bitoffset, _60->nal_bitoffset
	add	r3, r3, #6	@ D.41781, _60->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _60->nal_bitoffset
	str	r0, [r4, #1828]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].content_interpretation_type
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _64->nal_bitoffset, _64->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _64->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _64->nal_bitoffset
	strb	r0, [r4, #1812]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].spatial_flipping_flag
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _68->nal_bitoffset, _68->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _68->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _68->nal_bitoffset
	strb	r0, [r4, #1813]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_flipped_flag
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _72->nal_bitoffset, _72->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _72->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _72->nal_bitoffset
	strb	r0, [r4, #1814]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].field_views_flag
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _76->nal_bitoffset, _76->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _76->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _76->nal_bitoffset
	strb	r0, [r4, #1815]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].current_frame_is_frame0_flag
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _80->nal_bitoffset, _80->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _80->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _80->nal_bitoffset
	strb	r0, [r4, #1816]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_self_contained_flag
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _84->nal_bitoffset, _84->nal_bitoffset
	add	r3, r3, #1	@ D.41781, _84->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _84->nal_bitoffset
	ldrb	r3, [r4, #1811]	@ zero_extendqisi2	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag
	cmp	r3, #0	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag,
	strb	r0, [r4, #1817]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_self_contained_flag
	bne	.L2041	@,
	ldr	r3, [r4, #1824]	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type
	cmp	r3, #5	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type,
	beq	.L2041	@,
	mov	r1, #1	@,
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _88->nal_bitoffset, _88->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _88->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _88->nal_bitoffset
	strb	r0, [r4, #1818]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_grid_position_x
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _92->nal_bitoffset, _92->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _92->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _92->nal_bitoffset
	strb	r0, [r4, #1819]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_grid_position_y
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	mov	r1, #1	@,
	ldr	r3, [r2, #64]	@ _96->nal_bitoffset, _96->nal_bitoffset
	add	r3, r3, r1	@ D.41781, _96->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _96->nal_bitoffset
	strb	r0, [r4, #1820]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_grid_position_x
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _100->nal_bitoffset, _100->nal_bitoffset
	add	r3, r3, #1	@ D.41781, _100->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _100->nal_bitoffset
	strb	r0, [r4, #1821]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_grid_position_y
.L2041:
	mov	r1, #8	@,
	mov	r0, r6	@, D.41784
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41785, pH264Ctx_3(D)->pCurrNal
	ldr	r1, .L2047+4	@,
	ldr	r3, [r2, #64]	@ _104->nal_bitoffset, _104->nal_bitoffset
	add	r3, r3, #8	@ D.41781, _104->nal_bitoffset,
	str	r3, [r2, #64]	@ D.41781, _104->nal_bitoffset
	str	r0, [r4, #1836]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_reserved_byte
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #1840]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_repetition_period
	b	.L2040	@
.L2048:
	.align	2
.L2047:
	.word	.LC75
	.word	.LC76
	.fnend
	.size	H264_DecFramePackingSEI, .-H264_DecFramePackingSEI
	.align	2
	.global	H264_DecPicTimingSEI
	.type	H264_DecPicTimingSEI, %function
H264_DecPicTimingSEI:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #12288	@ tmp154, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #4000	@ tmp159,
	ldr	r1, [r2, #2044]	@ pH264Ctx_10(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_10(D)->CurrSPS.seq_parameter_set_id
	ldr	r3, [r2, #1292]	@ pSPS, pH264Ctx_10(D)->SPS
	mla	r4, r4, r1, r3	@ pSPS, tmp159, pH264Ctx_10(D)->CurrSPS.seq_parameter_set_id, pSPS
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ pSPS_15->is_valid, pSPS_15->is_valid
	cmp	r1, #0	@ pSPS_15->is_valid,
	bne	.L2050	@,
	ldr	ip, [r2, #1284]	@ D.41803, pH264Ctx_10(D)->MaxSpsNum
	cmp	ip, #0	@ D.41803,
	ble	.L2062	@,
	ldrb	r2, [r3, #23]	@ zero_extendqisi2	@ pSPS_12->is_valid, pSPS_12->is_valid
	cmp	r2, #0	@ pSPS_12->is_valid,
	addeq	r3, r3, #4000	@ ivtmp.2532, pSPS,
	beq	.L2054	@,
	b	.L2072	@
.L2055:
	ldrb	r1, [r3, #-3977]	@ zero_extendqisi2	@ MEM[base: _8, offset: 4294963319B], MEM[base: _8, offset: 4294963319B]
	cmp	r1, #0	@ MEM[base: _8, offset: 4294963319B],
	bne	.L2052	@,
.L2054:
	add	r2, r2, #1	@ i, i,
	mov	r4, r3	@ pSPS, ivtmp.2532
	cmp	r2, ip	@ i, D.41803
	add	r3, r3, #4000	@ ivtmp.2532, ivtmp.2532,
	bne	.L2055	@,
.L2062:
	mvn	r3, #0	@ D.41798,
.L2051:
	mov	r0, r3	@, D.41798
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2072:
	mov	r4, r3	@ pSPS, pSPS
.L2052:
	cmp	r4, #0	@ pSPS,
	beq	.L2062	@,
.L2050:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ pSPS_2->vui_parameters_present_flag, pSPS_2->vui_parameters_present_flag
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ pSPS_2->vui_parameters_present_flag,
	beq	.L2056	@,
	ldrb	r3, [r4, #35]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag, pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag
	cmp	r3, #0	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag,
	beq	.L2073	@,
	ldr	r9, [r4, #388]	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1, pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r8, [r4, #392]	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1, pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1
	add	r9, r9, #1	@ D.41796, pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r8, r8, #1	@ D.41796, pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1,
.L2059:
	add	r7, r5, #13504	@ D.41801, pH264Ctx,
	mov	r1, r9	@, D.41796
	add	r7, r7, #24	@ D.41801, D.41801,
	add	r6, r5, #24576	@ tmp176, pH264Ctx,
	mov	r0, r7	@, D.41801
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41802, pH264Ctx_10(D)->pCurrNal
	mov	r1, r8	@, D.41796
	ldr	r3, [r2, #64]	@ _51->nal_bitoffset, _51->nal_bitoffset
	add	r9, r3, r9	@ D.41796, _51->nal_bitoffset, D.41796
	str	r9, [r2, #64]	@ D.41796, _51->nal_bitoffset
	str	r0, [r6, #1848]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].cpb_removal_delay
	mov	r0, r7	@, D.41801
	bl	BsGet	@
	ldr	r2, [r5, #368]	@ D.41802, pH264Ctx_10(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _55->nal_bitoffset, _55->nal_bitoffset
	add	r8, r3, r8	@ D.41796, _55->nal_bitoffset, D.41796
	str	r8, [r2, #64]	@ D.41796, _55->nal_bitoffset
	str	r0, [r6, #1852]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].dpb_output_delay
.L2056:
	ldrb	r0, [r4, #39]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.pic_struct_present_flag, pSPS_2->vui_seq_parameters.pic_struct_present_flag
	cmp	r0, #0	@ pSPS_2->vui_seq_parameters.pic_struct_present_flag,
	moveq	r3, r0	@ D.41798, pSPS_2->vui_seq_parameters.pic_struct_present_flag
	beq	.L2051	@,
	add	r0, r5, #13504	@, pH264Ctx,
	mov	r1, #4	@,
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r1, [r5, #368]	@ D.41802, pH264Ctx_10(D)->pCurrNal
	add	r5, r5, #24576	@ tmp187, pH264Ctx,
	mov	r3, #0	@ D.41798,
	ldr	r2, [r1, #64]	@ _59->nal_bitoffset, _59->nal_bitoffset
	add	r2, r2, #4	@ D.41796, _59->nal_bitoffset,
	str	r2, [r1, #64]	@ D.41796, _59->nal_bitoffset
	strb	r0, [r5, #1844]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].pic_struct
	mov	r0, r3	@, D.41798
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2073:
	ldrb	r3, [r4, #38]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag, pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag
	cmp	r3, #0	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag,
	beq	.L2056	@,
	ldr	r9, [r4, #700]	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r8, [r4, #704]	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1
	add	r9, r9, #1	@ D.41796, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r8, r8, #1	@ D.41796, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1,
	b	.L2059	@
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
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r2, [r0, #368]	@ D.41885, pH264Ctx_91(D)->pCurrNal
	add	r8, sp, #24	@ tmp1432,,
	mov	r3, #0	@ tmp539,
	add	r6, r0, #13504	@ D.41881, pH264Ctx,
	mov	r1, #32	@ tmp541,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	add	r6, r6, #24	@ D.41881, D.41881,
	add	r4, r0, #12288	@ tmp1430, pH264Ctx,
	mov	r9, r3	@ payloadType, tmp539
	strb	r3, [r8, #-5]!	@ tmp539, byte_tmp
	str	r1, [r2, #24]	@ tmp541, _92->stream[0].bitsoffset
	b	.L2079	@
.L2283:
	bl	BsSkip	@
	cmp	r5, #0	@ ret,
	ble	.L2076	@,
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	r3, #255	@ byte_tmp,
	bne	.L2282	@,
.L2079:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1432
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ D.41886, byte_tmp
	cmp	r3, ip, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	add	r9, r9, r2	@ payloadType, payloadType, D.41886
	mov	r5, r0	@ ret,
	mov	r0, r6	@, D.41881
	ble	.L2283	@,
.L2076:
	mvn	r0, #0	@ D.41880,
.L2078:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2282:
	mov	r3, #0	@ registered_flag,
	str	r3, [sp]	@ registered_flag, %sfp
.L2228:
	mov	r5, #0	@ payloadSize,
	b	.L2081	@
.L2285:
	bl	BsSkip	@
	cmp	r10, #0	@ ret,
	ble	.L2076	@,
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	r3, #255	@ byte_tmp,
	bne	.L2284	@,
.L2081:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1432
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ D.41886, byte_tmp
	cmp	r3, ip, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	add	r5, r5, r2	@ payloadSize, payloadSize, D.41886
	mov	r10, r0	@ ret,
	mov	r0, r6	@, D.41881
	ble	.L2285	@,
	b	.L2076	@
.L2284:
	cmp	r5, #409600	@ payloadSize,
	bgt	.L2076	@,
	cmp	r9, #45	@ payloadType,
	ldrls	pc, [pc, r9, asl #2]	@ payloadType
	b	.L2082	@
.L2084:
	.word	.L2083
	.word	.L2085
	.word	.L2086
	.word	.L2087
	.word	.L2088
	.word	.L2089
	.word	.L2090
	.word	.L2091
	.word	.L2092
	.word	.L2093
	.word	.L2094
	.word	.L2095
	.word	.L2096
	.word	.L2097
	.word	.L2098
	.word	.L2099
	.word	.L2100
	.word	.L2101
	.word	.L2102
	.word	.L2103
	.word	.L2104
	.word	.L2105
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2082
	.word	.L2106
.L2088:
	mov	r3, #1	@ registered_flag,
	str	r3, [sp]	@ registered_flag, %sfp
.L2089:
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r10, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	cmp	r10, #3	@ D.41889,
	bhi	.L2286	@,
.L2130:
	ldr	r0, [r9, #3688]	@, pH264Ctx_91(D)->ChanID
	bl	GetUsd	@
	add	r3, r10, #12800	@ tmp740, D.41889,
	add	r3, r3, #36	@ tmp740, tmp740,
	add	r3, r7, r3, lsl #2	@ tmp741, pH264Ctx, tmp740,
	str	r0, [r3, #4]	@, pH264Ctx_91(D)->pUsrDatArray
	ldr	r3, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp744, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp744, tmp744,
	add	r3, r7, r3, lsl #2	@ tmp748, pH264Ctx, tmp744,
	ldr	r1, [r3, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	cmp	r1, #0	@ D.41891,
	beq	.L2076	@,
	ldr	r0, [r7, #368]	@ D.41885, pH264Ctx_91(D)->pCurrNal
	cmp	r5, #1024	@ payloadSize,
	movlt	r3, r5	@ D.41879, payloadSize
	movge	r3, #1024	@ D.41879,
	ldrb	lr, [r0]	@ zero_extendqisi2	@ segment_idx, _199->nal_used_segment
	ldr	fp, [r0, #68]	@ D.41889, _199->nal_segment
	cmp	lr, fp	@ segment_idx, D.41889
	bcs	.L2231	@,
	sxth	r2, lr	@ D.41886, segment_idx
	mov	r10, #0	@ min_len_tmp,
	mov	ip, r2, asl #5	@ tmp753, D.41886,
	sub	ip, ip, r2, asl #2	@ D.41888, tmp753, D.41886,
	add	ip, r0, ip	@ ivtmp.2571, D.41885, D.41888
.L2132:
	ldr	r2, [ip, #24]	@ MEM[base: _496, offset: 24B], MEM[base: _496, offset: 24B]
	add	lr, lr, #1	@ segment_idx, segment_idx,
	ldr	r0, [ip, #12]	@ MEM[base: _496, offset: 12B], MEM[base: _496, offset: 12B]
	cmp	lr, fp	@ segment_idx, D.41889
	add	r2, r2, #7	@ D.41889, MEM[base: _496, offset: 24B],
	add	ip, ip, #28	@ ivtmp.2571, ivtmp.2571,
	sub	r2, r0, r2, lsr #3	@ D.41889, MEM[base: _496, offset: 12B], D.41889,
	add	r10, r10, r2	@ min_len_tmp, min_len_tmp, D.41889
	bne	.L2132	@,
	mov	r0, r10	@ D.41879, min_len_tmp
.L2131:
	ldrsb	r2, [sp]	@ registered_flag, %sfp
	cmp	r3, r0	@ D.41879, D.41879
	movle	r10, r3	@ min_len_tmp, D.41879
	cmp	r2, #1	@ registered_flag,
	movne	r2, #0	@ D.41889,
	movne	fp, r2	@ used_byte, D.41889
	beq	.L2287	@,
.L2134:
	rsb	r2, r2, r10	@, D.41889, min_len_tmp
	mov	r0, r7	@, pH264Ctx
	str	r3, [sp, #4]	@ D.41879, %sfp
	bl	GetBytes	@
	ldr	r3, [sp, #4]	@ D.41879, %sfp
	subs	r10, r0, #0	@ ret,
	ble	.L2288	@,
	rsb	r2, fp, r3	@ D.41879, used_byte, D.41879
	cmp	r10, r2	@ ret, D.41879
	blt	.L2289	@,
	ldr	r2, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	cmp	r3, r5	@ D.41879, payloadSize
	rsb	fp, fp, r5	@ D.41879, used_byte, payloadSize
	add	r2, r2, #12800	@ tmp926, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r2, r2, #36	@ tmp926, tmp926,
	add	r2, r7, r2, lsl #2	@ tmp930, pH264Ctx, tmp926,
	ldr	r2, [r2, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	str	fp, [r2, #1048]	@ D.41879, _274->data_size
	bcc	.L2290	@,
.L2146:
	cmp	fp, #0	@ D.41879,
	ble	.L2141	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2141	@,
	mov	r5, #0	@ i,
	b	.L2147	@
.L2148:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2141	@,
.L2147:
	add	r5, r5, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, fp	@ i, D.41879
	bne	.L2148	@,
.L2141:
	ldr	r1, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
.L2281:
	add	r1, r1, #12800	@ tmp890, pH264Ctx_91(D)->TotalUsrDatNum,
	ldr	r3, [r7]	@ pH264Ctx_91(D)->pstExtraData, pH264Ctx_91(D)->pstExtraData
	add	r1, r1, #36	@ tmp890, tmp890,
	ldr	r2, .L2295	@ tmp1675,
	mov	r0, #8	@ tmp906,
	add	r1, r7, r1, lsl #2	@ tmp894, pH264Ctx, tmp890,
	ldr	ip, [r2]	@ D.41895, g_event_report
	ldr	r1, [r1, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	ldrd	r2, [r3, #56]	@ D.41894, pH264Ctx_91(D)->pstExtraData,
	cmp	ip, #0	@ D.41895,
	add	r1, r1, #1056	@ tmp898, D.41891,
	strd	r2, [r1]	@ D.41894,
	ldr	r3, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp900, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp900, tmp900,
	add	r3, r7, r3, lsl #2	@ tmp904, pH264Ctx, tmp900,
	ldr	r3, [r3, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	str	r0, [r3, #1036]	@ tmp906,
	ldr	r3, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	ldr	r2, [r9, #3648]	@ D.41889, pH264Ctx_91(D)->SeqCnt
	add	r3, r3, #12800	@ tmp908, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp908, tmp908,
	add	r3, r7, r3, lsl #2	@ tmp912, pH264Ctx, tmp908,
	ldr	r3, [r3, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	str	r2, [r3, #1040]	@ D.41889,
	beq	.L2144	@,
	ldr	r3, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	add	r2, sp, #24	@ tmp958,,
	ldr	r0, [r9, #3688]	@, pH264Ctx_91(D)->ChanID
	mov	r1, #6	@,
	add	r3, r3, #12800	@ tmp951, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp951, tmp951,
	add	r3, r7, r3, lsl #2	@ tmp955, pH264Ctx, tmp951,
	ldr	r3, [r3, #4]	@ tmp957, pH264Ctx_91(D)->pUsrDatArray
	str	r3, [r2, #-4]!	@ tmp957,
	blx	ip	@ D.41895
.L2144:
	ldr	r3, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	add	r3, r3, #1	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum,
	str	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	cmp	r3, #3	@ D.41889,
	bls	.L2221	@,
.L2292:
	add	r4, r7, #51200	@ ivtmp.2544, pH264Ctx,
	mov	r5, #0	@ tmp1433,
	mov	r7, r4	@ D.41887, ivtmp.2544
	add	r4, r4, #144	@ ivtmp.2544, ivtmp.2544,
	add	r7, r7, #160	@ D.41887, D.41887,
.L2223:
	ldr	r1, [r4, #4]!	@ D.41891, MEM[base: _32, offset: 0B]
	cmp	r1, #0	@ D.41891,
	beq	.L2222	@,
	ldr	r0, [r9, #3688]	@, pH264Ctx_91(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4]	@ tmp1433, MEM[base: _32, offset: 0B]
.L2222:
	cmp	r4, r7	@ ivtmp.2544, D.41887
	bne	.L2223	@,
	b	.L2076	@
.L2087:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2128	@
.L2129:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2128:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2129	@,
.L2278:
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2086:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2124	@
.L2125:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2124:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2125	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2085:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	ldr	r9, [r4, #1264]	@ bitpos, pH264Ctx_91(D)->BS.TotalPos
	bl	H264_DecPicTimingSEI	@
	ldr	r2, [r4, #1264]	@ D.41879, pH264Ctx_91(D)->BS.TotalPos
	mov	r10, r5, asl #3	@ D.41879, payloadSize,
	rsb	r3, r9, r2	@ bitpos, bitpos, D.41879
	cmp	r3, r10	@ bitpos, D.41879
	blt	.L2291	@,
.L2211:
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
.L2108:
	cmp	r3, #3	@ D.41889,
	bhi	.L2292	@,
.L2221:
	mov	r9, #0	@ payloadType,
	b	.L2227	@
.L2225:
	bl	BsSkip	@
	cmp	r5, #0	@ ret,
	ble	.L2226	@,
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ D.41886, byte_tmp
	cmp	r3, #255	@ D.41886,
	bne	.L2293	@,
.L2227:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1432
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ D.41886, byte_tmp
	cmp	r3, ip, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	add	r9, r9, r2	@ payloadType, payloadType, D.41886
	mov	r5, r0	@ ret,
	mov	r0, r6	@, D.41881
	ble	.L2225	@,
.L2226:
	mov	r0, #0	@ D.41880,
.L2294:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2083:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2113	@
.L2114:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2113:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2114	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2106:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	ldr	r9, [r4, #1264]	@ bitpos, pH264Ctx_91(D)->BS.TotalPos
	bl	H264_DecFramePackingSEI	@
	ldr	r2, [r4, #1264]	@ D.41880, pH264Ctx_91(D)->BS.TotalPos
	mov	r10, r5, asl #3	@ D.41879, payloadSize,
	rsb	r3, r9, r2	@ bitpos, bitpos, D.41880
	cmp	r3, r10	@ bitpos, D.41879
	bge	.L2211	@,
	rsb	r10, r3, r10	@ D.41879, bitpos, D.41879
	ldr	r3, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	cmp	r10, #0	@ D.41879,
	add	r9, r10, #7	@ tmp1355, D.41879,
	movge	r9, r10	@ D.41879, D.41879
	mov	r9, r9, asr #3	@ D.41879, D.41879,
	cmp	r9, #0	@ D.41879,
	movle	r3, r3, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	ble	.L2213	@,
	add	r1, r2, #8	@ D.41879, D.41880,
	mov	r3, r3, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	cmp	r1, r3	@ D.41879, D.41879
	bgt	.L2213	@,
	mov	fp, #0	@ i,
	b	.L2214	@
.L2215:
	add	r1, r2, #8	@ D.41879, D.41880,
	cmp	r1, r3	@ D.41879, D.41879
	bgt	.L2213	@,
.L2214:
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	add	fp, fp, #1	@ i, i,
	ldr	r3, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	cmp	fp, r9	@ i, D.41879
	ldr	r2, [r4, #1264]	@ D.41880, pH264Ctx_91(D)->BS.TotalPos
	mov	r3, r3, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bne	.L2215	@,
.L2213:
	mov	r1, r10, asr #31	@ tmp1376, D.41879,
	mov	r0, r1, lsr #29	@ tmp1377, tmp1376,
	add	r1, r10, r0	@ tmp1378, D.41879, tmp1377
	and	r1, r1, #7	@ tmp1379, tmp1378,
	rsb	r1, r0, r1	@ tmp1380, tmp1377, tmp1379
	add	r2, r2, r1	@ D.41879, D.41880, tmp1380
	cmp	r3, r2	@ D.41879, D.41879
	blt	.L2211	@,
.L2279:
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	b	.L2211	@
.L2105:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2208	@
.L2209:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2208:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2209	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2104:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2204	@
.L2205:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2204:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2205	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2103:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2200	@
.L2201:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2200:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2201	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2102:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2196	@
.L2197:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2196:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2197	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2101:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2192	@
.L2193:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2192:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2193	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2100:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2188	@
.L2189:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2188:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2189	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2099:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2184	@
.L2185:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2184:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2185	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2098:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2180	@
.L2181:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2180:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2181	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2097:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2176	@
.L2177:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2176:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2177	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2096:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2172	@
.L2173:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2172:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2173	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2095:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2168	@
.L2169:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2168:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2169	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2094:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2164	@
.L2165:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2164:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2165	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2093:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2160	@
.L2161:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2160:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2161	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2092:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2156	@
.L2157:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2156:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2157	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2091:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2152	@
.L2153:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2152:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2153	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2090:
	cmp	r5, #0	@ payloadSize,
	ble	.L2211	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2211	@,
	mov	r9, #0	@ i,
	b	.L2110	@
.L2149:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2211	@,
.L2110:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2149	@,
	b	.L2211	@
.L2082:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2278	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
	mov	r9, #0	@ i,
	b	.L2219	@
.L2220:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2278	@,
.L2219:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2220	@,
	add	r9, r7, #49152	@ tmp1429, pH264Ctx,
	ldr	r3, [r9, #2192]	@ D.41889, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2108	@
.L2293:
	cmp	r3, #128	@ D.41886,
	bne	.L2228	@,
	mov	r0, #0	@ D.41880,
	b	.L2294	@
.L2289:
	ldr	r3, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp874, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp874, tmp874,
	add	r3, r7, r3, lsl #2	@ tmp878, pH264Ctx, tmp874,
	ldr	r3, [r3, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	str	r10, [r3, #1048]	@ ret, _264->data_size
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2141	@,
	mov	r5, #0	@ i,
	b	.L2142	@
.L2145:
	ldr	r3, [r4, #1264]	@ pH264Ctx_91(D)->BS.TotalPos, pH264Ctx_91(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	add	r3, r3, #8	@ D.41879, pH264Ctx_91(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bgt	.L2141	@,
.L2142:
	add	r5, r5, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	cmp	r5, r10	@ i, ret
	bne	.L2145	@,
	b	.L2141	@
.L2291:
	rsb	r10, r3, r10	@ D.41879, bitpos, D.41879
	ldr	r3, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	cmp	r10, #0	@ D.41879,
	add	r9, r10, #7	@ tmp614, D.41879,
	movge	r9, r10	@ D.41879, D.41879
	mov	r9, r9, asr #3	@ D.41879, D.41879,
	cmp	r9, #0	@ D.41879,
	movle	r3, r3, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	ble	.L2118	@,
	add	r1, r2, #8	@ D.41879, D.41879,
	mov	r3, r3, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	cmp	r1, r3	@ D.41879, D.41879
	bgt	.L2118	@,
	mov	fp, #0	@ i,
	b	.L2119	@
.L2120:
	add	r1, r2, #8	@ D.41879, D.41879,
	cmp	r1, r3	@ D.41879, D.41879
	bgt	.L2118	@,
.L2119:
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	bl	BsSkip	@
	add	fp, fp, #1	@ i, i,
	ldr	r3, [r4, #1256]	@ pH264Ctx_91(D)->BS.BsLen, pH264Ctx_91(D)->BS.BsLen
	cmp	fp, r9	@ i, D.41879
	ldr	r2, [r4, #1264]	@ D.41879, pH264Ctx_91(D)->BS.TotalPos
	mov	r3, r3, asl #3	@ D.41879, pH264Ctx_91(D)->BS.BsLen,
	bne	.L2120	@,
.L2118:
	mov	r1, r10, asr #31	@ tmp635, D.41879,
	mov	r0, r1, lsr #29	@ tmp636, tmp635,
	add	r1, r10, r0	@ tmp637, D.41879, tmp636
	and	r1, r1, #7	@ tmp638, tmp637,
	rsb	r1, r0, r1	@ tmp639, tmp636, tmp638
	add	r2, r1, r2	@ D.41879, tmp639, D.41879
	cmp	r2, r3	@ D.41879, D.41879
	bgt	.L2211	@,
	b	.L2279	@
.L2286:
	ldr	r1, [r9, #2196]	@, pH264Ctx_91(D)->pUsrDatArray
	mov	r10, #0	@ D.41889,
	ldr	r0, [r9, #3688]	@, pH264Ctx_91(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r9, #2200]	@, pH264Ctx_91(D)->pUsrDatArray
	ldr	r0, [r9, #3688]	@, pH264Ctx_91(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r9, #2204]	@, pH264Ctx_91(D)->pUsrDatArray
	ldr	r0, [r9, #3688]	@, pH264Ctx_91(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r9, #2208]	@, pH264Ctx_91(D)->pUsrDatArray
	ldr	r0, [r9, #3688]	@, pH264Ctx_91(D)->ChanID
	bl	FreeUsdByDec	@
	str	r10, [r9, #2196]	@ tmp1666, pH264Ctx_91(D)->pUsrDatArray
	str	r10, [r9, #2200]	@ tmp1667, pH264Ctx_91(D)->pUsrDatArray
	str	r10, [r9, #2204]	@ tmp1668, pH264Ctx_91(D)->pUsrDatArray
	str	r10, [r9, #2208]	@ tmp1669, pH264Ctx_91(D)->pUsrDatArray
	str	r10, [r9, #2192]	@ tmp1670, pH264Ctx_91(D)->TotalUsrDatNum
	b	.L2130	@
.L2287:
	strb	r2, [r1, #1064]	@ registered_flag, _196->IsRegistered
	mov	r0, r6	@, D.41881
	ldr	r2, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	mov	r1, #8	@,
	str	r3, [sp, #4]	@ D.41879, %sfp
	add	r2, r2, #12800	@ tmp764, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r2, r2, #36	@ tmp764, tmp764,
	add	r2, r7, r2, lsl #2	@ tmp768, pH264Ctx, tmp764,
	ldr	fp, [r2, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	bl	BsGet	@
	ldr	r1, [r7, #368]	@ D.41885, pH264Ctx_91(D)->pCurrNal
	ldr	r3, [sp, #4]	@ D.41879, %sfp
	ldr	r2, [r1, #64]	@ _523->nal_bitoffset, _523->nal_bitoffset
	add	r2, r2, #8	@ D.41889, _523->nal_bitoffset,
	str	r2, [r1, #64]	@ D.41889, _523->nal_bitoffset
	strb	r0, [fp, #1065]	@, _214->itu_t_t35_country_code
	ldr	r2, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	add	r2, r2, #12800	@ tmp775, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r2, r2, #36	@ tmp775, tmp775,
	add	r2, r7, r2, lsl #2	@ tmp779, pH264Ctx, tmp775,
	ldr	ip, [r2, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	ldrb	r2, [ip, #1065]	@ zero_extendqisi2	@ _218->itu_t_t35_country_code, _218->itu_t_t35_country_code
	cmp	r2, #255	@ _218->itu_t_t35_country_code,
	beq	.L2135	@,
	mov	r2, #3	@ D.41889,
	mov	r1, #0	@ tmp1671,
	mov	fp, r2	@ used_byte, D.41889
	strb	r1, [ip, #1066]	@ tmp1671, _218->itu_t_t35_country_code_extension_byte
.L2136:
	ldr	ip, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	mov	r1, #16	@,
	mov	r0, r6	@, D.41881
	str	r2, [sp, #4]	@ D.41889, %sfp
	add	ip, ip, #12800	@ tmp788, pH264Ctx_91(D)->TotalUsrDatNum,
	str	r3, [sp, #12]	@ D.41879, %sfp
	add	ip, ip, #36	@ tmp788, tmp788,
	add	ip, r7, ip, lsl #2	@ tmp792, pH264Ctx, tmp788,
	ldr	ip, [ip, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	str	ip, [sp, #8]	@ D.41891, %sfp
	bl	BsGet	@
	ldr	r3, [r7, #368]	@ tmp1672, pH264Ctx_91(D)->pCurrNal
	ldr	ip, [sp, #8]	@ D.41891, %sfp
	ldr	r2, [sp, #4]	@ D.41889, %sfp
	ldr	lr, [r3, #64]	@ _531->nal_bitoffset, _531->nal_bitoffset
	add	ip, ip, #1056	@ tmp799, D.41891,
	mov	r1, r2	@, D.41889
	add	lr, lr, #16	@ D.41889, _531->nal_bitoffset,
	str	lr, [r3, #64]	@ D.41889, _531->nal_bitoffset
	strh	r0, [ip, #12]	@ movhi	@, _224->itu_t_t35_provider_code
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	ldr	r2, [sp, #4]	@ D.41889, %sfp
	ldr	r1, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	cmp	r10, r2	@ min_len_tmp, D.41889
	beq	.L2281	@,
	add	r1, r1, #12800	@ tmp801, pH264Ctx_91(D)->TotalUsrDatNum,
	ldr	r3, [sp, #12]	@ D.41879, %sfp
	add	r1, r1, #36	@ tmp801, tmp801,
	add	r1, r7, r1, lsl #2	@ tmp805, pH264Ctx, tmp801,
	ldr	r1, [r1, #4]	@ D.41891, pH264Ctx_91(D)->pUsrDatArray
	b	.L2134	@
.L2290:
	rsb	r1, r3, r5	@, D.41879, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	b	.L2146	@
.L2231:
	mov	r0, #0	@ D.41879,
	mov	r10, r0	@ min_len_tmp, D.41879
	b	.L2131	@
.L2135:
	mov	r1, #8	@,
	mov	r0, r6	@, D.41881
	stmib	sp, {r3, ip}	@,,
	bl	BsGet	@
	ldr	lr, [r7, #368]	@ D.41885, pH264Ctx_91(D)->pCurrNal
	mov	r2, #4	@ D.41889,
	ldr	ip, [sp, #8]	@ D.41891, %sfp
	mov	fp, r2	@ used_byte, D.41889
	ldr	r3, [sp, #4]	@ D.41879, %sfp
	ldr	r1, [lr, #64]	@ _527->nal_bitoffset, _527->nal_bitoffset
	add	r1, r1, #8	@ D.41889, _527->nal_bitoffset,
	str	r1, [lr, #64]	@ D.41889, _527->nal_bitoffset
	strb	r0, [ip, #1066]	@, _218->itu_t_t35_country_code_extension_byte
	b	.L2136	@
.L2288:
	ldr	r3, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	ldr	r0, [r9, #3688]	@, pH264Ctx_91(D)->ChanID
	add	r3, r3, #12800	@ tmp854, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp854, tmp854,
	add	r3, r7, r3, lsl #2	@ tmp858, pH264Ctx, tmp854,
	ldr	r1, [r3, #4]	@, pH264Ctx_91(D)->pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r3, [r9, #2192]	@ pH264Ctx_91(D)->TotalUsrDatNum, pH264Ctx_91(D)->TotalUsrDatNum
	mov	r2, #0	@ tmp871,
	mvn	r0, #0	@ D.41880,
	add	r3, r3, #12800	@ tmp865, pH264Ctx_91(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp865, tmp865,
	add	r3, r7, r3, lsl #2	@ tmp869, pH264Ctx, tmp865,
	str	r2, [r3, #4]	@ tmp871, pH264Ctx_91(D)->pUsrDatArray
	b	.L2078	@
.L2296:
	.align	2
.L2295:
	.word	g_event_report
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
	b	.L2306	@
.L2301:
	.word	.L2300
	.word	.L2306
	.word	.L2306
	.word	.L2306
	.word	.L2300
	.word	.L2306
	.word	.L2302
	.word	.L2302
.L2302:
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	mov	r2, #1	@ tmp165,
	str	r2, [r0]	@ tmp165, *pNewPicDetector_10(D)
	adds	r0, r3, #0	@ D.41911, *pNewPicDetector_10(D),
	movne	r0, #1	@ D.41911,
	rsb	r0, r0, #0	@ ret, D.41911
	bx	lr	@
.L2300:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pNewPicDetector, pNewPicDetector
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r3, #0	@ *pNewPicDetector_10(D),
	beq	.L2303	@,
.L2305:
	mvn	r0, #0	@ ret,
.L2304:
	mov	r3, #0	@ tmp161,
	str	r3, [r5]	@ tmp161, *pNewPicDetector_10(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2306:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L2303:
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ D.41908, MEM[(HI_U8 *)pu8_6(D) + 5B]
	ldrb	r0, [r1, #6]	@ zero_extendqisi2	@ D.41908, MEM[(HI_U8 *)pu8_6(D) + 6B]
	ldrb	r2, [r1, #7]	@ zero_extendqisi2	@ D.41908, MEM[(HI_U8 *)pu8_6(D) + 7B]
	ldrb	r4, [r1, #4]	@ zero_extendqisi2	@ D.41908, MEM[(HI_U8 *)pu8_6(D) + 4B]
	mov	r3, r3, asl #16	@ D.41908, D.41908,
	orr	r3, r3, r0, asl #8	@ D.41908, D.41908, D.41908,
	orr	r3, r3, r2	@ D.41908, D.41908, D.41908
	orr	r4, r3, r4, asl #24	@ tmpbits, D.41908, D.41908,
	mov	r0, r4	@, tmpbits
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	bhi	.L2305	@,
	mov	r0, r0, asl #1	@ D.41908, zeros,
	rsb	r0, r0, #31	@ D.41908, D.41908,
	mov	r4, r4, lsr r0	@ D.41908, tmpbits,
	subs	r0, r4, #1	@ ret, D.41908,
	mvnne	r0, #0	@ ret,
	b	.L2304	@
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
	ands	r3, r1, #63	@ D.41941, len,
	mov	r9, r1	@ len, len
	mov	r7, r0	@ ptr, ptr
	movne	r3, #1	@ D.41941,
	add	r6, r3, r6, asr #6	@ r, D.41941, len,
	cmp	r6, #0	@ r,
	ble	.L2321	@,
	ldr	r5, .L2330	@ tmp179,
	mov	fp, r1	@ ivtmp.2636, len
	mov	r4, #0	@ zero_byte,
	mov	r8, r5	@ tmp180, tmp179
.L2319:
	cmp	fp, #64	@ ivtmp.2636,
	ldr	r0, .L2330	@,
	movcc	r10, fp	@ ThisRoundSize, ivtmp.2636
	movcs	r10, #64	@ ThisRoundSize,
	mov	r2, r10	@, ThisRoundSize
	rsb	r1, r10, fp	@ D.41942, ThisRoundSize, ivtmp.2636
	sub	r10, r10, #1	@ D.41942, ThisRoundSize,
	add	r1, r7, r1	@, ptr, D.41942
	bl	memcpy	@
	add	r3, r5, r10	@ pLastByte, tmp179, D.41942
	ldrb	r2, [r5, r10]	@ zero_extendqisi2	@ *pLastByte_31, *pLastByte_31
	cmp	r2, #0	@ *pLastByte_31,
	bne	.L2311	@,
	cmp	r3, r8	@ pLastByte, tmp180
	add	r4, r4, #1	@ zero_byte, zero_byte,
	bne	.L2314	@,
	b	.L2312	@
.L2315:
	cmp	r3, r5	@ pLastByte, tmp179
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L2312	@,
.L2314:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2	@ MEM[base: pLastByte_34, offset: 0B], MEM[base: pLastByte_34, offset: 0B]
	cmp	r2, #0	@ MEM[base: pLastByte_34, offset: 0B],
	beq	.L2315	@,
.L2311:
	mov	r0, r4, asl #3	@ D.41939, zero_byte,
.L2310:
	cmp	r4, r9	@ zero_byte, len
	bge	.L2323	@,
	sub	r9, r9, #1	@ tmp169, len,
	rsb	r4, r4, r9	@ D.41942, zero_byte, tmp169
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@ Byte, *_40
	tst	r2, #1	@ Byte,
	moveq	r2, r2, lsr #1	@ Byte, Byte,
	moveq	r3, #1	@ zero_bit,
	bne	.L2323	@,
.L2318:
	tst	r2, #1	@ Byte,
	mov	r2, r2, lsr #1	@ Byte, Byte,
	bne	.L2316	@,
	add	r3, r3, #1	@ zero_bit, zero_bit,
	cmp	r3, #8	@ zero_bit,
	bne	.L2318	@,
.L2316:
	add	r0, r3, r0	@ D.41945, zero_bit, D.41939
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2312:
	subs	r6, r6, #1	@ r, r,
	sub	fp, fp, #64	@ ivtmp.2636, ivtmp.2636,
	bne	.L2319	@,
	b	.L2311	@
.L2323:
	mov	r3, #0	@ zero_bit,
	add	r0, r3, r0	@ D.41945, zero_bit, D.41939
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2321:
	mov	r0, #0	@ D.41939,
	mov	r4, r0	@ zero_byte, D.41939
	b	.L2310	@
.L2331:
	.align	2
.L2330:
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
	ldr	r3, [r0, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
	ldr	r2, [r3, #68]	@ _8->nal_segment, _8->nal_segment
	cmp	r2, #1	@ _8->nal_segment,
	bls	.L2337	@,
	ldr	r1, [r3, #40]	@, _8->stream[1].bitstream_length
	ldr	r0, [r3, #36]	@, _8->stream[1].streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
	ldr	r2, [r3, #40]	@ _16->stream[1].bitstream_length, _16->stream[1].bitstream_length
	cmp	r0, r2, asl #3	@ zero_bit, _16->stream[1].bitstream_length,
	bcs	.L2339	@,
	cmn	r0, #1	@ zero_bit,
	beq	.L2337	@,
.L2335:
	add	r0, r0, #1	@ D.41955, zero_bit,
	str	r0, [r3, #72]	@ D.41955, _61->nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
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
	ldr	r2, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
	mov	r3, #0	@ tmp161,
	mov	r1, #1	@ tmp162,
	str	r3, [r2, #36]	@ tmp161, _44->stream[1].streamBuffer
	ldr	r2, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
	str	r1, [r2, #68]	@ tmp162, _46->nal_segment
	ldr	r2, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
	str	r3, [r2, #72]	@ tmp161, _48->nal_trail_zero_bit_num
	ldmfd	sp!, {r4, pc}	@
.L2339:
	add	r2, r4, #49152	@ tmp146, pH264Ctx,
	ldr	r1, [r3, #60]	@, _16->stream[1].StreamID
	ldr	r0, [r2, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
	mov	r1, #0	@ tmp148,
	mov	r2, #1	@ tmp149,
	str	r1, [r3, #36]	@ tmp148, _22->stream[1].streamBuffer
	ldr	r3, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
	str	r2, [r3, #68]	@ tmp149, _24->nal_segment
	ldr	r3, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
.L2337:
	ldr	r1, [r3, #12]	@, _62->stream[0].bitstream_length
	ldr	r0, [r3, #8]	@, _62->stream[0].streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ D.41952, pH264Ctx_7(D)->pCurrNal
	b	.L2335	@
	.fnend
	.size	FindTrailZeros, .-FindTrailZeros
	.align	2
	.global	CombinePacket
	.type	CombinePacket, %function
CombinePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	ldr	r2, [r3, #12]	@ D.41959, _4->stream[0].bitstream_length
	cmp	r2, #4096	@ D.41959,
	bxcs	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r3, #36]	@ _4->stream[1].streamBuffer, _4->stream[1].streamBuffer
	mov	r5, #0	@ tmp147,
	ldr	r1, [r3, #8]	@, _4->stream[0].streamBuffer
	rsb	r0, r2, r0	@,, _4->stream[1].streamBuffer
	bl	memcpy	@
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	add	r0, r4, #49152	@ tmp159, pH264Ctx,
	mov	ip, #1	@ tmp157,
	ldr	r2, [r3, #60]	@ _11->stream[1].StreamID, _11->stream[1].StreamID
	ldr	r1, [r3, #32]	@ StreamId, _11->stream[0].StreamID
	str	r2, [r3, #32]	@ _11->stream[1].StreamID, _11->stream[0].StreamID
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	str	r5, [r3, #24]	@ tmp147, _15->stream[0].bitsoffset
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	ldr	lr, [r3, #12]	@ _17->stream[0].bitstream_length, _17->stream[0].bitstream_length
	ldr	r2, [r3, #36]	@ _17->stream[1].streamBuffer, _17->stream[1].streamBuffer
	rsb	r2, lr, r2	@ D.41960, _17->stream[0].bitstream_length, _17->stream[1].streamBuffer
	str	r2, [r3, #8]	@ D.41960, _17->stream[0].streamBuffer
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	ldr	lr, [r3, #12]	@ _23->stream[0].bitstream_length, _23->stream[0].bitstream_length
	ldr	r2, [r3, #44]	@ _23->stream[1].stream_phy_addr, _23->stream[1].stream_phy_addr
	rsb	r2, lr, r2	@ D.41959, _23->stream[0].bitstream_length, _23->stream[1].stream_phy_addr
	str	r2, [r3, #16]	@ D.41959, _23->stream[0].stream_phy_addr
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	ldr	r2, [r3, #12]	@ _28->stream[0].bitstream_length, _28->stream[0].bitstream_length
	ldr	lr, [r3, #40]	@ _28->stream[1].bitstream_length, _28->stream[1].bitstream_length
	add	r2, r2, lr	@ D.41959, _28->stream[0].bitstream_length, _28->stream[1].bitstream_length
	str	r2, [r3, #12]	@ D.41959, _28->stream[0].bitstream_length
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	str	ip, [r3, #68]	@ tmp157, _33->nal_segment
	ldr	r0, [r0, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	str	r5, [r3, #36]	@ tmp147, _37->stream[1].streamBuffer
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	str	r5, [r3, #52]	@ tmp147, _39->stream[1].bitsoffset
	ldr	r3, [r4, #368]	@ D.41958, pH264Ctx_3(D)->pCurrNal
	str	r5, [r3, #40]	@ tmp147, _41->stream[1].bitstream_length
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	beq	.L2349	@,
	mov	r2, ip	@ ivtmp.2652, pH264Ctx
	mov	r3, #1	@ Pos,
	b	.L2347	@
.L2346:
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2352	@,
.L2347:
	ldrb	r1, [r2, #473]	@ zero_extendqisi2	@ MEM[base: _19, offset: 473B], MEM[base: _19, offset: 473B]
	add	r2, r2, #96	@ ivtmp.2652, ivtmp.2652,
	cmp	r1, #0	@ MEM[base: _19, offset: 473B],
	bne	.L2346	@,
	mov	r0, r3	@ D.41977, Pos
.L2345:
	mov	r2, r3, asl #7	@ tmp124, Pos,
	mov	r1, #1	@ tmp128,
	sub	r3, r2, r3, asl #5	@ tmp125, tmp124, Pos,
	add	ip, ip, r3	@ tmp126, pH264Ctx, tmp125
	strb	r1, [ip, #377]	@ tmp128, pH264Ctx_6(D)->NalArray[Pos_23].is_valid
	bx	lr	@
.L2352:
	mvn	r0, #0	@ D.41977,
	bx	lr	@
.L2349:
	mov	r3, r0	@ Pos, D.41977
	b	.L2345	@
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
	mov	r3, #0	@ tmp153,
	str	r3, [r2]	@ tmp153, *IsSizeChanged_5(D)
	mov	r5, r2	@ IsSizeChanged, IsSizeChanged
	str	r3, [r1]	@ tmp153, *IsNewPic_7(D)
	add	r6, r0, #20480	@ tmp156, pH264Ctx,
	ldr	r3, [r0, #368]	@ D.41983, pH264Ctx_9(D)->pCurrNal
	mov	r8, r1	@ IsNewPic, IsNewPic
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ D.41984, _10->nal_unit_type
	strb	r2, [r6, #203]	@ D.41984, pH264Ctx_9(D)->CurrSlice.nal_unit_type
	ldr	r3, [r3, #76]	@ D.41985, _10->nal_ref_idc
	str	r3, [r6, #232]	@ D.41985, pH264Ctx_9(D)->CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r7, r0, #0	@ D.41982,
	bne	.L2356	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L2356	@,
	ldrb	r2, [r6, #205]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrSlice.new_pic_flag, pH264Ctx_9(D)->CurrSlice.new_pic_flag
	add	r3, r4, #12288	@ tmp166, pH264Ctx,
	mov	r0, #2208	@ tmp174,
	mov	r9, #4000	@ tmp178,
	sub	r2, r2, #1	@ D.41986, pH264Ctx_9(D)->CurrSlice.new_pic_flag,
	clz	r2, r2	@ D.41986, D.41986
	mov	r2, r2, lsr #5	@ D.41986, D.41986,
	str	r2, [r8]	@ D.41986, *IsNewPic_7(D)
	ldr	ip, [r6, #212]	@ pH264Ctx_9(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_9(D)->CurrSlice.pic_parameter_set_id
	add	r2, r4, #49152	@ tmp190, pH264Ctx,
	ldr	r6, [r3, #1296]	@ pH264Ctx_9(D)->PPS, pH264Ctx_9(D)->PPS
	add	r4, r4, #24576	@ tmp210, pH264Ctx,
	ldr	lr, [r3, #1272]	@ oldw, pH264Ctx_9(D)->CurWidthInMb
	ldr	r1, [r3, #1292]	@ pH264Ctx_9(D)->SPS, pH264Ctx_9(D)->SPS
	mla	r0, r0, ip, r6	@ tmp175, tmp174, pH264Ctx_9(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_9(D)->PPS
	ldr	r6, [r3, #1276]	@ oldh, pH264Ctx_9(D)->CurHeightInMb
	mov	r8, lr, asl #4	@ D.41987, oldw,
	mov	r10, r6, asl #4	@ D.41987, oldh,
	ldr	r3, [r0, #28]	@ pPPS_26->seq_parameter_set_id, pPPS_26->seq_parameter_set_id
	mla	r1, r9, r3, r1	@ pSPS, tmp178, pPPS_26->seq_parameter_set_id, pH264Ctx_9(D)->SPS
	ldrb	r3, [r1, #18]	@ zero_extendqisi2	@ D.41987, pSPS_30->frame_mbs_only_flag
	ldr	r0, [r1, #3960]	@ pSPS_30->pic_height_in_map_units_minus1, pSPS_30->pic_height_in_map_units_minus1
	rsb	r3, r3, #2	@ D.41987, D.41987,
	ldr	ip, [r1, #3956]	@ pSPS_30->pic_width_in_mbs_minus1, pSPS_30->pic_width_in_mbs_minus1
	str	r10, [r2, #3728]	@ D.41987, pH264Ctx_9(D)->DSD_OldHeight
	mla	r3, r0, r3, r3	@ newh, pSPS_30->pic_height_in_map_units_minus1, D.41987, D.41987
	add	ip, ip, #1	@ neww, pSPS_30->pic_width_in_mbs_minus1,
	str	r8, [r2, #3724]	@ D.41987, pH264Ctx_9(D)->DSD_OldWidth
	mov	r0, ip, asl #4	@ D.41987, neww,
	str	r0, [r2, #3732]	@ D.41987, pH264Ctx_9(D)->DSD_NewWidth
	cmp	lr, ip	@ oldw, neww
	cmpeq	r6, r3	@, oldh, newh
	mov	r0, r7	@, D.41982
	mov	r3, r3, asl #4	@ D.41987, newh,
	str	r3, [r2, #3736]	@ D.41987, pH264Ctx_9(D)->DSD_NewHeight
	movne	r3, #1	@ tmp208,
	strne	r3, [r5]	@ tmp208, *IsSizeChanged_5(D)
	ldr	r3, [r4, #2048]	@ pH264Ctx_9(D)->DPB.size, pH264Ctx_9(D)->DPB.size
	ldr	r2, [r1, #3980]	@ pSPS_30->dpb_size_plus1, pSPS_30->dpb_size_plus1
	add	r3, r3, #1	@ D.41985, pH264Ctx_9(D)->DPB.size,
	cmp	r2, r3	@ pSPS_30->dpb_size_plus1, D.41985
	movhi	r3, #1	@ tmp214,
	strhi	r3, [r5]	@ tmp214, *IsSizeChanged_5(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2356:
	mvn	r7, #0	@ D.41982,
	mov	r0, r7	@, D.41982
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	clz	r0, r0	@ D.41993, pH264Ctx_3(D)->SliceParaNum
	mov	r0, r0, lsr #5	@ D.41993, D.41993,
	rsb	r0, r0, #0	@, D.41993
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
	beq	.L2364	@,
	add	r5, r0, #26880	@ ivtmp.2673, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r8, r0, #49152	@ tmp168, pH264Ctx,
	add	r5, r5, #152	@ ivtmp.2673, ivtmp.2673,
	mov	r4, #0	@ i,
	b	.L2368	@
.L2365:
	ldr	r3, [r0, #408]	@ pstLogicFs_20->pstDecodeFs, pstLogicFs_20->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_20->pstDecodeFs,
	beq	.L2367	@,
	ldr	r3, [r7, #244]	@ D.42019, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r4, r3	@ i, D.42019
	bcs	.L2391	@,
.L2368:
	ldr	r3, [r5, #4]!	@ MEM[base: _41, offset: 0B], MEM[base: _41, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r8, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r3, [r3, #4]	@ _16->frame_store, _16->frame_store
	ldr	r1, [r3, #508]	@, _17->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L2365	@,
.L2367:
	mvn	r0, #0	@ D.42021,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2391:
	cmp	r3, #0	@ D.42019,
	beq	.L2364	@,
	ldr	r3, [r7, #248]	@ pH264Ctx_11(D)->CurrSlice.listXsize, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_11(D)->CurrSlice.listXsize,
	addne	r6, r6, #27136	@ ivtmp.2662, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r6, r6, #28	@ ivtmp.2662, ivtmp.2662,
	bne	.L2371	@,
	b	.L2364	@
.L2392:
	ldr	r3, [r0, #408]	@ pstLogicFs_31->pstDecodeFs, pstLogicFs_31->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_31->pstDecodeFs,
	beq	.L2367	@,
	ldr	r3, [r7, #248]	@ pH264Ctx_11(D)->CurrSlice.listXsize, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r4, r3	@ i, pH264Ctx_11(D)->CurrSlice.listXsize
	bcs	.L2364	@,
.L2371:
	ldr	r3, [r6, #4]!	@ MEM[base: _38, offset: 0B], MEM[base: _38, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r8, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r3, [r3, #4]	@ _27->frame_store, _27->frame_store
	ldr	r1, [r3, #508]	@, _28->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L2392	@,
	b	.L2367	@
.L2364:
	mov	r0, #0	@ D.42021,
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
	add	r6, r0, #49152	@ tmp138, pH264Ctx,
	mov	r8, r1	@ D.42046, PicID
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L2398	@,
	ldrsb	r3, [r0, #1]	@ pstLogicFs_12->s32DispState, pstLogicFs_12->s32DispState
	cmp	r3, #0	@ pstLogicFs_12->s32DispState,
	beq	.L2398	@,
	add	r4, r0, #196	@ ivtmp.2689, pstLogicFs,
	add	r5, r0, #212	@ D.42050, pstLogicFs,
	mov	r7, #0	@ tmp139,
.L2396:
	ldr	r1, [r4, #4]!	@ D.42048, MEM[base: _1, offset: 0B]
	cmp	r1, #0	@ D.42048,
	beq	.L2395	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4]	@ tmp139, MEM[base: _1, offset: 0B]
.L2395:
	cmp	r4, r5	@ ivtmp.2689, D.42050
	bne	.L2396	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	mov	r1, r8	@, D.42046
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.42044,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2398:
	mvn	r0, #0	@ D.42044,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	moveq	r3, #1	@ tmp182,
	movne	r3, #0	@ tmp182,
	bne	.L2449	@,
	mov	r0, #2	@ D.42059,
	bx	lr	@
.L2449:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	ip, [r0]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	ldr	ip, [ip, #12]	@ _9->s32DecOrderOutput, _9->s32DecOrderOutput
	cmp	ip, #0	@ _9->s32DecOrderOutput,
	ble	.L2406	@,
	add	ip, r0, #49152	@ tmp186, pH264Ctx,
	ldr	lr, [ip, #3616]	@ pH264Ctx_3(D)->OldDecMode, pH264Ctx_3(D)->OldDecMode
	cmp	lr, #2	@ pH264Ctx_3(D)->OldDecMode,
	beq	.L2406	@,
	ldr	r2, [ip, #1544]	@ D.42064, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r2, #0	@ D.42064,
	strneb	r3, [r2, #1]	@ tmp182, _12->is_used
	movne	r0, #1	@ D.42059,
	strne	r3, [ip, #1544]	@ tmp182, pH264Ctx_3(D)->pDirectOutBuf
	beq	.L2408	@,
.L2405:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2454:
	ldr	r3, [r7, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	mov	r2, #1	@,
	ldr	r0, [r7, #3688]	@, pH264Ctx_3(D)->ChanID
	ldr	r1, [r3, #508]	@, _24->logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r3, [r7, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	ldr	r0, [r7, #3688]	@, pH264Ctx_3(D)->ChanID
	ldr	r1, [r3, #508]	@, _27->logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pstLogicFsImage,
	beq	.L2448	@,
	ldr	r3, [r7, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	mov	r2, r4	@, pH264Ctx
	mov	r1, #0	@,
	cmp	r6, r3	@ pFrameStore, pH264Ctx_3(D)->pDirectOutBuf
	cmpeq	r5, #1	@, is_last_frame,
	moveq	r3, #1	@ tmp224,
	streq	r3, [r8, #224]	@ tmp224, pstLogicFsImage_29->last_frame
	add	r3, r4, #8	@, pH264Ctx,
	ldr	r0, [r7, #3688]	@ pH264Ctx_3(D)->ChanID, pH264Ctx_3(D)->ChanID
	str	r8, [sp]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L2450	@,
	ldr	r3, [r4]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _38->s32FastForwardBackwardSpeed, _38->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.42066, _38->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.42066, D.42066,
	cmp	r3, #4096	@ D.42066,
	movcc	r3, #0	@ tmp247,
	strcc	r3, [r8, #84]	@ tmp247, pstLogicFsImage_29->u32RepeatCnt
	bcs	.L2451	@,
.L2415:
	ldr	r2, [r7, #3720]	@ pH264Ctx_3(D)->numOutputFrame, pH264Ctx_3(D)->numOutputFrame
	ldr	r3, [r7, #3712]	@ pH264Ctx_3(D)->PicOutCounter, pH264Ctx_3(D)->PicOutCounter
	add	r2, r2, #1	@ D.42062, pH264Ctx_3(D)->numOutputFrame,
	str	r2, [r7, #3720]	@ D.42062, pH264Ctx_3(D)->numOutputFrame
	add	r3, r3, #2	@ D.42063, pH264Ctx_3(D)->PicOutCounter,
	str	r3, [r7, #3712]	@ D.42063, pH264Ctx_3(D)->PicOutCounter
.L2416:
	ldr	r2, [r7, #1544]	@ D.42064, pH264Ctx_3(D)->pDirectOutBuf
	mov	r3, #0	@ tmp266,
	strb	r3, [r2, #1]	@ tmp266, _48->is_used
	ldr	r2, [r7, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	str	r3, [r7, #1544]	@ tmp266, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r6, r2	@ pFrameStore, pH264Ctx_3(D)->pDirectOutBuf
	moveq	r0, r3	@ D.42059, tmp266
	beq	.L2405	@,
.L2409:
	mov	r1, r6	@, pFrameStore
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	mov	r1, r6	@, pFrameStore
	mov	r0, r4	@, pH264Ctx
	bl	CheckFrameStore	@
	cmp	r0, #0	@ ret
	beq	.L2452	@,
	cmn	r0, #3	@ ret,
	bne	.L2453	@,
.L2408:
	mov	r0, #1	@ D.42059,
	b	.L2405	@
.L2406:
	mov	r6, r1	@ pFrameStore, pFrameStore
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r2	@ is_last_frame, is_last_frame
	bl	CheckFrameStore	@
	cmn	r0, #3	@,
	beq	.L2408	@,
	add	r7, r4, #49152	@ tmp313, pH264Ctx,
	ldr	r1, [r7, #1544]	@ D.42064, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r1, #0	@ D.42064,
	beq	.L2409	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	ldr	r1, [r7, #1544]	@, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	bl	CheckFrameStore	@
	cmp	r0, #0	@ ret
	beq	.L2454	@,
	cmn	r0, #3	@ ret,
	beq	.L2416	@,
	ldr	r3, [r7, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r3, #184]	@, _46->fs_image.image_id
	bl	H264DEC_RecycleImage	@
	b	.L2416	@
.L2453:
	ldr	r1, [r6, #184]	@, pFrameStore_5(D)->fs_image.image_id
	mov	r0, r4	@, pH264Ctx
	bl	H264DEC_RecycleImage	@
	mov	r0, #2	@ D.42059,
	b	.L2405	@
.L2452:
	mov	r2, #1	@,
	ldr	r1, [r6, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r7, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r6, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r7, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pstLogicFsImage,
	beq	.L2448	@,
	cmp	r5, #1	@ is_last_frame,
	add	r3, r4, #8	@, pH264Ctx,
	streq	r5, [r8, #224]	@ is_last_frame, pstLogicFsImage_55->last_frame
	mov	r2, r4	@, pH264Ctx
	ldr	r0, [r7, #3688]	@ pH264Ctx_3(D)->ChanID, pH264Ctx_3(D)->ChanID
	mov	r1, #0	@,
	str	r8, [sp]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L2455	@,
	ldr	r3, [r4]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _61->s32FastForwardBackwardSpeed, _61->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.42066, _61->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.42066, D.42066,
	cmp	r3, #4096	@ D.42066,
	movcc	r3, #0	@ tmp298,
	strcc	r3, [r8, #84]	@ tmp298, pstLogicFsImage_55->u32RepeatCnt
	bcs	.L2456	@,
.L2423:
	ldr	r2, [r7, #3720]	@ pH264Ctx_3(D)->numOutputFrame, pH264Ctx_3(D)->numOutputFrame
	mov	r0, #0	@ D.42059,
	ldr	r3, [r7, #3712]	@ pH264Ctx_3(D)->PicOutCounter, pH264Ctx_3(D)->PicOutCounter
	add	r2, r2, #1	@ D.42062, pH264Ctx_3(D)->numOutputFrame,
	str	r2, [r7, #3720]	@ D.42062, pH264Ctx_3(D)->numOutputFrame
	add	r3, r3, #2	@ D.42063, pH264Ctx_3(D)->PicOutCounter,
	str	r3, [r7, #3712]	@ D.42063, pH264Ctx_3(D)->PicOutCounter
	b	.L2405	@
.L2456:
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L2423	@
.L2451:
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L2415	@
.L2450:
	ldr	r3, [r7, #1544]	@ D.42064, pH264Ctx_3(D)->pDirectOutBuf
	mov	r5, #0	@ tmp231,
	mov	r2, r5	@, tmp231
	strb	r5, [r3, #1]	@ tmp231, _34->is_used
	ldr	r3, [r7, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	ldr	r0, [r7, #3688]	@, pH264Ctx_3(D)->ChanID
	ldr	r1, [r3, #508]	@, _36->logic_fs_id
	bl	FSP_SetDisplay	@
	str	r5, [r7, #1544]	@ tmp231, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
.L2448:
	mvn	r0, #0	@ D.42059,
	b	.L2405	@
.L2455:
	ldr	r1, [r6, #508]	@, pFrameStore_5(D)->logic_fs_id
	mov	r2, #0	@,
	ldr	r0, [r7, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.42059,
	b	.L2405	@
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
	add	r4, r0, r1, lsl #2	@ D.42072, pH264Ctx, pos,
	add	r4, r4, #24576	@ tmp122, D.42072,
	mov	r6, r1	@ pos, pos
	mov	r3, #0	@ tmp123,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r4, #1856]	@ D.42069, MEM[(struct H264_CTX_S *)_14 + 26432B]
	mov	r2, r3	@, tmp123
	strb	r3, [r1, #4]	@ tmp123, _5->is_in_dpb
	ldr	r1, [r4, #1856]	@, MEM[(struct H264_CTX_S *)_14 + 26432B]
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1856]	@ MEM[(struct H264_CTX_S *)_14 + 26432B], MEM[(struct H264_CTX_S *)_14 + 26432B]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference
	cmp	r3, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference,
	mov	r7, r0	@ ret,
	bne	.L2458	@,
	mov	r1, r6	@, pos
	mov	r0, r5	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
.L2458:
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
	add	r6, r0, #24576	@ tmp139, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	addne	r7, r0, #26368	@ ivtmp.2706, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r7, r7, #60	@ ivtmp.2706, ivtmp.2706,
	bne	.L2464	@,
	b	.L2465	@
.L2463:
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, r4	@ pH264Ctx_8(D)->DPB.used_size, i
	bls	.L2465	@,
.L2464:
	ldr	r1, [r7, #4]!	@ D.42088, MEM[base: _28, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _10->is_reference, _10->is_reference
	cmp	r3, #0	@ _10->is_reference,
	beq	.L2463	@,
	mov	r0, r5	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, r4	@ pH264Ctx_8(D)->DPB.used_size, i
	bhi	.L2464	@,
.L2465:
	mov	r0, r5	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	b	.L2462	@
.L2467:
	bl	GetMinPOC	@
	ldr	r1, [sp]	@, pos
	mov	r0, r5	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret,
	beq	.L2466	@,
.L2462:
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	mov	r2, sp	@,
	add	r1, sp, #4	@ tmp142,,
	mov	r0, r5	@, pH264Ctx
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	bne	.L2467	@,
	mov	r0, r3	@ D.42086, pH264Ctx_8(D)->DPB.used_size
.L2466:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
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
	add	r2, r0, #26368	@ ivtmp.2719, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #49664	@ D.42129, pH264Ctx,
	ldr	r4, [r3, #964]	@ D.42127, pH264Ctx_12(D)->CurrPic.pMarkPara
	.pad #12
	sub	sp, sp, #12	@,,
	add	r8, r8, #40	@ D.42129, D.42129,
	add	r9, r0, #16384	@ tmp253, pH264Ctx,
	add	r7, r4, #2000	@ D.42136, D.42127,
	add	r6, r0, #24576	@ tmp257, pH264Ctx,
	add	r4, r4, #4	@ ivtmp.2732, D.42127,
	add	r7, r7, #4	@ D.42136, D.42136,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	str	r3, [sp, #4]	@ tmp254, %sfp
	add	r3, r2, #124	@ ivtmp.2719, ivtmp.2719,
	str	r3, [sp]	@ ivtmp.2719, %sfp
.L2487:
	ldr	r3, [r4]	@ MEM[base: _91, offset: 0B], MEM[base: _91, offset: 0B]
	cmp	r3, #6	@ MEM[base: _91, offset: 0B],
	ldrls	pc, [pc, r3, asl #2]	@ MEM[base: _91, offset: 0B]
	b	.L2475	@
.L2477:
	.word	.L2476
	.word	.L2478
	.word	.L2479
	.word	.L2480
	.word	.L2481
	.word	.L2482
	.word	.L2483
.L2483:
	ldr	r2, [r4, #12]	@, MEM[base: _91, offset: 12B]
	mov	r1, r8	@, D.42129
	mov	r0, r5	@, pH264Ctx
	bl	MarkCurrPicLT	@
.L2475:
	add	r4, r4, #20	@ ivtmp.2732, ivtmp.2732,
	cmp	r4, r7	@ ivtmp.2732, D.42136
	bne	.L2487	@,
.L2476:
	ldr	r3, [r9, #3436]	@ pH264Ctx_12(D)->CurrPOC.last_has_mmco_5, pH264Ctx_12(D)->CurrPOC.last_has_mmco_5
	cmp	r3, #1	@ pH264Ctx_12(D)->CurrPOC.last_has_mmco_5,
	movne	r0, #0	@ D.42126,
	beq	.L2497	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2482:
	ldr	r3, [r6, #2056]	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer,
	ldrne	r10, [sp]	@ ivtmp.2719, %sfp
	movne	fp, #0	@ i,
	beq	.L2486	@,
.L2485:
	ldr	r1, [r10, #4]!	@, MEM[base: _37, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, #2056]	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	add	fp, fp, #1	@ i, i,
	cmp	fp, r1	@ i, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	bcc	.L2485	@,
.L2486:
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r1, #0	@,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r3, #1	@ tmp165,
	str	r3, [r9, #3436]	@ tmp165, pH264Ctx_12(D)->CurrPOC.last_has_mmco_5
	b	.L2475	@
.L2481:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #16]	@, MEM[base: _91, offset: 16B]
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2475	@
.L2480:
	ldr	r3, [r4, #12]	@, MEM[base: _91, offset: 12B]
	mov	r1, r8	@, D.42129
	ldr	r2, [r4, #4]	@, MEM[base: _91, offset: 4B]
	mov	r0, r5	@, pH264Ctx
	bl	MarkSTToLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2475	@
.L2479:
	mov	r0, r5	@, pH264Ctx
	ldr	r2, [r4, #8]	@, MEM[base: _91, offset: 8B]
	mov	r1, r8	@, D.42129
	bl	UnMarkLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2475	@
.L2478:
	mov	r0, r5	@, pH264Ctx
	ldr	r2, [r4, #4]	@, MEM[base: _91, offset: 4B]
	mov	r1, r8	@, D.42129
	bl	UnMarkSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	b	.L2475	@
.L2497:
	ldr	r1, [sp, #4]	@ tmp254, %sfp
	mov	r3, #0	@ tmp190,
	ldrb	r2, [r1, #555]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrPic.structure, pH264Ctx_12(D)->CurrPic.structure
	str	r3, [r1, #968]	@ tmp190, pH264Ctx_12(D)->CurrPic.frame_num
	cmp	r2, #1	@ pH264Ctx_12(D)->CurrPic.structure,
	beq	.L2490	@,
	bcc	.L2491	@,
	cmp	r2, #2	@ pH264Ctx_12(D)->CurrPic.structure,
	bne	.L2489	@,
	ldr	r2, [sp, #4]	@ tmp254, %sfp
	str	r3, [r2, #992]	@ tmp190, pH264Ctx_12(D)->CurrPic.bottompoc
	str	r3, [r2, #980]	@ tmp190, pH264Ctx_12(D)->CurrPic.thispoc
	str	r3, [r9, #3448]	@ tmp190, pH264Ctx_12(D)->CurrPOC.bottompoc
	str	r3, [r9, #3456]	@ tmp190, pH264Ctx_12(D)->CurrPOC.ThisPOC
.L2489:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	adds	r0, r0, #0	@ D.42135,,
	movne	r0, #1	@ D.42135,
	rsb	r0, r0, #0	@ D.42126, D.42135
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2491:
	ldr	r0, [sp, #4]	@ tmp254, %sfp
	ldr	r1, [r0, #980]	@ D.42130, pH264Ctx_12(D)->CurrPic.thispoc
	ldr	r2, [r0, #988]	@ pH264Ctx_12(D)->CurrPic.toppoc, pH264Ctx_12(D)->CurrPic.toppoc
	ldr	r3, [r0, #992]	@ pH264Ctx_12(D)->CurrPic.bottompoc, pH264Ctx_12(D)->CurrPic.bottompoc
	rsb	r2, r1, r2	@ D.42130, D.42130, pH264Ctx_12(D)->CurrPic.toppoc
	str	r2, [r0, #988]	@ D.42130, pH264Ctx_12(D)->CurrPic.toppoc
	rsb	r3, r1, r3	@ D.42130, D.42130, pH264Ctx_12(D)->CurrPic.bottompoc
	str	r3, [r0, #992]	@ D.42130, pH264Ctx_12(D)->CurrPic.bottompoc
	cmp	r3, r2	@ D.42130, D.42130
	movge	r3, r2	@ D.42130, D.42130
	str	r3, [r0, #984]	@ D.42130, pH264Ctx_12(D)->CurrPic.framepoc
	str	r3, [r0, #980]	@ D.42130, pH264Ctx_12(D)->CurrPic.thispoc
	ldr	r1, [r9, #3456]	@ D.42130, pH264Ctx_12(D)->CurrPOC.ThisPOC
	ldr	r2, [r9, #3444]	@ pH264Ctx_12(D)->CurrPOC.toppoc, pH264Ctx_12(D)->CurrPOC.toppoc
	ldr	r3, [r9, #3448]	@ pH264Ctx_12(D)->CurrPOC.bottompoc, pH264Ctx_12(D)->CurrPOC.bottompoc
	rsb	r2, r1, r2	@ D.42130, D.42130, pH264Ctx_12(D)->CurrPOC.toppoc
	str	r2, [r9, #3444]	@ D.42130, pH264Ctx_12(D)->CurrPOC.toppoc
	rsb	r3, r1, r3	@ D.42130, D.42130, pH264Ctx_12(D)->CurrPOC.bottompoc
	str	r3, [r9, #3448]	@ D.42130, pH264Ctx_12(D)->CurrPOC.bottompoc
	cmp	r3, r2	@ D.42130, D.42130
	movge	r3, r2	@ D.42130, D.42130
	str	r3, [r9, #3452]	@ D.42130, pH264Ctx_12(D)->CurrPOC.framepoc
	str	r3, [r9, #3456]	@ D.42130, pH264Ctx_12(D)->CurrPOC.ThisPOC
	b	.L2489	@
.L2490:
	ldr	r2, [sp, #4]	@ tmp254, %sfp
	str	r3, [r2, #988]	@ tmp190, pH264Ctx_12(D)->CurrPic.toppoc
	str	r3, [r2, #980]	@ tmp190, pH264Ctx_12(D)->CurrPic.thispoc
	str	r3, [r9, #3444]	@ tmp190, pH264Ctx_12(D)->CurrPOC.toppoc
	str	r3, [r9, #3456]	@ tmp190, pH264Ctx_12(D)->CurrPOC.ThisPOC
	b	.L2489	@
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
	beq	.L2499	@,
	add	r10, r0, #24576	@ tmp249, pH264Ctx,
	ldr	r3, [r10, #2052]	@ pH264Ctx_11(D)->DPB.used_size, pH264Ctx_11(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_11(D)->DPB.used_size,
	beq	.L2505	@,
	add	r5, r0, #26368	@ ivtmp.2753, pH264Ctx,
	mov	fp, #0	@ i,
	mov	r4, fp	@ tmp251, i
	mov	r9, r5	@ ivtmp.2817, ivtmp.2753
	mov	r8, r5	@ ivtmp.2824, ivtmp.2817
	add	r9, r9, #124	@ ivtmp.2817, ivtmp.2817,
	add	r5, r5, #64	@ ivtmp.2753, ivtmp.2753,
	add	r8, r8, #188	@ ivtmp.2824, ivtmp.2824,
.L2504:
	ldr	r3, [r5]	@ D.42236, MEM[base: _88, offset: 0B]
	mov	r2, #0	@,
	add	fp, fp, #1	@ i, i,
	strb	r4, [r3, #402]	@ tmp251, _18->frame.is_short_term
	strb	r4, [r3, #401]	@ tmp251, _18->frame.is_long_term
	ldr	r3, [r5]	@ D.42236, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #438]	@ tmp251, _21->top_field.is_short_term
	strb	r4, [r3, #437]	@ tmp251, _21->top_field.is_long_term
	ldr	r3, [r5]	@ D.42236, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #474]	@ tmp251, _24->bottom_field.is_short_term
	strb	r4, [r3, #473]	@ tmp251, _24->bottom_field.is_long_term
	ldr	r3, [r5]	@ D.42236, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #2]	@ tmp251, _27->is_reference
	ldr	r3, [r5]	@ MEM[base: _88, offset: 0B], MEM[base: _88, offset: 0B]
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r1, [r3, #508]	@, _30->logic_fs_id
	bl	FSP_SetRef	@
	ldr	r3, [r5]	@ D.42236, MEM[base: _88, offset: 0B]
	mov	r2, #1	@ tmp254,
	strb	r4, [r3, #1]	@ tmp251, _33->is_used
	ldr	r3, [r5]	@ D.42236, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #4]	@ tmp251, _35->is_in_dpb
	ldr	r3, [r5]	@ D.42236, MEM[base: _88, offset: 0B]
	str	r2, [r3, #532]	@ tmp254, _37->is_displayed
	ldr	r2, [r5]	@ D.42236, MEM[base: _88, offset: 0B]
	ldr	r3, [r2, #552]	@ D.42235, _39->apc_idc
	add	r3, r3, #6656	@ tmp194, D.42235,
	add	r3, r3, #4	@ tmp194, tmp194,
	add	r3, r7, r3, lsl #2	@ tmp195, pH264Ctx, tmp194,
	str	r4, [r3, #4]	@ tmp251, pH264Ctx_11(D)->APC.is_used
	ldr	r1, [r2, #508]	@, _39->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	bl	FSP_GetDisplay	@
	mov	r2, #0	@,
	cmp	r0, #3	@,
	beq	.L2503	@,
	ldr	r3, [r5]	@ MEM[base: _88, offset: 0B], MEM[base: _88, offset: 0B]
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r1, [r3, #508]	@, _47->logic_fs_id
	bl	FSP_SetDisplay	@
.L2503:
	str	r4, [r5], #4	@ tmp251, MEM[base: _88, offset: 0B]
	str	r4, [r9, #4]!	@ tmp251, MEM[base: _98, offset: 0B]
	str	r4, [r8, #4]!	@ tmp251, MEM[base: _99, offset: 0B]
	ldr	r3, [r10, #2052]	@ pH264Ctx_11(D)->DPB.used_size, pH264Ctx_11(D)->DPB.used_size
	cmp	r3, fp	@ pH264Ctx_11(D)->DPB.used_size, i
	bhi	.L2504	@,
.L2505:
	mov	r3, #0	@ tmp163,
	str	r3, [r10, #2052]	@ tmp163, pH264Ctx_11(D)->DPB.used_size
	ldr	r1, [r6, #2168]	@ D.42235, pH264Ctx_11(D)->TotalPmvNum
	cmp	r1, r3	@ D.42235,
	addne	r2, r7, #51200	@ ivtmp.2743, pH264Ctx,
	addne	r2, r2, #44	@ ivtmp.2743, ivtmp.2743,
	movne	r0, r3	@ tmp250, i
	beq	.L2502	@,
.L2508:
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ tmp250, MEM[base: _8, offset: 0B]
	cmp	r3, r1	@ i, D.42235
	bne	.L2508	@,
.L2502:
	mov	r0, r7	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r7	@, pH264Ctx
	bl	UpdateLTReflist	@
	ldr	r3, [r6, #964]	@ pH264Ctx_11(D)->CurrPic.pMarkPara, pH264Ctx_11(D)->CurrPic.pMarkPara
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ _60->long_term_reference_flag, _60->long_term_reference_flag
	cmp	r3, #0	@ _60->long_term_reference_flag,
	bne	.L2522	@,
	str	r3, [r10, #2064]	@ _60->long_term_reference_flag, pH264Ctx_11(D)->DPB.max_long_term_pic_idx
	mov	r0, r3	@ D.42230, _60->long_term_reference_flag
	strb	r3, [r6, #556]	@ _60->long_term_reference_flag, pH264Ctx_11(D)->CurrPic.is_long_term
	mov	r3, #1	@ tmp245,
	strb	r3, [r6, #557]	@ tmp245, pH264Ctx_11(D)->CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2499:
	ldrb	r3, [r6, #553]	@ zero_extendqisi2	@ pH264Ctx_11(D)->CurrPic.field_pair_flag, pH264Ctx_11(D)->CurrPic.field_pair_flag
	cmp	r3, #0	@ pH264Ctx_11(D)->CurrPic.field_pair_flag,
	beq	.L2523	@,
.L2520:
	add	r10, r7, #24576	@ tmp249, pH264Ctx,
	b	.L2502	@
.L2522:
	mov	r3, #0	@ tmp227,
	mov	r2, #1	@ tmp224,
	mov	r0, r3	@ D.42230, tmp227
	str	r2, [r10, #2064]	@ tmp224, pH264Ctx_11(D)->DPB.max_long_term_pic_idx
	strb	r2, [r6, #556]	@ tmp224, pH264Ctx_11(D)->CurrPic.is_long_term
	str	r3, [r6, #972]	@ tmp227, pH264Ctx_11(D)->CurrPic.long_term_frame_idx
	strb	r3, [r6, #557]	@ tmp227, pH264Ctx_11(D)->CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2523:
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2520	@,
	mvn	r0, #0	@ D.42230,
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
	sub	r3, r3, #2	@ D.42243, pH264Ctx_6(D)->CurrPic.structure,
	clz	r3, r3	@ D.42243, D.42243
	mov	r3, r3, lsr #5	@ D.42243, D.42243,
	str	r3, [r6, #3440]	@ D.42243, pH264Ctx_6(D)->CurrPOC.last_pic_bottom_field
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.nal_unit_type, pH264Ctx_6(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_6(D)->CurrPic.nal_unit_type,
	beq	.L2525	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_6(D)->CurrPic.pic_type, pH264Ctx_6(D)->CurrPic.pic_type
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrPic.pic_type,
	bne	.L2526	@,
	ldr	r3, [r0]	@ D.42246, pH264Ctx_6(D)->pstExtraData
	ldr	r2, [r3, #540]	@ _14->stPvrInfo.u32BFrmRefFlag, _14->stPvrInfo.u32BFrmRefFlag
	cmp	r2, #1	@ _14->stPvrInfo.u32BFrmRefFlag,
	beq	.L2551	@,
.L2526:
	ldr	r3, [r4, #964]	@ pH264Ctx_6(D)->CurrPic.pMarkPara, pH264Ctx_6(D)->CurrPic.pMarkPara
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ _21->adaptive_ref_pic_marking_mode_flag, _21->adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ _21->adaptive_ref_pic_marking_mode_flag,
	ldr	r3, [r4, #976]	@ pH264Ctx_6(D)->CurrPic.nal_ref_idc, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	beq	.L2552	@,
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrPic.nal_ref_idc,
	bne	.L2553	@,
.L2533:
	mov	r0, #0	@ D.42241,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2552:
	cmp	r3, #0	@ D.42249,
	beq	.L2533	@,
.L2532:
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.field_pair_flag, pH264Ctx_6(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ pH264Ctx_6(D)->CurrPic.field_pair_flag,
	bne	.L2537	@,
	add	r2, r5, #24576	@ tmp195, pH264Ctx,
	ldr	r1, [r6, #1156]	@ pH264Ctx_6(D)->CurrSPS.num_ref_frames, pH264Ctx_6(D)->CurrSPS.num_ref_frames
	ldr	ip, [r2, #2060]	@ pH264Ctx_6(D)->DPB.ltref_frames_in_buffer, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer
	ldr	r0, [r2, #2056]	@ pH264Ctx_6(D)->DPB.ref_frames_in_buffer, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	rsb	r2, ip, r1	@ D.42245, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer, pH264Ctx_6(D)->CurrSPS.num_ref_frames
	cmp	r0, r2	@ pH264Ctx_6(D)->DPB.ref_frames_in_buffer, D.42245
	beq	.L2554	@,
.L2538:
	mov	r2, #0	@ tmp208,
	strb	r2, [r4, #556]	@ tmp208, pH264Ctx_6(D)->CurrPic.is_long_term
.L2535:
	cmp	r3, #0	@ D.42249,
	beq	.L2533	@,
.L2537:
	ldrb	r3, [r4, #556]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.is_long_term, pH264Ctx_6(D)->CurrPic.is_long_term
	mov	r0, #0	@ D.42241,
	clz	r3, r3	@ tmp189, pH264Ctx_6(D)->CurrPic.is_long_term
	mov	r3, r3, lsr #5	@ tmp189, tmp189,
	strb	r3, [r4, #557]	@ tmp189, pH264Ctx_6(D)->CurrPic.is_short_term
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2551:
	ldr	r2, [r3, #536]	@ _14->stPvrInfo.u32IDRFlag, _14->stPvrInfo.u32IDRFlag
	cmp	r2, #0	@ _14->stPvrInfo.u32IDRFlag,
	bne	.L2526	@,
	ldr	r2, [r3, #544]	@ _14->stPvrInfo.u32ContinuousFlag, _14->stPvrInfo.u32ContinuousFlag
	cmp	r2, #0	@ _14->stPvrInfo.u32ContinuousFlag,
	bne	.L2526	@,
	ldr	r3, [r3, #520]	@ _14->s32FastForwardBackwardSpeed, _14->s32FastForwardBackwardSpeed
	add	r3, r3, #1020	@ D.42247, _14->s32FastForwardBackwardSpeed,
	add	r3, r3, #3	@ D.42247, D.42247,
	cmp	r3, #2048	@ D.42247,
	bcc	.L2526	@,
.L2525:
	mov	r0, r5	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	bne	.L2527	@,
.L2534:
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.nal_unit_type, pH264Ctx_6(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_6(D)->CurrPic.nal_unit_type,
	ldreq	r3, [r4, #976]	@ D.42249, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	beq	.L2535	@,
	ldr	r3, [r4, #976]	@ D.42249, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ D.42249,
	beq	.L2533	@,
	ldr	r2, [r4, #964]	@ pH264Ctx_6(D)->CurrPic.pMarkPara, pH264Ctx_6(D)->CurrPic.pMarkPara
	ldrb	r2, [r2, #3]	@ zero_extendqisi2	@ _30->adaptive_ref_pic_marking_mode_flag, _30->adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ _30->adaptive_ref_pic_marking_mode_flag,
	beq	.L2532	@,
	b	.L2537	@
.L2553:
	mov	r0, r5	@, pH264Ctx
	bl	AdaptiveMemMark	@
	cmp	r0, #0	@,
	beq	.L2534	@,
.L2527:
	mvn	r0, #0	@ D.42241,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2554:
	mov	r0, r5	@, pH264Ctx
	bl	SlidingWinMark.part.2	@
	ldr	r3, [r4, #976]	@ D.42249, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	b	.L2538	@
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
	add	r4, r0, #49152	@ tmp931, pH264Ctx,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldrb	r6, [r4, #555]	@ zero_extendqisi2	@ D.42255, pH264Ctx_27(D)->CurrPic.structure
	cmp	r6, #1	@ D.42255,
	beq	.L2557	@,
	bcc	.L2558	@,
	cmp	r6, #2	@ D.42255,
	beq	.L2559	@,
	mov	r6, #0	@ ret,
.L2556:
	mov	r0, r6	@, ret
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2559:
	ldr	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r2, #3	@ tmp691,
	strb	r2, [r3, #400]	@ tmp691, _240->frame.structure
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ D.42255, pH264Ctx_27(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ D.42255,
	bne	.L2576	@,
	ldr	r1, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r1, #0	@ D.42254,
	beq	.L2577	@,
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	str	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r3, [r3, #476]	@ D.42254,
	mov	r6, r0	@ ret,
.L2578:
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	mov	r8, #2	@ tmp712,
	ldrb	r0, [r4, #554]	@ zero_extendqisi2	@ D.42257, pH264Ctx_27(D)->CurrPic.non_existing
	mov	r7, #0	@ tmp716,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp931,
	strb	r0, [r3]	@ D.42257, _344->non_existing
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r8, [r3, #1]	@ tmp712, _347->is_used
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp716, _349->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp716, _351->is_displayed
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp716, _353->is_reference
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r0, [r4, #996]	@ D.42258, pH264Ctx_27(D)->CurrPic.pic_type
	str	r0, [r3, #540]	@ D.42258, _355->pic_type
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r7, [r3, #536]	@ tmp716, _358->MbaffFrameFlag
	ldr	r0, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.42254,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.42258, pH264Ctx_27(D)->CurrPic.err_level
	str	r2, [r3, #492]	@ D.42258, _362->bottom_field.err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r3, #492]	@ D.42258, _365->bottom_field.err_level
	str	r2, [r3, #420]	@ D.42258, _365->frame.err_level
	str	r2, [r3, #544]	@ D.42258, _365->err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r8, [r3, #472]	@ tmp712, _369->bottom_field.structure
	ldrb	r2, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag, pH264Ctx_27(D)->CurrPic.mode_skip_flag
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r2, #1	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag,
	moveq	r2, r8	@ D.42255,
	movne	r2, r7	@ D.42255,
	strb	r2, [r3, #3]	@ D.42255, _371->mode_skip_flag
	ldr	r8, [r4, #3620]	@ pH264Ctx_27(D)->IModeOutFlag, pH264Ctx_27(D)->IModeOutFlag
	cmp	r8, #1	@ pH264Ctx_27(D)->IModeOutFlag,
	bne	.L2556	@,
.L2630:
	ldr	r3, [r4, #1544]	@ pH264Ctx_27(D)->pDirectOutBuf, pH264Ctx_27(D)->pDirectOutBuf
	mov	r2, r7	@, tmp716
	ldr	r0, [r4, #3688]	@, pH264Ctx_27(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_SetRef	@
	mov	r2, r7	@, tmp716
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #1544]	@, pH264Ctx_27(D)->pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_27(D)->pDirectOutBuf, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_27(D)->pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2588	@,
	ldr	r3, [r4, #960]	@ pH264Ctx_27(D)->CurrPic.frame_store, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r2, r8	@, pH264Ctx_27(D)->IModeOutFlag
	ldr	r0, [r4, #3688]	@, pH264Ctx_27(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_ClearLogicFs	@
	b	.L2588	@
.L2558:
	ldr	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r2, #0	@ tmp350,
	strb	r2, [r3, #400]	@ tmp350, _29->frame.structure
	ldr	r1, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r1, r2	@ D.42254,
	beq	.L2560	@,
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_27(D)->pDirectOutBuf, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, #0	@ pH264Ctx_27(D)->pDirectOutBuf,
	beq	.L2560	@,
	ldr	r3, [r4, #960]	@ pH264Ctx_27(D)->CurrPic.frame_store, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_27(D)->ChanID
	ldr	r1, [r3, #508]	@, _35->logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2560:
	ldr	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r0, #3	@ tmp383,
	mov	r7, #0	@ tmp387,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp931,
	str	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r3, [r3, #404]	@ D.42254, _39->frame.frame_store
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	ip, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	str	ip, [r3, #440]	@ D.42254, _42->top_field.frame_store
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	ip, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	str	ip, [r3, #476]	@ D.42254, _45->bottom_field.frame_store
	ldrb	ip, [r4, #554]	@ zero_extendqisi2	@ D.42257, pH264Ctx_27(D)->CurrPic.non_existing
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	ip, [r3]	@ D.42257, _48->non_existing
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r0, [r3, #1]	@ tmp383, _51->is_used
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp387, _53->is_reference
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp387, _55->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp387, _57->is_displayed
	ldr	r0, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.42254,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r1, [r4, #1004]	@ D.42258, pH264Ctx_27(D)->CurrPic.err_level
	mov	r2, r7	@, tmp387
	str	r1, [r3, #420]	@ D.42258, _61->frame.err_level
	str	r1, [r3, #544]	@ D.42258, _61->err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r7, [r3, #400]	@ tmp387, _65->frame.structure
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ D.42258, pH264Ctx_27(D)->CurrPic.pic_type
	str	r1, [r3, #540]	@ D.42258, _67->pic_type
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldrb	r1, [r4, #561]	@ zero_extendqisi2	@ pH264Ctx_27(D)->CurrPic.MbaffFrameFlag, pH264Ctx_27(D)->CurrPic.MbaffFrameFlag
	str	r1, [r3, #536]	@ pH264Ctx_27(D)->CurrPic.MbaffFrameFlag, _70->MbaffFrameFlag
	ldrb	r1, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag, pH264Ctx_27(D)->CurrPic.mode_skip_flag
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r1, #1	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag,
	moveq	r6, #3	@ D.42255,
	strb	r6, [r3, #3]	@ D.42255, _74->mode_skip_flag
	ldr	r3, [r4, #1544]	@ pH264Ctx_27(D)->pDirectOutBuf, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r0, [r4, #3688]	@, pH264Ctx_27(D)->ChanID
	ldr	r1, [r3, #508]	@, _78->logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r7	@, tmp387
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #1544]	@, pH264Ctx_27(D)->pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_27(D)->pDirectOutBuf, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_27(D)->pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2588	@,
.L2628:
	ldr	r3, [r4, #960]	@ pH264Ctx_27(D)->CurrPic.frame_store, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_27(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_ClearLogicFs	@
.L2588:
	mov	r3, #0	@ tmp925,
	mov	r0, r6	@, ret
	str	r3, [r4, #1544]	@ tmp925, pH264Ctx_27(D)->pDirectOutBuf
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2557:
	ldr	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r2, #3	@ tmp452,
	strb	r2, [r3, #400]	@ tmp452, _90->frame.structure
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_27(D)->CurrPic.field_pair_flag, pH264Ctx_27(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ pH264Ctx_27(D)->CurrPic.field_pair_flag,
	bne	.L2564	@,
	ldr	r1, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r1, #0	@ D.42254,
	beq	.L2565	@,
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	str	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r3, [r3, #440]	@ D.42254,
	mov	r6, r0	@ ret,
.L2566:
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	mov	r8, #1	@ tmp474,
	ldrb	r0, [r4, #554]	@ zero_extendqisi2	@ D.42257, pH264Ctx_27(D)->CurrPic.non_existing
	mov	r7, #0	@ tmp478,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp931,
	strb	r0, [r3]	@ D.42257, _194->non_existing
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r8, [r3, #1]	@ tmp474, _197->is_used
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp478, _199->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp478, _201->is_displayed
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp478, _203->is_reference
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r0, [r4, #996]	@ D.42258, pH264Ctx_27(D)->CurrPic.pic_type
	str	r0, [r3, #540]	@ D.42258, _205->pic_type
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r7, [r3, #536]	@ tmp478, _208->MbaffFrameFlag
	ldr	r0, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.42254,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.42258, pH264Ctx_27(D)->CurrPic.err_level
	str	r2, [r3, #456]	@ D.42258, _212->top_field.err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r3, #456]	@ D.42258, _215->top_field.err_level
	str	r2, [r3, #420]	@ D.42258, _215->frame.err_level
	str	r2, [r3, #544]	@ D.42258, _215->err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r8, [r3, #436]	@ tmp474, _219->top_field.structure
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag, pH264Ctx_27(D)->CurrPic.mode_skip_flag
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	rsb	r3, r8, r3	@ tmp517,, pH264Ctx_27(D)->CurrPic.mode_skip_flag
	clz	r3, r3	@ tmp517, tmp517
	mov	r3, r3, lsr #5	@ tmp517, tmp517,
	strb	r3, [r2, #3]	@ tmp517, _221->mode_skip_flag
	ldr	r8, [r4, #3620]	@ pH264Ctx_27(D)->IModeOutFlag, pH264Ctx_27(D)->IModeOutFlag
	cmp	r8, #1	@ pH264Ctx_27(D)->IModeOutFlag,
	beq	.L2630	@,
	mov	r0, r6	@, ret
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2576:
	ldr	lr, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp931,
	cmp	lr, #0	@ D.42254,
	ldreq	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	streq	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	streq	r3, [r3, #476]	@ D.42254, _244->bottom_field.frame_store
	ldreq	lr, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	add	r0, lr, #8	@, D.42254,
	ldrd	r6, [lr, #32]	@ OtherFieldDisptime, D.42254,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _403->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _403->fs_image.PTS
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.42254,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _403->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _403->fs_image.DispFrameDistance
	strd	r6, [sp]	@ OtherFieldDisptime, %sfp
	str	ip, [sp, #12]	@ OtherFieldPts, %sfp
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _403->fs_image.DistanceBeforeFirstFrame
	ldr	r6, [lr, #88]	@ OtherFieldGopNum, _403->fs_image.GopNum
	str	r3, [sp, #8]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #8]	@ OtherFieldPts, %sfp
	add	r0, r5, #49664	@ tmp798, pH264Ctx,
	ldr	ip, [sp, #12]	@ OtherFieldPts, %sfp
	movw	r2, #49728	@ tmp797,
	ldr	lr, [r5, r2]	@ pH264Ctx_27(D)->CurrPic.fs_image.PTS, pH264Ctx_27(D)->CurrPic.fs_image.PTS
	ldr	r1, [r0, #68]	@ pH264Ctx_27(D)->CurrPic.fs_image.PTS, pH264Ctx_27(D)->CurrPic.fs_image.PTS
	and	r2, ip, r3	@ tmp806, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp811, tmp806,
	movw	r0, #49744	@ tmp823,
	and	r1, r1, lr	@ tmp800, pH264Ctx_27(D)->CurrPic.fs_image.PTS, pH264Ctx_27(D)->CurrPic.fs_image.PTS
	movne	r2, #1	@ tmp811,
	cmn	r1, #1	@ tmp800,
	movne	r2, #0	@ tmp811,
	cmp	r2, #0	@ tmp811,
	ldrne	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strne	r3, [r2, #20]	@ OtherFieldPts, _257->fs_image.PTS
	add	r3, r5, #49664	@ tmp818, pH264Ctx,
	add	r3, r3, #80	@ tmp818, tmp818,
	strne	ip, [r2, #16]	@ OtherFieldPts, _257->fs_image.PTS
	ldr	r1, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	mov	ip, #2	@ tmp870,
	ldrd	r2, [r3, #-8]	@ D.42259, tmp818,
	cmp	r3, r9	@ D.42259, OtherFieldUsertag
	cmpeq	r2, r8	@ D.42259, OtherFieldUsertag
	movhi	r2, r8	@ D.42259, OtherFieldUsertag
	movhi	r3, r9	@ D.42259, OtherFieldUsertag
	ldrd	r8, [sp]	@ OtherFieldDisptime, %sfp
	strd	r2, [r1, #24]	@ D.42259, D.42254,
	ldrd	r2, [r5, r0]	@ D.42259, pH264Ctx, tmp823
	mov	r0, #3	@ tmp874,
	ldr	r1, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r9	@ D.42259, OtherFieldDisptime
	cmpeq	r2, r8	@ D.42259, OtherFieldDisptime
	movhi	r2, r8	@ D.42259, OtherFieldDisptime
	movhi	r3, r9	@ D.42259, OtherFieldDisptime
	strd	r2, [r1, #32]	@ D.42259, D.42254,
	ldr	r3, [r4, #636]	@ pH264Ctx_27(D)->CurrPic.fs_image.DispEnableFlag, pH264Ctx_27(D)->CurrPic.fs_image.DispEnableFlag
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, fp	@ pH264Ctx_27(D)->CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.42258, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.42258, _267->fs_image.DispEnableFlag
	ldr	r3, [r4, #640]	@ pH264Ctx_27(D)->CurrPic.fs_image.DispFrameDistance, pH264Ctx_27(D)->CurrPic.fs_image.DispFrameDistance
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r10	@ pH264Ctx_27(D)->CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.42258, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.42258, _271->fs_image.DispFrameDistance
	ldr	r3, [r4, #644]	@ pH264Ctx_27(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, pH264Ctx_27(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_27(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r7	@ D.42258, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.42258, _275->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #648]	@ pH264Ctx_27(D)->CurrPic.fs_image.GopNum, pH264Ctx_27(D)->CurrPic.fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r6	@ pH264Ctx_27(D)->CurrPic.fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r6	@ D.42258, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.42258, _279->fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.42255, _283->non_existing
	cmp	r3, #0	@ D.42255,
	ldrneb	r3, [r4, #554]	@ zero_extendqisi2	@ D.42255, pH264Ctx_27(D)->CurrPic.non_existing
	strb	r3, [r2]	@ D.42255, _283->non_existing
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _287->is_used, _287->is_used
	orr	r3, r3, ip	@ tmp859, _287->is_used,
	strb	r3, [r2, #1]	@ tmp859, _287->is_used
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ pH264Ctx_27(D)->CurrPic.pic_type, pH264Ctx_27(D)->CurrPic.pic_type
	ldr	r3, [r2, #540]	@ _292->pic_type, _292->pic_type
	cmp	r3, r1	@ _292->pic_type, pH264Ctx_27(D)->CurrPic.pic_type
	movcc	r3, r1	@ D.42258, pH264Ctx_27(D)->CurrPic.pic_type
	str	r3, [r2, #540]	@ D.42258, _292->pic_type
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	ip, [r3, #472]	@ tmp870, _296->bottom_field.structure
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r0, [r3, #400]	@ tmp874, _298->frame.structure
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.42258, pH264Ctx_27(D)->CurrPic.err_level
	str	r2, [r3, #492]	@ D.42258, _300->bottom_field.err_level
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r3, [r2, #492]	@ _303->bottom_field.err_level, _303->bottom_field.err_level
	ldr	r1, [r2, #456]	@ _303->top_field.err_level, _303->top_field.err_level
	add	r3, r3, r1	@ D.42258, _303->bottom_field.err_level, _303->top_field.err_level
	mov	r3, r3, lsr #1	@ D.42258, D.42258,
	str	r3, [r2, #420]	@ D.42258, _303->frame.err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r3, #420]	@ _309->frame.err_level, _309->frame.err_level
	str	r2, [r3, #544]	@ _309->frame.err_level, _309->err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r3, #476]	@ _312->bottom_field.frame_store, _312->bottom_field.frame_store
	str	r2, [r3, #404]	@ _312->bottom_field.frame_store, _312->frame.frame_store
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag, pH264Ctx_27(D)->CurrPic.mode_skip_flag
	cmp	r3, #1	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag,
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _316->mode_skip_flag,
	beq	.L2632	@,
.L2587:
	strb	r2, [r3, #3]	@ D.42255,
	mov	r2, #0	@,
	ldr	r3, [r4, #1544]	@ pH264Ctx_27(D)->pDirectOutBuf, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r0, [r4, #3688]	@, pH264Ctx_27(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_SetRef	@
	mov	r0, r5	@, pH264Ctx
	mov	r2, #0	@,
	ldr	r1, [r4, #1544]	@, pH264Ctx_27(D)->pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_27(D)->pDirectOutBuf, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, #0	@ pH264Ctx_27(D)->pDirectOutBuf,
	mov	r6, r0	@ ret,
	bne	.L2628	@,
	b	.L2588	@
.L2564:
	ldr	lr, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp931,
	cmp	lr, #0	@ D.42254,
	ldreq	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	streq	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	streq	r3, [r3, #440]	@ D.42254, _94->top_field.frame_store
	ldreq	lr, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	add	r0, lr, #8	@, D.42254,
	ldrd	r6, [lr, #32]	@ OtherFieldDisptime, D.42254,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _405->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _405->fs_image.PTS
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.42254,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _405->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _405->fs_image.DispFrameDistance
	strd	r6, [sp]	@ OtherFieldDisptime, %sfp
	str	ip, [sp, #12]	@ OtherFieldPts, %sfp
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _405->fs_image.DistanceBeforeFirstFrame
	ldr	r6, [lr, #88]	@ OtherFieldGopNum, _405->fs_image.GopNum
	str	r3, [sp, #8]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #8]	@ OtherFieldPts, %sfp
	add	r0, r5, #49664	@ tmp561, pH264Ctx,
	ldr	ip, [sp, #12]	@ OtherFieldPts, %sfp
	movw	r2, #49728	@ tmp560,
	ldr	lr, [r5, r2]	@ pH264Ctx_27(D)->CurrPic.fs_image.PTS, pH264Ctx_27(D)->CurrPic.fs_image.PTS
	ldr	r1, [r0, #68]	@ pH264Ctx_27(D)->CurrPic.fs_image.PTS, pH264Ctx_27(D)->CurrPic.fs_image.PTS
	and	r2, ip, r3	@ tmp569, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp574, tmp569,
	movw	r0, #49744	@ tmp586,
	and	r1, r1, lr	@ tmp563, pH264Ctx_27(D)->CurrPic.fs_image.PTS, pH264Ctx_27(D)->CurrPic.fs_image.PTS
	movne	r2, #1	@ tmp574,
	cmn	r1, #1	@ tmp563,
	movne	r2, #0	@ tmp574,
	cmp	r2, #0	@ tmp574,
	ldrne	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strne	r3, [r2, #20]	@ OtherFieldPts, _107->fs_image.PTS
	add	r3, r5, #49664	@ tmp581, pH264Ctx,
	add	r3, r3, #80	@ tmp581, tmp581,
	strne	ip, [r2, #16]	@ OtherFieldPts, _107->fs_image.PTS
	ldr	r1, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	mov	ip, #1	@ tmp633,
	ldrd	r2, [r3, #-8]	@ D.42259, tmp581,
	cmp	r3, r9	@ D.42259, OtherFieldUsertag
	cmpeq	r2, r8	@ D.42259, OtherFieldUsertag
	movhi	r2, r8	@ D.42259, OtherFieldUsertag
	movhi	r3, r9	@ D.42259, OtherFieldUsertag
	ldrd	r8, [sp]	@ OtherFieldDisptime, %sfp
	strd	r2, [r1, #24]	@ D.42259, D.42254,
	ldrd	r2, [r5, r0]	@ D.42259, pH264Ctx, tmp586
	mov	r0, #3	@ tmp637,
	ldr	r1, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r9	@ D.42259, OtherFieldDisptime
	cmpeq	r2, r8	@ D.42259, OtherFieldDisptime
	movhi	r2, r8	@ D.42259, OtherFieldDisptime
	movhi	r3, r9	@ D.42259, OtherFieldDisptime
	strd	r2, [r1, #32]	@ D.42259, D.42254,
	ldr	r3, [r4, #636]	@ pH264Ctx_27(D)->CurrPic.fs_image.DispEnableFlag, pH264Ctx_27(D)->CurrPic.fs_image.DispEnableFlag
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, fp	@ pH264Ctx_27(D)->CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.42258, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.42258, _117->fs_image.DispEnableFlag
	ldr	r3, [r4, #640]	@ pH264Ctx_27(D)->CurrPic.fs_image.DispFrameDistance, pH264Ctx_27(D)->CurrPic.fs_image.DispFrameDistance
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r10	@ pH264Ctx_27(D)->CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.42258, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.42258, _121->fs_image.DispFrameDistance
	ldr	r3, [r4, #644]	@ pH264Ctx_27(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, pH264Ctx_27(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_27(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r7	@ D.42258, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.42258, _125->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #648]	@ pH264Ctx_27(D)->CurrPic.fs_image.GopNum, pH264Ctx_27(D)->CurrPic.fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	cmp	r3, r6	@ pH264Ctx_27(D)->CurrPic.fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r6	@ D.42258, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.42258, _129->fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.42255, _133->non_existing
	cmp	r3, #0	@ D.42255,
	ldrneb	r3, [r4, #554]	@ zero_extendqisi2	@ D.42255, pH264Ctx_27(D)->CurrPic.non_existing
	strb	r3, [r2]	@ D.42255, _133->non_existing
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _137->is_used, _137->is_used
	orr	r3, r3, ip	@ tmp622, _137->is_used,
	strb	r3, [r2, #1]	@ tmp622, _137->is_used
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ pH264Ctx_27(D)->CurrPic.pic_type, pH264Ctx_27(D)->CurrPic.pic_type
	ldr	r3, [r2, #540]	@ _142->pic_type, _142->pic_type
	cmp	r3, r1	@ _142->pic_type, pH264Ctx_27(D)->CurrPic.pic_type
	movcc	r3, r1	@ D.42258, pH264Ctx_27(D)->CurrPic.pic_type
	str	r3, [r2, #540]	@ D.42258, _142->pic_type
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	ip, [r3, #436]	@ tmp633, _146->top_field.structure
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	strb	r0, [r3, #400]	@ tmp637, _148->frame.structure
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.42258, pH264Ctx_27(D)->CurrPic.err_level
	str	r2, [r3, #456]	@ D.42258, _150->top_field.err_level
	ldr	r2, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r3, [r2, #492]	@ _153->bottom_field.err_level, _153->bottom_field.err_level
	ldr	r1, [r2, #456]	@ _153->top_field.err_level, _153->top_field.err_level
	add	r3, r3, r1	@ D.42258, _153->bottom_field.err_level, _153->top_field.err_level
	mov	r3, r3, lsr ip	@ D.42258, D.42258,
	str	r3, [r2, #420]	@ D.42258, _153->frame.err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r3, #420]	@ _159->frame.err_level, _159->frame.err_level
	str	r2, [r3, #544]	@ _159->frame.err_level, _159->err_level
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldr	r2, [r3, #440]	@ _162->top_field.frame_store, _162->top_field.frame_store
	str	r2, [r3, #404]	@ _162->top_field.frame_store, _162->frame.frame_store
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag, pH264Ctx_27(D)->CurrPic.mode_skip_flag
	cmp	r3, ip	@ pH264Ctx_27(D)->CurrPic.mode_skip_flag,
	ldr	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _166->mode_skip_flag,
	bne	.L2587	@,
.L2632:
	orr	r2, r2, ip	@ D.42255, _316->mode_skip_flag,
	b	.L2587	@
.L2577:
	ldr	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r6, r1	@ ret, D.42254
	str	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r3, [r3, #476]	@ D.42254,
	b	.L2578	@
.L2565:
	ldr	r3, [r4, #960]	@ D.42254, pH264Ctx_27(D)->CurrPic.frame_store
	mov	r6, r1	@ ret, D.42254
	str	r3, [r4, #1544]	@ D.42254, pH264Ctx_27(D)->pDirectOutBuf
	str	r3, [r3, #440]	@ D.42254,
	b	.L2566	@
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
	add	r5, r0, #24576	@ tmp164, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_9(D)->DPB.used_size,
	addne	r7, r0, #26368	@ ivtmp.2839, pH264Ctx,
	movne	r6, #0	@ i,
	addne	r7, r7, #60	@ ivtmp.2839, ivtmp.2839,
	bne	.L2639	@,
	b	.L2640	@
.L2638:
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, r6	@ pH264Ctx_9(D)->DPB.used_size, i
	bls	.L2640	@,
.L2639:
	ldr	r1, [r7, #4]!	@ D.42292, MEM[base: _44, offset: 0B]
	add	r6, r6, #1	@ i, i,
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _11->is_reference, _11->is_reference
	cmp	r3, #0	@ _11->is_reference,
	beq	.L2638	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, r6	@ pH264Ctx_9(D)->DPB.used_size, i
	bhi	.L2639	@,
.L2640:
	mov	r0, r4	@, pH264Ctx
	mov	r6, #0	@ tmp167,
	bl	RemoveUnUsedFrameStore	@
	mov	r7, r0	@ ret,
.L2637:
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	mov	r2, sp	@,
	add	r1, sp, #4	@ tmp168,,
	mov	r0, r4	@, pH264Ctx
	cmp	r3, #0	@ pH264Ctx_9(D)->DPB.used_size,
	beq	.L2652	@,
	bl	GetMinPOC	@
	ldr	r3, [sp]	@ pos, pos
	mov	r0, r4	@, pH264Ctx
	add	r3, r4, r3, lsl #2	@ D.42298, pH264Ctx, pos,
	add	r3, r3, #24576	@ tmp146, D.42298,
	ldr	r2, [r3, #1856]	@ D.42292, MEM[(struct H264_CTX_S *)_46 + 26432B]
	strb	r6, [r2, #4]	@ tmp167, _20->is_in_dpb
	ldr	r1, [r3, #1856]	@, MEM[(struct H264_CTX_S *)_46 + 26432B]
	ldr	r2, [r5, #2052]	@, pH264Ctx_9(D)->DPB.used_size
	bl	OutputFrmToVO	@
	ldr	r1, [sp]	@ D.42291, pos
	add	r3, r1, #6592	@ tmp156, D.42291,
	add	r3, r3, #16	@ tmp156, tmp156,
	ldr	r3, [r4, r3, asl #2]	@ tmp157, pH264Ctx_9(D)->DPB.fs
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_27].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_27].is_reference
	cmp	r3, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_27].is_reference,
	mov	r7, r0	@ ret,
	bne	.L2637	@,
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L2637	@
.L2652:
	cmp	r7, #0	@ ret,
	beq	.L2643	@,
	add	r0, r4, #8	@, pH264Ctx,
	bl	GetVoLastImageID	@
	mov	r7, r0	@ ret,
.L2643:
	mov	r0, r7	@, ret
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
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
	beq	.L2669	@,
	bl	ClearAllSlice	@
	add	r6, r8, #26368	@ ivtmp.2896, pH264Ctx,
	mov	r7, #0	@ i,
	add	r10, r8, #49152	@ tmp233, pH264Ctx,
	mov	r5, r6	@ ivtmp.2905, ivtmp.2896
	mov	r4, r6	@ ivtmp.2912, ivtmp.2905
	add	r5, r5, #192	@ ivtmp.2905, ivtmp.2905,
	add	r6, r6, #64	@ ivtmp.2896, ivtmp.2896,
	add	r4, r4, #128	@ ivtmp.2912, ivtmp.2912,
	mov	r9, r7	@ tmp240, i
.L2658:
	ldr	r3, [r6]	@ D.42398, MEM[base: _95, offset: 0B]
	mov	r2, #1	@,
	add	r7, r7, r2	@ i, i,
	cmp	r3, #0	@ D.42398,
	beq	.L2655	@,
	ldr	r1, [r3, #508]	@, _9->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2655:
	ldr	r3, [r4]	@ D.42398, MEM[base: _100, offset: 0B]
	mov	r2, #1	@,
	cmp	r3, #0	@ D.42398,
	beq	.L2656	@,
	ldr	r1, [r3, #508]	@, _12->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2656:
	ldr	r3, [r5]	@ D.42398, MEM[base: _99, offset: 0B]
	mov	r2, #1	@,
	cmp	r3, #0	@ D.42398,
	beq	.L2657	@,
	ldr	r1, [r3, #508]	@, _15->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2657:
	cmp	r7, #16	@ i,
	str	r9, [r5], #4	@ tmp240, MEM[base: _99, offset: 0B]
	mov	r2, #0	@ tmp170,
	str	r9, [r4], #4	@ tmp240, MEM[base: _100, offset: 0B]
	str	r9, [r6], #4	@ tmp240, MEM[base: _95, offset: 0B]
	bne	.L2658	@,
	add	r3, r8, #16384	@ tmp176, pH264Ctx,
	add	r4, r8, #24576	@ tmp235, pH264Ctx,
	ldr	r3, [r3, #1184]	@ pH264Ctx_5(D)->CurrSPS.dpb_size_plus1, pH264Ctx_5(D)->CurrSPS.dpb_size_plus1
	str	r2, [r4, #2052]	@ tmp170, pH264Ctx_5(D)->DPB.used_size
	sub	r3, r3, #1	@ D.42400, pH264Ctx_5(D)->CurrSPS.dpb_size_plus1,
	str	r2, [r4, #2056]	@ tmp170, pH264Ctx_5(D)->DPB.ref_frames_in_buffer
	str	r3, [r4, #2048]	@ D.42400, pH264Ctx_5(D)->DPB.size
	str	r2, [r4, #2060]	@ tmp170, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	str	r2, [r4, #2064]	@ tmp170, pH264Ctx_5(D)->DPB.max_long_term_pic_idx
	ldr	r1, [r10, #1544]	@ D.42398, pH264Ctx_5(D)->pDirectOutBuf
	cmp	r1, r2	@ D.42398,
	beq	.L2660	@,
	ldr	r3, [r10, #3616]	@ pH264Ctx_5(D)->OldDecMode, pH264Ctx_5(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_5(D)->OldDecMode,
	beq	.L2661	@,
.L2664:
	ldr	r3, [r10, #960]	@ D.42398, pH264Ctx_5(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.42398,
	beq	.L2663	@,
	ldr	r1, [r3, #508]	@, _24->logic_fs_id
	mov	r2, #1	@,
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2663:
	mov	r3, #0	@ tmp207,
	str	r3, [r10, #1544]	@ tmp207, pH264Ctx_5(D)->pDirectOutBuf
.L2660:
	add	r0, r8, #26624	@, pH264Ctx,
	mov	r1, #392	@,
	add	r0, r0, #20	@,,
	bl	__memzero	@
	ldr	r1, [r4, #2048]	@ pH264Ctx_5(D)->DPB.size, pH264Ctx_5(D)->DPB.size
	add	r3, r8, #51200	@ ivtmp.2883, pH264Ctx,
	mov	r0, #0	@ tmp217,
	str	r0, [r4, #2328]	@ tmp217, pH264Ctx_5(D)->APC.used_size
	mov	r2, r3	@ D.42403, ivtmp.2883
	add	r3, r3, #44	@ ivtmp.2883, ivtmp.2883,
	add	r2, r2, #112	@ D.42403, D.42403,
	str	r1, [r4, #2324]	@ pH264Ctx_5(D)->DPB.size, pH264Ctx_5(D)->APC.size
	mov	r1, r0	@ tmp238, tmp217
.L2666:
	str	r1, [r3, #4]!	@ tmp238, MEM[base: _31, offset: 0B]
	cmp	r3, r2	@ ivtmp.2883, D.42403
	bne	.L2666	@,
	add	r2, r8, #26880	@ ivtmp.2869, pH264Ctx,
	add	r3, r8, #27136	@ ivtmp.2855, pH264Ctx,
	add	r2, r2, #152	@ ivtmp.2869, ivtmp.2869,
	add	r3, r3, #28	@ ivtmp.2855, ivtmp.2855,
	mov	r0, #0	@ tmp237,
.L2667:
	str	r0, [r2, #4]!	@ tmp237, MEM[base: _70, offset: 0B]
	cmp	r2, r3	@ ivtmp.2869, ivtmp.2855
	mov	r1, #0	@ tmp223,
	bne	.L2667	@,
	add	r2, r8, #27136	@ D.42403, pH264Ctx,
	add	r8, r8, #20480	@ tmp234, pH264Ctx,
	add	r2, r2, #160	@ D.42403, D.42403,
	mov	ip, r1	@ tmp236, tmp223
	str	r1, [r8, #244]	@ tmp223, pH264Ctx_5(D)->CurrSlice.listXsize
.L2668:
	str	ip, [r3, #4]!	@ tmp236, MEM[base: _44, offset: 0B]
	cmp	r3, r2	@ ivtmp.2855, D.42403
	mov	r0, #0	@ tmp228,
	bne	.L2668	@,
	str	r0, [r8, #248]	@ tmp228, pH264Ctx_5(D)->CurrSlice.listXsize
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2661:
	mov	r0, r8	@, pH264Ctx
	bl	OutputFrmToVO	@
	ldr	r3, [r10, #1544]	@ pH264Ctx_5(D)->pDirectOutBuf, pH264Ctx_5(D)->pDirectOutBuf
	cmp	r3, #0	@ pH264Ctx_5(D)->pDirectOutBuf,
	bne	.L2664	@,
	b	.L2660	@
.L2669:
	mvn	r0, #0	@ D.42396,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	mov	r0, r4	@, pH264Ctx
	add	r4, r4, #49152	@ tmp113, pH264Ctx,
	bl	InitDPB	@
	mov	r3, #0	@ tmp114,
	mov	r0, r3	@, tmp114
	str	r3, [r4, #2180]	@ tmp114, pH264Ctx_2(D)->IDRFound
	str	r3, [r4, #3696]	@ tmp114, pH264Ctx_2(D)->FirstFrameDisplayed
	ldmfd	sp!, {r4, pc}	@
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
	add	r4, r0, #49152	@ tmp466, pH264Ctx,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.structure, pH264Ctx_9(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.structure,
	beq	.L2687	@,
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.field_pair_flag, pH264Ctx_9(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_9(D)->CurrPic.field_pair_flag,
	beq	.L2687	@,
.L2688:
	ldr	r3, [r4, #3676]	@ IPBDecMode, pH264Ctx_9(D)->advanced_cfg
	ldr	r2, [r4, #3616]	@ D.42415, pH264Ctx_9(D)->OldDecMode
	cmp	r3, #2	@ IPBDecMode,
	cmpne	r3, r2	@, IPBDecMode, D.42415
	beq	.L2689	@,
	sub	r2, r2, #2	@ D.42415, D.42415,
	cmp	r2, #1	@ D.42415,
	bls	.L2772	@,
.L2689:
	sub	r2, r3, #1	@ tmp261, IPBDecMode,
	str	r3, [r4, #3616]	@ IPBDecMode, pH264Ctx_9(D)->OldDecMode
	cmp	r2, #4	@ tmp261,
	ldrls	pc, [pc, r2, asl #2]	@ tmp261
	b	.L2691	@
.L2693:
	.word	.L2692
	.word	.L2694
	.word	.L2695
	.word	.L2691
	.word	.L2696
.L2687:
	ldr	r3, [r4, #3716]	@ pH264Ctx_9(D)->numTotalFrame, pH264Ctx_9(D)->numTotalFrame
	ldr	r1, [r4, #3720]	@ pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numOutputFrame
	add	r3, r3, #1	@ D.42414, pH264Ctx_9(D)->numTotalFrame,
	ldr	r2, [r5]	@ D.42413, pH264Ctx_9(D)->pstExtraData
	cmp	r3, r1	@ D.42414, pH264Ctx_9(D)->numOutputFrame
	movlt	r3, r1	@ D.42414, pH264Ctx_9(D)->numOutputFrame
	str	r3, [r4, #3716]	@ D.42414, pH264Ctx_9(D)->numTotalFrame
	str	r3, [r2, #440]	@ D.42414, MEM[(struct VDEC_CHAN_STATE_S *)_12 + 396B].total_frame_num
	ldr	r3, [r4, #3716]	@ pH264Ctx_9(D)->numTotalFrame, pH264Ctx_9(D)->numTotalFrame
	ldr	r1, [r4, #3720]	@ pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numOutputFrame
	rsb	r3, r1, r3	@ D.42414, pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numTotalFrame
	str	r3, [r2, #444]	@ D.42414, MEM[(struct VDEC_CHAN_STATE_S *)_12 + 396B].error_frame_num
	b	.L2688	@
.L2772:
	cmp	r3, #4	@ IPBDecMode,
	cmpne	r3, #1	@, IPBDecMode,
	strls	r3, [r4, #3616]	@ IPBDecMode, pH264Ctx_9(D)->OldDecMode
	bhi	.L2689	@,
.L2695:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	mvn	r0, #0	@ D.42411,
	mov	r3, #0	@ tmp264,
	str	r3, [r4, #2180]	@ tmp264, pH264Ctx_9(D)->IDRFound
	str	r3, [r4, #3696]	@ tmp264, pH264Ctx_9(D)->FirstFrameDisplayed
.L2767:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2694:
	ldr	r2, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r2, #0	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L2699	@,
	ldr	r1, [r4, #3612]	@ D.42421, pH264Ctx_9(D)->SliceParaNum
	cmp	r1, #0	@ D.42421,
	beq	.L2698	@,
	ldr	r2, [r4, #3608]	@ pH264Ctx_9(D)->DecSlicePara, pH264Ctx_9(D)->DecSlicePara
	ldr	r2, [r2, #48]	@ _40->first_mb_in_slice, _40->first_mb_in_slice
	cmp	r2, #0	@ _40->first_mb_in_slice,
	bne	.L2699	@,
.L2698:
	ldr	r2, [r4, #1000]	@ pH264Ctx_9(D)->CurrPic.is_idr_pic, pH264Ctx_9(D)->CurrPic.is_idr_pic
	cmp	r1, #0	@ D.42421,
	str	r2, [r4, #3692]	@ pH264Ctx_9(D)->CurrPic.is_idr_pic, pH264Ctx_9(D)->PrevPicIsIDR
	beq	.L2770	@,
	cmp	r3, #4	@ IPBDecMode,
	ldr	r3, [r4, #996]	@ D.42415, pH264Ctx_9(D)->CurrPic.pic_type
	beq	.L2773	@,
.L2707:
	cmp	r3, #2	@ D.42415,
	beq	.L2774	@,
	cmp	r3, #1	@ D.42415,
	beq	.L2775	@,
.L2709:
	ldr	lr, [r4, #3652]	@ pH264Ctx_9(D)->TotalPicNum, pH264Ctx_9(D)->TotalPicNum
	mov	r2, #1	@ tmp382,
	ldr	ip, [r4, #1020]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->CurrPic.pic_mbs
	ldr	r0, [r4, #1024]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->CurrPic.stream_base_addr
	cmp	lr, #0	@ pH264Ctx_9(D)->TotalPicNum,
	str	r1, [r4, #3336]	@ D.42421, pH264Ctx_9(D)->DecPicPara.SliceParaNum
	str	ip, [r4, #3136]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->DecPicPara.mbtodec
	str	r0, [r4, #3132]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->DecPicPara.stream_base_addr
	strb	r2, [r4, #2218]	@ tmp382, pH264Ctx_9(D)->DecPicPara.NewPicFlag
	beq	.L2713	@,
	cmp	r3, #0	@ D.42415,
	bne	.L2712	@,
	ldr	r2, .L2780	@ tmp394,
	ldr	ip, [r2]	@ D.42419, g_event_report
	cmp	ip, #0	@ D.42419,
	beq	.L2714	@,
	ldr	r2, [r4, #3340]	@ pH264SliceParam, pH264Ctx_9(D)->DecPicPara.pFirstSlice
	cmp	r2, #0	@ pH264SliceParam,
	beq	.L2715	@,
	mov	r1, r3	@ TotalSize, D.42415
.L2716:
	ldr	r3, [r2, #8]	@ pH264SliceParam_158->valid_bitlen, pH264SliceParam_158->valid_bitlen
	ldr	r0, [r2, #12]	@ pH264SliceParam_158->valid_bitlen, pH264SliceParam_158->valid_bitlen
	ldr	r2, [r2, #4056]	@ pH264SliceParam, pH264SliceParam_158->pNextSlice
	add	r3, r3, r0	@ D.42415, pH264SliceParam_158->valid_bitlen, pH264SliceParam_158->valid_bitlen
	add	r3, r3, #7	@ D.42415, D.42415,
	cmp	r2, #0	@ pH264SliceParam,
	add	r1, r1, r3, lsr #3	@ TotalSize, TotalSize, D.42415,
	bne	.L2716	@,
	mov	r3, r1	@ D.42415, TotalSize
.L2715:
	add	r2, sp, #8	@ tmp402,,
	mov	r1, #20	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	str	r3, [r2, #-4]!	@ D.42415, para
	blx	ip	@ D.42419
	ldr	r2, [r5]	@ D.42413, pH264Ctx_9(D)->pstExtraData
.L2717:
	add	r3, r5, #51200	@ D.42420, pH264Ctx,
	add	r3, r3, #168	@ D.42420, D.42420,
	str	r3, [r5, #360]	@ D.42420, pH264Ctx_9(D)->pH264DecParam
	ldr	r1, [r2, #708]	@ D.42414, _205->stDisParams.s32Mode
	cmp	r1, #1	@ D.42414,
	beq	.L2776	@,
	cmp	r1, #2	@ D.42414,
	beq	.L2777	@,
.L2721:
	ldr	r3, [r2, #512]	@ D.42414, _205->s32Compress_en
	mov	r0, #0	@ D.42411,
	str	r3, [r4, #3600]	@ D.42414, MEM[(struct H264_DEC_PIC_PARAM_S *)pH264Ctx_9(D) + 51368B].Compress_en
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2696:
	ldr	r2, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r2, #0	@ pH264Ctx_9(D)->CurrPic.pic_type,
	beq	.L2702	@,
	ldrb	r2, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.structure, pH264Ctx_9(D)->CurrPic.structure
	cmp	r2, #0	@ pH264Ctx_9(D)->CurrPic.structure,
	beq	.L2699	@,
	ldr	r2, [r4, #1524]	@ pH264Ctx_9(D)->PrevPic.pic_type, pH264Ctx_9(D)->PrevPic.pic_type
	cmp	r2, #0	@ pH264Ctx_9(D)->PrevPic.pic_type,
	bne	.L2699	@,
.L2702:
	ldr	ip, [r5]	@ D.42413, pH264Ctx_9(D)->pstExtraData
	ldr	r2, [ip, #732]	@ _51->s32firstIdecodedflag, _51->s32firstIdecodedflag
	cmp	r2, #0	@ _51->s32firstIdecodedflag,
	bne	.L2699	@,
	ldr	r1, [r4, #3612]	@ D.42421, pH264Ctx_9(D)->SliceParaNum
	cmp	r1, #0	@ D.42421,
	beq	.L2698	@,
	ldr	r0, [r4, #3608]	@ pH264Ctx_9(D)->DecSlicePara, pH264Ctx_9(D)->DecSlicePara
	ldr	r0, [r0, #48]	@ _54->first_mb_in_slice, _54->first_mb_in_slice
	cmp	r0, #0	@ _54->first_mb_in_slice,
	beq	.L2698	@,
	strb	r2, [r4, #559]	@ _51->s32firstIdecodedflag, pH264Ctx_9(D)->CurrPic.mode_skip_flag
	mov	r0, r5	@, pH264Ctx
	str	r2, [ip, #732]	@ _51->s32firstIdecodedflag, _51->s32firstIdecodedflag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42411,
	b	.L2767	@
.L2692:
	ldr	r2, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r2, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	beq	.L2778	@,
.L2771:
	ldr	r1, [r4, #3612]	@ D.42421, pH264Ctx_9(D)->SliceParaNum
	b	.L2698	@
.L2691:
	ldr	r1, [r4, #3612]	@ D.42421, pH264Ctx_9(D)->SliceParaNum
	b	.L2698	@
.L2774:
	ldr	r3, [r4, #2184]	@ D.42415, pH264Ctx_9(D)->PPicFound
	cmp	r3, #2	@ D.42415,
	beq	.L2779	@,
	ldr	ip, [r4, #3652]	@ pH264Ctx_9(D)->TotalPicNum, pH264Ctx_9(D)->TotalPicNum
	mov	r3, #1	@ tmp454,
	ldr	r0, [r4, #1020]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->CurrPic.pic_mbs
	ldr	r2, [r4, #1024]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->CurrPic.stream_base_addr
	cmp	ip, #0	@ pH264Ctx_9(D)->TotalPicNum,
	str	r1, [r4, #3336]	@ D.42421, pH264Ctx_9(D)->DecPicPara.SliceParaNum
	str	r0, [r4, #3136]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->DecPicPara.mbtodec
	str	r2, [r4, #3132]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->DecPicPara.stream_base_addr
	strb	r3, [r4, #2218]	@ tmp454, pH264Ctx_9(D)->DecPicPara.NewPicFlag
	bne	.L2712	@,
.L2713:
	mov	r0, #0	@ D.42411,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2775:
	ldr	ip, [r4, #3652]	@ pH264Ctx_9(D)->TotalPicNum, pH264Ctx_9(D)->TotalPicNum
	ldr	r0, [r4, #1020]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->CurrPic.pic_mbs
	ldr	r2, [r4, #1024]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->CurrPic.stream_base_addr
	cmp	ip, #0	@ pH264Ctx_9(D)->TotalPicNum,
	str	r3, [r4, #2184]	@ D.42415, pH264Ctx_9(D)->PPicFound
	strb	r3, [r4, #2218]	@ D.42415, pH264Ctx_9(D)->DecPicPara.NewPicFlag
	str	r1, [r4, #3336]	@ D.42421, pH264Ctx_9(D)->DecPicPara.SliceParaNum
	str	r0, [r4, #3136]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->DecPicPara.mbtodec
	str	r2, [r4, #3132]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->DecPicPara.stream_base_addr
	beq	.L2713	@,
.L2712:
	add	r3, r5, #24576	@ tmp407, pH264Ctx,
	ldr	r2, [r5]	@ D.42413, pH264Ctx_9(D)->pstExtraData
	ldr	r3, [r3, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_9(D)->DPB.used_size,
	bne	.L2717	@,
	ldr	r3, [r2, #12]	@ _97->s32DecOrderOutput, _97->s32DecOrderOutput
	cmp	r3, #2	@ _97->s32DecOrderOutput,
	beq	.L2717	@,
.L2770:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42411,
	b	.L2767	@
.L2773:
	cmp	r3, #0	@ D.42415,
	bne	.L2707	@,
	ldr	r2, [r4, #2184]	@ D.42415, pH264Ctx_9(D)->PPicFound
	cmp	r2, #0	@ D.42415,
	moveq	r2, #2	@ tmp336,
	movne	r2, #1	@ tmp339,
	str	r2, [r4, #2184]	@ tmp339, pH264Ctx_9(D)->PPicFound
	b	.L2709	@
.L2776:
	cmp	r3, #0	@ D.42420,
	beq	.L2721	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L2721	@,
	mov	r2, #0	@ tmp414,
	str	r2, [r5, #360]	@ tmp414, pH264Ctx_9(D)->pH264DecParam
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	ldr	r1, [r3, #508]	@, _113->logic_fs_id
	bl	FSP_SetDisplay	@
	b	.L2770	@
.L2777:
	ldr	r1, [r2, #712]	@ _205->stDisParams.s32DisNums, _205->stDisParams.s32DisNums
	cmp	r3, #0	@ D.42420,
	cmpne	r1, #0	@, _205->stDisParams.s32DisNums,
	ble	.L2721	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L2721	@,
	mov	r2, #0	@ tmp431,
	str	r2, [r5, #360]	@ tmp431, pH264Ctx_9(D)->pH264DecParam
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	ldr	r1, [r3, #508]	@, _121->logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r2, [r5]	@ D.42413, pH264Ctx_9(D)->pstExtraData
	mov	r0, r5	@, pH264Ctx
	ldr	r3, [r2, #712]	@ _124->stDisParams.s32DisNums, _124->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.42414, _124->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.42414, _124->stDisParams.s32DisNums
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42411,
	b	.L2767	@
.L2779:
	ldr	r2, [r5]	@ pH264Ctx_9(D)->pstExtraData, pH264Ctx_9(D)->pstExtraData
	ldr	r6, [r2, #12]	@ _77->s32DecOrderOutput, _77->s32DecOrderOutput
	cmp	r6, #0	@ _77->s32DecOrderOutput,
	bne	.L2709	@,
	ldr	r2, .L2780+4	@ tmp344,
	ldrb	r2, [r2]	@ zero_extendqisi2	@ g_allow_B_before_P, g_allow_B_before_P
	cmp	r2, #1	@ g_allow_B_before_P,
	beq	.L2709	@,
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	mov	r2, r6	@, _77->s32DecOrderOutput
	ldr	r1, [r3, #508]	@, _82->logic_fs_id
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.42411,
	b	.L2767	@
.L2778:
	ldr	r2, [r4, #976]	@ pH264Ctx_9(D)->CurrPic.nal_ref_idc, pH264Ctx_9(D)->CurrPic.nal_ref_idc
	cmp	r2, #0	@ pH264Ctx_9(D)->CurrPic.nal_ref_idc,
	bne	.L2771	@,
.L2699:
	mov	r3, #1	@ tmp273,
	mov	r0, r5	@, pH264Ctx
	strb	r3, [r4, #559]	@ tmp273, pH264Ctx_9(D)->CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42411,
	b	.L2767	@
.L2714:
	ldr	r2, [r5]	@ D.42413, pH264Ctx_9(D)->pstExtraData
	b	.L2717	@
.L2781:
	.align	2
.L2780:
	.word	g_event_report
	.word	g_allow_B_before_P
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r0, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	mov	r5, r1	@ pPacket, pPacket
	cmp	r3, #0	@ D.42437,
	beq	.L2788	@,
	ldrb	r2, [r1]	@ zero_extendqisi2	@ D.42442, pPacket_10(D)->last_pack_in_nal
	cmp	r2, #1	@ D.42442,
	beq	.L2832	@,
.L2786:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	cmp	r3, #0	@ D.42437,
	ldrneb	r2, [r5]	@ zero_extendqisi2	@ D.42442, pPacket_10(D)->last_pack_in_nal
	beq	.L2788	@,
.L2787:
	strb	r2, [r3, #3]	@ D.42442, _134->nal_integ
	ldr	r3, [r5, #12]	@ pPacket_10(D)->stream_len, pPacket_10(D)->stream_len
	cmp	r3, #0	@ pPacket_10(D)->stream_len,
	ble	.L2797	@,
	ldr	r2, [r5, #4]	@ D.42439, pPacket_10(D)->p_stream
	cmp	r2, #0	@ D.42439,
	beq	.L2797	@,
	ldr	r3, [r5, #8]	@ pPacket_10(D)->strm_phy_addr, pPacket_10(D)->strm_phy_addr
	cmp	r3, #0	@ pPacket_10(D)->strm_phy_addr,
	bne	.L2833	@,
.L2797:
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
.L2798:
	add	r6, r4, #49152	@ tmp276, pH264Ctx,
	mov	r2, #1	@ tmp272,
	strb	r2, [r3, #3]	@ tmp272, _101->nal_integ
	ldr	r1, [r5, #16]	@, pPacket_10(D)->StreamID
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L2834	@ tmp278,
	ldr	r3, [r3]	@ D.42440, g_event_report
	cmp	r3, #0	@ D.42440,
	beq	.L2795	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.42440
.L2795:
	ldr	r3, [r4, #368]	@ pH264Ctx_8(D)->pCurrNal, pH264Ctx_8(D)->pCurrNal
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ _95->nal_integ, _95->nal_integ
	clz	r0, r0	@ D.42434, _95->nal_integ
	mov	r0, r0, lsr #5	@ D.42434, D.42434,
	rsb	r0, r0, #0	@ D.42433, D.42434
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2832:
	ldr	r1, [r3, #68]	@ _9->nal_segment, _9->nal_segment
	cmp	r1, #1	@ _9->nal_segment,
	bhi	.L2786	@,
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ _9->nal_integ, _9->nal_integ
	cmp	r1, #1	@ _9->nal_integ,
	bne	.L2787	@,
	b	.L2786	@
.L2833:
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	ldr	r1, [r3, #68]	@ D.42435, _63->nal_segment
	cmp	r1, #1	@ D.42435,
	bhi	.L2798	@,
	mov	r0, r1, asl #5	@ tmp236, D.42435,
	mov	ip, #0	@ tmp262,
	sub	r1, r0, r1, asl #2	@ tmp237, tmp236, D.42435,
	mov	r0, r4	@, pH264Ctx
	add	r3, r3, r1	@ tmp238, D.42437, tmp237
	str	r2, [r3, #8]	@ D.42439, _63->stream[_64].streamBuffer
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	ldr	lr, [r5, #12]	@ pPacket_10(D)->stream_len, pPacket_10(D)->stream_len
	ldr	r1, [r3, #68]	@ _66->nal_segment, _66->nal_segment
	mov	r2, r1, asl #5	@ tmp243, _66->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp244, tmp243, _66->nal_segment,
	add	r3, r3, r2	@ tmp245, D.42437, tmp244
	str	lr, [r3, #12]	@ pPacket_10(D)->stream_len, _66->stream[_67].bitstream_length
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	ldr	lr, [r5, #8]	@ D.42435, pPacket_10(D)->strm_phy_addr
	ldr	r1, [r3, #68]	@ _71->nal_segment, _71->nal_segment
	mov	r2, r1, asl #5	@ tmp251, _71->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp252, tmp251, _71->nal_segment,
	add	r3, r3, r2	@ tmp253, D.42437, tmp252
	str	lr, [r3, #16]	@ D.42435, _71->stream[_72].stream_phy_addr
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	ldr	r1, [r3, #68]	@ _75->nal_segment, _75->nal_segment
	mov	r2, r1, asl #5	@ tmp258, _75->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp259, tmp258, _75->nal_segment,
	add	r3, r3, r2	@ tmp260, D.42437, tmp259
	str	ip, [r3, #24]	@ tmp262, _75->stream[_76].bitsoffset
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	ldr	ip, [r5, #16]	@ D.42438, pPacket_10(D)->StreamID
	ldr	r1, [r3, #68]	@ _78->nal_segment, _78->nal_segment
	mov	r2, r1, asl #5	@ tmp266, _78->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp267, tmp266, _78->nal_segment,
	add	r3, r3, r2	@ tmp268, D.42437, tmp267
	str	ip, [r3, #32]	@ D.42438, _78->stream[_79].StreamID
	ldr	r2, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	ldr	r3, [r2, #68]	@ _82->nal_segment, _82->nal_segment
	add	r3, r3, #1	@ D.42435, _82->nal_segment,
	str	r3, [r2, #68]	@ D.42435, _82->nal_segment
	bl	CombinePacket	@
	b	.L2795	@
.L2788:
	ldr	r3, [r5, #12]	@ pPacket_10(D)->stream_len, pPacket_10(D)->stream_len
	cmp	r3, #0	@ pPacket_10(D)->stream_len,
	ble	.L2785	@,
	ldr	r3, [r5, #4]	@ pPacket_10(D)->p_stream, pPacket_10(D)->p_stream
	cmp	r3, #0	@ pPacket_10(D)->p_stream,
	beq	.L2785	@,
	ldr	r3, [r5, #8]	@ pPacket_10(D)->strm_phy_addr, pPacket_10(D)->strm_phy_addr
	cmp	r3, #0	@ pPacket_10(D)->strm_phy_addr,
	beq	.L2785	@,
	ldrb	r3, [r4, #377]	@ zero_extendqisi2	@ pH264Ctx_8(D)->NalArray[0].is_valid, pH264Ctx_8(D)->NalArray[0].is_valid
	cmp	r3, #0	@ pH264Ctx_8(D)->NalArray[0].is_valid,
	beq	.L2801	@,
	mov	r2, r4	@ ivtmp.2951, pH264Ctx
	mov	r3, #1	@ Pos,
	b	.L2792	@
.L2791:
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2799	@,
.L2792:
	ldrb	r1, [r2, #473]	@ zero_extendqisi2	@ MEM[base: _132, offset: 473B], MEM[base: _132, offset: 473B]
	add	r2, r2, #96	@ ivtmp.2951, ivtmp.2951,
	cmp	r1, #0	@ MEM[base: _132, offset: 473B],
	bne	.L2791	@,
	mov	r2, r3	@ D.42433, Pos
.L2790:
	mov	r1, r3, asl #7	@ tmp289, Pos,
	cmn	r2, #1	@ D.42433,
	sub	r3, r1, r3, asl #5	@ tmp290, tmp289, Pos,
	mov	r0, #1	@ tmp293,
	add	r3, r4, r3	@ tmp291, pH264Ctx, tmp290
	strb	r0, [r3, #377]	@ tmp293, pH264Ctx_8(D)->NalArray[Pos_119].is_valid
	beq	.L2799	@,
	mov	r3, r2, asl #7	@ tmp195, D.42433,
	mov	r1, #0	@ tmp218,
	sub	r3, r3, r2, asl #5	@ tmp196, tmp195, D.42433,
	add	r2, r3, #376	@ tmp197, tmp196,
	add	r3, r4, r3	@ tmp203, pH264Ctx, tmp196
	add	r2, r4, r2	@ D.42437, pH264Ctx, tmp197
	str	r2, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	ldr	r2, [r5, #4]	@ D.42439, pPacket_10(D)->p_stream
	str	r2, [r3, #384]	@ D.42439, MEM[(struct H264_NALU_S *)pH264Ctx_8(D)].NalArray[_111].stream[0].streamBuffer
	ldr	r2, [r5, #12]	@ pPacket_10(D)->stream_len, pPacket_10(D)->stream_len
	str	r2, [r3, #388]	@ pPacket_10(D)->stream_len, MEM[(struct H264_NALU_S *)pH264Ctx_8(D)].NalArray[_111].stream[0].bitstream_length
	ldr	r2, [r5, #8]	@ D.42435, pPacket_10(D)->strm_phy_addr
	str	r2, [r3, #392]	@ D.42435, MEM[(struct H264_NALU_S *)pH264Ctx_8(D)].NalArray[_111].stream[0].stream_phy_addr
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	str	r1, [r3, #24]	@ tmp218, _37->stream[0].bitsoffset
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	ldr	r2, [r5, #16]	@ D.42438, pPacket_10(D)->StreamID
	str	r2, [r3, #32]	@ D.42438, _39->stream[0].StreamID
	ldrd	r2, [r5, #24]	@ D.42441, pPacket,
	ldr	ip, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	strd	r2, [ip, #88]	@ D.42441, D.42437,
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	str	r0, [r3, #68]	@ tmp293, _45->nal_segment
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	strb	r1, [r3]	@ tmp218, _47->nal_used_segment
	ldrb	r2, [r5]	@ zero_extendqisi2	@ D.42436, pPacket_10(D)->last_pack_in_nal
	ldr	r3, [r4, #368]	@ D.42437, pH264Ctx_8(D)->pCurrNal
	strb	r2, [r3, #3]	@ D.42436, _49->nal_integ
	b	.L2795	@
.L2785:
	add	r4, r4, #49152	@ tmp225, pH264Ctx,
	ldr	r1, [r5, #16]	@, pPacket_10(D)->StreamID
	ldr	r0, [r4, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L2834	@ tmp227,
	ldr	r3, [r3]	@ D.42440, g_event_report
	cmp	r3, #0	@ D.42440,
	beq	.L2831	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.42440
.L2831:
	mvn	r0, #0	@ D.42433,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2799:
	mov	r0, r4	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	ldr	r3, .L2834	@ tmp189,
	mov	r2, #0	@ tmp185,
	add	r4, r4, #49152	@ tmp184, pH264Ctx,
	ldr	r3, [r3]	@ D.42440, g_event_report
	str	r2, [r4, #2180]	@ tmp185, pH264Ctx_8(D)->IDRFound
	cmp	r3, r2	@ D.42440,
	str	r2, [r4, #3696]	@ tmp185, pH264Ctx_8(D)->FirstFrameDisplayed
	beq	.L2831	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.42440
	mvn	r0, #0	@ D.42433,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2801:
	mov	r2, r3	@ D.42433, pH264Ctx_8(D)->NalArray[0].is_valid
	b	.L2790	@
.L2835:
	.align	2
.L2834:
	.word	g_event_report
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
	bl	H264_ClearCurrPic	@
	mov	r0, r10	@, pH264Ctx
	add	r8, r10, #49152	@ tmp266, pH264Ctx,
	bl	ClearAllNal	@
	mov	r0, r10	@, pH264Ctx
	bl	InitDPB	@
	cmp	r4, #0	@ flag,
	beq	.L2837	@,
	add	r1, r10, #8	@, pH264Ctx,
	ldr	r0, [r8, #3688]	@, pH264Ctx_14(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
.L2838:
	add	r4, r10, #27392	@ ivtmp.3018, pH264Ctx,
	mov	r7, #0	@ i,
	add	r4, r4, #124	@ ivtmp.3018, ivtmp.3018,
	mov	r6, r7	@ tmp270, i
	mvn	r9, #0	@ tmp271,
.L2841:
	sub	r5, r4, #16	@ ivtmp.2985, ivtmp.3018,
	sub	r3, r4, #212	@ D.42520, ivtmp.3018,
	mov	r2, #1	@ tmp163,
	mov	ip, #17	@ tmp164,
	mov	r0, #16	@ tmp165,
	mov	r1, #2	@ tmp170,
	strb	r6, [r4, #-212]	@ tmp270, MEM[base: _115, offset: 4294967084B]
	strb	r6, [r4, #-211]	@ tmp270, MEM[base: _115, offset: 4294967085B]
	strb	r6, [r4, #-210]	@ tmp270, MEM[base: _115, offset: 4294967086B]
	str	r6, [r4, #308]	@ tmp270, MEM[base: _115, offset: 308B]
	str	r6, [r4, #300]	@ tmp270, MEM[base: _115, offset: 300B]
	str	r9, [r4, #304]	@ tmp271, MEM[base: _115, offset: 304B]
	str	r6, [r4, #312]	@ tmp270, MEM[base: _115, offset: 312B]
	strb	r6, [r4, #-208]	@ tmp270, MEM[base: _115, offset: 4294967088B]
	str	r7, [r4, #-28]	@ i, MEM[base: _115, offset: 4294967268B]
	strb	r6, [r4, #188]	@ tmp270, MEM[base: _115, offset: 188B]
	str	r2, [r4, #320]	@ tmp163, MEM[base: _115, offset: 320B]
	strb	r2, [r4, #224]	@ tmp163, MEM[base: _115, offset: 224B]
	str	ip, [r4, #336]	@ tmp164, MEM[base: _115, offset: 336B]
	str	r0, [r4, #340]	@ tmp165, MEM[base: _115, offset: 340B]
	str	r3, [r4, #264]	@ D.42520, MEM[base: _115, offset: 264B]
	str	r3, [r4, #228]	@ D.42520, MEM[base: _115, offset: 228B]
	str	r3, [r4, #192]	@ D.42520, MEM[base: _115, offset: 192B]
	strb	r1, [r4, #260]	@ tmp170, MEM[base: _115, offset: 260B]
.L2840:
	ldr	r1, [r5, #4]!	@ D.42517, MEM[base: _109, offset: 0B]
	cmp	r1, #0	@ D.42517,
	beq	.L2839	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_14(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5]	@ tmp270, MEM[base: _109, offset: 0B]
.L2839:
	cmp	r5, r4	@ ivtmp.2985, ivtmp.3018
	bne	.L2840	@,
	add	r7, r7, #1	@ i, i,
	add	r4, r5, #560	@ ivtmp.3018, ivtmp.2985,
	cmp	r7, #40	@ i,
	bne	.L2841	@,
	add	r4, r10, #49664	@ ivtmp.2971, pH264Ctx,
	add	r5, r10, #49920	@ D.42513, pH264Ctx,
	add	r4, r4, #244	@ ivtmp.2971, ivtmp.2971,
	add	r5, r5, #4	@ D.42513, D.42513,
	mov	r6, #0	@ tmp268,
.L2843:
	ldr	r1, [r4, #4]!	@ D.42517, MEM[base: _8, offset: 0B]
	cmp	r1, #0	@ D.42517,
	beq	.L2842	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_14(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r4]	@ tmp268, MEM[base: _8, offset: 0B]
.L2842:
	cmp	r4, r5	@ ivtmp.2971, D.42513
	bne	.L2843	@,
	ldr	r3, [r8, #2192]	@ pH264Ctx_14(D)->TotalUsrDatNum, pH264Ctx_14(D)->TotalUsrDatNum
	cmp	r3, #0	@ pH264Ctx_14(D)->TotalUsrDatNum,
	beq	.L2847	@,
	add	r5, r10, #51200	@ ivtmp.2957, pH264Ctx,
	mov	r4, #0	@ i,
	add	r5, r5, #144	@ ivtmp.2957, ivtmp.2957,
	mov	r6, r4	@ tmp267, i
.L2846:
	ldr	r1, [r5, #4]!	@ D.42517, MEM[base: _56, offset: 0B]
	add	r4, r4, #1	@ i, i,
	cmp	r1, #0	@ D.42517,
	beq	.L2845	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_14(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5]	@ tmp267, MEM[base: _56, offset: 0B]
.L2845:
	ldr	r3, [r8, #2192]	@ pH264Ctx_14(D)->TotalUsrDatNum, pH264Ctx_14(D)->TotalUsrDatNum
	cmp	r3, r4	@ pH264Ctx_14(D)->TotalUsrDatNum, i
	bhi	.L2846	@,
.L2847:
	add	r5, r10, #20480	@ tmp217, pH264Ctx,
	add	r3, r10, #24576	@ tmp214, pH264Ctx,
	mov	r4, #0	@ tmp187,
	add	r0, r5, #200	@,,
	str	r4, [r8, #2192]	@ tmp187, pH264Ctx_14(D)->TotalUsrDatNum
	mov	r1, #1648	@,
	str	r4, [r8, #3664]	@ tmp187, pH264Ctx_14(D)->IDRPicOfCurrPic
	str	r4, [r8, #2172]	@ tmp187, pH264Ctx_14(D)->AllowStartDec
	str	r4, [r8, #3612]	@ tmp187, pH264Ctx_14(D)->SliceParaNum
	str	r4, [r8, #3672]	@ tmp187, pH264Ctx_14(D)->MaxBytesReceived
	str	r4, [r8, #3620]	@ tmp187, pH264Ctx_14(D)->IModeOutFlag
	str	r4, [r8, #2180]	@ tmp187, pH264Ctx_14(D)->IDRFound
	str	r4, [r8, #3696]	@ tmp187, pH264Ctx_14(D)->FirstFrameDisplayed
	str	r4, [r8, #2184]	@ tmp187, pH264Ctx_14(D)->PPicFound
	str	r4, [r10, #368]	@ tmp187, pH264Ctx_14(D)->pCurrNal
	str	r4, [r3, #1804]	@ tmp187, pH264Ctx_14(D)->CurrMarkIdx
	strb	r4, [r5, #3896]	@ tmp187, pH264Ctx_14(D)->Mark[1].is_valid
	strb	r4, [r5, #1892]	@ tmp187, pH264Ctx_14(D)->Mark[0].is_valid
	strb	r4, [r5, #3897]	@ tmp187, pH264Ctx_14(D)->Mark[1].no_output_of_prior_pics_flag
	strb	r4, [r5, #1893]	@ tmp187, pH264Ctx_14(D)->Mark[0].no_output_of_prior_pics_flag
	bl	__memzero	@
	mov	r2, #2	@ tmp236,
	mov	r3, #1	@ tmp240,
	strb	r2, [r5, #200]	@ tmp236, pH264Ctx_14(D)->CurrSlice.slice_type
	strb	r3, [r5, #205]	@ tmp240, pH264Ctx_14(D)->CurrSlice.new_pic_flag
	mov	r0, r4	@, tmp187
	mov	r3, #256	@ tmp252,
	strb	r4, [r8, #552]	@ tmp187, pH264Ctx_14(D)->CurrPic.state
	strb	r4, [r8, #1512]	@ tmp187, pH264Ctx_14(D)->PrevPic.structure
	str	r4, [r8, #1516]	@ tmp187, pH264Ctx_14(D)->PrevPic.nal_ref_idc
	str	r3, [r8, #1520]	@ tmp252, pH264Ctx_14(D)->PrevPic.frame_num
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2837:
	add	r0, r10, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	ldr	r0, [r8, #3688]	@, pH264Ctx_14(D)->ChanID
	bl	FSP_EmptyInstance	@
	b	.L2838	@
	.fnend
	.size	ClearAll, .-ClearAll
	.align	2
	.global	AllocFrameStore
	.type	AllocFrameStore, %function
AllocFrameStore:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #20480	@ tmp477, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	ldrb	r4, [r8, #201]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag, pH264Ctx_15(D)->CurrSlice.field_pic_flag
	cmp	r4, #0	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag,
	beq	.L2864	@,
	ldrb	r3, [r8, #202]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag, pH264Ctx_15(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag,
	beq	.L2926	@,
	add	r7, r0, #49152	@ tmp476, pH264Ctx,
	ldr	r4, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r4, #2	@ pH264Ctx_15(D)->OldDecMode,
	beq	.L2923	@,
	ldrb	r3, [r7, #1512]	@ zero_extendqisi2	@ pH264Ctx_15(D)->PrevPic.structure, pH264Ctx_15(D)->PrevPic.structure
	mov	r2, #0	@ tmp407,
	mov	r4, #2	@ structure,
	strb	r2, [r7, #553]	@ tmp407, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_15(D)->PrevPic.structure,
	bne	.L2894	@,
.L2890:
	ldr	r2, [r7, #1520]	@ pH264Ctx_15(D)->PrevPic.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r3, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	cmp	r2, r3	@ pH264Ctx_15(D)->PrevPic.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	bne	.L2894	@,
	ldr	r3, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc,
	ldr	r3, [r7, #1516]	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	beq	.L2927	@,
	cmp	r3, #0	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc,
	beq	.L2894	@,
.L2870:
	ldr	r3, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	ldr	r2, [r7, #3700]	@ pH264Ctx_15(D)->PrevStorePicCounter, pH264Ctx_15(D)->PrevStorePicCounter
	rsb	r3, r2, r3	@ D.42544, pH264Ctx_15(D)->PrevStorePicCounter, pH264Ctx_15(D)->PicCounter
	cmp	r3, #2	@ D.42544,
	bhi	.L2894	@,
	ldr	ip, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r3, #1	@ tmp245,
	strb	r3, [r7, #553]	@ tmp245, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	ip, #0	@ D.42542,
	beq	.L2872	@,
	cmp	r4, #2	@ structure,
	beq	.L2928	@,
	cmp	r4, #1	@ structure,
	beq	.L2929	@,
.L2897:
	mov	r6, #0	@ D.42544,
	b	.L2876	@
.L2864:
	add	r7, r0, #49152	@ tmp476, pH264Ctx,
	ldr	r3, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_15(D)->OldDecMode,
	strneb	r4, [r7, #553]	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	beq	.L2923	@,
.L2894:
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r7, #2164]	@ D.42544, pH264Ctx_15(D)->TotalFsNum
	str	r1, [sp, #4]	@ IsDecGap, %sfp
	mov	r1, #0	@ tmp266,
	cmp	r0, r1	@ D.42544,
	strb	r1, [r7, #552]	@ tmp266, pH264Ctx_15(D)->CurrPic.state
	beq	.L2884	@,
	add	r2, r5, #27136	@ ivtmp.3038, pH264Ctx,
	add	r10, r5, #26368	@ ivtmp.3025, pH264Ctx,
	add	r2, r2, #168	@ ivtmp.3038, ivtmp.3038,
	add	r10, r10, #64	@ ivtmp.3025, ivtmp.3025,
	add	r9, r5, #24576	@ tmp478, pH264Ctx,
.L2883:
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[base: _190, offset: 1B], MEM[base: _190, offset: 1B]
	cmp	r3, #0	@ MEM[base: _190, offset: 1B],
	bne	.L2879	@,
	cmp	r2, #0	@ ivtmp.3038,
	beq	.L2899	@,
	ldr	lr, [r9, #2052]	@ D.42544, pH264Ctx_15(D)->DPB.used_size
	cmp	lr, #0	@ D.42544,
	beq	.L2899	@,
	ldr	ip, [r9, #1856]	@ pH264Ctx_15(D)->DPB.fs, pH264Ctx_15(D)->DPB.fs
	cmp	ip, r2	@ pH264Ctx_15(D)->DPB.fs, ivtmp.3038
	beq	.L2879	@,
	mov	ip, r10	@ ivtmp.3025, ivtmp.3025
	b	.L2881	@
.L2882:
	ldr	fp, [ip, #4]!	@ MEM[base: _151, offset: 0B], MEM[base: _151, offset: 0B]
	cmp	fp, r2	@ MEM[base: _151, offset: 0B], ivtmp.3038
	beq	.L2879	@,
.L2881:
	add	r3, r3, #1	@ i, i,
	cmp	r3, lr	@ i, D.42544
	bne	.L2882	@,
.L2899:
	mov	r9, #560	@ tmp432,
	movw	ip, #27848	@ tmp434,
	mla	r9, r9, r1, r5	@ tmp433, tmp432, i, pH264Ctx
	mov	r10, #0	@ tmp436,
	str	r2, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r6, #1	@ tmp427,
	mov	fp, r2	@ D.42542, ivtmp.3038
	strb	r6, [r7, #552]	@ tmp427, pH264Ctx_15(D)->CurrPic.state
	add	r1, r9, #27136	@, tmp433,
	mov	lr, #101	@ tmp439,
	mov	r2, #392	@,
	add	r1, r1, #176	@,,
	str	r10, [r9, ip]	@ tmp436, MEM[(struct H264_FRAMESTORE_S *)pH264Ctx_15(D)].FrameStore[i_175].err_level
	add	r0, r7, #568	@, tmp476,
	str	lr, [r7, #1004]	@ tmp439, pH264Ctx_15(D)->CurrPic.err_level
	bl	memcpy	@
	add	r1, r9, #27136	@ tmp458, tmp433,
	str	r10, [r7, #748]	@ tmp436, pH264Ctx_15(D)->CurrPic.fs_image.error_level
	strb	r10, [r1, #171]	@ tmp436, MEM[(struct H264_FRAMESTORE_S *)pH264Ctx_15(D)].FrameStore[i_175].mode_skip_flag
	str	r10, [fp, #532]	@ tmp436, _9->is_displayed
	ldr	r2, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	strb	r10, [r2, #2]	@ tmp436, _57->is_reference
	ldr	r2, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	strb	r6, [r2, #4]	@ tmp427, _59->is_in_dpb
	ldr	r3, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	str	r10, [r3, #528]	@ tmp436, _61->eFoState
	ldrb	r9, [r7, #552]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrPic.state, pH264Ctx_15(D)->CurrPic.state
	cmp	r9, r6	@ pH264Ctx_15(D)->CurrPic.state,
	bne	.L2884	@,
	ldr	r3, [sp, #4]	@ IsDecGap, %sfp
	ldr	r0, [r7, #3688]	@, pH264Ctx_15(D)->ChanID
	clz	r1, r3	@, IsDecGap
	mov	r1, r1, lsr #5	@,,
	bl	FSP_NewLogicFs	@
	mov	r6, r0	@ LogicFsID,
	mov	r1, r0	@, LogicFsID
	ldr	r0, [r7, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FSP_GetLogicFs	@
	mvn	r3, r6	@ tmp295, LogicFsID
	mov	r3, r3, lsr #31	@ tmp295, tmp295,
	cmp	r0, #0	@ pstLFs,
	mov	r10, r0	@ pstLFs,
	moveq	r3, #0	@ tmp295,
	cmp	r3, #0	@ tmp295,
	beq	.L2885	@,
	ldr	r3, [r5]	@ pH264Ctx_15(D)->pstExtraData, pH264Ctx_15(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _81->eCapLevel, _81->eCapLevel
	cmp	r3, #25	@ _81->eCapLevel,
	beq	.L2930	@,
.L2886:
	ldr	r0, [r7, #960]	@ pH264Ctx_15(D)->CurrPic.frame_store, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r2, #392	@,
	add	r1, r10, #8	@, pstLFs,
	add	r0, r0, #8	@, pH264Ctx_15(D)->CurrPic.frame_store,
	bl	memcpy	@
	ldr	r9, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	add	r0, r5, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r0, r0, #56	@,,
	add	r1, r9, #8	@, D.42542,
	bl	memcpy	@
	str	r6, [r9, #508]	@ LogicFsID, _121->logic_fs_id
	ldrsb	r3, [r10, #4]	@ pstLFs_73->PmvIdc, pstLFs_73->PmvIdc
	ldr	ip, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	str	r3, [r7, #1028]	@ pstLFs_73->PmvIdc, pH264Ctx_15(D)->CurrPic.pmv_address_idc
.L2876:
	uxtb	r2, r4	@ D.42543, structure
	strb	r2, [r7, #555]	@ D.42543, pH264Ctx_15(D)->CurrPic.structure
	ldrb	r3, [r8, #201]	@ zero_extendqisi2	@ D.42540, pH264Ctx_15(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ D.42540,
	movne	r3, #3	@ D.42540,
	strb	r3, [ip, #400]	@ D.42540, _178->frame.structure
	ldrb	r3, [r7, #553]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrPic.field_pair_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_15(D)->CurrPic.field_pair_flag,
	beq	.L2931	@,
	strb	r2, [r7, #1512]	@ D.42543, pH264Ctx_15(D)->PrevPic.structure
	cmp	r4, #0	@ structure,
	ldr	r3, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	ldr	r2, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	movne	r0, #0	@ D.42541,
	moveq	r0, r4	@ D.42541, structure
	str	r3, [r7, #1520]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r3, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	str	r6, [r7, #1532]	@ D.42544, pH264Ctx_15(D)->PrevPic.image_id
	str	r2, [r7, #1528]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PrevPic.pic_counter
	str	r3, [r7, #1516]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	movne	r3, #1	@ tmp398,
	streqb	r4, [r7, #1536]	@ structure, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
	strneb	r3, [r7, #1536]	@ tmp398, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
.L2919:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2879:
	add	r1, r1, #1	@ i, i,
	add	r2, r2, #560	@ ivtmp.3038, ivtmp.3038,
	cmp	r1, r0	@ i, D.42544
	bne	.L2883	@,
.L2884:
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.42541,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2926:
	add	r7, r0, #49152	@ tmp476, pH264Ctx,
	ldr	r2, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r2, #2	@ pH264Ctx_15(D)->OldDecMode,
	beq	.L2932	@,
	ldrb	r2, [r7, #1512]	@ zero_extendqisi2	@ pH264Ctx_15(D)->PrevPic.structure, pH264Ctx_15(D)->PrevPic.structure
	mov	r4, #1	@ structure,
	strb	r3, [r7, #553]	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r2, #2	@ pH264Ctx_15(D)->PrevPic.structure,
	bne	.L2894	@,
	b	.L2890	@
.L2932:
	mov	r4, #1	@ structure,
.L2923:
	mov	r3, #0	@ tmp256,
	strb	r3, [r7, #553]	@ tmp256, pH264Ctx_15(D)->CurrPic.field_pair_flag
	b	.L2894	@
.L2930:
	add	r2, r5, #12288	@ tmp299, pH264Ctx,
	ldr	r9, [r0, #180]	@ MEM[(struct IMAGE *)pstLFs_73 + 8B].image_stride, MEM[(struct IMAGE *)pstLFs_73 + 8B].image_stride
	ldr	r0, [r0, #112]	@ MEM[(struct IMAGE *)pstLFs_73 + 8B].luma_phy_addr, MEM[(struct IMAGE *)pstLFs_73 + 8B].luma_phy_addr
	ldr	r3, [r2, #1276]	@ pH264Ctx_15(D)->CurHeightInMb, pH264Ctx_15(D)->CurHeightInMb
	ldr	r2, [r2, #1272]	@ pH264Ctx_15(D)->CurWidthInMb, pH264Ctx_15(D)->CurWidthInMb
	mov	r3, r3, asl #4	@ HeightAligh, pH264Ctx_15(D)->CurHeightInMb,
	str	r3, [r10, #156]	@ HeightAligh, MEM[(struct IMAGE *)pstLFs_73 + 8B].image_height
	mov	r2, r2, asl #4	@ D.42546, pH264Ctx_15(D)->CurWidthInMb,
	str	r2, [r10, #152]	@ D.42546, MEM[(struct IMAGE *)pstLFs_73 + 8B].image_width
	mul	r9, r9, r3	@ ChromOffset, MEM[(struct IMAGE *)pstLFs_73 + 8B].image_stride, HeightAligh
	add	r0, r9, r0	@ D.42544, ChromOffset, MEM[(struct IMAGE *)pstLFs_73 + 8B].luma_phy_addr
	str	r0, [r10, #116]	@ D.42544, MEM[(struct IMAGE *)pstLFs_73 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r10, #128]	@ MEM[(struct IMAGE *)pstLFs_73 + 8B].luma_2d_phy_addr, MEM[(struct IMAGE *)pstLFs_73 + 8B].luma_2d_phy_addr
	ldr	r1, [r10, #96]	@ MEM[(struct IMAGE *)pstLFs_73 + 8B].top_luma_phy_addr, MEM[(struct IMAGE *)pstLFs_73 + 8B].top_luma_phy_addr
	add	r3, r9, r3	@ D.42544, ChromOffset, MEM[(struct IMAGE *)pstLFs_73 + 8B].luma_2d_phy_addr
	ldr	r2, [r10, #180]	@ MEM[(struct IMAGE *)pstLFs_73 + 8B].image_stride, MEM[(struct IMAGE *)pstLFs_73 + 8B].image_stride
	add	r9, r9, r1	@ D.42544, ChromOffset, MEM[(struct IMAGE *)pstLFs_73 + 8B].top_luma_phy_addr
	str	r3, [r10, #132]	@ D.42544, MEM[(struct IMAGE *)pstLFs_73 + 8B].chrom_2d_phy_addr
	str	r9, [r10, #100]	@ D.42544, MEM[(struct IMAGE *)pstLFs_73 + 8B].top_chrom_phy_addr
	add	r9, r9, r2	@ D.42544, D.42544, MEM[(struct IMAGE *)pstLFs_73 + 8B].image_stride
	str	r9, [r10, #108]	@ D.42544, MEM[(struct IMAGE *)pstLFs_73 + 8B].btm_chrom_phy_addr
	str	r0, [r10, #44]	@, MEM[(struct IMAGE *)pstLFs_73 + 8B].chrom_vir_addr
	mov	r0, r3	@, D.42544
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #60]	@, MEM[(struct IMAGE *)pstLFs_73 + 8B].chrom_2d_vir_addr
	b	.L2886	@
.L2931:
	mov	r3, #0	@ tmp353,
	strb	r3, [r7, #1512]	@ tmp353, pH264Ctx_15(D)->PrevPic.structure
	ldr	r1, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	mov	r0, r3	@ D.42541, tmp353
	ldr	r2, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	str	r1, [r7, #1520]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r1, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	strb	r3, [r7, #1536]	@ tmp353, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
	str	r6, [r7, #1532]	@ D.42544, pH264Ctx_15(D)->PrevPic.image_id
	str	r1, [r7, #1516]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	str	r2, [r7, #1528]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PrevPic.pic_counter
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2927:
	cmp	r3, #0	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc,
	beq	.L2870	@,
	b	.L2894	@
.L2885:
	ldr	r2, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r1, r9	@, pH264Ctx_15(D)->CurrPic.state
	strb	r3, [r7, #552]	@ tmp295, pH264Ctx_15(D)->CurrPic.state
	mov	r0, r5	@, pH264Ctx
	strb	r3, [r2, #4]	@ tmp295, _78->is_in_dpb
	bl	ClearAll	@
	mvn	r0, #0	@ D.42541,
	b	.L2919	@
.L2929:
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ _32->is_used, _32->is_used
	cmp	r3, #2	@ _32->is_used,
	bne	.L2923	@,
.L2875:
	ldr	ip, [r7, #960]	@ D.42542, pH264Ctx_15(D)->CurrPic.frame_store
	cmp	ip, #0	@ D.42542,
	bne	.L2897	@,
	b	.L2894	@
.L2928:
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.42540, _32->is_used
	cmp	r3, #1	@ D.42540,
	bne	.L2923	@,
	b	.L2875	@
.L2872:
	strb	ip, [r7, #553]	@ D.42542, pH264Ctx_15(D)->CurrPic.field_pair_flag
	b	.L2894	@
	.fnend
	.size	AllocFrameStore, .-AllocFrameStore
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
	ldr	r4, [r0, #352]	@ D.42565, pH264Ctx_8(D)->ImageQue.ResetMagicWord
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #52896	@,
	bl	__memzero	@
	add	r0, r6, #8	@, pH264Ctx,
	str	r4, [r6, #352]	@ D.42565, pH264Ctx_8(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	mov	r3, #0	@ tmp150,
	str	r7, [r6]	@ pstExtraData, pH264Ctx_8(D)->pstExtraData
	str	r3, [r6, #360]	@ tmp150, pH264Ctx_8(D)->pH264DecParam
	str	r3, [r6, #364]	@ tmp150, pH264Ctx_8(D)->StartMode
	ldr	r3, [r7, #32]	@ pstExtraData_14(D)->eCapLevel, pstExtraData_14(D)->eCapLevel
	cmp	r3, #25	@ pstExtraData_14(D)->eCapLevel,
	beq	.L2954	@,
	add	r5, r6, #12288	@ tmp293, pH264Ctx,
	mov	r1, #32	@ tmp161,
	mov	r2, #256	@ tmp164,
	mov	r3, #136	@ tmp167,
	str	r1, [r5, #1284]	@ tmp161, pH264Ctx_8(D)->MaxSpsNum
	str	r2, [r5, #1288]	@ tmp164, pH264Ctx_8(D)->MaxPpsNum
	str	r3, [r5, #1280]	@ tmp167, pH264Ctx_8(D)->MaxSliceNum
.L2935:
	ldr	r0, [r7, #504]	@, pstExtraData_14(D)->s32ContextMemAddr
	mov	r8, #2208	@ tmp180,
	bl	MEM_Phy2Vir	@
	ldr	r9, [r5, #1284]	@ D.42565, pH264Ctx_8(D)->MaxSpsNum
	ldr	r3, [r6]	@ pH264Ctx_8(D)->pstExtraData, pH264Ctx_8(D)->pstExtraData
	mov	r2, #4000	@ tmp175,
	ldr	r10, [r5, #1288]	@ D.42565, pH264Ctx_8(D)->MaxPpsNum
	add	r4, r6, #49152	@ tmp292, pH264Ctx,
	mul	r2, r2, r9	@ D.42565, tmp175, D.42565
	ldr	r3, [r3, #500]	@ _32->s32BasicCtxSize, _32->s32BasicCtxSize
	mul	r1, r8, r10	@ D.42565, tmp180, D.42565
	add	r3, r0, r3	@ D.42572,, _32->s32BasicCtxSize
	str	r3, [r5, #1292]	@ D.42572, pH264Ctx_8(D)->SPS
	add	ip, r3, r2	@ D.42573, D.42572, D.42565
	str	ip, [r5, #1296]	@ D.42573, pH264Ctx_8(D)->PPS
	cmp	r3, #0	@ D.42572,
	cmpne	ip, #0	@, D.42573,
	add	r0, ip, r1	@ D.42574, D.42573, D.42565
	str	r0, [r4, #3608]	@ D.42574, pH264Ctx_8(D)->DecSlicePara
	moveq	lr, #1	@ tmp187,
	movne	lr, #0	@ tmp187,
	cmp	r0, #0	@ D.42574,
	orreq	lr, lr, #1	@,, tmp193, tmp187
	cmp	lr, #0	@ tmp193,
	bne	.L2942	@,
	ldr	lr, [r7, #524]	@ pstExtraData_14(D)->s32KeepSPSPPS, pstExtraData_14(D)->s32KeepSPSPPS
	cmp	lr, #0	@ pstExtraData_14(D)->s32KeepSPSPPS,
	bne	.L2938	@,
	cmp	r2, #0	@ D.42565,
	bne	.L2955	@,
	cmp	r1, #0	@ D.42565,
	bne	.L2956	@,
.L2953:
	ldr	r9, [r5, #1284]	@ D.42565, pH264Ctx_8(D)->MaxSpsNum
	ldr	r0, [r4, #3608]	@ D.42574, pH264Ctx_8(D)->DecSlicePara
.L2938:
	add	r2, r6, #16384	@ tmp211, pH264Ctx,
	movw	r3, #4060	@ tmp217,
	str	r10, [r2, #1228]	@ D.42565, pH264Ctx_8(D)->CurrPPS.pic_parameter_set_id
	ldr	r1, [r5, #1280]	@ pH264Ctx_8(D)->MaxSliceNum, pH264Ctx_8(D)->MaxSliceNum
	str	r9, [r5, #2044]	@ D.42565, pH264Ctx_8(D)->CurrSPS.seq_parameter_set_id
	mul	r1, r3, r1	@ __n, tmp217, pH264Ctx_8(D)->MaxSliceNum
	cmp	r1, #0	@ __n,
	bne	.L2957	@,
.L2941:
	ldr	r3, [r4, #3676]	@ pH264Ctx_8(D)->advanced_cfg, pH264Ctx_8(D)->advanced_cfg
	mov	r5, #0	@ tmp225,
	mov	r1, #40	@ tmp249,
	mov	r2, #17	@ tmp252,
	str	r5, [r4, #3632]	@ tmp225, pH264Ctx_8(D)->TotalNal
	mov	r7, #1	@ tmp288,
	str	r3, [r4, #3616]	@ pH264Ctx_8(D)->advanced_cfg, pH264Ctx_8(D)->OldDecMode
	mov	r0, r6	@, pH264Ctx
	mov	r3, #25	@ tmp285,
	str	r5, [r4, #3636]	@ tmp225, pH264Ctx_8(D)->TotalSPS
	str	r5, [r4, #3640]	@ tmp225, pH264Ctx_8(D)->TotalPPS
	str	r5, [r4, #3644]	@ tmp225, pH264Ctx_8(D)->TotalSlice
	str	r5, [r4, #3648]	@ tmp225, pH264Ctx_8(D)->SeqCnt
	str	r5, [r4, #3652]	@ tmp225, pH264Ctx_8(D)->TotalPicNum
	str	r5, [r4, #3656]	@ tmp225, pH264Ctx_8(D)->TotalFrameNum
	str	r5, [r4, #3660]	@ tmp225, pH264Ctx_8(D)->TotalFieldNum
	str	r5, [r4, #3624]	@ tmp225, pH264Ctx_8(D)->MutexHold
	str	r5, [r4, #2192]	@ tmp225, pH264Ctx_8(D)->TotalUsrDatNum
	str	r5, [r4, #2196]	@ tmp225, pH264Ctx_8(D)->pUsrDatArray
	str	r5, [r4, #2200]	@ tmp225, pH264Ctx_8(D)->pUsrDatArray
	str	r5, [r4, #2204]	@ tmp225, pH264Ctx_8(D)->pUsrDatArray
	str	r5, [r4, #2208]	@ tmp225, pH264Ctx_8(D)->pUsrDatArray
	str	r5, [r4, #2172]	@ tmp225, pH264Ctx_8(D)->AllowStartDec
	str	r5, [r4, #2180]	@ tmp225, pH264Ctx_8(D)->IDRFound
	str	r5, [r4, #3696]	@ tmp225, pH264Ctx_8(D)->FirstFrameDisplayed
	str	r5, [r4, #2184]	@ tmp225, pH264Ctx_8(D)->PPicFound
	str	r1, [r4, #2164]	@ tmp249, pH264Ctx_8(D)->TotalFsNum
	str	r2, [r4, #2168]	@ tmp252, pH264Ctx_8(D)->TotalPmvNum
	str	r3, [r4, #2188]	@ tmp285, pH264Ctx_8(D)->frame_rate
	str	r7, [r4, #3740]	@ tmp288, pH264Ctx_8(D)->DSD_NeedClearQue
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.42568,
	str	r0, [r4, #3688]	@ D.42568, pH264Ctx_8(D)->ChanID
	beq	.L2942	@,
	mov	r1, r5	@, tmp225
	mov	r0, r6	@, pH264Ctx
	bl	ClearAll	@
	mov	r0, r7	@ D.42564, tmp288
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2957:
	bl	__memzero	@
	b	.L2941	@
.L2954:
	ldr	r3, [r7, #580]	@ D.42568, pstExtraData_14(D)->stChanOption.s32MaxSpsNum
	add	r5, r6, #12288	@ tmp293, pH264Ctx,
	str	r3, [r5, #1284]	@ D.42568, pH264Ctx_8(D)->MaxSpsNum
	ldr	r3, [r7, #584]	@ D.42568, pstExtraData_14(D)->stChanOption.s32MaxPpsNum
	str	r3, [r5, #1288]	@ D.42568, pH264Ctx_8(D)->MaxPpsNum
	ldr	r3, [r7, #576]	@ D.42568, pstExtraData_14(D)->stChanOption.s32MaxSliceNum
	str	r3, [r5, #1280]	@ D.42568, pH264Ctx_8(D)->MaxSliceNum
	b	.L2935	@
.L2955:
	mov	r1, r2	@, D.42565
	mov	r0, r3	@, D.42572
	bl	__memzero	@
	ldr	r10, [r5, #1288]	@ D.42565, pH264Ctx_8(D)->MaxPpsNum
	ldr	ip, [r5, #1296]	@ D.42573, pH264Ctx_8(D)->PPS
	mul	r1, r8, r10	@ D.42565, tmp180, D.42565
	cmp	r1, #0	@ D.42565,
	beq	.L2953	@,
.L2956:
	mov	r0, ip	@, D.42573
	bl	__memzero	@
	ldr	r10, [r5, #1288]	@ D.42565, pH264Ctx_8(D)->MaxPpsNum
	b	.L2953	@
.L2942:
	mvn	r0, #19	@ D.42564,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	H264DEC_Init, .-H264DEC_Init
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
	ldrb	r8, [r2, #3]	@ zero_extendqisi2	@ D.42579, pCurrPic_25(D)->structure
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r1	@ pos, pos
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	cmp	r8, #1	@ D.42579,
	beq	.L2960	@,
	bcc	.L2961	@,
	cmp	r8, #2	@ D.42579,
	beq	.L2962	@,
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.42581,
.L2966:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2962:
	ldr	r3, [r2, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	mov	r2, #3	@ tmp687,
	strb	r2, [r3, #400]	@ tmp687, _280->frame.structure
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pCurrPic_25(D)->field_pair_flag, pCurrPic_25(D)->field_pair_flag
	cmp	r3, #0	@ pCurrPic_25(D)->field_pair_flag,
	mov	r3, r1, asl #2	@ D.42588, pos,
	beq	.L2983	@,
	add	r7, r0, r3	@ D.42587, pH264Ctx, D.42588
	add	r7, r7, #24576	@ tmp884, D.42587,
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	cmp	r2, #0	@ D.42578,
	beq	.L2983	@,
	strb	r8, [r2, #472]	@ D.42579, _283->bottom_field.structure
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldr	r2, [r4, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	str	r2, [r3, #476]	@ D.42578, _285->bottom_field.frame_store
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_long_term
	strb	r2, [r3, #473]	@ D.42582, _288->bottom_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_short_term
	strb	r2, [r3, #474]	@ D.42582, _291->bottom_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldr	r2, [r4, #440]	@ D.42584, pCurrPic_25(D)->bottompoc
	str	r2, [r3, #488]	@ D.42584, _294->bottom_field.poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldr	r2, [r4, #444]	@ D.42583, pCurrPic_25(D)->pic_type
	str	r2, [r3, #496]	@ D.42583, _297->bottom_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldr	r2, [r4, #452]	@ D.42583, pCurrPic_25(D)->err_level
	str	r2, [r3, #492]	@ D.42583, _300->bottom_field.err_level
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldr	r1, [r3, #456]	@ _303->top_field.err_level, _303->top_field.err_level
	ldr	r2, [r3, #492]	@ _303->bottom_field.err_level, _303->bottom_field.err_level
	add	r2, r2, r1	@ D.42583, _303->bottom_field.err_level, _303->top_field.err_level
	str	r2, [r3, #420]	@ D.42583, _303->frame.err_level
	str	r2, [r3, #544]	@ D.42583, _303->err_level
	add	r1, r4, #16	@, pCurrPic,
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.42579, _309->non_existing
	cmp	r3, #0	@ D.42579,
	ldrneb	r3, [r4, #2]	@ zero_extendqisi2	@ D.42579, pCurrPic_25(D)->non_existing
	strb	r3, [r2]	@ D.42579, _309->non_existing
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _313->is_used, _313->is_used
	orr	r3, r3, #2	@ tmp786, _313->is_used,
	strb	r3, [r2, #1]	@ tmp786, _313->is_used
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	cmp	r3, #1	@ pCurrPic_25(D)->mode_skip_flag,
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _318->mode_skip_flag,
	orreq	r2, r2, #2	@ D.42579, _318->mode_skip_flag,
	strb	r2, [r3, #3]	@ D.42579, _2->mode_skip_flag
	mov	r2, #392	@,
	ldr	lr, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	add	r0, lr, #8	@, D.42578,
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.42578,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _324->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _324->fs_image.PTS
	strd	r8, [sp]	@ OtherFieldUsertag, %sfp
	ldrd	r8, [lr, #32]	@ OtherFieldDispTime, D.42578,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _324->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _324->fs_image.DispFrameDistance
	strd	r8, [sp, #8]	@ OtherFieldDispTime,,
	str	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r9, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _324->fs_image.DistanceBeforeFirstFrame
	ldr	r8, [lr, #88]	@ OtherFieldGopNum, _324->fs_image.GopNum
	str	r3, [sp, #16]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #16]	@ OtherFieldPts, %sfp
	ldr	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r0, [r4, #24]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	ldr	r1, [r4, #28]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	and	r2, ip, r3	@ tmp810, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp815, tmp810,
	and	r1, r1, r0	@ tmp804, pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	movne	r2, #1	@ tmp815,
	cmn	r1, #1	@ tmp804,
	ldrd	r0, [sp]	@ OtherFieldUsertag, %sfp
	movne	r2, #0	@ tmp815,
	cmp	r2, #0	@ tmp815,
	ldrne	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	strne	ip, [r2, #16]	@ OtherFieldPts, _334->fs_image.PTS
	strne	r3, [r2, #20]	@ OtherFieldPts, _334->fs_image.PTS
	ldrd	r2, [r4, #32]	@ D.42585, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	cmp	r3, r1	@ D.42585, OtherFieldUsertag
	cmpeq	r2, r0	@ D.42585, OtherFieldUsertag
	movhi	r2, r0	@ D.42585, OtherFieldUsertag
	movhi	r3, r1	@ D.42585, OtherFieldUsertag
	ldrd	r0, [sp, #8]	@ OtherFieldDispTime,,
	strd	r2, [ip, #24]	@ D.42585, D.42578,
	ldrd	r2, [r4, #40]	@ D.42585, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	cmp	r3, r1	@ D.42585, OtherFieldDispTime
	cmpeq	r2, r0	@ D.42585, OtherFieldDispTime
	movhi	r2, r0	@ D.42585, OtherFieldDispTime
	movhi	r3, r1	@ D.42585, OtherFieldDispTime
	strd	r2, [ip, #32]	@ D.42585, D.42578,
	ldr	r3, [r4, #84]	@ pCurrPic_25(D)->fs_image.DispEnableFlag, pCurrPic_25(D)->fs_image.DispEnableFlag
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	cmp	r3, fp	@ pCurrPic_25(D)->fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.42583, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.42583, _344->fs_image.DispEnableFlag
	ldr	r3, [r4, #88]	@ pCurrPic_25(D)->fs_image.DispFrameDistance, pCurrPic_25(D)->fs_image.DispFrameDistance
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	cmp	r3, r10	@ pCurrPic_25(D)->fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.42583, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.42583, _348->fs_image.DispFrameDistance
	ldr	r3, [r4, #92]	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	cmp	r3, r9	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r9	@ D.42583, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.42583, _352->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #96]	@ pCurrPic_25(D)->fs_image.GopNum, pCurrPic_25(D)->fs_image.GopNum
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	cmp	r3, r8	@ pCurrPic_25(D)->fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r8	@ D.42583, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.42583, _356->fs_image.GopNum
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L2995	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L2995	@,
.L2996:
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldr	r3, [r2, #496]	@ _370->bottom_field.pic_type, _370->bottom_field.pic_type
	ldr	r1, [r2, #460]	@ _370->top_field.pic_type, _370->top_field.pic_type
	cmp	r3, r1	@ _370->bottom_field.pic_type, _370->top_field.pic_type
	movcc	r3, r1	@ D.42583, _370->top_field.pic_type
	str	r3, [r2, #540]	@ D.42583, _370->pic_type
	ldr	r2, [r4, #428]	@ D.42584, pCurrPic_25(D)->thispoc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	str	r2, [r3, #524]	@ D.42584, _375->poc
	ldr	r0, [r7, #1856]	@, MEM[(struct H264_CTX_S *)_623 + 26432B]
	bl	CombineFldsToFrm	@
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldr	r3, [r2, #552]	@ D.42583, _380->apc_idc
	ldr	r2, [r2, #488]	@ _380->bottom_field.poc, _380->bottom_field.poc
	add	r3, r3, #6656	@ tmp864, D.42583,
	add	r3, r3, #52	@ tmp864, tmp864,
	add	r3, r6, r3, lsl #2	@ tmp865, pH264Ctx, tmp864,
	str	r2, [r3, #4]	@ _380->bottom_field.poc, pH264Ctx_28(D)->APC.poc
	b	.L2982	@
.L2961:
	ldr	r2, [r2, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	add	r7, r0, r1, lsl #2	@ D.42587, pH264Ctx, pos,
	add	r7, r7, #24576	@ tmp881, D.42587,
	mov	r3, #3	@ tmp432,
	str	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->non_existing
	strb	r1, [r2]	@ D.42582, _27->non_existing
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	strb	r3, [r2, #1]	@ tmp432, _33->is_used
	ldr	r1, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldrb	r1, [r1, #4]	@ zero_extendqisi2	@ D.42582, _36->is_in_dpb
	strb	r1, [r2, #4]	@ D.42582, _35->is_in_dpb
	ldr	r1, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r1, #532]	@ D.42583, _40->is_displayed
	str	r1, [r2, #532]	@ D.42583, _39->is_displayed
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	cmp	r1, #0	@ pCurrPic_25(D)->is_long_term,
	beq	.L3051	@,
.L2963:
	strb	r3, [r2, #2]	@ D.42579, _43->is_reference
	add	r1, r4, #16	@, pCurrPic,
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	mov	r2, #392	@,
	ldr	r0, [r4, #476]	@ D.42583, pCurrPic_25(D)->pmv_address_idc
	mov	r9, #1	@ tmp492,
	str	r0, [r3, #548]	@ D.42583, _47->pmv_address_idc
	ldr	r0, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	add	r0, r0, #8	@, D.42578,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #452]	@ D.42583, pCurrPic_25(D)->err_level
	mov	ip, #0	@ tmp463,
	mov	r2, ip	@, tmp463
	mov	lr, #2	@ tmp496,
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #420]	@ D.42583, _52->frame.err_level
	str	r1, [r3, #544]	@ D.42583, _52->err_level
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	str	r1, [r3, #476]	@ D.42578, _56->bottom_field.frame_store
	str	r1, [r3, #440]	@ D.42578, _56->top_field.frame_store
	str	r1, [r3, #404]	@ D.42578, _56->frame.frame_store
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #420]	@ D.42583, pCurrPic_25(D)->long_term_frame_idx
	str	r1, [r3, #520]	@ D.42583, _61->long_term_frame_idx
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #416]	@ D.42583, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.42583, _64->frame_num
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	strb	ip, [r3, #400]	@ tmp463, _67->frame.structure
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #401]	@ D.42582, _69->frame.is_long_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #402]	@ D.42582, _72->frame.is_short_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #444]	@ D.42583, pCurrPic_25(D)->pic_type
	str	r1, [r3, #424]	@ D.42583, _75->frame.pic_type
	str	r1, [r3, #540]	@ D.42583, _75->pic_type
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ pCurrPic_25(D)->MbaffFrameFlag, pCurrPic_25(D)->MbaffFrameFlag
	str	r1, [r3, #536]	@ pCurrPic_25(D)->MbaffFrameFlag, _79->MbaffFrameFlag
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #428]	@ D.42584, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.42584, _83->poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #432]	@ D.42584, pCurrPic_25(D)->framepoc
	str	r1, [r3, #416]	@ D.42584, _86->frame.poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #436]	@ D.42584, pCurrPic_25(D)->toppoc
	str	r1, [r3, #452]	@ D.42584, _89->top_field.poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r4, #440]	@ D.42584, pCurrPic_25(D)->bottompoc
	str	r1, [r3, #488]	@ D.42584, _92->bottom_field.poc
	ldrb	r1, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	cmp	r1, r9	@ pCurrPic_25(D)->mode_skip_flag,
	moveq	r8, #3	@ D.42579,
	strb	r8, [r3, #3]	@ D.42579, _95->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_501 + 26432B]
	ldr	r1, [r3, #404]	@ D.42586, _98->frame.frame_store
	ldrb	r10, [r3, #401]	@ zero_extendqisi2	@ D.42582, _98->frame.is_long_term
	ldrb	r8, [r3, #402]	@ zero_extendqisi2	@ D.42582, _98->frame.is_short_term
	ldr	r7, [r3, #420]	@ D.42583, _98->frame.err_level
	ldr	ip, [r3, #424]	@ D.42583, _98->frame.pic_type
	strb	r9, [r3, #436]	@ tmp492, _98->top_field.structure
	strb	lr, [r3, #472]	@ tmp496, _98->bottom_field.structure
	strb	r10, [r3, #437]	@ D.42582, _98->top_field.is_long_term
	strb	r10, [r3, #473]	@ D.42582, _98->bottom_field.is_long_term
	strb	r8, [r3, #438]	@ D.42582, _98->top_field.is_short_term
	strb	r8, [r3, #474]	@ D.42582, _98->bottom_field.is_short_term
	str	r7, [r3, #456]	@ D.42583, _98->top_field.err_level
	str	r7, [r3, #492]	@ D.42583, _98->bottom_field.err_level
	str	ip, [r3, #460]	@ D.42583, _98->top_field.pic_type
	str	ip, [r3, #496]	@ D.42583, _98->bottom_field.pic_type
	str	r1, [r3, #440]	@ D.42586, _98->top_field.frame_store
	str	r1, [r3, #476]	@ D.42586, _98->bottom_field.frame_store
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	bne	.L2972	@,
.L2982:
	add	r5, r5, #6592	@ tmp869, pos,
	add	r3, r6, #49152	@ tmp873, pH264Ctx,
	add	r5, r5, #16	@ tmp869, tmp869,
	mov	r2, #1	@,
	ldr	r0, [r3, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r3, [r6, r5, asl #2]	@ tmp870, pH264Ctx_28(D)->DPB.fs
	ldr	r1, [r3, #508]	@, _457->logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, #0	@ D.42581,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2960:
	ldr	r3, [r2, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	mov	r2, #3	@ tmp505,
	strb	r2, [r3, #400]	@ tmp505, _104->frame.structure
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pCurrPic_25(D)->field_pair_flag, pCurrPic_25(D)->field_pair_flag
	cmp	r3, #0	@ pCurrPic_25(D)->field_pair_flag,
	mov	r3, r1, asl #2	@ D.42588, pos,
	beq	.L2967	@,
	add	r7, r0, r3	@ D.42587, pH264Ctx, D.42588
	add	r7, r7, #24576	@ tmp882, D.42587,
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	cmp	r2, #0	@ D.42578,
	beq	.L2967	@,
	strb	r8, [r2, #436]	@ D.42579, _107->top_field.structure
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldr	r2, [r4, #444]	@ D.42583, pCurrPic_25(D)->pic_type
	str	r2, [r3, #460]	@ D.42583, _109->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_long_term
	strb	r2, [r3, #437]	@ D.42582, _112->top_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_short_term
	strb	r2, [r3, #438]	@ D.42582, _115->top_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldr	r2, [r4, #436]	@ D.42584, pCurrPic_25(D)->toppoc
	str	r2, [r3, #452]	@ D.42584, _118->top_field.poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldr	r2, [r4, #444]	@ D.42583, pCurrPic_25(D)->pic_type
	str	r2, [r3, #460]	@ D.42583, _121->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldr	r2, [r4, #452]	@ D.42583, pCurrPic_25(D)->err_level
	str	r2, [r3, #456]	@ D.42583, _124->top_field.err_level
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldr	r1, [r3, #456]	@ _127->top_field.err_level, _127->top_field.err_level
	ldr	r2, [r3, #492]	@ _127->bottom_field.err_level, _127->bottom_field.err_level
	add	r2, r2, r1	@ D.42583, _127->bottom_field.err_level, _127->top_field.err_level
	str	r2, [r3, #420]	@ D.42583, _127->frame.err_level
	str	r2, [r3, #544]	@ D.42583, _127->err_level
	add	r1, r4, #16	@, pCurrPic,
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.42579, _133->non_existing
	cmp	r3, #0	@ D.42579,
	ldrneb	r3, [r4, #2]	@ zero_extendqisi2	@ D.42579, pCurrPic_25(D)->non_existing
	strb	r3, [r2]	@ D.42579, _133->non_existing
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _137->is_used, _137->is_used
	orr	r3, r3, #1	@ tmp605, _137->is_used,
	strb	r3, [r2, #1]	@ tmp605, _137->is_used
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	cmp	r3, #1	@ pCurrPic_25(D)->mode_skip_flag,
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _142->mode_skip_flag,
	orreq	r2, r2, #1	@ D.42579, _142->mode_skip_flag,
	strb	r2, [r3, #3]	@ D.42579, _1->mode_skip_flag
	mov	r2, #392	@,
	ldr	lr, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	add	r0, lr, #8	@, D.42578,
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.42578,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _148->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _148->fs_image.PTS
	strd	r8, [sp]	@ OtherFieldUsertag, %sfp
	ldrd	r8, [lr, #32]	@ OtherFieldDispTime, D.42578,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _148->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _148->fs_image.DispFrameDistance
	strd	r8, [sp, #8]	@ OtherFieldDispTime,,
	str	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r9, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _148->fs_image.DistanceBeforeFirstFrame
	ldr	r8, [lr, #88]	@ OtherFieldGopNum, _148->fs_image.GopNum
	str	r3, [sp, #16]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #16]	@ OtherFieldPts, %sfp
	ldr	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r0, [r4, #24]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	ldr	r1, [r4, #28]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	and	r2, ip, r3	@ tmp629, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp634, tmp629,
	and	r1, r1, r0	@ tmp623, pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	movne	r2, #1	@ tmp634,
	cmn	r1, #1	@ tmp623,
	ldrd	r0, [sp]	@ OtherFieldUsertag, %sfp
	movne	r2, #0	@ tmp634,
	cmp	r2, #0	@ tmp634,
	ldrne	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	strne	ip, [r2, #16]	@ OtherFieldPts, _158->fs_image.PTS
	strne	r3, [r2, #20]	@ OtherFieldPts, _158->fs_image.PTS
	ldrd	r2, [r4, #32]	@ D.42585, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	cmp	r3, r1	@ D.42585, OtherFieldUsertag
	cmpeq	r2, r0	@ D.42585, OtherFieldUsertag
	movhi	r2, r0	@ D.42585, OtherFieldUsertag
	movhi	r3, r1	@ D.42585, OtherFieldUsertag
	ldrd	r0, [sp, #8]	@ OtherFieldDispTime,,
	strd	r2, [ip, #24]	@ D.42585, D.42578,
	ldrd	r2, [r4, #40]	@ D.42585, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	cmp	r3, r1	@ D.42585, OtherFieldDispTime
	cmpeq	r2, r0	@ D.42585, OtherFieldDispTime
	movhi	r2, r0	@ D.42585, OtherFieldDispTime
	movhi	r3, r1	@ D.42585, OtherFieldDispTime
	strd	r2, [ip, #32]	@ D.42585, D.42578,
	ldr	r3, [r4, #84]	@ pCurrPic_25(D)->fs_image.DispEnableFlag, pCurrPic_25(D)->fs_image.DispEnableFlag
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	cmp	r3, fp	@ pCurrPic_25(D)->fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.42583, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.42583, _168->fs_image.DispEnableFlag
	ldr	r3, [r4, #88]	@ pCurrPic_25(D)->fs_image.DispFrameDistance, pCurrPic_25(D)->fs_image.DispFrameDistance
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	cmp	r3, r10	@ pCurrPic_25(D)->fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.42583, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.42583, _172->fs_image.DispFrameDistance
	ldr	r3, [r4, #92]	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	cmp	r3, r9	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r9	@ D.42583, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.42583, _176->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #96]	@ pCurrPic_25(D)->fs_image.GopNum, pCurrPic_25(D)->fs_image.GopNum
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	cmp	r3, r8	@ pCurrPic_25(D)->fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r8	@ D.42583, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.42583, _180->fs_image.GopNum
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L2979	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L2979	@,
.L2980:
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldr	r3, [r2, #496]	@ _194->bottom_field.pic_type, _194->bottom_field.pic_type
	ldr	r1, [r2, #460]	@ _194->top_field.pic_type, _194->top_field.pic_type
	cmp	r3, r1	@ _194->bottom_field.pic_type, _194->top_field.pic_type
	movcc	r3, r1	@ D.42583, _194->top_field.pic_type
	str	r3, [r2, #540]	@ D.42583, _194->pic_type
	ldr	r2, [r4, #428]	@ D.42584, pCurrPic_25(D)->thispoc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	str	r2, [r3, #524]	@ D.42584, _199->poc
	ldr	r0, [r7, #1856]	@, MEM[(struct H264_CTX_S *)_529 + 26432B]
	bl	CombineFldsToFrm	@
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldr	r3, [r2, #552]	@ D.42583, _204->apc_idc
	ldr	r2, [r2, #452]	@ _204->top_field.poc, _204->top_field.poc
	add	r3, r3, #6656	@ tmp683, D.42583,
	add	r3, r3, #36	@ tmp683, tmp683,
	add	r3, r6, r3, lsl #2	@ tmp684, pH264Ctx, tmp683,
	str	r2, [r3, #4]	@ _204->top_field.poc, pH264Ctx_28(D)->APC.poc
	b	.L2982	@
.L2967:
	add	r7, r6, r3	@ D.42587, pH264Ctx, D.42588
	ldr	r3, [r4, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	add	r7, r7, #24576	@ tmp883, D.42587,
	mov	r2, #1	@ tmp514,
	str	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	strb	r2, [r3, #436]	@ tmp514, _209->top_field.structure
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r4, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	str	r1, [r3, #440]	@ D.42578, _212->top_field.frame_store
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #437]	@ D.42582, _215->top_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #438]	@ D.42582, _218->top_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r4, #436]	@ D.42584, pCurrPic_25(D)->toppoc
	str	r1, [r3, #452]	@ D.42584, _221->top_field.poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r4, #444]	@ D.42583, pCurrPic_25(D)->pic_type
	str	r1, [r3, #460]	@ D.42583, _224->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r4, #452]	@ D.42583, pCurrPic_25(D)->err_level
	str	r1, [r3, #456]	@ D.42583, _227->top_field.err_level
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r3, #456]	@ D.42583, _230->top_field.err_level
	str	r1, [r3, #420]	@ D.42583, _230->frame.err_level
	str	r1, [r3, #544]	@ D.42583, _230->err_level
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->non_existing
	strb	r1, [r3]	@ D.42582, _234->non_existing
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	strb	r2, [r3, #1]	@ tmp514, _237->is_used
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ D.42582, _240->is_in_dpb
	strb	r2, [r3, #4]	@ D.42582, _239->is_in_dpb
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r2, [r2, #532]	@ D.42583, _244->is_displayed
	str	r2, [r3, #532]	@ D.42583, _243->is_displayed
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L2969	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L2969	@,
.L2970:
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	mov	r0, #0	@ tmp557,
	mov	r2, #392	@,
	add	r1, r4, #16	@, pCurrPic,
	str	r0, [r3, #536]	@ tmp557, _255->MbaffFrameFlag
	ldr	r0, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	add	r0, r0, #8	@, D.42578,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r4, #476]	@ D.42583, pCurrPic_25(D)->pmv_address_idc
	mov	r2, #1	@,
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #548]	@ D.42583, _259->pmv_address_idc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r4, #416]	@ D.42583, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.42583, _262->frame_num
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r4, #428]	@ D.42584, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.42584, _265->poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldr	r1, [r4, #444]	@ D.42583, pCurrPic_25(D)->pic_type
	str	r1, [r3, #540]	@ D.42583, _268->pic_type
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r1, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	rsb	r3, r2, r3	@ tmp575,, pCurrPic_25(D)->mode_skip_flag
	clz	r3, r3	@ tmp575, tmp575
	mov	r3, r3, lsr #5	@ tmp575, tmp575,
	strb	r3, [r1, #3]	@ tmp575, _271->mode_skip_flag
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	beq	.L2982	@,
.L2972:
	mov	r0, r6	@, pH264Ctx
	bl	FlushDPB	@
	mov	r0, r6	@, pH264Ctx
	add	r6, r6, #49152	@ tmp500, pH264Ctx,
	bl	InitDPB	@
	mov	r3, #0	@ tmp501,
	mvn	r0, #0	@ D.42581,
	str	r3, [r6, #2180]	@ tmp501, pH264Ctx_28(D)->IDRFound
	str	r3, [r6, #3696]	@ tmp501, pH264Ctx_28(D)->FirstFrameDisplayed
	b	.L2966	@
.L2983:
	add	r7, r6, r3	@ D.42587, pH264Ctx, D.42588
	ldr	r3, [r4, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	add	r7, r7, #24576	@ tmp885, D.42587,
	mov	r2, #2	@ tmp696,
	str	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	strb	r2, [r3, #472]	@ tmp696, _385->bottom_field.structure
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r4, #408]	@ D.42578, pCurrPic_25(D)->frame_store
	str	r1, [r3, #476]	@ D.42578, _388->bottom_field.frame_store
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #473]	@ D.42582, _391->bottom_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #474]	@ D.42582, _394->bottom_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r4, #440]	@ D.42584, pCurrPic_25(D)->bottompoc
	str	r1, [r3, #488]	@ D.42584, _397->bottom_field.poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r4, #444]	@ D.42583, pCurrPic_25(D)->pic_type
	str	r1, [r3, #496]	@ D.42583, _400->bottom_field.pic_type
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r4, #452]	@ D.42583, pCurrPic_25(D)->err_level
	str	r1, [r3, #492]	@ D.42583, _403->bottom_field.err_level
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r3, #456]	@ D.42583, _406->top_field.err_level
	str	r1, [r3, #420]	@ D.42583, _406->frame.err_level
	str	r1, [r3, #544]	@ D.42583, _406->err_level
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.42582, pCurrPic_25(D)->non_existing
	strb	r1, [r3]	@ D.42582, _410->non_existing
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	strb	r2, [r3, #1]	@ tmp696, _413->is_used
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ D.42582, _416->is_in_dpb
	strb	r2, [r3, #4]	@ D.42582, _415->is_in_dpb
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r2, [r2, #532]	@ D.42583, _420->is_displayed
	str	r2, [r3, #532]	@ D.42583, _419->is_displayed
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L2985	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L2985	@,
.L2986:
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	mov	r0, #0	@ tmp739,
	mov	r2, #392	@,
	add	r1, r4, #16	@, pCurrPic,
	str	r0, [r3, #536]	@ tmp739, _431->MbaffFrameFlag
	ldr	r0, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	add	r0, r0, #8	@, D.42578,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r4, #476]	@ D.42583, pCurrPic_25(D)->pmv_address_idc
	mov	r2, #2	@,
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #548]	@ D.42583, _435->pmv_address_idc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r4, #416]	@ D.42583, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.42583, _438->frame_num
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r4, #428]	@ D.42584, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.42584, _441->poc
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldr	r1, [r4, #444]	@ D.42583, pCurrPic_25(D)->pic_type
	str	r1, [r3, #496]	@ D.42583, _444->bottom_field.pic_type
	str	r1, [r3, #540]	@ D.42583, _444->pic_type
	ldrb	r1, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	cmp	r1, #1	@ pCurrPic_25(D)->mode_skip_flag,
	moveq	r8, r2	@ D.42579,
	movne	r8, #0	@ D.42579,
	strb	r8, [r3, #3]	@ D.42579, _448->mode_skip_flag
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	beq	.L2982	@,
	b	.L2972	@
.L3051:
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ D.42579, pCurrPic_25(D)->is_short_term
	cmp	r3, #0	@ D.42579,
	movne	r3, #3	@ D.42579,
	b	.L2963	@
.L2985:
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	mov	r2, #2	@ tmp732,
	strb	r2, [r3, #2]	@ tmp732, _425->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_675 + 26432B]
	ldreq	r2, [r4, #420]	@ D.42583, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.42583, _428->long_term_frame_idx
	b	.L2986	@
.L2969:
	ldr	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	mov	r2, #1	@ tmp550,
	strb	r2, [r3, #2]	@ tmp550, _249->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, r2	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_581 + 26432B]
	ldreq	r2, [r4, #420]	@ D.42583, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.42583, _252->long_term_frame_idx
	b	.L2970	@
.L2979:
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2	@ _186->is_reference, _186->is_reference
	orr	r3, r3, #1	@ tmp665, _186->is_reference,
	strb	r3, [r2, #2]	@ tmp665, _186->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_529 + 26432B]
	ldreq	r2, [r4, #420]	@ D.42583, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.42583, _191->long_term_frame_idx
	b	.L2980	@
.L2995:
	ldr	r2, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2	@ _362->is_reference, _362->is_reference
	orr	r3, r3, #2	@ tmp846, _362->is_reference,
	strb	r3, [r2, #2]	@ tmp846, _362->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.42578, MEM[(struct H264_CTX_S *)_623 + 26432B]
	ldreq	r2, [r4, #420]	@ D.42583, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.42583, _367->long_term_frame_idx
	b	.L2996	@
	.fnend
	.size	InsertFrmInDPB, .-InsertFrmInDPB
	.align	2
	.global	StorePicInDPB
	.type	StorePicInDPB, %function
StorePicInDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r3, r0, #16384	@ tmp259, pH264Ctx,
	add	r4, r0, #49152	@ tmp566, pH264Ctx,
	mov	r6, #0	@ tmp260,
	str	r6, [r3, #3436]	@ tmp260, pH264Ctx_28(D)->CurrPOC.last_has_mmco_5
	.pad #20
	sub	sp, sp, #20	@,,
	ldrb	r2, [r4, #555]	@ zero_extendqisi2	@ D.42630, pH264Ctx_28(D)->CurrPic.structure
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	sub	r1, r2, #2	@ D.42631, D.42630,
	clz	r1, r1	@ D.42631, D.42631
	mov	r1, r1, lsr #5	@ D.42631, D.42631,
	str	r1, [r3, #3440]	@ D.42631, pH264Ctx_28(D)->CurrPOC.last_pic_bottom_field
	ldrb	r3, [r4, #552]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.state, pH264Ctx_28(D)->CurrPic.state
	cmp	r3, r6	@ pH264Ctx_28(D)->CurrPic.state,
	bne	.L3196	@,
.L3115:
	ldr	r3, [r4, #960]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@, _225->logic_fs_id
	bl	FSP_ClearLogicFs	@
	ldr	r2, [r4, #960]	@ D.42640, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r3, #0	@ tmp545,
	mvn	r0, #0	@ ret,
	strb	r3, [r2, #4]	@ tmp545, _228->is_in_dpb
	ldr	r2, [r4, #960]	@ D.42640, pH264Ctx_28(D)->CurrPic.frame_store
	strb	r3, [r2, #1]	@ tmp545, _230->is_used
.L3113:
	mov	r3, #0	@ tmp553,
	strb	r3, [r4, #552]	@ tmp553, pH264Ctx_28(D)->CurrPic.state
.L3184:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3196:
	ldr	r1, [r4, #3616]	@ pH264Ctx_28(D)->OldDecMode, pH264Ctx_28(D)->OldDecMode
	ldr	r3, [r4, #3704]	@ pH264Ctx_28(D)->PicCounter, pH264Ctx_28(D)->PicCounter
	cmp	r1, #2	@ pH264Ctx_28(D)->OldDecMode,
	str	r3, [r4, #3700]	@ pH264Ctx_28(D)->PicCounter, pH264Ctx_28(D)->PrevStorePicCounter
	beq	.L3197	@,
	ldr	r6, [r0]	@ D.42634, pH264Ctx_28(D)->pstExtraData
	ldr	r3, [r6, #12]	@ D.42632, _38->s32DecOrderOutput
	cmp	r3, #0	@ D.42632,
	ble	.L3198	@,
.L3056:
	ldrb	r1, [r4, #554]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.non_existing, pH264Ctx_28(D)->CurrPic.non_existing
	cmp	r1, #0	@ pH264Ctx_28(D)->CurrPic.non_existing,
	bne	.L3057	@,
	sub	r1, r2, #1	@ tmp297, D.42630,
	ldr	r7, [r4, #960]	@ pOutFrameStore, pH264Ctx_28(D)->CurrPic.frame_store
	cmp	r1, #1	@ tmp297,
	movhi	r1, #0	@ D.42631,
	movls	r1, #1	@ D.42631,
	cmp	r2, #0	@ D.42630,
	beq	.L3058	@,
	ldrb	r0, [r7, #1]	@ zero_extendqisi2	@ pOutFrameStore_42->is_used, pOutFrameStore_42->is_used
	cmp	r0, #0	@ pOutFrameStore_42->is_used,
	moveq	ip, r1	@, tmp304, D.42631
	orrne	ip, r1, #1	@,, tmp304, D.42631
	cmp	ip, #0	@ tmp304,
	beq	.L3057	@,
	cmp	r1, #0	@ D.42631,
	beq	.L3199	@,
.L3116:
	ldr	r1, [r4, #3696]	@ D.42635, pH264Ctx_28(D)->FirstFrameDisplayed
	cmp	r1, #0	@ D.42635,
	bne	.L3061	@,
	add	r0, r4, #1024	@, tmp566,
	mov	r3, #1	@ tmp309,
	add	r0, r0, #8	@,,
	str	r3, [r4, #3696]	@ tmp309, pH264Ctx_28(D)->FirstFrameDisplayed
	mov	r2, #480	@,
	add	r1, r4, #552	@, tmp566,
	bl	memcpy	@
	ldr	r3, [r6, #12]	@ D.42632, _38->s32DecOrderOutput
.L3057:
	cmp	r3, #2	@ D.42632,
	ldr	r3, [r4, #976]	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc, pH264Ctx_28(D)->CurrPic.nal_ref_idc
	beq	.L3200	@,
	cmp	r3, #0	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc,
	beq	.L3088	@,
	ldr	r2, [r4, #3680]	@ pH264Ctx_28(D)->ref_error_thr, pH264Ctx_28(D)->ref_error_thr
	ldr	r3, [r4, #1004]	@ pH264Ctx_28(D)->CurrPic.err_level, pH264Ctx_28(D)->CurrPic.err_level
	cmp	r2, r3	@ pH264Ctx_28(D)->ref_error_thr, pH264Ctx_28(D)->CurrPic.err_level
	bcs	.L3089	@,
	ldrb	r2, [r4, #554]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.non_existing, pH264Ctx_28(D)->CurrPic.non_existing
	cmp	r2, #0	@ pH264Ctx_28(D)->CurrPic.non_existing,
	bne	.L3089	@,
	ldr	r3, .L3208	@ tmp418,
	ldr	r3, [r3]	@ D.42637, g_event_report
	cmp	r3, #0	@ D.42637,
	beq	.L3090	@,
	mov	r1, #104	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	blx	r3	@ D.42637
.L3090:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
.L3188:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	mov	r3, #0	@ tmp465,
	str	r3, [r4, #2180]	@ tmp465, pH264Ctx_28(D)->IDRFound
	str	r3, [r4, #3696]	@ tmp465, pH264Ctx_28(D)->FirstFrameDisplayed
	b	.L3115	@
.L3088:
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.field_pair_flag, pH264Ctx_28(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_28(D)->CurrPic.field_pair_flag,
	beq	.L3091	@,
	add	r6, r5, #24576	@ tmp567, pH264Ctx,
	ldr	r3, [r6, #2048]	@ D.42643, pH264Ctx_28(D)->DPB.size
.L3100:
	mvn	r9, #0	@ pre_used_size,
	mov	r8, r9	@ pre_pos, pre_used_size
	b	.L3105	@
.L3106:
	bl	GetMinPOC	@
	ldr	r3, [r4, #976]	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc, pH264Ctx_28(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc,
	bne	.L3101	@,
	ldr	r2, [r4, #980]	@ pH264Ctx_28(D)->CurrPic.thispoc, pH264Ctx_28(D)->CurrPic.thispoc
	ldr	r3, [sp, #8]	@ min_poc, min_poc
	cmp	r2, r3	@ pH264Ctx_28(D)->CurrPic.thispoc, min_poc
	blt	.L3201	@,
.L3101:
	ldr	r7, [r6, #2052]	@ pre_used_size, pH264Ctx_28(D)->DPB.used_size
	cmp	r7, r9	@ pre_used_size, pre_used_size
	ldrne	r8, [sp, #12]	@ pre_pos, pos
	bne	.L3104	@,
	ldr	r3, [sp, #12]	@ D.42633, pos
	cmp	r3, r8	@ D.42633, pre_pos
	mov	r8, r3	@ pre_pos, D.42633
	beq	.L3115	@,
.L3104:
	mov	r1, r8	@, pre_pos
	mov	r0, r5	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	mov	r9, r7	@ pre_used_size, pre_used_size
	cmn	r0, #1	@,
	beq	.L3115	@,
	ldr	r3, [r6, #2048]	@ D.42643, pH264Ctx_28(D)->DPB.size
.L3105:
	ldr	ip, [r6, #2052]	@ D.42633, pH264Ctx_28(D)->DPB.used_size
	add	r2, sp, #12	@ tmp573,,
	add	r1, sp, #8	@ tmp574,,
	mov	r0, r5	@, pH264Ctx
	cmp	ip, r3	@ D.42633, D.42643
	bcs	.L3106	@,
	ldr	r3, [r4, #976]	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc, pH264Ctx_28(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc,
	beq	.L3107	@,
	ldrb	r3, [r4, #556]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.is_long_term, pH264Ctx_28(D)->CurrPic.is_long_term
	cmp	r3, #0	@ pH264Ctx_28(D)->CurrPic.is_long_term,
	bne	.L3107	@,
	ldr	r2, [r6, #2056]	@ pH264Ctx_28(D)->DPB.ref_frames_in_buffer, pH264Ctx_28(D)->DPB.ref_frames_in_buffer
	cmp	r2, #0	@ pH264Ctx_28(D)->DPB.ref_frames_in_buffer,
	beq	.L3107	@,
	add	r2, r5, #26368	@ ivtmp.3048, pH264Ctx,
	mov	r7, r3	@ tmp568, i
	add	r2, r2, #124	@ ivtmp.3048, ivtmp.3048,
	b	.L3112	@
.L3109:
	ldr	r1, [r6, #2056]	@ pH264Ctx_28(D)->DPB.ref_frames_in_buffer, pH264Ctx_28(D)->DPB.ref_frames_in_buffer
	cmp	r1, r3	@ pH264Ctx_28(D)->DPB.ref_frames_in_buffer, i
	bls	.L3202	@,
.L3112:
	ldr	r1, [r2, #4]!	@ D.42640, MEM[base: _170, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	r0, [r4, #968]	@ pH264Ctx_28(D)->CurrPic.frame_num, pH264Ctx_28(D)->CurrPic.frame_num
	ldr	ip, [r1, #512]	@ _189->frame_num, _189->frame_num
	cmp	ip, r0	@ _189->frame_num, pH264Ctx_28(D)->CurrPic.frame_num
	bne	.L3109	@,
	strb	r7, [r1, #2]	@ tmp568, _189->is_reference
	ldr	r1, [r2]	@ D.42640, MEM[base: _170, offset: 0B]
	ldrb	r0, [r1, #4]	@ zero_extendqisi2	@ _193->is_in_dpb, _193->is_in_dpb
	cmp	r0, #1	@ _193->is_in_dpb,
	streq	r0, [r1, #532]	@ _193->is_in_dpb, _193->is_displayed
	ldreq	r1, [r2]	@ D.42640, MEM[base: _170, offset: 0B]
	streqb	r7, [r1, #4]	@ tmp568, _196->is_in_dpb
	ldreq	r1, [r2]	@ D.42640, MEM[base: _170, offset: 0B]
	ldr	lr, [r4, #2168]	@ D.42633, pH264Ctx_28(D)->TotalPmvNum
	ldr	ip, [r1, #548]	@ D.42633, _312->pmv_address_idc
	add	r0, ip, #12800	@ tmp520, D.42633,
	cmp	ip, lr	@ D.42633, D.42633
	add	r0, r0, #12	@ tmp520, tmp520,
	strne	r7, [r5, r0, asl #2]	@ tmp568, pH264Ctx_28(D)->PmvStoreUsedFlag
	strne	lr, [r1, #548]	@ D.42633, _312->pmv_address_idc
	b	.L3109	@
.L3197:
	bl	DirectOutput	@
	ldr	r3, [r4, #1028]	@ D.42633, pH264Ctx_28(D)->CurrPic.pmv_address_idc
	ldr	r2, [r4, #2168]	@ D.42633, pH264Ctx_28(D)->TotalPmvNum
	cmp	r3, r2	@ D.42633, D.42633
	addne	r3, r3, #12800	@ tmp283, D.42633,
	addne	r3, r3, #12	@ tmp283, tmp283,
	strne	r6, [r5, r3, asl #2]	@ tmp260, pH264Ctx_28(D)->PmvStoreUsedFlag
	strne	r2, [r4, #1028]	@ D.42633, pH264Ctx_28(D)->CurrPic.pmv_address_idc
.L3055:
	cmn	r0, #1	@ ret,
	bne	.L3113	@,
	b	.L3115	@
.L3202:
	ldr	ip, [r6, #2052]	@ D.42633, pH264Ctx_28(D)->DPB.used_size
.L3107:
	add	r2, r5, #49664	@, pH264Ctx,
	mov	r1, ip	@, D.42633
	add	r2, r2, #40	@,,
	mov	r0, r5	@, pH264Ctx
	bl	InsertFrmInDPB	@
	ldr	r3, [r6, #2052]	@ D.42633, pH264Ctx_28(D)->DPB.used_size
	str	r3, [r4, #1540]	@ D.42633, pH264Ctx_28(D)->PrevPic.Dpb_pos
	cmp	r0, #0	@,
	bne	.L3115	@,
	add	r3, r3, #1	@ D.42633, D.42633,
	mov	r0, r5	@, pH264Ctx
	str	r3, [r6, #2052]	@ D.42633, pH264Ctx_28(D)->DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L3087	@
.L3061:
	cmp	r1, #1	@ D.42635,
	beq	.L3203	@,
	cmp	r2, #0	@ D.42630,
	beq	.L3064	@,
	ldrb	r1, [r7, #1]	@ zero_extendqisi2	@ pOutFrameStore_42->is_used, pOutFrameStore_42->is_used
	cmp	r1, #0	@ pOutFrameStore_42->is_used,
	beq	.L3057	@,
.L3064:
	add	r8, r5, #49664	@ pOutPic, pH264Ctx,
	add	r8, r8, #40	@ pOutPic, pOutPic,
.L3066:
	cmp	r2, #0	@ D.42630,
	beq	.L3067	@,
	ldrb	r3, [r8, #1]	@ zero_extendqisi2	@ pOutPic_6->field_pair_flag, pOutPic_6->field_pair_flag
	cmp	r3, #1	@ pOutPic_6->field_pair_flag,
	beq	.L3204	@,
.L3067:
	ldr	r3, [r8, #452]	@ D.42633, pOutPic_6->err_level
	str	r3, [r7, #544]	@ D.42633, pOutFrameStore_7->err_level
.L3068:
	mov	r1, r7	@, pOutFrameStore
	mov	r0, r5	@, pH264Ctx
	bl	GetImagePara	@
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L3115	@,
	ldrd	r2, [r8, #24]	@ D.42636, pOutPic,
	strd	r2, [r6, #8]	@ D.42636, pImg,
	ldrd	r2, [r8, #32]	@ D.42636, pOutPic,
	strd	r2, [r6, #16]	@ D.42636, pImg,
	ldrd	r2, [r8, #40]	@ D.42636, pOutPic,
	strd	r2, [r6, #24]	@ D.42636, pImg,
	ldr	r3, [r8, #84]	@ D.42633, pOutPic_6->fs_image.DispEnableFlag
	str	r3, [r6, #68]	@ D.42633, pImg_69->DispEnableFlag
	ldr	r3, [r8, #88]	@ D.42633, pOutPic_6->fs_image.DispFrameDistance
	str	r3, [r6, #72]	@ D.42633, pImg_69->DispFrameDistance
	ldr	r3, [r8, #92]	@ D.42633, pOutPic_6->fs_image.DistanceBeforeFirstFrame
	str	r3, [r6, #76]	@ D.42633, pImg_69->DistanceBeforeFirstFrame
	ldr	r3, [r8, #96]	@ D.42633, pOutPic_6->fs_image.GopNum
	str	r3, [r6, #80]	@ D.42633, pImg_69->GopNum
	ldr	r3, [r7, #544]	@ D.42633, pOutFrameStore_7->err_level
	cmp	r3, #0	@ D.42633,
	str	r3, [r6, #180]	@ D.42633, pImg_69->error_level
	beq	.L3073	@,
	ldr	r2, [r6, #140]	@ pImg_69->format, pImg_69->format
	ands	r2, r2, #3	@ D.42633, pImg_69->format,
	bne	.L3072	@,
	ldr	r1, .L3208	@ tmp349,
	ldr	ip, [r1]	@ D.42637, g_event_report
	cmp	ip, #0	@ D.42637,
	beq	.L3072	@,
	mov	r1, #111	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	blx	ip	@ D.42637
	ldr	r3, [r6, #180]	@ D.42633, pImg_69->error_level
	cmp	r3, #0	@ D.42633,
	beq	.L3073	@,
.L3072:
	ldr	r2, [r5]	@ pH264Ctx_28(D)->pstExtraData, pH264Ctx_28(D)->pstExtraData
	ldr	r2, [r2, #4]	@ _92->s32OutErrThr, _92->s32OutErrThr
	cmp	r2, r3	@ _92->s32OutErrThr, D.42633
	bcs	.L3073	@,
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	mov	r2, #0	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L3115	@
.L3199:
	cmp	r0, #0	@ pOutFrameStore_42->is_used,
	beq	.L3057	@,
	b	.L3064	@
.L3073:
	mov	r2, #1	@,
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, #3688]	@ pH264Ctx_28(D)->ChanID, pH264Ctx_28(D)->ChanID
	add	r3, r5, #8	@, pH264Ctx,
	str	r6, [sp]	@ pImg,
	mov	r2, r5	@, pH264Ctx
	mov	r1, #0	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.42632,
	beq	.L3205	@,
	mov	r2, #0	@,
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	bl	FSP_SetDisplay	@
.L3075:
	ldr	r3, [r5]	@ pH264Ctx_28(D)->pstExtraData, pH264Ctx_28(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _235->s32FastForwardBackwardSpeed, _235->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.42642, _235->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.42642, D.42642,
	cmp	r3, #4096	@ D.42642,
	movcc	r3, #0	@ tmp370,
	strcc	r3, [r6, #84]	@ tmp370, pImg_69->u32RepeatCnt
	bcs	.L3206	@,
.L3077:
	ldr	r2, [r4, #3696]	@ pH264Ctx_28(D)->FirstFrameDisplayed, pH264Ctx_28(D)->FirstFrameDisplayed
	ldr	r3, [r4, #3712]	@ pH264Ctx_28(D)->PicOutCounter, pH264Ctx_28(D)->PicOutCounter
	cmp	r2, #2	@ pH264Ctx_28(D)->FirstFrameDisplayed,
	add	r3, r3, #2	@ D.42633, pH264Ctx_28(D)->PicOutCounter,
	str	r3, [r4, #3712]	@ D.42633, pH264Ctx_28(D)->PicOutCounter
	movne	r3, #1	@ tmp384,
	strne	r3, [r7, #528]	@ tmp384, pOutFrameStore_7->eFoState
	mov	r3, #2	@ tmp387,
	str	r3, [r4, #3696]	@ tmp387, pH264Ctx_28(D)->FirstFrameDisplayed
	ldr	r3, [r5]	@ pH264Ctx_28(D)->pstExtraData, pH264Ctx_28(D)->pstExtraData
	ldr	r3, [r3, #12]	@ D.42632, _298->s32DecOrderOutput
	b	.L3057	@
.L3058:
	cmp	r1, #0	@ D.42631,
	beq	.L3064	@,
	b	.L3116	@
.L3198:
	ldr	r1, [r4, #3696]	@ pH264Ctx_28(D)->FirstFrameDisplayed, pH264Ctx_28(D)->FirstFrameDisplayed
	cmp	r1, #2	@ pH264Ctx_28(D)->FirstFrameDisplayed,
	bne	.L3056	@,
	b	.L3057	@
.L3200:
	cmp	r3, #0	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc,
	beq	.L3082	@,
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.nal_unit_type, pH264Ctx_28(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_28(D)->CurrPic.nal_unit_type,
	beq	.L3083	@,
.L3086:
	mov	r0, r5	@, pH264Ctx
	add	r6, r5, #24576	@ tmp398, pH264Ctx,
	bl	SimpleSlideDPB	@
	add	r2, r5, #49664	@, pH264Ctx,
	ldr	r1, [r6, #2052]	@, pH264Ctx_28(D)->DPB.used_size
	add	r2, r2, #40	@,,
	mov	r0, r5	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmp	r0, #0	@,
	bne	.L3115	@,
	ldr	r3, [r6, #2052]	@ pH264Ctx_28(D)->DPB.used_size, pH264Ctx_28(D)->DPB.used_size
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, #1	@ D.42633, pH264Ctx_28(D)->DPB.used_size,
	str	r3, [r6, #2052]	@ D.42633, pH264Ctx_28(D)->DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
.L3087:
	mov	r0, #0	@ ret,
	b	.L3113	@
.L3089:
	mov	r0, r5	@, pH264Ctx
	bl	Marking	@
	cmp	r0, #0	@,
	bne	.L3115	@,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.field_pair_flag, pH264Ctx_28(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_28(D)->CurrPic.field_pair_flag,
	beq	.L3091	@,
	add	r6, r5, #24576	@ tmp567, pH264Ctx,
.L3095:
	ldr	r3, [r4, #976]	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc, pH264Ctx_28(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_28(D)->CurrPic.nal_ref_idc,
	beq	.L3093	@,
	ldr	r2, [r6, #2060]	@ pH264Ctx_28(D)->DPB.ltref_frames_in_buffer, pH264Ctx_28(D)->DPB.ltref_frames_in_buffer
	ldr	r1, [r6, #2056]	@ pH264Ctx_28(D)->DPB.ref_frames_in_buffer, pH264Ctx_28(D)->DPB.ref_frames_in_buffer
	ldr	r3, [r6, #2048]	@ D.42643, pH264Ctx_28(D)->DPB.size
	add	r2, r2, r1	@ D.42633, pH264Ctx_28(D)->DPB.ltref_frames_in_buffer, pH264Ctx_28(D)->DPB.ref_frames_in_buffer
	cmp	r3, r2	@ D.42643, D.42633
	bhi	.L3100	@,
	b	.L3188	@
.L3082:
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.field_pair_flag, pH264Ctx_28(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_28(D)->CurrPic.field_pair_flag,
	addne	r6, r5, #24576	@ tmp567, pH264Ctx,
	bne	.L3093	@,
.L3091:
	ldr	r3, [r4, #1544]	@ D.42640, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r0, [r4, #960]	@ D.42640, pH264Ctx_28(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.42640,
	rsb	r1, r3, r0	@ tmp444, D.42640, D.42640
	clz	r1, r1	@ tmp444, tmp444
	mov	r1, r1, lsr #5	@ tmp444, tmp444,
	moveq	r1, #0	@ tmp444,
	cmp	r1, #0	@ tmp444,
	beq	.L3207	@,
.L3102:
	mov	r0, r5	@, pH264Ctx
	bl	DirectOutput	@
	b	.L3055	@
.L3093:
	ldr	r3, [r6, #2048]	@ D.42643, pH264Ctx_28(D)->DPB.size
	b	.L3100	@
.L3207:
	add	r6, r5, #24576	@ tmp567, pH264Ctx,
	ldr	ip, [r6, #2052]	@ D.42633, pH264Ctx_28(D)->DPB.used_size
	cmp	ip, #0	@ D.42633,
	beq	.L3095	@,
	ldr	r3, [r6, #1856]	@ pH264Ctx_28(D)->DPB.fs, pH264Ctx_28(D)->DPB.fs
	cmp	r0, r3	@ D.42640, pH264Ctx_28(D)->DPB.fs
	addne	r3, r5, #26368	@ ivtmp.3059, pH264Ctx,
	addne	r3, r3, #64	@ ivtmp.3059, ivtmp.3059,
	bne	.L3098	@,
	b	.L3096	@
.L3099:
	ldr	r2, [r3, #4]!	@ MEM[base: _278, offset: 0B], MEM[base: _278, offset: 0B]
	cmp	r0, r2	@ D.42640, MEM[base: _278, offset: 0B]
	beq	.L3096	@,
.L3098:
	add	r1, r1, #1	@ i, i,
	cmp	r1, ip	@ i, D.42633
	bne	.L3099	@,
	b	.L3095	@
.L3205:
	ldr	r3, [r4, #3720]	@ pH264Ctx_28(D)->numOutputFrame, pH264Ctx_28(D)->numOutputFrame
	add	r3, r3, #1	@ D.42632, pH264Ctx_28(D)->numOutputFrame,
	str	r3, [r4, #3720]	@ D.42632, pH264Ctx_28(D)->numOutputFrame
	ldr	r3, [r5]	@ D.42634, pH264Ctx_28(D)->pstExtraData
	str	r0, [r3, #732]	@ D.42632, _111->s32firstIdecodedflag
	b	.L3075	@
.L3203:
	add	r8, r5, #50176	@ pOutPic, pH264Ctx,
	ldr	r7, [r4, #1440]	@ pOutFrameStore, pH264Ctx_28(D)->LastPic.frame_store
	add	r8, r8, #8	@ pOutPic, pOutPic,
	ldrb	r2, [r4, #1035]	@ zero_extendqisi2	@ D.42630, MEM[(struct H264_CURRPIC_S *)pH264Ctx_28(D) + 50184B].structure
	b	.L3066	@
.L3083:
	mov	r0, r5	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	beq	.L3086	@,
	mvn	r0, #0	@ D.42628,
	b	.L3184	@
.L3204:
	mov	r2, #3	@ tmp330,
	ldr	r3, [r7, #544]	@ pOutFrameStore_7->err_level, pOutFrameStore_7->err_level
	strb	r2, [r7, #1]	@ tmp330, pOutFrameStore_7->is_used
	ldr	r2, [r8, #452]	@ pOutPic_6->err_level, pOutPic_6->err_level
	add	r3, r3, r2	@ D.42633, pOutFrameStore_7->err_level, pOutPic_6->err_level
	str	r3, [r7, #544]	@ D.42633, pOutFrameStore_7->err_level
	b	.L3068	@
.L3096:
	add	r2, r5, #49664	@, pH264Ctx,
	mov	r0, r5	@, pH264Ctx
	add	r2, r2, #40	@,,
	bl	InsertFrmInDPB	@
	cmn	r0, #1	@,
	beq	.L3115	@,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L3087	@
.L3201:
	ldr	r3, [r4, #3616]	@ pH264Ctx_28(D)->OldDecMode, pH264Ctx_28(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_28(D)->OldDecMode,
	bne	.L3102	@,
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.structure, pH264Ctx_28(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_28(D)->CurrPic.structure,
	ldrne	r3, [r4, #960]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->CurrPic.frame_store
	strne	r3, [r4, #1548]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->pLastFieldBuf
	b	.L3102	@
.L3206:
	mov	r1, r6	@, pImg
	mov	r0, r5	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L3077	@
.L3209:
	.align	2
.L3208:
	.word	g_event_report
	.fnend
	.size	StorePicInDPB, .-StorePicInDPB
	.global	__aeabi_idivmod
	.align	2
	.global	DecGap
	.type	DecGap, %function
DecGap:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r0, #24576	@ tmp290, pH264Ctx,
	add	r3, r0, #12288	@ tmp169, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r2, #2004	@ tmp164,
	ldr	r4, [r1, #1804]	@ D.42652, pH264Ctx_8(D)->CurrMarkIdx
	.pad #28
	sub	sp, sp, #28	@,,
	ldrb	ip, [r3, #1317]	@ zero_extendqisi2	@ pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag, pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag
	add	r6, r0, #16384	@ tmp287, pH264Ctx,
	add	r9, r0, #20480	@ tmp289, pH264Ctx,
	add	fp, r0, #49152	@ tmp288, pH264Ctx,
	mul	r4, r2, r4	@ tmp163, tmp164, D.42652
	cmp	ip, #1	@ pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag,
	ldr	r10, [r9, #220]	@ D.42652, pH264Ctx_8(D)->CurrSlice.frame_num
	moveq	r3, #2	@ nal_ref_idc,
	movne	r3, #0	@ nal_ref_idc,
	add	ip, r0, r4	@ tmp165, pH264Ctx, tmp163
	str	r3, [sp, #4]	@ nal_ref_idc, %sfp
	ldr	r3, [r6, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	add	ip, ip, #22272	@ tmp167, tmp165,
	ldr	r2, [r9, #216]	@ D.42652, pH264Ctx_8(D)->CurrSlice.prev_frame_num
	add	r4, ip, #100	@ D.42650, D.42650,
	ldr	r7, [r6, #108]	@ D.42652, pH264Ctx_8(D)->CurrSPS.log2_max_frame_num_minus4
	str	r3, [sp, #12]	@ tmp1, %sfp
	ldrb	r3, [ip, #103]	@ zero_extendqisi2	@ D.42654, pH264Ctx_8(D)->Mark[_22].adaptive_ref_pic_marking_mode_flag
	str	r3, [sp, #20]	@ D.42654, %sfp
	ldr	r3, [r6, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	str	r4, [fp, #964]	@ D.42650, pH264Ctx_8(D)->CurrPic.pMarkPara
	ldr	r1, [r1, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	str	r3, [sp, #16]	@ tmp2, %sfp
	cmp	r1, #0	@ pH264Ctx_8(D)->DPB.used_size,
	moveq	r0, r1	@ D.42651, pH264Ctx_8(D)->DPB.used_size
	beq	.L3212	@,
	add	r7, r7, #4	@ D.42652, D.42652,
	mov	r8, #1	@ tmp182,
	mov	r3, r8, asl r7	@ MaxFrameNum, tmp182,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r0, r2, r8	@, D.42652,
	str	r3, [sp, #8]	@ MaxFrameNum, %sfp
	mov	r1, r3	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	r10, r1	@ D.42652, UnusedShortTermFrameNum
	mov	r7, r1	@ UnusedShortTermFrameNum,
	mov	r1, #0	@ tmp191,
	str	r1, [r6, #3464]	@ tmp191, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	str	r1, [r6, #3460]	@ tmp191, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ble	.L3213	@,
	mov	r3, r9	@ tmp289, tmp289
	mov	r4, r8	@ tmp291, tmp182
	mov	r9, fp	@ tmp288, tmp288
	mov	r8, r1	@ tmp292, tmp191
	mov	fp, r3	@ tmp289, tmp289
	b	.L3217	@
.L3215:
	mov	r1, #0	@,
	strb	r8, [r9, #556]	@ tmp292, pH264Ctx_8(D)->CurrPic.is_long_term
	mov	r0, r5	@, pH264Ctx
	bl	StorePicInDPB	@
	ldr	r1, [sp, #8]	@, %sfp
	cmp	r0, #0	@,
	add	r0, r7, #1	@, UnusedShortTermFrameNum,
	bne	.L3225	@,
	str	r7, [fp, #216]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrSlice.prev_frame_num
	bl	__aeabi_idivmod	@
	cmp	r10, r1	@ D.42652, UnusedShortTermFrameNum
	mov	r7, r1	@ UnusedShortTermFrameNum,
	ble	.L3226	@,
.L3217:
	mov	r1, #1	@,
	mov	r0, r5	@, pH264Ctx
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret
	bne	.L3225	@,
	ldr	r1, [r9, #960]	@ D.42655, pH264Ctx_8(D)->CurrPic.frame_store
	strb	r4, [r9, #558]	@ tmp291, pH264Ctx_8(D)->CurrPic.nal_unit_type
	ldr	r3, [sp, #4]	@ nal_ref_idc, %sfp
	str	r7, [r1, #512]	@ UnusedShortTermFrameNum, _33->frame_num
	ldr	r1, [r9, #960]	@ D.42655, pH264Ctx_8(D)->CurrPic.frame_store
	str	r7, [r9, #968]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrPic.frame_num
	str	r7, [r1, #412]	@ UnusedShortTermFrameNum, _37->frame.pic_num
	ldr	r1, [r9, #960]	@ D.42655, pH264Ctx_8(D)->CurrPic.frame_store
	str	r3, [r9, #976]	@ nal_ref_idc, pH264Ctx_8(D)->CurrPic.nal_ref_idc
	str	r0, [r1, #408]	@ ret, _41->frame.long_term_pic_num
	ldr	r1, [r9, #960]	@ D.42655, pH264Ctx_8(D)->CurrPic.frame_store
	str	r4, [r1, #532]	@ tmp291, _43->is_displayed
	ldr	r1, [r9, #960]	@ D.42655, pH264Ctx_8(D)->CurrPic.frame_store
	strb	r0, [r1, #4]	@ ret, _45->is_in_dpb
	ldr	r1, [r9, #960]	@ D.42655, pH264Ctx_8(D)->CurrPic.frame_store
	strb	r4, [r1]	@ tmp291, _47->non_existing
	ldr	r1, [r9, #964]	@ D.42650, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	r4, [r9, #554]	@ tmp291, pH264Ctx_8(D)->CurrPic.non_existing
	strb	r0, [r1, #3]	@ ret, _50->adaptive_ref_pic_marking_mode_flag
	ldr	r1, [r6, #112]	@ pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type, pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type
	cmp	r1, #0	@ pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type,
	beq	.L3215	@,
	str	r7, [r6, #3476]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrPOC.frame_num
	mov	r0, r5	@, pH264Ctx
	bl	DecPOC	@
	ldr	r1, [r6, #3456]	@ pH264Ctx_8(D)->CurrPOC.ThisPOC, pH264Ctx_8(D)->CurrPOC.ThisPOC
	str	r1, [r9, #980]	@ pH264Ctx_8(D)->CurrPOC.ThisPOC, pH264Ctx_8(D)->CurrPic.thispoc
	ldr	r1, [r6, #3452]	@ pH264Ctx_8(D)->CurrPOC.framepoc, pH264Ctx_8(D)->CurrPOC.framepoc
	str	r1, [r9, #984]	@ pH264Ctx_8(D)->CurrPOC.framepoc, pH264Ctx_8(D)->CurrPic.framepoc
	ldr	r1, [r6, #3444]	@ pH264Ctx_8(D)->CurrPOC.toppoc, pH264Ctx_8(D)->CurrPOC.toppoc
	str	r1, [r9, #988]	@ pH264Ctx_8(D)->CurrPOC.toppoc, pH264Ctx_8(D)->CurrPic.toppoc
	ldr	r1, [r6, #3448]	@ pH264Ctx_8(D)->CurrPOC.bottompoc, pH264Ctx_8(D)->CurrPOC.bottompoc
	str	r1, [r9, #992]	@ pH264Ctx_8(D)->CurrPOC.bottompoc, pH264Ctx_8(D)->CurrPic.bottompoc
	b	.L3215	@
.L3226:
	ldr	r4, [r9, #964]	@ D.42650, pH264Ctx_8(D)->CurrPic.pMarkPara
.L3213:
	ldr	r3, [sp, #12]	@ tmp1, %sfp
	mov	r0, #0	@ D.42651,
	str	r3, [r6, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [sp, #16]	@ tmp2, %sfp
	str	r3, [r6, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldrb	r3, [sp, #20]	@ zero_extendqisi2	@, %sfp
	strb	r3, [r4, #3]	@ tmp315, _5->adaptive_ref_pic_marking_mode_flag
.L3212:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3225:
	ldr	r3, [sp, #12]	@ tmp1, %sfp
	mvn	r0, #0	@ D.42651,
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@, %sfp
	str	r3, [r6, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [sp, #16]	@ tmp2, %sfp
	str	r3, [r6, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [r9, #964]	@ D.42650, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	r2, [r3, #3]	@ tmp312,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	DecGap, .-DecGap
	.align	2
	.global	InitPic
	.type	InitPic, %function
InitPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r9, r0, #12288	@ tmp903, pH264Ctx,
	add	r8, r0, #20480	@ tmp901, pH264Ctx,
	add	r4, r0, #49152	@ tmp902, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r9, #1296]	@ pH264Ctx_34(D)->PPS, pH264Ctx_34(D)->PPS
	ldr	r0, [r8, #212]	@ pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id
	mov	r10, #2208	@ tmp382,
	ldrb	r2, [r4, #552]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPic.state, pH264Ctx_34(D)->CurrPic.state
	mov	r7, #4000	@ tmp388,
	ldr	r3, [r9, #1292]	@ pH264Ctx_34(D)->SPS, pH264Ctx_34(D)->SPS
	.pad #28
	sub	sp, sp, #28	@,,
	mla	r10, r10, r0, r1	@ pPPS, tmp382, pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_34(D)->PPS
	cmp	r2, #0	@ pH264Ctx_34(D)->CurrPic.state,
	ldr	r2, [r10, #28]	@ pPPS_38->seq_parameter_set_id, pPPS_38->seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp388, pPPS_38->seq_parameter_set_id, pH264Ctx_34(D)->SPS
	beq	.L3228	@,
	ldr	r3, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.42732,
	beq	.L3229	@,
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ _44->is_used, _44->is_used
	cmp	r6, #0	@ _44->is_used,
	beq	.L3350	@,
.L3229:
	mov	r3, #0	@ tmp410,
	strb	r3, [r4, #552]	@ tmp410, pH264Ctx_34(D)->CurrPic.state
.L3228:
	add	r1, sp, #20	@,,
	mov	r0, r5	@, pH264Ctx
	bl	GetReRangeFlag	@
	ldr	r2, [r9, #2044]	@ pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id
	ldr	r3, [r7, #744]	@ pSPS_42->seq_parameter_set_id, pSPS_42->seq_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id, pSPS_42->seq_parameter_set_id
	mov	r6, r0	@ D.42733,
	beq	.L3351	@,
.L3230:
	add	r0, r5, #13568	@, pH264Ctx,
	mov	r3, #0	@ tmp418,
	add	r0, r0, #20	@,,
	strb	r3, [r7, #24]	@ tmp418, pSPS_42->is_refreshed
	mov	r2, #4000	@,
	mov	r1, r7	@, pSPS
	bl	memmove	@
.L3231:
	ldr	r3, [sp, #20]	@ dpb_changed, dpb_changed
	cmp	r3, #0	@ dpb_changed,
	beq	.L3342	@,
	ldr	r2, [r5]	@ D.42734, pH264Ctx_34(D)->pstExtraData
	ldr	r3, [r2, #608]	@ _64->stChanOption.s32ReRangeEn, _64->stChanOption.s32ReRangeEn
	cmp	r3, #0	@ _64->stChanOption.s32ReRangeEn,
	beq	.L3352	@,
.L3234:
	ldr	r3, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	cmp	r6, #0	@ D.42733,
	add	r3, r3, #1	@ D.42724, pH264Ctx_34(D)->SeqCnt,
	str	r3, [r4, #3648]	@ D.42724, pH264Ctx_34(D)->SeqCnt
	beq	.L3241	@,
	ldr	r3, [r2, #692]	@ _64->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _64->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _64->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3353	@,
.L3242:
	mov	r0, r5	@, pH264Ctx
	bl	GetBackPicFromVOQueue	@
.L3243:
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L3346	@,
	add	r6, r5, #16384	@ tmp904, pH264Ctx,
	add	r3, r5, #51200	@, pH264Ctx,
	add	r3, r3, #116	@,,
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r6, #1184]	@ D.42724, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	str	r1, [r4, #2168]	@ D.42724, pH264Ctx_34(D)->TotalPmvNum
	ldr	r2, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	ldrb	fp, [r9, #1318]	@ zero_extendqisi2	@ D.42733, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	add	r2, r2, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	rsb	fp, fp, #2	@ D.42733, D.42733,
	str	r1, [sp]	@ D.42724,
	mov	r2, r2, asl #4	@ D.42724, D.42724,
	add	ip, ip, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mul	fp, fp, r2	@ ImageHeight, D.42733, D.42724
	mov	ip, ip, asl #4	@ ImageWidth, D.42724,
	str	ip, [sp, #8]	@ ImageWidth, %sfp
	mov	r1, ip	@, ImageWidth
	mov	r2, fp	@, ImageHeight
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L3245	@,
	ldr	ip, [sp, #8]	@ ImageWidth, %sfp
.L3343:
	mov	ip, ip, lsr #4	@ D.42724, ImageWidth,
	mov	fp, fp, lsr #4	@ D.42724, ImageHeight,
	str	ip, [r9, #1272]	@ D.42724, pH264Ctx_34(D)->CurWidthInMb
	str	fp, [r9, #1276]	@ D.42724, pH264Ctx_34(D)->CurHeightInMb
	ldr	r2, [r6, #1228]	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id
	ldr	r3, [r10, #24]	@ pPPS_38->pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	beq	.L3354	@,
.L3246:
	add	r0, r5, #17408	@, pH264Ctx,
	mov	r3, #0	@ tmp497,
	add	r0, r0, #180	@,,
	strb	r3, [r10, #20]	@ tmp497, pPPS_38->is_refreshed
	mov	r1, r10	@, pPPS
	mov	r2, #2208	@,
	bl	memmove	@
.L3247:
	ldr	r2, [r6, #3436]	@ pH264Ctx_34(D)->CurrPOC.last_has_mmco_5, pH264Ctx_34(D)->CurrPOC.last_has_mmco_5
	ldr	r3, [r6, #108]	@ D.42724, pH264Ctx_34(D)->CurrSPS.log2_max_frame_num_minus4
	cmp	r2, #0	@ pH264Ctx_34(D)->CurrPOC.last_has_mmco_5,
	movne	r2, #0	@ tmp508,
	strne	r2, [r8, #216]	@ tmp508, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	strne	r2, [r4, #1520]	@ tmp508, pH264Ctx_34(D)->PrevPic.frame_num
	ldr	r2, [r4, #3616]	@ pH264Ctx_34(D)->OldDecMode, pH264Ctx_34(D)->OldDecMode
	cmp	r2, #2	@ pH264Ctx_34(D)->OldDecMode,
	beq	.L3345	@,
	ldr	r2, [r5]	@ D.42734, pH264Ctx_34(D)->pstExtraData
	ldr	r1, [r2, #12]	@ _166->s32DecOrderOutput, _166->s32DecOrderOutput
	str	r2, [sp, #8]	@ D.42734, %sfp
	cmp	r1, #2	@ _166->s32DecOrderOutput,
	beq	.L3345	@,
	ldr	fp, [r8, #220]	@ D.42724, pH264Ctx_34(D)->CurrSlice.frame_num
	ldr	r10, [r8, #216]	@ D.42726, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	cmp	fp, r10	@ D.42724, D.42726
	beq	.L3250	@,
	mov	r1, #1	@ tmp523,
	add	r3, r3, #4	@ D.42724, D.42724,
	mov	r3, r1, asl r3	@ MaxFrameNum, tmp523,
	add	r0, r10, r1	@, D.42726,
	str	r3, [sp, #12]	@ MaxFrameNum, %sfp
	mov	r1, r3	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	fp, r1	@ D.42724,
	beq	.L3283	@,
	ldr	r2, [sp, #8]	@ D.42734, %sfp
	ldr	r3, [sp, #12]	@ MaxFrameNum, %sfp
	ldr	r1, [r2, #516]	@ _166->s32MoreGapEnable, _166->s32MoreGapEnable
	cmp	r1, #0	@ _166->s32MoreGapEnable,
	bne	.L3256	@,
	ldr	r1, [r2, #540]	@ _166->stPvrInfo.u32BFrmRefFlag, _166->stPvrInfo.u32BFrmRefFlag
	cmp	r1, #1	@ _166->stPvrInfo.u32BFrmRefFlag,
	beq	.L3355	@,
.L3255:
	cmp	fp, r10	@ D.42724, D.42726
	bls	.L3257	@,
	ldr	r2, [r6, #1184]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	rsb	r10, r10, fp	@ D.42724, D.42726, D.42724
	cmp	r2, r10	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, D.42724
	bcs	.L3256	@,
.L3349:
	ldrb	r2, [r8, #200]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.slice_type, pH264Ctx_34(D)->CurrSlice.slice_type
	cmp	r2, #2	@ pH264Ctx_34(D)->CurrSlice.slice_type,
	bne	.L3261	@,
	cmp	fp, #0	@ D.42724,
	mov	r0, r5	@, pH264Ctx
	subeq	fp, r3, #1	@ D.42726, MaxFrameNum,
	subne	fp, fp, #1	@ D.42726, D.42724,
	str	fp, [r8, #216]	@ D.42726, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	str	r3, [sp, #8]	@ MaxFrameNum, %sfp
	bl	FlushDPB	@
	ldr	r3, [sp, #8]	@ MaxFrameNum, %sfp
	cmp	r0, #0	@,
	bne	.L3346	@,
.L3256:
	ldrb	r2, [r9, #1317]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag, pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag
	cmp	r2, #0	@ pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag,
	bne	.L3254	@,
	ldr	r2, [r5]	@ pH264Ctx_34(D)->pstExtraData, pH264Ctx_34(D)->pstExtraData
	ldr	r2, [r2, #520]	@ _201->s32FastForwardBackwardSpeed, _201->s32FastForwardBackwardSpeed
	bics	r2, r2, #1024	@ tmp932, _201->s32FastForwardBackwardSpeed,
	bne	.L3345	@,
	ldr	r0, [r8, #216]	@ pH264Ctx_34(D)->CurrSlice.prev_frame_num, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	mov	r1, r3	@, MaxFrameNum
	ldr	r10, [r8, #220]	@ D.42726, pH264Ctx_34(D)->CurrSlice.frame_num
	add	r0, r0, #1	@, pH264Ctx_34(D)->CurrSlice.prev_frame_num,
	bl	__aeabi_uidivmod	@
	cmp	r10, r1	@ D.42726,
	bcs	.L3254	@,
	ldrb	r3, [r8, #200]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.slice_type, pH264Ctx_34(D)->CurrSlice.slice_type
	cmp	r3, #2	@ pH264Ctx_34(D)->CurrSlice.slice_type,
	bne	.L3261	@,
.L3250:
	ldr	r3, [r8, #232]	@ pH264Ctx_34(D)->CurrSlice.nal_ref_idc, pH264Ctx_34(D)->CurrSlice.nal_ref_idc
	mov	r0, r5	@, pH264Ctx
	cmp	r3, #0	@ pH264Ctx_34(D)->CurrSlice.nal_ref_idc,
	strne	r10, [r8, #216]	@ D.42726, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	str	r10, [r6, #3476]	@ D.42726, pH264Ctx_34(D)->CurrPOC.frame_num
	bl	DecPOC	@
	mov	r1, #0	@,
	mov	r0, r5	@, pH264Ctx
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret
	bne	.L3346	@,
	strb	r0, [r4, #559]	@ ret, pH264Ctx_34(D)->CurrPic.mode_skip_flag
	mov	r1, #1	@ tmp600,
	strb	r1, [r4, #552]	@ tmp600, pH264Ctx_34(D)->CurrPic.state
	mvn	ip, #0	@ tmp650,
	ldrb	r3, [r8, #203]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.nal_unit_type, pH264Ctx_34(D)->CurrSlice.nal_unit_type
	strb	r3, [r4, #558]	@ pH264Ctx_34(D)->CurrSlice.nal_unit_type, pH264Ctx_34(D)->CurrPic.nal_unit_type
	ldr	r2, [r8, #220]	@ D.42724, pH264Ctx_34(D)->CurrSlice.frame_num
	str	r2, [r4, #968]	@ D.42724, pH264Ctx_34(D)->CurrPic.frame_num
	ldr	r3, [r8, #232]	@ D.42724, pH264Ctx_34(D)->CurrSlice.nal_ref_idc
	str	r2, [sp, #8]	@ D.42724, %sfp
	str	r3, [r4, #976]	@ D.42724, pH264Ctx_34(D)->CurrPic.nal_ref_idc
	ldr	lr, [r6, #3456]	@ pH264Ctx_34(D)->CurrPOC.ThisPOC, pH264Ctx_34(D)->CurrPOC.ThisPOC
	str	r3, [sp, #12]	@ D.42724, %sfp
	str	lr, [r4, #980]	@ pH264Ctx_34(D)->CurrPOC.ThisPOC, pH264Ctx_34(D)->CurrPic.thispoc
	ldr	lr, [r6, #3452]	@ pH264Ctx_34(D)->CurrPOC.framepoc, pH264Ctx_34(D)->CurrPOC.framepoc
	str	lr, [r4, #984]	@ pH264Ctx_34(D)->CurrPOC.framepoc, pH264Ctx_34(D)->CurrPic.framepoc
	ldr	lr, [r6, #3444]	@ pH264Ctx_34(D)->CurrPOC.toppoc, pH264Ctx_34(D)->CurrPOC.toppoc
	str	lr, [r4, #988]	@ pH264Ctx_34(D)->CurrPOC.toppoc, pH264Ctx_34(D)->CurrPic.toppoc
	ldr	lr, [r6, #3448]	@ pH264Ctx_34(D)->CurrPOC.bottompoc, pH264Ctx_34(D)->CurrPOC.bottompoc
	str	ip, [r4, #1024]	@ tmp650, pH264Ctx_34(D)->CurrPic.stream_base_addr
	strb	r0, [r4, #554]	@ ret, pH264Ctx_34(D)->CurrPic.non_existing
	strb	r0, [r4, #557]	@ ret, pH264Ctx_34(D)->CurrPic.is_short_term
	str	lr, [r4, #992]	@ pH264Ctx_34(D)->CurrPOC.bottompoc, pH264Ctx_34(D)->CurrPic.bottompoc
	strb	r0, [r4, #556]	@ ret, pH264Ctx_34(D)->CurrPic.is_long_term
	ldrb	fp, [r8, #201]	@ zero_extendqisi2	@ D.42723, pH264Ctx_34(D)->CurrSlice.field_pic_flag
	cmp	fp, #0	@ D.42723,
	strneb	r1, [r8, #201]	@ tmp600, pH264Ctx_34(D)->CurrSlice.field_pic_flag
	ldrb	r10, [r9, #1318]	@ zero_extendqisi2	@ D.42733, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r0, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	movne	fp, r1	@ D.42723, tmp600
	rsb	r10, r10, #2	@ D.42733, D.42733,
	movne	r1, #2	@ D.42724,
	mla	r10, r0, r10, r10	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, D.42733, D.42733
	mov	r0, r10	@, D.42724
	bl	__aeabi_uidiv	@
	str	r10, [r4, #1016]	@ D.42724, pH264Ctx_34(D)->CurrPic.frame_height_in_mb
	cmp	fp, #0	@ D.42723,
	ldr	r2, [sp, #8]	@ D.42724, %sfp
	ldr	r3, [sp, #12]	@ D.42724, %sfp
	str	r0, [r4, #1012]	@ tmp667, pH264Ctx_34(D)->CurrPic.pic_height_in_mb
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r1, ip, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	str	r1, [r4, #1008]	@ D.42724, pH264Ctx_34(D)->CurrPic.pic_width_in_mb
	mul	r1, r1, r0	@ D.42724, D.42724, tmp667
	str	r1, [r4, #1020]	@ D.42724, pH264Ctx_34(D)->CurrPic.pic_mbs
	ldrb	r1, [r6, #1204]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag
	strb	r1, [r4, #560]	@ pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_34(D)->CurrPic.entropy_coding_mode_flag
	movne	r1, #0	@ D.42731,
	beq	.L3356	@,
.L3267:
	cmp	r3, #0	@ D.42724,
	add	r3, r5, #24576	@ tmp699, pH264Ctx,
	strb	r1, [r4, #561]	@ D.42731, pH264Ctx_34(D)->CurrPic.MbaffFrameFlag
	movw	r10, #2004	@ tmp702,
	strne	r2, [r8, #216]	@ D.42724, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	movw	r8, #49728	@ tmp708,
	ldr	r1, [r3, #1804]	@ pH264Ctx_34(D)->CurrMarkIdx, pH264Ctx_34(D)->CurrMarkIdx
	add	ip, r5, #49664	@ tmp712, pH264Ctx,
	movw	lr, #49744	@ tmp711,
	add	r0, ip, #56	@,,
	mvn	r2, #0	@ tmp728,
	mvn	r3, #0	@,
	mla	r1, r10, r1, r5	@ tmp704, tmp702, pH264Ctx_34(D)->CurrMarkIdx, pH264Ctx
	add	r1, r1, #22272	@ D.42741, tmp704,
	add	r1, r1, #100	@ D.42741, D.42741,
	str	r1, [r4, #964]	@ D.42741, pH264Ctx_34(D)->CurrPic.pMarkPara
	ldr	r1, [r5]	@ D.42734, pH264Ctx_34(D)->pstExtraData
	ldrd	r10, [r1, #56]	@ D.42742, D.42734,
	strd	r10, [r5, r8]	@ D.42742, pH264Ctx, tmp708
	ldrd	r10, [r1, #72]	@ D.42742, D.42734,
	strd	r10, [ip, #72]	@ D.42742, tmp712,
	ldrd	r10, [r1, #88]	@ D.42742, D.42734,
	strd	r10, [r5, lr]	@ D.42742, pH264Ctx, tmp711
	ldr	ip, [r1, #104]	@ D.42724, _275->DispEnableFlag
	str	ip, [r4, #636]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.DispEnableFlag
	ldr	ip, [r1, #108]	@ D.42724, _275->DispFrameDistance
	str	ip, [r4, #640]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.DispFrameDistance
	ldr	ip, [r1, #112]	@ D.42724, _275->DistanceBeforeFirstFrame
	str	ip, [r4, #644]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	ip, [r1, #128]	@ D.42724, _275->GopNum
	str	ip, [r4, #648]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.GopNum
	ldr	ip, [r7, #752]	@ D.42724, pSPS_42->bit_depth_luma_minus8
	str	ip, [r4, #780]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.bit_depth_luma_minus8
	ldr	ip, [r7, #756]	@ D.42724, pSPS_42->bit_depth_chroma_minus8
	str	ip, [r4, #784]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.bit_depth_chroma_minus8
	strd	r2, [r1, #56]	@ tmp728, D.42734,
	ldr	r3, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r3, r3, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mov	r3, r3, asl #4	@ D.42724, D.42724,
	str	r3, [r4, #712]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.image_width
	ldrb	r2, [r9, #1318]	@ zero_extendqisi2	@ D.42733, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r1, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	r3, r2, #2	@ D.42733, D.42733,
	mla	r3, r1, r3, r3	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, D.42733, D.42733
	mov	r3, r3, asl #4	@ D.42724, D.42724,
	str	r3, [r4, #716]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.image_height
	ldr	r2, [r9, #2048]	@ pH264Ctx_34(D)->CurrSPS.chroma_format_idc, pH264Ctx_34(D)->CurrSPS.chroma_format_idc
	ldr	r3, [r9, #1356]	@ pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format
	subs	r2, r2, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.chroma_format_idc,
	ldr	r1, [r9, #1352]	@ pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio
	movne	r2, #1	@ D.42724,
	and	r1, r1, #7	@ dar, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio,
	mov	r3, r3, asl #5	@ D.42724, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format,
	mov	r2, r2, asl #2	@ D.42724, D.42724,
	orr	r2, r2, r1, asl #14	@ D.42724, D.42724, dar,
	uxtb	r3, r3	@ D.42724, D.42724
	orr	r3, r2, r3	@ D.42724, D.42724, D.42724
	str	r3, [r4, #708]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.format
	bl	SetAspectRatio	@
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPic.structure, pH264Ctx_34(D)->CurrPic.structure
	ldr	r2, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	adds	r3, r3, #0	@ D.42728, pH264Ctx_34(D)->CurrPic.structure,
	ldr	r1, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	movne	r3, #1	@ D.42728,
	cmp	r2, #0	@ D.42732,
	str	r3, [r4, #696]	@ D.42728, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	str	r1, [r4, #752]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->CurrPic.fs_image.seq_cnt
	beq	.L3346	@,
	ldr	r3, [r4, #708]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.format
	str	r3, [r2, #148]	@ D.42724, _334->fs_image.format
	ldr	r3, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #696]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	str	r2, [r3, #136]	@ D.42724, _337->fs_image.is_fld_save
	ldr	r3, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #632]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.u32AspectHeight
	str	r2, [r3, #72]	@ D.42724, _340->fs_image.u32AspectHeight
	ldr	r3, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #628]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.u32AspectWidth
	str	r2, [r3, #68]	@ D.42724, _343->fs_image.u32AspectWidth
	ldr	r3, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #712]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.image_width
	str	r2, [r3, #152]	@ D.42724, _346->fs_image.image_width
	ldr	r3, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #716]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.image_height
	str	r2, [r3, #156]	@ D.42724, _349->fs_image.image_height
	ldr	r3, [r7, #3992]	@ D.42724, pSPS_42->disp_center_x
	ldr	r2, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	str	r3, [r2, #168]	@ D.42724, _352->fs_image.disp_center_x
	str	r3, [r4, #728]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.disp_center_x
	ldr	r2, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3996]	@ D.42724, pSPS_42->disp_center_y
	str	r3, [r2, #172]	@ D.42724, _356->fs_image.disp_center_y
	str	r3, [r4, #732]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.disp_center_y
	ldr	r2, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3984]	@ D.42724, pSPS_42->disp_width
	str	r3, [r2, #160]	@ D.42724, _360->fs_image.disp_width
	str	r3, [r4, #720]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.disp_width
	ldr	r2, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3988]	@ D.42724, pSPS_42->disp_height
	str	r3, [r2, #164]	@ D.42724, _364->fs_image.disp_height
	str	r3, [r4, #724]	@ D.42724, pH264Ctx_34(D)->CurrPic.fs_image.disp_height
	ldr	r3, [r4, #960]	@ pH264Ctx_34(D)->CurrPic.frame_store, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	ldr	r1, [r3, #508]	@, _369->logic_fs_id
	bl	FSP_GetDispPhyFs	@
	cmp	r0, #0	@ pstDecFs
	beq	.L3269	@,
	ldr	r3, [r4, #696]	@ pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	mov	r1, #0	@,
	ldr	r2, [r0, #4]	@, pstDecFs_372->PhyFsID
	subs	r3, r3, r1	@, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	movne	r3, #1	@,
	bl	FSP_SetStoreType	@
.L3269:
	add	r8, r5, #49664	@ ivtmp.3077, pH264Ctx,
	add	r0, r5, #49920	@ D.42736, pH264Ctx,
	add	r8, r8, #244	@ ivtmp.3077, ivtmp.3077,
	add	lr, r5, #51200	@ ivtmp.3107, pH264Ctx,
	ldr	r7, [r4, #2192]	@ D.42726, pH264Ctx_34(D)->TotalUsrDatNum
	add	r0, r0, #4	@ D.42736, D.42736,
	add	lr, lr, #148	@ ivtmp.3107, ivtmp.3107,
	mov	r2, r8	@ ivtmp.3128, ivtmp.3077
	mov	r6, #0	@ tmp908,
.L3273:
	ldr	r3, [r2, #4]!	@ MEM[base: _203, offset: 0B], MEM[base: _203, offset: 0B]
	cmp	r3, #0	@ MEM[base: _203, offset: 0B],
	beq	.L3357	@,
.L3270:
	cmp	r2, r0	@ ivtmp.3128, D.42736
	bne	.L3273	@,
	cmp	r7, #0	@ D.42726,
	beq	.L3274	@,
	ble	.L3274	@,
	add	r6, r7, #12800	@ D.42737, uidxpic,
	mov	r9, #0	@ tmp907,
	add	r6, r6, #37	@ D.42737, D.42737,
	add	r6, r5, r6, lsl #2	@ ivtmp.3090, pH264Ctx, D.42737,
.L3275:
	ldr	r1, [r6, #-4]!	@, MEM[base: _101, offset: 0B]
	sub	r7, r7, #1	@ uidxpic, uidxpic,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r7, #0	@ uidxpic,
	str	r9, [r6]	@ tmp907, MEM[base: _101, offset: 0B]
	bne	.L3275	@,
.L3274:
	mov	r3, #0	@ uidxpic,
.L3277:
	ldr	r2, [r8, #4]!	@ D.42745, MEM[base: _257, offset: 0B]
	add	r1, r3, #50	@ tmp860, uidxpic,
	add	r3, r3, #1	@ uidxpic, uidxpic,
	cmp	r2, #0	@ D.42745,
	ldrne	r0, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	strne	r2, [r0, r1, asl #2]	@ D.42745, _400->fs_image.p_usrdat
	cmp	r3, #4	@ uidxpic,
	bne	.L3277	@,
	mov	r0, r5	@, pH264Ctx
	mov	r5, #0	@ tmp863,
	str	r5, [r4, #2192]	@ tmp863, pH264Ctx_34(D)->TotalUsrDatNum
	str	r5, [r4, #996]	@ tmp863, pH264Ctx_34(D)->CurrPic.pic_type
	bl	CalcPicNum	@
	mov	r0, r5	@ D.42725, tmp863
.L3335:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3241:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L3346	@,
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L3346	@,
.L3342:
	add	r6, r5, #16384	@ tmp904, pH264Ctx,
	ldr	r3, [r10, #24]	@ pPPS_38->pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	ldr	r2, [r6, #1228]	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	bne	.L3246	@,
.L3354:
	ldrb	r3, [r10, #20]	@ zero_extendqisi2	@ pPPS_38->is_refreshed, pPPS_38->is_refreshed
	cmp	r3, #0	@ pPPS_38->is_refreshed,
	beq	.L3247	@,
	b	.L3246	@
.L3345:
	ldr	r10, [r8, #220]	@ D.42726, pH264Ctx_34(D)->CurrSlice.frame_num
	b	.L3250	@
.L3357:
	cmp	r7, #0	@ D.42726,
	beq	.L3270	@,
	ldr	r1, [r4, #2196]	@ D.42745, pH264Ctx_34(D)->pUsrDatArray
	subs	r7, r7, #1	@ D.42726, D.42726,
	str	r1, [r2]	@ D.42745, MEM[base: _203, offset: 0B]
	beq	.L3271	@,
	mov	r1, lr	@ ivtmp.3107, ivtmp.3107
.L3272:
	add	r3, r3, #1	@ uidxsei, uidxsei,
	ldr	ip, [r1, #4]!	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 0B]
	cmp	r3, r7	@ uidxsei, D.42726
	str	ip, [r1, #-4]	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 4294967292B]
	bne	.L3272	@,
.L3271:
	add	r3, r7, #12800	@ tmp844, D.42726,
	add	r3, r3, #36	@ tmp844, tmp844,
	add	r3, r5, r3, lsl #2	@ tmp845, pH264Ctx, tmp844,
	str	r6, [r3, #4]	@ tmp908, pH264Ctx_34(D)->pUsrDatArray
	str	r7, [r4, #2192]	@ D.42726, pH264Ctx_34(D)->TotalUsrDatNum
	b	.L3270	@
.L3356:
	ldrb	r1, [r9, #1319]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag, pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag
	adds	r1, r1, #0	@ D.42731, pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag,
	movne	r1, #1	@ D.42731,
	b	.L3267	@
.L3352:
	ldr	r3, [r2, #32]	@ _64->eCapLevel, _64->eCapLevel
	cmp	r3, #25	@ _64->eCapLevel,
	bne	.L3234	@,
	ldr	r3, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	cmp	r6, #0	@ D.42733,
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, #1	@ D.42724, pH264Ctx_34(D)->SeqCnt,
	str	r3, [r4, #3648]	@ D.42724, pH264Ctx_34(D)->SeqCnt
	beq	.L3235	@,
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L3346	@,
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L3346	@,
	add	r6, r5, #16384	@ tmp904, pH264Ctx,
	ldrb	fp, [r9, #1318]	@ zero_extendqisi2	@ D.42733, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r2, [r9, #1272]	@ pH264Ctx_34(D)->CurWidthInMb, pH264Ctx_34(D)->CurWidthInMb
	ldr	r3, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	fp, fp, #2	@ D.42733, D.42733,
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	cmp	r2, #0	@ pH264Ctx_34(D)->CurWidthInMb,
	add	r3, r3, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	add	ip, ip, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mov	r3, r3, asl #4	@ D.42724, D.42724,
	mov	ip, ip, asl #4	@ ImageWidth, D.42724,
	mul	fp, fp, r3	@ ImageHeight, D.42733, D.42724
	bne	.L3343	@,
	ldr	r0, [r6, #1184]	@ D.42724, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	str	r0, [r4, #2168]	@ D.42724, pH264Ctx_34(D)->TotalPmvNum
	ldr	r3, [r5]	@ D.42734, pH264Ctx_34(D)->pstExtraData
	ldr	r1, [r3, #568]	@ D.42724, _88->stChanOption.s32MaxWidth
	cmp	ip, r1	@ ImageWidth, D.42724
	bhi	.L3346	@,
	ldr	r2, [r3, #572]	@ D.42724, _88->stChanOption.s32MaxHeight
	cmp	fp, r2	@ ImageHeight, D.42724
	str	r2, [sp, #8]	@ D.42724, %sfp
	bhi	.L3346	@,
	add	lr, r5, #24576	@ tmp436, pH264Ctx,
	ldr	r2, [r3, #588]	@ tmp933, _88->stChanOption.s32MaxRefFrameNum
	ldr	lr, [lr, #2048]	@ pH264Ctx_34(D)->DPB.size, pH264Ctx_34(D)->DPB.size
	cmp	r2, lr	@ tmp933, pH264Ctx_34(D)->DPB.size
	bcc	.L3346	@,
	ldr	lr, [r3, #596]	@ _88->stChanOption.s32SupportBFrame, _88->stChanOption.s32SupportBFrame
	str	ip, [sp, #12]	@ ImageWidth, %sfp
	cmp	lr, #0	@ _88->stChanOption.s32SupportBFrame,
	moveq	r0, #1	@ tmp442,
	streq	r0, [r4, #2168]	@ tmp442, pH264Ctx_34(D)->TotalPmvNum
	ldreq	r1, [r3, #568]	@ D.42724, _88->stChanOption.s32MaxWidth
	ldreq	r3, [r3, #572]	@ D.42724, _88->stChanOption.s32MaxHeight
	str	r0, [sp]	@ D.42724,
	mov	r0, r5	@, pH264Ctx
	streq	r3, [sp, #8]	@ D.42724, %sfp
	add	r3, r5, #51200	@, pH264Ctx,
	ldr	r2, [sp, #8]	@, %sfp
	add	r3, r3, #116	@,,
	bl	H264_ArrangeVahbMem	@
	ldr	ip, [sp, #12]	@ ImageWidth, %sfp
	cmp	r0, #1	@,
	beq	.L3343	@,
.L3245:
	mov	r3, #0	@ tmp447,
	mov	r0, r5	@, pH264Ctx
	str	r3, [r9, #1272]	@ tmp447, pH264Ctx_34(D)->CurWidthInMb
	mov	r1, r3	@, tmp447
	str	r3, [r9, #1276]	@ tmp447, pH264Ctx_34(D)->CurHeightInMb
	bl	ClearAll	@
	b	.L3346	@
.L3351:
	ldrb	r3, [r7, #24]	@ zero_extendqisi2	@ pSPS_42->is_refreshed, pSPS_42->is_refreshed
	cmp	r3, #0	@ pSPS_42->is_refreshed,
	beq	.L3231	@,
	b	.L3230	@
.L3353:
	ldr	r3, [r4, #3740]	@ pH264Ctx_34(D)->DSD_NeedClearQue, pH264Ctx_34(D)->DSD_NeedClearQue
	cmp	r3, #1	@ pH264Ctx_34(D)->DSD_NeedClearQue,
	bne	.L3243	@,
	b	.L3242	@
.L3350:
	ldr	r1, [r3, #508]	@, _44->logic_fs_id
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	strb	r6, [r3, #1]	@ _44->is_used, _49->is_used
	ldr	r3, [r4, #960]	@ D.42732, pH264Ctx_34(D)->CurrPic.frame_store
	strb	r6, [r3, #4]	@ _44->is_used, _51->is_in_dpb
	b	.L3229	@
.L3254:
	mov	r0, r5	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	beq	.L3345	@,
.L3346:
	mvn	r0, #0	@ D.42725,
	b	.L3335	@
.L3283:
	mov	r10, fp	@ D.42726, D.42724
	b	.L3250	@
.L3257:
	rsb	r2, r10, fp	@ D.42724, D.42726, D.42724
	ldr	r1, [r6, #1184]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	add	r2, r2, r3	@ D.42724, D.42724, MaxFrameNum
	cmp	r1, r2	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, D.42724
	bcs	.L3256	@,
	b	.L3349	@
.L3235:
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L3346	@,
	add	r6, r5, #16384	@ tmp904, pH264Ctx,
	ldrb	fp, [r9, #1318]	@ zero_extendqisi2	@ D.42733, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r3, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	fp, fp, #2	@ D.42733, D.42733,
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r3, r3, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	add	ip, ip, #1	@ D.42724, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mov	r3, r3, asl #4	@ D.42724, D.42724,
	mov	ip, ip, asl #4	@ ImageWidth, D.42724,
	mul	fp, fp, r3	@ ImageHeight, D.42733, D.42724
	b	.L3343	@
.L3261:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	mov	r3, #0	@ tmp549,
	mvn	r0, #0	@ D.42725,
	str	r3, [r4, #2180]	@ tmp549, pH264Ctx_34(D)->IDRFound
	str	r3, [r4, #3696]	@ tmp549, pH264Ctx_34(D)->FirstFrameDisplayed
	b	.L3335	@
.L3355:
	ldr	r1, [r2, #536]	@ _166->stPvrInfo.u32IDRFlag, _166->stPvrInfo.u32IDRFlag
	cmp	r1, #0	@ _166->stPvrInfo.u32IDRFlag,
	bne	.L3255	@,
	ldr	r1, [r2, #544]	@ _166->stPvrInfo.u32ContinuousFlag, _166->stPvrInfo.u32ContinuousFlag
	cmp	r1, #0	@ _166->stPvrInfo.u32ContinuousFlag,
	bne	.L3255	@,
	ldr	r2, [r2, #520]	@ _166->s32FastForwardBackwardSpeed, _166->s32FastForwardBackwardSpeed
	add	r2, r2, #1020	@ D.42736, _166->s32FastForwardBackwardSpeed,
	add	r2, r2, #3	@ D.42736, D.42736,
	cmp	r2, #2048	@ D.42736,
	bcs	.L3256	@,
	b	.L3255	@
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
	add	r8, r0, #20480	@ tmp281, pH264Ctx,
	ldr	r3, [r0, #368]	@ D.42763, pH264Ctx_22(D)->pCurrNal
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ D.42764, _23->nal_unit_type
	strb	r2, [r8, #203]	@ D.42764, pH264Ctx_22(D)->CurrSlice.nal_unit_type
	ldr	r3, [r3, #76]	@ D.42765, _23->nal_ref_idc
	str	r3, [r8, #232]	@ D.42765, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3362	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderSecondPart	@
	cmp	r0, #0	@ ret
	bne	.L3362	@,
	add	r6, r4, #49152	@ tmp280, pH264Ctx,
	ldr	r10, [r6, #3612]	@ D.42765, pH264Ctx_22(D)->SliceParaNum
	cmp	r10, #0	@ D.42765,
	moveq	r2, r10	@ Size, D.42765
	beq	.L3364	@,
	add	r9, r4, #50688	@ ivtmp.3141, pH264Ctx,
	mov	r3, r0	@ PrevNalAddr, PrevNalSize
	add	r9, r9, #12	@ ivtmp.3141, ivtmp.3141,
	mov	r2, r0	@ Size, PrevNalSize
	mov	lr, r0	@ i, PrevNalSize
.L3372:
	ldr	r5, [r9, #4]!	@ D.42763, MEM[base: _1, offset: 0B]
	ldr	ip, [r5, #8]	@ PrevNalAddr, _45->stream[0].streamBuffer
	ldr	r1, [r5, #36]	@ PrevNalAddr, _45->stream[1].streamBuffer
	cmp	ip, #0	@ PrevNalAddr,
	ldrne	r7, [r5, #12]	@ PrevNalSize, _45->stream[0].bitstream_length
	moveq	r7, ip	@ PrevNalSize, PrevNalAddr
	cmp	r1, #0	@ PrevNalAddr,
	moveq	r5, r1	@ PrevNalSize, PrevNalAddr
	ldrne	r5, [r5, #40]	@ PrevNalSize, _45->stream[1].bitstream_length
	cmp	r3, #0	@ PrevNalAddr,
	addeq	r2, r7, r2	@ D.42765, PrevNalSize, Size
	addeq	r2, r2, r5	@ Size, D.42765, PrevNalSize
	beq	.L3370	@,
	cmp	ip, r3	@ PrevNalAddr, PrevNalAddr
	add	r2, r5, r2	@ D.42761, PrevNalSize, Size
	addhi	r3, r3, r0	@ D.42765, PrevNalAddr, PrevNalSize
	rsbhi	r3, r3, ip	@ D.42761, D.42765, PrevNalAddr
	movls	r3, r7	@ D.42761, PrevNalSize
	addhi	r3, r3, r7	@ D.42761, D.42761, PrevNalSize
	add	r2, r2, r3	@ Size, D.42761, D.42761
.L3370:
	cmp	r1, #0	@ PrevNalAddr,
	add	lr, lr, #1	@ i, i,
	movne	r3, r1	@ PrevNalAddr, PrevNalAddr
	movne	r0, r5	@ PrevNalSize, PrevNalSize
	moveq	r3, ip	@ PrevNalAddr, PrevNalAddr
	moveq	r0, r7	@ PrevNalSize, PrevNalSize
	cmp	lr, r10	@ i, D.42765
	bne	.L3372	@,
.L3364:
	ldr	r0, [r6, #1012]	@ pH264Ctx_22(D)->CurrPic.pic_height_in_mb, pH264Ctx_22(D)->CurrPic.pic_height_in_mb
	movw	r1, #1620	@ tmp215,
	ldr	r3, [r6, #1008]	@ pH264Ctx_22(D)->CurrPic.pic_width_in_mb, pH264Ctx_22(D)->CurrPic.pic_width_in_mb
	str	r2, [r6, #3672]	@ Size, pH264Ctx_22(D)->MaxBytesReceived
	mul	r3, r3, r0	@ TotalMbs, pH264Ctx_22(D)->CurrPic.pic_width_in_mb, pH264Ctx_22(D)->CurrPic.pic_height_in_mb
	cmp	r3, r1	@ TotalMbs, tmp215
	movgt	r3, r3, asl #7	@ MaxStreamThr, TotalMbs,
	ble	.L3407	@,
.L3374:
	add	r1, r4, #12288	@ tmp225, pH264Ctx,
	ldr	r1, [r1, #1280]	@ D.42765, pH264Ctx_22(D)->MaxSliceNum
	cmp	r1, r10	@ D.42765, D.42765
	bls	.L3375	@,
	cmp	r3, r2	@ MaxStreamThr, Size
	bcc	.L3376	@,
	ldrb	r3, [r8, #205]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.new_pic_flag, pH264Ctx_22(D)->CurrSlice.new_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.new_pic_flag,
	beq	.L3378	@,
	ldrb	r3, [r8, #203]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.nal_unit_type, pH264Ctx_22(D)->CurrSlice.nal_unit_type
	mov	r2, #0	@ tmp244,
	ldrb	r1, [r6, #555]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrPic.structure, pH264Ctx_22(D)->CurrPic.structure
	mov	r0, r4	@, pH264Ctx
	cmp	r3, #5	@ pH264Ctx_22(D)->CurrSlice.nal_unit_type,
	ldr	r3, [r6, #3652]	@ D.42761, pH264Ctx_22(D)->TotalPicNum
	str	r2, [r6, #3668]	@ tmp244, pH264Ctx_22(D)->SliceNumInPic
	streq	r3, [r6, #3664]	@ D.42761, pH264Ctx_22(D)->IDRPicOfCurrPic
	cmp	r1, r2	@ pH264Ctx_22(D)->CurrPic.structure,
	add	r3, r3, #1	@ D.42765, D.42761,
	str	r3, [r6, #3652]	@ D.42765, pH264Ctx_22(D)->TotalPicNum
	ldreq	r3, [r6, #3656]	@ pH264Ctx_22(D)->TotalFrameNum, pH264Ctx_22(D)->TotalFrameNum
	ldrne	r3, [r6, #3660]	@ pH264Ctx_22(D)->TotalFieldNum, pH264Ctx_22(D)->TotalFieldNum
	addeq	r3, r3, #1	@ D.42765, pH264Ctx_22(D)->TotalFrameNum,
	addne	r3, r3, #1	@ D.42765, pH264Ctx_22(D)->TotalFieldNum,
	streq	r3, [r6, #3656]	@ D.42765, pH264Ctx_22(D)->TotalFrameNum
	strne	r3, [r6, #3660]	@ D.42765, pH264Ctx_22(D)->TotalFieldNum
	bl	InitPic	@
	cmp	r0, #0	@,
	bne	.L3384	@,
	mov	r0, r4	@, pH264Ctx
	bl	WritePicMsg	@
.L3378:
	mov	r0, r4	@, pH264Ctx
	bl	PicTypeStatistic	@
	mov	r0, r4	@, pH264Ctx
	bl	DecList	@
	cmp	r0, #0	@,
	bne	.L3384	@,
	mov	r0, r4	@, pH264Ctx
	bl	IsRefListWrong	@
	subs	r5, r0, #0	@ ret,
	mov	r0, r4	@, pH264Ctx
	bne	.L3405	@,
	bl	CalcStreamBits	@
	mov	r0, r4	@, pH264Ctx
	bl	WriteSliceMsg	@
	mov	r0, r4	@, pH264Ctx
	bl	ExitSlice	@
	ldr	r3, [r6, #3668]	@ pH264Ctx_22(D)->SliceNumInPic, pH264Ctx_22(D)->SliceNumInPic
	mov	r0, r5	@ D.42762, ret
	mov	r2, #1	@ tmp271,
	add	r3, r3, r2	@ D.42765, pH264Ctx_22(D)->SliceNumInPic,
	str	r2, [r6, #2172]	@ tmp271, pH264Ctx_22(D)->AllowStartDec
	str	r3, [r6, #3668]	@ D.42765, pH264Ctx_22(D)->SliceNumInPic
.L3401:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3407:
	mov	r1, r3, asl #10	@ tmp218, TotalMbs,
	movw	r0, #32769	@ tmp220,
	sub	r3, r1, r3, asl #8	@ tmp219, tmp218, TotalMbs,
	cmp	r3, r0	@ tmp219, tmp220
	movgt	r3, r3, asr #1	@ MaxStreamThr, tmp219,
	movle	r3, #16384	@ MaxStreamThr,
	b	.L3374	@
.L3362:
	ldr	r3, .L3408	@ tmp192,
	add	r6, r4, #49152	@ tmp280, pH264Ctx,
	ldr	r3, [r3]	@ D.42766, g_event_report
	cmp	r3, #0	@ D.42766,
	beq	.L3365	@,
	add	r2, sp, #8	@ tmp194,,
	mvn	r0, #0	@ tmp193,
	mov	r1, #100	@,
	str	r0, [r2, #-8]!	@ tmp193,
	ldr	r0, [r6, #3688]	@, pH264Ctx_22(D)->ChanID
	blx	r3	@ D.42766
.L3365:
	mov	r0, r4	@, pH264Ctx
.L3405:
	bl	ClearCurrNal	@
	ldr	r3, [r6, #3644]	@ pH264Ctx_22(D)->TotalSlice, pH264Ctx_22(D)->TotalSlice
	mvn	r0, #0	@ D.42762,
	add	r3, r3, #1	@ D.42765, pH264Ctx_22(D)->TotalSlice,
	str	r3, [r6, #3644]	@ D.42765, pH264Ctx_22(D)->TotalSlice
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3384:
	mvn	r0, #0	@ D.42762,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3375:
	ldr	r3, .L3408	@ tmp279,
	ldr	r3, [r3]	@ D.42766, g_event_report
	cmp	r3, #0	@ D.42766,
	beq	.L3376	@,
	str	r1, [sp, #4]	@ D.42765, para
	mov	r2, sp	@,
	str	r10, [sp]	@ D.42765, para
	mov	r1, #108	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_22(D)->ChanID
	blx	r3	@ D.42766
.L3376:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.42762,
	b	.L3401	@
.L3409:
	.align	2
.L3408:
	.word	g_event_report
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
	add	r4, r0, #49152	@ tmp359, pH264Ctx,
	ldr	r5, [r0, #368]	@ D.42804, pH264Ctx_18(D)->pCurrNal
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ NalMode, NalMode
	ldr	r3, [r5, #68]	@ _190->nal_segment, _190->nal_segment
	cmp	r3, #0	@ _190->nal_segment,
	movne	ip, r5	@ ivtmp.3176, D.42804
	movne	r2, #0	@ i,
	ldrne	r3, [r4, #3672]	@ D.42799, pH264Ctx_18(D)->MaxBytesReceived
	beq	.L3426	@,
.L3425:
	ldr	lr, [ip, #12]	@ MEM[base: _19, offset: 12B], MEM[base: _19, offset: 12B]
	add	r2, r2, #1	@ i, i,
	add	ip, ip, #28	@ ivtmp.3176, ivtmp.3176,
	add	r3, r3, lr	@ D.42799, D.42799, MEM[base: _19, offset: 12B]
	str	r3, [r4, #3672]	@ D.42799, pH264Ctx_18(D)->MaxBytesReceived
	ldr	lr, [r5, #68]	@ _190->nal_segment, _190->nal_segment
	cmp	lr, r2	@ _190->nal_segment, i
	bhi	.L3425	@,
.L3426:
	add	r8, r7, #13504	@ D.42802, pH264Ctx,
	mov	r9, #0	@ tmp210,
	add	r8, r8, #24	@ D.42802, D.42802,
	mov	r1, #32	@,
	strb	r9, [r5]	@ tmp210, _190->nal_used_segment
	mov	r0, r8	@, D.42802
	bl	BsGet	@
	ldr	r3, [r7, #368]	@ D.42804, pH264Ctx_18(D)->pCurrNal
	and	ip, r0, #31	@ tmp214, nal_header,
	strb	ip, [r3, #2]	@ tmp214, _32->nal_unit_type
	ldr	r3, [r7, #368]	@ D.42804, pH264Ctx_18(D)->pCurrNal
	ubfx	r1, r0, #5, #2	@ D.42801, nal_header,,
	ubfx	r2, r0, #7, #1	@ D.42801, nal_header,,
	str	r1, [r3, #76]	@ D.42801, _36->nal_ref_idc
	ldr	r3, [r7, #368]	@ D.42804, pH264Ctx_18(D)->pCurrNal
	str	r2, [r3, #80]	@ D.42801, _40->forbidden_bit
	ldr	r2, [r7, #368]	@ D.42804, pH264Ctx_18(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _44->nal_bitoffset, _44->nal_bitoffset
	add	r3, r3, #32	@ D.42801, _44->nal_bitoffset,
	str	r3, [r2, #64]	@ D.42801, _44->nal_bitoffset
	ldr	r3, [r4, #3632]	@ pH264Ctx_18(D)->TotalNal, pH264Ctx_18(D)->TotalNal
	str	r9, [r4, #3628]	@ tmp210, pH264Ctx_18(D)->SeErrFlg
	add	r3, r3, #1	@ D.42801, pH264Ctx_18(D)->TotalNal,
	str	r3, [r4, #3632]	@ D.42801, pH264Ctx_18(D)->TotalNal
	ldr	r2, [r7, #368]	@ D.42804, pH264Ctx_18(D)->pCurrNal
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ D.42805, _52->nal_unit_type
	sub	r3, r1, #1	@ tmp231, D.42805,
	cmp	r3, #29	@ tmp231,
	ldrls	pc, [pc, r3, asl #2]	@ tmp231
	b	.L3412	@
.L3414:
	.word	.L3413
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3413
	.word	.L3415
	.word	.L3416
	.word	.L3417
	.word	.L3423
	.word	.L3423
	.word	.L3420
	.word	.L3423
	.word	.L3423
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3423
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3412
	.word	.L3424
.L3420:
	mov	r1, #32	@,
	mov	r0, r8	@, D.42802
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.42803,
	mov	r0, r8	@, D.42802
	bl	BsGet	@
	movw	r2, #20036	@ tmp309,
	movw	r3, #20553	@ tmp312,
	movt	r2, 17221	@ tmp309,
	movt	r3, 18515	@ tmp312,
	cmp	r0, r2	@, tmp309
	cmpeq	r5, r3	@, D.42803, tmp312
	bne	.L3423	@,
	ldr	r5, .L3519	@ tmp358,
	add	r3, r7, #12288	@ tmp317, pH264Ctx,
	mov	r2, #1	@ tmp318,
	strb	r2, [r3, #1268]	@ tmp318, pH264Ctx_18(D)->IsStreamEndFlag
	ldr	r3, [r5]	@ D.42806, g_event_report
	cmp	r3, #0	@ D.42806,
	beq	.L3439	@,
	mov	r2, #0	@,
	mov	r1, #112	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	blx	r3	@ D.42806
.L3439:
	mov	r6, #0	@ tmp324,
	mov	r0, r7	@, pH264Ctx
	str	r6, [r7, #364]	@ tmp324, pH264Ctx_18(D)->StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	bne	.L3514	@,
.L3423:
	mov	r0, r7	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.42798,
.L3429:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3424:
	cmp	r6, #0	@ NalMode,
	beq	.L3517	@,
.L3440:
	mov	r1, #32	@,
	mov	r0, r8	@, D.42802
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.42803,
	mov	r0, r8	@, D.42802
	bl	BsGet	@
	ldr	r3, .L3519+4	@ tmp329,
	rev	r5, r5	@ code0, D.42803
	ldr	r2, [r3, #440]	@ MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B], MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B]
	ldr	r3, [r3, #436]	@ MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B], MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B]
	rev	r0, r0	@ code1,
	cmp	r0, r2	@ code1, MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B]
	cmpeq	r5, r3	@, code0, MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B]
	bne	.L3507	@,
	ldr	r5, .L3519	@ tmp358,
	ldr	r3, [r5]	@ D.42806, g_event_report
	cmp	r3, #0	@ D.42806,
	beq	.L3441	@,
	mov	r2, #0	@,
	mov	r1, #112	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	blx	r3	@ D.42806
.L3441:
	mov	r6, #0	@ tmp344,
	mov	r0, r7	@, pH264Ctx
	str	r6, [r7, #364]	@ tmp344, pH264Ctx_18(D)->StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3507	@,
.L3514:
	ldr	r3, [r5]	@ D.42806, g_event_report
	cmp	r3, r6	@ D.42806,
	beq	.L3506	@,
	mov	r2, r6	@, tmp344
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.42806
	mvn	r0, #0	@ D.42798,
	b	.L3429	@
.L3413:
	add	r3, r7, #20480	@ tmp239, pH264Ctx,
	mov	r0, r7	@, pH264Ctx
	strb	r1, [r3, #203]	@ D.42805, pH264Ctx_18(D)->CurrSlice.nal_unit_type
	ldr	r2, [r2, #76]	@ D.42801, _52->nal_ref_idc
	str	r2, [r3, #232]	@ D.42801, pH264Ctx_18(D)->CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r8, r0, #0	@ ret,
	mov	r0, r7	@, pH264Ctx
	bne	.L3518	@,
	bl	H264_DecSlice	@
	cmp	r0, #0	@,
	beq	.L3507	@,
	add	r5, r7, #51200	@ ivtmp.3157, pH264Ctx,
	add	r6, r7, #49664	@ ivtmp.3166, pH264Ctx,
	add	r6, r6, #244	@ ivtmp.3166, ivtmp.3166,
	mov	r7, r5	@ D.42811, ivtmp.3157
	add	r5, r5, #144	@ ivtmp.3157, ivtmp.3157,
	add	r7, r7, #160	@ D.42811, D.42811,
.L3433:
	ldr	r1, [r5, #4]!	@ D.42807, MEM[base: _200, offset: 0B]
	cmp	r1, #0	@ D.42807,
	beq	.L3431	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r5]	@ tmp360, MEM[base: _200, offset: 0B]
.L3431:
	ldr	r1, [r6, #4]!	@ D.42807, MEM[base: _143, offset: 0B]
	cmp	r1, #0	@ D.42807,
	beq	.L3432	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r6]	@ tmp360, MEM[base: _143, offset: 0B]
.L3432:
	cmp	r5, r7	@ ivtmp.3157, D.42811
	bne	.L3433	@,
	ldr	r3, .L3519	@ tmp267,
	mov	r2, #0	@ tmp266,
	str	r2, [r4, #2192]	@ tmp266, pH264Ctx_18(D)->TotalUsrDatNum
	ldr	r3, [r3]	@ D.42806, g_event_report
	cmp	r3, r2	@ D.42806,
	beq	.L3506	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.42806
.L3506:
	mvn	r0, #0	@ D.42798,
	b	.L3429	@
.L3416:
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecSPS	@
	mov	r5, r0	@ ret,
	mov	r0, r7	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r5, #0	@ ret,
	beq	.L3436	@,
.L3516:
	ldr	r6, .L3519	@ tmp287,
	ldr	r3, [r6]	@ D.42806, g_event_report
	cmp	r3, #0	@ D.42806,
	beq	.L3506	@,
	add	r2, sp, #8	@ tmp289,,
	mvn	r5, #0	@ tmp288,
	mov	r1, #100	@,
	str	r5, [r2, #-4]!	@ tmp288,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	blx	r3	@ D.42806
	ldr	r3, [r6]	@ D.42806, g_event_report
	cmp	r3, #0	@ D.42806,
	beq	.L3506	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.42806
	mov	r0, r5	@ D.42798, tmp288
	b	.L3429	@
.L3417:
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecPPS	@
	mov	r5, r0	@ ret,
	mov	r0, r7	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r5, #0	@ ret,
	bne	.L3516	@,
	ldr	r3, [r4, #3640]	@ pH264Ctx_18(D)->TotalPPS, pH264Ctx_18(D)->TotalPPS
	mov	r0, r5	@ D.42798, ret
	add	r3, r3, #1	@ D.42801, pH264Ctx_18(D)->TotalPPS,
	str	r3, [r4, #3640]	@ D.42801, pH264Ctx_18(D)->TotalPPS
	b	.L3429	@
.L3415:
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecSEI	@
	mov	r5, r0	@ ret,
	mov	r0, r7	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r5, #0	@ ret,
	beq	.L3507	@,
	ldr	r3, .L3519	@ tmp303,
	ldr	r3, [r3]	@ D.42806, g_event_report
	cmp	r3, #0	@ D.42806,
	beq	.L3507	@,
.L3509:
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.42806
.L3507:
	mov	r0, #0	@ D.42798,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3412:
	cmp	r0, #256	@ nal_header,
	ldr	r5, .L3519	@ tmp358,
	beq	.L3442	@,
	ldr	r3, [r5]	@ D.42806, g_event_report
	cmp	r3, #0	@ D.42806,
	beq	.L3442	@,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	blx	r3	@ D.42806
.L3442:
	mov	r0, r7	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5]	@ D.42806, g_event_report
	cmp	r3, #0	@ D.42806,
	bne	.L3509	@,
	b	.L3507	@
.L3518:
	bl	ClearCurrNal	@
	ldr	r2, .L3519	@ tmp249,
	ldr	r3, [r4, #3644]	@ pH264Ctx_18(D)->TotalSlice, pH264Ctx_18(D)->TotalSlice
	ldr	ip, [r2]	@ D.42806, g_event_report
	add	r3, r3, #1	@ D.42801, pH264Ctx_18(D)->TotalSlice,
	str	r3, [r4, #3644]	@ D.42801, pH264Ctx_18(D)->TotalSlice
	cmp	ip, #0	@ D.42806,
	beq	.L3506	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_18(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	ip	@ D.42806
	mvn	r0, #0	@ D.42798,
	b	.L3429	@
.L3436:
	ldr	r3, [r4, #3636]	@ pH264Ctx_18(D)->TotalSPS, pH264Ctx_18(D)->TotalSPS
	mov	r0, r5	@ D.42798, ret
	add	r3, r3, #1	@ D.42801, pH264Ctx_18(D)->TotalSPS,
	str	r3, [r4, #3636]	@ D.42801, pH264Ctx_18(D)->TotalSPS
	b	.L3429	@
.L3517:
	mov	r0, r7	@, pH264Ctx
	bl	ClearCurrNal	@
	b	.L3440	@
.L3520:
	.align	2
.L3519:
	.word	g_event_report
	.word	.LANCHOR0
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
	cmp	r1, #0	@ pPacket,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r3, #0	@ tmp191,
	str	r3, [sp, #16]	@ tmp191, u32Pos
	str	r3, [sp, #20]	@ tmp191, s32MaxPoc
	str	r3, [sp, #12]	@ tmp191, NewNum
	str	r3, [sp, #8]	@ tmp191, ReadNum
	str	r3, [sp, #4]	@ tmp191, RefNum
	beq	.L3539	@,
	ldr	r2, [r0]	@ D.42818, pH264Ctx_21(D)->pstExtraData
	add	r5, r0, #49152	@ tmp338, pH264Ctx,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	lr, [r5, #2176]	@ pH264Ctx_21(D)->HaveNalNotDecoded, pH264Ctx_21(D)->HaveNalNotDecoded
	ldr	ip, [r2, #8]	@ _22->s32DecMode, _22->s32DecMode
	cmp	lr, #1	@ pH264Ctx_21(D)->HaveNalNotDecoded,
	str	ip, [r5, #3676]	@ _22->s32DecMode, pH264Ctx_21(D)->advanced_cfg
	ldr	ip, [r2]	@ _22->s32RefErrThr, _22->s32RefErrThr
	str	ip, [r5, #3680]	@ _22->s32RefErrThr, pH264Ctx_21(D)->ref_error_thr
	ldr	r2, [r2, #4]	@ _22->s32OutErrThr, _22->s32OutErrThr
	str	r3, [r5, #3628]	@ tmp191, pH264Ctx_21(D)->SeErrFlg
	str	r2, [r5, #3684]	@ _22->s32OutErrThr, pH264Ctx_21(D)->out_error_thr
	beq	.L3523	@,
	bl	ReceivePacket	@
	mov	r6, r0	@ ret,
	cmp	r6, #0	@ ret,
	mov	r0, #0	@ tmp216,
	str	r0, [r5, #2176]	@ tmp216, pH264Ctx_21(D)->HaveNalNotDecoded
	beq	.L3550	@,
.L3548:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L3523:
	ldr	r6, [r0, #368]	@ pH264Ctx_21(D)->pCurrNal, pH264Ctx_21(D)->pCurrNal
	mov	r0, #0	@ tmp216,
	str	r0, [r5, #2176]	@ tmp216, pH264Ctx_21(D)->HaveNalNotDecoded
	clz	r6, r6	@ D.42816, pH264Ctx_21(D)->pCurrNal
	mov	r6, r6, lsr #5	@ D.42816, D.42816,
	rsb	r6, r6, #0	@ ret, D.42816
	cmp	r6, #0	@ ret,
	bne	.L3548	@,
.L3550:
	ldr	r3, [r4, #368]	@ D.42821, pH264Ctx_21(D)->pCurrNal
	add	r7, r4, #13504	@ D.42822, pH264Ctx,
	add	r7, r7, #24	@ D.42822, D.42822,
	str	r6, [r3, #64]	@ ret, _38->nal_bitoffset
	mov	r0, r7	@, D.42822
	ldr	r3, [r4, #368]	@ D.42821, pH264Ctx_21(D)->pCurrNal
	ldr	r2, [r3, #12]	@, _41->stream[0].bitstream_length
	ldr	r1, [r3, #8]	@, _41->stream[0].streamBuffer
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r7	@, D.42822
	bl	BsGet	@
	ldr	r1, [r4, #368]	@ D.42821, pH264Ctx_21(D)->pCurrNal
	uxtb	r3, r0	@ nal_header,
	and	r2, r3, #27	@ tmp228, nal_header,
	and	r0, r3, #31	@ tmp221, nal_header,
	cmp	r2, #1	@ tmp228,
	strb	r0, [r1, #2]	@ tmp221, _49->nal_unit_type
	ldr	r2, [r4, #368]	@ D.42821, pH264Ctx_21(D)->pCurrNal
	ubfx	r3, r3, #5, #2	@ tmp226, nal_header,,
	str	r3, [r2, #76]	@ tmp226, _52->nal_ref_idc
	bne	.L3525	@,
	add	r2, sp, #28	@,,
	add	r1, sp, #24	@,,
	mov	r0, r4	@, pH264Ctx
	bl	InquireSliceProperty	@
	cmp	r0, #0	@,
	bne	.L3526	@,
	ldr	r2, [sp, #24]	@ IsNewPic, IsNewPic
	ldr	r1, [r5, #3704]	@ pH264Ctx_21(D)->PicCounter, pH264Ctx_21(D)->PicCounter
	sub	r3, r2, #1	@ D.42816, IsNewPic,
	clz	r3, r3	@ D.42816, D.42816
	mov	r3, r3, lsr #5	@ D.42816, D.42816,
	cmp	r3, #0	@ D.42816,
	add	r3, r3, r1	@ D.42820, D.42816, pH264Ctx_21(D)->PicCounter
	str	r3, [r5, #3704]	@ D.42820, pH264Ctx_21(D)->PicCounter
	bne	.L3551	@,
.L3527:
	ldr	r3, [sp, #28]	@ IsSizeChanged, IsSizeChanged
	cmp	r3, #1	@ IsSizeChanged,
	beq	.L3552	@,
.L3525:
	mov	r0, r4	@, pH264Ctx
	mov	r5, #0	@ tmp329,
	bl	FindTrailZeros	@
	ldr	r3, [r4, #368]	@ D.42821, pH264Ctx_21(D)->pCurrNal
	mov	r0, r7	@, D.42822
	str	r5, [r3, #64]	@ tmp329, _126->nal_bitoffset
	ldr	r3, [r4, #368]	@ D.42821, pH264Ctx_21(D)->pCurrNal
	ldr	r1, [r3, #8]	@, _128->stream[0].streamBuffer
	ldr	r2, [r3, #12]	@, _128->stream[0].bitstream_length
	bl	BsInit	@
	mov	r1, r5	@, tmp329
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecOneNal	@
	subs	r0, r0, r5	@ D.42816,,
	movne	r0, #1	@ D.42816,
	rsb	r0, r0, #0	@ D.42815, D.42816
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L3526:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, .L3556	@ tmp325,
	ldr	r3, [r3]	@ D.42825, g_event_report
	cmp	r3, #0	@ D.42825,
	beq	.L3539	@,
	mov	r2, r6	@, ret
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.42825
	mvn	r0, #0	@ D.42815,
	b	.L3548	@
.L3552:
	ldr	r3, [r4]	@ pH264Ctx_21(D)->pstExtraData, pH264Ctx_21(D)->pstExtraData
	ldr	r6, [r3, #692]	@ _87->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _87->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ _87->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3553	@,
.L3534:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L3525	@,
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4]	@ D.42818, pH264Ctx_21(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _100->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _100->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _100->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3554	@,
.L3535:
	ldr	r3, [r3, #608]	@ _100->stChanOption.s32ReRangeEn, _100->stChanOption.s32ReRangeEn
	cmp	r3, #1	@ _100->stChanOption.s32ReRangeEn,
	bne	.L3525	@,
	ldr	r2, [sp, #8]	@ ReadNum, ReadNum
	ldr	r1, [sp, #12]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.42819, ReadNum, NewNum
	cmp	r2, #0	@ D.42819,
	ble	.L3525	@,
	str	r3, [r5, #2176]	@ _100->stChanOption.s32ReRangeEn, pH264Ctx_21(D)->HaveNalNotDecoded
	mvn	r0, #1	@ D.42815,
	str	r3, [r5, #3740]	@ _100->stChanOption.s32ReRangeEn, pH264Ctx_21(D)->DSD_NeedClearQue
	b	.L3548	@
.L3539:
	mvn	r0, #0	@ D.42815,
	b	.L3548	@
.L3551:
	add	r6, r4, #20480	@ tmp339, pH264Ctx,
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrSlice.field_pic_flag, pH264Ctx_21(D)->CurrSlice.field_pic_flag
	cmp	r3, #1	@ pH264Ctx_21(D)->CurrSlice.field_pic_flag,
	ldr	r3, [r5, #3708]	@ pH264Ctx_21(D)->NewPicCounter, pH264Ctx_21(D)->NewPicCounter
	addeq	r3, r3, #1	@ D.42820, pH264Ctx_21(D)->NewPicCounter,
	addne	r3, r3, #2	@ D.42820, pH264Ctx_21(D)->NewPicCounter,
	str	r3, [r5, #3708]	@ D.42820, pH264Ctx_21(D)->NewPicCounter
	ldr	r3, [r5, #3612]	@ pH264Ctx_21(D)->SliceParaNum, pH264Ctx_21(D)->SliceParaNum
	cmp	r3, #0	@ pH264Ctx_21(D)->SliceParaNum,
	beq	.L3527	@,
	ldr	r3, [r4, #368]	@ D.42821, pH264Ctx_21(D)->pCurrNal
	mov	ip, #0	@ tmp255,
	mov	r0, r7	@, D.42822
	mov	r2, #12	@,
	ldr	r1, .L3556+4	@,
	str	ip, [r3, #64]	@ tmp255, _74->nal_bitoffset
	bl	BsInit	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	H264_DecOneNal	@
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_21(D)->CurrSlice.field_pic_flag, pH264Ctx_21(D)->CurrSlice.field_pic_flag
	mvn	r0, #1	@ D.42815,
	cmp	r3, #1	@ pH264Ctx_21(D)->CurrSlice.field_pic_flag,
	ldr	r3, [r5, #3708]	@ pH264Ctx_21(D)->NewPicCounter, pH264Ctx_21(D)->NewPicCounter
	subeq	r3, r3, #1	@ D.42820, pH264Ctx_21(D)->NewPicCounter,
	subne	r3, r3, #2	@ D.42820, pH264Ctx_21(D)->NewPicCounter,
	str	r3, [r5, #3708]	@ D.42820, pH264Ctx_21(D)->NewPicCounter
	mov	r3, #1	@ tmp275,
	str	r3, [r5, #2176]	@ tmp275, pH264Ctx_21(D)->HaveNalNotDecoded
	b	.L3548	@
.L3553:
	add	r3, r4, #24576	@ tmp280, pH264Ctx,
	ldr	r3, [r3, #2052]	@ pH264Ctx_21(D)->DPB.used_size, pH264Ctx_21(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_21(D)->DPB.used_size,
	beq	.L3534	@,
	add	r2, sp, #16	@,,
	add	r1, sp, #20	@,,
	mov	r0, r4	@, pH264Ctx
	bl	GetMaxPOC	@
	ldr	r3, [sp, #16]	@ u32Pos, u32Pos
	add	r3, r3, #6592	@ tmp285, u32Pos,
	add	r3, r3, #16	@ tmp285, tmp285,
	ldr	r3, [r4, r3, asl #2]	@ D.42824, pH264Ctx_21(D)->DPB.fs
	str	r6, [r3, #384]	@ _87->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _92->fs_image.u32IsLastFrame
	b	.L3534	@
.L3554:
	ldr	r1, [r5, #3724]	@ pH264Ctx_21(D)->DSD_OldWidth, pH264Ctx_21(D)->DSD_OldWidth
	ldr	r2, [r3, #720]	@ _100->s32DSDThrWidth, _100->s32DSDThrWidth
	cmp	r1, r2	@ pH264Ctx_21(D)->DSD_OldWidth, _100->s32DSDThrWidth
	bgt	.L3536	@,
	ldr	r1, [r5, #3728]	@ pH264Ctx_21(D)->DSD_OldHeight, pH264Ctx_21(D)->DSD_OldHeight
	ldr	r2, [r3, #724]	@ _100->s32DSDThrHeight, _100->s32DSDThrHeight
	cmp	r1, r2	@ pH264Ctx_21(D)->DSD_OldHeight, _100->s32DSDThrHeight
	ble	.L3535	@,
.L3536:
	ldr	r3, [r3, #608]	@ _100->stChanOption.s32ReRangeEn, _100->stChanOption.s32ReRangeEn
	cmp	r3, #1	@ _100->stChanOption.s32ReRangeEn,
	bne	.L3525	@,
	ldr	r3, [sp, #12]	@ NewNum, NewNum
	cmp	r3, #0	@ NewNum,
	ble	.L3555	@,
.L3537:
	mov	r2, #0	@ tmp321,
	mov	r3, #1	@ tmp324,
	str	r2, [r5, #3740]	@ tmp321, pH264Ctx_21(D)->DSD_NeedClearQue
	mvn	r0, #1	@ D.42815,
	str	r3, [r5, #2176]	@ tmp324, pH264Ctx_21(D)->HaveNalNotDecoded
	b	.L3548	@
.L3555:
	ldr	r3, [sp, #8]	@ ReadNum, ReadNum
	cmp	r3, #4	@ ReadNum,
	ble	.L3525	@,
	b	.L3537	@
.L3557:
	.align	2
.L3556:
	.word	g_event_report
	.word	.LANCHOR0+432
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
	ldr	r5, [r0, #364]	@ D.42828, pH264Ctx_4(D)->StartMode
	mov	r7, r3	@ pLumaInfo, pLumaInfo
	cmp	r5, #0	@ D.42828,
	bne	.L3559	@,
	add	r6, r0, #49152	@ tmp127, pH264Ctx,
	str	r1, [r6, #1004]	@ ErrRatio, pH264Ctx_4(D)->CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r7	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	cmp	r0, #1	@,
	bls	.L3560	@,
	ldr	r3, [r6, #960]	@ pH264Ctx_4(D)->CurrPic.frame_store, pH264Ctx_4(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_4(D)->ChanID
	ldr	r1, [r3, #508]	@, _15->logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	str	r5, [r6, #2180]	@ D.42828, pH264Ctx_4(D)->IDRFound
	str	r5, [r6, #3696]	@ D.42828, pH264Ctx_4(D)->FirstFrameDisplayed
	str	r5, [r6, #960]	@ D.42828, pH264Ctx_4(D)->CurrPic.frame_store
	mvn	r5, #0	@ D.42828,
	mov	r0, r5	@, D.42828
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3559:
	add	r5, r0, #49152	@ tmp148, pH264Ctx,
	str	r1, [r5, #1004]	@ ErrRatio, pH264Ctx_4(D)->CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r7	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	add	r2, r4, #12288	@ tmp155, pH264Ctx,
	mov	r3, #0	@ tmp151,
	str	r3, [r5, #2172]	@ tmp151, pH264Ctx_4(D)->AllowStartDec
	ldr	r1, [r2, #1288]	@ pH264Ctx_4(D)->MaxPpsNum, pH264Ctx_4(D)->MaxPpsNum
	add	r4, r4, #20480	@ tmp153, pH264Ctx,
	mov	r5, r3	@ D.42828, tmp151
	movw	r2, #23352	@ tmp159,
	strb	r3, [r4, #1848]	@ tmp151, pH264Ctx_4(D)->PrevSlice.field_pic_flag
	movt	r2, 1	@ tmp159,
	str	r1, [r4, #1856]	@ pH264Ctx_4(D)->MaxPpsNum, pH264Ctx_4(D)->PrevSlice.pic_parameter_set_id
	mov	lr, #2	@ tmp166,
	str	r3, [r4, #1880]	@ tmp151, pH264Ctx_4(D)->PrevSlice.delta_pic_order_cnt
	mov	ip, #7	@ tmp170,
	str	r3, [r4, #1884]	@ tmp151, pH264Ctx_4(D)->PrevSlice.delta_pic_order_cnt
	mov	r0, #32	@ tmp173,
	str	r2, [r4, #1864]	@ tmp159, pH264Ctx_4(D)->PrevSlice.frame_num
	mov	r1, #3	@ tmp177,
	mvn	r2, #0	@ tmp180,
	mov	r3, #262144	@ tmp189,
	strb	r0, [r4, #1850]	@ tmp173, pH264Ctx_4(D)->PrevSlice.nal_unit_type
	mov	r0, r5	@, D.42828
	strb	lr, [r4, #1849]	@ tmp166, pH264Ctx_4(D)->PrevSlice.bottom_field_flag
	str	ip, [r4, #1860]	@ tmp170, pH264Ctx_4(D)->PrevSlice.nal_ref_idc
	str	r1, [r4, #1872]	@ tmp177, pH264Ctx_4(D)->PrevSlice.pic_oder_cnt_lsb
	str	r2, [r4, #1876]	@ tmp180, pH264Ctx_4(D)->PrevSlice.delta_pic_oder_cnt_bottom
	str	r3, [r4, #1888]	@ tmp189, pH264Ctx_4(D)->PrevSlice.first_mb_in_slice
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3560:
	mov	r3, #1	@ tmp146,
	mov	r0, r5	@, D.42828
	str	r3, [r6, #2172]	@ tmp146, pH264Ctx_4(D)->AllowStartDec
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	H264DEC_VDMPostProc, .-H264DEC_VDMPostProc
	.align	2
	.global	H264DEC_GetImageBuffer
	.type	H264DEC_GetImageBuffer, %function
H264DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #49152	@ tmp173, pH264Ctx,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r7, [r6, #2164]	@ D.42854, pH264Ctx_7(D)->TotalFsNum
	cmp	r7, #0	@ D.42854,
	beq	.L3573	@,
	add	lr, r0, #27136	@ ivtmp.3201, pH264Ctx,
	add	r8, r0, #26368	@ ivtmp.3188, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	lr, lr, #168	@ ivtmp.3201, ivtmp.3201,
	add	r8, r8, #64	@ ivtmp.3188, ivtmp.3188,
	add	r0, r0, #24576	@ tmp174, pH264Ctx,
	mov	r1, #0	@ i,
.L3571:
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ MEM[base: _49, offset: 1B], MEM[base: _49, offset: 1B]
	cmp	r3, #0	@ MEM[base: _49, offset: 1B],
	bne	.L3566	@,
	cmp	lr, #0	@ ivtmp.3201,
	beq	.L3567	@,
	ldr	r4, [r0, #2052]	@ D.42854, pH264Ctx_7(D)->DPB.used_size
	cmp	r4, #0	@ D.42854,
	beq	.L3567	@,
	ldr	r2, [r0, #1856]	@ pH264Ctx_7(D)->DPB.fs, pH264Ctx_7(D)->DPB.fs
	cmp	r2, lr	@ pH264Ctx_7(D)->DPB.fs, ivtmp.3201
	beq	.L3566	@,
	mov	r2, r8	@ ivtmp.3188, ivtmp.3188
	b	.L3568	@
.L3569:
	ldr	ip, [r2, #4]!	@ MEM[base: _2, offset: 0B], MEM[base: _2, offset: 0B]
	cmp	ip, lr	@ MEM[base: _2, offset: 0B], ivtmp.3201
	beq	.L3566	@,
.L3568:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.42854
	bne	.L3569	@,
.L3567:
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ ret,
	beq	.L3573	@,
	cmn	r0, #1	@ ret,
	bne	.L3588	@,
	add	r1, r5, #8	@, pH264Ctx,
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	b	.L3588	@
.L3566:
	add	r1, r1, #1	@ i, i,
	add	lr, lr, #560	@ ivtmp.3201, ivtmp.3201,
	cmp	r1, r7	@ i, D.42854
	bne	.L3571	@,
	add	r2, sp, #4	@,,
	mov	r1, sp	@,
	add	r0, r5, #8	@, pH264Ctx,
	bl	GetQueueImgNum	@
	add	r2, r5, #24576	@ tmp161, pH264Ctx,
	ldr	r0, [r6, #2164]	@ pH264Ctx_7(D)->TotalFsNum, pH264Ctx_7(D)->TotalFsNum
	movw	r3, #65534	@ D.42854,
	ldr	ip, [r2, #2052]	@ pH264Ctx_7(D)->DPB.used_size, pH264Ctx_7(D)->DPB.used_size
	movt	r3, 65535	@ D.42854,
	ldr	r2, [sp]	@ ReadImgNum, ReadImgNum
	ldr	r1, [sp, #4]	@ NewImgNum, NewImgNum
	rsb	r3, ip, r3	@ D.42854, pH264Ctx_7(D)->DPB.used_size, D.42854
	add	r3, r3, r0	@ D.42854, D.42854, pH264Ctx_7(D)->TotalFsNum
	add	r2, r2, r1	@ D.42858, ReadImgNum, NewImgNum
	cmp	r2, r3	@ D.42858, D.42854
	blt	.L3589	@,
.L3588:
	mov	r0, #0	@ D.42856,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3573:
	mov	r0, #1	@ D.42856,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3589:
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.42856,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
.LANCHOR1 = . + 0
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
	.type	SarTable.31292, %object
	.size	SarTable.31292, 136
SarTable.31292:
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
	.data
	.align	2
.LANCHOR0 = . + 0
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
	.ascii	"SH: first_mb_in_slice\000"
	.space	2
.LC1:
	.ascii	"SH: slice_type\000"
	.space	1
.LC2:
	.ascii	"SH: reordering_of_pic_nums_idc_l0\000"
	.space	2
.LC3:
	.ascii	"SH: abs_diff_pic_num_minus1_l0\000"
	.space	1
.LC4:
	.ascii	"SH: long_term_pic_idx_l0\000"
	.space	3
.LC5:
	.ascii	"SH: reordering_of_pic_nums_idc_l1\000"
	.space	2
.LC6:
	.ascii	"SH: abs_diff_pic_num_minus1_l1\000"
	.space	1
.LC7:
	.ascii	"SH: long_term_pic_idx_l1\000"
	.space	3
.LC8:
	.ascii	"SH: luma_log2_weight_denom\000"
	.space	1
.LC9:
	.ascii	"SH: chroma_log2_weight_denom\000"
	.space	3
.LC10:
	.ascii	"SH: luma_weight_l0\000"
	.space	1
.LC11:
	.ascii	"SH: luma_offset_l0\000"
	.space	1
.LC12:
	.ascii	"SH: chroma_weight_l0\000"
	.space	3
.LC13:
	.ascii	"SH: chroma_offset_l0\000"
	.space	3
.LC14:
	.ascii	"SH: luma_weight_l1\000"
	.space	1
.LC15:
	.ascii	"SH: luma_offset_l1\000"
	.space	1
.LC16:
	.ascii	"SH: chroma_weight_l1\000"
	.space	3
.LC17:
	.ascii	"SH: chroma_offset_l1\000"
	.space	3
.LC18:
	.ascii	"SH: memory_management_control_operation\000"
.LC19:
	.ascii	"SH: difference_of_pic_nums_minus1\000"
	.space	2
.LC20:
	.ascii	"SH: long_term_pic_num\000"
	.space	2
.LC21:
	.ascii	"SH: long_term_frame_idx\000"
.LC22:
	.ascii	"SH: max_long_term_frame_idx_plus1\000"
	.space	2
.LC23:
	.ascii	"SH: pic_parameter_set_id\000"
	.space	3
.LC24:
	.ascii	"SH: idr_pic_id\000"
	.space	1
.LC25:
	.ascii	"SH: delta_pic_order_cnt_bottom\000"
	.space	1
.LC26:
	.ascii	"SH: delta_pic_order_cnt[0]\000"
	.space	1
.LC27:
	.ascii	"SH: delta_pic_order_cnt[1]\000"
	.space	1
.LC28:
	.ascii	"SH: redundant_pic_cnt\000"
	.space	2
.LC29:
	.ascii	"SH: num_ref_idx_l0_active_minus1\000"
	.space	3
.LC30:
	.ascii	"SH: num_ref_idx_l1_active_minus1\000"
	.space	3
.LC31:
	.ascii	"SH: slice_qp_delta\000"
	.space	1
.LC32:
	.ascii	"SH: cabac_init_idc\000"
	.space	1
.LC33:
	.ascii	"SH: disable_deblocking_filter_idc\000"
	.space	2
.LC34:
	.ascii	"SH: slice_alpha_c0_offset_div2\000"
	.space	1
.LC35:
	.ascii	"SH: slice_beta_offset_div2\000"
	.space	1
.LC36:
	.ascii	"   : delta_sl   \000"
	.space	3
.LC37:
	.ascii	"PPS: num_slice_groups_minus1\000"
	.space	3
.LC38:
	.ascii	"PPS: num_ref_idx_l0_active_minus1\000"
	.space	2
.LC39:
	.ascii	"PPS: num_ref_idx_l1_active_minus1\000"
	.space	2
.LC40:
	.ascii	"PPS: pic_init_qp_minus26\000"
	.space	3
.LC41:
	.ascii	"PPS: pic_init_qs_minus26\000"
	.space	3
.LC42:
	.ascii	"PPS: chroma_qp_index_offset\000"
.LC43:
	.ascii	"PPS: second_chroma_qp_index_offset\000"
	.space	1
.LC44:
	.ascii	"PPS: pic_parameter_set_id\000"
	.space	2
.LC45:
	.ascii	"PPS: seq_parameter_set_id\000"
	.space	2
.LC46:
	.ascii	"VUI: chroma_sample_loc_type_top_field\000"
	.space	2
.LC47:
	.ascii	"VUI: chroma_sample_loc_type_bottom_field\000"
	.space	3
.LC48:
	.ascii	"VUI: cpb_cnt_minus1\000"
.LC49:
	.ascii	"VUI: bit_rate_value_minus1\000"
	.space	1
.LC50:
	.ascii	"VUI: cpb_size_value_minus1\000"
	.space	1
.LC51:
	.ascii	"VUI: max_bytes_per_pic_denom\000"
	.space	3
.LC52:
	.ascii	"VUI: max_bits_per_mb_denom\000"
	.space	1
.LC53:
	.ascii	"VUI: log2_max_mv_length_horizontal\000"
	.space	1
.LC54:
	.ascii	"VUI: log2_max_mv_length_vertical\000"
	.space	3
.LC55:
	.ascii	"VUI: num_reorder_frames\000"
.LC56:
	.ascii	"VUI: max_dec_frame_buffering\000"
	.space	3
.LC57:
	.ascii	"SPS: chroma_format_idc\000"
	.space	1
.LC58:
	.ascii	"SPS: bit_depth_luma_minus8\000"
	.space	1
.LC59:
	.ascii	"SPS: bit_depth_chroma_minus8\000"
	.space	3
.LC60:
	.ascii	"SPS: log2_max_frame_num_minus4\000"
	.space	1
.LC61:
	.ascii	"SPS: pic_order_cnt_type\000"
.LC62:
	.ascii	"SPS: log2_max_pic_order_cnt_lsb_minus4\000"
	.space	1
.LC63:
	.ascii	"SPS: num_ref_frames\000"
.LC64:
	.ascii	"SPS: offset_for_non_ref_pic\000"
.LC65:
	.ascii	"SPS: offset_for_top_to_bottom_field\000"
.LC66:
	.ascii	"SPS: num_ref_frames_in_pic_order_cnt_cycle\000"
	.space	1
.LC67:
	.ascii	"SPS: offset_for_ref_frame[i]\000"
	.space	3
.LC68:
	.ascii	"SPS: pic_width_in_mbs_minus1\000"
	.space	3
.LC69:
	.ascii	"SPS: pic_height_in_map_units_minus1\000"
.LC70:
	.ascii	"SPS: frame_cropping_rect_left_offset\000"
	.space	3
.LC71:
	.ascii	"SPS: frame_cropping_rect_right_offset\000"
	.space	2
.LC72:
	.ascii	"SPS: frame_cropping_rect_top_offset\000"
.LC73:
	.ascii	"SPS: frame_cropping_rect_bottom_offset\000"
	.space	1
.LC74:
	.ascii	"SPS: seq_parameter_set_id\000"
	.space	2
.LC75:
	.ascii	"SEI: frame_packing_arrangement_id\000"
	.space	2
.LC76:
	.ascii	"SEI: frame_packing_arrangement_repetition_period\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
.LANCHOR3 = . + 8184
	.type	pps_tmp.31212, %object
	.size	pps_tmp.31212, 2208
pps_tmp.31212:
	.space	2208
	.type	sps_tmp.31346, %object
	.size	sps_tmp.31346, 4000
sps_tmp.31346:
	.space	4000
	.type	TmpBuf, %object
	.size	TmpBuf, 68
TmpBuf:
	.space	68
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
