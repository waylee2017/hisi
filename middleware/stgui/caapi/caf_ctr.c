
#include <stdio.h>
#include <string.h>	 
#include <stdlib.h>	 
#include "section_api.h"
#include "cas_iner.h"
#include "nvm_api.h"
#include "ffs.h"
#include "ospctr.h"
#include "appblast.h"
#include "envopt.h"
#include "dbs_api.h"

/********************************************************************************************************************************************/

#define MultiEcm_Enable 0


#define CAPSIM_KEY_LENGTH				8

typedef enum _smc_cmd_type_e
{
    m_SmcCmd_CardIN,
    m_SmcCmd_CardOut,
    m_SmcCmd_StartEcm,
    m_SmcCmd_StopEcm,
    m_SmcCmd_StartMulti,
}SMC_CMDType_E;

#define m_MaxDummyEcmCtr 16

typedef struct {
    SMC_CMDType_E   eCmdType;
    MBT_U16 u16EcmCtrNum;
    MBT_U16 u16CurServiceID;
    MBT_U32 u32TransInfo;
    CA_STEcmCtr stEcmCtr[m_MaxDummyEcmCtr];
}SMC_CmdMsg;

typedef struct	ca_ecmfilterctr_t
{
    MBT_U8 u8Valid;
    MBT_U8 u8FilterID;
    MBT_U16 u16EcmPID;
}CA_STEcmFilterCtr;

typedef struct	ca_desctr_t
{
    MBT_U16 u16ServiceID;
    MBT_U16 u16EcmPID;
    MBT_U32 u32TransInfo;
    MET_DescramblerHandle stDescrambHanel;
}CA_STDesCtr;

typedef struct	ca_keycach_t
{
    MBT_U8 u8Valid;
    MBT_U8 u8Reserved;
    MBT_U16 u16EcmPID;
    MBT_U32 u32TimeStamp;
    MBT_U8 u8OddKey[8];
    MBT_U8 u8EvenKey[8];
}CA_STKeyCach;

#define CAS_MAX_DESCNUM	 2

static MET_Sem_T cav_psemDescAccess = MM_INVALID_HANDLE;
static MET_Sem_T cav_psemSmcAccess = MM_INVALID_HANDLE;
static MET_Sem_T cav_psemFilterAccess = MM_INVALID_HANDLE;

#if(1 == M_PRINT_ECMCARDTIME) 
MBT_U32 cav_u32StartEcmTime = 0;
MBT_U32 cav_u32SetFilterTime = 0;
MBT_U32 cav_u32GetEcmTime = 0;
#endif


#if(1 == M_CDCA)

MBT_U8 cav_u8CaLibAskedForNit = 0;
MBT_CHAR cav_byParentCardSN[17] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

MBT_U8 cav_u8Atr[32];
MBT_U32 cav_u32AtrLen = 0;
MBT_U8 cav_u8CardID[4] = {0,0,0,1};

static MBT_U8 cav_u8FeedData[256]; 
static MBT_U8 cav_u8FeedDataLen = 0;

static MBT_U8 cav_u8SerialNumberCmd[] = {0x80,0x46,0x00,0x00,0x04,0x07,0x00,0x00,0x08};
static MBT_U8 cav_u8CardIDSNCmd[] = {0x80,0x46,0x00,0x00,0x04,0x01,0x00,0x00,0x14};
static MBT_U8 cav_u8ReadSerailCmd[] = {0x00,0xc0,0x00,0x00,0x14};
static MBT_U8 cav_u8ReadIDSNCmd[] = {0x00,0xc0,0x00,0x00,0x14};

static MBT_U8 cav_u8CardSN[17];
static MBT_U8 cav_u8SerialNumber[8];
#endif

static CAS_STDesMode_E cav_eDesMode = m_casDesmode_Single;
static MBT_U16 cav_u16CurPrgServiceID = cam_InvalidPID;
static MBT_U8 cav_u8CheckedDesMode = 0;


static CA_STKeyCach cav_stKeyCath[m_MaxDummyEcmCtr] = 
{
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
    {0,0,cam_InvalidPID,0,{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}},
};
static CA_STEcmCtr cav_stCurEcmCtr = 
{
    cam_InvalidPID,
    0,
    0,
    {
        {cam_InvalidPID,0,0,{cam_InvalidPID,cam_InvalidPID}},
        {cam_InvalidPID,0,0,{cam_InvalidPID,cam_InvalidPID}},
    }
}; 
static MET_Msg_T cav_pstSmcMsg = MM_INVALID_HANDLE;
static CA_STDesCtr cav_stDesHandleCtr[CAS_MAX_DESCNUM] = {{cam_InvalidID,cam_InvalidPID,cam_InvalidTransInfo,MM_PTI_INVALIDHANDLE},{cam_InvalidID,cam_InvalidPID,cam_InvalidTransInfo,MM_PTI_INVALIDHANDLE}};
static CA_STEcmFilterCtr cav_stEcmFilterCtr[m_MaxDummyEcmCtr] = 
{
    {0,ECM_FILTER1,cam_InvalidPID},
    {0,ECM_FILTER2,cam_InvalidPID},
    {0,ECM_FILTER3,cam_InvalidPID},
    {0,ECM_FILTER4,cam_InvalidPID},
    {0,ECM_FILTER5,cam_InvalidPID},
    {0,ECM_FILTER6,cam_InvalidPID},
    {0,ECM_FILTER7,cam_InvalidPID},
    {0,ECM_FILTER8,cam_InvalidPID},
    {0,ECM_FILTER9,cam_InvalidPID},
    {0,ECM_FILTER10,cam_InvalidPID},
    {0,ECM_FILTER11,cam_InvalidPID},
    {0,ECM_FILTER12,cam_InvalidPID},
    {0,ECM_FILTER13,cam_InvalidPID},
    {0,ECM_FILTER14,cam_InvalidPID},
    {0,ECM_FILTER15,cam_InvalidPID},
};







MBT_VOID caf_FreeEcmFilterHandle(MBT_U16 wPid);
MBT_U32 caf_GetEcmFilterHandle(MET_PTI_PID_T stEcmPid);
static MBT_VOID caf_FreeAllEcmFilterHandle(MBT_VOID);
static MBT_VOID caf_StartMultiEcm(MBT_U16 u16CurServiceID,CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum);



void CAF_DescAccess_Lock(void)
{
	if (MM_INVALID_HANDLE != cav_psemDescAccess)
	{
		MLMF_Sem_Wait(cav_psemDescAccess,MM_SYS_TIME_INIFIE);
	}
}

void CAF_DescAccess_UnLock(void)
{
	if (MM_INVALID_HANDLE != cav_psemDescAccess)
	{
		MLMF_Sem_Release(cav_psemDescAccess);
	}
}

void CAF_SmcAccess_Lock(void)
{
	if (MM_INVALID_HANDLE != cav_psemSmcAccess)
	{
		MLMF_Sem_Wait(cav_psemSmcAccess,MM_SYS_TIME_INIFIE);
	}
}

void CAF_SmcAccess_UnLock(void)
{
	if (MM_INVALID_HANDLE != cav_psemSmcAccess)
	{
		MLMF_Sem_Release(cav_psemSmcAccess);
	}
}

void CAF_FilterAccess_Lock(void)
{
	if (MM_INVALID_HANDLE != cav_psemFilterAccess)
	{
		MLMF_Sem_Wait(cav_psemFilterAccess,MM_SYS_TIME_INIFIE);
	}
}

void CAF_FilterAccess_UnLock(void)
{
	if (MM_INVALID_HANDLE != cav_psemFilterAccess)
	{
		MLMF_Sem_Release(cav_psemFilterAccess);
	}
}


MBT_S32 CAF_GetFeedData(MBT_U16 u16TVSID)
{
#if(1 == M_CDCA) 
    return CDCASTB_ReadFeedDataFromParent(u16TVSID, cav_u8FeedData,&cav_u8FeedDataLen);
#else
    UNUSED_PARAM(u16TVSID);
    return 0;
#endif
}

MBT_S32  CAF_SetFeedData(MBT_U16 u16TVSID)
{
#if(1 == M_CDCA) 
    MBT_S32 iRet = CDCA_RC_CARD_INVALID;
    if(0 != cav_u8FeedDataLen)
    {
        CDCA_U8 bIsChild;
        CDCA_TIME stLastFeedTime;
        MBT_U16 byDelayTime;
        CDCA_BOOL bIsCanFeed = MM_TRUE;
        MBT_CHAR byParentCardSN[16+1];
        iRet = CDCASTB_GetOperatorChildStatus(u16TVSID,&bIsChild,&byDelayTime,&stLastFeedTime,byParentCardSN,&bIsCanFeed);
        /*bIsCanFeed在此处不能再被判断，有可能后台已经喂养成功但是如果这里做判断就会给出
        喂养时间未到的提示，而正确的提示应该是喂养成功*/
        if(CDCA_RC_OK == iRet)
        {
            if(bIsChild)
            {
                iRet = CDCASTB_WriteFeedDataToChild(u16TVSID,cav_u8FeedData,cav_u8FeedDataLen);
                cav_u8FeedDataLen = 0;
            }
            else
            {
                iRet = CDCA_RC_CARD_TYPEERROR;
            }
        }
    }

    return iRet;
#else
    UNUSED_PARAM(u16TVSID);
    return 0;
#endif    

}

#ifdef M_DSCDBG
static MBT_VOID dbgf_printfdatagot( CDCA_U8        byReqID,
								  	CDCA_BOOL      bTimeout,
									CDCA_U16       wPid,
									const CDCA_U8* pbyReceiveData,
									CDCA_U16       wLen            )
{
    MBT_U32 i;
    MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = %d:wPid = 0x%04x:pbyReceiveData = ",byReqID,bTimeout,wPid);
    if(wLen)
    {
        for(i = 0;i < wLen;i++)
        {
            MLMF_Print("%02x ",pbyReceiveData[i]);
        }
        MLMF_Print(",wLen = %d\n",wLen);
    }
    else
    {
        MLMF_Print("NULL,wLen = %d\n",wLen);
    }
}
#endif

#if(1 == M_CDCA) 
MBT_VOID CAF_GetRegin(MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen)
{
    if(cav_u8CaLibAskedForNit == 1)
    {
        //CA_DEBUG(("CAF_GetRegin pass CDCASTB_PrivateDataGot\n"));
        CDCASTB_PrivateDataGot (0x81 , CDCA_FALSE, NIT_PID, pu8MsgData, uSectionLen ) ;
#ifdef M_DSCDBG
        dbgf_printfdatagot(0x81 , CDCA_FALSE, NIT_PID, pu8MsgData, uSectionLen );
#endif        
        cav_u8CaLibAskedForNit = 0;
    }
}

MBT_VOID Caf_GetRegID1(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen)
{
    MONITER_SECTION stFilterIndex;
    MBT_BOOL bValid = MM_TRUE;
    CAF_FilterAccess_Lock();
    stFilterIndex = SRSTF_GetMonitorFilterIndex(stFilterHandle);
    if(stFilterIndex < MAX_MONITOR_SECTION)
    {
        caf_FreeEcmFilterHandle(stCurPid);
    }
    else
    {
        bValid = MM_FALSE;
        CA_DEBUG(("Caf_GetRegID1 stFilterHandle = %x pid = %x tableid = %x\n",stFilterHandle,stCurPid,pu8MsgData[0]));
    }
    CAF_FilterAccess_UnLock();
    if(MM_TRUE == bValid)
    {
#if(1 == M_PRINT_ECMCARDTIME) 
        cav_u32GetEcmTime = MLMF_SYS_GetMS();
#endif    
        //MLMF_Print("Caf_GetRegID1 %x %x\n",stCurPid,pu8MsgData[0]);
        CDCASTB_PrivateDataGot (0x81 , CDCA_FALSE, stCurPid, pu8MsgData, uSectionLen ) ;
    }
#ifdef M_DSCDBG
    dbgf_printfdatagot(0x81 , CDCA_FALSE, stCurPid, pu8MsgData, uSectionLen );
#endif        
}

MBT_VOID reg1_TimerCallBack(MBT_U32 u32Para[])
{
    CAF_FilterAccess_Lock();
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    caf_FreeEcmFilterHandle(u32Para[3]);
    CAF_FilterAccess_UnLock();
    CA_DEBUG(("reg1_TimerCallBack filterhandle = %x pid = %x\n",(MET_PTI_FilterHandle_T)(u32Para[0]),u32Para[3]));
    CDCASTB_PrivateDataGot (0x81 , CDCA_TRUE, u32Para[3], MM_NULL, 0 ) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(0x81 , CDCA_TRUE, u32Para[3], MM_NULL, 0 );
#endif        
}

MBT_VOID Caf_GetRegID2( MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData,MBT_S32 uSectionLen)
{
    //CA_DEBUG(("Caf_GetRegID2 pid = %x tabldid = %x\n",stCurPid,pu8MsgData[0]));
    CDCASTB_PrivateDataGot (2, CDCA_FALSE, stCurPid, pu8MsgData, uSectionLen) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(2, CDCA_FALSE, stCurPid, pu8MsgData, uSectionLen);
#endif        
}

MBT_VOID reg2_TimerCallBack(MBT_U32 u32Para[])
{
    CA_DEBUG(("reg2_TimerCallBack pid = %x\n",u32Para[3]));
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    CDCASTB_PrivateDataGot (2 , CDCA_TRUE, u32Para[3], MM_NULL, 0 ) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(2 , CDCA_TRUE, u32Para[3], MM_NULL, 0 );
#endif        
}

MBT_VOID Caf_GetRegID3(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData,MBT_S32 uSectionLen)
{
    CA_DEBUG(("Caf_GetRegID3 pid = %x\n",stCurPid));
    CDCASTB_PrivateDataGot (3, CDCA_FALSE, stCurPid, pu8MsgData, uSectionLen ) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(3, CDCA_FALSE, stCurPid, pu8MsgData, uSectionLen );
#endif        
}

MBT_VOID reg3_TimerCallBack(MBT_U32 u32Para[])
{
    CA_DEBUG(("reg3_TimerCallBack pid = %x\n",u32Para[3]));
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    CDCASTB_PrivateDataGot (3 , CDCA_TRUE, u32Para[3], MM_NULL, 0 ) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(3 , CDCA_TRUE, u32Para[3], MM_NULL, 0 );
#endif        
}

MBT_VOID Caf_GetRegID4(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData,MBT_S32 uSectionLen)
{
    CA_DEBUG(("Caf_GetRegID4 pid = %x\n",stCurPid));
    CDCASTB_PrivateDataGot (4, CDCA_FALSE, stCurPid, pu8MsgData,uSectionLen) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(4, CDCA_FALSE, stCurPid, pu8MsgData,uSectionLen);
#endif        
}

MBT_VOID reg4_TimerCallBack(MBT_U32 u32Para[])
{
    CA_DEBUG(("reg4_TimerCallBack pid = %x\n",u32Para[3]));
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    CDCASTB_PrivateDataGot (4 , CDCA_TRUE, u32Para[3], MM_NULL, 0 ) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(4 , CDCA_TRUE, u32Para[3], MM_NULL, 0 );
#endif        
}

MBT_VOID Caf_GetRegID5(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData,MBT_S32 uSectionLen)
{
    CA_DEBUG(("Caf_GetRegID5 pid = %x\n",stCurPid));
    CDCASTB_PrivateDataGot (5, CDCA_FALSE, stCurPid, pu8MsgData,  uSectionLen) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(5, CDCA_FALSE, stCurPid, pu8MsgData,  uSectionLen);
#endif        
}

MBT_VOID reg5_TimerCallBack(MBT_U32 u32Para[])
{
    CA_DEBUG(("reg5_TimerCallBack pid = %x\n",u32Para[3]));
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    CDCASTB_PrivateDataGot (5 , CDCA_TRUE, u32Para[3], MM_NULL, 0 ) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(5 , CDCA_TRUE, u32Para[3], MM_NULL, 0 );
#endif        
}

MBT_VOID Caf_GetRegID6(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData,MBT_S32 uSectionLen)
{
    CA_DEBUG(("Caf_GetRegID6 pid = %x\n",stCurPid));
    CDCASTB_PrivateDataGot (6, CDCA_FALSE, stCurPid, pu8MsgData, uSectionLen  ) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(6, CDCA_FALSE, stCurPid, pu8MsgData, uSectionLen  );
#endif        
}

MBT_VOID reg6_TimerCallBack(MBT_U32 u32Para[])
{
    CA_DEBUG(("reg6_TimerCallBack pid = %x\n",u32Para[3]));
    SRSTF_ClsTrigerTimer((MET_PTI_FilterHandle_T)u32Para[0],(ParseCallBack)u32Para[2]);
    CDCASTB_PrivateDataGot (6 , CDCA_TRUE, u32Para[3], MM_NULL, 0 ) ;
#ifdef M_DSCDBG
    dbgf_printfdatagot(6 , CDCA_TRUE, u32Para[3], MM_NULL, 0 );
#endif        
}
//#endif
#endif

//#define M_DSCDBG 1

static MBT_VOID caf_Putkey2KeyCach(CDCA_U16 wEcmPID,const CDCA_U8* pbyOddKey,const CDCA_U8* pbyEvenKey)
{
    MBT_U8 i;
    CA_STKeyCach *pstKeyCach;
    CA_STKeyCach *pstFreeKeyCach = MM_NULL;
    pstKeyCach = cav_stKeyCath;
    for(i = 0;i < m_MaxDummyEcmCtr;i ++)
    {
        if(pstKeyCach->u16EcmPID == wEcmPID)
        {
            //CA_DEBUG(("[caf_Putkey2KeyCach]wEcmPID = %x Oddkey %02x %02x %02x %02x %02x %02x %02x %02x \n",wEcmPID,pbyOddKey[0],pbyOddKey[1],pbyOddKey[2],pbyOddKey[3],pbyOddKey[4],pbyOddKey[5],pbyOddKey[6],pbyOddKey[7]));
            //CA_DEBUG(("------------------------------->Evenkey %02x %02x %02x %02x %02x %02x %02x %02x \n",pbyEvenKey[0],pbyEvenKey[1],pbyEvenKey[2],pbyEvenKey[3],pbyEvenKey[4],pbyEvenKey[5],pbyEvenKey[6],pbyEvenKey[7]));
            memcpy(pstKeyCach->u8OddKey,pbyOddKey,8);
            memcpy(pstKeyCach->u8EvenKey,pbyEvenKey,8);
            pstKeyCach->u8Valid = 1;
            pstKeyCach->u32TimeStamp = MLMF_SYS_GetMS();            
            break;
        }

        if(MM_NULL == pstFreeKeyCach&&0 == pstKeyCach->u8Valid)
        {
            pstFreeKeyCach = pstKeyCach;
        }
        pstKeyCach++;
    }

    if(MM_NULL == pstFreeKeyCach)
    {
        return;
    }

    pstFreeKeyCach->u16EcmPID = wEcmPID;
    CA_DEBUG(("[caf_Putkey2KeyCach]wEcmPID = %x Oddkey %02x %02x %02x %02x %02x %02x %02x %02x \n",wEcmPID,pbyOddKey[0],pbyOddKey[1],pbyOddKey[2],pbyOddKey[3],pbyOddKey[4],pbyOddKey[5],pbyOddKey[6],pbyOddKey[7]));
    CA_DEBUG(("------------------------------->Evenkey %02x %02x %02x %02x %02x %02x %02x %02x \n",pbyEvenKey[0],pbyEvenKey[1],pbyEvenKey[2],pbyEvenKey[3],pbyEvenKey[4],pbyEvenKey[5],pbyEvenKey[6],pbyEvenKey[7]));
    memcpy(pstFreeKeyCach->u8OddKey,pbyOddKey,8);
    memcpy(pstFreeKeyCach->u8EvenKey,pbyEvenKey,8);
    pstFreeKeyCach->u8Valid = 1;
}

