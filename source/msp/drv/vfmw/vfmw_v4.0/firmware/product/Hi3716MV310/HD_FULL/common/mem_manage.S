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
	.file	"mem_manage.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(mem_manage)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.mem_manage.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/mem_manage.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/mem_manage.o
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
	.global	MEM_ManagerWithOperation
	.type	MEM_ManagerWithOperation, %function
MEM_ManagerWithOperation:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #8]	@ <variable>.mem_malloc, <variable>.mem_malloc
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	str	r1, [r3, #0]	@ <variable>.mem_malloc, mem_malloc
	ldr	r2, [r0, #12]	@ <variable>.mem_free, <variable>.mem_free
	str	r2, [r3, #4]	@ <variable>.mem_free, mem_free
	bx	lr	@
	.fnend
	.size	MEM_ManagerWithOperation, .-MEM_ManagerWithOperation
	.align	2
	.global	MEM_ManagerClearOperation
	.type	MEM_ManagerClearOperation, %function
MEM_ManagerClearOperation:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r2, #0	@ tmp134,
	str	r2, [r3, #4]	@ tmp134, mem_free
	str	r2, [r3, #0]	@ tmp134, mem_malloc
	bx	lr	@
	.fnend
	.size	MEM_ManagerClearOperation, .-MEM_ManagerClearOperation
	.align	2
	.global	MEM_Phy2Vir
	.type	MEM_Phy2Vir, %function
MEM_Phy2Vir:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp184,
	movt	r2, #:upper16:.LANCHOR0	@ tmp184,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	add	r3, r2, #8	@ ivtmp.524, tmp184,
	mov	r1, #0	@ i,
	b	.L8	@
.L6:
	ldr	r4, [ip, #12]	@ D.28901, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r4, #0	@ D.28901,
	mov	r5, r1	@ tmp185, i
	beq	.L11	@,
	ldr	r3, [ip, #8]	@ D.28904, <variable>.PhyAddr
	cmp	r3, r0	@ D.28904, PhyAddr
	add	r4, r3, r4	@ tmp189, D.28904, D.28901
	bgt	.L11	@,
	cmp	r0, r4	@ PhyAddr, tmp189
	blt	.L14	@,
.L11:
	add	r1, r5, #1	@ i, tmp185,
	add	r3, ip, #16	@ ivtmp.524, tmp186,
	cmp	r1, #128	@ i,
	beq	.L17	@,
.L8:
	ldr	r4, [r3, #12]	@ D.28901, <variable>.Length
	add	ip, r3, #16	@ tmp186, ivtmp.524,
	cmp	r4, #0	@ D.28901,
	beq	.L6	@,
	ldr	r3, [r3, #8]	@ D.28904, <variable>.PhyAddr
	cmp	r3, r0	@ D.28904, PhyAddr
	add	r4, r3, r4	@ tmp175, D.28904, D.28901
	bgt	.L6	@,
	cmp	r0, r4	@ PhyAddr, tmp175
	bge	.L6	@,
.L14:
	add	ip, r2, r1, asl #4	@, tmp179, tmp184, i,
	rsb	r0, r3, r0	@ tmp181, D.28904, PhyAddr
	ldr	r2, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r0, r2	@ VirAddr, tmp181, <variable>.VirAddr
.L7:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L17:
	mov	r0, #0	@ VirAddr,
	b	.L7	@
	.fnend
	.size	MEM_Phy2Vir, .-MEM_Phy2Vir
	.align	2
	.global	MEM_Vir2Phy
	.type	MEM_Vir2Phy, %function
MEM_Vir2Phy:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp153,
	movt	r2, #:upper16:.LANCHOR0	@ tmp153,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	add	r3, r2, #20	@ ivtmp.555, tmp153,
	mov	r1, #0	@ i,
	b	.L21	@
.L19:
	ldr	r3, [r3, #16]	@ D.28924, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r3, #0	@ D.28924,
	mov	r4, r1	@ tmp154, i
	beq	.L24	@,
	ldr	ip, [r5, #-8]	@ D.28927, <variable>.VirAddr
	cmp	ip, r0	@ D.28927, VirAddr
	add	r3, ip, r3	@ tmp158, D.28927, D.28924
	bhi	.L24	@,
	cmp	r0, r3	@ VirAddr, tmp158
	bcc	.L27	@,
.L24:
	add	r1, r4, #1	@ i, tmp154,
	add	r3, r5, #16	@ ivtmp.555, tmp155,
	cmp	r1, #128	@ i,
	beq	.L29	@,
.L21:
	ldr	r4, [r3, #0]	@ D.28924, <variable>.Length
	add	r5, r3, #16	@ tmp155, ivtmp.555,
	cmp	r4, #0	@ D.28924,
	beq	.L19	@,
	ldr	ip, [r3, #-8]	@ D.28927, <variable>.VirAddr
	cmp	ip, r0	@ D.28927, VirAddr
	add	r4, ip, r4	@ tmp142, D.28927, D.28924
	bhi	.L19	@,
	cmp	r0, r4	@ VirAddr, tmp142
	bcs	.L19	@,
.L27:
	add	r2, r2, r1, asl #4	@, tmp147, tmp153, i,
	ldr	r3, [r2, #16]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r0, r0, r3	@ tmp150, VirAddr, <variable>.PhyAddr
	rsb	r0, ip, r0	@ PhyAddr, D.28927, tmp150
.L20:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L29:
	mov	r0, #0	@ PhyAddr,
	b	.L20	@
	.fnend
	.size	MEM_Vir2Phy, .-MEM_Vir2Phy
	.align	2
	.global	MEM_WritePhyWord
	.type	MEM_WritePhyWord, %function
MEM_WritePhyWord:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp149,
	movt	r2, #:upper16:.LANCHOR0	@ tmp149,
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	add	r3, r2, #8	@ ivtmp.590, tmp149,
	mov	ip, #0	@ i,
	b	.L34	@
.L31:
	ldr	r5, [r4, #12]	@ D.29134, <variable>.Length
	add	ip, ip, #1	@ i, i,
	cmp	r5, #0	@ D.29134,
	mov	r6, ip	@ tmp151, i
	beq	.L37	@,
	ldr	r3, [r4, #8]	@ D.29133, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.29133
	add	r5, r3, r5	@ tmp155, D.29133, D.29134
	blt	.L37	@,
	cmp	r0, r5	@ PhyAddr, tmp155
	blt	.L40	@,
.L37:
	add	ip, r6, #1	@ i, tmp151,
	add	r3, r4, #16	@ ivtmp.590, tmp152,
	cmp	ip, #128	@ i,
	beq	.L35	@,
.L34:
	ldr	r5, [r3, #12]	@ D.29134, <variable>.Length
	add	r4, r3, #16	@ tmp152, ivtmp.590,
	cmp	r5, #0	@ D.29134,
	beq	.L31	@,
	ldr	r3, [r3, #8]	@ D.29133, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.29133
	add	r5, r3, r5	@ tmp141, D.29133, D.29134
	blt	.L31	@,
	cmp	r0, r5	@ PhyAddr, tmp141
	bge	.L31	@,
.L40:
	add	r2, r2, ip, asl #4	@, tmp145, tmp149, i,
	rsb	r3, r3, r0	@ tmp147, D.29133, PhyAddr
	ldr	r2, [r2, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r3, r2	@ pDst, tmp147, <variable>.VirAddr
	cmp	r0, #0	@ pDst,
	strne	r1, [r3, r2]	@ Data32,* <variable>.VirAddr
.L35:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	MEM_WritePhyWord, .-MEM_WritePhyWord
	.align	2
	.global	MEM_ReadPhyWord
	.type	MEM_ReadPhyWord, %function
MEM_ReadPhyWord:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp152,
	movt	r2, #:upper16:.LANCHOR0	@ tmp152,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	add	r3, r2, #8	@ ivtmp.623, tmp152,
	mov	r1, #0	@ i,
	b	.L45	@
.L42:
	ldr	r4, [ip, #12]	@ D.29145, <variable>.Length
	add	r1, r1, #1	@ i, i,
	cmp	r4, #0	@ D.29145,
	mov	r5, r1	@ tmp153, i
	beq	.L49	@,
	ldr	r3, [ip, #8]	@ D.29144, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.29144
	add	r4, r3, r4	@ tmp157, D.29144, D.29145
	blt	.L49	@,
	cmp	r0, r4	@ PhyAddr, tmp157
	blt	.L52	@,
.L49:
	add	r1, r5, #1	@ i, tmp153,
	add	r3, ip, #16	@ ivtmp.623, tmp154,
	cmp	r1, #128	@ i,
	beq	.L44	@,
.L45:
	ldr	r4, [r3, #12]	@ D.29145, <variable>.Length
	add	ip, r3, #16	@ tmp154, ivtmp.623,
	cmp	r4, #0	@ D.29145,
	beq	.L42	@,
	ldr	r3, [r3, #8]	@ D.29144, <variable>.PhyAddr
	cmp	r0, r3	@ PhyAddr, D.29144
	add	r4, r3, r4	@ tmp143, D.29144, D.29145
	blt	.L42	@,
	cmp	r0, r4	@ PhyAddr, tmp143
	bge	.L42	@,
.L52:
	add	ip, r2, r1, asl #4	@, tmp147, tmp152, i,
	rsb	r3, r3, r0	@ tmp149, D.29144, PhyAddr
	ldr	r2, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r1, r3, r2	@ pDst, tmp149, <variable>.VirAddr
	cmp	r1, #0	@ pDst,
	ldrne	r0, [r3, r2]	@ Data32,* <variable>.VirAddr
	beq	.L44	@,
.L46:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L44:
	mov	r0, #0	@ Data32,
	b	.L46	@
	.fnend
	.size	MEM_ReadPhyWord, .-MEM_ReadPhyWord
	.align	2
	.global	MEM_ReleaseMemBlock
	.type	MEM_ReleaseMemBlock, %function
MEM_ReleaseMemBlock:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ PhyAddr,
	cmpne	r1, #0	@, VirAddr,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ VirAddr, VirAddr
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ PhyAddr, PhyAddr
	bne	.L64	@,
.L58:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L64:
	mov	r0, sp	@,
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	r2, .L65	@ ivtmp.655,
	mov	r6, sp	@ tmp150,
	str	r5, [sp, #4]	@ VirAddr, FreeMem.VirAddr
	add	r0, r2, #2048	@ D.29401, ivtmp.655,
	str	r4, [sp, #0]	@ PhyAddr, FreeMem.PhyAddr
	b	.L57	@
.L55:
	ldr	r3, [r1, #12]	@ D.29090, <variable>.Length
	cmp	r3, #0	@ D.29090,
	beq	.L60	@,
	ldr	lr, [r1, #8]	@ D.29093, <variable>.PhyAddr
	cmp	r4, lr	@ PhyAddr, D.29093
	add	ip, lr, r3	@ tmp154, D.29093, D.29090
	blt	.L60	@,
	cmp	r4, ip	@ PhyAddr, tmp154
	blt	.L63	@,
.L60:
	add	r2, r1, #16	@ ivtmp.655, tmp151,
	cmp	r2, r0	@ ivtmp.655, D.29401
	beq	.L56	@,
.L57:
	ldr	r3, [r2, #12]	@ D.29090, <variable>.Length
	add	r1, r2, #16	@ tmp151, ivtmp.655,
	cmp	r3, #0	@ D.29090,
	beq	.L55	@,
	ldr	r2, [r2, #8]	@ D.29093, <variable>.PhyAddr
	cmp	r4, r2	@ PhyAddr, D.29093
	add	ip, r2, r3	@ tmp148, D.29093, D.29090
	blt	.L55	@,
	cmp	r4, ip	@ PhyAddr, tmp148
	bge	.L55	@,
.L63:
	str	r3, [sp, #8]	@ D.29090, FreeMem.Length
.L56:
	mov	r0, sp	@,
	bl	KernelMemFree	@
	b	.L58	@
.L66:
	.align	2
.L65:
	.word	.LANCHOR0+8
	.fnend
	.size	MEM_ReleaseMemBlock, .-MEM_ReleaseMemBlock
	.align	2
	.global	MEM_UnmapRegisterAddr
	.type	MEM_UnmapRegisterAddr, %function
MEM_UnmapRegisterAddr:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ PhyAddr,
	cmpne	r1, #0	@, VirAddr,
	bxeq	lr	@
	mov	r0, r1	@, VirAddr
	b	KernelRegisterUnMap	@
	.fnend
	.size	MEM_UnmapRegisterAddr, .-MEM_UnmapRegisterAddr
	.align	2
	.global	MEM_MapRegisterAddr
	.type	MEM_MapRegisterAddr, %function
MEM_MapRegisterAddr:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ RegStartPhyAddr,
	cmpne	r2, #0	@, pMemRecord,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ RegStartPhyAddr, RegStartPhyAddr
	.pad #8
	sub	sp, sp, #8	@,,
	movne	r5, #0	@, tmp145
	moveq	r5, #1	@, tmp145
	mov	r6, r1	@ RegByteLen, RegByteLen
	bne	.L74	@,
.L71:
	mvn	r0, #0	@ D.29046,
.L72:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L74:
	mov	r0, r2	@, pMemRecord
	mov	r1, #16	@,
	str	r2, [sp, #4]	@,
	bl	__memzero	@
	mov	r0, r4	@, RegStartPhyAddr
	bl	KernelRegisterMap	@
	ldr	r2, [sp, #4]	@,
	subs	r3, r0, #0	@ ptr,
	beq	.L71	@,
	str	r6, [r2, #12]	@ RegByteLen, <variable>.Length
	mov	r0, r5	@ D.29046, tmp145
	stmib	r2, {r3, r4}	@ phole stm
	b	.L72	@
	.fnend
	.size	MEM_MapRegisterAddr, .-MEM_MapRegisterAddr
	.align	2
	.global	MEM_AllocMemBlock
	.type	MEM_AllocMemBlock, %function
MEM_AllocMemBlock:
	.fnstart
.LFB1605:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0	@ ExpectedLen,
	cmpne	r3, #0	@, pMemRecord,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r3	@ pMemRecord, pMemRecord
	.pad #32
	sub	sp, sp, #32	@,,
	movne	r5, #0	@, tmp148
	moveq	r5, #1	@, tmp148
	mov	r6, r0	@ MemName, MemName
	bne	.L79	@,
.L76:
	mvn	r0, #0	@ D.29015,
.L77:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L79:
	mov	r0, r3	@, pMemRecord
	mov	r1, #16	@,
	str	r2, [sp, #12]	@,
	bl	__memzero	@
	ldr	r2, [sp, #12]	@,
	mov	r0, r6	@, MemName
	ldr	r3, [sp, #48]	@, IsCached
	add	ip, sp, #16	@ tmp149,,
	str	ip, [sp, #0]	@ tmp149,
	mov	r1, r2	@, ExpectedLen
	mov	r2, #4	@,
	bl	KernelMemMalloc	@
	ldr	r3, [sp, #20]	@ D.29024, AllocMem.VirAddr
	cmp	r3, #0	@ D.29024,
	beq	.L76	@,
	ldr	r2, [sp, #16]	@ ExpectedPhyAddr, AllocMem.PhyAddr
	ldr	r1, [sp, #24]	@ ExpectedLen.727, AllocMem.Length
	cmp	r2, #0	@ ExpectedPhyAddr,
	beq	.L76	@,
	str	r1, [r4, #12]	@ ExpectedLen.727, <variable>.Length
	mov	r0, r5	@ D.29015, tmp148
	str	r2, [r4, #8]	@ ExpectedPhyAddr, <variable>.PhyAddr
	str	r3, [r4, #4]	@ D.29024, <variable>.VirAddr
	b	.L77	@
	.fnend
	.size	MEM_AllocMemBlock, .-MEM_AllocMemBlock
	.align	2
	.global	MEM_CopyVir2Phy
	.type	MEM_CopyVir2Phy, %function
MEM_CopyVir2Phy:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp161,
	movt	ip, #:upper16:.LANCHOR0	@ tmp161,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	add	r3, ip, #8	@ ivtmp.759, tmp161,
	mov	r4, #0	@ i,
	b	.L84	@
.L81:
	ldr	r6, [r5, #12]	@ D.29156, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r6, #0	@ D.29156,
	mov	r7, r4	@ tmp162, i
	beq	.L87	@,
	ldr	r3, [r5, #8]	@ D.29155, <variable>.PhyAddr
	cmp	r0, r3	@ DstPhyAddr, D.29155
	add	r6, r3, r6	@ tmp166, D.29155, D.29156
	blt	.L87	@,
	cmp	r0, r6	@ DstPhyAddr, tmp166
	blt	.L90	@,
.L87:
	add	r4, r7, #1	@ i, tmp162,
	add	r3, r5, #16	@ ivtmp.759, tmp163,
	cmp	r4, #128	@ i,
	beq	.L85	@,
.L84:
	ldr	r6, [r3, #12]	@ D.29156, <variable>.Length
	add	r5, r3, #16	@ tmp163, ivtmp.759,
	cmp	r6, #0	@ D.29156,
	beq	.L81	@,
	ldr	r3, [r3, #8]	@ D.29155, <variable>.PhyAddr
	cmp	r0, r3	@ DstPhyAddr, D.29155
	add	r6, r3, r6	@ tmp142, D.29155, D.29156
	blt	.L81	@,
	cmp	r0, r6	@ DstPhyAddr, tmp142
	bge	.L81	@,
.L90:
	add	ip, ip, r4, asl #4	@, tmp146, tmp161, i,
	rsb	r3, r3, r0	@ tmp148, D.29155, DstPhyAddr
	ldr	ip, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r0, r3, ip	@ pDst, tmp148, <variable>.VirAddr
	moveq	r4, #0	@, tmp151
	movne	r4, #1	@, tmp151
	cmp	r1, #0	@ SrcVirAddr,
	moveq	r4, #0	@, tmp156
	andne	r4, r4, #1	@,, tmp156, tmp151
	cmp	r4, #0	@ tmp156,
	beq	.L85	@,
	ldmfd	sp!, {r4, r5, r6, r7}
	b	memcpy	@
.L85:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
	.fnend
	.size	MEM_CopyVir2Phy, .-MEM_CopyVir2Phy
	.align	2
	.global	MEM_CopyPhy2Vir
	.type	MEM_CopyPhy2Vir, %function
MEM_CopyPhy2Vir:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp161,
	movt	ip, #:upper16:.LANCHOR0	@ tmp161,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	add	r3, ip, #8	@ ivtmp.792, tmp161,
	mov	r4, #0	@ i,
	b	.L95	@
.L92:
	ldr	r6, [r5, #12]	@ D.29167, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r6, #0	@ D.29167,
	mov	r7, r4	@ tmp162, i
	beq	.L98	@,
	ldr	r3, [r5, #8]	@ D.29166, <variable>.PhyAddr
	cmp	r1, r3	@ SrcPhyAddr, D.29166
	add	r6, r3, r6	@ tmp166, D.29166, D.29167
	blt	.L98	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp166
	blt	.L101	@,
.L98:
	add	r4, r7, #1	@ i, tmp162,
	add	r3, r5, #16	@ ivtmp.792, tmp163,
	cmp	r4, #128	@ i,
	beq	.L96	@,
.L95:
	ldr	r6, [r3, #12]	@ D.29167, <variable>.Length
	add	r5, r3, #16	@ tmp163, ivtmp.792,
	cmp	r6, #0	@ D.29167,
	beq	.L92	@,
	ldr	r3, [r3, #8]	@ D.29166, <variable>.PhyAddr
	cmp	r1, r3	@ SrcPhyAddr, D.29166
	add	r6, r3, r6	@ tmp142, D.29166, D.29167
	blt	.L92	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp142
	bge	.L92	@,
.L101:
	add	ip, ip, r4, asl #4	@, tmp146, tmp161, i,
	rsb	r1, r3, r1	@ tmp148, D.29166, SrcPhyAddr
	ldr	ip, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r1, r1, ip	@ pSrc, tmp148, <variable>.VirAddr
	moveq	r3, #0	@, tmp151
	movne	r3, #1	@, tmp151
	cmp	r0, #0	@ DstVirAddr,
	moveq	r3, #0	@, tmp156
	andne	r3, r3, #1	@,, tmp156, tmp151
	cmp	r3, #0	@ tmp156,
	beq	.L96	@,
	ldmfd	sp!, {r4, r5, r6, r7}
	b	memcpy	@
.L96:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
	.fnend
	.size	MEM_CopyPhy2Vir, .-MEM_CopyPhy2Vir
	.align	2
	.global	MEM_CopyPhy2Phy
	.type	MEM_CopyPhy2Phy, %function
MEM_CopyPhy2Phy:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp174,
	movt	ip, #:upper16:.LANCHOR0	@ tmp174,
	add	r3, ip, #8	@ ivtmp.837, tmp174,
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	mov	r5, r3	@ ivtmp.835, ivtmp.837
	mov	r4, #0	@ i,
	b	.L105	@
.L103:
	ldr	r7, [r6, #12]	@ D.29178, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r7, #0	@ D.29178,
	mov	r8, r4	@ tmp177, i
	beq	.L115	@,
	ldr	r5, [r6, #8]	@ D.29177, <variable>.PhyAddr
	cmp	r0, r5	@ DstPhyAddr, D.29177
	add	r7, r5, r7	@ tmp184, D.29177, D.29178
	blt	.L115	@,
	cmp	r0, r7	@ DstPhyAddr, tmp184
	blt	.L120	@,
.L115:
	add	r4, r8, #1	@ i, tmp177,
	add	r5, r6, #16	@ ivtmp.835, tmp178,
	cmp	r4, #128	@ i,
	beq	.L122	@,
.L105:
	ldr	r7, [r5, #12]	@ D.29178, <variable>.Length
	add	r6, r5, #16	@ tmp178, ivtmp.835,
	cmp	r7, #0	@ D.29178,
	beq	.L103	@,
	ldr	r5, [r5, #8]	@ D.29177, <variable>.PhyAddr
	cmp	r0, r5	@ DstPhyAddr, D.29177
	add	r7, r5, r7	@ tmp147, D.29177, D.29178
	blt	.L103	@,
	cmp	r0, r7	@ DstPhyAddr, tmp147
	bge	.L103	@,
.L120:
	add	r6, ip, r4, asl #4	@, tmp151, tmp174, i,
	rsb	r0, r5, r0	@ tmp153, D.29177, DstPhyAddr
	ldr	r4, [r6, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r0, r0, r4	@ pDst, tmp153, <variable>.VirAddr
.L104:
	mov	r4, #0	@ i,
	b	.L109	@
.L106:
	ldr	r6, [r5, #12]	@ D.29189, <variable>.Length
	add	r4, r4, #1	@ i, i,
	cmp	r6, #0	@ D.29189,
	mov	r7, r4	@ tmp175, i
	beq	.L113	@,
	ldr	r3, [r5, #8]	@ D.29188, <variable>.PhyAddr
	cmp	r1, r3	@ SrcPhyAddr, D.29188
	add	r6, r3, r6	@ tmp183, D.29188, D.29189
	blt	.L113	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp183
	blt	.L119	@,
.L113:
	add	r4, r7, #1	@ i, tmp175,
	add	r3, r5, #16	@ ivtmp.837, tmp176,
	cmp	r4, #128	@ i,
	beq	.L110	@,
.L109:
	ldr	r6, [r3, #12]	@ D.29189, <variable>.Length
	add	r5, r3, #16	@ tmp176, ivtmp.837,
	cmp	r6, #0	@ D.29189,
	beq	.L106	@,
	ldr	r3, [r3, #8]	@ D.29188, <variable>.PhyAddr
	cmp	r1, r3	@ SrcPhyAddr, D.29188
	add	r6, r3, r6	@ tmp155, D.29188, D.29189
	blt	.L106	@,
	cmp	r1, r6	@ SrcPhyAddr, tmp155
	bge	.L106	@,
.L119:
	add	ip, ip, r4, asl #4	@, tmp159, tmp174, i,
	rsb	r1, r3, r1	@ tmp161, D.29188, SrcPhyAddr
	ldr	ip, [ip, #12]	@ <variable>.VirAddr, <variable>.VirAddr
	adds	r1, r1, ip	@ pSrc, tmp161, <variable>.VirAddr
	moveq	r3, #0	@, tmp164
	movne	r3, #1	@, tmp164
	cmp	r0, #0	@ pDst,
	moveq	r3, #0	@, tmp169
	andne	r3, r3, #1	@,, tmp169, tmp164
	cmp	r3, #0	@ tmp169,
	beq	.L110	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	memcpy	@
.L110:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L122:
	mov	r0, #0	@ pDst,
	b	.L104	@
	.fnend
	.size	MEM_CopyPhy2Phy, .-MEM_CopyPhy2Phy
	.align	2
	.global	MEM_DelMemRecord
	.type	MEM_DelMemRecord, %function
MEM_DelMemRecord:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp176,
	movt	r5, #:upper16:.LANCHOR0	@ tmp176,
	mov	r4, r0	@ PhyAddr, PhyAddr
	add	r0, r5, #2048	@, tmp176,
	mov	r7, r2	@ Length, Length
	add	r0, r0, #8	@,,
	mov	r6, r1	@ VirAddr, VirAddr
	bl	OSAL_SpinLockIRQ	@
	add	r3, r5, #8	@ ivtmp.868, tmp176,
	mov	r2, #0	@ i,
	b	.L126	@
.L124:
	ldr	r3, [r1, #12]	@ D.28879, <variable>.Length
	add	r2, r2, #1	@ i, i,
	cmp	r3, #0	@ D.28879,
	mov	r0, r2	@ tmp179, i
	beq	.L129	@,
	ldr	lr, [r1, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, r4	@ <variable>.PhyAddr, PhyAddr
	beq	.L134	@,
.L129:
	add	r2, r0, #1	@ i, tmp179,
	add	r3, r1, #16	@ ivtmp.868, tmp180,
	cmp	r2, #128	@ i,
	beq	.L135	@,
.L126:
	ldr	r0, [r3, #12]	@ D.28879, <variable>.Length
	add	r1, r3, #16	@ tmp180, ivtmp.868,
	cmp	r0, #0	@ D.28879,
	beq	.L124	@,
	ldr	ip, [r3, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r4	@ <variable>.PhyAddr, PhyAddr
	bne	.L124	@,
	ldr	r3, [r3, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, r6	@ <variable>.VirAddr, VirAddr
	bne	.L124	@,
	cmp	r0, r7	@ D.28879, Length
	bne	.L124	@,
.L132:
	add	r4, r5, r2, asl #4	@, tmp151, tmp176, i,
	ldr	r0, .L136	@,
	add	r1, r4, #8	@ tmp152, tmp151,
	mov	r5, r4	@ tmp166, tmp151
	mov	r4, #0	@ tmp154,
	str	r4, [r1, #8]	@ tmp154, <variable>.PhyAddr
	str	r4, [r5, #12]	@ tmp154, <variable>.VirAddr
	str	r4, [r1, #12]	@ tmp154, <variable>.Length
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.28890, tmp154
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L134:
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, r6	@ <variable>.VirAddr, VirAddr
	bne	.L129	@,
	cmp	r3, r7	@ D.28879, Length
	beq	.L132	@,
	add	r2, r0, #1	@ i, tmp179,
	add	r3, r1, #16	@ ivtmp.868, tmp180,
	cmp	r2, #128	@ i,
	bne	.L126	@,
.L135:
	ldr	r0, .L136	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.28890,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L137:
	.align	2
.L136:
	.word	.LANCHOR0+2056
	.fnend
	.size	MEM_DelMemRecord, .-MEM_DelMemRecord
	.align	2
	.global	MEM_AddMemRecord
	.type	MEM_AddMemRecord, %function
MEM_AddMemRecord:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp172,
	movt	r4, #:upper16:.LANCHOR0	@ tmp172,
	mov	r5, r0	@ PhyAddr, PhyAddr
	add	r0, r4, #2048	@, tmp172,
	mov	r8, r2	@ Length, Length
	add	r0, r0, #8	@,,
	mov	r6, r1	@ VirAddr, VirAddr
	bl	OSAL_SpinLockIRQ	@
	add	r3, r4, #8	@ ivtmp.902, tmp172,
	mov	r2, #0	@ i,
	b	.L140	@
.L149:
	ldr	r7, [r1, #12]	@ <variable>.Length, <variable>.Length
	add	r2, r2, #1	@ i, i,
	cmp	r7, #0	@ <variable>.Length,
	beq	.L139	@,
	add	r2, r2, #1	@ i, i,
	cmp	r2, #128	@ i,
	beq	.L148	@,
.L140:
	ldr	r7, [r3, #12]	@ <variable>.Length, <variable>.Length
	add	r1, r3, #16	@ tmp175, ivtmp.902,
	add	r3, r1, #16	@ ivtmp.902, tmp175,
	cmp	r7, #0	@ <variable>.Length,
	bne	.L149	@,
.L139:
	add	r1, r4, r2, asl #4	@, tmp149, tmp172, i,
	ldr	r0, .L150	@,
	add	r3, r1, #8	@ tmp150, tmp149,
	str	r6, [r1, #12]	@ VirAddr, <variable>.VirAddr
	mov	r4, r1	@ tmp155, tmp149
	str	r8, [r3, #12]	@ Length, <variable>.Length
	str	r5, [r3, #8]	@ PhyAddr, <variable>.PhyAddr
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r7	@ D.28867, <variable>.Length
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L148:
	ldr	r0, .L150	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.28867,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L151:
	.align	2
.L150:
	.word	.LANCHOR0+2056
	.fnend
	.size	MEM_AddMemRecord, .-MEM_AddMemRecord
	.align	2
	.global	MEM_InitMemManager
	.type	MEM_InitMemManager, %function
MEM_InitMemManager:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp135,
	movt	r5, #:upper16:.LANCHOR0	@ tmp135,
	add	r4, r5, #2048	@ tmp136, tmp135,
	add	r4, r4, #8	@ tmp136, tmp136,
	mov	r0, r4	@, tmp136
	bl	OSAL_SpinLockIRQ	@
	add	r0, r5, #8	@, tmp135,
	mov	r1, #2048	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp136
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	OSAL_SpinUnLockIRQ	@
	.fnend
	.size	MEM_InitMemManager, .-MEM_InitMemManager
	.global	g_RecordLock
	.global	s_MemRecord
	.global	mem_malloc
	.global	mem_free
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
	.type	mem_malloc, %object
	.size	mem_malloc, 4
mem_malloc:
	.space	4
	.type	mem_free, %object
	.size	mem_free, 4
mem_free:
	.space	4
	.type	s_MemRecord, %object
	.size	s_MemRecord, 2048
s_MemRecord:
	.space	2048
	.type	g_RecordLock, %object
	.size	g_RecordLock, 8
g_RecordLock:
	.space	8
	.section	___ksymtab+MEM_AllocMemBlock,"a",%progbits
	.align	2
	.type	__ksymtab_MEM_AllocMemBlock, %object
	.size	__ksymtab_MEM_AllocMemBlock, 8
__ksymtab_MEM_AllocMemBlock:
@ value:
	.word	MEM_AllocMemBlock
@ name:
	.word	__kstrtab_MEM_AllocMemBlock
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
