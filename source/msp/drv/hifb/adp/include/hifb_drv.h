/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hifb_drv.h
Version             : Initial Draft
Author              : 
Created             : 2014/08/06
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file        
******************************************************************************/

#ifndef __HIFB_DRV_H__
#define __HIFB_DRV_H__


/*********************************add include here******************************/
#include <linux/fb.h>
#include "hi_tde_type.h"
#include "hifb.h"


/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */



/***************************** Macro Definition ******************************/


#define ADAPT_LAYER_SD_0    0
#define ADAPT_LAYER_SD_1    1
#define ADAPT_LAYER_HD_0    2
#define ADAPT_LAYER_HD_1    3
#define ADAPT_LAYER_AD_0    4
#define ADAPT_LAYER_AD_1    6
#define ADAPT_LAYER_BUTT (ADAPT_LAYER_AD_1+1)

typedef HI_S32  (* IntCallBack)(HI_VOID *pParaml, HI_VOID *pParamr);
typedef HI_U32  HIFB_LAYER_ID;


/*************************** Structure Definition ****************************/
typedef struct
{
    HI_BOOL bKeyEnable;      /*colorkey enable flag*//*CNcomment:colorkey 是否使能*/
    HI_BOOL bMaskEnable;    /*key mask enable flag*//*CNcomment:key mask 是否使能*/
    HI_U32 u32Key;              /*key value*/
    HI_U8 u8RedMask;          /*red mask*/
    HI_U8 u8GreenMask;       /*green mask*/
    HI_U8 u8BlueMask;          /*blue mask*/
    HI_U8 u8Reserved;           
    HI_U32 u32KeyMode;	 /*0:In region; 1:Out region*/

    /*Max colorkey value of red component*/
    /*CNcomment:colorkey红色分量最大值*/
    HI_U8 u8RedMax;

    /*Max colorkey value of Green component*/
    /*CNcomment:colorkey绿色分量最大值*/
    HI_U8 u8GreenMax; 

    /*Max colorkey value of blue component*/
    /*CNcomment:colorkey蓝色分量最大值*/
    HI_U8 u8BlueMax;           
    HI_U8 u8Reserved1;

    /*Min colorkey value of red component*/
    /*CNcomment:colorkey红色分量最小值*/
    HI_U8 u8RedMin;            

    /*Min colorkey value of Green component*/
    /*CNcomment:colorkey绿色分量最小值*/
    HI_U8 u8GreenMin;         

    /*Min colorkey value of blue component*/
    /*CNcomment:colorkey蓝色分量最小值*/
    HI_U8 u8BlueMin;            
    HI_U8 u8Reserved2;
}HIFB_COLORKEYEX_S;


typedef enum
{
    /*VO vertical timing interrupt */
    /*CNcomment:垂直时序中断*/
    HIFB_INTTYPE_VO,           

    /*VO format changed interrupt*/
    /*CNcomment:制式切换通知*/
    HIFB_INTTYPE_VO_DISP, 

    /*TDE job finished interrupt*/
    /*CNcomment:TDE完成中断*/
    HIFB_INTTYPE_TDE,   

    /*COMPRESSION ERROR interrupt*/
    /*CNcomment:压缩出错中断*/
    HIFB_INTTYPE_COMP_ERR,
    
    HIFB_INTTYPE_BUTT,
}HIFB_INT_TPYE_E;

typedef struct
{
    HIFB_RECT stClipRect;
    HI_BOOL bInRegionClip;
    HI_BOOL bClip;
}HIFB_CLIP_S;

typedef struct
{
    HIFB_ALPHA_S stAlpha;
    HIFB_COLORKEYEX_S stCKey;
    HIFB_CLIP_S stClip;
    HIFB_LAYER_ANTIFLICKER_LEVEL_E enAntiflickerLevel;
    HI_BOOL bScale;
    HI_BOOL bBlock;
    HI_BOOL bCallBack;
	IntCallBack pfnCallBack;
    HI_BOOL bRegionDeflicker;
    HI_VOID *pParam;
    HI_U32 u32CmapAddr;
}HIFB_BLIT_OPT_S;


/*scan mode*/
typedef enum
{
    HIFB_SCANMODE_P,
    HIFB_SCANMODE_I,
    HIFB_SCANMODE_BUTT,
}HIFB_SCAN_MODE_E;

/*layer state*/
typedef enum 
{
    HIFB_LAYER_STATE_ENABLE = 0x0,     /*Layer enable*/ /*CNcomment:层使能*/
    HIFB_LAYER_STATE_DISABLE,          /*Layer disable*/ /*CNcomment:层未使能*/
    HIFB_LAYER_STATE_INVALID,          /*Layer invalid*/ /*CNcomment:层无效,不存在*/
    HIFB_LAYER_STATE_BUTT 
} HIFB_LAYER_STATE_E;

