/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
  File Name	: mpi_avplay.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: w58735
    Modification	: Created file

*******************************************************************************/

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <memory.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <sys/times.h>

#include "hi_mpi_avplay.h"
#include "hi_error_mpi.h"
#include "hi_mpi_mem.h"
#include "hi_module.h"
#include "drv_struct_ext.h"
#include "drv_struct_ext.h"
#ifdef HI_AVPLAY_FCC_SUPPORT
#include "frame_detect.h"
#endif

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#define AVPLAY_AUD_SPEED_ADJUST_SUPPORT

static HI_S32            g_AvplayDevFd    = -1;
static const HI_CHAR     g_AvplayDevName[] ="/dev/"UMAP_DEVNAME_AVPLAY;
static pthread_mutex_t   g_AvplayMutex = PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t   g_AvplayResMutex[AVPLAY_MAX_NUM] = {PTHREAD_MUTEX_INITIALIZER};

#ifdef HI_AVPLAY_FCC_SUPPORT
static HI_U8            g_StartCode[] = {0, 0, 1};
#endif

//static HI_U32 u32ThreadMutexCount = 0, u32AvplayMutexCount = 0;
void AVPLAY_ThreadMutex_Lock(pthread_mutex_t *ss)
{
    //u32ThreadMutexCount ++;
    //HI_INFO_AVPLAY("lock u32ThreadMutexCount:%d\n", u32ThreadMutexCount);
    (void)pthread_mutex_lock(ss);
}

void AVPLAY_ThreadMutex_UnLock(pthread_mutex_t *ss)
{
    //u32ThreadMutexCount --;
    //HI_INFO_AVPLAY("unlock u32ThreadMutexCount:%d\n", u32ThreadMutexCount);
    (void)pthread_mutex_unlock(ss);
}

void AVPLAY_Mutex_Lock(pthread_mutex_t *ss)
{
    //u32AvplayMutexCount ++;
    //HI_INFO_AVPLAY("lock u32AvplayMutexCount:%d\n", u32AvplayMutexCount);
    (void)pthread_mutex_lock(ss);
}

void AVPLAY_Mutex_UnLock(pthread_mutex_t *ss)
{
    //u32AvplayMutexCount --;
    //HI_INFO_AVPLAY("unlock u32AvplayMutexCount:%d\n", u32AvplayMutexCount);
    (void)pthread_mutex_unlock(ss);
}

#define HI_AVPLAY_LOCK()        (void)pthread_mutex_lock(&g_AvplayMutex);
#define HI_AVPLAY_UNLOCK()      (void)pthread_mutex_unlock(&g_AvplayMutex);
#define HI_AVPLAY_INST_LOCK()        \
do{\
    if((hAvplay & 0xff) >=AVPLAY_MAX_NUM)\
    {\
        HI_ERR_AVPLAY("avplay support %d instance, but this para:%d is illegal\n", AVPLAY_MAX_NUM, (hAvplay & 0xff));\
        return HI_ERR_AVPLAY_INVALID_PARA;\
    }\
    (void)pthread_mutex_lock(&g_AvplayResMutex[(hAvplay & 0xff)]);\
}while(0)

#define HI_AVPLAY_INST_UNLOCK()        \
do{\
    if((hAvplay & 0xff)>=AVPLAY_MAX_NUM)\
    {\
        HI_ERR_AVPLAY("avplay support %d instance, but this para:%d is illegal\n", AVPLAY_MAX_NUM, (hAvplay & 0xff));\
        return HI_ERR_AVPLAY_INVALID_PARA;\
    }\
    (void)pthread_mutex_unlock(&g_AvplayResMutex[(hAvplay & 0xff)]);\
}while(0)

#define AVPLAY_GET_INST_AND_LOCK()\
do{\
    HI_AVPLAY_LOCK();\
    if (g_AvplayDevFd < 0)\
    {\
        HI_ERR_AVPLAY("AVPLAY is not init.\n");\
        HI_AVPLAY_UNLOCK();\
        return HI_ERR_AVPLAY_DEV_NO_INIT;\
    }\
    HI_AVPLAY_UNLOCK();\
    HI_AVPLAY_INST_LOCK(); \
    memset(&AvplayUsrAddr, 0, sizeof(AvplayUsrAddr)); \
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);\
    if (Ret != HI_SUCCESS)\
    {\
        HI_AVPLAY_INST_UNLOCK();\
        return HI_ERR_AVPLAY_INVALID_PARA;\
    }\
    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;\
}while(0)
#define CHECK_AVPLAY_INIT()\
do{\
    HI_AVPLAY_LOCK();\
    if (g_AvplayDevFd < 0)\
    {\
        HI_ERR_AVPLAY("AVPLAY is not init.\n");\
        HI_AVPLAY_UNLOCK();\
        return HI_ERR_AVPLAY_DEV_NO_INIT;\
    }\
    HI_AVPLAY_UNLOCK();\
}while(0)

extern HI_S32 AVPLAY_ResetAudChn(AVPLAY_S *pAvplay);
extern HI_S32 AVPLAY_Reset(AVPLAY_S *pAvplay);

HI_U32 AVPLAY_GetSysTime(HI_VOID)
{
    HI_U32      Ticks;
    struct tms  buf;    

    /* a non-NULL value is required here */
    Ticks = (HI_U32)times(&buf);

    return Ticks * 10;
}

HI_VOID AVPLAY_Notify(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_EVENT_E EvtMsg, HI_U32 EvtPara)
{
    if (pAvplay->EvtCbFunc[EvtMsg])
    {
        (HI_VOID)(pAvplay->EvtCbFunc[EvtMsg](pAvplay->hAvplay, EvtMsg, EvtPara));
    }

    return;
}

HI_BOOL AVPLAY_IsBufEmpty(AVPLAY_S *pAvplay)
{
    ADEC_BUFSTATUS_S            AdecBuf = {0};
    VDEC_STATUSINFO_S           VdecBuf = {0};
    HI_U32                      AudEsBuf = 0;
    HI_U32                      VidEsBuf = 0;
    HI_U32                      VidEsBufWptr = 0;
    HI_U32                      AudEsBufWptr = 0;

    HI_U32                      WinDelay = 0;
    HI_U32                      Systime = 0;
    HI_U32                      u32TsCnt = 0;
	HI_BOOL                     bEmpty = HI_TRUE;
    HI_S32                      Ret;

    if (!pAvplay->AudEnable && !pAvplay->VidEnable)
    {
        return HI_TRUE;
    }

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf);
        if (HI_SUCCESS == Ret)
        {
            AudEsBuf = AdecBuf.u32BufferUsed;
            AudEsBufWptr = AdecBuf.u32BufWritePos;
        }
		

		if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
		{
	    	(HI_VOID)HI_MPI_AO_Track_IsBufEmpty(pAvplay->hSyncTrack, &bEmpty);
		}
	
    }
      
    if (pAvplay->VidEnable)
    {
        
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            (HI_VOID)HI_MPI_DMX_GetChannelTsCount(pAvplay->hDmxVid, &u32TsCnt);
        }  
        else
        {    
            Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
            if (HI_SUCCESS == Ret)
            {
                VidEsBuf = VdecBuf.u32BufferUsed;
            }
           
        }

        (HI_VOID)HI_MPI_VO_GetWindowDelay(pAvplay->hWindow[0], &WinDelay);
    }  

	if ((WinDelay > 40) || (bEmpty != HI_TRUE))
	{
        pAvplay->CurBufferEmptyState = HI_FALSE;
        return HI_FALSE;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
          if ((AudEsBuf < AVPLAY_EOS_BUF_MIN_LEN)
            &&(u32TsCnt == pAvplay->PreTscnt )
            &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr))
          {
              pAvplay->PreAudEsBuf = AudEsBuf;
              pAvplay->PreTscnt = u32TsCnt;
              pAvplay->CurBufferEmptyState = HI_TRUE;
              pAvplay->PreSystime = 0;
              return HI_TRUE;
          }
          else
          {
              if ((AudEsBuf == pAvplay->PreAudEsBuf)
                &&(u32TsCnt == pAvplay->PreTscnt )
                &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr)
                 )
              {
                  Systime = AVPLAY_GetSysTime();
        
                  if (((Systime > pAvplay->PreSystime) && ((Systime-pAvplay->PreSystime) > AVPLAY_EOS_TIMEOUT))
                    ||((Systime < pAvplay->PreSystime) && (((SYS_TIME_MAX-pAvplay->PreSystime)+Systime) > AVPLAY_EOS_TIMEOUT))
                     )
                  {
                      pAvplay->PreAudEsBuf = AudEsBuf;
                      pAvplay->CurBufferEmptyState = HI_TRUE;
                      pAvplay->PreSystime = 0;
                      return HI_TRUE;
                  }
              }
              else
              {
                  pAvplay->PreAudEsBuf = AudEsBuf;
                  pAvplay->PreTscnt = u32TsCnt;
                  pAvplay->PreAudEsBufWPtr = AudEsBufWptr;
                  pAvplay->PreSystime = AVPLAY_GetSysTime();
              }
          }
    }
    else
    {
        if ((AudEsBuf < AVPLAY_EOS_BUF_MIN_LEN)
            &&(VidEsBuf < AVPLAY_EOS_BUF_MIN_LEN)
            &&(VidEsBufWptr == pAvplay->PreVidEsBufWPtr)
            &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr))
        {
          pAvplay->PreAudEsBuf = AudEsBuf;
          pAvplay->PreVidEsBuf = VidEsBuf;
          pAvplay->CurBufferEmptyState = HI_TRUE;
          pAvplay->PreSystime = 0;
          return HI_TRUE;
        }
        else
        {                
            if ((AudEsBuf == pAvplay->PreAudEsBuf)
                &&(VidEsBuf == pAvplay->PreVidEsBuf)
                &&(VidEsBufWptr == pAvplay->PreVidEsBufWPtr)
                &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr)
             )
            {
              Systime = AVPLAY_GetSysTime();

              if (((Systime > pAvplay->PreSystime) && ((Systime-pAvplay->PreSystime) > AVPLAY_EOS_TIMEOUT))
                    ||((Systime < pAvplay->PreSystime) && (((SYS_TIME_MAX-pAvplay->PreSystime)+Systime) > AVPLAY_EOS_TIMEOUT))
                    )
              {
                  pAvplay->PreAudEsBuf = AudEsBuf;
                  pAvplay->PreVidEsBuf = VidEsBuf;
                  pAvplay->CurBufferEmptyState = HI_TRUE;
                  pAvplay->PreSystime = 0;
                  return HI_TRUE;
              }
            }
            else
            {
              pAvplay->PreAudEsBuf = AudEsBuf;
              pAvplay->PreVidEsBuf = VidEsBuf;
              pAvplay->PreVidEsBufWPtr = VidEsBufWptr;
              pAvplay->PreAudEsBufWPtr = AudEsBufWptr;
              pAvplay->PreSystime = AVPLAY_GetSysTime();
            }  
        }   
    }
   
    pAvplay->CurBufferEmptyState = HI_FALSE;
    
    return HI_FALSE;
}

HI_UNF_AVPLAY_BUF_STATE_E AVPLAY_CaclBufState(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, HI_U32 UsedBufPercent)
{
    HI_U32      HighBufWaterline;
    HI_U32      LowBufWaterline;
    HI_U32      DitherWaterline;

    if (HI_UNF_AVPLAY_MEDIA_CHAN_AUD == enChn)
    {
        HighBufWaterline = pAvplay->AudHighBufWaterline;
        LowBufWaterline = pAvplay->AudLowBufWaterline;
        DitherWaterline = pAvplay->AudDitherWaterline;
    }
    else
    {
        HighBufWaterline = pAvplay->VidHighBufWaterline;
        LowBufWaterline = pAvplay->VidLowBufWaterline;
        DitherWaterline = pAvplay->VidDitherWaterline;
    }

    if (UsedBufPercent < DitherWaterline)
    {
        return HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    }
    else if ((UsedBufPercent >= DitherWaterline) && (UsedBufPercent < LowBufWaterline))
    {
        return HI_UNF_AVPLAY_BUF_STATE_LOW;
    }
    else if ((UsedBufPercent >= LowBufWaterline) && (UsedBufPercent < HighBufWaterline))
    {
        return HI_UNF_AVPLAY_BUF_STATE_NORMAL;
    }
    else if ((UsedBufPercent >= HighBufWaterline) && (UsedBufPercent < (100-DitherWaterline)))
    {
        return HI_UNF_AVPLAY_BUF_STATE_HIGH;
    }
    else if (UsedBufPercent >= (100-DitherWaterline))
    {
        return HI_UNF_AVPLAY_BUF_STATE_FULL;
    }

    return HI_UNF_AVPLAY_BUF_STATE_NORMAL;
}

HI_VOID AVPLAY_ProcAdecToAo(AVPLAY_S *pAvplay)
{
    HI_S32                  Ret = HI_SUCCESS;
    ADEC_EXTFRAMEINFO_S     AdecExtInfo = {0};
    HI_U32                  AoBufTime = 0;
    ADEC_STATUSINFO_S       AdecStatusinfo;
    HI_U32                  i;

	HI_UNF_AUDIOTRACK_ATTR_S   stTrackInfo;

    if (!pAvplay->AudEnable)
    {
        return;
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        return;
    }

	memset(&AdecStatusinfo, 0x0, sizeof(ADEC_STATUSINFO_S));
    memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
    {
        pAvplay->AcquireAudFrameNum++;
        
        Ret = HI_MPI_ADEC_ReceiveFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm, &AdecExtInfo);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->AudInfo.SrcPts = AdecExtInfo.u32OrgPtsMs;
            pAvplay->AudInfo.Pts = pAvplay->AvplayAudFrm.u32PtsMs;
            pAvplay->AudInfo.FrameTime = AdecExtInfo.u32FrameDurationMs;
            
            pAvplay->AcquiredAudFrameNum++;
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_TRUE;
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_AUD_FRAME, (HI_U32)(&pAvplay->AvplayAudFrm));
            AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);            
        }
        else
        {
        }
    }

    if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
    {
        if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
        {
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
            pAvplay->AvplayProcContinue = HI_TRUE;
            (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);          
        }
        else
        {
			if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
			{
				(HI_VOID)HI_MPI_AO_Track_GetDelayMs(pAvplay->hSyncTrack, &AoBufTime);
			
                (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_STATUSINFO, &AdecStatusinfo);
                                
                pAvplay->AudInfo.BufTime = AoBufTime;
                pAvplay->AudInfo.FrameNum = AdecStatusinfo.u32UsedBufNum;

                Ret = HI_MPI_SYNC_AudJudge(pAvplay->hSync, &pAvplay->AudInfo, &pAvplay->AudOpt);
                if (HI_SUCCESS == Ret)
                {
                    if (SYNC_PROC_DISCARD == pAvplay->AudOpt.SyncProc)
                    {
                        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                        pAvplay->AvplayProcContinue = HI_TRUE;
                        (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
                        return;
                    }
                    else if (SYNC_PROC_REPEAT == pAvplay->AudOpt.SyncProc)
                    {
                    return;
                    }
					if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)		
                    {
#ifdef AVPLAY_AUD_SPEED_ADJUST_SUPPORT

						Ret = HI_MPI_AO_Track_GetAttr(pAvplay->hSyncTrack, &stTrackInfo);
                        if ((HI_SUCCESS == Ret) && (HI_UNF_SND_TRACK_TYPE_MASTER == stTrackInfo.enTrackType)
                            && (HI_FALSE == pAvplay->AudDDPMode))  /*do not use speed adjust when ddp test*/
                        {
                            if (SYNC_AUD_SPEED_ADJUST_NORMAL == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_MUTE);
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_UP == pAvplay->AudOpt.SpeedAdjust)
                            {
                            	(HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_DOWN == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, -10, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_MUTE_REPEAT == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, -100, HI_MPI_AO_SND_SPEEDADJUST_MUTE);
                            }
                        }
#endif
                    }
                }
            }
            
            pAvplay->SendAudFrameNum++;

            if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
            {
                /*send frame to main track*/
                Ret = HI_MPI_AO_Track_SendData(pAvplay->hSyncTrack, &pAvplay->AvplayAudFrm);
                if (HI_SUCCESS == Ret)
                {
                    /*send frame to other track*/
                    for(i=0; i<pAvplay->TrackNum; i++)
                    {
                        if (pAvplay->hSyncTrack != pAvplay->hTrack[i])
                        {
                            (HI_VOID)HI_MPI_AO_Track_SendData(pAvplay->hTrack[i], &pAvplay->AvplayAudFrm);
                        }
                    } 
                }
            }
            else
            {
                for(i=0; i<pAvplay->TrackNum; i++)
                {
                //    Ret = HI_MPI_HIAO_SendData(&pAvplay->AvplayAudFrm, pAvplay->hTrack[i]);
					Ret = HI_MPI_AO_Track_SendData(pAvplay->hTrack[i],&pAvplay->AvplayAudFrm);
					if (HI_SUCCESS != Ret)
					{
						HI_WARN_AVPLAY("track num %d send data failed\n", i);
					}
                }
            }
			
            if (HI_SUCCESS == Ret)
            {
                pAvplay->SendedAudFrameNum++;
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;
                
                (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
            }
            else
            {
                if (HI_ERR_AO_OUT_BUF_FULL != Ret
                    && HI_ERR_AO_SENDMUTE != Ret
                    && HI_ERR_AO_PAUSE_STATE != Ret) /* Error drop this frame */
                {
                    HI_ERR_AVPLAY("Send AudFrame to AO failed:%#x, drop a frame.\n", Ret);
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                    pAvplay->AvplayProcContinue = HI_TRUE;
                    (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
                }
            }
        }
    }

    return;
}

HI_VOID AVPLAY_ProcDmxToAdec(AVPLAY_S *pAvplay)
{
    HI_UNF_STREAM_BUF_S             AdecEsBuf = {0};
    HI_S32                          Ret;
    HI_U32                          i;
    HI_UNF_ES_BUF_S                 AudDmxEsBuf = {0}; 
    HI_U32                          AdecDelay = 0;

    /* AVPLAY_Start: pAvplay->AudEnable = HI_TRUE */
    if (!pAvplay->AudEnable)
    {
        return;
    }
    
    Ret = HI_MPI_ADEC_GetDelayMs(pAvplay->hAdec, &AdecDelay);
    if (HI_SUCCESS == Ret && AdecDelay > AVPLAY_ADEC_MAX_DELAY)
    {
        return;
    }

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        for(i=0; i<pAvplay->DmxAudChnNum; i++)
        {
            if(i == pAvplay->CurDmxAudChn)
            {
                pAvplay->AcquireAudEsNum++;
                Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxAud[i], &(pAvplay->AvplayDmxEsBuf));
                if (HI_SUCCESS == Ret)
                {
                    pAvplay->AcquiredAudEsNum++;
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_TRUE;
                }
                else
                {
                    /*if is eos and there is no data in demux channel, set eos to adec and ao*/
                    if (HI_ERR_DMX_EMPTY_BUFFER == Ret 
                        && pAvplay->bSetEosFlag && !pAvplay->bSetAudEos)
                    {
                        Ret = HI_MPI_ADEC_SetEosFlag(pAvplay->hAdec);
                        if (HI_SUCCESS != Ret)
                        {
                            HI_ERR_AVPLAY("ERR: HI_MPI_ADEC_SetEosFlag, Ret = %#x! \n", Ret);
                            return;
                        }
                        
						if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
						{
	                        Ret = HI_MPI_AO_Track_SetEosFlag(pAvplay->hSyncTrack, HI_TRUE);
	                        if (HI_SUCCESS != Ret)
	                        {
	                            HI_ERR_AVPLAY("ERR: HI_MPI_AO_Track_SetEosFlag, Ret = %#x! \n", Ret);
	                            return;
	                        }  
						}
						
                        pAvplay->bSetAudEos = HI_TRUE;
                    }
                }
            } 
            else
            {
                Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxAud[i], &AudDmxEsBuf);
                if (HI_SUCCESS == Ret)
                {
                    (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[i], &AudDmxEsBuf);
                }
            }
        } 
    }

    if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        AdecEsBuf.pu8Data = pAvplay->AvplayDmxEsBuf.pu8Buf;
        AdecEsBuf.u32Size = pAvplay->AvplayDmxEsBuf.u32BufLen;

        pAvplay->SendAudEsNum++;
        
        /* for DDP test only, when ts stream revers(this pts < last pts), 
            reset audChn, and buffer 600ms audio stream  */
        if (pAvplay->AudDDPMode)
        { 
            static HI_U32 s_u32LastPtsTime = 0;
                
            HI_U32 thisPts = pAvplay->AvplayDmxEsBuf.u32PtsMs;
            HI_U32 thisPtsTime = AVPLAY_GetSysTime();
            HI_S32 ptsDiff = 0;

            if ((thisPts < pAvplay->LastAudPts) && (pAvplay->LastAudPts != HI_INVALID_PTS)
                && (thisPts != HI_INVALID_PTS)
                )
                {
                    HI_ERR_AVPLAY("PTS:%u -> %u, PtsLess.\n ", pAvplay->LastAudPts, thisPts);
                    (HI_VOID)AVPLAY_ResetAudChn(pAvplay);
                    usleep(1200 * 1000);
                    HI_ERR_AVPLAY("Rest OK.\n");
                }
                else
                {
                    if (thisPtsTime > s_u32LastPtsTime)
                    {
                        ptsDiff = (HI_S32)(thisPtsTime - s_u32LastPtsTime);
                    }
                    else
                    {
                        ptsDiff = 0;
                    }

                    if (ptsDiff > 1000)
                    {
                        HI_ERR_AVPLAY("PtsTime:%u -> %u, Diff:%d.\n ", s_u32LastPtsTime, thisPtsTime, ptsDiff);
                        (HI_VOID)AVPLAY_ResetAudChn(pAvplay);
                        usleep(1200 * 1000);
                        HI_ERR_AVPLAY("Rest OK.\n");
                        s_u32LastPtsTime = HI_INVALID_PTS;
                        pAvplay->LastAudPts = HI_INVALID_PTS;
                    }
                }

            if (thisPts != HI_INVALID_PTS)
            {
                pAvplay->LastAudPts = thisPts;
                s_u32LastPtsTime = thisPtsTime; 
            }
        }
        
        Ret = HI_MPI_ADEC_SendStream(pAvplay->hAdec, &AdecEsBuf, pAvplay->AvplayDmxEsBuf.u32PtsMs);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->SendedAudEsNum++;
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
            pAvplay->AvplayProcContinue = HI_TRUE;
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_GET_AUD_ES, (HI_U32)(&pAvplay->AvplayDmxEsBuf));
            AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
            (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
        }
        else
        {
            if ((Ret != HI_ERR_ADEC_IN_BUF_FULL) && (Ret != HI_ERR_ADEC_IN_PTSBUF_FULL)) /* drop this pkg */
            {
                HI_ERR_AVPLAY("Send AudEs buf to ADEC fail:%#x, drop a pkg.\n", Ret);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;
                (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
            }
        }
    }

    return;
}


