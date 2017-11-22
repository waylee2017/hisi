#include "ui_share.h"

#define PVR_HELP_X 0
#define PVR_HELP_Y 670

#define PVR_PAGE_TXT_X (125)
#define PVR_PAGE_TXT_Y (140)

#define PVR_LIST_ITEM_1ST_X (PVR_PAGE_TXT_X)
#define PVR_LIST_ITEM_1ST_Y (PVR_PAGE_TXT_Y+40)
#define PVR_LIST_ITEM_FOCUS_COLOR 0xFFFC9B07
#define PVR_LIST_ITEM_UNFOCUS_COLOR 0xFF0073F9
#define PVR_LIST_ITEM_WIDTH 550
#define PVR_LIST_ITEM_GAP 20
#define PVR_PAGE_ITEM_MAX 8

#define PVR_BAR_X (PVR_LIST_ITEM_1ST_X+PVR_LIST_ITEM_WIDTH+30)
#define PVR_BAR_Y (PVR_PAGE_TXT_Y)
#define PVR_BAR_W (4)
#define PVR_BAR_H (460)

#define PVR_WINDOW_X 730
#define PVR_WINDOW_Y (PVR_PAGE_TXT_Y) 
#define PVR_WINDOW_WIDTH 445
#define PVR_WINDOW_HEIGHT 250

#define PVR_WINDOW_COLOR 0xffffffff

#define PVR_FILEINFO_X PVR_WINDOW_X
#define PVR_FILEINFO_Y (PVR_WINDOW_Y+PVR_WINDOW_HEIGHT+20)
#define PVR_FILEINFO_WIDTH PVR_WINDOW_WIDTH
#define PVR_FILEINFO_HEIGHT 180

#define PVR_SPEED_FULLSCREEN_X 620
#define PVR_SPEED_FULLSCREEN_Y 40
#define PVR_SPEED_FULLSCREEN_WIDTH 60
#define PVR_SPEED_FULLSCREEN_HEIGHT 30

#define PVR_SPEED_WINDOW_X (PVR_WINDOW_X+PVR_WINDOW_WIDTH-81)
#define PVR_SPEED_WINDOW_Y (PVR_WINDOW_Y+4)
#define PVR_SPEED_WINDOW_WIDTH 80
#define PVR_SPEED_WINDOW_HEIGHT 30

#define PVR_TIME_WINDOW_X (PVR_WINDOW_X+PVR_WINDOW_WIDTH-91)
#define PVR_TIME_WINDOW_Y (PVR_WINDOW_Y+PVR_WINDOW_HEIGHT-30)
#define PVR_TIME_WINDOW_WIDTH 90
#define PVR_TIME_WINDOW_HEIGHT 24

#define PVR_TIME_FULLSCREEN_X 40
#define PVR_TIME_FULLSCREEN_Y 44
#define PVR_TIME_FULLSCREEN_WIDTH 80
#define PVR_TIME_FULLSCREEN_HEIGHT 24

#define max_fileNameLen 256
#define m_MaxFileTreeNode 100

#define PVR_DIR_NAME "/HBPVR"
#define PVR_SUFFIX ".mts"

#define PVRCONFIG_LIST_ITEM_1ST_X (148)
#define PVRCONFIG_LIST_ITEM_1ST_Y (155)
#define PVRCONFIG_LIST_ITEM_WIDTH 760
#define PVRCONFIG_LIST_ITEM_GAP 58
#define PVRCONFIG_PAGE_ITEM_MAX 8

#define RECORDDEVICE_LIST_ITEM_1ST_X (148)
#define RECORDDEVICE_LIST_ITEM_1ST_Y (155)
#define RECORDDEVICE_LIST_ITEM_WIDTH 760
#define RECORDDEVICE_LIST_ITEM_HEIGHT 36
#define RECORDDEVICE_LIST_ITEM_GAP 58
#define RECORDDEVICE_PAGE_ITEM_MAX 2

#define FORMAT_LIST_ITEM_1ST_X (148)
#define FORMAT_LIST_ITEM_1ST_Y (155)
#define FORMAT_LIST_ITEM_WIDTH 760
#define FORMAT_LIST_ITEM_HEIGHT 36
#define FORMAT_LIST_ITEM_GAP 58
#define FORMAT_PAGE_ITEM_MAX 1

#define TIMESHIFT_PANEL_X 0
#define TIMESHIFT_PANEL_Y (OSD_REGINMAXHEIGHT-125)
#define TIMESHIFT_PANEL_WIDTH OSD_REGINMAXWIDHT
#define TIMESHIFT_PANEL_HEIGHT 125

#define TIMESHIFT_PLAYBMPSPEED_X 100
#define TIMESHIFT_PLAYBMPSPEED_Y (TIMESHIFT_PANEL_Y + 55)

#define TIMESHIFT_PROGRESS_WIDTH 814

typedef enum _PVR_UNIT_TYPE_
{
	PVR_UNIT_FILE=0,
	PVR_UNIT_DIRECTORY=1
}pvr_unit_type;

typedef struct _st_pvr_file_node_
{
    MBT_CHAR u8PathName[max_fileNameLen];
    pvr_unit_type eType;
}ST_PvrNode;

typedef struct _st_pvr_file_tree_
{
    MBT_CHAR *pu8ParentPath;
    MBT_CHAR *pu8SelfPath;
    MBT_U32 u32FileNodeNum;
    ST_PvrNode *pstFileNode;
    MBT_CHAR u8CurPath[max_fileNameLen];
}ST_PvrTree;

static ST_PvrTree uiv_stPvrTree = {MM_NULL,MM_NULL,0,MM_NULL,{0}};
static MBT_BOOL bPvrPlayFullscreen = MM_FALSE;

static LISTITEM stRecordDeviceList;
static MBT_U8 u8TimeshiftSize = 0;
static MBT_U8 u8TimeshiftSize_bak = 0;
static MBT_U32 u8DiskNum = 0;
static MBT_U8 u8DiskSelect = 0;
static MST_USB_DeviceVInfo_T *pDeviceVInfo = MM_NULL;
static MST_USB_VfsInfo_T *pVfsInfo = NULL;

static MBT_U8 PvrConfig_DrawPanel(LISTITEM* pstList)
{
    MBT_CHAR *ptrTitle;
    MBT_S32 font_height, s32Xoffset, s32Yoffset;
    MBT_S32 x, y;
    MBT_S32 s32FontStrlen;
    MBT_CHAR* infostr[2][3] =
    {
        {
            "PVR Configure",
            "Confirm",
            "Exit",
        },
        {
            "PVR Configure",
            "Confirm",
            "Exit",
        }
    };
    BITMAPTRUECOLOR *pstFramBmp;

    ptrTitle = infostr[uiv_u8Language][0];
    uif_ShareDrawCommonPanel(ptrTitle,MM_NULL, MM_TRUE);

    //ok
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2])))/2;

	x = PVR_HELP_X + s32Xoffset;
    y = PVR_HELP_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    //exit
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][1]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);

    return 0;
}

static MBT_BOOL PvrConfigListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(MM_TRUE == bSelect)
    {
		uif_ShareDrawCombinHBar( x, y, iWidth, BMPF_GetBMP(m_ui_selectbar_leftIfor), BMPF_GetBMP(m_ui_selectbar_midIfor), BMPF_GetBMP(m_ui_selectbar_rightIfor));
    }
    else
    {
		WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

static MBT_BOOL PvrConfig_ListRead(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    MBT_CHAR* infostr[2][2] =
    {
        {
            "Record Device",
            "Format",
        },
        {
            "Record Device",
            "Format",
        }
    };
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    iLen = sprintf(pItem,"%s",infostr[uiv_u8Language][iIndex]);		
    pItem[iLen] = 0;
    
    return MM_TRUE;
}

static MBT_VOID PvrConfig_InitList( LISTITEM* pstList )
{
    MBT_S32 me_StartX, me_StartY;		

    me_StartX = PVRCONFIG_LIST_ITEM_1ST_X;
    me_StartY = PVRCONFIG_LIST_ITEM_1ST_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = max_fileNameLen;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = PVRCONFIG_PAGE_ITEM_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = PVRCONFIG_LIST_ITEM_GAP-BMPF_GetBMPHeight(m_ui_selectbar_midIfor);
    pstList->iWidth  = PVRCONFIG_LIST_ITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 1;
    
    pstList->iColPosition[0] = pstList->iColStart+10;

    pstList->iColWidth[0] = PVRCONFIG_LIST_ITEM_WIDTH-10;

    pstList->ListReadFunction = PvrConfig_ListRead;
    pstList->ListDrawBar = PvrConfigListDraw;
    pstList->iNoOfItems = 2;
    pstList->cHavesScrollBar = 0;

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;
}

MBT_S32 uif_PvrConfig(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    LISTITEM stPvrConfigList;
    MBT_S32 iPreSelect = -1;
   
    UIF_StopAV();
    stPvrConfigList.iSelect = 0;
    
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            iPreSelect = stPvrConfigList.iSelect;
            PvrConfig_InitList(&stPvrConfigList);
            stPvrConfigList.iSelect = iPreSelect;
            PvrConfig_DrawPanel(&stPvrConfigList);
            bRefresh = MM_TRUE;
        }
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;
        bRefresh |= UCTRF_ListOnDraw(&stPvrConfigList);

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;							   
        }
        
        iKey = uif_ReadKey(1000);

        UCTRF_ListGetKey(&stPvrConfigList, iKey);
        
        switch ( iKey )
        {
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_SELECT:
                if(stPvrConfigList.iSelect == 0)
                {
                    uif_RecordDevice(1);
                    bRedraw = MM_TRUE;
                }
                else
                {
                    uif_Format(1);
                    bRedraw = MM_TRUE;
                }
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
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

            case -1:
                bRefresh |= uif_ShowTopScreenICO();
                break;

            default:
                if(0 !=  uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }

    WGUIF_ClsFullScreen();
    return iRetKey;
}

