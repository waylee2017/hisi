#include "ui_share.h"

#define NM_VOLSETAREA_X (0) //音量图标的起始位置
#define NM_VOLSETAREA_HEIGHT 125 //音量图标背景的高度
#define NM_VOLSETAREA_Y (OSD_REGINMAXHEIGHT-NM_VOLSETAREA_HEIGHT)
#define NM_VOLSETAREA_WIDTH (OSD_REGINMAXWIDHT)		

#if ENABLE_ADVERT
#define NM_VOLSET_PROGRESS_X 250 //音量进度条长度x
#define NM_VOLSET_PROGRESS_Y (NM_VOLSETAREA_Y + 35)//音量进度条长度y
#define NM_VOLSET_PROGRESS_BAR_WIDTH (OSD_REGINMAXWIDHT*6/10) //音量进度条长度
#else
#define NM_VOLSET_PROGRESS_X 170 //音量进度条长度x
#define NM_VOLSET_PROGRESS_Y (NM_VOLSETAREA_Y + 35)//音量进度条长度y
#define NM_VOLSET_PROGRESS_BAR_WIDTH (OSD_REGINMAXWIDHT*7/10) //音量进度条长度
#endif
#define NM_VOLSET_PROGRESS_TIP_X (NM_VOLSET_PROGRESS_X + NM_VOLSET_PROGRESS_BAR_WIDTH + 5)//音量进度条长度提示x
#define NM_VOLSET_TEXT_BG 0xFF030317 //文字的背景，屏新的时候用于清屏

#define NM_VOLUME_STEP 1
#define NM_MAX_VOL_LEVEL 32
#define NM_MIN_VOL_LEVEL 0

MBT_BOOL UIF_SetMute(MBT_VOID)
{
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();    
    MBT_BOOL bRefresh;
    
    if (pstBoxInfo->ucBit.bMuteState == 0x0 )
    {
        pstBoxInfo->ucBit.bMuteState = 1;
    }
    else
    {
        pstBoxInfo->ucBit.bMuteState = 0;
    }
	bRefresh = uif_SetMuteAndDrawICO( pstBoxInfo->ucBit.bMuteState) ;
    DBSF_DataSetBoxInfo(pstBoxInfo); 

    return bRefresh;
}

MBT_VOID  uif_AdjustGlobalVolume(MBT_U32 iKey)
{	
    MBT_U8 u8DlgDispTime ;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bUpdate = MM_FALSE;
    MBT_U8 ucCurVolume = 0;
    UI_PRG stProgInfo ;
    MBT_S32 iWaitTimeout = 0;
    DVB_BOX  *pstBoxInfo;
    BITMAPTRUECOLOR  Copybitmap;
    BITMAPTRUECOLOR *pstBmp;
	MBT_S32 iTemp = 0;
	MBT_S32 iLen;
    
	MBT_S32 s32FontHeight = 0;
	MBT_CHAR cBuf[8];
    BITMAPTRUECOLOR *pstMsgBckBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgX = (OSD_REGINMAXWIDHT -pstMsgBckBmp->bWidth)/2;
    MBT_S32 iMsgY = (OSD_REGINMAXHEIGHT - pstMsgBckBmp->bHeight)/2-UI_DLG_OFFSET_Y;
    MBT_S32 iMsgWidth = pstMsgBckBmp->bWidth;
    MBT_S32 iMsgHeight = pstMsgBckBmp->bHeight;
    MBT_S32 s32YOffset = 0;

	s32FontHeight = WGUIF_GetFontHeight();
    if (DVB_INVALID_LINK == DBSF_DataCurPrgInfo ( &stProgInfo)&& !MLMF_PVR_IsPlay())
    {
        return;
    }
    
    pstBoxInfo = DBSF_DataGetBoxInfo();         
    u8DlgDispTime = pstBoxInfo->ucBit.ucDlgDispTime;
#if (1 == USE_GLOBLEVOLUME)
    ucCurVolume = pstBoxInfo->ucBit.cVolLevel;
#else
    ucCurVolume = stProgInfo.stService.u8Volume;
#endif   
    ucCurVolume = (ucCurVolume%(NM_MAX_VOL_LEVEL+1));

    Copybitmap.bWidth = NM_VOLSETAREA_WIDTH;
    Copybitmap.bHeight = NM_VOLSETAREA_HEIGHT;

    WGUIF_GetRectangleImage(NM_VOLSETAREA_X, NM_VOLSETAREA_Y,&Copybitmap);

    pstBmp = BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor);
	//volume big bg
    WGUIF_DisplayReginTrueColorBmp(NM_VOLSETAREA_X, NM_VOLSETAREA_Y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE);

	//volume logo
	pstBmp = BMPF_GetBMP(m_ui_ChannelInfo_volumeIfor);
    WGUIF_DisplayReginTrueColorBmp(NM_VOLSET_PROGRESS_X-pstBmp->bWidth-5, NM_VOLSET_PROGRESS_Y, 0, 0, pstBmp->bWidth, pstBmp->bHeight, pstBmp, MM_TRUE);

	//progress bg
	s32YOffset = (BMPF_GetBMPHeight(m_ui_ChannelInfo_volumeIfor) - BMPF_GetBMPHeight(m_ui_Volume_progress_bg_MiddleIfor))/2;
	uif_ShareDrawCombinHBar(NM_VOLSET_PROGRESS_X,NM_VOLSET_PROGRESS_Y + s32YOffset,
                            NM_VOLSET_PROGRESS_BAR_WIDTH,
                            BMPF_GetBMP(m_ui_Volume_progress_bg_LeftIfor),
                            BMPF_GetBMP(m_ui_Volume_progress_bg_MiddleIfor),
                            BMPF_GetBMP(m_ui_Volume_progress_bg_RightIfor));

	iLen = BMPF_GetBMPWidth(m_ui_Volume_progress_LeftIfor)+BMPF_GetBMPWidth(m_ui_Volume_progress_RightIfor);
	iTemp = ucCurVolume*NM_VOLSET_PROGRESS_BAR_WIDTH/NM_MAX_VOL_LEVEL;
	if(ucCurVolume == 0)
	{
		iTemp = 0;
	}else if(iTemp < iLen)
    {
        iTemp = iLen;
    }
	if(iTemp != 0)
	{
	    s32YOffset = (BMPF_GetBMPHeight(m_ui_ChannelInfo_volumeIfor) - BMPF_GetBMPHeight(m_ui_Volume_progress_bg_MiddleIfor))/2;
		uif_ShareDrawCombinHBar(NM_VOLSET_PROGRESS_X,NM_VOLSET_PROGRESS_Y + s32YOffset,
                            iTemp,
                            BMPF_GetBMP(m_ui_Volume_progress_LeftIfor),
                            BMPF_GetBMP(m_ui_Volume_progress_MiddleIfor),
                            BMPF_GetBMP(m_ui_Volume_progress_RightIfor));
	}

	#if(1 == ENABLE_ADVERT)
	Advert_ShowAdBitmap(0,0,BROWSER_AD_VOL_BAR);
	#endif

    while ( !bExit )
    {
        switch ( iKey )
        {
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_RIGHTARROW:
                ucCurVolume += NM_VOLUME_STEP;
                if ( ucCurVolume >= NM_MAX_VOL_LEVEL )
                {
                    ucCurVolume = NM_MAX_VOL_LEVEL;
                }
                
                if ( pstBoxInfo->ucBit.bMuteState == 0x1 )
                {
                    pstBoxInfo->ucBit.bMuteState = 0;
                    bRefresh |= uif_SetMuteAndDrawICO(pstBoxInfo->ucBit.bMuteState);
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                }
                iWaitTimeout = 0;
                bUpdate=MM_TRUE;
                break;

            case DUMMY_KEY_VOLUMEDN:			
            case DUMMY_KEY_LEFTARROW:
                if(ucCurVolume >= NM_VOLUME_STEP+NM_MIN_VOL_LEVEL)
                {
                    ucCurVolume -= NM_VOLUME_STEP;
                }
                else
                {
                    ucCurVolume = NM_MIN_VOL_LEVEL;
                }
                
                bUpdate=MM_TRUE;
                
                if ( (pstBoxInfo->ucBit.bMuteState == 0x1 && ucCurVolume != NM_MIN_VOL_LEVEL) || (pstBoxInfo->ucBit.bMuteState == 0 && ucCurVolume == NM_MIN_VOL_LEVEL))
                {
                    pstBoxInfo->ucBit.bMuteState = !(pstBoxInfo->ucBit.bMuteState);
                    bRefresh |= uif_SetMuteAndDrawICO(pstBoxInfo->ucBit.bMuteState);
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                }                
                iWaitTimeout = 0;
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                bExit = MM_TRUE;		
                iWaitTimeout = 0;
                break;


           case DUMMY_KEY_NO_SPACE:
                if(!uif_GetMenuState() && !MLMF_PVR_IsPlay())
                {
                    bRefresh |= uif_CAMShowEmailLessMem();
                }
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

            case -1:
                if(iWaitTimeout++ > u8DlgDispTime)
                {
                    bExit = MM_TRUE;                        	
                }
                if(!uif_GetMenuState() && !MLMF_PVR_IsPlay())
                {
                    bRefresh |= uif_ShowTopScreenICO();
                    bRefresh |= uif_AlarmMsgBoxes(iMsgX,iMsgY,iMsgWidth,iMsgHeight);
                }
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            default:
                if ( uif_ShareIsKeyPressed( iKey ) )
                {
                    UIF_SendKeyToUi(iKey);
                    bExit = MM_TRUE;
                    break;
                }

                if(!uif_GetMenuState() && !MLMF_PVR_IsPlay())
                {
                    if(uif_ShowMsgList(iMsgX,iMsgY,iMsgWidth,iMsgHeight))
                    {
                        bRefresh = MM_TRUE;
                    }
                }
                
                if(0 !=  uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }

        if(!bExit)
        {
            if(bUpdate==MM_TRUE)
            {
                UIF_SetVolume ( ucCurVolume, ucCurVolume,0);
                s32YOffset = (BMPF_GetBMPHeight(m_ui_ChannelInfo_volumeIfor) - BMPF_GetBMPHeight(m_ui_Volume_progress_bg_MiddleIfor))/2;
                uif_ShareDrawCombinHBar(NM_VOLSET_PROGRESS_X,NM_VOLSET_PROGRESS_Y + s32YOffset,
                            NM_VOLSET_PROGRESS_BAR_WIDTH,
                            BMPF_GetBMP(m_ui_Volume_progress_bg_LeftIfor),
                            BMPF_GetBMP(m_ui_Volume_progress_bg_MiddleIfor),
                            BMPF_GetBMP(m_ui_Volume_progress_bg_RightIfor));
				iTemp = ucCurVolume*NM_VOLSET_PROGRESS_BAR_WIDTH/NM_MAX_VOL_LEVEL;
				if(ucCurVolume == 0)
				{
					iTemp = 0;
				}else if(iTemp < iLen)
			    {
			        iTemp = iLen;
			    }
				if(iTemp != 0)
				{
				    s32YOffset = (BMPF_GetBMPHeight(m_ui_ChannelInfo_volumeIfor) - BMPF_GetBMPHeight(m_ui_Volume_progress_bg_MiddleIfor))/2;
					uif_ShareDrawCombinHBar(NM_VOLSET_PROGRESS_X,NM_VOLSET_PROGRESS_Y + s32YOffset,
                            iTemp,
                            BMPF_GetBMP(m_ui_Volume_progress_LeftIfor),
                            BMPF_GetBMP(m_ui_Volume_progress_MiddleIfor),
                            BMPF_GetBMP(m_ui_Volume_progress_RightIfor));
				}
				bRefresh = MM_TRUE;
               
				memset(cBuf,0x0,sizeof cBuf);
				iLen = sprintf(cBuf,"%2d",ucCurVolume);
                WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
                s32YOffset = (BMPF_GetBMPHeight(m_ui_ChannelInfo_volumeIfor) - WGUIF_GetFontHeight())/2;
                WGUIF_DisplayReginTrueColorBmp(NM_VOLSETAREA_X, NM_VOLSETAREA_Y, NM_VOLSET_PROGRESS_TIP_X-NM_VOLSETAREA_X, NM_VOLSET_PROGRESS_Y + s32YOffset-NM_VOLSETAREA_Y-2, WGUIF_FNTGetTxtWidth(iLen, cBuf)+5, WGUIF_GetFontHeight()+4, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);
				WGUIF_FNTDrawTxt(NM_VOLSET_PROGRESS_TIP_X, NM_VOLSET_PROGRESS_Y + s32YOffset, strlen(cBuf), cBuf, FONT_FRONT_COLOR_WHITE);
                bUpdate = MM_FALSE;
            }    
            
            if(bRefresh)
            {
                WGUIF_ReFreshLayer();
                bRefresh = MM_FALSE;
            }
            
            iKey = uif_ReadKey (500);
        }
    }
    
    if(MM_TRUE == WGUIF_PutRectangleImage(NM_VOLSETAREA_X, NM_VOLSETAREA_Y,&Copybitmap))
    {
        WGUIF_ReFreshLayer();
    }
#if (1 == USE_GLOBLEVOLUME)
    pstBoxInfo->ucBit.cVolLevel = ucCurVolume;
    DBSF_DataSetBoxInfo(pstBoxInfo);
#else
    stProgInfo.stService.u8Volume = ucCurVolume;
    DBSF_DataPrgEdit(&(stProgInfo.stService));
#endif   
    WGUIF_SetFontHeight(s32FontHeight);
}



MBT_BOOL uif_SetMuteAndDrawICO(MBT_U8 uSet)
{
    MBT_BOOL bRefresh = MM_FALSE;
    BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_ChannelInfo_muteIfor);
    MBT_S32 yOffSet = 0;
    MBT_S32 font_height;

    font_height = WGUIF_GetFontHeight();
    if(1 == uSet)
    {
        MLMF_AV_SetMute(MM_TRUE);
        uiv_stMsgBar[MUTE_STATE_MSG].ucBit.uCurState = 1;
        if(uif_GetMenuState())
        {
            uiv_stMsgBar[MUTE_STATE_MSG].ucBit.uBoxDisplayed = 0;
        }
        else
        {
            WGUIF_DisplayReginTrueColorBmp(UI_MUTE_DISPLAY_X , UI_MUTE_DISPLAY_Y,0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp, MM_TRUE);
            WGUIF_SetFontHeight(SECONDTITLE_FONT_HEIGHT);
            yOffSet = (pstBmp->bHeight - SECONDMENU_LISTFONT_HEIGHT)/2;
            WGUIF_FNTDrawTxt(UI_MUTE_DISPLAY_X+pstBmp->bWidth+10, UI_MUTE_DISPLAY_Y+yOffSet, 4, "Mute", FONT_FRONT_COLOR_WHITE);
            uiv_stMsgBar[MUTE_STATE_MSG].ucBit.uBoxDisplayed = 1;
            bRefresh = MM_TRUE;
        }
    }
    else
    {
        MLMF_AV_SetMute(MM_FALSE);
        uiv_stMsgBar[MUTE_STATE_MSG].ucBit.uCurState = 0;
        uiv_stMsgBar[MUTE_STATE_MSG].ucBit.uBoxDisplayed = 0;
        if(0 == uif_GetMenuState())
        {
            WGUIF_ClsScreen(UI_MUTE_DISPLAY_X , UI_MUTE_DISPLAY_Y, pstBmp->bWidth+UI_MUTE_DISPLAY_W_NOBMP, pstBmp->bHeight);
            bRefresh = MM_TRUE;
        }
    }
    WGUIF_SetFontHeight(font_height);
    return bRefresh;
}

