























































/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : optm_hifb.c
Version             : Initial Draft
Author              :
Created             : 2014/08/06
Description         :
Function List       :
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file
******************************************************************************/

/*********************************add include here******************************/
#ifndef __BOOT__
	#include <linux/string.h>
	#include <linux/fb.h>
	#include <linux/time.h>
	#include <linux/version.h>
	#include <linux/module.h>
	#include <linux/types.h>
	#include <linux/errno.h>
	#include <linux/fcntl.h>
	#include <linux/mm.h>
	#include <linux/miscdevice.h>
	#include <linux/proc_fs.h>
	#include <linux/fs.h>
	#include <linux/slab.h>
	#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
	#include <linux/smp_lock.h>
	#endif
	#include <linux/init.h>
	#include <linux/delay.h>
	#include <asm/uaccess.h>
	#include <asm/io.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(3, 18, 0))
	#include <asm/system.h>
#endif
	#include <linux/interrupt.h>
	#include <linux/ioport.h>
	#include <linux/string.h>
#else
#ifndef HI_MINIBOOT_SUPPORT
    #include <common.h>
#endif
#endif


#include "optm_m_disp.h"

#include "optm_hifb.h"

#include "optm_hal.h"
#include "optm_alg_api.h"

/***************************** Macro Definition ******************************/
/** definitions of functional switches **/

/* wait v blanking */
#define OPTM_HIFB_WVM_ENABLE                     1
/*  call-back after registers' update */
#define OPTM_HIFB_GFXRR_ENABLE                   1
#define OPTM_MAX_LOGIC_HIFB_LAYER               ((HI_U32)OPTM_GFX_LAYER_BUTT)
#define OPTM_INVALID_LAYER_ID                    0xffffffffL


#define OPTM_GFX_MAX_SINK_NUMBER  2
#define ADAPT_LAYER_SD_0           0
#define ADAPT_LAYER_SD_1           1
#define ADAPT_LAYER_HD_0           2
#define ADAPT_LAYER_HD_1           3
#define ADAPT_LAYER_AD_0           4
#define ADAPT_LAYER_AD_1           6
#define ADAPT_LAYER_BUTT           (ADAPT_LAYER_AD_1+1)


#ifndef HI_ADVCA_FUNCTION_RELEASE
#define Print DEBUG_PRINTK
#else
#define Print(x...)
#endif

/**========================================================
            debug problem
 =======================================================**/
//#define OPTM_HIFB_DEBUG

//#define OPTM_HIFB_PRINT


#ifndef HI_ADVCA_FUNCTION_RELEASE

	#ifndef __BOOT__
		#define OPTM_HIFB_TRACE(fmt, args... )\
   		do { \
             printk(fmt, ##args );\
    	} while (0)
	#else
		#define OPTM_HIFB_TRACE(fmt, args... )\
        do { \
                 printf(fmt, ##args );\
        } while (0)
	#endif

#else

	#define OPTM_HIFB_TRACE(fmt, args... )  {do{}while(0);}

#endif

#if defined(OPTM_HIFB_DEBUG) && (!defined(HI_ADVCA_FUNCTION_RELEASE))
#define OPTM_HIFB_TRACE(fmt, args... )\
    do { \
             DEBUG_PRINTK(fmt);\
    } while (0)

#else
#define D_OPTM_HIFB_PRINT(fmt...)
#endif


#ifdef OPTM_HIFB_DEBUG
//#define OPTM_HIFB_DEBUG_WVM 1
#define OPTM_HIFB_DEBUG_WRR 1
#endif



/**
 **性能统计的时候打开
 **/
//#define TEST_OPTMHIFB_CAPA

#ifdef TEST_OPTMHIFB_CAPA
static HI_S32 s32Time0[2] = {0};
static HI_S32 s32Time1[2] = {0};
static HI_S32 s32Time2[2] = {0};
static HI_S32 s32Time3[2] = {0};
static HI_BOOL bWaitTimeOut = HI_FALSE;

#define OPTMHIFB_TINIT()   struct timeval tv_start, tv_end; unsigned int time_cost,line_start
#define OPTMHIFB_TSTART()  do_gettimeofday(&tv_start);line_start = __LINE__
#define OPTMHIFB_TEND()    \
do_gettimeofday(&tv_end); \
time_cost = ((tv_end.tv_usec - tv_start.tv_usec) + (tv_end.tv_sec - tv_start.tv_sec)*1000000);  \
OPTM_HIFB_TRACE("=============================================================================\n"); \
OPTM_HIFB_TRACE("FROM LINE: %d TO LINE: %d COST: %d us\n",line_start, __LINE__, time_cost);         \
OPTM_HIFB_TRACE("=============================================================================\n")
#endif

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

/**definitions of data format**/
typedef union _OPTM_GFX_UP_FLAG_U
{
    /*  Define the struct bits */
    struct
    {
        unsigned int    RegUp       : 1 ; /*  [0] */
        unsigned int    Enable      : 1 ; /*  [1] */
        unsigned int    InRect      : 1 ; /*  [2] */
        unsigned int    OutRect     : 1 ; /*  [3] */
        unsigned int    Alpha       : 1 ; /*  [4] */
        unsigned int    PreMute     : 1 ; /*  [5] */
        unsigned int    Reserved    : 26; /*  [31...6] */
    } bits;

    /*  Define an unsigned member */
    unsigned int    u32;

}OPTM_GFX_UP_FLAG_U;


typedef enum tagOPTM_GFX_WORK_MODE_E
{
    OPTM_GFX_WORK_MODE_MASTER = 0,
    OPTM_GFX_WORK_MODE_SLAVE,
    OPTM_GFX_WORK_MODE_BUTT
}OPTM_GFX_WORK_MODE_E;


typedef struct tagOPTM_GFX_LAYER_S{
    HI_BOOL bOpened;
    HI_BOOL bEnable;
    //HI_U32  u32MaskCnt;
    HI_BOOL  bMaskFlag;

    OPTM_GFX_WORK_MODE_E enWorkMode;

    HAL_DISP_LAYER_E enGfxId;
    HAL_DISP_OUTPUTCHANNEL_E enDispCh;

    HAL_DISP_INTERRUPTMASK_E enIntNumber;
    HI_S32 s32WorkIsrCallOrder;
    HI_S32 s32DispIsrCallOrder;

    HI_RECT_S stInRect;
    HI_RECT_S stOutRect;

    OPTM_GFX_ALPHA_S     stAlpha;
    HI_BOOL              bPreMute;

    HI_BOOL              b3DEnable;
    OPTM_GFX_3D_MODE_E   en3DMode;

    HI_BOOL              bSharpEnable;

    HI_BOOL              bCampEnable;
    HI_BOOL              bBufferChged;
    HI_U32               s32BufferChgCount;
    HI_U32               NoCmpBufAddr;
    HI_U16               Stride;              // no compression mode stride
    HI_U16               CmpStride;       // compression mode stride

    /*  about color  */
    OPTM_CS_E enSrcCs;
    OPTM_CS_E enDstCs;

    OPTM_CSC_STATE_E CscState;

    HI_U32 Bright;
    HI_U32 Contrast;
    HI_U32 Saturation;
    HI_U32 Hue;
    HI_U32 Kr;
    HI_U32 Kg;
    HI_U32 Kb;

    MMZ_BUFFER_S stCluptTable;

#ifdef OPTM_HIFB_WVM_ENABLE
    HAL_DISP_INTERRUPTMASK_E enWVBIntNumber;
    HI_S32 s32WBIsrCallOrder;

    volatile HI_U32 vblflag;
#ifndef __BOOT__
    wait_queue_head_t vblEvent;
#endif
#endif

#ifdef OPTM_HIFB_GFXRR_ENABLE
    HAL_DISP_INTERRUPTMASK_E enWRRIntNumber;
    HI_S32 s32RRIsrCallOrder;

    volatile HI_U32 RRflag;
#ifndef __BOOT__
    wait_queue_head_t RREvent;
#endif
#endif

    /* settings of write-back */
    //HI_BOOL bWbcEnable;

    /*  from ID of graphic layer */
    OPTM_GFX_LAYER_EN enSlvGfxId;

    OPTM_GFX_UP_FLAG_U unUpFlag;


    /* connected source */
    //HAL_DISP_LAYER_E enSourceId;

    /* connected sink */
    //HAL_DISP_LAYER_E enSinkId[OPTM_GFX_MAX_SINK_NUMBER];
}OPTM_GFX_LAYER_S;


typedef struct tagOPTM_GFX_WBC_S{
    HI_BOOL                bOpened;
    HI_BOOL                bEnable;
    HAL_DISP_LAYER_E       enGfxId;

    /* setting */
    HI_S32                 s32BufferWidth;
    HI_S32                 s32BufferHeight;
    HI_U32                 u32BufferStride;
    MMZ_BUFFER_S           stFrameBuffer;

    HI_U32                 u32DataPoint;  /* 0, feeder; others, reserve */
    HAL_DISP_PIXELFORMAT_E enDataFmt;

    HI_RECT_S              stInRect;
    HI_BOOL                bInProgressive;
    HI_RECT_S              stOutRect;
    HI_BOOL                bOutProgressive;
    HI_U32                 u32BtmOffset;

    HI_BOOL                bHdDispProgressive;
}OPTM_GFX_WBC_S;


typedef struct tagOPTM_GFX_WBC2_TASK_CFG_S
{
    HI_RECT_S stInRect;
    HI_S32    s32InTBP;  /* 0, t; 1, b; 2, frame */
    HI_RECT_S stOutRect;
    HI_S32    s32OutTBP; /* 0, t; 1, b; 2, frame */

    HI_U32    u32PhyAddr;
    HI_U32    u32Stride;
}OPTM_GFX_WBC2_TASK_CFG_S;



/** 这个要和optm_hifb_adp.c中对应 **/
const OPTM_GFX_CAP_S g_stGfxCap[OPTM_MAX_LOGIC_HIFB_LAYER] =
{
    /* SD0/fb0 */
    {
		.bLayerSupported = HI_TRUE,
		.bColFmt      = {1,0,1,1,  1,1,1,1,  0,1,1,0,   1,1,0,1,   1,1,0,1,   1,1,0,0,  0,0,0,0,  0,0,0,0, 0,0}, /** 34 **/
		.bZoom        = HI_TRUE,
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_FALSE,
		.u32MaxWidth  = 720,
		.u32MaxHeight = 576,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,  /* not surpport */
		.u32HDefLevel = 0,  /* not surpport */
		.bHasCmapReg  = HI_FALSE,
    },

     /* SD1/fb1 */
    {
		.bLayerSupported = HI_FALSE,
		.bColFmt      = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  1,1,1,1, 1,1}, /** 34 **/
		.bZoom        = HI_TRUE,
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,  /* not surpport */
		.u32HDefLevel = 0,  /* not surpport */
		.bHasCmapReg  = HI_TRUE,
    },
    /* HD0/fb2 */
    {
		.bLayerSupported = HI_TRUE,
		.bColFmt      = {1,0,1,1,  1,1,1,1,  0,1,1,0,   1,1,0,1,   1,1,0,1,   1,1,0,0,  0,1,0,0,  0,0,0,0, 0,0}, /** 34 **/
		.bZoom        = HI_TRUE,
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,  /* not surpport */
		.u32HDefLevel = 0,  /* not surpport */
		.bHasCmapReg  = HI_TRUE,
    },
    /* HD1/fb3 */
    {
		.bLayerSupported = HI_FALSE,
		.bColFmt      = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  1,1,1,1, 1,1}, /** 34 **/
		.bZoom        = HI_TRUE,
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,  /* not surpport */
		.u32HDefLevel = 0,  /* not surpport */
		.bHasCmapReg  = HI_TRUE,

    },
    /* HC0 */
    {
		.bLayerSupported = HI_FALSE,
		.bColFmt      = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  0,0,0,0, 0,0},/** 34 **/
		.bZoom        = HI_TRUE,
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,  /* not surpport */
		.u32HDefLevel = 0,  /* not surpport */
		.bHasCmapReg  = HI_TRUE,

    },
    /* HC1 */
    {
		.bLayerSupported = HI_FALSE,
		.bColFmt      = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  0,0,0,0, 0,0},/** 34 **/
		.bZoom        = HI_TRUE,
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,  /* not surpport */
		.u32HDefLevel = 0,  /* not surpport */
		.bHasCmapReg  = HI_TRUE,
    },
    /* AD0/fb4 */
    {
		.bLayerSupported = HI_TRUE,
		.bColFmt      = {1,0,1,1,  1,1,1,1,  0,1,1,0,   1,1,0,1,   1,1,0,1,   1,1,0,0,  0,0,0,0,  0,0,0,0, 0,0},/** 34 **/
		.bZoom        = HI_TRUE,
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_FALSE,
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 128,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,  /* not surpport */
		.u32HDefLevel = 0,  /* not surpport */
		.bHasCmapReg  = HI_FALSE,
    },
    /* AD1 */
    {
		.bLayerSupported = HI_FALSE,
		.bColFmt      = {1,1,1,1,  1,1,1,1,  1,1,1,1,   1,1,1,1,   1,1,1,1,   1,1,1,1,  1,1,1,1,  0,0,0,0, 0,0},/** 34 **/
		.bZoom        = HI_TRUE,
        .bKeyAlpha    = HI_TRUE,
		.bGlobalAlpha = HI_TRUE,
		.bCmap        = HI_TRUE,
		.u32MaxWidth  = 1920,
		.u32MaxHeight = 1080,
		.u32MinWidth  = 32,
		.u32MinHeight = 32,
		.u32VDefLevel = 0,  /* not surpport */
		.u32HDefLevel = 0,  /* not surpport */
		.bHasCmapReg  = HI_TRUE,
    },
};

/******************************************************************
                   definitions of global variables
******************************************************************/
HI_S32 g_s32OptmGfxInitFlag = 0;

/* WORKMODE */
OPTM_GFX_MODE_EN g_enOptmGfxWorkMode = OPTM_GFX_MODE_NORMAL;

/* HD0/SD0 */
OPTM_GFX_LAYER_S g_stGfxDevice[OPTM_MAX_LOGIC_HIFB_LAYER];

OPTM_GFX_WBC_S  g_stGfxWbc2;
OPTM_GFX_WBC_S  g_stGfxWbc3;

/* ZME COEF */
OPTM_GZME_COEF_S  g_stZmeModule;

HI_U32 g_LayerId[OPTM_MAX_LOGIC_HIFB_LAYER];

/**
 **mce是否使能
 **/
static HI_BOOL gs_bLogoMceEnable = HI_FALSE;
static HI_U32 gs_OpenLayreNum = 0;

/******************************************************************
                     macro definitions
******************************************************************/
#define D_OPTM_HIFB_CheckDispOpen(u32LayerId)  \
do{ if (u32LayerId >= OPTM_GFX_LAYER_BUTT){  \
      D_OPTM_HIFB_PRINT("no suppout Layer!\n"); \
      return HI_FAILURE;}    \
    if (g_s32OptmGfxInitFlag == 0){     \
      D_OPTM_HIFB_PRINT("Error! Gfx not init\n"); \
      return HI_FAILURE;}    \
}while(0)


#define D_OPTM_HIFB_CheckDispAndGfxOpen(u32LayerId)  \
do{ if (u32LayerId >= OPTM_GFX_LAYER_BUTT){  \
      D_OPTM_HIFB_PRINT("no suppout Layer!\n"); \
      return HI_FAILURE;}    \
    if (g_s32OptmGfxInitFlag == 0){     \
      D_OPTM_HIFB_PRINT("Error! Gfx not init\n"); \
      return HI_FAILURE;}    \
    if (g_stGfxDevice[u32LayerId].bOpened != HI_TRUE){     \
      D_OPTM_HIFB_PRINT("Error! Gfx not open\n"); \
      return HI_FAILURE;}    \
}while(0)


#define D_OPTM_HIFB_CheckSuccess(u32Ret)  \
do{ if (u32Ret != HI_SUCCESS){  \
      D_OPTM_HIFB_PRINT("GFX ERROR! FILE:%s, FUNCTION:%s, Line:%d\n", __FILE__, __FUNCTION__, __LINE__); \
    }        \
}while(0)



/********************** Global Variable declaration **************************/

/**
 **像素格式，这个要和寄存器中定义的对应
 **/
HAL_DISP_PIXELFORMAT_E enHalFmt[]=
{
	HAL_INPUTFMT_CLUT_1BPP,
	HAL_INPUTFMT_CLUT_2BPP,
	HAL_INPUTFMT_CLUT_4BPP,
	HAL_INPUTFMT_CLUT_8BPP,

	HAL_INPUTFMT_ACLUT_44,
	HAL_INPUTFMT_RGB_444,
	HAL_INPUTFMT_RGB_555,
	HAL_INPUTFMT_RGB_565,

	HAL_INPUTFMT_CbYCrY_PACKAGE_422_GRC,
	HAL_INPUTFMT_YCbYCr_PACKAGE_422_GRC,
	HAL_INPUTFMT_YCrYCb_PACKAGE_422_GRC,
	HAL_INPUTFMT_ACLUT_88,

	HAL_INPUTFMT_ARGB_4444,
	HAL_INPUTFMT_ARGB_1555,
	HAL_INPUTFMT_RGB_888,
	HAL_INPUTFMT_YCbCr_888,

	HAL_INPUTFMT_ARGB_8565,
	HAL_INPUTFMT_ARGB_6666,
	HAL_INPUTFMT_KRGB_888,
	HAL_INPUTFMT_ARGB_8888,

	HAL_INPUTFMT_AYCbCr_8888,
	HAL_INPUTFMT_RGBA_4444,
	HAL_INPUTFMT_RGBA_5551,
	HAL_INPUTFMT_RGBA_6666,

	HAL_INPUTFMT_RGBA_5658,
	HAL_INPUTFMT_RGBA_8888,
	HAL_INPUTFMT_YCbCrA_8888,
	HAL_INPUTFMT_RGB_565,

	HAL_INPUTFMT_RGB_888,
	HAL_INPUTFMT_ARGB_4444,
	HAL_INPUTFMT_ARGB_1555,
	HAL_INPUTFMT_ARGB_8888,

	HAL_INPUTFMT_ARGB_8565,
	HAL_INPUTFMT_RGB_444,
	HAL_INPUTFMT_RGB_555,
	HAL_INPUTFMT_KRGB_888,

};

