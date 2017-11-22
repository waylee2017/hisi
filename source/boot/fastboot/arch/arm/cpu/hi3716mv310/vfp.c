#include <linux/vfpinstr.h>

void enable_vfp(void)
{
	unsigned int fpexc = fmrx(FPEXC);

	__asm__ __volatile__(
		"mrc p15, 0, %0, c1, c0, 2 @ read control reg\n"
		: "=r" (fpexc) 
		:
		: "memory");
	fpexc |= (0xf << 20);

	fpexc &= ~(3 << 30);

	__asm__ __volatile__(
		"mcr p15, 0, %0, c1, c0, 2 @ write it back\n"
		:
		: "r" (fpexc)
		: "memory");
	__asm__ __volatile__("ISB");

	fmxr(FPEXC, fpexc | FPEXC_EN);

	__asm__ __volatile__("ISB");
}

void disable_vfp(void)
{
	fmxr(FPEXC, 0);

	__asm__ __volatile__("ISB");
}