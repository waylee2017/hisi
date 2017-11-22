#ifndef __DRV_GPIO_H__
#define __DRV_GPIO_H__

#include "hi_type.h"
#include "hi_drv_gpio.h"

#ifdef __cplusplus
#if __cplusplus
       extern "C"{
#endif
#endif

#define     HI_GPIO_IRQ_NO (9 + 32)

HI_S32 DRV_GPIO_QueryInt (GPIO_INT_S * pGpioIntValue);
HI_S32 DRV_GPIO_Open(struct inode *inode, struct file *filp);
HI_S32 DRV_GPIO_Close(struct inode *inode, struct file *filp);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif
