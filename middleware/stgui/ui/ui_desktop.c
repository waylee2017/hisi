#include "ui_share.h"
#include "envopt.h"
 
#define UIV_MSG_QUEUE_DEPTH	    512
#define LEFT_MAX 680
#define LEFT_MIN 40
#define TOP_MAX 480
#define TOP_MIN 40
#define MOVE_STEP 10
#define RADIO_LOGO_WIDTH    180
#define RADIO_LOGO_HEIGHT   110

typedef struct _RADIO_RECT
{
   MBT_U16  x;
   MBT_U16  y;
   MBT_U16  width;
   MBT_U16  height;
} RADIO_RECT;


static MET_Msg_T uiv_pstUsifMsgQueuelmr = MM_INVALID_HANDLE;
static MBT_BOOL uiv_bSTBPowerOn = MM_TRUE; 
static MBT_U8 uiv_u8RadioDrawTimer = 0xff;
static RADIO_RECT uiv_stRadioRect;


MBT_VOID UIF_InitUIQueue(MBT_VOID)
{
    if(MM_INVALID_HANDLE == uiv_pstUsifMsgQueuelmr)
    {
        if ( MLMF_Msg_Create(sizeof(usif_cmd_t),UIV_MSG_QUEUE_DEPTH,&uiv_pstUsifMsgQueuelmr) != MM_NO_ERROR)
        {
            UIAPP_DEBUG(("Unable to create USIF message queue\n" ));
        }
    }
}



MBT_BOOL UIF_BIsSTBPoswerOn(MBT_VOID)
{
    return uiv_bSTBPowerOn;
}

static MBT_VOID uif_SetSTBRunStatus(MBT_BOOL bIsPowerOn)
{
    uiv_bSTBPowerOn = bIsPowerOn;
}

static MBT_S32 uif_GetNimMsg(usif_cmd_t *msg_p)
{
    MBT_S32 iKey = -1;
    MBT_S32 iLocked;
    MBT_U32 u32Frenq;
    MBT_U32 u32Sym;
    MBT_U32 u32Polar;
    TRANS_INFO stCurTransInfo;
    MLMF_Tuner_CurTrans(0,&u32Frenq, &u32Sym, &u32Polar);
    stCurTransInfo.u32TransInfo = (MBT_U32)(msg_p->contents.dbase.uExtern);
    if(m_NimUnLock == msg_p ->contents.dbase.table_under_construction)
    {
        iLocked = MM_TUNER_UNLOCKED;
    }
    else
    {
        iLocked = MM_TUNER_LOCKED;
    }
    //MLMF_Print("uif_GetNimMsg iLocked %d u32Frenq %d,uBit.uiTPFreq %d\n",iLocked,u32Frenq,stCurTransInfo.uBit.uiTPFreq);
   if(iLocked != MLMF_Tuner_GetLockStatus(0)
            ||u32Frenq != (stCurTransInfo.uBit.uiTPFreq)
            ||u32Sym != stCurTransInfo.uBit.uiTPSymbolRate
            ||u32Polar != stCurTransInfo.uBit.uiTPQam)
    {
        MLMF_Print("Error uif_GetNimMsg MLMF_Tuner_GetLockStatus(0) %d\n",MLMF_Tuner_GetLockStatus(0));
        if(MM_TUNER_LOCKED == MLMF_Tuner_GetLockStatus(0))
        {
           // MLMF_FP_SetLock(1);
            UIAPP_DEBUG(("locked\n"));
            iKey = DUMMY_KEY_TUNERLOCKED;
            uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_TUNERUNLOCK);
        }
        return iKey;
    }

    if(MM_TUNER_UNLOCKED == iLocked)
    {
        MLMF_FP_SetLock(0);
        MLMF_Print("not locked\n");
        iKey = DUMMY_KEY_TUNERUNLOCK;
        uif_CAMPutNewPrompt(DUMMY_KEY_TUNERUNLOCK,m_TunerMsg,cam_InvalidPID);
    }
    else
    {
        MLMF_FP_SetLock(1);
        MLMF_Print("locked\n");
        iKey = DUMMY_KEY_TUNERLOCKED;
        uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_TUNERUNLOCK);
    }
    return iKey;
}


MBT_VOID UIF_GetCAOsdMsg(MBT_S32 iType,MBT_U32 stPid,MBT_VOID *pData,MBT_S32 iDataSize)
{
    if(uiv_pstUsifMsgQueuelmr != MM_INVALID_HANDLE)
    {
        usif_cmd_t  stMsg;
        memset(&stMsg,0,sizeof(stMsg));
        stMsg.from_which_module 	= CAS_MSG_MODULE;
        stMsg.contents.CASMsg.stPid = (MBT_U32)stPid;
        stMsg.contents.CASMsg.iType = iType;  
        stMsg.contents.CASMsg.iDataSize = iDataSize;  
        if(pData)
        {
            if(iDataSize <= 12)
            {
                memcpy((MBT_VOID*)(&(stMsg.contents.CASMsg.uExtern)),pData,iDataSize);
            }
            else
            {
                stMsg.contents.CASMsg.pData = MLMF_Malloc(iDataSize);
                if(stMsg.contents.CASMsg.pData)
                {
                    memcpy((MBT_VOID*)(stMsg.contents.CASMsg.pData),pData,iDataSize);
                }
            }
        }
        MLMF_Msg_SendMsg ( uiv_pstUsifMsgQueuelmr, &stMsg,sizeof(stMsg),MM_SYS_TIME_INIFIE);
    }
}

MBT_VOID UIF_GetUsbEventMsg(MMT_USB_DeviceStatus_E type,MBT_CHAR * pstringName)
{
    usif_cmd_t  stMsg;
    MBT_U32 u32DataSize;
    if(uiv_pstUsifMsgQueuelmr == MM_INVALID_HANDLE)
    {
        return;
    }
    memset(&stMsg,0,sizeof(stMsg));
    stMsg.from_which_module 	= USB_MODULE;
    stMsg.contents .Timer.uChannel_number = (MBT_U32)0xffff;
    if(MM_DEVICE_INSERT == type)
    {
        stMsg.contents .Timer .iOtherInfo =  DUMMY_KEY_USB_IN;
        //MLMF_Print("======send msg usb in\n");
    }
    else
    {
        stMsg.contents .Timer .iOtherInfo =  DUMMY_KEY_USB_OUT;  
        //MLMF_Print("======send msg usb out\n");
    }

    if(pstringName)
    {
        u32DataSize = strlen(pstringName)+1;
        stMsg.contents .Timer .pData = MLMF_Malloc(u32DataSize);
        if(stMsg.contents .Timer .pData)
        {
            memcpy((MBT_VOID*)(stMsg.contents .Timer .pData),pstringName,u32DataSize);
        }
    }
    else
    {
        stMsg.contents .Timer .pData = MM_NULL;
    }
    MLMF_Msg_SendMsg ( uiv_pstUsifMsgQueuelmr, &stMsg,sizeof(stMsg),MM_SYS_TIME_INIFIE);
}

