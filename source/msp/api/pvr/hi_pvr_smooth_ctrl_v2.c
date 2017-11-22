/******************************************************************************

  Copyright (C), 2004-2014, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_pvr_smooth_ctrl_v2.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2013/05/20
  Description   : Smooth PLAY module
  History       :
  1.Date        : 2013/05/20
    Author      : l00165842
                  z00111416
                  l00188263  --->2014.10 Reconstruction
    Modification: Created file

******************************************************************************/
#include <malloc.h>
#include <time.h>
#include <sys/time.h>
#include <pthread.h>
#include <signal.h>
    
#include "hi_type.h"
#include "pvr_debug.h"   
#include "hi_mpi_pvr.h"
#include "hi_mpi_avplay.h"
#include "hi_pvr_play_ctrl.h"
#include "hi_pvr_index.h"
#include "hi_pvr_rec_ctrl.h"
#include "hi_pvr_intf.h"
#include "hi_pvr_priv.h"
#include "hi_mpi_demux.h"
#include "hi_drv_pvr.h"

#ifdef HI_PVR_SOFT_INDEX_SUPPORT


#define HI_PVR_TRICK_PROC_MIN_TIME_GAP  (500)
#define HI_PVR_TRICK_PROC_MAX_TIME_GAP  (4000)

