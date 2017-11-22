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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(h264)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.h264.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/h264.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/h264.o
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
	.global	IsSTRefFlg
	.type	IsSTRefFlg, %function
IsSTRefFlg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]	@ *s_2(D), *s_2(D)
	bic	r0, r0, #-16777216	@ D.43057, *s_2(D),
	bic	r0, r0, #255	@ D.43057, D.43057,
	sub	r0, r0, #65536	@, D.43057,
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
	bic	r0, r0, #-16777216	@ D.43062, *s_2(D),
	bic	r0, r0, #255	@ D.43062, D.43062,
	sub	r0, r0, #256	@, D.43062,
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
	ldr	r2, [r2, #12]	@ D.43069, _4->pic_num
	ldr	r3, [r3, #12]	@ D.43069, _7->pic_num
	cmp	r2, r3	@ D.43069, D.43069
	blt	.L5	@,
	mvngt	r0, #0	@ D.43067,
	movle	r0, #0	@ D.43067,
	bx	lr	@
.L5:
	mov	r0, #1	@ D.43067,
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
	ldr	r2, [r2, #8]	@ D.43075, _4->long_term_pic_num
	ldr	r3, [r3, #8]	@ D.43075, _7->long_term_pic_num
	cmp	r2, r3	@ D.43075, D.43075
	blt	.L9	@,
	movgt	r0, #1	@ D.43073,
	movle	r0, #0	@ D.43073,
	bx	lr	@
.L9:
	mvn	r0, #0	@ D.43073,
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
	ldr	r2, [r2, #516]	@ D.43081, _4->frame_num_wrap
	ldr	r3, [r3, #516]	@ D.43081, _7->frame_num_wrap
	cmp	r2, r3	@ D.43081, D.43081
	blt	.L12	@,
	mvngt	r0, #0	@ D.43079,
	movle	r0, #0	@ D.43079,
	bx	lr	@
.L12:
	mov	r0, #1	@ D.43079,
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
	ldr	r2, [r2, #520]	@ D.43087, _4->long_term_frame_idx
	ldr	r3, [r3, #520]	@ D.43087, _7->long_term_frame_idx
	cmp	r2, r3	@ D.43087, D.43087
	bcc	.L15	@,
	movhi	r0, #1	@ D.43085,
	movls	r0, #0	@ D.43085,
	bx	lr	@
.L15:
	mvn	r0, #0	@ D.43085,
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
	ldr	r2, [r2, #16]	@ D.43093, _4->poc
	ldr	r3, [r3, #16]	@ D.43093, _7->poc
	cmp	r2, r3	@ D.43093, D.43093
	blt	.L18	@,
	movgt	r0, #1	@ D.43091,
	movle	r0, #0	@ D.43091,
	bx	lr	@
.L18:
	mvn	r0, #0	@ D.43091,
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
	ldr	r2, [r2, #16]	@ D.43099, _4->poc
	ldr	r3, [r3, #16]	@ D.43099, _7->poc
	cmp	r2, r3	@ D.43099, D.43099
	blt	.L21	@,
	mvngt	r0, #0	@ D.43097,
	movle	r0, #0	@ D.43097,
	bx	lr	@
.L21:
	mov	r0, #1	@ D.43097,
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
	ldr	r2, [r2, #524]	@ D.43105, _4->poc
	ldr	r3, [r3, #524]	@ D.43105, _7->poc
	cmp	r2, r3	@ D.43105, D.43105
	blt	.L24	@,
	movgt	r0, #1	@ D.43103,
	movle	r0, #0	@ D.43103,
	bx	lr	@
.L24:
	mvn	r0, #0	@ D.43103,
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
	ldr	r2, [r2, #524]	@ D.43111, _4->poc
	ldr	r3, [r3, #524]	@ D.43111, _7->poc
	cmp	r2, r3	@ D.43111, D.43111
	blt	.L27	@,
	mvngt	r0, #0	@ D.43109,
	movle	r0, #0	@ D.43109,
	bx	lr	@
.L27:
	mov	r0, #1	@ D.43109,
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
	add	r2, r2, lr, lsr #1	@ D.43115, pH264Ctx_1(D)->DPB.size, pH264Ctx_1(D)->PicOutCounter,
	add	r0, r2, #1	@ D.43115, D.43115,
	mov	r3, r3, lsr #1	@ D.43115, pH264Ctx_1(D)->NewPicCounter,
	cmp	r3, r0	@ D.43115, D.43115
	movcc	r3, #0	@ tmp152,
	strcc	r3, [r1, #84]	@ tmp152, p_image_11(D)->u32RepeatCnt
	ldrcc	pc, [sp], #4	@
	sub	r3, r3, #1	@ D.43115, D.43115,
	rsb	r3, r2, r3	@ D.43115, D.43115, D.43115
	cmp	r3, #1	@ D.43115,
	movhi	r3, #2	@ tmp138,
	movls	r3, #1	@ tmp145,
	strhi	r3, [r1, #84]	@ tmp138, p_image_11(D)->u32RepeatCnt
	strls	r3, [r1, #84]	@ tmp145, p_image_11(D)->u32RepeatCnt
	ldrhi	r3, [ip, #3712]	@ pH264Ctx_1(D)->PicOutCounter, pH264Ctx_1(D)->PicOutCounter
	ldrls	r3, [ip, #3712]	@ pH264Ctx_1(D)->PicOutCounter, pH264Ctx_1(D)->PicOutCounter
	addhi	r3, r3, #4	@ D.43115, pH264Ctx_1(D)->PicOutCounter,
	addls	r3, r3, #2	@ D.43115, pH264Ctx_1(D)->PicOutCounter,
	str	r3, [ip, #3712]	@ D.43115, pH264Ctx_1(D)->PicOutCounter
	ldr	pc, [sp], #4	@
	.fnend
	.size	SetFrmRepeatCount.part.1, .-SetFrmRepeatCount.part.1
	.align	2
	.type	DumpList.part.5, %function
DumpList.part.5:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #20480	@ tmp207, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r4, #244]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_3(D)->CurrSlice.listXsize,
	movne	r5, #0	@ i,
	beq	.L74	@,
.L38:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #244]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ pH264Ctx_3(D)->CurrSlice.listXsize, i
	bhi	.L38	@,
	ldr	r2, [r4, #248]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	cmp	r2, #0	@ pH264Ctx_3(D)->CurrSlice.listXsize,
	beq	.L75	@,
.L36:
	mov	r5, #0	@ i,
.L40:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #248]	@ D.43152, pH264Ctx_3(D)->CurrSlice.listXsize
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ D.43152, i
	bhi	.L40	@,
	ldr	r2, [r4, #244]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	cmp	r2, #0	@ pH264Ctx_3(D)->CurrSlice.listXsize,
	bne	.L58	@,
	cmp	r3, #0	@ D.43152,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L76:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #248]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_3(D)->CurrSlice.listXsize,
	addne	r6, r6, #27136	@ ivtmp.346, pH264Ctx,
	movne	r5, #0	@ i,
	addne	r6, r6, #28	@ ivtmp.346, ivtmp.346,
	beq	.L57	@,
.L56:
	ldr	r3, [r6, #4]!	@ MEM[base: _60, offset: 0B], MEM[base: _60, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _15->structure, _15->structure
	cmp	r3, #1	@ _15->structure,
	beq	.L55	@,
	bcc	.L55	@,
	cmp	r3, #2	@ _15->structure,
	bne	.L52	@,
.L55:
	bl	vfmw_dprint_nothing	@
.L52:
	ldr	r3, [r4, #248]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	add	r5, r5, #1	@ i, i,
	cmp	r5, r3	@ i, pH264Ctx_3(D)->CurrSlice.listXsize
	bcc	.L56	@,
.L57:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L75:
	cmp	r3, #0	@ pH264Ctx_3(D)->CurrSlice.listXsize,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L58:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #244]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_3(D)->CurrSlice.listXsize,
	addne	r7, r6, #26880	@ ivtmp.358, pH264Ctx,
	movne	r5, #0	@ i,
	addne	r7, r7, #152	@ ivtmp.358, ivtmp.358,
	beq	.L48	@,
.L47:
	ldr	r3, [r7, #4]!	@ MEM[base: _22, offset: 0B], MEM[base: _22, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _9->structure, _9->structure
	cmp	r3, #1	@ _9->structure,
	beq	.L46	@,
	bcc	.L46	@,
	cmp	r3, #2	@ _9->structure,
	bne	.L43	@,
.L46:
	bl	vfmw_dprint_nothing	@
.L43:
	ldr	r3, [r4, #244]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	add	r5, r5, #1	@ i, i,
	cmp	r5, r3	@ i, pH264Ctx_3(D)->CurrSlice.listXsize
	bcc	.L47	@,
.L48:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #248]	@ D.43152, pH264Ctx_3(D)->CurrSlice.listXsize
	cmp	r3, #0	@ D.43152,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	b	.L76	@
.L74:
	ldr	r3, [r4, #248]	@ pH264Ctx_3(D)->CurrSlice.listXsize, pH264Ctx_3(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_3(D)->CurrSlice.listXsize,
	bne	.L36	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	DumpList.part.5, .-DumpList.part.5
	.align	2
	.type	CombinePacket.part.9, %function
CombinePacket.part.9:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	mov	r5, #0	@ tmp147,
	ldr	r2, [r3, #12]	@ D.43159, _2->stream[0].bitstream_length
	ldr	r0, [r3, #36]	@ _2->stream[1].streamBuffer, _2->stream[1].streamBuffer
	ldr	r1, [r3, #8]	@, _2->stream[0].streamBuffer
	rsb	r0, r2, r0	@,, _2->stream[1].streamBuffer
	bl	memcpy	@
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	mov	r1, #1	@ tmp157,
	ldr	r2, [r3, #60]	@ _8->stream[1].StreamID, _8->stream[1].StreamID
	ldr	r6, [r3, #32]	@ StreamId, _8->stream[0].StreamID
	str	r2, [r3, #32]	@ _8->stream[1].StreamID, _8->stream[0].StreamID
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	str	r5, [r3, #24]	@ tmp147, _11->stream[0].bitsoffset
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	ldr	r0, [r3, #12]	@ _12->stream[0].bitstream_length, _12->stream[0].bitstream_length
	ldr	r2, [r3, #36]	@ _12->stream[1].streamBuffer, _12->stream[1].streamBuffer
	rsb	r2, r0, r2	@ D.43158, _12->stream[0].bitstream_length, _12->stream[1].streamBuffer
	str	r2, [r3, #8]	@ D.43158, _12->stream[0].streamBuffer
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	ldr	r0, [r3, #12]	@ _17->stream[0].bitstream_length, _17->stream[0].bitstream_length
	ldr	r2, [r3, #44]	@ _17->stream[1].stream_phy_addr, _17->stream[1].stream_phy_addr
	rsb	r2, r0, r2	@ D.43159, _17->stream[0].bitstream_length, _17->stream[1].stream_phy_addr
	str	r2, [r3, #16]	@ D.43159, _17->stream[0].stream_phy_addr
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	ldr	r2, [r3, #12]	@ _21->stream[0].bitstream_length, _21->stream[0].bitstream_length
	ldr	r0, [r3, #40]	@ _21->stream[1].bitstream_length, _21->stream[1].bitstream_length
	add	r2, r2, r0	@ D.43159, _21->stream[0].bitstream_length, _21->stream[1].bitstream_length
	str	r2, [r3, #12]	@ D.43159, _21->stream[0].bitstream_length
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	str	r1, [r3, #68]	@ tmp157, _25->nal_segment
	bl	vfmw_dprint_nothing	@
	add	r3, r4, #49152	@ tmp159, pH264Ctx,
	mov	r1, r6	@, StreamId
	ldr	r0, [r3, #3688]	@, pH264Ctx_1(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	str	r5, [r3, #36]	@ tmp147, _27->stream[1].streamBuffer
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	str	r5, [r3, #52]	@ tmp147, _28->stream[1].bitsoffset
	ldr	r3, [r4, #368]	@ D.43157, pH264Ctx_1(D)->pCurrNal
	str	r5, [r3, #40]	@ tmp147, _29->stream[1].bitstream_length
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	CombinePacket.part.9, .-CombinePacket.part.9
	.align	2
	.global	ue_v
	.type	ue_v, %function
ue_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #13504	@ D.43168, pH264Ctx,
	add	r5, r5, #24	@ D.43168, D.43168,
	mov	r1, #32	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	mov	r0, r5	@, D.43168
	bl	BsShow	@
	mov	r7, r0	@ D.43169,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r4, r0	@ zeros,
	bls	.L84	@,
	cmp	r0, #31	@ zeros,
	bls	.L85	@,
	add	r2, r6, #49152	@ tmp138, pH264Ctx,
	mvn	r7, #0	@ INFO,
	mov	r5, #32	@ NumBits,
	mov	r3, #1	@ tmp139,
	str	r3, [r2, #3628]	@ tmp139, pH264Ctx_4(D)->SeErrFlg
.L81:
	ldr	r0, [r6, #368]	@ D.43171, pH264Ctx_4(D)->pCurrNal
	ldr	r2, [r0, #64]	@ _32->nal_bitoffset, _32->nal_bitoffset
	add	r3, r2, r5	@ D.43170, _32->nal_bitoffset, NumBits
	str	r3, [r0, #64]	@ D.43170, _32->nal_bitoffset
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, INFO
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L84:
	mov	r4, r0, asl #1	@ D.43170, zeros,
	mov	r0, r5	@, D.43168
	add	r5, r4, #1	@ NumBits, D.43170,
	rsb	r4, r4, #31	@ D.43170, D.43170,
	mov	r4, r7, lsr r4	@ D.43170, D.43169,
	mov	r1, r5	@, NumBits
	sub	r7, r4, #1	@ INFO, D.43170,
	bl	BsSkip	@
	b	.L81	@
.L85:
	add	r7, r0, #1	@ D.43169, zeros,
	mov	r1, r0	@, zeros
	mov	r0, r5	@, D.43168
	bl	BsSkip	@
	mov	r1, r7	@, D.43169
	mov	r0, r5	@, D.43168
	bl	BsShow	@
	mov	r1, r7	@, D.43169
	sub	r7, r0, #1	@ INFO,,
	mov	r0, r5	@, D.43168
	bl	BsSkip	@
	mov	r3, r4, asl #1	@ D.43170, zeros,
	add	r5, r3, #1	@ NumBits, D.43170,
	b	.L81	@
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
	add	r5, r0, #13504	@ D.43174, pH264Ctx,
	add	r5, r5, #24	@ D.43174, D.43174,
	mov	r1, #32	@,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r0, r5	@, D.43174
	bl	BsShow	@
	mov	r6, r0	@ D.43175,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r4, r0	@ zeros,
	bhi	.L87	@,
	mov	r4, r0, asl #1	@ D.43176, zeros,
	mov	r0, r5	@, D.43174
	rsb	r5, r4, #31	@ D.43176, D.43176,
	add	r4, r4, #1	@ NumBits, D.43176,
	mov	r6, r6, lsr r5	@ D.43176, D.43175,
	and	r3, r6, #1	@ D.43177, D.43176,
	mov	r1, r4	@, NumBits
	rsb	r5, r3, #0	@ D.43179, D.43177
	eor	r6, r5, r6, lsr #1	@ D.43179, D.43179, D.43176,
	add	r5, r6, r3	@ INFO, D.43179, D.43177
	bl	BsSkip	@
.L88:
	ldr	r2, [r7, #368]	@ D.43178, pH264Ctx_6(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _37->nal_bitoffset, _37->nal_bitoffset
	add	r4, r3, r4	@ D.43176, _37->nal_bitoffset, NumBits
	str	r4, [r2, #64]	@ D.43176, _37->nal_bitoffset
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, INFO
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L87:
	cmp	r0, #31	@ zeros,
	bls	.L91	@,
	add	r3, r7, #49152	@ tmp153, pH264Ctx,
	mov	r2, #1	@ tmp154,
	mvn	r5, #-2147483648	@ INFO,
	mov	r4, #32	@ NumBits,
	str	r2, [r3, #3628]	@ tmp154, pH264Ctx_6(D)->SeErrFlg
	b	.L88	@
.L91:
	mov	r1, r0	@, zeros
	mov	r0, r5	@, D.43174
	bl	BsSkip	@
	mov	r1, r4	@, zeros
	mov	r0, r5	@, D.43174
	mov	r4, r4, asl #1	@ D.43176, zeros,
	bl	BsGet	@
	mov	r1, #1	@,
	add	r4, r4, #1	@ NumBits, D.43176,
	mov	r6, r0	@ INFO,
	mov	r0, r5	@, D.43174
	bl	BsGet	@
	and	r0, r0, #1	@ D.43177,,
	rsb	r5, r0, #0	@ D.43179, D.43177
	eor	r6, r6, r5	@ D.43179, INFO, D.43179
	add	r5, r6, r0	@ INFO, D.43179, D.43177
	b	.L88	@
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
	mov	r6, r1	@ LenInBits, LenInBits
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.43184, pH264Ctx_1(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _8->nal_bitoffset, _8->nal_bitoffset
	add	r1, r3, r6	@ D.43185, _8->nal_bitoffset, LenInBits
	str	r1, [r2, #64]	@ D.43185, _8->nal_bitoffset
	mov	r5, r0	@ INFO,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, INFO
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r1, #1	@,
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r2, [r4, #368]	@ D.43190, pH264Ctx_1(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _7->nal_bitoffset, _7->nal_bitoffset
	add	r3, r3, #1	@ D.43191, _7->nal_bitoffset,
	str	r3, [r2, #64]	@ D.43191, _7->nal_bitoffset
	mov	r5, r0	@ D.43189,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, D.43189
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	ldr	r3, [r5, #2052]	@ D.43207, pH264Ctx_10(D)->DPB.used_size
	ldr	ip, [r5, #2048]	@ D.43207, pH264Ctx_10(D)->DPB.size
	cmp	r3, ip	@ D.43207, D.43207
	strhi	ip, [r5, #2052]	@ D.43207, pH264Ctx_10(D)->DPB.used_size
	movhi	r3, ip	@ D.43207, D.43207
	cmp	r3, #0	@ D.43207,
	ldmeqfd	sp!, {r4, r5, pc}	@
	add	r0, r0, #26368	@ ivtmp.385, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #60	@ ivtmp.385, ivtmp.385,
.L100:
	ldr	ip, [r0, #4]!	@ D.43209, MEM[base: _1, offset: 0B]
	ldr	r4, [r1]	@ *poc_8(D), *poc_8(D)
	ldr	lr, [ip, #524]	@ D.43208, _16->poc
	cmp	r4, lr	@ *poc_8(D), D.43208
	ble	.L99	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ _16->is_in_dpb, _16->is_in_dpb
	cmp	ip, #0	@ _16->is_in_dpb,
	strne	lr, [r1]	@ D.43208, *poc_8(D)
	strne	r3, [r2]	@ i, *pos_6(D)
.L99:
	ldr	ip, [r5, #2052]	@ pH264Ctx_10(D)->DPB.used_size, pH264Ctx_10(D)->DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	ip, r3	@ pH264Ctx_10(D)->DPB.used_size, i
	bhi	.L100	@,
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
	ldr	r3, [r5, #2048]	@ D.43229, pH264Ctx_8(D)->DPB.size
	ldr	ip, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	ip, r3	@ pH264Ctx_8(D)->DPB.used_size, D.43229
	strhi	r3, [r5, #2052]	@ D.43229, pH264Ctx_8(D)->DPB.used_size
	ldr	r3, [r5, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	ldr	r4, [r3, #524]	@ D.43233, _12->poc
	str	r4, [r1]	@ D.43233, *poc_14(D)
	ldr	r3, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	ldmeqfd	sp!, {r4, r5, pc}	@
	add	r0, r0, #26368	@ ivtmp.401, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #60	@ ivtmp.401, ivtmp.401,
.L112:
	ldr	ip, [r0, #4]!	@ D.43230, MEM[base: _31, offset: 0B]
	ldr	lr, [ip, #524]	@ D.43231, _18->poc
	cmp	lr, r4	@ D.43231, D.43233
	ble	.L110	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ _18->is_in_dpb, _18->is_in_dpb
	cmp	ip, #0	@ _18->is_in_dpb,
	strne	lr, [r1]	@ D.43231, *poc_14(D)
	strne	r3, [r2]	@ i, *pos_6(D)
.L110:
	ldr	ip, [r5, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	ip, r3	@ pH264Ctx_8(D)->DPB.used_size, i
	ldmlsfd	sp!, {r4, r5, pc}	@
	ldr	r4, [r1]	@ D.43233, *poc_14(D)
	b	.L112	@
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.43244, pFS_3(D)->is_reference
	cmp	r3, #3	@ D.43244,
	beq	.L133	@,
	tst	r3, #1	@ D.43244,
	bne	.L134	@,
.L122:
	and	r3, r3, #2	@ tmp134, D.43244,
	ands	r3, r3, #255	@ tmp136, tmp134,
	beq	.L126	@,
.L123:
	ldr	r0, [r0, #472]	@ *pFS_3(D), *pFS_3(D)
	bic	r0, r0, #-16777216	@ D.43245, *pFS_3(D),
	bic	r0, r0, #255	@ D.43245, D.43245,
	sub	r0, r0, #65536	@ D.43243, D.43245,
	clz	r0, r0	@ D.43243, D.43243
	mov	r0, r0, lsr #5	@ D.43243, D.43243,
	bx	lr	@
.L126:
	mov	r0, r3	@ D.43243, tmp136
	bx	lr	@
.L134:
	ldr	r2, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r2, r2, #-16777216	@ D.43245, *pFS_3(D),
	bic	r2, r2, #255	@ D.43245, D.43245,
	cmp	r2, #65536	@ D.43245,
	bne	.L122	@,
.L127:
	mov	r0, #1	@ D.43243,
	bx	lr	@
.L133:
	ldr	r3, [r0, #400]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.43245, *pFS_3(D),
	bic	r3, r3, #255	@ D.43245, D.43245,
	cmp	r3, #65536	@ D.43245,
	beq	.L127	@,
	ldr	r3, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.43245, *pFS_3(D),
	bic	r3, r3, #255	@ D.43245, D.43245,
	cmp	r3, #65536	@ D.43245,
	bne	.L123	@,
	b	.L127	@
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
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.43250, pFS_3(D)->is_reference
	cmp	r3, #3	@ D.43250,
	beq	.L150	@,
	tst	r3, #1	@ D.43250,
	bne	.L151	@,
.L139:
	and	r3, r3, #2	@ tmp134, D.43250,
	ands	r3, r3, #255	@ tmp136, tmp134,
	beq	.L143	@,
.L140:
	ldr	r0, [r0, #472]	@ *pFS_3(D), *pFS_3(D)
	bic	r0, r0, #-16777216	@ D.43251, *pFS_3(D),
	bic	r0, r0, #255	@ D.43251, D.43251,
	sub	r0, r0, #256	@ D.43249, D.43251,
	clz	r0, r0	@ D.43249, D.43249
	mov	r0, r0, lsr #5	@ D.43249, D.43249,
	bx	lr	@
.L143:
	mov	r0, r3	@ D.43249, tmp136
	bx	lr	@
.L151:
	ldr	r2, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r2, r2, #-16777216	@ D.43251, *pFS_3(D),
	bic	r2, r2, #255	@ D.43251, D.43251,
	cmp	r2, #256	@ D.43251,
	bne	.L139	@,
.L144:
	mov	r0, #1	@ D.43249,
	bx	lr	@
.L150:
	ldr	r3, [r0, #400]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.43251, *pFS_3(D),
	bic	r3, r3, #255	@ D.43251, D.43251,
	cmp	r3, #256	@ D.43251,
	beq	.L144	@,
	ldr	r3, [r0, #436]	@ *pFS_3(D), *pFS_3(D)
	bic	r3, r3, #-16777216	@ D.43251, *pFS_3(D),
	bic	r3, r3, #255	@ D.43251, D.43251,
	cmp	r3, #256	@ D.43251,
	bne	.L140	@,
	b	.L144	@
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
	ldr	r9, [r10, #2052]	@ D.43281, pH264Ctx_9(D)->DPB.used_size
	cmp	r9, #0	@ D.43281,
	beq	.L159	@,
	add	r8, r0, #26368	@ ivtmp.434, pH264Ctx,
	mov	r4, #0	@ j,
	add	r8, r8, #60	@ ivtmp.434, ivtmp.434,
	mov	r5, r4	@ i, j
.L155:
	ldr	r7, [r8, #4]!	@ D.43280, MEM[base: _36, offset: 0B]
	add	r5, r5, #1	@ i, i,
	mov	r0, r7	@, D.43280
	bl	LongTermRefFlg	@
	add	r3, r4, #6592	@ tmp130, j,
	add	r3, r3, #48	@ tmp130, tmp130,
	cmp	r0, #0	@,
	strne	r7, [r6, r3, asl #2]	@ D.43280, pH264Ctx_9(D)->DPB.fs_ltref
	addne	r4, r4, #1	@ j, j,
	cmp	r5, r9	@ i, D.43281
	bne	.L155	@,
.L153:
	ldr	r3, [r10, #2048]	@ D.43281, pH264Ctx_9(D)->DPB.size
	str	r4, [r10, #2060]	@ j, pH264Ctx_9(D)->DPB.ltref_frames_in_buffer
	cmp	r3, r4	@ D.43281, j
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r0, r4, #6592	@ D.43282, j,
	mov	r2, #0	@ tmp140,
	add	r0, r0, #47	@ D.43282, D.43282,
	add	r0, r6, r0, lsl #2	@ ivtmp.423, pH264Ctx, D.43282,
.L157:
	add	r4, r4, #1	@ j, j,
	str	r2, [r0, #4]!	@ tmp140, MEM[base: _1, offset: 0B]
	cmp	r4, r3	@ j, D.43281
	bne	.L157	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L159:
	mov	r4, r9	@ j, D.43281
	b	.L153	@
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
	ldr	r9, [r10, #2052]	@ D.43312, pH264Ctx_9(D)->DPB.used_size
	cmp	r9, #0	@ D.43312,
	beq	.L173	@,
	add	r8, r0, #26368	@ ivtmp.459, pH264Ctx,
	mov	r4, #0	@ j,
	add	r8, r8, #60	@ ivtmp.459, ivtmp.459,
	mov	r5, r4	@ i, j
.L169:
	ldr	r7, [r8, #4]!	@ D.43311, MEM[base: _36, offset: 0B]
	add	r5, r5, #1	@ i, i,
	mov	r0, r7	@, D.43311
	bl	ShortTermRefFlg	@
	add	r3, r4, #6592	@ tmp130, j,
	add	r3, r3, #32	@ tmp130, tmp130,
	cmp	r0, #0	@,
	strne	r7, [r6, r3, asl #2]	@ D.43311, pH264Ctx_9(D)->DPB.fs_ref
	addne	r4, r4, #1	@ j, j,
	cmp	r5, r9	@ i, D.43312
	bne	.L169	@,
.L167:
	ldr	r3, [r10, #2048]	@ D.43312, pH264Ctx_9(D)->DPB.size
	str	r4, [r10, #2056]	@ j, pH264Ctx_9(D)->DPB.ref_frames_in_buffer
	cmp	r3, r4	@ D.43312, j
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r0, r4, #6592	@ D.43313, j,
	mov	r2, #0	@ tmp140,
	add	r0, r0, #31	@ D.43313, D.43313,
	add	r0, r6, r0, lsl #2	@ ivtmp.448, pH264Ctx, D.43313,
.L171:
	add	r4, r4, #1	@ j, j,
	str	r2, [r0, #4]!	@ tmp140, MEM[base: _1, offset: 0B]
	cmp	r4, r3	@ j, D.43312
	bne	.L171	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L173:
	mov	r4, r9	@ j, D.43312
	b	.L167	@
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
	mvn	r0, r1	@ D.43318, difference_of_pic_nums_minus1
	movne	r3, r3, asl #1	@ D.43318, pCurrPic_3(D)->frame_num,
	addne	r3, r3, #1	@ CurrPicNum, D.43318,
	add	r0, r0, r3	@, D.43318, CurrPicNum
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
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ D.43321, pFrameStore_5(D)->is_used
	tst	r3, #1	@ D.43321,
	beq	.L184	@,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ pFrameStore_5(D)->is_reference, pFrameStore_5(D)->is_reference
	mov	ip, #0	@ tmp128,
	strb	ip, [r1, #437]	@ tmp128, pFrameStore_5(D)->top_field.is_long_term
	and	r2, r2, #2	@ tmp126, pFrameStore_5(D)->is_reference,
	strb	ip, [r1, #438]	@ tmp128, pFrameStore_5(D)->top_field.is_short_term
	strb	r2, [r1, #2]	@ tmp126, pFrameStore_5(D)->is_reference
.L184:
	tst	r3, #2	@ D.43321,
	beq	.L185	@,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ pFrameStore_5(D)->is_reference, pFrameStore_5(D)->is_reference
	mov	ip, #0	@ tmp139,
	strb	ip, [r1, #473]	@ tmp139, pFrameStore_5(D)->bottom_field.is_long_term
	and	r2, r2, #1	@ tmp137, pFrameStore_5(D)->is_reference,
	strb	ip, [r1, #474]	@ tmp139, pFrameStore_5(D)->bottom_field.is_short_term
	strb	r2, [r1, #2]	@ tmp137, pFrameStore_5(D)->is_reference
.L185:
	cmp	r3, #3	@ D.43321,
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
	ldr	r7, [r3, #2052]	@ D.43338, pH264Ctx_1(D)->DPB.used_size
	cmp	r7, #0	@ D.43338,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r6, r0, #26368	@ ivtmp.476, pH264Ctx,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	add	r6, r6, #60	@ ivtmp.476, ivtmp.476,
	mov	r4, #0	@ i,
.L196:
	ldr	r5, [r6, #4]!	@ D.43336, MEM[base: _17, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ _3->is_reference, _3->is_reference
	mov	r0, r5	@, D.43336
	cmp	r3, #0	@ _3->is_reference,
	beq	.L195	@,
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L208	@,
.L195:
	cmp	r4, r7	@ i, D.43338
	bne	.L196	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L208:
	mov	r0, r8	@, pH264Ctx
	mov	r1, r5	@, D.43336
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
	ldr	r4, [r3, #2060]	@ D.43355, pH264Ctx_4(D)->DPB.ltref_frames_in_buffer
	cmp	r4, #0	@ D.43355,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	ip, [r3, #1984]	@ D.43354, pH264Ctx_4(D)->DPB.fs_ltref
	ldr	r3, [ip, #520]	@ _14->long_term_frame_idx, _14->long_term_frame_idx
	cmp	r3, r1	@ _14->long_term_frame_idx, long_term_frame_idx
	addne	r2, r0, #26368	@ ivtmp.489, pH264Ctx,
	movne	r3, #0	@ i,
	addne	r2, r2, #192	@ ivtmp.489, ivtmp.489,
	bne	.L213	@,
	b	.L211	@
.L214:
	ldr	ip, [r2, #4]!	@ D.43354, MEM[base: _19, offset: 0B]
	ldr	lr, [ip, #520]	@ _6->long_term_frame_idx, _6->long_term_frame_idx
	cmp	lr, r1	@ _6->long_term_frame_idx, long_term_frame_idx
	beq	.L211	@,
.L213:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.43355
	bne	.L214	@,
	ldmfd	sp!, {r4, pc}	@
.L211:
	mov	r1, ip	@, D.43354
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
	ldr	r6, [ip, #2060]	@ D.43372, pH264Ctx_4(D)->DPB.ltref_frames_in_buffer
	cmp	r6, #0	@ D.43372,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	add	r4, r0, #26368	@ ivtmp.502, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #188	@ ivtmp.502, ivtmp.502,
	b	.L225	@
.L223:
	cmp	ip, r6	@ i, D.43372
	beq	.L240	@,
.L225:
	ldr	lr, [r4, #4]!	@ D.43371, MEM[base: _27, offset: 0B]
	add	ip, ip, #1	@ i, i,
	ldr	r5, [lr, #520]	@ _6->long_term_frame_idx, _6->long_term_frame_idx
	cmp	r5, r3	@ _6->long_term_frame_idx, long_term_frame_idx
	bne	.L223	@,
	cmp	r2, #1	@ structure,
	ldreqb	r5, [lr, #473]	@ zero_extendqisi2	@ _6->bottom_field.is_long_term, _6->bottom_field.is_long_term
	beq	.L239	@,
	cmp	r2, #2	@ structure,
	bne	.L223	@,
	ldrb	r5, [lr, #437]	@ zero_extendqisi2	@ _6->top_field.is_long_term, _6->top_field.is_long_term
.L239:
	clz	r5, r5	@ tmp145, _6->top_field.is_long_term
	mov	r5, r5, lsr #5	@ tmp145, tmp145,
	cmp	lr, r1	@ D.43371, pFS
	orrne	r5, r5, #1	@,, tmp148, tmp145
	cmp	r5, #0	@ tmp148,
	beq	.L223	@,
	mov	r1, lr	@, D.43371
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L240:
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
	bne	.L242	@,
	add	ip, r0, #24576	@ tmp179, pH264Ctx,
	ldr	r1, [r1, #416]	@ pCurrPic_9(D)->frame_num, pCurrPic_9(D)->frame_num
	ldr	r4, [ip, #2056]	@ D.43403, pH264Ctx_10(D)->DPB.ref_frames_in_buffer
	sub	r1, r1, #1	@ D.43403, pCurrPic_9(D)->frame_num,
	rsb	r2, r2, r1	@ picNumX, difference_of_pic_nums_minus1, D.43403
	cmp	r4, #0	@ D.43403,
	beq	.L271	@,
	add	ip, r0, #26368	@ ivtmp.515, pH264Ctx,
	add	ip, ip, #124	@ ivtmp.515, ivtmp.515,
	b	.L248	@
.L247:
	cmp	r3, r4	@ i, D.43403
	beq	.L272	@,
.L248:
	ldr	r1, [ip, #4]!	@ D.43404, MEM[base: _29, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	lr, [r1, #412]	@ _12->frame.pic_num, _12->frame.pic_num
	cmp	lr, r2	@ _12->frame.pic_num, picNumX
	bne	.L247	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ _12->is_reference, _12->is_reference
	cmp	lr, #3	@ _12->is_reference,
	bne	.L247	@,
	ldr	lr, [r1, #400]	@ *_12, *_12
	bic	lr, lr, #-16777216	@ D.43403, *_12,
	bic	lr, lr, #255	@ D.43403, D.43403,
	cmp	lr, #65536	@ D.43403,
	bne	.L247	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L242:
	add	r3, r0, #24576	@ tmp183, pH264Ctx,
	ldr	r1, [r1, #416]	@ pCurrPic_9(D)->frame_num, pCurrPic_9(D)->frame_num
	ldr	r5, [r3, #2056]	@ D.43403, pH264Ctx_10(D)->DPB.ref_frames_in_buffer
	rsb	r2, r2, r1, lsl #1	@ picNumX, difference_of_pic_nums_minus1, pCurrPic_9(D)->frame_num,
	cmp	r5, #0	@ D.43403,
	beq	.L273	@,
	add	r4, r0, #26368	@ ivtmp.526, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #124	@ ivtmp.526, ivtmp.526,
	b	.L253	@
.L249:
	tst	r3, #2	@ D.43406,
	beq	.L251	@,
	ldr	r3, [r1, #472]	@ *_21, *_21
	bic	r3, r3, #-16777216	@ D.43403, *_21,
	bic	r3, r3, #255	@ D.43403, D.43403,
	cmp	r3, #65536	@ D.43403,
	beq	.L274	@,
.L251:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r5	@ i, D.43403
	beq	.L275	@,
.L253:
	ldr	r1, [r4, #4]!	@ D.43404, MEM[base: _1, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ D.43406, _21->is_reference
	ands	r6, r3, #1	@ D.43406, D.43406,
	beq	.L249	@,
	ldr	lr, [r1, #436]	@ *_21, *_21
	bic	lr, lr, #-16777216	@ D.43403, *_21,
	bic	lr, lr, #255	@ D.43403, D.43403,
	cmp	lr, #65536	@ D.43403,
	bne	.L249	@,
	ldr	lr, [r1, #448]	@ _21->top_field.pic_num, _21->top_field.pic_num
	cmp	lr, r2	@ _21->top_field.pic_num, picNumX
	bne	.L249	@,
	add	r2, r0, ip, lsl #2	@ D.43409, pH264Ctx, i,
	and	r3, r3, #2	@ tmp196, D.43406,
	add	r2, r2, #24576	@ tmp200, D.43409,
	strb	r3, [r1, #2]	@ tmp196, _86->is_reference
	mov	r1, #0	@ tmp201,
	ldr	r3, [r2, #1920]	@ D.43404, MEM[(struct H264_CTX_S *)_107 + 26496B]
	strb	r1, [r3, #438]	@ tmp201, _58->top_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.43404, MEM[(struct H264_CTX_S *)_107 + 26496B]
	ldrb	ip, [r3, #400]	@ zero_extendqisi2	@ D.43406, _60->frame.structure
	cmp	ip, #3	@ D.43406,
	cmpne	ip, r1	@, D.43406,
	streqb	r1, [r3, #402]	@ tmp201, _60->frame.is_short_term
	ldreq	r3, [r2, #1920]	@ D.43404, MEM[(struct H264_CTX_S *)_107 + 26496B]
	streqb	r1, [r3, #401]	@ tmp201, _66->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.43404, MEM[(struct H264_CTX_S *)_107 + 26496B]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ _96->is_reference, _96->is_reference
	cmp	r1, #0	@ _96->is_reference,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	ip, [r3, #548]	@ D.43403, _96->pmv_address_idc
	add	lr, r0, #49152	@ tmp226, pH264Ctx,
	mov	r2, r1	@, _96->is_reference
	add	ip, ip, #12800	@ tmp222, D.43403,
	add	ip, ip, #12	@ tmp222, tmp222,
	str	r1, [r0, ip, asl #2]	@ _96->is_reference, pH264Ctx_10(D)->PmvStoreUsedFlag
	ldr	r0, [lr, #3688]	@, pH264Ctx_10(D)->ChanID
	ldr	r1, [r3, #508]	@, _96->logic_fs_id
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetRef	@
.L274:
	ldr	r3, [r1, #484]	@ _21->bottom_field.pic_num, _21->bottom_field.pic_num
	cmp	r3, r2	@ _21->bottom_field.pic_num, picNumX
	bne	.L251	@,
	add	r3, r0, ip, lsl #2	@ D.43409, pH264Ctx, i,
	strb	r6, [r1, #2]	@ D.43406, _84->is_reference
	add	r3, r3, #24576	@ tmp238, D.43409,
	mov	r2, #0	@ tmp239,
	ldr	r1, [r3, #1920]	@ D.43404, MEM[(struct H264_CTX_S *)_99 + 26496B]
	strb	r2, [r1, #474]	@ tmp239, _31->bottom_field.is_short_term
	ldr	r1, [r3, #1920]	@ D.43404, MEM[(struct H264_CTX_S *)_99 + 26496B]
	ldrb	ip, [r1, #400]	@ zero_extendqisi2	@ D.43406, _33->frame.structure
	cmp	ip, #3	@ D.43406,
	cmpne	ip, r2	@, D.43406,
	streqb	r2, [r1, #402]	@ tmp239, _33->frame.is_short_term
	ldreq	r1, [r3, #1920]	@ D.43404, MEM[(struct H264_CTX_S *)_99 + 26496B]
	streqb	r2, [r1, #401]	@ tmp239, _39->frame.is_long_term
	ldreq	r1, [r3, #1920]	@ D.43404, MEM[(struct H264_CTX_S *)_99 + 26496B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _43->is_reference, _43->is_reference
	cmp	r3, #0	@ _43->is_reference,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	ip, [r1, #548]	@ D.43403, _43->pmv_address_idc
	add	lr, r0, #49152	@ tmp264, pH264Ctx,
	mov	r2, r3	@, _43->is_reference
	add	ip, ip, #12800	@ tmp260, D.43403,
	add	ip, ip, #12	@ tmp260, tmp260,
	str	r3, [r0, ip, asl #2]	@ _43->is_reference, pH264Ctx_10(D)->PmvStoreUsedFlag
	ldr	r0, [lr, #3688]	@, pH264Ctx_10(D)->ChanID
	ldr	r1, [r1, #508]	@, _43->logic_fs_id
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetRef	@
.L275:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L272:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L271:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L273:
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
	beq	.L277	@,
	add	r3, r0, #24576	@ tmp164, pH264Ctx,
	ldr	r5, [r3, #2060]	@ D.43443, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.43443,
	beq	.L306	@,
	add	r4, r0, #26368	@ ivtmp.550, pH264Ctx,
	mov	ip, #0	@ i,
	add	r4, r4, #188	@ ivtmp.550, ivtmp.550,
	b	.L286	@
.L282:
	tst	r3, #2	@ D.43439,
	beq	.L284	@,
	ldr	r3, [r1, #472]	@ *_21, *_21
	bic	r3, r3, #-16777216	@ D.43443, *_21,
	bic	r3, r3, #255	@ D.43443, D.43443,
	cmp	r3, #256	@ D.43443,
	beq	.L307	@,
.L284:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r5	@ i, D.43443
	beq	.L308	@,
.L286:
	ldr	r1, [r4, #4]!	@ D.43441, MEM[base: _1, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ D.43439, _21->is_reference
	ands	r6, r3, #1	@ D.43439, D.43439,
	beq	.L282	@,
	ldr	lr, [r1, #436]	@ *_21, *_21
	bic	lr, lr, #-16777216	@ D.43443, *_21,
	bic	lr, lr, #255	@ D.43443, D.43443,
	cmp	lr, #256	@ D.43443,
	bne	.L282	@,
	ldr	lr, [r1, #444]	@ _21->top_field.long_term_pic_num, _21->top_field.long_term_pic_num
	cmp	r2, lr	@ long_term_pic_num, _21->top_field.long_term_pic_num
	bne	.L282	@,
	add	r2, r0, ip, lsl #2	@ D.43446, pH264Ctx, i,
	and	r3, r3, #2	@ tmp173, D.43439,
	add	r2, r2, #24576	@ tmp177, D.43446,
	strb	r3, [r1, #2]	@ tmp173, _75->is_reference
	mov	r1, #0	@ tmp178,
	ldr	r3, [r2, #1984]	@ D.43441, MEM[(struct H264_CTX_S *)_91 + 26560B]
	strb	r1, [r3, #437]	@ tmp178, _30->top_field.is_long_term
	ldr	r3, [r2, #1984]	@ D.43441, MEM[(struct H264_CTX_S *)_91 + 26560B]
	ldrb	ip, [r3, #400]	@ zero_extendqisi2	@ D.43439, _31->frame.structure
	cmp	ip, #3	@ D.43439,
	cmpne	ip, r1	@, D.43439,
	streqb	r1, [r3, #402]	@ tmp178, _31->frame.is_short_term
	ldreq	r3, [r2, #1984]	@ D.43441, MEM[(struct H264_CTX_S *)_91 + 26560B]
	streqb	r1, [r3, #401]	@ tmp178, _36->frame.is_long_term
	ldreq	r3, [r2, #1984]	@ D.43441, MEM[(struct H264_CTX_S *)_91 + 26560B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ _81->is_reference, _81->is_reference
	cmp	r2, #0	@ _81->is_reference,
	ldreq	r3, [r3, #548]	@ D.43443, _81->pmv_address_idc
	addeq	r3, r3, #12800	@ tmp199, D.43443,
	addeq	r3, r3, #12	@ tmp199, tmp199,
	streq	r2, [r0, r3, asl #2]	@ _81->is_reference, pH264Ctx_5(D)->PmvStoreUsedFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L277:
	add	r1, r0, #24576	@ tmp166, pH264Ctx,
	ldr	r4, [r1, #2060]	@ D.43443, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r4, #0	@ D.43443,
	beq	.L309	@,
	add	ip, r0, #26368	@ ivtmp.539, pH264Ctx,
	add	ip, ip, #188	@ ivtmp.539, ivtmp.539,
	b	.L288	@
.L287:
	cmp	r3, r4	@ i, D.43443
	beq	.L310	@,
.L288:
	ldr	r1, [ip, #4]!	@ D.43441, MEM[base: _45, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	lr, [r1, #408]	@ _7->frame.long_term_pic_num, _7->frame.long_term_pic_num
	cmp	lr, r2	@ _7->frame.long_term_pic_num, long_term_pic_num
	bne	.L287	@,
	ldrb	lr, [r1, #2]	@ zero_extendqisi2	@ _7->is_reference, _7->is_reference
	cmp	lr, #3	@ _7->is_reference,
	bne	.L287	@,
	ldr	lr, [r1, #400]	@ *_7, *_7
	bic	lr, lr, #-16777216	@ D.43443, *_7,
	bic	lr, lr, #255	@ D.43443, D.43443,
	cmp	lr, #256	@ D.43443,
	bne	.L287	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UnMarkFrameStoreRef	@
.L307:
	ldr	r3, [r1, #480]	@ _21->bottom_field.long_term_pic_num, _21->bottom_field.long_term_pic_num
	cmp	r2, r3	@ long_term_pic_num, _21->bottom_field.long_term_pic_num
	bne	.L284	@,
	add	r3, r0, ip, lsl #2	@ D.43446, pH264Ctx, i,
	strb	r6, [r1, #2]	@ D.43439, _71->is_reference
	add	r3, r3, #24576	@ tmp211, D.43446,
	mov	r1, #0	@ tmp212,
	ldr	r2, [r3, #1984]	@ D.43441, MEM[(struct H264_CTX_S *)_83 + 26560B]
	strb	r1, [r2, #473]	@ tmp212, _46->bottom_field.is_long_term
	ldr	r2, [r3, #1984]	@ D.43441, MEM[(struct H264_CTX_S *)_83 + 26560B]
	ldrb	ip, [r2, #400]	@ zero_extendqisi2	@ D.43439, _47->frame.structure
	cmp	ip, #3	@ D.43439,
	cmpne	ip, r1	@, D.43439,
	streqb	r1, [r2, #402]	@ tmp212, _47->frame.is_short_term
	ldreq	r2, [r3, #1984]	@ D.43441, MEM[(struct H264_CTX_S *)_83 + 26560B]
	streqb	r1, [r2, #401]	@ tmp212, _52->frame.is_long_term
	ldreq	r2, [r3, #1984]	@ D.43441, MEM[(struct H264_CTX_S *)_83 + 26560B]
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ _79->is_reference, _79->is_reference
	cmp	r1, #0	@ _79->is_reference,
	ldreq	r3, [r2, #548]	@ D.43443, _79->pmv_address_idc
	addeq	r3, r3, #12800	@ tmp233, D.43443,
	addeq	r3, r3, #12	@ tmp233, tmp233,
	streq	r1, [r0, r3, asl #2]	@ _79->is_reference, pH264Ctx_5(D)->PmvStoreUsedFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L310:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L308:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L309:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L306:
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
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@ D.43471, pCurrPic_5(D)->structure
	add	r3, r0, #24576	@ tmp195, pH264Ctx,
	cmp	r5, #0	@ D.43471,
	beq	.L312	@,
	ldr	r7, [r3, #2056]	@ D.43474, pH264Ctx_11(D)->DPB.ref_frames_in_buffer
	cmp	r7, #0	@ D.43474,
	beq	.L342	@,
	add	r6, r0, #26368	@ ivtmp.574, pH264Ctx,
	mov	ip, #0	@ i,
	add	r6, r6, #124	@ ivtmp.574, ivtmp.574,
	b	.L326	@
.L318:
	tst	r4, #2	@ D.43471,
	beq	.L321	@,
	ldr	lr, [r3, #472]	@ *_13, *_13
	bic	lr, lr, #-16777216	@ D.43474, *_13,
	bic	lr, lr, #255	@ D.43474, D.43474,
	cmp	lr, #65536	@ D.43474,
	beq	.L343	@,
.L321:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r7	@ i, D.43474
	beq	.L344	@,
.L326:
	ldr	r3, [r6, #4]!	@ D.43473, MEM[base: _119, offset: 0B]
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ D.43471, _13->is_reference
	tst	r4, #1	@ D.43471,
	beq	.L318	@,
	ldr	lr, [r3, #436]	@ *_13, *_13
	bic	lr, lr, #-16777216	@ D.43474, *_13,
	bic	lr, lr, #255	@ D.43474, D.43474,
	cmp	lr, #65536	@ D.43474,
	bne	.L318	@,
	ldr	lr, [r3, #448]	@ _13->top_field.pic_num, _13->top_field.pic_num
	cmp	lr, r2	@ _13->top_field.pic_num, picNumX
	bne	.L318	@,
	ldrb	lr, [r3, #473]	@ zero_extendqisi2	@ _13->bottom_field.is_long_term, _13->bottom_field.is_long_term
	cmp	lr, #1	@ _13->bottom_field.is_long_term,
	bne	.L322	@,
	ldr	lr, [r3, #520]	@ _13->long_term_frame_idx, _13->long_term_frame_idx
	cmp	lr, r1	@ _13->long_term_frame_idx, long_term_frame_idx
	bne	.L321	@,
.L322:
	str	r1, [r3, #520]	@ long_term_frame_idx, _109->long_term_frame_idx
	sub	r3, r5, #1	@ D.43472, D.43471,
	add	r2, r0, ip, lsl #2	@ D.43479, pH264Ctx, i,
	clz	r3, r3	@ D.43472, D.43472
	add	r2, r2, #24576	@ tmp240, D.43479,
	mov	ip, #1	@ tmp247,
	mov	r3, r3, lsr #5	@ D.43472, D.43472,
	mov	r0, #0	@ tmp251,
	add	r1, r3, r1, lsl #1	@ D.43474, D.43472, long_term_frame_idx,
	ldr	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_131 + 26496B]
	str	r1, [r3, #444]	@ D.43474, _56->top_field.long_term_pic_num
	ldr	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_131 + 26496B]
	strb	ip, [r3, #437]	@ tmp247, _61->top_field.is_long_term
	ldr	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_131 + 26496B]
	strb	r0, [r3, #438]	@ tmp251, _63->top_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_131 + 26496B]
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.43471, _65->frame.structure
	cmp	r1, #3	@ D.43471,
	cmpne	r1, r0	@, D.43471,
	bne	.L345	@,
	ldrb	r1, [r3, #473]	@ zero_extendqisi2	@ _65->bottom_field.is_long_term, _65->bottom_field.is_long_term
	ldrb	r0, [r3, #437]	@ zero_extendqisi2	@ D.43471, _65->top_field.is_long_term
	cmp	r1, r0	@ _65->bottom_field.is_long_term, D.43471
	streqb	r1, [r3, #401]	@ _65->bottom_field.is_long_term, _65->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_131 + 26496B]
	ldreqb	r2, [r3, #438]	@ zero_extendqisi2	@ _73->top_field.is_short_term, _73->top_field.is_short_term
	streqb	r2, [r3, #402]	@ _73->top_field.is_short_term,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L312:
	ldr	r6, [r3, #2056]	@ D.43474, pH264Ctx_11(D)->DPB.ref_frames_in_buffer
	cmp	r6, #0	@ D.43474,
	ldmeqfd	sp!, {r4, r5, r6, r7, pc}	@
	add	lr, r0, #26368	@ ivtmp.563, pH264Ctx,
	mov	r3, r5	@ i, D.43471
	add	lr, lr, #124	@ ivtmp.563, ivtmp.563,
	b	.L317	@
.L316:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r6	@ i, D.43474
	beq	.L346	@,
.L317:
	ldr	ip, [lr, #4]!	@ D.43473, MEM[base: _114, offset: 0B]
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ _77->is_reference, _77->is_reference
	cmp	r4, #3	@ _77->is_reference,
	bne	.L316	@,
	ldr	r4, [ip, #400]	@ *_77, *_77
	bic	r4, r4, #-16777216	@ D.43474, *_77,
	bic	r4, r4, #255	@ D.43474, D.43474,
	cmp	r4, #65536	@ D.43474,
	bne	.L316	@,
	ldr	r4, [ip, #412]	@ _77->frame.pic_num, _77->frame.pic_num
	cmp	r4, r2	@ _77->frame.pic_num, picNumX
	bne	.L316	@,
	add	r3, r0, r3, lsl #2	@ D.43479, pH264Ctx, i,
	str	r1, [ip, #520]	@ long_term_frame_idx, _12->long_term_frame_idx
	add	r3, r3, #24576	@ tmp204, D.43479,
	mov	r0, #1	@ tmp207,
	mov	r2, #0	@ tmp219,
	ldr	ip, [r3, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_141 + 26496B]
	str	r1, [ip, #408]	@ long_term_frame_idx, _84->frame.long_term_pic_num
	ldr	r1, [r3, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #401]	@ tmp207, _87->frame.is_long_term
	ldr	r1, [r3, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #437]	@ tmp207, _89->top_field.is_long_term
	ldr	r1, [r3, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r0, [r1, #473]	@ tmp207, _91->bottom_field.is_long_term
	ldr	r1, [r3, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r1, #402]	@ tmp219, _93->frame.is_short_term
	ldr	r1, [r3, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r1, #438]	@ tmp219, _95->top_field.is_short_term
	ldr	r3, [r3, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_141 + 26496B]
	strb	r2, [r3, #474]	@ tmp219, _97->bottom_field.is_short_term
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L343:
	ldr	lr, [r3, #484]	@ _13->bottom_field.pic_num, _13->bottom_field.pic_num
	cmp	lr, r2	@ _13->bottom_field.pic_num, picNumX
	bne	.L321	@,
	ldrb	lr, [r3, #437]	@ zero_extendqisi2	@ _13->top_field.is_long_term, _13->top_field.is_long_term
	cmp	lr, #1	@ _13->top_field.is_long_term,
	bne	.L325	@,
	ldr	lr, [r3, #520]	@ _13->long_term_frame_idx, _13->long_term_frame_idx
	cmp	lr, r1	@ _13->long_term_frame_idx, long_term_frame_idx
	bne	.L321	@,
.L325:
	str	r1, [r3, #520]	@ long_term_frame_idx, _110->long_term_frame_idx
	sub	r3, r5, #2	@ D.43472, D.43471,
	add	r2, r0, ip, lsl #2	@ D.43479, pH264Ctx, i,
	clz	r3, r3	@ D.43472, D.43472
	add	r2, r2, #24576	@ tmp279, D.43479,
	mov	ip, #1	@ tmp286,
	mov	r3, r3, lsr #5	@ D.43472, D.43472,
	mov	r0, #0	@ tmp290,
	add	r1, r3, r1, lsl #1	@ D.43474, D.43472, long_term_frame_idx,
	ldr	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_121 + 26496B]
	str	r1, [r3, #480]	@ D.43474, _25->bottom_field.long_term_pic_num
	ldr	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_121 + 26496B]
	strb	ip, [r3, #473]	@ tmp286, _30->bottom_field.is_long_term
	ldr	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_121 + 26496B]
	strb	r0, [r3, #474]	@ tmp290, _32->bottom_field.is_short_term
	ldr	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_121 + 26496B]
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.43471, _34->frame.structure
	cmp	r1, #3	@ D.43471,
	cmpne	r1, r0	@, D.43471,
	bne	.L347	@,
	ldrb	r1, [r3, #473]	@ zero_extendqisi2	@ _34->bottom_field.is_long_term, _34->bottom_field.is_long_term
	ldrb	r0, [r3, #437]	@ zero_extendqisi2	@ D.43471, _34->top_field.is_long_term
	cmp	r1, r0	@ _34->bottom_field.is_long_term, D.43471
	streqb	r1, [r3, #401]	@ _34->bottom_field.is_long_term, _34->frame.is_long_term
	ldreq	r3, [r2, #1920]	@ D.43473, MEM[(struct H264_CTX_S *)_121 + 26496B]
	ldreqb	r2, [r3, #474]	@ zero_extendqisi2	@ _45->bottom_field.is_short_term, _45->bottom_field.is_short_term
	streqb	r2, [r3, #402]	@ _45->bottom_field.is_short_term,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L344:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L346:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L345:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L347:
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L342:
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
	bne	.L349	@,
	ldr	r6, [r7, #416]	@ pCurrPic_4(D)->frame_num, pCurrPic_4(D)->frame_num
	mov	r1, r3	@, long_term_frame_idx
	sub	r6, r6, #1	@ D.43496, pCurrPic_4(D)->frame_num,
	rsb	r6, r2, r6	@ picNumX, difference_of_pic_nums_minus1, D.43496
	bl	UnMarkLTFrmByFrmIdx	@
.L350:
	mov	r3, r7	@, pCurrPic
	mov	r2, r6	@, picNumX
	mov	r1, r9	@, long_term_frame_idx
	mov	r0, r8	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	MarkPicLTRef	@
.L349:
	add	r3, r0, #24576	@ tmp143, pH264Ctx,
	ldr	r6, [r7, #416]	@ pCurrPic_4(D)->frame_num, pCurrPic_4(D)->frame_num
	ldr	r1, [r3, #2056]	@ D.43496, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	rsb	r6, r2, r6, lsl #1	@ picNumX, difference_of_pic_nums_minus1, pCurrPic_4(D)->frame_num,
	cmp	r1, #0	@ D.43496,
	beq	.L350	@,
	add	r2, r0, #26368	@ ivtmp.587, pH264Ctx,
	mov	lr, #0	@ i,
	add	r2, r2, #124	@ ivtmp.587, ivtmp.587,
	b	.L353	@
.L351:
	tst	r5, #2	@ D.43495,
	beq	.L352	@,
	ldr	r3, [ip, #472]	@ *_10, *_10
	bic	r3, r3, #-16777216	@ D.43496, *_10,
	bic	r3, r3, #255	@ D.43496, D.43496,
	cmp	r3, #65536	@ D.43496,
	beq	.L365	@,
.L352:
	cmp	lr, r1	@ i, D.43496
	beq	.L350	@,
.L353:
	ldr	ip, [r2, #4]!	@ D.43494, MEM[base: _9, offset: 0B]
	add	lr, lr, #1	@ i, i,
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ D.43495, _10->is_reference
	tst	r5, #1	@ D.43495,
	beq	.L351	@,
	ldr	r4, [ip, #436]	@ *_10, *_10
	bic	r4, r4, #-16777216	@ D.43496, *_10,
	bic	r4, r4, #255	@ D.43496, D.43496,
	cmp	r4, #65536	@ D.43496,
	bne	.L351	@,
	ldr	r3, [ip, #448]	@ _10->top_field.pic_num, _10->top_field.pic_num
	cmp	r3, r6	@ _10->top_field.pic_num, picNumX
	bne	.L351	@,
	mov	r1, ip	@, D.43494
	mov	r3, r9	@, long_term_frame_idx
	mov	r2, #1	@,
	mov	r0, r8	@, pH264Ctx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L350	@
.L365:
	ldr	r3, [ip, #484]	@ _10->bottom_field.pic_num, _10->bottom_field.pic_num
	cmp	r3, r6	@ _10->bottom_field.pic_num, picNumX
	bne	.L352	@,
	mov	r1, ip	@, D.43494
	mov	r3, r9	@, long_term_frame_idx
	mov	r2, #2	@,
	mov	r0, r8	@, pH264Ctx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L350	@
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
	add	r5, r0, #26368	@ ivtmp.603, pH264Ctx,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r3, r1	@ D.43519, max_long_term_frame_idx_plus1
	add	r5, r5, #188	@ ivtmp.603, ivtmp.603,
	mov	r4, #0	@ i,
	b	.L370	@
.L368:
	ldr	r3, [r6, #2060]	@ pH264Ctx_5(D)->DPB.ltref_frames_in_buffer, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	cmp	r3, r4	@ pH264Ctx_5(D)->DPB.ltref_frames_in_buffer, i
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r6, #2064]	@ D.43519, pH264Ctx_5(D)->DPB.max_long_term_pic_idx
.L370:
	ldr	r1, [r5, #4]!	@ D.43518, MEM[base: _21, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r2, [r1, #520]	@ _9->long_term_frame_idx, _9->long_term_frame_idx
	cmp	r2, r3	@ _9->long_term_frame_idx, D.43519
	bcc	.L368	@,
	mov	r0, r7	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	b	.L368	@
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
	add	r5, r0, #26368	@ ivtmp.618, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r5, r5, #124	@ ivtmp.618, ivtmp.618,
	mov	r4, #0	@ i,
.L374:
	ldr	r1, [r5, #4]!	@, MEM[base: _15, offset: 0B]
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r7, #2056]	@ pH264Ctx_4(D)->DPB.ref_frames_in_buffer, pH264Ctx_4(D)->DPB.ref_frames_in_buffer
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ pH264Ctx_4(D)->DPB.ref_frames_in_buffer, i
	bhi	.L374	@,
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
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.43541, pCurrPic_3(D)->structure
	mov	r4, r1	@ pCurrPic, pCurrPic
	cmp	r2, #0	@ D.43541,
	beq	.L382	@,
	mov	r3, r5	@, long_term_frame_idx
	ldr	r1, [r1, #408]	@, pCurrPic_3(D)->frame_store
	bl	UnMarkLTFldByFrmIdx	@
.L380:
	mov	r2, #1	@ tmp117,
	mov	r3, #0	@ tmp119,
	str	r5, [r4, #420]	@ long_term_frame_idx, pCurrPic_3(D)->long_term_frame_idx
	strb	r2, [r4, #4]	@ tmp117, pCurrPic_3(D)->is_long_term
	strb	r3, [r4, #5]	@ tmp119, pCurrPic_3(D)->is_short_term
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L382:
	mov	r1, r5	@, long_term_frame_idx
	bl	UnMarkLTFrmByFrmIdx	@
	b	.L380	@
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
	add	r5, r0, r1, lsl #2	@ D.43567, pH264Ctx, pos,
	add	r5, r5, #24576	@ tmp193, D.43567,
	mov	r4, r1	@ pos, pos
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r5, #1856]	@ D.43568, MEM[(struct H264_CTX_S *)_54 + 26432B]
	cmp	r2, #0	@ D.43568,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r2, #552]	@ D.43569, _10->apc_idc
	add	r7, r0, #24576	@ tmp194, pH264Ctx,
	mov	r1, #0	@ tmp145,
	add	r8, r0, #49152	@ tmp195, pH264Ctx,
	add	r3, r3, #6656	@ tmp142, D.43569,
	add	r3, r3, #4	@ tmp142, tmp142,
	add	r3, r0, r3, lsl #2	@ tmp143, pH264Ctx, tmp142,
	str	r1, [r3, #4]	@ tmp145, pH264Ctx_8(D)->APC.is_used
	ldr	r3, [r7, #2328]	@ D.43566, pH264Ctx_8(D)->APC.used_size
	cmp	r3, r1	@ D.43566,
	subne	r3, r3, #1	@ D.43566, D.43566,
	str	r3, [r7, #2328]	@ D.43566, pH264Ctx_8(D)->APC.used_size
	ldr	r1, [r2, #508]	@, _10->logic_fs_id
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogic
	beq	.L386	@,
	ldrsb	r3, [r0, #1]	@ pstLogic_19->s32DispState, pstLogic_19->s32DispState
	cmp	r3, #3	@ pstLogic_19->s32DispState,
	beq	.L387	@,
	ldr	r3, [r5, #1856]	@ MEM[(struct H264_CTX_S *)_54 + 26432B], MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r2, #0	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	ldr	r1, [r3, #508]	@, _22->logic_fs_id
	bl	FSP_SetDisplay	@
.L387:
	ldr	r3, [r5, #1856]	@ MEM[(struct H264_CTX_S *)_54 + 26432B], MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r2, #0	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_8(D)->ChanID
	ldr	r1, [r3, #508]	@, _26->logic_fs_id
	bl	FSP_SetRef	@
.L386:
	ldr	r2, [r5, #1856]	@ D.43568, MEM[(struct H264_CTX_S *)_54 + 26432B]
	mov	r3, #0	@ tmp171,
	strb	r3, [r2, #1]	@ tmp171, _29->is_used
	ldr	r2, [r5, #1856]	@ D.43568, MEM[(struct H264_CTX_S *)_54 + 26432B]
	strb	r3, [r2, #4]	@ tmp171, _31->is_in_dpb
	ldr	r2, [r5, #1856]	@ D.43568, MEM[(struct H264_CTX_S *)_54 + 26432B]
	strb	r3, [r2, #2]	@ tmp171, _33->is_reference
	ldr	r1, [r7, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	sub	r1, r1, #1	@ D.43569, pH264Ctx_8(D)->DPB.used_size,
	cmp	r4, r1	@ pos, D.43569
	addcc	r3, r4, #6592	@ D.43565, pos,
	addcc	r3, r3, #16	@ D.43565, D.43565,
	addcc	r3, r6, r3, lsl #2	@ ivtmp.634, pH264Ctx, D.43565,
	bcs	.L390	@,
.L389:
	add	r4, r4, #1	@ pos, pos,
	ldr	r2, [r3, #4]!	@ MEM[base: _45, offset: 0B], MEM[base: _45, offset: 0B]
	cmp	r4, r1	@ pos, D.43569
	str	r2, [r3, #-4]	@ MEM[base: _45, offset: 0B], MEM[base: _45, offset: 4294967292B]
	bne	.L389	@,
.L390:
	add	r3, r1, #6592	@ tmp185, D.43569,
	mov	r2, #0	@ tmp186,
	add	r3, r3, #16	@ tmp185, tmp185,
	str	r2, [r6, r3, asl #2]	@ tmp186, pH264Ctx_8(D)->DPB.fs
	str	r1, [r7, #2052]	@ D.43569, pH264Ctx_8(D)->DPB.used_size
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
	beq	.L424	@,
	add	r3, r5, #24576	@ tmp142, pH264Ctx,
	ldr	r6, [r3, #2052]	@ k, pH264Ctx_10(D)->DPB.used_size
	cmp	r6, #0	@ k,
	beq	.L415	@,
	mov	r10, #0	@ j,
	add	r7, r5, #49152	@ tmp185, pH264Ctx,
	mov	fp, r10	@ i, j
	mov	r9, r10	@ tmp188, j
	mvn	r8, #0	@ tmp187,
	b	.L414	@
.L426:
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ _40->is_in_dpb, _40->is_in_dpb
	cmp	r2, #0	@ _40->is_in_dpb,
	bne	.L412	@,
	ldr	r1, [r3, #528]	@ _40->eFoState, _40->eFoState
	cmp	r1, #1	@ _40->eFoState,
	beq	.L412	@,
	strb	r2, [r3, #1]	@ _40->is_in_dpb, _40->is_used
	mov	r1, r10	@, j
	mov	r0, r5	@, pH264Ctx
	add	fp, fp, #1	@ i, i,
	bl	RemoveFrameStoreOutDPB	@
	cmp	fp, r6	@ i, k
	beq	.L415	@,
.L414:
	add	r4, r5, r10, lsl #2	@ D.43577, pH264Ctx, j,
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	add	r4, r4, #24576	@ tmp186, D.43577,
	ldr	r3, [r4, #1856]	@ MEM[(struct H264_CTX_S *)_3 + 26432B], MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldr	r1, [r3, #508]	@, _15->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L409	@,
	ldrsh	r3, [r0]	@ *pstLogicFs_18, *pstLogicFs_18
	cmp	r3, #0	@ *pstLogicFs_18,
	bne	.L410	@,
	ldr	r3, [r4, #1856]	@ D.43581, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ _20->is_reference, _20->is_reference
	cmp	r2, #0	@ _20->is_reference,
	bne	.L411	@,
	ldrsb	r1, [r0]	@ pstLogicFs_18->s32IsRef, pstLogicFs_18->s32IsRef
	cmp	r1, #0	@ pstLogicFs_18->s32IsRef,
	bne	.L425	@,
.L411:
	str	r8, [r3, #508]	@ tmp187, _54->logic_fs_id
	ldr	r3, [r4, #1856]	@ D.43581, MEM[(struct H264_CTX_S *)_3 + 26432B]
	strb	r9, [r3, #2]	@ tmp188, _28->is_reference
.L409:
	ldr	r2, [r4, #1856]	@ D.43581, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldr	r3, [r2, #528]	@ _35->eFoState,
	sub	r3, r3, #1	@ tmp175, _35->eFoState,
	clz	r3, r3	@ tmp175, tmp175
	mov	r3, r3, lsr #5	@ tmp175, tmp175,
	strb	r3, [r2, #4]	@ tmp175,
.L410:
	ldr	r3, [r4, #1856]	@ D.43581, MEM[(struct H264_CTX_S *)_3 + 26432B]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_40].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_40].is_reference
	cmp	r2, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_40].is_reference,
	beq	.L426	@,
.L412:
	add	fp, fp, #1	@ i, i,
	add	r10, r10, #1	@ j, j,
	cmp	fp, r6	@ i, k
	bne	.L414	@,
.L415:
	mov	r0, #0	@ D.43578,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L425:
	ldr	r1, [r3, #508]	@, _20->logic_fs_id
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, #1856]	@ D.43581, MEM[(struct H264_CTX_S *)_3 + 26432B]
	b	.L411	@
.L424:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43578,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	RemoveUnUsedFrameStore, .-RemoveUnUsedFrameStore
	.align	2
	.global	CheckFrameStore
	.type	CheckFrameStore, %function
CheckFrameStore:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #49152	@ tmp185, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r2, [r3, #2180]	@ pH264Ctx_7(D)->IDRFound, pH264Ctx_7(D)->IDRFound
	cmp	r2, #0	@ pH264Ctx_7(D)->IDRFound,
	bne	.L428	@,
	ldr	r2, [r1, #528]	@ pFrameStore_9(D)->eFoState, pFrameStore_9(D)->eFoState
	cmp	r2, #1	@ pFrameStore_9(D)->eFoState,
	beq	.L429	@,
	ldr	r2, [r3, #3616]	@ pH264Ctx_7(D)->OldDecMode, pH264Ctx_7(D)->OldDecMode
	cmp	r2, #0	@ pH264Ctx_7(D)->OldDecMode,
	beq	.L452	@,
.L429:
	mov	r2, #1	@ tmp150,
	str	r2, [r3, #2180]	@ tmp150, pH264Ctx_7(D)->IDRFound
.L428:
	mov	r4, r1	@ pFrameStore, pFrameStore
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r1, #508]	@, pFrameStore_9(D)->logic_fs_id
	ldr	r0, [r3, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L431	@,
	ldrsb	r3, [r0, #1]	@ D.43594, pstLogicFs_18->s32DispState
	cmp	r3, #3	@ D.43594,
	cmpne	r3, #0	@, D.43594,
	beq	.L431	@,
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ D.43596, pFrameStore_9(D)->is_used
	cmp	r2, #0	@ D.43596,
	beq	.L434	@,
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pFrameStore_9(D)->non_existing, pFrameStore_9(D)->non_existing
	cmp	r3, #1	@ pFrameStore_9(D)->non_existing,
	beq	.L434	@,
	ldr	r3, [r4]	@ *pFrameStore_9(D), *pFrameStore_9(D)
	mov	r1, #768	@ tmp170,
	movt	r1, 768	@ tmp170,
	bic	r3, r3, #16711680	@ D.43590, *pFrameStore_9(D),
	bic	r3, r3, #255	@ D.43590, D.43590,
	cmp	r3, r1	@ D.43590, tmp170
	beq	.L434	@,
	cmp	r2, #1	@ D.43596,
	beq	.L453	@,
	cmp	r2, #2	@ D.43596,
	beq	.L454	@,
.L436:
	ldr	r3, [r5]	@ pH264Ctx_7(D)->pstExtraData, pH264Ctx_7(D)->pstExtraData
	ldr	r2, [r0, #188]	@ pstLogicFs_18->stDispImg.error_level, pstLogicFs_18->stDispImg.error_level
	ldr	r3, [r3, #4]	@ _38->s32OutErrThr, _38->s32OutErrThr
	cmp	r2, r3	@ pstLogicFs_18->stDispImg.error_level, _38->s32OutErrThr
	bhi	.L434	@,
	mov	r0, #0	@ D.43589,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L452:
	ldr	r2, [r0]	@ pH264Ctx_7(D)->pstExtraData, pH264Ctx_7(D)->pstExtraData
	ldr	r2, [r2, #12]	@ _12->s32DecOrderOutput, _12->s32DecOrderOutput
	cmp	r2, #0	@ _12->s32DecOrderOutput,
	bne	.L429	@,
	mvn	r0, #0	@ D.43589,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L431:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #528]	@ pFrameStore_9(D)->eFoState, pFrameStore_9(D)->eFoState
	cmp	r3, #1	@ pFrameStore_9(D)->eFoState,
	beq	.L455	@,
	mvn	r0, #2	@ D.43589,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L453:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pFrameStore_9(D)->mode_skip_flag, pFrameStore_9(D)->mode_skip_flag
	tst	r3, #1	@ pFrameStore_9(D)->mode_skip_flag,
	beq	.L436	@,
.L434:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43589,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L454:
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pFrameStore_9(D)->mode_skip_flag, pFrameStore_9(D)->mode_skip_flag
	tst	r3, #2	@ pFrameStore_9(D)->mode_skip_flag,
	beq	.L436	@,
	b	.L434	@
.L455:
	mov	r3, #2	@ tmp165,
	mvn	r0, #2	@ D.43589,
	str	r3, [r4, #528]	@ tmp165, pFrameStore_9(D)->eFoState
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, r5	@ pFrameStore_10(D)->fs_image.PTS,
	cmpeq	r2, r4	@ pFrameStore_10(D)->fs_image.PTS, tmp136
	beq	.L456	@,
	add	r6, r0, #24576	@ tmp161, pH264Ctx,
	ldr	r3, [r6, #2052]	@ pH264Ctx_14(D)->DPB.used_size, pH264Ctx_14(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_14(D)->DPB.used_size,
	beq	.L456	@,
	add	fp, r0, #26368	@ ivtmp.660, pH264Ctx,
	add	r10, r0, #49152	@ tmp162, pH264Ctx,
	add	fp, fp, #60	@ ivtmp.660, ivtmp.660,
	mov	r7, r1	@ pFrameStore, pFrameStore
	mvn	r4, #1	@ MinPts,
	mvn	r5, #0	@ MinPts,
	mvn	r9, #0	@ MinPtsPos,
	mov	r8, #0	@ MinPtsPos,
	str	r0, [sp, #4]	@ pH264Ctx, %sfp
.L461:
	ldr	r3, [fp, #4]!	@ D.43612, MEM[base: _40, offset: 0B]
	cmp	r3, #0	@ D.43612,
	beq	.L460	@,
	ldr	r1, [r3, #508]	@, _16->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_14(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L460	@,
	ldrsb	r3, [r0, #1]	@ D.43614, pstLogicFs_21->s32DispState
	cmp	r3, #3	@ D.43614,
	cmpne	r3, #0	@, D.43614,
	beq	.L460	@,
	ldr	r3, [fp]	@ MEM[base: _40, offset: 0B], MEM[base: _40, offset: 0B]
	ldrd	r0, [r3, #16]	@ MinPts, MEM[base: _40, offset: 0B],
	cmp	r1, r5	@ MinPts, MinPts
	cmpeq	r0, r4	@ MinPts, MinPts
	movcc	r4, r0	@ MinPts, MinPts
	movcc	r5, r1	@ MinPts, MinPts
	movcc	r9, r8	@ MinPtsPos, MinPtsPos
.L460:
	ldr	r3, [r6, #2052]	@ pH264Ctx_14(D)->DPB.used_size, pH264Ctx_14(D)->DPB.used_size
	add	r8, r8, #1	@ MinPtsPos, MinPtsPos,
	cmp	r8, r3	@ MinPtsPos, pH264Ctx_14(D)->DPB.used_size
	bcc	.L461	@,
	cmn	r9, #1	@ MinPtsPos,
	beq	.L456	@,
	ldrd	r2, [r7, #16]	@ pFrameStore_10(D)->fs_image.PTS, pFrameStore,
	cmp	r3, r5	@ pFrameStore_10(D)->fs_image.PTS, MinPts
	cmpeq	r2, r4	@ pFrameStore_10(D)->fs_image.PTS, MinPts
	bhi	.L476	@,
.L456:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L476:
	bl	vfmw_dprint_nothing	@
	add	r9, r9, #6592	@ tmp160, MinPtsPos,
	add	r9, r9, #16	@ tmp160, tmp160,
	ldrd	r2, [r7, #16]	@ D.43610, pFrameStore,
	ldr	r1, [sp, #4]	@ pH264Ctx, %sfp
	ldr	r1, [r1, r9, asl #2]	@ D.43612, pH264Ctx_14(D)->DPB.fs
	strd	r2, [r1, #16]	@ D.43610, D.43612,
	strd	r4, [r7, #16]	@ MinPts, pFrameStore,
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
	ldr	ip, [r1, #148]	@ D.43626, pFrameStore_30(D)->fs_image.format
	mov	r7, #4000	@ tmp207,
	ldr	r6, [lr, #1292]	@ pH264Ctx_21(D)->SPS, pH264Ctx_21(D)->SPS
	mla	r1, r8, r2, r3	@ tmp204, tmp203, pH264Ctx_21(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_21(D)->PPS
	bic	r2, ip, #768	@ D.43626, D.43626,
	bic	r2, r2, #3	@ D.43626, D.43626,
	ldrb	lr, [r4, #1]	@ zero_extendqisi2	@ pFrameStore_30(D)->is_used, pFrameStore_30(D)->is_used
	ldr	r3, [r1, #28]	@ pps_25->seq_parameter_set_id, pps_25->seq_parameter_set_id
	str	r2, [r4, #148]	@ D.43626, pFrameStore_30(D)->fs_image.format
	ldr	r1, [r5, #2188]	@ pH264Ctx_21(D)->frame_rate, pH264Ctx_21(D)->frame_rate
	mla	r3, r7, r3, r6	@ sps, tmp207, pps_25->seq_parameter_set_id, pH264Ctx_21(D)->SPS
	mov	r1, r1, asl #10	@ D.43626, pH264Ctx_21(D)->frame_rate,
	str	r1, [r4, #176]	@ D.43626, pFrameStore_30(D)->fs_image.frame_rate
	cmp	lr, #3	@ pFrameStore_30(D)->is_used,
	ldrls	pc, [pc, lr, asl #2]	@ pFrameStore_30(D)->is_used
	b	.L513	@
.L480:
	.word	.L479
	.word	.L481
	.word	.L482
	.word	.L479
.L482:
	ldr	r1, [r4, #540]	@ pFrameStore_30(D)->pic_type, pFrameStore_30(D)->pic_type
	add	r6, r0, #24576	@ tmp284, pH264Ctx,
	ldr	ip, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	and	r1, r1, #3	@ D.43626, pFrameStore_30(D)->pic_type,
	orr	r2, r2, r1	@ D.43626, D.43626, D.43626
	orr	r2, r2, #2816	@ D.43626, D.43626,
	str	ip, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
	str	r2, [r4, #148]	@ D.43626, pFrameStore_30(D)->fs_image.format
.L478:
	ldrb	r2, [r3, #18]	@ zero_extendqisi2	@ D.43629, sps_29->frame_mbs_only_flag
	str	r2, [r4, #348]	@ D.43629, pFrameStore_30(D)->fs_image.optm_inf.IsProgressiveSeq
	str	r2, [r4, #352]	@ D.43629, pFrameStore_30(D)->fs_image.optm_inf.IsProgressiveFrm
	ldrb	r2, [r3, #22]	@ zero_extendqisi2	@ sps_29->vui_parameters_present_flag, sps_29->vui_parameters_present_flag
	cmp	r2, #0	@ sps_29->vui_parameters_present_flag,
	ldrne	r2, [r3, #68]	@ D.43623, sps_29->vui_seq_parameters.matrix_coefficients
	mov	r3, #1	@ tmp252,
	str	r3, [r4, #356]	@ tmp252, pFrameStore_30(D)->fs_image.optm_inf.RealFrmRate
	str	r2, [r4, #360]	@ D.43623, pFrameStore_30(D)->fs_image.optm_inf.MatrixCoef
	ldr	r3, [r0]	@ pH264Ctx_21(D)->pstExtraData, pH264Ctx_21(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _115->s32DecOrderOutput, _115->s32DecOrderOutput
	cmp	r3, #0	@ _115->s32DecOrderOutput,
	ble	.L498	@,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ pFrameStore_30(D)->frame.structure, pFrameStore_30(D)->frame.structure
	cmp	r3, #0	@ pFrameStore_30(D)->frame.structure,
	bne	.L498	@,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pFrameStore_30(D)->is_used, pFrameStore_30(D)->is_used
	cmp	r3, #3	@ pFrameStore_30(D)->is_used,
	ldreq	r3, [r4, #148]	@ pFrameStore_30(D)->fs_image.format, pFrameStore_30(D)->fs_image.format
	biceq	r3, r3, #768	@ D.43626, pFrameStore_30(D)->fs_image.format,
	streq	r3, [r4, #148]	@ D.43626, pFrameStore_30(D)->fs_image.format
.L498:
	mov	r1, r4	@, pFrameStore
	bl	ExchangePts	@
	ldrb	r3, [r6, #1808]	@ zero_extendqisi2	@ pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok, pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok
	cmp	r3, #0	@ pH264Ctx_21(D)->FramePackSEI.frame_packing_dec_ok,
	beq	.L499	@,
	ldr	r3, [r6, #1824]	@ D.43629, pH264Ctx_21(D)->FramePackSEI.frame_packing_arrangement_type
	cmp	r3, #3	@ D.43629,
	moveq	r3, #1	@ tmp265,
	streq	r3, [r4, #288]	@ tmp265, pFrameStore_30(D)->fs_image.eFramePackingType
	beq	.L499	@,
	cmp	r3, #4	@ D.43629,
	moveq	r3, #2	@ tmp266,
	streq	r3, [r4, #288]	@ tmp266, pFrameStore_30(D)->fs_image.eFramePackingType
	beq	.L499	@,
	cmp	r3, #5	@ D.43629,
	moveq	r3, #3	@ tmp267,
	streq	r3, [r4, #288]	@ tmp267, pFrameStore_30(D)->fs_image.eFramePackingType
	beq	.L499	@,
	mov	r3, #0	@ tmp268,
	str	r3, [r4, #288]	@ tmp268, pFrameStore_30(D)->fs_image.eFramePackingType
	bl	vfmw_dprint_nothing	@
.L499:
	ldr	r0, [r5, #3688]	@, pH264Ctx_21(D)->ChanID
	ldr	r1, [r4, #508]	@, pFrameStore_30(D)->logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pstLogicFsImage,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r2, #392	@,
	add	r1, r4, #8	@, pFrameStore,
	bl	memcpy	@
	mov	r3, #0	@ tmp278,
	str	r3, [r5, #300]	@ tmp278, pstLogicFsImage_133->ImageDnr.video_standard
	mov	r2, #1	@ tmp280,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ D.43624, pFrameStore_30(D)->frame.structure
	strb	r2, [r5, #295]	@ tmp280, pstLogicFsImage_133->ImageDnr.use_pic_qp_en
	cmp	r3, #0	@ D.43624,
	movne	r3, #4	@ D.43624,
	strb	r3, [r5, #288]	@ D.43624, pstLogicFsImage_133->ImageDnr.pic_structure
	ldr	r3, [r4, #428]	@ D.43629, pFrameStore_30(D)->frame.MaxQp
	strb	r2, [r5, #293]	@ tmp280, pstLogicFsImage_133->ImageDnr.chroma_format_idc
	str	r3, [r5, #304]	@ D.43629, pstLogicFsImage_133->ImageDnr.QP_Y
	str	r3, [r5, #312]	@ D.43629, pstLogicFsImage_133->ImageDnr.QP_V
	str	r3, [r5, #308]	@ D.43629, pstLogicFsImage_133->ImageDnr.QP_U
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L481:
	ldr	r1, [r4, #540]	@ pFrameStore_30(D)->pic_type, pFrameStore_30(D)->pic_type
	add	r6, r0, #24576	@ tmp284, pH264Ctx,
	ldr	ip, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	and	r1, r1, #3	@ D.43626, pFrameStore_30(D)->pic_type,
	orr	r2, r2, r1	@ D.43626, D.43626, D.43626
	orr	r2, r2, #1792	@ D.43626, D.43626,
	str	ip, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
	str	r2, [r4, #148]	@ D.43626, pFrameStore_30(D)->fs_image.format
	b	.L478	@
.L479:
	ldrb	r2, [r4, #400]	@ zero_extendqisi2	@ pFrameStore_30(D)->frame.structure, pFrameStore_30(D)->frame.structure
	cmp	r2, #0	@ pFrameStore_30(D)->frame.structure,
	bne	.L483	@,
	ldr	r2, [r4, #536]	@ pFrameStore_30(D)->MbaffFrameFlag, pFrameStore_30(D)->MbaffFrameFlag
	mov	r7, #3072	@ D.43626,
	ldr	lr, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	cmp	r2, #0	@ pFrameStore_30(D)->MbaffFrameFlag,
	ldr	r2, [r4, #540]	@ pic_type, pFrameStore_30(D)->pic_type
	moveq	r1, #512	@ D.43626,
	movne	r1, #768	@ D.43626,
	str	lr, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
.L484:
	ldr	r6, [r4, #452]	@ D.43629, pFrameStore_30(D)->top_field.poc
	ldr	lr, [r4, #488]	@ D.43629, pFrameStore_30(D)->bottom_field.poc
	cmp	r6, lr	@ D.43629, D.43629
	beq	.L522	@,
	movle	lr, #1	@ top_field_first,
	movgt	lr, #0	@ top_field_first,
.L495:
	add	r6, r0, #24576	@ tmp284, pH264Ctx,
	ldrb	r8, [r6, #1844]	@ zero_extendqisi2	@ D.43628, pH264Ctx_21(D)->PicTimingSEI.pic_struct
	cmp	r8, #3	@ D.43628,
	moveq	lr, #4096	@ D.43626,
	beq	.L496	@,
	cmp	r8, #4	@ D.43628,
	movne	lr, lr, asl #12	@ D.43626, top_field_first,
	moveq	lr, #0	@ D.43626,
.L496:
	bic	ip, ip, #13056	@ D.43626, D.43626,
	orr	r1, r7, r1	@ D.43626, D.43626, D.43626
	bic	ip, ip, #3	@ D.43626, D.43626,
	and	r2, r2, #3	@ D.43626, pic_type,
	orr	ip, r1, ip	@ D.43626, D.43626, D.43626
	orr	ip, ip, r2	@ D.43626, D.43626, D.43626
	orr	ip, ip, lr	@ D.43626, D.43626, D.43626
	str	ip, [r4, #148]	@ D.43626, pFrameStore_30(D)->fs_image.format
	b	.L478	@
.L483:
	ldr	r6, [r4, #456]	@ D.43626, pFrameStore_30(D)->top_field.err_level
	ldr	r2, [r5, #3684]	@ D.43626, pH264Ctx_21(D)->out_error_thr
	cmp	r6, r2	@ D.43626, D.43626
	bhi	.L523	@,
	ldr	r1, [r4, #492]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->bottom_field.err_level
	cmp	r2, r1	@ D.43626, pFrameStore_30(D)->bottom_field.err_level
	bcc	.L488	@,
.L486:
	ldr	lr, [r4, #544]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->err_level
	mov	r1, #3	@ valid_field,
	ldr	r2, [r4, #540]	@ pic_type, pFrameStore_30(D)->pic_type
	ldr	r9, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	ldr	r8, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	str	lr, [r4, #188]	@ pFrameStore_30(D)->err_level, pFrameStore_30(D)->fs_image.error_level
.L489:
	ldrb	lr, [r4, #3]	@ zero_extendqisi2	@ D.43628, pFrameStore_30(D)->mode_skip_flag
	cmp	lr, #1	@ D.43628,
	beq	.L524	@,
	cmp	lr, #2	@ D.43628,
	streq	r6, [r4, #188]	@ D.43626, pFrameStore_30(D)->fs_image.error_level
	movne	r7, r1, asl #10	@ D.43626, valid_field,
	moveq	r2, r9	@ pic_type, pic_type
	moveq	r7, #1024	@ D.43626,
.L491:
	mov	r1, #768	@ D.43626,
	str	r9, [r4, #140]	@ pic_type, pFrameStore_30(D)->fs_image.top_fld_type
	str	r8, [r4, #144]	@ pic_type, pFrameStore_30(D)->fs_image.bottom_fld_type
	b	.L484	@
.L488:
	ldr	r2, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	mov	r1, #1	@ valid_field,
	ldr	r8, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	str	r6, [r4, #188]	@ D.43626, pFrameStore_30(D)->fs_image.error_level
	mov	r9, r2	@ pic_type, pic_type
	b	.L489	@
.L522:
	ldr	lr, [r4, #152]	@ pFrameStore_30(D)->fs_image.image_width, pFrameStore_30(D)->fs_image.image_width
	cmp	lr, #720	@ pFrameStore_30(D)->fs_image.image_width,
	movne	lr, #1	@ top_field_first,
	bne	.L495	@,
	ldr	lr, [r4, #156]	@ pFrameStore_30(D)->fs_image.image_height, pFrameStore_30(D)->fs_image.image_height
	subs	lr, lr, #480	@ top_field_first, pFrameStore_30(D)->fs_image.image_height,
	movne	lr, #1	@ top_field_first,
	b	.L495	@
.L523:
	ldr	lr, [r4, #492]	@ D.43626, pFrameStore_30(D)->bottom_field.err_level
	cmp	r2, lr	@ D.43626, D.43626
	bcc	.L486	@,
	ldr	r2, [r4, #496]	@ pic_type, pFrameStore_30(D)->bottom_field.pic_type
	mov	r1, #2	@ valid_field,
	str	lr, [r4, #188]	@ D.43626, pFrameStore_30(D)->fs_image.error_level
	ldr	r9, [r4, #460]	@ pic_type, pFrameStore_30(D)->top_field.pic_type
	mov	r8, r2	@ pic_type, pic_type
	b	.L489	@
.L524:
	ldr	r1, [r4, #492]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->bottom_field.err_level
	mov	r2, r8	@ pic_type, pic_type
	mov	r7, #2048	@ D.43626,
	str	r1, [r4, #188]	@ pFrameStore_30(D)->bottom_field.err_level, pFrameStore_30(D)->fs_image.error_level
	b	.L491	@
.L513:
	add	r6, r0, #24576	@ tmp284, pH264Ctx,
	b	.L478	@
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
	add	r3, r3, #2032	@ D.43642, _3->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.43642, D.43642,
	cmp	r3, #4096	@ D.43642,
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
	ldrb	lr, [r0, #401]	@ zero_extendqisi2	@ D.43645, pFrameStore_2(D)->frame.is_long_term
	mov	r4, #2	@ tmp122,
	ldrb	ip, [r0, #402]	@ zero_extendqisi2	@ D.43645, pFrameStore_2(D)->frame.is_short_term
	ldr	r1, [r0, #420]	@ D.43646, pFrameStore_2(D)->frame.err_level
	ldr	r2, [r0, #424]	@ D.43646, pFrameStore_2(D)->frame.pic_type
	ldr	r3, [r0, #404]	@ D.43647, pFrameStore_2(D)->frame.frame_store
	strb	r5, [r0, #436]	@ tmp118, pFrameStore_2(D)->top_field.structure
	strb	r4, [r0, #472]	@ tmp122, pFrameStore_2(D)->bottom_field.structure
	strb	lr, [r0, #437]	@ D.43645, pFrameStore_2(D)->top_field.is_long_term
	strb	lr, [r0, #473]	@ D.43645, pFrameStore_2(D)->bottom_field.is_long_term
	strb	ip, [r0, #438]	@ D.43645, pFrameStore_2(D)->top_field.is_short_term
	strb	ip, [r0, #474]	@ D.43645, pFrameStore_2(D)->bottom_field.is_short_term
	str	r1, [r0, #456]	@ D.43646, pFrameStore_2(D)->top_field.err_level
	str	r1, [r0, #492]	@ D.43646, pFrameStore_2(D)->bottom_field.err_level
	str	r2, [r0, #460]	@ D.43646, pFrameStore_2(D)->top_field.pic_type
	str	r2, [r0, #496]	@ D.43646, pFrameStore_2(D)->bottom_field.pic_type
	str	r3, [r0, #440]	@ D.43647, pFrameStore_2(D)->top_field.frame_store
	str	r3, [r0, #476]	@ D.43647, pFrameStore_2(D)->bottom_field.frame_store
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
	movge	r2, r1	@ D.43650, pFrameStore_4(D)->top_field.poc
	ldrb	r4, [r0, #473]	@ zero_extendqisi2	@ pFrameStore_4(D)->bottom_field.is_long_term, pFrameStore_4(D)->bottom_field.is_long_term
	ldr	ip, [r0, #440]	@ pFrameStore_4(D)->top_field.frame_store, pFrameStore_4(D)->top_field.frame_store
	add	r3, r3, r5	@ D.43651, pFrameStore_4(D)->bottom_field.err_level, pFrameStore_4(D)->top_field.err_level
	cmp	r4, #0	@ pFrameStore_4(D)->bottom_field.is_long_term,
	strb	lr, [r0, #400]	@ tmp133, pFrameStore_4(D)->frame.structure
	mov	r3, r3, lsr #1	@ D.43651, D.43651,
	str	r2, [r0, #416]	@ D.43650, pFrameStore_4(D)->frame.poc
	str	ip, [r0, #404]	@ pFrameStore_4(D)->top_field.frame_store, pFrameStore_4(D)->frame.frame_store
	str	r2, [r0, #524]	@ D.43650, pFrameStore_4(D)->poc
	str	r3, [r0, #420]	@ D.43651, pFrameStore_4(D)->frame.err_level
	beq	.L530	@,
	ldrb	r2, [r0, #437]	@ zero_extendqisi2	@ pFrameStore_4(D)->top_field.is_long_term, pFrameStore_4(D)->top_field.is_long_term
	cmp	r2, #0	@ pFrameStore_4(D)->top_field.is_long_term,
	bne	.L531	@,
.L530:
	ldr	r2, [r0, #472]	@ *pFrameStore_4(D), *pFrameStore_4(D)
	mov	r1, #0	@ tmp141,
	strb	r1, [r0, #401]	@ tmp141, pFrameStore_4(D)->frame.is_long_term
	bic	r2, r2, #-16777216	@ D.43651, *pFrameStore_4(D),
	bic	r2, r2, #255	@ D.43651, D.43651,
	cmp	r2, r1	@ D.43651,
	beq	.L535	@,
	ldr	r2, [r0, #436]	@ *pFrameStore_4(D), *pFrameStore_4(D)
	bic	r2, r2, #-16777216	@ D.43651, *pFrameStore_4(D),
	bic	r2, r2, #255	@ D.43651, D.43651,
	cmp	r2, #0	@ D.43651,
	movne	ip, #1	@ D.43653,
	bne	.L533	@,
.L535:
	mov	ip, #0	@ D.43653,
.L533:
	ldr	r2, [r0, #496]	@ pFrameStore_4(D)->bottom_field.pic_type, pFrameStore_4(D)->bottom_field.pic_type
	ldr	r1, [r0, #460]	@ pFrameStore_4(D)->top_field.pic_type, pFrameStore_4(D)->top_field.pic_type
	str	r3, [r0, #544]	@ D.43651, pFrameStore_4(D)->err_level
	cmp	r2, r1	@ pFrameStore_4(D)->bottom_field.pic_type, pFrameStore_4(D)->top_field.pic_type
	strb	ip, [r0, #402]	@ D.43653, pFrameStore_4(D)->frame.is_short_term
	movcs	r3, r2	@ D.43651, pFrameStore_4(D)->bottom_field.pic_type
	movcc	r3, r1	@ D.43651, pFrameStore_4(D)->top_field.pic_type
	str	r3, [r0, #424]	@ D.43651, pFrameStore_4(D)->frame.pic_type
	str	r3, [r0, #540]	@ D.43651, pFrameStore_4(D)->pic_type
	ldmfd	sp!, {r4, r5, pc}	@
.L531:
	mov	r1, #1	@ tmp152,
	strb	r1, [r0, #401]	@ tmp152, pFrameStore_4(D)->frame.is_long_term
	b	.L535	@
	.fnend
	.size	CombineFldsToFrm, .-CombineFldsToFrm
	.align	2
	.global	GetAPC
	.type	GetAPC, %function
GetAPC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r7, r1, #0	@ pFrameStore, pFrameStore
	beq	.L554	@,
	cmp	r2, #1	@ structure,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	beq	.L548	@,
	cmp	r2, #2	@ structure,
	beq	.L549	@,
	ldr	r8, [r7, #452]	@ bottompoc, pFrameStore_7(D)->top_field.poc
	ldr	r9, [r7, #488]	@ bottompoc, pFrameStore_7(D)->bottom_field.poc
.L550:
	add	r6, r5, #24576	@ tmp166, pH264Ctx,
	ldr	ip, [r6, #2324]	@ D.43669, pH264Ctx_15(D)->APC.size
	cmp	ip, #0	@ D.43669,
	beq	.L557	@,
	ldr	r4, [r6, #2068]	@ pH264Ctx_15(D)->APC.is_used, pH264Ctx_15(D)->APC.is_used
	cmp	r4, #0	@ pH264Ctx_15(D)->APC.is_used,
	addne	r3, r5, #26624	@ ivtmp.681, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r3, r3, #20	@ ivtmp.681, ivtmp.681,
	bne	.L553	@,
	b	.L551	@
.L556:
	ldr	r2, [r3, #4]!	@ MEM[base: _46, offset: 0B], MEM[base: _46, offset: 0B]
	cmp	r2, #0	@ MEM[base: _46, offset: 0B],
	beq	.L551	@,
.L553:
	add	r4, r4, #1	@ i, i,
	cmp	r4, ip	@ i, D.43669
	bne	.L556	@,
.L557:
	mvn	r0, #0	@ D.43667,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L549:
	ldr	r8, [r7, #488]	@ bottompoc, pFrameStore_7(D)->bottom_field.poc
	mov	r9, r8	@ bottompoc, bottompoc
	b	.L550	@
.L551:
	add	r3, r5, #49152	@ tmp145, pH264Ctx,
	ldr	r1, [r7, #508]	@, pFrameStore_7(D)->logic_fs_id
	ldr	r0, [r3, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L554	@,
	ldr	r3, [r0, #408]	@ pstLogicFs_22->pstDecodeFs, pstLogicFs_22->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_22->pstDecodeFs,
	beq	.L554	@,
	add	r5, r5, r4, lsl #2	@ D.43675, pH264Ctx, i,
	mov	r3, #1	@ tmp151,
	add	r5, r5, #24576	@ tmp150, D.43675,
	str	r3, [r5, #2068]	@ tmp151, MEM[(struct H264_CTX_S *)_48 + 26644B]
	ldr	r3, [r0, #408]	@ pstLogicFs_22->pstDecodeFs, pstLogicFs_22->pstDecodeFs
	ldr	r3, [r3, #4]	@ _25->PhyFsID, _25->PhyFsID
	str	r8, [r5, #2196]	@ bottompoc, MEM[(struct H264_CTX_S *)_48 + 26772B]
	str	r9, [r5, #2260]	@ bottompoc, MEM[(struct H264_CTX_S *)_48 + 26836B]
	str	r3, [r5, #2132]	@ _25->PhyFsID, MEM[(struct H264_CTX_S *)_48 + 26708B]
	ldr	r3, [r6, #2328]	@ D.43669, pH264Ctx_15(D)->APC.used_size
	cmp	r3, #15	@ D.43669,
	addls	r3, r3, #1	@ D.43668, D.43669,
	movhi	r3, #16	@ D.43668,
	str	r3, [r6, #2328]	@ D.43668, pH264Ctx_15(D)->APC.used_size
	bl	vfmw_dprint_nothing	@
	str	r4, [r7, #552]	@ i, pFrameStore_7(D)->apc_idc
	mov	r0, #0	@ D.43667,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L548:
	ldr	r8, [r7, #452]	@ bottompoc, pFrameStore_7(D)->top_field.poc
	mov	r9, r8	@ bottompoc, bottompoc
	b	.L550	@
.L554:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43667,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	rsb	r3, r1, r3	@ D.43678, pH264Ctx_2(D)->DPB.ltref_frames_in_buffer, pH264Ctx_2(D)->CurrSPS.num_ref_frames
	cmp	r2, r3	@ pH264Ctx_2(D)->DPB.ref_frames_in_buffer, D.43678
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
	bcs	.L580	@,
.L574:
	add	r0, r4, #49152	@ tmp125, pH264Ctx,
	mov	r2, #0	@ tmp126,
	ldr	r3, [r0, #976]	@ pH264Ctx_4(D)->CurrPic.nal_ref_idc, pH264Ctx_4(D)->CurrPic.nal_ref_idc
	strb	r2, [r0, #556]	@ tmp126, pH264Ctx_4(D)->CurrPic.is_long_term
	cmp	r3, r2	@ pH264Ctx_4(D)->CurrPic.nal_ref_idc,
	movne	r3, #1	@ tmp133,
	strneb	r3, [r0, #557]	@ tmp133, pH264Ctx_4(D)->CurrPic.is_short_term
	ldmfd	sp!, {r4, pc}	@
.L580:
	ldr	r1, [r3, #1856]	@, pH264Ctx_4(D)->DPB.fs
	bl	UnMarkFrameStoreRef	@
	mov	r1, #0	@,
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L574	@
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
	beq	.L590	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r3, #0	@ tmp118,
	add	r8, r1, #56	@ D.43703, pNalu,
	mov	r7, r0	@ ChanID, ChanID
	mov	r5, r1	@ pNalu, pNalu
	mov	r6, r3	@ tmp130, tmp118
	mov	r4, r1	@ ivtmp.702, pNalu
	strb	r3, [r1, #1]	@ tmp118, pNalu_3(D)->is_valid
	strb	r3, [r1, #3]	@ tmp118, pNalu_3(D)->nal_integ
.L584:
	ldr	r3, [r4, #8]	@ MEM[base: _26, offset: 8B], MEM[base: _26, offset: 8B]
	mov	r0, r7	@, ChanID
	cmp	r3, #0	@ MEM[base: _26, offset: 8B],
	beq	.L583	@,
	ldr	r1, [r4, #32]	@, MEM[base: _26, offset: 32B]
	bl	SM_ReleaseStreamSeg	@
	bl	vfmw_dprint_nothing	@
	str	r6, [r4, #8]	@ tmp130, MEM[base: _26, offset: 8B]
	str	r6, [r4, #24]	@ tmp130, MEM[base: _26, offset: 24B]
	str	r6, [r4, #12]	@ tmp130, MEM[base: _26, offset: 12B]
.L583:
	add	r4, r4, #28	@ ivtmp.702, ivtmp.702,
	cmp	r4, r8	@ ivtmp.702, D.43703
	bne	.L584	@,
	mov	r3, #0	@ tmp127,
	strb	r3, [r5]	@ tmp127, pNalu_3(D)->nal_used_segment
	str	r3, [r5, #68]	@ tmp127, pNalu_3(D)->nal_segment
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L590:
	b	vfmw_dprint_nothing	@
	.fnend
	.size	ReleaseNAL, .-ReleaseNAL
	.align	2
	.global	ClearCurrNal
	.type	ClearCurrNal, %function
ClearCurrNal:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #368]	@ D.43706, pH264Ctx_3(D)->pCurrNal
	cmp	r1, #0	@ D.43706,
	beq	.L597	@,
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
.L597:
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
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #368]	@ D.43711, pH264Ctx_3(D)->pCurrNal
	add	r4, r5, #49152	@ tmp127, pH264Ctx,
	cmp	r1, #0	@ D.43711,
	beq	.L599	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp119,
	str	r3, [r5, #368]	@ tmp119, pH264Ctx_3(D)->pCurrNal
.L599:
	ldr	r3, [r4, #3644]	@ pH264Ctx_3(D)->TotalSlice, pH264Ctx_3(D)->TotalSlice
	mov	r0, #0	@,
	add	r3, r3, #1	@ D.43710, pH264Ctx_3(D)->TotalSlice,
	str	r3, [r4, #3644]	@ D.43710, pH264Ctx_3(D)->TotalSlice
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	add	r5, r0, #13504	@ D.43729, pH264Ctx,
	add	r5, r5, #24	@ D.43729, D.43729,
	add	r4, r0, #376	@ ivtmp.720, pH264Ctx,
	add	r6, r0, #49152	@ tmp156, pH264Ctx,
	b	.L606	@
.L605:
	add	r4, r4, #96	@ ivtmp.720, ivtmp.720,
	cmp	r4, r5	@ ivtmp.720, D.43729
	beq	.L609	@,
.L606:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ MEM[base: _17, offset: 1B], MEM[base: _17, offset: 1B]
	cmp	r3, #1	@ MEM[base: _17, offset: 1B],
	bne	.L605	@,
	mov	r1, r4	@, ivtmp.720
	ldr	r0, [r6, #3688]	@, pH264Ctx_5(D)->ChanID
	add	r4, r4, #96	@ ivtmp.720, ivtmp.720,
	bl	ReleaseNAL	@
	cmp	r4, r5	@ ivtmp.720, D.43729
	bne	.L606	@,
.L609:
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
	add	r4, r0, #50688	@ ivtmp.729, pH264Ctx,
	add	r5, r0, #51200	@ D.43751, pH264Ctx,
	add	r4, r4, #12	@ ivtmp.729, ivtmp.729,
	add	r5, r5, #44	@ D.43751, D.43751,
	add	r6, r0, #49152	@ tmp132, pH264Ctx,
	mov	r7, #0	@ tmp133,
.L612:
	ldr	r1, [r4, #4]!	@ D.43746, MEM[base: _19, offset: 0B]
	cmp	r1, #0	@ D.43746,
	beq	.L611	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	ReleaseNAL	@
	str	r7, [r4]	@ tmp133, MEM[base: _19, offset: 0B]
.L611:
	cmp	r4, r5	@ ivtmp.729, D.43751
	bne	.L612	@,
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r1	@ ImgWidth, ImgWidth
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp177,,
	mov	r6, r2	@ ImgHeight, ImgHeight
	bl	__memzero	@
	ldr	r2, [r5]	@ D.43760, pH264Ctx_7(D)->pstExtraData
	mov	r3, #0	@ tmp138,
	ldr	r1, [r2, #20]	@ _8->s32DnrDispOutEnable, _8->s32DnrDispOutEnable
	str	r6, [sp, #36]	@ ImgHeight, FspInstCfg.s32DispFsHeight
	ldr	r2, [r2, #32]	@ _8->eCapLevel, _8->eCapLevel
	str	r4, [sp, #16]	@ ImgWidth, FspInstCfg.s32DecFsWidth
	cmp	r2, #24	@ _8->eCapLevel,
	str	r6, [sp, #20]	@ ImgHeight, FspInstCfg.s32DecFsHeight
	strb	r1, [sp, #4]	@ _8->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r4, [sp, #24]	@ ImgWidth, FspInstCfg.s32TfFsWidth
	str	r6, [sp, #28]	@ ImgHeight, FspInstCfg.s32TfFsHeight
	str	r4, [sp, #32]	@ ImgWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #5]	@ tmp138, FspInstCfg.s32TfEnable
	strb	r3, [sp, #6]	@ tmp138, FspInstCfg.s32RprEnable
	beq	.L621	@,
	add	r1, r5, #24576	@ tmp144, pH264Ctx,
	ldrb	r2, [sp, #56]	@ zero_extendqisi2	@ D.43758, PmvBlkNum
	strb	r3, [sp, #10]	@ tmp138, FspInstCfg.s32ExpectedTfFsNum
	mov	r0, #5	@ tmp151,
	ldr	r3, [r1, #2048]	@ pH264Ctx_7(D)->DPB.size, pH264Ctx_7(D)->DPB.size
	strb	r0, [sp, #11]	@ tmp151, FspInstCfg.s32ExpectedDispFsNum
	add	r3, r3, #1	@ tmp147, pH264Ctx_7(D)->DPB.size,
	strb	r3, [sp, #9]	@ tmp147, FspInstCfg.s32ExpectedDecFsNum
.L625:
	add	r6, r5, #49152	@ tmp160, pH264Ctx,
	add	r1, sp, #4	@ tmp178,,
	mov	r3, #0	@ tmp154,
	strb	r2, [sp, #12]	@ D.43758, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	mov	r4, #1	@ tmp156,
	strb	r3, [sp, #8]	@ tmp154, FspInstCfg.s32UserDec
	strb	r4, [sp, #7]	@ tmp156, FspInstCfg.s8SubLevelEnable
	bl	FSP_ConfigInstance	@
	cmp	r0, #0	@,
	bne	.L622	@,
	ldr	r1, [r5]	@ D.43760, pH264Ctx_7(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_7(D)->ChanID
	ldr	r2, [r1, #28]	@, _41->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _41->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, r4	@ D.43759, tmp156
	bne	.L622	@,
.L626:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L621:
	mov	r1, #5	@ tmp173,
	strb	r3, [sp, #9]	@ tmp138, FspInstCfg.s32ExpectedDecFsNum
	strb	r3, [sp, #10]	@ tmp138, FspInstCfg.s32ExpectedTfFsNum
	mov	r2, #1	@ D.43758,
	strb	r1, [sp, #11]	@ tmp173, FspInstCfg.s32ExpectedDispFsNum
	b	.L625	@
.L622:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.43759,
	b	.L626	@
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
	beq	.L630	@,
	bcc	.L645	@,
	cmp	r3, #2	@ pH264Ctx_17(D)->CurrSlice.slice_type,
	bne	.L652	@,
.L646:
	mov	r0, #0	@ D.43820,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L642:
	mov	r0, r7	@, pH264Ctx
.L652:
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.43820,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L630:
	mov	r0, #2	@ i_list_cnt,
.L631:
	add	r6, r7, #20480	@ ivtmp.775, pH264Ctx,
	add	r4, r7, #26880	@ ivtmp.783, pH264Ctx,
	add	r6, r6, #240	@ ivtmp.775, ivtmp.775,
	add	r4, r4, #156	@ ivtmp.783, ivtmp.783,
	add	r8, r7, #49152	@ tmp161, pH264Ctx,
	mov	r5, #0	@ i_list,
	ldr	r2, [r6, #4]!	@ D.43822, MEM[base: _62, offset: 0B]
	mov	r9, #1	@ tmp160,
	cmp	r2, #0	@ D.43822,
	beq	.L633	@,
.L654:
	ldr	ip, [r4]	@ pRepairPic, MEM[base: _65, offset: 0B]
	cmp	ip, #0	@ pRepairPic,
	bne	.L647	@,
	mov	r1, r4	@ ivtmp.764, ivtmp.783
	mov	r3, ip	@ i, pRepairPic
	b	.L635	@
.L636:
	ldr	lr, [r1, #4]!	@ pRepairPic, MEM[base: _4, offset: 0B]
	cmp	lr, #0	@ pRepairPic,
	bne	.L638	@,
.L635:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r2	@ i, D.43822
	bne	.L636	@,
	ldr	r3, [r7]	@ pH264Ctx_17(D)->pstExtraData, pH264Ctx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _38->s32DecOrderOutput, _38->s32DecOrderOutput
	cmp	r3, #2	@ _38->s32DecOrderOutput,
	bne	.L642	@,
	ldr	lr, [r8, #960]	@ pH264Ctx_17(D)->CurrPic.frame_store, pH264Ctx_17(D)->CurrPic.frame_store
	add	lr, lr, #400	@ pRepairPic, pH264Ctx_17(D)->CurrPic.frame_store,
.L638:
	mov	r1, r4	@ ivtmp.749, ivtmp.783
	mov	r3, #0	@ i,
	b	.L644	@
.L640:
	ldr	ip, [r1, #4]!	@ D.43826, MEM[base: _32, offset: 0B]
.L644:
	add	r3, r3, #1	@ i, i,
	cmp	ip, #0	@ D.43826,
	streq	lr, [r1]	@ pRepairPic, MEM[base: _5, offset: 0B]
	cmp	r3, r2	@ i, D.43822
	bne	.L640	@,
	add	r5, r5, #1	@ i_list, i_list,
	add	r4, r4, #132	@ ivtmp.783, ivtmp.783,
	cmp	r0, r5	@ i_list_cnt, i_list
	bls	.L646	@,
.L653:
	ldr	r2, [r6, #4]!	@ D.43822, MEM[base: _62, offset: 0B]
	cmp	r2, #0	@ D.43822,
	bne	.L654	@,
.L633:
	ldr	r3, [r7]	@ pH264Ctx_17(D)->pstExtraData, pH264Ctx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _21->s32DecOrderOutput, _21->s32DecOrderOutput
	cmp	r3, #2	@ _21->s32DecOrderOutput,
	bne	.L642	@,
	add	r5, r5, #1	@ i_list, i_list,
	str	r9, [r6]	@ tmp160, MEM[base: _62, offset: 0B]
	cmp	r0, r5	@ i_list_cnt, i_list
	ldr	r3, [r8, #960]	@ pH264Ctx_17(D)->CurrPic.frame_store, pH264Ctx_17(D)->CurrPic.frame_store
	add	r4, r4, #132	@ ivtmp.783, ivtmp.783,
	add	r3, r3, #400	@ D.43826, pH264Ctx_17(D)->CurrPic.frame_store,
	str	r3, [r4, #-132]	@ D.43826, MEM[base: _64, offset: 0B]
	bhi	.L653	@,
	b	.L646	@
.L647:
	mov	lr, ip	@ pRepairPic, pRepairPic
	b	.L638	@
.L645:
	mov	r0, #1	@ i_list_cnt,
	b	.L631	@
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
	beq	.L656	@,
	ldrb	r3, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag,
	movne	r4, #2	@ structure,
	moveq	r4, #1	@ structure,
.L656:
	add	r3, r0, #24576	@ tmp145, pH264Ctx,
	ldr	r5, [r3, #2056]	@ D.43840, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	cmp	r5, #0	@ D.43840,
	beq	.L664	@,
	add	r3, r0, #26368	@ ivtmp.790, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r3, #128	@ ivtmp.790, ivtmp.790,
	b	.L661	@
.L675:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ _25->is_reference, _25->is_reference
	cmp	ip, #3	@ _25->is_reference,
	beq	.L673	@,
.L659:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.790, ivtmp.790,
	cmp	r2, r5	@ i, D.43840
	beq	.L674	@,
.L661:
	cmp	r4, #0	@ structure,
	ldr	r0, [r3]	@ D.43837,* ivtmp.790
	beq	.L675	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ D.43839, _10->is_reference
	tst	lr, #1	@ D.43839,
	beq	.L660	@,
	ldr	ip, [r0, #436]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.43840, *_10,
	bic	ip, ip, #255	@ D.43840, D.43840,
	cmp	ip, #65536	@ D.43840,
	beq	.L676	@,
.L660:
	tst	lr, #2	@ D.43839,
	beq	.L659	@,
	ldr	ip, [r0, #472]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.43840, *_10,
	bic	ip, ip, #255	@ D.43840, D.43840,
	cmp	ip, #65536	@ D.43840,
	bne	.L659	@,
	ldr	ip, [r0, #484]	@ _10->bottom_field.pic_num, _10->bottom_field.pic_num
	cmp	ip, r1	@ _10->bottom_field.pic_num, picNum
	bne	.L659	@,
	add	r0, r0, #472	@ D.43838, D.43837,
	ldmfd	sp!, {r4, r5, pc}	@
.L673:
	ldr	ip, [r0, #400]	@ *_25, *_25
	bic	ip, ip, #-16777216	@ D.43840, *_25,
	bic	ip, ip, #255	@ D.43840, D.43840,
	cmp	ip, #65536	@ D.43840,
	bne	.L659	@,
	ldr	ip, [r0, #412]	@ _25->frame.pic_num, _25->frame.pic_num
	cmp	ip, r1	@ _25->frame.pic_num, picNum
	bne	.L659	@,
	add	r0, r0, #400	@ D.43838, D.43837,
	ldmfd	sp!, {r4, r5, pc}	@
.L676:
	ldr	ip, [r0, #448]	@ _10->top_field.pic_num, _10->top_field.pic_num
	cmp	ip, r1	@ _10->top_field.pic_num, picNum
	bne	.L660	@,
	add	r0, r0, #436	@ D.43838, D.43837,
	ldmfd	sp!, {r4, r5, pc}	@
.L674:
	mov	r0, #0	@ D.43838,
	ldmfd	sp!, {r4, r5, pc}	@
.L664:
	mov	r0, r5	@ D.43838, D.43840
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
	beq	.L678	@,
	ldrb	r3, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag,
	movne	r4, #2	@ structure,
	moveq	r4, #1	@ structure,
.L678:
	add	r3, r0, #24576	@ tmp145, pH264Ctx,
	ldr	r5, [r3, #2060]	@ D.43854, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.43854,
	beq	.L686	@,
	add	r3, r0, #26368	@ ivtmp.797, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r3, #192	@ ivtmp.797, ivtmp.797,
	b	.L683	@
.L697:
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ _25->is_reference, _25->is_reference
	cmp	ip, #3	@ _25->is_reference,
	beq	.L695	@,
.L681:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.797, ivtmp.797,
	cmp	r2, r5	@ i, D.43854
	beq	.L696	@,
.L683:
	cmp	r4, #0	@ structure,
	ldr	r0, [r3]	@ D.43851,* ivtmp.797
	beq	.L697	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ D.43853, _10->is_reference
	tst	lr, #1	@ D.43853,
	beq	.L682	@,
	ldr	ip, [r0, #436]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.43854, *_10,
	bic	ip, ip, #255	@ D.43854, D.43854,
	cmp	ip, #256	@ D.43854,
	beq	.L698	@,
.L682:
	tst	lr, #2	@ D.43853,
	beq	.L681	@,
	ldr	ip, [r0, #472]	@ *_10, *_10
	bic	ip, ip, #-16777216	@ D.43854, *_10,
	bic	ip, ip, #255	@ D.43854, D.43854,
	cmp	ip, #256	@ D.43854,
	bne	.L681	@,
	ldr	ip, [r0, #480]	@ _10->bottom_field.long_term_pic_num, _10->bottom_field.long_term_pic_num
	cmp	ip, r1	@ _10->bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L681	@,
	add	r0, r0, #472	@ D.43852, D.43851,
	ldmfd	sp!, {r4, r5, pc}	@
.L695:
	ldr	ip, [r0, #400]	@ *_25, *_25
	bic	ip, ip, #-16777216	@ D.43854, *_25,
	bic	ip, ip, #255	@ D.43854, D.43854,
	cmp	ip, #256	@ D.43854,
	bne	.L681	@,
	ldr	ip, [r0, #408]	@ _25->frame.long_term_pic_num, _25->frame.long_term_pic_num
	cmp	ip, r1	@ _25->frame.long_term_pic_num, LongtermPicNum
	bne	.L681	@,
	add	r0, r0, #400	@ D.43852, D.43851,
	ldmfd	sp!, {r4, r5, pc}	@
.L698:
	ldr	ip, [r0, #444]	@ _10->top_field.long_term_pic_num, _10->top_field.long_term_pic_num
	cmp	ip, r1	@ _10->top_field.long_term_pic_num, LongtermPicNum
	bne	.L682	@,
	add	r0, r0, #436	@ D.43852, D.43851,
	ldmfd	sp!, {r4, r5, pc}	@
.L696:
	mov	r0, #0	@ D.43852,
	ldmfd	sp!, {r4, r5, pc}	@
.L686:
	mov	r0, r5	@ D.43852, D.43854
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
	ldr	r4, [r7]	@ D.43885, *refIdxLX_14(D)
	cmp	r2, r4	@ cIdx, D.43885
	ble	.L700	@,
	add	lr, r5, r2, lsl #2	@ ivtmp.816, RefPicListX, cIdx,
	mov	ip, r2	@ cIdx, cIdx
.L701:
	ldr	r4, [lr, #-4]!	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 0B]
	sub	ip, ip, #1	@ cIdx, cIdx,
	str	r4, [lr, #4]	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 4B]
	ldr	r4, [r7]	@ D.43885, *refIdxLX_14(D)
	cmp	r4, ip	@ D.43885, cIdx
	blt	.L701	@,
.L700:
	add	r3, r4, #1	@ D.43885, D.43885,
	str	r3, [r7]	@ D.43885, *refIdxLX_14(D)
	str	r0, [r5, r4, asl #2]	@ picLX, *_31
	ldr	ip, [r7]	@ nIdx, *refIdxLX_14(D)
	cmp	r2, ip	@ cIdx, nIdx
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r5, ip, lsl #2	@ ivtmp.807, RefPicListX, nIdx,
	mov	lr, ip	@ nIdx, nIdx
.L705:
	ldr	r0, [r4], #4	@ D.43886, MEM[base: _61, offset: 0B]
	add	ip, ip, #1	@ nIdx, nIdx,
	cmp	r0, #0	@ D.43886,
	beq	.L703	@,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _37->is_long_term, _37->is_long_term
	cmp	r3, #0	@ _37->is_long_term,
	bne	.L704	@,
	ldr	r3, [r0, #12]	@ _37->pic_num, _37->pic_num
	cmp	r3, r6	@ _37->pic_num, picNumLX
	beq	.L703	@,
.L704:
	str	r0, [r5, lr, asl #2]	@ D.43886, *_43
	add	lr, lr, #1	@ nIdx, nIdx,
.L703:
	cmp	r2, ip	@ cIdx, nIdx
	bge	.L705	@,
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
	ldr	r4, [r7]	@ D.43920, *refIdxLX_14(D)
	cmp	r2, r4	@ cIdx, D.43920
	ble	.L714	@,
	add	lr, r5, r2, lsl #2	@ ivtmp.844, RefPicListX, cIdx,
	mov	ip, r2	@ cIdx, cIdx
.L715:
	ldr	r4, [lr, #-4]!	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 0B]
	sub	ip, ip, #1	@ cIdx, cIdx,
	str	r4, [lr, #4]	@ MEM[base: _47, offset: 0B], MEM[base: _47, offset: 4B]
	ldr	r4, [r7]	@ D.43920, *refIdxLX_14(D)
	cmp	r4, ip	@ D.43920, cIdx
	blt	.L715	@,
.L714:
	add	r3, r4, #1	@ D.43920, D.43920,
	str	r3, [r7]	@ D.43920, *refIdxLX_14(D)
	str	r0, [r5, r4, asl #2]	@ picLX, *_31
	ldr	ip, [r7]	@ nIdx, *refIdxLX_14(D)
	cmp	r2, ip	@ cIdx, nIdx
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r5, ip, lsl #2	@ ivtmp.835, RefPicListX, nIdx,
	mov	lr, ip	@ nIdx, nIdx
.L719:
	ldr	r0, [r4], #4	@ D.43921, MEM[base: _61, offset: 0B]
	add	ip, ip, #1	@ nIdx, nIdx,
	cmp	r0, #0	@ D.43921,
	beq	.L717	@,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _37->is_long_term, _37->is_long_term
	cmp	r3, #0	@ _37->is_long_term,
	beq	.L718	@,
	ldr	r3, [r0, #8]	@ _37->long_term_pic_num, _37->long_term_pic_num
	cmp	r3, r6	@ _37->long_term_pic_num, LongTermPicNum
	beq	.L717	@,
.L718:
	str	r0, [r5, lr, asl #2]	@ D.43921, *_43
	add	lr, lr, #1	@ nIdx, nIdx,
.L717:
	cmp	r2, ip	@ cIdx, nIdx
	bge	.L719	@,
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
	beq	.L731	@,
	ldr	r2, [r2, #220]	@ pH264Ctx_14(D)->CurrSlice.frame_num, pH264Ctx_14(D)->CurrSlice.frame_num
	mov	r4, #2	@ maxPicNum,
	ldr	r7, [lr, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mla	lr, r8, r5, r9	@ tmp179, tmp178, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	mov	r5, r2, asl #1	@ D.43945, pH264Ctx_14(D)->CurrSlice.frame_num,
	add	r2, r5, #1	@ picNumLXPred, D.43945,
	str	r2, [sp, #20]	@ picNumLXPred, %sfp
.L750:
	ldr	lr, [lr, #28]	@ pps_82->seq_parameter_set_id,
	adds	r10, r3, #2	@ D.43945, num_ref_idx_lX_active_minus1,
	mla	r2, r6, lr, r7	@ tmp186, tmp185, pps_82->seq_parameter_set_id, pH264Ctx_14(D)->SPS
	ldr	r2, [r2, #2904]	@ sps_86->log2_max_frame_num_minus4,
	add	r2, r2, #4	@ D.43945, sps_86->log2_max_frame_num_minus4,
	mov	r2, r4, asl r2	@ maxPicNum, maxPicNum,
	str	r2, [sp, #16]	@ maxPicNum, %sfp
	beq	.L730	@,
	ldr	r2, [ip]	@ D.43945, *reordering_of_pic_nums_idc_39(D)
	cmp	r2, #3	@ D.43945,
	beq	.L730	@,
	mov	r8, r3	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	mov	r9, r1	@ list, list
	str	r0, [sp, #12]	@ pH264Ctx, %sfp
	mov	r7, ip	@ ivtmp.863, reordering_of_pic_nums_idc
	ldr	r6, [sp, #76]	@ ivtmp.871, abs_diff_pic_num_minus1
	mov	r4, #0	@ i,
	ldr	r5, [sp, #20]	@ picNumLXPred, %sfp
	add	fp, sp, #28	@ tmp222,,
	b	.L734	@
.L735:
	ldr	r3, [sp, #80]	@ tmp243, long_term_pic_idx
	mov	r2, r8	@, num_ref_idx_lX_active_minus1
	mov	r1, r9	@, list
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r3, [r3, r4, asl #2]	@ MEM[base: long_term_pic_idx_60(D), index: i_73, step: 4, offset: 0B], MEM[base: long_term_pic_idx_60(D), index: i_73, step: 4, offset: 0B]
	add	r4, r4, #1	@ i, i,
	str	fp, [sp]	@ tmp222,
	bl	ReorderLTList	@
	cmp	r4, r10	@ i, D.43945
	beq	.L730	@,
.L740:
	ldr	r2, [r7, #4]!	@ D.43945, MEM[base: _68, offset: 0B]
	add	r6, r6, #4	@ ivtmp.871, ivtmp.871,
	cmp	r2, #3	@ D.43945,
	beq	.L730	@,
.L734:
	cmp	r2, #1	@ D.43945,
	bhi	.L735	@,
	cmp	r2, #0	@ D.43945,
	ldr	r3, [r6]	@ MEM[base: _6, offset: 0B],* ivtmp.871
	bne	.L736	@,
	mvn	r3, r3	@ D.43946, MEM[base: _6, offset: 0B]
	adds	r5, r5, r3	@ picNumLXPred, picNumLXPred, D.43946
	ldrmi	r3, [sp, #16]	@ maxPicNum, %sfp
	addmi	r5, r5, r3	@ picNumLXPred, picNumLXPred, maxPicNum
.L737:
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
	cmp	r4, r10	@ i, D.43945
	bne	.L740	@,
.L730:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L736:
	add	r3, r3, #1	@ D.43946, MEM[base: _11, offset: 0B],
	add	r5, r5, r3	@ picNumLXPred, picNumLXPred, D.43946
	ldr	r3, [sp, #16]	@ maxPicNum, %sfp
	cmp	r3, r5	@ maxPicNum, picNumLXPred
	rsble	r5, r3, r5	@ picNumLXPred, maxPicNum, picNumLXPred
	b	.L737	@
.L731:
	ldr	r2, [r2, #220]	@ picNumLXPred, pH264Ctx_14(D)->CurrSlice.frame_num
	mov	r4, #1	@ tmp219,
	ldr	r7, [lr, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mla	lr, r8, r5, r9	@ tmp209, tmp208, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	str	r2, [sp, #20]	@ picNumLXPred, %sfp
	b	.L750	@
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
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ D.43952, pH264Ctx_4(D)->CurrSlice.slice_type
	cmp	r3, #2	@ D.43952,
	beq	.L751	@,
	add	r6, r0, #16384	@ tmp179, pH264Ctx,
	ldrb	r2, [r6, #3504]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0, pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r2, #0	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l0,
	bne	.L764	@,
.L754:
	cmp	r3, #1	@ D.43952,
	ldr	r3, [r5, #256]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r3, #1	@ D.43955, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	str	r3, [r5, #244]	@ D.43955, pH264Ctx_4(D)->CurrSlice.listXsize
	bne	.L751	@,
	ldrb	r3, [r6, #3505]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1, pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r3, #0	@ pH264Ctx_4(D)->CurrReorder.ref_pic_list_reordering_flag_l1,
	bne	.L765	@,
.L756:
	ldr	r3, [r5, #260]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #1	@ D.43955, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	str	r3, [r5, #248]	@ D.43955, pH264Ctx_4(D)->CurrSlice.listXsize
.L751:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L764:
	add	r7, r0, #20224	@ D.43957, pH264Ctx,
	add	lr, r0, #19968	@ D.43956, pH264Ctx,
	add	ip, r0, #19712	@ D.43956, pH264Ctx,
	add	r1, r0, #26880	@, pH264Ctx,
	ldr	r3, [r5, #256]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	lr, lr, #188	@ D.43956, D.43956,
	add	ip, ip, #180	@ D.43956, D.43956,
	add	r7, r7, #196	@ D.43957, D.43957,
	stmia	sp, {ip, lr}	@,,
	add	r2, r5, #244	@, tmp2,
	str	r7, [sp, #8]	@ D.43957,
	add	r1, r1, #156	@,,
	bl	ReorderRefPiclist	@
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ D.43952, pH264Ctx_4(D)->CurrSlice.slice_type
	b	.L754	@
.L765:
	add	lr, r4, #20480	@ D.43957, pH264Ctx,
	add	ip, r4, #20224	@ D.43956, pH264Ctx,
	add	r0, r4, #19968	@ D.43956, pH264Ctx,
	add	r1, r4, #27136	@, pH264Ctx,
	ldr	r3, [r5, #260]	@ pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_4(D)->CurrSlice.num_ref_idx_l1_active_minus1
	mov	r2, lr	@, D.43957
	add	ip, ip, #64	@ D.43956, D.43956,
	add	lr, lr, #68	@ D.43957, D.43957,
	add	r0, r0, #56	@ D.43956, D.43956,
	str	lr, [sp, #8]	@ D.43957,
	stmia	sp, {r0, ip}	@,,
	add	r2, r2, #248	@,,
	add	r1, r1, #32	@,,
	mov	r0, r4	@, pH264Ctx
	bl	ReorderRefPiclist	@
	b	.L756	@
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
	ldr	lr, .L830	@ tmp256,
	ldr	r7, [sp, #52]	@ long_term, long_term
	mov	r8, r1	@ fs_list, fs_list
	ldr	ip, .L830+4	@ tmp257,
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
	beq	.L769	@,
	cmp	r0, #2	@ currStrcture,
	moveq	r5, #0	@ bot_idx,
	moveq	r6, r5	@ top_idx, bot_idx
	bne	.L777	@,
.L778:
	cmp	r6, r4	@ top_idx, list_idx
	movcs	r3, #0	@ D.43998,
	movcc	r3, #1	@ D.43998,
	cmp	r5, r4	@ bot_idx, list_idx
	mov	r2, r3	@ D.43998, D.43998
	str	r3, [sp]	@ D.43998, %sfp
	movcs	r3, #0	@ D.43998,
	movcc	r3, #1	@ D.43998,
	orrs	r2, r3, r2	@ tmp259, D.43998, D.43998
	beq	.L777	@,
	cmp	r3, #0	@ D.43998,
	beq	.L783	@,
	add	fp, r8, r5, lsl #2	@ ivtmp.908, fs_list, bot_idx,
	b	.L782	@
.L779:
	add	r5, r5, #1	@ bot_idx, bot_idx,
	cmp	r4, r5	@ list_idx, bot_idx
	bls	.L783	@,
.L782:
	mov	r9, fp	@ D.43997, ivtmp.908
	ldr	r0, [fp], #4	@ D.43999, MEM[base: _90, offset: 0B]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _91->is_used, _91->is_used
	tst	r2, #2	@ _91->is_used,
	beq	.L779	@,
	add	r0, r0, #472	@, D.43999,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L779	@,
	ldr	r2, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r5, r5, #1	@ bot_idx, bot_idx,
	ldr	r1, [sp, #4]	@ list, %sfp
	ldr	r3, [r9]	@ *_164, *_164
	add	r3, r3, #472	@ D.44001, *_164,
	str	r3, [r1, r2, asl #2]	@ D.44001, *_102
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.43996, *list_size_47(D),
	str	r3, [r10]	@ D.43996, *list_size_47(D)
.L783:
	ldr	r3, [sp]	@ D.43998, %sfp
	cmp	r3, #0	@ D.43998,
	addne	r9, r8, r6, lsl #2	@ ivtmp.899, fs_list, top_idx,
	bne	.L785	@,
	b	.L778	@
.L784:
	add	r6, r6, #1	@ top_idx, top_idx,
	cmp	r4, r6	@ list_idx, top_idx
	bls	.L778	@,
.L785:
	mov	fp, r9	@ D.43997, ivtmp.899
	ldr	r0, [r9], #4	@ D.43999, MEM[base: _114, offset: 0B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _115->is_used, _115->is_used
	tst	r3, #1	@ _115->is_used,
	beq	.L784	@,
	add	r0, r0, #436	@, D.43999,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L784	@,
	ldr	r1, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r6, r6, #1	@ top_idx, top_idx,
	ldr	r2, [sp, #4]	@ list, %sfp
	ldr	r3, [fp]	@ *_162, *_162
	add	r3, r3, #436	@ D.44001, *_162,
	str	r3, [r2, r1, asl #2]	@ D.44001, *_127
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.43996, *list_size_47(D),
	str	r3, [r10]	@ D.43996, *list_size_47(D)
	b	.L778	@
.L829:
	add	r0, r0, #436	@, D.43999,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L770	@,
	ldr	r2, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r6, r6, #1	@ top_idx, top_idx,
	ldr	r1, [sp, #4]	@ list, %sfp
	ldr	r3, [r9]	@ *_168, *_168
	add	r3, r3, #436	@ D.44001, *_168,
	str	r3, [r1, r2, asl #2]	@ D.44001, *_51
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.43996, *list_size_47(D),
	str	r3, [r10]	@ D.43996, *list_size_47(D)
.L774:
	ldr	r3, [sp]	@ D.43998, %sfp
	cmp	r3, #0	@ D.43998,
	addne	r9, r8, r5, lsl #2	@ ivtmp.881, fs_list, bot_idx,
	bne	.L776	@,
	b	.L769	@
.L775:
	add	r5, r5, #1	@ bot_idx, bot_idx,
	cmp	r4, r5	@ list_idx, bot_idx
	bls	.L769	@,
.L776:
	mov	fp, r9	@ D.43997, ivtmp.881
	ldr	r0, [r9], #4	@ D.43999, MEM[base: _63, offset: 0B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ _64->is_used, _64->is_used
	tst	r3, #2	@ _64->is_used,
	beq	.L775	@,
	add	r0, r0, #472	@, D.43999,
	blx	r7	@ is_ref
	cmp	r0, #0	@,
	beq	.L775	@,
	ldr	r1, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r5, r5, #1	@ bot_idx, bot_idx,
	ldr	r2, [sp, #4]	@ list, %sfp
	ldr	r3, [fp]	@ *_166, *_166
	add	r3, r3, #472	@ D.44001, *_166,
	str	r3, [r2, r1, asl #2]	@ D.44001, *_76
	ldr	r3, [r10]	@ *list_size_47(D), *list_size_47(D)
	add	r3, r3, #1	@ D.43996, *list_size_47(D),
	str	r3, [r10]	@ D.43996, *list_size_47(D)
.L769:
	cmp	r6, r4	@ top_idx, list_idx
	movcs	r3, #0	@ D.43998,
	movcc	r3, #1	@ D.43998,
	cmp	r5, r4	@ bot_idx, list_idx
	movcs	r2, #0	@ D.43998,
	movcc	r2, #1	@ D.43998,
	str	r2, [sp]	@ D.43998, %sfp
	orrs	r2, r2, r3	@ tmp258, D.43998, D.43998
	beq	.L777	@,
	cmp	r3, #0	@ D.43998,
	beq	.L774	@,
	add	fp, r8, r6, lsl #2	@ ivtmp.890, fs_list, top_idx,
	b	.L773	@
.L770:
	add	r6, r6, #1	@ top_idx, top_idx,
	cmp	r4, r6	@ list_idx, top_idx
	bls	.L774	@,
.L773:
	mov	r9, fp	@ D.43997, ivtmp.890
	ldr	r0, [fp], #4	@ D.43999, MEM[base: _37, offset: 0B]
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _38->is_used, _38->is_used
	tst	r2, #1	@ _38->is_used,
	beq	.L770	@,
	b	.L829	@
.L777:
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L831:
	.align	2
.L830:
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
	add	r6, r0, #20480	@ tmp662, pH264Ctx,
	add	r8, r0, #49152	@ tmp660, pH264Ctx,
	.pad #220
	sub	sp, sp, #220	@,,
	ldrb	r3, [r6, #200]	@ zero_extendqisi2	@ pH264Ctx_69(D)->CurrSlice.slice_type, pH264Ctx_69(D)->CurrSlice.slice_type
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	r7, [r8, #555]	@ zero_extendqisi2	@ pH264Ctx_69(D)->CurrPic.structure, pH264Ctx_69(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_69(D)->CurrSlice.slice_type,
	bne	.L833	@,
	cmp	r7, #0	@ pH264Ctx_69(D)->CurrPic.structure,
	bne	.L960	@,
	add	r3, r0, #24576	@ tmp664, pH264Ctx,
	str	r3, [sp, #12]	@ tmp664, %sfp
	ldr	ip, [r3, #2056]	@ D.44243, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	ip, #0	@ D.44243,
	beq	.L900	@,
	add	r1, r0, #26368	@ ivtmp.952, pH264Ctx,
	mov	r3, r7	@ i, j
	add	r1, r1, #124	@ ivtmp.952, ivtmp.952,
	b	.L839	@
.L838:
	cmp	r3, ip	@ i, D.44243
	beq	.L837	@,
.L839:
	ldr	r2, [r1, #4]!	@ D.44242, MEM[base: _93, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _73->is_reference, _73->is_reference
	cmp	r0, #3	@ _73->is_reference,
	bne	.L838	@,
	ldr	r0, [r2, #400]	@ *_73, *_73
	bic	r0, r0, #-16777216	@ D.44243, *_73,
	bic	r0, r0, #255	@ D.44243, D.44243,
	cmp	r0, #65536	@ D.44243,
	bne	.L838	@,
	add	r0, r7, #6720	@ tmp353, j,
	cmp	r3, ip	@ i, D.44243
	add	r0, r0, #38	@ tmp353, tmp353,
	add	r2, r2, #400	@ D.44244, D.44242,
	add	r7, r7, #1	@ j, j,
	add	r0, r4, r0, lsl #2	@ tmp354, pH264Ctx, tmp353,
	str	r2, [r0, #4]	@ D.44244, pH264Ctx_69(D)->pListX
	bne	.L839	@,
.L837:
	add	r0, r4, #26880	@, pH264Ctx,
	ldr	r3, .L968	@,
	mov	r1, r7	@, j
	add	r0, r0, #156	@,,
	mov	r2, #4	@,
	bl	qsort	@
	str	r7, [r6, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r3, [sp, #12]	@ tmp664, %sfp
	ldr	r1, [r3, #2060]	@ D.44243, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r1, #0	@ D.44243,
	beq	.L901	@,
	add	r0, r4, #26368	@ ivtmp.941, pH264Ctx,
	mov	r5, r7	@ j, j
	add	r0, r0, #188	@ ivtmp.941, ivtmp.941,
	mov	r3, #0	@ i,
	b	.L842	@
.L841:
	cmp	r3, r1	@ i, D.44243
	beq	.L961	@,
.L842:
	ldr	r2, [r0, #4]!	@ D.44242, MEM[base: _185, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ _85->is_reference, _85->is_reference
	cmp	ip, #3	@ _85->is_reference,
	bne	.L841	@,
	ldr	ip, [r2, #400]	@ *_85, *_85
	bic	ip, ip, #-16777216	@ D.44243, *_85,
	bic	ip, ip, #255	@ D.44243, D.44243,
	cmp	ip, #256	@ D.44243,
	bne	.L841	@,
	add	ip, r5, #6720	@ tmp370, j,
	cmp	r3, r1	@ i, D.44243
	add	ip, ip, #38	@ tmp370, tmp370,
	add	r2, r2, #400	@ D.44244, D.44242,
	add	r5, r5, #1	@ j, j,
	add	ip, r4, ip, lsl #2	@ tmp371, pH264Ctx, tmp370,
	str	r2, [ip, #4]	@ D.44244, pH264Ctx_69(D)->pListX
	bne	.L842	@,
.L961:
	rsb	r1, r7, r5	@ D.44243, j, j
.L840:
	add	r0, r4, r7, lsl #2	@ tmp378, pH264Ctx, j,
	ldr	r3, .L968+4	@,
	add	r0, r0, #26880	@, tmp378,
	mov	r2, #4	@,
	add	r0, r0, #156	@,,
	bl	qsort	@
	mov	r2, r5	@ D.44236, j
	cmp	r2, #0	@ D.44236,
	mov	r3, #0	@ tmp413,
	str	r5, [r6, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	str	r3, [r6, #248]	@ tmp413, pH264Ctx_69(D)->CurrSlice.listXsize
	beq	.L962	@,
.L848:
	ldr	r0, [r6, #256]	@ pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1
	ldr	r1, [r6, #260]	@ pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r0, r0, #1	@ D.44243, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r2, r0	@ D.44236, D.44243
	add	r1, r1, #1	@ D.44243, pH264Ctx_69(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	movcs	r2, r0	@ i, D.44243
	cmp	r3, r1	@ D.44236, D.44243
	str	r2, [r6, #244]	@ i, pH264Ctx_69(D)->CurrSlice.listXsize
	movcs	r3, r1	@ i, D.44243
	cmp	r2, #32	@ i,
	str	r3, [r6, #248]	@ i, pH264Ctx_69(D)->CurrSlice.listXsize
	bhi	.L892	@,
	add	r2, r2, #6720	@ D.44237, i,
	add	r1, r4, #27136	@ D.44249, pH264Ctx,
	add	r2, r2, #38	@ D.44237, D.44237,
	add	r1, r1, #28	@ D.44249, D.44249,
	mov	r0, #0	@ tmp670,
	add	r2, r4, r2, lsl #2	@ ivtmp.930, pH264Ctx, D.44237,
.L891:
	str	r0, [r2, #4]!	@ tmp670, MEM[base: _266, offset: 0B]
	cmp	r2, r1	@ ivtmp.930, D.44249
	bne	.L891	@,
.L892:
	cmp	r3, #32	@ i,
	bhi	.L890	@,
	add	r3, r3, #6784	@ D.44237, i,
	add	r2, r4, #27136	@ D.44249, pH264Ctx,
	add	r3, r3, #7	@ D.44237, D.44237,
	add	r2, r2, #160	@ D.44249, D.44249,
	mov	r1, #0	@ tmp669,
	add	r4, r4, r3, lsl #2	@ ivtmp.918, pH264Ctx, D.44237,
.L893:
	str	r1, [r4, #4]!	@ tmp669, MEM[base: _205, offset: 0B]
	cmp	r4, r2	@ ivtmp.918, D.44249
	bne	.L893	@,
.L890:
	mov	r0, #0	@ D.44240,
.L946:
	add	sp, sp, #220	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L833:
	cmp	r7, #0	@ pH264Ctx_69(D)->CurrPic.structure,
	add	r3, r0, #24576	@ tmp664, pH264Ctx,
	str	r3, [sp, #12]	@ tmp664, %sfp
	beq	.L854	@,
	ldr	r10, [r3, #2056]	@ D.44243, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	r10, #0	@ D.44243,
	beq	.L963	@,
	add	r9, r0, #26368	@ ivtmp.1123, pH264Ctx,
	mov	r5, #0	@ j,
	add	r9, r9, #124	@ ivtmp.1123, ivtmp.1123,
	mov	r3, r5	@ i, j
	mov	r1, r9	@ ivtmp.1134, ivtmp.1123
.L873:
	ldr	r2, [r1, #4]!	@ D.44242, MEM[base: _458, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ _196->is_used, _196->is_used
	cmp	r0, #0	@ _196->is_used,
	beq	.L872	@,
	add	r0, sp, #216	@ tmp845,,
	ldr	ip, [r8, #980]	@ pH264Ctx_69(D)->CurrPic.thispoc, pH264Ctx_69(D)->CurrPic.thispoc
	add	lr, r0, r5, lsl #2	@ tmp526, tmp845, j,
	ldr	r0, [r2, #524]	@ _196->poc, _196->poc
	cmp	ip, r0	@ pH264Ctx_69(D)->CurrPic.thispoc, _196->poc
	strge	r2, [lr, #-192]	@ D.44242, fs_list0
	addge	r5, r5, #1	@ j, j,
.L872:
	cmp	r3, r10	@ i, D.44243
	bne	.L873	@,
	add	fp, sp, #24	@ tmp661,,
	ldr	r3, .L968+8	@,
	mov	r2, #4	@,
	mov	r1, r5	@, j
	mov	r0, fp	@, tmp661
	bl	qsort	@
	ldr	r3, [sp, #12]	@ tmp664, %sfp
	ldr	r7, [r3, #2056]	@ D.44243, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	r7, #0	@ D.44243,
	beq	.L957	@,
.L898:
	mov	r1, r9	@ ivtmp.1123, ivtmp.1123
	mov	r3, #0	@ i,
	mov	r9, r5	@ j, j
.L876:
	ldr	r2, [r1, #4]!	@ D.44242, MEM[base: _453, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ _206->is_used, _206->is_used
	cmp	r0, #0	@ _206->is_used,
	beq	.L875	@,
	add	r0, sp, #216	@ tmp847,,
	ldr	ip, [r8, #980]	@ pH264Ctx_69(D)->CurrPic.thispoc, pH264Ctx_69(D)->CurrPic.thispoc
	add	lr, r0, r9, lsl #2	@ tmp538, tmp847, j,
	ldr	r0, [r2, #524]	@ _206->poc, _206->poc
	cmp	ip, r0	@ pH264Ctx_69(D)->CurrPic.thispoc, _206->poc
	strlt	r2, [lr, #-192]	@ D.44242, fs_list0
	addlt	r9, r9, #1	@ j, j,
.L875:
	cmp	r3, r7	@ i, D.44243
	bne	.L876	@,
	rsb	r7, r5, r9	@ D.44243, j, j
	mov	r10, r5, asl #2	@ D.44237, j,
	add	r0, fp, r10	@, tmp661, D.44237
	ldr	r3, .L968+12	@,
	mov	r1, r7	@, D.44243
	mov	r2, #4	@,
	bl	qsort	@
	cmp	r5, #0	@ j,
	addeq	ip, sp, #88	@ tmp663,,
	beq	.L877	@,
.L895:
	add	ip, sp, #88	@ tmp663,,
	mov	r2, fp	@ ivtmp.1111, tmp661
	add	r7, ip, r7, lsl #2	@ ivtmp.1117, tmp663, D.44243,
	mov	r3, #0	@ j,
.L878:
	add	r3, r3, #1	@ j, j,
	ldr	r1, [r2], #4	@ D.44242, MEM[base: _448, offset: 0B]
	cmp	r3, r5	@ j, j
	str	r1, [r7], #4	@ D.44242, MEM[base: _449, offset: 0B]
	bcc	.L878	@,
.L877:
	cmp	r9, r5	@ j, j
	bls	.L879	@,
	add	r10, fp, r10	@ ivtmp.1098, tmp661, D.44237
	mov	r3, ip	@ ivtmp.1104, tmp663
.L880:
	add	r5, r5, #1	@ j, j,
	ldr	r2, [r10], #4	@ D.44242, MEM[base: _439, offset: 0B]
	cmp	r5, r9	@ j, j
	str	r2, [r3], #4	@ D.44242, MEM[base: _440, offset: 0B]
	bne	.L880	@,
.L879:
	add	r5, r4, #26880	@ ivtmp.990, pH264Ctx,
	add	r10, r4, #20480	@ D.44246, pH264Ctx,
	add	r5, r5, #156	@ ivtmp.990, ivtmp.990,
	mov	r7, #0	@ tmp550,
	mov	r1, fp	@, tmp661
	str	r7, [r6, #244]	@ tmp550, pH264Ctx_69(D)->CurrSlice.listXsize
	str	r7, [r6, #248]	@ tmp550, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r2, r9	@, j
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.44243, pH264Ctx_69(D)->CurrPic.structure
	mov	r3, r5	@, ivtmp.990
	str	r7, [sp, #4]	@ tmp550,
	add	r10, r10, #244	@ D.44246, D.44246,
	str	r10, [sp]	@ D.44246,
	str	ip, [sp, #20]	@ tmp663, %sfp
	bl	GenPiclistfromFrmlist	@
	add	r2, r4, #20480	@ D.44246, pH264Ctx,
	add	r3, r4, #27136	@ D.44245, pH264Ctx,
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.44243, pH264Ctx_69(D)->CurrPic.structure
	add	r3, r3, #32	@ D.44245, D.44245,
	mov	lr, r2	@ D.44246, D.44246
	mov	r2, r9	@, j
	ldr	ip, [sp, #20]	@ tmp663, %sfp
	str	r7, [sp, #4]	@ tmp550,
	str	r3, [sp, #16]	@ D.44245, %sfp
	mov	r1, ip	@, tmp663
	add	ip, lr, #248	@ D.44246, D.44246,
	str	ip, [sp]	@ D.44246,
	str	ip, [sp, #20]	@ D.44246, %sfp
	bl	GenPiclistfromFrmlist	@
	ldr	r3, [sp, #12]	@ tmp664, %sfp
	ldr	r9, [r3, #2060]	@ listltidx, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r9, r7	@ listltidx,
	addeq	fp, sp, #152	@ tmp667,,
	beq	.L881	@,
	add	r3, r4, #26368	@ ivtmp.1080, pH264Ctx,
	add	fp, sp, #152	@ tmp667,,
	add	r3, r3, #188	@ ivtmp.1080, ivtmp.1080,
	mov	r2, fp	@ ivtmp.1090, tmp667
.L882:
	add	r7, r7, #1	@ i, i,
	ldr	r1, [r3, #4]!	@ MEM[base: _431, offset: 0B], MEM[base: _431, offset: 0B]
	cmp	r7, r9	@ i, listltidx
	str	r1, [r2], #4	@ MEM[base: _431, offset: 0B], MEM[base: _432, offset: 0B]
	bne	.L882	@,
.L881:
	ldr	r3, .L968+16	@,
	mov	r2, #4	@,
	mov	r1, r9	@, listltidx
	mov	r0, fp	@, tmp667
	bl	qsort	@
	mov	r7, #1	@ tmp578,
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.44243, pH264Ctx_69(D)->CurrPic.structure
	mov	r3, r5	@, ivtmp.990
	mov	r2, r9	@, listltidx
	mov	r1, fp	@, tmp667
	str	r10, [sp]	@ D.44246,
	str	r7, [sp, #4]	@ tmp578,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.44243, pH264Ctx_69(D)->CurrPic.structure
	mov	r2, r9	@, listltidx
	mov	r1, fp	@, tmp667
	ldr	ip, [sp, #20]	@ D.44246, %sfp
	ldr	r3, [sp, #16]	@, %sfp
	str	r7, [sp, #4]	@ tmp578,
	str	ip, [sp]	@ D.44246,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [r6, #244]	@ D.44236, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r3, [r6, #248]	@ D.44236, pH264Ctx_69(D)->CurrSlice.listXsize
	rsb	r1, r3, r2	@ D.44239, D.44236, D.44236
	clz	r1, r1	@ D.44239, D.44239
	mov	r1, r1, lsr #5	@ D.44239, D.44239,
.L871:
	cmp	r2, #1	@ D.44236,
	movls	r1, #0	@, tmp594
	andhi	r1, r1, #1	@,, tmp594, D.44239
	cmp	r1, #0	@ tmp594,
	beq	.L883	@,
	cmp	r2, #0	@ D.44236,
	ldr	r1, [sp, #12]	@ tmp664, %sfp
	beq	.L884	@,
	ldr	r7, [r1, #2460]	@ D.44244, pH264Ctx_69(D)->pListX
	ldr	r1, [r1, #2592]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
	cmp	r7, r1	@ D.44244, pH264Ctx_69(D)->pListX
	bne	.L883	@,
	add	r0, r4, #27136	@ ivtmp.999, pH264Ctx,
	mov	r1, #0	@ j,
	add	r0, r0, #32	@ ivtmp.999, ivtmp.999,
	b	.L885	@
.L886:
	ldr	lr, [r5, #4]!	@ MEM[base: _299, offset: 0B], MEM[base: _299, offset: 0B]
	ldr	ip, [r0, #4]!	@ MEM[base: _270, offset: 0B], MEM[base: _270, offset: 0B]
	cmp	lr, ip	@ MEM[base: _299, offset: 0B], MEM[base: _270, offset: 0B]
	bne	.L883	@,
.L885:
	add	r1, r1, #1	@ j, j,
	cmp	r1, r2	@ j, D.44236
	bne	.L886	@,
.L887:
	ldr	r0, [sp, #12]	@ tmp664, %sfp
	ldr	r1, [r0, #2596]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
	str	r7, [r0, #2596]	@ D.44244, pH264Ctx_69(D)->pListX
	str	r1, [r0, #2592]	@ pH264Ctx_69(D)->pListX, pH264Ctx_69(D)->pListX
.L883:
	orrs	r1, r2, r3	@ tmp826, D.44236, D.44236
	bne	.L848	@,
.L849:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.44240,
	b	.L946	@
.L854:
	ldr	fp, [r3, #2056]	@ D.44243, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	fp, #0	@ D.44243,
	beq	.L857	@,
	add	r9, r0, #26368	@ ivtmp.1123, pH264Ctx,
	mov	r3, r7	@ i, j
	add	r9, r9, #124	@ ivtmp.1123, ivtmp.1123,
	mov	r1, r9	@ ivtmp.1069, ivtmp.1123
	b	.L859	@
.L858:
	cmp	r3, fp	@ i, D.44243
	beq	.L964	@,
.L859:
	ldr	r2, [r1, #4]!	@ D.44242, MEM[base: _423, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _140->is_reference, _140->is_reference
	cmp	r0, #3	@ _140->is_reference,
	bne	.L858	@,
	add	r0, r7, #6720	@ tmp450, j,
	ldr	ip, [r2, #416]	@ _140->frame.poc, _140->frame.poc
	add	r0, r0, #38	@ tmp450, tmp450,
	ldr	lr, [r8, #984]	@ pH264Ctx_69(D)->CurrPic.framepoc, pH264Ctx_69(D)->CurrPic.framepoc
	add	r2, r2, #400	@ D.44244, D.44242,
	add	r0, r4, r0, lsl #2	@ tmp451, pH264Ctx, tmp450,
	cmp	lr, ip	@ pH264Ctx_69(D)->CurrPic.framepoc, _140->frame.poc
	addge	r7, r7, #1	@ j, j,
	strge	r2, [r0, #4]	@ D.44244, pH264Ctx_69(D)->pListX
	cmp	r3, fp	@ i, D.44243
	bne	.L859	@,
.L964:
	add	r5, r4, #26880	@ ivtmp.990, pH264Ctx,
	ldr	r3, .L968+20	@,
	add	r5, r5, #156	@ ivtmp.990, ivtmp.990,
	mov	r2, #4	@,
	mov	r1, r7	@, j
	mov	r0, r5	@, ivtmp.990
	bl	qsort	@
	ldr	r3, [sp, #12]	@ tmp664, %sfp
	ldr	r10, [r3, #2056]	@ D.44243, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	r10, #0	@ D.44243,
	beq	.L956	@,
.L896:
	mov	fp, r7	@ j, j
	mov	r3, #0	@ i,
	b	.L862	@
.L861:
	cmp	r3, r10	@ i, D.44243
	beq	.L965	@,
.L862:
	ldr	r2, [r9, #4]!	@ D.44242, MEM[base: _315, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ _152->is_reference, _152->is_reference
	cmp	r1, #3	@ _152->is_reference,
	bne	.L861	@,
	add	r1, fp, #6720	@ tmp466, j,
	ldr	r0, [r2, #416]	@ _152->frame.poc, _152->frame.poc
	add	r1, r1, #38	@ tmp466, tmp466,
	ldr	ip, [r8, #984]	@ pH264Ctx_69(D)->CurrPic.framepoc, pH264Ctx_69(D)->CurrPic.framepoc
	add	r2, r2, #400	@ D.44244, D.44242,
	add	r1, r4, r1, lsl #2	@ tmp467, pH264Ctx, tmp466,
	cmp	ip, r0	@ pH264Ctx_69(D)->CurrPic.framepoc, _152->frame.poc
	addlt	fp, fp, #1	@ j, j,
	strlt	r2, [r1, #4]	@ D.44244, pH264Ctx_69(D)->pListX
	cmp	r3, r10	@ i, D.44243
	bne	.L862	@,
.L965:
	add	r9, r7, #6720	@ D.44237, j,
	rsb	r10, r7, fp	@ D.44243, j, j
	add	r9, r9, #38	@ D.44237, D.44237,
	mov	r2, #4	@,
	ldr	r3, .L968+24	@,
	mov	r1, r10	@, D.44243
	add	r0, r4, r9, lsl #2	@ tmp474, pH264Ctx, D.44237,
	add	r8, r4, fp, lsl #2	@ tmp483, pH264Ctx, j,
	add	r0, r0, r2	@, tmp474,
	add	r8, r8, #26880	@ D.44234, tmp483,
	bl	qsort	@
	cmp	r7, #0	@ j,
	add	r8, r8, #156	@ D.44234, D.44234,
	beq	.L864	@,
.L894:
	add	r10, r10, #6784	@ D.44237, D.44243,
	add	r2, r4, #26880	@ ivtmp.1039, pH264Ctx,
	add	r10, r10, #7	@ D.44237, D.44237,
	add	r2, r2, #152	@ ivtmp.1039, ivtmp.1039,
	mov	r3, #0	@ j,
	add	r10, r4, r10, lsl #2	@ ivtmp.1048, pH264Ctx, D.44237,
.L865:
	add	r3, r3, #1	@ j, j,
	ldr	r1, [r2, #4]!	@ D.44244, MEM[base: _309, offset: 0B]
	cmp	r3, r7	@ j, j
	str	r1, [r10, #4]!	@ D.44244, MEM[base: _308, offset: 0B]
	bcc	.L865	@,
.L864:
	cmp	fp, r7	@ j, j
	bls	.L866	@,
	add	r3, r4, #27136	@ ivtmp.1029, pH264Ctx,
	add	r9, r4, r9, lsl #2	@ ivtmp.1020, pH264Ctx, D.44237,
	add	r3, r3, #28	@ ivtmp.1029, ivtmp.1029,
.L867:
	add	r7, r7, #1	@ j, j,
	ldr	r2, [r9, #4]!	@ D.44244, MEM[base: _23, offset: 0B]
	cmp	r7, fp	@ j, j
	str	r2, [r3, #4]!	@ D.44244, MEM[base: _3, offset: 0B]
	bne	.L867	@,
.L866:
	ldr	r3, [sp, #12]	@ tmp664, %sfp
	str	fp, [r6, #248]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	str	fp, [r6, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r1, [r3, #2060]	@ D.44243, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r1, #0	@ D.44243,
	beq	.L903	@,
	add	r0, r4, #26368	@ ivtmp.1008, pH264Ctx,
	mov	r7, fp	@ j, j
	add	r0, r0, #188	@ ivtmp.1008, ivtmp.1008,
	mov	r3, #0	@ i,
	b	.L870	@
.L869:
	cmp	r3, r1	@ i, D.44243
	beq	.L966	@,
.L870:
	ldr	r2, [r0, #4]!	@ D.44242, MEM[base: _59, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ _175->is_used, _175->is_used
	cmp	ip, #3	@ _175->is_used,
	bne	.L869	@,
	ldrb	ip, [r2, #401]	@ zero_extendqisi2	@ _175->frame.is_long_term, _175->frame.is_long_term
	cmp	ip, #1	@ _175->frame.is_long_term,
	bne	.L869	@,
	add	ip, r4, r7, lsl #2	@ D.44233, pH264Ctx, j,
	cmp	r3, r1	@ i, D.44243
	add	ip, ip, #24576	@ tmp503, D.44233,
	add	r2, r2, #400	@ D.44244, D.44242,
	add	r7, r7, #1	@ j, j,
	str	r2, [ip, #2460]	@ D.44244, MEM[(struct H264_CTX_S *)_460 + 27036B]
	str	r2, [ip, #2592]	@ D.44244, MEM[(struct H264_CTX_S *)_460 + 27168B]
	bne	.L870	@,
.L966:
	rsb	r1, fp, r7	@ D.44243, j, j
.L868:
	mov	r0, r8	@, D.44234
	ldr	r3, .L968+4	@,
	mov	r2, #4	@,
	bl	qsort	@
	ldr	r0, [r6, #244]	@ D.44243, pH264Ctx_69(D)->CurrSlice.listXsize
	ldr	r3, .L968+4	@,
	mov	r2, #4	@,
	rsb	r1, r0, r7	@, D.44243, j
	add	r0, r4, r0, lsl #2	@ tmp514, pH264Ctx, D.44243,
	add	r0, r0, #27136	@, tmp514,
	add	r0, r0, #32	@,,
	bl	qsort	@
	mov	r3, r7	@ D.44236, j
	str	r7, [r6, #248]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r2, r7	@ D.44236, D.44236
	str	r7, [r6, #244]	@ j, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r1, #1	@ D.44239,
	b	.L871	@
.L960:
	add	r2, r0, #24576	@ tmp664, pH264Ctx,
	str	r2, [sp, #12]	@ tmp664, %sfp
	ldr	lr, [r2, #2056]	@ D.44243, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	lr, #0	@ D.44243,
	moveq	r7, lr	@ j, D.44243
	beq	.L836	@,
	add	r1, r0, #26368	@ ivtmp.979, pH264Ctx,
	mov	r7, r3	@ j, pH264Ctx_69(D)->CurrSlice.slice_type
	add	r1, r1, #124	@ ivtmp.979, ivtmp.979,
.L845:
	ldr	r2, [r1, #4]!	@ D.44242, MEM[base: _269, offset: 0B]
	add	r0, sp, #216	@ tmp832,,
	add	ip, r0, r7, lsl #2	@ tmp384, tmp832, j,
	add	r3, r3, #1	@ i, i,
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ _100->is_reference, _100->is_reference
	cmp	r0, #0	@ _100->is_reference,
	strne	r2, [ip, #-192]	@ D.44242, fs_list0
	addne	r7, r7, #1	@ j, j,
	cmp	r3, lr	@ i, D.44243
	bne	.L845	@,
.L836:
	mov	r1, r7	@, j
	ldr	r3, .L968+28	@,
	mov	r2, #4	@,
	add	r0, sp, #24	@ tmp833,,
	bl	qsort	@
	add	r10, r4, #26880	@ D.44245, pH264Ctx,
	add	r10, r10, #156	@ D.44245, D.44245,
	add	r9, r4, #20480	@ D.44246, pH264Ctx,
	mov	r5, #0	@ tmp390,
	mov	r2, r7	@, j
	str	r5, [r6, #244]	@ tmp390, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r3, r10	@, D.44245
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.44243, pH264Ctx_69(D)->CurrPic.structure
	add	r9, r9, #244	@ D.44246, D.44246,
	add	r1, sp, #24	@ tmp834,,
	str	r5, [sp, #4]	@ tmp390,
	str	r9, [sp]	@ D.44246,
	bl	GenPiclistfromFrmlist	@
	ldr	r3, [sp, #12]	@ tmp664, %sfp
	ldr	r7, [r3, #2060]	@ listltidx, pH264Ctx_69(D)->DPB.ltref_frames_in_buffer
	cmp	r7, r5	@ listltidx,
	addeq	fp, sp, #152	@ tmp667,,
	beq	.L846	@,
	add	r3, r4, #26368	@ ivtmp.963, pH264Ctx,
	add	fp, sp, #152	@ tmp667,,
	add	r3, r3, #188	@ ivtmp.963, ivtmp.963,
	mov	r2, fp	@ ivtmp.973, tmp667
.L847:
	add	r5, r5, #1	@ i, i,
	ldr	r1, [r3, #4]!	@ MEM[base: _11, offset: 0B], MEM[base: _11, offset: 0B]
	cmp	r5, r7	@ i, listltidx
	str	r1, [r2], #4	@ MEM[base: _11, offset: 0B], MEM[base: _10, offset: 0B]
	bne	.L847	@,
.L846:
	ldr	r3, .L968+16	@,
	mov	r2, #4	@,
	mov	r1, r7	@, listltidx
	mov	r0, fp	@, tmp667
	bl	qsort	@
	ldrb	r0, [r8, #555]	@ zero_extendqisi2	@ D.44243, pH264Ctx_69(D)->CurrPic.structure
	mov	r3, r10	@, D.44245
	mov	r2, r7	@, listltidx
	mov	ip, #1	@ tmp408,
	mov	r1, fp	@, tmp667
	stmia	sp, {r9, ip}	@,,
	bl	GenPiclistfromFrmlist	@
	ldr	r2, [r6, #244]	@ D.44236, pH264Ctx_69(D)->CurrSlice.listXsize
	mov	r3, #0	@ tmp413,
	str	r3, [r6, #248]	@ tmp413, pH264Ctx_69(D)->CurrSlice.listXsize
	cmp	r2, #0	@ D.44236,
	bne	.L848	@,
.L962:
	ldr	r3, [r4]	@ pH264Ctx_69(D)->pstExtraData, pH264Ctx_69(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _123->s32DecOrderOutput, _123->s32DecOrderOutput
	cmp	r3, #2	@ _123->s32DecOrderOutput,
	bne	.L849	@,
	ldrb	r3, [r8, #555]	@ zero_extendqisi2	@ D.44241, pH264Ctx_69(D)->CurrPic.structure
	cmp	r3, #0	@ D.44241,
	beq	.L967	@,
	cmp	r3, #1	@ D.44241,
	ldr	r2, [sp, #12]	@ tmp664, %sfp
	ldr	r3, [r8, #960]	@ pH264Ctx_69(D)->CurrPic.frame_store, pH264Ctx_69(D)->CurrPic.frame_store
	addeq	r3, r3, #436	@ D.44244, pH264Ctx_69(D)->CurrPic.frame_store,
	addne	r3, r3, #472	@ D.44244, pH264Ctx_69(D)->CurrPic.frame_store,
	str	r3, [r2, #2460]	@ D.44244, pH264Ctx_69(D)->pListX
.L851:
	mov	r3, #0	@ D.44236,
	mov	r2, #1	@ D.44236,
	b	.L848	@
.L967:
	ldr	r2, [sp, #12]	@ tmp664, %sfp
	ldr	r3, [r8, #960]	@ pH264Ctx_69(D)->CurrPic.frame_store, pH264Ctx_69(D)->CurrPic.frame_store
	add	r3, r3, #400	@ D.44244, pH264Ctx_69(D)->CurrPic.frame_store,
	str	r3, [r2, #2460]	@ D.44244, pH264Ctx_69(D)->pListX
	b	.L851	@
.L884:
	ldr	r7, [r1, #2592]	@ D.44244, pH264Ctx_69(D)->pListX
	b	.L887	@
.L957:
	mov	r10, r5, asl #2	@ D.44237, j,
	ldr	r3, .L968+12	@,
	add	r0, fp, r10	@, tmp661, D.44237
	mov	r2, #4	@,
	mov	r1, r7	@, D.44243
	bl	qsort	@
	subs	r9, r5, #0	@ j, j
	bne	.L895	@,
.L953:
	add	ip, sp, #88	@ tmp663,,
	b	.L879	@
.L956:
	add	r9, r7, #6720	@ D.44237, j,
	mov	r2, #4	@,
	add	r9, r9, #38	@ D.44237, D.44237,
	ldr	r3, .L968+24	@,
	mov	r1, r10	@, D.44243
	add	r8, r4, r9, lsl #2	@ tmp631, pH264Ctx, D.44237,
	add	r8, r8, r2	@ D.44234, tmp631,
	mov	r0, r8	@, D.44234
	bl	qsort	@
	subs	fp, r7, #0	@ j, j
	bne	.L894	@,
	b	.L866	@
.L901:
	mov	r5, r7	@ j, j
	b	.L840	@
.L963:
	add	fp, sp, #24	@ tmp661,,
	ldr	r3, .L968+8	@,
	mov	r2, #4	@,
	mov	r1, r10	@, D.44243
	mov	r0, fp	@, tmp661
	bl	qsort	@
	ldr	r3, [sp, #12]	@ tmp664, %sfp
	ldr	r7, [r3, #2056]	@ D.44243, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	r7, #0	@ D.44243,
	addne	r9, r4, #26368	@ ivtmp.1123, pH264Ctx,
	movne	r5, r10	@ j, D.44243
	addne	r9, r9, #124	@ ivtmp.1123, ivtmp.1123,
	bne	.L898	@,
	ldr	r3, .L968+12	@,
	mov	r2, #4	@,
	mov	r1, r7	@, D.44243
	mov	r0, fp	@, tmp661
	mov	r9, r7	@ j, tmp1
	bl	qsort	@
	b	.L953	@
.L857:
	add	r5, r0, #26880	@ ivtmp.990, pH264Ctx,
	ldr	r3, .L968+20	@,
	add	r5, r5, #156	@ ivtmp.990, ivtmp.990,
	mov	r2, #4	@,
	mov	r1, fp	@, D.44243
	mov	r0, r5	@, ivtmp.990
	bl	qsort	@
	ldr	r3, [sp, #12]	@ tmp664, %sfp
	ldr	r10, [r3, #2056]	@ D.44243, pH264Ctx_69(D)->DPB.ref_frames_in_buffer
	cmp	r10, #0	@ D.44243,
	addne	r9, r4, #26368	@ ivtmp.1123, pH264Ctx,
	movne	r7, fp	@ j, D.44243
	addne	r9, r9, #124	@ ivtmp.1123, ivtmp.1123,
	bne	.L896	@,
	ldr	r3, .L968+24	@,
	mov	r2, #4	@,
	mov	r1, r10	@, D.44243
	mov	r0, r5	@, ivtmp.990
	mov	fp, r10	@ j, tmp1
	bl	qsort	@
	mov	r8, r5	@ D.44234, ivtmp.990
	b	.L866	@
.L900:
	mov	r7, ip	@ j, D.44243
	b	.L837	@
.L903:
	mov	r7, fp	@ j, j
	b	.L868	@
.L969:
	.align	2
.L968:
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
	ldr	r3, .L972	@ tmp113,
	ldr	r3, [r3]	@ g_PrintEnable, g_PrintEnable
	tst	r3, #8192	@ g_PrintEnable,
	bxeq	lr	@
	b	DumpList.part.5	@
.L973:
	.align	2
.L972:
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
	ldr	r4, [r3, #2052]	@ D.44271, pH264Ctx_8(D)->DPB.used_size
	cmp	r4, #0	@ D.44271,
	beq	.L979	@,
	ldr	r3, [r3, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	add	r2, r0, #49152	@ tmp132, pH264Ctx,
	ldr	r5, [r2, #980]	@ curr_poc, pH264Ctx_8(D)->CurrPic.thispoc
	ldr	lr, [r3, #524]	@ _11->poc, _11->poc
	rsb	lr, lr, r5	@ D.44273, _11->poc, curr_poc
	cmp	lr, #0	@ nearest_poc_diff,
	rsblt	lr, lr, #0	@ nearest_poc_diff, D.44273,
	cmp	r4, #1	@ D.44271,
	bls	.L980	@,
	add	r1, r0, #26368	@ ivtmp.1150, pH264Ctx,
	mov	r2, #1	@ i,
	add	r1, r1, #64	@ ivtmp.1150, ivtmp.1150,
	mov	r0, #0	@ nearest_pic_id,
.L978:
	ldr	ip, [r1, #4]!	@ D.44272, MEM[base: _1, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	r3, [ip, #524]	@ _15->poc, _15->poc
	rsb	r3, r3, r5	@ D.44273, _15->poc, curr_poc
	cmp	r3, #0	@ nearest_poc_diff,
	rsblt	r3, r3, #0	@ nearest_poc_diff, D.44273,
	cmp	r3, lr	@ nearest_poc_diff, nearest_poc_diff
	ldrlt	r0, [ip, #184]	@ nearest_pic_id, _15->fs_image.image_id
	movlt	lr, r3	@ nearest_poc_diff, nearest_poc_diff
	cmp	r2, r4	@ i, D.44271
	bne	.L978	@,
	ldmfd	sp!, {r4, r5, pc}	@
.L980:
	mov	r0, #0	@ nearest_pic_id,
	ldmfd	sp!, {r4, r5, pc}	@
.L979:
	mvn	r0, #0	@ D.44270,
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
	bne	.L1015	@,
	ldr	lr, [r3, #244]	@ D.44324, pH264Ctx_10(D)->CurrSlice.listXsize
	add	r5, r0, #26880	@ ivtmp.1176, pH264Ctx,
	mov	r7, ip	@ j, i
	cmp	lr, #0	@ D.44324,
	mov	r4, r5	@ ivtmp.1179, ivtmp.1176
	mov	r6, r5	@ ivtmp.1163, ivtmp.1179
	add	r4, r4, #32	@ ivtmp.1179, ivtmp.1179,
	add	r5, r5, #28	@ ivtmp.1176, ivtmp.1176,
	add	r6, r6, #152	@ ivtmp.1163, ivtmp.1163,
	beq	.L991	@,
.L1017:
	mov	r2, r6	@ ivtmp.1163, ivtmp.1163
	mov	r0, #32	@ minrefidx,
	mov	r3, #0	@ j,
	b	.L989	@
.L988:
	add	r3, r3, #1	@ j, j,
	cmp	r3, lr	@ j, D.44324
	beq	.L1016	@,
.L989:
	ldr	r1, [r2, #4]!	@ MEM[base: _61, offset: 0B], MEM[base: _61, offset: 0B]
	ldr	r1, [r1, #4]	@ _34->frame_store, _34->frame_store
	ldr	r1, [r1, #552]	@ _35->apc_idc, _35->apc_idc
	cmp	r1, ip	@ _35->apc_idc, i
	bne	.L988	@,
	cmp	r0, r3	@ minrefidx, j
	movcs	r0, r3	@ minrefidx, j
	add	r3, r3, #1	@ j, j,
	cmp	r3, lr	@ j, D.44324
	str	r0, [r4, #-4]	@ minrefidx, MEM[base: _67, offset: 4294967292B]
	str	r0, [r5, #4]	@ minrefidx, MEM[base: _57, offset: 4B]
	bne	.L989	@,
.L1016:
	cmp	r0, #31	@ minrefidx,
	bhi	.L991	@,
.L990:
	add	ip, ip, #1	@ i, i,
	add	r5, r5, #8	@ ivtmp.1176, ivtmp.1176,
	cmp	ip, #16	@ i,
	add	r4, r4, #8	@ ivtmp.1179, ivtmp.1179,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	lr, #0	@ D.44324,
	bne	.L1017	@,
.L991:
	str	r7, [r4, #-4]	@ j, MEM[base: _18, offset: 4294967292B]
	str	r7, [r5, #4]	@ j, MEM[base: _68, offset: 4B]
	b	.L990	@
.L1015:
	ldr	r5, [r3, #244]	@ D.44324, pH264Ctx_10(D)->CurrSlice.listXsize
	add	r6, r0, #26880	@ ivtmp.1196, pH264Ctx,
	mov	lr, #0	@ i,
	cmp	r5, #0	@ D.44324,
	mov	r7, r6	@ ivtmp.1183, ivtmp.1196
	mov	r8, lr	@ j, i
	add	r6, r6, #28	@ ivtmp.1196, ivtmp.1196,
	add	r7, r7, #152	@ ivtmp.1183, ivtmp.1183,
	beq	.L995	@,
.L1019:
	mov	r1, r7	@ ivtmp.1183, ivtmp.1183
	mov	r4, #32	@ minrefidx,
	mov	r2, #0	@ j,
	b	.L993	@
.L992:
	add	r2, r2, #1	@ j, j,
	cmp	r2, r5	@ j, D.44324
	beq	.L1018	@,
.L993:
	ldr	r3, [r1, #4]!	@ D.44322, MEM[base: _45, offset: 0B]
	ldr	ip, [r3, #4]	@ _14->frame_store, _14->frame_store
	ldrb	r0, [r3]	@ zero_extendqisi2	@ _14->structure, _14->structure
	ldr	r3, [ip, #552]	@ _15->apc_idc, _15->apc_idc
	mov	r3, r3, asl #1	@ D.44324, _15->apc_idc,
	cmp	r0, #2	@ _14->structure,
	orreq	r3, r3, #1	@,, D.44324, D.44324
	cmp	r3, lr	@ D.44324, i
	bne	.L992	@,
	cmp	r4, r2	@ minrefidx, j
	movcs	r4, r2	@ minrefidx, j
	add	r2, r2, #1	@ j, j,
	cmp	r2, r5	@ j, D.44324
	str	r4, [r6]	@ minrefidx, MEM[base: _6, offset: 0B]
	bne	.L993	@,
.L1018:
	cmp	r4, #31	@ minrefidx,
	bhi	.L995	@,
.L994:
	add	lr, lr, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.1196, ivtmp.1196,
	cmp	lr, #32	@ i,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r5, #0	@ D.44324,
	bne	.L1019	@,
.L995:
	str	r8, [r6]	@ j, MEM[base: _4, offset: 0B]
	b	.L994	@
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
	add	r5, r6, #20480	@ tmp151, pH264Ctx,
	mvn	r4, #0	@ tmp129,
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ pH264Ctx_4(D)->CurrSlice.slice_type, pH264Ctx_4(D)->CurrSlice.slice_type
	str	r4, [r5, #1828]	@ tmp129, pH264Ctx_4(D)->CurrSlice.picid_refidx0
	cmp	r3, #2	@ pH264Ctx_4(D)->CurrSlice.slice_type,
	str	r0, [r5, #1832]	@, pH264Ctx_4(D)->CurrSlice.picid_nearpoc
	beq	.L1034	@,
	mov	r0, r6	@, pH264Ctx
	bl	InitListX	@
	cmp	r0, #0	@,
	bne	.L1035	@,
	ldr	r4, .L1038	@ tmp152,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4]	@ g_PrintEnable, g_PrintEnable
	tst	r3, #8192	@ g_PrintEnable,
	bne	.L1036	@,
.L1024:
	mov	r0, r6	@, pH264Ctx
	bl	ReorderListX	@
	mov	r0, r6	@, pH264Ctx
	bl	RepairList	@
	cmp	r0, #0	@,
	bne	.L1026	@,
	mov	r0, r6	@, pH264Ctx
	bl	FindMinRefIdx	@
	add	r3, r6, #24576	@ tmp143, pH264Ctx,
	ldr	r3, [r3, #2460]	@ D.44338, pH264Ctx_4(D)->pListX
	cmp	r3, #0	@ D.44338,
	ldrne	r3, [r3, #4]	@ _24->frame_store, _24->frame_store
	mvneq	r3, #0	@ D.44334,
	ldrne	r3, [r3, #184]	@ D.44334, _25->fs_image.image_id
	str	r3, [r5, #1828]	@ D.44334, pH264Ctx_4(D)->CurrSlice.picid_refidx0
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r4]	@ g_PrintEnable, g_PrintEnable
	ands	r4, r4, #8192	@ D.44337, g_PrintEnable,
	bne	.L1037	@,
	mov	r0, #0	@ D.44334,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1037:
	mov	r0, r6	@, pH264Ctx
	bl	DumpList.part.5	@
	mov	r0, #0	@ D.44334,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1034:
	mov	r0, #0	@ tmp135,
	str	r0, [r5, #244]	@ tmp135, pH264Ctx_4(D)->CurrSlice.listXsize
	str	r0, [r5, #248]	@ tmp135, pH264Ctx_4(D)->CurrSlice.listXsize
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1036:
	mov	r0, r6	@, pH264Ctx
	bl	DumpList.part.5	@
	b	.L1024	@
.L1026:
	mvn	r0, #0	@ D.44334,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1035:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.44334, tmp129
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1039:
	.align	2
.L1038:
	.word	g_PrintEnable
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
	beq	.L1058	@,
.L1041:
	ldr	r3, [r7, #2164]	@ pH264Ctx_10(D)->TotalFsNum, pH264Ctx_10(D)->TotalFsNum
	cmp	r3, #0	@ pH264Ctx_10(D)->TotalFsNum,
	addne	r5, r9, #27392	@ ivtmp.1234, pH264Ctx,
	movne	r8, #0	@ i,
	addne	r5, r5, #124	@ ivtmp.1234, ivtmp.1234,
	movne	r6, r8	@ tmp155, i
	beq	.L1048	@,
.L1047:
	sub	r4, r5, #16	@ ivtmp.1220, ivtmp.1234,
	strb	r6, [r5, #-211]	@ tmp155, MEM[base: _51, offset: 4294967085B]
	strb	r6, [r5, #-210]	@ tmp155, MEM[base: _51, offset: 4294967086B]
.L1046:
	ldr	r1, [r4, #4]!	@ D.44380, MEM[base: _38, offset: 0B]
	cmp	r1, #0	@ D.44380,
	beq	.L1045	@,
	ldr	r0, [r7, #3688]	@, pH264Ctx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r4]	@ tmp155, MEM[base: _38, offset: 0B]
.L1045:
	cmp	r4, r5	@ ivtmp.1220, ivtmp.1234
	bne	.L1046	@,
	ldr	r3, [r7, #2164]	@ pH264Ctx_10(D)->TotalFsNum, pH264Ctx_10(D)->TotalFsNum
	add	r8, r8, #1	@ i, i,
	add	r5, r5, #560	@ ivtmp.1234, ivtmp.1234,
	cmp	r3, r8	@ pH264Ctx_10(D)->TotalFsNum, i
	bhi	.L1047	@,
.L1048:
	ldr	r1, [r7, #2168]	@ D.44378, pH264Ctx_10(D)->TotalPmvNum
	cmp	r1, #0	@ D.44378,
	beq	.L1059	@,
	add	r2, r9, #51200	@ ivtmp.1206, pH264Ctx,
	mov	r3, #0	@ i,
	add	r2, r2, #44	@ ivtmp.1206, ivtmp.1206,
	mov	r0, r3	@ tmp153, i
.L1049:
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ tmp153, MEM[base: _19, offset: 0B]
	cmp	r3, r1	@ i, D.44378
	bne	.L1049	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1058:
	add	r0, r9, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	b	.L1041	@
.L1059:
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
	ldr	r0, [r6, #1272]	@ D.44389, pH264Ctx_4(D)->CurWidthInMb
	.pad #8
	sub	sp, sp, #8	@,,
	mla	r3, lr, r3, ip	@ tmp170, tmp169, pH264Ctx_4(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_4(D)->PPS
	ldr	r1, [r6, #1276]	@ D.44389, pH264Ctx_4(D)->CurHeightInMb
	ldr	r3, [r3, #28]	@ pPPS_8->seq_parameter_set_id, pPPS_8->seq_parameter_set_id
	mla	r4, r4, r3, r2	@ pSPS, tmp173, pPPS_8->seq_parameter_set_id, pH264Ctx_4(D)->SPS
	ldrb	r3, [r4, #18]	@ zero_extendqisi2	@ D.44389, pSPS_12->frame_mbs_only_flag
	ldr	ip, [r4, #3960]	@ pSPS_12->pic_height_in_map_units_minus1, pSPS_12->pic_height_in_map_units_minus1
	rsb	r3, r3, #2	@ D.44389, D.44389,
	ldr	r2, [r4, #3956]	@ pSPS_12->pic_width_in_mbs_minus1, pSPS_12->pic_width_in_mbs_minus1
	mla	r3, ip, r3, r3	@ newh, pSPS_12->pic_height_in_map_units_minus1, D.44389, D.44389
	add	r2, r2, #1	@ neww, pSPS_12->pic_width_in_mbs_minus1,
	cmp	r2, r0	@ neww, D.44389
	cmpeq	r3, r1	@, newh, D.44389
	movne	ip, #1	@ tmp190,
	moveq	ip, #0	@ tmp190,
	bne	.L1062	@,
	add	r8, r7, #24576	@ tmp192, pH264Ctx,
	ldr	lr, [r4, #3980]	@ D.44394, pSPS_12->dpb_size_plus1
	ldr	r8, [r8, #2048]	@ pH264Ctx_4(D)->DPB.size, pH264Ctx_4(D)->DPB.size
	add	r8, r8, #1	@ D.44387, pH264Ctx_4(D)->DPB.size,
	cmp	lr, r8	@ D.44394, D.44387
	movls	r2, ip	@ D.44387, tmp190
	movls	r0, r2	@ ReRangeFlg, D.44387
	bls	.L1063	@,
.L1062:
	ldr	ip, .L1068	@ tmp195,
	ldr	ip, [ip]	@ D.44392, g_event_report
	cmp	ip, #0	@ D.44392,
	beq	.L1067	@,
	add	lr, r7, #49152	@ tmp206, pH264Ctx,
	mov	r0, r0, asl #4	@ tmp197, D.44389,
	mov	r1, r1, asl #4	@ tmp199, D.44389,
	strh	r0, [sp]	@ movhi	@ tmp197, para
	strh	r1, [sp, #2]	@ movhi	@ tmp199, para
	mov	r2, r2, asl #4	@ tmp201, neww,
	mov	r3, r3, asl #4	@ tmp203, newh,
	strh	r2, [sp, #4]	@ movhi	@ tmp201, para
	ldr	r0, [lr, #3688]	@, pH264Ctx_4(D)->ChanID
	mov	r2, sp	@,
	strh	r3, [sp, #6]	@ movhi	@ tmp203, para
	mov	r1, #2	@,
	blx	ip	@ D.44392
	ldr	lr, [r4, #3980]	@ D.44394, pSPS_12->dpb_size_plus1
	mov	r2, #1	@ D.44387,
	mov	r0, r2	@ ReRangeFlg, D.44387
.L1063:
	add	r3, r7, #16384	@ tmp209, pH264Ctx,
	ldr	r6, [r6, #2044]	@ pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id
	ldr	ip, [r4, #744]	@ pSPS_12->seq_parameter_set_id, pSPS_12->seq_parameter_set_id
	ldr	r1, [r3, #1184]	@ pH264Ctx_4(D)->CurrSPS.dpb_size_plus1, pH264Ctx_4(D)->CurrSPS.dpb_size_plus1
	cmp	r6, ip	@ pH264Ctx_4(D)->CurrSPS.seq_parameter_set_id, pSPS_12->seq_parameter_set_id
	cmpeq	r1, lr	@, pH264Ctx_4(D)->CurrSPS.dpb_size_plus1, D.44394
	movne	r3, #1	@ dpb_changed,
	moveq	r3, #0	@ dpb_changed,
	orr	r2, r3, r2	@ dpb_changed, dpb_changed, D.44387
	str	r2, [r5]	@ dpb_changed, *p_dpb_changed_59(D)
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1067:
	mov	r2, #1	@ D.44387,
	ldr	lr, [r4, #3980]	@ D.44394, pSPS_12->dpb_size_plus1
	mov	r0, r2	@ ReRangeFlg, D.44387
	b	.L1063	@
.L1069:
	.align	2
.L1068:
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
	sub	r2, r2, #5	@ D.44422, pH264Ctx_22(D)->CurrSlice.nal_unit_type,
	clz	r2, r2	@ D.44422, D.44422
	mov	r2, r2, lsr #5	@ D.44422, D.44422,
	ldr	r3, [r3, #28]	@ pps_29->seq_parameter_set_id, pps_29->seq_parameter_set_id
	mla	r5, r5, r3, lr	@ sps, tmp245, pps_29->seq_parameter_set_id, pH264Ctx_22(D)->SPS
	ldr	r1, [r5, #2908]	@ D.44424, sps_33->pic_order_cnt_type
	ldr	r3, [r5, #2904]	@ sps_33->log2_max_frame_num_minus4, sps_33->log2_max_frame_num_minus4
	cmp	r1, ip	@ D.44424,
	ldr	lr, [r5, #2912]	@ D.44424, sps_33->log2_max_pic_order_cnt_lsb_minus4
	add	r3, r3, #4	@ D.44424, sps_33->log2_max_frame_num_minus4,
	mov	r3, ip, asl r3	@ MaxFrameNum, tmp249,
	beq	.L1072	@,
	bcc	.L1073	@,
	cmp	r1, #2	@ D.44424,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r2, #0	@ D.44422,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	bne	.L1129	@,
	ldr	r1, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r1, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	bne	.L1106	@,
	ldr	r2, [r4, #3476]	@ D.44424, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r0, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	ldr	r1, [r4, #3484]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	cmp	r2, r0	@ D.44424, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	addcc	r1, r1, r3	@ D.44424, D.44424, MaxFrameNum
	strcc	r1, [r4, #3480]	@ D.44424, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	bcs	.L1108	@,
.L1109:
	add	r3, r1, r2	@ D.44424, D.44424, D.44424
	str	r3, [r4, #3468]	@ D.44424, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r0, [r6, #232]	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	mov	r3, r3, asl #1	@ D.44424, D.44424,
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc,
	subeq	r3, r3, #1	@ D.44426, D.44424,
	str	r3, [r4, #3456]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ThisPOC
	ldrb	r0, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1112	@,
	str	r3, [r4, #3452]	@ D.44426, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r3, [r4, #3448]	@ D.44426, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3444]	@ D.44426, pH264Ctx_22(D)->CurrPOC.toppoc
.L1105:
	str	r2, [r4, #3472]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r1, [r4, #3484]	@ D.44426, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1073:
	cmp	r2, #0	@ D.44422,
	add	lr, lr, #4	@ D.44424, D.44424,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	mov	ip, ip, asl lr	@ MaxPicOrderCntLsb, tmp249,
	bne	.L1079	@,
	ldr	r3, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	bne	.L1077	@,
	ldr	lr, [r4, #3420]	@ D.44430, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	ldr	r1, [r4, #3424]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	mov	r2, lr	@ D.44424, D.44430
.L1078:
	ldr	r0, [r4, #3412]	@ D.44424, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	cmp	r0, r1	@ D.44424, D.44424
	bcs	.L1076	@,
	rsb	r3, r0, r1	@ D.44424, D.44424, D.44424
	cmp	r3, ip, lsr #1	@ D.44424, MaxPicOrderCntLsb,
	addcs	r2, r2, ip	@ D.44424, D.44424, MaxPicOrderCntLsb
	strcs	r2, [r4, #3428]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	bcc	.L1076	@,
.L1080:
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1082	@,
.L1131:
	ldr	r3, [r4, #3416]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom
	add	r2, r2, r0	@ D.44426, D.44424, D.44424
	str	r2, [r4, #3444]	@ D.44426, pH264Ctx_22(D)->CurrPOC.toppoc
	add	r3, r2, r3	@ D.44426, D.44426, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt_bottom
	str	r3, [r4, #3448]	@ D.44426, pH264Ctx_22(D)->CurrPOC.bottompoc
	cmp	r3, r2	@ D.44426, D.44426
	movge	r3, r2	@ D.44426, D.44426
	str	r3, [r4, #3456]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ThisPOC
.L1083:
	ldr	r2, [r4, #3476]	@ D.44424, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r1, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r3, [r4, #3452]	@ D.44426, pH264Ctx_22(D)->CurrPOC.framepoc
	cmp	r2, r1	@ D.44424, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	strne	r2, [r4, #3472]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	ldr	r3, [r6, #232]	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.nal_ref_idc,
	ldrne	r2, [r4, #3412]	@ pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	ldrne	r3, [r4, #3428]	@ pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	strne	r2, [r4, #3424]	@ pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	strne	r3, [r4, #3420]	@ pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1072:
	cmp	r2, #0	@ D.44422,
	add	r4, r0, #16384	@ tmp538, pH264Ctx,
	movne	r3, #0	@ tmp335,
	strne	r3, [r4, #3480]	@ tmp335, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	bne	.L1087	@,
	ldr	r1, [r4, #3436]	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5, pH264Ctx_22(D)->CurrPOC.last_has_mmco_5
	cmp	r1, #0	@ pH264Ctx_22(D)->CurrPOC.last_has_mmco_5,
	beq	.L1088	@,
	mov	r3, r2	@ D.44424, D.44422
	str	r2, [r4, #3484]	@ D.44422, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	str	r2, [r4, #3472]	@ D.44422, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
.L1089:
	str	r3, [r4, #3480]	@ D.44424, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
.L1087:
	ldr	r3, [r5, #2924]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, #0	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle,
	beq	.L1091	@,
	ldr	r3, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r0, [r4, #3480]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	add	r0, r3, r0	@ D.44428, pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r0, [r4, #3468]	@ D.44428, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r7, [r6, #232]	@ D.44428, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
	cmp	r7, #0	@ D.44428,
	bne	.L1093	@,
	cmp	r0, #0	@ D.44428,
	beq	.L1094	@,
	sub	r0, r0, #1	@ D.44428, D.44428,
	str	r0, [r4, #3468]	@ D.44428, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
.L1093:
	mov	r3, #0	@ tmp381,
	str	r3, [r4, #3500]	@ tmp381, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ D.44424, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r3	@ D.44424,
	bgt	.L1114	@,
	cmp	r0, #0	@ D.44428,
	beq	.L1097	@,
.L1132:
	sub	r8, r0, #1	@ D.44424, D.44428,
	mov	r0, r8	@, D.44424
	bl	__aeabi_uidiv	@
	mov	r9, r0	@ D.44424,
	mov	r0, r8	@, D.44424
	str	r9, [r4, #3492]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PicOrderCntCycleCnt
	ldr	r1, [r5, #2924]	@, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	bl	__aeabi_uidivmod	@
	ldr	r0, [r4, #3500]	@ pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	mul	r0, r0, r9	@ D.44426, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle, D.44424
	str	r0, [r4, #3496]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ D.44426,
	str	r1, [r4, #3488]	@ D.44426, pH264Ctx_22(D)->CurrPOC.FrameNumInPicOrderCntCycle
	blt	.L1098	@,
	add	r2, r5, #2912	@ ivtmp.1245, sps,
	mov	r3, #0	@ i,
	add	r2, r2, #12	@ ivtmp.1245, ivtmp.1245,
.L1099:
	add	r3, r3, #1	@ i, i,
	ldr	ip, [r2, #4]!	@ MEM[base: _236, offset: 0B], MEM[base: _236, offset: 0B]
	cmp	r1, r3	@ D.44426, i
	add	r0, r0, ip	@ D.44426, D.44426, MEM[base: _236, offset: 0B]
	str	r0, [r4, #3496]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	bge	.L1099	@,
.L1098:
	cmp	r7, #0	@ D.44428,
	ldreq	r3, [r5, #2916]	@ sps_33->offset_for_non_ref_pic, sps_33->offset_for_non_ref_pic
	addeq	r0, r0, r3	@ D.44426, D.44426, sps_33->offset_for_non_ref_pic
	streq	r0, [r4, #3496]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	bne	.L1101	@,
	ldr	r2, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	ldr	r1, [r4, #3464]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	add	r2, r0, r2	@ D.44426, D.44426, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	str	r2, [r4, #3444]	@ D.44426, pH264Ctx_22(D)->CurrPOC.toppoc
	ldr	r3, [r5, #2920]	@ sps_33->offset_for_top_to_bottom_field, sps_33->offset_for_top_to_bottom_field
	add	r3, r2, r3	@ D.44426, D.44426, sps_33->offset_for_top_to_bottom_field
	add	r0, r3, r1	@ D.44426, D.44426, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	str	r0, [r4, #3448]	@ D.44426, pH264Ctx_22(D)->CurrPOC.bottompoc
	cmp	r0, r2	@ D.44426, D.44426
	movge	r0, r2	@ D.44426, D.44426
	str	r0, [r4, #3456]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ThisPOC
.L1102:
	ldr	r2, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r3, [r4, #3480]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r0, [r4, #3452]	@ D.44426, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r2, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	str	r3, [r4, #3484]	@ pH264Ctx_22(D)->CurrPOC.FrameNumOffset, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1077:
	ldr	lr, [r4, #3440]	@ D.44430, pH264Ctx_22(D)->CurrPOC.last_pic_bottom_field
	cmp	lr, #0	@ D.44430,
	beq	.L1130	@,
.L1079:
	ldr	r0, [r4, #3412]	@ D.44424, pH264Ctx_22(D)->CurrPOC.pic_order_cnt_lsb
	mov	r3, #0	@ tmp254,
	mov	lr, r3	@ D.44430, tmp254
	mov	r2, r1	@ D.44424, D.44424
	str	r3, [r4, #3420]	@ tmp254, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	str	r3, [r4, #3424]	@ tmp254, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
.L1076:
	cmp	r0, r1	@ D.44424, D.44424
	bls	.L1081	@,
	rsb	r1, r1, r0	@ D.44424, D.44424, D.44424
	cmp	r1, ip, lsr #1	@ D.44424, MaxPicOrderCntLsb,
	rsbhi	r2, ip, r2	@ D.44424, MaxPicOrderCntLsb, D.44424
	strhi	r2, [r4, #3428]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	bhi	.L1080	@,
.L1081:
	str	lr, [r4, #3428]	@ D.44430, pH264Ctx_22(D)->CurrPOC.PicOrderCntMsb
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	beq	.L1131	@,
.L1082:
	ldrb	r3, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	add	r3, r2, r0	@ D.44426, D.44424, D.44424
	streq	r3, [r4, #3444]	@ D.44426, pH264Ctx_22(D)->CurrPOC.toppoc
	strne	r3, [r4, #3448]	@ D.44426, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3456]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1083	@
.L1129:
	mov	r3, #0	@ tmp463,
	ldr	r2, [r4, #3476]	@ D.44424, pH264Ctx_22(D)->CurrPOC.frame_num
	mov	r1, r3	@ D.44426, tmp463
	str	r3, [r4, #3480]	@ tmp463, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	str	r3, [r4, #3448]	@ tmp463, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r3, [r4, #3444]	@ tmp463, pH264Ctx_22(D)->CurrPOC.toppoc
	str	r3, [r4, #3452]	@ tmp463, pH264Ctx_22(D)->CurrPOC.framepoc
	str	r3, [r4, #3456]	@ tmp463, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1105	@
.L1091:
	str	r3, [r4, #3468]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, pH264Ctx_22(D)->CurrPOC.AbsFrameNum
	ldr	r7, [r6, #232]	@ D.44428, pH264Ctx_22(D)->CurrSlice.nal_ref_idc
.L1094:
	mov	r0, #0	@ tmp536,
	str	r0, [r4, #3500]	@ tmp536, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r3, [r5, #2924]	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, r0	@ sps_33->num_ref_frames_in_pic_order_cnt_cycle,
	ble	.L1097	@,
.L1114:
	add	ip, r5, #2912	@ ivtmp.1256, sps,
	mov	r3, #0	@ D.44426,
	add	ip, ip, #12	@ ivtmp.1256, ivtmp.1256,
	mov	r2, r3	@ i, D.44426
.L1096:
	ldr	r1, [ip, #4]!	@ MEM[base: _55, offset: 0B], MEM[base: _55, offset: 0B]
	add	r2, r2, #1	@ i, i,
	add	r3, r3, r1	@ D.44426, D.44426, MEM[base: _55, offset: 0B]
	str	r3, [r4, #3500]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ D.44424, sps_33->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r2	@ D.44424, i
	bgt	.L1096	@,
	cmp	r0, #0	@ D.44428,
	bne	.L1132	@,
.L1097:
	mov	r0, #0	@ tmp409,
	str	r0, [r4, #3496]	@ tmp409, pH264Ctx_22(D)->CurrPOC.ExpectedPicOrderCnt
	b	.L1098	@
.L1101:
	ldrb	r3, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	ldrne	r2, [r5, #2920]	@ sps_33->offset_for_top_to_bottom_field, sps_33->offset_for_top_to_bottom_field
	ldreq	r3, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	ldrne	r3, [r4, #3460]	@ pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	addne	r0, r0, r2	@ D.44426, D.44426, sps_33->offset_for_top_to_bottom_field
	addeq	r0, r0, r3	@ D.44426, D.44426, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	streq	r0, [r4, #3444]	@ D.44426, pH264Ctx_22(D)->CurrPOC.toppoc
	addne	r0, r0, r3	@ D.44426, D.44426, pH264Ctx_22(D)->CurrPOC.delta_pic_order_cnt
	strne	r0, [r4, #3448]	@ D.44426, pH264Ctx_22(D)->CurrPOC.bottompoc
	str	r0, [r4, #3456]	@ D.44426, pH264Ctx_22(D)->CurrPOC.ThisPOC
	b	.L1102	@
.L1088:
	ldr	r1, [r4, #3476]	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.frame_num
	ldr	r2, [r4, #3472]	@ pH264Ctx_22(D)->CurrPOC.PreviousFrameNum, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	cmp	r1, r2	@ pH264Ctx_22(D)->CurrPOC.frame_num, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	bcs	.L1090	@,
	ldr	r2, [r4, #3484]	@ pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	add	r3, r3, r2	@ D.44424, MaxFrameNum, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	str	r3, [r4, #3480]	@ D.44424, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	b	.L1087	@
.L1112:
	ldrb	r0, [r6, #202]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag, pH264Ctx_22(D)->CurrSlice.bottom_field_flag
	str	r3, [r4, #3452]	@ D.44426, pH264Ctx_22(D)->CurrPOC.framepoc
	cmp	r0, #0	@ pH264Ctx_22(D)->CurrSlice.bottom_field_flag,
	streq	r3, [r4, #3444]	@ D.44426, pH264Ctx_22(D)->CurrPOC.toppoc
	strne	r3, [r4, #3448]	@ D.44426, pH264Ctx_22(D)->CurrPOC.bottompoc
	b	.L1105	@
.L1106:
	str	r2, [r4, #3472]	@ D.44422, pH264Ctx_22(D)->CurrPOC.PreviousFrameNum
	mov	r1, r2	@ D.44424, D.44422
	str	r2, [r4, #3484]	@ D.44422, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	ldr	r2, [r4, #3476]	@ D.44424, pH264Ctx_22(D)->CurrPOC.frame_num
.L1108:
	str	r1, [r4, #3480]	@ D.44424, pH264Ctx_22(D)->CurrPOC.FrameNumOffset
	b	.L1109	@
.L1130:
	ldr	r3, [r4, #3444]	@ D.44424, pH264Ctx_22(D)->CurrPOC.toppoc
	mov	r2, r1	@ D.44424, D.44424
	str	lr, [r4, #3420]	@ D.44430, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntMsb
	mov	r1, r3	@ D.44424, D.44424
	str	r3, [r4, #3424]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PrevPicOrderCntLsb
	b	.L1078	@
.L1090:
	ldr	r3, [r4, #3484]	@ D.44424, pH264Ctx_22(D)->CurrPOC.PrevFrameNumOffset
	b	.L1089	@
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
	ldrb	r3, [r6, #555]	@ zero_extendqisi2	@ D.44484, pH264Ctx_19(D)->CurrPic.structure
	mla	r1, r4, ip, r1	@ tmp217, tmp216, pH264Ctx_19(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_19(D)->PPS
	cmp	r3, #0	@ D.44484,
	ldr	r1, [r1, #28]	@ _24->seq_parameter_set_id, _24->seq_parameter_set_id
	mla	r2, lr, r1, r2	@ tmp224, tmp223, _24->seq_parameter_set_id, pH264Ctx_19(D)->SPS
	add	lr, r0, #24576	@ tmp317, pH264Ctx,
	ldr	r2, [r2, #2904]	@ pSPS_27->log2_max_frame_num_minus4, pSPS_27->log2_max_frame_num_minus4
	add	r2, r2, #4	@ D.44482, pSPS_27->log2_max_frame_num_minus4,
	mov	r7, r7, asl r2	@ MaxFrameNum, tmp227,
	beq	.L1134	@,
	sub	r5, r3, #1	@ D.44485, D.44484,
	sub	r4, r3, #2	@ D.44485, D.44484,
	ldr	r3, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	clz	r5, r5	@ D.44485, D.44485
	clz	r4, r4	@ D.44485, D.44485
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer,
	mov	r5, r5, lsr #5	@ D.44485, D.44485,
	addne	ip, r0, #26368	@ ivtmp.1302, pH264Ctx,
	mov	r4, r4, lsr #5	@ D.44485, D.44485,
	movne	r2, #0	@ i,
	addne	ip, ip, #124	@ ivtmp.1302, ivtmp.1302,
	beq	.L1154	@,
.L1153:
	ldr	r1, [ip, #4]!	@ D.44477, MEM[base: _127, offset: 0B]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _64->is_reference, _64->is_reference
	cmp	r3, #0	@ _64->is_reference,
	beq	.L1148	@,
	ldr	r3, [r1, #512]	@ D.44482, _64->frame_num
	ldr	r8, [r6, #968]	@ pH264Ctx_19(D)->CurrPic.frame_num, pH264Ctx_19(D)->CurrPic.frame_num
	cmp	r3, r8	@ D.44482, pH264Ctx_19(D)->CurrPic.frame_num
	rsbhi	r3, r7, r3	@ D.44482, MaxFrameNum, D.44482
	str	r3, [r1, #516]	@ D.44482, _64->frame_num_wrap
	ldr	r3, [ip]	@ D.44477, MEM[base: _127, offset: 0B]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ D.44484, _73->is_reference
	tst	r1, #1	@ D.44484,
	beq	.L1151	@,
	ldr	r8, [r3, #436]	@ *_73, *_73
	bic	r8, r8, #-16777216	@ D.44482, *_73,
	bic	r8, r8, #255	@ D.44482, D.44482,
	cmp	r8, #65536	@ D.44482,
	ldreq	r1, [r3, #516]	@ _73->frame_num_wrap, _73->frame_num_wrap
	addeq	r1, r5, r1, lsl #1	@ D.44483, D.44485, _73->frame_num_wrap,
	streq	r1, [r3, #448]	@ D.44483, _73->top_field.pic_num
	ldreq	r3, [ip]	@ D.44477, MEM[base: _127, offset: 0B]
	ldreqb	r1, [r3, #2]	@ zero_extendqisi2	@ D.44484, _147->is_reference
.L1151:
	tst	r1, #2	@ D.44484,
	beq	.L1148	@,
	ldr	r1, [r3, #472]	@ *_148, *_148
	bic	r1, r1, #-16777216	@ D.44482, *_148,
	bic	r1, r1, #255	@ D.44482, D.44482,
	cmp	r1, #65536	@ D.44482,
	ldreq	r1, [r3, #516]	@ _148->frame_num_wrap, _148->frame_num_wrap
	addeq	r1, r4, r1, lsl #1	@ D.44483, D.44485, _148->frame_num_wrap,
	streq	r1, [r3, #484]	@ D.44483, _148->bottom_field.pic_num
.L1148:
	ldr	r3, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i, i,
	cmp	r3, r2	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, i
	bhi	.L1153	@,
.L1154:
	ldr	r3, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer,
	beq	.L1179	@,
	add	r0, r0, #26368	@ ivtmp.1291, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #188	@ ivtmp.1291, ivtmp.1291,
.L1159:
	ldr	r1, [r0, #4]!	@ D.44477, MEM[base: _13, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ D.44484, _93->is_reference
	cmp	r2, #0	@ D.44484,
	beq	.L1156	@,
	tst	r2, #1	@ D.44484,
	beq	.L1157	@,
	ldr	ip, [r1, #436]	@ *_93, *_93
	bic	ip, ip, #-16777216	@ D.44482, *_93,
	bic	ip, ip, #255	@ D.44482, D.44482,
	cmp	ip, #256	@ D.44482,
	ldreq	r2, [r1, #520]	@ _93->long_term_frame_idx, _93->long_term_frame_idx
	addeq	r2, r5, r2, lsl #1	@ D.44482, D.44485, _93->long_term_frame_idx,
	streq	r2, [r1, #444]	@ D.44482, _93->top_field.long_term_pic_num
	ldreq	r1, [r0]	@ D.44477, MEM[base: _13, offset: 0B]
	ldreqb	r2, [r1, #2]	@ zero_extendqisi2	@ D.44484, _7->is_reference
.L1157:
	tst	r2, #2	@ D.44484,
	beq	.L1156	@,
	ldr	r2, [r1, #472]	@ *_1, *_1
	bic	r2, r2, #-16777216	@ D.44482, *_1,
	bic	r2, r2, #255	@ D.44482, D.44482,
	cmp	r2, #256	@ D.44482,
	ldreq	r2, [r1, #520]	@ _1->long_term_frame_idx, _1->long_term_frame_idx
	addeq	r2, r4, r2, lsl #1	@ D.44482, D.44485, _1->long_term_frame_idx,
	streq	r2, [r1, #480]	@ D.44482, _1->bottom_field.long_term_pic_num
.L1156:
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bhi	.L1159	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1134:
	ldr	r2, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	cmp	r2, #0	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer,
	addne	r1, r0, #26368	@ ivtmp.1280, pH264Ctx,
	addne	r1, r1, #124	@ ivtmp.1280, ivtmp.1280,
	bne	.L1143	@,
.L1144:
	ldr	r3, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer,
	beq	.L1180	@,
	add	r0, r0, #26368	@ ivtmp.1269, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #188	@ ivtmp.1269, ivtmp.1269,
	b	.L1146	@
.L1145:
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bls	.L1181	@,
.L1146:
	ldr	r2, [r0, #4]!	@ D.44477, MEM[base: _17, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ _55->is_reference, _55->is_reference
	cmp	r1, #3	@ _55->is_reference,
	bne	.L1145	@,
	ldr	r1, [r2, #400]	@ *_55, *_55
	bic	r1, r1, #-16777216	@ D.44482, *_55,
	bic	r1, r1, #255	@ D.44482, D.44482,
	cmp	r1, #256	@ D.44482,
	ldreq	r1, [r2, #520]	@ _55->long_term_frame_idx, _55->long_term_frame_idx
	streq	r1, [r2, #408]	@ _55->long_term_frame_idx, _55->frame.long_term_pic_num
	ldr	r2, [lr, #2060]	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, pH264Ctx_19(D)->DPB.ltref_frames_in_buffer
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ltref_frames_in_buffer, i
	bhi	.L1146	@,
.L1181:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1182:
	ldr	ip, [r2, #400]	@ *_39, *_39
	bic	ip, ip, #-16777216	@ D.44482, *_39,
	bic	ip, ip, #255	@ D.44482, D.44482,
	cmp	ip, #65536	@ D.44482,
	bne	.L1140	@,
	ldr	ip, [r2, #512]	@ D.44482, _39->frame_num
	ldr	r4, [r6, #968]	@ pH264Ctx_19(D)->CurrPic.frame_num, pH264Ctx_19(D)->CurrPic.frame_num
	rsb	r5, r7, ip	@ D.44482, MaxFrameNum, D.44482
	cmp	ip, r4	@ D.44482, pH264Ctx_19(D)->CurrPic.frame_num
	strhi	r5, [r2, #516]	@ D.44482, _39->frame_num_wrap
	strls	ip, [r2, #516]	@ D.44482, _39->frame_num_wrap
	ldr	r2, [r1]	@ D.44477, MEM[base: _122, offset: 0B]
	ldr	ip, [r2, #516]	@ _50->frame_num_wrap, _50->frame_num_wrap
	str	ip, [r2, #412]	@ _50->frame_num_wrap, _50->frame.pic_num
.L1140:
	ldr	r2, [lr, #2056]	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, pH264Ctx_19(D)->DPB.ref_frames_in_buffer
	add	r3, r3, #1	@ i, i,
	cmp	r2, r3	@ pH264Ctx_19(D)->DPB.ref_frames_in_buffer, i
	bls	.L1144	@,
.L1143:
	ldr	r2, [r1, #4]!	@ D.44477, MEM[base: _122, offset: 0B]
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ _39->is_reference, _39->is_reference
	cmp	ip, #3	@ _39->is_reference,
	bne	.L1140	@,
	b	.L1182	@
.L1180:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1179:
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
	beq	.L1188	@,
	add	r3, r0, #24576	@ tmp122, pH264Ctx,
	ldr	ip, [r3, #2052]	@ D.44502, pH264Ctx_5(D)->DPB.used_size
	cmp	ip, #0	@ D.44502,
	beq	.L1188	@,
	ldr	r3, [r3, #1856]	@ pH264Ctx_5(D)->DPB.fs, pH264Ctx_5(D)->DPB.fs
	cmp	r3, r1	@ pH264Ctx_5(D)->DPB.fs, pFrameStore
	beq	.L1190	@,
	add	r0, r0, #26368	@ ivtmp.1315, pH264Ctx,
	mov	r3, #0	@ i,
	add	r0, r0, #64	@ ivtmp.1315, ivtmp.1315,
	b	.L1185	@
.L1186:
	ldr	r2, [r0, #4]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r2, r1	@ MEM[base: _14, offset: 0B], pFrameStore
	beq	.L1190	@,
.L1185:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.44502
	bne	.L1186	@,
.L1188:
	mov	r0, #1	@ D.44500,
	bx	lr	@
.L1190:
	mov	r0, #0	@ D.44500,
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	vfmw_dprint_nothing	@
	movw	r3, #49728	@ tmp250,
	mov	r7, #0	@ tmp245,
	str	r7, [r5, #3612]	@ tmp245, pH264Ctx_22(D)->SliceParaNum
	add	r9, r4, #12288	@ tmp460, pH264Ctx,
	ldrd	r0, [r4, r3]	@ pH264Ctx_22(D)->CurrPic.fs_image.PTS, pH264Ctx, tmp250
	movw	r3, #51376	@ tmp247,
	add	r8, r4, #16384	@ tmp458, pH264Ctx,
	strd	r0, [r4, r3]	@ pH264Ctx_22(D)->CurrPic.fs_image.PTS, pH264Ctx, tmp247
	ldr	r0, [r5, #3608]	@ pH264Ctx_22(D)->DecSlicePara, pH264Ctx_22(D)->DecSlicePara
	ldr	r1, [r5, #740]	@ pH264Ctx_22(D)->CurrPic.fs_image.image_stride, pH264Ctx_22(D)->CurrPic.fs_image.image_stride
	ldr	r2, [r5, #976]	@ pH264Ctx_22(D)->CurrPic.nal_ref_idc, pH264Ctx_22(D)->CurrPic.nal_ref_idc
	ldrb	r3, [r5, #555]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrPic.structure, pH264Ctx_22(D)->CurrPic.structure
	str	r0, [r5, #3340]	@ pH264Ctx_22(D)->DecSlicePara, pH264Ctx_22(D)->DecPicPara.pFirstSlice
	str	r1, [r5, #3128]	@ pH264Ctx_22(D)->CurrPic.fs_image.image_stride, pH264Ctx_22(D)->DecPicPara.imgstride
	strb	r3, [r5, #2216]	@ pH264Ctx_22(D)->CurrPic.structure, pH264Ctx_22(D)->DecPicPara.pic_structure
	str	r2, [r5, #2232]	@ pH264Ctx_22(D)->CurrPic.nal_ref_idc, pH264Ctx_22(D)->DecPicPara.nal_ref_idc
	ldr	r1, [r5, #1012]	@ pH264Ctx_22(D)->CurrPic.pic_height_in_mb, pH264Ctx_22(D)->CurrPic.pic_height_in_mb
	ldrb	r2, [r9, #1319]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSPS.mb_adaptive_frame_field_flag, pH264Ctx_22(D)->CurrSPS.mb_adaptive_frame_field_flag
	ldr	r3, [r5, #1016]	@ pH264Ctx_22(D)->CurrPic.frame_height_in_mb, pH264Ctx_22(D)->CurrPic.frame_height_in_mb
	str	r1, [r5, #2236]	@ pH264Ctx_22(D)->CurrPic.pic_height_in_mb, pH264Ctx_22(D)->DecPicPara.pic_height_in_mb
	str	r2, [r5, #2248]	@ pH264Ctx_22(D)->CurrSPS.mb_adaptive_frame_field_flag, pH264Ctx_22(D)->DecPicPara.mb_adaptive_frame_field_flag
	str	r3, [r5, #2240]	@ pH264Ctx_22(D)->CurrPic.frame_height_in_mb, pH264Ctx_22(D)->DecPicPara.frame_height_in_mb
	ldr	r3, [r8, #1160]	@ pH264Ctx_22(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_22(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r3, r3, #1	@ D.44673, pH264Ctx_22(D)->CurrSPS.pic_width_in_mbs_minus1,
	str	r3, [r5, #2244]	@ D.44673, pH264Ctx_22(D)->DecPicPara.pic_width_in_mb
	ldrb	r3, [r9, #1318]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSPS.frame_mbs_only_flag, pH264Ctx_22(D)->CurrSPS.frame_mbs_only_flag
	strb	r3, [r5, #2219]	@ pH264Ctx_22(D)->CurrSPS.frame_mbs_only_flag, pH264Ctx_22(D)->DecPicPara.frame_mbs_only_flag
	ldr	r3, [r8, #1264]	@ pH264Ctx_22(D)->CurrPPS.transform_8x8_mode_flag, pH264Ctx_22(D)->CurrPPS.transform_8x8_mode_flag
	str	r3, [r5, #2252]	@ pH264Ctx_22(D)->CurrPPS.transform_8x8_mode_flag, pH264Ctx_22(D)->DecPicPara.transform_8x8_mode_flag
	ldrb	r3, [r8, #1204]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_22(D)->CurrPPS.entropy_coding_mode_flag
	str	r3, [r5, #2256]	@ pH264Ctx_22(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_22(D)->DecPicPara.entropy_coding_mode_flag
	ldr	r3, [r9, #2048]	@ pH264Ctx_22(D)->CurrSPS.chroma_format_idc, pH264Ctx_22(D)->CurrSPS.chroma_format_idc
	strb	r3, [r5, #2217]	@ pH264Ctx_22(D)->CurrSPS.chroma_format_idc, pH264Ctx_22(D)->DecPicPara.chroma_format_idc
	ldrb	r3, [r8, #1208]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrPPS.constrained_intra_pred_flag, pH264Ctx_22(D)->CurrPPS.constrained_intra_pred_flag
	str	r3, [r5, #2260]	@ pH264Ctx_22(D)->CurrPPS.constrained_intra_pred_flag, pH264Ctx_22(D)->DecPicPara.constrained_intra_pred_flag
	ldr	r3, [r8, #3456]	@ pH264Ctx_22(D)->CurrPOC.ThisPOC, pH264Ctx_22(D)->CurrPOC.ThisPOC
	str	r3, [r5, #2264]	@ pH264Ctx_22(D)->CurrPOC.ThisPOC, pH264Ctx_22(D)->DecPicPara.ThisPoc
	ldr	r3, [r8, #3444]	@ pH264Ctx_22(D)->CurrPOC.toppoc, pH264Ctx_22(D)->CurrPOC.toppoc
	str	r3, [r5, #2268]	@ pH264Ctx_22(D)->CurrPOC.toppoc, pH264Ctx_22(D)->DecPicPara.TopPoc
	ldr	r2, [r8, #3448]	@ pH264Ctx_22(D)->CurrPOC.bottompoc, pH264Ctx_22(D)->CurrPOC.bottompoc
	ldr	r3, [r5, #960]	@ pH264Ctx_22(D)->CurrPic.frame_store, pH264Ctx_22(D)->CurrPic.frame_store
	ldr	r0, [r5, #3688]	@, pH264Ctx_22(D)->ChanID
	str	r2, [r5, #2272]	@ pH264Ctx_22(D)->CurrPOC.bottompoc, pH264Ctx_22(D)->DecPicPara.BottomPoc
	ldr	r1, [r3, #508]	@, _64->logic_fs_id
	bl	FSP_GetLogicFs	@
	subs	r10, r0, #0	@ pstLogicFs,
	beq	.L1194	@,
	ldr	r3, [r10, #408]	@ pstLogicFs_67->pstDecodeFs, pstLogicFs_67->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_67->pstDecodeFs,
	beq	.L1194	@,
	ldr	r3, [r10, #412]	@ pstLogicFs_67->pstDispOutFs, pstLogicFs_67->pstDispOutFs
	cmp	r3, #0	@ pstLogicFs_67->pstDispOutFs,
	beq	.L1194	@,
	add	r3, r4, #51712	@, pH264Ctx,
	add	r2, r4, #51456	@, pH264Ctx,
	add	r1, r4, #51968	@, pH264Ctx,
	add	r3, r3, #220	@,,
	add	r2, r2, #220	@,,
	add	r1, r1, #220	@,,
	ldr	r0, [r5, #3688]	@, pH264Ctx_22(D)->ChanID
	add	r6, r4, #24576	@ tmp459, pH264Ctx,
	bl	FSP_GetDecFsAddrTab	@
	ldr	r3, [r10, #408]	@ pstLogicFs_67->pstDecodeFs, pstLogicFs_67->pstDecodeFs
	add	r2, r4, #51968	@, pH264Ctx,
	add	r1, r4, #52224	@, pH264Ctx,
	ldr	r0, [r5, #3688]	@, pH264Ctx_22(D)->ChanID
	add	r2, r2, #224	@,,
	ldr	r3, [r3, #4]	@ _77->PhyFsID, _77->PhyFsID
	add	r1, r1, #48	@,,
	str	r3, [r5, #2508]	@ _77->PhyFsID, pH264Ctx_22(D)->DecPicPara.CurrPicImgIdc
	bl	FSP_GetPmvAddrTab	@
	ldr	r3, [r5, #1028]	@ pH264Ctx_22(D)->CurrPic.pmv_address_idc, pH264Ctx_22(D)->CurrPic.pmv_address_idc
	str	r3, [r5, #2516]	@ pH264Ctx_22(D)->CurrPic.pmv_address_idc, pH264Ctx_22(D)->DecPicPara.CurrPicPmvIdc
	ldr	r3, [r10, #424]	@ pstLogicFs_67->HalfPmvOffset, pstLogicFs_67->HalfPmvOffset
	str	r3, [r5, #3124]	@ pstLogicFs_67->HalfPmvOffset, pH264Ctx_22(D)->DecPicPara.half_pmvblk_offset
	ldr	r3, [r10, #412]	@ pstLogicFs_67->pstDispOutFs, pstLogicFs_67->pstDispOutFs
	ldr	r3, [r3, #12]	@ _90->PhyAddr, _90->PhyAddr
	str	r3, [r5, #2512]	@ _90->PhyAddr, pH264Ctx_22(D)->DecPicPara.CurrPicImg2DAddr
	ldr	r3, [r10, #412]	@ pstLogicFs_67->pstDispOutFs, pstLogicFs_67->pstDispOutFs
	ldr	r3, [r3, #32]	@ _94->ChromOffset, _94->ChromOffset
	str	r3, [r5, #2520]	@ _94->ChromOffset, pH264Ctx_22(D)->DecPicPara.uv_offset
	ldr	r0, [r6, #2324]	@ D.44673, pH264Ctx_22(D)->APC.size
	cmp	r0, #0	@ D.44673,
	str	r0, [r5, #3332]	@ D.44673, pH264Ctx_22(D)->DecPicPara.ApcSize
	beq	.L1199	@,
	add	fp, r4, #26624	@ ivtmp.1443, pH264Ctx,
	add	r10, r4, #52224	@ ivtmp.1452, pH264Ctx,
	mov	r3, r7	@ i, tmp245
	mov	lr, fp	@ ivtmp.1459, ivtmp.1443
	mov	ip, r10	@ ivtmp.1466, ivtmp.1452
	mov	r1, fp	@ ivtmp.1473, ivtmp.1459
	mov	r2, r10	@ ivtmp.1480, ivtmp.1466
	add	fp, fp, #80	@ ivtmp.1443, ivtmp.1443,
	add	r10, r10, #64	@ ivtmp.1452, ivtmp.1452,
	add	lr, lr, #144	@ ivtmp.1459, ivtmp.1459,
	add	ip, ip, #128	@ ivtmp.1466, ivtmp.1466,
	add	r1, r1, #208	@ ivtmp.1473, ivtmp.1473,
	add	r2, r2, #192	@ ivtmp.1480, ivtmp.1480,
.L1198:
	ldr	r7, [fp, #4]!	@ D.44673, MEM[base: _226, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, D.44673
	str	r7, [r10, #4]!	@ D.44673, MEM[base: _227, offset: 0B]
	ldr	r7, [lr, #4]!	@ D.44673, MEM[base: _228, offset: 0B]
	str	r7, [ip, #4]!	@ D.44673, MEM[base: _229, offset: 0B]
	ldr	r7, [r1, #4]!	@ D.44673, MEM[base: _230, offset: 0B]
	str	r7, [r2, #4]!	@ D.44673, MEM[base: _231, offset: 0B]
	bne	.L1198	@,
.L1199:
	ldrb	r3, [r9, #1325]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSPS.seq_scaling_matrix_present_flag, pH264Ctx_22(D)->CurrSPS.seq_scaling_matrix_present_flag
	cmp	r3, #0	@ pH264Ctx_22(D)->CurrSPS.seq_scaling_matrix_present_flag,
	bne	.L1230	@,
	ldrb	r3, [r8, #1222]	@ zero_extendqisi2	@ D.44670, pH264Ctx_22(D)->CurrPPS.pic_scaling_matrix_present_flag
	cmp	r3, #0	@ D.44670,
	bne	.L1200	@,
	add	r2, r4, #51200	@ ivtmp.1376, pH264Ctx,
	ldr	ip, .L1231	@ tmp456,
	add	r2, r2, #224	@ ivtmp.1376, ivtmp.1376,
.L1201:
	and	r1, r3, #3	@ D.44673, i,
	add	r3, r3, #1	@ i, i,
	cmp	r3, #24	@ i,
	ldr	r1, [ip, r1, asl #2]	@ D.44673, quant_org
	str	r1, [r2, #4]!	@ D.44673, MEM[base: _171, offset: 0B]
	bne	.L1201	@,
	add	r1, r4, #51456	@ ivtmp.1362, pH264Ctx,
	mov	r3, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1362, ivtmp.1362,
.L1202:
	and	r2, r3, #15	@ D.44673, i,
	add	r3, r3, #1	@ i, i,
	cmp	r3, #32	@ i,
	add	r2, ip, r2, lsl #2	@ tmp403, tmp456, D.44673,
	ldr	r2, [r2, #16]	@ D.44673, quant8_org
	str	r2, [r1, #4]!	@ D.44673, MEM[base: _4, offset: 0B]
	bne	.L1202	@,
.L1207:
	cmp	r0, #0	@ D.44673,
	beq	.L1204	@,
	add	r9, r4, #52480	@ ivtmp.1337, pH264Ctx,
	add	r7, r4, #26624	@ ivtmp.1327, pH264Ctx,
	add	r7, r7, #84	@ ivtmp.1327, ivtmp.1327,
	mov	r8, #0	@ i,
	mov	r4, r9	@ ivtmp.1350, ivtmp.1337
	add	r9, r9, #140	@ ivtmp.1337, ivtmp.1337,
	add	r4, r4, #204	@ ivtmp.1350, ivtmp.1350,
.L1210:
	ldr	r2, [r7]	@, MEM[base: _69, offset: 0B]
	mov	r1, #0	@,
	ldr	r0, [r5, #3688]	@, pH264Ctx_22(D)->ChanID
	add	r8, r8, #1	@ i, i,
	bl	FSP_GetStoreType	@
	adds	r0, r0, #0	@ D.44681,,
	movne	r0, #1	@ D.44681,
	str	r0, [r9, #4]!	@ D.44681, MEM[base: _18, offset: 0B]
	ldr	r3, [r7], #4	@ D.44673, MEM[base: _69, offset: 0B]
	str	r3, [r4, #4]!	@ D.44673, MEM[base: _15, offset: 0B]
	ldr	r3, [r6, #2324]	@ pH264Ctx_22(D)->APC.size, pH264Ctx_22(D)->APC.size
	cmp	r3, r8	@ pH264Ctx_22(D)->APC.size, i
	bhi	.L1210	@,
.L1204:
	mov	r0, #0	@ D.44669,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1230:
	ldrb	r3, [r8, #1222]	@ zero_extendqisi2	@ D.44670, pH264Ctx_22(D)->CurrPPS.pic_scaling_matrix_present_flag
.L1200:
	cmp	r3, #1	@ D.44670,
	add	r1, r4, #51200	@ ivtmp.1404, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #224	@ ivtmp.1404, ivtmp.1404,
	beq	.L1205	@,
.L1208:
	add	r3, r2, #4064	@ tmp427, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #2	@ tmp427, tmp427,
	cmp	r2, #24	@ i,
	add	r3, r4, r3, lsl #2	@ tmp428, pH264Ctx, tmp427,
	ldr	r3, [r3, #4]	@ D.44673, pH264Ctx_22(D)->CurrSPS.qmatrix4x4
	str	r3, [r1, #4]!	@ D.44673, MEM[base: _203, offset: 0B]
	bne	.L1208	@,
	add	r1, r4, #51456	@ ivtmp.1418, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1418, ivtmp.1418,
.L1209:
	add	r3, r2, #4080	@ tmp436, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #10	@ tmp436, tmp436,
	cmp	r2, #32	@ i,
	add	r3, r4, r3, lsl #2	@ tmp437, pH264Ctx, tmp436,
	ldr	r3, [r3, #4]	@ D.44673, pH264Ctx_22(D)->CurrSPS.qmatrix8x8
	str	r3, [r1, #4]!	@ D.44673, MEM[base: _201, offset: 0B]
	bne	.L1209	@,
	b	.L1207	@
.L1205:
	add	r3, r2, #4864	@ tmp410, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #28	@ tmp410, tmp410,
	cmp	r2, #24	@ i,
	add	r3, r4, r3, lsl #2	@ tmp411, pH264Ctx, tmp410,
	ldr	r3, [r3, #4]	@ D.44673, pH264Ctx_22(D)->CurrPPS.qmatrix4x4
	str	r3, [r1, #4]!	@ D.44673, MEM[base: _182, offset: 0B]
	bne	.L1205	@,
	add	r1, r4, #51456	@ ivtmp.1390, pH264Ctx,
	mov	r2, #0	@ i,
	add	r1, r1, #64	@ ivtmp.1390, ivtmp.1390,
.L1206:
	add	r3, r2, #4864	@ tmp419, i,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ tmp419, tmp419,
	cmp	r2, #32	@ i,
	add	r3, r4, r3, lsl #2	@ tmp420, pH264Ctx, tmp419,
	ldr	r3, [r3, #4]	@ D.44673, pH264Ctx_22(D)->CurrPPS.qmatrix8x8
	str	r3, [r1, #4]!	@ D.44673, MEM[base: _10, offset: 0B]
	bne	.L1206	@,
	b	.L1207	@
.L1194:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.44669,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1232:
	.align	2
.L1231:
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
	movlt	r2, r0	@ D.44684, SlcQp
	cmp	r3, r0	@ pCurPic_2(D)->MinQp, SlcQp
	str	r2, [r1, #28]	@ D.44684, pCurPic_2(D)->MaxQp
	movge	r3, r0	@ D.44684, SlcQp
	str	r3, [r1, #32]	@ D.44684, pCurPic_2(D)->MinQp
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
	ldr	lr, [r10, #3608]	@ D.45282, pH264Ctx_42(D)->DecSlicePara
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r2, r3	@ CurrSliceSlotNum, CurrSliceSlotNum
	str	r3, [sp, #8]	@ CurrSliceSlotNum, %sfp
	mul	ip, ip, r2	@ D.45281, tmp490, CurrSliceSlotNum
	add	r3, r3, #1	@ D.45281, CurrSliceSlotNum,
	str	r3, [r10, #3612]	@ D.45281, pH264Ctx_42(D)->SliceParaNum
	ldr	r3, [r4, #1280]	@ pH264Ctx_42(D)->MaxSliceNum, pH264Ctx_42(D)->MaxSliceNum
	add	r9, lr, ip	@ pCurrSlicePara, D.45282, D.45281
	sub	r3, r3, #1	@ D.45283, pH264Ctx_42(D)->MaxSliceNum,
	cmp	r2, r3	@ CurrSliceSlotNum, D.45283
	addcc	r1, ip, #4048	@ D.45284, D.45281,
	addcc	r1, r1, #12	@ D.45284, D.45284,
	movcs	r1, #0	@ tmp498,
	addcc	r1, lr, r1	@ D.45282, D.45282, D.45284
	str	r1, [r9, #4056]	@ tmp498, pCurrSlicePara_48->pNextSlice
	ldr	r0, [r0, #368]	@ D.45286, pH264Ctx_42(D)->pCurrNal
	ldrb	r6, [r0]	@ zero_extendqisi2	@ i, _56->nal_used_segment
	ldr	r1, [r0, #68]	@ i, _56->nal_segment
	cmp	r6, #1	@ i,
	cmpls	r6, r1	@, i, i
	bcs	.L1237	@,
	add	r7, r6, #3	@ D.45284, i,
	add	r7, r9, r7, lsl #2	@ ivtmp.2058, pCurrSlicePara, D.45284,
.L1238:
	mov	r3, r6, asl #5	@ tmp510, i,
	sub	r3, r3, r6, asl #2	@ tmp511, tmp510, i,
	add	r6, r6, #1	@ i, i,
	add	r0, r0, r3	@ tmp512, D.45286, tmp511
	ldr	r2, [r0, #24]	@ D.45281, _493->stream[i_467].bitsoffset
	str	r2, [r7, #4]!	@ D.45281, MEM[base: _693, offset: 0B]
	ldr	r2, [r5, #368]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->pCurrNal
	add	r2, r2, r3	@ tmp519, pH264Ctx_42(D)->pCurrNal, tmp511
	ldr	r2, [r2, #20]	@ D.45281, _63->stream[i_467].valid_bitlen
	str	r2, [r7, #-8]	@ D.45281, MEM[base: _693, offset: 4294967288B]
	ldr	r2, [r5, #368]	@ pH264Ctx_42(D)->pCurrNal, pH264Ctx_42(D)->pCurrNal
	add	r3, r2, r3	@ tmp526, pH264Ctx_42(D)->pCurrNal, tmp511
	ldr	r3, [r3, #28]	@ D.45281, _66->stream[i_467].bytespos
	str	r3, [r7, #8]	@ D.45281, MEM[base: _693, offset: 8B]
	ldr	r0, [r5, #368]	@ D.45286, pH264Ctx_42(D)->pCurrNal
	ldr	r1, [r0, #68]	@ i, _59->nal_segment
	cmp	r1, r6	@ i, i
	movhi	r3, #1	@ tmp534,
	movls	r3, #0	@ tmp534,
	cmp	r6, #1	@ i,
	movhi	r3, #0	@ tmp534,
	cmp	r3, #0	@ tmp534,
	bne	.L1238	@,
.L1237:
	cmp	r1, #1	@ i,
	bhi	.L1243	@,
	add	r1, r1, #3	@ D.45284, i,
	add	r6, r9, #20	@ D.45293, pCurrSlicePara,
	mov	r0, #0	@ tmp859,
	add	r1, r9, r1, lsl #2	@ ivtmp.2032, pCurrSlicePara, D.45284,
.L1242:
	str	r0, [r1, #4]!	@ tmp859, MEM[base: _683, offset: 0B]
	cmp	r1, r6	@ ivtmp.2032, D.45293
	str	r0, [r1, #-8]	@ tmp859, MEM[base: _683, offset: 4294967288B]
	str	r0, [r1, #8]	@ tmp859, MEM[base: _683, offset: 8B]
	bne	.L1242	@,
.L1243:
	ldrb	r1, [r10, #561]	@ zero_extendqisi2	@ D.45285, pH264Ctx_42(D)->CurrPic.MbaffFrameFlag
	add	r3, r5, #16384	@ tmp847, pH264Ctx,
	add	r7, r5, #20480	@ tmp848, pH264Ctx,
	ldr	r2, [sp, #8]	@ CurrSliceSlotNum, %sfp
	str	r3, [sp, #4]	@ tmp847, %sfp
	strb	r1, [r9, #1]	@ D.45285, pCurrSlicePara_48->MbaffFrameFlag
	cmp	r2, #0	@ CurrSliceSlotNum,
	ldr	r1, [r3, #1252]	@ pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26, pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26
	ldr	r0, [r7, #1812]	@ pH264Ctx_42(D)->CurrSlice.slice_qp_delta, pH264Ctx_42(D)->CurrSlice.slice_qp_delta
	add	r1, r1, #26	@ D.45283, pH264Ctx_42(D)->CurrPPS.pic_init_qp_minus26,
	add	r1, r1, r0	@ D.45283, D.45283, pH264Ctx_42(D)->CurrSlice.slice_qp_delta
	str	r1, [r9, #32]	@ D.45283, pCurrSlicePara_48->SliceQPy
	bne	.L1341	@,
	ldr	r0, [r10, #960]	@ D.45287, pH264Ctx_42(D)->CurrPic.frame_store
	str	r1, [r0, #428]	@ D.45283, _83->frame.MaxQp
	ldr	r1, [r10, #960]	@ D.45287, pH264Ctx_42(D)->CurrPic.frame_store
	ldr	r0, [r9, #32]	@ pCurrSlicePara_48->SliceQPy, pCurrSlicePara_48->SliceQPy
	str	r0, [r1, #432]	@ pCurrSlicePara_48->SliceQPy, _85->frame.MinQp
.L1244:
	ldr	r1, [r7, #1808]	@ D.45281, pH264Ctx_42(D)->CurrSlice.cabac_init_idc
	str	r1, [r9, #36]	@ D.45281, pCurrSlicePara_48->cabac_init_idc
	ldr	r1, [r7, #260]	@ D.45281, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1
	str	r1, [r9, #40]	@ D.45281, pCurrSlicePara_48->num_ref_idx_l1_active_minus1
	ldr	r1, [r7, #256]	@ D.45281, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1
	str	r1, [r9, #44]	@ D.45281, pCurrSlicePara_48->num_ref_idx_l0_active_minus1
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ D.45285, pH264Ctx_42(D)->CurrSlice.slice_type
	strb	r1, [lr, ip]	@ D.45285, pCurrSlicePara_48->slice_type
	ldr	r1, [r7, #252]	@ D.45281, pH264Ctx_42(D)->CurrSlice.first_mb_in_slice
	str	r1, [r9, #48]	@ D.45281, pCurrSlicePara_48->first_mb_in_slice
	ldrb	r1, [r7, #206]	@ zero_extendqisi2	@ D.45285, pH264Ctx_42(D)->CurrSlice.direct_spatial_mv_pred_flag
	strb	r1, [r9, #2]	@ D.45285, pCurrSlicePara_48->direct_spatial_mv_pred_flag
	ldrb	r1, [r4, #1320]	@ zero_extendqisi2	@ D.45285, pH264Ctx_42(D)->CurrSPS.direct_8x8_inference_flag
	strb	r1, [r9, #3]	@ D.45285, pCurrSlicePara_48->direct_8x8_inference_flag
	ldr	r1, [r7, #244]	@ D.45281, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r1, [r9, #52]	@ D.45281, pCurrSlicePara_48->listXsize
	ldr	r1, [r7, #248]	@ D.45281, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r1, [r9, #56]	@ D.45281, pCurrSlicePara_48->listXsize
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ D.45285, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ D.45285,
	beq	.L1342	@,
	cmp	r1, #0	@ D.45285,
	ldreq	r3, [sp, #4]	@ tmp847, %sfp
	movne	r1, #0	@ tmp591,
	ldreqb	r1, [r3, #1206]	@ zero_extendqisi2	@ D.45285, pH264Ctx_42(D)->CurrPPS.weighted_pred_flag
	strb	r1, [r9, #4]	@ tmp591, pCurrSlicePara_48->weight_flag
.L1246:
	ldr	r3, [sp, #4]	@ tmp847, %sfp
	ldr	r1, [r3, #1256]	@ D.45283, pH264Ctx_42(D)->CurrPPS.chroma_qp_index_offset
	str	r1, [r9, #60]	@ D.45283, pCurrSlicePara_48->chroma_qp_index_offset
	ldr	r1, [r3, #1260]	@ D.45283, pH264Ctx_42(D)->CurrPPS.second_chroma_qp_index_offset
	str	r1, [r9, #64]	@ D.45283, pCurrSlicePara_48->second_chroma_qp_index_offset
	ldr	r1, [r7, #1820]	@ D.45283, pH264Ctx_42(D)->CurrSlice.slice_alpha_c0_offset_div2
	str	r1, [r9, #68]	@ D.45283, pCurrSlicePara_48->slice_alpha_c0_offset_div2
	ldr	r1, [r7, #1824]	@ D.45283, pH264Ctx_42(D)->CurrSlice.slice_beta_offset_div2
	str	r1, [r9, #72]	@ D.45283, pCurrSlicePara_48->slice_beta_offset_div2
	ldr	r1, [r7, #1816]	@ D.45281, pH264Ctx_42(D)->CurrSlice.disable_deblocking_filter_idc
	str	r1, [r9, #76]	@ D.45281, pCurrSlicePara_48->disable_deblocking_filter_idc
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #2	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1285	@,
	ldr	r8, [r7, #244]	@ D.45281, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r8, #0	@ D.45281,
	beq	.L1288	@,
	add	r1, r5, #24576	@ tmp614, pH264Ctx,
	ldr	r1, [r1, #2460]	@ pH264Ctx_42(D)->pListX, pH264Ctx_42(D)->pListX
	ldr	ip, [r1, #4]	@ D.45289, _455->frame_store
	ldrb	r1, [ip]	@ zero_extendqisi2	@ _456->non_existing, _456->non_existing
	cmp	r1, #0	@ _456->non_existing,
	addne	r0, r5, #26880	@ ivtmp.2020, pH264Ctx,
	movne	r1, #0	@ i,
	addne	r0, r0, #156	@ ivtmp.2020, ivtmp.2020,
	bne	.L1253	@,
	b	.L1251	@
.L1255:
	ldr	r3, [r0, #4]!	@ MEM[base: _676, offset: 0B], MEM[base: _676, offset: 0B]
	ldr	ip, [r3, #4]	@ D.45289, _128->frame_store
	ldrb	r3, [ip]	@ zero_extendqisi2	@ _129->non_existing, _129->non_existing
	cmp	r3, #0	@ _129->non_existing,
	beq	.L1251	@,
.L1253:
	add	r1, r1, #1	@ i, i,
	cmp	r1, r8	@ i, D.45281
	bne	.L1255	@,
	mov	r3, #0	@ ExistImgIdc_0,
	str	r3, [sp, #12]	@ ExistImgIdc_0, %sfp
.L1250:
	ldr	r3, [r7, #248]	@ D.45281, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r3, #0	@ D.45281,
	beq	.L1289	@,
	add	r1, r5, #24576	@ tmp628, pH264Ctx,
	ldr	r1, [r1, #2592]	@ pH264Ctx_42(D)->pListX, pH264Ctx_42(D)->pListX
	ldr	ip, [r1, #4]	@ D.45289, _450->frame_store
	ldrb	r1, [ip]	@ zero_extendqisi2	@ _451->non_existing, _451->non_existing
	cmp	r1, #0	@ _451->non_existing,
	addne	r0, r5, #27136	@ ivtmp.2009, pH264Ctx,
	movne	r1, #0	@ i,
	addne	r0, r0, #32	@ ivtmp.2009, ivtmp.2009,
	bne	.L1259	@,
	b	.L1257	@
.L1261:
	ldr	r2, [r0, #4]!	@ MEM[base: _671, offset: 0B], MEM[base: _671, offset: 0B]
	ldr	ip, [r2, #4]	@ D.45289, _142->frame_store
	ldrb	r2, [ip]	@ zero_extendqisi2	@ _143->non_existing, _143->non_existing
	cmp	r2, #0	@ _143->non_existing,
	beq	.L1257	@,
.L1259:
	add	r1, r1, #1	@ i, i,
	cmp	r1, r3	@ i, D.45281
	bne	.L1261	@,
	mov	r3, #0	@ ExistImgIdc_1,
	str	r3, [sp, #16]	@ ExistImgIdc_1, %sfp
.L1256:
	ldrb	ip, [r10, #555]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrPic.structure, pH264Ctx_42(D)->CurrPic.structure
	ldr	r1, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	ip, #0	@ pH264Ctx_42(D)->CurrPic.structure,
	beq	.L1262	@,
.L1345:
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1277	@,
	add	r4, r5, #26880	@ ivtmp.1934, pH264Ctx,
	mov	r6, r9	@ ivtmp.1951, pCurrSlicePara
	add	r4, r4, #156	@ ivtmp.1934, ivtmp.1934,
	mov	fp, #0	@ i,
	ldr	r8, [sp, #12]	@ ExistImgIdc_0, %sfp
	b	.L1276	@
.L1274:
	strb	r3, [r6, #1630]	@ D.45285, MEM[base: _643, offset: 1630B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.45285, _305->is_long_term
	strb	r3, [r6, #1631]	@ D.45285, MEM[base: _643, offset: 1631B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #16]	@ D.45283, _308->poc
	str	r3, [r6, #1656]	@ D.45283, MEM[base: _643, offset: 1656B]
.L1275:
	ldr	r3, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	add	fp, fp, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1934, ivtmp.1934,
	add	r6, r6, #36	@ ivtmp.1951, ivtmp.1951,
	cmp	r3, fp	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bls	.L1277	@,
.L1276:
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r3, [r3, #4]	@ _259->frame_store, _259->frame_store
	ldr	r1, [r3, #508]	@, _260->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _264->frame_store, _264->frame_store
	ldr	r3, [r3, #548]	@ D.45281, _265->pmv_address_idc
	str	r3, [r6, #1636]	@ D.45281, MEM[base: _643, offset: 1636B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _268->frame_store, _268->frame_store
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.45285, _269->is_used
	strb	r3, [r6, #1625]	@ D.45285, MEM[base: _643, offset: 1625B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _272->frame_store, _272->frame_store
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _273->non_existing, _273->non_existing
	cmp	r3, #1	@ _273->non_existing,
	moveq	r0, r8	@ D.45279, ExistImgIdc_0
	beq	.L1273	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r3, [r0, #408]	@ pstLogicFs_263->pstDecodeFs, pstLogicFs_263->pstDecodeFs
	ldrne	r0, [r3, #4]	@ D.45279, _275->PhyFsID
.L1273:
	str	r0, [r6, #1640]	@ D.45279, MEM[base: _643, offset: 1640B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _279->frame_store, _279->frame_store
	ldr	r3, [r3, #552]	@ D.45281, _280->apc_idc
	str	r3, [r6, #1644]	@ D.45281, MEM[base: _643, offset: 1644B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _283->frame_store, _283->frame_store
	ldr	r3, [r3, #524]	@ D.45283, _284->poc
	str	r3, [r6, #1632]	@ D.45283, MEM[base: _643, offset: 1632B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.45285, _287->structure
	strb	r3, [r6, #1624]	@ D.45285, MEM[base: _643, offset: 1624B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #4]	@ _290->frame_store, _290->frame_store
	ldrb	r3, [r3, #400]	@ zero_extendqisi2	@ D.45285, _291->frame.structure
	strb	r3, [r6, #1626]	@ D.45285, MEM[base: _643, offset: 1626B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.45285, _294->structure
	cmp	r3, #1	@ D.45285,
	bne	.L1274	@,
	strb	r3, [r6, #1628]	@ D.45285, MEM[base: _643, offset: 1628B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.45285, _297->is_long_term
	strb	r3, [r6, #1629]	@ D.45285, MEM[base: _643, offset: 1629B]
	ldr	r3, [r4]	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r3, [r3, #16]	@ D.45283, _300->poc
	str	r3, [r6, #1652]	@ D.45283, MEM[base: _643, offset: 1652B]
	b	.L1275	@
.L1277:
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1343	@,
.L1265:
	add	r0, r5, #26880	@ ivtmp.1674, pH264Ctx,
	add	r1, r9, #3920	@ ivtmp.1683, pCurrSlicePara,
	add	lr, r9, #4048	@ D.45293, pCurrSlicePara,
	add	r0, r0, #24	@ ivtmp.1674, ivtmp.1674,
	add	r1, r1, #4	@ ivtmp.1683, ivtmp.1683,
	add	lr, lr, #4	@ D.45293, D.45293,
.L1282:
	ldr	r3, [r0, #4]!	@ D.45281, MEM[base: _543, offset: 0B]
	str	r3, [r1, #4]!	@ D.45281, MEM[base: _544, offset: 0B]
	cmp	r1, lr	@ ivtmp.1683, D.45293
	bne	.L1282	@,
	ldr	r3, [sp, #4]	@ tmp847, %sfp
	ldrb	r1, [r3, #1206]	@ zero_extendqisi2	@ D.45285, pH264Ctx_42(D)->CurrPPS.weighted_pred_flag
	cmp	r1, #0	@ D.45285,
	str	r1, [r10, #2500]	@ D.45285, pH264Ctx_42(D)->DecPicPara.weighted_pred_flag
	ldr	r1, [r3, #1248]	@ D.45281, pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc
	str	r1, [r10, #2504]	@ D.45281, pH264Ctx_42(D)->DecPicPara.weighted_bipred_idc
	beq	.L1283	@,
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #0	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	beq	.L1284	@,
.L1283:
	cmp	r1, #1	@ D.45281,
	beq	.L1344	@,
.L1285:
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
.L1341:
	ldr	r0, [r10, #960]	@ D.45287, pH264Ctx_42(D)->CurrPic.frame_store
	ldr	r8, [r0, #428]	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp
	ldr	r6, [r0, #432]	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp
	cmp	r8, r1	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp, D.45283
	movlt	r8, r1	@ D.45283, D.45283
	cmp	r6, r1	@ MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp, D.45283
	str	r8, [r0, #428]	@ D.45283, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MaxQp
	movge	r6, r1	@ D.45283, D.45283
	str	r6, [r0, #432]	@ D.45283, MEM[(struct H264_STORABLEPIC_S *)_89 + 400B].MinQp
	b	.L1244	@
.L1251:
	ldr	r1, [ip, #508]	@, _495->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1260	@,
	ldr	r1, [r0, #408]	@ pstLogicFs_136->pstDecodeFs, pstLogicFs_136->pstDecodeFs
	ldr	r3, [r1, #4]	@ ExistImgIdc_0, _138->PhyFsID
	str	r3, [sp, #12]	@ ExistImgIdc_0, %sfp
	b	.L1250	@
.L1344:
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1285	@,
.L1284:
	ldr	r2, [r7, #264]	@ D.45281, pH264Ctx_42(D)->CurrSlice.luma_log2_weight_denom
	add	r3, r5, #20736	@ ivtmp.1582, pH264Ctx,
	add	r4, r5, #21504	@ ivtmp.1627, pH264Ctx,
	add	r6, r5, #20992	@ ivtmp.1613, pH264Ctx,
	add	ip, r5, #21760	@ ivtmp.1655, pH264Ctx,
	mov	r8, r3	@ ivtmp.1599, ivtmp.1582
	str	r2, [r9, #80]	@ D.45281, pCurrSlicePara_48->luma_log2_weight_denom
	mov	lr, r4	@ ivtmp.1641, ivtmp.1627
	ldr	r10, [r7, #268]	@ D.45281, pH264Ctx_42(D)->CurrSlice.chroma_log2_weight_denom
	add	r3, r3, #12	@ ivtmp.1582, ivtmp.1582,
	add	r8, r8, #140	@ ivtmp.1599, ivtmp.1599,
	add	r6, r6, #12	@ ivtmp.1613, ivtmp.1613,
	add	r4, r4, #12	@ ivtmp.1627, ivtmp.1627,
	add	lr, lr, #140	@ ivtmp.1641, ivtmp.1641,
	add	ip, ip, #12	@ ivtmp.1655, ivtmp.1655,
	add	fp, r9, #212	@ ivtmp.1606, pCurrSlicePara,
	mov	r0, r9	@ ivtmp.1591, pCurrSlicePara
	mov	r2, r9	@ ivtmp.1595, pCurrSlicePara
	mov	r1, #0	@ i,
	str	r9, [sp, #4]	@ pCurrSlicePara, %sfp
	str	r10, [r0, #84]!	@ D.45281, pCurrSlicePara_48->chroma_log2_weight_denom
.L1286:
	ldr	r10, [r3, #4]!	@ D.45283, MEM[base: _523, offset: 0B]
	add	r1, r1, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.1595, ivtmp.1595,
	str	r10, [r0, #4]!	@ D.45283, MEM[base: _524, offset: 0B]
	ldr	r10, [r8, #4]!	@ D.45283, MEM[base: _525, offset: 0B]
	str	r10, [fp, #4]!	@ D.45283, MEM[base: _526, offset: 0B]
	ldr	r10, [r6, #4]!	@ D.45283, MEM[base: _527, offset: 0B]
	str	r10, [r2, #340]	@ D.45283, MEM[base: _528, offset: 344B]
	ldr	r10, [r4, #4]!	@ D.45283, MEM[base: _529, offset: 0B]
	str	r10, [r2, #852]	@ D.45283, MEM[base: _528, offset: 856B]
	ldr	r10, [lr, #4]!	@ D.45283, MEM[base: _531, offset: 0B]
	str	r10, [r2, #980]	@ D.45283, MEM[base: _528, offset: 984B]
	ldr	r10, [ip, #4]!	@ D.45283, MEM[base: _533, offset: 0B]
	str	r10, [r2, #1108]	@ D.45283, MEM[base: _528, offset: 1112B]
	ldr	r10, [r7, #256]	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r10, r1	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l0_active_minus1, i
	bcs	.L1286	@,
	ldrb	r2, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1285	@,
	add	r4, r5, #21248	@ ivtmp.1510, pH264Ctx,
	add	r0, r5, #22016	@ ivtmp.1552, pH264Ctx,
	add	r6, r5, #20992	@ ivtmp.1493, pH264Ctx,
	add	ip, r5, #21760	@ ivtmp.1538, pH264Ctx,
	add	r8, r9, #468	@ ivtmp.1502, pCurrSlicePara,
	add	r3, r9, #596	@ ivtmp.1517, pCurrSlicePara,
	ldr	r9, [sp, #4]	@ ivtmp.1506, %sfp
	mov	lr, r4	@ ivtmp.1524, ivtmp.1510
	mov	r1, r0	@ ivtmp.1566, ivtmp.1552
	add	r6, r6, #140	@ ivtmp.1493, ivtmp.1493,
	add	r4, r4, #12	@ ivtmp.1510, ivtmp.1510,
	add	lr, lr, #140	@ ivtmp.1524, ivtmp.1524,
	add	ip, ip, #140	@ ivtmp.1538, ivtmp.1538,
	add	r0, r0, #12	@ ivtmp.1552, ivtmp.1552,
	add	r1, r1, #140	@ ivtmp.1566, ivtmp.1566,
	mov	r2, #0	@ i,
.L1287:
	ldr	r10, [r6, #4]!	@ D.45283, MEM[base: _11, offset: 0B]
	add	r2, r2, #1	@ i, i,
	add	r9, r9, #4	@ ivtmp.1506, ivtmp.1506,
	str	r10, [r8, #4]!	@ D.45283, MEM[base: _38, offset: 0B]
	ldr	r10, [r4, #4]!	@ D.45283, MEM[base: _436, offset: 0B]
	str	r10, [r3, #4]!	@ D.45283, MEM[base: _29, offset: 0B]
	ldr	r10, [lr, #4]!	@ D.45283, MEM[base: _5, offset: 0B]
	str	r10, [r9, #724]	@ D.45283, MEM[base: _440, offset: 728B]
	ldr	r10, [ip, #4]!	@ D.45283, MEM[base: _439, offset: 0B]
	str	r10, [r9, #1236]	@ D.45283, MEM[base: _440, offset: 1240B]
	ldr	r10, [r0, #4]!	@ D.45283, MEM[base: _445, offset: 0B]
	str	r10, [r9, #1364]	@ D.45283, MEM[base: _440, offset: 1368B]
	ldr	r10, [r1, #4]!	@ D.45283, MEM[base: _448, offset: 0B]
	str	r10, [r9, #1492]	@ D.45283, MEM[base: _440, offset: 1496B]
	ldr	r10, [r7, #260]	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r10, r2	@ pH264Ctx_42(D)->CurrSlice.num_ref_idx_l1_active_minus1, i
	bcs	.L1287	@,
	b	.L1285	@
.L1257:
	ldr	r1, [ip, #508]	@, _496->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1260	@,
	ldr	r1, [r0, #408]	@ pstLogicFs_150->pstDecodeFs, pstLogicFs_150->pstDecodeFs
	ldrb	ip, [r10, #555]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrPic.structure, pH264Ctx_42(D)->CurrPic.structure
	ldr	r3, [r1, #4]	@ ExistImgIdc_1, _152->PhyFsID
	cmp	ip, #0	@ pH264Ctx_42(D)->CurrPic.structure,
	ldr	r1, [r7, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	str	r3, [sp, #16]	@ ExistImgIdc_1, %sfp
	bne	.L1345	@,
.L1262:
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1270	@,
	add	r6, r5, #26880	@ ivtmp.1776, pH264Ctx,
	ldr	r8, [sp, #12]	@ ExistImgIdc_0, %sfp
	add	r6, r6, #156	@ ivtmp.1776, ivtmp.1776,
	str	r5, [sp, #20]	@ pH264Ctx, %sfp
	mov	fp, ip	@ D.45279, i
	mov	r5, r7	@ tmp848, tmp848
	mov	r4, r9	@ ivtmp.1793, pCurrSlicePara
	mov	r7, ip	@ i, i
.L1269:
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r2, [r2, #4]	@ _158->frame_store, _158->frame_store
	ldr	r1, [r2, #508]	@, _159->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _163->frame_store, _163->frame_store
	ldr	r2, [r2, #548]	@ D.45281, _164->pmv_address_idc
	str	r2, [r4, #1636]	@ D.45281, MEM[base: _581, offset: 1636B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _167->frame_store, _167->frame_store
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.45285, _168->is_used
	strb	r2, [r4, #1625]	@ D.45285, MEM[base: _581, offset: 1625B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _171->frame_store, _171->frame_store
	ldrb	r2, [r2]	@ zero_extendqisi2	@ _172->non_existing, _172->non_existing
	cmp	r2, #1	@ _172->non_existing,
	moveq	r0, r8	@ D.45279, ExistImgIdc_0
	beq	.L1268	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r2, [r0, #408]	@ pstLogicFs_162->pstDecodeFs, pstLogicFs_162->pstDecodeFs
	ldrne	r0, [r2, #4]	@ D.45279, _174->PhyFsID
.L1268:
	str	r0, [r4, #1640]	@ D.45279, MEM[base: _581, offset: 1640B]
	add	r7, r7, #1	@ i, i,
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	add	r4, r4, #36	@ ivtmp.1793, ivtmp.1793,
	ldr	r2, [r2, #4]	@ _178->frame_store, _178->frame_store
	ldr	r2, [r2, #552]	@ D.45281, _179->apc_idc
	str	r2, [r4, #1608]	@ D.45281, MEM[base: _581, offset: 1644B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _182->frame_store, _182->frame_store
	ldr	r2, [r2, #524]	@ D.45283, _183->poc
	str	r2, [r4, #1596]	@ D.45283, MEM[base: _581, offset: 1632B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.45285, _186->is_long_term
	strb	r2, [r4, #1591]	@ D.45285, MEM[base: _581, offset: 1627B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.45285, _189->structure
	strb	r2, [r4, #1590]	@ D.45285, MEM[base: _581, offset: 1626B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _192->frame_store, _192->frame_store
	ldr	r2, [r2, #416]	@ D.45283, _193->frame.poc
	str	r2, [r4, #1612]	@ D.45283, MEM[base: _581, offset: 1648B]
	ldr	r2, [r6]	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _196->frame_store, _196->frame_store
	ldr	r2, [r2, #452]	@ D.45283, _197->top_field.poc
	str	r2, [r4, #1616]	@ D.45283, MEM[base: _581, offset: 1652B]
	ldr	r2, [r6], #4	@ MEM[base: _579, offset: 0B], MEM[base: _579, offset: 0B]
	ldr	r2, [r2, #4]	@ _200->frame_store, _200->frame_store
	ldr	r2, [r2, #488]	@ D.45283, _201->bottom_field.poc
	strb	fp, [r4, #1588]	@ D.45279, MEM[base: _581, offset: 1624B]
	str	r2, [r4, #1620]	@ D.45283, MEM[base: _581, offset: 1656B]
	ldr	r2, [r5, #244]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r2, r7	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bhi	.L1269	@,
	mov	r7, r5	@ tmp848, tmp848
	ldr	r5, [sp, #20]	@ pH264Ctx, %sfp
.L1270:
	ldrb	r1, [r7, #200]	@ zero_extendqisi2	@ pH264Ctx_42(D)->CurrSlice.slice_type, pH264Ctx_42(D)->CurrSlice.slice_type
	cmp	r1, #1	@ pH264Ctx_42(D)->CurrSlice.slice_type,
	bne	.L1265	@,
	ldr	r1, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1265	@,
	mov	fp, #0	@ i,
	add	r8, r5, #27136	@ ivtmp.1692, pH264Ctx,
	mov	r4, fp	@ D.45279, i
	str	r5, [sp, #12]	@ pH264Ctx, %sfp
	mov	r5, r7	@ tmp848, tmp848
	mov	r7, fp	@ i, i
	ldr	fp, [sp, #16]	@ ExistImgIdc_1, %sfp
	add	r8, r8, #32	@ ivtmp.1692, ivtmp.1692,
	mov	r6, r9	@ ivtmp.1709, pCurrSlicePara
.L1272:
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r2, [r2, #4]	@ _209->frame_store, _209->frame_store
	ldr	r1, [r2, #508]	@, _210->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _214->frame_store, _214->frame_store
	ldr	r2, [r2, #548]	@ D.45281, _215->pmv_address_idc
	str	r2, [r6, #2788]	@ D.45281, MEM[base: _552, offset: 2788B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _218->frame_store, _218->frame_store
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.45285, _219->is_used
	strb	r2, [r6, #2777]	@ D.45285, MEM[base: _552, offset: 2777B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _222->frame_store, _222->frame_store
	ldrb	r2, [r2]	@ zero_extendqisi2	@ _223->non_existing, _223->non_existing
	cmp	r2, #1	@ _223->non_existing,
	moveq	r0, fp	@ D.45279, ExistImgIdc_1
	beq	.L1271	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r2, [r0, #408]	@ pstLogicFs_213->pstDecodeFs, pstLogicFs_213->pstDecodeFs
	ldrne	r0, [r2, #4]	@ D.45279, _225->PhyFsID
.L1271:
	str	r0, [r6, #1640]	@ D.45279, MEM[base: _552, offset: 1640B]
	add	r7, r7, #1	@ i, i,
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	add	r6, r6, #36	@ ivtmp.1709, ivtmp.1709,
	ldr	r2, [r2, #4]	@ _229->frame_store, _229->frame_store
	ldr	r2, [r2, #552]	@ D.45281, _230->apc_idc
	str	r2, [r6, #2760]	@ D.45281, MEM[base: _552, offset: 2796B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _233->frame_store, _233->frame_store
	ldr	r2, [r2, #524]	@ D.45283, _234->poc
	str	r2, [r6, #2748]	@ D.45283, MEM[base: _552, offset: 2784B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ D.45285, _237->is_long_term
	strb	r2, [r6, #2743]	@ D.45285, MEM[base: _552, offset: 2779B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.45285, _240->structure
	strb	r2, [r6, #2742]	@ D.45285, MEM[base: _552, offset: 2778B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _243->frame_store, _243->frame_store
	ldr	r2, [r2, #416]	@ D.45283, _244->frame.poc
	str	r2, [r6, #2764]	@ D.45283, MEM[base: _552, offset: 2800B]
	ldr	r2, [r8]	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _247->frame_store, _247->frame_store
	ldr	r2, [r2, #452]	@ D.45283, _248->top_field.poc
	str	r2, [r6, #2768]	@ D.45283, MEM[base: _552, offset: 2804B]
	ldr	r2, [r8], #4	@ MEM[base: _550, offset: 0B], MEM[base: _550, offset: 0B]
	ldr	r2, [r2, #4]	@ _251->frame_store, _251->frame_store
	ldr	r2, [r2, #488]	@ D.45283, _252->bottom_field.poc
	strb	r4, [r6, #2740]	@ D.45279, MEM[base: _552, offset: 2776B]
	str	r2, [r6, #2772]	@ D.45283, MEM[base: _552, offset: 2808B]
	ldr	r2, [r5, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r2, r7	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bhi	.L1272	@,
	mov	r7, r5	@ tmp848, tmp848
	ldr	r5, [sp, #12]	@ pH264Ctx, %sfp
	b	.L1265	@
.L1342:
	ldr	r3, [sp, #4]	@ tmp847, %sfp
	ldr	r1, [r3, #1248]	@ pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc, pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc
	strb	r1, [r9, #4]	@ pH264Ctx_42(D)->CurrPPS.weighted_bipred_idc, pCurrSlicePara_48->weight_flag
	b	.L1246	@
.L1343:
	ldr	r1, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	cmp	r1, #0	@ pH264Ctx_42(D)->CurrSlice.listXsize,
	beq	.L1265	@,
	add	r4, r5, #27136	@ ivtmp.1860, pH264Ctx,
	mov	r6, r9	@ ivtmp.1877, pCurrSlicePara
	add	r4, r4, #32	@ ivtmp.1860, ivtmp.1860,
	mov	r8, #0	@ i,
	ldr	fp, [sp, #16]	@ ExistImgIdc_1, %sfp
	b	.L1281	@
.L1279:
	strb	r3, [r6, #2782]	@ D.45285, MEM[base: _610, offset: 2782B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.45285, _363->is_long_term
	strb	r3, [r6, #2783]	@ D.45285, MEM[base: _610, offset: 2783B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #16]	@ D.45283, _366->poc
	str	r3, [r6, #2808]	@ D.45283, MEM[base: _610, offset: 2808B]
.L1280:
	ldr	r3, [r7, #248]	@ pH264Ctx_42(D)->CurrSlice.listXsize, pH264Ctx_42(D)->CurrSlice.listXsize
	add	r8, r8, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1860, ivtmp.1860,
	add	r6, r6, #36	@ ivtmp.1877, ivtmp.1877,
	cmp	r3, r8	@ pH264Ctx_42(D)->CurrSlice.listXsize, i
	bls	.L1265	@,
.L1281:
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r0, [r10, #3688]	@, pH264Ctx_42(D)->ChanID
	ldr	r3, [r3, #4]	@ _315->frame_store, _315->frame_store
	ldr	r1, [r3, #508]	@, _316->logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _320->frame_store, _320->frame_store
	ldr	r3, [r3, #548]	@ D.45281, _321->pmv_address_idc
	str	r3, [r6, #2788]	@ D.45281, MEM[base: _610, offset: 2788B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _324->frame_store, _324->frame_store
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.45285, _325->is_used
	strb	r3, [r6, #2777]	@ D.45285, MEM[base: _610, offset: 2777B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _328->frame_store, _328->frame_store
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _329->non_existing, _329->non_existing
	cmp	r3, #1	@ _329->non_existing,
	moveq	r0, fp	@ D.45279, ExistImgIdc_1
	beq	.L1278	@,
	cmp	r0, #0	@ pstLogicFs,
	ldrne	r3, [r0, #408]	@ pstLogicFs_319->pstDecodeFs, pstLogicFs_319->pstDecodeFs
	ldrne	r0, [r3, #4]	@ D.45279, _331->PhyFsID
.L1278:
	str	r0, [r6, #2792]	@ D.45279, MEM[base: _610, offset: 2792B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _336->frame_store, _336->frame_store
	ldr	r3, [r3, #552]	@ D.45281, _337->apc_idc
	str	r3, [r6, #2796]	@ D.45281, MEM[base: _610, offset: 2796B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _340->frame_store, _340->frame_store
	ldr	r3, [r3, #524]	@ D.45283, _341->poc
	str	r3, [r6, #2784]	@ D.45283, MEM[base: _610, offset: 2784B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.45285, _344->structure
	strb	r3, [r6, #2776]	@ D.45285, MEM[base: _610, offset: 2776B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #4]	@ _347->frame_store, _347->frame_store
	ldrb	r3, [r3, #400]	@ zero_extendqisi2	@ D.45285, _348->frame.structure
	strb	r3, [r6, #2778]	@ D.45285, MEM[base: _610, offset: 2778B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldrb	r3, [r3]	@ zero_extendqisi2	@ D.45285, _351->structure
	cmp	r3, #1	@ D.45285,
	bne	.L1279	@,
	strb	r3, [r6, #2780]	@ D.45285, MEM[base: _610, offset: 2780B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ D.45285, _355->is_long_term
	strb	r3, [r6, #2781]	@ D.45285, MEM[base: _610, offset: 2781B]
	ldr	r3, [r4]	@ MEM[base: _608, offset: 0B], MEM[base: _608, offset: 0B]
	ldr	r3, [r3, #16]	@ D.45283, _358->poc
	str	r3, [r6, #2804]	@ D.45283, MEM[base: _610, offset: 2804B]
	b	.L1280	@
.L1260:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	vfmw_dprint_nothing	@
.L1288:
	str	r8, [sp, #12]	@ D.45281, %sfp
	b	.L1250	@
.L1289:
	str	r3, [sp, #16]	@ D.45281, %sfp
	b	.L1256	@
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
	beq	.L1349	@,
	mov	r0, #0	@ TotalSize,
.L1348:
	ldr	r3, [r2, #8]	@ pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	ldr	r1, [r2, #12]	@ pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	ldr	r2, [r2, #4056]	@ pH264SliceParam, pH264SliceParam_18->pNextSlice
	add	r3, r3, r1	@ D.45296, pH264SliceParam_18->valid_bitlen, pH264SliceParam_18->valid_bitlen
	add	r3, r3, #7	@ D.45296, D.45296,
	cmp	r2, #0	@ pH264SliceParam,
	add	r0, r0, r3, lsr #3	@ TotalSize, TotalSize, D.45296,
	bne	.L1348	@,
	bx	lr	@
.L1349:
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
	ldr	r1, .L1362	@,
	add	r6, r0, #49152	@ tmp130, pH264Ctx,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #252]	@ D.45300, pH264Ctx_5(D)->CurrSlice.first_mb_in_slice
	ldr	r3, [r6, #3628]	@ pH264Ctx_5(D)->SeErrFlg, pH264Ctx_5(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_5(D)->SeErrFlg,
	bne	.L1361	@,
	cmp	r0, #262144	@ D.45300,
	bcs	.L1356	@,
	add	r2, r4, #12288	@ tmp134, pH264Ctx,
	ldr	r1, [r2, #1272]	@ pH264Ctx_5(D)->CurWidthInMb, pH264Ctx_5(D)->CurWidthInMb
	ldr	r3, [r2, #1276]	@ pH264Ctx_5(D)->CurHeightInMb, pH264Ctx_5(D)->CurHeightInMb
	mul	r3, r3, r1	@ D.45301, pH264Ctx_5(D)->CurHeightInMb, pH264Ctx_5(D)->CurWidthInMb
	sub	r3, r3, #1	@ D.45301, D.45301,
	cmp	r0, r3	@ D.45300, D.45301
	bhi	.L1361	@,
	mov	r0, r4	@, pH264Ctx
	ldr	r1, .L1362+4	@,
	bl	ue_v	@
	mov	r4, r0	@ SliceType,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #3628]	@ pH264Ctx_5(D)->SeErrFlg, pH264Ctx_5(D)->SeErrFlg
	cmp	r0, #0	@ pH264Ctx_5(D)->SeErrFlg,
	bne	.L1361	@,
	cmp	r4, #9	@ SliceType,
	bhi	.L1356	@,
	mov	r1, #1	@ tmp145,
	movw	r2, #297	@ D.45300,
	mov	r3, r1, asl r4	@ D.45300, tmp145,
	and	r2, r2, r3	@ D.45300, D.45300, D.45300
	cmp	r2, #0	@ D.45300,
	bne	.L1357	@,
	ands	r0, r3, #660	@ D.45300, D.45300,
	bne	.L1358	@,
	tst	r3, #66	@ D.45300,
	beq	.L1356	@,
	strb	r1, [r5, #200]	@ tmp145, pH264Ctx_5(D)->CurrSlice.slice_type
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1357:
	strb	r0, [r5, #200]	@ pH264Ctx_5(D)->SeErrFlg, pH264Ctx_5(D)->CurrSlice.slice_type
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1356:
	bl	vfmw_dprint_nothing	@
.L1361:
	mvn	r0, #0	@ D.45299,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1358:
	mov	r3, #2	@ tmp152,
	mov	r0, r2	@ D.45299, D.45300
	strb	r3, [r5, #200]	@ tmp152, pH264Ctx_5(D)->CurrSlice.slice_type
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1363:
	.align	2
.L1362:
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	vfmw_dprint_nothing	@
	add	r1, r4, #12288	@ tmp124, pH264Ctx,
	add	r4, r4, #20480	@ tmp126, pH264Ctx,
	mov	r0, #2208	@ tmp129,
	ldr	r2, [r4, #212]	@ pH264Ctx_5(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_5(D)->CurrSlice.pic_parameter_set_id
	ldr	r3, [r1, #1296]	@ pH264Ctx_5(D)->PPS, pH264Ctx_5(D)->PPS
	mla	r3, r0, r2, r3	@ pPPS, tmp129, pH264Ctx_5(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_5(D)->PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ pPPS_9->is_valid, pPPS_9->is_valid
	cmp	r2, #0	@ pPPS_9->is_valid,
	beq	.L1367	@,
	ldr	r2, [r3, #28]	@ pPPS_9->seq_parameter_set_id, pPPS_9->seq_parameter_set_id
	mov	r0, #4000	@ tmp137,
	ldr	r3, [r1, #1292]	@ pH264Ctx_5(D)->SPS, pH264Ctx_5(D)->SPS
	mla	r3, r0, r2, r3	@ tmp138, tmp137, pPPS_9->seq_parameter_set_id, pH264Ctx_5(D)->SPS
	ldrb	r3, [r3, #23]	@ zero_extendqisi2	@ pSPS_15->is_valid, pSPS_15->is_valid
	cmp	r3, #0	@ pSPS_15->is_valid,
	beq	.L1367	@,
	mov	r0, #0	@ D.45306,
	ldmfd	sp!, {r4, pc}	@
.L1367:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45306,
	ldmfd	sp!, {r4, pc}	@
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
	mov	r5, r1	@ tmp_pic_parameter_set_id, tmp_pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	vfmw_dprint_nothing	@
	add	r0, r4, #12288	@ tmp127, pH264Ctx,
	mov	r1, #2208	@ tmp129,
	ldr	r3, [r0, #1296]	@ pH264Ctx_5(D)->PPS, pH264Ctx_5(D)->PPS
	mla	r1, r1, r5, r3	@ pPPS, tmp129, tmp_pic_parameter_set_id, pH264Ctx_5(D)->PPS
	ldrb	r3, [r1, #19]	@ zero_extendqisi2	@ pPPS_9->is_valid, pPPS_9->is_valid
	cmp	r3, #0	@ pPPS_9->is_valid,
	beq	.L1375	@,
	ldr	r2, [r0, #1284]	@ pH264Ctx_5(D)->MaxSpsNum, pH264Ctx_5(D)->MaxSpsNum
	ldr	r3, [r1, #28]	@ D.45315, pPPS_9->seq_parameter_set_id
	sub	r2, r2, #1	@ D.45317, pH264Ctx_5(D)->MaxSpsNum,
	cmp	r3, r2	@ D.45315, D.45317
	bhi	.L1375	@,
	ldr	r2, [r0, #1292]	@ pH264Ctx_5(D)->SPS, pH264Ctx_5(D)->SPS
	mov	r1, #4000	@ tmp140,
	mla	r3, r1, r3, r2	@ tmp141, tmp140, D.45315, pH264Ctx_5(D)->SPS
	ldrb	r3, [r3, #23]	@ zero_extendqisi2	@ pSPS_19->is_valid, pSPS_19->is_valid
	cmp	r3, #0	@ pSPS_19->is_valid,
	beq	.L1375	@,
	mov	r0, #0	@ D.45313,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1375:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45313,
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	ldrb	lr, [r3, #1848]	@ zero_extendqisi2	@ D.45323, pH264Ctx_7(D)->PrevSlice.field_pic_flag
	ldrb	ip, [r3, #201]	@ zero_extendqisi2	@ D.45323, pH264Ctx_7(D)->CurrSlice.field_pic_flag
	movne	r1, #1	@ tmp195,
	moveq	r1, #0	@ tmp195,
	cmp	r5, r4	@ pH264Ctx_7(D)->PrevSlice.frame_num, pH264Ctx_7(D)->CurrSlice.frame_num
	moveq	r2, r1	@, tmp205, tmp195
	orrne	r2, r1, #1	@,, tmp205, tmp195
	cmp	lr, ip	@ D.45323, D.45323
	orrne	r2, r2, #1	@,, D.45321, tmp205
	cmp	lr, #0	@ D.45323,
	cmpne	ip, #0	@, D.45323,
	beq	.L1382	@,
	ldrb	ip, [r3, #1849]	@ zero_extendqisi2	@ pH264Ctx_7(D)->PrevSlice.bottom_field_flag, pH264Ctx_7(D)->PrevSlice.bottom_field_flag
	ldrb	r1, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_7(D)->CurrSlice.bottom_field_flag, pH264Ctx_7(D)->CurrSlice.bottom_field_flag
	cmp	ip, r1	@ pH264Ctx_7(D)->PrevSlice.bottom_field_flag, pH264Ctx_7(D)->CurrSlice.bottom_field_flag
	orrne	r2, r2, #1	@,, result, D.45321
.L1382:
	ldr	r1, [r3, #1860]	@ D.45322, pH264Ctx_7(D)->PrevSlice.nal_ref_idc
	ldr	ip, [r3, #232]	@ D.45322, pH264Ctx_7(D)->CurrSlice.nal_ref_idc
	cmp	r1, ip	@ D.45322, D.45322
	moveq	r1, #0	@ D.45322,
	beq	.L1383	@,
	cmp	ip, #0	@ D.45322,
	cmpne	r1, #0	@, D.45322,
	moveq	r1, #1	@ D.45322,
	movne	r1, #0	@ D.45322,
.L1383:
	ldrb	ip, [r3, #1850]	@ zero_extendqisi2	@ D.45323, pH264Ctx_7(D)->PrevSlice.nal_unit_type
	ldrb	lr, [r3, #203]	@ zero_extendqisi2	@ D.45323, pH264Ctx_7(D)->CurrSlice.nal_unit_type
	cmp	ip, lr	@ D.45323, D.45323
	orrne	r2, r2, #1	@,, D.45324, result
	cmp	lr, #5	@ D.45323,
	cmpeq	ip, #5	@, D.45323,
	orr	r2, r2, r1	@ result, D.45324, D.45322
	beq	.L1392	@,
.L1384:
	add	r0, r0, #16384	@ tmp257, pH264Ctx,
	ldr	r1, [r0, #112]	@ D.45322, pH264Ctx_7(D)->CurrSPS.pic_order_cnt_type
	cmp	r1, #0	@ D.45322,
	bne	.L1385	@,
	ldr	r1, [r3, #1872]	@ pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb, pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb
	ldr	lr, [r0, #3416]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom
	ldr	ip, [r3, #1876]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom, pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r0, [r0, #3412]	@ pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb
	cmp	r1, r0	@ pH264Ctx_7(D)->PrevSlice.pic_oder_cnt_lsb, pH264Ctx_7(D)->CurrPOC.pic_order_cnt_lsb
	cmpeq	ip, lr	@, pH264Ctx_7(D)->PrevSlice.delta_pic_oder_cnt_bottom, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt_bottom
	movne	r1, #1	@ D.45324,
	moveq	r1, #0	@ D.45324,
	orr	r2, r2, r1	@ result, result, D.45324
.L1386:
	ldr	r4, [r3, #252]	@ pH264Ctx_7(D)->CurrSlice.first_mb_in_slice, pH264Ctx_7(D)->CurrSlice.first_mb_in_slice
	cmp	r4, #0	@ pH264Ctx_7(D)->CurrSlice.first_mb_in_slice,
	movne	r4, r2	@, result, result
	orreq	r4, r2, #1	@,, result, result
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, result
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1385:
	cmp	r1, #1	@ D.45322,
	bne	.L1386	@,
	ldr	r1, [r3, #1880]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt
	ldr	lr, [r0, #3464]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	ldr	ip, [r3, #1884]	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt
	ldr	r0, [r0, #3460]	@ pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	cmp	r1, r0	@ pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	cmpeq	ip, lr	@, pH264Ctx_7(D)->PrevSlice.delta_pic_order_cnt, pH264Ctx_7(D)->CurrPOC.delta_pic_order_cnt
	movne	r1, #1	@ D.45324,
	moveq	r1, #0	@ D.45324,
	orr	r2, r2, r1	@ result, result, D.45324
	b	.L1386	@
.L1392:
	ldr	ip, [r3, #1868]	@ pH264Ctx_7(D)->PrevSlice.idr_pic_id, pH264Ctx_7(D)->PrevSlice.idr_pic_id
	ldr	r1, [r3, #240]	@ pH264Ctx_7(D)->CurrSlice.idr_pic_id, pH264Ctx_7(D)->CurrSlice.idr_pic_id
	cmp	ip, r1	@ pH264Ctx_7(D)->PrevSlice.idr_pic_id, pH264Ctx_7(D)->CurrSlice.idr_pic_id
	orrne	r2, r2, #1	@,, result, result
	b	.L1384	@
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
	add	r5, r0, #20480	@ tmp269, pH264Ctx,
	mov	lr, #2208	@ tmp175,
	ldr	r2, [r3, #1296]	@ pH264Ctx_14(D)->PPS, pH264Ctx_14(D)->PPS
	mov	ip, #4000	@ tmp179,
	ldr	r1, [r5, #212]	@ pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id
	add	r7, r0, #16384	@ tmp268, pH264Ctx,
	ldr	r3, [r3, #1292]	@ pH264Ctx_14(D)->SPS, pH264Ctx_14(D)->SPS
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r0, #0	@ tmp183,
	mov	r6, #1	@ tmp194,
	mla	r2, lr, r1, r2	@ tmp176, tmp175, pH264Ctx_14(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_14(D)->PPS
	ldr	r2, [r2, #28]	@ pPPS_18->seq_parameter_set_id, pPPS_18->seq_parameter_set_id
	strb	r0, [r7, #3504]	@ tmp183, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	strb	r0, [r7, #3505]	@ tmp183, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	mla	r3, ip, r2, r3	@ pSPS, tmp179, pPPS_18->seq_parameter_set_id, pH264Ctx_14(D)->SPS
	ldrb	r1, [r5, #201]	@ zero_extendqisi2	@ pH264Ctx_14(D)->CurrSlice.field_pic_flag, pH264Ctx_14(D)->CurrSlice.field_pic_flag
	cmp	r1, r0	@ pH264Ctx_14(D)->CurrSlice.field_pic_flag,
	ldr	r3, [r3, #2904]	@ pSPS_22->log2_max_frame_num_minus4, pSPS_22->log2_max_frame_num_minus4
	addne	r3, r3, #5	@ D.45356, pSPS_22->log2_max_frame_num_minus4,
	addeq	r3, r3, #4	@ D.45356, pSPS_22->log2_max_frame_num_minus4,
	mov	r6, r6, asl r3	@ MaxPicNum, tmp197,
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ D.45358, pH264Ctx_14(D)->CurrSlice.slice_type
	cmp	r3, #1	@ D.45358,
	bls	.L1432	@,
.L1412:
	add	r4, r4, #49152	@ tmp238, pH264Ctx,
	ldr	r3, [r4, #3628]	@ D.45360, pH264Ctx_14(D)->SeErrFlg
.L1410:
	adds	r0, r3, #0	@ D.45363, D.45360,
	movne	r0, #1	@ D.45363,
	rsb	r0, r0, #0	@ D.45354, D.45363
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1432:
	ldr	r1, .L1438	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45358,
	strb	r0, [r7, #3504]	@ D.45358, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r0, #0	@ D.45358,
	beq	.L1431	@,
	ldr	r3, [r5, #256]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1
	cmn	r3, #2	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	beq	.L1418	@,
	add	r9, r4, #19712	@ ivtmp.2108, pH264Ctx,
	mov	r8, #0	@ i,
	add	r9, r9, #176	@ ivtmp.2108, ivtmp.2108,
	b	.L1408	@
.L1405:
	cmp	r0, #2	@ D.45356,
	beq	.L1433	@,
.L1406:
	ldr	r3, [r5, #256]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r3, #2	@ D.45356, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r3, r8	@ D.45356, i
	bls	.L1434	@,
.L1408:
	ldr	r1, .L1438+4	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	add	r10, r4, #49152	@ tmp212, pH264Ctx,
	add	r8, r8, #1	@ i, i,
	cmp	r0, #3	@ D.45356,
	str	r0, [r9, #4]!	@ D.45356, MEM[base: _88, offset: 0B]
	bhi	.L1400	@,
	ldr	r3, [r10, #3628]	@ pH264Ctx_14(D)->SeErrFlg, pH264Ctx_14(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_14(D)->SeErrFlg,
	bne	.L1400	@,
	cmp	r0, #3	@ D.45356,
	beq	.L1431	@,
	cmp	r0, #1	@ D.45356,
	bhi	.L1405	@,
	ldr	r1, .L1438+8	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r6, r0	@ MaxPicNum, D.45356
	str	r0, [r9, #264]	@ D.45356, MEM[base: _88, offset: 264B]
	bls	.L1400	@,
	ldr	r3, [r10, #3628]	@ pH264Ctx_14(D)->SeErrFlg, pH264Ctx_14(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_14(D)->SeErrFlg,
	beq	.L1406	@,
.L1400:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45354,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1434:
	cmp	r8, r3	@ i, D.45356
	bne	.L1431	@,
.L1398:
	add	r3, r3, #4928	@ tmp225, D.45356,
	add	r3, r3, #44	@ tmp225, tmp225,
	add	r3, r4, r3, lsl #2	@ tmp226, pH264Ctx, tmp225,
	ldr	r3, [r3, #4]	@ tmp228, pH264Ctx_14(D)->CurrReorder.reordering_of_pic_nums_idc_l0
	cmp	r3, #3	@ tmp228,
	bne	.L1400	@,
.L1431:
	ldrb	r3, [r5, #200]	@ zero_extendqisi2	@ D.45358, pH264Ctx_14(D)->CurrSlice.slice_type
	cmp	r3, #1	@ D.45358,
	bne	.L1412	@,
	ldr	r1, .L1438+12	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45358,
	strb	r0, [r7, #3505]	@ D.45358, pH264Ctx_14(D)->CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r0, #0	@ D.45358,
	beq	.L1412	@,
	ldr	r3, [r5, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmn	r3, #2	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	beq	.L1412	@,
	add	r8, r4, #19968	@ ivtmp.2095, pH264Ctx,
	mov	r7, #0	@ i,
	add	r8, r8, #52	@ ivtmp.2095, ivtmp.2095,
	b	.L1417	@
.L1416:
	add	r7, r7, #1	@ i, i,
	cmp	r7, r3	@ i, D.45356
	bcs	.L1435	@,
.L1417:
	ldr	r1, .L1438+16	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #3	@ D.45356,
	str	r0, [r8, #4]!	@ D.45356, MEM[base: _99, offset: 0B]
	bhi	.L1400	@,
	add	r9, r4, #49152	@ tmp267, pH264Ctx,
	ldr	r3, [r9, #3628]	@ D.45360, pH264Ctx_14(D)->SeErrFlg
	cmp	r3, #0	@ D.45360,
	bne	.L1400	@,
	cmp	r0, #3	@ D.45356,
	beq	.L1410	@,
	cmp	r0, #1	@ D.45356,
	bls	.L1436	@,
	cmp	r0, #2	@ D.45356,
	beq	.L1437	@,
	ldr	r3, [r5, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #2	@ D.45356, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r7	@ D.45356, i
	bne	.L1416	@,
	b	.L1400	@
.L1436:
	ldr	r1, .L1438+20	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	cmp	r6, r0	@ MaxPicNum, D.45356
	str	r0, [r8, #264]	@ D.45356, MEM[base: _99, offset: 264B]
	bls	.L1400	@,
	ldr	r3, [r9, #3628]	@ pH264Ctx_14(D)->SeErrFlg, pH264Ctx_14(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_14(D)->SeErrFlg,
	bne	.L1400	@,
.L1414:
	ldr	r2, [r5, #260]	@ pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r2, #2	@ D.45356, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r7	@ D.45356, i
	bne	.L1416	@,
	add	r2, r2, #4992	@ tmp255, pH264Ctx_14(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	add	r2, r2, #16	@ tmp255, tmp255,
	ldr	r2, [r4, r2, asl #2]	@ tmp256, pH264Ctx_14(D)->CurrReorder.reordering_of_pic_nums_idc_l1
	cmp	r2, #3	@ tmp256,
	beq	.L1416	@,
	b	.L1400	@
.L1433:
	ldr	r1, .L1438+24	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r9, #528]	@, MEM[base: _88, offset: 528B]
	b	.L1406	@
.L1437:
	ldr	r1, .L1438+28	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r8, #524]	@, MEM[base: _99, offset: 524B]
	b	.L1414	@
.L1435:
	ldr	r3, [r9, #3628]	@ D.45360, pH264Ctx_14(D)->SeErrFlg
	b	.L1410	@
.L1418:
	mov	r3, #0	@ D.45356,
	b	.L1398	@
.L1439:
	.align	2
.L1438:
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC5
	.word	.LC9
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
	add	r6, r0, #20480	@ tmp253, pH264Ctx,
	mov	r10, #2208	@ tmp177,
	ldr	r2, [r3, #1296]	@ pH264Ctx_15(D)->PPS, pH264Ctx_15(D)->PPS
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	ip, [r6, #212]	@ pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id
	mov	r7, #4000	@ tmp183,
	ldr	r3, [r3, #1292]	@ pH264Ctx_15(D)->SPS, pH264Ctx_15(D)->SPS
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, .L1469	@,
	mov	r4, #1	@ tmp188,
	mla	r10, r10, ip, r2	@ pPPS, tmp177, pH264Ctx_15(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_15(D)->PPS
	ldr	r2, [r10, #28]	@ pPPS_19->seq_parameter_set_id, pPPS_19->seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp183, pPPS_19->seq_parameter_set_id, pH264Ctx_15(D)->SPS
	bl	ue_v	@
	str	r0, [r6, #264]	@ D.45397, pH264Ctx_15(D)->CurrSlice.luma_log2_weight_denom
	mov	r8, r4, asl r0	@ y_default_weight, tmp188,
	ldr	r9, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r9, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1463	@,
.L1441:
	cmp	r0, #7	@ D.45397,
	bhi	.L1442	@,
	ldr	r3, [r6, #268]	@ pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom, pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom
	cmp	r3, #7	@ pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom,
	bhi	.L1442	@,
	add	r3, r5, #49152	@ tmp252, pH264Ctx,
	str	r3, [sp, #4]	@ tmp252, %sfp
	ldr	r4, [r3, #3628]	@ pH264Ctx_15(D)->SeErrFlg, pH264Ctx_15(D)->SeErrFlg
	cmp	r4, #0	@ pH264Ctx_15(D)->SeErrFlg,
	addeq	fp, r5, #20736	@ ivtmp.2132, pH264Ctx,
	addeq	fp, fp, #144	@ ivtmp.2132, ivtmp.2132,
	beq	.L1450	@,
	b	.L1442	@
.L1446:
	ldr	r2, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r2, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1464	@,
.L1447:
	str	r2, [fp]	@ pSPS_23->chroma_format_idc, MEM[base: _144, offset: 0B]
	str	r2, [fp, #768]	@ pSPS_23->chroma_format_idc, MEM[base: _144, offset: 768B]
	str	r2, [fp, #128]	@ pSPS_23->chroma_format_idc, MEM[base: _144, offset: 128B]
	str	r2, [fp, #896]	@ pSPS_23->chroma_format_idc, MEM[base: _144, offset: 896B]
.L1449:
	ldr	r2, [r6, #256]	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1, pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1
	add	r4, r4, #1	@ i, i,
	add	fp, fp, #4	@ ivtmp.2132, ivtmp.2132,
	cmp	r2, r4	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l0_active_minus1, i
	bcc	.L1465	@,
.L1450:
	ldr	r1, .L1469+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@ D.45397
	streq	r8, [fp, #-128]	@ y_default_weight, MEM[base: _154, offset: 4294967168B]
	streq	r0, [fp, #640]	@ D.45397,
	beq	.L1446	@,
	ldr	r1, .L1469+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1469+12	@,
	str	r0, [fp, #-128]	@, MEM[base: _152, offset: 4294967168B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #640]	@,
	ldr	r2, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r2, #0	@ pSPS_23->chroma_format_idc,
	beq	.L1447	@,
.L1464:
	ldr	r1, .L1469+16	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@ D.45397
	bne	.L1466	@,
	str	r9, [fp]	@ uv_default_weight, MEM[base: _140, offset: 0B]
	str	r0, [fp, #768]	@ D.45397, MEM[base: _140, offset: 768B]
	str	r9, [fp, #128]	@ uv_default_weight, MEM[base: _140, offset: 128B]
	str	r0, [fp, #896]	@ D.45397,
	b	.L1449	@
.L1465:
	ldr	r3, [r10, #44]	@ pPPS_19->weighted_bipred_idc, pPPS_19->weighted_bipred_idc
	cmp	r3, #1	@ pPPS_19->weighted_bipred_idc,
	beq	.L1451	@,
.L1452:
	ldr	r3, [sp, #4]	@ tmp252, %sfp
	ldr	r0, [r3, #3628]	@ pH264Ctx_15(D)->SeErrFlg, pH264Ctx_15(D)->SeErrFlg
	adds	r0, r0, #0	@ D.45401, pH264Ctx_15(D)->SeErrFlg,
	movne	r0, #1	@ D.45401,
	rsb	r0, r0, #0	@ D.45394, D.45401
.L1444:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1466:
	ldr	r1, .L1469+20	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1469+24	@,
	str	r0, [fp]	@, MEM[base: _148, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1469+20	@,
	str	r0, [fp, #768]	@, MEM[base: _148, offset: 768B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1469+24	@,
	str	r0, [fp, #128]	@, MEM[base: _148, offset: 128B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [fp, #896]	@,
	b	.L1449	@
.L1463:
	ldr	r1, .L1469+28	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	mov	r3, r0	@ D.45397,
	ldr	r0, [r6, #264]	@ D.45397, pH264Ctx_15(D)->CurrSlice.luma_log2_weight_denom
	mov	r9, r4, asl r3	@ uv_default_weight, tmp188,
	str	r3, [r6, #268]	@ D.45397, pH264Ctx_15(D)->CurrSlice.chroma_log2_weight_denom
	b	.L1441	@
.L1451:
	ldrb	r3, [r6, #200]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.slice_type, pH264Ctx_15(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_15(D)->CurrSlice.slice_type,
	bne	.L1452	@,
	add	r4, r5, #21248	@ ivtmp.2122, pH264Ctx,
	mov	r10, #0	@ i,
	add	r4, r4, #16	@ ivtmp.2122, ivtmp.2122,
	b	.L1458	@
.L1454:
	ldr	r3, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r3, #0	@ pSPS_23->chroma_format_idc,
	bne	.L1467	@,
.L1455:
	str	r3, [r4]	@ pSPS_23->chroma_format_idc, MEM[base: _115, offset: 0B]
	str	r3, [r4, #768]	@ pSPS_23->chroma_format_idc, MEM[base: _115, offset: 768B]
	str	r3, [r4, #128]	@ pSPS_23->chroma_format_idc, MEM[base: _115, offset: 128B]
	str	r3, [r4, #896]	@ pSPS_23->chroma_format_idc, MEM[base: _115, offset: 896B]
.L1457:
	ldr	r3, [r6, #260]	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1
	add	r10, r10, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.2122, ivtmp.2122,
	cmp	r3, r10	@ pH264Ctx_15(D)->CurrSlice.num_ref_idx_l1_active_minus1, i
	bcc	.L1452	@,
.L1458:
	ldr	r1, .L1469+32	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@ D.45397
	streq	r8, [r4, #-128]	@ y_default_weight, MEM[base: _134, offset: 4294967168B]
	streq	r0, [r4, #640]	@ D.45397,
	beq	.L1454	@,
	ldr	r1, .L1469+36	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1469+40	@,
	str	r0, [r4, #-128]	@, MEM[base: _133, offset: 4294967168B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #640]	@,
	ldr	r3, [r7, #748]	@ pSPS_23->chroma_format_idc, pSPS_23->chroma_format_idc
	cmp	r3, #0	@ pSPS_23->chroma_format_idc,
	beq	.L1455	@,
.L1467:
	ldr	r1, .L1469+44	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@ D.45397
	bne	.L1468	@,
	str	r9, [r4]	@ uv_default_weight, MEM[base: _122, offset: 0B]
	str	r0, [r4, #768]	@ D.45397, MEM[base: _122, offset: 768B]
	str	r9, [r4, #128]	@ uv_default_weight, MEM[base: _122, offset: 128B]
	str	r0, [r4, #896]	@ D.45397,
	b	.L1457	@
.L1442:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45394,
	b	.L1444	@
.L1468:
	ldr	r1, .L1469+48	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1469+52	@,
	str	r0, [r4]	@, MEM[base: _11, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1469+48	@,
	str	r0, [r4, #768]	@, MEM[base: _11, offset: 768B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1469+52	@,
	str	r0, [r4, #128]	@, MEM[base: _11, offset: 128B]
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #896]	@,
	b	.L1457	@
.L1470:
	.align	2
.L1469:
	.word	.LC10
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC11
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
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
	moveq	r6, #100	@ D.45431,
	beq	.L1484	@,
	add	r8, r0, #24576	@ tmp262, pH264Ctx,
	mov	r10, #0	@ MMCONum,
	b	.L1474	@
.L1507:
	ldr	r1, .L1512	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r4, #2	@ memory_management_control_operation,
	beq	.L1505	@,
.L1486:
	cmp	r4, #6	@ memory_management_control_operation,
	orreq	r5, r5, #1	@,, tmp253, D.45432
	cmp	r5, #0	@ tmp253,
	bne	.L1489	@,
	cmp	r4, #4	@ memory_management_control_operation,
	beq	.L1506	@,
.L1490:
	cmp	r4, #6	@ memory_management_control_operation,
	bhi	.L1481	@,
.L1487:
	add	r3, r9, #49152	@ tmp259, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1481	@,
	cmp	r4, #0	@ memory_management_control_operation,
	beq	.L1492	@,
.L1491:
	subs	r6, r6, #1	@ D.45431, D.45431,
	beq	.L1493	@,
.L1484:
	ldr	r1, .L1512+4	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	bic	r3, r0, #2	@ D.45429, memory_management_control_operation,
	sub	r5, r0, #3	@ D.45432, memory_management_control_operation,
	clz	r5, r5	@ D.45432, D.45432
	cmp	r3, #1	@ D.45429,
	mov	r4, r0	@ memory_management_control_operation,
	mov	r5, r5, lsr #5	@ D.45432, D.45432,
	beq	.L1507	@,
	cmp	r4, #2	@ memory_management_control_operation,
	bne	.L1486	@,
.L1505:
	ldr	r1, .L1512+8	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r5, #0	@ D.45432,
	beq	.L1487	@,
.L1489:
	ldr	r1, .L1512+12	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	cmp	r4, #4	@ memory_management_control_operation,
	bne	.L1490	@,
.L1506:
	ldr	r1, .L1512+16	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r9, #49152	@ tmp256, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	beq	.L1491	@,
.L1481:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45430,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1511:
	ldr	r1, .L1512	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, [r4, #8]	@ D.45431, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	cmp	r2, #2	@ D.45431,
	str	r0, [r4, #12]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].difference_of_pic_nums_minus1
	beq	.L1508	@,
.L1477:
	cmp	r2, #3	@ D.45431,
	cmpne	r2, #6	@, D.45431,
	beq	.L1509	@,
.L1478:
	cmp	r2, #4	@ D.45431,
	beq	.L1510	@,
.L1479:
	cmp	r2, #6	@ D.45431,
	bhi	.L1481	@,
	add	r3, r9, #49152	@ tmp240, pH264Ctx,
	ldr	r3, [r3, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1481	@,
	cmp	r2, #0	@ D.45431,
	add	r10, r10, #1	@ MMCONum, MMCONum,
	beq	.L1492	@,
	cmp	r10, #100	@ MMCONum,
	beq	.L1481	@,
.L1474:
	ldr	r1, .L1512+4	@,
	mov	r0, r9	@, pH264Ctx
	ldr	r5, [r8, #1804]	@ D.45429, pH264Ctx_17(D)->CurrMarkIdx
	bl	ue_v	@
	mov	r6, r10, asl #2	@ tmp263, MMCONum,
	mov	r7, r10, asl #4	@ tmp264, MMCONum,
	add	r4, r6, r7	@ tmp140, tmp263, tmp264
	movw	r3, #2004	@ tmp142,
	mla	r4, r3, r5, r4	@ tmp143, tmp142, D.45429, tmp140
	add	r4, r9, r4	@ tmp144, pH264Ctx, tmp143
	add	r4, r4, #22272	@ tmp146, tmp144,
	add	r4, r4, #96	@ tmp146, tmp146,
	bic	r1, r0, #2	@ D.45429, D.45431,
	str	r0, [r4, #8]	@ D.45431, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	cmp	r1, #1	@ D.45429,
	mov	r2, r0	@ D.45431,
	beq	.L1511	@,
	cmp	r2, #2	@ D.45431,
	bne	.L1477	@,
.L1508:
	ldr	r1, .L1512+8	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r6, r7	@ tmp173, tmp263, tmp264
	movw	r2, #2004	@ tmp175,
	mla	r3, r2, r5, r3	@ tmp176, tmp175, D.45429, tmp173
	add	r3, r9, r3	@ tmp177, pH264Ctx, tmp176
	add	r2, r3, #22272	@ tmp179, tmp177,
	str	r0, [r2, #112]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].long_term_pic_num
	ldr	r2, [r2, #104]	@ D.45431, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	cmp	r2, #3	@ D.45431,
	cmpne	r2, #6	@, D.45431,
	bne	.L1478	@,
.L1509:
	ldr	r1, .L1512+12	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r3, r6, r7	@ tmp201, tmp263, tmp264
	movw	r2, #2004	@ tmp203,
	mla	r3, r2, r5, r3	@ tmp204, tmp203, D.45429, tmp201
	add	r3, r9, r3	@ tmp205, pH264Ctx, tmp204
	add	r2, r3, #22272	@ tmp207, tmp205,
	str	r0, [r2, #116]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].long_term_frame_idx
	ldr	r2, [r2, #104]	@ D.45431, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	cmp	r2, #4	@ D.45431,
	bne	.L1479	@,
.L1510:
	ldr	r1, .L1512+16	@,
	mov	r0, r9	@, pH264Ctx
	bl	ue_v	@
	add	r6, r6, r7	@ tmp222, tmp263, tmp264
	movw	r7, #2004	@ tmp224,
	mla	r5, r7, r5, r6	@ tmp225, tmp224, D.45429, tmp222
	add	r5, r9, r5	@ tmp226, pH264Ctx, tmp225
	add	r3, r5, #22272	@ tmp228, tmp226,
	add	r5, r3, #96	@ tmp238, tmp238,
	ldr	r2, [r3, #104]	@ D.45431, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].memory_management_control_operation
	str	r0, [r3, #120]	@, MEM[(struct H264_MMCO_S *)pH264Ctx_17(D)].Mark[_19].MMCO[MMCONum_70].max_long_term_frame_idx_plus1
	b	.L1479	@
.L1492:
	mov	r0, #0	@ D.45430,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1493:
	mvn	r0, #0	@ D.45430,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1513:
	.align	2
.L1512:
	.word	.LC25
	.word	.LC24
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.fnend
	.size	DecMMCO, .-DecMMCO
	.align	2
	.global	dec_ref_pic_marking
	.type	dec_ref_pic_marking, %function
dec_ref_pic_marking:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #20480	@ tmp226, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #24576	@ tmp227, pH264Ctx,
	ldrb	r7, [r3, #205]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.new_pic_flag, pH264Ctx_5(D)->CurrSlice.new_pic_flag
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r8, [r6, #1804]	@ tmpMarkIdx, pH264Ctx_5(D)->CurrMarkIdx
	cmp	r7, #0	@ pH264Ctx_5(D)->CurrSlice.new_pic_flag,
	beq	.L1515	@,
	clz	r4, r8	@ D.45443, tmpMarkIdx
	mov	r4, r4, lsr #5	@ D.45443, D.45443,
	str	r4, [r6, #1804]	@ D.45443, pH264Ctx_5(D)->CurrMarkIdx
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	beq	.L1535	@,
.L1516:
	ldr	r1, .L1539	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	movw	r3, #2004	@ tmp165,
	mla	r4, r3, r4, r5	@ tmp166, tmp165, D.45443, pH264Ctx
	add	r4, r4, #22272	@ tmp168, tmp166,
	add	r4, r4, #96	@ tmp168, tmp168,
	strb	r0, [r4, #7]	@, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_60].adaptive_ref_pic_marking_mode_flag
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_60].adaptive_ref_pic_marking_mode_flag, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_60].adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_60].adaptive_ref_pic_marking_mode_flag,
	bne	.L1518	@,
.L1523:
	mov	r7, #0	@ D.45440,
.L1531:
	mov	r0, r7	@, D.45440
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1515:
	movw	r4, #2004	@ tmp221,
	mla	r4, r4, r8, r0	@ tmp222, tmp221, tmpMarkIdx, pH264Ctx
	add	r4, r4, #22272	@ tmp224, tmp222,
	add	r4, r4, #96	@ tmp224, tmp224,
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid
	cmp	r2, #0	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].is_valid,
	bne	.L1536	@,
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	mov	r4, r8	@ D.45443, tmpMarkIdx
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	bne	.L1516	@,
.L1535:
	ldr	r1, .L1539+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	movw	r3, #2004	@ tmp151,
	mla	r4, r3, r4, r5	@ tmp152, tmp151, D.45443, pH264Ctx
	ldr	r1, .L1539+8	@,
	mov	r7, #0	@ D.45440,
	add	r4, r4, #22272	@ tmp154, tmp152,
	add	r4, r4, #96	@ tmp154, tmp154,
	strb	r0, [r4, #5]	@, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_60].no_output_of_prior_pics_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #6]	@, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_60].long_term_reference_flag
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, D.45440
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1536:
	ldrb	r3, [r3, #203]	@ zero_extendqisi2	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type, pH264Ctx_5(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_5(D)->CurrSlice.nal_unit_type,
	beq	.L1537	@,
	ldr	r1, .L1539	@,
	ldrb	r6, [r4, #7]	@ zero_extendqisi2	@ D.45443, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag
	bl	u_1	@
	cmp	r6, r0	@ D.45443,
	bne	.L1538	@,
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].adaptive_ref_pic_marking_mode_flag,
	beq	.L1523	@,
	mov	r1, r7	@, pH264Ctx_5(D)->CurrSlice.new_pic_flag
	mov	r0, r5	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	DecMMCO	@
.L1518:
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	DecMMCO	@
	cmn	r0, #1	@ D.45440,
	mov	r7, r0	@ D.45440,
	movne	r3, #1	@ tmp190,
	movne	r7, #0	@ D.45440,
	strneb	r3, [r4, #4]	@ tmp190, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_60].is_valid
	bne	.L1531	@,
	mov	r3, #0	@ tmp181,
	strb	r3, [r4, #4]	@ tmp181, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[_60].is_valid
	str	r8, [r6, #1804]	@ tmpMarkIdx, pH264Ctx_5(D)->CurrMarkIdx
	bl	vfmw_dprint_nothing	@
	b	.L1531	@
.L1537:
	ldr	r1, .L1539+4	@,
	ldrb	r6, [r4, #5]	@ zero_extendqisi2	@ D.45443, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].no_output_of_prior_pics_flag
	bl	u_1	@
	cmp	r6, r0	@ D.45443,
	bne	.L1522	@,
	mov	r0, r5	@, pH264Ctx
	ldr	r1, .L1539+8	@,
	ldrb	r4, [r4, #6]	@ zero_extendqisi2	@ D.45443, MEM[(struct H264_MARK_S *)pH264Ctx_5(D)].Mark[tmpMarkIdx_6].long_term_reference_flag
	bl	u_1	@
	cmp	r4, r0	@ D.45443,
	beq	.L1523	@,
.L1522:
	bl	vfmw_dprint_nothing	@
	mvn	r7, #0	@ D.45440,
	b	.L1531	@
.L1538:
	bl	vfmw_dprint_nothing	@
	mvn	r7, #0	@ D.45440,
	bl	vfmw_dprint_nothing	@
	b	.L1531	@
.L1540:
	.align	2
.L1539:
	.word	.LC31
	.word	.LC29
	.word	.LC30
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
	ldr	r1, .L1609	@,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	ldr	r3, [fp, #1288]	@ pH264Ctx_12(D)->MaxPpsNum, pH264Ctx_12(D)->MaxPpsNum
	sub	r3, r3, #1	@ D.45451, pH264Ctx_12(D)->MaxPpsNum,
	cmp	r0, r3	@ tmp_pic_parameter_set_id, D.45451
	mov	r10, r0	@ tmp_pic_parameter_set_id,
	bhi	.L1542	@,
	add	r9, r6, #49152	@ tmp351, pH264Ctx,
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1542	@,
	mov	r1, r0	@, tmp_pic_parameter_set_id
	mov	r0, r6	@, pH264Ctx
	bl	PPSSPSCheckTmpId	@
	subs	r8, r0, #0	@ D.45449,
	bne	.L1542	@,
	add	r4, r6, #20480	@ tmp352, pH264Ctx,
	mov	r7, #2208	@ tmp200,
	mov	r5, #4000	@ tmp206,
	str	r10, [r4, #212]	@ tmp_pic_parameter_set_id, pH264Ctx_12(D)->CurrSlice.pic_parameter_set_id
	ldr	r1, [fp, #1296]	@ pH264Ctx_12(D)->PPS, pH264Ctx_12(D)->PPS
	ldrb	r2, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	ldr	r3, [fp, #1292]	@ pH264Ctx_12(D)->SPS, pH264Ctx_12(D)->SPS
	mla	r7, r7, r10, r1	@ pPPS, tmp200, tmp_pic_parameter_set_id, pH264Ctx_12(D)->PPS
	cmp	r2, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	ldr	r2, [r7, #28]	@ pPPS_25->seq_parameter_set_id, pPPS_25->seq_parameter_set_id
	mla	r5, r5, r2, r3	@ pSPS, tmp206, pPPS_25->seq_parameter_set_id, pH264Ctx_12(D)->SPS
	beq	.L1545	@,
	ldr	r3, [r5, #3952]	@ pSPS_29->num_ref_frames, pSPS_29->num_ref_frames
	cmp	r3, #0	@ pSPS_29->num_ref_frames,
	beq	.L1545	@,
.L1546:
	ldr	r1, [r5, #2904]	@ pSPS_29->log2_max_frame_num_minus4, pSPS_29->log2_max_frame_num_minus4
	mov	r0, r6	@, pH264Ctx
	ldr	r2, .L1609+4	@,
	add	r1, r1, #4	@, pSPS_29->log2_max_frame_num_minus4,
	bl	u_v	@
	str	r0, [r4, #220]	@ D.45451, pH264Ctx_12(D)->CurrSlice.frame_num
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1570	@,
	ldrb	r3, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	beq	.L1603	@,
.L1549:
	mov	r3, #0	@ tmp230,
	strb	r3, [r4, #201]	@ tmp230, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	strb	r3, [r4, #202]	@ tmp230, pH264Ctx_12(D)->CurrSlice.bottom_field_flag
	ldrb	r3, [r5, #18]	@ zero_extendqisi2	@ pSPS_29->frame_mbs_only_flag, pSPS_29->frame_mbs_only_flag
	cmp	r3, #0	@ pSPS_29->frame_mbs_only_flag,
	beq	.L1604	@,
	ldr	r2, [r5, #3956]	@ pSPS_29->pic_width_in_mbs_minus1, pSPS_29->pic_width_in_mbs_minus1
	ldr	r1, [r5, #3960]	@ pSPS_29->pic_height_in_map_units_minus1, pSPS_29->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.45452, pSPS_29->pic_width_in_mbs_minus1,
	mla	r3, r1, r3, r3	@ pic_size, pSPS_29->pic_height_in_map_units_minus1, D.45452, D.45452
.L1573:
	ldrb	r2, [r5, #19]	@ zero_extendqisi2	@ pSPS_29->mb_adaptive_frame_field_flag, pSPS_29->mb_adaptive_frame_field_flag
	cmp	r2, #0	@ pSPS_29->mb_adaptive_frame_field_flag,
	bne	.L1556	@,
	strb	r2, [r4, #204]	@ pSPS_29->mb_adaptive_frame_field_flag, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
.L1558:
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	cmp	r2, r3	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pic_size
	bcs	.L1542	@,
	ldrb	r3, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	beq	.L1605	@,
.L1561:
	add	r10, r6, #16384	@ tmp353, pH264Ctx,
	mov	r3, #0	@ tmp277,
	str	r3, [r10, #3412]	@ tmp277, pH264Ctx_12(D)->CurrPOC.pic_order_cnt_lsb
	str	r3, [r10, #3416]	@ tmp277, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt_bottom
	ldr	r3, [r5, #2908]	@ pSPS_29->pic_order_cnt_type, pSPS_29->pic_order_cnt_type
	cmp	r3, #0	@ pSPS_29->pic_order_cnt_type,
	beq	.L1606	@,
.L1565:
	mov	r3, #0	@ tmp296,
	str	r3, [r10, #3460]	@ tmp296, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	str	r3, [r10, #3464]	@ tmp296, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [r5, #2908]	@ pSPS_29->pic_order_cnt_type, pSPS_29->pic_order_cnt_type
	cmp	r3, #1	@ pSPS_29->pic_order_cnt_type,
	beq	.L1607	@,
.L1568:
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1570	@,
	ldrb	r3, [r7, #17]	@ zero_extendqisi2	@ pPPS_25->redundant_pic_cnt_present_flag, pPPS_25->redundant_pic_cnt_present_flag
	cmp	r3, #0	@ pPPS_25->redundant_pic_cnt_present_flag,
	beq	.L1571	@,
	ldr	r1, .L1609+8	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L1572	@,
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	bne	.L1572	@,
.L1571:
	mov	r0, r6	@, pH264Ctx
	bl	IsNewPic	@
	uxtb	r0, r0	@ D.45455,
	strb	r0, [r4, #205]	@ D.45455, pH264Ctx_12(D)->CurrSlice.new_pic_flag
	cmp	r0, #0	@ D.45455,
	bne	.L1584	@,
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	ldr	r3, [r4, #1888]	@ pH264Ctx_12(D)->PrevSlice.first_mb_in_slice, pH264Ctx_12(D)->PrevSlice.first_mb_in_slice
	cmp	r2, r3	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->PrevSlice.first_mb_in_slice
	bls	.L1542	@,
.L1584:
	mov	r0, r8	@, D.45449
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1545:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.slice_type, pH264Ctx_12(D)->CurrSlice.slice_type
	cmp	r3, #2	@ pH264Ctx_12(D)->CurrSlice.slice_type,
	beq	.L1546	@,
.L1542:
	mvn	r8, #0	@ D.45449,
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@, D.45449
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1556:
	mov	r2, #1	@ tmp345,
	strb	r2, [r4, #204]	@ tmp345, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
.L1576:
	ldr	r2, [r4, #252]	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pH264Ctx_12(D)->CurrSlice.first_mb_in_slice
	cmp	r2, r3, lsr #1	@ pH264Ctx_12(D)->CurrSlice.first_mb_in_slice, pic_size,
	bcs	.L1542	@,
	ldrb	r3, [r4, #203]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type, pH264Ctx_12(D)->CurrSlice.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_12(D)->CurrSlice.nal_unit_type,
	bne	.L1561	@,
.L1605:
	ldr	r1, .L1609+12	@,
	mov	r0, r6	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #65536	@ D.45452,
	str	r0, [r4, #240]	@ D.45452, pH264Ctx_12(D)->CurrSlice.idr_pic_id
	bcs	.L1562	@,
	ldr	r3, [r9, #3628]	@ pH264Ctx_12(D)->SeErrFlg, pH264Ctx_12(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_12(D)->SeErrFlg,
	beq	.L1561	@,
.L1562:
	bl	vfmw_dprint_nothing	@
	b	.L1561	@
.L1572:
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L1609+16	@ tmp320,
	ldr	r3, [r3]	@ D.45456, g_event_report
	cmp	r3, #0	@ D.45456,
	beq	.L1570	@,
	ldr	r0, [r9, #3688]	@, pH264Ctx_12(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #102	@,
	mvn	r8, #0	@ D.45449,
	blx	r3	@ D.45456
	mov	r0, r8	@, D.45449
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1604:
	ldr	r1, .L1609+20	@,
	mov	r0, r6	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45457,
	strb	r0, [r4, #201]	@ D.45457, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r0, #0	@ D.45457,
	bne	.L1608	@,
	ldr	r2, [r5, #3956]	@ pSPS_29->pic_width_in_mbs_minus1, pSPS_29->pic_width_in_mbs_minus1
	ldrb	ip, [r5, #18]	@ zero_extendqisi2	@ pSPS_29->frame_mbs_only_flag, pSPS_29->frame_mbs_only_flag
	ldr	r1, [r5, #3960]	@ pSPS_29->pic_height_in_map_units_minus1, pSPS_29->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.45452, pSPS_29->pic_width_in_mbs_minus1,
	cmp	ip, #0	@ pSPS_29->frame_mbs_only_flag,
	mla	r3, r1, r3, r3	@ D.45452, pSPS_29->pic_height_in_map_units_minus1, D.45452, D.45452
	bne	.L1575	@,
	mov	r3, r3, asl #1	@ pic_size, D.45452,
	b	.L1573	@
.L1606:
	ldr	r1, [r5, #2912]	@ pSPS_29->log2_max_pic_order_cnt_lsb_minus4, pSPS_29->log2_max_pic_order_cnt_lsb_minus4
	mov	r0, r6	@, pH264Ctx
	ldr	r2, .L1609+24	@,
	add	r1, r1, #4	@, pSPS_29->log2_max_pic_order_cnt_lsb_minus4,
	bl	u_v	@
	str	r0, [r10, #3412]	@, pH264Ctx_12(D)->CurrPOC.pic_order_cnt_lsb
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ pPPS_25->pic_order_present_flag, pPPS_25->pic_order_present_flag
	cmp	r3, #0	@ pPPS_25->pic_order_present_flag,
	beq	.L1565	@,
	ldrb	r3, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag,
	bne	.L1565	@,
	ldr	r1, .L1609+28	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [r10, #3416]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt_bottom
	b	.L1565	@
.L1603:
	cmp	r0, #0	@ D.45451,
	str	r0, [r4, #216]	@ D.45451, pH264Ctx_12(D)->CurrSlice.prev_frame_num
	beq	.L1549	@,
	bl	vfmw_dprint_nothing	@
	b	.L1549	@
.L1607:
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ pSPS_29->delta_pic_order_always_zero_flag, pSPS_29->delta_pic_order_always_zero_flag
	cmp	r3, #0	@ pSPS_29->delta_pic_order_always_zero_flag,
	bne	.L1568	@,
	ldr	r1, .L1609+32	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [r10, #3460]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ pPPS_25->pic_order_present_flag, pPPS_25->pic_order_present_flag
	cmp	r3, #1	@ pPPS_25->pic_order_present_flag,
	bne	.L1568	@,
	ldrb	r3, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ pH264Ctx_12(D)->CurrSlice.field_pic_flag,
	bne	.L1568	@,
	ldr	r1, .L1609+36	@,
	mov	r0, r6	@, pH264Ctx
	bl	se_v	@
	str	r0, [r10, #3464]	@, pH264Ctx_12(D)->CurrPOC.delta_pic_order_cnt
	b	.L1568	@
.L1570:
	mvn	r8, #0	@ D.45449,
	mov	r0, r8	@, D.45449
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1608:
	ldr	r1, .L1609+40	@,
	mov	r0, r6	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #202]	@, pH264Ctx_12(D)->CurrSlice.bottom_field_flag
	ldr	r2, [r5, #3956]	@ pSPS_29->pic_width_in_mbs_minus1, pSPS_29->pic_width_in_mbs_minus1
	ldrb	r0, [r5, #18]	@ zero_extendqisi2	@ pSPS_29->frame_mbs_only_flag, pSPS_29->frame_mbs_only_flag
	ldr	r1, [r5, #3960]	@ pSPS_29->pic_height_in_map_units_minus1, pSPS_29->pic_height_in_map_units_minus1
	add	r3, r2, #1	@ D.45452, pSPS_29->pic_width_in_mbs_minus1,
	cmp	r0, #0	@ pSPS_29->frame_mbs_only_flag,
	ldrb	r0, [r4, #201]	@ zero_extendqisi2	@ D.45457, pH264Ctx_12(D)->CurrSlice.field_pic_flag
	mla	r3, r1, r3, r3	@ D.45452, pSPS_29->pic_height_in_map_units_minus1, D.45452, D.45452
	moveq	r2, #2	@ D.45450,
	beq	.L1554	@,
.L1575:
	mov	r2, #1	@ D.45450,
.L1554:
	cmp	r0, #0	@ D.45457,
	mul	r3, r2, r3	@ pic_size, D.45450, D.45452
	beq	.L1573	@,
	cmp	r0, #1	@ D.45457,
	mov	r2, #0	@ tmp257,
	strb	r2, [r4, #204]	@ tmp257, pH264Ctx_12(D)->CurrSlice.MbaffFrameFlag
	bne	.L1558	@,
	b	.L1576	@
.L1610:
	.align	2
.L1609:
	.word	.LC32
	.word	.LC33
	.word	.LC41
	.word	.LC36
	.word	g_event_report
	.word	.LC34
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC35
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
	add	r6, r0, #12288	@ tmp167, pH264Ctx,
	add	r4, r0, #20480	@ tmp312, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r6, #1288]	@ pH264Ctx_13(D)->MaxPpsNum, pH264Ctx_13(D)->MaxPpsNum
	ldr	r2, [r4, #212]	@ pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id
	sub	r3, r3, #1	@ D.45473, pH264Ctx_13(D)->MaxPpsNum,
	cmp	r3, r2	@ D.45473, pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id
	bcc	.L1613	@,
	add	r8, r0, #49152	@ tmp311, pH264Ctx,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1613	@,
	bl	PPSSPSCheck	@
	cmp	r0, #0	@,
	bne	.L1613	@,
	ldr	r2, [r4, #212]	@ pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id
	mov	r7, #2208	@ tmp182,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.45472, pH264Ctx_13(D)->CurrSlice.slice_type
	ldr	r9, [r6, #1296]	@ pH264Ctx_13(D)->PPS, pH264Ctx_13(D)->PPS
	mul	r7, r7, r2	@ D.45474, tmp182, pH264Ctx_13(D)->CurrSlice.pic_parameter_set_id
	cmp	r3, #1	@ D.45472,
	add	r6, r9, r7	@ pPPS, pH264Ctx_13(D)->PPS, D.45474
	beq	.L1671	@,
.L1617:
	ldr	r2, [r6, #36]	@ D.45474, pPPS_25->num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ D.45472,
	str	r2, [r4, #256]	@ D.45474, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	ldr	r2, [r6, #40]	@ D.45474, pPPS_25->num_ref_idx_l1_active_minus1
	str	r2, [r4, #260]	@ D.45474, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	bls	.L1672	@,
	cmp	r3, #2	@ D.45472,
	beq	.L1635	@,
.L1626:
	mov	r3, #32	@ tmp238,
	str	r3, [r4, #260]	@ tmp238, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
.L1627:
	mov	r0, r5	@, pH264Ctx
	bl	ref_pic_list_reordering	@
	subs	r10, r0, #0	@ D.45470,
	bne	.L1613	@,
	ldrb	r3, [r6, #2]	@ zero_extendqisi2	@ pPPS_25->weighted_pred_flag, pPPS_25->weighted_pred_flag
	cmp	r3, #0	@ pPPS_25->weighted_pred_flag,
	bne	.L1673	@,
.L1628:
	ldr	r3, [r6, #44]	@ pPPS_25->weighted_bipred_idc, pPPS_25->weighted_bipred_idc
	cmp	r3, #1	@ pPPS_25->weighted_bipred_idc,
	ldreqb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	movne	r3, #0	@ D.45476,
	subeq	r3, r3, #1	@ D.45476, pH264Ctx_13(D)->CurrSlice.slice_type,
	clzeq	r3, r3	@ D.45476, D.45476
	moveq	r3, r3, lsr #5	@ D.45476, D.45476,
.L1629:
	strb	r3, [r4, #207]	@ D.45476, pH264Ctx_13(D)->CurrSlice.apply_weights_flag
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #207]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.apply_weights_flag, pH264Ctx_13(D)->CurrSlice.apply_weights_flag
	mov	r3, #0	@ tmp254,
	str	r3, [r4, #264]	@ tmp254, pH264Ctx_13(D)->CurrSlice.luma_log2_weight_denom
	cmp	r2, r3	@ pH264Ctx_13(D)->CurrSlice.apply_weights_flag,
	str	r3, [r4, #268]	@ tmp254, pH264Ctx_13(D)->CurrSlice.chroma_log2_weight_denom
	bne	.L1674	@,
	ldr	r3, [r4, #232]	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc, pH264Ctx_13(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc,
	bne	.L1675	@,
.L1631:
	mov	r3, #0	@ tmp266,
	str	r3, [r4, #1808]	@ tmp266, pH264Ctx_13(D)->CurrSlice.cabac_init_idc
	ldrb	r3, [r9, r7]	@ zero_extendqisi2	@ pPPS_25->entropy_coding_mode_flag, pPPS_25->entropy_coding_mode_flag
	cmp	r3, #0	@ pPPS_25->entropy_coding_mode_flag,
	beq	.L1632	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	bls	.L1676	@,
.L1632:
	ldr	r1, .L1678	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	mov	r3, #0	@ tmp282,
	str	r3, [r4, #1816]	@ tmp282, pH264Ctx_13(D)->CurrSlice.disable_deblocking_filter_idc
	str	r3, [r4, #1820]	@ tmp282, pH264Ctx_13(D)->CurrSlice.slice_alpha_c0_offset_div2
	str	r3, [r4, #1824]	@ tmp282, pH264Ctx_13(D)->CurrSlice.slice_beta_offset_div2
	str	r0, [r4, #1812]	@, pH264Ctx_13(D)->CurrSlice.slice_qp_delta
	ldrb	r3, [r6, #3]	@ zero_extendqisi2	@ pPPS_25->deblocking_filter_control_present_flag, pPPS_25->deblocking_filter_control_present_flag
	cmp	r3, #0	@ pPPS_25->deblocking_filter_control_present_flag,
	bne	.L1677	@,
.L1648:
	mov	r0, r10	@, D.45470
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1673:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	moveq	r3, #1	@ D.45476,
	beq	.L1629	@,
	b	.L1628	@
.L1635:
	mov	r3, #32	@ tmp235,
	str	r3, [r4, #256]	@ tmp235, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	b	.L1626	@
.L1677:
	ldr	r1, .L1678+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.45474,
	str	r0, [r4, #1816]	@ D.45474, pH264Ctx_13(D)->CurrSlice.disable_deblocking_filter_idc
	bhi	.L1613	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1613	@,
	cmp	r0, #1	@ D.45474,
	beq	.L1648	@,
	ldr	r1, .L1678+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	add	r3, r0, #6	@ D.45477, D.45473,
	str	r0, [r4, #1820]	@ D.45473, pH264Ctx_13(D)->CurrSlice.slice_alpha_c0_offset_div2
	cmp	r3, #12	@ D.45477,
	bhi	.L1613	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1613	@,
	mov	r0, r5	@, pH264Ctx
	ldr	r1, .L1678+12	@,
	bl	se_v	@
	add	r3, r0, #6	@ D.45477, D.45473,
	str	r0, [r4, #1824]	@ D.45473, pH264Ctx_13(D)->CurrSlice.slice_beta_offset_div2
	cmp	r3, #12	@ D.45477,
	bhi	.L1613	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	beq	.L1648	@,
.L1613:
	mvn	r10, #0	@ D.45470,
	bl	vfmw_dprint_nothing	@
	mov	r0, r10	@, D.45470
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1674:
	mov	r0, r5	@, pH264Ctx
	bl	pred_weight_table	@
	cmp	r0, #0	@,
	bne	.L1613	@,
	ldr	r3, [r4, #232]	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc, pH264Ctx_13(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrSlice.nal_ref_idc,
	beq	.L1631	@,
.L1675:
	mov	r0, r5	@, pH264Ctx
	bl	dec_ref_pic_marking	@
	cmp	r0, #0	@,
	beq	.L1631	@,
	b	.L1613	@
.L1671:
	ldr	r1, .L1678+16	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.45472, pH264Ctx_13(D)->CurrSlice.slice_type
	strb	r0, [r4, #206]	@, pH264Ctx_13(D)->CurrSlice.direct_spatial_mv_pred_flag
	b	.L1617	@
.L1672:
	ldr	r1, .L1678+20	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L1619	@,
	ldr	r3, [r4, #256]	@ D.45478, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
.L1620:
	ldrb	r2, [r4, #201]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.field_pic_flag, pH264Ctx_13(D)->CurrSlice.field_pic_flag
	cmp	r2, #0	@ pH264Ctx_13(D)->CurrSlice.field_pic_flag,
	bne	.L1621	@,
	cmp	r3, #15	@ D.45478,
	bhi	.L1613	@,
	ldr	r3, [r4, #260]	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #15	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	bhi	.L1670	@,
.L1624:
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	bne	.L1613	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ D.45476, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #2	@ D.45476,
	beq	.L1635	@,
	cmp	r3, #1	@ D.45476,
	bne	.L1626	@,
	b	.L1627	@
.L1621:
	cmp	r3, #31	@ D.45478,
	bhi	.L1613	@,
	ldr	r3, [r4, #260]	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #31	@ pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L1624	@,
.L1670:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r3, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	bne	.L1624	@,
	b	.L1613	@
.L1676:
	ldr	r1, .L1678+24	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.45474,
	str	r0, [r4, #1808]	@ D.45474, pH264Ctx_13(D)->CurrSlice.cabac_init_idc
	bhi	.L1613	@,
	ldr	r3, [r8, #3628]	@ pH264Ctx_13(D)->SeErrFlg, pH264Ctx_13(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_13(D)->SeErrFlg,
	beq	.L1632	@,
	b	.L1613	@
.L1619:
	ldr	r1, .L1678+28	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldrb	r2, [r4, #200]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrSlice.slice_type, pH264Ctx_13(D)->CurrSlice.slice_type
	cmp	r2, #1	@ pH264Ctx_13(D)->CurrSlice.slice_type,
	mov	r3, r0	@ D.45478,
	str	r0, [r4, #256]	@ D.45478, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L1620	@,
	ldr	r1, .L1678+32	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #256]	@ D.45478, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l0_active_minus1
	str	r0, [r4, #260]	@, pH264Ctx_13(D)->CurrSlice.num_ref_idx_l1_active_minus1
	b	.L1620	@
.L1679:
	.align	2
.L1678:
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC42
	.word	.LC43
	.word	.LC46
	.word	.LC44
	.word	.LC45
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
	ldr	lr, [r3, #212]	@ D.45491, pH264Ctx_6(D)->CurrSlice.pic_parameter_set_id
	ldr	r6, [ip, #1292]	@ pH264Ctx_6(D)->SPS, pH264Ctx_6(D)->SPS
	ldrb	ip, [r3, #201]	@ zero_extendqisi2	@ D.45493, pH264Ctx_6(D)->CurrSlice.field_pic_flag
	mla	r1, r1, lr, r2	@ tmp143, tmp142, D.45491, pH264Ctx_6(D)->PPS
	cmp	ip, #0	@ D.45493,
	ldr	r5, [r3, #252]	@ pH264Ctx_6(D)->CurrSlice.first_mb_in_slice, pH264Ctx_6(D)->CurrSlice.first_mb_in_slice
	ldr	r4, [r3, #220]	@ pH264Ctx_6(D)->CurrSlice.frame_num, pH264Ctx_6(D)->CurrSlice.frame_num
	ldr	r2, [r1, #28]	@ pps_10->seq_parameter_set_id, pps_10->seq_parameter_set_id
	str	lr, [r3, #1856]	@ D.45491, pH264Ctx_6(D)->PrevSlice.pic_parameter_set_id
	mla	r2, r7, r2, r6	@ sps, tmp146, pps_10->seq_parameter_set_id, pH264Ctx_6(D)->SPS
	ldr	r1, [r2, #744]	@ D.45491, sps_14->seq_parameter_set_id
	strb	ip, [r3, #1848]	@ D.45493, pH264Ctx_6(D)->PrevSlice.field_pic_flag
	ldr	ip, [r3, #232]	@ pH264Ctx_6(D)->CurrSlice.nal_ref_idc, pH264Ctx_6(D)->CurrSlice.nal_ref_idc
	str	r1, [r3, #1852]	@ D.45491, pH264Ctx_6(D)->PrevSlice.seq_parameter_set_id
	ldrneb	r1, [r3, #202]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->CurrSlice.bottom_field_flag
	str	r5, [r3, #1888]	@ pH264Ctx_6(D)->CurrSlice.first_mb_in_slice, pH264Ctx_6(D)->PrevSlice.first_mb_in_slice
	str	r4, [r3, #1864]	@ pH264Ctx_6(D)->CurrSlice.frame_num, pH264Ctx_6(D)->PrevSlice.frame_num
	strneb	r1, [r3, #1849]	@ pH264Ctx_6(D)->CurrSlice.bottom_field_flag, pH264Ctx_6(D)->PrevSlice.bottom_field_flag
	ldrb	r1, [r3, #203]	@ zero_extendqisi2	@ D.45493, pH264Ctx_6(D)->CurrSlice.nal_unit_type
	str	ip, [r3, #1860]	@ pH264Ctx_6(D)->CurrSlice.nal_ref_idc, pH264Ctx_6(D)->PrevSlice.nal_ref_idc
	cmp	r1, #5	@ D.45493,
	strb	r1, [r3, #1850]	@ D.45493, pH264Ctx_6(D)->PrevSlice.nal_unit_type
	ldreq	r1, [r3, #240]	@ pH264Ctx_6(D)->CurrSlice.idr_pic_id, pH264Ctx_6(D)->CurrSlice.idr_pic_id
	streq	r1, [r3, #1868]	@ pH264Ctx_6(D)->CurrSlice.idr_pic_id, pH264Ctx_6(D)->PrevSlice.idr_pic_id
	ldr	r1, [r2, #2908]	@ D.45491, sps_14->pic_order_cnt_type
	cmp	r1, #0	@ D.45491,
	bne	.L1683	@,
	add	r1, r0, #16384	@ tmp191, pH264Ctx,
	ldr	ip, [r1, #3412]	@ pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb
	str	ip, [r3, #1872]	@ pH264Ctx_6(D)->CurrPOC.pic_order_cnt_lsb, pH264Ctx_6(D)->PrevSlice.pic_oder_cnt_lsb
	ldr	r1, [r1, #3416]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom
	str	r1, [r3, #1876]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt_bottom, pH264Ctx_6(D)->PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r1, [r2, #2908]	@ D.45491, sps_14->pic_order_cnt_type
.L1683:
	cmp	r1, #1	@ D.45491,
	addeq	r2, r0, #16384	@ tmp201, pH264Ctx,
	add	r0, r0, #49152	@ tmp209, pH264Ctx,
	ldreq	r1, [r2, #3460]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt
	streq	r1, [r3, #1880]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	ldreq	r2, [r2, #3464]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt
	streq	r2, [r3, #1884]	@ pH264Ctx_6(D)->CurrPOC.delta_pic_order_cnt, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	ldr	r3, [r0, #3644]	@ pH264Ctx_6(D)->TotalSlice, pH264Ctx_6(D)->TotalSlice
	add	r3, r3, #1	@ D.45491, pH264Ctx_6(D)->TotalSlice,
	str	r3, [r0, #3644]	@ D.45491, pH264Ctx_6(D)->TotalSlice
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
	beq	.L1691	@,
	bcc	.L1692	@,
	cmp	r3, #2	@ pH264Ctx_2(D)->CurrSlice.slice_type,
	bxne	lr	@
	ldrb	r3, [r2, #203]	@ zero_extendqisi2	@ pH264Ctx_2(D)->CurrSlice.nal_unit_type, pH264Ctx_2(D)->CurrSlice.nal_unit_type
	add	r0, r0, #49152	@ tmp136, pH264Ctx,
	cmp	r3, #5	@ pH264Ctx_2(D)->CurrSlice.nal_unit_type,
	beq	.L1701	@,
.L1694:
	mov	r3, #0	@ tmp131,
	str	r3, [r0, #1000]	@ tmp131, pH264Ctx_2(D)->CurrPic.is_idr_pic
	bx	lr	@
.L1692:
	add	r0, r0, #49152	@ tmp138, pH264Ctx,
	ldr	r3, [r0, #996]	@ pH264Ctx_2(D)->CurrPic.pic_type, pH264Ctx_2(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_2(D)->CurrPic.pic_type,
	movne	r3, #1	@ tmp128,
	strne	r3, [r0, #996]	@ tmp128, pH264Ctx_2(D)->CurrPic.pic_type
	b	.L1694	@
.L1691:
	add	r0, r0, #49152	@ tmp118, pH264Ctx,
	mov	r2, #2	@ tmp119,
	mov	r3, #0	@ tmp122,
	str	r2, [r0, #996]	@ tmp119, pH264Ctx_2(D)->CurrPic.pic_type
	str	r3, [r0, #1000]	@ tmp122, pH264Ctx_2(D)->CurrPic.is_idr_pic
	bx	lr	@
.L1701:
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
	add	r3, r0, #16384	@ tmp203, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r3, #1204]	@ zero_extendqisi2	@ pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag
	cmp	r3, #0	@ pH264Ctx_13(D)->CurrPPS.entropy_coding_mode_flag,
	beq	.L1703	@,
	ldr	r2, [r0, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _15->nal_bitoffset, _15->nal_bitoffset
	add	r3, r3, #7	@ D.45524, _15->nal_bitoffset,
	bic	r3, r3, #7	@ D.45524, D.45524,
	str	r3, [r2, #64]	@ D.45524, _15->nal_bitoffset
	ldr	r2, [r0, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldr	r3, [r2, #72]	@ _20->nal_trail_zero_bit_num, _20->nal_trail_zero_bit_num
	sub	r3, r3, #1	@ D.45524, _20->nal_trail_zero_bit_num,
	str	r3, [r2, #72]	@ D.45524, _20->nal_trail_zero_bit_num
.L1703:
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldrb	r0, [r3]	@ zero_extendqisi2	@ D.45524, _135->nal_used_segment
	cmp	r0, #0	@ D.45524,
	beq	.L1722	@,
	mov	r2, #0	@ i,
	mov	r4, r2	@ code_len_byte, i
.L1705:
	add	r2, r2, #1	@ i, i,
	ldr	r1, [r3, #12]	@ MEM[base: _4, offset: 12B], MEM[base: _4, offset: 12B]
	cmp	r2, r0	@ i, D.45524
	add	r3, r3, #28	@ ivtmp.2178, ivtmp.2178,
	add	r4, r4, r1	@ code_len_byte, code_len_byte, MEM[base: _4, offset: 12B]
	bne	.L1705	@,
.L1704:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldrb	r0, [r3]	@ zero_extendqisi2	@ D.45526, _31->nal_used_segment
	ldr	r2, [r3, #64]	@ _31->nal_bitoffset, _31->nal_bitoffset
	mov	r1, r0, asl #5	@ tmp214, D.45526,
	and	r2, r2, #7	@ D.45524, _31->nal_bitoffset,
	sub	r1, r1, r0, asl #2	@ tmp215, tmp214, D.45526,
	add	r3, r3, r1	@ tmp216, D.45522, tmp215
	str	r2, [r3, #24]	@ D.45524, _31->stream[_33].bitsoffset
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldrb	r0, [r3]	@ zero_extendqisi2	@ D.45526, _37->nal_used_segment
	ldr	ip, [r3, #64]	@ _37->nal_bitoffset, _37->nal_bitoffset
	mov	r1, r0, asl #5	@ tmp222, D.45526,
	sub	r1, r1, r0, asl #2	@ tmp223, tmp222, D.45526,
	add	r3, r3, r1	@ tmp224, D.45522, tmp223
	ldr	r2, [r3, #16]	@ _37->stream[_42].stream_phy_addr, _37->stream[_42].stream_phy_addr
	add	r2, r2, ip, lsr #3	@ D.45524, _37->stream[_42].stream_phy_addr, _37->nal_bitoffset,
	rsb	r2, r4, r2	@ D.45524, code_len_byte, D.45524
	str	r2, [r3, #28]	@ D.45524, _37->stream[_42].bytespos
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldrb	r0, [r3]	@ zero_extendqisi2	@ D.45526, _46->nal_used_segment
	ldr	r2, [r3, #64]	@ _46->nal_bitoffset, _46->nal_bitoffset
	mov	r1, r0, asl #5	@ tmp239, D.45526,
	sub	r1, r1, r0, asl #2	@ tmp240, tmp239, D.45526,
	add	r3, r3, r1	@ tmp241, D.45522, tmp240
	ldr	r1, [r3, #12]	@ _46->stream[_48].bitstream_length, _46->stream[_48].bitstream_length
	add	r4, r4, r1	@ D.45524, code_len_byte, _46->stream[_48].bitstream_length
	rsb	r4, r2, r4, lsl #3	@ D.45524, _46->nal_bitoffset, D.45524,
	str	r4, [r3, #20]	@ D.45524, _46->stream[_48].valid_bitlen
	b	.L1735	@
.L1709:
	rsb	r3, r0, r3	@ tmp265, tmp404, tmp405
	add	r3, r2, r3	@ tmp266, D.45522, tmp265
	ldr	r2, [r3, #24]	@ _151->stream[_152].bitsoffset, _151->stream[_152].bitsoffset
	add	r2, r2, #8	@ D.45524, _151->stream[_152].bitsoffset,
	str	r2, [r3, #24]	@ D.45524, _151->stream[_152].bitsoffset
	ldr	r2, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldrb	r1, [r2]	@ zero_extendqisi2	@ D.45526, _63->nal_used_segment
	mov	r3, r1, asl #5	@ tmp278, D.45526,
	sub	r3, r3, r1, asl #2	@ tmp279, tmp278, D.45526,
	add	r3, r2, r3	@ tmp280, D.45522, tmp279
	ldr	r2, [r3, #28]	@ _63->stream[_65].bytespos, _63->stream[_65].bytespos
	sub	r2, r2, #1	@ D.45524, _63->stream[_65].bytespos,
	str	r2, [r3, #28]	@ D.45524, _63->stream[_65].bytespos
.L1735:
	ldr	r2, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.45526,* D.45522
	mov	r0, r3, asl #2	@ tmp404, D.45526,
	mov	r3, r3, asl #5	@ tmp405, D.45526,
	rsb	r1, r0, r3	@ tmp257, tmp404, tmp405
	add	r1, r2, r1	@ tmp258, D.45522, tmp257
	ldr	r1, [r1, #28]	@ _128->stream[_130].bytespos,
	tst	r1, #3	@ _128->stream[_130].bytespos,
	bne	.L1709	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldr	r1, [r3, #68]	@ D.45524, _70->nal_segment
	sub	r2, r1, #1	@ D.45524, D.45524,
	cmp	r2, #1	@ D.45524,
	bhi	.L1740	@,
	ldrb	r6, [r3]	@ zero_extendqisi2	@ D.45526, _70->nal_used_segment
	add	r6, r6, #1	@ i, D.45526,
	cmp	r1, r6	@ D.45524, i
	bls	.L1711	@,
	mov	r4, #0	@ tmp410,
.L1713:
	mov	r1, r6, asl #5	@ tmp403, i,
	sub	r1, r1, r6, asl #2	@ tmp302, tmp403, i,
	add	r3, r3, r1	@ tmp303, D.45522, tmp302
	str	r4, [r3, #24]	@ tmp410, _153->stream[i_141].bitsoffset
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp310, D.45522, tmp302
	ldr	r2, [r3, #16]	@ D.45524, _81->stream[i_141].stream_phy_addr
	str	r2, [r3, #28]	@ D.45524, _81->stream[i_141].bytespos
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp322, D.45522, tmp302
	ldr	r2, [r3, #12]	@ _84->stream[i_141].bitstream_length, _84->stream[i_141].bitstream_length
	mov	r2, r2, asl #3	@ D.45524, _84->stream[i_141].bitstream_length,
	str	r2, [r3, #20]	@ D.45524, _84->stream[i_141].valid_bitlen
	b	.L1737	@
.L1715:
	add	r3, r3, r1	@ tmp344, D.45522, tmp409
	ldr	r2, [r3, #24]	@ _156->stream[i_141].bitsoffset, _156->stream[i_141].bitsoffset
	add	r2, r2, #8	@ D.45524, _156->stream[i_141].bitsoffset,
	str	r2, [r3, #24]	@ D.45524, _156->stream[i_141].bitsoffset
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r1	@ tmp358, D.45522, tmp409
	ldr	r2, [r3, #28]	@ _94->stream[i_141].bytespos, _94->stream[i_141].bytespos
	sub	r2, r2, #1	@ D.45524, _94->stream[i_141].bytespos,
	str	r2, [r3, #28]	@ D.45524, _94->stream[i_141].bytespos
.L1737:
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	add	r2, r3, r1	@ tmp336, D.45522, tmp302
	ldr	r2, [r2, #28]	@ _124->stream[i_141].bytespos,
	tst	r2, #3	@ _124->stream[i_141].bytespos,
	bne	.L1715	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	add	r6, r6, #1	@ i, i,
	ldr	r2, [r3, #68]	@ D.45524, _78->nal_segment
	cmp	r2, r6	@ D.45524, i
	bhi	.L1713	@,
	sub	r2, r2, #1	@ D.45524, D.45524,
.L1711:
	mov	r1, r2, asl #5	@ tmp378, D.45524,
	ldr	r0, [r3, #72]	@ _154->nal_trail_zero_bit_num, _154->nal_trail_zero_bit_num
	sub	r2, r1, r2, asl #2	@ tmp379, tmp378, D.45524,
	add	r3, r3, r2	@ tmp380, D.45522, tmp379
	ldr	r2, [r3, #20]	@ _154->stream[_119].valid_bitlen, _154->stream[_119].valid_bitlen
	rsb	r2, r0, r2	@ D.45524, _154->nal_trail_zero_bit_num, _154->stream[_119].valid_bitlen
	str	r2, [r3, #20]	@ D.45524, _154->stream[_119].valid_bitlen
	ldr	ip, [r5, #368]	@ D.45522, pH264Ctx_13(D)->pCurrNal
	ldrb	r1, [ip]	@ zero_extendqisi2	@ i, _108->nal_used_segment
	ldr	r3, [ip, #68]	@ _108->nal_segment, _108->nal_segment
	cmp	r1, r3	@ i, _108->nal_segment
	ldmcsfd	sp!, {r4, r5, r6, pc}	@
	sxth	r3, r1	@ D.45525, i
	add	r5, r5, #49152	@ tmp406, pH264Ctx,
	mov	r2, r3, asl #5	@ tmp395, D.45525,
	sub	r3, r2, r3, asl #2	@ D.45527, tmp395, D.45525,
	add	r3, ip, r3	@ ivtmp.2169, D.45522, D.45527
.L1720:
	ldr	r2, [r3, #28]	@ D.45524, MEM[base: _25, offset: 28B]
	add	r1, r1, #1	@ i, i,
	ldr	r0, [r5, #1024]	@ pH264Ctx_13(D)->CurrPic.stream_base_addr, pH264Ctx_13(D)->CurrPic.stream_base_addr
	add	r3, r3, #28	@ ivtmp.2169, ivtmp.2169,
	cmp	r2, r0	@ D.45524, pH264Ctx_13(D)->CurrPic.stream_base_addr
	strcc	r2, [r5, #1024]	@ D.45524, pH264Ctx_13(D)->CurrPic.stream_base_addr
	ldr	r2, [ip, #68]	@ _108->nal_segment, _108->nal_segment
	cmp	r2, r1	@ _108->nal_segment, i
	bhi	.L1720	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1740:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L1722:
	mov	r4, r0	@ code_len_byte, D.45524
	b	.L1704	@
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
	ldr	r9, .L1754	@ tmp175,
	mov	r6, r1	@ lastScale, lastScale
	mov	r5, #0	@ j,
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	b	.L1746	@
.L1745:
	mov	r0, r4, lsr #2	@ D.45538, scanj,
	and	ip, r4, #3	@ b_posit, scanj,
	str	r6, [fp, r4, asl #2]	@ lastScale, *_29
	mov	r3, #255	@ tmp170,
	ldr	r2, [r10, r0, asl #2]	@ *_37, *_37
	mov	ip, ip, asl #3	@ D.45536, b_posit,
	uxtb	lr, r6	@ D.45536, lastScale
	cmp	r5, r7	@ j, sizeOfScalingList
	bic	r2, r2, r3, asl ip	@ D.45538, *_37, tmp170,
	orr	r3, r2, lr, asl ip	@ D.45538, D.45538, D.45536,
	str	r3, [r10, r0, asl #2]	@ D.45538, *_37
	beq	.L1753	@,
.L1746:
	cmp	r7, #16	@ sizeOfScalingList,
	ldreq	r3, .L1754+4	@ tmp190,
	ldrneb	r4, [r5, r9]	@ zero_extendqisi2	@ scanj, MEM[symbol: g_ZZ_SCAN8, index: _68, offset: 0B]
	ldreqb	r4, [r5, r3]	@ zero_extendqisi2	@ scanj, MEM[symbol: g_ZZ_SCAN, index: _69, offset: 0B]
	cmp	r1, #0	@ lastScale,
	add	r5, r5, #1	@ j, j,
	beq	.L1745	@,
	ldr	r1, .L1754+8	@,
	mov	r0, r8	@, pH264Ctx
	bl	se_v	@
	add	r0, r6, r0	@ D.45536, lastScale,
	ldr	r2, [sp, #40]	@ tmp191, UseDefaultScalingMatrix
	add	r0, r0, #256	@ D.45536, D.45536,
	mov	r1, r0, asr #31	@ tmp153, D.45536,
	mov	r1, r1, lsr #24	@ tmp154, tmp153,
	add	r0, r0, r1	@ tmp155, D.45536, tmp154
	uxtb	r0, r0	@ tmp156, tmp155
	rsb	r3, r1, r0	@ D.45537, tmp154, tmp156
	rsb	r1, r1, r0	@ lastScale, tmp154, tmp156
	clz	r3, r3	@ D.45537, D.45537
	mov	r3, r3, lsr #5	@ D.45537, D.45537,
	cmp	r3, #0	@ D.45537,
	moveq	r6, r1	@ lastScale, lastScale
	cmp	r4, #0	@ scanj,
	movne	r3, #0	@, tmp163
	andeq	r3, r3, #1	@,, tmp163, D.45537
	str	r3, [r2]	@ tmp163, *UseDefaultScalingMatrix_25(D)
	b	.L1745	@
.L1753:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1755:
	.align	2
.L1754:
	.word	.LANCHOR1+16
	.word	.LANCHOR1
	.word	.LC51
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
	ldr	r1, .L1810	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	add	r6, r5, #49152	@ tmp350, pH264Ctx,
	strb	r0, [r4]	@, pPPS_22(D)->entropy_coding_mode_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1802	@,
	ldr	r1, .L1810+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #1]	@, pPPS_22(D)->pic_order_present_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1802	@,
	ldr	r1, .L1810+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@ D.45589,
	str	r0, [r4, #32]	@ D.45589, pPPS_22(D)->num_slice_groups_minus1
	bne	.L1760	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	beq	.L1761	@,
.L1760:
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L1810+12	@ tmp236,
	ldr	r3, [r3]	@ D.45600, g_event_report
	cmp	r3, #0	@ D.45600,
	beq	.L1802	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_18(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #102	@,
	blx	r3	@ D.45600
.L1802:
	mvn	r0, #0	@ D.45586,
.L1758:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1761:
	ldr	r1, .L1810+16	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #31	@ D.45589,
	str	r0, [r4, #36]	@ D.45589, pPPS_22(D)->num_ref_idx_l0_active_minus1
	bhi	.L1763	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1763	@,
	ldr	r1, .L1810+20	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #31	@ D.45589,
	str	r0, [r4, #40]	@ D.45589, pPPS_22(D)->num_ref_idx_l1_active_minus1
	bhi	.L1763	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1763	@,
	ldr	r1, .L1810+24	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #2]	@, pPPS_22(D)->weighted_pred_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	bne	.L1802	@,
	ldr	r2, .L1810+28	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	cmp	r0, #2	@ D.45591,
	str	r0, [r4, #44]	@ D.45591, pPPS_22(D)->weighted_bipred_idc
	bhi	.L1763	@,
	ldr	r1, .L1810+32	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1810+36	@,
	str	r0, [r4, #48]	@, pPPS_22(D)->pic_init_qp_minus26
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1810+40	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	ldr	r1, .L1810+44	@,
	str	r0, [r4, #52]	@, pPPS_22(D)->chroma_qp_index_offset
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1810+48	@,
	strb	r0, [r4, #3]	@, pPPS_22(D)->deblocking_filter_control_present_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1810+52	@,
	strb	r0, [r4, #4]	@, pPPS_22(D)->constrained_intra_pred_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45590,
	strb	r0, [r4, #17]	@ D.45590, pPPS_22(D)->redundant_pic_cnt_present_flag
	cmp	r0, #0	@ D.45590,
	bne	.L1803	@,
.L1766:
	ldr	r3, [r4, #52]	@ pPPS_22(D)->chroma_qp_index_offset, pPPS_22(D)->chroma_qp_index_offset
	add	r0, r5, #13504	@, pH264Ctx,
	mov	r7, #0	@ tmp264,
	add	r0, r0, #24	@,,
	str	r7, [r4, #60]	@ tmp264, pPPS_22(D)->transform_8x8_mode_flag
	str	r3, [r4, #56]	@ pPPS_22(D)->chroma_qp_index_offset, pPPS_22(D)->second_chroma_qp_index_offset
	strb	r7, [r4, #18]	@ tmp264, pPPS_22(D)->pic_scaling_matrix_present_flag
	bl	BsResidBits	@
	ldr	r3, [r5, #368]	@ pH264Ctx_18(D)->pCurrNal, pH264Ctx_18(D)->pCurrNal
	ldr	r3, [r3, #72]	@ _80->nal_trail_zero_bit_num, _80->nal_trail_zero_bit_num
	add	r3, r3, #3	@ D.45589, _80->nal_trail_zero_bit_num,
	cmp	r0, r3	@, D.45589
	bcs	.L1767	@,
.L1786:
	mov	r0, #0	@ D.45586,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1767:
	ldr	r1, .L1810+56	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1810+60	@,
	str	r0, [r4, #60]	@, pPPS_22(D)->transform_8x8_mode_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45590,
	strb	r0, [r4, #18]	@ D.45590, pPPS_22(D)->pic_scaling_matrix_present_flag
	cmp	r0, #1	@ D.45590,
	beq	.L1768	@,
.L1785:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, .L1810+64	@,
	bl	se_v	@
	add	r3, r0, #12	@ D.45599, D.45591,
	str	r0, [r4, #56]	@ D.45591, pPPS_22(D)->second_chroma_qp_index_offset
	cmp	r3, #24	@ D.45599,
	bhi	.L1763	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_18(D)->SeErrFlg, pH264Ctx_18(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_18(D)->SeErrFlg,
	beq	.L1786	@,
.L1763:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45586,
	b	.L1758	@
.L1803:
	bl	vfmw_dprint_nothing	@
	b	.L1766	@
.L1768:
	add	r9, sp, #12	@ ivtmp.2208,,
	add	fp, r4, #4	@ ivtmp.2214, pPPS,
	add	r8, r4, #1984	@ ivtmp.2221, pPPS,
	add	r10, r4, #64	@ ivtmp.2225, pPPS,
	b	.L1776	@
.L1807:
	ldr	r3, [ip, #1292]	@ pH264Ctx_18(D)->SPS, pH264Ctx_18(D)->SPS
	ldr	ip, [r4, #28]	@ pPPS_22(D)->seq_parameter_set_id, pPPS_22(D)->seq_parameter_set_id
	mla	r3, lr, ip, r3	@ D.45598, tmp296, pPPS_22(D)->seq_parameter_set_id, pH264Ctx_18(D)->SPS
	ldrb	ip, [r3, #25]	@ zero_extendqisi2	@ _107->seq_scaling_matrix_present_flag, _107->seq_scaling_matrix_present_flag
	cmp	ip, #1	@ _107->seq_scaling_matrix_present_flag,
	beq	.L1804	@,
	ldr	r3, .L1810+68	@ tmp384,
	cmp	r1, #0	@ D.45597,
	add	ip, r3, #16	@ tmp385,,
	moveq	r3, ip	@ tmp384, tmp385
	mov	r1, r3	@, tmp384
	bl	memcpy	@
.L1771:
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #16	@ ivtmp.2221, ivtmp.2221,
	cmp	r7, #6	@ i,
	add	r10, r10, #64	@ ivtmp.2225, ivtmp.2225,
	beq	.L1805	@,
.L1776:
	ldr	r1, .L1810+72	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	clz	r1, r7	@ D.45597, i
	add	ip, r5, #12288	@ tmp293, pH264Ctx,
	mov	lr, #4000	@ tmp296,
	mov	r2, #16	@,
	mov	r1, r1, lsr #5	@ D.45597, D.45597,
	cmp	r0, #1	@ D.45589,
	mov	r3, r0	@ D.45589,
	mov	r0, r8	@, ivtmp.2221
	str	r3, [r9, #4]!	@ D.45589, MEM[base: _197, offset: 0B]
	strb	r3, [fp, #1]!	@ D.45589, MEM[base: _198, offset: 0B]
	beq	.L1806	@,
	cmp	r7, #0	@ i,
	cmpne	r7, #3	@, i,
	beq	.L1807	@,
	mov	r2, #16	@,
	sub	r1, r8, #16	@, ivtmp.2221,
	mov	r0, r8	@, ivtmp.2221
	bl	memcpy	@
	b	.L1771	@
.L1805:
	add	r9, r4, #2080	@ ivtmp.2192, pPPS,
	add	fp, r4, #448	@ ivtmp.2195, pPPS,
	add	r8, sp, #8	@ ivtmp.2198,,
	add	r10, r4, #11	@ ivtmp.2200, pPPS,
	mov	r7, #0	@ i,
.L1784:
	ldr	r2, [r4, #60]	@ pPPS_22(D)->transform_8x8_mode_flag, pPPS_22(D)->transform_8x8_mode_flag
	mov	r3, #0	@ tmp319,
	cmp	r2, #1	@ pPPS_22(D)->transform_8x8_mode_flag,
	strne	r3, [r8]	@ tmp319, MEM[base: _184, offset: 0B]
	strneb	r3, [r10]	@ tmp319, MEM[base: _185, offset: 0B]
	beq	.L1808	@,
.L1779:
	add	ip, r5, #12288	@ tmp328, pH264Ctx,
	ldr	r1, [r4, #28]	@ pPPS_22(D)->seq_parameter_set_id, pPPS_22(D)->seq_parameter_set_id
	mov	r3, #4000	@ tmp331,
	mov	r0, r9	@, ivtmp.2192
	ldr	ip, [ip, #1292]	@ pH264Ctx_18(D)->SPS, pH264Ctx_18(D)->SPS
	mov	r2, #64	@,
	mla	r3, r3, r1, ip	@ D.45598, tmp331, pPPS_22(D)->seq_parameter_set_id, pH264Ctx_18(D)->SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ _137->seq_scaling_matrix_present_flag, _137->seq_scaling_matrix_present_flag
	cmp	r1, #1	@ _137->seq_scaling_matrix_present_flag,
	beq	.L1809	@,
	ldr	r1, .L1810+76	@ tmp388,
	cmp	r7, #0	@ i,
	add	r3, r1, #64	@ tmp389,,
	movne	r1, r3	@ tmp388, tmp389
	bl	memcpy	@
.L1780:
	add	r7, r7, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2192, ivtmp.2192,
	cmp	r7, #2	@ i,
	add	fp, fp, #256	@ ivtmp.2195, ivtmp.2195,
	add	r8, r8, #4	@ ivtmp.2198, ivtmp.2198,
	add	r10, r10, #1	@ ivtmp.2200, ivtmp.2200,
	bne	.L1784	@,
	b	.L1785	@
.L1806:
	mov	r3, r2	@,
	mov	r1, r10	@, ivtmp.2225
	mov	r2, r8	@, ivtmp.2221
	mov	r0, r5	@, pH264Ctx
	str	r9, [sp]	@ ivtmp.2208,
	bl	Scaling_List	@
	ldr	r3, [r9]	@ MEM[base: _197, offset: 0B], MEM[base: _197, offset: 0B]
	cmp	r3, #1	@ MEM[base: _197, offset: 0B],
	bne	.L1771	@,
	ldr	r1, .L1810+68	@ tmp382,
	mov	r2, #16	@,
	cmp	r7, #2	@ i,
	mov	r0, r8	@, ivtmp.2221
	add	r3, r1, r2	@ tmp383,,
	movhi	r1, r3	@ tmp382, tmp383
	bl	memcpy	@
	b	.L1771	@
.L1804:
	add	r1, r3, r7, lsl #4	@ tmp301, D.45598, i,
	mov	r2, #16	@,
	add	r1, r1, #2672	@, tmp301,
	mov	r0, r8	@, ivtmp.2221
	add	r1, r1, #8	@,,
	bl	memcpy	@
	b	.L1771	@
.L1808:
	ldr	r1, .L1810+80	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	mov	r2, r9	@, ivtmp.2192
	mov	r1, fp	@, ivtmp.2195
	mov	r3, #64	@,
	mov	ip, r0	@ D.45589,
	cmp	ip, #1	@ D.45589,
	mov	r0, r5	@, pH264Ctx
	str	ip, [r8]	@ D.45589, MEM[base: _182, offset: 0B]
	strb	ip, [r10]	@ D.45589, MEM[base: _183, offset: 0B]
	bne	.L1779	@,
	str	r8, [sp]	@ ivtmp.2198,
	bl	Scaling_List	@
	ldr	r3, [r8]	@ MEM[base: _182, offset: 0B], MEM[base: _182, offset: 0B]
	cmp	r3, #1	@ MEM[base: _182, offset: 0B],
	bne	.L1780	@,
	ldr	r1, .L1810+76	@ tmp386,
	mov	r2, #64	@,
	cmp	r7, #0	@ i,
	mov	r0, r9	@, ivtmp.2192
	add	r3, r1, r2	@ tmp387,,
	movne	r1, r3	@ tmp386, tmp387
	bl	memcpy	@
	b	.L1780	@
.L1809:
	add	r1, r3, r7, lsl #6	@ tmp336, D.45598, i,
	add	r1, r1, #2768	@, tmp336,
	add	r1, r1, #8	@,,
	bl	memcpy	@
	b	.L1780	@
.L1811:
	.align	2
.L1810:
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	g_event_report
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LANCHOR0+80
	.word	.LC68
	.word	.LANCHOR0+112
	.word	.LC69
	.fnend
	.size	ProcessPPS, .-ProcessPPS
	.align	2
	.global	PPSEqual
	.type	PPSEqual, %function
PPSEqual:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pPPS1
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L1815	@,
	cmp	r1, #0	@ pPPS2,
	beq	.L1815	@,
	ldr	r2, [r0, #24]	@ pPPS1_12(D)->pic_parameter_set_id, pPPS1_12(D)->pic_parameter_set_id
	ldr	lr, [r0, #28]	@ pPPS1_12(D)->seq_parameter_set_id, pPPS1_12(D)->seq_parameter_set_id
	ldr	ip, [r1, #28]	@ pPPS2_15(D)->seq_parameter_set_id, pPPS2_15(D)->seq_parameter_set_id
	ldr	r5, [r1, #24]	@ pPPS2_15(D)->pic_parameter_set_id, pPPS2_15(D)->pic_parameter_set_id
	ldrb	r4, [r0]	@ zero_extendqisi2	@ pPPS1_12(D)->entropy_coding_mode_flag, pPPS1_12(D)->entropy_coding_mode_flag
	cmp	lr, ip	@ pPPS1_12(D)->seq_parameter_set_id, pPPS2_15(D)->seq_parameter_set_id
	cmpeq	r2, r5	@, pPPS1_12(D)->pic_parameter_set_id, pPPS2_15(D)->pic_parameter_set_id
	ldrb	r3, [r1]	@ zero_extendqisi2	@ pPPS2_15(D)->entropy_coding_mode_flag, pPPS2_15(D)->entropy_coding_mode_flag
	ldrb	r5, [r0, #1]	@ zero_extendqisi2	@ pPPS1_12(D)->pic_order_present_flag, pPPS1_12(D)->pic_order_present_flag
	ldrb	lr, [r1, #1]	@ zero_extendqisi2	@ pPPS2_15(D)->pic_order_present_flag, pPPS2_15(D)->pic_order_present_flag
	moveq	r2, #1	@ tmp225,
	movne	r2, #0	@ tmp225,
	cmp	r4, r3	@ pPPS1_12(D)->entropy_coding_mode_flag, pPPS2_15(D)->entropy_coding_mode_flag
	movne	ip, #0	@, tmp231
	andeq	ip, r2, #1	@,, tmp231, tmp225
	ldr	r4, [r0, #36]	@ pPPS1_12(D)->num_ref_idx_l0_active_minus1, pPPS1_12(D)->num_ref_idx_l0_active_minus1
	cmp	r5, lr	@ pPPS1_12(D)->pic_order_present_flag, pPPS2_15(D)->pic_order_present_flag
	movne	r3, #0	@, tmp237
	andeq	r3, ip, #1	@,, tmp237, tmp231
	ldr	r2, [r1, #36]	@ pPPS2_15(D)->num_ref_idx_l0_active_minus1, pPPS2_15(D)->num_ref_idx_l0_active_minus1
	ldr	r5, [r0, #40]	@ pPPS1_12(D)->num_ref_idx_l1_active_minus1, pPPS1_12(D)->num_ref_idx_l1_active_minus1
	ldr	ip, [r1, #40]	@ pPPS2_15(D)->num_ref_idx_l1_active_minus1, pPPS2_15(D)->num_ref_idx_l1_active_minus1
	cmp	r4, r2	@ pPPS1_12(D)->num_ref_idx_l0_active_minus1, pPPS2_15(D)->num_ref_idx_l0_active_minus1
	movne	lr, #0	@, tmp243
	andeq	lr, r3, #1	@,, tmp243, tmp237
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ pPPS1_12(D)->weighted_pred_flag, pPPS1_12(D)->weighted_pred_flag
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ pPPS2_15(D)->weighted_pred_flag, pPPS2_15(D)->weighted_pred_flag
	cmp	r5, ip	@ pPPS1_12(D)->num_ref_idx_l1_active_minus1, pPPS2_15(D)->num_ref_idx_l1_active_minus1
	movne	r2, #0	@, tmp249
	andeq	r2, lr, #1	@,, tmp249, tmp243
	ldr	r5, [r0, #44]	@ pPPS1_12(D)->weighted_bipred_idc, pPPS1_12(D)->weighted_bipred_idc
	ldr	lr, [r1, #44]	@ pPPS2_15(D)->weighted_bipred_idc, pPPS2_15(D)->weighted_bipred_idc
	cmp	r4, r3	@ pPPS1_12(D)->weighted_pred_flag, pPPS2_15(D)->weighted_pred_flag
	movne	ip, #0	@, tmp255
	andeq	ip, r2, #1	@,, tmp255, tmp249
	ldr	r4, [r0, #48]	@ pPPS1_12(D)->pic_init_qp_minus26, pPPS1_12(D)->pic_init_qp_minus26
	ldr	r2, [r1, #48]	@ pPPS2_15(D)->pic_init_qp_minus26, pPPS2_15(D)->pic_init_qp_minus26
	cmp	r5, lr	@ pPPS1_12(D)->weighted_bipred_idc, pPPS2_15(D)->weighted_bipred_idc
	movne	r3, #0	@, tmp261
	andeq	r3, ip, #1	@,, tmp261, tmp255
	ldr	r5, [r0, #52]	@ pPPS1_12(D)->chroma_qp_index_offset, pPPS1_12(D)->chroma_qp_index_offset
	ldr	ip, [r1, #52]	@ pPPS2_15(D)->chroma_qp_index_offset, pPPS2_15(D)->chroma_qp_index_offset
	cmp	r4, r2	@ pPPS1_12(D)->pic_init_qp_minus26, pPPS2_15(D)->pic_init_qp_minus26
	movne	lr, #0	@, tmp267
	andeq	lr, r3, #1	@,, tmp267, tmp261
	ldrb	r6, [r0, #3]	@ zero_extendqisi2	@ pPPS1_12(D)->deblocking_filter_control_present_flag, pPPS1_12(D)->deblocking_filter_control_present_flag
	ldrb	r4, [r1, #3]	@ zero_extendqisi2	@ pPPS2_15(D)->deblocking_filter_control_present_flag, pPPS2_15(D)->deblocking_filter_control_present_flag
	cmp	r5, ip	@ pPPS1_12(D)->chroma_qp_index_offset, pPPS2_15(D)->chroma_qp_index_offset
	movne	r2, #0	@, tmp273
	andeq	r2, lr, #1	@,, tmp273, tmp267
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ pPPS1_12(D)->constrained_intra_pred_flag, pPPS1_12(D)->constrained_intra_pred_flag
	ldrb	r5, [r1, #4]	@ zero_extendqisi2	@ pPPS2_15(D)->constrained_intra_pred_flag, pPPS2_15(D)->constrained_intra_pred_flag
	cmp	r6, r4	@ pPPS1_12(D)->deblocking_filter_control_present_flag, pPPS2_15(D)->deblocking_filter_control_present_flag
	movne	ip, #0	@, tmp279
	andeq	ip, r2, #1	@,, tmp279, tmp273
	ldr	lr, [r0, #60]	@ D.45722, pPPS1_12(D)->transform_8x8_mode_flag
	ldr	r4, [r1, #60]	@ pPPS2_15(D)->transform_8x8_mode_flag, pPPS2_15(D)->transform_8x8_mode_flag
	cmp	r3, r5	@ pPPS1_12(D)->constrained_intra_pred_flag, pPPS2_15(D)->constrained_intra_pred_flag
	movne	r3, #0	@, tmp285
	andeq	r3, ip, #1	@,, tmp285, tmp279
	ldrb	r2, [r1, #18]	@ zero_extendqisi2	@ pPPS2_15(D)->pic_scaling_matrix_present_flag, pPPS2_15(D)->pic_scaling_matrix_present_flag
	ldrb	ip, [r0, #18]	@ zero_extendqisi2	@ D.45724, pPPS1_12(D)->pic_scaling_matrix_present_flag
	cmp	lr, r4	@ D.45722, pPPS2_15(D)->transform_8x8_mode_flag
	movne	r3, #0	@, tmp290
	andeq	r3, r3, #1	@,, tmp290, tmp285
	cmp	r2, ip	@ pPPS2_15(D)->pic_scaling_matrix_present_flag, D.45724
	movne	r2, #0	@, equal
	andeq	r2, r3, #1	@,, equal, tmp290
	cmp	ip, #0	@ D.45724,
	beq	.L1816	@,
	mov	lr, lr, asl #1	@ D.45722, D.45722,
	adds	r3, lr, #6	@ D.45722, D.45722,
	beq	.L1816	@,
	sub	r8, r1, #1088	@ ivtmp.2295, pPPS2,
	mov	fp, #0	@ ivtmp.2299,
	sub	r8, r8, #4	@ ivtmp.2295, ivtmp.2295,
	add	r10, r0, #4	@ ivtmp.2277, pPPS1,
	add	r9, r1, #4	@ ivtmp.2285, pPPS2,
	mov	r6, fp	@ i, ivtmp.2299
	mov	r7, r0	@ ivtmp.2294, pPPS1
	mov	r5, r3	@ D.45722, D.45722
	str	r1, [sp, #4]	@ pPPS2, %sfp
.L1821:
	ldrb	r3, [r10, #1]!	@ zero_extendqisi2	@ D.45726, MEM[base: _4, offset: 0B]
	ldrsb	ip, [r9, #1]!	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	sxtb	r1, r3	@ D.45726, D.45726
	cmp	ip, r1	@ MEM[base: _3, offset: 0B], D.45726
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r3, #0	@ D.45726,
	beq	.L1838	@,
	cmp	r6, #5	@ i,
	bhi	.L1818	@,
	ldr	r1, [sp, #4]	@ pPPS2, %sfp
	add	r4, fp, #64	@ ivtmp.2299, ivtmp.2299,
	add	fp, fp, #128	@ D.45728, ivtmp.2299,
	add	r3, r0, r4	@ ivtmp.2237, pPPS1, ivtmp.2299
	add	fp, r0, fp	@ D.45721, pPPS1, D.45728
	add	r1, r1, r4	@ ivtmp.2246, pPPS2, ivtmp.2299
.L1819:
	ldr	lr, [r3], #4	@ D.45725, MEM[base: _137, offset: 0B]
	ldr	ip, [r1], #4	@ D.45725, MEM[base: _136, offset: 0B]
	cmp	lr, ip	@ D.45725, D.45725
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r3, fp	@ ivtmp.2237, D.45721
	bne	.L1819	@,
.L1817:
	add	r6, r6, #1	@ i, i,
	add	r7, r7, #256	@ ivtmp.2294, ivtmp.2294,
	cmp	r6, r5	@ i, D.45722
	add	r8, r8, #256	@ ivtmp.2295, ivtmp.2295,
	mov	fp, r4	@ ivtmp.2299, ivtmp.2299
	bne	.L1821	@,
	ldr	r1, [sp, #4]	@ pPPS2, %sfp
.L1816:
	ldr	r0, [r0, #56]	@ pPPS1_12(D)->second_chroma_qp_index_offset, pPPS1_12(D)->second_chroma_qp_index_offset
	ldr	r3, [r1, #56]	@ pPPS2_15(D)->second_chroma_qp_index_offset, pPPS2_15(D)->second_chroma_qp_index_offset
	cmp	r0, r3	@ pPPS1_12(D)->second_chroma_qp_index_offset, pPPS2_15(D)->second_chroma_qp_index_offset
	movne	r0, #0	@, equal
	andeq	r0, r2, #1	@,, equal, equal
	eor	r0, r0, #1	@ D.45723, equal,
	rsb	r0, r0, #0	@ D.45719, D.45723
.L1814:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1818:
	sub	r3, r7, #1088	@ ivtmp.2258, ivtmp.2294,
	sub	r4, r7, #836	@ D.45721, ivtmp.2294,
	sub	r3, r3, #4	@ ivtmp.2258, ivtmp.2258,
	mov	r1, r8	@ ivtmp.2267, ivtmp.2295
.L1820:
	ldr	lr, [r3, #4]!	@ MEM[base: _123, offset: 0B], MEM[base: _123, offset: 0B]
	ldr	ip, [r1, #4]!	@ MEM[base: _122, offset: 0B], MEM[base: _122, offset: 0B]
	cmp	lr, ip	@ MEM[base: _123, offset: 0B], MEM[base: _122, offset: 0B]
	movne	r2, #0	@, equal
	andeq	r2, r2, #1	@,, equal, equal
	cmp	r4, r3	@ D.45721, ivtmp.2258
	bne	.L1820	@,
.L1838:
	add	r4, fp, #64	@ ivtmp.2299, ivtmp.2299,
	b	.L1817	@
.L1815:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45719,
	b	.L1814	@
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
	ldr	r1, .L1856	@,
	add	r4, r0, #12288	@ tmp154, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #1288]	@ pH264Ctx_4(D)->MaxPpsNum, pH264Ctx_4(D)->MaxPpsNum
	sub	r3, r3, #1	@ D.45732, pH264Ctx_4(D)->MaxPpsNum,
	cmp	r0, r3	@ pic_parameter_set_id, D.45732
	mov	r6, r0	@ pic_parameter_set_id,
	bls	.L1840	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #1288]	@ D.45732, pH264Ctx_4(D)->MaxPpsNum
	sub	r2, r3, #1	@ D.45732, D.45732,
	cmp	r6, r2	@ pic_parameter_set_id, D.45732
	bls	.L1847	@,
	ldr	r2, .L1856+4	@ tmp160,
	ldr	ip, [r2]	@ D.45734, g_event_report
	cmp	ip, #0	@ D.45734,
	beq	.L1847	@,
	add	r5, r5, #49152	@ tmp163, pH264Ctx,
	str	r6, [sp]	@ pic_parameter_set_id, para
	str	r3, [sp, #4]	@ D.45732, para
	mov	r2, sp	@,
	ldr	r0, [r5, #3688]	@, pH264Ctx_4(D)->ChanID
	mov	r1, #110	@,
	blx	ip	@ D.45734
	mvn	r0, #0	@ D.45731,
.L1841:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1840:
	ldr	r1, .L1856+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #1284]	@ pH264Ctx_4(D)->MaxSpsNum, pH264Ctx_4(D)->MaxSpsNum
	sub	r3, r3, #1	@ D.45732, pH264Ctx_4(D)->MaxSpsNum,
	cmp	r0, r3	@ seq_parameter_set_id, D.45732
	mov	ip, r0	@ seq_parameter_set_id,
	bhi	.L1843	@,
	ldr	r2, [r4, #1292]	@ pH264Ctx_4(D)->SPS, pH264Ctx_4(D)->SPS
	mov	r3, #4000	@ tmp174,
	mla	r3, r3, r0, r2	@ tmp175, tmp174, seq_parameter_set_id, pH264Ctx_4(D)->SPS
	ldrb	r3, [r3, #23]	@ zero_extendqisi2	@ _29->is_valid, _29->is_valid
	cmp	r3, #0	@ _29->is_valid,
	beq	.L1843	@,
	mov	r9, #2208	@ tmp177,
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mul	r7, r9, r6	@ D.45733, tmp177, pic_parameter_set_id
	add	r3, r3, r7	@ D.45737, pH264Ctx_4(D)->PPS, D.45733
	ldrb	r8, [r3, #19]	@ zero_extendqisi2	@ _34->is_valid, _34->is_valid
	cmp	r8, #0	@ _34->is_valid,
	beq	.L1844	@,
	ldr	r8, .L1856+12	@ tmp182,
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, tmp182
	str	r6, [r8, #24]	@ pic_parameter_set_id, pps_tmp.pic_parameter_set_id
	str	ip, [r8, #28]	@ seq_parameter_set_id, pps_tmp.seq_parameter_set_id
	bl	ProcessPPS	@
	subs	r5, r0, #0	@ D.45732,
	bne	.L1843	@,
	ldr	r1, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r0, r8	@, tmp182
	add	r1, r1, r7	@, pH264Ctx_4(D)->PPS, D.45733
	bl	PPSEqual	@
	cmp	r0, #0	@ D.45731
	beq	.L1841	@,
	ldr	r0, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r2, r9	@, tmp177
	mov	r1, r8	@, tmp182
	mov	r3, #1	@ tmp191,
	add	r0, r0, r7	@, pH264Ctx_4(D)->PPS, D.45733
	strb	r3, [r8, #20]	@ tmp191, pps_tmp.is_refreshed
	strb	r3, [r8, #19]	@ tmp191, pps_tmp.is_valid
	bl	memmove	@
	mov	r0, r5	@ D.45731, D.45732
	b	.L1841	@
.L1844:
	str	r6, [r3, #24]	@ pic_parameter_set_id, _34->pic_parameter_set_id
	mov	r0, r5	@, pH264Ctx
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r3, r3, r7	@ tmp204, pH264Ctx_4(D)->PPS, D.45733
	str	ip, [r3, #28]	@ seq_parameter_set_id, _52->seq_parameter_set_id
	ldr	r1, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r1, r1, r7	@, pH264Ctx_4(D)->PPS, D.45733
	bl	ProcessPPS	@
	cmp	r0, #0	@ D.45731
	bne	.L1855	@,
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r2, #1	@ tmp225,
	add	r3, r3, r7	@ tmp224, pH264Ctx_4(D)->PPS, D.45733
	strb	r2, [r3, #20]	@ tmp225, _66->is_refreshed
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r7, r3, r7	@ tmp230, pH264Ctx_4(D)->PPS, D.45733
	strb	r2, [r7, #19]	@ tmp225, _69->is_valid
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1847:
	mvn	r0, #0	@ D.45731,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1843:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45731,
	b	.L1841	@
.L1855:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	mov	r2, #1	@ tmp213,
	mvn	r0, #0	@ D.45731,
	add	r3, r3, r7	@ tmp212, pH264Ctx_4(D)->PPS, D.45733
	strb	r2, [r3, #20]	@ tmp213, _60->is_refreshed
	ldr	r3, [r4, #1296]	@ pH264Ctx_4(D)->PPS, pH264Ctx_4(D)->PPS
	add	r7, r3, r7	@ tmp218, pH264Ctx_4(D)->PPS, D.45733
	strb	r8, [r7, #19]	@ _34->is_valid, _63->is_valid
	b	.L1841	@
.L1857:
	.align	2
.L1856:
	.word	.LC70
	.word	g_event_report
	.word	.LC71
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
	mov	r5, r1	@ pVUI, pVUI
	ldr	r1, .L1908	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5]	@ D.45800, pVUI_21(D)->aspect_ratio_info_present_flag
	cmp	r0, #0	@ D.45800,
	streqb	r0, [r5, #15]	@ D.45800, pVUI_21(D)->aspect_ratio_idc
	bne	.L1902	@,
.L1860:
	ldr	r1, .L1908+4	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #1]	@ D.45800, pVUI_21(D)->overscan_info_present_flag
	cmp	r0, #0	@ D.45800,
	bne	.L1903	@,
.L1861:
	ldr	r1, .L1908+8	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #3]	@ D.45800, pVUI_21(D)->video_signal_type_present_flag
	cmp	r0, #0	@ D.45800,
	moveq	r3, #5	@ tmp256,
	streq	r3, [r5, #28]	@ tmp256, pVUI_21(D)->video_format
	bne	.L1904	@,
.L1863:
	ldr	r1, .L1908+12	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #6]	@ D.45800, pVUI_21(D)->chroma_location_info_present_flag
	cmp	r0, #0	@ D.45800,
	bne	.L1905	@,
.L1864:
	ldr	r1, .L1908+16	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #8]	@ D.45800, pVUI_21(D)->timing_info_present_flag
	cmp	r0, #0	@ D.45800,
	bne	.L1906	@,
.L1866:
	ldr	r1, .L1908+20	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #7]	@ D.45800, pVUI_21(D)->nal_hrd_parameters_present_flag
	cmp	r0, #0	@ D.45800,
	beq	.L1868	@,
	ldr	r1, .L1908+24	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, .L1908+28	@,
	mov	r1, #4	@,
	str	r0, [r5, #96]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+32	@,
	mov	r1, #4	@,
	strb	r0, [r5, #92]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r5, #96]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1
	cmp	r3, #31	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1,
	strb	r0, [r5, #93]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_size_scale
	bhi	.L1871	@,
	add	r9, r4, #49152	@ tmp339, pH264Ctx,
	ldr	r6, [r9, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r6, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1871	@,
	add	r7, r5, #96	@ ivtmp.2337, pVUI,
	add	r8, r5, #59	@ ivtmp.2353, pVUI,
.L1872:
	ldr	r1, .L1908+36	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+40	@,
	add	r6, r6, #1	@ SchedSelIdx, SchedSelIdx,
	str	r0, [r7, #4]!	@, MEM[base: _260, offset: 0B]
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+44	@,
	str	r0, [r7, #128]	@, MEM[base: _260, offset: 128B]
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r8, #1]!	@, MEM[base: _262, offset: 0B]
	ldr	r3, [r5, #96]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1
	cmp	r3, r6	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_cnt_minus1, SchedSelIdx
	bcs	.L1872	@,
	ldr	r2, .L1908+48	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+52	@,
	mov	r1, #5	@,
	str	r0, [r5, #356]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+56	@,
	mov	r1, #5	@,
	str	r0, [r5, #360]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+60	@,
	mov	r1, #5	@,
	str	r0, [r5, #364]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #368]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 60B].time_offset_length
.L1868:
	ldr	r1, .L1908+64	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #10]	@ D.45800, pVUI_21(D)->vcl_hrd_parameters_present_flag
	cmp	r0, #0	@ D.45800,
	bne	.L1907	@,
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ pVUI_21(D)->nal_hrd_parameters_present_flag, pVUI_21(D)->nal_hrd_parameters_present_flag
	add	r9, r4, #49152	@ tmp339, pH264Ctx,
	cmp	r3, #0	@ pVUI_21(D)->nal_hrd_parameters_present_flag,
	bne	.L1877	@,
.L1876:
	ldr	r1, .L1908+68	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1908+72	@,
	strb	r0, [r5, #11]	@, pVUI_21(D)->pic_struct_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #12]	@ D.45800, pVUI_21(D)->bitstream_restriction_flag
	cmp	r0, #0	@ D.45800,
	bne	.L1878	@,
	ldr	r0, [r9, #3628]	@ D.45798, pH264Ctx_17(D)->SeErrFlg
.L1879:
	adds	r0, r0, #0	@ D.45803, D.45798,
	movne	r0, #1	@ D.45803,
	rsb	r0, r0, #0	@ D.45796, D.45803
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1907:
	ldr	r1, .L1908+24	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, .L1908+28	@,
	mov	r1, #4	@,
	str	r0, [r5, #408]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+32	@,
	mov	r1, #4	@,
	strb	r0, [r5, #404]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].bit_rate_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r5, #408]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1
	cmp	r3, #31	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1,
	strb	r0, [r5, #405]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_size_scale
	bhi	.L1871	@,
	add	r9, r4, #49152	@ tmp339, pH264Ctx,
	ldr	r6, [r9, #3628]	@ pH264Ctx_17(D)->SeErrFlg, pH264Ctx_17(D)->SeErrFlg
	cmp	r6, #0	@ pH264Ctx_17(D)->SeErrFlg,
	bne	.L1871	@,
	add	r8, r5, #368	@ ivtmp.2327, pVUI,
	add	r7, r5, #408	@ ivtmp.2311, pVUI,
	add	r8, r8, #3	@ ivtmp.2327, ivtmp.2327,
.L1874:
	ldr	r1, .L1908+36	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+40	@,
	add	r6, r6, #1	@ SchedSelIdx, SchedSelIdx,
	str	r0, [r7, #4]!	@, MEM[base: _11, offset: 0B]
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+44	@,
	str	r0, [r7, #128]	@, MEM[base: _11, offset: 128B]
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r8, #1]!	@, MEM[base: _242, offset: 0B]
	ldr	r3, [r5, #408]	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1
	cmp	r3, r6	@ MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_cnt_minus1, SchedSelIdx
	bcs	.L1874	@,
	ldr	r2, .L1908+48	@,
	mov	r1, #5	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+52	@,
	mov	r1, #5	@,
	str	r0, [r5, #668]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].initial_cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+56	@,
	mov	r1, #5	@,
	str	r0, [r5, #672]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].cpb_removal_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+60	@,
	mov	r1, #5	@,
	str	r0, [r5, #676]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].dpb_output_delay_length_minus1
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ pVUI_21(D)->nal_hrd_parameters_present_flag, pVUI_21(D)->nal_hrd_parameters_present_flag
	cmp	r3, #0	@ pVUI_21(D)->nal_hrd_parameters_present_flag,
	str	r0, [r5, #680]	@, MEM[(struct HRD_PARAMETERS_S *)pVUI_21(D) + 372B].time_offset_length
	bne	.L1877	@,
	ldrb	r3, [r5, #10]	@ zero_extendqisi2	@ pVUI_21(D)->vcl_hrd_parameters_present_flag, pVUI_21(D)->vcl_hrd_parameters_present_flag
	cmp	r3, #0	@ pVUI_21(D)->vcl_hrd_parameters_present_flag,
	beq	.L1876	@,
.L1877:
	ldr	r1, .L1908+76	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r5, #14]	@, pVUI_21(D)->low_delay_hrd_flag
	b	.L1876	@
.L1906:
	ldr	r2, .L1908+80	@,
	mov	r1, #32	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+84	@,
	mov	r1, #32	@,
	str	r0, [r5, #52]	@, pVUI_21(D)->num_units_in_tick
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, .L1908+88	@,
	str	r0, [r5, #56]	@, pVUI_21(D)->time_scale
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #9]	@ D.45800, pVUI_21(D)->fixed_frame_rate_flag
	cmp	r0, #1	@ D.45800,
	bne	.L1866	@,
	ldr	r1, [r5, #52]	@ D.45799, pVUI_21(D)->num_units_in_tick
	cmp	r1, #0	@ D.45799,
	beq	.L1866	@,
	ldr	r0, [r5, #56]	@, pVUI_21(D)->time_scale
	add	r9, r4, #49152	@ tmp339, pH264Ctx,
	bl	__aeabi_uidiv	@
	mov	r0, r0, lsr #1	@ D.45799,,
	str	r0, [r9, #2188]	@ D.45799, pH264Ctx_17(D)->frame_rate
	b	.L1866	@
.L1905:
	ldr	r1, .L1908+92	@,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+96	@,
	str	r0, [r5, #44]	@, pVUI_21(D)->chroma_sample_loc_type_top_field
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #48]	@, pVUI_21(D)->chroma_sample_loc_type_bottom_field
	b	.L1864	@
.L1904:
	ldr	r2, .L1908+100	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, .L1908+104	@,
	str	r0, [r5, #28]	@, pVUI_21(D)->video_format
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1908+108	@,
	strb	r0, [r5, #4]	@, pVUI_21(D)->video_full_range_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #5]	@ D.45800, pVUI_21(D)->colour_description_present_flag
	cmp	r0, #0	@ D.45800,
	beq	.L1863	@,
	ldr	r2, .L1908+112	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+116	@,
	mov	r1, #8	@,
	str	r0, [r5, #32]	@, pVUI_21(D)->colour_primaries
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+120	@,
	mov	r1, #8	@,
	str	r0, [r5, #36]	@, pVUI_21(D)->transfer_characteristics
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #40]	@, pVUI_21(D)->matrix_coefficients
	b	.L1863	@
.L1903:
	ldr	r1, .L1908+124	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r5, #2]	@, pVUI_21(D)->overscan_appropriate_flag
	b	.L1861	@
.L1902:
	ldr	r2, .L1908+128	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	uxtb	r0, r0	@ D.45800,
	strb	r0, [r5, #15]	@ D.45800, pVUI_21(D)->aspect_ratio_idc
	cmp	r0, #255	@ D.45800,
	bne	.L1860	@,
	ldr	r2, .L1908+132	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L1908+136	@,
	mov	r1, #16	@,
	str	r0, [r5, #16]	@, pVUI_21(D)->sar_width
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	str	r0, [r5, #20]	@, pVUI_21(D)->sar_height
	b	.L1860	@
.L1878:
	ldr	r1, .L1908+140	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L1908+144	@,
	strb	r0, [r5, #13]	@, pVUI_21(D)->motion_vectors_over_pic_boundaries_flag
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+148	@,
	str	r0, [r5, #684]	@, pVUI_21(D)->max_bytes_per_pic_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+152	@,
	str	r0, [r5, #688]	@, pVUI_21(D)->max_bits_per_mb_denom
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+156	@,
	str	r0, [r5, #696]	@, pVUI_21(D)->log2_max_mv_length_horizontal
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+160	@,
	str	r0, [r5, #692]	@, pVUI_21(D)->log2_max_mv_length_vertical
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L1908+164	@,
	str	r0, [r5, #700]	@, pVUI_21(D)->num_reorder_frames
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r5, #704]	@, pVUI_21(D)->max_dec_frame_buffering
	ldr	r0, [r9, #3628]	@ D.45798, pH264Ctx_17(D)->SeErrFlg
	cmp	r0, #0	@ D.45798,
	beq	.L1879	@,
	mvn	r0, #0	@ D.45796,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1871:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45796,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1909:
	.align	2
.L1908:
	.word	.LC72
	.word	.LC76
	.word	.LC78
	.word	.LC85
	.word	.LC88
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC105
	.word	.LC106
	.word	.LC104
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC86
	.word	.LC87
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC77
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC107
	.word	.LC108
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.word	.LC112
	.word	.LC113
	.fnend
	.size	vui_parameters, .-vui_parameters
	.align	2
	.global	SPSEqual
	.type	SPSEqual, %function
SPSEqual:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pSPS1
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	beq	.L1913	@,
	cmp	r1, #0	@ pSPS2,
	beq	.L1913	@,
	ldrb	r4, [r1]	@ zero_extendqisi2	@ pSPS2_20(D)->constrained_set0_flag, pSPS2_20(D)->constrained_set0_flag
	ldrb	r3, [r0]	@ zero_extendqisi2	@ pSPS1_17(D)->constrained_set0_flag, pSPS1_17(D)->constrained_set0_flag
	ldr	lr, [r0, #736]	@ pSPS1_17(D)->profile_idc, pSPS1_17(D)->profile_idc
	ldr	r2, [r1, #736]	@ pSPS2_20(D)->profile_idc, pSPS2_20(D)->profile_idc
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ pSPS1_17(D)->constrained_set1_flag, pSPS1_17(D)->constrained_set1_flag
	cmp	r3, r4	@ pSPS1_17(D)->constrained_set0_flag, pSPS2_20(D)->constrained_set0_flag
	cmpeq	lr, r2	@, pSPS1_17(D)->profile_idc, pSPS2_20(D)->profile_idc
	ldrb	r6, [r1, #1]	@ zero_extendqisi2	@ pSPS2_20(D)->constrained_set1_flag, pSPS2_20(D)->constrained_set1_flag
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ pSPS1_17(D)->constrained_set2_flag, pSPS1_17(D)->constrained_set2_flag
	ldrb	r5, [r1, #2]	@ zero_extendqisi2	@ pSPS2_20(D)->constrained_set2_flag, pSPS2_20(D)->constrained_set2_flag
	moveq	r4, #1	@ tmp285,
	movne	r4, #0	@ tmp285,
	ldr	r3, [r0, #740]	@ pSPS1_17(D)->level_idc, pSPS1_17(D)->level_idc
	cmp	ip, r6	@ pSPS1_17(D)->constrained_set1_flag, pSPS2_20(D)->constrained_set1_flag
	movne	lr, #0	@, tmp291
	andeq	lr, r4, #1	@,, tmp291, tmp285
	ldr	r6, [r1, #740]	@ pSPS2_20(D)->level_idc, pSPS2_20(D)->level_idc
	cmp	r2, r5	@ pSPS1_17(D)->constrained_set2_flag, pSPS2_20(D)->constrained_set2_flag
	movne	ip, #0	@, tmp297
	andeq	ip, lr, #1	@,, tmp297, tmp291
	ldr	r4, [r1, #744]	@ pSPS2_20(D)->seq_parameter_set_id, pSPS2_20(D)->seq_parameter_set_id
	ldr	r5, [r0, #744]	@ pSPS1_17(D)->seq_parameter_set_id, pSPS1_17(D)->seq_parameter_set_id
	cmp	r3, r6	@ pSPS1_17(D)->level_idc, pSPS2_20(D)->level_idc
	movne	r2, #0	@, tmp303
	andeq	r2, ip, #1	@,, tmp303, tmp297
	ldrb	lr, [r1, #25]	@ zero_extendqisi2	@ pSPS2_20(D)->seq_scaling_matrix_present_flag, pSPS2_20(D)->seq_scaling_matrix_present_flag
	ldrb	ip, [r0, #25]	@ zero_extendqisi2	@ D.45949, pSPS1_17(D)->seq_scaling_matrix_present_flag
	cmp	r5, r4	@ pSPS1_17(D)->seq_parameter_set_id, pSPS2_20(D)->seq_parameter_set_id
	movne	r3, #0	@, tmp309
	andeq	r3, r2, #1	@,, tmp309, tmp303
	cmp	lr, ip	@ pSPS2_20(D)->seq_scaling_matrix_present_flag, D.45949
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, tmp309
	cmp	ip, #0	@ D.45949,
	beq	.L1914	@,
	mov	r6, #0	@ ivtmp.2453,
	add	r10, r0, #3	@ ivtmp.2431, pSPS1,
	add	r9, r1, #3	@ ivtmp.2439, pSPS2,
	sub	r8, r1, #396	@ ivtmp.2449, pSPS2,
	mov	r5, r6	@ i, ivtmp.2453
	mov	r7, r0	@ ivtmp.2448, pSPS1
.L1919:
	ldrb	r2, [r10, #1]!	@ zero_extendqisi2	@ D.45950, MEM[base: _229, offset: 0B]
	ldrsb	lr, [r9, #1]!	@ MEM[base: _230, offset: 0B], MEM[base: _230, offset: 0B]
	sxtb	ip, r2	@ D.45950, D.45950
	cmp	lr, ip	@ MEM[base: _230, offset: 0B], D.45950
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, #0	@ D.45950,
	beq	.L1915	@,
	cmp	r5, #5	@ i,
	bhi	.L1916	@,
	add	ip, r6, #756	@ D.45957, ivtmp.2453,
	add	fp, r6, #820	@ D.45957, ivtmp.2453,
	add	r2, r0, ip	@ ivtmp.2387, pSPS1, D.45957
	add	fp, r0, fp	@ D.45956, pSPS1, D.45957
	add	ip, r1, ip	@ ivtmp.2396, pSPS2, D.45957
.L1917:
	ldr	r4, [r2, #4]!	@ MEM[base: _118, offset: 0B], MEM[base: _118, offset: 0B]
	ldr	lr, [ip, #4]!	@ MEM[base: _114, offset: 0B], MEM[base: _114, offset: 0B]
	cmp	r4, lr	@ MEM[base: _118, offset: 0B], MEM[base: _114, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, fp	@ ivtmp.2387, D.45956
	bne	.L1917	@,
.L1915:
	add	r5, r5, #1	@ i, i,
	add	r7, r7, #256	@ ivtmp.2448, ivtmp.2448,
	cmp	r5, #8	@ i,
	add	r8, r8, #256	@ ivtmp.2449, ivtmp.2449,
	add	r6, r6, #64	@ ivtmp.2453, ivtmp.2453,
	bne	.L1919	@,
.L1914:
	ldr	r2, [r1, #2904]	@ pSPS2_20(D)->log2_max_frame_num_minus4, pSPS2_20(D)->log2_max_frame_num_minus4
	ldr	lr, [r0, #2908]	@ D.45948, pSPS1_17(D)->pic_order_cnt_type
	ldr	ip, [r1, #2908]	@ pSPS2_20(D)->pic_order_cnt_type, pSPS2_20(D)->pic_order_cnt_type
	ldr	r4, [r0, #2904]	@ pSPS1_17(D)->log2_max_frame_num_minus4, pSPS1_17(D)->log2_max_frame_num_minus4
	cmp	lr, ip	@ D.45948, pSPS2_20(D)->pic_order_cnt_type
	cmpeq	r4, r2	@, pSPS1_17(D)->log2_max_frame_num_minus4, pSPS2_20(D)->log2_max_frame_num_minus4
	moveq	r2, #1	@ D.45947,
	movne	r2, #0	@ D.45947,
	cmp	lr, #0	@ D.45948,
	and	r3, r3, r2	@ equal, equal, D.45947
	beq	.L1921	@,
	cmp	lr, #1	@ D.45948,
	bne	.L1920	@,
	ldr	ip, [r1, #2916]	@ pSPS2_20(D)->offset_for_non_ref_pic, pSPS2_20(D)->offset_for_non_ref_pic
	ldr	lr, [r0, #2916]	@ pSPS1_17(D)->offset_for_non_ref_pic, pSPS1_17(D)->offset_for_non_ref_pic
	ldrb	r2, [r0, #16]	@ zero_extendqisi2	@ pSPS1_17(D)->delta_pic_order_always_zero_flag, pSPS1_17(D)->delta_pic_order_always_zero_flag
	ldrb	r6, [r1, #16]	@ zero_extendqisi2	@ pSPS2_20(D)->delta_pic_order_always_zero_flag, pSPS2_20(D)->delta_pic_order_always_zero_flag
	ldr	r5, [r0, #2920]	@ pSPS1_17(D)->offset_for_top_to_bottom_field, pSPS1_17(D)->offset_for_top_to_bottom_field
	cmp	lr, ip	@ pSPS1_17(D)->offset_for_non_ref_pic, pSPS2_20(D)->offset_for_non_ref_pic
	cmpeq	r2, r6	@, pSPS1_17(D)->delta_pic_order_always_zero_flag, pSPS2_20(D)->delta_pic_order_always_zero_flag
	ldr	r4, [r1, #2920]	@ pSPS2_20(D)->offset_for_top_to_bottom_field, pSPS2_20(D)->offset_for_top_to_bottom_field
	ldr	r6, [r0, #2924]	@ D.45948, pSPS1_17(D)->num_ref_frames_in_pic_order_cnt_cycle
	ldr	lr, [r1, #2924]	@ pSPS2_20(D)->num_ref_frames_in_pic_order_cnt_cycle, pSPS2_20(D)->num_ref_frames_in_pic_order_cnt_cycle
	moveq	ip, #1	@ tmp349,
	movne	ip, #0	@ tmp349,
	cmp	r5, r4	@ pSPS1_17(D)->offset_for_top_to_bottom_field, pSPS2_20(D)->offset_for_top_to_bottom_field
	movne	r2, #0	@, tmp355
	andeq	r2, ip, #1	@,, tmp355, tmp349
	cmp	r6, lr	@ D.45948, pSPS2_20(D)->num_ref_frames_in_pic_order_cnt_cycle
	movne	r2, #0	@, D.45947
	andeq	r2, r2, #1	@,, D.45947, tmp355
	cmp	r6, #0	@ D.45948,
	and	r3, r3, r2	@ equal, equal, D.45947
	beq	.L1920	@,
	add	lr, r0, #2912	@ ivtmp.2365, pSPS1,
	add	ip, r1, #2912	@ ivtmp.2374, pSPS2,
	add	lr, lr, #12	@ ivtmp.2365, ivtmp.2365,
	add	ip, ip, #12	@ ivtmp.2374, ivtmp.2374,
	mov	r2, #0	@ i,
.L1923:
	ldr	r5, [lr, #4]!	@ MEM[base: _183, offset: 0B], MEM[base: _183, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	r4, [ip, #4]!	@ MEM[base: _172, offset: 0B], MEM[base: _172, offset: 0B]
	cmp	r5, r4	@ MEM[base: _183, offset: 0B], MEM[base: _172, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, r6	@ i, D.45948
	bne	.L1923	@,
.L1920:
	ldrb	lr, [r1, #17]	@ zero_extendqisi2	@ pSPS2_20(D)->gaps_in_frame_num_value_allowed_flag, pSPS2_20(D)->gaps_in_frame_num_value_allowed_flag
	ldrb	r4, [r0, #17]	@ zero_extendqisi2	@ pSPS1_17(D)->gaps_in_frame_num_value_allowed_flag, pSPS1_17(D)->gaps_in_frame_num_value_allowed_flag
	ldr	ip, [r0, #3952]	@ pSPS1_17(D)->num_ref_frames, pSPS1_17(D)->num_ref_frames
	ldr	r5, [r1, #3952]	@ pSPS2_20(D)->num_ref_frames, pSPS2_20(D)->num_ref_frames
	ldr	r2, [r0, #3956]	@ pSPS1_17(D)->pic_width_in_mbs_minus1, pSPS1_17(D)->pic_width_in_mbs_minus1
	cmp	r4, lr	@ pSPS1_17(D)->gaps_in_frame_num_value_allowed_flag, pSPS2_20(D)->gaps_in_frame_num_value_allowed_flag
	cmpeq	ip, r5	@, pSPS1_17(D)->num_ref_frames, pSPS2_20(D)->num_ref_frames
	ldr	r7, [r1, #3956]	@ pSPS2_20(D)->pic_width_in_mbs_minus1, pSPS2_20(D)->pic_width_in_mbs_minus1
	ldr	r6, [r0, #3960]	@ pSPS1_17(D)->pic_height_in_map_units_minus1, pSPS1_17(D)->pic_height_in_map_units_minus1
	ldr	r5, [r1, #3960]	@ pSPS2_20(D)->pic_height_in_map_units_minus1, pSPS2_20(D)->pic_height_in_map_units_minus1
	moveq	lr, #1	@ tmp376,
	movne	lr, #0	@ tmp376,
	ldrb	r4, [r1, #18]	@ zero_extendqisi2	@ pSPS2_20(D)->frame_mbs_only_flag, pSPS2_20(D)->frame_mbs_only_flag
	cmp	r2, r7	@ pSPS1_17(D)->pic_width_in_mbs_minus1, pSPS2_20(D)->pic_width_in_mbs_minus1
	movne	ip, #0	@, tmp382
	andeq	ip, lr, #1	@,, tmp382, tmp376
	ldrb	lr, [r0, #18]	@ zero_extendqisi2	@ D.45949, pSPS1_17(D)->frame_mbs_only_flag
	cmp	r6, r5	@ pSPS1_17(D)->pic_height_in_map_units_minus1, pSPS2_20(D)->pic_height_in_map_units_minus1
	movne	r2, #0	@, tmp388
	andeq	r2, ip, #1	@,, tmp388, tmp382
	cmp	r4, lr	@ pSPS2_20(D)->frame_mbs_only_flag, D.45949
	movne	r2, #0	@, D.45947
	andeq	r2, r2, #1	@,, D.45947, tmp388
	cmp	lr, #0	@ D.45949,
	and	r3, r3, r2	@ equal, equal, D.45947
	bne	.L1924	@,
	ldrb	ip, [r0, #19]	@ zero_extendqisi2	@ pSPS1_17(D)->mb_adaptive_frame_field_flag, pSPS1_17(D)->mb_adaptive_frame_field_flag
	ldrb	r2, [r1, #19]	@ zero_extendqisi2	@ pSPS2_20(D)->mb_adaptive_frame_field_flag, pSPS2_20(D)->mb_adaptive_frame_field_flag
	cmp	ip, r2	@ pSPS1_17(D)->mb_adaptive_frame_field_flag, pSPS2_20(D)->mb_adaptive_frame_field_flag
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
.L1924:
	ldrb	r2, [r1, #20]	@ zero_extendqisi2	@ pSPS2_20(D)->direct_8x8_inference_flag, pSPS2_20(D)->direct_8x8_inference_flag
	ldrb	lr, [r0, #21]	@ zero_extendqisi2	@ D.45949, pSPS1_17(D)->frame_cropping_flag
	ldrb	ip, [r1, #21]	@ zero_extendqisi2	@ pSPS2_20(D)->frame_cropping_flag, pSPS2_20(D)->frame_cropping_flag
	ldrb	r4, [r0, #20]	@ zero_extendqisi2	@ pSPS1_17(D)->direct_8x8_inference_flag, pSPS1_17(D)->direct_8x8_inference_flag
	cmp	ip, lr	@ pSPS2_20(D)->frame_cropping_flag, D.45949
	cmpeq	r4, r2	@, pSPS1_17(D)->direct_8x8_inference_flag, pSPS2_20(D)->direct_8x8_inference_flag
	moveq	r2, #1	@ D.45947,
	movne	r2, #0	@ D.45947,
	cmp	lr, #0	@ D.45949,
	and	r3, r3, r2	@ equal, equal, D.45947
	beq	.L1925	@,
	ldr	lr, [r1, #3968]	@ pSPS2_20(D)->frame_crop_right_offset, pSPS2_20(D)->frame_crop_right_offset
	ldr	r4, [r0, #3968]	@ pSPS1_17(D)->frame_crop_right_offset, pSPS1_17(D)->frame_crop_right_offset
	ldr	ip, [r0, #3964]	@ pSPS1_17(D)->frame_crop_left_offset, pSPS1_17(D)->frame_crop_left_offset
	ldr	r5, [r1, #3964]	@ pSPS2_20(D)->frame_crop_left_offset, pSPS2_20(D)->frame_crop_left_offset
	ldr	r2, [r1, #3972]	@ pSPS2_20(D)->frame_crop_top_offset, pSPS2_20(D)->frame_crop_top_offset
	cmp	r4, lr	@ pSPS1_17(D)->frame_crop_right_offset, pSPS2_20(D)->frame_crop_right_offset
	cmpeq	ip, r5	@, pSPS1_17(D)->frame_crop_left_offset, pSPS2_20(D)->frame_crop_left_offset
	ldr	r6, [r0, #3972]	@ pSPS1_17(D)->frame_crop_top_offset, pSPS1_17(D)->frame_crop_top_offset
	ldr	r5, [r0, #3976]	@ pSPS1_17(D)->frame_crop_bottom_offset, pSPS1_17(D)->frame_crop_bottom_offset
	ldr	r4, [r1, #3976]	@ pSPS2_20(D)->frame_crop_bottom_offset, pSPS2_20(D)->frame_crop_bottom_offset
	moveq	lr, #1	@ tmp416,
	movne	lr, #0	@ tmp416,
	cmp	r6, r2	@ pSPS1_17(D)->frame_crop_top_offset, pSPS2_20(D)->frame_crop_top_offset
	movne	ip, #0	@, tmp422
	andeq	ip, lr, #1	@,, tmp422, tmp416
	cmp	r5, r4	@ pSPS1_17(D)->frame_crop_bottom_offset, pSPS2_20(D)->frame_crop_bottom_offset
	movne	r2, #0	@, D.45947
	andeq	r2, ip, #1	@,, D.45947, tmp422
	and	r3, r3, r2	@ equal, equal, D.45947
.L1925:
	ldrb	r0, [r0, #22]	@ zero_extendqisi2	@ pSPS1_17(D)->vui_parameters_present_flag, pSPS1_17(D)->vui_parameters_present_flag
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ pSPS2_20(D)->vui_parameters_present_flag, pSPS2_20(D)->vui_parameters_present_flag
	cmp	r0, r2	@ pSPS1_17(D)->vui_parameters_present_flag, pSPS2_20(D)->vui_parameters_present_flag
	movne	r0, #0	@, equal
	andeq	r0, r3, #1	@,, equal, equal
	eor	r0, r0, #1	@ D.45946, equal,
	rsb	r0, r0, #0	@ D.45947, D.45946
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1916:
	sub	r2, r7, #396	@ ivtmp.2409, ivtmp.2448,
	sub	fp, r7, #140	@ D.45956, ivtmp.2448,
	mov	ip, r8	@ ivtmp.2418, ivtmp.2449
.L1918:
	ldr	r4, [r2, #4]!	@ MEM[base: _213, offset: 0B], MEM[base: _213, offset: 0B]
	ldr	lr, [ip, #4]!	@ MEM[base: _212, offset: 0B], MEM[base: _212, offset: 0B]
	cmp	r4, lr	@ MEM[base: _213, offset: 0B], MEM[base: _212, offset: 0B]
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	cmp	r2, fp	@ ivtmp.2409, D.45956
	bne	.L1918	@,
	b	.L1915	@
.L1921:
	ldr	ip, [r0, #2912]	@ pSPS1_17(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS1_17(D)->log2_max_pic_order_cnt_lsb_minus4
	ldr	r2, [r1, #2912]	@ pSPS2_20(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS2_20(D)->log2_max_pic_order_cnt_lsb_minus4
	cmp	ip, r2	@ pSPS1_17(D)->log2_max_pic_order_cnt_lsb_minus4, pSPS2_20(D)->log2_max_pic_order_cnt_lsb_minus4
	movne	r3, #0	@, equal
	andeq	r3, r3, #1	@,, equal, equal
	b	.L1920	@
.L1913:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.45947,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	moveq	r4, r0	@ final_dar, ar_idc
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L1947	@,
	subs	lr, r0, #255	@ D.45961, ar_idc,
	movne	lr, #1	@ D.45961,
	cmp	r0, #16	@ ar_idc,
	movle	r4, #0	@, tmp141
	andgt	r4, lr, #1	@,, tmp141, D.45961
	cmp	r4, #0	@ tmp141,
	movne	r4, #0	@ final_dar,
	bne	.L1947	@,
	cmp	r2, #0	@ sar_height,
	cmpne	r1, #0	@, sar_width,
	mov	ip, r1	@ sar_width, sar_width
	moveq	r1, #1	@ tmp148,
	movne	r1, #0	@ tmp148,
	cmp	r0, #255	@ ar_idc,
	movne	r1, #0	@, tmp152
	andeq	r1, r1, #1	@,, tmp152, tmp148
	cmp	r1, #0	@ tmp152,
	bne	.L1947	@,
	cmp	r0, #1	@ ar_idc,
	moveq	r4, #5	@ final_dar,
	beq	.L1947	@,
	cmp	lr, #0	@ D.45961,
	str	r3, [sp, #4]	@ img_width, %sfp
	ldrne	r2, .L1974	@ tmp153,
	addne	r0, r2, r0, lsl #3	@ tmp154, tmp153, ar_idc,
	ldrne	r2, [r0, #84]	@ sar_height, SarTable
	ldrne	ip, [r0, #80]	@ sar_width, SarTable
	mov	r1, r2	@, sar_height
	mov	r0, ip, asl #10	@, sar_width,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@ img_width, %sfp
	mov	r4, r0	@ D.45960,
	ldr	r1, [sp, #16]	@, img_height
	mov	r0, r3, asl #10	@, img_width,
	bl	__aeabi_idiv	@
	mul	r0, r0, r4	@ D.45960,, D.45960
	add	r2, r0, #1020	@ tmp172, D.45960,
	cmp	r0, #0	@ D.45960,
	add	r2, r2, #3	@ tmp172, tmp172,
	movlt	r0, r2	@ D.45960, tmp172
	mov	r2, r0, asr #10	@ dar, D.45960,
	sub	r3, r2, #2400	@ D.45960, dar,
	sub	r1, r2, #2256	@ D.45960, dar,
	sub	r3, r3, #6	@ D.45960, D.45960,
	sub	r1, r1, #7	@ D.45960, D.45960,
	cmp	r3, #0	@ D.45960,
	rsblt	r3, r2, #2400	@ D.45960, dar,
	addlt	r3, r3, #6	@ D.45960, D.45960,
	cmp	r1, #0	@ D.45960,
	rsblt	r1, r2, #2256	@ D.45960, dar,
	addlt	r1, r1, #7	@ D.45960, D.45960,
	cmp	r3, r1	@ D.45960, D.45960
	movlt	r4, #4	@ final_dar,
	blt	.L1947	@,
	sub	r3, r2, #1808	@ D.45960, dar,
	sub	r3, r3, #12	@ D.45960, D.45960,
	cmp	r3, #0	@ D.45960,
	rsblt	r3, r2, #1808	@ D.45960, dar,
	addlt	r3, r3, #12	@ D.45960, D.45960,
	cmp	r1, r3	@ D.45960, D.45960
	movlt	r4, #3	@ final_dar,
	bge	.L1973	@,
.L1947:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, final_dar
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1973:
	sub	r0, r2, #1360	@ D.45960, dar,
	sub	r0, r0, #5	@ D.45960, D.45960,
	cmp	r0, #0	@ D.45960,
	rsblt	r0, r2, #1360	@ D.45960, dar,
	addlt	r0, r0, #5	@ D.45960, D.45960,
	cmp	r3, r0	@ D.45960, D.45960
	movlt	r4, #2	@ final_dar,
	movge	r4, #1	@ final_dar,
	b	.L1947	@
.L1975:
	.align	2
.L1974:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r1, #0	@ pSPS, pSPS
	.pad #52
	sub	sp, sp, #52	@,,
	beq	.L2008	@,
	ldr	r2, [r4, #736]	@ D.46006, pSPS_31(D)->profile_idc
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #100	@ D.46006,
	cmpne	r2, #110	@, D.46006,
	moveq	r3, #1	@ tmp320,
	movne	r3, #0	@ tmp320,
	cmp	r2, #122	@ D.46006,
	orreq	r3, r3, #1	@,, tmp324, tmp320
	cmp	r2, #144	@ D.46006,
	orreq	r3, r3, #1	@,, tmp330, tmp324
	cmp	r3, #0	@ tmp330,
	streqb	r3, [r4, #25]	@ tmp330, pSPS_31(D)->seq_scaling_matrix_present_flag
	moveq	r3, #1	@ tmp417,
	streq	r3, [r4, #748]	@ tmp417, pSPS_31(D)->chroma_format_idc
	bne	.L2076	@,
.L1988:
	ldr	r1, .L2090	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #12	@ D.46006,
	str	r0, [r4, #2904]	@ D.46006, pSPS_31(D)->log2_max_frame_num_minus4
	bhi	.L2008	@,
	add	r6, r5, #49152	@ tmp590, pH264Ctx,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2008	@,
	ldr	r1, .L2090+4	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #2	@ D.46006,
	str	r0, [r4, #2908]	@ D.46006, pSPS_31(D)->pic_order_cnt_type
	bhi	.L2008	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2008	@,
	cmp	r0, #0	@ D.46006,
	beq	.L2077	@,
	cmp	r0, #1	@ D.46006,
	beq	.L2078	@,
.L2003:
	ldr	r1, .L2090+8	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #3952]	@, pSPS_31(D)->num_ref_frames
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	ldr	r1, .L2090+12	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #17]	@, pSPS_31(D)->gaps_in_frame_num_value_allowed_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	ldr	r1, .L2090+16	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r8, #509	@ tmp466,
	sub	r3, r0, #1	@ D.46006, D.46006,
	str	r0, [r4, #3956]	@ D.46006, pSPS_31(D)->pic_width_in_mbs_minus1
	cmp	r3, r8	@ D.46006, tmp466
	bhi	.L2008	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2008	@,
	ldr	r1, .L2090+20	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #3960]	@, pSPS_31(D)->pic_height_in_map_units_minus1
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	ldr	r1, .L2090+24	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.46008,
	strb	r0, [r4, #18]	@ D.46008, pSPS_31(D)->frame_mbs_only_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	cmp	r0, #0	@ D.46008,
	bne	.L2079	@,
	ldr	r1, .L2090+28	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r7, [r4, #3960]	@ pSPS_31(D)->pic_height_in_map_units_minus1, pSPS_31(D)->pic_height_in_map_units_minus1
	add	r7, r7, #1	@ D.46006, pSPS_31(D)->pic_height_in_map_units_minus1,
	cmp	r7, #255	@ D.46006,
	strb	r0, [r4, #19]	@, pSPS_31(D)->mb_adaptive_frame_field_flag
	bhi	.L2008	@,
	ldr	r3, [r4, #3956]	@ pSPS_31(D)->pic_width_in_mbs_minus1, pSPS_31(D)->pic_width_in_mbs_minus1
	add	r3, r3, #1	@ D.46006, pSPS_31(D)->pic_width_in_mbs_minus1,
	cmp	r7, #1	@ D.46006,
	cmphi	r3, #3	@, D.46006,
	bls	.L2008	@,
	mov	r9, #2	@ temp,
	b	.L2035	@
.L2076:
	ldr	r1, .L2090+32	@,
	bl	ue_v	@
	cmp	r0, #1	@ D.46006,
	str	r0, [r4, #748]	@ D.46006, pSPS_31(D)->chroma_format_idc
	bhi	.L2008	@,
	add	r6, r5, #49152	@ tmp590, pH264Ctx,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2008	@,
	ldr	r1, .L2090+36	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@ D.46006,
	str	r0, [r4, #752]	@ D.46006, pSPS_31(D)->bit_depth_luma_minus8
	bne	.L1983	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L1983	@,
.L1984:
	ldr	r1, .L2090+40	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #0	@ D.46006,
	str	r0, [r4, #756]	@ D.46006, pSPS_31(D)->bit_depth_chroma_minus8
	bne	.L1985	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L1985	@,
.L1986:
	ldr	r1, .L2090+44	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L2008	@,
	ldr	r6, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r6, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2008	@,
	ldr	r1, .L2090+48	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.46008,
	strb	r0, [r4, #25]	@ D.46008, pSPS_31(D)->seq_scaling_matrix_present_flag
	cmp	r0, #1	@ D.46008,
	bne	.L1988	@,
	add	fp, r4, #2672	@ ivtmp.2492, pSPS,
	ldr	r10, .L2090+52	@ tmp597,
	add	fp, fp, #8	@ ivtmp.2492, ivtmp.2492,
	add	r7, sp, #20	@ ivtmp.2479,,
	add	r9, r4, #3	@ ivtmp.2485, pSPS,
	add	r8, r4, #760	@ ivtmp.2496, pSPS,
	b	.L1994	@
.L2082:
	ldr	r3, .L2090+56	@ tmp600,
	cmp	r1, #0	@ D.46007,
	movne	r3, r10	@ tmp600, tmp597
	mov	r1, r3	@, tmp600
	bl	memcpy	@
.L1990:
	add	r6, r6, #1	@ i, i,
	add	fp, fp, #16	@ ivtmp.2492, ivtmp.2492,
	cmp	r6, #6	@ i,
	add	r8, r8, #64	@ ivtmp.2496, ivtmp.2496,
	beq	.L2080	@,
.L1994:
	ldr	r1, .L2090+60	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	clz	r1, r6	@ D.46007, i
	mov	r2, #16	@,
	mov	r1, r1, lsr #5	@ D.46007, D.46007,
	cmp	r0, #1	@ D.46006,
	mov	r3, r0	@ D.46006,
	mov	r0, fp	@, ivtmp.2492
	str	r3, [r7, #4]!	@ D.46006, MEM[base: _326, offset: 0B]
	strb	r3, [r9, #1]!	@ D.46006, MEM[base: _98, offset: 0B]
	beq	.L2081	@,
	cmp	r6, #0	@ i,
	cmpne	r6, #3	@, i,
	beq	.L2082	@,
	mov	r2, #16	@,
	sub	r1, fp, #16	@, ivtmp.2492,
	mov	r0, fp	@, ivtmp.2492
	bl	memcpy	@
	b	.L1990	@
.L1985:
	bl	vfmw_dprint_nothing	@
	b	.L1986	@
.L1983:
	bl	vfmw_dprint_nothing	@
	b	.L1984	@
.L2078:
	ldr	r1, .L2090+64	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #16]	@, pSPS_31(D)->delta_pic_order_always_zero_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	ldr	r1, .L2090+68	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #2916]	@, pSPS_31(D)->offset_for_non_ref_pic
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	ldr	r1, .L2090+72	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	str	r0, [r4, #2920]	@, pSPS_31(D)->offset_for_top_to_bottom_field
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	ldr	r1, .L2090+76	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #255	@ D.46006,
	str	r0, [r4, #2924]	@ D.46006, pSPS_31(D)->num_ref_frames_in_pic_order_cnt_cycle
	bhi	.L2008	@,
	ldr	r7, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r7, #0	@ pH264Ctx_40(D)->SeErrFlg,
	beq	.L2083	@,
.L2008:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.46004,
.L2066:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2033:
	cmp	r0, r10	@ MaxWidth, PicWidthInSmp
	cmpcs	r3, r7	@, MaxHeight, PicHeightInSmp
	bcs	.L2032	@,
	ldr	r2, .L2090+80	@ tmp575,
	ldr	ip, [r2]	@ D.46019, g_event_report
	cmp	ip, #0	@ D.46019,
	beq	.L2074	@,
	strh	r0, [sp, #20]	@ movhi	@ MaxWidth, para
	add	r2, sp, #16	@,,
	strh	r10, [sp, #16]	@ movhi	@ PicWidthInSmp, para
	mov	r1, #107	@,
	strh	r7, [sp, #18]	@ movhi	@ PicHeightInSmp, para
	strh	r3, [sp, #22]	@ movhi	@ MaxHeight, para
	ldr	r0, [r6, #3688]	@, pH264Ctx_40(D)->ChanID
	blx	ip	@ D.46019
.L2074:
	mvn	r0, #0	@ D.46004,
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2079:
	ldr	r7, [r4, #3960]	@ D.46006, pSPS_31(D)->pic_height_in_map_units_minus1
	strb	r3, [r4, #19]	@ pH264Ctx_40(D)->SeErrFlg, pSPS_31(D)->mb_adaptive_frame_field_flag
	sub	r3, r7, #1	@ D.46006, D.46006,
	cmp	r3, r8	@ D.46006, tmp466
	bhi	.L2008	@,
	ldr	r3, [r4, #3956]	@ pSPS_31(D)->pic_width_in_mbs_minus1, pSPS_31(D)->pic_width_in_mbs_minus1
	mov	r9, #1	@ temp,
	add	r7, r7, #1	@ D.46006, D.46006,
	add	r3, r3, r9	@ D.46006, pSPS_31(D)->pic_width_in_mbs_minus1,
.L2035:
	mul	r7, r7, r9	@ D.46006, D.46006, temp
	mov	r10, r3, asl #4	@ PicWidthInSmp, D.46006,
	mov	r7, r7, asl #4	@ PicHeightInSmp, D.46006,
	mul	r1, r10, r7	@ D.46006, PicWidthInSmp, PicHeightInSmp
	add	r1, r1, r1, lsr #1	@ pic_size, D.46006, D.46006,
	cmp	r1, #100663296	@ pic_size,
	bhi	.L2008	@,
	ldr	r3, [r4, #740]	@ pSPS_31(D)->level_idc, pSPS_31(D)->level_idc
	sub	r3, r3, #10	@ tmp494, pSPS_31(D)->level_idc,
	cmp	r3, #31	@ tmp494,
	ldrls	pc, [pc, r3, asl #2]	@ tmp494
	b	.L2008	@
.L2010:
	.word	.L2009
	.word	.L2011
	.word	.L2039
	.word	.L2039
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2039
	.word	.L2013
	.word	.L2015
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2015
	.word	.L2016
	.word	.L2017
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2008
	.word	.L2019
	.word	.L2019
.L2077:
	ldr	r1, .L2090+84	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	cmp	r0, #12	@ D.46006,
	str	r0, [r4, #2912]	@ D.46006, pSPS_31(D)->log2_max_pic_order_cnt_lsb_minus4
	bhi	.L2008	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	beq	.L2003	@,
	b	.L2008	@
.L2039:
	mov	r0, #60416	@ size,
	movt	r0, 13	@ size,
.L2012:
	bl	__aeabi_uidiv	@
	cmp	r0, #16	@,
	movcc	r8, r0	@ size,
	movcs	r8, #16	@ size,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3952]	@ pSPS_31(D)->num_ref_frames, pSPS_31(D)->num_ref_frames
	cmp	r3, r8	@ pSPS_31(D)->num_ref_frames, size
	bhi	.L2020	@,
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	beq	.L2021	@,
.L2020:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3952]	@ D.46006, pSPS_31(D)->num_ref_frames
	cmp	r3, #16	@ D.46006,
	bhi	.L2071	@,
	cmp	r8, r3	@ size, D.46006
	movcc	r8, r3	@ size, D.46006
.L2071:
	str	r8, [r4, #3952]	@ size, pSPS_31(D)->num_ref_frames
.L2021:
	ldr	r1, .L2090+88	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	strb	r0, [r4, #20]	@, pSPS_31(D)->direct_8x8_inference_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	ldr	r1, .L2090+92	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.46008,
	strb	r0, [r4, #21]	@ D.46008, pSPS_31(D)->frame_cropping_flag
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	cmp	r0, #0	@ D.46008,
	bne	.L2084	@,
.L2023:
	mov	r2, r10, lsr #1	@ D.46006, PicWidthInSmp,
	mov	r3, r7, lsr #1	@ D.46006, PicHeightInSmp,
	str	r10, [r4, #3984]	@ PicWidthInSmp, pSPS_31(D)->disp_width
	str	r7, [r4, #3988]	@ PicHeightInSmp, pSPS_31(D)->disp_height
	str	r2, [r4, #3992]	@ D.46006, pSPS_31(D)->disp_center_x
	str	r3, [r4, #3996]	@ D.46006, pSPS_31(D)->disp_center_y
.L2025:
	ldr	r1, .L2090+96	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r3, r0	@ D.46008,
	strb	r3, [r4, #22]	@ D.46008, pSPS_31(D)->vui_parameters_present_flag
	ldr	r2, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r2, #0	@ pH264Ctx_40(D)->SeErrFlg,
	bne	.L2074	@,
	cmp	r3, #0	@ D.46008,
	mov	r2, #2	@ tmp545,
	str	r2, [r4, #68]	@ tmp545, pSPS_31(D)->vui_seq_parameters.matrix_coefficients
	bne	.L2085	@,
	mov	r0, r3	@ D.46015, D.46008
	strb	r3, [r4, #43]	@ D.46008, pSPS_31(D)->vui_seq_parameters.aspect_ratio_idc
	mov	r3, #5	@ tmp558,
	str	r3, [r4, #56]	@ tmp558, pSPS_31(D)->vui_seq_parameters.video_format
.L2028:
	ldr	r2, [r4, #48]	@ pSPS_31(D)->vui_seq_parameters.sar_height, pSPS_31(D)->vui_seq_parameters.sar_height
	mov	r3, r10	@, PicWidthInSmp
	ldr	r1, [r4, #44]	@ pSPS_31(D)->vui_seq_parameters.sar_width, pSPS_31(D)->vui_seq_parameters.sar_width
	str	r7, [sp]	@ PicHeightInSmp,
	bl	H264GetDar	@
	ldr	r3, [r4, #3952]	@ D.46006, pSPS_31(D)->num_ref_frames
	cmp	r3, #0	@ D.46006,
	str	r0, [r4, #52]	@, pSPS_31(D)->vui_seq_parameters.aspect_ratio
	beq	.L2031	@,
	cmp	r8, r3	@ size, D.46006
	movcs	r8, r3	@ size, D.46006
.L2031:
	ldr	r3, [r5]	@ D.46017, pH264Ctx_40(D)->pstExtraData
	cmp	r8, #16	@ size,
	movcs	r8, #16	@ size,
	ldr	r2, [r3, #32]	@ _289->eCapLevel, _289->eCapLevel
	cmp	r2, #25	@ _289->eCapLevel,
	beq	.L2086	@,
.L2032:
	cmp	r7, #1920	@ PicHeightInSmp,
	bcc	.L2034	@,
	cmp	r8, #6	@ size,
	movcs	r8, #6	@ size,
.L2034:
	add	r8, r8, #1	@ D.46006, size,
	mov	r0, #0	@ D.46004,
	str	r8, [r4, #3980]	@ D.46006, pSPS_31(D)->dpb_size_plus1
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2015:
	mov	r0, #30208	@ size,
	movt	r0, 47	@ size,
	b	.L2012	@
.L2019:
	mov	r0, #12582912	@ size,
	b	.L2012	@
.L2080:
	ldr	r1, .L2090+60	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #1	@ D.46006,
	str	r0, [sp, #8]	@ D.46006, q8x8defaultflag
	strb	r0, [r4, #10]	@ D.46006, pSPS_31(D)->seq_scaling_list_present_flag
	beq	.L1995	@,
	add	r0, r4, #2768	@, pSPS,
	mov	r2, #64	@,
	add	r0, r0, #8	@,,
	ldr	r1, .L2090+100	@,
	bl	memcpy	@
.L1996:
	ldr	r1, .L2090+60	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #1	@ D.46006,
	str	r0, [sp, #12]	@ D.46006, q8x8defaultflag
	strb	r0, [r4, #11]	@ D.46006, pSPS_31(D)->seq_scaling_list_present_flag
	beq	.L2087	@,
	add	r0, r4, #2832	@, pSPS,
	mov	r2, #64	@,
	ldr	r1, .L2090+104	@,
	add	r0, r0, #8	@,,
	bl	memcpy	@
	b	.L1988	@
.L2081:
	mov	r3, r2	@,
	mov	r1, r8	@, ivtmp.2496
	mov	r2, fp	@, ivtmp.2492
	mov	r0, r5	@, pH264Ctx
	str	r7, [sp]	@ ivtmp.2479,
	bl	Scaling_List	@
	ldr	r3, [r7]	@ MEM[base: _326, offset: 0B], MEM[base: _326, offset: 0B]
	cmp	r3, #1	@ MEM[base: _326, offset: 0B],
	bne	.L1990	@,
	cmp	r6, #2	@ i,
	ldr	r1, .L2090+56	@ tmp599,
	mov	r2, #16	@,
	mov	r0, fp	@, ivtmp.2492
	movls	r1, r10	@ tmp599, tmp597
	bl	memcpy	@
	b	.L1990	@
.L2084:
	ldr	r1, .L2090+108	@,
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L2090+112	@,
	str	r0, [r4, #3964]	@, pSPS_31(D)->frame_crop_left_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L2090+116	@,
	str	r0, [r4, #3968]	@, pSPS_31(D)->frame_crop_right_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r1, .L2090+120	@,
	str	r0, [r4, #3972]	@, pSPS_31(D)->frame_crop_top_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	r3, [r4, #3972]	@ pSPS_31(D)->frame_crop_top_offset, pSPS_31(D)->frame_crop_top_offset
	ldr	r2, [r4, #3964]	@ pSPS_31(D)->frame_crop_left_offset, pSPS_31(D)->frame_crop_left_offset
	mov	r1, r9, asl #1	@ D.46006, temp,
	ldr	ip, [r4, #3968]	@ pSPS_31(D)->frame_crop_right_offset, pSPS_31(D)->frame_crop_right_offset
	mov	r3, r3, asl #1	@ D.46006, pSPS_31(D)->frame_crop_top_offset,
	mov	r2, r2, asl #1	@ D.46006, pSPS_31(D)->frame_crop_left_offset,
	mul	r9, r9, r3	@ D.46006, temp, D.46006
	rsb	r3, r2, r10	@ D.46006, D.46006, PicWidthInSmp
	sub	r3, r3, ip, asl #1	@ D.46006, D.46006, pSPS_31(D)->frame_crop_right_offset,
	rsb	ip, r9, r7	@ D.46006, D.46006, PicHeightInSmp
	str	r0, [r4, #3976]	@ D.46006, pSPS_31(D)->frame_crop_bottom_offset
	mls	r0, r0, r1, ip	@ D.46006, D.46006, D.46006, D.46006
	cmp	r3, #0	@ D.46006,
	cmpgt	r0, #0	@, D.46006,
	ble	.L2023	@,
	add	r2, r2, r3, lsr #1	@ D.46006, D.46006, D.46006,
	add	r9, r9, r0, lsr #1	@ D.46006, D.46006, D.46006,
	str	r2, [r4, #3992]	@ D.46006, pSPS_31(D)->disp_center_x
	str	r9, [r4, #3996]	@ D.46006, pSPS_31(D)->disp_center_y
	str	r3, [r4, #3984]	@ D.46006, pSPS_31(D)->disp_width
	str	r0, [r4, #3988]	@ D.46006, pSPS_31(D)->disp_height
	b	.L2025	@
.L2085:
	add	r1, r4, #28	@, pSPS,
	mov	r0, r5	@, pH264Ctx
	bl	vui_parameters	@
	cmp	r0, #0	@,
	bne	.L2073	@,
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ pSPS_31(D)->vui_seq_parameters.bitstream_restriction_flag, pSPS_31(D)->vui_seq_parameters.bitstream_restriction_flag
	cmp	r3, #0	@ pSPS_31(D)->vui_seq_parameters.bitstream_restriction_flag,
	beq	.L2073	@,
	ldr	r2, [r4, #732]	@ D.46006, pSPS_31(D)->vui_seq_parameters.max_dec_frame_buffering
	clz	r3, r2	@ tmp551, D.46006
	mov	r3, r3, lsr #5	@ tmp551, tmp551,
	cmp	r8, r2	@ size, D.46006
	orrcc	r3, r3, #1	@,, tmp554, tmp551
	cmp	r3, #0	@ tmp554,
	bne	.L2088	@,
	ldr	r3, [r4, #3952]	@ pSPS_31(D)->num_ref_frames, pSPS_31(D)->num_ref_frames
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ D.46015, pSPS_31(D)->vui_seq_parameters.aspect_ratio_idc
	cmp	r2, r3	@ D.46006, pSPS_31(D)->num_ref_frames
	movcs	r8, r2	@ size, D.46006
	movcc	r8, r3	@ size, pSPS_31(D)->num_ref_frames
	b	.L2028	@
.L2088:
	bl	vfmw_dprint_nothing	@
.L2073:
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ D.46015, pSPS_31(D)->vui_seq_parameters.aspect_ratio_idc
	b	.L2028	@
.L2086:
	ldr	r2, [r3, #608]	@ _289->stChanOption.s32ReRangeEn, _289->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _289->stChanOption.s32ReRangeEn,
	bne	.L2032	@,
	ldr	r1, [r3, #588]	@ D.46006, _289->stChanOption.s32MaxRefFrameNum
	ldr	r0, [r3, #568]	@ MaxWidth, _289->stChanOption.s32MaxWidth
	cmp	r8, r1	@ size, D.46006
	ldr	r3, [r3, #572]	@ MaxHeight, _289->stChanOption.s32MaxHeight
	bls	.L2033	@,
	ldr	r3, .L2090+80	@ tmp563,
	ldr	r3, [r3]	@ D.46019, g_event_report
	cmp	r3, #0	@ D.46019,
	beq	.L2074	@,
	str	r1, [sp, #20]	@ D.46006, para
	add	r2, sp, #16	@,,
	str	r8, [sp, #16]	@ size, para
	mov	r1, #106	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_40(D)->ChanID
	blx	r3	@ D.46019
	mvn	r0, #0	@ D.46004,
	b	.L2066	@
.L2083:
	cmp	r0, #0	@ D.46006,
	beq	.L2003	@,
	add	r8, r4, #2912	@ ivtmp.2465, pSPS,
	add	r8, r8, #12	@ ivtmp.2465, ivtmp.2465,
	b	.L2005	@
.L2089:
	ldr	r3, [r4, #2924]	@ pSPS_31(D)->num_ref_frames_in_pic_order_cnt_cycle, pSPS_31(D)->num_ref_frames_in_pic_order_cnt_cycle
	cmp	r3, r7	@ pSPS_31(D)->num_ref_frames_in_pic_order_cnt_cycle, i
	bls	.L2003	@,
.L2005:
	ldr	r1, .L2090+124	@,
	mov	r0, r5	@, pH264Ctx
	bl	se_v	@
	add	r7, r7, #1	@ i, i,
	str	r0, [r8, #4]!	@, MEM[base: _161, offset: 0B]
	ldr	r3, [r6, #3628]	@ pH264Ctx_40(D)->SeErrFlg, pH264Ctx_40(D)->SeErrFlg
	cmp	r3, #0	@ pH264Ctx_40(D)->SeErrFlg,
	beq	.L2089	@,
	b	.L2074	@
.L2016:
	mov	r0, #30720	@ size,
	movt	r0, 105	@ size,
	b	.L2012	@
.L2017:
	mov	r0, #7864320	@ size,
	b	.L2012	@
.L2011:
	mov	r0, #17920	@ size,
	movt	r0, 5	@ size,
	b	.L2012	@
.L2009:
	mov	r0, #20992	@ size,
	movt	r0, 2	@ size,
	b	.L2012	@
.L2013:
	mov	r0, #55296	@ size,
	movt	r0, 27	@ size,
	b	.L2012	@
.L2087:
	add	r6, r4, #2832	@ D.46012, pSPS,
	add	r1, r4, #1392	@, pSPS,
	add	r6, r6, #8	@ D.46012, D.46012,
	add	r0, sp, #12	@ tmp401,,
	mov	r3, #64	@,
	str	r0, [sp]	@ tmp401,
	add	r1, r1, #8	@,,
	mov	r2, r6	@, D.46012
	mov	r0, r5	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [sp, #12]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r3, #1	@ q8x8defaultflag,
	bne	.L1988	@,
	mov	r0, r6	@, D.46012
	mov	r2, #64	@,
	ldr	r1, .L2090+104	@,
	bl	memcpy	@
	b	.L1988	@
.L1995:
	add	r6, r4, #2768	@ D.46012, pSPS,
	add	r1, r4, #1136	@, pSPS,
	add	r6, r6, #8	@ D.46012, D.46012,
	add	r0, sp, #8	@ tmp387,,
	mov	r3, #64	@,
	str	r0, [sp]	@ tmp387,
	add	r1, r1, #8	@,,
	mov	r2, r6	@, D.46012
	mov	r0, r5	@, pH264Ctx
	bl	Scaling_List	@
	ldr	r3, [sp, #8]	@ q8x8defaultflag, q8x8defaultflag
	cmp	r3, #1	@ q8x8defaultflag,
	bne	.L1996	@,
	mov	r0, r6	@, D.46012
	mov	r2, #64	@,
	ldr	r1, .L2090+100	@,
	bl	memcpy	@
	b	.L1996	@
.L2091:
	.align	2
.L2090:
	.word	.LC119
	.word	.LC120
	.word	.LC122
	.word	.LC128
	.word	.LC129
	.word	.LC130
	.word	.LC131
	.word	.LC139
	.word	.LC114
	.word	.LC115
	.word	.LC116
	.word	.LC117
	.word	.LC118
	.word	.LANCHOR0+80
	.word	.LANCHOR0+96
	.word	.LC68
	.word	.LC123
	.word	.LC124
	.word	.LC125
	.word	.LC126
	.word	g_event_report
	.word	.LC121
	.word	.LC132
	.word	.LC133
	.word	.LC138
	.word	.LANCHOR0+112
	.word	.LANCHOR0+176
	.word	.LC134
	.word	.LC135
	.word	.LC136
	.word	.LC137
	.word	.LC127
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
	ldr	r2, .L2138	@,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r9, r0, #49152	@ tmp182, pH264Ctx,
	bl	u_v	@
	ldr	r1, .L2138+4	@,
	mov	r7, r0	@ D.46077,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L2138+8	@,
	str	r0, [sp, #4]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L2138+12	@,
	str	r0, [sp, #8]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, .L2138+16	@,
	mov	r10, r0	@ constrained_set2_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r2, .L2138+20	@,
	mov	r1, #4	@,
	mov	fp, r0	@ constrained_set3_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2138+24	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldr	r1, .L2138+28	@,
	mov	r6, r0	@ D.46077,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	ldr	r2, [r9, #3628]	@ pH264Ctx_10(D)->SeErrFlg, pH264Ctx_10(D)->SeErrFlg
	cmp	r2, #0	@ pH264Ctx_10(D)->SeErrFlg,
	bne	.L2133	@,
	add	r5, r4, #12288	@ tmp290, pH264Ctx,
	mov	r8, r0	@ seq_parameter_set_id,
	ldr	r2, [r5, #1284]	@ pH264Ctx_10(D)->MaxSpsNum, pH264Ctx_10(D)->MaxSpsNum
	sub	r2, r2, #1	@ D.46077, pH264Ctx_10(D)->MaxSpsNum,
	cmp	r0, r2	@ seq_parameter_set_id, D.46077
	bhi	.L2134	@,
	cmp	r7, #100	@ profile_idc,
	mov	ip, r7	@ profile_idc, D.46077
	beq	.L2098	@,
	bhi	.L2099	@,
	cmp	r7, #77	@ profile_idc,
	beq	.L2098	@,
	cmp	r7, #88	@ profile_idc,
	beq	.L2102	@,
	cmp	r7, #66	@ profile_idc,
	bne	.L2097	@,
.L2102:
	str	ip, [sp, #12]	@ profile_idc, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sp, #12]	@ profile_idc, %sfp
.L2098:
	sub	r2, r6, #10	@ D.46076, level_idc,
	mov	lr, r6	@ level_idc, D.46077
	cmp	r2, #31	@ D.46076,
	bls	.L2104	@,
	str	ip, [sp, #12]	@ profile_idc, %sfp
	bl	vfmw_dprint_nothing	@
	mov	lr, #41	@ level_idc,
	ldr	ip, [sp, #12]	@ profile_idc, %sfp
.L2104:
	mov	r2, #4000	@ tmp197,
	ldr	r1, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	mul	r7, r2, r8	@ D.46078, tmp197, seq_parameter_set_id
	add	r1, r1, r7	@ D.46080, pH264Ctx_10(D)->SPS, D.46078
	ldrb	r6, [r1, #23]	@ zero_extendqisi2	@ _51->is_valid, _51->is_valid
	cmp	r6, #0	@ _51->is_valid,
	bne	.L2135	@,
	str	ip, [r1, #736]	@ profile_idc, _51->profile_idc
	mov	r0, r4	@, pH264Ctx
	ldr	r2, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@, %sfp
	strb	r3, [r2, r7]	@ tmp293, _78->constrained_set0_flag
	ldr	r2, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	ldrb	r3, [sp, #8]	@ zero_extendqisi2	@, %sfp
	add	r2, r2, r7	@ tmp240, pH264Ctx_10(D)->SPS, D.46078
	strb	r3, [r2, #1]	@ tmp294, _82->constrained_set1_flag
	ldr	r2, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r2, r2, r7	@ tmp245, pH264Ctx_10(D)->SPS, D.46078
	strb	r10, [r2, #2]	@ constrained_set2_flag, _86->constrained_set2_flag
	ldr	r2, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r2, r2, r7	@ tmp250, pH264Ctx_10(D)->SPS, D.46078
	strb	fp, [r2, #3]	@ constrained_set3_flag, _90->constrained_set3_flag
	ldr	r2, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r2, r2, r7	@ tmp255, pH264Ctx_10(D)->SPS, D.46078
	str	lr, [r2, #740]	@ level_idc, _94->level_idc
	ldr	r2, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r2, r2, r7	@ tmp259, pH264Ctx_10(D)->SPS, D.46078
	str	r8, [r2, #744]	@ seq_parameter_set_id, _97->seq_parameter_set_id
	ldr	r1, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r1, r1, r7	@, pH264Ctx_10(D)->SPS, D.46078
	bl	ProcessSPS	@
	cmp	r0, #0	@ D.46075
	bne	.L2136	@,
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	mov	r2, #1	@ tmp280,
	add	r3, r3, r7	@ tmp279, pH264Ctx_10(D)->SPS, D.46078
	strb	r2, [r3, #24]	@ tmp280, _111->is_refreshed
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r7, r3, r7	@ tmp285, pH264Ctx_10(D)->SPS, D.46078
	strb	r2, [r7, #23]	@ tmp280, _114->is_valid
.L2116:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2135:
	ldr	r6, .L2138+32	@ tmp202,
	mov	r0, r4	@, pH264Ctx
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@, %sfp
	add	r1, r6, #2208	@, tmp202,
	str	r2, [sp, #12]	@ tmp197, %sfp
	str	ip, [r6, #2944]	@ profile_idc, sps_tmp.profile_idc
	strb	r3, [r6, #2208]	@ tmp291, sps_tmp.constrained_set0_flag
	ldrb	r3, [sp, #8]	@ zero_extendqisi2	@, %sfp
	strb	r10, [r6, #2210]	@ constrained_set2_flag, sps_tmp.constrained_set2_flag
	strb	fp, [r6, #2211]	@ constrained_set3_flag, sps_tmp.constrained_set3_flag
	strb	r3, [r6, #2209]	@ tmp292, sps_tmp.constrained_set1_flag
	str	lr, [r6, #2948]	@ level_idc, sps_tmp.level_idc
	str	r8, [r6, #2952]	@ seq_parameter_set_id, sps_tmp.seq_parameter_set_id
	bl	ProcessSPS	@
	subs	r4, r0, #0	@ D.46077,
	ldr	r2, [sp, #12]	@ tmp197, %sfp
	bne	.L2137	@,
	ldr	r1, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r0, r6, #2208	@, tmp202,
	str	r2, [sp, #4]	@ tmp197, %sfp
	add	r1, r1, r7	@, pH264Ctx_10(D)->SPS, D.46078
	bl	SPSEqual	@
	cmp	r0, #0	@ D.46075
	ldr	r2, [sp, #4]	@ tmp197, %sfp
	beq	.L2116	@,
	ldr	r0, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r1, r6, #2208	@, tmp202,
	mov	r3, #1	@ tmp222,
	strb	r3, [r6, #2232]	@ tmp222, sps_tmp.is_refreshed
	add	r0, r0, r7	@, pH264Ctx_10(D)->SPS, D.46078
	strb	r3, [r6, #2231]	@ tmp222, sps_tmp.is_valid
	bl	memmove	@
	mov	r0, r4	@ D.46075, D.46077
	b	.L2116	@
.L2099:
	cmp	r7, #122	@ profile_idc,
	beq	.L2102	@,
	cmp	r7, #144	@ profile_idc,
	beq	.L2102	@,
	cmp	r7, #110	@ profile_idc,
	beq	.L2102	@,
.L2097:
	bl	vfmw_dprint_nothing	@
	mov	ip, #100	@ profile_idc,
	b	.L2098	@
.L2134:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #1284]	@ D.46077, pH264Ctx_10(D)->MaxSpsNum
	sub	r2, r1, #1	@ D.46077, D.46077,
	cmp	r8, r2	@ seq_parameter_set_id, D.46077
	bls	.L2133	@,
	ldr	r2, .L2138+36	@ tmp191,
	ldr	r4, [r2]	@ D.46079, g_event_report
	cmp	r4, #0	@ D.46079,
	beq	.L2133	@,
	str	r1, [sp, #20]	@ D.46077, para
	add	r2, sp, #16	@,,
	str	r8, [sp, #16]	@ seq_parameter_set_id, para
	mov	r1, #109	@,
	ldr	r0, [r9, #3688]	@, pH264Ctx_10(D)->ChanID
	blx	r4	@ D.46079
.L2133:
	mvn	r0, #0	@ D.46075,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2137:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.46075,
	b	.L2116	@
.L2136:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	mov	r2, #1	@ tmp268,
	mvn	r0, #0	@ D.46075,
	add	r3, r3, r7	@ tmp267, pH264Ctx_10(D)->SPS, D.46078
	strb	r2, [r3, #24]	@ tmp268, _105->is_refreshed
	ldr	r3, [r5, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	add	r7, r3, r7	@ tmp273, pH264Ctx_10(D)->SPS, D.46078
	strb	r6, [r7, #23]	@ _51->is_valid, _108->is_valid
	b	.L2116	@
.L2139:
	.align	2
.L2138:
	.word	.LC140
	.word	.LC141
	.word	.LC142
	.word	.LC143
	.word	.LC144
	.word	.LC145
	.word	.LC146
	.word	.LC147
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
	ldr	ip, [r0, #368]	@ D.46099, pH264Ctx_7(D)->pCurrNal
	cmp	ip, #0	@ D.46099,
	cmpne	r1, #0	@, len,
	beq	.L2146	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r3, [ip]	@ zero_extendqisi2	@ D.46100, _8->nal_used_segment
	mov	r2, r3, asl #2	@ tmp146, D.46100,
	mov	r5, r3, asl #5	@ tmp147, D.46100,
	rsb	r4, r2, r5	@ tmp148, tmp146, tmp147
	add	r4, ip, r4	@ tmp149, D.46099, tmp148
	add	r6, r4, #8	@ tmp150, tmp149,
	ldr	lr, [r4, #8]	@ _8->stream[_11].streamBuffer, _8->stream[_11].streamBuffer
	cmp	lr, #0	@ _8->stream[_11].streamBuffer,
	beq	.L2149	@,
	ldr	lr, [ip, #68]	@ D.46097, _8->nal_segment
	cmp	r3, #1	@ D.46100,
	cmpls	lr, #2	@, D.46097,
	bhi	.L2149	@,
	cmp	lr, r3	@ D.46097, segment_idx
	bls	.L2149	@,
	ldr	lr, [r4, #12]	@ _8->stream[segment_idx_14].bitstream_length, _8->stream[segment_idx_14].bitstream_length
	mov	r6, r2	@ tmp207, tmp146
	ldr	r4, [r4, #24]	@ _8->stream[segment_idx_14].bitsoffset, _8->stream[segment_idx_14].bitsoffset
	mov	lr, lr, asl #3	@ D.46097, _8->stream[segment_idx_14].bitstream_length,
	add	r1, r4, r1, lsl #3	@ D.46097, _8->stream[segment_idx_14].bitsoffset, len,
	cmp	r1, lr	@ D.46097, D.46097
	bhi	.L2144	@,
	b	.L2142	@
.L2145:
	ldr	r4, [r2, #24]	@ _16->stream[segment_idx_28].bitsoffset, _16->stream[segment_idx_28].bitsoffset
	ldr	r2, [r2, #12]	@ _16->stream[segment_idx_28].bitstream_length, _16->stream[segment_idx_28].bitstream_length
	rsb	lr, lr, r4	@ D.46104, D.46097, _16->stream[segment_idx_28].bitsoffset
	add	r1, r1, lr	@ D.46097, D.46097, D.46104
	mov	lr, r2, asl #3	@ D.46097, _16->stream[segment_idx_28].bitstream_length,
	cmp	r1, lr	@ D.46097, D.46097
	bls	.L2142	@,
.L2144:
	rsb	r2, r6, r5	@ tmp198, tmp207, tmp208
	add	r3, r3, #1	@ segment_idx, segment_idx,
	add	ip, ip, r2	@ tmp199, D.46099, tmp198
	mov	r6, r3, asl #2	@ tmp207, segment_idx,
	mov	r5, r3, asl #5	@ tmp208, segment_idx,
	str	lr, [ip, #24]	@ D.46097, _52->stream[segment_idx_48].bitsoffset
	rsb	r2, r6, r5	@ tmp177, tmp207, tmp208
	ldr	ip, [r0, #368]	@ D.46099, pH264Ctx_7(D)->pCurrNal
	ldrb	r4, [ip]	@ zero_extendqisi2	@ _24->nal_used_segment, _24->nal_used_segment
	add	r4, r4, #1	@ tmp203, _24->nal_used_segment,
	strb	r4, [ip]	@ tmp203, _24->nal_used_segment
	ldr	ip, [r0, #368]	@ D.46099, pH264Ctx_7(D)->pCurrNal
	add	r2, ip, r2	@ tmp178, D.46099, tmp177
	ldr	r4, [ip, #68]	@ _16->nal_segment, _16->nal_segment
	cmp	r4, r3	@ _16->nal_segment, segment_idx
	bhi	.L2145	@,
	mov	r0, #0	@ D.46098,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2142:
	rsb	r2, r6, r5	@ tmp192, tmp207, tmp208
	mov	r0, #1	@ D.46098,
	add	ip, ip, r2	@ tmp193, D.46099, tmp192
	str	r1, [ip, #24]	@ D.46097, _51->stream[segment_idx_47].bitsoffset
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2149:
	mvn	r0, #0	@ D.46098,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2146:
	mvn	r0, #0	@ D.46098,
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
	beq	.L2162	@,
	ldr	r3, [r0, #368]	@ D.46135, pH264Ctx_13(D)->pCurrNal
	cmp	r3, #0	@ D.46135,
	cmpne	r2, #0	@, len,
	ble	.L2162	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r7, [r3]	@ zero_extendqisi2	@ D.46136, _14->nal_used_segment
	mov	ip, r7, asl #5	@ tmp163, D.46136,
	sub	ip, ip, r7, asl #2	@ tmp164, tmp163, D.46136,
	add	ip, r3, ip	@ tmp165, D.46135, tmp164
	ldr	ip, [ip, #8]	@ _14->stream[_17].streamBuffer, _14->stream[_17].streamBuffer
	cmp	ip, #0	@ _14->stream[_17].streamBuffer,
	beq	.L2165	@,
	ldr	ip, [r3, #68]	@ D.46139, _14->nal_segment
	cmp	r7, #1	@ D.46136,
	cmpls	ip, #2	@, D.46139,
	movhi	lr, #1	@ tmp174,
	movls	lr, #0	@ tmp174,
	bhi	.L2165	@,
	cmp	ip, r7	@ D.46139, segment_idx
	bls	.L2165	@,
.L2160:
	mov	r5, r7, asl #5	@ tmp234, segment_idx,
	sub	r5, r5, r7, asl #2	@ tmp178, tmp234, segment_idx,
	add	r3, r3, r5	@ tmp179, D.46135, tmp178
	ldr	r4, [r3, #24]	@ _85->stream[segment_idx_78].bitsoffset, _85->stream[segment_idx_78].bitsoffset
	ldr	r8, [r3, #8]	@ D.46138, _85->stream[segment_idx_78].streamBuffer
	add	r4, r4, #7	@ D.46139, _85->stream[segment_idx_78].bitsoffset,
	ldr	r6, [r3, #12]	@ _85->stream[segment_idx_78].bitstream_length, _85->stream[segment_idx_78].bitstream_length
	add	ip, r8, r4, lsr #3	@ byte_pos, D.46138, D.46139,
	add	r6, r8, r6	@ end_byte, D.46138, _85->stream[segment_idx_78].bitstream_length
	cmp	ip, r6	@ byte_pos, end_byte
	bcs	.L2156	@,
	ldrb	r3, [r8, r4, lsr #3]	@ zero_extendqisi2	@ D.46136, *byte_pos_28
	add	lr, lr, #1	@ cnt, cnt,
	cmp	lr, r2	@ cnt, len
	add	r4, r1, #1	@ pdes, pdes,
	add	ip, ip, #1	@ byte_pos, byte_pos,
	strb	r3, [r1]	@ D.46136, *pdes_77
	b	.L2169	@
.L2158:
	cmp	ip, r6	@ ivtmp.2519, end_byte
	mov	r1, r4	@ pdes, ivtmp.2525
	beq	.L2156	@,
	ldrb	r3, [ip], #1	@ zero_extendqisi2	@ D.46136, MEM[base: _8, offset: 0B]
	add	lr, lr, #1	@ cnt, cnt,
	cmp	lr, r2	@ cnt, len
	strb	r3, [r4], #1	@ D.46136, MEM[base: pdes_86, offset: 0B]
.L2169:
	ldr	r3, [r0, #368]	@ D.46135, pH264Ctx_13(D)->pCurrNal
	add	r3, r3, r5	@ tmp202, D.46135, tmp178
	ldr	r1, [r3, #24]	@ _71->stream[segment_idx_78].bitsoffset,
	add	r1, r1, #8	@ D.46139, _71->stream[segment_idx_78].bitsoffset,
	str	r1, [r3, #24]	@ D.46139,
	bcc	.L2158	@,
	mov	r0, r2	@ D.46132, len
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2156:
	ldr	ip, [r0, #368]	@ D.46135, pH264Ctx_13(D)->pCurrNal
	add	r7, r7, #1	@ segment_idx, segment_idx,
	ldrb	r3, [ip]	@ zero_extendqisi2	@ _31->nal_used_segment, _31->nal_used_segment
	add	r3, r3, #1	@ tmp229, _31->nal_used_segment,
	strb	r3, [ip]	@ tmp229, _31->nal_used_segment
	ldr	r3, [r0, #368]	@ D.46135, pH264Ctx_13(D)->pCurrNal
	ldr	ip, [r3, #68]	@ _22->nal_segment, _22->nal_segment
	cmp	ip, r7	@ _22->nal_segment, segment_idx
	bhi	.L2160	@,
	mov	r0, lr	@ D.46132, cnt
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2165:
	mvn	r0, #0	@ D.46132,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2162:
	mvn	r0, #0	@ D.46132,
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
	ldr	r1, .L2178	@,
	add	r4, r5, #24576	@ tmp228, pH264Ctx,
	bl	ue_v	@
	ldr	r2, .L2178+4	@,
	mov	r1, #1	@,
	str	r0, [r4, #1832]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_id
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	uxtb	r0, r0	@ D.46145,
	strb	r0, [r4, #1809]	@ D.46145, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_cancel_flag
	cmp	r0, #0	@ D.46145,
	beq	.L2177	@,
.L2171:
	mov	r0, r5	@, pH264Ctx
	ldr	r2, .L2178+8	@,
	mov	r1, #1	@,
	bl	u_v	@
	mov	r3, #1	@ tmp225,
	strb	r3, [r4, #1808]	@ tmp225, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_dec_ok
	strb	r0, [r4, #1810]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_extension_flag
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2177:
	ldr	r2, .L2178+12	@,
	mov	r1, #7	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+16	@,
	mov	r1, #1	@,
	str	r0, [r4, #1824]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+20	@,
	mov	r1, #6	@,
	strb	r0, [r4, #1811]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+24	@,
	mov	r1, #1	@,
	str	r0, [r4, #1828]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].content_interpretation_type
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+28	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1812]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].spatial_flipping_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+32	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1813]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_flipped_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+36	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1814]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].field_views_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+40	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1815]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].current_frame_is_frame0_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+44	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1816]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_self_contained_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldrb	r3, [r4, #1811]	@ zero_extendqisi2	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag
	cmp	r3, #0	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].quincunx_sampling_flag,
	strb	r0, [r4, #1817]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_self_contained_flag
	bne	.L2172	@,
	ldr	r3, [r4, #1824]	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type
	cmp	r3, #5	@ MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_type,
	beq	.L2172	@,
	ldr	r2, .L2178+48	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+52	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1818]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_grid_position_x
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+56	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1819]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame0_grid_position_y
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r2, .L2178+60	@,
	mov	r1, #1	@,
	strb	r0, [r4, #1820]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_grid_position_x
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	strb	r0, [r4, #1821]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame1_grid_position_y
.L2172:
	ldr	r2, .L2178+64	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r1, .L2178+68	@,
	str	r0, [r4, #1836]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_reserved_byte
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #1840]	@, MEM[(struct H264_FRAME_PACKING_ARRANGEMENT_S *)pH264Ctx_3(D) + 26384B].frame_packing_arrangement_repetition_period
	b	.L2171	@
.L2179:
	.align	2
.L2178:
	.word	.LC148
	.word	.LC149
	.word	.LC165
	.word	.LC150
	.word	.LC151
	.word	.LC152
	.word	.LC153
	.word	.LC154
	.word	.LC155
	.word	.LC156
	.word	.LC157
	.word	.LC158
	.word	.LC159
	.word	.LC160
	.word	.LC161
	.word	.LC162
	.word	.LC163
	.word	.LC164
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
	bne	.L2181	@,
	ldr	ip, [r2, #1284]	@ D.46176, pH264Ctx_10(D)->MaxSpsNum
	cmp	ip, #0	@ D.46176,
	ble	.L2182	@,
	ldrb	r2, [r3, #23]	@ zero_extendqisi2	@ pSPS_12->is_valid, pSPS_12->is_valid
	cmp	r2, #0	@ pSPS_12->is_valid,
	addeq	r3, r3, #4000	@ ivtmp.2539, pSPS,
	beq	.L2185	@,
	b	.L2205	@
.L2186:
	ldrb	r1, [r3, #-3977]	@ zero_extendqisi2	@ MEM[base: _34, offset: 4294963319B], MEM[base: _34, offset: 4294963319B]
	cmp	r1, #0	@ MEM[base: _34, offset: 4294963319B],
	bne	.L2183	@,
.L2185:
	add	r2, r2, #1	@ i, i,
	mov	r4, r3	@ pSPS, ivtmp.2539
	cmp	r2, ip	@ i, D.46176
	add	r3, r3, #4000	@ ivtmp.2539, ivtmp.2539,
	bne	.L2186	@,
.L2182:
	bl	vfmw_dprint_nothing	@
	mvn	r3, #0	@ D.46173,
.L2187:
	mov	r0, r3	@, D.46173
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2205:
	mov	r4, r3	@ pSPS, pSPS
.L2183:
	cmp	r4, #0	@ pSPS,
	beq	.L2182	@,
.L2181:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ pSPS_2->vui_parameters_present_flag, pSPS_2->vui_parameters_present_flag
	cmp	r3, #0	@ pSPS_2->vui_parameters_present_flag,
	beq	.L2188	@,
	ldrb	r3, [r4, #35]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag, pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag
	cmp	r3, #0	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters_present_flag,
	beq	.L2206	@,
	ldr	r1, [r4, #388]	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1, pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r7, [r4, #392]	@ pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1, pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r1, #1	@ D.46172, pSPS_2->vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r7, r7, #1	@ D.46172, pSPS_2->vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1,
.L2191:
	ldr	r2, .L2207	@,
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	add	r6, r5, #24576	@ tmp161, pH264Ctx,
	mov	r1, r7	@, D.46172
	ldr	r2, .L2207+4	@,
	str	r0, [r6, #1848]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].cpb_removal_delay
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	str	r0, [r6, #1852]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].dpb_output_delay
.L2188:
	ldrb	r0, [r4, #39]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.pic_struct_present_flag, pSPS_2->vui_seq_parameters.pic_struct_present_flag
	cmp	r0, #0	@ pSPS_2->vui_seq_parameters.pic_struct_present_flag,
	moveq	r3, r0	@ D.46173, pSPS_2->vui_seq_parameters.pic_struct_present_flag
	beq	.L2187	@,
	ldr	r2, .L2207+8	@,
	mov	r1, #4	@,
	mov	r0, r5	@, pH264Ctx
	add	r5, r5, #24576	@ tmp168, pH264Ctx,
	bl	u_v	@
	mov	r3, #0	@ D.46173,
	strb	r0, [r5, #1844]	@, MEM[(struct H264_PIC_TIMING_SEI_S *)pH264Ctx_10(D) + 26420B].pic_struct
	mov	r0, r3	@, D.46173
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2206:
	ldrb	r3, [r4, #38]	@ zero_extendqisi2	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag, pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag
	cmp	r3, #0	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters_present_flag,
	beq	.L2188	@,
	ldr	r1, [r4, #700]	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r7, [r4, #704]	@ pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r1, #1	@ D.46172, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r7, r7, #1	@ D.46172, pSPS_2->vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1,
	b	.L2191	@
.L2208:
	.align	2
.L2207:
	.word	.LC166
	.word	.LC167
	.word	.LC168
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
	ldr	r2, [r0, #368]	@ D.46263, pH264Ctx_109(D)->pCurrNal
	add	r8, sp, #24	@ tmp1448,,
	mov	r3, #0	@ tmp553,
	add	r6, r0, #13504	@ D.46257, pH264Ctx,
	mov	r1, #32	@ tmp555,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	add	r6, r6, #24	@ D.46257, D.46257,
	add	r4, r0, #12288	@ tmp1446, pH264Ctx,
	mov	r9, r3	@ payloadType, tmp553
	strb	r3, [r8, #-5]!	@ tmp553, byte_tmp
	str	r1, [r2, #24]	@ tmp555, _110->stream[0].bitsoffset
	b	.L2212	@
.L2452:
	bl	BsSkip	@
	cmp	r5, #0	@ ret,
	ble	.L2211	@,
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	r3, #255	@ byte_tmp,
	bne	.L2451	@,
.L2212:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1448
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, ip, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ D.46261, byte_tmp
	mov	r5, r0	@ ret,
	mov	r0, r6	@, D.46257
	add	r9, r9, r2	@ payloadType, payloadType, D.46261
	ble	.L2452	@,
.L2211:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.46256,
.L2455:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2451:
	mov	r3, #0	@ registered_flag,
	str	r3, [sp, #4]	@ registered_flag, %sfp
.L2395:
	mov	r5, #0	@ payloadSize,
	b	.L2218	@
.L2454:
	bl	BsSkip	@
	cmp	r10, #0	@ ret,
	ble	.L2211	@,
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	r3, #255	@ byte_tmp,
	bne	.L2453	@,
.L2218:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1448
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, ip, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ D.46261, byte_tmp
	mov	r10, r0	@ ret,
	mov	r0, r6	@, D.46257
	add	r5, r5, r2	@ payloadSize, payloadSize, D.46261
	ble	.L2454	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.46256,
	b	.L2455	@
.L2453:
	cmp	r5, #409600	@ payloadSize,
	bgt	.L2211	@,
	cmp	r9, #45	@ payloadType,
	ldrls	pc, [pc, r9, asl #2]	@ payloadType
	b	.L2219	@
.L2221:
	.word	.L2220
	.word	.L2222
	.word	.L2223
	.word	.L2224
	.word	.L2225
	.word	.L2226
	.word	.L2227
	.word	.L2228
	.word	.L2229
	.word	.L2230
	.word	.L2231
	.word	.L2232
	.word	.L2233
	.word	.L2234
	.word	.L2235
	.word	.L2236
	.word	.L2237
	.word	.L2238
	.word	.L2239
	.word	.L2240
	.word	.L2241
	.word	.L2242
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2219
	.word	.L2243
.L2243:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	ldr	r9, [r4, #1264]	@ bitpos, pH264Ctx_109(D)->BS.TotalPos
	bl	H264_DecFramePackingSEI	@
	ldr	r2, [r4, #1264]	@ D.46256, pH264Ctx_109(D)->BS.TotalPos
	mov	r10, r5, asl #3	@ D.46258, payloadSize,
	rsb	r3, r9, r2	@ bitpos, bitpos, D.46256
	cmp	r3, r10	@ bitpos, D.46258
	blt	.L2456	@,
.L2375:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	cmp	r0, #0	@,
	blt	.L2445	@,
.L2444:
	ldr	r3, [fp, #2192]	@ D.46259, pH264Ctx_109(D)->TotalUsrDatNum
.L2246:
	cmp	r3, #3	@ D.46259,
	bhi	.L2457	@,
.L2387:
	mov	r9, #0	@ payloadType,
	b	.L2394	@
.L2392:
	bl	BsSkip	@
	cmp	r5, #0	@ ret,
	ble	.L2393	@,
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ D.46261, byte_tmp
	cmp	r3, #255	@ D.46261,
	bne	.L2458	@,
.L2394:
	mov	r2, #1	@,
	mov	r1, r8	@, tmp1448
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	ip, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	mov	r1, #8	@,
	add	r3, r3, r1	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, ip, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ D.46261, byte_tmp
	mov	r5, r0	@ ret,
	mov	r0, r6	@, D.46257
	add	r9, r9, r2	@ payloadType, payloadType, D.46261
	ble	.L2392	@,
.L2393:
	mov	r0, #0	@ D.46256,
.L2214:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2242:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2459	@,
.L2369:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2372	@
.L2373:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2372:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2373	@,
.L2443:
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2241:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2460	@,
.L2364:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2367	@
.L2368:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2367:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2368	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2240:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2461	@,
.L2359:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2362	@
.L2363:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2362:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2363	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2238:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2462	@,
.L2349:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2352	@
.L2353:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2352:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2353	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2239:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2463	@,
.L2354:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2357	@
.L2358:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2357:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2358	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2237:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2464	@,
.L2344:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2347	@
.L2348:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2347:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2348	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2236:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2465	@,
.L2339:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2342	@
.L2343:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2342:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2343	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2228:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2466	@,
.L2299:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2302	@
.L2303:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2302:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2303	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2232:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2467	@,
.L2319:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2322	@
.L2323:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2322:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2323	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2223:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2468	@,
.L2258:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2261	@
.L2262:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2261:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2262	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2234:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2469	@,
.L2329:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2332	@
.L2333:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2332:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2333	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2226:
	ldr	r3, [sp, #4]	@ registered_flag, %sfp
	cmp	r3, #0	@ registered_flag,
	bne	.L2225	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	bl	vfmw_dprint_nothing	@
	ldr	r9, [fp, #2192]	@ D.46266, pH264Ctx_109(D)->TotalUsrDatNum
	cmp	r9, #3	@ D.46266,
	bhi	.L2470	@,
.L2270:
	ldr	r0, [fp, #3688]	@, pH264Ctx_109(D)->ChanID
	bl	GetUsd	@
	add	r3, r9, #12800	@ tmp746, D.46266,
	add	r3, r3, #36	@ tmp746, tmp746,
	add	r3, r7, r3, lsl #2	@ tmp747, pH264Ctx, tmp746,
	str	r0, [r3, #4]	@, pH264Ctx_109(D)->pUsrDatArray
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp750, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp750, tmp750,
	add	r3, r7, r3, lsl #2	@ tmp754, pH264Ctx, tmp750,
	ldr	r1, [r3, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	cmp	r1, #0	@ D.46268,
	beq	.L2390	@,
	ldr	r2, [r7, #368]	@ D.46263, pH264Ctx_109(D)->pCurrNal
	cmp	r5, #1024	@ payloadSize,
	movlt	r3, r5	@ D.46258, payloadSize
	movge	r3, #1024	@ D.46258,
	ldrb	ip, [r2]	@ zero_extendqisi2	@ segment_idx, _232->nal_used_segment
	ldr	lr, [r2, #68]	@ D.46266, _232->nal_segment
	str	r3, [sp]	@ D.46258, %sfp
	cmp	ip, lr	@ segment_idx, D.46266
	bcs	.L2398	@,
	sxth	r3, ip	@ D.46261, segment_idx
	mov	r9, #0	@ min_len_tmp,
	mov	r0, r3, asl #5	@ tmp759, D.46261,
	sub	r0, r0, r3, asl #2	@ D.46265, tmp759, D.46261,
	add	r0, r2, r0	@ ivtmp.2578, D.46263, D.46265
.L2273:
	ldr	r3, [r0, #24]	@ MEM[base: _607, offset: 24B], MEM[base: _607, offset: 24B]
	add	ip, ip, #1	@ segment_idx, segment_idx,
	ldr	r2, [r0, #12]	@ MEM[base: _607, offset: 12B], MEM[base: _607, offset: 12B]
	cmp	ip, lr	@ segment_idx, D.46266
	add	r3, r3, #7	@ D.46266, MEM[base: _607, offset: 24B],
	add	r0, r0, #28	@ ivtmp.2578, ivtmp.2578,
	sub	r3, r2, r3, lsr #3	@ D.46266, MEM[base: _607, offset: 12B], D.46266,
	add	r9, r9, r3	@ min_len_tmp, min_len_tmp, D.46266
	bne	.L2273	@,
	mov	r2, r9	@ D.46258, min_len_tmp
.L2272:
	ldr	r0, [sp]	@ D.46258, %sfp
	ldrsb	r3, [sp, #4]	@ registered_flag, %sfp
	cmp	r0, r2	@ D.46258, D.46258
	movle	r9, r0	@ min_len_tmp, D.46258
	cmp	r3, #1	@ registered_flag,
	movne	r3, #0	@ D.46266,
	movne	r10, r3	@ used_byte, D.46266
	beq	.L2471	@,
.L2275:
	rsb	r2, r3, r9	@, D.46266, min_len_tmp
	mov	r0, r7	@, pH264Ctx
	bl	GetBytes	@
	subs	r9, r0, #0	@ ret,
	ble	.L2472	@,
	ldr	r3, [sp]	@ D.46258, %sfp
	rsb	r3, r10, r3	@ D.46258, used_byte, D.46258
	cmp	r9, r3	@ ret, D.46258
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	blt	.L2473	@,
	add	r3, r3, #12800	@ tmp928, pH264Ctx_109(D)->TotalUsrDatNum,
	ldr	r2, [sp]	@ D.46258, %sfp
	add	r3, r3, #36	@ tmp928, tmp928,
	rsb	r10, r10, r5	@ D.46258, used_byte, payloadSize
	cmp	r2, r5	@ D.46258, payloadSize
	add	r3, r7, r3, lsl #2	@ tmp932, pH264Ctx, tmp928,
	ldr	r3, [r3, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	str	r10, [r3, #1048]	@ D.46258, _314->data_size
	bcc	.L2474	@,
.L2289:
	cmp	r10, #0	@ D.46258,
	ble	.L2283	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2283	@,
	mov	r5, #0	@ i,
	b	.L2291	@
.L2292:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2283	@,
.L2291:
	add	r5, r5, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r10	@ i, D.46258
	bne	.L2292	@,
.L2283:
	ldr	r1, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	mov	r0, #8	@ tmp908,
	ldr	r3, [r7]	@ pH264Ctx_109(D)->pstExtraData, pH264Ctx_109(D)->pstExtraData
	add	r1, r1, #12800	@ tmp892, pH264Ctx_109(D)->TotalUsrDatNum,
	ldr	r2, .L2484	@ tmp1693,
	add	r1, r1, #36	@ tmp892, tmp892,
	add	r1, r7, r1, lsl #2	@ tmp896, pH264Ctx, tmp892,
	ldr	ip, [r2]	@ D.46272, g_event_report
	ldrd	r2, [r3, #56]	@ D.46271, pH264Ctx_109(D)->pstExtraData,
	ldr	r1, [r1, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	cmp	ip, #0	@ D.46272,
	add	r1, r1, #1056	@ tmp900, D.46268,
	strd	r2, [r1]	@ D.46271,
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp902, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp902, tmp902,
	add	r3, r7, r3, lsl #2	@ tmp906, pH264Ctx, tmp902,
	ldr	r3, [r3, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	str	r0, [r3, #1036]	@ tmp908,
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	ldr	r2, [fp, #3648]	@ D.46266, pH264Ctx_109(D)->SeqCnt
	add	r3, r3, #12800	@ tmp910, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp910, tmp910,
	add	r3, r7, r3, lsl #2	@ tmp914, pH264Ctx, tmp910,
	ldr	r3, [r3, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	str	r2, [r3, #1040]	@ D.46266,
	beq	.L2286	@,
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	add	r2, sp, #24	@ tmp960,,
	ldr	r0, [fp, #3688]	@, pH264Ctx_109(D)->ChanID
	mov	r1, #6	@,
	add	r3, r3, #12800	@ tmp953, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp953, tmp953,
	add	r3, r7, r3, lsl #2	@ tmp957, pH264Ctx, tmp953,
	ldr	r3, [r3, #4]	@ tmp959, pH264Ctx_109(D)->pUsrDatArray
	str	r3, [r2, #-4]!	@ tmp959,
	blx	ip	@ D.46272
.L2286:
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	add	r3, r3, #1	@ D.46259, pH264Ctx_109(D)->TotalUsrDatNum,
	str	r3, [fp, #2192]	@ D.46259, pH264Ctx_109(D)->TotalUsrDatNum
	cmp	r3, #3	@ D.46259,
	bls	.L2387	@,
.L2457:
	bl	vfmw_dprint_nothing	@
	add	r4, r7, #51200	@ ivtmp.2551, pH264Ctx,
	mov	r5, #0	@ tmp1450,
	mov	r7, r4	@ D.46264, ivtmp.2551
	add	r4, r4, #144	@ ivtmp.2551, ivtmp.2551,
	add	r7, r7, #160	@ D.46264, D.46264,
.L2389:
	ldr	r1, [r4, #4]!	@ D.46268, MEM[base: _781, offset: 0B]
	cmp	r1, #0	@ D.46268,
	beq	.L2388	@,
	ldr	r0, [fp, #3688]	@, pH264Ctx_109(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4]	@ tmp1450, MEM[base: _781, offset: 0B]
.L2388:
	cmp	r4, r7	@ ivtmp.2551, D.46264
	bne	.L2389	@,
.L2390:
	mvn	r0, #0	@ D.46256,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2230:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2475	@,
.L2309:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2312	@
.L2313:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2312:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2313	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2229:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2476	@,
.L2304:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2307	@
.L2308:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2307:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2308	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2231:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2477	@,
.L2314:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2317	@
.L2318:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2317:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2318	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2220:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2478	@,
.L2244:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2248	@
.L2249:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2248:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2249	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2235:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2479	@,
.L2334:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2337	@
.L2338:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2337:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2338	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2227:
	bl	vfmw_dprint_nothing	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2296	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2296	@,
	mov	r9, #0	@ i,
	b	.L2297	@
.L2298:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2296	@,
.L2297:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2298	@,
.L2296:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	bge	.L2443	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
.L2445:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [fp, #2192]	@ D.46259, pH264Ctx_109(D)->TotalUsrDatNum
	b	.L2246	@
.L2233:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2480	@,
.L2324:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2327	@
.L2328:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2327:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2328	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2222:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	ldr	r9, [r4, #1264]	@ bitpos, pH264Ctx_109(D)->BS.TotalPos
	bl	H264_DecPicTimingSEI	@
	ldr	r2, [r4, #1264]	@ D.46258, pH264Ctx_109(D)->BS.TotalPos
	mov	r10, r5, asl #3	@ D.46258, payloadSize,
	rsb	r3, r9, r2	@ bitpos, bitpos, D.46258
	cmp	r3, r10	@ bitpos, D.46258
	bge	.L2375	@,
	rsb	r10, r3, r10	@ D.46258, bitpos, D.46258
	ldr	r3, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	cmp	r10, #0	@ D.46258,
	add	r9, r10, #7	@ tmp617, D.46258,
	movge	r9, r10	@ D.46258, D.46258
	mov	r9, r9, asr #3	@ D.46258, D.46258,
	cmp	r9, #0	@ D.46258,
	movle	r3, r3, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	ble	.L2253	@,
	add	r1, r2, #8	@ D.46258, D.46258,
	mov	r3, r3, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	cmp	r1, r3	@ D.46258, D.46258
	bgt	.L2253	@,
	mov	fp, #0	@ i,
	b	.L2254	@
.L2255:
	add	r1, r2, #8	@ D.46258, D.46258,
	cmp	r1, r3	@ D.46258, D.46258
	bgt	.L2253	@,
.L2254:
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	add	fp, fp, #1	@ i, i,
	ldr	r3, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	cmp	fp, r9	@ i, D.46258
	ldr	r2, [r4, #1264]	@ D.46258, pH264Ctx_109(D)->BS.TotalPos
	mov	r3, r3, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bne	.L2255	@,
.L2253:
	mov	r1, r10, asr #31	@ tmp638, D.46258,
	mov	r0, r1, lsr #29	@ tmp639, tmp638,
	add	r1, r10, r0	@ tmp640, D.46258, tmp639
	and	r1, r1, #7	@ tmp641, tmp640,
	rsb	r1, r0, r1	@ tmp642, tmp639, tmp641
	add	r2, r1, r2	@ D.46258, tmp642, D.46258
	cmp	r2, r3	@ D.46258, D.46258
	bgt	.L2375	@,
.L2448:
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	b	.L2375	@
.L2224:
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2481	@,
.L2263:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2266	@
.L2267:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2266:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2267	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2219:
	mov	r1, r5	@, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	blt	.L2482	@,
.L2382:
	cmp	r5, #0	@ payloadSize,
	ble	.L2443	@,
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
	mov	r9, #0	@ i,
	b	.L2385	@
.L2386:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2443	@,
.L2385:
	add	r9, r9, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ payloadSize, i
	bne	.L2386	@,
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	b	.L2444	@
.L2458:
	cmp	r3, #128	@ D.46261,
	bne	.L2395	@,
	b	.L2393	@
.L2225:
	bl	vfmw_dprint_nothing	@
	add	fp, r7, #49152	@ tmp1447, pH264Ctx,
	mov	r3, #1	@ registered_flag,
	ldr	r9, [fp, #2192]	@ D.46266, pH264Ctx_109(D)->TotalUsrDatNum
	cmp	r9, #3	@ D.46266,
	str	r3, [sp, #4]	@ registered_flag, %sfp
	bls	.L2270	@,
.L2470:
	ldr	r1, [fp, #2196]	@, pH264Ctx_109(D)->pUsrDatArray
	mov	r9, #0	@ D.46266,
	ldr	r0, [fp, #3688]	@, pH264Ctx_109(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [fp, #2200]	@, pH264Ctx_109(D)->pUsrDatArray
	ldr	r0, [fp, #3688]	@, pH264Ctx_109(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [fp, #2204]	@, pH264Ctx_109(D)->pUsrDatArray
	ldr	r0, [fp, #3688]	@, pH264Ctx_109(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [fp, #2208]	@, pH264Ctx_109(D)->pUsrDatArray
	ldr	r0, [fp, #3688]	@, pH264Ctx_109(D)->ChanID
	bl	FreeUsdByDec	@
	str	r9, [fp, #2196]	@ tmp1683, pH264Ctx_109(D)->pUsrDatArray
	str	r9, [fp, #2200]	@ tmp1684, pH264Ctx_109(D)->pUsrDatArray
	str	r9, [fp, #2204]	@ tmp1685, pH264Ctx_109(D)->pUsrDatArray
	str	r9, [fp, #2208]	@ tmp1686, pH264Ctx_109(D)->pUsrDatArray
	str	r9, [fp, #2192]	@ tmp1687, pH264Ctx_109(D)->TotalUsrDatNum
	b	.L2270	@
.L2473:
	add	r3, r3, #12800	@ tmp876, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp876, tmp876,
	add	r3, r7, r3, lsl #2	@ tmp880, pH264Ctx, tmp876,
	ldr	r3, [r3, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	str	r9, [r3, #1048]	@ ret, _304->data_size
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2283	@,
	mov	r5, #0	@ i,
	b	.L2284	@
.L2287:
	ldr	r3, [r4, #1264]	@ pH264Ctx_109(D)->BS.TotalPos, pH264Ctx_109(D)->BS.TotalPos
	ldr	r2, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	add	r3, r3, #8	@ D.46258, pH264Ctx_109(D)->BS.TotalPos,
	cmp	r3, r2, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bgt	.L2283	@,
.L2284:
	add	r5, r5, #1	@ i, i,
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	cmp	r5, r9	@ i, ret
	bne	.L2287	@,
	b	.L2283	@
.L2456:
	rsb	r10, r3, r10	@ D.46258, bitpos, D.46258
	ldr	r3, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	cmp	r10, #0	@ D.46258,
	add	r9, r10, #7	@ tmp1370, D.46258,
	movge	r9, r10	@ D.46258, D.46258
	mov	r9, r9, asr #3	@ D.46258, D.46258,
	cmp	r9, #0	@ D.46258,
	movle	r3, r3, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	ble	.L2377	@,
	add	r1, r2, #8	@ D.46258, D.46256,
	mov	r3, r3, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	cmp	r1, r3	@ D.46258, D.46258
	bgt	.L2377	@,
	mov	fp, #0	@ i,
	b	.L2378	@
.L2379:
	add	r1, r2, #8	@ D.46258, D.46256,
	cmp	r1, r3	@ D.46258, D.46258
	bgt	.L2377	@,
.L2378:
	mov	r1, #8	@,
	mov	r0, r6	@, D.46257
	bl	BsSkip	@
	add	fp, fp, #1	@ i, i,
	ldr	r3, [r4, #1256]	@ pH264Ctx_109(D)->BS.BsLen, pH264Ctx_109(D)->BS.BsLen
	cmp	fp, r9	@ i, D.46258
	ldr	r2, [r4, #1264]	@ D.46256, pH264Ctx_109(D)->BS.TotalPos
	mov	r3, r3, asl #3	@ D.46258, pH264Ctx_109(D)->BS.BsLen,
	bne	.L2379	@,
.L2377:
	mov	r1, r10, asr #31	@ tmp1391, D.46258,
	mov	r0, r1, lsr #29	@ tmp1392, tmp1391,
	add	r1, r10, r0	@ tmp1393, D.46258, tmp1392
	and	r1, r1, #7	@ tmp1394, tmp1393,
	rsb	r1, r0, r1	@ tmp1395, tmp1392, tmp1394
	add	r2, r2, r1	@ D.46258, D.46256, tmp1395
	cmp	r3, r2	@ D.46258, D.46258
	blt	.L2375	@,
	b	.L2448	@
.L2471:
	strb	r3, [r1, #1064]	@ registered_flag, _229->IsRegistered
	mov	r0, r7	@, pH264Ctx
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	mov	r1, #8	@,
	ldr	r2, .L2484+4	@,
	add	r3, r3, #12800	@ tmp770, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp770, tmp770,
	add	r3, r7, r3, lsl #2	@ tmp774, pH264Ctx, tmp770,
	ldr	r10, [r3, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	bl	u_v	@
	strb	r0, [r10, #1065]	@, _247->itu_t_t35_country_code
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	add	r3, r3, #12800	@ tmp779, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp779, tmp779,
	add	r3, r7, r3, lsl #2	@ tmp783, pH264Ctx, tmp779,
	ldr	ip, [r3, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	ldrb	r3, [ip, #1065]	@ zero_extendqisi2	@ _253->itu_t_t35_country_code, _253->itu_t_t35_country_code
	cmp	r3, #255	@ _253->itu_t_t35_country_code,
	beq	.L2276	@,
	mov	r3, #3	@ D.46266,
	mov	r2, #0	@ tmp1690,
	mov	r10, r3	@ used_byte, D.46266
	strb	r2, [ip, #1066]	@ tmp1690, _253->itu_t_t35_country_code_extension_byte
.L2277:
	ldr	ip, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	mov	r1, #16	@,
	ldr	r2, .L2484+8	@,
	mov	r0, r7	@, pH264Ctx
	add	ip, ip, #12800	@ tmp791, pH264Ctx_109(D)->TotalUsrDatNum,
	str	r3, [sp, #8]	@ D.46266, %sfp
	add	ip, ip, #36	@ tmp791, tmp791,
	add	ip, r7, ip, lsl #2	@ tmp795, pH264Ctx, tmp791,
	ldr	ip, [ip, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	str	ip, [sp, #12]	@ D.46268, %sfp
	bl	u_v	@
	ldr	ip, [sp, #12]	@ D.46268, %sfp
	ldr	r3, [sp, #8]	@ D.46266, %sfp
	add	ip, ip, #1056	@ tmp801, D.46268,
	mov	r1, r3	@, D.46266
	strh	r0, [ip, #12]	@ movhi	@, _261->itu_t_t35_provider_code
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	ldr	r3, [sp, #8]	@ D.46266, %sfp
	blt	.L2483	@,
.L2278:
	cmp	r9, r3	@ min_len_tmp, D.46266
	beq	.L2283	@,
	ldr	r2, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	add	r2, r2, #12800	@ tmp803, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r2, r2, #36	@ tmp803, tmp803,
	add	r2, r7, r2, lsl #2	@ tmp807, pH264Ctx, tmp803,
	ldr	r1, [r2, #4]	@ D.46268, pH264Ctx_109(D)->pUsrDatArray
	b	.L2275	@
.L2465:
	bl	vfmw_dprint_nothing	@
	b	.L2339	@
.L2466:
	bl	vfmw_dprint_nothing	@
	b	.L2299	@
.L2467:
	bl	vfmw_dprint_nothing	@
	b	.L2319	@
.L2468:
	bl	vfmw_dprint_nothing	@
	b	.L2258	@
.L2469:
	bl	vfmw_dprint_nothing	@
	b	.L2329	@
.L2461:
	bl	vfmw_dprint_nothing	@
	b	.L2359	@
.L2462:
	bl	vfmw_dprint_nothing	@
	b	.L2349	@
.L2463:
	bl	vfmw_dprint_nothing	@
	b	.L2354	@
.L2464:
	bl	vfmw_dprint_nothing	@
	b	.L2344	@
.L2482:
	bl	vfmw_dprint_nothing	@
	b	.L2382	@
.L2481:
	bl	vfmw_dprint_nothing	@
	b	.L2263	@
.L2475:
	bl	vfmw_dprint_nothing	@
	b	.L2309	@
.L2476:
	bl	vfmw_dprint_nothing	@
	b	.L2304	@
.L2477:
	bl	vfmw_dprint_nothing	@
	b	.L2314	@
.L2478:
	bl	vfmw_dprint_nothing	@
	b	.L2244	@
.L2479:
	bl	vfmw_dprint_nothing	@
	b	.L2334	@
.L2480:
	bl	vfmw_dprint_nothing	@
	b	.L2324	@
.L2459:
	bl	vfmw_dprint_nothing	@
	b	.L2369	@
.L2460:
	bl	vfmw_dprint_nothing	@
	b	.L2364	@
.L2474:
	rsb	r1, r2, r5	@, D.46258, payloadSize
	mov	r0, r7	@, pH264Ctx
	bl	PassBytes	@
	cmp	r0, #0	@,
	bge	.L2289	@,
	bl	vfmw_dprint_nothing	@
	b	.L2289	@
.L2398:
	mov	r2, #0	@ D.46258,
	mov	r9, r2	@ min_len_tmp, D.46258
	b	.L2272	@
.L2483:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #8]	@ D.46266, %sfp
	b	.L2278	@
.L2276:
	ldr	r2, .L2484+12	@,
	mov	r1, #8	@,
	mov	r0, r7	@, pH264Ctx
	mov	r3, #4	@ D.46266,
	str	ip, [sp, #12]	@ D.46268, %sfp
	str	r3, [sp, #8]	@ D.46266, %sfp
	bl	u_v	@
	ldr	r3, [sp, #8]	@ D.46266, %sfp
	ldr	ip, [sp, #12]	@ D.46268, %sfp
	mov	r10, r3	@ used_byte, D.46266
	strb	r0, [ip, #1066]	@, _253->itu_t_t35_country_code_extension_byte
	b	.L2277	@
.L2472:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	ldr	r0, [fp, #3688]	@, pH264Ctx_109(D)->ChanID
	add	r3, r3, #12800	@ tmp856, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp856, tmp856,
	add	r3, r7, r3, lsl #2	@ tmp860, pH264Ctx, tmp856,
	ldr	r1, [r3, #4]	@, pH264Ctx_109(D)->pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	r3, [fp, #2192]	@ pH264Ctx_109(D)->TotalUsrDatNum, pH264Ctx_109(D)->TotalUsrDatNum
	mov	r2, #0	@ tmp873,
	mvn	r0, #0	@ D.46256,
	add	r3, r3, #12800	@ tmp867, pH264Ctx_109(D)->TotalUsrDatNum,
	add	r3, r3, #36	@ tmp867, tmp867,
	add	r3, r7, r3, lsl #2	@ tmp871, pH264Ctx, tmp867,
	str	r2, [r3, #4]	@ tmp873, pH264Ctx_109(D)->pUsrDatArray
	b	.L2214	@
.L2485:
	.align	2
.L2484:
	.word	g_event_report
	.word	.LC169
	.word	.LC171
	.word	.LC170
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
	b	.L2495	@
.L2490:
	.word	.L2489
	.word	.L2495
	.word	.L2495
	.word	.L2495
	.word	.L2489
	.word	.L2495
	.word	.L2491
	.word	.L2491
.L2491:
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	mov	r2, #1	@ tmp165,
	str	r2, [r0]	@ tmp165, *pNewPicDetector_10(D)
	adds	r0, r3, #0	@ D.46291, *pNewPicDetector_10(D),
	movne	r0, #1	@ D.46291,
	rsb	r0, r0, #0	@ ret, D.46291
	bx	lr	@
.L2489:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pNewPicDetector, pNewPicDetector
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r3, #0	@ *pNewPicDetector_10(D),
	beq	.L2492	@,
.L2494:
	mvn	r0, #0	@ ret,
.L2493:
	mov	r3, #0	@ tmp161,
	str	r3, [r5]	@ tmp161, *pNewPicDetector_10(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2495:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L2492:
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ D.46288, MEM[(HI_U8 *)pu8_6(D) + 5B]
	ldrb	r0, [r1, #6]	@ zero_extendqisi2	@ D.46288, MEM[(HI_U8 *)pu8_6(D) + 6B]
	ldrb	r2, [r1, #7]	@ zero_extendqisi2	@ D.46288, MEM[(HI_U8 *)pu8_6(D) + 7B]
	ldrb	r4, [r1, #4]	@ zero_extendqisi2	@ D.46288, MEM[(HI_U8 *)pu8_6(D) + 4B]
	mov	r3, r3, asl #16	@ D.46288, D.46288,
	orr	r3, r3, r0, asl #8	@ D.46288, D.46288, D.46288,
	orr	r3, r3, r2	@ D.46288, D.46288, D.46288
	orr	r4, r3, r4, asl #24	@ tmpbits, D.46288, D.46288,
	mov	r0, r4	@, tmpbits
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	bhi	.L2494	@,
	mov	r0, r0, asl #1	@ D.46288, zeros,
	rsb	r0, r0, #31	@ D.46288, D.46288,
	mov	r4, r4, lsr r0	@ D.46288, tmpbits,
	subs	r0, r4, #1	@ ret, D.46288,
	mvnne	r0, #0	@ ret,
	b	.L2493	@
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
	ands	r3, r1, #63	@ D.46321, len,
	mov	r9, r1	@ len, len
	mov	r7, r0	@ ptr, ptr
	movne	r3, #1	@ D.46321,
	add	r6, r3, r6, asr #6	@ r, D.46321, len,
	cmp	r6, #0	@ r,
	ble	.L2510	@,
	ldr	r5, .L2519	@ tmp179,
	mov	fp, r1	@ ivtmp.2643, len
	mov	r4, #0	@ zero_byte,
	mov	r8, r5	@ tmp180, tmp179
.L2508:
	cmp	fp, #64	@ ivtmp.2643,
	ldr	r0, .L2519	@,
	movcc	r10, fp	@ ThisRoundSize, ivtmp.2643
	movcs	r10, #64	@ ThisRoundSize,
	mov	r2, r10	@, ThisRoundSize
	rsb	r1, r10, fp	@ D.46322, ThisRoundSize, ivtmp.2643
	sub	r10, r10, #1	@ D.46322, ThisRoundSize,
	add	r1, r7, r1	@, ptr, D.46322
	bl	memcpy	@
	add	r3, r5, r10	@ pLastByte, tmp179, D.46322
	ldrb	r2, [r5, r10]	@ zero_extendqisi2	@ *pLastByte_31, *pLastByte_31
	cmp	r2, #0	@ *pLastByte_31,
	bne	.L2500	@,
	cmp	r3, r8	@ pLastByte, tmp180
	add	r4, r4, #1	@ zero_byte, zero_byte,
	bne	.L2503	@,
	b	.L2501	@
.L2504:
	cmp	r3, r5	@ pLastByte, tmp179
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L2501	@,
.L2503:
	ldrb	r2, [r3, #-1]!	@ zero_extendqisi2	@ MEM[base: pLastByte_34, offset: 0B], MEM[base: pLastByte_34, offset: 0B]
	cmp	r2, #0	@ MEM[base: pLastByte_34, offset: 0B],
	beq	.L2504	@,
.L2500:
	mov	r0, r4, asl #3	@ D.46319, zero_byte,
.L2499:
	cmp	r4, r9	@ zero_byte, len
	bge	.L2512	@,
	sub	r9, r9, #1	@ tmp169, len,
	rsb	r4, r4, r9	@ D.46322, zero_byte, tmp169
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@ Byte, *_40
	tst	r2, #1	@ Byte,
	moveq	r2, r2, lsr #1	@ Byte, Byte,
	moveq	r3, #1	@ zero_bit,
	bne	.L2512	@,
.L2507:
	tst	r2, #1	@ Byte,
	mov	r2, r2, lsr #1	@ Byte, Byte,
	bne	.L2505	@,
	add	r3, r3, #1	@ zero_bit, zero_bit,
	cmp	r3, #8	@ zero_bit,
	bne	.L2507	@,
.L2505:
	add	r0, r3, r0	@ D.46325, zero_bit, D.46319
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2501:
	subs	r6, r6, #1	@ r, r,
	sub	fp, fp, #64	@ ivtmp.2643, ivtmp.2643,
	bne	.L2508	@,
	b	.L2500	@
.L2512:
	mov	r3, #0	@ zero_bit,
	add	r0, r3, r0	@ D.46325, zero_bit, D.46319
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2510:
	mov	r0, #0	@ D.46319,
	mov	r4, r0	@ zero_byte, D.46319
	b	.L2499	@
.L2520:
	.align	2
.L2519:
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
	ldr	r3, [r0, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
	ldr	r2, [r3, #68]	@ _8->nal_segment, _8->nal_segment
	cmp	r2, #1	@ _8->nal_segment,
	bls	.L2526	@,
	ldr	r1, [r3, #40]	@, _8->stream[1].bitstream_length
	ldr	r0, [r3, #36]	@, _8->stream[1].streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
	ldr	r2, [r3, #40]	@ _16->stream[1].bitstream_length, _16->stream[1].bitstream_length
	cmp	r0, r2, asl #3	@ zero_bit, _16->stream[1].bitstream_length,
	bcs	.L2528	@,
	cmn	r0, #1	@ zero_bit,
	beq	.L2526	@,
.L2524:
	add	r0, r0, #1	@ D.46335, zero_bit,
	str	r0, [r3, #72]	@ D.46335, _61->nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
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
	ldr	r2, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
	mov	r3, #0	@ tmp161,
	mov	r1, #1	@ tmp162,
	str	r3, [r2, #36]	@ tmp161, _44->stream[1].streamBuffer
	ldr	r2, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
	str	r1, [r2, #68]	@ tmp162, _46->nal_segment
	ldr	r2, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
	str	r3, [r2, #72]	@ tmp161, _48->nal_trail_zero_bit_num
	ldmfd	sp!, {r4, pc}	@
.L2528:
	add	r2, r4, #49152	@ tmp146, pH264Ctx,
	ldr	r1, [r3, #60]	@, _16->stream[1].StreamID
	ldr	r0, [r2, #3688]	@, pH264Ctx_7(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
	mov	r1, #0	@ tmp148,
	mov	r2, #1	@ tmp149,
	str	r1, [r3, #36]	@ tmp148, _22->stream[1].streamBuffer
	ldr	r3, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
	str	r2, [r3, #68]	@ tmp149, _24->nal_segment
	ldr	r3, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
.L2526:
	ldr	r1, [r3, #12]	@, _62->stream[0].bitstream_length
	ldr	r0, [r3, #8]	@, _62->stream[0].streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ D.46332, pH264Ctx_7(D)->pCurrNal
	b	.L2524	@
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
	b	CombinePacket.part.9	@
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
	beq	.L2536	@,
	mov	r2, ip	@ ivtmp.2659, pH264Ctx
	mov	r3, #1	@ Pos,
	b	.L2534	@
.L2533:
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2539	@,
.L2534:
	ldrb	r1, [r2, #473]	@ zero_extendqisi2	@ MEM[base: _19, offset: 473B], MEM[base: _19, offset: 473B]
	add	r2, r2, #96	@ ivtmp.2659, ivtmp.2659,
	cmp	r1, #0	@ MEM[base: _19, offset: 473B],
	bne	.L2533	@,
	mov	r0, r3	@ D.46351, Pos
.L2532:
	mov	r2, r3, asl #7	@ tmp124, Pos,
	mov	r1, #1	@ tmp128,
	sub	r3, r2, r3, asl #5	@ tmp125, tmp124, Pos,
	add	ip, ip, r3	@ tmp126, pH264Ctx, tmp125
	strb	r1, [ip, #377]	@ tmp128, pH264Ctx_6(D)->NalArray[Pos_23].is_valid
	bx	lr	@
.L2539:
	mvn	r0, #0	@ D.46351,
	bx	lr	@
.L2536:
	mov	r3, r0	@ Pos, D.46351
	b	.L2532	@
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r8, r1	@ IsNewPic, IsNewPic
	mov	r5, r2	@ IsSizeChanged, IsSizeChanged
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ tmp153,
	str	r3, [r5]	@ tmp153, *IsSizeChanged_6(D)
	add	r6, r4, #20480	@ tmp156, pH264Ctx,
	str	r3, [r8]	@ tmp153, *IsNewPic_8(D)
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [r4, #368]	@ D.46357, pH264Ctx_10(D)->pCurrNal
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ D.46358, _11->nal_unit_type
	strb	r2, [r6, #203]	@ D.46358, pH264Ctx_10(D)->CurrSlice.nal_unit_type
	ldr	r3, [r3, #76]	@ D.46359, _11->nal_ref_idc
	str	r3, [r6, #232]	@ D.46359, pH264Ctx_10(D)->CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r7, r0, #0	@ D.46356,
	bne	.L2544	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L2549	@,
	ldrb	r2, [r6, #205]	@ zero_extendqisi2	@ pH264Ctx_10(D)->CurrSlice.new_pic_flag, pH264Ctx_10(D)->CurrSlice.new_pic_flag
	add	r3, r4, #12288	@ tmp166, pH264Ctx,
	mov	r0, #2208	@ tmp174,
	mov	r9, #4000	@ tmp178,
	sub	r2, r2, #1	@ D.46360, pH264Ctx_10(D)->CurrSlice.new_pic_flag,
	clz	r2, r2	@ D.46360, D.46360
	mov	r2, r2, lsr #5	@ D.46360, D.46360,
	str	r2, [r8]	@ D.46360, *IsNewPic_8(D)
	ldr	ip, [r6, #212]	@ pH264Ctx_10(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_10(D)->CurrSlice.pic_parameter_set_id
	add	r2, r4, #49152	@ tmp190, pH264Ctx,
	ldr	r6, [r3, #1296]	@ pH264Ctx_10(D)->PPS, pH264Ctx_10(D)->PPS
	add	r4, r4, #24576	@ tmp210, pH264Ctx,
	ldr	lr, [r3, #1272]	@ oldw, pH264Ctx_10(D)->CurWidthInMb
	ldr	r1, [r3, #1292]	@ pH264Ctx_10(D)->SPS, pH264Ctx_10(D)->SPS
	mla	r0, r0, ip, r6	@ tmp175, tmp174, pH264Ctx_10(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_10(D)->PPS
	ldr	r6, [r3, #1276]	@ oldh, pH264Ctx_10(D)->CurHeightInMb
	mov	r8, lr, asl #4	@ D.46361, oldw,
	mov	r10, r6, asl #4	@ D.46361, oldh,
	ldr	r3, [r0, #28]	@ pPPS_28->seq_parameter_set_id, pPPS_28->seq_parameter_set_id
	mla	r1, r9, r3, r1	@ pSPS, tmp178, pPPS_28->seq_parameter_set_id, pH264Ctx_10(D)->SPS
	ldrb	r3, [r1, #18]	@ zero_extendqisi2	@ D.46361, pSPS_32->frame_mbs_only_flag
	ldr	r0, [r1, #3960]	@ pSPS_32->pic_height_in_map_units_minus1, pSPS_32->pic_height_in_map_units_minus1
	rsb	r3, r3, #2	@ D.46361, D.46361,
	ldr	ip, [r1, #3956]	@ pSPS_32->pic_width_in_mbs_minus1, pSPS_32->pic_width_in_mbs_minus1
	str	r10, [r2, #3728]	@ D.46361, pH264Ctx_10(D)->DSD_OldHeight
	mla	r3, r0, r3, r3	@ newh, pSPS_32->pic_height_in_map_units_minus1, D.46361, D.46361
	add	ip, ip, #1	@ neww, pSPS_32->pic_width_in_mbs_minus1,
	str	r8, [r2, #3724]	@ D.46361, pH264Ctx_10(D)->DSD_OldWidth
	mov	r0, ip, asl #4	@ D.46361, neww,
	str	r0, [r2, #3732]	@ D.46361, pH264Ctx_10(D)->DSD_NewWidth
	cmp	lr, ip	@ oldw, neww
	cmpeq	r6, r3	@, oldh, newh
	mov	r3, r3, asl #4	@ D.46361, newh,
	str	r3, [r2, #3736]	@ D.46361, pH264Ctx_10(D)->DSD_NewHeight
	movne	r3, #1	@ tmp208,
	strne	r3, [r5]	@ tmp208, *IsSizeChanged_6(D)
	ldr	r3, [r4, #2048]	@ pH264Ctx_10(D)->DPB.size, pH264Ctx_10(D)->DPB.size
	ldr	r2, [r1, #3980]	@ pSPS_32->dpb_size_plus1, pSPS_32->dpb_size_plus1
	add	r3, r3, #1	@ D.46359, pH264Ctx_10(D)->DPB.size,
	cmp	r2, r3	@ pSPS_32->dpb_size_plus1, D.46359
	movhi	r3, #1	@ tmp214,
	strhi	r3, [r5]	@ tmp214, *IsSizeChanged_6(D)
.L2541:
	mov	r0, r7	@, D.46356
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2544:
	mvn	r7, #0	@ D.46356,
	b	.L2541	@
.L2549:
	bl	vfmw_dprint_nothing	@
	mvn	r7, #0	@ D.46356,
	b	.L2541	@
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
	clz	r0, r0	@ D.46367, pH264Ctx_3(D)->SliceParaNum
	mov	r0, r0, lsr #5	@ D.46367, D.46367,
	rsb	r0, r0, #0	@, D.46367
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
	beq	.L2552	@,
	add	r5, r0, #26880	@ ivtmp.2680, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	r8, r0, #49152	@ tmp168, pH264Ctx,
	add	r5, r5, #152	@ ivtmp.2680, ivtmp.2680,
	mov	r4, #0	@ i,
	b	.L2556	@
.L2553:
	ldr	r3, [r0, #408]	@ pstLogicFs_20->pstDecodeFs, pstLogicFs_20->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_20->pstDecodeFs,
	beq	.L2555	@,
	ldr	r3, [r7, #244]	@ D.46393, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r4, r3	@ i, D.46393
	bcs	.L2579	@,
.L2556:
	ldr	r3, [r5, #4]!	@ MEM[base: _41, offset: 0B], MEM[base: _41, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r8, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r3, [r3, #4]	@ _16->frame_store, _16->frame_store
	ldr	r1, [r3, #508]	@, _17->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L2553	@,
.L2555:
	mvn	r0, #0	@ D.46395,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2579:
	cmp	r3, #0	@ D.46393,
	beq	.L2552	@,
	ldr	r3, [r7, #248]	@ pH264Ctx_11(D)->CurrSlice.listXsize, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r3, #0	@ pH264Ctx_11(D)->CurrSlice.listXsize,
	addne	r6, r6, #27136	@ ivtmp.2669, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r6, r6, #28	@ ivtmp.2669, ivtmp.2669,
	bne	.L2559	@,
	b	.L2552	@
.L2580:
	ldr	r3, [r0, #408]	@ pstLogicFs_31->pstDecodeFs, pstLogicFs_31->pstDecodeFs
	cmp	r3, #0	@ pstLogicFs_31->pstDecodeFs,
	beq	.L2555	@,
	ldr	r3, [r7, #248]	@ pH264Ctx_11(D)->CurrSlice.listXsize, pH264Ctx_11(D)->CurrSlice.listXsize
	cmp	r4, r3	@ i, pH264Ctx_11(D)->CurrSlice.listXsize
	bcs	.L2552	@,
.L2559:
	ldr	r3, [r6, #4]!	@ MEM[base: _38, offset: 0B], MEM[base: _38, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r0, [r8, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r3, [r3, #4]	@ _27->frame_store, _27->frame_store
	ldr	r1, [r3, #508]	@, _28->logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L2580	@,
	b	.L2555	@
.L2552:
	mov	r0, #0	@ D.46395,
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
	mov	r8, r1	@ PicID, PicID
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r1, r8	@, PicID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L2586	@,
	ldrsb	r3, [r0, #1]	@ pstLogicFs_13->s32DispState, pstLogicFs_13->s32DispState
	cmp	r3, #0	@ pstLogicFs_13->s32DispState,
	beq	.L2586	@,
	add	r4, r0, #196	@ ivtmp.2696, pstLogicFs,
	add	r5, r0, #212	@ D.46424, pstLogicFs,
	mov	r7, #0	@ tmp139,
.L2584:
	ldr	r1, [r4, #4]!	@ D.46422, MEM[base: _1, offset: 0B]
	cmp	r1, #0	@ D.46422,
	beq	.L2583	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4]	@ tmp139, MEM[base: _1, offset: 0B]
.L2583:
	cmp	r4, r5	@ ivtmp.2696, D.46424
	bne	.L2584	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r1, r8	@, PicID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.46418,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2586:
	mvn	r0, #0	@ D.46418,
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	moveq	ip, #1	@ tmp182,
	.pad #8
	sub	sp, sp, #8	@,,
	movne	ip, #0	@ tmp182,
	beq	.L2635	@,
	ldr	r3, [r0]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	mov	r7, r2	@ is_last_frame, is_last_frame
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pFrameStore, pFrameStore
	ldr	r3, [r3, #12]	@ _10->s32DecOrderOutput, _10->s32DecOrderOutput
	cmp	r3, #0	@ _10->s32DecOrderOutput,
	ble	.L2595	@,
	add	r3, r0, #49152	@ tmp186, pH264Ctx,
	ldr	r2, [r3, #3616]	@ pH264Ctx_3(D)->OldDecMode, pH264Ctx_3(D)->OldDecMode
	cmp	r2, #2	@ pH264Ctx_3(D)->OldDecMode,
	beq	.L2595	@,
	ldr	r2, [r3, #1544]	@ D.46438, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r2, #0	@ D.46438,
	strneb	ip, [r2, #1]	@ tmp182, _13->is_used
	movne	r0, #1	@ D.46433,
	strne	ip, [r3, #1544]	@ tmp182, pH264Ctx_3(D)->pDirectOutBuf
	beq	.L2597	@,
.L2594:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2595:
	mov	r1, r5	@, pFrameStore
	mov	r0, r4	@, pH264Ctx
	bl	CheckFrameStore	@
	cmn	r0, #3	@,
	beq	.L2597	@,
	add	r6, r4, #49152	@ tmp313, pH264Ctx,
	ldr	r1, [r6, #1544]	@ D.46438, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r1, #0	@ D.46438,
	beq	.L2598	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	ldr	r1, [r6, #1544]	@, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	bl	CheckFrameStore	@
	cmp	r0, #0	@ ret
	beq	.L2636	@,
	cmn	r0, #3	@ ret,
	beq	.L2605	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r3, #184]	@, _47->fs_image.image_id
	bl	H264DEC_RecycleImage	@
.L2605:
	ldr	r3, [r6, #1544]	@ D.46438, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, #0	@ tmp266,
	strb	r0, [r3, #1]	@ tmp266, _49->is_used
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	str	r0, [r6, #1544]	@ tmp266, pH264Ctx_3(D)->pDirectOutBuf
	cmp	r5, r3	@ pFrameStore, pH264Ctx_3(D)->pDirectOutBuf
	beq	.L2594	@,
.L2598:
	mov	r1, r5	@, pFrameStore
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	mov	r1, r5	@, pFrameStore
	mov	r0, r4	@, pH264Ctx
	bl	CheckFrameStore	@
	cmp	r0, #0	@ ret
	beq	.L2637	@,
	cmn	r0, #3	@ ret,
	beq	.L2597	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #184]	@, pFrameStore_5(D)->fs_image.image_id
	mov	r0, r4	@, pH264Ctx
	bl	H264DEC_RecycleImage	@
	mov	r0, #2	@ D.46433,
	b	.L2594	@
.L2635:
	bl	vfmw_dprint_nothing	@
	mov	r0, #2	@ D.46433,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2597:
	mov	r0, #1	@ D.46433,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2637:
	mov	r2, #1	@,
	ldr	r1, [r5, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r5, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pstLogicFsImage,
	beq	.L2608	@,
	cmp	r7, #1	@ is_last_frame,
	add	r3, r4, #8	@, pH264Ctx,
	streq	r7, [r8, #224]	@ is_last_frame, pstLogicFsImage_56->last_frame
	mov	r2, r4	@, pH264Ctx
	ldr	r0, [r6, #3688]	@ pH264Ctx_3(D)->ChanID, pH264Ctx_3(D)->ChanID
	mov	r1, #0	@,
	str	r8, [sp]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L2638	@,
	ldr	r3, [r4]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _62->s32FastForwardBackwardSpeed, _62->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.46440, _62->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.46440, D.46440,
	cmp	r3, #4096	@ D.46440,
	movcc	r3, #0	@ tmp298,
	strcc	r3, [r8, #84]	@ tmp298, pstLogicFsImage_56->u32RepeatCnt
	bcs	.L2639	@,
.L2612:
	ldr	r2, [r6, #3720]	@ pH264Ctx_3(D)->numOutputFrame, pH264Ctx_3(D)->numOutputFrame
	mov	r0, #0	@ D.46433,
	ldr	r3, [r6, #3712]	@ pH264Ctx_3(D)->PicOutCounter, pH264Ctx_3(D)->PicOutCounter
	add	r2, r2, #1	@ D.46436, pH264Ctx_3(D)->numOutputFrame,
	str	r2, [r6, #3720]	@ D.46436, pH264Ctx_3(D)->numOutputFrame
	add	r3, r3, #2	@ D.46437, pH264Ctx_3(D)->PicOutCounter,
	str	r3, [r6, #3712]	@ D.46437, pH264Ctx_3(D)->PicOutCounter
	b	.L2594	@
.L2636:
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
	beq	.L2608	@,
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	mov	r2, r4	@, pH264Ctx
	mov	r1, #0	@,
	cmp	r5, r3	@ pFrameStore, pH264Ctx_3(D)->pDirectOutBuf
	cmpeq	r7, #1	@, is_last_frame,
	moveq	r3, #1	@ tmp224,
	streq	r3, [r8, #224]	@ tmp224, pstLogicFsImage_30->last_frame
	add	r3, r4, #8	@, pH264Ctx,
	ldr	r0, [r6, #3688]	@ pH264Ctx_3(D)->ChanID, pH264Ctx_3(D)->ChanID
	str	r8, [sp]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L2640	@,
	ldr	r3, [r4]	@ pH264Ctx_3(D)->pstExtraData, pH264Ctx_3(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _39->s32FastForwardBackwardSpeed, _39->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.46440, _39->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.46440, D.46440,
	cmp	r3, #4096	@ D.46440,
	movcc	r3, #0	@ tmp247,
	strcc	r3, [r8, #84]	@ tmp247, pstLogicFsImage_30->u32RepeatCnt
	bcs	.L2641	@,
.L2604:
	ldr	r2, [r6, #3720]	@ pH264Ctx_3(D)->numOutputFrame, pH264Ctx_3(D)->numOutputFrame
	ldr	r3, [r6, #3712]	@ pH264Ctx_3(D)->PicOutCounter, pH264Ctx_3(D)->PicOutCounter
	add	r2, r2, #1	@ D.46436, pH264Ctx_3(D)->numOutputFrame,
	str	r2, [r6, #3720]	@ D.46436, pH264Ctx_3(D)->numOutputFrame
	add	r3, r3, #2	@ D.46437, pH264Ctx_3(D)->PicOutCounter,
	str	r3, [r6, #3712]	@ D.46437, pH264Ctx_3(D)->PicOutCounter
	b	.L2605	@
.L2639:
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L2612	@
.L2641:
	mov	r1, r8	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L2604	@
.L2638:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #508]	@, pFrameStore_5(D)->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.46433,
	b	.L2594	@
.L2640:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1544]	@ D.46438, pH264Ctx_3(D)->pDirectOutBuf
	mov	r5, #0	@ tmp231,
	mov	r2, r5	@, tmp231
	strb	r5, [r3, #1]	@ tmp231, _35->is_used
	ldr	r3, [r6, #1544]	@ pH264Ctx_3(D)->pDirectOutBuf, pH264Ctx_3(D)->pDirectOutBuf
	ldr	r0, [r6, #3688]	@, pH264Ctx_3(D)->ChanID
	ldr	r1, [r3, #508]	@, _37->logic_fs_id
	bl	FSP_SetDisplay	@
	str	r5, [r6, #1544]	@ tmp231, pH264Ctx_3(D)->pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.46433,
	b	.L2594	@
.L2608:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.46433,
	b	.L2594	@
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
	add	r4, r0, r1, lsl #2	@ D.46446, pH264Ctx, pos,
	add	r4, r4, #24576	@ tmp122, D.46446,
	mov	r6, r1	@ pos, pos
	mov	r3, #0	@ tmp123,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r4, #1856]	@ D.46443, MEM[(struct H264_CTX_S *)_14 + 26432B]
	mov	r2, r3	@, tmp123
	strb	r3, [r1, #4]	@ tmp123, _5->is_in_dpb
	ldr	r1, [r4, #1856]	@, MEM[(struct H264_CTX_S *)_14 + 26432B]
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1856]	@ MEM[(struct H264_CTX_S *)_14 + 26432B], MEM[(struct H264_CTX_S *)_14 + 26432B]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference
	cmp	r3, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_10].is_reference,
	mov	r7, r0	@ ret,
	bne	.L2643	@,
	mov	r1, r6	@, pos
	mov	r0, r5	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
.L2643:
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
	add	r6, r0, #24576	@ tmp140, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	addne	r7, r0, #26368	@ ivtmp.2713, pH264Ctx,
	movne	r4, #0	@ i,
	addne	r7, r7, #60	@ ivtmp.2713, ivtmp.2713,
	bne	.L2650	@,
	b	.L2651	@
.L2649:
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, r4	@ pH264Ctx_8(D)->DPB.used_size, i
	bls	.L2651	@,
.L2650:
	ldr	r1, [r7, #4]!	@ D.46462, MEM[base: _31, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _10->is_reference, _10->is_reference
	cmp	r3, #0	@ _10->is_reference,
	beq	.L2649	@,
	mov	r0, r5	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	cmp	r3, r4	@ pH264Ctx_8(D)->DPB.used_size, i
	bhi	.L2650	@,
.L2651:
	mov	r0, r5	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	beq	.L2653	@,
	b	.L2662	@
.L2654:
	bl	GetMinPOC	@
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [sp]	@, pos
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret,
	beq	.L2652	@,
.L2653:
	ldr	r3, [r6, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	mov	r2, sp	@,
	add	r1, sp, #4	@ tmp143,,
	mov	r0, r5	@, pH264Ctx
	cmp	r3, #0	@ pH264Ctx_8(D)->DPB.used_size,
	bne	.L2654	@,
	mov	r0, r3	@ D.46460, pH264Ctx_8(D)->DPB.used_size
.L2652:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L2662:
	bl	vfmw_dprint_nothing	@
	b	.L2653	@
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
	add	r2, r0, #26368	@ ivtmp.2726, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #49664	@ D.46503, pH264Ctx,
	ldr	r4, [r3, #964]	@ D.46501, pH264Ctx_12(D)->CurrPic.pMarkPara
	.pad #12
	sub	sp, sp, #12	@,,
	add	r8, r8, #40	@ D.46503, D.46503,
	add	r9, r0, #16384	@ tmp253, pH264Ctx,
	add	r7, r4, #2000	@ D.46510, D.46501,
	add	r6, r0, #24576	@ tmp257, pH264Ctx,
	add	r4, r4, #4	@ ivtmp.2739, D.46501,
	add	r7, r7, #4	@ D.46510, D.46510,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	str	r3, [sp, #4]	@ tmp254, %sfp
	add	r3, r2, #124	@ ivtmp.2726, ivtmp.2726,
	str	r3, [sp]	@ ivtmp.2726, %sfp
.L2676:
	ldr	r3, [r4]	@ MEM[base: _91, offset: 0B], MEM[base: _91, offset: 0B]
	cmp	r3, #6	@ MEM[base: _91, offset: 0B],
	ldrls	pc, [pc, r3, asl #2]	@ MEM[base: _91, offset: 0B]
	b	.L2664	@
.L2666:
	.word	.L2665
	.word	.L2667
	.word	.L2668
	.word	.L2669
	.word	.L2670
	.word	.L2671
	.word	.L2672
.L2672:
	ldr	r2, [r4, #12]	@, MEM[base: _91, offset: 12B]
	mov	r1, r8	@, D.46503
	mov	r0, r5	@, pH264Ctx
	bl	MarkCurrPicLT	@
.L2664:
	add	r4, r4, #20	@ ivtmp.2739, ivtmp.2739,
	cmp	r4, r7	@ ivtmp.2739, D.46510
	bne	.L2676	@,
.L2665:
	ldr	r3, [r9, #3436]	@ pH264Ctx_12(D)->CurrPOC.last_has_mmco_5, pH264Ctx_12(D)->CurrPOC.last_has_mmco_5
	cmp	r3, #1	@ pH264Ctx_12(D)->CurrPOC.last_has_mmco_5,
	movne	r0, #0	@ D.46500,
	beq	.L2686	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2671:
	ldr	r3, [r6, #2056]	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	cmp	r3, #0	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer,
	ldrne	r10, [sp]	@ ivtmp.2726, %sfp
	movne	fp, #0	@ i,
	beq	.L2675	@,
.L2674:
	ldr	r1, [r10, #4]!	@, MEM[base: _37, offset: 0B]
	mov	r0, r5	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, #2056]	@ pH264Ctx_12(D)->DPB.ref_frames_in_buffer, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	add	fp, fp, #1	@ i, i,
	cmp	fp, r1	@ i, pH264Ctx_12(D)->DPB.ref_frames_in_buffer
	bcc	.L2674	@,
.L2675:
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r1, #0	@,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r3, #1	@ tmp165,
	str	r3, [r9, #3436]	@ tmp165, pH264Ctx_12(D)->CurrPOC.last_has_mmco_5
	b	.L2664	@
.L2670:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #16]	@, MEM[base: _91, offset: 16B]
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2664	@
.L2669:
	ldr	r3, [r4, #12]	@, MEM[base: _91, offset: 12B]
	mov	r1, r8	@, D.46503
	ldr	r2, [r4, #4]	@, MEM[base: _91, offset: 4B]
	mov	r0, r5	@, pH264Ctx
	bl	MarkSTToLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2664	@
.L2668:
	mov	r0, r5	@, pH264Ctx
	ldr	r2, [r4, #8]	@, MEM[base: _91, offset: 8B]
	mov	r1, r8	@, D.46503
	bl	UnMarkLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	b	.L2664	@
.L2667:
	mov	r0, r5	@, pH264Ctx
	ldr	r2, [r4, #4]	@, MEM[base: _91, offset: 4B]
	mov	r1, r8	@, D.46503
	bl	UnMarkSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	b	.L2664	@
.L2686:
	ldr	r1, [sp, #4]	@ tmp254, %sfp
	mov	r3, #0	@ tmp190,
	ldrb	r2, [r1, #555]	@ zero_extendqisi2	@ pH264Ctx_12(D)->CurrPic.structure, pH264Ctx_12(D)->CurrPic.structure
	str	r3, [r1, #968]	@ tmp190, pH264Ctx_12(D)->CurrPic.frame_num
	cmp	r2, #1	@ pH264Ctx_12(D)->CurrPic.structure,
	beq	.L2679	@,
	bcc	.L2680	@,
	cmp	r2, #2	@ pH264Ctx_12(D)->CurrPic.structure,
	bne	.L2678	@,
	ldr	r2, [sp, #4]	@ tmp254, %sfp
	str	r3, [r2, #992]	@ tmp190, pH264Ctx_12(D)->CurrPic.bottompoc
	str	r3, [r2, #980]	@ tmp190, pH264Ctx_12(D)->CurrPic.thispoc
	str	r3, [r9, #3448]	@ tmp190, pH264Ctx_12(D)->CurrPOC.bottompoc
	str	r3, [r9, #3456]	@ tmp190, pH264Ctx_12(D)->CurrPOC.ThisPOC
.L2678:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	adds	r0, r0, #0	@ D.46509,,
	movne	r0, #1	@ D.46509,
	rsb	r0, r0, #0	@ D.46500, D.46509
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2680:
	ldr	r0, [sp, #4]	@ tmp254, %sfp
	ldr	r1, [r0, #980]	@ D.46504, pH264Ctx_12(D)->CurrPic.thispoc
	ldr	r2, [r0, #988]	@ pH264Ctx_12(D)->CurrPic.toppoc, pH264Ctx_12(D)->CurrPic.toppoc
	ldr	r3, [r0, #992]	@ pH264Ctx_12(D)->CurrPic.bottompoc, pH264Ctx_12(D)->CurrPic.bottompoc
	rsb	r2, r1, r2	@ D.46504, D.46504, pH264Ctx_12(D)->CurrPic.toppoc
	str	r2, [r0, #988]	@ D.46504, pH264Ctx_12(D)->CurrPic.toppoc
	rsb	r3, r1, r3	@ D.46504, D.46504, pH264Ctx_12(D)->CurrPic.bottompoc
	str	r3, [r0, #992]	@ D.46504, pH264Ctx_12(D)->CurrPic.bottompoc
	cmp	r3, r2	@ D.46504, D.46504
	movge	r3, r2	@ D.46504, D.46504
	str	r3, [r0, #984]	@ D.46504, pH264Ctx_12(D)->CurrPic.framepoc
	str	r3, [r0, #980]	@ D.46504, pH264Ctx_12(D)->CurrPic.thispoc
	ldr	r1, [r9, #3456]	@ D.46504, pH264Ctx_12(D)->CurrPOC.ThisPOC
	ldr	r2, [r9, #3444]	@ pH264Ctx_12(D)->CurrPOC.toppoc, pH264Ctx_12(D)->CurrPOC.toppoc
	ldr	r3, [r9, #3448]	@ pH264Ctx_12(D)->CurrPOC.bottompoc, pH264Ctx_12(D)->CurrPOC.bottompoc
	rsb	r2, r1, r2	@ D.46504, D.46504, pH264Ctx_12(D)->CurrPOC.toppoc
	str	r2, [r9, #3444]	@ D.46504, pH264Ctx_12(D)->CurrPOC.toppoc
	rsb	r3, r1, r3	@ D.46504, D.46504, pH264Ctx_12(D)->CurrPOC.bottompoc
	str	r3, [r9, #3448]	@ D.46504, pH264Ctx_12(D)->CurrPOC.bottompoc
	cmp	r3, r2	@ D.46504, D.46504
	movge	r3, r2	@ D.46504, D.46504
	str	r3, [r9, #3452]	@ D.46504, pH264Ctx_12(D)->CurrPOC.framepoc
	str	r3, [r9, #3456]	@ D.46504, pH264Ctx_12(D)->CurrPOC.ThisPOC
	b	.L2678	@
.L2679:
	ldr	r2, [sp, #4]	@ tmp254, %sfp
	str	r3, [r2, #988]	@ tmp190, pH264Ctx_12(D)->CurrPic.toppoc
	str	r3, [r2, #980]	@ tmp190, pH264Ctx_12(D)->CurrPic.thispoc
	str	r3, [r9, #3444]	@ tmp190, pH264Ctx_12(D)->CurrPOC.toppoc
	str	r3, [r9, #3456]	@ tmp190, pH264Ctx_12(D)->CurrPOC.ThisPOC
	b	.L2678	@
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
	beq	.L2688	@,
	add	r10, r0, #24576	@ tmp249, pH264Ctx,
	ldr	r3, [r10, #2052]	@ pH264Ctx_11(D)->DPB.used_size, pH264Ctx_11(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_11(D)->DPB.used_size,
	beq	.L2694	@,
	add	r5, r0, #26368	@ ivtmp.2760, pH264Ctx,
	mov	fp, #0	@ i,
	mov	r4, fp	@ tmp251, i
	mov	r9, r5	@ ivtmp.2824, ivtmp.2760
	mov	r8, r5	@ ivtmp.2831, ivtmp.2824
	add	r9, r9, #124	@ ivtmp.2824, ivtmp.2824,
	add	r5, r5, #64	@ ivtmp.2760, ivtmp.2760,
	add	r8, r8, #188	@ ivtmp.2831, ivtmp.2831,
.L2693:
	ldr	r3, [r5]	@ D.46610, MEM[base: _88, offset: 0B]
	mov	r2, #0	@,
	add	fp, fp, #1	@ i, i,
	strb	r4, [r3, #402]	@ tmp251, _18->frame.is_short_term
	strb	r4, [r3, #401]	@ tmp251, _18->frame.is_long_term
	ldr	r3, [r5]	@ D.46610, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #438]	@ tmp251, _21->top_field.is_short_term
	strb	r4, [r3, #437]	@ tmp251, _21->top_field.is_long_term
	ldr	r3, [r5]	@ D.46610, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #474]	@ tmp251, _24->bottom_field.is_short_term
	strb	r4, [r3, #473]	@ tmp251, _24->bottom_field.is_long_term
	ldr	r3, [r5]	@ D.46610, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #2]	@ tmp251, _27->is_reference
	ldr	r3, [r5]	@ MEM[base: _88, offset: 0B], MEM[base: _88, offset: 0B]
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r1, [r3, #508]	@, _30->logic_fs_id
	bl	FSP_SetRef	@
	ldr	r3, [r5]	@ D.46610, MEM[base: _88, offset: 0B]
	mov	r2, #1	@ tmp254,
	strb	r4, [r3, #1]	@ tmp251, _33->is_used
	ldr	r3, [r5]	@ D.46610, MEM[base: _88, offset: 0B]
	strb	r4, [r3, #4]	@ tmp251, _35->is_in_dpb
	ldr	r3, [r5]	@ D.46610, MEM[base: _88, offset: 0B]
	str	r2, [r3, #532]	@ tmp254, _37->is_displayed
	ldr	r2, [r5]	@ D.46610, MEM[base: _88, offset: 0B]
	ldr	r3, [r2, #552]	@ D.46609, _39->apc_idc
	add	r3, r3, #6656	@ tmp194, D.46609,
	add	r3, r3, #4	@ tmp194, tmp194,
	add	r3, r7, r3, lsl #2	@ tmp195, pH264Ctx, tmp194,
	str	r4, [r3, #4]	@ tmp251, pH264Ctx_11(D)->APC.is_used
	ldr	r1, [r2, #508]	@, _39->logic_fs_id
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	bl	FSP_GetDisplay	@
	mov	r2, #0	@,
	cmp	r0, #3	@,
	beq	.L2692	@,
	ldr	r3, [r5]	@ MEM[base: _88, offset: 0B], MEM[base: _88, offset: 0B]
	ldr	r0, [r6, #3688]	@, pH264Ctx_11(D)->ChanID
	ldr	r1, [r3, #508]	@, _47->logic_fs_id
	bl	FSP_SetDisplay	@
.L2692:
	str	r4, [r5], #4	@ tmp251, MEM[base: _88, offset: 0B]
	str	r4, [r9, #4]!	@ tmp251, MEM[base: _98, offset: 0B]
	str	r4, [r8, #4]!	@ tmp251, MEM[base: _99, offset: 0B]
	ldr	r3, [r10, #2052]	@ pH264Ctx_11(D)->DPB.used_size, pH264Ctx_11(D)->DPB.used_size
	cmp	r3, fp	@ pH264Ctx_11(D)->DPB.used_size, i
	bhi	.L2693	@,
.L2694:
	mov	r3, #0	@ tmp163,
	str	r3, [r10, #2052]	@ tmp163, pH264Ctx_11(D)->DPB.used_size
	ldr	r1, [r6, #2168]	@ D.46609, pH264Ctx_11(D)->TotalPmvNum
	cmp	r1, r3	@ D.46609,
	addne	r2, r7, #51200	@ ivtmp.2750, pH264Ctx,
	addne	r2, r2, #44	@ ivtmp.2750, ivtmp.2750,
	movne	r0, r3	@ tmp250, i
	beq	.L2691	@,
.L2697:
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ tmp250, MEM[base: _8, offset: 0B]
	cmp	r3, r1	@ i, D.46609
	bne	.L2697	@,
.L2691:
	mov	r0, r7	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r7	@, pH264Ctx
	bl	UpdateLTReflist	@
	ldr	r3, [r6, #964]	@ pH264Ctx_11(D)->CurrPic.pMarkPara, pH264Ctx_11(D)->CurrPic.pMarkPara
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ _60->long_term_reference_flag, _60->long_term_reference_flag
	cmp	r3, #0	@ _60->long_term_reference_flag,
	bne	.L2711	@,
	str	r3, [r10, #2064]	@ _60->long_term_reference_flag, pH264Ctx_11(D)->DPB.max_long_term_pic_idx
	mov	r0, r3	@ D.46604, _60->long_term_reference_flag
	strb	r3, [r6, #556]	@ _60->long_term_reference_flag, pH264Ctx_11(D)->CurrPic.is_long_term
	mov	r3, #1	@ tmp245,
	strb	r3, [r6, #557]	@ tmp245, pH264Ctx_11(D)->CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2688:
	ldrb	r3, [r6, #553]	@ zero_extendqisi2	@ pH264Ctx_11(D)->CurrPic.field_pair_flag, pH264Ctx_11(D)->CurrPic.field_pair_flag
	cmp	r3, #0	@ pH264Ctx_11(D)->CurrPic.field_pair_flag,
	beq	.L2712	@,
.L2709:
	add	r10, r7, #24576	@ tmp249, pH264Ctx,
	b	.L2691	@
.L2711:
	mov	r3, #0	@ tmp227,
	mov	r2, #1	@ tmp224,
	mov	r0, r3	@ D.46604, tmp227
	str	r2, [r10, #2064]	@ tmp224, pH264Ctx_11(D)->DPB.max_long_term_pic_idx
	strb	r2, [r6, #556]	@ tmp224, pH264Ctx_11(D)->CurrPic.is_long_term
	str	r3, [r6, #972]	@ tmp227, pH264Ctx_11(D)->CurrPic.long_term_frame_idx
	strb	r3, [r6, #557]	@ tmp227, pH264Ctx_11(D)->CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2712:
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2709	@,
	mvn	r0, #0	@ D.46604,
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
	sub	r3, r3, #2	@ D.46617, pH264Ctx_6(D)->CurrPic.structure,
	clz	r3, r3	@ D.46617, D.46617
	mov	r3, r3, lsr #5	@ D.46617, D.46617,
	str	r3, [r6, #3440]	@ D.46617, pH264Ctx_6(D)->CurrPOC.last_pic_bottom_field
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.nal_unit_type, pH264Ctx_6(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_6(D)->CurrPic.nal_unit_type,
	beq	.L2714	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_6(D)->CurrPic.pic_type, pH264Ctx_6(D)->CurrPic.pic_type
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrPic.pic_type,
	bne	.L2715	@,
	ldr	r3, [r0]	@ D.46620, pH264Ctx_6(D)->pstExtraData
	ldr	r2, [r3, #540]	@ _14->stPvrInfo.u32BFrmRefFlag, _14->stPvrInfo.u32BFrmRefFlag
	cmp	r2, #1	@ _14->stPvrInfo.u32BFrmRefFlag,
	beq	.L2740	@,
.L2715:
	ldr	r3, [r4, #964]	@ pH264Ctx_6(D)->CurrPic.pMarkPara, pH264Ctx_6(D)->CurrPic.pMarkPara
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ _21->adaptive_ref_pic_marking_mode_flag, _21->adaptive_ref_pic_marking_mode_flag
	cmp	r3, #0	@ _21->adaptive_ref_pic_marking_mode_flag,
	ldr	r3, [r4, #976]	@ pH264Ctx_6(D)->CurrPic.nal_ref_idc, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	beq	.L2741	@,
	cmp	r3, #0	@ pH264Ctx_6(D)->CurrPic.nal_ref_idc,
	bne	.L2742	@,
.L2722:
	mov	r0, #0	@ D.46615,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2741:
	cmp	r3, #0	@ D.46623,
	beq	.L2722	@,
.L2721:
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.field_pair_flag, pH264Ctx_6(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ pH264Ctx_6(D)->CurrPic.field_pair_flag,
	bne	.L2726	@,
	add	r2, r5, #24576	@ tmp195, pH264Ctx,
	ldr	r1, [r6, #1156]	@ pH264Ctx_6(D)->CurrSPS.num_ref_frames, pH264Ctx_6(D)->CurrSPS.num_ref_frames
	ldr	ip, [r2, #2060]	@ pH264Ctx_6(D)->DPB.ltref_frames_in_buffer, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer
	ldr	r0, [r2, #2056]	@ pH264Ctx_6(D)->DPB.ref_frames_in_buffer, pH264Ctx_6(D)->DPB.ref_frames_in_buffer
	rsb	r2, ip, r1	@ D.46619, pH264Ctx_6(D)->DPB.ltref_frames_in_buffer, pH264Ctx_6(D)->CurrSPS.num_ref_frames
	cmp	r0, r2	@ pH264Ctx_6(D)->DPB.ref_frames_in_buffer, D.46619
	beq	.L2743	@,
.L2727:
	mov	r2, #0	@ tmp208,
	strb	r2, [r4, #556]	@ tmp208, pH264Ctx_6(D)->CurrPic.is_long_term
.L2724:
	cmp	r3, #0	@ D.46623,
	beq	.L2722	@,
.L2726:
	ldrb	r3, [r4, #556]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.is_long_term, pH264Ctx_6(D)->CurrPic.is_long_term
	mov	r0, #0	@ D.46615,
	clz	r3, r3	@ tmp189, pH264Ctx_6(D)->CurrPic.is_long_term
	mov	r3, r3, lsr #5	@ tmp189, tmp189,
	strb	r3, [r4, #557]	@ tmp189, pH264Ctx_6(D)->CurrPic.is_short_term
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2740:
	ldr	r2, [r3, #536]	@ _14->stPvrInfo.u32IDRFlag, _14->stPvrInfo.u32IDRFlag
	cmp	r2, #0	@ _14->stPvrInfo.u32IDRFlag,
	bne	.L2715	@,
	ldr	r2, [r3, #544]	@ _14->stPvrInfo.u32ContinuousFlag, _14->stPvrInfo.u32ContinuousFlag
	cmp	r2, #0	@ _14->stPvrInfo.u32ContinuousFlag,
	bne	.L2715	@,
	ldr	r3, [r3, #520]	@ _14->s32FastForwardBackwardSpeed, _14->s32FastForwardBackwardSpeed
	add	r3, r3, #1020	@ D.46621, _14->s32FastForwardBackwardSpeed,
	add	r3, r3, #3	@ D.46621, D.46621,
	cmp	r3, #2048	@ D.46621,
	bcc	.L2715	@,
.L2714:
	mov	r0, r5	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	bne	.L2716	@,
.L2723:
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_6(D)->CurrPic.nal_unit_type, pH264Ctx_6(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_6(D)->CurrPic.nal_unit_type,
	ldreq	r3, [r4, #976]	@ D.46623, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	beq	.L2724	@,
	ldr	r3, [r4, #976]	@ D.46623, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ D.46623,
	beq	.L2722	@,
	ldr	r2, [r4, #964]	@ pH264Ctx_6(D)->CurrPic.pMarkPara, pH264Ctx_6(D)->CurrPic.pMarkPara
	ldrb	r2, [r2, #3]	@ zero_extendqisi2	@ _30->adaptive_ref_pic_marking_mode_flag, _30->adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ _30->adaptive_ref_pic_marking_mode_flag,
	beq	.L2721	@,
	b	.L2726	@
.L2742:
	mov	r0, r5	@, pH264Ctx
	bl	AdaptiveMemMark	@
	cmp	r0, #0	@,
	beq	.L2723	@,
.L2716:
	mvn	r0, #0	@ D.46615,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2743:
	mov	r0, r5	@, pH264Ctx
	bl	SlidingWinMark.part.2	@
	ldr	r3, [r4, #976]	@ D.46623, pH264Ctx_6(D)->CurrPic.nal_ref_idc
	b	.L2727	@
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
	add	r4, r0, #49152	@ tmp932, pH264Ctx,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldrb	r6, [r4, #555]	@ zero_extendqisi2	@ D.46629, pH264Ctx_28(D)->CurrPic.structure
	cmp	r6, #1	@ D.46629,
	beq	.L2746	@,
	bcc	.L2747	@,
	cmp	r6, #2	@ D.46629,
	beq	.L2748	@,
	mov	r6, #0	@ ret,
.L2745:
	mov	r0, r6	@, ret
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2748:
	ldr	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #3	@ tmp692,
	strb	r2, [r3, #400]	@ tmp692, _243->frame.structure
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ D.46629, pH264Ctx_28(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ D.46629,
	bne	.L2766	@,
	ldr	r1, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r1, #0	@ D.46628,
	beq	.L2767	@,
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	str	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #476]	@ D.46628,
	mov	r6, r0	@ ret,
.L2768:
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	mov	r8, #2	@ tmp713,
	ldrb	r0, [r4, #554]	@ zero_extendqisi2	@ D.46631, pH264Ctx_28(D)->CurrPic.non_existing
	mov	r7, #0	@ tmp717,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp932,
	strb	r0, [r3]	@ D.46631, _347->non_existing
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r8, [r3, #1]	@ tmp713, _350->is_used
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp717, _352->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp717, _354->is_displayed
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp717, _356->is_reference
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r0, [r4, #996]	@ D.46632, pH264Ctx_28(D)->CurrPic.pic_type
	str	r0, [r3, #540]	@ D.46632, _358->pic_type
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #536]	@ tmp717, _361->MbaffFrameFlag
	ldr	r0, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.46628,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.46632, pH264Ctx_28(D)->CurrPic.err_level
	str	r2, [r3, #492]	@ D.46632, _365->bottom_field.err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #492]	@ D.46632, _368->bottom_field.err_level
	str	r2, [r3, #420]	@ D.46632, _368->frame.err_level
	str	r2, [r3, #544]	@ D.46632, _368->err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r8, [r3, #472]	@ tmp713, _372->bottom_field.structure
	ldrb	r2, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r2, #1	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag,
	moveq	r2, r8	@ D.46629,
	movne	r2, r7	@ D.46629,
	strb	r2, [r3, #3]	@ D.46629, _374->mode_skip_flag
	ldr	r8, [r4, #3620]	@ pH264Ctx_28(D)->IModeOutFlag, pH264Ctx_28(D)->IModeOutFlag
	cmp	r8, #1	@ pH264Ctx_28(D)->IModeOutFlag,
	bne	.L2745	@,
.L2823:
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	mov	r2, r7	@, tmp717
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_SetRef	@
	mov	r2, r7	@, tmp717
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #1544]	@, pH264Ctx_28(D)->pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_28(D)->pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2778	@,
	ldr	r3, [r4, #960]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, r8	@, pH264Ctx_28(D)->IModeOutFlag
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_ClearLogicFs	@
	b	.L2778	@
.L2747:
	ldr	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #0	@ tmp351,
	strb	r2, [r3, #400]	@ tmp351, _30->frame.structure
	ldr	r1, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r1, r2	@ D.46628,
	beq	.L2749	@,
	bl	OutputFrmToVO	@
	cmp	r0, #0	@,
	bne	.L2828	@,
.L2750:
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, #0	@ pH264Ctx_28(D)->pDirectOutBuf,
	beq	.L2749	@,
	ldr	r3, [r4, #960]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@, _38->logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2749:
	ldr	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r0, #3	@ tmp384,
	mov	r7, #0	@ tmp388,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp932,
	str	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #404]	@ D.46628, _42->frame.frame_store
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	ip, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	str	ip, [r3, #440]	@ D.46628, _45->top_field.frame_store
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	ip, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	str	ip, [r3, #476]	@ D.46628, _48->bottom_field.frame_store
	ldrb	ip, [r4, #554]	@ zero_extendqisi2	@ D.46631, pH264Ctx_28(D)->CurrPic.non_existing
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	ip, [r3]	@ D.46631, _51->non_existing
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r0, [r3, #1]	@ tmp384, _54->is_used
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp388, _56->is_reference
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp388, _58->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp388, _60->is_displayed
	ldr	r0, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.46628,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r1, [r4, #1004]	@ D.46632, pH264Ctx_28(D)->CurrPic.err_level
	mov	r2, r7	@, tmp388
	str	r1, [r3, #420]	@ D.46632, _64->frame.err_level
	str	r1, [r3, #544]	@ D.46632, _64->err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #400]	@ tmp388, _68->frame.structure
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ D.46632, pH264Ctx_28(D)->CurrPic.pic_type
	str	r1, [r3, #540]	@ D.46632, _70->pic_type
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r1, [r4, #561]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.MbaffFrameFlag, pH264Ctx_28(D)->CurrPic.MbaffFrameFlag
	str	r1, [r3, #536]	@ pH264Ctx_28(D)->CurrPic.MbaffFrameFlag, _73->MbaffFrameFlag
	ldrb	r1, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r1, #1	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag,
	moveq	r6, #3	@ D.46629,
	strb	r6, [r3, #3]	@ D.46629, _77->mode_skip_flag
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@, _81->logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r7	@, tmp388
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r4, #1544]	@, pH264Ctx_28(D)->pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #1544]	@ pH264Ctx_28(D)->pDirectOutBuf, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_28(D)->pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2778	@,
.L2821:
	ldr	r3, [r4, #960]	@ pH264Ctx_28(D)->CurrPic.frame_store, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r1, [r3, #508]	@,
	bl	FSP_ClearLogicFs	@
.L2778:
	mov	r3, #0	@ tmp926,
	mov	r0, r6	@, ret
	str	r3, [r4, #1544]	@ tmp926, pH264Ctx_28(D)->pDirectOutBuf
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2746:
	ldr	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r2, #3	@ tmp453,
	strb	r2, [r3, #400]	@ tmp453, _93->frame.structure
	ldrb	r2, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.field_pair_flag, pH264Ctx_28(D)->CurrPic.field_pair_flag
	cmp	r2, #0	@ pH264Ctx_28(D)->CurrPic.field_pair_flag,
	bne	.L2754	@,
	ldr	r1, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r1, #0	@ D.46628,
	beq	.L2755	@,
	bl	OutputFrmToVO	@
	ldr	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	str	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #440]	@ D.46628,
	mov	r6, r0	@ ret,
.L2756:
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	mov	r8, #1	@ tmp475,
	ldrb	r0, [r4, #554]	@ zero_extendqisi2	@ D.46631, pH264Ctx_28(D)->CurrPic.non_existing
	mov	r7, #0	@ tmp479,
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp932,
	strb	r0, [r3]	@ D.46631, _197->non_existing
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r8, [r3, #1]	@ tmp475, _200->is_used
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp479, _202->is_in_dpb
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #532]	@ tmp479, _204->is_displayed
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r7, [r3, #2]	@ tmp479, _206->is_reference
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r0, [r4, #996]	@ D.46632, pH264Ctx_28(D)->CurrPic.pic_type
	str	r0, [r3, #540]	@ D.46632, _208->pic_type
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r7, [r3, #536]	@ tmp479, _211->MbaffFrameFlag
	ldr	r0, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, r0, #8	@, D.46628,
	bl	memcpy	@
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.46632, pH264Ctx_28(D)->CurrPic.err_level
	str	r2, [r3, #456]	@ D.46632, _215->top_field.err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #456]	@ D.46632, _218->top_field.err_level
	str	r2, [r3, #420]	@ D.46632, _218->frame.err_level
	str	r2, [r3, #544]	@ D.46632, _218->err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r8, [r3, #436]	@ tmp475, _222->top_field.structure
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	rsb	r3, r8, r3	@ tmp518,, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	clz	r3, r3	@ tmp518, tmp518
	mov	r3, r3, lsr #5	@ tmp518, tmp518,
	strb	r3, [r2, #3]	@ tmp518, _224->mode_skip_flag
	ldr	r8, [r4, #3620]	@ pH264Ctx_28(D)->IModeOutFlag, pH264Ctx_28(D)->IModeOutFlag
	cmp	r8, #1	@ pH264Ctx_28(D)->IModeOutFlag,
	beq	.L2823	@,
	mov	r0, r6	@, ret
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L2766:
	ldr	lr, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp932,
	cmp	lr, #0	@ D.46628,
	ldreq	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	streq	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	streq	r3, [r3, #476]	@ D.46628, _247->bottom_field.frame_store
	ldreq	lr, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, lr, #8	@, D.46628,
	ldrd	r6, [lr, #32]	@ OtherFieldDisptime, D.46628,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _406->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _406->fs_image.PTS
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.46628,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _406->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _406->fs_image.DispFrameDistance
	strd	r6, [sp]	@ OtherFieldDisptime, %sfp
	str	ip, [sp, #12]	@ OtherFieldPts, %sfp
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _406->fs_image.DistanceBeforeFirstFrame
	ldr	r6, [lr, #88]	@ OtherFieldGopNum, _406->fs_image.GopNum
	str	r3, [sp, #8]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	add	r0, r5, #49664	@ tmp799, pH264Ctx,
	movw	r2, #49728	@ tmp798,
	ldr	lr, [r5, r2]	@ pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	ldr	r1, [r0, #68]	@ pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	movw	r0, #49744	@ tmp824,
	and	r1, r1, lr	@ tmp801, pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	ldr	r3, [sp, #8]	@ OtherFieldPts, %sfp
	ldr	ip, [sp, #12]	@ OtherFieldPts, %sfp
	and	r2, ip, r3	@ tmp807, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp812, tmp807,
	movne	r2, #1	@ tmp812,
	cmn	r1, #1	@ tmp801,
	movne	r2, #0	@ tmp812,
	cmp	r2, #0	@ tmp812,
	ldrne	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strne	r3, [r2, #20]	@ OtherFieldPts, _260->fs_image.PTS
	add	r3, r5, #49664	@ tmp819, pH264Ctx,
	add	r3, r3, #80	@ tmp819, tmp819,
	strne	ip, [r2, #16]	@ OtherFieldPts, _260->fs_image.PTS
	ldr	r1, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	mov	ip, #2	@ tmp871,
	ldrd	r2, [r3, #-8]	@ D.46633, tmp819,
	cmp	r3, r9	@ D.46633, OtherFieldUsertag
	cmpeq	r2, r8	@ D.46633, OtherFieldUsertag
	movhi	r2, r8	@ D.46633, OtherFieldUsertag
	movhi	r3, r9	@ D.46633, OtherFieldUsertag
	ldrd	r8, [sp]	@ OtherFieldDisptime, %sfp
	strd	r2, [r1, #24]	@ D.46633, D.46628,
	ldrd	r2, [r5, r0]	@ D.46633, pH264Ctx, tmp824
	mov	r0, #3	@ tmp875,
	ldr	r1, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r9	@ D.46633, OtherFieldDisptime
	cmpeq	r2, r8	@ D.46633, OtherFieldDisptime
	movhi	r2, r8	@ D.46633, OtherFieldDisptime
	movhi	r3, r9	@ D.46633, OtherFieldDisptime
	strd	r2, [r1, #32]	@ D.46633, D.46628,
	ldr	r3, [r4, #636]	@ pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag, pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, fp	@ pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.46632, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.46632, _270->fs_image.DispEnableFlag
	ldr	r3, [r4, #640]	@ pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance, pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r10	@ pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.46632, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.46632, _274->fs_image.DispFrameDistance
	ldr	r3, [r4, #644]	@ pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r7	@ D.46632, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.46632, _278->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #648]	@ pH264Ctx_28(D)->CurrPic.fs_image.GopNum, pH264Ctx_28(D)->CurrPic.fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r6	@ pH264Ctx_28(D)->CurrPic.fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r6	@ D.46632, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.46632, _282->fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.46629, _286->non_existing
	cmp	r3, #0	@ D.46629,
	ldrneb	r3, [r4, #554]	@ zero_extendqisi2	@ D.46629, pH264Ctx_28(D)->CurrPic.non_existing
	strb	r3, [r2]	@ D.46629, _286->non_existing
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _290->is_used, _290->is_used
	orr	r3, r3, ip	@ tmp860, _290->is_used,
	strb	r3, [r2, #1]	@ tmp860, _290->is_used
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ pH264Ctx_28(D)->CurrPic.pic_type, pH264Ctx_28(D)->CurrPic.pic_type
	ldr	r3, [r2, #540]	@ _295->pic_type, _295->pic_type
	cmp	r3, r1	@ _295->pic_type, pH264Ctx_28(D)->CurrPic.pic_type
	movcc	r3, r1	@ D.46632, pH264Ctx_28(D)->CurrPic.pic_type
	str	r3, [r2, #540]	@ D.46632, _295->pic_type
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	ip, [r3, #472]	@ tmp871, _299->bottom_field.structure
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r0, [r3, #400]	@ tmp875, _301->frame.structure
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.46632, pH264Ctx_28(D)->CurrPic.err_level
	str	r2, [r3, #492]	@ D.46632, _303->bottom_field.err_level
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r3, [r2, #492]	@ _306->bottom_field.err_level, _306->bottom_field.err_level
	ldr	r1, [r2, #456]	@ _306->top_field.err_level, _306->top_field.err_level
	add	r3, r3, r1	@ D.46632, _306->bottom_field.err_level, _306->top_field.err_level
	mov	r3, r3, lsr #1	@ D.46632, D.46632,
	str	r3, [r2, #420]	@ D.46632, _306->frame.err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #420]	@ _312->frame.err_level, _312->frame.err_level
	str	r2, [r3, #544]	@ _312->frame.err_level, _312->err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #476]	@ _315->bottom_field.frame_store, _315->bottom_field.frame_store
	str	r2, [r3, #404]	@ _315->bottom_field.frame_store, _315->frame.frame_store
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	cmp	r3, #1	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag,
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _319->mode_skip_flag,
	beq	.L2825	@,
.L2777:
	strb	r2, [r3, #3]	@ D.46629,
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
	bne	.L2821	@,
	b	.L2778	@
.L2754:
	ldr	lr, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	mov	r2, #392	@,
	add	r1, r4, #568	@, tmp932,
	cmp	lr, #0	@ D.46628,
	ldreq	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	streq	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	streq	r3, [r3, #440]	@ D.46628, _97->top_field.frame_store
	ldreq	lr, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	add	r0, lr, #8	@, D.46628,
	ldrd	r6, [lr, #32]	@ OtherFieldDisptime, D.46628,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _408->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _408->fs_image.PTS
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.46628,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _408->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _408->fs_image.DispFrameDistance
	strd	r6, [sp]	@ OtherFieldDisptime, %sfp
	str	ip, [sp, #12]	@ OtherFieldPts, %sfp
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _408->fs_image.DistanceBeforeFirstFrame
	ldr	r6, [lr, #88]	@ OtherFieldGopNum, _408->fs_image.GopNum
	str	r3, [sp, #8]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	add	r0, r5, #49664	@ tmp562, pH264Ctx,
	movw	r2, #49728	@ tmp561,
	ldr	lr, [r5, r2]	@ pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	ldr	r1, [r0, #68]	@ pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	movw	r0, #49744	@ tmp587,
	and	r1, r1, lr	@ tmp564, pH264Ctx_28(D)->CurrPic.fs_image.PTS, pH264Ctx_28(D)->CurrPic.fs_image.PTS
	ldr	r3, [sp, #8]	@ OtherFieldPts, %sfp
	ldr	ip, [sp, #12]	@ OtherFieldPts, %sfp
	and	r2, ip, r3	@ tmp570, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp575, tmp570,
	movne	r2, #1	@ tmp575,
	cmn	r1, #1	@ tmp564,
	movne	r2, #0	@ tmp575,
	cmp	r2, #0	@ tmp575,
	ldrne	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strne	r3, [r2, #20]	@ OtherFieldPts, _110->fs_image.PTS
	add	r3, r5, #49664	@ tmp582, pH264Ctx,
	add	r3, r3, #80	@ tmp582, tmp582,
	strne	ip, [r2, #16]	@ OtherFieldPts, _110->fs_image.PTS
	ldr	r1, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	mov	ip, #1	@ tmp634,
	ldrd	r2, [r3, #-8]	@ D.46633, tmp582,
	cmp	r3, r9	@ D.46633, OtherFieldUsertag
	cmpeq	r2, r8	@ D.46633, OtherFieldUsertag
	movhi	r2, r8	@ D.46633, OtherFieldUsertag
	movhi	r3, r9	@ D.46633, OtherFieldUsertag
	ldrd	r8, [sp]	@ OtherFieldDisptime, %sfp
	strd	r2, [r1, #24]	@ D.46633, D.46628,
	ldrd	r2, [r5, r0]	@ D.46633, pH264Ctx, tmp587
	mov	r0, #3	@ tmp638,
	ldr	r1, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r9	@ D.46633, OtherFieldDisptime
	cmpeq	r2, r8	@ D.46633, OtherFieldDisptime
	movhi	r2, r8	@ D.46633, OtherFieldDisptime
	movhi	r3, r9	@ D.46633, OtherFieldDisptime
	strd	r2, [r1, #32]	@ D.46633, D.46628,
	ldr	r3, [r4, #636]	@ pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag, pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, fp	@ pH264Ctx_28(D)->CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.46632, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.46632, _120->fs_image.DispEnableFlag
	ldr	r3, [r4, #640]	@ pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance, pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r10	@ pH264Ctx_28(D)->CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.46632, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.46632, _124->fs_image.DispFrameDistance
	ldr	r3, [r4, #644]	@ pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r7	@ pH264Ctx_28(D)->CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r7	@ D.46632, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.46632, _128->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #648]	@ pH264Ctx_28(D)->CurrPic.fs_image.GopNum, pH264Ctx_28(D)->CurrPic.fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	cmp	r3, r6	@ pH264Ctx_28(D)->CurrPic.fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r6	@ D.46632, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.46632, _132->fs_image.GopNum
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.46629, _136->non_existing
	cmp	r3, #0	@ D.46629,
	ldrneb	r3, [r4, #554]	@ zero_extendqisi2	@ D.46629, pH264Ctx_28(D)->CurrPic.non_existing
	strb	r3, [r2]	@ D.46629, _136->non_existing
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _140->is_used, _140->is_used
	orr	r3, r3, ip	@ tmp623, _140->is_used,
	strb	r3, [r2, #1]	@ tmp623, _140->is_used
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r1, [r4, #996]	@ pH264Ctx_28(D)->CurrPic.pic_type, pH264Ctx_28(D)->CurrPic.pic_type
	ldr	r3, [r2, #540]	@ _145->pic_type, _145->pic_type
	cmp	r3, r1	@ _145->pic_type, pH264Ctx_28(D)->CurrPic.pic_type
	movcc	r3, r1	@ D.46632, pH264Ctx_28(D)->CurrPic.pic_type
	str	r3, [r2, #540]	@ D.46632, _145->pic_type
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	ip, [r3, #436]	@ tmp634, _149->top_field.structure
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	strb	r0, [r3, #400]	@ tmp638, _151->frame.structure
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r4, #1004]	@ D.46632, pH264Ctx_28(D)->CurrPic.err_level
	str	r2, [r3, #456]	@ D.46632, _153->top_field.err_level
	ldr	r2, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r3, [r2, #492]	@ _156->bottom_field.err_level, _156->bottom_field.err_level
	ldr	r1, [r2, #456]	@ _156->top_field.err_level, _156->top_field.err_level
	add	r3, r3, r1	@ D.46632, _156->bottom_field.err_level, _156->top_field.err_level
	mov	r3, r3, lsr ip	@ D.46632, D.46632,
	str	r3, [r2, #420]	@ D.46632, _156->frame.err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #420]	@ _162->frame.err_level, _162->frame.err_level
	str	r2, [r3, #544]	@ _162->frame.err_level, _162->err_level
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldr	r2, [r3, #440]	@ _165->top_field.frame_store, _165->top_field.frame_store
	str	r2, [r3, #404]	@ _165->top_field.frame_store, _165->frame.frame_store
	ldrb	r3, [r4, #559]	@ zero_extendqisi2	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag, pH264Ctx_28(D)->CurrPic.mode_skip_flag
	cmp	r3, ip	@ pH264Ctx_28(D)->CurrPic.mode_skip_flag,
	ldr	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _169->mode_skip_flag,
	bne	.L2777	@,
.L2825:
	orr	r2, r2, ip	@ D.46629, _319->mode_skip_flag,
	b	.L2777	@
.L2828:
	bl	vfmw_dprint_nothing	@
	b	.L2750	@
.L2767:
	ldr	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r6, r1	@ ret, D.46628
	str	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #476]	@ D.46628,
	b	.L2768	@
.L2755:
	ldr	r3, [r4, #960]	@ D.46628, pH264Ctx_28(D)->CurrPic.frame_store
	mov	r6, r1	@ ret, D.46628
	str	r3, [r4, #1544]	@ D.46628, pH264Ctx_28(D)->pDirectOutBuf
	str	r3, [r3, #440]	@ D.46628,
	b	.L2756	@
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
	addne	r7, r0, #26368	@ ivtmp.2846, pH264Ctx,
	movne	r6, #0	@ i,
	addne	r7, r7, #60	@ ivtmp.2846, ivtmp.2846,
	bne	.L2834	@,
	b	.L2835	@
.L2833:
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, r6	@ pH264Ctx_9(D)->DPB.used_size, i
	bls	.L2835	@,
.L2834:
	ldr	r1, [r7, #4]!	@ D.46666, MEM[base: _41, offset: 0B]
	add	r6, r6, #1	@ i, i,
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _11->is_reference, _11->is_reference
	cmp	r3, #0	@ _11->is_reference,
	beq	.L2833	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, r6	@ pH264Ctx_9(D)->DPB.used_size, i
	bhi	.L2834	@,
.L2835:
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	subs	r7, r0, #0	@ ret,
	bne	.L2849	@,
.L2832:
	mov	r6, #0	@ tmp167,
.L2836:
	ldr	r3, [r5, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	mov	r2, sp	@,
	add	r1, sp, #4	@ tmp168,,
	mov	r0, r4	@, pH264Ctx
	cmp	r3, #0	@ pH264Ctx_9(D)->DPB.used_size,
	beq	.L2850	@,
	bl	GetMinPOC	@
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [sp]	@ pos, pos
	add	r3, r4, r3, lsl #2	@ D.46672, pH264Ctx, pos,
	add	r3, r3, #24576	@ tmp146, D.46672,
	ldr	r2, [r3, #1856]	@ D.46666, MEM[(struct H264_CTX_S *)_48 + 26432B]
	strb	r6, [r2, #4]	@ tmp167, _22->is_in_dpb
	ldr	r1, [r3, #1856]	@, MEM[(struct H264_CTX_S *)_48 + 26432B]
	ldr	r2, [r5, #2052]	@, pH264Ctx_9(D)->DPB.used_size
	bl	OutputFrmToVO	@
	ldr	r1, [sp]	@ D.46665, pos
	mov	r7, r0	@ ret,
	add	r3, r1, #6592	@ tmp156, D.46665,
	add	r3, r3, #16	@ tmp156, tmp156,
	ldr	r3, [r4, r3, asl #2]	@ tmp157, pH264Ctx_9(D)->DPB.fs
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ MEM[(const struct H264_FRAMESTORE_S *)_30].is_reference, MEM[(const struct H264_FRAMESTORE_S *)_30].is_reference
	cmp	r3, #0	@ MEM[(const struct H264_FRAMESTORE_S *)_30].is_reference,
	bne	.L2836	@,
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L2836	@
.L2850:
	cmp	r7, #0	@ ret,
	beq	.L2839	@,
	add	r0, r4, #8	@, pH264Ctx,
	bl	GetVoLastImageID	@
	mov	r7, r0	@ ret,
.L2839:
	mov	r0, r7	@, ret
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L2849:
	bl	vfmw_dprint_nothing	@
	b	.L2832	@
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
	beq	.L2868	@,
	bl	ClearAllSlice	@
	add	r6, r8, #26368	@ ivtmp.2903, pH264Ctx,
	mov	r7, #0	@ i,
	add	r10, r8, #49152	@ tmp236, pH264Ctx,
	mov	r5, r6	@ ivtmp.2912, ivtmp.2903
	mov	r4, r6	@ ivtmp.2919, ivtmp.2912
	add	r5, r5, #192	@ ivtmp.2912, ivtmp.2912,
	add	r6, r6, #64	@ ivtmp.2903, ivtmp.2903,
	add	r4, r4, #128	@ ivtmp.2919, ivtmp.2919,
	mov	r9, r7	@ tmp241, i
.L2856:
	ldr	r3, [r6]	@ D.46772, MEM[base: _98, offset: 0B]
	mov	r2, #1	@,
	add	r7, r7, r2	@ i, i,
	cmp	r3, #0	@ D.46772,
	beq	.L2853	@,
	ldr	r1, [r3, #508]	@, _9->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2853:
	ldr	r3, [r4]	@ D.46772, MEM[base: _103, offset: 0B]
	mov	r2, #1	@,
	cmp	r3, #0	@ D.46772,
	beq	.L2854	@,
	ldr	r1, [r3, #508]	@, _12->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2854:
	ldr	r3, [r5]	@ D.46772, MEM[base: _102, offset: 0B]
	mov	r2, #1	@,
	cmp	r3, #0	@ D.46772,
	beq	.L2855	@,
	ldr	r1, [r3, #508]	@, _15->logic_fs_id
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2855:
	cmp	r7, #16	@ i,
	str	r9, [r5], #4	@ tmp241, MEM[base: _102, offset: 0B]
	mov	r2, #0	@ tmp171,
	str	r9, [r4], #4	@ tmp241, MEM[base: _103, offset: 0B]
	str	r9, [r6], #4	@ tmp241, MEM[base: _98, offset: 0B]
	bne	.L2856	@,
	add	r3, r8, #16384	@ tmp177, pH264Ctx,
	add	r4, r8, #24576	@ tmp235, pH264Ctx,
	ldr	r3, [r3, #1184]	@ pH264Ctx_5(D)->CurrSPS.dpb_size_plus1, pH264Ctx_5(D)->CurrSPS.dpb_size_plus1
	str	r2, [r4, #2052]	@ tmp171, pH264Ctx_5(D)->DPB.used_size
	sub	r3, r3, #1	@ D.46774, pH264Ctx_5(D)->CurrSPS.dpb_size_plus1,
	str	r2, [r4, #2056]	@ tmp171, pH264Ctx_5(D)->DPB.ref_frames_in_buffer
	str	r3, [r4, #2048]	@ D.46774, pH264Ctx_5(D)->DPB.size
	str	r2, [r4, #2060]	@ tmp171, pH264Ctx_5(D)->DPB.ltref_frames_in_buffer
	str	r2, [r4, #2064]	@ tmp171, pH264Ctx_5(D)->DPB.max_long_term_pic_idx
	ldr	r1, [r10, #1544]	@ D.46772, pH264Ctx_5(D)->pDirectOutBuf
	cmp	r1, r2	@ D.46772,
	beq	.L2858	@,
	ldr	r3, [r10, #3616]	@ pH264Ctx_5(D)->OldDecMode, pH264Ctx_5(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_5(D)->OldDecMode,
	beq	.L2859	@,
.L2863:
	ldr	r3, [r10, #960]	@ D.46772, pH264Ctx_5(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.46772,
	beq	.L2861	@,
	ldr	r1, [r3, #508]	@, _25->logic_fs_id
	mov	r2, #1	@,
	ldr	r0, [r10, #3688]	@, pH264Ctx_5(D)->ChanID
	bl	FSP_ClearLogicFs	@
.L2861:
	mov	r3, #0	@ tmp208,
	str	r3, [r10, #1544]	@ tmp208, pH264Ctx_5(D)->pDirectOutBuf
.L2858:
	add	r0, r8, #26624	@, pH264Ctx,
	mov	r1, #392	@,
	add	r0, r0, #20	@,,
	bl	__memzero	@
	ldr	r1, [r4, #2048]	@ pH264Ctx_5(D)->DPB.size, pH264Ctx_5(D)->DPB.size
	add	r3, r8, #51200	@ ivtmp.2890, pH264Ctx,
	mov	r0, #0	@ tmp218,
	str	r0, [r4, #2328]	@ tmp218, pH264Ctx_5(D)->APC.used_size
	mov	r2, r3	@ D.46778, ivtmp.2890
	add	r3, r3, #44	@ ivtmp.2890, ivtmp.2890,
	add	r2, r2, #112	@ D.46778, D.46778,
	str	r1, [r4, #2324]	@ pH264Ctx_5(D)->DPB.size, pH264Ctx_5(D)->APC.size
	mov	r1, r0	@ tmp239, tmp218
.L2865:
	str	r1, [r3, #4]!	@ tmp239, MEM[base: _47, offset: 0B]
	cmp	r3, r2	@ ivtmp.2890, D.46778
	bne	.L2865	@,
	add	r2, r8, #26880	@ ivtmp.2876, pH264Ctx,
	add	r3, r8, #27136	@ ivtmp.2862, pH264Ctx,
	add	r2, r2, #152	@ ivtmp.2876, ivtmp.2876,
	add	r3, r3, #28	@ ivtmp.2862, ivtmp.2862,
	mov	r0, #0	@ tmp238,
.L2866:
	str	r0, [r2, #4]!	@ tmp238, MEM[base: _41, offset: 0B]
	cmp	r2, r3	@ ivtmp.2876, ivtmp.2862
	mov	r1, #0	@ tmp224,
	bne	.L2866	@,
	add	r2, r8, #27136	@ D.46778, pH264Ctx,
	add	r8, r8, #20480	@ tmp234, pH264Ctx,
	add	r2, r2, #160	@ D.46778, D.46778,
	mov	ip, r1	@ tmp237, tmp224
	str	r1, [r8, #244]	@ tmp224, pH264Ctx_5(D)->CurrSlice.listXsize
.L2867:
	str	ip, [r3, #4]!	@ tmp237, MEM[base: _30, offset: 0B]
	cmp	r3, r2	@ ivtmp.2862, D.46778
	mov	r0, #0	@ tmp229,
	bne	.L2867	@,
	str	r0, [r8, #248]	@ tmp229, pH264Ctx_5(D)->CurrSlice.listXsize
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L2859:
	mov	r0, r8	@, pH264Ctx
	bl	OutputFrmToVO	@
	cmp	r0, #0	@,
	bne	.L2886	@,
.L2862:
	ldr	r3, [r10, #1544]	@ pH264Ctx_5(D)->pDirectOutBuf, pH264Ctx_5(D)->pDirectOutBuf
	cmp	r3, #0	@ pH264Ctx_5(D)->pDirectOutBuf,
	bne	.L2863	@,
	b	.L2858	@
.L2886:
	bl	vfmw_dprint_nothing	@
	b	.L2862	@
.L2868:
	mvn	r0, #0	@ D.46770,
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
	cmp	r0, #0	@,
	beq	.L2888	@,
	bl	vfmw_dprint_nothing	@
.L2888:
	mov	r0, r4	@, pH264Ctx
	add	r4, r4, #49152	@ tmp114, pH264Ctx,
	bl	InitDPB	@
	mov	r3, #0	@ tmp115,
	mov	r0, r3	@, tmp115
	str	r3, [r4, #2180]	@ tmp115, pH264Ctx_3(D)->IDRFound
	str	r3, [r4, #3696]	@ tmp115, pH264Ctx_3(D)->FirstFrameDisplayed
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
	add	r4, r0, #49152	@ tmp414, pH264Ctx,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.structure, pH264Ctx_9(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.structure,
	beq	.L2894	@,
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.field_pair_flag, pH264Ctx_9(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_9(D)->CurrPic.field_pair_flag,
	beq	.L2894	@,
.L2895:
	ldr	r5, [r4, #3676]	@ IPBDecMode, pH264Ctx_9(D)->advanced_cfg
	ldr	r3, [r4, #3616]	@ D.46789, pH264Ctx_9(D)->OldDecMode
	cmp	r5, #2	@ IPBDecMode,
	cmpne	r5, r3	@, IPBDecMode, D.46789
	beq	.L2896	@,
	sub	r3, r3, #2	@ D.46789, D.46789,
	cmp	r3, #1	@ D.46789,
	bls	.L2982	@,
.L2896:
	sub	r3, r5, #1	@ tmp246, IPBDecMode,
	str	r5, [r4, #3616]	@ IPBDecMode, pH264Ctx_9(D)->OldDecMode
	cmp	r3, #4	@ tmp246,
	ldrls	pc, [pc, r3, asl #2]	@ tmp246
	b	.L2898	@
.L2900:
	.word	.L2899
	.word	.L2901
	.word	.L2902
	.word	.L2898
	.word	.L2903
.L2894:
	ldr	r3, [r4, #3716]	@ pH264Ctx_9(D)->numTotalFrame, pH264Ctx_9(D)->numTotalFrame
	ldr	r1, [r4, #3720]	@ pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numOutputFrame
	add	r3, r3, #1	@ D.46788, pH264Ctx_9(D)->numTotalFrame,
	ldr	r2, [r6]	@ D.46787, pH264Ctx_9(D)->pstExtraData
	cmp	r3, r1	@ D.46788, pH264Ctx_9(D)->numOutputFrame
	movlt	r3, r1	@ D.46788, pH264Ctx_9(D)->numOutputFrame
	str	r3, [r4, #3716]	@ D.46788, pH264Ctx_9(D)->numTotalFrame
	str	r3, [r2, #440]	@ D.46788, MEM[(struct VDEC_CHAN_STATE_S *)_12 + 396B].total_frame_num
	ldr	r3, [r4, #3716]	@ pH264Ctx_9(D)->numTotalFrame, pH264Ctx_9(D)->numTotalFrame
	ldr	r1, [r4, #3720]	@ pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numOutputFrame
	rsb	r3, r1, r3	@ D.46788, pH264Ctx_9(D)->numOutputFrame, pH264Ctx_9(D)->numTotalFrame
	str	r3, [r2, #444]	@ D.46788, MEM[(struct VDEC_CHAN_STATE_S *)_12 + 396B].error_frame_num
	b	.L2895	@
.L2982:
	cmp	r5, #4	@ IPBDecMode,
	cmpne	r5, #1	@, IPBDecMode,
	bhi	.L2896	@,
	bl	vfmw_dprint_nothing	@
	str	r5, [r4, #3616]	@ IPBDecMode, pH264Ctx_9(D)->OldDecMode
.L2902:
	mov	r0, r6	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r6	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.46785,
.L2975:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2901:
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L2906	@,
	ldr	r3, [r4, #3612]	@ D.46795, pH264Ctx_9(D)->SliceParaNum
	cmp	r3, #0	@ D.46795,
	beq	.L2905	@,
	ldr	r2, [r4, #3608]	@ pH264Ctx_9(D)->DecSlicePara, pH264Ctx_9(D)->DecSlicePara
	ldr	r2, [r2, #48]	@ _41->first_mb_in_slice, _41->first_mb_in_slice
	cmp	r2, #0	@ _41->first_mb_in_slice,
	bne	.L2906	@,
.L2905:
	ldr	r2, [r4, #1000]	@ pH264Ctx_9(D)->CurrPic.is_idr_pic, pH264Ctx_9(D)->CurrPic.is_idr_pic
	cmp	r3, #0	@ D.46795,
	str	r2, [r4, #3692]	@ pH264Ctx_9(D)->CurrPic.is_idr_pic, pH264Ctx_9(D)->PrevPicIsIDR
	beq	.L2978	@,
	cmp	r5, #4	@ IPBDecMode,
	ldr	r3, [r4, #996]	@ D.46789, pH264Ctx_9(D)->CurrPic.pic_type
	beq	.L2983	@,
.L2914:
	cmp	r3, #2	@ D.46789,
	beq	.L2984	@,
	cmp	r3, #1	@ D.46789,
	streq	r3, [r4, #2184]	@ D.46789, pH264Ctx_9(D)->PPicFound
.L2920:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #3652]	@ pH264Ctx_9(D)->TotalPicNum, pH264Ctx_9(D)->TotalPicNum
	ldr	ip, [r4, #1020]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->CurrPic.pic_mbs
	mov	r3, #1	@ tmp344,
	ldr	r1, [r4, #1024]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->CurrPic.stream_base_addr
	cmp	r0, #0	@ pH264Ctx_9(D)->TotalPicNum,
	ldr	r2, [r4, #3612]	@ pH264Ctx_9(D)->SliceParaNum, pH264Ctx_9(D)->SliceParaNum
	str	ip, [r4, #3136]	@ pH264Ctx_9(D)->CurrPic.pic_mbs, pH264Ctx_9(D)->DecPicPara.mbtodec
	str	r1, [r4, #3132]	@ pH264Ctx_9(D)->CurrPic.stream_base_addr, pH264Ctx_9(D)->DecPicPara.stream_base_addr
	str	r2, [r4, #3336]	@ pH264Ctx_9(D)->SliceParaNum, pH264Ctx_9(D)->DecPicPara.SliceParaNum
	strb	r3, [r4, #2218]	@ tmp344, pH264Ctx_9(D)->DecPicPara.NewPicFlag
	beq	.L2975	@,
	ldr	r3, [r4, #996]	@ D.46789, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #0	@ D.46789,
	bne	.L2921	@,
	ldr	r2, .L2988	@ tmp361,
	ldr	ip, [r2]	@ D.46793, g_event_report
	cmp	ip, #0	@ D.46793,
	beq	.L2922	@,
	ldr	r2, [r4, #3340]	@ pH264SliceParam, pH264Ctx_9(D)->DecPicPara.pFirstSlice
	cmp	r2, #0	@ pH264SliceParam,
	beq	.L2923	@,
	mov	r1, r3	@ TotalSize, D.46789
.L2924:
	ldr	r3, [r2, #8]	@ pH264SliceParam_157->valid_bitlen, pH264SliceParam_157->valid_bitlen
	ldr	r0, [r2, #12]	@ pH264SliceParam_157->valid_bitlen, pH264SliceParam_157->valid_bitlen
	ldr	r2, [r2, #4056]	@ pH264SliceParam, pH264SliceParam_157->pNextSlice
	add	r3, r3, r0	@ D.46789, pH264SliceParam_157->valid_bitlen, pH264SliceParam_157->valid_bitlen
	add	r3, r3, #7	@ D.46789, D.46789,
	cmp	r2, #0	@ pH264SliceParam,
	add	r1, r1, r3, lsr #3	@ TotalSize, TotalSize, D.46789,
	bne	.L2924	@,
	mov	r3, r1	@ D.46789, TotalSize
.L2923:
	add	r2, sp, #8	@ tmp369,,
	mov	r1, #20	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	str	r3, [r2, #-4]!	@ D.46789, para
	blx	ip	@ D.46793
	ldr	r2, [r6]	@ D.46787, pH264Ctx_9(D)->pstExtraData
.L2925:
	add	r3, r6, #51200	@ D.46794, pH264Ctx,
	add	r3, r3, #168	@ D.46794, D.46794,
	str	r3, [r6, #360]	@ D.46794, pH264Ctx_9(D)->pH264DecParam
	ldr	r1, [r2, #708]	@ D.46788, _185->stDisParams.s32Mode
	cmp	r1, #1	@ D.46788,
	beq	.L2985	@,
	cmp	r1, #2	@ D.46788,
	beq	.L2986	@,
.L2928:
	ldr	r3, [r2, #512]	@ D.46788, _185->s32Compress_en
	mov	r0, #0	@ D.46785,
	str	r3, [r4, #3600]	@ D.46788, MEM[(struct H264_DEC_PIC_PARAM_S *)pH264Ctx_9(D) + 51368B].Compress_en
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2903:
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.pic_type,
	beq	.L2909	@,
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_9(D)->CurrPic.structure, pH264Ctx_9(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.structure,
	beq	.L2906	@,
	ldr	r3, [r4, #1524]	@ pH264Ctx_9(D)->PrevPic.pic_type, pH264Ctx_9(D)->PrevPic.pic_type
	cmp	r3, #0	@ pH264Ctx_9(D)->PrevPic.pic_type,
	bne	.L2906	@,
.L2909:
	ldr	r1, [r6]	@ D.46787, pH264Ctx_9(D)->pstExtraData
	ldr	r2, [r1, #732]	@ _52->s32firstIdecodedflag, _52->s32firstIdecodedflag
	cmp	r2, #0	@ _52->s32firstIdecodedflag,
	bne	.L2906	@,
	ldr	r3, [r4, #3612]	@ D.46795, pH264Ctx_9(D)->SliceParaNum
	cmp	r3, #0	@ D.46795,
	beq	.L2905	@,
	ldr	r0, [r4, #3608]	@ pH264Ctx_9(D)->DecSlicePara, pH264Ctx_9(D)->DecSlicePara
	ldr	r0, [r0, #48]	@ _55->first_mb_in_slice, _55->first_mb_in_slice
	cmp	r0, #0	@ _55->first_mb_in_slice,
	beq	.L2905	@,
	strb	r2, [r4, #559]	@ _52->s32firstIdecodedflag, pH264Ctx_9(D)->CurrPic.mode_skip_flag
	mov	r0, r6	@, pH264Ctx
	str	r2, [r1, #732]	@ _52->s32firstIdecodedflag, _52->s32firstIdecodedflag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.46785,
	b	.L2975	@
.L2899:
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	beq	.L2987	@,
.L2979:
	ldr	r3, [r4, #3612]	@ D.46795, pH264Ctx_9(D)->SliceParaNum
	b	.L2905	@
.L2898:
	ldr	r3, [r4, #3612]	@ D.46795, pH264Ctx_9(D)->SliceParaNum
	b	.L2905	@
.L2921:
	add	r3, r6, #24576	@ tmp374, pH264Ctx,
	ldr	r3, [r3, #2052]	@ pH264Ctx_9(D)->DPB.used_size, pH264Ctx_9(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_9(D)->DPB.used_size,
	bne	.L2922	@,
	ldr	r2, [r6]	@ D.46787, pH264Ctx_9(D)->pstExtraData
	ldr	r3, [r2, #12]	@ _102->s32DecOrderOutput, _102->s32DecOrderOutput
	cmp	r3, #2	@ _102->s32DecOrderOutput,
	beq	.L2925	@,
.L2978:
	mov	r0, r6	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.46785,
	b	.L2975	@
.L2984:
	ldr	r3, [r4, #2184]	@ pH264Ctx_9(D)->PPicFound, pH264Ctx_9(D)->PPicFound
	cmp	r3, #2	@ pH264Ctx_9(D)->PPicFound,
	bne	.L2920	@,
	ldr	r3, [r6]	@ pH264Ctx_9(D)->pstExtraData, pH264Ctx_9(D)->pstExtraData
	ldr	r5, [r3, #12]	@ _78->s32DecOrderOutput, _78->s32DecOrderOutput
	cmp	r5, #0	@ _78->s32DecOrderOutput,
	bne	.L2920	@,
	ldr	r3, .L2988+4	@ tmp325,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ g_allow_B_before_P, g_allow_B_before_P
	cmp	r3, #1	@ g_allow_B_before_P,
	beq	.L2920	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	mov	r2, r5	@, _78->s32DecOrderOutput
	ldr	r1, [r3, #508]	@, _84->logic_fs_id
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.46785,
	b	.L2975	@
.L2983:
	cmp	r3, #0	@ D.46789,
	bne	.L2914	@,
	ldr	r3, [r4, #2184]	@ pH264Ctx_9(D)->PPicFound, pH264Ctx_9(D)->PPicFound
	cmp	r3, #0	@ pH264Ctx_9(D)->PPicFound,
	moveq	r3, #2	@ tmp316,
	streq	r3, [r4, #2184]	@ tmp316, pH264Ctx_9(D)->PPicFound
	movne	r3, #1	@ tmp321,
	strne	r3, [r4, #2184]	@ tmp321, pH264Ctx_9(D)->PPicFound
	b	.L2920	@
.L2922:
	ldr	r2, [r6]	@ D.46787, pH264Ctx_9(D)->pstExtraData
	b	.L2925	@
.L2985:
	cmp	r3, #0	@ D.46794,
	beq	.L2928	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L2928	@,
	mov	r2, #0	@ tmp381,
	str	r2, [r6, #360]	@ tmp381, pH264Ctx_9(D)->pH264DecParam
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	ldr	r1, [r3, #508]	@, _118->logic_fs_id
	bl	FSP_SetDisplay	@
	b	.L2978	@
.L2986:
	ldr	r1, [r2, #712]	@ _185->stDisParams.s32DisNums, _185->stDisParams.s32DisNums
	cmp	r3, #0	@ D.46794,
	cmpne	r1, #0	@, _185->stDisParams.s32DisNums,
	ble	.L2928	@,
	ldr	r3, [r4, #996]	@ pH264Ctx_9(D)->CurrPic.pic_type, pH264Ctx_9(D)->CurrPic.pic_type
	cmp	r3, #2	@ pH264Ctx_9(D)->CurrPic.pic_type,
	bne	.L2928	@,
	mov	r2, #0	@ tmp398,
	str	r2, [r6, #360]	@ tmp398, pH264Ctx_9(D)->pH264DecParam
	ldr	r3, [r4, #960]	@ pH264Ctx_9(D)->CurrPic.frame_store, pH264Ctx_9(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_9(D)->ChanID
	ldr	r1, [r3, #508]	@, _126->logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r2, [r6]	@ D.46787, pH264Ctx_9(D)->pstExtraData
	mov	r0, r6	@, pH264Ctx
	ldr	r3, [r2, #712]	@ _129->stDisParams.s32DisNums, _129->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.46788, _129->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.46788, _129->stDisParams.s32DisNums
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.46785,
	b	.L2975	@
.L2987:
	ldr	r3, [r4, #976]	@ pH264Ctx_9(D)->CurrPic.nal_ref_idc, pH264Ctx_9(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_9(D)->CurrPic.nal_ref_idc,
	bne	.L2979	@,
.L2906:
	mov	r3, #1	@ tmp252,
	mov	r0, r6	@, pH264Ctx
	strb	r3, [r4, #559]	@ tmp252, pH264Ctx_9(D)->CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.46785,
	b	.L2975	@
.L2989:
	.align	2
.L2988:
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
	mov	r5, r1	@ pPacket, pPacket
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	cmp	r3, #0	@ D.46809,
	beq	.L2994	@,
	ldrb	r2, [r5]	@ zero_extendqisi2	@ pPacket_10(D)->last_pack_in_nal, pPacket_10(D)->last_pack_in_nal
	cmp	r2, #1	@ pPacket_10(D)->last_pack_in_nal,
	beq	.L3041	@,
.L2992:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	cmp	r1, #0	@ D.46809,
	beq	.L2994	@,
	add	r3, r4, #49152	@ tmp183, pH264Ctx,
	ldr	r0, [r3, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp185,
	str	r3, [r4, #368]	@ tmp185, pH264Ctx_8(D)->pCurrNal
.L2994:
	ldr	r3, [r5, #12]	@ pPacket_10(D)->stream_len, pPacket_10(D)->stream_len
	cmp	r3, #0	@ pPacket_10(D)->stream_len,
	ble	.L2995	@,
	ldr	r3, [r5, #4]	@ pPacket_10(D)->p_stream, pPacket_10(D)->p_stream
	cmp	r3, #0	@ pPacket_10(D)->p_stream,
	beq	.L2995	@,
	ldr	r3, [r5, #8]	@ pPacket_10(D)->strm_phy_addr, pPacket_10(D)->strm_phy_addr
	cmp	r3, #0	@ pPacket_10(D)->strm_phy_addr,
	beq	.L2995	@,
	ldrb	r3, [r4, #377]	@ zero_extendqisi2	@ pH264Ctx_8(D)->NalArray[0].is_valid, pH264Ctx_8(D)->NalArray[0].is_valid
	cmp	r3, #0	@ pH264Ctx_8(D)->NalArray[0].is_valid,
	beq	.L3010	@,
	mov	r2, r4	@ ivtmp.2958, pH264Ctx
	mov	r3, #1	@ Pos,
	b	.L2998	@
.L2997:
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L3008	@,
.L2998:
	ldrb	r1, [r2, #473]	@ zero_extendqisi2	@ MEM[base: _36, offset: 473B], MEM[base: _36, offset: 473B]
	add	r2, r2, #96	@ ivtmp.2958, ivtmp.2958,
	cmp	r1, #0	@ MEM[base: _36, offset: 473B],
	bne	.L2997	@,
	mov	r2, r3	@ D.46807, Pos
.L2996:
	mov	r1, r3, asl #7	@ tmp292, Pos,
	cmn	r2, #1	@ D.46807,
	sub	r3, r1, r3, asl #5	@ tmp293, tmp292, Pos,
	mov	r0, #1	@ tmp296,
	add	r3, r4, r3	@ tmp294, pH264Ctx, tmp293
	strb	r0, [r3, #377]	@ tmp296, pH264Ctx_8(D)->NalArray[Pos_125].is_valid
	beq	.L3008	@,
	mov	r3, r2, asl #7	@ tmp196, D.46807,
	mov	r1, #0	@ tmp219,
	sub	r3, r3, r2, asl #5	@ tmp197, tmp196, D.46807,
	add	r2, r3, #376	@ tmp198, tmp197,
	add	r3, r4, r3	@ tmp204, pH264Ctx, tmp197
	add	r2, r4, r2	@ D.46809, pH264Ctx, tmp198
	str	r2, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	r2, [r5, #4]	@ D.46813, pPacket_10(D)->p_stream
	str	r2, [r3, #384]	@ D.46813, MEM[(struct H264_NALU_S *)pH264Ctx_8(D)].NalArray[_106].stream[0].streamBuffer
	ldr	r2, [r5, #12]	@ pPacket_10(D)->stream_len, pPacket_10(D)->stream_len
	str	r2, [r3, #388]	@ pPacket_10(D)->stream_len, MEM[(struct H264_NALU_S *)pH264Ctx_8(D)].NalArray[_106].stream[0].bitstream_length
	ldr	r2, [r5, #8]	@ D.46811, pPacket_10(D)->strm_phy_addr
	str	r2, [r3, #392]	@ D.46811, MEM[(struct H264_NALU_S *)pH264Ctx_8(D)].NalArray[_106].stream[0].stream_phy_addr
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	str	r1, [r3, #24]	@ tmp219, _39->stream[0].bitsoffset
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	r2, [r5, #16]	@ D.46812, pPacket_10(D)->StreamID
	str	r2, [r3, #32]	@ D.46812, _41->stream[0].StreamID
	ldrd	r2, [r5, #24]	@ D.46816, pPacket,
	ldr	ip, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	strd	r2, [ip, #88]	@ D.46816, D.46809,
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	str	r0, [r3, #68]	@ tmp296, _47->nal_segment
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	strb	r1, [r3]	@ tmp219, _49->nal_used_segment
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldrb	r2, [r5]	@ zero_extendqisi2	@ D.46810, pPacket_10(D)->last_pack_in_nal
	strb	r2, [r3, #3]	@ D.46810, _51->nal_integ
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	b	.L3001	@
.L3041:
	ldr	r1, [r3, #68]	@ _9->nal_segment, _9->nal_segment
	cmp	r1, #1	@ _9->nal_segment,
	bhi	.L2992	@,
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ _9->nal_integ, _9->nal_integ
	cmp	r1, #1	@ _9->nal_integ,
	beq	.L2992	@,
	strb	r2, [r3, #3]	@ pPacket_10(D)->last_pack_in_nal, _9->nal_integ
	ldr	r3, [r5, #12]	@ pPacket_10(D)->stream_len, pPacket_10(D)->stream_len
	cmp	r3, #0	@ pPacket_10(D)->stream_len,
	ble	.L3003	@,
	ldr	r2, [r5, #4]	@ D.46813, pPacket_10(D)->p_stream
	cmp	r2, #0	@ D.46813,
	beq	.L3003	@,
	ldr	r3, [r5, #8]	@ pPacket_10(D)->strm_phy_addr, pPacket_10(D)->strm_phy_addr
	cmp	r3, #0	@ pPacket_10(D)->strm_phy_addr,
	beq	.L3003	@,
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	r1, [r3, #68]	@ D.46811, _66->nal_segment
	cmp	r1, #1	@ D.46811,
	bls	.L3042	@,
.L3004:
	add	r6, r4, #49152	@ tmp276, pH264Ctx,
	mov	r2, #1	@ tmp272,
	strb	r2, [r3, #3]	@ tmp272, _143->nal_integ
	ldr	r1, [r5, #16]	@, pPacket_10(D)->StreamID
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L3043	@ tmp278,
	ldr	r3, [r3]	@ D.46814, g_event_report
	cmp	r3, #0	@ D.46814,
	beq	.L3039	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.46814
.L3039:
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
.L3001:
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ _139->nal_integ, _139->nal_integ
	clz	r0, r0	@ D.46808, _139->nal_integ
	mov	r0, r0, lsr #5	@ D.46808, D.46808,
	rsb	r0, r0, #0	@ D.46807, D.46808
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2995:
	add	r4, r4, #49152	@ tmp226, pH264Ctx,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #16]	@, pPacket_10(D)->StreamID
	ldr	r0, [r4, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L3043	@ tmp228,
	ldr	r3, [r3]	@ D.46814, g_event_report
	cmp	r3, #0	@ D.46814,
	beq	.L3040	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_8(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.46814
.L3040:
	mvn	r0, #0	@ D.46807,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3003:
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	b	.L3004	@
.L3042:
	mov	ip, r1, asl #5	@ tmp235, D.46811,
	mov	r0, #0	@ tmp261,
	sub	r1, ip, r1, asl #2	@ tmp236, tmp235, D.46811,
	add	r3, r3, r1	@ tmp237, D.46809, tmp236
	str	r2, [r3, #8]	@ D.46813, _66->stream[_67].streamBuffer
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	ip, [r5, #12]	@ pPacket_10(D)->stream_len, pPacket_10(D)->stream_len
	ldr	r1, [r3, #68]	@ _69->nal_segment, _69->nal_segment
	mov	r2, r1, asl #5	@ tmp242, _69->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp243, tmp242, _69->nal_segment,
	add	r3, r3, r2	@ tmp244, D.46809, tmp243
	str	ip, [r3, #12]	@ pPacket_10(D)->stream_len, _69->stream[_70].bitstream_length
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	ip, [r5, #8]	@ D.46811, pPacket_10(D)->strm_phy_addr
	ldr	r1, [r3, #68]	@ _74->nal_segment, _74->nal_segment
	mov	r2, r1, asl #5	@ tmp250, _74->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp251, tmp250, _74->nal_segment,
	add	r3, r3, r2	@ tmp252, D.46809, tmp251
	str	ip, [r3, #16]	@ D.46811, _74->stream[_75].stream_phy_addr
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	r1, [r3, #68]	@ _78->nal_segment, _78->nal_segment
	mov	r2, r1, asl #5	@ tmp257, _78->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp258, tmp257, _78->nal_segment,
	add	r3, r3, r2	@ tmp259, D.46809, tmp258
	str	r0, [r3, #24]	@ tmp261, _78->stream[_79].bitsoffset
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	r0, [r5, #16]	@ D.46812, pPacket_10(D)->StreamID
	ldr	r1, [r3, #68]	@ _81->nal_segment, _81->nal_segment
	mov	r2, r1, asl #5	@ tmp265, _81->nal_segment,
	sub	r2, r2, r1, asl #2	@ tmp266, tmp265, _81->nal_segment,
	add	r3, r3, r2	@ tmp267, D.46809, tmp266
	str	r0, [r3, #32]	@ D.46812, _81->stream[_82].StreamID
	ldr	r2, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	r3, [r2, #68]	@ _85->nal_segment, _85->nal_segment
	add	r3, r3, #1	@ D.46811, _85->nal_segment,
	str	r3, [r2, #68]	@ D.46811, _85->nal_segment
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	ldr	r2, [r3, #12]	@ _20->stream[0].bitstream_length, _20->stream[0].bitstream_length
	cmp	r2, #4096	@ _20->stream[0].bitstream_length,
	bcs	.L3001	@,
	mov	r0, r4	@, pH264Ctx
	bl	CombinePacket.part.9	@
	ldr	r3, [r4, #368]	@ D.46809, pH264Ctx_8(D)->pCurrNal
	b	.L3001	@
.L3008:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	ldr	r3, .L3043	@ tmp190,
	ldr	r3, [r3]	@ D.46814, g_event_report
	cmp	r3, #0	@ D.46814,
	beq	.L3040	@,
	add	r4, r4, #49152	@ tmp192, pH264Ctx,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_8(D)->ChanID
	blx	r3	@ D.46814
	mvn	r0, #0	@ D.46807,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3010:
	mov	r2, r3	@ D.46807, pH264Ctx_8(D)->NalArray[0].is_valid
	b	.L2996	@
.L3044:
	.align	2
.L3043:
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
	bl	vfmw_dprint_nothing	@
	mov	r0, r10	@, pH264Ctx
	add	r8, r10, #49152	@ tmp266, pH264Ctx,
	bl	H264_ClearCurrPic	@
	mov	r0, r10	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r10	@, pH264Ctx
	bl	InitDPB	@
	cmp	r4, #0	@ flag,
	beq	.L3046	@,
	add	r1, r10, #8	@, pH264Ctx,
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
.L3047:
	add	r4, r10, #27392	@ ivtmp.3025, pH264Ctx,
	mov	r7, #0	@ i,
	add	r4, r4, #124	@ ivtmp.3025, ivtmp.3025,
	mov	r6, r7	@ tmp270, i
	mvn	r9, #0	@ tmp271,
.L3050:
	sub	r5, r4, #16	@ ivtmp.2992, ivtmp.3025,
	sub	r3, r4, #212	@ D.46893, ivtmp.3025,
	mov	r2, #1	@ tmp163,
	mov	ip, #17	@ tmp164,
	mov	r0, #16	@ tmp165,
	mov	r1, #2	@ tmp170,
	strb	r6, [r4, #-212]	@ tmp270, MEM[base: _116, offset: 4294967084B]
	strb	r6, [r4, #-211]	@ tmp270, MEM[base: _116, offset: 4294967085B]
	strb	r6, [r4, #-210]	@ tmp270, MEM[base: _116, offset: 4294967086B]
	str	r6, [r4, #308]	@ tmp270, MEM[base: _116, offset: 308B]
	str	r6, [r4, #300]	@ tmp270, MEM[base: _116, offset: 300B]
	str	r9, [r4, #304]	@ tmp271, MEM[base: _116, offset: 304B]
	str	r6, [r4, #312]	@ tmp270, MEM[base: _116, offset: 312B]
	strb	r6, [r4, #-208]	@ tmp270, MEM[base: _116, offset: 4294967088B]
	str	r7, [r4, #-28]	@ i, MEM[base: _116, offset: 4294967268B]
	strb	r6, [r4, #188]	@ tmp270, MEM[base: _116, offset: 188B]
	str	r2, [r4, #320]	@ tmp163, MEM[base: _116, offset: 320B]
	strb	r2, [r4, #224]	@ tmp163, MEM[base: _116, offset: 224B]
	str	ip, [r4, #336]	@ tmp164, MEM[base: _116, offset: 336B]
	str	r0, [r4, #340]	@ tmp165, MEM[base: _116, offset: 340B]
	str	r3, [r4, #264]	@ D.46893, MEM[base: _116, offset: 264B]
	str	r3, [r4, #228]	@ D.46893, MEM[base: _116, offset: 228B]
	str	r3, [r4, #192]	@ D.46893, MEM[base: _116, offset: 192B]
	strb	r1, [r4, #260]	@ tmp170, MEM[base: _116, offset: 260B]
.L3049:
	ldr	r1, [r5, #4]!	@ D.46890, MEM[base: _110, offset: 0B]
	cmp	r1, #0	@ D.46890,
	beq	.L3048	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5]	@ tmp270, MEM[base: _110, offset: 0B]
.L3048:
	cmp	r5, r4	@ ivtmp.2992, ivtmp.3025
	bne	.L3049	@,
	add	r7, r7, #1	@ i, i,
	add	r4, r5, #560	@ ivtmp.3025, ivtmp.2992,
	cmp	r7, #40	@ i,
	bne	.L3050	@,
	add	r4, r10, #49664	@ ivtmp.2978, pH264Ctx,
	add	r5, r10, #49920	@ D.46886, pH264Ctx,
	add	r4, r4, #244	@ ivtmp.2978, ivtmp.2978,
	add	r5, r5, #4	@ D.46886, D.46886,
	mov	r6, #0	@ tmp268,
.L3052:
	ldr	r1, [r4, #4]!	@ D.46890, MEM[base: _8, offset: 0B]
	cmp	r1, #0	@ D.46890,
	beq	.L3051	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r4]	@ tmp268, MEM[base: _8, offset: 0B]
.L3051:
	cmp	r4, r5	@ ivtmp.2978, D.46886
	bne	.L3052	@,
	ldr	r3, [r8, #2192]	@ pH264Ctx_15(D)->TotalUsrDatNum, pH264Ctx_15(D)->TotalUsrDatNum
	cmp	r3, #0	@ pH264Ctx_15(D)->TotalUsrDatNum,
	beq	.L3056	@,
	add	r5, r10, #51200	@ ivtmp.2964, pH264Ctx,
	mov	r4, #0	@ i,
	add	r5, r5, #144	@ ivtmp.2964, ivtmp.2964,
	mov	r6, r4	@ tmp267, i
.L3055:
	ldr	r1, [r5, #4]!	@ D.46890, MEM[base: _57, offset: 0B]
	add	r4, r4, #1	@ i, i,
	cmp	r1, #0	@ D.46890,
	beq	.L3054	@,
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5]	@ tmp267, MEM[base: _57, offset: 0B]
.L3054:
	ldr	r3, [r8, #2192]	@ pH264Ctx_15(D)->TotalUsrDatNum, pH264Ctx_15(D)->TotalUsrDatNum
	cmp	r3, r4	@ pH264Ctx_15(D)->TotalUsrDatNum, i
	bhi	.L3055	@,
.L3056:
	add	r5, r10, #20480	@ tmp217, pH264Ctx,
	add	r3, r10, #24576	@ tmp214, pH264Ctx,
	mov	r4, #0	@ tmp187,
	add	r0, r5, #200	@,,
	str	r4, [r8, #2192]	@ tmp187, pH264Ctx_15(D)->TotalUsrDatNum
	mov	r1, #1648	@,
	str	r4, [r8, #3664]	@ tmp187, pH264Ctx_15(D)->IDRPicOfCurrPic
	str	r4, [r8, #2172]	@ tmp187, pH264Ctx_15(D)->AllowStartDec
	str	r4, [r8, #3612]	@ tmp187, pH264Ctx_15(D)->SliceParaNum
	str	r4, [r8, #3672]	@ tmp187, pH264Ctx_15(D)->MaxBytesReceived
	str	r4, [r8, #3620]	@ tmp187, pH264Ctx_15(D)->IModeOutFlag
	str	r4, [r8, #2180]	@ tmp187, pH264Ctx_15(D)->IDRFound
	str	r4, [r8, #3696]	@ tmp187, pH264Ctx_15(D)->FirstFrameDisplayed
	str	r4, [r8, #2184]	@ tmp187, pH264Ctx_15(D)->PPicFound
	str	r4, [r10, #368]	@ tmp187, pH264Ctx_15(D)->pCurrNal
	str	r4, [r3, #1804]	@ tmp187, pH264Ctx_15(D)->CurrMarkIdx
	strb	r4, [r5, #3896]	@ tmp187, pH264Ctx_15(D)->Mark[1].is_valid
	strb	r4, [r5, #1892]	@ tmp187, pH264Ctx_15(D)->Mark[0].is_valid
	strb	r4, [r5, #3897]	@ tmp187, pH264Ctx_15(D)->Mark[1].no_output_of_prior_pics_flag
	strb	r4, [r5, #1893]	@ tmp187, pH264Ctx_15(D)->Mark[0].no_output_of_prior_pics_flag
	bl	__memzero	@
	mov	r2, #2	@ tmp236,
	mov	r3, #1	@ tmp240,
	strb	r2, [r5, #200]	@ tmp236, pH264Ctx_15(D)->CurrSlice.slice_type
	strb	r3, [r5, #205]	@ tmp240, pH264Ctx_15(D)->CurrSlice.new_pic_flag
	mov	r0, r4	@, tmp187
	mov	r3, #256	@ tmp252,
	strb	r4, [r8, #552]	@ tmp187, pH264Ctx_15(D)->CurrPic.state
	strb	r4, [r8, #1512]	@ tmp187, pH264Ctx_15(D)->PrevPic.structure
	str	r4, [r8, #1516]	@ tmp187, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	str	r3, [r8, #1520]	@ tmp252, pH264Ctx_15(D)->PrevPic.frame_num
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3046:
	add	r0, r10, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	ldr	r0, [r8, #3688]	@, pH264Ctx_15(D)->ChanID
	bl	FSP_EmptyInstance	@
	b	.L3047	@
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
	ldrb	r8, [r2, #3]	@ zero_extendqisi2	@ D.46897, pCurrPic_25(D)->structure
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pos, pos
	cmp	r8, #1	@ D.46897,
	beq	.L3074	@,
	bcc	.L3075	@,
	cmp	r8, #2	@ D.46897,
	beq	.L3076	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.46899,
.L3080:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3076:
	ldr	r3, [r2, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	mov	r2, #3	@ tmp681,
	strb	r2, [r3, #400]	@ tmp681, _282->frame.structure
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pCurrPic_25(D)->field_pair_flag, pCurrPic_25(D)->field_pair_flag
	cmp	r3, #0	@ pCurrPic_25(D)->field_pair_flag,
	mov	r3, r1, asl #2	@ D.46906, pos,
	beq	.L3097	@,
	add	r7, r0, r3	@ D.46905, pH264Ctx, D.46906
	add	r7, r7, #24576	@ tmp877, D.46905,
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	cmp	r2, #0	@ D.46896,
	beq	.L3097	@,
	strb	r8, [r2, #472]	@ D.46897, _285->bottom_field.structure
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldr	r2, [r4, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	str	r2, [r3, #476]	@ D.46896, _287->bottom_field.frame_store
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_long_term
	strb	r2, [r3, #473]	@ D.46900, _290->bottom_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_short_term
	strb	r2, [r3, #474]	@ D.46900, _293->bottom_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldr	r2, [r4, #440]	@ D.46902, pCurrPic_25(D)->bottompoc
	str	r2, [r3, #488]	@ D.46902, _296->bottom_field.poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldr	r2, [r4, #444]	@ D.46901, pCurrPic_25(D)->pic_type
	str	r2, [r3, #496]	@ D.46901, _299->bottom_field.pic_type
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldr	r2, [r4, #452]	@ D.46901, pCurrPic_25(D)->err_level
	str	r2, [r3, #492]	@ D.46901, _302->bottom_field.err_level
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldr	r1, [r3, #456]	@ _305->top_field.err_level, _305->top_field.err_level
	ldr	r2, [r3, #492]	@ _305->bottom_field.err_level, _305->bottom_field.err_level
	add	r2, r2, r1	@ D.46901, _305->bottom_field.err_level, _305->top_field.err_level
	str	r2, [r3, #420]	@ D.46901, _305->frame.err_level
	str	r2, [r3, #544]	@ D.46901, _305->err_level
	add	r1, r4, #16	@, pCurrPic,
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.46897, _311->non_existing
	cmp	r3, #0	@ D.46897,
	ldrneb	r3, [r4, #2]	@ zero_extendqisi2	@ D.46897, pCurrPic_25(D)->non_existing
	strb	r3, [r2]	@ D.46897, _311->non_existing
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _315->is_used, _315->is_used
	orr	r3, r3, #2	@ tmp780, _315->is_used,
	strb	r3, [r2, #1]	@ tmp780, _315->is_used
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	cmp	r3, #1	@ pCurrPic_25(D)->mode_skip_flag,
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _320->mode_skip_flag,
	orreq	r2, r2, #2	@ D.46897, _320->mode_skip_flag,
	strb	r2, [r3, #3]	@ D.46897, _2->mode_skip_flag
	mov	r2, #392	@,
	ldr	lr, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	add	r0, lr, #8	@, D.46896,
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.46896,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _326->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _326->fs_image.PTS
	strd	r8, [sp]	@ OtherFieldUsertag, %sfp
	ldrd	r8, [lr, #32]	@ OtherFieldDispTime, D.46896,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _326->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _326->fs_image.DispFrameDistance
	strd	r8, [sp, #8]	@ OtherFieldDispTime,,
	str	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r9, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _326->fs_image.DistanceBeforeFirstFrame
	ldr	r8, [lr, #88]	@ OtherFieldGopNum, _326->fs_image.GopNum
	str	r3, [sp, #16]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r0, [r4, #24]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	ldr	r1, [r4, #28]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	and	r1, r1, r0	@ tmp798, pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	ldr	r3, [sp, #16]	@ OtherFieldPts, %sfp
	ldr	ip, [sp, #20]	@ OtherFieldPts, %sfp
	and	r2, ip, r3	@ tmp804, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp809, tmp804,
	movne	r2, #1	@ tmp809,
	cmn	r1, #1	@ tmp798,
	ldrd	r0, [sp]	@ OtherFieldUsertag, %sfp
	movne	r2, #0	@ tmp809,
	cmp	r2, #0	@ tmp809,
	ldrne	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	strne	ip, [r2, #16]	@ OtherFieldPts, _336->fs_image.PTS
	strne	r3, [r2, #20]	@ OtherFieldPts, _336->fs_image.PTS
	ldrd	r2, [r4, #32]	@ D.46903, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	cmp	r3, r1	@ D.46903, OtherFieldUsertag
	cmpeq	r2, r0	@ D.46903, OtherFieldUsertag
	movhi	r2, r0	@ D.46903, OtherFieldUsertag
	movhi	r3, r1	@ D.46903, OtherFieldUsertag
	ldrd	r0, [sp, #8]	@ OtherFieldDispTime,,
	strd	r2, [ip, #24]	@ D.46903, D.46896,
	ldrd	r2, [r4, #40]	@ D.46903, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	cmp	r3, r1	@ D.46903, OtherFieldDispTime
	cmpeq	r2, r0	@ D.46903, OtherFieldDispTime
	movhi	r2, r0	@ D.46903, OtherFieldDispTime
	movhi	r3, r1	@ D.46903, OtherFieldDispTime
	strd	r2, [ip, #32]	@ D.46903, D.46896,
	ldr	r3, [r4, #84]	@ pCurrPic_25(D)->fs_image.DispEnableFlag, pCurrPic_25(D)->fs_image.DispEnableFlag
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	cmp	r3, fp	@ pCurrPic_25(D)->fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.46901, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.46901, _346->fs_image.DispEnableFlag
	ldr	r3, [r4, #88]	@ pCurrPic_25(D)->fs_image.DispFrameDistance, pCurrPic_25(D)->fs_image.DispFrameDistance
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	cmp	r3, r10	@ pCurrPic_25(D)->fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.46901, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.46901, _350->fs_image.DispFrameDistance
	ldr	r3, [r4, #92]	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	cmp	r3, r9	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r9	@ D.46901, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.46901, _354->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #96]	@ pCurrPic_25(D)->fs_image.GopNum, pCurrPic_25(D)->fs_image.GopNum
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	cmp	r3, r8	@ pCurrPic_25(D)->fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r8	@ D.46901, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.46901, _358->fs_image.GopNum
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L3109	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L3109	@,
.L3110:
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldr	r3, [r2, #496]	@ _372->bottom_field.pic_type, _372->bottom_field.pic_type
	ldr	r1, [r2, #460]	@ _372->top_field.pic_type, _372->top_field.pic_type
	cmp	r3, r1	@ _372->bottom_field.pic_type, _372->top_field.pic_type
	movcc	r3, r1	@ D.46901, _372->top_field.pic_type
	str	r3, [r2, #540]	@ D.46901, _372->pic_type
	ldr	r2, [r4, #428]	@ D.46902, pCurrPic_25(D)->thispoc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	str	r2, [r3, #524]	@ D.46902, _377->poc
	ldr	r0, [r7, #1856]	@, MEM[(struct H264_CTX_S *)_622 + 26432B]
	bl	CombineFldsToFrm	@
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldr	r3, [r2, #552]	@ D.46901, _382->apc_idc
	ldr	r2, [r2, #488]	@ _382->bottom_field.poc, _382->bottom_field.poc
	add	r3, r3, #6656	@ tmp858, D.46901,
	add	r3, r3, #52	@ tmp858, tmp858,
	add	r3, r6, r3, lsl #2	@ tmp859, pH264Ctx, tmp858,
	str	r2, [r3, #4]	@ _382->bottom_field.poc, pH264Ctx_28(D)->APC.poc
	b	.L3096	@
.L3075:
	ldr	r2, [r2, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	add	r7, r0, r1, lsl #2	@ D.46905, pH264Ctx, pos,
	add	r7, r7, #24576	@ tmp874, D.46905,
	mov	r3, #3	@ tmp432,
	str	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->non_existing
	strb	r1, [r2]	@ D.46900, _27->non_existing
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	strb	r3, [r2, #1]	@ tmp432, _33->is_used
	ldr	r1, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldrb	r1, [r1, #4]	@ zero_extendqisi2	@ D.46900, _36->is_in_dpb
	strb	r1, [r2, #4]	@ D.46900, _35->is_in_dpb
	ldr	r1, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r1, #532]	@ D.46901, _40->is_displayed
	str	r1, [r2, #532]	@ D.46901, _39->is_displayed
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	cmp	r1, #0	@ pCurrPic_25(D)->is_long_term,
	beq	.L3165	@,
.L3077:
	strb	r3, [r2, #2]	@ D.46897, _43->is_reference
	add	r1, r4, #16	@, pCurrPic,
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	mov	r2, #392	@,
	ldr	r0, [r4, #476]	@ D.46901, pCurrPic_25(D)->pmv_address_idc
	mov	r9, #1	@ tmp492,
	str	r0, [r3, #548]	@ D.46901, _47->pmv_address_idc
	ldr	r0, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	add	r0, r0, #8	@, D.46896,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #452]	@ D.46901, pCurrPic_25(D)->err_level
	mov	ip, #0	@ tmp463,
	mov	r2, ip	@, tmp463
	mov	lr, #2	@ tmp496,
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #420]	@ D.46901, _52->frame.err_level
	str	r1, [r3, #544]	@ D.46901, _52->err_level
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	str	r1, [r3, #476]	@ D.46896, _56->bottom_field.frame_store
	str	r1, [r3, #440]	@ D.46896, _56->top_field.frame_store
	str	r1, [r3, #404]	@ D.46896, _56->frame.frame_store
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #420]	@ D.46901, pCurrPic_25(D)->long_term_frame_idx
	str	r1, [r3, #520]	@ D.46901, _61->long_term_frame_idx
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #416]	@ D.46901, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.46901, _64->frame_num
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	strb	ip, [r3, #400]	@ tmp463, _67->frame.structure
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #401]	@ D.46900, _69->frame.is_long_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #402]	@ D.46900, _72->frame.is_short_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #444]	@ D.46901, pCurrPic_25(D)->pic_type
	str	r1, [r3, #424]	@ D.46901, _75->frame.pic_type
	str	r1, [r3, #540]	@ D.46901, _75->pic_type
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ pCurrPic_25(D)->MbaffFrameFlag, pCurrPic_25(D)->MbaffFrameFlag
	str	r1, [r3, #536]	@ pCurrPic_25(D)->MbaffFrameFlag, _79->MbaffFrameFlag
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #428]	@ D.46902, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.46902, _83->poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #432]	@ D.46902, pCurrPic_25(D)->framepoc
	str	r1, [r3, #416]	@ D.46902, _86->frame.poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #436]	@ D.46902, pCurrPic_25(D)->toppoc
	str	r1, [r3, #452]	@ D.46902, _89->top_field.poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r4, #440]	@ D.46902, pCurrPic_25(D)->bottompoc
	str	r1, [r3, #488]	@ D.46902, _92->bottom_field.poc
	ldrb	r1, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	cmp	r1, r9	@ pCurrPic_25(D)->mode_skip_flag,
	moveq	r8, #3	@ D.46897,
	strb	r8, [r3, #3]	@ D.46897, _95->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_496 + 26432B]
	ldr	r1, [r3, #404]	@ D.46904, _98->frame.frame_store
	ldrb	r10, [r3, #401]	@ zero_extendqisi2	@ D.46900, _98->frame.is_long_term
	ldrb	r8, [r3, #402]	@ zero_extendqisi2	@ D.46900, _98->frame.is_short_term
	ldr	r7, [r3, #420]	@ D.46901, _98->frame.err_level
	ldr	ip, [r3, #424]	@ D.46901, _98->frame.pic_type
	strb	r9, [r3, #436]	@ tmp492, _98->top_field.structure
	strb	lr, [r3, #472]	@ tmp496, _98->bottom_field.structure
	strb	r10, [r3, #437]	@ D.46900, _98->top_field.is_long_term
	strb	r10, [r3, #473]	@ D.46900, _98->bottom_field.is_long_term
	strb	r8, [r3, #438]	@ D.46900, _98->top_field.is_short_term
	strb	r8, [r3, #474]	@ D.46900, _98->bottom_field.is_short_term
	str	r7, [r3, #456]	@ D.46901, _98->top_field.err_level
	str	r7, [r3, #492]	@ D.46901, _98->bottom_field.err_level
	str	ip, [r3, #460]	@ D.46901, _98->top_field.pic_type
	str	ip, [r3, #496]	@ D.46901, _98->bottom_field.pic_type
	str	r1, [r3, #440]	@ D.46904, _98->top_field.frame_store
	str	r1, [r3, #476]	@ D.46904, _98->bottom_field.frame_store
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	bne	.L3086	@,
.L3096:
	add	r5, r5, #6592	@ tmp863, pos,
	add	r3, r6, #49152	@ tmp867, pH264Ctx,
	add	r5, r5, #16	@ tmp863, tmp863,
	mov	r2, #1	@,
	ldr	r0, [r3, #3688]	@, pH264Ctx_28(D)->ChanID
	ldr	r3, [r6, r5, asl #2]	@ tmp864, pH264Ctx_28(D)->DPB.fs
	ldr	r1, [r3, #508]	@, _461->logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, #0	@ D.46899,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3074:
	ldr	r3, [r2, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	mov	r2, #3	@ tmp499,
	strb	r2, [r3, #400]	@ tmp499, _105->frame.structure
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pCurrPic_25(D)->field_pair_flag, pCurrPic_25(D)->field_pair_flag
	cmp	r3, #0	@ pCurrPic_25(D)->field_pair_flag,
	mov	r3, r1, asl #2	@ D.46906, pos,
	beq	.L3081	@,
	add	r7, r0, r3	@ D.46905, pH264Ctx, D.46906
	add	r7, r7, #24576	@ tmp875, D.46905,
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	cmp	r2, #0	@ D.46896,
	beq	.L3081	@,
	strb	r8, [r2, #436]	@ D.46897, _108->top_field.structure
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldr	r2, [r4, #444]	@ D.46901, pCurrPic_25(D)->pic_type
	str	r2, [r3, #460]	@ D.46901, _110->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_long_term
	strb	r2, [r3, #437]	@ D.46900, _113->top_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_short_term
	strb	r2, [r3, #438]	@ D.46900, _116->top_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldr	r2, [r4, #436]	@ D.46902, pCurrPic_25(D)->toppoc
	str	r2, [r3, #452]	@ D.46902, _119->top_field.poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldr	r2, [r4, #444]	@ D.46901, pCurrPic_25(D)->pic_type
	str	r2, [r3, #460]	@ D.46901, _122->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldr	r2, [r4, #452]	@ D.46901, pCurrPic_25(D)->err_level
	str	r2, [r3, #456]	@ D.46901, _125->top_field.err_level
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldr	r1, [r3, #456]	@ _128->top_field.err_level, _128->top_field.err_level
	ldr	r2, [r3, #492]	@ _128->bottom_field.err_level, _128->bottom_field.err_level
	add	r2, r2, r1	@ D.46901, _128->bottom_field.err_level, _128->top_field.err_level
	str	r2, [r3, #420]	@ D.46901, _128->frame.err_level
	str	r2, [r3, #544]	@ D.46901, _128->err_level
	add	r1, r4, #16	@, pCurrPic,
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.46897, _134->non_existing
	cmp	r3, #0	@ D.46897,
	ldrneb	r3, [r4, #2]	@ zero_extendqisi2	@ D.46897, pCurrPic_25(D)->non_existing
	strb	r3, [r2]	@ D.46897, _134->non_existing
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _138->is_used, _138->is_used
	orr	r3, r3, #1	@ tmp599, _138->is_used,
	strb	r3, [r2, #1]	@ tmp599, _138->is_used
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	cmp	r3, #1	@ pCurrPic_25(D)->mode_skip_flag,
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ _143->mode_skip_flag,
	orreq	r2, r2, #1	@ D.46897, _143->mode_skip_flag,
	strb	r2, [r3, #3]	@ D.46897, _1->mode_skip_flag
	mov	r2, #392	@,
	ldr	lr, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	add	r0, lr, #8	@, D.46896,
	ldrd	r8, [lr, #24]	@ OtherFieldUsertag, D.46896,
	ldr	ip, [lr, #16]	@ OtherFieldPts, _149->fs_image.PTS
	ldr	r3, [lr, #20]	@ OtherFieldPts, _149->fs_image.PTS
	strd	r8, [sp]	@ OtherFieldUsertag, %sfp
	ldrd	r8, [lr, #32]	@ OtherFieldDispTime, D.46896,
	ldr	fp, [lr, #76]	@ OtherFieldDispEnableFlag, _149->fs_image.DispEnableFlag
	ldr	r10, [lr, #80]	@ OtherFieldDispFrameDistance, _149->fs_image.DispFrameDistance
	strd	r8, [sp, #8]	@ OtherFieldDispTime,,
	str	ip, [sp, #20]	@ OtherFieldPts, %sfp
	ldr	r9, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, _149->fs_image.DistanceBeforeFirstFrame
	ldr	r8, [lr, #88]	@ OtherFieldGopNum, _149->fs_image.GopNum
	str	r3, [sp, #16]	@ OtherFieldPts, %sfp
	bl	memcpy	@
	ldr	r0, [r4, #24]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	ldr	r1, [r4, #28]	@ pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	and	r1, r1, r0	@ tmp617, pCurrPic_25(D)->fs_image.PTS, pCurrPic_25(D)->fs_image.PTS
	ldr	r3, [sp, #16]	@ OtherFieldPts, %sfp
	ldr	ip, [sp, #20]	@ OtherFieldPts, %sfp
	and	r2, ip, r3	@ tmp623, OtherFieldPts, OtherFieldPts
	adds	r2, r2, #1	@ tmp628, tmp623,
	movne	r2, #1	@ tmp628,
	cmn	r1, #1	@ tmp617,
	ldrd	r0, [sp]	@ OtherFieldUsertag, %sfp
	movne	r2, #0	@ tmp628,
	cmp	r2, #0	@ tmp628,
	ldrne	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	strne	ip, [r2, #16]	@ OtherFieldPts, _159->fs_image.PTS
	strne	r3, [r2, #20]	@ OtherFieldPts, _159->fs_image.PTS
	ldrd	r2, [r4, #32]	@ D.46903, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	cmp	r3, r1	@ D.46903, OtherFieldUsertag
	cmpeq	r2, r0	@ D.46903, OtherFieldUsertag
	movhi	r2, r0	@ D.46903, OtherFieldUsertag
	movhi	r3, r1	@ D.46903, OtherFieldUsertag
	ldrd	r0, [sp, #8]	@ OtherFieldDispTime,,
	strd	r2, [ip, #24]	@ D.46903, D.46896,
	ldrd	r2, [r4, #40]	@ D.46903, pCurrPic,
	ldr	ip, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	cmp	r3, r1	@ D.46903, OtherFieldDispTime
	cmpeq	r2, r0	@ D.46903, OtherFieldDispTime
	movhi	r2, r0	@ D.46903, OtherFieldDispTime
	movhi	r3, r1	@ D.46903, OtherFieldDispTime
	strd	r2, [ip, #32]	@ D.46903, D.46896,
	ldr	r3, [r4, #84]	@ pCurrPic_25(D)->fs_image.DispEnableFlag, pCurrPic_25(D)->fs_image.DispEnableFlag
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	cmp	r3, fp	@ pCurrPic_25(D)->fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	movcs	r3, fp	@ D.46901, OtherFieldDispEnableFlag
	str	r3, [r2, #76]	@ D.46901, _169->fs_image.DispEnableFlag
	ldr	r3, [r4, #88]	@ pCurrPic_25(D)->fs_image.DispFrameDistance, pCurrPic_25(D)->fs_image.DispFrameDistance
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	cmp	r3, r10	@ pCurrPic_25(D)->fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	movcs	r3, r10	@ D.46901, OtherFieldDispFrameDistance
	str	r3, [r2, #80]	@ D.46901, _173->fs_image.DispFrameDistance
	ldr	r3, [r4, #92]	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	cmp	r3, r9	@ pCurrPic_25(D)->fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	movcs	r3, r9	@ D.46901, OtherFieldDistanceBeforeFirstFrame
	str	r3, [r2, #84]	@ D.46901, _177->fs_image.DistanceBeforeFirstFrame
	ldr	r3, [r4, #96]	@ pCurrPic_25(D)->fs_image.GopNum, pCurrPic_25(D)->fs_image.GopNum
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	cmp	r3, r8	@ pCurrPic_25(D)->fs_image.GopNum, OtherFieldGopNum
	movcs	r3, r8	@ D.46901, OtherFieldGopNum
	str	r3, [r2, #88]	@ D.46901, _181->fs_image.GopNum
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L3093	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L3093	@,
.L3094:
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldr	r3, [r2, #496]	@ _195->bottom_field.pic_type, _195->bottom_field.pic_type
	ldr	r1, [r2, #460]	@ _195->top_field.pic_type, _195->top_field.pic_type
	cmp	r3, r1	@ _195->bottom_field.pic_type, _195->top_field.pic_type
	movcc	r3, r1	@ D.46901, _195->top_field.pic_type
	str	r3, [r2, #540]	@ D.46901, _195->pic_type
	ldr	r2, [r4, #428]	@ D.46902, pCurrPic_25(D)->thispoc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	str	r2, [r3, #524]	@ D.46902, _200->poc
	ldr	r0, [r7, #1856]	@, MEM[(struct H264_CTX_S *)_528 + 26432B]
	bl	CombineFldsToFrm	@
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldr	r3, [r2, #552]	@ D.46901, _205->apc_idc
	ldr	r2, [r2, #452]	@ _205->top_field.poc, _205->top_field.poc
	add	r3, r3, #6656	@ tmp677, D.46901,
	add	r3, r3, #36	@ tmp677, tmp677,
	add	r3, r6, r3, lsl #2	@ tmp678, pH264Ctx, tmp677,
	str	r2, [r3, #4]	@ _205->top_field.poc, pH264Ctx_28(D)->APC.poc
	b	.L3096	@
.L3081:
	add	r7, r6, r3	@ D.46905, pH264Ctx, D.46906
	ldr	r3, [r4, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	add	r7, r7, #24576	@ tmp876, D.46905,
	mov	r2, #1	@ tmp508,
	str	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	strb	r2, [r3, #436]	@ tmp508, _210->top_field.structure
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r4, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	str	r1, [r3, #440]	@ D.46896, _213->top_field.frame_store
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #437]	@ D.46900, _216->top_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #438]	@ D.46900, _219->top_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r4, #436]	@ D.46902, pCurrPic_25(D)->toppoc
	str	r1, [r3, #452]	@ D.46902, _222->top_field.poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r4, #444]	@ D.46901, pCurrPic_25(D)->pic_type
	str	r1, [r3, #460]	@ D.46901, _225->top_field.pic_type
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r4, #452]	@ D.46901, pCurrPic_25(D)->err_level
	str	r1, [r3, #456]	@ D.46901, _228->top_field.err_level
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r3, #456]	@ D.46901, _231->top_field.err_level
	str	r1, [r3, #420]	@ D.46901, _231->frame.err_level
	str	r1, [r3, #544]	@ D.46901, _231->err_level
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->non_existing
	strb	r1, [r3]	@ D.46900, _235->non_existing
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	strb	r2, [r3, #1]	@ tmp508, _238->is_used
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ D.46900, _241->is_in_dpb
	strb	r2, [r3, #4]	@ D.46900, _240->is_in_dpb
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r2, [r2, #532]	@ D.46901, _245->is_displayed
	str	r2, [r3, #532]	@ D.46901, _244->is_displayed
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L3083	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L3083	@,
.L3084:
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	mov	r0, #0	@ tmp551,
	mov	r2, #392	@,
	add	r1, r4, #16	@, pCurrPic,
	str	r0, [r3, #536]	@ tmp551, _256->MbaffFrameFlag
	ldr	r0, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	add	r0, r0, #8	@, D.46896,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r4, #476]	@ D.46901, pCurrPic_25(D)->pmv_address_idc
	mov	r2, #1	@,
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #548]	@ D.46901, _260->pmv_address_idc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r4, #416]	@ D.46901, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.46901, _263->frame_num
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r4, #428]	@ D.46902, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.46902, _266->poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldr	r1, [r4, #444]	@ D.46901, pCurrPic_25(D)->pic_type
	str	r1, [r3, #540]	@ D.46901, _269->pic_type
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r1, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	rsb	r3, r2, r3	@ tmp569,, pCurrPic_25(D)->mode_skip_flag
	clz	r3, r3	@ tmp569, tmp569
	mov	r3, r3, lsr #5	@ tmp569, tmp569,
	strb	r3, [r1, #3]	@ tmp569, _272->mode_skip_flag
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	beq	.L3096	@,
.L3086:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.46899,
	b	.L3080	@
.L3097:
	add	r7, r6, r3	@ D.46905, pH264Ctx, D.46906
	ldr	r3, [r4, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	add	r7, r7, #24576	@ tmp878, D.46905,
	mov	r2, #2	@ tmp690,
	str	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	strb	r2, [r3, #472]	@ tmp690, _387->bottom_field.structure
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r4, #408]	@ D.46896, pCurrPic_25(D)->frame_store
	str	r1, [r3, #476]	@ D.46896, _390->bottom_field.frame_store
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_long_term
	strb	r1, [r3, #473]	@ D.46900, _393->bottom_field.is_long_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->is_short_term
	strb	r1, [r3, #474]	@ D.46900, _396->bottom_field.is_short_term
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r4, #440]	@ D.46902, pCurrPic_25(D)->bottompoc
	str	r1, [r3, #488]	@ D.46902, _399->bottom_field.poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r4, #444]	@ D.46901, pCurrPic_25(D)->pic_type
	str	r1, [r3, #496]	@ D.46901, _402->bottom_field.pic_type
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r4, #452]	@ D.46901, pCurrPic_25(D)->err_level
	str	r1, [r3, #492]	@ D.46901, _405->bottom_field.err_level
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r3, #456]	@ D.46901, _408->top_field.err_level
	str	r1, [r3, #420]	@ D.46901, _408->frame.err_level
	str	r1, [r3, #544]	@ D.46901, _408->err_level
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ D.46900, pCurrPic_25(D)->non_existing
	strb	r1, [r3]	@ D.46900, _412->non_existing
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	strb	r2, [r3, #1]	@ tmp690, _415->is_used
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ D.46900, _418->is_in_dpb
	strb	r2, [r3, #4]	@ D.46900, _417->is_in_dpb
	ldr	r2, [r4, #408]	@ pCurrPic_25(D)->frame_store, pCurrPic_25(D)->frame_store
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r2, [r2, #532]	@ D.46901, _422->is_displayed
	str	r2, [r3, #532]	@ D.46901, _421->is_displayed
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	beq	.L3099	@,
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_short_term, pCurrPic_25(D)->is_short_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_short_term,
	beq	.L3099	@,
.L3100:
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	mov	r0, #0	@ tmp733,
	mov	r2, #392	@,
	add	r1, r4, #16	@, pCurrPic,
	str	r0, [r3, #536]	@ tmp733, _433->MbaffFrameFlag
	ldr	r0, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	add	r0, r0, #8	@, D.46896,
	bl	memcpy	@
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r4, #476]	@ D.46901, pCurrPic_25(D)->pmv_address_idc
	mov	r2, #2	@,
	mov	r0, r6	@, pH264Ctx
	str	r1, [r3, #548]	@ D.46901, _437->pmv_address_idc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r4, #416]	@ D.46901, pCurrPic_25(D)->frame_num
	str	r1, [r3, #512]	@ D.46901, _440->frame_num
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r4, #428]	@ D.46902, pCurrPic_25(D)->thispoc
	str	r1, [r3, #524]	@ D.46902, _443->poc
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldr	r1, [r4, #444]	@ D.46901, pCurrPic_25(D)->pic_type
	str	r1, [r3, #496]	@ D.46901, _446->bottom_field.pic_type
	str	r1, [r3, #540]	@ D.46901, _446->pic_type
	ldrb	r1, [r4, #7]	@ zero_extendqisi2	@ pCurrPic_25(D)->mode_skip_flag, pCurrPic_25(D)->mode_skip_flag
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	cmp	r1, #1	@ pCurrPic_25(D)->mode_skip_flag,
	moveq	r8, r2	@ D.46897,
	movne	r8, #0	@ D.46897,
	strb	r8, [r3, #3]	@ D.46897, _450->mode_skip_flag
	ldr	r1, [r4, #408]	@, pCurrPic_25(D)->frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	beq	.L3096	@,
	b	.L3086	@
.L3165:
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ D.46897, pCurrPic_25(D)->is_short_term
	cmp	r3, #0	@ D.46897,
	movne	r3, #3	@ D.46897,
	b	.L3077	@
.L3099:
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	mov	r2, #2	@ tmp726,
	strb	r2, [r3, #2]	@ tmp726, _427->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_674 + 26432B]
	ldreq	r2, [r4, #420]	@ D.46901, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.46901, _430->long_term_frame_idx
	b	.L3100	@
.L3083:
	ldr	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	mov	r2, #1	@ tmp544,
	strb	r2, [r3, #2]	@ tmp544, _250->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, r2	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_580 + 26432B]
	ldreq	r2, [r4, #420]	@ D.46901, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.46901, _253->long_term_frame_idx
	b	.L3084	@
.L3093:
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2	@ _187->is_reference, _187->is_reference
	orr	r3, r3, #1	@ tmp659, _187->is_reference,
	strb	r3, [r2, #2]	@ tmp659, _187->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_528 + 26432B]
	ldreq	r2, [r4, #420]	@ D.46901, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.46901, _192->long_term_frame_idx
	b	.L3094	@
.L3109:
	ldr	r2, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldrb	r3, [r2, #2]	@ zero_extendqisi2	@ _364->is_reference, _364->is_reference
	orr	r3, r3, #2	@ tmp840, _364->is_reference,
	strb	r3, [r2, #2]	@ tmp840, _364->is_reference
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ pCurrPic_25(D)->is_long_term, pCurrPic_25(D)->is_long_term
	cmp	r3, #1	@ pCurrPic_25(D)->is_long_term,
	ldreq	r3, [r7, #1856]	@ D.46896, MEM[(struct H264_CTX_S *)_622 + 26432B]
	ldreq	r2, [r4, #420]	@ D.46901, pCurrPic_25(D)->long_term_frame_idx
	streq	r2, [r3, #520]	@ D.46901, _369->long_term_frame_idx
	b	.L3110	@
	.fnend
	.size	InsertFrmInDPB, .-InsertFrmInDPB
	.align	2
	.global	StorePicInDPB
	.type	StorePicInDPB, %function
StorePicInDPB:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r0, #16384	@ tmp259, pH264Ctx,
	add	r4, r0, #49152	@ tmp552, pH264Ctx,
	mov	r7, #0	@ tmp260,
	str	r7, [r3, #3436]	@ tmp260, pH264Ctx_30(D)->CurrPOC.last_has_mmco_5
	.pad #16
	sub	sp, sp, #16	@,,
	ldrb	r2, [r4, #555]	@ zero_extendqisi2	@ D.46947, pH264Ctx_30(D)->CurrPic.structure
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	sub	r1, r2, #2	@ D.46948, D.46947,
	clz	r1, r1	@ D.46948, D.46948
	mov	r1, r1, lsr #5	@ D.46948, D.46948,
	str	r1, [r3, #3440]	@ D.46948, pH264Ctx_30(D)->CurrPOC.last_pic_bottom_field
	ldrb	r3, [r4, #552]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.state, pH264Ctx_30(D)->CurrPic.state
	cmp	r3, r7	@ pH264Ctx_30(D)->CurrPic.state,
	beq	.L3185	@,
	ldr	r1, [r4, #3616]	@ pH264Ctx_30(D)->OldDecMode, pH264Ctx_30(D)->OldDecMode
	ldr	r3, [r4, #3704]	@ pH264Ctx_30(D)->PicCounter, pH264Ctx_30(D)->PicCounter
	cmp	r1, #2	@ pH264Ctx_30(D)->OldDecMode,
	str	r3, [r4, #3700]	@ pH264Ctx_30(D)->PicCounter, pH264Ctx_30(D)->PrevStorePicCounter
	beq	.L3317	@,
	ldr	r6, [r0]	@ D.46951, pH264Ctx_30(D)->pstExtraData
	ldr	r3, [r6, #12]	@ D.46949, _40->s32DecOrderOutput
	cmp	r3, #0	@ D.46949,
	ble	.L3318	@,
	ldrb	r1, [r4, #554]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.non_existing, pH264Ctx_30(D)->CurrPic.non_existing
	cmp	r1, #0	@ pH264Ctx_30(D)->CurrPic.non_existing,
	bne	.L3173	@,
.L3333:
	sub	r1, r2, #1	@ tmp297, D.46947,
	ldr	r7, [r4, #960]	@ pOutFrameStore, pH264Ctx_30(D)->CurrPic.frame_store
	cmp	r1, #1	@ tmp297,
	movhi	r1, #0	@ D.46948,
	movls	r1, #1	@ D.46948,
	cmp	r2, #0	@ D.46947,
	beq	.L3174	@,
	ldrb	r0, [r7, #1]	@ zero_extendqisi2	@ pOutFrameStore_44->is_used, pOutFrameStore_44->is_used
	cmp	r0, #0	@ pOutFrameStore_44->is_used,
	moveq	ip, r1	@, tmp304, D.46948
	orrne	ip, r1, #1	@,, tmp304, D.46948
	cmp	ip, #0	@ tmp304,
	beq	.L3173	@,
	cmp	r1, #0	@ D.46948,
	beq	.L3319	@,
.L3237:
	ldr	r1, [r4, #3696]	@ D.46952, pH264Ctx_30(D)->FirstFrameDisplayed
	cmp	r1, #0	@ D.46952,
	bne	.L3177	@,
	add	r0, r4, #1024	@, tmp552,
	mov	r3, #1	@ tmp309,
	add	r0, r0, #8	@,,
	str	r3, [r4, #3696]	@ tmp309, pH264Ctx_30(D)->FirstFrameDisplayed
	mov	r2, #480	@,
	add	r1, r4, #552	@, tmp552,
	bl	memcpy	@
	ldr	r3, [r6, #12]	@ D.46949, _40->s32DecOrderOutput
.L3173:
	cmp	r3, #2	@ D.46949,
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	beq	.L3320	@,
.L3198:
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	beq	.L3206	@,
	ldr	r2, [r4, #3680]	@ pH264Ctx_30(D)->ref_error_thr, pH264Ctx_30(D)->ref_error_thr
	ldr	r3, [r4, #1004]	@ pH264Ctx_30(D)->CurrPic.err_level, pH264Ctx_30(D)->CurrPic.err_level
	cmp	r2, r3	@ pH264Ctx_30(D)->ref_error_thr, pH264Ctx_30(D)->CurrPic.err_level
	bcs	.L3207	@,
	ldrb	r6, [r4, #554]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.non_existing, pH264Ctx_30(D)->CurrPic.non_existing
	cmp	r6, #0	@ pH264Ctx_30(D)->CurrPic.non_existing,
	beq	.L3321	@,
.L3207:
	mov	r0, r5	@, pH264Ctx
	bl	Marking	@
	cmp	r0, #0	@,
	bne	.L3185	@,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
	cmp	r0, #0	@,
	bne	.L3322	@,
.L3200:
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.field_pair_flag, pH264Ctx_30(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_30(D)->CurrPic.field_pair_flag,
	beq	.L3210	@,
	add	r6, r5, #24576	@ tmp551, pH264Ctx,
.L3214:
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	beq	.L3323	@,
	ldr	r2, [r6, #2060]	@ pH264Ctx_30(D)->DPB.ltref_frames_in_buffer, pH264Ctx_30(D)->DPB.ltref_frames_in_buffer
	ldr	r1, [r6, #2056]	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer, pH264Ctx_30(D)->DPB.ref_frames_in_buffer
	ldr	r3, [r6, #2048]	@ D.46961, pH264Ctx_30(D)->DPB.size
	add	r2, r2, r1	@ D.46950, pH264Ctx_30(D)->DPB.ltref_frames_in_buffer, pH264Ctx_30(D)->DPB.ref_frames_in_buffer
	cmp	r3, r2	@ D.46961, D.46950
	bls	.L3324	@,
.L3220:
	mvn	r8, #0	@ pre_used_size,
	mov	r7, r8	@ pre_pos, pre_used_size
	b	.L3226	@
.L3227:
	bl	GetMinPOC	@
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	bne	.L3221	@,
	ldr	r2, [r4, #980]	@ pH264Ctx_30(D)->CurrPic.thispoc, pH264Ctx_30(D)->CurrPic.thispoc
	ldr	r3, [sp, #8]	@ min_poc, min_poc
	cmp	r2, r3	@ pH264Ctx_30(D)->CurrPic.thispoc, min_poc
	blt	.L3325	@,
.L3221:
	ldr	r3, [r6, #2052]	@ pre_used_size, pH264Ctx_30(D)->DPB.used_size
	cmp	r3, r8	@ pre_used_size, pre_used_size
	ldrne	r7, [sp, #12]	@ pre_pos, pos
	bne	.L3225	@,
	ldr	r2, [sp, #12]	@ D.46950, pos
	cmp	r2, r7	@ D.46950, pre_pos
	mov	r7, r2	@ pre_pos, D.46950
	beq	.L3185	@,
.L3225:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, pre_pos
	mov	r8, r3	@ pre_used_size, pre_used_size
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@,
	beq	.L3185	@,
	ldr	r3, [r6, #2048]	@ D.46961, pH264Ctx_30(D)->DPB.size
.L3226:
	ldr	ip, [r6, #2052]	@ D.46950, pH264Ctx_30(D)->DPB.used_size
	add	r2, sp, #12	@ tmp558,,
	add	r1, sp, #8	@ tmp559,,
	mov	r0, r5	@, pH264Ctx
	cmp	ip, r3	@ D.46950, D.46961
	bcs	.L3227	@,
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	beq	.L3228	@,
	ldrb	r3, [r4, #556]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.is_long_term, pH264Ctx_30(D)->CurrPic.is_long_term
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.is_long_term,
	bne	.L3228	@,
	ldr	r2, [r6, #2056]	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer, pH264Ctx_30(D)->DPB.ref_frames_in_buffer
	cmp	r2, #0	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer,
	beq	.L3228	@,
	add	r2, r5, #26368	@ ivtmp.3034, pH264Ctx,
	mov	r7, r3	@ tmp553, i
	add	r2, r2, #124	@ ivtmp.3034, ivtmp.3034,
	b	.L3233	@
.L3230:
	ldr	r1, [r6, #2056]	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer, pH264Ctx_30(D)->DPB.ref_frames_in_buffer
	cmp	r1, r3	@ pH264Ctx_30(D)->DPB.ref_frames_in_buffer, i
	bls	.L3326	@,
.L3233:
	ldr	r1, [r2, #4]!	@ D.46957, MEM[base: _192, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldr	r0, [r4, #968]	@ pH264Ctx_30(D)->CurrPic.frame_num, pH264Ctx_30(D)->CurrPic.frame_num
	ldr	ip, [r1, #512]	@ _217->frame_num, _217->frame_num
	cmp	ip, r0	@ _217->frame_num, pH264Ctx_30(D)->CurrPic.frame_num
	bne	.L3230	@,
	strb	r7, [r1, #2]	@ tmp553, _217->is_reference
	ldr	r1, [r2]	@ D.46957, MEM[base: _192, offset: 0B]
	ldrb	r0, [r1, #4]	@ zero_extendqisi2	@ _221->is_in_dpb, _221->is_in_dpb
	cmp	r0, #1	@ _221->is_in_dpb,
	streq	r0, [r1, #532]	@ _221->is_in_dpb, _221->is_displayed
	ldreq	r1, [r2]	@ D.46957, MEM[base: _192, offset: 0B]
	streqb	r7, [r1, #4]	@ tmp553, _224->is_in_dpb
	ldreq	r1, [r2]	@ D.46957, MEM[base: _192, offset: 0B]
	ldr	lr, [r4, #2168]	@ D.46950, pH264Ctx_30(D)->TotalPmvNum
	ldr	ip, [r1, #548]	@ D.46950, _345->pmv_address_idc
	add	r0, ip, #12800	@ tmp508, D.46950,
	cmp	ip, lr	@ D.46950, D.46950
	add	r0, r0, #12	@ tmp508, tmp508,
	strne	r7, [r5, r0, asl #2]	@ tmp553, pH264Ctx_30(D)->PmvStoreUsedFlag
	strne	lr, [r1, #548]	@ D.46950, _345->pmv_address_idc
	b	.L3230	@
.L3320:
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc,
	beq	.L3200	@,
	ldrb	r3, [r4, #558]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.nal_unit_type, pH264Ctx_30(D)->CurrPic.nal_unit_type
	cmp	r3, #5	@ pH264Ctx_30(D)->CurrPic.nal_unit_type,
	beq	.L3201	@,
.L3204:
	mov	r0, r5	@, pH264Ctx
	add	r6, r5, #24576	@ tmp398, pH264Ctx,
	bl	SimpleSlideDPB	@
	add	r2, r5, #49664	@, pH264Ctx,
	ldr	r1, [r6, #2052]	@, pH264Ctx_30(D)->DPB.used_size
	add	r2, r2, #40	@,,
	mov	r0, r5	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmp	r0, #0	@,
	beq	.L3327	@,
.L3185:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L3236:
	ldr	r3, [r4, #960]	@ pH264Ctx_30(D)->CurrPic.frame_store, pH264Ctx_30(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	mvn	r6, #0	@ ret,
	ldr	r1, [r3, #508]	@, _259->logic_fs_id
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #960]	@ D.46957, pH264Ctx_30(D)->CurrPic.frame_store
	mov	r3, #0	@ tmp533,
	strb	r3, [r2, #4]	@ tmp533, _263->is_in_dpb
	ldr	r2, [r4, #960]	@ D.46957, pH264Ctx_30(D)->CurrPic.frame_store
	strb	r3, [r2, #1]	@ tmp533, _265->is_used
.L3234:
	mov	r0, r6	@ D.46946, ret
	mov	r3, #0	@ tmp541,
	strb	r3, [r4, #552]	@ tmp541, pH264Ctx_30(D)->CurrPic.state
.L3303:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3174:
	cmp	r1, #0	@ D.46948,
	bne	.L3237	@,
.L3180:
	add	r8, r5, #49664	@ pOutPic, pH264Ctx,
	add	r8, r8, #40	@ pOutPic, pOutPic,
.L3182:
	cmp	r2, #0	@ D.46947,
	beq	.L3183	@,
	ldrb	r3, [r8, #1]	@ zero_extendqisi2	@ pOutPic_6->field_pair_flag, pOutPic_6->field_pair_flag
	cmp	r3, #1	@ pOutPic_6->field_pair_flag,
	beq	.L3328	@,
.L3183:
	ldr	r3, [r8, #452]	@ D.46950, pOutPic_6->err_level
	str	r3, [r7, #544]	@ D.46950, pOutFrameStore_7->err_level
.L3184:
	mov	r1, r7	@, pOutFrameStore
	mov	r0, r5	@, pH264Ctx
	bl	GetImagePara	@
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L3185	@,
	ldrd	r2, [r8, #24]	@ D.46953, pOutPic,
	strd	r2, [r6, #8]	@ D.46953, pImg,
	ldrd	r2, [r8, #32]	@ D.46953, pOutPic,
	strd	r2, [r6, #16]	@ D.46953, pImg,
	ldrd	r2, [r8, #40]	@ D.46953, pOutPic,
	strd	r2, [r6, #24]	@ D.46953, pImg,
	ldr	r3, [r8, #84]	@ D.46950, pOutPic_6->fs_image.DispEnableFlag
	str	r3, [r6, #68]	@ D.46950, pImg_71->DispEnableFlag
	ldr	r3, [r8, #88]	@ D.46950, pOutPic_6->fs_image.DispFrameDistance
	str	r3, [r6, #72]	@ D.46950, pImg_71->DispFrameDistance
	ldr	r3, [r8, #92]	@ D.46950, pOutPic_6->fs_image.DistanceBeforeFirstFrame
	str	r3, [r6, #76]	@ D.46950, pImg_71->DistanceBeforeFirstFrame
	ldr	r3, [r8, #96]	@ D.46950, pOutPic_6->fs_image.GopNum
	str	r3, [r6, #80]	@ D.46950, pImg_71->GopNum
	ldr	r3, [r7, #544]	@ D.46950, pOutFrameStore_7->err_level
	cmp	r3, #0	@ D.46950,
	str	r3, [r6, #180]	@ D.46950, pImg_71->error_level
	beq	.L3191	@,
	ldr	r2, [r6, #140]	@ pImg_71->format, pImg_71->format
	ands	r8, r2, #3	@ D.46950, pImg_71->format,
	beq	.L3329	@,
.L3189:
	ldr	r2, [r5]	@ pH264Ctx_30(D)->pstExtraData, pH264Ctx_30(D)->pstExtraData
	ldr	r2, [r2, #4]	@ _95->s32OutErrThr, _95->s32OutErrThr
	cmp	r2, r3	@ _95->s32OutErrThr, D.46950
	bcc	.L3330	@,
.L3191:
	mov	r2, #1	@,
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, #3688]	@ pH264Ctx_30(D)->ChanID, pH264Ctx_30(D)->ChanID
	add	r3, r5, #8	@, pH264Ctx,
	mov	r2, r5	@, pH264Ctx
	mov	r1, #0	@,
	str	r6, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.46949,
	beq	.L3331	@,
	mov	r2, #0	@,
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	bl	FSP_SetDisplay	@
.L3193:
	ldr	r3, [r5]	@ pH264Ctx_30(D)->pstExtraData, pH264Ctx_30(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _270->s32FastForwardBackwardSpeed, _270->s32FastForwardBackwardSpeed
	add	r3, r3, #2032	@ D.46960, _270->s32FastForwardBackwardSpeed,
	add	r3, r3, #15	@ D.46960, D.46960,
	cmp	r3, #4096	@ D.46960,
	movcc	r3, #0	@ tmp370,
	strcc	r3, [r6, #84]	@ tmp370, pImg_71->u32RepeatCnt
	bcs	.L3332	@,
.L3195:
	ldr	r2, [r4, #3696]	@ pH264Ctx_30(D)->FirstFrameDisplayed, pH264Ctx_30(D)->FirstFrameDisplayed
	ldr	r3, [r4, #3712]	@ pH264Ctx_30(D)->PicOutCounter, pH264Ctx_30(D)->PicOutCounter
	cmp	r2, #2	@ pH264Ctx_30(D)->FirstFrameDisplayed,
	add	r3, r3, #2	@ D.46950, pH264Ctx_30(D)->PicOutCounter,
	str	r3, [r4, #3712]	@ D.46950, pH264Ctx_30(D)->PicOutCounter
	movne	r3, #1	@ tmp384,
	strne	r3, [r7, #528]	@ tmp384, pOutFrameStore_7->eFoState
	mov	r3, #2	@ tmp387,
	str	r3, [r4, #3696]	@ tmp387, pH264Ctx_30(D)->FirstFrameDisplayed
	ldr	r3, [r5]	@ pH264Ctx_30(D)->pstExtraData, pH264Ctx_30(D)->pstExtraData
	ldr	r3, [r3, #12]	@ D.46949, _331->s32DecOrderOutput
	cmp	r3, #2	@ D.46949,
	ldr	r3, [r4, #976]	@ pH264Ctx_30(D)->CurrPic.nal_ref_idc, pH264Ctx_30(D)->CurrPic.nal_ref_idc
	bne	.L3198	@,
	b	.L3320	@
.L3318:
	ldr	r1, [r4, #3696]	@ pH264Ctx_30(D)->FirstFrameDisplayed, pH264Ctx_30(D)->FirstFrameDisplayed
	cmp	r1, #2	@ pH264Ctx_30(D)->FirstFrameDisplayed,
	beq	.L3173	@,
	ldrb	r1, [r4, #554]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.non_existing, pH264Ctx_30(D)->CurrPic.non_existing
	cmp	r1, #0	@ pH264Ctx_30(D)->CurrPic.non_existing,
	bne	.L3173	@,
	b	.L3333	@
.L3326:
	ldr	ip, [r6, #2052]	@ D.46950, pH264Ctx_30(D)->DPB.used_size
.L3228:
	add	r2, r5, #49664	@, pH264Ctx,
	mov	r1, ip	@, D.46950
	add	r2, r2, #40	@,,
	mov	r0, r5	@, pH264Ctx
	bl	InsertFrmInDPB	@
	ldr	r3, [r6, #2052]	@ D.46950, pH264Ctx_30(D)->DPB.used_size
	str	r3, [r4, #1540]	@ D.46950, pH264Ctx_30(D)->PrevPic.Dpb_pos
	cmp	r0, #0	@,
	bne	.L3185	@,
	add	r3, r3, #1	@ D.46950, D.46950,
	mov	r0, r5	@, pH264Ctx
	str	r3, [r6, #2052]	@ D.46950, pH264Ctx_30(D)->DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
.L3205:
	mov	r6, #0	@ ret,
	b	.L3234	@
.L3319:
	cmp	r0, #0	@ pOutFrameStore_44->is_used,
	beq	.L3173	@,
	b	.L3180	@
.L3206:
	ldrb	r3, [r4, #553]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.field_pair_flag, pH264Ctx_30(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_30(D)->CurrPic.field_pair_flag,
	beq	.L3210	@,
	add	r6, r5, #24576	@ tmp551, pH264Ctx,
	ldr	r3, [r6, #2048]	@ D.46961, pH264Ctx_30(D)->DPB.size
	b	.L3220	@
.L3323:
	ldr	r3, [r6, #2048]	@ D.46961, pH264Ctx_30(D)->DPB.size
	b	.L3220	@
.L3210:
	ldr	r3, [r4, #1544]	@ D.46957, pH264Ctx_30(D)->pDirectOutBuf
	ldr	r0, [r4, #960]	@ D.46957, pH264Ctx_30(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.46957,
	rsb	r1, r3, r0	@ tmp438, D.46957, D.46957
	clz	r1, r1	@ tmp438, tmp438
	mov	r1, r1, lsr #5	@ tmp438, tmp438,
	moveq	r1, #0	@ tmp438,
	cmp	r1, #0	@ tmp438,
	beq	.L3334	@,
.L3222:
	mov	r0, r5	@, pH264Ctx
	bl	DirectOutput	@
	cmn	r0, #1	@ ret,
	mov	r6, r0	@ ret,
	beq	.L3335	@,
.L3223:
.L3171:
	bl	vfmw_dprint_nothing	@
	cmn	r6, #1	@ ret,
	bne	.L3234	@,
	b	.L3236	@
.L3317:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pH264Ctx
	bl	DirectOutput	@
	ldr	r3, [r4, #1028]	@ D.46950, pH264Ctx_30(D)->CurrPic.pmv_address_idc
	ldr	r2, [r4, #2168]	@ D.46950, pH264Ctx_30(D)->TotalPmvNum
	cmp	r3, r2	@ D.46950, D.46950
	mov	r6, r0	@ ret,
	addne	r3, r3, #12800	@ tmp283, D.46950,
	addne	r3, r3, #12	@ tmp283, tmp283,
	strne	r7, [r5, r3, asl #2]	@ tmp260, pH264Ctx_30(D)->PmvStoreUsedFlag
	strne	r2, [r4, #1028]	@ D.46950, pH264Ctx_30(D)->CurrPic.pmv_address_idc
	b	.L3223	@
.L3177:
	cmp	r1, #1	@ D.46952,
	beq	.L3336	@,
	cmp	r2, #0	@ D.46947,
	beq	.L3180	@,
	ldrb	r1, [r7, #1]	@ zero_extendqisi2	@ pOutFrameStore_44->is_used, pOutFrameStore_44->is_used
	cmp	r1, #0	@ pOutFrameStore_44->is_used,
	bne	.L3180	@,
	b	.L3173	@
.L3334:
	add	r6, r5, #24576	@ tmp551, pH264Ctx,
	ldr	ip, [r6, #2052]	@ D.46950, pH264Ctx_30(D)->DPB.used_size
	cmp	ip, #0	@ D.46950,
	beq	.L3214	@,
	ldr	r3, [r6, #1856]	@ pH264Ctx_30(D)->DPB.fs, pH264Ctx_30(D)->DPB.fs
	cmp	r0, r3	@ D.46957, pH264Ctx_30(D)->DPB.fs
	addne	r3, r5, #26368	@ ivtmp.3045, pH264Ctx,
	addne	r3, r3, #64	@ ivtmp.3045, ivtmp.3045,
	beq	.L3215	@,
.L3218:
	add	r1, r1, #1	@ i, i,
	cmp	r1, ip	@ i, D.46950
	beq	.L3214	@,
	ldr	r2, [r3, #4]!	@ MEM[base: _308, offset: 0B], MEM[base: _308, offset: 0B]
	cmp	r0, r2	@ D.46957, MEM[base: _308, offset: 0B]
	bne	.L3218	@,
.L3215:
	add	r2, r5, #49664	@, pH264Ctx,
	mov	r0, r5	@, pH264Ctx
	add	r2, r2, #40	@,,
	bl	InsertFrmInDPB	@
	cmn	r0, #1	@,
	beq	.L3185	@,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	bl	vfmw_dprint_nothing	@
	b	.L3205	@
.L3331:
	ldr	r3, [r4, #3720]	@ pH264Ctx_30(D)->numOutputFrame, pH264Ctx_30(D)->numOutputFrame
	add	r3, r3, #1	@ D.46949, pH264Ctx_30(D)->numOutputFrame,
	str	r3, [r4, #3720]	@ D.46949, pH264Ctx_30(D)->numOutputFrame
	ldr	r3, [r5]	@ D.46951, pH264Ctx_30(D)->pstExtraData
	str	r0, [r3, #732]	@ D.46949, _115->s32firstIdecodedflag
	b	.L3193	@
.L3321:
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L3337	@ tmp418,
	ldr	r3, [r3]	@ D.46954, g_event_report
	cmp	r3, #0	@ D.46954,
	beq	.L3208	@,
	mov	r2, r6	@, pH264Ctx_30(D)->CurrPic.non_existing
	mov	r1, #104	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	blx	r3	@ D.46954
.L3208:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	bl	vfmw_dprint_nothing	@
	b	.L3236	@
.L3327:
	ldr	r3, [r6, #2052]	@ pH264Ctx_30(D)->DPB.used_size, pH264Ctx_30(D)->DPB.used_size
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, #1	@ D.46950, pH264Ctx_30(D)->DPB.used_size,
	str	r3, [r6, #2052]	@ D.46950, pH264Ctx_30(D)->DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	bl	vfmw_dprint_nothing	@
	b	.L3205	@
.L3329:
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L3337	@ tmp349,
	ldr	r3, [r3]	@ D.46954, g_event_report
	cmp	r3, #0	@ D.46954,
	beq	.L3190	@,
	mov	r2, r8	@, D.46950
	mov	r1, #111	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	blx	r3	@ D.46954
.L3190:
	ldr	r3, [r6, #180]	@ D.46950, pImg_71->error_level
	cmp	r3, #0	@ D.46950,
	bne	.L3189	@,
	b	.L3191	@
.L3335:
	bl	vfmw_dprint_nothing	@
	b	.L3223	@
.L3324:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
	bl	vfmw_dprint_nothing	@
	b	.L3236	@
.L3325:
	ldr	r3, [r4, #3616]	@ pH264Ctx_30(D)->OldDecMode, pH264Ctx_30(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_30(D)->OldDecMode,
	bne	.L3222	@,
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_30(D)->CurrPic.structure, pH264Ctx_30(D)->CurrPic.structure
	cmp	r3, #0	@ pH264Ctx_30(D)->CurrPic.structure,
	ldrne	r3, [r4, #960]	@ pH264Ctx_30(D)->CurrPic.frame_store, pH264Ctx_30(D)->CurrPic.frame_store
	strne	r3, [r4, #1548]	@ pH264Ctx_30(D)->CurrPic.frame_store, pH264Ctx_30(D)->pLastFieldBuf
	b	.L3222	@
.L3332:
	mov	r1, r6	@, pImg
	mov	r0, r5	@, pH264Ctx
	bl	SetFrmRepeatCount.part.1	@
	b	.L3195	@
.L3322:
	bl	vfmw_dprint_nothing	@
	b	.L3200	@
.L3330:
	ldr	r1, [r7, #508]	@, pOutFrameStore_7->logic_fs_id
	mov	r2, #0	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_30(D)->ChanID
	bl	FSP_SetDisplay	@
	bl	vfmw_dprint_nothing	@
	b	.L3236	@
.L3201:
	mov	r0, r5	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	beq	.L3204	@,
	mvn	r0, #0	@ D.46946,
	b	.L3303	@
.L3328:
	mov	r2, #3	@ tmp330,
	ldr	r3, [r7, #544]	@ pOutFrameStore_7->err_level, pOutFrameStore_7->err_level
	strb	r2, [r7, #1]	@ tmp330, pOutFrameStore_7->is_used
	ldr	r2, [r8, #452]	@ pOutPic_6->err_level, pOutPic_6->err_level
	add	r3, r3, r2	@ D.46950, pOutFrameStore_7->err_level, pOutPic_6->err_level
	str	r3, [r7, #544]	@ D.46950, pOutFrameStore_7->err_level
	b	.L3184	@
.L3336:
	add	r8, r5, #50176	@ pOutPic, pH264Ctx,
	ldr	r7, [r4, #1440]	@ pOutFrameStore, pH264Ctx_30(D)->LastPic.frame_store
	add	r8, r8, #8	@ pOutPic, pOutPic,
	ldrb	r2, [r4, #1035]	@ zero_extendqisi2	@ D.46947, MEM[(struct H264_CURRPIC_S *)pH264Ctx_30(D) + 50184B].structure
	b	.L3182	@
.L3338:
	.align	2
.L3337:
	.word	g_event_report
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
	add	r8, r0, #20480	@ tmp477, pH264Ctx,
	.pad #12
	sub	sp, sp, #12	@,,
	ldrb	r4, [r8, #201]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag, pH264Ctx_15(D)->CurrSlice.field_pic_flag
	cmp	r4, #0	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag,
	beq	.L3340	@,
	ldrb	r3, [r8, #202]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag, pH264Ctx_15(D)->CurrSlice.bottom_field_flag
	cmp	r3, #0	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag,
	beq	.L3402	@,
	add	r7, r0, #49152	@ tmp476, pH264Ctx,
	ldr	r4, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r4, #2	@ pH264Ctx_15(D)->OldDecMode,
	beq	.L3399	@,
	ldrb	r3, [r7, #1512]	@ zero_extendqisi2	@ pH264Ctx_15(D)->PrevPic.structure, pH264Ctx_15(D)->PrevPic.structure
	mov	r2, #0	@ tmp407,
	mov	r4, #2	@ structure,
	strb	r2, [r7, #553]	@ tmp407, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_15(D)->PrevPic.structure,
	bne	.L3370	@,
.L3366:
	ldr	r2, [r7, #1520]	@ pH264Ctx_15(D)->PrevPic.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r3, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	cmp	r2, r3	@ pH264Ctx_15(D)->PrevPic.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	bne	.L3370	@,
	ldr	r3, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	cmp	r3, #0	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc,
	ldr	r3, [r7, #1516]	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	beq	.L3403	@,
	cmp	r3, #0	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc,
	beq	.L3370	@,
.L3346:
	ldr	r3, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	ldr	r2, [r7, #3700]	@ pH264Ctx_15(D)->PrevStorePicCounter, pH264Ctx_15(D)->PrevStorePicCounter
	rsb	r3, r2, r3	@ D.46989, pH264Ctx_15(D)->PrevStorePicCounter, pH264Ctx_15(D)->PicCounter
	cmp	r3, #2	@ D.46989,
	bhi	.L3370	@,
	ldr	ip, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r3, #1	@ tmp245,
	strb	r3, [r7, #553]	@ tmp245, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	ip, #0	@ D.46987,
	beq	.L3348	@,
	cmp	r4, #2	@ structure,
	beq	.L3404	@,
	cmp	r4, #1	@ structure,
	beq	.L3405	@,
.L3373:
	mov	r6, #0	@ D.46989,
	b	.L3352	@
.L3340:
	add	r7, r0, #49152	@ tmp476, pH264Ctx,
	ldr	r3, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r3, #2	@ pH264Ctx_15(D)->OldDecMode,
	strneb	r4, [r7, #553]	@ pH264Ctx_15(D)->CurrSlice.field_pic_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	beq	.L3399	@,
.L3370:
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r7, #2164]	@ D.46989, pH264Ctx_15(D)->TotalFsNum
	str	r1, [sp, #4]	@ IsDecGap, %sfp
	mov	r1, #0	@ tmp266,
	cmp	r0, r1	@ D.46989,
	strb	r1, [r7, #552]	@ tmp266, pH264Ctx_15(D)->CurrPic.state
	beq	.L3360	@,
	add	r2, r5, #27136	@ ivtmp.3071, pH264Ctx,
	add	r10, r5, #26368	@ ivtmp.3058, pH264Ctx,
	add	r2, r2, #168	@ ivtmp.3071, ivtmp.3071,
	add	r10, r10, #64	@ ivtmp.3058, ivtmp.3058,
	add	r9, r5, #24576	@ tmp478, pH264Ctx,
.L3359:
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[base: _192, offset: 1B], MEM[base: _192, offset: 1B]
	cmp	r3, #0	@ MEM[base: _192, offset: 1B],
	bne	.L3355	@,
	cmp	r2, #0	@ ivtmp.3071,
	beq	.L3375	@,
	ldr	lr, [r9, #2052]	@ D.46989, pH264Ctx_15(D)->DPB.used_size
	cmp	lr, #0	@ D.46989,
	beq	.L3375	@,
	ldr	ip, [r9, #1856]	@ pH264Ctx_15(D)->DPB.fs, pH264Ctx_15(D)->DPB.fs
	cmp	ip, r2	@ pH264Ctx_15(D)->DPB.fs, ivtmp.3071
	beq	.L3355	@,
	mov	ip, r10	@ ivtmp.3058, ivtmp.3058
	b	.L3357	@
.L3358:
	ldr	fp, [ip, #4]!	@ MEM[base: _153, offset: 0B], MEM[base: _153, offset: 0B]
	cmp	fp, r2	@ MEM[base: _153, offset: 0B], ivtmp.3071
	beq	.L3355	@,
.L3357:
	add	r3, r3, #1	@ i, i,
	cmp	r3, lr	@ i, D.46989
	bne	.L3358	@,
.L3375:
	mov	r9, #560	@ tmp432,
	movw	ip, #27848	@ tmp434,
	mla	r9, r9, r1, r5	@ tmp433, tmp432, i, pH264Ctx
	mov	r10, #0	@ tmp436,
	str	r2, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r6, #1	@ tmp427,
	mov	fp, r2	@ D.46987, ivtmp.3071
	strb	r6, [r7, #552]	@ tmp427, pH264Ctx_15(D)->CurrPic.state
	add	r1, r9, #27136	@, tmp433,
	mov	lr, #101	@ tmp439,
	mov	r2, #392	@,
	add	r1, r1, #176	@,,
	str	r10, [r9, ip]	@ tmp436, MEM[(struct H264_FRAMESTORE_S *)pH264Ctx_15(D)].FrameStore[i_177].err_level
	add	r0, r7, #568	@, tmp476,
	str	lr, [r7, #1004]	@ tmp439, pH264Ctx_15(D)->CurrPic.err_level
	bl	memcpy	@
	add	r1, r9, #27136	@ tmp458, tmp433,
	str	r10, [r7, #748]	@ tmp436, pH264Ctx_15(D)->CurrPic.fs_image.error_level
	strb	r10, [r1, #171]	@ tmp436, MEM[(struct H264_FRAMESTORE_S *)pH264Ctx_15(D)].FrameStore[i_177].mode_skip_flag
	str	r10, [fp, #532]	@ tmp436, _9->is_displayed
	ldr	r2, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	strb	r10, [r2, #2]	@ tmp436, _57->is_reference
	ldr	r2, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	strb	r6, [r2, #4]	@ tmp427, _59->is_in_dpb
	ldr	r3, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	str	r10, [r3, #528]	@ tmp436, _61->eFoState
	ldrb	r9, [r7, #552]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrPic.state, pH264Ctx_15(D)->CurrPic.state
	cmp	r9, r6	@ pH264Ctx_15(D)->CurrPic.state,
	bne	.L3360	@,
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
	beq	.L3361	@,
	ldr	r3, [r5]	@ pH264Ctx_15(D)->pstExtraData, pH264Ctx_15(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _83->eCapLevel, _83->eCapLevel
	cmp	r3, #25	@ _83->eCapLevel,
	beq	.L3406	@,
.L3362:
	ldr	r0, [r7, #960]	@ pH264Ctx_15(D)->CurrPic.frame_store, pH264Ctx_15(D)->CurrPic.frame_store
	mov	r2, #392	@,
	add	r1, r10, #8	@, pstLFs,
	add	r0, r0, #8	@, pH264Ctx_15(D)->CurrPic.frame_store,
	bl	memcpy	@
	ldr	r9, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	add	r0, r5, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r0, r0, #56	@,,
	add	r1, r9, #8	@, D.46987,
	bl	memcpy	@
	str	r6, [r9, #508]	@ LogicFsID, _123->logic_fs_id
	ldrsb	r3, [r10, #4]	@ pstLFs_74->PmvIdc, pstLFs_74->PmvIdc
	ldr	ip, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	str	r3, [r7, #1028]	@ pstLFs_74->PmvIdc, pH264Ctx_15(D)->CurrPic.pmv_address_idc
.L3352:
	uxtb	r2, r4	@ D.46988, structure
	strb	r2, [r7, #555]	@ D.46988, pH264Ctx_15(D)->CurrPic.structure
	ldrb	r3, [r8, #201]	@ zero_extendqisi2	@ D.46985, pH264Ctx_15(D)->CurrSlice.field_pic_flag
	cmp	r3, #0	@ D.46985,
	movne	r3, #3	@ D.46985,
	strb	r3, [ip, #400]	@ D.46985, _180->frame.structure
	ldrb	r3, [r7, #553]	@ zero_extendqisi2	@ pH264Ctx_15(D)->CurrPic.field_pair_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r3, #1	@ pH264Ctx_15(D)->CurrPic.field_pair_flag,
	beq	.L3407	@,
	strb	r2, [r7, #1512]	@ D.46988, pH264Ctx_15(D)->PrevPic.structure
	cmp	r4, #0	@ structure,
	ldr	r3, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	ldr	r2, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	movne	r0, #0	@ D.46986,
	moveq	r0, r4	@ D.46986, structure
	str	r3, [r7, #1520]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r3, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	str	r6, [r7, #1532]	@ D.46989, pH264Ctx_15(D)->PrevPic.image_id
	str	r2, [r7, #1528]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PrevPic.pic_counter
	str	r3, [r7, #1516]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	movne	r3, #1	@ tmp398,
	streqb	r4, [r7, #1536]	@ structure, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
	strneb	r3, [r7, #1536]	@ tmp398, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
.L3395:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3355:
	add	r1, r1, #1	@ i, i,
	add	r2, r2, #560	@ ivtmp.3071, ivtmp.3071,
	cmp	r1, r0	@ i, D.46989
	bne	.L3359	@,
.L3360:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.46986,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3402:
	add	r7, r0, #49152	@ tmp476, pH264Ctx,
	ldr	r2, [r7, #3616]	@ pH264Ctx_15(D)->OldDecMode, pH264Ctx_15(D)->OldDecMode
	cmp	r2, #2	@ pH264Ctx_15(D)->OldDecMode,
	beq	.L3408	@,
	ldrb	r2, [r7, #1512]	@ zero_extendqisi2	@ pH264Ctx_15(D)->PrevPic.structure, pH264Ctx_15(D)->PrevPic.structure
	mov	r4, #1	@ structure,
	strb	r3, [r7, #553]	@ pH264Ctx_15(D)->CurrSlice.bottom_field_flag, pH264Ctx_15(D)->CurrPic.field_pair_flag
	cmp	r2, #2	@ pH264Ctx_15(D)->PrevPic.structure,
	bne	.L3370	@,
	b	.L3366	@
.L3408:
	mov	r4, #1	@ structure,
.L3399:
	mov	r3, #0	@ tmp256,
	strb	r3, [r7, #553]	@ tmp256, pH264Ctx_15(D)->CurrPic.field_pair_flag
	b	.L3370	@
.L3406:
	add	r2, r5, #12288	@ tmp299, pH264Ctx,
	ldr	r9, [r0, #180]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride
	ldr	r0, [r0, #112]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_phy_addr, MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_phy_addr
	ldr	r3, [r2, #1276]	@ pH264Ctx_15(D)->CurHeightInMb, pH264Ctx_15(D)->CurHeightInMb
	ldr	r2, [r2, #1272]	@ pH264Ctx_15(D)->CurWidthInMb, pH264Ctx_15(D)->CurWidthInMb
	mov	r3, r3, asl #4	@ HeightAligh, pH264Ctx_15(D)->CurHeightInMb,
	str	r3, [r10, #156]	@ HeightAligh, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_height
	mov	r2, r2, asl #4	@ D.46991, pH264Ctx_15(D)->CurWidthInMb,
	str	r2, [r10, #152]	@ D.46991, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_width
	mul	r9, r9, r3	@ ChromOffset, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride, HeightAligh
	add	r0, r9, r0	@ D.46989, ChromOffset, MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_phy_addr
	str	r0, [r10, #116]	@ D.46989, MEM[(struct IMAGE *)pstLFs_74 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r10, #128]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_2d_phy_addr, MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_2d_phy_addr
	ldr	r1, [r10, #96]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].top_luma_phy_addr, MEM[(struct IMAGE *)pstLFs_74 + 8B].top_luma_phy_addr
	add	r3, r9, r3	@ D.46989, ChromOffset, MEM[(struct IMAGE *)pstLFs_74 + 8B].luma_2d_phy_addr
	ldr	r2, [r10, #180]	@ MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride
	add	r9, r9, r1	@ D.46989, ChromOffset, MEM[(struct IMAGE *)pstLFs_74 + 8B].top_luma_phy_addr
	str	r3, [r10, #132]	@ D.46989, MEM[(struct IMAGE *)pstLFs_74 + 8B].chrom_2d_phy_addr
	str	r9, [r10, #100]	@ D.46989, MEM[(struct IMAGE *)pstLFs_74 + 8B].top_chrom_phy_addr
	add	r9, r9, r2	@ D.46989, D.46989, MEM[(struct IMAGE *)pstLFs_74 + 8B].image_stride
	str	r9, [r10, #108]	@ D.46989, MEM[(struct IMAGE *)pstLFs_74 + 8B].btm_chrom_phy_addr
	str	r0, [r10, #44]	@, MEM[(struct IMAGE *)pstLFs_74 + 8B].chrom_vir_addr
	mov	r0, r3	@, D.46989
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #60]	@, MEM[(struct IMAGE *)pstLFs_74 + 8B].chrom_2d_vir_addr
	b	.L3362	@
.L3407:
	mov	r3, #0	@ tmp353,
	strb	r3, [r7, #1512]	@ tmp353, pH264Ctx_15(D)->PrevPic.structure
	ldr	r1, [r8, #220]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->CurrSlice.frame_num
	mov	r0, r3	@ D.46986, tmp353
	ldr	r2, [r7, #3704]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PicCounter
	str	r1, [r7, #1520]	@ pH264Ctx_15(D)->CurrSlice.frame_num, pH264Ctx_15(D)->PrevPic.frame_num
	ldr	r1, [r8, #232]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->CurrSlice.nal_ref_idc
	strb	r3, [r7, #1536]	@ tmp353, pH264Ctx_15(D)->PrevPic.FrameStoreFlag
	str	r6, [r7, #1532]	@ D.46989, pH264Ctx_15(D)->PrevPic.image_id
	str	r1, [r7, #1516]	@ pH264Ctx_15(D)->CurrSlice.nal_ref_idc, pH264Ctx_15(D)->PrevPic.nal_ref_idc
	str	r2, [r7, #1528]	@ pH264Ctx_15(D)->PicCounter, pH264Ctx_15(D)->PrevPic.pic_counter
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3403:
	cmp	r3, #0	@ pH264Ctx_15(D)->PrevPic.nal_ref_idc,
	beq	.L3346	@,
	b	.L3370	@
.L3361:
	ldr	r2, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	strb	r3, [r7, #552]	@ tmp295, pH264Ctx_15(D)->CurrPic.state
	strb	r3, [r2, #4]	@ tmp295, _79->is_in_dpb
	bl	vfmw_dprint_nothing	@
	mov	r1, r9	@, pH264Ctx_15(D)->CurrPic.state
	mov	r0, r5	@, pH264Ctx
	bl	ClearAll	@
	mvn	r0, #0	@ D.46986,
	b	.L3395	@
.L3405:
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ _32->is_used, _32->is_used
	cmp	r3, #2	@ _32->is_used,
	bne	.L3399	@,
.L3351:
	ldr	ip, [r7, #960]	@ D.46987, pH264Ctx_15(D)->CurrPic.frame_store
	cmp	ip, #0	@ D.46987,
	bne	.L3373	@,
	b	.L3370	@
.L3404:
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.46985, _32->is_used
	cmp	r3, #1	@ D.46985,
	bne	.L3399	@,
	b	.L3351	@
.L3348:
	strb	ip, [r7, #553]	@ D.46987, pH264Ctx_15(D)->CurrPic.field_pair_flag
	b	.L3370	@
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
	add	r1, r0, #24576	@ tmp292, pH264Ctx,
	add	r3, r0, #12288	@ tmp170, pH264Ctx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r2, #2004	@ tmp165,
	ldr	ip, [r1, #1804]	@ D.47010, pH264Ctx_8(D)->CurrMarkIdx
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r9, r0, #20480	@ tmp291, pH264Ctx,
	ldrb	r0, [r3, #1317]	@ zero_extendqisi2	@ pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag, pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag
	.pad #28
	sub	sp, sp, #28	@,,
	add	r6, r5, #16384	@ tmp290, pH264Ctx,
	mul	r2, r2, ip	@ tmp164, tmp165, D.47010
	cmp	r0, #1	@ pH264Ctx_8(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag,
	add	fp, r5, #49152	@ tmp289, pH264Ctx,
	ldr	r10, [r9, #220]	@ D.47010, pH264Ctx_8(D)->CurrSlice.frame_num
	moveq	r3, #2	@ nal_ref_idc,
	movne	r3, #0	@ nal_ref_idc,
	add	r0, r5, r2	@ tmp166, pH264Ctx, tmp164
	str	r3, [sp]	@ nal_ref_idc, %sfp
	ldr	r3, [r6, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	add	r0, r0, #22272	@ tmp168, tmp166,
	ldr	ip, [r9, #216]	@ D.47010, pH264Ctx_8(D)->CurrSlice.prev_frame_num
	add	r2, r0, #100	@ D.47013, D.47013,
	ldr	r7, [r6, #108]	@ D.47010, pH264Ctx_8(D)->CurrSPS.log2_max_frame_num_minus4
	str	r3, [sp, #12]	@ tmp1, %sfp
	ldrb	r3, [r0, #103]	@ zero_extendqisi2	@ D.47012, pH264Ctx_8(D)->Mark[_22].adaptive_ref_pic_marking_mode_flag
	str	r3, [sp, #20]	@ D.47012, %sfp
	ldr	r3, [r6, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	str	r2, [fp, #964]	@ D.47013, pH264Ctx_8(D)->CurrPic.pMarkPara
	ldr	r4, [r1, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	str	r3, [sp, #16]	@ tmp2, %sfp
	cmp	r4, #0	@ pH264Ctx_8(D)->DPB.used_size,
	beq	.L3426	@,
	add	r7, r7, #4	@ D.47010, D.47010,
	mov	r4, #1	@ tmp184,
	mov	r3, r4, asl r7	@ MaxFrameNum, tmp184,
	add	r0, ip, r4	@, D.47010,
	str	r3, [sp, #4]	@ MaxFrameNum, %sfp
	mov	r8, #0	@ tmp193,
	mov	r1, r3	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	str	r8, [r6, #3464]	@ tmp193, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	str	r8, [r6, #3460]	@ tmp193, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	mov	r7, r1	@ UnusedShortTermFrameNum,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r10, r7	@ D.47010, UnusedShortTermFrameNum
	strgt	r8, [sp, #8]	@ tmp193, %sfp
	bgt	.L3417	@,
	b	.L3418	@
.L3415:
	ldrb	r3, [sp, #8]	@ zero_extendqisi2	@, %sfp
	mov	r1, #0	@,
	mov	r0, r5	@, pH264Ctx
	strb	r3, [fp, #556]	@ tmp313, pH264Ctx_8(D)->CurrPic.is_long_term
	bl	StorePicInDPB	@
	cmp	r0, #0	@,
	ldr	r1, [sp, #4]	@, %sfp
	add	r0, r7, #1	@, UnusedShortTermFrameNum,
	bne	.L3425	@,
	str	r7, [r9, #216]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrSlice.prev_frame_num
	bl	__aeabi_idivmod	@
	cmp	r10, r1	@ D.47010, UnusedShortTermFrameNum
	mov	r7, r1	@ UnusedShortTermFrameNum,
	ble	.L3418	@,
.L3417:
	mov	r1, #1	@,
	mov	r0, r5	@, pH264Ctx
	bl	AllocFrameStore	@
	subs	r8, r0, #0	@ ret,
	bne	.L3425	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [fp, #960]	@ D.47014, pH264Ctx_8(D)->CurrPic.frame_store
	strb	r4, [fp, #558]	@ tmp293, pH264Ctx_8(D)->CurrPic.nal_unit_type
	str	r7, [r2, #512]	@ UnusedShortTermFrameNum, _37->frame_num
	ldr	r2, [fp, #960]	@ D.47014, pH264Ctx_8(D)->CurrPic.frame_store
	str	r7, [fp, #968]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrPic.frame_num
	str	r7, [r2, #412]	@ UnusedShortTermFrameNum, _41->frame.pic_num
	ldr	r2, [fp, #960]	@ D.47014, pH264Ctx_8(D)->CurrPic.frame_store
	ldr	r3, [sp]	@ nal_ref_idc, %sfp
	str	r3, [fp, #976]	@ nal_ref_idc, pH264Ctx_8(D)->CurrPic.nal_ref_idc
	str	r8, [r2, #408]	@ ret, _45->frame.long_term_pic_num
	ldr	r2, [fp, #960]	@ D.47014, pH264Ctx_8(D)->CurrPic.frame_store
	str	r4, [r2, #532]	@ tmp293, _47->is_displayed
	ldr	r2, [fp, #960]	@ D.47014, pH264Ctx_8(D)->CurrPic.frame_store
	strb	r8, [r2, #4]	@ ret, _49->is_in_dpb
	ldr	r2, [fp, #960]	@ D.47014, pH264Ctx_8(D)->CurrPic.frame_store
	strb	r4, [r2]	@ tmp293, _51->non_existing
	ldr	r2, [fp, #964]	@ D.47013, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	r4, [fp, #554]	@ tmp293, pH264Ctx_8(D)->CurrPic.non_existing
	strb	r8, [r2, #3]	@ ret, _54->adaptive_ref_pic_marking_mode_flag
	ldr	r2, [r6, #112]	@ pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type, pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type
	cmp	r2, #0	@ pH264Ctx_8(D)->CurrSPS.pic_order_cnt_type,
	beq	.L3415	@,
	str	r7, [r6, #3476]	@ UnusedShortTermFrameNum, pH264Ctx_8(D)->CurrPOC.frame_num
	mov	r0, r5	@, pH264Ctx
	bl	DecPOC	@
	ldr	r2, [r6, #3456]	@ pH264Ctx_8(D)->CurrPOC.ThisPOC, pH264Ctx_8(D)->CurrPOC.ThisPOC
	str	r2, [fp, #980]	@ pH264Ctx_8(D)->CurrPOC.ThisPOC, pH264Ctx_8(D)->CurrPic.thispoc
	ldr	r2, [r6, #3452]	@ pH264Ctx_8(D)->CurrPOC.framepoc, pH264Ctx_8(D)->CurrPOC.framepoc
	str	r2, [fp, #984]	@ pH264Ctx_8(D)->CurrPOC.framepoc, pH264Ctx_8(D)->CurrPic.framepoc
	ldr	r2, [r6, #3444]	@ pH264Ctx_8(D)->CurrPOC.toppoc, pH264Ctx_8(D)->CurrPOC.toppoc
	str	r2, [fp, #988]	@ pH264Ctx_8(D)->CurrPOC.toppoc, pH264Ctx_8(D)->CurrPic.toppoc
	ldr	r2, [r6, #3448]	@ pH264Ctx_8(D)->CurrPOC.bottompoc, pH264Ctx_8(D)->CurrPOC.bottompoc
	str	r2, [fp, #992]	@ pH264Ctx_8(D)->CurrPOC.bottompoc, pH264Ctx_8(D)->CurrPic.bottompoc
	b	.L3415	@
.L3425:
	ldr	r3, [sp, #12]	@ tmp1, %sfp
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@, %sfp
	str	r3, [r6, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [sp, #16]	@ tmp2, %sfp
	str	r3, [r6, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [fp, #964]	@ D.47013, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	r2, [r3, #3]	@ tmp316,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.47009,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3426:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.47009, pH264Ctx_8(D)->DPB.used_size
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3418:
	ldr	r3, [sp, #12]	@ tmp1, %sfp
	mov	r0, #0	@ D.47009,
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@, %sfp
	str	r3, [r6, #3460]	@ tmp1, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [sp, #16]	@ tmp2, %sfp
	str	r3, [r6, #3464]	@ tmp2, pH264Ctx_8(D)->CurrPOC.delta_pic_order_cnt
	ldr	r3, [fp, #964]	@ D.47013, pH264Ctx_8(D)->CurrPic.pMarkPara
	strb	r2, [r3, #3]	@ tmp308, _85->adaptive_ref_pic_marking_mode_flag
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
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
	ldr	r4, [r0, #352]	@ D.47018, pH264Ctx_8(D)->ImageQue.ResetMagicWord
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #52896	@,
	bl	__memzero	@
	add	r0, r6, #8	@, pH264Ctx,
	str	r4, [r6, #352]	@ D.47018, pH264Ctx_8(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	mov	r3, #0	@ tmp150,
	str	r7, [r6]	@ pstExtraData, pH264Ctx_8(D)->pstExtraData
	str	r3, [r6, #360]	@ tmp150, pH264Ctx_8(D)->pH264DecParam
	str	r3, [r6, #364]	@ tmp150, pH264Ctx_8(D)->StartMode
	ldr	r3, [r7, #32]	@ pstExtraData_14(D)->eCapLevel, pstExtraData_14(D)->eCapLevel
	cmp	r3, #25	@ pstExtraData_14(D)->eCapLevel,
	beq	.L3448	@,
	add	r5, r6, #12288	@ tmp293, pH264Ctx,
	mov	r1, #32	@ tmp161,
	mov	r2, #256	@ tmp164,
	mov	r3, #136	@ tmp167,
	str	r1, [r5, #1284]	@ tmp161, pH264Ctx_8(D)->MaxSpsNum
	str	r2, [r5, #1288]	@ tmp164, pH264Ctx_8(D)->MaxPpsNum
	str	r3, [r5, #1280]	@ tmp167, pH264Ctx_8(D)->MaxSliceNum
.L3429:
	ldr	r0, [r7, #504]	@, pstExtraData_14(D)->s32ContextMemAddr
	mov	r8, #2208	@ tmp180,
	bl	MEM_Phy2Vir	@
	ldr	r9, [r5, #1284]	@ D.47018, pH264Ctx_8(D)->MaxSpsNum
	ldr	r3, [r6]	@ pH264Ctx_8(D)->pstExtraData, pH264Ctx_8(D)->pstExtraData
	mov	r2, #4000	@ tmp175,
	ldr	r10, [r5, #1288]	@ D.47018, pH264Ctx_8(D)->MaxPpsNum
	add	r4, r6, #49152	@ tmp292, pH264Ctx,
	mul	r2, r2, r9	@ D.47018, tmp175, D.47018
	ldr	r3, [r3, #500]	@ _32->s32BasicCtxSize, _32->s32BasicCtxSize
	mul	r1, r8, r10	@ D.47018, tmp180, D.47018
	add	r3, r0, r3	@ D.47025,, _32->s32BasicCtxSize
	str	r3, [r5, #1292]	@ D.47025, pH264Ctx_8(D)->SPS
	add	ip, r3, r2	@ D.47026, D.47025, D.47018
	str	ip, [r5, #1296]	@ D.47026, pH264Ctx_8(D)->PPS
	cmp	r3, #0	@ D.47025,
	cmpne	ip, #0	@, D.47026,
	add	r0, ip, r1	@ D.47027, D.47026, D.47018
	str	r0, [r4, #3608]	@ D.47027, pH264Ctx_8(D)->DecSlicePara
	moveq	lr, #1	@ tmp187,
	movne	lr, #0	@ tmp187,
	cmp	r0, #0	@ D.47027,
	orreq	lr, lr, #1	@,, tmp193, tmp187
	cmp	lr, #0	@ tmp193,
	bne	.L3436	@,
	ldr	lr, [r7, #524]	@ pstExtraData_14(D)->s32KeepSPSPPS, pstExtraData_14(D)->s32KeepSPSPPS
	cmp	lr, #0	@ pstExtraData_14(D)->s32KeepSPSPPS,
	bne	.L3432	@,
	cmp	r2, #0	@ D.47018,
	bne	.L3449	@,
	cmp	r1, #0	@ D.47018,
	bne	.L3450	@,
.L3447:
	ldr	r9, [r5, #1284]	@ D.47018, pH264Ctx_8(D)->MaxSpsNum
	ldr	r0, [r4, #3608]	@ D.47027, pH264Ctx_8(D)->DecSlicePara
.L3432:
	add	r2, r6, #16384	@ tmp211, pH264Ctx,
	movw	r3, #4060	@ tmp217,
	str	r10, [r2, #1228]	@ D.47018, pH264Ctx_8(D)->CurrPPS.pic_parameter_set_id
	ldr	r1, [r5, #1280]	@ pH264Ctx_8(D)->MaxSliceNum, pH264Ctx_8(D)->MaxSliceNum
	str	r9, [r5, #2044]	@ D.47018, pH264Ctx_8(D)->CurrSPS.seq_parameter_set_id
	mul	r1, r3, r1	@ __n, tmp217, pH264Ctx_8(D)->MaxSliceNum
	cmp	r1, #0	@ __n,
	bne	.L3451	@,
.L3435:
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
	cmn	r0, #1	@ D.47021,
	str	r0, [r4, #3688]	@ D.47021, pH264Ctx_8(D)->ChanID
	beq	.L3436	@,
	mov	r1, r5	@, tmp225
	mov	r0, r6	@, pH264Ctx
	bl	ClearAll	@
	mov	r0, r7	@ D.47017, tmp288
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3451:
	bl	__memzero	@
	b	.L3435	@
.L3448:
	ldr	r3, [r7, #580]	@ D.47021, pstExtraData_14(D)->stChanOption.s32MaxSpsNum
	add	r5, r6, #12288	@ tmp293, pH264Ctx,
	str	r3, [r5, #1284]	@ D.47021, pH264Ctx_8(D)->MaxSpsNum
	ldr	r3, [r7, #584]	@ D.47021, pstExtraData_14(D)->stChanOption.s32MaxPpsNum
	str	r3, [r5, #1288]	@ D.47021, pH264Ctx_8(D)->MaxPpsNum
	ldr	r3, [r7, #576]	@ D.47021, pstExtraData_14(D)->stChanOption.s32MaxSliceNum
	str	r3, [r5, #1280]	@ D.47021, pH264Ctx_8(D)->MaxSliceNum
	b	.L3429	@
.L3449:
	mov	r1, r2	@, D.47018
	mov	r0, r3	@, D.47025
	bl	__memzero	@
	ldr	r10, [r5, #1288]	@ D.47018, pH264Ctx_8(D)->MaxPpsNum
	ldr	ip, [r5, #1296]	@ D.47026, pH264Ctx_8(D)->PPS
	mul	r1, r8, r10	@ D.47018, tmp180, D.47018
	cmp	r1, #0	@ D.47018,
	beq	.L3447	@,
.L3450:
	mov	r0, ip	@, D.47026
	bl	__memzero	@
	ldr	r10, [r5, #1288]	@ D.47018, pH264Ctx_8(D)->MaxPpsNum
	b	.L3447	@
.L3436:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.47017,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	add	r9, r0, #12288	@ tmp901, pH264Ctx,
	add	r8, r0, #20480	@ tmp900, pH264Ctx,
	add	r4, r0, #49152	@ tmp898, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r9, #1296]	@ pH264Ctx_34(D)->PPS, pH264Ctx_34(D)->PPS
	ldr	r0, [r8, #212]	@ pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id
	mov	r10, #2208	@ tmp383,
	ldrb	r2, [r4, #552]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPic.state, pH264Ctx_34(D)->CurrPic.state
	mov	r7, #4000	@ tmp389,
	ldr	r3, [r9, #1292]	@ pH264Ctx_34(D)->SPS, pH264Ctx_34(D)->SPS
	.pad #28
	sub	sp, sp, #28	@,,
	mla	r10, r10, r0, r1	@ pPPS, tmp383, pH264Ctx_34(D)->CurrSlice.pic_parameter_set_id, pH264Ctx_34(D)->PPS
	cmp	r2, #0	@ pH264Ctx_34(D)->CurrPic.state,
	ldr	r2, [r10, #28]	@ pPPS_38->seq_parameter_set_id, pPPS_38->seq_parameter_set_id
	mla	r7, r7, r2, r3	@ pSPS, tmp389, pPPS_38->seq_parameter_set_id, pH264Ctx_34(D)->SPS
	beq	.L3453	@,
	ldr	r3, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	cmp	r3, #0	@ D.47103,
	beq	.L3454	@,
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ _44->is_used, _44->is_used
	cmp	r6, #0	@ _44->is_used,
	beq	.L3577	@,
.L3455:
	mov	r3, #0	@ tmp411,
	strb	r3, [r4, #552]	@ tmp411, pH264Ctx_34(D)->CurrPic.state
.L3453:
	add	r1, sp, #20	@,,
	mov	r0, r5	@, pH264Ctx
	bl	GetReRangeFlag	@
	ldr	r2, [r9, #2044]	@ pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id, pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id
	ldr	r3, [r7, #744]	@ pSPS_42->seq_parameter_set_id, pSPS_42->seq_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrSPS.seq_parameter_set_id, pSPS_42->seq_parameter_set_id
	mov	r6, r0	@ D.47104,
	beq	.L3578	@,
.L3456:
	add	r0, r5, #13568	@, pH264Ctx,
	mov	r3, #0	@ tmp419,
	add	r0, r0, #20	@,,
	strb	r3, [r7, #24]	@ tmp419, pSPS_42->is_refreshed
	mov	r2, #4000	@,
	mov	r1, r7	@, pSPS
	bl	memmove	@
.L3457:
	ldr	r3, [sp, #20]	@ dpb_changed, dpb_changed
	cmp	r3, #0	@ dpb_changed,
	beq	.L3568	@,
	ldr	r2, [r5]	@ D.47105, pH264Ctx_34(D)->pstExtraData
	ldr	r3, [r2, #608]	@ _65->stChanOption.s32ReRangeEn, _65->stChanOption.s32ReRangeEn
	cmp	r3, #0	@ _65->stChanOption.s32ReRangeEn,
	beq	.L3579	@,
.L3460:
	ldr	r3, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	cmp	r6, #0	@ D.47104,
	add	r3, r3, #1	@ D.47096, pH264Ctx_34(D)->SeqCnt,
	str	r3, [r4, #3648]	@ D.47096, pH264Ctx_34(D)->SeqCnt
	beq	.L3469	@,
	ldr	r3, [r2, #692]	@ _65->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _65->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _65->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3580	@,
.L3470:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pH264Ctx
	bl	GetBackPicFromVOQueue	@
.L3471:
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L3572	@,
	add	r6, r5, #16384	@ tmp899, pH264Ctx,
	add	r3, r5, #51200	@, pH264Ctx,
	add	r3, r3, #116	@,,
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r6, #1184]	@ D.47096, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	str	r1, [r4, #2168]	@ D.47096, pH264Ctx_34(D)->TotalPmvNum
	ldr	r2, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	ldrb	fp, [r9, #1318]	@ zero_extendqisi2	@ D.47104, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	add	r2, r2, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	rsb	fp, fp, #2	@ D.47104, D.47104,
	str	r1, [sp]	@ D.47096,
	mov	r2, r2, asl #4	@ D.47096, D.47096,
	add	ip, ip, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mul	fp, fp, r2	@ ImageHeight, D.47104, D.47096
	mov	ip, ip, asl #4	@ ImageWidth, D.47096,
	str	ip, [sp, #8]	@ ImageWidth, %sfp
	mov	r1, ip	@, ImageWidth
	mov	r2, fp	@, ImageHeight
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L3473	@,
	ldr	ip, [sp, #8]	@ ImageWidth, %sfp
.L3569:
	mov	ip, ip, lsr #4	@ D.47096, ImageWidth,
	mov	fp, fp, lsr #4	@ D.47096, ImageHeight,
	str	ip, [r9, #1272]	@ D.47096, pH264Ctx_34(D)->CurWidthInMb
	str	fp, [r9, #1276]	@ D.47096, pH264Ctx_34(D)->CurHeightInMb
	ldr	r2, [r6, #1228]	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id
	ldr	r3, [r10, #24]	@ pPPS_38->pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	bne	.L3474	@,
.L3581:
	ldrb	r3, [r10, #20]	@ zero_extendqisi2	@ pPPS_38->is_refreshed, pPPS_38->is_refreshed
	cmp	r3, #0	@ pPPS_38->is_refreshed,
	beq	.L3475	@,
	b	.L3474	@
.L3469:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L3572	@,
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L3572	@,
.L3568:
	add	r6, r5, #16384	@ tmp899, pH264Ctx,
	ldr	r3, [r10, #24]	@ pPPS_38->pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	ldr	r2, [r6, #1228]	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id
	cmp	r2, r3	@ pH264Ctx_34(D)->CurrPPS.pic_parameter_set_id, pPPS_38->pic_parameter_set_id
	beq	.L3581	@,
.L3474:
	add	r0, r5, #17408	@, pH264Ctx,
	mov	r3, #0	@ tmp498,
	add	r0, r0, #180	@,,
	strb	r3, [r10, #20]	@ tmp498, pPPS_38->is_refreshed
	mov	r1, r10	@, pPPS
	mov	r2, #2208	@,
	bl	memmove	@
.L3475:
	ldr	r2, [r6, #3436]	@ pH264Ctx_34(D)->CurrPOC.last_has_mmco_5, pH264Ctx_34(D)->CurrPOC.last_has_mmco_5
	ldr	r3, [r6, #108]	@ D.47096, pH264Ctx_34(D)->CurrSPS.log2_max_frame_num_minus4
	cmp	r2, #0	@ pH264Ctx_34(D)->CurrPOC.last_has_mmco_5,
	movne	r2, #0	@ tmp509,
	strne	r2, [r8, #216]	@ tmp509, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	strne	r2, [r4, #1520]	@ tmp509, pH264Ctx_34(D)->PrevPic.frame_num
	ldr	r2, [r4, #3616]	@ pH264Ctx_34(D)->OldDecMode, pH264Ctx_34(D)->OldDecMode
	cmp	r2, #2	@ pH264Ctx_34(D)->OldDecMode,
	beq	.L3477	@,
	ldr	ip, [r5]	@ D.47105, pH264Ctx_34(D)->pstExtraData
	ldr	r2, [ip, #12]	@ _176->s32DecOrderOutput, _176->s32DecOrderOutput
	str	ip, [sp, #8]	@ D.47105, %sfp
	cmp	r2, #2	@ _176->s32DecOrderOutput,
	beq	.L3477	@,
	ldr	r2, [r8, #220]	@ D.47096, pH264Ctx_34(D)->CurrSlice.frame_num
	ldr	r10, [r8, #216]	@ D.47099, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	cmp	r2, r10	@ D.47096, D.47099
	str	r2, [sp, #12]	@ D.47096, %sfp
	beq	.L3478	@,
	add	r3, r3, #4	@ D.47096, D.47096,
	mov	fp, #1	@ tmp522,
	mov	fp, fp, asl r3	@ MaxFrameNum, tmp522,
	add	r0, r10, #1	@, D.47099,
	mov	r1, fp	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	ldr	r2, [sp, #12]	@ D.47096, %sfp
	cmp	r2, r1	@ D.47096,
	beq	.L3509	@,
	ldr	ip, [sp, #8]	@ D.47105, %sfp
	ldr	r3, [ip, #516]	@ _176->s32MoreGapEnable, _176->s32MoreGapEnable
	cmp	r3, #0	@ _176->s32MoreGapEnable,
	bne	.L3479	@,
	ldr	r3, [ip, #540]	@ _176->stPvrInfo.u32BFrmRefFlag, _176->stPvrInfo.u32BFrmRefFlag
	cmp	r3, #1	@ _176->stPvrInfo.u32BFrmRefFlag,
	beq	.L3582	@,
.L3480:
	cmp	r2, r10	@ D.47096, D.47099
	bls	.L3481	@,
	ldr	r3, [r6, #1184]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	rsb	r10, r10, r2	@ D.47096, D.47099, D.47096
	cmp	r3, r10	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, D.47096
	bcs	.L3479	@,
.L3576:
	ldrb	r3, [r8, #200]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.slice_type, pH264Ctx_34(D)->CurrSlice.slice_type
	cmp	r3, #2	@ pH264Ctx_34(D)->CurrSlice.slice_type,
	bne	.L3485	@,
	cmp	r2, #0	@ D.47096,
	mov	r0, r5	@, pH264Ctx
	subeq	r2, fp, #1	@ D.47099, MaxFrameNum,
	subne	r2, r2, #1	@ D.47099, D.47096,
	str	r2, [r8, #216]	@ D.47099, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L3572	@,
.L3479:
	ldrb	r3, [r9, #1317]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag, pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag
	cmp	r3, #0	@ pH264Ctx_34(D)->CurrSPS.gaps_in_frame_num_value_allowed_flag,
	bne	.L3488	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5]	@ pH264Ctx_34(D)->pstExtraData, pH264Ctx_34(D)->pstExtraData
	ldr	r3, [r3, #520]	@ _216->s32FastForwardBackwardSpeed, _216->s32FastForwardBackwardSpeed
	bics	r3, r3, #1024	@ tmp929, _216->s32FastForwardBackwardSpeed,
	bne	.L3477	@,
	ldr	r0, [r8, #216]	@ pH264Ctx_34(D)->CurrSlice.prev_frame_num, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	mov	r1, fp	@, MaxFrameNum
	ldr	r10, [r8, #220]	@ D.47099, pH264Ctx_34(D)->CurrSlice.frame_num
	add	r0, r0, #1	@, pH264Ctx_34(D)->CurrSlice.prev_frame_num,
	bl	__aeabi_uidivmod	@
	cmp	r10, r1	@ D.47099,
	bcs	.L3488	@,
	ldrb	r3, [r8, #200]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.slice_type, pH264Ctx_34(D)->CurrSlice.slice_type
	cmp	r3, #2	@ pH264Ctx_34(D)->CurrSlice.slice_type,
	beq	.L3478	@,
.L3485:
	mov	r0, r5	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearDPB	@
.L3572:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.47098,
	b	.L3561	@
.L3509:
	mov	r10, r2	@ D.47099, D.47096
.L3478:
	ldr	r3, [r8, #232]	@ pH264Ctx_34(D)->CurrSlice.nal_ref_idc, pH264Ctx_34(D)->CurrSlice.nal_ref_idc
	mov	r0, r5	@, pH264Ctx
	cmp	r3, #0	@ pH264Ctx_34(D)->CurrSlice.nal_ref_idc,
	strne	r10, [r8, #216]	@ D.47099, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	str	r10, [r6, #3476]	@ D.47099, pH264Ctx_34(D)->CurrPOC.frame_num
	bl	DecPOC	@
	mov	r1, #0	@,
	mov	r0, r5	@, pH264Ctx
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret
	bne	.L3572	@,
	strb	r0, [r4, #559]	@ ret, pH264Ctx_34(D)->CurrPic.mode_skip_flag
	mov	r1, #1	@ tmp597,
	strb	r1, [r4, #552]	@ tmp597, pH264Ctx_34(D)->CurrPic.state
	mvn	ip, #0	@ tmp647,
	ldrb	r3, [r8, #203]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSlice.nal_unit_type, pH264Ctx_34(D)->CurrSlice.nal_unit_type
	strb	r3, [r4, #558]	@ pH264Ctx_34(D)->CurrSlice.nal_unit_type, pH264Ctx_34(D)->CurrPic.nal_unit_type
	ldr	r2, [r8, #220]	@ D.47096, pH264Ctx_34(D)->CurrSlice.frame_num
	str	r2, [r4, #968]	@ D.47096, pH264Ctx_34(D)->CurrPic.frame_num
	ldr	r3, [r8, #232]	@ D.47096, pH264Ctx_34(D)->CurrSlice.nal_ref_idc
	str	r2, [sp, #8]	@ D.47096, %sfp
	str	r3, [r4, #976]	@ D.47096, pH264Ctx_34(D)->CurrPic.nal_ref_idc
	ldr	lr, [r6, #3456]	@ pH264Ctx_34(D)->CurrPOC.ThisPOC, pH264Ctx_34(D)->CurrPOC.ThisPOC
	str	r3, [sp, #12]	@ D.47096, %sfp
	str	lr, [r4, #980]	@ pH264Ctx_34(D)->CurrPOC.ThisPOC, pH264Ctx_34(D)->CurrPic.thispoc
	ldr	lr, [r6, #3452]	@ pH264Ctx_34(D)->CurrPOC.framepoc, pH264Ctx_34(D)->CurrPOC.framepoc
	str	lr, [r4, #984]	@ pH264Ctx_34(D)->CurrPOC.framepoc, pH264Ctx_34(D)->CurrPic.framepoc
	ldr	lr, [r6, #3444]	@ pH264Ctx_34(D)->CurrPOC.toppoc, pH264Ctx_34(D)->CurrPOC.toppoc
	str	lr, [r4, #988]	@ pH264Ctx_34(D)->CurrPOC.toppoc, pH264Ctx_34(D)->CurrPic.toppoc
	ldr	lr, [r6, #3448]	@ pH264Ctx_34(D)->CurrPOC.bottompoc, pH264Ctx_34(D)->CurrPOC.bottompoc
	str	ip, [r4, #1024]	@ tmp647, pH264Ctx_34(D)->CurrPic.stream_base_addr
	strb	r0, [r4, #554]	@ ret, pH264Ctx_34(D)->CurrPic.non_existing
	strb	r0, [r4, #557]	@ ret, pH264Ctx_34(D)->CurrPic.is_short_term
	str	lr, [r4, #992]	@ pH264Ctx_34(D)->CurrPOC.bottompoc, pH264Ctx_34(D)->CurrPic.bottompoc
	strb	r0, [r4, #556]	@ ret, pH264Ctx_34(D)->CurrPic.is_long_term
	ldrb	fp, [r8, #201]	@ zero_extendqisi2	@ D.47108, pH264Ctx_34(D)->CurrSlice.field_pic_flag
	cmp	fp, #0	@ D.47108,
	strneb	r1, [r8, #201]	@ tmp597, pH264Ctx_34(D)->CurrSlice.field_pic_flag
	ldrb	r10, [r9, #1318]	@ zero_extendqisi2	@ D.47104, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r0, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	movne	fp, r1	@ D.47108, tmp597
	rsb	r10, r10, #2	@ D.47104, D.47104,
	movne	r1, #2	@ D.47096,
	mla	r10, r0, r10, r10	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, D.47104, D.47104
	mov	r0, r10	@, D.47096
	bl	__aeabi_uidiv	@
	str	r10, [r4, #1016]	@ D.47096, pH264Ctx_34(D)->CurrPic.frame_height_in_mb
	cmp	fp, #0	@ D.47108,
	str	r0, [r4, #1012]	@ tmp664, pH264Ctx_34(D)->CurrPic.pic_height_in_mb
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	ldr	r2, [sp, #8]	@ D.47096, %sfp
	add	r1, ip, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	str	r1, [r4, #1008]	@ D.47096, pH264Ctx_34(D)->CurrPic.pic_width_in_mb
	ldr	r3, [sp, #12]	@ D.47096, %sfp
	mul	r1, r1, r0	@ D.47096, D.47096, tmp664
	str	r1, [r4, #1020]	@ D.47096, pH264Ctx_34(D)->CurrPic.pic_mbs
	ldrb	r1, [r6, #1204]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag
	strb	r1, [r4, #560]	@ pH264Ctx_34(D)->CurrPPS.entropy_coding_mode_flag, pH264Ctx_34(D)->CurrPic.entropy_coding_mode_flag
	movne	r1, #0	@ D.47097,
	beq	.L3583	@,
.L3493:
	cmp	r3, #0	@ D.47096,
	add	r3, r5, #24576	@ tmp696, pH264Ctx,
	strb	r1, [r4, #561]	@ D.47097, pH264Ctx_34(D)->CurrPic.MbaffFrameFlag
	movw	r0, #2004	@ tmp699,
	strne	r2, [r8, #216]	@ D.47096, pH264Ctx_34(D)->CurrSlice.prev_frame_num
	movw	r10, #49728	@ tmp705,
	ldr	r1, [r3, #1804]	@ pH264Ctx_34(D)->CurrMarkIdx, pH264Ctx_34(D)->CurrMarkIdx
	add	r8, r5, #49664	@ tmp709, pH264Ctx,
	movw	lr, #49744	@ tmp708,
	mvn	r2, #0	@ tmp725,
	mvn	r3, #0	@,
	mla	r1, r0, r1, r5	@ tmp701, tmp699, pH264Ctx_34(D)->CurrMarkIdx, pH264Ctx
	add	r1, r1, #22272	@ D.47114, tmp701,
	add	r1, r1, #100	@ D.47114, D.47114,
	str	r1, [r4, #964]	@ D.47114, pH264Ctx_34(D)->CurrPic.pMarkPara
	ldr	ip, [r5]	@ D.47105, pH264Ctx_34(D)->pstExtraData
	ldrd	r0, [ip, #56]	@ D.47115, D.47105,
	strd	r0, [r5, r10]	@ D.47115, pH264Ctx, tmp705
	ldrd	r0, [ip, #72]	@ D.47115, D.47105,
	strd	r0, [r8, #72]	@ D.47115, tmp709,
	ldrd	r0, [ip, #88]	@ D.47115, D.47105,
	strd	r0, [r5, lr]	@ D.47115, pH264Ctx, tmp708
	ldr	r1, [ip, #104]	@ D.47096, _294->DispEnableFlag
	str	r1, [r4, #636]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.DispEnableFlag
	ldr	r1, [ip, #108]	@ D.47096, _294->DispFrameDistance
	str	r1, [r4, #640]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.DispFrameDistance
	ldr	r1, [ip, #112]	@ D.47096, _294->DistanceBeforeFirstFrame
	str	r1, [r4, #644]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.DistanceBeforeFirstFrame
	ldr	r1, [ip, #128]	@ D.47096, _294->GopNum
	str	r1, [r4, #648]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.GopNum
	ldr	r1, [r7, #752]	@ D.47096, pSPS_42->bit_depth_luma_minus8
	str	r1, [r4, #780]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.bit_depth_luma_minus8
	ldr	r1, [r7, #756]	@ D.47096, pSPS_42->bit_depth_chroma_minus8
	str	r1, [r4, #784]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.bit_depth_chroma_minus8
	strd	r2, [ip, #56]	@ tmp725, D.47105,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r0, r5, #49664	@, pH264Ctx,
	add	r3, r3, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	add	r0, r0, #56	@,,
	mov	r3, r3, asl #4	@ D.47096, D.47096,
	str	r3, [r4, #712]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.image_width
	ldrb	r2, [r9, #1318]	@ zero_extendqisi2	@ D.47104, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r1, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	r3, r2, #2	@ D.47104, D.47104,
	mla	r3, r1, r3, r3	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, D.47104, D.47104
	mov	r3, r3, asl #4	@ D.47096, D.47096,
	str	r3, [r4, #716]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.image_height
	ldr	r2, [r9, #2048]	@ pH264Ctx_34(D)->CurrSPS.chroma_format_idc, pH264Ctx_34(D)->CurrSPS.chroma_format_idc
	ldr	r3, [r9, #1356]	@ pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format
	subs	r2, r2, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.chroma_format_idc,
	ldr	r1, [r9, #1352]	@ pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio
	movne	r2, #1	@ D.47096,
	and	r1, r1, #7	@ dar, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.aspect_ratio,
	mov	r3, r3, asl #5	@ D.47096, pH264Ctx_34(D)->CurrSPS.vui_seq_parameters.video_format,
	mov	r2, r2, asl #2	@ D.47096, D.47096,
	orr	r2, r2, r1, asl #14	@ D.47096, D.47096, dar,
	uxtb	r3, r3	@ D.47096, D.47096
	orr	r3, r2, r3	@ D.47096, D.47096, D.47096
	str	r3, [r4, #708]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.format
	bl	SetAspectRatio	@
	ldrb	r3, [r4, #555]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrPic.structure, pH264Ctx_34(D)->CurrPic.structure
	ldr	r2, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	adds	r3, r3, #0	@ D.47107, pH264Ctx_34(D)->CurrPic.structure,
	ldr	r1, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	movne	r3, #1	@ D.47107,
	cmp	r2, #0	@ D.47103,
	str	r3, [r4, #696]	@ D.47107, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	str	r1, [r4, #752]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->CurrPic.fs_image.seq_cnt
	beq	.L3572	@,
	ldr	r3, [r4, #708]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.format
	str	r3, [r2, #148]	@ D.47096, _355->fs_image.format
	ldr	r3, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #696]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	str	r2, [r3, #136]	@ D.47096, _359->fs_image.is_fld_save
	ldr	r3, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #632]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.u32AspectHeight
	str	r2, [r3, #72]	@ D.47096, _362->fs_image.u32AspectHeight
	ldr	r3, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #628]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.u32AspectWidth
	str	r2, [r3, #68]	@ D.47096, _365->fs_image.u32AspectWidth
	ldr	r3, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #712]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.image_width
	str	r2, [r3, #152]	@ D.47096, _368->fs_image.image_width
	ldr	r3, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r2, [r4, #716]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.image_height
	str	r2, [r3, #156]	@ D.47096, _371->fs_image.image_height
	ldr	r3, [r7, #3992]	@ D.47096, pSPS_42->disp_center_x
	ldr	r2, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	str	r3, [r2, #168]	@ D.47096, _374->fs_image.disp_center_x
	str	r3, [r4, #728]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.disp_center_x
	ldr	r2, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3996]	@ D.47096, pSPS_42->disp_center_y
	str	r3, [r2, #172]	@ D.47096, _378->fs_image.disp_center_y
	str	r3, [r4, #732]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.disp_center_y
	ldr	r2, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3984]	@ D.47096, pSPS_42->disp_width
	str	r3, [r2, #160]	@ D.47096, _382->fs_image.disp_width
	str	r3, [r4, #720]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.disp_width
	ldr	r2, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r3, [r7, #3988]	@ D.47096, pSPS_42->disp_height
	str	r3, [r2, #164]	@ D.47096, _386->fs_image.disp_height
	str	r3, [r4, #724]	@ D.47096, pH264Ctx_34(D)->CurrPic.fs_image.disp_height
	ldr	r3, [r4, #960]	@ pH264Ctx_34(D)->CurrPic.frame_store, pH264Ctx_34(D)->CurrPic.frame_store
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	ldr	r1, [r3, #508]	@, _391->logic_fs_id
	bl	FSP_GetDispPhyFs	@
	cmp	r0, #0	@ pstDecFs
	beq	.L3495	@,
	ldr	r3, [r4, #696]	@ pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save
	mov	r1, #0	@,
	ldr	r2, [r0, #4]	@, pstDecFs_394->PhyFsID
	subs	r3, r3, r1	@, pH264Ctx_34(D)->CurrPic.fs_image.is_fld_save,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	movne	r3, #1	@,
	bl	FSP_SetStoreType	@
.L3495:
	add	r8, r5, #49664	@ ivtmp.3084, pH264Ctx,
	add	r0, r5, #49920	@ D.47112, pH264Ctx,
	add	r8, r8, #244	@ ivtmp.3084, ivtmp.3084,
	add	lr, r5, #51200	@ ivtmp.3114, pH264Ctx,
	ldr	r7, [r4, #2192]	@ D.47099, pH264Ctx_34(D)->TotalUsrDatNum
	add	r0, r0, #4	@ D.47112, D.47112,
	add	lr, lr, #148	@ ivtmp.3114, ivtmp.3114,
	mov	r2, r8	@ ivtmp.3135, ivtmp.3084
	mov	r6, #0	@ tmp905,
.L3499:
	ldr	r3, [r2, #4]!	@ MEM[base: _219, offset: 0B], MEM[base: _219, offset: 0B]
	cmp	r3, #0	@ MEM[base: _219, offset: 0B],
	beq	.L3584	@,
.L3496:
	cmp	r2, r0	@ ivtmp.3135, D.47112
	bne	.L3499	@,
	cmp	r7, #0	@ D.47099,
	beq	.L3500	@,
	ble	.L3500	@,
	add	r6, r7, #12800	@ D.47109, uidxpic,
	mov	r9, #0	@ tmp904,
	add	r6, r6, #37	@ D.47109, D.47109,
	add	r6, r5, r6, lsl #2	@ ivtmp.3097, pH264Ctx, D.47109,
.L3501:
	ldr	r1, [r6, #-4]!	@, MEM[base: _105, offset: 0B]
	sub	r7, r7, #1	@ uidxpic, uidxpic,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r7, #0	@ uidxpic,
	str	r9, [r6]	@ tmp904, MEM[base: _105, offset: 0B]
	bne	.L3501	@,
.L3500:
	mov	r3, #0	@ uidxpic,
.L3503:
	ldr	r2, [r8, #4]!	@ D.47118, MEM[base: _276, offset: 0B]
	add	r1, r3, #50	@ tmp857, uidxpic,
	add	r3, r3, #1	@ uidxpic, uidxpic,
	cmp	r2, #0	@ D.47118,
	ldrne	r0, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	strne	r2, [r0, r1, asl #2]	@ D.47118, _422->fs_image.p_usrdat
	cmp	r3, #4	@ uidxpic,
	bne	.L3503	@,
	mov	r0, r5	@, pH264Ctx
	mov	r5, #0	@ tmp860,
	str	r5, [r4, #2192]	@ tmp860, pH264Ctx_34(D)->TotalUsrDatNum
	str	r5, [r4, #996]	@ tmp860, pH264Ctx_34(D)->CurrPic.pic_type
	bl	CalcPicNum	@
	mov	r0, r5	@ D.47098, tmp860
.L3561:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L3488:
	mov	r0, r5	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	bne	.L3572	@,
.L3477:
	ldr	r10, [r8, #220]	@ D.47099, pH264Ctx_34(D)->CurrSlice.frame_num
	b	.L3478	@
.L3584:
	cmp	r7, #0	@ D.47099,
	beq	.L3496	@,
	ldr	r1, [r4, #2196]	@ D.47118, pH264Ctx_34(D)->pUsrDatArray
	subs	r7, r7, #1	@ D.47099, D.47099,
	str	r1, [r2]	@ D.47118, MEM[base: _219, offset: 0B]
	beq	.L3497	@,
	mov	r1, lr	@ ivtmp.3114, ivtmp.3114
.L3498:
	add	r3, r3, #1	@ uidxsei, uidxsei,
	ldr	ip, [r1, #4]!	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 0B]
	cmp	r3, r7	@ uidxsei, D.47099
	str	ip, [r1, #-4]	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 4294967292B]
	bne	.L3498	@,
.L3497:
	add	r3, r7, #12800	@ tmp841, D.47099,
	add	r3, r3, #36	@ tmp841, tmp841,
	add	r3, r5, r3, lsl #2	@ tmp842, pH264Ctx, tmp841,
	str	r6, [r3, #4]	@ tmp905, pH264Ctx_34(D)->pUsrDatArray
	str	r7, [r4, #2192]	@ D.47099, pH264Ctx_34(D)->TotalUsrDatNum
	b	.L3496	@
.L3583:
	ldrb	r1, [r9, #1319]	@ zero_extendqisi2	@ pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag, pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag
	adds	r1, r1, #0	@ D.47097, pH264Ctx_34(D)->CurrSPS.mb_adaptive_frame_field_flag,
	movne	r1, #1	@ D.47097,
	b	.L3493	@
.L3579:
	ldr	r3, [r2, #32]	@ _65->eCapLevel, _65->eCapLevel
	cmp	r3, #25	@ _65->eCapLevel,
	bne	.L3460	@,
	ldr	r3, [r4, #3648]	@ pH264Ctx_34(D)->SeqCnt, pH264Ctx_34(D)->SeqCnt
	cmp	r6, #0	@ D.47104,
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, #1	@ D.47096, pH264Ctx_34(D)->SeqCnt,
	str	r3, [r4, #3648]	@ D.47096, pH264Ctx_34(D)->SeqCnt
	beq	.L3461	@,
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L3572	@,
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L3572	@,
	add	r6, r5, #16384	@ tmp899, pH264Ctx,
	ldrb	fp, [r9, #1318]	@ zero_extendqisi2	@ D.47104, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r2, [r9, #1272]	@ pH264Ctx_34(D)->CurWidthInMb, pH264Ctx_34(D)->CurWidthInMb
	ldr	r3, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	fp, fp, #2	@ D.47104, D.47104,
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	cmp	r2, #0	@ pH264Ctx_34(D)->CurWidthInMb,
	add	r3, r3, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	add	ip, ip, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mov	r3, r3, asl #4	@ D.47096, D.47096,
	mov	ip, ip, asl #4	@ ImageWidth, D.47096,
	mul	fp, fp, r3	@ ImageHeight, D.47104, D.47096
	bne	.L3569	@,
	ldr	r0, [r6, #1184]	@ D.47096, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	str	r0, [r4, #2168]	@ D.47096, pH264Ctx_34(D)->TotalPmvNum
	ldr	r3, [r5]	@ D.47105, pH264Ctx_34(D)->pstExtraData
	ldr	r1, [r3, #568]	@ D.47096, _91->stChanOption.s32MaxWidth
	cmp	r1, ip	@ D.47096, ImageWidth
	bcc	.L3572	@,
	ldr	r2, [r3, #572]	@ D.47096, _91->stChanOption.s32MaxHeight
	cmp	r2, fp	@ D.47096, ImageHeight
	str	r2, [sp, #8]	@ D.47096, %sfp
	bcc	.L3572	@,
	add	lr, r5, #24576	@ tmp437, pH264Ctx,
	ldr	r2, [r3, #588]	@ tmp930, _91->stChanOption.s32MaxRefFrameNum
	ldr	lr, [lr, #2048]	@ pH264Ctx_34(D)->DPB.size, pH264Ctx_34(D)->DPB.size
	cmp	r2, lr	@ tmp930, pH264Ctx_34(D)->DPB.size
	bcc	.L3572	@,
	ldr	lr, [r3, #596]	@ _91->stChanOption.s32SupportBFrame, _91->stChanOption.s32SupportBFrame
	str	ip, [sp, #12]	@ ImageWidth, %sfp
	cmp	lr, #0	@ _91->stChanOption.s32SupportBFrame,
	moveq	r0, #1	@ tmp443,
	streq	r0, [r4, #2168]	@ tmp443, pH264Ctx_34(D)->TotalPmvNum
	ldreq	r1, [r3, #568]	@ D.47096, _91->stChanOption.s32MaxWidth
	ldreq	r3, [r3, #572]	@ D.47096, _91->stChanOption.s32MaxHeight
	str	r0, [sp]	@ D.47096,
	mov	r0, r5	@, pH264Ctx
	streq	r3, [sp, #8]	@ D.47096, %sfp
	add	r3, r5, #51200	@, pH264Ctx,
	ldr	r2, [sp, #8]	@, %sfp
	add	r3, r3, #116	@,,
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	ldr	ip, [sp, #12]	@ ImageWidth, %sfp
	beq	.L3569	@,
.L3473:
	mov	r4, #0	@ tmp448,
	str	r4, [r9, #1272]	@ tmp448, pH264Ctx_34(D)->CurWidthInMb
	str	r4, [r9, #1276]	@ tmp448, pH264Ctx_34(D)->CurHeightInMb
	bl	vfmw_dprint_nothing	@
	mov	r1, r4	@, tmp448
	mov	r0, r5	@, pH264Ctx
	bl	ClearAll	@
	mvn	r0, #0	@ D.47098,
	b	.L3561	@
.L3578:
	ldrb	r3, [r7, #24]	@ zero_extendqisi2	@ pSPS_42->is_refreshed, pSPS_42->is_refreshed
	cmp	r3, #0	@ pSPS_42->is_refreshed,
	beq	.L3457	@,
	b	.L3456	@
.L3580:
	ldr	r3, [r4, #3740]	@ pH264Ctx_34(D)->DSD_NeedClearQue, pH264Ctx_34(D)->DSD_NeedClearQue
	cmp	r3, #1	@ pH264Ctx_34(D)->DSD_NeedClearQue,
	bne	.L3471	@,
	b	.L3470	@
.L3577:
	ldr	r1, [r3, #508]	@, _44->logic_fs_id
	mov	r2, #1	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	strb	r6, [r3, #1]	@ _44->is_used, _49->is_used
	ldr	r3, [r4, #960]	@ D.47103, pH264Ctx_34(D)->CurrPic.frame_store
	strb	r6, [r3, #4]	@ _44->is_used, _51->is_in_dpb
	b	.L3455	@
.L3481:
	rsb	r3, r10, r2	@ D.47096, D.47099, D.47096
	ldr	r1, [r6, #1184]	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, pH264Ctx_34(D)->CurrSPS.dpb_size_plus1
	add	r3, r3, fp	@ D.47096, D.47096, MaxFrameNum
	cmp	r1, r3	@ pH264Ctx_34(D)->CurrSPS.dpb_size_plus1, D.47096
	bcs	.L3479	@,
	b	.L3576	@
.L3461:
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L3572	@,
	add	r6, r5, #16384	@ tmp899, pH264Ctx,
	ldrb	fp, [r9, #1318]	@ zero_extendqisi2	@ D.47104, pH264Ctx_34(D)->CurrSPS.frame_mbs_only_flag
	ldr	r3, [r6, #1164]	@ pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1
	rsb	fp, fp, #2	@ D.47104, D.47104,
	ldr	ip, [r6, #1160]	@ pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1
	add	r3, r3, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_height_in_map_units_minus1,
	add	ip, ip, #1	@ D.47096, pH264Ctx_34(D)->CurrSPS.pic_width_in_mbs_minus1,
	mov	r3, r3, asl #4	@ D.47096, D.47096,
	mov	ip, ip, asl #4	@ ImageWidth, D.47096,
	mul	fp, fp, r3	@ ImageHeight, D.47104, D.47096
	b	.L3569	@
.L3454:
	bl	vfmw_dprint_nothing	@
	b	.L3455	@
.L3582:
	ldr	r3, [ip, #536]	@ _176->stPvrInfo.u32IDRFlag, _176->stPvrInfo.u32IDRFlag
	cmp	r3, #0	@ _176->stPvrInfo.u32IDRFlag,
	bne	.L3480	@,
	ldr	r3, [ip, #544]	@ _176->stPvrInfo.u32ContinuousFlag, _176->stPvrInfo.u32ContinuousFlag
	cmp	r3, #0	@ _176->stPvrInfo.u32ContinuousFlag,
	bne	.L3480	@,
	ldr	r3, [ip, #520]	@ _176->s32FastForwardBackwardSpeed, _176->s32FastForwardBackwardSpeed
	add	r3, r3, #1020	@ D.47112, _176->s32FastForwardBackwardSpeed,
	add	r3, r3, #3	@ D.47112, D.47112,
	cmp	r3, #2048	@ D.47112,
	bcs	.L3479	@,
	b	.L3480	@
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
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	.pad #8
	sub	sp, sp, #8	@,,
	add	r5, r4, #20480	@ tmp264, pH264Ctx,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #368]	@ D.47136, pH264Ctx_23(D)->pCurrNal
	mov	r0, r4	@, pH264Ctx
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ D.47137, _24->nal_unit_type
	strb	r2, [r5, #203]	@ D.47137, pH264Ctx_23(D)->CurrSlice.nal_unit_type
	ldr	r3, [r3, #76]	@ D.47138, _24->nal_ref_idc
	str	r3, [r5, #232]	@ D.47138, pH264Ctx_23(D)->CurrSlice.nal_ref_idc
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3633	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderSecondPart	@
	cmp	r0, #0	@ ret
	bne	.L3633	@,
	add	r6, r4, #49152	@ tmp266, pH264Ctx,
	ldr	r10, [r6, #3612]	@ D.47138, pH264Ctx_23(D)->SliceParaNum
	cmp	r10, #0	@ D.47138,
	moveq	r2, r10	@ Size, D.47138
	beq	.L3592	@,
	add	r9, r4, #50688	@ ivtmp.3148, pH264Ctx,
	mov	r3, r0	@ PrevNalAddr, PrevNalSize
	add	r9, r9, #12	@ ivtmp.3148, ivtmp.3148,
	mov	r2, r0	@ Size, PrevNalSize
	mov	lr, r0	@ i, PrevNalSize
.L3600:
	ldr	r7, [r9, #4]!	@ D.47136, MEM[base: _15, offset: 0B]
	ldr	ip, [r7, #8]	@ PrevNalAddr, _48->stream[0].streamBuffer
	ldr	r1, [r7, #36]	@ PrevNalAddr, _48->stream[1].streamBuffer
	cmp	ip, #0	@ PrevNalAddr,
	ldrne	r8, [r7, #12]	@ PrevNalSize, _48->stream[0].bitstream_length
	moveq	r8, ip	@ PrevNalSize, PrevNalAddr
	cmp	r1, #0	@ PrevNalAddr,
	moveq	r7, r1	@ PrevNalSize, PrevNalAddr
	ldrne	r7, [r7, #40]	@ PrevNalSize, _48->stream[1].bitstream_length
	cmp	r3, #0	@ PrevNalAddr,
	addeq	r2, r8, r2	@ D.47138, PrevNalSize, Size
	addeq	r2, r2, r7	@ Size, D.47138, PrevNalSize
	beq	.L3598	@,
	cmp	ip, r3	@ PrevNalAddr, PrevNalAddr
	add	r2, r7, r2	@ D.47134, PrevNalSize, Size
	addhi	r3, r3, r0	@ D.47138, PrevNalAddr, PrevNalSize
	rsbhi	r3, r3, ip	@ D.47134, D.47138, PrevNalAddr
	movls	r3, r8	@ D.47134, PrevNalSize
	addhi	r3, r3, r8	@ D.47134, D.47134, PrevNalSize
	add	r2, r2, r3	@ Size, D.47134, D.47134
.L3598:
	cmp	r1, #0	@ PrevNalAddr,
	add	lr, lr, #1	@ i, i,
	movne	r3, r1	@ PrevNalAddr, PrevNalAddr
	movne	r0, r7	@ PrevNalSize, PrevNalSize
	moveq	r3, ip	@ PrevNalAddr, PrevNalAddr
	moveq	r0, r8	@ PrevNalSize, PrevNalSize
	cmp	lr, r10	@ i, D.47138
	bne	.L3600	@,
.L3592:
	ldr	r0, [r6, #1012]	@ pH264Ctx_23(D)->CurrPic.pic_height_in_mb, pH264Ctx_23(D)->CurrPic.pic_height_in_mb
	movw	r1, #1620	@ tmp200,
	ldr	r3, [r6, #1008]	@ pH264Ctx_23(D)->CurrPic.pic_width_in_mb, pH264Ctx_23(D)->CurrPic.pic_width_in_mb
	str	r2, [r6, #3672]	@ Size, pH264Ctx_23(D)->MaxBytesReceived
	mul	r3, r3, r0	@ TotalMbs, pH264Ctx_23(D)->CurrPic.pic_width_in_mb, pH264Ctx_23(D)->CurrPic.pic_height_in_mb
	cmp	r3, r1	@ TotalMbs, tmp200
	movgt	r3, r3, asl #7	@ MaxStreamThr, TotalMbs,
	ble	.L3634	@,
.L3602:
	add	r7, r4, #12288	@ tmp265, pH264Ctx,
	ldr	r1, [r7, #1280]	@ pH264Ctx_23(D)->MaxSliceNum, pH264Ctx_23(D)->MaxSliceNum
	cmp	r1, r10	@ pH264Ctx_23(D)->MaxSliceNum, D.47138
	bls	.L3603	@,
	cmp	r3, r2	@ MaxStreamThr, Size
	bcc	.L3603	@,
	ldrb	r3, [r5, #205]	@ zero_extendqisi2	@ pH264Ctx_23(D)->CurrSlice.new_pic_flag, pH264Ctx_23(D)->CurrSlice.new_pic_flag
	cmp	r3, #0	@ pH264Ctx_23(D)->CurrSlice.new_pic_flag,
	bne	.L3635	@,
.L3606:
	mov	r0, r4	@, pH264Ctx
	bl	PicTypeStatistic	@
	mov	r0, r4	@, pH264Ctx
	bl	DecList	@
	cmp	r0, #0	@,
	bne	.L3612	@,
	mov	r0, r4	@, pH264Ctx
	bl	IsRefListWrong	@
	subs	r5, r0, #0	@ ret,
	bne	.L3636	@,
	mov	r0, r4	@, pH264Ctx
	bl	CalcStreamBits	@
	mov	r0, r4	@, pH264Ctx
	bl	WriteSliceMsg	@
	mov	r0, r4	@, pH264Ctx
	bl	ExitSlice	@
	ldr	r3, [r6, #3668]	@ pH264Ctx_23(D)->SliceNumInPic, pH264Ctx_23(D)->SliceNumInPic
	mov	r0, r5	@ D.47133, ret
	mov	r2, #1	@ tmp256,
	add	r3, r3, r2	@ D.47138, pH264Ctx_23(D)->SliceNumInPic,
	str	r2, [r6, #2172]	@ tmp256, pH264Ctx_23(D)->AllowStartDec
	str	r3, [r6, #3668]	@ D.47138, pH264Ctx_23(D)->SliceNumInPic
.L3589:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L3634:
	mov	r1, r3, asl #10	@ tmp203, TotalMbs,
	movw	r0, #32769	@ tmp205,
	sub	r3, r1, r3, asl #8	@ tmp204, tmp203, TotalMbs,
	cmp	r3, r0	@ tmp204, tmp205
	movgt	r3, r3, asr #1	@ MaxStreamThr, tmp204,
	movle	r3, #16384	@ MaxStreamThr,
	b	.L3602	@
.L3635:
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5, #203]	@ zero_extendqisi2	@ pH264Ctx_23(D)->CurrSlice.nal_unit_type, pH264Ctx_23(D)->CurrSlice.nal_unit_type
	ldrb	r1, [r6, #555]	@ zero_extendqisi2	@ pH264Ctx_23(D)->CurrPic.structure, pH264Ctx_23(D)->CurrPic.structure
	mov	r2, #0	@ tmp235,
	cmp	r3, #5	@ pH264Ctx_23(D)->CurrSlice.nal_unit_type,
	ldr	r3, [r6, #3652]	@ D.47134, pH264Ctx_23(D)->TotalPicNum
	str	r2, [r6, #3668]	@ tmp235, pH264Ctx_23(D)->SliceNumInPic
	mov	r0, r4	@, pH264Ctx
	streq	r3, [r6, #3664]	@ D.47134, pH264Ctx_23(D)->IDRPicOfCurrPic
	cmp	r1, r2	@ pH264Ctx_23(D)->CurrPic.structure,
	add	r3, r3, #1	@ D.47138, D.47134,
	str	r3, [r6, #3652]	@ D.47138, pH264Ctx_23(D)->TotalPicNum
	ldreq	r3, [r6, #3656]	@ pH264Ctx_23(D)->TotalFrameNum, pH264Ctx_23(D)->TotalFrameNum
	ldrne	r3, [r6, #3660]	@ pH264Ctx_23(D)->TotalFieldNum, pH264Ctx_23(D)->TotalFieldNum
	addeq	r3, r3, #1	@ D.47138, pH264Ctx_23(D)->TotalFrameNum,
	addne	r3, r3, #1	@ D.47138, pH264Ctx_23(D)->TotalFieldNum,
	streq	r3, [r6, #3656]	@ D.47138, pH264Ctx_23(D)->TotalFrameNum
	strne	r3, [r6, #3660]	@ D.47138, pH264Ctx_23(D)->TotalFieldNum
	bl	InitPic	@
	cmp	r0, #0	@,
	bne	.L3612	@,
	mov	r0, r4	@, pH264Ctx
	bl	WritePicMsg	@
	b	.L3606	@
.L3633:
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L3637	@ tmp175,
	ldr	ip, [r3]	@ D.47139, g_event_report
	cmp	ip, #0	@ D.47139,
	beq	.L3631	@,
	add	r3, r4, #49152	@ tmp179, pH264Ctx,
	add	r2, sp, #8	@ tmp177,,
	mvn	r0, #0	@ tmp176,
	mov	r1, #100	@,
	str	r0, [r2, #-8]!	@ tmp176,
	ldr	r0, [r3, #3688]	@, pH264Ctx_23(D)->ChanID
	blx	ip	@ D.47139
.L3631:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.47133,
	b	.L3589	@
.L3612:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.47133,
	b	.L3589	@
.L3603:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #1280]	@ D.47138, pH264Ctx_23(D)->MaxSliceNum
	ldr	r2, [r6, #3612]	@ D.47138, pH264Ctx_23(D)->SliceParaNum
	cmp	r2, r3	@ D.47138, D.47138
	bcc	.L3605	@,
	ldr	r1, .L3637	@ tmp216,
	ldr	ip, [r1]	@ D.47139, g_event_report
	cmp	ip, #0	@ D.47139,
	beq	.L3605	@,
	str	r2, [sp]	@ D.47138, para
	mov	r1, #108	@,
	mov	r2, sp	@,
	str	r3, [sp, #4]	@ D.47138, para
	ldr	r0, [r6, #3688]	@, pH264Ctx_23(D)->ChanID
	blx	ip	@ D.47139
.L3605:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.47133,
	b	.L3589	@
.L3636:
	bl	vfmw_dprint_nothing	@
	b	.L3631	@
.L3638:
	.align	2
.L3637:
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
	add	r4, r0, #49152	@ tmp423, pH264Ctx,
	ldr	r5, [r0, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ NalMode, NalMode
	ldr	r3, [r5, #68]	@ _245->nal_segment, _245->nal_segment
	cmp	r3, #0	@ _245->nal_segment,
	movne	ip, r5	@ ivtmp.3183, D.47177
	movne	r2, #0	@ i,
	ldrne	r3, [r4, #3672]	@ D.47172, pH264Ctx_19(D)->MaxBytesReceived
	beq	.L3644	@,
.L3643:
	ldr	lr, [ip, #12]	@ MEM[base: _20, offset: 12B], MEM[base: _20, offset: 12B]
	add	r2, r2, #1	@ i, i,
	add	ip, ip, #28	@ ivtmp.3183, ivtmp.3183,
	add	r3, r3, lr	@ D.47172, D.47172, MEM[base: _20, offset: 12B]
	str	r3, [r4, #3672]	@ D.47172, pH264Ctx_19(D)->MaxBytesReceived
	ldr	lr, [r5, #68]	@ _245->nal_segment, _245->nal_segment
	cmp	lr, r2	@ _245->nal_segment, i
	bhi	.L3643	@,
.L3644:
	add	r8, r7, #13504	@ D.47175, pH264Ctx,
	mov	r9, #0	@ tmp232,
	add	r8, r8, #24	@ D.47175, D.47175,
	strb	r9, [r5]	@ tmp232, _245->nal_used_segment
	mov	r1, #32	@,
	mov	r0, r8	@, D.47175
	bl	BsGet	@
	ldr	r3, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	mov	r5, r0	@ nal_header,
	and	r0, r0, #31	@ tmp236, nal_header,
	strb	r0, [r3, #2]	@ tmp236, _33->nal_unit_type
	ubfx	r1, r5, #5, #2	@ D.47174, nal_header,,
	ldr	r3, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	ubfx	r2, r5, #7, #1	@ D.47174, nal_header,,
	str	r1, [r3, #76]	@ D.47174, _37->nal_ref_idc
	ldr	r3, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	str	r2, [r3, #80]	@ D.47174, _41->forbidden_bit
	ldr	r2, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	ldr	r3, [r2, #64]	@ _45->nal_bitoffset, _45->nal_bitoffset
	add	r3, r3, #32	@ D.47174, _45->nal_bitoffset,
	str	r3, [r2, #64]	@ D.47174, _45->nal_bitoffset
	str	r9, [r4, #3628]	@ tmp232, pH264Ctx_19(D)->SeErrFlg
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3632]	@ D.47174, pH264Ctx_19(D)->TotalNal
	movw	r2, #371	@ tmp249,
	cmp	r3, r2	@ D.47174, tmp249
	beq	.L3793	@,
.L3642:
	add	r3, r3, #1	@ D.47174, D.47174,
	str	r3, [r4, #3632]	@ D.47174, pH264Ctx_19(D)->TotalNal
	ldr	r3, [r7, #368]	@ pH264Ctx_19(D)->pCurrNal, pH264Ctx_19(D)->pCurrNal
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ _56->nal_unit_type, _56->nal_unit_type
	sub	r3, r3, #1	@ tmp263, _56->nal_unit_type,
	cmp	r3, #29	@ tmp263,
	ldrls	pc, [pc, r3, asl #2]	@ tmp263
	b	.L3645	@
.L3647:
	.word	.L3646
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3646
	.word	.L3648
	.word	.L3649
	.word	.L3650
	.word	.L3656
	.word	.L3656
	.word	.L3653
	.word	.L3656
	.word	.L3656
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3656
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3645
	.word	.L3657
.L3656:
	bl	vfmw_dprint_nothing	@
.L3784:
	ldr	r1, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.47177,
	beq	.L3775	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp384,
	mov	r0, r3	@ D.47171, tmp384
	str	r3, [r7, #368]	@ tmp384, pH264Ctx_19(D)->pCurrNal
.L3771:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3645:
	bl	vfmw_dprint_nothing	@
	cmp	r5, #256	@ nal_header,
	ldr	r5, .L3795	@ tmp422,
	beq	.L3676	@,
	ldr	r3, [r5]	@ D.47179, g_event_report
	cmp	r3, #0	@ D.47179,
	beq	.L3677	@,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	blx	r3	@ D.47179
.L3676:
	ldr	r1, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.47177,
	beq	.L3678	@,
.L3679:
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp416,
	str	r3, [r7, #368]	@ tmp416, pH264Ctx_19(D)->pCurrNal
.L3678:
	ldr	r3, [r5]	@ D.47179, g_event_report
	cmp	r3, #0	@ D.47179,
	beq	.L3775	@,
.L3778:
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.47179
.L3775:
	mov	r0, #0	@ D.47171,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3657:
	bl	vfmw_dprint_nothing	@
	cmp	r6, #0	@ NalMode,
	bne	.L3674	@,
	ldr	r1, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.47177,
	beq	.L3674	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	str	r6, [r7, #368]	@ NalMode, pH264Ctx_19(D)->pCurrNal
.L3674:
	mov	r1, #32	@,
	mov	r0, r8	@, D.47175
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.47176,
	mov	r0, r8	@, D.47175
	bl	BsGet	@
	ldr	r3, .L3795+4	@ tmp389,
	rev	r5, r5	@ code0, D.47176
	ldr	r2, [r3, #440]	@ MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B], MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B]
	ldr	r3, [r3, #436]	@ MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B], MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B]
	rev	r0, r0	@ code1,
	cmp	r0, r2	@ code1, MEM[(HI_U32 *)&g_NalTypeEOPIC + 8B]
	cmpeq	r5, r3	@, code0, MEM[(HI_U32 *)&g_NalTypeEOPIC + 4B]
	bne	.L3775	@,
	ldr	r5, .L3795	@ tmp422,
	ldr	r3, [r5]	@ D.47179, g_event_report
	cmp	r3, #0	@ D.47179,
	beq	.L3675	@,
	mov	r2, #0	@,
	mov	r1, #112	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	blx	r3	@ D.47179
.L3675:
	mov	r6, #0	@ tmp404,
	mov	r0, r7	@, pH264Ctx
	str	r6, [r7, #364]	@ tmp404, pH264Ctx_19(D)->StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3775	@,
.L3787:
	ldr	r3, [r5]	@ D.47179, g_event_report
	cmp	r3, r6	@ D.47179,
	beq	.L3774	@,
	mov	r2, r6	@, tmp404
.L3779:
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.47179
.L3774:
	mvn	r0, #0	@ D.47171,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L3650:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecPPS	@
	ldr	r1, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.47177,
	mov	r5, r0	@ ret,
	beq	.L3666	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp294,
	str	r3, [r7, #368]	@ tmp294, pH264Ctx_19(D)->pCurrNal
.L3666:
	cmp	r5, #0	@ ret,
	bne	.L3791	@,
	ldr	r3, [r4, #3640]	@ pH264Ctx_19(D)->TotalPPS, pH264Ctx_19(D)->TotalPPS
	mov	r0, r5	@ D.47171, ret
	add	r3, r3, #1	@ D.47174, pH264Ctx_19(D)->TotalPPS,
	str	r3, [r4, #3640]	@ D.47174, pH264Ctx_19(D)->TotalPPS
	b	.L3771	@
.L3648:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecSEI	@
	ldr	r1, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.47177,
	mov	r5, r0	@ ret,
	beq	.L3670	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp334,
	str	r3, [r7, #368]	@ tmp334, pH264Ctx_19(D)->pCurrNal
.L3670:
	cmp	r5, #0	@ ret,
	beq	.L3775	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L3795	@ tmp335,
	ldr	r3, [r3]	@ D.47179, g_event_report
	cmp	r3, #0	@ D.47179,
	bne	.L3778	@,
	b	.L3775	@
.L3653:
	bl	vfmw_dprint_nothing	@
	mov	r1, #32	@,
	mov	r0, r8	@, D.47175
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.47176,
	mov	r0, r8	@, D.47175
	bl	BsGet	@
	movw	r2, #20036	@ tmp353,
	movw	r3, #20553	@ tmp356,
	movt	r2, 17221	@ tmp353,
	movt	r3, 18515	@ tmp356,
	cmp	r0, r2	@, tmp353
	cmpeq	r5, r3	@, D.47176, tmp356
	bne	.L3784	@,
	ldr	r5, .L3795	@ tmp422,
	add	r3, r7, #12288	@ tmp361, pH264Ctx,
	mov	r2, #1	@ tmp362,
	strb	r2, [r3, #1268]	@ tmp362, pH264Ctx_19(D)->IsStreamEndFlag
	ldr	r3, [r5]	@ D.47179, g_event_report
	cmp	r3, #0	@ D.47179,
	beq	.L3673	@,
	mov	r2, #0	@,
	mov	r1, #112	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	blx	r3	@ D.47179
.L3673:
	mov	r6, #0	@ tmp368,
	mov	r0, r7	@, pH264Ctx
	str	r6, [r7, #364]	@ tmp368, pH264Ctx_19(D)->StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	beq	.L3784	@,
	b	.L3787	@
.L3646:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	add	r3, r7, #20480	@ tmp265, pH264Ctx,
	mov	r0, r7	@, pH264Ctx
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ D.47178, _59->nal_unit_type
	strb	r1, [r3, #203]	@ D.47178, pH264Ctx_19(D)->CurrSlice.nal_unit_type
	ldr	r2, [r2, #76]	@ D.47174, _59->nal_ref_idc
	str	r2, [r3, #232]	@ D.47174, pH264Ctx_19(D)->CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r8, r0, #0	@ ret,
	mov	r0, r7	@, pH264Ctx
	bne	.L3794	@,
	bl	H264_DecSlice	@
	cmp	r0, #0	@,
	beq	.L3775	@,
	add	r5, r7, #51200	@ ivtmp.3164, pH264Ctx,
	add	r6, r7, #49664	@ ivtmp.3173, pH264Ctx,
	add	r6, r6, #244	@ ivtmp.3173, ivtmp.3173,
	mov	r7, r5	@ D.47183, ivtmp.3164
	add	r5, r5, #144	@ ivtmp.3164, ivtmp.3164,
	add	r7, r7, #160	@ D.47183, D.47183,
.L3664:
	ldr	r1, [r5, #4]!	@ D.47180, MEM[base: _160, offset: 0B]
	cmp	r1, #0	@ D.47180,
	beq	.L3662	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r5]	@ tmp424, MEM[base: _160, offset: 0B]
.L3662:
	ldr	r1, [r6, #4]!	@ D.47180, MEM[base: _155, offset: 0B]
	cmp	r1, #0	@ D.47180,
	beq	.L3663	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r6]	@ tmp424, MEM[base: _155, offset: 0B]
.L3663:
	cmp	r5, r7	@ ivtmp.3164, D.47183
	bne	.L3664	@,
	ldr	r3, .L3795	@ tmp287,
	mov	r2, #0	@ tmp286,
	str	r2, [r4, #2192]	@ tmp286, pH264Ctx_19(D)->TotalUsrDatNum
	ldr	r3, [r3]	@ D.47179, g_event_report
	cmp	r3, r2	@ D.47179,
	bne	.L3779	@,
	b	.L3774	@
.L3649:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pH264Ctx
	bl	H264_DecSPS	@
	ldr	r1, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.47177,
	mov	r5, r0	@ ret,
	beq	.L3668	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp314,
	str	r3, [r7, #368]	@ tmp314, pH264Ctx_19(D)->pCurrNal
.L3668:
	cmp	r5, #0	@ ret,
	bne	.L3791	@,
	ldr	r3, [r4, #3636]	@ pH264Ctx_19(D)->TotalSPS, pH264Ctx_19(D)->TotalSPS
	mov	r0, r5	@ D.47171, ret
	add	r3, r3, #1	@ D.47174, pH264Ctx_19(D)->TotalSPS,
	str	r3, [r4, #3636]	@ D.47174, pH264Ctx_19(D)->TotalSPS
	b	.L3771	@
.L3793:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3632]	@ D.47174, pH264Ctx_19(D)->TotalNal
	b	.L3642	@
.L3791:
	ldr	r6, .L3795	@ tmp315,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6]	@ D.47179, g_event_report
	cmp	r3, #0	@ D.47179,
	beq	.L3774	@,
	add	r2, sp, #8	@ tmp317,,
	mvn	r5, #0	@ tmp316,
	mov	r1, #100	@,
	str	r5, [r2, #-4]!	@ tmp316,
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	blx	r3	@ D.47179
	ldr	r3, [r6]	@ D.47179, g_event_report
	cmp	r3, #0	@ D.47179,
	beq	.L3774	@,
.L3659:
	ldr	r0, [r4, #3688]	@, pH264Ctx_19(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.47179
	mvn	r0, #0	@ D.47171,
	b	.L3771	@
.L3794:
	bl	ClearCurrSlice	@
	ldr	r3, .L3795	@ tmp269,
	ldr	r3, [r3]	@ D.47179, g_event_report
	cmp	r3, #0	@ D.47179,
	bne	.L3659	@,
	b	.L3774	@
.L3677:
	ldr	r1, [r7, #368]	@ D.47177, pH264Ctx_19(D)->pCurrNal
	cmp	r1, #0	@ D.47177,
	bne	.L3679	@,
	b	.L3775	@
.L3796:
	.align	2
.L3795:
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
	mov	r3, #0	@ tmp192,
	str	r3, [sp, #16]	@ tmp192, u32Pos
	str	r3, [sp, #20]	@ tmp192, s32MaxPoc
	str	r3, [sp, #12]	@ tmp192, NewNum
	str	r3, [sp, #8]	@ tmp192, ReadNum
	str	r3, [sp, #4]	@ tmp192, RefNum
	beq	.L3818	@,
	ldr	r2, [r0]	@ D.47189, pH264Ctx_22(D)->pstExtraData
	add	r4, r0, #49152	@ tmp341, pH264Ctx,
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
	beq	.L3800	@,
	bl	ReceivePacket	@
	mov	r3, #0	@ tmp217,
	str	r3, [r4, #2176]	@ tmp217, pH264Ctx_22(D)->HaveNalNotDecoded
	mov	r6, r0	@ ret,
	cmp	r6, #0	@ ret,
	beq	.L3802	@,
.L3819:
	mov	r0, #0	@ D.47188,
.L3834:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L3800:
	ldr	r6, [r0, #368]	@ pH264Ctx_22(D)->pCurrNal, pH264Ctx_22(D)->pCurrNal
	mov	r3, #0	@ tmp217,
	str	r3, [r4, #2176]	@ tmp217, pH264Ctx_22(D)->HaveNalNotDecoded
	clz	r6, r6	@ D.47196, pH264Ctx_22(D)->pCurrNal
	mov	r6, r6, lsr #5	@ D.47196, D.47196,
	rsb	r6, r6, #0	@ ret, D.47196
	cmp	r6, #0	@ ret,
	bne	.L3819	@,
.L3802:
	ldr	r3, [r5, #368]	@ D.47192, pH264Ctx_22(D)->pCurrNal
	add	r7, r5, #13504	@ D.47193, pH264Ctx,
	add	r7, r7, #24	@ D.47193, D.47193,
	str	r6, [r3, #64]	@ ret, _39->nal_bitoffset
	mov	r0, r7	@, D.47193
	ldr	r3, [r5, #368]	@ D.47192, pH264Ctx_22(D)->pCurrNal
	ldr	r2, [r3, #12]	@, _42->stream[0].bitstream_length
	ldr	r1, [r3, #8]	@, _42->stream[0].streamBuffer
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r7	@, D.47193
	bl	BsGet	@
	ldr	r1, [r5, #368]	@ D.47192, pH264Ctx_22(D)->pCurrNal
	uxtb	r3, r0	@ nal_header,
	and	r2, r3, #27	@ tmp229, nal_header,
	and	r0, r3, #31	@ tmp222, nal_header,
	cmp	r2, #1	@ tmp229,
	strb	r0, [r1, #2]	@ tmp222, _50->nal_unit_type
	ldr	r2, [r5, #368]	@ D.47192, pH264Ctx_22(D)->pCurrNal
	ubfx	r3, r3, #5, #2	@ tmp227, nal_header,,
	str	r3, [r2, #76]	@ tmp227, _53->nal_ref_idc
	bne	.L3803	@,
	add	r2, sp, #28	@,,
	add	r1, sp, #24	@,,
	mov	r0, r5	@, pH264Ctx
	bl	InquireSliceProperty	@
	cmp	r0, #0	@,
	bne	.L3804	@,
	ldr	r2, [sp, #24]	@ IsNewPic, IsNewPic
	ldr	r1, [r4, #3704]	@ pH264Ctx_22(D)->PicCounter, pH264Ctx_22(D)->PicCounter
	sub	r3, r2, #1	@ D.47196, IsNewPic,
	clz	r3, r3	@ D.47196, D.47196
	mov	r3, r3, lsr #5	@ D.47196, D.47196,
	cmp	r3, #0	@ D.47196,
	add	r3, r3, r1	@ D.47191, D.47196, pH264Ctx_22(D)->PicCounter
	str	r3, [r4, #3704]	@ D.47191, pH264Ctx_22(D)->PicCounter
	bne	.L3836	@,
.L3805:
	ldr	r3, [sp, #28]	@ IsSizeChanged, IsSizeChanged
	cmp	r3, #1	@ IsSizeChanged,
	beq	.L3837	@,
.L3803:
	mov	r0, r5	@, pH264Ctx
	mov	r4, #0	@ tmp334,
	bl	FindTrailZeros	@
	ldr	r3, [r5, #368]	@ D.47192, pH264Ctx_22(D)->pCurrNal
	mov	r0, r7	@, D.47193
	str	r4, [r3, #64]	@ tmp334, _129->nal_bitoffset
	ldr	r3, [r5, #368]	@ D.47192, pH264Ctx_22(D)->pCurrNal
	ldr	r1, [r3, #8]	@, _131->stream[0].streamBuffer
	ldr	r2, [r3, #12]	@, _131->stream[0].bitstream_length
	bl	BsInit	@
	mov	r1, r4	@, tmp334
	mov	r0, r5	@, pH264Ctx
	bl	H264_DecOneNal	@
	cmp	r0, r4	@,
	beq	.L3819	@,
.L3818:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.47188,
	b	.L3834	@
.L3804:
	ldr	r1, [r5, #368]	@ D.47192, pH264Ctx_22(D)->pCurrNal
	cmp	r1, #0	@ D.47192,
	beq	.L3817	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_22(D)->ChanID
	bl	ReleaseNAL	@
	str	r6, [r5, #368]	@ ret, pH264Ctx_22(D)->pCurrNal
.L3817:
	ldr	r3, .L3842	@ tmp330,
	ldr	r3, [r3]	@ D.47198, g_event_report
	cmp	r3, #0	@ D.47198,
	mvneq	r0, #0	@ D.47188,
	beq	.L3834	@,
	ldr	r0, [r4, #3688]	@, pH264Ctx_22(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.47198
	mvn	r0, #0	@ D.47188,
	b	.L3834	@
.L3837:
	ldr	r3, [r5]	@ pH264Ctx_22(D)->pstExtraData, pH264Ctx_22(D)->pstExtraData
	ldr	r6, [r3, #692]	@ _88->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _88->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ _88->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3838	@,
.L3812:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L3839	@,
.L3813:
	ldr	r0, [r4, #3688]	@, pH264Ctx_22(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L3803	@,
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	ldr	r0, [r4, #3688]	@, pH264Ctx_22(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5]	@ D.47189, pH264Ctx_22(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _103->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _103->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _103->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3840	@,
.L3814:
	ldr	r3, [r3, #608]	@ _103->stChanOption.s32ReRangeEn, _103->stChanOption.s32ReRangeEn
	cmp	r3, #1	@ _103->stChanOption.s32ReRangeEn,
	bne	.L3803	@,
	ldr	r2, [sp, #8]	@ ReadNum, ReadNum
	ldr	r1, [sp, #12]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.47190, ReadNum, NewNum
	cmp	r2, #0	@ D.47190,
	ble	.L3803	@,
	str	r3, [r4, #2176]	@ _103->stChanOption.s32ReRangeEn, pH264Ctx_22(D)->HaveNalNotDecoded
	mvn	r0, #1	@ D.47188,
	str	r3, [r4, #3740]	@ _103->stChanOption.s32ReRangeEn, pH264Ctx_22(D)->DSD_NeedClearQue
	b	.L3834	@
.L3836:
	add	r6, r5, #20480	@ tmp342, pH264Ctx,
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	cmp	r3, #1	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	ldr	r3, [r4, #3708]	@ pH264Ctx_22(D)->NewPicCounter, pH264Ctx_22(D)->NewPicCounter
	addeq	r3, r3, #1	@ D.47191, pH264Ctx_22(D)->NewPicCounter,
	addne	r3, r3, #2	@ D.47191, pH264Ctx_22(D)->NewPicCounter,
	str	r3, [r4, #3708]	@ D.47191, pH264Ctx_22(D)->NewPicCounter
	ldr	r3, [r4, #3612]	@ pH264Ctx_22(D)->SliceParaNum, pH264Ctx_22(D)->SliceParaNum
	cmp	r3, #0	@ pH264Ctx_22(D)->SliceParaNum,
	beq	.L3805	@,
	ldr	r3, [r5, #368]	@ D.47192, pH264Ctx_22(D)->pCurrNal
	mov	ip, #0	@ tmp256,
	mov	r0, r7	@, D.47193
	mov	r2, #12	@,
	ldr	r1, .L3842+4	@,
	str	ip, [r3, #64]	@ tmp256, _75->nal_bitoffset
	bl	BsInit	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #1	@,
	bl	H264_DecOneNal	@
	ldrb	r3, [r6, #201]	@ zero_extendqisi2	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag, pH264Ctx_22(D)->CurrSlice.field_pic_flag
	mvn	r0, #1	@ D.47188,
	cmp	r3, #1	@ pH264Ctx_22(D)->CurrSlice.field_pic_flag,
	ldr	r3, [r4, #3708]	@ pH264Ctx_22(D)->NewPicCounter, pH264Ctx_22(D)->NewPicCounter
	subeq	r3, r3, #1	@ D.47191, pH264Ctx_22(D)->NewPicCounter,
	subne	r3, r3, #2	@ D.47191, pH264Ctx_22(D)->NewPicCounter,
	str	r3, [r4, #3708]	@ D.47191, pH264Ctx_22(D)->NewPicCounter
	mov	r3, #1	@ tmp276,
	str	r3, [r4, #2176]	@ tmp276, pH264Ctx_22(D)->HaveNalNotDecoded
	b	.L3834	@
.L3839:
	bl	vfmw_dprint_nothing	@
	b	.L3813	@
.L3838:
	add	r3, r5, #24576	@ tmp281, pH264Ctx,
	ldr	r3, [r3, #2052]	@ pH264Ctx_22(D)->DPB.used_size, pH264Ctx_22(D)->DPB.used_size
	cmp	r3, #0	@ pH264Ctx_22(D)->DPB.used_size,
	beq	.L3812	@,
	add	r2, sp, #16	@,,
	add	r1, sp, #20	@,,
	mov	r0, r5	@, pH264Ctx
	bl	GetMaxPOC	@
	ldr	r3, [sp, #16]	@ u32Pos, u32Pos
	add	r3, r3, #6592	@ tmp286, u32Pos,
	add	r3, r3, #16	@ tmp286, tmp286,
	ldr	r3, [r5, r3, asl #2]	@ D.47197, pH264Ctx_22(D)->DPB.fs
	str	r6, [r3, #384]	@ _88->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _93->fs_image.u32IsLastFrame
	b	.L3812	@
.L3840:
	ldr	r1, [r4, #3724]	@ pH264Ctx_22(D)->DSD_OldWidth, pH264Ctx_22(D)->DSD_OldWidth
	ldr	r2, [r3, #720]	@ _103->s32DSDThrWidth, _103->s32DSDThrWidth
	cmp	r1, r2	@ pH264Ctx_22(D)->DSD_OldWidth, _103->s32DSDThrWidth
	bgt	.L3815	@,
	ldr	r1, [r4, #3728]	@ pH264Ctx_22(D)->DSD_OldHeight, pH264Ctx_22(D)->DSD_OldHeight
	ldr	r2, [r3, #724]	@ _103->s32DSDThrHeight, _103->s32DSDThrHeight
	cmp	r1, r2	@ pH264Ctx_22(D)->DSD_OldHeight, _103->s32DSDThrHeight
	ble	.L3814	@,
.L3815:
	ldr	r3, [r3, #608]	@ _103->stChanOption.s32ReRangeEn, _103->stChanOption.s32ReRangeEn
	cmp	r3, #1	@ _103->stChanOption.s32ReRangeEn,
	bne	.L3803	@,
	ldr	r3, [sp, #12]	@ NewNum, NewNum
	cmp	r3, #0	@ NewNum,
	ble	.L3841	@,
.L3816:
	mov	r2, #0	@ tmp322,
	mov	r3, #1	@ tmp325,
	str	r2, [r4, #3740]	@ tmp322, pH264Ctx_22(D)->DSD_NeedClearQue
	mvn	r0, #1	@ D.47188,
	str	r3, [r4, #2176]	@ tmp325, pH264Ctx_22(D)->HaveNalNotDecoded
	b	.L3834	@
.L3841:
	ldr	r3, [sp, #8]	@ ReadNum, ReadNum
	cmp	r3, #4	@ ReadNum,
	ble	.L3803	@,
	b	.L3816	@
.L3843:
	.align	2
.L3842:
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
	ldr	r5, [r0, #364]	@ D.47201, pH264Ctx_6(D)->StartMode
	mov	r7, r3	@ pLumaInfo, pLumaInfo
	cmp	r5, #0	@ D.47201,
	bne	.L3845	@,
	add	r6, r0, #49152	@ tmp129, pH264Ctx,
	str	r1, [r6, #1004]	@ ErrRatio, pH264Ctx_6(D)->CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r7	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	cmp	r0, #1	@,
	bls	.L3846	@,
	ldr	r3, [r6, #960]	@ pH264Ctx_6(D)->CurrPic.frame_store, pH264Ctx_6(D)->CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r6, #3688]	@, pH264Ctx_6(D)->ChanID
	ldr	r1, [r3, #508]	@, _17->logic_fs_id
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	str	r5, [r6, #960]	@ D.47201, pH264Ctx_6(D)->CurrPic.frame_store
	mvn	r5, #0	@ D.47201,
	mov	r0, r5	@, D.47201
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3845:
	add	r5, r0, #49152	@ tmp187, pH264Ctx,
	str	r1, [r5, #1004]	@ ErrRatio, pH264Ctx_6(D)->CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r7	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	cmp	r0, #0	@,
	bne	.L3857	@,
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	bne	.L3858	@,
.L3849:
	add	r2, r4, #12288	@ tmp151, pH264Ctx,
	mov	r3, #0	@ tmp147,
	str	r3, [r5, #2172]	@ tmp147, pH264Ctx_6(D)->AllowStartDec
	add	r4, r4, #20480	@ tmp149, pH264Ctx,
	ldr	r1, [r2, #1288]	@ pH264Ctx_6(D)->MaxPpsNum, pH264Ctx_6(D)->MaxPpsNum
	mov	r5, r3	@ D.47201, tmp147
	movw	r2, #23352	@ tmp155,
	strb	r3, [r4, #1848]	@ tmp147, pH264Ctx_6(D)->PrevSlice.field_pic_flag
	str	r3, [r4, #1880]	@ tmp147, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	movt	r2, 1	@ tmp155,
	str	r1, [r4, #1856]	@ pH264Ctx_6(D)->MaxPpsNum, pH264Ctx_6(D)->PrevSlice.pic_parameter_set_id
	mov	r0, #7	@ tmp166,
	mov	r1, #2	@ tmp162,
	str	r3, [r4, #1884]	@ tmp147, pH264Ctx_6(D)->PrevSlice.delta_pic_order_cnt
	str	r2, [r4, #1864]	@ tmp155, pH264Ctx_6(D)->PrevSlice.frame_num
	mov	r3, #32	@ tmp169,
	strb	r1, [r4, #1849]	@ tmp162, pH264Ctx_6(D)->PrevSlice.bottom_field_flag
	mvn	r2, #0	@ tmp176,
	mov	r1, #3	@ tmp173,
	str	r0, [r4, #1860]	@ tmp166, pH264Ctx_6(D)->PrevSlice.nal_ref_idc
	strb	r3, [r4, #1850]	@ tmp169, pH264Ctx_6(D)->PrevSlice.nal_unit_type
	mov	r0, r5	@, D.47201
	mov	r3, #262144	@ tmp185,
	str	r1, [r4, #1872]	@ tmp173, pH264Ctx_6(D)->PrevSlice.pic_oder_cnt_lsb
	str	r2, [r4, #1876]	@ tmp176, pH264Ctx_6(D)->PrevSlice.delta_pic_oder_cnt_bottom
	str	r3, [r4, #1888]	@ tmp185, pH264Ctx_6(D)->PrevSlice.first_mb_in_slice
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3846:
	mov	r3, #1	@ tmp142,
	mov	r0, r5	@, D.47201
	str	r3, [r6, #2172]	@ tmp142, pH264Ctx_6(D)->AllowStartDec
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3857:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L3849	@,
.L3858:
	bl	vfmw_dprint_nothing	@
	b	.L3849	@
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
	add	r5, r0, #49152	@ tmp181, pH264Ctx,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r7, [r5, #2164]	@ D.47230, pH264Ctx_8(D)->TotalFsNum
	cmp	r7, #0	@ D.47230,
	beq	.L3873	@,
	add	lr, r0, #27136	@ ivtmp.3208, pH264Ctx,
	add	r8, r0, #26368	@ ivtmp.3195, pH264Ctx,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	add	lr, lr, #168	@ ivtmp.3208, ivtmp.3208,
	add	r8, r8, #64	@ ivtmp.3195, ivtmp.3195,
	add	r0, r0, #24576	@ tmp182, pH264Ctx,
	mov	r1, #0	@ i,
.L3867:
	ldrb	r3, [lr, #1]	@ zero_extendqisi2	@ MEM[base: _40, offset: 1B], MEM[base: _40, offset: 1B]
	cmp	r3, #0	@ MEM[base: _40, offset: 1B],
	bne	.L3862	@,
	cmp	lr, #0	@ ivtmp.3208,
	beq	.L3863	@,
	ldr	r4, [r0, #2052]	@ D.47230, pH264Ctx_8(D)->DPB.used_size
	cmp	r4, #0	@ D.47230,
	beq	.L3863	@,
	ldr	r2, [r0, #1856]	@ pH264Ctx_8(D)->DPB.fs, pH264Ctx_8(D)->DPB.fs
	cmp	lr, r2	@ ivtmp.3208, pH264Ctx_8(D)->DPB.fs
	beq	.L3862	@,
	mov	r2, r8	@ ivtmp.3195, ivtmp.3195
	b	.L3864	@
.L3865:
	ldr	ip, [r2, #4]!	@ MEM[base: _4, offset: 0B], MEM[base: _4, offset: 0B]
	cmp	lr, ip	@ ivtmp.3208, MEM[base: _4, offset: 0B]
	beq	.L3862	@,
.L3864:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.47230
	bne	.L3865	@,
.L3863:
	ldr	r0, [r5, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ ret,
	beq	.L3873	@,
	cmn	r0, #1	@ ret,
	bne	.L3889	@,
	add	r1, r6, #8	@, pH264Ctx,
	ldr	r0, [r5, #3688]	@, pH264Ctx_8(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	b	.L3889	@
.L3862:
	add	r1, r1, #1	@ i, i,
	add	lr, lr, #560	@ ivtmp.3208, ivtmp.3208,
	cmp	r1, r7	@ i, D.47230
	bne	.L3867	@,
	add	r2, sp, #4	@,,
	mov	r1, sp	@,
	add	r0, r6, #8	@, pH264Ctx,
	bl	GetQueueImgNum	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #2164]	@ pH264Ctx_8(D)->TotalFsNum, pH264Ctx_8(D)->TotalFsNum
	cmp	r3, #0	@ pH264Ctx_8(D)->TotalFsNum,
	movne	r4, #0	@ i,
	beq	.L3872	@,
.L3871:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #2164]	@ pH264Ctx_8(D)->TotalFsNum, pH264Ctx_8(D)->TotalFsNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ pH264Ctx_8(D)->TotalFsNum, i
	bhi	.L3871	@,
.L3872:
	bl	vfmw_dprint_nothing	@
	add	r2, r6, #24576	@ tmp171, pH264Ctx,
	ldr	r3, [r5, #2164]	@ pH264Ctx_8(D)->TotalFsNum, pH264Ctx_8(D)->TotalFsNum
	ldr	r0, [r2, #2052]	@ pH264Ctx_8(D)->DPB.used_size, pH264Ctx_8(D)->DPB.used_size
	sub	r3, r3, #2	@ D.47230, pH264Ctx_8(D)->TotalFsNum,
	rsb	r3, r0, r3	@ D.47230, pH264Ctx_8(D)->DPB.used_size, D.47230
	ldr	r2, [sp]	@ ReadImgNum, ReadImgNum
	ldr	r1, [sp, #4]	@ NewImgNum, NewImgNum
	add	r2, r2, r1	@ D.47232, ReadImgNum, NewImgNum
	cmp	r2, r3	@ D.47232, D.47230
	blt	.L3891	@,
.L3889:
	mov	r0, #0	@ D.47228,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3873:
	mov	r0, #1	@ D.47228,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3891:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.47228,
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
	.type	SarTable.36078, %object
	.size	SarTable.36078, 136
SarTable.36078:
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
	.ascii	"SH: ref_pic_list_reordering_flag_l0\000"
.LC3:
	.ascii	"SH: reordering_of_pic_nums_idc_l0\000"
	.space	2
.LC4:
	.ascii	"SH: abs_diff_pic_num_minus1_l0\000"
	.space	1
.LC5:
	.ascii	"SH: long_term_pic_idx_l0\000"
	.space	3
.LC6:
	.ascii	"SH: ref_pic_list_reordering_flag_l1\000"
.LC7:
	.ascii	"SH: reordering_of_pic_nums_idc_l1\000"
	.space	2
.LC8:
	.ascii	"SH: abs_diff_pic_num_minus1_l1\000"
	.space	1
.LC9:
	.ascii	"SH: long_term_pic_idx_l1\000"
	.space	3
.LC10:
	.ascii	"SH: luma_log2_weight_denom\000"
	.space	1
.LC11:
	.ascii	"SH: chroma_log2_weight_denom\000"
	.space	3
.LC12:
	.ascii	"SH: luma_weight_flag_l0\000"
.LC13:
	.ascii	"SH: luma_weight_l0\000"
	.space	1
.LC14:
	.ascii	"SH: luma_offset_l0\000"
	.space	1
.LC15:
	.ascii	"SH: chroma_weight_flag_l0\000"
	.space	2
.LC16:
	.ascii	"SH: chroma_weight_l0\000"
	.space	3
.LC17:
	.ascii	"SH: chroma_offset_l0\000"
	.space	3
.LC18:
	.ascii	"SH: luma_weight_flag_l1\000"
.LC19:
	.ascii	"SH: luma_weight_l1\000"
	.space	1
.LC20:
	.ascii	"SH: luma_offset_l1\000"
	.space	1
.LC21:
	.ascii	"SH: chroma_weight_flag_l1\000"
	.space	2
.LC22:
	.ascii	"SH: chroma_weight_l1\000"
	.space	3
.LC23:
	.ascii	"SH: chroma_offset_l1\000"
	.space	3
.LC24:
	.ascii	"SH: memory_management_control_operation\000"
.LC25:
	.ascii	"SH: difference_of_pic_nums_minus1\000"
	.space	2
.LC26:
	.ascii	"SH: long_term_pic_num\000"
	.space	2
.LC27:
	.ascii	"SH: long_term_frame_idx\000"
.LC28:
	.ascii	"SH: max_long_term_frame_idx_plus1\000"
	.space	2
.LC29:
	.ascii	"SH: no_output_of_prior_pics_flag\000"
	.space	3
.LC30:
	.ascii	"SH: long_term_reference_flag\000"
	.space	3
.LC31:
	.ascii	"SH: adaptive_ref_pic_marking_mode_flag\000"
	.space	1
.LC32:
	.ascii	"SH: pic_parameter_set_id\000"
	.space	3
.LC33:
	.ascii	"SH: frame_num\000"
	.space	2
.LC34:
	.ascii	"SH: field_pic_flag\000"
	.space	1
.LC35:
	.ascii	"SH: bottom_field_flag\000"
	.space	2
.LC36:
	.ascii	"SH: idr_pic_id\000"
	.space	1
.LC37:
	.ascii	"SH: pic_order_cnt_lsb\000"
	.space	2
.LC38:
	.ascii	"SH: delta_pic_order_cnt_bottom\000"
	.space	1
.LC39:
	.ascii	"SH: delta_pic_order_cnt[0]\000"
	.space	1
.LC40:
	.ascii	"SH: delta_pic_order_cnt[1]\000"
	.space	1
.LC41:
	.ascii	"SH: redundant_pic_cnt\000"
	.space	2
.LC42:
	.ascii	"SH: direct_spatial_mv_pred_flag\000"
.LC43:
	.ascii	"SH: num_ref_idx_override_flag\000"
	.space	2
.LC44:
	.ascii	"SH: num_ref_idx_l0_active_minus1\000"
	.space	3
.LC45:
	.ascii	"SH: num_ref_idx_l1_active_minus1\000"
	.space	3
.LC46:
	.ascii	"SH: cabac_init_idc\000"
	.space	1
.LC47:
	.ascii	"SH: slice_qp_delta\000"
	.space	1
.LC48:
	.ascii	"SH: disable_deblocking_filter_idc\000"
	.space	2
.LC49:
	.ascii	"SH: slice_alpha_c0_offset_div2\000"
	.space	1
.LC50:
	.ascii	"SH: slice_beta_offset_div2\000"
	.space	1
.LC51:
	.ascii	"   : delta_sl   \000"
	.space	3
.LC52:
	.ascii	"PPS: entropy_coding_mode_flag\000"
	.space	2
.LC53:
	.ascii	"PPS: pic_order_present_flag\000"
.LC54:
	.ascii	"PPS: num_slice_groups_minus1\000"
	.space	3
.LC55:
	.ascii	"PPS: num_ref_idx_l0_active_minus1\000"
	.space	2
.LC56:
	.ascii	"PPS: num_ref_idx_l1_active_minus1\000"
	.space	2
.LC57:
	.ascii	"PPS: weighted prediction flag\000"
	.space	2
.LC58:
	.ascii	"PPS: weighted_bipred_idc\000"
	.space	3
.LC59:
	.ascii	"PPS: pic_init_qp_minus26\000"
	.space	3
.LC60:
	.ascii	"PPS: pic_init_qs_minus26\000"
	.space	3
.LC61:
	.ascii	"PPS: chroma_qp_index_offset\000"
.LC62:
	.ascii	"PPS: deblocking_filter_control_present_flag\000"
.LC63:
	.ascii	"PPS: constrained_intra_pred_flag\000"
	.space	3
.LC64:
	.ascii	"PPS: redundant_pic_cnt_present_flag\000"
.LC65:
	.ascii	"PPS: transform_8x8_mode_flag\000"
	.space	3
.LC66:
	.ascii	"PPS: pic_scaling_matrix_present_flag\000"
	.space	3
.LC67:
	.ascii	"PPS: second_chroma_qp_index_offset\000"
	.space	1
.LC68:
	.ascii	"SPS: seq_scaling_list_present_flag\000"
	.space	1
.LC69:
	.ascii	"PPS: pic_scaling_list_present_flag\000"
	.space	1
.LC70:
	.ascii	"PPS: pic_parameter_set_id\000"
	.space	2
.LC71:
	.ascii	"PPS: seq_parameter_set_id\000"
	.space	2
.LC72:
	.ascii	"VUI: aspect_ratio_info_present_flag\000"
.LC73:
	.ascii	"VUI: aspect_ratio_idc\000"
	.space	2
.LC74:
	.ascii	"VUI: sar_width\000"
	.space	1
.LC75:
	.ascii	"VUI: sar_height\000"
.LC76:
	.ascii	"VUI: overscan_info_present_flag\000"
.LC77:
	.ascii	"VUI: overscan_appropriate_flag\000"
	.space	1
.LC78:
	.ascii	"VUI: video_signal_type_present_flag\000"
.LC79:
	.ascii	"VUI: video_format\000"
	.space	2
.LC80:
	.ascii	"VUI: video_full_range_flag\000"
	.space	1
.LC81:
	.ascii	"VUI: color_description_present_flag\000"
.LC82:
	.ascii	"VUI: colour_primaries\000"
	.space	2
.LC83:
	.ascii	"VUI: transfer_characteristics\000"
	.space	2
.LC84:
	.ascii	"VUI: matrix_coefficients\000"
	.space	3
.LC85:
	.ascii	"VUI: chroma_loc_info_present_flag\000"
	.space	2
.LC86:
	.ascii	"VUI: chroma_sample_loc_type_top_field\000"
	.space	2
.LC87:
	.ascii	"VUI: chroma_sample_loc_type_bottom_field\000"
	.space	3
.LC88:
	.ascii	"VUI: timing_info_present_flag\000"
	.space	2
.LC89:
	.ascii	"VUI: num_units_in_tick\000"
	.space	1
.LC90:
	.ascii	"VUI: time_scale\000"
.LC91:
	.ascii	"VUI: fixed_frame_rate_flag\000"
	.space	1
.LC92:
	.ascii	"VUI: nal_hrd_parameters_present_flag\000"
	.space	3
.LC93:
	.ascii	"VUI: cpb_cnt_minus1\000"
.LC94:
	.ascii	"VUI: bit_rate_scale\000"
.LC95:
	.ascii	"VUI: cpb_size_scale\000"
.LC96:
	.ascii	"VUI: bit_rate_value_minus1\000"
	.space	1
.LC97:
	.ascii	"VUI: cpb_size_value_minus1\000"
	.space	1
.LC98:
	.ascii	"VUI: cbr_flag\000"
	.space	2
.LC99:
	.ascii	"VUI: initial_cpb_removal_delay_length_minus1\000"
	.space	3
.LC100:
	.ascii	"VUI: cpb_removal_delay_length_minus1\000"
	.space	3
.LC101:
	.ascii	"VUI: dpb_output_delay_length_minus1\000"
.LC102:
	.ascii	"VUI: time_offset_length\000"
.LC103:
	.ascii	"VUI: vcl_hrd_parameters_present_flag\000"
	.space	3
.LC104:
	.ascii	"VUI: low_delay_hrd_flag\000"
.LC105:
	.ascii	"VUI: pic_struct_present_flag\000"
	.space	3
.LC106:
	.ascii	"VUI: bitstream_restriction_flag\000"
.LC107:
	.ascii	"VUI: motion_vectors_over_pic_boundaries_flag\000"
	.space	3
.LC108:
	.ascii	"VUI: max_bytes_per_pic_denom\000"
	.space	3
.LC109:
	.ascii	"VUI: max_bits_per_mb_denom\000"
	.space	1
.LC110:
	.ascii	"VUI: log2_max_mv_length_horizontal\000"
	.space	1
.LC111:
	.ascii	"VUI: log2_max_mv_length_vertical\000"
	.space	3
.LC112:
	.ascii	"VUI: num_reorder_frames\000"
.LC113:
	.ascii	"VUI: max_dec_frame_buffering\000"
	.space	3
.LC114:
	.ascii	"SPS: chroma_format_idc\000"
	.space	1
.LC115:
	.ascii	"SPS: bit_depth_luma_minus8\000"
	.space	1
.LC116:
	.ascii	"SPS: bit_depth_chroma_minus8\000"
	.space	3
.LC117:
	.ascii	"SPS: qpprime_y_zero_trans_bypass_flag\000"
	.space	2
.LC118:
	.ascii	"SPS: seq_scaling_matrix_present_flag\000"
	.space	3
.LC119:
	.ascii	"SPS: log2_max_frame_num_minus4\000"
	.space	1
.LC120:
	.ascii	"SPS: pic_order_cnt_type\000"
.LC121:
	.ascii	"SPS: log2_max_pic_order_cnt_lsb_minus4\000"
	.space	1
.LC122:
	.ascii	"SPS: num_ref_frames\000"
.LC123:
	.ascii	"SPS: delta_pic_order_always_zero_flag\000"
	.space	2
.LC124:
	.ascii	"SPS: offset_for_non_ref_pic\000"
.LC125:
	.ascii	"SPS: offset_for_top_to_bottom_field\000"
.LC126:
	.ascii	"SPS: num_ref_frames_in_pic_order_cnt_cycle\000"
	.space	1
.LC127:
	.ascii	"SPS: offset_for_ref_frame[i]\000"
	.space	3
.LC128:
	.ascii	"SPS: gaps_in_frame_num_value_allowed_flag\000"
	.space	2
.LC129:
	.ascii	"SPS: pic_width_in_mbs_minus1\000"
	.space	3
.LC130:
	.ascii	"SPS: pic_height_in_map_units_minus1\000"
.LC131:
	.ascii	"SPS: frame_mbs_only_flag\000"
	.space	3
.LC132:
	.ascii	"SPS: direct_8x8_inference_flag\000"
	.space	1
.LC133:
	.ascii	"SPS: frame_cropping_flag\000"
	.space	3
.LC134:
	.ascii	"SPS: frame_cropping_rect_left_offset\000"
	.space	3
.LC135:
	.ascii	"SPS: frame_cropping_rect_right_offset\000"
	.space	2
.LC136:
	.ascii	"SPS: frame_cropping_rect_top_offset\000"
.LC137:
	.ascii	"SPS: frame_cropping_rect_bottom_offset\000"
	.space	1
.LC138:
	.ascii	"SPS: vui_parameters_present_flag\000"
	.space	3
.LC139:
	.ascii	"SPS: mb_adaptive_frame_field_flag\000"
	.space	2
.LC140:
	.ascii	"SPS: profile_idc\000"
	.space	3
.LC141:
	.ascii	"SPS: constrained_set0_flag\000"
	.space	1
.LC142:
	.ascii	"SPS: constrained_set1_flag\000"
	.space	1
.LC143:
	.ascii	"SPS: constrained_set2_flag\000"
	.space	1
.LC144:
	.ascii	"SPS: constrained_set3_flag\000"
	.space	1
.LC145:
	.ascii	"SPS: reserved_zero_4bits\000"
	.space	3
.LC146:
	.ascii	"SPS: level_idc\000"
	.space	1
.LC147:
	.ascii	"SPS: seq_parameter_set_id\000"
	.space	2
.LC148:
	.ascii	"SEI: frame_packing_arrangement_id\000"
	.space	2
.LC149:
	.ascii	"SEI: frame_packing_arrangement_cancel_flag\000"
	.space	1
.LC150:
	.ascii	"SEI: frame_packing_arrangement_type\000"
.LC151:
	.ascii	"SEI: quincunx_sampling_flag\000"
.LC152:
	.ascii	"SEI: content_interpretation_type\000"
	.space	3
.LC153:
	.ascii	"SEI: spatial_flipping_flag\000"
	.space	1
.LC154:
	.ascii	"SEI: frame0_flipped_flag\000"
	.space	3
.LC155:
	.ascii	"SEI: field_views_flag\000"
	.space	2
.LC156:
	.ascii	"SEI: current_frame_is_frame0_flag\000"
	.space	2
.LC157:
	.ascii	"SEI: frame0_self_contained_flag\000"
.LC158:
	.ascii	"SEI: frame1_self_contained_flag\000"
.LC159:
	.ascii	"SEI: frame0_grid_position_x\000"
.LC160:
	.ascii	"SEI: frame0_grid_position_y\000"
.LC161:
	.ascii	"SEI: frame1_grid_position_x\000"
.LC162:
	.ascii	"SEI: frame1_grid_position_y\000"
.LC163:
	.ascii	"SEI: frame_packing_arrangement_reserved_byte\000"
	.space	3
.LC164:
	.ascii	"SEI: frame_packing_arrangement_repetition_period\000"
	.space	3
.LC165:
	.ascii	"SEI: frame_packing_arrangement_extension_flag\000"
	.space	2
.LC166:
	.ascii	"SEI: cpb_removal_delay\000"
	.space	1
.LC167:
	.ascii	"SEI: dpb_output_delay\000"
	.space	2
.LC168:
	.ascii	"pic_struct\000"
	.space	1
.LC169:
	.ascii	"SEI: itu_t_t35_country_code\000"
.LC170:
	.ascii	"SEI: itu_t_t35_country_code_extension_byte\000"
	.space	1
.LC171:
	.ascii	"SEI: itu_t_t35_provider_code\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
.LANCHOR3 = . + 8184
	.type	pps_tmp.35998, %object
	.size	pps_tmp.35998, 2208
pps_tmp.35998:
	.space	2208
	.type	sps_tmp.36132, %object
	.size	sps_tmp.36132, 4000
sps_tmp.36132:
	.space	4000
	.type	TmpBuf, %object
	.size	TmpBuf, 68
TmpBuf:
	.space	68
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
