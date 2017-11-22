/**
\file
\brief common function of PVR
\copyright Shenzhen Hisilicon Co., Ltd.
\date 2008-2018
\version draft
\author QuYaxin 46153
\date 2010-3-26
*/
#define _FILE_OFFSET_BITS 64

#include "hi_adp.h"
#include "hi_common.h"
#include "hi_adp_pvr.h"
#include "hi_adp_mpi.h"
#include "hi_adp_demux.h"
#include "hi_video_codec.h"
//#define PVR_ADVCA_MODE /*if use ADVCA mode,define PVR_ADVCA_MODE*/
/***************************** Macro Definition ******************************/



/*************************** Structure Definition ****************************/
typedef struct hiTS_SEND_ARGS_S
{
    HI_U32 u32DmxId;
    HI_U32 u32PortId;
    FILE   *pTsFile;
} TS_SEND_ARGS_S;

typedef struct tagPVREventType
{
    HI_U8 szEventTypeName[128];
    HI_UNF_PVR_EVENT_E eEventID;
}PVR_EVENT_TYPE_ST;
/********************** Global Variable declaration **************************/
static HI_S32       g_s32PvrRecChnNum[DMX_CNT]; /* number of record channel for each demux */
static HI_HANDLE    g_hPvrRecChns[DMX_CNT][8];  /* handle of record channel for each demux */

HI_BOOL             g_bIsRecStop = HI_FALSE;
static HI_BOOL      g_bStopTsThread = HI_FALSE;
HI_HANDLE           g_hTsBufForPlayBack;


static PVR_EVENT_TYPE_ST g_stEventType[] = {
    {"HI_UNF_PVR_EVENT_PLAY_EOF",       HI_UNF_PVR_EVENT_PLAY_EOF},
    {"HI_UNF_PVR_EVENT_PLAY_SOF",       HI_UNF_PVR_EVENT_PLAY_SOF},
    {"HI_UNF_PVR_EVENT_PLAY_ERROR",     HI_UNF_PVR_EVENT_PLAY_ERROR},
    {"HI_UNF_PVR_EVENT_PLAY_REACH_REC", HI_UNF_PVR_EVENT_PLAY_REACH_REC},
    {"HI_UNF_PVR_EVENT_PLAY_BUFFER_START", HI_UNF_PVR_EVENT_PLAY_BUFFER_START},
    {"HI_UNF_PVR_EVENT_PLAY_BUFFER_END", HI_UNF_PVR_EVENT_PLAY_BUFFER_END},
    {"HI_UNF_PVR_EVENT_PLAY_RESV",      HI_UNF_PVR_EVENT_PLAY_RESV},
    {"HI_UNF_PVR_EVENT_REC_DISKFULL",   HI_UNF_PVR_EVENT_REC_DISKFULL},
    {"HI_UNF_PVR_EVENT_REC_ERROR",      HI_UNF_PVR_EVENT_REC_ERROR},
    {"HI_UNF_PVR_EVENT_REC_OVER_FIX",   HI_UNF_PVR_EVENT_REC_OVER_FIX},
    {"HI_UNF_PVR_EVENT_REC_REACH_PLAY", HI_UNF_PVR_EVENT_REC_REACH_PLAY},
    {"HI_UNF_PVR_EVENT_REC_DISK_SLOW",  HI_UNF_PVR_EVENT_REC_DISK_SLOW},
    {"HI_UNF_PVR_EVENT_REC_RESV",       HI_UNF_PVR_EVENT_REC_RESV},
    {"HI_UNF_PVR_EVENT_BUTT",           HI_UNF_PVR_EVENT_BUTT}
};

HI_U8* PVR_GetEventTypeStringByID(HI_UNF_PVR_EVENT_E eEventID);

/******************************* API declaration *****************************/
#if 1
HI_VOID SearchFileTsSendThread(HI_VOID *args)
{
    HI_UNF_STREAM_BUF_S   StreamBuf;
    HI_U32            Readlen;
    HI_S32            Ret;
    HI_HANDLE         g_TsBuf;
    TS_SEND_ARGS_S    *pstPara = args;

    Ret = HI_UNF_DMX_AttachTSPort(pstPara->u32DmxId, pstPara->u32PortId);
    if (HI_SUCCESS != Ret)
    {
        PVR_SAMPLE_Printf("call VoInit failed.\n");
        return;
    }

    Ret = HI_UNF_DMX_CreateTSBuffer(pstPara->u32PortId, 0x200000, &g_TsBuf);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_DMX_CreateTSBuffer failed.\n");
        return;
    }

    while (!g_bStopTsThread)
    {
        Ret = HI_UNF_DMX_GetTSBuffer(g_TsBuf, 188*50, &StreamBuf, 0);
        if (Ret != HI_SUCCESS )
        {
            usleep(10 * 1000) ;
            continue;
        }

        Readlen = fread(StreamBuf.pu8Data, sizeof(HI_S8), 188*50, pstPara->pTsFile);
        if(Readlen <= 0)
        {
            PVR_SAMPLE_Printf("read ts file error!\n");
            rewind(pstPara->pTsFile);
            continue;
        }

        Ret = HI_UNF_DMX_PutTSBuffer(g_TsBuf, Readlen);
        if (Ret != HI_SUCCESS )
        {
            PVR_SAMPLE_Printf("call HI_UNF_DMX_PutTSBuffer failed.\n");
        }
    }

    Ret = HI_UNF_DMX_DestroyTSBuffer(g_TsBuf);
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_DMX_DestroyTSBuffer failed.\n");
    }
    HI_UNF_DMX_DetachTSPort(pstPara->u32DmxId);

    return;
}

static HI_S32 PVR_SearchFile(HI_U32 u32DmxId, HI_U32 u32PortId, const HI_CHAR *pszFileName, PMT_COMPACT_TBL **ppProgTbl)
{
    HI_S32 Ret;
    pthread_t   TsThd;
    TS_SEND_ARGS_S    stPara;
    FILE *pTsFile;

    pTsFile = fopen(pszFileName, "rb");

    stPara.u32DmxId = u32DmxId;
    stPara.u32PortId = u32PortId;
    stPara.pTsFile = (FILE *)pTsFile;

    g_bStopTsThread = HI_FALSE;
    pthread_create(&TsThd, HI_NULL, (HI_VOID *)SearchFileTsSendThread, &stPara);


    sleep(1);

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(u32DmxId, ppProgTbl);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HIADP_Search_GetAllPmt failed.\n");
    }
    HIADP_Search_DeInit();

    g_bStopTsThread =HI_TRUE;
    pthread_join(TsThd, HI_NULL);
    fclose(pTsFile);

    return Ret;
}

#endif
static HI_S32 PVR_RecAddPid(HI_U32 u32DmxId, int pid, HI_UNF_DMX_CHAN_TYPE_E chnType)
{
    HI_U32 ret      = HI_SUCCESS;
    HI_S32 chnIdx   = 0;
    HI_HANDLE       hPidChn;

    HI_UNF_DMX_CHAN_ATTR_S stChnAttr;

    if(u32DmxId >= DMX_CNT)
    {
        PVR_SAMPLE_Printf("IN PVR_RecAddPid the u32DmxId:%d is over than DMX_CNT:(%d)!!!\n", u32DmxId, DMX_CNT);
        return HI_FAILURE;
    }

    chnIdx   = g_s32PvrRecChnNum[u32DmxId];

    //HI_MPI_DMX_SetRecodeType(u32DmxId, 1); /* 1== DESCRAM TS */

    ret = HI_UNF_DMX_GetChannelHandle(u32DmxId, pid, &hPidChn);
    if (HI_SUCCESS == ret)
    {
        SAMPLE_RUN(HI_UNF_DMX_GetChannelAttr(hPidChn, &stChnAttr), ret);
        if (HI_SUCCESS != ret)
        {
            return ret;
        }

        if (stChnAttr.enOutputMode != HI_UNF_DMX_CHAN_OUTPUT_MODE_REC)
        {
            PVR_SAMPLE_Printf("Pid %d already open for PLAY, can NOT recorde\n", pid);
            return ret;
        }
    }


    /*demux get attribution of default channel *//*CNcomment:demux获取通道默认属性*/
    SAMPLE_RUN(HI_UNF_DMX_GetChannelDefaultAttr(&stChnAttr), ret);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    stChnAttr.enChannelType = chnType;
    //stChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_SEC;
    stChnAttr.enCRCMode    = HI_UNF_DMX_CHAN_CRC_MODE_FORBID;
    stChnAttr.u32BufSize   = 32;
    stChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_REC;


    /*demux create channel *//*CNcomment: demux新建通道*/
    SAMPLE_RUN(HI_UNF_DMX_CreateChannel(u32DmxId, &stChnAttr, &hPidChn), ret);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /*demux set channel PID*//*CNcomment:demux 设置通道PID*/
    SAMPLE_RUN(HI_UNF_DMX_SetChannelPID(hPidChn, pid), ret);
    if (HI_SUCCESS != ret)
    {
        HI_UNF_DMX_DestroyChannel(hPidChn);
        return ret;
    }

    /*demux open channel*//*CNcomment:demux打开通道*/
    SAMPLE_RUN(HI_UNF_DMX_OpenChannel(hPidChn), ret);
    if (HI_SUCCESS != ret)
    {
        HI_UNF_DMX_DestroyChannel(hPidChn);
        return ret;
    }

    chnIdx %= 8; //by g_hPvrRecChns definition, the max column index should be less than 8
    
    g_hPvrRecChns[u32DmxId][chnIdx] = hPidChn;
    g_s32PvrRecChnNum[u32DmxId]++;

    PVR_SAMPLE_Printf("DMX:%d add PID OK, pid:%d/%#x, Type:%d\n", u32DmxId, pid, pid, chnType);

    return HI_SUCCESS;
}

static HI_S32 PVR_RecDelAllPid(HI_U32 u32DmxId)
{
    HI_S32 i;
    HI_S32 ret = HI_SUCCESS;
    HI_HANDLE hPidChn;

    for (i = 0; i < g_s32PvrRecChnNum[u32DmxId]; i++)
    {
        hPidChn = g_hPvrRecChns[u32DmxId][i];
        SAMPLE_RUN(HI_UNF_DMX_CloseChannel(hPidChn),ret);
        SAMPLE_RUN(HI_UNF_DMX_DestroyChannel(hPidChn), ret);
        PVR_SAMPLE_Printf("DMX_DestroyChannel: %d.\n", hPidChn);
    }

    g_s32PvrRecChnNum[u32DmxId]= 0;

    return ret;
}

HI_S32 PVR_SavePorgInfo(PVR_PROG_INFO_S *pstProgInfo, HI_CHAR *pszPvrRecFile)
{
    HI_S32 ret;
    PVR_PROG_INFO_S userData;

    SAMPLE_CheckNullPTR(pstProgInfo);

    memcpy(&userData, pstProgInfo, sizeof(PVR_PROG_INFO_S));
    userData.u32MagicNumber = PVR_PROG_INFO_MAGIC;

    ret = HI_UNF_PVR_SetUsrDataInfoByFileName(pszPvrRecFile, (HI_U8*)&userData, sizeof(PVR_PROG_INFO_S));
    if (HI_SUCCESS != ret)
    {
        PVR_SAMPLE_Printf("PVR_SetUsrDataInfoByFileName ERR:%#x.\n", ret);
        return ret;
    }

    usleep(10*1000);
    PVR_SAMPLE_Printf("\n------------------\n");
    PVR_SAMPLE_Printf("File Info:\n");
    PVR_SAMPLE_Printf("Pid:  A=%d/%#x, V=%d/%#x.\n",pstProgInfo->stProgInfo.AElementPid,
                                         pstProgInfo->stProgInfo.AElementPid,
                                         pstProgInfo->stProgInfo.VElementPid,
                                         pstProgInfo->stProgInfo.VElementPid);
    PVR_SAMPLE_Printf("Type: A=%d, V=%d.\n", pstProgInfo->stProgInfo.AudioType, pstProgInfo->stProgInfo.VideoType);
    PVR_SAMPLE_Printf("isClearStream: %d, isEncrypt: %d.\n", pstProgInfo->stRecAttr.bIsClearStream, pstProgInfo->stRecAttr.stEncryptCfg.bDoCipher);
    PVR_SAMPLE_Printf("indexType: %d, bRewind: %d. maxSize: 0x%llx\n", pstProgInfo->stRecAttr.enIndexType, pstProgInfo->stRecAttr.bRewind, pstProgInfo->stRecAttr.u64MaxFileSize);
    PVR_SAMPLE_Printf("------------------\n\n");
    usleep(10*1000);


    return HI_SUCCESS;
}

