/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mplayer.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/01/26
  Description   :
  History       :
  1.Date        : 2010/01/26
    Author      : w58735
    Modification: Created file

******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <pthread.h>

#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

#include <sys/time.h>
#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"
#include "hi_unf_ecs.h"
#include "hi_adp_mpi.h"
#include "hi_adp_audio.h"
#include "hi_adp_search.h"
#include "hi_adp_tuner.h"

#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
#include "hi_adp.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_boardcfg.h"

#include "hi_go.h"
#include "hi_go_decoder.h"

#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif


#define AVPLAY_NUM  1

static pthread_t   g_TdeThd;
HI_BOOL     g_bStopTdeThread = HI_FALSE;

static HI_CHAR *aszFileName = "12.jpg";

#ifdef DEMO_FOR_DVB_S_S2
static HI_U32 s_u32TunerSrate = 27500000;
#else
static HI_U32 s_u32TunerSrate = 6875000;
#endif

static HI_U32 s_u32TunerFreq = 618000;
static HI_U32 s_u32TunerModType = HI_UNF_MOD_TYPE_QAM_64;

PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;

HI_VOID TdeThread(HI_VOID *args)
{
    HI_S32 ret;
    HI_HANDLE hDecSurface, hLayer, hLayerSurface;
    HI_RECT stRect;
    HI_RECT stRect2;
    HIGO_LAYER_INFO_S stLayerInfo ;
    HIGO_BLTOPT_S stBltOpt = {0};
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
    HIGO_DEC_ATTR_S stSrcDesc;
    HI_HANDLE hDecoder;
    HI_U8 u8Alpha;
    HI_U32 u32RunTimes = 0;
    struct timeval pretv;
    struct timeval curtv;

    /**initial resource*/
    ret  = HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
        return ;
    }
    ret = HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return ;
    }

    stLayerInfo.PixelFormat = HIGO_PF_8888;

    stLayerInfo.CanvasWidth = 1920;
    stLayerInfo.CanvasHeight = 1080;
    stLayerInfo.ScreenWidth = 1920;
    stLayerInfo.ScreenHeight = 1080;
#if 0    
    stLayerInfo.DisplayWidth = 1920;
    stLayerInfo.DisplayHeight = 1080;
#endif    
    /**create the graphic layer and get the handler */
    ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return ;
    }
    HI_GO_GetLayerAlpha(hLayer, &u8Alpha);
    sample_printf("alpha = %d\n", u8Alpha);
    u8Alpha = 0x80;
    HI_GO_SetLayerAlpha(hLayer, u8Alpha);
    ret = HI_GO_GetLayerSurface(hLayer, &hLayerSurface);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return ;
    }


    stRect.x =0;
    stRect.y = 0;
    stRect.w = stLayerInfo.ScreenWidth;
    stRect.h = stLayerInfo.ScreenHeight;
    
    stRect2 = stRect;

    sample_printf("w:%d, h:%d\n", stRect.w, stRect.h);
    stBltOpt.EnableScale = HI_TRUE;

    /** clean the graphic layer Surface */
    HI_GO_FillRect(hLayerSurface, NULL, 0xff0000ff, HIGO_COMPOPT_NONE);

    /**decoding*/

    /** create decode*/
    stSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    stSrcDesc.SrcInfo.pFileName = aszFileName;
    ret = HI_GO_CreateDecoder(&stSrcDesc, &hDecoder);
    if (HI_SUCCESS != ret)
    {
        return ;
    }

    /** decode it to Surface */
    ret  = HI_GO_DecImgData(hDecoder, 0, NULL, &hDecSurface);
    ret |= HI_GO_DestroyDecoder(hDecoder);

    gettimeofday(&pretv, HI_NULL);
    sample_printf("now sec : %d\n", (HI_U32)pretv.tv_sec);

    while(g_bStopTdeThread != HI_TRUE)
    {  
        u32RunTimes ++;
        /** Blit it to graphic layer Surface */
        ret = HI_GO_Blit(hDecSurface, &stRect2, hLayerSurface, &stRect, &stBltOpt);
        /** fresh display*/
        HI_GO_RefreshLayer(hLayer, &stRect2);
        
        stRect.x +=2;
        if(stRect.x > 500)
        {
            stRect.x = 0;
        }

        gettimeofday(&curtv, HI_NULL);
        if((curtv.tv_sec - pretv.tv_sec) >= 10)
        {
            sample_printf("PicFps:%d\n", u32RunTimes/10);
            u32RunTimes = 0;
            stRect.x = 0;
            pretv = curtv;
        }

        usleep(60000);
    }

    /**  free Surface */
    HI_GO_FreeSurface(hDecSurface);
    
    HI_GO_Deinit();
    return ;
}