HI_VOID AVPLAY_Eos(AVPLAY_S *pAvplay)
{    
    pAvplay->PreAudEsBuf = 0;
    pAvplay->PreVidEsBuf = 0;
    pAvplay->PreSystime = 0;
    pAvplay->PreVidEsBufWPtr= 0;
    pAvplay->PreAudEsBufWPtr= 0;
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_EOS;
    return;
}

HI_VOID AVPLAY_ProcEos(AVPLAY_S *pAvplay)
{
    ADEC_BUFSTATUS_S        AdecBuf;
    VDEC_STATUSINFO_S       VdecStatus = {0};
    HI_U32                  WinDelay = 0;
	HI_BOOL                 bEmpty = HI_TRUE;
	HI_BOOL					bVidEos = HI_TRUE;
	HI_BOOL					bAudEos = HI_TRUE;
	HI_BOOL					bLastFrame = HI_FALSE;

	if (pAvplay->CurStatus == HI_UNF_AVPLAY_STATUS_EOS)
	{
	    return;
	}

	memset(&AdecBuf, 0x0, sizeof(ADEC_BUFSTATUS_S));
	
    if (pAvplay->AudEnable)
    {
        bAudEos = HI_FALSE;
        
        (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf); 
		
    	(HI_VOID)HI_MPI_AO_Track_IsBufEmpty(pAvplay->hSyncTrack, &bEmpty);
        if (AdecBuf.bEndOfFrame && HI_INVALID_HANDLE != pAvplay->hSyncTrack) 
        {
            if (HI_TRUE == bEmpty)
			{
				bAudEos = HI_TRUE;
			}
        }
	}

    if (pAvplay->VidEnable)
    {
        bVidEos = HI_FALSE;

        (HI_VOID)HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec,  &VdecStatus);
		(HI_VOID)HI_MPI_VO_GetWindowLastFrameState(pAvplay->hWindow[0], &bLastFrame);
        if (VdecStatus.bEndOfStream && pAvplay->VidEnable && (bLastFrame == HI_TRUE))
        {
            (HI_VOID)HI_MPI_VO_GetWindowDelay(pAvplay->hWindow[0], &WinDelay);
			if (WinDelay == 0)            ///////////to be analysed
			{
				bVidEos = HI_TRUE;
			}				
        }			
    }

    if (bVidEos && bAudEos && pAvplay->bSetEosFlag)
    {
        AVPLAY_Eos(pAvplay);
        AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_EOS, HI_NULL);
    }

    return;
}

#ifdef HI_AVPLAY_FCC_SUPPORT

static HI_VOID AVPLAY_CalPreBufThreshold(AVPLAY_S *pAvplay)
{
    HI_U32                                          VidBufPercent = 0;
    HI_U32                                          AudBufPercent = 0;
    HI_MPI_DMX_BUF_STATUS_S                         VidChnBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S                         AudChnBuf = {0};
    HI_U32                                          u32SysTime = 0;
    HI_S32                                          Ret;

    if (0 == pAvplay->AudPreBufThreshold)
    {
        HI_SYS_GetTimeStampMs(&u32SysTime);
        if (-1 == pAvplay->AudPreSysTime)
        {
            pAvplay->AudPreSysTime = u32SysTime;
        }
        else
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudChnBuf);
            if ( HI_SUCCESS == Ret )
            {
                if ( AudChnBuf.u32BufSize == 0 )
                {
                    AudBufPercent = 0;
                    HI_ERR_AVPLAY("AudChnBuf.u32BufSize == 0\n");
                }
                else
                {
                    AudBufPercent = AudChnBuf.u32UsedSize * 100 / AudChnBuf.u32BufSize;
                }
            }
            else
            {
                AudBufPercent = 0;
                HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed:%#x\n",Ret);
            }

            if (   ((u32SysTime - pAvplay->AudPreSysTime > 1000) && (AudBufPercent > 0))
                || (AudBufPercent >= pAvplay->PreAudWaterLine) )
            {
                pAvplay->AudPreBufThreshold = AudBufPercent;
                HI_INFO_AVPLAY("Audio Es buffer Threshold is :%d\n", pAvplay->AudPreBufThreshold);
            }
        }
    }

    if ( (0 == pAvplay->VidPreBufThreshold) && (0 != pAvplay->PreVidWaterLine) )
    {
        HI_SYS_GetTimeStampMs(&u32SysTime);
        if (-1 == pAvplay->VidPreSysTime)
        {
            pAvplay->VidPreSysTime = u32SysTime;
        }
        else
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
            if ( HI_SUCCESS == Ret )
            {
                if ( VidChnBuf.u32BufSize == 0 )
                {
                    VidBufPercent = 0;
                    HI_ERR_AVPLAY("VidChnBuf.u32BufSize == 0\n");
                }
                else
                {
                    VidBufPercent = VidChnBuf.u32UsedSize * 100 / VidChnBuf.u32BufSize;
                }
            }
            else
            {
                VidBufPercent = 0;
                HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed:%#x\n",Ret);
            }

            if (   ((u32SysTime - pAvplay->VidPreSysTime > 1000) && (VidBufPercent > 0))
                || ((VidBufPercent >= pAvplay->PreVidWaterLine) && (0 != pAvplay->PreVidWaterLine)) )
            {
                pAvplay->VidPreBufThreshold = VidBufPercent;
                HI_INFO_AVPLAY("Video Es buffer Threshold is :%d\n", pAvplay->VidPreBufThreshold);
            }
        }
    }

    return;
}

HI_S32 AVPLAY_CalcVidPreStartWaterLine(AVPLAY_S *pAvplay)
{
    HI_S32                  Ret = HI_FAILURE;
    HI_MPI_DMX_BUF_STATUS_S VidChnBuf = {0};

    Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
    if ( HI_SUCCESS == Ret )
    {
        if(0 == pAvplay->PreVidFirstWaterLine)
        {
            pAvplay->PreVidFirstWaterLine = pAvplay->PreVidBufLen * 100 / VidChnBuf.u32BufSize;
        }
        else if(0 == pAvplay->PreVidSecondWaterLine)
        {
            pAvplay->PreVidSecondWaterLine = pAvplay->PreVidBufLen * 100 / VidChnBuf.u32BufSize;
            if(pAvplay->PreVidSecondWaterLine < 50)
            {
                pAvplay->PreVidWaterLine = (pAvplay->PreVidSecondWaterLine > pAvplay->PreVidFirstWaterLine)
                    ? pAvplay->PreVidSecondWaterLine : pAvplay->PreVidFirstWaterLine;

                if(pAvplay->PreVidWaterLine <= 5 )
                {
                    pAvplay->PreVidWaterLine= pAvplay->PreVidWaterLine*3 / 2;
                }
                else if(pAvplay->PreVidWaterLine < 10)
                {
                    pAvplay->PreVidWaterLine= 10;
                }
            }
            else
            {
                pAvplay->PreVidWaterLine = 50;
            }
        }
    }
    else
    {
        HI_ERR_AVPLAY("Call HI_MPI_DMX_GetPESBufferStatus failed!Ret = 0x%x\n",Ret);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_FilterIFrame(AVPLAY_S *pAvplay, HI_U8 *Buf, HI_U32 Size)
{
    HI_U8            *Data = Buf;
    HI_S32            Ret;
    struct list_head  KeepFrameList = LIST_HEAD_INIT(KeepFrameList);
    struct list_head *pos, *temp;
    FRAME_ENTRY_S    *pEntry = HI_NULL;
    FRAME_ENTRY_S    *pCurEntry = HI_NULL;
    FRAME_ENTRY_S    *pNextEntry = HI_NULL;
    DF_CTX_S         *pCtx = HI_NULL;
    HI_BOOL           IFrameFound = HI_FALSE;

    if(Size <= sizeof(g_StartCode))
    {
        return HI_FAILURE;
    }

    while(Data < Buf + Size - sizeof(g_StartCode))
    {
        if (!memcmp(Data, g_StartCode, sizeof(g_StartCode)))
        {
            pEntry = (FRAME_ENTRY_S *)HI_MALLOC(HI_ID_AVPLAY, sizeof(FRAME_ENTRY_S));
            if (HI_NULL == pEntry)
            {
                HI_ERR_AVPLAY("FrameEntry malloc failed\n");
                goto EXIT_FILTER_IFRAME;
            }

            pEntry->Pos = Data;

            list_add_tail(&pEntry->List, &KeepFrameList);
        }

        Data ++;
    }

    if ( list_empty(&KeepFrameList) )
    {
        return HI_FAILURE;
    }

    Ret = DetFrm_GetDFCtx(pAvplay->hDFCtx, &pCtx);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("call DetFrm_GetDFCtx failed\n");
        goto EXIT_FILTER_IFRAME;
    }

    list_for_each_safe(pos, temp, &KeepFrameList)
    {
        list_del(pos);

        if (pos->next != &KeepFrameList)
        {
            pCurEntry = list_entry(pos, FRAME_ENTRY_S, List);
            pNextEntry = list_entry(pos->next, FRAME_ENTRY_S, List);

            pCtx->s32NalAddr = (HI_S32)(pCurEntry->Pos + sizeof(g_StartCode));
            pCtx->s32NalLen  = (HI_S32)(pNextEntry->Pos - pCtx->s32NalAddr);

            HI_FREE(HI_ID_AVPLAY, pCurEntry);
        }
        else /* KeepFrameList is empty. */
        {
            pCurEntry = list_entry(pos, FRAME_ENTRY_S, List);

            pCtx->s32NalAddr = (HI_S32)pCurEntry->Pos + sizeof(g_StartCode);
            pCtx->s32NalLen  = (HI_S32)(Buf + Size - pCtx->s32NalAddr);

            HI_FREE(HI_ID_AVPLAY, pCurEntry);
        }

        if ( HI_SUCCESS == DetFrm_Start(pAvplay->hDFCtx) )
        {
            if (FRAME_TYPE_I == pCtx->s32NewFrmType)
            {
                IFrameFound = HI_TRUE;
                HI_INFO_AVPLAY("Avplay find a I frame!!!\n");
                break;
            }
            else
            {
                IFrameFound  = HI_FALSE;
            }
        }
    }

EXIT_FILTER_IFRAME:
    if (!list_empty(&KeepFrameList))
    {
        list_for_each_safe(pos, temp, &KeepFrameList)
        {
            list_del(pos);
            pCurEntry = list_entry(pos, FRAME_ENTRY_S, List);
            HI_FREE(HI_ID_AVPLAY, pCurEntry);
        }
    }

    return HI_TRUE == IFrameFound ? HI_SUCCESS : HI_FAILURE;
}

HI_VOID AVPLAY_FindIFrameFromDmxEsBuf(AVPLAY_S *pAvplay)
{
    HI_S32          Ret = HI_FAILURE;
    HI_UNF_ES_BUF_S VidDmxEsBuf = {0};

    Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxVid, &VidDmxEsBuf);
    if (HI_SUCCESS == Ret)
    {
        Ret = AVPLAY_FilterIFrame(pAvplay, VidDmxEsBuf.pu8Buf, VidDmxEsBuf.u32BufLen);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->PreVidBufLen += VidDmxEsBuf.u32BufLen;

            Ret = AVPLAY_CalcVidPreStartWaterLine(pAvplay);
            if(Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Call AVPLAY_CalcVidPreStartWaterLine failed 0x%x\n",Ret);
            }

            pAvplay->PreVidBufLen = 0;
        }
        else
        {
            pAvplay->PreVidBufLen += VidDmxEsBuf.u32BufLen;
        }

        (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxVid, &VidDmxEsBuf);
    }
    return;
}

HI_VOID AVPLAY_ProcDmxBuf(AVPLAY_S *pAvplay)
{
    HI_S32 Ret;
    HI_MPI_DMX_BUF_STATUS_S            VidChnBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S            AudChnBuf = {0};
    HI_U32                             VidBufPercent = 0;
    HI_U32                             AudBufPercent = 0;
    HI_UNF_ES_BUF_S                    AudDmxEsBuf;
    HI_UNF_ES_BUF_S                    VidDmxEsBuf;

    if (HI_UNF_AVPLAY_STATUS_PREPLAY != pAvplay->CurStatus)
    {
        return;
    }
	pAvplay->AvplayProcContinue = HI_TRUE;
	(HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*500);
    if ( !pAvplay->AudEnable && pAvplay->bAudPreEnable )
    {
   //     AVPLAY_CalPreBufThreshold(pAvplay);
   //     if (pAvplay->AudPreBufThreshold != 0)
		if (pAvplay->PreAudWaterLine != 0)
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudChnBuf);
            if ( HI_SUCCESS != Ret )
            {
                HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed:%#x\n",Ret);
            }

            if ( AudChnBuf.u32BufSize == 0 )
            {
                HI_ERR_AVPLAY("AudChnBuf.u32BufSize == 0\n");
            }
            else
            {
                AudBufPercent = AudChnBuf.u32UsedSize * 100 / AudChnBuf.u32BufSize;

           //     if ( AudBufPercent > pAvplay->AudPreBufThreshold )
           		if ( AudBufPercent > pAvplay->PreAudWaterLine )
                {
                    Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudDmxEsBuf);
                    if ( HI_SUCCESS != Ret  )
                    {
                        HI_ERR_AVPLAY("HI_MPI_DMX_AcquireEs failed:%#x\n",Ret);
                    }
                    else
                    {
                        pAvplay->PreAudPts = AudDmxEsBuf.u32PtsMs;
                        (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudDmxEsBuf);
                    }
                }
            }
        }
    }

    if ( !pAvplay->VidEnable && pAvplay->bVidPreEnable)
    {
        if (0 != pAvplay->PreVidWaterLine)
        {
      //      AVPLAY_CalPreBufThreshold(pAvplay);
      //      if (pAvplay->VidPreBufThreshold != 0)
			if (pAvplay->PreVidWaterLine != 0)
            {
                Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
                if ( HI_SUCCESS != Ret )
                {
                    HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed:%#x\n",Ret);
                }

                if ( VidChnBuf.u32BufSize == 0 )
                {
                    HI_ERR_AVPLAY("VidChnBuf.u32BufSize == 0\n");
                }
                else
                {
                    VidBufPercent = VidChnBuf.u32UsedSize * 100 / VidChnBuf.u32BufSize;

              //      if ( VidBufPercent > pAvplay->VidPreBufThreshold )
              		if ( VidBufPercent > pAvplay->PreVidWaterLine )
                    {
                        Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxVid, &VidDmxEsBuf);
                        if ( HI_SUCCESS != Ret  )
                        {
                            HI_ERR_AVPLAY("HI_MPI_DMX_AcquireEs failed:%#x\n",Ret);
                        }
                        else
                        {
                            pAvplay->PreVidPts = VidDmxEsBuf.u32PtsMs;
                            (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxVid, &VidDmxEsBuf);
                        }
                    }
                }
            }
        }
        else
        {
            AVPLAY_FindIFrameFromDmxEsBuf(pAvplay);
        }
    }

    if ( (-1 != pAvplay->PreAudPts) && (-1 != pAvplay->PreVidPts) )
    {
        if((abs((HI_S32)(pAvplay->PreAudPts - pAvplay->PreVidPts))) > 10000)
        {
            return;
        }

        if(   (pAvplay->PreAudPts > pAvplay->PreVidPts)
           && (pAvplay->PreAudPts - pAvplay->PreVidPts > 200)
           && (pAvplay->PreAudWaterLine < 50) )
        {
            pAvplay->PreAudWaterLine    = pAvplay->PreAudWaterLine + 3;
            pAvplay->AudPreBufThreshold = pAvplay->PreAudWaterLine;
        }

        if(   (pAvplay->PreVidPts > pAvplay->PreAudPts)
           && (pAvplay->PreVidPts - pAvplay->PreAudPts > 200)
           && (pAvplay->PreAudWaterLine > 5) )
        {
            pAvplay->PreAudWaterLine    = pAvplay->PreAudWaterLine - 3;
            pAvplay->AudPreBufThreshold = pAvplay->PreAudWaterLine;
        }
    }
	
    return;	
}

#endif

HI_VOID AVPLAY_ProcCheckBuf(AVPLAY_S *pAvplay)
{
	ADEC_BUFSTATUS_S                   AdecBuf = {0};
    VDEC_STATUSINFO_S                  VdecBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S            VidChnBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S            AudChnBuf = {0};

    HI_UNF_AVPLAY_BUF_STATE_E          CurVidBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    HI_UNF_AVPLAY_BUF_STATE_E          CurAudBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    HI_U32                             VidBufPercent = 0;
    HI_U32                             AudBufPercent = 0;

    HI_UNF_DMX_PORT_MODE_E             PortMode = HI_UNF_DMX_PORT_MODE_BUTT;

    HI_BOOL                            RealModeFlag = HI_FALSE;
    HI_BOOL                            AudBlockFlag = HI_FALSE;
    HI_BOOL                            VidBlockFlag = HI_FALSE;

    HI_BOOL                            ResetProc = HI_FALSE;

    SYNC_BUF_STATUS_S                  SyncBufStatus = {0};
    
    HI_S32                             Ret;

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf);
        if (HI_SUCCESS == Ret)
        {
            if(HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
            {
                Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudChnBuf);
                if (HI_SUCCESS == Ret)
                {
                	if ((AudChnBuf.u32BufSize + AdecBuf.u32BufferSize) > 0)
                    {
                    	AudBufPercent = (AudChnBuf.u32UsedSize + AdecBuf.u32BufferUsed) * 100 / (AudChnBuf.u32BufSize + AdecBuf.u32BufferSize);
					}
					else
					{
						AudBufPercent = 0;
					}
					CurAudBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, AudBufPercent);
                }
            }
            else
            {
				if (AdecBuf.u32BufferSize > 0)
                {
                    AudBufPercent = AdecBuf.u32BufferUsed * 100 / AdecBuf.u32BufferSize;
                }
                else
                {
                    AudBufPercent = 0;
                }
                CurAudBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, AudBufPercent);
            }
        }
    }

    if (pAvplay->VidEnable)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
            if(HI_SUCCESS == Ret)
            {
                SyncBufStatus.VfmwFrmNum = VdecBuf.u32VfmwFrmSize;
                SyncBufStatus.VfmwStrmSize = VdecBuf.u32VfmwStrmSize;
                SyncBufStatus.VidStrmInBps = VdecBuf.u32StrmInBps;
            }

            // TODO:Does VidPesBufPercent calculated accurately?
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
            if (HI_SUCCESS == Ret)
            {
            	if (VidChnBuf.u32BufSize > 0)
                {
                    VidBufPercent = VidChnBuf.u32UsedSize * 100 / VidChnBuf.u32BufSize;
                }
                else
                {
                    VidBufPercent = 0;
                }

                CurVidBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, VidBufPercent);
            }
        }
        else
        {
            Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
            if (HI_SUCCESS == Ret)
            {
            	if (VdecBuf.u32BufferSize > 0)
                {
                    VidBufPercent = VdecBuf.u32BufferUsed * 100 / VdecBuf.u32BufferSize;
                }
                else
                {
                    VidBufPercent = 0;
                }
                CurVidBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, VidBufPercent);

                SyncBufStatus.VfmwFrmNum = VdecBuf.u32VfmwFrmSize;
                SyncBufStatus.VfmwStrmSize = VdecBuf.u32VfmwStrmSize;
                SyncBufStatus.VidStrmInBps = VdecBuf.u32StrmInBps;
            }
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        (HI_VOID)HI_MPI_DMX_GetPortMode(pAvplay->AvplayAttr.u32DemuxId, &PortMode);

        if (HI_UNF_DMX_PORT_MODE_RAM == PortMode)
        {
            RealModeFlag = HI_FALSE;
        }
        else
        {
            RealModeFlag = HI_TRUE;
        }
    }

    /*  real mode */
    if (RealModeFlag)
    {        
        if ((AudBufPercent >= AVPLAY_ES_AUD_HIGH_PERCENT) && (AudBufPercent < AVPLAY_ES_AUD_FULL_PERCENT))
        {
            AudBlockFlag = HI_TRUE;
        }
        else if (AudBufPercent >= AVPLAY_ES_AUD_FULL_PERCENT)
        {
            ResetProc = HI_TRUE;
            pAvplay->AudOverflowNum++;
            HI_ERR_AVPLAY("Aud Dmx Buf overflow, reset.\n");
        }

        if (pAvplay->VidDiscard)
        {
            if (VidBufPercent <= 60)
            {
                pAvplay->VidDiscard = HI_FALSE;
            }
        }
        else
        {
            if ((VidBufPercent >= AVPLAY_ES_VID_HIGH_PERCENT) && (VidBufPercent < AVPLAY_ES_VID_FULL_PERCENT))
            {
                VidBlockFlag = HI_TRUE;
            }
            else if (VidBufPercent >= AVPLAY_ES_VID_FULL_PERCENT)
            {
                if (HI_UNF_AVPLAY_OVERFLOW_RESET == pAvplay->OverflowProc)
                {
                    ResetProc = HI_TRUE;
                    pAvplay->VidOverflowNum++;
                    HI_ERR_AVPLAY("Vid Dmx Buf overflow, reset.\n");
                }
                else
                {
                    pAvplay->VidDiscard = HI_TRUE;
                    pAvplay->VidOverflowNum++;
                    
                    (HI_VOID)AVPLAY_ResetAudChn(pAvplay);

                    HI_ERR_AVPLAY("Vid Dmx Buf overflow, discard.\n");
                }
            }
        }

        if (ResetProc)
        {
            (HI_VOID)AVPLAY_Reset(pAvplay);
            
            AudBlockFlag = HI_FALSE;
            AudBufPercent = 0;

            VidBlockFlag = HI_FALSE;
            VidBufPercent = 0;
            pAvplay->VidDiscard = HI_FALSE;
        }
    }
    else
    {
    }

    SyncBufStatus.AudBlockFlag = AudBlockFlag;
    SyncBufStatus.AudBufPercent = AudBufPercent;
    SyncBufStatus.VidBlockFlag = VidBlockFlag;
    SyncBufStatus.VidBufPercent = VidBufPercent;
    (HI_VOID)HI_MPI_SYNC_SetBufState(pAvplay->hSync, pAvplay->VidDiscard, SyncBufStatus);

    if (pAvplay->VidEnable)
    {
        if (CurVidBufState != pAvplay->PreVidBufState)
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE, CurVidBufState);
            pAvplay->PreVidBufState = CurVidBufState;
            return;
        }
    }

    if (pAvplay->AudEnable)
    {
        if (CurAudBufState != pAvplay->PreAudBufState)
        {
            if (!pAvplay->VidEnable)
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE, CurAudBufState);
            }
            pAvplay->PreAudBufState = CurAudBufState;
            return;
        }
    }

    return;
}

