/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_handle.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/


/*********************************add include here******************************/
#include "jpeg_common.h"


/*****************************************************************************/


/***************************** Macro Definition ******************************/
#define HANDLE_START                 0x1000
#define HANDLE_END                   0x7FFFFFF0
#define HANDLE_EVERYMALLOC_NUM      10


/*************************** Structure Definition ****************************/

 typedef struct hiJPG_HANDLEITEM_S
 {    
     HI_BOOL       UsedFlag;          
     HI_U32        Handle;             
     HI_VOID       *pInstance;        
 }JPG_HANDLEITEM_S;
 
 typedef struct hiJPG_HANDLEINFO_S
 {    
     HI_U32           Count;     
     HI_U32           HandleMax;  
     JPG_HANDLEITEM_S *pItemHead; 
     HI_S32           semLock;
 }JPG_HANDLEINFO_S;


/********************** Global Variable declaration **************************/

static JPG_HANDLEINFO_S s_struHandleInfo = {0, 0, HI_NULL, 0};
static JPG_HANDLEITEM_S s_HdlMem[3 * HANDLE_EVERYMALLOC_NUM] = {{0}};


/******************************* API declaration *****************************/


/***************************************************************************************
* func          : JPG_Handle_Alloc
* description   : CNcomment: 分配jpeg句柄内存 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPG_Handle_Alloc(JPG_HANDLE *pHandle, HI_VOID *pInstance)
{
    HI_U32 MallocLen, Cnt;
    
    if (HI_NULL == s_struHandleInfo.pItemHead)
    {
        MallocLen = HANDLE_EVERYMALLOC_NUM * sizeof(JPG_HANDLEITEM_S);
        
        s_struHandleInfo.pItemHead = s_HdlMem;
        if (HI_NULL == s_struHandleInfo.pItemHead)
        {
            return HI_ERR_JPG_NO_MEM;
        }
        VCOS_memset(s_struHandleInfo.pItemHead, 0x0, MallocLen);

        s_struHandleInfo.Count = HANDLE_EVERYMALLOC_NUM;
        s_struHandleInfo.HandleMax = HANDLE_START;
    }

    Cnt = 0;
    while ((Cnt < s_struHandleInfo.Count) 
           && (HI_FALSE != s_struHandleInfo.pItemHead[Cnt].UsedFlag))
    {
        Cnt++; 
    }

    if (Cnt == s_struHandleInfo.Count)
    {
        HI_VOID *pTmp = HI_NULL;
        MallocLen = (s_struHandleInfo.Count + HANDLE_EVERYMALLOC_NUM) 
                    * sizeof(JPG_HANDLEITEM_S);
        pTmp = s_HdlMem + 10;
        if (HI_NULL == pTmp)
        {
            return HI_ERR_JPG_NO_MEM;
        }
		
        VCOS_memset(pTmp, 0x0, MallocLen);
        VCOS_memcpy(pTmp, s_struHandleInfo.pItemHead, s_struHandleInfo.Count * sizeof(JPG_HANDLEITEM_S));
        VCOS_memset(s_struHandleInfo.pItemHead, 0, 
                              HANDLE_EVERYMALLOC_NUM * sizeof(JPG_HANDLEITEM_S));
        s_struHandleInfo.pItemHead = pTmp;
        s_struHandleInfo.Count += HANDLE_EVERYMALLOC_NUM;
    }
    
    
    s_struHandleInfo.pItemHead[Cnt].UsedFlag = HI_TRUE;
    s_struHandleInfo.pItemHead[Cnt].pInstance = pInstance;

    if (HANDLE_END == s_struHandleInfo.HandleMax)
    {
        s_struHandleInfo.HandleMax = HANDLE_START;
    }
    s_struHandleInfo.pItemHead[Cnt].Handle = s_struHandleInfo.HandleMax++;
    *pHandle = s_struHandleInfo.pItemHead[Cnt].Handle;
    
    return HI_SUCCESS;
}

/***************************************************************************************
* func          : JPG_Handle_Free
* description   : CNcomment: 释放jpeg句柄内存 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID JPG_Handle_Free(JPG_HANDLE Handle)
{
    HI_U32 Cnt;
    
    Cnt = 0;
    while (Cnt < s_struHandleInfo.Count) 
    {
        if ((Handle == s_struHandleInfo.pItemHead[Cnt].Handle)
            && (HI_TRUE == s_struHandleInfo.pItemHead[Cnt].UsedFlag))
        {
            break;
        }
        Cnt++;
    }

    if (Cnt != s_struHandleInfo.Count)
    {
        s_struHandleInfo.pItemHead[Cnt].Handle = 0;
        s_struHandleInfo.pItemHead[Cnt].UsedFlag = HI_FALSE;
    }

    return;    
}


/***************************************************************************************
* func          : JPG_Handle_GetInstance
* description   : CNcomment: 获取jpeg解码器实例 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID* JPG_Handle_GetInstance(JPG_HANDLE Handle)
{
    HI_U32 Cnt;

    Cnt = 0;
    while ((Cnt < s_struHandleInfo.Count) 
           && ((Handle != s_struHandleInfo.pItemHead[Cnt].Handle)
           || ((Handle == s_struHandleInfo.pItemHead[Cnt].Handle) 
           && (HI_FALSE == s_struHandleInfo.pItemHead[Cnt].UsedFlag))))
    {
        Cnt++; 
    }
    if (Cnt == s_struHandleInfo.Count)
    {
        return HI_NULL;
    }
     return s_struHandleInfo.pItemHead[Cnt].pInstance;
}

/***************************************************************************************
* func          : JPG_Handle_Clear
* description   : CNcomment: CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID JPG_Handle_Clear(HI_VOID)
{
    VCOS_memset(&s_struHandleInfo, 0, sizeof(JPG_HANDLEINFO_S));
}
