/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : blindscan_demo.c
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
#include <sys/time.h>

#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

#include "hi_unf_common.h"
#include "hi_unf_frontend.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"
#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
#include "hi_adp.h"
#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_boardcfg.h"
#include "hi_adp_mpi.h"
#include "hi_adp_tuner.h"
#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif

HI_U32 g_LOType = 0;
HI_U32 g_LowLO = 5150;
HI_U32 g_HighLO = 5750;
HI_U32 g_SW22k = 0;
HI_U32 g_SWDiSEqc10 = 0;
HI_U32 g_SWDiSEqc11 = 0;

HI_U32 g_TunerFreq;
HI_U32 g_TunerSrate;

#ifdef CHIP_TYPE_hi3110ev500
static HI_UNF_ENC_FMT_E   s_enDefaultFmt = HI_UNF_ENC_FMT_PAL;
#else
static HI_UNF_ENC_FMT_E   s_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
#endif

PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;
HI_U32 u32ChanNO = 0;
//PMT_COMPACT_TBL    g_TtlProgTbl = {0, HI_NULL};
typedef struct stChanInfo
{
    HI_U32                         u32Freq;         /**<Downlink frequency, in kHz*/ /**<CNcomment:下行频率，单位：kHz*/
    HI_U32                         u32SymbolRate;   /**<Symbol rate, in bit/s*/      /**<CNcomment:符号率，单位bps */
    HI_UNF_TUNER_FE_POLARIZATION_E enPolar;         /**<Polarization type*/          /**<CNcomment:极化方式*/
    PMT_COMPACT_PROG prog;
} ProgInfo;
ProgInfo *g_pProgInfo = HI_NULL;

#ifndef DEFAULT_DVB_PORT
#define DEFAULT_DVB_PORT 0
#endif

static struct timeval s_stStart, s_stStop;
static HI_S32 s_s32TPNum = 0;
static HI_UNF_TUNER_SAT_TPINFO_S s_astTP[400];
#define TEST_ARGS_SPLIT " "

HI_VOID sort_tp(HI_S32 *psts32TPNum, HI_UNF_TUNER_SAT_TPINFO_S *pstTPInfo)
{
    HI_U32 i = 0, j = 0;
    HI_UNF_TUNER_SAT_TPINFO_S temp_tp = {0};
	
    if (*psts32TPNum > 0)
    {
        for(i = 0; i < *psts32TPNum - 1; i++)
        {
            for(j = i + 1; j < *psts32TPNum; j++)
            {
                if(pstTPInfo[i].u32Freq >pstTPInfo[j].u32Freq)	//根据CBS可靠度进行排序，由大至小
                {
                    temp_tp = pstTPInfo[i];
                    pstTPInfo[i] = pstTPInfo[j];
                    pstTPInfo[j] = temp_tp;
                }
            }	
        }
    }
}

/* If your diseqc device need config polarization and 22K, you need registe the callback */
HI_VOID hi_tuner_diseqc_set(HI_U32 u32TunerId, HI_UNF_TUNER_FE_POLARIZATION_E enPolar,
                                                            HI_UNF_TUNER_FE_LNB_22K_E enLNB22K)
{
}

HI_VOID hi_tuner_blindscan_notify(HI_U32 u32TunerId, HI_UNF_TUNER_BLINDSCAN_EVT_E enEVT, HI_UNF_TUNER_BLINDSCAN_NOTIFY_U* punNotify)
{
    HI_S32 Ret;
    HI_S32 i = 0, j = 0;
    HI_U32 u32TimeUse;
    HI_U32 u32LastChanNO = 0;
    
    switch (enEVT)
    {
    case HI_UNF_TUNER_BLINDSCAN_EVT_STATUS:
        if (HI_UNF_TUNER_BLINDSCAN_STATUS_FAIL == *(punNotify->penStatus))
        {
            sample_printf("Scan fail.\n");
        }
        else if ((HI_UNF_TUNER_BLINDSCAN_STATUS_FINISH == *(punNotify->penStatus))
                    || (HI_UNF_TUNER_BLINDSCAN_STATUS_QUIT == *(punNotify->penStatus)))
        {
            
            gettimeofday(&s_stStop, NULL );
            u32TimeUse = 1000000 * (s_stStop.tv_sec - s_stStart.tv_sec ) + s_stStop.tv_usec - s_stStart.tv_usec; 
            u32TimeUse /= 1000000;
            sample_printf("100");
            putchar('%');
            sample_printf(" done!\n");
            sample_printf("Channel scan over, find %d TP, use %ds.\n", s_s32TPNum, u32TimeUse);
            sort_tp(&s_s32TPNum, s_astTP);
            for (i=0; i<s_s32TPNum; i++)
            {
                sample_printf("%03d %d %d %d %d\n", i, s_astTP[i].u32Freq, s_astTP[i].u32SymbolRate, s_astTP[i].enPolar, \
                    s_astTP[i].cbs_reliablity/*, s_astTP[i].agc_h8*/);
            }
#if 0
            sample_printf("Now begin search programs.\n");
            for (i=0; i<s_s32TPNum; i++)
            {
                sample_printf("*****************************************************\n");
                sample_printf("search tp: freq %d MHz, symb: %d KS/s, polar: %d\n", s_astTP[i].u32Freq / 1000, s_astTP[i].u32SymbolRate / 1000, s_astTP[i].enPolar);
                sample_printf("*****************************************************\n");

                Ret = HIADP_Tuner_Connect(TUNER_USE, s_astTP[i].u32Freq / 1000, s_astTP[i].u32SymbolRate / 1000, s_astTP[i].enPolar);
                if (HI_SUCCESS != Ret)
                {
                    sample_printf("call HIADP_Tuner_Connect failed\n");
                    continue;
                }

                HIADP_Search_Init();
                Ret = HIADP_Search_GetAllPmt(0,&g_pProgTbl);
                if (HI_SUCCESS != Ret)
                {
                    sample_printf("call HIADP_Search_GetAllPmt failed\n");
                    HIADP_Search_FreeAllPmt(g_pProgTbl);
                    g_pProgTbl = HI_NULL;
                    HIADP_Search_DeInit();
                    continue;
                }

                if (g_pProgTbl->prog_num)
                {
                    u32LastChanNO = u32ChanNO;
                    u32ChanNO += g_pProgTbl->prog_num;
                    g_pProgInfo = (ProgInfo *)realloc(g_pProgInfo, u32ChanNO * sizeof(ProgInfo));
                    if (!g_pProgInfo)
                    {
                        sample_printf("NO mem.\n");
                        return;
                    }
                    
                    for(j = u32LastChanNO; j < u32ChanNO; j++)
                    {
                        g_pProgInfo[j].enPolar = s_astTP[i].enPolar;
                        g_pProgInfo[j].u32Freq = s_astTP[i].u32Freq;
                        g_pProgInfo[j].u32SymbolRate = s_astTP[i].u32SymbolRate;
                        memcpy(&(g_pProgInfo[j].prog), &g_pProgTbl->proginfo[j - u32LastChanNO], sizeof(PMT_COMPACT_PROG));
                    }
                }

                HIADP_Search_FreeAllPmt(g_pProgTbl);
                g_pProgTbl = HI_NULL;
                HIADP_Search_DeInit();
            }

            gettimeofday(&s_stStop, NULL );
            u32TimeUse = 1000000 * (s_stStop.tv_sec - s_stStart.tv_sec ) + s_stStop.tv_usec - s_stStart.tv_usec; 
            u32TimeUse /= 1000000;
            sample_printf("Search programs over, search %d programs, use %ds.\n", u32ChanNO, u32TimeUse);
            for (i = 0; i < u32ChanNO; i++)
            {
                sample_printf("prog %d: freq %d MHz, symb: %d KS/s, polar: %d, VPID:%d, APID: %d\n", i, g_pProgInfo[i].u32Freq / 1000, g_pProgInfo[i].u32SymbolRate / 1000, \
                                g_pProgInfo[i].enPolar, g_pProgInfo[i].prog.VElementPid, g_pProgInfo[i].prog.AElementPid);
            }
#endif

            gettimeofday(&s_stStop, NULL );
            u32TimeUse = 1000000 * (s_stStop.tv_sec - s_stStart.tv_sec ) + s_stStop.tv_usec - s_stStart.tv_usec; 
            u32TimeUse /= 1000000;
            sample_printf("Search programs over, search %d programs, use %ds.\n", u32ChanNO, u32TimeUse);
            for (i = 0; i < u32ChanNO; i++)
            {
                sample_printf("prog %d: freq %d MHz, symb: %d KS/s, polar: %d, VPID:%d, APID: %d\n", i, g_pProgInfo[i].u32Freq / 1000, g_pProgInfo[i].u32SymbolRate / 1000, \
                                g_pProgInfo[i].enPolar, g_pProgInfo[i].prog.VElementPid, g_pProgInfo[i].prog.AElementPid);
            }
        }
        break;
    case HI_UNF_TUNER_BLINDSCAN_EVT_PROGRESS:
        sample_printf("%d",*(punNotify->pu16ProgressPercent));
        putchar('%');
        sample_printf(" done!\n");
        break;
    case HI_UNF_TUNER_BLINDSCAN_EVT_NEWRESULT:
        if(s_s32TPNum < sizeof(s_astTP) / sizeof(HI_UNF_TUNER_SAT_TPINFO_S))
        {
            s_astTP[s_s32TPNum] = *(punNotify->pstResult);
            s_s32TPNum++;
        }
        else
        {
            sample_printf("Too many channels!\n");
            HI_UNF_TUNER_BlindScanStop(TUNER_USE);
        }

        HIADP_Search_Init();
        Ret = HIADP_Search_GetAllPmt(0,&g_pProgTbl);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HIADP_Search_GetAllPmt failed\n");
            HIADP_Search_FreeAllPmt(g_pProgTbl);
            g_pProgTbl = HI_NULL;
            HIADP_Search_DeInit();
            return;
        }

        if (g_pProgTbl->prog_num)
        {
            u32LastChanNO = u32ChanNO;
            u32ChanNO += g_pProgTbl->prog_num;
            g_pProgInfo = (ProgInfo *)realloc(g_pProgInfo, u32ChanNO * sizeof(ProgInfo));
            if (!g_pProgInfo)
            {
                sample_printf("NO mem.\n");
                return;
            }
            
            for(j = u32LastChanNO; j < u32ChanNO; j++)
            {
                g_pProgInfo[j].enPolar = punNotify->pstResult->enPolar;
                g_pProgInfo[j].u32Freq = punNotify->pstResult->u32Freq;
                g_pProgInfo[j].u32SymbolRate = punNotify->pstResult->u32SymbolRate;
                memcpy(&(g_pProgInfo[j].prog), &g_pProgTbl->proginfo[j - u32LastChanNO], sizeof(PMT_COMPACT_PROG));
            }
        }

        HIADP_Search_FreeAllPmt(g_pProgTbl);
        g_pProgTbl = HI_NULL;
        HIADP_Search_DeInit();
        break;

    default:
        break;
    }
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32                  Ret;
    HI_HANDLE               hWin;

    HI_HANDLE               hAvplay;
    HI_UNF_AVPLAY_ATTR_S        AvplayAttr;
    HI_UNF_SYNC_ATTR_S          SyncAttr;
    HI_UNF_AVPLAY_STOP_OPT_S    Stop;
    HI_CHAR                 InputCmd[32];
    HI_U32                  ProgNum;
    
    HI_HANDLE hTrack;
    HI_UNF_AUDIOTRACK_ATTR_S stTrackAttr;
    HI_UNF_TUNER_BLINDSCAN_PARA_S stBlindScanPara;
    PMT_COMPACT_TBL    ProgTbl;
    HI_UNF_TUNER_FE_LNB_CONFIG_S stLnbConfig;
    HI_UNF_TUNER_SWITCH_22K_E en22kPort = HI_UNF_TUNER_SWITCH_22K_NONE;
    HI_UNF_TUNER_DISEQC_SWITCH4PORT_S st4Port;
    HI_UNF_TUNER_DISEQC_SWITCH16PORT_S st16Port;
    HI_UNF_TUNER_FE_LNB_POWER_E enPower = HI_UNF_TUNER_FE_LNB_POWER_ON;

    if (7 == argc)
    {
        g_LOType  = strtol(argv[1],NULL,0);
        g_LowLO   = strtol(argv[2],NULL,0);
        g_HighLO  = strtol(argv[3],NULL,0);
        g_SW22k   = strtol(argv[4],NULL,0);
        g_SWDiSEqc10  = strtol(argv[5],NULL,0);
        g_SWDiSEqc11  = strtol(argv[6],NULL,0);
    }
    else if (6 == argc)
    {
        g_LOType  = strtol(argv[1],NULL,0);
        g_LowLO   = strtol(argv[2],NULL,0);
        g_HighLO  = strtol(argv[3],NULL,0);
        g_SW22k   = strtol(argv[4],NULL,0);
        g_SWDiSEqc10  = strtol(argv[5],NULL,0);
    }
    else if(5 == argc)
    {
        g_LOType  = strtol(argv[1],NULL,0);
        g_LowLO   = strtol(argv[2],NULL,0);
        g_HighLO  = strtol(argv[3],NULL,0);
        g_SW22k   = strtol(argv[4],NULL,0);
    }
    else if(4 == argc)
    {
        g_LOType  = strtol(argv[1],NULL,0);
        g_LowLO   = strtol(argv[2],NULL,0);
        g_HighLO  = strtol(argv[3],NULL,0);
    }
    else if(3 == argc)
    {
        g_LOType  = strtol(argv[1],NULL,0);
        g_LowLO   = strtol(argv[2],NULL,0);
        g_HighLO  = strtol(argv[2],NULL,0);
    }
    else
    {
        printf("Usage: %s Band lowLO [highLO] [22k port] [DiSEqC1.0 port] [DiSEqC1.1 port]\n"
                "       Band: 0 for C band, 1 for Ku band.\n"
                "       Only support satellite.\n",
                argv[0]);
        printf("Example: %s 0 5150 5750 0 4 16\n", argv[0]);
        return HI_FAILURE;
    }

    HI_SYS_Init();

	HIADP_MCE_Exit();
	//HI_SYS_PreAV(NULL);
    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        goto SYS_DEINIT;
    }
    //HI_SYS_GetPlayTime(& u32Playtime);
    //sample_printf("u32Playtime = %d\n",u32Playtime);
    Ret = HIADP_Disp_Init(g_enDefaultFmt);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Disp_DeInit failed.\n");
        goto SND_DEINIT;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    Ret = HI_UNF_DMX_Init();
    Ret |= HI_UNF_DMX_AttachTSPort(0,DEFAULT_DVB_PORT);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto VO_DEINIT;
    }

    Ret = HIADP_Tuner_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto DMX_DEINIT;
    }

    stLnbConfig.enLNBType = HI_UNF_TUNER_FE_LNB_DUAL_FREQUENCY;

    if (0 == g_LOType)
    {
        stLnbConfig.enLNBBand = HI_UNF_TUNER_FE_LNB_BAND_C;
    }
    else
    {
        stLnbConfig.enLNBBand = HI_UNF_TUNER_FE_LNB_BAND_KU;
    }
    
    /* Set LNB power on/off/enhanced */
    Ret = HI_UNF_TUNER_SetLNBPower(TUNER_USE, enPower);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_SetLNBPower failed.\n");
        goto TUNER_DEINIT;
    }

    stLnbConfig.u32LowLO = g_LowLO;
    stLnbConfig.u32HighLO = g_HighLO;
    Ret = HI_UNF_TUNER_SetLNBConfig(TUNER_USE, &stLnbConfig);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_TUNER_SetLNBConfig failed.\n");
        goto TUNER_DEINIT;
    }

    if (HI_UNF_TUNER_SWITCH_22K_BUTT <= g_SW22k)
    {
        sample_printf("Input parameter en22kPort error!\n");
        goto TUNER_DEINIT;
    }

    switch (g_SW22k)
    {
    case 0:
    default:
        en22kPort = HI_UNF_TUNER_SWITCH_22K_NONE;
        break;

    case 1:
        en22kPort = HI_UNF_TUNER_SWITCH_22K_0;
        break;

    case 2:
        en22kPort = HI_UNF_TUNER_SWITCH_22K_22;
        break;
    }

    Ret = HI_UNF_TUNER_Switch22K(TUNER_USE, (HI_UNF_TUNER_SWITCH_22K_E)en22kPort);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_TUNER_Switch22K failed.\n");
        goto TUNER_DEINIT;
    }

