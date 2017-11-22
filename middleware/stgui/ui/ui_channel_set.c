#include "ui_share.h"

#define UI_CHSET_STARX (P_MENU_LEFT+(OSD_REGINMAXWIDHT -UI_MSGBG_WIDTH)/2)
#define UI_CHSET_STARY ((P_MENU_TOP + (OSD_REGINMAXHEIGHT - UI_MSGBG_HEIGH)/2) - UI_DLG_OFFSET_Y)

#define UI_CHSETBAR_GAP 2

#define UI_CHSETBAR_WIDTH 594

#define UI_CHSETBAR_STARX (UI_CHSET_STARX+(UI_MSGBG_WIDTH-UI_CHSETBAR_WIDTH)/2)
#define UI_CHSETBAR_STARY (UI_CHSET_STARY+70)

#define UI_CHSETBAR_S_OFF 260
#define UI_CHSETBAR_S_WIDTH 250
#define UI_CHSETBAR_ARRAW_OFF (UI_CHSETBAR_S_OFF+UI_CHSETBAR_S_WIDTH+10)



static MBT_VOID ChnSetChange(MBT_U32 flag,MBT_U8 focusline,MBT_U8 u8CurAudioLanguage)
{
    //0:left 1:right
    MBT_S32 i;
    MBT_S32 ucAudioTrack;
    MBT_U32 u32Temp;
    MBT_U8 u8TotalLag;
    UI_PRG ProgInfo;	
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo(); 


    if(0==focusline)
    {			
        if(DUMMY_KEY_RIGHTARROW==flag)//right
        {
            u32Temp = DUMMY_KEY_UPARROW;
        }
        else
        {
            u32Temp = DUMMY_KEY_DNARROW;
        }
        
        if(DVB_INVALID_LINK != uif_PrgPFKeyFunction(u32Temp,pstBoxInfo->ucBit.bVideoAudioState,&ProgInfo))
        {
            if(!uif_WhetherCurPrg(&ProgInfo))
            {
                if (LOCK_BIT_MASK == (ProgInfo.stService.ucProgram_status & LOCK_BIT_MASK))
                {
                    if(MM_FALSE == uif_PermitPlayLockPrg(&ProgInfo))
                    {
                        return;
                    }
                }
            }
            uif_PlayPrg(&ProgInfo);
        }
    }
    else if(1==focusline)
    {
        if (DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&ProgInfo) )
        {
            return;
        }

        ucAudioTrack = pstBoxInfo->ucBit.u8AudioTrack;		
        if(DUMMY_KEY_RIGHTARROW==flag)//right
        {
            ucAudioTrack++;
            if ( ucAudioTrack > 3 )
            {
                ucAudioTrack = 1;
            }
        }
        else
        {
            ucAudioTrack--;
            if ( ucAudioTrack < 1 )
            {
                ucAudioTrack = 3;
            }           
        }
        MLMF_AV_SetAudioMode(ucAudioTrack);
        pstBoxInfo->ucBit.u8AudioTrack=ucAudioTrack;
        DBSF_DataSetBoxInfo(pstBoxInfo);				
    }
    else if(2==focusline)
    {
        if (DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&ProgInfo) )
        {
            return;
        }
        
        u8TotalLag = 0;
        //audio language            
        for(i = 0;i < ProgInfo.stService.NumPids;i++)
        {
            switch(ProgInfo.stService.Pids[i].Type)
            {
            case MM_STREAMTYPE_INVALID: /* None     : Invalid type                         */
            case MM_STREAMTYPE_MP1V: /* Video    : MPEG1                                */
            case MM_STREAMTYPE_MP2V: /* Video    : MPEG2                                */
            case MM_STREAMTYPE_MP4V:/* Video    : H264                                 */
            case MM_STREAMTYPE_TTXT: /* Teletext : Teletext pid                         */
            case MM_STREAMTYPE_SUBT: /* Subtitle : Subtitle pid                         */
            case MM_STREAMTYPE_PCR:/* Synchro  : PCR pid                              */
            case MM_STREAMTYPE_H264: /* Video    : H264                                 */
            case MM_STREAMTYPE_MMV:/* Video    : Multimedia content                   */
            case MM_STREAMTYPE_VC1: /* Video    : Decode Simple/Main/Advanced profile  */
            case MM_STREAMTYPE_AVS: /* Video    : AVS Video format                     */
                break;

            case MM_STREAMTYPE_MP1A: /* Audio    : MPEG 1 Layer I                       */
            case MM_STREAMTYPE_MP2A: /* Audio    : MPEG 1 Layer II                      */
            case MM_STREAMTYPE_MP4A: /* Audio    : like HEAAC,Decoder LOAS / LATM - AAC */
            case MM_STREAMTYPE_AC3: /* Audio    : AC3                                  */
            case MM_STREAMTYPE_MPEG4P2: /* Video    : MPEG4 Part II                        */
            case MM_STREAMTYPE_AAC: /* Audio    : Decode ADTS - AAC                    */
            case MM_STREAMTYPE_HEAAC: /* Audio    : Decoder LOAS / LATM - AAC            */
            case MM_STREAMTYPE_WMA: /* Audio    : WMA,WMAPRO                           */
            case MM_STREAMTYPE_DDPLUS: /* Audio    : DD+ Dolby digital                    */
            case MM_STREAMTYPE_DTS: /* Audio    : DTS                                  */
            case MM_STREAMTYPE_MMA: /* Audio    : Multimedia content                   */
            case MM_STREAMTYPE_OTHER:  /* Misc     : Non identified pid                   */
                if(u8CurAudioLanguage == u8TotalLag)
                {
                    ProgInfo.stService.u16CurAudioPID = ProgInfo.stService.Pids[i].Pid;
                    DBSF_DataPrgEdit(&ProgInfo.stService);              
                }
                u8TotalLag++;
                break;
                }
            }
            DBSF_PlyPrgPlayChgAudioPID(&ProgInfo.stService);
    }
}



