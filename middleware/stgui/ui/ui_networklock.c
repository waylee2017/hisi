#include "ui_share.h"
#if NETWORK_LOCK

static MBT_BOOL uif_NetLockDrawPanel(MBT_VOID)
{
    MBT_S32 x, y,iWidth,iLen;
    MBT_S32 font_height = 0;
    MBT_CHAR* infostr[2][1] =
    {
        {
            "E52-You are connected to wrong Network",
        },
        {
            "E52-You are connected to wrong Network",
        }
    };

    //bg
    WGUIF_DrawFilledRectangle(0,0,OSD_REGINMAXWIDHT,OSD_REGINMAXHEIGHT,FONT_FRONT_COLOR_BLACK);
    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    iLen = strlen(infostr[uiv_u8Language][0]);
    iWidth = WGUIF_FNTGetTxtWidth(iLen,infostr[uiv_u8Language][0]);
    x = (OSD_REGINMAXWIDHT - iWidth)/2;
    y = (OSD_REGINMAXHEIGHT - SECONDMENU_LISTFONT_HEIGHT)/2;
    WGUIF_FNTDrawTxt(x,y,iLen,infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);  
    WGUIF_SetFontHeight(font_height);
    return MM_TRUE;
}

/*½âËøÃÜÂë 372389*/

MBT_S32  uif_NetWorkLock( MBT_S32 iPara )
{
	MBT_S32 iRetKey = DUMMY_KEY_BACK;		
	MBT_BOOL bExit = MM_FALSE;
	MBT_S32 iKey;
	MBT_S32 iGetKeyNum = 0;
	MBT_S32 iKeyArray[10];
	MBT_U32 u32CurTime;		
	MBT_U32 u32MntTime;		
	MBT_U32 u32PressTime;		
	MBT_U32 u32PrevMute;		
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;
    TRANS_INFO stTransInfo;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();   
    if(0 == pstBoxInfo->ucBit.ucNetWorkLock)
    {
        pstBoxInfo->ucBit.ucNetWorkLock = 1;
        DBSF_DataSetBoxInfo(pstBoxInfo);
    }

    u32PrevMute = pstBoxInfo->ucBit.bMuteState;
    pstBoxInfo->ucBit.bMuteState = 1;
    MLMF_AV_SetMute(MM_TRUE);
    u32MntTime = MLMF_SYS_GetMS();
    u32PressTime = u32MntTime;
	UIF_StopAV();	
    DBSF_PlyOpenVideoWin(MM_FALSE);
    DBSF_DataReadMainFreq(&stTransInfo);
    DBSF_MntStartHeatBeat(BEARTRATE,MM_TRUE,uif_GetDbsMsg);
    MLMF_Tuner_Lock(0,stTransInfo.uBit.uiTPFreq,stTransInfo.uBit.uiTPSymbolRate,stTransInfo.uBit.uiTPQam,MM_NULL);        
	while ( !bExit )
	{
	    if(bRedraw)
        {
            uif_NetLockDrawPanel();
            bRefresh = MM_TRUE;
        }

        bRedraw = MM_FALSE;
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
    
		iKey = uif_ReadKey(2000);
		switch ( iKey )
        {				    
            case DUMMY_KEY_FORCE_NETUNLOCK:				
		        iRetKey = DUMMY_KEY_EXITALL;
				bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_0:
            case DUMMY_KEY_1:
            case DUMMY_KEY_2: 
            case DUMMY_KEY_3:
            case DUMMY_KEY_4:
            case DUMMY_KEY_5:
            case DUMMY_KEY_6:
            case DUMMY_KEY_7:
            case DUMMY_KEY_8:
            case DUMMY_KEY_9:
                u32PressTime = MLMF_SYS_GetMS();
                if(iGetKeyNum < 10)
                {
                    iKeyArray[iGetKeyNum] = iKey - DUMMY_KEY_0;
                    MLMF_Print("[%d] %d\n",iGetKeyNum,iKeyArray[iGetKeyNum]);
                    iGetKeyNum++;
                    if(iGetKeyNum == 6)
                    {
                        iGetKeyNum = 0;
                        //MLMF_Print("%d %d %d %d%d %d\n",iKeyArray[0],iKeyArray[1],iKeyArray[2],iKeyArray[3],iKeyArray[4],iKeyArray[5]);
                        if(3 == iKeyArray[0]
                            &&7 == iKeyArray[1]
                            &&2 == iKeyArray[2]
                            &&3 == iKeyArray[3]
                            &&8 == iKeyArray[4]
                            &&9 == iKeyArray[5])
                        {
                            iRetKey = DUMMY_KEY_EXITALL;
                            bExit = MM_TRUE;
                        }
                    }
                }
                break;
            case -1:
                u32CurTime = MLMF_SYS_GetMS();
                if(u32CurTime - u32MntTime >= 30000)
                {
                    u32MntTime = u32CurTime;
                    DBSF_MntStartHeatBeat(BEARTRATE,MM_TRUE,uif_GetDbsMsg);
                    MLMF_Tuner_Lock(0,stTransInfo.uBit.uiTPFreq,stTransInfo.uBit.uiTPSymbolRate,stTransInfo.uBit.uiTPQam,MM_NULL);        
                }

                if(MLMF_SYS_GetMS() - u32PressTime > 2000)
                {
                    iGetKeyNum = 0;
                    u32PressTime = u32CurTime;
                }
                break;
                
            default:   
                break;
        }
	}
    pstBoxInfo->ucBit.ucNetWorkLock = 0;
    pstBoxInfo->ucBit.bMuteState = u32PrevMute;
    if(1 == pstBoxInfo->ucBit.bMuteState)
    {
        MLMF_AV_SetMute(MM_TRUE);
    }
    else
    {
        MLMF_AV_SetMute(MM_FALSE);
    }
    DBSF_DataSetBoxInfo(pstBoxInfo);
    WGUIF_ClsFullScreen();
	return iRetKey;
}
#endif