HI_U32 Tuner_GetQamType(HI_U32 QamType)
{
    HI_U32 u32QamType = HI_UNF_MOD_TYPE_QAM_64;

    switch (QamType)
    {
        case 16 :
            u32QamType = HI_UNF_MOD_TYPE_QAM_16;
            break;
        case 32 :
            u32QamType = HI_UNF_MOD_TYPE_QAM_32;
            break;
        case 64 :
            u32QamType = HI_UNF_MOD_TYPE_QAM_64;
            break;
        case 128 :
            u32QamType = HI_UNF_MOD_TYPE_QAM_128;
            break;
        case 256 :
            u32QamType = HI_UNF_MOD_TYPE_QAM_256;
            break;
        case 512 :
            u32QamType = HI_UNF_MOD_TYPE_QAM_512;
            break;            
        default:
            u32QamType = HI_UNF_MOD_TYPE_QAM_64; 
    }

    return u32QamType;
}
HI_S32 Create_Demux_Resource(HI_VOID)
{
    HI_S32   Ret;
    HI_UNF_DMX_PORT_ATTR_S PortAttr;

    Ret = HI_UNF_DMX_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_DMX_Init failed.\n");
        return Ret;
    }

    HI_UNF_DMX_GetTSPortAttr(DEMUX_PORT_ID, &PortAttr);

    /* For parallel TS */
    PortAttr.enPortType = HI_UNF_DMX_PORT_TYPE_PARALLEL_VALID;
    PortAttr.u32SerialBitSelector = 0;
    
#if defined (BOARD_TYPE_hi3716mdmo3dvera)
    /* For serial TS */
    PortAttr.enPortType = HI_UNF_DMX_PORT_TYPE_SERIAL;
    PortAttr.u32SerialBitSelector = 0;
#endif

    HI_UNF_DMX_SetTSPortAttr(DEMUX_PORT_ID, &PortAttr);

    Ret = HI_UNF_DMX_AttachTSPort(0, DEMUX_PORT_ID);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_DMX_AttachTSPort failed.\n");
        HI_UNF_DMX_DeInit();
        return Ret;
    }

    return HI_SUCCESS;

}

HI_VOID Destroy_Demux_Resource(HI_VOID)
{
    HI_UNF_DMX_DetachTSPort(0);
    HI_UNF_DMX_DeInit();
}
HI_S32 Create_Tuner_Resource(HI_VOID)
{
    HI_S32   Ret;
    HI_UNF_TUNER_ATTR_S          stTunerAttr;
    HI_UNF_TUNER_CONNECT_PARA_S  stConnectPara;

    /*Initialize Tuner*/
    Ret = HI_UNF_TUNER_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_Init failed.\n");
        return Ret;
    }

    /* open Tuner*/
    Ret = HI_UNF_TUNER_Open(TUNER_USE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_Open failed.\n");
        HI_UNF_TUNER_DeInit();
        return Ret;
    }

    /*get default attribute in order to set attribute next*/
    Ret = HI_UNF_TUNER_GetDeftAttr(TUNER_USE, &stTunerAttr);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_GetDeftAttr failed.\n");
        HI_UNF_TUNER_Close(TUNER_USE);
        HI_UNF_TUNER_DeInit();
        return Ret;
    }

