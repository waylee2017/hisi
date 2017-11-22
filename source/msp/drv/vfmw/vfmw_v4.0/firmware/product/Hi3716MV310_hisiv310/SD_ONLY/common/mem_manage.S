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
	.file	"mem_manage.c"
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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(mem_manage)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.mem_manage.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/mem_manage.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/mem_manage.o
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
	.global	MEM_AddMemRecord
	.type	MEM_AddMemRecord, %function
MEM_AddMemRecord:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ PhyAddr, PhyAddr
	ldr	r4, .L16	@ tmp168,
	mov	r6, r1	@ VirAddr, VirAddr
	mov	r5, r2	@ Length, Length
	mov	r0, r4	@, tmp168
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #20]	@ s_MemRecord[0].Length, s_MemRecord[0].Length
	cmp	r3, #0	@ s_MemRecord[0].Length,
	beq	.L2	@,
	add	ip, r4, #8	@ ivtmp.35, tmp168,
	mov	r3, #1	@ i,
	b	.L3	@
.L15:
	add	r3, r3, #1	@ i, i,
	cmp	r3, #32	@ i,
	beq	.L14	@,
.L3:
	ldr	lr, [ip, #28]	@ MEM[base: _24, offset: 28B], MEM[base: _24, offset: 28B]
	add	ip, ip, #16	@ ivtmp.35, ivtmp.35,
	cmp	lr, #0	@ MEM[base: _24, offset: 28B],
	bne	.L15	@,
.L2:
	add	r3, r4, r3, lsl #4	@ tmp159, tmp168, i,
	ldr	r0, .L16	@,
	str	r7, [r3, #16]	@ PhyAddr, s_MemRecord[i_20].PhyAddr
	str	r6, [r3, #12]	@ VirAddr, s_MemRecord[i_20].VirAddr
	str	r5, [r3, #20]	@ Length, s_MemRecord[i_20].Length
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.26767,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L14:
	ldr	r0, .L16	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.26767,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.fnend
	.size	MEM_AddMemRecord, .-MEM_AddMemRecord
	.align	2
	.global	MEM_DelMemRecord
	.type	MEM_DelMemRecord, %function
MEM_DelMemRecord:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ PhyAddr, PhyAddr
	ldr	r0, .L31	@,
	mov	r7, r1	@ VirAddr, VirAddr
	mov	r6, r2	@ Length, Length
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, .L31+4	@ ivtmp.46,
	mov	ip, #0	@ i,
	b	.L21	@
.L19:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #16	@ ivtmp.46, ivtmp.46,
	cmp	ip, #32	@ i,
	beq	.L30	@,
.L21:
	ldr	lr, [r3, #12]	@ D.26783, MEM[base: _21, offset: 12B]
	cmp	lr, #0	@ D.26783,
	beq	.L19	@,
	ldr	r4, [r3, #8]	@ MEM[base: _21, offset: 8B], MEM[base: _21, offset: 8B]
	cmp	r4, r5	@ MEM[base: _21, offset: 8B], PhyAddr
	bne	.L19	@,
	ldr	r0, [r3, #4]	@ MEM[base: _21, offset: 4B], MEM[base: _21, offset: 4B]
	cmp	r0, r7	@ MEM[base: _21, offset: 4B], VirAddr
	cmpeq	lr, r6	@, D.26783, Length
	bne	.L19	@,
	ldr	r0, .L31	@ tmp135,
	mov	r4, #0	@ tmp138,
	add	ip, r0, ip, lsl #4	@ tmp136, tmp135, i,
	str	r4, [ip, #20]	@ tmp138, s_MemRecord[i_28].Length
	str	r4, [ip, #16]	@ tmp138, s_MemRecord[i_28].PhyAddr
	str	r4, [ip, #12]	@ tmp138, s_MemRecord[i_28].VirAddr
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.26782, tmp138
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L30:
	ldr	r0, .L31	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.26782,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L32:
	.align	2
.L31:
	.word	.LANCHOR0
	.word	.LANCHOR0+8
	.fnend
	.size	MEM_DelMemRecord, .-MEM_DelMemRecord
	.align	2
	.global	MEM_AllocMemBlock
	.type	MEM_AllocMemBlock, %function
MEM_AllocMemBlock:
	.fnstart
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0	@ ExpectedLen,
	cmpne	r3, #0	@, pMemRecord,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	moveq	r7, #1	@ tmp131,
	.pad #28
	sub	sp, sp, #28	@,,
	movne	r7, #0	@ tmp131,
	beq	.L36	@,
	mov	r6, r2	@ ExpectedLen, ExpectedLen
	mov	r5, r0	@ MemName, MemName
	mov	r1, #16	@,
	mov	r0, r3	@, pMemRecord
	mov	r4, r3	@ pMemRecord, pMemRecord
	bl	__memzero	@
	add	r2, sp, #8	@ tmp132,,
	ldr	r3, [sp, #48]	@, IsCached
	str	r2, [sp]	@ tmp132,
	mov	r1, r6	@, ExpectedLen
	mov	r0, r5	@, MemName
	mov	r2, #4	@,
	bl	KernelMemMalloc	@
	ldr	r3, [sp, #12]	@ D.26792, AllocMem.VirAddr
	cmp	r3, #0	@ D.26792,
	beq	.L36	@,
	ldr	r2, [sp, #8]	@ ExpectedPhyAddr, AllocMem.PhyAddr
	ldr	r1, [sp, #16]	@ ExpectedLen, AllocMem.Length
	cmp	r2, #0	@ ExpectedPhyAddr,
	beq	.L36	@,
	mov	r0, r7	@ D.26789, tmp131
	str	r2, [r4, #8]	@ ExpectedPhyAddr, pMemRecord_3(D)->PhyAddr
	str	r3, [r4, #4]	@ D.26792, pMemRecord_3(D)->VirAddr
	str	r1, [r4, #12]	@ ExpectedLen, pMemRecord_3(D)->Length
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L36:
	mvn	r0, #0	@ D.26789,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	MEM_AllocMemBlock, .-MEM_AllocMemBlock
	.align	2
	.global	MEM_ReleaseMemBlock
	.type	MEM_ReleaseMemBlock, %function
MEM_ReleaseMemBlock:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ VirAddr,
	cmpne	r0, #0	@, PhyAddr,
	bxeq	lr	@
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r1	@ VirAddr, VirAddr
	mov	r4, r0	@ PhyAddr, PhyAddr
	mov	r1, #16	@,
	mov	r0, sp	@,
	bl	__memzero	@
	ldr	r3, .L56	@ ivtmp.60,
	str	r4, [sp]	@ PhyAddr, FreeMem.PhyAddr
	add	ip, r3, #512	@ D.26813, ivtmp.60,
	str	r5, [sp, #4]	@ VirAddr, FreeMem.VirAddr
.L48:
	ldr	r2, [r3, #12]	@ D.26811, MEM[base: _26, offset: 12B]
	cmp	r2, #0	@ D.26811,
	beq	.L46	@,
	ldr	r1, [r3, #8]	@ D.26811, MEM[base: _26, offset: 8B]
	cmp	r4, r1	@ PhyAddr, D.26811
	add	r0, r2, r1	@ D.26811, D.26811, D.26811
	blt	.L46	@,
	cmp	r4, r0	@ PhyAddr, D.26811
	blt	.L55	@,
.L46:
	add	r3, r3, #16	@ ivtmp.60, ivtmp.60,
	cmp	r3, ip	@ ivtmp.60, D.26813
	bne	.L48	@,
	mov	r0, sp	@,
	bl	KernelMemFree	@
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L55:
	mov	r0, sp	@,
	str	r2, [sp, #8]	@ D.26811, FreeMem.Length
	bl	KernelMemFree	@
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L57:
	.align	2
.L56:
	.word	.LANCHOR0+8
	.fnend
	.size	MEM_ReleaseMemBlock, .-MEM_ReleaseMemBlock
	.align	2
	.global	MEM_InitMemManager
	.type	MEM_InitMemManager, %function
MEM_InitMemManager:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, .L60	@ tmp112,
	mov	r0, r4	@, tmp112
	bl	OSAL_SpinLockIRQ	@
	add	r0, r4, #8	@, tmp112,
	mov	r1, #512	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp112
	ldmfd	sp!, {r4, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.fnend
	.size	MEM_InitMemManager, .-MEM_InitMemManager
	.align	2
	.global	MEM_ManagerWithOperation
	.type	MEM_ManagerWithOperation, %function
MEM_ManagerWithOperation:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L63	@ tmp113,
	ldr	r1, [r0, #8]	@ pArgs_2(D)->mem_malloc, pArgs_2(D)->mem_malloc
	ldr	r2, [r0, #12]	@ pArgs_2(D)->mem_free, pArgs_2(D)->mem_free
	str	r1, [r3, #520]	@ pArgs_2(D)->mem_malloc, mem_malloc
	str	r2, [r3, #524]	@ pArgs_2(D)->mem_free, mem_free
	bx	lr	@
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.fnend
	.size	MEM_ManagerWithOperation, .-MEM_ManagerWithOperation
	.align	2
	.global	MEM_ManagerClearOperation
	.type	MEM_ManagerClearOperation, %function
MEM_ManagerClearOperation:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L66	@ tmp110,
	mov	r2, #0	@ tmp111,
	str	r2, [r3, #520]	@ tmp111, mem_malloc
	str	r2, [r3, #524]	@ tmp111, mem_free
	bx	lr	@
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.fnend
	.size	MEM_ManagerClearOperation, .-MEM_ManagerClearOperation
	.align	2
	.global	MEM_Phy2Vir
	.type	MEM_Phy2Vir, %function
MEM_Phy2Vir:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L77	@ ivtmp.77,
	mov	r1, #0	@ i,
.L71:
	ldr	r2, [r3, #12]	@ D.26833, MEM[base: _17, offset: 12B]
	cmp	r2, #0	@ D.26833,
	beq	.L69	@,
	ldr	ip, [r3, #8]	@ D.26833, MEM[base: _17, offset: 8B]
	cmp	ip, r0	@ D.26833, PhyAddr
	add	r2, r2, ip	@ D.26833, D.26833, D.26833
	bgt	.L69	@,
	cmp	r0, r2	@ PhyAddr, D.26833
	blt	.L76	@,
.L69:
	add	r1, r1, #1	@ i, i,
	add	r3, r3, #16	@ ivtmp.77, ivtmp.77,
	cmp	r1, #32	@ i,
	bne	.L71	@,
	mov	r0, #0	@ VirAddr,
	bx	lr	@
.L76:
	ldr	r3, .L77+4	@ tmp124,
	rsb	r0, ip, r0	@ D.26833, D.26833, PhyAddr
	add	r1, r3, r1, lsl #4	@ tmp125, tmp124, i,
	ldr	r3, [r1, #12]	@ s_MemRecord[i_22].VirAddr, s_MemRecord[i_22].VirAddr
	add	r0, r3, r0	@ VirAddr, s_MemRecord[i_22].VirAddr, D.26833
	bx	lr	@
.L78:
	.align	2
.L77:
	.word	.LANCHOR0+8
	.word	.LANCHOR0
	.fnend
	.size	MEM_Phy2Vir, .-MEM_Phy2Vir
	.align	2
	.global	MEM_Vir2Phy
	.type	MEM_Vir2Phy, %function
MEM_Vir2Phy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L88	@ ivtmp.88,
	mov	r1, #0	@ i,
.L82:
	ldr	r2, [r3, #12]	@ D.26848, MEM[base: _21, offset: 12B]
	cmp	r2, #0	@ D.26848,
	beq	.L80	@,
	ldr	ip, [r3, #4]	@ D.26849, MEM[base: _21, offset: 4B]
	cmp	ip, r0	@ D.26849, VirAddr
	add	r2, ip, r2	@ D.26849, D.26849, D.26848
	bhi	.L80	@,
	cmp	r0, r2	@ VirAddr, D.26849
	bcc	.L87	@,
.L80:
	add	r1, r1, #1	@ i, i,
	add	r3, r3, #16	@ ivtmp.88, ivtmp.88,
	cmp	r1, #32	@ i,
	bne	.L82	@,
	mov	r0, #0	@ PhyAddr,
	bx	lr	@
.L87:
	ldr	r3, .L88+4	@ tmp126,
	rsb	r0, ip, r0	@ D.26848, D.26849, VirAddr
	add	r1, r3, r1, lsl #4	@ tmp127, tmp126, i,
	ldr	r3, [r1, #16]	@ s_MemRecord[i_26].PhyAddr, s_MemRecord[i_26].PhyAddr
	add	r0, r0, r3	@ PhyAddr, D.26848, s_MemRecord[i_26].PhyAddr
	bx	lr	@
.L89:
	.align	2
.L88:
	.word	.LANCHOR0+8
	.word	.LANCHOR0
	.fnend
	.size	MEM_Vir2Phy, .-MEM_Vir2Phy
	.align	2
	.global	MEM_WritePhyWord
	.type	MEM_WritePhyWord, %function
MEM_WritePhyWord:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ Data32, Data32
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pDst
	strne	r4, [r0]	@ Data32, *pDst_4
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	MEM_WritePhyWord, .-MEM_WritePhyWord
	.align	2
	.global	MEM_ReadPhyWord
	.type	MEM_ReadPhyWord, %function
MEM_ReadPhyWord:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pDst
	ldrne	r0, [r0]	@ Data32, MEM[(volatile HI_S32 *)pDst_4]
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	MEM_ReadPhyWord, .-MEM_ReadPhyWord
	.align	2
	.global	MEM_CopyPhy2Phy
	.type	MEM_CopyPhy2Phy, %function
MEM_CopyPhy2Phy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ SrcPhyAddr, SrcPhyAddr
	mov	r6, r2	@ Length, Length
	bl	MEM_Phy2Vir	@
	mov	r4, r0	@ pDst,
	mov	r0, r5	@, SrcPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pSrc,
	cmpne	r4, #0	@, pDst,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r6	@, Length
	mov	r1, r0	@, pSrc
	mov	r0, r4	@, pDst
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	memcpy	@
	.fnend
	.size	MEM_CopyPhy2Phy, .-MEM_CopyPhy2Phy
	.align	2
	.global	MEM_CopyPhy2Vir
	.type	MEM_CopyPhy2Vir, %function
MEM_CopyPhy2Vir:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ DstVirAddr, DstVirAddr
	mov	r0, r1	@, SrcPhyAddr
	mov	r5, r2	@ Length, Length
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pSrc,
	cmpne	r4, #0	@, DstVirAddr,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r5	@, Length
	mov	r1, r0	@, pSrc
	mov	r0, r4	@, DstVirAddr
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	memcpy	@
	.fnend
	.size	MEM_CopyPhy2Vir, .-MEM_CopyPhy2Vir
	.align	2
	.global	MEM_CopyVir2Phy
	.type	MEM_CopyVir2Phy, %function
MEM_CopyVir2Phy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ SrcVirAddr, SrcVirAddr
	mov	r5, r2	@ Length, Length
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	cmpne	r4, #0	@, SrcVirAddr,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r5	@, Length
	mov	r1, r4	@, SrcVirAddr
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	memcpy	@
	.fnend
	.size	MEM_CopyVir2Phy, .-MEM_CopyVir2Phy
	.align	2
	.global	MEM_MapRegisterAddr
	.type	MEM_MapRegisterAddr, %function
MEM_MapRegisterAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ RegStartPhyAddr,
	cmpne	r2, #0	@, pMemRecord,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	moveq	r6, #1	@ tmp126,
	movne	r6, #0	@ tmp126,
	beq	.L112	@,
	mov	r5, r0	@ RegStartPhyAddr, RegStartPhyAddr
	mov	r7, r1	@ RegByteLen, RegByteLen
	mov	r0, r2	@, pMemRecord
	mov	r1, #16	@,
	mov	r4, r2	@ pMemRecord, pMemRecord
	bl	__memzero	@
	mov	r0, r5	@, RegStartPhyAddr
	bl	KernelRegisterMap	@
	subs	r3, r0, #0	@ ptr,
	beq	.L112	@,
	mov	r0, r6	@ D.26880, tmp126
	stmib	r4, {r3, r5, r7}	@ pMemRecord,,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L112:
	mvn	r0, #0	@ D.26880,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MEM_MapRegisterAddr, .-MEM_MapRegisterAddr
	.align	2
	.global	MEM_UnmapRegisterAddr
	.type	MEM_UnmapRegisterAddr, %function
MEM_UnmapRegisterAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ VirAddr,
	cmpne	r0, #0	@, PhyAddr,
	bxeq	lr	@
	mov	r0, r1	@, VirAddr
	b	KernelRegisterUnMap	@
	.fnend
	.size	MEM_UnmapRegisterAddr, .-MEM_UnmapRegisterAddr
	.global	g_RecordLock
	.global	mem_free
	.global	mem_malloc
	.global	s_MemRecord
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_MEM_DelMemRecord, %object
	.size	__kstrtab_MEM_DelMemRecord, 17
__kstrtab_MEM_DelMemRecord:
	.ascii	"MEM_DelMemRecord\000"
	.type	__kstrtab_MEM_AddMemRecord, %object
	.size	__kstrtab_MEM_AddMemRecord, 17
__kstrtab_MEM_AddMemRecord:
	.ascii	"MEM_AddMemRecord\000"
	.type	__kstrtab_MEM_ReleaseMemBlock, %object
	.size	__kstrtab_MEM_ReleaseMemBlock, 20
__kstrtab_MEM_ReleaseMemBlock:
	.ascii	"MEM_ReleaseMemBlock\000"
	.type	__kstrtab_MEM_AllocMemBlock, %object
	.size	__kstrtab_MEM_AllocMemBlock, 18
__kstrtab_MEM_AllocMemBlock:
	.ascii	"MEM_AllocMemBlock\000"
	.section	___ksymtab+MEM_ReleaseMemBlock,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_ReleaseMemBlock, %object
	.size	__ksymtab_MEM_ReleaseMemBlock, 8
__ksymtab_MEM_ReleaseMemBlock:
@ value:
	.word	MEM_ReleaseMemBlock
@ name:
	.word	__kstrtab_MEM_ReleaseMemBlock
	.section	___ksymtab+MEM_AddMemRecord,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_AddMemRecord, %object
	.size	__ksymtab_MEM_AddMemRecord, 8
__ksymtab_MEM_AddMemRecord:
@ value:
	.word	MEM_AddMemRecord
@ name:
	.word	__kstrtab_MEM_AddMemRecord
	.section	___ksymtab+MEM_DelMemRecord,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_DelMemRecord, %object
	.size	__ksymtab_MEM_DelMemRecord, 8
__ksymtab_MEM_DelMemRecord:
@ value:
	.word	MEM_DelMemRecord
@ name:
	.word	__kstrtab_MEM_DelMemRecord
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_RecordLock, %object
	.size	g_RecordLock, 8
g_RecordLock:
	.space	8
	.type	s_MemRecord, %object
	.size	s_MemRecord, 512
s_MemRecord:
	.space	512
	.type	mem_malloc, %object
	.size	mem_malloc, 4
mem_malloc:
	.space	4
	.type	mem_free, %object
	.size	mem_free, 4
mem_free:
	.space	4
	.section	___ksymtab+MEM_AllocMemBlock,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_AllocMemBlock, %object
	.size	__ksymtab_MEM_AllocMemBlock, 8
__ksymtab_MEM_AllocMemBlock:
@ value:
	.word	MEM_AllocMemBlock
@ name:
	.word	__kstrtab_MEM_AllocMemBlock
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