static MBT_U8 RecordDevice_DrawPanel(LISTITEM* pstList)
{
    MBT_CHAR *ptrTitle;
    MBT_CHAR* infostr[2][6] =
    {
        {
            "Record Device",
            "Confirm",
            "Exit",
            "Media Type",
            "Disk Total Space",
            "Disk Free Space"
        },
        {
            "Record Device",
            "Confirm",
            "Exit",
            "Media Type",
            "Disk Total Space",
            "Disk Free Space"
        }
    };
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR str[16];
    MBT_S32 font_height;
    MBT_S32 s32Xoffset, s32Yoffset, x, y, s32FontStrlen;

    ptrTitle = infostr[uiv_u8Language][0];
    uif_ShareDrawCommonPanel(ptrTitle,MM_NULL, MM_TRUE);

    //ok
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2])))/2;

	x = PVR_HELP_X + s32Xoffset;
    y = PVR_HELP_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    //exit
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][1]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    if(pVfsInfo)
    {        
        WGUIF_FNTDrawTxt(RECORDDEVICE_LIST_ITEM_1ST_X+10, 320, strlen(infostr[uiv_u8Language][3]), infostr[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);
        WGUIF_FNTDrawTxt(RECORDDEVICE_LIST_ITEM_1ST_X+350, 320, strlen(pVfsInfo->ms8FSType), pVfsInfo->ms8FSType, FONT_FRONT_COLOR_WHITE);
        
        WGUIF_FNTDrawTxt(RECORDDEVICE_LIST_ITEM_1ST_X+10, 360, strlen(infostr[uiv_u8Language][4]), infostr[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE);
        sprintf(str, "%d . %02d GB", pVfsInfo->mu32Totalsize/1024/1024, (pVfsInfo->mu32Totalsize%(1024*1024))*100/1024/1024);
        WGUIF_FNTDrawTxt(RECORDDEVICE_LIST_ITEM_1ST_X+350, 360, strlen(str), str, FONT_FRONT_COLOR_WHITE);
        
        WGUIF_FNTDrawTxt(RECORDDEVICE_LIST_ITEM_1ST_X+10, 400, strlen(infostr[uiv_u8Language][5]), infostr[uiv_u8Language][5], FONT_FRONT_COLOR_WHITE);
        sprintf(str, "%d . %02d GB", pVfsInfo->mu32freesize/1024/1024, (pVfsInfo->mu32freesize%(1024*1024))*100/1024/1024);
        WGUIF_FNTDrawTxt(RECORDDEVICE_LIST_ITEM_1ST_X+350, 400, strlen(str), str, FONT_FRONT_COLOR_WHITE);
    }

    WGUIF_SetFontHeight(font_height);
    return 0;
}

static MBT_BOOL RecordDeviceListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(MM_TRUE == bSelect)
    {
        uif_ShareDrawCombinHBar( x, y, iWidth, BMPF_GetBMP(m_ui_selectbar_leftIfor), BMPF_GetBMP(m_ui_selectbar_midIfor), BMPF_GetBMP(m_ui_selectbar_rightIfor));
    }
    else
    {
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

static MBT_BOOL RecordDevice_ListRead(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    MBT_CHAR* infostr[2][2] =
    {
        {
            "Disk",
            "Timeshift Size",
        },
        {
            "Disk",
            "Timeshift Size",
        }
    };
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    iLen = sprintf(pItem,"%s",infostr[uiv_u8Language][iIndex]);
    pItem[iLen] = 0;

    if((stRecordDeviceList.iSelect == iIndex && iIndex == 1) || (u8DiskNum > 1 && stRecordDeviceList.iSelect == iIndex && iIndex == 0))
    {
        pItem[max_fileNameLen] = CO_LEFT;
        pItem[max_fileNameLen+1] = 0;
        pItem[max_fileNameLen*3] = CO_RIGHT;
        pItem[max_fileNameLen*3+1] = 0;
    }
    else
    {
        pItem[max_fileNameLen] = CO_NULL;
        pItem[max_fileNameLen*3] = CO_NULL;
    }

    if(iIndex == 0)
    {
        if(u8DiskNum == 0)
        {
            iLen = sprintf(pItem+max_fileNameLen*2,"%s","No Disk");
        }
        else
        {
            MLMF_Print("[RecordDevice_ListRead]%s\n",pDeviceVInfo[u8DiskSelect].strMountName);
            iLen = sprintf(pItem+max_fileNameLen*2,"%s",pDeviceVInfo[u8DiskSelect].strMountName);
        }
    }
    else
    {
        iLen = sprintf(pItem+max_fileNameLen*2,"%d . %d G",(u8TimeshiftSize+1)/2,((u8TimeshiftSize+1)%2)*5);
    }
    
    pItem[iLen+max_fileNameLen*2] = 0;
    
    return MM_TRUE;
}

static MBT_VOID RecordDevice_InitList( LISTITEM* pstList )
{
    MBT_S32 me_StartX, me_StartY;		

    me_StartX = RECORDDEVICE_LIST_ITEM_1ST_X;
    me_StartY = RECORDDEVICE_LIST_ITEM_1ST_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = max_fileNameLen;
    pstList->stTxtDirect = MM_Txt_Mid;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = RECORDDEVICE_PAGE_ITEM_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = RECORDDEVICE_LIST_ITEM_GAP-BMPF_GetBMPHeight(m_ui_selectbar_midIfor);
    pstList->iWidth  = RECORDDEVICE_LIST_ITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 4;
    
    pstList->iColPosition[0] = pstList->iColStart+10;
    pstList->iColPosition[1] = pstList->iColStart+460;
    pstList->iColPosition[2] = pstList->iColStart+485;
    pstList->iColPosition[3] = pstList->iColStart+705;

    pstList->iColWidth[0] = pstList->iColPosition[1] - pstList->iColPosition[0];
    pstList->iColWidth[1] = pstList->iColPosition[2] - pstList->iColPosition[1];
    pstList->iColWidth[2] = pstList->iColPosition[3] - pstList->iColPosition[2];
    pstList->iColWidth[3] = pstList->iWidth - 10 - pstList->iColWidth[0] - pstList->iColWidth[1] - pstList->iColWidth[2] - 30;

    pstList->ListReadFunction = RecordDevice_ListRead;
    pstList->ListDrawBar = RecordDeviceListDraw;
    pstList->iNoOfItems = 2;
    pstList->cHavesScrollBar = 0;

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;
}

void RecordDevice_FreeDeviceInfo(void)
{
    MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    u8DiskSelect = 0;
    u8DiskNum = 0;
    if(pDeviceVInfo)
    {
        MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        MLMF_Free(pDeviceVInfo);
    }
    pDeviceVInfo = MM_NULL;

    if(pVfsInfo)
    {
        MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        MLMF_Free(pVfsInfo);
        pVfsInfo = MM_NULL;
    }
    MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
}

void RecordDevice_InitDeviceInfo(void)
{
    RecordDevice_FreeDeviceInfo();
    u8DiskNum = MLMF_USB_GetDevVolNum();
    MLMF_Print("u8DiskNum=%d\n",u8DiskNum);
    if(u8DiskNum != 0)
    {
        pDeviceVInfo = (MST_USB_DeviceVInfo_T*)MLMF_Malloc(sizeof(MST_USB_DeviceVInfo_T)*2);
        if(MM_NO_ERROR != MLMF_USB_ReadDevInfo(pDeviceVInfo, 2, &u8DiskNum))
        {
            MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
            RecordDevice_FreeDeviceInfo();
            return;
        }
        MLMF_Print("[%s][%d]strDeviceName=%s strMountName=%s stType=%d\n",__FUNCTION__,__LINE__,pDeviceVInfo[0].strDeviceName,pDeviceVInfo[0].strMountName,pDeviceVInfo[0].stType);
        pVfsInfo = (MST_USB_VfsInfo_T*)MLMF_Malloc(sizeof(MST_USB_VfsInfo_T));
        if(MM_NO_ERROR != MLMF_USB_VfsInfo(pDeviceVInfo->strMountName, pVfsInfo))
        {
            MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
            RecordDevice_FreeDeviceInfo();
            return;
        }
    }
}

MBT_S32 uif_RecordDevice(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    DVB_BOX *pBoxinfo;

    pBoxinfo = DBSF_DataGetBoxInfo();
    u8TimeshiftSize_bak = u8TimeshiftSize = pBoxinfo->ucBit.u8TimeshiftSize;

    RecordDevice_InitDeviceInfo();
    
    while ( !bExit )  
    {
        if ( bRedraw )
        {
            RecordDevice_InitList(&stRecordDeviceList);
            RecordDevice_DrawPanel(&stRecordDeviceList);
            bRefresh = MM_TRUE;
        }
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;
        bRefresh |= UCTRF_ListOnDraw(&stRecordDeviceList);

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iKey = uif_ReadKey(1000);

        UCTRF_ListGetKey(&stRecordDeviceList, iKey);
        
        switch ( iKey )
        {
            case DUMMY_KEY_USB_IN:
            case DUMMY_KEY_USB_OUT:
                RecordDevice_InitDeviceInfo();
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_LEFTARROW:
                if(stRecordDeviceList.iSelect == 0)
                {
                    if(u8DiskNum < 2)
                    {
                       break;
                    }
                    
                    if(u8DiskSelect == 0)
                    {
                        u8DiskSelect = u8DiskNum-1;
                    }
                    else
                    {
                        u8DiskSelect--;
                    }
                    bRedraw = MM_TRUE;
                }
                else
                {
                    if(u8TimeshiftSize == 0)
                    {
                        u8TimeshiftSize = 7;
                    }
                    else
                    {
                        u8TimeshiftSize--;
                    }
                }
                stRecordDeviceList.bUpdateItem = MM_TRUE;
                break;

            case DUMMY_KEY_RIGHTARROW:
                if(stRecordDeviceList.iSelect == 0)
                {
                    if(u8DiskNum < 2)
                    {
                       break;
                    }

                    if(u8DiskSelect == u8DiskNum-1)
                    {
                        u8DiskSelect = 0;
                    }
                    else
                    {
                        u8DiskSelect++;
                    }
                    bRedraw = MM_TRUE;
                }
                else
                {
                    if(u8TimeshiftSize == 7)
                    {
                        u8TimeshiftSize = 0;
                    }
                    else
                    {
                        u8TimeshiftSize++;
                    }
                }
                stRecordDeviceList.bUpdateItem = MM_TRUE;
                break;

            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_SELECT:
                break;

            case DUMMY_KEY_EXIT:
                UIF_SendKeyToUi(DUMMY_KEY_EXIT);
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_MENU:
                iRetKey = DUMMY_KEY_EXIT;
                bExit = MM_TRUE;
                break;

            case -1:
                bRefresh |= uif_ShowTopScreenICO();
                break;

            default:
                if(0 !=  uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }

    if(u8TimeshiftSize_bak != u8TimeshiftSize)
    {
        pBoxinfo->ucBit.u8TimeshiftSize = u8TimeshiftSize;
        DBSF_DataSetBoxInfo(pBoxinfo);
    }
    RecordDevice_FreeDeviceInfo();
    WGUIF_ClsFullScreen();
    return iRetKey;
}

static MBT_U8 Format_DrawPanel(LISTITEM* pstList)
{
    MBT_CHAR *ptrTitle;
    MBT_CHAR* infostr[2][5] =
    {
        {
            "Format",
            "Confirm",
            "Exit",
            "File System",
            "EN_FAT"
        },
        {
            "Format",
            "Confirm",
            "Exit",
            "File System",
            "EN_FAT"
        }
    };
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR str[16];
    MBT_S32 font_height;
    MBT_S32 s32Xoffset, s32Yoffset, x, y, s32FontStrlen;

    ptrTitle = infostr[uiv_u8Language][0];
    uif_ShareDrawCommonPanel(ptrTitle,MM_NULL, MM_TRUE);

    //ok
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2])))/2;

	x = PVR_HELP_X + s32Xoffset;
    y = PVR_HELP_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    //exit
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][0]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    
    if(pVfsInfo)
    {
        WGUIF_FNTDrawTxt(FORMAT_LIST_ITEM_1ST_X+10, 262, strlen(infostr[uiv_u8Language][3]), infostr[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);
        WGUIF_FNTDrawTxt(FORMAT_LIST_ITEM_1ST_X+350, 262, strlen(pVfsInfo->ms8FSType), pVfsInfo->ms8FSType, FONT_FRONT_COLOR_WHITE);
        
        WGUIF_FNTDrawTxt(FORMAT_LIST_ITEM_1ST_X+10, 302, strlen(infostr[uiv_u8Language][4]), infostr[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE);
        sprintf(str, "%d . %02d GB / %d . %02d GB", pVfsInfo->mu32freesize/1024/1024, (pVfsInfo->mu32freesize%(1024*1024))*100/1024/1024,pVfsInfo->mu32Totalsize/1024/1024, (pVfsInfo->mu32Totalsize%(1024*1024))*100/1024/1024);
        WGUIF_FNTDrawTxt(FORMAT_LIST_ITEM_1ST_X+350, 302, strlen(str), str, FONT_FRONT_COLOR_WHITE);
    }

    WGUIF_SetFontHeight(font_height);
    
    return 0;
}

static MBT_BOOL FormatListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(MM_TRUE == bSelect)
    {
		uif_ShareDrawCombinHBar( x, y, iWidth, BMPF_GetBMP(m_ui_selectbar_leftIfor), BMPF_GetBMP(m_ui_selectbar_midIfor), BMPF_GetBMP(m_ui_selectbar_rightIfor));
    }
    else
    {
		WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

static MBT_BOOL Format_ListRead(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    MBT_CHAR* infostr[2][1] =
    {
        {
            "Format",
        },
        {
            "Format",
        }
    };
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    iLen = sprintf(pItem,"%s",infostr[uiv_u8Language][iIndex]);		
    pItem[iLen] = 0;

    if(u8DiskNum == 0)
    {
        iLen = sprintf(pItem+max_fileNameLen,"%s","No Disk");
    }
    else
    {
        iLen = sprintf(pItem+max_fileNameLen,"%s",pDeviceVInfo[u8DiskSelect].strMountName);
    }
    pItem[max_fileNameLen+iLen] = 0;
    
    return MM_TRUE;
}

static MBT_VOID Format_InitList( LISTITEM* pstList )
{
    MBT_S32 me_StartX, me_StartY;		

    me_StartX = FORMAT_LIST_ITEM_1ST_X;
    me_StartY = FORMAT_LIST_ITEM_1ST_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = max_fileNameLen;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = FORMAT_PAGE_ITEM_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = FORMAT_LIST_ITEM_GAP-BMPF_GetBMPHeight(m_ui_selectbar_midIfor);;
    pstList->iWidth  = FORMAT_LIST_ITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 2;
    
    pstList->iColPosition[0] = pstList->iColStart+10;
    pstList->iColPosition[1] = pstList->iColStart+515;

    pstList->iColWidth[0] = 450;
    pstList->iColWidth[1] = 220;

    pstList->ListReadFunction = Format_ListRead;
    pstList->ListDrawBar = FormatListDraw;
    pstList->iNoOfItems = 1;
    pstList->cHavesScrollBar = 0;

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;
}

MBT_S32 uif_Format(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    LISTITEM stFormatList;

    RecordDevice_InitDeviceInfo();

    while ( !bExit )  
    {
        if ( bRedraw )
        {
            Format_InitList(&stFormatList);            
            Format_DrawPanel(&stFormatList);
            bRefresh = MM_TRUE;
        }
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;
        bRefresh |= UCTRF_ListOnDraw(&stFormatList);

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;							   
        }
        
        iKey = uif_ReadKey(1000);

        UCTRF_ListGetKey(&stFormatList, iKey);
        
        switch ( iKey )
        {
            case DUMMY_KEY_USB_IN:
            case DUMMY_KEY_USB_OUT:
                RecordDevice_InitDeviceInfo();
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_SELECT:
                if(u8DiskNum > 0)
                {
                    if(pDeviceVInfo)
                    {
                        if(MM_NO_ERROR == MLMF_USB_Format((MBT_U8*)pDeviceVInfo->strMountName, (MBT_U8*)pDeviceVInfo->strDeviceName))
                        {
                            RecordDevice_InitDeviceInfo();
                            bRedraw = MM_TRUE;
                        }
                    }
                }
                break;

            case DUMMY_KEY_EXIT:
                UIF_SendKeyToUi(DUMMY_KEY_EXIT);
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_MENU:
                iRetKey = DUMMY_KEY_EXIT;
                bExit = MM_TRUE;
                break;

            case -1:
                bRefresh |= uif_ShowTopScreenICO();
                break;

            default:
                if(0 !=  uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }

    RecordDevice_FreeDeviceInfo();
    WGUIF_ClsFullScreen();
    return iRetKey;
}

static MBT_VOID Pvr_GetCAOsdMsg(MBT_VOID *pData,MBT_S32 iDataSize)
{
    MBT_S32 iType1 = 0xffffffff;
    MBT_S32 iType2 = 0xffffffff;
    
    if(MM_NULL != pData)
    {
        if(iDataSize == sizeof(SCDCAFingerInfo))
        {
            iType1 = DUMMY_KEY_SHOW_SUPER_FINGER;
        }
        else if(iDataSize == sizeof(SCDCAOSDInfo))
        {
            iType1 = DUMMY_KEY_SHOW_SUPER_OSD;
        }
    }
    else
    {
        if(iDataSize == sizeof(SCDCAFingerInfo))
        {
            //MLMF_Print("MPVR_CLEAR_SUPER_FINGER\n");
            iType1 = DUMMY_KEY_CLEAR_SUPER_FINGER;
        }
        else if(iDataSize == sizeof(SCDCAOSDInfo))
        {
            //MLMF_Print("DUMMY_KEY_CLEAR_SUPER_OSD\n");
            iType1 = DUMMY_KEY_CLEAR_SUPER_OSD;
        }
        else
        {
            iType1 = DUMMY_KEY_CLEAR_SUPER_FINGER;
            iType2 = DUMMY_KEY_CLEAR_SUPER_OSD;
        }
        
        iDataSize = 0;
    }

    if(0xffffffff != iType1)
    {
        UIF_GetCAOsdMsg(iType1,0,pData,iDataSize);
    }

    if(0xffffffff != iType2)
    {
        UIF_GetCAOsdMsg(iType2,0,pData,iDataSize);
    }
}

static void Pvr_PlayInit(void)
{
    MBT_U8 Path[256];
    MBT_U8 u8CardNum[CDCA_MAXLEN_SN + 20];
    CDCA_U16 PlatformId = 0;
    CDCA_U32 UniqueId = 0;
    MBT_U32  u32HashVal=0;

    if(MLMF_USB_GetDevVolNum() == 0)
    {
        MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return;
    }

    if(uiv_stPvrTree.u32FileNodeNum < 1)
    {
        MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return;
    }
    
    RecordDevice_InitDeviceInfo();
    
    
    memset(u8CardNum, 0, sizeof(u8CardNum));
#if(1 == M_CDCA)	
    CDSTBCA_GetSTBID(&PlatformId, &UniqueId);
#endif
    u8CardNum[0] = ((UniqueId>>24)&0x000000ff);
    u8CardNum[1] = ((UniqueId>>16)&0x000000ff);
    u8CardNum[2] = ((UniqueId>>8)&0x000000ff);
    u8CardNum[3] = (UniqueId&0x000000ff);
    u8CardNum[4] = ((PlatformId>>8)&0x000000ff);
    u8CardNum[5] = (PlatformId&0x000000ff);
    u8CardNum[6] = 0;
    u8CardNum[7] = 0;
	
#if(1 == M_CDCA)	
    CDCASTB_GetCardSN((char*)(u8CardNum+8));
#endif

    u32HashVal = MMF_Common_CRCU8(u8CardNum,8+CDCA_MAXLEN_SN);

    sprintf((MBT_CHAR *)Path, "%s%s", pDeviceVInfo->strMountName, PVR_DIR_NAME);
    if(MM_NO_ERROR != MLMF_PVR_Init(MPVR_FS_VFAT,u32HashVal,Path,Pvr_GetCAOsdMsg))
    {
        MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return;
    }

    RecordDevice_FreeDeviceInfo();

    MLMF_PVR_StateChangeCallback_Register(UIF_GetPvrEventMsg);
}

static void Pvr_PlayDeInit(void)
{
    MLMF_PVR_StateChangeCallback_Register(MM_NULL);
    
    if(MM_NO_ERROR != MLMF_PVR_DeInit())
    {
        MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return;
    }
    MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
}

static void Pvr_PlayPlayPause(void)
{
    MMT_PVR_PlaybackSpeed_e eSpeed = MLMF_PVR_PlaybackGetSpeed();
    MMT_PVR_PlaybackSpeed_e eMISpeed;

    switch(eSpeed)
    {
        case MPVR_PLAYBACK_SPEED_0X:
            MLMF_PVR_PlaybackResume();
            return;

        case MPVR_PLAYBACK_SPEED_1X:
            MLMF_PVR_PlaybackPause();
            return;

        default:
            eMISpeed = MPVR_PLAYBACK_SPEED_1X;
            break;
    }

    MLMF_PVR_PlaybackSetSpeed(eMISpeed);
}

static void Pvr_PlayForward(void)
{
    MMT_PVR_PlaybackSpeed_e eSpeed = MLMF_PVR_PlaybackGetSpeed();
    MMT_PVR_PlaybackSpeed_e eMISpeed;

    switch(eSpeed)
    {
        case MPVR_PLAYBACK_SPEED_0X:
            return;

        case MPVR_PLAYBACK_SPEED_1X:
            eMISpeed = MPVR_PLAYBACK_SPEED_2XFF;
            break;

        case MPVR_PLAYBACK_SPEED_2XFF:
            eMISpeed = MPVR_PLAYBACK_SPEED_4XFF;
            break;

        case MPVR_PLAYBACK_SPEED_4XFF:
            eMISpeed = MPVR_PLAYBACK_SPEED_8XFF;
            break;

        case MPVR_PLAYBACK_SPEED_8XFF:
            eMISpeed = MPVR_PLAYBACK_SPEED_16XFF;
            break;

        case MPVR_PLAYBACK_SPEED_16XFF:
            eMISpeed = MPVR_PLAYBACK_SPEED_32XFF;
            break;

        default:
            eMISpeed = MPVR_PLAYBACK_SPEED_1X;
            break;
    }

    MLMF_PVR_PlaybackSetSpeed(eMISpeed);
}

static void Pvr_PlayBackward(void)
{
    MMT_PVR_PlaybackSpeed_e eSpeed = MLMF_PVR_PlaybackGetSpeed();
    MMT_PVR_PlaybackSpeed_e eMISpeed;

    switch(eSpeed)
    {
        case MPVR_PLAYBACK_SPEED_0X:
            return;

        case MPVR_PLAYBACK_SPEED_1X:
            eMISpeed = MPVR_PLAYBACK_SPEED_2XFB;
            break;

        case MPVR_PLAYBACK_SPEED_2XFB:
            eMISpeed = MPVR_PLAYBACK_SPEED_4XFB;
            break;

        case MPVR_PLAYBACK_SPEED_4XFB:
            eMISpeed = MPVR_PLAYBACK_SPEED_8XFB;
            break;

        case MPVR_PLAYBACK_SPEED_8XFB:
            eMISpeed = MPVR_PLAYBACK_SPEED_16XFB;
            break;

        case MPVR_PLAYBACK_SPEED_16XFB:
            eMISpeed = MPVR_PLAYBACK_SPEED_32XFB;
            break;

        default:
            eMISpeed = MPVR_PLAYBACK_SPEED_1X;
            break;
    }

    MLMF_PVR_PlaybackSetSpeed(eMISpeed);
}

static MBT_BOOL Pvr_IsPvr(MBT_CHAR *file_name)
{
    MBT_CHAR *mts = MM_NULL;
    if(MM_NULL == file_name)
    {
        return MM_FALSE;
    }

    mts = strstr(file_name, ".mts");
    if(mts)
    {
        if(strlen(mts) == strlen(".mts"))
        {
            return MM_TRUE;
        }
    }

    return MM_FALSE;
}

static MBT_VOID Pvr_FreeTree(ST_PvrTree *pstFileTree)
{
    if(NULL == pstFileTree)
    {
        return;
    }
    
    if(MM_NULL != pstFileTree->pstFileNode)
    {
        uif_ForceFree(pstFileTree->pstFileNode);
        pstFileTree->pstFileNode = MM_NULL;
    }
    
    if(MM_NULL != pstFileTree->pu8ParentPath)
    {
        uif_ForceFree(pstFileTree->pu8ParentPath);
        pstFileTree->pu8ParentPath = MM_NULL;
    }
    
    if(MM_NULL != pstFileTree->pu8SelfPath)
    {
        uif_ForceFree(pstFileTree->pu8SelfPath);
        pstFileTree->pu8SelfPath = MM_NULL;
    }

    memset(pstFileTree->u8CurPath,0,max_fileNameLen);
    pstFileTree->u32FileNodeNum = 0;
}

static MBT_BOOL Pvr_CreateRootTree(ST_PvrTree *pstFileTree)
{
    ST_PvrNode *pstFileNode;
    MBT_CHAR u8TempPath[max_fileNameLen];
    MBT_U8 i;
    MBT_CHAR charPartNum = 0;

    if(MM_NULL == pstFileTree)
    {
        return MM_FALSE;
    }
    
    Pvr_FreeTree(pstFileTree);
    
    MLMF_VFS_Init(u8TempPath,0,&charPartNum);
    if(0 == charPartNum)
    {
        return MM_FALSE;
    }

    //MLMF_Print("[%s][%d] root=%s charPartNum=%d\n",__FUNCTION__,__LINE__,u8TempPath,charPartNum);
    pstFileNode = uif_ForceMalloc(m_MaxFileTreeNode*sizeof(ST_PvrNode));
    if(MM_NULL == pstFileNode)
    {
        uif_ForceFree(pstFileNode);
        return MM_FALSE;
    }
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    memset(pstFileNode,0,m_MaxFileTreeNode*sizeof(ST_PvrNode));
    pstFileNode[0].eType = PVR_UNIT_DIRECTORY;
    strcpy(pstFileNode[0].u8PathName,u8TempPath);

    for(i = 1;i < charPartNum;i++)
    {
        pstFileNode[i].eType = PVR_UNIT_DIRECTORY;
        MLMF_VFS_Init(pstFileNode[i].u8PathName,i,&charPartNum);
        //MLMF_Print("[%s][%d] pstFileNode[%d].u8PathName=%s\n",i,pstFileNode[i].u8PathName);
    }
    
    memset(pstFileTree->u8CurPath,0,max_fileNameLen);
    pstFileTree->pstFileNode = pstFileNode;
    pstFileTree->u32FileNodeNum = charPartNum;
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    return MM_TRUE;
}


static MBT_BOOL Pvr_CreateTree(MBT_CHAR *pu8Path, MBT_BOOL bfinal)
{
    ST_PvrNode *pstFileNode;
    pvr_unit_type eType = PVR_UNIT_FILE;
    MET_VFS_DirHandle_T usbCurHandle;
    MST_VFS_DIR_T dirNode;
    MBT_U32 i;
    MBT_U32 iStrLen;
    MBT_U32 u32NodeNum;
    MMT_STB_ErrorCode_E ret;
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    if(MM_NULL == pu8Path)
    {
        return Pvr_CreateRootTree(&uiv_stPvrTree);
    }
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    /*在子目录中寻找相关项目*/
    pstFileNode = uiv_stPvrTree.pstFileNode;
    u32NodeNum = uiv_stPvrTree.u32FileNodeNum;
    for(i = 0;i < u32NodeNum;i++)
    {
        if(0 == strcmp(pu8Path,pstFileNode->u8PathName))
        {
            eType = pstFileNode->eType;
            break;
        }
        pstFileNode++;
    }
    /*在子目录中寻找不到相关项目，返回错误*/
    if(i >= u32NodeNum)
    {
        //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return MM_FALSE;
    }
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    /*相关项目为文件不能打开*/
    if(PVR_UNIT_FILE == eType)
    {
        //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return MM_FALSE;
    }
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    /*一级子目录，需要选盘符*/
    if(MM_NULL == uiv_stPvrTree.pu8SelfPath&&MM_NULL == uiv_stPvrTree.pu8ParentPath)
    {
        MBT_CHAR charPartNum=0;
        MBT_CHAR u8Temp[max_fileNameLen];
        MLMF_VFS_Init(u8Temp,i,&charPartNum);
    }
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    /*把自身替换父接点*/
    if(MM_NULL != uiv_stPvrTree.pu8SelfPath)
    {
        if(MM_NULL == uiv_stPvrTree.pu8ParentPath)
        {
            uiv_stPvrTree.pu8ParentPath = uif_ForceMalloc(max_fileNameLen);
        }
        
        if(MM_NULL == uiv_stPvrTree.pu8ParentPath)
        {
            Pvr_FreeTree(&uiv_stPvrTree);
            return MM_FALSE;
        }
        uiv_stPvrTree.pu8ParentPath[0] = 0;
        strcpy(uiv_stPvrTree.pu8ParentPath,uiv_stPvrTree.pu8SelfPath);
    }
    else
    {
        if(MM_NULL != uiv_stPvrTree.pu8ParentPath)
        {
            uif_ForceFree(uiv_stPvrTree.pu8ParentPath);
            uiv_stPvrTree.pu8ParentPath = MM_NULL;
        }
    }
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    /*把子接点替换自身接点*/
    if(MM_NULL == uiv_stPvrTree.pu8SelfPath)
    {
        uiv_stPvrTree.pu8SelfPath = uif_ForceMalloc(max_fileNameLen);
    }

    if(MM_NULL == uiv_stPvrTree.pu8SelfPath)
    {
        Pvr_FreeTree(&uiv_stPvrTree);
        return MM_FALSE;
    }
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    uiv_stPvrTree.pu8SelfPath[0] = 0;
    strcpy(uiv_stPvrTree.pu8SelfPath,pu8Path);
    //MLMF_Print("uif_UsbCreateSunTree1 pu8SelfPath %s ,pu8Path %s\n",uiv_stPvrTree.pu8SelfPath,pu8Path);
    /*构建新的子接点*/     
    strcat(uiv_stPvrTree.u8CurPath,pu8Path);
    //MLMF_Print("uif_UsbCreateSunTree2 pu8SelfPath %s ,pu8Path %s\n",uiv_stPvrTree.pu8SelfPath,pu8Path);
    usbCurHandle = MLMF_VFS_Dir_Open(uiv_stPvrTree.u8CurPath);
    if(MET_VFS_INVALID_HANDLE == usbCurHandle)
    {
        Pvr_FreeTree(&uiv_stPvrTree);
        //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return MM_FALSE;
    }
    //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
    //MLMF_Print("uif_UsbCreateSunTree3 pu8SelfPath %s ,pu8Path %s\n",uiv_stPvrTree.pu8SelfPath,pu8Path);
    pstFileNode = uiv_stPvrTree.pstFileNode;
    if(MM_NULL == pstFileNode)
    {
        pstFileNode = uif_ForceMalloc(m_MaxFileTreeNode*sizeof(ST_PvrNode));
    }
    //MLMF_Print("uif_UsbCreateSunTree4 pu8SelfPath %s ,pu8Path %s\n",uiv_stPvrTree.pu8SelfPath,pu8Path);
    if(MM_NULL == pstFileNode)
    {
        Pvr_FreeTree(&uiv_stPvrTree);
        MLMF_VFS_Dir_Close(usbCurHandle);
        return MM_FALSE;
    }
    //MLMF_Print("uif_UsbCreateSunTree5 pu8SelfPath %s ,pu8Path %s\n",uiv_stPvrTree.pu8SelfPath,pu8Path);
    u32NodeNum = 0;
    for(i = 0;i < m_MaxFileTreeNode;i++)
    {
        //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        memset(&dirNode,0,sizeof(dirNode));
        ret = MLMF_VFS_Dir_Read(usbCurHandle,&dirNode);
        //MLMF_Print("[%s][%d]dirNode.name=%s\n",__FUNCTION__,__LINE__,dirNode.name);
        if(MM_ERROR_FEATURE_NOT_SUPPORTED==ret)
        {
            //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
            continue;
        }
        else if((!strcmp(dirNode.name,"."))||(!strcmp(dirNode.name,"..")))
        {
            //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
            continue;
        }
        else if(MM_NO_ERROR != ret)
        {
            //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
            break;
        }

        //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        if(bfinal)
        {
            //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
            if(!Pvr_IsPvr(dirNode.name))
            {
                //MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
                continue;
            }
        }
        //MLMF_Print("uif_UsbCreateSunTree before %d pu8SelfPath %s ,pu8Path %s\n",u32NodeNum,uiv_stPvrTree.pu8SelfPath,pu8Path);
        pstFileNode[u32NodeNum].eType = dirNode.flag;
        strcpy(pstFileNode[u32NodeNum].u8PathName,dirNode.name);
        //MLMF_Print("uif_UsbCreateSunTree after %d pu8SelfPath %s ,pu8Path %s\n",u32NodeNum,uiv_stPvrTree.pu8SelfPath,pu8Path);
        u32NodeNum++;
    }
    //MLMF_Print("uif_UsbCreateSunTree6 pu8SelfPath %s ,pu8Path %s\n",uiv_stPvrTree.pu8SelfPath,pu8Path);
    MLMF_VFS_Dir_Close(usbCurHandle);
    iStrLen = strlen(uiv_stPvrTree.u8CurPath);
    if('/' != uiv_stPvrTree.u8CurPath[iStrLen-1])
    {
        uiv_stPvrTree.u8CurPath[iStrLen] = '/';
        uiv_stPvrTree.u8CurPath[iStrLen+1] = 0;
    }
    //MLMF_Print("uif_UsbCreateSunTree7 pu8SelfPath %s ,pu8Path %s\n",uiv_stPvrTree.pu8SelfPath,pu8Path);
    uiv_stPvrTree.pstFileNode = pstFileNode;
    uiv_stPvrTree.u32FileNodeNum = u32NodeNum;
    //MLMF_Print("uif_UsbCreateSunTree u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stPvrTree.u8CurPath,uiv_stPvrTree.pu8SelfPath,uiv_stPvrTree.pu8ParentPath,uiv_stPvrTree.u32FileNodeNum);
    return MM_TRUE;
}

static MBT_U8 Pvr_DrawPanel(LISTITEM* pstList)
{
    MBT_CHAR *ptrTitle;
    MBT_CHAR* infostr[2][6] =
    {
        {
            "PVR",
            "Page",
            "Select",
            "Preview/FullScreen",
            "Delete",
            "Rename"
        },
        {
            "PVR",
            "Page",
            "Select",
            "Preview/FullScreen",
            "Delete",
            "Rename"
        }
    };
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR pagestr[16];
    MBT_U8 u8CurPage = 0;
    MBT_U8 u8TotalPage = 0;
    MBT_S32 s32FontHeight, s32Xoffset, s32Yoffset, s32helpx, s32helpy, s32FontStrlen;

    //MLMF_Print("pstList->iNoOfItems=%d pstList->iSelect=%d pstList->iPageMaxItem=%d\n",pstList->iNoOfItems,pstList->iSelect,pstList->iPageMaxItem);
    if(pstList->iNoOfItems > 0)
    {
        u8CurPage = pstList->iSelect/pstList->iPageMaxItem+1;
        u8TotalPage = (pstList->iNoOfItems-1)/pstList->iPageMaxItem+1;
    }

    ptrTitle = infostr[uiv_u8Language][0];
    pstFramBmp = BMPF_GetBMP(m_ui_Pvr_LogoIfor);
    uif_ShareDrawCommonPanel(ptrTitle, pstFramBmp, MM_TRUE);

    //视频窗口
    WGUIF_ClsScreen(PVR_WINDOW_X, PVR_WINDOW_Y, PVR_WINDOW_WIDTH, PVR_WINDOW_HEIGHT);
    WGUIF_DrawFilledRectangle(PVR_WINDOW_X, PVR_WINDOW_Y, PVR_WINDOW_WIDTH, PVR_WINDOW_HEIGHT, PVR_WINDOW_COLOR); //黑色视频窗口背景
    WGUIF_DrawFilledRectangle(PVR_WINDOW_X+1, PVR_WINDOW_Y+1, PVR_WINDOW_WIDTH-2, PVR_WINDOW_HEIGHT-2, 0x00000000); //黑色视频窗口

    s32FontHeight =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    WGUIF_FNTDrawTxt(PVR_PAGE_TXT_X, PVR_PAGE_TXT_Y, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    sprintf(pagestr, "%02d / %02d", u8CurPage, u8TotalPage);
    s32Xoffset = WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1]) + 60;
    WGUIF_FNTDrawTxt(PVR_PAGE_TXT_X+s32Xoffset, PVR_PAGE_TXT_Y, strlen(pagestr), pagestr, FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(s32FontHeight);
    
    WGUIF_DrawFilledRectangle(PVR_BAR_X, PVR_BAR_Y, PVR_BAR_W, PVR_BAR_H, 0xff4becec);

    s32FontHeight =  WGUIF_GetFontHeight();

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_RedIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][3]), infostr[uiv_u8Language][3]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_YellowIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][4]), infostr[uiv_u8Language][4])))/2;

    //ok
	s32helpx = PVR_HELP_X + s32Xoffset;
    s32helpy = PVR_HELP_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(s32helpx, s32helpy, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    s32helpx = s32helpx +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(s32helpx, s32helpy + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    //red
    s32helpx = s32helpx + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][2]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - pstFramBmp->bHeight)/2;
	WGUIF_DisplayReginTrueColorBmp(s32helpx, s32helpy+s32Yoffset, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    s32helpx = s32helpx +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][3]);
    WGUIF_FNTDrawTxt(s32helpx, s32helpy + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][3], FONT_FRONT_COLOR_WHITE);

    //yellow
    s32helpx = s32helpx + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][3]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - pstFramBmp->bHeight)/2;
	WGUIF_DisplayReginTrueColorBmp(s32helpx, s32helpy+s32Yoffset, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    s32helpx = s32helpx +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][4]);
    WGUIF_FNTDrawTxt(s32helpx, s32helpy + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(s32FontHeight);
    
    return 0;
}

static MBT_U8 Pvr_DrawFileInfo(LISTITEM* pstList)
{
    MBT_CHAR* infostr[2][2] =
    {
        {
            "Duration:",
            "Size:",
        },
        {
            "Duration:",
            "Size:",
        }
    };
    MBT_U32 duration,size;
    ST_PvrNode *pstFileNode = uiv_stPvrTree.pstFileNode;
    MBT_CHAR str[32];

    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);

    WGUIF_DisplayReginTrueColorBmp(0, 0, PVR_FILEINFO_X, PVR_FILEINFO_Y, PVR_FILEINFO_WIDTH, PVR_FILEINFO_HEIGHT, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);

    if(uiv_stPvrTree.pstFileNode == NULL)
    {
        return 0;
    }

    if(uiv_stPvrTree.u32FileNodeNum == 0)
    {
        return 0;
    }

    if(pstList->iSelect > (uiv_stPvrTree.u32FileNodeNum-1))
    {
        pstList->iSelect = 0;
        return 0;
    }

    if(MM_NO_ERROR != MLMF_PVR_GetFileInfo(pstFileNode[pstList->iSelect].u8PathName, &duration, &size))
    {
        return 0;
    }

    WGUIF_FNTDrawTxt(PVR_FILEINFO_X, PVR_FILEINFO_Y, strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);
    sprintf(str, "%02d:%02d:%02d", duration/3600, (duration%3600)/60, (duration%3600)%60);
    WGUIF_FNTDrawTxt(PVR_FILEINFO_X+120, PVR_FILEINFO_Y, strlen(str), str, FONT_FRONT_COLOR_WHITE);

    WGUIF_FNTDrawTxt(PVR_FILEINFO_X, PVR_FILEINFO_Y+50, strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
    if(size > 1024*1024*1024)
    {
        sprintf(str, "%d . %d G", size/1024/1024/1024, ((size/1024/1024)%1024)*100/1024);
    }
    else if(size > 1024*1024)
    {
        sprintf(str, "%d . %d M", size/1024/1024, ((size/1024)%1024)*100/1024);
    }
    else if(size > 1024)
    {
        sprintf(str, "%d . %d K", size/1024, ((size)%1024)*100/1024);
    }
    else
    {
        sprintf(str, "%d Byte", size);
    }
    
    WGUIF_FNTDrawTxt(PVR_FILEINFO_X+120, PVR_FILEINFO_Y+50, strlen(str), str, FONT_FRONT_COLOR_WHITE);

    return 0;
}

