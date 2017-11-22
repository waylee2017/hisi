/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : higo_gif.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef __HIGO_GIF_H__
#define __HIGO_GIF_H__


#ifdef HIGO_GIF_SUPPORT

/*********************************add include here******************************/
#include "higo_common.h"
#include "hi_go_decoder.h"
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
HI_S32 GIF_CreateDecoder(DEC_HANDLE *pGifDec, const HIGO_DEC_ATTR_S *pSrcDesc);

HI_S32 GIF_DestroyDecoder(DEC_HANDLE GifDec);

HI_S32 GIF_ResetDecoder(DEC_HANDLE GifDec);

HI_S32 GIF_DecCommInfo(DEC_HANDLE GifDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo);

HI_S32 GIF_DecImgInfo(DEC_HANDLE GifDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo);

HI_S32 GIF_SetDecImgAttr(DEC_HANDLE GifDec, HI_U32 Index, const HIGO_DEC_IMGATTR_S *pImgAttr);

HI_S32 GIF_DecImgData(DEC_HANDLE GifDec, HI_U32 Index, HIGO_SURFACE_S *pSurface);

HI_S32 GIF_GetActualSize(DEC_HANDLE GifDec, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo);


/*****************************************************************************/

#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */


#endif /* HIGO_GIF_SUPPORT */
#endif /* __HIGO_GIF_H__ */
