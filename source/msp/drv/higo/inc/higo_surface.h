/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : higo_surface.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef __HIGO_SURFACE_H__
#define __HIGO_SURFACE_H__


/*********************************add include here******************************/
#include "hi_go_surface.h"
#include "higo_common.h"


/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
#define MAX_SURFACE_NAME_LEN 16

#define IS_HAVE_CLIPRECT(pSurface) (pSurface->IsHaveClip == HI_TRUE)

#define HIGO_GetSurfaceRealRect(pSurface, pRect, pOptRect) \
do \
{ \
    HI_RECT SurfaceRect = {0}; \
    HI_S32 s32Ret; \
    (HI_VOID)Surface_GetSurfaceSize(pSurface, &(SurfaceRect.w), &(SurfaceRect.h)); \
    s32Ret = HIGO_GetRealRect(&SurfaceRect, pRect, pOptRect); \
    if (HI_SUCCESS != s32Ret) \
    {\
        HIGO_ERROR("get rect failed\n", s32Ret);\
        return s32Ret;\
    }\
}\
while (0)

/*************************** Structure Definition ****************************/

typedef enum
{
	HIGO_SUR_MEM_E,    /**< HIGO create  */
	HIGO_SUR_EMPTY_E,  /**<  user create */
	HIGO_SUR_BUTT
}HIGO_SUR_TYPE_E;


typedef struct
{
    HIGO_PF_E    PixelFormat;
    HI_S32       Width;
    HI_S32       Height;
    HI_BOOL      HasColorKey;
    HI_COLOR     ColorKey;  /**< color key */
    HI_COLOR     *Palette;   /**< color palette  */
    HI_COLOR     *pPhyPalette;  /**< physical color palette */
    HIGO_MOD_E   Model;     /**< model which Surface is belong to  */
    HI_PIXELDATA Data;
    HI_U8        Alpha;     /**< alpha channel */
    HI_BOOL      Locked;    /**< lock */
    HIGO_SUR_TYPE_E Type;   /**< surface type*/
    HI_BOOL      IsHaveClip;/**<*/
    HI_RECT      ClipRect;  /**< */
    HI_CHAR      SurfaceName[MAX_SURFACE_NAME_LEN]; /**< surface name , no longer than MAX_SURFACE_NAME_LEN*/
} HIGO_SURFACE_S;

typedef enum
{
    HIGO_SYNC_CPU = HIGO_SYNC_MODE_CPU,
    HIGO_SYNC_TDE = HIGO_SYNC_MODE_TDE,
    HIGO_SYNC_DEC,
    HIGO_SYNC_JPEG,
    HIGO_SYNC_REFRESH,
    HIGO_SYNC_BUTT
}HIGO_SYNC_E;

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
HI_S32 HIGO_InitSurface(HI_VOID *pBuffer , HI_U32 u32BufLen );

HI_S32 HIGO_DeinitSurface(HI_VOID);
/** 
\brief create surface YUV and  CLUT format
\param[in] Surface
\param[in] pType
\retval none
\return none
*/
HI_S32 HIGO_CreateSurfaceFromMem(const HIGO_SURINFO_S *pSurInfo, HIGO_MOD_E Mode, HIGO_HANDLE *pSurface);

/** 
\brief create surface YUV and  CLUT format
\param[in] Surface  Width, Height, PixelFormat  must have £¬ if pitch value  is 0  than use the default value¡£
\param[in] pType
\retval none
\return none
*/
HI_S32 HIGO_CreateSurface(const HIGO_SURINFO_S *pSurInfo, HIGO_MOD_E Mode, HIGO_HANDLE *pSurface, HI_U32 MemModID);


/** 
\brief free surface
\param[in] Surface  Surface pointer
\retval none
\return none
*/
HI_VOID HIGO_FreeSurface(HIGO_HANDLE Surface);

/** 
\brief set surface memory type
\param[in] Surface
\param[in] Type
\retval none
\return none
*/
HI_S32 Surface_SetSurfaceType(HIGO_HANDLE Surface, HIGO_SUR_TYPE_E Type);

/**
 \brief create common surface structure 
 \param[out] pSurface create surface handle 
 \param[in] Width surface  width 
 \param[in] Height surface height 
 \param[in] PixelFormat 
 \retval HI_SUCCESS 
 \retval HIGO_ERR_NOMEM 
 \return HI_S32
 */
HI_S32 Surface_CreateSurface(HIGO_HANDLE* pSurface, HI_S32 Width, HI_S32 Height, HIGO_PF_E PixelFormat);

/**
 \brief free common Surface structure
 \param[in] Surface
 \retval HI_SUCCESS  
 \return HI_S32
 */
HI_VOID Surface_FreeSurface(HIGO_HANDLE Surface);