static MBT_U8 Pvr_DrawSpeed(void)
{
    MMT_PVR_PlaybackSpeed_e eSpeed = MLMF_PVR_PlaybackGetSpeed();
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR *speedstr[] = {"X2", "X4", "X8", "X16", "X32"};
    MBT_CHAR *str;
    MBT_S32 x,y,w,h;
    MBT_S32 font_h = 0;

    if(bPvrPlayFullscreen)
    {
        return 0;
    }
    else
    {
        x = PVR_SPEED_WINDOW_X;
        y = PVR_SPEED_WINDOW_Y;
        w = PVR_SPEED_WINDOW_WIDTH;
        h = PVR_SPEED_WINDOW_HEIGHT;
    }    
    WGUIF_ClsScreen(x, y, w, h);

    switch(eSpeed)
    {
        case MPVR_PLAYBACK_SPEED_0X:
            pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_suspendIfor);
            break;

        case MPVR_PLAYBACK_SPEED_1X:
            return 0;
            
        case MPVR_PLAYBACK_SPEED_2XFF:
        case MPVR_PLAYBACK_SPEED_4XFF:
        case MPVR_PLAYBACK_SPEED_8XFF:
        case MPVR_PLAYBACK_SPEED_16XFF:
        case MPVR_PLAYBACK_SPEED_32XFF:
            pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_fastforwardIfor);
            break;

        case MPVR_PLAYBACK_SPEED_2XFB:
        case MPVR_PLAYBACK_SPEED_4XFB:
        case MPVR_PLAYBACK_SPEED_8XFB:
        case MPVR_PLAYBACK_SPEED_16XFB:
        case MPVR_PLAYBACK_SPEED_32XFB:
            pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_fastbackwardIfor);
            break;

        default:
            return 0;

    }
    
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    switch(eSpeed)
    {
        case MPVR_PLAYBACK_SPEED_2XFF:
        case MPVR_PLAYBACK_SPEED_2XFB:
            str = speedstr[0];
            break;
            
        case MPVR_PLAYBACK_SPEED_4XFF:
        case MPVR_PLAYBACK_SPEED_4XFB:
            str = speedstr[1];
            break;
                
        case MPVR_PLAYBACK_SPEED_8XFF:
        case MPVR_PLAYBACK_SPEED_8XFB:
            str = speedstr[2];
            break;
                
        case MPVR_PLAYBACK_SPEED_16XFF:
        case MPVR_PLAYBACK_SPEED_16XFB:
            str = speedstr[3];
            break;
                
        case MPVR_PLAYBACK_SPEED_32XFF:
        case MPVR_PLAYBACK_SPEED_32XFB:
            str = speedstr[4];
            break;

        default:
            return 0;
    }
    font_h = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    WGUIF_FNTDrawTxt(x+40, y+3, strlen(str), str, FONT_FRONT_COLOR_WHITE);
    WGUIF_SetFontHeight(font_h);
    
    return 0;
}

static MBT_BOOL Pvr_DrawPlayTime(void)
{
    static MBT_U32 pretime = 0xffffffff;
    MBT_U32 curtime,duration;
    MBT_CHAR str[16];
    MBT_S32 font_h = 0;

    font_h = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALLER_GWFONT_HEIGHT);

    if(MLMF_PVR_IsPlay() &&! bPvrPlayFullscreen)
    {
        if(MM_NO_ERROR == MLMF_PVR_PlaybackGetTime(&curtime, &duration))
        {
            if(pretime != curtime)
            {
                WGUIF_ClsScreen(PVR_TIME_WINDOW_X, PVR_TIME_WINDOW_Y, PVR_TIME_WINDOW_WIDTH, PVR_TIME_WINDOW_HEIGHT);

                if(curtime < 3600)
                {
                    sprintf(str, "%02d:%02d", curtime/60, curtime%60);
                    WGUIF_FNTDrawTxt(PVR_TIME_WINDOW_X+21, PVR_TIME_WINDOW_Y+1, strlen(str), str, FONT_FRONT_COLOR_WHITE);
                }
                else
                {
                    sprintf(str, "%02d:%02d:%02d", curtime/3600, (curtime%3600)/60, (curtime%3600)%60);
                    WGUIF_FNTDrawTxt(PVR_TIME_WINDOW_X+1, PVR_TIME_WINDOW_Y+1, strlen(str), str, FONT_FRONT_COLOR_WHITE);
                }
                
                pretime = curtime;
                return MM_TRUE;
            }
            
            return MM_FALSE;
        }
        else
        {
            if(pretime != 0xffffffff)
            {
                WGUIF_ClsScreen(PVR_TIME_WINDOW_X, PVR_TIME_WINDOW_Y, PVR_TIME_WINDOW_WIDTH, PVR_TIME_WINDOW_HEIGHT);
                pretime = 0xffffffff;
                return MM_TRUE;
            }
        }
    }
    else
    {
        if(pretime != 0xffffffff)
        {
            WGUIF_ClsScreen(PVR_TIME_WINDOW_X, PVR_TIME_WINDOW_Y, PVR_TIME_WINDOW_WIDTH, PVR_TIME_WINDOW_HEIGHT);
            pretime = 0xffffffff;
            return MM_TRUE;
        }
    }
    WGUIF_SetFontHeight(font_h);
    return MM_FALSE;
}

static MBT_BOOL PvrListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(MM_TRUE == bSelect)
    {
        uif_ShareDrawCombinHBar( x, y, iWidth, BMPF_GetBMP(m_ui_selectbar_leftIfor), BMPF_GetBMP(m_ui_selectbar_midIfor), BMPF_GetBMP(m_ui_selectbar_rightIfor));
    }
    else
    {
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

static MBT_BOOL Pvr_ListRead(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    ST_PvrNode *pstFileNode = uiv_stPvrTree.pstFileNode;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pstFileNode||iIndex >= uiv_stPvrTree.u32FileNodeNum)
    {
        memset(pItem,0,max_fileNameLen);
        return MM_FALSE;
    }

    pstFileNode += iIndex;
    iLen = sprintf(pItem,"%s",pstFileNode->u8PathName);		
    pItem[iLen] = 0;
    
    return MM_TRUE;
}

static MBT_VOID Pvr_InitList( LISTITEM* pstList )
{
    MBT_S32 me_StartX, me_StartY;		

    me_StartX = PVR_LIST_ITEM_1ST_X;
    me_StartY = PVR_LIST_ITEM_1ST_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = max_fileNameLen;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = PVR_PAGE_ITEM_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = PVR_LIST_ITEM_GAP;
    pstList->iWidth  = PVR_LIST_ITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 1;
    
    pstList->iColPosition[0] = pstList->iColStart+10;

    pstList->iColWidth[0] = PVR_LIST_ITEM_WIDTH-20;

    pstList->ListReadFunction = Pvr_ListRead;
    pstList->ListDrawBar = PvrListDraw;
    pstList->iNoOfItems = uiv_stPvrTree.u32FileNodeNum;
    if(pstList->iNoOfItems > pstList->iPageMaxItem)
    {
        pstList->cHavesScrollBar = 1;
    }
    else
    {
        pstList->cHavesScrollBar = 0;
    }

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;
}