#ifdef DEMO_FOR_DVB_S_S2
    /* Configure demod parameter */
    if (HI_UNF_DEMOD_DEV_TYPE_AVL6211 == DEMOD_TYPE)
    {
        stTunerAttr.enSigType = HI_UNF_TUNER_SIG_TYPE_SAT;
        stTunerAttr.unTunerAttr.stSat.u32ResetGpioNo = AVL6211_DEF_RESET_GPIO;
        stTunerAttr.unTunerAttr.stSat.u32DemodClk = AVL6211_DEF_CLK_KHZ;
        //stTunerAttr.unTunerAttr.stSat.u16DemodAddress = AVL6211_DEF_ADDR_1;
        stTunerAttr.u32DemodAddr = AVL6211_DEF_ADDR_1;
        stTunerAttr.unTunerAttr.stSat.enDiSEqCWave = AVL6211_DEF_DISEQCWAVE;
        stTunerAttr.unTunerAttr.stSat.enTSClkPolar = AVL6211_DEF_TSCLKPOLAR;
        stTunerAttr.unTunerAttr.stSat.enTSFormat = AVL6211_DEF_TSFORMAT;
        stTunerAttr.unTunerAttr.stSat.enTSSerialPIN = AVL6211_DEF_TSSERIALPIN;
    }
    else if (HI_UNF_DEMOD_DEV_TYPE_3136 == DEMOD_TYPE)
    {
        stTunerAttr.enSigType = HI_UNF_TUNER_SIG_TYPE_SAT;
        stTunerAttr.unTunerAttr.stSat.u32ResetGpioNo = HI3136_DEF_RESET_GPIO;
        stTunerAttr.unTunerAttr.stSat.u32DemodClk = HI3136_DEF_CLK_KHZ;
        stTunerAttr.u32DemodAddr = HI3136_DEV_ADDR;
        stTunerAttr.unTunerAttr.stSat.enDiSEqCWave = HI3136_DEF_DISEQCWAVE;
        stTunerAttr.unTunerAttr.stSat.enTSClkPolar = HI3136_DEF_TSCLKPOLAR;
        stTunerAttr.unTunerAttr.stSat.enTSFormat = HI3136_DEF_TSFORMAT;
        stTunerAttr.unTunerAttr.stSat.enTSSerialPIN = HI3136_DEF_TSSERIALPIN;
    }

    /* Configure tuner parameter */
    if (HI_UNF_TUNER_DEV_TYPE_AV2011 == TUNER_TYPE)
    {
        //stTunerAttr.unTunerAttr.stSat.u16TunerAddress = AV2011_DEF_ADDR;
        stTunerAttr.u32TunerAddr = AV2011_DEF_ADDR;
        stTunerAttr.unTunerAttr.stSat.u16TunerMaxLPF = AV2011_DEF_MAXLPF;
        stTunerAttr.unTunerAttr.stSat.u16TunerI2CClk = AV2011_DEF_I2CCLK_KHZ;
        stTunerAttr.unTunerAttr.stSat.enRFAGC = AV2011_DEF_RFAGC;
        stTunerAttr.unTunerAttr.stSat.enIQSpectrum = AV2011_DEF_IQSPEC;
    }
    else if (HI_UNF_TUNER_DEV_TYPE_SHARP7903 == TUNER_TYPE)
    {
        //stTunerAttr.unTunerAttr.stSat.u16TunerAddress = SHARP7903_DEF_ADDR;
        stTunerAttr.u32TunerAddr = SHARP7903_DEF_ADDR;
        stTunerAttr.unTunerAttr.stSat.u16TunerMaxLPF = SHARP7903_DEF_MAXLPF;
        stTunerAttr.unTunerAttr.stSat.u16TunerI2CClk = SHARP7903_DEF_I2CCLK_KHZ;
        stTunerAttr.unTunerAttr.stSat.enRFAGC = SHARP7903_DEF_RFAGC;
        stTunerAttr.unTunerAttr.stSat.enIQSpectrum = SHARP7903_DEF_IQSPEC;
    }

    /* Configure LNB control device parameter */
    if (HI_UNF_LNBCTRL_DEV_TYPE_ISL9492 == LNBCTRL_DEV)
    {
        stTunerAttr.unTunerAttr.stSat.enLNBCtrlDev = HI_UNF_LNBCTRL_DEV_TYPE_ISL9492;
        stTunerAttr.unTunerAttr.stSat.u16LNBDevAddress = ISL9492_DEF_ADDR;
    }
    else if (HI_UNF_LNBCTRL_DEV_TYPE_MPS8125 == LNBCTRL_DEV)
    {
        stTunerAttr.unTunerAttr.stSat.enLNBCtrlDev = HI_UNF_LNBCTRL_DEV_TYPE_MPS8125;
        stTunerAttr.unTunerAttr.stSat.u16LNBDevAddress = MPS8125_DEF_ADDR;
    }

