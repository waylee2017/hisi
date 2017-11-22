/*****************************************************************************
* File name   : tfca_dspl.c
* Description : This passes all messages to show on TV. 
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
#include "dbs_api.h"
#include "ui_api.h"
#include "appblast.h"
#include "../cas_iner.h"

MBT_VOID (*pCaNotifyUICallBack)( MBT_S32 iType,MBT_U32 stPid, MBT_VOID *pData,MBT_S32 iDataSize) = MM_NULL;

MBT_U8 bShowFinger = 0;
MBT_U8 bShowOsd = 0;

SCDCAFingerInfo TempSuperFinger;
SCDCAOSDInfo TempSuperOsd;

#if(1 == M_CDCA) 
void CDSTBCA_Printf(CDCA_U8 byLevel,const MBT_CHAR* pbyMesssage)
{
    //MLMF_Print("%s",pbyMesssage);
	//return;
}


void CDSTBCA_EmailNotifyIcon(CDCA_U8 byShow,CDCA_U32 dwEmailID)
{
    MBT_S32 iType = 0xff;
    switch(byShow)
    {
        case CDCA_Email_IconHide:/*隐藏邮件通知图标*/
            iType = DUMMY_KEY_CANCEL_ITEM  ;    /*timer_module_command  is changed. */
            break;

        case CDCA_Email_New:/*新邮件通知，显示新邮件图标*/
            iType = DUMMY_KEY_SHOW_ITEM; /*DUMMY_KEY_SCStatus1  ;*/
            break;

        case CDCA_Email_SpaceExhaust:/*有新邮件，但磁盘空间不够；图标闪烁。*/
            iType = DUMMY_KEY_NO_SPACE;  /*DUMMY_KEY_SCStatus2  ;*/
            break;

        default:
            break;
    }

    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(iType,(MBT_U32)dwEmailID,MM_NULL,0);
    }	
}

void CDSTBCA_HideOSDMessage(CDCA_U8 byStyle)
{
    MBT_S32 iType = 0xff;
    //MLMF_Print("[%s]Close osd!!!,byStyle = %d\n",__FUNCTION__,byStyle);
    switch(byStyle)
    {
        case CDCA_OSD_TOP:
            iType = DUMMY_KEY_CANCEL_OSDTOP  ;    
            break;

        case CDCA_OSD_BOTTOM:
            iType = DUMMY_KEY_CANCEL_OSDBOTTOM;
            break;

        default:
            break;
    }
    if(pCaNotifyUICallBack)
    {
        bShowOsd = 0;
        pCaNotifyUICallBack(iType,cam_InvalidPID,MM_NULL,0);
    }	
}

void CDSTBCA_ShowOSDMessage( CDCA_U8 byStyle,const char* szMessage)
{
    MBT_S32 iType = 0xff;

    if(MLMF_PVR_IsRecord())
    {
        SCDCAOSDInfo OsdInfo,*pOsdInfo;

        if(szMessage)
        {
            pOsdInfo = &OsdInfo;
            if(byStyle == CDCA_OSD_TOP)
            {
                pOsdInfo->byDisplayMode = 1;
            }
            else
            {
                pOsdInfo->byDisplayMode = 2;
            }
            pOsdInfo->dwFontColor = 0xFFFFFFFF;
            pOsdInfo->dwBackgroundColor = 0xFF0000FF;
            strcpy(pOsdInfo->szContent, szMessage);
        }
        else
        {
            pOsdInfo = NULL;
        }
        MLMF_PVR_ExtraFile_Add((void*)pOsdInfo, sizeof(SCDCAOSDInfo));
    }
    
    if(pCaNotifyUICallBack)
    {
        if(NULL != szMessage)
        {
            switch(byStyle)
            {
                case CDCA_OSD_TOP:
                    bShowOsd = 2;
                    iType = DUMMY_KEY_DISP_OSDTOP;    
                    break;
        
                case CDCA_OSD_BOTTOM:
                    bShowOsd = 3;
                    iType = DUMMY_KEY_DISP_OSDBOTTOM;
                    break;
        
                default:
                    break;
            }
            pCaNotifyUICallBack(iType, cam_InvalidPID, (MBT_VOID *)szMessage, strlen(szMessage)+1);
        }
    }	
}

void  CDSTBCA_ShowOSDInfo(SCDCAOSDInfo *pOSDInfo)
{
    /*if(pOSDInfo)
    {
        MLMF_Print("byDisplayMode=%d\n",pOSDInfo->byDisplayMode);
        if(pOSDInfo->byDisplayMode == 0)
        {
            MLMF_Print("byShowType=%d\n",pOSDInfo->byShowType);
            MLMF_Print("byFontSize=%d\n",pOSDInfo->byFontSize);
            MLMF_Print("byBackgroundArea=%d\n",pOSDInfo->byBackgroundArea);
            MLMF_Print("bShowCardSN=%d\n",pOSDInfo->bShowCardSN);
            MLMF_Print("szCardSN=%s\n",pOSDInfo->szCardSN);
    }
        MLMF_Print("dwFontColor=0x%x\n",pOSDInfo->dwFontColor);
        MLMF_Print("dwBackgroundColor=0x%x\n",pOSDInfo->dwBackgroundColor);
        MLMF_Print("szContent=%s\n",pOSDInfo->szContent);
    }*/
    
    if(pCaNotifyUICallBack)
    {
        if(NULL == pOSDInfo)
        {
            //MLMF_Print("Close super osd!!!\n");
            bShowOsd = 0;
            pCaNotifyUICallBack(DUMMY_KEY_CLEAR_SUPER_OSD, cam_InvalidPID, MM_NULL, 0);
        }
        else
        {
            bShowOsd = 1;
            pCaNotifyUICallBack(DUMMY_KEY_SHOW_SUPER_OSD, cam_InvalidPID, (MBT_VOID *)pOSDInfo, sizeof(SCDCAOSDInfo));
        }
    }

    if(MLMF_PVR_IsRecord())
    {
        MLMF_PVR_ExtraFile_Add((void*)pOSDInfo, sizeof(SCDCAOSDInfo));
    }
}

void CDSTBCA_ShowFingerInfo ( CDCA_U16 wEcmPID,const SCDCAFingerInfo* pFingerInfo )
{
    if(MLMF_PVR_IsPlay())
    {
        return;
    }

    /*if(pFingerInfo)
    {
        MLMF_Print("byShowType=%d\n",pFingerInfo->byShowType);
        MLMF_Print("byContentType=%d\n",pFingerInfo->byContentType);
        MLMF_Print("bIsVisible=%d\n",pFingerInfo->bIsVisible);
        MLMF_Print("bIsForcedShow=%d\n",pFingerInfo->bIsForcedShow);
        MLMF_Print("byEncryption=%d\n",pFingerInfo->byEncryption);
        MLMF_Print("wFlashing_EachShowTime=%d\n",pFingerInfo->wFlashing_EachShowTime);
        MLMF_Print("wFlashing_EachHideTime=%d\n",pFingerInfo->wFlashing_EachHideTime);
        MLMF_Print("byFontSize=%d\n",pFingerInfo->byFontSize);
        MLMF_Print("dwFontColor=0x%x\n",pFingerInfo->dwFontColor);
        MLMF_Print("dwBackgroundColor=0x%x\n",pFingerInfo->dwBackgroundColor);
        MLMF_Print("byX_position=%d\n",pFingerInfo->byX_position);
        MLMF_Print("byY_position=%d\n",pFingerInfo->byY_position);
        MLMF_Print("szContent=%s\n",pFingerInfo->szContent);
    }*/
    if(MM_FALSE == CAF_IsCurPrgEcm(wEcmPID))
    {
        //MLMF_Print("[%s][%d]Not Cur Program, ECM is wrong!!!",__FUNCTION__,__LINE__);
        pCaNotifyUICallBack(DUMMY_KEY_CLEAR_SUPER_FINGER,wEcmPID,MM_NULL,0);
        return;
    }
    
    if(pCaNotifyUICallBack)
    {
        if(NULL == pFingerInfo)
        {
            //MLMF_Print("Close super finger!!!");
            bShowFinger = 0;
            pCaNotifyUICallBack(DUMMY_KEY_CLEAR_SUPER_FINGER, wEcmPID, MM_NULL, 0);
        }
        else
        {
            bShowFinger = 1;
            pCaNotifyUICallBack(DUMMY_KEY_SHOW_SUPER_FINGER, wEcmPID, (MBT_VOID *)pFingerInfo, sizeof(SCDCAFingerInfo));
        }
    }

    if(MLMF_PVR_IsRecord())
    {
        MLMF_PVR_ExtraFile_Add((void*)pFingerInfo, sizeof(SCDCAFingerInfo));
    }
}

void CDSTBCA_ContinuesWatchLimit(CDCA_U8 byType, CDCA_U16 wWorkTime, CDCA_U16 wStopTime)
{
}


void  CDSTBCA_ShowCurtainNotify(CDCA_U16 wEcmPID,CDCA_U16  wCurtainCode)
{
    if(MM_FALSE == CAF_IsCurPrgEcm(wEcmPID))
    {
        return;
    }
    CA_DEBUG(("CDSTBCA_ShowCurtainNotify wEcmPID = %x fingerMsg = %x\n",wEcmPID,wCurtainCode));
    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(DUMMY_KEY_CURTAINCTR_TYPE0,((wEcmPID<<16)|wCurtainCode),MM_NULL,0);
    }	
}


void CDSTBCA_ShowFingerMessageExt( CDCA_U16 wEcmPID,char* fingerMsg)
{
    if(MLMF_PVR_IsPlay())
    {
        return;
    }

    if(MLMF_PVR_IsRecord())
    {
        SCDCAFingerInfo FingerInfo,*pFingerInfo;

        if(fingerMsg)
        {
            pFingerInfo = &FingerInfo;
            pFingerInfo->byShowType = 0;
            pFingerInfo->byContentType = 0;
            pFingerInfo->bIsVisible = 0;
            pFingerInfo->bIsForcedShow = 0;
            pFingerInfo->byEncryption = 0;
            pFingerInfo->wFlashing_EachShowTime = 0;
            pFingerInfo->wFlashing_EachHideTime = 0;
            pFingerInfo->byFontSize = 0;
            pFingerInfo->dwFontColor = 0xFFFFFFFF;
            pFingerInfo->dwBackgroundColor = 0x00000000;
            pFingerInfo->byX_position = 100;
            pFingerInfo->byY_position = 100;
            strcpy(pFingerInfo->szContent, fingerMsg);
        }
        else
        {
            pFingerInfo = NULL;
        }
        MLMF_PVR_ExtraFile_Add((void*)pFingerInfo, sizeof(SCDCAFingerInfo));
    }

    if(MM_FALSE == CAF_IsCurPrgEcm(wEcmPID))
    {
        pCaNotifyUICallBack(DUMMY_KEY_HIDE_FINGER,wEcmPID,MM_NULL,0);
        return;
    }
    CA_DEBUG(("CDSTBCA_ShowFingerMessageExt wEcmPID = %x fingerMsg = %s\n",wEcmPID,fingerMsg));
    if(pCaNotifyUICallBack)
    {
        if(NULL == fingerMsg)
        {
            bShowFinger = 0;
            pCaNotifyUICallBack(DUMMY_KEY_HIDE_FINGER,wEcmPID,MM_NULL,0);
        }
        else
        {
            bShowFinger = 2;
            pCaNotifyUICallBack(DUMMY_KEY_SHOW_FINGER,wEcmPID,(MBT_VOID *)fingerMsg,strlen(fingerMsg)+1);
        }
    }	
}

//static MBT_U16 cav_u16EcmPid;
void CDSTBCA_ShowBuyMessage(CDCA_U16 wEcmPID,CDCA_U8 byMessageType)
{
    MBT_S32 iType = 0xff;

    if(MLMF_PVR_IsPlay() && byMessageType != CDCA_MESSAGE_CANCEL_TYPE)
    {
        UIF_GetPvrEventMsg(MPVR_EVENT_NOENTITLEMENT_STOP);
        return;
    }

    if(MM_FALSE == CAF_IsCurPrgEcm(wEcmPID)&& byMessageType != CDCA_MESSAGE_CANCEL_TYPE)
    {
        return;
    }
    //MLMF_Print("CDSTBCA_ShowBuyMessage wEcmPID = 0x%x byMessageType = %d\n",wEcmPID,byMessageType);
    //cav_u16EcmPid = wEcmPID;
    switch(byMessageType)
    {
        case CDCA_MESSAGE_CANCEL_TYPE:
            /*CA_DEBUG(("Cancel current display\n"));*取消当前的显示*/
            iType = DUMMY_KEY_CANCEL_TYPE0 ;  /*timer_module_command  is changed.*/
            break;

        case CDCA_MESSAGE_BADCARD_TYPE:
            /*CA_DEBUG(("Card can not to use\n"));*无法识别卡，不能使用*/
            iType = DUMMY_KEY_BADCARD_TYPE0 ;
            break;

        case CDCA_MESSAGE_EXPICARD_TYPE:
            /*CA_DEBUG(("Please change new card\n"));*智能卡已经过期，请更换新卡*/
            iType = DUMMY_KEY_EXPICARD_TYPE0 ;
            break;

        case CDCA_MESSAGE_INSERTCARD_TYPE:
            /*CA_DEBUG(("Please insert card\n"));*加扰节目，请插入智能卡*/
            iType = DUMMY_KEY_INSERTCARD_TYPE0 ;
            break;

        case CDCA_MESSAGE_NOOPER_TYPE:
            /*CA_DEBUG(("Card is not company\n"));*卡中不存在节目运营商*/
            iType = DUMMY_KEY_NOOPER_TYPE0 ;
            break;

        case CDCA_MESSAGE_BLACKOUT_TYPE:
            /*CA_DEBUG(("cas channel\n"));	*条件禁播*/
            iType = DUMMY_KEY_BLACKOUT_TYPE0 ;
            break;

        case CDCA_MESSAGE_OUTWORKTIME_TYPE:
            /*CA_DEBUG(("not in worktime\n"));*不在工作时段内*/
            iType = DUMMY_KEY_OUTWORKTIME_TYPE0 ;
            break;

        case CDCA_MESSAGE_WATCHLEVEL_TYPE:
            /*CA_DEBUG(("not rate\n"));		*节目级别高于设定观看级别*/
            iType = DUMMY_KEY_WATCHLEVEL_TYPE0 ;
            break;

        case CDCA_MESSAGE_PAIRING_TYPE:
            /*CA_DEBUG(("not adopt card\n"));		*节目要求机卡对应*/
            iType = DUMMY_KEY_PAIRING_TYPE0 ;
            break;

        case CDCA_MESSAGE_NOENTITLE_TYPE:
            /*CA_DEBUG(("no\n"));		*没有授权*/
            iType = DUMMY_KEY_NOENTITLE_TYPE0 ;
            break;

        case CDCA_MESSAGE_DECRYPTFAIL_TYPE:
            /*CA_DEBUG(("fail\n"));		*节目解密失败*/
            iType = DUMMY_KEY_DECRYPTFAIL_TYPE0 ;
            break;

        case CDCA_MESSAGE_NOMONEY_TYPE:
            /*CA_DEBUG(("no money\n"));*卡内金额不足*/
            iType = DUMMY_KEY_NOMONEY_TYPE0 ;
            break;

        case CDCA_MESSAGE_ERRREGION_TYPE:  
            iType = DUMMY_KEY_ERRREGION_TYPE0;
            break;
      case		CDCA_MESSAGE_NEEDFEED_TYPE:/*子卡已过期，请插入母卡*/
          iType = DUMMY_KEY_NEEDFEED_TYPE0;
          break;
      case		CDCA_MESSAGE_ERRCARD_TYPE:		/*智能卡校验失败，请联系运营商，同步智能卡*/
          iType = DUMMY_KEY_ERRCARD_TYPE0;
          break;
      case		CDCA_MESSAGE_UPDATE_TYPE:	    /*系统升级，请不要拔卡或者关机*/
          iType = DUMMY_KEY_UPDATE_TYPE0;
          break;
      case		CDCA_MESSAGE_LOWCARDVER_TYPE:		/*请升级智能卡*/
          iType = DUMMY_KEY_LOWCARDVER_TYPE0;
          break;
      case		CDCA_MESSAGE_VIEWLOCK_TYPE:		/*请勿频繁切换频道*/
          iType = DUMMY_KEY_VIEWLOCK_TYPE0;
          break;
      case		CDCA_MESSAGE_MAXRESTART_TYPE:		/*智能卡已受损*/
          iType = DUMMY_KEY_MAXRESTART_TYPE0;
          break;
      case		CDCA_MESSAGE_FREEZE_TYPE:	/*智能卡已冻结，请联系运营商*/
          iType = DUMMY_KEY_FREEZE_TYPE0;
          break;
      case		CDCA_MESSAGE_CALLBACK_TYPE:	/*回传失败*/
          iType = DUMMY_KEY_CALLBACK_TYPE0;
          break;

      case		CDCA_MESSAGE_CURTAIN_TYPE:	/*高级预览节目，该阶段不能免费观看*/
          iType = DUMMY_KEY_CURTAIN_TYPE0;
          break;

      case      CDCA_MESSAGE_CARDTESTSTART_TYPE:  /*升级测试卡测试中...*/
          iType = DUMMY_KEY_CARDTESTSTART_TYPE0;
          break;

      case      CDCA_MESSAGE_CARDTESTFAILD_TYPE:  /*升级测试卡测试失败，请检查机卡通讯模块*/
          iType = DUMMY_KEY_CARDTESTFAILD_TYPE0;
          break;

      case      CDCA_MESSAGE_CARDTESTSUCC_TYPE:  /*升级测试卡测试成功*/
          iType = DUMMY_KEY_CARDTESTSUCC_TYPE0;
          break;

      case		CDCA_MESSAGE_STBLOCKED_TYPE:	/*请关机重启机顶盒*/
          iType = DUMMY_KEY_STBLOCKED_TYPE0;
          break;
          
      case      CDCA_MESSAGE_NOCALIBOPER_TYPE:    /*卡中不存在移植库定制运营商*/
          iType = DUMMY_KEY_NOCALIBOPER_TYPE0;
          break;
          
      case      CDCA_MESSAGE_STBFREEZE_TYPE:    /*机顶盒被冻结*/
          iType = DUMMY_KEY_STBFREEZE_TYPE0;
          break;
          
      case      CDCA_MESSAGE_UNSUPPORTDEVICE_TYPE:    /*不支持的终端类型（编号：0xXXXX）*/
          iType = DUMMY_KEY_UNSUPPORTDEVICE_TYPE0;
          break;

    default:
        //CA_DEBUG(("err message type.  ................ERR MSG...................\n");
        iType = 0XFF ;  
        return;
    }

    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(iType,wEcmPID,MM_NULL,0);
    }	
}

void CDSTBCA_HideIPPVDlg(CDCA_U16 wEcmPid)
{
    if(MM_FALSE == CAF_IsCurPrgEcm(wEcmPid))
    {
        return;
    }
    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(DUMMY_KEY_IPPVHIDE_DLG,wEcmPid,MM_NULL,0);
    }	
}

/*
void TFCardProcessTest(void)
{
    MBT_S32 iProcess;
    for(iProcess = 0;iProcess <= 101;iProcess++)
    {
        MLMF_Task_Sleep(100);
        CDSTBCA_ShowProgressStrip(iProcess,CDCA_SCALE_RECEIVEPATCH);
    }
    MLMF_Task_Sleep(1000);
    CDSTBCA_ShowBuyMessage(cav_u16EcmPid,CDCA_MESSAGE_UPDATE_TYPE);
    MLMF_Task_Sleep(1000);
    for(iProcess = 0;iProcess <= 101;iProcess++)
    {
        MLMF_Task_Sleep(100);
        CDSTBCA_ShowProgressStrip(iProcess,CDCA_SCALE_PATCHING);
    }
    CDSTBCA_ShowBuyMessage(cav_u16EcmPid,CDCA_MESSAGE_CANCEL_TYPE);
}
*/

void CDSTBCA_StartIppvBuyDlg( CDCA_U8 byMessageType,CDCA_U16 wEcmPid,const SCDCAIppvBuyInfo* pIppvProgram )
{
    MBT_S32 iType = 0xff;
    if(MM_FALSE == CAF_IsCurPrgEcm(wEcmPid))
    {
        return;
    }
    if (CDCA_IPPV_FREEVIEWED_SEGMENT == byMessageType)
    {
        iType = DUMMY_KEY_IPPVFREEVIEW_TYPE0 ;
    }
    else if(CDCA_IPPV_PAYVIEWED_SEGMENT == byMessageType)
    {
        iType = DUMMY_KEY_IPPVPAYEVIEW_TYPE0 ;
    }
    else
    {
        iType = DUMMY_KEY_IPPTPAYEVIEW_TYPE0 ;
    }

    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(iType,wEcmPid,(MBT_VOID *)pIppvProgram,sizeof(SCDCAIppvBuyInfo));
    }	
}



void CDSTBCA_EntitleChanged(CDCA_U16 wTvsID)
{
    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(DUMMY_KEY_ETITLE_CHANGE,wTvsID,MM_NULL,0);
    }	
}


void CDSTBCA_DetitleReceived(CDCA_U8 bstatus)
{
    MBT_S32 iType = 0xffffffff;
    return;
    switch(bstatus)
    {
        case CDCA_Detitle_All_Read:
            iType = DUMMY_KEY_DENTITLE_ALL_READ ;
            break;
        case CDCA_Detitle_Received:
            iType = DUMMY_KEY_DENTITLE_RECEIVED ;
            break;
        case CDCA_Detitle_Space_Small:
            iType = DUMMY_KEY_DENTITLE_SPACESMALL;
            break;
        case CDCA_Detitle_Ignore:
            break;
            
    }

    if(pCaNotifyUICallBack&&0xffffffff != iType)
    {
        pCaNotifyUICallBack(iType,cam_InvalidPID,MM_NULL,0);
    }	
}


void CDSTBCA_ShowProgressStrip(CDCA_U8 byProgress, CDCA_U8 byMark)
{
    MBT_S32 iType = 0xff;

    switch(byMark)
    {
        case CDCA_SCALE_RECEIVEPATCH:
            iType = DUMMY_KEY_RECEIVEPATCH_PROCESS ;
            break;
        case CDCA_SCALE_PATCHING:
            iType = DUMMY_KEY_PATCHING_PROCESS ;
            break;
    }

    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(iType,byProgress,MM_NULL,0);
    }	
}


void  CDSTBCA_RequestFeeding(CDCA_BOOL bReadStatus)
{
    MBT_S32 iType = 0xff;

    if(CDCA_TRUE == bReadStatus)
    {
        iType = DUMMY_KEY_SUCCED_TOREAD_PARENT ;
    }
    else
    {
        iType = DUMMY_KEY_FAILED_TOREAD_PARENT ;
    }

    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(iType,cam_InvalidPID,MM_NULL,0);
    }	
}


void CDSTBCA_LockService( const SCDCALockService* pLockService )
{
    //MLMF_Print("CDSTBCA_LockService m_dwFrequency = %d m_symbol_rate = %d\n",pLockService->m_dwFrequency,pLockService->m_symbol_rate);
    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(DUMMY_KEY_LOCK_SERVICE,0,(MBT_VOID *)pLockService,sizeof(SCDCALockService));
    }	
}

void CDSTBCA_UNLockService(void)
{
    //MLMF_Print("CDSTBCA_UNLockService\n");
    if(pCaNotifyUICallBack)
    {
        pCaNotifyUICallBack(DUMMY_KEY_UNLOCK_SERVICE,0,MM_NULL,0);
    }	
}
#endif

void CAF_CDDateToDate(Stru_Date *psDate,MBT_U16 UShortDate)
{
    MBT_U16 nYear,nMon,nDay,nTemp,nDate = UShortDate;

    nYear = 2000;
    do
    {
        if((nYear%4 == 0 && nYear%100 != 0) || nYear%400 == 0)
            nTemp = 366;
        else
            nTemp = 365;
        if(nDate < nTemp)
            break;
        nDate -= nTemp;
        nYear ++;
    }while(MM_TRUE);

    nMon = 1;
    do
    {
        if(2 == nMon)
        {
            if((nYear%4 == 0 && nYear%100 != 0) || nYear%400 == 0)
                nTemp = 29;
            else
                nTemp = 28;
        }
        else if(4 == nMon || 6 == nMon || 9 == nMon || 11 == nMon)
            nTemp = 30;
        else
            nTemp = 31;
        if(nDate < nTemp)
            break;
        nDate -= nTemp;
        nMon ++;
    }while(MM_TRUE);
    nDay = 1;
    nDay += nDate;

    psDate->m_byDay = nDay;
    psDate->m_byMonth = nMon;
    psDate->m_wYear = nYear;
}

void CDCASuperFingerGet(SCDCAFingerInfo **pFingerInfo)
{
    extern SCDCAFingerInfo* GetSuperFinger(MBT_VOID);
    extern MBT_CHAR* GetFinger(MBT_VOID);

    if(bShowFinger == 1)
    {
        *pFingerInfo = GetSuperFinger();
    }
    else if(bShowFinger == 2)
    {
        TempSuperFinger.byShowType = 0;
        TempSuperFinger.byContentType = 0;
        TempSuperFinger.bIsVisible = 0;
        TempSuperFinger.bIsForcedShow = 0;
        TempSuperFinger.byEncryption = 0;
        TempSuperFinger.wFlashing_EachShowTime = 0;
        TempSuperFinger.wFlashing_EachHideTime = 0;
        TempSuperFinger.byFontSize = 0;
        TempSuperFinger.dwFontColor = 0xFFFFFFFF;
        TempSuperFinger.dwBackgroundColor = 0x00000000;
        TempSuperFinger.byX_position = 100;
        TempSuperFinger.byY_position = 100;
        strcpy(TempSuperFinger.szContent, GetFinger());
        *pFingerInfo = &TempSuperFinger;
    }
    else
    {
        *pFingerInfo = NULL;
    }
}

void CDCASuperOsdGet(SCDCAOSDInfo **pOsdInfo)
{
    extern SCDCAOSDInfo* GetSuperOsd(MBT_VOID);
    extern MBT_CHAR* GetOsd(MBT_U8 type);

    if(bShowOsd == 1)
    {
        *pOsdInfo = GetSuperOsd();
    }
    else if(bShowOsd == 2  || bShowOsd == 3)
    {
        if(bShowOsd == 2)
        {
            TempSuperOsd.byDisplayMode = 1;
        }
        else
        {
            TempSuperOsd.byDisplayMode = 2;
        }
        TempSuperOsd.dwFontColor = 0xFFFFFFFF;
        TempSuperOsd.dwBackgroundColor = 0x00000000;
        strcpy(TempSuperOsd.szContent, GetOsd(bShowOsd));
        *pOsdInfo = &TempSuperOsd;
    }
    else
    {
        *pOsdInfo = MM_NULL;
    }
}