static MBT_BOOL Pvr_DrawPlayPanel(MBT_BOOL bRedraw, MBT_BOOL bShow, MBT_S32 iSeekTime)
{
    MBT_CHAR strBuff[16];
    BITMAPTRUECOLOR *pstFramBmp = MM_NULL;
    MBT_S32 iLen;
    static MMT_PVR_PlaybackSpeed_e ePreSpeed = MPVR_PLAYBACK_SPEED_32XFF;
    MMT_PVR_PlaybackSpeed_e eSpeed;
    MBT_U32 u32CurTime,u32Duration;
    static MBT_U32 uPreCurTime=0,uPreDuration=0;
    MBT_S32 iTemp = 0;
    MBT_BOOL bRet = MM_FALSE;
    MBT_CHAR *speedstr[] = {"X2", "X4", "X8", "X16", "X32"};
    MBT_CHAR *timestr = "00:00:00";
    MBT_CHAR *str = MM_NULL;
    static MBT_BOOL bPreShowPanel = MM_FALSE;
    MBT_S32 font_h;
    MBT_S32 s32PlaybmpSpeed_W, s32PlaybmpSpeed_H, s32PlaybmpSpeed_X, s32PlaybmpSpeed_Y;
    MBT_S32 s32Progress_W, s32Progress_H, s32Progress_X, s32Progress_Y;
    MBT_S32 s32CurTime_W, s32CurTime_H, s32CurTime_X, s32CurTime_Y;
    MBT_S32 s32TotalTime_W, s32TotalTime_H, s32TotalTime_X, s32TotalTime_Y;

    MBT_S32 s32XOffset, s32YOffset; 

    if(!bPvrPlayFullscreen)
    {
        return MM_FALSE;
    }

    if(bRedraw)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor);
        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        
        bPreShowPanel = MM_TRUE;
        bRet = MM_TRUE;
    }
    else
    {
        if(!bShow)
        {
            if(bPreShowPanel)
            {
                bPreShowPanel = MM_FALSE;
                WGUIF_ClsScreen(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, TIMESHIFT_PANEL_WIDTH, TIMESHIFT_PANEL_HEIGHT);
                return MM_TRUE;
            }
            else
            {
                return MM_FALSE;
            }
        }
    }

    if(MLMF_PVR_IsPlay())
    {
        MLMF_PVR_PlaybackGetTime(&u32CurTime, &u32Duration);
        if(iSeekTime != -1)
        {
            u32CurTime = iSeekTime;
        }
    }
    else
    {
        return bRet;
    }

    font_h = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);

    eSpeed = MLMF_PVR_PlaybackGetSpeed();
    if(eSpeed == MM_ERROR_UNKNOW)
    {
        return bRet;
    }

    s32PlaybmpSpeed_W = BMPF_GetBMPWidth(m_ui_PVR_play_button_playIfor) + 5 + WGUIF_FNTGetTxtWidth(strlen(speedstr[4]), speedstr[4])+5;
    s32PlaybmpSpeed_H = BMPF_GetBMPHeight(m_ui_PVR_play_button_playIfor);
    s32PlaybmpSpeed_X = TIMESHIFT_PLAYBMPSPEED_X;
    s32PlaybmpSpeed_Y = TIMESHIFT_PLAYBMPSPEED_Y;

    if(ePreSpeed != eSpeed || bRedraw)
    {
        switch(eSpeed)
        {
            case MPVR_PLAYBACK_SPEED_0X:
                pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_suspendIfor);
                break;

            case MPVR_PLAYBACK_SPEED_1X:
                pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_playIfor);
                break;
                
            case MPVR_PLAYBACK_SPEED_2XFF:
            case MPVR_PLAYBACK_SPEED_4XFF:
            case MPVR_PLAYBACK_SPEED_8XFF:
            case MPVR_PLAYBACK_SPEED_16XFF:
            case MPVR_PLAYBACK_SPEED_32XFF:
                pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_fastforwardIfor);
                break;

            case MPVR_PLAYBACK_SPEED_2XFB:
            case MPVR_PLAYBACK_SPEED_4XFB:
            case MPVR_PLAYBACK_SPEED_8XFB:
            case MPVR_PLAYBACK_SPEED_16XFB:
            case MPVR_PLAYBACK_SPEED_32XFB:
                pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_fastbackwardIfor);
                break;

            default:
                pstFramBmp = MM_NULL;
                break;

        }

        switch(eSpeed)
        {
            case MPVR_PLAYBACK_SPEED_2XFF:
            case MPVR_PLAYBACK_SPEED_2XFB:
                str = speedstr[0];
                break;
                
            case MPVR_PLAYBACK_SPEED_4XFF:
            case MPVR_PLAYBACK_SPEED_4XFB:
                str = speedstr[1];
                break;
                    
            case MPVR_PLAYBACK_SPEED_8XFF:
            case MPVR_PLAYBACK_SPEED_8XFB:
                str = speedstr[2];
                break;
                    
            case MPVR_PLAYBACK_SPEED_16XFF:
            case MPVR_PLAYBACK_SPEED_16XFB:
                str = speedstr[3];
                break;
                    
            case MPVR_PLAYBACK_SPEED_32XFF:
            case MPVR_PLAYBACK_SPEED_32XFB:
                str = speedstr[4];
                break;

            default:
                break;
        }

        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, s32PlaybmpSpeed_X, s32PlaybmpSpeed_Y-TIMESHIFT_PANEL_Y, s32PlaybmpSpeed_W, s32PlaybmpSpeed_H, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

        if (pstFramBmp)
        {
            WGUIF_DisplayReginTrueColorBmp(s32PlaybmpSpeed_X, s32PlaybmpSpeed_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        }
        s32YOffset = (s32PlaybmpSpeed_H - WGUIF_GetFontHeight())/2;
        s32XOffset = pstFramBmp->bWidth + 5;
        if(str && pstFramBmp)
        {
            WGUIF_FNTDrawTxt(s32PlaybmpSpeed_X+s32XOffset, s32PlaybmpSpeed_Y+s32YOffset, strlen(str), str, FONT_FRONT_COLOR_WHITE);
        }

        ePreSpeed = eSpeed;
        bRet = MM_TRUE;
    }

    if(u32CurTime != uPreCurTime || u32Duration != uPreDuration || bRedraw)
    {
        s32Progress_W = TIMESHIFT_PROGRESS_WIDTH;
        s32Progress_H = BMPF_GetBMPHeight(m_ui_Volume_progress_bg_MiddleIfor);
        s32Progress_X = TIMESHIFT_PLAYBMPSPEED_X + s32PlaybmpSpeed_W;
        s32Progress_Y = TIMESHIFT_PLAYBMPSPEED_Y + (s32PlaybmpSpeed_H - s32Progress_H)/2;

        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, s32Progress_X, s32Progress_Y-TIMESHIFT_PANEL_Y, s32Progress_W, s32Progress_H, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

        uif_ShareDrawCombinHBar(s32Progress_X,s32Progress_Y,
                                                TIMESHIFT_PROGRESS_WIDTH,
                                                BMPF_GetBMP(m_ui_Volume_progress_bg_LeftIfor),
                                                BMPF_GetBMP(m_ui_Volume_progress_bg_MiddleIfor),
                                                BMPF_GetBMP(m_ui_Volume_progress_bg_RightIfor));

        iLen = BMPF_GetBMPWidth(m_ui_Volume_progress_LeftIfor) + BMPF_GetBMPWidth(m_ui_Volume_progress_RightIfor);
        iTemp = u32CurTime*TIMESHIFT_PROGRESS_WIDTH/u32Duration;
        if(u32CurTime == 0)
        {
            iTemp = 0;
        }
        else if(iTemp < iLen)
        {
            iTemp = iLen;
        }

        if(iTemp != 0)
        {
            uif_ShareDrawCombinHBar(s32Progress_X,s32Progress_Y,
                                                    iTemp,
                                                    BMPF_GetBMP(m_ui_Volume_progress_LeftIfor),
                                                    BMPF_GetBMP(m_ui_Volume_progress_MiddleIfor),
                                                    BMPF_GetBMP(m_ui_Volume_progress_RightIfor));
        }

        if(u32CurTime < 3600)
        {
            sprintf(strBuff, "%02d:%02d", u32CurTime/60, u32CurTime%60);
        }
        else
        {
            sprintf(strBuff, "%02d:%02d:%02d", u32CurTime/3600, (u32CurTime%3600)/60, (u32CurTime%3600)%60);
            
        }
        s32CurTime_W = WGUIF_FNTGetTxtWidth(strlen(timestr), timestr) + 5;
        s32CurTime_H = WGUIF_GetFontHeight()+4;
        s32CurTime_X = s32Progress_X + (s32Progress_W - s32CurTime_W)/2;
        s32CurTime_Y = s32Progress_Y - s32CurTime_H - 5;
        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, s32CurTime_X, s32CurTime_Y-TIMESHIFT_PANEL_Y, s32CurTime_W, s32CurTime_H, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

        WGUIF_FNTDrawTxt(s32CurTime_X, s32CurTime_Y+2, strlen(strBuff), strBuff, FONT_FRONT_COLOR_WHITE);

        if(u32Duration < 3600)
        {
            sprintf(strBuff, "%02d:%02d", u32Duration/60, u32Duration%60);
        }
        else
        {
            sprintf(strBuff, "%02d:%02d:%02d", u32Duration/3600, (u32Duration%3600)/60, (u32Duration%3600)%60);
            
        }
        s32TotalTime_W = WGUIF_FNTGetTxtWidth(strlen(timestr), timestr) + 5;
        s32TotalTime_H = s32PlaybmpSpeed_H;
        s32TotalTime_X = s32Progress_X + s32Progress_W + 5;
        s32TotalTime_Y = TIMESHIFT_PLAYBMPSPEED_Y + (s32PlaybmpSpeed_H - WGUIF_GetFontHeight())/2;;
        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, s32TotalTime_X, TIMESHIFT_PLAYBMPSPEED_Y-TIMESHIFT_PANEL_Y, s32TotalTime_W, s32TotalTime_H, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

        WGUIF_FNTDrawTxt(s32TotalTime_X, s32TotalTime_Y, strlen(strBuff), strBuff, FONT_FRONT_COLOR_WHITE);
        uPreCurTime = u32CurTime;
        uPreDuration = u32Duration;
        bRet = MM_TRUE;
    }
    WGUIF_SetFontHeight(font_h);
    return bRet;
}

