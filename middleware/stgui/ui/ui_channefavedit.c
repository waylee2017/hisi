#include "ui_share.h"


#define FAVEDIT_X_START       0
#define FAVEDIT_Y_START       0
#define FAVEDIT_TVBACKGROUND_X    (FAVEDIT_X_START+107)
#define FAVEDIT_TVBACKGROUND_Y    (FAVEDIT_Y_START+138)
#define FAVEDIT_FAVCHANNEL_PROGRAM_Y   (FAVEDIT_TVBACKGROUND_Y + 66)
#define FAVEDIT_TVBACKGROUND_WIDTH       338
#define FAVEDIT_TVBACKGROUND_HEIGHT      200
#define FAVEDIT_TVBACKGROUND_Y_END  (FAVEDIT_TVBACKGROUND_Y + FAVEDIT_TVBACKGROUND_HEIGHT)
#define FAVEDIT_TV_VIDEO_BACKGROUND_COLOUR       0xfffff111
#define FAVEDIT_HELP_INFO_Y    (FAVEDIT_Y_START + UI_ICON_Y)
#define FAVEDIT_FAVTYPE_PERPAGE     4


#define FAVEDIT_LISTITEM_WIDTH    329
#define FAVEDIT_LISTITEM_HEIGHT   35
#define FAVEDIT_LISTITEM_GAP      8
#define FAVEDIT_LISTITEMS_PERPAGE 8
#define FAVEDIT_LISTAREA_WIDTH    391

#define FAVEDIT_MSGBAR_WIDTH      302
#define FAVEDIT_MSGBAR_HEIGHT     94

#define FAVEDIT_VIDEOAREA_WIDTH  (FAVEDIT_TVBACKGROUND_WIDTH - 2)
#define FAVEDIT_VIDEOAREA_HEIGHT (FAVEDIT_TVBACKGROUND_HEIGHT - 2)
#define FAVEDIT_VIDEOAREA_X      (FAVEDIT_TVBACKGROUND_X + 1)
#define FAVEDIT_VIDEOAREA_Y      (FAVEDIT_TVBACKGROUND_Y + 1)

typedef enum
{
    FAVEDIT_TYPE = 0,
    FAVEDIT_FAVCHANNEL = 1,
    FAVEDIT_PROGRAM = 2
}FAVEDIT_SELECT_LIST;

static FAVEDIT_SELECT_LIST eSelectList = FAVEDIT_TYPE;
static FAV_EDIT *uiv_pstPrgFavListTmp = MM_NULL;
static CHANNEL_EDIT *uiv_pstPrgFavList = MM_NULL;
static MBT_U8  u8FavTypeNum = 0;
static MBT_U16 u16FavEditProgremCount = 0;
static MBT_U16 u16FavEditFavChannelCount = 0;

#define m_GetUIFavPrg(x)  (MM_NULL == uiv_PrgList.pstPrgHead ? MM_NULL: uiv_PrgList.pstPrgHead + uiv_pstPrgFavList[x].uProgramIndex )

static MBT_VOID uif_ChnFavEditCopyStatusToTmp(MBT_VOID)
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    MLUI_DEBUG("--->inum = %d",iNum);
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;

    for(iIndex = 0;iIndex<iNum; iIndex++)
    {
        //MLUI_DEBUG("--->Copy Status [%d]FavGroup = 0x%x  ",iIndex,pstProgInfo->u16FavGroup);   
        uiv_pstPrgFavListTmp[iIndex].ucLastProgram_FavGroup = pstProgInfo->u16FavGroup;
        uiv_pstPrgFavListTmp[iIndex].ucProgram_FavGroup = pstProgInfo->u16FavGroup;
        pstProgInfo++;
    }
}

static MBT_BOOL uif_ChnFavEditSaveChange(MBT_VOID)
{
    MBT_S32 i,iModifiedIndex;
    MBT_S32 iAllChNum = uiv_PrgList.iPrgNum;
    MBT_BOOL bNeedToSave = MM_FALSE;
    MBT_BOOL bDisplayMsg = MM_FALSE;
    MBT_CHAR* ptrInfo[2][2] =
    {
        {
            "Information",
            "Save edit?",
        },

        {
            "Information",
            "Save edit?",
        },
    };
	MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;

    for(i = 0;i < iAllChNum;i++)
    {
        if(uiv_pstPrgFavListTmp[i].ucLastProgram_FavGroup != uiv_pstPrgFavListTmp[i].ucProgram_FavGroup)
        {
            bDisplayMsg = MM_TRUE;
            pMsgTitle = ptrInfo[uiv_u8Language][0];
            pMsgContent = ptrInfo[uiv_u8Language][1];
			if (MM_TRUE == uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE))
            {
                iModifiedIndex = i;
                bNeedToSave = MM_TRUE;                    
            }
            break;
        }
    }

    if(bNeedToSave)
    {
        DBST_PROG *pstPrgInfo = uiv_PrgList.pstPrgHead;           
        while(iModifiedIndex < iAllChNum)
        {
            if(pstPrgInfo[iModifiedIndex].u16FavGroup != uiv_pstPrgFavListTmp[iModifiedIndex].ucProgram_FavGroup)
            {
                pstPrgInfo[iModifiedIndex].u16FavGroup = uiv_pstPrgFavListTmp[iModifiedIndex].ucProgram_FavGroup;               
                MLUI_ERR("--->Save[%d] Fav status = 0x%x",iModifiedIndex,pstPrgInfo[iModifiedIndex].u16FavGroup);
                DBSF_DataPrgEdit(&pstPrgInfo[iModifiedIndex]);
            }
            iModifiedIndex++;
        } 
    }

    return bNeedToSave;
}


static MBT_BOOL uif_ChnFavEditTypeReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_CHAR* strInfo[2][10]=
    {
		{
            "FAV1",
            "FAV2",
            "FAV3",
            "FAV4", 
            "FAV5",
            "FAV6",
            "FAV7",
            "FAV8", 
            "FAV9",
            "FAV10" 
		},
		{
            "FAV1",
            "FAV2",
            "FAV3",
            "FAV4", 
            "FAV5",
            "FAV6",
            "FAV7",
            "FAV8", 
            "FAV9",
            "FAV10" 
		}
	};

    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }
    
    memset(pItem, 0, MAXBYTESPERCOLUMN);
    sprintf((MBT_CHAR*)(pItem), "%s",strInfo[uiv_u8Language][iIndex]);
    
    return MM_TRUE;
}

static MBT_BOOL uif_ChnFavEditFavChannelReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    DBST_PROG *pstProgInfo =  uiv_PrgList.pstPrgHead;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pstProgInfo||uiv_pstPrgFavList[iIndex].uProgramIndex >= uiv_PrgList.iPrgNum)
    {
        memset(pItem,0,2*MAXBYTESPERCOLUMN);
        return MM_FALSE;
    }

    pstProgInfo += uiv_pstPrgFavList[iIndex].uProgramIndex;
    if(1 == DBSF_ListGetLCNStatus())
    {
        sprintf(pItem,"%03d", pstProgInfo->usiChannelIndexNo);
    }
    else
    {
        sprintf(pItem,"%03d", iIndex+1);
    }
    pstProgInfo->cServiceName[MAX_SERVICE_NAME_LENGTH] = 0;
    sprintf((MBT_CHAR*)(pItem+MAXBYTESPERCOLUMN), "%s",pstProgInfo->cServiceName);
    //MLUI_DEBUG("--->Fav Channel ServiceName = %s",pstProgInfo->cServiceName);
    return MM_TRUE;
}

static MBT_BOOL uif_ChnFavEditProgramReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    DBST_PROG *pstProgInfo =  uiv_PrgList.pstPrgHead;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pstProgInfo||uiv_pstPrgEditList[iIndex].uProgramIndex >= uiv_PrgList.iPrgNum)
    {
        memset(pItem,0,2*MAXBYTESPERCOLUMN);
        return MM_FALSE;
    }

    pstProgInfo += uiv_pstPrgEditList[iIndex].uProgramIndex;
    if(1 == DBSF_ListGetLCNStatus())
    {
        sprintf(pItem,"%03d", pstProgInfo->usiChannelIndexNo);
    }
    else
    {
        sprintf(pItem,"%03d", iIndex+1);
    }
    pstProgInfo->cServiceName[MAX_SERVICE_NAME_LENGTH] = 0;
    sprintf((MBT_CHAR*)(pItem+MAXBYTESPERCOLUMN), "%s",pstProgInfo->cServiceName);
    //MLUI_DEBUG("--->Program ServiceName = %s",pstProgInfo->cServiceName);
    return MM_TRUE;
}

static MBT_VOID uif_ChnFavEditInitFavTVChannel(LISTITEM *pListItem, MBT_U8 u8FavTypeNum)
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iSelect = 0;
    MBT_U16 u16SelectServiceID = 0;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        iSelect = pstBoxInfo->u32VidTransInfo;
        u16SelectServiceID = pstBoxInfo->u16VideoServiceID;
    }

    for(iIndex = 0;iIndex<iNum; iIndex++)
    {
        if((STTAPI_SERVICE_TELEVISION == pstProgInfo->cProgramType)
            &&(((uiv_pstPrgFavListTmp[iIndex].ucProgram_FavGroup >> u8FavTypeNum)&1) == 1))
        {
            if((pstProgInfo->stPrgTransInfo.u32TransInfo == iSelect)&&(u16SelectServiceID == pstProgInfo->u16ServiceID))
            {
                pListItem->iSelect = pListItem->iNoOfItems;
            }
            uiv_pstPrgFavList[pListItem->iNoOfItems++].uProgramIndex = iIndex;
            //MLUI_ERR("--->Save Index = %d,Service Name = %s",iIndex,pstProgInfo->cServiceName);
        }
        pstProgInfo++;
    }
    u16FavEditFavChannelCount = pListItem->iNoOfItems;
}

static MBT_VOID uif_ChnFavEditInitFavRadioChannel(LISTITEM *pListItem, MBT_U8 u8FavTypeNum)
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iSelect = 0;
    MBT_U16 u16SelectServiceID = 0;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

    if(AUDIO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        iSelect = pstBoxInfo->u32AudTransInfo;
        u16SelectServiceID = pstBoxInfo->u16AudioServiceID;
    }

    for(iIndex = 0;iIndex<iNum; iIndex++)
    {
        if((STTAPI_SERVICE_RADIO == pstProgInfo->cProgramType)
           &&(((uiv_pstPrgFavListTmp[iIndex].ucProgram_FavGroup >> u8FavTypeNum)&1) == 1))
        {
            if((pstProgInfo->stPrgTransInfo.u32TransInfo == iSelect)&&(u16SelectServiceID == pstProgInfo->u16ServiceID))
            {
                pListItem->iSelect = pListItem->iNoOfItems;
            }
            uiv_pstPrgFavList[pListItem->iNoOfItems++].uProgramIndex = iIndex;
        }
        pstProgInfo++;
    }
    u16FavEditFavChannelCount = pListItem->iNoOfItems;
}

