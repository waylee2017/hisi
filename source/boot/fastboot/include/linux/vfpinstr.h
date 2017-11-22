#ifndef __VFPINSTR_H__
#define __VFPINSTR_H__


#define FPEXC			cr8
#define FPEXC_EN		(1 << 30)


#define vfpreg(_vfp_) #_vfp_

#define fmrx(_vfp_) ({			\
	unsigned int __v;			\
	asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx	%0, " #_vfp_	\
	    : "=r" (__v) : : "cc");	\
	__v;				\
 })

#define fmxr(_vfp_,_var_)		\
	asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr	" #_vfp_ ", %0"	\
	   : : "r" (_var_) : "cc")

#endif /* #define __VFPINSTR_H__ */