MBT_VOID UIF_GetPvrEventMsg(MBT_U8 Event)
{
    MBT_S32 Msg;

    switch(Event)
    {
        case MPVR_EVENT_RECORD_NOSPACE:
            Msg = DUMMY_KEY_PVR_RECORD_NOSPACE;
            break;

        case MPVR_EVENT_PLAYBACK_STOP:
            Msg = DUMMY_KEY_PVR_PLAY_STOP;
            break;

        case MPVR_EVENT_NOENTITLEMENT_STOP:
            Msg = DUMMY_KEY_PVR_PLAY_NOENTITLEMENT_STOP;
            break;

        default:
            return;
    }
    if(uiv_pstUsifMsgQueuelmr != MM_INVALID_HANDLE)
    {
        usif_cmd_t  stMsg;
        memset(&stMsg,0,sizeof(stMsg));
        stMsg.from_which_module = PVR_MODULE;
        stMsg.contents.Timer.iOtherInfo = Msg;
        stMsg.contents.Timer.pData = MM_NULL;
        MLMF_Msg_SendMsg ( uiv_pstUsifMsgQueuelmr, &stMsg,sizeof(stMsg), MM_SYS_TIME_INIFIE);
    }
}



MBT_VOID uif_GetDbsMsg(MBT_S32  iCmd,MBT_VOID *pMsgData,MBT_S32 iMsgDatLen)
{
    if(uiv_pstUsifMsgQueuelmr != MM_INVALID_HANDLE)
    {
        usif_cmd_t  stMsg;
        memset(&stMsg,0,sizeof(stMsg));
        stMsg.from_which_module = DBASE_MODULE;
        stMsg.contents.dbase.table_under_construction = iCmd;
        stMsg.contents.dbase.u16MsgLen = iMsgDatLen;
        if(pMsgData)
        {
            if(iMsgDatLen <= 12)
            {
                memcpy((MBT_VOID*)(&(stMsg.contents.dbase.uExtern)),pMsgData,iMsgDatLen);
            }
            else
            {
                stMsg.contents.dbase.pMsgData = MLMF_Malloc(iMsgDatLen);
                if(stMsg.contents.dbase .pMsgData)
                {
                    memcpy((MBT_VOID*)(stMsg.contents.dbase.pMsgData),pMsgData,iMsgDatLen);
                }
            }
        }
        //MLMF_Print("stMsg.contents.dbase .pMsgData = %x stMsg.contents.dbase.u16MsgLen = %d\n",stMsg.contents.dbase .pMsgData,stMsg.contents.dbase.u16MsgLen);
        MLMF_Msg_SendMsg(uiv_pstUsifMsgQueuelmr, &stMsg,sizeof(stMsg),MM_SYS_TIME_INIFIE);
    }
}



static MBT_VOID uif_GetSoftwareUpdateMsg(usif_cmd_t *msg_p)
{
    MBT_S32 iKey;
    static MBT_CHAR* acInfoStr[2][5] =
    {
        {
            "A new software version detected, do you want to update? Press key [OK] to update or key [exit] to cancel!",
            "Please check signal line and don't power off!",
            "Got the update information.Please wait and do nothing",
            "Information",
            "Confirm",
        },
        {
            "A new software version detected, do you want to update? Press key [OK] to update or key [exit] to cancel!",
            "Please check signal line and don't power off!",
            "Got the update information.Please wait and do nothing",
            "Information",
            "Confirm",
        }
    };
	MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;

    if(MM_NULL == msg_p)
    {
        return;
    }

    iKey = msg_p->contents .dbase .table_under_construction;
    //MLMF_Print("uif_GetSoftwareUpdateMsg iKey = %x\n",iKey);

    if(m_UpdateSWAuto == iKey )
    {
        appCa_triggerOta();
        DBSF_StopAll();
        uif_ShareDisplayResultDlg(acInfoStr[uiv_u8Language][3],acInfoStr[uiv_u8Language][2],10);
        uif_ShareReboot();
        MLMF_Task_Sleep(10000);
    }
    else
    {
        static MBT_U8 u8GetManulUpdateMsg = 0;
        if(1 == u8GetManulUpdateMsg)
        {
            return;
        }
        u8GetManulUpdateMsg = 1;
		
        pMsgTitle = acInfoStr[uiv_u8Language][4];
        pMsgContent = acInfoStr[uiv_u8Language][0];
        if(uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE) )
        {   
            appCa_triggerOta();
            DBSF_StopAll();
            uif_ShareDisplayResultDlg(acInfoStr[uiv_u8Language][4],acInfoStr[uiv_u8Language][1],10);
            uif_ShareReboot();
            MLMF_Task_Sleep(10000);
        }
        else
        {
#if(1 == M_CDCA) 
            CDCASTB_RefreshInterface();
#endif
        }
    }
}


static MMT_BLAST_Status_E uiv_eKeyStatus = MM_BLAST_PRESS;

MMT_BLAST_Status_E uif_GetKeyStatus(MBT_VOID)
{
    return uiv_eKeyStatus;
}

static MBT_S32 DesktopKeyPreTreated(MBT_S32 s32Key)
{
    MBT_S32 s32RetKey = s32Key;
    switch(s32Key)
    {
        case DUMMY_KEY_USB_IN:
            uif_ShareDisplayResultDlg("Information","USB Device Initialized OK!", DLG_WAIT_TIME);
            break;
            
        case DUMMY_KEY_USB_OUT:
            uif_ShareDisplayResultDlg("Information","USB Device Removed!",DLG_WAIT_TIME);
            break;
            
        case DUMMY_KEY_TOPOSDTICK:                                        
            uif_CAMShowTopOsd();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;
            
        case DUMMY_KEY_BOTTOMOSDTICK:                                        
            uif_CAMShowBottomOsd();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;
            

        case DUMMY_KEY_HIDE_FINGER:                                        
            uif_CAMHideFingerPrint();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_SHOW_FINGER:
        case DUMMY_KEY_FINGER_JUMP:           
            if(!uif_GetMenuState())
            {
                uif_CAMShowFingerPrint();
                s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            }
            else
            {
                s32RetKey = -1;
            }
            break;
            
        case DUMMY_KEY_SHOW_SUPER_FINGER:
            uif_CAMDisplayCDCASuperFinger();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_SUPER_FINGER_JUMP:
            uif_CAMFingerSuperRandom();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_CLEAR_SUPER_FINGER:
            MLUI_DEBUG("---> Clear super Finger!!!");
            uif_CAMClearSuperFinger();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_SUPER_FINGER_SHOW:
            uif_CAMFingerSuperBlinkShow();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_SUPER_FINGER_HIDE:
            uif_CAMFingerSuperBlinkHide();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;
            
        case DUMMY_KEY_SUPER_FINGER_UNVISIBLE:
            uif_CAMFingerSuperUnvisibleShow();
            break;
            
        case DUMMY_KEY_JUMP_OSDTOP:
            uif_CAMShowTopOsd();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;
            
        case DUMMY_KEY_JUMP_OSDBOTTOM:
            uif_CAMShowBottomOsd();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_DISP_OSDTOP:
            uif_CAMDisplayCDCAOSD(CDCA_OSD_TOP);
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_DISP_OSDBOTTOM:
            uif_CAMDisplayCDCAOSD(CDCA_OSD_BOTTOM);
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_CANCEL_OSDTOP:
            uif_CAMClearOSD(CDCA_OSD_TOP);
            break;

        case DUMMY_KEY_CANCEL_OSDBOTTOM:
            uif_CAMClearOSD(CDCA_OSD_BOTTOM);
            break;
            
        case DUMMY_KEY_SHOW_SUPER_OSD:
            uif_CAMDisplayCDCASuperOSD();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;

        case DUMMY_KEY_CLEAR_SUPER_OSD:
            MLUI_DEBUG("--->Clear super osd!!!");
            uif_CAMClearSuperOSD();
            s32RetKey = DUMMY_KEY_FORCE_REFRESH;
            break;        
        case DUMMY_KEY_TERM_CHCKENTITLETASK:       
            uif_CAStopEntitleCheckTask();
            s32RetKey = -1;
            break;
    }
    
    return s32RetKey;
}