static MBT_VOID caf_ResetKeyCach(CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum)
{
    MBT_U8 i,k,m;
    MBT_U8 u8NewEcmNum = 0;
    MBT_U16 wEcmPID;
    MBT_U16 u16NewEcmPID[m_MaxDummyEcmCtr];
    CA_STKeyCach *pstKeyCach;
    CA_STPIDINFO *pstCasInfo;
    
    pstKeyCach = cav_stKeyCath;
    for(m = 0;m < m_MaxDummyEcmCtr;m ++)
    {
        pstKeyCach->u8Valid = 0;
        pstKeyCach++;
    }

    for(i = 0;i < s32EcmCtrNum;i ++)
    {
        if(1 == pstEcmCtr[i].u8Valid)
        {
            pstCasInfo = pstEcmCtr[i].stDecPidInfo;
            for(k = 0;k < pstEcmCtr[i].u8EcmPIDNum;k ++)
            {
                wEcmPID = pstCasInfo[k].stEcmPid;
                if(cam_InvalidPID != wEcmPID)
                {
                    pstKeyCach = cav_stKeyCath;
                    for(m = 0;m < m_MaxDummyEcmCtr;m ++)
                    {
                        if(pstKeyCach->u16EcmPID == wEcmPID)
                        {
                            pstKeyCach->u8Valid = 1;
                            break;
                        }
                        pstKeyCach++;
                    }

                    if(m >= m_MaxDummyEcmCtr)
                    {
                        u16NewEcmPID[u8NewEcmNum] = wEcmPID;
                        u8NewEcmNum++;
                    }
                }
            }
        }
    }

    for(i = 0;i < u8NewEcmNum;i ++)
    {
        pstKeyCach = cav_stKeyCath;
        for(m = 0;m < m_MaxDummyEcmCtr;m ++)
        {
            if(0 == pstKeyCach->u8Valid)
            {
                pstKeyCach->u16EcmPID = u16NewEcmPID[i];
                break;
            }
            pstKeyCach++;
        }
    }
}

static MBT_BOOL caf_GetKeyCach(MBT_U16 u6EcmPID,MBT_U8 *pu8OddKey,MBT_U8 *pu8EvenKey)
{
    MBT_U32 u32Time;
    MBT_U8 i;
    CA_STKeyCach *pstKeyCach;
    
    pstKeyCach = cav_stKeyCath;
    for(i = 0;i < m_MaxDummyEcmCtr;i ++)
    {
        if(u6EcmPID == pstKeyCach->u16EcmPID)
        {
            u32Time = MLMF_SYS_GetMS() - pstKeyCach->u32TimeStamp;
            if(u32Time < 10000)
            {
                memcpy(pu8OddKey,pstKeyCach->u8OddKey,8);
                memcpy(pu8EvenKey,pstKeyCach->u8EvenKey,8);
                //MLMF_Print("[caf_GetKeyCach]EcmPID = %x Oddkey %02x %02x %02x %02x %02x %02x %02x %02x \n",u6EcmPID,pu8OddKey[0],pu8OddKey[1],pu8OddKey[2],pu8OddKey[3],pu8OddKey[4],pu8OddKey[5],pu8OddKey[6],pu8OddKey[7]);
                //MLMF_Print("-------------------------->Evenkey %02x %02x %02x %02x %02x %02x %02x %02x \n",pu8EvenKey[0],pu8EvenKey[1],pu8EvenKey[2],pu8EvenKey[3],pu8EvenKey[4],pu8EvenKey[5],pu8EvenKey[6],pu8EvenKey[7]);
                break;
            }
            else
            {
                //MLMF_Print("[caf_GetKeyCach]key expired %d\n",u32Time);
            }
        }
        pstKeyCach++;
    }

    if(i >= m_MaxDummyEcmCtr)
    {
        //MLMF_Print("[caf_GetKeyCach]Can not find cachkey u6EcmPID = %x\n",u6EcmPID);
        return MM_FALSE;
    }
    return MM_TRUE;
}

static MBT_VOID caf_SendStartEcmCmd(CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum,MBT_U16 u16CurServiceID)
{
    SMC_CmdMsg stMsg;
    stMsg.eCmdType = m_SmcCmd_StartEcm;
    stMsg.u16EcmCtrNum = s32EcmCtrNum;
    stMsg.u16CurServiceID = u16CurServiceID;
    memcpy(stMsg.stEcmCtr,pstEcmCtr,s32EcmCtrNum*sizeof(CA_STEcmCtr));
    MLMF_Msg_SendMsg(cav_pstSmcMsg,&stMsg,sizeof(SMC_CmdMsg),MM_SYS_TIME_INIFIE);
}


static MBT_VOID caf_SendStartMultiEcmCmd(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID)
{
    SMC_CmdMsg stMsg;
    stMsg.eCmdType = m_SmcCmd_StartMulti;
    stMsg.u16CurServiceID = u16ServiceID;
    stMsg.u32TransInfo = u32TransInfo;
    MLMF_Msg_SendMsg(cav_pstSmcMsg,&stMsg,sizeof(SMC_CmdMsg),MM_SYS_TIME_INIFIE);
}




static MBT_VOID caf_SetEcmPID2CA(CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum,MBT_U16 u16CurServiceID)
{
#if(1 == M_CDCA)
    SCDCASServiceInfo ServiceInfo;    
#ifdef M_DSCDBG
    MLMF_Print("CDCASTB_SetEcmPid invoked : byType = %d pServiceInfo = NULL\n",CDCA_LIST_FIRST);
#endif   
    ServiceInfo.m_byServiceNum = 1;
    ServiceInfo.m_wServiceID[0] = u16CurServiceID;
    CDCASTB_SetEcmPid(CDCA_LIST_FIRST,MM_NULL) ;
    if(MM_NULL != pstEcmCtr)
    {
        MBT_S32 i,k;
        CA_STPIDINFO *pstCasInfo;
        for(i = 0;i < s32EcmCtrNum;i ++)
        {
            if(1 == pstEcmCtr[i].u8Valid)
            {
                pstCasInfo = pstEcmCtr[i].stDecPidInfo;
                for(k = 0;k < pstEcmCtr[i].u8EcmPIDNum;k ++)
                {
                    if(cam_InvalidPID != pstCasInfo[k].stEcmPid)
                    {
                        ServiceInfo.m_wEcmPid = pstCasInfo[k].stEcmPid;
                        CDCASTB_SetEcmPid(CDCA_LIST_ADD,&(ServiceInfo)); 
#ifdef M_DSCDBG
                        MLMF_Print("CDCASTB_SetEcmPid invoked : byType = %d ServiceInfo.m_wEcmPid = 0x%x\n",CDCA_LIST_ADD,ServiceInfo.m_wEcmPid);
#endif        
                    }
                }
            }
        }
    }

    CDCASTB_SetEcmPid(CDCA_LIST_OK,MM_NULL) ;
#ifdef M_DSCDBG
    MLMF_Print("CDCASTB_SetEcmPid invoked : byType = %d ServiceInfo  = NULL\n",CDCA_LIST_OK);
#endif

#elif(1 == M_OVTCA)
    SCDCASServiceInfo ServiceInfo;    
#ifdef M_DSCDBG
    MLMF_Print("CDCASTB_SetEcmPid invoked : byType = %d pServiceInfo = NULL\n",CDCA_LIST_FIRST);
#endif   
    ServiceInfo.m_byServiceNum = 1;
    ServiceInfo.m_wServiceID[0] = u16CurServiceID;
 //   CDCASTB_SetEcmPid(CDCA_LIST_FIRST,MM_NULL) ;
    if(MM_NULL != pstEcmCtr)
    {
        MBT_S32 i,k;
        CA_STPIDINFO *pstCasInfo;
        for(i = 0;i < s32EcmCtrNum;i ++)
        {
            if(1 == pstEcmCtr[i].u8Valid)
            {
                pstCasInfo = pstEcmCtr[i].stDecPidInfo;
                for(k = 0;k < pstEcmCtr[i].u8EcmPIDNum;k ++)
                {
                    if(cam_InvalidPID != pstCasInfo[k].stEcmPid)
                    {
                        ServiceInfo.m_wEcmPid = pstCasInfo[k].stEcmPid;
                        //CDCASTB_SetEcmPid(CDCA_LIST_ADD,&(ServiceInfo)); 
                        ovtCB_SetEcmPid(ovtCB_GetCaSystemId(),ServiceInfo.m_wEcmPid);
			   ovtCB_OnChannelChanged(0);			
#ifdef M_DSCDBG
                        MLMF_Print("CDCASTB_SetEcmPid invoked : byType = %d ServiceInfo.m_wEcmPid = 0x%x\n",CDCA_LIST_ADD,ServiceInfo.m_wEcmPid);
#endif        
                    }
                }
            }
        }
    }

   // CDCASTB_SetEcmPid(CDCA_LIST_OK,MM_NULL) ;
#ifdef M_DSCDBG
    MLMF_Print("CDCASTB_SetEcmPid invoked : byType = %d ServiceInfo  = NULL\n",CDCA_LIST_OK);
#endif
#endif
}