MBT_S32 uif_Pvr(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bReinit = MM_TRUE;
    MBT_BOOL bRedrawFileInfo = MM_TRUE;
    MBT_BOOL bRedrawSpeed = MM_FALSE;
    LISTITEM stPvrList;
    MBT_S32 iLastSelect = -1;
    MBT_BOOL bRedrawPlayPanel = MM_TRUE;
    MBT_BOOL bShowPlayPanel = MM_FALSE;
    MBT_S32 iSeekTime = -1;
    MBT_U32 u32SeekStep = 0;
    MBT_U32 u8DlgDispTime = 5;
    DVB_BOX *pstBoxInfo;
    MBT_U32 iExitTime = 0;
    MBT_U16 u16EcmPid = 0x1fff;
    extern MBT_VOID srstf_SetDataScr(MBT_U8 DataScr);
#if(1 == M_CDCA)	
    extern void SetPvrEcmPid(unsigned short Ecmpid);
#endif
    srstf_SetDataScr(1);

    uif_SetMenuFlag(1);
    DBSF_PlyOpenVideoWin(MM_FALSE);
    UIF_StopAV();

    pstBoxInfo = DBSF_DataGetBoxInfo();
    u8DlgDispTime = pstBoxInfo->ucBit.ucDlgDispTime;
    iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;

    while ( !bExit )  
    {
        if(iLastSelect != -1)
        {
            if(stPvrList.iSelect/stPvrList.iPageMaxItem!= stPvrList.iPrevSelect/stPvrList.iPageMaxItem)
            {
                bRedraw = MM_TRUE;
            }
        }
        
        if ( bRedraw )
        {
            uif_SetMenuFlag(1);
            bPvrPlayFullscreen = MM_FALSE;

            if(bReinit)
            {
                Pvr_FreeTree(&uiv_stPvrTree);
                if(Pvr_CreateTree(MM_NULL, MM_FALSE))
                {
                    if(Pvr_CreateTree(uiv_stPvrTree.pstFileNode[0].u8PathName, MM_FALSE))
                    {
                        if(!Pvr_CreateTree("HBPVR", MM_TRUE))
                        {
                            Pvr_FreeTree(&uiv_stPvrTree);
                        }
                    }
                    else
                    {
                        Pvr_FreeTree(&uiv_stPvrTree);
                    }
                }
                else
                {
                    Pvr_FreeTree(&uiv_stPvrTree);
                }

                Pvr_PlayDeInit();
                Pvr_PlayInit();
                iLastSelect = -1;
                bReinit = MM_FALSE;
            }

            if(iLastSelect == -1)
            {
                iLastSelect = 0;
            }
            else
            {
                iLastSelect = stPvrList.iSelect;
            }
            Pvr_InitList(&stPvrList);
            stPvrList.iSelect = iLastSelect;
            
            Pvr_DrawPanel(&stPvrList);
            MLMF_AV_SetVideoWindow(PVR_WINDOW_X+1, PVR_WINDOW_Y+1, PVR_WINDOW_WIDTH-2, PVR_WINDOW_HEIGHT-2);

            bRedrawFileInfo = MM_TRUE;
            bRedrawSpeed = MM_TRUE;
            bRefresh = MM_TRUE;
        }

        if(bRedrawFileInfo)
        {
            Pvr_DrawFileInfo(&stPvrList);
            bRedrawFileInfo = MM_FALSE;
            bRefresh = MM_TRUE;
        }

        if(bRedrawSpeed)
        {
            Pvr_DrawSpeed();
            bRedrawSpeed = MM_FALSE;
            bRefresh = MM_TRUE;
        }
        
        bRefresh |= Pvr_DrawPlayTime();
        bRefresh |= Pvr_DrawPlayPanel(bRedrawPlayPanel, bShowPlayPanel, iSeekTime);
        bRedrawPlayPanel = MM_FALSE;

        if(!bPvrPlayFullscreen)
        {
            bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        }
        bRedraw = MM_FALSE;
        bRefresh |= UCTRF_ListOnDraw(&stPvrList);

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;							   
        }
        
        iKey = uif_ReadKey(1000);

        if(!bPvrPlayFullscreen)
        {
            UCTRF_ListGetKey(&stPvrList, iKey);
        }
        
        switch ( iKey )
        {
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
                if(!bPvrPlayFullscreen)
                {
                    bRedrawFileInfo = MM_TRUE;
                }
                break;

            case DUMMY_KEY_RIGHTARROW:
            case DUMMY_KEY_LEFTARROW:
                if(bShowPlayPanel && bPvrPlayFullscreen)
                {
                    MBT_U32 CurTime,Duration;

                    MLMF_PVR_PlaybackGetTime(&CurTime, &Duration);
                    
                    u32SeekStep = Duration/20;
                    if(u32SeekStep == 0)
                    {
                        u32SeekStep = 1;
                    }

                    if(iSeekTime == -1)
                    {
                        iSeekTime = CurTime;
                    }
                    
                    if(iKey == DUMMY_KEY_LEFTARROW)
                    {
                        iSeekTime -= u32SeekStep;
                        if(iSeekTime < 0)
                        {
                            iSeekTime = 0;
                        }
                    }
                    else
                    {
                        iSeekTime += u32SeekStep;
                        if(iSeekTime >= Duration)
                        {
                            iSeekTime = Duration-1;
                        }
                    }
                    
                    iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                    break;
                }
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
                uif_AdjustGlobalVolume(iKey);
                break;

            case DUMMY_KEY_PVR_PLAY_NOENTITLEMENT_STOP:
                if(MLMF_PVR_IsPlay())
                {
                    DBSF_PlyOpenVideoWin(MM_FALSE);
                    MLMF_PVR_PlaybackStop();
                    if(bPvrPlayFullscreen)
                    {
                        bPvrPlayFullscreen = MM_FALSE;
                    }
                }
                bReinit = bRedraw = MM_TRUE;
                uif_ShareDisplayResultDlg("Information","No Entitlement!", DLG_WAIT_TIME);
                break;

            case DUMMY_KEY_USB_IN:
            case DUMMY_KEY_USB_OUT:
                if(MLMF_PVR_IsPlay())
                {
                    DBSF_PlyOpenVideoWin(MM_FALSE);
                    MLMF_PVR_PlaybackStop();
                    if(bPvrPlayFullscreen)
                    {
                        bPvrPlayFullscreen = MM_FALSE;
                    }
                }
                bReinit = bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_PVR_PLAY_STOP:
                DBSF_PlyOpenVideoWin(MM_FALSE);
                if(bPvrPlayFullscreen)
                {
                    bPvrPlayFullscreen = MM_FALSE;
                    bRedraw = MM_TRUE;
                }
                bRedrawSpeed = MM_TRUE;
                break;

            case DUMMY_KEY_RED:
                if(MLMF_PVR_IsPlay())
                {
                    if(bPvrPlayFullscreen)
                    {
                        bPvrPlayFullscreen = MM_FALSE;
                        bRedraw = MM_TRUE;
                    }
                    else
                    {
                        uif_SetMenuFlag(0);
                        bPvrPlayFullscreen = MM_TRUE;
                        bRedrawPlayPanel = MM_TRUE;
                        bShowPlayPanel = MM_TRUE;
                        WGUIF_ClsFullScreen();
                        MLMF_AV_SetVideoWindow(0, 0, 0, 0);
                        bRedrawSpeed = MM_TRUE;
                        bRefresh = MM_TRUE;
                        iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                    }
                }
                break;

            case DUMMY_KEY_YELLOW_SUBSCRIBE:
                if(MLMF_PVR_IsPlay())
                {
                    if(bPvrPlayFullscreen)
                    {
                        break;
                    }
                    else
                    {
                        uif_ShareDisplayResultDlg("Information","Please stop playing first!", DLG_WAIT_TIME);
                        break;
                    }
                }
                else
                {
                    if(stPvrList.iNoOfItems)
                    {
                        if(uif_ShareMakeSelectDlg("Information","Are you sure to delete this PVR file?", MM_TRUE))
                        {
                            MLMF_PVR_RemoveFile(uiv_stPvrTree.pstFileNode[stPvrList.iSelect].u8PathName);
                            bReinit = bRedraw = MM_TRUE;
                        }
                    }
                }
                break;

#if 0
            case DUMMY_KEY_GREEN:
                if(MLMF_PVR_IsPlay())
                {
                    if(bPvrPlayFullscreen)
                    {
                        break;
                    }
                    else
                    {
                        uif_ShareDisplayResultDlg("Information","Please stop playing first!", DLG_WAIT_TIME);
                        break;
                    }
                }
                else
                {
                    if(uif_ShareMakeSelectDlg("Information","Are you sure to rename this PVR file?", MM_TRUE))
                    {
                        MBT_CHAR NewName[256];

                        sprintf(NewName, "New_%s", uiv_stPvrTree.pstFileNode[stPvrList.iSelect].u8PathName);
                        MLMF_PVR_RenameFile(uiv_stPvrTree.pstFileNode[stPvrList.iSelect].u8PathName, NewName);
                        bReinit = bRedraw = MM_TRUE;
                    }
                }
                break;
#endif

            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_SELECT:
                if(MLMF_PVR_IsPlay())
                {
                    if(bPvrPlayFullscreen)
                    {
                        if(bShowPlayPanel)
                        {
                            if(iSeekTime != -1)
                            {
                                MLMF_PVR_PlaybackJump(0, iSeekTime);
                                if(MLMF_PVR_PlaybackGetSpeed() != MPVR_PLAYBACK_SPEED_1X)
                                {
                                    MLMF_PVR_PlaybackSetSpeed(MPVR_PLAYBACK_SPEED_1X);
                                    bRedrawSpeed = MM_TRUE;
                                }
                                iSeekTime = -1;
                                MLMF_Task_Sleep(500);
                            }
                            else
                            {
                                Pvr_PlayPlayPause();
                                bRedrawSpeed = MM_TRUE;
                            }
                        }
                        else
                        {
                            bShowPlayPanel = MM_TRUE;
                            bRedrawPlayPanel = MM_TRUE;
                        }
                        iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                        break;
                    }
                    else
                    {
                        DBSF_PlyOpenVideoWin(MM_FALSE);
                        MLMF_PVR_PlaybackStop();
                    }
                }

                if(MM_NO_ERROR != MLMF_PVR_PlaybackStart((MBT_U8 *)uiv_stPvrTree.pstFileNode[stPvrList.iSelect].u8PathName, 0, &u16EcmPid))
                {
                    uif_ShareDisplayResultDlg("Information","Can't play!", DLG_WAIT_TIME);
                }
                else
                {
                    SCDCASServiceInfo Inew;
                    MLMF_Print("------------------------------------------------------EcmPid=%x------------------------------------------\n",u16EcmPid);
                    if(0x1FFF != u16EcmPid)
                    {
       #if(1 == M_CDCA)             
                        SetPvrEcmPid(u16EcmPid);
                        Inew.m_wEcmPid = u16EcmPid;
                        Inew.m_byServiceNum = 1;
                        Inew.m_wServiceID[0] = 0;
						
                        CDCASTB_SetEcmPid(CDCA_LIST_FIRST, NULL);
                        CDCASTB_SetEcmPid(CDCA_LIST_ADD, &Inew);
                        CDCASTB_SetEcmPid(CDCA_LIST_OK, NULL);
	#endif					
                    }
                }
                break;

            case DUMMY_KEY_INFO:
                if(!bShowPlayPanel)
                {
                    bShowPlayPanel = MM_TRUE;
                    bRedrawPlayPanel = MM_TRUE;
                }
                break;


            case DUMMY_KEY_STOP:
                if(MLMF_PVR_IsPlay())
                {
                    DBSF_PlyOpenVideoWin(MM_FALSE);
                    MLMF_PVR_PlaybackStop();
                    if(bPvrPlayFullscreen)
                    {
                        bPvrPlayFullscreen = MM_FALSE;
                        bRedraw = MM_TRUE;
                    }
                    bRedrawSpeed = MM_TRUE;
                }
                break;

            case DUMMY_KEY_START:
                if(MLMF_PVR_IsPlay())
                {
                    Pvr_PlayPlayPause();
                    bRedrawSpeed = MM_TRUE;
                    if(bPvrPlayFullscreen)
                    {
                        if(!bShowPlayPanel)
                        {
                            bShowPlayPanel = MM_TRUE;
                            bRedrawPlayPanel = MM_TRUE;
                        }
                        iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                    }
                }
                break;
                
            case DUMMY_KEY_BACKWARD:
                if(MLMF_PVR_IsPlay())
                {
                    Pvr_PlayBackward();
                    bRedrawSpeed = MM_TRUE;
                    if(bPvrPlayFullscreen)
                    {
                        if(!bShowPlayPanel)
                        {
                            bShowPlayPanel = MM_TRUE;
                            bRedrawPlayPanel = MM_TRUE;
                        }
                    }
                    iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                }
                break;
                
            case DUMMY_KEY_FORWARD:
                if(MLMF_PVR_IsPlay())
                {
                    Pvr_PlayForward();
                    bRedrawSpeed = MM_TRUE;
                    if(bPvrPlayFullscreen)
                    {
                        if(!bShowPlayPanel)
                        {
                            bShowPlayPanel = MM_TRUE;
                            bRedrawPlayPanel = MM_TRUE;
                        }
                    }
                    iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                }
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
                if(MLMF_PVR_IsPlay())
                {
                    if(bPvrPlayFullscreen)
                    {
                        if(bShowPlayPanel)
                        {
                            if(MLMF_PVR_PlaybackGetSpeed() == MPVR_PLAYBACK_SPEED_1X)
                            {
                                bShowPlayPanel = MM_FALSE;
                            }
                            iSeekTime = -1;
                            break;
                        }
                        bPvrPlayFullscreen = MM_FALSE;
                        bRedraw = MM_TRUE;
                        break;
                    }
                    else
                    {
                        DBSF_PlyOpenVideoWin(MM_FALSE);
                        MLMF_PVR_PlaybackStop();
                    }
                }
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
                if(bPvrPlayFullscreen)
                {
                    bRefresh |= UIF_SetMute();
                }
                break;

            case -1:
                if(u8DlgDispTime)
                {
                    if(MLMF_PVR_IsPlay() && bPvrPlayFullscreen)
                    {
                        if(MLMF_PVR_PlaybackGetSpeed() == MPVR_PLAYBACK_SPEED_1X)
                        {
                            if(MLMF_SYS_GetMS() >= iExitTime)
                            {
                                iSeekTime = -1;
                                bShowPlayPanel = MM_FALSE;
                            }
                        }
                        else
                        {
                            iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                        }
                    }
                    else
                    {
                        iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                    }
                }
                if(bPvrPlayFullscreen)
                {
                    bRefresh |= uif_ShowTopScreenICO();
                }
                break;

            default:
                if(0 !=  uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }
    
    Pvr_PlayDeInit();
    MLMF_AV_SetVideoWindow(0,0,0,0);
    WGUIF_ClsFullScreen();
    //MLMF_AV_OpenVideoWindow();
    srstf_SetDataScr(0);
    return iRetKey;
}

MBT_BOOL Pvr_RecordStart(void)
{
    MBT_CHAR Path[256];
    MBT_CHAR Name[256];
    UI_PRG ProgInfo ;
    UI_PRG *pstProgInfo = &ProgInfo;
    TIMER_M  stTime;
    MBT_U8 u8CardNum[CDCA_MAXLEN_SN + 20];
    CDCA_U16 PlatformId = 0;
    CDCA_U32 UniqueId = 0;
    MBT_U32  u32HashVal=0;
    SCDCAFingerInfo *pFingerInfo;
    SCDCAOSDInfo *pOsdInfo;
    extern void CDCASuperFingerGet(SCDCAFingerInfo **pFingerInfo);
    extern void CDCASuperOsdGet(SCDCAOSDInfo **pOsdInfo);

    if(MLMF_USB_GetDevVolNum() == 0)
    {
        return MM_FALSE;
    }

    RecordDevice_InitDeviceInfo();
    
    memset(u8CardNum, 0, sizeof(u8CardNum));
#if(1 == M_CDCA)	
    CDSTBCA_GetSTBID(&PlatformId, &UniqueId);
#endif

    u8CardNum[0] = ((UniqueId>>24)&0x000000ff);
    u8CardNum[1] = ((UniqueId>>16)&0x000000ff);
    u8CardNum[2] = ((UniqueId>>8)&0x000000ff);
    u8CardNum[3] = (UniqueId&0x000000ff);
    u8CardNum[4] = ((PlatformId>>8)&0x000000ff);
    u8CardNum[5] = (PlatformId&0x000000ff);
    u8CardNum[6] = 0;
    u8CardNum[7] = 0;

#if(1 == M_CDCA)	
    CDCASTB_GetCardSN((char*)(u8CardNum+8));
#endif
    u32HashVal = MMF_Common_CRCU8(u8CardNum,8+CDCA_MAXLEN_SN);

    sprintf(Path, "%s%s", pDeviceVInfo->strMountName, PVR_DIR_NAME);
    if(MM_NO_ERROR != MLMF_PVR_Init(MPVR_FS_VFAT,u32HashVal,(MBT_U8 *)Path,Pvr_GetCAOsdMsg))
    {
        return MM_FALSE;
    }

    RecordDevice_FreeDeviceInfo();

    if(DVB_INVALID_LINK == DBSF_DataCurPrgInfo(pstProgInfo))
    {
        return MM_FALSE;
    }
    TMF_GetSysTime(&stTime);
    
    MLMF_PVR_StateChangeCallback_Register(UIF_GetPvrEventMsg);

    sprintf(Name, "%s_%04d%02d%02d%02d%02d%02d%s", pstProgInfo->stService.cServiceName, stTime.year+1900, stTime.month, stTime.date, stTime.hour, stTime.minute, stTime.second, PVR_SUFFIX);
    if(MM_NO_ERROR != MLMF_PVR_RecordStart((MBT_U8 *)Name))
    {
        return MM_FALSE;
    }
#if(1 == M_CDCA)
    CDCASuperOsdGet(&pOsdInfo);
    MLMF_PVR_ExtraFile_Add((MBT_VOID*)pOsdInfo, sizeof(SCDCAOSDInfo));

    CDCASuperFingerGet(&pFingerInfo);
    MLMF_PVR_ExtraFile_Add((MBT_VOID*)pFingerInfo, sizeof(SCDCAFingerInfo));
#endif	

    return MM_TRUE;
}

void Pvr_RecordStop(void)
{  

    MLMF_PVR_StateChangeCallback_Register(MM_NULL);

    if(MM_NO_ERROR != MLMF_PVR_RecordStop())
    {
        return;
    }

    if(MM_NO_ERROR != MLMF_PVR_DeInit())
    {
        return;
    }
}

static MBT_BOOL PVRRecord_DrawTime(MBT_BOOL *bRedraw)
{
    static MBT_U32 pretime = 0xffffffff;
    static MBT_BOOL preShowRed = MM_FALSE;
    MBT_U32 curtime;
    MBT_CHAR str[16];
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32xOffset, s32yOffset, s32BmpTxt_W, font_h;
    MBT_CHAR* infostr[2][1] = 
    { 
        {
            "00:00:00",
        },
        {
            "00:00:00",
        }
    };

    font_h = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);

    s32BmpTxt_W = BMPF_GetBMPWidth(m_ui_Pvr_RedIfor) + 5 + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0])+5;
    s32yOffset = (BMPF_GetBMPHeight(m_ui_Pvr_RedIfor) - WGUIF_GetFontHeight())/2;
    s32xOffset = BMPF_GetBMPWidth(m_ui_Pvr_RedIfor) + 5;
    if(MLMF_PVR_IsRecord())
    {
        pstFramBmp = BMPF_GetBMP(m_ui_Pvr_RedIfor);
        if(*bRedraw || !preShowRed)
        {
            WGUIF_DisplayReginTrueColorBmp(PVR_TIME_FULLSCREEN_X, PVR_TIME_FULLSCREEN_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
            *bRedraw = MM_FALSE;
            preShowRed = MM_TRUE;
        }
        else
        {
            WGUIF_ClsScreen(PVR_TIME_FULLSCREEN_X, PVR_TIME_FULLSCREEN_Y, pstFramBmp->bWidth, pstFramBmp->bHeight);
            preShowRed = MM_FALSE;
        }

        curtime = MLMF_PVR_RecordGetTime();
        if(pretime != curtime)
        {
            WGUIF_ClsScreen(PVR_TIME_FULLSCREEN_X+s32xOffset, PVR_TIME_FULLSCREEN_Y, s32BmpTxt_W-s32xOffset, PVR_TIME_FULLSCREEN_HEIGHT);

            if(curtime < 3600)
            {
                sprintf(str, "%02d:%02d", curtime/60, curtime%60);
            }
            else
            {
                sprintf(str, "%02d:%02d:%02d", curtime/3600, (curtime%3600)/60, (curtime%3600)%60);
            }
            WGUIF_FNTDrawTxt(PVR_TIME_FULLSCREEN_X+s32xOffset, PVR_TIME_FULLSCREEN_Y+s32yOffset, strlen(str), str, FONT_FRONT_COLOR_WHITE);
            pretime = curtime;
        }
    }
    else
    {
        if(pretime != 0xffffffff)
        {
            WGUIF_ClsScreen(PVR_TIME_FULLSCREEN_X, PVR_TIME_FULLSCREEN_Y, s32BmpTxt_W, PVR_TIME_FULLSCREEN_HEIGHT);
            pretime = 0xffffffff;
        }
    }
    WGUIF_SetFontHeight(font_h);
    
    return MM_TRUE;
}


