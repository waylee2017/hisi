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
#ifndef _HIMEDIA_BASE_H_
#define _HIMEDIA_BASE_H_

#include "drv_dev_ext.h"

// bus
int  himedia_bus_init(void);
void himedia_bus_exit(void);

// device
int  himedia_device_register(PM_BASEDEV_S *pdev);
void himedia_device_unregister(PM_BASEDEV_S *pdev);
int  himedia_device_add(PM_BASEDEV_S *pdev);
void himedia_device_del(PM_BASEDEV_S *pdev);
void himedia_device_put(PM_BASEDEV_S *pdev);
PM_BASEDEV_S *himedia_device_alloc(const char *name, int id);

//driver
int  himedia_driver_register(PM_BASEDRV_S *drv);
void himedia_driver_unregister(PM_BASEDRV_S *drv);
void himedia_driver_release(PM_BASEDRV_S *drv);
PM_BASEDRV_S *himedia_driver_alloc(const char *name, struct module *owner, 
								PM_BASEOPS_S *ops);


#endif