#ifdef DISEQC_SUPPORT
    st4Port.enLevel = HI_UNF_TUNER_DISEQC_LEVEL_1_X;
    st4Port.enPolar = HI_UNF_TUNER_FE_POLARIZATION_H;
    st4Port.enLNB22K = HI_UNF_TUNER_SWITCH_22K_NONE;
    switch (g_SWDiSEqc10)
    {
    case 0:
    default:
        st4Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_NONE;
        break;

    case 1:
        st4Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_1;
        break;

    case 2:
        st4Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_2;
        break;

    case 3:
        st4Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_3;
        break;

    case 4:
        st4Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_4;
        break;
    }
    Ret = HI_UNF_TUNER_DISEQC_Switch4Port(TUNER_USE, &st4Port);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_TUNER_DISEQC_Switch4Port failed.\n");
        goto TUNER_DEINIT;
    }

    st16Port.enLevel = HI_UNF_TUNER_DISEQC_LEVEL_1_X;
    switch (g_SWDiSEqc11)
    {
    case 0:
    default:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_NONE;
        break;

    case 1:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_1;
        break;

    case 2:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_2;
        break;

    case 3:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_3;
        break;

    case 4:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_4;
        break;

    case 5:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_5;
        break;

    case 6:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_6;
        break;

    case 7:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_7;
        break;

    case 8:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_8;
        break;

    case 9:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_9;
        break;

    case 10:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_10;
        break;

    case 11:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_11;
        break;

    case 12:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_12;
        break;

    case 13:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_13;
        break;

    case 14:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_14;
        break;

    case 15:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_15;
        break;

    case 16:
        st16Port.enPort = HI_UNF_TUNER_DISEQC_SWITCH_PORT_16;
        break;

    }
    Ret = HI_UNF_TUNER_DISEQC_Switch16Port(TUNER_USE, &st16Port);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_TUNER_DISEQC_Switch16Port failed.\n");
        goto TUNER_DEINIT;
    }