static MBT_VOID caf_SetCurEcmInfo(CA_STPIDINFO *pstCurPrgCasPidInfo,MBT_U16 u16CurServiceID)
{
    MBT_S32 i;
    CA_STPIDINFO *pstCasInfo;
    cav_stCurEcmCtr.u16ServiceID = u16CurServiceID;
    cav_stCurEcmCtr.u8EcmPIDNum = 0;    
    pstCasInfo = cav_stCurEcmCtr.stDecPidInfo;
    for(i = 0;i < m_MaxPidInfo;i ++)
    {
        pstCasInfo[i] = pstCurPrgCasPidInfo[i];
        if(cam_InvalidPID != pstCasInfo[i].stEcmPid)
        {
            pstCasInfo[i].u8Valid = 1;
            cav_stCurEcmCtr.u8EcmPIDNum++;
        }
    }
}

static MBT_BOOL caf_ConnectDes2PID(CA_STPIDINFO *pstCurPrgCasPidInfo,MBT_U32 u32TransInfo,MBT_U16 u16CurServiceID,CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum)
{
    MMT_STB_ErrorCode_E ErrorCode;
    MBT_S32 i,j;
    MBT_S32 iStreamPIDNum = 0;
    MBT_U8 u8OddKey[8];
    MBT_U8 u8EvenKey[8];
    CA_STDesCtr *pstDesCtr;
    MBT_BOOL bPrgCanBeOpened = MM_FALSE;
    
    CAF_DescAccess_Lock();
    caf_ResetKeyCach(pstEcmCtr,s32EcmCtrNum);

    pstDesCtr = cav_stDesHandleCtr;
    for(i = 0;i < CAS_MAX_DESCNUM;i ++)
    {
        if(MM_PTI_INVALIDHANDLE != pstDesCtr->stDescrambHanel)
        {
            MLMF_PTI_DescramblerFree(pstDesCtr->stDescrambHanel);
            pstDesCtr->stDescrambHanel = MM_PTI_INVALIDHANDLE;
        }
        pstDesCtr->u16EcmPID = cam_InvalidPID;
        pstDesCtr->u16ServiceID = cam_InvalidPID;
        pstDesCtr->u32TransInfo = cam_InvalidTransInfo;
        pstDesCtr++;
    }

    pstDesCtr = cav_stDesHandleCtr;
    for(i = 0;i < m_MaxPidInfo;i ++)
    {
        if(cam_InvalidPID != pstCurPrgCasPidInfo[i].stEcmPid)
        {
            for(j = 0;j < pstCurPrgCasPidInfo[i].u8StreamPIDNum;j ++)
            {
                if(iStreamPIDNum < CAS_MAX_DESCNUM)
                {
                    pstDesCtr->u16EcmPID = pstCurPrgCasPidInfo[i].stEcmPid;
                    pstDesCtr->u16ServiceID = u16CurServiceID;
                    pstDesCtr->u32TransInfo = u32TransInfo;
                    ErrorCode=MLMF_PTI_DescramblerAllocate(&pstDesCtr->stDescrambHanel,MM_PTI_DSM_PES);
                    ErrorCode = MLMF_PTI_DescramblerSetPid(pstDesCtr->stDescrambHanel,pstCurPrgCasPidInfo[i].stStreamPid[j]);
                    if(MM_TRUE == caf_GetKeyCach(pstDesCtr->u16EcmPID,u8OddKey,u8EvenKey))
                    {
                        bPrgCanBeOpened = MM_TRUE;
                        ErrorCode=MLMF_PTI_DescramblerSetEvenKey(pstDesCtr->stDescrambHanel,u8EvenKey,CAPSIM_KEY_LENGTH);
                        ErrorCode=MLMF_PTI_DescramblerSetOddKey(pstDesCtr->stDescrambHanel,u8OddKey,CAPSIM_KEY_LENGTH);
                    }
                    pstDesCtr++;
                    iStreamPIDNum++;
                }
            }
        }
    }


    CAF_DescAccess_UnLock();
    /*清流节目返回可以播放的状态*/
    if(0 == iStreamPIDNum)
    {
        bPrgCanBeOpened = MM_TRUE;
        //MLMF_Print("FTA prg\n");
    }

    return bPrgCanBeOpened;
}



MBT_BOOL CAF_IsSCInsertSTB(MBT_VOID)
{
    MBT_BOOL bRet = MM_FALSE; 
    MMT_STCD_Status_E Status;
     MLMF_SmartCard_GetStatus(0, &Status);
    switch(Status)
    {
        case MM_SMARTCARD_IN:
            bRet = MM_TRUE;
            break;
        default:
            bRet = MM_FALSE;
            break;
    }

    return bRet;
}

static MBT_VOID caf_ResetAllEcmFilterPID(CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum)
{
    MBT_U8 i,k;
    CA_STPIDINFO *pstCasInfo;
    CA_STEcmFilterCtr *pstFilterCtr;
    pstFilterCtr = cav_stEcmFilterCtr;
    for(i = 0;i < m_MaxDummyEcmCtr;i++)
    {
        if(1 == pstFilterCtr->u8Valid)
        {
        #if(1 == M_CDCA) 
            SRSTF_StopSpecifyFilter(pstFilterCtr->u8FilterID,Caf_GetRegID1);
	#endif	
            pstFilterCtr->u8Valid = 0;
        }
        pstFilterCtr++;
    }

    pstFilterCtr = cav_stEcmFilterCtr;
    for(i = 0;i < s32EcmCtrNum;i ++)
    {
        if(1 == pstEcmCtr[i].u8Valid)
        {
            pstCasInfo = pstEcmCtr[i].stDecPidInfo;
            for(k = 0;k < pstEcmCtr[i].u8EcmPIDNum;k ++)
            {
                if(cam_InvalidPID != pstCasInfo[k].stEcmPid)
                {
                    pstFilterCtr->u16EcmPID = pstCasInfo[k].stEcmPid;
                    pstFilterCtr++;
                }
            }
        }
    }
}

static MBT_VOID caf_FreeAllEcmFilterHandle(MBT_VOID)
{
    MBT_U8 i;
    CA_STEcmFilterCtr *pstFilterCtr;
    pstFilterCtr = cav_stEcmFilterCtr;
    for(i = 0;i < m_MaxDummyEcmCtr;i++)
    {
        if(1 == pstFilterCtr->u8Valid)
        {
        #if(1 == M_CDCA) 
            SRSTF_StopSpecifyFilter(pstFilterCtr->u8FilterID,Caf_GetRegID1);
	 #endif	
            pstFilterCtr->u8Valid = 0;
        }
        pstFilterCtr++;
    }
}

/*==========================================================*/

#if(1 == M_CDCA) 

MBT_VOID caf_FreeEcmFilterHandle(MBT_U16 wPid)
{
    MBT_U8 i;
    CA_STEcmFilterCtr *pstFilterCtr;
    pstFilterCtr = cav_stEcmFilterCtr;
    for(i = 0;i < m_MaxDummyEcmCtr;i++)
    {
        if(pstFilterCtr->u16EcmPID == wPid)
        {
            if(1 == pstFilterCtr->u8Valid)
            {
                pstFilterCtr->u8Valid = 0;
                SRSTF_StopSpecifyFilter(pstFilterCtr->u8FilterID,Caf_GetRegID1);
            }
            break;
        }

        pstFilterCtr++;
    }
}



void SetPvrEcmPid(unsigned short EcmPid)
{
    MBT_U8 i;
    CA_STEcmFilterCtr *pstFilterCtr;
    pstFilterCtr = cav_stEcmFilterCtr;

    for(i = 0;i < m_MaxDummyEcmCtr;i++)
    {
        if(pstFilterCtr->u8Valid == 0)
        {
            pstFilterCtr->u8Valid = 1;
            pstFilterCtr->u16EcmPID = EcmPid;
            return;
        }
        pstFilterCtr++;
    }
}

MBT_U32 caf_GetEcmFilterHandle(MET_PTI_PID_T stEcmPid)
{
    MBT_U8 i;
    CA_STEcmFilterCtr *pstFilterCtr;
    pstFilterCtr = cav_stEcmFilterCtr;
    for(i = 0;i < m_MaxDummyEcmCtr;i++)
    {
        if(pstFilterCtr->u16EcmPID == stEcmPid)
        {
            pstFilterCtr->u8Valid = 1;
            return pstFilterCtr->u8FilterID;
        }

        pstFilterCtr++;
    }

    return MM_PTI_INVALIDHANDLE;
}


