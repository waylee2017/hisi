#include "ui_share.h"


#define FAVLIST_X_START       0
#define FAVLIST_Y_START       0
#define FAVLIST_TVBACKGROUND_X    FAVLIST_X_START+800
#define FAVLIST_TVBACKGROUND_Y    FAVLIST_Y_START+150 
#define FAVLIST_TVBACKGROUND_WIDTH       356
#define FAVLIST_TVBACKGROUND_HEIGHT      213
#define FAVLIST_TV_VIDEO_BACKGROUND_COLOUR       0xfffff111

#define FAVLIST_LISTITEM_WIDTH     320
#define FAVLIST_LISTITEM_HEIGHT    35
#define FAVLIST_LISTITEM_GAP       10
#define FAVLIST_LISTITEMS_PERPAGE  10

#define FAVLIST_MSGBAR_WIDTH       280
#define FAVLIST_MSGBAR_HEIGHT      140
#define FAVLIST_VIDEOAREA_WIDTH  (FAVLIST_TVBACKGROUND_WIDTH-2)
#define FAVLIST_VIDEOAREA_HEIGHT (FAVLIST_TVBACKGROUND_HEIGHT-2)
#define FAVLIST_VIDEOAREA_X      (FAVLIST_TVBACKGROUND_X+1)
#define FAVLIST_VIDEOAREA_Y      (FAVLIST_TVBACKGROUND_Y+1)

#define FAVLIST_HELP_GAP      48

static MBT_BOOL bSelectChnFavList = MM_TRUE;
static MBT_S32 u8FavTypeNum = 0;
static MBT_U16 u16FavListFavChannelCount = 0;
static CHANNEL_EDIT *uiv_pstPrgFav = MM_NULL;

#define m_GetUIFavList(x)  (MM_NULL == uiv_PrgList.pstPrgHead ? MM_NULL: uiv_PrgList.pstPrgHead + uiv_pstPrgFav[x].uProgramIndex )



static MBT_BOOL uif_ChannelFavListReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    DBST_PROG *pstProgInfo =  uiv_PrgList.pstPrgHead;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pstProgInfo||uiv_pstPrgFav[iIndex].uProgramIndex >= uiv_PrgList.iPrgNum)
    {
        memset(pItem,0,2*MAXBYTESPERCOLUMN);
        return MM_FALSE;
    }

    pstProgInfo += uiv_pstPrgFav[iIndex].uProgramIndex;
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
    MLUI_DEBUG("---> Fav Program name = %s",pstProgInfo->cServiceName);
    return MM_TRUE;
}

static MBT_BOOL uif_ChannelFavTypeReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
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

static MBT_VOID uif_ChannelFavInitFavTV(LISTITEM *pListItem, MBT_U8 u8FavTypeNum)
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    MLUI_DEBUG("--->iNum = %d",iNum);
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iSelect = 0;
    MBT_U16 u16SelectServiceID = 0;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo(); 

    if (MM_NULL == pstProgInfo)
    {
        return;
    }

    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        iSelect = pstBoxInfo->u32VidTransInfo;
        u16SelectServiceID = pstBoxInfo->u16VideoServiceID;
    }

    for(iIndex = 0; iIndex < iNum; iIndex++)
    {
        //MLUI_DEBUG("--->Index = %d,FavGroup = 0x%x",iIndex,pstProgInfo->u16FavGroup);
        if((STTAPI_SERVICE_TELEVISION == pstProgInfo->cProgramType)
            &&(((pstProgInfo->u16FavGroup >> u8FavTypeNum)&1) == 1))
        {
            if((pstProgInfo->stPrgTransInfo.u32TransInfo == iSelect)&&(u16SelectServiceID == pstProgInfo->u16ServiceID))
            {
                pListItem->iSelect = pListItem->iNoOfItems;
            }
            uiv_pstPrgFav[pListItem->iNoOfItems++].uProgramIndex = iIndex;
            MLUI_ERR("--->Save Index = %d,Service Name = %s",iIndex,pstProgInfo->cServiceName);
        }
        pstProgInfo++;
    }
    u16FavListFavChannelCount = pListItem->iNoOfItems;
    MLUI_DEBUG("--->Fav TV Count = %d",u16FavListFavChannelCount);
}