HI_S32 PVR_ProcessFFCtrl(HI_PVR_TRICK_PROCESS_PARA_S *pstTrickAttr, HI_BOOL bSpeedChanged)
{
    HI_S32 s32Ret = 0;
    HI_U32 u32SysTime = 0;
    HI_U32 u32SpeedRate = 0;
    HI_U32 u32JumpToTimeInMs = 0;
    HI_U32 u32DeltaTimeShouldBe = 0;
    HI_U32 u32DeltaTimeActual = 0;
    PVR_PLAY_CHN_S *pstChnAttr = HI_NULL;
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo;
    PVR_INDEX_ENTRY_S stEndEntry;
    
    memset(&stAvplayPrivInfo, 0x00, sizeof(stAvplayPrivInfo));
    (HI_VOID)HI_SYS_GetTimeStampMs(&u32SysTime);
    pstChnAttr = (PVR_PLAY_CHN_S *)pstTrickAttr->pChnAttr;
    u32SpeedRate = abs(pstChnAttr->enSpeed/HI_UNF_PVR_PLAY_SPEED_NORMAL);

    if (HI_TRUE != pstChnAttr->bRecordedVideoExist)
    {
        HI_ERR_PVR("No vid channel is played\n");
        return HI_FAILURE;
    }
    s32Ret = HI_UNF_AVPLAY_Invoke(pstChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, (HI_VOID *)&stAvplayPrivInfo);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_PVR("Get Avplay private info fail.\n");
        return s32Ret;
    } 

    if (-1 == stAvplayPrivInfo.u32LastPlayTime)
    {
        stAvplayPrivInfo.u32LastPlayTime = pstChnAttr->u32CurPlayTimeMs;
    }

    if (HI_FALSE != bSpeedChanged)
    {
        pstTrickAttr->stFfAttr.u32FFLastCheckTime = u32SysTime;
        pstTrickAttr->stFfAttr.u32FFDurationTime = 0;
        pstTrickAttr->stFfAttr.u32FFBeginDispTime = stAvplayPrivInfo.u32LastPlayTime;
        return HI_SUCCESS;
    }
    
    if (1000 <= abs(u32SysTime -pstTrickAttr->stFfAttr.u32FFLastCheckTime))
    {
        /*低于8倍速全送*/
        if (8 <= u32SpeedRate)
        {
            pstTrickAttr->stFfAttr.u32FFDurationTime += u32SysTime - pstTrickAttr->stFfAttr.u32FFLastCheckTime;
            pstTrickAttr->stFfAttr.u32FFLastCheckTime = u32SysTime;
            u32DeltaTimeShouldBe = u32SpeedRate * pstTrickAttr->stFfAttr.u32FFDurationTime;
            u32DeltaTimeActual = stAvplayPrivInfo.u32LastPlayTime - pstTrickAttr->stFfAttr.u32FFBeginDispTime;
                
            /*CNComment: 播放快了u32DeltaTimeShouldBe < u32DeltaTimeActual, 明显调整异常, 使用绝对值比较*/
            if (abs(u32DeltaTimeShouldBe - u32DeltaTimeActual) >= u32SpeedRate * HI_PVR_TRICK_PROC_MIN_TIME_GAP*8)
            {
                memset(&stEndEntry, 0x00, sizeof(stEndEntry));
                u32JumpToTimeInMs = pstTrickAttr->stFfAttr.u32FFBeginDispTime + u32DeltaTimeShouldBe;
                
                if (u32JumpToTimeInMs <= pstChnAttr->IndexHandle->stCurPlayFrame.u32DisplayTimeMs)
                {
                    return HI_SUCCESS;
                }
                
                if (HI_SUCCESS == 
                    PVR_Index_GetFrameByNum(pstChnAttr->IndexHandle, &stEndEntry, pstChnAttr->IndexHandle->stCycMgr.u32EndFrame))
                {
                    if (u32JumpToTimeInMs >= stEndEntry.u32DisplayTimeMs)
                    {
                        HI_WARN_PVR("u32JumpToTimeInMs = %ums; stEndEntry.u32DisplayTimeMs = %ums\n", 
                            u32JumpToTimeInMs, stEndEntry.u32DisplayTimeMs);
                        u32JumpToTimeInMs = (stEndEntry.u32DisplayTimeMs > 5000) ? (stEndEntry.u32DisplayTimeMs - 5000) : stEndEntry.u32DisplayTimeMs;
                    }
                }
                HI_WARN_PVR("u32JumpToTimeInMs = %ums; stAvplayPrivInfo.u32LastPlayTime = %ums\n", 
                    u32JumpToTimeInMs, stAvplayPrivInfo.u32LastPlayTime);
                s32Ret = PVR_Index_SeekToTime(pstChnAttr->IndexHandle, u32JumpToTimeInMs);
                if (HI_SUCCESS != s32Ret)
                {
                    HI_ERR_PVR("PVR_Index_SeekToTime fail.ret = 0x%x\n",s32Ret);
                    return s32Ret;
                }
            }
        }
    }

    return s32Ret;
}
HI_S32 PVR_FBExactData(HI_PVR_TRICK_PROCESS_PARA_S *pstTrickAttr, HI_BOOL bSpeedChanged)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32DispTime = 0;
    HI_U32 u32SpeedRate = 0;
    PVR_PLAY_CHN_S *pstChnAttr = HI_NULL;
    PVR_INDEX_ENTRY_S stEndEntry;
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S stAvplayPrivInfo;
    HI_U32 u32ShoullBeTime = 0;
    HI_U32 u32ActualTime = 0;
    
    memset(&stEndEntry, 0x00, sizeof(stEndEntry));
    memset(&stAvplayPrivInfo, 0, sizeof(stAvplayPrivInfo));
    pstChnAttr = (PVR_PLAY_CHN_S *)pstTrickAttr->pChnAttr;
    u32SpeedRate = abs(pstChnAttr->enSpeed/HI_UNF_PVR_PLAY_SPEED_NORMAL);

    if (HI_TRUE == pstChnAttr->bRecordedVideoExist)
    {
        s32Ret = HI_UNF_AVPLAY_Invoke(pstChnAttr->hAvplay, HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO, (HI_VOID *)&stAvplayPrivInfo);
        if ((HI_SUCCESS != s32Ret) || (-1 == stAvplayPrivInfo.u32LastPlayTime))
        {
            HI_WARN_PVR("Get Avplay private info fail.(%u, %u)\n", pstChnAttr->u32CurPlayTimeMs, stAvplayPrivInfo.u32LastPlayTime);
            u32DispTime = pstChnAttr->u32CurPlayTimeMs;
            stAvplayPrivInfo.u32LastPlayTime = u32DispTime; 
        }
        else
        {
            u32DispTime = stAvplayPrivInfo.u32LastPlayTime;
        }
    }
    else
    {
            u32DispTime = pstChnAttr->u32CurPlayTimeMs;
            stAvplayPrivInfo.u32LastPlayTime = u32DispTime;            
    }

    if (HI_FALSE != bSpeedChanged)
    {
        pstTrickAttr->u32VdecCount = 0;
        s32Ret = PVR_Index_GetFrameByNum(pstChnAttr->IndexHandle, &stEndEntry, pstChnAttr->IndexHandle->stCycMgr.u32EndFrame);
        if (HI_SUCCESS == s32Ret)
        {
            if (abs(stEndEntry.u32DisplayTimeMs - u32DispTime) < HI_PVR_TRICK_PROC_MAX_TIME_GAP)
            {
                u32DispTime -= HI_PVR_TRICK_PROC_MAX_TIME_GAP;
            }
        }
        else
        {
            HI_ERR_PVR("Can't get EndFrame:%d\n", pstChnAttr->IndexHandle->stCycMgr.u32EndFrame);
        }
        memset(&pstTrickAttr->stFbAttr, 0x00, sizeof(pstTrickAttr->stFbAttr));
        pstChnAttr->u32CurPlayTimeMs = stAvplayPrivInfo.u32LastPlayTime; 
        pstTrickAttr->stFbAttr.u32FBBeginDispTime = stAvplayPrivInfo.u32LastPlayTime;
        (HI_VOID)HI_SYS_GetTimeStampMs(&pstTrickAttr->stFbAttr.u32FBBeginSysTime);
        PVR_Index_QueryFrameByTime(pstChnAttr->IndexHandle, u32DispTime, &stEndEntry, &(pstTrickAttr->stFbAttr.u32FBEndFrmNo));
        pstTrickAttr->stFbAttr.u32FBStartDispTime = u32DispTime - u32SpeedRate * HI_PVR_TRICK_PROC_MIN_TIME_GAP;          
    }
    else
    {
        (HI_VOID)HI_SYS_GetTimeStampMs(&u32ShoullBeTime);
        if (u32ShoullBeTime < pstTrickAttr->stFbAttr.u32FBBeginSysTime)
        {
            u32ShoullBeTime = PVR_INDEX_SYS_WRAP_MS - pstTrickAttr->stFbAttr.u32FBBeginSysTime + u32ShoullBeTime;
        }
        else
        {
            u32ShoullBeTime = u32ShoullBeTime - pstTrickAttr->stFbAttr.u32FBBeginSysTime;
        }
        u32ActualTime = (pstTrickAttr->stFbAttr.u32FBBeginDispTime - stAvplayPrivInfo.u32LastPlayTime)/u32SpeedRate;
        /*CNComment:快退播放过慢*/
        if (u32ShoullBeTime > u32ActualTime + HI_PVR_TRICK_PROC_MIN_TIME_GAP*5)
        {
            pstTrickAttr->stFbAttr.u32FBStartDispTime = 
                pstTrickAttr->stFbAttr.u32FBBeginDispTime - u32ShoullBeTime * u32SpeedRate;
        }
        /*CNComment: 快退播放过快或者正常*/
        if ((u32ShoullBeTime + HI_PVR_TRICK_PROC_MIN_TIME_GAP*5 < u32ActualTime) 
            && (HI_PVR_TRICK_PROC_MIN_TIME_GAP > pstTrickAttr->stFbAttr.u32FBDurationTime))
        {
            return HI_SUCCESS;
        }

        if (4 >= u32SpeedRate)
        {
            pstTrickAttr->stFbAttr.u32FBStartDispTime -= u32SpeedRate * pstTrickAttr->stFbAttr.u32FBDurationTime;
        }
        else if (16 >= u32SpeedRate)
        {
            pstTrickAttr->stFbAttr.u32FBStartDispTime -= HI_PVR_TRICK_PROC_MIN_TIME_GAP*3/2;
        }
        else
        {
            pstTrickAttr->stFbAttr.u32FBStartDispTime -= HI_PVR_TRICK_PROC_MIN_TIME_GAP*3;
        }

        if (HI_TRUE == pstTrickAttr->stFbAttr.bFBIFrameDecoded)
        {
            pstTrickAttr->stFbAttr.u32FBEndFrmNo = pstTrickAttr->stFbAttr.u32FBStartFrmNo;
        }
    }

    if (0 > (HI_S32)(pstTrickAttr->stFbAttr.u32FBStartDispTime))
    {
        pstTrickAttr->stFbAttr.u32FBStartDispTime = 0;
    }
    if (0 != pstTrickAttr->stFbAttr.u32FBStartDispTime)
    {
        s32Ret = PVR_Index_SeekToTime(pstChnAttr->IndexHandle, pstTrickAttr->stFbAttr.u32FBStartDispTime);
    }
    else
    {
        s32Ret = PVR_Index_SeekToStart(pstChnAttr->IndexHandle);
    }
    
    pstTrickAttr->stFbAttr.u32FBStartFrmNo = pstChnAttr->IndexHandle->u32ReadFrame;  
    HI_WARN_PVR("\t[S, E, T] = (%u, %u, %u)\n", 
        pstTrickAttr->stFbAttr.u32FBStartFrmNo, pstTrickAttr->stFbAttr.u32FBEndFrmNo, u32SpeedRate * pstTrickAttr->stFbAttr.u32FBDurationTime);
    pstTrickAttr->u32VdecCount = 0;
    (HI_VOID)HI_UNF_AVPLAY_Reset(pstChnAttr->hAvplay, NULL);
    (HI_VOID)HI_SYS_GetTimeStampMs(&pstTrickAttr->stFbAttr.u32FBLauchTime);
    
    pstTrickAttr->stFbAttr.bFBIFrameDecoded = HI_FALSE;
    if (pstChnAttr->IndexHandle->stCycMgr.u32StartFrame == pstTrickAttr->stFbAttr.u32FBStartFrmNo)
    {
        return HI_ERR_PVR_FILE_TILL_START;
    }
    return HI_SUCCESS;
}