#endif

MBT_VOID CAF_StopAllCaFilter(MBT_VOID)
{
#if(1 == M_CDCA) 
    caf_SendStartEcmCmd(MM_NULL,0,cav_stCurEcmCtr.u16ServiceID);
    cav_stCurEcmCtr.u16ServiceID = cam_InvalidID;
    CAF_FilterAccess_Lock();
    caf_FreeAllEcmFilterHandle();
    SRSTF_StopSpecifyFilter(EMM_FILTER_REG0,Caf_GetRegID2);
    SRSTF_StopSpecifyFilter(EMM_FILTER_REG1,Caf_GetRegID3);
    SRSTF_StopSpecifyFilter(EMM_FILTER_REG2,Caf_GetRegID4);
    SRSTF_StopSpecifyFilter(EMM_FILTER_REG3,Caf_GetRegID5);
    SRSTF_StopSpecifyFilter(EMM_FILTER_REG4,Caf_GetRegID6);
    CAF_FilterAccess_UnLock();

#elif (1 == M_OVTCA)
    ovtCas_ChannelReset();
#endif    
}


/*高16位是networkid, 低16位是reginid */
MBT_S32 CAF_GetFeatureMark(MBT_U16 u16OperatorID,MBT_U32 *BouquetID,MBT_U32 *AreaCode,MBT_U32 *pu32FeatureList)
{
    MBT_S32 bRet = 0;
#if(1 == M_CDCA) 
    CDCA_U32  ACArray[CDCA_MAXNUM_ACLIST] ;

    if(CDCASTB_GetACList(u16OperatorID,ACArray) == CDCA_RC_OK)
    {
        *AreaCode = ACArray[0];
        *BouquetID = ACArray[1];
        memcpy(pu32FeatureList,&ACArray[2],6*sizeof(CDCA_U32));
        bRet = 1;
    }
    else
    {
        *BouquetID = 0;
        *AreaCode = 0;
        memset(pu32FeatureList,0,6*sizeof(CDCA_U32));
    }
#else
    UNUSED_PARAM(u16OperatorID);
    UNUSED_PARAM(BouquetID);
    UNUSED_PARAM(AreaCode);
    UNUSED_PARAM(pu32FeatureList);
#endif    
    return bRet;
}

#if(1 == M_CDCA) 
static MBT_VOID caf_CardNotify( MBT_S32 cardno, MMT_STCD_Status_E status,MMT_STCD_Standard_E standard, MMT_STCD_Protocol_E protocol)
{
    if((MM_INVALID_HANDLE != cav_pstSmcMsg)&&(MM_SMARTCARD_IN == status||MM_SMARTCARD_OUT == status))
    {
        SMC_CmdMsg stMsg;
        memset(&stMsg,0,sizeof(SMC_CmdMsg));
        if(MM_SMARTCARD_IN == status)
        {
            stMsg.eCmdType = m_SmcCmd_CardIN;
        }
        else
        {
            stMsg.eCmdType = m_SmcCmd_CardOut;
        }
        
        MLMF_Msg_SendMsg(cav_pstSmcMsg,&stMsg,sizeof(SMC_CmdMsg),MM_SYS_TIME_INIFIE);
    }
}
#endif
static MBT_VOID caf_CaServiceProcess ( MBT_VOID *pvParam )
{    
    MBT_S32 i;
    SMC_CmdMsg stMsg;
    SMC_CmdMsg stWoringMsg = 
    {
        .eCmdType = 0,
        .u16EcmCtrNum = 0,
        .u16CurServiceID = cam_InvalidID,
        .u32TransInfo = cam_InvalidTransInfo,
    };
    
    
    while(MM_TRUE)
    {
        MLMF_Msg_WaitMsg(cav_pstSmcMsg,&stMsg,sizeof(stMsg),MM_SYS_TIME_INIFIE);
        switch(stMsg.eCmdType)
        {
            case m_SmcCmd_StartEcm:
                if(cav_u16CurPrgServiceID != stMsg.u16CurServiceID)
                {
                    break;
                }
                
                for(i = 0;i < stMsg.u16EcmCtrNum;i++)
                {
                    if(stMsg.stEcmCtr[i].u16ServiceID == cav_u16CurPrgServiceID)
                    {
                        caf_SetEcmPID2CA(&(stMsg.stEcmCtr[i]),1,cav_u16CurPrgServiceID);
                    }
                }
                memcpy(&stWoringMsg,&stMsg,sizeof(stMsg));
                /*MLMF_Print("m_SmcCmd_StartEcm s32EcmCtrNum = %d\n",stWoringMsg.u16EcmCtrNum);
                {
                    MBT_S32 k;
                    CA_STPIDINFO *pstCasInfo;
                    for(i = 0;i < stWoringMsg.u16EcmCtrNum;i ++)
                    {
                        MLMF_Print("[%d] u16ServiceID = %x u8EcmPIDNum %d\n",i,stWoringMsg.stEcmCtr[i].u16ServiceID,stWoringMsg.stEcmCtr[i].u8EcmPIDNum);
                        if(1 == stWoringMsg.stEcmCtr[i].u8Valid)
                        {
                            pstCasInfo = stWoringMsg.stEcmCtr[i].stDecPidInfo;
                            for(k = 0;k < stWoringMsg.stEcmCtr[i].u8EcmPIDNum;k ++)
                            {
                                MLMF_Print("      [%d] stEcmPid = %x\n",k,pstCasInfo[k].stEcmPid);
                            }
                        }
                    }
                    MLMF_Print("\n\n\n");
                }
                */
                break;
            case m_SmcCmd_StopEcm:
                stWoringMsg.u16CurServiceID = cam_InvalidID;
                stWoringMsg.u32TransInfo = cam_InvalidTransInfo;
                stWoringMsg.u16EcmCtrNum = 0;
                caf_SetEcmPID2CA(NULL,0,stMsg.u16CurServiceID);
                break;
            case m_SmcCmd_CardIN:
		#if(1 == M_CDCA) 		
                CDCASTB_SCInsert();
		#endif
                if(pCaNotifyUICallBack)
                {
                    pCaNotifyUICallBack(DUMMY_KEY_CARD_IN,cam_InvalidPID,MM_NULL,0);
                }	
                break;
            case m_SmcCmd_CardOut:
                if(pCaNotifyUICallBack)
                {
                    pCaNotifyUICallBack(DUMMY_KEY_CARD_OUT,cam_InvalidPID,MM_NULL,0);
                }	
		#if(1 == M_CDCA) 		
                CDCASTB_SCRemove();
		#endif
                break;
            case m_SmcCmd_StartMulti:
                if(cav_u16CurPrgServiceID != stMsg.u16CurServiceID)
                {
                    break;
                }
                
                if(m_casDesmode_Single == cav_eDesMode)
                {
                    if(stWoringMsg.u16CurServiceID != stMsg.u16CurServiceID)
                    {
                        break;
                    }
                    /*MLMF_Print("m_SmcCmd_StartMulti s32EcmCtrNum = %d\n",stWoringMsg.u16EcmCtrNum);
                    {
                        MBT_S32 i,k;
                        CA_STPIDINFO *pstCasInfo;
                        for(i = 0;i < stWoringMsg.u16EcmCtrNum;i ++)
                        {
                            MLMF_Print("[%d] u16ServiceID = %x u8EcmPIDNum %d\n",i,stWoringMsg.stEcmCtr[i].u16ServiceID,stWoringMsg.stEcmCtr[i].u8EcmPIDNum);
                            if(1 == stWoringMsg.stEcmCtr[i].u8Valid)
                            {
                                pstCasInfo = stWoringMsg.stEcmCtr[i].stDecPidInfo;
                                for(k = 0;k < stWoringMsg.stEcmCtr[i].u8EcmPIDNum;k ++)
                                {
                                    MLMF_Print("      [%d] stEcmPid = %x\n",k,pstCasInfo[k].stEcmPid);
                                }
                            }
                        }
                        MLMF_Print("\n\n\n");
                    }
                    */
                    //MLMF_Print("caf_StartMultiEcm serviceid = %x\n",stMsg.u16CurServiceID);
                    caf_StartMultiEcm(stWoringMsg.u16CurServiceID,stWoringMsg.stEcmCtr,stWoringMsg.u16EcmCtrNum);
                    cav_eDesMode = m_casDesmode_multi;
                }
                break;
        }
    }
}




//extern void CDSTBCA_EmailNotifyIcon(CDCA_U8 byShow,CDCA_U32 dwEmailID);

