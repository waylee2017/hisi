/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <string.h>
#include <pthread.h>
#include <fcntl.h>
#include <unistd.h>

#include "hi_unf_pes.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"

//#include "hi_adp_mpi.h"
#include "hi_error_mpi.h"

//#define __PES_VIDEO_DEBUG__
//#define __PES_AUDIO_DEBUG__

typedef struct
{
    HI_U8    *pu8BaseAddr;             //Base Address
    HI_U32    u32TotalSize;            //Total size
    HI_U32    u32ReadOffset;           //Read offset
    HI_U32    u32WriteOffset;          //Write offset
    HI_U32    u32RealEndOffset;        //Real End offset of valid data
    HI_BOOL   bLoopFlag;               //Data have loop around

    HI_U32 u32LastGetOffset;        //Last Get offset
    HI_U32 u32LastNeedSize;         //Last Need Size

    HI_U8    *pu8CosumerAddr;          //Base Address
} PES_CIRCLE_BUFFER_S;

typedef struct
{
    HI_U32 u32PESOverflowNum;     //Count PES buffer overflow

    HI_U32 u32VideoESPackNum;     //Count Video pack input number
    HI_U32 u32AudioESPackNum;     //Count Audio pack input number

    HI_U32 u32VideoESOverflowNum; //Count Video ES buffer overflow
    HI_U32 u32AudioESOverflowNum; //Count Auido ES buffer overflow

    HI_U32 u32VideoPTS;           //record video latest PTS
    HI_U32 u32AudioPTS;           //record audio latest PTS
} PES_STATISTIC_S;

typedef struct
{
    HI_U32 NodeNum;
    struct
    {
        HI_U32 StreamType;
        HI_U32 stream_id;
        HI_U32 substream_id;
    } node[PES_MAX_NODE];
} PES_DVD_INFO_S;

typedef struct
{
    HI_BOOL                  OpenFlag;           //Open flag of these PES Handle
    HI_UNF_PES_PARSE_TYPE_E  enPESParseType;     /**<*PES STREAM Parse Type */
    HI_BOOL                  bIsDVD;
    HI_UNF_AVPLAY_STATUS_E   PlayState;

    pthread_mutex_t          PESMutex;     //Lock Mutex
    HI_U32                   Mutex_Count;  //Mutex COunt

    pthread_t                pesThreadID;  //PES thread handle
    HI_U32                   threadRunFlag;//PES thread running flag

    HI_HANDLE                avhandle;     //Relative AV Play handle
    PES_CIRCLE_BUFFER_S      pesbuffer;    //Relative PES buffer

    HI_U32                   u32VdecType;  //PES Video type
    HI_U32                   u32AudioType; //PES Audio type

    HI_U32                   VStreamID;    //PES Video stream_id
    HI_U32                   AStreamID;    //PES Audio stream_id
    HI_U32                   ASubStreamID; //PES Audio sub_stream_id

    PES_DVD_INFO_S           DVDInfor;     //DVD format information
    HI_UNF_PES_INFO_S        pesinfo;      //PES information

    PES_STATISTIC_S          status;       //Statistic parameter

    FILE                    *pfvideoES;    //Video ES dump file
    FILE                    *pfaudioES;    //Audio ES dump file

}HI_PES_HANDLE;

#define ErrorAndReturn(x)  do{\
        HI_ERR_PES("Error: Return Code: %x, FUNC: %s, Line: %d.\n", x, __FUNCTION__, __LINE__);\
        return x;\
}while(0)

#define WaitAndContinue  {\
        usleep(10*1000);\
        continue;\
}

#define HI_PES_LOCK(PESHandle)                                      \
do{                                                         \
    PESHandle->Mutex_Count ++;                                    \
    (void)pthread_mutex_lock(&(PESHandle->PESMutex));        \
}while(0)

#define HI_PES_UNLOCK(PESHandle)                                     \
do{                                                          \
    PESHandle->Mutex_Count --;                                      \
    (void)pthread_mutex_unlock(&(PESHandle->PESMutex));      \
}while(0)

#define PES_CHECK_NULL_PTR(ptr)                             \
    do{                                                     \
        if (NULL == (ptr))                                  \
        {                                                   \
            HI_ERR_PES("poiner is NULL!!\n" );              \
            return HI_FAILURE;                              \
        }                                                   \
    }while(0)


/* get the handle of PES */
#define D_PES_GET_HANDLE(enhandle, PESHandle)     \
do{                                               \
    if(enhandle == 0)                             \
        return HI_FAILURE;                        \
    PESHandle = (HI_PES_HANDLE *)enhandle;        \
}while(0)

static HI_VOID * PES_Extract_thread(HI_VOID *arg);

HI_S32 HI_UNF_PES_Open(HI_UNF_PES_OPEN_S *pstOpenParam, HI_HANDLE *handle)
{
    HI_U8                      *PsBufferPtr;
    HI_PES_HANDLE              *peshandle;
#if defined __PES_VIDEO_DEBUG__ || defined __PES_AUDIO_DEBUG__
    HI_U8                       filename[50];
#endif

    if (HI_UNF_PES_PARSE_TYPE_ADJUST != pstOpenParam->enPESParseType)
    {
        pstOpenParam->enPESParseType = HI_UNF_PES_PARSE_TYPE_REGULAR;
    }

    if(HI_FALSE != pstOpenParam->bIsDVD)
    {
        pstOpenParam->bIsDVD = HI_TRUE;
    }

    peshandle = malloc(sizeof(HI_PES_HANDLE));
    if(peshandle == HI_NULL_PTR)
    {
        return HI_FAILURE;
    }

    // 1. Alloc and Init PS Buffer
    PsBufferPtr = malloc(pstOpenParam->u32PESBufferSize+4);
    if(PsBufferPtr == HI_NULL_PTR)
    {
        free(peshandle);
        return HI_FAILURE;
    }

    memset(peshandle, 0, sizeof(HI_PES_HANDLE));
    peshandle->OpenFlag                   = HI_TRUE;
    peshandle->pesbuffer.pu8BaseAddr      = (HI_U8 *)PsBufferPtr;
    peshandle->pesbuffer.u32TotalSize     = pstOpenParam->u32PESBufferSize;
    peshandle->pesbuffer.u32ReadOffset    = 0;
    peshandle->pesbuffer.u32WriteOffset   = 0;
    peshandle->pesbuffer.u32RealEndOffset = 0;
    peshandle->pesbuffer.u32LastGetOffset = 0;
    peshandle->pesbuffer.u32LastNeedSize  = 0;

    peshandle->avhandle = pstOpenParam->hAVPlay;

#ifdef __PES_VIDEO_DEBUG__
    //Dump Video ES
    memset(filename, 0, 50);
    sprintf((char *)filename, "video_%x.ES", (HI_U32)peshandle);
    peshandle->pfvideoES = fopen((char *)filename, "wb");
    if (!peshandle->pfvideoES)
    {
        HI_ERR_PES("can not create %s error!\n", filename);
        return HI_FAILURE;
    }
#endif
#ifdef __PES_AUDIO_DEBUG__
    //Dump Audio ES
    memset(filename, 0, 50);
    sprintf((char *)filename, "audio_%x.ES", (HI_U32)peshandle);
    peshandle->pfaudioES = fopen((char *)filename, "wb");
    if (!peshandle->pfaudioES)
    {
        HI_ERR_PES("can not create %s error!\n", filename);
        return HI_FAILURE;
    }
#endif

    peshandle->threadRunFlag = HI_TRUE;

    peshandle->u32VdecType    = pstOpenParam->u32VdecType;
    peshandle->u32AudioType   = pstOpenParam->u32AudioType;
    peshandle->enPESParseType = pstOpenParam->enPESParseType;
    peshandle->bIsDVD         = pstOpenParam->bIsDVD;

    if (HI_SUCCESS != pthread_mutex_init(&(peshandle->PESMutex), NULL))
	goto err0;

    // 7. Create PS thread
    //HI_INFO_PES("&peshandle:0x%x, peshandle:0x%x\n", (HI_U32)&peshandle, (HI_U32)peshandle);
    if(HI_SUCCESS != pthread_create(&(peshandle->pesThreadID), NULL, PES_Extract_thread, (HI_VOID *)(peshandle)))
    {

        goto err1;
    }

    peshandle->PlayState = HI_UNF_AVPLAY_STATUS_PLAY;

    memset(&(peshandle->pesinfo), 0, sizeof(HI_UNF_PES_INFO_S));
    //HI_INFO_PES("peshandle:0x%x, peshandle->avhandle:%x, bufbase:0x%x\n", (HI_U32)peshandle, (HI_U32)peshandle->avhandle, (HI_U32)peshandle->pesbuffer.pu8BaseAddr);
    *handle = (HI_U32)(peshandle);
    return HI_SUCCESS;
err1:
	pthread_mutex_destroy(&(peshandle->PESMutex));
err0:
	free(peshandle);
    free(PsBufferPtr);
    ErrorAndReturn(HI_FAILURE);
}