static MBT_VOID ChnSetDrawItem(MBT_BOOL bHidden,MBT_BOOL bSelect,MBT_U32 u32ItemIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    MBT_CHAR *ptrsting;
    MBT_S32 u32FontColor;
    MBT_CHAR *psting[] = 
    {
        "Cur Channel",
        "Track",
        "Audio Change",
    };


 

    if(MM_TRUE==bSelect)
    {
        u32FontColor = FONT_FRONT_COLOR_BLACK;
        uif_DrawFocusArrawBar(x,y,UI_CHSETBAR_WIDTH,UI_CHSETBAR_ARRAW_OFF);
    }
    else
    {
        u32FontColor = FONT_FRONT_COLOR_BLUE;
        uif_DrawUnfocusArrawBar(x,y,UI_CHSETBAR_WIDTH,UI_CHSETBAR_ARRAW_OFF);
    }

    ptrsting = psting[u32ItemIndex];
    WGUIF_FNTDrawTxt(x+10,y+(BMPF_GetBMPHeight(m_ui_Installation_item_focus_middleIfor) - WGUIF_GetFontHeight())/2, strlen(ptrsting),ptrsting, u32FontColor);
}


static MBT_VOID ChnSetReadData(MBT_S32 iDataEntryIndex,MBT_S32 iItemIndex,MBT_CHAR *pItem)
{
    MBT_S32 i;
    MBT_U8 u8TotalLag;
    MBT_U8 u8CurLag;
    PRG_PIDINFO *pstPrgPIDInfo = MM_NULL;
    UI_PRG ProgInfo;
    PRG_PIDINFO stAudioPrgPIDInfo;
    MBT_CHAR *psting[] = 
    {
        "Right",
        "Left",
        "Stereo"	    
    };
    
    if(MM_NULL == pItem||iDataEntryIndex > 3)
    {
        return;
    }

    if (DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&ProgInfo) )
    {
        return;
    }

    switch(iDataEntryIndex)
    {
        case 0:
            //satellite
            strcpy(pItem,ProgInfo.stService.cServiceName);
            break;

        case 1:
            //transponder
            //MLMF_Print("ChnSetReadData iItemIndex %d\n",iItemIndex);
            strcpy(pItem,psting[iItemIndex]);
            break;

        case 2:
            u8TotalLag = 0;
            u8CurLag = iItemIndex;
            for(i = 0;i < ProgInfo.stService.NumPids;i++)
            {
                switch(ProgInfo.stService.Pids[i].Type)
                {
                    case MM_STREAMTYPE_INVALID: /* None     : Invalid type                         */
                    case MM_STREAMTYPE_MP1V: /* Video    : MPEG1                                */
                    case MM_STREAMTYPE_MP2V: /* Video    : MPEG2                                */
                    case MM_STREAMTYPE_MP4V:/* Video    : H264                                 */
                    case MM_STREAMTYPE_TTXT: /* Teletext : Teletext pid                         */
                    case MM_STREAMTYPE_SUBT: /* Subtitle : Subtitle pid                         */
                    case MM_STREAMTYPE_PCR:/* Synchro  : PCR pid                              */
                    case MM_STREAMTYPE_H264: /* Video    : H264                                 */
                    case MM_STREAMTYPE_MMV:/* Video    : Multimedia content                   */
                    case MM_STREAMTYPE_VC1: /* Video    : Decode Simple/Main/Advanced profile  */
                    case MM_STREAMTYPE_AVS: /* Video    : AVS Video format                     */
                        break;

                    case MM_STREAMTYPE_MP1A: /* Audio    : MPEG 1 Layer I                       */
                    case MM_STREAMTYPE_MP2A: /* Audio    : MPEG 1 Layer II                      */
                    case MM_STREAMTYPE_MP4A: /* Audio    : like HEAAC,Decoder LOAS / LATM - AAC */
                    case MM_STREAMTYPE_AC3: /* Audio    : AC3                                  */
                    case MM_STREAMTYPE_MPEG4P2: /* Video    : MPEG4 Part II                        */
                    case MM_STREAMTYPE_AAC: /* Audio    : Decode ADTS - AAC                    */
                    case MM_STREAMTYPE_HEAAC: /* Audio    : Decoder LOAS / LATM - AAC            */
                    case MM_STREAMTYPE_WMA: /* Audio    : WMA,WMAPRO                           */
                    case MM_STREAMTYPE_DDPLUS: /* Audio    : DD+ Dolby digital                    */
                    case MM_STREAMTYPE_DTS: /* Audio    : DTS                                  */
                    case MM_STREAMTYPE_MMA: /* Audio    : Multimedia content                   */
                    case MM_STREAMTYPE_OTHER:  /* Misc     : Non identified pid                   */
                        stAudioPrgPIDInfo = ProgInfo.stService.Pids[i];
                        if(iItemIndex == i)
                        {
                            pstPrgPIDInfo = &stAudioPrgPIDInfo;
                        }
                        u8TotalLag++;
                        break;
                }
            }

            if(MM_NULL == pstPrgPIDInfo)
            {
                pstPrgPIDInfo = &stAudioPrgPIDInfo;
            }

            if(u8TotalLag==0)
            {
                u8TotalLag=1;
            }
            //MLMF_Print("u8CurLag = %d %x%x%x\n",u8CurLag,stPrgPIDInfo.acAudioLanguage[0],stPrgPIDInfo.acAudioLanguage[1],stPrgPIDInfo.acAudioLanguage[2]);
            if(0x00 == pstPrgPIDInfo->acAudioLanguage[0])
            {
                sprintf(pItem,"(%d/%d)AUDIO%d",u8CurLag+1,u8TotalLag,(u8CurLag+1));
            }
            else
            {
                sprintf(pItem,"(%d/%d)%c%c%c",u8CurLag+1,u8TotalLag,pstPrgPIDInfo->acAudioLanguage[0],pstPrgPIDInfo->acAudioLanguage[1],pstPrgPIDInfo->acAudioLanguage[2]);
            }
            break;


        default:
            break;
    }
}