/******************************* API realization *****************************/

HI_VOID OPTM_GfxWVBCallBack(HI_U32 enLayerId, HI_U32 u32Param1);
HI_VOID OPTM_GfxWaitRRCallBack(HI_U32 enLayerId, HI_U32 u32Param1);
HI_S32 OPTM_GFX_OpenWbc2(OPTM_GFX_WBC_S *pstWbc2);
HI_S32 OPTM_GFX_CloseWbc2(OPTM_GFX_WBC_S *pstWbc2);
HI_VOID OPTM_Wbc2Isr(HI_U32 u32Param0, HI_U32 u32Param1);

/*  in WBC mode, call-back function of switching for SD display system */
HI_VOID OPTM_DispInfoCallbackUnderWbc(HI_U32 u32Param0, HI_U32 u32Param1);


/***************************************************************************************
* func          : OPTM_GfxInit
* description   : CNcomment: 初始化MCE进来一次，APP进来一次，但是APP不会再执行 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxInit(HI_VOID)
{
    HI_S32 ret, i;

    if (1 == g_s32OptmGfxInitFlag)
    {
        return HI_SUCCESS;
    }

    memset(&(g_stGfxDevice[0]), 0, sizeof(OPTM_GFX_LAYER_S)*OPTM_MAX_LOGIC_HIFB_LAYER);
    memset(&g_stGfxWbc2, 0, sizeof(OPTM_GFX_WBC_S));

    g_stGfxDevice[OPTM_GFX_LAYER_SD0].enGfxId = HAL_DISP_LAYER_GFX1;
    g_stGfxDevice[OPTM_GFX_LAYER_HD0].enGfxId = HAL_DISP_LAYER_GFX0;
	g_stGfxDevice[OPTM_GFX_LAYER_AD0].enGfxId = HAL_DISP_LAYER_GFX2;
	g_stGfxDevice[OPTM_GFX_LAYER_AD1].enGfxId = HAL_DISP_LAYER_GFX3;

	g_stGfxDevice[OPTM_GFX_LAYER_HD0].bSharpEnable = HI_FALSE; /** MV310不支持 **/
    ret = OPTM_AA_InitGzmeCoef(&g_stZmeModule, HI_FALSE);
    if (ret)
    {
        D_OPTM_HIFB_PRINT("VO malloc Gzme coeff buffer failed\n");
        return ret;
    }

    for (i=OPTM_GFX_LAYER_SD0; i<OPTM_GFX_LAYER_BUTT; i++)
    {
        g_stGfxDevice[i].bOpened = HI_FALSE;
    }

    g_enOptmGfxWorkMode  = OPTM_GFX_MODE_NORMAL;
    g_s32OptmGfxInitFlag = 1;

    return HI_SUCCESS;

}
/***************************************************************************************
* func          : OPTM_GfxDeInit
* description   : CNcomment: 去初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxDeInit(HI_VOID)
{
    HI_S32 i = 0;

    if (0 == g_s32OptmGfxInitFlag)
    {
        return HI_SUCCESS;
    }
    for (i=OPTM_GFX_LAYER_SD0; i<OPTM_GFX_LAYER_BUTT; i++)
    {
        if (g_stGfxDevice[i].bOpened != HI_FALSE)
        {
            OPTM_GfxCloseLayer(i);
        }
    }

    OPTM_AA_DeInitGzmeCoef(&g_stZmeModule);

    g_s32OptmGfxInitFlag = 0;

    D_OPTM_HIFB_PRINT("HIFB_DRV_DeInit\n");

    return HI_SUCCESS;

}


HI_S32 OPTM_GfxSetWorkMode(OPTM_GFX_MODE_EN enMode)
{
    HI_S32 i;

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetWorkMode In\n");
#endif

    if (!g_s32OptmGfxInitFlag)
    {
        D_OPTM_HIFB_PRINT("Gfx has not been inited\n", i);
        return HI_FAILURE;
    }

    for (i=OPTM_GFX_LAYER_SD0; i<OPTM_GFX_LAYER_BUTT; i++)
    {
        if (g_stGfxDevice[i].bOpened != HI_FALSE)
        {
            D_OPTM_HIFB_PRINT("Gfx %d has been opened\n", i);
            return HI_FAILURE;
        }
    }

    g_enOptmGfxWorkMode = enMode;

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetWorkMode Out\n");
#endif

    return HI_SUCCESS;
}

HI_S32 OPTM_GfxGetWorkMode(OPTM_GFX_MODE_EN *penMode)
{
    if (!g_s32OptmGfxInitFlag)
    {
        D_OPTM_HIFB_PRINT("Gfx has not been inited\n");
        return HI_FAILURE;
    }

    if (penMode != HI_NULL)
    {
        *penMode = g_enOptmGfxWorkMode;
        return HI_SUCCESS;
    }
    else
    {
        D_OPTM_HIFB_PRINT("GFX error! null pointer\n");
        return HI_FAILURE;
    }
}

/***************************************************************************************
* func          : OPTM_GfxChgCmp2Ncmp
* description   : CNcomment: when change resolution or stride or
                             address value,  we should change from cmp
                             mode to no cmp mode,and WBC3 do a over scape update write CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifndef __BOOT__
static HI_S32 OPTM_GfxChgCmp2Ncmp(OPTM_GFX_LAYER_EN enLayerId)
{
     D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

     if((enLayerId == OPTM_GFX_LAYER_HD0)&&(g_stGfxDevice[enLayerId].bCampEnable))
     {
           HI_RECT_S stWbc3Rect;
           stWbc3Rect.s32X = 0;
           stWbc3Rect.s32Y = 0;
           stWbc3Rect.s32Width = g_stGfxDevice[enLayerId].stInRect.s32Width;
           stWbc3Rect.s32Height = g_stGfxDevice[enLayerId].stInRect.s32Height;
           HAL_DISP_SetLayerOutRect(HAL_DISP_LAYER_WBC3, stWbc3Rect);
           Vou_SetWbcStride(HAL_DISP_LAYER_WBC3, g_stGfxDevice[enLayerId].CmpStride);

           g_stGfxDevice[enLayerId].s32BufferChgCount =1;
           g_stGfxDevice[enLayerId].bBufferChged = HI_FALSE;
           OPTM_HAL_SetLayerDeCmpEnable(g_stGfxDevice[enLayerId].enGfxId, 0);  // disnable Gfx decmp
           Vou_SetGfxAddr(g_stGfxDevice[enLayerId].enGfxId, g_stGfxDevice[enLayerId].NoCmpBufAddr);
           Vou_SetGfxStride(g_stGfxDevice[enLayerId].enGfxId, g_stGfxDevice[enLayerId].Stride);
           HAL_DISP_SetRegUpNoRatio (HAL_DISP_LAYER_GFX0);

           Vou_SetWbcEnable(HAL_DISP_LAYER_WBC3, 1);      //

           // DTS2012021001787  after change display format, needed set wbc3 again, as the seting has been
           // clear
           Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC3, HAL_DISP_INTFDATAFMT_ARGB8888);
           Vou_SetWbcAddr(HAL_DISP_LAYER_WBC3, g_stGfxWbc3.stFrameBuffer.u32StartPhyAddr);   // set wbc AR data address
           OPTM_HAL_SetGfxCmpAddr(HAL_DISP_LAYER_WBC3, g_stGfxWbc3.stFrameBuffer.u32StartPhyAddr +
                                  g_stGfxWbc3.stFrameBuffer.u32Size /2); // set wbc GB data address
           OPTM_HAL_SetGfxCmpAddr(g_stGfxDevice[enLayerId].enGfxId, g_stGfxWbc3.stFrameBuffer.u32StartPhyAddr +
                                  g_stGfxWbc3.stFrameBuffer.u32Size/2);

           Vou_SetWbcCropEx(HAL_DISP_LAYER_WBC3,stWbc3Rect);
           OPTM_HAL_SetWbcCmpMode(HAL_DISP_LAYER_WBC3,1);   // enable wbc3 compression mode
           HAL_DISP_SetRegUpNoRatio (HAL_DISP_LAYER_WBC3);

       }
       else
       {
          return -1;
       }
       return 0;
}
#endif


/***************************************************************************************
* func          : OPTM_GfxGetLayerHalId
* description   : CNcomment: 获取HAL图层ID CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HAL_DISP_LAYER_E OPTM_GfxGetLayerHalId(OPTM_GFX_LAYER_EN enLayerId)
{
    if (enLayerId == OPTM_GFX_LAYER_HD0)
    {
        return HAL_DISP_LAYER_GFX0;
    }
    else if (enLayerId == OPTM_GFX_LAYER_SD0)
    {
        return HAL_DISP_LAYER_GFX1;
    }
	else if (enLayerId == OPTM_GFX_LAYER_AD0)
    {
        return HAL_DISP_LAYER_GFX2;
    }
	else if (enLayerId == OPTM_GFX_LAYER_AD1)
    {
        return HAL_DISP_LAYER_GFX3;
    }
    else
    {
        return HAL_DISP_LAYER_BUTT;
    }

}



/***************************************************************************************
* func          : OPTM_GfxInitLayer
* description   : CNcomment: 初始化图层 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 OPTM_GfxInitLayer(OPTM_GFX_LAYER_EN enLayerId)
{

    if (g_stGfxCap[enLayerId].bLayerSupported != HI_TRUE)
    {
        return HI_FAILURE;
    }

#ifndef __BOOT__
	#ifdef OPTM_HIFB_WVM_ENABLE
    init_waitqueue_head(&(g_stGfxDevice[enLayerId].vblEvent));
	#endif
	#ifdef OPTM_HIFB_GFXRR_ENABLE
    init_waitqueue_head(&(g_stGfxDevice[enLayerId].RREvent));
	#endif
#endif

    g_stGfxDevice[enLayerId].enGfxId  = OPTM_GfxGetLayerHalId(enLayerId);
    g_stGfxDevice[enLayerId].enDispCh = Vou_GetDisplayChOfLayer(g_stGfxDevice[enLayerId].enGfxId);
    if (OPTM_GFX_LAYER_AD0 == enLayerId)
    {
        g_LayerId[enLayerId] = ADAPT_LAYER_AD_0;
    }
    else if (OPTM_GFX_LAYER_AD1 == enLayerId)
    {
        g_LayerId[enLayerId] = ADAPT_LAYER_AD_1;
    }
    else
    {
        g_LayerId[enLayerId] = (HI_U32)enLayerId;
    }
    Vou_SetLayerGalpha(HAL_DISP_LAYER_GFX1,0xff);

	/**
	 **调色板
	 **/
    if (g_stGfxCap[enLayerId].bHasCmapReg != 0)
    {
        /*  apply CLUT TABLE buffer */
     	#ifndef __BOOT__
       		if (HI_DRV_MMZ_AllocAndMap("hifb_clut", HI_NULL, 256*4, 0, &(g_stGfxDevice[enLayerId].stCluptTable)) != 0)
     	#else
        	if (HI_DRV_MMZ_AllocAndMap("hifb_clut", KEY_DATA_MEM_ZONE, 256*4, 0, &(g_stGfxDevice[enLayerId].stCluptTable)) != 0)
    	 #endif
	        {
	            D_OPTM_HIFB_PRINT("GFX Get clut buf failed\n");
	            return HI_FAILURE;
	        }
    }

    /**
     **设置逐行读
     **/
    Vou_SetGfxReadMode(g_stGfxDevice[enLayerId].enGfxId, 1);

    /**
     **设置逐行更新，按帧更新
     **/
    Vou_SetGfxUpMode(g_stGfxDevice[enLayerId].enGfxId, 1);

    return HI_SUCCESS;

}

static HI_S32 OPTM_GfxDeInitLayer(OPTM_GFX_LAYER_EN enLayerId)
{
    if (g_stGfxCap[enLayerId].bLayerSupported != HI_TRUE)
    {
        return HI_SUCCESS;
    }

    if (g_stGfxCap[enLayerId].bHasCmapReg != 0)
    {
       /*  release CLUT TABLE buffer */
       if (g_stGfxDevice[enLayerId].stCluptTable.u32StartVirAddr != 0)
       {
           HI_DRV_MMZ_UnmapAndRelease(&(g_stGfxDevice[enLayerId].stCluptTable));
            g_stGfxDevice[enLayerId].stCluptTable.u32StartVirAddr = 0;
       }
    }

    return 0;
}


/***************************************************************************************
* func          : OPTM_GfxSetCsc
* description   : CNcomment: set csc CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxSetCsc(OPTM_GFX_LAYER_EN enLayerId)
{
    IntfCscCoef_S stCscCoef;
    IntfCscDcCoef_S stCscDcCoef;
	OPTM_CS_E DispSrcCSC;

	OPTM_M_DISP_INFO_S stSrcInfo;
	HAL_DISP_OUTPUTCHANNEL_E enDispCh;
	HAL_DISP_LAYER_E enGfxId;

    if (g_stGfxDevice[enLayerId].enDispCh == HAL_DISP_CHANNEL_DSD)
    {
        g_stGfxDevice[enLayerId].enSrcCs = OPTM_CS_eRGB;
        g_stGfxDevice[enLayerId].enDstCs = OPTM_CS_eXvYCC_601;
	}
	else
	{
        g_stGfxDevice[enLayerId].enSrcCs = OPTM_CS_eRGB;
        g_stGfxDevice[enLayerId].enDstCs = OPTM_CS_eXvYCC_709;
	}

    g_stGfxDevice[enLayerId].Kr         = 50;
    g_stGfxDevice[enLayerId].Kg         = 50;
    g_stGfxDevice[enLayerId].Kb         = 50;


	/**
	 **get from display,之前直接赋值为50，后处理完成亮度等处理
	 **现在在前面要完成处理。
	 **/
	g_stGfxDevice[enLayerId].Bright     = 50;
    g_stGfxDevice[enLayerId].Contrast   = 50;
    g_stGfxDevice[enLayerId].Saturation = 50;
    g_stGfxDevice[enLayerId].Hue        = 50;

	enGfxId = OPTM_GfxGetLayerHalId(enLayerId);
    if (enGfxId == HAL_DISP_LAYER_BUTT)
    {
        return HI_FAILURE;
    }
    enDispCh = Vou_GetDisplayChOfLayer(enGfxId);
	OPTM_M_GetDispInfo(enDispCh, &stSrcInfo);


	if ( (HAL_DISP_CHANNEL_DHD == enDispCh)
	   ||(HAL_DISP_CHANNEL_DAD == enDispCh)
	   ||(HAL_DISP_CHANNEL_DSD == enDispCh))
	{
		/*change  set CSC in video layers*/
		g_stGfxDevice[enLayerId].Bright     =  stSrcInfo.u32Bright;
		g_stGfxDevice[enLayerId].Contrast   =  stSrcInfo.u32Contrast;
		g_stGfxDevice[enLayerId].Saturation =  stSrcInfo.u32Saturation;
		g_stGfxDevice[enLayerId].Hue        =  stSrcInfo.u32Hue;
	}

	/**
	 **output csc coef from display(visa)
	 **/
	OPTM_M_GetDispCscMode(enDispCh, &DispSrcCSC, &g_stGfxDevice[enLayerId].enDstCs);


#ifdef OPTM_HIFB_PRINT
	OPTM_HIFB_TRACE("\n===============================================\n");
	OPTM_HIFB_TRACE("===%s %s %d\n",__FILE__,__FUNCTION__,__LINE__);

	OPTM_HIFB_TRACE("g_stGfxDevice[enLayerId].Bright     =  %d\n",g_stGfxDevice[enLayerId].Bright);
    OPTM_HIFB_TRACE("g_stGfxDevice[enLayerId].Contrast   =  %d\n",g_stGfxDevice[enLayerId].Contrast);
    OPTM_HIFB_TRACE("g_stGfxDevice[enLayerId].Saturation =  %d\n",g_stGfxDevice[enLayerId].Saturation);
    OPTM_HIFB_TRACE("g_stGfxDevice[enLayerId].Hue        =  %d\n",g_stGfxDevice[enLayerId].Hue);

	OPTM_HIFB_TRACE("g_stGfxDevice[enLayerId].Kr         =  %d\n",g_stGfxDevice[enLayerId].Kr);
	OPTM_HIFB_TRACE("g_stGfxDevice[enLayerId].Kg         =  %d\n",g_stGfxDevice[enLayerId].Kg);
	OPTM_HIFB_TRACE("g_stGfxDevice[enLayerId].Kb         =  %d\n",g_stGfxDevice[enLayerId].Kb);
	OPTM_HIFB_TRACE("===============================================\n");
#endif

    /* compute DC component */
    OPTM_ALG_API_CalcCscDc(g_stGfxDevice[enLayerId].enSrcCs,
                             g_stGfxDevice[enLayerId].enDstCs,
                             g_stGfxDevice[enLayerId].Bright,
                             g_stGfxDevice[enLayerId].Contrast,
                             &stCscDcCoef);

	HAL_Layer_SetCscDcCoef(g_stGfxDevice[enLayerId].enGfxId, &stCscDcCoef);

    OPTM_ALG_API_CalcChroma(g_stGfxDevice[enLayerId].enSrcCs,
                              g_stGfxDevice[enLayerId].enDstCs,
                              g_stGfxDevice[enLayerId].Saturation,
                              g_stGfxDevice[enLayerId].Contrast,
                              g_stGfxDevice[enLayerId].Hue,
                              g_stGfxDevice[enLayerId].Kr,
                              g_stGfxDevice[enLayerId].Kg,
                              g_stGfxDevice[enLayerId].Kb,
                              &stCscCoef);

	HAL_Layer_SetCscCoef(g_stGfxDevice[enLayerId].enGfxId, &stCscCoef);

	OPTM_HAL_SetLayerCsc(g_stGfxDevice[enLayerId].enGfxId, HI_TRUE);

	/*** current CSC mode is RGB ***/
    g_stGfxDevice[enLayerId].CscState = OPTM_CSC_SET_PARA_RGB;

    return 0;

}