static MBT_VOID uif_ChnFavEditInitTVProgram(LISTITEM *pListItem, MBT_U8 u8FavTypeNum)
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iSelect = 0;
    MBT_U16 u16SelectServiceID = 0;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        iSelect = pstBoxInfo->u32VidTransInfo;
        u16SelectServiceID = pstBoxInfo->u16VideoServiceID;
    }

    for(iIndex = 0;iIndex<iNum;iIndex++)
    {
        if((STTAPI_SERVICE_TELEVISION == pstProgInfo->cProgramType)
            &&(((uiv_pstPrgFavListTmp[iIndex].ucProgram_FavGroup >> u8FavTypeNum)&1) != 1))
        {
            if( pstProgInfo->stPrgTransInfo.u32TransInfo== iSelect&&u16SelectServiceID == pstProgInfo->u16ServiceID)
            {   
                pListItem->iSelect = pListItem->iNoOfItems;
            }
            uiv_pstPrgEditList[pListItem->iNoOfItems++].uProgramIndex = iIndex;
            //MLUI_ERR("--->Save Program Index = %d,Service Name = %s",iIndex,pstProgInfo->cServiceName);
        }
        pstProgInfo++;
    }
    u16FavEditProgremCount = pListItem->iNoOfItems;
}

static MBT_VOID uif_ChnFavEditInitRadioProgram(LISTITEM *pListItem, MBT_U8 u8FavTypeNum )
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iSelect = 0;
    MBT_U16 u16SelectServiceID = 0;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         

    if(AUDIO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        iSelect = pstBoxInfo->u32AudTransInfo;
        u16SelectServiceID = pstBoxInfo->u16AudioServiceID;
    }

    for(iIndex = 0;iIndex<iNum;iIndex++)
    {
        if((STTAPI_SERVICE_RADIO == pstProgInfo->cProgramType)
            &&(((uiv_pstPrgFavListTmp[iIndex].ucProgram_FavGroup >> u8FavTypeNum)&1) != 1))
        {
            if( pstProgInfo->stPrgTransInfo.u32TransInfo== iSelect&&u16SelectServiceID == pstProgInfo->u16ServiceID)
            {
                pListItem->iSelect = pListItem->iNoOfItems;
            }   
            uiv_pstPrgEditList[pListItem->iNoOfItems++].uProgramIndex = iIndex;
        }
        pstProgInfo++;
    }
    u16FavEditProgremCount = pListItem->iNoOfItems;
}

static MBT_BOOL uif_ChnFavEditTypeInfoDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(FAVEDIT_TYPE != eSelectList)
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, FAVEDIT_LISTITEM_WIDTH,
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_LeftIfor),
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_MidIfor),
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_RightIfor));
        }
    }
    else
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, FAVEDIT_LISTITEM_WIDTH,
                            BMPF_GetBMP(m_ui_selectbar_leftIfor),
                            BMPF_GetBMP(m_ui_selectbar_midIfor),
                            BMPF_GetBMP(m_ui_selectbar_rightIfor));
        }
        else
        {
            pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
            WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, pstFramBmp, MM_TRUE);
        }
    }
    return MM_TRUE;
}

static MBT_BOOL uif_ChnFavEditFavChannelInfoDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(FAVEDIT_FAVCHANNEL == eSelectList)
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, FAVEDIT_LISTITEM_WIDTH,
                            BMPF_GetBMP(m_ui_selectbar_leftIfor),
                            BMPF_GetBMP(m_ui_selectbar_midIfor),
                            BMPF_GetBMP(m_ui_selectbar_rightIfor));
        }
        else
        {
            pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
            WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, pstFramBmp, MM_TRUE);
        }
    }
    else
    {
        pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, pstFramBmp, MM_TRUE);
    }

    return MM_TRUE;
}

static MBT_BOOL uif_ChnFavEditProgramInfoDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(FAVEDIT_PROGRAM == eSelectList)
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, FAVEDIT_LISTITEM_WIDTH,
                            BMPF_GetBMP(m_ui_selectbar_leftIfor),
                            BMPF_GetBMP(m_ui_selectbar_midIfor),
                            BMPF_GetBMP(m_ui_selectbar_rightIfor));
        }
        else
        {
            pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
            WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, pstFramBmp, MM_TRUE);
        }
    }
    else
    {
        pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, pstFramBmp, MM_TRUE);
    }
     
    return MM_TRUE;
}

static MBT_VOID uif_ChnFavEditTypeListInit( LISTITEM* pstList )
{
    MBT_S32 me_StartX, me_StartY;	
    me_StartX = FAVEDIT_X_START+107;
    me_StartY = FAVEDIT_TVBACKGROUND_Y_END + 69;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = FAVEDIT_FAVTYPE_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = FAVEDIT_LISTITEM_GAP;
    pstList->iWidth  = FAVEDIT_LISTITEM_WIDTH;
    pstList->iHeight = FAVEDIT_LISTITEM_HEIGHT;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->ListDrawBar =  uif_ChnFavEditTypeInfoDraw;
    pstList->iColumns = 1;
	//Fav Type
    pstList->iColPosition[0] = pstList->iColStart + 6;   
    pstList->iColWidth[0] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[0];  
    pstList->ListReadFunction = uif_ChnFavEditTypeReadItem;
    pstList->iNoOfItems = 10; //fav类型总数
    pstList->cHavesScrollBar = 1;
}

