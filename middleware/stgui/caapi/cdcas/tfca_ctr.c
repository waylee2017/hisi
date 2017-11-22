/*****************************************************************************
* File name   : tfca_hal.c
* Description : This file is interactived with CAS lib supported by TongFang. 
* COPYRIGHT (C) Blossoms Digital Tech Co., Ltd. 2006.
*
* ========================
* MODIFICATION HISTORY *
* ========================
*
* Date        				Modification							Revision	
* ----        				------------							--------
*							Created	by CA Team						v1.0.0	
*06 Aug 10					Modified 								v1.0.1
*****************************************************************************/
#include <stdio.h>
#include <string.h>	 
#include <stdlib.h>	 
#include "section_api.h"
#include "../cas_iner.h"
#include "nvm_api.h"
#include "ffs.h"
#include "ospctr.h"
#include "appblast.h"
#include "envopt.h"

#if(1 == M_CDCA) 

#define CRC_POLY                   0x04C14BD7
#define TFCABLOCK_SIZE 	FLASH_MAINBLOCK_SIZE
#define TFCADATA_HEADSIZE 	12
#define TFCADATA_BUFFERSIZE 	(TFCABLOCK_SIZE - TFCADATA_HEADSIZE)
#define BlockA_FMarkAddr1 	(CADATA_BlockA_FlashAddress1 + TFCABLOCK_SIZE - TFCADATA_HEADSIZE)
#define BlockA_FMarkAddr2   (CADATA_BlockA_FlashAddress2 + TFCABLOCK_SIZE - TFCADATA_HEADSIZE)
#define BlockA_FDATAAddr1 	CADATA_BlockA_FlashAddress1
#define BlockA_FDATAAddr2 	CADATA_BlockA_FlashAddress2

#define BlockB_FMarkAddr1 	(CADATA_BlockB_FlashAddress1 + TFCABLOCK_SIZE - TFCADATA_HEADSIZE)
#define BlockB_FMarkAddr2   (CADATA_BlockB_FlashAddress2 + TFCABLOCK_SIZE - TFCADATA_HEADSIZE)
#define BlockB_FDATAAddr1 	CADATA_BlockB_FlashAddress1
#define BlockB_FDATAAddr2 	CADATA_BlockB_FlashAddress2


#define MM_PTI_NTSM_OK 0x0000                   /*操作成功,无返回值*/
#define MM_PTI_NTSM_DATA 0x8000                 /*操作成功,有0x80xx  xx为返回值*/
#define MM_PTI_NTSM_ERR_UNSUPORT 0x9100         /*无安全芯片*/
#define MM_PTI_NTSM_ERR_INS 0x9200              /*不支持输入的INS*/
#define MM_PTI_NTSM_ERR_TIMEOVER 0x9300         /*操作超时*/
#define MM_PTI_NTSM_ERR_XX 0x9400                /*操作超时0x94xx xx为返回值*/


#define  ADCAS_SCFUN_INS_RESET 0x02
#define  ADCAS_SCFUN_INS_SELECT_ROOTKEY 0x03
#define  ADCAS_SCFUN_INS_SET_COMMONKEY 0x10
#define  ADCAS_SCFUN_INS_SET_TEMPSESSIONKEY 0x12
#define  ADCAS_SCFUN_INS_SET_CW  0x16
#define  ADCAS_SCFUN_INS_SET_CONTENTKEY  0x17




static MBT_CHAR *cav_CardUpdateStatusFile = "root/cdupf";
static MBT_CHAR *tfcav_flashMagic =  "tFMK";

static MBT_U32 cav_u32BlockALastWriteAddr = 0;
static MBT_U8 *cav_pu8BlockACabuffer = MM_NULL;
static MBT_U32 cav_u32BlockBLastWriteAddr = 0;
static MBT_U8 *cav_pu8BlockBCabuffer = MM_NULL;


extern MBT_U8 cav_u8Atr[32];
extern MBT_U32 cav_u32AtrLen;
extern MBT_U8 cav_u8CardID[4];
extern MBT_CHAR cav_byParentCardSN[17];

extern MBT_U8 cav_u8CaLibAskedForNit;

#if(1 == M_PRINT_ECMCARDTIME) 
extern MBT_U32 cav_u32StartEcmTime;
extern MBT_U32 cav_u32SetFilterTime;
extern MBT_U32 cav_u32GetEcmTime;
#endif

extern MBT_VOID Caf_GetRegID1(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen);
extern MBT_VOID reg1_TimerCallBack(MBT_U32 u32Para[]);

extern MBT_VOID Caf_GetRegID2(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen);
extern MBT_VOID reg2_TimerCallBack(MBT_U32 u32Para[]);

extern MBT_VOID Caf_GetRegID3(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen);
extern MBT_VOID reg3_TimerCallBack(MBT_U32 u32Para[]);

extern MBT_VOID Caf_GetRegID4(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen);
extern MBT_VOID reg4_TimerCallBack(MBT_U32 u32Para[]);

extern MBT_VOID Caf_GetRegID5(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen);
extern MBT_VOID reg5_TimerCallBack(MBT_U32 u32Para[]);

extern MBT_VOID Caf_GetRegID6(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen);
extern MBT_VOID reg6_TimerCallBack(MBT_U32 u32Para[]);


void  CDSTBCA_ActionRequestExt( CDCA_U16 wTVSID,CDCA_U8  byActionType,CDCA_U8 byLen,CDCA_U8* pbyData)
{
     switch(byActionType)
    {
        case CDCA_ACTIONREQUEST_RESTARTSTB:	/* 重启机顶盒 */
            if(pCaNotifyUICallBack)
            {
                pCaNotifyUICallBack(DUMMY_KEY_STBLOCKED_TYPE0,cam_InvalidPID,MM_NULL,0);
            }   
            break;
        case CDCA_ACTIONREQUEST_FREEZESTB:	/* 冻结机顶盒 */
            BLASTF_LockKeyBoad();
            break;
        case CDCA_ACTIONREQUEST_SEARCHCHANNEL:    /* 重新搜索节目 */
        case CDCA_ACTIONREQUEST_STBUPGRADE:    /* 机顶盒程序升级 */
        case CDCA_ACTIONREQUEST_UNFREEZESTB:   /* 解除冻结机顶盒 */
            BLASTF_UnLockKeyBoad();
            break;
        case CDCA_ACTIONREQUEST_INITIALIZESTB:   /* 初始化机顶盒 */
            if(pCaNotifyUICallBack)
            {
                pCaNotifyUICallBack(DUMMY_KEY_ACTIONREQUEST_INITIALIZESTB,cam_InvalidPID,MM_NULL,0);
            }   
            break;
        case CDCA_ACTIONREQUEST_SHOWSYSTEMINFO:   /* 显示系统信息 */
            if(pCaNotifyUICallBack)
            {
                pCaNotifyUICallBack(DUMMY_KEY_ENTER_SYSINFO,cam_InvalidPID,MM_NULL,0);
            }   
            break;

        case CDCA_ACTIONREQUEST_DISABLEEPGADINFO:   /* 禁用EPG广告信息功能 */
            break;
        case CDCA_ACTIONREQUEST_ENABLEEPGADINFO: /* 恢复EPG广告信息功能 */
            break;
        case CDCA_ACTIONREQUEST_CARDINSERTFINISH:  /* 插卡处理完成 */
            break;
        default:
            break;
    }
}


