/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : drv_gpio_ioctl.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/07/07
  Description   :
  History       :
  1.Date        : 2010/07/07
    Author      : j40671
    Modification: Created file

******************************************************************************/

#ifndef __DRV_GPIO_IOCTL_H__
#define __DRV_GPIO_IOCTL_H__

#include "hi_drv_gpio.h"

/* Ioctl definitions */
#define CMD_GPIO_SET_INT_TYPE _IOW(HI_ID_GPIO, 0x1, HI_U32)        /*set interruput condition*/
#define CMD_GPIO_SET_INT_ENABLE _IOW(HI_ID_GPIO, 0x2, HI_U32)   /*set interruput enable or disable*/
#define CMD_GPIO_GET_INT _IOR(HI_ID_GPIO, 0x3, HI_U32)   /*get interruput occur*/
#define CMD_GPIO_GET_GPIONUM _IOR(HI_ID_GPIO, 0x4, HI_U32)   /*get gpio max number and group number*/

#endif /* End of #ifndef __HI_DRV_GPIO_H__*/
