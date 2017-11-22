/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : optm_hifb.h
Version             : Initial Draft
Author              : 
Created             : 2014/08/06
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file        
******************************************************************************/

#ifndef __OPTM_HIFB_H__
#define __OPTM_HIFB_H__


/*********************************add include here******************************/
#include "hi_type.h"

#ifndef __BOOT__
#include "optm_hal.h"
#else
#include "optm_basic.h"
#include "hi_boot_common.h"
#endif

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */



/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/* GFX mode  */
typedef enum tagOPTM_GFX_MODE_EN
{
    OPTM_GFX_MODE_NORMAL = 0,
    OPTM_GFX_MODE_HD_WBC,
    OPTM_GFX_MODE_BUTT
}OPTM_GFX_MODE_EN;


/* GFX LAYER ID */
typedef enum tagOPTM_GFX_LAYER_EN
{
    OPTM_GFX_LAYER_SD0  = 0,
    OPTM_GFX_LAYER_SD1,
    OPTM_GFX_LAYER_HD0,
    OPTM_GFX_LAYER_HD1,
    OPTM_GFX_LAYER_HC0,
    OPTM_GFX_LAYER_HC1,
    OPTM_GFX_LAYER_AD0,
    OPTM_GFX_LAYER_AD1,
    OPTM_GFX_LAYER_BUTT
}OPTM_GFX_LAYER_EN;


/* image format of graphic frame */
typedef enum tagOPTM_GFX_PIXELFORMAT_E
{
    OPTM_GFX_FMT_CLUT_1BPP = 0,
    OPTM_GFX_FMT_CLUT_2BPP,
    OPTM_GFX_FMT_CLUT_4BPP,
    OPTM_GFX_FMT_CLUT_8BPP,

    OPTM_GFX_FMT_ACLUT_44,
    OPTM_GFX_FMT_RGB_444,
    OPTM_GFX_FMT_RGB_555,
    OPTM_GFX_FMT_RGB_565,

    OPTM_GFX_FMT_CbYCrY_PACKAGE_422_GRC,
    OPTM_GFX_FMT_YCbYCr_PACKAGE_422_GRC,
    OPTM_GFX_FMT_YCrYCb_PACKAGE_422_GRC,
    OPTM_GFX_FMT_ACLUT_88,
    
    OPTM_GFX_FMT_ARGB_4444,
    OPTM_GFX_FMT_ARGB_1555,
    OPTM_GFX_FMT_RGB_888,
    OPTM_GFX_FMT_YCbCr_888,

    OPTM_GFX_FMT_ARGB_8565,
    OPTM_GFX_FMT_ARGB_6666,
    OPTM_GFX_FMT_KRGB_888,
    OPTM_GFX_FMT_ARGB_8888,

    OPTM_GFX_FMT_AYCbCr_8888,
    OPTM_GFX_FMT_RGBA_4444,
    OPTM_GFX_FMT_RGBA_5551,
    OPTM_GFX_FMT_RGBA_6666,

    OPTM_GFX_FMT_RGBA_5658,
    OPTM_GFX_FMT_RGBA_8888,
    OPTM_GFX_FMT_YCbCrA_8888,     
    OPTM_GFX_FMT_BGR565,        /**< BGR565 27 */
    
    OPTM_GFX_FMT_BGR888,        /**< BGR888 28 */  
    OPTM_GFX_FMT_ABGR4444,      /**< ABGR4444 29*/
    OPTM_GFX_FMT_ABGR1555,      /**< ABGR1555 30*/
    OPTM_GFX_FMT_ABGR8888,      /**< ABGR8888 31*/
    
    OPTM_GFX_FMT_ABGR8565,      /**< ABGR8565 32*/
    OPTM_GFX_FMT_KBGR444,       /**< BGR444 16bpp 33*/
    OPTM_GFX_FMT_KBGR555,       /**< BGR555 16bpp 34*/
    OPTM_GFX_FMT_KBGR888,       /**< BGR888 32bpp 35*/

    OPTM_GFX_FMT_BUTT
}OPTM_GFX_PIXELFORMAT_E;