MBT_BOOL CAF_InitCa(MBT_VOID (*pNotifyCallBack)( MBT_S32 iType,MBT_U32 stPid, MBT_VOID *pData,MBT_S32 iDataSize)) 
{
#if(1 == M_CDCA) 
    MET_Task_T caNotifyHandle = MM_INVALID_HANDLE;
    pCaNotifyUICallBack = pNotifyCallBack;

    if(MM_INVALID_HANDLE == cav_psemDescAccess)
    {
        MLMF_Sem_Create(&cav_psemDescAccess, 1);
    }

    
    if(MM_INVALID_HANDLE == cav_psemSmcAccess)
    {
        MLMF_Sem_Create(&cav_psemSmcAccess, 1);
    }

    if(MM_INVALID_HANDLE == cav_psemFilterAccess)
    {
        MLMF_Sem_Create(&cav_psemFilterAccess, 1);
    }

    
    if ( MLMF_Msg_Create(sizeof(SMC_CmdMsg),10,&cav_pstSmcMsg) != MM_NO_ERROR)
    {
        CA_DEBUG(("[CAF_InitCa] CDCASTB_Init() failed Unable to create message queue!!!!\n"));
        return MM_TRUE;
    }

    MLMF_SmartCard_SetNotify(0,caf_CardNotify);
    //MLMF_Print("CAF_InitCa\n");
    if(MM_FALSE == CDCASTB_Init(CACDLIB_MSG_TASK_PRIORITY))
    {
        CA_DEBUG(("CDCASTB_Init() failed!!!!\n"));
        return MM_TRUE;
    }
    CDCASTB_SCInsert();
    
    if ( (  MLMF_Task_Create ( caf_CaServiceProcess,
                                    MM_NULL,
                                    CACDNOTIFY_PROCESS_WORKSPACE,
                                    CACDNOTIFY_PROCESS_PRIORITY,
                                    &caNotifyHandle,
                                    "cacd_task") ) != MM_NO_ERROR)
    {
        CA_DEBUG(("[CAF_InitCa]caf_CaServiceProcess Process creat can't success\n"));
        return MM_TRUE;
    }

    CA_DEBUG(("[CAF_InitCa] CDCASTB_Init() OK!!!!\n"));
#elif (1 == M_OVTCA)
    MET_Task_T caNotifyHandle = MM_INVALID_HANDLE;
    pCaNotifyUICallBack = pNotifyCallBack;

    if(MM_INVALID_HANDLE == cav_psemDescAccess)
    {
        MLMF_Sem_Create(&cav_psemDescAccess, 1);
    }

    
    if(MM_INVALID_HANDLE == cav_psemSmcAccess)
    {
        MLMF_Sem_Create(&cav_psemSmcAccess, 1);
    }

    if(MM_INVALID_HANDLE == cav_psemFilterAccess)
    {
        MLMF_Sem_Create(&cav_psemFilterAccess, 1);
    }

    
    if ( MLMF_Msg_Create(sizeof(SMC_CmdMsg),10,&cav_pstSmcMsg) != MM_NO_ERROR)
    {
        CA_DEBUG(("[CAF_InitCa] CDCASTB_Init() failed Unable to create message queue!!!!\n"));
        return MM_TRUE;
    }

    if ( (  MLMF_Task_Create ( caf_CaServiceProcess,
                                    MM_NULL,
                                    CACDNOTIFY_PROCESS_WORKSPACE,
                                    CACDNOTIFY_PROCESS_PRIORITY,
                                    &caNotifyHandle,
                                    "caf_task") ) != MM_NO_ERROR)
    {
        CA_DEBUG(("[CAF_InitCa]caf_CaServiceProcess Process creat can't success\n"));
        return MM_TRUE;
    }

    ovtcas_init();	

    CA_DEBUG(("[CAF_InitCa] OVTCASTB_Init() OK!!!!\n"));	
#else
    UNUSED_PARAM(pNotifyCallBack);
#endif
    return MM_FALSE;
}


MBT_VOID CAF_ClearDataAll(MBT_VOID)
{
#if(1 == M_CDCA) 
	FLASHF_ErasePartition(CADATA_BlockA_FlashAddress1,FLASH_MAINBLOCK_SIZE);
	FLASHF_ErasePartition(CADATA_BlockA_FlashAddress2,FLASH_MAINBLOCK_SIZE);
	FLASHF_ErasePartition(CADATA_BlockB_FlashAddress1,FLASH_MAINBLOCK_SIZE);
	FLASHF_ErasePartition(CADATA_BlockB_FlashAddress2,FLASH_MAINBLOCK_SIZE);
#endif
}

MBT_VOID CAF_StopEcm( MBT_VOID )
{
 
    cav_u16CurPrgServiceID = cam_InvalidPID;
#if(1 == M_CDCA)	
    if(cam_InvalidPID != cav_stCurEcmCtr.stDecPidInfo[0].stEcmPid)
    {
        CDSTBCA_ShowBuyMessage(cav_stCurEcmCtr.stDecPidInfo[0].stEcmPid,CDCA_MESSAGE_CANCEL_TYPE);
    }
    
    if(cam_InvalidPID != cav_stCurEcmCtr.stDecPidInfo[1].stEcmPid)
    {
        CDSTBCA_ShowBuyMessage(cav_stCurEcmCtr.stDecPidInfo[1].stEcmPid,CDCA_MESSAGE_CANCEL_TYPE);
    }
#endif  	
    CAF_FilterAccess_Lock();
    caf_FreeAllEcmFilterHandle();
    CAF_FilterAccess_UnLock();

}


MBT_VOID CAF_StartEcm(CA_STPIDINFO *pstCurPrgCasPidInfo,MBT_U32 u32TransInfo,MBT_U16 u16CurServiceID,CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum)
{
    MBT_BOOL bPrgCanBeOpened;
    if(MM_NULL == pstCurPrgCasPidInfo||s32EcmCtrNum <= 0)
    {
        return;
    }
    cav_u16CurPrgServiceID = u16CurServiceID;
    CAF_FilterAccess_Lock();
    caf_ResetAllEcmFilterPID(pstEcmCtr,s32EcmCtrNum);
    CAF_FilterAccess_UnLock();
    
    caf_SetCurEcmInfo(pstCurPrgCasPidInfo,u16CurServiceID);
    
    bPrgCanBeOpened = caf_ConnectDes2PID(pstCurPrgCasPidInfo,u32TransInfo,u16CurServiceID,pstEcmCtr,s32EcmCtrNum);
    
#if(1 == M_PRINT_ECMCARDTIME) 
    cav_u32StartEcmTime = MLMF_SYS_GetMS();
#endif 
    if(MM_FALSE == bPrgCanBeOpened)
    {
        //MLMF_Print("CAF_StartEcm m_casDesmode_Single\n");
        cav_eDesMode = m_casDesmode_Single;
        cav_u8CheckedDesMode = 0;
    }
    else
    {
        //MLMF_Print("CAF_StartEcm m_casDesmode_multi\n");
        cav_eDesMode = m_casDesmode_multi;
        cav_u8CheckedDesMode = 1;
    }

    /*MLMF_Print("CAF_StartEcm s32EcmCtrNum = %d\n",s32EcmCtrNum);
    {
        MBT_S32 i,k;
        CA_STPIDINFO *pstCasInfo;
        for(i = 0;i < s32EcmCtrNum;i ++)
        {
            MLMF_Print("[%d] u16ServiceID = %x u8EcmPIDNum %d\n",i,pstEcmCtr[i].u16ServiceID,pstEcmCtr[i].u8EcmPIDNum);
            if(1 == pstEcmCtr[i].u8Valid)
            {
                pstCasInfo = pstEcmCtr[i].stDecPidInfo;
                for(k = 0;k < pstEcmCtr[i].u8EcmPIDNum;k ++)
                {
                    MLMF_Print("      [%d] stEcmPid = %x\n",k,pstCasInfo[k].stEcmPid);
                }
            }
        }
        MLMF_Print("\n\n\n");
    }
    */
    caf_SendStartEcmCmd(pstEcmCtr,s32EcmCtrNum,u16CurServiceID); 
}

MBT_VOID caf_StartMultiEcm(MBT_U16 u16CurServiceID,CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum)
{

    CAF_FilterAccess_Lock();
    caf_ResetAllEcmFilterPID(pstEcmCtr,s32EcmCtrNum);
    CAF_FilterAccess_UnLock();
    
    caf_SetEcmPID2CA(pstEcmCtr,s32EcmCtrNum,u16CurServiceID);
    //MLMF_Print("caf_StartMultiEcm m_casDesmode_multi\n");   
}


MBT_VOID CAF_SetEmmPid(MBT_U16 stCurEmmPID)
{
#if(1 == M_CDCA) 
    static MET_PTI_PID_T cav_stCurEMMPID = cam_InvalidPID;
    if(cam_InvalidPID != cav_stCurEMMPID)
    {
#ifdef M_DSCDBG
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",2,cav_stCurEMMPID,0);
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",3,cav_stCurEMMPID,0);
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",4,cav_stCurEMMPID,0);
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",5,cav_stCurEMMPID,0);
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",6,cav_stCurEMMPID,0);
#endif        
        CDCASTB_PrivateDataGot(2 , CDCA_TRUE,cav_stCurEMMPID, MM_NULL,0);
        CDCASTB_PrivateDataGot(3 , CDCA_TRUE,cav_stCurEMMPID, MM_NULL,0);
        CDCASTB_PrivateDataGot(4 , CDCA_TRUE,cav_stCurEMMPID, MM_NULL,0);
        CDCASTB_PrivateDataGot(5 , CDCA_TRUE,cav_stCurEMMPID, MM_NULL,0);
        CDCASTB_PrivateDataGot(6 , CDCA_TRUE,cav_stCurEMMPID, MM_NULL,0);
    }
    
    if (cam_InvalidPID != stCurEmmPID)
    {
        cav_stCurEMMPID = stCurEmmPID;
#ifdef M_DSCDBG
        MLMF_Print("CDCASTB_SetEmmPid invoked : wEmmPid = 0x%x\n",cav_stCurEMMPID);
#endif        
        CDCASTB_SetEmmPid( cav_stCurEMMPID ) ;  
    }
#elif (1 == M_OVTCA) 
static MET_PTI_PID_T cav_stCurEMMPID = cam_InvalidPID;
    if(cam_InvalidPID != cav_stCurEMMPID)
    {
#ifdef M_DSCDBG
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",2,cav_stCurEMMPID,0);
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",3,cav_stCurEMMPID,0);
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",4,cav_stCurEMMPID,0);
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",5,cav_stCurEMMPID,0);
        MLMF_Print("CDCASTB_PrivateDataGot invoked : byReqID = 0x%x:bTimeout = 1:wPid = 0x%x:pbyReceiveData = NULL,wLen = %d\n",6,cav_stCurEMMPID,0);
#endif        
       
    }
    
    if (cam_InvalidPID != stCurEmmPID)
    {
        cav_stCurEMMPID = stCurEmmPID;
#ifdef M_DSCDBG
        MLMF_Print("CDCASTB_SetEmmPid invoked : wEmmPid = 0x%x\n",cav_stCurEMMPID);
#endif        
       ovtCB_SetEmmPid(ovtCB_GetCaSystemId(),cav_stCurEMMPID);
    }
	
#else
    UNUSED_PARAM(stCurEmmPID);
#endif    
}

