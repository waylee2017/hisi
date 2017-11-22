/******************************************************************************

  Copyright (C), 2014-2024, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : si_phy.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2016/06/16
  Description   :
  History       :
  Date          : 2016/06/16
  Author        : l00232354
  Modification  :
*******************************************************************************/
#include "hi_unf_hdmi.h"
#include "txvidp.h"
#include "hdmitx.h"
#include "infofrm.h"
#include "de.h"
#ifdef HI_HDMI_4K_SUPPORT
#include "vsdb.h"
#endif
#ifndef HI_MINIBOOT_SUPPORT
#include "linux/time.h"
#endif
#include "si_phy.h"
#include "hdmi_hal_phy.h"
#include "siitxapidefs.h"

#include "timer.h"
#include "hdmi.h"
#include "vmode.h"
#ifdef HI_HDMI_EDID_SUPPORT
#include "si_edid.h"
#endif


/******************************************************************************/
/* Macro defined                                                              */
/******************************************************************************/
#define HDMI_MAX_WAIT_RSEN_COUNT   50

/******************************************************************************/
/* Structure defined                                                          */
/******************************************************************************/
typedef struct {
    HI_U32                   u32Index;
    HI_UNF_ENC_FMT_E         enUnfFmt;
    HI_UNF_HDMI_DEEP_COLOR_E enDeepColor;
    HI_U32                   u32SscAmptd;
    HI_U32                   u32SscFreq;
}HDMI_SSC_INFO_S;

