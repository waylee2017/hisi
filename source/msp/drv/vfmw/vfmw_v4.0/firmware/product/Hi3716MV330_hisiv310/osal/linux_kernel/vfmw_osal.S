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
	.file	"vfmw_osal.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(vfmw_osal)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel/.vfmw_osal.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel/vfmw_osal.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel/vfmw_osal.o
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
	.global	SEM_INIT
	.type	SEM_INIT, %function
SEM_INIT:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r2, .L3	@,
	str	r1, [r0, #8]	@ val, pSem_2(D)->flag
	ldr	r1, .L3+4	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	.LC0
	.fnend
	.size	SEM_INIT, .-SEM_INIT
	.align	2
	.global	SEM_UP
	.type	SEM_UP, %function
SEM_UP:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1	@,
	mov	r3, #0	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, r2	@,
	mov	r4, r0	@ pSem, pSem
	bl	__wake_up	@
	mov	r3, #1	@ tmp113,
	mov	r0, #0	@,
	str	r3, [r4, #8]	@ tmp113, pSem_1(D)->flag
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	SEM_UP, .-SEM_UP
	.align	2
	.global	SEM_DOWN
	.type	SEM_DOWN, %function
SEM_DOWN:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r1, asl #3	@ tmp136, Time,
	movw	r2, #34079	@ tmp140,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r3, r1, lsl #1	@ D.28984, tmp136, Time,
	add	r4, r4, #50	@ D.28984, D.28984,
	movt	r2, 20971	@ tmp140,
	ldr	r1, [r0, #8]	@ pSem_13(D)->flag, pSem_13(D)->flag
	.pad #24
	sub	sp, sp, #24	@,,
	smull	r2, r3, r4, r2	@ tmp139, D.28984, tmp140
	cmp	r1, #0	@ pSem_13(D)->flag,
	mov	r4, r4, asr #31	@ tmp142, D.28984,
	mov	r5, r0	@ pSem, pSem
	rsb	r4, r4, r3, asr #5	@ l_ret, tmp142,,
	bne	.L8	@,
	mov	r3, sp	@ tmp174,
	bic	r3, r3, #8128	@ D.28986, tmp174,
	bic	r3, r3, #63	@ D.28986, D.28986,
	ldr	r0, .L20	@ tmp153,
	str	r1, [sp, #4]	@ pSem_13(D)->flag, __wait
	add	r2, sp, #16	@ tmp155,,
	ldr	r1, [r3, #12]	@ _34->task, _34->task
	mov	r6, r3	@ D.28986, D.28986
	str	r0, [sp, #12]	@ tmp153, __wait.func
	str	r2, [sp, #16]	@ tmp155, __wait.task_list.next
	str	r1, [sp, #8]	@ _34->task, __wait.private
	str	r2, [sp, #20]	@ tmp155, __wait.task_list.prev
.L11:
	mov	r0, r5	@, pSem
	mov	r2, #1	@,
	add	r1, sp, #4	@ tmp175,,
	bl	prepare_to_wait	@
	ldr	r3, [r5, #8]	@ pSem_13(D)->flag, pSem_13(D)->flag
	mov	r0, r4	@, l_ret
	cmp	r3, #0	@ pSem_13(D)->flag,
	bne	.L9	@,
	ldr	r3, [r6, #12]	@ _37->task, _37->task
	ldr	r3, [r3, #4]	@ D.28988, _24->stack
	ldr	r3, [r3]	@ D.28986, MEM[(const long unsigned int *)_38]
	tst	r3, #1	@ D.28986,
	bne	.L13	@,
	bl	schedule_timeout	@
	subs	r4, r0, #0	@ l_ret,
	bne	.L11	@,
.L12:
	ldr	r4, [r5, #8]	@ pSem_13(D)->flag, pSem_13(D)->flag
	adds	r4, r4, #0	@ l_ret, pSem_13(D)->flag,
	movne	r4, #1	@ l_ret,
.L10:
	add	r1, sp, #4	@ tmp176,,
	mov	r0, r5	@, pSem
	bl	finish_wait	@
.L8:
	mov	r0, r4	@, l_ret
	mov	r3, #0	@ tmp168,
	str	r3, [r5, #8]	@ tmp168, pSem_13(D)->flag
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L13:
	mov	r4, #65024	@ l_ret,
	movt	r4, 65535	@ l_ret,
	b	.L10	@
.L9:
	cmp	r4, #0	@ l_ret,
	bne	.L10	@,
	b	.L12	@
.L21:
	.align	2
.L20:
	.word	autoremove_wake_function
	.fnend
	.size	SEM_DOWN, .-SEM_DOWN
	.align	2
	.global	OSAL_AcrtUsSleep
	.type	OSAL_AcrtUsSleep, %function
OSAL_AcrtUsSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ us, us
	mov	r0, sp	@,
	bl	ktime_get	@
	mov	r3, sp	@ tmp129,
	bic	r2, r3, #8128	@ D.28996, tmp129,
	mov	r3, #1000	@ tmp122,
	mul	r1, r3, r4	@ D.28994, tmp122, us
	bic	r2, r2, #63	@ D.28996, D.28996,
	add	r0, sp, #16	@ tmp128,,
	mov	lr, #2	@ tmp127,
	ldr	ip, [r2, #12]	@ D.28995, _16->task
	ldrd	r2, [sp]	@ D.27789,
	adds	r2, r2, r1	@ D.28993, D.27789, D.28994
	adc	r3, r3, #0	@ D.28993, D.27789,
	strd	r2, [r0, #-8]!	@ D.28993, expires.tv64
	str	lr, [ip]	@ tmp127, _9->state
	mov	r1, #0	@,
	bl	schedule_hrtimeout	@
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	OSAL_AcrtUsSleep, .-OSAL_AcrtUsSleep
	.align	2
	.global	OSAL_GetTimeInMs
	.type	OSAL_GetTimeInMs, %function
OSAL_GetTimeInMs:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	movw	r4, #19923	@ tmp124,
	mov	r0, sp	@,
	movt	r4, 4194	@ tmp124,
	bl	do_gettimeofday	@
	ldr	r3, [sp, #4]	@ CurrentTime.tv_usec, CurrentTime.tv_usec
	ldr	r2, [sp]	@ CurrentTime.tv_sec, CurrentTime.tv_sec
	mov	r0, #1000	@ tmp120,
	smull	r4, r5, r3, r4	@ tmp123, CurrentTime.tv_usec, tmp124
	mov	r3, r3, asr #31	@ tmp126, CurrentTime.tv_usec,
	rsb	r3, r3, r5, asr #6	@ D.29001, tmp126,,
	mla	r0, r0, r2, r3	@, tmp120, CurrentTime.tv_sec, D.29001
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	OSAL_GetTimeInMs, .-OSAL_GetTimeInMs
	.align	2
	.global	OSAL_GetTimeInUs
	.type	OSAL_GetTimeInUs, %function
OSAL_GetTimeInUs:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r0, sp	@,
	bl	do_gettimeofday	@
	ldmia	sp, {r0, r2}	@,,
	movw	r3, #16960	@ tmp119,
	movt	r3, 15	@ tmp119,
	mla	r0, r3, r0, r2	@, tmp119, CurrentTime.tv_sec, CurrentTime.tv_usec
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
	.fnend
	.size	OSAL_GetTimeInUs, .-OSAL_GetTimeInUs
	.align	2
	.global	OSAL_AllocVirMem
	.type	OSAL_AllocVirMem, %function
OSAL_AllocVirMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vmalloc	@
	.fnend
	.size	OSAL_AllocVirMem, .-OSAL_AllocVirMem
	.align	2
	.global	OSAL_FreeVirMem
	.type	OSAL_FreeVirMem, %function
OSAL_FreeVirMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ p,
	bxeq	lr	@
	b	vfree	@
	.fnend
	.size	OSAL_FreeVirMem, .-OSAL_FreeVirMem
	.align	2
	.global	OSAL_CreateTask
	.type	OSAL_CreateTask, %function
OSAL_CreateTask:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r3, r1	@, TaskName
	mov	r4, r0	@ pTask, pTask
	mov	r1, #0	@,
	mov	r0, r2	@, pTaskFunction
	mvn	r2, #0	@,
	bl	kthread_create_on_node	@
	cmp	r0, #0	@ D.29015,
	str	r0, [r4]	@ D.29015, *pTask_9(D)
	beq	.L33	@,
	bl	wake_up_process	@
	mov	r0, #0	@ D.29013,
	ldmfd	sp!, {r4, pc}	@
.L33:
	mvn	r0, #19	@ D.29013,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	OSAL_CreateTask, .-OSAL_CreateTask
	.align	2
	.global	OSAL_WakeupTask
	.type	OSAL_WakeupTask, %function
OSAL_WakeupTask:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_WakeupTask, .-OSAL_WakeupTask
	.align	2
	.global	OSAL_DeleteTask
	.type	OSAL_DeleteTask, %function
OSAL_DeleteTask:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_DeleteTask, .-OSAL_DeleteTask
	.align	2
	.global	OSAL_InitEvent
	.type	OSAL_InitEvent, %function
OSAL_InitEvent:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r2, .L39	@,
	str	r1, [r0, #8]	@ InitVal, pEvent_2(D)->flag
	ldr	r1, .L39+4	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	.LC1
	.fnend
	.size	OSAL_InitEvent, .-OSAL_InitEvent
	.align	2
	.global	OSAL_GiveEvent
	.type	OSAL_GiveEvent, %function
OSAL_GiveEvent:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1	@ tmp113,
	mov	r3, #0	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, r2	@,
	str	r2, [r0, #8]	@ tmp113, pEvent_2(D)->flag
	bl	__wake_up	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	OSAL_GiveEvent, .-OSAL_GiveEvent
	.align	2
	.global	OSAL_WaitEvent
	.type	OSAL_WaitEvent, %function
OSAL_WaitEvent:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #26215	@ tmp136,
	movt	r2, 26214	@ tmp136,
	smull	r2, r3, r1, r2	@ tmp135, msWaitTime, tmp136
	mov	r1, r1, asr #31	@ tmp138, msWaitTime,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pEvent, pEvent
	ldr	r2, [r0, #8]	@ pEvent_12(D)->flag, pEvent_12(D)->flag
	.pad #24
	sub	sp, sp, #24	@,,
	cmp	r2, #0	@ pEvent_12(D)->flag,
	rsb	r4, r1, r3, asr #2	@ l_ret, tmp138,,
	beq	.L44	@,
	adds	r4, r4, #0	@ D.29034, l_ret,
	movne	r4, #1	@ D.29034,
	rsb	r4, r4, #0	@ D.29029, D.29034
.L45:
	mov	r0, r4	@, D.29029
	mov	r3, #0	@ tmp166,
	str	r3, [r5, #8]	@ tmp166, pEvent_12(D)->flag
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L44:
	mov	r3, sp	@ tmp172,
	bic	r3, r3, #8128	@ D.29031, tmp172,
	bic	r3, r3, #63	@ D.29031, D.29031,
	str	r2, [sp, #4]	@ pEvent_12(D)->flag, __wait
	ldr	r0, .L56	@ tmp151,
	add	r2, sp, #16	@ tmp153,,
	ldr	r1, [r3, #12]	@ _33->task, _33->task
	mov	r6, r3	@ D.29031, D.29031
	str	r2, [sp, #16]	@ tmp153, __wait.task_list.next
	str	r0, [sp, #12]	@ tmp151, __wait.func
	str	r1, [sp, #8]	@ _33->task, __wait.private
	str	r2, [sp, #20]	@ tmp153, __wait.task_list.prev
.L48:
	mov	r0, r5	@, pEvent
	mov	r2, #1	@,
	add	r1, sp, #4	@ tmp173,,
	bl	prepare_to_wait	@
	ldr	r3, [r5, #8]	@ pEvent_12(D)->flag, pEvent_12(D)->flag
	mov	r0, r4	@, l_ret
	cmp	r3, #0	@ pEvent_12(D)->flag,
	bne	.L46	@,
	ldr	r3, [r6, #12]	@ _36->task, _36->task
	ldr	r3, [r3, #4]	@ D.29033, _23->stack
	ldr	r3, [r3]	@ D.29031, MEM[(const long unsigned int *)_37]
	tst	r3, #1	@ D.29031,
	bne	.L50	@,
	bl	schedule_timeout	@
	subs	r4, r0, #0	@ l_ret,
	bne	.L48	@,
.L49:
	ldr	r4, [r5, #8]	@ pEvent_12(D)->flag, pEvent_12(D)->flag
	adds	r4, r4, #0	@ D.29034, pEvent_12(D)->flag,
	movne	r4, #1	@ D.29034,
	rsb	r4, r4, #0	@ D.29029, D.29034
.L47:
	add	r1, sp, #4	@ tmp174,,
	mov	r0, r5	@, pEvent
	bl	finish_wait	@
	b	.L45	@
.L46:
	cmp	r4, #0	@ l_ret,
	beq	.L49	@,
.L50:
	mvn	r4, #0	@ D.29029,
	b	.L47	@
.L57:
	.align	2
.L56:
	.word	autoremove_wake_function
	.fnend
	.size	OSAL_WaitEvent, .-OSAL_WaitEvent
	.align	2
	.global	OSAL_InitTaskMutex
	.type	OSAL_InitTaskMutex, %function
OSAL_InitTaskMutex:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r3, #1	@ tmp113,
	ldr	r2, .L60	@,
	str	r3, [r0, #8]	@ tmp113, MEM[(struct OSAL_EVENT *)pTaskMutex_2(D)].flag
	ldr	r1, .L60+4	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.word	.LC1
	.fnend
	.size	OSAL_InitTaskMutex, .-OSAL_InitTaskMutex
	.align	2
	.global	OSAL_LockTaskMutex
	.type	OSAL_LockTaskMutex, %function
OSAL_LockTaskMutex:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #16960	@,
	movt	r1, 15	@,
	b	OSAL_WaitEvent	@
	.fnend
	.size	OSAL_LockTaskMutex, .-OSAL_LockTaskMutex
	.align	2
	.global	OSAL_UnlockTaskMutex
	.type	OSAL_UnlockTaskMutex, %function
OSAL_UnlockTaskMutex:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1	@ tmp113,
	mov	r3, #0	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, r2	@,
	str	r2, [r0, #8]	@ tmp113, MEM[(struct OSAL_EVENT *)pTaskMutex_2(D)].flag
	bl	__wake_up	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	OSAL_UnlockTaskMutex, .-OSAL_UnlockTaskMutex
	.align	2
	.global	OSAL_InitIntrMutex
	.type	OSAL_InitIntrMutex, %function
OSAL_InitIntrMutex:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_InitIntrMutex, .-OSAL_InitIntrMutex
	.align	2
	.global	OSAL_LockIRQ
	.type	OSAL_LockIRQ, %function
OSAL_LockIRQ:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0	@ pIntrMutex, pIntrMutex
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r2, cpsr	@ arch_local_irq_save	@ aa
	cpsid	i
@ 0 "" 2
	mov	r0, #0	@,
	str	r2, [r3]	@ aa, MEM[(long unsigned int *)pIntrMutex_4(D)]
	bx	lr	@
	.fnend
	.size	OSAL_LockIRQ, .-OSAL_LockIRQ
	.align	2
	.global	OSAL_UnLockIRQ
	.type	OSAL_UnLockIRQ, %function
OSAL_UnLockIRQ:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.29052, *pIntrMutex_3(D)
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ D.29052
@ 0 "" 2
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_UnLockIRQ, .-OSAL_UnLockIRQ
	.align	2
	.global	OSAL_InitSpinLock
	.type	OSAL_InitSpinLock, %function
OSAL_InitSpinLock:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_InitSpinLock, .-OSAL_InitSpinLock
	.align	2
	.global	OSAL_SpinLock
	.type	OSAL_SpinLock, %function
OSAL_SpinLock:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]	@ pIntrMutex_3(D)->isInit, pIntrMutex_3(D)->isInit
	cmp	r3, #0	@ pIntrMutex_3(D)->isInit,
	moveq	r3, #1	@ tmp114,
	streq	r3, [r0, #4]	@ tmp114, pIntrMutex_3(D)->isInit
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_SpinLock, .-OSAL_SpinLock
	.align	2
	.global	OSAL_SpinUnLock
	.type	OSAL_SpinUnLock, %function
OSAL_SpinUnLock:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_SpinUnLock, .-OSAL_SpinUnLock
	.align	2
	.global	OSAL_SpinLockIRQInit
	.type	OSAL_SpinLockIRQInit, %function
OSAL_SpinLockIRQInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1	@ tmp111,
	str	r3, [r0, #4]	@ tmp111, pIntrMutex_1(D)->isInit
	bx	lr	@
	.fnend
	.size	OSAL_SpinLockIRQInit, .-OSAL_SpinLockIRQInit
	.align	2
	.global	OSAL_SpinLockIRQ
	.type	OSAL_SpinLockIRQ, %function
OSAL_SpinLockIRQ:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]	@ pIntrMutex_3(D)->isInit, pIntrMutex_3(D)->isInit
	cmp	r3, #0	@ pIntrMutex_3(D)->isInit,
	moveq	r3, #1	@ tmp115,
	streq	r3, [r0, #4]	@ tmp115, pIntrMutex_3(D)->isInit
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r3, cpsr	@ arch_local_irq_save	@ flags
	cpsid	i
@ 0 "" 2
	str	r3, [r0]	@ flags, pIntrMutex_3(D)->irq_lockflags
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_SpinLockIRQ, .-OSAL_SpinLockIRQ
	.align	2
	.global	OSAL_SpinUnLockIRQ
	.type	OSAL_SpinUnLockIRQ, %function
OSAL_SpinUnLockIRQ:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.29069, pIntrMutex_1(D)->irq_lockflags
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ D.29069
@ 0 "" 2
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_SpinUnLockIRQ, .-OSAL_SpinUnLockIRQ
	.align	2
	.global	OSAL_AllocMemory
	.type	OSAL_AllocMemory, %function
OSAL_AllocMemory:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_AllocMemory, .-OSAL_AllocMemory
	.align	2
	.global	OSAL_ReleaseMemory
	.type	OSAL_ReleaseMemory, %function
OSAL_ReleaseMemory:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_ReleaseMemory, .-OSAL_ReleaseMemory
	.align	2
	.global	OSAL_MapRegisterAddr
	.type	OSAL_MapRegisterAddr, %function
OSAL_MapRegisterAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_MapRegisterAddr, .-OSAL_MapRegisterAddr
	.align	2
	.global	OSAL_UnmapRegisterAddr
	.type	OSAL_UnmapRegisterAddr, %function
OSAL_UnmapRegisterAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_UnmapRegisterAddr, .-OSAL_UnmapRegisterAddr
	.align	2
	.global	OSAL_OpenFile
	.type	OSAL_OpenFile, %function
OSAL_OpenFile:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0	@ eFileOP
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	moveq	r1, r2	@ flags, eFileOP
	beq	.L85	@,
	cmp	r2, #1	@ eFileOP,
	moveq	r1, #65	@ flags,
	movne	r1, #66	@ flags,
.L85:
	mov	r2, #420	@,
	bl	filp_open	@
	cmn	r0, #4096	@ filp,
	movhi	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	OSAL_OpenFile, .-OSAL_OpenFile
	.align	2
	.global	OSAL_CloseFile
	.type	OSAL_CloseFile, %function
OSAL_CloseFile:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pFile,
	bxeq	lr	@
	mov	r1, #0	@,
	b	filp_close	@
	.fnend
	.size	OSAL_CloseFile, .-OSAL_CloseFile
	.align	2
	.global	OSAL_ReadFile
	.type	OSAL_ReadFile, %function
OSAL_ReadFile:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_ReadFile, .-OSAL_ReadFile
	.align	2
	.global	OSAL_WriteFile
	.type	OSAL_WriteFile, %function
OSAL_WriteFile:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_WriteFile, .-OSAL_WriteFile
	.align	2
	.global	OSAL_SeekFile
	.type	OSAL_SeekFile, %function
OSAL_SeekFile:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_SeekFile, .-OSAL_SeekFile
	.align	2
	.global	OSAL_TellFilePos
	.type	OSAL_TellFilePos, %function
OSAL_TellFilePos:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_TellFilePos, .-OSAL_TellFilePos
	.align	2
	.global	klib_fopen
	.type	klib_fopen, %function
klib_fopen:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	uxth	r2, r2	@, mode
	bl	filp_open	@
	cmn	r0, #4096	@ filp,
	movhi	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	klib_fopen, .-klib_fopen
	.align	2
	.global	klib_fclose
	.type	klib_fclose, %function
klib_fclose:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ filp,
	bxeq	lr	@
	mov	r1, #0	@,
	b	filp_close	@
	.fnend
	.size	klib_fclose, .-klib_fclose
	.align	2
	.global	klib_fread
	.type	klib_fread, %function
klib_fread:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r2, #0	@ filp, filp
	beq	.L105	@,
	ldr	ip, [r3, #20]	@ filp_3(D)->f_op, filp_3(D)->f_op
	ldr	r2, [ip, #8]	@ _5->read, _5->read
	cmp	r2, #0	@ _5->read,
	beq	.L106	@,
	ldr	r2, [r3, #28]	@ filp_3(D)->f_flags, filp_3(D)->f_flags
	tst	r2, #2	@ filp_3(D)->f_flags,
	beq	.L107	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, r1	@ len, len
	mov	r1, r0	@ buf, buf
	mov	r0, r3	@ filp, filp
	mov	r3, sp	@ tmp151,
	bic	r4, r3, #8128	@ D.29106, tmp151,
	bic	r4, r4, #63	@ D.29106, D.29106,
	mov	lr, #0	@ tmp141,
	add	r3, r0, #40	@, filp,
	ldr	r5, [r4, #8]	@ oldfs, _20->addr_limit
	str	lr, [r4, #8]	@ tmp141, _23->addr_limit
	ldr	ip, [ip, #8]	@ _11->read, _11->read
	blx	ip	@ _11->read
	str	r5, [r4, #8]	@ oldfs, _25->addr_limit
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L107:
	mvn	r0, #12	@ D.29102,
	bx	lr	@
.L105:
	mvn	r0, #1	@ D.29102,
	bx	lr	@
.L106:
	mvn	r0, #37	@ D.29102,
	bx	lr	@
	.fnend
	.size	klib_fread, .-klib_fread
	.align	2
	.global	klib_fwrite
	.type	klib_fwrite, %function
klib_fwrite:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r2, #0	@ filp, filp
	beq	.L112	@,
	ldr	ip, [r3, #20]	@ filp_3(D)->f_op, filp_3(D)->f_op
	ldr	r2, [ip, #12]	@ _5->write, _5->write
	cmp	r2, #0	@ _5->write,
	beq	.L113	@,
	ldr	r2, [r3, #28]	@ filp_3(D)->f_flags, filp_3(D)->f_flags
	tst	r2, #3	@ filp_3(D)->f_flags,
	beq	.L114	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, r1	@ len, len
	mov	r1, r0	@ buf, buf
	mov	r0, r3	@ filp, filp
	mov	r3, sp	@ tmp152,
	bic	r4, r3, #8128	@ D.29115, tmp152,
	bic	r4, r4, #63	@ D.29115, D.29115,
	mov	lr, #0	@ tmp142,
	add	r3, r0, #40	@, filp,
	ldr	r5, [r4, #8]	@ oldfs, _21->addr_limit
	str	lr, [r4, #8]	@ tmp142, _24->addr_limit
	ldr	ip, [ip, #12]	@ _11->write, _11->write
	blx	ip	@ _11->write
	str	r5, [r4, #8]	@ oldfs, _26->addr_limit
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L114:
	mvn	r0, #12	@ D.29111,
	bx	lr	@
.L112:
	mvn	r0, #1	@ D.29111,
	bx	lr	@
.L113:
	mvn	r0, #37	@ D.29111,
	bx	lr	@
	.fnend
	.size	klib_fwrite, .-klib_fwrite
	.align	2
	.global	klib_flush_cache
	.type	klib_flush_cache, %function
klib_flush_cache:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r4, cpsr	@ arch_local_irq_save	@ flags
	cpsid	i
@ 0 "" 2
	mov	r1, r2	@, len
	bl	v7_flush_kern_dcache_area	@
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r4	@ local_irq_restore	@ flags
@ 0 "" 2
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	klib_flush_cache, .-klib_flush_cache
	.align	2
	.global	KernelFlushCache
	.type	KernelFlushCache, %function
KernelFlushCache:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r4, cpsr	@ arch_local_irq_save	@ flags
	cpsid	i
@ 0 "" 2
	mov	r1, r2	@, len
	bl	v7_flush_kern_dcache_area	@
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r4	@ local_irq_restore	@ flags
@ 0 "" 2
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	KernelFlushCache, .-KernelFlushCache
	.align	2
	.global	KernelMemMalloc
	.type	KernelMemMalloc, %function
KernelMemMalloc:
	.fnstart
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	add	r4, sp, #12	@ tmp127,,
	mov	r6, r0	@ MemName, MemName
	mov	r8, r2	@ align, align
	mov	r7, r1	@ len, len
	mov	r0, r4	@, tmp127
	mov	r1, #12	@,
	mov	r9, r3	@ IsCached, IsCached
	ldr	r5, [sp, #56]	@ pMemDesc, pMemDesc
	bl	__memzero	@
	mov	r0, r6	@, MemName
	str	r4, [sp]	@ tmp127,
	mov	r3, r8	@, align
	mov	r2, r7	@, len
	mov	r1, #0	@,
	bl	HI_DRV_MMZ_Alloc	@
	subs	r6, r0, #0	@ D.29128,
	bne	.L128	@,
	ldr	r3, [sp, #16]	@ stMmzBuffer.u32StartPhyAddr, stMmzBuffer.u32StartPhyAddr
	cmp	r3, #0	@ stMmzBuffer.u32StartPhyAddr,
	beq	.L128	@,
	cmp	r9, #1	@ IsCached,
	mov	r0, r4	@, tmp127
	beq	.L135	@,
	bl	HI_DRV_MMZ_Map	@
	cmp	r0, #0	@,
	bne	.L128	@,
.L130:
	ldr	r1, [sp, #16]	@ stMmzBuffer.u32StartPhyAddr, stMmzBuffer.u32StartPhyAddr
	ldr	r2, [sp, #12]	@ stMmzBuffer.u32StartVirAddr, stMmzBuffer.u32StartVirAddr
	ldr	r3, [sp, #20]	@ stMmzBuffer.u32Size, stMmzBuffer.u32Size
	stmia	r5, {r1, r2, r3}	@ pMemDesc,,,
.L127:
	mov	r0, r6	@, D.29128
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L135:
	bl	HI_DRV_MMZ_MapCache	@
	cmp	r0, #0	@,
	beq	.L130	@,
.L128:
	mov	r0, r5	@, pMemDesc
	mov	r1, #16	@,
	bl	__memzero	@
	mvn	r6, #0	@ D.29128,
	b	.L127	@
	.fnend
	.size	KernelMemMalloc, .-KernelMemMalloc
	.align	2
	.global	KernelMemFree
	.type	KernelMemFree, %function
KernelMemFree:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ pMemDesc, pMemDesc
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp125,,
	bl	__memzero	@
	ldmia	r4, {r1, r2}	@ pMemDesc,,
	ldr	r3, [r4, #8]	@ pMemDesc_3(D)->Length, pMemDesc_3(D)->Length
	add	r0, sp, #4	@ tmp126,,
	str	r1, [sp, #8]	@ pMemDesc_3(D)->PhyAddr, stMBuf.u32StartPhyAddr
	str	r2, [sp, #4]	@ pMemDesc_3(D)->VirAddr, stMBuf.u32StartVirAddr
	str	r3, [sp, #12]	@ pMemDesc_3(D)->Length, stMBuf.u32Size
	bl	HI_DRV_MMZ_Unmap	@
	add	r0, sp, #4	@ tmp127,,
	bl	HI_DRV_MMZ_Release	@
	mov	r0, #0	@,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	KernelMemFree, .-KernelMemFree
	.align	2
	.global	KernelRegisterMap
	.type	KernelRegisterMap, %function
KernelRegisterMap:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0	@,
	mov	r1, #65536	@,
	b	__arm_ioremap	@
	.fnend
	.size	KernelRegisterMap, .-KernelRegisterMap
	.align	2
	.global	KernelRegisterUnMap
	.type	KernelRegisterUnMap, %function
KernelRegisterUnMap:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	__arm_iounmap	@
	.fnend
	.size	KernelRegisterUnMap, .-KernelRegisterUnMap
	.align	2
	.global	KernelMmap
	.type	KernelMmap, %function
KernelMmap:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ phyaddr, phyaddr
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp118,,
	bl	__memzero	@
	add	r0, sp, #4	@ tmp119,,
	str	r4, [sp, #8]	@ phyaddr, stMemBuf.u32StartPhyAddr
	bl	HI_DRV_MMZ_Map	@
	ldr	r0, [sp, #4]	@, stMemBuf.u32StartVirAddr
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	KernelMmap, .-KernelMmap
	.align	2
	.global	KernelMmapCache
	.type	KernelMmapCache, %function
KernelMmapCache:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ phyaddr, phyaddr
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp118,,
	bl	__memzero	@
	add	r0, sp, #4	@ tmp119,,
	str	r4, [sp, #8]	@ phyaddr, stMemBuf.u32StartPhyAddr
	bl	HI_DRV_MMZ_MapCache	@
	ldr	r0, [sp, #4]	@, stMemBuf.u32StartVirAddr
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	KernelMmapCache, .-KernelMmapCache
	.align	2
	.global	KernelMunmap
	.type	KernelMunmap, %function
KernelMunmap:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ p, p
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp114,,
	bl	__memzero	@
	add	r0, sp, #4	@ tmp115,,
	str	r4, [sp, #4]	@ p, stMemBuf.u32StartVirAddr
	bl	HI_DRV_MMZ_Unmap	@
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	KernelMunmap, .-KernelMunmap
	.align	2
	.global	OSAL_SEMA_INTIT
	.type	OSAL_SEMA_INTIT, %function
OSAL_SEMA_INTIT:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L147	@ tmp110,
	mov	r1, #1	@ tmp116,
	mov	r3, r2	@ tmp119, tmp110
	str	r1, [r3], #4	@ tmp116, g_stSem.count
	str	r3, [r2, #4]	@ tmp119, g_stSem.wait_list.next
	str	r3, [r2, #8]	@ tmp119, g_stSem.wait_list.prev
	bx	lr	@
.L148:
	.align	2
.L147:
	.word	.LANCHOR0
	.fnend
	.size	OSAL_SEMA_INTIT, .-OSAL_SEMA_INTIT
	.align	2
	.global	OSAL_DOWN_INTERRUPTIBLE
	.type	OSAL_DOWN_INTERRUPTIBLE, %function
OSAL_DOWN_INTERRUPTIBLE:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L150	@,
	b	down_interruptible	@
.L151:
	.align	2
.L150:
	.word	.LANCHOR0
	.fnend
	.size	OSAL_DOWN_INTERRUPTIBLE, .-OSAL_DOWN_INTERRUPTIBLE
	.align	2
	.global	OSAL_UP
	.type	OSAL_UP, %function
OSAL_UP:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L153	@,
	b	up	@
.L154:
	.align	2
.L153:
	.word	.LANCHOR0
	.fnend
	.size	OSAL_UP, .-OSAL_UP
	.align	2
	.global	OSAL_KMALLOC
	.type	OSAL_KMALLOC, %function
OSAL_KMALLOC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #32	@,
	b	__kmalloc	@
	.fnend
	.size	OSAL_KMALLOC, .-OSAL_KMALLOC
	.align	2
	.global	OSAL_KFREE
	.type	OSAL_KFREE, %function
OSAL_KFREE:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	kfree	@
	.fnend
	.size	OSAL_KFREE, .-OSAL_KFREE
	.global	g_stSem
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_SEM_UP, %object
	.size	__kstrtab_SEM_UP, 7
__kstrtab_SEM_UP:
	.ascii	"SEM_UP\000"
	.type	__kstrtab_SEM_DOWN, %object
	.size	__kstrtab_SEM_DOWN, 9
__kstrtab_SEM_DOWN:
	.ascii	"SEM_DOWN\000"
	.type	__kstrtab_SEM_INIT, %object
	.size	__kstrtab_SEM_INIT, 9
__kstrtab_SEM_INIT:
	.ascii	"SEM_INIT\000"
	.section	___ksymtab+SEM_UP,"a",%progbits
	.align	2
	.type	__ksymtab_SEM_UP, %object
	.size	__ksymtab_SEM_UP, 8
__ksymtab_SEM_UP:
@ value:
	.word	SEM_UP
@ name:
	.word	__kstrtab_SEM_UP
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"&(pSem->queue_head)\000"
.LC1:
	.ascii	"&(pEvent->queue_head)\000"
	.section	___ksymtab+SEM_DOWN,"a",%progbits
	.align	2
	.type	__ksymtab_SEM_DOWN, %object
	.size	__ksymtab_SEM_DOWN, 8
__ksymtab_SEM_DOWN:
@ value:
	.word	SEM_DOWN
@ name:
	.word	__kstrtab_SEM_DOWN
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	__key.27741, %object
	.size	__key.27741, 0
__key.27741:
	.type	__key.27504, %object
	.size	__key.27504, 0
__key.27504:
	.type	g_stSem, %object
	.size	g_stSem, 12
g_stSem:
	.space	12
	.section	___ksymtab+SEM_INIT,"a",%progbits
	.align	2
	.type	__ksymtab_SEM_INIT, %object
	.size	__ksymtab_SEM_INIT, 8
__ksymtab_SEM_INIT:
@ value:
	.word	SEM_INIT
@ name:
	.word	__kstrtab_SEM_INIT
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
