/******************************************************************************
\brief test uti play,modify by dvbplay
\file
\brief
\copyright Shenzhen Hisilicon Co., Ltd.
\version draft
\author l00167705
\date 2011-6-25
*/


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

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"
#include "hi_unf_ecs.h"
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

#include "uti_driver.h"

HI_U32 g_TunerFreq;
HI_U32 g_TunerSrate;
HI_U32 g_TunerQam;
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;

PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;

#define UTI1201_TEST_OPEN

#ifdef UTI1201_TEST_OPEN
#define DEFAULT_DVB_PORT 1
#else
#define DEFAULT_DVB_PORT 0
#endif

void TestUTI()
{	
	unsigned char bValue8=0;
	unsigned short	 wValue16=0;
	int iFd = -1;
	
	HI_UNF_SMI_Init(16);
	
	iFd  = HI_UNF_SMI_Open();
	if(iFd  == HI_FAILURE)
	{
	       printf("Error: HI_UNF_Smc_Open error.\n");
	       return;
	}	
	
	UTIDriverWriteRegU16(0x800, 0xff); // RESET
	
	UTIDriverReadRegU8(0x01, &bValue8);		
	printf("read:POWER1{%x}\n",bValue8);
	UTIDriverWriteRegU8(0x01, 0x20);//POWER

	UTIDriverReadRegU8(0x01, &bValue8);
	UTIDriverWriteRegU8(0x01, bValue8|0x01);//POWER   
	
	UTIDriverReadRegU8(0x01, &bValue8);	
    printf("    POWER1{%x}\n",bValue8);
	
	UTIDriverReadRegU8(0x60, &bValue8);
	UTIDriverWriteRegU8(0x60, bValue8 |0x01);//DEVCTL
	
	UTIDriverReadRegU8(0x60, &bValue8);	
	printf("    DEVCTL{%x}\n",bValue8);


	UTIDriverReadRegU8( 0x01,&bValue8);
	printf("    POWER{%x}\n",bValue8);
	
	UTIDriverReadRegU16(0x800,&wValue16);
	UTIDriverWriteRegU16(0x800,wValue16&(~0x10));//close USB clock
	
	/**Set Ts direction ***********/	
	// The uti internal transparent transmission can be used to play a clean, and test hardware is ok
	UTIDriverWriteRegU16( 0x812,0x00);
	UTIDriverWriteRegU16( 0x810,0x000);

	// uti after the descrambler output
	//UTIDriverWriteRegU16( 0x812,0x1);
	//UTIDriverWriteRegU16( 0x810,0x224);
 
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
//    HI_U32  u32Playtime;

    /* Initialize uti1201, and in its initialization function,
	   set the ts of tsout complex relationship*/
    #ifdef UTI1201_TEST_OPEN
    TestUTI();
    #endif   
    	
    if (5 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = strtol(argv[2],NULL,0);
        g_TunerQam   = strtol(argv[3],NULL,0);
        g_enDefaultFmt = HIADP_Disp_StrToFmt(argv[4]);
    }
    else if (4 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = strtol(argv[2],NULL,0);
        g_TunerQam   = strtol(argv[3],NULL,0);
        g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
    }
    else if(3 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = strtol(argv[2],NULL,0);
        g_TunerQam   = 64;
        g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
    }
    else if(2 == argc)
    {
        g_TunerFreq  = strtol(argv[1],NULL,0);
        g_TunerSrate = 6875;
        g_TunerQam   = 64;
        g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
    }
    else
    {
        printf("Usage: sample_dvbplay freq [srate] [qamtype] [vo_format]\n"
               "       qamtype:16|32|[64]|128|256|512\n"
               "       vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50\n");
        printf("Example:./sample_dvbplay 610 6875 64 1080i_50\n");
        return HI_FAILURE;
    }

    HI_SYS_Init();
	//HI_SYS_PreAV(NULL);
    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Snd_Init failed.\n");
        goto SYS_DEINIT;
    }
    //HI_SYS_GetPlayTime(& u32Playtime);
    Ret = HIADP_Disp_Init(g_enDefaultFmt);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Disp_DeInit failed.\n");
        goto SND_DEINIT;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    Ret = HI_UNF_DMX_Init();

    #ifdef UTI1201_TEST_OPEN
    HI_UNF_DMX_PORT_ATTR_S stPortAttr;
    HI_UNF_DMX_GetTSPortAttr(DEFAULT_DVB_PORT, &stPortAttr);
    stPortAttr.enPortType  =HI_UNF_DMX_PORT_TYPE_PARALLEL_VALID;
    HI_UNF_DMX_SetTSPortAttr(1, &stPortAttr);
    #endif
    
    Ret |= HI_UNF_DMX_AttachTSPort(0,DEFAULT_DVB_PORT);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Demux_Init failed.\n");
        goto VO_DEINIT;
    }

    Ret = HIADP_Tuner_Init();
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Demux_Init failed.\n");
        goto DMX_DEINIT;
    }

    Ret = HIADP_Tuner_Connect(TUNER_USE,g_TunerFreq,g_TunerSrate,g_TunerQam);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Tuner_Connect failed.\n");
        goto TUNER_DEINIT;
    }	

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(0,&g_pProgTbl);
    if (HI_SUCCESS != Ret)
    {
        printf("call HIADP_Search_GetAllPmt failed\n");
        goto PSISI_FREE;
    }

    Ret = HIADP_AVPlay_RegADecLib();
    Ret |= HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto PSISI_FREE;
    }

    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    Ret |= HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto CHN_CLOSE;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_VO_AttachWindow failed.\n");
        goto CHN_CLOSE;
    }
    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        goto WIN_DETACH;
    }

    Ret = HI_UNF_SND_Attach(HI_UNF_SND_0, hAvplay, HI_UNF_SND_MIX_TYPE_MASTER, 100);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_SND_Attach failed.\n");
        goto WIN_DETACH;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
    SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
    SyncAttr.bQuickOutput = HI_FALSE;
    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETACH;
    }

    ProgNum = 0;
    Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pProgTbl,ProgNum,HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;
    }

    while(1)
    {
        printf("please input the q to quit!\n");
        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }

    	ProgNum = atoi(InputCmd);

    	if(ProgNum == 0)
    	    ProgNum = 1;

		Ret = HIADP_AVPlay_PlayProg(hAvplay,g_pProgTbl,ProgNum-1,HI_TRUE);
		if (Ret != HI_SUCCESS)
		{
			printf("call SwitchProgfailed!\n");
			break;
		}
    }

AVPLAY_STOP:
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);

SND_DETACH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin,HI_FALSE);
    HI_UNF_VO_DetachWindow(hWin, hAvplay);

CHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

    HI_UNF_AVPLAY_Destroy(hAvplay);

AVPLAY_DEINIT:
    HI_UNF_AVPLAY_DeInit();

PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pProgTbl);
    HIADP_Search_DeInit();

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
    
 #ifdef UTI1201_TEST_OPEN
	HI_UNF_SMI_Close();
	HI_UNF_SMI_DeInit();
 #endif

    return Ret;
}


