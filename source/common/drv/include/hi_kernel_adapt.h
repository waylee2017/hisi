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
#include <linux/version.h>
#include <linux/interrupt.h>
#include <linux/irq.h>

#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
#include <linux/smp_lock.h>
#define HI_DECLARE_MUTEX(x) DECLARE_MUTEX(x)
#else
#define HI_DECLARE_MUTEX(x) DEFINE_SEMAPHORE(x)
#endif

#define HI_INIT_MUTEX(x)  sema_init(x, 1)

int osal_request_irq(unsigned int irq, irq_handler_t handler, unsigned long flags,const char *name, void *dev);
void osal_free_irq(unsigned int irq, const char *name, void *dev);