HI_S32 PVR_ProcessFBCtrl(HI_PVR_TRICK_PROCESS_PARA_S *pstTrickAttr, HI_BOOL bSpeedChanged)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32SysTime = 0;
    HI_U32 u32SpeedRate = 0;
    PVR_PLAY_CHN_S *pstChnAttr = HI_NULL;

    if (HI_FALSE != bSpeedChanged)
    {
        (HI_VOID)PVR_FBExactData(pstTrickAttr, bSpeedChanged);
        return HI_SUCCESS;
    }
    (HI_VOID)HI_SYS_GetTimeStampMs(&u32SysTime);
    pstChnAttr = (PVR_PLAY_CHN_S *)pstTrickAttr->pChnAttr;
    u32SpeedRate = abs(pstChnAttr->enSpeed/HI_UNF_PVR_PLAY_SPEED_NORMAL);
    pstTrickAttr->stFbAttr.u32FBDurationTime = u32SysTime - pstTrickAttr->stFbAttr.u32FBLauchTime;

    if (4 >= u32SpeedRate)
    {
        if ((pstTrickAttr->stFbAttr.u32FBDurationTime > HI_PVR_TRICK_PROC_MIN_TIME_GAP/u32SpeedRate)
            || (HI_TRUE == pstTrickAttr->stFbAttr.bFBIFrameDecoded))
        {
            s32Ret = PVR_FBExactData(pstTrickAttr, bSpeedChanged);
        }
    }
    else if (16 >= u32SpeedRate)
    {
        if ((pstTrickAttr->stFbAttr.u32FBDurationTime > HI_PVR_TRICK_PROC_MIN_TIME_GAP/4)
            || (HI_TRUE == pstTrickAttr->stFbAttr.bFBIFrameDecoded))
        {
            s32Ret = PVR_FBExactData(pstTrickAttr, bSpeedChanged);
        }
    }
    else if ((pstTrickAttr->stFbAttr.u32FBDurationTime > HI_PVR_TRICK_PROC_MIN_TIME_GAP)
        || (HI_TRUE == pstTrickAttr->stFbAttr.bFBIFrameDecoded))
    {
        s32Ret = PVR_FBExactData(pstTrickAttr, bSpeedChanged);
    }
   
    return s32Ret;
}


HI_S32 HI_PVR_ProcessTrickPlay(HI_PVR_TRICK_PROCESS_PARA_S *pstTrickAttr, HI_BOOL bSpeedChanged)
{
    if (HI_UNF_PVR_PLAY_STATE_FF == pstTrickAttr->enState)
    {
        return PVR_ProcessFFCtrl(pstTrickAttr, bSpeedChanged);
    }
    else if (HI_UNF_PVR_PLAY_STATE_FB == pstTrickAttr->enState)
    {
        return PVR_ProcessFBCtrl(pstTrickAttr, bSpeedChanged);
    }
    else
    {
        HI_ERR_PVR("invalid state for only supporting FF/FB!\n");
    }
    return HI_SUCCESS;
}

#endif



