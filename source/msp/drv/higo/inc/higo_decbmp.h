/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : higo_decbmp.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _HIGO_DECBMP_H_
#define _HIGO_DECBMP_H_


#ifdef HIGO_BMP_SUPPORT

/*********************************add include here******************************/
#include "hi_type.h"
#include "higo_common.h"
#include "higo_surface.h"
#include "higo_io.h"


/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
HI_S32 BMP_CreateDecoder(DEC_HANDLE *pBmpDec, const HIGO_DEC_ATTR_S *pSrcDesc);

HI_S32 BMP_DestroyDecoder(DEC_HANDLE BmpDec);

HI_S32 BMP_ResetDecoder(DEC_HANDLE BmpDec);

HI_S32 BMP_DecCommInfo(DEC_HANDLE BmpDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo);

HI_S32 BMP_DecImgInfo(DEC_HANDLE BmpDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo);

/***************************************************************************************
* func          : BMP_DecImgData
* description   : CNcomment: ½âÂëbmpÍ¼Æ¬Êý¾Ý CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 BMP_DecImgData(DEC_HANDLE BmpDec, HI_U32 Index, HIGO_SURFACE_S *pSurface);

HI_S32 BMP_ReleaseDecImgData(DEC_HANDLE BmpDec, HIGO_DEC_IMGDATA_S *pImgData);
HI_S32 BMP_GetActualSize(DEC_HANDLE BmpDec, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo);

#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */


#endif /* HIGO_BMP_SUPPORT */
#endif /* _HIGO_DECBMP_H_ */