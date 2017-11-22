/*******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
 * FileName: upgrd_main.c
 * Description:
 *       this sample finish the dvbplay function.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main1     2011-07-11   184737
 ******************************************************************************/
#include <pthread.h>
#include "dolby_dvbplay.h"
#include "dolby_common.h"
#include "hi_go.h"
#include "dolby_win.h"


extern HI_S32 HI_MPI_AVPLAY_SetDDPTestMode(HI_HANDLE hAvplay, HI_BOOL bEnable);

/*tuner device type*/
static HI_UNF_TUNER_DEV_TYPE_E s_enTunerDevType;

/*the handle of VO window*/
static HI_HANDLE  s_hWin;

/*the Mutex to protect shared variable*/
extern pthread_mutex_t g_Mutex;

QAM_S stQAMMap[MAX_QAM_MAP_LENGTH] = 
{
	{16,"QAM16 ",},
	{32,"QAM32 ",},
	{64,"QAM64 ",},
	{128,"QAM128",},
	{256,"QAM256"},
};

TUNERDEVTYPE_S stTunerMap[MAX_TUNER_MAP_LENGTH] = 
{	
    {0,"HI_UNF_TUNER_DEV_TYPE_XG_3BL       ",},
    {1,"HI_UNF_TUNER_DEV_TYPE_CD1616       ",},
    {2,"HI_UNF_TUNER_DEV_TYPE_ALPS_TDAE    ",},
    {3,"HI_UNF_TUNER_DEV_TYPE_TDCC         ",},
    {4,"HI_UNF_TUNER_DEV_TYPE_TDA18250     ",},
    {5,"HI_UNF_TUNER_DEV_TYPE_CD1616_DOUBLE",},
    {6,"HI_UNF_TUNER_DEV_TYPE_MT2081       ",},
    {7,"HI_UNF_TUNER_DEV_TYPE_TMX7070X     ",},
    {8,"HI_UNF_TUNER_DEV_TYPE_R820C        ",},
    {9,"HI_UNF_TUNER_DEV_TYPE_MXL203       ",},
    {10,"HI_UNF_TUNER_DEV_TYPE_AV2011       ",},
    {11,"HI_UNF_TUNER_DEV_TYPE_SHARP7903    ",},
    {12,"HI_UNF_TUNER_DEV_TYPE_MXL101       ",},
    {13,"HI_UNF_TUNER_DEV_TYPE_MXL603       ",},
    {14,"HI_UNF_TUNER_DEV_TYPE_IT9170       ",},
    {15,"HI_UNF_TUNER_DEV_TYPE_IT9133       ",},
    {16,"HI_UNF_TUNER_DEV_TYPE_TDA6651      ",},
    {17,"HI_UNF_TUNER_DEV_TYPE_TDA18250B    ",},
    {18,"HI_UNF_TUNER_DEV_TYPE_M88TS2022    ",},
    {19,"HI_UNF_TUNER_DEV_TYPE_CXD2861      ",},
    {20,"HI_UNF_TUNER_DEV_TYPE_RDA5815      ",},
    {21,"HI_UNF_TUNER_DEV_TYPE_BUTT         ",},
};

static HI_S32 DOLBY_GetTunerDevType(HI_CHAR *pcTunerDevType)
{
	HI_U32 i = 0;
	
	for(i = 0; i< MAX_TUNER_MAP_LENGTH; i++)
	{
		if(HI_SUCCESS == strcmp(stTunerMap[i].acTunerString,pcTunerDevType))
		{
			break;
		}
	}

	if(MAX_TUNER_MAP_LENGTH == i)
	{
		return HI_FAILURE;
	}
	
    s_enTunerDevType = (HI_UNF_TUNER_DEV_TYPE_E)stTunerMap[i].u32TunerEnum;
	sample_printf("TunerDev Type is : %s\n",stTunerMap[i].acTunerString);
	return HI_SUCCESS;
}