MBT_S32 uif_ReadKey (MBT_U32 tclkWaitTime )
{
    usif_cmd_t  stMsg;
    MBT_S32	 iKeyPassed = -1;
    MBT_S32 iLoop = MM_TRUE;
    MBT_S32  iTimePassed ;
    MBT_U32  iCurtime;
    MBT_U32  u32MsgContent;
    static MBT_U32  iStartTime;
    static MBT_U32  iLastWaitTime = 0xffffffff;
    MMT_STB_ErrorCode_E ErrCode = MM_NO_ERROR;
    static MBT_U8 u8Counter = 0;

    if(tclkWaitTime)
    {
        if(iLastWaitTime != tclkWaitTime)
        {
            iLastWaitTime = tclkWaitTime;
            iStartTime = MLMF_SYS_GetMS();
        }
    }

    while ( iLoop )
    {                
        if ( tclkWaitTime )
        {         
            iCurtime = MLMF_SYS_GetMS ();
            iTimePassed = MMF_Common_TimeMinus(iCurtime,iStartTime);
            if(iTimePassed >= tclkWaitTime)
            {
                iKeyPassed = -1;
                iLastWaitTime = 0xffffffff;
                iLoop = MM_FALSE;
                ErrCode = MM_ERROR_TIMEOUT;
            }
            else
            {
                ErrCode = MLMF_Msg_WaitMsg(uiv_pstUsifMsgQueuelmr,&stMsg,sizeof(stMsg),MMF_Common_TimeMinus(tclkWaitTime,iTimePassed));
            }
        }
        else
        {
            ErrCode = MLMF_Msg_WaitMsg(uiv_pstUsifMsgQueuelmr,&stMsg,sizeof(stMsg),MM_SYS_TIME_INIFIE);
        }

        if(ErrCode == MM_NO_ERROR)
        {
            switch(stMsg.from_which_module)
            {
                case KEYBOARD_MODULE:   
                    uiv_eKeyStatus = ((stMsg.contents.keyboard.scancode)>>16);
                    if(uiv_eKeyStatus == MM_BLAST_REPEAT && u8Counter < 3)
                    {
                        u8Counter++;
                        iKeyPassed = -1;
                    }
                    else
                    {
                        u8Counter = 0;
                        iKeyPassed = ((stMsg.contents.keyboard.scancode)&0x0000ffff);
                    }
                    break;
                case USB_MODULE:
                    iKeyPassed = stMsg.contents .Timer .iOtherInfo;
                    break;
                case PVR_MODULE:
                    iKeyPassed = stMsg.contents .Timer .iOtherInfo;
                    break;
                case DBASE_MODULE:
                    iKeyPassed = stMsg.contents.dbase.table_under_construction;
                    //MLMF_Print("DBASE_MODULE iKeyPassed %x\n",iKeyPassed);
                    switch(iKeyPassed)
                    {       
                        case m_UpdatePrgList:
                            iKeyPassed = DUMMY_KEY_PRGUPDATE;
                            break;
                        case m_PrgListHasBeenUpdated:
                            iKeyPassed = DUMMY_KEY_PRGLISTUPDATED;
                            break;    
                        case m_PrgItemHasBeenUpdated:
                            iKeyPassed = DUMMY_KEY_PRGITEMUPDATED;
                            break;    
                        case  m_UpdateSWAuto:
                        case  m_UpdateSWManeal:               			                       
                            uif_GetSoftwareUpdateMsg(&stMsg);
                            iKeyPassed = 0xffffffff;
                            break;                            
                        case  m_NimLock:
                        case  m_NimUnLock:               			                       
                            iKeyPassed = uif_GetNimMsg(&stMsg);
                            break;
                        case  m_NetWorkLock:
                            iKeyPassed = DUMMY_KEY_EXIT;
                            UIF_SendKeyToUi(DUMMY_KEY_FORCE_NETLOCK);
                            //MLMF_Print("uif_ReadKey DUMMY_KEY_FORCE_NETLOCK %x\n",DUMMY_KEY_FORCE_NETLOCK);
                            break;
                        case  m_NetWorkUnLock:                                                 
                            iKeyPassed = DUMMY_KEY_EXIT;
                            UIF_SendKeyToUi(DUMMY_KEY_FORCE_NETUNLOCK);
                            break;
                        case  m_GetFirstFrame: 
                            uif_DelPlayTimer();
                            iKeyPassed = -1;
                            break; 
                            
                        default:
                            iKeyPassed = -1;
                            iLastWaitTime = 0xffffffff;
                            break;
                    }

                    if(stMsg.contents.dbase.u16MsgLen > 12)
                    {
                        if(stMsg.contents.dbase.pMsgData)
                        {
                            //MLMF_Print("Dbs msg msg datalen %d free %x\n",iKeyPassed,stMsg.contents.CASMsg.pData);
                            MLMF_Free(stMsg.contents.dbase.pMsgData);
                            stMsg.contents.dbase.pMsgData = MM_NULL;
                        }
                    }
                    break;

                case CAS_MSG_MODULE:
                    iTimePassed = stMsg.contents.CASMsg.iDataSize;
                    if(iTimePassed > 12)
                    {
                        u32MsgContent = (MBT_S32)stMsg.contents.CASMsg.pData;
                    }
                    else
                    {
                        u32MsgContent = (MBT_S32)(&(stMsg.contents.CASMsg.uExtern));
                    }
                
                    iKeyPassed = uif_CAMGetCaMsg(stMsg.contents.CASMsg.iType,stMsg.contents.CASMsg.stPid,u32MsgContent);
                    if(iTimePassed > 12)
                    {
                        //MLMF_Print("CA msg datalen %d free %x\n",iKeyPassed,stMsg.contents.CASMsg.pData);
                        MLMF_Free(stMsg.contents.CASMsg.pData);
                        stMsg.contents.CASMsg.pData = MM_NULL;
                    }
                    break;
                default:
                    break;
            }
            iLoop = MM_FALSE;
        }
        else     if ( tclkWaitTime )
        {
            iKeyPassed = -1;
            iLoop = MM_FALSE;
            iLastWaitTime = 0xffffffff;
        }
    }

    return DesktopKeyPreTreated(iKeyPassed);
}