/**
 \brief freee Surface pravid data 
 \param[in] Surface
 \retval HI_SUCCESS free
 \return HI_S32
 */
HI_VOID Surface_FreeSurfacePrivateData(HIGO_HANDLE Surface);

/**
 \brief set Surface pravid data 
 \param[in] Surface Surface handle 
 \param[in] Module  
 \param[in] pData  
 \retval HI_SUCCESS  
 \return HI_S32
 */
HI_S32 Surface_SetSurfacePrivateData(HIGO_HANDLE Surface, HIGO_MOD_E Module, const HI_PIXELDATA pData);

/**
 \brief set Surface color palette 
 \param[in] Surface Surface handle 
 \param[in] Palette  
 \retval HI_SUCCESS  
 \return HI_S32
 */
HI_S32 Surface_SetSurfacePalette(HIGO_HANDLE Surface, const HI_PALETTE Palette);


/**
 \brief set Surface color key 
 \param[in] Surface Surface handle 
 \param[in] ColorKey  
 \retval HI_SUCCESS  
 \return HI_S32
 */
HI_S32 Surface_SetSurfaceColorKey(HIGO_HANDLE Surface, HI_COLOR ColorKey);

/**
 \brief get Surface color key 
 \param[in] Surface Surface handle 
 \param[in] pColorKey  
 \retval HI_SUCCESS  
 \return HI_S32
 */
HI_S32 Surface_GetSurfaceColorKey(HIGO_HANDLE Surface, HI_COLOR* pColorKey);

/**
 \brief set surface alpha channel value 
 \param[in] Surface surface handle 
 \param[in] Alpha alpha value , range 0-255,  0 means full transparence  ,255 no transparence 
 \retval HI_SUCCESS  
 \return HI_S32
 */
HI_S32 Surface_SetSurfaceAlpha(HIGO_HANDLE Surface, HI_U8 Alpha);

/**
 \brief  get surface alpha channel value 
 \param[in] Surface surface handle 
 \param[out] pAlpha  alhpa value pointer 
 \retval HI_SUCCESS  
 \return HI_VOID
 */
HI_VOID Surface_GetSurfaceAlpha(HIGO_HANDLE Surface, HI_U8* pAlpha);

/**
 \brief  lock surface 
 \param[in] Surface surface handle 
 \param[out] pData  
 \retval HI_SUCCESS  
 \return HI_S32
 */
HI_S32 Surface_LockSurface(HIGO_HANDLE Surface, HI_PIXELDATA pData);

/**
 \brief unlock surface
 \param[in] Surface surface handle 
 \retval HI_SUCCESS  
 \return HI_S32
 */
HI_S32 Surface_UnlockSurface(HIGO_HANDLE Surface);

/**
 \brief  get surface size , pWidth and pHeight can't all null 
 \param[in] Surface surface handle 
 \param[out] pWidth surface ouput width address 
 \param[out] pHeight surface ouput height address 
 \retval HI_SUCCESS  
 \retval HIGO_ERR_NULLPTR pWidth and pHeight can't all null 
 \return HI_S32
 */
HI_S32 Surface_GetSurfaceSize(HIGO_HANDLE Surface, HI_S32* pWidth, HI_S32* pHeight);

/**
 \brief get surface pixel format
 \param[in] Surface surface handle 
 \param[out] pPixelFormat   output pixel format 
 \param[out] pBpp  (bytes per pixel)
 \retval HI_SUCCESS  
 \retval HIGO_ERR_NULLPTR pPixelFormat 
 \return HI_S32
 */
HI_S32 Surface_GetSurfacePixelFormat(HIGO_HANDLE Surface, HIGO_PF_E* pPixelFormat, HI_U32 *pBpp);

/**
 \brief  
 \param[in] PixelFormat  
 \param[out] pBpp  (bits per pixel)
 \retval HI_SUCCESS  
 \return HI_S32
 */

//HI_VOID Surface_CalculateBitsPerPixel(HIGO_PF_E PixelFormat, HI_U32* pBits);
HI_VOID Surface_CalculateBitsPerPixel0(HIGO_PF_E PixelFormat, HI_U32* pBits);

HI_VOID Surface_CalculateBpp0(HIGO_PF_E PixelFormat, HI_U32* pBpp);

HI_VOID Surface_CalculateBpp1(HIGO_PF_E PixelFormat, HI_U32* pBpp);

HI_VOID Surface_CalculateStride0(HIGO_PF_E PixelFormat, HI_U32 Width, HI_U32 Height, HI_U32* pWStride, HI_U32* pHStride);

HI_VOID Surface_CalculateStride1(HIGO_PF_E PixelFormat, HI_U32 Width, HI_U32 Height, HI_U32* pWStride, HI_U32* pHStride);


/*****************************************************************************/

#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */


#endif /* __HIGO_GIF_H__ */