HI_S32 PVR_GetPorgInfo(PVR_PROG_INFO_S *pstProgInfo, const HI_CHAR *pszPvrRecFile)
{
    HI_S32 ret;
    HI_U32 dataRead;

    PVR_PROG_INFO_S userData;

    SAMPLE_CheckNullPTR(pstProgInfo);
    SAMPLE_CheckNullPTR(pszPvrRecFile);

    ret = HI_UNF_PVR_GetUsrDataInfoByFileName(pszPvrRecFile, (HI_U8*)&userData,
                                sizeof(PVR_PROG_INFO_S), &dataRead);
    if (HI_SUCCESS != ret)
    {
        PVR_SAMPLE_Printf("PVR_SetUsrDataInfoByFileName ERR:%#x.\n", ret);
        return ret;
    }

    if (PVR_PROG_INFO_MAGIC == userData.u32MagicNumber)
    {
        memcpy(pstProgInfo, &(userData),  sizeof(PVR_PROG_INFO_S));
    }
    else
    {
        //HI_U32 temp1 = 0;
        PVR_SAMPLE_Printf("Can  only play the program record by sample. \n");

        return HI_FAILURE;

    }

    usleep(10*1000);
    PVR_SAMPLE_Printf("\n------------------\n");
    PVR_SAMPLE_Printf("File Info:\n");
    if (pstProgInfo->stProgInfo.AElementNum > 0)
    {
        PVR_SAMPLE_Printf("Audio:\n");
        PVR_SAMPLE_Printf("   PID = %#x\n",pstProgInfo->stProgInfo.AElementPid);
        PVR_SAMPLE_Printf("   Type= %d\n", pstProgInfo->stProgInfo.AudioType);
    }
    else
    {
        PVR_SAMPLE_Printf("Audio: none\n");
    }
    if (pstProgInfo->stProgInfo.VElementNum > 0)
    {
        PVR_SAMPLE_Printf("Video:\n");
        PVR_SAMPLE_Printf("   PID = %#x\n",pstProgInfo->stProgInfo.VElementPid);
        PVR_SAMPLE_Printf("   Type= %d\n", pstProgInfo->stProgInfo.VideoType);
    }
    else
    {
        PVR_SAMPLE_Printf("Video: none\n\n");
    }

    PVR_SAMPLE_Printf("isClearStream: %d, isEncrypt: %d.\n", pstProgInfo->stRecAttr.bIsClearStream, pstProgInfo->stRecAttr.stEncryptCfg.bDoCipher);
    PVR_SAMPLE_Printf("indexType: %d, bRewind: %d. maxSize: 0x%llx\n", pstProgInfo->stRecAttr.enIndexType, pstProgInfo->stRecAttr.bRewind, pstProgInfo->stRecAttr.u64MaxFileSize);
    PVR_SAMPLE_Printf("------------------\n");
    usleep(10*1000);

    return HI_SUCCESS;
}

