/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hifb_p.h
Version             : Initial Draft
Author              : 
Created             : 2014/08/06
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file        
******************************************************************************/

#ifndef __HIFB_P_H__
#define __HIFB_P_H__


/*********************************add include here******************************/
#include "hi_type.h"
#include <linux/fb.h>
#include "hifb_scrolltext.h"

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */



/***************************** Macro Definition ******************************/

#define MAX_FB  32          /* support 32 layers most, the limit is from linux fb*/


/* HD */
#define HIFB_HD_DEF_WIDTH    1920                          /* unit: pixel          */
#define HIFB_HD_DEF_HEIGHT   1080                          /* unit: pixel          */
#define HIFB_HD_DEF_STRIDE   (HIFB_HD_DEF_WIDTH*4)         /* unit: byte           */
#define HIFB_HD_DEF_VRAM     7200                          /* unit:KB 1280*720*4*2 */
/* SD */
#define HIFB_SD_DEF_WIDTH    720
#define HIFB_SD_DEF_HEIGHT   576
#define HIFB_SD_DEF_STRIDE   (HIFB_SD_DEF_WIDTH*4)
#define HIFB_SD_DEF_VRAM     3240                         /* unit:KB 720*576*4 */
/* AD，逻辑限制为256 * 256 */
#define HIFB_AD_DEF_WIDTH    1920
#define HIFB_AD_DEF_HEIGHT   1080
#define HIFB_AD_DEF_STRIDE   (HIFB_AD_DEF_WIDTH*4)
#define HIFB_AD_DEF_VRAM      640
/* CURSOR */
#define HIFB_CURSOR_DEF_VRAM (64*2)   /*unit is 1024Bytes,for doudble buffer mode,we need 2 memory buffer, save cursor*/

#define HIFB_DEF_DEPTH         16      /* 像素深度 */

#define HIFB_DEF_XSTART        0
#define HIFB_DEF_YSTART        0
#define HIFB_DEF_ALPHA         0xff
#define HIFB_DEF_PIXEL_FMT     HIFB_FMT_ARGB1555   /* 默认支持ARGB1555 */

#define HIFB_IS_CLUTFMT(eFmt)       (HIFB_FMT_1BPP <= (eFmt) && (eFmt) <= HIFB_FMT_ACLUT88)
#define HIFB_ALPHA_OPAQUE           0xff
#define HIFB_ALPHA_TRANSPARENT      0x00
#define HIFB_DEFLICKER_LEVEL_MAX    5       /* support level 5 deflicker most */
#define HIFB_MAX_CURSOR_WIDTH       128
#define HIFB_MAX_CURSOR_HEIGHT      128
#define HIFB_CMAP_SIZE               0x0     /*unit:KB 256*4*/

#define HIFB_MAX_LAYER_ID           (HIFB_LAYER_ID_BUTT - 1)			/** 最大图层ID **/
#define HIFB_MAX_LAYER_NUM          (HIFB_LAYER_ID_BUTT)           /** 最大图层数 **/

#define IS_SD_LAYER(LayerId) (LayerId <= HIFB_LAYER_SD_1)
#define IS_HD_LAYER(LayerId) (LayerId >= HIFB_LAYER_HD_0 && LayerId <= HIFB_LAYER_HD_1)
#define IS_AD_LAYER(LayerId) (LayerId == HIFB_LAYER_AD_0 || LayerId == HIFB_LAYER_AD_1)


/*************************** Structure Definition ****************************/

typedef enum
{
	HIFB_ANTIFLICKER_NONE,	/* no antiflicker.If scan mode is progressive, hifb will set antiflicker mode to none */
	HIFB_ANTIFLICKER_TDE,	/* tde antiflicker mode, it's effect for 1buf or 2buf only */
	HIFB_ANTIFLICKER_VO,	/* vo antiflicker mode, need hardware supprot */
	HIFB_ANTIFLICKER_BUTT
} HIFB_LAYER_ANTIFLICKER_MODE_E;

typedef struct
{
    HIFB_POINT_S stPos;
    HIFB_POINT_S stStereoPos;
    HIFB_POINT_S stUserPos;
    HI_U32 u32DisplayWidth;
    HI_U32 u32DisplayHeight;
    HI_U32 u32ScreenWidth;
    HI_U32 u32ScreenHeight;
    HI_U32 u32StereoScreenWidth;
    HI_U32 u32StereoScreenHeight;
    HI_U32 u32UserScreenWidth;
    HI_U32 u32UserScreenHeight;
    HI_BOOL bPreMul;
    HI_BOOL bNeedAntiflicker;
    HIFB_LAYER_ANTIFLICKER_LEVEL_E enAntiflickerLevel; /* antiflicker level */
    HIFB_LAYER_ANTIFLICKER_MODE_E enAntiflickerMode; /* antiflicker mode */
    //HIFB_LAYER_SCALE_MODE_E enScaleMode; /* scale mode */
    HI_U32 u32VirXRes;
    HI_U32 u32VirYRes;
    HI_U32 u32XRes;
    HI_U32 u32YRes;
    HI_U32 u32MaxScreenWidth;
    HI_U32 u32MaxScreenHeight;
    HIFB_ENCODER_PICTURE_FRAMING_E enEncPicFraming;
}HIFB_DISPLAY_INFO_S;