MBT_BOOL CAF_IsCurPrgEcm(MET_PTI_PID_T stPassedEcmPID)
{
    MBT_S32 i;
    CA_STPIDINFO *pstEcmInfo = cav_stCurEcmCtr.stDecPidInfo;
    
    for(i = 0;i < cav_stCurEcmCtr.u8EcmPIDNum;i++)
    {
        if(pstEcmInfo[i].stEcmPid == stPassedEcmPID)
        {
            return MM_TRUE;
        }
    }

    return MM_FALSE;
}

MBT_U16 CAF_GetCurPrgEcmPid(MBT_VOID)
{
    return cav_stCurEcmCtr.stDecPidInfo[0].stEcmPid;
}

MBT_BOOL CAF_InitSTBID(MBT_VOID)
{
#if(1 == M_CDCA) 
    MBT_U32 u32LocBuf[20];
    MBT_CHAR string[100];
    MBT_U8 *pu8LocBuf = (MBT_U8 *)u32LocBuf;
    MBT_U8 u8Index = 0;
    MBT_U32 u32pos = 0;
    MBT_U8 pbyReply[256];
    MBT_U32 i;
    MBT_U32 NumberRead;
    MBT_U16 status_words;
    MMT_STB_ErrorCode_E stRet;
    
    stRet = MLMF_SmartCard_Reset(0,cav_u8Atr, &cav_u32AtrLen); 

    if (MM_NO_ERROR == MLMF_SmartCard_TransferData(0,cav_u8CardIDSNCmd,sizeof(cav_u8CardIDSNCmd),pbyReply, &NumberRead, &status_words))         
    {   
        if(0x61 == (status_words>>8))
        {
            cav_u8ReadIDSNCmd[4] = (status_words&0x00ff);
        }
        if (MM_NO_ERROR == MLMF_SmartCard_TransferData(0,cav_u8ReadIDSNCmd,sizeof(cav_u8ReadIDSNCmd),pbyReply, &NumberRead, &status_words))
        {
            memcpy(cav_u8CardID,pbyReply,4);
            memcpy(cav_u8CardSN,pbyReply+4,16);
            cav_u8CardSN[16] = 0;
        }
    }   
    if (MM_NO_ERROR == MLMF_SmartCard_TransferData(0,cav_u8SerialNumberCmd,sizeof(cav_u8SerialNumberCmd),pbyReply, &NumberRead, &status_words))         
    {   
        if(0x61 == (status_words>>8))
        {
            cav_u8ReadSerailCmd[4] = (status_words&0x00ff);
        }
        if (MM_NO_ERROR == MLMF_SmartCard_TransferData(0,cav_u8ReadSerailCmd,sizeof(cav_u8ReadSerailCmd),pbyReply, &NumberRead, &status_words))
        {
            memcpy(cav_u8SerialNumber,pbyReply,8);
        }
    }   

    /**Used for factory roduct can not be deleted*/
    u32pos += sprintf(string+u32pos,"*(");
    for(i = 0;i < 4;i++)
    {
        u32pos += sprintf(string+u32pos,"%02x",cav_u8CardID[i]);
        pu8LocBuf[u8Index] = cav_u8CardID[i];
        u8Index++;
    }
    u32pos += sprintf(string+u32pos," %s ",cav_u8CardSN);
    for(i = 0;i < 16;i += 2)
    {
        if(cav_u8CardSN[i] >= '0'&&cav_u8CardSN[i] <= '9')
        {
            pu8LocBuf[u8Index] = ((cav_u8CardSN[i]-'0')<<4);
        }
        else if(cav_u8CardSN[i] >= 'a'&&cav_u8CardSN[i] <= 'f')
        {
            pu8LocBuf[u8Index] = ((cav_u8CardSN[i]-'a')<<4)+0x0a;
        }
        else if(cav_u8CardSN[i] >= 'A'&&cav_u8CardSN[i] <= 'F')
        {
            pu8LocBuf[u8Index] = ((cav_u8CardSN[i]-'A')<<4)+0x0a;
        }
        u8Index++;
        
        if(cav_u8CardSN[i+1] >= '0'&&cav_u8CardSN[i+1] <= '9')
        {
            pu8LocBuf[u8Index] = ((cav_u8CardSN[i+1]-'0')&0x0f);
        }
        else if(cav_u8CardSN[i+1] >= 'a'&&cav_u8CardSN[i+1] <= 'f')
        {
            pu8LocBuf[u8Index] = ((cav_u8CardSN[i+1]-'a')&0x0f)+0x0a;
        }
        else if(cav_u8CardSN[i+1] >= 'A'&&cav_u8CardSN[i+1] <= 'F')
        {
            pu8LocBuf[u8Index] = ((cav_u8CardSN[i+1]-'A')&0x0f)+0x0a;
        }
        u8Index++;
    }
    for(i = 0;i < 8;i++)
    {
        u32pos += sprintf(string+u32pos,"%02x",cav_u8SerialNumber[i]);
        pu8LocBuf[u8Index] = cav_u8SerialNumber[i];
        u8Index++;
    }
    u32pos += sprintf(string+u32pos," %08x)*\n",MMF_Common_CRC(u32LocBuf,u8Index/4));
    MLMF_Task_Lock();
    MLMF_Print("%s",string);
    MLMF_Task_Unlock();
    return MM_TRUE;
#else
    return MM_TRUE;
#endif
}

void CAF_SetCW(unsigned short wEcmPID,
unsigned char* pbyEvenKey,
unsigned char* pbyOddKey)
{
    MMT_STB_ErrorCode_E ErrorCode;
    MBT_U8 i;
    MBT_U32 u32TransInfo = cam_InvalidTransInfo;
    MBT_U16 u16ServiceID = cam_InvalidID;
    
    CAF_DescAccess_Lock();
    for(i = 0;i < CAS_MAX_DESCNUM;i ++)
    {
        //MLMF_Print("ParsedwEcmPID = %x u16EcmPID = %x stStreamPid = %x stDescrambHanel = %x\n",wEcmPID,cav_stDesHandleCtr[i].u16EcmPID,cav_stDesHandleCtr[i].u16ServiceID,cav_stDesHandleCtr[i].stDescrambHanel);
        if(wEcmPID == cav_stDesHandleCtr[i].u16EcmPID)
        {
            ErrorCode=MLMF_PTI_DescramblerSetEvenKey(cav_stDesHandleCtr[i].stDescrambHanel,(MBT_U8 *)pbyEvenKey,CAPSIM_KEY_LENGTH);
            ErrorCode=MLMF_PTI_DescramblerSetOddKey(cav_stDesHandleCtr[i].stDescrambHanel,(MBT_U8 *)pbyOddKey,CAPSIM_KEY_LENGTH);
            if (ErrorCode != MM_NO_ERROR)
            {
                CA_DEBUG(("[CDSTBCA_ScrSetCW]MLMF_PTI_DescramblerSetOddKey() 	failed.ErrCode=%d\n",ErrorCode));
            }
            u16ServiceID = cav_stDesHandleCtr[i].u16ServiceID;
            u32TransInfo= cav_stDesHandleCtr[i].u32TransInfo;
        }
        
    }
    caf_Putkey2KeyCach(wEcmPID,pbyOddKey,pbyEvenKey);
    CAF_DescAccess_UnLock();
    
    if(0 == cav_u8CheckedDesMode&&m_casDesmode_Single == cav_eDesMode&&cam_InvalidID != u16ServiceID)
    {

	 #if (1 == MultiEcm_Enable)
        caf_SendStartMultiEcmCmd(u32TransInfo,u16ServiceID);
	 #endif
        cav_u8CheckedDesMode = 1;
    }
    
#if(1 == M_PRINT_ECMCARDTIME) 
    if(0 != cav_u32StartEcmTime)
    {
        MLMF_Print("SetFilterTime %d Getecmtime %d getcwtime = %d\n",cav_u32SetFilterTime - cav_u32StartEcmTime,cav_u32GetEcmTime - cav_u32StartEcmTime,MLMF_SYS_GetMS() - cav_u32StartEcmTime);
        cav_u32StartEcmTime = 0;
    }
#endif    

}