HI_VOID AVPLAY_ProcVidEvent(AVPLAY_S *pAvplay)
{
    VDEC_EVENT_S                        VdecEvent;
    HI_UNF_VO_FRAMEINFO_S           VdecFrame;
    //HI_UNF_VIDEO_SEQUENCE_INFO_S         VdecSeqInfo;
    HI_UNF_VIDEO_USERDATA_S             VdecUsrData;
    HI_S32                              Ret;
    
    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_CheckNewEvent(pAvplay->hVdec, &VdecEvent);
        if (HI_SUCCESS == Ret)
        {
            if (VdecEvent.bNewFrame && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME])
            {
                Ret = HI_MPI_VDEC_ReadNewFrame(pAvplay->hVdec, &VdecFrame);
                if (HI_SUCCESS == Ret)
                {
                    AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME, (HI_U32)(&VdecFrame));
                }
                else
                {
                    HI_ERR_AVPLAY("call HI_MPI_VDEC_ReadNewFrame failed.\n");
                }
            }

            if (VdecEvent.bNewUserData && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NEW_USER_DATA])
            {
                Ret = HI_MPI_VDEC_ChanRecvUsrData(pAvplay->hVdec, &VdecUsrData);
                if (HI_SUCCESS == Ret)
                {
                    AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_USER_DATA, (HI_U32)(&VdecUsrData));
                }
                else
                {
                    HI_ERR_AVPLAY("call HI_MPI_VDEC_ReadNewFrame failed.\n");
                }
            }

            if (VdecEvent.bNormChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NORM_SWITCH])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NORM_SWITCH, (HI_U32)(&(VdecEvent.stNormChangeParam)));
            }

            if (VdecEvent.bFramePackingChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_FRAMEPACKING_CHANGE])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_FRAMEPACKING_CHANGE, (HI_U32)(VdecEvent.enFramePackingType));
            }

            if(VdecEvent.bIFrameErr && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_IFRAME_ERR])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_IFRAME_ERR, HI_NULL);
            }

			if (VdecEvent.stProbeStreamInfo.bProbeCodecTypeChangeFlag)
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_VID_ERR_TYPE, (HI_U32)(VdecEvent.stProbeStreamInfo.enCodecType));
            }
            
            if (VdecEvent.bFirstValidPts)
            {
                HI_MPI_SYNC_SetExtInfo(pAvplay->hSync, SYNC_EXT_INFO_FIRST_PTS, (HI_VOID *)VdecEvent.u32FirstValidPts);
            }

            if (VdecEvent.bSecondValidPts)
            {
                HI_MPI_SYNC_SetExtInfo(pAvplay->hSync, SYNC_EXT_INFO_SECOND_PTS, (HI_VOID *)VdecEvent.u32SecondValidPts);
            }
        }
        else
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_CheckNewEvent failed.\n");
        }
    }

    return;
}

HI_VOID AVPLAY_ProcSyncEvent(AVPLAY_S *pAvplay)
{
    HI_S32              Ret;
    SYNC_EVENT_S        SyncEvent;

    Ret = HI_MPI_SYNC_CheckNewEvent(pAvplay->hSync, &SyncEvent);
    if (HI_SUCCESS == Ret)
    {
        if (SyncEvent.bVidPtsJump &&  pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP, (HI_U32)(&(SyncEvent.VidPtsJumpParam)));
        }

        if (SyncEvent.bAudPtsJump &&  pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP, (HI_U32)(&(SyncEvent.AudPtsJumpParam)));
        }

        if (SyncEvent.bStatChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_STAT_CHANGE])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_STAT_CHANGE, (HI_U32)(&(SyncEvent.StatParam)));
        }
    }
    else
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_CheckNewEvent failed.\n");
    }

    return;
}

HI_VOID AVPLAY_ProcCheckStandBy(AVPLAY_S *pAvplay)
{
    /*ts mode, we need reset avplay when system standby*/
    if (pAvplay->bStandBy && HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        pAvplay->bStandBy = HI_FALSE;
        (HI_VOID)AVPLAY_Reset(pAvplay);
        HI_WARN_AVPLAY("System standby, now reset the AVPLAY!\n");
    }

    return;
}

HI_VOID *AVPLAY_StatThread(HI_VOID *Arg)
{
    AVPLAY_S        *pAvplay;

    pAvplay = (AVPLAY_S *)Arg;

    while (pAvplay->AvplayThreadRun)
    {        
        if (pAvplay->bSetEosFlag)
        {
            AVPLAY_ProcEos(pAvplay);
        }

        AVPLAY_ProcVidEvent(pAvplay);

        AVPLAY_ProcSyncEvent(pAvplay);

        usleep(AVPLAY_SYS_SLEEP_TIME*1000);
    }

    return HI_NULL;
}

HI_VOID *AVPLAY_DataThread(HI_VOID *Arg)
{
    AVPLAY_S        *pAvplay;

    pAvplay = (AVPLAY_S *)Arg;

    while (pAvplay->AvplayThreadRun)
    {
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
 
        pAvplay->AvplayProcContinue = HI_FALSE;
        
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            AVPLAY_ProcDmxToAdec(pAvplay);
        }
        
        AVPLAY_ProcAdecToAo(pAvplay);
#ifdef HI_AVPLAY_FCC_SUPPORT		
		AVPLAY_ProcDmxBuf(pAvplay);
#endif
	
        AVPLAY_ProcCheckBuf(pAvplay);

        AVPLAY_ProcCheckStandBy(pAvplay);

        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);

        if (pAvplay->AvplayProcContinue)
        {
            continue;
        }

        (HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*1000);
    }

    return    HI_NULL ;
}

HI_VOID AVPLAY_ResetProcFlag(AVPLAY_S *pAvplay)
{
    HI_U32 i;

    pAvplay->AvplayProcContinue = HI_FALSE;

    for (i=0; i<AVPLAY_PROC_BUTT; i++)
    {
        pAvplay->AvplayProcDataFlag[i] = HI_FALSE;
    }

    pAvplay->PreVidBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    pAvplay->PreAudBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    pAvplay->VidDiscard = HI_FALSE;

    pAvplay->AcquireAudEsNum = 0;
    pAvplay->AcquiredAudEsNum = 0;
    pAvplay->SendAudEsNum = 0;
    pAvplay->SendedAudEsNum = 0;

    pAvplay->bSetEosFlag = HI_FALSE;
    pAvplay->bSetAudEos = HI_FALSE;
    pAvplay->bStandBy = HI_FALSE;

    pAvplay->u32DispOptimizeFlag = 0;

    if (HI_TRUE == pAvplay->CurBufferEmptyState)
    {
       pAvplay->PreTscnt =0;
       pAvplay->PreAudEsBuf = 0;
       pAvplay->PreAudEsBufWPtr = 0;
       pAvplay->PreVidEsBuf = 0;
       pAvplay->PreVidEsBufWPtr = 0;
       pAvplay->CurBufferEmptyState = HI_FALSE;
    }   
    else
    {
       pAvplay->PreTscnt = 0xFFFFFFFF;
       pAvplay->PreAudEsBuf = 0xFFFFFFFF;
       pAvplay->PreAudEsBufWPtr = 0xFFFFFFFF;
       pAvplay->PreVidEsBuf = 0xFFFFFFFF;
       pAvplay->PreVidEsBufWPtr = 0xFFFFFFFF;       
    }
   

    pAvplay->AcquireAudFrameNum = 0;
    pAvplay->AcquiredAudFrameNum = 0;
    pAvplay->SendAudFrameNum = 0;
    pAvplay->SendedAudFrameNum = 0;

    return;
}
HI_S32 AVPLAY_CreateThread(AVPLAY_S *pAvplay)
{
    struct sched_param   SchedParam;
    HI_S32                 Ret = 0;

    (HI_VOID)pthread_attr_init(&pAvplay->AvplayThreadAttr);

    if (THREAD_PRIO_REALTIME == pAvplay->AvplayThreadPrio)
    {
        (HI_VOID)pthread_attr_setschedpolicy(&pAvplay->AvplayThreadAttr, SCHED_FIFO);
        (HI_VOID)pthread_attr_getschedparam(&pAvplay->AvplayThreadAttr, &SchedParam);
        SchedParam.sched_priority = 4;
        (HI_VOID)pthread_attr_setschedparam(&pAvplay->AvplayThreadAttr, &SchedParam);
    }
    else
    {
        (HI_VOID)pthread_attr_setschedpolicy(&pAvplay->AvplayThreadAttr, SCHED_OTHER);
    }

    /* create avplay data process thread */
    Ret = pthread_create(&pAvplay->AvplayDataThdInst, &pAvplay->AvplayThreadAttr, AVPLAY_DataThread, pAvplay);
    if (HI_SUCCESS != Ret)
    {
        pthread_attr_destroy(&pAvplay->AvplayThreadAttr);
        return HI_FAILURE;
    }

    /* create avplay status check thread */
    Ret = pthread_create(&pAvplay->AvplayStatThdInst, &pAvplay->AvplayThreadAttr, AVPLAY_StatThread, pAvplay);
    if (HI_SUCCESS != Ret)
    {
        pAvplay->AvplayThreadRun = HI_FALSE;
        (HI_VOID)pthread_join(pAvplay->AvplayDataThdInst, HI_NULL);
        pthread_attr_destroy(&pAvplay->AvplayThreadAttr);
        return HI_FAILURE;
    }

    return    HI_SUCCESS ;
}

HI_S32 AVPLAY_MallocVdec(AVPLAY_S *pAvplay, const HI_VOID *pPara)
{
    HI_S32           Ret;
    HI_UNF_AVPLAY_OPEN_OPT_S *pOpenPara = (HI_UNF_AVPLAY_OPEN_OPT_S*)pPara;
    
    Ret = HI_MPI_VDEC_Init();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_Init failed.\n");
        return Ret;
    }

    Ret = HI_MPI_VDEC_AllocChan(&pAvplay->hVdec, pOpenPara);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_AllocChan failed.\n");
        (HI_VOID)HI_MPI_VDEC_DeInit();
    }

    return Ret;
}

HI_S32 AVPLAY_FreeVdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_VDEC_FreeChan(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_freeChan failed.\n");
        return Ret;
    }

    pAvplay->hVdec = HI_INVALID_HANDLE;

    Ret = HI_MPI_VDEC_DeInit();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_deInit failed.\n");
        return Ret;
    }

    return Ret;
}

HI_S32 AVPLAY_MallocAdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_ADEC_Init(HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Init failed.\n");
        return Ret;
    }

    Ret = HI_MPI_ADEC_Open(&pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        pAvplay->hAdec = HI_INVALID_HANDLE;
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Open failed.\n");
        (HI_VOID)HI_MPI_ADEC_deInit();
    }

    return Ret;
}

HI_S32 AVPLAY_FreeAdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_ADEC_Close(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Close failed.\n");
        return Ret;
    }

    pAvplay->hAdec = HI_INVALID_HANDLE;

    Ret = HI_MPI_ADEC_deInit();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_deInit failed.\n");
    }

    return Ret;
}


HI_S32 AVPLAY_MallocDmxChn(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_BUFID_E BufId)
{
    HI_S32                      Ret = 0;
    HI_UNF_DMX_CHAN_ATTR_S      DmxChnAttr;

    memset((void *)&DmxChnAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
    DmxChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == BufId)
    {
        DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_VID;
        DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize;
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_CreateChannel failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == BufId)
    {
        DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_AUD;
        DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize / 3;
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &pAvplay->hDmxAud[0]);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_CreateChannel failed.\n");
            return HI_FAILURE;
        }
        
        pAvplay->DmxAudChnNum = 1;
    }

    return Ret;
}

HI_S32 AVPLAY_FreeDmxChn(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_BUFID_E BufId)
{
    HI_S32              Ret = 0;
    HI_U32              i;

    if ((HI_UNF_AVPLAY_BUF_ID_ES_VID == BufId) && (pAvplay->hDmxVid != HI_INVALID_HANDLE))
    {
        Ret = HI_MPI_DMX_DestroyChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_DestroyChannel failed.\n");
            return Ret;
        }

        pAvplay->hDmxVid = HI_INVALID_HANDLE;
    }
    else if ((HI_UNF_AVPLAY_BUF_ID_ES_AUD == BufId))
    {

        for(i = 0; i < pAvplay->DmxAudChnNum; i++)
        {
            if(pAvplay->hDmxAud[i] != HI_INVALID_HANDLE)
            {
                Ret = HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[i]);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("call HI_MPI_DMX_DestroyChannel failed.\n");
                    return Ret;
                }

                pAvplay->hDmxAud[i] = HI_INVALID_HANDLE;
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_MallocVidChn(AVPLAY_S *pAvplay, const HI_VOID *pPara)
{
    HI_S32             Ret = 0;
    
    Ret = AVPLAY_MallocVdec(pAvplay, pPara);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay malloc vdec failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc vid dmx chn failed.\n");
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
        
        Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, 0, pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
            (HI_VOID)AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
    }
    else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize, HI_INVALID_HANDLE);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_FreeVidChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    Ret = HI_MPI_VDEC_ChanBufferDeInit(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_VDEC_ChanBufferDeInit failed.\n");
     //   return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free dmx vid chn failed.\n");
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
    }

    Ret = AVPLAY_FreeVdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay free vdec failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_MallocAudChn(AVPLAY_S *pAvplay)
{
    HI_S32             Ret = 0;

    Ret = AVPLAY_MallocAdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay malloc adec failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc aud dmx chn failed.\n");
            (HI_VOID)AVPLAY_FreeAdec(pAvplay);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_FreeAudChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free dmx aud chn failed.\n");
            return Ret;
        }
    }

    Ret = AVPLAY_FreeAdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay free vdec failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetStreamMode(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_S *pAvplayAttr)
{
    HI_S32    Ret;

#if 0    
    if ((pAvplayAttr->u32DemuxId != 0)
      &&(pAvplayAttr->u32DemuxId != 4)
       )
    {
        HI_ERR_AVPLAY("para pAvplayAttr->u32DemuxId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
#endif

    if (pAvplayAttr->stStreamAttr.enStreamType >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.enStreamType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pAvplayAttr->stStreamAttr.u32VidBufSize > AVPLAY_MAX_VID_SIZE)
      ||(pAvplayAttr->stStreamAttr.u32VidBufSize < AVPLAY_MIN_VID_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.u32VidBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pAvplayAttr->stStreamAttr.u32AudBufSize > AVPLAY_MAX_AUD_SIZE)
      ||(pAvplayAttr->stStreamAttr.u32AudBufSize < AVPLAY_MIN_AUD_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.u32AudBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    
    if (pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chn is enable, can not set stream mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is enable, can not set stream mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_ChanBufferDeInit(pAvplay->hVdec);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferDeInit failed.\n");
            return Ret;
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free dmx vid chn failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free dmx aud chn failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hDmxPcr != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_DMX_DestroyPcrChannel(pAvplay->hDmxPcr);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free pcr chn failed.\n");
            return Ret;
        }

        pAvplay->hDmxPcr = HI_INVALID_HANDLE;
    }

    /* record stream attributes */
    memcpy((void *)&pAvplay->AvplayAttr, pAvplayAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc vid dmx chn failed.\n");
                return Ret;
            }
            
            Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, 0, pAvplay->hDmxVid);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
                (HI_VOID)AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
                return Ret;
            }
        }
    else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize, HI_INVALID_HANDLE);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc aud dmx chn failed.\n");
                return Ret;
            }
        }
    }
    
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_CreatePcrChannel(pAvplay->AvplayAttr.u32DemuxId, &pAvplay->hDmxPcr);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc pcr chn failed.\n");
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetStreamMode(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_S *pAvplayAttr)
{
    memcpy((void *)pAvplayAttr, (const void *)&pAvplay->AvplayAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetAdecAttr(AVPLAY_S *pAvplay, const HI_UNF_ACODEC_ATTR_S *pAdecAttr)
{
    ADEC_ATTR_S  AdecAttr;
    HI_S32       Ret;

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
#if 0
    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is running, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
#endif
    AdecAttr.bEnable = HI_FALSE;
    AdecAttr.bEosState = HI_FALSE;
    AdecAttr.u32CodecID = pAdecAttr->enType;
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize * 2 / 3;
    }
    else
    {
        AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize;
    }
    AdecAttr.u32OutBufNum = AVPLAY_ADEC_FRAME_NUM;
    AdecAttr.sOpenPram = pAdecAttr->stDecodeParam;

    Ret = HI_MPI_ADEC_SetAllAttr(pAvplay->hAdec, &AdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_SetAllAttr failed.\n");
        return Ret;
    }

    pAvplay->AdecType = pAdecAttr->enType;

    return Ret;
}

HI_S32 AVPLAY_GetAdecAttr(const AVPLAY_S *pAvplay, HI_UNF_ACODEC_ATTR_S *pAdecAttr)
{
    ADEC_ATTR_S  AdecAttr;
    HI_S32       Ret;

	memset(&AdecAttr, 0x0, sizeof(ADEC_ATTR_S));
	
    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_ADEC_GetAllAttr(pAvplay->hAdec, &AdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_GetAllAttr failed.\n");
    }

    pAdecAttr->enType = (HA_CODEC_ID_E)AdecAttr.u32CodecID;
    pAdecAttr->stDecodeParam = AdecAttr.sOpenPram;

    return Ret;
}

HI_S32 AVPLAY_CheckHandle(HI_HANDLE hAvplay, AVPLAY_USR_ADDR_S  *pAvplayUsrAddr)
{
    if ((hAvplay & 0xffff0000) != (HI_ID_AVPLAY << 16))
    {
        HI_WARN_AVPLAY("this is invalid handle.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    
    pAvplayUsrAddr->AvplayId = hAvplay & 0xff;

    /* check if the handle is valid */
    return ioctl(g_AvplayDevFd, CMD_AVPLAY_CHECK_ID, pAvplayUsrAddr);
}


HI_S32 AVPLAY_SetVdecAttr(AVPLAY_S *pAvplay, HI_UNF_VCODEC_ATTR_S *pVdecAttr)
{
    HI_UNF_VCODEC_ATTR_S  VdecAttr;
    HI_S32                Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanAttr failed.\n");
        return Ret;
    }

    if (pAvplay->VidEnable)
    {
        if (VdecAttr.enType != pVdecAttr->enType)
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vdec type.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if ((HI_UNF_VCODEC_TYPE_VC1 == VdecAttr.enType)
            && ((VdecAttr.unExtAttr.stVC1Attr.bAdvancedProfile != pVdecAttr->unExtAttr.stVC1Attr.bAdvancedProfile)
                || (VdecAttr.unExtAttr.stVC1Attr.u32CodecVersion != pVdecAttr->unExtAttr.stVC1Attr.u32CodecVersion)))
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vdec type.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
    }

    Ret = HI_MPI_VDEC_SetChanAttr(pAvplay->hVdec,pVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanAttr failed.\n");
    }

    memcpy((void *)&pAvplay->VdecAttr, pVdecAttr, sizeof(HI_UNF_VCODEC_ATTR_S));

    return Ret;
}


HI_S32 AVPLAY_GetVdecAttr(const AVPLAY_S *pAvplay, HI_UNF_VCODEC_ATTR_S *pVdecAttr)
{
    HI_S32                Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, pVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanAttr failed.\n");
    }

    return Ret;
}

HI_S32 AVPLAY_SetPid(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, const HI_U32 *pPid)
{
    HI_S32       Ret;
    HI_U32       i;

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_ATTR_ID_AUD_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_AVPLAY("aud chn is close, can not set aud pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }    
    
        if(pAvplay->DmxAudChnNum == 1)
        {
            if (pAvplay->AudEnable)
            {
                HI_ERR_AVPLAY("aud chn is running, can not set aud pid.\n");
                return HI_ERR_AVPLAY_INVALID_OPT;
            }    
            
            Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxAud[0], *pPid);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_SetChannelPID failed.\n");
            }

            pAvplay->DmxAudPid[0] = *pPid;
			pAvplay->CurDmxAudChn = 0;         
        }
        /*multi audio*/
        else
        {
            AVPLAY_Mutex_Lock(pAvplay->pAvplayThreadMutex);

            for(i=0; i<pAvplay->DmxAudChnNum; i++)
            {
                if(pAvplay->DmxAudPid[i] == *pPid)
                {
                    break;
                }
            }

            if(i < pAvplay->DmxAudChnNum)
            {
                /* if the es buf has not been released */
                if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
                {
                    (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
                }
                                                
                pAvplay->CurDmxAudChn = i; 
            }

			pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;  

            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);

			(HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);   

            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    (HI_VOID)HI_MPI_AO_Track_Flush(pAvplay->hTrack[i]); 
                }
            }

           // (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);
            
            if (HI_NULL != pAvplay->pstAcodecAttr)
            {
                AVPLAY_SetAdecAttr(pAvplay, (HI_UNF_ACODEC_ATTR_S *)(pAvplay->pstAcodecAttr + pAvplay->CurDmxAudChn));  
            }
            
            (HI_VOID)HI_MPI_ADEC_Start(pAvplay->hAdec);
            
            HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);

            AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);  

            Ret = HI_SUCCESS;
        }
    }
    else if (HI_UNF_AVPLAY_ATTR_ID_VID_PID == enAttrID)
    {
        if (pAvplay->VidEnable)
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_AVPLAY("vid chn is close, can not set vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxVid, *pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_SetChannelPID failed.\n");
        }

        pAvplay->DmxVidPid = *pPid;
    }
    else
    {
        if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_STOP)
        {
            HI_ERR_AVPLAY("AVPLAY is not stopped, can not set pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            HI_ERR_AVPLAY("pcr chn is close, can not set pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, *pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
        }

        pAvplay->DmxPcrPid = *pPid;
    }

    return Ret;
}

