/**
 \ffile
 \brief file url
 \author Shenzhen Hisilicon Co., Ltd.
 \date 2008-2018
 \version 1.0
 \author
 \date 2010-02-10
 */

#define _LARGEFILE_SOURCE
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <ctype.h>
#include "hi_svr_format.h"
#include "test_protocol_args.h"
#include "hi_adp.h"

#define URL_PRINTF sample_printf

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

#define SVR_FILE_INVALID_FD    (-1)

/************************ Structure Definition **************************/
typedef struct tagTEST_PRI_FILE_MEMBER_S
{
    HI_S32 fd;
    HI_BOOL bEof;                      /* be end of file */
    HI_S32  s32ReadBytes;
    HI_S64  s32FileSize;
    TEST_PROTOCOL_EVENT_FN pfnCallBack;
} TEST_PRI_FILE_MEMBER_S;

static HI_S32 TEST_FILE_Find(const HI_CHAR *pszUrl);
static HI_S32 TEST_FILE_Open(const HI_CHAR * pszUrl, HI_FORMAT_URL_OPENFLAG_E eFlag, HI_HANDLE * pUrlHandle);
static HI_S32 TEST_FILE_Read(HI_HANDLE urlHandle, HI_U8 * pu8Buf, HI_S32 s32Size);
static HI_S64 TEST_FILE_Seek(HI_HANDLE urlHandle, HI_S64 s64Offsets, HI_S32 s32Whence);
static HI_S32 TEST_FILE_Close(HI_HANDLE urlHandle);
static HI_S32 TEST_FILE_ReadSeek(HI_HANDLE urlHandle, HI_S32 s32StreamIndex, HI_S64 s64Timestamp, HI_FORMAT_SEEK_FLAG_E eFlags);
static HI_S32 TEST_FILE_Invoke(HI_HANDLE urlHandle, HI_U32 u32InvokeId, HI_VOID *pArg);


/** file protocol */
HI_FORMAT_S g_stFormat_entry = {
    .pszDllName                  = (const HI_PCHAR )"libprivatefile.so",
    .pszFormatName               = "",
    .pszProtocolName             = "private file",
    .stLibVersion                = {1, 0, 0, 1},
    .pszFmtDesc                  = (const HI_PCHAR)"private protocol",
    .u32Merit                    = 0xFFFFFFFF,     /* 优先级必须大于0xFFFFFFEE，否则肯能不会被调用到 */
    .stDemuxerFun.fmt_find       = NULL,  /*lint !e651*/
    .stDemuxerFun.fmt_open       = NULL,
    .stDemuxerFun.fmt_getinfo    = NULL,
    .stDemuxerFun.fmt_read       = NULL,
    .stDemuxerFun.fmt_free       = NULL,
    .stDemuxerFun.fmt_close      = NULL,
    .stDemuxerFun.fmt_seek_pts   = NULL,
    .stDemuxerFun.fmt_seek_pos   = NULL,
    .stDemuxerFun.fmt_invoke     = NULL,

    .stProtocolFun.url_find      = TEST_FILE_Find,
    .stProtocolFun.url_open      = TEST_FILE_Open,
    .stProtocolFun.url_read      = TEST_FILE_Read,
    .stProtocolFun.url_seek      = TEST_FILE_Seek,
    .stProtocolFun.url_close     = TEST_FILE_Close,
    .stProtocolFun.url_read_seek = TEST_FILE_ReadSeek,
    .stProtocolFun.url_invoke    = TEST_FILE_Invoke,

    .next           = NULL,
    .pDllModule     = NULL,
    .u32PrivateData = 0
};

static HI_S32 TEST_FILE_Find(const HI_CHAR *pszUrl)
{
    HI_CHAR aszProtocol[32];

    memset(aszProtocol, 0, 32);
    strncpy(aszProtocol, "myfile:", sizeof(aszProtocol) - 1);

    if (!strncasecmp(pszUrl, aszProtocol, strlen(aszProtocol)))
    {
        URL_PRINTF("INFO: use private file protocol! \n");
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

static HI_S32 TEST_FILE_Open(const HI_CHAR *pszUrl, HI_FORMAT_URL_OPENFLAG_E eFlag, HI_HANDLE *pUrlHandle)
{
//    HI_CHAR *pszFlieUrl = (HI_CHAR*)pszUrl;
    TEST_PRI_FILE_MEMBER_S *pstUrlMember = NULL;

    if (NULL == pszUrl || NULL == pUrlHandle)
    {
        URL_PRINTF("INFO: invalid param\n");
        return HI_FAILURE;
    }

    HI_CHAR *p = strcasestr(pszUrl, "myfile:");

    if (NULL == p)
    {
        URL_PRINTF("INFO: not support url\n");
        return HI_FAILURE;
    }

    p = p + strlen("myfile:");

    URL_PRINTF("INFO: real url is: %s \n", p);

    pstUrlMember = (TEST_PRI_FILE_MEMBER_S*)malloc(sizeof(TEST_PRI_FILE_MEMBER_S));

    if (NULL == pstUrlMember)
    {
        URL_PRINTF("INFO: malloc handle fail\n");
        return HI_FAILURE;
    }

    memset(pstUrlMember, 0, sizeof(TEST_PRI_FILE_MEMBER_S));

    if (HI_FORMAT_URL_OPEN_RDWR == eFlag)
    {
        //pstUrlMember->fd = open(p, O_CREAT | O_TRUNC | O_RDWR, 0666);
        pstUrlMember->fd = open(p, O_RDONLY, 0666);//Important! Open in ReadOnly mode
        //if read fail in RW mode, read in readonly
        if(SVR_FILE_INVALID_FD == pstUrlMember->fd)
        {
            URL_PRINTF("INFO: Open(%s) in readwrite mode (fd=%d) \n", p, pstUrlMember->fd);
            pstUrlMember->fd = open(p, O_RDONLY, 0666);
            URL_PRINTF("INFO: Open(%s) in readonly  mode (fd=%d) \n", p, pstUrlMember->fd);
        }
    }
    else
    {
        pstUrlMember->fd = open(p, O_RDONLY, 0666);
    }

    if (SVR_FILE_INVALID_FD == pstUrlMember->fd)
    {
        URL_PRINTF("INFO: file open fail\n");
        if (pstUrlMember)
        {
            free(pstUrlMember);
            pstUrlMember = NULL;
        }
        //PLAYER_FREE(pstUrlMember);//z00180556 unreference symbol
        return HI_FAILURE;
    }

    /* reset cache info */

    pstUrlMember->bEof = HI_FALSE;
    pstUrlMember->s32ReadBytes = 0;
    pstUrlMember->s32FileSize = -1;
    *pUrlHandle = (HI_HANDLE)pstUrlMember;

    return HI_SUCCESS;
}

static HI_S32 TEST_FILE_Read(HI_HANDLE urlHandle, HI_U8 *pu8Buf, HI_S32 s32Size)
{
    HI_S32 size = 0;
    TEST_PRI_FILE_MEMBER_S *pstUrlMember = (TEST_PRI_FILE_MEMBER_S*)urlHandle;

    if (NULL == pstUrlMember || NULL == pu8Buf)
    {
        URL_PRINTF("INFO: invalid param \n");
        return HI_FAILURE;
    }

    if (SVR_FILE_INVALID_FD == pstUrlMember->fd)
    {
        URL_PRINTF("INFO: file not open \n");
        return HI_FAILURE;
    }

    size = read(pstUrlMember->fd, pu8Buf, s32Size);

    if (size < s32Size)
    {
        if ((pstUrlMember->s32FileSize < 0) || (pstUrlMember->s32FileSize > 0
            && (size + pstUrlMember->s32ReadBytes) >= pstUrlMember->s32FileSize))
        {
            pstUrlMember->bEof = HI_TRUE;
        }
    }

    pstUrlMember->s32ReadBytes += size;

    if (pstUrlMember->pfnCallBack)
    {
        TEST_EVENT_S stData;
        stData.type = 1;
        stData.Args = &(pstUrlMember->s32ReadBytes);
        pstUrlMember->pfnCallBack(&stData);
    }

    return size;
}

static HI_S64 TEST_FILE_Seek(HI_HANDLE urlHandle, HI_S64 s64Offsets, HI_S32 s32Whence)
{
    HI_S64 offset = 0;
    TEST_PRI_FILE_MEMBER_S *pstUrlMember = (TEST_PRI_FILE_MEMBER_S*)urlHandle;

    if (NULL == pstUrlMember)
    {
        URL_PRINTF("INFO: invalid param \n");
        return HI_FAILURE;
    }

    if (SVR_FILE_INVALID_FD == pstUrlMember->fd)
    {
        URL_PRINTF("INFO: file not open \n");
        return HI_FAILURE;
    }

    offset = lseek(pstUrlMember->fd, s64Offsets, s32Whence);

    return offset;
}

static HI_S32 TEST_FILE_Close(HI_HANDLE urlHandle)
{
    TEST_PRI_FILE_MEMBER_S *pstUrlMember = (TEST_PRI_FILE_MEMBER_S*)urlHandle;

    if (NULL == pstUrlMember)
    {
        URL_PRINTF("INFO: invalid param \n");
        return HI_FAILURE;
    }

    if (SVR_FILE_INVALID_FD == pstUrlMember->fd)
    {
        URL_PRINTF("INFO: file not open \n");
        return HI_FAILURE;
    }

    close(pstUrlMember->fd);
    memset(pstUrlMember, 0, sizeof(TEST_PRI_FILE_MEMBER_S));
    free(pstUrlMember);

    return HI_SUCCESS;
}

static HI_S32 TEST_FILE_ReadSeek(HI_HANDLE urlHandle, HI_S32 s32StreamIndex, HI_S64 s64Timestamp, HI_FORMAT_SEEK_FLAG_E eFlags)
{
    //PLAYER_ERRO(0, "not support this operation!");
    return HI_FAILURE;
}

static HI_S32 TEST_FILE_Invoke(HI_HANDLE urlHandle, HI_U32 u32InvokeId, HI_VOID *pArg)
{
    sample_printf("%s,%d,TEST_FILE_Invoke 11111111111111111 :%d\n",__FILE__,__LINE__, u32InvokeId);
    TEST_PRI_FILE_MEMBER_S *pstUrlMember = (TEST_PRI_FILE_MEMBER_S*)urlHandle;
    if (NULL == pstUrlMember)
    {
        sample_printf("\n\ninvalid param\n");
        return HI_FAILURE;
    }
    HI_S32 s32Ret = HI_SUCCESS;

    if (HI_FORMAT_INVOKE_PROTOCOL_USER == u32InvokeId)
    {
        TEST_PROTOCOL_ARGS *pstArgs=(TEST_PROTOCOL_ARGS*)pArg;
        sample_printf("%s,%d, cmdtype:%d\n",__FILE__,__LINE__,pstArgs->s32Cmd);
        switch (pstArgs->s32Cmd)
        {
            case TEST_CMD_TYPE_FILESIZE:
                if (pstArgs->args == NULL)break;
                HI_S32* filesize = (HI_S32*)(pstArgs->args);
                if (*filesize > 0)
                    pstUrlMember->s32FileSize = *filesize;
                break;
            case TEST_CMD_TYPE_CALLBACK:
                if (pstArgs->pfnCallback == NULL)break;
                pstUrlMember->pfnCallBack = pstArgs->pfnCallback;
                break;
            default:
                break;
        }
    }
    sample_printf("%s,%d,TEST_FILE_Invoke 11111111111111111\n",__FILE__,__LINE__);
    return s32Ret;
}

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */


