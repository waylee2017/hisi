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

#ifndef __HI_UNF_GRC_H__
#define __HI_UNF_GRC_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#include "hi_unf_disp.h"

/* GFX LAYER ID */
typedef enum GRC_LAYER_EN
{
    GRC_LAYER_SD0 =0,
    GRC_LAYER_SD1,
    GRC_LAYER_HD0,
    GRC_LAYER_HD1,
    GRC_LAYER_HC0,
    GRC_LAYER_HC1,
    GRC_LAYER_AD0,
    GRC_LAYER_AD1,    
    GRC_LAYER_BUTT
}GRC_LAYER_EN;

/**Alpha information*/
/**CNcomment:Alpha信息 */
typedef struct
{
    HI_BOOL bAlphaEnable;   /**<  alpha enable flag *//**<CNcomment:alpha使能标识*/
    HI_BOOL bAlphaChannel;  /**<  alpha channel enable flag *//**<CNcomment:alpha通道使能*/
    HI_U8 u8Alpha0;         /**<  alpha0 value, used in ARGB1555 *//**CNcomment:alpha0取值，ARGB1555格式时使用*/
    HI_U8 u8Alpha1;         /**<  alpha1 value, used in ARGB1555 *//**CNcomment:alpha1取值，ARGB1555格式时使用*/
    HI_U8 u8GlobalAlpha;    /**<  global alpha value *//**<CNcomment:全局alpha取值*/
    HI_U8 u8Reserved;
}GRC_ALPHA_S;

/**Rectangle*//**CNcomment: 矩形 */
typedef struct
{
    HI_S32 x, y;

    HI_S32 w, h;
} GRC_RECT;

/**Pixel format*/
/**CNcomment:像素格式枚举 */
typedef enum
{        
    GRC_FMT_RGB565 = 0,        
    GRC_FMT_RGB888,		   /**<  RGB888 24bpp */

    GRC_FMT_KRGB444,       /**<  RGB444 16bpp */
    GRC_FMT_KRGB555,       /**<  RGB555 16bpp */
    GRC_FMT_KRGB888,       /**<  RGB888 32bpp */

    GRC_FMT_ARGB4444,      /**< ARGB4444 */     
    GRC_FMT_ARGB1555,      /**< ARGB1555 */  
    GRC_FMT_ARGB8888,      /**< ARGB8888 */   
    GRC_FMT_ARGB8565,      /**< ARGB8565 */
#if 0
    HIFB_FMT_RGBA4444,      /**< ARGB4444 */
    HIFB_FMT_RGBA5551,      /**< RGBA5551 */
    HIFB_FMT_RGBA5658,      /**< RGBA5658 */
    HIFB_FMT_RGBA8888,      /**< RGBA8888 */

    HIFB_FMT_BGR565,        /**< BGR565 */   
    HIFB_FMT_BGR888,        /**< BGR888 */   
    HIFB_FMT_ABGR4444,      /**< ABGR4444 */   
    HIFB_FMT_ABGR1555,      /**< ABGR1555 */   
    HIFB_FMT_ABGR8888,      /**< ABGR8888 */   
    HIFB_FMT_ABGR8565,      /**< ABGR8565 */      
    HIFB_FMT_KBGR444,       /**< BGR444 16bpp */
    HIFB_FMT_KBGR555,       /**< BGR555 16bpp */
    HIFB_FMT_KBGR888,       /**< BGR888 32bpp */

    HIFB_FMT_1BPP,          /**<  clut1 */
    HIFB_FMT_2BPP,          /**<  clut2 */    
    HIFB_FMT_4BPP,          /**<  clut4 */ 
    HIFB_FMT_8BPP,          /**< clut8 */
    HIFB_FMT_ACLUT44,       /**< AClUT44*/
    HIFB_FMT_ACLUT88,         /**< ACLUT88 */
    HIFB_FMT_PUYVY,         /**< UYVY */
    HIFB_FMT_PYUYV,         /**< YUYV */
    HIFB_FMT_PYVYU,         /**< YVYU */
    HIFB_FMT_YUV888,        /**< YUV888 */
    HIFB_FMT_AYUV8888,      /**< AYUV8888 */
    HIFB_FMT_YUVA8888,      /**< YUVA8888 */
#endif
    GRC_FMT_BUTT
}GRC_COLOR_FMT_E;