static MBT_VOID uif_ChnFavEditFavChannelListInit( LISTITEM* pstList,MBT_U8 u8FavTypeNum )
{
    MBT_S32 me_StartX, me_StartY;	
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();

    me_StartX = FAVEDIT_X_START+462;
    me_StartY = FAVEDIT_FAVCHANNEL_PROGRAM_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = FAVEDIT_LISTITEMS_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = FAVEDIT_LISTITEM_GAP+2;
    pstList->iWidth  = FAVEDIT_LISTITEM_WIDTH;
    pstList->iHeight = FAVEDIT_LISTITEM_HEIGHT;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->ListDrawBar =  uif_ChnFavEditFavChannelInfoDraw;
    pstList->iColumns = 2;
	//Index
    pstList->iColPosition[0] = pstList->iColStart + 6;  
	
    // channel Name
    pstList->iColPosition[1] = pstList->iColPosition[0] + 62;  

    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[1];  
    pstList->ListReadFunction = uif_ChnFavEditFavChannelReadItem;
    pstList->iNoOfItems = 0;
    pstList->cHavesScrollBar = 1;
    if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
    {      
        uif_ChnFavEditInitFavTVChannel(pstList, u8FavTypeNum);
    }
    else if(pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS)
    {
        uif_ChnFavEditInitFavRadioChannel(pstList, u8FavTypeNum);
    }
}

static MBT_VOID uif_ChnFavEditProgramListInit( LISTITEM* pstList, MBT_U8 u8FavTypeNum )
{
    MBT_S32 me_StartX, me_StartY;	
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();

    me_StartX = FAVEDIT_X_START+818;
    me_StartY = FAVEDIT_FAVCHANNEL_PROGRAM_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = FAVEDIT_LISTITEMS_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = FAVEDIT_LISTITEM_GAP+2;
    pstList->iWidth  = FAVEDIT_LISTITEM_WIDTH;
    pstList->iHeight = FAVEDIT_LISTITEM_HEIGHT;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->ListDrawBar =  uif_ChnFavEditProgramInfoDraw;
    pstList->iColumns = 2;
	//Index
    pstList->iColPosition[0] = pstList->iColStart + 6;  
	
    // channel Name
    pstList->iColPosition[1] = pstList->iColPosition[0] + 62;  

    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[1];  
    pstList->ListReadFunction = uif_ChnFavEditProgramReadItem;
    pstList->iNoOfItems = 0;
    pstList->cHavesScrollBar = 1;

    if(0 == iNum)
    {
        pstList->iSelect = 0;    
        return;
    }
    
    if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
    {      
        uif_ChnFavEditInitTVProgram(pstList, u8FavTypeNum);
    }
    else if(pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS)
    {
        uif_ChnFavEditInitRadioProgram(pstList, u8FavTypeNum);
    }
}