/***************************************************************************************
* func          : OPTM_GfxOpenLayer
* description   : CNcomment: 打开图层 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxOpenLayer(OPTM_GFX_LAYER_EN enLayerId)
{

    HI_S32 nRet = HI_SUCCESS;
    HI_BOOL bLayerEnable = HI_FALSE;
#if 0
    OPTM_OSD_DATA_S stLayerData;
#endif

    D_OPTM_HIFB_CheckDispOpen(enLayerId);

    if (g_stGfxCap[enLayerId].bLayerSupported != HI_TRUE)
    {
        return HI_FAILURE;
    }

    if (g_stGfxDevice[enLayerId].bOpened == HI_TRUE)
    {
        return HI_SUCCESS;
    }

    Vou_GetGfxEnable(g_stGfxDevice[enLayerId].enGfxId,&bLayerEnable);
    if (HI_FALSE == bLayerEnable)
    {
      gs_OpenLayreNum++;
    }
    
    if (1 == gs_OpenLayreNum)
    {
        Vou_SetGfxGpMod(g_stGfxDevice[enLayerId].enGfxId,HI_FALSE);
    }
    if (2 == gs_OpenLayreNum)
    {
        Vou_SetGfxGpMod(g_stGfxDevice[enLayerId].enGfxId,HI_TRUE);
    }
    
	/**
	 **回写模式不能打开标清图层
	 **/
    if (  (OPTM_GFX_MODE_HD_WBC == g_enOptmGfxWorkMode)
        &&(OPTM_GFX_LAYER_SD0   ==  enLayerId))
    {
        D_OPTM_HIFB_PRINT("GFX work at wbc mode, SD0 is busy!\n");
        return HI_FAILURE;
    }

    nRet = OPTM_GfxInitLayer(enLayerId);
    if (nRet != HI_SUCCESS)
    {
        D_OPTM_HIFB_PRINT("GFX %d inited failed!\n");
        return HI_FAILURE;
    }


    if (g_enOptmGfxWorkMode == OPTM_GFX_MODE_NORMAL)
    {/** 没有回写/非同源 **/
        g_stGfxDevice[enLayerId].enWorkMode = OPTM_GFX_WORK_MODE_MASTER;
        g_stGfxDevice[enLayerId].enSlvGfxId = OPTM_GFX_LAYER_BUTT;

        /** set GFX interrupt number and ISR_order **/
        if (enLayerId == OPTM_GFX_LAYER_SD0)
        {
            if (g_stGfxDevice[enLayerId].enDispCh == HAL_DISP_CHANNEL_DHD)
            {
                g_stGfxDevice[enLayerId].enIntNumber         = HAL_DISP_INTMSK_DHDVTTHD2;
                g_stGfxDevice[enLayerId].s32WorkIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_G1;
                g_stGfxDevice[enLayerId].s32DispIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_G1_DISP;
    			#ifdef OPTM_HIFB_WVM_ENABLE
                	g_stGfxDevice[enLayerId].enWVBIntNumber      = HAL_DISP_INTMSK_DHDVTTHD2;
                	g_stGfxDevice[enLayerId].s32WBIsrCallOrder   = OPTM_M_HDVTTHD2_ORDER_G1_WAIT_VBLANK;
   				#endif
            }
            else
            {
                g_stGfxDevice[enLayerId].enIntNumber         = HAL_DISP_INTMSK_DSDVTTHD2;
                g_stGfxDevice[enLayerId].s32WorkIsrCallOrder = OPTM_M_SDVTTHD2_ORDER_G1;
                g_stGfxDevice[enLayerId].s32DispIsrCallOrder = OPTM_M_SDVTTHD2_ORDER_G1_DISP;
    			#ifdef OPTM_HIFB_WVM_ENABLE
                    g_stGfxDevice[enLayerId].enWVBIntNumber      = HAL_DISP_INTMSK_DSDVTTHD2;
                	g_stGfxDevice[enLayerId].s32WBIsrCallOrder   = OPTM_M_SDVTTHD2_ORDER_G1_WAIT_VBLANK;
   				#endif
            }

    		#ifdef OPTM_HIFB_GFXRR_ENABLE
            	g_stGfxDevice[enLayerId].enWRRIntNumber      = HAL_DISP_INTMSK_G1RRINT;
            	g_stGfxDevice[enLayerId].s32RRIsrCallOrder   = OPTM_M_G1RR_ORDER_UPFINISH;
    		#endif

			/**
			 **缩放单?旁贕1上
			 **/
            Vou_SetGfxZmeLink(HAL_DISP_LAYER_GFX1, 1);

            Vou_SetWbcEnable(HAL_DISP_LAYER_WBC2, 0);
            HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_WBC2);

        }
        else if (enLayerId == OPTM_GFX_LAYER_HD0)
        {
            g_stGfxDevice[enLayerId].enIntNumber         = HAL_DISP_INTMSK_DHDVTTHD2;
            g_stGfxDevice[enLayerId].s32WorkIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_G0;
            g_stGfxDevice[enLayerId].s32DispIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_G0_DISP;

    		#ifdef OPTM_HIFB_WVM_ENABLE
            	g_stGfxDevice[enLayerId].enWVBIntNumber      = HAL_DISP_INTMSK_DHDVTTHD2;
           		g_stGfxDevice[enLayerId].s32WBIsrCallOrder   = OPTM_M_HDVTTHD2_ORDER_G0_WAIT_VBLANK;
    		#endif

    		#ifdef OPTM_HIFB_GFXRR_ENABLE
            	g_stGfxDevice[enLayerId].enWRRIntNumber       = HAL_DISP_INTMSK_G0RRINT;
            	g_stGfxDevice[enLayerId].s32RRIsrCallOrder    = OPTM_M_G0RR_ORDER_UPFINISH;
    		#endif
        }
        else if (enLayerId == OPTM_GFX_LAYER_AD0)
        {
            g_stGfxDevice[enLayerId].enIntNumber         = HAL_DISP_INTMSK_DHDVTTHD2;
            g_stGfxDevice[enLayerId].s32WorkIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_ZONE1;
            g_stGfxDevice[enLayerId].s32DispIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_ZONE1_DISP;

    		#ifdef OPTM_HIFB_WVM_ENABLE
            	g_stGfxDevice[enLayerId].enWVBIntNumber      = HAL_DISP_INTMSK_DHDVTTHD2;
            	g_stGfxDevice[enLayerId].s32WBIsrCallOrder   = OPTM_M_HDVTTHD2_ORDER_ZONE1_WAIT_VBLANK;
    		#endif

    		#ifdef OPTM_HIFB_GFXRR_ENABLE
            	g_stGfxDevice[enLayerId].enWRRIntNumber       = HAL_DISP_INTMSK_G0RRINT;
            	g_stGfxDevice[enLayerId].s32RRIsrCallOrder    = OPTM_M_ZONE1RR_ORDER_UPFINISH;
    		#endif
        }

#ifndef __BOOT__
    #ifdef OPTM_HIFB_WVM_ENABLE
        nRet = OPTM_M_INT_Registe(g_stGfxDevice[enLayerId].enWVBIntNumber,    \
                                    g_stGfxDevice[enLayerId].s32WBIsrCallOrder, \
                                    (OPTM_IRQ_FUNC)OPTM_GfxWVBCallBack,         \
                                    (HI_U32)enLayerId,                           \
                                    0);
        D_OPTM_HIFB_CheckSuccess(nRet);
    #endif

    #ifdef OPTM_HIFB_GFXRR_ENABLE
        nRet = OPTM_M_INT_Registe(g_stGfxDevice[enLayerId].enWRRIntNumber,    \
                                    g_stGfxDevice[enLayerId].s32RRIsrCallOrder, \
                                    (OPTM_IRQ_FUNC)OPTM_GfxWaitRRCallBack,      \
                                    (HI_U32)enLayerId,                            \
                                    0);
        D_OPTM_HIFB_CheckSuccess(nRet);
	#endif
        /**
         ** close GFX update-complete interrupt
         **/
    	HAL_DISP_SetIntDisable(g_stGfxDevice[enLayerId].enWRRIntNumber);
#endif
        /** process the setting of AD special **/
        if (enLayerId == OPTM_GFX_LAYER_AD0 || enLayerId == OPTM_GFX_LAYER_AD1)
        {
            if (!g_stGfxDevice[OPTM_GFX_LAYER_HD0].bOpened)
            {
                g_stGfxDevice[OPTM_GFX_LAYER_HD0].enDispCh = g_stGfxDevice[enLayerId].enDispCh;
                OPTM_GfxSetCsc(OPTM_GFX_LAYER_HD0);
            }
        }
        else
        {
            OPTM_GfxSetCsc(enLayerId);
        }

        if (g_stGfxCap[enLayerId].bHasCmapReg != 0)
        {
            HAL_SetCoefAddr(g_stGfxDevice[enLayerId].enGfxId,    \
				              HAL_DISP_COEFMODE_LUT,                 \
                              g_stGfxDevice[enLayerId].stCluptTable.u32StartPhyAddr);
        }

        HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);
        /**
         ** set OPEN flag
         **/
        g_stGfxDevice[enLayerId].bOpened = HI_TRUE;

    }
    else if (g_enOptmGfxWorkMode == OPTM_GFX_MODE_HD_WBC)
    {/**
	  **打开图层的时候判断回写是否打开，要是打开不再重新打开
	  **这里是全局变量，要注意mce和app的使用,都会调用这里
	  **打开之后就关注回写中断
	  **/
	        OPTM_GFX_LAYER_EN enSlvGfxId = OPTM_GFX_LAYER_SD0;

			#ifndef __BOOT__
			/** MCE-APP过渡要用的代码 **/
				#if 0
				/** 要是非平滑过渡的时候设置像素格式会清寄存器，这里获取不到状态 **/
				nRet = OPTM_GfxGetOSDData(OPTM_GFX_LAYER_AD0,&stLayerData);
				if (nRet != HI_SUCCESS)
		        {
		        	D_OPTM_HIFB_PRINT("OPTM_GfxGetOSDData failed!\n");
		            return HI_FAILURE;
		        }
				if(OPTM_LAYER_STATE_ENABLE == stLayerData.eState)
				{/** 有开机动画，在这个地方关有可能太早了，标清输出不平滑 **/
					OPTM_M_INT_UnRegiste(g_stGfxDevice[OPTM_GFX_LAYER_SD0].enIntNumber, g_stGfxDevice[OPTM_GFX_LAYER_SD0].s32DispIsrCallOrder);
	       	 		OPTM_M_INT_UnRegiste(g_stGfxDevice[OPTM_GFX_LAYER_AD0].enIntNumber,OPTM_M_HDVTTHD2_ORDER_WBC2);
				}
				#else
				if(HI_TRUE == gs_bLogoMceEnable)
				{/** 有开机动画，在这个地方关有可能太早了，标清输出不平滑 **/
					OPTM_M_INT_UnRegiste(g_stGfxDevice[OPTM_GFX_LAYER_SD0].enIntNumber, g_stGfxDevice[OPTM_GFX_LAYER_SD0].s32DispIsrCallOrder);
	       	 		OPTM_M_INT_UnRegiste(g_stGfxDevice[OPTM_GFX_LAYER_AD0].enIntNumber,OPTM_M_HDVTTHD2_ORDER_WBC2);
					gs_bLogoMceEnable = HI_FALSE;
					/** 已经过渡完了 **/
				}
				#endif
			#endif
	        if (!g_stGfxWbc2.bOpened)
		    {
		        /**  1 open WBC2 **/
		        nRet = OPTM_GFX_OpenWbc2(&g_stGfxWbc2);
		        if (nRet != HI_SUCCESS)
		        {
		            return HI_FAILURE;
		        }

		        /**  2 synchronization of G1 **/
		        nRet = OPTM_GfxInitLayer(enSlvGfxId);
		        if (nRet != HI_SUCCESS)
		        {
		            OPTM_GfxDeInitLayer(enLayerId);
		            D_OPTM_HIFB_PRINT("GFX %d inited failed!\n", enLayerId);
		            return HI_FAILURE;
		        }

		        g_stGfxDevice[enSlvGfxId].enWorkMode          = OPTM_GFX_WORK_MODE_SLAVE;
		        g_stGfxDevice[enSlvGfxId].enSlvGfxId          = OPTM_GFX_LAYER_BUTT;
		        g_stGfxDevice[enSlvGfxId].enIntNumber         = HAL_DISP_INTMSK_DSDVTTHD2;
		        g_stGfxDevice[enSlvGfxId].s32WorkIsrCallOrder = OPTM_M_SDVTTHD2_ORDER_G1;
		        g_stGfxDevice[enSlvGfxId].s32DispIsrCallOrder = OPTM_M_SDVTTHD2_ORDER_G1_DISP;

		        /**  3 set G1 **/
		        OPTM_GfxSetCsc(enSlvGfxId);
		        Vou_SetGfxStride(g_stGfxDevice[enSlvGfxId].enGfxId, g_stGfxWbc2.u32BufferStride);
		        HAL_DISP_SetLayerDataFmt(g_stGfxDevice[enSlvGfxId].enGfxId, g_stGfxWbc2.enDataFmt);
		        Vou_SetGfxExt(g_stGfxDevice[enSlvGfxId].enGfxId, HAL_GFX_BITEXTEND_3RD);

		        g_stGfxDevice[enSlvGfxId].bCampEnable = HI_FALSE;

				/**
				 ** 放在WBC2上
				 **/
		        Vou_SetGfxZmeLink(HAL_DISP_LAYER_GFX1, 0);
				/**
				 ** 逐行显示逐行读，隔行显示隔行读
				 **/
				Vou_SetGfxReadMode(HAL_DISP_LAYER_GFX1, 0);

		        g_stGfxDevice[enSlvGfxId].bOpened = HI_FALSE;

		     }

		    if (OPTM_GFX_LAYER_HD0 == enLayerId)
		    {
	            /**  4 synchronization of G0 **/
	            g_stGfxDevice[enLayerId].enWorkMode          = OPTM_GFX_WORK_MODE_MASTER;
	            g_stGfxDevice[enLayerId].enSlvGfxId          = OPTM_GFX_LAYER_SD0;
	            g_stGfxDevice[enLayerId].enIntNumber         = HAL_DISP_INTMSK_DHDVTTHD2;
	            g_stGfxDevice[enLayerId].s32WorkIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_G0;
	            g_stGfxDevice[enLayerId].s32DispIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_G0_DISP;

				#ifdef OPTM_HIFB_WVM_ENABLE
	            	g_stGfxDevice[enLayerId].enWVBIntNumber      = HAL_DISP_INTMSK_DHDVTTHD2;
	            	g_stGfxDevice[enLayerId].s32WBIsrCallOrder   = OPTM_M_HDVTTHD2_ORDER_G0_WAIT_VBLANK;
				#endif

				#ifdef OPTM_HIFB_GFXRR_ENABLE
	            	g_stGfxDevice[enLayerId].enWRRIntNumber       = HAL_DISP_INTMSK_G0RRINT;
	            	g_stGfxDevice[enLayerId].s32RRIsrCallOrder    = OPTM_M_G0RR_ORDER_UPFINISH;
				#endif
	        }
	        else if (enLayerId == OPTM_GFX_LAYER_AD0)
	        {
	            /**  init of G2 zone1 **/
	            g_stGfxDevice[enLayerId].enWorkMode          = OPTM_GFX_WORK_MODE_MASTER;
	            g_stGfxDevice[enLayerId].enSlvGfxId          = OPTM_GFX_LAYER_SD0;
	            g_stGfxDevice[enLayerId].enIntNumber         = HAL_DISP_INTMSK_DHDVTTHD2;
	            g_stGfxDevice[enLayerId].s32WorkIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_ZONE1;
	            g_stGfxDevice[enLayerId].s32DispIsrCallOrder = OPTM_M_HDVTTHD2_ORDER_ZONE1_DISP;

				#ifdef OPTM_HIFB_WVM_ENABLE
	            	g_stGfxDevice[enLayerId].enWVBIntNumber      = HAL_DISP_INTMSK_DHDVTTHD2;
	            	g_stGfxDevice[enLayerId].s32WBIsrCallOrder   = OPTM_M_HDVTTHD2_ORDER_ZONE1_WAIT_VBLANK;
				#endif

				#ifdef OPTM_HIFB_GFXRR_ENABLE
	            	g_stGfxDevice[enLayerId].enWRRIntNumber       = HAL_DISP_INTMSK_G0RRINT;
	            	g_stGfxDevice[enLayerId].s32RRIsrCallOrder    = OPTM_M_ZONE1RR_ORDER_UPFINISH;
				#endif
	        }
			#ifndef __BOOT__
				#ifdef OPTM_HIFB_WVM_ENABLE
	        		nRet = OPTM_M_INT_Registe(g_stGfxDevice[enLayerId].enWVBIntNumber,     \
	                                            g_stGfxDevice[enLayerId].s32WBIsrCallOrder,  \
	                                            (OPTM_IRQ_FUNC)OPTM_GfxWVBCallBack,          \
	                                            (HI_U32)enLayerId, 0);
	       			 D_OPTM_HIFB_CheckSuccess(nRet);
				#endif

				#ifdef OPTM_HIFB_GFXRR_ENABLE
	       			 nRet = OPTM_M_INT_Registe(g_stGfxDevice[enLayerId].enWRRIntNumber,       \
	                                             g_stGfxDevice[enLayerId].s32RRIsrCallOrder,    \
	                                             (OPTM_IRQ_FUNC)OPTM_GfxWaitRRCallBack,         \
	                                             (HI_U32)enLayerId, 0);
	        		 D_OPTM_HIFB_CheckSuccess(nRet);

	        		 /**  close GFX update-complete interrupt **/
	        		 HAL_DISP_SetIntDisable(g_stGfxDevice[enLayerId].enWRRIntNumber);
				#endif
			#endif
	        /** process the setting of AD special **/
	        if (enLayerId == OPTM_GFX_LAYER_AD0 || enLayerId == OPTM_GFX_LAYER_AD1)
	        {
	            if (!g_stGfxDevice[OPTM_GFX_LAYER_HD0].bOpened)
	            {
	                g_stGfxDevice[OPTM_GFX_LAYER_HD0].enDispCh = g_stGfxDevice[enLayerId].enDispCh;
	                OPTM_GfxSetCsc(OPTM_GFX_LAYER_HD0);
	            }
	        }
	        else
	        {
	            OPTM_GfxSetCsc(enLayerId);
	        }

	        if (g_stGfxCap[enLayerId].bHasCmapReg != 0)
	        {
	            HAL_SetCoefAddr(g_stGfxDevice[enLayerId].enGfxId,  \
					              HAL_DISP_COEFMODE_LUT,               \
	                              g_stGfxDevice[enLayerId].stCluptTable.u32StartPhyAddr);
	        }

			#ifndef __BOOT__
		        if (enLayerId == OPTM_GFX_LAYER_HD0 || !g_stGfxDevice[OPTM_GFX_LAYER_HD0].bOpened)
		        {/** 这里要是两次注册传入的older参数一样会注册失败 **/
			        /**  register WBC2 ISR **/
			        nRet = OPTM_M_INT_Registe(g_stGfxDevice[enLayerId].enIntNumber,   \
			                                    OPTM_M_HDVTTHD2_ORDER_WBC2,               \
			                                    (OPTM_IRQ_FUNC)OPTM_Wbc2Isr, enLayerId, 0);
					if (nRet != HI_SUCCESS)
				    {
				        D_OPTM_HIFB_PRINT("OPTM_M_INT_Registe failed!\n");
				        return HI_FAILURE;
				    }
			        /**  register G1 DISP_CALLBACK **/
			        nRet = OPTM_M_INT_Registe(g_stGfxDevice[enSlvGfxId].enIntNumber,            \
			                                    g_stGfxDevice[enSlvGfxId].s32DispIsrCallOrder,    \
			                                   (OPTM_IRQ_FUNC)OPTM_DispInfoCallbackUnderWbc,    \
			                                   enSlvGfxId, 0);
					if (nRet != HI_SUCCESS)
				    {
				        D_OPTM_HIFB_PRINT("OPTM_M_INT_Registe failed!\n");
				        return HI_FAILURE;
				    }

		        }
			#endif

	        HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);
	        /**  set OPEN flag  **/
	        g_stGfxDevice[enLayerId].bOpened = HI_TRUE;

	}

    return HI_SUCCESS;

}