typedef enum tagOPTM_GFX_BITEXTEND_E
{
    OPTM_GFX_BITEXTEND_1ST = 0x0,  
    OPTM_GFX_BITEXTEND_2ND = 0x2,
    OPTM_GFX_BITEXTEND_3RD = 0x3,
    OPTM_GFX_BITEXTEND_BUTT
}OPTM_GFX_BITEXTEND_E;


/* GFX interrupt function type */
typedef enum tagOPTM_INT_TPYE_E
{
    OPTM_INTTYPE_VTHD         = 0,    /* vertical sequence interrupt */
    OPTM_INTTYPE_CHANGE_DISP,        /* notice of mode switch */
    OPTM_INTTYPE_BUTT
}OPTM_INT_TPYE_E;

typedef enum tagOPTM_GFX_3D_MODE_E
{
    OPTM_GFX_MODE_SIDE_BY_SIDE = 0,
    OPTM_GFX_MODE_TOP_BOTTOM,
    OPTM_GFX_3D_MODE_BUTT
}OPTM_GFX_3D_MODE_E;

typedef enum tagOPTM_GFX_ZORDER_E
{
    OPTM_GFX_ZORDER_MOVETOP     = 0,  /**<Move to the top*/ /**<CNcomment:  移到最顶部 */
    OPTM_GFX_ZORDER_MOVEUP,           /**<Move up*/ /**<CNcomment:  向上移到 */      
    OPTM_GFX_ZORDER_MOVEBOTTOM,       /**<Move to the bottom*/ /**<CNcomment:  移到最底部 */
    OPTM_GFX_ZORDER_MOVEDOWN,         /**<Move down*/ /**<CNcomment:  向下移到 */
    OPTM_GFX_ZORDER_BUTT
} OPTM_GFX_ZORDER_E;


/** information of de-flicker */
typedef struct tagOPTM_GFX_DEFLICKER_S
{
    HI_U32  u32HDfLevel;    /**<  horizontal deflicker level */     
    HI_U32  u32VDfLevel;    /**<  vertical deflicker level */
    HI_U8   *pu8HDfCoef;    /**<  horizontal deflicker coefficient */
    HI_U8   *pu8VDfCoef;    /**<  vertical deflicker coefficient */
}OPTM_GFX_DEFLICKER_S;

/** Alpha information  */
typedef struct tagOPTM_GFX_ALPHA_S
{
    HI_BOOL bAlphaEnable;     /**<  alpha enable flag */
    HI_BOOL bAlphaChannel;    /**<  alpha channel enable flag */
    HI_U8   u8Alpha0;         /**<  alpha0 value, used in ARGB1555 */
    HI_U8   u8Alpha1;         /**<  alpha1 value, used in ARGB1555 */
    HI_U8   u8GlobalAlpha;    /**<  global alpha value */
    HI_U8   u8Reserved;
}OPTM_GFX_ALPHA_S;

/** color key information  */
typedef struct tagOPTM_COLOR_KEY_S
{
    HI_BOOL bKeyEnable;         /**<  colorkey enable */
    HI_BOOL bMaskEnable;        /**<  key mask enable */
    HI_U32 u32Key;              /**<  */
    HI_U8  u8RedMask;           /**<  red mask */
    HI_U8  u8GreenMask;         /**<  green mask */
    HI_U8  u8BlueMask;          /**<  blue mask */
    HI_U8  u8Reserved;           
    HI_U32 u32KeyMode;			/**<  0:In region; 1:Out region*/
    HI_U8  u8RedMax;            /**< colorkey red max value*/
    HI_U8  u8GreenMax;          /**< colorkey green max value*/
    HI_U8  u8BlueMax;           /**< colorkey blue max value*/
    HI_U8  u8Reserved1;
    HI_U8  u8RedMin;             /**< colorkey red min value*/
    HI_U8  u8GreenMin;           /**< colorkey green min value*/
    HI_U8  u8BlueMin;            /**< colorkey blue min value*/
    HI_U8  u8Reserved2;
}OPTM_COLOR_KEY_S;