HI_S32 PVR_checkIdx(char *pfileName)
{
#if 0
    int  i;
    PVR_INDEX_ENTRY_S entry;
    HI_U64 lastOffset = 0;
    HI_U32 sizeCalc;
    HI_U32 scbuf[10];
    HI_U32 LastSize=0;
#endif
    int ret = 0;
    int pos;
    int readNum;
    PVR_IDX_HEADER_INFO_S headInfo;
    FILE *fpIndex;
    int fileTs;

    char indexName[256];
    snprintf(indexName, sizeof(indexName), "%s.idx", pfileName);

    fpIndex = fopen(indexName, "rb");
    if (NULL == fpIndex)
    {
        PVR_SAMPLE_Printf("can't open file %s to read!\n", indexName);
        return 2;
    }
//    fileTs = open(pfileName, O_RDONLY | O_LARGEFILE);
    fileTs = open(pfileName, O_RDONLY);
    if (fileTs == -1)
    {
        PVR_SAMPLE_Printf("can't open ts file %s to read!\n", pfileName);
        fclose(fpIndex);
        return 2;
    }
    fseek(fpIndex, 0, SEEK_END);
    pos = ftell(fpIndex);
    rewind(fpIndex);

    readNum = fread(&headInfo, 1, sizeof(PVR_IDX_HEADER_INFO_S), fpIndex);
    if (readNum != sizeof(PVR_IDX_HEADER_INFO_S))
    {
            perror("read failed:");
            PVR_SAMPLE_Printf("read head failed: want%d, get:%d\n", sizeof(PVR_IDX_HEADER_INFO_S), readNum);
            return 3;
    }
    else
    {
        if (headInfo.u32StartCode == 0x5A5A5A5A)
        {
            PVR_SAMPLE_Printf("This index file has head info: head size=%u, fileSize=%llu\n", headInfo.u32HeaderLen, headInfo.u64ValidSize);
            PVR_SAMPLE_Printf("IndexEntrySize: %d, index file size:%d, headifo len:%d\n",
                     sizeof(PVR_INDEX_ENTRY_S), pos, headInfo.u32HeaderLen);
            fseek(fpIndex, headInfo.u32HeaderLen, SEEK_SET);
        }
        else
        {
            PVR_SAMPLE_Printf("This index file has NO head info\n");
            return 3;
        }
    }
    PVR_SAMPLE_Printf("\nframe info:\n");
    PVR_SAMPLE_Printf("====frame start:%d\n", headInfo.stCycInfo.u32StartFrame);
    PVR_SAMPLE_Printf("====frame end:  %d\n", headInfo.stCycInfo.u32EndFrame);
    PVR_SAMPLE_Printf("====frame last: %d\n", headInfo.stCycInfo.u32LastFrame);

#if 0
    if (headInfo.stCycInfo.u32StartFrame > headInfo.stCycInfo.u32EndFrame)
    {
        fseek(fpIndex, (headInfo.stCycInfo.u32StartFrame * sizeof(PVR_INDEX_ENTRY_S) + headInfo.u32HeaderLen), SEEK_SET);

        for (i = headInfo.stCycInfo.u32StartFrame; i <= headInfo.stCycInfo.u32LastFrame; i++)
        {
            readNum = fread(&entry, 1, sizeof(PVR_INDEX_ENTRY_S), fpIndex);
            if (readNum != sizeof(PVR_INDEX_ENTRY_S))
            {
                perror("read failed:");
                PVR_SAMPLE_Printf("read failed: i =%u offset:%d want%d, get:%d\n", i, (headInfo.stCycInfo.u32StartFrame + i) * sizeof(PVR_INDEX_ENTRY_S), sizeof(PVR_INDEX_ENTRY_S), readNum);
                getchar();
                return 3;
            }
            else
            {
                if (4 != pread(fileTs, scbuf, 4, entry.u64Offset))
                {
                    PVR_SAMPLE_Printf("F%04d: can NOT read TS, offset=0x%llx.\n", i, entry.u64Offset);
                    //return ret + 1;
                }
                else
                {
                    if ((scbuf[0] & 0xffffff) != 0x010000)
                    {
                        PVR_SAMPLE_Printf("F%04d: sc is %#x @ %llx/%llx, size=%d\n", i, scbuf[0], entry.u64Offset,entry.u64SeqHeadOffset,entry.u32FrameSize);
                        //return -1;
                        ret++;
                    }
                    else
                    {
                    //    PVR_SAMPLE_Printf("F%04d:  Offset=%llx, size=%d\n", i,   entry.u64Offset, entry.u32FrameSize);
                    }
                }

                sizeCalc = (HI_U32)(entry.u64SeqHeadOffset - lastOffset);
                if ((sizeCalc != LastSize) && (0 != LastSize))
                {
                    PVR_SAMPLE_Printf("--F%04d: Size %u != %llx - %llx(%u)\n",i, entry.u32FrameSize, entry.u64SeqHeadOffset, lastOffset, sizeCalc);
                }
                lastOffset = entry.u64SeqHeadOffset;
                LastSize = entry.u32FrameSize;
            }
        }

        fseek(fpIndex, headInfo.u32HeaderLen, SEEK_SET);
        for (i = 0; i < headInfo.stCycInfo.u32EndFrame; i++)
        {
            readNum = fread(&entry, 1, sizeof(PVR_INDEX_ENTRY_S), fpIndex);
            if (readNum != sizeof(PVR_INDEX_ENTRY_S))
            {
                perror("read failed:");
                PVR_SAMPLE_Printf("read failed: want%d, get:%d\n", sizeof(PVR_INDEX_ENTRY_S), readNum);
                getchar();
                return 3;
            }
            else
            {
                if (4 != pread(fileTs, scbuf, 4, entry.u64Offset))
                {
                    PVR_SAMPLE_Printf("F%04d: can NOT read TS, offset=0x%llx.\n", i, entry.u64Offset);
                //    return ret + 1;
                }
                else
                {
                    if ((scbuf[0] & 0xffffff) != 0x010000)
                    {
                        PVR_SAMPLE_Printf("F%04d: sc is %#x @ %llx/%llx, size=%d\n", i, scbuf[0], entry.u64Offset,entry.u64SeqHeadOffset, entry.u32FrameSize);
                        //return -1;
                        ret++;
                    }
                    else
                    {
                    //    PVR_SAMPLE_Printf("F%04d:  Offset=%llx, size=%d\n", i,   entry.u64Offset, entry.u32FrameSize);
                    }
                }

                sizeCalc = (HI_U32)(entry.u64SeqHeadOffset - lastOffset);
                if (sizeCalc != LastSize)
                {
                    //sample_printf("--F%04d: Size %u != %llx - %llx(%u)\n",i, entry.u32FrameSize, entry.u64SeqHeadOffset , lastOffset, sizeCalc);
                }
                lastOffset = entry.u64SeqHeadOffset;
                LastSize = entry.u32FrameSize;
            }
        }

    }
    else
    {
        for (i = headInfo.stCycInfo.u32StartFrame; i < headInfo.stCycInfo.u32EndFrame; i++)
        {
            readNum = fread(&entry, 1, sizeof(PVR_INDEX_ENTRY_S), fpIndex);
            if (readNum != sizeof(PVR_INDEX_ENTRY_S))
            {
                perror("read failed:");
                PVR_SAMPLE_Printf("read failed: want%d, get:%d\n", sizeof(PVR_INDEX_ENTRY_S), readNum);
                getchar();
                return 3;
            }
            else
            {
                if (4 != pread(fileTs, scbuf, 4, entry.u64Offset))
                {
                    PVR_SAMPLE_Printf("F%04d: can NOT read TS, offset=0x%llx.\n", i, entry.u64Offset);
                //    return ret + 1;
                }
                else
                {
                    if ((scbuf[0] & 0xffffff) != 0x010000)
                    {
                        PVR_SAMPLE_Printf("F%04d: sc is %#x @ %llx/%llx, size=%d\n", i, scbuf[0], entry.u64Offset,entry.u64SeqHeadOffset, entry.u32FrameSize);
                        //return -1;
                        ret++;
                    }
                    else
                    {
                //        PVR_SAMPLE_Printf("F%04d:  Offset=%llx, size=%d\n", i,   entry.u64Offset, entry.u32FrameSize);
                    }
                }
                sizeCalc = (HI_U32)(entry.u64SeqHeadOffset - lastOffset);
                if (sizeCalc != LastSize)
                {
                    //sample_printf("--F%04d: Size %u != %llx - %llx(%u)\n",i, entry.u32FrameSize, entry.u64SeqHeadOffset, lastOffset, sizeCalc);
                }
                lastOffset = entry.u64SeqHeadOffset;
                LastSize = entry.u32FrameSize;
            }
        }
    }
#endif

    close(fileTs);
    fclose(fpIndex);
    if (ret)
    {
        PVR_SAMPLE_Printf("\n------------End of file. index check failed, err:%d-------\n", ret);
    }
    else
    {
        PVR_SAMPLE_Printf("\n------------End of file. index check ok-------\n");
    }
    return ret;
}
HI_S32 PVR_RecStart(char *path, PMT_COMPACT_PROG *pstProgInfo, HI_U32 u32DemuxID,
            HI_BOOL bRewind, HI_BOOL bDoCipher, HI_U64 maxSize, HI_U32 *pRecChn)
{
    HI_U32 recChn;
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_PVR_REC_ATTR_S   attr;
    HI_U32                  VidPid;
    HI_U32                  AudPid = 0;
    PVR_PROG_INFO_S         fileInfo;
    HI_CHAR                 szFileName[PVR_MAX_FILENAME_LEN];
    HI_SYS_MEM_CONFIG_S     stConfig = {0};
    attr.u32DemuxID    = u32DemuxID;

    PVR_RecAddPid(attr.u32DemuxID, 0, HI_UNF_DMX_CHAN_TYPE_SEC);
    PVR_RecAddPid(attr.u32DemuxID, pstProgInfo->PmtPid, HI_UNF_DMX_CHAN_TYPE_SEC);

    if (pstProgInfo->AElementNum > 0)
    {
        AudPid  = pstProgInfo->AElementPid;
        PVR_RecAddPid(attr.u32DemuxID, AudPid, HI_UNF_DMX_CHAN_TYPE_AUD);
    }

    if (pstProgInfo->VElementNum > 0 )
    {
        VidPid = pstProgInfo->VElementPid;
        PVR_RecAddPid(attr.u32DemuxID, VidPid, HI_UNF_DMX_CHAN_TYPE_VID);
        attr.u32IndexPid   = VidPid;
        attr.enIndexType   = HI_UNF_PVR_REC_INDEX_TYPE_VIDEO;
        attr.enIndexVidType = pstProgInfo->VideoType;
    }
    else
    {
        attr.u32IndexPid   = AudPid;
        attr.enIndexType   = HI_UNF_PVR_REC_INDEX_TYPE_AUDIO;
        attr.enIndexVidType = HI_UNF_VCODEC_TYPE_BUTT;
    }

    snprintf(szFileName, sizeof(szFileName), "rec_v%d_a%d.ts",
             pstProgInfo->VElementPid,
             pstProgInfo->AElementPid);

    snprintf(attr.szFileName, sizeof(attr.szFileName), "%s/", path);

    strncat(attr.szFileName, szFileName, sizeof(szFileName) - strlen(attr.szFileName));

    attr.u32FileNameLen = strlen(attr.szFileName);
    attr.u32ScdBufSize = PVR_STUB_SC_BUF_SZIE;
    if ((HI_SUCCESS == HI_SYS_GetMemConfig(&stConfig)) && (stConfig.u32TotalSize <= 128))
        attr.u32DavBufSize = 188 * 10 * 1024;
    else
        attr.u32DavBufSize = PVR_STUB_TSDATA_SIZE;
    attr.enStreamType  = HI_UNF_PVR_STREAM_TYPE_TS;
    attr.bRewind = bRewind;
    attr.u64MaxFileSize= maxSize;//source;
    attr.u64MaxTimeInMs= 0;
    attr.bIsClearStream = HI_TRUE;
    attr.u32UsrDataInfoSize = sizeof(PVR_PROG_INFO_S) + 100;/*the one in index file is a multipleit of 40 bytes*//*CNcomment:索引文件里是40个字节对齐的*/

    attr.stEncryptCfg.bDoCipher = bDoCipher;
    attr.stEncryptCfg.enType = HI_UNF_CIPHER_ALG_AES;
    attr.stEncryptCfg.u32KeyLen = 16;          /*strlen(PVR_CIPHER_KEY)*/

    SAMPLE_RUN(HI_UNF_PVR_RecCreateChn(&recChn, &attr), ret);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    SAMPLE_RUN(HI_UNF_PVR_RecStartChn(recChn), ret);
    if (HI_SUCCESS != ret)
    {
        HI_UNF_PVR_RecDestroyChn(recChn);
        return ret;
    }
    memcpy(&(fileInfo.stProgInfo), pstProgInfo, sizeof(fileInfo.stProgInfo));
    memcpy(&(fileInfo.stRecAttr), &attr, sizeof(fileInfo.stRecAttr));

    SAMPLE_RUN(PVR_SavePorgInfo(&fileInfo, attr.szFileName), ret);
    if (HI_SUCCESS != ret)
    {
        HI_UNF_PVR_RecStopChn(recChn);
        HI_UNF_PVR_RecDestroyChn(recChn);
        return ret;
    }

    *pRecChn = recChn;

    return HI_SUCCESS;
}

HI_S32 PVR_RecStop(HI_U32 u32RecChnID)
{
    HI_S32 ret;
    HI_S32 ret2;
    HI_UNF_PVR_REC_ATTR_S recAttr;


    SAMPLE_RUN(HI_UNF_PVR_RecGetChn(u32RecChnID, &recAttr), ret2) ;
    SAMPLE_RUN(HI_UNF_PVR_RecStopChn(u32RecChnID), ret) ;
    SAMPLE_RUN(HI_UNF_PVR_RecDestroyChn(u32RecChnID), ret) ;
    if (HI_SUCCESS == ret2)
    {
        if (!recAttr.stEncryptCfg.bDoCipher)
        {
            //SAMPLE_RUN(PVR_checkIdx(recAttr.szFileName), ret);
        }
    }

    PVR_RecDelAllPid(PVR_DMX_ID_REC) ;

    return ret;
}


HI_S32 PVR_SwitchDmxSource(HI_U32 dmxId, HI_U32 protId)
{
    HI_S32 ret;

    HI_UNF_DMX_DetachTSPort(dmxId);

    SAMPLE_RUN(HI_UNF_DMX_AttachTSPort(dmxId, protId), ret);

    return ret;
}

HI_S32 PVR_SetAvplayPidAndCodecType(HI_HANDLE hAvplay, const PMT_COMPACT_PROG *pProgInfo)
{
    HI_U32                  VidPid;
    HI_U32                  AudPid;
    HI_U32                  u32AudType;
    HI_S32                  Ret;
    HI_UNF_VCODEC_ATTR_S    VdecAttr;
    HI_UNF_ACODEC_ATTR_S    AdecAttr;
    HI_UNF_VCODEC_TYPE_E    enVidType;


    /*
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;

    Ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_Stop failed.\n");
        //return Ret;
    }
    */
    HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_ADEC, &AdecAttr);

    if (pProgInfo->VElementNum > 0 )
    {
        VidPid = pProgInfo->VElementPid;
        enVidType = pProgInfo->VideoType;
    }
    else
    {
        VidPid = INVALID_TSPID;
        enVidType = HI_UNF_VCODEC_TYPE_BUTT;
    }

    if (pProgInfo->AElementNum > 0)
    {
        AudPid  = pProgInfo->AElementPid;
        u32AudType = pProgInfo->AudioType;
    }
    else
    {
        AudPid = INVALID_TSPID;
        u32AudType = 0xffffffff;
    }

    if (VidPid != INVALID_TSPID)
    {
        VdecAttr.enType = enVidType;
        Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
        if (Ret != HI_SUCCESS)
        {
            PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
            return Ret;
        }

        Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID,&VidPid);
        if (Ret != HI_SUCCESS)
        {
            PVR_SAMPLE_Printf("call HIADP_AVPlay_SetVdecAttr failed.\n");
            return Ret;
        }
    }

    if (AudPid != INVALID_TSPID)
    {
        Ret = HIADP_AVPlay_SetAdecAttr(hAvplay,u32AudType,HD_DEC_MODE_RAWPCM,1);
        Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID,&AudPid);
        if (HI_SUCCESS != Ret)
        {
            PVR_SAMPLE_Printf("HIADP_AVPlay_SetAdecAttr failed:%#x\n",Ret);
            return Ret;
        }
    }

    return HI_SUCCESS;
}



/*set audio and video PID attribution,start to play*//*CNcomment:设置音视频PID属性,开始播放*/
HI_S32 PVR_StartLivePlay(HI_HANDLE hAvplay, const PMT_COMPACT_PROG *pProgInfo)
{
    HI_U32 ret = HI_SUCCESS;
    HI_U32 pid = 0;
    HI_UNF_AVPLAY_MEDIA_CHAN_E enMediaType = 0;
    HI_UNF_AVPLAY_FRAMERATE_PARAM_S stFrmRateAttr = {0};
    HI_UNF_SYNC_ATTR_S stSyncAttr = {0};
    HI_CODEC_VIDEO_CMD_S stVdecCmdPara = {0};
    HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpts = {0};

    PVR_SetAvplayPidAndCodecType(hAvplay, pProgInfo);

    ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &pid);
    if ((HI_SUCCESS != ret) || (0x1fff == pid))
    {
        PVR_SAMPLE_Printf("has no audio stream!\n");
    }
    else
    {
        enMediaType |= HI_UNF_AVPLAY_MEDIA_CHAN_AUD;
    }

    ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &pid);
    if ((HI_SUCCESS != ret) || (0x1fff == pid))
    {
        PVR_SAMPLE_Printf("has no video stream!\n");
    }
    else
    {
        enMediaType |= HI_UNF_AVPLAY_MEDIA_CHAN_VID;
    }

    /*enable vo frame rate detect*//*CNcomment:使能VO自动帧率检测*/
    stFrmRateAttr.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS; 
    stFrmRateAttr.stSetFrameRate.u32fpsInteger = 0;
    stFrmRateAttr.stSetFrameRate.u32fpsDecimal = 0;
    if (HI_SUCCESS != HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM, &stFrmRateAttr))  
    {
        PVR_SAMPLE_Printf("set frame to VO fail.\n");
        return HI_FAILURE;
    }

    /*enable avplay A/V sync*//*CNcomment:使能avplay音视频同步*/
    if (HI_SUCCESS != HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr))
    {
        PVR_SAMPLE_Printf("get avplay sync attr fail!\n");
        return HI_FAILURE;
    }

    stSyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    stSyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
    stSyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
    stSyncAttr.u32PreSyncTimeoutMs = 1000;
    stSyncAttr.bQuickOutput = HI_FALSE;

    if (HI_SUCCESS != HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr))
    {
        PVR_SAMPLE_Printf("set avplay sync attr fail!\n");
        return HI_FAILURE;
    }

    /*start to play audio and video*//*CNcomment:开始音视频播放*/
    SAMPLE_RUN(HI_UNF_AVPLAY_Start(hAvplay, enMediaType, NULL), ret);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /*set avplay trick mode to normal*//*CNcomment:设置avplay特技模式为正常*/
    if (enMediaType & HI_UNF_AVPLAY_MEDIA_CHAN_VID)
    {
        stTplayOpts.u32TplaySpeed = HI_UNF_PVR_PLAY_SPEED_NORMAL;
        stVdecCmdPara.u32CmdID = HI_UNF_AVPLAY_SET_TPLAY_PARA_CMD;
        stVdecCmdPara.pPara = (void *)&stTplayOpts;
        ret = HI_UNF_AVPLAY_Invoke(hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, (void *)&stVdecCmdPara);
        if (HI_SUCCESS != ret)
        {
            PVR_SAMPLE_Printf("Resume Avplay trick mode to normal fail.\n");
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

HI_S32 PVR_StopLivePlay(HI_HANDLE hAvplay)
{
    HI_UNF_AVPLAY_STOP_OPT_S option;

    option.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    option.u32TimeoutMs = 0;

    PVR_SAMPLE_Printf("stop live play ...\n");

    /*stop playing audio and video*//*CNcomment:停止音视频设备*/
    return HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &option);
}

/*start playback*//*CNcomment:开始回放*/
HI_S32 PVR_StartPlayBack(const HI_CHAR *pszFileName, HI_U32 *pu32PlayChn, HI_HANDLE hAvplay)
{
    HI_S32 ret;
    HI_U32 playChn;
    HI_U32 u32TsBufSize = 0;
    HI_U32 pid = 0;
    PVR_PROG_INFO_S        fileInfo;
    HI_UNF_PVR_PLAY_ATTR_S attr;
    PMT_COMPACT_TBL        *pPmttal;
    HI_UNF_AVPLAY_MEDIA_CHAN_E enMediaType = 0;
    HI_UNF_AVPLAY_FRAMERATE_PARAM_S stFrmRateAttr = {0};
    HI_UNF_SYNC_ATTR_S stSyncAttr = {0};
    HI_CODEC_VIDEO_CMD_S stVdecCmdPara = {0};
    HI_UNF_AVPLAY_TPLAY_OPT_S stTplayOpts = {0};
    HI_SYS_MEM_CONFIG_S  stConfig = {0};

    SAMPLE_CheckNullPTR(pszFileName);
    SAMPLE_CheckNullPTR(pu32PlayChn);
    
    memset(&attr, 0x00, sizeof(attr));
    SAMPLE_RUN(PVR_GetPorgInfo(&fileInfo, pszFileName), ret);
    if (HI_SUCCESS != ret)
    {
        PVR_SAMPLE_Printf("Can NOT get prog INFO, can't play.\n");
        PVR_SearchFile(PVR_DMX_ID_LIVE, PVR_DMX_PORT_ID_PLAYBACK, pszFileName, &pPmttal);
        PVR_SetAvplayPidAndCodecType(hAvplay, &(pPmttal->proginfo[0]));

        memcpy(attr.szFileName, pszFileName, strlen(pszFileName) + 1);
        attr.u32FileNameLen = strlen(pszFileName);
        attr.enStreamType = HI_UNF_PVR_STREAM_TYPE_TS;
        attr.bIsClearStream = HI_TRUE;
    }
    else
    {
        PVR_SetAvplayPidAndCodecType(hAvplay, &(fileInfo.stProgInfo));

        memcpy(attr.szFileName, pszFileName, strlen(pszFileName) + 1);
        attr.u32FileNameLen = strlen(pszFileName);
        attr.enStreamType = fileInfo.stRecAttr.enStreamType;
        attr.bIsClearStream = fileInfo.stRecAttr.bIsClearStream;
    }

    if (1 == fileInfo.stRecAttr.stEncryptCfg.bDoCipher&&ret==HI_SUCCESS)
    {
        memcpy(&(attr.stDecryptCfg), &(fileInfo.stRecAttr.stEncryptCfg), sizeof(HI_UNF_PVR_CIPHER_S));

        PVR_SAMPLE_Printf("cipher info:\n");
        PVR_SAMPLE_Printf("  enType:%d\n", attr.stDecryptCfg.enType);        
    }
    else
    {
        PVR_SAMPLE_Printf("cipher info: not encrypt\n");
        attr.stDecryptCfg.bDoCipher = HI_FALSE;
    }

    ret = HI_UNF_DMX_AttachTSPort(PVR_DMX_ID_LIVE, PVR_DMX_PORT_ID_PLAYBACK);
    if (ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_DMX_AttachTSPort(%d, %d) failed.ret = 0x%08x\n", 
            PVR_DMX_ID_LIVE, PVR_DMX_PORT_ID_PLAYBACK, ret);
        HI_UNF_DMX_DeInit();
        return ret;
    }

    if ((HI_SUCCESS == HI_SYS_GetMemConfig(&stConfig)) && (stConfig.u32TotalSize <= 128))
        u32TsBufSize = 1 * 1024 * 1024;
    else
        u32TsBufSize = 8 * 1024 * 1024;

    SAMPLE_RUN(HI_UNF_DMX_CreateTSBuffer(PVR_DMX_PORT_ID_PLAYBACK, u32TsBufSize, &g_hTsBufForPlayBack), ret);
    if (ret != HI_SUCCESS)
    {
        HI_UNF_DMX_DetachTSPort(PVR_DMX_ID_LIVE);
        HI_UNF_DMX_DeInit();
        return ret;
    }
    /*create new play channel*//*CNcomment:申请新的播放通道*/
    SAMPLE_RUN(HI_UNF_PVR_PlayCreateChn(&playChn, &attr, hAvplay, g_hTsBufForPlayBack), ret);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &pid);
    if ((HI_SUCCESS != ret) || (0x1fff == pid))
    {
        PVR_SAMPLE_Printf("has no audio stream!\n");
    }
    else
    {
        enMediaType |= HI_UNF_AVPLAY_MEDIA_CHAN_AUD;
    }

    ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &pid);
    if ((HI_SUCCESS != ret) || (0x1fff == pid))
    {
        PVR_SAMPLE_Printf("has no video stream!\n");
    }
    else
    {
        enMediaType |= HI_UNF_AVPLAY_MEDIA_CHAN_VID;
    }
    
    /*enable avplay A/V sync*//*CNcomment:使能avplay音视频同步*/
    if (HI_SUCCESS != HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr))
    {
        PVR_SAMPLE_Printf("get avplay sync attr fail!\n");
        return HI_FAILURE;
    }
    stSyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    stSyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
    stSyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
    stSyncAttr.u32PreSyncTimeoutMs = 1000;
    stSyncAttr.bQuickOutput = HI_FALSE;

    if (HI_SUCCESS != HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr))
    {
        PVR_SAMPLE_Printf("set avplay sync attr fail!\n");
        return HI_FAILURE;
    }

#if 0
    /*if you wanna get better figure display performance in pvr fast backward playing, 
      pls check the extra_disp in bootargs is large enough, and then enable the following codes*/
    HI_U32 u32DispOptimizeFlag;
    u32DispOptimizeFlag = 1;
    stVdecCmdPara.u32CmdID = HI_VCODEC_SET_DISP_OPTIMIZE_FLAG_CMD;
    stVdecCmdPara.pPara = (void *)&u32DispOptimizeFlag;
    ret = HI_UNF_AVPLAY_Invoke(hAvplay, HI_UNF_AVPLAY_INVOKE_TYPE_VCODEC, (void *)&stVdecCmdPara);
    if (HI_SUCCESS != ret)
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_Invoke failed.\n");
        HI_UNF_PVR_PlayDestroyChn(playChn);
        return ret;
    }
#endif

    SAMPLE_RUN(HI_UNF_PVR_PlayStartChn(playChn), ret);
    if (HI_SUCCESS != ret)
    {
        HI_UNF_PVR_PlayDestroyChn(playChn);
        return ret;
    }
    
    /*enable vo frame rate detect*//*CNcomment:使能VO自动帧率检测*/
    stFrmRateAttr.enFrmRateType = HI_UNF_AVPLAY_FRMRATE_TYPE_PTS; 
    stFrmRateAttr.stSetFrameRate.u32fpsInteger = 0;
    stFrmRateAttr.stSetFrameRate.u32fpsDecimal = 0;
    if (HI_SUCCESS != HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM, &stFrmRateAttr))  
    {
        PVR_SAMPLE_Printf("set frame to VO fail.\n");
        return HI_FAILURE;
    }

    /*set avplay trick mode to normal*//*CNcomment:设置avplay特技模式为正常*/
    if (enMediaType & HI_UNF_AVPLAY_MEDIA_CHAN_VID)
    {
        stTplayOpts.u32TplaySpeed = HI_UNF_PVR_PLAY_SPEED_NORMAL;
        stVdecCmdPara.u32CmdID = HI_UNF_AVPLAY_SET_TPLAY_PARA_CMD;
        stVdecCmdPara.pPara = &stTplayOpts;
        ret = HI_UNF_AVPLAY_Invoke(hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, (void *)&stVdecCmdPara);
        if (HI_SUCCESS != ret)
        {
            PVR_SAMPLE_Printf("Resume Avplay trick mode to normal fail.\n");
            return HI_FAILURE;
        }
    }

    *pu32PlayChn = playChn;
    return HI_SUCCESS;
}


/*stop playback*//*CNcomment: 停止回放 */
HI_VOID PVR_StopPlayBack(HI_U32 playChn)
{
    HI_UNF_AVPLAY_STOP_OPT_S stopOpt;
    HI_UNF_PVR_PLAY_ATTR_S PlayAttr;

    stopOpt.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    stopOpt.u32TimeoutMs = 0;
    (HI_VOID)HI_UNF_PVR_PlayGetChn(playChn,&PlayAttr);
    (HI_VOID)HI_UNF_PVR_PlayStopChn(playChn, &stopOpt);
    (HI_VOID)HI_UNF_PVR_PlayDestroyChn(playChn);
    (HI_VOID)HI_UNF_DMX_DestroyTSBuffer(g_hTsBufForPlayBack);
    (HI_VOID)HI_UNF_DMX_DetachTSPort(PVR_DMX_ID_LIVE);
}

HI_S32 PVR_AvplayInit(HI_HANDLE hWin, HI_HANDLE *phAvplay)
{
    HI_S32               Ret;
    HI_HANDLE            hAvplay;
    HI_UNF_AVPLAY_ATTR_S AvplayAttr;
    HI_UNF_SYNC_ATTR_S   SyncAttr;
    HI_SYS_MEM_CONFIG_S  stConfig = {0};

    Ret = HIADP_AVPlay_RegADecLib();
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HIADP_AVPlay_RegADecLib failed.\n");
        return Ret;
    }
  
    Ret = HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_Init failed.\n");
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_GetDefaultConfig failed.\n");
        HI_UNF_AVPLAY_DeInit();
        return Ret;
    }

    AvplayAttr.u32DemuxId = PVR_DMX_ID_LIVE;
    if ((HI_SUCCESS == HI_SYS_GetMemConfig(&stConfig)) && (stConfig.u32TotalSize <= 128))
        AvplayAttr.stStreamAttr.u32VidBufSize = 3084 * 1024;
    Ret = HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_Create failed.\n");
        HI_UNF_AVPLAY_DeInit();
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_GetAttr failed.\n");
        HI_UNF_AVPLAY_DeInit();
        return Ret;
    }

    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
    SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
    SyncAttr.u32PreSyncTimeoutMs = 1000;
    SyncAttr.bQuickOutput = HI_FALSE;

    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        HI_UNF_AVPLAY_DeInit();
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        HI_UNF_AVPLAY_Destroy(hAvplay);
        HI_UNF_AVPLAY_DeInit();
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
        HI_UNF_AVPLAY_Destroy(hAvplay);
        return Ret;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_VO_AttachWindow failed.\n");
        HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
        HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
        HI_UNF_AVPLAY_Destroy(hAvplay);
        HI_UNF_AVPLAY_DeInit();
        return Ret;
    }

    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        HI_UNF_VO_DetachWindow(hWin, hAvplay);
        HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
        HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
        HI_UNF_AVPLAY_Destroy(hAvplay);
        HI_UNF_AVPLAY_DeInit();
        return Ret;
    }

    Ret = HI_UNF_SND_Attach(HI_UNF_SND_0, hAvplay, HI_UNF_SND_MIX_TYPE_MASTER, 100);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_SND_Attach failed.\n");
        HI_UNF_VO_SetWindowEnable(hWin, HI_FALSE);
        HI_UNF_VO_DetachWindow(hWin, hAvplay);
        HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
        HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
        HI_UNF_AVPLAY_Destroy(hAvplay);
        HI_UNF_AVPLAY_DeInit();
        return Ret;
    }

    *phAvplay = hAvplay;
    return HI_SUCCESS;
}

HI_S32  PVR_AvplayDeInit(HI_HANDLE hAvplay, HI_HANDLE hWin)
{
    HI_S32                      Ret;
    HI_UNF_AVPLAY_STOP_OPT_S    Stop;

    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;

    Ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_Stop failed.\n");
    }

    Ret = HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_SND_Detach failed.\n");
    }

    Ret = HI_UNF_VO_DetachWindow(hWin, hAvplay);
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_VO_DetachWindow failed.\n");
    }

    Ret = HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_ChnClose failed.\n");
    }

    Ret = HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_ChnClose failed.\n");
    }

    Ret = HI_UNF_AVPLAY_Destroy(hAvplay);
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_Destroy failed.\n");
    }

    Ret = HI_UNF_AVPLAY_DeInit();
    if (Ret != HI_SUCCESS )
    {
        PVR_SAMPLE_Printf("call HI_UNF_AVPLAY_DeInit failed.\n");
    }

    return HI_SUCCESS;
}

HI_VOID PVR_CallBack(HI_U32 u32ChnID, HI_UNF_PVR_EVENT_E EventType, HI_S32 s32EventValue, HI_VOID *args)
{

    PVR_SAMPLE_Printf("==============call back================\n");
    
    if (EventType > HI_UNF_PVR_EVENT_REC_RESV)
    {
        PVR_SAMPLE_Printf("====callback error!!!\n");
        return;
    }

    PVR_SAMPLE_Printf("====channel     %d\n", u32ChnID);
    PVR_SAMPLE_Printf("====event:%s    %d\n", PVR_GetEventTypeStringByID(EventType), EventType);
    PVR_SAMPLE_Printf("====event value %d\n", s32EventValue);


    if (EventType == HI_UNF_PVR_EVENT_PLAY_EOF)
    {
        PVR_SAMPLE_Printf("==========play to end of file======\n");
    }
    if (EventType == HI_UNF_PVR_EVENT_PLAY_BUFFER_START)
    {
        //(HI_VOID)HI_UNF_PVR_PlayResumeChn(u32ChnID);
        PVR_SAMPLE_Printf("Buffer data(%d) ....\n", s32EventValue);
    }
    if (EventType == HI_UNF_PVR_EVENT_PLAY_BUFFER_END)
    {
        PVR_SAMPLE_Printf("Buffer data exit!\n");
    }
    if (EventType == HI_UNF_PVR_EVENT_PLAY_SOF)
    {
        PVR_SAMPLE_Printf("==========play to start of file======\n");
    }
    if (EventType == HI_UNF_PVR_EVENT_PLAY_ERROR)
    {
        PVR_SAMPLE_Printf("==========play internal error, check if the disk is insert to the box======\n");
    }
    if (EventType == HI_UNF_PVR_EVENT_PLAY_REACH_REC)
    {
        PVR_SAMPLE_Printf("==========play reach to record ======\n");
    }

    if (EventType == HI_UNF_PVR_EVENT_REC_DISKFULL)
    {
        PVR_SAMPLE_Printf("\n====disk full,  stop record=====\n\n");

        HI_UNF_PVR_RecStopChn(u32ChnID);
        g_bIsRecStop = HI_TRUE;
    }
    if (EventType == HI_UNF_PVR_EVENT_REC_ERROR)
    {
        PVR_SAMPLE_Printf("======disk write error, please check if the disk is insert to the box.====\n");
    }
    if (EventType == HI_UNF_PVR_EVENT_REC_OVER_FIX)
    {
        PVR_SAMPLE_Printf("\n======reach the fixed size.==========\n\n");
    }
    if (EventType == HI_UNF_PVR_EVENT_REC_REACH_PLAY)
    {
        PVR_SAMPLE_Printf("\n======record reach to play.==========\n\n");
    }
    if (EventType == HI_UNF_PVR_EVENT_REC_DISK_SLOW)
    {
        PVR_SAMPLE_Printf("======disk is too slow, the stream record would be error.====\n");
    }

    PVR_SAMPLE_Printf("=======================================\n\n");

    return;
}

HI_S32 PVR_RegisterCallBacks(HI_VOID)
{
    HI_S32 Ret;

    Ret = HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_EOF, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_SOF, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_ERROR, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_REACH_REC, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_BUFFER_START, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_PLAY_BUFFER_END, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_REC_DISKFULL, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_REC_OVER_FIX, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_REC_DISK_SLOW, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_REC_REACH_PLAY, PVR_CallBack, NULL);
    Ret |= HI_UNF_PVR_RegisterEvent(HI_UNF_PVR_EVENT_REC_ERROR, PVR_CallBack, NULL);
    if (Ret != HI_SUCCESS)
    {
        PVR_SAMPLE_Printf("call HI_UNF_PVR_RegisterEvent failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_U8* PVR_GetEventTypeStringByID(HI_UNF_PVR_EVENT_E eEventID)
{
    HI_U32 nNum = sizeof(g_stEventType)/sizeof(g_stEventType[0]);
    HI_U32 nIndex = 0;
    HI_U8* pszRet = HI_NULL;

    for(nIndex=0; nIndex<nNum; nIndex++)
    {
        if( eEventID == g_stEventType[nIndex].eEventID)
        {
            pszRet = g_stEventType[nIndex].szEventTypeName;
            break;
        }
    }

    if(nIndex == nNum)
    {
       pszRet = g_stEventType[nNum-1].szEventTypeName;
    }

    return pszRet;
}