MBT_S32 uif_PVRRecord(MBT_S32 iPara)
{
    MBT_S32 iRetKey = DUMMY_KEY_EXIT;
    BITMAPTRUECOLOR *pstMsgBckBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgX = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstMsgBckBmp->bWidth)/2;
    MBT_S32 iMsgY = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstMsgBckBmp->bHeight)/2)-UI_DLG_OFFSET_Y;
    MBT_S32 iMsgWidth = pstMsgBckBmp->bWidth;
    MBT_S32 iMsgHeight = pstMsgBckBmp->bHeight;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_S32 iKey ;
    MBT_CHAR* infostr[2][6] = 
    { 
        {
            "Information",
            "Recording! Pease stop it first!",
            "Are you sure to stop recording?",
            "No more space in usb for recording!",
            "Fail to start recording!",
            "Timeshifting! Pease stop it first!",
        },
        {
            "Information",
            "Recording! Pease stop it first!",
            "Are you sure to stop recording?",
            "No more space in usb for recording!",
            "Fail to start recording!",
            "Timeshifting! Pease stop it first!",
        }
    };

    uif_SetMenuFlag(0);

    if(MLMF_PVR_IsRecord())
    {
        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][1], DLG_WAIT_TIME);
        return iRetKey;
    }

    if(MLMF_PVR_IsTimeshift())
    {
        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][5], DLG_WAIT_TIME);
        return iRetKey;
    }

    if(!Pvr_RecordStart())
    {
        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][4], DLG_WAIT_TIME);
        return iRetKey;
    }

    while ( !bExit )
    {
        bRefresh |= PVRRecord_DrawTime(&bRedraw);
        
        if(bRefresh)
        {
            WGUIF_ReFreshLayer();

            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey (500);
        switch(iKey)
        {
            case DUMMY_KEY_USB:                 
            case DUMMY_KEY_BLUE_EDIT:
            case DUMMY_KEY_EMAIL:
            case DUMMY_KEY_TVRADIO:
            case DUMMY_KEY_SELECT:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
            case DUMMY_KEY_MENU:                    
            case DUMMY_KEY_ENTER_SYSINFO: 
            case DUMMY_KEY_HDSD: 
            case DUMMY_KEY_BACKWARD:
            case DUMMY_KEY_FORWARD:
            case DUMMY_KEY_PREV:
            case DUMMY_KEY_NEXT:
            case DUMMY_KEY_BROWSER:
            case DUMMY_KEY_RECORDLIST:
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_RECALL:
            case DUMMY_KEY_REC:
            case DUMMY_KEY_RED:
            case DUMMY_KEY_YELLOW_SUBSCRIBE:
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
            case DUMMY_KEY_EPG:
            case DUMMY_KEY_FAV:
                uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][1], DLG_WAIT_TIME);
                break;

            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
                uif_AdjustGlobalVolume(iKey);
                break;

            case DUMMY_KEY_USB_OUT:
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_PVR_RECORD_NOSPACE:
                uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][3], DLG_WAIT_TIME);
                break;

            case DUMMY_KEY_EXIT:          
            case DUMMY_KEY_STOP:
                if(uif_ShareMakeSelectDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2], MM_TRUE))
                {
                    bExit = MM_TRUE;
                }
                break;

            case DUMMY_KEY_AUDIOTRACK:
                uif_ChannelSet(0);
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_ACTIONREQUEST_INITIALIZESTB:  
                break;
#if NETWORK_LOCK
            case DUMMY_KEY_FORCE_NETLOCK: 
                //MLMF_Print("desktop DUMMY_KEY_FORCE_NETLOCK\n");
                WDCtrF_PutWindow(uif_NetWorkLock, 0);
                iRetKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
#endif    
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;

            case DUMMY_KEY_GREEN:
                uif_ChnInfoExt(1);
                uif_ResetAlarmMsgFlag();
                iRetKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
            case DUMMY_KEY_INFO:  
                uif_DrawChannel();
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_LANG:
                uif_AudioLanguageShortCut(0);
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_POWER:
                UIF_SendKeyToUi(DUMMY_KEY_POWER);
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGUPDATE:                                        
                if(-1 == uif_GetPrgUpdateMsg())
                {
                    break;
                }
                WDCtrF_PutWindow(uif_SrchPrg,AUTO_SRCH_MODE_FROM_MAINFRENQ);
                iRetKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_PATCHING_PROCESS:
            case DUMMY_KEY_RECEIVEPATCH_PROCESS:      
                uif_ShowCaProcess(iKey);
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGLISTUPDATED:
                uif_ResetAlarmMsgFlag();
                uif_DrawChannel();
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_BOOKED_TIMEREVENT:      
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
    }
    Pvr_RecordStop();
    uif_ResetAlarmMsgFlag();
    return iKey;
}

static MBT_BOOL Pvr_TimeshiftStart(void)
{
    MBT_CHAR Path[256];
    DVB_BOX *pBoxinfo = DBSF_DataGetBoxInfo();
    MBT_U8 TimeshiftSize = pBoxinfo->ucBit.u8TimeshiftSize;
    MBT_ULONG TimeshiftSizeByte = (TimeshiftSize+1)*512*1024*1024;
    MBT_U8 u8CardNum[CDCA_MAXLEN_SN + 20];
    CDCA_U16 PlatformId = 0;
    CDCA_U32 UniqueId = 0;
    MBT_U32  u32HashVal=0;

    if(MLMF_USB_GetDevVolNum() == 0)
    {
        return MM_FALSE;
    }

    RecordDevice_InitDeviceInfo();

    memset(u8CardNum, 0, sizeof(u8CardNum));
#if(1 == M_CDCA)	
    CDSTBCA_GetSTBID(&PlatformId, &UniqueId);
#endif

    u8CardNum[0] = ((UniqueId>>24)&0x000000ff);
    u8CardNum[1] = ((UniqueId>>16)&0x000000ff);
    u8CardNum[2] = ((UniqueId>>8)&0x000000ff);
    u8CardNum[3] = (UniqueId&0x000000ff);
    u8CardNum[4] = ((PlatformId>>8)&0x000000ff);
    u8CardNum[5] = (PlatformId&0x000000ff);
    u8CardNum[6] = 0;
    u8CardNum[7] = 0;

#if(1 == M_CDCA)	
    CDCASTB_GetCardSN((char*)(u8CardNum+8));
#endif

    u32HashVal = MMF_Common_CRCU8(u8CardNum,8+CDCA_MAXLEN_SN);

    sprintf(Path, "%s%s", pDeviceVInfo->strMountName, PVR_DIR_NAME);
    if(MM_NO_ERROR != MLMF_PVR_Init(MPVR_FS_VFAT,u32HashVal,(MBT_U8 *)Path,Pvr_GetCAOsdMsg))
    {
        return MM_FALSE;
    }

    RecordDevice_FreeDeviceInfo();

    MLMF_PVR_StateChangeCallback_Register(UIF_GetPvrEventMsg);

    if(MM_NO_ERROR != MLMF_PVR_TimeshiftStart(TimeshiftSizeByte))
    {
        return MM_FALSE;
    }
    return MM_TRUE;
}

static void Pvr_TimeshiftStop(void)
{  

    MLMF_PVR_StateChangeCallback_Register(MM_NULL);

    if(MM_NO_ERROR != MLMF_PVR_TimeshiftStop())
    {
        MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return;
    }

    if(MM_NO_ERROR != MLMF_PVR_DeInit())
    {
        MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
        return;
    }
    MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
}

static void Pvr_TimeshiftPlayPause(void)
{
    MMT_PVR_PlaybackSpeed_e eSpeed = MLMF_PVR_TimeshiftPlayGetSpeed();
    MMT_PVR_PlaybackSpeed_e eMISpeed;

    switch(eSpeed)
    {
        case MPVR_PLAYBACK_SPEED_0X:
            MLMF_PVR_TimeshiftPlayResume();
            return;

        case MPVR_PLAYBACK_SPEED_1X:
            MLMF_PVR_TimeshiftPlayPause();
            return;

        default:
            eMISpeed = MPVR_PLAYBACK_SPEED_1X;
            break;
    }

    MLMF_PVR_TimeshiftPlaySetSpeed(eMISpeed);
}

static void Pvr_TimeshiftForward(void)
{
    MMT_PVR_PlaybackSpeed_e eSpeed = MLMF_PVR_TimeshiftPlayGetSpeed();
    MMT_PVR_PlaybackSpeed_e eMISpeed;

    switch(eSpeed)
    {
        case MPVR_PLAYBACK_SPEED_0X:
            return;

        case MPVR_PLAYBACK_SPEED_1X:
            eMISpeed = MPVR_PLAYBACK_SPEED_2XFF;
            break;

        case MPVR_PLAYBACK_SPEED_2XFF:
            eMISpeed = MPVR_PLAYBACK_SPEED_4XFF;
            break;

        case MPVR_PLAYBACK_SPEED_4XFF:
            eMISpeed = MPVR_PLAYBACK_SPEED_8XFF;
            break;

        case MPVR_PLAYBACK_SPEED_8XFF:
            eMISpeed = MPVR_PLAYBACK_SPEED_16XFF;
            break;

        case MPVR_PLAYBACK_SPEED_16XFF:
            eMISpeed = MPVR_PLAYBACK_SPEED_32XFF;
            break;

        default:
            eMISpeed = MPVR_PLAYBACK_SPEED_1X;
            break;
    }

    MLMF_PVR_TimeshiftPlaySetSpeed(eMISpeed);
}

static void Pvr_TimeshiftBackward(void)
{
    MMT_PVR_PlaybackSpeed_e eSpeed = MLMF_PVR_TimeshiftPlayGetSpeed();
    MMT_PVR_PlaybackSpeed_e eMISpeed;

    switch(eSpeed)
    {
        case MPVR_PLAYBACK_SPEED_0X:
            return;

        case MPVR_PLAYBACK_SPEED_1X:
            eMISpeed = MPVR_PLAYBACK_SPEED_2XFB;
            break;

        case MPVR_PLAYBACK_SPEED_2XFB:
            eMISpeed = MPVR_PLAYBACK_SPEED_4XFB;
            break;

        case MPVR_PLAYBACK_SPEED_4XFB:
            eMISpeed = MPVR_PLAYBACK_SPEED_8XFB;
            break;

        case MPVR_PLAYBACK_SPEED_8XFB:
            eMISpeed = MPVR_PLAYBACK_SPEED_16XFB;
            break;

        case MPVR_PLAYBACK_SPEED_16XFB:
            eMISpeed = MPVR_PLAYBACK_SPEED_32XFB;
            break;

        default:
            eMISpeed = MPVR_PLAYBACK_SPEED_1X;
            break;
    }

    MLMF_PVR_TimeshiftPlaySetSpeed(eMISpeed);
}

static MBT_BOOL Timeshift_DrawPanel(MBT_BOOL bRedraw, MBT_BOOL bShow, MBT_S32 iSeekTime)
{
    MBT_CHAR strBuff[16];
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 iLen;
    static MMT_PVR_PlaybackSpeed_e ePreSpeed = MPVR_PLAYBACK_SPEED_32XFF;
    MMT_PVR_PlaybackSpeed_e eSpeed = MLMF_PVR_TimeshiftPlayGetSpeed();
    MBT_U32 u32CurTime,u32Duration;
    static MBT_U32 uPreCurTime=0,uPreDuration=0;
    MBT_S32 iTemp = 0;
    MBT_BOOL bRet = MM_FALSE;
    MBT_CHAR *speedstr[] = {"X2", "X4", "X8", "X16", "X32"};
    MBT_CHAR *timestr = "00:00:00";
    MBT_CHAR *str = MM_NULL;
    static MBT_BOOL bPreShowPanel = MM_FALSE;
    MBT_S32 font_h = 0;
    MBT_S32 s32PlaybmpSpeed_W, s32PlaybmpSpeed_H, s32PlaybmpSpeed_X, s32PlaybmpSpeed_Y;
    MBT_S32 s32Progress_W, s32Progress_H, s32Progress_X, s32Progress_Y;
    MBT_S32 s32CurTime_W, s32CurTime_H, s32CurTime_X, s32CurTime_Y;
    MBT_S32 s32TotalTime_W, s32TotalTime_H, s32TotalTime_X, s32TotalTime_Y;
    
    MBT_S32 s32XOffset, s32YOffset; 

    if(bRedraw)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor);
        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

        bPreShowPanel = MM_TRUE;
        bRet = MM_TRUE;
    }
    else
    {
        if(!bShow)
        {
            if(bPreShowPanel)
            {
                bPreShowPanel = MM_FALSE;
                WGUIF_ClsScreen(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, TIMESHIFT_PANEL_WIDTH, TIMESHIFT_PANEL_HEIGHT);
                return MM_TRUE;
            }
            else
            {
                return MM_FALSE;
            }
        }
    }

    if(MLMF_PVR_IsTimeshiftPlay())
    {
        if(MM_NO_ERROR != MLMF_PVR_TimeshiftPlayGetTime(&u32CurTime, &u32Duration))
        {
            return MM_FALSE;
        }

        if(iSeekTime != -1)
        {
            u32CurTime = iSeekTime;
        }
    }
    else
    {
        if(iSeekTime != -1)
        {
            u32CurTime = iSeekTime;
        }
        else
        {
            u32CurTime = 0;
        }
        u32Duration = MLMF_PVR_TimeshiftGetTime();

        if(u32Duration == 0)
        {
            return bRet;
        }
    }
    font_h = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);

    s32PlaybmpSpeed_W = BMPF_GetBMPWidth(m_ui_PVR_play_button_playIfor) + 5 + WGUIF_FNTGetTxtWidth(strlen(speedstr[4]), speedstr[4])+5;
    s32PlaybmpSpeed_H = BMPF_GetBMPHeight(m_ui_PVR_play_button_playIfor);
    s32PlaybmpSpeed_X = TIMESHIFT_PLAYBMPSPEED_X;
    s32PlaybmpSpeed_Y = TIMESHIFT_PLAYBMPSPEED_Y;

    if(ePreSpeed != eSpeed || bRedraw)
    {
        switch(eSpeed)
        {
            case MPVR_PLAYBACK_SPEED_0X:
                pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_suspendIfor);
                break;

            case MPVR_PLAYBACK_SPEED_1X:
                pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_playIfor);
                break;
                
            case MPVR_PLAYBACK_SPEED_2XFF:
            case MPVR_PLAYBACK_SPEED_4XFF:
            case MPVR_PLAYBACK_SPEED_8XFF:
            case MPVR_PLAYBACK_SPEED_16XFF:
            case MPVR_PLAYBACK_SPEED_32XFF:
                pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_fastforwardIfor);
                break;

            case MPVR_PLAYBACK_SPEED_2XFB:
            case MPVR_PLAYBACK_SPEED_4XFB:
            case MPVR_PLAYBACK_SPEED_8XFB:
            case MPVR_PLAYBACK_SPEED_16XFB:
            case MPVR_PLAYBACK_SPEED_32XFB:
                pstFramBmp = BMPF_GetBMP(m_ui_PVR_play_button_fastbackwardIfor);
                break;

            default:
                pstFramBmp = MM_NULL;
                break;

        }

        switch(eSpeed)
        {
            case MPVR_PLAYBACK_SPEED_2XFF:
            case MPVR_PLAYBACK_SPEED_2XFB:
                str = speedstr[0];
                break;
                
            case MPVR_PLAYBACK_SPEED_4XFF:
            case MPVR_PLAYBACK_SPEED_4XFB:
                str = speedstr[1];
                break;
                    
            case MPVR_PLAYBACK_SPEED_8XFF:
            case MPVR_PLAYBACK_SPEED_8XFB:
                str = speedstr[2];
                break;
                    
            case MPVR_PLAYBACK_SPEED_16XFF:
            case MPVR_PLAYBACK_SPEED_16XFB:
                str = speedstr[3];
                break;
                    
            case MPVR_PLAYBACK_SPEED_32XFF:
            case MPVR_PLAYBACK_SPEED_32XFB:
                str = speedstr[4];
                break;

            default:
                break;
        }

        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, s32PlaybmpSpeed_X, s32PlaybmpSpeed_Y-TIMESHIFT_PANEL_Y, s32PlaybmpSpeed_W, s32PlaybmpSpeed_H, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

        if (pstFramBmp)
        {
            WGUIF_DisplayReginTrueColorBmp(s32PlaybmpSpeed_X, s32PlaybmpSpeed_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        }
        s32YOffset = (s32PlaybmpSpeed_H - WGUIF_GetFontHeight())/2;
        s32XOffset = pstFramBmp->bWidth + 5;
        if(str && pstFramBmp)
        {
            WGUIF_FNTDrawTxt(s32PlaybmpSpeed_X+s32XOffset, s32PlaybmpSpeed_Y+s32YOffset, strlen(str), str, FONT_FRONT_COLOR_WHITE);
        }

        ePreSpeed = eSpeed;
        bRet = MM_TRUE;
    }

    if(u32CurTime != uPreCurTime || u32Duration != uPreDuration || bRedraw)
    {
        s32Progress_W = TIMESHIFT_PROGRESS_WIDTH;
        s32Progress_H = BMPF_GetBMPHeight(m_ui_Volume_progress_bg_MiddleIfor);
        s32Progress_X = TIMESHIFT_PLAYBMPSPEED_X + s32PlaybmpSpeed_W;
        s32Progress_Y = TIMESHIFT_PLAYBMPSPEED_Y + (s32PlaybmpSpeed_H - s32Progress_H)/2;

        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, s32Progress_X, s32Progress_Y-TIMESHIFT_PANEL_Y, s32Progress_W, s32Progress_H, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);
  
        uif_ShareDrawCombinHBar(s32Progress_X,s32Progress_Y,
                                                s32Progress_W,
                                                BMPF_GetBMP(m_ui_Volume_progress_bg_LeftIfor),
                                                BMPF_GetBMP(m_ui_Volume_progress_bg_MiddleIfor),
                                                BMPF_GetBMP(m_ui_Volume_progress_bg_RightIfor));

        iLen = BMPF_GetBMPWidth(m_ui_Volume_progress_LeftIfor) + BMPF_GetBMPWidth(m_ui_Volume_progress_RightIfor);
        iTemp = u32CurTime*TIMESHIFT_PROGRESS_WIDTH/u32Duration;
        if(u32CurTime == 0)
        {
            iTemp = 0;
        }
        else if(iTemp < iLen)
        {
            iTemp = iLen;
        }

        if(iTemp != 0)
        {
            uif_ShareDrawCombinHBar(s32Progress_X,s32Progress_Y,
                                                    iTemp,
                                                    BMPF_GetBMP(m_ui_Volume_progress_LeftIfor),
                                                    BMPF_GetBMP(m_ui_Volume_progress_MiddleIfor),
                                                    BMPF_GetBMP(m_ui_Volume_progress_RightIfor));
        }

        if(u32CurTime < 3600)
        {
            sprintf(strBuff, "%02d:%02d", u32CurTime/60, u32CurTime%60);
        }
        else
        {
            sprintf(strBuff, "%02d:%02d:%02d", u32CurTime/3600, (u32CurTime%3600)/60, (u32CurTime%3600)%60);
            
        }
        s32CurTime_W = WGUIF_FNTGetTxtWidth(strlen(timestr), timestr) + 5;
        s32CurTime_H = WGUIF_GetFontHeight()+4;
        s32CurTime_X = s32Progress_X + (s32Progress_W - s32CurTime_W)/2;
        s32CurTime_Y = s32Progress_Y - s32CurTime_H - 5;
        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, s32CurTime_X, s32CurTime_Y-TIMESHIFT_PANEL_Y, s32CurTime_W, s32CurTime_H, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

        WGUIF_FNTDrawTxt(s32CurTime_X, s32CurTime_Y+2, strlen(strBuff), strBuff, FONT_FRONT_COLOR_WHITE);

        if(u32Duration < 3600)
        {
            sprintf(strBuff, "%02d:%02d", u32Duration/60, u32Duration%60);
        }
        else
        {
            sprintf(strBuff, "%02d:%02d:%02d", u32Duration/3600, (u32Duration%3600)/60, (u32Duration%3600)%60);
            
        }

        s32TotalTime_W = WGUIF_FNTGetTxtWidth(strlen(timestr), timestr) + 5;
        s32TotalTime_H = s32PlaybmpSpeed_H;
        s32TotalTime_X = s32Progress_X + s32Progress_W + 5;
        s32TotalTime_Y = TIMESHIFT_PLAYBMPSPEED_Y + (s32PlaybmpSpeed_H - WGUIF_GetFontHeight())/2;;
        WGUIF_DisplayReginTrueColorBmp(TIMESHIFT_PANEL_X, TIMESHIFT_PANEL_Y, s32TotalTime_X, TIMESHIFT_PLAYBMPSPEED_Y-TIMESHIFT_PANEL_Y, s32TotalTime_W, s32TotalTime_H, BMPF_GetBMP(m_ui_MainMenu_Bottom_BarIfor), MM_TRUE);

        WGUIF_FNTDrawTxt(s32TotalTime_X, s32TotalTime_Y, strlen(strBuff), strBuff, FONT_FRONT_COLOR_WHITE);
        uPreCurTime = u32CurTime;
        uPreDuration = u32Duration;
        bRet = MM_TRUE;
    }
    WGUIF_SetFontHeight(font_h);
    return bRet;
}