HI_S32 AVPLAY_GetPid(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_U32 *pPid)
{
    HI_S32       Ret;

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_ATTR_ID_AUD_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_AVPLAY("aud chn is close, can not get aud pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_GetChannelPID(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_GetChannelPID failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_ATTR_ID_VID_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_AVPLAY("vid chn is close, can not get vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_GetChannelPID(pAvplay->hDmxVid, pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_GetChannelPID failed.\n");
        }
    }
    else
    {
        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            HI_ERR_AVPLAY("pcr chn is close, can not get pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_PcrPidGet(pAvplay->hDmxPcr, pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidGet failed.\n");
        }
    }

    return Ret;
}

HI_S32 AVPLAY_SetSyncAttr(AVPLAY_S *pAvplay, HI_UNF_SYNC_ATTR_S *pSyncAttr)
{
    HI_S32                Ret;

    Ret = HI_MPI_SYNC_SetAttr(pAvplay->hSync, pSyncAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_SetAttr failed.\n");
    }

    return Ret;
}

HI_S32 AVPLAY_GetSyncAttr(AVPLAY_S *pAvplay, HI_UNF_SYNC_ATTR_S *pSyncAttr)
{
    HI_S32 Ret;
    
    Ret = HI_MPI_SYNC_GetAttr(pAvplay->hSync, pSyncAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_GetAttr failed.\n");
    }

    return Ret;
}

HI_S32 AVPLAY_SetOverflowProc(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_OVERFLOW_E *pOverflowProc)
{
    if (*pOverflowProc >= HI_UNF_AVPLAY_OVERFLOW_BUTT)
    {
        HI_ERR_AVPLAY("para OverflowProc is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pAvplay->OverflowProc = *pOverflowProc;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetOverflowProc(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_OVERFLOW_E *pOverflowProc)
{
    *pOverflowProc = pAvplay->OverflowProc;

    return HI_SUCCESS;
}


HI_S32 AVPLAY_RelAudStream(AVPLAY_S *pAvplay)
{
    HI_U32 i = 0;

    for(i=0; i<pAvplay->DmxAudChnNum; i++)
    {
        if(i == pAvplay->CurDmxAudChn)
        {
            (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[i], &(pAvplay->AvplayDmxEsBuf));            
        } 
    }
    
    return HI_SUCCESS;
}

HI_S32 AVPLAY_RelAudFrame(AVPLAY_S *pAvplay)
{
    (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
    
    return HI_SUCCESS;
}

HI_S32 AVPLAY_StartVidChn(const AVPLAY_S *pAvplay)
{
    HI_S32         Ret;

    Ret = HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Start Vid failed.\n");
        return Ret;
    }

    Ret = HI_MPI_VDEC_ChanStart(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanStart failed.\n");
        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_OpenChannel failed.\n");
            (HI_VOID)HI_MPI_VDEC_ChanStop(pAvplay->hDmxVid);
            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StopVidChn(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_STOP_MODE_E enMode)
{
    HI_S32         Ret;

    Ret = HI_MPI_VDEC_ChanStop(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanStop failed.\n");
        return Ret;
    }

    Ret = HI_MPI_VDEC_ResetChan(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ResetChan failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_CloseChannel failed.\n");
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_STOP_MODE_STILL == enMode)
    {
        (HI_VOID)HI_MPI_VO_ResetWindow(pAvplay->hWindow[0], HI_UNF_WINDOW_FREEZE_MODE_LAST);
    }
    else
    {
        (HI_VOID)HI_MPI_VO_ResetWindow(pAvplay->hWindow[0], HI_UNF_WINDOW_FREEZE_MODE_BLACK);
    }

    Ret = HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Stop Vid failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StartAudChn(const AVPLAY_S *pAvplay)
{
    HI_S32         Ret;
    HI_U32         i, j;

    Ret = HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Start Aud failed.\n");
        return Ret;
    }

    Ret = HI_MPI_ADEC_Start(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Start failed.\n");
        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
        return Ret;
    }

	/* get the string of adec type */
    (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_HaSzNameInfo, (void*)&(pAvplay->AdecNameInfo));

	for (i=0; i<pAvplay->TrackNum; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
        {
            Ret |= HI_MPI_AO_Track_Start(pAvplay->hTrack[i]);
            if(HI_SUCCESS != Ret)
            {
                break;
            }
        }
    }

    if(i < pAvplay->TrackNum)
    {
        for(j = 0; j < i; j++)
        {
            (HI_VOID)HI_MPI_AO_Track_Stop(pAvplay->hTrack[j]);
        }
        
        HI_ERR_AVPLAY("call HI_MPI_AO_Track_Start failed.\n");
    
        (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);
        
        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
        return Ret;        
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        for(i= 0; i < pAvplay->DmxAudChnNum; i++)
        {
            Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxAud[i]);
            if(HI_SUCCESS != Ret)
            {
                break;
            }
        }

        if(i < pAvplay->DmxAudChnNum)
        {
            for(j = 0; j < i; j++)
            {
                (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[j]);
            }
            
            HI_ERR_AVPLAY("call HI_MPI_DMX_DestroyChannel failed.\n");

			for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    (HI_VOID)HI_MPI_AO_Track_Stop(pAvplay->hTrack[i]);
                }
            }

            (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);
            
            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
            return Ret;        
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StopAudChn(const AVPLAY_S *pAvplay)
{
    HI_S32         Ret;
    HI_U32         i;

    Ret = HI_MPI_ADEC_Stop(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_Stop failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        for(i = 0; i < pAvplay->DmxAudChnNum; i++)
        {
            Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxAud[i]);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_CloseChannel failed.\n");
                return Ret;
            }
        }
    }

    for (i=0; i<pAvplay->TrackNum; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
        {
          Ret |= HI_MPI_AO_Track_Stop(pAvplay->hTrack[i]);
          if (Ret != HI_SUCCESS)
          {
              HI_ERR_AVPLAY("call HI_MPI_AO_Track_Stop failed.\n");
              return Ret;
          }
        }
    }

    Ret = HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Stop Aud failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_VOID AVPLAY_Play(AVPLAY_S *pAvplay)
{
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_PLAY)
    {
        pAvplay->LstStatus = pAvplay->CurStatus;
        pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_PLAY;
    }
    
    return;
}

HI_VOID AVPLAY_Stop(AVPLAY_S *pAvplay)
{
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_STOP)
    {
        pAvplay->LstStatus = pAvplay->CurStatus;
        pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_STOP;
    }

    AVPLAY_ResetProcFlag(pAvplay);
    return;
}

HI_VOID AVPLAY_Pause(AVPLAY_S *pAvplay)
{    
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_PAUSE;

    return;
}

HI_VOID AVPLAY_Tplay(AVPLAY_S *pAvplay)
{
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_TPLAY;

    return;
}

#ifdef HI_AVPLAY_FCC_SUPPORT
HI_VOID AVPLAY_PrePlay(AVPLAY_S *pAvplay)
{
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_PREPLAY)
    {
        pAvplay->LstStatus = pAvplay->CurStatus;
        pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_PREPLAY;
    }

    return;
}
#endif

HI_S32 AVPLAY_ResetAudChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;
    
    if (pAvplay->AudEnable)
    {
        /* avoid there is aud frame at avplay, when stop aud chanel, we drop this aud frame*/
        if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
        {
            (HI_VOID)AVPLAY_RelAudFrame(pAvplay);
            memset(&pAvplay->AvplayAudFrm, 0, sizeof(HI_UNF_AO_FRAMEINFO_S));
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;      
        } 

        if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
        {
            (HI_VOID)AVPLAY_RelAudStream(pAvplay);
            memset(&pAvplay->AvplayDmxEsBuf, 0, sizeof(HI_UNF_ES_BUF_S));
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
        } 
		
		Ret = AVPLAY_StopAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop aud chn failed.\n");
            return Ret;
        }
    }

    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StartAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start aud chn failed.\n");
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_Seek(AVPLAY_S *pAvplay, HI_U32 u32SeekPts)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 i = 0;
    HI_UNF_SYNC_STATUS_S SyncStatus;
    HI_U32 u32FindObjectPts = u32SeekPts;  //u32FindObjectPts  as  input param and output param

    HI_INFO_AVPLAY("seekpts is %d\n", u32SeekPts);

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_SYNC_GetStatus(pAvplay->hSync, &SyncStatus);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_GetStatus failed.\n");
            return HI_FAILURE;
        }
        else
        {
            if (u32SeekPts < SyncStatus.u32LastAudPts)
            {
                HI_INFO_AVPLAY("find pts in ao buf ok quit\n");
                return HI_SUCCESS;
            }
        }
    }

    //1. pause vid, aud only 800ms, don't need pause
    Ret = HI_MPI_SYNC_Pause(pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Pause failed, Ret=0x%x.\n", Ret);
        return HI_FAILURE;
    }

    //2. discard stream
    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_ChanDropStream(pAvplay->hVdec, &u32FindObjectPts, AVPLAY_VDEC_SEEKPTS_THRESHOLD);
        if (Ret != HI_SUCCESS)
        {
            HI_INFO_AVPLAY("call HI_MPI_VDEC_ChanDropStream NO FIND SEEKPTS. \n");
            HI_INFO_AVPLAY("return vid pts is %d\n", u32FindObjectPts);
            return HI_FAILURE;
        }
        else
        {
            HI_INFO_AVPLAY("call HI_MPI_VDEC_ChanDropStream FIND SEEKPTS OK.\n");
            HI_INFO_AVPLAY("return vid pts is %d\n", u32FindObjectPts);

			(HI_VOID)HI_MPI_VO_ResetWindow(pAvplay->hWindow[0], HI_UNF_WINDOW_FREEZE_MODE_LAST);

            HI_INFO_AVPLAY("reset window\n");
        }
    }

    if (pAvplay->AudEnable)
    {
        u32SeekPts = (u32FindObjectPts > u32SeekPts) ? u32FindObjectPts : u32SeekPts;
        Ret = HI_MPI_ADEC_DropStream(pAvplay->hAdec, u32SeekPts);
        if (Ret != HI_SUCCESS)
        {
            HI_INFO_AVPLAY("no find aud pts quit\n");
            return HI_FAILURE;
        }
        else
        {
            HI_INFO_AVPLAY("find aud pts ok\n");
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    (HI_VOID)HI_MPI_AO_Track_Flush(pAvplay->hTrack[i]);
                }
            }
            HI_INFO_AVPLAY("reset ao\n");

            HI_INFO_AVPLAY("set AVPLAY_PROC_ADEC_AO false\n");

            if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
            {
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
            }
        }
    }

    if ((pAvplay->AudEnable) && (pAvplay->VidEnable))
    {
        Ret  = HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
        Ret |= HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
        Ret |= HI_MPI_SYNC_Seek(pAvplay->hSync, u32SeekPts);
        Ret |= HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);
        Ret |= HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_VID);
    }

    Ret |= HI_MPI_SYNC_Play(pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed, Ret=0x%x.\n", Ret);
    }

    return Ret;
}


