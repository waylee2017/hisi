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
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/drv/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/osal/linux_kernel
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix
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
@ -DCHIP_TYPE_hi3716mv310 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050
@ -DHI_LOG_SUPPORT=0 -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_ADVCA_SUPPORT -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw_osal)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/osal/linux_kernel/.vfmw_osal.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/osal/linux_kernel/vfmw_osal.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/osal/linux_kernel/vfmw_osal.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fno-pic -fverbose-asm
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
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fstack-protector
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
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
.LFB1944:
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
.LFB1945:
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
.LFB1952:
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
.LFB1953:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 27 "./arch/arm/include/asm/irqflags.h" 1
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
.LFB1954:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ D.33254,* pIntrMutex
#APP
@ 152 "./arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ D.33254
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
.LFB1955:
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
.LFB1956:
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
.LFB1957:
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
.LFB1958:
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
.LFB1959:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #4]	@ <variable>.isInit, <variable>.isInit
	cmp	r1, #0	@ <variable>.isInit,
	moveq	r1, #1	@ tmp137,
	streq	r1, [r0, #4]	@ tmp137, <variable>.isInit
#APP
@ 27 "./arch/arm/include/asm/irqflags.h" 1
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
.LFB1960:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ D.33305, <variable>.irq_lockflags
#APP
@ 152 "./arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ D.33305
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
.LFB1961:
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
.LFB1962:
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
.LFB1963:
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
.LFB1964:
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
.LFB1967:
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
.LFB1968:
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
.LFB1969:
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
.LFB1970:
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
.LFB1973:
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
	add	r3, r0, #48	@,,
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
.LFB1974:
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
	add	r3, r0, #48	@,,
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
.LFB1987:
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
.LFB1991:
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
.LFB1990:
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
.LFB1989:
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
.LFB1988:
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
.LFB1986:
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
.LFB1947:
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
.LFB1951:
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
.LFB1985:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r1, r1, asl #2	@, tmp143, Time, Time,
	movw	r3, #:lower16:1374389535	@ tmp147,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pSem, pSem
	mov	r0, r2, asl #1	@ tmp144, tmp143,
	movt	r3, #:upper16:1374389535	@ tmp147,
	add	ip, r0, #50	@ tmp145, tmp144,
	ldr	r2, [r5, #8]	@ <variable>.flag, <variable>.flag
	.pad #24
	sub	sp, sp, #24	@,,
	smull	r0, r3, r3, ip	@, tmp146, tmp147, tmp145
	cmp	r2, #0	@ <variable>.flag,
	mov	r1, ip, asr #31	@ tmp149, tmp145,
	rsb	r0, r1, r3, asr #5	@, __ret, tmp149, tmp146,
	beq	.L75	@,
	cmp	r0, #0	@ __ret,
	moveq	r0, #1	@ __ret,
.L77:
	mov	ip, #0	@ tmp154,
	str	ip, [r5, #8]	@ tmp154, <variable>.flag
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L75:
	cmp	r0, #0	@ __ret,
	beq	.L77	@,
	add	r6, sp, #4	@ tmp161,,
	mov	r4, r0	@ __ret, __ret
	add	lr, r6, #12	@ tmp157, tmp161,
	str	r2, [sp, #4]	@ <variable>.flag, __wait.flags
	str	lr, [sp, #20]	@ tmp157, __wait.task_list.prev
	str	lr, [sp, #16]	@ tmp157, __wait.task_list.next
.L83:
	mov	r1, r6	@, tmp161
	mov	r0, r5	@, pSem
	mov	r2, #1	@,
	bl	prepare_to_wait_event	@
	ldr	r1, [r5, #8]	@ <variable>.flag, <variable>.flag
	cmp	r1, #0	@ <variable>.flag,
	mov	r3, r0	@ __int,
	beq	.L79	@,
	cmp	r4, #0	@ __ret,
	moveq	r4, #1	@ __ret,
.L81:
	mov	r0, r5	@, pSem
	mov	r1, r6	@, tmp161
	bl	finish_wait	@
	mov	r0, r4	@ __ret, __ret
	b	.L77	@
.L79:
	cmp	r4, #0	@ __ret,
	beq	.L81	@,
	cmp	r0, #0	@ __int,
	mov	r0, r4	@, __ret
	bne	.L90	@,
	bl	schedule_timeout	@
	mov	r4, r0	@ __ret,
	b	.L83	@
.L90:
	mov	r4, r3	@ __ret, __int
	b	.L81	@
	.fnend
	.size	SEM_DOWN, .-SEM_DOWN
	.align	2
	.global	OSAL_WaitEvent
	.type	OSAL_WaitEvent, %function
OSAL_WaitEvent:
	.fnstart
.LFB1948:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:1717986919	@ tmp143,
	movt	r3, #:upper16:1717986919	@ tmp143,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pEvent, pEvent
	smull	r2, r4, r3, r1	@, tmp142, tmp143, msWaitTime
	mov	r1, r1, asr #31	@ tmp145, msWaitTime,
	ldr	r2, [r0, #8]	@ <variable>.flag, <variable>.flag
	.pad #24
	sub	sp, sp, #24	@,,
	cmp	r2, #0	@ <variable>.flag,
	rsb	r4, r1, r4, asr #2	@, __ret, tmp145, tmp142,
	beq	.L92	@,
	cmp	r4, #0	@ __ret,
	moveq	r4, #1	@ __ret,
.L94:
	cmp	r4, #0	@ __ret,
	mov	r0, #0	@ tmp150,
	str	r0, [r5, #8]	@ tmp150, <variable>.flag
	moveq	r0, r4	@,, __ret
	mvnne	r0, #0	@,,
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L92:
	cmp	r4, #0	@ __ret,
	beq	.L94	@,
	add	r6, sp, #4	@ tmp157,,
	str	r2, [sp, #4]	@ <variable>.flag, __wait.flags
	add	ip, r6, #12	@ tmp153, tmp157,
	str	ip, [sp, #20]	@ tmp153, __wait.task_list.prev
	str	ip, [sp, #16]	@ tmp153, __wait.task_list.next
.L100:
	mov	r2, #1	@,
	mov	r0, r5	@, pEvent
	mov	r1, r6	@, tmp157
	bl	prepare_to_wait_event	@
	ldr	r2, [r5, #8]	@ <variable>.flag, <variable>.flag
	cmp	r2, #0	@ <variable>.flag,
	mov	r3, r0	@ __int,
	beq	.L96	@,
	cmp	r4, #0	@ __ret,
	moveq	r4, #1	@ __ret,
.L98:
	mov	r1, r6	@, tmp157
	mov	r0, r5	@, pEvent
	bl	finish_wait	@
	b	.L94	@
.L96:
	cmp	r4, #0	@ __ret,
	beq	.L98	@,
	cmp	r0, #0	@ __int,
	mov	r0, r4	@, __ret
	bne	.L109	@,
	bl	schedule_timeout	@
	mov	r4, r0	@ __ret,
	b	.L100	@
.L109:
	mov	r4, r3	@ __ret, __int
	b	.L98	@
	.fnend
	.size	OSAL_WaitEvent, .-OSAL_WaitEvent
	.align	2
	.global	OSAL_LockTaskMutex
	.type	OSAL_LockTaskMutex, %function
OSAL_LockTaskMutex:
	.fnstart
.LFB1950:
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
.LFB1984:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r2, .L114	@,
	str	r1, [r0, #8]	@ val, <variable>.flag
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L115:
	.align	2
.L114:
	.word	.LANCHOR0+12
	.fnend
	.size	SEM_INIT, .-SEM_INIT
	.align	2
	.global	OSAL_InitEvent
	.type	OSAL_InitEvent, %function
OSAL_InitEvent:
	.fnstart
.LFB1946:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r2, .L118	@,
	str	r1, [r0, #8]	@ InitVal, <variable>.flag
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	__init_waitqueue_head	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L119:
	.align	2
.L118:
	.word	.LANCHOR0+12
	.fnend
	.size	OSAL_InitEvent, .-OSAL_InitEvent
	.align	2
	.global	OSAL_InitTaskMutex
	.type	OSAL_InitTaskMutex, %function
OSAL_InitTaskMutex:
	.fnstart
.LFB1949:
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
.LFB1983:
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
.LFB1982:
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
	beq	.L125	@,
	bl	vfmw_dprint_nothing	@
.L125:
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
.LFB1981:
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
	beq	.L128	@,
	bl	vfmw_dprint_nothing	@
.L128:
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
.LFB1980:
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
.LFB1979:
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
.LFB1978:
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
.LFB1977:
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
	bne	.L139	@,
	ldr	r3, [sp, #16]	@ stMmzBuffer.u32StartPhyAddr, stMmzBuffer.u32StartPhyAddr
	cmp	r3, #0	@ stMmzBuffer.u32StartPhyAddr,
	beq	.L139	@,
	cmp	r7, #1	@ IsCached,
	beq	.L144	@,
	mov	r0, r4	@, tmp143
	bl	HI_DRV_MMZ_Map	@
	cmp	r0, #0	@,
	bne	.L139	@,
.L141:
	ldr	r2, [sp, #12]	@ stMmzBuffer.u32StartVirAddr, stMmzBuffer.u32StartVirAddr
	mov	r0, #0	@ D.33508,
	ldr	ip, [sp, #20]	@ stMmzBuffer.u32Size, stMmzBuffer.u32Size
	ldr	r1, [sp, #16]	@ stMmzBuffer.u32StartPhyAddr, stMmzBuffer.u32StartPhyAddr
	stmia	r5, {r1, r2, ip}	@ phole stm
.L138:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L144:
	mov	r0, r4	@, tmp143
	bl	HI_DRV_MMZ_MapCache	@
	cmp	r0, #0	@,
	beq	.L141	@,
.L139:
	mov	r0, r5	@, pMemDesc
	mov	r1, #16	@,
	bl	__memzero	@
	mvn	r0, #0	@ D.33508,
	b	.L138	@
	.fnend
	.size	KernelMemMalloc, .-KernelMemMalloc
	.align	2
	.global	KernelFlushCache
	.type	KernelFlushCache, %function
KernelFlushCache:
	.fnstart
.LFB1976:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ phy_addr, phy_addr
	mov	r6, r2	@ len, len
#APP
@ 27 "./arch/arm/include/asm/irqflags.h" 1
		mrs	r5, cpsr	@ arch_local_irq_save	@ flags
	cpsid	i
@ 0 "" 2
	mov	r1, r2	@, len
	bl	v7_flush_kern_dcache_area	@
	movw	r3, #:lower16:outer_cache	@ tmp138,
	movt	r3, #:upper16:outer_cache	@ tmp138,
	ldr	r3, [r3, #8]	@ D.34163, outer_cache.flush_range
	cmp	r3, #0	@ D.34163,
	beq	.L146	@,
	mov	r0, r4	@, phy_addr
	add	r1, r6, r4	@, len,
	blx	r3	@ D.34163
.L146:
#APP
@ 152 "./arch/arm/include/asm/irqflags.h" 1
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
.LFB1975:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ phy_addr, phy_addr
	mov	r6, r2	@ len, len
#APP
@ 27 "./arch/arm/include/asm/irqflags.h" 1
		mrs	r5, cpsr	@ arch_local_irq_save	@ flags
	cpsid	i
@ 0 "" 2
	mov	r1, r2	@, len
	bl	v7_flush_kern_dcache_area	@
	movw	r3, #:lower16:outer_cache	@ tmp138,
	movt	r3, #:upper16:outer_cache	@ tmp138,
	ldr	r3, [r3, #8]	@ D.34180, outer_cache.flush_range
	cmp	r3, #0	@ D.34180,
	beq	.L151	@,
	mov	r0, r4	@, phy_addr
	add	r1, r6, r4	@, len,
	blx	r3	@ D.34180
.L151:
#APP
@ 152 "./arch/arm/include/asm/irqflags.h" 1
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
.LFB1972:
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
.LFB1966:
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
.LFB1971:
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
.LFB1965:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r2, #0	@ eFileOP, eFileOP
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L166	@,
	cmp	r1, #1	@ eFileOP,
	moveq	r1, #65	@ flags,
	movne	r1, #66	@ flags,
.L166:
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
.LFB1943:
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
	cmp	r0, #0	@ D.33132,
	str	r0, [r4, #0]	@ D.33132,* pTask
	beq	.L174	@,
	bl	wake_up_process	@
	mov	r0, #0	@ D.33136,
	ldmfd	sp!, {r4, pc}	@
.L174:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.33136,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	OSAL_CreateTask, .-OSAL_CreateTask
	.align	2
	.global	OSAL_FreeVirMem
	.type	OSAL_FreeVirMem, %function
OSAL_FreeVirMem:
	.fnstart
.LFB1942:
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
.LFB1941:
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
.LFB1940:
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
.LFB1939:
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
.LFB1938:
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
	ldrd	r6, [sp]	@ D.33083,
	mov	r2, #2	@ tmp146,
	ldr	r3, [r0, #12]	@ D.33089, <variable>.task
	adds	r8, r6, r4	@, D.33083, tmp140
	add	r0, sp, #16	@ tmp147,,
	adc	r9, r7, #0	@, D.33083,
	mov	r4, r8	@ D.33087,
	mov	r5, r9	@ D.33087,
	strd	r4, [r0, #-8]!	@ D.33087, expires.tv64
	str	r2, [r3, #0]	@ tmp146, <variable>.state
	mov	r1, #0	@,
	bl	schedule_hrtimeout	@
	cmp	r0, #0	@,
	blt	.L187	@,
.L186:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L187:
	bl	vfmw_dprint_nothing	@
	b	.L186	@
	.fnend
	.size	OSAL_AcrtUsSleep, .-OSAL_AcrtUsSleep
	.global	__ksymtab_SEM_INIT
	.global	__ksymtab_SEM_DOWN
	.global	__ksymtab_SEM_UP
	.global	g_stSem
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_SEM_INIT, %object
	.size	__kstrtab_SEM_INIT, 9
__kstrtab_SEM_INIT:
	.ascii	"SEM_INIT\000"
	.type	__kstrtab_SEM_DOWN, %object
	.size	__kstrtab_SEM_DOWN, 9
__kstrtab_SEM_DOWN:
	.ascii	"SEM_DOWN\000"
	.type	__kstrtab_SEM_UP, %object
	.size	__kstrtab_SEM_UP, 7
__kstrtab_SEM_UP:
	.ascii	"SEM_UP\000"
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
	.type	g_stSem, %object
	.size	g_stSem, 12
g_stSem:
	.space	12
	.type	__key.33624, %object
	.size	__key.33624, 0
__key.33624:
	.type	__key.33149, %object
	.size	__key.33149, 0
__key.33149:
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
