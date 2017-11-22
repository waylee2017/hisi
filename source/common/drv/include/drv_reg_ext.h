/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

#ifndef __DRV_REG_EXT_H__
#define __DRV_REG_EXT_H__

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */


/*************** !!! important !!! ***************/
/*
never write reg like this:

    Result = 0x300;
    HI_REG_WRITE32(SYS_PERI_CRG3_ADDR, Result); <-------wrong!

always write reg like this:

    HI_REG_READ32(SYS_PERI_CRG3_ADDR, Result);  <----read reg first.
    Result = Result | 0x300;                    <----change the bits you want to set.
    HI_REG_WRITE32(SYS_PERI_CRG3_ADDR, Result); <----write the value back to reg.
*/
#ifndef HI_REG_READ8
#define HI_REG_READ8(addr,result)  ((result) = *(volatile unsigned char *)(addr))
#endif

#ifndef HI_REG_READ16
#define HI_REG_READ16(addr,result)  ((result) = *(volatile unsigned short *)(addr))
#endif

#ifndef HI_REG_READ32
#define HI_REG_READ32(addr,result)  ((result) = *(volatile unsigned int *)(addr))
#endif

#ifndef HI_REG_WRITE8
#define HI_REG_WRITE8(addr,result)  (*(volatile unsigned char *)(addr) = (result))
#endif

#ifndef HI_REG_WRITE16
#define HI_REG_WRITE16(addr,result)  (*(volatile unsigned short *)(addr) = (result))
#endif

#ifndef HI_REG_WRITE32
#define HI_REG_WRITE32(addr,result)  (*(volatile unsigned int *)(addr) = (result))
#endif

#ifndef HI_REG_READ
#define HI_REG_READ HI_REG_READ32
#endif

#ifndef HI_REG_WRITE
#define HI_REG_WRITE HI_REG_WRITE32
#endif

/* to set reg in kernel space, you can also use the following macro: */
/*  
                                 startBit    
                                   |
bit31                              V                      bit0   
  |                 |<-- bitsNum ->|                       |
  |--------------------------------------------------------|
  |   xxxxx         |  bits to set |            xxxx       |
  |--------------------------------------------------------|

only use in kernel space:

for example:

HI_REG_WriteBits(0x101e0010, 0x400, 0x00000400):
		set reg 0x101e0010 bit10( total 1bit) to 0x1,

HI_REG_WriteBits(0x101e0010, 0x10000, 0x00078000):
		set reg 0x101e0010 bit15~bit18( total 4bit) to 0x2,

HI_REG_ReadBits(0x101e0010, 0xffffffff):
		read reg 0x101e0010 bit0~bit31(total 32bits),

HI_REG_ReadBits(0x101e0010, 0x00078000):
		read reg 0x101e0010 bit15~bit18( total 4bit ),

*/
#ifdef __KERNEL__

#include <linux/kernel.h>
#include <asm/io.h>
#include <linux/interrupt.h>


#define HI_REG_WriteBits(phyAddr, value, mask) do{ unsigned long __irqs; \
            HI_U32 __reg; \
            local_irq_save(__irqs); \
            HI_REG_READ(IO_ADDRESS(phyAddr), __reg); \
            __reg = (__reg & ~(mask)) | ((value) & (mask)); \
            HI_REG_WRITE(IO_ADDRESS(phyAddr), __reg); \
            local_irq_restore(__irqs); \
        }while(0)

#define HI_REG_ReadBits(phyAddr, mask) ({ HI_U32 __value;\
            unsigned long __irqs; \
            HI_U32 __reg; \
            local_irq_save(__irqs); \
            HI_REG_READ(IO_ADDRESS(phyAddr), __reg); \
            __value = (__reg) & (mask);\
            local_irq_restore(__irqs); \
            __value;\
        })
        
#else 

/* !!!!! in user space, if you want to read/write,
use API: HI_SYS_WriteRegister/HI_SYS_ReadRegister.
*/

#endif


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_REG_H__ */