static MBT_U8 uif_GetVolume(MBT_U16 uVolumeLevel)
{
    MBT_U8 ucVolume[NM_MAX_VOL_LEVEL+1] = 
    {
        0,5,10,17,23,28,32,36,40,43,46,49,52,55,58,61,64,67,70,73,76,79,82,85,87,89,91,93,95,97,98,99,100
    };

    if(uVolumeLevel > NM_MAX_VOL_LEVEL)
    {
        uVolumeLevel = NM_MAX_VOL_LEVEL;
    }
     return ucVolume[uVolumeLevel];
}

MBT_VOID UIF_SetVolume ( MBT_U16 left_volume, MBT_U16 right_volume ,MBT_S16 nVolAdjust)
{
    MBT_S32 ivolume = left_volume;
    //MLMF_Print("---> [%s][%d]left_volume = %d, right_volume = %d, nVolAdjust = %d\r\n",__FUNCTION__,__LINE__,left_volume,right_volume,nVolAdjust);
#if 0    
    if(nVolAdjust > 10||nVolAdjust < -10)
    {
        nVolAdjust = 0;
    }
    
    ivolume += nVolAdjust;
#endif
    if(ivolume < 0)
    {
        ivolume = 0;
    }

    if(ivolume > NM_MAX_VOL_LEVEL)
    {
        ivolume = NM_MAX_VOL_LEVEL;
    }

    ivolume = uif_GetVolume(ivolume);       /* Convert to attenuation   */     
    //MLMF_Print("---> [%s][%d]ivolume = %d\r\n",__FUNCTION__,__LINE__,ivolume);
    if(MM_NO_ERROR != MLMF_AV_SetVolume(ivolume))
    {
        UIAPP_DEBUG(("STAUD_SetAttenuation File %s Line %d \n", __FILE__, __LINE__));
    }
}