MBT_VOID  UIF_SendKeyToUi (MBT_U32 u32Key)
{
    if(uiv_pstUsifMsgQueuelmr != MM_INVALID_HANDLE)
    {
        usif_cmd_t  stMsg;
        stMsg.from_which_module 	= KEYBOARD_MODULE;
        stMsg.contents.keyboard.scancode = u32Key;
        stMsg.contents.keyboard.device   = REMOTE_KEYBOARD;
        MLMF_Msg_SendMsg(uiv_pstUsifMsgQueuelmr, &stMsg,sizeof(stMsg),MM_SYS_TIME_INIFIE);                          
    }
}


MBT_VOID OperateAV4StandbyMode(MBT_VOID)
{
    MLMF_FP_Display("    ",4,MM_FALSE);  
    MLMF_FP_SetLedMode(1);
    MLMF_FP_SetLock(0);
    TMF_CleanAllDbsTimer();
    UIF_StopAV();
    DBSF_StopAll();
    //PIO_BIT_Set(2,7,MM_FALSE);
    // GRAFIXF_StillLayerPlayDisable();
    DBSF_PlyOpenVideoWin(MM_FALSE);
    uif_SetSTBRunStatus(MM_FALSE);
    MLMF_FP_SetStandby(1);
    //MLMF_Task_Sleep(500);
    uif_ShareStandby();

#if (ENABLE_FAKE_STANDBY)
    MBT_S32	 iKey ;
    MBT_BOOL bExit = MM_FALSE;

    while ( !bExit )
    {
        iKey = uif_ReadKey (2000);
        switch ( iKey )
        {
            case DUMMY_KEY_POWER:
                MLMF_FP_SetLedMode(0);
				if (MM_TUNER_LOCKED == MLMF_Tuner_GetLockStatus(0))
				{
				    MLMF_FP_SetLock(1);
				}
				uif_ShareFakeWakeup();
				bExit = MM_TRUE;
				break;

			default:
				break;
        }
    }

#else
    while(1)
    {
        //MLMF_Print("still alive\n");
        MLMF_Task_Sleep(1000);
    }
    uif_ShareReboot();
    MLMF_FP_SetStandby(0);
#endif
    uif_SetSTBRunStatus(MM_TRUE);
    MLMF_AV_SetVideoWindow(0,0,0,0);
}

#define FORCERESET_AREA_WIDTH 770
#define FORCERESET_AREA_HEIGHT 270


#define FORCERESET_AREA_Y (P_MENU_TOP + ((OSD_REGINMAXHEIGHT - FORCERESET_AREA_HEIGHT)/2) - UI_DLG_OFFSET_Y)
#define FORCERESET_AREA_X (P_MENU_LEFT + (OSD_REGINMAXWIDHT - FORCERESET_AREA_WIDTH)/2)


static MBT_VOID DesktopDrawForceResetPanel(MBT_CHAR *pstring)
{
    MBT_S32 y;
    MBT_S32 x;
    MBT_S32 iWidth;
    MBT_S32 iHeight;
    if(MM_NULL == pstring)
    {
        return;
    }

    x = FORCERESET_AREA_X;
    y = FORCERESET_AREA_Y;
    iWidth = FORCERESET_AREA_WIDTH;
    iHeight = FORCERESET_AREA_HEIGHT;
    WGUIF_DrawFilledRectangle(x,y,iWidth, iHeight, FONT_FRONT_COLOR_BLACK);

    uif_DrawTxtAtMid(pstring,x, y, iWidth, iHeight, FONT_FRONT_COLOR_WHITE);
}

MBT_VOID uif_ForceFactoryReset(MBT_VOID)
{
    //BITMAPTRUECOLOR  Copybitmap;
    MBT_U32 u32AddrOffset;
    //Copybitmap.bWidth = FORCERESET_AREA_WIDTH;
    //Copybitmap.bHeight = FORCERESET_AREA_HEIGHT; 
    //WGUIF_GetRectangleImage(FORCERESET_AREA_X,FORCERESET_AREA_Y, &Copybitmap);
    DesktopDrawForceResetPanel("Factory reset.Waiting");
    WGUIF_ReFreshLayer();    
    uif_FactoryReset();
    uif_SetMuteAndDrawICO(0);
    MLMF_FP_Display("0000", 4,MM_FALSE);
    u32AddrOffset = FSLC_FlashTopAddress;
    while(u32AddrOffset >= FSLC_FlashBaseAddress)
    {
        FLASHF_ErasePartition(u32AddrOffset,FLASH_MAINBLOCK_SIZE);
        u32AddrOffset -= FLASH_MAINBLOCK_SIZE;
    }
    DesktopDrawForceResetPanel("Factory reset success!");
    WGUIF_ReFreshLayer(); 
    MLMF_Task_Sleep(3000);
    //WGUIF_PutRectangleImage(FORCERESET_AREA_X,FORCERESET_AREA_Y, &Copybitmap);
    //WGUIF_ReFreshLayer();
    uif_ShareReboot();
}


MBT_VOID uif_SetupUI(MBT_VOID)
{
    UI_PRG stPrgInfo;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    
    uif_InitOSDParas();
    DBSF_MntStartHeatBeat(BEARTRATE,MM_FALSE,uif_GetDbsMsg);
    uif_InitMenuResource();
    uif_SetMuteAndDrawICO(pstBoxInfo->ucBit.bMuteState);
    WGUIF_ClsFullScreen();	
    WGUIF_ReFreshLayer();
    MLMF_AV_SetVideoWindow(0,0,0,0);

    if (pstBoxInfo->ucBit.u8TunerLoopoutMode == 1)
    {
        MLMF_Print("[uif_SetupUI] Open tuner loopout\n");
        MLMF_Tuner_SetLoopOutMode(0);
    }
    
#if NETWORK_LOCK
    if(pstBoxInfo->ucBit.ucNetWorkLock)
    {
        UIF_SendKeyToUi(DUMMY_KEY_FORCE_NETLOCK);
        return;
    }
#endif 

    if(DBSF_DataGetListPrgNum()== 0 )
    {
        //uif_CAMPutNewPrompt(DUMMY_KEY_NOSERVICE,m_DbsMsg,cam_InvalidPID);
        UIF_SendKeyToUi(DUMMY_KEY_FORCEUPDATE_PROGRAM);
    }
    else
    {/*
        if (dbsm_InvalidID != pstBoxInfo->u16StartUpChannel)
        {
            if(DVB_INVALID_LINK != DBSF_DataGetPrgByServiceID(&stPrgInfo,pstBoxInfo->u16StartUpChannel))
            {
                pstBoxInfo->ucBit.bVideoAudioState = VIDEO_STATUS;
                pstBoxInfo->u32VidTransInfo = stPrgInfo.stService.stPrgTransInfo.u32TransInfo;
                pstBoxInfo->u16VideoServiceID = pstBoxInfo->u16StartUpChannel;
            }
        }
        */
        
        if(DVB_INVALID_LINK == uif_GetFirstPlayProg(&stPrgInfo) )
        {
            return;
        }
        
        if((stPrgInfo.stService.ucProgram_status) & FREECA_BIT_MASK)
        {
            TRANS_INFO uTranInfo;
            uTranInfo = stPrgInfo.stService.stPrgTransInfo;
            MLMF_Tuner_Lock(0,uTranInfo.uBit.uiTPFreq,uTranInfo.uBit.uiTPSymbolRate,uTranInfo.uBit.uiTPQam,NULL);
        }
    }
    
#if (1 == FTA_LOCK)
    uif_CAStartEntitleCheckTask();
#endif
}