void CAF_SetInvalidCW(void)
{
	MMT_STB_ErrorCode_E ErrorCode;
	MBT_U8 u8Temp;
	MBT_U8 Key[CAPSIM_KEY_LENGTH];

	memset(Key,0x0,CAPSIM_KEY_LENGTH );		
	CAF_DescAccess_Lock();
	for(u8Temp = 0;u8Temp < CAS_MAX_DESCNUM;u8Temp ++)
	{
	    if(MM_PTI_INVALIDHANDLE != cav_stDesHandleCtr[u8Temp].stDescrambHanel)
	    {
	        ErrorCode=MLMF_PTI_DescramblerSetEvenKey(cav_stDesHandleCtr[u8Temp].stDescrambHanel,Key,CAPSIM_KEY_LENGTH);
	        ErrorCode=MLMF_PTI_DescramblerSetOddKey(cav_stDesHandleCtr[u8Temp].stDescrambHanel,Key,CAPSIM_KEY_LENGTH);
	        if (ErrorCode != MM_NO_ERROR)
	        {
	            CA_DEBUG(("[CDSTBCA_ScrSetCW]MLMF_PTI_DescramblerSetOddKey() 	failed.ErrCode=%d\n",ErrorCode));
	        }
	    }
	}
	CAF_DescAccess_UnLock();
}

void CAF_StartEcmEx(unsigned short wServiceId,unsigned short VidPid, unsigned short VidEcmPid, unsigned short AudPid, unsigned short AudEcmPid)
{
	MBT_S32 s32EcmCtrNum = 0;
	CA_STEcmCtr stEcmCtr[8];
	CA_STPIDINFO stCurPrgCasInfo[m_MaxPidInfo] =
	{
	    {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
	    {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
	};

	if (VidEcmPid == AudEcmPid)
	{
		s32EcmCtrNum = 1;
		stCurPrgCasInfo[m_VideoPidInfo].stEcmPid = VidEcmPid;
		stCurPrgCasInfo[m_VideoPidInfo].u8StreamPIDNum = 2;
		stCurPrgCasInfo[m_VideoPidInfo].stStreamPid[m_VideoPidInfo] = VidPid;
		stCurPrgCasInfo[m_VideoPidInfo].stStreamPid[m_AudioPidInfo] = AudPid;
		stCurPrgCasInfo[m_VideoPidInfo].u8Valid = 1;

		stEcmCtr[0].u16ServiceID = wServiceId;
		stEcmCtr[0].u8Valid = 1;
		stEcmCtr[0].u8EcmPIDNum = 1;
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].stEcmPid = VidEcmPid;
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].u8StreamPIDNum = 2;
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].stStreamPid[m_VideoPidInfo] = VidPid;
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].stStreamPid[m_AudioPidInfo] = AudPid;
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].u8Valid = 1;
	}
	else
	{
		s32EcmCtrNum = 2;

		stCurPrgCasInfo[m_VideoPidInfo].stEcmPid = VidEcmPid;
		stCurPrgCasInfo[m_VideoPidInfo].u8StreamPIDNum = 1;
		stCurPrgCasInfo[m_VideoPidInfo].stStreamPid[m_VideoPidInfo] = VidPid;
		stCurPrgCasInfo[m_VideoPidInfo].u8Valid = 1;

		stCurPrgCasInfo[m_AudioPidInfo].stEcmPid = AudEcmPid;
		stCurPrgCasInfo[m_AudioPidInfo].u8StreamPIDNum = 1;
		stCurPrgCasInfo[m_AudioPidInfo].stStreamPid[m_VideoPidInfo] = AudPid;
		stCurPrgCasInfo[m_AudioPidInfo].u8Valid = 1;

		stEcmCtr[0].u16ServiceID = wServiceId;
		stEcmCtr[0].u8Valid = 1;
		stEcmCtr[0].u8EcmPIDNum = 2;
		
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].stEcmPid = VidEcmPid;
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].u8StreamPIDNum = 1;
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].stStreamPid[m_VideoPidInfo] = VidPid;
		stEcmCtr[0].stDecPidInfo[m_VideoPidInfo].u8Valid = 1;

		stEcmCtr[0].stDecPidInfo[m_AudioPidInfo].stEcmPid = AudEcmPid;
		stEcmCtr[0].stDecPidInfo[m_AudioPidInfo].u8StreamPIDNum = 1;
		stEcmCtr[0].stDecPidInfo[m_AudioPidInfo].stStreamPid[m_VideoPidInfo] = AudPid;
		stEcmCtr[0].stDecPidInfo[m_AudioPidInfo].u8Valid = 1;
	}

	

	CAF_StopAllCaFilter();
	
	CAF_StartEcm(stCurPrgCasInfo,1,wServiceId,stEcmCtr,s32EcmCtrNum);
}



#if 0

MBT_VOID CAF_CheckCMAMInfo(MBT_VOID)
{
    MBT_U8 pbyReply[256];
    MBT_U32 i;
    MBT_U32 NumberRead;
    MBT_U32 u32LocBuf[20];
    MBT_CHAR string[100];
    MBT_U8 *pu8LocBuf = (MBT_U8 *)u32LocBuf;
    MBT_U8 *pu8CardSN;
    MBT_U8 u8Index = 0;
    MBT_U32 u32pos = 0;
    MBT_U16 status_words;

    if (MM_NO_ERROR == MLMF_SmartCard_TransferData(0,cav_u8CardIDSNCmd,sizeof(cav_u8CardIDSNCmd),pbyReply, &NumberRead, &status_words))         
    {   
        if(0x61 == (status_words>>8))
        {
            cav_u8ReadIDSNCmd[4] = (status_words&0x00ff);
        }
        if (MM_NO_ERROR == MLMF_SmartCard_TransferData(0,cav_u8ReadIDSNCmd,sizeof(cav_u8ReadIDSNCmd),cav_u8ReadCardIDSNreplay, &NumberRead, &status_words))
        {
            cav_u8ReadCardIDSNreplay[NumberRead] = (CDCA_U8)(status_words >> 8);
            cav_u8ReadCardIDSNreplay[NumberRead+1] = (CDCA_U8)(status_words & 0xff);
        }
    }   
    if (MM_NO_ERROR == MLMF_SmartCard_TransferData(0,cav_u8SerialNumberCmd,sizeof(cav_u8SerialNumberCmd),pbyReply, &NumberRead, &status_words))         
    {   
        cav_u8SerialNumberReplay[0] = (CDCA_U8)(status_words >> 8);
        cav_u8SerialNumberReplay[1] = (CDCA_U8)(status_words & 0xff);
        if(0x61 == (status_words>>8))
        {
            cav_u8ReadSerailCmd[4] = (status_words&0x00ff);
        }
        if (MM_NO_ERROR == MLMF_SmartCard_TransferData(0,cav_u8ReadSerailCmd,sizeof(cav_u8ReadSerailCmd),cav_u8ReadSerialNumber, &NumberRead, &status_words))
        {
            cav_u8ReadSerialNumber[NumberRead] = (CDCA_U8)(status_words >> 8);
            cav_u8ReadSerialNumber[NumberRead+1] = (CDCA_U8)(status_words & 0xff);
        }
    }   

    /**Used for factory roduct can not be deleted*/
    u32pos += sprintf(string+u32pos,"*(");
    for(i = 0;i < 4;i++)
    {
        u32pos += sprintf(string+u32pos,"%02x",cav_u8ReadCardIDSNreplay[i]);
        pu8LocBuf[u8Index] = cav_u8ReadCardIDSNreplay[i];
        u8Index++;
    }
    pu8CardSN = cav_u8ReadCardIDSNreplay+4;
    string[u32pos] = ' ';
    u32pos++;
    memcpy(string+u32pos,pu8CardSN,16);
    u32pos+= 16;
    string[u32pos] = ' ';
    u32pos++;
    for(i = 0;i < 8;i++)
    {
        if(pu8CardSN[i] >= '0'&&pu8CardSN[i] <= '9')
        {
            pu8LocBuf[u8Index] = ((pu8CardSN[i]-'0')<<4);
        }
        else if(pu8CardSN[i] >= 'a'&&pu8CardSN[i] <= 'f')
        {
            pu8LocBuf[u8Index] = ((pu8CardSN[i]-'a')<<4);
        }
        else if(pu8CardSN[i] >= 'A'&&pu8CardSN[i] <= 'F')
        {
            pu8LocBuf[u8Index] = ((pu8CardSN[i]-'A')<<4);
        }

        
        if(pu8CardSN[i+1] >= '0'&&pu8CardSN[i+1] <= '9')
        {
            pu8LocBuf[u8Index] = ((pu8CardSN[i+1]-'0')&0x0f);
        }
        else if(pu8CardSN[i+1] >= 'a'&&pu8CardSN[i+1] <= 'f')
        {
            pu8LocBuf[u8Index] = ((pu8CardSN[i+1]-'a')&0x0f);
        }
        else if(pu8CardSN[i+1] >= 'A'&&pu8CardSN[i+1] <= 'F')
        {
            pu8LocBuf[u8Index] = ((pu8CardSN[i+1]-'A')&0x0f);
        }
        u8Index++;
    }
    for(i = 0;i < 8;i++)
    {
        u32pos += sprintf(string+u32pos,"%02x",cav_u8ReadSerialNumber[i]);
        pu8LocBuf[u8Index] = cav_u8ReadSerialNumber[i];
        u8Index++;
    }
    u32pos += sprintf(string+u32pos," %08x)*\n",MMF_Common_CRC(u32LocBuf,u8Index/4));
    //MLMF_Task_Lock();
    MLMF_Print("%s",string);
    //MLMF_Task_Unlock();
}
#endif