typedef struct
{
    HIFB_SCAN_MODE_E enScanMode;
    HI_U32 u32ScreenWidth;
    HI_U32 u32ScreenHeight;
}DISP_INFO_S;

/** osd data information **/
typedef struct
{
    HIFB_LAYER_STATE_E eState;
    HI_U32  u32BufferPhyAddr; 
    HI_U32  u32RegPhyAddr; 
    HI_U32  u32Stride;        
    HI_S32  s32XPos;             
    HI_S32  s32YPos;  
    /**outRect size*/
    HI_U32  u32Width;             
    HI_U32  u32Height;             
    HIFB_COLOR_FMT_E   eFmt;
    HIFB_ALPHA_S       stAlpha;
    HIFB_COLORKEYEX_S  stColorKey; 
	HIFB_SCAN_MODE_E   eScanMode;
    //HI_BOOL bShow;
    HI_BOOL bPreMul;
    /*Screen width in current format*/
    /*CNcomment:当前制式下屏幕宽*/
    HI_U32 u32ScreenWidth;
    /*Screen height in current format*/
    /*CNcomment:当前制式下高度*/
    HI_U32  u32ScreenHeight;      
    /**InRect size*/
    HI_U32  u32InWidth;             
    HI_U32  u32InHeight;  
    HI_U32  s32XInPos;             
    HI_U32  s32YInPos; 
    /*Layer work mode, same source mode or different source mode*/
    /*CNcomment:图层工作模式，同源或非同源*/
    HI_U32  u32gfxWorkMode;  
}HIFB_OSD_DATA_S;


/*mask bit*/
typedef enum
{
    /*Color format*/
    /*CNcomment:颜色格式*/
    HIFB_LAYER_PARAMODIFY_FMT = 0x1,

    /*Line length*/
    /*CNcomment:行间距*/
    HIFB_LAYER_PARAMODIFY_STRIDE = 0x2,

    /*Alpha value*/
    /*CNcomment:alpha值*/
    HIFB_LAYER_PARAMODIFY_ALPHA = 0x4,

    /*Colorkey value*/
    /*CNcomment:colorkey值*/
    HIFB_LAYER_PARAMODIFY_COLORKEY = 0x8,

    /*Input rectangle*/
    /*CNcomment:输入矩形*/
    HIFB_LAYER_PARAMODIFY_INRECT = 0x10,

    /*Output rectangle*/
    /*CNcomment:输出矩形*/
    HIFB_LAYER_PARAMODIFY_OUTRECT = 0x20,

    /*Display buf address*/
    /*CNcomment:显示buffer地址*/
    HIFB_LAYER_PARAMODIFY_DISPLAYADDR = 0x40,

    /*State of show or hide*/
    /*CNcomment:显示隐藏状态*/
    HIFB_LAYER_PARAMODIFY_SHOW = 0x80,

    /*Whether premultiply data or not*/
    /*CNcomment:是否为预存数据*/
    HIFB_LAYER_PARAMODIFY_BMUL = 0x100,

    /*Anti deflicker level*/
    /*CNcomment:抗闪烁级别*/
    HIFB_LAYER_PARAMODIFY_ANTIFLICKERLEVEL = 0x200,
    HIFB_LAYER_PARAMODIFY_BUTT
}HIFB_LAYER_PARAMODIFY_MASKBIT_E;




/**
 **fb 驱动相关内容
 **/
