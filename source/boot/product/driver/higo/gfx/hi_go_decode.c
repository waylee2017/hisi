/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_go_decode.c
Version             : Initial Draft
Author              :
Created             : 2016/01/12
Description         :
                      CNcomment:解码实现文件 CNend\n
Function List   :
History         :
Date                        Author                  Modification
2016/01/12                  y00181162               Created file
******************************************************************************/


/*********************************add include here******************************/
#include "hi_go_logo.h"
#include "jpeg_adp_decode.h"
#include "bmp_adp_decode.h"

/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/


/*****************************************************************************
* func               GFX_DEC_GetSrcType
* description    :  获取图片类型
* retval        :  NA
* others:        :  NA
*****************************************************************************/
static HI_S32 GFX_DEC_GetSrcType(HI_CHAR* pSrcAddr,HI_GO_DEC_IMGTYPE_E *pImgType)
{
    HI_CHAR HeadInfo[4] = {0};

    if(NULL == pSrcAddr){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    memcpy(HeadInfo,pSrcAddr,4);

    if((0xFF == *((HI_U8*)HeadInfo)) && (0xD8 == *((HI_U8*)(HeadInfo + 1)))){
        *pImgType = HI_GO_DEC_IMGTYPE_JPEG;
        return HI_SUCCESS;
    }

    if((0x42 == *((HI_U8*)HeadInfo)) && (0x4d == *((HI_U8*)(HeadInfo + 1)))){
        *pImgType = HI_GO_DEC_IMGTYPE_BMP;
        return HI_SUCCESS;
    }

    HI_GFX_Log();

    return HI_FAILURE;
};

/*****************************************************************************
* func            :  HI_GO_CreateDecode
* description    :  创建解码器
* retval        :  NA
* others:        :  NA
*****************************************************************************/
HI_S32 HI_GO_CreateDecode(HI_HANDLE *pDecHandle,HI_CHAR* pSrcAddr,HI_U32 u32SrcLen)
{

    HI_S32 s32Ret    = HI_SUCCESS;
    HI_CHAR* pHandle = NULL;
    HI_GO_DEC_IMGTYPE_E ImgType = HI_GO_DEC_IMGTYPE_JPEG;
    HI_GO_DEC_INSTANCE_S *pstDecInstance = NULL;

    if ((NULL == pSrcAddr) || (u32SrcLen <= 4)){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    /**
     **create image decode handle
     **/
    pHandle    = HI_GFX_Malloc(sizeof(HI_GO_DEC_INSTANCE_S),"decode-handle");
    if(NULL == pHandle){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    *pDecHandle    = (HI_HANDLE)pHandle;
    pstDecInstance = (HI_GO_DEC_INSTANCE_S*)pHandle;
    memset((HI_VOID*)pHandle,0x0,sizeof(HI_GO_DEC_INSTANCE_S));
    /**
     **get image type,jpeg or bmp
     **/
    s32Ret = GFX_DEC_GetSrcType(pSrcAddr,&ImgType);
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        goto ERROR_EXIT;
    }

    if(HI_GO_DEC_IMGTYPE_JPEG == ImgType){
        pstDecInstance->CreateDecode   = JPEG_ADP_CreateDecode;
        pstDecInstance->DestroyDecode  = JPEG_ADP_DestroyDecode;
        pstDecInstance->GetImageInfo   = JPEG_ADP_GetImgInfo;
        pstDecInstance->StartDecode    = JPEG_ADP_StartDecode;
    }else if(HI_GO_DEC_IMGTYPE_BMP == ImgType){
        pstDecInstance->CreateDecode   = BMP_ADP_CreateDecode;
        pstDecInstance->DestroyDecode  = BMP_ADP_DestroyDecode;
        pstDecInstance->GetImageInfo   = BMP_ADP_GetImgInfo;
        pstDecInstance->StartDecode    = BMP_ADP_StartDecode;
    }else{
        HI_GFX_Log();
        goto ERROR_EXIT;
    }

    s32Ret = pstDecInstance->CreateDecode((HI_U64*)&(pstDecInstance->u64DecHandle),pSrcAddr,u32SrcLen);
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        goto ERROR_EXIT;
    }

    return HI_SUCCESS;

ERROR_EXIT:

    if(NULL != pHandle){
        HI_GFX_Free(pHandle);
        pstDecInstance = NULL;
    }

    pstDecInstance = NULL;
    *pDecHandle    = HI_INVALID_HANDLE;

    return HI_FAILURE;

}

/*****************************************************************************
* func            :  HI_GO_StartDecode
* description    :  开始解码
* retval        :  NA
* others:        :  NA
*****************************************************************************/
HI_S32 HI_GO_StartDecode(HI_HANDLE DecHandle,HI_HANDLE *pSurface)
{
    HI_S32 s32Ret      = HI_SUCCESS;
    HI_HANDLE hSurface = HI_INVALID_HANDLE;
    HI_GO_DEC_INSTANCE_S *pstDecInstance = (HI_GO_DEC_INSTANCE_S*)DecHandle;

    /**
     **whether the dec instace is null.
     **/
    if(NULL == pstDecInstance){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    /**
     **create surface
     **/
    hSurface = (HI_HANDLE)HI_GFX_Malloc(sizeof(HI_GO_SURFACE_S),"decode-surface-handle");
    if(NULL == (HI_VOID*)hSurface){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    *pSurface  = hSurface;
    memset((HI_VOID*)hSurface,0x0,sizeof(HI_GO_SURFACE_S));
    /**
     **get image informatin
     **/
    s32Ret = pstDecInstance->GetImageInfo(pstDecInstance->u64DecHandle,hSurface);
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        goto ERROR_EXIT;
    }
    /**
     **create surface mem
     **/
    s32Ret = HI_GO_CreateDecSurface(hSurface);
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        goto ERROR_EXIT;
    }
    /**
     **start decode
     **/
    s32Ret = pstDecInstance->StartDecode(pstDecInstance->u64DecHandle,hSurface);
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        goto ERROR_EXIT;
    }

    return HI_SUCCESS;

ERROR_EXIT:

    if(HI_INVALID_HANDLE != hSurface){
        HI_GFX_Free((HI_CHAR*)hSurface);
    }

    *pSurface = HI_INVALID_HANDLE;

    return HI_FAILURE;

}

/*****************************************************************************
* func            :  HI_GO_DestroyDecode
* description    :  销毁解码器
* retval        :  NA
* others:        :  NA
*****************************************************************************/
HI_S32 HI_GO_DestroyDecode(HI_HANDLE DecHandle)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_GO_DEC_INSTANCE_S *pstDecInstance = (HI_GO_DEC_INSTANCE_S*)DecHandle;
    /**
     **whether the dec instace is null.
     **/
    if(NULL == pstDecInstance){
        HI_GFX_Log();
        return HI_FAILURE;
    }
    /**
     **destory decode
     **/
    s32Ret = pstDecInstance->DestroyDecode(pstDecInstance->u64DecHandle);
    if(HI_SUCCESS != s32Ret){
        HI_GFX_Log();
        return HI_FAILURE;
    }

    HI_GFX_Free((HI_CHAR*)pstDecInstance);

    return HI_SUCCESS;
}