static MBT_BOOL uif_ChnFavEditDrawProgramInfo(DBST_PROG *pstService)
{
    BITMAPTRUECOLOR *pstFramBmp;
    TRANS_INFO uTranInfo;
    MBT_CHAR pstInfo[64];
    MMT_TUNER_QamType_E eQamType = MM_TUNER_QAM_MAX;
    float fFreq = 0.0;
    MBT_CHAR* strInfo[2][7]=
    {
		{
            "Scan Qam: QAM16",
            "Scan Qam: QAM32",
            "Scan Qam: QAM64",
            "Scan Qam: QAM128",
            "Scan Qam: QAM256",
            " ",
            "Frequency:"
		},
		{
            "Scan Qam: QAM16",
            "Scan Qam: QAM32",
            "Scan Qam: QAM64",
            "Scan Qam: QAM128",
            "Scan Qam: QAM256",
            " ",
            "Frequency:"
		}
	};
    MBT_S32 y = FAVEDIT_Y_START + 588;
    MBT_S16 s16FontHeight = WGUIF_GetFontHeight();

    if (MM_NULL == pstService)
    {
        return MM_FALSE;
    }

    memcpy(&uTranInfo, &(pstService->stPrgTransInfo), sizeof(TRANS_INFO));

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    WGUIF_DisplayReginTrueColorBmp(0, 0, FAVEDIT_X_START + 133, y-2, 889, WGUIF_GetFontHeight() + 4, pstFramBmp, MM_TRUE);

    //Frequency 
    fFreq = uTranInfo.uBit.uiTPFreq;
    sprintf(pstInfo, "Frequency: %0.2f MHz",fFreq);
    WGUIF_FNTDrawTxt(FAVEDIT_X_START + 142, y, strlen(pstInfo),pstInfo, FONT_FRONT_COLOR_WHITE);

    //Symbol
    sprintf(pstInfo, "Symbol: %d Kbps", uTranInfo.uBit.uiTPSymbolRate);
    WGUIF_FNTDrawTxt(FAVEDIT_X_START + 471, y, strlen(pstInfo),pstInfo, FONT_FRONT_COLOR_WHITE);

    //Scan Qam
    eQamType = uTranInfo.uBit.uiTPQam;
    WGUIF_FNTDrawTxt(FAVEDIT_X_START + 747, y, strlen(strInfo[uiv_u8Language][eQamType]),strInfo[uiv_u8Language][eQamType], FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(s16FontHeight);
    
    return MM_TRUE;
}

static MBT_VOID uif_ChnFavEditDrawHelp(MBT_BOOL isNeedRefresh, MBT_BOOL bDisplayOK)
{
    MBT_S32 font_height;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 x,y;
    MBT_S32 yOffSet;

    MBT_CHAR* strInfo[2][6]=
    {
		{
            "Change",
            "Add",
            "Delete",
            "Exit",
            "Page Up",
            "Page Down"
		},
		{
            "Change",
            "Add",
            "Delete",
            "Exit",
            "Page Up",
            "Page Down"
		}
	};

    if (isNeedRefresh)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
        WGUIF_DisplayReginTrueColorBmp(0, 0, 0, FAVEDIT_HELP_INFO_Y-5, OSD_REGINMAXWIDHT, OSD_REGINMAXHEIGHT-FAVEDIT_HELP_INFO_Y+5, pstFramBmp, MM_FALSE);
    }
    
    //帮助信息
    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	//change
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_LeftRightIfor);
	x = FAVEDIT_X_START + 196;
	y = FAVEDIT_HELP_INFO_Y;
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = FAVEDIT_HELP_INFO_Y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][0]), strInfo[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);
    
	//ok del
	if (bDisplayOK == MM_TRUE)
	{
        pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
        x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][0]),strInfo[uiv_u8Language][0]) + 80;
        y = FAVEDIT_HELP_INFO_Y;
        WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
        y = FAVEDIT_HELP_INFO_Y+yOffSet;
        WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][1]), strInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
	}
    else
    {
        pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
        x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][0]),strInfo[uiv_u8Language][0]) + 80;
        y = FAVEDIT_HELP_INFO_Y-2;
        WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
        y = FAVEDIT_HELP_INFO_Y-2+yOffSet;
        WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][2]), strInfo[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);
    }

	//Exit
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    if (bDisplayOK == MM_TRUE)
	{
	    x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][1]),strInfo[uiv_u8Language][1]) + 80;
	}
    else
    {
	    x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][2]),strInfo[uiv_u8Language][2]) + 80;
    }
    y = FAVEDIT_HELP_INFO_Y;
    WGUIF_DisplayReginTrueColorBmp(x,y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = FAVEDIT_HELP_INFO_Y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][3]), strInfo[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);

    //Page Up
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_GreenIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][3]),strInfo[uiv_u8Language][3]) + 80;
    y = FAVEDIT_HELP_INFO_Y-2;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = FAVEDIT_HELP_INFO_Y-2+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][4]), strInfo[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE); 

    //Page down
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][4]),strInfo[uiv_u8Language][4]) + 80;
    y = FAVEDIT_HELP_INFO_Y-2;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = FAVEDIT_HELP_INFO_Y-2+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][5]), strInfo[uiv_u8Language][5], FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(font_height);
}