/** layer state*/
typedef enum tagOPTM_LAYER_STATE_E
{
    OPTM_LAYER_STATE_ENABLE  = 0x0,  /* layer enable */
    OPTM_LAYER_STATE_DISABLE,        /* layer disable */
    OPTM_LAYER_STATE_INVALID,        /* invalid layer, not exist */
    OPTM_LAYER_STATE_BUTT
} OPTM_LAYER_STATE_E;

/** csc state*/
typedef enum tagOPTM_CSC_STATE_E
{
    OPTM_CSC_SET_PARA_ENABLE = 0x0,
    OPTM_CSC_SET_PARA_RGB,
    OPTM_CSC_SET_PARA_BGR,
    OPTM_CSC_SET_PARA_CLUT,
    OPTM_CSC_SET_PARA_CbYCrY,
    OPTM_CSC_SET_PARA_YCbYCr,
    OPTM_CSC_SET_PARA_BUTT
} OPTM_CSC_STATE_E;


/** osd info*/
typedef struct tagOPTM_OSD_DATA_S
{
    OPTM_LAYER_STATE_E  eState;
    OPTM_GFX_PIXELFORMAT_E eFmt;
    
    HI_U32  u32BufferPhyAddr;
    HI_U32  u32RegPhyAddr;
    HI_U32  u32Stride;
    HI_RECT_S stOutRect;
    OPTM_GFX_ALPHA_S stAlpha;
    OPTM_COLOR_KEY_S stColorKey;

    HI_BOOL bPreMul;
	HI_BOOL bProgressiveDisp;
    HI_U32  u32ScreenWidth;  /* screen width in current mode */
    HI_U32  u32ScreenHeight; /* screen height in current mode */
    HI_RECT_S stInRect;
    OPTM_GFX_MODE_EN  gfxWorkMode;
}OPTM_OSD_DATA_S;

typedef struct tagOPTM_GFX_CAP_S
{
   /**< whether support a certain layer, for example:
    *   x5 HD support HIFB_SD_0 not support HIFB_SD_1
    */
	HI_BOOL bLayerSupported;

    HI_BOOL bColFmt[OPTM_GFX_FMT_BUTT];
    HI_BOOL bZoom;          /**< support vo scale*/
    HI_BOOL bKeyAlpha;      /**<  whether support colorkey alpha */
    HI_BOOL bGlobalAlpha;   /**<  whether support global alpha */
    HI_BOOL bCmap;          /**<  whether support color map */
    HI_BOOL bHasCmapReg;    /**<  whether has color map register*/

    HI_U32  u32MaxWidth;    /**<  the max pixels per line */
    HI_U32  u32MaxHeight;   /**<  the max lines */
    HI_U32  u32MinWidth;    /**<  the min pixels per line */
    HI_U32  u32MinHeight;   /**<  the min lines */ 

	HI_U32  u32VDefLevel;  //not surpport
	HI_U32  u32HDefLevel;  //not surpport
}OPTM_GFX_CAP_S;

typedef HI_S32 (*PF_OPTM_GFX_INT_CALLBACK)(HI_VOID *pParaml, HI_VOID *pParamr);



/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/

/* init, apply public resources */
HI_S32 OPTM_GfxInit(HI_VOID);
HI_S32 OPTM_GfxDeInit(HI_VOID);

/* set working mode, MPW only supports normal mode, PILOT supports write-back mode */
HI_S32 OPTM_GfxSetWorkMode(OPTM_GFX_MODE_EN enMode);
HI_S32 OPTM_GfxGetWorkMode(OPTM_GFX_MODE_EN *penMode);


/* apply memory, initialize default properties;
 * open graphic layer for the next operation, 
 * registers' settings involved
 */
HI_S32 OPTM_GfxOpenLayer(OPTM_GFX_LAYER_EN enLayerId);
HI_S32 OPTM_GfxCloseLayer(OPTM_GFX_LAYER_EN enLayerId);