#else
    stTunerAttr.enSigType = HI_UNF_TUNER_SIG_TYPE_CAB;
#endif
	GET_TUNER_CONFIG(0,stTunerAttr);
#if defined (BOARD_TYPE_hi3716mdmo3dvera)
    /* For serial TS */
    stTunerAttr.enOutputMode = HI_UNF_TUNER_OUTPUT_MODE_SERIAL;
#endif                
    
    Ret = HI_UNF_TUNER_SetAttr(TUNER_USE, &stTunerAttr);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_SetAttr failed.\n");
        HI_UNF_TUNER_Close(TUNER_USE);
        HI_UNF_TUNER_DeInit();
        return Ret;
    }

#ifdef DEMO_FOR_DVB_S_S2
    stConnectPara.enSigType = HI_UNF_TUNER_SIG_TYPE_SAT;
    stConnectPara.unConnectPara.stSat.u32Freq = s_u32TunerFreq;
    stConnectPara.unConnectPara.stSat.u32SymbolRate = s_u32TunerSrate;
    stConnectPara.unConnectPara.stSat.enPolar = HI_UNF_TUNER_FE_POLARIZATION_H;
#else
    stConnectPara.enSigType = HI_UNF_TUNER_SIG_TYPE_CAB;
    stConnectPara.unConnectPara.stCab.bReverse = 0;
    stConnectPara.unConnectPara.stCab.u32Freq = s_u32TunerFreq;
    stConnectPara.unConnectPara.stCab.u32SymbolRate = s_u32TunerSrate;
    stConnectPara.unConnectPara.stCab.enModType = s_u32TunerModType;