/***************************************************************************************
* func          : OPTM_GfxCloseLayer
* description   : CNcomment: 关闭图层 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxCloseLayer(OPTM_GFX_LAYER_EN enLayerId)
{
#ifndef __BOOT__
    HI_S32 nRet = HI_SUCCESS;
#endif

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    if (g_stGfxDevice[enLayerId].bOpened == HI_FALSE)
    {
        return HI_SUCCESS;
    }

    if (gs_OpenLayreNum > 0)
    {
       gs_OpenLayreNum--;
       Vou_SetGfxGpMod(g_stGfxDevice[enLayerId].enGfxId,HI_FALSE);
    }

#ifndef __BOOT__
	#if 0
    // for gfx cmp
    if(g_stGfxDevice[enLayerId].bCampEnable)
    {
        OPTM_GfxSetLayerDeCmpEnable(enLayerId, HI_FALSE);
    }
	#endif
#endif


    if (g_enOptmGfxWorkMode == OPTM_GFX_MODE_NORMAL)
    {
        /*  confirm hardware close */
        HAL_DISP_EnableLayer(g_stGfxDevice[enLayerId].enGfxId, HI_FALSE);
        HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);
		#ifndef __BOOT__
			#ifdef OPTM_HIFB_GFXRR_ENABLE
		        nRet = OPTM_M_INT_UnRegiste(g_stGfxDevice[enLayerId].enWRRIntNumber, g_stGfxDevice[enLayerId].s32RRIsrCallOrder);
				/*Clear codecc warning*/
				(void)nRet;
				D_OPTM_HIFB_CheckSuccess(nRet);
			#endif

			#ifdef OPTM_HIFB_WVM_ENABLE
		        nRet = OPTM_M_INT_UnRegiste(g_stGfxDevice[enLayerId].enIntNumber, g_stGfxDevice[enLayerId].s32WBIsrCallOrder);
				/*Clear codecc warning*/
				(void)nRet;
		        D_OPTM_HIFB_CheckSuccess(nRet);
			#endif
		#endif

        OPTM_GfxDeInitLayer(enLayerId);

        g_stGfxDevice[enLayerId].bOpened = HI_FALSE;
    }
    else  if (g_enOptmGfxWorkMode == OPTM_GFX_MODE_HD_WBC)
    {
        /** make sure that HD was closed or will be closed,then we close WBC2 and G1 */
        if (enLayerId == OPTM_GFX_LAYER_HD0 || !g_stGfxDevice[OPTM_GFX_LAYER_HD0].bOpened)
        {
            OPTM_GFX_LAYER_EN enSlvGfxId = OPTM_GFX_LAYER_SD0;

    	  	// disnable wbc2 compress, and g1 decompression, 2012-4-6
        	{
	             OPTM_HAL_SetLayerDeCmpEnable(g_stGfxDevice[enSlvGfxId].enGfxId, 0);
	             HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enSlvGfxId].enGfxId);

	             OPTM_HAL_SetWbcCmpMode(HAL_DISP_LAYER_WBC2,0);
	             HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_WBC2);

	             g_stGfxDevice[enSlvGfxId].bCampEnable = HI_FALSE;
       		}
        	/* close WBC2 */
       		/*  confirm hardware close */
	        Vou_SetWbcEnable(HAL_DISP_LAYER_WBC2, 0);
	        HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_WBC2);

			#ifndef __BOOT__
	        	/*  un-register G1 DISP_CALLBACK */
	        	OPTM_M_INT_UnRegiste(g_stGfxDevice[enSlvGfxId].enIntNumber, g_stGfxDevice[enSlvGfxId].s32DispIsrCallOrder);

	        	/*  un-register WBC2 ISR */
	       	 	OPTM_M_INT_UnRegiste(g_stGfxDevice[enLayerId].enIntNumber,OPTM_M_HDVTTHD2_ORDER_WBC2);
			#endif

        	OPTM_GFX_CloseWbc2(&g_stGfxWbc2);

	        /* close G1 */
	        /*  confirm hardware close */
	        HAL_DISP_EnableLayer(g_stGfxDevice[enSlvGfxId].enGfxId, HI_FALSE);
	        HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enSlvGfxId].enGfxId);

	        OPTM_GfxDeInitLayer(enSlvGfxId);
	        g_stGfxDevice[enSlvGfxId].bOpened = HI_FALSE;


        }

        /* close G0 */
        /*  confirm hardware close */
        HAL_DISP_EnableLayer(g_stGfxDevice[enLayerId].enGfxId, HI_FALSE);
        HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);

#ifndef __BOOT__
		#ifdef OPTM_HIFB_GFXRR_ENABLE
	        nRet = OPTM_M_INT_UnRegiste(g_stGfxDevice[enLayerId].enWRRIntNumber, g_stGfxDevice[enLayerId].s32RRIsrCallOrder);
	        D_OPTM_HIFB_CheckSuccess(nRet);
		#endif

		#ifdef OPTM_HIFB_WVM_ENABLE
	        nRet = OPTM_M_INT_UnRegiste(g_stGfxDevice[enLayerId].enIntNumber, g_stGfxDevice[enLayerId].s32WBIsrCallOrder);
	        D_OPTM_HIFB_CheckSuccess(nRet);
		#endif
#endif
        OPTM_GfxDeInitLayer(enLayerId);

        g_stGfxDevice[enLayerId].bOpened = HI_FALSE;

    }

    return HI_SUCCESS;

}


HI_S32 OPTM_GfxSetLayerZorder(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_ZORDER_E eZorder)
{
    HI_U32 u32Zorder = 0;
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerZorder In\n");
#endif

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    if (enLayerId == OPTM_GFX_LAYER_AD0 || enLayerId == OPTM_GFX_LAYER_AD1)
    {
        if (eZorder == OPTM_GFX_ZORDER_MOVETOP || eZorder == OPTM_GFX_ZORDER_MOVEUP)
        {
            u32Zorder = 0;
        }
        else
        {
            u32Zorder = 1;
        }
    }
    else if (enLayerId == OPTM_GFX_LAYER_HD0)
    {
        if (eZorder == OPTM_GFX_ZORDER_MOVETOP || eZorder == OPTM_GFX_ZORDER_MOVEUP)
        {
            u32Zorder = 1;
        }
        else
        {
            u32Zorder = 0;
        }
    }

    OPTM_HAL_SetGfxZorder(g_stGfxDevice[enLayerId].enGfxId, u32Zorder);

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerZorder Out\n");
#endif

     return 0;
}

HI_S32 OPTM_GfxGetLayerZorder(OPTM_GFX_LAYER_EN enLayerId, HI_U32* u32Zorder)
{
    HI_U32 u32GfxZorder = 0;

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxGetLayerZorder In\n");
#endif

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    OPTM_HAL_GetGfxZorder(g_stGfxDevice[enLayerId].enGfxId, &u32GfxZorder);

    if (enLayerId == OPTM_GFX_LAYER_HD0)
    {
        *u32Zorder = (u32GfxZorder + 1)%2;
    }
    else if (enLayerId == OPTM_GFX_LAYER_AD0 || enLayerId == OPTM_GFX_LAYER_AD1)
    {
        *u32Zorder = u32GfxZorder;
    }

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxGetLayerZorder Out\n");
#endif
    return 0;
}

HI_S32 OPTM_GfxSetEnable(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL bEnable)
{
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetEnable In\n");
#endif

     D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

     g_stGfxDevice[enLayerId].bEnable = bEnable;
     if (g_stGfxDevice[enLayerId].bMaskFlag == HI_FALSE)
     {
         HAL_DISP_EnableLayer(g_stGfxDevice[enLayerId].enGfxId, bEnable);
     }

     if (g_stGfxDevice[enLayerId].enSlvGfxId != OPTM_GFX_LAYER_BUTT)
     {
         if (bEnable == HI_FALSE &&
             (g_stGfxDevice[OPTM_GFX_LAYER_HD0].bEnable ||
             g_stGfxDevice[OPTM_GFX_LAYER_AD0].bEnable ||
             g_stGfxDevice[OPTM_GFX_LAYER_AD1].bEnable))
         {
            return 0;
         }
         g_stGfxDevice[g_stGfxDevice[enLayerId].enSlvGfxId].bEnable = bEnable;
         g_stGfxDevice[g_stGfxDevice[enLayerId].enSlvGfxId].unUpFlag.bits.Enable = 1;
     }

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetEnable Out\n");
#endif

     return 0;
}

/***************************************************************************************
* func          : OPTM_GfxSetLogoLayerEnable
* description   : CNcomment: 设置layer使能 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxSetLogoLayerEnable(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL bEnable)
{
    if(OPTM_GFX_LAYER_SD0 == enLayerId)
    {
		g_stGfxDevice[enLayerId].enGfxId = HAL_DISP_LAYER_GFX1;
    }
	else if(OPTM_GFX_LAYER_AD0 == enLayerId)
	{
		g_stGfxDevice[enLayerId].enGfxId = HAL_DISP_LAYER_GFX2;
	}
	else if(OPTM_GFX_LAYER_HD0 == enLayerId)
	{
		g_stGfxDevice[enLayerId].enGfxId = HAL_DISP_LAYER_GFX0;
	}

     HAL_DISP_EnableLayer(g_stGfxDevice[enLayerId].enGfxId, bEnable);
	 HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);
     return HI_SUCCESS;
}

/***************************************************************************************
* func          : OPTM_SetLogoMceEnable
* description   : CNcomment: 设置是否Mce使能 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_SetLogoMceEnable(HI_BOOL bLogeMceEnable)
{
	gs_bLogoMceEnable = bLogeMceEnable;
	return HI_SUCCESS;
}

HI_S32 OPTM_GfxGetEnable(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL *pbState)
{
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxGetEnable In\n");
#endif

     if (g_s32OptmGfxInitFlag == 0)
     {
          *pbState = HI_FALSE;
          return HI_FAILURE;
     }

     *pbState = OPTM_HAL_GetLayerEnable(g_stGfxDevice[enLayerId].enGfxId);

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxGetEnable Out\n");
#endif

     return 0;
}

HI_S32 OPTM_GfxMaskLayer(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL bMask)
{
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxMaskLayer In\n");
#endif
     //D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);
     if (g_s32OptmGfxInitFlag == 0)
     {
          return HI_FAILURE;
     }

     if (OPTM_GFX_MODE_HD_WBC == g_enOptmGfxWorkMode)
     {
         if (  (OPTM_GFX_LAYER_HD0 == enLayerId)
             ||(OPTM_GFX_LAYER_SD0 == enLayerId))
         {
             if (g_stGfxDevice[OPTM_GFX_LAYER_HD0].bOpened != HI_TRUE)
             {
                 return HI_FAILURE;
             }
         }
         else if(  (OPTM_GFX_LAYER_AD0 == enLayerId)
                 ||(OPTM_GFX_LAYER_AD1 == enLayerId))
         {
            if ( g_stGfxDevice[OPTM_GFX_LAYER_AD0].bOpened != HI_TRUE
                && g_stGfxDevice[OPTM_GFX_LAYER_AD1].bOpened != HI_TRUE)
            {
                 return HI_FAILURE;
             }
         }
     }
     else
     {
         if (g_stGfxDevice[enLayerId].bOpened != HI_TRUE)
         {
             return HI_FAILURE;
         }
     }

     if (bMask)
     {
        g_stGfxDevice[enLayerId].bMaskFlag = HI_TRUE;
     }
     else if (g_stGfxDevice[enLayerId].bMaskFlag)
     {
         g_stGfxDevice[enLayerId].bMaskFlag = HI_FALSE;
     }

     if (g_stGfxDevice[enLayerId].bMaskFlag)
     {
         HAL_DISP_EnableLayer(g_stGfxDevice[enLayerId].enGfxId, HI_FALSE);
         HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);
     }
     else
     {
         HAL_DISP_EnableLayer(g_stGfxDevice[enLayerId].enGfxId, g_stGfxDevice[enLayerId].bEnable);
         HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);
     }

     if (g_stGfxDevice[enLayerId].enSlvGfxId != OPTM_GFX_LAYER_BUTT)
     {
         OPTM_GFX_LAYER_EN enSlvId;

         enSlvId = g_stGfxDevice[enLayerId].enSlvGfxId;

         if (bMask)
         {
            g_stGfxDevice[enSlvId].bMaskFlag = HI_TRUE;
         }
         else if (g_stGfxDevice[enSlvId].bMaskFlag)
         {
            g_stGfxDevice[enSlvId].bMaskFlag = HI_FALSE;

         }

         if (g_stGfxDevice[enSlvId].bMaskFlag)
         {
             HAL_DISP_EnableLayer(g_stGfxDevice[enSlvId].enGfxId, HI_FALSE);
             HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enSlvId].enGfxId);
         }
         else
         {
             HAL_DISP_EnableLayer(g_stGfxDevice[enSlvId].enGfxId, g_stGfxDevice[enSlvId].bEnable);
             HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enSlvId].enGfxId);
         }

         g_stGfxDevice[enSlvId].unUpFlag.bits.Enable  = 1;
         g_stGfxDevice[enSlvId].unUpFlag.bits.RegUp   = 1;
     }

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxMaskLayer Out\n");
#endif
     return 0;
}

HI_S32 OPTM_GfxSetLayerAddr(OPTM_GFX_LAYER_EN enLayerId, HI_U32 u32Addr)
{
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerAddr In\n");
#endif
    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    g_stGfxDevice[enLayerId].NoCmpBufAddr = u32Addr;
    Vou_SetGfxAddr(g_stGfxDevice[enLayerId].enGfxId, u32Addr);


#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerAddr Out\n");
#endif
    return 0;
}

HI_S32 OPTM_GfxSetLayerStride(OPTM_GFX_LAYER_EN enLayerId, HI_U32 u32Stride)
{
#ifndef __BOOT__
    HI_U16  u16StridePre;
#endif

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerStride In\n");
#endif
    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerStride Out\n");
#endif


    // when set G0 stride we should change cuccrent mode from cmp mode to no cmp mode
        // as change stride in cmp mode will cuase cmp picture wrong data,
#ifndef __BOOT__
        u16StridePre = g_stGfxDevice[enLayerId].Stride;
#endif
        g_stGfxDevice[enLayerId].Stride = (HI_U16)u32Stride;
        g_stGfxDevice[enLayerId].CmpStride = ((HI_U16)u32Stride/2 + (u32Stride/2/128/8 +1)  +0xf)&0xfffffff0; // cmp mode, stride is" width*2 + head size" algin with 16 bytes


#ifndef __BOOT__
       if(g_stGfxDevice[enLayerId].bCampEnable)
       {
           if(enLayerId == OPTM_GFX_LAYER_HD0)
           {
              if(u16StridePre !=  (HI_U16)u32Stride)
               {
                   OPTM_GfxChgCmp2Ncmp(OPTM_GFX_LAYER_HD0);
               }
           }
       }
       else
#endif
       {
             Vou_SetGfxStride(g_stGfxDevice[enLayerId].enGfxId, (HI_U16)u32Stride);
       }

    return 0;
}
HAL_DISP_PIXELFORMAT_E OPTM_PixerFmtTransferToHalFmt(OPTM_GFX_PIXELFORMAT_E enDataFmt)
{
    if(enDataFmt >= OPTM_GFX_FMT_BUTT){
     	  return HAL_DISP_PIXELFORMAT_BUTT;
    }
    else
    {
        return enHalFmt[(HI_S32)enDataFmt];
    }
}


/***************************************************************************************
* func          : OPTM_HalFmtTransferToPixerFmt
* description   : CNcomment:将寄存器中的像素格式壮成上层封装的像素格式 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
OPTM_GFX_PIXELFORMAT_E OPTM_HalFmtTransferToPixerFmt(HAL_DISP_PIXELFORMAT_E enDataFmt)
{
    HI_U32 i  = 0;

    for(i = 0; i < (sizeof(enHalFmt)/sizeof(HAL_DISP_PIXELFORMAT_E)); i++)
    {
        if (enDataFmt == enHalFmt[i])
        {
     	  return (OPTM_GFX_PIXELFORMAT_E)i;
        }
    }

    return OPTM_GFX_FMT_BUTT;
}

HI_S32 OPTM_GfxSetLayerDataFmt(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_PIXELFORMAT_E enDataFmt)
{
    IntfCscCoef_S stCscCoef;

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerDataFmt In\n");
#endif
    if(enDataFmt >= OPTM_GFX_FMT_BUTT){
     	  return HI_FAILURE;
    }

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    if(enDataFmt > OPTM_GFX_FMT_YCbCrA_8888 && g_stGfxDevice[enLayerId].CscState == OPTM_CSC_SET_PARA_RGB)
    {
        /* set CSC directly */
        stCscCoef.csc_coef00 = 0x010;
        stCscCoef.csc_coef01 = 0x09d;

        stCscCoef.csc_coef02 = 0x02F;
        stCscCoef.csc_coef10 = 0x070;

        stCscCoef.csc_coef11 = 0x1FA9;
        stCscCoef.csc_coef12 = 0x1FE6;

        stCscCoef.csc_coef20 = 0x1FF6;
        stCscCoef.csc_coef21 = 0x1F9A;

        stCscCoef.csc_coef22 = 0x070;


        HAL_Layer_SetCscCoef(g_stGfxDevice[enLayerId].enGfxId, &stCscCoef);

    	OPTM_HAL_SetLayerCsc(g_stGfxDevice[enLayerId].enGfxId, HI_TRUE);

    	g_stGfxDevice[enLayerId].CscState = OPTM_CSC_SET_PARA_BGR;
    }
    else if(enDataFmt <= OPTM_GFX_FMT_YCbCrA_8888 && g_stGfxDevice[enLayerId].CscState == OPTM_CSC_SET_PARA_BGR)
    {
        OPTM_GfxSetCsc(enLayerId);
    }

    HAL_DISP_SetLayerDataFmt(g_stGfxDevice[enLayerId].enGfxId, OPTM_PixerFmtTransferToHalFmt(enDataFmt));
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerDataFmt Out\n");
#endif
    return 0;
}

HI_S32 OPTM_GfxSetColorReg(OPTM_GFX_LAYER_EN enLayerId, HI_U32 u32OffSet, HI_U32 u32Color, HI_S32 UpFlag)
{
    HI_U32 *pCTab;
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetColorReg In\n");
#endif

    if (u32OffSet > 255)
    {
        D_OPTM_HIFB_PRINT("GFX color clut offset > 255.\n");
        return -1;
    }

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

	pCTab = (HI_U32 *)(g_stGfxDevice[enLayerId].stCluptTable.u32StartVirAddr);
	pCTab[u32OffSet] = u32Color;
	if (UpFlag != 0)
    {
        //D_OPTM_HIFB_PRINT("GFX color clut update.\n");
        HAL_SetLayerParaUpd(g_stGfxDevice[enLayerId].enGfxId, HAL_DISP_COEFMODE_LUT);
    }
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetColorReg Out\n");
#endif

    return HI_SUCCESS;
}

/***************************************************************************************
* func          : OPTM_GfxWVBCallBack
* description   : CNcomment: 等中断 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifndef __BOOT__

#ifdef OPTM_HIFB_WVM_ENABLE
HI_VOID OPTM_GfxWVBCallBack(HI_U32 enLayerId, HI_U32 u32Param1)
{

#if 1
	/**
	 **实时获取需要改变的参数信息
	 **/
	OPTM_M_DISP_INFO_S stSrcInfo;
	HAL_DISP_OUTPUTCHANNEL_E enDispCh;
	HAL_DISP_LAYER_E enGfxId;
#endif

#ifdef TEST_OPTMHIFB_CAPA
	OPTMHIFB_TINIT();
    if(HI_TRUE == bWaitTimeOut)
    {
		OPTMHIFB_TSTART();
		s32Time1[0] = tv_start.tv_sec;
		s32Time1[1] = tv_start.tv_usec;
    }
#endif

#if 1
	/**
	 **实时获取需要改变的参数信息
	 **/
	enGfxId = OPTM_GfxGetLayerHalId(enLayerId);
	enDispCh = Vou_GetDisplayChOfLayer(enGfxId);
	OPTM_M_GetDispInfo(enDispCh, &stSrcInfo);
	if(   g_stGfxDevice[enLayerId].Bright     !=  stSrcInfo.u32Bright      \
	   || g_stGfxDevice[enLayerId].Contrast   !=  stSrcInfo.u32Contrast    \
	   || g_stGfxDevice[enLayerId].Saturation !=  stSrcInfo.u32Saturation  \
	   || g_stGfxDevice[enLayerId].Hue        !=  stSrcInfo.u32Hue)
	{
		OPTM_GfxSetCsc(enLayerId);
	}

#endif

    g_stGfxDevice[enLayerId].vblflag = 1;
    wake_up_interruptible(&(g_stGfxDevice[enLayerId].vblEvent));

#ifdef TEST_OPTMHIFB_CAPA
	if(HI_TRUE == bWaitTimeOut)
	{
		OPTMHIFB_TEND();
		s32Time2[0] = tv_end.tv_sec;
		s32Time2[1] = tv_end.tv_usec;
		bWaitTimeOut = HI_FALSE;
	}
#endif

    return;

}

HI_S32 OPTM_GfxWaitVBlank(OPTM_GFX_LAYER_EN enLayerId)
{
    HI_U32 u32TimeOutMs;
    HI_S32 ret;

#ifdef OPTM_HIFB_DEBUG_WVM
    HI_U64 SysTimeA, SysTimeB;
#endif

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    u32TimeOutMs = (200 * HZ)/1000; /** 20ms **/

#ifdef OPTM_HIFB_DEBUG_WVM
    D_OPTM_HIFB_PRINT("\nstart wait vb %d...\n", enLayerId);
    SysTimeA = sched_clock();
#endif

/**
 **等中断唤醒
 **/
#ifdef TEST_OPTMHIFB_CAPA
	//OPTM_HIFB_TRACE("\nu32TimeOutMs = %d\n",u32TimeOutMs);
	bWaitTimeOut = HI_TRUE;
	//OPTM_HIFB_TRACE("\n bWaitTimeOut = %d\n",bWaitTimeOut);
	OPTMHIFB_TINIT();
	OPTMHIFB_TSTART();
	s32Time0[0] = tv_start.tv_sec;
	s32Time0[1] = tv_start.tv_usec;
#endif
    g_stGfxDevice[enLayerId].vblflag = 0;
    ret = wait_event_interruptible_timeout(g_stGfxDevice[enLayerId].vblEvent, g_stGfxDevice[enLayerId].vblflag, u32TimeOutMs);
#ifdef TEST_OPTMHIFB_CAPA
	OPTMHIFB_TEND();
    s32Time3[0] = tv_end.tv_sec;
	s32Time3[1] = tv_end.tv_usec;
    bWaitTimeOut = HI_FALSE;
	OPTM_HIFB_TRACE("\n=================================\n");
	OPTM_HIFB_TRACE("s32Time0 = [sec usec] = [%d,%d]\n",s32Time0[0],s32Time0[1]);
	OPTM_HIFB_TRACE("s32Time1 = [sec usec] = [%d,%d]\n",s32Time1[0],s32Time1[1]);
	OPTM_HIFB_TRACE("s32Time2 = [sec usec] = [%d,%d]\n",s32Time2[0],s32Time2[1]);
	OPTM_HIFB_TRACE("s32Time3 = [sec usec] = [%d,%d]\n",s32Time3[0],s32Time3[1]);
	OPTM_HIFB_TRACE("1 - 0 = %d\n",s32Time1[1] - s32Time0[1]);
	OPTM_HIFB_TRACE("2 - 1 = %d\n",s32Time2[1] - s32Time1[1]);
	OPTM_HIFB_TRACE("3 - 2 = %d\n",s32Time3[1] - s32Time2[1]);
	OPTM_HIFB_TRACE("3 - 0 = %d\n",s32Time3[1] - s32Time0[1]);
	OPTM_HIFB_TRACE("\n=================================\n");
#endif


#ifdef OPTM_HIFB_DEBUG_WVM
    SysTimeB = sched_clock();
    SysTimeB -= SysTimeA;
    do_div(SysTimeB, (HI_U64)1000000);
    D_OPTM_HIFB_PRINT("\nwait vb time =%dms\n", (HI_U32)SysTimeB);
#endif

    return ret;

}

#else

HI_S32 OPTM_GfxWaitVBlank(OPTM_GFX_LAYER_EN enLayerId)
{
    return HI_FAILURE;
}
#endif

/***************************************************************************************
* func          : OPTM_GfxWaitRRCallBack
* description   : CNcomment: 等中断 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifdef OPTM_HIFB_GFXRR_ENABLE
HI_VOID OPTM_GfxWaitRRCallBack(OPTM_GFX_LAYER_EN u32LayerId, HI_U32 u32Param1)
{
    g_stGfxDevice[u32LayerId].RRflag = 1;
    wake_up_interruptible(&(g_stGfxDevice[u32LayerId].RREvent));
    return;
}
HI_S32 OPTM_GfxWaitRR(OPTM_GFX_LAYER_EN enLayerId)
{
    HI_U32 u32TimeOutMs;
    volatile HI_U32 tmpState;
    HI_S32 ret;

#ifdef OPTM_HIFB_DEBUG_WRR
    HI_U64 SysTimeA, SysTimeB;
    HI_S32 nBranchFlag = 0;
#endif

    D_OPTM_HIFB_CheckDispOpen(enLayerId);

    u32TimeOutMs = (200 * HZ)/1000;

#ifdef OPTM_HIFB_DEBUG_WRR
    SysTimeA = sched_clock();
#endif

    /*  clear status history, set interrupt enable */
    HAL_DISP_ClearIntSta(g_stGfxDevice[enLayerId].enWRRIntNumber);
    HAL_DISP_SetIntEnable(g_stGfxDevice[enLayerId].enWRRIntNumber);

    tmpState = OPTM_HAL_GetRegUpState(g_stGfxDevice[enLayerId].enGfxId);
    if (!tmpState)
    {
        g_stGfxDevice[enLayerId].RRflag = 0;

#ifdef OPTM_HIFB_DEBUG_WRR
        HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);
#endif

        ret = wait_event_interruptible_timeout(g_stGfxDevice[enLayerId].RREvent, g_stGfxDevice[enLayerId].RRflag, u32TimeOutMs);
		/*Clear Codecc warning*/
		(void)ret;
#ifdef OPTM_HIFB_DEBUG_WRR
        nBranchFlag |= 1;
#endif
    }
    else
    {
        /*  new setting will take effect after 2 interrupts */
        g_stGfxDevice[enLayerId].RRflag = 0;

        tmpState = OPTM_HAL_GetRegUpState(g_stGfxDevice[enLayerId].enGfxId);
        if (tmpState)
        {
            /* up reg is 1, wait occurence of current event */
            ret = wait_event_interruptible_timeout(g_stGfxDevice[enLayerId].RREvent, g_stGfxDevice[enLayerId].RRflag, u32TimeOutMs);
		/*Clear Codecc warning*/
                (void)ret;
#ifdef OPTM_HIFB_DEBUG_WRR
            nBranchFlag |= 2;
#endif
        }

        g_stGfxDevice[enLayerId].RRflag = 0;
        ret = wait_event_interruptible_timeout(g_stGfxDevice[enLayerId].RREvent, g_stGfxDevice[enLayerId].RRflag, u32TimeOutMs);
		/*Clear Codecc warning*/
		(void)ret;
#ifdef OPTM_HIFB_DEBUG_WRR
            nBranchFlag |= 4;
#endif
    }

    /* occurrence of this interrupt, close interrupt */
    HAL_DISP_SetIntDisable(g_stGfxDevice[enLayerId].enWRRIntNumber);

#ifdef OPTM_HIFB_DEBUG_WRR
    SysTimeB = sched_clock();
    SysTimeB -= SysTimeA;
    do_div(SysTimeB, (HI_U64)1000000);

    D_OPTM_HIFB_PRINT("wait rr time =%dms, nBranchFlag=%d\n", (HI_U32)SysTimeB, nBranchFlag);
#endif

    return ret;

}

#else

HI_S32 OPTM_GfxWaitRR(OPTM_GFX_LAYER_EN enLayerId)
{
    return HI_FAILURE;
}

#endif


HI_S32 OPTM_GfxSetLayerDeFlicker(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_DEFLICKER_S *pstDeFlicker)
{
    D_OPTM_HIFB_PRINT("VO not surpport deflicker!\n");
    return HI_FAILURE;
}
#endif


/***************************************************************************************
* func          : OPTM_GfxSetLayerAlpha
* description   : CNcomment: 设置图层alpha CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxSetLayerAlpha(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_ALPHA_S *pstAlpha)
{

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    Vou_SetGfxPalpha(g_stGfxDevice[enLayerId].enGfxId, pstAlpha->bAlphaEnable, HI_TRUE,
                                   pstAlpha->u8Alpha0, pstAlpha->u8Alpha1);
    Vou_SetLayerGalpha(g_stGfxDevice[enLayerId].enGfxId, pstAlpha->u8GlobalAlpha);

    if(HAL_DISP_LAYER_GFX0 == g_stGfxDevice[enLayerId].enGfxId){
        Vou_SetLayerGalpha(HAL_DISP_LAYER_GFX1, pstAlpha->u8GlobalAlpha);
    }else{
        Vou_SetLayerGalpha(HAL_DISP_LAYER_GFX1, 0xff);
    }

     if (g_stGfxDevice[enLayerId].enSlvGfxId != OPTM_GFX_LAYER_BUTT)
     {
         OPTM_GFX_LAYER_EN enSlvId;
         enSlvId = g_stGfxDevice[enLayerId].enSlvGfxId;
         g_stGfxDevice[enSlvId].stAlpha = *pstAlpha;
         g_stGfxDevice[enSlvId].unUpFlag.bits.Alpha = 1;
     }

     return HI_SUCCESS;
}


/***************************************************************************************
* func          : OPTM_GFX_CalRatioRect
* description   : CNcomment: 获取实际参数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 OPTM_GFX_CalRatioRect(HI_RECT_S *pstParentA, HI_RECT_S *pstChildA, HI_RECT_S *pstParentB, HI_RECT_S *pstChildB)
{


	if(0 == pstParentA->s32Width || 0 == pstParentA->s32Height)
	{
		OPTM_HIFB_TRACE("the pstParentA value of w or h is zero at line = %d\n",__LINE__);
		return HI_FAILURE;
	}

    pstChildB->s32X      = pstChildA->s32X  * pstParentB->s32Width / pstParentA->s32Width + pstParentB->s32X;
    pstChildB->s32Y      = (pstChildA->s32Y * pstParentB->s32Height / pstParentA->s32Height + pstParentB->s32Y) & 0xfffffffcL;

	pstChildB->s32Width  = (pstChildA->s32Width  * pstParentB->s32Width  / pstParentA->s32Width)  & 0xfffffffeL;
    pstChildB->s32Height = (pstChildA->s32Height * pstParentB->s32Height / pstParentA->s32Height) & 0xfffffffcL;

	/**
	 **pstParentA  制式
	 **pstChildA   图层输出
	 **pstParentB  PAL制，标清回写制式
	 **/
#if 0
	OPTM_HIFB_TRACE("line = %d [%d %d %d %d]\n",
		                                __LINE__,
		                                pstChildB->s32X,
		                                pstChildB->s32Y,
		                                pstChildB->s32Width,
		                                pstChildB->s32Height);

	OPTM_HIFB_TRACE("line = %d [%d %d %d %d]\n",
		                                __LINE__,
		                                pstChildA->s32Width,
		                                pstChildA->s32Height,
		                                pstParentA->s32Width,
		                                pstParentA->s32Height);
	OPTM_HIFB_TRACE("line = %d [%d %d]\n",
		                                __LINE__,
		                                pstParentB->s32Width,
		                                pstParentB->s32Height);

#endif

    return HI_SUCCESS;
}



/***************************************************************************************
* func          : OPTM_GfxSetLayerRect
* description   : CNcomment: 设置输入输出大小 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxSetLayerRect(OPTM_GFX_LAYER_EN enLayerId, HI_RECT_S *pstInputRect, HI_RECT_S *pstOutputRect)
{
	GFX_SCALER_CONFIG_S stZmeCfgIn;
	HI_UNF_ENC_FMT_E enLayerDispFmt;

	HI_S32 s32X = 0;
	HI_S32 s32Y = 0;
	HI_RECT_S pstOutRect = {0};

	D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

	if (   (0 == pstInputRect->s32Width)  || (0 == pstInputRect->s32Height)
	     ||(0 == pstOutputRect->s32Width) || (0 == pstOutputRect->s32Height) ){
		HI_WARN_DISP("VO HIFB set rect invalid\n");
		return HI_FAILURE;
	}

	enLayerDispFmt = OPTM_M_GetDispEncFmt(g_stGfxDevice[enLayerId].enDispCh);

	/**
	 ** start position cannot be odd numbers
	 **/
	g_stGfxDevice[enLayerId].stInRect.s32X      = pstInputRect->s32X & 0xfffffffe;
	g_stGfxDevice[enLayerId].stInRect.s32Y      = pstInputRect->s32Y & 0xfffffffe;
	g_stGfxDevice[enLayerId].stInRect.s32Width  = pstInputRect->s32Width & 0xfffffffe;
	g_stGfxDevice[enLayerId].stInRect.s32Height = pstInputRect->s32Height & 0xfffffffe;

	 /**
	  ** 3D function
	  **/
	if(g_stGfxDevice[enLayerId].b3DEnable){
		if(g_stGfxDevice[enLayerId].en3DMode == OPTM_GFX_MODE_SIDE_BY_SIDE){
		     g_stGfxDevice[enLayerId].stOutRect.s32X      = pstOutputRect->s32X & 0xfffffffe;
		     g_stGfxDevice[enLayerId].stOutRect.s32Y      = pstOutputRect->s32Y & 0xfffffffe;
		     g_stGfxDevice[enLayerId].stOutRect.s32Width  = pstOutputRect->s32Width& 0xfffffffe;
		     g_stGfxDevice[enLayerId].stOutRect.s32Height = pstOutputRect->s32Height & 0xfffffffe;
		}else if(g_stGfxDevice[enLayerId].en3DMode == OPTM_GFX_MODE_TOP_BOTTOM){
		     g_stGfxDevice[enLayerId].stOutRect.s32X      = pstOutputRect->s32X & 0xfffffffe;
		     g_stGfxDevice[enLayerId].stOutRect.s32Y      = pstOutputRect->s32Y & 0xfffffffe;
		     g_stGfxDevice[enLayerId].stOutRect.s32Width  = pstOutputRect->s32Width & 0xfffffffe;
		     g_stGfxDevice[enLayerId].stOutRect.s32Height = pstOutputRect->s32Height & 0xfffffffe;
		}

	}else{
	  	g_stGfxDevice[enLayerId].stOutRect.s32X      = pstOutputRect->s32X & 0xfffffffe;
	  	g_stGfxDevice[enLayerId].stOutRect.s32Y      = pstOutputRect->s32Y & 0xfffffffe;
	  	g_stGfxDevice[enLayerId].stOutRect.s32Width  = pstOutputRect->s32Width & 0xfffffffe;
	  	g_stGfxDevice[enLayerId].stOutRect.s32Height = pstOutputRect->s32Height & 0xfffffffe;
	}


