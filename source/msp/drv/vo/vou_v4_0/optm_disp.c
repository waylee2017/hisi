























































/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
  File Name     : optm_disp.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/6/9
  Last Modified :
  Description   : header file for video output control
  Function List :
  History       :
  1.Date        :
  Author        : g45208
  Modification  : Created file
******************************************************************************/
#include "optm_disp.h"
#include "optm_p_disp.h"
#include "optm_m_disp.h"
#include "optm_hal.h"
#include "optm_vo.h"
#include "optm_p_vo.h"
#include "optm_hifb.h"
#include "drv_sys_ext.h"
#include "hi_kernel_adapt.h"
#include <asm/setup.h>

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


/**************** definitions of global variables ****************/

/* OPTM ISR handle */
HI_U32 g_OptmIrqHandle = 0;

/* OPTM main equipment registeration times */
HI_U32 g_OptmDispInitTime = 0;

/* DISP equipment */
OPTM_DISP_S g_stDispChn[HI_UNF_DISP_BUTT];

HI_UNF_DISP_E g_FreeOsdAttach[HI_UNF_DISP_FREE_LAYER_BUTT];

/* DAC[0~5] settings; DAC order of current FPGA environment is as following */
const HI_UNF_DISP_INTERFACE_S g_stDacBack =
{.bScartEnable  = HI_FALSE,
 .bBt1120Enable = HI_FALSE,
 .bBt656Enable  = HI_FALSE,
 .enDacMode ={
    HI_UNF_DISP_DAC_MODE_HD_PB,    /* buckle board 2 -- middle */
    HI_UNF_DISP_DAC_MODE_HD_Y,     /* buckle board 1 -- top */
    HI_UNF_DISP_DAC_MODE_HD_PR,    /* buckle board 3 -- bottom */
    HI_UNF_DISP_DAC_MODE_CVBS,     /* bottom board */
    //HI_UNF_DISP_DAC_MODE_SVIDEO_Y, /* bottom board */
   // HI_UNF_DISP_DAC_MODE_SVIDEO_C
   } /* bottom board */
};

HI_UNF_DISP_INTERFACE_S g_stDac =
{.bScartEnable  = HI_FALSE,
 .bBt1120Enable = HI_FALSE,
 .bBt656Enable  = HI_FALSE,
 .enDacMode ={
    HI_UNF_DISP_DAC_MODE_SILENCE,   /* buckle board 2 -- middle */
    HI_UNF_DISP_DAC_MODE_SILENCE,   /* buckle board 1 -- top */
    HI_UNF_DISP_DAC_MODE_SILENCE,   /* buckle board 3 -- bottom */
    HI_UNF_DISP_DAC_MODE_SILENCE,   /* bottom board */
    //HI_UNF_DISP_DAC_MODE_SILENCE,   /* bottom board */
    //HI_UNF_DISP_DAC_MODE_SILENCE
    }   /* bottom board */
};

/* default attributes of HD display channle  */
static HI_OPTM_DISP_ATTR_S g_stDispDefaultAttr =
{
    .enIntfType = HI_UNF_DISP_INTF_TYPE_TV,
    .enFmt = HI_UNF_ENC_FMT_720P_50,
    .stLcd ={
        .VFB = 0xa,
        .VBB = 0x23,
        .VACT = 0x1e0,
        .HFB = 0x11,
        .HBB = 0x67,
        .HACT = 0x2ae,
        .VPW = 0x2,
        .HPW = 0x67,
        .IDV = HI_FALSE,
        .IHS = HI_FALSE,
        .IVS = HI_FALSE,
        .ClockReversal = HI_FALSE,
        .DataWidth = HI_UNF_DISP_LCD_DATA_WIDTH24,
        .ItfFormat = HI_UNF_DISP_LCD_DATA_FMT_RGB888,
        .DitherEnable = HI_FALSE},

    .enMcvn = HI_UNF_DISP_MACROVISION_MODE_TYPE0,
    .DispLayerOrder = {HI_UNF_DISP_LAYER_VIDEO_0, HI_UNF_DISP_LAYER_OSD_0, HI_UNF_DISP_LAYER_BUTT},
    .u32LayerNum = 2,
    .stBgc = {.u8Red=0, .u8Green =0, .u8Blue = 0},
    .u32Bright = 50,
    .u32Contrast = 50,
    .u32Saturation = 50,
    .u32Hue = 50,
    .u32Kr  = 50,
    .u32Kg  = 50,
    .u32Kb  = 50,
    .enSrcDisp  = HI_UNF_DISP_BUTT,
    .enDestDisp = HI_UNF_DISP_BUTT
};

TTX_SEND_S  g_TtxSend;
VBI_SEND_S  g_VbiSend;

/*****************************************************************************
    New add : display source color space for different project
    OPTM_CS_eXvYCC_601: BT.601;
    OPTM_CS_eXvYCC_709: BT.709;
    OPTM_CS_eRGB: RGB
*****************************************************************************/
static HI_U32 s_DisplayColorSpace[HI_UNF_DISP_BUTT] = {OPTM_CS_eXvYCC_601, OPTM_CS_eXvYCC_709};
extern HI_BOOL g_DispSuspend;
extern HI_BOOL g_VoSuspend;

HI_S32 bt470 = 0;
module_param(bt470,int,0000);

/* ckeck the validity of pointer */
#define D_DISP_CHECK_PTR(ptr)\
do {if (HI_NULL == ptr){   \
         HI_ERR_DISP("DISP: an Null pointer.\n");  \
         return HI_ERR_DISP_NULL_PTR; \
    }                                   \
} while (0)

/* ckeck the validity of DISP ID */
#define D_DISP_CHECK_CHANNEL(enDisp) \
do {                             \
    if (enDisp >= HI_UNF_DISP_BUTT) \
    {                               \
        HI_ERR_DISP("DISP: ch is not exist.\n"); \
        return HI_ERR_DISP_INVALID_PARA;\
    }                               \
} while (0)

/* ckeck the validity of CSC parameters */
#define D_DISPCheckCscValue(csc)   \
do{ if (csc > 100){                \
       HI_ERR_DISP("DISP: invalid color parameters.\n"); \
       return HI_ERR_DISP_INVALID_PARA;\
    }                              \
}while(0)


/* ckeck the validity of CSC parameters */
#define D_DISPCheckColorTempValue(value)   \
do{ if (value > 100){                \
       HI_ERR_DISP("DISP: invalid color parameters.\n"); \
       return HI_ERR_DISP_INVALID_PARA;\
    }                              \
}while(0)


/* check wether the main equipment is open or not */
#define D_DISP_CHECK_DEVICE_OPEN() \
do {if (g_OptmDispInitTime < 1)        \
    {                              \
        HI_ERR_DISP("DISP: not open.\n");\
        return HI_ERR_DISP_NO_INIT;\
    }                              \
} while (0)

/* get the handle of DISP channel */
#define D_DISP_GET_HANDLE(enDisp, pOptmDispCh) \
do{                             \
    D_DISP_CHECK_CHANNEL(enDisp); \
    pOptmDispCh = &(g_stDispChn[(HI_S32)enDisp]);\
}while(0)

static HI_S32   OptmGetBootargs(HI_CHAR *pstring)
{
    HI_S32 nFlag = -1;
    HI_CHAR *cmdline;
    HI_S8 *s;
    HI_S8 *p = NULL;

    cmdline = kmalloc(COMMAND_LINE_SIZE, GFP_KERNEL);
    if (!cmdline)
    {
        HI_ERR_VO("VO kmalloc for cmdline failed.\n");
        return -1;
    }

    strlcpy(cmdline, saved_command_line, COMMAND_LINE_SIZE);
    p = strstr(cmdline, pstring);

    if (p)
    {
        s = strsep((char **)&p, "=");
        if (s)
        {
            s = strsep((char **)&p, " ");
            if (HI_NULL == s)
            {
                kfree(cmdline);
                return -1;
            }
            nFlag = simple_strtol(s, NULL, 0);
        }
    }

    kfree(cmdline);

    //printk(">>>>>>>>>>>>>string %s. Flag = %d\n", pstring, nFlag);

    return nFlag;
}


HI_S32 OPTM_M_SetDispMaskLayer(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bMask);

static HAL_DISP_OUTPUTCHANNEL_E DISPGetHalId(HI_UNF_DISP_E enDisp)
{
   if (HI_UNF_DISP_HD0 == enDisp)
   {
      return HAL_DISP_CHANNEL_DHD;
   }
   else if (HI_UNF_DISP_SD0 == enDisp)
   {
      return HAL_DISP_CHANNEL_DSD;
   }
   else
   {
      return HAL_DISP_CHANNEL_BUTT;
   }
}

HI_VOID DISP_TtxIsr(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID DISP_Isr(HI_U32 u32Param0, HI_U32 u32Param1);

/* CGMS group */
HI_S32  DISP_CgmsInit(HI_UNF_DISP_E enDisp);
HI_S32  DISP_CgmsDeInit(HI_UNF_DISP_E enDisp);
HI_S32  DISP_SetCgmsByWss(HI_UNF_DISP_E enDisp, HI_UNF_DISP_CGMS_CFG_S* stCgmsCfg);
HI_S32  DISP_SetCgmsEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable, HI_UNF_DISP_CGMS_TYPE_E enType);
/* CGMS group end*/


HI_S32  Disp_GetDefaultOptmAttr(HI_UNF_DISP_E enDisp, HI_OPTM_DISP_ATTR_S *pOptmDispAttr)
{
    /* get the default parameters of HD display channel */
    memcpy((HI_VOID *)pOptmDispAttr, (HI_VOID * )&g_stDispDefaultAttr, sizeof(HI_OPTM_DISP_ATTR_S));

    /* modify parameters in SD display status */
    if (HI_UNF_DISP_SD0 == enDisp)
    {
        pOptmDispAttr->enFmt = HI_UNF_ENC_FMT_PAL;
        pOptmDispAttr->DispLayerOrder[1] = HI_UNF_DISP_LAYER_ATTACH_OSD_0;
        pOptmDispAttr->u32LayerNum = 2;
    }

    return HI_SUCCESS;
}