typedef struct {
    const char *pszChipName;   /* chip name */
    HI_U32 u32LayerCount;      /* 支持的图层数 */
    HIFB_CAPABILITY_S pstCapability[HIFB_LAYER_ID_BUTT];

    HI_S32 (*HIFB_DRV_Init)(HI_VOID);
    HI_S32 (*HIFB_DRV_DeInit)(HI_VOID);
    HI_S32 (*HIFB_DRV_LayerDefaultSetting)(HIFB_LAYER_ID_E u32LayerId);
    HI_S32 (*HIFB_DRV_EnableLayer)(HIFB_LAYER_ID_E u32LayerId, HI_BOOL bEnable);
    HI_S32 (*HIFB_DRV_SetLayerZorder)(HIFB_LAYER_ID u32LayerId, HIFB_ZORDER_E eZorder);
    HI_S32 (*HIFB_DRV_GetLayerZorder)(HIFB_LAYER_ID u32LayerId, HI_U32* eZorder);
    HI_S32 (*HIFB_DRV_SetLayerAddr)(HIFB_LAYER_ID_E u32LayerId, HI_U32 u32Addr);
    HI_S32 (*HIFB_DRV_SetLayerStride)(HIFB_LAYER_ID_E u32LayerId, HI_U32 u32Stride);
    HI_S32 (*HIFB_DRV_SetLayerDataFmt)(HIFB_LAYER_ID_E u32LayerId, HIFB_COLOR_FMT_E enDataFmt);
    HI_S32 (*HIFB_DRV_SetColorReg)(HIFB_LAYER_ID_E u32LayerId, HI_U32 u32OffSet, HI_U32 u32Color, HI_S32 UpFlag);
    HI_S32 (*HIFB_DRV_WaitVBlank)(HIFB_LAYER_ID_E u32LayerId);
    HI_S32 (*HIFB_DRV_SetLayerDeFlicker)(HIFB_LAYER_ID_E u32LayerId, HIFB_DEFLICKER_S stDeFlicker);
    HI_S32 (*HIFB_DRV_SetLayerAlpha)(HIFB_LAYER_ID_E u32LayerId, HIFB_ALPHA_S stAlpha);
    HI_S32 (*HIFB_DRV_SetLayerRect)(HIFB_LAYER_ID_E u32LayerId, const HIFB_RECT *pstInputRect, const HIFB_RECT *pstOutputRect);
    HI_S32 (*HIFB_DRV_SetHDRect)   (HIFB_LAYER_ID_E u32SrcLayerId, const HIFB_RECT *pstInputRect, const HIFB_RECT *pstOutputRect);
    HI_S32 (*HIFB_DRV_ColorConvert)(const struct fb_var_screeninfo *pstVar, HIFB_COLORKEYEX_S *pCkey);
    HI_S32 (*HIFB_DRV_SetLayerKeyMask)(HIFB_LAYER_ID_E u32LayerId, const HIFB_COLORKEYEX_S* pstColorkey);
    HI_S32 (*HIFB_DRV_UpdataLayerReg)(HIFB_LAYER_ID_E u32LayerId);
    HI_S32 (*HIFB_DRV_WaitRegUpdateFinished)(HIFB_LAYER_ID_E u32LayerId);
    HI_S32 (*HIFB_DRV_SetPreMul)(HIFB_LAYER_ID_E u32LayerId, HI_BOOL bPreMul);
    HI_S32 (*HIFB_DRV_SetClutAddr)(HIFB_LAYER_ID_E u32LayerId, HI_U32 u32PhyAddr);
    HI_S32 (*HIFB_DRV_GetOSDData)(HIFB_LAYER_ID_E u32LayerId, HIFB_OSD_DATA_S *pstLayerData);
    HI_S32 (*HIFB_DRV_SetIntCallback)(HIFB_INT_TPYE_E eIntType, IntCallBack pCallBack, HIFB_LAYER_ID_E u32LayerId);
    HI_S32 (*HIFB_DRV_OpenDisplay)(HI_VOID);
    HI_S32 (*HIFB_DRV_CloseDisplay)(HI_VOID);
    HI_S32 (*HIFB_DRV_OpenLayer)(HIFB_LAYER_ID_E u32LayerId);
    HI_S32 (*HIFB_DRV_CloseLayer)(HIFB_LAYER_ID_E u32LayerId);
	HI_S32 (*HIFB_DRV_GetHaltDispStatus)(HI_U32 uLayerID,HI_BOOL *pbDispInit);
    HI_S32 (*HIFB_DRV_SetEncPicFraming)(HI_U32 u32LayerId, HIFB_ENCODER_PICTURE_FRAMING_E enStereoMode);  
    HI_S32 (*HIFB_DRV_GetGFXCap)(HIFB_CAPABILITY_S *pstCap);
    
}HIFB_DRV_OPS_S;
/**
 **fb要调用的TDE接口
 **/
typedef struct{
	HI_S32   (*HIFB_DRV_Blit)(HIFB_BUFFER_S *pSrcImg, HIFB_BUFFER_S *pDstImg,  HIFB_BLIT_OPT_S *pstOpt,HI_BOOL bScreenRefresh);
	HI_S32   (*HIFB_DRV_ClearRect)(HIFB_SURFACE_S* pDstImg, HIFB_BLIT_OPT_S* pstOpt);
	HI_S32   (*HIFB_DRV_SetTdeCallBack)(IntCallBack pTdeCallBack);
	HI_VOID  (*HIFB_DRV_WaitAllTdeDone)(HI_BOOL bSync);
	HI_S32   (*HIFB_DRV_TdeSupportFmt)(HIFB_COLOR_FMT_E fmt);
	HI_S32   (*HIFB_DRV_CalScaleRect)(const TDE2_RECT_S* pstSrcRect, const TDE2_RECT_S* pstDstRect,TDE2_RECT_S* pstRectInSrc, TDE2_RECT_S* pstRectInDst);
	HI_S32   (*HIFB_DRV_WaitForDone)(TDE_HANDLE s32Handle, HI_U32 u32TimeOut);
	HI_S32   (*HIFB_DRV_TdeOpen)(HI_VOID);
	HI_S32   (*HIFB_DRV_TdeClose)(HI_VOID);
}HIFB_DRV_TDEOPS_S;


/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/

HI_VOID HIFB_DRV_GetTdeOps(HIFB_DRV_TDEOPS_S *Ops);



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HIFB_DRV_H__ */