#endif

    /* If satellite signal, maybe need config lnb power, switch, motor */
    if (HI_UNF_TUNER_SIG_TYPE_SAT == stConnectPara.enSigType)
    {
        HI_UNF_TUNER_FE_LNB_POWER_E enPower = HI_UNF_TUNER_FE_LNB_POWER_ON;
        HI_UNF_TUNER_FE_LNB_CONFIG_S stLNBConfig;
        
        /* Set LNB power on/off/enhanced */
        Ret = HI_UNF_TUNER_SetLNBPower(TUNER_USE, enPower);
        //Ret = HI_UNF_TUNER_SetLNBPower(TUNER_USE, enPower,stConnectPara.unConnectPara.stSat.enPolar);
        if (HI_SUCCESS != Ret)
        {
            HI_UNF_TUNER_Close(TUNER_USE);
            HI_UNF_TUNER_DeInit();
            sample_printf("call HI_UNF_TUNER_SetLNBPower failed.\n");
        }

        /* Before connect or blindscan, you need config LNB */
        stLNBConfig.enLNBType = HI_UNF_TUNER_FE_LNB_DUAL_FREQUENCY;
        stLNBConfig.u32LowLO = 5150;
        stLNBConfig.u32HighLO = 5750;
        stLNBConfig.enLNBBand = HI_UNF_TUNER_FE_LNB_BAND_C;
        Ret = HI_UNF_TUNER_SetLNBConfig(TUNER_USE, &stLNBConfig);
        if (HI_SUCCESS != Ret)
        {
            HI_UNF_TUNER_Close(TUNER_USE);
            HI_UNF_TUNER_DeInit();
            sample_printf("Set LNB config failed.\n");
        }
    }
    /* connect Tuner*/
    Ret = HI_UNF_TUNER_Connect(TUNER_USE, &stConnectPara, 500);
    if (HI_SUCCESS != Ret)
    {
        HI_UNF_TUNER_Close(TUNER_USE);
        HI_UNF_TUNER_DeInit();
        sample_printf("call HI_UNF_TUNER_Connect failed.\n");
    }
    else
    {
        sample_printf("HI_UNF_TUNER_Connect OK.\n");
    }

#if defined (BOARD_TYPE_hi3716mdmo3fvera)
    HI_UNF_TUNER_TSOUT_SET_S stTSOut;
    stTSOut.enTSOutput[0] = HI_UNF_TUNER_OUTPUT_TSDAT7;
    stTSOut.enTSOutput[1] = HI_UNF_TUNER_OUTPUT_TSDAT6;
    stTSOut.enTSOutput[2] = HI_UNF_TUNER_OUTPUT_TSDAT4;
    stTSOut.enTSOutput[3] = HI_UNF_TUNER_OUTPUT_TSDAT5;
    stTSOut.enTSOutput[4] = HI_UNF_TUNER_OUTPUT_TSDAT3;
    stTSOut.enTSOutput[5] = HI_UNF_TUNER_OUTPUT_TSDAT1;
    stTSOut.enTSOutput[6] = HI_UNF_TUNER_OUTPUT_TSDAT2;
    stTSOut.enTSOutput[7] = HI_UNF_TUNER_OUTPUT_TSDAT0;
    stTSOut.enTSOutput[8] = HI_UNF_TUNER_OUTPUT_TSVLD;
    stTSOut.enTSOutput[9] = HI_UNF_TUNER_OUTPUT_TSSYNC;
    stTSOut.enTSOutput[10] = HI_UNF_TUNER_OUTPUT_TSERR;

    Ret = HI_UNF_TUNER_SetTSOUT(TUNER_USE, &stTSOut);
    if (HI_SUCCESS != Ret)
    {
        HI_UNF_TUNER_Close(TUNER_USE);
        HI_UNF_TUNER_DeInit();
        sample_printf("call HI_UNF_TUNER_SetTSOUT failed.\n");
        return Ret;
    }
#endif

    return HI_SUCCESS;
}

HI_VOID Destroy_Tuner_Resource(HI_VOID)
{
    HI_UNF_TUNER_Close(TUNER_USE);
    HI_UNF_TUNER_DeInit();
}

HI_VOID Destroy_AVPLAY_Resource(HI_HANDLE *hWin, HI_HANDLE *hAvplay)
{
    HI_S32  i;
    HI_UNF_AVPLAY_STOP_OPT_S Stop;

    for(i = 0 ; i < AVPLAY_NUM;i++)
    {
        Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
        Stop.u32TimeoutMs = 0;
        if ( 0 == i )
        {
            HI_UNF_AVPLAY_Stop(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);            
            HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay[i]);
        }
        else
        {
            HI_UNF_AVPLAY_Stop(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID, &Stop);            
        }
        HI_UNF_VO_SetWindowEnable(hWin[i],HI_FALSE);    
        HI_UNF_VO_DetachWindow(hWin[i], hAvplay[i]);
        if( 0 == i)
        {
            HI_UNF_AVPLAY_ChnClose(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);            
        }
        else
        {
            HI_UNF_AVPLAY_ChnClose(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID);            
        }

        HI_UNF_AVPLAY_Destroy(hAvplay[i]);         
    }
}

