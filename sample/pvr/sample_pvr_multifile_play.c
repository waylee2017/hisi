/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     :sample_pvr_multifile_play.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/01/26
  Description   :
  History       :
  1.Date        : 2010/01/26
    Author      : q46153
    Modification: Created file

******************************************************************************/
#include <stdlib.h>

#include "hi_adp.h"
#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_boardcfg.h"
#include "hi_adp_mpi.h"
#include "hi_adp_tuner.h"
#include "hi_adp_pvr.h"
#include "hi_go.h"

#define PVR_DEBUG
#define MAX_REC_FILE_NUM    5   /* 分段文件总数*/
#define PVR_MAX_FILENO_LEN  3   /* 文件名最后若干位为连续递增序号。例如某一文件名为"rec_YY_001.ts",后三位(001)*/

typedef struct hiPVR_FILE_ATTR_S
{
    HI_UNF_PVR_FILE_ATTR_S      stFAttr;
    HI_UCHAR                    pucFileNameArr[PVR_MAX_FILENAME_LEN];
} PVR_FILE_ATTR_S;

typedef struct hiPVR_PLAY_FILE_INFO_S
{
    HI_U32                      u32CurChnID;                     /**当前PVR通道ID */
    PVR_FILE_ATTR_S             stFAttrArr[MAX_REC_FILE_NUM];    /**码流文件，可能存在多个。文件名最后几位依次递增 */
    HI_U32                      u32FileNum;                      /**码流文件个数*/
    HI_U32                      u32CurPlayFileNo;                /**当前播放码流文件序号*/
    HI_U32                      u32TotalFrameNum;                /**码流总帧数*/
    HI_U32                      u32StartTimeInMs;                /**码流起始时间*/
    HI_U32                      u32EndTimeInMs;                  /**码流结束时间*/
    HI_U64                      u64TotalValidSizeInByte;         /**码流总字节数*/
} PVR_PLAY_FILE_INFO_S;

HI_HANDLE             g_hAvplay;
HI_BOOL               g_bIsPlayStop = HI_FALSE;
HI_BOOL               g_bPlayStutas = HI_TRUE;
/**
* 切换播放码流文件。
* 注意恢复切换文件后的播放状态。
*/
HI_S32 PVR_PlayShiftFile(HI_UCHAR *pucFileName, HI_HANDLE hAvplay, HI_U32 *u32ChnID)
{
    HI_S32 Ret;
    HI_UNF_PVR_PLAY_STATUS_S  stStatus;

    SAMPLE_CheckNullPTR(pucFileName);
    SAMPLE_CheckNullPTR(u32ChnID);

    /*获取当前播放状态*/
    Ret =HI_UNF_PVR_PlayGetStatus(*u32ChnID, &stStatus);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayGetStatus failed.\n");
        return Ret;
    }

    /*停止当前播放通道*/
    PVR_StopPlayBack(*u32ChnID);

    Ret = PVR_StartPlayBack((const HI_CHAR *)pucFileName, u32ChnID, hAvplay);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call PVR_StartPlayBack failed.\n");
        return Ret;
    }

    /*设置之前播放速率*/
    Ret =HI_UNF_PVR_PlayTPlay(*u32ChnID, (const HI_UNF_PVR_PLAY_MODE_S *)&stStatus.enSpeed);
    if (HI_SUCCESS != Ret)
    {
        HI_UNF_PVR_PlayDestroyChn(*u32ChnID);
        return Ret;
    }

    return HI_SUCCESS;
}