HI_S32 Disp_AddDispSubLayer(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enDispLayer,
                          OPTM_DISP_SUB_LAYER_S *pSubLayer)
{
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        switch (enDispLayer)
        {
            case HI_UNF_DISP_LAYER_VIDEO_0:
            {
                /* for VHD, there exists SUBLAYER:VAD */
                /* usually, the window of VAD is small, thus, VAD is upon VHD for default setting */
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_VIDEO1;
                //pSubLayer->HalLayer[1] = HAL_DISP_LAYER_VIDEO2;
                //pSubLayer->HalLayerNum = 2;
                pSubLayer->HalLayerNum = 1;
                break;
            }
            case HI_UNF_DISP_LAYER_OSD_0:
            {
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_GFX0;
                pSubLayer->HalLayerNum = 1;
                break;
            }
            case HI_UNF_DISP_LAYER_ATTACH_OSD_0:
            {
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_GFX1;
                pSubLayer->HalLayerNum = 1;
                break;
            }
            default:
            {
                pSubLayer->HalLayerNum = 0;
            }
        }
    }
    else if (HI_UNF_DISP_SD0 == enDisp)
    {
        switch (enDispLayer)
        {
            case HI_UNF_DISP_LAYER_VIDEO_0:
            {
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_VIDEO3;
                pSubLayer->HalLayerNum = 1;
                break;
            }
            case HI_UNF_DISP_LAYER_ATTACH_OSD_0:
            {
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_GFX1;
                pSubLayer->HalLayerNum = 1;
                break;
            }
            default:
            {
                pSubLayer->HalLayerNum = 0;
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 Disp_DelDispSubLayer(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enDispLayer,
                          OPTM_DISP_SUB_LAYER_S *pSubLayer)
{
    pSubLayer->HalLayerNum = 0;

    if (HI_UNF_DISP_HD0 == enDisp)
    {
        switch (enDispLayer)
        {
#if 0
            case HI_UNF_DISP_LAYER_VIDEO_0:
            {
                /* for VHD, there exists SUBLAYER:VAD */
                /* usually, the window of VAD is small, thus, VAD is upon VHD for default setting */
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_BUTT;
                pSubLayer->HalLayer[1] = HAL_DISP_LAYER_BUTT;
                break;
            }
            case HI_UNF_DISP_LAYER_OSD_0:
            {
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_BUTT;
                pSubLayer->HalLayerNum = 1;
                break;
            }
#endif
            case HI_UNF_DISP_LAYER_ATTACH_OSD_0:
            {
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_BUTT;
                break;
            }
            default:
            {
                break;
            }
        }
    }
    else if (HI_UNF_DISP_SD0 == enDisp)
    {
        switch (enDispLayer)
        {
#if 0
            case HI_UNF_DISP_LAYER_VIDEO_0:
            {
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_BUTT;
                break;
            }
#endif
            case HI_UNF_DISP_LAYER_ATTACH_OSD_0:
            {
                pSubLayer->HalLayer[0] = HAL_DISP_LAYER_BUTT;
                break;
            }
            default:
            {
                break;
            }
        }
    }

    return HI_SUCCESS;
}


/* set the orders of display layers */
HI_S32  Disp_SetDispLayerOrder(HI_UNF_DISP_E enDisp, HI_S32 s32LayerNum,
                              HI_UNF_DISP_LAYER_E *penDispLayer, OPTM_DISP_SUB_LAYER_S *pSubLayer)
{
    HI_S32 i,j, k, LayerId;
    HAL_DISP_LAYER_E Order[5];

    for(k=0; k<5; k++)
    {
        Order[k] = -1;
    }

    /* DEBUG_PRINTK("Disp_SetDispLayerOrder++++++++++++ id=%d\n", enDisp); */
    for(k=0, i=0; i<s32LayerNum; i++)
    {
        /* merge the hidden layer, such as VAD */
        LayerId = (HI_S32)(penDispLayer[i]);

        for(j=0; j<pSubLayer[LayerId].HalLayerNum; j++)
        {
            Order[k++] = pSubLayer[LayerId].HalLayer[j];
            /* DEBUG_PRINTK("i=%d, id = %d\n", (k-1), Order[k-1]); */
        }
    }

    /* DHD-MODULE settings */
    OPTM_M_SetDispOrder(DISPGetHalId(enDisp), Order, 5);
    return HI_SUCCESS;
}

/* get the order of LAYER*/
static HI_S32 Disp_GetLayerOrder(HI_UNF_DISP_LAYER_E enDispLayer, HI_UNF_DISP_LAYER_E *penDispLayer, HI_S32 s32Number)
{
    HI_S32 i, Order;

    Order = -1;

    for(i=0; i<s32Number; i++)
    {
        if (penDispLayer[i] == enDispLayer)
        {
            Order = i;
            break;
        }
    }
    return Order;
}

HI_VOID Disp_SetLayerNewOrder(HI_S32 currPosi, HI_LAYER_ZORDER_E enZFlag,
                             HI_S32 LayerNumber,HI_UNF_DISP_LAYER_E *penDispLayer)
{
    HI_UNF_DISP_LAYER_E DstLayer;
    HI_S32 i;

    switch(enZFlag)
    {
        case HI_LAYER_ZORDER_MOVETOP:
        {
            if ((currPosi + 1) < LayerNumber)
            {
                DstLayer = penDispLayer[currPosi];
                for(i=currPosi; i<(LayerNumber-1); i++)
                {
                    penDispLayer[i] = penDispLayer[i+1];
                }
                penDispLayer[i] = DstLayer;
            }
            break;
        }
        case HI_LAYER_ZORDER_MOVEUP:
        {
            if ((currPosi + 1) != LayerNumber)
            {
                DstLayer = penDispLayer[currPosi];
                penDispLayer[currPosi] = penDispLayer[currPosi+1];
                penDispLayer[currPosi+1] = DstLayer;
            }
            break;
        }
        case HI_LAYER_ZORDER_MOVEBOTTOM:
        {
            if (currPosi != 0)
            {
                DstLayer = penDispLayer[currPosi];
                for(i=currPosi; i>0; i--)
                {
                    penDispLayer[i] = penDispLayer[i-1];
                }
                penDispLayer[i] = DstLayer;
            }
            break;
        }
        case HI_LAYER_ZORDER_MOVEDOWN:
        {
            if (currPosi != 0)
            {
                DstLayer = penDispLayer[currPosi];
                penDispLayer[currPosi] = penDispLayer[currPosi-1];
                penDispLayer[currPosi-1] = DstLayer;
            }
            break;
        }
        default:
        {
            break;
        }
    }

    return;
}


/***********************************************************************************
* Function:      DISP_Init / DISP_DeInit
* Description:   initialization or de-initialization of display equipment,
*                mapping of registers, registration of interrupt, offset logic, initialization of DHD/DSD
* Data Accessed:
* Data Updated:
* Input:
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
/* initialization of DHD/DSD */
HI_S32  Disp_SetDefaultOptmAttr(HI_UNF_DISP_E enDisp)
{
    OPTM_M_DISP_S         stMDisp;
    OPTM_DISP_S          *pOptmDisp;
    HI_OPTM_DISP_ATTR_S  *pOptmDispAttr;
    HI_U32               i, EnableTrue;
    HI_UNF_DISP_LAYER_E  DispLayer;
    OPTM_DISP_BOOT_SETTING_S stSetting;

    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    memset((HI_VOID *)pOptmDisp, 0, sizeof(OPTM_DISP_S));

    pOptmDisp->bOpened = HI_FALSE;
    EnableTrue = 0;

    /* set enable-flag bit through reading enable flags of DHD/DSD */
    if (enDisp == HI_UNF_DISP_HD0)
    {
        HAL_DISP_GetIntfEnable(HAL_DISP_CHANNEL_DHD, &EnableTrue);
    }
    else
    {
        HAL_DISP_GetIntfEnable(HAL_DISP_CHANNEL_DSD, &EnableTrue);
    }

    if (EnableTrue == 1)
    {
        pOptmDisp->bEnable = HI_TRUE;
    }
    else
    {
        pOptmDisp->bEnable = HI_FALSE;
    }

    pOptmDisp->enSrcDisp = HI_UNF_DISP_BUTT;
    pOptmDisp->enDstDisp = HI_UNF_DISP_BUTT;

    /* get needed ID for bottom layer */
    if (HI_UNF_DISP_SD0 == enDisp)
    {
        pOptmDisp->enDispHalId = HAL_DISP_CHANNEL_DSD;

        /* initialization of CSCMODE */
        pOptmDisp->enSrcCS   = OPTM_CS_eXvYCC_601;
        pOptmDisp->enDstCS   = OPTM_CS_eXvYCC_601;
    }
    else
    {
        pOptmDisp->enDispHalId = HAL_DISP_CHANNEL_DHD;

        if (OPTM_CS_eRGB == s_DisplayColorSpace[HI_UNF_DISP_HD0])
    {
            /* initialization of CSCMODE */
            pOptmDisp->enSrcCS   = OPTM_CS_eRGB;
            pOptmDisp->enDstCS   = OPTM_CS_eRGB;
        } else{
            /* initialization of CSCMODE */
            pOptmDisp->enSrcCS   = OPTM_CS_eXvYCC_709;
            pOptmDisp->enDstCS   = OPTM_CS_eXvYCC_709;
    }

    }

    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    Disp_GetDefaultOptmAttr(enDisp, pOptmDispAttr);

    if (HI_SUCCESS == OPTM_M_GetDispBootSetting(pOptmDisp->enDispHalId, &stSetting))
    {
        pOptmDispAttr->enIntfType = stSetting.enType;
        pOptmDispAttr->enFmt      = stSetting.enEncFmt;
        pOptmDispAttr->enLcdFmt   = stSetting.enLcdFmt;
    }

    /* initialize the SubLayer by initialization of a layer in ProcAttr*/
    for(i=0; i<pOptmDispAttr->u32LayerNum; i++)
    {
        DispLayer = pOptmDispAttr->DispLayerOrder[i];
        Disp_AddDispSubLayer(enDisp, DispLayer, &(pOptmDisp->SubLayer[DispLayer]));
    }

    /********************************************
        initialization of DHD/DSD
     *******************************************/
    /* OPTM_M_InitDisp(pOptmDisp->enDispHalId); */
    OPTM_M_GetDispDefaultAttr(pOptmDisp->enDispHalId, &stMDisp);/* get default parameters */

    /* modify the parameters if necessary */
    stMDisp.bEnable          = pOptmDisp->bEnable; /* status of enable pin */
    stMDisp.DispInfo.enType  = pOptmDispAttr->enIntfType;
    stMDisp.DispInfo.enFmt   = pOptmDispAttr->enFmt;
    stMDisp.DispInfo.enLcdFmt = pOptmDispAttr->enLcdFmt;
    stMDisp.DispInfo.LcdPara = pOptmDispAttr->stLcd;
    stMDisp.stBgc         = pOptmDispAttr->stBgc;
    stMDisp.u32Bright     = pOptmDispAttr->u32Bright;
    stMDisp.u32Contrast   = pOptmDispAttr->u32Contrast;
    stMDisp.u32Saturation = pOptmDispAttr->u32Saturation;
    stMDisp.u32Hue        = pOptmDispAttr->u32Hue;

    stMDisp.u32Kr         = pOptmDispAttr->u32Kr;
    stMDisp.u32Kg         = pOptmDispAttr->u32Kg;
    stMDisp.u32Kb         = pOptmDispAttr->u32Kb;

    stMDisp.enSrcClrSpace = pOptmDisp->enSrcCS; /* mode of color space transformation */
    if(pOptmDispAttr->enIntfType == HI_UNF_DISP_INTF_TYPE_TV)
    {
        stMDisp.enDstClrSpace = pOptmDisp->enDstCS; /* mode of color space transformation */
    }
    else
    {
       stMDisp.enDstClrSpace = OPTM_CS_eRGB;   /*LCD format*/
    } /* mode of color space transformation */

    stMDisp.bGammaEn      = HI_FALSE;            /* default status disnable gamma*/

    OPTM_M_SetDispAttr(pOptmDisp->enDispHalId, &stMDisp);

    /* the priority setting by parameters of Sublayer */
    Disp_SetDispLayerOrder(enDisp, pOptmDispAttr->u32LayerNum,
                           pOptmDispAttr->DispLayerOrder, pOptmDisp->SubLayer);

    /* initialization of HDATE/DATE */
    if (HAL_DISP_CHANNEL_DHD == pOptmDisp->enDispHalId)
    {
        OPTM_M_HDATE_S stHDate;

        pOptmDisp->bAttaHDate = HI_TRUE;
        pOptmDisp->bAttaSDate = HI_FALSE;
        pOptmDisp->s32DateCh = 0;/* channle 0 is supported only, at present */
        OPTM_M_GetHDateDefaultAttr(pOptmDisp->s32DateCh, &stHDate);

        stHDate.bEnable = pOptmDisp->bEnable;
        stHDate.enFmt   = pOptmDispAttr->enFmt;
        stHDate.enMcvn  = pOptmDispAttr->enMcvn;
        OPTM_M_SetHDateAttr(pOptmDisp->s32DateCh, &stHDate);
    }
    else
    {
        OPTM_M_DATE_S stDate;

        pOptmDisp->bAttaHDate = HI_FALSE;
        pOptmDisp->bAttaSDate = HI_TRUE;
        pOptmDisp->s32DateCh = 0;/* channle 0 is supported only, at present */
        OPTM_M_GetDateDefaultAttr(pOptmDisp->s32DateCh, &stDate);

        stDate.bEnable = pOptmDisp->bEnable;
        stDate.enFmt   = pOptmDispAttr->enFmt;
        stDate.enMcvn  = pOptmDispAttr->enMcvn;
        OPTM_M_SetDateAttr(pOptmDisp->s32DateCh, &stDate);
    }

    return HI_SUCCESS;
}

#ifdef HI_DISP_TTX_SUPPORT
HI_S32 Disp_InitTtx(HI_VOID)
{
    OPTM_M_IRQ_S stTtx;
    HI_U32    i;
    HI_S32    Ret;

    Ret = HI_DRV_MMZ_AllocAndMap("TtxPes", HI_NULL, BUFFER_LEN_16K, 0, &g_TtxSend.TtxPesBuf);
    if (Ret != 0)
    {
        HI_ERR_DISP("malloc TtxPes buf failed.\n");
        return HI_FAILURE;
    }

    Ret = HI_DRV_MMZ_AllocAndMap("TtxData", HI_NULL, TTX_BLOCK_NUM*BUFFER_LEN_7K, 0, &g_TtxSend.TtxDataBuf);
    if (Ret != 0)
    {
        HI_ERR_DISP("malloc TtxData buf failed.\n");
        HI_DRV_MMZ_UnmapAndRelease(&g_TtxSend.TtxPesBuf);
        return HI_FAILURE;
    }

    g_TtxSend.pPesBufVirtAddr = (HI_U8 *)g_TtxSend.TtxPesBuf.u32StartVirAddr;
    g_TtxSend.TtxPesBufWrite = 0;

    g_TtxSend.pTtxBufVirtAddr = (HI_U8 *)g_TtxSend.TtxDataBuf.u32StartVirAddr;

    INIT_LIST_HEAD(&g_TtxSend.TtxBlockFreeHead);
    INIT_LIST_HEAD(&g_TtxSend.TtxBlockBusyHead);

    g_TtxSend.pTtxBusyList = NULL;
    g_TtxSend.pTtxBusyBlock = NULL;
    g_TtxSend.TtxBusyFlag = HI_FALSE;
    g_TtxSend.TtxListFlag = HI_FALSE;

    for (i=0; i<TTX_BLOCK_NUM; i++)
    {
        g_TtxSend.TtxDataBlock[i].pTtxDataVirtAddr = (HI_U8 *)(g_TtxSend.TtxDataBuf.u32StartVirAddr + i*BUFFER_LEN_7K);
        g_TtxSend.TtxDataBlock[i].TtxStartAddr = g_TtxSend.TtxDataBuf.u32StartPhyAddr + i*BUFFER_LEN_7K;
        g_TtxSend.TtxDataBlock[i].TtxPackConut = 0;
        list_add_tail(&g_TtxSend.TtxDataBlock[i].List, &g_TtxSend.TtxBlockFreeHead);
    }

    /* setting of TTX mode */
    /* DRV_VOU_TtxSetMode(0x1); */
    DRV_VOU_TtxEnableInt();
    udelay(20);
    DRV_VOU_TtxSetPackOff(TTX_PACKET_LENGTH);
    udelay(20);
    DRV_VOU_TtxPiorityHighest(HI_TRUE);
    udelay(20);
    DRV_VOU_SetTtxFullPage(HI_FALSE);
    udelay(20);

    /* VBI data filtering enable */
    DRV_VOU_VbiFilterEnable(HI_TRUE);
    /* udelay(20); */

    stTtx.pFunc = DISP_TtxIsr;
    stTtx.u32Param0 = 0;
    stTtx.u32Param1 = 0;

    OPTM_M_INT_RegisteTtx(&stTtx, 0);

    return HI_SUCCESS;
}

HI_VOID Disp_DeInitTtx(HI_VOID)
{
    OPTM_M_INT_UnRegisteTtx(HI_NULL, 0);

    HI_DRV_MMZ_UnmapAndRelease(&g_TtxSend.TtxPesBuf);
    HI_DRV_MMZ_UnmapAndRelease(&g_TtxSend.TtxDataBuf);

    /* shutdonw TTX interrupt */
    DRV_VOU_TtxIntClear();
    DRV_VOU_TtxDisableInt();

    return;
}
#endif

#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
HI_S32 Disp_InitVbi(HI_VOID)
{
    HI_U32    i;
#if defined(HI_DISP_CC_SUPPORT)
    HI_S32    Ret;

    Ret = HI_DRV_MMZ_AllocAndMap("VbiPes", HI_NULL, BUFFER_LEN_16K, 0, &g_VbiSend.VbiPesBuf);
    if (Ret != 0)
    {
        HI_ERR_DISP("malloc VbiPes buf failed.\n");
        return HI_FAILURE;
    }

    g_VbiSend.pPesBufVirtAddr = (HI_U8 *)g_VbiSend.VbiPesBuf.u32StartVirAddr;
    g_VbiSend.VbiPesBufWrite = 0;

    INIT_LIST_HEAD(&g_VbiSend.CcBlockFreeHead);
    INIT_LIST_HEAD(&g_VbiSend.CcBlockBusyHead);

    for (i=0; i<CC_BLOCK_NUM; i++)
    {
        list_add_tail(&g_VbiSend.CcDataBlock[i].List, &g_VbiSend.CcBlockFreeHead);
    }

    g_VbiSend.pCcBusyList  = NULL;
    g_VbiSend.pCcBusyBlock = NULL;
    g_VbiSend.CcListFlag   = HI_FALSE;
    g_VbiSend.CcSendStep   = CC_SENDSTEP_START;

    DRV_VOU_CCSetSeq(HI_TRUE);
#endif

#if defined(HI_DISP_CGMS_SUPPORT)
    INIT_LIST_HEAD(&g_VbiSend.WssBlockFreeHead);
    INIT_LIST_HEAD(&g_VbiSend.WssBlockBusyHead);

    for (i=0; i<CC_BLOCK_NUM; i++)
    {
        list_add_tail(&g_VbiSend.WssDataBlock[i].List, &g_VbiSend.WssBlockFreeHead);
    }

    g_VbiSend.pWssBusyList    = NULL;
    g_VbiSend.pWssBusyBlock   = NULL;
    g_VbiSend.WssListFlag     = HI_FALSE;

    g_VbiSend.WssData.bEnable = HI_FALSE;
    g_VbiSend.WssData.u16Data = 0;

    DRV_VOU_WSSConfig(g_VbiSend.WssData.bEnable, g_VbiSend.WssData.u16Data);

    /*DRV_VOU_WSSSetSeq(HI_TRUE);*/
#endif

    return HI_SUCCESS;
}

HI_VOID Disp_DeInitVbi(HI_VOID)
{
    /* shutdown CC WSS */
#if defined(HI_DISP_CC_SUPPORT)
    HI_DRV_MMZ_UnmapAndRelease(&g_VbiSend.VbiPesBuf);

    DRV_VOU_CCLineConfig(HI_FALSE, HI_FALSE, 0, 0);
#endif
#if defined(HI_DISP_CGMS_SUPPORT)
    DRV_VOU_WSSConfig(HI_FALSE, 0);
#endif
}
#endif

extern HI_U32 DISP_Get_CountStatus(void);


/********************************************************************************
    enDisp : only for HI_UNF_DISP_HD0
********************************************************************************/
HI_S32 DISP_SetColorSpace(HI_UNF_DISP_E enDisp, HI_U32 cs)
{
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        switch  (cs)
        {
            case OPTM_CS_eXvYCC_709 :
            case OPTM_CS_eRGB:
                s_DisplayColorSpace[HI_UNF_DISP_HD0] = cs;
                return HI_SUCCESS;
            default:
                 HI_ERR_DISP("HI_UNF_DISP_HD0 only surpport BT.709 and RGB color space now!\n");
                    return HI_FAILURE;
        }
    }
    else
    {
         HI_ERR_DISP("DISP_SetColorSpace only surpport HI_UNF_DISP_HD0 now!\n");
            return HI_FAILURE;
    }
}

HI_S32 DISP_GetColorSpace(HI_UNF_DISP_E enDisp, HI_U32 *pcs)
{
    if ( (HI_UNF_DISP_HD0 == enDisp) || (HI_UNF_DISP_SD0 == enDisp) )
    {
        *pcs = s_DisplayColorSpace[enDisp];
        return HI_SUCCESS;
    }
    else
    {
         HI_ERR_DISP("DISPLAY channel is invalid!\n");
            return HI_FAILURE;
    }
}

HI_BOOL bRwzbProcess = HI_FALSE;
HI_S32 DISP_SetDispDefault(HI_VOID)
{
	bRwzbProcess = HI_TRUE;
	return HI_SUCCESS;
}
HI_S32 DISP_GetDispDefault(HI_VOID)
{
	return bRwzbProcess;
}

HI_S32  DISP_BaseRegInit(HI_VOID)
{
    return OPTM_M_BaseRegInit();
}

HI_S32  DISP_Init(HI_VOID)
{
    HI_U32 i;
    OPTM_DISP_BOOT_SETTING_S stSetting;

    /*enable the TC color space.*/
    if(OptmGetBootargs("tc_csc=") == 1){
        DISP_SetColorSpace(HI_UNF_DISP_HD0, OPTM_CS_eRGB);
    }

    if (g_OptmDispInitTime > 0)
    {
        HI_INFO_DISP("DISP has been inited!\n");
        return HI_SUCCESS;
    }

    /* initialization of DISP module */
#if 0
    if (OPTM_M_InitDisp() != HI_SUCCESS)
    {
        HI_FATAL_DISP("DISP init failed!\n");
        return HI_FAILURE;
    }
#endif
#if 1
    if (DISP_Get_CountStatus() != HI_TRUE)
    {
        HI_S32  s32bt470 = OptmGetBootargs("bt470=");

        bt470 = (s32bt470 == -1) ? bt470 : s32bt470;

        if (OPTM_M_InitDisp() != HI_SUCCESS)
        {
            HI_FATAL_DISP("DISP init failed!\n");
            return HI_FAILURE;
        }

    }
#endif

    /* registration of interrupt service program */
    OPTM_M_INT_InitIrq();
    HI_INFO_DISP("Register VOUT Interrrupt\n");
    if (osal_request_irq(OPTM_IRQ_NUM, (irq_handler_t)OPTM_M_ISR_Isr, IRQF_SHARED, "vdp", &g_OptmIrqHandle) != 0)
    {
        HI_ERR_DISP("DISP registe IRQ failed!\n");
        OPTM_M_DeInitDisp();
        return HI_FAILURE;
    }

#ifdef OPTM_PILOT_GFX_OK
    if (OPTM_GfxInit() != HI_SUCCESS)
    {
        osal_free_irq(OPTM_IRQ_NUM, "vdp", &g_OptmIrqHandle);
        OPTM_M_DeInitDisp();
        return HI_FAILURE;
    }
#endif

    /* configuration of clock */
    /* logic of soft-offset, including shutdown output */

    /* nullification of equipment */
    memset((HI_VOID *)&(g_stDispChn[0]), 0, sizeof(OPTM_DISP_S) * (HI_S32)(HI_UNF_DISP_BUTT));

    Disp_SetDefaultOptmAttr(HI_UNF_DISP_HD0);

    (HI_VOID ) OPTM_M_INT_Registe(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_DISP,DISP_Isr, HI_UNF_DISP_HD0, 0);

#ifndef HI_VDP_ONLY_SD_SUPPORT
    Disp_SetDefaultOptmAttr(HI_UNF_DISP_SD0);

    (HI_VOID ) OPTM_M_INT_Registe(HAL_DISP_INTMSK_DSDVTTHD, OPTM_M_SDVTTSD1_ORDER_DISP,DISP_Isr, HI_UNF_DISP_SD0, 0);
#endif

    /* initialization of the binding relationship of Free Osd */
    for (i=0; i<HI_UNF_DISP_FREE_LAYER_BUTT; i++)
    {
        g_FreeOsdAttach[i] = HI_UNF_DISP_BUTT;
    }

    g_FreeOsdAttach[HI_UNF_DISP_FREE_LAYER_OSD_0] = HI_UNF_DISP_SD0;

    Vou_SetCbmAttr(HAL_DISP_CHANNEL_DSD);

    // DTS DTS2012042900487 : when set HD as PAL/NTSC output format in bootlogo stage , then transfer to AP stage we should
    // also keep the same setting of "dsd_to_hd".
    //OPTM_HAL_SetHSDateSelMux(HAL_DISP_CHANNEL_DHD, 0);
    if (HI_SUCCESS == OPTM_M_GetDispBootSetting(HAL_DISP_CHANNEL_DHD, &stSetting))
    {
        if((stSetting.enEncFmt >=HI_UNF_ENC_FMT_PAL)&&
          (stSetting.enEncFmt <=HI_UNF_ENC_FMT_SECAM_COS))
        {
            OPTM_DISP_S          *pOptmDisp;

            D_DISP_GET_HANDLE(HI_UNF_DISP_HD0, pOptmDisp);
            pOptmDisp->bAttaSDate = HI_TRUE;
            OPTM_HAL_SetHSDateSelMux(HAL_DISP_CHANNEL_DHD, 1);
        }
        else
        {
           OPTM_HAL_SetHSDateSelMux(HAL_DISP_CHANNEL_DHD, 0);
        }
    }
    else
    {
           OPTM_HAL_SetHSDateSelMux(HAL_DISP_CHANNEL_DHD, 0);
    }
    OPTM_HAL_SetHSDateSelMux(HAL_DISP_CHANNEL_DSD, 0);

    if (!OPTM_M_GetDispBootSettingFlag())
    {
        g_stDac = g_stDacBack;
#ifdef HI_DISP_SCART_SUPPORT
        OPTM_M_SetDateScartEn(0, g_stDac.bScartEnable);
#endif
        OPTM_M_SetDacMode(g_stDac.enDacMode);
    }

    g_OptmDispInitTime = 1;
	/* default normal process*/
	bRwzbProcess = HI_FALSE;
#ifndef MINI_SYS_SURPORT
    // check vo mosaic buffer size for VGA format bigger than 1600X1200, 2048x1152

    //VO_SetMosaicBufSizeFlag(OptmGetBootargs("VoMscBufSize="));

#endif
    return HI_SUCCESS;
}

HI_S32  DISP_DeInit(HI_VOID)
{
    if (g_OptmDispInitTime < 1)
    {
        HI_INFO_DISP("DISP: not open.\n");
        return HI_SUCCESS;
    }

    OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DHDVTTHD, OPTM_M_HDVTTHD1_ORDER_DISP);
    DISP_Close(HI_UNF_DISP_HD0);

    OPTM_M_INT_UnRegiste(HAL_DISP_INTMSK_DSDVTTHD, OPTM_M_SDVTTSD1_ORDER_DISP);
    DISP_Close(HI_UNF_DISP_SD0);

#ifdef OPTM_PILOT_GFX_OK
    OPTM_GfxDeInit();
#endif

    /* close clock */

    /* nullification of equipment */
    memset((HI_VOID *)&(g_stDispChn[0]), 0, sizeof(OPTM_DISP_S) * (HI_S32)(HI_UNF_DISP_BUTT));
    HI_INFO_DISP("UnRegister VOUT Interrrupt\n");

    /* logout of interrupt service program */
    osal_free_irq(OPTM_IRQ_NUM, "vdp", &g_OptmIrqHandle);

    OPTM_M_DeInitDisp();

    g_OptmDispInitTime = 0;

    return HI_SUCCESS;
}

HI_S32  DISP_Open(HI_UNF_DISP_E enDisp)
{
    OPTM_DISP_S  *pSrcOptmDisp;
    OPTM_DISP_S  *pOptmDisp;
    HI_S32       Ret;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (HI_TRUE == pOptmDisp->bOpened)
    {
        return HI_SUCCESS;
    }

#ifndef HI_VDP_ONLY_SD_SUPPORT
    if (HI_UNF_DISP_SD0 == enDisp)
    {
#ifdef HI_DISP_TTX_SUPPORT
        Ret = Disp_InitTtx();
        if (Ret != HI_SUCCESS)
        {
            return Ret;
        }
#endif
#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
        Ret = Disp_InitVbi();
        if (Ret != HI_SUCCESS)
        {
            goto DeInit_TTX;
        }
#endif
    }

#if defined(OPTM_PILOT_VO_OK) && !defined(MINI_SYS_SURPORT)
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT) /* Only HI_UNF_DISP_SD0 has enSrcDisp! */
    {
        D_DISP_GET_HANDLE(pOptmDisp->enSrcDisp, pSrcOptmDisp);

        HI_INFO_DISP("VO_SetVoAttach enDisp:%d\n", enDisp);
        Ret = VO_SetVoAttach(HI_UNF_VO_HD0, HI_UNF_VO_SD0);
        if (Ret != HI_SUCCESS)
        {
            goto DeInit_VBI;
        }
        VO_SetWbcOpen(HI_TRUE);
    }
#endif

#ifdef  HI_DISP_MACROVISION_SUPPORT
    if( HI_UNF_DISP_SD0 == enDisp)
    {
        OPTM_M_SetDateMcvn(pOptmDisp->s32DateCh, HI_UNF_DISP_MACROVISION_MODE_TYPE0);
    }
    else if ( HI_UNF_DISP_HD0 == enDisp)
    {
        OPTM_HAL_SetMcvnEnable(HAL_DISP_CHANNEL_DHD, HI_FALSE);
    }
#endif
#else
    if (HI_UNF_DISP_SD0 == enDisp)
    {
        HI_ERR_DISP("Wrong Disp Channel!\n");
        return HI_FAILURE;
    }
    else if (HI_UNF_DISP_HD0 == enDisp)
    {
#ifdef HI_DISP_TTX_SUPPORT
        Ret = Disp_InitTtx();
        if (Ret != HI_SUCCESS)
        {
            return Ret;
        }
#endif
#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
        Ret = Disp_InitVbi();
        if (Ret != HI_SUCCESS)
        {
            goto DeInit_TTX;
        }
#endif

#ifdef  HI_DISP_MACROVISION_SUPPORT
        OPTM_M_SetDateMcvn(pOptmDisp->s32DateCh, HI_UNF_DISP_MACROVISION_MODE_TYPE0);
#endif
    }
#endif

#ifdef HI_DISP_CGMS_SUPPORT
    /* for CGMS initialization */
    Ret = DISP_CgmsInit(enDisp);
    if (Ret != HI_SUCCESS)
    {
        goto Detach_VO;
    }
#endif

    pOptmDisp->bOpened = HI_TRUE;

    return DISP_SetEnable(enDisp, HI_TRUE);

#ifdef HI_DISP_CGMS_SUPPORT
Detach_VO:
#ifndef MINI_SYS_SURPORT
#ifndef HI_VDP_ONLY_SD_SUPPORT
    VO_SetWbcOpen(HI_FALSE);
    VO_SetVoDetach(HI_UNF_VO_HD0, HI_UNF_VO_SD0);
#endif
#endif
#endif

DeInit_VBI:
#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
    Disp_DeInitVbi();
#endif

#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
DeInit_TTX:
#ifdef HI_DISP_TTX_SUPPORT
    Disp_DeInitTtx();
#endif
#endif
    return Ret;
}

HI_S32  DISP_Close(HI_UNF_DISP_E enDisp)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    HI_INFO_DISP("DISP_Close enDisp:%d\n", enDisp);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (HI_FALSE == pOptmDisp->bOpened)
    {
        return HI_SUCCESS;
    }

#ifdef OPTM_PILOT_VO_OK
#ifndef MINI_SYS_SURPORT
#ifndef HI_VDP_ONLY_SD_SUPPORT
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT) /* Only HI_UNF_DISP_SD0 has enSrcDisp! */
    {
        HI_INFO_DISP("Come to WBC close\n");
        VO_SetWbcEnable(HI_FALSE);
        msleep(50);

        VO_SetWbcOpen(HI_FALSE);

        VO_SetVoDetach(HI_UNF_VO_HD0, HI_UNF_VO_SD0);
        HI_INFO_DISP("After WBC close\n");
    }
#endif
#endif
#endif

#ifndef HI_VDP_ONLY_SD_SUPPORT
    if (HI_UNF_DISP_SD0 == enDisp)
    {
#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
        Disp_DeInitVbi();
#endif
#ifdef HI_DISP_TTX_SUPPORT
        Disp_DeInitTtx();
#endif
    }
#else
    if (HI_UNF_DISP_HD0 == enDisp)
    {
#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
        Disp_DeInitVbi();
#endif
#ifdef HI_DISP_TTX_SUPPORT
        Disp_DeInitTtx();
#endif
    }
#endif

#ifdef HI_DISP_CGMS_SUPPORT
    /* for CGMS de-initialization */
    DISP_CgmsDeInit(enDisp);
#endif

    pOptmDisp->bOpened = HI_FALSE;

    /* close output */
    return DISP_SetEnable(enDisp, HI_FALSE);
}

HI_S32  DISP_SetEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (bEnable == pOptmDisp->bEnable)
    {
        return HI_SUCCESS;
    }

    /*******************************************************
                 settings of hardware output
    ********************************************************/
    pOptmDisp->bEnable = bEnable;

    /* settings of DATE output */
    if (HI_TRUE == pOptmDisp->bAttaHDate)
    {
        OPTM_M_SetHDateEnable(pOptmDisp->s32DateCh, bEnable);
    }
    if (HI_TRUE == pOptmDisp->bAttaSDate)
    {
        OPTM_M_SetDateEnable(pOptmDisp->s32DateCh, bEnable);
    }

/*
    if (bEnable == HI_FALSE)
    {
*/
        /* First, screen video layer and graphic layer
        OPTM_M_SetDispMaskLayer(pOptmDisp->enDispHalId, HI_TRUE);

        msleep(50);
    }
*/

    /* settings of DXD output */
    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, bEnable);
/*
    if (bEnable == HI_FALSE)
    {

*/
        /* First, screen video layer and graphic layer
        OPTM_M_SetDispMaskLayer(pOptmDisp->enDispHalId, HI_FALSE);
    }
*/

    /* in isogeny mode, do the same operation to display channels for bound targets */
    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
    {
        DISP_SetEnable(pOptmDisp->enDstDisp, bEnable);
    }
    //only for SD0
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        DISP_SetEnable(pOptmDisp->enSrcDisp, bEnable);
    }

    msleep(40);
    return HI_SUCCESS;
}

#ifdef HI_DISP_CGMS_SUPPORT
/* initialize CGMS */
HI_S32  DISP_CgmsInit(HI_UNF_DISP_E enDisp)
{
    OPTM_DISP_S  *pOptmDisp;
    HAL_DISP_OUTPUTCHANNEL_E  enChan = HAL_DISP_CHANNEL_BUTT;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP, HD/SD*/
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDisp->OptmDispAttr.stCgmsCfgA.bEnable  = HI_FALSE;
    pOptmDisp->OptmDispAttr.stCgmsCfgA.enType   = HI_UNF_DISP_CGMS_TYPE_BUTT;
    pOptmDisp->OptmDispAttr.stCgmsCfgA.enMode   = HI_UNF_DISP_CGMS_MODE_BUTT;

    /* disabled HD0/SD0 of CGMS (A/B)*/
    if (HI_UNF_DISP_SD0 == enDisp)
        enChan = HAL_DISP_CHANNEL_DSD;
    else
        enChan = HAL_DISP_CHANNEL_DHD;

    OPTM_M_SetCgmsEnable(enChan, HI_FALSE, HI_UNF_DISP_CGMS_TYPE_A);
    OPTM_M_SetCgmsEnable(enChan, HI_FALSE, HI_UNF_DISP_CGMS_TYPE_B);

    return HI_SUCCESS;
}


/* de-initialize CGMS */
HI_S32  DISP_CgmsDeInit(HI_UNF_DISP_E enDisp)
{
    OPTM_DISP_S  *pOptmDisp;
    HAL_DISP_OUTPUTCHANNEL_E  enChan = HAL_DISP_CHANNEL_BUTT;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP, HD/SD*/
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDisp->OptmDispAttr.stCgmsCfgA.bEnable  = HI_FALSE;
    pOptmDisp->OptmDispAttr.stCgmsCfgA.enType   = HI_UNF_DISP_CGMS_TYPE_BUTT;
    pOptmDisp->OptmDispAttr.stCgmsCfgA.enMode   = HI_UNF_DISP_CGMS_MODE_BUTT;

    /* disabled HD0/SD0 of CGMS (A/B)*/
     if (HI_UNF_DISP_SD0 == enDisp)
        enChan = HAL_DISP_CHANNEL_DSD;
    else
        enChan = HAL_DISP_CHANNEL_DHD;

    OPTM_M_SetCgmsEnable(enChan, HI_FALSE, HI_UNF_DISP_CGMS_TYPE_A);
    OPTM_M_SetCgmsEnable(enChan, HI_FALSE, HI_UNF_DISP_CGMS_TYPE_B);

    return HI_SUCCESS;
}
#endif

HI_S32  DISP_GetEnable(HI_UNF_DISP_E enDisp, HI_BOOL *pbEnable)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();

    D_DISP_CHECK_PTR(pbEnable);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *pbEnable = pOptmDisp->bEnable;

    return HI_SUCCESS;
}

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_S32 DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    OPTM_DISP_S  *pDstOptmDisp;
    OPTM_DISP_S  *pSrcOptmDisp;
#ifndef MINI_SYS_SURPORT
    HI_BOOL      bEnable;
#endif
    HI_S32       Ret;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDstDisp, pDstOptmDisp);
    D_DISP_GET_HANDLE(enSrcDisp, pSrcOptmDisp);

    /* re-binding, return success */
    if (pDstOptmDisp->enSrcDisp == enSrcDisp)
    {
        return HI_SUCCESS;
    }
    else
    {
        if (enSrcDisp != HI_UNF_DISP_HD0)
        {
            HI_ERR_DISP("enSrcDisp is not HD\n");
            return HI_ERR_DISP_INVALID_OPT;
        }

        if (enDstDisp != HI_UNF_DISP_SD0)
        {
            HI_ERR_DISP("enDstDisp is not SD\n");
            return HI_ERR_DISP_INVALID_OPT;
        }

        if (pSrcOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
        {
            HI_ERR_DISP("enSrcDisp is DstDisp.\n");
            return HI_ERR_DISP_INVALID_OPT;
        }

        if (pSrcOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
        {
            HI_ERR_DISP("enSrcDisp is SrcDisp.\n");
            return HI_ERR_DISP_INVALID_OPT;
        }

        if (pDstOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
        {
            HI_ERR_DISP("enDstDisp is DstDisp\n");
            return HI_ERR_DISP_INVALID_OPT;
        }

        if (pDstOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
        {
            HI_ERR_DISP("enDstDisp is SrcDisp\n");
            return HI_ERR_DISP_INVALID_OPT;
        }
    }

    /* in binding, target disp is not allowed to be open*/
    /* if (pDstOptmDisp->bEnable) */
    if (pDstOptmDisp->bOpened)
    {
        HI_ERR_DISP("enDstDisp is opened\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    /* 20110109 g45208
       set the binding relationships of graphic layers */
    if (g_FreeOsdAttach[HI_UNF_DISP_FREE_LAYER_OSD_0] != HI_UNF_DISP_SD0)
    {
        HI_ERR_DISP("FREE OSD0 is not attach to HI_UNF_DISP_SD0!\n");
        return HI_ERR_DISP_CREATE_ERR;
    }

    Ret = OPTM_GfxSetWorkMode(OPTM_GFX_MODE_HD_WBC);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_DISP("Set Gfx WBC mode failed!\n");
        return HI_ERR_DISP_CREATE_ERR;
    }

#ifdef OPTM_PILOT_VO_OK
#ifndef MINI_SYS_SURPORT

    /* in binding, VO of target disp is not allowed to be open*/
    Ret = VO_GetLayerEnable(HI_UNF_VO_SD0, &bEnable);
    if (HI_SUCCESS == Ret)
    {
        if (bEnable)
        {
            (HI_VOID) OPTM_GfxGetWorkMode(OPTM_GFX_MODE_NORMAL);
            HI_ERR_DISP("DstDisp's vo is enabled\n");
            return HI_ERR_DISP_INVALID_OPT;
        }
    }
#endif
#endif

    /* Don't need close trigger at detach */
    /* OPTM_HAL_SetTrigger(HAL_DISP_CHANNEL_DSD, HI_TRUE); */

    pDstOptmDisp->OptmDispAttr.enSrcDisp = enSrcDisp;
    pDstOptmDisp->enSrcDisp = enSrcDisp;

    pSrcOptmDisp->OptmDispAttr.enDestDisp = enDstDisp;
    pSrcOptmDisp->enDstDisp = enDstDisp;

    return HI_SUCCESS;
}

HI_S32 DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    OPTM_DISP_S  *pDstOptmDisp;
    OPTM_DISP_S  *pSrcOptmDisp;
    HI_S32 Ret;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDstDisp, pDstOptmDisp);
    D_DISP_GET_HANDLE(enSrcDisp, pSrcOptmDisp);

    if (pDstOptmDisp->enSrcDisp != enSrcDisp)
    {
        return HI_SUCCESS;
    }

    /* in the time of unbinding, target disp is not allowed to be open*/
    if (pDstOptmDisp->bEnable)
    {
        HI_ERR_DISP("enDstDisp is enabled\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    Ret = OPTM_GfxSetWorkMode(OPTM_GFX_MODE_NORMAL);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_DISP("Set Gfx NORMAL mode failed\n");
    }

    /* Don't need close trigger at detach */
    /* OPTM_HAL_SetTrigger(HAL_DISP_CHANNEL_DSD, HI_FALSE); */

    pDstOptmDisp->enSrcDisp = HI_UNF_DISP_BUTT;
    pSrcOptmDisp->enDstDisp = HI_UNF_DISP_BUTT;

    return HI_SUCCESS;
}
#endif

HI_S32 DISP_AttachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enDispFreeLayer)
{
    OPTM_DISP_S *pOptmDisp;
    HI_U32      LayerNum;
    HI_BOOL     EnableState;
    OPTM_GFX_MODE_EN enGfxMode;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (enDispFreeLayer >= HI_UNF_DISP_FREE_LAYER_BUTT)
    {
        HI_ERR_DISP("FREE OSD %d is not exist.\n", enDispFreeLayer);
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* re-binding, return success */
    if (g_FreeOsdAttach[enDispFreeLayer] == enDisp)
    {
        return HI_SUCCESS;
    }

    if (HI_SUCCESS == OPTM_GfxGetWorkMode(&enGfxMode))
    {
        if (enGfxMode == OPTM_GFX_MODE_HD_WBC)
        {
            HI_ERR_DISP("FREE OSD0 is working at WBC mode.\n");
            return HI_ERR_DISP_INVALID_OPT;
        }
    }


    /* bound to another disp, return failure */
    if (g_FreeOsdAttach[enDispFreeLayer] != HI_UNF_DISP_BUTT)
    {
        HI_ERR_DISP("layer is attached to disp%d.\n", g_FreeOsdAttach[enDispFreeLayer]);
        return HI_ERR_DISP_INVALID_OPT;
    }

/*
    if (pOptmDisp->bEnable)
    {
        HI_ERR_DISP("disp is opened.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
*/

    EnableState = OPTM_HAL_GetLayerEnable(HAL_DISP_LAYER_GFX1);
    if (EnableState)
    {
        HAL_DISP_EnableLayer(HAL_DISP_LAYER_GFX1, HI_FALSE);
        HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_GFX1);
        msleep(40);
    }

    LayerNum = pOptmDisp->OptmDispAttr.u32LayerNum;

    pOptmDisp->OptmDispAttr.DispLayerOrder[LayerNum] = HI_UNF_DISP_LAYER_ATTACH_OSD_0;

    Disp_AddDispSubLayer(enDisp, HI_UNF_DISP_LAYER_ATTACH_OSD_0,
                          &(pOptmDisp->SubLayer[HI_UNF_DISP_LAYER_ATTACH_OSD_0]));

    pOptmDisp->OptmDispAttr.u32LayerNum++;

    Vou_SetCbmAttr(pOptmDisp->enDispHalId);

    if (EnableState)
    {
        HAL_DISP_EnableLayer(HAL_DISP_LAYER_GFX1, HI_TRUE);
        HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_GFX1);
        msleep(40);
    }

    /* pOptmDisp->unUpFlag.Bits.Order = 1; */
    Disp_SetDispLayerOrder(enDisp, pOptmDisp->OptmDispAttr.u32LayerNum, pOptmDisp->OptmDispAttr.DispLayerOrder, pOptmDisp->SubLayer);
    g_FreeOsdAttach[enDispFreeLayer] = enDisp;

    return HI_SUCCESS;
}

HI_S32  DISP_DetachOsd(HI_UNF_DISP_E enDisp, HI_UNF_DISP_FREE_LAYER_E enDispFreeLayer)
{
    OPTM_DISP_S *pOptmDisp;
    HI_U32      i,j;
    HI_U32      LayerNum;
    HI_BOOL     EnableState;
    OPTM_GFX_MODE_EN enGfxMode;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (enDispFreeLayer >= HI_UNF_DISP_FREE_LAYER_BUTT)
    {
        HI_ERR_DISP("FREE OSD %d is not exist.\n", enDispFreeLayer);
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* re-binding, return success */
    if (HI_UNF_DISP_BUTT == g_FreeOsdAttach[enDispFreeLayer])
    {
        return HI_SUCCESS;
    }

    if (HI_SUCCESS == OPTM_GfxGetWorkMode(&enGfxMode))
    {
        if (enGfxMode == OPTM_GFX_MODE_HD_WBC)
        {
            HI_ERR_DISP("FREE OSD0 is working at WBC mode.\n");
            return HI_ERR_DISP_INVALID_OPT;
        }
    }

    /* bound to another disp, return failure */
    if (g_FreeOsdAttach[enDispFreeLayer] != enDisp)
    {
        HI_ERR_DISP("layer is attached to disp%d.\n", g_FreeOsdAttach[enDispFreeLayer]);
        return HI_ERR_DISP_INVALID_OPT;
    }
/*
    if (pOptmDisp->bEnable)
    {
        HI_ERR_DISP("disp is opened.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
*/
    EnableState = OPTM_HAL_GetLayerEnable(HAL_DISP_LAYER_GFX1);
    if (EnableState)
    {
        HAL_DISP_EnableLayer(HAL_DISP_LAYER_GFX1, HI_FALSE);
        HAL_DISP_SetRegUpNoRatio(HAL_DISP_LAYER_GFX1);
        msleep(40);
    }

    LayerNum = pOptmDisp->OptmDispAttr.u32LayerNum;

    for (i=0; i<LayerNum; i++)
    {
        if (HI_UNF_DISP_LAYER_ATTACH_OSD_0 == pOptmDisp->OptmDispAttr.DispLayerOrder[i])
        {
            break;
        }
    }

    Disp_DelDispSubLayer(enDisp, HI_UNF_DISP_LAYER_ATTACH_OSD_0, &(pOptmDisp->SubLayer[HI_UNF_DISP_LAYER_ATTACH_OSD_0]));

    if (i != (LayerNum -1))
    {
        for (j=i; j<(LayerNum-1); j++)
        {
            pOptmDisp->OptmDispAttr.DispLayerOrder[j] = pOptmDisp->OptmDispAttr.DispLayerOrder[j+1];
        }
    }

    pOptmDisp->OptmDispAttr.u32LayerNum--;

    Disp_SetDispLayerOrder(enDisp, pOptmDisp->OptmDispAttr.u32LayerNum, pOptmDisp->OptmDispAttr.DispLayerOrder, pOptmDisp->SubLayer);

    g_FreeOsdAttach[enDispFreeLayer] = HI_UNF_DISP_BUTT;

    return HI_SUCCESS;
}

HI_S32 DISP_SetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E enIntfType)
{
    OPTM_DISP_S *pOptmDisp;
#ifdef HI_DISP_LCD_SUPPORT
    OPTM_DISP_S *pOptmSDDisp;
#endif
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;
    HI_BOOL bEnableState;

    D_DISP_CHECK_DEVICE_OPEN();

    if (enIntfType >= HI_UNF_DISP_INTF_TYPE_BUTT)
    {
        HI_ERR_DISP("DISP: invalid IntfYype.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if ((HI_UNF_DISP_INTF_TYPE_LCD == enIntfType) && (HI_UNF_DISP_HD0 != enDisp) )
    {
        HI_ERR_DISP("DISP: SD not support LCD.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    if (enIntfType == pOptmDispAttr->enIntfType)
    {
        return HI_SUCCESS;
    }

    /* first, screen video layer and graphic layer */
    OPTM_M_SetDispMaskLayer(pOptmDisp->enDispHalId, HI_TRUE);
    msleep(50);

    /* close output */
    bEnableState = pOptmDisp->bEnable;
    pOptmDisp->bEnable = HI_FALSE;
    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, pOptmDisp->bEnable);

    pOptmDispAttr->enIntfType = enIntfType;
#if 0
    /* setting of CSCMODE*/
    if (pOptmDisp->OptmDispAttr.enIntfType == HI_UNF_DISP_INTF_TYPE_LCD)
    {
        pOptmDisp->enDstCS = OPTM_CS_eRGB;
    }
    else
    {
        pOptmDisp->enDstCS = (HI_UNF_DISP_SD0 == enDisp) ? OPTM_CS_eXvYCC_601 : OPTM_CS_eXvYCC_709;
    }
#else
    pOptmDisp->enDstCS = (HI_UNF_DISP_SD0 == enDisp) ? OPTM_CS_eXvYCC_601 : OPTM_CS_eXvYCC_709;
#endif

    OPTM_M_SetDispCscMode(pOptmDisp->enDispHalId, pOptmDisp->enSrcCS, pOptmDisp->enDstCS);

    if (HI_UNF_DISP_HD0 == enDisp)
    {
#ifdef HI_DISP_LCD_SUPPORT
        if (HI_UNF_DISP_INTF_TYPE_LCD == enIntfType)
        {
            /* set default resolution of LCD */
            pOptmDisp->OptmDispAttr.enLcdFmt = OPTM_DISP_LCD_FMT_BUTT;
            DISP_SetLcdDefaultPara(enDisp, OPTM_DISP_LCD_FMT_861D_640X480_60HZ);

            // DTS2011081801547, when HD,SD use same source , then HD change SD format to VGA format
            //we should release SDATA resource, and reconfig DSD
              //OPTM_HAL_SetHSDateSelMux(HAL_DISP_CHANNEL_DHD, 0);
              //OPTM_HAL_SetHSDateSelMux(HAL_DISP_CHANNEL_DSD, 0);
            if (pOptmDisp->bAttaSDate == HI_TRUE)
            {
                pOptmDisp->bAttaSDate = HI_FALSE;
                OPTM_HAL_SetHSDateSelMux(pOptmDisp->enDispHalId, 0);

                D_DISP_GET_HANDLE(HI_UNF_DISP_SD0, pOptmSDDisp);
                pOptmSDDisp->bAttaSDate = HI_TRUE;

                if (pOptmSDDisp->bOpened == HI_TRUE)
                {
                    OPTM_M_SetDateFmt(pOptmSDDisp->s32DateCh, pOptmSDDisp->OptmDispAttr.enFmt);
                }

                /* open lowpass fitering */
                OPTM_HAL_SetDateChlp_en(HAL_DISP_CHANNEL_DSD, 1);

                OPTM_HAL_SetDatepYbpr_lpf_en(HAL_DISP_CHANNEL_DSD, 0);
            }

#ifdef HI_DISP_CGMS_SUPPORT
            /* In VGA mode, disable CGMS!! */
            OPTM_M_SetCgmsEnable(HAL_DISP_CHANNEL_DHD, HI_FALSE, HI_UNF_DISP_CGMS_TYPE_A);
            OPTM_M_SetCgmsEnable(HAL_DISP_CHANNEL_DHD, HI_FALSE, HI_UNF_DISP_CGMS_TYPE_B);
#endif
        }
        else
#endif
        {
            pOptmDisp->OptmDispAttr.enFmt = HI_UNF_ENC_FMT_BUTT;
            DISP_SetFormat(enDisp, HI_UNF_ENC_FMT_1080i_50);
         }
    }
    else
    {
        pOptmDisp->OptmDispAttr.enFmt = HI_UNF_ENC_FMT_BUTT;
        DISP_SetFormat(enDisp, HI_UNF_ENC_FMT_PAL);
    }

    /* set DXD signal */
    OPTM_M_SetDispIntfType(pOptmDisp->enDispHalId, enIntfType);

    pOptmDisp->bEnable = bEnableState;
    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, pOptmDisp->bEnable);

    OPTM_M_SetDispMaskLayer(pOptmDisp->enDispHalId, HI_FALSE);

    return HI_SUCCESS;
}

HI_S32 DISP_GetIntfType(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E *penIntfType)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(penIntfType);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *penIntfType = pOptmDisp->OptmDispAttr.enIntfType;

    return HI_SUCCESS;
}

HI_S32 DISP_LocSetTVFmt(HI_UNF_DISP_E enDisp)
{
    OPTM_DISP_S *pOptmDisp;
    OPTM_DISP_S *pOptmSDDisp;
    HI_U32 vn1, vn2;

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, HI_FALSE);

    /*
	 * Because sync and trigger can't be opened at the same time at the beginning.
	 * It need open trigger first, and then open sync at the first SD interrupt. So, need close sync here.
	 */
    OPTM_HAL_SetSync(HAL_DISP_CHANNEL_DSD, HI_FALSE);

    /* step1: set DISP */
    OPTM_M_SetDispEncFmt(pOptmDisp->enDispHalId, pOptmDisp->OptmDispAttr.enFmt);

    /* Get vou version */
    OPTM_HAL_GetVersion(&vn1, &vn2);

    if (pOptmDisp->enDispHalId == HAL_DISP_CHANNEL_DHD)
    {
        /* step2: set HDMI */
        OPTM_M_DISP_HDMI_S stHdmiIntf;

        if(pOptmDisp->OptmDispAttr.enFmt >= HI_UNF_ENC_FMT_576P_50)
        {
            stHdmiIntf.u32HsyncNegative = 1;
            stHdmiIntf.u32VsyncNegative = 1;
        }
        else
        {
            stHdmiIntf.u32HsyncNegative = 0;
            stHdmiIntf.u32VsyncNegative = 0;
        }
        stHdmiIntf.u32DvNegative = 0;

        if(pOptmDisp->OptmDispAttr.enFmt >= HI_UNF_ENC_FMT_PAL)
        {
            stHdmiIntf.s32SyncType   = 1;

            /* stHdmiIntf.s32CompNumber = 0;
            settings of HDMI output; other default values are 0 */

            stHdmiIntf.s32CompNumber = 2; /* 576I / 480I optimal scheme, three components */
        }
        else if(g_stDac.bBt1120Enable == HI_TRUE)
        {
            stHdmiIntf.s32SyncType   = 1;
            stHdmiIntf.s32CompNumber = 1; /* settings of HDMI output; other default values are 0 */
        }
        else
        {
            stHdmiIntf.s32SyncType   = 1;
            stHdmiIntf.s32CompNumber = 2; /* settings of HDMI output; other default values are 0 */
        }

        stHdmiIntf.s32DataFmt = 0;        /* settings of HDMI output; other default values are 0 */

        OPTM_M_SetDispHdmiIntf(pOptmDisp->enDispHalId, &stHdmiIntf);

        /* step3: set HDATE/DATE */
        if(pOptmDisp->OptmDispAttr.enFmt >= HI_UNF_ENC_FMT_PAL)
        {
            // change vomux

                if (HI_TRUE == pOptmDisp->bAttaHDate)
                {
                    OPTM_M_SetHDateEnable(pOptmDisp->s32DateCh, HI_FALSE);
                    pOptmDisp->bAttaHDate = HI_FALSE;
                }

                if (pOptmDisp->bAttaSDate != HI_TRUE)
                {
                    pOptmDisp->bAttaSDate = HI_TRUE;
                    OPTM_HAL_SetHSDateSelMux(pOptmDisp->enDispHalId, 1);

                    D_DISP_GET_HANDLE(HI_UNF_DISP_SD0, pOptmSDDisp);
                    pOptmSDDisp->bAttaSDate = HI_FALSE;
                }


            if (HI_TRUE == pOptmDisp->bAttaSDate )
            {
                OPTM_M_SetDateFmt(pOptmDisp->s32DateCh, pOptmDisp->OptmDispAttr.enFmt);

                /* 576I+CVBS, luma_dl is 0 */
                OPTM_HAL_SetDateLumaDelay(HAL_DISP_CHANNEL_DSD, 0);


                /* modify the CLIP threshold to SD threshold */
                {
                    HAL_DISP_CLIP_S stClip;

                    stClip.bClipEn        = HI_TRUE;
                    stClip.u16ClipLow_y   = 0x10<<2;
                    stClip.u16ClipLow_cb  = 0x10<<2;
                    stClip.u16ClipLow_cr  = 0x10<<2;
                    stClip.u16ClipHigh_y  = 0xeb<<2;
                    stClip.u16ClipHigh_cb = 0xf0<<2;
                    stClip.u16ClipHigh_cr = 0xf0<<2;

                    /* set clip enable */
                    HAL_DISP_SetIntfClip(HAL_DISP_CHANNEL_DHD, stClip);

                    /* shutdown lowpass filtering */

                OPTM_HAL_SetDateChlp_en(HAL_DISP_CHANNEL_DSD, 1);
                OPTM_HAL_SetDatepYbpr_lpf_en(HAL_DISP_CHANNEL_DSD, 0);

                }
            }
        }
        else
        {
            if (pOptmDisp->bAttaHDate != HI_TRUE)
            {
                pOptmDisp->bAttaHDate = HI_TRUE;
                OPTM_M_SetHDateEnable(pOptmDisp->s32DateCh, HI_TRUE);
            }

            OPTM_M_SetHDateFmt(pOptmDisp->s32DateCh, pOptmDisp->OptmDispAttr.enFmt);

            if (pOptmDisp->bAttaSDate == HI_TRUE)
            {
                pOptmDisp->bAttaSDate = HI_FALSE;
                OPTM_HAL_SetHSDateSelMux(pOptmDisp->enDispHalId, 0);

                D_DISP_GET_HANDLE(HI_UNF_DISP_SD0, pOptmSDDisp);
                pOptmSDDisp->bAttaSDate = HI_TRUE;

                if (pOptmSDDisp->bOpened == HI_TRUE)
                {
                    OPTM_M_SetDateFmt(pOptmSDDisp->s32DateCh, pOptmSDDisp->OptmDispAttr.enFmt);
                }

                /* open lowpass fitering */

            OPTM_HAL_SetDatepYbpr_lpf_en(HAL_DISP_CHANNEL_DSD, 0);


                OPTM_HAL_SetDateChlp_en(HAL_DISP_CHANNEL_DSD, 1);
            }

            /* modify the CLIP threshold to HD threshold */
            {
                HAL_DISP_CLIP_S stClip;

                stClip.bClipEn        = HI_TRUE;


                stClip.u16ClipLow_y   = 64;
                stClip.u16ClipLow_cb  = 64;
                stClip.u16ClipLow_cr  = 64;


                stClip.u16ClipHigh_y  = 1019;
                stClip.u16ClipHigh_cb = 1019;
                stClip.u16ClipHigh_cr = 1019;

                /* set clip enable */
                HAL_DISP_SetIntfClip(HAL_DISP_CHANNEL_DHD, stClip);
            }
        }

        /* step4: set */
        DISP_SetDacMode(&g_stDac);

#ifdef HI_DISP_GAMMA_SUPPORT
        /* set GAMMA coefficients */
        OPTM_M_SetDispGammaCoef(pOptmDisp->enDispHalId, pOptmDisp->OptmDispAttr.enFmt);
#endif
    }
    else
    {
        /* set dsd channel */
        /* set DATE output */
        if (HI_TRUE == pOptmDisp->bAttaHDate)
        {
            OPTM_M_SetHDateFmt(pOptmDisp->s32DateCh, pOptmDisp->OptmDispAttr.enFmt);
        }

        if (HI_TRUE == pOptmDisp->bAttaSDate)
        {
            OPTM_M_SetDateFmt(pOptmDisp->s32DateCh, pOptmDisp->OptmDispAttr.enFmt);
        }
    }

    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, pOptmDisp->bEnable);

    return HI_SUCCESS;
}