HI_S32 Create_AVPLAY_Resource(HI_HANDLE *hWin, HI_HANDLE *hAvplay)
{
    HI_S32   Ret,i;
    HI_UNF_AVPLAY_ATTR_S     AvplayAttr;
    HI_UNF_SYNC_ATTR_S       SyncAttr;
    HI_UNF_AVPLAY_OPEN_OPT_S stVidOpenOpt;
    HI_BOOL                  bAudPlay[AVPLAY_NUM];

    for(i = 0;i < AVPLAY_NUM;i++)
    {
        sample_printf("===============avplay[%d]===============\n",i);
        HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
        AvplayAttr.stStreamAttr.u32VidBufSize = 0x200000;
        Ret = HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay[i]);
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
            goto Destroy_AVPLAY;
        }
    
        stVidOpenOpt.enDecType = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
        stVidOpenOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_D1;
        stVidOpenOpt.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;
        Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_VID, &stVidOpenOpt);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
            goto Destroy_AVPLAY;
        }
    
        Ret = HI_UNF_VO_AttachWindow(hWin[i], hAvplay[i]);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
            goto Destroy_AVPLAY;
        }
        Ret = HI_UNF_VO_SetWindowEnable(hWin[i], HI_TRUE);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_VO_SetWindowEnable failed.\n");
            goto Destroy_AVPLAY;
        }
        
        bAudPlay[i] = HI_FALSE;
        if (0 == i)
        {
            bAudPlay[i] = HI_TRUE;
            Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay[i], HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
            Ret |= HI_UNF_SND_Attach(HI_UNF_SND_0, hAvplay[i], HI_UNF_SND_MIX_TYPE_MASTER, 100);
            if (Ret != HI_SUCCESS)
            {
                sample_printf("call HI_SND_Attach failed.\n");
                goto Destroy_AVPLAY;
            }
        }
        
        Ret = HI_UNF_AVPLAY_GetAttr(hAvplay[i], HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
        SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
        Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay[i], HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
            goto Destroy_AVPLAY;
        }
    
        Ret = HIADP_AVPlay_PlayProg(hAvplay[i], g_pProgTbl, i,bAudPlay[i]);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HIADP_AVPlay_SwitchProg failed\n");
            goto Destroy_AVPLAY;
        }
    } 

    return HI_SUCCESS;