#if 0
static HI_S32 DOLBY_Tuner_Init(HI_VOID)
{
    HI_S32   Ret;
    HI_UNF_TUNER_ATTR_S          TunerAttr;

    Ret = HI_UNF_TUNER_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_Init failed.\n");
        return Ret;
    }

    Ret = HI_UNF_TUNER_Open(TUNER_USE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_Open failed.\n");
        HI_UNF_TUNER_DeInit();
        return Ret;
    }

    Ret = HI_UNF_TUNER_GetDeftAttr(TUNER_USE, &TunerAttr);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_GetDeftAttr failed.\n");
        HI_UNF_TUNER_Close(TUNER_USE);
        HI_UNF_TUNER_DeInit();
        return Ret;
    }

   // TunerAttr.enTunerDevType = s_enTunerDevType;
   // TunerAttr.enDemodDevType = DEMOD_TYPE;
    //TunerAttr.enI2cChannel = I2C_CHANNEL;
    GET_TUNER_CONFIG(TUNER_USE,TunerAttr);
    sample_printf("TunerAttr.enDemodDevType %d\n",TunerAttr.enDemodDevType);
    sample_printf("TunerAttr.enTunerDevType %d\n",TunerAttr.enTunerDevType);
    sample_printf("TunerAttr.enI2cChannel %d\n",TunerAttr.enI2cChannel);
    sample_printf("TunerAttr.u32ResetGpioNo %d\n",TunerAttr.u32ResetGpioNo);
    Ret = HI_UNF_TUNER_SetAttr(TUNER_USE, &TunerAttr);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_SetAttr failed.\n");
        HI_UNF_TUNER_Close(TUNER_USE);
        HI_UNF_TUNER_DeInit();
        return Ret;
    }

    return HI_SUCCESS;
}
#endif

#if 0
/* ture:mute, false:unmute */
static HI_VOID  DOLBY_AudioHardwareMute(HI_BOOL bMute)
{
    sample_printf("%s: %s \n", __FUNCTION__, bMute ? "Mute" : "UnMute");
    
    /* config pin multiplex */
    HI_SYS_WriteRegister(0x10203150, 0x03);
    
    HI_UNF_GPIO_Open();
    HI_UNF_GPIO_SetDirBit(84, HI_FALSE);
    if (bMute) /*Set Mute*/
    {
        HI_UNF_GPIO_WriteBit(84, HI_TRUE);
    }
    else /* UnMute */
    {
        HI_UNF_GPIO_WriteBit(84, HI_FALSE);
    }
    HI_UNF_GPIO_Close();
}
#endif


static HI_S32  DOLBY_Search_GetAllPmt(HI_U32 u32DmxId, PMT_COMPACT_TBL **ppProgTable)
{
    HI_S32   s32Ret;
    PAT_TB   pat_tb;

    if ( HI_NULL == ppProgTable)
    {
        return HI_FAILURE;
    }

    memset(&pat_tb, 0, sizeof(pat_tb));
	
	/* parse PAT, save program information in pat_tb */
    s32Ret = SRH_PATRequest(u32DmxId, &pat_tb);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to search PAT\n");
        return HI_FAILURE;
    }

    if (0 == pat_tb.u16ProgNum)
    {
        sample_printf("no Program searched!\n");
        return HI_FAILURE;
    }

    s32Ret = HI_DOLBY_ParsePMT(0,pat_tb,ppProgTable);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf(" DOLBY_Search_GetAllPmt call HI_DOLBY_ParsePMT failed\n");
        return HI_FAILURE;
    }

    return s32Ret;
}