HI_S32  DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncFmt)
{
    OPTM_DISP_S *pOptmDisp;
#ifdef HI_DISP_CGMS_SUPPORT
    HI_S32 nRet;
#endif
#ifndef MINI_SYS_SURPORT
    HI_BOOL bDispState, bDispSuspendState, bVoSuspendState;
    HI_BOOL HDEnableFlag, SDEnableFlag;
#endif

    HI_CHIP_TYPE_E enChipType = HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enChipVersion = HI_CHIP_VERSION_BUTT;

    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipVersion);
    if ((HI_CHIP_TYPE_BUTT == enChipType) || (HI_CHIP_VERSION_BUTT == enChipVersion))
    {
        HI_ERR_DISP("CHIP: invalid chipType or chipVersion.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }
    /* exception handle */
    D_DISP_CHECK_DEVICE_OPEN();

    if ((HI_CHIP_TYPE_HI3110E == enChipType ) && (HI_CHIP_VERSION_V500 == enChipVersion))
    {
        if ((HI_UNF_ENC_FMT_PAL > enEncFmt) || (HI_UNF_ENC_FMT_SECAM_COS < enEncFmt))
        {
            HI_ERR_DISP("DISP: invalid enEncFmt.\n");
            return HI_ERR_DISP_INVALID_PARA;
        }
    }

    if (enEncFmt >= HI_UNF_ENC_FMT_861D_640X480_60)
    {
        HI_ERR_DISP("DISP: invalid enEncFmt.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    if (  (HI_UNF_DISP_SD0 == enDisp)
        &&(enEncFmt < HI_UNF_ENC_FMT_PAL) )
    {
        HI_ERR_DISP("DISP: invalid enEncFmt.\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    /* Because of low power control, need config dac gc by format, so config here, only config at HD */
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        OPTM_M_SetDacGc(enEncFmt);
    }

    /* no change */
    if (enEncFmt == pOptmDisp->OptmDispAttr.enFmt)
    {
        return HI_SUCCESS;
    }

    // User may set format as 'PAL' firstly, then attch display.
    // In this situation, setting-format will fail.
    // So we delete these code and explain in FAQ document.
#if 0
    // 20110811. add for seperate output application
    if (  (HI_UNF_DISP_HD0 == enDisp)
        &&(enEncFmt >= HI_UNF_ENC_FMT_PAL)
        &&(enEncFmt <= HI_UNF_ENC_FMT_SECAM_COS)
        &&(pOptmDisp->enDstDisp == HI_UNF_DISP_BUTT)
        &&(pOptmDisp->enSrcDisp == HI_UNF_DISP_BUTT)
       )
    {
        HI_ERR_DISP("HD not support at seperate output mode.\n");

        return HI_ERR_DISP_INVALID_PARA;
    }
#endif

    /* based on current single buffer plan for isogeny-display, only 50 and 60 fresh rate are supported */
    /* confirmed with gfei,jlei,yhfeng,ghtao,for hd use, delete the 50/60hz limit.*/

    /* why ERROR? */
    if (HI_UNF_DISP_INTF_TYPE_TV != pOptmDisp->OptmDispAttr.enIntfType)
    {
        HI_ERR_DISP("DISP: Intf type is not TV.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

#ifndef MINI_SYS_SURPORT
    //step0 store state
    bDispState = pOptmDisp->bEnable;
    bVoSuspendState   = g_VoSuspend;

    //save disp enable flag for not same source stream
    HAL_DISP_GetIntfEnable(HAL_DISP_CHANNEL_DHD, &HDEnableFlag);
    HAL_DISP_GetIntfEnable(HAL_DISP_CHANNEL_DSD, &SDEnableFlag);
    //add for DTS2011060800506
    OPTM_M_SetDispMaskLayer(HAL_DISP_CHANNEL_DHD, HI_TRUE);
    OPTM_M_SetDispMaskLayer(HAL_DISP_CHANNEL_DSD, HI_TRUE);

    msleep(50);
    //step1 stop display
    DISP_SetEnable(enDisp, HI_FALSE);

    //set disp disenable
    HAL_DISP_SetIntfEnable(HAL_DISP_CHANNEL_DHD, HI_FALSE);
    HAL_DISP_SetIntfEnable(HAL_DISP_CHANNEL_DSD, HI_FALSE);
    //step2 set new display format
    pOptmDisp->OptmDispAttr.enFmt = enEncFmt;
    DISP_LocSetTVFmt(enDisp);

    //step3 suspend
    g_VoSuspend   = HI_TRUE;

    msleep(50);

    VO_SaveVXD(HI_UNF_VO_HD0);
    VO_SaveVXD(HI_UNF_VO_SD0);
    //HI_FATAL_VO("VO suspend OK.\n");

    /* save GFX registers */
    OPTM_GFX_SaveVXD();
    //HI_FATAL_VO("GFX suspend OK.\n");

    bDispSuspendState = g_DispSuspend;
    g_DispSuspend = HI_TRUE;

    /* save HD DISP registers */
    DISP_SaveDXD(HI_UNF_DISP_HD0);
    /* save SD DISP registers */
    DISP_SaveDXD(HI_UNF_DISP_SD0);
    /* save public registers */
    DISP_SaveCommon();
    //HI_FATAL_VO("DISP suspend OK.\n");

    //step4 restore
    /* restore public registers */
    DISP_RestoreCommon();
    /* restore HD DISP registers */
    DISP_RestoreDXD(HI_UNF_DISP_HD0, HI_FALSE);
    DISP_RestoreDXD(HI_UNF_DISP_SD0, HI_FALSE);
    //HI_FATAL_VO("DISP resume OK.\n");


    /* restore GFX registers */
    OPTM_GFX_RestoreVXD();
    //HI_FATAL_VO("GFX resume OK.\n");

    //add for DTS2011060800506
    OPTM_M_SetDispMaskLayer(HAL_DISP_CHANNEL_DHD, HI_FALSE);
    OPTM_M_SetDispMaskLayer(HAL_DISP_CHANNEL_DSD, HI_FALSE);

    HAL_DISP_SetIntfEnable(HAL_DISP_CHANNEL_DSD, SDEnableFlag);
    // Move  DISP_SetEnable here, other wise VHD wbc1 will die loop, and mosaic can't work anymore.
    // The reason for that is not clear, caobin will analyse.
    //setp5 resume display state and suspend state
    msleep(400);
    DISP_SetEnable(enDisp, bDispState);
    //restore disp enable flag for not same source stream
    HAL_DISP_SetIntfEnable(HAL_DISP_CHANNEL_DHD, HDEnableFlag);

    g_DispSuspend = bDispSuspendState;

    VO_RestoreVXD(HI_UNF_VO_HD0);
    VO_RestoreVXD(HI_UNF_VO_SD0);
    //HI_FATAL_VO("VO resume OK.\n");

    g_VoSuspend   = bVoSuspendState;
#else
    if (pOptmDisp->bEnable == HI_TRUE)
    {
        pOptmDisp->unUpFlag.Bits.Fmt = 0;
        pOptmDisp->OptmDispAttr.enFmt = enEncFmt;
        pOptmDisp->u32ChangeTimingStep = 3;

        pOptmDisp->unUpFlag.Bits.Fmt = 1;

        /* in isogeny-display mode, in order to guarantee the function of trigger,
           we need to set bound target DISPs at the same time */
        if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
        {
            OPTM_DISP_S *pDstDisp;

            /* get valid handle of DISP */
            D_DISP_GET_HANDLE(pOptmDisp->enDstDisp, pDstDisp);
            pDstDisp->unUpFlag.Bits.Fmt = 0;
            pDstDisp->u32ChangeTimingStep = 3;

            pDstDisp->unUpFlag.Bits.Fmt = 1;
        }

        //DEBUG_PRINTK("Tv wait set\n");
        msleep(100);
    }
    else
    {
        pOptmDisp->OptmDispAttr.enFmt = enEncFmt;
        DISP_LocSetTVFmt(enDisp);
        //DEBUG_PRINTK("Tv set\n");
    }
#endif

#ifdef  HI_DISP_MACROVISION_SUPPORT
#ifndef HI_VDP_ONLY_SD_SUPPORT
    if (HI_UNF_DISP_SD0 == enDisp)
    {
        OPTM_M_SetDateMcvn(pOptmDisp->s32DateCh, pOptmDisp->OptmDispAttr.enMcvn);
    }
#else
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        OPTM_M_SetDateMcvn(pOptmDisp->s32DateCh, pOptmDisp->OptmDispAttr.enMcvn);
    }
#endif
#endif

#ifdef HI_DISP_CGMS_SUPPORT
    /* Set CGMS data */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if(pOptmDisp->OptmDispAttr.stCgmsCfgA.bEnable)
    {
        //DEBUG_PRINTK("#%s, %d\n",__FUNCTION__, __LINE__);

        /* set CGMS(A) by configuration from OptmDispAttr */
        nRet = DISP_SetCGMS(enDisp, &(pOptmDisp->OptmDispAttr.stCgmsCfgA) );

        if(HI_SUCCESS != nRet)
        {
            HI_INFO_DISP("Set CGMS failed!\n");
        }
    }

    if(pOptmDisp->OptmDispAttr.stCgmsCfgB.bEnable && HI_UNF_DISP_HD0 == enDisp)
    {
        /* set CGMS(B) by configuration from OptmDispAttr */
        nRet = DISP_SetCGMS(enDisp, &(pOptmDisp->OptmDispAttr.stCgmsCfgB) );

        if(HI_SUCCESS != nRet)
        {
            HI_INFO_DISP("Set CGMS failed!\n");
        }
    }
#endif

    return HI_SUCCESS;
}

HI_S32  DISP_GetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penEncFmt)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(penEncFmt);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (HI_UNF_DISP_INTF_TYPE_LCD == pOptmDisp->OptmDispAttr.enIntfType)
    {
        HI_ERR_DISP("DISP: LCD has no encfmt.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
    else
    {
        *penEncFmt = pOptmDisp->OptmDispAttr.enFmt;
    }

    return HI_SUCCESS;
}

#ifdef HI_DISP_LCD_SUPPORT
HI_S32  DISP_GetLcdFormat(HI_UNF_DISP_E enDisp, OPTM_DISP_LCD_FMT_E *penEncFmt)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(penEncFmt);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (HI_UNF_DISP_INTF_TYPE_TV == pOptmDisp->OptmDispAttr.enIntfType)
    {
        HI_ERR_DISP("DISP: TV has no encfmt.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
    else
    {
        *penEncFmt = pOptmDisp->OptmDispAttr.enLcdFmt;
    }


    return HI_SUCCESS;
}

static OPTM_M_D_LCD_FMT_E DISP_TransferLcdFmt(OPTM_DISP_LCD_FMT_E enLcdFmt)
{
    OPTM_M_D_LCD_FMT_E enMFmt;

    switch (enLcdFmt)
    {
        case OPTM_DISP_LCD_FMT_861D_640X480_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_861D_640X480_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_800X600_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_800X600_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1024X768_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1024X768_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1280X1024_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1280X1024_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1366X768_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1366X768_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1440X900_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1440X900_60HZ_RB:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1440X900_60HZ_RB;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1600X1200_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1600X1200_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1920X1200_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1920X1200_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_2048X1152_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_2048X1152_60HZ;
            break;
        }

        case OPTM_DISP_LCD_FMT_VESA_1280X720_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1280X720_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1280X800_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1280X800_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1600X900_60HZ_RB:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1600X900_60HZ_RB;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1920X1080_60HZ:
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1920X1080_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1400X1050_60HZ:           //Rowe
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1400X1050_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1680X1050_60HZ:           //Rowe
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1680X1050_60HZ;
            break;
        }
        case OPTM_DISP_LCD_FMT_VESA_1360X768_60HZ:           //Rowe
        {
            enMFmt = OPTM_M_D_LCD_FMT_VESA_1360X768_60HZ;
            break;
        }

        default:
        {
            enMFmt = OPTM_M_D_LCD_FMT_BUTT;
        }
    }

    return enMFmt;
}


HI_VOID DISP_LocSetLcdPara(OPTM_DISP_S *pOptmDisp)
{
    OPTM_M_D_LCD_FMT_E enMFmt = OPTM_M_D_LCD_FMT_BUTT;
    /* OPTM_M_DISP_HDMI_S stHdmiIntf;  */

    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, HI_FALSE);

    enMFmt = DISP_TransferLcdFmt(pOptmDisp->OptmDispAttr.enLcdFmt);
    OPTM_M_SetLcdDefaultPara(pOptmDisp->enDispHalId, enMFmt);
/*
    stHdmiIntf.u32HsyncNegative = 1;
    stHdmiIntf.u32VsyncNegative = 1;
    stHdmiIntf.u32DvNegative    = 0;

    stHdmiIntf.s32DataFmt    = 1;
    stHdmiIntf.s32CompNumber = 2;
    stHdmiIntf.s32SyncType   = 1;
    OPTM_M_SetDispHdmiIntf(pOptmDisp->enDispHalId, &stHdmiIntf);
*/

    OPTM_M_SetDispHdmiForLcd(pOptmDisp->enDispHalId, enMFmt);

    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, pOptmDisp->bEnable);

    return;
}

HI_S32 DISP_GetLcdDefaultPara(OPTM_DISP_LCD_FMT_E enLcdFmt, HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    OPTM_M_D_LCD_FMT_E enMFmt = OPTM_M_D_LCD_FMT_BUTT;
    HI_S32 nRet;

    if (   (enLcdFmt >= OPTM_DISP_LCD_FMT_BUTT)
        || (pstLcdPara == HI_NULL) )
    {
        HI_ERR_DISP("DISP: not support LCD fmt now.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    enMFmt = DISP_TransferLcdFmt(enLcdFmt);
    nRet = OPTM_M_GetLcdDefaultPara(enMFmt, pstLcdPara);

    return nRet;
}

HI_S32 DISP_SetLcdDefaultPara(HI_UNF_DISP_E enDisp, OPTM_DISP_LCD_FMT_E enLcdFmt)
{
    OPTM_DISP_S *pOptmDisp;
#if 0
#ifndef MINI_SYS_SURPORT
    HI_UNF_VO_DEV_MODE_E enDevMode;
    HI_S32 bufflag = -1;
#endif
#endif

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (   (enLcdFmt >= OPTM_DISP_LCD_FMT_BUTT)
        || (enDisp != HI_UNF_DISP_HD0) )
    {
        HI_ERR_DISP("DISP: SD does not support LCD fmt now.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    if (pOptmDisp->OptmDispAttr.enLcdFmt == enLcdFmt)
    {
        return HI_SUCCESS;
    }

#if 0
#ifndef MINI_SYS_SURPORT
    // if VGA fmt is bigger than 1920x1080, we should check vo mosaic buffer size which
    // maybe result in memory overflow.
    if (    (enLcdFmt == OPTM_DISP_LCD_FMT_VESA_1600X1200_60HZ)
         || (enLcdFmt == OPTM_DISP_LCD_FMT_VESA_1920X1200_60HZ)
         || (enLcdFmt == OPTM_DISP_LCD_FMT_VESA_2048X1152_60HZ)
       )
    {
        nRet = VO_GetDevMode(&enDevMode);

        if( (HI_SUCCESS == nRet) && (HI_UNF_VO_DEV_MODE_MOSAIC == enDevMode))
        {
            bufflag = VO_GetMosaicBufSizeFlag();
        }

        // if vo buffer is 1920x1080, can not set bigger fmt.
        if (0 == bufflag)
        {
            HI_ERR_DISP("DISP: VO mosaic buffer is 1920x1080, can't set this LCD format.\n");
            return HI_ERR_DISP_INVALID_OPT;
        }
    }
#endif
#endif

    if (pOptmDisp->bEnable == HI_TRUE)
    {
        pOptmDisp->unUpFlag.Bits.Lcd = 0;
        pOptmDisp->OptmDispAttr.enLcdFmt = enLcdFmt;
        pOptmDisp->u32ChangeTimingStep = 3;

        pOptmDisp->unUpFlag.Bits.Lcd = 1;
        //DEBUG_PRINTK("lcd wait set = %d\n", enLcdFmt);

        msleep(100);
    }
    else
    {
        pOptmDisp->OptmDispAttr.enLcdFmt = enLcdFmt;
        DISP_LocSetLcdPara(pOptmDisp);
        //DEBUG_PRINTK("lcd set\n");
    }

    return HI_SUCCESS;
}

HI_S32 DISP_SetLcdPara(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    OPTM_DISP_S *pOptmDisp;
   // HI_CHIP_TYPE_E enChip;
    //HI_CHIP_VERSION_E enChipVersion;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstLcdPara);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (HI_UNF_DISP_INTF_TYPE_TV == pOptmDisp->OptmDispAttr.enIntfType)
    {
        HI_ERR_DISP("DISP: TV can't set LCDattr.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }


    memcpy(&(pOptmDisp->OptmDispAttr.stLcd), pstLcdPara, sizeof(HI_UNF_DISP_LCD_PARA_S));

    /* modification */
    pOptmDisp->OptmDispAttr.stLcd.ClockReversal = HI_FALSE;                       /**< whether the clock will reverse */
    pOptmDisp->OptmDispAttr.stLcd.DataWidth     = HI_UNF_DISP_LCD_DATA_WIDTH24;   /**< data bit width */
    pOptmDisp->OptmDispAttr.stLcd.ItfFormat     = HI_UNF_DISP_LCD_DATA_FMT_RGB888;/**< data format */
    pOptmDisp->OptmDispAttr.stLcd.DitherEnable  = HI_FALSE;                       /**< whether to enable Dither*/

    pOptmDisp->OptmDispAttr.enFmt = HI_UNF_ENC_FMT_VESA_CUSTOMER_DEFINE;  // set LcdFmt type as customer define
    pOptmDisp->OptmDispAttr.enLcdFmt = OPTM_DISP_LCD_FMT_CUSTOMER_DEFINE;
    /* DEBUG_PRINTK("DISP_SetLcdPara, w=%d, h=%d\n", pOptmDisp->OptmDispAttr.stLcd.HACT, pOptmDisp->OptmDispAttr.stLcd.VACT); */
    /* pOptmDisp->unUpFlag.Bits.Lcd = 1; */
    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, HI_FALSE);

    OPTM_M_SetDispLcdPara(pOptmDisp->enDispHalId, &(pOptmDisp->OptmDispAttr.stLcd));

    OPTM_M_SetDispEnable(pOptmDisp->enDispHalId, pOptmDisp->bEnable);

    return HI_SUCCESS;
}

HI_S32 DISP_GetLcdPara(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstLcdPara);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (HI_UNF_DISP_INTF_TYPE_TV == pOptmDisp->OptmDispAttr.enIntfType)
    {
        HI_ERR_DISP("DISP: TV has no LCDattr.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    memcpy(pstLcdPara, &(pOptmDisp->OptmDispAttr.stLcd), sizeof(HI_UNF_DISP_LCD_PARA_S));

    return HI_SUCCESS;
}
#endif

HI_S32 DISP_GetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enDispLayer, HI_U32 *pu32Order)
{
    OPTM_DISP_S *pOptmDisp;
    HI_S32 Order;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pu32Order);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    Order = Disp_GetLayerOrder(enDispLayer, pOptmDisp->OptmDispAttr.DispLayerOrder, pOptmDisp->OptmDispAttr.u32LayerNum);
    if (Order < 0)
    {
        HI_ERR_DISP("DISP: Not find layer= %d.\n", (HI_S32)enDispLayer);
        return HI_FAILURE;
    }

    *pu32Order = Order;

    return HI_SUCCESS;
}

HI_S32 DISP_SetLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enDispLayer, HI_LAYER_ZORDER_E enZFlag)
{
    OPTM_DISP_S *pOptmDisp;
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;
    OPTM_GFX_MODE_EN enGfxMode;
    HI_S32 Order;

    D_DISP_CHECK_DEVICE_OPEN();

    if (enZFlag >= HI_LAYER_ZORDER_BUTT)
    {
        HI_ERR_DISP("DISP: invalid zorder parameters!\n");
        return HI_ERR_DISP_INVALID_PARA;
    }
    if (enDispLayer >= HI_UNF_DISP_LAYER_BUTT)
    {
        HI_ERR_DISP("DISP: invalid zorder parameters!\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    /* in GFX WBC mode, the order of layers cannot be changed */
    if (HI_UNF_DISP_LAYER_ATTACH_OSD_0 == enDispLayer)
    {
        if (HI_SUCCESS == OPTM_GfxGetWorkMode(&enGfxMode))
        {
            if (OPTM_GFX_MODE_HD_WBC == enGfxMode)
            {
                HI_ERR_DISP("DISP: invalid zorder parameters!\n");
                return HI_ERR_DISP_INVALID_PARA;
            }
        }
    }

    /* query whether layer exists or not */
    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    Order = Disp_GetLayerOrder(enDispLayer, pOptmDispAttr->DispLayerOrder, pOptmDispAttr->u32LayerNum);
    if (Order < 0)
    {
        HI_ERR_DISP("DISP Not find layer= %d!\n", (HI_S32)enDispLayer);
        return HI_FAILURE;
    }

    /* set new order */
    Disp_SetLayerNewOrder(Order, enZFlag, pOptmDispAttr->u32LayerNum, pOptmDispAttr->DispLayerOrder);

    /* set order of superposition */
    pOptmDisp->unUpFlag.Bits.Order = 1;

    /* in GFX write-back mode, while setting G0, we need to set superposition priority for G1 */
    if (HI_UNF_DISP_LAYER_OSD_0 == enDispLayer)
    {
        if (HI_SUCCESS == OPTM_GfxGetWorkMode(&enGfxMode))
        {
            if (OPTM_GFX_MODE_HD_WBC == enGfxMode)
            {
                //DISP_SetLayerZorder(HI_UNF_DISP_SD0, HI_UNF_DISP_LAYER_ATTACH_OSD_0, enZFlag);

                enDisp      = HI_UNF_DISP_SD0;
                enDispLayer = HI_UNF_DISP_LAYER_ATTACH_OSD_0;

                /* get valid handle of DISP */
                D_DISP_GET_HANDLE(enDisp, pOptmDisp);

                /* query whether layer exists or not */
                pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
                Order = Disp_GetLayerOrder(enDispLayer, pOptmDispAttr->DispLayerOrder, pOptmDispAttr->u32LayerNum);
                if (Order < 0)
                {
                    HI_ERR_DISP("DISP Not find layer= %d!\n", (HI_S32)enDispLayer);
                    return HI_FAILURE;
                }

                /* set new order */
                Disp_SetLayerNewOrder(Order, enZFlag, pOptmDispAttr->u32LayerNum, pOptmDispAttr->DispLayerOrder);

                /* set order of superposition */
                pOptmDisp->unUpFlag.Bits.Order = 1;

            }
        }
    }
    else if (HI_UNF_DISP_LAYER_VIDEO_0 == enDispLayer)
    {
        OPTM_DISP_S *pOptmDisp2;
        HI_OPTM_DISP_ATTR_S *pOptmDisp2Attr;

        /* in the scene of isogeny-display, it is a need to adjust the video layer at the same time */
        if (HI_UNF_DISP_BUTT != pOptmDisp->enSrcDisp)
        {
            D_DISP_GET_HANDLE(pOptmDisp->enSrcDisp, pOptmDisp2);
        }
        else if (HI_UNF_DISP_BUTT != pOptmDisp->enDstDisp)
        {
            D_DISP_GET_HANDLE(pOptmDisp->enDstDisp, pOptmDisp2);
        }
        else
        {
            return HI_SUCCESS;
        }

        /* query whether layer exists or not */
        pOptmDisp2Attr = &(pOptmDisp2->OptmDispAttr);
        Order = Disp_GetLayerOrder(enDispLayer, pOptmDisp2Attr->DispLayerOrder, pOptmDisp2Attr->u32LayerNum);
        if (Order < 0)
        {
            HI_ERR_DISP("DISP Not find attach layer= %d!\n", (HI_S32)enDispLayer);
            return HI_FAILURE;
        }

        /* set new order */
        Disp_SetLayerNewOrder(Order, enZFlag, pOptmDisp2Attr->u32LayerNum, pOptmDisp2Attr->DispLayerOrder);

        /* set order of superposition */
        pOptmDisp2->unUpFlag.Bits.Order = 1;
    }

    return HI_SUCCESS;
}

HI_S32 DISP_SetSubLayerZorder(HI_UNF_DISP_E enDisp, HI_UNF_DISP_LAYER_E enDispLayer,
                              HI_S32 s32SubLayerNumber, HI_S32 *ps32Order)
{
    OPTM_DISP_S *pOptmDisp;
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;
    OPTM_DISP_SUB_LAYER_S *pstSubLayer;
    HI_S32 Order, i;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    /* query whether layer exists or not */
    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    Order = Disp_GetLayerOrder(enDispLayer, pOptmDispAttr->DispLayerOrder, pOptmDispAttr->u32LayerNum);
    if (Order < 0)
    {
        HI_ERR_DISP("DISP Not find layer= %d!\n", (HI_S32)enDispLayer);
        return HI_FAILURE;
    }

    /* set new order */
    pstSubLayer = &(pOptmDisp->SubLayer[(HI_S32)enDispLayer]);

    for(i=0; i<s32SubLayerNumber; i++)
    {
        pstSubLayer->HalLayer[i] = (HAL_DISP_LAYER_E)(ps32Order[i]);
    }
    pstSubLayer->HalLayerNum = s32SubLayerNumber;

    /* set order of superposition */
    pOptmDisp->unUpFlag.Bits.Order = 1;

    return HI_SUCCESS;
}


HI_S32  DISP_SetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstBgColor);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDisp->OptmDispAttr.stBgc = *pstBgColor;
    pOptmDisp->unUpFlag.Bits.Bgc = 1;

#ifndef HI_VDP_ONLY_SD_SUPPORT
    /* in isogeny-display mode, the bound interfaces should be set the same background color */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enSrcDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.stBgc = *pstBgColor;
        pOptmDisp->unUpFlag.Bits.Bgc = 1;
    }

    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enDstDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.stBgc = *pstBgColor;
        pOptmDisp->unUpFlag.Bits.Bgc = 1;
    }
#endif
    return HI_SUCCESS;
}

HI_S32  DISP_GetBgColor(HI_UNF_DISP_E enDisp, HI_UNF_DISP_BG_COLOR_S *pstBgColor)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstBgColor);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *pstBgColor = pOptmDisp->OptmDispAttr.stBgc;

    return HI_SUCCESS;
}