#ifndef __BOOT__
	if(g_stGfxDevice[enLayerId].bCampEnable){
		if(enLayerId == OPTM_GFX_LAYER_HD0){
		   OPTM_GfxChgCmp2Ncmp(OPTM_GFX_LAYER_HD0);
		}
	}
#endif

	stZmeCfgIn.zme_in_width   = g_stGfxDevice[enLayerId].stInRect.s32Width;
	stZmeCfgIn.zme_in_height  = g_stGfxDevice[enLayerId].stInRect.s32Height;
	stZmeCfgIn.zme_out_width  = g_stGfxDevice[enLayerId].stOutRect.s32Width;
	stZmeCfgIn.zme_out_height = g_stGfxDevice[enLayerId].stOutRect.s32Height;

	/**
	 **set input rect
	 **/
	HAL_DISP_SetLayerInRect(g_stGfxDevice[enLayerId].enGfxId, g_stGfxDevice[enLayerId].stInRect);



	pstOutRect = g_stGfxDevice[enLayerId].stOutRect;

	if(OPTM_GFX_LAYER_AD0 == enLayerId || OPTM_GFX_LAYER_AD1 == enLayerId){
		if (  enLayerDispFmt == HI_UNF_ENC_FMT_1080i_60
		   || enLayerDispFmt == HI_UNF_ENC_FMT_1080i_50
	       || enLayerDispFmt == HI_UNF_ENC_FMT_PAL
	       || enLayerDispFmt == HI_UNF_ENC_FMT_NTSC){
			pstOutRect.s32Y      = g_stGfxDevice[enLayerId].stOutRect.s32Y * 2;
			pstOutRect.s32Width  = g_stGfxDevice[enLayerId].stInRect.s32Width;
			pstOutRect.s32Height = g_stGfxDevice[enLayerId].stInRect.s32Height *2;
		}else{
			pstOutRect.s32Width  = g_stGfxDevice[enLayerId].stInRect.s32Width;
			pstOutRect.s32Height = g_stGfxDevice[enLayerId].stInRect.s32Height;
		}
	}

	/**
	 **set output rect
	 **/
	HAL_DISP_SetLayerOutRect(g_stGfxDevice[enLayerId].enGfxId, pstOutRect);

	if (g_stGfxDevice[enLayerId].b3DEnable){
		if (g_stGfxDevice[enLayerId].en3DMode == OPTM_GFX_MODE_SIDE_BY_SIDE){
		    s32X = g_stGfxDevice[enLayerId].stOutRect.s32Width*2 + g_stGfxDevice[enLayerId].stOutRect.s32X;
		    s32Y = g_stGfxDevice[enLayerId].stOutRect.s32Height + g_stGfxDevice[enLayerId].stOutRect.s32Y;
		}else if (g_stGfxDevice[enLayerId].en3DMode == OPTM_GFX_MODE_TOP_BOTTOM){
		    s32X = g_stGfxDevice[enLayerId].stOutRect.s32Width + g_stGfxDevice[enLayerId].stOutRect.s32X;
		    s32Y = g_stGfxDevice[enLayerId].stOutRect.s32Height*2 + g_stGfxDevice[enLayerId].stOutRect.s32Y;
		}
		HAL_DISP_SetLayerDLPos(g_stGfxDevice[enLayerId].enGfxId, s32X, s32Y);
	}


	if(   (enLayerId == OPTM_GFX_LAYER_AD0 || enLayerId == OPTM_GFX_LAYER_AD1)
	    &&(!g_stGfxDevice[OPTM_GFX_LAYER_HD0].bOpened)){

		s32Y = g_stGfxDevice[enLayerId].stInRect.s32Height;
		/**
		 ** when HD was closed, the distance between HD and AD was zero
		 **/
		HAL_DISP_SetLayerDFPos(g_stGfxDevice[enLayerId].enGfxId, 0, 0);
		 if(enLayerDispFmt == HI_UNF_ENC_FMT_1080i_60 ||
		    enLayerDispFmt == HI_UNF_ENC_FMT_1080i_50 ||
		    enLayerDispFmt == HI_UNF_ENC_FMT_PAL      ||
		    enLayerDispFmt == HI_UNF_ENC_FMT_NTSC)
		 {
		    s32Y *= 2;
		 }
		 /**when HD was closed, the last position of AD before zme*/
		 HAL_DISP_SetLayerDLPos(g_stGfxDevice[enLayerId].enGfxId, g_stGfxDevice[enLayerId].stInRect.s32Width, s32Y);
	}


	stZmeCfgIn.p_coef_addr       = &(g_stZmeModule.stCoefAddr);
	stZmeCfgIn.zme_output_prog   = OPTM_HAL_GetDispIoP(g_stGfxDevice[enLayerId].enDispCh);

	/** current mode is progressive, thus in 1080i, if zme_input_prog is false, image shakes;
	 ** even if input is interlaced, it still shakes.
	 ** As a result, zme_input_prog is forcely set ture.
	 **/
	/**
	 ** for mv300, use compression mode, wbc3 needed progressive read.
	 **/
	stZmeCfgIn.zme_input_prog  = HI_TRUE;
	/**
     ** set progressive
     ** mv310 ad0只支持逐行输入
     **/
	Vou_SetGfxReadMode(g_stGfxDevice[enLayerId].enGfxId, 1);

	OPTM_AA_GfxZmeApi(g_stGfxDevice[enLayerId].enGfxId, &stZmeCfgIn, HI_NULL);

	if (g_stGfxDevice[enLayerId].enSlvGfxId != OPTM_GFX_LAYER_BUTT){
		OPTM_GFX_LAYER_S *pstSlvGfx;
		pstSlvGfx = &g_stGfxDevice[g_stGfxDevice[enLayerId].enSlvGfxId];
		pstSlvGfx->unUpFlag.bits.InRect  = 1;
		pstSlvGfx->unUpFlag.bits.OutRect = 1;
	}


	return HI_SUCCESS;

}

/***************************************************************************************
* func          : OPTM_GfxSetHDRect
* description   : CNcomment: 设置高清rect CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxSetHDRect(OPTM_GFX_LAYER_EN enLayerId, HI_RECT_S *pstInputRect, HI_RECT_S *pstOutputRect)
{
    GFX_SCALER_CONFIG_S      stZmeCfgIn;

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);
    if (  (0 == pstInputRect->s32Width)  || (0 == pstInputRect->s32Height)
        ||(0 == pstOutputRect->s32Width) || (0 == pstOutputRect->s32Height) )
    {
        HI_WARN_DISP("VO HIFB set rect invalid\n");
        return -1;
    }

    g_stGfxDevice[OPTM_GFX_LAYER_HD0].enGfxId = HAL_DISP_LAYER_GFX0;

	/* start position cannot be odd numbers */
	pstInputRect->s32X &= 0xfffffffe;
	pstInputRect->s32Y &= 0xfffffffe;
	pstInputRect->s32Width &= 0xfffffffe;
	pstInputRect->s32Height &= 0xfffffffe;

    // 3D function
  	if(g_stGfxDevice[enLayerId].b3DEnable)
    {
      if(g_stGfxDevice[enLayerId].en3DMode == OPTM_GFX_MODE_SIDE_BY_SIDE)
      {
		     pstOutputRect->s32X &= 0xfffffffe;
		     pstOutputRect->s32Y &= 0xfffffffe;
		     pstOutputRect->s32Width  &= 0xfffffffe;
		     pstOutputRect->s32Height &= 0xfffffffe;
      }
      else if(g_stGfxDevice[enLayerId].en3DMode == OPTM_GFX_MODE_TOP_BOTTOM)
      {
		     pstOutputRect->s32X  &= 0xfffffffe;
		     pstOutputRect->s32Y  &= 0xfffffffe;
		     pstOutputRect->s32Width  &= 0xfffffffe;
		     pstOutputRect->s32Height &= 0xfffffffe;   // vo can't do more than 1/2 shrink

      }
    }
    else
    {
		  pstOutputRect->s32X &= 0xfffffffe;
		  pstOutputRect->s32Y &= 0xfffffffe;
		  pstOutputRect->s32Width  &= 0xfffffffe;
		  pstOutputRect->s32Height &= 0xfffffffe;
    }

    stZmeCfgIn.zme_in_width  = pstInputRect->s32Width;
    stZmeCfgIn.zme_in_height = pstInputRect->s32Height;

    stZmeCfgIn.zme_out_width  = pstOutputRect->s32Width;
    stZmeCfgIn.zme_out_height = pstOutputRect->s32Height;

    HAL_DISP_SetLayerInRect(HAL_DISP_LAYER_GFX0, *pstInputRect);
    HAL_DISP_SetLayerOutRect(HAL_DISP_LAYER_GFX0, *pstOutputRect);

    stZmeCfgIn.p_coef_addr       = &(g_stZmeModule.stCoefAddr);

    stZmeCfgIn.zme_output_prog = OPTM_HAL_GetDispIoP(g_stGfxDevice[enLayerId].enDispCh);

	/*  set progressive */
    stZmeCfgIn.zme_input_prog  = HI_TRUE;
    Vou_SetGfxReadMode(HAL_DISP_LAYER_GFX0, 1);


    //stZmeCfgIn.zme_input_prog  = HI_TRUE;
    OPTM_AA_GfxZmeApi(HAL_DISP_LAYER_GFX0, &stZmeCfgIn, HI_NULL);

#if 0/** there is no LTI/CTI in 3716MV310 G0.**/
	if(g_stGfxDevice[enLayerId].bSharpEnable)
	{
	 //OPTM_AA_GFX_VTIApi(HAL_DISP_LAYER_GFX0, &stZmeCfgIn,HAL_DISP_TIMODE_ALL);
	}
#endif

    HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_GFX0);

#if 0
    if (g_stGfxDevice[enLayerId].enSlvGfxId != OPTM_GFX_LAYER_BUTT)
    {
        OPTM_GFX_LAYER_S *pstSlvGfx;

        pstSlvGfx = &g_stGfxDevice[g_stGfxDevice[enLayerId].enSlvGfxId];

        pstSlvGfx->unUpFlag.bits.InRect = 1;
        pstSlvGfx->unUpFlag.bits.OutRect = 1;
    }
#endif

    return HI_SUCCESS;

}

/***************************************************************************************
* func          : OPTM_GfxGetLayerRect
* description   : CNcomment: 获取layer rect CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxGetLayerRect(OPTM_GFX_LAYER_EN enLayerId, HI_RECT_S *pstInputRect, HI_RECT_S *pstOutputRect)
{

    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    OPTM_HAL_DISP_GetLayerInRect(g_stGfxDevice[enLayerId].enGfxId,  pstInputRect);
    OPTM_HAL_DISP_GetLayerOutRect(g_stGfxDevice[enLayerId].enGfxId, pstOutputRect);

    return HI_SUCCESS;
}


HI_S32 OPTM_GfxSetLayKeyMask(OPTM_GFX_LAYER_EN enLayerId, OPTM_COLOR_KEY_S *pstColorkey)
{
   HAL_GFX_KEY_S stKey = {0};

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayKeyMask In\n");
#endif
   D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

   stKey.bKeyMode = pstColorkey->u32KeyMode;
   if (g_stGfxDevice[enLayerId].CscState == OPTM_CSC_SET_PARA_BGR)
   {
       stKey.u8Key_r_min = pstColorkey->u8BlueMin;
       stKey.u8Key_g_min = pstColorkey->u8GreenMin;
       stKey.u8Key_b_min = pstColorkey->u8RedMin;

       stKey.u8Key_r_max = pstColorkey->u8BlueMax;
       stKey.u8Key_g_max = pstColorkey->u8GreenMax;
       stKey.u8Key_b_max = pstColorkey->u8RedMax;

/* ignore mask */
#if 1
       stKey.u8Key_r_msk = pstColorkey->u8BlueMask;
       stKey.u8Key_g_msk = pstColorkey->u8GreenMask;
       stKey.u8Key_b_msk = pstColorkey->u8RedMask;
#else
       stKey.u8Key_r_msk = 0;
       stKey.u8Key_g_msk = 0;
       stKey.u8Key_b_msk = 0;
#endif
    }
    else
    {
       stKey.u8Key_r_min = pstColorkey->u8RedMin;
       stKey.u8Key_g_min = pstColorkey->u8GreenMin;
       stKey.u8Key_b_min = pstColorkey->u8BlueMin;

       stKey.u8Key_r_max = pstColorkey->u8RedMax;
       stKey.u8Key_g_max = pstColorkey->u8GreenMax;
       stKey.u8Key_b_max = pstColorkey->u8BlueMax;

/* ignore mask */
#if 1
       stKey.u8Key_r_msk = pstColorkey->u8RedMask;
       stKey.u8Key_g_msk = pstColorkey->u8GreenMask;
       stKey.u8Key_b_msk = pstColorkey->u8BlueMask;
#else
       stKey.u8Key_r_msk = 0;
       stKey.u8Key_g_msk = 0;
       stKey.u8Key_b_msk = 0;
#endif
    }

    /*  set key threshold / mode / enable of graphic layer */
    Vou_SetGfxKey(g_stGfxDevice[enLayerId].enGfxId, pstColorkey->bKeyEnable, stKey);
#if 0
    if (g_stGfxDevice[u32LayerId].u32SlvId != OPTM_INVALID_LAYER_ID)
    {
        Vou_SetGfxKey(g_stGfxDevice[g_stGfxDevice[u32LayerId].u32SlvId].enGfxId, stColorkey.bKeyEnable, stKey);
    }
#endif

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayKeyMask Out\n");
#endif
   return 0;
}

/*  set bit-extension mode  */
HI_S32 OPTM_GfxSetLayerBitExtMode(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_BITEXTEND_E enBtMode)
{
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerBitExtMode In\n");
#endif
    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

 	Vou_SetGfxExt(g_stGfxDevice[enLayerId].enGfxId, (HAL_GFX_BITEXTEND_E)enBtMode);

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerBitExtMode Out\n");
#endif
    return 0;
}

/*  superposition */
HI_S32 OPTM_GfxSetLayerPreMult(OPTM_GFX_LAYER_EN enLayerId, HI_BOOL bEnable)
{
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerPreMult In\n");
#endif
     D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

     Vou_SetGfxPreMult(g_stGfxDevice[enLayerId].enGfxId, bEnable);

     if (g_stGfxDevice[enLayerId].enSlvGfxId != OPTM_GFX_LAYER_BUTT)
     {
         OPTM_GFX_LAYER_EN enSlvId;

         enSlvId = g_stGfxDevice[enLayerId].enSlvGfxId;

         g_stGfxDevice[enSlvId].bPreMute = bEnable;
         g_stGfxDevice[enSlvId].unUpFlag.bits.PreMute = 1;
     }

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetLayerPreMult Out\n");
#endif
    return 0;
}

HI_S32  OPTM_GfxSetClutAddr(OPTM_GFX_LAYER_EN enLayerId, HI_U32 u32PhyAddr)
{
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetClutAddr In\n");
#endif
    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    /* filtering */
    HAL_SetCoefAddr(g_stGfxDevice[enLayerId].enGfxId, HAL_DISP_COEFMODE_LUT, u32PhyAddr);
    /* zoom coefficients, LUT related */
    HAL_SetLayerParaUpd(g_stGfxDevice[enLayerId].enGfxId, HAL_DISP_COEFMODE_LUT);

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetClutAddr Out\n");
#endif
    return 0;
}