MBT_VOID uif_CalcRadioLogo(MBT_VOID)
{
    RADIO_RECT rect1;
    static MBT_BOOL bMoveRight = MM_TRUE, bMoveDown = MM_TRUE;
    rect1.x = uiv_stRadioRect.x;
    rect1.y = uiv_stRadioRect.y;
    rect1.width = RADIO_LOGO_WIDTH;    //预计的最大值
    rect1.height = RADIO_LOGO_HEIGHT;

    if(bMoveRight)
    {
        if( (rect1.x + rect1.width + MOVE_STEP) >= LEFT_MAX )
        {
            bMoveRight = MM_FALSE;
            rect1.x = LEFT_MAX - rect1.width;
        }
        else
        {
            rect1.x += MOVE_STEP;
        }
    }
    else
    {
        if( rect1.x - MOVE_STEP  <= LEFT_MIN )
        {
            bMoveRight = MM_TRUE;
            rect1.x  = LEFT_MIN;
        }
        else
        {
            rect1.x -= MOVE_STEP;
        }
    }

    if(bMoveDown)
    {
        if( (rect1.y + rect1.height + MOVE_STEP) >= TOP_MAX )
        {
            bMoveDown = MM_FALSE;
            rect1.y = TOP_MAX - rect1.height ;
        }
        else
        {
            rect1.y += MOVE_STEP;
        }
    }
    else
    {
        if( (rect1.y - MOVE_STEP)  <= TOP_MIN )
        {
            bMoveDown = MM_TRUE;
            rect1.y = TOP_MIN;
        }
        else
        {
            rect1.y -= MOVE_STEP;
        }
    }
    
    uiv_stRadioRect.x    = rect1.x;
    uiv_stRadioRect.y    = rect1.y;
    uiv_stRadioRect.width  = rect1.width;
    uiv_stRadioRect.height = rect1.height;
}

