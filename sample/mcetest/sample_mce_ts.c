/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mce_ts.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2011/04/26
  Description   :
  History       :
  1.Date        : 2011/04/26
    Author      : wkf44461
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
#include "tsanalyse.h"
#include "mpi_mmz.h"
#include "hi_adp.h"

/*if want to test please modify the #define*/
#define   IS_CYCLE               HI_TRUE
#define   PLAY_TIME              20
#define   PCR_PID		         0
#define   VELEMENT_PID           0
#define   AELEMENT_PID           0
#define   VIDEO_TYPE             HI_UNF_MCE_VDEC_TYPE_H264
#define   AUDIO_TYPE             HI_UNF_MCE_ADEC_TYPE_MP3
#define   VOLUME                 100
#define   TRACK_MODE             HI_UNF_TRACK_MODE_STEREO
#define   DEV_MODE               HI_UNF_VO_DEV_MODE_NORMAL
//END
int read_file(char *name, unsigned char *buf, unsigned int size)
{
	unsigned int len;
	FILE  *tsFile = HI_NULL;
	// 0
	tsFile = fopen(name, "rb");
	if (!tsFile)
	{
		sample_printf("open file %s err!\n", name);
		return -1;
	}
	// 1
	len = fread(buf, sizeof(HI_S8), size, tsFile);
	sample_printf("file size = 0x%08x!\n", len);
	// 2
	fclose(tsFile);
	tsFile = HI_NULL;
	return (int)len;
}

int mem_cmp(unsigned char *buf0, unsigned char *buf1, unsigned int size)
{
	unsigned int i;
	for(i = 0; i < size; i++)
	{
		if(buf0[i] != buf1[i])
		{
			break;
		}
	}
	if(i < (size-1))
	{
		return -1;
	}
	return 0;
}

#define DEF_PLAY_BUF_SIZE 0x1f00000

HI_MMZ_BUF_S  playWtBuf;
HI_MMZ_BUF_S  playRdBuf;
HI_UNF_MCE_PLAY_PARAM_S tsFileWtParam;
HI_UNF_MCE_PLAY_PARAM_S tsFileRdParam;