HI_S32 HI_DOLBY_ParsePMT(HI_U32 u32DmxId, PAT_TB pat_tb,PMT_COMPACT_TBL **ppProgTable)
{
	HI_S32 i, s32Ret;
	PMT_TB pmt_tb;
	PMT_COMPACT_TBL *pProgTable = HI_NULL;
	HI_U32 u32Promnum = 0;
	
	memset(&pmt_tb, 0, sizeof(pmt_tb));
	
    pProgTable = (PMT_COMPACT_TBL*)malloc(sizeof(PMT_COMPACT_TBL));
    if (HI_NULL == pProgTable)
    {
        sample_printf("have no memory for pat\n");
        return HI_FAILURE;
    }
    
    pProgTable->prog_num = pat_tb.u16ProgNum;
    pProgTable->proginfo = (PMT_COMPACT_PROG*)malloc(pat_tb.u16ProgNum * sizeof(PMT_COMPACT_PROG));
    if (HI_NULL == pProgTable->proginfo)
    {
        sample_printf("have no memory for pat\n");
        free(pProgTable);
        pProgTable = HI_NULL;
        return HI_FAILURE;
    }

    memset(pProgTable->proginfo, 0, pat_tb.u16ProgNum * sizeof(PMT_COMPACT_PROG));

   //sample_printf("\n\nALL Program Infomation:\n");

    for (i = 0; i < pat_tb.u16ProgNum; i++)
    {
        if ((pat_tb.PatInfo[i].u16ServiceID == 0) || (pat_tb.PatInfo[i].u16PmtPid == 0x1fff))
        {
            continue;
        }

        memset(&pmt_tb, 0, sizeof(PMT_TB));
        s32Ret = SRH_PMTRequest(u32DmxId, &pmt_tb, pat_tb.PatInfo[i].u16PmtPid, pat_tb.PatInfo[i].u16ServiceID);
        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("failed to search PMT[%d]\n", i);
            free(pProgTable->proginfo);
            free(pProgTable);
			return HI_FAILURE;
            //continue;
        }

        pProgTable->proginfo[u32Promnum].ProgID = pat_tb.PatInfo[i].u16ServiceID;
        pProgTable->proginfo[u32Promnum].PmtPid = pat_tb.PatInfo[i].u16PmtPid;
        pProgTable->proginfo[u32Promnum].PcrPid = pmt_tb.u16PcrPid;
        pProgTable->proginfo[u32Promnum].VideoType   = pmt_tb.Videoinfo[0].u32VideoEncType;
        pProgTable->proginfo[u32Promnum].VElementNum = pmt_tb.u16VideoNum;
        pProgTable->proginfo[u32Promnum].VElementPid = pmt_tb.Videoinfo[0].u16VideoPid;
        pProgTable->proginfo[u32Promnum].AudioType   = pmt_tb.Audioinfo[0].u32AudioEncType;
        pProgTable->proginfo[u32Promnum].AElementNum = pmt_tb.u16AudoNum;
        pProgTable->proginfo[u32Promnum].AElementPid = pmt_tb.Audioinfo[0].u16AudioPid;
#if 0

		sample_printf("\t!!! AudioNum = %d , VideoNum = %d !!!\n",pmt_tb.u16AudoNum,pmt_tb.u16VideoNum);
		sample_printf("Channel Num = %d, Program ID = %d PMT PID = 0x%x,\n", u32Promnum + 1, pat_tb.PatInfo[i].u16ServiceID,
               pat_tb.PatInfo[i].u16PmtPid);

		for (j = 0; j < pmt_tb.u16AudoNum; j++)
        {
            sample_printf("\tAudio Stream PID	 = 0x%x\n",pmt_tb.Audioinfo[j].u16AudioPid);
            switch (pmt_tb.Audioinfo[j].u32AudioEncType)
            {
            case HA_AUDIO_ID_MP3:
                sample_printf("\tAudio Stream Type MP3\n");
                break;
            case HA_AUDIO_ID_AAC:
                sample_printf("\tAudio Stream Type AAC\n");
                break;
            case HA_AUDIO_ID_DOLBY_PLUS:
                sample_printf("\tAudio Stream Type AC3\n");
                break;
            default:				
                sample_printf("\tAudio Stream Type error\n");
            }
        }

		sample_printf("\t!!! Audio Stream end !!!\n");
		
        for (j = 0; j < pmt_tb.u16VideoNum; j++)
        {
            sample_printf("\tVideo Stream PID	 = 0x%x\n",pmt_tb.Videoinfo[j].u16VideoPid);
            switch (pmt_tb.Videoinfo[j].u32VideoEncType)
            {
            case HI_UNF_VCODEC_TYPE_H264:
                sample_printf("\tVideo Stream Type H264\n");
                break;
            case HI_UNF_VCODEC_TYPE_MPEG2:
                sample_printf("\tVideo Stream Type MP2\n");
                break;
            case HI_UNF_VCODEC_TYPE_MPEG4:
                sample_printf("\tVideo Stream Type MP4\n");
                break;
            default:
                sample_printf("\tVideo Stream Type error\n");
            }
        }

		sample_printf("\t!!! Video Stream end !!!\n");
#endif
        if ((pmt_tb.u16VideoNum > 0) || (pmt_tb.u16AudoNum > 0))
        {
            u32Promnum++;
        }
    }

    pProgTable->prog_num = u32Promnum;
	//sample_printf("\t!!! u32Promnum =  %d !!!\n",pProgTable->prog_num);
	
	if(HI_NULL !=(*ppProgTable))
	{
	    if (HI_NULL != (*ppProgTable)->proginfo)
	    {
	        free((*ppProgTable)->proginfo);
			//sample_printf("\t!!! free  proginfo!!!\n");
	        (*ppProgTable)->proginfo = HI_NULL;
	    }
	    free(*ppProgTable);
		//sample_printf("\t!!! free *ppProgTable!!!\n");
	}
	
    *ppProgTable = pProgTable;
    return HI_SUCCESS;
}

HI_S32 HI_DOLBY_DvbPlay(HI_CHAR *pcProgSearchArg[],HI_HANDLE *phAvplay,PMT_COMPACT_TBL	**ppstProgTbl)
{
    HI_S32                      s32Ret;
    HI_UNF_AVPLAY_ATTR_S        stAvplayAttr;
    HI_UNF_SYNC_ATTR_S          stSyncAttr;
    HI_UNF_AVPLAY_STOP_OPT_S    stStop;
	HI_U32                      u32TunerFreq;
	HI_U32                      u32TunerSrate;
	HI_U32                      u32TunerQam;
//    HI_U32                      u32Playtime;
	HI_U32                      i = 0;

    if (HI_NULL != pcProgSearchArg)
    {
        u32TunerFreq  = strtol(pcProgSearchArg[0],NULL,0);
        u32TunerSrate = strtol(pcProgSearchArg[1],NULL,0);
		for(i = 0; i< MAX_QAM_MAP_LENGTH; i++)
		{
			if(HI_SUCCESS == strcmp(stQAMMap[i].acQam,pcProgSearchArg[2]))
			{
				break;
			}
		}
		
		if(i< MAX_QAM_MAP_LENGTH)
		{
        	u32TunerQam   = stQAMMap[i].u32Qam;
		}
		else
		{
			sample_printf("HI_DOLBY_DvbPlay QAM Wrong ! \n");
        	return HI_FAILURE;
		}
    }
    else
    {
        sample_printf("HI_DOLBY_DvbPlay Arg Error ! \n");
        return HI_FAILURE;
    }
	
	sample_printf("Freq = %d , Srate = %d , QAM = %d\n",u32TunerFreq,u32TunerSrate,u32TunerQam);
    s32Ret = HIADP_AVPlay_RegADecLib();
    s32Ret |= HI_UNF_AVPLAY_Init();
    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto PSISI_FREE;
    }

    s32Ret = HI_UNF_AVPLAY_GetDefaultConfig(&stAvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
	stAvplayAttr.stStreamAttr.u32VidBufSize = 4*1024*1024;
	s32Ret |= HI_UNF_AVPLAY_Create(&stAvplayAttr, phAvplay);
    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }
    s32Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        goto SYS_DEINIT;
    }
	//jiaxi del DOLBY_AudioHardwareMute(HI_FALSE);

	
    //HI_SYS_GetPlayTime(&u32Playtime);
   // sample_printf("u32Playtime = %d\n",u32Playtime);


    s32Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    s32Ret |= HIADP_VO_CreatWin(HI_NULL,&s_hWin);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    s32Ret = HI_UNF_DMX_Init();
  
    s32Ret |= HI_UNF_DMX_AttachTSPort(0,DEFAULT_DVB_PORT);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto VO_DEINIT;
    }

	s32Ret = DOLBY_GetTunerDevType(pcProgSearchArg[3]);
	if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call DOLBY_GetTunerDevType failed.\n");
        goto DMX_DEINIT;
    }

   // s32Ret = DOLBY_Tuner_Init();
   s32Ret =HIADP_Tuner_Init();
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto DMX_DEINIT;
    }

    sample_printf("u32TunerFreq %d,u32TunerSrate %d,u32TunerQam %d\n",u32TunerFreq,u32TunerSrate,u32TunerQam);
    s32Ret = HIADP_Tuner_Connect(TUNER_USE,u32TunerFreq,u32TunerSrate,u32TunerQam);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HIADP_Tuner_Connect failed.\n");
        goto TUNER_DEINIT;
    }

    HIADP_Search_Init();

    s32Ret = DOLBY_Search_GetAllPmt(0,ppstProgTbl);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HIADP_Search_GetAllPmt failed\n");
        goto PSISI_FREE;
    }    

	HI_MPI_AVPLAY_SetDDPTestMode(*phAvplay,HI_TRUE);
    HI_UNF_SND_SetHdmiEdidAutoMode(HI_UNF_SND_0, HI_TRUE);
	HI_UNF_SND_SetSpdifPassThrough(HI_UNF_SND_0, HI_TRUE);

    s32Ret = HI_UNF_AVPLAY_ChnOpen(*phAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    s32Ret |= HI_UNF_AVPLAY_ChnOpen((*phAvplay), HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto CHN_CLOSE;
    }

    s32Ret = HI_UNF_VO_AttachWindow(s_hWin, *phAvplay);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
        goto CHN_CLOSE;
    }

   s32Ret = HI_UNF_VO_SetWindowEnable(s_hWin, HI_TRUE);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        goto WIN_DETACH;
    }

    s32Ret = HI_UNF_SND_Attach(HI_UNF_SND_0, *phAvplay, HI_UNF_SND_MIX_TYPE_MASTER, 100);
    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call HI_SND_Attach failed.\n");
        goto WIN_DETACH;
    }

    s32Ret = HI_UNF_AVPLAY_GetAttr(*phAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr);
    stSyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    stSyncAttr.stSyncStartRegion.s32VidPlusTime = 20;
    stSyncAttr.stSyncStartRegion.s32VidNegativeTime = -15;
    stSyncAttr.bQuickOutput = HI_FALSE;
    s32Ret = HI_UNF_AVPLAY_SetAttr(*phAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr);
    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETACH;
    }

    s32Ret = HIADP_AVPlay_PlayProg(*phAvplay,*ppstProgTbl,0,HI_TRUE);
    if (s32Ret != HI_SUCCESS)
    {
        sample_printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;
    }

	return HI_SUCCESS;