/**
*根据位置(时间，帧数等) ，seek到对应的某一个码流文件及相对位置。
* 注意全局位置(时间，帧数等)到相对位置的转换。
*/
HI_S32 PVR_PlaySeek(HI_UNF_PVR_PLAY_POSITION_S *pstPosition, PVR_PLAY_FILE_INFO_S *pstFileInfo)
{
    HI_S32  Ret;
    HI_U32  i = 0;
    HI_U32  u32PlayFileNo = 0;
    HI_S32  s32FStartTimeInMs = 0;
    HI_S32  s32FEndTimeInMs = 0;
    HI_S32  s32CurTimeInMs = 0;
    HI_S32  s32InerOffset = 0;
    HI_UNF_PVR_PLAY_STATUS_S   stStatus;
    HI_UNF_PVR_PLAY_POSITION_S stPos;

    SAMPLE_CheckNullPTR(pstPosition);
    SAMPLE_CheckNullPTR(pstFileInfo);

    Ret = HI_UNF_PVR_PlayGetStatus(pstFileInfo->u32CurChnID, &stStatus);
    if (HI_SUCCESS != Ret)
    {
        PVR_SAMPLE_Printf("call PVR_StartPlayBack failed.\n");
        HI_UNF_PVR_PlayDestroyChn(pstFileInfo->u32CurChnID);
        return Ret;
    }

    s32CurTimeInMs = stStatus.u32CurPlayTimeInMs;
    /*获取相对于整体码流的总播放时间*/
    s32CurTimeInMs += (HI_S32)pstFileInfo->stFAttrArr[pstFileInfo->u32CurPlayFileNo-1].stFAttr.u32StartTimeInMs;

    switch(pstPosition->enPositionType)
    {
        /*按时间seek*/
        case HI_UNF_PVR_PLAY_POS_TYPE_TIME:
            {
                for(i=0; i< pstFileInfo->u32FileNum;i++)
                {
                    s32FStartTimeInMs = (HI_S32)pstFileInfo->stFAttrArr[i].stFAttr.u32StartTimeInMs;
                    s32FEndTimeInMs   = (HI_S32)pstFileInfo->stFAttrArr[i].stFAttr.u32EndTimeInMs;
                     /*按文件头(第一个码流文件)的相对偏移位置seek*/
                    if(SEEK_SET == pstPosition->s32Whence)
                    {
                        if(pstPosition->s64Offset <= 0)
                        {
                            s32InerOffset = 0;
                            u32PlayFileNo = 0;
                            break;
                        }
                        else if(pstFileInfo->u32EndTimeInMs <= pstPosition->s64Offset)
                        {
                            s32InerOffset = 0;
                            u32PlayFileNo = pstFileInfo->u32FileNum -1;
                            break;
                        }
                        else if((pstPosition->s64Offset + pstFileInfo->u32StartTimeInMs)< s32FEndTimeInMs)
                        {
                            s32InerOffset = pstPosition->s64Offset - s32FStartTimeInMs;
                            u32PlayFileNo = i;
                            break;
                        }
                    }
                     /*按文件尾(最后一个码流文件)的相对偏移位置seek*/
                    else if(SEEK_END == pstPosition->s32Whence)
                    {
                        if(pstPosition->s64Offset >= 0)
                        {
                            s32InerOffset = pstFileInfo->stFAttrArr[pstFileInfo->u32FileNum -1].stFAttr.u32EndTimeInMs
                                            - pstFileInfo->stFAttrArr[pstFileInfo->u32FileNum -1].stFAttr.u32StartTimeInMs;
                            u32PlayFileNo = pstFileInfo->u32FileNum -1;
                            break;
                        }
                        else if((pstFileInfo->u32EndTimeInMs + pstPosition->s64Offset) <= 0)
                        {
                            s32InerOffset = 0;
                            u32PlayFileNo = 0;
                            break;
                        }
                        else if((pstFileInfo->u32EndTimeInMs +pstPosition->s64Offset )< s32FEndTimeInMs)
                        {
                            s32InerOffset = pstFileInfo->u32EndTimeInMs + pstPosition->s64Offset - s32FStartTimeInMs;
                            u32PlayFileNo = i;
                            break;
                        }
                    }
                     /*按当前播放位置的相对偏移seek*/
                    else if(SEEK_CUR == pstPosition->s32Whence)
                    {    /*当前播放位置+偏移超出总时长*/
                        if(((HI_S32)pstFileInfo->u32EndTimeInMs <= (s32CurTimeInMs + (HI_S32)pstPosition->s64Offset))
                            &&((HI_S32)pstPosition->s64Offset >0))      /*当前播放位置向后偏移*/
                        {
                            s32InerOffset = s32FEndTimeInMs - s32FStartTimeInMs;
                            u32PlayFileNo = pstFileInfo->u32FileNum -1;
                            break;
                        }
                         /*当前播放位置+偏移超出第一个文件起始时间*/
                        else if(((HI_S32)pstFileInfo->u32StartTimeInMs >= (s32CurTimeInMs + (HI_S32)pstPosition->s64Offset))
                                &&((HI_S32)pstPosition->s64Offset < 0))    /*当前播放位置向前偏移*/
                        {
                            s32InerOffset = 0;
                            u32PlayFileNo = 0;
                            break;
                        }
                         /*当前播放位置+偏移在这个被检索的文件中*/
                        else if((s32FStartTimeInMs <(s32CurTimeInMs + (HI_S32)pstPosition->s64Offset))
                                &&((s32CurTimeInMs + (HI_S32)pstPosition->s64Offset)< s32FEndTimeInMs))
                        {
                            s32InerOffset = (HI_S32)pstPosition->s64Offset+s32CurTimeInMs
                                             -(HI_S32)pstFileInfo->stFAttrArr[i].stFAttr.u32StartTimeInMs;
                            u32PlayFileNo = i;
                            break;
                        }
                    }
                }
             }
       default :
             break;
   }

#ifdef PVR_DEBUG
    PVR_SAMPLE_Printf("\n=================================\n"
    " Total play time:            %d\n"
    " Current File number:        %d\n"
    " Current file offset:        %d\n"
    " Current file length (time): %d\n"
    " Current file start time:    %d\n"
    " Current file end time:      %d\n"
    " Current file name:          %s\n"
    " Tolal file length (time):   %d\n"
    " Start time:                 %d\n"
    " End time:                   %d\n"
    "=================================\n"
    ,s32CurTimeInMs
    ,u32PlayFileNo+1
    ,s32InerOffset
    ,pstFileInfo->stFAttrArr[u32PlayFileNo].stFAttr.u32EndTimeInMs
      - pstFileInfo->stFAttrArr[u32PlayFileNo].stFAttr.u32StartTimeInMs
    ,pstFileInfo->stFAttrArr[u32PlayFileNo].stFAttr.u32StartTimeInMs
    ,pstFileInfo->stFAttrArr[u32PlayFileNo].stFAttr.u32EndTimeInMs
    ,pstFileInfo->stFAttrArr[u32PlayFileNo].pucFileNameArr
    ,pstFileInfo->u32EndTimeInMs - pstFileInfo->u32StartTimeInMs
    ,pstFileInfo->u32StartTimeInMs
    ,pstFileInfo->u32EndTimeInMs);
#endif
     /*根据检索的信息切到相应文件*/
    if(u32PlayFileNo + 1 != pstFileInfo->u32CurPlayFileNo)
    {
         PVR_PlayShiftFile(pstFileInfo->stFAttrArr[u32PlayFileNo].pucFileNameArr,
                           g_hAvplay, &pstFileInfo->u32CurChnID);
         pstFileInfo->u32CurPlayFileNo = u32PlayFileNo + 1;
    }

    stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
    stPos.s64Offset = s32InerOffset;
    stPos.s32Whence = SEEK_SET;
     /*seek 到文件相应位置*/
    Ret = HI_UNF_PVR_PlaySeek(pstFileInfo->u32CurChnID, &stPos);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_PVR_PlaySeek failed.\n");
    }

    return HI_SUCCESS;
}

/**
*获取当前播放状态。
* 注意当前播放文件的状态和全局状态的转换。
*/
HI_S32 PVR_PlayGetStatus(HI_U32 u32ChnID, HI_UNF_PVR_PLAY_STATUS_S *pstStatus, PVR_PLAY_FILE_INFO_S *pstFileInfo)
{
    HI_S32 Ret;
    HI_U32 i = 0;

    SAMPLE_CheckNullPTR(pstStatus);
    SAMPLE_CheckNullPTR(pstFileInfo);

    Ret = HI_UNF_PVR_PlayGetStatus(u32ChnID, pstStatus);
    if (HI_SUCCESS != Ret)
    {
        PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayGetStatus failed.\n");
        return Ret;
    }

    if(pstFileInfo->u32CurPlayFileNo > 1)
    {
        pstStatus->u32CurPlayTimeInMs += pstFileInfo->stFAttrArr[pstFileInfo->u32CurPlayFileNo - 1].stFAttr.u32StartTimeInMs;

        for(i = 0; i< (pstFileInfo->u32CurPlayFileNo -1); i++)
        {
            pstStatus->u32CurPlayFrame += pstFileInfo->stFAttrArr[i].stFAttr.u32FrameNum;
            pstStatus->u64CurPlayPos   += pstFileInfo->stFAttrArr[i].stFAttr.u64ValidSizeInByte;
        }
    }

    return HI_SUCCESS;
}

/**
*获取码流文件信息。
* 注意码流文件名需要按规则连续。
*/
HI_S32 PVR_PlayGetTSFileInfo(const HI_CHAR *pFileName, PVR_PLAY_FILE_INFO_S *pstFileInfo)
{
    HI_U32   i = 0;
    HI_U32   Ret;
    HI_UCHAR ucFileName[PVR_MAX_FILENAME_LEN];
    HI_UCHAR ucFileIndexNo[PVR_MAX_FILENAME_LEN];
    HI_U32   u32FileIndexNo;
    HI_UNF_PVR_FILE_ATTR_S stFAttr;

    SAMPLE_CheckNullPTR(pFileName);
    SAMPLE_CheckNullPTR(pstFileInfo);

    strcpy((char *)ucFileName, pFileName);
    /*根据输入的码流文件名，依照规则生成后一可能存在的码流文件名*/
    strncpy((char *)ucFileIndexNo, &pFileName[strlen(pFileName) - PVR_MAX_FILENO_LEN-3], PVR_MAX_FILENO_LEN);
    u32FileIndexNo = strtol((const char *)ucFileIndexNo, NULL, 0);
    pstFileInfo->u64TotalValidSizeInByte = 0;

    do{
        sprintf((char *)ucFileIndexNo, "%03d", u32FileIndexNo+i);
        memcpy(&ucFileName[strlen(pFileName) - PVR_MAX_FILENO_LEN-3], ucFileIndexNo, PVR_MAX_FILENO_LEN);
        /*根据文件名，获取文件的属性*/
        Ret = HI_UNF_PVR_GetFileAttrByFileName((const HI_CHAR *)ucFileName, &stFAttr);
        if (HI_SUCCESS !=  Ret)
        {
            PVR_SAMPLE_Printf("get file %s attr failed.\n\n", ucFileName);
            break; 
        }
        /*统计码流整体属性*/
        pstFileInfo->u32FileNum++;
        memcpy(&pstFileInfo->stFAttrArr[i].stFAttr, &stFAttr, sizeof(HI_UNF_PVR_FILE_ATTR_S));

        if(0 == i)
        {
            pstFileInfo->u32StartTimeInMs = stFAttr.u32StartTimeInMs;
        }

        if(0 < i)
        {
            pstFileInfo->stFAttrArr[i].stFAttr.u32StartTimeInMs = pstFileInfo->u32EndTimeInMs;
            pstFileInfo->stFAttrArr[i].stFAttr.u32EndTimeInMs   = pstFileInfo->u32EndTimeInMs
                                                                  + stFAttr.u32EndTimeInMs - stFAttr.u32StartTimeInMs;
        }

        pstFileInfo->u32EndTimeInMs += stFAttr.u32EndTimeInMs - stFAttr.u32StartTimeInMs;
        pstFileInfo->u32TotalFrameNum += stFAttr.u32FrameNum;
        pstFileInfo->u64TotalValidSizeInByte += stFAttr.u64ValidSizeInByte;
        strcpy((char *)pstFileInfo->stFAttrArr[i].pucFileNameArr, (const char *)ucFileName);
        i++;
    }while(0 < (MAX_REC_FILE_NUM - i));

    if(pstFileInfo->u32FileNum > 0)
    {
        /*默认当前开始播放第一个文件*/
        pstFileInfo->u32CurPlayFileNo = 1;
        Ret = HI_SUCCESS;
    }

#ifdef PVR_DEBUG
    PVR_SAMPLE_Printf("\n============================\n"
    " Total file amount:  %d\n"
    " File start time:    %d\n"
    " File end time:      %d\n"
    " File length  (ms) : %d\n"
    " File frames       : %d\n"
    " File size  (byte) : %llu\n"
    ,pstFileInfo->u32FileNum
    ,pstFileInfo->u32StartTimeInMs
    ,pstFileInfo->u32EndTimeInMs
    ,pstFileInfo->u32EndTimeInMs - pstFileInfo->u32StartTimeInMs
    ,pstFileInfo->u32TotalFrameNum
    ,pstFileInfo->u64TotalValidSizeInByte);

    PVR_SAMPLE_Printf("============================\n");
    for(i=0; i<pstFileInfo->u32FileNum; i++)
    {
        PVR_SAMPLE_Printf(" File no:            %d\n"
        " File name:          %s\n"
        " File start time:    %d\n"
        " File end time:      %d\n"
        " File length (time): %d\n"
        " File frames       : %d\n"
        " File size  (byte) : %llu\n"
        "-----------------------------\n"
        ,i+1
        ,pstFileInfo->stFAttrArr[i].pucFileNameArr
        ,pstFileInfo->stFAttrArr[i].stFAttr.u32StartTimeInMs
        ,pstFileInfo->stFAttrArr[i].stFAttr.u32EndTimeInMs
        ,pstFileInfo->stFAttrArr[i].stFAttr.u32EndTimeInMs
          - pstFileInfo->stFAttrArr[i].stFAttr.u32StartTimeInMs
    ,pstFileInfo->stFAttrArr[i].stFAttr.u32FrameNum
    ,pstFileInfo->stFAttrArr[i].stFAttr.u64ValidSizeInByte);
    }
#endif
    return Ret ;
}