/***************************************************************************************
* func          : OPTM_GfxGetOSDData
* description   : CNcomment: 获取OSD数据 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifndef __BOOT__
HI_S32 OPTM_GfxGetOSDData(OPTM_GFX_LAYER_EN enLayerId, OPTM_OSD_DATA_S *pstLayerData)
{

    HI_U32 tmpState     = 0;
    HAL_GFX_KEY_S stKey = {0};
    HI_U32 alpharange  = 0;
    HI_U32 wh           = 0;

    HAL_DISP_LAYER_E enGfxId;
	HAL_DISP_OUTPUTCHANNEL_E enDispCh;

    D_OPTM_HIFB_CheckDispOpen(enLayerId);

    if (HI_NULL == pstLayerData)
    {
        return HI_FAILURE;
    }

    enGfxId = OPTM_GfxGetLayerHalId(enLayerId);
    if (enGfxId == HAL_DISP_LAYER_BUTT)
    {
        return HI_FAILURE;
    }

    /*  query the status of switches of a layer */
    tmpState = OPTM_HAL_GetLayerEnable(enGfxId);
    if (tmpState)
    {
        pstLayerData->eState = OPTM_LAYER_STATE_ENABLE;
    }
    else
    {
        pstLayerData->eState = OPTM_LAYER_STATE_DISABLE;
    }

    /**
     ** query the source address of graphic layer
     **/
    pstLayerData->u32BufferPhyAddr = g_stGfxDevice[enLayerId].NoCmpBufAddr;
    /**
     ** query the source address of graphic layer
     **/
    pstLayerData->u32RegPhyAddr    = OPTM_HAL_GetGfxAddr(enGfxId);
    /**
     ** query stride of graphic layer
     **/
    pstLayerData->u32Stride        = OPTM_HAL_GetGfxStride(enGfxId);
    /**
     ** query the mode of graphic layer,这个在attach绑定的时候赋值
     **/
    pstLayerData->gfxWorkMode      = g_enOptmGfxWorkMode;
    /**
     ** query input window
     **/
    OPTM_HAL_DISP_GetLayerInRect(enGfxId, &pstLayerData->stInRect);
    /**
     ** query output window
     **/
    OPTM_HAL_DISP_GetLayerOutRect(enGfxId, &pstLayerData->stOutRect);
    /**
     ** query GFX data format
     **/
    pstLayerData->eFmt = OPTM_HalFmtTransferToPixerFmt((HAL_DISP_PIXELFORMAT_E)OPTM_HAL_GetLayerDataFmt(enGfxId));

    /**
     ** query PALPHA of graphic layer
     **/
    OPTM_HAL_GetGfxPalpha(enGfxId,
                            &(pstLayerData->stAlpha.bAlphaEnable), /** alpha是否使能 **/
                            &alpharange,                            /** alpha域       **/
                            &(pstLayerData->stAlpha.u8Alpha0),     /** alpha0值。当数据格式为alphaRGB1555时且alpha值为0时，用该值替换。 **/
                            &(pstLayerData->stAlpha.u8Alpha1));    /** alpha1值。当数据格式为alphaRGB1555时且alpha值为1时，用该值替换。 **/

    /**
     ** query global alpha of a layer
     **/
    pstLayerData->stAlpha.u8GlobalAlpha = (HI_U8)OPTM_HAL_GetLayerGalpha(enGfxId);

    /**
     ** query key threshold / mode / enable of graphic layer
     **/
    tmpState = OPTM_HAL_GetGfxKey(enGfxId, &stKey);
    pstLayerData->stColorKey.bKeyEnable    = tmpState;
    pstLayerData->stColorKey.bMaskEnable   = HI_TRUE;
    pstLayerData->stColorKey.u32KeyMode    = stKey.bKeyMode;
    pstLayerData->stColorKey.u8RedMask     = stKey.u8Key_r_msk;
    pstLayerData->stColorKey.u8GreenMask   = stKey.u8Key_g_msk;
    pstLayerData->stColorKey.u8BlueMask    = stKey.u8Key_b_msk;
    pstLayerData->stColorKey.u8RedMax      = stKey.u8Key_r_max;
    pstLayerData->stColorKey.u8GreenMax    = stKey.u8Key_g_max;
    pstLayerData->stColorKey.u8BlueMax     = stKey.u8Key_b_max;
    pstLayerData->stColorKey.u8RedMin      = stKey.u8Key_r_min;
    pstLayerData->stColorKey.u8GreenMin    = stKey.u8Key_g_min;
    pstLayerData->stColorKey.u8BlueMin     = stKey.u8Key_b_min;

    pstLayerData->bPreMul = (HI_BOOL) OPTM_HAL_GetGfxPreMult(enGfxId);

	/**
	 **逐行显示还是隔行显示
	 **/
	enDispCh  = Vou_GetDisplayChOfLayer(enGfxId);
    pstLayerData->bProgressiveDisp = OPTM_HAL_GetDispIoP(enDispCh);

	/**
     ** 获取显示分辨率，制式大小
     **/
    wh = OPTM_HAL_GetDispWH(enDispCh);

    pstLayerData->u32ScreenWidth  = wh >> 16;
    pstLayerData->u32ScreenHeight = wh & 0xffffL;

#if 0
	OPTM_HIFB_TRACE("\n==========================================================\n");
	OPTM_HIFB_TRACE("===%s %s %d\n",__FILE__,__FUNCTION__,__LINE__);
	OPTM_HIFB_TRACE("bProgressiveDisp = %d\n",pstLayerData->bProgressiveDisp);
	OPTM_HIFB_TRACE("pstLayerData->u32ScreenWidth  = %d\n",pstLayerData->u32ScreenWidth);
	OPTM_HIFB_TRACE("pstLayerData->u32ScreenHeight = %d\n",pstLayerData->u32ScreenHeight);
	OPTM_HIFB_TRACE("==========================================================\n");
#endif

	/**
     ** 隔行处理,图层宽度要*2
     **/
    if (pstLayerData->bProgressiveDisp != HI_TRUE)
    {
        pstLayerData->u32ScreenHeight = pstLayerData->u32ScreenHeight << 1;
    }

#if 0
	OPTM_HIFB_TRACE("\n==========================================================\n");
	OPTM_HIFB_TRACE("===%s %s %d\n",__FILE__,__FUNCTION__,__LINE__);
	OPTM_HIFB_TRACE("pstLayerData->u32ScreenHeight = %d\n",pstLayerData->u32ScreenHeight);
	OPTM_HIFB_TRACE("==========================================================\n");
#endif

    return HI_SUCCESS;

}



/***************************************************************************************
* func          : OPTM_GfxSetIntCallback
* description   : CNcomment: 设置中断回调函数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxSetIntCallback(OPTM_INT_TPYE_E eIntType, PF_OPTM_GFX_INT_CALLBACK pCallBack, OPTM_GFX_LAYER_EN enLayerId)
{
    HI_S32 nRet = HI_FAILURE;

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetIntCallback In\n");
#endif
     D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    if ( (enLayerId >= OPTM_GFX_LAYER_BUTT) || (eIntType >= OPTM_INTTYPE_BUTT))
    {
        return HI_FAILURE;
    }
    if (OPTM_GFX_LAYER_AD0 == enLayerId)
    {
        g_LayerId[enLayerId] = ADAPT_LAYER_AD_0;
    }
    else if (OPTM_GFX_LAYER_AD1 == enLayerId)
    {
        g_LayerId[enLayerId] = ADAPT_LAYER_AD_1;
    }
    else
    {
        g_LayerId[enLayerId] = (HI_U32)enLayerId;
    }
    if (OPTM_INTTYPE_VTHD == eIntType)
    {
        if (pCallBack != HI_NULL)
        {
           nRet = OPTM_M_INT_Registe(g_stGfxDevice[enLayerId].enIntNumber,
                                       g_stGfxDevice[enLayerId].s32WorkIsrCallOrder,
                                       (OPTM_IRQ_FUNC)pCallBack,
                                       (HI_U32)(&g_LayerId[enLayerId]), 0);
        }
        else
        {
           nRet = OPTM_M_INT_UnRegiste(g_stGfxDevice[enLayerId].enIntNumber,
                                       g_stGfxDevice[enLayerId].s32WorkIsrCallOrder);
        }
    }
    else if (OPTM_INTTYPE_CHANGE_DISP == eIntType)
    {
        if (pCallBack != HI_NULL)
        {
           nRet = OPTM_M_INT_Registe(g_stGfxDevice[enLayerId].enIntNumber,
                                       g_stGfxDevice[enLayerId].s32DispIsrCallOrder,
                                       (OPTM_IRQ_FUNC)pCallBack,
                                       (HI_U32)(&g_LayerId[enLayerId]), 0);
        }
        else
        {
           nRet = OPTM_M_INT_UnRegiste(g_stGfxDevice[enLayerId].enIntNumber,
                                         g_stGfxDevice[enLayerId].s32DispIsrCallOrder);
        }
    }
    else
    {
        nRet = HI_FAILURE;
    }

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxSetIntCallback Out\n");
#endif

    return nRet;

}
#endif



HI_S32 OPTM_GfxUpLayerReg(OPTM_GFX_LAYER_EN enLayerId)
{
#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxUpLayerReg In\n");
#endif
    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enLayerId].enGfxId);

    if (g_stGfxDevice[enLayerId].enSlvGfxId!= OPTM_GFX_LAYER_BUTT)
    {
        g_stGfxDevice[g_stGfxDevice[enLayerId].enSlvGfxId].unUpFlag.bits.RegUp = 1;
    }

#ifdef OPTM_HIFB_INTERFACE_ENABLE
    Print("OPTM_GfxUpLayerReg Out\n");
#endif
    return 0;
}


/***************************************************************************************
* func          : OPTM_GFX_OpenWbc2
* description   : CNcomment: open wbc CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GFX_OpenWbc2(OPTM_GFX_WBC_S *pstWbc2)
{

#ifdef __BOOT__
	HI_S32  Ret = 0;
#endif

    if (HI_TRUE == pstWbc2->bOpened)
    {
        return HI_SUCCESS;
    }

    /** apply CLUT TABLE buffer **/
    pstWbc2->s32BufferWidth  = 720;
    pstWbc2->s32BufferHeight = 576;
    pstWbc2->u32BufferStride = pstWbc2->s32BufferWidth * 4;

	#ifndef __BOOT__
		if(HI_DRV_MMZ_AllocAndMap("hifb_wbc2",             \
			                       HI_NULL,                 \
			                       pstWbc2->u32BufferStride * pstWbc2->s32BufferHeight,\
			                       0,                      \
			                       &(pstWbc2->stFrameBuffer)) != 0)
	#else
	    Ret = HI_PDM_AllocReserveMem("hifb_wbc2",                                         \
			                         pstWbc2->u32BufferStride * pstWbc2->s32BufferHeight,\
			                         &(pstWbc2->stFrameBuffer.u32StartPhyAddr));

	    pstWbc2->stFrameBuffer.u32StartVirAddr = pstWbc2->stFrameBuffer.u32StartPhyAddr;
	    pstWbc2->stFrameBuffer.u32Size         = pstWbc2->u32BufferStride * pstWbc2->s32BufferHeight;
		if(HI_SUCCESS != Ret)
	#endif
	{
	 	HI_WARN_DISP("GFX Get wbc2 buf failed\n");
	 	return HI_FAILURE;
	}

	memset((HI_U8 *)(pstWbc2->stFrameBuffer.u32StartVirAddr), 0, pstWbc2->u32BufferStride * pstWbc2->s32BufferHeight);

	/**
	 **不支持压缩回写
	 **/
	OPTM_HAL_SetWbcCmpMode(HAL_DISP_LAYER_WBC2,0);

	pstWbc2->bEnable      = HI_FALSE;
	pstWbc2->enGfxId      = HAL_DISP_LAYER_WBC2;
	/** 0, feeder; others, reserve **/
	pstWbc2->u32DataPoint = 0;
	pstWbc2->enDataFmt    = HAL_INPUTFMT_ARGB_8888;

	Vou_SetWbcOutFmt(HAL_DISP_LAYER_WBC2, HAL_DISP_INTFDATAFMT_ARGB8888);
	Vou_SetWbcAddr(pstWbc2->enGfxId, pstWbc2->stFrameBuffer.u32StartPhyAddr);
	Vou_SetWbcStride(pstWbc2->enGfxId, pstWbc2->u32BufferStride);

	/** set registers **/
	Vou_SetWbcEnable(HAL_DISP_LAYER_WBC2, 0);
	HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_WBC2);

	pstWbc2->bOpened = HI_TRUE;

    return HI_SUCCESS;

}
/***************************************************************************************
* func          : OPTM_GFX_CloseWbc2
* description   : CNcomment: close wbc CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GFX_CloseWbc2(OPTM_GFX_WBC_S *pstWbc2)
{
    if (pstWbc2->bOpened == HI_FALSE)
    {
        return HI_SUCCESS;
    }

    HI_DRV_MMZ_UnmapAndRelease(&(pstWbc2->stFrameBuffer));

	pstWbc2->bOpened = HI_FALSE;
	pstWbc2->stFrameBuffer.u32StartVirAddr = 0;
	pstWbc2->stFrameBuffer.u32StartPhyAddr = 0;

    return HI_SUCCESS;

}


/***************************************************************************************
* func          : OPTM_GfxConfigSlvLayer
* description   : CNcomment: 设置标清回写图层参数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxConfigSlvLayer(OPTM_GFX_LAYER_S *pstGfx,OPTM_GFX_LAYER_S *pstSlvGfx)
{

    HI_RECT_S stMstScrnWin, stSlvScrnWin;
	//HI_UNF_ENC_FMT_E enLayerDispFmt;
	//HAL_DISP_OUTPUTCHANNEL_E enDispch;
	HI_RECT_S stSlvInRect = {0};

	/**
	 ** get the format of display channel of main window
	 **/
	//enDispch       = pstGfx->enDispCh;
	//enLayerDispFmt = OPTM_M_GetDispEncFmt(pstGfx->enDispCh);

    /**
     ** get the resolution of main window
     **/
    OPTM_M_GetDispScreen(pstGfx->enDispCh, &stMstScrnWin);

    /**
     ** for check if gfx output window configure by user
     **/
    if(OPTM_M_GetGfxScreen(pstSlvGfx->enDispCh, &stSlvScrnWin)== HI_SUCCESS)
    {
		/**
		 ** compute proportional output window
		 **/
	    OPTM_GFX_CalRatioRect(&stMstScrnWin, &(pstGfx->stOutRect), &stSlvScrnWin, &(pstSlvGfx->stOutRect));
    }
    else
    {
        /**
         ** get window resolution
         **/
        OPTM_M_GetDispScreen(pstSlvGfx->enDispCh, &stSlvScrnWin);

        /**
         ** compute proportional output window
         **/
        OPTM_GFX_CalRatioRect(&stMstScrnWin, &(pstGfx->stOutRect), &stSlvScrnWin, &(pstSlvGfx->stOutRect));
    }

    /**
     ** no zoom, input window is the same as output window, X=Y=0
     **/
    pstSlvGfx->stInRect.s32X = 0;
    pstSlvGfx->stInRect.s32Y = 0;
    pstSlvGfx->stInRect.s32Width  = pstSlvGfx->stOutRect.s32Width;
    pstSlvGfx->stInRect.s32Height = pstSlvGfx->stOutRect.s32Height;
    stSlvInRect.s32Width           = pstSlvGfx->stOutRect.s32Width;
	stSlvInRect.s32Height          = pstSlvGfx->stOutRect.s32Height;

	if(pstGfx->b3DEnable)
	{/** 回写双眼的，是整帧回写，所以输入要为整帧的大小 **/
		if (pstGfx->en3DMode == OPTM_GFX_MODE_SIDE_BY_SIDE)
        {
            stSlvInRect.s32Width = pstSlvGfx->stInRect.s32Width * 2;
        }
        else if (pstGfx->en3DMode == OPTM_GFX_MODE_TOP_BOTTOM)
        {
            stSlvInRect.s32Height = pstSlvGfx->stInRect.s32Height * 2;
        }

	}

    /**
     ** set input window
     **/
#if 0
    OPTM_HIFB_TRACE("\n===============================================\n");
	OPTM_HIFB_TRACE("pstSlvGfx->enGfxId = %d\n",pstSlvGfx->enGfxId);
	OPTM_HIFB_TRACE("[%d %d %d %d]\n",pstSlvGfx->stInRect.s32X,
		                                pstSlvGfx->stInRect.s32Y,
		                                pstSlvGfx->stInRect.s32Width,
		                                pstSlvGfx->stInRect.s32Height);
	OPTM_HIFB_TRACE("[%d %d %d %d]\n",pstSlvGfx->stOutRect.s32X,
		                                pstSlvGfx->stOutRect.s32Y,
		                                pstSlvGfx->stOutRect.s32Width,
		                                pstSlvGfx->stOutRect.s32Height);
	OPTM_HIFB_TRACE("===============================================\n");
#endif

#if 0
	/**
     ** 要是改这个pstSlvGfx->stInRect参数值会影响高清的值，
     ** 所以设置一个局部变量
     **/
	HAL_DISP_SetLayerInRect(pstSlvGfx->enGfxId, pstSlvGfx->stInRect);
#else
    HAL_DISP_SetLayerInRect(pstSlvGfx->enGfxId, stSlvInRect);
#endif
    /**
     ** set output window
     **/
    HAL_DISP_SetLayerOutRect(pstSlvGfx->enGfxId, pstSlvGfx->stOutRect);

#if 1
	/**
	 ** for 3D function
	 **/
	if(pstGfx->b3DEnable)
    {

        HI_S32 s32X = 0, s32Y = 0;
        if (pstGfx->en3DMode == OPTM_GFX_MODE_SIDE_BY_SIDE)
        {
            s32X = pstSlvGfx->stOutRect.s32Width * 2 + pstSlvGfx->stOutRect.s32X;
            s32Y = pstSlvGfx->stOutRect.s32Height    + pstSlvGfx->stOutRect.s32Y;
        }
        else if (pstGfx->en3DMode == OPTM_GFX_MODE_TOP_BOTTOM)
        {
            s32X = pstSlvGfx->stOutRect.s32Width + pstSlvGfx->stOutRect.s32X;
            s32Y = pstSlvGfx->stOutRect.s32Height*2 + pstSlvGfx->stOutRect.s32Y;
        }
        HAL_DISP_SetLayerDLPos(pstSlvGfx->enGfxId, s32X, s32Y);
    }
#endif

    if(g_stGfxDevice[OPTM_GFX_LAYER_SD0].bCampEnable)
    {
       HI_RECT_S stGfxRect;
       stGfxRect.s32X      = 0;
       stGfxRect.s32Y      = 0;
       stGfxRect.s32Width  = pstSlvGfx->stInRect.s32Width;
       stGfxRect.s32Height = pstSlvGfx->stInRect.s32Height;
  	   Vou_SetWbcCropEx(HAL_DISP_LAYER_WBC2,stGfxRect);
    }

    return HI_SUCCESS;

}

