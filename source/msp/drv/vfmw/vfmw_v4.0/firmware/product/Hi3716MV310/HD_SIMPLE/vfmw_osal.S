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
	.file	"vfmw_osal.c"
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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV310
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw_osal)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel/.vfmw_osal.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel/vfmw_osal.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel/vfmw_osal.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm
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
	.global	OSAL_WakeupTask
	.type	OSAL_WakeupTask, %function
OSAL_WakeupTask:
	.fnstart
.LFB1613:
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
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_DeleteTask, .-OSAL_DeleteTask
	.align	2
	.global	OSAL_InitIntrMutex
	.type	OSAL_InitIntrMutex, %function
OSAL_InitIntrMutex:
	.fnstart
.LFB1621:
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
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r3, cpsr	@ arch_local_irq_save	@ aa
	cpsid	i
@ 0 "" 2
	str	r3, [r0, #0]	@ aa,* pIntrMutex
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_LockIRQ, .-OSAL_LockIRQ
	.align	2
	.global	OSAL_UnLockIRQ
	.type	OSAL_UnLockIRQ, %function
OSAL_UnLockIRQ:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ D.30272,* pIntrMutex
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ D.30272
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
.LFB1624:
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
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]	@ <variable>.isInit, <variable>.isInit
	cmp	r3, #0	@ <variable>.isInit,
	moveq	r3, #1	@ tmp136,
	streq	r3, [r0, #4]	@ tmp136, <variable>.isInit
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_SpinLock, .-OSAL_SpinLock
	.align	2
	.global	OSAL_SpinUnLock
	.type	OSAL_SpinUnLock, %function
OSAL_SpinUnLock:
	.fnstart
.LFB1626:
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
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1	@ tmp134,
	str	r3, [r0, #4]	@ tmp134, <variable>.isInit
	bx	lr	@
	.fnend
	.size	OSAL_SpinLockIRQInit, .-OSAL_SpinLockIRQInit
	.align	2
	.global	OSAL_SpinLockIRQ
	.type	OSAL_SpinLockIRQ, %function
OSAL_SpinLockIRQ:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #4]	@ <variable>.isInit, <variable>.isInit
	cmp	r1, #0	@ <variable>.isInit,
	moveq	r1, #1	@ tmp137,
	streq	r1, [r0, #4]	@ tmp137, <variable>.isInit
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r3, cpsr	@ arch_local_irq_save	@ flags
	cpsid	i
@ 0 "" 2
	str	r3, [r0, #0]	@ flags, <variable>.irq_lockflags
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_SpinLockIRQ, .-OSAL_SpinLockIRQ
	.align	2
	.global	OSAL_SpinUnLockIRQ
	.type	OSAL_SpinUnLockIRQ, %function
OSAL_SpinUnLockIRQ:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ D.30323, <variable>.irq_lockflags
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ D.30323
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
.LFB1630:
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
.LFB1631:
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
.LFB1632:
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
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_UnmapRegisterAddr, .-OSAL_UnmapRegisterAddr
	.align	2
	.global	OSAL_ReadFile
	.type	OSAL_ReadFile, %function
OSAL_ReadFile:
	.fnstart
.LFB1636:
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
.LFB1637:
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
.LFB1638:
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
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	OSAL_TellFilePos, .-OSAL_TellFilePos
	.align	2
	.global	klib_fread
	.type	klib_fread, %function
klib_fread:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0	@ filp
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r0	@ buf, buf
	mov	r3, r1	@ len, len
	mvneq	r0, #1	@ readlen,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	ip, [r2, #20]	@ <variable>.f_op, <variable>.f_op
	ldr	r1, [ip, #8]	@ <variable>.read, <variable>.read
	cmp	r1, #0	@ <variable>.read,
	mvneq	r0, #37	@ readlen,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r1, [r2, #28]	@ <variable>.f_flags, <variable>.f_flags
	tst	r1, #2	@ <variable>.f_flags,
	mvneq	r0, #12	@ readlen,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	mov	r0, sp	@,
	bic	r4, r0, #8128	@ tmp146,,
	bic	r4, r4, #63	@ tmp146, tmp146,
	mov	r1, r5	@, buf
	mov	r0, r2	@, filp
	mov	lr, #0	@ tmp150,
	ldr	r5, [r4, #8]	@ oldfs, <variable>.addr_limit
	mov	r2, r3	@, len
	str	lr, [r4, #8]	@ tmp150, <variable>.addr_limit
	add	r3, r0, #40	@,,
	ldr	ip, [ip, #8]	@ <variable>.read, <variable>.read
	blx	ip	@ <variable>.read
	str	r5, [r4, #8]	@ oldfs, <variable>.addr_limit
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	klib_fread, .-klib_fread
	.align	2
	.global	klib_fwrite
	.type	klib_fwrite, %function
klib_fwrite:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0	@ filp
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r0	@ buf, buf
	mov	r3, r1	@ len, len
	mvneq	r0, #1	@ writelen,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	ip, [r2, #20]	@ <variable>.f_op, <variable>.f_op
	ldr	r1, [ip, #12]	@ <variable>.write, <variable>.write
	cmp	r1, #0	@ <variable>.write,
	mvneq	r0, #37	@ writelen,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r1, [r2, #28]	@ <variable>.f_flags, <variable>.f_flags
	tst	r1, #3	@ <variable>.f_flags,
	mvneq	r0, #12	@ writelen,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	mov	r0, sp	@,
	bic	r4, r0, #8128	@ tmp146,,
	bic	r4, r4, #63	@ tmp146, tmp146,
	mov	r1, r5	@, buf
	mov	r0, r2	@, filp
	mov	lr, #0	@ tmp150,
	ldr	r5, [r4, #8]	@ oldfs, <variable>.addr_limit
	mov	r2, r3	@, len
	str	lr, [r4, #8]	@ tmp150, <variable>.addr_limit
	add	r3, r0, #40	@,,
	ldr	ip, [ip, #12]	@ <variable>.write, <variable>.write
	blx	ip	@ <variable>.write
	str	r5, [r4, #8]	@ oldfs, <variable>.addr_limit
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	klib_fwrite, .-klib_fwrite
	.align	2
	.global	OSAL_SEMA_INTIT
	.type	OSAL_SEMA_INTIT, %function
OSAL_SEMA_INTIT:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r1, #1	@ tmp134,
	mov	r2, r3	@ tmp137, tmp133
	str	r1, [r2], #4	@ tmp134, g_stSem.count
	str	r2, [r3, #8]	@ tmp137, g_stSem.wait_list.prev
	str	r2, [r3, #4]	@ tmp137, g_stSem.wait_list.next
	bx	lr	@
	.fnend
	.size	OSAL_SEMA_INTIT, .-OSAL_SEMA_INTIT
	.align	2
	.global	OSAL_KFREE
	.type	OSAL_KFREE, %function
OSAL_KFREE:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	kfree	@
	.fnend
	.size	OSAL_KFREE, .-OSAL_KFREE
	.align	2
	.global	OSAL_KMALLOC
	.type	OSAL_KMALLOC, %function
OSAL_KMALLOC:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #32	@,
	b	__kmalloc	@
	.fnend
	.size	OSAL_KMALLOC, .-OSAL_KMALLOC
	.align	2
	.global	OSAL_UP
	.type	OSAL_UP, %function
OSAL_UP:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	b	up	@
	.fnend
	.size	OSAL_UP, .-OSAL_UP
	.align	2
	.global	OSAL_DOWN_INTERRUPTIBLE
	.type	OSAL_DOWN_INTERRUPTIBLE, %function
OSAL_DOWN_INTERRUPTIBLE:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	b	down_interruptible	@
	.fnend
	.size	OSAL_DOWN_INTERRUPTIBLE, .-OSAL_DOWN_INTERRUPTIBLE
	.align	2
	.global	SEM_UP
	.type	SEM_UP, %function
SEM_UP:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1	@,
	mov	r3, #0	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@,
	mov	r4, r0	@ pSem, pSem
	bl	__wake_up	@
	mov	r3, #1	@ tmp135,
	mov	r0, #0	@,
	str	r3, [r4, #8]	@ tmp135, <variable>.flag
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	SEM_UP, .-SEM_UP
	.align	2
	.global	OSAL_GiveEvent
	.type	OSAL_GiveEvent, %function
OSAL_GiveEvent:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1	@ tmp135,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mov	r2, r1	@,
	str	r1, [r0, #8]	@ tmp135, <variable>.flag
	mov	r3, #0	@,
	bl	__wake_up	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	OSAL_GiveEvent, .-OSAL_GiveEvent
	.align	2
	.global	OSAL_UnlockTaskMutex
	.type	OSAL_UnlockTaskMutex, %function
OSAL_UnlockTaskMutex:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	OSAL_GiveEvent	@
	.fnend
	.size	OSAL_UnlockTaskMutex, .-OSAL_UnlockTaskMutex
	.align	2
	.global	SEM_DOWN
	.type	SEM_DOWN, %function
SEM_DOWN:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r1, r1, asl #2	@, tmp147, Time, Time,
	movw	r3, #:lower16:1374389535	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pSem, pSem
	mov	r0, r2, asl #1	@ tmp148, tmp147,
	movt	r3, #:upper16:1374389535	@ tmp151,
	add	ip, r0, #50	@ tmp149, tmp148,
	ldr	r2, [r4, #8]	@ <variable>.flag, <variable>.flag
	.pad #28
	sub	sp, sp, #28	@,,
	smull	r0, r5, r3, ip	@, tmp150, tmp151, tmp149
	cmp	r2, #0	@ <variable>.flag,
	mov	r1, ip, asr #31	@ tmp153, tmp149,
	rsb	r5, r1, r5, asr #5	@, __ret, tmp153, tmp150,
	bne	.L75	@,
	mov	r7, sp	@,
	bic	r6, r7, #8128	@ tmp155,,
	bic	r6, r6, #63	@ tmp155, tmp155,
	add	r7, sp, #4	@ tmp177,,
	add	ip, r7, #12	@ tmp165, tmp177,
	str	r2, [sp, #4]	@ <variable>.flag, __wait
	str	ip, [sp, #20]	@ tmp165, __wait.task_list.prev
	movw	r1, #:lower16:autoremove_wake_function	@ tmp163,
	ldr	lr, [r6, #12]	@ D.30664, <variable>.task
	movt	r1, #:upper16:autoremove_wake_function	@ tmp163,
	str	ip, [sp, #16]	@ tmp165, __wait.task_list.next
	str	r1, [sp, #12]	@ tmp163, __wait.func
	str	lr, [sp, #8]	@ D.30664, __wait.private
.L80:
	mov	r0, r4	@, pSem
	mov	r1, r7	@, tmp177
	mov	r2, #1	@,
	bl	prepare_to_wait	@
	ldr	r3, [r4, #8]	@ <variable>.flag, <variable>.flag
	mov	r0, r5	@, __ret
	cmp	r3, #0	@ <variable>.flag,
	bne	.L76	@,
	ldr	lr, [r6, #12]	@ <variable>.task, <variable>.task
	ldr	r2, [lr, #4]	@ D.31210, <variable>.stack
	ldr	r5, [r2, #0]	@ D.31207,* D.31210
	tst	r5, #1	@ D.31207,
	bne	.L83	@,
	bl	schedule_timeout	@
	subs	r5, r0, #0	@ __ret,
	bne	.L80	@,
	ldr	r0, [r4, #8]	@ <variable>.flag, <variable>.flag
	cmp	r0, #0	@ <variable>.flag,
	bne	.L81	@,
.L78:
	mov	r1, r7	@, tmp177
	mov	r0, r4	@, pSem
	bl	finish_wait	@
.L75:
	mov	r1, #0	@ tmp175,
	mov	r0, r5	@, __ret
	str	r1, [r4, #8]	@ tmp175, <variable>.flag
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L76:
	cmp	r5, #0	@ __ret,
	bne	.L78	@,
.L81:
	mov	r5, #1	@ __ret,
	b	.L78	@
.L83:
	movw	r5, #:lower16:-512	@ __ret,
	movt	r5, #:upper16:-512	@ __ret,
	b	.L78	@
	.fnend
	.size	SEM_DOWN, .-SEM_DOWN
	.align	2
	.global	OSAL_WaitEvent
	.type	OSAL_WaitEvent, %function
OSAL_WaitEvent:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:1717986919	@ tmp147,
	movt	r3, #:upper16:1717986919	@ tmp147,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pEvent, pEvent
	smull	r2, r5, r3, r1	@, tmp146, tmp147, msWaitTime
	mov	r1, r1, asr #31	@ tmp149, msWaitTime,
	ldr	r2, [r0, #8]	@ <variable>.flag, <variable>.flag
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	r2, #0	@ <variable>.flag,
	rsb	r5, r1, r5, asr #2	@, __ret, tmp149, tmp146,
	bne	.L85	@,
	mov	r7, sp	@,
	bic	r6, r7, #8128	@ tmp151,,
	bic	r6, r6, #63	@ tmp151, tmp151,
	add	r7, sp, #4	@ tmp173,,
	str	r2, [sp, #4]	@ <variable>.flag, __wait
	add	r2, r7, #12	@ tmp161, tmp173,
	str	r2, [sp, #20]	@ tmp161, __wait.task_list.prev
	movw	ip, #:lower16:autoremove_wake_function	@ tmp159,
	ldr	r0, [r6, #12]	@ D.30212, <variable>.task
	movt	ip, #:upper16:autoremove_wake_function	@ tmp159,
	str	r2, [sp, #16]	@ tmp161, __wait.task_list.next
	str	ip, [sp, #12]	@ tmp159, __wait.func
	str	r0, [sp, #8]	@ D.30212, __wait.private
.L90:
	mov	r0, r4	@, pEvent
	mov	r1, r7	@, tmp173
	mov	r2, #1	@,
	bl	prepare_to_wait	@
	ldr	r1, [r4, #8]	@ <variable>.flag, <variable>.flag
	mov	r0, r5	@, __ret
	cmp	r1, #0	@ <variable>.flag,
	bne	.L86	@,
	ldr	r3, [r6, #12]	@ <variable>.task, <variable>.task
	ldr	r5, [r3, #4]	@ D.31237, <variable>.stack
	ldr	lr, [r5, #0]	@ D.31234,* D.31237
	tst	lr, #1	@ D.31234,
	bne	.L95	@,
	bl	schedule_timeout	@
	subs	r5, r0, #0	@ __ret,
	bne	.L90	@,
	ldr	r0, [r4, #8]	@ <variable>.flag, <variable>.flag
	cmp	r0, #0	@ <variable>.flag,
	beq	.L88	@,
.L91:
	mov	r5, #1	@ __ret,
.L88:
	mov	r1, r7	@, tmp173
	mov	r0, r4	@, pEvent
	bl	finish_wait	@
.L85:
	cmp	r5, #0	@ __ret,
	mov	ip, #0	@ tmp171,
	str	ip, [r4, #8]	@ tmp171, <variable>.flag
	moveq	r0, r5	@,, __ret
	mvnne	r0, #0	@,,
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L86:
	cmp	r5, #0	@ __ret,
	bne	.L88	@,
	b	.L91	@
.L95:
	movw	r5, #:lower16:-512	@ __ret,
	movt	r5, #:upper16:-512	@ __ret,
	b	.L88	@
	.fnend
	.size	OSAL_WaitEvent, .-OSAL_WaitEvent
	.align	2
	.global	OSAL_LockTaskMutex
	.type	OSAL_LockTaskMutex, %function
OSAL_LockTaskMutex:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:1000000	@,
	movt	r1, #:upper16:1000000	@,
	b	OSAL_WaitEvent	@
	.fnend
	.size	OSAL_LockTaskMutex, .-OSAL_LockTaskMutex
	.align	2
	.global	SEM_INIT
	.type	SEM_INIT, %function
SEM_INIT:
	.fnstart
.LFB1653:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r2, .L100	@,
	str	r1, [r0, #8]	@ val, <variable>.flag
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L101:
	.align	2
.L100:
	.word	.LANCHOR0+12
	.fnend
	.size	SEM_INIT, .-SEM_INIT
	.align	2
	.global	OSAL_InitEvent
	.type	OSAL_InitEvent, %function
OSAL_InitEvent:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r2, .L104	@,
	str	r1, [r0, #8]	@ InitVal, <variable>.flag
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L105:
	.align	2
.L104:
	.word	.LANCHOR0+12
	.fnend
	.size	OSAL_InitEvent, .-OSAL_InitEvent
	.align	2
	.global	OSAL_InitTaskMutex
	.type	OSAL_InitTaskMutex, %function
OSAL_InitTaskMutex:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #1	@,
	b	OSAL_InitEvent	@
	.fnend
	.size	OSAL_InitTaskMutex, .-OSAL_InitTaskMutex
	.align	2
	.global	KernelMunmap
	.type	KernelMunmap, %function
KernelMunmap:
	.fnstart
.LFB1652:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	add	r4, sp, #4	@ tmp134,,
	mov	r5, r0	@ p, p
	mov	r1, #12	@,
	mov	r0, r4	@, tmp134
	bl	__memzero	@
	mov	r0, r4	@, tmp134
	str	r5, [sp, #4]	@ p, stMemBuf.u32StartVirAddr
	bl	HI_DRV_MMZ_Unmap	@
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	KernelMunmap, .-KernelMunmap
	.align	2
	.global	KernelMmapCache
	.type	KernelMmapCache, %function
KernelMmapCache:
	.fnstart
.LFB1651:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	add	r4, sp, #4	@ tmp137,,
	mov	r5, r0	@ phyaddr, phyaddr
	mov	r1, #12	@,
	mov	r0, r4	@, tmp137
	bl	__memzero	@
	mov	r0, r4	@, tmp137
	str	r5, [sp, #8]	@ phyaddr, stMemBuf.u32StartPhyAddr
	bl	HI_DRV_MMZ_MapCache	@
	cmp	r0, #0	@,
	beq	.L111	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r2, #685	@,
	bl	dprint_vfmw	@
.L111:
	ldr	r0, [sp, #4]	@, stMemBuf.u32StartVirAddr
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	KernelMmapCache, .-KernelMmapCache
	.align	2
	.global	KernelMmap
	.type	KernelMmap, %function
KernelMmap:
	.fnstart
.LFB1650:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	add	r4, sp, #4	@ tmp137,,
	mov	r5, r0	@ phyaddr, phyaddr
	mov	r1, #12	@,
	mov	r0, r4	@, tmp137
	bl	__memzero	@
	mov	r0, r4	@, tmp137
	str	r5, [sp, #8]	@ phyaddr, stMemBuf.u32StartPhyAddr
	bl	HI_DRV_MMZ_Map	@
	cmp	r0, #0	@,
	beq	.L114	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r2, #666	@,
	bl	dprint_vfmw	@
.L114:
	ldr	r0, [sp, #4]	@, stMemBuf.u32StartVirAddr
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	KernelMmap, .-KernelMmap
	.align	2
	.global	KernelRegisterUnMap
	.type	KernelRegisterUnMap, %function
KernelRegisterUnMap:
	.fnstart
.LFB1649:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	__arm_iounmap	@
	.fnend
	.size	KernelRegisterUnMap, .-KernelRegisterUnMap
	.align	2
	.global	KernelRegisterMap
	.type	KernelRegisterMap, %function
KernelRegisterMap:
	.fnstart
.LFB1648:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #65536	@,
	mov	r2, #0	@,
	b	__arm_ioremap	@
	.fnend
	.size	KernelRegisterMap, .-KernelRegisterMap
	.align	2
	.global	KernelMemFree
	.type	KernelMemFree, %function
KernelMemFree:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	add	r4, sp, #4	@ tmp135,,
	mov	r5, r0	@ pMemDesc, pMemDesc
	mov	r1, #12	@,
	mov	r0, r4	@, tmp135
	bl	__memzero	@
	ldr	r1, [r5, #8]	@ <variable>.Length, <variable>.Length
	ldr	r2, [r5, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r4	@, tmp135
	ldr	r3, [r5, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r1, [sp, #12]	@ <variable>.Length, stMBuf.u32Size
	str	r2, [sp, #8]	@ <variable>.PhyAddr, stMBuf.u32StartPhyAddr
	str	r3, [sp, #4]	@ <variable>.VirAddr, stMBuf.u32StartVirAddr
	bl	HI_DRV_MMZ_Unmap	@
	mov	r0, r4	@, tmp135
	bl	HI_DRV_MMZ_Release	@
	mov	r0, #0	@,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	KernelMemFree, .-KernelMemFree
	.align	2
	.global	KernelMemMalloc
	.type	KernelMemMalloc, %function
KernelMemMalloc:
	.fnstart
.LFB1646:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	add	r4, sp, #12	@ tmp143,,
	mov	r6, r2	@ align, align
	mov	sl, r0	@ MemName, MemName
	mov	r8, r1	@ len, len
	mov	r0, r4	@, tmp143
	mov	r1, #12	@,
	mov	r7, r3	@ IsCached, IsCached
	ldr	r5, [sp, #56]	@ pMemDesc, pMemDesc
	bl	__memzero	@
	mov	r0, sl	@, MemName
	mov	r2, r8	@, len
	mov	r3, r6	@, align
	mov	r1, #0	@,
	str	r4, [sp, #0]	@ tmp143,
	bl	HI_DRV_MMZ_Alloc	@
	cmp	r0, #0	@,
	bne	.L125	@,
	ldr	r3, [sp, #16]	@ stMmzBuffer.u32StartPhyAddr, stMmzBuffer.u32StartPhyAddr
	cmp	r3, #0	@ stMmzBuffer.u32StartPhyAddr,
	beq	.L125	@,
	cmp	r7, #1	@ IsCached,
	beq	.L130	@,
	mov	r0, r4	@, tmp143
	bl	HI_DRV_MMZ_Map	@
	cmp	r0, #0	@,
	bne	.L125	@,
.L127:
	ldr	r2, [sp, #12]	@ stMmzBuffer.u32StartVirAddr, stMmzBuffer.u32StartVirAddr
	mov	r0, #0	@ D.30526,
	ldr	ip, [sp, #20]	@ stMmzBuffer.u32Size, stMmzBuffer.u32Size
	ldr	r1, [sp, #16]	@ stMmzBuffer.u32StartPhyAddr, stMmzBuffer.u32StartPhyAddr
	stmia	r5, {r1, r2, ip}	@ phole stm
.L124:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L130:
	mov	r0, r4	@, tmp143
	bl	HI_DRV_MMZ_MapCache	@
	cmp	r0, #0	@,
	beq	.L127	@,
.L125:
	mov	r0, r5	@, pMemDesc
	mov	r1, #16	@,
	bl	__memzero	@
	mvn	r0, #0	@ D.30526,
	b	.L124	@
	.fnend
	.size	KernelMemMalloc, .-KernelMemMalloc
	.align	2
	.global	KernelFlushCache
	.type	KernelFlushCache, %function
KernelFlushCache:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ phy_addr, phy_addr
	mov	r6, r2	@ len, len
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r5, cpsr	@ arch_local_irq_save	@ flags
	cpsid	i
@ 0 "" 2
	mov	r1, r2	@, len
	bl	v7_flush_kern_dcache_area	@
	movw	r3, #:lower16:outer_cache	@ tmp138,
	movt	r3, #:upper16:outer_cache	@ tmp138,
	ldr	r3, [r3, #8]	@ D.31249, outer_cache.flush_range
	cmp	r3, #0	@ D.31249,
	beq	.L132	@,
	mov	r0, r4	@, phy_addr
	add	r1, r6, r4	@, len,
	blx	r3	@ D.31249
.L132:
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r5	@ local_irq_restore	@ flags
@ 0 "" 2
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	KernelFlushCache, .-KernelFlushCache
	.align	2
	.global	klib_flush_cache
	.type	klib_flush_cache, %function
klib_flush_cache:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ phy_addr, phy_addr
	mov	r6, r2	@ len, len
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r5, cpsr	@ arch_local_irq_save	@ flags
	cpsid	i
@ 0 "" 2
	mov	r1, r2	@, len
	bl	v7_flush_kern_dcache_area	@
	movw	r3, #:lower16:outer_cache	@ tmp138,
	movt	r3, #:upper16:outer_cache	@ tmp138,
	ldr	r3, [r3, #8]	@ D.31266, outer_cache.flush_range
	cmp	r3, #0	@ D.31266,
	beq	.L137	@,
	mov	r0, r4	@, phy_addr
	add	r1, r6, r4	@, len,
	blx	r3	@ D.31266
.L137:
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r5	@ local_irq_restore	@ flags
@ 0 "" 2
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	klib_flush_cache, .-klib_flush_cache
	.align	2
	.global	klib_fclose
	.type	klib_fclose, %function
klib_fclose:
	.fnstart
.LFB1641:
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
	.global	OSAL_CloseFile
	.type	OSAL_CloseFile, %function
OSAL_CloseFile:
	.fnstart
.LFB1635:
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
	.global	klib_fopen
	.type	klib_fopen, %function
klib_fopen:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	uxth	r2, r2	@, mode
	bl	filp_open	@
	cmn	r0, #4096	@,
	movhi	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	klib_fopen, .-klib_fopen
	.align	2
	.global	OSAL_OpenFile
	.type	OSAL_OpenFile, %function
OSAL_OpenFile:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r2, #0	@ eFileOP, eFileOP
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L152	@,
	cmp	r1, #1	@ eFileOP,
	moveq	r1, #65	@ flags,
	movne	r1, #66	@ flags,
.L152:
	mov	r2, #420	@,
	bl	filp_open	@
	cmn	r0, #4096	@,
	movhi	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	OSAL_OpenFile, .-OSAL_OpenFile
	.align	2
	.global	OSAL_CreateTask
	.type	OSAL_CreateTask, %function
OSAL_CreateTask:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r3, r1	@ TaskName, TaskName
	mov	r4, r0	@ pTask, pTask
	mov	r1, #0	@,
	mov	r0, r2	@, pTaskFunction
	mvn	r2, #0	@,
	bl	kthread_create_on_node	@
	cmp	r0, #0	@ D.30171,
	str	r0, [r4, #0]	@ D.30171,* pTask
	beq	.L160	@,
	bl	wake_up_process	@
	mov	r0, #0	@ D.30176,
	ldmfd	sp!, {r4, pc}	@
.L160:
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.30176,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	OSAL_CreateTask, .-OSAL_CreateTask
	.align	2
	.global	OSAL_FreeVirMem
	.type	OSAL_FreeVirMem, %function
OSAL_FreeVirMem:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ p,
	bxeq	lr	@
	b	vfree	@
	.fnend
	.size	OSAL_FreeVirMem, .-OSAL_FreeVirMem
	.align	2
	.global	OSAL_AllocVirMem
	.type	OSAL_AllocVirMem, %function
OSAL_AllocVirMem:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vmalloc	@
	.fnend
	.size	OSAL_AllocVirMem, .-OSAL_AllocVirMem
	.align	2
	.global	OSAL_GetTimeInUs
	.type	OSAL_GetTimeInUs, %function
OSAL_GetTimeInUs:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r0, sp	@,
	bl	do_gettimeofday	@
	ldmia	sp, {r0, r2}	@ phole ldm
	movw	r3, #:lower16:1000000	@ tmp140,
	movt	r3, #:upper16:1000000	@ tmp140,
	mla	r0, r0, r3, r2	@, CurrentTime.tv_sec, tmp140, CurrentTime.tv_usec
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	OSAL_GetTimeInUs, .-OSAL_GetTimeInUs
	.align	2
	.global	OSAL_GetTimeInMs
	.type	OSAL_GetTimeInMs, %function
OSAL_GetTimeInMs:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r0, sp	@,
	bl	do_gettimeofday	@
	ldr	r0, [sp, #4]	@ CurrentTime.tv_usec, CurrentTime.tv_usec
	movw	r2, #:lower16:274877907	@ tmp145,
	movt	r2, #:upper16:274877907	@ tmp145,
	smull	r1, ip, r2, r0	@, tmp138, tmp145, CurrentTime.tv_usec
	mov	r1, r0, asr #31	@ tmp141, CurrentTime.tv_usec,
	ldr	r2, [sp, #0]	@ CurrentTime.tv_sec, CurrentTime.tv_sec
	mov	r0, #1000	@ tmp144,
	rsb	r3, r1, ip, asr #6	@, tmp136, tmp141, tmp138,
	mla	r0, r0, r2, r3	@, tmp144, CurrentTime.tv_sec, tmp136
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	OSAL_GetTimeInMs, .-OSAL_GetTimeInMs
	.align	2
	.global	OSAL_AcrtUsSleep
	.type	OSAL_AcrtUsSleep, %function
OSAL_AcrtUsSleep:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ us, us
	mov	r0, sp	@,
	mov	r7, sp	@,
	bl	ktime_get	@
	mov	r1, #1000	@ tmp141,
	mul	r4, r1, r5	@ tmp140, tmp141, us
	bic	r6, r7, #8128	@ tmp144,,
	bic	r0, r6, #63	@ tmp144, tmp144,
	ldrd	r6, [sp]	@ D.30121,
	mov	r2, #2	@ tmp146,
	ldr	r3, [r0, #12]	@ D.30127, <variable>.task
	adds	r8, r6, r4	@, D.30121, tmp140
	add	r0, sp, #16	@ tmp147,,
	adc	r9, r7, #0	@, D.30121,
	mov	r4, r8	@ D.30125,
	mov	r5, r9	@ D.30125,
	strd	r4, [r0, #-8]!	@ D.30125, expires.tv64
	str	r2, [r3, #0]	@ tmp146, <variable>.state
	mov	r1, #0	@,
	bl	schedule_hrtimeout	@
	subs	r2, r0, #0	@ ret,
	blt	.L173	@,
.L172:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L173:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L172	@
	.fnend
	.size	OSAL_AcrtUsSleep, .-OSAL_AcrtUsSleep
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
	.space	2
.LC2:
	.ascii	"vfmw_osal.c, line %d: HI_DRV_MMZ_MapCache ERR\012\000"
	.space	1
.LC3:
	.ascii	"vfmw_osal.c, line %d: HI_DRV_MMZ_Map ERR\012\000"
	.space	2
.LC4:
	.ascii	"can not create thread!\012\000"
.LC5:
	.ascii	"schedule_hrtimeout return %d!\012\000"
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
	.type	g_stSem, %object
	.size	g_stSem, 12
g_stSem:
	.space	12
	.type	__key.30644, %object
	.size	__key.30644, 0
__key.30644:
	.type	__key.30189, %object
	.size	__key.30189, 0
__key.30189:
	.section	___ksymtab+SEM_INIT,"a",%progbits
	.align	2
	.type	__ksymtab_SEM_INIT, %object
	.size	__ksymtab_SEM_INIT, 8
__ksymtab_SEM_INIT:
@ value:
	.word	SEM_INIT
@ name:
	.word	__kstrtab_SEM_INIT
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
