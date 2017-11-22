/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mce_dvb.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2011/4/26
  Description   :
  History       :
  1.Date        : 2011/04/26
    Author      : wkf4461
    Modification: Created file

******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include <semaphore.h>
#include <time.h>

#include "hi_type.h"

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"
#include "hi_unf_ecs.h"
#include "hi_unf_mce.h"
#include "hi_adp_boardcfg.h"
//#include "drv_tuner_ioctl.h"
#include "hi_adp.h"


HI_UNF_MCE_PLAY_PARAM_S dvbWtParam;
HI_UNF_MCE_PLAY_PARAM_S dvbRdParam;

//test please modify the #define 
//begin 
#define  PCR_PID		      0x200
#define  PLAY_TIME	          20
#define  VELEMENT_PID         0x200             
#define  AELEMENT_PID		  0x28a
#define  VIDEO_TYPE           HI_UNF_MCE_VDEC_TYPE_MPEG2
#define  AUDIO_TYPE           HI_UNF_MCE_ADEC_TYPE_MP3
#define  TUNNER_ID            0
#define  TUNNER_FREQ		  610
#define  TUNNER_SRATE         6875
#define  TUNNER_QAM		      2
#define  VOLUME			      100
#define  TRACK_MODE		      HI_UNF_TRACK_MODE_STEREO
#define  DEV_MODE		      HI_UNF_VO_DEV_MODE_NORMAL

//end
int test_begin()
{
	dvbWtParam.playType = HI_UNF_MCE_TYPE_PLAY_DVB;
	dvbWtParam.fastplayflag = HI_TRUE;
	dvbWtParam.param.dvbParam.PcrPid = PCR_PID;
	dvbWtParam.param.dvbParam.u32PlayTime = PLAY_TIME;
	dvbWtParam.param.dvbParam.AudioType = AUDIO_TYPE;
    dvbWtParam.param.dvbParam.VideoType =VIDEO_TYPE;
	dvbWtParam.param.dvbParam.VElementPid = VELEMENT_PID;
	dvbWtParam.param.dvbParam.AElementPid = AELEMENT_PID;
	dvbWtParam.param.dvbParam.tunerFreq = TUNNER_FREQ;
	dvbWtParam.param.dvbParam.tunerId = TUNNER_ID;
	dvbWtParam.param.dvbParam.tunerSrate = TUNNER_SRATE;
	dvbWtParam.param.dvbParam.tunerQam = TUNNER_QAM;
	dvbWtParam.param.dvbParam.volume = VOLUME;
	dvbWtParam.param.dvbParam.trackMode = TRACK_MODE;
	dvbWtParam.param.dvbParam.devMode = DEV_MODE;
	dvbWtParam.param.dvbParam.tunerDevType = HI_UNF_TUNER_DEV_TYPE_CD1616;
	dvbWtParam.param.dvbParam.demoDev  = HI_UNF_DEMOD_DEV_TYPE_3130I;
	dvbWtParam.param.dvbParam.I2cChannel = HI_UNF_I2C_CHANNEL_QAM;
	return 0;
}
void usage()
{
	printf("please input character option:\n");
	printf("'u': update dvb param\n");
	printf("'i': get dvb param\n");
	printf("'q': quit\n");
}
HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
	HI_U8  tmp;
	HI_S32 ret;
	ret = test_begin();
	if(ret)
	{
		sample_printf("test_begin err! \n");
		goto over0;
	}
	printf("test_begin ok \n");
	
	ret = HI_UNF_MCE_Init(HI_UNF_PARTION_TYPE_PLAY);
	if(ret)
	{
		sample_printf("HI_UNF_MCE_Init err! \n");
		goto over0;
	}
	sample_printf("HI_UNF_MCE_Init ok \n");
	sample_printf("HI_UNF_MCE_SetFlag ok \n");
	usage();
	while(1)
	{	
		tmp = getchar();
		switch(tmp)
		{
			case 'u':
			{
				sample_printf("update dvb param: \n");		
				ret = HI_UNF_MCE_UpdatePlayParam(&dvbWtParam);
				if(ret)
				{
					sample_printf("HI_UNF_MCE_UpdatePlayParam err \n");
				}
				else
				{
					sample_printf("ok \n");
				}	
				break;
			}
			case 'i':
			{
				sample_printf("get dvb aram: \n");		
				ret = HI_UNF_MCE_GetPlayParam(&dvbRdParam);
				if(ret)
				{
					sample_printf("HI_UNF_MCE_GetPlayParam err \n");
				}
				else
				{
				        HI_UNF_MCE_DVB_PARAM_S *pdvbParam;
				        sample_printf("dvbRdParam.playType:%d\n", dvbRdParam.playType);
		                pdvbParam = &(dvbRdParam.param.dvbParam);
		                sample_printf("PcrPid:%d\n", pdvbParam->PcrPid);
		                sample_printf("VElementPid:%d\n", pdvbParam->VElementPid);
		                sample_printf("AElementPid:%d\n", pdvbParam->AElementPid);
		                sample_printf("VideoType:%d\n", pdvbParam->VideoType);
		                sample_printf("AudioType:%d\n", pdvbParam->AudioType);
		                sample_printf("tunerId:%d\n", pdvbParam->tunerId);
		                sample_printf("tunerFreq:%d\n", pdvbParam->tunerFreq);
		                sample_printf("tunerSrate:%d\n", pdvbParam->tunerSrate);
		                sample_printf("tunerQam:%d\n", pdvbParam->tunerQam);
		                sample_printf("volume:%d\n", pdvbParam->volume);
		                sample_printf("trackMode:%d\n", pdvbParam->trackMode);
		                sample_printf("devMode:%d\n", pdvbParam->devMode);
				        sample_printf("PlayTime:%d\n",pdvbParam->u32PlayTime);
				        sample_printf("FastplayFlag:%d\n",dvbRdParam.fastplayflag);
				        sample_printf("tunerDevType:%d\n",pdvbParam->tunerDevType);
				        sample_printf("demoDev:%d\n",pdvbParam->demoDev);
				        sample_printf("I2cChannel:%d\n",pdvbParam->I2cChannel);
			          sample_printf("ok \n");
				}	
			     break;
			}
			case 'q':
			{
				sample_printf("quit \n");
				goto over2;
			}
			default:
			{
			//	sample_printf("input error ,please again!\n");
				break;
			}
		}
	}
over2:
	HI_UNF_MCE_deInit();
over0:
	return 0;
}














