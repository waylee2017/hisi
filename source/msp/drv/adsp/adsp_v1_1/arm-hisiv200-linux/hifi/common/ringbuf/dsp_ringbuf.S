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
	.file	"dsp_ringbuf.c"
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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/component/ha_codec/include
@ -I
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -D_FORTIFY_SOURCE=2
@ -DCHIP_TYPE_hi3716mv330 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1
@ -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT
@ -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT -DHI_SND_AVC_SUPPORT
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dsp_ringbuf)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/ringbuf/.dsp_ringbuf.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/ringbuf/dsp_ringbuf.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/ringbuf/dsp_ringbuf.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fverbose-asm
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
	.global	RBUF_ReadDataComplete
	.type	RBUF_ReadDataComplete, %function
RBUF_ReadDataComplete:
	.fnstart
.LFB23:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ hRBUF
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	.pad #20
	sub	sp, sp, #20	@,,
	beq	.L10	@,
	mov	r2, #0	@ tmp144,
	str	r2, [sp, #8]	@ tmp144, u32RdLen
	str	r2, [sp, #12]	@ tmp144, u32RdLen
	str	r2, [sp, #4]	@ tmp144, u32RdPos
	ldr	r4, [r0, #40]	@ D.2569, <variable>.stCB.pu32Read
	ldr	ip, [r0, #36]	@ D.2568, <variable>.stCB.pu32Write
	ldr	r3, [r4, #0]	@ u32ReadPos,* D.2569
	ldr	r5, [ip, #0]	@ u32WritePos,* D.2568
	cmp	r3, r5	@ u32ReadPos, u32WritePos
	str	r3, [sp, #0]	@ u32ReadPos, u32RdPos
	bhi	.L3	@,
	add	r2, r1, r3	@ tmp147, amountRead, u32ReadPos
	cmp	r5, r2	@ u32WritePos, tmp147
	strcs	r1, [sp, #8]	@ amountRead, u32RdLen
	rsbcc	ip, r3, r5	@ amountRead.53, u32ReadPos, u32WritePos
	strcc	ip, [sp, #8]	@ amountRead.53, u32RdLen
	movcs	ip, r1	@ amountRead.53, amountRead
.L5:
	cmp	ip, #0	@ amountRead.53,
	beq	.L7	@,
	ldr	r2, [sp, #12]	@ pretmp.41, u32RdLen
	ldr	r3, [sp, #0]	@ u32RdPos, u32RdPos
	cmp	r2, #0	@ pretmp.41,
	add	r3, ip, r3	@ u32ReadPos, amountRead.53, u32RdPos
	ldrne	ip, [sp, #4]	@ u32RdPos, u32RdPos
	addne	r3, r2, ip	@ u32ReadPos, pretmp.41, u32RdPos
.L7:
	ldr	r2, [r0, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	cmp	r2, r3	@ <variable>.stCB.u32Lenght, u32ReadPos
	moveq	r3, #0	@ u32ReadPos,
	str	r3, [r4, #0]	@ u32ReadPos,* D.2569
	ldr	r3, [r0, #52]	@ <variable>.stProc.uTotalByteRead, <variable>.stProc.uTotalByteRead
	add	r1, r3, r1	@ tmp154, <variable>.stProc.uTotalByteRead, amountRead
	str	r1, [r0, #52]	@ tmp154, <variable>.stProc.uTotalByteRead
.L10:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L3:
	ldr	ip, [r0, #48]	@ D.2565, <variable>.stCB.u32Lenght
	add	r6, r1, r3	@ tmp148, amountRead, u32ReadPos
	cmp	r6, ip	@ tmp148, D.2565
	movls	ip, r1	@ amountRead.53, amountRead
	strls	r1, [sp, #8]	@ amountRead, u32RdLen
	bls	.L5	@
.L6:
	rsb	ip, r3, ip	@ amountRead.53, u32ReadPos, D.2565
	stmib	sp, {r2, ip}	@ phole stm
	rsb	r2, ip, r1	@ D.2562, amountRead.53, amountRead
	cmp	r5, r2	@ u32WritePos, D.2562
	strls	r5, [sp, #12]	@, u32WritePos, u32RdLen
	strhi	r2, [sp, #12]	@, D.2562, u32RdLen
	b	.L5	@
	.fnend
	.size	RBUF_ReadDataComplete, .-RBUF_ReadDataComplete
	.align	2
	.global	RBUF_WriteDataComplete
	.type	RBUF_WriteDataComplete, %function
RBUF_WriteDataComplete:
	.fnstart
.LFB24:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ hRBUF
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	.pad #16
	sub	sp, sp, #16	@,,
	beq	.L19	@,
	mov	r2, #0	@ tmp143,
	str	r2, [sp, #8]	@ tmp143, u32WtLen
	str	r2, [sp, #12]	@ tmp143, u32WtLen
	str	r2, [sp, #4]	@ tmp143, u32WtPos
	ldr	r3, [r0, #40]	@ D.2585, <variable>.stCB.pu32Read
	ldr	r4, [r0, #36]	@ D.2584, <variable>.stCB.pu32Write
	ldr	ip, [r3, #0]	@ u32ReadPos,* D.2585
	ldr	r3, [r4, #0]	@ u32WritePos,* D.2584
	cmp	ip, r3	@ u32ReadPos, u32WritePos
	strhi	r1, [sp, #8]	@ amountWritten, u32WtLen
	str	r3, [sp, #0]	@ u32WritePos, u32WtPos
	movhi	ip, r1	@ amountWritten.83, amountWritten
	bls	.L20	@,
.L16:
	cmp	ip, #0	@ amountWritten.83,
	beq	.L17	@,
	ldr	r2, [sp, #12]	@ pretmp.71, u32WtLen
	ldr	r3, [sp, #0]	@ u32WtPos, u32WtPos
	cmp	r2, #0	@ pretmp.71,
	add	r3, ip, r3	@ u32WritePos, amountWritten.83, u32WtPos
	ldrne	r3, [sp, #4]	@ u32WtPos, u32WtPos
	addne	r3, r2, r3	@ u32WritePos, pretmp.71, u32WtPos
.L17:
	ldr	r2, [r0, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	cmp	r2, r3	@ <variable>.stCB.u32Lenght, u32WritePos
	moveq	r3, #0	@ u32WritePos,
	str	r3, [r4, #0]	@ u32WritePos,* D.2584
	ldr	ip, [r0, #68]	@ <variable>.stProc.uTotalByteWrite, <variable>.stProc.uTotalByteWrite
	add	r1, ip, r1	@ tmp153, <variable>.stProc.uTotalByteWrite, amountWritten
	str	r1, [r0, #68]	@ tmp153, <variable>.stProc.uTotalByteWrite
.L19:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5}
	bx	lr
.L20:
	ldr	ip, [r0, #48]	@ D.2583, <variable>.stCB.u32Lenght
	add	r5, r1, r3	@ tmp146, amountWritten, u32WritePos
	cmp	ip, r5	@ D.2583, tmp146
	strcc	r2, [sp, #4]	@ tmp143, u32WtPos
	rsbcc	ip, r3, ip	@ amountWritten.83, u32WritePos, D.2583
	strcs	r1, [sp, #8]	@ amountWritten, u32WtLen
	rsbcc	r2, ip, r1	@ tmp147, amountWritten.83, amountWritten
	movcs	ip, r1	@ amountWritten.83, amountWritten
	strcc	ip, [sp, #8]	@ amountWritten.83, u32WtLen
	strcc	r2, [sp, #12]	@ tmp147, u32WtLen
	b	.L16	@
	.fnend
	.size	RBUF_WriteDataComplete, .-RBUF_WriteDataComplete
	.align	2
	.global	RBUF_QueryBusy
	.type	RBUF_QueryBusy, %function
RBUF_QueryBusy:
	.fnstart
.LFB26:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #40]	@ D.2594, <variable>.stCB.pu32Read
	ldr	r1, [r0, #36]	@ D.2593, <variable>.stCB.pu32Write
	ldr	r3, [ip, #0]	@ u32ReadPos,* D.2594
	ldr	r2, [r1, #0]	@ u32WritePos,* D.2593
	cmp	r3, r2	@ u32ReadPos, u32WritePos
	rsbls	r0, r3, r2	@ u32BusyLen, u32ReadPos, u32WritePos
	ldrhi	r0, [r0, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	addhi	r2, r2, r0	@ tmp141, u32WritePos, <variable>.stCB.u32Lenght
	rsbhi	r0, r3, r2	@ u32BusyLen, u32ReadPos, tmp141
	bx	lr	@
	.fnend
	.size	RBUF_QueryBusy, .-RBUF_QueryBusy
	.align	2
	.global	RBUF_QueryFree
	.type	RBUF_QueryFree, %function
RBUF_QueryFree:
	.fnstart
.LFB27:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #40]	@ D.2604, <variable>.stCB.pu32Read
	ldr	r3, [r0, #36]	@ D.2603, <variable>.stCB.pu32Write
	ldr	r1, [r0, #24]	@ D.2462, <variable>.stAttr.uFrameSize
	ldr	r2, [ip, #0]	@ u32ReadPos,* D.2604
	ldr	ip, [r3, #0]	@ u32WritePos,* D.2603
	cmp	r2, ip	@ u32ReadPos, u32WritePos
	ldrls	r0, [r0, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	addls	r2, r2, r0	@ tmp143, u32ReadPos, <variable>.stCB.u32Lenght
	rsb	r3, ip, r2	@ u32FreeLen, u32WritePos, u32ReadPos
	cmp	r1, r3	@ D.2462, u32FreeLen
	rsbcc	r0, r1, r3	@ u32FreeLen.132, D.2462, u32FreeLen
	movcs	r0, #0	@ u32FreeLen.132,
	bx	lr	@
	.fnend
	.size	RBUF_QueryFree, .-RBUF_QueryFree
	.align	2
	.global	RBUF_CheckFree
	.type	RBUF_CheckFree, %function
RBUF_CheckFree:
	.fnstart
.LFB28:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r3, [r0, #40]	@ D.2617, <variable>.stCB.pu32Read
	ldr	r2, [r0, #36]	@ D.2616, <variable>.stCB.pu32Write
	ldr	ip, [r0, #24]	@ D.2472, <variable>.stAttr.uFrameSize
	ldr	r3, [r3, #0]	@ u32ReadPos,* D.2617
	ldr	r2, [r2, #0]	@ u32WritePos,* D.2616
	cmp	r3, r2	@ u32ReadPos, u32WritePos
	rsbls	r5, r3, r2	@ u32BusyLen, u32ReadPos, u32WritePos
	rsbhi	r4, r2, r3	@ u32FreeLen, u32WritePos, u32ReadPos
	ldrls	r4, [r0, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	ldrhi	r5, [r0, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	addls	r3, r3, r4	@ tmp146, u32ReadPos, <variable>.stCB.u32Lenght
	rsbls	r4, r2, r3	@ u32FreeLen, u32WritePos, tmp146
	addhi	r2, r2, r5	@ tmp148, u32WritePos, <variable>.stCB.u32Lenght
	rsbhi	r5, r3, r2	@ u32BusyLen, u32ReadPos, tmp148
	cmp	ip, r4	@ D.2472, u32FreeLen
	ldr	r3, [r0, #28]	@ <variable>.stAttr.uLatencySize, <variable>.stAttr.uLatencySize
	add	r2, r5, r1	@ tmp150, u32BusyLen, blocksize
	movcs	ip, #0	@ u32FreeLen.157,
	rsbcc	ip, ip, r4	@ u32FreeLen.157, D.2472, u32FreeLen
	cmp	r2, r3	@ tmp150, <variable>.stAttr.uLatencySize
	movhi	r0, #0	@ D.2478,
	bhi	.L37	@,
	cmp	r1, ip	@ blocksize, u32FreeLen.157
	movcs	r0, #0	@, D.2478
	movcc	r0, #1	@, D.2478
.L37:
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	RBUF_CheckFree, .-RBUF_CheckFree
	.align	2
	.global	RBUF_Flush
	.type	RBUF_Flush, %function
RBUF_Flush:
	.fnstart
.LFB29:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #36]	@ D.2620, <variable>.stCB.pu32Write
	ldr	r3, [r0, #40]	@ D.2621, <variable>.stCB.pu32Read
	ldr	r2, [r1, #0]	@ D.2619,* D.2620
	str	r2, [r3, #0]	@ D.2619,* D.2621
	bx	lr	@
	.fnend
	.size	RBUF_Flush, .-RBUF_Flush
	.align	2
	.global	RBUF_WriteDataDma
	.type	RBUF_WriteDataDma, %function
RBUF_WriteDataDma:
	.fnstart
.LFB31:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	subs	r4, r0, #0	@ hRBUF, hRBUF
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r7, r1	@ pu32Src, pu32Src
	beq	.L42	@,
	ldr	r5, [r4, #72]	@ <variable>.stProc.uTryWriteCnt, <variable>.stProc.uTryWriteCnt
	mov	r8, #0	@ tmp153,
	add	r0, r5, #1	@ tmp152, <variable>.stProc.uTryWriteCnt,
	str	r0, [r4, #72]	@ tmp152, <variable>.stProc.uTryWriteCnt
	str	r8, [sp, #8]	@ tmp153, u32WtLen
	str	r8, [sp, #12]	@ tmp153, u32WtLen
	str	r8, [sp, #4]	@ tmp153, u32WtPos
	ldr	r1, [r4, #40]	@ D.2646, <variable>.stCB.pu32Read
	ldr	r3, [r4, #36]	@ D.2645, <variable>.stCB.pu32Write
	ldr	r5, [r1, #0]	@ u32ReadPos,* D.2646
	ldr	sl, [r3, #0]	@ u32WritePos,* D.2645
	cmp	r5, sl	@ u32ReadPos, u32WritePos
	str	sl, [sp, #0]	@ u32WritePos, u32WtPos
	bls	.L52	@,
	add	r3, r2, sl	@ tmp158, u3SrcLen, u32WritePos
	cmp	r5, r3	@ u32ReadPos, tmp158
	strhi	r2, [sp, #8]	@ u3SrcLen, u32WtLen
	rsbls	r5, sl, r5	@ u3SrcLen.208, u32WritePos, u32ReadPos
	strls	r5, [sp, #8]	@ u3SrcLen.208, u32WtLen
	movhi	r5, r2	@ u3SrcLen.208, u3SrcLen
.L45:
	cmp	r5, #0	@ u3SrcLen.208,
	beq	.L47	@,
	ldr	sl, [sp, #0]	@ temp.214, u32WtPos
	mov	r1, r7	@, pu32Src
	ldr	r6, [r4, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	mov	r2, r5	@, u3SrcLen.208
	add	r0, sl, r6	@, temp.214, <variable>.stCB.pu8Data
	add	sl, r5, sl	@ u32WritePos, u3SrcLen.208, temp.214
	bl	memcpy	@
	ldr	r6, [sp, #12]	@ pretmp.196, u32WtLen
	add	r1, r7, r5	@ pu32Src.217, pu32Src, u3SrcLen.208
	cmp	r6, #0	@ pretmp.196,
	beq	.L47	@,
	ldr	sl, [sp, #4]	@ D.2636, u32WtPos
	mov	r2, r6	@, pretmp.196
	ldr	lr, [r4, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	add	r0, sl, lr	@, D.2636, <variable>.stCB.pu8Data
	add	sl, sl, r6	@ u32WritePos, D.2636, pretmp.196
	bl	memcpy	@
.L47:
	ldr	r2, [r4, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	ldr	r0, [r4, #36]	@ temp.213, <variable>.stCB.pu32Write
	cmp	sl, r2	@ u32WritePos, <variable>.stCB.u32Lenght
	movcs	sl, #0	@ u32WritePos,
	adds	r1, r5, r8	@ Bytes, u3SrcLen.208, prephitmp.195
	str	sl, [r0, #0]	@ u32WritePos,* temp.213
	ldreq	r0, [r4, #76]	@ <variable>.stProc.uBufFullCnt, <variable>.stProc.uBufFullCnt
	mov	r2, r1	@ u3SrcLen, Bytes
	ldr	r8, [r4, #68]	@ <variable>.stProc.uTotalByteWrite, <variable>.stProc.uTotalByteWrite
	addeq	r0, r0, #1	@ tmp173, <variable>.stProc.uBufFullCnt,
	add	r5, r8, r1	@ tmp175, <variable>.stProc.uTotalByteWrite, Bytes
	streq	r0, [r4, #76]	@ tmp173, <variable>.stProc.uBufFullCnt
	str	r5, [r4, #68]	@ tmp175, <variable>.stProc.uTotalByteWrite
.L42:
	mov	r0, r2	@, u3SrcLen
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L52:
	ldr	r5, [r4, #48]	@ D.2644, <variable>.stCB.u32Lenght
	add	ip, r2, sl	@ tmp156, u3SrcLen, u32WritePos
	cmp	r5, ip	@ D.2644, tmp156
	strcc	r8, [sp, #4]	@ tmp153, u32WtPos
	rsbcc	r5, sl, r5	@ u3SrcLen.208, u32WritePos, D.2644
	strcs	r2, [sp, #8]	@ u3SrcLen, u32WtLen
	rsbcc	r8, r5, r2	@ prephitmp.195, u3SrcLen.208, u3SrcLen
	movcs	r5, r2	@ u3SrcLen.208, u3SrcLen
	strcc	r5, [sp, #8]	@ u3SrcLen.208, u32WtLen
	strcc	r8, [sp, #12]	@ prephitmp.195, u32WtLen
	b	.L45	@
	.fnend
	.size	RBUF_WriteDataDma, .-RBUF_WriteDataDma
	.align	2
	.global	RBUF_ReadDataDma
	.type	RBUF_ReadDataDma, %function
RBUF_ReadDataDma:
	.fnstart
.LFB30:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	subs	r4, r0, #0	@ hRBUF, hRBUF
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r8, r1	@ pu32Dest, pu32Dest
	moveq	r0, r4	@ Bytes, hRBUF
	beq	.L55	@,
	ldr	sl, [r4, #56]	@ <variable>.stProc.uTryReadCnt, <variable>.stProc.uTryReadCnt
	mov	r3, #0	@ tmp153,
	add	r6, sl, #1	@ tmp152, <variable>.stProc.uTryReadCnt,
	str	r6, [r4, #56]	@ tmp152, <variable>.stProc.uTryReadCnt
	str	r3, [sp, #8]	@ tmp153, u32RdLen
	str	r3, [sp, #12]	@ tmp153, u32RdLen
	str	r3, [sp, #4]	@ tmp153, u32RdPos
	ldr	r0, [r4, #40]	@ D.2669, <variable>.stCB.pu32Read
	ldr	r1, [r4, #36]	@ D.2668, <variable>.stCB.pu32Write
	ldr	sl, [r0, #0]	@ u32ReadPos,* D.2669
	ldr	r6, [r1, #0]	@ u32WritePos,* D.2668
	cmp	sl, r6	@ u32ReadPos, u32WritePos
	str	sl, [sp, #0]	@ u32ReadPos, u32RdPos
	bhi	.L56	@,
	add	ip, r2, sl	@ tmp156, u32DestSize, u32ReadPos
	cmp	r6, ip	@ u32WritePos, tmp156
	strcs	r2, [sp, #8]	@ u32DestSize, u32RdLen
	rsbcc	r5, sl, r6	@ u32DestSize.245, u32ReadPos, u32WritePos
	strcc	r5, [sp, #8]	@ u32DestSize.245, u32RdLen
	movcs	r5, r2	@ u32DestSize.245, u32DestSize
	movcs	r6, r3	@ u32WritePos, tmp153
	movcc	r6, r3	@ u32WritePos, tmp153
.L58:
	cmp	r5, #0	@ u32DestSize.245,
	beq	.L60	@,
	ldr	sl, [sp, #0]	@ D.2659, u32RdPos
	mov	r0, r8	@, pu32Dest
	ldr	r3, [r4, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	mov	r2, r5	@, u32DestSize.245
	add	r1, sl, r3	@, D.2659, <variable>.stCB.pu8Data
	add	sl, r5, sl	@ u32ReadPos, u32DestSize.245, D.2659
	bl	memcpy	@
	ldr	r7, [sp, #12]	@ pretmp.233, u32RdLen
	add	r0, r8, r5	@ pu32Dest.253, pu32Dest, u32DestSize.245
	cmp	r7, #0	@ pretmp.233,
	beq	.L60	@,
	ldr	sl, [sp, #4]	@ temp.249, u32RdPos
	mov	r2, r7	@, pretmp.233
	ldr	lr, [r4, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	add	r1, sl, lr	@, temp.249, <variable>.stCB.pu8Data
	add	sl, sl, r7	@ u32ReadPos, temp.249, pretmp.233
	bl	memcpy	@
.L60:
	ldr	r0, [r4, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	ldr	r3, [r4, #40]	@ temp.252, <variable>.stCB.pu32Read
	cmp	r0, sl	@ <variable>.stCB.u32Lenght, u32ReadPos
	moveq	sl, #0	@ u32ReadPos,
	adds	r0, r5, r6	@ Bytes, u32DestSize.245, u32WritePos
	str	sl, [r3, #0]	@ u32ReadPos,* temp.252
	ldreq	r3, [r4, #60]	@ <variable>.stProc.uBufEmptyCnt, <variable>.stProc.uBufEmptyCnt
	ldr	r1, [r4, #52]	@ <variable>.stProc.uTotalByteRead, <variable>.stProc.uTotalByteRead
	addeq	r3, r3, #1	@ tmp173, <variable>.stProc.uBufEmptyCnt,
	add	ip, r1, r0	@ tmp175, <variable>.stProc.uTotalByteRead, Bytes
	streq	r3, [r4, #60]	@ tmp173, <variable>.stProc.uBufEmptyCnt
	str	ip, [r4, #52]	@ tmp175, <variable>.stProc.uTotalByteRead
.L55:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L56:
	ldr	r5, [r4, #48]	@ D.2665, <variable>.stCB.u32Lenght
	add	r1, r2, sl	@ tmp157, u32DestSize, u32ReadPos
	cmp	r1, r5	@ tmp157, D.2665
	movls	r5, r2	@ u32DestSize.245, u32DestSize
	movls	r6, r3	@ u32WritePos, tmp153
	strls	r2, [sp, #8]	@ u32DestSize, u32RdLen
	bls	.L58	@
.L59:
	rsb	r5, sl, r5	@ u32DestSize.245, u32ReadPos, D.2665
	str	r3, [sp, #4]	@ tmp153, u32RdPos
	rsb	r2, r5, r2	@ u32WritePos.247, u32DestSize.245, u32DestSize
	str	r5, [sp, #8]	@ u32DestSize.245, u32RdLen
	cmp	r6, r2	@ u32WritePos, u32WritePos.247
	str	r2, [sp, #12]	@ u32WritePos.247, u32RdLen
	strcc	r6, [sp, #12]	@ u32WritePos, u32RdLen
	movcs	r6, r2	@ u32WritePos, u32WritePos.247
	b	.L58	@
	.fnend
	.size	RBUF_ReadDataDma, .-RBUF_ReadDataDma
	.align	2
	.global	RBUF_WriteData
	.type	RBUF_WriteData, %function
RBUF_WriteData:
	.fnstart
.LFB22:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	subs	r4, r0, #0	@ hRBUF, hRBUF
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r7, r1	@ pu32Src, pu32Src
	beq	.L67	@,
	ldr	r5, [r4, #72]	@ <variable>.stProc.uTryWriteCnt, <variable>.stProc.uTryWriteCnt
	mov	r8, #0	@ tmp153,
	add	r0, r5, #1	@ tmp152, <variable>.stProc.uTryWriteCnt,
	str	r0, [r4, #72]	@ tmp152, <variable>.stProc.uTryWriteCnt
	str	r8, [sp, #8]	@ tmp153, u32WtLen
	str	r8, [sp, #12]	@ tmp153, u32WtLen
	str	r8, [sp, #4]	@ tmp153, u32WtPos
	ldr	r1, [r4, #40]	@ D.2694, <variable>.stCB.pu32Read
	ldr	r3, [r4, #36]	@ D.2693, <variable>.stCB.pu32Write
	ldr	r5, [r1, #0]	@ u32ReadPos,* D.2694
	ldr	sl, [r3, #0]	@ u32WritePos,* D.2693
	cmp	r5, sl	@ u32ReadPos, u32WritePos
	str	sl, [sp, #0]	@ u32WritePos, u32WtPos
	bls	.L77	@,
	add	r3, r2, sl	@ tmp158, u3SrcLen, u32WritePos
	cmp	r5, r3	@ u32ReadPos, tmp158
	strhi	r2, [sp, #8]	@ u3SrcLen, u32WtLen
	rsbls	r5, sl, r5	@ u3SrcLen.281, u32WritePos, u32ReadPos
	strls	r5, [sp, #8]	@ u3SrcLen.281, u32WtLen
	movhi	r5, r2	@ u3SrcLen.281, u3SrcLen
.L70:
	cmp	r5, #0	@ u3SrcLen.281,
	beq	.L72	@,
	ldr	sl, [sp, #0]	@ temp.287, u32WtPos
	mov	r1, r7	@, pu32Src
	ldr	r6, [r4, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	mov	r2, r5	@, u3SrcLen.281
	add	r0, sl, r6	@, temp.287, <variable>.stCB.pu8Data
	add	sl, r5, sl	@ u32WritePos, u3SrcLen.281, temp.287
	bl	memcpy	@
	ldr	r6, [sp, #12]	@ pretmp.269, u32WtLen
	add	r1, r7, r5	@ pu32Src.290, pu32Src, u3SrcLen.281
	cmp	r6, #0	@ pretmp.269,
	beq	.L72	@,
	ldr	sl, [sp, #4]	@ D.2684, u32WtPos
	mov	r2, r6	@, pretmp.269
	ldr	lr, [r4, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	add	r0, sl, lr	@, D.2684, <variable>.stCB.pu8Data
	add	sl, sl, r6	@ u32WritePos, D.2684, pretmp.269
	bl	memcpy	@
.L72:
	ldr	r2, [r4, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	ldr	r0, [r4, #36]	@ temp.286, <variable>.stCB.pu32Write
	cmp	sl, r2	@ u32WritePos, <variable>.stCB.u32Lenght
	movcs	sl, #0	@ u32WritePos,
	adds	r1, r8, r5	@ Bytes, prephitmp.268, u3SrcLen.281
	str	sl, [r0, #0]	@ u32WritePos,* temp.286
	ldreq	r0, [r4, #76]	@ <variable>.stProc.uBufFullCnt, <variable>.stProc.uBufFullCnt
	mov	r2, r1	@ u3SrcLen, Bytes
	ldr	r8, [r4, #68]	@ <variable>.stProc.uTotalByteWrite, <variable>.stProc.uTotalByteWrite
	addeq	r0, r0, #1	@ tmp173, <variable>.stProc.uBufFullCnt,
	add	r5, r8, r1	@ tmp175, <variable>.stProc.uTotalByteWrite, Bytes
	streq	r0, [r4, #76]	@ tmp173, <variable>.stProc.uBufFullCnt
	str	r5, [r4, #68]	@ tmp175, <variable>.stProc.uTotalByteWrite
.L67:
	mov	r0, r2	@, u3SrcLen
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L77:
	ldr	r5, [r4, #48]	@ D.2692, <variable>.stCB.u32Lenght
	add	ip, r2, sl	@ tmp156, u3SrcLen, u32WritePos
	cmp	r5, ip	@ D.2692, tmp156
	strcc	r8, [sp, #4]	@ tmp153, u32WtPos
	rsbcc	r5, sl, r5	@ u3SrcLen.281, u32WritePos, D.2692
	strcs	r2, [sp, #8]	@ u3SrcLen, u32WtLen
	rsbcc	r8, r5, r2	@ prephitmp.268, u3SrcLen.281, u3SrcLen
	movcs	r5, r2	@ u3SrcLen.281, u3SrcLen
	strcc	r5, [sp, #8]	@ u3SrcLen.281, u32WtLen
	strcc	r8, [sp, #12]	@ prephitmp.268, u32WtLen
	b	.L70	@
	.fnend
	.size	RBUF_WriteData, .-RBUF_WriteData
	.align	2
	.global	RBUF_ReadData
	.type	RBUF_ReadData, %function
RBUF_ReadData:
	.fnstart
.LFB21:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	subs	r4, r0, #0	@ hRBUF, hRBUF
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r8, r1	@ pu32Dest, pu32Dest
	moveq	r0, r4	@ Bytes, hRBUF
	beq	.L80	@,
	ldr	sl, [r4, #56]	@ <variable>.stProc.uTryReadCnt, <variable>.stProc.uTryReadCnt
	mov	r3, #0	@ tmp153,
	add	r6, sl, #1	@ tmp152, <variable>.stProc.uTryReadCnt,
	str	r6, [r4, #56]	@ tmp152, <variable>.stProc.uTryReadCnt
	str	r3, [sp, #8]	@ tmp153, u32RdLen
	str	r3, [sp, #12]	@ tmp153, u32RdLen
	str	r3, [sp, #4]	@ tmp153, u32RdPos
	ldr	r0, [r4, #40]	@ D.2717, <variable>.stCB.pu32Read
	ldr	r1, [r4, #36]	@ D.2716, <variable>.stCB.pu32Write
	ldr	sl, [r0, #0]	@ u32ReadPos,* D.2717
	ldr	r6, [r1, #0]	@ u32WritePos,* D.2716
	cmp	sl, r6	@ u32ReadPos, u32WritePos
	str	sl, [sp, #0]	@ u32ReadPos, u32RdPos
	bhi	.L81	@,
	add	ip, r2, sl	@ tmp156, u32DestSize, u32ReadPos
	cmp	r6, ip	@ u32WritePos, tmp156
	strcs	r2, [sp, #8]	@ u32DestSize, u32RdLen
	rsbcc	r5, sl, r6	@ u32DestSize.318, u32ReadPos, u32WritePos
	strcc	r5, [sp, #8]	@ u32DestSize.318, u32RdLen
	movcs	r5, r2	@ u32DestSize.318, u32DestSize
	movcs	r6, r3	@ u32WritePos, tmp153
	movcc	r6, r3	@ u32WritePos, tmp153
.L83:
	cmp	r5, #0	@ u32DestSize.318,
	beq	.L85	@,
	ldr	sl, [sp, #0]	@ D.2707, u32RdPos
	mov	r0, r8	@, pu32Dest
	ldr	r3, [r4, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	mov	r2, r5	@, u32DestSize.318
	add	r1, sl, r3	@, D.2707, <variable>.stCB.pu8Data
	add	sl, r5, sl	@ u32ReadPos, u32DestSize.318, D.2707
	bl	memcpy	@
	ldr	r7, [sp, #12]	@ pretmp.306, u32RdLen
	add	r0, r8, r5	@ pu32Dest.326, pu32Dest, u32DestSize.318
	cmp	r7, #0	@ pretmp.306,
	beq	.L85	@,
	ldr	sl, [sp, #4]	@ temp.322, u32RdPos
	mov	r2, r7	@, pretmp.306
	ldr	lr, [r4, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	add	r1, sl, lr	@, temp.322, <variable>.stCB.pu8Data
	add	sl, sl, r7	@ u32ReadPos, temp.322, pretmp.306
	bl	memcpy	@
.L85:
	ldr	r0, [r4, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	ldr	r3, [r4, #40]	@ temp.325, <variable>.stCB.pu32Read
	cmp	r0, sl	@ <variable>.stCB.u32Lenght, u32ReadPos
	moveq	sl, #0	@ u32ReadPos,
	adds	r0, r5, r6	@ Bytes, u32DestSize.318, u32WritePos
	str	sl, [r3, #0]	@ u32ReadPos,* temp.325
	ldreq	r3, [r4, #60]	@ <variable>.stProc.uBufEmptyCnt, <variable>.stProc.uBufEmptyCnt
	ldr	r1, [r4, #52]	@ <variable>.stProc.uTotalByteRead, <variable>.stProc.uTotalByteRead
	addeq	r3, r3, #1	@ tmp173, <variable>.stProc.uBufEmptyCnt,
	add	ip, r1, r0	@ tmp175, <variable>.stProc.uTotalByteRead, Bytes
	streq	r3, [r4, #60]	@ tmp173, <variable>.stProc.uBufEmptyCnt
	str	ip, [r4, #52]	@ tmp175, <variable>.stProc.uTotalByteRead
.L80:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L81:
	ldr	r5, [r4, #48]	@ D.2713, <variable>.stCB.u32Lenght
	add	r1, r2, sl	@ tmp157, u32DestSize, u32ReadPos
	cmp	r1, r5	@ tmp157, D.2713
	movls	r5, r2	@ u32DestSize.318, u32DestSize
	movls	r6, r3	@ u32WritePos, tmp153
	strls	r2, [sp, #8]	@ u32DestSize, u32RdLen
	bls	.L83	@
.L84:
	rsb	r5, sl, r5	@ u32DestSize.318, u32ReadPos, D.2713
	str	r3, [sp, #4]	@ tmp153, u32RdPos
	rsb	r2, r5, r2	@ u32WritePos.320, u32DestSize.318, u32DestSize
	str	r5, [sp, #8]	@ u32DestSize.318, u32RdLen
	cmp	r6, r2	@ u32WritePos, u32WritePos.320
	str	r2, [sp, #12]	@ u32WritePos.320, u32RdLen
	strcc	r6, [sp, #12]	@ u32WritePos, u32RdLen
	movcs	r6, r2	@ u32WritePos, u32WritePos.320
	b	.L83	@
	.fnend
	.size	RBUF_ReadData, .-RBUF_ReadData
	.align	2
	.global	RBUF_QueryInfo
	.type	RBUF_QueryInfo, %function
RBUF_QueryInfo:
	.fnstart
.LFB25:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ hRBUF, hRBUF
	str	r4, [sp, #-4]!	@,
	.save {r4}
	beq	.L101	@,
	ldr	ip, [r3, #28]	@ <variable>.stAttr.uLatencySize, <variable>.stAttr.uLatencySize
	ldr	r0, [r3, #24]	@ u32Gap, <variable>.stAttr.uFrameSize
	str	ip, [r1, #32]	@ <variable>.stAttr.uLatencySize, <variable>.u32LatencySize
	ldr	r2, [r3, #44]	@ <variable>.stCB.pu8Data, <variable>.stCB.pu8Data
	str	r2, [r1, #0]	@ <variable>.stCB.pu8Data, <variable>.u32BasePtr
	ldr	ip, [r3, #48]	@ <variable>.stCB.u32Lenght, <variable>.stCB.u32Lenght
	str	ip, [r1, #12]	@ <variable>.stCB.u32Lenght, <variable>.u32BufSize
	ldr	r2, [r3, #36]	@ D.2440, <variable>.stCB.pu32Write
	ldr	ip, [r2, #0]	@ D.2441,* D.2440
	str	ip, [r1, #8]	@ D.2441, <variable>.u32WritePtr
	ldr	r2, [r3, #40]	@ D.2442, <variable>.stCB.pu32Read
	ldr	ip, [r2, #0]	@ D.2443,* D.2442
	str	ip, [r1, #4]	@ D.2443, <variable>.u32ReadPtr
	ldr	r2, [r3, #40]	@ D.2728, <variable>.stCB.pu32Read
	ldr	ip, [r3, #36]	@ D.2727, <variable>.stCB.pu32Write
	ldr	r2, [r2, #0]	@ u32ReadPos,* D.2728
	ldr	ip, [ip, #0]	@ u32WritePos,* D.2727
	cmp	r2, ip	@ u32ReadPos, u32WritePos
	rsbls	r2, r2, ip	@ u32BusyLen, u32ReadPos, u32WritePos
	strls	r2, [r1, #20]	@ u32BusyLen, <variable>.u32TotalDataSize
	ldrhi	r4, [r3, #48]	@ D.2726, <variable>.stCB.u32Lenght
	strls	r2, [r1, #16]	@ u32BusyLen, <variable>.u32ContiguousDataSize
	addhi	ip, ip, r4	@ tmp158, u32WritePos, D.2726
	rsbhi	r4, r2, r4	@ tmp157, u32ReadPos, D.2726
	rsbhi	r2, r2, ip	@ tmp159, u32ReadPos, tmp158
	strhi	r4, [r1, #16]	@ tmp157, <variable>.u32ContiguousDataSize
	strhi	r2, [r1, #20]	@ tmp159, <variable>.u32TotalDataSize
	ldr	ip, [r3, #40]	@ D.2743, <variable>.stCB.pu32Read
	ldr	r2, [r3, #36]	@ D.2742, <variable>.stCB.pu32Write
	ldr	ip, [ip, #0]	@ u32ReadPos,* D.2743
	ldr	r2, [r2, #0]	@ u32WritePos,* D.2742
	cmp	ip, r2	@ u32ReadPos, u32WritePos
	rsbhi	r3, r2, ip	@ u32FreeLen, u32WritePos, u32ReadPos
	strhi	r3, [r1, #24]	@ u32FreeLen, <variable>.u32ContiguousFreeSize
	ldrls	r4, [r3, #48]	@ D.2741, <variable>.stCB.u32Lenght
	addls	r3, ip, r4	@ tmp160, u32ReadPos, D.2741
	rsbls	r4, r2, r4	@ tmp161, u32WritePos, D.2741
	rsbls	r3, r2, r3	@ u32FreeLen, u32WritePos, tmp160
	strls	r4, [r1, #24]	@ tmp161, <variable>.u32ContiguousFreeSize
	cmp	r0, r3	@ u32Gap, u32FreeLen
	str	r3, [r1, #28]	@ u32FreeLen, <variable>.u32TotalFreeSize
	movcs	r3, #0	@ tmp162,
	strcs	r3, [r1, #28]	@ tmp162, <variable>.u32TotalFreeSize
	strcs	r3, [r1, #24]	@ tmp162, <variable>.u32ContiguousFreeSize
	bcs	.L100	@,
	ldr	ip, [r1, #28]	@ <variable>.u32TotalFreeSize, <variable>.u32TotalFreeSize
	rsb	r3, r0, r3	@ u32FreeLen.351, u32Gap, u32FreeLen
	ldr	r2, [r1, #24]	@ <variable>.u32ContiguousFreeSize, <variable>.u32ContiguousFreeSize
	str	r3, [r1, #28]	@ u32FreeLen.351, <variable>.u32TotalFreeSize
	rsb	r2, r2, ip	@ tmp164, <variable>.u32ContiguousFreeSize, <variable>.u32TotalFreeSize
	cmp	r0, r2	@ u32Gap, tmp164
	strhi	r3, [r1, #24]	@ u32FreeLen.351, <variable>.u32ContiguousFreeSize
.L100:
	ldmfd	sp!, {r4}
	bx	lr
.L101:
	mov	r0, r1	@, pstBufInfo
	mov	r1, #36	@,
	ldmfd	sp!, {r4}
	b	__memzero	@
	.fnend
	.size	RBUF_QueryInfo, .-RBUF_QueryInfo
	.align	2
	.global	RBUF_Destroy
	.type	RBUF_Destroy, %function
RBUF_Destroy:
	.fnstart
.LFB20:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ hRBUF, hRBUF
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r3, [r4, #0]	@ <variable>.stAttr.bExtMem, <variable>.stAttr.bExtMem
	cmp	r3, #0	@ <variable>.stAttr.bExtMem,
	beq	.L106	@,
.L104:
	mov	r1, r4	@, hRBUF
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
.L106:
	mov	r0, #17	@,
	ldr	r1, [r4, #4]	@, <variable>.stAttr.uBufAddr
	bl	HI_ADSP_VFREE_Aligned	@
	b	.L104	@
	.fnend
	.size	RBUF_Destroy, .-RBUF_Destroy
	.align	2
	.global	RBUF_Create_EXT
	.type	RBUF_Create_EXT, %function
RBUF_Create_EXT:
	.fnstart
.LFB19:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r6, r0	@ phRBUF, phRBUF
	mov	r5, r1	@ pstAttr, pstAttr
	mov	r0, #17	@,
	mov	r1, #84	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ state,
	beq	.L108	@,
	mov	r1, #84	@,
	mov	r7, r4	@ state, state
	bl	__memzero	@
	mov	ip, r5	@ pstAttr, pstAttr
	ldmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ state,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ state,,,,
	ldr	r2, [ip, #0]	@ tmp143,* pstAttr
	str	r2, [r7, #0]	@ tmp143, <variable>.stAttr
	ldr	r3, [r5, #0]	@ <variable>.bExtMem, <variable>.bExtMem
	cmp	r3, #0	@ <variable>.bExtMem,
	beq	.L109	@,
	ldmib	r4, {r0, r3}	@ phole ldm
.L110:
	ldr	r1, [r4, #16]	@ D.2343, <variable>.stAttr.uBufRptr
	ldr	lr, [r4, #12]	@ <variable>.stAttr.uBufWptr, <variable>.stAttr.uBufWptr
	str	r0, [r4, #44]	@ prephitmp.394, <variable>.stCB.pu8Data
	str	r1, [r4, #40]	@ D.2343, <variable>.stCB.pu32Read
	str	lr, [r4, #36]	@ <variable>.stAttr.uBufWptr, <variable>.stCB.pu32Write
	str	r3, [r4, #48]	@ prephitmp.406, <variable>.stCB.u32Lenght
	str	r4, [r6, #0]	@ state,* phRBUF
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L109:
	mov	r0, #17	@,
	ldr	r1, [r5, #8]	@, <variable>.uBufSize
	ldr	r2, [r5, #24]	@, <variable>.uFrameSize
	bl	HI_ADSP_VMALLOC_Aligned	@
	cmp	r0, #0	@ rbfbase
	ldrne	r3, [r5, #8]	@ prephitmp.406, <variable>.uBufSize
	stmneib	r4, {r0, r3}	@ phole stm
	bne	.L110	@
.L108:
	mov	r1, r4	@, state
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	mov	r0, #17	@,
	mov	r1, #0	@,
	bl	HI_ADSP_FREE_Aligned	@
	mov	r3, #0	@ tmp148,
	str	r3, [r6, #0]	@ tmp148,* phRBUF
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	RBUF_Create_EXT, .-RBUF_Create_EXT
	.align	2
	.global	RBUF_Create
	.type	RBUF_Create, %function
RBUF_Create:
	.fnstart
.LFB18:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r6, r0	@ phRBUF, phRBUF
	mov	r5, r1	@ pstAttr, pstAttr
	mov	r0, #17	@,
	mov	r1, #84	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ state,
	beq	.L114	@,
	mov	r1, #84	@,
	mov	r7, r4	@ state, state
	bl	__memzero	@
	mov	ip, r5	@ pstAttr, pstAttr
	ldmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ state,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ state,,,,
	ldr	r2, [ip, #0]	@ tmp145,* pstAttr
	str	r2, [r7, #0]	@ tmp145, <variable>.stAttr
	ldr	r3, [r5, #0]	@ <variable>.bExtMem, <variable>.bExtMem
	cmp	r3, #0	@ <variable>.bExtMem,
	beq	.L115	@,
	ldmib	r4, {r0, r1}	@ phole ldm
.L116:
	ldr	r2, [r4, #16]	@ D.2309, <variable>.stAttr.uBufRptr
	mov	lr, #0	@ tmp149,
	ldr	r3, [r4, #12]	@ pu32Write.4, <variable>.stAttr.uBufWptr
	str	r1, [r4, #48]	@ prephitmp.438, <variable>.stCB.u32Lenght
	str	r2, [r4, #40]	@ D.2309, <variable>.stCB.pu32Read
	str	r0, [r4, #44]	@ prephitmp.426, <variable>.stCB.pu8Data
	str	r3, [r4, #36]	@ pu32Write.4, <variable>.stCB.pu32Write
	str	lr, [r3, #0]	@ tmp149,* pu32Write.4
	ldr	r1, [r4, #40]	@ D.2758, <variable>.stCB.pu32Read
	str	lr, [r1, #0]	@ tmp149,* D.2758
	str	r4, [r6, #0]	@ state,* phRBUF
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L115:
	mov	r0, #17	@,
	ldr	r1, [r5, #8]	@, <variable>.uBufSize
	ldr	r2, [r5, #24]	@, <variable>.uFrameSize
	bl	HI_ADSP_VMALLOC_Aligned	@
	cmp	r0, #0	@ rbfbase
	ldrne	r1, [r5, #8]	@ prephitmp.438, <variable>.uBufSize
	stmneib	r4, {r0, r1}	@ phole stm
	bne	.L116	@
.L114:
	mov	r1, r4	@, state
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	mov	r0, #17	@,
	mov	r1, #0	@,
	bl	HI_ADSP_FREE_Aligned	@
	mov	r0, #0	@ tmp151,
	str	r0, [r6, #0]	@ tmp151,* phRBUF
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	RBUF_Create, .-RBUF_Create
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