HI_S32 AVPLAY_Reset(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;
    
    if (pAvplay->VidEnable)
    {
        Ret = AVPLAY_StopVidChn(pAvplay, HI_UNF_AVPLAY_STOP_MODE_STILL);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop vid chn failed.\n");
            return Ret;
        }
    }
    
    if (pAvplay->AudEnable)
    {
        /* avoid there is aud frame at avplay, when stop aud chanel, we drop this aud frame*/
        if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
        {
            (HI_VOID)AVPLAY_RelAudFrame(pAvplay);
            memset(&pAvplay->AvplayAudFrm, 0, sizeof(HI_UNF_AO_FRAMEINFO_S));
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;      
        } 

        if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
        {
            (HI_VOID)AVPLAY_RelAudStream(pAvplay);
            memset(&pAvplay->AvplayDmxEsBuf, 0, sizeof(HI_UNF_ES_BUF_S));
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
        } 
		
		Ret = AVPLAY_StopAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop aud chn failed.\n");
            return Ret;
        }
    }
    
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, 0x1fff);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
            return Ret;
        }
    }
    
    if (pAvplay->VidEnable)
    {
        Ret = AVPLAY_StartVidChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start vid chn failed.\n");
            return Ret;
        }
    }
    
    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StartAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start aud chn failed.\n");
            return Ret;
        }
    }
    
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
            return Ret;
        }
    }
    
    if (HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
    {
        Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
    {
        Ret = HI_MPI_SYNC_Tplay(pAvplay->hSync, pAvplay->TplaySpeed);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Tplay failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
    	pAvplay->CurStatus = pAvplay->LstStatus;
		
        Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed.\n");
        }
    }
    else
    {
        Ret = HI_MPI_SYNC_Pause(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Pause failed.\n");
        }
    }
    
    AVPLAY_ResetProcFlag(pAvplay);

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetNum(HI_U32 *pAvplayNum)
{
    /* get the number of avplay created by this process */
    return ioctl(g_AvplayDevFd, CMD_AVPLAY_CHECK_NUM, pAvplayNum);
}


HI_S32 AVPLAY_SetMultiAud(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MULTIAUD_ATTR_S *pAttr)
{
    HI_S32                      Ret;
    HI_UNF_DMX_CHAN_ATTR_S      DmxChnAttr;
    HI_U32                      i, j;

    if(HI_NULL == pAttr || HI_NULL == pAttr->pu32AudPid || HI_NULL == pAttr->pstAcodecAttr)
    {
        HI_ERR_AVPLAY("multi aud attr is null!\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if(pAttr->u32PidNum > AVPLAY_MAX_DMX_AUD_CHAN_NUM)
    {
        HI_ERR_AVPLAY("pidnum is too large\n");
        return HI_ERR_AVPLAY_INVALID_PARA;    
    }    

    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is running, can not set aud pid.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set aud pid.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    memset(&DmxChnAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
    DmxChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;
    DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_AUD;
    DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize / 3;

    /* destroy the old resource */
    for (i = 1; i < pAvplay->DmxAudChnNum; i++)
    {
        (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[i]);
    }

    if (HI_NULL != pAvplay->pstAcodecAttr)
    {
        HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pstAcodecAttr));
        pAvplay->pstAcodecAttr = HI_NULL;
    }    

    /* create new resource */
    for (i = 1; i < pAttr->u32PidNum; i++)
    {
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &(pAvplay->hDmxAud[i]));
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_CreateChannel failed.\n");
            break;
        }        
    }

    if(i != pAttr->u32PidNum)
    {
        for(j = 1; j < i; j++)
        {
            (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[j]);
        }

        return HI_FAILURE;
    }

    for(i = 0; i < pAttr->u32PidNum; i++)
    {
        Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxAud[i], *(pAttr->pu32AudPid + i));
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_SetChannelPID failed.\n");
            return Ret;
        }
        else
        {
            pAvplay->DmxAudPid[i] = *(pAttr->pu32AudPid + i);
        }
    }

    pAvplay->DmxAudChnNum = pAttr->u32PidNum;

    pAvplay->pstAcodecAttr = (HI_UNF_ACODEC_ATTR_S *)HI_MALLOC(HI_ID_AVPLAY, sizeof(HI_UNF_ACODEC_ATTR_S) * pAttr->u32PidNum);
    if (HI_NULL == pAvplay->pstAcodecAttr)
    {
        HI_ERR_AVPLAY("malloc pstAcodecAttr error.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    memcpy(pAvplay->pstAcodecAttr, pAttr->pstAcodecAttr, sizeof(HI_UNF_ACODEC_ATTR_S)*pAttr->u32PidNum);
    
    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetMultiAud(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MULTIAUD_ATTR_S *pAttr)
{
    if (HI_NULL == pAttr || HI_NULL == pAttr->pu32AudPid || HI_NULL == pAttr->pstAcodecAttr)
    {
        HI_ERR_AVPLAY("ERR: invalid para\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    /* only get the real pid num */
    if (pAttr->u32PidNum > pAvplay->DmxAudChnNum)
    {
        pAttr->u32PidNum = pAvplay->DmxAudChnNum;
    }

	if (pAttr->u32PidNum > AVPLAY_MAX_DMX_AUD_CHAN_NUM)
    {
        HI_ERR_AVPLAY("u32PidNum is larger than %d\n", AVPLAY_MAX_DMX_AUD_CHAN_NUM);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    
    memcpy(pAttr->pu32AudPid, pAvplay->DmxAudPid, sizeof(HI_U32) * pAttr->u32PidNum);

    memcpy(pAttr->pstAcodecAttr, pAvplay->pstAcodecAttr, sizeof(HI_UNF_ACODEC_ATTR_S) * pAttr->u32PidNum);

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetEosFlag(AVPLAY_S *pAvplay)
{
    HI_S32          Ret;

    if (!pAvplay->AudEnable && !pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("ERR: vid and aud both disable, can not set eos!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    
    if (pAvplay->AudEnable)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_SetChannelEosFlag(pAvplay->hDmxAud[pAvplay->CurDmxAudChn]);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_DMX_SetChannelEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_ADEC_SetEosFlag(pAvplay->hAdec);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_ADEC_SetEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
            
			if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
			{
            Ret = HI_MPI_AO_Track_SetEosFlag(pAvplay->hSyncTrack, HI_TRUE);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_AO_Track_SetEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
	            }
			}
        }
    }
    
    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_SetEosFlag(pAvplay->hVdec);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_SetEosFlag, Ret = %#x! \n", Ret);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_SetChannelEosFlag(pAvplay->hDmxVid);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_DMX_SetChannelEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
        }
    

    }

    pAvplay->bSetEosFlag = HI_TRUE;

    return HI_SUCCESS;
}


HI_S32 HI_MPI_AVPLAY_Init(HI_VOID)
{
//    struct stat st;
    HI_S32 Ret;

    HI_AVPLAY_LOCK();

    /* already opened in this process */
    if (g_AvplayDevFd > 0)
    {
        HI_AVPLAY_UNLOCK();
        return HI_SUCCESS;
    }
/*
    if (HI_FAILURE == stat(g_AvplayDevName, &st))
    {
        HI_FATAL_AVPLAY("AVPLAY is not exist.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_NOT_EXIST;
    }

    if (!S_ISCHR (st.st_mode))
    {
        HI_FATAL_AVPLAY("AVPLAY is not device.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_NOT_DEV_FILE;
    }
*/
    g_AvplayDevFd = open(g_AvplayDevName, O_RDWR|O_NONBLOCK, 0);

    if (g_AvplayDevFd < 0)
    {
        HI_FATAL_AVPLAY("open AVPLAY err.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_OPEN_ERR;
    }

    Ret = HI_MPI_SYNC_Init();
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_AVPLAY("call HI_MPI_SYNC_Init failed.\n");
        close(g_AvplayDevFd);
        g_AvplayDevFd = -1;
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_OPEN_ERR;
    }

    HI_AVPLAY_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_DeInit(HI_VOID)
{
    HI_S32  Ret;
    HI_U32  AvplayNum = 0;

    HI_AVPLAY_LOCK();

    if (g_AvplayDevFd < 0)
    {
        HI_AVPLAY_UNLOCK();
        return HI_SUCCESS;
    }

    Ret = AVPLAY_GetNum(&AvplayNum);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("call AVPLAY_GetNum failed.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (AvplayNum)
    {
        HI_ERR_AVPLAY("there are %d AVPLAY not been destroied.\n", AvplayNum);
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_SYNC_DeInit();
    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_AVPLAY("call HI_MPI_SYNC_DeInit failed.\n");
    }

    Ret = close(g_AvplayDevFd);
    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_AVPLAY("DeInit AVPLAY err.\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_CLOSE_ERR;
    }

    g_AvplayDevFd = -1;

    HI_AVPLAY_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDefaultConfig(HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_UNF_AVPLAY_STREAM_TYPE_E enCfg)
{
    if (!pstAvAttr)
    {
        HI_ERR_AVPLAY("para pstAvAttr is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enCfg >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para enCfg is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == enCfg)
    {
        pstAvAttr->stStreamAttr.enStreamType = HI_UNF_AVPLAY_STREAM_TYPE_TS;
        pstAvAttr->stStreamAttr.u32VidBufSize = AVPLAY_DFT_VID_SIZE;
        pstAvAttr->stStreamAttr.u32AudBufSize = AVPLAY_TS_DFT_AUD_SIZE;
    }
    else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == enCfg)
    {
        pstAvAttr->stStreamAttr.enStreamType = HI_UNF_AVPLAY_STREAM_TYPE_ES;
        pstAvAttr->stStreamAttr.u32VidBufSize = AVPLAY_DFT_VID_SIZE;
        pstAvAttr->stStreamAttr.u32AudBufSize = AVPLAY_ES_DFT_AUD_SIZE;
    }

    pstAvAttr->u32DemuxId = 0;

    return HI_SUCCESS ;
}

HI_S32 HI_MPI_AVPLAY_Create(const HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_HANDLE *phAvplay)
{
    AVPLAY_S               *pAvplay = HI_NULL;
    AVPLAY_CREATE_S        AvplayCreate;
    AVPLAY_USR_ADDR_S      AvplayUsrAddr;
    HI_UNF_SYNC_ATTR_S     SyncAttr;
    HI_U32                 i;
    HI_S32                   Ret = 0;

    if (!pstAvAttr)
    {
        HI_ERR_AVPLAY("para pstAvAttr is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phAvplay)
    {
        HI_ERR_AVPLAY("para phAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (pstAvAttr->stStreamAttr.enStreamType >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.enStreamType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pstAvAttr->stStreamAttr.u32VidBufSize > AVPLAY_MAX_VID_SIZE)
      ||(pstAvAttr->stStreamAttr.u32VidBufSize < AVPLAY_MIN_VID_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.u32VidBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pstAvAttr->stStreamAttr.u32AudBufSize > AVPLAY_MAX_AUD_SIZE)
      ||(pstAvAttr->stStreamAttr.u32AudBufSize < AVPLAY_MIN_AUD_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.u32AudBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    CHECK_AVPLAY_INIT();

    /* create avplay */
    AvplayCreate.AvplayStreamtype = pstAvAttr->stStreamAttr.enStreamType;
    Ret = ioctl(g_AvplayDevFd, CMD_AVPLAY_CREATE, &AvplayCreate);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY CMD_AVPLAY_CREATE failed.\n");
        goto ERR0;
    }

    /* remap the memories allocated in kernel space to user space */
    pAvplay = (AVPLAY_S *)(HI_MMAP(AvplayCreate.AvplayPhyAddr, 0x2000));
    HI_INFO_AVPLAY("AvplayCreate.AvplayPhyAddr:0x%x, sizeof(AVPLAY_S):0x%x, sizeof(pthread_mutex_t):0x%x\n", AvplayCreate.AvplayPhyAddr, sizeof(AVPLAY_S), sizeof(pthread_mutex_t)); 
    if (!pAvplay)
    {
        HI_ERR_AVPLAY("AVPLAY memmap failed.\n");       
        Ret = HI_ERR_AVPLAY_CREATE_ERR;
        goto ERR1;
    }

    AvplayUsrAddr.AvplayId = AvplayCreate.AvplayId;
    AvplayUsrAddr.AvplayUsrAddr = (HI_U32)pAvplay;

    Ret = ioctl(g_AvplayDevFd, CMD_AVPLAY_SET_USRADDR, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY set user addr failed.\n");
        goto ERR2;
    }

    HI_MPI_SYNC_GetDefaultAttr(&SyncAttr);

    Ret = HI_MPI_SYNC_Create(&SyncAttr, &pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY create sync failed.\n");
        goto ERR2;
    }

    pAvplay->pAvplayThreadMutex = (pthread_mutex_t *)HI_MALLOC(HI_ID_AVPLAY, sizeof(pthread_mutex_t));
    if (pAvplay->pAvplayThreadMutex == HI_NULL)
    {
        Ret = HI_ERR_AVPLAY_CREATE_ERR;
        goto ERR3;
    }
    (HI_VOID)pthread_mutex_init(pAvplay->pAvplayThreadMutex, NULL);


	AVPLAY_Mutex_Lock(&g_AvplayResMutex[AvplayCreate.AvplayId]);
	AVPLAY_Mutex_Lock(pAvplay->pAvplayThreadMutex);
    /* record stream attributes */
    memcpy(&pAvplay->AvplayAttr, pstAvAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    /* initialize resource handle */
    pAvplay->hVdec = HI_INVALID_HANDLE;
    pAvplay->VdecAttr.enType = HI_UNF_VCODEC_TYPE_BUTT;
    pAvplay->VdecAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
    pAvplay->VdecAttr.u32ErrCover = 0;
    pAvplay->VdecAttr.u32Priority = 0;
    pAvplay->hDmxVid = HI_INVALID_HANDLE;
    pAvplay->DmxVidPid = 0x1fff;

    pAvplay->hAdec = HI_INVALID_HANDLE;
    pAvplay->AdecType = 0xffffffff;
	memset(&(pAvplay->AdecNameInfo), 0x0, sizeof(ADEC_SzNameINFO_S));
	
    for(i=0; i<AVPLAY_MAX_DMX_AUD_CHAN_NUM; i++)
    {
        pAvplay->hDmxAud[i] = HI_INVALID_HANDLE;
        pAvplay->DmxAudPid[i] = 0x1fff;
    }
    
    pAvplay->DmxAudChnNum = 0;
    pAvplay->CurDmxAudChn = 0;

    pAvplay->pstAcodecAttr = HI_NULL;
    
    pAvplay->hDmxPcr = HI_INVALID_HANDLE;
    pAvplay->DmxPcrPid = 0x1fff;

    for (i=0; i<AVPLAY_MAX_WIN; i++)
    {
        pAvplay->hWindow[i] = HI_INVALID_HANDLE;
    }
    pAvplay->WindowNum = 0;

    for (i=0; i<AVPLAY_MAX_TRACK; i++)
    {
        pAvplay->hTrack[i] = HI_INVALID_HANDLE;
    }
    pAvplay->TrackNum = 0;
    pAvplay->hSyncTrack = HI_INVALID_HANDLE;
        
    pAvplay->AudDDPMode = HI_FALSE; /* for DDP test only */
    pAvplay->LastAudPts = 0;        /* for DDP test only */

    pAvplay->VidEnable = HI_FALSE;
    pAvplay->AudEnable = HI_FALSE;

#ifdef HI_AVPLAY_FCC_SUPPORT
	pAvplay->bVidPreEnable = HI_FALSE;
    pAvplay->bAudPreEnable = HI_FALSE;
	pAvplay->PreVidWaterLine = 0;
	pAvplay->PreAudWaterLine = 40;
	pAvplay->PreVidFirstWaterLine = 0;
	pAvplay->PreVidSecondWaterLine = 0;
	pAvplay->PreAudPts = -1;
	pAvplay->PreVidPts = -1;
#endif

    pAvplay->LstStatus = HI_UNF_AVPLAY_STATUS_STOP;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_STOP;
	pAvplay->TplaySpeed   = 0;
    pAvplay->OverflowProc = HI_UNF_AVPLAY_OVERFLOW_RESET;

    /* initialize related parameters of the avplay thread */
    pAvplay->AvplayThreadRun = HI_TRUE;
    pAvplay->AvplayThreadPrio = THREAD_PRIO_MID;

    pAvplay->CurBufferEmptyState = HI_FALSE;
    AVPLAY_ResetProcFlag(pAvplay);

	pAvplay->PreTscnt =0;
    pAvplay->PreAudEsBuf = 0;
    pAvplay->PreAudEsBufWPtr = 0;
    pAvplay->PreVidEsBuf = 0;
    pAvplay->PreVidEsBufWPtr = 0;

    /* initialize waterline */
    pAvplay->VidHighBufWaterline = 70;
    pAvplay->VidLowBufWaterline = 30;
    pAvplay->VidDitherWaterline = 15;

    pAvplay->AudHighBufWaterline = 85;
    pAvplay->AudLowBufWaterline = 5;
    pAvplay->AudDitherWaterline = 2;

    /* initialize events callback function*/
    for (i=0; i<HI_UNF_AVPLAY_EVENT_BUTT; i++)
    {
        pAvplay->EvtCbFunc[i] = HI_NULL;
    }

    /* create thread */
    Ret = AVPLAY_CreateThread(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY create thread failed:%x\n",Ret);
        goto ERR4;
    }

	

    pAvplay->hAvplay = (HI_ID_AVPLAY << 16) | AvplayCreate.AvplayId;

    *phAvplay = (HI_ID_AVPLAY << 16) | AvplayCreate.AvplayId;

	AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);

	AVPLAY_Mutex_UnLock(&g_AvplayResMutex[AvplayCreate.AvplayId]);

    return     HI_SUCCESS;

ERR4:
	AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
	(HI_VOID)pthread_mutex_destroy(pAvplay->pAvplayThreadMutex);
    HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pAvplayThreadMutex));
    AVPLAY_Mutex_UnLock(&g_AvplayResMutex[AvplayCreate.AvplayId]);
ERR3:
    (HI_VOID)HI_MPI_SYNC_Destroy(pAvplay->hSync);
ERR2:
    (HI_VOID)HI_MUNMAP(pAvplay);
ERR1:
    (HI_VOID)ioctl(g_AvplayDevFd, CMD_AVPLAY_DESTROY, &(AvplayCreate.AvplayId));
ERR0:    
    return Ret;    
}

HI_S32 HI_MPI_AVPLAY_Destroy(HI_HANDLE hAvplay)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr = {0};
    HI_S32             Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if ((pAvplay->hVdec != HI_INVALID_HANDLE)
      ||(pAvplay->hAdec != HI_INVALID_HANDLE)
       )
    {
        HI_ERR_AVPLAY("vid or aud chn is not closed.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if ((pAvplay->WindowNum) || (pAvplay->TrackNum))
    {
        HI_ERR_AVPLAY("win or snd is not detach.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* stop thread */
    pAvplay->AvplayThreadRun = HI_FALSE;
    (HI_VOID)pthread_join(pAvplay->AvplayDataThdInst, HI_NULL);
    (HI_VOID)pthread_join(pAvplay->AvplayStatThdInst, HI_NULL);
    pthread_attr_destroy(&pAvplay->AvplayThreadAttr);

    (HI_VOID)HI_MPI_SYNC_Destroy(pAvplay->hSync);

    Ret = ioctl(g_AvplayDevFd, CMD_AVPLAY_DESTROY, &AvplayUsrAddr.AvplayId);
    if (Ret != HI_SUCCESS)
    {
        HI_AVPLAY_INST_UNLOCK();
        return Ret;
    }
	HI_AVPLAY_INST_UNLOCK();

    (HI_VOID)pthread_mutex_destroy(pAvplay->pAvplayThreadMutex);
    HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pAvplayThreadMutex));

    if (HI_NULL != pAvplay->pstAcodecAttr)
    {
        HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pstAcodecAttr));
        pAvplay->pstAcodecAttr = HI_NULL;
    }
    
    (HI_VOID)HI_MUNMAP((HI_VOID *)AvplayUsrAddr.AvplayUsrAddr);

    return HI_SUCCESS ;
}

HI_S32 HI_MPI_AVPLAY_ChnOpen(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_VOID *pPara)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32             Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enChn < HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (enChn >= HI_UNF_AVPLAY_MEDIA_CHAN_BUTT)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();
    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            Ret = AVPLAY_MallocVidChn(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc vid chn failed.\n");
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            Ret = AVPLAY_MallocAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc aud chn failed.\n");
                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
                {
                    (HI_VOID)AVPLAY_FreeVidChn(pAvplay);
                }
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            Ret = HI_MPI_DMX_CreatePcrChannel(pAvplay->AvplayAttr.u32DemuxId, &pAvplay->hDmxPcr);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc pcr chn failed.\n");
                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
                {
                    (HI_VOID)AVPLAY_FreeVidChn(pAvplay);
                }

                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
                {
                    (HI_VOID)AVPLAY_FreeAudChn(pAvplay);
                }
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
            (HI_VOID)HI_MPI_DMX_PcrSyncAttach(pAvplay->hDmxPcr,pAvplay->hSync);
        }
    }
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_ChnClose(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enChn < HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (enChn >= HI_UNF_AVPLAY_MEDIA_CHAN_BUTT)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (pAvplay->VidEnable)
        {
            HI_ERR_AVPLAY("vid chn is enable, can not colsed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (pAvplay->WindowNum)
        {
            HI_ERR_AVPLAY("window is attach to vdec, can not colsed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (pAvplay->hVdec != HI_INVALID_HANDLE)
        {
            Ret = AVPLAY_FreeVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free vid chn failed.\n");
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (pAvplay->AudEnable)
        {
            HI_ERR_AVPLAY("aud chn is enable, can not colsed.\n");
			HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

		if (pAvplay->TrackNum)
		{
            HI_ERR_AVPLAY("track is attach to adec, can not colsed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;

        }

        if (pAvplay->hAdec != HI_INVALID_HANDLE)
        {
            Ret = AVPLAY_FreeAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free aud chn failed.\n");
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }
    }

    if ((HI_INVALID_HANDLE == pAvplay->hVdec)
      &&(HI_INVALID_HANDLE == pAvplay->hAdec)
       )
    {
        if (pAvplay->hDmxPcr != HI_INVALID_HANDLE)
        {
            (HI_VOID)HI_MPI_DMX_PcrSyncDetach(pAvplay->hDmxPcr);
            Ret = HI_MPI_DMX_DestroyPcrChannel(pAvplay->hDmxPcr);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free pcr chn failed.\n");
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }

            pAvplay->hDmxPcr = HI_INVALID_HANDLE;
        }
    }
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetVdecFrmRateParam(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pFrmRateParam)
{
    HI_S32 Ret;
    HI_U32 u32divnum = 0;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec frm rate.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pFrmRateParam->enFrmRateType >= HI_UNF_AVPLAY_FRMRATE_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para pFrmRateParam->enFrmRateType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((HI_UNF_AVPLAY_FRMRATE_TYPE_USER == pFrmRateParam->enFrmRateType)
        || (HI_UNF_AVPLAY_FRMRATE_TYPE_USER_PTS == pFrmRateParam->enFrmRateType)
    )
    {
        u32divnum = pFrmRateParam->stSetFrameRate.u32fpsInteger * 1000 + pFrmRateParam->stSetFrameRate.u32fpsDecimal;
        if (0 == u32divnum)
        {
            HI_INFO_AVPLAY("para pFrmRateParam is invalid. the value is zero\n");
            pFrmRateParam->enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS;
            pFrmRateParam->stSetFrameRate.u32fpsInteger = 25;
            pFrmRateParam->stSetFrameRate.u32fpsDecimal = 0;
        }
    }

    if ((HI_UNF_AVPLAY_FRMRATE_TYPE_STREAM == pFrmRateParam->enFrmRateType)
        || (HI_UNF_AVPLAY_FRMRATE_TYPE_USER == pFrmRateParam->enFrmRateType)
    )
    {
        //disable vo frame rate detect
        Ret = HI_MPI_VO_SetWindowDetect(pAvplay->hWindow[0], FPSDet, HI_FALSE);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VO_SetWindowDetect failed.\n");
            return Ret;
        }
    }

    if ((HI_UNF_AVPLAY_FRMRATE_TYPE_PTS == pFrmRateParam->enFrmRateType)
        || (HI_UNF_AVPLAY_FRMRATE_TYPE_USER_PTS == pFrmRateParam->enFrmRateType)
    )
    {
        //able vo frame rate detect
        Ret = HI_MPI_VO_SetWindowDetect(pAvplay->hWindow[0], FPSDet, HI_TRUE);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VO_SetWindowDetect failed.\n");
            return Ret;
        }
    }

    Ret = HI_MPI_VDEC_SetChanFrmRate(pAvplay->hVdec, pFrmRateParam);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanFrmRateParam failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetVdecFrmRateParam(AVPLAY_S *pAvplay,  HI_UNF_AVPLAY_FRAMERATE_PARAM_S *pFrmRate)
{
    HI_S32  Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec frm rate.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    Ret = HI_MPI_VDEC_GetChanFrmRate(pAvplay->hVdec, pFrmRate);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanFrmRate failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    AVPLAY_S                        *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S               AvplayUsrAddr;
	HI_UNF_VCODEC_FRMRATE_S *pFrmRate = HI_NULL;
	HI_UNF_AVPLAY_FRAMERATE_PARAM_S stFrmRateParam;	
    HI_S32                          Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enAttrID >= HI_UNF_AVPLAY_ATTR_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enAttrID is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pPara)
    {
        HI_ERR_AVPLAY("para pPara is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    AVPLAY_GET_INST_AND_LOCK();

    switch (enAttrID)
    {
        case HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE:
            Ret = AVPLAY_SetStreamMode(pAvplay, (HI_UNF_AVPLAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set stream mode failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_ADEC:
            if (pAvplay->AudEnable)
            {
                HI_ERR_AVPLAY("aud chn is running, can not set adec attr.\n");
                Ret = HI_ERR_AVPLAY_INVALID_OPT;
                break;
            } 
            
            Ret = AVPLAY_SetAdecAttr(pAvplay, (HI_UNF_ACODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set adec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VDEC:
            Ret = AVPLAY_SetVdecAttr(pAvplay, (HI_UNF_VCODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set vdec attr failed.\n");
            }
            break;
                
        case HI_UNF_AVPLAY_ATTR_ID_AUD_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set aud pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VID_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set vid pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_PCR_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set pcr pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_SYNC:
            Ret = AVPLAY_SetSyncAttr(pAvplay, (HI_UNF_SYNC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set sync attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_OVERFLOW:
            Ret = AVPLAY_SetOverflowProc(pAvplay, (HI_UNF_AVPLAY_OVERFLOW_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set overflow proc failed.\n");
            }
            break;

		case HI_UNF_AVPLAY_ATTR_ID_FRMRATE:

	        pFrmRate = (HI_UNF_VCODEC_FRMRATE_S *)pPara;
	        memset((HI_UNF_AVPLAY_FRAMERATE_PARAM_S *)&stFrmRateParam, 0, sizeof(HI_UNF_AVPLAY_FRAMERATE_PARAM_S));
	        stFrmRateParam.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_USER_PTS;
	        stFrmRateParam.stSetFrameRate.u32fpsInteger = pFrmRate->u32fpsInteger;
	        stFrmRateParam.stSetFrameRate.u32fpsDecimal = pFrmRate->u32fpsDecimal;

	        Ret = AVPLAY_SetVdecFrmRateParam(pAvplay, &stFrmRateParam);
	        if (Ret != HI_SUCCESS)
	        {
	            HI_ERR_AVPLAY("set frm rate param failed.\n");
	        }

	        break;

       case HI_UNF_AVPLAY_ATTR_ID_MULTIAUD:
            Ret = AVPLAY_SetMultiAud(pAvplay, (HI_UNF_AVPLAY_MULTIAUD_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set multi aud failed.\n");
            }
            break;
        case HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM:
	        Ret = AVPLAY_SetVdecFrmRateParam(pAvplay, (HI_UNF_AVPLAY_FRAMERATE_PARAM_S *)pPara);
	        if (Ret != HI_SUCCESS)
	        {
            	HI_ERR_AVPLAY("set frm rate param failed.\n");
            }
            break;                         
        default:
            HI_AVPLAY_INST_UNLOCK();
            return HI_SUCCESS;

    }
    HI_AVPLAY_INST_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_GetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    AVPLAY_S                        *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S               AvplayUsrAddr;
	HI_UNF_VCODEC_FRMRATE_S stFrmRate;
    HI_UNF_AVPLAY_FRAMERATE_PARAM_S stFrmRateParam;
    HI_S32                          Ret;
    
    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enAttrID >= HI_UNF_AVPLAY_ATTR_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enAttrID is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pPara)
    {
        HI_ERR_AVPLAY("para pPara is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    switch (enAttrID)
    {
        case HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE:
            Ret = AVPLAY_GetStreamMode(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get stream mode failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_ADEC:
            Ret = AVPLAY_GetAdecAttr(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get adec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VDEC:
            Ret = AVPLAY_GetVdecAttr(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get vdec attr failed.\n");
            }
            break;
            
        case HI_UNF_AVPLAY_ATTR_ID_AUD_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get aud pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VID_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get vid pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_PCR_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get pcr pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_SYNC:
            Ret = AVPLAY_GetSyncAttr(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get sync attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_OVERFLOW:
            Ret = AVPLAY_GetOverflowProc(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get overflow proc failed.\n");
            }
            break;

		case HI_UNF_AVPLAY_ATTR_ID_FRMRATE:

	        memset((HI_UNF_AVPLAY_FRAMERATE_PARAM_S *)&stFrmRateParam, 0, sizeof(HI_UNF_AVPLAY_FRAMERATE_PARAM_S));

	        Ret = AVPLAY_GetVdecFrmRateParam(pAvplay, &stFrmRateParam);
	        if (Ret != HI_SUCCESS)
	        {
	            HI_ERR_AVPLAY("call AVPLAY_GetVdecFrmRateParam failed.\n");
	            break;
	        }

	        if (HI_UNF_AVPLAY_FRMRATE_TYPE_USER_PTS == stFrmRateParam.enFrmRateType)
	        {
	            stFrmRate.u32fpsInteger = stFrmRateParam.stSetFrameRate.u32fpsInteger;
	            stFrmRate.u32fpsDecimal = stFrmRateParam.stSetFrameRate.u32fpsDecimal;
	        }
	        else
	        {
	            stFrmRate.u32fpsInteger = 0;
	            stFrmRate.u32fpsDecimal = 0;
	        }

	        memcpy((HI_UNF_VCODEC_FRMRATE_S *)pPara, (HI_UNF_VCODEC_FRMRATE_S *)&stFrmRate, sizeof(HI_UNF_VCODEC_FRMRATE_S));

	        break;	

        case HI_UNF_AVPLAY_ATTR_ID_MULTIAUD:
            Ret = AVPLAY_GetMultiAud(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get multi audio failed.\n");
            }
            break;
        case HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM:
            Ret = AVPLAY_GetVdecFrmRateParam(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get frm rate failed.\n");
            }
            break;        
        default:
            HI_AVPLAY_INST_UNLOCK();
            return HI_SUCCESS;
    }
    HI_AVPLAY_INST_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_DecodeFrame(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_I_FRAME_S *pstIframe,
                                 HI_UNF_CAPTURE_PICTURE_S *pstCapPicture, HI_UNF_VIDEO_FRAME_TYPE_E enFrameType)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S AvplayUsrAddr;
    HI_S32 Ret;
    HI_BOOL bWinEnable = HI_FALSE; 
    HI_BOOL bCapture = HI_FALSE;
    HI_UNF_VO_FRAMEINFO_S stVoFrameInfo;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if ((enFrameType >= HI_UNF_FRAME_TYPE_BUTT) || (HI_UNF_FRAME_TYPE_UNKNOWN == enFrameType))
    {
        HI_ERR_AVPLAY("para enFrameType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pstIframe)
    {
        HI_ERR_AVPLAY("para pstIframe is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    AVPLAY_GET_INST_AND_LOCK();

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("hVdec is invalid.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_TRUE == pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chn is opened.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->WindowNum)
    {
        (HI_VOID)HI_MPI_VO_GetMainWindowEnable(pAvplay->hWindow[0], &bWinEnable);
    }

    if ((HI_NULL == pstCapPicture) && ((!pAvplay->WindowNum) || (HI_FALSE == bWinEnable)))
    {
        HI_ERR_AVPLAY("window is not attatched or not enabled\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->WindowNum)
    {
        (HI_VOID)HI_MPI_VO_PauseWindow(pAvplay->hWindow[0], HI_TRUE);
    }

	memset(&stVoFrameInfo, 0x0, sizeof(HI_UNF_VO_FRAMEINFO_S));
    if(HI_NULL != pstCapPicture)
    {
    	bCapture = HI_TRUE;	
    }
    Ret = HI_MPI_VDEC_ChanFrameDecode(pAvplay->hVdec, pstIframe, &stVoFrameInfo,bCapture, enFrameType);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanIFrameDecode failed.\n");
        if (pAvplay->WindowNum)
        {
            (HI_VOID)HI_MPI_VO_PauseWindow(pAvplay->hWindow[0], HI_FALSE);
        }
        HI_AVPLAY_INST_UNLOCK();
        return Ret;
    }

    if (pAvplay->WindowNum)
    {
        (HI_VOID)HI_MPI_VO_PauseWindow(pAvplay->hWindow[0], HI_FALSE);
    }

    if (NULL == pstCapPicture)
    {
        Ret = HI_MPI_VO_SendFrame(pAvplay->hWindow[0], &stVoFrameInfo);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("call HI_MPI_VO_SendFrame failed:%#x.\n", Ret);
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
    }
    else
    {
        pstCapPicture->u32TopYStartAddr = stVoFrameInfo.u32YAddr;
        pstCapPicture->u32TopCStartAddr = stVoFrameInfo.u32CAddr;
        pstCapPicture->u32BottomYStartAddr = stVoFrameInfo.u32LstYAddr + stVoFrameInfo.u32YStride;
        pstCapPicture->u32BottomCStartAddr = stVoFrameInfo.u32LstYCddr + stVoFrameInfo.u32CStride;
        pstCapPicture->u32Width  = stVoFrameInfo.u32Width;
        pstCapPicture->u32Height = stVoFrameInfo.u32Height;
        pstCapPicture->u32Stride = stVoFrameInfo.u32YStride;
        pstCapPicture->enVideoFormat = stVoFrameInfo.enVideoFormat;
        pstCapPicture->enFieldMode  = stVoFrameInfo.enFieldMode;
        pstCapPicture->enSampleType = stVoFrameInfo.enSampleType;
    }
    HI_AVPLAY_INST_UNLOCK();
    return Ret;
}


HI_S32 HI_MPI_AVPLAY_SetDecodeMode(HI_HANDLE hAvplay, HI_UNF_VCODEC_MODE_E enDecodeMode)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S      AvplayUsrAddr;
    HI_UNF_VCODEC_ATTR_S   VdecAttr;
    HI_S32                   Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enDecodeMode >= HI_UNF_VCODEC_MODE_BUTT)
    {
        HI_ERR_AVPLAY("para enDecodeMode is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    AVPLAY_GET_INST_AND_LOCK();

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanAttr failed.\n");
        HI_AVPLAY_INST_UNLOCK();
        return Ret;
    }

    VdecAttr.enMode = enDecodeMode;

    Ret = HI_MPI_VDEC_SetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanAttr failed.\n");
    }
    HI_AVPLAY_INST_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_RegisterEvent(HI_HANDLE      hAvplay,
                                   HI_UNF_AVPLAY_EVENT_E     enEvent,
                                   HI_UNF_AVPLAY_EVENT_CB_FN pfnEventCB)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;
    
    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enEvent >= HI_UNF_AVPLAY_EVENT_BUTT)
    {
        HI_ERR_AVPLAY("para enEvent is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pfnEventCB)
    {
        HI_ERR_AVPLAY("para pfnEventCB is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    AVPLAY_GET_INST_AND_LOCK();
    if (pAvplay->EvtCbFunc[enEvent])
    {
        HI_ERR_AVPLAY("this event has been registered.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->EvtCbFunc[enEvent] = pfnEventCB;
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_UnRegisterEvent(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E enEvent)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;
    
    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enEvent >= HI_UNF_AVPLAY_EVENT_BUTT)
    {
        HI_ERR_AVPLAY("para enEvent is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();

    pAvplay->EvtCbFunc[enEvent] = HI_NULL;
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_RegisterAcodecLib(const HI_CHAR *pFileName)
{
    HI_S32    Ret;

    if (!pFileName)
    {
        HI_ERR_AVPLAY("para pFileName is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    Ret = HI_MPI_ADEC_RegisterDeoder(pFileName);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_ADEC_RegisterDeoder failed.\n");
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_RegisterVcodecLib(const HI_CHAR *pFileName)
{
    HI_S32    Ret;

    if (!pFileName)
    {
        HI_ERR_AVPLAY("para pFileName is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    Ret = HI_MPI_VDEC_RegisterVcodecLib(pFileName);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_ADEC_RegisterDeoder failed.\n");
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_FoundRegisterDeoder(const HI_U32 enDstCodecID)
{
    HI_S32 Ret;

    Ret = HI_MPI_ADEC_FoundRegisterDeoder(enDstCodecID);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_ADEC_FoundRegisterDeoder failed.\n");
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_FoundSupportDeoder(const HA_FORMAT_E enFormat,HI_U32 * penDstCodecID)
{
    HI_S32    Ret;

    Ret = HI_MPI_ADEC_FoundSupportDeoder(enFormat,penDstCodecID);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_ADEC_FoundSupportDeoder failed.\n");
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_ConfigAcodec( const HI_U32 enDstCodecID, HI_VOID *pstConfigStructure)
{
    HI_S32 Ret;

    Ret = HI_MPI_ADEC_SetConfigDeoder(enDstCodecID, pstConfigStructure);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("call HI_MPI_ADEC_SetConfigDeoder failed.\n");
    }

    return Ret;
}

#ifdef HI_AVPLAY_FCC_SUPPORT
HI_S32 HI_MPI_AVPLAY_PreStart(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    HI_S32      Ret;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32      VidStd = -1;
    AVPLAY_S   *pAvplay;

    switch ((HI_U32)enChn)
    {
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD :
        case HI_UNF_AVPLAY_MEDIA_CHAN_VID :
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID :
            break;

        default :
            HI_ERR_AVPLAY("para enChn 0x%x is invalid\n", enChn);
            return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();
	
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS != pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
       	HI_ERR_AVPLAY("HI_MPI_AVPLAY_PreStart is Not supported in es mode\n");
		AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
     	return HI_ERR_AVPLAY_NOT_SUPPORT;
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (!pAvplay->VidEnable && !pAvplay->bVidPreEnable)
        {
            if (HI_UNF_VCODEC_TYPE_H264 == pAvplay->VdecAttr.enType)
            {
                VidStd = STD_H264;
                pAvplay->PreVidWaterLine = 0;
            }
            else if(HI_UNF_VCODEC_TYPE_MPEG2 == pAvplay->VdecAttr.enType)
            {
                VidStd = STD_MPEG2;
                pAvplay->PreVidWaterLine = 0;
            }
            else if(HI_UNF_VCODEC_TYPE_MPEG4 == pAvplay->VdecAttr.enType)
            {
                VidStd = STD_MPEG4;
                pAvplay->PreVidWaterLine = 0;
            }
            else
            {
                pAvplay->PreVidWaterLine = AVPLAY_VID_PREBUF_THRESHOLD;
            }

            if (-1 != VidStd)
            {
                Ret = DetFrm_Create(&pAvplay->hDFCtx, VidStd);
                if (HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("call DetFrm_Create failed 0x%x\n", Ret);
					AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        			HI_AVPLAY_INST_UNLOCK();
                }
            }

            Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxVid);
            if (Ret != HI_SUCCESS)
            {
                (HI_VOID)HI_MPI_VDEC_ChanBufferDeInit(pAvplay->hVdec);
				AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        		HI_AVPLAY_INST_UNLOCK();
                HI_ERR_AVPLAY("HI_MPI_DMX_OpenChannel 0x%x failed 0x%x\n", pAvplay->hDmxVid, Ret);
                return Ret;
            }

            pAvplay->VidPreBufThreshold = 0;
            pAvplay->VidPreSysTime = -1;
            pAvplay->bVidPreEnable = HI_TRUE;
            pAvplay->PreVidBufLen = 0;
            pAvplay->PreVidFirstWaterLine = 0;
            pAvplay->PreVidSecondWaterLine = 0;
            AVPLAY_PrePlay(pAvplay);
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (!pAvplay->AudEnable && !pAvplay->bAudPreEnable)
        {
            HI_U32 i;

            for (i = 0; i < pAvplay->DmxAudChnNum; i++)
            {
                Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxAud[i]);
                if (HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("HI_MPI_DMX_OpenChannel 0x%x failed 0x%x\n", i, Ret);
                    break;
                }
            }

            if (i < pAvplay->DmxAudChnNum)
            {
                HI_U32 j;

                for (j = 0; j < i; j++)
                {
                    (HI_VOID)HI_MPI_DMX_CloseChannel(pAvplay->hDmxAud[j]);
                }
				AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
           		HI_AVPLAY_INST_UNLOCK();
                return HI_FAILURE;
            }

            pAvplay->AudPreBufThreshold = 0;
            pAvplay->AudPreSysTime = -1;
            pAvplay->bAudPreEnable = HI_TRUE;
			pAvplay->PreAudWaterLine = 40;
            AVPLAY_PrePlay(pAvplay);
        }

    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
        if (Ret != HI_SUCCESS)
        {
			AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            HI_AVPLAY_INST_UNLOCK();
            HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidSet failed 0x%x\n", Ret);
            return Ret;
        }
    }

	AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();

    return HI_SUCCESS;
}
#endif


HI_S32 HI_MPI_AVPLAY_Start(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enChn < HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (enChn >= HI_UNF_AVPLAY_MEDIA_CHAN_BUTT)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (!pAvplay->VidEnable)
        {
            if (HI_INVALID_HANDLE == pAvplay->hVdec)
            {
                HI_ERR_AVPLAY("vid chn is close, can not start.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            if (!pAvplay->WindowNum)
            {
                HI_ERR_AVPLAY("window is not attached, can not start.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

#ifdef HI_AVPLAY_FCC_SUPPORT
			if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
            {
				if(pAvplay->bVidPreEnable)
                {
					if (HI_INVALID_HANDLE != pAvplay->hDFCtx)
                    {
                        Ret = DetFrm_Stop(pAvplay->hDFCtx);
                        if (HI_SUCCESS != Ret)
                        {
                            HI_ERR_AVPLAY("DetFrm_Stop failed 0x%x\n", Ret);
                            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
               				HI_AVPLAY_INST_UNLOCK();
                            return Ret;
                        }

                        Ret = DetFrm_Destroy(pAvplay->hDFCtx);
                        if (HI_SUCCESS != Ret)
                        {
                            HI_ERR_AVPLAY("DetFrm_Destroy failed 0x%x\n", Ret);
                			AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                			HI_AVPLAY_INST_UNLOCK();
                            return Ret;
                        }

                        pAvplay->hDFCtx = HI_INVALID_HANDLE;
                    }

				}
			}
#endif
            
            Ret = AVPLAY_StartVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("start vid chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }

            Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_SYNC_Play Vid failed.\n");
            }

            pAvplay->VidEnable = HI_TRUE;
#ifdef HI_AVPLAY_FCC_SUPPORT
			pAvplay->bVidPreEnable = HI_FALSE;
#endif

            AVPLAY_Play(pAvplay);

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTART, 0);
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (!pAvplay->AudEnable)
        {
            if (HI_INVALID_HANDLE == pAvplay->hAdec)
            {
                HI_ERR_AVPLAY("aud chn is close, can not start.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            if (0 == pAvplay->TrackNum)
            {
                HI_ERR_AVPLAY("track is not attached, can not start.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
            
            Ret = AVPLAY_StartAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("start aud chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }

            Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_SYNC_Play Aud failed.\n");
            }

            pAvplay->AudEnable = HI_TRUE;
#ifdef HI_AVPLAY_FCC_SUPPORT
			pAvplay->bAudPreEnable = HI_FALSE;
#endif
            AVPLAY_Play(pAvplay);

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTART, 0);
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

#ifdef HI_AVPLAY_FCC_SUPPORT
HI_S32 HI_MPI_AVPLAY_PreStop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn,const HI_UNF_AVPLAY_PRESTOP_OPT_S *pPreStopOpt)
{
    HI_ERR_AVPLAY("HI_MPI_AVPLAY_PreStop is not supported\n");
    return HI_ERR_AVPLAY_NOT_SUPPORT;
}
#endif

HI_S32 HI_MPI_AVPLAY_Stop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_STOP_OPT_S *pStop)
{
    AVPLAY_S                   *pAvplay = HI_NULL;
    HI_UNF_AVPLAY_STOP_OPT_S   StopOpt;
    AVPLAY_USR_ADDR_S          AvplayUsrAddr;
    HI_U32                     SysTime;
    HI_BOOL                    Block;
    HI_S32                     Ret;
    HI_BOOL                    bStopNotify = HI_FALSE;
#ifdef HI_AVPLAY_FCC_SUPPORT
	HI_U32                     i;
#endif
    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }    

    if (enChn < HI_UNF_AVPLAY_MEDIA_CHAN_AUD)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (enChn >= HI_UNF_AVPLAY_MEDIA_CHAN_BUTT)
    {
        HI_ERR_AVPLAY("para enChn is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (pStop)
    {
        if (pStop->enMode >= HI_UNF_AVPLAY_STOP_MODE_BUTT)
        {
            HI_ERR_AVPLAY("para pStop->enMode is invalid.\n");
            return HI_ERR_AVPLAY_INVALID_PARA;
        }

        StopOpt.u32TimeoutMs = pStop->u32TimeoutMs;
        StopOpt.enMode = pStop->enMode;
    }
    else
    {
        StopOpt.u32TimeoutMs = 0;
        StopOpt.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    }

    AVPLAY_GET_INST_AND_LOCK();
#ifndef HI_AVPLAY_FCC_SUPPORT
    /*The relevant channel is already stopped*/
    if ( ((HI_UNF_AVPLAY_MEDIA_CHAN_AUD == enChn) && (!pAvplay->AudEnable) )
       || ((HI_UNF_AVPLAY_MEDIA_CHAN_VID == enChn) && (!pAvplay->VidEnable))
       || ((((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD | (HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID) == enChn)
           && (!pAvplay->AudEnable) && (!pAvplay->VidEnable)))
    {
        HI_INFO_AVPLAY("The chn is already stoped\n");
		HI_AVPLAY_INST_UNLOCK();
        return HI_SUCCESS;
    }
#else
	if ( ((HI_UNF_AVPLAY_MEDIA_CHAN_AUD == enChn) && (!pAvplay->AudEnable)  && (!pAvplay->bAudPreEnable) )
       || ((HI_UNF_AVPLAY_MEDIA_CHAN_VID == enChn) && (!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable))
       || ((((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD | (HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID) == enChn)
           && (!pAvplay->AudEnable)  && (!pAvplay->bAudPreEnable) && (!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable)))
    {
        HI_INFO_AVPLAY("The chn is already stoped\n");
		HI_AVPLAY_INST_UNLOCK();
        return HI_SUCCESS;
    }
#endif
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

	/*Non Block invoke*/
    if (0 == StopOpt.u32TimeoutMs)
    {
        if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
        {
            if (pAvplay->VidEnable)
            {
                Ret = AVPLAY_StopVidChn(pAvplay, StopOpt.enMode);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("stop vid chn failed.\n");
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                    HI_AVPLAY_INST_UNLOCK();
                    return Ret;
                }
#if 0
                if (HI_INVALID_HANDLE != pAvplay->hWindow[0])
                {
                    /* resume the frc and window ratio */
                    (HI_VOID)HI_MPI_VO_SetWindowExtAttr(pAvplay->hWindow[0], VO_WIN_FRC, HI_TRUE);
                    (HI_VOID)HI_MPI_VO_SetWindowRatio(pAvplay ->hWindow[0], 256);                
                }
#endif    
                pAvplay->VidEnable = HI_FALSE;
#ifdef HI_AVPLAY_FCC_SUPPORT
				pAvplay->bVidPreEnable = HI_FALSE;
#endif				
                (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTOP, 0);
            }
#ifdef HI_AVPLAY_FCC_SUPPORT
			else if ( pAvplay->bVidPreEnable )
            {
                Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxVid);
                if(HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("HI_MPI_DMX_CloseChannel failed:%#x.\n",Ret);
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                    HI_AVPLAY_INST_UNLOCK();
                    return Ret;
                }

                pAvplay->bVidPreEnable = HI_FALSE;
            }
#endif
        }

        if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
        {
            if (pAvplay->AudEnable)
            {
                Ret = AVPLAY_StopAudChn(pAvplay);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("stop aud chn failed.\n");
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                    HI_AVPLAY_INST_UNLOCK();
                    return Ret;
                }
 #if 0               
                for (i=0; i<pAvplay->TrackNum; i++)
                {
                    if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                    {
                        Ret |= HI_MPI_HIAO_SetPause(pAvplay->hTrack[i], HI_FALSE);
                    }
                }
			
			    if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                    return Ret;
                }		
#endif
                pAvplay->AudEnable = HI_FALSE;
#ifdef HI_AVPLAY_FCC_SUPPORT
				pAvplay->bAudPreEnable = HI_FALSE;
#endif
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE; /* avoid there is frame at avplay, when stop avplay, we drop this frame  */

                (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTOP, 0);
            }
#ifdef HI_AVPLAY_FCC_SUPPORT
			else if (pAvplay->bAudPreEnable)
            {
                    for(i = 0; i < pAvplay->DmxAudChnNum; i++)
                    {
                        Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxAud[i]);
                        if (Ret != HI_SUCCESS)
                        {
                            HI_ERR_AVPLAY("HI_MPI_DMX_CloseChannel failed:%#x.\n",Ret);
                            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                    		HI_AVPLAY_INST_UNLOCK();
                            return Ret;
                        }
                    }

                pAvplay->bAudPreEnable = HI_FALSE;
            }
#endif

        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
#ifdef HI_AVPLAY_FCC_SUPPORT
			if ((!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable)
                &&(!pAvplay->AudEnable) && (!pAvplay->bAudPreEnable) )
#else
            if ((!pAvplay->VidEnable)
              &&(!pAvplay->AudEnable)
               )
#endif
            {
                Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, 0x1fff);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
                    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                    HI_AVPLAY_INST_UNLOCK();
                    return Ret;
                }
            }
        }
#ifdef HI_AVPLAY_FCC_SUPPORT
		if ((!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable)
            &&(!pAvplay->AudEnable) && (!pAvplay->bAudPreEnable) )	
#else
        if ((!pAvplay->VidEnable)
          &&(!pAvplay->AudEnable)
           )
#endif
        {
        	if((pAvplay->bSetEosFlag)&&(pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_EOS))
        	{
				AVPLAY_Eos(pAvplay);
        		AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_EOS, HI_NULL);
			}
            AVPLAY_Stop(pAvplay);
            bStopNotify = HI_TRUE;
        }
    }
    else
    {
        if ((pAvplay->VidEnable && pAvplay->AudEnable)
          &&(enChn <= HI_UNF_AVPLAY_MEDIA_CHAN_VID)
           )
        {
            HI_ERR_AVPLAY("must control vid and aud chn together.\n");
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_PARA;
        }
#ifdef HI_AVPLAY_FCC_SUPPORT
		if (( (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID)) && (!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable) )
            || ( (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD)) && (!pAvplay->AudEnable) && (!pAvplay->bAudPreEnable) ))
        {
            HI_ERR_AVPLAY("not support this mode.\n");
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_PARA;
        }
#endif

        if (StopOpt.u32TimeoutMs != SYS_TIME_MAX)
        {
            Block = HI_FALSE;
        }
        else
        {
            Block = HI_TRUE;
        }

        Ret = AVPLAY_SetEosFlag(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("ERR: AVPLAY_SetEosFlag, Ret = %#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }

        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        pAvplay->EosStartTime = AVPLAY_GetSysTime();
        while (1)
        {
            if(HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
            {
                break;
            }

            if (!Block)
            {
                SysTime = AVPLAY_GetSysTime();

                if (SysTime > pAvplay->EosStartTime)
                {
                    pAvplay->EosDurationTime = SysTime - pAvplay->EosStartTime;
                }
                else
                {
                    pAvplay->EosDurationTime = (0xFFFFFFFFU - pAvplay->EosStartTime) + 1 + SysTime;
                }

                if (pAvplay->EosDurationTime >= StopOpt.u32TimeoutMs)
                {
                    HI_ERR_AVPLAY("eos proc timeout.\n");
                    break;
                }
            }

            (HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*1000);
        }
        
        AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

        if (pAvplay->VidEnable)
        {
            Ret = AVPLAY_StopVidChn(pAvplay, StopOpt.enMode);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("stop vid chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
#if 0
            if (HI_INVALID_HANDLE != pAvplay->hWindow[0])
            {
                /* resume the frc and window ratio */
                (HI_VOID)HI_MPI_VO_SetWindowExtAttr(pAvplay->hWindow[0], VO_WIN_FRC, HI_TRUE);
                (HI_VOID)HI_MPI_VO_SetWindowRatio(pAvplay ->hWindow[0], 256);                
            }
#endif      
            pAvplay->VidEnable = HI_FALSE;
#ifdef HI_AVPLAY_FCC_SUPPORT
			pAvplay->bVidPreEnable = HI_FALSE;
#endif
            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTOP, 0);
        }

        if (pAvplay->AudEnable)
        {
            Ret = AVPLAY_StopAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("stop aud chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
#if 0
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    Ret |= HI_MPI_HIAO_SetPause(pAvplay->hTrack[i], HI_FALSE);
                }
            }
            
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
#endif
            pAvplay->AudEnable = HI_FALSE;
#ifdef HI_AVPLAY_FCC_SUPPORT
			pAvplay->bAudPreEnable = HI_FALSE;
#endif

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTOP, 0);
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, 0x1fff);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }

        AVPLAY_Stop(pAvplay);
        bStopNotify = HI_TRUE;
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();

    if (HI_TRUE == bStopNotify)
    {
          AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_STOP, HI_NULL);
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Pause(HI_HANDLE hAvplay)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;
    HI_U32              i;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    AVPLAY_GET_INST_AND_LOCK();

    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);

        HI_AVPLAY_INST_UNLOCK();
        return HI_SUCCESS; 
    }

    if ((!pAvplay->VidEnable)
      &&(!pAvplay->AudEnable)
       )
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_SYNC_Pause(pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Pause failed, Ret=0x%x.\n", Ret);
    }

    AVPLAY_Pause(pAvplay);

    if (pAvplay->AudEnable)
    {
        for (i=0; i<pAvplay->TrackNum; i++)
        {
            if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
            {
				Ret = HI_MPI_AO_Track_Pause(pAvplay->hTrack[i]);
            }
        }
            
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
        }		 
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

#if 0
HI_S32 HI_MPI_AVPLAY_Tplay(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_TPLAY_OPT_S *pstTplayOpt)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;
    HI_U32                  i;
    HI_U32                  WinRatio;

    if (HI_INVALID_HANDLE == hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

	if (HI_NULL == pstTplayOpt)
	{
        HI_ERR_AVPLAY("para pstTplayOpt is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    if (!pAvplay->VidEnable && !pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }


    if (pstTplayOpt->u32SpeedInteger > 64 || pstTplayOpt->u32SpeedDecimal > 999)
    {
        HI_ERR_AVPLAY("SpeedInteger or SpeedDecimal is invalid!\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex); 
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    
    WinRatio = (pstTplayOpt->u32SpeedInteger*1000 + pstTplayOpt->u32SpeedDecimal) * 256 / 1000;

    
    if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
    {
        Ret = HI_MPI_VO_SetWindowRatio(pAvplay ->hWindow[0], WinRatio);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("call HI_MPI_VO_SetWindowRatio failed, Ret=%#x\n", Ret);
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        /* set vid dec direct */
        //HI_MPI_VDEC_SetDecDirect();
        
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return HI_SUCCESS;
    }

    if (((HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->LstStatus) && (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus))
      ||(HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
       )
    {
        Ret = AVPLAY_Reset(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("avplay reset err, Ret=%#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
            return Ret;
        }

        // TODO: where to enable?
        /* disable die in tplay mode */
        //(HI_VOID)HI_MPI_VO_DisableDieMode(pAvplay->hWindow[0]);
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        /* pause->tplay, resume hiao */
        if (pAvplay->AudEnable)
        {
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                 //   Ret |= HI_MPI_HIAO_SetPause(pAvplay->hTrack[i], HI_FALSE);
				 	Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                }
            }
            
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
            }
        }

        /* pause->tplay, resume sync */
        Ret = HI_MPI_SYNC_Resume(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Resume failed, Ret=0x%x.\n", Ret);
        }
    }

    Ret = HI_MPI_VO_SetWindowRatio(pAvplay ->hWindow[0], WinRatio);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("call HI_MPI_VO_SetWindowRatio failed, Ret=%#x\n", Ret);
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
        return Ret;
    }

    /* set vid dec direct */
    //HI_MPI_VDEC_SetDecDirect();

    HI_MPI_SYNC_Tplay(pAvplay->hSync);
    AVPLAY_Tplay(pAvplay);

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
    
    return HI_SUCCESS;    
}
#endif

HI_S32 HI_MPI_AVPLAY_Tplay(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_TPLAY_OPT_S *pstTplayOpt)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S AvplayUsrAddr;
    HI_U32 TplaySpeed;
	HI_U32 i;
    HI_S32 Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!pstTplayOpt)
    {
        TplaySpeed = 0;
    }
    else
    {
        TplaySpeed = pstTplayOpt->u32TplaySpeed;
    }
    AVPLAY_GET_INST_AND_LOCK();

    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
    {
        pAvplay->TplaySpeed = TplaySpeed;

        Ret = HI_MPI_SYNC_Tplay(pAvplay->hSync, pAvplay->TplaySpeed);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Tplay failed.\n");
        }

        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_SUCCESS;
    }

    if ((!pAvplay->VidEnable)
        && (!pAvplay->AudEnable)
    )
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (((HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->LstStatus) && (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus))
        || (HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
    )
    {
        if (pAvplay->VidEnable)
        {
            Ret = AVPLAY_StopVidChn(pAvplay, HI_UNF_AVPLAY_STOP_MODE_STILL);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("stop vid chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }

        if (pAvplay->AudEnable)
        {
            Ret = AVPLAY_StopAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("stop aud chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, 0x1fff);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }

        if (pAvplay->VidEnable)
        {
            Ret = AVPLAY_StartVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("start vid chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }

            (HI_VOID)HI_MPI_VO_DisableDieMode(pAvplay->hWindow[0]);
        }

        if (pAvplay->AudEnable)
        {
            Ret = AVPLAY_StartAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("start aud chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_PcrPidSet failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }

        AVPLAY_ResetProcFlag(pAvplay);
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        if (pAvplay->AudEnable)
        {
        	for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
				 	Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                }
            }
			if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_AO_Track_Resume failed, Ret=0x%x.\n", Ret);
            }
        }
		
		/* pause->tplay, resume sync */
        Ret = HI_MPI_SYNC_Resume(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Resume failed, Ret=0x%x.\n", Ret);
        }
    }

    pAvplay->TplaySpeed = TplaySpeed;

    Ret = HI_MPI_SYNC_Tplay(pAvplay->hSync, pAvplay->TplaySpeed);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Tplay failed.\n");
    }

    AVPLAY_Tplay(pAvplay);

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}


HI_S32 HI_MPI_AVPLAY_Resume(HI_HANDLE hAvplay)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;
    HI_U32                  i;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    if (HI_INVALID_HANDLE != pAvplay->hWindow[0])
    {
        (HI_VOID)HI_MPI_VO_SetWindowStepMode(pAvplay->hWindow[0], HI_FALSE);
    }

    if (HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
    {
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();        
        return HI_SUCCESS; 
    }

    if ((!pAvplay->VidEnable)
      &&(!pAvplay->AudEnable)
       )
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (((HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->LstStatus) && (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus))
      ||(HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
       )
    {
        Ret = AVPLAY_Reset(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("AVPLAY_Reset, Ret=%#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }

        (HI_VOID)HI_MPI_SYNC_Play(pAvplay->hSync);

        /* resume the frc and window ratio */
        (HI_VOID)HI_MPI_VO_SetWindowRatio(pAvplay ->hWindow[0], 256);
    }

    /* resume hiao and sync if curstatus is pause */
    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        if (pAvplay->AudEnable)
        {
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
             //       Ret |= HI_MPI_HIAO_SetPause(pAvplay->hTrack[i], HI_FALSE);
					Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                }
            }
            
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
            }
        }

        Ret = HI_MPI_SYNC_Resume(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Resume failed.\n");
        }
    }
    
    AVPLAY_Play(pAvplay);

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}


HI_S32 HI_MPI_AVPLAY_Reset(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_RESET_OPT_S *pstResetOpt)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S AvplayUsrAddr;
    HI_S32 Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

#if 0
    if ((!pAvplay->VidEnable)
        && (!pAvplay->AudEnable)
    )
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
#endif


    if ((HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
        && (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        && (HI_NULL != pstResetOpt)
        && (HI_INVALID_PTS != pstResetOpt->u32SeekPtsMs)
    )
    {
        HI_INFO_AVPLAY("sdk buf seek enter\n");

        Ret = AVPLAY_Seek(pAvplay, pstResetOpt->u32SeekPtsMs);
        if (Ret != HI_SUCCESS)
        {
            HI_INFO_AVPLAY("not in sdk buf\n");

            Ret = AVPLAY_Reset(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call AVPLAY_Reset failed.\n");
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
        }

        HI_INFO_AVPLAY("sdk buf seek quit\n");
    }
    else
    {
        Ret = AVPLAY_Reset(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call AVPLAY_Reset failed.\n");
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetBuf(HI_HANDLE  hAvplay,
                            HI_UNF_AVPLAY_BUFID_E enBufId,
                            HI_U32                u32ReqLen,
                            HI_UNF_STREAM_BUF_S  *pstData,
                            HI_U32                u32TimeOutMs)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enBufId >= HI_UNF_AVPLAY_BUF_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enBufId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pstData)
    {
        HI_ERR_AVPLAY("para pstData is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (u32TimeOutMs != 0)
    {
        HI_ERR_AVPLAY("enBufId=%d NOT support block mode, please set 'u32TimeOutMs' to 0.\n", enBufId);
        return HI_ERR_AVPLAY_NOT_SUPPORT;
    }
    AVPLAY_GET_INST_AND_LOCK();

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_ERR_AVPLAY("avplay is ts stream mode.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_WARN_AVPLAY("avplay curstatus is eos.\n");
        pAvplay->CurStatus = pAvplay->LstStatus;
    }

    pAvplay->bSetEosFlag = HI_FALSE;

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == enBufId)
    {
        if (!pAvplay->VidEnable)
        {
            HI_WARN_AVPLAY("vid chn is stopped.\n");
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_VDEC_ChanGetBuffer(pAvplay->hVdec, u32ReqLen, &pAvplay->AvplayVidEsBuf);
        if (Ret != HI_SUCCESS)
        {
            if (Ret != HI_ERR_VDEC_LIST_EMPTY)
            {
                HI_WARN_AVPLAY("call HI_MPI_VDEC_ChanGetBuffer failed, Ret=0x%x.\n", Ret);
            }
            else
            {
                Ret = HI_ERR_VDEC_BUFFER_FULL;
            }

            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }

        pstData->pu8Data = pAvplay->AvplayVidEsBuf.pu8Addr;
        pstData->u32Size = pAvplay->AvplayVidEsBuf.u32BufSize;
    }

    if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == enBufId)
    {
        if (!pAvplay->AudEnable)
        {
            HI_WARN_AVPLAY("aud chn is stopped.\n");
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
#if 0
        Ret = HI_MPI_ADEC_GetDelayMs(pAvplay->hAdec, &AdecDelay);
        if (HI_SUCCESS == Ret && AdecDelay > AVPLAY_ADEC_MAX_DELAY)
        {
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }        
#endif
        Ret = HI_MPI_ADEC_GetBuffer(pAvplay->hAdec, u32ReqLen, &pAvplay->AvplayAudEsBuf);
        if (Ret != HI_SUCCESS)
        {
            if ((Ret != HI_ERR_ADEC_IN_BUF_FULL) && (Ret != HI_ERR_ADEC_IN_PTSBUF_FULL) )
            {
                HI_ERR_AVPLAY("call HI_MPI_ADEC_GetBuffer failed, Ret=0x%x.\n", Ret);
            }

            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }

        pstData->pu8Data = pAvplay->AvplayAudEsBuf.pu8Data;
        pstData->u32Size = pAvplay->AvplayAudEsBuf.u32Size;
    }

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_PutBuf(HI_HANDLE hAvplay, HI_UNF_AVPLAY_BUFID_E enBufId,
                                       HI_U32 u32ValidDataLen, HI_U32 u32Pts, HI_UNF_AVPLAY_PUTBUFEX_OPT_S *pstExOpt)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enBufId >= HI_UNF_AVPLAY_BUF_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enBufId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    AVPLAY_GET_INST_AND_LOCK();

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_ERR_AVPLAY("avplay is ts stream mode.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_WARN_AVPLAY("avplay curstatus is eos.\n");
        pAvplay->CurStatus = pAvplay->LstStatus;
    }

    pAvplay->bSetEosFlag = HI_FALSE;

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == enBufId)
    {
        if (!pAvplay->VidEnable)
        {
            HI_ERR_AVPLAY("vid chn is stopped.\n");
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->AvplayVidEsBuf.u32BufSize = u32ValidDataLen;
        pAvplay->AvplayVidEsBuf.u64Pts = u32Pts;
        pAvplay->AvplayVidEsBuf.bEndOfFrame = pstExOpt->bEndOfFrm;

        if (pstExOpt->bContinue)
        {
            pAvplay->AvplayVidEsBuf.bDiscontinuous = HI_FALSE;
        }
        else
        {
            pAvplay->AvplayVidEsBuf.bDiscontinuous = HI_TRUE;
        }
        
        Ret = HI_MPI_VDEC_ChanPutBuffer(pAvplay->hVdec, &pAvplay->AvplayVidEsBuf);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanPutBuffer failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == enBufId)
    {
        if (!pAvplay->AudEnable)
        {
            HI_ERR_AVPLAY("aud chn is stopped.\n");
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->AvplayAudEsBuf.u32Size = u32ValidDataLen;
        Ret = HI_MPI_ADEC_PutBuffer(pAvplay->hAdec, &pAvplay->AvplayAudEsBuf, u32Pts);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_ADEC_PutBuffer failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
    }

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SetEosFlag(HI_HANDLE hAvplay, HI_UNF_AVPLAY_BUFID_E enBufId)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S AvplayUsrAddr;
    HI_S32 Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (enBufId >= HI_UNF_AVPLAY_BUF_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enBufId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    AVPLAY_GET_INST_AND_LOCK();

    if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == enBufId)
    {
        if (!pAvplay->AudEnable)
        {
            HI_ERR_AVPLAY("aud chn is stopped.\n");
            HI_AVPLAY_INST_UNLOCK();
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_ADEC_SetEosFlag(pAvplay->hAdec);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_ADEC_SetEosFlag failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }

		Ret = HI_MPI_AO_Track_SetEosFlag(pAvplay->hSyncTrack, HI_TRUE);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_HIAO_SetEosFlag failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
    }

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetSyncVdecHandle(HI_HANDLE hAvplay, HI_HANDLE *phVdec, HI_HANDLE *phSync)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phVdec)
    {
        HI_ERR_AVPLAY("para phVdec is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phSync)
    {
        HI_ERR_AVPLAY("para phSync is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    AVPLAY_GET_INST_AND_LOCK();

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("Avplay have not vdec.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phVdec = pAvplay->hVdec;
    *phSync = pAvplay->hSync;

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetSndHandle(HI_HANDLE hAvplay, HI_HANDLE *phTrack)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phTrack)
    {
        HI_ERR_AVPLAY("para phTrack is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (HI_INVALID_HANDLE == pAvplay->hSyncTrack)
    {
        HI_ERR_AVPLAY("Avplay have not main track.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phTrack = pAvplay->hSyncTrack;

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetWindowHandle(HI_HANDLE hAvplay, HI_HANDLE *phWindow)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phWindow)
    {
        HI_ERR_AVPLAY("para phWindow is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (!pAvplay->WindowNum)
    {
        HI_ERR_AVPLAY("Avplay have not window.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phWindow = pAvplay->hWindow[0];

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_AttachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_U32             i;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_AVPLAY("para hWindow is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();

    for (i=0; i<AVPLAY_MAX_WIN; i++)
    {
       if (pAvplay->hWindow[i] == hWindow)
        {
            HI_AVPLAY_INST_UNLOCK();
            return HI_SUCCESS;
        } 
    }

    if (AVPLAY_MAX_WIN == pAvplay->WindowNum)
    {
        HI_ERR_AVPLAY("AVPLAY has max window.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->hWindow[pAvplay->WindowNum] = hWindow;

    pAvplay->WindowNum++;

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_DetachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_U32             i;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_AVPLAY("para hWindow is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();

    for (i=0; i<AVPLAY_MAX_WIN; i++)
    {
        if (pAvplay->hWindow[i] == hWindow)
        {
            break;
        } 
    }

    if (AVPLAY_MAX_WIN == i)
    {
        HI_ERR_AVPLAY("hWindow is not AVPLAY has attached window.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pAvplay->hWindow[i] = HI_INVALID_HANDLE;
    pAvplay->WindowNum--;

    for (; i<AVPLAY_MAX_WIN-1; i++)
    {
        pAvplay->hWindow[i] = pAvplay->hWindow[i+1];
    }

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

#if 1
HI_S32 HI_MPI_AVPLAY_PlayTrickMode(HI_HANDLE hAvplay, HI_S32 s32Speed)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S AvplayUsrAddr;
    HI_S32 Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    Ret = HI_MPI_VDEC_SetTrickMode(pAvplay->hVdec, s32Speed);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetTrickMode failed.\n");
    }

    HI_AVPLAY_INST_UNLOCK();
    return Ret;
}
#endif


HI_S32 HI_MPI_AVPLAY_SetWindowRepeat(HI_HANDLE hAvplay, HI_U32 u32Repeat)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (0 == u32Repeat)
    {
        HI_ERR_AVPLAY("para u32Repeat is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (!pAvplay->WindowNum)
    {
        HI_ERR_AVPLAY("AVPLAY has not attached window.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VO_SetWindowRatio(pAvplay->hWindow[0], 256/u32Repeat);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VO_SetWindowRepeat failed.\n");
    }

    HI_AVPLAY_INST_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_SetWindowStepMode(HI_HANDLE hAvplay, HI_BOOL bStepMode)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if ((bStepMode != HI_TRUE)
      &&(bStepMode != HI_FALSE)
       )
    {
        HI_ERR_AVPLAY("para bStepMode is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
    AVPLAY_GET_INST_AND_LOCK();

    if (!pAvplay->WindowNum)
    {
        HI_ERR_AVPLAY("AVPLAY has not attached window.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VO_SetWindowStepMode(pAvplay->hWindow[0], bStepMode);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VO_SetWindowStepMode failed.\n");
    }

    HI_AVPLAY_INST_UNLOCK();
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_SetWindowStepPlay(HI_HANDLE hAvplay)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (!pAvplay->WindowNum)
    {
        HI_ERR_AVPLAY("AVPLAY has not attached window.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VO_SetWindowStepPlay(pAvplay->hWindow[0]);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VO_SetWindowStepPlay failed.\n");
    }

    HI_AVPLAY_INST_UNLOCK();
    return Ret;
}


HI_S32 HI_MPI_AVPLAY_AttachSnd(HI_HANDLE hAvplay, HI_HANDLE hTrack)
{
    AVPLAY_S            *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S   AvplayUsrAddr;
    HI_S32              Ret;
    HI_S32              i;
 //   MPI_TRACK_INFO_S    stTrackInfo;
	HI_UNF_AUDIOTRACK_ATTR_S stTrackInfo;

    if (HI_INVALID_HANDLE == hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (HI_INVALID_HANDLE == hTrack)
    {
        HI_ERR_AVPLAY("para hTrack is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_GET_INST_AND_LOCK();
	 AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);

    for (i=0; i<AVPLAY_MAX_TRACK; i++)
    {
        if (pAvplay->hTrack[i] == hTrack)
        {
            AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
            HI_AVPLAY_INST_UNLOCK();
            return HI_SUCCESS;
        }
    }
    
  //  Ret = HI_MPI_HIAO_GetTrackInfo(hTrack, &stTrackInfo);
	memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));
	Ret = HI_MPI_AO_Track_GetAttr(hTrack, &stTrackInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_AO_Track_GetAttr.\n");
		AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_FAILURE;
    }

    for (i=0; i<AVPLAY_MAX_TRACK; i++)
    {
        if (HI_INVALID_HANDLE == pAvplay->hTrack[i])
        {
            break;
        }
    }

    if(AVPLAY_MAX_TRACK == i)
    {
        HI_ERR_AVPLAY("AVPLAY has attached max track.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_FAILURE;        
    }    

    pAvplay->hTrack[i] = hTrack;
	pAvplay->TrackNum++;
   
    if(HI_INVALID_HANDLE == pAvplay->hSyncTrack)
    {
        pAvplay->hSyncTrack = hTrack;
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_DetachSnd(HI_HANDLE hAvplay, HI_HANDLE hTrack)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;
    HI_U32              i, j;
  //  MPI_TRACK_INFO_S    TrackInfo;
	HI_UNF_AUDIOTRACK_ATTR_S   stTrackInfo;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (HI_INVALID_HANDLE == hTrack)
    {
        HI_ERR_AVPLAY("para hTrack is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
	
	memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));
    AVPLAY_GET_INST_AND_LOCK();
	AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);


    for (i=0; i<pAvplay->TrackNum; i++)
    {
        if (pAvplay->hTrack[i] == hTrack)
        {
            break;
        }
    }

    if (i == pAvplay->TrackNum)
    {
        HI_ERR_AVPLAY("this is not a attached track, can not detach.\n");
        AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->hTrack[i] = pAvplay->hTrack[pAvplay->TrackNum - 1];
    pAvplay->hTrack[pAvplay->TrackNum - 1] = HI_INVALID_HANDLE;
    pAvplay->TrackNum--;
    
    if (hTrack == pAvplay->hSyncTrack)
    {
        for (j=0; j<pAvplay->TrackNum; j++)
        {
        	(HI_VOID)HI_MPI_AO_Track_GetAttr(pAvplay->hTrack[j], &stTrackInfo);
          //  (HI_VOID)HI_MPI_HIAO_GetTrackInfo(pAvplay->hTrack[j], &TrackInfo);

            if (HI_UNF_SND_TRACK_TYPE_BUTT  != stTrackInfo.enTrackType)
            {
                pAvplay->hSyncTrack = pAvplay->hTrack[j];
                AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
                HI_AVPLAY_INST_UNLOCK();
                return HI_SUCCESS;
            }            
         
        } 

        if (j == pAvplay->TrackNum)
        {
            pAvplay->hSyncTrack= HI_INVALID_HANDLE;
        }
    }

    AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDmxAudChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxAudChn)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phDmxAudChn)
    {
        HI_ERR_AVPLAY("para phDmxAudChn is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts stream mode.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->hAdec == HI_INVALID_HANDLE)
    {
        HI_ERR_AVPLAY("aud chn is close.\n");
        HI_AVPLAY_INST_UNLOCK();
         return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phDmxAudChn = pAvplay->hDmxAud[pAvplay->CurDmxAudChn];

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDmxVidChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxVidChn)
{
    AVPLAY_S           *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S  AvplayUsrAddr;
    HI_S32               Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phDmxVidChn)
    {
        HI_ERR_AVPLAY("para phDmxVidChn is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts stream mode.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

	if (pAvplay->hVdec == HI_INVALID_HANDLE)
    {
        HI_ERR_AVPLAY("vid chn is close.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phDmxVidChn = pAvplay->hDmxVid;

    HI_AVPLAY_INST_UNLOCK();  
    return HI_SUCCESS;
}


#if 0
HI_S32 HI_MPI_AVPLAY_GetVdecInfo(HI_HANDLE hAvplay, AVPLAY_VDEC_INFO_S *pstVdecInfo)
{
    AVPLAY_S                       *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S AvplayUsrAddr;
    HI_S32 Ret;
    VDEC_STATUSINFO_S VdecBufStatus;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!pstVdecInfo)
    {
        HI_ERR_AVPLAY("para pstVdecInfo is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBufStatus);
        if (HI_SUCCESS == Ret)
        {
            pstVdecInfo->VfmwTotalDispFrameNum = VdecBufStatus.VfmwTotalDispFrameNum;
            pstVdecInfo->Field_Flag = VdecBufStatus.Field_Flag;
            pstVdecInfo->VfmwFrameRate = VdecBufStatus.VfmwFrameRate;
        }
        else
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStatusInfo failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
    }

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SetVdecCtrlInfo(HI_HANDLE hAvplay, VDEC_CONTROLINFO_S *pstVdecCtrlInfo)
{
    AVPLAY_S                       *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S AvplayUsrAddr;
    HI_S32 Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!pstVdecCtrlInfo)
    {
        HI_ERR_AVPLAY("para pstVdecCtrlInfo is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);
    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_SetCtrlInfo(pAvplay->hVdec, pstVdecCtrlInfo);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_SetCtrlInfo failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
    }
    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetUnDecodeFrameCnt(HI_HANDLE hAvplay, HI_U32 *pFrameCnt)
{
    AVPLAY_S                       *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S AvplayUsrAddr;
    VDEC_STATUSINFO_S VdecBuf;
    HI_S32 Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!pFrameCnt)
    {
        HI_ERR_AVPLAY("para pFrameCnt is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    CHECK_AVPLAY_INIT();

    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    AVPLAY_Mutex_Lock(pAvplay->pAvplayMutex);

    if ((pAvplay->hVdec != HI_INVALID_HANDLE)
        && (HI_UNF_AVPLAY_STREAM_TYPE_TS != pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    )
    {
        Ret = HI_MPI_VDEC_GetChanUnDecodeFrameCnt(pAvplay->hVdec, pFrameCnt);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanUnDecodeFrameCnt failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }

        Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStatusInfo failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }

        *pFrameCnt += VdecBuf.VfmwStrmNum;
    }

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}
#endif

HI_S32 HI_MPI_AVPLAY_GetStatusInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STATUS_INFO_S *pstStatusInfo)
{
    AVPLAY_S                       *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S              AvplayUsrAddr;
    HI_S32                           Ret;
    ADEC_BUFSTATUS_S               AdecBufStatus;
    VDEC_STATUSINFO_S              VdecBufStatus;
    HI_MPI_DMX_BUF_STATUS_S        VidChnBuf;
    HI_U32                         SndDelay = 0;
    HI_U32                         WinDelay = 0;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!pstStatusInfo)
    {
        HI_ERR_AVPLAY("para pstStatusInfo is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    pstStatusInfo->enRunStatus = pAvplay->CurStatus;

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {       
		memset(&AdecBufStatus, 0, sizeof(AdecBufStatus));

        (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBufStatus);
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_AUD;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufSize = AdecBufStatus.u32BufferSize;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32UsedSize = AdecBufStatus.u32BufferUsed;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufWptr = AdecBufStatus.u32BufWritePos;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufRptr = (HI_U32)AdecBufStatus.s32BufReadPos;
        pstStatusInfo->u32AuddFrameCount = AdecBufStatus.u32TotDecodeFrame;
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_AUD;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufSize  = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32UsedSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufWptr  = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufRptr  = 0;
        pstStatusInfo->u32AuddFrameCount = 0;
    }

    if (pAvplay->hSyncTrack != HI_INVALID_HANDLE)
    {
		Ret = HI_MPI_AO_Track_GetDelayMs(pAvplay->hSyncTrack, &SndDelay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_AO_Track_GetDelayMs failed:%x.\n",Ret);
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
    	}

        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime = SndDelay;

    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime = 0;
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBufStatus);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStatusInfo failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
            
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_DMX_GetPESBufferStatus failed.\n");
                HI_AVPLAY_INST_UNLOCK();
                return Ret;
            }
            
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = VidChnBuf.u32BufSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = VidChnBuf.u32UsedSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = VidChnBuf.u32BufWptr;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = VidChnBuf.u32BufRptr;
        }
        else
        {
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = VdecBufStatus.u32BufferSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = VdecBufStatus.u32BufferUsed;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32CurrentAvailableSize = VdecBufStatus.u32BufferAvailable;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = 0;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = 0;
        }

        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_VID;      
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufNum = VdecBufStatus.u32FrameBufNum;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].bEndOfStream = VdecBufStatus.bEndOfStream;
        pstStatusInfo->u32VidFrameCount = VdecBufStatus.u32TotalDecFrmNum;
        pstStatusInfo->u32VidErrorFrameCount = VdecBufStatus.u32TotalErrFrmNum;        
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_VID;        
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufNum = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].bEndOfStream = HI_TRUE;
        pstStatusInfo->u32VidFrameCount = 0;
        pstStatusInfo->u32VidErrorFrameCount = 0;    
    }

    if (pAvplay->WindowNum)
    {
        Ret = HI_MPI_VO_GetWindowDelay(pAvplay->hWindow[0], &WinDelay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VO_GetWindowDelay failed.\n");
            HI_AVPLAY_INST_UNLOCK();
            return Ret;
        }
        else
        {
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime = WinDelay;
        }
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime = 0;
    }

    Ret = HI_MPI_SYNC_GetStatus(pAvplay->hSync, &pstStatusInfo->stSyncStatus);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_GetStatus failed.\n");
        HI_AVPLAY_INST_UNLOCK();
        return Ret;
    }

    if(HI_INVALID_PTS !=  pstStatusInfo->stSyncStatus.u32LastAudPts)
    {
        if (pstStatusInfo->stSyncStatus.u32LastAudPts > pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime)
        {
            pstStatusInfo->stSyncStatus.u32LastAudPts -= pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime; 
        }
        else
        {
            pstStatusInfo->stSyncStatus.u32LastAudPts = 0;
        }
    } 

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetStreamInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STREAM_INFO_S *pstStreamInfo)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;
    ADEC_STREAMINFO_S       AdecStreaminfo = {0};
    VDEC_STATUSINFO_S       VdecBufStatus = {0};

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!pstStreamInfo)
    {
        HI_ERR_AVPLAY("para pstStreamInfo is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_STREAMINFO, &AdecStreaminfo);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_ADEC_GetInfo failed.\n");
        }
        else
        {
            pstStreamInfo->stAudStreamInfo.enACodecType = AdecStreaminfo.u32CodecID;
            pstStreamInfo->stAudStreamInfo.enSampleRate = AdecStreaminfo.enSampleRate;
            pstStreamInfo->stAudStreamInfo.enBitDepth = HI_UNF_BIT_DEPTH_16;
        }
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_GetChanStreamInfo(pAvplay->hVdec, &(pstStreamInfo->stVidStreamInfo));
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStreamInfo failed.\n");
        }        

	Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBufStatus);
	if (Ret != HI_SUCCESS)
	{
		HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStatusInfo failed.\n");
	}
	else
	{
		pstStreamInfo->stVidStreamInfo.u32bps = VdecBufStatus.u32StrmInBps;
	}
    }   

    HI_AVPLAY_INST_UNLOCK();
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetAudioSpectrum(HI_HANDLE hAvplay, HI_U16 *pSpectrum, HI_U32 u32BandNum)
{

    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;
    
    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!pSpectrum)
    {
        HI_ERR_AVPLAY("para pSpectrum is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();

    if (!pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is stopped.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_ADEC_GetAudSpectrum(pAvplay->hAdec,  pSpectrum , u32BandNum);
    if(HI_SUCCESS != Ret)
    {
        HI_WARN_AVPLAY("WARN: HI_MPI_ADEC_GetAudSpectrum.\n");
    }

    HI_AVPLAY_INST_UNLOCK();
   
    return Ret;
}

/* add for user to get buffer state, user may want to check if buffer is empty,
    but NOT want to block the user's thread. then user can use this API to check the buffer state
    by q46153 */
HI_S32 HI_MPI_AVPLAY_IsBuffEmpty(HI_HANDLE hAvplay, HI_BOOL *pbIsEmpty)
{
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;
    HI_S32                  Ret;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    if (!pbIsEmpty)
    {
        HI_ERR_AVPLAY("para pbIsEmpty is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    *pbIsEmpty = HI_FALSE;
    AVPLAY_GET_INST_AND_LOCK();

    if (pAvplay->bSetEosFlag)
    {
        if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
        {
            *pbIsEmpty = HI_TRUE;
            pAvplay->CurBufferEmptyState = HI_TRUE;
        }
        else
        {
            *pbIsEmpty = HI_FALSE;
            pAvplay->CurBufferEmptyState = HI_FALSE;
        }
    }
    else
    {
        *pbIsEmpty = AVPLAY_IsBufEmpty(pAvplay);
    }
    
    HI_AVPLAY_INST_UNLOCK();
    
    return HI_SUCCESS;
}


/* for DDP test only! call this before HI_UNF_AVPLAY_ChnOpen */ 
HI_S32 HI_MPI_AVPLAY_SetDDPTestMode(HI_HANDLE hAvplay, HI_BOOL bEnable)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S     AvplayUsrAddr;
    HI_S32                Ret;
    
    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para hAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    AVPLAY_GET_INST_AND_LOCK();
    pAvplay->AudDDPMode = bEnable;
    pAvplay->LastAudPts = 0;
    

    Ret = HI_MPI_SYNC_SetDDPTestMode(pAvplay->hSync, pAvplay->AudDDPMode);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Set SYNC DDPTestMode error:%#x.\n", Ret);
    }
	HI_AVPLAY_INST_UNLOCK();
    
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SwitchDmxAudChn(HI_HANDLE hAvplay, HI_HANDLE hNewDmxAud, HI_HANDLE *phOldDmxAud)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S     AvplayUsrAddr;
    HI_S32                Ret;
    
    if ((HI_INVALID_HANDLE == hAvplay) || (HI_INVALID_HANDLE == hNewDmxAud) || (HI_NULL == phOldDmxAud))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();
    AVPLAY_Mutex_Lock(pAvplay->pAvplayThreadMutex);

    /* if the es buf has not been released */
    if(pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
    }
    
    *phOldDmxAud = pAvplay->hDmxAud[pAvplay->CurDmxAudChn];
    pAvplay->hDmxAud[pAvplay->CurDmxAudChn] = hNewDmxAud;

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();
    
    return HI_SUCCESS;
}

/* add for Flashplayer adjust pts */
HI_S32 HI_MPI_AVPLAY_PutAudPts(HI_HANDLE hAvplay, HI_U32 u32AudPts)
{
    AVPLAY_S              *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S     AvplayUsrAddr;
    HI_S32                Ret;
    //HI_U32                AoBufTime = 0;
    
    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    pAvplay->AudInfo.SrcPts = u32AudPts;
    pAvplay->AudInfo.Pts = u32AudPts;

    //(HI_VOID)HI_MPI_HIAO_GetDelayMs(pAvplay->hSnd, &AoBufTime);

    pAvplay->AudInfo.BufTime = 0;
    pAvplay->AudInfo.FrameNum = 0;
    pAvplay->AudInfo.FrameTime = 5000;

    (HI_VOID)AVPLAY_ThreadMutex_Lock(pAvplay->pAvplayThreadMutex);
    Ret = HI_MPI_SYNC_AudJudge(pAvplay->hSync, &pAvplay->AudInfo, &pAvplay->AudOpt);
    (HI_VOID)AVPLAY_ThreadMutex_UnLock(pAvplay->pAvplayThreadMutex);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_SetPlayerFFMode(HI_HANDLE hAvplay, HI_BOOL bEnable, HI_U32 u32Speed)
{
	HI_INFO_AVPLAY("Not supported now!\n");
	return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_FlushStream(HI_HANDLE hAvplay, HI_UNF_AVPLAY_FLUSH_STREAM_OPT_S *pstFlushOpt)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_GET_INST_AND_LOCK();
    AVPLAY_Mutex_Lock(pAvplay->pAvplayThreadMutex);

    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_INFO_AVPLAY("current status is eos!\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_SUCCESS;
    }

    if (pAvplay->bSetEosFlag)
    {
        HI_INFO_AVPLAY("Eos Flag has been set!\n");
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();
        return HI_SUCCESS;
    }

    Ret = AVPLAY_SetEosFlag(pAvplay);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: AVPLAY_SetEosFlag, Ret = %#x\n", Ret);
        AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
        HI_AVPLAY_INST_UNLOCK();        
        return Ret;
    }

    AVPLAY_Mutex_UnLock(pAvplay->pAvplayThreadMutex);
    HI_AVPLAY_INST_UNLOCK();

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_Step(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_STEP_OPT_S *pstStepOpt)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    AVPLAY_GET_INST_AND_LOCK();
    if (!pAvplay->WindowNum)
    {
        HI_ERR_AVPLAY("AVPLAY has not attached window.\n");
        HI_AVPLAY_INST_UNLOCK();
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VO_SetWindowStepMode(pAvplay->hWindow[0], HI_TRUE);
    Ret |= HI_MPI_VO_SetWindowStepPlay(pAvplay->hWindow[0]);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VO_SetWindowStepMode failed.\n");
    } 

    HI_AVPLAY_INST_UNLOCK();

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_Invoke(HI_HANDLE hAvplay, HI_UNF_AVPLAY_INVOKE_TYPE_E enInvokeType, HI_VOID *pPara)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

	if (enInvokeType >= HI_UNF_AVPLAY_INVOKE_BUTT)
    {
        HI_ERR_AVPLAY("Invoke type is invalid!\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }
	
    AVPLAY_GET_INST_AND_LOCK();

    if (HI_UNF_AVPLAY_INVOKE_VCODEC == enInvokeType)
    {
        Ret = HI_MPI_VDEC_Invoke(pAvplay->hVdec, pPara);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_VDEC_Invoke failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_INVOKE_ACODEC == enInvokeType)
    {
        Ret = HI_MPI_ADEC_SetCodecCmd(pAvplay->hAdec, pPara);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("ADEC_SetCodecCmd failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO == enInvokeType)
    {
    #if 0
        Ret = HI_MPI_VO_GetPrivInfo(pAvplay->hWindow[0], &stVoPrivInfo);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_VO_GetPrivInfo failed.\n");
        }

        stPlayInfo.u32LastPts = stVoPrivInfo.u32Pts;
        stPlayInfo.u32LastPlayTime = stVoPrivInfo.u32PrivPlayTime;

        memcpy((HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S *)pPara, &stPlayInfo, sizeof(HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S));
	#endif
        SYNC_STATUS_S stSyncStatus;
        HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S *pstPriStatusInfo;
        
        pstPriStatusInfo = (HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S *)(pPara);
        
        Ret = HI_MPI_SYNC_GetStatusEx(pAvplay->hSync, &stSyncStatus);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_SYNC_GetStatusEx failed.\n");
        }
        else
        {
            pstPriStatusInfo->u32LastPts = stSyncStatus.u32LastVidPts;
            pstPriStatusInfo->u32LastPlayTime = stSyncStatus.u32LastDispTime;
        }
        
        pstPriStatusInfo->u32DispOptimizeFlag = pAvplay->u32DispOptimizeFlag;
    }
    else if (HI_UNF_AVPLAY_INVOKE_SET_DISP_OPTIMIZE_FLAG == enInvokeType)
    {
        pAvplay->u32DispOptimizeFlag = *(HI_U32 *)pPara;
    }

    HI_AVPLAY_INST_UNLOCK();

    return Ret;
}


HI_S32 HI_MPI_AVPLAY_AcqUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S *pstUserData, HI_UNF_VIDEO_USERDATA_TYPE_E *penType)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    if (!pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("Vid chan is not start.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }

    Ret = HI_MPI_VDEC_AcqUserData(pAvplay->hVdec, pstUserData, penType);
    if (HI_SUCCESS != Ret)
    {
        return HI_ERR_AVPLAY_INVALID_OPT;    
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_RlsUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S* pstUserData)
{
    HI_S32                  Ret;
    AVPLAY_S                *pAvplay = HI_NULL;
    AVPLAY_USR_ADDR_S       AvplayUsrAddr;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }
    
    CHECK_AVPLAY_INIT();
    Ret = AVPLAY_CheckHandle(hAvplay, &AvplayUsrAddr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    pAvplay = (AVPLAY_S *)AvplayUsrAddr.AvplayUsrAddr;

    if (!pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("Vid chan is not start.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;        
    }

    Ret = HI_MPI_VDEC_RlsUserData(pAvplay->hVdec, pstUserData);
    if (HI_SUCCESS != Ret)
    {
        return HI_ERR_AVPLAY_INVALID_OPT;    
    }

    return HI_SUCCESS;
}



#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