/******************************************************************************/
/* Global defined                                                             */
/******************************************************************************/
static HDMI_SSC_INFO_S s_SSCInfoTables[] = 
{   
    /* index, format, deepcolor, sscAmtpd, sscFreq(k) */
    {0,  HI_UNF_ENC_FMT_BUTT,     HI_UNF_HDMI_DEEP_COLOR_OFF,   800,  45},  
    {1,  HI_UNF_ENC_FMT_720P_50,  HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {2,  HI_UNF_ENC_FMT_720P_60,  HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {3,  HI_UNF_ENC_FMT_1080i_50, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {4,  HI_UNF_ENC_FMT_1080i_60, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {5,  HI_UNF_ENC_FMT_1080P_24, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {6,  HI_UNF_ENC_FMT_1080P_25, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {7,  HI_UNF_ENC_FMT_1080P_30, HI_UNF_HDMI_DEEP_COLOR_24BIT, 3500, 45},
    {8,  HI_UNF_ENC_FMT_1080P_50, HI_UNF_HDMI_DEEP_COLOR_24BIT, 1500, 45},
    {9,  HI_UNF_ENC_FMT_1080P_60, HI_UNF_HDMI_DEEP_COLOR_24BIT, 1500, 45},

    {10, HI_UNF_ENC_FMT_720P_50,  HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {11, HI_UNF_ENC_FMT_720P_60,  HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {12, HI_UNF_ENC_FMT_1080i_50, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {13, HI_UNF_ENC_FMT_1080i_60, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {14, HI_UNF_ENC_FMT_1080P_24, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {15, HI_UNF_ENC_FMT_1080P_25, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {16, HI_UNF_ENC_FMT_1080P_30, HI_UNF_HDMI_DEEP_COLOR_30BIT, 2500, 45},
    {17, HI_UNF_ENC_FMT_1080P_50, HI_UNF_HDMI_DEEP_COLOR_30BIT, 1000, 45},
    {18, HI_UNF_ENC_FMT_1080P_60, HI_UNF_HDMI_DEEP_COLOR_30BIT, 1000, 45},
 
    {19, HI_UNF_ENC_FMT_720P_50,  HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {20, HI_UNF_ENC_FMT_720P_60,  HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {21, HI_UNF_ENC_FMT_1080i_50, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {22, HI_UNF_ENC_FMT_1080i_60, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {23, HI_UNF_ENC_FMT_1080P_24, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {24, HI_UNF_ENC_FMT_1080P_25, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {25, HI_UNF_ENC_FMT_1080P_30, HI_UNF_HDMI_DEEP_COLOR_36BIT, 2000, 45},
    {26, HI_UNF_ENC_FMT_1080P_50, HI_UNF_HDMI_DEEP_COLOR_36BIT, 800,  45},
    {27, HI_UNF_ENC_FMT_1080P_60, HI_UNF_HDMI_DEEP_COLOR_36BIT, 800,  45},
};

static HI_BOOL g_bHDMIResetFlag = HI_FALSE;
static HI_BOOL g_bHDMI_content_flag = HI_FALSE;
volatile HDMI_REG_CRG_S *g_pHDMIRegCrg   = (HDMI_REG_CRG_S *)(HDMI_CRG_BASE_ADDR);
static HI_BOOL s_s32HDMIConnect = HI_FALSE;
extern HI_U32 g_u32HDMI_update_status_flag;
#ifdef SSC_SUPPORT
static HI_BOOL s_bHdmiSSCEnable = HI_TRUE;
#else
static HI_BOOL s_bHdmiSSCEnable = HI_FALSE;
#endif


/******************************************************************************/
/* Private interface                                                          */
/******************************************************************************/
HI_U32 HI_DRV_HDMI_UpdateStatus(void);

#ifdef HI_HDMI_EDID_SUPPORT
HI_VOID Print_EDID(HI_UNF_EDID_BASE_INFO_S *pSinkCap)
{
    HI_U32 Index;
    COM_INFO("Manufacture name:%s\n",pSinkCap->stMfrsInfo.u8MfrsName);
    COM_INFO("SupportHdmi:%d\n",pSinkCap->bSupportHdmi);
    COM_INFO("enNativeFormat:%d\n",pSinkCap->enNativeFormat);
    COM_INFO("Support Format:");
    for(Index = 0; Index < HI_UNF_ENC_FMT_BUTT; Index++)
    {
        if(pSinkCap->bSupportFormat[Index])
        {
           COM_INFO("%d,",Index);
        }
    }
    COM_INFO("\n");
    COM_INFO("3D Support:%d\n",pSinkCap->st3DInfo.bSupport3D);

    return;
}

HI_S32 HI_UNF_HDMI_SetBaseParamByEDID(HI_VOID)
{
    HI_S32 s32Ret;
    HI_UNF_EDID_BASE_INFO_S SinkCap;
    HI_DISP_PARAM_S         stDispParam;
    s32Ret = HI_DRV_PDM_GetDispParam(HI_UNF_DISPLAY1, &stDispParam);
    if(HI_SUCCESS != s32Ret)
    {
        COM_INFO("HI_PDM_GetGrcParam err! Ret = %x\n", s32Ret);
        return s32Ret;
    }

    s32Ret = HI_UNF_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_0,&SinkCap);
    if(s32Ret != HI_SUCCESS)
    {
        COM_INFO("get edid capability Failed!\n");
        return s32Ret;
    }
    Print_EDID(&SinkCap);

    if(SinkCap.bSupportHdmi)
    {
        stDispParam.enFormat = SinkCap.enNativeFormat;
    }
    else //DVI mode
    {
        stDispParam.enFormat = HI_UNF_ENC_FMT_BUTT;
    }

    //if native formatt == butt, so we need to set detailed timing every time
    stDispParam.stDispTiming.VFB = SinkCap.stPerferTiming.u32VFB;
    stDispParam.stDispTiming.VBB = SinkCap.stPerferTiming.u32VBB;
    stDispParam.stDispTiming.VACT= SinkCap.stPerferTiming.u32VACT;
    stDispParam.stDispTiming.HFB = SinkCap.stPerferTiming.u32HFB;
    stDispParam.stDispTiming.HBB = SinkCap.stPerferTiming.u32HBB;
    stDispParam.stDispTiming.HACT= SinkCap.stPerferTiming.u32HACT;
    stDispParam.stDispTiming.VPW = SinkCap.stPerferTiming.u32VPW;
    stDispParam.stDispTiming.HPW = SinkCap.stPerferTiming.u32HPW;
    stDispParam.stDispTiming.IDV = SinkCap.stPerferTiming.bIDV;
    stDispParam.stDispTiming.IHS = SinkCap.stPerferTiming.bIHS;
    stDispParam.stDispTiming.IVS = SinkCap.stPerferTiming.bIVS;
    stDispParam.stDispTiming.AspectRatioW = SinkCap.stPerferTiming.u32ImageWidth;
    stDispParam.stDispTiming.AspectRatioH = SinkCap.stPerferTiming.u32ImageHeight;
    stDispParam.stDispTiming.bInterlace = SinkCap.stPerferTiming.bInterlace;
    stDispParam.stDispTiming.PixFreq = SinkCap.stPerferTiming.u32PixelClk;

    stDispParam.stDispTiming.ClkPara0 = 0;
    stDispParam.stDispTiming.ClkPara1 = 0;
    stDispParam.stDispTiming.VertFreq = 0;

    s32Ret = HI_DRV_PDM_UpdateDispParam(HI_UNF_DISPLAY1,&stDispParam);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_HDMI("HI_PDM_Update Param err! Ret = %x\n", s32Ret);
        return s32Ret;
    }
    return HI_SUCCESS;
}

HI_S32 HI_UNF_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_EDID_BASE_INFO_S *pSinkCap)
{
    HI_S32 s32Ret  = 0;
    HI_U32 u32Cnt = 0;

    if(!g_bHDMIResetFlag)
    {
        HW_ResetHDMITX();
        SW_ResetHDMITX();
        g_bHDMIResetFlag = HI_TRUE;
    }

    for(u32Cnt = 0; u32Cnt < 5; u32Cnt++)
    {
        s32Ret = SI_GetSinkCapability(pSinkCap);
        COM_INFO("Read edid times:%d\n",u32Cnt);
        if(s32Ret == HI_SUCCESS)
        {
            COM_INFO("read edid over\n");
            break;
        }
    }
    return s32Ret;
}
#endif

#ifdef HI_HDMI_CEC_SUPPORT
HI_S32 HDMI_SendCECCommand(HI_UNF_HDMI_CEC_CMD_S *pstCECCmd)
{
    HI_U32 u32Reg,u32Status,u32Cnt = 0;

    //0xc0:0x8e init
    WriteByteHDMITXCEC(0x8e,0x04);

    //0xc0:0x87 clear tx cec fifo
    WriteByteHDMITXCEC(0x87,0x80);

    //0xc0:0xa6 0xa7 clear cec interrupt
    WriteByteHDMITXCEC(0xa6,0x64);
    WriteByteHDMITXCEC(0xa7,0x02);

    //0xc0:0x88 CEC_TX_INIT  addr
    WriteByteHDMITXCEC(0x88,pstCECCmd->enSrcAdd);
    //0xc0:0x89 CEC_TX_DEST addr
    WriteByteHDMITXCEC(0x89,pstCECCmd->enDstAdd);
    //0xc0:0x8f CEC_TX_COMMAND
    WriteByteHDMITXCEC(0x8f,pstCECCmd->u8Opcode)


    //cec send data
    //HDMI_REG_WRITE(0xf8ce0a40,0);
    WriteByteHDMITXCEC(0x90,0)
    if(pstCECCmd->unOperand.stRawData.u8Length > 15)
    {
        COM_INFO("cec data too long!\n");
        pstCECCmd->unOperand.stRawData.u8Length = 15;
    }
    for(u32Cnt = 0; u32Cnt < pstCECCmd->unOperand.stRawData.u8Length; u32Cnt++)
    {
        //u32Reg = u32Cnt * 4;
        WriteByteHDMITXCEC((0x90 + u32Cnt),pstCECCmd->unOperand.stRawData.u8Data[u32Cnt]);
    }

    //0xc0:0x9f bit[4] send cec cmd // dual mode document err
    WriteByteHDMITXCEC(0x9f,0x10 | pstCECCmd->unOperand.stRawData.u8Length);//startup

    return HI_SUCCESS;
}
#endif


static HI_U32 HDMI_CalcTmdsClk(HI_U32 u32VideoMode, HI_UNF_HDMI_DEEP_COLOR_E enDeepColorMode)
{
    HI_U32  u32TmdsClk = 0;
       
    u32TmdsClk = VModeTables[u32VideoMode].PixClk * 10; //kHz

    COM_INFO("PixelClk: %d\n", u32TmdsClk);
    COM_INFO("u32VideoMode: %d\n", u32VideoMode);
    COM_INFO("enDeepColorMode: %d\n",enDeepColorMode);
    
    switch(enDeepColorMode)
    {
        case HI_UNF_HDMI_DEEP_COLOR_OFF: 
        case HI_UNF_HDMI_DEEP_COLOR_24BIT   : 
            u32TmdsClk = u32TmdsClk * 1;             //Ratio 1

            break;
        case HI_UNF_HDMI_DEEP_COLOR_30BIT   : 
            u32TmdsClk = (u32TmdsClk * 5) / 4 ;      //Ratio 1.25
            break;

        case HI_UNF_HDMI_DEEP_COLOR_36BIT   : 
            u32TmdsClk =  (u32TmdsClk * 3) / 2 ;     //Ratio 1.5
            break;  

        default:
            u32TmdsClk = u32TmdsClk * 1;
            break;
    }

    COM_INFO("u32TmdsClk: %d\n", u32TmdsClk);

    return u32TmdsClk;
}

static HI_UNF_ENC_FMT_E HDMI_Disp2EncFmt(HI_UNF_ENC_FMT_E SrcFmt)
{
    HI_UNF_ENC_FMT_E dstFmt = HI_UNF_ENC_FMT_BUTT;

    COM_INFO(" disp fmt:%d \n",SrcFmt);

    switch(SrcFmt)
    {
        case HI_UNF_ENC_FMT_1080P_60 :
            dstFmt = HI_UNF_ENC_FMT_1080P_60;
            break;
        case HI_UNF_ENC_FMT_1080P_50 :
            dstFmt = HI_UNF_ENC_FMT_1080P_50;
            break;
        case HI_UNF_ENC_FMT_1080P_30 :
            dstFmt = HI_UNF_ENC_FMT_1080P_30;
            break;
        case HI_UNF_ENC_FMT_1080P_25 :
            dstFmt = HI_UNF_ENC_FMT_1080P_25;
            break;
        case HI_UNF_ENC_FMT_1080P_24 :
        //case HI_UNF_ENC_FMT_1080P_24_FP:
            dstFmt = HI_UNF_ENC_FMT_1080P_24;
            break;
        case HI_UNF_ENC_FMT_1080i_60 :
            dstFmt = HI_UNF_ENC_FMT_1080i_60;
            break;
        case HI_UNF_ENC_FMT_1080i_50 :
            dstFmt = HI_UNF_ENC_FMT_1080i_50;
            break;
        case HI_UNF_ENC_FMT_720P_60 :
        //case HI_UNF_ENC_FMT_720P_60_FP:
            dstFmt = HI_UNF_ENC_FMT_720P_60;
            break;
        case HI_UNF_ENC_FMT_720P_50 :
        //case HI_UNF_ENC_FMT_720P_50_FP:
            dstFmt = HI_UNF_ENC_FMT_720P_50;
            break;
        case HI_UNF_ENC_FMT_576P_50 :
            dstFmt = HI_UNF_ENC_FMT_576P_50;
            break;
        case HI_UNF_ENC_FMT_480P_60 :
            dstFmt = HI_UNF_ENC_FMT_480P_60;
            break;
        case HI_UNF_ENC_FMT_PAL:
        //case HI_UNF_ENC_FMT_PAL_B:
        //case HI_UNF_ENC_FMT_PAL_B1:
        //case HI_UNF_ENC_FMT_PAL_D:
        //case HI_UNF_ENC_FMT_PAL_D1:
        //case HI_UNF_ENC_FMT_PAL_G:
        //case HI_UNF_ENC_FMT_PAL_H:
        //case HI_UNF_ENC_FMT_PAL_K:
        //case HI_UNF_ENC_FMT_PAL_I:
        //case HI_UNF_ENC_FMT_PAL_M:
        case HI_UNF_ENC_FMT_PAL_N:
        case HI_UNF_ENC_FMT_PAL_Nc:
        //case HI_UNF_ENC_FMT_PAL_60:
        //case HI_UNF_ENC_FMT_1440x576i_50:

        case HI_UNF_ENC_FMT_SECAM_SIN:
        case HI_UNF_ENC_FMT_SECAM_COS:
        //case HI_UNF_ENC_FMT_SECAM_L:
        //case HI_UNF_ENC_FMT_SECAM_B:
        //case HI_UNF_ENC_FMT_SECAM_G:
        //case HI_UNF_ENC_FMT_SECAM_D:
        //case HI_UNF_ENC_FMT_SECAM_K:
        //case HI_UNF_ENC_FMT_SECAM_H:
            dstFmt = HI_UNF_ENC_FMT_PAL;
            break;
        case HI_UNF_ENC_FMT_NTSC :
        case HI_UNF_ENC_FMT_NTSC_J :
        //case HI_UNF_ENC_FMT_NTSC_443 :
        //case HI_UNF_ENC_FMT_1440x480i_60:
            dstFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        case HI_UNF_ENC_FMT_861D_640X480_60 :
            dstFmt = HI_UNF_ENC_FMT_861D_640X480_60;
            break;
        case HI_UNF_ENC_FMT_VESA_800X600_60 :
            dstFmt = HI_UNF_ENC_FMT_VESA_800X600_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1024X768_60 :
            dstFmt = HI_UNF_ENC_FMT_VESA_1024X768_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1280X720_60 :
            dstFmt = HI_UNF_ENC_FMT_VESA_1280X720_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1280X800_60 :
            dstFmt = HI_UNF_ENC_FMT_VESA_1280X800_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1280X1024_60 :
            dstFmt = HI_UNF_ENC_FMT_VESA_1280X1024_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1360X768_60 :
            dstFmt = HI_UNF_ENC_FMT_VESA_1360X768_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1366X768_60 :
            dstFmt = HI_UNF_ENC_FMT_VESA_1366X768_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1400X1050_60:
            dstFmt = HI_UNF_ENC_FMT_VESA_1400X1050_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1440X900_60:
            dstFmt = HI_UNF_ENC_FMT_VESA_1440X900_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
            dstFmt = HI_UNF_ENC_FMT_VESA_1440X900_60_RB;
            break;
        case HI_UNF_ENC_FMT_VESA_1600X900_60_RB:
            dstFmt = HI_UNF_ENC_FMT_VESA_1600X900_60_RB;
            break;
        case HI_UNF_ENC_FMT_VESA_1600X1200_60:
            dstFmt = HI_UNF_ENC_FMT_VESA_1600X1200_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1680X1050_60:
            dstFmt = HI_UNF_ENC_FMT_VESA_1680X1050_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1920X1080_60:
            dstFmt = HI_UNF_ENC_FMT_VESA_1920X1080_60;
            break;
        case HI_UNF_ENC_FMT_VESA_1920X1200_60:
            dstFmt = HI_UNF_ENC_FMT_VESA_1920X1200_60;
            break;
        case HI_UNF_ENC_FMT_VESA_2048X1152_60:
            dstFmt = HI_UNF_ENC_FMT_VESA_2048X1152_60;
            break;
        //case HI_UNF_ENC_FMT_VESA_2560X1440_60_RB:
        //case HI_UNF_ENC_FMT_VESA_2560X1600_60_RB:
        //case HI_UNF_ENC_FMT_CUSTOM:
        //    dstFmt = HI_UNF_ENC_FMT_861D_640X480_60;
        //    break;
        //case HI_UNF_ENC_FMT_3840X2160_24:
        //    dstFmt = HI_UNF_ENC_FMT_3840X2160_24;
        //    break;
        //case HI_UNF_ENC_FMT_3840X2160_25:
        //    dstFmt = HI_UNF_ENC_FMT_3840X2160_25;
        //    break;
        //case HI_UNF_ENC_FMT_3840X2160_30:
        //    dstFmt = HI_UNF_ENC_FMT_3840X2160_30;
        //    break;
        //case HI_UNF_ENC_FMT_4096X2160_24:
        //    dstFmt = HI_UNF_ENC_FMT_4096X2160_24;
        //    break;
        default:
            dstFmt = HI_UNF_ENC_FMT_BUTT;
            break;
    }

    return dstFmt;
}

static HI_U8 HDMI_GetSSCInfoIndex(HI_UNF_ENC_FMT_E fmt, HI_UNF_HDMI_DEEP_COLOR_E enDeepColorMode)
{
    HI_U8 i = 0;
    HI_U8 u8Size = 0;
    HI_U8 u8Index = 0;
    HI_UNF_HDMI_DEEP_COLOR_E enDeepclr = HI_UNF_HDMI_DEEP_COLOR_24BIT;

    enDeepclr = (HI_UNF_HDMI_DEEP_COLOR_OFF == enDeepColorMode)? HI_UNF_HDMI_DEEP_COLOR_24BIT: enDeepColorMode;

    u8Size = sizeof(s_SSCInfoTables) / sizeof(HDMI_SSC_INFO_S);
    for (i = 0; i < u8Size; i++)
    {
        if ((fmt == s_SSCInfoTables[i].enUnfFmt) && (enDeepclr == s_SSCInfoTables[i].enDeepColor))
        {
            u8Index = i;
        }
    }

    return u8Index;
}


HI_U32 HDMI_Display(HI_UNF_ENC_FMT_E enHdFmt, HI_UNF_HDMI_VIDEO_MODE_E einput, HI_UNF_HDMI_VIDEO_MODE_E eoutput)
{
    HI_U8  u8AviInfoFrameByte = 0;
    HI_U8  u8VideoPath[4];
    HI_U8  pu8AviInfoFrame[32];
    HI_U32 bVideoMode = 0, VidCode = 0, bRxVideoMode = 0, bTxVideoMode = 0;
    HI_U32 retval = HI_SUCCESS, hdmi_dvi_mode = 1;
#ifdef HI_HDMI_4K_SUPPORT
    HI_BOOL Support4K = HI_FALSE;
#endif
    HI_U32 u32PixelRepetition;
    HI_UNF_HDMI_COLORSPACE_E enColorimetry;
    HI_UNF_HDMI_ASPECT_RATIO_E enAspectRate;
    HI_U32 u32TmdsClk = 0;
    HI_U8 u8Index = 0;
    HDMI_PHY_TMDS_CFG_S stPhyTmdsCfg;

#ifdef HI_HDMI_EDID_SUPPORT
    HI_UNF_EDID_BASE_INFO_S SinkCap;
    HI_S32 s32Ret  = HI_SUCCESS;
#endif
#ifdef HI_HDMI_CEC_SUPPORT
    HI_UNF_HDMI_CEC_CMD_S stCECCmd;
#endif

    memset(&stPhyTmdsCfg, 0x0, sizeof(HDMI_PHY_TMDS_CFG_S));

    /* Video Inforframe */
    enColorimetry      = HDMI_COLORIMETRY_ITU709;
    enAspectRate       = HI_UNF_HDMI_ASPECT_RATIO_16TO9;
    u32PixelRepetition = HI_FALSE;

#ifdef HI_HDMI_EDID_SUPPORT
    s32Ret = HI_UNF_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_0,&SinkCap);
    if(HI_SUCCESS == s32Ret)
    {
        if(SinkCap.bSupportHdmi)
        {
            hdmi_dvi_mode = 1;
        }
        else //dvi
        {
            hdmi_dvi_mode = 0;
        }
    }
#endif

    if(HI_UNF_ENC_FMT_1080P_60 == enHdFmt)
    {
        VidCode = 16;
        bVideoMode = 0x0b;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_1080P_60\n");
    }
    else if(HI_UNF_ENC_FMT_1080P_50 == enHdFmt)
    {
        VidCode = 31;
        bVideoMode = 0x18;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_1080P_50\n");
    }
    else if(HI_UNF_ENC_FMT_1080P_30 == enHdFmt)
    {
        VidCode = 34;
        bVideoMode = 0x1b;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_1080P_30\n");
    }
    else if(HI_UNF_ENC_FMT_1080P_25 == enHdFmt)
    {
        VidCode = 33;
        bVideoMode = 0x1a;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_1080P_25\n");
    }
    else if(HI_UNF_ENC_FMT_1080P_24 == enHdFmt)
    {
        VidCode = 32;
        bVideoMode = 0x19;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_1080P_24\n");
    }
    else if(HI_UNF_ENC_FMT_1080i_60 == enHdFmt)
    {
        VidCode = 5;
        bVideoMode = 0x03;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_1080i_60\n");
    }
    else if(HI_UNF_ENC_FMT_1080i_50 == enHdFmt)
    {
        VidCode = 20;
        bVideoMode = 0x0e;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_1080i_50\n");
    }
    else if(HI_UNF_ENC_FMT_720P_60 == enHdFmt)
    {
        VidCode = 4;
        bVideoMode = 0x02;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_720P_60\n");
    }
    else if(HI_UNF_ENC_FMT_720P_50 == enHdFmt)
    {
        VidCode = 19;
        bVideoMode = 0x0d;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_720P_50\n");
    }
    else if(HI_UNF_ENC_FMT_576P_50 == enHdFmt)
    {
        enColorimetry = HDMI_COLORIMETRY_ITU601;
        enAspectRate  = HI_UNF_HDMI_ASPECT_RATIO_4TO3;
        VidCode = 17;
        bVideoMode = 0x0c;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_576P_50\n");
    }
    else if(HI_UNF_ENC_FMT_480P_60 == enHdFmt)
    {
        enColorimetry = HDMI_COLORIMETRY_ITU601;
        enAspectRate  = HI_UNF_HDMI_ASPECT_RATIO_4TO3;
        VidCode = 2;
        bVideoMode = 0x01;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_480P_60\n");
    }
    else if(HI_UNF_ENC_FMT_PAL == enHdFmt)
    {
        enColorimetry = HDMI_COLORIMETRY_ITU601;
        enAspectRate  = HI_UNF_HDMI_ASPECT_RATIO_4TO3;
        u32PixelRepetition = HI_TRUE;
        VidCode = 21;
        bVideoMode = 0x0f;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_PAL\n");
    }
    else if(HI_UNF_ENC_FMT_NTSC == enHdFmt)
    {
        enColorimetry = HDMI_COLORIMETRY_ITU601;
        enAspectRate  = HI_UNF_HDMI_ASPECT_RATIO_4TO3;
        u32PixelRepetition = HI_TRUE;
        VidCode = 0x06;
        bVideoMode = 0x04;
        COM_INFO("HDMI input format is HI_UNF_ENC_FMT_NTSC\n");
    }
    // for surpport VGA format bootlogo
    else if(HI_UNF_ENC_FMT_861D_640X480_60 == enHdFmt)
    {
        COM_INFO("Set 640X480P_60000 enTimingMode\n");
        enColorimetry      = HDMI_COLORIMETRY_ITU601;
        enAspectRate       = HI_UNF_HDMI_ASPECT_RATIO_4TO3;
        u32PixelRepetition = HI_FALSE;
        VidCode = 0x01;

    }
    else if ((HI_UNF_ENC_FMT_VESA_800X600_60 <= enHdFmt) && (HI_UNF_ENC_FMT_BUTT > enHdFmt))
    {
        //hdmi_dvi_mode = 0;
        COM_INFO("DVI timing mode enTimingMode\n");
        enColorimetry      = HDMI_COLORIMETRY_ITU601;
        enAspectRate       = HI_UNF_HDMI_ASPECT_RATIO_4TO3;
        u32PixelRepetition = HI_FALSE;     
    }
    //OpenHdmiDevice();

    //WriteDefaultConfigToEEPROM(); /* eeprom.c */
    if(!g_bHDMIResetFlag)
    {
        COM_INFO("come to SI_HW_ResetHDMITX\n");
        HW_ResetHDMITX();
        SW_ResetHDMITX();
    }
    
    UpdateTX_656(bVideoMode);
    //SetIClk( ReadByteEEPROM(EE_TX_ICLK_ADDR) );
    SetIClk(0);

    WakeUpHDMITX();
#ifdef HI_HDMI_CEC_SUPPORT
    memset(&stCECCmd, 0, sizeof(HI_UNF_HDMI_CEC_CMD_S));
    stCECCmd.enDstAdd = HI_UNF_CEC_LOGICALADD_BROADCAST;
    stCECCmd.enSrcAdd = 0x03;
    stCECCmd.u8Opcode = 0x0d;
    stCECCmd.unOperand.stUIOpcode = 0x0;
    stCECCmd.unOperand.stRawData.u8Length = 0;
    HDMI_SendCECCommand(&stCECCmd);
#ifdef HI_HDMI_EDID_SUPPORT
    stCECCmd.enDstAdd = HI_UNF_CEC_LOGICALADD_TV;
    HDMI_SendCECCommand(&stCECCmd);
#endif
#endif

#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    //之前的一个规避方案。音频需要打开时钟，输出0电平。
    // 部分电视，如果只开启了hdmi mode，而没有开启audio，会有杂音。
    crg70.u32 =  g_pHDMIRegCrg->PERI_CRG70.u32;

    // In 3716Cv200 series chip,when aiao_mclk_sel == 0,audio mclock is 99xMhz
    crg70.bits.aiao_cken        = 1;
    crg70.bits.aiao_srst_req    = 0;
    crg70.bits.aiao_clk_sel     = 0;
    crg70.bits.aiaoclk_skipcfg  = 0;
    crg70.bits.aiaoclk_loaden   = 0;
    crg70.bits.aiao_mclk_sel    = 0;

     g_pHDMIRegCrg->PERI_CRG70.u32 = crg70.u32;

    //config AO =>HDMI mclk to 12.288Mhz
    //HDMI Audio clk Frequency division
    HDMI_REG_WRITE(0xf8cd0158, 0x333333);
    HDMI_REG_WRITE(0xf8cd015c, 0x133);

    HDMI_REG_WRITE(0xf8ce040c, 0x0);
    HDMI_REG_WRITE(0xf8ce0410, 0x18);
    HDMI_REG_WRITE(0xf8ce0414, 0x0);

    //I2S通路打开，用于计算cts
    HDMI_REG_WRITE(0xf8ce0450,0x10);
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    //close N/CTS packet
    WriteByteHDMITXP1(ACR_CTRL_ADDR,0X04);

    /* Set Video Path */
    COM_INFO("einput:%d, eoutput:%d\n", einput, eoutput);
    if(HI_UNF_HDMI_VIDEO_MODE_RGB444 == einput)
    {
        bRxVideoMode = 0;  /* inRGB24[] */
        if(HI_UNF_HDMI_VIDEO_MODE_RGB444 == eoutput)
        {
            bTxVideoMode = 0;
        }
        else
        {
            COM_INFO("Error output mode when input RGB444\n");
            bTxVideoMode = 0;
        }
    }
    else if(HI_UNF_HDMI_VIDEO_MODE_YCBCR444 == einput)
    {
        bRxVideoMode = 2; /* inYCbCr24[] */
        if(HI_UNF_HDMI_VIDEO_MODE_RGB444 == eoutput)
        {
            bTxVideoMode = 0;
        }
        else if(HI_UNF_HDMI_VIDEO_MODE_YCBCR444 == eoutput)
        {
            bTxVideoMode = 1;
        }
        else
        {
            COM_INFO("Error output mode when input YCbCr444\n");
            bTxVideoMode = 0;
        }
    }
    else if(HI_UNF_HDMI_VIDEO_MODE_YCBCR422 == einput)
    {
        bRxVideoMode = 3; /* inYC24[] */
        if(HI_UNF_HDMI_VIDEO_MODE_RGB444 == eoutput)
        {
            bTxVideoMode = 0;
        }
        else if(HI_UNF_HDMI_VIDEO_MODE_YCBCR444 == eoutput)
        {
            bTxVideoMode = 1;
        }
        else
        {
            bTxVideoMode = 2;
        }
    }
    u8VideoPath[0] = bRxVideoMode;
    u8VideoPath[1] = bTxVideoMode;

    u8VideoPath[3] = 0xFF;

    siiSetVideoPath(bVideoMode, u8VideoPath);

    /* HDMI AVI Infoframe is use Version = 0x02 in HDMI1.3 */
    /* Fill Data Byte 1 */
    u8AviInfoFrameByte=0;
    /* Scan information bits 0-1:S0,S1 */
    /*
           S1 S0 Scan Information
           0   0    No Data
           0   1   overscanned
           1   0   underscanned
           1   1   Future
    */
    u8AviInfoFrameByte |= (HI_U8)0x00;
    /* Bar Information bits 2-3:B0,B1 */
    /*
         B1 B0  Bar Info
         0   0  not valid
         0   1  Vert. Bar Info valid
         1   0  Horiz.Bar Info Valid
         1   1  Vert. and Horiz. Bar Info valid
    */
    u8AviInfoFrameByte |= (HI_U8) 0x00;
    /* Active information bit 4:A0 */
    /*
         A0 Active Format Information Present
         0        No Data
         1      Active Format(R0...R3) Information valid
    */
    u8AviInfoFrameByte |= (HI_U8)0x10;
    /* Output Type bits 5-6:Y0,Y1 */
    /*
         Y1 Y0  RGB orYCbCr
         0  0   RGB (default)
         0  1   YCbCr 4:2:2
         1  0   YCbCr 4:4:4
         1  1    Future
    */
    switch (eoutput)
    {
        case HI_UNF_HDMI_VIDEO_MODE_RGB444 :
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
        case HI_UNF_HDMI_VIDEO_MODE_YCBCR422 :
            u8AviInfoFrameByte |= (HI_U8)0x20;
            break;
        case HI_UNF_HDMI_VIDEO_MODE_YCBCR444 :
            u8AviInfoFrameByte |= (HI_U8)0x40;
            break;
        default :
            COM_INFO("Error Output format *******\n");
            retval = (HI_U32)HI_FAILURE;
            break;
    }
    pu8AviInfoFrame[0]= (HI_U8)(u8AviInfoFrameByte&0x7F);

    /* Fill Data byte 2 */
    u8AviInfoFrameByte=0;
    /* Active Format aspect ratio bits 0-3:R0...R3 */
    /*
        R3 R2 R1 R0  Active Format Aspect Ratio
        1  0  0  0   Same as picture aspect ratio
        1  0  0  1   4:3 (Center)
        1  0  1  0   16:9 (Center)
        1  0  1  1   14:9 (Center)
    */
#if 0
    switch (enAspectRate)
    {
        case HI_UNF_HDMI_ASPECT_RATIO_4TO3 :
            u8AviInfoFrameByte |= (HI_U8) 0x09;
            break;
        case HI_UNF_HDMI_ASPECT_RATIO_16TO9 :
            u8AviInfoFrameByte |= (HI_U8) 0x0A;
            break;
        case HI_UNF_HDMI_ASPECT_RATIO_14TO9:
            u8AviInfoFrameByte |= (HI_U8) 0x0B;
            break;
        default :
            u8AviInfoFrameByte |= (HI_U8) 0x08;
            break;
     }
#else
    COM_INFO("Active Format aspect ratio  set to 0x1000:Same as picture aspect ratio\n");
    u8AviInfoFrameByte |= (HI_U8) 0x08;
#endif
    /* Picture aspect ratio bits 4-5:M0.M1 */
    /*
        M1 M0     Picture Aspect Ratio
        0  0        No Data
        0  1        4:3
        1  0        16:9
        1  1        Future
    */
    switch (enAspectRate)
    {

        case HI_UNF_HDMI_ASPECT_RATIO_4TO3 :
             u8AviInfoFrameByte |= (HI_U8) 0x10;
             break;
        case HI_UNF_HDMI_ASPECT_RATIO_16TO9 :
             u8AviInfoFrameByte |= (HI_U8) 0x20;
                break;
            default :
             u8AviInfoFrameByte |=  (HI_U8) 0x00;
             break;
     }

    /* Colorimetry bits 6-7 of data byte2:C0,C1 */
    /*
        C1 C0    Colorim
        0   0    No Data
        0   1    SMPTE 170M[1] ITU601 [5]
        1   0    ITU709 [6] 1 0 16:9
        1   1    Extended Colorimetry Information Valid (colorimetry indicated in bits EC0, EC1,
                     EC2. See Table 11)
    */
    switch (enColorimetry)
    {
        case HDMI_COLORIMETRY_ITU601 :
            u8AviInfoFrameByte |= (HI_U8)0x40;
            break;
        case HDMI_COLORIMETRY_ITU709 :
            u8AviInfoFrameByte |= (HI_U8)0x80;
            break;
        case HDMI_COLORIMETRY_XVYCC_601 :
        case HDMI_COLORIMETRY_XVYCC_709 :
        case HDMI_COLORIMETRY_EXTENDED :
            u8AviInfoFrameByte |= (HI_U8)0xC0;
            break;
        default :
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
    }
    pu8AviInfoFrame[1] = (HI_U8)(u8AviInfoFrameByte&0XFF);

    /* Fill data Byte 3: Picture Scaling bits 0-1:SC0,SC1 */
    u8AviInfoFrameByte=0;
    /*
       SC1  SC0   Non-Uniform Picture Scaling
       0     0    No Known non-uniform Scaling
       0     1    Picture has been scaled horizontally
       1     0    Picture has been scaled vertically
       1     1    Picture has been scaled horizontally and vertically
    */
    u8AviInfoFrameByte |= (HI_U8)0x00;
    /* Fill data Byte 3: RGB quantization range bits 2-3:Q0,Q1 */
    /*
        Q1  Q0  RGB Quantization Range
        0   0   Default (depends on video format)
        0   1   Limited Range
        1   0   Full Range
        1   1   Reserved
    */
    u8AviInfoFrameByte |= (HI_U8)0x00;
    /* Fill data Byte 3: Extended colorimtery range bits 4-6:EC0,EC1,EC2 */
    /*
        EC2 EC1 EC0   Extended Colorimetry
        0   0   0      xvYCC601
        0   0   1      xvYCC709
        -   -   -      All other values reserved
    */
    /*
        xvYCC601 is based on the colorimetry defined in ITU-R BT.601.
        xvYCC709 is based on the colorimetry defined in ITU-R BT.709.
    */
    switch (enColorimetry)
    {
        case HDMI_COLORIMETRY_XVYCC_601 :
            u8AviInfoFrameByte |= (HI_U8)0x00;
            break;
        case HDMI_COLORIMETRY_XVYCC_709 :
            u8AviInfoFrameByte |= (HI_U8)0x10;
            break;
        default:
            break;
    }
    /* Fill data Byte 3: IT content bit 7:ITC */
    /*
        ITC  IT content
        0    No data
        1    IT content
    */

    u8AviInfoFrameByte &= ~0x80;
    pu8AviInfoFrame[2] = (HI_U8)(u8AviInfoFrameByte&0XFF);

    /* Fill Data byte 4: Video indentification data Code, Bit0~7:VIC0 ~ VIC6 */
    //u8AviInfoFrameByte=0;
    pu8AviInfoFrame[3] = (HI_U8)(VidCode & 0x7F);

    /* Fill Data byte 5: Pixel repetition, Bit0~3:PR0~PR3 */
    /*
        PR3 PR2 PR1 PR0 Pixel Repetition Factor
        0   0   0    0   No Repetition (i.e., pixel sent once)
        0   0   0    1   pixel sent 2 times (i.e., repeated once)
        0   0   1    0   pixel sent 3 times
        0   0   1    1   pixel sent 4 times
        0   1   0    0   pixel sent 5 times
        0   1   0    1   pixel sent 6 times
        0   1   1    0   pixel sent 7 times
        0   1   1    1   pixel sent 8 times
        1   0   0    0   pixel sent 9 times
        1   0   0    1   pixel sent 10 times
        0Ah-0Fh          Reserved
    */
    pu8AviInfoFrame[4]= (HI_U8)(u32PixelRepetition& 0x0F);

     /* Fill Data byte 6  */
    pu8AviInfoFrame[5] = 0x00;

    /* Fill Data byte 7  */
    pu8AviInfoFrame[6] = 0x00;

    /* Fill Data byte 8  */
    pu8AviInfoFrame[7] = 0x00;

    /* Fill Data byte 9  */
    pu8AviInfoFrame[8] = 0x00;

    /* Fill Data byte 10  */
    pu8AviInfoFrame[9] = 0x00;

    /* Fill Data byte 11  */
    pu8AviInfoFrame[10] = 0x00;

    /* Fill Data byte 12  */
    pu8AviInfoFrame[11] = 0x00;

    /* Fill Data byte 13  */
    pu8AviInfoFrame[12] = 0x00;

    /*
    720X480P_60000  :0x51,0x59,0x00,0x02,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    720X576P_50000  :0x51,0x59,0x00,0x11,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1280X720P_50000 :0x51,0xaa,0x00,0x13,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1280X720P_60000 :0x51,0xaa,0x00,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1920X1080i_50000:0x51,0xaa,0x00,0x14,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1920X1080i_60000:0x51,0xaa,0x00,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1920X1080P_24000:0x51,0xaa,0x00,0x20,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1920X1080P_25000:0x51,0xaa,0x00,0x21,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1920X1080P_30000:0x51,0xaa,0x00,0x22,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1920X1080P_50000:0x51,0xaa,0x00,0x1f,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    1920X1080P_60000:0x51,0xaa,0x00,0x10,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    */

#if 0
    HI_U8 Index;

    COM_INFO("The Content of the AVI version2 info frame is:\n");
    for (Index=0; Index<17; Index++)
    {
        COM_INFO("0x%02x,",pu8AviInfoFrame[Index]);
    }
    COM_INFO("\n");
#endif


#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
#if    defined (CHIP_TYPE_hi3751v100)   \
    || defined(CHIP_TYPE_hi3796cv100_a) \
    || defined(CHIP_TYPE_hi3796cv100)   \
    || defined(CHIP_TYPE_hi3798cv100_a) \
    || defined(CHIP_TYPE_hi3798cv100)
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
#endif

#ifdef HI_HDMI_4K_SUPPORT
    if (Is4KFmt(enHdFmt))
    {
        Support4K = HI_TRUE;

        COM_INFO("Is 4K fmt \n");

        TX_PHY_4KRisingTime(HI_TRUE);
        Setting4K(enHdFmt);
        EnableInfoFrame(VENDORSPEC_TYPE);
    }
    else
    {
        COM_INFO("Is not 4K fmt \n");
    }
#endif

    u32TmdsClk = HDMI_CalcTmdsClk(bVideoMode, HI_UNF_HDMI_DEEP_COLOR_24BIT);
    SI_TX_PHY_TmdsSet(u32TmdsClk, (HI_U32)HI_UNF_HDMI_DEEP_COLOR_24BIT);

    stPhyTmdsCfg.u32DeepColor          = (HI_U32)HI_UNF_HDMI_DEEP_COLOR_24BIT;
    stPhyTmdsCfg.u32TmdsClk            = u32TmdsClk;
    u8Index = HDMI_GetSSCInfoIndex(enHdFmt, HI_UNF_HDMI_DEEP_COLOR_24BIT);

    stPhyTmdsCfg.stSSCInfo.bEnable     = (0 == u8Index)? HI_FALSE: s_bHdmiSSCEnable;
    stPhyTmdsCfg.stSSCInfo.u32PixelClk = VModeTables[bVideoMode].PixClk * 10;
    stPhyTmdsCfg.stSSCInfo.u32SscAmptd = s_SSCInfoTables[u8Index].u32SscAmptd;
    stPhyTmdsCfg.stSSCInfo.u32SscFreq  = s_SSCInfoTables[u8Index].u32SscFreq;
    #ifdef CHIP_TYPE_hi3716mv330
    SI_TX_PHY_SSCSet(&stPhyTmdsCfg);
    #endif
    DelayMS(10);

//BlockWriteEEPROM( 13, EE_TXAVIINFO_ADDR, pu8AviInfoFrame);
    if(hdmi_dvi_mode)
    {
        COM_INFO("hdmi_dvi_mode\n");
        SendAVIInfoFrame(pu8AviInfoFrame,13);
        EnableInfoFrame(AVI_TYPE);
    }

#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    if ((enHdFmt <= HI_UNF_ENC_FMT_720P_50) || Support4K)
    {
        // HD TV Fmt Atribute
        TX_PHY_HighBandwidth(HI_TRUE);
    }
    else
    {
        TX_PHY_HighBandwidth(HI_FALSE);
    }

    if(Support4K)
    {
        TX_PHY_SwingCtrl(SWING_300M);
    }
    else if((enHdFmt == HI_UNF_ENC_FMT_861D_640X480_60)
        || (enHdFmt == HI_UNF_ENC_FMT_576P_50)
        || (enHdFmt == HI_UNF_ENC_FMT_480P_60)
        
        || (enHdFmt == HI_UNF_ENC_FMT_PAL)
        || (enHdFmt == HI_UNF_ENC_FMT_PAL_N)
        || (enHdFmt == HI_UNF_ENC_FMT_PAL_Nc)
        
        || (enHdFmt == HI_UNF_ENC_FMT_NTSC)
        || (enHdFmt == HI_UNF_ENC_FMT_NTSC_J)
        || (enHdFmt == HI_UNF_ENC_FMT_NTSC_PAL_M)
    
        || (enHdFmt == HI_UNF_ENC_FMT_SECAM_SIN)
        || (enHdFmt == HI_UNF_ENC_FMT_SECAM_COS))
    {
        TX_PHY_SwingCtrl(SWING_27M);
    }
    else
    {
        TX_PHY_SwingCtrl(SWING_NOMAL);
    }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    TX_SetHDMIMode(hdmi_dvi_mode);    //for hdmi

    //SendCP_Packet(OFF);
    {
        HI_U8 RegVal;
        WriteByteHDMITXP1( CP_IF_ADDR, BIT_CP_AVI_MUTE_CLEAR);
        RegVal = ReadByteHDMITXP1( INF_CTRL2 );
        WriteByteHDMITXP1(INF_CTRL2, RegVal | BIT_CP_ENABLE | BIT_CP_REPEAT);
    }

    SI_TX_PHY_EnableHdmiOutput();


    return retval;
}

/******************************************************************************/
/* Unf interface                                                              */
/******************************************************************************/
HI_S32 HI_UNF_HDMI_Init()
{
    COM_INFO(">>> HI_UNF_HDMI_Init in...\n");

    HW_ResetHDMITX();
    SW_ResetHDMITX();
    SI_TX_PHY_DisableHdmiOutput();
    SI_TX_PHY_PowerDown(HI_TRUE); 
    g_bHDMIResetFlag = HI_TRUE;

    COM_INFO("<<< HI_UNF_HDMI_Init out...\n");
    return HI_SUCCESS;
}

HI_S32 HI_UNF_HDMI_Open(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_ENC_FMT_E enFormat)
{
    HI_S32  s32Ret = HI_FAILURE;

    COM_INFO(">>> HI_UNF_HDMI_Open in...\n");

    s32Ret = HDMI_Display(enFormat, HI_UNF_HDMI_VIDEO_MODE_YCBCR444, HI_UNF_HDMI_VIDEO_MODE_YCBCR444);

    COM_INFO("<<< HI_UNF_HDMI_Open out...\n");

    return s32Ret;
}

HI_S32 HI_UNF_HDMI_Start(HI_UNF_HDMI_ID_E enHdmi)
{
    COM_INFO(">>> HI_UNF_HDMI_Start in...\n");

    SI_TX_PHY_EnableHdmiOutput();
    
    COM_INFO("<<< HI_UNF_HDMI_Start out...\n");

    return HI_SUCCESS;
}

HI_S32 HI_UNF_HDMI_Close(HI_UNF_HDMI_ID_E enHdmi)
{
    COM_INFO(">>> HI_UNF_HDMI_Close in...\n");

    SI_TX_PHY_DisableHdmiOutput();
    SI_TX_PHY_PowerDown(HI_TRUE);

    COM_INFO("<<< HI_UNF_HDMI_Close out...\n");
    
    return HI_SUCCESS;
}

HI_S32 HI_UNF_HDMI_DeInit(void)
{
    COM_INFO(">>> HI_UNF_HDMI_DeInit in...\n");

    COM_INFO("<<< HI_UNF_HDMI_DeInit out...\n");

    return HI_SUCCESS;
}


/******************************************************************************/
/* Drv interface                                                              */
/******************************************************************************/
HI_U32 HI_DRV_HDMI_UpdateStatus(void)
{
#if defined(CHIP_TYPE_hi3798mv100)  \
 || defined(CHIP_TYPE_hi3716mv310)  \
 || defined(CHIP_TYPE_hi3716mv320)  \
 || defined(CHIP_TYPE_hi3716mv330)
    static HI_U32 u32HDMI_status = HI_FALSE;

    COM_INFO(">>> HI_DRV_HDMI_UpdateStatus in...\n");

    if(HI_FALSE == g_bHDMI_content_flag)
    {
        COM_INFO("HDMI has no Content from VO\n");
        return HI_FALSE;
    }
    
    COM_INFO("HDMI status(%d) has changed to %d,TX_STAT_ADDR:%x\n", u32HDMI_status, TX_Status(),ReadByteHDMITXP0(TX_STAT_ADDR));

    if(u32HDMI_status != TX_Status())
    {
        COM_INFO("HDMI status(%d) has changed to %d\n", u32HDMI_status, TX_Status());
        u32HDMI_status = TX_Status();
    }
    else
    {
        COM_INFO("HDMI status(%d) has not been changed.\n", u32HDMI_status);
        return u32HDMI_status;
    }
    
    if (!u32HDMI_status )
    {
        COM_INFO("HDMI status : %d, Disable Output & PowerOff PHY\n", u32HDMI_status);
        SI_TX_PHY_DisableHdmiOutput();
        SI_TX_PHY_PowerDown(HI_TRUE);
    }
    else
    {
        COM_INFO("HDMI status : %d, Enable Output & PowerOn PHY\n", u32HDMI_status);
        SI_TX_PHY_EnableHdmiOutput();
        SI_TX_PHY_PowerDown(HI_FALSE);
        udelay(10);
    } 
    COM_INFO("<<< HI_DRV_HDMI_UpdateStatus out...\n");

#endif

    return u32HDMI_status;
}


HI_S32 HI_DRV_HDMI_Init(void)
{
   COM_INFO(">>> HI_DRV_HDMI_Init in...\n");

   g_u32HDMI_update_status_flag = 1;

   COM_INFO("<<< HI_DRV_HDMI_Init out...\n");
   
   return HI_SUCCESS;
}

HI_S32 HI_DRV_HDMI_Open(HI_UNF_ENC_FMT_E enFormat)
{
    HI_S32 s32Ret = HI_SUCCESS;
#ifdef CHIP_TYPE_hi3716mv310
    HI_U32 i = 0;      
#endif

    COM_INFO(">>> HI_DRV_HDMI_Open in...\n");

#ifdef CHIP_TYPE_hi3716mv310
    for(i = 0; i < HDMI_MAX_WAIT_RSEN_COUNT; i++)
    {
        s32Ret = HI_DRV_HDMI_UpdateStatus();
        if(HI_FALSE == s32Ret)
        {   
            s_s32HDMIConnect = HI_FALSE;
            HI_UNF_HDMI_Init();
            DelayMS(10);
            COM_INFO("Hdmi is not connected,try again! %d ms\n", 10*i);
        }
        else
        {
            s_s32HDMIConnect = HI_TRUE;
            break;
        }
    }
#else
    s32Ret = HI_DRV_HDMI_UpdateStatus();
    if(HI_FALSE == s32Ret)
    {   
        s_s32HDMIConnect = HI_FALSE;
        COM_INFO("HI_DRV_HDMI_Open : HDMI disconnected\n"); 
    }
    else
    {
        s_s32HDMIConnect = HI_TRUE;
    }
#endif
    
    s32Ret = HI_UNF_HDMI_Open(HI_UNF_HDMI_ID_0, HDMI_Disp2EncFmt(enFormat));

    COM_INFO("<<< HI_DRV_HDMI_Open out...\n");

    return s32Ret;
}

HI_S32 HI_DRV_HDMI_Start(void)
{
    HI_S32 s32Ret = HI_SUCCESS;   

    COM_INFO(">>> HI_DRV_HDMI_Start in...\n");

    s32Ret = HI_UNF_HDMI_Start(HI_UNF_HDMI_ID_0);

    COM_INFO("<<< HI_DRV_HDMI_Start out...\n");

    return s32Ret;
}

HI_S32 HI_DRV_HDMI_DeInit(void)
{
    HI_S32 s32Ret = HI_SUCCESS;   

    COM_INFO(">>> HI_DRV_HDMI_DeInit in...\n");

    s32Ret = HI_UNF_HDMI_DeInit();

    COM_INFO("<<< HI_DRV_HDMI_DeInit out...\n");

    return s32Ret;
}

HI_S32 HI_DRV_HDMI_Close(void)
{
    HI_S32 s32Ret = HI_SUCCESS;   

    COM_INFO(">>> HI_DRV_HDMI_Close in...\n");

    s32Ret = HI_UNF_HDMI_Close(HI_UNF_HDMI_ID_0);

    COM_INFO("<<< HI_DRV_HDMI_Close out...\n");

    return s32Ret;
}

HI_S32 HI_DRV_HDMI(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_ENC_FMT_E enFormat)
{
    HI_S32 Ret = HI_SUCCESS;

    COM_INFO(">>> HI_DRV_HDMI in...\n");
    
    Ret = HI_DRV_HDMI_Init();
    if (HI_SUCCESS != Ret)
    {
        COM_INFO("call HI_DRV_HDMI_Init failed.\n");
        return Ret;
    }    

    g_bHDMI_content_flag = HI_TRUE;
    /* hdmi use the hd format */
    Ret = HI_DRV_HDMI_Open(enFormat);
    if((HI_SUCCESS != Ret) || (s_s32HDMIConnect != HI_TRUE))
    {
        COM_INFO("HI_DRV_HDMI_Open err! Ret = %x\n", Ret); 
        HI_DRV_HDMI_DeInit();
        return Ret; 
    }

    Ret = HI_DRV_HDMI_Start();
    if(HI_SUCCESS != Ret)
    {
        COM_INFO("HI_DRV_HDMI_Start err! Ret = %x\n", Ret);
        HI_DRV_HDMI_DeInit();
        HI_DRV_HDMI_Close();
        return Ret; 
    }  
   
    SI_TX_PHY_EnableHdmiOutput();
    SI_TX_PHY_PowerDown(HI_FALSE);

    COM_INFO("<<< HI_DRV_HDMI out...\n");

    return HI_SUCCESS;
}


#ifdef HI_HDMI_EDID_SUPPORT
HI_S32 HI_DRV_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_EDID_BASE_INFO_S *pSinkCap)
{
    HI_S32 s32Ret = HI_SUCCESS;

    COM_INFO(">>> HI_DRV_HDMI in...\n");

    s32Ret = HI_UNF_HDMI_GetSinkCapability(enHdmi, pSinkCap);

    COM_INFO("<<< HI_DRV_HDMI out...\n");

    return s32Ret;
}
#endif

