/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_type.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _JPEG_TYPE_H_
#define _JPEG_TYPE_H_


/*********************************add include here******************************/
#include "hi_type.h"

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */



/***************************** Macro Definition ******************************/
/**
 ** invalid handle
 **/
#define JPG_INVALID_HANDLE            0xFFFFFFFF

/*************************** Structure Definition ****************************/
/** 
 ** JPEG image type 
 **/
typedef enum hiJPG_IMGTYPE_E
{
    JPG_IMGTYPE_NORMAL = 0,  /** normal JPEG image  **/
    JPG_IMGTYPE_MOV_MJPEGA,  /** MOV Motion JPG A   **/
    JPG_IMGTYPE_MOV_MJPEGB,  /** MOV Motion JPG B   **/
    JPG_IMGTYPE_AVI_MJPEG,   /** AVI Motion JPG     **/
    JPG_IMGTYPE_BUTT
} JPG_IMGTYPE_E;

/**
 ** JPG source encode type 
 **/
typedef enum hiJPG_SOURCEFMT_E
{
    JPG_SOURCE_COLOR_FMT_YCBCR400,        /**  YUV400              **/
    JPG_SOURCE_COLOR_FMT_YCBCR420 = 3,    /**  YUV420              **/
    JPG_SOURCE_COLOR_FMT_YCBCR422BHP,     /**  YUV 422 2x1         **/  
    JPG_SOURCE_COLOR_FMT_YCBCR422BVP,     /**  YUV 422 1x2         **/  
    JPG_SOURCE_COLOR_FMT_YCBCR444,        /**  YUV 444             **/  
    JPG_SOURCE_COLOR_FMT_BUTT             /**   others not support  **/
}JPG_SOURCEFMT_E;

/**
 ** JPG output format can support
 **/
typedef enum hiJPG_OUTTYPE_E
{
    JPG_OUTTYPE_INTERLEAVE = 0,  /** interleave type  **/
    JPG_OUTTYPE_MACROBLOCK,      /** micro block type **/
    JPG_OUTTYPE_BUTT
}JPG_OUTTYPE_E;

/**
 ** interleave type color format 
 **/
typedef enum hiJPG_COLORFMT_E
{
    JPG_COLORFMT_FMT_RGB444,
    JPG_COLORFMT_FMT_RGB555,
    JPG_COLORFMT_FMT_RGB565,
    JPG_COLOR_FMT_RGB888,
    JPG_COLOR_FMT_ARGB4444,
    JPG_COLOR_FMT_ARGB1555,
    JPG_COLOR_FMT_ARGB8565,
    JPG_COLOR_FMT_ARGB8888,
    JPG_COLOR_FMT_CLUT1,
    JPG_COLOR_FMT_CLUT2,
    JPG_COLOR_FMT_CLUT4,
    JPG_COLOR_FMT_CLUT8,
    JPG_COLOR_FMT_ACLUT44,
    JPG_COLOR_FMT_ACLUT88,
    JPG_COLOR_FMT_A1,
    JPG_COLOR_FMT_A8,
    JPG_COLOR_FMT_YCBCR888,
    JPG_COLOR_FMT_AYCBCR8888,
    JPG_COLOR_FMT_YCBCR422,
    JPG_COLOR_FMT_BYTE,
    JPG_COLOR_FMT_HALFWORD,
    JPG_ILCOLOR_FMT_BUTT
} JPG_COLORFMT_E;

/**
 ** micro block type color format 
 **/
typedef enum hiJPG_MBCOLORFMT_E
{
    JPG_MBCOLOR_FMT_JPG_YCbCr400MBP,
    JPG_MBCOLOR_FMT_JPG_YCbCr422MBHP,
    JPG_MBCOLOR_FMT_JPG_YCbCr422MBVP,
    JPG_MBCOLOR_FMT_MP1_YCbCr420MBP,
    JPG_MBCOLOR_FMT_MP2_YCbCr420MBP,
    JPG_MBCOLOR_FMT_MP2_YCbCr420MBI,
    JPG_MBCOLOR_FMT_JPG_YCbCr420MBP,
    JPG_MBCOLOR_FMT_JPG_YCbCr444MBP,
    JPG_MBCOLOR_FMT_BUTT
} JPG_MBCOLORFMT_E;

/**
 ** JPEG encode type , only support baseline
 **/
typedef enum hiJPG_PICTYPE_E
{
    JPG_PICTYPE_BASELINE = 0, /** baseline           **/
    JPG_PICTYPE_EXTENDED,     /** Extended           **/
    JPG_PICTYPE_PROGRESSIVE,  /** Progressive        **/
    JPG_PICTYPE_LOSSLESS,     /** Lossless           **/
    JPG_PICTYPE_BUTT           /** others not support **/
}JPG_PICTYPE_E;

/**
 ** JPG image info 
 **/
typedef struct hiJPG_PICINFO_S
{
    JPG_PICTYPE_E Profile;        /** encode type     **/
    HI_U32 Width;                 /** width           **/
    HI_U32 Height;                /** height          **/
    HI_U32 SamplePrecision;      /** sample precision **/
    HI_U32 ComponentNum;
    JPG_SOURCEFMT_E EncodeFormat; /** encode format   **/
}JPG_PICINFO_S;

/**
 ** JPG picture info
 **/
typedef struct hiJPG_PRIMARYINFO_S
{    
    HI_U32         Count;    
    JPG_PICINFO_S* pPicInfo; /** picture info **/
}JPG_PRIMARYINFO_S;

typedef struct hiJPG_ILSURFACE_S
{
    JPG_COLORFMT_E ColorFmt;    /** color format **/
    HI_U32 PhyAddr;            
    HI_VOID* VirtAddr;         
    HI_U32 Height;              
    HI_U32 Width;               
    HI_U32 Stride;              
    HI_U8* pClutPhyAddr;       
    HI_BOOL AlphaMax255;       
    HI_BOOL SubbyteAlign;      
    HI_U8 Alpha0;               /* Alpha0¡¢Alpha1 value ARGB1555 */
    HI_U8 Alpha1;
} JPG_ILSURFACE_S;

typedef struct hiJPG_MBSURFACE_S
{
    JPG_MBCOLORFMT_E    MbFmt;
    HI_U32              YPhyAddr;
    HI_VOID*            YVirtAddr;
    HI_U32              YWidth;
    HI_U32              YHeight;
    HI_U32              YStride;
    HI_U32              CbCrPhyAddr;
    HI_VOID*            CbCrVirtAddr;
    HI_U32              CbCrStride;
} JPG_MBSURFACE_S;

/** decoded image info **/
typedef struct hiJPG_SURFACE_S
{
    JPG_OUTTYPE_E  OutType;        /** output type **/
    union
    {
        JPG_ILSURFACE_S Surface;   /** interleave type info **/
        JPG_MBSURFACE_S MbSurface; /** micro type info **/
    }SurfaceInfo;
}JPG_SURFACE_S;

/********************** Global Variable declaration **************************/

typedef HI_U32  JPG_HANDLE;


/******************************* API declaration *****************************/




#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _JPEG_TYPE_H_ */