CDCA_BOOL CDSTBCA_SCReset(CDCA_U8* pbyATR, CDCA_U8* pbyLen)
{
    CDCA_BOOL bRet = MM_FALSE;
    MBT_U32 i;
#if(1 == M_CDCA) 
    MMT_STB_ErrorCode_E stRet;
    MBT_U32   u32AtrLen;
    //MLMF_Print("CDSTBCA_SCReset task pri = %d\n",mtos_task_get_curn_prio());

    if(0 != cav_u32AtrLen)
    {
        memcpy(pbyATR,cav_u8Atr,cav_u32AtrLen);
        *pbyLen = cav_u32AtrLen;
        cav_u32AtrLen = 0;
        bRet = MM_TRUE;
    }
    else
    {
        u32AtrLen = 0; 
        CAF_SmcAccess_Lock();
        stRet = MLMF_SmartCard_Reset(0,pbyATR, &u32AtrLen); 
        CAF_SmcAccess_UnLock();
        if(MM_NO_ERROR == stRet)
        {
            *pbyLen = u32AtrLen;
            bRet = MM_TRUE;
        }
    }
    
    MLMF_Print("CDSTBCA_SCReset invoked : pbyATR = ");
    for(i = 0;i < *pbyLen;i++)
    {
        MLMF_Print("%02x ",pbyATR[i]);
    }
    MLMF_Print(", *pbyLen = %d bRet = %d\n",*pbyLen,bRet);
 #endif    
    return bRet;
}	

#if 0
static MBT_U8 cav_u8FindCMD = 0;
static MBT_U8 cav_u8GetSerialNumberCardIDSN = 0;
static MBT_U8 cav_u8CardSN[17];
static MBT_U8 cav_u8SerialNumberCmd[] = {0x80,0x46,0x00,0x00,0x04,0x07,0x00,0x00,0x08};
static MBT_U8 cav_u8CardIDSNCmd[] = {0x80,0x46,0x00,0x00,0x04,0x01,0x00,0x00,0x14};
static MBT_U8 cav_u8SerialNumber[8];
static MBT_U8 cav_u8CardID[4];

/*==========================================================*/
CDCA_BOOL CDSTBCA_SCPBRun(const CDCA_U8* pbyCommand, CDCA_U16 wCommandLen,CDCA_U8* pbyReply, CDCA_U16* pwReplyLen)
{
    MBT_BOOL bRet = MM_FALSE;
#if(1 == M_CDCA) 
    MBT_U32 i;
    MMT_STB_ErrorCode_E stRet;
    MBT_U16 statusWord;
    MBT_U32 u32RecvLen;
    //MBT_U32 u32StartTime = MLMF_SYS_GetMS();
    u32RecvLen = *pwReplyLen;
    CAF_SmcAccess_Lock();
    stRet = MLMF_SmartCard_TransferData(0,(MBT_U8 *)pbyCommand,wCommandLen,pbyReply, &u32RecvLen,&statusWord);
    CAF_SmcAccess_UnLock();
    if (MM_NO_ERROR == stRet)         
    {   
        pbyReply[u32RecvLen] = (CDCA_U8)(statusWord >> 8);
        pbyReply[u32RecvLen+1] = (CDCA_U8)(statusWord & 0xff);
        u32RecvLen += 2;
        *pwReplyLen = u32RecvLen;
        bRet = MM_TRUE;
    }
    
    if(2 != cav_u8GetSerialNumberCardIDSN)
    {
        /*serial*/
        if(1 == cav_u8FindCMD)
        {
            memcpy(cav_u8SerialNumber,pbyReply,8);
            cav_u8GetSerialNumberCardIDSN++;
            cav_u8FindCMD = 0;
        }
        else if(2 == cav_u8FindCMD)
        {
            memcpy(cav_u8CardID,pbyReply,4);
            memcpy(cav_u8CardSN,pbyReply+4,16);
            cav_u8CardSN[16] = 0;
            cav_u8GetSerialNumberCardIDSN++;
            cav_u8FindCMD = 0;
        }

        
        if(2 == cav_u8GetSerialNumberCardIDSN)
        {
            MBT_U32 u32LocBuf[20];
            MBT_CHAR string[100];
            MBT_U8 *pu8LocBuf = (MBT_U8 *)u32LocBuf;
            MBT_U8 u8Index = 0;
            MBT_U32 u32pos = 0;
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
        }

        if(9 == wCommandLen)
        {
            if(0 == memcmp(cav_u8SerialNumberCmd,pbyCommand,9))
            {
                cav_u8FindCMD = 1;
            }
            else if(0 == memcmp(cav_u8CardIDSNCmd,pbyCommand,9))
            {
                cav_u8FindCMD = 2;
            }
        }
    }
 #endif   
#ifdef M_DSCDBG
    {
        MLMF_Print("CDSTBCA_SCPBRun invoked : Command = ");
        for(i = 0;i < wCommandLen;i++)
        {
            MLMF_Print("%02x ",pbyCommand[i]);
        }
        MLMF_Print("wCommandLen = %d: return %d : OUT Reply = ",wCommandLen,bRet);
        for(i = 0;i < *pwReplyLen;i++)
        {
            MLMF_Print("%02x ",pbyReply[i]);
        }
        MLMF_Print(", wReplyLen = %d\n",*pwReplyLen);
    }
#endif        
    //MLMF_Print("Card trans %d\n",MLMF_SYS_GetMS() - u32StartTime);
    return bRet;
}
#else
CDCA_BOOL CDSTBCA_SCPBRun(const CDCA_U8* pbyCommand, CDCA_U16 wCommandLen,CDCA_U8* pbyReply, CDCA_U16* pwReplyLen)
{
    MBT_BOOL bRet = MM_FALSE;
#if(1 == M_CDCA) 
    MMT_STB_ErrorCode_E stRet;
    MBT_U16 statusWord;
    MBT_U32 u32RecvLen;
    //MBT_U32 u32StartTime = MLMF_SYS_GetMS();
    u32RecvLen = *pwReplyLen;
    CAF_SmcAccess_Lock();
    stRet = MLMF_SmartCard_TransferData(0,(MBT_U8 *)pbyCommand,wCommandLen,pbyReply, &u32RecvLen,&statusWord);
    CAF_SmcAccess_UnLock();
    if (MM_NO_ERROR == stRet)         
    {   
        *pwReplyLen = u32RecvLen;
        bRet = MM_TRUE;
    }
 #endif   
#ifdef M_DSCDBG
    {
        MBT_U32 i;
        MLMF_Print("CDSTBCA_SCPBRun invoked : Command = ");
        for(i = 0;i < wCommandLen;i++)
        {
            MLMF_Print("%02x ",pbyCommand[i]);
        }
        MLMF_Print("wCommandLen = %d: return %d : OUT Reply = ",wCommandLen,bRet);
        for(i = 0;i < *pwReplyLen;i++)
        {
            MLMF_Print("%02x ",pbyReply[i]);
        }
        MLMF_Print(", wReplyLen = %d\n",*pwReplyLen);
    }
#endif        
    //MLMF_Print("Card trans %d\n",MLMF_SYS_GetMS() - u32StartTime);
    return bRet;
}
#endif


MBT_VOID* CDSTBCA_Malloc(CDCA_U32 byBufSize)
{
	return (MBT_VOID *) MLMF_Malloc( byBufSize);   
}

MBT_VOID CDSTBCA_Free(MBT_VOID* pBuf)
{
	if(pBuf!=MM_NULL)
	{
		MLMF_Free( pBuf);
	}
}

MBT_VOID CDSTBCA_Memset(MBT_VOID* pDestBuf,CDCA_U8 c,CDCA_U32 wSize)
{
  	memset(pDestBuf,c,wSize);
}

MBT_VOID CDSTBCA_Memcpy( MBT_VOID* pDestBuf, const MBT_VOID* pSrcBuf, CDCA_U32 wSize )
{
	memcpy ( pDestBuf,  pSrcBuf, wSize );
}

CDCA_U16 CDSTBCA_Strlen(const char* pString)
{
	return strlen(pString);
}


void CDSTBCA_GetSTBID(CDCA_U16* pwPlatformID, CDCA_U32* pdwUniqueID)
{
    MBT_U8 _sn[100] = {0};
    MBT_U8 *p_sn = MM_NULL;
    MBT_U32 j;
#if(1 == M_CDCA) 

    *pwPlatformID = CDCASTB_GetPlatformID();/*0x106b == 4203*/
#endif
    //MLMF_Print("CDSTBCA_GetSTBID %04X%02X%02X%02X%02X\n",*pwPlatformID,cav_u8CardID[0],cav_u8CardID[1],cav_u8CardID[2],cav_u8CardID[3]);
    *pdwUniqueID = 0;
    ShareEnv_LoadEnv();
    p_sn = ShareEnv_EnvGet((MBT_U8 *)"ovt_serail_num");
    if(p_sn != MM_NULL)
    {
        strcpy((MBT_CHAR*)_sn, (MBT_CHAR*)p_sn);
        //MLMF_Print("=============sn: %s=============\n",_sn);
        //*pdwUniqueID = (((_sn[14]-'0')<<28) | ((_sn[15]-'0')<<24) |((_sn[16]-'0')<<20) |((_sn[17]-'0')<<16) |((_sn[18]-'0')<<12) |((_sn[19]-'0')<<8) |((_sn[20]-'0')<<4) | (_sn[21]-'0'));
        for(j=0;j<8;j++)
        {
            if((_sn[14+j] >= '0')&&(_sn[14+j] <= '9'))
            {
                *pdwUniqueID |= ((_sn[14+j]-'0')<<(28-4*j));
            }
            else if((_sn[14+j] >= 'A')&&(_sn[14+j] <= 'F'))
            {
                *pdwUniqueID |= ((_sn[14+j]-'A'+0x0a)<<(28-4*j));
            }
            else if((_sn[14+j] >= 'a')&&(_sn[14+j] <= 'f'))
            {
                *pdwUniqueID |= ((_sn[14+j]-'a'+0x0a)<<(28-4*j));
            }
        }
        MLMF_Print("%04X%08X\n",*pwPlatformID,*pdwUniqueID);
    }
    else
    {
        *pdwUniqueID = ((cav_u8CardID[0]<<24)|(cav_u8CardID[1] <<16)|(cav_u8CardID[2]<<8)|cav_u8CardID[3]);
        //MLMF_Print("*pdwUniqueID %08X %02X %02X %02X %02X\n",*pdwUniqueID,cav_u8CardID[0],cav_u8CardID[1],cav_u8CardID[2],cav_u8CardID[3]);
    }

    //MLMF_Print("******CDSTBCA_GetSTBID = %04X%08X\n",*pwPlatformID,*pdwUniqueID);
}

CDCA_U16  CDSTBCA_SCFunction ( CDCA_U8* pData)
{
    MBT_U8 u8Length;
    MBT_U8 u8InsCode = pData[0];
#ifdef M_DSCDBG
    MLMF_Print("CDSTBCA_SCFunction  invoked :pData = %02x ",pData[0]);
#endif        
    // process instruction
    switch(u8InsCode)
    {
        case ADCAS_SCFUN_INS_RESET:
            if(MM_NO_ERROR == MLMF_SYS_ResetSecModule())
            {
                pData[0] = (MM_PTI_NTSM_OK>>8);
                pData[1] = MM_PTI_NTSM_OK;
                //MLMF_Print("CDSTBCA_SCFunction MLMF_SYS_ResetSecModule OK ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            else
            {
                pData[0] = (MM_PTI_NTSM_ERR_UNSUPORT>>8);
                pData[1] = (MBT_U8)MM_PTI_NTSM_ERR_UNSUPORT;
                //MLMF_Print("CDSTBCA_SCFunction MLMF_SYS_ResetSecModule Error ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            
            break;

        case ADCAS_SCFUN_INS_SET_COMMONKEY:
            if(MM_NO_ERROR == MLMF_PTI_AdvancedSetCommonKey((pData[1] << 8) + pData[2],&pData[3]))
            {
                pData[0] = (MM_PTI_NTSM_OK>>8);
                pData[1] = (MBT_U8)MM_PTI_NTSM_OK;
                //MLMF_Print("CDSTBCA_SCFunction MLMF_PTI_AdvancedSetCommonKey OK ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            else
            {
                pData[0] = (MM_PTI_NTSM_ERR_XX>>8);
                pData[1] = pData[1];
                //MLMF_Print("CDSTBCA_SCFunction MLMF_PTI_AdvancedSetCommonKey Error ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            break;

        case ADCAS_SCFUN_INS_SET_TEMPSESSIONKEY:
            if(MM_NO_ERROR == MLMF_PTI_AdvancedSetTempSessionKey((pData[1] << 8) + pData[2],&pData[3]))
            {
                pData[0] = (MM_PTI_NTSM_OK>>8);
                pData[1] = (MBT_U8)MM_PTI_NTSM_OK;
                //MLMF_Print("CDSTBCA_SCFunction MLMF_PTI_AdvancedSetTempSessionKey OK ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            else
            {
                pData[0] = (MM_PTI_NTSM_ERR_XX>>8);
                pData[1] = pData[1];
                //MLMF_Print("CDSTBCA_SCFunction MLMF_PTI_AdvancedSetTempSessionKey Error ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            break;

        case ADCAS_SCFUN_INS_SELECT_ROOTKEY:
            if(MM_NO_ERROR == MLMF_PTI_AdvancedSelectRootKey(pData[1]))
            {
                pData[0] = (MM_PTI_NTSM_OK>>8);
                pData[1] = (MBT_U8)MM_PTI_NTSM_OK;
                //MLMF_Print("CDSTBCA_SCFunction MLMF_PTI_AdvancedSelectRootKey OK ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            else
            {
                pData[0] = (MM_PTI_NTSM_ERR_XX>>8);
                pData[1] = pData[1];
                //MLMF_Print("CDSTBCA_SCFunction MLMF_PTI_AdvancedSelectRootKey Error ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            break;

        case ADCAS_SCFUN_INS_SET_CONTENTKEY:
            if(MM_NO_ERROR == MLMF_PTI_AdvancedSetContentKey(pData[1],&pData[2]))
            {
                pData[0] = (MM_PTI_NTSM_OK>>8);
                pData[1] = (MBT_U8)MM_PTI_NTSM_OK;
                //MLMF_Print("CDSTBCA_SCFunction MLMF_PTI_AdvancedSetContentKey OK ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            else
            {
                pData[0] = (MM_PTI_NTSM_ERR_INS>>8);
                pData[1] = (MBT_U8)MM_PTI_NTSM_ERR_INS;
                //MLMF_Print("CDSTBCA_SCFunction MLMF_PTI_AdvancedSetContentKey Error ret = %x\n",(pData[0]<<8)|pData[1]);
            }
            break;


        case ADCAS_SCFUN_INS_SET_CW:
            // get cw length
            u8Length = pData[3];
            // set cw
            CDSTBCA_ScrSetCW((pData[1] << 8) + pData[2],&pData[4],&pData[4+u8Length],u8Length,pData[4 + 2 * u8Length]);
            //MLMF_Print("CDSTBCA_SCFunction CDSTBCA_ScrSetCW u8Length = %d\n",u8Length);
            // set return code
            pData[0] = (MM_PTI_NTSM_OK>>8);
            pData[1] = (MBT_U8)MM_PTI_NTSM_OK;
            break;
            
        default:
            // set return code
            pData[0] = (MBT_U8)(MM_PTI_NTSM_ERR_INS >> 8);
            pData[1] = (MBT_U8)(MM_PTI_NTSM_ERR_INS);
            MLMF_Print("CDSTBCA_SCFunction Error ret = %x\n",(pData[0]<<8)|pData[1]);
            break;
    }
#ifdef M_DSCDBG
    MLMF_Print(",return 0x%04x\n",((pData[0]<<8)|pData[1]));
#endif        
    return ((pData[0]<<8)|pData[1]);
}

MBT_VOID TFCAF_CDInGetCDInfo(MBT_VOID)
{
#if(1 == M_CDCA) 
    if(0 == cav_byParentCardSN[0])
    {
        if(CDCA_RC_OK  != CDCASTB_GetCardSN(cav_byParentCardSN))
        {
            //MLMF_Print("TFCAF_CDInGetCDInfo CDCASTB_GetCardSN Faile\n");
            memset(cav_byParentCardSN,0,sizeof(cav_byParentCardSN));
        }
        else
        {
            cav_byParentCardSN[16] = 0;
            //MLMF_Print("TFCAF_CDInGetCDInfo CDCASTB_GetCardSN OK %s\n",cav_byParentCardSN);
        }
    }
#endif    
}

MBT_VOID TFCAF_WrtieCDUpdateInfo(TIMER_M *pstTime,MBT_U8 byUpdateStatus)
{
#if(1 == M_CDCA) 
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;
    CDCAST_CDUpdateStatus  stCDUpdateStatus;

    if(MM_NULL == pstTime)
    {
        return;
    }       

    memcpy(stCDUpdateStatus.byParentCardSN,cav_byParentCardSN,16);
    stCDUpdateStatus.byParentCardSN[16] = 0;
    stCDUpdateStatus.stCDUpdateTime = *pstTime;
    stCDUpdateStatus.byUpdateStatus = byUpdateStatus;
    
    Error=FFSF_FileOpen( (MBT_CHAR *)cav_CardUpdateStatusFile , FFSM_OpenExist, &hFile );
    if(Error != FFSM_ErrorNoError)
    {
        Error = FFSF_FileOpen( (MBT_CHAR *)cav_CardUpdateStatusFile, FFSM_OpenCreate, &hFile);
        Error = FFSF_FileWrite(hFile, (MBT_U8 *)(&stCDUpdateStatus),sizeof(stCDUpdateStatus), &u32LengthActual);
        Error = FFSF_FileClose(hFile);
        return;
    }

    Error = FFSF_FileOpen( (MBT_CHAR *)cav_CardUpdateStatusFile  , FFSM_OpenReadWrite, &hFile);
    Error = FFSF_FileWrite(hFile, (MBT_U8 *)(&stCDUpdateStatus),sizeof(stCDUpdateStatus), &u32LengthActual);
    Error = FFSF_FileClose(hFile);
#endif    
}


MBT_S32 TFCAF_ReadCDUpdateInfo(CDCAST_CDUpdateStatus *pstCDUpdateInfo)
{
#if(1 == M_CDCA) 
    FFST_ErrorCode Error;
    FFST_FileHandle hFile;
    MBT_U32 u32LengthActual;

    if(MM_NULL == pstCDUpdateInfo)
    {
        return CDCA_RC_POINTER_INVALID;
    }       

    
    Error=FFSF_FileOpen( (MBT_CHAR *)cav_CardUpdateStatusFile , FFSM_OpenExist, &hFile );
    if(Error != FFSM_ErrorNoError)
    {
        memset(pstCDUpdateInfo,0,sizeof(CDCAST_CDUpdateStatus));
        return -1;
    }

    Error = FFSF_FileOpen( (MBT_CHAR *)cav_CardUpdateStatusFile  , FFSM_OpenReadWrite, &hFile);
    Error=FFSF_FileRead(hFile, (MBT_U8 *)pstCDUpdateInfo, sizeof(CDCAST_CDUpdateStatus), &u32LengthActual);
    Error = FFSF_FileClose(hFile);
#endif    
    return CDCA_RC_OK;
}

void CDSTBCA_WriteBuffer( CDCA_U8 byBlockID,const CDCA_U8* pbyData,CDCA_U32 dwLen)
{
    MBT_U32 u32NextSerail = 0;
    MBT_U32 u32ReadFLashAddr;
    MBT_U32 u32WriteDestFLashAddr;
    MBT_U32 u32FLashBaseAddr1;
    MBT_U32 u32FLashBaseAddr2;
    MBT_U32 u32FLashMarkAddr1;
    MBT_U32 u32FLashMarkAddr2;
    MBT_U32 u32CRC;
    MBT_U8 u8Buffer1[TFCADATA_HEADSIZE];
    MBT_U8 u8Buffer2[TFCADATA_HEADSIZE];
    MBT_U8 u8DestMagicBuffer[TFCADATA_HEADSIZE];
    MBT_U8 u8Addr1MatchMagic;
    MBT_U8 u8Addr2MatchMagic;
    MBT_U8 *pu8TempBuffer;
    MBT_U8 *pu8CaBuf;
    MBT_U32 *pu32LastWAddr;
    MBT_BOOL bReadFirst = MM_FALSE;
    //MLMF_Print("CDSTBCA_WriteBuffer byBlockID = %d dwLen = %d\n",byBlockID,dwLen);
    if(MM_NULL == pbyData||dwLen > TFCADATA_BUFFERSIZE)
    {
        return;
    }       
    
    if(CDCA_FLASH_BLOCK_A == byBlockID)
    {
        if(MM_NULL == cav_pu8BlockACabuffer)
        {
            cav_pu8BlockACabuffer=(MBT_U8 *)MLMF_Malloc(TFCADATA_BUFFERSIZE);        
            bReadFirst = MM_TRUE;
        }
        
        if(MM_NULL == cav_pu8BlockACabuffer)
        {
            CA_DEBUG(("[CDSTBCA_WriteBuffer]MLMF_Malloc cav_pu8BlockACabuffer faile\n"));
             return;
        }
        pu8CaBuf = cav_pu8BlockACabuffer;        
        u32FLashBaseAddr1 = CADATA_BlockA_FlashAddress1;
        u32FLashBaseAddr2 = CADATA_BlockA_FlashAddress2;
        
        u32FLashMarkAddr1 = BlockA_FMarkAddr1;
        u32FLashMarkAddr2 = BlockA_FMarkAddr2;
        pu32LastWAddr = &cav_u32BlockALastWriteAddr;
    }
    else
    {
        if(MM_NULL == cav_pu8BlockBCabuffer)
        {
            cav_pu8BlockBCabuffer=(MBT_U8 *)MLMF_Malloc(TFCADATA_BUFFERSIZE);        
            bReadFirst = MM_TRUE;
        }
        
        if(MM_NULL == cav_pu8BlockBCabuffer)
        {
            CA_DEBUG(("[CDSTBCA_WriteBuffer]MLMF_Malloc cav_pu8BlockACabuffer faile\n"));
             return;
        }
        pu8CaBuf = cav_pu8BlockBCabuffer;        
        u32FLashBaseAddr1 = CADATA_BlockB_FlashAddress1;
        u32FLashBaseAddr2 = CADATA_BlockB_FlashAddress2;
        
        u32FLashMarkAddr1 = BlockB_FMarkAddr1;
        u32FLashMarkAddr2 = BlockB_FMarkAddr2;
        pu32LastWAddr = &cav_u32BlockBLastWriteAddr;
    }

    
    u32WriteDestFLashAddr = u32FLashBaseAddr1;
    
    if(pu8CaBuf != pbyData)
    {
        memcpy(pu8CaBuf,pbyData,dwLen);
    }

    pu8TempBuffer=(MBT_U8 *)MLMF_Malloc(FLASH_MAINBLOCK_SIZE);
    if(MM_NULL == pu8TempBuffer)
    {
        CA_DEBUG(("[CDSTBCA_WriteBuffer]MLMF_Malloc pu8CaBuf faile\n"));
         return;
    }

    
    FLASHF_Read(u32FLashMarkAddr1,u8Buffer1,TFCADATA_HEADSIZE);
    FLASHF_Read(u32FLashMarkAddr2,u8Buffer2,TFCADATA_HEADSIZE);
    u8Addr1MatchMagic = memcmp(tfcav_flashMagic,u8Buffer1,4);
    u8Addr2MatchMagic = memcmp(tfcav_flashMagic,u8Buffer2,4);

    if(0 == u8Addr1MatchMagic)
    {
        if(0 == u8Addr2MatchMagic)
        {
            MBT_U32 u32Serail1 = ((u8Buffer1[4]<<24)|(u8Buffer1[5]<<16)|(u8Buffer1[6]<<8)|u8Buffer1[7]);
            MBT_U32 u32Serail2 = ((u8Buffer2[4]<<24)|(u8Buffer2[5]<<16)|(u8Buffer2[6]<<8)|u8Buffer2[7]);
            if(0 == *pu32LastWAddr)
            {
                if(u32Serail1 > u32Serail2&&(u32Serail1 - u32Serail2) < 0x00ffffff)
                {
                    u32WriteDestFLashAddr = u32FLashBaseAddr2;
                    u32ReadFLashAddr = u32FLashBaseAddr1;
                    u32NextSerail = u32Serail1+1;
                }
                else
                {
                    u32WriteDestFLashAddr = u32FLashBaseAddr1;
                    u32ReadFLashAddr = u32FLashBaseAddr2;
                    u32NextSerail = u32Serail2+1;
                }
            }
            else if(u32FLashBaseAddr1 == *pu32LastWAddr)
            {
                u32WriteDestFLashAddr = u32FLashBaseAddr2;
                u32ReadFLashAddr = u32FLashBaseAddr1;
                u32NextSerail = u32Serail1+1;
            }
            else
            {
                u32WriteDestFLashAddr = u32FLashBaseAddr1;
                u32ReadFLashAddr = u32FLashBaseAddr2;
                u32NextSerail = u32Serail2+1;
            }
            if(bReadFirst)
            {
                FLASHF_Read(u32ReadFLashAddr,pu8TempBuffer,TFCABLOCK_SIZE);
                //MLMF_Print("CDSTBCA_WriteBuffer 1 read from u32ReadFLashAddr = %x bReadFirst = %d\n",u32ReadFLashAddr,bReadFirst);
                memcpy(pu8CaBuf,pu8TempBuffer,TFCADATA_BUFFERSIZE);
            }
        }
        else
        {
            u32WriteDestFLashAddr = u32FLashBaseAddr2;
            u32ReadFLashAddr = u32FLashBaseAddr1;
            u32NextSerail = ((u8Buffer1[4]<<24)|(u8Buffer1[5]<<16)|(u8Buffer1[6]<<8)|u8Buffer1[7])+1;
            if(bReadFirst)
            {
                FLASHF_Read(u32ReadFLashAddr,pu8TempBuffer,TFCABLOCK_SIZE);
                //MLMF_Print("CDSTBCA_WriteBuffer 2 read from %x bReadFirst = %d\n",u32ReadFLashAddr,bReadFirst);
                memcpy(pu8CaBuf,pu8TempBuffer,TFCADATA_BUFFERSIZE);
            }
        }
    }
    else
    {
        if(0 == u8Addr2MatchMagic)
        {
            u32WriteDestFLashAddr = u32FLashBaseAddr1;
            u32ReadFLashAddr = u32FLashBaseAddr2;
            u32NextSerail = ((u8Buffer2[4]<<24)|(u8Buffer2[5]<<16)|(u8Buffer2[6]<<8)|u8Buffer2[7])+1;
            if(bReadFirst)
            {
                //MLMF_Print("CDSTBCA_WriteBuffer 3 read from %x bReadFirst = %d\n",u32ReadFLashAddr,bReadFirst);
                FLASHF_Read(u32ReadFLashAddr,pu8TempBuffer,TFCABLOCK_SIZE);
                memcpy(pu8CaBuf,pu8TempBuffer,TFCADATA_BUFFERSIZE);
            }
        }
        else
        {
            u32WriteDestFLashAddr = u32FLashBaseAddr2;
            u32ReadFLashAddr = u32FLashBaseAddr1;
            u32NextSerail = 0;
            if(bReadFirst)
            {
                FLASHF_Read(u32ReadFLashAddr,pu8TempBuffer,TFCABLOCK_SIZE);
                //MLMF_Print("CDSTBCA_WriteBuffer 4 read from %x bReadFirst = %d\n",u32ReadFLashAddr,bReadFirst);
                memcpy(pu8CaBuf,pu8TempBuffer,TFCADATA_BUFFERSIZE);
            }
        }
    }


    memcpy(pu8CaBuf,pbyData,dwLen);

    u32CRC = MMF_Common_CRC((MBT_U32 *)pu8CaBuf,TFCADATA_BUFFERSIZE/4);
    CA_DEBUG(("[CDSTBCA_WriteBuffer] CRC1 %x\n",u32CRC));
    memcpy(u8DestMagicBuffer,tfcav_flashMagic,4);
    if(0x7fffffff == u32NextSerail)
    {
        u32NextSerail = 0;
    }

    u8DestMagicBuffer[4] = ((u32NextSerail>>24)&0x000000ff);
    u8DestMagicBuffer[5] = ((u32NextSerail>>16)&0x000000ff);
    u8DestMagicBuffer[6] = ((u32NextSerail>>8)&0x000000ff);
    u8DestMagicBuffer[7] = (u32NextSerail&0x000000ff);

    u8DestMagicBuffer[8] = ((u32CRC>>24)&0x000000ff);
    u8DestMagicBuffer[9] = ((u32CRC>>16)&0x000000ff);
    u8DestMagicBuffer[10] = ((u32CRC>>8)&0x000000ff);
    u8DestMagicBuffer[11] = (u32CRC&0x000000ff);
    
    memcpy(pu8TempBuffer,pu8CaBuf,TFCADATA_BUFFERSIZE);
    memcpy(pu8TempBuffer+TFCABLOCK_SIZE - TFCADATA_HEADSIZE,u8DestMagicBuffer,TFCADATA_HEADSIZE);
    //MLMF_Print("CDSTBCA_WriteBuffer Write 2 u32WriteDestFLashAddr = %x\n",u32WriteDestFLashAddr);
    FLASHF_ForceSaveFile(u32WriteDestFLashAddr,pu8TempBuffer,TFCABLOCK_SIZE);
    *pu32LastWAddr = u32WriteDestFLashAddr;
    MLMF_Free(pu8TempBuffer);
}	


void CDSTBCA_ReadBuffer( CDCA_U8 byBlockID,CDCA_U8*  pbyData,CDCA_U32 *pdwLen)
{
    MBT_U32 u32CurReadFLashAddr;
    MBT_U32 u32PrevCrc = 0;
    MBT_U32 u32Crc;
    MBT_U8 u8Buffer1[TFCADATA_HEADSIZE];
    MBT_U8 u8Buffer2[TFCADATA_HEADSIZE];
    MBT_U8 u8Addr1MatchMagic;
    MBT_U8 u8Addr2MatchMagic;
    MBT_U32 u32FLashDataAddr1;
    MBT_U32 u32FLashDataAddr2;
    MBT_U32 u32FLashMarkAddr1;
    MBT_U32 u32FLashMarkAddr2;
    MBT_U32 *pu32LastWAddr;
    MBT_U8 *pu8CaBuf;
    //MLMF_Print("CDSTBCA_ReadBuffer byBlockID = %d *pdwLen = %d\n",byBlockID,*pdwLen);
    if(MM_NULL == pbyData||0 == *pdwLen)
    {
        return;
    }

    
    if(CDCA_FLASH_BLOCK_A == byBlockID)
    {
        if(MM_NULL == cav_pu8BlockACabuffer)
        {
            cav_pu8BlockACabuffer=(MBT_U8 *)MLMF_Malloc(TFCADATA_BUFFERSIZE);        
        }
        else
        {
            memcpy(pbyData,cav_pu8BlockACabuffer,(MBT_S32)(*pdwLen));
            return;
        }
        
        if(MM_NULL == cav_pu8BlockACabuffer)
        {
            memset(pbyData,0xff,(MBT_S32)(*pdwLen));
            //MLMF_Print("[CDSTBCA_WriteBuffer]MLMF_Malloc cav_pu8BlockACabuffer faile\n");
            return;
        }
        pu8CaBuf = cav_pu8BlockACabuffer;        
        u32FLashDataAddr1 = BlockA_FDATAAddr1;
        u32FLashDataAddr2 = BlockA_FDATAAddr2;
        
        u32FLashMarkAddr1 = BlockA_FMarkAddr1;
        u32FLashMarkAddr2 = BlockA_FMarkAddr2;
        pu32LastWAddr = &cav_u32BlockALastWriteAddr;
    }
    else
    {
        if(MM_NULL == cav_pu8BlockBCabuffer)
        {
            cav_pu8BlockBCabuffer=(MBT_U8 *)MLMF_Malloc(TFCADATA_BUFFERSIZE);        
        }
        else
        {
            memcpy(pbyData,cav_pu8BlockBCabuffer,(MBT_S32)(*pdwLen));
            return;
        }
        
        if(MM_NULL == cav_pu8BlockBCabuffer)
        {
            memset(pbyData,0xff,(MBT_S32)(*pdwLen));
            //MLMF_Print("[CDSTBCA_WriteBuffer]MLMF_Malloc pu8CaBuf faile\n");
            return;
        }
        pu8CaBuf = cav_pu8BlockBCabuffer;        
        u32FLashDataAddr1 = BlockB_FDATAAddr1;
        u32FLashDataAddr2 = BlockB_FDATAAddr2;
        
        u32FLashMarkAddr1 = BlockB_FMarkAddr1;
        u32FLashMarkAddr2 = BlockB_FMarkAddr2;
        pu32LastWAddr = &cav_u32BlockBLastWriteAddr;
    }

    FLASHF_Read(u32FLashMarkAddr1,u8Buffer1,TFCADATA_HEADSIZE);
    FLASHF_Read(u32FLashMarkAddr2,u8Buffer2,TFCADATA_HEADSIZE);
    
    u8Addr1MatchMagic = memcmp(tfcav_flashMagic,u8Buffer1,4);
    u8Addr2MatchMagic = memcmp(tfcav_flashMagic,u8Buffer2,4);

    if(0 == u8Addr1MatchMagic)
    {
        if(0 == u8Addr2MatchMagic)
        {
            MBT_U32 u32Serail1 = ((u8Buffer1[4]<<24)|(u8Buffer1[5]<<16)|(u8Buffer1[6]<<8)|u8Buffer1[7]);
            MBT_U32 u32Serail2 = ((u8Buffer2[4]<<24)|(u8Buffer2[5]<<16)|(u8Buffer2[6]<<8)|u8Buffer2[7]);
            if(u32Serail1 > u32Serail2&&(u32Serail1 - u32Serail2) < 0x00ffffff)
            {
                u32CurReadFLashAddr = u32FLashDataAddr1;
                u32PrevCrc = ((u8Buffer1[8]<<24)|(u8Buffer1[9]<<16)|(u8Buffer1[10]<<8)|u8Buffer1[11]);
            }
            else
            {
                u32CurReadFLashAddr = u32FLashDataAddr2;
                u32PrevCrc = ((u8Buffer2[8]<<24)|(u8Buffer2[9]<<16)|(u8Buffer2[10]<<8)|u8Buffer2[11]);
            }
        }
        else
        {
            u32CurReadFLashAddr = u32FLashDataAddr1;
            u32PrevCrc = ((u8Buffer1[8]<<24)|(u8Buffer1[9]<<16)|(u8Buffer1[10]<<8)|u8Buffer1[11]);
        }
    }
    else
    {
        u32CurReadFLashAddr = u32FLashDataAddr2;
        u32PrevCrc = ((u8Buffer2[8]<<24)|(u8Buffer2[9]<<16)|(u8Buffer2[10]<<8)|u8Buffer2[11]);
    }
    

    *pu32LastWAddr = u32CurReadFLashAddr;
    FLASHF_Read(u32CurReadFLashAddr,pu8CaBuf,TFCADATA_BUFFERSIZE);
    
    u32Crc = MMF_Common_CRC((MBT_U32 *)pu8CaBuf,TFCADATA_BUFFERSIZE/4);
    if(u32Crc != u32PrevCrc)
    {
        if(u32FLashDataAddr1 != u32CurReadFLashAddr)
        {
            u32CurReadFLashAddr = u32FLashDataAddr1;
            *pu32LastWAddr = u32CurReadFLashAddr;
            //MLMF_Print("CDSTBCA_ReadBuffer u32FLashDataAddr1 != u32CurReadFLashAddr u32CurReadFLashAddr = %x\n",u32CurReadFLashAddr);
            FLASHF_Read(u32CurReadFLashAddr,pu8CaBuf,TFCADATA_BUFFERSIZE);
        }
        else
        {
            //MLMF_Print("CDSTBCA_ReadBuffer u32CurReadFLashAddr = %x\n",u32CurReadFLashAddr);
        }
    }
    else
    {
        //MLMF_Print("CDSTBCA_ReadBuffer CRC OK u32CurReadFLashAddr = %x\n",u32CurReadFLashAddr);
    }
    memcpy(pbyData,pu8CaBuf,(MBT_S32)(*pdwLen));
}	


MBT_VOID CDSTBCA_Sleep(CDCA_U32 wMilliSeconds )
{
    //MLMF_Print("CDSTBCA_Sleep wMilliSeconds = %d\n",wMilliSeconds);
    if( wMilliSeconds )
    {
        MLMF_Task_Sleep(wMilliSeconds);
    }
}



MBT_VOID CDSTBCA_SemaphoreInit( CDCA_Semaphore* pSemaphore ,CDCA_U8 bInitVal)
{
    MET_Sem_T ptrSemphore;
    
    if(MM_NULL == pSemaphore)
    {
        return;//判断传入的指针的有效性
    }
     MLMF_Sem_Create(&ptrSemphore, bInitVal);
     //MLMF_Print("CDSTBCA_SemaphoreInit ptrSemphore = %x\n",ptrSemphore);
    *pSemaphore = (CDCA_Semaphore)ptrSemphore;
 }

MBT_VOID CDSTBCA_SemaphoreSignal(CDCA_Semaphore* pSemaphore )
{
    if(MM_NULL == pSemaphore)
    {
        return;//判断传入的指针的有效性
    }
     MLMF_Sem_Release((MET_Sem_T)  (* pSemaphore) );
 }

MBT_VOID CDSTBCA_SemaphoreWait( CDCA_Semaphore* pSemaphore )
{
    if(MM_NULL == pSemaphore)
    {
        return;//判断传入的指针的有效性
    }
    //MLMF_Print("CDSTBCA_SemaphoreWait Entry (* pSemaphore)  =%x\n",(* pSemaphore));
    MLMF_Sem_Wait((MET_Sem_T)  (* pSemaphore) ,MM_SYS_TIME_INIFIE);
    //MLMF_Print("MLMF_Sem_Wait Exit\n");
}

CDCA_BOOL CDSTBCA_RegisterTask( const char* szName,
                                       CDCA_U8     byPriority,
                                       void*       pTaskFun,
                                       void*       pParam,
                                       CDCA_U16    wStackSize  )
{  
    MET_Task_T temHandle;
    if(0 == strcmp("CDCA_MSG_task",szName))
    {
        byPriority = CACDLIB_MSG_TASK_PRIORITY;
    }
    else if(0 == strcmp("CDCA_EMM_task",szName))
    {
        byPriority = CACDLIB_PROCESS_LOW_PRIORITY;
    }
    else
    {   /*CDCA_ECM_task*/
        byPriority = CACDLIB_PROCESS_HIGH_PRIORITY;
    }
    //MLMF_Print("CDSTBCA_RegisterTask Entry %s byPriority = %d\n",szName,byPriority);
    if (MM_NO_ERROR ==  ( MLMF_Task_Create( (MBT_VOID(*)(MBT_VOID *))pTaskFun ,
                                        pParam,
                                        (MBT_S32)wStackSize+1024,
                                        byPriority ,
                                        &temHandle,
                                        szName ) ))
    {
        //MLMF_Print("CDSTBCA_RegisterTask Exit %s success\n",szName);
        return CDCA_TRUE;
    }
    //MLMF_Print("CDSTBCA_RegisterTask Exit %s faile byPriority = %d\n",szName,byPriority);
    return CDCA_FALSE;
}


CDCA_U8 CDSTBCA_SetPrivateDataFilter(CDCA_U8 byReqID,const CDCA_U8* pbyFilter,const CDCA_U8* pbyMask,CDCA_U8 byLen, CDCA_U16 wPid, CDCA_U8 byWaitSeconds)
{
    ParseCallBack ParseTable = MM_NULL;
    MMT_STB_ErrorCode_E stRet ;
    MBT_BOOL bRet = MM_FALSE;
    MBT_S32 stFilterHandle = MM_PTI_INVALIDHANDLE;
    MBT_U32 u32ChannelBuf;
    CDCA_U8 u8PhyReqID = byReqID&0x7f;
    MBT_VOID (*pRegx_TimerCallBack)(MBT_U32 u32Para[]);
    if( u8PhyReqID < 1 || u8PhyReqID > 6|| byLen > FILTER_DEPTH_SIZE )
    {
        MLMF_Print("Error CDSTBCA_SetPrivateDataFilter return %d\n",bRet);
        return bRet ;
    }
    //CA_DEBUG(("pbyFilter %02x %02x %02x %02x %02x %02x %02x %02x\n",pbyFilter[0],pbyFilter[1],pbyFilter[2],pbyFilter[3],pbyFilter[4],pbyFilter[5],pbyFilter[6],pbyFilter[7]));
    //CA_DEBUG(("pbyMask   %02x %02x %02x %02x %02x %02x %02x %02x\n",pbyMask[0],pbyMask[1],pbyMask[2],pbyMask[3],pbyMask[4],pbyMask[5],pbyMask[6],pbyMask[7]));
    if(0x80&byReqID)
    {
        u32ChannelBuf = 1024;
    }
    else
    {
        u32ChannelBuf = 10240;
    }
    CAF_FilterAccess_Lock();
    switch(u8PhyReqID)
    {
        case 1:
            if(wPid == NIT_PID)
            {
                stFilterHandle = NIT_FILTER;
                cav_u8CaLibAskedForNit = 1;
                CAF_FilterAccess_UnLock();
                return MM_TRUE;
            }
            else
            {
                stFilterHandle = caf_GetEcmFilterHandle(wPid);
#if(1 == M_PRINT_ECMCARDTIME) 
                cav_u32SetFilterTime = MLMF_SYS_GetMS();
#endif    
                //MLMF_Print("CDSTBCA_SetPrivateDataFilter stFilterHandle %x wPid = %x\n",stFilterHandle,wPid);
            }
            ParseTable = Caf_GetRegID1;
            pRegx_TimerCallBack = reg1_TimerCallBack;
            break;
        case 2:
            stFilterHandle = EMM_FILTER_REG0;
            ParseTable = Caf_GetRegID2;
            pRegx_TimerCallBack = reg2_TimerCallBack;
            break;
        case 3:
            stFilterHandle = EMM_FILTER_REG1;
            ParseTable = Caf_GetRegID3;
            pRegx_TimerCallBack = reg3_TimerCallBack;
            break;
        case 4:
            stFilterHandle = EMM_FILTER_REG2;
            ParseTable = Caf_GetRegID4;
            pRegx_TimerCallBack = reg4_TimerCallBack;
            break;
        case 5:
            stFilterHandle = EMM_FILTER_REG3;
            ParseTable = Caf_GetRegID5;
            pRegx_TimerCallBack = reg5_TimerCallBack;
            break;
        case 6:
            stFilterHandle = EMM_FILTER_REG4;
            ParseTable = Caf_GetRegID6;
            pRegx_TimerCallBack = reg6_TimerCallBack;
            break;
        default:
            pRegx_TimerCallBack = MM_NULL;
            break;
    }

    if(MM_PTI_INVALIDHANDLE == stFilterHandle)
    {
        bRet = MM_TRUE;
    }
    else
    {
        stRet = SRSTF_SetSpecifyFilter(stFilterHandle,
                                        ParseTable,  
                                        pRegx_TimerCallBack,
                                        (MBT_U8*)pbyFilter, 
                                        (MBT_U8*)pbyMask,  
                                        byLen,  
                                        wPid, 
                                        u32ChannelBuf,
                                        byWaitSeconds,
                                        IPANEL_STRAIGHT_RECEIVE_MODE,
                                        MM_NULL);
        if(MM_NO_ERROR == stRet)
        {
            bRet = MM_TRUE;
        }
        else
        {
            MLMF_Print("CDSTBCA_SetPrivateDataFilter SRSTF_SetSpecifyFilter   faile stRet = %d\n",stRet);
        }
    }
    CAF_FilterAccess_UnLock();
#ifdef M_DSCDBG
    MLMF_Print("CDSTBCA_SetPrivateDataFilter invoked : byReqID = 0x%x:pbyFilter = ",byReqID);
    for(u32ChannelBuf = 0;u32ChannelBuf < byLen;u32ChannelBuf++)
    {
        MLMF_Print("%02x ",pbyFilter[u32ChannelBuf]);
    }
    MLMF_Print(",pbyMask = ");
    for(u32ChannelBuf = 0;u32ChannelBuf < byLen;u32ChannelBuf++)
    {
        MLMF_Print("%02x ",pbyMask[u32ChannelBuf]);
    }
    MLMF_Print(", byLen = %d:wPid = 0x%x:byWaitSeconds = %d return %d\n",byLen,wPid,byWaitSeconds,bRet);
#endif
    return bRet;
}


void CDSTBCA_ReleasePrivateDataFilter( CDCA_U8  byReqID,CDCA_U16 wPid )
{
#if(1 == M_CDCA) 
    CAF_FilterAccess_Lock();
    caf_FreeEcmFilterHandle(wPid);
    CAF_FilterAccess_UnLock();
    CA_DEBUG(("CDSTBCA_ReleasePrivateDataFilter wPid = %x\n",wPid));
#endif
}

CDCA_BOOL CDSTBCA_GetCurrentTime( CDCA_S32  *pUTCTime, CDCA_S32 *pTimeZoneBias, CDCA_S32 *pDaylightBias,  CDCA_BOOL* pInDaylight)
{
    TIMER_M stTimer;

    if(NULL == pUTCTime||NULL == pTimeZoneBias||NULL == pDaylightBias||NULL == pInDaylight)
    {
        //MLMF_Print("CDSTBCA_GetCurrentTime Para error\n");
        return CDCA_FALSE;
    }
    
    if(MM_FALSE == DBSF_MntIsTSTimeGot())
    {
        *pUTCTime = 0;
        *pTimeZoneBias = 0;
        *pDaylightBias = 0;
        *pInDaylight = 0;
        //MLMF_Print("CDSTBCA_GetCurrentTime *pUTCTime = %x *pTimeZoneBias = %d\n",*pUTCTime,*pTimeZoneBias);
        return CDCA_FALSE;
    }
    
    TMF_GetSysTime(&stTimer);
	
    switch(stTimer.uTimeZone)
    {
        case TIME_ZONE_M11_00:
            *pTimeZoneBias = 660;
            break;
        case TIME_ZONE_M10_00:
            *pTimeZoneBias = 600;
            break;
        case TIME_ZONE_M09_00:
            *pTimeZoneBias = 540;
            break;
        case TIME_ZONE_M08_00:
            *pTimeZoneBias = -480;
            break;
        case TIME_ZONE_M07_00:
            *pTimeZoneBias = 420;
            break;
        case TIME_ZONE_M06_00:
            *pTimeZoneBias = 360;
            break;
        case TIME_ZONE_M05_00:
            *pTimeZoneBias = 300;
            break;
        case TIME_ZONE_M04_00:
            *pTimeZoneBias = 240;
            break;
        case TIME_ZONE_M03_30:
            *pTimeZoneBias = 210;
            break;
        case TIME_ZONE_M03_00:
            *pTimeZoneBias = 180;
            break;
        case TIME_ZONE_M02_00:
            *pTimeZoneBias = 120;
            break;
        case TIME_ZONE_M01_00:
            *pTimeZoneBias = 60;
            break;
        case TIME_ZONE_00_00:
            *pTimeZoneBias = 0;
            break;
        case TIME_ZONE_A01_00:
            *pTimeZoneBias = -60;
            break;
        case TIME_ZONE_A02_00:
            *pTimeZoneBias = -120;
            break;
        case TIME_ZONE_A03_00:
            *pTimeZoneBias = -180;
            break;
        case TIME_ZONE_A03_30:
            *pTimeZoneBias = -210;
            break;
        case TIME_ZONE_A04_00:
            *pTimeZoneBias = -240;
            break;
        case TIME_ZONE_A04_30:
            *pTimeZoneBias = -270;
            break;
        case TIME_ZONE_A05_00:
            *pTimeZoneBias = -300;
            break;
        case TIME_ZONE_A05_30:
            *pTimeZoneBias = -330;
            break;
        case TIME_ZONE_A06_00:
            *pTimeZoneBias = -360;
            break;
        case TIME_ZONE_A06_30:
            *pTimeZoneBias = -390;
            break;
        case TIME_ZONE_A07_00:
            *pTimeZoneBias = -420;
            break;
        case TIME_ZONE_A08_00:
            *pTimeZoneBias = -480;
            break;
        case TIME_ZONE_A09_00:
            *pTimeZoneBias = -540;
            break;
        case TIME_ZONE_A09_30:
            *pTimeZoneBias = -570;
            break;
        case TIME_ZONE_A10_00:
            *pTimeZoneBias = -600;
            break;
        case TIME_ZONE_A10_30:
            *pTimeZoneBias = -630;
            break;
        case TIME_ZONE_A11_00:
            *pTimeZoneBias = -660;
            break;
        case  TIME_ZONE_A12_00:
            *pTimeZoneBias = -720;
            break;
        default:
            break;
    }

    *pUTCTime = stTimer.u32UtcTimeSecond;
    *pDaylightBias = 0;
    *pInDaylight = 0;
    //MLMF_Print("CDSTBCA_GetCurrentTime *pUTCTime = %x *pTimeZoneBias = %d\n",*pUTCTime,*pTimeZoneBias);
    return CDCA_TRUE;
}

MBT_VOID CDSTBCA_SetInvalidCW(MBT_VOID)
{
	CAF_SetInvalidCW();
}


void CDSTBCA_ScrSetCW(CDCA_U16 wEcmPID,const CDCA_U8* pbyOddKey,const CDCA_U8* pbyEvenKey,CDCA_U8 byKeyLen,CDCA_U8 bTaingEnabled)
{
	CAF_SetCW(wEcmPID,pbyOddKey,pbyEvenKey);
}


#endif