static MBT_VOID ChnSetInitEdit(EDIT *pstEdit)
{
    MBT_U8 i;
    MBT_U8 u8TotalLag = 0;
    MBT_U8 u8CurLag = 0;
    UI_PRG ProgInfo;
    MBT_U16 u8NormalItemNum[3] = {1,3,0};
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo(); 
    DATAENTRY *pstDataEntry = pstEdit->stDataEntry;

    if (DVB_INVALID_LINK == DBSF_DataCurPrgInfo(&ProgInfo) )
    {
        return;
    }
    //audio language	        
    for(i = 0;i < ProgInfo.stService.NumPids;i++)
    {
        switch(ProgInfo.stService.Pids[i].Type)
        {
            case MM_STREAMTYPE_INVALID: /* None     : Invalid type                         */
            case MM_STREAMTYPE_MP1V: /* Video    : MPEG1                                */
            case MM_STREAMTYPE_MP2V: /* Video    : MPEG2                                */
            case MM_STREAMTYPE_MP4V:/* Video    : H264                                 */
            case MM_STREAMTYPE_TTXT: /* Teletext : Teletext pid                         */
            case MM_STREAMTYPE_SUBT: /* Subtitle : Subtitle pid                         */
            case MM_STREAMTYPE_PCR:/* Synchro  : PCR pid                              */
            case MM_STREAMTYPE_H264: /* Video    : H264                                 */
            case MM_STREAMTYPE_MMV:/* Video    : Multimedia content                   */
            case MM_STREAMTYPE_VC1: /* Video    : Decode Simple/Main/Advanced profile  */
            case MM_STREAMTYPE_AVS: /* Video    : AVS Video format                     */
                break;

            case MM_STREAMTYPE_MP1A: /* Audio    : MPEG 1 Layer I                       */
            case MM_STREAMTYPE_MP2A: /* Audio    : MPEG 1 Layer II                      */
            case MM_STREAMTYPE_MP4A: /* Audio    : like HEAAC,Decoder LOAS / LATM - AAC */
            case MM_STREAMTYPE_AC3: /* Audio    : AC3                                  */
            case MM_STREAMTYPE_MPEG4P2: /* Video    : MPEG4 Part II                        */
            case MM_STREAMTYPE_AAC: /* Audio    : Decode ADTS - AAC                    */
            case MM_STREAMTYPE_HEAAC: /* Audio    : Decoder LOAS / LATM - AAC            */
            case MM_STREAMTYPE_WMA: /* Audio    : WMA,WMAPRO                           */
            case MM_STREAMTYPE_DDPLUS: /* Audio    : DD+ Dolby digital                    */
            case MM_STREAMTYPE_DTS: /* Audio    : DTS                                  */
            case MM_STREAMTYPE_MMA: /* Audio    : Multimedia content                   */
            case MM_STREAMTYPE_OTHER:  /* Misc     : Non identified pid                   */
                if(ProgInfo.stService.u16CurAudioPID == ProgInfo.stService.Pids[i].Pid)
                {
                    u8CurLag = u8TotalLag;
                }
                u8TotalLag++;
                break;
            }
    }

    u8NormalItemNum[0] = 1;
    u8NormalItemNum[1] = 3;
    u8NormalItemNum[2] = u8TotalLag;

    memset(pstEdit,0,sizeof(EDIT));
    pstEdit->bModified = MM_TRUE;
    pstEdit->iSelect = 0;
    pstEdit->iPrevSelect = pstEdit->iSelect;
    pstEdit->iTotal = 3;    
    pstEdit->bPaintCurr = MM_FALSE;
    pstEdit->bPaintPrev = MM_FALSE;
    pstEdit->EditDrawItemBar = ChnSetDrawItem;

    //big high light
    for(i = 0;i < pstEdit->iTotal;i++)
    {
        pstDataEntry[i].pReadData = ChnSetReadData;   
        pstDataEntry[i].iTxtCol = UI_CHSETBAR_STARX+UI_CHSETBAR_S_OFF+30;   
        pstDataEntry[i].iTxtWidth = UI_CHSETBAR_S_WIDTH-30-30;	
        pstDataEntry[i].iCol = UI_CHSETBAR_STARX;
        pstDataEntry[i].iWidth = UI_CHSETBAR_WIDTH;
        pstDataEntry[i].iHeight = BMPF_GetBMPHeight(m_ui_Installation_item_focus_middleIfor);
        pstDataEntry[i].iRow = UI_CHSETBAR_STARY+(pstDataEntry[i].iHeight+UI_CHSETBAR_GAP)*i;	
        pstDataEntry[i].iSelect = 0;
        pstDataEntry[i].iTotalItems = u8NormalItemNum[i];
        pstDataEntry[i].field_type = STTRING_BOTTON;
        pstDataEntry[i].bHidden = MM_FALSE;
        pstDataEntry[i].iUnfucusFrontColor = FONT_FRONT_COLOR_BLUE;
        pstDataEntry[i].iFucusFrontColor = FONT_FRONT_COLOR_BLACK;    
        pstDataEntry[i].iSelectByteFront = FONT_FRONT_COLOR_WHITE;
        pstDataEntry[i].u32FontSize = SMALL_GWFONT_HEIGHT;
        memset(pstDataEntry[i].acDataRead,0,MAXBYTESPERCOLUMN);
    } 


    pstDataEntry[0].iSelect = 0;

    if(pstBoxInfo->ucBit.u8AudioTrack==1)//R asudio
    {
        pstDataEntry[1].iSelect = 0;
    }
    else if(pstBoxInfo->ucBit.u8AudioTrack==2)//L audio
    {
        pstDataEntry[1].iSelect = 1;
    }
    else if(pstBoxInfo->ucBit.u8AudioTrack==3)//stero
    {
        pstDataEntry[1].iSelect = 2;
    }
    else
    {
        pstDataEntry[1].iSelect = 1;
    }

    pstDataEntry[2].iSelect = u8CurLag;
}


MBT_S32 uif_ChannelSet(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_U32 u32WaitTime = 1000;
    MBT_BOOL bRefresh = MM_TRUE;
    EDIT stAudioEdit;
    DATAENTRY *pstDataEntry = stAudioEdit.stDataEntry;

    while ( !bExit )
    {
        if ( bRedraw )
        {    
            uif_DrawMsgBgPanel(UI_CHSET_STARX,UI_CHSET_STARY,"Channel Set");
            ChnSetInitEdit(&stAudioEdit);
            bRedraw = MM_FALSE;
            bRefresh = MM_TRUE;
        }
        bRefresh |= UCTRF_EditOnDraw(&stAudioEdit);

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(u32WaitTime);  
        if(MM_FALSE == UCTRF_EditGetKey(&stAudioEdit,iKey))
        {
            uif_ShareDisplayResultDlg("Information","Invalid data",DLG_WAIT_TIME);
        }


        switch ( iKey )
        {		
            case DUMMY_KEY_VTGMODE_1080i_25HZ:
            case DUMMY_KEY_VTGMODE_1080i_30HZ:
            case DUMMY_KEY_VTGMODE_720p_50HZ:
            case DUMMY_KEY_VTGMODE_720p_60HZ:
            case DUMMY_KEY_VTGMODE_576p_50HZ:
            case DUMMY_KEY_VTGMODE_576i_25HZ:
            case DUMMY_KEY_VTGMODE_480p_60HZ:
            case DUMMY_KEY_VTGMODE_480i_30HZ:
                if ( uif_ShareAutoChangePNTVMode(iKey) )
                {
                    bRedraw = MM_TRUE;
                }
                break;

            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9:
                uif_SetVtgAspectRatio(iKey) ;
                break;
            case DUMMY_KEY_RIGHTARROW:
            case DUMMY_KEY_LEFTARROW:
                ChnSetChange(iKey,stAudioEdit.iSelect,pstDataEntry[2].iSelect); 
                if(0 == stAudioEdit.iSelect)
                {
                    stAudioEdit.bModified = MM_TRUE;
                }
                break;

            case DUMMY_KEY_SELECT:
                break;                
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:               			
                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_EXITALL;
                break;	

            case DUMMY_KEY_MUTE:
                UIF_SetMute();
                break;

            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;

            case -1:
                u32WaitTime = 1000;
                bRefresh |= uif_ShowTopScreenICO();
                if(UCTRF_SliderOnDraw())
                {
                    bRefresh = MM_TRUE;
                    u32WaitTime = 30;
                }
                break;

            default:   
                if( uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }

    WGUIF_ClsScreen(UI_CHSET_STARX,UI_CHSET_STARY,UI_MSGBG_WIDTH,UI_MSGBG_HEIGH);
    return iRetKey;
}