HI_S32 HI_UNF_PES_Close(HI_HANDLE handle)
{
    HI_PES_HANDLE              *PESHandle;

    HI_INFO_PES("Info: HI_UNF_PES_Close\n");

    D_PES_GET_HANDLE(handle, PESHandle);

    HI_PES_LOCK(PESHandle);
    PESHandle->PlayState = HI_UNF_AVPLAY_STATUS_STOP;

    PESHandle->threadRunFlag = HI_FALSE;
    HI_INFO_PES("PESHandle:0x%x, PESHandle->threadRunFlag:%d\n", (HI_U32)PESHandle, (HI_U32)PESHandle->threadRunFlag);

    HI_INFO_PES("Info: HI_UNF_PES_Stop Now\n");
    pthread_join(PESHandle->pesThreadID, 0);

#ifdef __PES_VIDEO_DEBUG__
    fclose(PESHandle->pfvideoES);
#endif
#ifdef __PES_AUDIO_DEBUG__
    fclose(PESHandle->pfaudioES);
#endif

    HI_PES_UNLOCK(PESHandle);

    pthread_mutex_destroy(&(PESHandle->PESMutex));

    // 3. Free PS Buffer
    free((HI_VOID *)(PESHandle->pesbuffer.pu8BaseAddr));
    free((HI_VOID *)(PESHandle));

    HI_INFO_PES("Info: HI_UNF_PES_Close OK.\n");
    return HI_SUCCESS;
}

HI_S32 HI_UNF_PES_GetInfo(HI_HANDLE handle, HI_UNF_PES_INFO_S *pstruPSInfo)
{
    HI_PES_HANDLE              *PESHandle;

    HI_INFO_PES("Info: HI_UNF_PES_Close\n");

    D_PES_GET_HANDLE(handle, PESHandle);

    HI_PES_LOCK(PESHandle);
    memcpy(pstruPSInfo, &(PESHandle->pesinfo), sizeof(HI_UNF_PES_INFO_S));

    HI_PES_UNLOCK(PESHandle);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_PES_SetVideoStreamID(HI_HANDLE handle, HI_U32 videostreamid)
{
    HI_PES_HANDLE              *PESHandle;

    HI_INFO_PES("Info: HI_UNF_PES_SetVideoStreamID videostreamid:%d\n", videostreamid);

    D_PES_GET_HANDLE(handle, PESHandle);

    HI_PES_LOCK(PESHandle);
    if(PESHandle->VStreamID != videostreamid)
    {
        PESHandle->VStreamID = videostreamid;
    }

    HI_PES_UNLOCK(PESHandle);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_PES_SetAudioStreamID(HI_HANDLE handle, HI_U32 audiostreamid)
{
    HI_PES_HANDLE              *PESHandle;

    HI_INFO_PES("Info: HI_UNF_PES_SetVideoStreamID audiostreamid:%d\n", audiostreamid);

    D_PES_GET_HANDLE(handle, PESHandle);

    HI_PES_LOCK(PESHandle);
    if(PESHandle->AStreamID != audiostreamid)
    {
        PESHandle->AStreamID = audiostreamid;
    }

    HI_PES_UNLOCK(PESHandle);

    return HI_SUCCESS;
}

HI_S32 HI_UNF_PES_GetBuffer(HI_HANDLE handle, HI_U32 u32ReqLen, HI_UNF_STREAM_BUF_S *pstData)
{
    HI_U32                   EmptySize1, EmptySize2;
    HI_U32                   CurrReadOffset;
    HI_PES_HANDLE           *PESHandle;
    PES_CIRCLE_BUFFER_S  *pstPESBuffer;
    PES_STATISTIC_S      *Statistic;

    //HI_INFO_PES("Info: HI_UNF_PES_GetPSBuffer\n");
    D_PES_GET_HANDLE(handle, PESHandle);
    //HI_INFO_PES("GetPES handle:0x%x, PESHandle:0x%x\n", handle, PESHandle);

    pstPESBuffer = &(PESHandle->pesbuffer);
    CurrReadOffset = pstPESBuffer->u32ReadOffset;

    Statistic    = &(PESHandle->status);

    // 1.buffer is not rewind
    if(pstPESBuffer->u32WriteOffset >= CurrReadOffset)
    {
        // b  (Es2) r    (Data)  w   (Es1) (RealEnd)  t
        // |--------xxxxxxxxxxxxxx-----------|--------|
        EmptySize1 = pstPESBuffer->u32TotalSize - pstPESBuffer->u32WriteOffset;
        EmptySize2 = CurrReadOffset;

        // 1.1. buffer is enough
        if(EmptySize1 >= u32ReqLen)
        {
            if ((EmptySize1 == u32ReqLen) && (EmptySize2 == 0))
            {
                Statistic->u32PESOverflowNum ++;//to avoid write the total buffer
                return HI_FAILURE;
            }
            pstData->pu8Data = pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32WriteOffset;
            pstPESBuffer->u32LastGetOffset = pstPESBuffer->u32WriteOffset;
            pstPESBuffer->u32LastNeedSize = u32ReqLen;

            //HI_INFO_PES("Info: Get PS Buffer, pstPESBuffer->u32WriteOffset: 0x%x, NeedSize: 0x%x.\n", pstPESBuffer->u32WriteOffset, u32ReqLen);
            return HI_SUCCESS;
        }
        // 1.2. buffer not enough,find the buffer from head
        else
        {
            if(EmptySize2 >= u32ReqLen)
            {
                pstData->pu8Data = pstPESBuffer->pu8BaseAddr;
                pstPESBuffer->u32LastGetOffset = 0;
                pstPESBuffer->u32LastNeedSize = u32ReqLen;
                pstPESBuffer->u32RealEndOffset = pstPESBuffer->u32WriteOffset;

                //HI_INFO_PES("Info: PS Buffer will loop, RealEndofBuffer: 0x%x.\n", pstPESBuffer->u32RealEndOffset);
                return HI_SUCCESS;
            }
            else
            {
                Statistic->u32PESOverflowNum ++;
                return HI_FAILURE;
            }
        }
    }
    // 2. buffer already rewind
    else
    {
        // b (Data) w    (Es1)    r   (Data)  (RealEnd)   t
        // |xxxxxxxxx-------------xxxxxxxxxxxxxxxx|-------|
        EmptySize1 = CurrReadOffset - pstPESBuffer->u32WriteOffset;

        if(EmptySize1 > u32ReqLen)
        {
            pstData->pu8Data = pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32WriteOffset;
            pstPESBuffer->u32LastGetOffset = pstPESBuffer->u32WriteOffset;
            pstPESBuffer->u32LastNeedSize = u32ReqLen;

            //HI_INFO_PES("Info: Get PS Buffer, pstPESBuffer->u32WriteOffset: 0x%x, NeedSize: 0x%x.\n", pstPESBuffer->u32WriteOffset, u32ReqLen);
            return HI_SUCCESS;
        }
        else
        {
            Statistic->u32PESOverflowNum ++;
            return HI_FAILURE;
        }
    }
}

HI_S32 HI_UNF_PES_PutBuffer(HI_HANDLE handle, HI_U32 u32ValidDatalen)
{
    HI_PES_HANDLE           *PESHandle;
    PES_CIRCLE_BUFFER_S  *pstPESBuffer;

    D_PES_GET_HANDLE(handle, PESHandle);

    pstPESBuffer = &(PESHandle->pesbuffer);

    if ((pstPESBuffer->u32LastNeedSize == 0) || (pstPESBuffer->u32LastNeedSize < u32ValidDatalen))
    {
        HI_INFO_PES("Warning: Duplicated invoke of HI_UNF_PES_PutPSBuffer...\n");
        return HI_FAILURE;
    }

    pstPESBuffer->u32WriteOffset = pstPESBuffer->u32LastGetOffset + u32ValidDatalen;
    if(pstPESBuffer->u32WriteOffset == pstPESBuffer->u32TotalSize)
    {
        pstPESBuffer->u32RealEndOffset = pstPESBuffer->u32WriteOffset;
        pstPESBuffer->u32WriteOffset = 0;
    }

    if(pstPESBuffer->u32WriteOffset == pstPESBuffer->u32ReadOffset)
    {
        //Impossible, No data!
    }
    //Reset u32LastNeedSize
    pstPESBuffer->u32LastNeedSize = 0;

    return HI_SUCCESS;
}


static HI_S32 PES_Fill_DVDInfor(HI_PES_HANDLE *pPESHandle, HI_U32 stream_id, HI_U32 substream_id)
{
    int index;

    if(pPESHandle->DVDInfor.NodeNum >= PES_MAX_NODE)
    {
        return HI_SUCCESS;
    }

    for(index = 0; index < pPESHandle->DVDInfor.NodeNum; index ++)
    {
        if( (pPESHandle->DVDInfor.node[index].stream_id == stream_id)
         && (pPESHandle->DVDInfor.node[index].substream_id == substream_id) )
        {
            //already store
            return HI_SUCCESS;
        }
    }

    if(index >= pPESHandle->DVDInfor.NodeNum)
    {
        //do not store before
        pPESHandle->DVDInfor.node[index].stream_id = stream_id;
        pPESHandle->DVDInfor.node[index].substream_id = substream_id;

        if( (stream_id >=0xE0) && (stream_id < 0xF0) )
        {
            pPESHandle->DVDInfor.node[index].StreamType = HI_UNF_PES_STREAM_TYPE_VIDEO_MPEG2;
        }
        else if( (stream_id >= 0xC0) && (stream_id < 0xE0) )
        {
            pPESHandle->DVDInfor.node[index].StreamType = HI_UNF_PES_STREAM_TYPE_AUDIO_MP3;
        }
        else if(stream_id >= 0xBD)
        {
            pPESHandle->DVDInfor.node[index].StreamType = substream_id;
        }
        else
        {
            pPESHandle->DVDInfor.node[index].StreamType = HI_UNF_PES_STREAM_TYPE_NULL;
        }
        pPESHandle->DVDInfor.NodeNum ++;
    }

    return HI_SUCCESS;
}

static HI_S32 PES_GetVideoESBuffer(HI_HANDLE handle, HI_UNF_STREAM_BUF_S  *pstData, HI_U32 u32NeedSize)
{
    HI_U32                    ret;
    HI_UNF_STREAM_BUF_S       StreamBuf;
    StreamBuf.pu8Data = NULL;
    StreamBuf.u32Size = 0;
    //HI_INFO_PES("get video data handle:0x%x\n", handle);
    //Get ES buffer from ES, if we can get it, input!
    ret = HI_UNF_AVPLAY_GetBuf(handle, HI_UNF_AVPLAY_BUF_ID_ES_VID, u32NeedSize, &StreamBuf, 0) ;
    if(ret != HI_SUCCESS)
    {
        return ret;
    }
    pstData->pu8Data = StreamBuf.pu8Data;
    pstData->u32Size = StreamBuf.u32Size;

    return HI_SUCCESS;
}


static HI_S32 PES_PutVideoESBuffer(HI_HANDLE handle, HI_U32 ActualSize, HI_U32 u32PTSms)
{
    HI_U32                    ret = HI_SUCCESS;
    //HI_INFO_PES("input video data handle:0x%x\n", handle);
    //Get ES buffer from ES, if we can get it, input!
    ret = HI_UNF_AVPLAY_PutBuf(handle, HI_UNF_AVPLAY_BUF_ID_ES_VID, ActualSize, u32PTSms);
    if(ret != HI_SUCCESS)
    {
        return ret;
    }

    return HI_SUCCESS;
}

static HI_S32 PES_GetAudioESBuffer(HI_HANDLE handle, HI_UNF_STREAM_BUF_S  *pstData, HI_U32 u32NeedSize)
{
    HI_U32                    ret;
    HI_UNF_STREAM_BUF_S       StreamBuf;
	StreamBuf.pu8Data = NULL;
	StreamBuf.u32Size = 0;
    //Get ES buffer from ES, if we can get it, input!
    ret = HI_UNF_AVPLAY_GetBuf(handle, HI_UNF_AVPLAY_BUF_ID_ES_AUD, u32NeedSize, &StreamBuf, 0) ;
    if(ret != HI_SUCCESS)
    {
        return ret;
    }
    pstData->pu8Data = StreamBuf.pu8Data;
    pstData->u32Size = StreamBuf.u32Size;

    return HI_SUCCESS;
}

static HI_S32 PES_PutAudioESBuffer(HI_HANDLE handle, HI_U32 ActualSize, HI_U32 u32PTSms)
{
    HI_U32                    ret;

    //Get ES buffer from ES, if we can get it, input!
    ret = HI_UNF_AVPLAY_PutBuf(handle, HI_UNF_AVPLAY_BUF_ID_ES_AUD, ActualSize, u32PTSms) ;
    if(ret != HI_SUCCESS)
    {
        return ret;
    }

    return HI_SUCCESS;
}

static HI_U8 PES_GetCurrPSCharAndMoveOn(PES_CIRCLE_BUFFER_S *pstPESBuffer)
{
    HI_U8 CurrChar;

    if( pstPESBuffer->bLoopFlag == HI_TRUE)
    {
        if( pstPESBuffer->pu8CosumerAddr >= (pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32RealEndOffset) )
        {
            pstPESBuffer->pu8CosumerAddr = pstPESBuffer->pu8BaseAddr;
            pstPESBuffer->bLoopFlag = HI_FALSE;
        }
        CurrChar = *(pstPESBuffer->pu8CosumerAddr)++;
    }
    else
    {
        CurrChar = *(pstPESBuffer->pu8CosumerAddr)++;
    }

    return CurrChar;
}

static HI_VOID PES_SeekPSBufferAndMoveOn(PES_CIRCLE_BUFFER_S *pstPESBuffer, HI_U32 SeekNum)
{
    if( pstPESBuffer->bLoopFlag == HI_TRUE)
    {
        if((pstPESBuffer->pu8CosumerAddr + SeekNum) < (pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32RealEndOffset))
        {
            pstPESBuffer->pu8CosumerAddr += SeekNum;
        }
        else
        {
            pstPESBuffer->pu8CosumerAddr = pstPESBuffer->pu8CosumerAddr + SeekNum - pstPESBuffer->u32RealEndOffset;
            pstPESBuffer->bLoopFlag = HI_FALSE;
        }
    }
    else
    {
        pstPESBuffer->pu8CosumerAddr += SeekNum;
    }

    return;
}

static HI_VOID PES_CopyPSBufferAndMoveOn(PES_CIRCLE_BUFFER_S *pstPESBuffer, HI_U8 *DstPtr, HI_U32 CopyNum)
{
    HI_U32 BeforeLoopNum;

    if( pstPESBuffer->bLoopFlag == HI_TRUE)
    {
        if((pstPESBuffer->pu8CosumerAddr + CopyNum) < (pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32RealEndOffset))
        {
            memcpy(DstPtr, pstPESBuffer->pu8CosumerAddr, CopyNum);
            pstPESBuffer->pu8CosumerAddr += CopyNum;
        }
        else if ((pstPESBuffer->pu8CosumerAddr + CopyNum)
                 == (pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32RealEndOffset))
        {
            memcpy(DstPtr, pstPESBuffer->pu8CosumerAddr, CopyNum);
            pstPESBuffer->pu8CosumerAddr = pstPESBuffer->pu8BaseAddr;
        }
        else
        {
            BeforeLoopNum = pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32RealEndOffset - pstPESBuffer->pu8CosumerAddr;
            if(BeforeLoopNum > 0)
            {
                memcpy(DstPtr, pstPESBuffer->pu8CosumerAddr, BeforeLoopNum);
            }
            if((CopyNum - BeforeLoopNum) > 0)
            {
                memcpy((DstPtr + BeforeLoopNum), pstPESBuffer->pu8BaseAddr, (CopyNum - BeforeLoopNum));
            }
            pstPESBuffer->pu8CosumerAddr += CopyNum - pstPESBuffer->u32RealEndOffset;
            pstPESBuffer->bLoopFlag = HI_FALSE;
        }
    }
    else
    {
        memcpy(DstPtr, pstPESBuffer->pu8CosumerAddr, CopyNum);
        pstPESBuffer->pu8CosumerAddr += CopyNum;
    }

    return;
}

static HI_VOID * PES_Extract_thread(HI_VOID *arg)
{
    HI_U32 tmp0, tmp1, tmp2, tmp3, index;
    HI_U32 SysHeadLen;
    HI_U32 StrmMapLen, StrmInfoLen, ElemtStrmMapLen, ElemtStrmMapInfoLen, StrmMapTmpLen;
    HI_S32 PesLen, SkipLen, ret, i;
    HI_U8 PesHead[256];
    HI_U32 CurrWriteOffset, FirstAbnormal=1;
    HI_U8 *PrevPsPtr;
    HI_U32 PTSFlag, PES_header_data_length;
    HI_U8 *pread = HI_NULL;
    HI_U32 tmpNum;
    HI_BOOL FindPesHeadFlag = HI_FALSE;

    HI_PES_HANDLE           *PESHandle;
    HI_U32                   tmphandle;
    PES_CIRCLE_BUFFER_S      *pstPESBuffer;
    HI_U32                   TotalLen = 0, DataNum = 0;
    HI_S32                   LastPts = 0, u32ESHeadLen = 0;
    HI_S32                   streamnum = 0;
    HI_UNF_STREAM_BUF_S      stESBuffer;
    HI_UNF_PES_INFO_S        *pPESinfo;
    PES_STATISTIC_S          *Statistic;
    HI_U32                   audiocodec_id = 0;

    tmphandle = (HI_U32)arg;
    PESHandle = ((HI_PES_HANDLE *)tmphandle);

    Statistic    = &(PESHandle->status);

    //HI_INFO_PES("PES_Extract_thread args:0x%x, PESHandle:0x%x\n", (HI_U32)arg, (HI_U32)PESHandle);
    //HI_INFO_PES("avhandle:0x%x, base:0x%x\n", (HI_U32)PESHandle->avhandle, (HI_U32)PESHandle->pesbuffer.pu8BaseAddr);

    pstPESBuffer = &(PESHandle->pesbuffer);

    while(PESHandle->threadRunFlag == HI_TRUE)
    {
        // 1. pause
        if(PESHandle->PlayState != HI_UNF_AVPLAY_STATUS_PLAY)
        {
            WaitAndContinue;
        }

        // 2. Count available data from PES buffer
        CurrWriteOffset = pstPESBuffer->u32WriteOffset;

        if(CurrWriteOffset == pstPESBuffer->u32ReadOffset)
        {
            WaitAndContinue;
        }
        else if(CurrWriteOffset > pstPESBuffer->u32ReadOffset)
        {
            DataNum = CurrWriteOffset - pstPESBuffer->u32ReadOffset;
            pstPESBuffer->bLoopFlag = HI_FALSE;
        }
        else
        {
            DataNum = pstPESBuffer->u32RealEndOffset - pstPESBuffer->u32ReadOffset + CurrWriteOffset;
            pstPESBuffer->bLoopFlag = HI_TRUE;
        }

        if(DataNum < 4)
        {
            WaitAndContinue;
        }

        // 3. get head
        pstPESBuffer->pu8CosumerAddr = pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32ReadOffset;
        //HI_INFO_PES("cosum:0x%x, base:0x%x, readoffset:0x%x\n", pstPESBuffer->pu8CosumerAddr, pstPESBuffer->pu8BaseAddr, pstPESBuffer->u32ReadOffset);
        tmp0 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
        tmp1 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
        tmp2 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
        tmp3 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
        DataNum -= 4;

        // 4. pack start code
        //pack_start_code - The pack-start-code is the bit string (Ox00000 1BA).
        //It identifies the beginning of a pack.
        if ((tmp0 == 0) && (tmp1 == 0) && (tmp2 == 1) && (tmp3 == 0xBA))
        {
            if(DataNum < 10)
            {
                WaitAndContinue;
            }
            //Go through system-clock-reference-base, system-clock-reference-extension, program-mux-rate
            PES_SeekPSBufferAndMoveOn(pstPESBuffer, 9);
            //Get pack_stuffing_length: 3BIT
            tmp0 = (PES_GetCurrPSCharAndMoveOn(pstPESBuffer)) & 0x07;
            DataNum -= 10;
            //HI_INFO_PES("Info: 00 00 01 BA pack start code tmp0:0x%x, at offset 0x%x....\n", tmp0, TotalLen);

            if(DataNum < tmp0)
            {
                WaitAndContinue;
            }
            PES_SeekPSBufferAndMoveOn(pstPESBuffer, tmp0);

            TotalLen += 4 + 10 + tmp0;
            pstPESBuffer->u32ReadOffset = pstPESBuffer->pu8CosumerAddr - pstPESBuffer->pu8BaseAddr;
            FirstAbnormal = 1;
            continue;
        }

        // 5. system header start code
        //system-header-start-code - The systemheader-start-code is (0x000001BB).
        //It identifies the beginning of a system header.
        else if ((tmp0 == 0) && (tmp1 == 0) && (tmp2 == 1) && (tmp3 == 0xBB))
        {
            if(DataNum < 2)
            {
                WaitAndContinue;
            }
            tmp0 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            SysHeadLen = (tmp0 << 8) + PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            DataNum -= 2;
            //HI_INFO_PES("Info: 00 00 01 BB system header start code SysHeadLen:0x%x at offset 0x%x....\n", SysHeadLen, TotalLen);
            if(DataNum < SysHeadLen)
            {
                WaitAndContinue;
            }
            PES_SeekPSBufferAndMoveOn(pstPESBuffer, SysHeadLen);

            TotalLen +=  4 + 2 + SysHeadLen;
            //ReadOffset = CurrPsPtr - PsBufferPtr;
            pstPESBuffer->u32ReadOffset = pstPESBuffer->pu8CosumerAddr - pstPESBuffer->pu8BaseAddr;
            FirstAbnormal = 1;
            continue;
        }
        // 6. program stream map start code
        else if ((tmp0 == 0) && (tmp1 == 0) && (tmp2 == 1) && (tmp3 == 0xBC))
        {
            if(DataNum < 2)
            {
                WaitAndContinue;
            }
            //program_stream_map_length
            tmp0 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            StrmMapLen = (tmp0 << 8) + PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            DataNum -= 2;
            //HI_INFO_PES("Info: 00 00 01 BC program stream map start code StrmMapLen:0X%x,  at offset 0x%x....\n", StrmMapLen, TotalLen);
            if(DataNum < StrmMapLen)
            {
                WaitAndContinue;
            }
            /* Parse program stream map */
            pPESinfo = &(PESHandle->pesinfo);
            if(pPESinfo->streamNum != 0)
            {
                //DataNum -= StrmMapLen;
                PES_SeekPSBufferAndMoveOn(pstPESBuffer, StrmMapLen);
            }
            else
            {
                memset(pPESinfo, 0, sizeof(HI_UNF_PES_INFO_S));

                if(StrmMapLen >= 10)
                {
                    StrmMapTmpLen = 0;

                    PES_SeekPSBufferAndMoveOn(pstPESBuffer, 2);
                    StrmMapTmpLen += 2;
                    //Get program_stream_info_length
                    tmp0 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
                    StrmInfoLen = (tmp0 << 8) + PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
                    StrmMapTmpLen += 2;
                    DataNum -= 4;

                    if(DataNum < StrmInfoLen)
                    {
                        WaitAndContinue;
                    }
                    //skip stream info len
                    PES_SeekPSBufferAndMoveOn(pstPESBuffer, StrmInfoLen);
                    StrmMapTmpLen += StrmInfoLen;
                    DataNum -= StrmInfoLen;

                    if(DataNum < 2)
                    {
                        WaitAndContinue;
                    }
                    //Get elementary_steam_map_length
                    tmp0 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
                    ElemtStrmMapLen = (tmp0 << 8) + PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
                    StrmMapTmpLen += 2;
                    DataNum -= 2;

                    if(DataNum < ElemtStrmMapLen)
                    {
                        WaitAndContinue;
                    }

                    streamnum=0;
                    for(i=0; i<ElemtStrmMapLen;)
                    {
                        pPESinfo->node[streamnum].StreamType = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
                        pPESinfo->node[streamnum].StrmID = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
                        tmp0 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
                        ElemtStrmMapInfoLen = (tmp0 << 8) + PES_GetCurrPSCharAndMoveOn(pstPESBuffer);

                        StrmMapTmpLen += 4;
                        //DataNum -= 4;

                        if((StrmMapTmpLen + ElemtStrmMapInfoLen + 4) > StrmMapLen)
                        {
                            PES_SeekPSBufferAndMoveOn(pstPESBuffer, (StrmMapLen - StrmMapTmpLen - 4));
                            break;
                        }
                        //ignore ElemtStrmMapInfo
                        PES_SeekPSBufferAndMoveOn(pstPESBuffer, ElemtStrmMapInfoLen);

                        StrmMapTmpLen += ElemtStrmMapInfoLen;
                        //DataNum -= ElemtStrmMapInfoLen;
                        i += 4 + ElemtStrmMapInfoLen;
                        streamnum ++;
                    }

                    pPESinfo->streamNum = streamnum;

                    //ignore CRC32
                    PES_SeekPSBufferAndMoveOn(pstPESBuffer, 4);
                    //DataNum -= 4;

                    HI_INFO_PES("Get program stream map SteamNum:0x%x\n", pPESinfo->streamNum);
                    for(i = 0; i < pPESinfo->streamNum; i ++)
                    {
                        HI_INFO_PES("index:%d, type:0x%x, ID:0x%x\n", i, pPESinfo->node[i].StreamType,
                                    pPESinfo->node[i].StrmID);
                    }
                    HI_INFO_PES("\n");
                }
                else
                {
                    PES_SeekPSBufferAndMoveOn(pstPESBuffer, StrmMapLen);
                    //DataNum -= StrmMapLen;
                }
            }

            TotalLen +=  4 + 2 + StrmMapLen;
            //ReadOffset = CurrPsPtr - PsBufferPtr;
            pstPESBuffer->u32ReadOffset = pstPESBuffer->pu8CosumerAddr - pstPESBuffer->pu8BaseAddr;
            FirstAbnormal = 1;
            continue;
        }
        // 7. other start code
        else if ((tmp0 == 0) && (tmp1 == 0) && (tmp2 == 1) && ((tmp3 == 0xBF) || (tmp3 == 0xBE) || (tmp3 == 0xFF)))
        {
            if(DataNum < 2)
            {
                WaitAndContinue;
            }
            //Get this pack length:2Bytes
            tmp0 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            tmp0 = (tmp0<<8) + PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            DataNum -= 2;
            //HI_INFO_PES("Info: 00 00 01 %02X other start code length:0x%x at offset 0x%x....\n", tmp3, tmp0, TotalLen);

            if(DataNum < tmp0)
            {
                WaitAndContinue;
            }
            PES_SeekPSBufferAndMoveOn(pstPESBuffer, tmp0);

            TotalLen +=  4 + 2 + tmp0;
            //ReadOffset = CurrPsPtr - PsBufferPtr;
            pstPESBuffer->u32ReadOffset = pstPESBuffer->pu8CosumerAddr - pstPESBuffer->pu8BaseAddr;
            FirstAbnormal = 1;
            continue;
        }
        // 8. video head
        else if ((tmp0 == 0) && (tmp1 == 0) && (tmp2 == 1) && (tmp3 >= 0xE0) && (tmp3 < 0xF0))
        {
            PesHead[0] = tmp0;
            PesHead[1] = tmp1;
            PesHead[2] = tmp2;
            PesHead[3] = tmp3;

            //Set Video Stream ID
            if(PESHandle->VStreamID != 0x00)
            {
                if(PESHandle->VStreamID != PesHead[3])
                {
                    HI_INFO_PES("diff streamid:0x%x, 0x%x\n", PESHandle->VStreamID, PesHead[3]);
                }
            }
            else
            {
                PESHandle->VStreamID = PesHead[3];
                HI_INFO_PES("\nVStreamID:0x%x\n", PESHandle->VStreamID);
            }

            if(DataNum < 5)
            {
                WaitAndContinue;
            }

            //Get PES Length
            PesHead[4] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesLen = PesHead[4];
            PesHead[5] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesLen = (PesLen<<8) + PesHead[5];
            DataNum -= 2;
            //HI_INFO_PES("Info: 00 00 01 %02X video head PesLen:0x%x, at offset 0x%x....\n", tmp3, PesLen, TotalLen);

            //extract PTS and ES data from here!
            PesHead[6] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesHead[7] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesHead[8] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            DataNum -= 3;
            SkipLen = 3;
            //PTS Flag
            PTSFlag = (PesHead[7] & 0x80) >> 7;
            //PES Header length
            PES_header_data_length = PesHead[8];

            if(DataNum < PES_header_data_length)
            {
                WaitAndContinue;
            }

            //HI_INFO_PES("PES_header_data_length:0x%x\n", PES_header_data_length);
            //Copy out all the PES header
            for (index = 0; index < PES_header_data_length; index++)
            {
                if (index > 255 - 9)
                {
                    index = (255 - 9);
                }                      //Ignore overflow
                PesHead[9 + index] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            }

            DataNum -= PES_header_data_length;
            SkipLen += PES_header_data_length;

            //System clock frequency is 27MHz, PTS's unit is 27MHz/300 = 90KHz
            //So, we need to PTSms = PTS / 90!
            if( PTSFlag )
            {
                HI_U32 PTSLow = 0;
                PTSLow = (((PesHead[9] & 0x06)>>1) << 30)
                         | ((PesHead[10]) << 22)
                         | (((PesHead[11] & 0xfe)>>1) << 15)
                         | ((PesHead[12]) << 7)
                         | (((PesHead[13] & 0xfe)) >> 1);
                if (PesHead[9] & 0x08)
                {
                    LastPts = (PTSLow / 90) + 0x2D82D82;//(1 << 32) / 90;
                }
                else
                {
                    LastPts = (PTSLow / 90);
                }
                //HI_INFO_PES("Video PTS:0x%x\n", LastPts);
                Statistic->u32VideoPTS = LastPts;
            }
            else
            {
                LastPts = -1;
            }
            //HI_INFO_PES("LastPts:0x%x\n", LastPts);
            if (HI_UNF_PES_PARSE_TYPE_ADJUST == PESHandle->enPESParseType)
            {
                PesLen = 0;
            }

            if(PesLen == 0)
            {
                FindPesHeadFlag = HI_FALSE;
                pread = pstPESBuffer->pu8CosumerAddr;
                tmpNum = DataNum;
                if(pstPESBuffer->u32WriteOffset < pstPESBuffer->u32ReadOffset)
                {
                    memcpy(pstPESBuffer->pu8BaseAddr+pstPESBuffer->u32RealEndOffset,pstPESBuffer->pu8BaseAddr,3);
                    while ((tmpNum >= 4) && (pread < (pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32RealEndOffset)))
                    {
                        if (((pread[0] == 0) && (pread[1] == 0) && (pread[2] == 1))
                            && ((pread[3] >= 0xB9) && (pread[3] <= 0xFF)))
                        {
                            PesLen = DataNum - tmpNum;
                            FindPesHeadFlag = HI_TRUE;
                            break;
                        }

                        tmpNum--;
                        pread++;
                    }

                    if(HI_TRUE != FindPesHeadFlag)
                    {
                        pread = pstPESBuffer->pu8BaseAddr;
                        while(tmpNum>=4)
                        {
                            if (((pread[0] == 0) && (pread[1] == 0) && (pread[2] == 1))
                                && ((pread[3] >= 0xB9) && (pread[3] <= 0xFF)))
                            {
                                PesLen = DataNum - tmpNum;
                                FindPesHeadFlag = HI_TRUE;
                                break;
                            }

                            tmpNum--;
                            pread++;
                        }
                    }

                }
                else
                {
                    while(tmpNum>=4)
                    {
                        if (((pread[0] == 0) && (pread[1] == 0) && (pread[2] == 1))
                            && ((pread[3] >= 0xB9) && (pread[3] <= 0xFF)))
                        {
                            PesLen = DataNum - tmpNum;
                            FindPesHeadFlag = HI_TRUE;
                            break;
                        }

                        tmpNum--;
                        pread++;
                    }
                }

                if(HI_TRUE != FindPesHeadFlag)
                {
                    WaitAndContinue;
                }

                PesLen +=SkipLen;
            }
            else
            {
                if(DataNum < PesLen - SkipLen)
                {
                    WaitAndContinue;
                }
             }

            //Video ES real size
            u32ESHeadLen = (PesLen + 6) - (9 + PES_header_data_length);
            //HI_INFO_PES("u32ESHeadLen:0x%x\n", u32ESHeadLen);

            //store DVD info
            PES_Fill_DVDInfor(PESHandle, PesHead[3], 0x00);

            if( (PESHandle->u32VdecType < HI_UNF_PES_STREAM_TYPE_VIDEO_MPEG2)
             || (PESHandle->u32VdecType >= HI_UNF_PES_STREAM_TYPE_VIDEO_UNKNOW) )
            {
                //No need to input Video data, just consumer this packet
                PES_SeekPSBufferAndMoveOn(pstPESBuffer, u32ESHeadLen);
            }
            else if(u32ESHeadLen != 0)
            {
                //Extract Video PES data Out, get Video ES buffer
                ret = PES_GetVideoESBuffer(PESHandle->avhandle, &stESBuffer, u32ESHeadLen);
                if(ret != HI_SUCCESS)
                {
                    if(HI_ERR_VDEC_BUFFER_FULL == ret)
                    {
                        //HI_INFO_PES("VDec full\n");
                    }
                    //HI_INFO_PES("Can not get Video ES Buffer(len:0x%x) Error:0x%x\n", u32ESHeadLen, ret);
                    Statistic->u32VideoESOverflowNum ++;
                    WaitAndContinue;
                }

                PES_CopyPSBufferAndMoveOn(pstPESBuffer, (HI_U8 *)(stESBuffer.pu8Data), u32ESHeadLen);

                //HI_INFO_PES("put video data handle:0x%x, address:0x%x\n", PESHandle->avhandle, pstPESBuffer->pu8CosumerAddr);
                ret = PES_PutVideoESBuffer(PESHandle->avhandle, u32ESHeadLen, LastPts);
                if(ret != HI_SUCCESS)
                {
                    WaitAndContinue;
                }

#ifdef __PES_VIDEO_DEBUG__
                fwrite(stESBuffer.pu8Data, sizeof(HI_S8), u32ESHeadLen, PESHandle->pfvideoES);
#endif
            }

            Statistic->u32VideoESPackNum ++;

            //Set new Buffer Read offset
            TotalLen +=  4 + 2 + PesLen;
            //ReadOffset = CurrPsPtr - PsBufferPtr;
            pstPESBuffer->u32ReadOffset = pstPESBuffer->pu8CosumerAddr - pstPESBuffer->pu8BaseAddr;
            FirstAbnormal = 1;
            //FindPesHeadFlag = HI_FALSE;
            continue;
        }
        // 9. audio or subtitle
        else if ((tmp0 == 0) && (tmp1 == 0) && (tmp2 == 1) && ((tmp3 == 0xBD) || ((tmp3 >= 0xC0) && (tmp3 < 0xE0))))
        {
            HI_U8 AudioTypeMatchFlag    = HI_TRUE;
            HI_U8 dvdaudio_substream_id = 0;

            PesHead[0] = tmp0;
            PesHead[1] = tmp1;
            PesHead[2] = tmp2;
            PesHead[3] = tmp3;
            if(DataNum < 2)
            {
                WaitAndContinue;
            }
            //Get PES Length
            PesHead[4] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesLen = PesHead[4];
            PesHead[5] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesLen = (PesLen<<8) + PesHead[5];
            DataNum -= 2;
            //HI_INFO_PES("Info: 00 00 01 %02X audio or subtitle PesLen:0x%x, at offset 0x%x....\n", tmp3, PesLen, TotalLen);

            if(DataNum < PesLen)
            {
                WaitAndContinue;
            }

            //extract PTS and ES data from here!
            PesHead[6] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesHead[7] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesHead[8] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            //PTS Flag
            PTSFlag = (PesHead[7] & 0x80) >> 7;
            //PES Header length
            PES_header_data_length = PesHead[8];
            //Copy out all the PES header
            for(index = 0; index < PES_header_data_length; index ++)
            {
                if(index > 255 - 9)
                {
                    index = (255 - 9); //Ignore overflow
                }

                PesHead[9 + index] = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            }
            //System clock frequency is 27MHz, PTS's unit is 27MHz/300 = 90KHz
            //So, we need to PTSms = PTS / 90!
            if (PTSFlag)
            {
                HI_U32 PTSLow = 0;

                PTSLow = (((PesHead[9] & 0x06) >> 1) << 30)
                         | ((PesHead[10]) << 22)
                         | (((PesHead[11] & 0xfe) >> 1) << 15)
                         | ((PesHead[12]) << 7)
                         | (((PesHead[13] & 0xfe)) >> 1);
                if (PesHead[9] & 0x08)
                {
                    LastPts = (PTSLow / 90) + 0x2D82D82; //(1 << 32) / 90;
                }
                else
                {
                    LastPts = (PTSLow / 90);
                }

                //HI_INFO_PES("Audio PTS:0x%x\n", LastPts);
                Statistic->u32AudioPTS = LastPts;
            }
            else
            {
                LastPts = -1;
            }

            //Audio ES real size
            u32ESHeadLen = (PesLen + 6) - (9 + PES_header_data_length);

            if(PESHandle->bIsDVD)
            {
                //DVD standard, stream_id is 0xbd, its payload has a sub header!
                if(tmp3 == 0xBD)
                {
                    //check dvd audio substream type
                    dvdaudio_substream_id = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
                    //skip Audio_frame_information:number_of_frame_header, first_access_unit_pointer
                    PES_SeekPSBufferAndMoveOn(pstPESBuffer, 3);

                    u32ESHeadLen -= 4;

                    audiocodec_id = 0x00;
                    //Check dvd audio substream id
                    switch(dvdaudio_substream_id & 0xe0)
                    {
                    case 0xa0:
                        //HI_INFO_PES("Linear PCM Auido DATA in private_stream_1, dvdaudio_substream_id:0x%x\n", dvdaudio_substream_id);
                        audiocodec_id = HI_UNF_PES_STREAM_TYPE_AUDIO_PCM;

                        if(PESHandle->u32AudioType != HI_UNF_PES_STREAM_TYPE_AUDIO_PCM)
                        {
                            AudioTypeMatchFlag = HI_FALSE;
                        }
                        break;
                    case 0x80:
                        if((dvdaudio_substream_id & 0xf8) == 0x88)
                        {
                            //HI_INFO_PES("DTS Auido DATA in private_stream_1, dvdaudio_substream_id:0x%x\n", dvdaudio_substream_id);
                            audiocodec_id = HI_UNF_PES_STREAM_TYPE_AUDIO_DTS;
                            if(PESHandle->u32AudioType != HI_UNF_PES_STREAM_TYPE_AUDIO_DTS)
                            {
                                AudioTypeMatchFlag = HI_FALSE;
                            }
                        }
                        else
                        {
                            //HI_INFO_PES("AC3 Auido DATA in private_stream_1, dvdaudio_substream_id:0x%x\n", dvdaudio_substream_id);
                            audiocodec_id = HI_UNF_PES_STREAM_TYPE_AUDIO_AC3;
                            if(PESHandle->u32AudioType != HI_UNF_PES_STREAM_TYPE_AUDIO_AC3)
                            {
                                AudioTypeMatchFlag = HI_FALSE;
                            }
                        }
                        break;
                    }

                    if((dvdaudio_substream_id & 0xe0) == 0xa0)
                    {
                        //Linear PCM Data also contain 3 Bytes of Audio_data_information
                        PES_GetCurrPSCharAndMoveOn(pstPESBuffer); /* emphasis (1), muse(1), reserved(1), frame number(5) */
                        PES_GetCurrPSCharAndMoveOn(pstPESBuffer); /* quant (2), freq(2), reserved(1), channels(3) */
                        PES_GetCurrPSCharAndMoveOn(pstPESBuffer); /* dynamic range control (0x80 = off) */
                        u32ESHeadLen -= 3;
                    }
                }

                if(AudioTypeMatchFlag == HI_TRUE)
                {
                    if(PESHandle->AStreamID != 0x00)
                    {
                        if(PESHandle->AStreamID != PesHead[3])
                        {
                            HI_INFO_PES("diff streamid:0x%x, 0x%x\n", PESHandle->AStreamID, PesHead[3]);
                        }
                    }
                    else
                    {
                        PESHandle->AStreamID = PesHead[3];
                        HI_INFO_PES("\nAStreamID:0x%x\n", PESHandle->AStreamID);
                    }
                    if(PESHandle->AStreamID == 0xBD)
                    {
                        //We need to ignore different substream_id
                        if(PESHandle->ASubStreamID == 0)
                        {
                            PESHandle->ASubStreamID = dvdaudio_substream_id;
                        }
                        else if(PESHandle->ASubStreamID != dvdaudio_substream_id)
                        {
                            //different audio sustream channel, ignore it
                            AudioTypeMatchFlag = HI_FALSE;
                        }
                    }
                }

                //store DVD info
                if(tmp3 == 0xBD)
                {
                    PES_Fill_DVDInfor(PESHandle, PesHead[3], audiocodec_id);
                }
                else
                {
                    PES_Fill_DVDInfor(PESHandle, PesHead[3], 0x00);
                }
            }

            if ((PESHandle->u32AudioType < HI_UNF_PES_STREAM_TYPE_AUDIO_AAC)
                || (PESHandle->u32AudioType >= HI_UNF_PES_STREAM_TYPE_AUDIO_UNKNOW)
                || (AudioTypeMatchFlag == HI_FALSE))
            {
                //No need to input Audio data, or this packet do not contain relative Audio es content
                //Just skip this packet
                PES_SeekPSBufferAndMoveOn(pstPESBuffer, u32ESHeadLen);
            }
            else if ((u32ESHeadLen > 0) && (u32ESHeadLen <= 0x4000))
            {
                ret = PES_GetAudioESBuffer(PESHandle->avhandle, &stESBuffer, u32ESHeadLen);
                if (ret != HI_SUCCESS)
                {
                    if (HI_ERR_ADEC_IN_BUF_FULL == ret)
                    {
                        //HI_INFO_PES("ADec full\n");
                    }

                    //HI_INFO_PES("Can not get Auido ES Buffer Error(len:0x%x) Error:0x%x\n", u32ESHeadLen, ret);
                    Statistic->u32AudioESOverflowNum++;
                    WaitAndContinue;
                }

                PES_CopyPSBufferAndMoveOn(pstPESBuffer, (HI_U8 *)(stESBuffer.pu8Data), u32ESHeadLen);

                ret = PES_PutAudioESBuffer(PESHandle->avhandle, u32ESHeadLen, LastPts);
                if (ret != HI_SUCCESS)
                {
                    WaitAndContinue;
                }

#ifdef __PES_AUDIO_DEBUG__
                fwrite(stESBuffer.pu8Data, sizeof(HI_S8), u32ESHeadLen, PESHandle->pfaudioES);
#endif
            }
            else if (u32ESHeadLen > 0x4000)
            {
                HI_U32 currentLen = u32ESHeadLen;

            //  HI_INFO_PES("u32ESHeadLen > 0x4000. u32ESHeadLen:0x%x\n", u32ESHeadLen);
                while (currentLen != 0)
                {
                    if (currentLen >= 0x4000)
                    {
                        u32ESHeadLen = 0x4000;
                        currentLen -= 0x4000;
                    }
                    else
                    {
                        u32ESHeadLen = currentLen % 0x4000;
                        currentLen = 0;
                    }

                    while (1)
                    {
                        //Extract Audio PES data Out,Get Audio ES buffer
                        ret = PES_GetAudioESBuffer(PESHandle->avhandle, &stESBuffer, u32ESHeadLen);
                        if (ret != HI_SUCCESS)
                        {
                            if (HI_ERR_ADEC_IN_BUF_FULL == ret)
                            {
                                //HI_INFO_PES("ADec full\n");
                            }

                        //HI_INFO_PES("Can not get Auido ES Buffer Error(len:0x%x) Error:0x%x\n", u32ESHeadLen, ret);
                        Statistic->u32AudioESOverflowNum ++;
                        WaitAndContinue;
                    }

                        PES_CIRCLE_BUFFER_S stPESBuffer_temp;
                        memset(&stPESBuffer_temp, 0, sizeof(PES_CIRCLE_BUFFER_S));
                        memcpy(&stPESBuffer_temp, pstPESBuffer, sizeof(PES_CIRCLE_BUFFER_S));
                    PES_CopyPSBufferAndMoveOn(pstPESBuffer, (HI_U8 *)(stESBuffer.pu8Data), u32ESHeadLen);

                    ret = PES_PutAudioESBuffer(PESHandle->avhandle, u32ESHeadLen, LastPts);
                    if(ret != HI_SUCCESS)
                    {
                            memcpy(pstPESBuffer, &stPESBuffer_temp, sizeof(PES_CIRCLE_BUFFER_S));
                        WaitAndContinue;
                    }

#ifdef __PES_AUDIO_DEBUG__
                    fwrite(stESBuffer.pu8Data, sizeof(HI_S8), u32ESHeadLen, PESHandle->pfaudioES);
#endif
                        break;
                    }
                }
            }
                Statistic->u32AudioESPackNum ++;

                //Set new Buffer Read offset
                TotalLen +=  4 + 2 + PesLen;
                //ReadOffset = CurrPsPtr - PsBufferPtr;
                pstPESBuffer->u32ReadOffset = pstPESBuffer->pu8CosumerAddr - pstPESBuffer->pu8BaseAddr;
                FirstAbnormal = 1;
                continue;
            }
            // 10. MPEG_program end code
        else if ((tmp0 == 0) && (tmp1 == 0) && (tmp2 == 1) && (tmp3 == 0xB9))
            {
                HI_INFO_PES("Info: 00 00 01 B9 MPEG_program end code at offset 0x%x....\n", TotalLen);

                //FirstAbnormal = 1;
                break;
            }
            //No use header
        else if ((tmp0 == 0) && (tmp1 == 0) && (tmp2 == 1))
        {
            PesHead[0] = tmp0;
            PesHead[1] = tmp1;
            PesHead[2] = tmp2;
            PesHead[3] = tmp3;
            if(DataNum < 2)
            {
                WaitAndContinue;
            }
            //program_stream_map_length
            tmp0 = PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            PesLen = (tmp0 << 8) + PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            DataNum -= 2;
            //HI_INFO_PES("Info: nouse header start code(0x%02x%02x%02x%02x) StrmMapLen:0X%x,  at offset 0x%x....\n", tmp0, tmp1, tmp2, tmp3, PesLen, TotalLen);
            if(DataNum < PesLen)
            {
                WaitAndContinue;
            }

            PES_SeekPSBufferAndMoveOn(pstPESBuffer, PesLen);

            TotalLen +=  4 + 2 + PesLen;
            //ReadOffset = CurrPsPtr - PsBufferPtr;
            pstPESBuffer->u32ReadOffset = pstPESBuffer->pu8CosumerAddr - pstPESBuffer->pu8BaseAddr;
            FirstAbnormal = 1;
            continue;
        }
        // 11. unknown data
        else
        {
            if(FirstAbnormal == 1)
            {
    	        HI_INFO_PES("Warning: Packet may not aligned: %02X %02X %02X %02X at offset 0X%X.\n", tmp0, tmp1, tmp2,
                        tmp3, TotalLen);
                FirstAbnormal = 0;
            }

            //PrevPsPtr = PsBufferPtr + ReadOffset;
            PrevPsPtr =  pstPESBuffer->pu8BaseAddr + pstPESBuffer->u32ReadOffset;
            if(PrevPsPtr > pstPESBuffer->pu8CosumerAddr)
	        {
	            pstPESBuffer->bLoopFlag = HI_TRUE;
	        }
            else
    	    {
	            pstPESBuffer->bLoopFlag = HI_FALSE;
        	}
            pstPESBuffer->pu8CosumerAddr = PrevPsPtr;
            //Add one offset
            PES_GetCurrPSCharAndMoveOn(pstPESBuffer);
            TotalLen += 1;
            pstPESBuffer->u32ReadOffset = pstPESBuffer->pu8CosumerAddr - pstPESBuffer->pu8BaseAddr;
            continue;
        }

    }

    HI_INFO_PES("Info: PS_thread exit now...\n");

    return NULL;
}

/*------------------------------------END---------------------------------------------*/