HI_S32  DISP_SetBright(HI_UNF_DISP_E enDisp, HI_U32 CscValue)
{
    OPTM_DISP_S *pOptmDisp;
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISPCheckCscValue(CscValue);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    if(CscValue == pOptmDispAttr->u32Bright)
    {
        return HI_SUCCESS;
    }

    pOptmDispAttr->u32Bright = CscValue;
    pOptmDisp->unUpFlag.Bits.Bright = 1;

    /* in isogeny-display mode, the bound interfaces should be set the same parameters */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enSrcDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Bright = CscValue;
        pOptmDisp->unUpFlag.Bits.Bright = 1;
    }

    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enDstDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Bright = CscValue;
        pOptmDisp->unUpFlag.Bits.Bright = 1;
    }

    return HI_SUCCESS;
}

HI_S32  DISP_GetBright(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pCscValue);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *pCscValue = pOptmDisp->OptmDispAttr.u32Bright;

    return HI_SUCCESS;
}

HI_S32  DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 CscValue)
{
    OPTM_DISP_S *pOptmDisp;
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISPCheckCscValue(CscValue);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    if(CscValue == pOptmDispAttr->u32Contrast)
    {
        return HI_SUCCESS;
    }

    pOptmDispAttr->u32Contrast = CscValue;
    pOptmDisp->unUpFlag.Bits.Contrast = 1;

    /* in isogeny-display mode, the bound interfaces should be set the same parameters */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enSrcDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Contrast = CscValue;
        pOptmDisp->unUpFlag.Bits.Contrast = 1;
    }

    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enDstDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Contrast = CscValue;
        pOptmDisp->unUpFlag.Bits.Contrast = 1;
    }

    return HI_SUCCESS;
}

HI_S32  DISP_GetContrast(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pCscValue);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *pCscValue = pOptmDisp->OptmDispAttr.u32Contrast;

    return HI_SUCCESS;
}

HI_S32  DISP_SetColorTemperature(HI_UNF_DISP_E enDisp, disp_colort_s *colortempvalue)
{
    OPTM_DISP_S *pOptmDisp;
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISPCheckColorTempValue(colortempvalue->u32Kr);
    D_DISPCheckColorTempValue(colortempvalue->u32Kg);
    D_DISPCheckColorTempValue(colortempvalue->u32Kb);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    if((colortempvalue->u32Kr == pOptmDispAttr->u32Kr)
        && (colortempvalue->u32Kg == pOptmDispAttr->u32Kg)
        && (colortempvalue->u32Kb == pOptmDispAttr->u32Kb))
    {
        return HI_SUCCESS;
    }

    pOptmDispAttr->u32Kr= colortempvalue->u32Kr;
    pOptmDispAttr->u32Kg= colortempvalue->u32Kg;
    pOptmDispAttr->u32Kb= colortempvalue->u32Kb;

    pOptmDisp->unUpFlag.Bits.ColorTemp = 1;

    /* in isogeny-display mode, the bound interfaces should be set the same parameters */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enSrcDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Kr = colortempvalue->u32Kr;
        pOptmDisp->OptmDispAttr.u32Kg = colortempvalue->u32Kg;
        pOptmDisp->OptmDispAttr.u32Kb = colortempvalue->u32Kb;
        pOptmDisp->unUpFlag.Bits.ColorTemp = 1;
    }

    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enDstDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Kr = colortempvalue->u32Kr;
        pOptmDisp->OptmDispAttr.u32Kg = colortempvalue->u32Kg;
        pOptmDisp->OptmDispAttr.u32Kb = colortempvalue->u32Kb;
        pOptmDisp->unUpFlag.Bits.ColorTemp = 1;
    }

    return HI_SUCCESS;
}

HI_S32  DISP_GetColorTemperature(HI_UNF_DISP_E enDisp, disp_colort_s *colortempvalue)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    colortempvalue->u32Kr= pOptmDisp->OptmDispAttr.u32Kr;
    colortempvalue->u32Kg= pOptmDisp->OptmDispAttr.u32Kg;
    colortempvalue->u32Kb= pOptmDisp->OptmDispAttr.u32Kb;

    return HI_SUCCESS;
}


HI_S32  DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 CscValue)
{
    OPTM_DISP_S *pOptmDisp;
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISPCheckCscValue(CscValue);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    if(CscValue == pOptmDispAttr->u32Saturation)
    {
        return HI_SUCCESS;
    }

    pOptmDispAttr->u32Saturation = CscValue;
    pOptmDisp->unUpFlag.Bits.Saturation = 1;

    /* in isogeny-display mode, the bound interfaces should be set the same parameters */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enSrcDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Saturation = CscValue;
        pOptmDisp->unUpFlag.Bits.Saturation = 1;
    }

    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enDstDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Saturation = CscValue;
        pOptmDisp->unUpFlag.Bits.Saturation = 1;
    }


    return HI_SUCCESS;
}

HI_S32  DISP_GetSaturation(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pCscValue);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *pCscValue = pOptmDisp->OptmDispAttr.u32Saturation;

    return HI_SUCCESS;
}

HI_S32  DISP_SetHue(HI_UNF_DISP_E enDisp, HI_U32 CscValue)
{
    OPTM_DISP_S *pOptmDisp;
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISPCheckCscValue(CscValue);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    if(CscValue == pOptmDispAttr->u32Hue)
    {
        return HI_SUCCESS;
    }

    pOptmDispAttr->u32Hue = CscValue;
    pOptmDisp->unUpFlag.Bits.Hue = 1;

    /* in isogeny-display mode, the bound interfaces should be set the same parameters */
    if (pOptmDisp->enSrcDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enSrcDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Hue = CscValue;
        pOptmDisp->unUpFlag.Bits.Hue = 1;
    }

    if (pOptmDisp->enDstDisp != HI_UNF_DISP_BUTT)
    {
        /* get valid handle of DISP */
        D_DISP_GET_HANDLE(pOptmDisp->enDstDisp, pOptmDisp);

        pOptmDisp->OptmDispAttr.u32Hue = CscValue;
        pOptmDisp->unUpFlag.Bits.Hue = 1;
    }


    return HI_SUCCESS;
}

HI_S32  DISP_GetHue(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pCscValue);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *pCscValue = pOptmDisp->OptmDispAttr.u32Hue;

    return HI_SUCCESS;
}

#ifdef HI_DISP_ACC_SUPPORT
HI_S32  DISP_SetAccEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
    OPTM_DISP_S *pOptmDisp;
    HI_OPTM_DISP_ATTR_S *pOptmDispAttr;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (enDisp != HI_UNF_DISP_HD0)
    {
        HI_ERR_DISP("enDisp is un-support acc.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    pOptmDispAttr = &(pOptmDisp->OptmDispAttr);
    if(bEnable == pOptmDispAttr->bAccEnable)
    {
        return HI_SUCCESS;
    }

    pOptmDispAttr->bAccEnable = bEnable;
    pOptmDisp->unUpFlag.Bits.Acc = 1;

    return HI_SUCCESS;
}

HI_S32  DISP_GetAccEnable(HI_UNF_DISP_E enDisp, HI_BOOL *pbEnable)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pbEnable);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *pbEnable = pOptmDisp->OptmDispAttr.bAccEnable;

    return HI_SUCCESS;
}
#endif

HI_S32 DISP_SetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    OPTM_DISP_S *pOptmDisp;
    HI_UNF_DISP_INTERFACE_S stDac;
    HI_S32 i;
    HI_S32 nRet;
    HI_BOOL bDlyFlag = HI_FALSE;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstDacMode);

    /*TODO*/
    nRet = OPTM_M_CheckDacMode(&(pstDacMode->enDacMode[0]));
    if (nRet != 0)
    {
        HI_ERR_DISP("DISP invalid dacmode!\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

#ifdef HI_DISP_SCART_SUPPORT
    OPTM_M_SetDateScartEn(0, pstDacMode->bScartEnable);
#endif

    /*OPTM_M_SetBt656En(0, pstDacMode->bBt656Enable);*/
    /*OPTM_M_SetBt1120En(0, pstDacMode->bBt1120Enable);*/
    D_DISP_GET_HANDLE(HI_UNF_DISP_HD0, pOptmDisp);

    /* set DAC connection relationship */
    /* OPTM_M_SetDacMode(pstDacMode->enDacMode);*/
    stDac = *pstDacMode;
    if(   (pOptmDisp->OptmDispAttr.enIntfType == HI_UNF_DISP_INTF_TYPE_TV)
       && (pOptmDisp->OptmDispAttr.enFmt >= HI_UNF_ENC_FMT_PAL) )
    {
        /* in the way of 480I/576I HD output, switch DAC connection inward and screen outward */
        for(i=0; i<MAX_DAC_NUM; i++)
        {
            if (stDac.enDacMode[i] == HI_UNF_DISP_DAC_MODE_HD_Y)
            {
                stDac.enDacMode[i] = HI_UNF_DISP_DAC_MODE_Y;
                bDlyFlag = HI_TRUE;
            }
            else if (stDac.enDacMode[i] == HI_UNF_DISP_DAC_MODE_HD_PB)
            {
                /* HD_PB-->SD_PR, why??? */
                stDac.enDacMode[i] = HI_UNF_DISP_DAC_MODE_PB;
            }
            else if (stDac.enDacMode[i] == HI_UNF_DISP_DAC_MODE_HD_PR)
            {
                /* HD_PR-->SD_PB, why??? */
                stDac.enDacMode[i] = HI_UNF_DISP_DAC_MODE_PR;
            }
        }
    }

    for(i=0; i<MAX_DAC_NUM; i++)
    {
        /* set DAC bright-color delay as zero */
        OPTM_HAL_SetDacDelay(i, 0);
    }

    if (    (pOptmDisp->OptmDispAttr.enIntfType == HI_UNF_DISP_INTF_TYPE_TV)
         && (pOptmDisp->OptmDispAttr.enFmt >= HI_UNF_ENC_FMT_NTSC)
         && (pOptmDisp->OptmDispAttr.enFmt <= HI_UNF_ENC_FMT_SECAM_COS))
    {
        /* In the way of 480I outputting, set DAC bright-color delay as zero */
        for(i=0; i<MAX_DAC_NUM; i++)
        {
            if (stDac.enDacMode[i] == HI_UNF_DISP_DAC_MODE_Y)
            {
               // OPTM_HAL_SetDacDelay(i, 2);
            }
        }
    }

/*
DEBUG_PRINTK("%d, %d, %d, %d, %d, %d\n",
               stDac.enDacMode[0],
               stDac.enDacMode[1],
               stDac.enDacMode[2],
               stDac.enDacMode[3],
               stDac.enDacMode[4],
               stDac.enDacMode[5]);
*/
    OPTM_M_SetDacMode(&(stDac.enDacMode[0]));

    /* get the validity of pstDacMode */
    g_stDac = *pstDacMode;

    return HI_SUCCESS;
}


HI_S32 DISP_GetDacMode(HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstDacMode);

    *pstDacMode = g_stDac;

    return HI_SUCCESS;
}