static MBT_VOID uif_ChannelFavInitFavRadio(LISTITEM *pListItem, MBT_U8 u8FavTypeNum)
{
    MBT_S32 iIndex;
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DBST_PROG *pstProgInfo = uiv_PrgList.pstPrgHead;
    MBT_S32 iSelect = 0;
    MBT_U16 u16SelectServiceID = 0;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();  

    if (MM_NULL == pstProgInfo)
    {
        return;
    }

    if(AUDIO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        iSelect = pstBoxInfo->u32AudTransInfo;
        u16SelectServiceID = pstBoxInfo->u16AudioServiceID;
    }

    for(iIndex = 0; iIndex < iNum; iIndex++)
    {
        if((STTAPI_SERVICE_RADIO == pstProgInfo->cProgramType)
           &&(((pstProgInfo->u16FavGroup >> u8FavTypeNum)&1) == 1))
        {
            if((pstProgInfo->stPrgTransInfo.u32TransInfo == iSelect)&&(u16SelectServiceID == pstProgInfo->u16ServiceID))
            {
                pListItem->iSelect = pListItem->iNoOfItems;
            }
            uiv_pstPrgFav[pListItem->iNoOfItems++].uProgramIndex = iIndex;
        }
        pstProgInfo++;
    }
    u16FavListFavChannelCount = pListItem->iNoOfItems;
    MLUI_DEBUG("--->Fav Radio Count = %d",u16FavListFavChannelCount);
}

static MBT_BOOL uif_ChannelFavListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(MM_TRUE == bSelectChnFavList)
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, FAVLIST_LISTITEM_WIDTH,
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

static MBT_BOOL uif_ChannelFavTypeDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(MM_TRUE == bSelectChnFavList)
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, FAVLIST_LISTITEM_WIDTH,
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_LeftIfor),
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_MidIfor),
                            BMPF_GetBMP(m_ui_Genres_Focus_Tmp_RightIfor));
        }
    }
    else
    {
        if(MM_TRUE == bSelect)
        {
            uif_ShareDrawCombinHBar(x, y, FAVLIST_LISTITEM_WIDTH,
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

static MBT_VOID uif_ChannelFavListInit( LISTITEM* pstList,MBT_U8 u8FavTypeNum)
{
    MBT_S32 me_StartX, me_StartY;	
    MBT_S32 iNum = uiv_PrgList.iPrgNum;
    DVB_BOX*pstBoxInfo = DBSF_DataGetBoxInfo();         
    MLUI_DEBUG("--->iNum = %d",iNum);
    me_StartX = FAVLIST_X_START+427;
    me_StartY = FAVLIST_TVBACKGROUND_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = FAVLIST_LISTITEMS_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = FAVLIST_LISTITEM_GAP;
    pstList->iWidth  = FAVLIST_LISTITEM_WIDTH;
    pstList->iHeight = FAVLIST_LISTITEM_HEIGHT;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->ListDrawBar =  uif_ChannelFavListDraw;
    pstList->iColumns = 2;
	//Index
    pstList->iColPosition[0] = pstList->iColStart + 6;  
	
    // channel Name
    pstList->iColPosition[1] = pstList->iColPosition[0] + 62;  

    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[1];  
    pstList->ListReadFunction = uif_ChannelFavListReadItem;
    pstList->iNoOfItems = 0;
    pstList->cHavesScrollBar = 1;

    if(0 == iNum)
    {
        pstList->iSelect = 0;    
        return;
    }

    if(pstBoxInfo->ucBit.bVideoAudioState == VIDEO_STATUS)
    {      
        uif_ChannelFavInitFavTV(pstList, u8FavTypeNum);
    }
    else if(pstBoxInfo->ucBit.bVideoAudioState == AUDIO_STATUS)
    {
        uif_ChannelFavInitFavRadio(pstList, u8FavTypeNum);
    }
}

static MBT_VOID uif_ChannelFavTypeInit(LISTITEM* pstList)
{
    MBT_S32 me_StartX, me_StartY;	
    me_StartX = FAVLIST_X_START+80;
    me_StartY = FAVLIST_TVBACKGROUND_Y;
    
    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = FAVLIST_LISTITEMS_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = FAVLIST_LISTITEM_GAP;
    pstList->iWidth  = FAVLIST_LISTITEM_WIDTH;
    pstList->iHeight = FAVLIST_LISTITEM_HEIGHT;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->ListDrawBar = uif_ChannelFavTypeDraw;
    pstList->iColumns = 1;
	//Channel Type Name
    pstList->iColPosition[0] = pstList->iColStart + 6;  
    pstList->iColWidth[0] = pstList->iColStart + pstList->iWidth;  
    pstList->ListReadFunction = uif_ChannelFavTypeReadItem;
    pstList->iNoOfItems = 10;
    pstList->cHavesScrollBar = 1;
}

static MBT_U16 uif_ChannelFavGetCurProgramIndex(MBT_VOID)
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
    else
    {
        iSelect = pstBoxInfo->u32AudTransInfo;
        u16SelectServiceID = pstBoxInfo->u16AudioServiceID;
    }

    for(iIndex = 0;iIndex<iNum; iIndex++)
    {
        if((pstProgInfo->stPrgTransInfo.u32TransInfo == iSelect)&&(u16SelectServiceID == pstProgInfo->u16ServiceID))
        {
            MLUI_DEBUG("--->Cur program index = %d",iIndex);
            return iIndex;
        }
        pstProgInfo++;
    }
    MLUI_ERR("--->Error,can't find current program's position");
    return 0;
}

static MBT_BOOL uif_ChannelFavDrawProgramName(DBST_PROG *pstServiceInfo)
{
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S16 s16FontHeight = 0;
    MBT_S32 x = 0;
    MBT_S32 y = 0;
    MBT_U8 u8FontHeight = 0;

    if (MM_NULL == pstServiceInfo)
    {
        return MM_FALSE;
    }

    x = FAVLIST_TVBACKGROUND_X;
    y = FAVLIST_TVBACKGROUND_Y+FAVLIST_TVBACKGROUND_HEIGHT+20;
    u8FontHeight = WGUIF_GetFontHeight();
    
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
    s16FontHeight = WGUIF_GetFontHeight();
    WGUIF_DisplayReginTrueColorBmp(0, 0, x, y-2, FAVLIST_TVBACKGROUND_WIDTH, s16FontHeight + 6, pstFramBmp, MM_TRUE);
    WGUIF_FNTDrawTxt(x, y, strlen(pstServiceInfo->cServiceName), pstServiceInfo->cServiceName, FONT_FRONT_COLOR_WHITE);   
    WGUIF_SetFontHeight(u8FontHeight);

    return MM_TRUE;
}

static MBT_BOOL uif_ChannelFavDrawPanel(MBT_VOID)
{
    BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 x,y;
    MBT_S32 yOffSet;
    MBT_CHAR* strInfo[2][8]=
    {
		{
            "Genres",
            "Change",
            "Select",
            "Back",
            "EXIT",
            "Reminder",
            "Page Up",
            "Page Down"      
		},
		{
            "Genres",
            "Change",
            "Select",
			"Back",
            "EXIT",
            "Reminder",
            "Page Up",
            "Page Down"
		}
	};

    WGUIF_ClsFullScreen();
    //bg
    uif_ShareDrawCommonPanel(strInfo[uiv_u8Language][0], NULL, MM_TRUE);

	//视频窗口
    WGUIF_ClsScreen(FAVLIST_TVBACKGROUND_X, FAVLIST_TVBACKGROUND_Y, FAVLIST_TVBACKGROUND_WIDTH, FAVLIST_TVBACKGROUND_HEIGHT);
    WGUIF_DrawFilledRectangle(FAVLIST_TVBACKGROUND_X, FAVLIST_TVBACKGROUND_Y, FAVLIST_TVBACKGROUND_WIDTH, FAVLIST_TVBACKGROUND_HEIGHT, FAVLIST_TV_VIDEO_BACKGROUND_COLOUR); //黑色视频窗口背景
    WGUIF_DrawFilledRectangle(FAVLIST_VIDEOAREA_X,FAVLIST_VIDEOAREA_Y,FAVLIST_VIDEOAREA_WIDTH,FAVLIST_VIDEOAREA_HEIGHT, 0x00000000); //黑色视频窗口

    //帮助信息
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    
	//change
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_LeftRightIfor);
	x = FAVLIST_X_START + 100;
	y = FAVLIST_Y_START + 656;
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][1]), strInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
    
	//select
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][1]),strInfo[uiv_u8Language][1]) + FAVLIST_HELP_GAP;
    y = FAVLIST_Y_START + 656;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][2]), strInfo[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

	//Back
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_MENUIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][2]),strInfo[uiv_u8Language][2]) + FAVLIST_HELP_GAP;
    y = FAVLIST_Y_START + 656;
    WGUIF_DisplayReginTrueColorBmp(x,y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][3]), strInfo[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);

	//Exit
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][3]),strInfo[uiv_u8Language][3]) + FAVLIST_HELP_GAP;
    y = FAVLIST_Y_START + 656;
    WGUIF_DisplayReginTrueColorBmp(x,y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][4]), strInfo[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE);

    //Reminder
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_BlueIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][4]),strInfo[uiv_u8Language][4]) + 13 + FAVLIST_HELP_GAP;
    y = FAVLIST_Y_START + 654;
    WGUIF_DisplayReginTrueColorBmp(x,y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y-2+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][5]), strInfo[uiv_u8Language][5], FONT_FRONT_COLOR_WHITE);

    //Page Up
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_GreenIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][5]),strInfo[uiv_u8Language][5]) + FAVLIST_HELP_GAP;
    y = FAVLIST_Y_START + 654;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y-2+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][6]), strInfo[uiv_u8Language][6], FONT_FRONT_COLOR_WHITE); 

    //Page down
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
	x = x + pstFramBmp->bWidth + WGUIF_FNTGetTxtWidth(strlen(strInfo[uiv_u8Language][6]),strInfo[uiv_u8Language][6]) + FAVLIST_HELP_GAP;
    y = FAVLIST_Y_START + 654;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2 + 1;
    y = y-2+yOffSet;
    WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y, strlen(strInfo[uiv_u8Language][7]), strInfo[uiv_u8Language][7], FONT_FRONT_COLOR_WHITE);

    return MM_TRUE;
}

MBT_S32 uif_ChannelFavList(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iSize;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_U32 u32WaitTime = 2000;
    MBT_U32 u32PlayTime = 0xffffffff;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedrawChList = MM_TRUE;
    MBT_BOOL bRedrawInit = MM_TRUE;
    DBST_PROG *pstServiceInfo = NULL;
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo(); 
    LISTITEM stListChannelFavItems;
    LISTITEM stListChannelFavType;
    MBT_U32 u32VideoOutputWinX = FAVLIST_VIDEOAREA_X;
    MBT_U32 u32VideoOutputWinY = FAVLIST_VIDEOAREA_Y;
    MBT_U32 u32VideoOutputWinWidth = FAVLIST_VIDEOAREA_WIDTH;
    MBT_U32 u32VideoOutputWinHeight = FAVLIST_VIDEOAREA_HEIGHT;
    MBT_U16 u16CurProgramPosition = 0;
    MBT_U32 u32PrglistType = 0;
    
    bSelectChnFavList = MM_FALSE;
    u8FavTypeNum = 0;

    if(0 != uif_CreateUIPrgArray())
    {       
        if(MM_NULL != uiv_pstPrgFav)
        {
            MLUI_ERR("Free program List");
            uif_ForceFree(uiv_pstPrgFav);
        }

        iSize = sizeof(CHANNEL_EDIT)*uiv_PrgList.iPrgNum;
        uiv_pstPrgFav = uif_ForceMalloc(iSize);
        if(MM_NULL == uiv_pstPrgFav)
        {
            MLUI_ERR("Malloc 0x%x Fail,Free !!! ",iSize);
            uif_DestroyUIPrgArray();
            return iRetKey;
        }
        memset(uiv_pstPrgFav, 0xff, iSize);     
    }   

    bRefresh |= uif_ResetAlarmMsgFlag();
    
    while ( !bExit )
    {
        if(MM_TRUE == bRedrawInit)
        {
            uif_ChannelFavDrawPanel(); //画背景
            u16CurProgramPosition = uif_ChannelFavGetCurProgramIndex();//第一次进入播放显示节目名称
            pstServiceInfo = uiv_PrgList.pstPrgHead + u16CurProgramPosition;
            uif_ChnListPlayPrg(pstServiceInfo);
            uif_ChannelFavDrawProgramName(pstServiceInfo);
            uif_ChannelFavTypeInit(&stListChannelFavType);
            uif_ChannelFavListInit(&stListChannelFavItems,u8FavTypeNum);
            MLMF_AV_SetVideoWindow(u32VideoOutputWinX, u32VideoOutputWinY, u32VideoOutputWinWidth, u32VideoOutputWinHeight);
            bRedrawChList = MM_TRUE;
        }
        
        if(MM_TRUE == bRedrawChList)
        {
            bRedrawChList = MM_FALSE;
            stListChannelFavType.bUpdatePage = MM_TRUE;
            stListChannelFavItems.bUpdatePage = MM_TRUE;
        }
        bRefresh |= UCTRF_ListOnDraw(&stListChannelFavItems);
        bRefresh |= UCTRF_ListOnDraw(&stListChannelFavType);
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedrawInit, UICOMMON_TITLE_AREA_Y); 
        bRedrawInit = MM_FALSE;

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey (u32WaitTime);
        
        switch ( iKey )
        {
            case DUMMY_KEY_SELECT:
                if(MM_TRUE == bSelectChnFavList)
                {
                    uif_SavePrgToBoxInfo(m_GetUIFavList(stListChannelFavItems.iSelect));
                    u32PrglistType = m_ChannelList |(1 << u8FavTypeNum);
                    DBSF_ListSetPrgListType(u32PrglistType);
                    MLUI_DEBUG("--->u32PrglistType = 0x%x",u32PrglistType);
                    pstBoxInfo->ucBit.u32PrgListType = u32PrglistType;
                    DBSF_DataSetBoxInfo(pstBoxInfo);
                    bExit = MM_TRUE;
                    iRetKey = DUMMY_KEY_EXITALL;
                }
                break;
                
            case DUMMY_KEY_EXIT:
                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_EXITALL;
                break;
                
            case DUMMY_KEY_MENU:
                bExit = MM_TRUE;
                iRetKey = DUMMY_KEY_EXIT;
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGLISTUPDATED:
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGITEMUPDATED:
                stListChannelFavItems.bUpdateItem = MM_TRUE;
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
                
                if(MM_TRUE == bSelectChnFavList)
                {
                    UCTRF_ListGetKey(&stListChannelFavItems, iKey);
                    u32WaitTime = 300;                    
                    u32PlayTime = MLMF_SYS_GetMS() + 300;
                }
                else 
                {
                    UCTRF_ListGetKey(&stListChannelFavType, iKey);
                    u8FavTypeNum = stListChannelFavType.iSelect;
                    MLUI_DEBUG("--->Fav Type = %d",u8FavTypeNum);
                    uif_ChannelFavListInit(&stListChannelFavItems, u8FavTypeNum);
                    stListChannelFavItems.bUpdatePage = MM_TRUE;
                }
            }
            break;

            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                if(MM_TRUE == bSelectChnFavList)
                {
                    bSelectChnFavList = MM_FALSE;
                }
                else
                { 
                    if(u16FavListFavChannelCount > 0)
                    {
                        bSelectChnFavList = MM_TRUE;
                        u32WaitTime = 300;                    
                        u32PlayTime = MLMF_SYS_GetMS() + 300;
                    }
                    else
                    {
                        break;
                    }
                }
                stListChannelFavItems.bUpdateItem = MM_TRUE;
                stListChannelFavType.bUpdateItem = MM_TRUE;
                break;

            case DUMMY_KEY_BLUE_EDIT:
                WDCtrF_PutWindow(uif_Subscribe, 0);
				iRetKey = DUMMY_KEY_ADDWINDOW;
				bExit = MM_TRUE;
                break;
      
            case -1:
                u32WaitTime = 500;
                bRefresh |= uif_AlarmMsgBoxes(FAVLIST_VIDEOAREA_X+(FAVLIST_VIDEOAREA_WIDTH-FAVLIST_MSGBAR_WIDTH)/2, FAVLIST_VIDEOAREA_Y+(FAVLIST_VIDEOAREA_HEIGHT-FAVLIST_MSGBAR_HEIGHT)/2, FAVLIST_MSGBAR_WIDTH, FAVLIST_MSGBAR_HEIGHT);
                if(UCTRF_SliderOnDraw())
                {
                    bRefresh = MM_TRUE;
                    u32WaitTime = 30;
                }
                
                if (MLMF_SYS_GetMS() >= u32PlayTime)
                {
                    u32PlayTime = 0xffffffff;
                    pstServiceInfo = m_GetUIFavList(stListChannelFavItems.iSelect);
                    bRefresh |= uif_ChnListPlayPrg(pstServiceInfo);
                    bRefresh |= uif_ChannelFavDrawProgramName(pstServiceInfo);
                }
                break;

            default: 
                if(uif_ShowMsgList(FAVLIST_VIDEOAREA_X+(FAVLIST_VIDEOAREA_WIDTH-FAVLIST_MSGBAR_WIDTH)/2, FAVLIST_VIDEOAREA_Y+(FAVLIST_VIDEOAREA_HEIGHT-FAVLIST_MSGBAR_HEIGHT)/2, FAVLIST_MSGBAR_WIDTH, FAVLIST_MSGBAR_HEIGHT))
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
    if(MM_NULL != uiv_pstPrgFav)
    {
        uif_ForceFree(uiv_pstPrgFav);
        uiv_pstPrgFav = MM_NULL;
    }
    uif_DestroyUIPrgArray();
    return iRetKey;
}