typedef struct
{
    GRC_LAYER_EN enLayerID;
    HI_U32       u32LayerAddr;   
    GRC_RECT     stInRect;  
    GRC_RECT     stOutRect;   
    HI_U32       u32Stride;         
}GRC_LAYER_REFRESH_S;

/** color key information  */
typedef struct tagGRC_COLOR_KEY_S
{
    HI_BOOL bKeyEnable;         /**<  colorkey enable */
    HI_BOOL bMaskEnable;        /**<  key mask enable */
    HI_U32 u32Key;              /**<  */
    HI_U8 u8RedMask;            /**<  red mask */
    HI_U8 u8GreenMask;          /**<  green mask */
    HI_U8 u8BlueMask;           /**<  blue mask */
    HI_U8 u8Reserved;           
    HI_U32 u32KeyMode;			/**<  0:In region; 1:Out region*/
    HI_U8 u8RedMax;             /**< colorkey red max value*/
    HI_U8 u8GreenMax;           /**< colorkey green max value*/
    HI_U8 u8BlueMax;            /**< colorkey blue max value*/
    HI_U8 u8Reserved1;
    HI_U8 u8RedMin;             /**< colorkey red min value*/
    HI_U8 u8GreenMin;           /**< colorkey green min value*/
    HI_U8 u8BlueMin;            /**< colorkey blue min value*/
    HI_U8 u8Reserved2;
}Grc_COLOR_KEY_S;

HI_S32 Grc_DRV_EnableLayer(GRC_LAYER_EN u32LayerId, HI_BOOL bEnable);

HI_S32 Grc_DRV_SetLayerAddr(GRC_LAYER_EN u32LayerId, HI_U32 u32Addr);
HI_S32 Grc_DRV_SetLayerStride(GRC_LAYER_EN u32LayerId, HI_U32 u32Stride);
HI_S32 Grc_DRV_SetLayerDataFmt(GRC_LAYER_EN u32LayerId, GRC_COLOR_FMT_E enDataFmt);
HI_S32 Grc_DRV_SetLayerAlpha(GRC_LAYER_EN u32LayerId, GRC_ALPHA_S *pAlpha);
HI_S32 Grc_DRV_SetLayKeyMask(HI_U32 u32LayerId, const Grc_COLOR_KEY_S *pstColorkey);
HI_S32 Grc_Drv_SetGfxScrnWin(HI_UNF_DISP_E enDisp, HI_RECT_S *pstOutRect);
HI_S32 Grc_DRV_UpdataLayerReg(GRC_LAYER_EN u32LayerId);

//Set Output Window Rectangular
HI_S32 Grc_DRV_SetHDRect(GRC_LAYER_EN u32LayerId, const GRC_RECT *pstInputRect, const GRC_RECT *pstOutputRect);
HI_S32 Grc_DRV_SetLayerRect(GRC_LAYER_EN u32LayerId, const GRC_RECT *pstInputRect, const GRC_RECT *pstOutputRect);
HI_S32 Grc_DRV_OpenLayer(GRC_LAYER_EN u32LayerId);
HI_S32 Grc_DRV_CloseLayer(GRC_LAYER_EN u32LayerId);
HI_S32 Grc_DRV_RefreshLayer(GRC_LAYER_REFRESH_S *pstLayerAttr);
HI_VOID Grc_Drv_Init(HI_VOID);
HI_VOID Grc_Drv_DeInit(HI_VOID);


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  /* __HI_UNF_GRC_H__ */