int test_begin(char *tsName)
{
	HI_S32 ret;	
	
	snprintf(playWtBuf.bufname, sizeof(playWtBuf.bufname),"playWtBuf");
	playWtBuf.bufsize = DEF_PLAY_BUF_SIZE;
	ret = HI_MPI_MMZ_Malloc(&playWtBuf);
	if(ret != HI_SUCCESS)
	{
		sample_printf("HI_MPI_MMZ_Malloc playWtBuf err \n");
		goto err0;
	}
	// 4
	snprintf(playRdBuf.bufname, sizeof(playRdBuf.bufname),"playRdBuf");
	playRdBuf.bufsize = DEF_PLAY_BUF_SIZE;
	ret = HI_MPI_MMZ_Malloc(&playRdBuf);
	if(ret != HI_SUCCESS)
	{
		HI_MPI_MMZ_Free(&playWtBuf);
		sample_printf("HI_MPI_MMZ_Malloc playRdBuf err \n");
		goto err0;
	}
	ret = read_file(tsName, playWtBuf.user_viraddr, playWtBuf.bufsize);
	if(ret <= 0)
	{
		HI_MPI_MMZ_Free(&playRdBuf);
		HI_MPI_MMZ_Free(&playWtBuf);
		sample_printf("read_file test.ts  err\n");
		goto err0;
	}
	// 6
	tsFileWtParam.playType = HI_UNF_MCE_TYPE_PLAY_TSFILE;
	tsFileWtParam.fastplayflag = HI_TRUE;
	tsFileWtParam.param.tsFileParam.contentLen = ret;
	tsFileWtParam.param.tsFileParam.IsCycle = IS_CYCLE;
	tsFileWtParam.param.tsFileParam.u32PlayTime = PLAY_TIME;
	tsFileWtParam.param.tsFileParam.PcrPid = PCR_PID;
	tsFileWtParam.param.tsFileParam.VElementPid = VELEMENT_PID;
	tsFileWtParam.param.tsFileParam.AElementPid = AELEMENT_PID;
	tsFileWtParam.param.tsFileParam.VideoType = VIDEO_TYPE;
	tsFileWtParam.param.tsFileParam.AudioType = AUDIO_TYPE;
	tsFileWtParam.param.tsFileParam.volume = VOLUME;
	tsFileWtParam.param.tsFileParam.trackMode = TRACK_MODE;
	tsFileWtParam.param.tsFileParam.devMode = DEV_MODE;
	
#if 1
{
    FILE *pFSrc;
   // FILEHandle FifiSrc;
    unsigned char *tmpbuffer;
    unsigned long fsize;
    int pcrpid = 0, vpid = 0, apid = 0, vtype = 0, atype = 0;
    
    pFSrc = fopen(tsName,"rb");
    if(pFSrc == NULL)
    {
        sample_printf("Error: Can not open source file.\n");
        return -1;
    }

    rewind(pFSrc);

    fseek(pFSrc, 0, SEEK_END);
    fsize = ftell(pFSrc);
    rewind(pFSrc);
    //copy data to Gobal data
    tmpbuffer = (unsigned char *)malloc(fsize);
    if(tmpbuffer == NULL)
    {
        sample_printf("Error: Can not open source file.\n");
        fclose(pFSrc);
        return -1;
    }
    fread(tmpbuffer, 1, fsize, pFSrc);
    fclose(pFSrc);
    
    ParseFIFO_TSStream(tmpbuffer, fsize, &pcrpid, &vpid, &apid, &vtype, &atype);
        
	tsFileWtParam.param.tsFileParam.PcrPid = pcrpid;
    if((vtype == 0x01) || (vtype == 0x02))
    {
        tsFileWtParam.param.tsFileParam.VideoType = HI_UNF_MCE_VDEC_TYPE_MPEG2;
        tsFileWtParam.param.tsFileParam.VElementPid  = vpid;
    }
    else if(vtype == 0x1b)
    {
        tsFileWtParam.param.tsFileParam.VideoType = HI_UNF_MCE_VDEC_TYPE_H264;
        tsFileWtParam.param.tsFileParam.VElementPid  = vpid;
    }
    
    if((atype == 0x03) || (atype == 0x04))
    {
        tsFileWtParam.param.tsFileParam.AudioType = HI_UNF_MCE_ADEC_TYPE_MP3;
        tsFileWtParam.param.tsFileParam.AElementPid  = apid;
    }
	sample_printf("\n***pcrpid:%d, vpid:%d, apid:%d, vtype:%d, atype:%d***\n", pcrpid, vpid, apid, vtype, atype);
	sample_printf("*** new pcrpid:0x%x, vpid:0x%x, apid:0x%x, vtype:0x%x, atype:0x%x***\n", 
	    tsFileWtParam.param.tsFileParam.PcrPid, tsFileWtParam.param.tsFileParam.VElementPid, tsFileWtParam.param.tsFileParam.AElementPid, 
	    tsFileWtParam.param.tsFileParam.VideoType, tsFileWtParam.param.tsFileParam.AudioType);
	
    free(tmpbuffer);
}

#endif
	return 0;
err0:
	return -1;
}
void usage()
{
	printf("please input character option!\n");
	printf("'u':update tsFile \n");
	printf("'e':get tsFile param\n");
	printf("'g':get tsFile content\n");
	printf("'c':compare tsFile content\n");
	printf("'f':compare tsFile param\n");
	printf("'q':quit\n");
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
	HI_U8  tmp;
	HI_S32 ret;
	if (2 != argc)
	{
		printf("Usage: sample_ts tsfile \n");
		printf("Example:./sample_mce_ts  ./test1.ts \n");
		return -1;
	}
	ret = test_begin(argv[1]);
	if(ret)
	{
		sample_printf("test_begin err! \n");
		goto over0;
	}
	sample_printf("test_begin ok \n");
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
			    /*update tsFile parameter and tsFile content must update at the same time;or error */
			    sample_printf("update tsFile  parameter  \n");
                
			    /* updata fastplay play paremeter */		
    			ret = HI_UNF_MCE_UpdatePlayParam(&tsFileWtParam);
    			if(ret)
    			{
    				sample_printf("HI_UNF_MCE_UpdatePlayParam err \n");
    			}
    			else
                {
    				printf("ok \n");
    			}	
				sample_printf("update tsFile content: \n");	
				ret = HI_UNF_MCE_UpdatePlayContent(playWtBuf.user_viraddr, tsFileWtParam.param.tsFileParam.contentLen);
				if(ret)
				{
					sample_printf("HI_UNF_MCE_UpdatePlayContent err \n");
				}
				else
				{
					printf("ok \n");
				}	
			}
			
			break;
			
		case 'e':
			{
				sample_printf("get tsFile param: \n");		
				ret = HI_UNF_MCE_GetPlayParam(&tsFileRdParam);
				if(ret)
				{
					sample_printf("HI_UNF_MCE_GetPlayParam err \n");
				}
				else
				{
				    HI_UNF_MCE_TSFILE_PARAM_S  *ptsFileParam;
                    
                    ptsFileParam = &(tsFileRdParam.param.tsFileParam);
				    sample_printf("tsFileWtParam.playType:%d\n", tsFileRdParam.playType);
				    sample_printf("tsFileWtParam.fastplayflag:%d\n", tsFileRdParam.fastplayflag);
				    sample_printf("contentLen:%d\n", ptsFileParam->contentLen);
				    sample_printf("IsCycle:%d\n", ptsFileParam->IsCycle);
				    sample_printf("PcrPid:%d\n", ptsFileParam->PcrPid);
				    sample_printf("VElementPid:%d\n", ptsFileParam->VElementPid);
				    sample_printf("AElementPid:%d\n", ptsFileParam->AElementPid);
				    sample_printf("VideoType:%d\n", ptsFileParam->VideoType);
				    sample_printf("AudioType:%d\n", ptsFileParam->AudioType);
				    sample_printf("volume:%d\n", ptsFileParam->volume);
				    sample_printf("trackMode:%d\n", ptsFileParam->trackMode);
				    sample_printf("devMode:%d\n", ptsFileParam->devMode);
			        sample_printf("playtime = %d\n",ptsFileParam->u32PlayTime);
				    sample_printf("LoopFlag = %d\n",ptsFileParam->IsCycle);
				    sample_printf("ok \n");
				}	
				break;
			}
			
		case 'g':
			{
				sample_printf("get tsFile content: \n");		
				ret = HI_UNF_MCE_GetPlayContent(playRdBuf.user_viraddr, tsFileWtParam.param.tsFileParam.contentLen);
				if(ret)
				{
					sample_printf("HI_UNF_MCE_GetPlayContent err \n");
				}
				else
				{
				    sample_printf(" tsfile user_viraddr:0x%x, contentLen:%d\n", (HI_U32)(playRdBuf.user_viraddr), tsFileWtParam.param.tsFileParam.contentLen);
					printf("ok \n");
				}	
				break;
			}
		case 'c':
			{
				printf("compare tsFile content: \n");		
				ret = mem_cmp(playWtBuf.user_viraddr, playRdBuf.user_viraddr, tsFileWtParam.param.tsFileParam.contentLen);
				if(ret)
				{
					printf("mem_cmp err \n");
				}
				else
				{
					printf("ok \n");
				}	
				break;
			}
	
		case 'f':
			{
				sample_printf("compare tsFile param: \n");
				if(tsFileWtParam.playType != tsFileRdParam.playType)
				{
					sample_printf("tsFileWtParam.playType(%d) != tsFileRdParam.playType(%d) \n", tsFileWtParam.playType, tsFileRdParam.playType);
				}
				else
				{
					ret = mem_cmp((unsigned char*)(&(tsFileWtParam.param.tsFileParam)), (unsigned char*)(&(tsFileRdParam.param.tsFileParam)),  sizeof(HI_UNF_MCE_TSFILE_PARAM_S));
					if(ret)
					{
						printf("mem_cmp err \n");
					}
					else
					{
						printf("ok \n");
					}
				}
				break;
			}
		case 'q':
			{
				printf("quit \n");
				goto over2;
		      }
		default:
			{
				//sample_printf("input error ,please again!\n");
				break;
			}
		}
	}
over2:
	HI_UNF_MCE_deInit();
over0:
	return 0;
}



