AVPLAY_STOP:
    stStop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    stStop.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(*phAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &stStop);

SND_DETACH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, *phAvplay);

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(s_hWin,HI_FALSE);
    HI_UNF_VO_DetachWindow(s_hWin, *phAvplay);

CHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(*phAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

    HI_UNF_AVPLAY_Destroy(*phAvplay);

AVPLAY_DEINIT:
    HI_UNF_AVPLAY_DeInit();

PSISI_FREE:
    HIADP_Search_FreeAllPmt(*ppstProgTbl);
    HIADP_Search_DeInit();

TUNER_DEINIT:
    HIADP_Tuner_DeInit();

DMX_DEINIT:
    HI_UNF_DMX_DetachTSPort(0);
    HI_UNF_DMX_DeInit();

VO_DEINIT:
    HI_UNF_VO_DestroyWindow(s_hWin);
    HIADP_VO_DeInit();

DISP_DEINIT:
    //HIADP_Disp_DeInit();
	
#if 0
SND_DEINIT:
    HIADP_Snd_DeInit();
#endif

SYS_DEINIT:
    //HI_SYS_DeInit();

    return s32Ret;
}

HI_S32 HI_DOLBY_DvbPlayDeinit(HI_HANDLE *phAvplay)
{
    HI_UNF_AVPLAY_STOP_OPT_S    stStop;
	
	/*AVPLAY_STOP:*/
	stStop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
	stStop.u32TimeoutMs = 0;
	HI_UNF_AVPLAY_Stop(*phAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &stStop);

	/*SND_DETACH:*/
	HI_UNF_SND_Detach(HI_UNF_SND_0, *phAvplay);

	/*WIN_DETACH:*/
	HI_UNF_VO_SetWindowEnable(s_hWin,HI_FALSE);
	HI_UNF_VO_DetachWindow(s_hWin, *phAvplay);

	/*CHN_CLOSE:*/
	HI_UNF_AVPLAY_ChnClose(*phAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
	HI_UNF_AVPLAY_Destroy(*phAvplay);

	/*AVPLAY_DEINIT:*/
	HI_UNF_AVPLAY_DeInit();

	/*PSISI_FREE:*/
	//HIADP_Search_FreeAllPmt(g_pstProgTbl);
	HIADP_Search_DeInit();

	/*TUNER_DEINIT:*/
	HIADP_Tuner_DeInit();

	/*DMX_DEINIT:*/
	HI_UNF_DMX_DetachTSPort(0);
	HI_UNF_DMX_DeInit();
	
	/*VO_DEINIT:*/
	HI_UNF_VO_DestroyWindow(s_hWin);
	HIADP_VO_DeInit();
	
	*phAvplay = 0;

	return HI_SUCCESS;
#if 0	
	DISP_DEINIT:
		HIADP_Disp_DeInit();
	
	SND_DEINIT:
		HIADP_Snd_DeInit();
	
	SYS_DEINIT:
		HI_SYS_DeInit();
#endif
}