Destroy_AVPLAY:
    Destroy_AVPLAY_Resource(hWin, hAvplay);
    return Ret;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32                   Ret = 0,i = 0;
    HI_S32                   runtime = -1;
    HI_HANDLE                hWin[AVPLAY_NUM];
    HI_HANDLE                hAvplay[AVPLAY_NUM];
    HI_RECT_S                stWinRect;
    HI_U32                   u32TunerFreq = 618;
    HI_U32                   u32TunerSrate = 6875;
    HI_U32                   u32TunerQam = 64;
    struct timeval           presystime;
    struct timeval           cursystime;

    if (1 < argc)
    {
        u32TunerFreq  = strtol(argv[1],NULL,0);

        if (2 < argc)
        {
            runtime = strtol(argv[2],NULL,0);
            if ((runtime != -1) && (runtime < 0))
            {
                sample_printf("input parm error \n");
                return HI_FAILURE;
            }
        }

        if (3 < argc)
        {  
            aszFileName = argv[3];
        }

        if (6 == argc)
        {
            u32TunerSrate = strtol(argv[4],NULL,0);
            u32TunerQam   = strtol(argv[5],NULL,0);
        }
        
        if (5 == argc)
        {
            u32TunerSrate = strtol(argv[4],NULL,0);
        }

        s_u32TunerFreq = u32TunerFreq * 1000;
        s_u32TunerSrate = u32TunerSrate * 1000;
        s_u32TunerModType = Tuner_GetQamType(u32TunerQam);
    }
    else
    {
        sample_printf("Usage: sample_dvb_training freq [runtime] [file] [srate] [qamtype] \n");
        sample_printf("\t[runtime]: unit second            default: -1 means without limit\t\n");
        sample_printf("\t[file]:default: 12.jpg\n");
        sample_printf("\t[srate]:default: 6875\n");
        sample_printf("\t[qamtype]:16|32|[64]|128|256|512, default: 64\n");
        sample_printf("Example:./sample_dvb_training 618\n");
        sample_printf("Example:./sample_dvb_training 618 10\n");
        sample_printf("Example:./sample_dvb_training 618 10 12.jpg 6875 64\n");
        sample_printf("Example:./sample_dvb_training 3840 10 12.jpg 27500\n");

        return HI_FAILURE;
    }

    HI_SYS_Init();

    Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_1080P_60);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Disp_DeInit failed.\n");
        goto SYS_DEINIT;
    }

    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        goto DISP_DEINIT;
    }
    
    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_VO_Init failed.\n");
        goto SND_DEINIT;
    }
	
    stWinRect.s32Width = 1920;
    stWinRect.s32Height = 1080;
    stWinRect.s32X = 0;
    stWinRect.s32Y = 0;

    Ret = HIADP_VO_CreatWin(&stWinRect,&hWin[i]);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call WinInit failed.\n");
        goto VO_DEINIT;
    }

    Ret = Create_Tuner_Resource();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call Create_Tuner_Resource failed.\n");
        goto VO_DEINIT;
    }  
    
    Ret = Create_Demux_Resource();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call Create_Demux_Resource failed.\n");
        goto Tuner_Destroy;
    }  

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(0,&g_pProgTbl);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Search_GetAllPmt failed\n");
        goto PSISI_FREE;
    }
    
    Ret = HIADP_AVPlay_RegADecLib();
    Ret |= HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto PSISI_FREE;
    }
    
    Ret = Create_AVPLAY_Resource(hWin,hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto AVPLAY_DEINT;
    }

    pthread_create(&g_TdeThd, HI_NULL, (HI_VOID *)TdeThread, HI_NULL);

    HI_UNF_VO_SetAlpha(HI_UNF_VO_HD0, 0x80);
    HI_UNF_VO_SetAlpha(HI_UNF_VO_SD0, 0x80);

    gettimeofday(&presystime, HI_NULL);

    if (runtime == 0xffffffff)
    {
         sample_printf("you have choose run this without limit\n");            
    }

    while(1)
    {
       usleep(100 * 1000);

       if (runtime == 0xffffffff)
       {
            continue;            
       }
       else
       {
           gettimeofday(&cursystime, HI_NULL);
           if((cursystime.tv_sec - presystime.tv_sec) >= runtime)
           {
               sample_printf("-----stop training \n");
               presystime = cursystime;
               break;
           }
       }
    }

    Destroy_AVPLAY_Resource(hWin, hAvplay);
    g_bStopTdeThread=HI_TRUE;
    pthread_join(g_TdeThd,NULL);

AVPLAY_DEINT:
    HI_UNF_AVPLAY_DeInit();

PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pProgTbl);
    HIADP_Search_DeInit();

    Destroy_Demux_Resource();

Tuner_Destroy:
    Destroy_Tuner_Resource();

VO_DEINIT:
    for ( i = 0 ; i < AVPLAY_NUM ; i++ )
    {
        HI_UNF_VO_DestroyWindow(hWin[i]);        
    }
    HIADP_VO_DeInit();


SND_DEINIT:
    HIADP_Snd_DeInit();
 
DISP_DEINIT:
     HIADP_Disp_DeInit();

SYS_DEINIT:
    HI_SYS_DeInit();

    return Ret;
}