HI_S32 DISP_SetHdmiIntf(HI_UNF_DISP_E enDisp, DISP_HDMI_SETTING_S *pstCfg)
{
    OPTM_DISP_S *pOptmDisp;
    OPTM_M_DISP_HDMI_S stHdmiIntf;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstCfg);
    memset(&stHdmiIntf,0,sizeof(OPTM_M_DISP_HDMI_S));

    if(enDisp != HI_UNF_DISP_HD0)
    {
        HI_ERR_DISP("Only HD0 DISP support HDMI!\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);


    stHdmiIntf.u32DvNegative    = (pstCfg->bDvNegative == HI_TRUE);
    stHdmiIntf.u32HsyncNegative = (pstCfg->bHsyncNegative == HI_TRUE);
    stHdmiIntf.u32VsyncNegative = (pstCfg->bVsyncNegative == HI_TRUE);
    stHdmiIntf.s32CompNumber    = pstCfg->s32CompNumber;
    stHdmiIntf.s32SyncType      = pstCfg->s32SyncType;
    stHdmiIntf.s32DataFmt       = pstCfg->s32DataFmt;


    if (stHdmiIntf.s32SyncType == 1)
    {
        HAL_DISP_SetIntfSyncMode(pOptmDisp->enDispHalId, HAL_DISP_SYNC_MODE_SIGNAL);
    }
    else
    {
        HAL_DISP_SetIntfSyncMode(pOptmDisp->enDispHalId, HAL_DISP_SYNC_MODE_TIMING);
    }

    if (stHdmiIntf.s32CompNumber == 0)
    {
        HAL_DISP_SetIntfBitWidth(pOptmDisp->enDispHalId, HAL_DISP_BIT_WIDTH_1);
    }
    else if (stHdmiIntf.s32CompNumber == 1)
    {
        HAL_DISP_SetIntfBitWidth(pOptmDisp->enDispHalId, HAL_DISP_BIT_WIDTH_2);
    }
    else
    {
        HAL_DISP_SetIntfBitWidth(pOptmDisp->enDispHalId, HAL_DISP_BIT_WIDTH_3);
    }


    OPTM_M_SetDispHdmiIntf(pOptmDisp->enDispHalId, &stHdmiIntf);

    return HI_SUCCESS;
}

HI_S32 DISP_GetHdmiIntf(HI_UNF_DISP_E enDisp, DISP_HDMI_SETTING_S *pstCfg)
{
    OPTM_DISP_S *pOptmDisp;
    OPTM_M_DISP_HDMI_S stHdmiIntf;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstCfg);

    memset(&stHdmiIntf,0x0,sizeof(OPTM_M_DISP_HDMI_S));

    if(enDisp != HI_UNF_DISP_HD0)
    {
        HI_ERR_DISP("Only HD0 DISP support HDMI!\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    OPTM_M_GetDispHdmiIntf(pOptmDisp->enDispHalId, &stHdmiIntf);

    pstCfg->bDvNegative    = (stHdmiIntf.u32DvNegative    == 0) ? HI_FALSE : HI_TRUE;
    pstCfg->bHsyncNegative = (stHdmiIntf.u32HsyncNegative == 0) ? HI_FALSE : HI_TRUE;
    pstCfg->bVsyncNegative = (stHdmiIntf.u32VsyncNegative == 0) ? HI_FALSE : HI_TRUE;
    pstCfg->s32CompNumber  = stHdmiIntf.s32CompNumber;
    pstCfg->s32SyncType    = stHdmiIntf.s32SyncType;
    pstCfg->s32DataFmt     = stHdmiIntf.s32DataFmt;

    return HI_SUCCESS;
}

#ifdef HI_DISP_TTX_SUPPORT
HI_VOID Disp_TtxLineParse(TTX_DATA_BLOCK_S *pTtxBlock, HI_U8 LineNum)
{
    if (LineNum & 0x20)
    {

        switch (LineNum & 0x1f)
        {
            case 6:
                pTtxBlock->TtxDataExtLine = pTtxBlock->TtxDataExtLine | 0x4;
                break;

            case 7:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00010000;
                break;

            case 8:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00020000;
                break;
            case 9:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00040000;
                break;
            case 10:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00080000;
                break;
            case 11:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00100000;
                break;
            case 12:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00200000;
                break;
            case 13:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00400000;
                break;
            case 14:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00800000;
                break;
            case 15:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x01000000;
                break;
            case 16:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x02000000;
                break;
            case 17:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x04000000;
                break;
            case 18:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x08000000;
                break;
            case 19:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x10000000;
                break;
            case 20:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x20000000;
                break;
            case 21:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x40000000;
                break;
            case 22:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x80000000;
                break;
            default :
                break;

        }
    }
    else
    {
        switch (LineNum & 0x1f)
        {
            case 5:
                pTtxBlock->TtxDataExtLine = pTtxBlock->TtxDataExtLine | 0x1;
                break;

            case 6:
                pTtxBlock->TtxDataExtLine = pTtxBlock->TtxDataExtLine | 0x2;
                break;

            case 7:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000001;
                break;

            case 8:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000002;
                break;
            case 9:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000004;
                break;
            case 10:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000008;
                break;
            case 11:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000010;
                break;
            case 12:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000020;
                break;
            case 13:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000040;
                break;
            case 14:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000080;
                break;
            case 15:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000100;
                break;
            case 16:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000200;
                break;
            case 17:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000400;
                break;
            case 18:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00000800;
                break;
            case 19:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00001000;
                break;
            case 20:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00002000;
                break;
            case 21:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00004000;
                break;
            case 22:
                pTtxBlock->TtxDataLine = pTtxBlock->TtxDataLine | 0x00008000;
                break;
            default :
                break;
        }
    }
    return;
}

HI_VOID Disp_TtxDataParse(HI_U8 *pPesBuf, HI_U32 TtxDataLen)
{
    struct list_head *pList;
    TTX_DATA_BLOCK_S  *pTtxBlock;
    HI_U8 *pu8DstBuf, *pu8SrcBuf;
    HI_U32 i, j,k;

    pList = g_TtxSend.TtxBlockFreeHead.next;
    pTtxBlock = list_entry(pList, TTX_DATA_BLOCK_S, List);

    pTtxBlock->TtxDataLine = 0x0;
    pTtxBlock->TtxDataExtLine = 0x0;

    k=0;
    for (i=0; i<TtxDataLen/46; i++)
    {
        if ((*(pPesBuf + i*TTX_RAW_PACKET_LENGTH) == 0x02)  /*EBG no subtitle data*/
          ||(*(pPesBuf + i*TTX_RAW_PACKET_LENGTH) == 0x03)  /*EBG  subtitle data */
          ||(*(pPesBuf + i*TTX_RAW_PACKET_LENGTH) == 0xc0)  /*Inverted Teletext  */
          ||(*(pPesBuf + i*TTX_RAW_PACKET_LENGTH) == 0xc1)  /*unknow */
          ||(*(pPesBuf + i*TTX_RAW_PACKET_LENGTH) == 0xc3)  /*VPS data*/
           )
        {
            /*memcpy((pTtxBlock->pTtxDataVirtAddr + i*TTX_PACKET_LENGTH),
            pPesBuf + i*TTX_RAW_PACKET_LENGTH), TTX_RAW_PACKET_LENGTH);*/

           // pu8DstBuf = pTtxBlock->pTtxDataVirtAddr + k*TTX_PACKET_LENGTH;

            if( pTtxBlock->TtxPackConut >=39)
                pTtxBlock->TtxPackConut = 39;
            pu8DstBuf = pTtxBlock->pTtxDataVirtAddr + pTtxBlock->TtxPackConut*TTX_PACKET_LENGTH;
            pu8SrcBuf = pPesBuf + i*TTX_RAW_PACKET_LENGTH + 4;

            for(j=0; j<10; j++)
            {
                *pu8DstBuf++ = *pu8SrcBuf++;
                *pu8DstBuf++ = *pu8SrcBuf++;
                *pu8DstBuf++ = *pu8SrcBuf++;
                *pu8DstBuf++ = *pu8SrcBuf++;
                pu8DstBuf   += 12;
            }
            *pu8DstBuf++ = *pu8SrcBuf++;
            *pu8DstBuf++ = *pu8SrcBuf++;
            k++;
            pTtxBlock->TtxPackConut++;
            if( pTtxBlock->TtxPackConut >=39)
                break;
            Disp_TtxLineParse(pTtxBlock, *(pPesBuf + i*46 + 2));
        }
        else
        {
            continue;
        }
    }

    /* check the sending order of graph-text data */
    if ((*(pPesBuf + 3) == 0xE4))
    {
        pTtxBlock->TtxSeqFlag = HI_TRUE;
    }
    else
    {
        pTtxBlock->TtxSeqFlag = HI_FALSE;
    }

   if (pTtxBlock->TtxPackConut >15 )
     {
        pTtxBlock->TtxEndAddr = pTtxBlock->TtxStartAddr + (pTtxBlock->TtxPackConut-1)*TTX_PACKET_LENGTH;

        g_TtxSend.TtxListFlag = HI_TRUE;

    list_move_tail(pList, &g_TtxSend.TtxBlockBusyHead);

        g_TtxSend.TtxListFlag = HI_FALSE;
     }
    return ;
}
#endif

#ifdef HI_DISP_CC_SUPPORT
HI_VOID Disp_VbiDataParse(HI_U8 *pPesBuf, HI_BOOL BothField, HI_UNF_ENC_FMT_E enFmt)
{
    struct list_head  *pList;
    CC_DATA_BLOCK_S   *pCCBlock;
    WSS_DATA_BLOCK_S  *pWSSBlock;

    /* CC data-flag */
    if (pPesBuf[0] == 0xc5)
    {
        pList = g_VbiSend.CcBlockFreeHead.next;
        pCCBlock = list_entry(pList, CC_DATA_BLOCK_S, List);

        if (BothField == HI_TRUE)
        {
            pCCBlock->TopFlag = HI_TRUE;
            pCCBlock->TopData = pPesBuf[4];
            pCCBlock->TopData = pCCBlock->TopData << 8;
            pCCBlock->TopData = pCCBlock->TopData + pPesBuf[3];

            pCCBlock->BottomFlag = HI_TRUE;
            if (enFmt < HI_UNF_ENC_FMT_NTSC)
            {
                pCCBlock->TopLine = 21;
                pCCBlock->BottomLine = 334;
            }
            else
            {
                pCCBlock->TopLine = 21;
                pCCBlock->BottomLine = 284;
            }
            pCCBlock->BottomData = pPesBuf[9];
            pCCBlock->BottomData = pCCBlock->BottomData << 8;
            pCCBlock->BottomData = pCCBlock->BottomData + pPesBuf[8];
        }
        else
        {
            /* top field data */
            if (pPesBuf[2] & 0x20)
            {
                pCCBlock->BottomFlag = HI_FALSE;
                pCCBlock->TopFlag = HI_TRUE;
                if (enFmt < HI_UNF_ENC_FMT_NTSC)
                {
                    pCCBlock->TopLine = 21;

                }
                else
                {
                    pCCBlock->TopLine = 21;
                }
                pCCBlock->TopData = pPesBuf[4];
                pCCBlock->TopData = pCCBlock->TopData << 8;
                pCCBlock->TopData = pCCBlock->TopData + pPesBuf[3];
            }
            else
            {
                pCCBlock->TopFlag = HI_FALSE;
                pCCBlock->BottomFlag = HI_TRUE;
                if (enFmt < HI_UNF_ENC_FMT_NTSC)
                {
                    pCCBlock->BottomLine = 334;

                }
                else
                {
                    pCCBlock->BottomLine = 284;
                }
                pCCBlock->BottomData = pPesBuf[4];
                pCCBlock->BottomData = pCCBlock->BottomData << 8;
                pCCBlock->BottomData = pCCBlock->BottomData + pPesBuf[3];
            }
        }

        g_VbiSend.CcListFlag = HI_TRUE;
        list_move_tail(pList, &g_VbiSend.CcBlockBusyHead);
        g_VbiSend.CcListFlag = HI_FALSE;
    }

    /*WSS data flag*/
    else
    {
        pList = g_VbiSend.WssBlockFreeHead.next;
        pWSSBlock = list_entry(pList, WSS_DATA_BLOCK_S, List);

        pWSSBlock->TopData = pPesBuf[4];
        pWSSBlock->TopData = pWSSBlock->TopData << 8;
        pWSSBlock->TopData = pWSSBlock->TopData + pPesBuf[3];
        g_VbiSend.WssListFlag = HI_TRUE;
        list_move_tail(pList, &g_VbiSend.WssBlockBusyHead);
        g_VbiSend.WssListFlag = HI_FALSE;
    }
    return;
}
#endif

#ifdef HI_DISP_TTX_SUPPORT
HI_S32 DISP_SendTtxData(HI_UNF_DISP_E enDisp, HI_UNF_DISP_TTX_DATA_S *pstTtxData)
{
    OPTM_DISP_S *pOptmDisp;
    HI_U32      TmpIndex=0;
    HI_U32      PesLenLow8=0, PesLenHigh8=0,PesLen=0,TtxDataLen=0;
    HI_BOOL     DataCorrectFlag=HI_TRUE;
    HI_BOOL     SendFlag=HI_FALSE;
    HI_U32    i;
    HI_S32      Ret;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstTtxData);
#ifndef HI_VDP_ONLY_SD_SUPPORT
    if (enDisp != HI_UNF_DISP_SD0)
    {
        HI_ERR_DISP("enDisp is un-support ttx.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
#else
    if (enDisp != HI_UNF_DISP_HD0)
    {
        HI_ERR_DISP("enDisp is un-support ttx.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
#endif

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    /* disp must be open to receive data */
    if (!pOptmDisp->bEnable)
    {
        HI_ERR_DISP("enDisp is not enabled.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    if ((g_TtxSend.TtxPesBufWrite + pstTtxData->u32DataLen) > BUFFER_LEN_16K)
    {
        HI_WARN_DISP("The Ttx Pes buffer is overflow!\n");
    }
    else
    {

#ifdef OPTM_VO_SELF_DEBUG
        memcpy((g_TtxSend.pPesBufVirtAddr+g_TtxSend.TtxPesBufWrite), pstTtxData->pu8DataAddr, pstTtxData->u32DataLen);
#else
        Ret = copy_from_user((g_TtxSend.pPesBufVirtAddr+g_TtxSend.TtxPesBufWrite), (HI_VOID __user *)pstTtxData->pu8DataAddr, pstTtxData->u32DataLen);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_DISP("copy data from user failed.\n");
        }
#endif

        /* move write-pointer to the tail of buffer */
        g_TtxSend.TtxPesBufWrite = g_TtxSend.TtxPesBufWrite + pstTtxData->u32DataLen;
        SendFlag = HI_TRUE;
    }

    while(TmpIndex < g_TtxSend.TtxPesBufWrite)
    {
        if (list_empty(&g_TtxSend.TtxBlockFreeHead))
        {
            HI_WARN_DISP("The Ttx buffer is overflow!\n");

            if (TmpIndex != 0)
            {
                /* copy the data left to the top of the buffer */
                memcpy(g_TtxSend.pPesBufVirtAddr, (g_TtxSend.pPesBufVirtAddr + TmpIndex), g_TtxSend.TtxPesBufWrite - TmpIndex);

                /* move the write-pointer to the tail of the buffer */
                g_TtxSend.TtxPesBufWrite = g_TtxSend.TtxPesBufWrite - TmpIndex;
            }
            break;
        }

        /* the size of data is too little */
        if ((TmpIndex+TTX_PES_MIN_LEN) > g_TtxSend.TtxPesBufWrite)
        {
            HI_WARN_DISP("The Ttx Pes data is not enough!\n");

            if (TmpIndex != 0)
            {
                /* copy the data left to the tail of the buffer */
                memcpy(g_TtxSend.pPesBufVirtAddr, (g_TtxSend.pPesBufVirtAddr + TmpIndex), g_TtxSend.TtxPesBufWrite - TmpIndex);

                /* move the write-pointer to the tail of the buffer*/
                g_TtxSend.TtxPesBufWrite = g_TtxSend.TtxPesBufWrite - TmpIndex;
            }
            break;
        }

        if (0x00 == g_TtxSend.pPesBufVirtAddr[TmpIndex])
        {
            if ((g_TtxSend.pPesBufVirtAddr[TmpIndex+1] == 0x00) && (g_TtxSend.pPesBufVirtAddr[TmpIndex+2] == 0x01) && (g_TtxSend.pPesBufVirtAddr[TmpIndex+3] == 0xbd))
            {
                /* get the PES packet length */
                PesLenHigh8 = g_TtxSend.pPesBufVirtAddr[TmpIndex+4];
                PesLenLow8 = g_TtxSend.pPesBufVirtAddr[TmpIndex+5];
                PesLen = (PesLenHigh8 << 8) + PesLenLow8;

                if (PesLen <= TTX_PES_MAX_LEN)
                {
                    /* In buffer, there is a complete PES packet */
                    if ((g_TtxSend.TtxPesBufWrite - TmpIndex - 6) >= PesLen)
                    {
                        /* query whether it is EBU data */
                        if (((g_TtxSend.pPesBufVirtAddr[TmpIndex+45] >= 0x10) && (g_TtxSend.pPesBufVirtAddr[TmpIndex+45] <= 0x1f))
                          ||((g_TtxSend.pPesBufVirtAddr[TmpIndex+45] >= 0x99) && (g_TtxSend.pPesBufVirtAddr[TmpIndex+45] <= 0x9b))
                           )
                        {
                            TtxDataLen = PesLen - 40;

                            /* check whether each TTX packet is valid or not */
                            DataCorrectFlag = HI_FALSE;

                            for (i=0; i<TtxDataLen/46; i++)
                            {
                                if ((g_TtxSend.pPesBufVirtAddr[TmpIndex+i*46+46] == 0x02)
                                  ||(g_TtxSend.pPesBufVirtAddr[TmpIndex+i*46+46] == 0x03)
                                  ||(g_TtxSend.pPesBufVirtAddr[TmpIndex+i*46+46] == 0xc0)
                                  ||(g_TtxSend.pPesBufVirtAddr[TmpIndex+i*46+46] == 0xc1)
                                  ||(g_TtxSend.pPesBufVirtAddr[TmpIndex+i*46+46] == 0xc3)
                                   )
                                {
                                    DataCorrectFlag = HI_TRUE;
                                    continue;
                                }
                                else if (g_TtxSend.pPesBufVirtAddr[TmpIndex+i*46+46] == 0xff)
                                {
                                    break;
                                }
                            }

                            /* if the data is valid, analyze, copy it and add it to the queue */
                            if ((HI_TRUE == DataCorrectFlag) && (i != 0))
                            {
                                Disp_TtxDataParse((g_TtxSend.pPesBufVirtAddr+TmpIndex+46), TtxDataLen);
                            }

                        }

                        /* TmpIndex, jump current packet */
                        TmpIndex = TmpIndex + PesLen + 6;
                        continue;

                    }
                    else
                    {
                        HI_WARN_DISP("The Ttx Pes Packet is not enough!\n");
                        if (TmpIndex != 0)
                        {
                            /* copy the data left to the top of buffer */
                            memcpy(g_TtxSend.pPesBufVirtAddr, (g_TtxSend.pPesBufVirtAddr + TmpIndex), g_TtxSend.TtxPesBufWrite - TmpIndex);

                            /* move the write-pointer to the tail of buffer */
                            g_TtxSend.TtxPesBufWrite = g_TtxSend.TtxPesBufWrite - TmpIndex;
                        }
                        break;
                    }
                }
                else
                {
                    HI_WARN_DISP("The Ttx Pes length data is error, clear buffer!\n");
                    g_TtxSend.TtxPesBufWrite = 0;
                    break;
                }

            }
        }

        TmpIndex++;
    }

    if (TmpIndex == g_TtxSend.TtxPesBufWrite)
    {
        g_TtxSend.TtxPesBufWrite = 0;
    }

    /* start a sending of TTX data */
    if (HI_FALSE == g_TtxSend.TtxBusyFlag)
    {
        if (g_TtxSend.pTtxBusyList)
        {
            list_add_tail(g_TtxSend.pTtxBusyList, &g_TtxSend.TtxBlockFreeHead);
            g_TtxSend.pTtxBusyList = NULL;
        }

        /* Not-null of the linked list */
        if (!list_empty(&g_TtxSend.TtxBlockBusyHead))
        {
            g_TtxSend.pTtxBusyList = g_TtxSend.TtxBlockBusyHead.next;
            g_TtxSend.pTtxBusyBlock = list_entry(g_TtxSend.pTtxBusyList, TTX_DATA_BLOCK_S, List);
            list_del(g_TtxSend.pTtxBusyList);

            DRV_VOU_TtxSetSeq(g_TtxSend.pTtxBusyBlock->TtxSeqFlag);
            DRV_VOU_TtxLineEnable(g_TtxSend.pTtxBusyBlock->TtxDataLine, g_TtxSend.pTtxBusyBlock->TtxDataExtLine);
            DRV_VOU_TtxSetAddr((g_TtxSend.pTtxBusyBlock->TtxStartAddr), (g_TtxSend.pTtxBusyBlock->TtxEndAddr));

            DRV_VOU_TtxSetReady();

            g_TtxSend.TtxBusyFlag = HI_TRUE;
           }
        }

        if (HI_TRUE == SendFlag)
        {
            return HI_SUCCESS;
        }
        else
        {
            return  HI_FAILURE;
        }

    return HI_SUCCESS;
}
#endif

#ifdef HI_DISP_CC_SUPPORT
HI_S32 DISP_SendVbiData(HI_UNF_DISP_E enDisp, HI_UNF_DISP_VBI_DATA_S *pstVbiData)
{
    OPTM_DISP_S *pOptmDisp;
    HI_U32      TmpIndex=0;
    HI_U32      PesLenLow8=0, PesLenHigh8=0,PesLen=0,VbiDataLen=0,PesHeadLen=0;
    HI_BOOL    BothField=HI_FALSE;
    HI_BOOL     DataCorrectFlag=HI_TRUE;
    HI_BOOL     SendFlag=HI_FALSE;
    HI_S32      Ret;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstVbiData);

#ifndef HI_VDP_ONLY_SD_SUPPORT
    if (enDisp != HI_UNF_DISP_SD0)
    {
        HI_ERR_DISP("enDisp is un-support vbi.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
#else
    if (enDisp != HI_UNF_DISP_HD0)
    {
        HI_ERR_DISP("enDisp is un-support vbi.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
#endif

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    /* disp must be open to receive data */
    if (!pOptmDisp->bEnable)
    {
        HI_ERR_DISP("enDisp is not enabled.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    if ((g_VbiSend.VbiPesBufWrite + pstVbiData->u32DataLen) > BUFFER_LEN_16K)
    {
        HI_WARN_DISP("The Vbi Pes buffer is overflow!\n");
    }
    else
    {
#ifdef OPTM_VO_SELF_DEBUG
        memcpy((g_VbiSend.pPesBufVirtAddr+g_VbiSend.VbiPesBufWrite), pstVbiData->pu8DataAddr, pstVbiData->u32DataLen);
#else
        Ret = copy_from_user((g_VbiSend.pPesBufVirtAddr+g_VbiSend.VbiPesBufWrite), (HI_VOID __user *)pstVbiData->pu8DataAddr, pstVbiData->u32DataLen);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_DISP("copy data from user failed.\n");
        }
#endif
            /* move write-pointer to the tail of buffer */
            g_VbiSend.VbiPesBufWrite = g_VbiSend.VbiPesBufWrite + pstVbiData->u32DataLen;
            SendFlag = HI_TRUE;
        }

        while(TmpIndex < g_VbiSend.VbiPesBufWrite)
        {
            if (list_empty(&g_VbiSend.CcBlockFreeHead))
            {
                HI_WARN_DISP("The CC buffer is overflow!\n");

                if (TmpIndex != 0)
                {
                    /* copy the data left to the top of buffer */
                    memcpy(g_VbiSend.pPesBufVirtAddr, (g_VbiSend.pPesBufVirtAddr + TmpIndex), g_VbiSend.VbiPesBufWrite - TmpIndex);

                    /* move the write-pointer to the tail of buffer */
                    g_VbiSend.VbiPesBufWrite = g_VbiSend.VbiPesBufWrite - TmpIndex;
                }
                break;
            }

            if (list_empty(&g_VbiSend.WssBlockFreeHead))
            {
                HI_WARN_DISP("The WSS buffer is overflow!\n");

                if (TmpIndex != 0)
                {
                    /* copy the data left to the top of buffer */
                    memcpy(g_VbiSend.pPesBufVirtAddr, (g_VbiSend.pPesBufVirtAddr + TmpIndex), g_VbiSend.VbiPesBufWrite - TmpIndex);

                    /* move the write-pointer to the tail of buffer */
                    g_VbiSend.VbiPesBufWrite = g_VbiSend.VbiPesBufWrite - TmpIndex;
                }
                break;
            }

            /* the length of the data is too small */
            if ((TmpIndex+VBI_PES_MIN_LEN) > g_VbiSend.VbiPesBufWrite)
            {
                HI_ERR_DISP("The Vbi Pes data is not enough!\n");

                if (TmpIndex != 0)
                {
                    /* copy the data left to the top of buffer */
                    memcpy(g_VbiSend.pPesBufVirtAddr, (g_VbiSend.pPesBufVirtAddr + TmpIndex), g_VbiSend.VbiPesBufWrite - TmpIndex);

                    /* move the write-pointer to the tail of buffer */
                    g_VbiSend.VbiPesBufWrite = g_VbiSend.VbiPesBufWrite - TmpIndex;
                }
                break;
            }

            if (0x00 == g_VbiSend.pPesBufVirtAddr[TmpIndex])
            {
                if ((g_VbiSend.pPesBufVirtAddr[TmpIndex+1] == 0x00) && (g_VbiSend.pPesBufVirtAddr[TmpIndex+2] == 0x01) && (g_VbiSend.pPesBufVirtAddr[TmpIndex+3] == 0xbd))
                {
                    /* get the length of PES packet */
                    PesLenHigh8 = g_VbiSend.pPesBufVirtAddr[TmpIndex+4];
                    PesLenLow8 = g_VbiSend.pPesBufVirtAddr[TmpIndex+5];
                    PesLen = (PesLenHigh8 << 8) + PesLenLow8;

                    if (PesLen <= VBI_PES_MAX_LEN)
                    {
                        /* buffer has a complete PES packet */
                        if ((g_VbiSend.VbiPesBufWrite - TmpIndex - 6) >= PesLen)
                        {
                            PesHeadLen = g_VbiSend.pPesBufVirtAddr[TmpIndex+8];

                            /* make sure that ebudata flag exists */
                            if (PesHeadLen < (PesLen - 4))
                            {
                                /* query whether it is EBU data */
                                if (((g_VbiSend.pPesBufVirtAddr[TmpIndex+PesHeadLen+9] >= 0x10) && (g_VbiSend.pPesBufVirtAddr[TmpIndex+PesHeadLen+9] <= 0x1f))
                                ||((g_VbiSend.pPesBufVirtAddr[TmpIndex+PesHeadLen+9] >= 0x99) && (g_VbiSend.pPesBufVirtAddr[TmpIndex+PesHeadLen+9] <= 0x9b))
                                )
                                {
                                    DataCorrectFlag = HI_FALSE;
                                    VbiDataLen = PesLen - PesHeadLen - 4;

                                    /* the length of the data must >= 5*/
                                    if (VbiDataLen >= 5)
                                    {
                                        /* CC data flag */
                                        if (g_VbiSend.pPesBufVirtAddr[TmpIndex+PesHeadLen+10] == 0xc5)
                                        {
                                            /* CC data may contain two fields */
                                            if (VbiDataLen >= 10)
                                            {
                                                if (g_VbiSend.pPesBufVirtAddr[TmpIndex+PesHeadLen+15] == 0xc5)
                                                {
                                                    DataCorrectFlag = HI_TRUE;
                                                    BothField = HI_TRUE;
                                                }
                                                else if (g_VbiSend.pPesBufVirtAddr[TmpIndex+PesHeadLen+15] == 0xff)
                                                {
                                                    DataCorrectFlag = HI_TRUE;
                                                    BothField = HI_FALSE;
                                                }
                                            }
                                            else
                                            {
                                                DataCorrectFlag = HI_TRUE;
                                                BothField = HI_FALSE;
                                            }
                                        }
                                        /*WSS data flag*/
                                        else if (g_VbiSend.pPesBufVirtAddr[TmpIndex+PesHeadLen+10] == 0xc4)
                                        {
                                            DataCorrectFlag = HI_TRUE;
                                        }
                                        else
                                        {
                                        }

                                        /* if the data is valid, analyze, copy it and add it to queue */
                                        if (HI_TRUE == DataCorrectFlag)
                                        {
                                            Disp_VbiDataParse((g_VbiSend.pPesBufVirtAddr+TmpIndex+PesHeadLen+10), BothField, pOptmDisp->OptmDispAttr.enFmt);
                                        }
                                    }

                                }
                            }

                            /* TmpIndex, leap over current packet */
                            TmpIndex = TmpIndex + PesLen + 6;
                            continue;
                        }
                        else
                        {
                            HI_WARN_DISP("The Vbi Pes Packet is not enough!\n");
                            if (TmpIndex != 0)
                            {
                                /* copy the left data to the top of buffer */
                                memcpy(g_VbiSend.pPesBufVirtAddr, (g_VbiSend.pPesBufVirtAddr + TmpIndex), g_VbiSend.VbiPesBufWrite- TmpIndex);

                                /* move the write-pointer to the tail of buffer */
                                g_VbiSend.VbiPesBufWrite = g_VbiSend.VbiPesBufWrite - TmpIndex;
                            }
                            break;
                        }
                    }
                    else
                    {
                        HI_WARN_DISP("The Vbi Pes length data is error, clear buffer!\n");
                        g_VbiSend.VbiPesBufWrite = 0;
                        break;
                    }

                }
            }

            TmpIndex++;
        }

    if (TmpIndex == g_VbiSend.VbiPesBufWrite)
    {
        g_VbiSend.VbiPesBufWrite = 0;
    }

    if (HI_TRUE == SendFlag)
    {
        return HI_SUCCESS;
    }
    else
    {
        return  HI_FAILURE;
    }

    return HI_SUCCESS;
}
#endif

#ifdef HI_DISP_CGMS_SUPPORT
HI_S32 DISP_SetWss(HI_UNF_DISP_E enDisp, HI_UNF_DISP_WSS_DATA_S *pstWssData)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pstWssData);

#ifndef HI_VDP_ONLY_SD_SUPPORT
    if (enDisp != HI_UNF_DISP_SD0)
    {
        HI_ERR_DISP("enDisp is un-support wss.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }
#endif
    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    /* disp must be open to receive data */
    if (!pOptmDisp->bEnable)
    {
        HI_ERR_DISP("enDisp is not enabled.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    /* WSS-625i(PAL) contains 0x1F1C71C7,0x1E3C1F and B0~B13, u16Data is enough;
     * but for WSS-525i(NTSC) which contains 1,0,B0~B19, u16Data is no enough.
     */
    g_VbiSend.WssData.u16Data = pstWssData->u16Data;
    g_VbiSend.WssData.bEnable = pstWssData->bEnable;

    DRV_VOU_WSSConfig(g_VbiSend.WssData.bEnable, g_VbiSend.WssData.u16Data);

    return HI_SUCCESS;
}
#endif

#ifdef HI_DISP_CGMS_SUPPORT
/* for CGMS on condition of PAL(576i50) system */
HI_S32 DISP_SetCgmsByWss(HI_UNF_DISP_E enDisp, HI_UNF_DISP_CGMS_CFG_S* stCgmsCfg)
{
    /* set CGMS by WSS */
    OPTM_DISP_S *pOptmDisp;

    HI_UNF_DISP_WSS_DATA_S stWssData;

    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    /* disp must be open to receive data */
    if (!pOptmDisp->bEnable)
    {
        HI_ERR_DISP("enDisp is not enabled.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    /* set CGMS by WSS is enabled */
    if(stCgmsCfg->bEnable)
    {
        /* collision with WSS? */
        //stWssData.bEnable = stCgmsCfg->bEnable;

        //stWssData.u16Data = 0x0400 | stCgmsCfg->enMode;/* 0000 0100 0000 00xx*/

        /* CGMS modes */
         switch(stCgmsCfg->enMode)
         {
             /* Data of WSS: B0~B13 */
             case HI_UNF_DISP_CGMS_MODE_COPY_FREELY:
                 stWssData.u16Data = 0x0008; //0x0400;  /* 00 01 00 00 00 00 00; 00 */
                 break;

             case HI_UNF_DISP_CGMS_MODE_COPY_NO_MORE:
                 stWssData.u16Data = 0x2008; //0x0401;  /* 00 01 00 00 00 00 01; 01 */
                 break;

             case HI_UNF_DISP_CGMS_MODE_COPY_ONCE:
                 stWssData.u16Data = 0x1008; //0x0402;  /* 00 01 00 00 00 00 10; 10 */
                 break;

             case HI_UNF_DISP_CGMS_MODE_COPY_NEVER:
                 stWssData.u16Data = 0x3008; //0x0403;  /* 00 01 00 00 00 00 11; 11 */
                 break;

             default:
             {
                 HI_ERR_DISP("CGMS_DATA is not properly set!\n");
                 return HI_FAILURE;
             }
         }

    }
    else
    {
        /* CGMS by WSS will be disabled, then set wss_data to be zero, at least G0~G1.
         * Thus, WSS still can be used in the future, since WSS_enable is not set 0.
         */
         stWssData.u16Data = 0x0000;
    }

    stWssData.bEnable = HI_TRUE;

    //DEBUG_PRINTK("\n#%s, %d, [WSS] enable=%d, Data=0x%X\n",__FUNCTION__, __LINE__, stWssData.bEnable,stWssData.u16Data);

    /* WSS-625i(PAL) contains 0x1F1C71C7,0x1E3C1F and B0~B13, u16Data is enough;
     * but for WSS-525i(NTSC) which contains 1,0,B0~B19, u16Data is not enough.
     * //DRV_VOU_WSSConfig(HI_TRUE, stWssData.u16Data);?
     */
    g_VbiSend.WssData.u16Data = stWssData.u16Data;
    g_VbiSend.WssData.bEnable = stWssData.bEnable;

    DRV_VOU_WSSConfig(g_VbiSend.WssData.bEnable, g_VbiSend.WssData.u16Data);

    return HI_SUCCESS;
}
#endif

#ifdef HI_DISP_CGMS_SUPPORT
/* set CGMS by configuration of stCgmsCfg from users.
 * enDisp is required to set display channel respectively.
 */
HI_S32 DISP_SetCGMS(HI_UNF_DISP_E enDisp, HI_UNF_DISP_CGMS_CFG_S* stCgmsCfg)
{
    OPTM_DISP_S      *pOptmDisp;
    HI_UNF_ENC_FMT_E  enFormat = HI_UNF_ENC_FMT_BUTT;

    /* check the status of device */
    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    /* disp must be open to receive data */
    if (!pOptmDisp->bOpened)
    {
        HI_ERR_DISP("enDisp is not enabled.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    /* Get current system */
    DISP_GetFormat(enDisp,&enFormat);

    /*
     * CGMS-enable status operation
     */

    /* A-type enable */
    if(    (HI_TRUE == stCgmsCfg->bEnable)
        && (HI_UNF_DISP_CGMS_TYPE_A == stCgmsCfg->enType)
       )
    {
        /* A-type of stCgmsCfg->enMode is enabled */
        if(    (HI_TRUE == pOptmDisp->OptmDispAttr.stCgmsCfgA.bEnable)
            && (stCgmsCfg->enMode == pOptmDisp->OptmDispAttr.stCgmsCfgA.enMode)
            && (enFormat == pOptmDisp->OptmDispAttr.enLastFmt)
           )
        {
            return HI_SUCCESS;
        }
        else
        {
             pOptmDisp->OptmDispAttr.stCgmsCfgA = *stCgmsCfg;
             pOptmDisp->OptmDispAttr.enLastFmt  = enFormat;
        }
    }
    /* A-type disable */
    else if(    (HI_FALSE == stCgmsCfg->bEnable)
             && (HI_UNF_DISP_CGMS_TYPE_A == stCgmsCfg->enType)
            )
    {
        /* A-type was disabled */
        if(    (HI_FALSE == pOptmDisp->OptmDispAttr.stCgmsCfgA.bEnable)
            && (enFormat == pOptmDisp->OptmDispAttr.enLastFmt)
           )
        {
            return HI_SUCCESS;
        }
        else
        {
            pOptmDisp->OptmDispAttr.stCgmsCfgA.bEnable = HI_FALSE;
            pOptmDisp->OptmDispAttr.stCgmsCfgA.enMode  = HI_UNF_DISP_CGMS_MODE_BUTT;
            pOptmDisp->OptmDispAttr.enLastFmt          = enFormat;
        }
    }
    /* B-type enable */
    else if(   (HI_TRUE == stCgmsCfg->bEnable)
            && (HI_UNF_DISP_CGMS_TYPE_B == stCgmsCfg->enType)
            )
    {
        /* B-type of stCgmsCfg->enMode is enabled */
        if(    (HI_TRUE == pOptmDisp->OptmDispAttr.stCgmsCfgB.bEnable)
            && (stCgmsCfg->enMode == pOptmDisp->OptmDispAttr.stCgmsCfgB.enMode)
            && (enFormat == pOptmDisp->OptmDispAttr.enLastFmt)
           )
        {
            return HI_SUCCESS;
        }
        else
        {
            pOptmDisp->OptmDispAttr.stCgmsCfgB = *stCgmsCfg;
            pOptmDisp->OptmDispAttr.enLastFmt  = enFormat;
        }
    }
    /* B-type disable */
    else if(    (HI_FALSE == stCgmsCfg->bEnable)
             && (HI_UNF_DISP_CGMS_TYPE_B == stCgmsCfg->enType)
            )
    {
        /* B-type was disabled */
        if(    (HI_FALSE == pOptmDisp->OptmDispAttr.stCgmsCfgB.bEnable)
            && (enFormat == pOptmDisp->OptmDispAttr.enLastFmt)
           )
        {
            return HI_SUCCESS;
        }
        else
        {
            pOptmDisp->OptmDispAttr.stCgmsCfgB.bEnable = HI_FALSE;
            pOptmDisp->OptmDispAttr.stCgmsCfgB.enMode  = HI_UNF_DISP_CGMS_MODE_BUTT;
            pOptmDisp->OptmDispAttr.enLastFmt          = enFormat;
        }
    }
    /* improper parameters */
    else
    {
        HI_ERR_DISP("CGMS is not enabled!\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* Check the validity of configuration (Type, Mode) */
    if (   (HI_UNF_DISP_CGMS_TYPE_BUTT == stCgmsCfg->enType)
        || (HI_UNF_DISP_CGMS_MODE_BUTT == stCgmsCfg->enMode)
       )
    {
        HI_ERR_DISP("CGMS is enabled but the configuration is not properly set!\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* Set CGMS Data "A"-type */
    if(HI_UNF_DISP_CGMS_TYPE_A == stCgmsCfg->enType)
    {
        //DEBUG_PRINTK("enType = A;\n");

        /* PAL system */
        if(    (HI_UNF_ENC_FMT_PAL       == enFormat)
            || (HI_UNF_ENC_FMT_PAL_N     == enFormat)
            || (HI_UNF_ENC_FMT_PAL_Nc    == enFormat)
            || (HI_UNF_ENC_FMT_SECAM_SIN == enFormat)
            || (HI_UNF_ENC_FMT_SECAM_COS == enFormat)
           )
        {
            /*
             * by WSS(Wide Screen Signalling),
             * even if enDisp is HD, the output will go through SDATE.
             */
            DISP_SetCgmsByWss(enDisp, stCgmsCfg);
        }
        else
        {
            /* disable CGMS */
            if(HI_FALSE == stCgmsCfg->bEnable)
            {
                /* NTSC system   */
                /* "A"-type @IEC 61880 */
                if(   (HI_UNF_ENC_FMT_NTSC_J       == enFormat)
                   || (HI_UNF_ENC_FMT_NTSC_PAL_M   == enFormat)
                   || (HI_UNF_ENC_FMT_NTSC         == enFormat)
                  )
                {
                    /* disable A-type or B-type */
                    /* manual setting of HD channel --> SDATE */
                    OPTM_M_SetCgmsEnable(HAL_DISP_CHANNEL_DSD, HI_FALSE, stCgmsCfg->enType);
                }
                else
                {
                    /* disable A-type or B-type */
                    OPTM_M_SetCgmsEnable(pOptmDisp->enDispHalId, HI_FALSE, stCgmsCfg->enType);
                }
                return HI_SUCCESS;
            }

            /* CGMS A-type will be enabled */
            OPTM_M_SetCgmsData(pOptmDisp->enDispHalId, enFormat, stCgmsCfg);

        }
    }
    /* Set CGMS Data B-type */
    else if(HI_UNF_DISP_CGMS_TYPE_B == stCgmsCfg->enType)
    {
       // DEBUG_PRINTK("enType = B;\n");

        /* CGMS B-type */
        HI_ERR_DISP("Sorry! CGMS type-B is not supported temporarily!.\n");
        return HI_FAILURE;
    }
    /* improper parameters */
    else
    {
        HI_ERR_DISP("Sorry! There is an error assignment of CGMS type!.\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}
#endif

HI_S32 DISP_SetDispWin(HI_UNF_DISP_E enDisp, HI_UNF_RECT_S* stOutRectCfg)
{
    HI_S32 ret;
    OPTM_DISP_S      *pOptmDisp;
    //HI_UNF_ENC_FMT_E  enFormat;

    /* check the status of device */
    D_DISP_CHECK_DEVICE_OPEN();

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);


    ret = OPTM_M_SetGfxScrnWin(pOptmDisp->enDispHalId,stOutRectCfg);


    return ret;

}

#if 0
extern  signed int VO_Create_And_SwitchToCast(DISP_MIRROR_CFG_S  *mirror_cfg);
extern  signed int VO_Destroy_And_SwitchFromCast(HI_BOOL force_flag,HI_HANDLE  cast_handle);
extern  signed int VO_Set_Mirror_Enable(DISP_MIRROR_ENBALE_S  *mirror_enable);
extern  signed int VO_Get_Mirror_Enable(DISP_MIRROR_ENBALE_S  *mirror_enable_status);
extern  signed int VO_Get_Mirror_Frame(DISP_MIRROR_FRAME_S *mirror_frame);
extern  signed int VO_Put_Mirror_Frame(DISP_MIRROR_FRAME_S *mirror_frame);

HI_S32 DISP_OpenMirror(DISP_MIRROR_CFG_S  *mirror_cfg)
{
    signed int ret = 0;
    ret = VO_Create_And_SwitchToCast(mirror_cfg);
    return ret;
}

HI_S32 DISP_CloseMirror(HI_HANDLE  cast_handle)
{
    signed int ret = 0;
    ret = VO_Destroy_And_SwitchFromCast(0,cast_handle);
    return ret;
}

HI_S32 DISP_SetMirror_Enable(DISP_MIRROR_ENBALE_S  *mirror_enable)
{
    signed int ret = 0;
    ret = VO_Set_Mirror_Enable(mirror_enable);
    return ret;
}

HI_S32 DISP_GetMirror_Enable(DISP_MIRROR_ENBALE_S  *mirror_enable_status)
{
    signed int ret = 0;
    ret = VO_Get_Mirror_Enable(mirror_enable_status);
    return ret;
}

HI_S32 DISP_GetMirror_Frame(DISP_MIRROR_FRAME_S  *mirror_frame)
{
    signed int ret = 0;
    ret = VO_Get_Mirror_Frame(mirror_frame);

    return ret;
}

HI_S32 DISP_PutMirror_Frame(DISP_MIRROR_FRAME_S  *mirror_frame)
{
    signed int ret = 0;
    ret = VO_Put_Mirror_Frame(mirror_frame);

    return ret;
}
#endif

#ifdef  HI_DISP_MACROVISION_SUPPORT
HI_S32 DISP_SetMcrvsn(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E enMcrvsn)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    if (enMcrvsn >= HI_UNF_DISP_MACROVISION_MODE_BUTT)
    {
        HI_ERR_DISP("DISP invalid parameters!\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);
    if(pOptmDisp->OptmDispAttr.enMcvn == enMcrvsn)
    {
        return HI_SUCCESS;
    }

    if (HI_UNF_DISP_HD0 == enDisp)
    {
        if(enMcrvsn == HI_UNF_DISP_MACROVISION_MODE_TYPE0)
        {
            OPTM_HAL_SetMcvnEnable(HAL_DISP_CHANNEL_DHD, HI_FALSE);
        }
        else if(  (enMcrvsn >= HI_UNF_DISP_MACROVISION_MODE_TYPE1)
                &&(enMcrvsn <= HI_UNF_DISP_MACROVISION_MODE_TYPE3))
        {
            OPTM_HAL_SetMcvnEnable(HAL_DISP_CHANNEL_DHD, HI_TRUE);
        }
        else
        {
            HI_ERR_DISP("HD DISP does not support the macrovision type!\n");
            return HI_ERR_DISP_INVALID_PARA;
        }

        pOptmDisp->OptmDispAttr.enMcvn = enMcrvsn;
    }
    else if (HI_UNF_DISP_SD0 == enDisp)
    {
        if(  (enMcrvsn == HI_UNF_DISP_MACROVISION_MODE_TYPE0)
            || (enMcrvsn == HI_UNF_DISP_MACROVISION_MODE_TYPE1)
            || (enMcrvsn == HI_UNF_DISP_MACROVISION_MODE_TYPE2)
            || (enMcrvsn == HI_UNF_DISP_MACROVISION_MODE_TYPE3)
                )
        {
            OPTM_M_SetDateMcvn(pOptmDisp->s32DateCh, enMcrvsn);
        }
        pOptmDisp->OptmDispAttr.enMcvn = enMcrvsn;
    }

    return HI_SUCCESS;
}

HI_S32 DISP_GetMcrvsn(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E *penMcrvsn)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(penMcrvsn);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    *penMcrvsn = pOptmDisp->OptmDispAttr.enMcvn;

    return HI_SUCCESS;
}

HI_S32 DISP_SetMcrvsnCustomTable(HI_UNF_DISP_E enDisp, HI_U32 *pu32McvnTable)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pu32McvnTable);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    if (HI_UNF_DISP_MACROVISION_MODE_CUSTOM == pOptmDisp->OptmDispAttr.enMcvn)
    {
        OPTM_HAL_DATE_SetMcvn(pOptmDisp->s32DateCh, pu32McvnTable);
    }
    else
    {
        HI_ERR_DISP("DISP macrovision type is not customised type!\n");
        return HI_ERR_DISP_INVALID_PARA;
    }

    return HI_SUCCESS;
}


HI_S32 DISP_GetMcrvsnState(HI_UNF_DISP_E enDisp, HI_BOOL *pbMcvnState)
{
    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pbMcvnState);

    if (HI_UNF_DISP_HD0 == enDisp)
    {
        *pbMcvnState = OPTM_HAL_GetMcvnState(HAL_DISP_CHANNEL_DHD);
    }
    else if (HI_UNF_DISP_SD0 == enDisp)
    {
        *pbMcvnState = OPTM_HAL_GetMcvnState(HAL_DISP_CHANNEL_DSD);
    }

    return HI_SUCCESS;
}
#endif

#if 1
HI_S32 DISP_SetGfxEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
    HAL_DISP_LAYER_E enLayer;

    switch (enDisp)
    {
        case HI_UNF_DISP_SD0:
            enLayer = HAL_DISP_LAYER_GFX1;
            break;
        case HI_UNF_DISP_HD0:
            enLayer = HAL_DISP_LAYER_GFX0;
            break;
        default:
            return HI_ERR_DISP_INVALID_PARA;
            break;
    }

    HAL_DISP_EnableLayer(enLayer, bEnable);

    HAL_DISP_SetRegUpNoRatio(enLayer);

    return HI_SUCCESS;
}


#endif
HI_BOOL DISP_GetOptmDispAttr(HI_UNF_DISP_E enDisp, HI_OPTM_DISP_ATTR_S *pOptmDispAttr)
{
    OPTM_DISP_S *pOptmDisp;

    D_DISP_CHECK_DEVICE_OPEN();
    D_DISP_CHECK_PTR(pOptmDispAttr);

    /* get valid handle of DISP */
    D_DISP_GET_HANDLE(enDisp, pOptmDisp);

    memcpy(pOptmDispAttr, &(pOptmDisp->OptmDispAttr), sizeof(HI_OPTM_DISP_ATTR_S));

    return pOptmDisp->bEnable;
}

HI_VOID DISP_SaveDXD(HI_UNF_DISP_E enDisp)
{
    OPTM_DISP_S *pOptmDisp;

    /* get valid handle of DISP */
    pOptmDisp = &(g_stDispChn[enDisp]);

    OPTM_M_SaveDXD(pOptmDisp->enDispHalId);

    return;
}

HI_VOID DISP_RestoreDXD(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
    OPTM_DISP_S *pOptmDisp;

    /* get valid handle of DISP */
    pOptmDisp = &(g_stDispChn[enDisp]);

    OPTM_M_RestoreDXD(pOptmDisp->enDispHalId, bEnable);

    return;
}

HI_VOID DISP_SaveCommon(HI_VOID)
{
    OPTM_M_SaveCommon();

    return;
}

HI_VOID DISP_RestoreCommon(HI_VOID)
{
    OPTM_M_RestoreCommon();

    return;
}

/****************************************************************/
#ifdef HI_DISP_TTX_SUPPORT
HI_VOID DISP_TtxIsr(HI_U32 u32Param0, HI_U32 u32Param1)
{
    HI_UNF_ENC_FMT_E    sFormat = HI_UNF_ENC_FMT_BUTT;
    if (g_TtxSend.TtxListFlag)
    {
        g_TtxSend.TtxBusyFlag = HI_FALSE;
        return;
    }

    if (g_TtxSend.pTtxBusyList)
    {
        list_add_tail(g_TtxSend.pTtxBusyList, &g_TtxSend.TtxBlockFreeHead);
        g_TtxSend.pTtxBusyList = NULL;
    }

    if (list_empty(&g_TtxSend.TtxBlockBusyHead))
    {
        g_TtxSend.TtxBusyFlag = HI_FALSE;
        return;
    }

    g_TtxSend.pTtxBusyList = g_TtxSend.TtxBlockBusyHead.next;
    g_TtxSend.pTtxBusyBlock = list_entry(g_TtxSend.pTtxBusyList, TTX_DATA_BLOCK_S, List);
    list_del(g_TtxSend.pTtxBusyList);
#ifndef HI_VDP_ONLY_SD_SUPPORT
    DISP_GetFormat(HI_UNF_DISP_SD0, &sFormat);
#else
    DISP_GetFormat(HI_UNF_DISP_HD0, &sFormat);
#endif
    /*set mode  for NTSC or PAL*/
    if ((sFormat == HI_UNF_ENC_FMT_PAL)
            || (sFormat == HI_UNF_ENC_FMT_PAL_N)
            || (sFormat == HI_UNF_ENC_FMT_PAL_Nc)
       )
    {
        DRV_VOU_TtxSetMode(0x1);

        /*if 625i select line 7 ~22*/
        g_TtxSend.pTtxBusyBlock->TtxDataLine = 0xffffffff;/*7 ~22*/
        g_TtxSend.pTtxBusyBlock->TtxDataExtLine = 0x00;
    }
    else if ((sFormat == HI_UNF_ENC_FMT_NTSC)
            || (sFormat == HI_UNF_ENC_FMT_NTSC_J)
            || (sFormat == HI_UNF_ENC_FMT_NTSC_PAL_M))
    {
        DRV_VOU_TtxSetMode(0x2);

        /*if 525i select line 10 ~21*/
        g_TtxSend.pTtxBusyBlock->TtxDataLine = 0x7ff87ff8;/*10 ~21*/
        g_TtxSend.pTtxBusyBlock->TtxDataExtLine = 0x00;
    }
    g_TtxSend.pTtxBusyBlock->TtxPackConut = 0;

    DRV_VOU_TtxSetSeq(g_TtxSend.pTtxBusyBlock->TtxSeqFlag);
    udelay(5);
    DRV_VOU_TtxLineEnable(g_TtxSend.pTtxBusyBlock->TtxDataLine, g_TtxSend.pTtxBusyBlock->TtxDataExtLine);
    udelay(5);
    DRV_VOU_TtxSetAddr((g_TtxSend.pTtxBusyBlock->TtxStartAddr), (g_TtxSend.pTtxBusyBlock->TtxEndAddr));
    udelay(5);
    DRV_VOU_TtxSetReady();

    return;
}
#endif

#if defined(HI_DISP_CC_SUPPORT) || defined(HI_DISP_CGMS_SUPPORT)
HI_VOID DISP_VbiIsr(OPTM_DISP_S *pOptmDisp)
{
#if defined(HI_DISP_CC_SUPPORT)
    HI_S32 nBtmFlag;

    nBtmFlag = 1 - OPTM_HAL_DISP_GetCurrField(pOptmDisp->enDispHalId);
    if (g_VbiSend.CcListFlag != HI_TRUE)
    {
        if (list_empty(&g_VbiSend.CcBlockBusyHead))
        {
            DRV_VOU_CCLineConfig(HI_FALSE, HI_FALSE, 0, 0);
        }
        else
        {
            /*judge whether the first time to enter the node.
                comfire configure both fields CC data in bottom field each time.
            */
            if(g_VbiSend.CcSendStep == CC_SENDSTEP_START)
            {
                if(nBtmFlag)
                    return ;

                g_VbiSend.CcSendStep = CC_SENDSTEP_PROCESSING;
                g_VbiSend.pCcBusyList = g_VbiSend.CcBlockBusyHead.next;
                g_VbiSend.pCcBusyBlock = list_entry(g_VbiSend.pCcBusyList, CC_DATA_BLOCK_S, List);
                DRV_VOU_CCDataConfig(g_VbiSend.pCcBusyBlock->TopData, g_VbiSend.pCcBusyBlock->BottomData);
                DRV_VOU_CCLineConfig(g_VbiSend.pCcBusyBlock->TopFlag,g_VbiSend.pCcBusyBlock->BottomFlag,g_VbiSend.pCcBusyBlock->TopLine,g_VbiSend.pCcBusyBlock->BottomLine);
                //printk("Top->%#x,Bottom->%#x\n",g_VbiSend.pCcBusyBlock->TopData,g_VbiSend.pCcBusyBlock->BottomData);
                return;
            }

            /*remove node in next frame Top field.*/
            list_del(g_VbiSend.pCcBusyList);
            list_add_tail(g_VbiSend.pCcBusyList, &g_VbiSend.CcBlockFreeHead);
            g_VbiSend.CcSendStep = CC_SENDSTEP_START;

        }
    }
#endif

#if defined(HI_DISP_CGMS_SUPPORT)
    /*
    //config register directly
    if (g_VbiSend.WssData.bEnable)
    {
    DRV_VOU_WSSConfig(HI_TRUE, g_VbiSend.WssData.u16Data);
    }
    */
    /* WssListFlag = HI_FALSE */
    if (g_VbiSend.WssListFlag != HI_TRUE)
    {
        if (!list_empty(&g_VbiSend.WssBlockBusyHead))
        {
            g_VbiSend.pWssBusyList = g_VbiSend.WssBlockBusyHead.next;
            g_VbiSend.pWssBusyBlock = list_entry(g_VbiSend.pWssBusyList, WSS_DATA_BLOCK_S, List);
            list_del(g_VbiSend.pWssBusyList);

            if (!g_VbiSend.WssData.bEnable)
            {
                DRV_VOU_WSSConfig(HI_TRUE, g_VbiSend.pWssBusyBlock->TopData);
            }
            list_add_tail(g_VbiSend.pWssBusyList, &g_VbiSend.WssBlockFreeHead);
        }
    }
#endif
    return ;
}
#endif

HI_S32 OPTM_M_SetDispMaskLayer(HAL_DISP_OUTPUTCHANNEL_E enDisp, HI_BOOL bMask)
{
    HI_U8 u8Prio[5];
    HI_U32 i;
    memset(u8Prio, 0, 5);
    OPTM_HAL_GetCbmMixerPrio(enDisp, u8Prio);

    if (enDisp == HAL_DISP_CHANNEL_DHD)
    {
        for(i=0; i<5; i++)
        {
            if (u8Prio[i])
            {
                switch (u8Prio[i])
                {
                    case 1:
                    case 2:
                    case 5:
                        {
#ifdef OPTM_PILOT_VO_OK
#ifndef MINI_SYS_SURPORT
                            VO_SetLayerMask(HI_UNF_VO_HD0, bMask);
#endif
#endif
                            break;
                        }
                    case 3:
                        {
#ifdef OPTM_PILOT_GFX_OK
                            OPTM_GfxMaskLayer(OPTM_GFX_LAYER_HD0, bMask);
                            /*DEBUG_PRINTK("mask OPTM_GFX_LAYER_HD0\n");*/
#endif
                            break;
                        }
                    case 4:
                        {
#ifdef OPTM_PILOT_GFX_OK
                            OPTM_GfxMaskLayer(OPTM_GFX_LAYER_SD0, bMask);
#endif
                            break;
                        }
                    default:
                        break;
                }
            }
        }
    }
    else if (enDisp == HAL_DISP_CHANNEL_DSD)
    {
        for(i=0; i<2; i++)
        {
            if (u8Prio[i])
            {
                switch (u8Prio[i])
                {
                    case 1:
                        {
#ifdef OPTM_PILOT_VO_OK
#ifndef MINI_SYS_SURPORT
                            VO_SetLayerMask(HI_UNF_VO_SD0, bMask);
#endif
#endif
                            break;
                        }
                    case 2:
                        {
#ifdef OPTM_PILOT_GFX_OK
                            OPTM_GfxMaskLayer(OPTM_GFX_LAYER_SD0, bMask);
#endif
                            break;
                        }
                    default:
                        break;
                }
            }
        }
    }

    return HI_SUCCESS;
}

HI_VOID DISP_Isr(HI_U32 u32Param0, HI_U32 u32Param1)
{
    OPTM_DISP_S *pOptmDisp;

    /* get valid handle of DISP */
    pOptmDisp = &(g_stDispChn[u32Param0]);

    if (g_DispSuspend)
    {
        return;
    }

    if(pOptmDisp->bOpened!= HI_TRUE)
    {
        return;
    }

    if(pOptmDisp->bEnable != HI_TRUE)
    {
        return;
    }

    if (pOptmDisp->unUpFlag.u32Value != 0)
    {
        if (pOptmDisp->unUpFlag.Bits.Fmt != 0)
        {
            if (pOptmDisp->u32ChangeTimingStep > 0)
            {
                /* before the switch of system, screen video and graphic layer */
                OPTM_M_SetDispMaskLayer(pOptmDisp->enDispHalId, HI_TRUE);

                pOptmDisp->u32ChangeTimingStep--;
#ifdef _OPTM_DEBUG_MASK_LAYER_
                //DEBUG_PRINTK("id=%d, t=%d,", pOptmDisp->enDispHalId, pOptmDisp->u32ChangeTimingStep);
#endif
            }
            else
            {
                DISP_LocSetTVFmt(u32Param0);

                /* after the switch of system, de-screen video and graphic layer */
                OPTM_M_SetDispMaskLayer(pOptmDisp->enDispHalId, HI_FALSE);

                pOptmDisp->unUpFlag.Bits.Fmt = 0;
#ifdef _OPTM_DEBUG_MASK_LAYER_
                //DEBUG_PRINTK("id=%d, t=%d,", pOptmDisp->enDispHalId, pOptmDisp->u32ChangeTimingStep);
#endif
            }
        }

#ifdef HI_DISP_LCD_SUPPORT
        if (pOptmDisp->unUpFlag.Bits.Lcd != 0)
        {
            if (pOptmDisp->u32ChangeTimingStep > 0)
            {
                /* before the switch of system, screen video and graphic layer */
                OPTM_M_SetDispMaskLayer(pOptmDisp->enDispHalId, HI_TRUE);

                pOptmDisp->u32ChangeTimingStep--;
                //DEBUG_PRINTK("id=%d, t=%d,", pOptmDisp->enDispHalId, pOptmDisp->u32ChangeTimingStep);
            }
            else
            {
                DISP_LocSetLcdPara(pOptmDisp);

                /* after the switch of system, de-screen video and graphic layer */
                OPTM_M_SetDispMaskLayer(pOptmDisp->enDispHalId, HI_FALSE);

                pOptmDisp->unUpFlag.Bits.Lcd = 0;
                //DEBUG_PRINTK("u\n");
            }
        }
#endif

        if (pOptmDisp->unUpFlag.Bits.Order != 0)
        {
            /* set the order of superposition */
            Disp_SetDispLayerOrder(u32Param0, pOptmDisp->OptmDispAttr.u32LayerNum,
                                  &(pOptmDisp->OptmDispAttr.DispLayerOrder[0]),
                                  &(pOptmDisp->SubLayer[0]));
            pOptmDisp->unUpFlag.Bits.Order = 0;
        }

        if (pOptmDisp->unUpFlag.Bits.Bgc != 0)
        {
            OPTM_M_SetDispBgc(pOptmDisp->enDispHalId, &(pOptmDisp->OptmDispAttr.stBgc));
#if 0
#ifndef MINI_SYS_SURPORT
            if (HAL_DISP_CHANNEL_DHD == pOptmDisp->enDispHalId)
            {
                /* update the background color of MOSAIC window */
                VO_SetMosaicBgcUpdate(HI_UNF_VO_HD0, HI_TRUE);
            }
#endif
#endif
            pOptmDisp->unUpFlag.Bits.Bgc = 0;
        }

        if (pOptmDisp->unUpFlag.Bits.Contrast != 0)
        {
            OPTM_M_SetDispContrast(pOptmDisp->enDispHalId, pOptmDisp->OptmDispAttr.u32Contrast);
            pOptmDisp->unUpFlag.Bits.Contrast = 0;
        }

        if (pOptmDisp->unUpFlag.Bits.Bright != 0)
        {
            OPTM_M_SetDispBright(pOptmDisp->enDispHalId, pOptmDisp->OptmDispAttr.u32Bright);
            pOptmDisp->unUpFlag.Bits.Bright = 0;
        }

        if (pOptmDisp->unUpFlag.Bits.Saturation != 0)
        {
            OPTM_M_SetDispSaturation(pOptmDisp->enDispHalId, pOptmDisp->OptmDispAttr.u32Saturation);
            pOptmDisp->unUpFlag.Bits.Saturation = 0;
        }

        if (pOptmDisp->unUpFlag.Bits.Hue != 0)
        {
            OPTM_M_SetDispHue(pOptmDisp->enDispHalId, pOptmDisp->OptmDispAttr.u32Hue);
            pOptmDisp->unUpFlag.Bits.Hue = 0;
        }


        if (pOptmDisp->unUpFlag.Bits.ColorTemp != 0)
        {
            OPTM_M_SetDispColorTemperature(pOptmDisp->enDispHalId, pOptmDisp->OptmDispAttr.u32Kr,
                                                                   pOptmDisp->OptmDispAttr.u32Kg,
                                                                   pOptmDisp->OptmDispAttr.u32Kb);
            pOptmDisp->unUpFlag.Bits.ColorTemp = 0;
        }

        if (pOptmDisp->unUpFlag.Bits.Acc != 0)
        {
#ifdef HI_DISP_GAMMA_SUPPORT
            OPTM_M_SetDispGamma(pOptmDisp->enDispHalId, pOptmDisp->OptmDispAttr.bAccEnable);
#endif
            pOptmDisp->unUpFlag.Bits.Acc = 0;
        }

        if (pOptmDisp->unUpFlag.Bits.Ttx != 0)
        {
            /* DODO: */
            pOptmDisp->unUpFlag.Bits.Ttx = 0;
        }
        if (pOptmDisp->unUpFlag.Bits.Wss != 0)
        {
            /* DODO: */
            pOptmDisp->unUpFlag.Bits.Wss = 0;
        }
    }
#ifndef HI_VDP_ONLY_SD_SUPPORT
    if (pOptmDisp->enDispHalId == HAL_DISP_CHANNEL_DSD)
    {
#ifdef HI_DISP_CC_SUPPORT
        DISP_VbiIsr(pOptmDisp);
#endif
    }
#else
    if (pOptmDisp->enDispHalId == HAL_DISP_CHANNEL_DHD)
    {
#ifdef HI_DISP_CC_SUPPORT
        DISP_VbiIsr(pOptmDisp);
#endif
    }
#endif

    return;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