HI_S32 OPTM_GfxConfigWbcZme(OPTM_GFX_LAYER_S *pstGfx,
                                        OPTM_GFX_LAYER_S *pstSlvGfx,
                                        OPTM_GFX_WBC_S  *pstWbc2)
{
    GFX_SCALER_CONFIG_S stZmeCfgIn;
    HI_S32 nMstProOutput, nSlvProOutput;

    /* get progressive output info of main window */
    nMstProOutput = OPTM_M_GetDispProgressive(pstGfx->enDispCh);
    pstWbc2->stInRect  = pstGfx->stInRect;

    /*set wbc2 output mode:progressive*/
    pstWbc2->bInProgressive     = HI_TRUE;
    pstWbc2->bHdDispProgressive = nMstProOutput ? HI_TRUE : HI_FALSE;

    /* get progressive output info of window */
    nSlvProOutput = OPTM_M_GetDispProgressive(pstSlvGfx->enDispCh);;
    pstWbc2->stOutRect = pstSlvGfx->stInRect;
    pstWbc2->bOutProgressive =  nSlvProOutput ? HI_TRUE : HI_FALSE;

    //pstWbc2->bUpdateZme = HI_TRUE;
    stZmeCfgIn.p_coef_addr      = &(g_stZmeModule.stCoefAddr);

    stZmeCfgIn.zme_input_prog   = pstWbc2->bInProgressive;
    stZmeCfgIn.zme_in_width     = pstWbc2->stInRect.s32Width;
    stZmeCfgIn.zme_in_height    = pstWbc2->stInRect.s32Height;

    stZmeCfgIn.zme_out_width     = pstWbc2->stOutRect.s32Width;
    stZmeCfgIn.zme_out_height    = pstWbc2->stOutRect.s32Height;
    stZmeCfgIn.zme_output_prog   = pstWbc2->bInProgressive;

    if ( (stZmeCfgIn.zme_in_width == 0) || (stZmeCfgIn.zme_in_height == 0)
      || (stZmeCfgIn.zme_out_width == 0) || (stZmeCfgIn.zme_out_width == 0))
    {
#ifndef __BOOT__
        HI_ERR_VO("Error zme in w:%d,h:%d, O:w:%d,h:%d\n", stZmeCfgIn.zme_in_width, stZmeCfgIn.zme_in_height, stZmeCfgIn.zme_out_width, stZmeCfgIn.zme_out_height);
#endif
        return HI_FAILURE;
    }
    OPTM_AA_GfxZmeApi(pstWbc2->enGfxId, &stZmeCfgIn, &(pstWbc2->u32BtmOffset));

#if 1
    // for 3D function
	  if(pstGfx->b3DEnable)
    {
       if(pstGfx->en3DMode == OPTM_GFX_MODE_SIDE_BY_SIDE)
       {
           pstWbc2->stOutRect.s32Width = pstWbc2->stOutRect.s32Width*2;
       }
       else if(pstGfx->en3DMode == OPTM_GFX_MODE_TOP_BOTTOM)
       {
           pstWbc2->stOutRect.s32Height = pstWbc2->stOutRect.s32Height*2;
       }
    }
#endif
    HAL_DISP_SetLayerOutRect(pstWbc2->enGfxId, pstWbc2->stOutRect);

    return HI_SUCCESS;
}

/***************************************************************************************
* func          : OPTM_DispInfoCallbackUnderWbc
* description   : CNcomment: 制式发生变化产生的中断 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID OPTM_DispInfoCallbackUnderWbc(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_GFX_LAYER_S *pstGfx;

    pstGfx  = &g_stGfxDevice[u32Param0];

    pstGfx->unUpFlag.bits.InRect  = 1;
    pstGfx->unUpFlag.bits.OutRect = 1;
    pstGfx->unUpFlag.bits.RegUp   = 1;

    return;
}

/***************************************************************************************
* func          : OPTM_Wbc2Isr
* description   : CNcomment: wbc isr CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID OPTM_Wbc2Isr(HI_U32 u32Param0, HI_U32 u32Param1)
{

    OPTM_GFX_LAYER_S *pstGfx    = NULL;
	OPTM_GFX_LAYER_S *pstSlvGfx = NULL;
    OPTM_GFX_WBC_S   *pstWbc2   = NULL;
    OPTM_GFX_LAYER_EN enSlvId   = OPTM_GFX_LAYER_BUTT;

    OPTM_M_DISP_INFO_S stSrcInfo;
	HAL_DISP_OUTPUTCHANNEL_E enDispCh;
	HAL_DISP_LAYER_E enGfxId;

    pstGfx    = &g_stGfxDevice[u32Param0];
    pstWbc2   = &g_stGfxWbc2;

#ifdef CHIP_TYPE_hi3110ev500
	/** 只有高清通道，不需要回写 **/
	return;
#endif

	/**
	 **注意u32Param0这个返回上来的值，定位问题关键，是否和注册的匹配
	 **/
    if (pstGfx->bOpened != HI_TRUE)
    {
        return;
    }

    /**
     ** no bound affiliated OSD, quit
     **/
    if (OPTM_GFX_LAYER_BUTT == g_stGfxDevice[u32Param0].enSlvGfxId)
    {
        return;
    }

    enSlvId   = g_stGfxDevice[u32Param0].enSlvGfxId;
    pstSlvGfx = &g_stGfxDevice[enSlvId];


	/**
	 **实时获取需要改变的参数信息
	 **/
	enGfxId = OPTM_GfxGetLayerHalId(enSlvId);
	enDispCh = Vou_GetDisplayChOfLayer(enGfxId);
	OPTM_M_GetDispInfo(enDispCh, &stSrcInfo);
	if(   g_stGfxDevice[enSlvId].Bright     !=  stSrcInfo.u32Bright      \
	   || g_stGfxDevice[enSlvId].Contrast   !=  stSrcInfo.u32Contrast    \
	   || g_stGfxDevice[enSlvId].Saturation !=  stSrcInfo.u32Saturation  \
	   || g_stGfxDevice[enSlvId].Hue        !=  stSrcInfo.u32Hue)
	{
		OPTM_GfxSetCsc(enSlvId);
	}


    /**
     ** if registers updated, check the change of OSD setting
     **/
    if (pstSlvGfx->unUpFlag.bits.RegUp != 0)
    {
        if (pstSlvGfx->unUpFlag.bits.Alpha != 0)
        {
        #if 0
            OPTM_GfxSetLayerAlpha(enSlvId, &(pstSlvGfx->stAlpha));
        #else
            Vou_SetGfxPalpha(pstSlvGfx->enGfxId,                \
                               pstSlvGfx->stAlpha.bAlphaEnable,   \
                               HI_TRUE,                           \
                               pstSlvGfx->stAlpha.u8Alpha0,       \
                               pstSlvGfx->stAlpha.u8Alpha1);
        #endif
            pstSlvGfx->unUpFlag.bits.Alpha = 0;

        }

        if(pstSlvGfx->unUpFlag.bits.PreMute != 0)
        {
            //OPTM_GfxSetLayerPreMult(enSlvId, pstSlvGfx->bPreMute);
            Vou_SetGfxPreMult(pstSlvGfx->enGfxId, pstSlvGfx->bPreMute);
            pstSlvGfx->unUpFlag.bits.PreMute = 0;
        }

        /* if window changed, update WBC2 window settings */
        if(  (pstSlvGfx->unUpFlag.bits.InRect != 0) ||(pstSlvGfx->unUpFlag.bits.OutRect != 0))
        {
            OPTM_GfxConfigSlvLayer(pstGfx, pstSlvGfx);

            /**
             ** set WBC2 zoom and coefficients of resolution
             **/
            if (HI_SUCCESS != OPTM_GfxConfigWbcZme(pstGfx, pstSlvGfx, pstWbc2) )
            {
                return;
            }

            pstSlvGfx->unUpFlag.bits.InRect  = 0;
            pstSlvGfx->unUpFlag.bits.OutRect = 0;
        }

        if (pstSlvGfx->unUpFlag.bits.Enable != 0)
        {

            if (pstSlvGfx->bMaskFlag)
            {
                HAL_DISP_EnableLayer(pstSlvGfx->enGfxId, HI_FALSE);
            }
            else
            {
                /**
                 ** just want to logo to app smoothly,enable wrap here,set G1 address here
                 **/
                Vou_SetGfxAddr(pstSlvGfx->enGfxId, g_stGfxWbc2.stFrameBuffer.u32StartPhyAddr);
                HAL_DISP_EnableLayer(pstSlvGfx->enGfxId, pstSlvGfx->bEnable);

            }

            /**
             ** pass the enable information to WBC2
             **/
            if (pstSlvGfx->bMaskFlag)
            {
                pstWbc2->bEnable = HI_FALSE;
            }
            else
            {
                pstWbc2->bEnable = pstGfx->bEnable;
            }

            pstSlvGfx->unUpFlag.bits.Enable = 0;

        }

        HAL_DISP_SetRegUpNoRatio(pstSlvGfx->enGfxId);
        pstSlvGfx->unUpFlag.bits.RegUp = 0;

    }


    if(pstWbc2->bEnable == HI_TRUE)
    {

        Vou_SetWbcOutIntf(pstWbc2->enGfxId, HAL_DISP_PROGRESSIVE);

        Vou_SetWbcEnable(HAL_DISP_LAYER_WBC2, 1);

        HAL_DISP_SetRegUpNoRatio(pstWbc2->enGfxId);

        HAL_DISP_SetRegUpNoRatio(pstGfx->enGfxId);

        if (HAL_DISP_LAYER_GFX2 == pstGfx->enGfxId || HAL_DISP_LAYER_GFX3 == pstGfx->enGfxId)
        {
            HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_GFX0);
        }

    }
    else
    {
        Vou_SetWbcEnable(HAL_DISP_LAYER_WBC2, 0);
        HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_WBC2);

    }

    return;

}

/***************************************************************************************
* func          : OPTM_GetHaltDispStatus
* description   : CNcomment: 获取display打开状态 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifndef __BOOT__
extern DISP_GLOBAL_STATE_S  g_DispUserCountState;

/* check whether APP opened disp */
HI_S32 OPTM_GetHaltDispStatus(HI_U32 layerID,HI_BOOL *pbDispInit)
{
    HI_U32 uDispNum = 0;

    *pbDispInit = HI_FALSE;  /* Default value is FALSE! */

    if (layerID == OPTM_GFX_LAYER_HD0) /* HDlayer ID */
    {
       /**
        ** uHDDispNum > 0 indicates APP called Disp synchronization
        **/
        uDispNum = g_DispUserCountState.Hd0DispNum;
        *pbDispInit = (uDispNum > 0) ? HI_TRUE : HI_FALSE;
    }
    else if(layerID == OPTM_GFX_LAYER_SD0) /* SDlayer ID */
    {
        /**
         ** uSDDispNum > 0 indicates APP called Disp synchronization
         **/
        uDispNum  = g_DispUserCountState.Sd0DispNum;
        *pbDispInit = (uDispNum > 0) ? HI_TRUE : HI_FALSE;
    }
    if(*pbDispInit != HI_TRUE)
    {
        Print("+++disp layerid %d DispNum %d \n",layerID,uDispNum);
    }
    return HI_SUCCESS;

}

/* save  GFX register, for SCH test proble*/
extern MMZ_BUFFER_S   g_DispRegBuf;
HI_VOID OPTM_GFX_SaveVXD(HI_VOID)
{
	HAL_GFX_SaveDXD(g_DispRegBuf.u32StartVirAddr);

	return ;
}
/* restore GFX register */
HI_VOID OPTM_GFX_RestoreVXD(HI_VOID)
{
	HAL_GFX_RestoreDXD(g_DispRegBuf.u32StartVirAddr);

	return ;
}

/***************************************************************************************
* func          : OPTM_GfxSetSrcFromWbc2
* description   : CNcomment: 设置3D回写数据源 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 OPTM_GfxSetSrcFromWbc2(HI_BOOL bFromWbc2)
{
    OPTM_HAL_SetGfxSrcFromWbc2(bFromWbc2);
    return HI_SUCCESS;
}

/***************************************************************************************
* func          : OPTM_GfxSetTriDimEnable
* description   : CNcomment: 设置3D使能 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxSetTriDimEnable(OPTM_GFX_LAYER_EN enLayerId, HI_U32 bEnable)
{
#if 0
	OPTM_GFX_LAYER_EN enSlvGfxId = OPTM_GFX_LAYER_SD0;
#endif
    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);

    OPTM_HAL_SetGfxTriDimEnable(g_stGfxDevice[enLayerId].enGfxId, bEnable);

	g_stGfxDevice[enLayerId].b3DEnable = bEnable;

    if(g_enOptmGfxWorkMode == OPTM_GFX_MODE_HD_WBC)
    {
	   #if 0/** 标清不支持3D **/
       		OPTM_HAL_SetGfxTriDimEnable(g_stGfxDevice[enSlvGfxId].enGfxId, bEnable);
	   #endif
       OPTM_GfxSetSrcFromWbc2(1);
    }
    else if(OPTM_GFX_LAYER_SD0 == enLayerId)
    {
       OPTM_GfxSetSrcFromWbc2(0);
    }

    #if 0
    if(bEnable == 0)
    {
       if (g_enOptmGfxWorkMode == OPTM_GFX_MODE_HD_WBC)   // for the case HD and SD use the same source
       {
          OPTM_GFX_LAYER_EN enSlvGfxId = OPTM_GFX_LAYER_SD0;
          if(!g_stGfxDevice[enSlvGfxId].bCampEnable)
          {
             // set G0 back to no compression mode
             OPTM_HAL_SetLayerDeCmpEnable(g_stGfxDevice[enSlvGfxId].enGfxId, 1);      //
             HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enSlvGfxId].enGfxId);

             OPTM_HAL_SetWbcCmpMode(HAL_DISP_LAYER_WBC2,1);   // enable wbc3 compression mode
             HAL_DISP_SetRegUpNoRatio  (HAL_DISP_LAYER_WBC2);
             g_stGfxDevice[enSlvGfxId].bCampEnable = HI_TRUE;

          }
       }
    }
    #endif

    return HI_SUCCESS;

}

/***************************************************************************************
* func          : OPTM_GfxSetTriDimMode
* description   : CNcomment: 设置3D读取模式 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 OPTM_GfxSetTriDimMode(OPTM_GFX_LAYER_EN enLayerId, OPTM_GFX_3D_MODE_E enMode)
{
#if 0
	OPTM_GFX_LAYER_EN enSlvGfxId = OPTM_GFX_LAYER_SD0;
#endif
    D_OPTM_HIFB_CheckDispAndGfxOpen(enLayerId);
    OPTM_HAL_SetGfxTriDimMode(g_stGfxDevice[enLayerId].enGfxId, enMode);
    g_stGfxDevice[enLayerId].en3DMode = enMode;

	#if 0/** 标清不支持3D **/
    if (g_enOptmGfxWorkMode == OPTM_GFX_MODE_HD_WBC)
    {

	       if(enMode == OPTM_GFX_MODE_TOP_BOTTOM)
	       {
	          OPTM_HAL_SetGfxTriDimMode(g_stGfxDevice[enSlvGfxId].enGfxId, enMode);
	          if(g_stGfxDevice[enSlvGfxId].bCampEnable)
	          {
	             /**
	              ** set G0 back to no compression mode
	              **/
	             OPTM_HAL_SetLayerDeCmpEnable(g_stGfxDevice[enSlvGfxId].enGfxId, 0);
	             //Vou_SetGfxAddr(g_stGfxDevice[enLayerId].enGfxId, g_stGfxDevice[enLayerId].NoCmpBufAddr);    // set AR data buffer address
	             HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enSlvGfxId].enGfxId);

	             OPTM_HAL_SetWbcCmpMode(HAL_DISP_LAYER_WBC2,0);
	             HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_WBC2);
	             g_stGfxDevice[enSlvGfxId].bCampEnable = HI_FALSE;
	          }
	       }
	       else if(enMode == OPTM_GFX_MODE_SIDE_BY_SIDE)
	       {
	           OPTM_HAL_SetGfxTriDimMode(g_stGfxDevice[enSlvGfxId].enGfxId, enMode);
	           /**
	            ** disnable wbc2 compress, and g1 decompression, 2012-4-6
	            **/
		       #if 0
		          if(!g_stGfxDevice[enSlvGfxId].bCampEnable)
		          {
		             // set G0 back to no compression mode
		             OPTM_HAL_SetLayerDeCmpEnable(g_stGfxDevice[enSlvGfxId].enGfxId, 1);      //
		             HAL_DISP_SetRegUpNoRatio(g_stGfxDevice[enSlvGfxId].enGfxId);

		             OPTM_HAL_SetWbcCmpMode(HAL_DISP_LAYER_WBC2,1);   // enable wbc3 compression mode
		             HAL_DISP_SetRegUpNoRatio  (HAL_DISP_LAYER_WBC2);
		             g_stGfxDevice[enSlvGfxId].bCampEnable = HI_TRUE;
		          }
		   	  #endif
	       }
    }
	#endif

    return HI_SUCCESS;

}


EXPORT_SYMBOL(OPTM_GfxSetLogoLayerEnable);
EXPORT_SYMBOL(OPTM_SetLogoMceEnable);

#ifndef MODULE
EXPORT_SYMBOL(OPTM_GfxGetOSDData);
EXPORT_SYMBOL(OPTM_GfxSetColorReg);
EXPORT_SYMBOL(OPTM_GfxCloseLayer);
EXPORT_SYMBOL(OPTM_GfxSetLayerZorder);
EXPORT_SYMBOL(OPTM_GfxGetLayerZorder);
EXPORT_SYMBOL(OPTM_GfxSetLayerStride);
EXPORT_SYMBOL(OPTM_GfxSetLayerDataFmt);
EXPORT_SYMBOL(OPTM_GfxSetIntCallback);
EXPORT_SYMBOL(OPTM_GfxSetClutAddr);
EXPORT_SYMBOL(OPTM_GfxWaitRR);
EXPORT_SYMBOL(OPTM_GfxWaitVBlank);
EXPORT_SYMBOL(OPTM_GfxInit);
EXPORT_SYMBOL(OPTM_GfxUpLayerReg);
EXPORT_SYMBOL(OPTM_GfxSetLayerAlpha);
EXPORT_SYMBOL(OPTM_GfxSetEnable);
EXPORT_SYMBOL(OPTM_GfxSetLayerPreMult);
EXPORT_SYMBOL(OPTM_GfxSetLayerDeFlicker);
EXPORT_SYMBOL(OPTM_GfxSetLayerAddr);
EXPORT_SYMBOL(OPTM_GfxOpenLayer);
EXPORT_SYMBOL(OPTM_GfxSetLayerBitExtMode);
EXPORT_SYMBOL(OPTM_GfxDeInit);
EXPORT_SYMBOL(OPTM_GfxSetLayKeyMask);
EXPORT_SYMBOL(OPTM_GfxSetLayerRect);
EXPORT_SYMBOL(OPTM_GetHaltDispStatus);

EXPORT_SYMBOL(OPTM_GFX_SaveVXD);
EXPORT_SYMBOL(OPTM_GFX_RestoreVXD);

EXPORT_SYMBOL(OPTM_GfxSetTriDimEnable);
EXPORT_SYMBOL(OPTM_GfxSetTriDimMode);
#endif /** MODULE **/

#endif