/**
*回调事件处理
*/

HI_VOID PVR_EvtCallBack(HI_U32 u32ChnID, HI_UNF_PVR_EVENT_E EventType, HI_S32 s32EventValue, HI_VOID *args)
{
    HI_S32 Ret;
    PVR_PLAY_FILE_INFO_S  *stFileInfo;

    if (EventType > HI_UNF_PVR_EVENT_REC_RESV)
    {
        PVR_SAMPLE_Printf("====callback error!!!\n");
        return;
    }

    if(NULL == args)
    {
        PVR_SAMPLE_Printf("args is null!");
        return;
    }

    stFileInfo =(PVR_PLAY_FILE_INFO_S *)args;
#ifdef PVR_DEBUG 
    PVR_SAMPLE_Printf("==============call back PVR_EvtCallBack================\n");
    PVR_SAMPLE_Printf("====channel     %d\n", u32ChnID);
    PVR_SAMPLE_Printf("====event:%s    %d\n", (char *)PVR_GetEventTypeStringByID(EventType), EventType);
    PVR_SAMPLE_Printf("====event value %d\n", s32EventValue);
#endif
    /*播放到码流文件尾事件*/ 
    if (EventType == HI_UNF_PVR_EVENT_PLAY_EOF)
    {   
        PVR_SAMPLE_Printf("==========play to end of file %s ======\n"
                      ,stFileInfo->stFAttrArr[stFileInfo->u32CurPlayFileNo - 1].pucFileNameArr);

        if(stFileInfo->u32FileNum>stFileInfo->u32CurPlayFileNo)
        {
            /*存在下一个码流文件，切换并继续播放*/
            PVR_PlayShiftFile(stFileInfo->stFAttrArr[stFileInfo->u32CurPlayFileNo].pucFileNameArr,
                              g_hAvplay, &u32ChnID);

            stFileInfo->u32CurChnID = u32ChnID;
            stFileInfo->u32CurPlayFileNo++;
        }
        else
        {
            /*播放到最后一个码流文件尾，播放结束*/
            //PVR_SAMPLE_Printf("==========play to end of file %s ======\n");
        }
    }
    /*回退到码流文件头事件*/ 
    if (EventType == HI_UNF_PVR_EVENT_PLAY_SOF)
    {
        HI_UNF_PVR_PLAY_POSITION_S stPos;

        PVR_SAMPLE_Printf("==========play to start of file %s======\n"
               ,stFileInfo->stFAttrArr[stFileInfo->u32CurPlayFileNo - 1].pucFileNameArr);

        if(stFileInfo->u32CurPlayFileNo > 1)
        {
            /*存在上一个码流文件，切换并继续回退*/
            PVR_PlayShiftFile(stFileInfo->stFAttrArr[stFileInfo->u32CurPlayFileNo - 2].pucFileNameArr
                              ,g_hAvplay, &u32ChnID);

            stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
            stPos.s64Offset = 0;
            stPos.s32Whence = SEEK_END;
            PVR_SAMPLE_Printf("seek to end\n");
            /*切换到上一个码流文件后，seek到文件尾*/
            Ret = HI_UNF_PVR_PlaySeek(u32ChnID, &stPos);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlaySeek failed.\n");
            }

            stFileInfo->u32CurChnID = u32ChnID;
            stFileInfo->u32CurPlayFileNo--;
        }
        else
        {
            /*回退到第一个码流文件头，回退结束*/
            //PVR_SAMPLE_Printf("==========play to start of file======\n");
        }
    }

    if (EventType == HI_UNF_PVR_EVENT_PLAY_ERROR)
    {
        PVR_SAMPLE_Printf("==========play internal error, check if the disk is insert to the box======\n");
    }

    if (EventType == HI_UNF_PVR_EVENT_PLAY_REACH_REC)
    {
        PVR_SAMPLE_Printf("==========play reach to record ======\n");
    }

    return ;
}


HI_VOID * StatuThread(HI_VOID *args)
{
    HI_S32 Ret;
    HI_UNF_PVR_PLAY_STATUS_S stStatus;
    PVR_PLAY_FILE_INFO_S     *pstFileInfo;

    if(NULL == args)
    {
        PVR_SAMPLE_Printf("args is null!");
        return NULL;
    }

    pstFileInfo =(PVR_PLAY_FILE_INFO_S *)args;
    while (HI_FALSE == g_bIsPlayStop)
    {
        sleep(1);

        Ret =  PVR_PlayGetStatus(pstFileInfo->u32CurChnID, &stStatus, pstFileInfo);
        if (HI_SUCCESS != Ret)
        {
            PVR_SAMPLE_Printf("call PVR_PlayGetStatus fail,ret = %d!",pstFileInfo->u32CurChnID);
            continue;
        }

        if(HI_UNF_PVR_PLAY_STATE_PLAY == stStatus.enState)
        {
            PVR_SAMPLE_Printf("===============================\n"); 
            PVR_SAMPLE_Printf("Current Played Time     : %d\n",stStatus.u32CurPlayTimeInMs/1000);     
            PVR_SAMPLE_Printf("Current Played Frames   : %d\n",stStatus.u32CurPlayFrame);
            PVR_SAMPLE_Printf("Current Played Position : %llu\n",stStatus.u64CurPlayPos);
        }
    }

    return NULL;
}