MBT_VOID uif_DrawRadioLogo(UI_PRG *pstPrgInfo)
{
    BITMAPTRUECOLOR *pstFramBmp = BMPF_GetBMP(m_ui_Radio_LogoIfor);
    RADIO_RECT LogoRect, NameRect;
    MBT_CHAR RadioName[20];
    MBT_U8 u8RadioNameLength;
    MBT_U8 u8FontHeight = WGUIF_GetFontHeight();
    if(MM_NULL == pstPrgInfo)
    {
        return;
    }

    WGUIF_SetFontHeight(SMALLER_GWFONT_HEIGHT);
    uif_ClearWaterMark();//清屏之前，先清除水印，否则后面画不出来，因为画的接口有全变量判断
    WGUIF_ClsExtScreen(0, 0, OSD_REGINMAXWIDHT, OSD_REGINMAXHEIGHT);
    uif_DisplayWaterMark();//show radio logo need to show watermark
    uif_CalcRadioLogo();

    //radiologo watermark
    if (MM_FALSE == uif_JudgeWaterMarkPositionToShowFinger(uiv_stRadioRect.x, uiv_stRadioRect.y, uiv_stRadioRect.width, uiv_stRadioRect.height))
    {
        uiv_stRadioRect.x = LEFT_MIN;
        uiv_stRadioRect.y = TOP_MIN;
    }

    LogoRect.x = uiv_stRadioRect.x + (uiv_stRadioRect.width - pstFramBmp->bWidth) / 2;
    LogoRect.y = uiv_stRadioRect.y;
 	WGUIF_DisplayReginTrueColorBmpExt(LogoRect.x, LogoRect.y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    u8RadioNameLength = sprintf(RadioName, "A%03d_%s", pstPrgInfo->u16LogicNum, pstPrgInfo->stService.cServiceName);
    
    NameRect.x = uiv_stRadioRect.x + (uiv_stRadioRect.width - WGUIF_FNTGetTxtWidth(u8RadioNameLength, RadioName))/2;
    NameRect.y = LogoRect.y + pstFramBmp->bHeight + 10;
    WGUIF_FNTDrawTxtWithAlphaExt(NameRect.x, NameRect.y, u8RadioNameLength, RadioName, FONT_FRONT_COLOR_WHITE);

    WGUIF_ReFreshLayer();
    WGUIF_SetFontHeight(u8FontHeight);
}

static MBT_VOID uif_DrawRadioLogoTimerCall(MBT_U32 u32Para[])
{
	UIF_SendKeyToUi(DUMMY_KEY_SHOW_RADIO_LOGO);
}

static MBT_VOID uif_ExitMenu(MBT_VOID)
{
    UI_PRG ProgInfo;
    UI_PRG *pstProgInfo = &ProgInfo;
    MBT_S32 s32ProgramCount = DBSF_DataGetListPrgNum();
    MLUI_DEBUG("---> s32ProgramCount = %d",s32ProgramCount);
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    WGUIF_ClsFullScreen();
    MLMF_AV_SetVideoWindow(0,0,0,0);
    uif_ResetAlarmMsgFlag();
    if(s32ProgramCount != 0)
    {
        if(DVB_INVALID_LINK == uif_GetFirstPlayProg(pstProgInfo) )
        {
            return;
        }
        
        if(AUDIO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
        {
            if(uiv_u8RadioDrawTimer == 0xff)
            {
                MLUI_DEBUG("--->create timer!!!");
                uiv_u8RadioDrawTimer = TMF_SetDbsTimer(uif_DrawRadioLogoTimerCall, MM_NULL, 2000, m_Repeat);
            }
            uif_DrawRadioLogo(pstProgInfo);
        }
        if(!uif_GetBookedFlag())
        {
        	uif_DrawChannel();
		}
    }
    else
    {
        MLUI_DEBUG("---> No Program,stop av");
        UIF_StopAV();
        uif_DisplayWaterMark();
    }
}

static MBT_VOID uif_PlayChannelByNumber(MBT_S32 iProgramNoEntered)
{
	MBT_S32 iRet;
    UI_PRG  stProgInfo;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    iRet = DBSF_DataPosPrg2XLCN(iProgramNoEntered,&stProgInfo ,pstBoxInfo->ucBit.bVideoAudioState);

    if ( DVB_INVALID_LINK != iRet)
    {
        uif_ResetAlarmMsgFlag();
        if(!uif_WhetherCurPrg(&stProgInfo))
        {
			uif_DrawChannel();
        }
    }else
    {
		uif_ShareDisplayResultDlg("Information", "Channel Not Available", DLG_WAIT_TIME);
	}
}

static MBT_VOID ExchangeResolution(MBT_VOID)
{
	DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();
    switch(pstBoxInfo->ucBit.iVideoMode)
    {
        case MM_AV_RESOLUTION_AUTO_N:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_AUTO_P;
            break;
        case MM_AV_RESOLUTION_AUTO_P:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_480p_N;
            break;
        case MM_AV_RESOLUTION_480p_N:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_576p_P;
            break;
        case MM_AV_RESOLUTION_576p_P:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_720p_A;
            break;
        case MM_AV_RESOLUTION_720p_A:
        case MM_AV_RESOLUTION_720p_N:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_720p_P;
            break;
        case MM_AV_RESOLUTION_720p_P:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_1080i_A;
            break;
        case MM_AV_RESOLUTION_1080i_A:
        case MM_AV_RESOLUTION_1080i_P:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_1080i_N;
            break;
        case MM_AV_RESOLUTION_1080i_N:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_1080p_N;
            break;
        case MM_AV_RESOLUTION_1080p_N:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_1080p_A;
            break;
        case MM_AV_RESOLUTION_1080p_A:
        case MM_AV_RESOLUTION_1080p_P:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_480i_N;
            break;
        case MM_AV_RESOLUTION_480i_N:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_576i_P;
            break;
        case MM_AV_RESOLUTION_576i_P:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_AUTO_P;
            break;
        default:
            pstBoxInfo->ucBit.iVideoMode = MM_AV_RESOLUTION_AUTO_P;
            break;
    }

    MLMF_AV_SetHDOutVideoMode(pstBoxInfo->ucBit.iVideoMode);
}

#if 0
void DVTF_TestFinger(void)
{
    extern void DVTSTBCA_ShowDotMatrixFingerPrint(const SDVTCADotMatrixFingerMsg *pDotMatrixFingerMsg);

    SDVTCADotMatrixFingerMsg stCharater;
	stCharater.m_bVisionType = 0;
	stCharater.m_byszContent[0] = 0x01;
	stCharater.m_byszContent[1] = 0x02;
	stCharater.m_byszContent[2] = 0x04;
	stCharater.m_byszContent[3] = 0x10;
	stCharater.m_byszContent[4] = 0x20;
	stCharater.m_byszContent[5] = 0x40;
	stCharater.m_byszContent[6] = 0x80;
	stCharater.m_byszContent[7] = 0x33;
	stCharater.m_byszContent[8] = 0xcc;
	stCharater.m_byszContent[9] = 0xff;
	stCharater.m_wDuration = 10;	
	stCharater.m_byLocationFromTop = 20;
	stCharater.m_byLocationFromLeft = 20;
	stCharater.m_bySize = 30;
	stCharater.m_dwFontARGB = FONT_FRONT_COLOR_WHITE;
	DVTSTBCA_ShowDotMatrixFingerPrint(&stCharater);
}

void DVTF_TestFinger1(void)
{
    extern void DVTSTBCA_ShowDotMatrixFingerPrint(const SDVTCADotMatrixFingerMsg *pDotMatrixFingerMsg);

    SDVTCADotMatrixFingerMsg stCharater;
	stCharater.m_bVisionType = 1;
	stCharater.m_byszContent[0] = 0x01;
	stCharater.m_byszContent[1] = 0x02;
	stCharater.m_byszContent[2] = 0x04;
	stCharater.m_byszContent[3] = 0x10;
	stCharater.m_byszContent[4] = 0x20;
	stCharater.m_byszContent[5] = 0x40;
	stCharater.m_byszContent[6] = 0x80;
	stCharater.m_byszContent[7] = 0x33;
	stCharater.m_byszContent[8] = 0xcc;
	stCharater.m_byszContent[9] = 0xff;
	stCharater.m_wDuration = 10;	
	stCharater.m_byLocationFromTop = 20;
	stCharater.m_byLocationFromLeft = 20;
	stCharater.m_bySize = 30;
	stCharater.m_dwFontARGB = FONT_FRONT_COLOR_WHITE;
	DVTSTBCA_ShowDotMatrixFingerPrint(&stCharater);
}
extern void	DVTSTBCA_ShowOSDMsg(BYTE byPriority,const char * szOSD);

#endif
#if(OVT_FAC_MODE == 1)
extern MBT_U8 gFacTestRunningState;
#endif

//extern MBT_VOID MLF_ShowMemInfo(MBT_VOID);

//extern MBT_U8 dbsv_u8MntTestTablechange;
MBT_S32 uif_DeskTop(MBT_S32 iFirst)
{
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();        
    BITMAPTRUECOLOR *pstMsgBckBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgX = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstMsgBckBmp->bWidth)/2;
    MBT_S32 iMsgY = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstMsgBckBmp->bHeight)/2)-UI_DLG_OFFSET_Y;
    MBT_S32 iMsgWidth = pstMsgBckBmp->bWidth;
    MBT_S32 iMsgHeight = pstMsgBckBmp->bHeight;
    UI_PRG stProgInfo;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32	iKey ;
    MBT_U32 u32LeftTime;
    MBT_S32 s32ProgramNoEntered;
    MBT_CHAR* infostr[2][13] = 
    { 
        {
            "No Radio program!",
            "No any TV channel, switch failed!",
            "No any channel!",
            "The choosed function is not activated!",
            "No SD program!",
            "No HD program!",
            "Not any TV channel, so can not edit!",
            "No Program",
            "Your reserved program will be play soon\nDo you want view it?",
            "Information",
            "No USB device !",
            "No favorite program!",
            "No any booked event!",
        },
        {
            "No Radio program!",
            "No any TV channel, switch failed!",
            "No any channel!",
            "The choosed function is not activated!",
            "No SD program!",
            "No HD program!",
            "Not any TV channel, so can not edit!",
            "No Program",
            "Your reserved program will be play soon\nDo you want view it?",
            "Information",
            "No USB device !",
            "No favorite program!",
            "No any booked event!",
        }
    };

    uif_SetMenuFlag(0);
    uif_ExitMenu();

    while ( !bExit )
    {
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey (2000);
        switch ( iKey )
        {
            case DUMMY_KEY_BACKWARD:
            case DUMMY_KEY_FORWARD:
            case DUMMY_KEY_PREV:
            case DUMMY_KEY_NEXT:
            case DUMMY_KEY_BROWSER:
            case DUMMY_KEY_RECORDLIST:
                uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][3], DLG_WAIT_TIME);
                break;

            case DUMMY_KEY_REC:
                if(0==MLMF_USB_GetDevVolNum())
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][10],DLG_WAIT_TIME);
                }
                else
                {
                    WDCtrF_PutWindow(uif_PVRRecord, 0);
                    iKey = DUMMY_KEY_ADDWINDOW;
                    bExit = MM_TRUE;
                }
                break;

            case DUMMY_KEY_START:
                if(0==MLMF_USB_GetDevVolNum())
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][10],DLG_WAIT_TIME);
                }
                else
                {
                    WDCtrF_PutWindow(uif_Timeshift, 0);
                    iKey = DUMMY_KEY_ADDWINDOW;
                    bExit = MM_TRUE;
                }
                break;

            case DUMMY_KEY_RECALL:
                uif_PrgRecall();
                uif_ResetAlarmMsgFlag();
                uif_DrawChannel();
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_VOD: 
                ExchangeResolution();
                break;
        
            case DUMMY_KEY_EXIT:          
                //CAF_CheckCMAMInfo();
                break;

            case DUMMY_KEY_ACTIONREQUEST_INITIALIZESTB:  
                uif_ForceFactoryReset();
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_ENTER_SYSINFO: 
                WDCtrF_PutWindow(uif_STB_Information, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
                
#if NETWORK_LOCK
            case DUMMY_KEY_FORCE_NETLOCK: 
                //MLMF_Print("desktop DUMMY_KEY_FORCE_NETLOCK\n");
                WDCtrF_PutWindow(uif_NetWorkLock, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
#endif    
                
            case DUMMY_KEY_MENU:					
                WDCtrF_PutWindow(uif_MainMenu, 0);
                UIF_SetAddMainMenuFlag(MM_TRUE);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
                
#if(OVT_FAC_MODE == 1)
            case DUMMY_KEY_FAC_MAIN:
                WDCtrF_PutWindow(uif_FacMainTest, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_FAC_SYS:
                WDCtrF_PutWindow(uif_STB_Information, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_FAC_AGE:
                WDCtrF_PutWindow(uif_AgingTest, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
#endif

            case DUMMY_KEY_USB:					
                if(0==MLMF_USB_GetDevVolNum())
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][10],DLG_WAIT_TIME);
                }
                else
                {
                    WDCtrF_PutWindow(uif_UsbMain, 0);
                    bExit = MM_TRUE;
                    iKey = DUMMY_KEY_ADDWINDOW;
                }
                break;

            case DUMMY_KEY_RIGHTARROW:
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
                uif_AdjustGlobalVolume(iKey);
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;

            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_UPARROW:
                if(DVB_INVALID_LINK != uif_PrgPFKeyFunction(iKey,pstBoxInfo->ucBit.bVideoAudioState,&stProgInfo))
                {
                    uif_ResetAlarmMsgFlag();
                    if(AUDIO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
                    {
                        WGUIF_ClsExtScreen(0, 0, OSD_REGINMAXWIDHT, OSD_REGINMAXHEIGHT);
                        uif_DrawRadioLogo(&stProgInfo);
                    }
                    uif_DrawChannel();
                    bRefresh = MM_TRUE;
                 }
                break;

            case DUMMY_KEY_SELECT:
                if (pstBoxInfo->ucBit.bVideoAudioState  == VIDEO_STATUS )
                {
                    if(MM_FALSE == DBSF_DataHaveVideoPrg())// tv
                    {
                        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][7],DLG_WAIT_TIME);
                        break;
                    }
                }
                else
                {
                    if(MM_FALSE == DBSF_DataHaveRadioPrg())// radio
                    {
                        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][0],DLG_WAIT_TIME);
                        break;
                    }
                }
                
                WDCtrF_PutWindow(uif_ChannelProgramList, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_TVRADIO:
                if (uif_TVRadioExchange(&bRefresh) )
                {
                    DBSF_DataCurPrgInfo(&stProgInfo);
                    uif_ResetAlarmMsgFlag();
                    if(AUDIO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
                    {
                        if(uiv_u8RadioDrawTimer == 0xff)
                        {
                            MLUI_DEBUG("--->Change create timer!!!");
                            uiv_u8RadioDrawTimer = TMF_SetDbsTimer(uif_DrawRadioLogoTimerCall, MM_NULL, 2000, m_Repeat);
                        }
                        //Radio设置为allchannel
                        DBSF_ListSetPrgListType(m_ChannelList);
                        pstBoxInfo->ucBit.u32PrgListType = m_ChannelList;
                        uif_DrawRadioLogo(&stProgInfo);
                    }
                    else
                    {
                        if(0xff != uiv_u8RadioDrawTimer)
                        {
                            WGUIF_ClsExtScreen(0, 0, OSD_REGINMAXWIDHT, OSD_REGINMAXHEIGHT);
                            //video again to show watermark
                            uif_DisplayWaterMark();
                            TMF_CleanDbsTimer(uiv_u8RadioDrawTimer);
                            uiv_u8RadioDrawTimer = 0xff;
                        }
                        //TV设置为切换前保留的状态
                    }
                    uif_DrawChannel();
                    bRefresh = MM_TRUE;
                }
                else
                {
                    if (pstBoxInfo->ucBit.bVideoAudioState==VIDEO_STATUS)
                    {
                        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][7],DLG_WAIT_TIME);
                    }
                    else
                    {
                        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][1],DLG_WAIT_TIME);
                    }
                }					
                break;
                
            case DUMMY_KEY_0:
                /*if(0 == dbsv_u8MntTestTablechange)
                {
                    dbsv_u8MntTestTablechange = 1;
                    MLMF_Print("Force delete 370 prg from NIT\n");
                }
                else
                {
                    dbsv_u8MntTestTablechange = 0;
                    MLMF_Print("Force add 370 prg from NIT\n");
                }
                break;
                */
                 //MLF_ShowMemInfo();
                 //break;
            case DUMMY_KEY_1:
            case DUMMY_KEY_2: 
            case DUMMY_KEY_3:
            case DUMMY_KEY_4:
            case DUMMY_KEY_5:
            case DUMMY_KEY_6:
            case DUMMY_KEY_7:
            case DUMMY_KEY_8:
            case DUMMY_KEY_9:
            	s32ProgramNoEntered = uif_NumberKeyChange(iKey);
                if(s32ProgramNoEntered > 0)
                {
                	uif_PlayChannelByNumber(s32ProgramNoEntered);
                }
				bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_RED:
                WDCtrF_PutWindow(uif_Subscribe,0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;     

            case DUMMY_KEY_GREEN:
                WDCtrF_PutWindow(uif_ChnInfoExt, 1);
                uif_ResetAlarmMsgFlag();
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_EMAIL:
            case DUMMY_KEY_YELLOW_SUBSCRIBE:
				WDCtrF_PutWindow(uif_ShortMsg, 1);
				iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
 
            case DUMMY_KEY_INFO:  
                uif_DrawChannel();
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_BLUE_EDIT:
                if(0==MLMF_USB_GetDevVolNum())
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][10],DLG_WAIT_TIME);
                }
                else
                {
                    WDCtrF_PutWindow(uif_Pvr, 0);
                    uif_ResetAlarmMsgFlag();
                    iKey = DUMMY_KEY_ADDWINDOW;
                    bExit = MM_TRUE;
                }
                break;

            case DUMMY_KEY_FAV:
                if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
                {      
        		    if(DBSF_DataHaveVideoPrg() == MM_FALSE)
                    {
                        break;
                    }
                }
                else if(pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS)
                {
                    if(DBSF_DataHaveRadioPrg() == MM_FALSE)
                    {
                        break;
                    }
                }
                
                WDCtrF_PutWindow(uif_ChannelFavList, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_EPG:
                if (DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&stProgInfo))
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][9], infostr[uiv_u8Language][7],DLG_WAIT_TIME);
                    break;
                }

                WDCtrF_PutWindow(uif_EPGMenu, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;

			case DUMMY_KEY_LANG:
				WDCtrF_PutWindow(uif_AudioLanguageShortCut, 0);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
				break;
                
            case DUMMY_KEY_POWER:
                OperateAV4StandbyMode();
                uif_ExitMenu();
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_PRGUPDATE:                                        
                if(-1 == uif_GetPrgUpdateMsg())
                {
                    break;
                }
                WDCtrF_PutWindow(uif_SrchPrg,AUTO_SRCH_MODE_FROM_MAINFRENQ);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_FORCEUPDATE_PROGRAM:
                WDCtrF_PutWindow(uif_SrchPrg,AUTO_SRCH_MODE_FROM_MAINFRENQ);
                iKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_PLAY:
                uif_HideClockItem();
                if(PLAY_NVODPRG == uif_PlayBookedPrg(&bRefresh))
                {
                    break;
                }
				if(uif_GetBookedFlag())
				{
					MLUI_DEBUG("PutWindow DUMMY_KEY_PLAY");
					WDCtrF_PutWindow(uif_bookingLockScreem, uif_GetBookedPlayRecordFlag());
					iKey = DUMMY_KEY_ADDWINDOW;
					bExit = MM_TRUE;
					break;
				}
                uif_ResetAlarmMsgFlag();
                uif_DrawChannel();
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_PRGLISTUPDATED:
                uif_ResetAlarmMsgFlag();
                uif_DrawChannel();
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_BOOKED_TIMEREVENT:
                switch(uif_GetBookedPlayFlag())
                {
                    case PLAY_ADPRG:
                        uif_PlayBookedPrg(&bRefresh);
                        break;
                    case PLAY_NVODPRG:
                        if(PLAY_NVODPRG == uif_PlayBookedPrg(&bRefresh))
                        {
                            break;
                        }
                        uif_DrawChannel();
                        bRefresh = MM_TRUE;
                        break;
                    case PLAY_NOMALPRG:
                        if(1 == uif_ShareEpgTimerTriggerSelectDlg(&u32LeftTime,uif_GetBookedPlayRecordFlag()))
                        {
                            if(u32LeftTime <= 2)
                            {
                                if(PLAY_NVODPRG == uif_PlayBookedPrg(&bRefresh))
                                {
                                    break;
                                }
								WDCtrF_PutWindow(uif_bookingLockScreem, uif_GetBookedPlayRecordFlag());
								iKey = DUMMY_KEY_ADDWINDOW;
	                			bExit = MM_TRUE;
                            }
                            else
                            {
                                uif_DisplayClockItem();
                                TMF_SetDbsTimer(uif_BookPrgPlayCall,MM_NULL,u32LeftTime*1000,m_noRepeat);
                            }
							break;
                        }
						else
	                    {
	                        uif_SetBookedPlayFlag(PLAY_IDEL);
	                    }
						
                        uif_DrawChannel();
                        bRefresh = MM_TRUE;
                        break;
                    case PLAY_URGENCYPRG:
                        uif_PlayBookedPrg(&bRefresh);
                        break;
                }
                break;

            case DUMMY_KEY_VTGMODE_1080i_25HZ:
            case DUMMY_KEY_VTGMODE_1080i_30HZ:
            case DUMMY_KEY_VTGMODE_720p_50HZ:
            case DUMMY_KEY_VTGMODE_720p_60HZ:
            case DUMMY_KEY_VTGMODE_576p_50HZ:
            case DUMMY_KEY_VTGMODE_576i_25HZ:
            case DUMMY_KEY_VTGMODE_480p_60HZ:
            case DUMMY_KEY_VTGMODE_480i_30HZ:
                uif_ShareAutoChangePNTVMode(iKey) ;
                break;

            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9:
                uif_SetVtgAspectRatio(iKey) ;
                break;

            case DUMMY_KEY_PATCHING_PROCESS:
            case DUMMY_KEY_RECEIVEPATCH_PROCESS:      
                uif_ShowCaProcess(iKey);
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_IPPVFREEVIEW_TYPE0:  /*免费预览阶段*/
            case DUMMY_KEY_IPPVPAYEVIEW_TYPE0:    /*收费阶段*/
            case DUMMY_KEY_IPPTPAYEVIEW_TYPE0:    /*收费阶段*/
                uif_ResetAlarmMsgFlag();
                uif_SetMenuFlag(1);
                uif_CAMDispIppvInfo(iKey);
                uif_SetMenuFlag(0);
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_LOCK_SERVICE:    
                uif_PlayLockService();
                break;

            case DUMMY_KEY_NO_SPACE:
                bRefresh |= uif_CAMShowEmailLessMem();
                break;
                
            case DUMMY_KEY_CANCEL_ITEM:  /*隐藏邮件通知图标*/
                if(uif_CAMHideEmailItem())
                {
                    bRefresh = MM_TRUE;
                }
                break;  
                
            case DUMMY_KEY_SHOW_ITEM:  /*新邮件通知，显示新邮件图标*/
                if(uif_CAMDisplayEmailItem())
                {
                    bRefresh = MM_TRUE;
                }
                break;      
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_SHOW_RADIO_LOGO:
                DBSF_DataCurPrgInfo(&stProgInfo);
                uif_DrawRadioLogo(&stProgInfo);
                break;


            case -1:
                bRefresh |= uif_ShowTopScreenICO();
                bRefresh |= uif_AlarmMsgBoxes(iMsgX,iMsgY, iMsgWidth,iMsgHeight);
                break;

            default:				
                if(uif_ShowMsgList(iMsgX,iMsgY,iMsgWidth,iMsgHeight))
                {
                    bRefresh = MM_TRUE;
                }
                break;
        }
        //MLMF_Print("uif_DeskTop iKey %x complete\n",iKey);
    }
    
    if(0xff != uiv_u8RadioDrawTimer)
    {
        WGUIF_ClsExtScreen(0, 0, OSD_REGINMAXWIDHT, OSD_REGINMAXHEIGHT);
        TMF_CleanDbsTimer(uiv_u8RadioDrawTimer);
        uiv_u8RadioDrawTimer = 0xff;
    }
    
	
    uif_ResetAlarmMsgFlag();
    uif_SetMenuFlag(1);
    
    return iKey;
}