HI_S32 OPTM_GfxSetEnable(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL bEnable);
HI_S32 OPTM_GfxSetLogoLayerEnable(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL bEnable);

/** screen some layer, then the layer stops output.
 * it can be operated, but there is no effect.
 */
HI_S32 OPTM_GfxMaskLayer(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL bMask);

HI_S32 OPTM_GfxSetLayerAddr(OPTM_GFX_LAYER_EN enLayerId, HI_U32 u32Addr);

HI_S32 OPTM_GfxSetLayerStride(OPTM_GFX_LAYER_EN enLayerId, HI_U32 u32Stride);

HI_S32 OPTM_GfxSetLayerDataFmt(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_PIXELFORMAT_E enDataFmt);

HI_S32 OPTM_GfxSetColorReg(OPTM_GFX_LAYER_EN u32LayerId, HI_U32 u32OffSet, HI_U32 u32Color, HI_S32 UpFlag);

HI_S32 OPTM_GfxWaitVBlank(OPTM_GFX_LAYER_EN u32LayerId);

HI_S32 OPTM_GfxSetLayerDeFlicker(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_DEFLICKER_S *pstDeFlicker);

HI_S32 OPTM_GfxSetLayerAlpha(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_ALPHA_S *pstAlpha);

/* set output window */
HI_S32 OPTM_GfxSetLayerRect(OPTM_GFX_LAYER_EN enLayerId, HI_RECT_S *pstInputRect, HI_RECT_S *pstOutputRect);

HI_S32 OPTM_GfxSetLayKeyMask(OPTM_GFX_LAYER_EN enLayerId, OPTM_COLOR_KEY_S *pstColorkey);

/* set bit-extension mode */
HI_S32 OPTM_GfxSetLayerBitExtMode(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_BITEXTEND_E enBtMode);

HI_S32 OPTM_GfxSetLayerPreMult(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL bEnable);

HI_S32 OPTM_GfxSetClutAddr(OPTM_GFX_LAYER_EN enLayerId, HI_U32 u32PhyAddr);

HI_S32 OPTM_GfxGetOSDData(OPTM_GFX_LAYER_EN enLayerId, OPTM_OSD_DATA_S *pstLayerData);

HI_S32 OPTM_GfxSetIntCallback(OPTM_INT_TPYE_E eIntType, PF_OPTM_GFX_INT_CALLBACK pCallBack, OPTM_GFX_LAYER_EN enLayerId);

HI_S32 OPTM_GfxSetLayerZorder(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_ZORDER_E eZorder);

HI_S32 OPTM_GfxGetLayerZorder(OPTM_GFX_LAYER_EN enLayerId, HI_U32* u32Zorder);

HI_S32 OPTM_GfxSetHDRect(OPTM_GFX_LAYER_EN enLayerId, HI_RECT_S *pstInputRect, HI_RECT_S *pstOutputRect);

HI_S32 OPTM_GfxGetLayerRect(OPTM_GFX_LAYER_EN enLayerId, HI_RECT_S *pstInputRect, HI_RECT_S *pstOutputRect);

HI_S32 OPTM_GfxGetEnable(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL *pbState);

HI_S32 OPTM_GfxUpLayerReg(OPTM_GFX_LAYER_EN enLayerId);

HI_VOID OPTM_GFX_SaveVXD(HI_VOID);

HI_VOID OPTM_GFX_RestoreVXD(HI_VOID);

/**************************************************************************
                      no support, temporarily
**************************************************************************/
/* wait until registers' update to complete interrupt */
HI_S32 OPTM_GfxWaitRR(OPTM_GFX_LAYER_EN u32LayerId);
HI_S32 OPTM_GetHaltDispStatus(HI_U32 layerID,HI_BOOL *pbDispInit);
HI_S32 OPTM_GfxSetTriDimEnable(OPTM_GFX_LAYER_EN enLayerId, HI_U32 bEnable);
HI_S32 OPTM_GfxSetTriDimMode(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_3D_MODE_E enMode);


#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __OPTM_HIFB_H__ */