static MBT_BOOL uif_ChnFavEditDrawPanel(MBT_VOID)
{
    MBT_S32 s32FontStrlen;
    MBT_S32 font_height;
    MBT_CHAR* strInfo[2][3]=
    {
		{
            "Favorite",
            "Favorite channel",
            "Program",
		},
		{
            "Favorite",
            "Favorite channel",
            "Program",
		}
	};

    WGUIF_ClsFullScreen();
    //bg
    uif_ShareDrawCommonPanel(strInfo[uiv_u8Language][0], NULL, MM_TRUE);

	//视频窗口
    WGUIF_ClsScreen(FAVEDIT_TVBACKGROUND_X, FAVEDIT_TVBACKGROUND_Y, FAVEDIT_TVBACKGROUND_WIDTH, FAVEDIT_TVBACKGROUND_HEIGHT);
    WGUIF_DrawFilledRectangle(FAVEDIT_TVBACKGROUND_X, FAVEDIT_TVBACKGROUND_Y, FAVEDIT_TVBACKGROUND_WIDTH, FAVEDIT_TVBACKGROUND_HEIGHT, FAVEDIT_TV_VIDEO_BACKGROUND_COLOUR); //黑色视频窗口背景
    WGUIF_DrawFilledRectangle(FAVEDIT_VIDEOAREA_X, FAVEDIT_VIDEOAREA_Y, FAVEDIT_VIDEOAREA_WIDTH, FAVEDIT_VIDEOAREA_HEIGHT, 0x00000000); //黑色视频窗口

    //节目条信息
    font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    
    //Favorite
    s32FontStrlen = strlen(strInfo[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(FAVEDIT_X_START + 222, FAVEDIT_TVBACKGROUND_Y_END + 25, s32FontStrlen, strInfo[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    //Favorite channel
    s32FontStrlen = strlen(strInfo[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(FAVEDIT_X_START + 524, FAVEDIT_TVBACKGROUND_Y + 12, s32FontStrlen, strInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
   
    //Program
    s32FontStrlen = strlen(strInfo[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(FAVEDIT_X_START + 916, FAVEDIT_TVBACKGROUND_Y + 12, s32FontStrlen, strInfo[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
    
    uif_ChnFavEditDrawHelp(MM_FALSE, MM_TRUE);
    return MM_TRUE;
}

MBT_S32 uif_ChnFavEditList(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iSize;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_U32 u32WaitTime = 1000;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bPlayPrg = MM_TRUE;
    MBT_BOOL bRedrawChList = MM_TRUE;
    MBT_BOOL bRedrawInit = MM_TRUE;
    DBST_PROG *pstServiceInfo = NULL;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    LISTITEM stListType;
    LISTITEM stListFavChannel;
    LISTITEM stListProgram;
    MBT_U32 u32VideoOutputWinX = FAVEDIT_VIDEOAREA_X;
    MBT_U32 u32VideoOutputWinY = FAVEDIT_VIDEOAREA_Y;
    MBT_U32 u32VideoOutputWinWidth = FAVEDIT_VIDEOAREA_WIDTH;
    MBT_U32 u32VideoOutputWinHeight = FAVEDIT_VIDEOAREA_HEIGHT;
    u8FavTypeNum = 0;

    if(0 != uif_CreateUIPrgArray())
    {       
        if(MM_NULL != uiv_pstPrgEditList)
        {
            MLUI_ERR("Free program List");
            uif_ForceFree(uiv_pstPrgEditList);
        }

        iSize = sizeof(CHANNEL_EDIT)*uiv_PrgList.iPrgNum;
        uiv_pstPrgEditList = uif_ForceMalloc(iSize);
        if(MM_NULL == uiv_pstPrgEditList)
        {
            MLUI_ERR("Malloc 0x%x Fail,Free !!! ",iSize);
            uif_DestroyUIPrgArray();
            return iRetKey;
        }
        memset(uiv_pstPrgEditList, 0xff, iSize);
        
        if(MM_NULL != uiv_pstPrgFavList)
        {
            MLUI_ERR("Free program List");
            uif_ForceFree(uiv_pstPrgFavList);
        }

        iSize = sizeof(CHANNEL_EDIT)*uiv_PrgList.iPrgNum;
        uiv_pstPrgFavList = uif_ForceMalloc(iSize);
        if(MM_NULL == uiv_pstPrgFavList)
        {
            MLUI_ERR("Malloc 0x%x Fail,Free !!! ",iSize);
            uif_DestroyUIPrgArray();
            return iRetKey;
        }
        memset(uiv_pstPrgFavList, 0xff, iSize);    
        
        if(MM_NULL != uiv_pstPrgFavListTmp)
        {
            MLUI_ERR("Free program List");
            uif_ForceFree(uiv_pstPrgFavListTmp);
        }

        iSize = sizeof(FAV_EDIT)*uiv_PrgList.iPrgNum;
        uiv_pstPrgFavListTmp = uif_ForceMalloc(iSize);
        if(MM_NULL == uiv_pstPrgFavListTmp)
        {
            MLUI_ERR("Malloc 0x%x Fail,Free !!! ",iSize);
            uif_DestroyUIPrgArray();
            return iRetKey;
        }
        memset(uiv_pstPrgFavListTmp, 0xff, iSize);     
    }

    pstBoxInfo->ucBit.u32PrgListType = m_ChannelList;

    uif_ChnFavEditCopyStatusToTmp();

    bRefresh |= uif_ResetAlarmMsgFlag();
    while ( !bExit )
    {
        if(MM_TRUE == bRedrawInit)
        {
            uif_ChnFavEditTypeListInit(&stListType);
            uif_ChnFavEditFavChannelListInit(&stListFavChannel, u8FavTypeNum);
            uif_ChnFavEditProgramListInit(&stListProgram,u8FavTypeNum);
            eSelectList = FAVEDIT_TYPE;
           
            uif_ChnFavEditDrawPanel(); //画背景
            MLMF_AV_SetVideoWindow(u32VideoOutputWinX, u32VideoOutputWinY, u32VideoOutputWinWidth, u32VideoOutputWinHeight);
            bRedrawChList = MM_TRUE;
        }
        
        if(MM_TRUE == bRedrawChList)
        {
            bRedrawChList = MM_FALSE;
            stListType.bUpdatePage = MM_TRUE;
            stListFavChannel.bUpdatePage = MM_TRUE;
            stListProgram.bUpdatePage = MM_TRUE;
        }
        bRefresh |= UCTRF_ListOnDraw(&stListType);
        bRefresh |= UCTRF_ListOnDraw(&stListFavChannel);
        bRefresh |= UCTRF_ListOnDraw(&stListProgram);
 
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedrawInit, UICOMMON_TITLE_AREA_Y); 
        bRedrawInit = MM_FALSE;

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        if(bPlayPrg)
        {
            u32WaitTime = 300;
        }
        
        iKey = uif_ReadKey (u32WaitTime);
        
        switch ( iKey )
        {
            case DUMMY_KEY_SELECT://增加喜爱
                if(eSelectList == FAVEDIT_PROGRAM)
                {	
                    uiv_pstPrgFavListTmp[uiv_pstPrgEditList[stListProgram.iSelect].uProgramIndex].ucProgram_FavGroup = uiv_pstPrgFavListTmp[uiv_pstPrgEditList[stListProgram.iSelect].uProgramIndex].ucProgram_FavGroup | (1 << u8FavTypeNum);
                    //MLUI_DEBUG("---> Index in all program list = %d",uiv_pstPrgEditList[stListProgram.iSelect].uProgramIndex);
                    //MLUI_DEBUG("--->FavGroup = 0x%x",uiv_pstPrgFavListTmp[uiv_pstPrgEditList[stListProgram.iSelect].uProgramIndex].ucProgram_FavGroup);

                    if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
                    {
                        uif_ChnFavEditFavChannelListInit(&stListFavChannel, u8FavTypeNum);
                        uif_ChnFavEditProgramListInit(&stListProgram, u8FavTypeNum);
                    }
                    else
                    {
                        uif_ChnFavEditFavChannelListInit(&stListFavChannel, u8FavTypeNum);
                        uif_ChnFavEditProgramListInit(&stListProgram, u8FavTypeNum);
                    }
                    if(stListProgram.iNoOfItems == 0)//节目全部为喜爱
                    {
                        eSelectList = FAVEDIT_FAVCHANNEL;
                    }
                    stListFavChannel.bUpdatePage = MM_TRUE;
                    stListProgram.bUpdatePage = MM_TRUE;
                }
                break;

            case DUMMY_KEY_RED://删除fav
                if(eSelectList == FAVEDIT_FAVCHANNEL)
                {
                    uiv_pstPrgFavListTmp[uiv_pstPrgFavList[stListFavChannel.iSelect].uProgramIndex].ucProgram_FavGroup = uiv_pstPrgFavListTmp[uiv_pstPrgFavList[stListFavChannel.iSelect].uProgramIndex].ucProgram_FavGroup & ~(1 << u8FavTypeNum);
                    //MLUI_DEBUG("--->Fav Index in all program list = %d",uiv_pstPrgFavList[stListFavChannel.iSelect].uProgramIndex);
                    //MLUI_DEBUG("--->FavGroup = 0x%x",uiv_pstPrgFavListTmp[uiv_pstPrgFavList[stListFavChannel.iSelect].uProgramIndex].ucProgram_FavGroup);

                    if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
                    {
                        uif_ChnFavEditFavChannelListInit(&stListFavChannel, u8FavTypeNum);
                        uif_ChnFavEditProgramListInit(&stListProgram, u8FavTypeNum);
                    }
                    else
                    {
                        uif_ChnFavEditFavChannelListInit(&stListFavChannel, u8FavTypeNum);
                        uif_ChnFavEditProgramListInit(&stListProgram, u8FavTypeNum);
                    }
                    if(stListFavChannel.iNoOfItems == 0)//喜爱节目全部删除
                    {
                        eSelectList = FAVEDIT_PROGRAM;
                    }
                    stListFavChannel.bUpdatePage = MM_TRUE;
                    stListProgram.bUpdatePage = MM_TRUE;
                }
                break;
                
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
                uif_ChnFavEditSaveChange();
                bExit = MM_TRUE;
                if(DUMMY_KEY_EXIT == iKey)
                {
                    iRetKey = DUMMY_KEY_EXITALL;
                }
                else
                {
                    iRetKey = DUMMY_KEY_EXIT;
                }
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
                
            case DUMMY_KEY_PRGLISTUPDATED:
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGITEMUPDATED:
                stListProgram.bUpdateItem = MM_TRUE;
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_GREEN:
            case DUMMY_KEY_YELLOW_SUBSCRIBE:
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            {
                if(iKey == DUMMY_KEY_GREEN)
                {
                    iKey = DUMMY_KEY_PGUP;
                }
                else if(iKey == DUMMY_KEY_YELLOW_SUBSCRIBE)
                {
                    iKey = DUMMY_KEY_PGDN;
                }
            
                switch ( eSelectList )
                {
                    case FAVEDIT_TYPE:
                        UCTRF_ListGetKey(&stListType, iKey);
                        u8FavTypeNum = stListType.iSelect;
                        MLUI_DEBUG("--->Fav Type = %d",u8FavTypeNum);
                        uif_ChnFavEditFavChannelListInit(&stListFavChannel, u8FavTypeNum);
                        uif_ChnFavEditProgramListInit(&stListProgram,u8FavTypeNum);
                        stListFavChannel.bUpdatePage = MM_TRUE;
                        stListProgram.bUpdatePage = MM_TRUE;
                        break;
                        
                    case FAVEDIT_FAVCHANNEL:
                        UCTRF_ListGetKey(&stListFavChannel, iKey);
                        bPlayPrg = MM_TRUE;
                        break;
    
                    case FAVEDIT_PROGRAM:
                        UCTRF_ListGetKey(&stListProgram, iKey);
                        bPlayPrg = MM_TRUE;
                        break;
                }
                
            }
            break;

            case DUMMY_KEY_LEFTARROW:
            {
                MLUI_DEBUG("--->Select List = %d",eSelectList);
                switch ( eSelectList )
                {
                    case FAVEDIT_TYPE:
                        if(u16FavEditProgremCount > 0)
                        {
                            bPlayPrg = MM_TRUE;
                            eSelectList = FAVEDIT_PROGRAM;
                            stListType.bUpdateItem = MM_TRUE;
                            stListProgram.bUpdateItem = MM_TRUE;
                        }
                        else if(u16FavEditProgremCount == 0)
                        {
                            bPlayPrg = MM_TRUE;
                            eSelectList = FAVEDIT_FAVCHANNEL;
                            uif_ChnFavEditDrawHelp(MM_TRUE, MM_FALSE);
                            stListType.bUpdateItem = MM_TRUE;
                            stListFavChannel.bUpdateItem = MM_TRUE;
                        }
                        break;
                        
                     case FAVEDIT_FAVCHANNEL:
                        eSelectList = FAVEDIT_TYPE;
                        uif_ChnFavEditDrawHelp(MM_TRUE, MM_TRUE);
                        stListFavChannel.bUpdateItem = MM_TRUE;
                        stListType.bUpdateItem = MM_TRUE;
                        break;

                      case FAVEDIT_PROGRAM:
                        if(u16FavEditFavChannelCount > 0)
                        {
                            bPlayPrg = MM_TRUE;
                            eSelectList = FAVEDIT_FAVCHANNEL;
                            uif_ChnFavEditDrawHelp(MM_TRUE, MM_FALSE);
                            stListProgram.bUpdateItem = MM_TRUE;
                            stListFavChannel.bUpdateItem = MM_TRUE;
                        }
                        else if(u16FavEditFavChannelCount == 0)
                        {
                            eSelectList = FAVEDIT_TYPE;
                            stListProgram.bUpdateItem = MM_TRUE;
                            stListType.bUpdateItem = MM_TRUE;
                        }
                        break;
                }
            }
            break;
                
            case DUMMY_KEY_RIGHTARROW:
            {
                 MLUI_DEBUG("--->Select List = %d",eSelectList);
                 switch ( eSelectList )
                 {
                     case FAVEDIT_TYPE:
                        if(u16FavEditFavChannelCount > 0)
                        {
                            bPlayPrg = MM_TRUE;
                            eSelectList = FAVEDIT_FAVCHANNEL;
                            uif_ChnFavEditDrawHelp(MM_TRUE, MM_FALSE);
                            stListType.bUpdateItem = MM_TRUE;
                            stListFavChannel.bUpdateItem = MM_TRUE;
                        }
                        else if(u16FavEditFavChannelCount == 0)
                        {
                            bPlayPrg = MM_TRUE;
                            eSelectList = FAVEDIT_PROGRAM;
                            stListType.bUpdateItem = MM_TRUE;
                            stListProgram.bUpdateItem = MM_TRUE;
                        }
                        break;
                         
                      case FAVEDIT_FAVCHANNEL:
                        if(u16FavEditProgremCount > 0)
                        {
                            bPlayPrg = MM_TRUE;
                            eSelectList = FAVEDIT_PROGRAM;
                            uif_ChnFavEditDrawHelp(MM_TRUE, MM_TRUE);
                            stListFavChannel.bUpdateItem = MM_TRUE;
                            stListProgram.bUpdateItem = MM_TRUE;
                        }
                        else if(u16FavEditProgremCount == 0)
                        {
                            eSelectList = FAVEDIT_TYPE;
                            uif_ChnFavEditDrawHelp(MM_TRUE, MM_TRUE);
                            stListFavChannel.bUpdateItem = MM_TRUE;
                            stListType.bUpdateItem = MM_TRUE;
                        }
                        break;
      
                       case FAVEDIT_PROGRAM:
                         eSelectList = FAVEDIT_TYPE;
                         stListProgram.bUpdateItem = MM_TRUE;
                         stListType.bUpdateItem = MM_TRUE;
                         break;
                   }
               }
               break;
      
            case -1:
                u32WaitTime = 500;
                bRefresh |= uif_AlarmMsgBoxes(FAVEDIT_VIDEOAREA_X+(FAVEDIT_VIDEOAREA_WIDTH-FAVEDIT_MSGBAR_WIDTH)/2, FAVEDIT_VIDEOAREA_Y+(FAVEDIT_VIDEOAREA_HEIGHT-FAVEDIT_MSGBAR_HEIGHT)/2, FAVEDIT_MSGBAR_WIDTH, FAVEDIT_MSGBAR_HEIGHT);
                if(UCTRF_SliderOnDraw())
                {
                    bRefresh = MM_TRUE;
                    u32WaitTime = 30;
                }
                
                if ( bPlayPrg )
                {
                    MLUI_DEBUG("---> Play,eSelectList = %d",eSelectList);
                    bPlayPrg = MM_FALSE;
                    if(eSelectList == FAVEDIT_PROGRAM)
                    {
                        pstServiceInfo = m_GetUIPrg(stListProgram.iSelect);
                    }
                    else if(eSelectList == FAVEDIT_FAVCHANNEL)
                    {
                        pstServiceInfo = m_GetUIFavPrg(stListFavChannel.iSelect);
                    }
                    else 
                    {
                        if(stListProgram.iNoOfItems != 0)
                        {
                            pstServiceInfo = m_GetUIPrg(stListProgram.iSelect);
                        }
                        else
                        {
                            pstServiceInfo = m_GetUIFavPrg(stListFavChannel.iSelect);
                        }
                    }
                    bRefresh |= uif_ChnListPlayPrg(pstServiceInfo);
                    bRefresh |= uif_ChnFavEditDrawProgramInfo(pstServiceInfo);
                }
                break;

            default: 
                if(uif_ShowMsgList(FAVEDIT_VIDEOAREA_X+(FAVEDIT_VIDEOAREA_WIDTH-FAVEDIT_MSGBAR_WIDTH)/2, FAVEDIT_VIDEOAREA_Y+(FAVEDIT_VIDEOAREA_HEIGHT-FAVEDIT_MSGBAR_HEIGHT)/2, FAVEDIT_MSGBAR_WIDTH, FAVEDIT_MSGBAR_HEIGHT))
                {
                    bRefresh = MM_TRUE;
                }
                                
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }
    WGUIF_ClsFullScreen();
    if(MM_NULL != uiv_pstPrgFavListTmp)
    {
        uif_ForceFree(uiv_pstPrgFavListTmp);
        uiv_pstPrgFavListTmp = MM_NULL;
    }

    if(MM_NULL != uiv_pstPrgEditList)
    {
        uif_ForceFree(uiv_pstPrgEditList);
        uiv_pstPrgEditList = MM_NULL;
    }

    if(MM_NULL != uiv_pstPrgFavList)
    {
        uif_ForceFree(uiv_pstPrgFavList);
        uiv_pstPrgFavList = MM_NULL;
    }
    uif_DestroyUIPrgArray();
    return iRetKey;
}

