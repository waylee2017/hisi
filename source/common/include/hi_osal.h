/******************************************************************************
Copyright (C), 2013-2023, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : hi_osal.h
Version       : V1.0 Initial Draft
Author        : l00185424
Created       : 2013/7/25
Last Modified :
Description   : OS Abstract Layer.
Function List : None.
History       :
******************************************************************************/
#ifndef __HI_OSAL_H__
#define __HI_OSAL_H__

#ifndef __KERNEL__
#include <stdio.h>
#include <stdarg.h>
#else
#include <linux/kernel.h>
#endif
#include "hi_type.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/******************************* API Declaration *****************************/
/** \addtogroup      COMMON*/
/** @{*/  /** <!-- -COMMON=*/

typedef va_list HI_VA_LIST_S;

/**-----Standard Functions--------*/

/**
\brief String copy. CNcomment: 字符串拷贝CNend
\attention \n
This function is the abstact of strncpy.CNcomment:这个接口仅仅是对strncpy的简单封装CNend
\param[in] pszDest  the point of buffer that the string copy to.CNcomment:拷贝字符串目的地址CNend
\param[in] pszSrc the point of buffer that the string copy from.CNcomment:拷贝字符串源地址CNend
\param[in] ulLen  the max length of the string to copy.CNcomment:拷贝字符串最大长度 CNend
\retval ::the point of buffer that the string copy to(pszDest) if  Success CNcomment: 成功返回目的字符串地址 CNend
\retval ::NULL if FAILURE. CNcomment: API系统调用失败返回NULL CNend
\see \n
N/A CNcomment: 无 CNend
*/
HI_CHAR* HI_OSAL_Strncpy(HI_CHAR *pszDest, const HI_CHAR *pszSrc, HI_SIZE_T ulLen);

/**
\brief String compare. CNcomment: 字符串比较CNend
\attention \n
This function is the abstact of strncpy.CNcomment:本接口仅仅是对strncmp的简单封装CNend
\param[in] pszStr1  the point of buffer that the first string.CNcomment:字符串目1的地址CNend
\param[in] pszStr2 the point of buffer that the second string.CNcomment:字符串目2的地址CNend
\param[in] ulLen  the max length of the string to copy.CNcomment:比较字符串最大长度 CNend
\retval ::equal return 0,unequal return 1 or -1 CNcomment:相同返回0，不相同返回非0 CNend
\see \n
N/A CNcomment: 无 CNend
*/
HI_S32 HI_OSAL_Strncmp(const HI_CHAR *pszStr1, const HI_CHAR *pszStr2, HI_SIZE_T ulLen);

/**
\brief String compare without regard to up/lower case. CNcomment: 无大小写的字符串比较CNend
\attention \n
This function is the abstact of strncpy.CNcomment:本接口仅仅是对strncasecmp的简单封装CNend
\param[in] pszStr1 the point of buffer that the first string.CNcomment:字符串目1的地址CNend
\param[in] pszStr2 the point of buffer that the second string.CNcomment:字符串目2的地址CNend
\param[in] ulLen  the max length of the string.CNcomment:比较字符串最大长度 CNend
\retval ::equal return 0,unequal return 1 or -1 CNcomment:相同返回0，不相同返回非0 CNend
\see \n
N/A CNcomment: 无 CNend
*/
HI_S32 HI_OSAL_Strncasecmp(const HI_CHAR *pszStr1, const HI_CHAR *pszStr2, HI_SIZE_T ulLen);

/**
\brief appends the src string to the dest string. CNcomment: 字符串拼接CNend
\attention \n
This function is the abstact of strncpy.CNcomment:本接口仅仅是对strncat的简单封装CNend
\param[in] pszDest  the point of buffer that the destinative string.CNcomment:目的字符串的地址CNend
\param[in] pszSrc the point of buffer that the source string.CNcomment:源字符串的地址CNend
\param[in] ulLen  the max length of the string to copy.CNcomment:源字符串最大长度 CNend
\retval ::the point of buffer that the destinative string.CNcomment:返回目的字符串地址CNend
\see \n
N/A CNcomment: 无 CNend
*/
HI_CHAR* HI_OSAL_Strncat(HI_CHAR *pszDest, const HI_CHAR *pszSrc, HI_SIZE_T ulLen);

/**
\brief write most uLen byte to the character string str . CNcomment:格式化输出到字符串CNend
\attention \n
This function is the abstact of strncpy.CNcomment:本接口仅仅是对snprintf的简单封装CNend
\param[in] pszStr  the point of buffer that the destinative string.CNcomment:目的字符串的地址CNend
\param[in] ulLen the max length of the string.CNcomment:可写入字符串的最大长度CNend
\param[in] pszFormat  the format arguments.CNcomment:格式化的变参列表CNend
\retval ::sucess return the length of the string,failure return -1 CNcomment:成功返回字符串长度，失败返回负数CNend
\see \n
N/A CNcomment: 无 CNend
*/
HI_S32 HI_OSAL_Snprintf(HI_CHAR *pszStr, HI_SIZE_T ulLen, const HI_CHAR *pszFormat, ...);

/**
\brief write most uLen byte to the character string str . CNcomment:格式化输出到字符串CNend
\attention \n
This function is the abstact of strncpy.CNcomment:本接口仅仅是对vsnprintf的简单封装CNend
\param[in] pszStr  the point of buffer that the destinative string.CNcomment:目的字符串的地址CNend
\param[in] ulLen the max length of the string.CNcomment:可写入字符串的最大长度CNend
\param[in] pszFormat  the string arguments.CNcomment:字符串CNend
\param[in] stVAList  the list of format arguments.CNcomment:格式化参数列表CNend
\retval ::sucess return the length of the string,failure return -1 CNcomment:成功返回字符串长度，失败返回负数CNend
\see \n
N/A CNcomment: 无 CNend
*/
HI_S32 HI_OSAL_Vsnprintf(HI_CHAR *pszStr, HI_SIZE_T ulLen, const HI_CHAR *pszFormat, HI_VA_LIST_S stVAList);


/** @}*/  /** <!-- ==== API Declaration End ====*/

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __HI_OSAL_H__ */