#define HIFB_MAX_ACC_RECT_NUM 100
#define HIFB_MAX_FLIPBUF_NUM 3
typedef struct 
{
    HIFB_LAYER_BUF_E enBufMode;
    HI_BOOL bNeedFlip;
    HI_BOOL bFliped;	                           /* a flag to record buf has been swithed no not in vo isr, effect only in 2 buf mode*/
    HI_BOOL bRefreshed;
    HI_U32 u32IndexForInt;	                       /* index of screen buf*/
    HIFB_BUFFER_S stUserBuffer;                   /** 用户buffer，用户设置的相关信息 **/
    HI_U32 u32DisplayAddr[HIFB_MAX_FLIPBUF_NUM];  /* array to record display buf addr */
    HI_U32 u32ScreenAddr;	                       /* screen buf addr */
    HI_U32 u32StereoMemStart;
    HI_U32 u32StereoMemLen;
    HI_U32 u32BufNum;
    HIFB_SURFACE_S stStereoSurface;
    HI_U32 u32IntPicNum;	/* buf switch num in 2 buf mode */
    HI_U32 u32RefreshNum;	/* refresh request num in 2 buf mode */
    HIFB_RECT stUnionRect;	/* union refresh rect */
    HIFB_RECT stStereoUnionRect;
    HI_BOOL bCompNeedUpdate;
    HI_BOOL bComDirty;
    HIFB_RECT stCompUnionRect;
    HIFB_RECT stInRect;
    HI_S32 s32RefreshHandle;    /* refresh handle */
}HIFB_BUF_INFO_S;

typedef struct
{
    /*For cursor layer, stCursor means cursor buffer, it is alloced and freed
     both by user;for general layer,stCursor means back buf*/
	HIFB_CURSOR_S stCursor; 

    /*For cursor layer,you can quary whether cursor attach to a certain layer
     for general layer, you can quary whether cursor attach to it*/
    HI_U32 bAttched;

    /*back buf is valid no not*/ 
    //HI_BOOL bValid;

    /*valid area:overlap region between attached layer and cursor layer*/
    HIFB_RECT stRectInDispBuf;

    /*the orignal position of cursor, usually is (0,0) but also has different when at margin*/	
    HIFB_POINT_S stPosInCursor;
}HIFB_CURSOR_INFO_S;


/* hifb private data */
typedef struct
{
    HI_U32  u32LayerID;               /* layer id */
    HI_BOOL bShow;                     /* show status */
	HI_BOOL bSetPar;
    HIFB_COLOR_FMT_E   enColFmt;       /* color format */
    HIFB_ALPHA_S       stAlpha;        /* alpha attribution */
    HIFB_COLORKEYEX_S  stCkey;         /* colorkey attribution */
    HI_U32     u32HDflevel;           /* horizontal deflicker level */
    HI_U32     u32VDflevel;           /* vertical deflicker level */
    HI_UCHAR   ucHDfcoef[HIFB_DEFLICKER_LEVEL_MAX - 1]; /* horizontal deflicker coefficients */
    HI_UCHAR   ucVDfcoef[HIFB_DEFLICKER_LEVEL_MAX - 1]; /* vertical deflicker coefficients */
    HIFB_DISPLAY_INFO_S stDisplayInfo;                  /* display info */
    HIFB_BUF_INFO_S     stBufInfo;
    HIFB_CURSOR_INFO_S stCursorInfo;
    HI_U32  u32ParamModifyMask;
    HI_BOOL bModifying;
    HI_BOOL bBootLogoToApp;
    HI_U32  u32Scaling;             /* the scaling display height from 1080 to 480*/
    HIFB_SURFACE_S CanvasSur;       /* canvas surface */
    atomic_t ref_count;             /* framebuffer reference count */ 
    volatile HI_U32 vblflag;
    wait_queue_head_t vblEvent;
    HI_BOOL bRefreshByDisp;
    HIFB_STEREO_MODE_E enStereoMode;
    HI_BOOL bSetStereoMode;
    HI_BOOL bCompression;       /*whether the compression function was open*/ 
    HI_BOOL bCompAvailable;     /*whether the compression function was available*/
	HI_BOOL bCompNeedOpen;      /*after comp_err ,wo should open comp again*/
	struct timeval stCompTime; /*record the time that compress usr data*/

#ifdef HIFB_INDIA_PROJECT_SUPPORT
	HIFB_ZORDER_E      eZorder;   /** layer order        **/
	HI_BOOL            bHD1Open;  /** virtual layer open **/
	HI_U32             u8GlobalAlpha;
#endif

} HIFB_PAR_S;



/**
 **图层的参数信息
 **/
typedef struct 
{
    struct fb_info *pstInfo;     /** 连续HIFB和fb的桥梁，有多少个图层，就有多少个 **/
    HI_U32    u32LayerSize;       /** 图层需要的内存大小 **/
} HIFB_LAYER_S;
/**
 **图层类型
 **/
typedef enum 
{
    HIFB_LAYER_TYPE_HD,          /** 高清图层     **/
    HIFB_LAYER_TYPE_SD,          /** 标清图层     **/
    HIFB_LAYER_TYPE_AD,          /** 字幕鼠标图层 **/
    HIFB_LAYER_TYPE_BUTT,    
}HIFB_LAYER_TYPE_E;


typedef struct
{
    struct fb_bitfield stRed;     /* bitfield in fb mem if true color, */
    struct fb_bitfield stGreen;   /* else only length is significant */
    struct fb_bitfield stBlue;
    struct fb_bitfield stTransp;  /* transparency	*/
} HIFB_ARGB_BITINFO_S;

/**extern for scrolltext.c*/

/********************** Global Variable declaration **************************/

/* the interface to operate the chip */
extern HIFB_DRV_TDEOPS_S s_stDrvTdeOps;

/* to save layer id and layer size */
extern HIFB_LAYER_S s_stLayer[HIFB_MAX_LAYER_NUM];

#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
extern HIFB_SCROLLTEXT_INFO_S s_stTextLayer[HIFB_LAYER_ID_BUTT];
#endif


/******************************* API declaration *****************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HIFB_P_H__ */
