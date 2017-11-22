#include "ui_share.h"
#include "ffs.h"

static MBT_CHAR *uiv_cTimerFileName= "root/TimerFile";
const MBT_CHAR *cav_EmailFile = "root/EmailFile";

/*timer文件操作开始*/
MBT_VOID uif_RemoveTimerFile(MBT_VOID)
{
    FFST_FileHandle hFile;
    if(FFSF_FileOpen( (MBT_CHAR *)uiv_cTimerFileName , FFSM_OpenExist, &hFile ) == FFSM_ErrorNoError)
    {
        FFSF_FileClose(hFile);
        FFSF_FileDelete((MBT_CHAR *)uiv_cTimerFileName);
    }
}



MBT_VOID uif_SetTimer2File(EPG_TIMER_M *pEpgTimer,TIMER_M *pTimer)
{
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;
    MBT_U32 u32FileSize;
    MBT_CHAR *uBuffer;
    u32FileSize = sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM+sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM;
    uBuffer = (MBT_VOID*)uif_ForceMalloc(u32FileSize);
    if(MM_NULL == pEpgTimer||MM_NULL == pTimer||MM_NULL==uBuffer)
    {
        return;
    }
    memcpy(uBuffer+sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM,pTimer, sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);     
    memcpy(uBuffer,pEpgTimer,sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
    Error=FFSF_FileOpen( (MBT_CHAR *)uiv_cTimerFileName , FFSM_OpenExist, &hFile );
    if(Error == FFSM_ErrorNoError)
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)uiv_cTimerFileName  , FFSM_OpenWrite, &hFile);
    }
    else
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)uiv_cTimerFileName  , FFSM_OpenCreate, &hFile);
    }
    Error = FFSF_FileWrite(hFile, (MBT_U8 *)(uBuffer), u32FileSize, &u32LengthActual);
    Error = FFSF_FileClose(hFile);
    uif_ForceFree(uBuffer);
}


MBT_VOID uif_GetTimerFromFile(EPG_TIMER_M *pEpgTimer,TIMER_M *pTimer)
{
    FFST_FileHandle hFile;
    MBT_U32 u32FileLength;
    MBT_U32 u32LengthActual;
    FFST_ErrorCode Error;
    MBT_U32 u32FileSize;
    MBT_CHAR *uBuffer;
    if(MM_NULL == pEpgTimer||MM_NULL == pTimer)
    {
        return;
    }
    u32FileSize = sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM+sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM;
    Error = FFSF_FileOpen( (MBT_CHAR *)uiv_cTimerFileName , FFSM_OpenExist, &hFile);
    if(Error!=FFSM_ErrorNoError)
    {
        memset(pEpgTimer,0,sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
        memset(pTimer,0,sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
        pTimer[0].hour = 19;
        pTimer[1].hour = 19;
        pTimer[2].hour = 19;
        return;
    }
    uBuffer = (MBT_VOID*)uif_ForceMalloc(u32FileSize);
    if(MM_NULL==uBuffer)
    {
        memset(pEpgTimer,0,sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
        memset(pTimer,0,sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
        pTimer[0].hour = 19;
        pTimer[1].hour = 19;
        pTimer[2].hour = 19;
        return;
    }
    Error = FFSF_FileOpen( (MBT_CHAR *)uiv_cTimerFileName , FFSM_OpenReadWrite, &hFile);
    Error=FFSF_FileSize(hFile,&u32FileLength);
    if(u32FileLength!=u32FileSize)
    {
        u32FileLength = u32FileSize;
        memset(pEpgTimer,0,sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
        memset(pTimer,0,sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
        pTimer[0].hour = 19;
        pTimer[1].hour = 19;
        pTimer[2].hour = 19;
        Error =  FFSF_FileWrite(hFile, (MBT_U8 *) uBuffer,u32FileLength, &u32LengthActual);
    }
    else
    {
        Error=FFSF_FileRead(hFile, (MBT_U8 *)uBuffer, u32FileLength, &u32LengthActual);
        memcpy((MBT_CHAR *) pEpgTimer, uBuffer, sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM);
        memcpy((MBT_CHAR *) pTimer, (uBuffer+sizeof(EPG_TIMER_M)*MAX_EPG_TIMER_NUM), sizeof(TIMER_M)*MAX_TRIGER_TIMER_NUM);
    }
    Error = FFSF_FileClose(hFile);
    uif_ForceFree(uBuffer);
}

/*timer文件操作结束*/

