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

/******************************* Include Files *******************************/

/* Sys headers */
#include <linux/string.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>

/* Unf headers */

/* Drv headers */

/* Local headers */
#include "hi_osal.h"
#include "hi_debug.h"
#include "hi_kernel_adapt.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/


/***************************** Global Definition *****************************/


/***************************** Static Definition *****************************/


/*********************************** Code ************************************/

HI_CHAR* HI_OSAL_Strncpy(HI_CHAR *pszDest, const HI_CHAR *pszSrc, HI_SIZE_T ulLen)
{
    return strncpy(pszDest, pszSrc, ulLen);
}

HI_S32 HI_OSAL_Strncmp(const HI_CHAR *pszStr1, const HI_CHAR *pszStr2, HI_SIZE_T ulLen)
{
    return strncmp(pszStr1, pszStr2, ulLen);
}

HI_S32 HI_OSAL_Strncasecmp(const HI_CHAR *pszStr1, const HI_CHAR *pszStr2, HI_SIZE_T ulLen)
{
    return strncasecmp(pszStr1, pszStr2, ulLen);
}

HI_CHAR* HI_OSAL_Strncat(HI_CHAR *pszDest, const HI_CHAR *pszSrc, HI_SIZE_T ulLen)
{
    return strncat(pszDest, pszSrc, ulLen);
}

HI_S32 HI_OSAL_Snprintf(HI_CHAR *pszStr, HI_SIZE_T ulLen, const HI_CHAR *pszFormat, ...)
{
    HI_S32 s32Len;
    va_list stArgs = {0};

    va_start(stArgs, pszFormat);
    s32Len = vsnprintf(pszStr, ulLen, pszFormat, stArgs);
    va_end(stArgs);

    return s32Len;
}

HI_S32 HI_OSAL_Vsnprintf(HI_CHAR *pszStr, HI_SIZE_T ulLen, const HI_CHAR *pszFormat, HI_VA_LIST_S stVAList)
{
    return vsnprintf(pszStr, ulLen, pszFormat, stVAList);
}


extern int hi_get_irq_byname(char *name);

int osal_request_irq(unsigned int irq, irq_handler_t handler, unsigned long flags,const char *name, void *dev)
{
    int ret;
    int __irq = irq;
    unsigned long __flags = flags;

#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4, 4, 0))
    __irq = hi_get_irq_byname((char *)name);
    if(-1 == __irq)
    {
        HI_PRINT("hi_get_irq_byname:%s failed.\n", name);
        return -1;
    }
#endif

    ret = request_irq(__irq, handler, __flags, name, dev);
    if(ret)
    {
        HI_PRINT("request_irq failed,[name:%s, irq:%d, flag:%ld],ret:%d \n",name, irq, flags, ret);
    }
    return ret;
}

void osal_free_irq(unsigned int irq, const char *name, void *dev)
{
    int __irq = irq;

#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4, 4, 0))
    __irq = hi_get_irq_byname((char *)name);
#endif
    free_irq(__irq, dev);
}

EXPORT_SYMBOL(HI_OSAL_Strncpy);
EXPORT_SYMBOL(HI_OSAL_Strncmp);
EXPORT_SYMBOL(HI_OSAL_Strncasecmp);
EXPORT_SYMBOL(HI_OSAL_Strncat);
EXPORT_SYMBOL(HI_OSAL_Snprintf);
EXPORT_SYMBOL(HI_OSAL_Vsnprintf);

EXPORT_SYMBOL(osal_request_irq);
EXPORT_SYMBOL(osal_free_irq);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */

