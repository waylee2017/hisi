/******************************************************************************
*
*Copyright (C) 2014 Hisilicon Technologies Co., Ltd.
*
******************************************************************************
  File Name     : sample_ts_ttx.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2011/12/28
  Description   :
  History       :
  1.Date        : 2011/12/28
    Author      :
    Modification: Created file

******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>

#include "hi_debug.h"

#include "hi_adp_mpi.h"
#include "hi_adp_tuner.h"
#include "hi_unf_avplay.h"
#include "hi_unf_common.h"
#include "hi_unf_disp.h"
#include "hi_unf_demux.h"
#include "hi_unf_sound.h"
#include "hi_filter.h"
#include "hi_adp_search.h"

#include "hi_unf_ttx.h"
#include "sample_teletext_out.h"
#include "sample_ttx_port.h"
#include "sample_teletext_msg.h"

#define HI_FATAL_TTX(fmt...)      HI_FATAL_PRINT(HI_ID_TTX, fmt)
#define HI_ERR_TTX(fmt...)        HI_ERR_PRINT(HI_ID_TTX, fmt)
#define HI_WARN_TTX(fmt...)       HI_WARN_PRINT(HI_ID_TTX, fmt)
#define HI_INFO_TTX(fmt...)       HI_INFO_PRINT(HI_ID_TTX, fmt)
#define SAMPLE_GET_INPUTCMD(InputCmd) fgets((char *)(InputCmd), (sizeof(InputCmd) - 1), stdin);

FILE               *g_pTsFile = HI_NULL;
static pthread_t g_TsThd;
static pthread_mutex_t g_TsMutex;
static HI_BOOL g_bStopTsThread = HI_FALSE;
HI_HANDLE g_TsBuf;
PMT_COMPACT_TBL    *g_pProgTbl = HI_NULL;
HI_HANDLE g_hTTX = 0;
static HI_BOOL bSendData = HI_FALSE;

#define  PLAY_DMX_ID 0

#define MALLOC_SIZE (200 * 1024)

//#define GET_DATA_FROM_FILTER

#define TTX_PES_PACKET_LEN (4 * 1024)

static pthread_t s_GetDataID = 0;
HI_BOOL g_bStopRecvData = HI_FALSE;

typedef struct tagCmdLinePara
{
    HI_U32                 u32TunerFreq;
    HI_U32                 u32TunerSymbolRate;
    HI_U32                 u32ThirdParam;
    HI_U8*                 pszFileName;
    HI_U16                 u16Pid;
    //HI_U8                  u8Subtitle; /**0 teletext non-subtitle ,1teletext subtitle*/
    HI_U8*                 pszLanguage;
    HI_UNF_TTX_PAGE_ADDR_S stInitpageAddr;
} CMD_LINE_ST;

HI_BOOL g_bIsInputStop = HI_FALSE;
HI_BOOL g_bQuit = HI_FALSE;
HI_UNF_TTX_RAWDATA_S g_stRawData;

HI_HANDLE phWin;
HI_HANDLE hAvplay;
#ifdef  GET_DATA_FROM_FILTER
static HI_S32 DataCallBack(HI_S32 s32Filterid, HI_FILTER_CALLBACK_TYPE_E enCallbackType,
                           HI_UNF_DMX_DATA_TYPE_E eDataType, HI_U8 *pu8Buffer, HI_U32 u32BufferLength, HI_U8 *pu8Param);
#endif
HI_VOID HelpInfo()
{
    #if 0
    HI_INFO_TTX("--->?      帮助信息\n");
    HI_INFO_TTX("--->s      下一页 \n");
    HI_INFO_TTX("--->w      上一页 \n");
    HI_INFO_TTX("--->a      上一子页 \n");
    HI_INFO_TTX("--->d      下一子页 \n");
    HI_INFO_TTX("--->z      上一杂志 \n");
    HI_INFO_TTX("--->x      下一杂志 \n");
    HI_INFO_TTX("--->0-9    输入三个数字选择一页，第一位为杂志号，后面两位为页号 \n");
    HI_INFO_TTX("--->c      x/27包中第一个链接 \n");
    HI_INFO_TTX("--->v      x/27包中第二个链接 \n");
    HI_INFO_TTX("--->b      x/27包中第三个链接 \n");
    HI_INFO_TTX("--->n      x/27包中第四个链接 \n");
    HI_INFO_TTX("--->m      起始页 \n");
    HI_INFO_TTX("--->p      隐藏 /显示 Reveal内容\n");
    HI_INFO_TTX("--->o      自动播放/停止自动播放 \n");
    HI_INFO_TTX("--->i      背景透明/不透明 \n");
    HI_INFO_TTX("--->u      更新当前页 \n");
    HI_INFO_TTX("--->k       切换到其它descriptor\n");
    HI_INFO_TTX("--->q      退出teltext \n");
    #endif
    printf("--->?      帮助信息\n");
    printf("--->s      下一页 \n");
    printf("--->w      上一页 \n");
    printf("--->a      上一子页 \n");
    printf("--->d      下一子页 \n");
    printf("--->z      上一杂志 \n");
    printf("--->x      下一杂志 \n");
    printf("--->0-9    输入三个数字选择一页，第一位为杂志号，后面两位为页号 \n");
    printf("--->c      x/27包中第一个链接 \n");
    printf("--->v      x/27包中第二个链接 \n");
    printf("--->b      x/27包中第三个链接 \n");
    printf("--->n      x/27包中第四个链接 \n");
    printf("--->m      起始页 \n");
    printf("--->p      隐藏 /显示 Reveal内容\n");
    printf("--->o      自动播放/停止自动播放 \n");
    printf("--->i      背景透明/不透明 \n");
    printf("--->u      更新当前页 \n");
    printf("--->k      切换到其它descriptor\n");
    printf("--->q      退出teltext \n");
    return;
}

HI_VOID TsThread(HI_VOID *args)
{
    HI_UNF_STREAM_BUF_S stStreamBuf;
    HI_U32 u32Readlen;
    HI_S32 s32Ret;

    while (!g_bStopTsThread)
    {
        pthread_mutex_lock(&g_TsMutex);
        s32Ret = HI_UNF_DMX_GetTSBuffer(g_TsBuf, 188 * 50, &stStreamBuf, 1000);
        if (s32Ret != HI_SUCCESS)
        {
            pthread_mutex_unlock(&g_TsMutex);
            continue;
        }

        u32Readlen = fread(stStreamBuf.pu8Data, sizeof(HI_S8), 188 * 50, g_pTsFile);
        if (u32Readlen <= 0)
        {
            HI_INFO_TTX("read ts file end and rewind!\n");

            rewind(g_pTsFile);
            pthread_mutex_unlock(&g_TsMutex);
            continue;
        }

        s32Ret = HI_UNF_DMX_PutTSBuffer(g_TsBuf, u32Readlen);
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_TTX("call HI_UNF_DMX_PutTSBuffer failed !\n");
        }

        pthread_mutex_unlock(&g_TsMutex);
    }

    s32Ret = HI_UNF_DMX_ResetTSBuffer(g_TsBuf);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HI_UNF_DMX_ResetTSBuffer failed !\n");
    }

    return;
}

HI_VOID  HandleMsg(HI_VOID * args)
{
    HI_HANDLE hTTX, hDispalyHandle;
    MESSAGE_S stMsg;

    hTTX = (HI_HANDLE) args;

    while (!g_bQuit)
    {
        if (HI_FAILURE == MsgQueue_De(&stMsg))
        {
            usleep(20 * 1000);
            continue;
        }

        hDispalyHandle = *(HI_HANDLE * )stMsg.pu8MsgData;

        if (HI_SUCCESS != HI_UNF_TTX_Display(hTTX, hDispalyHandle))
        {
            HI_ERR_TTX("call HI_UNF_TTX_Display failed !\n");
        }
    }
}

#ifdef  GET_DATA_FROM_FILTER
static HI_S32 DataCallBack(HI_S32 s32Filterid, HI_FILTER_CALLBACK_TYPE_E enCallbackType,
                           HI_UNF_DMX_DATA_TYPE_E eDataType, HI_U8 *pu8Buffer, HI_U32 u32BufferLength, HI_U8 *pu8Param)
{
    if (enCallbackType == HI_FILTER_CALLBACK_TYPE_DATA_COME)
    {
        if (HI_SUCCESS != HI_UNF_TTX_InjectData(g_hTTX, pu8Buffer, u32BufferLength))
        {
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

#else
HI_VOID RecvData(HI_VOID *args)
{
    TTX_PORT_S_PTR pstPort = HI_NULL;

    pstPort = (TTX_PORT_S_PTR)args;
    HI_U8 u8szDmxBuffer[TTX_PES_PACKET_LEN] = {0};
    HI_U32 u32DataLength = 0;

    while (!g_bStopRecvData)
    {
        memset (u8szDmxBuffer, 0, TTX_PES_PACKET_LEN);
        if (HI_SUCCESS != TTX_Port_AcquireBuf(pstPort->hChannelID, u8szDmxBuffer, &u32DataLength))
        {
            usleep(5 * 1000);
            continue;
        }
        else
        {
            if (bSendData)
            {
                if (HI_SUCCESS != HI_UNF_TTX_InjectData(pstPort->hTTX, u8szDmxBuffer, u32DataLength))
                {
                    HI_ERR_TTX("call HI_UNF_TTX_InjectData failed !\n");
                }
            }
        }
    }
}

#endif

static HI_S32 RequestRawData(HI_UNF_TTX_RAWDATA_S *pstRawData)
{
    HI_U8 i = 0;

    if (HI_NULL == pstRawData)
    {
        return HI_FAILURE;
    }

    HI_INFO_TTX("u32ValidLines = 0x%x \n", pstRawData->u32ValidLines);

    for (i = 0; i < 32; i++)
    {
        if ((pstRawData->u32ValidLines >> i) & 0x1)
        {
            //HI_INFO_TTX("[%d]==>0x%2x 0x%2x 0x%2x 0x%2x\n", i, pstRawData->au8Lines[i][0], pstRawData->au8Lines[i][1], pstRawData->au8Lines[i][2], pstRawData->au8Lines[i][3]);
        }
    }

    return HI_SUCCESS;
}

void ParseCmdParam(int nArgc, char** pArgv, CMD_LINE_ST *pstCmd)
{
    if (nArgc <= 2)
    {
        return;
    }

    switch (*pArgv[1])
    {
    case '-':
    {
        pArgv[1]++;
        switch (*pArgv[1])
        {
            pstCmd->pszLanguage = NULL;
        case 'f':
        {
            if(nArgc >= 3)
            {
                pstCmd->pszFileName = (HI_U8*)pArgv[2];
            }
            else
            {
                HI_ERR_TTX("invalid param !\n");
            }
        }
            break;
        case 't':
        {
            pstCmd->pszFileName = NULL;
            if(nArgc >= 5)
            {
                pstCmd->u32TunerFreq = strtol(pArgv[2], NULL, 0);
                pstCmd->u32TunerSymbolRate = strtol(pArgv[3], NULL, 0);
                pstCmd->u32ThirdParam = strtol(pArgv[4], NULL, 0);
            }
            else
            {
                HI_ERR_TTX("invalid param !\n");
            }
        }
            break;
        default:
        {
            //pstCmd->u32TunerFreq = 610;
            //pstCmd->u32TunerSymbolRate = 6875;
            //pstCmd->u32ThirdParam = 64;
            //pstCmd->pszFileName = NULL;
        }
            break;
        }
    }
        break;
    default:
    {
        //pstCmd->u32TunerFreq = 610;
        //pstCmd->u32TunerSymbolRate = 6875;
        //pstCmd->u32ThirdParam = 64;
        //pstCmd->pszFileName = NULL;
    }
        break;
    }
}
static HI_U8 TTXSelectProgram(PMT_COMPACT_TBL *pProgTbl)
{
    HI_U8 u8ProgNo = 0; /* for prog No. */

    printf("Program number is %d\n", pProgTbl->prog_num);

    /* for multi-program, need to select someone, range from 0 to total number -1 */
    if (pProgTbl->prog_num > 1)
    {
        HI_U8  au8ProgNo[32]; /* for program number */

        printf("\nPlease input a number from 0 to %d for program:", pProgTbl->prog_num-1);
        SAMPLE_GET_INPUTCMD(au8ProgNo);

        u8ProgNo = atoi((char*)au8ProgNo);
        if (u8ProgNo >= pProgTbl->prog_num)
        {
            printf("\nProgram %d is not exist!! use default program 0\n", u8ProgNo);
            u8ProgNo = 0;
        }
    }
    else
    {
        printf("\nUse default program 0\n");
        u8ProgNo = 0;
    }

    return u8ProgNo;
}

static HI_U8 SelectTTXNum(PMT_COMPACT_TBL *pProgTbl,HI_U8 u8ProgramNum)
{
    HI_U8 u8TtxNo = 0; /* for prog No. */

    printf("\nIn this program, teletext number is %d\n", pProgTbl->proginfo[u8ProgramNum].u16TtxNum);

    if (pProgTbl->proginfo[u8ProgramNum].u16TtxNum > 1)
    {
        HI_U8  au8TtxNo[32]; /* for teletext number */

        printf("\nPlease input a teletext number from 0 to %d:", pProgTbl->proginfo[u8ProgramNum].u16TtxNum - 1);
        SAMPLE_GET_INPUTCMD(au8TtxNo);

        u8TtxNo = atoi((char*)au8TtxNo);
        if (u8TtxNo >= pProgTbl->proginfo[u8ProgramNum].u16TtxNum)
        {
            printf("\nTeletext number %d is not exist!! use default number 0\n", u8TtxNo);
            u8TtxNo = 0;
        }
    }
    else if(pProgTbl->proginfo[u8ProgramNum].u16TtxNum == 1)
    {
        printf("\nUse default teletext number 0\n");
        u8TtxNo = 0;
    }
    else
    {
        printf("Leave the function\n");
        u8TtxNo = 0xff;
    }

    return u8TtxNo;
}

static HI_U8 SelectTTXDescriptor(PMT_COMPACT_TBL *pProgTbl,HI_U8 u8ProgramNum, HI_U8 u8TTXNum)
{
    HI_U8 u8DesNo = 0xff; /* for Descriptor No. */
    HI_U8 i;
    HI_U8 u8Descriptor;
    HI_U8 u8MaxDesNum = pProgTbl->proginfo[u8ProgramNum].stTtxInfo[u8TTXNum].u8DesInfoCnt;
    HI_U8 u8FirstSupportDes = 0;
    HI_U8 u8SupportDesCnt = 0;
    HI_BOOL bHasSupportDes = HI_FALSE;

    printf("\nTeletext Descriptor number is %d, ", u8MaxDesNum);
    if(u8MaxDesNum > 0)
    {
        for(i = 0; i < u8MaxDesNum; i++)
        {
            u8Descriptor = pProgTbl->proginfo[u8ProgramNum].stTtxInfo[u8TTXNum].stTtxDes[i].u8TtxType;
            if((1 == u8Descriptor) ||(2 == u8Descriptor))
            {
                //printf("%d ",i);
                bHasSupportDes = HI_TRUE;
                u8FirstSupportDes = i;
                break;
            }
        }
        if(HI_TRUE == bHasSupportDes)
        {
            printf("we support the descriptor: \n");
            for(i = 0; i < u8MaxDesNum; i++)
            {
                u8Descriptor = pProgTbl->proginfo[u8ProgramNum].stTtxInfo[u8TTXNum].stTtxDes[i].u8TtxType;
                if (1 == u8Descriptor)
                {
                    u8SupportDesCnt++;
                    printf("%d-------%s \n",i,"initial Teletext page");
                    
                }
                else if (2 == u8Descriptor)
                {
                    u8SupportDesCnt++;
                    printf("%d-------%s \n",i,"Teletext subtitle page");                    
                }               
            }
        }
        else
        {
            printf("but have not descriptor we can support ");
        }

    }
    printf("\n");

    if (bHasSupportDes)
    {
        HI_U8  au8DesNo[32];
        if(u8SupportDesCnt > 1)
        {
            printf("Please input a teletext Descriptor number:");
            SAMPLE_GET_INPUTCMD(au8DesNo);

            u8DesNo = atoi((char*)au8DesNo);

            /*check if the user input is valid or not*/
            if (u8DesNo < u8MaxDesNum)
            {
                u8Descriptor = pProgTbl->proginfo[u8ProgramNum].stTtxInfo[u8TTXNum].stTtxDes[u8DesNo].u8TtxType;
                if((1 != u8Descriptor) &&(2 != u8Descriptor))
                {
                    printf("\nTeletext Descriptor number %d is invalid, use the first support number %d\n", u8DesNo, u8FirstSupportDes);
                    u8DesNo = u8FirstSupportDes;
                }
            }
            else
            {
                printf("\nTeletext Descriptor number %d is invalid, use the first support number %d\n", u8DesNo, u8FirstSupportDes);
                u8DesNo = u8FirstSupportDes;
            }
        }
        else
        {
            u8DesNo = u8FirstSupportDes;
        }

    }

    return u8DesNo;
}

HI_S32 main(HI_S32 argc, HI_CHAR *argv[])
{
    HI_UNF_TTX_INIT_PARA_S stInitParam = {0};
    HI_UNF_TTX_CMD_E enCMD = HI_UNF_TTX_CMD_KEY;
    HI_UNF_TTX_CONTENT_PARA_S stContentParam;
    HI_S32 s32Ret = 0;
    HI_HANDLE hWin;
    HI_HANDLE hAvplay;
    HI_UNF_AVPLAY_ATTR_S stAvplayAttr;
    HI_UNF_SYNC_ATTR_S stSyncAttr;
    HI_UNF_AVPLAY_STOP_OPT_S stStop;
    HI_U8 u8ProgNum;
    HI_U8 u8TTXNum;
    HI_U8 u8PageNum;
    HI_U8 u8DescriptorNum;
    HI_U8 u8Cmd;
    HI_UNF_TTX_KEY_E enKey;
    CMD_LINE_ST stCmdLine = {0};

    pthread_t pMsgId = HI_NULL;

#ifdef GET_DATA_FROM_FILTER
    HI_FILTER_ATTR_S stFilterAttr = {0};
    HI_S32 s32FilterID;
#else
    TTX_PORT_S stPortParam;
#endif

    ParseCmdParam(argc, argv, &stCmdLine);
    s32Ret = HI_SYS_Init();

    //s32Ret = HI_SYS_PreAV(NULL);

    if (stCmdLine.pszFileName == NULL)
    {
        s32Ret = HIADP_Tuner_Init();
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_TTX("call HIADP_Demux_Init failed !\n");
            goto SYS_DEINIT;
        }

        s32Ret = HIADP_Tuner_Connect(0, stCmdLine.u32TunerFreq, stCmdLine.u32TunerSymbolRate,
                                     stCmdLine.u32ThirdParam);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_TTX("call HIADP_Tuner_Connect failed !\n");

            goto SYS_DEINIT;
        }
    }
    else
    {
        g_pTsFile = fopen((char*)stCmdLine.pszFileName, "rb");

        if (g_pTsFile == NULL)
        {
            HI_ERR_TTX("call HIADP_Tuner_Connect failed !\n");

            goto SYS_DEINIT;
        }
    }

    s32Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call SndInit failed !\n");

        goto SYS_DEINIT;
    }

#ifdef CHIP_TYPE_hi3110ev500
    s32Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_PAL);
#else
    s32Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_1080i_50);
#endif
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call HIADP_Disp_Init failed !\n");

        goto SND_DEINIT;
    }

    s32Ret  = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    s32Ret |= HIADP_VO_CreatWin(HI_NULL, &hWin);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call VoInit failed !\n");

        s32Ret = HIADP_VO_DeInit();
        goto DISP_DEINIT;
    }

    s32Ret = HI_UNF_DMX_Init();

    if (stCmdLine.pszFileName != NULL)
    {
        s32Ret |= HI_UNF_DMX_AttachTSPort(0, HI_UNF_DMX_PORT_3_RAM);
    }
    else
    {
        s32Ret |= HI_UNF_DMX_AttachTSPort(0, HI_UNF_DMX_PORT_0_TUNER);
    }

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call VoInit failed !\n");

        goto VO_DEINIT;
    }

    if (stCmdLine.pszFileName != NULL)
    {
        s32Ret = HI_UNF_DMX_CreateTSBuffer(HI_UNF_DMX_PORT_3_RAM, 0x200000, &g_TsBuf);
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_TTX("call HI_UNF_DMX_CreateTSBuffer failed !\n");

            goto DMX_DEINIT;
        }
    }

    s32Ret = HIADP_AVPlay_RegADecLib();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call RegADecLib failed !\n");

        goto TSBUF_FREE;
    }

    s32Ret = HI_UNF_AVPLAY_Init();
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HI_UNF_AVPLAY_Init failed !\n");

        goto TSBUF_FREE;
    }

    s32Ret = HI_UNF_AVPLAY_GetDefaultConfig(&stAvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    stAvplayAttr.u32DemuxId = PLAY_DMX_ID;
    stAvplayAttr.stStreamAttr.u32VidBufSize = (3 * 1024 * 1024);
    s32Ret |= HI_UNF_AVPLAY_Create(&stAvplayAttr, &hAvplay);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HI_UNF_AVPLAY_Create failed !\n");

        goto AVPLAY_DEINIT;
    }

    s32Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HI_UNF_AVPLAY_ChnOpen failed !\n");

        goto AVPLAY_DESTROY;
    }

    s32Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HI_UNF_AVPLAY_ChnOpen failed !\n");

        goto VCHN_CLOSE;
    }

    s32Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call HI_UNF_VO_AttachWindow failed !\n");

        goto ACHN_CLOSE;
    }

    s32Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HI_UNF_VO_SetWindowEnable failed !\n");

        goto WIN_DETACH;
    }

    s32Ret = HI_UNF_SND_Attach(HI_UNF_SND_0, hAvplay, HI_UNF_SND_MIX_TYPE_MASTER, 100);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HI_SND_Attach failed !\n");

        goto WIN_DESET;
    }

    s32Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr);
    stSyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    s32Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &stSyncAttr);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HI_UNF_AVPLAY_SetAttr failed !\n");
        goto SND_DETACH;
    }

    if (0 != pthread_mutex_init(&g_TsMutex, NULL))
    {
        goto SND_DETACH;
    }

    g_bStopTsThread = HI_FALSE;
    if (stCmdLine.pszFileName != NULL)
    {
        if (0 != pthread_create(&g_TsThd, HI_NULL, (HI_VOID * (*)(HI_VOID *))TsThread, HI_NULL))
        {
            goto PSISI_FREE;
        }
    }

    HIADP_Search_Init();
    s32Ret = HIADP_Search_GetAllPmt(PLAY_DMX_ID, &g_pProgTbl);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call HIADP_Search_GetAllPmt failed !\n");

        goto PSISI_FREE;
    }

    u8ProgNum = TTXSelectProgram(g_pProgTbl);
    if (stCmdLine.pszFileName != NULL)
    {
        pthread_mutex_lock(&g_TsMutex);
        rewind(g_pTsFile);
        s32Ret = HI_UNF_DMX_ResetTSBuffer(g_TsBuf);
        pthread_mutex_unlock(&g_TsMutex);
    }

    s32Ret = HIADP_AVPlay_PlayProg(hAvplay, g_pProgTbl, u8ProgNum, HI_TRUE);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_TTX("call SwitchProg failed !\n");

        goto AVPLAY_STOP;
    }

#ifdef CHIP_TYPE_hi3110ev500
    s32Ret = HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_SD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVEBOTTOM);
#else
    s32Ret = HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_VIDEO_0, HI_LAYER_ZORDER_MOVEBOTTOM);
#endif
    s32Ret = Higo_Teletext_Init();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call Higo_Teletext_Init failed !\n");

        goto AVPLAY_STOP;
    }

    s32Ret = MsgQueue_Init();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call MsgQueue_Init failed !\n");

        goto MSGQUEUEERROR;
    }

    s32Ret = HI_UNF_TTX_Init();
    if (HI_FAILURE == s32Ret)
    {
        HI_ERR_TTX("call HI_UNF_TTX_Init failed !\n");

        goto OUTPUT_DEINIT;
    }

    stInitParam.pfnCB = TTX_SampleCallBack;

    stInitParam.pu8MemAddr = HI_NULL;
    stInitParam.u32MemSize = 0;
    stInitParam.bFlash = HI_TRUE;

    stInitParam.bNavigation = HI_TRUE;

    s32Ret = HI_UNF_TTX_Create(&stInitParam, &g_hTTX);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call HI_UNF_TTX_Create failed !\n");
        goto TTX_DEINIT;
    }

    s32Ret = pthread_create(&pMsgId, HI_NULL, (HI_VOID * (*)(HI_VOID *))HandleMsg, (HI_VOID *)g_hTTX);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("Create MsgThread failed !\n");

        goto  TTX_DESTROY;
    }
    u8TTXNum = SelectTTXNum(g_pProgTbl, u8ProgNum);
    if(0xff == u8TTXNum)
    {
        goto  TTX_DESTROY;
    }
    u8DescriptorNum = SelectTTXDescriptor(g_pProgTbl, u8ProgNum, u8TTXNum);
    if(0xff == u8DescriptorNum)
    {
        goto  TTX_DESTROY;
    }
    stCmdLine.u16Pid = g_pProgTbl->proginfo[u8ProgNum].stTtxInfo[u8TTXNum].u16TtxPID;
    stContentParam.enType = g_pProgTbl->proginfo[u8ProgNum].stTtxInfo[u8TTXNum].stTtxDes[u8DescriptorNum].u8TtxType;
    stContentParam.u32ISO639LanCode = g_pProgTbl->proginfo[u8ProgNum].stTtxInfo[u8TTXNum].stTtxDes[u8DescriptorNum].u32ISO639LanguageCode;
    
    u8PageNum = g_pProgTbl->proginfo[u8ProgNum].stTtxInfo[u8TTXNum].stTtxDes[u8DescriptorNum].u8TtxPageNumber;
    stContentParam.stInitPgAddr.u8MagazineNum = g_pProgTbl->proginfo[u8ProgNum].stTtxInfo[u8TTXNum].stTtxDes[u8DescriptorNum].u8TtxMagazineNumber;
    stContentParam.stInitPgAddr.u8PageNum = ((u8PageNum >> 4)*10) + (u8PageNum & 0xf);

    s32Ret = SetAVplayHandle(hAvplay);
    if (s32Ret == HI_FAILURE)
    {
        goto TTX_DESTROY;
    }

    //s32Ret = HI_UNF_TTX_Output(g_hTTX, HI_UNF_TTX_OSD_OUTPUT, HI_TRUE);
    //s32Ret = HI_UNF_TTX_Output(g_hTTX,HI_UNF_TTX_VBI_OUTPUT,HI_TRUE);
    s32Ret = HI_UNF_TTX_Output(g_hTTX,HI_UNF_TTX_DUAL_OUTPUT,HI_TRUE);
    if (s32Ret == HI_FAILURE)
    {
        goto TTX_DESTROY;
    }

    s32Ret |= HI_UNF_TTX_SwitchContent(g_hTTX, &stContentParam);
    if (s32Ret == HI_FAILURE)
    {
        goto TTX_DESTROY;
    }

#ifndef GET_DATA_FROM_FILTER
    stPortParam.u16DmxID = 0;
    stPortParam.u16PID = stCmdLine.u16Pid;
    stPortParam.hTTX = g_hTTX;

    TTX_Port_DmxInstall(&stPortParam);

    pthread_create(&s_GetDataID, HI_NULL, (HI_VOID *)RecvData, &stPortParam);
    bSendData = HI_TRUE;
#else
    s32Ret = HI_FILTER_Init();

    stFilterAttr.u32DMXID = 0;
    stFilterAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_PES; //Section
    stFilterAttr.funCallback = DataCallBack;
    stFilterAttr.u32DirTransFlag = 1; //透传
    stFilterAttr.u32PID = stCmdLine.u16Pid;
    stFilterAttr.enCrcFlag = HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_DISCARD;
    stFilterAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;
    stFilterAttr.u32TimeOutMs = 0;
    memset(stFilterAttr.u8Mask, 0, DMX_FILTER_MAX_DEPTH);
    memset(stFilterAttr.u8Match, 0, DMX_FILTER_MAX_DEPTH);
    memset(stFilterAttr.u8Negate, 0, DMX_FILTER_MAX_DEPTH);
    stFilterAttr.u8Mask[0]  = 0xff;
    stFilterAttr.u8Match[0] = 0xbd;
    stFilterAttr.u32FilterDepth = 1;
    stFilterAttr.pu8Param = HI_NULL;

    s32Ret = HI_FILTER_Creat(&stFilterAttr, &s32FilterID);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call HIADP_Tuner_Connect failed !\n");

        goto FILTER_ERROR;
    }

    s32Ret = HI_FILTER_Start(s32FilterID);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call HI_FILTER_Start failed !\n");

        goto FILTER_ERROR;
    }
#endif


    while (g_bQuit == HI_FALSE)
    {
        scanf("%c", &u8Cmd);
        switch (u8Cmd)
        {
        case '0':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_0;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '1':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_1;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '2':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_2;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '3':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_3;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '4':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_4;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '5':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_5;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '6':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_6;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '7':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_7;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '8':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_8;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case '9':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_9;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'w':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_PREVIOUS_PAGE;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 's':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_NEXT_PAGE;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'a':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_PREVIOUS_SUBPAGE;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'd':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_NEXT_SUBPAGE;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'z':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_PREVIOUS_MAGAZINE;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'x':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_NEXT_MAGAZINE;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'c':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_RED;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'v':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_GREEN;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'b':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_YELLOW;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'n':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_CYAN;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'm':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_INDEX;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'p':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_REVEAL;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'o':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_HOLD;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'i':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_MIX;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'u':
            enCMD  = HI_UNF_TTX_CMD_KEY;
            enKey  = HI_UNF_TTX_KEY_UPDATE;
            s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, enCMD, (HI_VOID*)&enKey);
            break;
        case 'q':
            g_bQuit = HI_TRUE;
            break;
        case '@':
            bSendData = HI_FALSE;
            stContentParam.enType = HI_UNF_TTX_TTXSUBT;
            stContentParam.stInitPgAddr.u8MagazineNum = 0;
            stContentParam.stInitPgAddr.u8PageNum = 1;
            HI_UNF_TTX_ResetData(g_hTTX);
            s32Ret = HI_UNF_TTX_Output(g_hTTX, HI_UNF_TTX_OSD_OUTPUT, HI_FALSE);
            s32Ret = HI_UNF_TTX_Output(g_hTTX, HI_UNF_TTX_OSD_OUTPUT, HI_TRUE);
            s32Ret = HI_UNF_TTX_SwitchContent(g_hTTX, &stContentParam);
            bSendData = HI_TRUE;
            break;
        case '#':
            bSendData = HI_FALSE;
            stContentParam.enType = HI_UNF_TTX_INITTTX;
            stContentParam.stInitPgAddr.u8MagazineNum = 1;
            stContentParam.stInitPgAddr.u8PageNum = 0;
            HI_UNF_TTX_ResetData(g_hTTX);
            s32Ret = HI_UNF_TTX_Output(g_hTTX, HI_UNF_TTX_OSD_OUTPUT, HI_FALSE);
            s32Ret = HI_UNF_TTX_Output(g_hTTX, HI_UNF_TTX_OSD_OUTPUT, HI_TRUE);
            s32Ret = HI_UNF_TTX_SwitchContent(g_hTTX, &stContentParam);
            bSendData = HI_TRUE;
            break;
        case 'k':
        {
            HI_U8 u8DesNo=0;
            scanf("%c", &u8DesNo);//skip '\n'
            u8DesNo = SelectTTXDescriptor(g_pProgTbl, u8ProgNum, u8TTXNum);
            printf("we select to des %d,last des %d\n",u8DesNo, u8DescriptorNum);
            if((u8DesNo != u8DescriptorNum) && (0xff != u8DesNo))
            {
                bSendData = HI_FALSE;
                stContentParam.enType = g_pProgTbl->proginfo[u8ProgNum].stTtxInfo[u8TTXNum].stTtxDes[u8DesNo].u8TtxType;                
                u8PageNum = g_pProgTbl->proginfo[u8ProgNum].stTtxInfo[u8TTXNum].stTtxDes[u8DesNo].u8TtxPageNumber;
                stContentParam.stInitPgAddr.u8MagazineNum = g_pProgTbl->proginfo[u8ProgNum].stTtxInfo[u8TTXNum].stTtxDes[u8DesNo].u8TtxMagazineNumber;
                stContentParam.stInitPgAddr.u8PageNum = ((u8PageNum >> 4)*10) + (u8PageNum & 0xf);
                printf("magzinenum=%d;pagenun=0x%x\n",stContentParam.stInitPgAddr.u8MagazineNum,u8PageNum);
                HI_UNF_TTX_ResetData(g_hTTX);
                s32Ret = HI_UNF_TTX_Output(g_hTTX, HI_UNF_TTX_DUAL_OUTPUT, HI_FALSE);
                s32Ret = HI_UNF_TTX_Output(g_hTTX, HI_UNF_TTX_DUAL_OUTPUT, HI_TRUE);
                s32Ret = HI_UNF_TTX_SwitchContent(g_hTTX, &stContentParam);
                bSendData = HI_TRUE;
                u8DescriptorNum = u8DesNo;
            }
            
            break;
        }
        case '\n':
            break;
        case '?':
            HelpInfo();
            break;
        case 'r':
            {
                HI_UNF_TTX_REQUEST_RAWDATA_S stRawData;
                stRawData.pstRawData = &g_stRawData;
                stRawData.pfnRequestCallback = RequestRawData;
                s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, HI_UNF_TTX_CMD_SETREQUEST, (HI_VOID*)&stRawData);
            }
            break;
        case 't':
            {
                HI_UNF_TTX_REQUEST_RAWDATA_S stRawData;
                s32Ret = HI_UNF_TTX_ExecCmd(g_hTTX, HI_UNF_TTX_CMD_CLEARREQUEST, (HI_VOID*)&stRawData);
            }
            break;
        default:
            HI_INFO_TTX("Invalid Key!\n");

            break;
        }
    }


#ifdef GET_DATA_FROM_FILTER
FILTER_ERROR:
    s32Ret = HI_FILTER_Stop(s32FilterID);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call HI_FILTER_Stop failed !\n");
    }

    s32Ret = HI_FILTER_Destroy(s32FilterID);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_TTX("call HI_FILTER_Destroy failed !\n");
    }

#else
    g_bStopRecvData = HI_TRUE;
    if (0 != pthread_join(s_GetDataID, HI_NULL))
    {
        HI_ERR_TTX("call pthread_join failed !\n");
    }

    if (HI_SUCCESS != TTX_Port_DmxUninstall(&stPortParam))
    {
        HI_ERR_TTX("call TTX_Port_DmxUninstall failed !\n");
    }
#endif


TTX_DESTROY:
    g_bQuit = HI_TRUE;
    s32Ret = HI_UNF_TTX_Destroy(g_hTTX);

TTX_DEINIT:
    if ((stCmdLine.pszFileName != HI_NULL) && (stInitParam.pu8MemAddr != HI_NULL))
    {
        free (stInitParam.pu8MemAddr);
        stInitParam.pu8MemAddr = HI_NULL;
    }

    s32Ret = HI_UNF_TTX_DeInit();
    if (0 != pthread_join(pMsgId, HI_NULL))
    {
        HI_ERR_TTX("call pthread_join failed !\n");
    }

MSGQUEUEERROR:
    s32Ret = MsgQueue_DeInit();
OUTPUT_DEINIT:
    Higo_Teletext_DeInit();

AVPLAY_STOP:
    stStop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    stStop.u32TimeoutMs = 0;
    s32Ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, &stStop);
    s32Ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &stStop);

PSISI_FREE:
    HIADP_Search_DeInit();
    (HI_VOID)HIADP_Search_FreeAllPmt(g_pProgTbl);

    if (stCmdLine.pszFileName != HI_NULL)
    {
        g_bStopTsThread = HI_TRUE;
        s32Ret = pthread_join(g_TsThd, HI_NULL);
        s32Ret = pthread_mutex_destroy(&g_TsMutex);
    }

SND_DETACH:
    s32Ret = HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);
WIN_DESET:
    s32Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_FALSE);
WIN_DETACH:
    s32Ret = HI_UNF_VO_DetachWindow(hWin, hAvplay);
ACHN_CLOSE:
    s32Ret = HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
VCHN_CLOSE:
    s32Ret = HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);

AVPLAY_DESTROY:
    s32Ret = HI_UNF_AVPLAY_Destroy(hAvplay);

AVPLAY_DEINIT:
    s32Ret = HI_UNF_AVPLAY_DeInit();

TSBUF_FREE:
    if (stCmdLine.pszFileName != HI_NULL)
    {
        s32Ret = HI_UNF_DMX_DestroyTSBuffer(g_TsBuf);
    }

DMX_DEINIT:
    s32Ret = HI_UNF_DMX_DetachTSPort(0);
    s32Ret = HI_UNF_DMX_DeInit();
#ifdef GET_DATA_FROM_FILTER
    s32Ret = HI_FILTER_DeInit();
#endif
VO_DEINIT:
    s32Ret = HI_UNF_VO_DestroyWindow(hWin);
    s32Ret = HIADP_VO_DeInit();

DISP_DEINIT:
    s32Ret = HIADP_Disp_DeInit();

SND_DEINIT:
    s32Ret = HIADP_Snd_DeInit();

SYS_DEINIT:
    s32Ret = HI_SYS_DeInit();
    if (stCmdLine.pszFileName != HI_NULL)
    {
        fclose(g_pTsFile);
        g_pTsFile = HI_NULL;
    }

    return s32Ret;
}