HI_S32 PvrPlayDmxInit(HI_VOID)
{
    HI_S32   Ret;

    Ret = HI_UNF_DMX_Init();
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_DMX_Init failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 PvrPlayDmxDeInit(HI_VOID)
{
    HI_S32 Ret;

    SAMPLE_RUN(HI_UNF_DMX_DeInit(), Ret);
    return Ret;
}

HI_S32 main(int argc, char *argv[])
{
    HI_S32                  Ret;
    HI_HANDLE               hWin;
    HI_UNF_ENC_FMT_E        enDefaultFmt = HI_UNF_ENC_FMT_BUTT;
    HI_CHAR                 InputCmd[32];
    PVR_PLAY_FILE_INFO_S    stFileInfo;
    HI_U32                  u32PlayChn;
    pthread_t               StaThd; 

#ifndef CHIP_TYPE_hi3110ev500
    enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
#else
    enDefaultFmt = HI_UNF_ENC_FMT_PAL;
#endif

    if (argc < 2)
    {
        printf("Usage: %s recTsFile [vo_format]\n", argv[0]);
        printf("       vo_format:2160P_30|2160P_24|1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50\n");
        return 0;
    }
    else if(3 == argc)
    {
        enDefaultFmt = HIADP_Disp_StrToFmt(argv[2]);
    }

    PVR_SAMPLE_Printf("checking idx file of '%s'...\n", argv[1]);
    Ret = PVR_checkIdx(argv[1]);
    if (HI_SUCCESS == Ret)
    {
        PVR_SAMPLE_Printf("checking idx file done, start play...\n");
    }
    else
    {
        PVR_SAMPLE_Printf("checking idx file error, try play...\n");
    }

    HI_SYS_Init();
//    HIADP_MCE_Exit();
    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        PVR_SAMPLE_Printf("call HIADP_Snd_Init failed.\n");
        return 0;
    }

    Ret = HIADP_Disp_Init(enDefaultFmt);
    if (HI_SUCCESS != Ret)
    {
        PVR_SAMPLE_Printf("call HIADP_Disp_DeInit failed.\n");
        return 0;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);
    if (HI_SUCCESS != Ret)
    {
        PVR_SAMPLE_Printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        return 0;
    }

    Ret = PvrPlayDmxInit();
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call VoInit failed.\n");
        return Ret;
    }

    Ret = PVR_AvplayInit(hWin, &g_hAvplay);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call VoInit failed.\n");
        return Ret;
    }

    Ret = HI_UNF_PVR_PlayInit();
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_PVR_RecInit failed.\n");
        return Ret;
    }

    Ret = HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_EOF, PVR_EvtCallBack, &stFileInfo);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_SOF, PVR_EvtCallBack, &stFileInfo);

    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_PVR_RegisterEvent failed.\n");
        return Ret;
    }

    stFileInfo.u32FileNum =0;
    stFileInfo.u32CurPlayFileNo = -1;
    PVR_PlayGetTSFileInfo(argv[1], &stFileInfo);

    Ret = PVR_StartPlayBack(argv[1], &u32PlayChn, g_hAvplay);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call PVR_StartPlayBack failed.\n");
        return Ret;
    }

    stFileInfo.u32CurChnID = u32PlayChn;

    pthread_create(&StaThd, HI_NULL, StatuThread, (HI_VOID*)&stFileInfo);

    while (HI_FALSE == g_bIsPlayStop)
    {
        static HI_U32 u32FTimes = 0;
        static HI_U32 u32STimes = 0;
        static HI_U32 u32RTimes = 0;

        PVR_SAMPLE_Printf("Press q to exit, h for help...\n");

        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            PVR_SAMPLE_Printf("prepare to exit!\n");
            g_bIsPlayStop = HI_TRUE;
        }

        if ('h' == InputCmd[0])
        {
            printf("commond:\n");
            printf("    n: normal play\n");
            printf("    p: pause\n");
            printf("    f: fast forward(2x/4x/8x/16x/32x)\n");
            printf("    s: slow forward(2x/4x/8x/16x/32x)\n");
            printf("    r: fast rewind(2x/4x/8x/16x/32x)\n");
            printf("    t: step forward one frame\n");
            printf("    k: seek to start\n");
            printf("    e: seek to end\n");
            printf("    l: seek forward 5 second\n");
            printf("    j: seek rewwind 5 second\n");
            printf("    h: help\n");
            printf("    q: quit\n");
            continue;
        }

        if ('f' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_MODE_S stTrickMode;
            u32STimes = 0;
            u32RTimes = 0;

            u32FTimes = u32FTimes%5;
            stTrickMode.enSpeed = (0x1 << (u32FTimes+1)) * HI_UNF_PVR_PLAY_SPEED_NORMAL;
            PVR_SAMPLE_Printf("trick mod:%d\n", stTrickMode.enSpeed);
            Ret = HI_UNF_PVR_PlayTPlay(u32PlayChn, &stTrickMode);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayTPlay failed.\n");
                continue;
            }

            u32FTimes++;
            continue;
        }
        if ('s' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_MODE_S stTrickMode;
            u32FTimes = 0;
            u32RTimes = 0;

            u32STimes = u32STimes%5;
            stTrickMode.enSpeed = HI_UNF_PVR_PLAY_SPEED_NORMAL / (0x1 << (u32STimes+1));

            PVR_SAMPLE_Printf("trick mod:%d\n", stTrickMode.enSpeed);
            Ret = HI_UNF_PVR_PlayTPlay(u32PlayChn, &stTrickMode);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayTPlay failed.\n");
                continue;
            }

            u32STimes++;
            continue;
        }
        if ('r' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_MODE_S stTrickMode;
            u32FTimes = 0;
            u32STimes = 0;

            u32RTimes = u32RTimes%5;
            stTrickMode.enSpeed = -(0x1 << (u32RTimes+1)) * HI_UNF_PVR_PLAY_SPEED_NORMAL;
            PVR_SAMPLE_Printf("trick mod:%d\n", stTrickMode.enSpeed);
            Ret = HI_UNF_PVR_PlayTPlay(u32PlayChn, &stTrickMode);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayTPlay failed.\n");
                continue;
            }

            u32RTimes++;
            continue;
        }

        if ('n' == InputCmd[0])
        {
            u32FTimes = 0;
            u32STimes = 0;
            u32RTimes = 0;

            PVR_SAMPLE_Printf("PVR normal play now.\n");
            Ret = HI_UNF_PVR_PlayResumeChn(u32PlayChn);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayResumeChn failed.\n");
                continue;
            }

            continue;
        }

        if ('p' == InputCmd[0])
        {
            u32FTimes = 0;
            u32STimes = 0;
            u32RTimes = 0;

            PVR_SAMPLE_Printf("PVR pause now.\n");
            Ret = HI_UNF_PVR_PlayPauseChn(u32PlayChn);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayPauseChn failed.\n");
                continue;
            }

            continue;
        }

        if ('t' == InputCmd[0])
        {
            u32FTimes = 0;
            u32STimes = 0;
            u32RTimes = 0;

            PVR_SAMPLE_Printf("PVR play step now.\n");
            Ret = HI_UNF_PVR_PlayStep(u32PlayChn, 1);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayStep failed.\n");
                continue;
            }

            continue;
        }

        if ('k' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_POSITION_S stPos;
            HI_UNF_PVR_FILE_ATTR_S stFAttr;
            u32FTimes = 0;
            u32STimes = 0;
            u32RTimes = 0;

            Ret = HI_UNF_PVR_PlayGetFileAttr(u32PlayChn,&stFAttr);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayStep failed.\n");
                continue;
            }


            stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
            stPos.s64Offset = stFileInfo.u32StartTimeInMs;
            stPos.s32Whence = SEEK_SET;
            PVR_SAMPLE_Printf("seek to start\n");

            Ret = PVR_PlaySeek(&stPos, &stFileInfo);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call PVR_PlaySeek failed.\n");
                continue;
            }

            continue;
        }
        if ('e' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_POSITION_S stPos;
            u32FTimes = 0;
            u32STimes = 0;
            u32RTimes = 0;

            stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
            stPos.s64Offset = 0;
            stPos.s32Whence = SEEK_END;
            PVR_SAMPLE_Printf("seek end\n");

            Ret = PVR_PlaySeek(&stPos, &stFileInfo);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayStep failed.\n");
                continue;
            }

            continue;
        }

        if ('l' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_POSITION_S stPos;
            u32FTimes = 0;
            u32STimes = 0;
            u32RTimes = 0;

            stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
            stPos.s64Offset = 2000;
            stPos.s32Whence = SEEK_CUR;
            PVR_SAMPLE_Printf("seek forward 5 Second\n");

            Ret = PVR_PlaySeek(&stPos, &stFileInfo);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayStep failed.\n");
                continue;
            }

            continue;
        }
        if ('j' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_POSITION_S stPos;
            u32FTimes = 0;
            u32STimes = 0;
            u32RTimes = 0;

            stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
            stPos.s64Offset = -2000;
            stPos.s32Whence = SEEK_CUR;
            PVR_SAMPLE_Printf("seek reward 5 Second\n");

            Ret = PVR_PlaySeek(&stPos, &stFileInfo);
            if (Ret != HI_SUCCESS)
            {
                PVR_SAMPLE_Printf("call HI_UNF_PVR_PlayStep failed.\n");
                continue;
            }

            continue;
        }
    }

    pthread_join(StaThd, HI_NULL);
    PVR_StopPlayBack(u32PlayChn);
    
    PVR_AvplayDeInit(g_hAvplay, hWin);

    Ret = PvrPlayDmxDeInit();
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call DmxDeInit failed.\n");
        return Ret;
    }

    HI_UNF_VO_DestroyWindow(hWin);
    HIADP_VO_DeInit();
    HIADP_Disp_DeInit();
    HIADP_Snd_DeInit();
    HI_SYS_DeInit();

    return 0;
}