MBT_S32 uif_Timeshift(MBT_S32 iPara)
{
    MBT_S32 iRetKey = DUMMY_KEY_EXIT;
    BITMAPTRUECOLOR *pstMsgBckBmp = BMPF_GetBMP(m_ui_Msg_backgroundIfor);
    MBT_S32 iMsgX = P_MENU_LEFT+(OSD_REGINMAXWIDHT -pstMsgBckBmp->bWidth)/2;
    MBT_S32 iMsgY = (P_MENU_TOP + (OSD_REGINMAXHEIGHT - pstMsgBckBmp->bHeight)/2)-UI_DLG_OFFSET_Y;
    MBT_S32 iMsgWidth = pstMsgBckBmp->bWidth;
    MBT_S32 iMsgHeight = pstMsgBckBmp->bHeight;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bShowPanel = MM_TRUE;
    MBT_S32 iSeekTime = -1;
    MBT_U32 u32SeekStep = 0;
    MBT_S32 iKey;
    MBT_U32 u8DlgDispTime = 5;
    DVB_BOX *pstBoxInfo;
    MBT_U32 iExitTime = 0;
    MBT_CHAR* infostr[2][7] = 
    { 
        {
            "Information",
            "Recording! Pease stop it first!",
            "Are you sure to stop timeshift?",
            "No more space in usb for timeshift!",
            "Fail to start timeshift!",
            "Timeshifting! Pease stop it first!",
            "Fail to start timeshift play!",
        },
        {
            "Information",
            "Recording! Pease stop it first!",
            "Are you sure to stop timeshift?",
            "No more space in usb for timeshift!",
            "Fail to start timeshift!",
            "Timeshifting! Pease stop it first!",
            "Fail to start timeshift play!",
        }
    };

    uif_SetMenuFlag(0);

    if(MLMF_PVR_IsRecord())
    {
        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][1], DLG_WAIT_TIME);
        return iRetKey;
    }

    if(MLMF_PVR_IsTimeshift())
    {
        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][5], DLG_WAIT_TIME);
        return iRetKey;
    }

    if(!Pvr_TimeshiftStart())
    {
        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][4], DLG_WAIT_TIME);
        return iRetKey;
    }

    pstBoxInfo = DBSF_DataGetBoxInfo();
    u8DlgDispTime = pstBoxInfo->ucBit.ucDlgDispTime;
    iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;

    while ( !bExit )
    {
        bRefresh |= Timeshift_DrawPanel(bRedraw, bShowPanel, iSeekTime);
        bRedraw = MM_FALSE;

        if(bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey (500);
        switch(iKey)
        {
            case DUMMY_KEY_USB:                 
            case DUMMY_KEY_EMAIL:
            case DUMMY_KEY_TVRADIO:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
            case DUMMY_KEY_MENU:                    
            case DUMMY_KEY_ENTER_SYSINFO: 
            case DUMMY_KEY_HDSD: 
            case DUMMY_KEY_PREV:
            case DUMMY_KEY_NEXT:
            case DUMMY_KEY_BROWSER:
            case DUMMY_KEY_RECORDLIST:
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_RECALL:
            case DUMMY_KEY_REC:
            case DUMMY_KEY_RED:
            case DUMMY_KEY_GREEN:
            case DUMMY_KEY_YELLOW_SUBSCRIBE:
            case DUMMY_KEY_BLUE_EDIT:
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
            case DUMMY_KEY_EPG:
            case DUMMY_KEY_FAV:
                uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][1], DLG_WAIT_TIME);
                break;
                
            case DUMMY_KEY_USB_OUT:
                bExit = MM_TRUE;
                break;
            
            case DUMMY_KEY_SELECT:
                if(!MLMF_PVR_IsTimeshiftPlay())
                {
                    UIF_StopAV();

                    if(MM_NO_ERROR != MLMF_PVR_TimeshiftPlayStart())
                    {
                        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][6], DLG_WAIT_TIME);
                        bExit = MM_TRUE;
                    }
                    
                    if(iSeekTime != -1)
                    {
                        MLMF_PVR_TimeshiftPlayJump(0, iSeekTime);
                        iSeekTime = -1;
                        MLMF_Task_Sleep(500);
                    }
                }
                else
                {
                    if(bShowPanel)
                    {
                        if(iSeekTime != -1)
                        {
                            MLMF_PVR_TimeshiftPlayJump(0, iSeekTime);
                            if(MLMF_PVR_TimeshiftPlayGetSpeed() != MPVR_PLAYBACK_SPEED_1X)
                            {
                                MLMF_PVR_TimeshiftPlaySetSpeed(MPVR_PLAYBACK_SPEED_1X);
                            }
                            iSeekTime = -1;
                            MLMF_Task_Sleep(500);
                        }
                        else
                        {
                            Pvr_TimeshiftPlayPause();
                        }
                    }
                    else
                    {
                        bShowPanel = MM_TRUE;
                        bRedraw = MM_TRUE;
                    }
                }
                iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                break;

            case DUMMY_KEY_INFO:
                if(!bShowPanel)
                {
                    bShowPanel = MM_TRUE;
                    bRedraw = MM_TRUE;
                }
                break;

            case DUMMY_KEY_START:
                if(!MLMF_PVR_IsTimeshiftPlay())
                {
                    UIF_StopAV();

                    if(MM_NO_ERROR != MLMF_PVR_TimeshiftPlayStart())
                    {
                        uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][6], DLG_WAIT_TIME);
                        bExit = MM_TRUE;
                    }
                    
                    if(iSeekTime != -1)
                    {
                        MLMF_PVR_TimeshiftPlayJump(0, iSeekTime);
                        iSeekTime = -1;
                        MLMF_Task_Sleep(500);
                    }
                }
                else
                {
                    Pvr_TimeshiftPlayPause();
                    if(!bShowPanel)
                    {
                        bShowPanel = MM_TRUE;
                        bRedraw = MM_TRUE;
                    }
                }
                iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                break;

            case DUMMY_KEY_EXIT:
                if(bShowPanel)
                {
                    if(MLMF_PVR_TimeshiftPlayGetSpeed() == MPVR_PLAYBACK_SPEED_1X)
                    {
                        bShowPanel = MM_FALSE;
                    }
                    iSeekTime = -1;
                    break;
                }
            case DUMMY_KEY_STOP:
                if(uif_ShareMakeSelectDlg(infostr[uiv_u8Language][0],infostr[uiv_u8Language][2], MM_TRUE))
                {
                    bExit = MM_TRUE;
                }
                break;

            case DUMMY_KEY_RIGHTARROW:
            case DUMMY_KEY_LEFTARROW:
                if(bShowPanel)
                {
                    u32SeekStep = MLMF_PVR_TimeshiftGetTime()/20;
                    if(u32SeekStep == 0)
                    {
                        u32SeekStep = 1;
                    }

                    if(iSeekTime == -1)
                    {
                        if(MLMF_PVR_IsTimeshiftPlay())
                        {
                            MBT_U32 CurTime,Duration;
                            MLMF_PVR_TimeshiftPlayGetTime(&CurTime, &Duration);
                            iSeekTime = CurTime;
                        }
                        else
                        {
                            iSeekTime = 0;
                        }
                    }
                    
                    if(iKey == DUMMY_KEY_LEFTARROW)
                    {
                        iSeekTime -= u32SeekStep;
                        if(iSeekTime < 0)
                        {
                            iSeekTime = 0;
                        }
                    }
                    else
                    {
                        iSeekTime += u32SeekStep;
                        if(iSeekTime >= MLMF_PVR_TimeshiftGetTime())
                        {
                            iSeekTime = MLMF_PVR_TimeshiftGetTime()-1;
                        }
                    }
                    
                    iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                    break;
                }
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
                uif_AdjustGlobalVolume(iKey);
                break;

            case DUMMY_KEY_BACKWARD:
                Pvr_TimeshiftBackward();
                if(!bShowPanel)
                {
                    bShowPanel = MM_TRUE;
                    bRedraw = MM_TRUE;
                }
                iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                break;
                
            case DUMMY_KEY_FORWARD:
                Pvr_TimeshiftForward();
                if(!bShowPanel)
                {
                    bShowPanel = MM_TRUE;
                    bRedraw = MM_TRUE;
                }
                iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                break;

            case DUMMY_KEY_PVR_RECORD_NOSPACE:
                uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][3], DLG_WAIT_TIME);
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_AUDIOTRACK:
                uif_ChannelSet(0);
                bRefresh = MM_TRUE;
                break;

            case DUMMY_KEY_ACTIONREQUEST_INITIALIZESTB:  
                break;
#if NETWORK_LOCK
            case DUMMY_KEY_FORCE_NETLOCK: 
                //MLMF_Print("desktop DUMMY_KEY_FORCE_NETLOCK\n");
                WDCtrF_PutWindow(uif_NetWorkLock, 0);
                iRetKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;
#endif    
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;

            case DUMMY_KEY_POWER:
                UIF_SendKeyToUi(DUMMY_KEY_POWER);
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGUPDATE:                                        
                if(-1 == uif_GetPrgUpdateMsg())
                {
                    break;
                }
                WDCtrF_PutWindow(uif_SrchPrg,AUTO_SRCH_MODE_FROM_MAINFRENQ);
                iRetKey = DUMMY_KEY_ADDWINDOW;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_PATCHING_PROCESS:
            case DUMMY_KEY_RECEIVEPATCH_PROCESS:      
                uif_ShowCaProcess(iKey);
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_PRGLISTUPDATED:
                uif_ResetAlarmMsgFlag();
                uif_DrawChannel();
                bRefresh = MM_TRUE;
                break;
                
            case DUMMY_KEY_BOOKED_TIMEREVENT:      
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

            case -1:
                if(u8DlgDispTime)
                {
                    if(MLMF_PVR_IsTimeshiftPlay())
                    {
                        if(MLMF_PVR_TimeshiftPlayGetSpeed() == MPVR_PLAYBACK_SPEED_1X)
                        {
                            if(MLMF_SYS_GetMS() >= iExitTime)
                            {
                                iSeekTime = -1;
                                bShowPanel = MM_FALSE;
                            }
                        }
                        else
                        {
                            iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                        }
                    }
                    else
                    {
                        iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                    }
                }
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
    }

    Pvr_TimeshiftStop();
    uif_ResetAlarmMsgFlag();
    return iKey;
}