#endif

    Ret = HIADP_AVPlay_RegADecLib();
    Ret |= HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto TUNER_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    AvplayAttr.stStreamAttr.u32VidBufSize = 0x300000;
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    Ret |= HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto CHN_CLOSE;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
        goto CHN_CLOSE;
    }
    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        goto WIN_DETACH;
    }
    
    Ret = HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_MASTER, &stTrackAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_GetDefaultTrackAttr failed.\n");
        goto WIN_DETACH;
    }
    Ret = HI_UNF_SND_CreateTrack(HI_UNF_SND_0,&stTrackAttr,&hTrack);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_CreateTrack failed.\n");
        goto WIN_DETACH;
    }
   
    Ret = HI_UNF_SND_Attach(hTrack, hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_SND_Attach failed.\n");
        goto TRACK_DESTROY;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
    SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
    SyncAttr.bQuickOutput = HI_FALSE;
    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETACH;
    }

    s_s32TPNum = 0;
    gettimeofday(&s_stStart, NULL );
    /* Auto */
    stBlindScanPara.enMode = HI_UNF_TUNER_BLINDSCAN_MODE_AUTO;
    /* If your diseqc device need config polarization and 22K, you need registe the callback */
    stBlindScanPara.unScanPara.stSat.pfnDISEQCSet = hi_tuner_diseqc_set;
    stBlindScanPara.unScanPara.stSat.pfnEVTNotify = hi_tuner_blindscan_notify;
    Ret = HI_UNF_TUNER_BlindScanStart(TUNER_USE, &stBlindScanPara);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_TUNER_BlindScanStart failed.\n");
        goto SND_DETACH;
    }

    while(1)
    {
        printf("please input the q to quit!\n");
        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            if (g_pProgInfo)
            {
                free(g_pProgInfo);
            }
            break;
        }

    	ProgNum = atoi(InputCmd);

        if (!u32ChanNO)
        {
            printf("No program.\n");
            continue;
        }
    	else if(ProgNum >= u32ChanNO)
        {
            printf("Total prog num is %d, please input num between 0 and %d.\n", u32ChanNO, u32ChanNO - 1);
            ProgNum %= u32ChanNO;
        }   

        Ret = HIADP_Tuner_Connect(TUNER_USE, g_pProgInfo[ProgNum].u32Freq / 1000, g_pProgInfo[ProgNum].u32SymbolRate / 1000, s_astTP[ProgNum].enPolar);
		if (Ret != HI_SUCCESS)
		{
			sample_printf("call HIADP_Tuner_Connect failed!\n");
			continue;
		}

        ProgTbl.prog_num = 1;
        ProgTbl.proginfo = &(g_pProgInfo[ProgNum].prog);
        Ret = HIADP_AVPlay_PlayProg(hAvplay,&ProgTbl,0,HI_TRUE);
		if (Ret != HI_SUCCESS)
        {
            sample_printf("call SwitchProg failed.\n");
            if (g_pProgInfo)
            {
                free(g_pProgInfo);
            }
            goto AVPLAY_STOP;
        }
    }

AVPLAY_STOP:
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);

SND_DETACH:
    HI_UNF_SND_Detach(hTrack, hAvplay);

TRACK_DESTROY:
    HI_UNF_SND_DestroyTrack(hTrack);         

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin,HI_FALSE);
    HI_UNF_VO_DetachWindow(hWin, hAvplay);

CHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

    HI_UNF_AVPLAY_Destroy(hAvplay);

AVPLAY_DEINIT:
    HI_UNF_AVPLAY_DeInit();

TUNER_DEINIT:
    HIADP_Tuner_DeInit();

DMX_DEINIT:
    HI_UNF_DMX_DetachTSPort(0);
    HI_UNF_DMX_DeInit();

VO_DEINIT:
    HI_UNF_VO_DestroyWindow(hWin);
    HIADP_VO_DeInit();

DISP_DEINIT:
    HIADP_Disp_DeInit();

SND_DEINIT:
    HIADP_Snd_DeInit();

SYS_DEINIT:
    HI_SYS_DeInit();

    return Ret;
}


