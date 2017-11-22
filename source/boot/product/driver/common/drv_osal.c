#include "hi_boot_common.h"
#include "exports.h"
#include "hi_type.h"

HI_CHAR* HI_OSAL_Strncpy(HI_CHAR *pszDest, const HI_CHAR *pszSrc, HI_SIZE_T ulLen)
{
    return strncpy(pszDest, pszSrc, ulLen);
}

HI_S32 HI_OSAL_Strncmp(const HI_CHAR *pszStr1, const HI_CHAR *pszStr2, HI_SIZE_T ulLen)
{
    return strncmp(pszStr1, pszStr2, ulLen);
}

HI_CHAR* HI_OSAL_Strncat(HI_CHAR *pszDest, const HI_CHAR *pszSrc, HI_SIZE_T ulLen)
{
    return strncat(pszDest, pszSrc, ulLen);
}

HI_S32 HI_OSAL_Vsnprintf(HI_CHAR *pszStr, HI_SIZE_T ulLen, const HI_CHAR *pszFormat, HI_VA_LIST_S stVAList)
{
    HI_CHAR au8Buf[4096];
    HI_U32 u32Len;

    u32Len = vsprintf(au8Buf, pszFormat, stVAList);
    if (u32Len >= ulLen)
    {
        u32Len = ulLen-1;
    }
    
    memcpy(pszStr, au8Buf, u32Len);
    pszStr[u32Len] = 0;
    return u32Len;
}

HI_S32 HI_OSAL_Snprintf(HI_CHAR *pszStr, HI_SIZE_T ulLen, const HI_CHAR *pszFormat, ...)
{
    HI_S32 s32Len;
    va_list stArgs = {0};

    va_start(stArgs, pszFormat);
    s32Len = HI_OSAL_Vsnprintf(pszStr, ulLen, pszFormat, stArgs);
    va_end(stArgs);

    return s32Len;
}


