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
#include <string.h>

/* Unf headers */

/* Drv headers */
#include "hi_osal.h"

/* Local headers */

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


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */


