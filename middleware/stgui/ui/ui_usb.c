#include "ui_share.h"
#include "mlm_mplayer.h"
#include "mlm_osd.h"
#include "wgui.h"
#include "envopt.h"

#define USB_BROSWER_LISTITEMS_PERPAGE 8
#define USB_BROSWER_WIDTH      (1083)
#define USB_BROSWER_HEIGHT     (600)
#define USB_BROSWER_X          (98)
#define USB_BROSWER_Y          (60) 
#define USB_BROSWER_BAKGROUND_COLOUR 0xffa2b5cd
//#define USB_BROSWER_ITEM_BAK_COLOUR 0xff213a84
//#define USB_BROSWER_ITEM_FRONT_COLOUR 0xfffc9b07
#define USB_BROSWER_ITEM_BAK_COLOUR 0xffa2b5cd
#define USB_BROSWER_ITEM_FRONT_COLOUR 0xff515151
#define USB_MAX_UNIT_PER_PAGE 8 /*每页包含的条目数*/
#define USB_ITEM_WIDTH 876
#define USB_ITEM_HEIGHT 45//40
#define USB_ITEM_GAP 0
#define USBMAIN_LISTITEMS_NUM 2
#define UM_ITEM_HEIGHT        56
#define UM_ITEM_WIDTH         650
#define UM_ITEM_DISTANCE      10
#define UM_LEFTLIST_AREA_X    90
#define UM_LEFTLIST_AREA_Y    135
#define MEDIAPLAYER_X         200
#define MEDIAPLAYER_Y         555
#define MEDIAPLAYER_PROGRESSBAR_LENGTH  598 // 减掉button长度630-42
#define MEDIAPLAYER_VIDEOMSG_PROGRESSBAR_TIME     10

#define MEDIA_WINDOW_X 730
#define MEDIA_WINDOW_Y 140 
#define MEDIA_WINDOW_WIDTH 445
#define MEDIA_WINDOW_HEIGHT 250

#define USB_UPGRADE_HELP_X 0
#define USB_UPGRADE_HELP_Y 0

#define max_fileNameLen 256

#define m_MaxFileTreeNode 100

static MBT_U32 u32DurTimeInS = 0;
static MBT_BOOL bVideoPause = MM_FALSE;
static MBT_BOOL bVideoSetspeed = MM_FALSE;




typedef enum _media_player_file_type
{
	MEDIA_PLAYER_FILE_VIDEO = 0,
	MEDIA_PLAYER_FILE_AUDIO = 1,
	MEDIA_PLAYER_FILE_PICTURE = 2,
	MEDIA_PLAYER_FILE_NOT_SUPPORT = 3
}MEDIA_PLAYER_FILE_TYPE;


typedef enum _USB_UNIT_TYPE_
{
	USB_UNIT_FILE=0,
	USB_UNIT_DIRECTORY=1
}usb_unit_type;

typedef struct _st_usb_file_node_
{
    MBT_CHAR u8PathName[max_fileNameLen];
    usb_unit_type eType;
}ST_USBFileNode;

typedef struct _st_file_tree_
{
    MBT_CHAR *pu8ParentPath;
    MBT_CHAR *pu8SelfPath;
    MBT_U32 u32FileNodeNum;
    ST_USBFileNode *pstFileNode;
    MBT_CHAR u8CurPath[max_fileNameLen];
}ST_FileTree;


static ST_FileTree uiv_stFileTree = {MM_NULL,MM_NULL,0,MM_NULL,{0}};

static MBT_BOOL GetNextMadieAudioFile(MBT_CHAR *pu8CurFileName,MEDIA_PLAYER_FILE_TYPE eType);
static MBT_BOOL GetPrevMadieAudioFile(MBT_CHAR *pu8CurFileName,MEDIA_PLAYER_FILE_TYPE eType);
static MBT_BOOL UsbIsUpgrade_bin(MBT_CHAR *file_name);

static MBT_VOID USB_MediaPlayerDisplayPlayBackForward(MEDIA_PLAYER_FILE_TYPE eFileType)
{
    MEDIA_PLAYER_SPEED_e eSpeed = 1;
    MBT_U8 u8DrawSpeed = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR Drawspeed[5] = {0};
    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 550, 10, 100, 30, pstFramBmp, MM_FALSE);

    if(eFileType == MEDIA_PLAYER_FILE_VIDEO)
    {
        eSpeed = MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_VIDEO);
    }
    else if(eFileType == MEDIA_PLAYER_FILE_AUDIO)
    {
        eSpeed = MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_AUDIO);
    }
    MLUI_DEBUG("---> Get speed = %d",eSpeed);
    switch(eSpeed)
    {
        case PLAY_SPEED_BACKWARD_32X:
        case PLAY_SPEED_FORWARD_32X:
            u8DrawSpeed = 32;
            break;

        case PLAY_SPEED_BACKWARD_16X:
        case PLAY_SPEED_FORWARD_16X:
            u8DrawSpeed = 16;
            break;

        case PLAY_SPEED_BACKWARD_8X:
        case PLAY_SPEED_FORWARD_8X:
            u8DrawSpeed = 8;
            break;
        
        case PLAY_SPEED_BACKWARD_4X:
        case PLAY_SPEED_FORWARD_4X:
            u8DrawSpeed = 4;
            break;

        case PLAY_SPEED_BACKWARD_2X:
        case PLAY_SPEED_FORWARD_2X:
            u8DrawSpeed = 2;
            break;
            
        case PLAY_SPEED_1X:
            u8DrawSpeed = 1;
            MLMF_AV_SetMute(MM_FALSE);
            break;

        case PLAY_SPEED_0:
            break;
    }
    
    if(eSpeed < 0)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_USB_play_button_fastbackwardIfor);
        WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        sprintf(Drawspeed, "x%d", u8DrawSpeed);
        WGUIF_FNTDrawTxt(MEDIAPLAYER_X+595, MEDIAPLAYER_Y+15, strlen(Drawspeed), Drawspeed, FONT_FRONT_COLOR_WHITE);
    }
    else if(eSpeed == 0)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_USB_play_button_suspendIfor);
        WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    }
    else if(eSpeed == 1)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_USB_play_button_playIfor);
        WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    }
    else if(eSpeed >1)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_USB_play_button_fastforwardIfor);
        WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        sprintf(Drawspeed, "x%d", u8DrawSpeed);
        WGUIF_FNTDrawTxt(MEDIAPLAYER_X+595, MEDIAPLAYER_Y+15, strlen(Drawspeed), Drawspeed, FONT_FRONT_COLOR_WHITE);
    }
}

static MBT_BOOL USB_MediaPlayerDrawPanel(MEDIA_PLAYER_FILE_TYPE eFileType,MBT_CHAR *pu8FileName)
{
    BITMAPTRUECOLOR *pstFramBmp;
    if(eFileType == MEDIA_PLAYER_FILE_AUDIO)
    {
        pstFramBmp = BMPF_GetBMP(m_ui_SubMemu_background_bigIfor);
        WGUIF_DisplayReginTrueColorBmp(0, 0, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);

        pstFramBmp = BMPF_GetBMP(m_ui_USB_play_radio_bgIfor);
        WGUIF_DisplayReginTrueColorBmp(432, 164, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_FALSE);
    }
    
    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);    

    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_progressbarIfor);
    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+10, MEDIAPLAYER_Y+55, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_progressbar_buttonIfor);
    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+10+43, MEDIAPLAYER_Y+55, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    USB_MediaPlayerDisplayPlayBackForward(eFileType);

    WGUIF_FNTDrawTxt(MEDIAPLAYER_X+20, MEDIAPLAYER_Y+20, strlen(pu8FileName), pu8FileName, FONT_FRONT_COLOR_WHITE);
    return MM_TRUE;
}

static MBT_BOOL USB_MediaPlayerDrawDurTime(MEDIA_PLAYER_FILE_TYPE eFileType)
{
    MBT_U32 hour = 0;
    MBT_U32 min  = 0;
    MBT_U32 sec = 0;
    MBT_CHAR DurTime[10] = {0};
    BITMAPTRUECOLOR *pstFramBmp;

    MLMF_MPLAYER_GetDuration(&u32DurTimeInS, (MMT_MPLAYER_Type_e)eFileType);

    hour = u32DurTimeInS / 3600;
    min = (u32DurTimeInS - (hour * 3600)) / 60;
    sec = u32DurTimeInS - hour * 3600 - min * 60;
    if(eFileType == MEDIA_PLAYER_FILE_AUDIO)
    {
        if(hour != 0)
        {
            sprintf(DurTime, "|  %02d:%02d:%02d", hour, min, sec);
        }
        else
        {
            sprintf(DurTime, "|  %02d:%02d", min, sec);
        }
        pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
        WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 760, 20, 90, 25, pstFramBmp, MM_FALSE);
        WGUIF_FNTDrawTxt(MEDIAPLAYER_X+760, MEDIAPLAYER_Y+20, strlen(DurTime), DurTime, FONT_FRONT_COLOR_WHITE);
    }
    else if(eFileType == MEDIA_PLAYER_FILE_VIDEO)
    {
        sprintf(DurTime, "%02d:%02d:%02d", hour, min, sec);
        pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
        WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 760, 60, 90, 25, pstFramBmp, MM_FALSE);
        WGUIF_FNTDrawTxt(MEDIAPLAYER_X+760, MEDIAPLAYER_Y+60, strlen(DurTime), DurTime, FONT_FRONT_COLOR_WHITE);
    }
    return MM_TRUE;
}

static MBT_BOOL USB_MediaPlayerDrawProgresstime(MEDIA_PLAYER_FILE_TYPE eFileType)
{
    MBT_U32 cur_hour = 0;
    MBT_U32 cur_min  = 0;
    MBT_U32 cur_sec = 0;
    MBT_CHAR CurTime[10] = {0};
    MBT_U32 u32CurTimeInS = 0;
    static MBT_U32 u32PreTimeInMs = 0;
    BITMAPTRUECOLOR *pstFramBmp;

    MLMF_MPLAYER_GetCurrentTime(&u32CurTimeInS,(MMT_MPLAYER_Type_e)eFileType);
    MLMF_MPLAYER_GetDuration(&u32DurTimeInS, (MMT_MPLAYER_Type_e)eFileType);

    if(u32CurTimeInS <= u32DurTimeInS)
    {
        //MLUI_DEBUG("---> u32CurTimeInS = %d,u32PreTimeInMs = %d",u32CurTimeInS,u32PreTimeInMs);
        if((u32CurTimeInS != u32PreTimeInMs)||(u32CurTimeInS == 0))
        { 
            cur_hour = u32CurTimeInS / 3600;
            cur_min = (u32CurTimeInS - (cur_hour * 3600)) / 60;
            cur_sec = u32CurTimeInS - cur_hour * 3600 - cur_min * 60;
            if(eFileType == MEDIA_PLAYER_FILE_AUDIO)
            {
                if(cur_hour != 0)
                {
                    sprintf(CurTime, "%02d:%02d:%02d",cur_hour,cur_min,cur_sec);  
                    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
                    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 670, 20, 80, 25, pstFramBmp, MM_FALSE);
                    WGUIF_FNTDrawTxt(MEDIAPLAYER_X+670, MEDIAPLAYER_Y+20, strlen(CurTime), CurTime, FONT_FRONT_COLOR_WHITE);
                }
                else
                {
                    sprintf(CurTime, "%02d:%02d",cur_min,cur_sec);
                    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
                    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 700, 20, 60, 25, pstFramBmp, MM_FALSE);
                    WGUIF_FNTDrawTxt(MEDIAPLAYER_X+700, MEDIAPLAYER_Y+20, strlen(CurTime), CurTime, FONT_FRONT_COLOR_WHITE);
                }
            }
            else if(eFileType == MEDIA_PLAYER_FILE_VIDEO)
            {
                sprintf(CurTime, "%02d:%02d:%02d",cur_hour,cur_min,cur_sec);  
                pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
                WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 730, 20, 200, 25, pstFramBmp, MM_FALSE);
                WGUIF_FNTDrawTxt(MEDIAPLAYER_X+760, MEDIAPLAYER_Y+20, strlen(CurTime), CurTime, FONT_FRONT_COLOR_WHITE);
            }
            u32PreTimeInMs = u32CurTimeInS;
        }
    }
    else if(u32CurTimeInS == u32DurTimeInS)
    {
        return MM_FALSE;
    }
    return MM_TRUE;
}

static MBT_BOOL USB_MediaPlayerDrawProgressbar(MEDIA_PLAYER_FILE_TYPE eFileType)
{
    MBT_U32 u32CurTimeInS = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_U16 u16ProgressLength = 0;
    static MBT_U32 u32PreProgressbarTime = 0;
         
    MLMF_MPLAYER_GetCurrentTime(&u32CurTimeInS,(MMT_MPLAYER_Type_e)eFileType);
    MLMF_MPLAYER_GetDuration(&u32DurTimeInS, (MMT_MPLAYER_Type_e)eFileType);

    if(u32CurTimeInS < u32DurTimeInS)
    {
        if((u32CurTimeInS - u32PreProgressbarTime) > 3)
        { 
            u16ProgressLength = (u32CurTimeInS * MEDIAPLAYER_PROGRESSBAR_LENGTH)/ u32DurTimeInS;
            pstFramBmp = BMPF_GetBMP(m_ui_USB_play_progressbarIfor);
            WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+10, MEDIAPLAYER_Y+55, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

            pstFramBmp = BMPF_GetBMP(m_ui_USB_play_progressbar_greenIfor);
            uif_ShareFillRectWithBmp(MEDIAPLAYER_X+10+43, MEDIAPLAYER_Y+56, u16ProgressLength, pstFramBmp->bHeight, pstFramBmp);

            pstFramBmp = BMPF_GetBMP(m_ui_USB_play_progressbar_buttonIfor);
            WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+10+43+u16ProgressLength, MEDIAPLAYER_Y+55, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
            u32PreProgressbarTime = u32CurTimeInS;
        }
    }
    else if(u32CurTimeInS == u32DurTimeInS)
    {
        return MM_FALSE;
    }
    return MM_TRUE;
}

static MBT_BOOL USB_MediaPlayerDrawPic(MBT_U8 u8Icon)
{
    BITMAPTRUECOLOR *pstFramBmp;
    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 550, 0, 100, 39, pstFramBmp, MM_FALSE);

    pstFramBmp = BMPF_GetBMP(u8Icon);
    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    return MM_TRUE;
}

MEDIA_PLAYER_FILE_TYPE USB_MediaPlayerGetFileType(MBT_CHAR *file_name)
{
    MLUI_DEBUG("enter, file name = %s", file_name);
    if(strstr(file_name, ".wav") || strstr(file_name, ".WAV")
        || strstr(file_name, ".mp3") || strstr(file_name, ".MP3"))
    {
        return MEDIA_PLAYER_FILE_AUDIO;
    }
    
    if(strstr(file_name, ".mpeg2") || strstr(file_name, ".MPEG2")
        || strstr(file_name, ".m2ts") || strstr(file_name, ".M2TS")
        || strstr(file_name, ".ts") || strstr(file_name, ".TS")
        || strstr(file_name, ".avi") || strstr(file_name, ".AVI")
        || strstr(file_name, ".mkv") || strstr(file_name, ".MKV")
        || strstr(file_name, ".asf") || strstr(file_name, ".ASF")
        || strstr(file_name, ".3g2") || strstr(file_name, ".3G2")
        || strstr(file_name, ".3gp") || strstr(file_name, ".3GP")
        || strstr(file_name, ".mp4") || strstr(file_name, ".MP4")
        || strstr(file_name, ".mov") || strstr(file_name, ".MOV")
        || strstr(file_name, ".flv") || strstr(file_name, ".FLV")
        || strstr(file_name, ".f4v") || strstr(file_name, ".F4V")
        || strstr(file_name, ".vob") || strstr(file_name, ".VOB")
        || strstr(file_name, ".mov") || strstr(file_name, ".MOV"))
    {
        return MEDIA_PLAYER_FILE_VIDEO;
    }
    
    if(strstr(file_name, ".jpeg") || strstr(file_name, ".JPEG")
        || strstr(file_name, ".jpg") || strstr(file_name, ".JPG")
        || strstr(file_name, ".bmp") || strstr(file_name, ".BMP")
        || strstr(file_name, ".png") || strstr(file_name, ".PNG"))
    {
        return MEDIA_PLAYER_FILE_PICTURE;
    }
    
    return MEDIA_PLAYER_FILE_NOT_SUPPORT;
}

static MBT_S32 uif_MediaPlayerAudio(MBT_CHAR *pu8FilePath,MBT_CHAR *pu8FileName)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bPause = MM_FALSE;
    MBT_BOOL bSetspeed = MM_FALSE;
    MBT_CHAR u8FilePath[max_fileNameLen];
    MBT_CHAR* infostr[2][4] =
    {
        {
            "Confirm",
            "Playing exit?",
            "The Media is over,Thanks!",
            "Can't find files you needed!",
        },

        {
            "Confirm",
            "Playing exit?",
            "The Media is over,Thanks!",
            "Can't find files you needed!",
        },
	};
	MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;

    MLMF_MPLAYER_Start(pu8FilePath,MPLAYER_TYPE_AUDIO);

    while ( !bExit )  
    {
        if ( bRedraw )
        {
            bRefresh |= USB_MediaPlayerDrawPanel(MEDIA_PLAYER_FILE_AUDIO,pu8FileName);
            bRedraw = MM_FALSE;
        }
        
        bRefresh |= USB_MediaPlayerDrawDurTime(MEDIA_PLAYER_FILE_AUDIO);
        bRefresh |= USB_MediaPlayerDrawProgresstime(MEDIA_PLAYER_FILE_AUDIO);
        bRefresh |= USB_MediaPlayerDrawProgressbar(MEDIA_PLAYER_FILE_AUDIO);
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE; 
        }

        iKey = uif_ReadKey(950);
        switch ( iKey )
        {
            case DUMMY_KEY_SELECT:
                if(MM_TRUE == bSetspeed)
                {
                    bSetspeed = MM_FALSE;
                    USB_MediaPlayerDrawPic(m_ui_USB_play_button_playIfor);
                    MLMF_MPLAYER_SetSpeed(PLAY_SPEED_1X, MPLAYER_TYPE_AUDIO);
                    MLMF_AV_SetMute(MM_FALSE);
                }
                else
                {
                    if(MM_FALSE == bPause)
                    {
                        bPause = MM_TRUE;
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_suspendIfor);
                        MLMF_MPLAYER_Pause(MPLAYER_TYPE_AUDIO);
                    }
                    else
                    {
                        bPause = MM_FALSE;
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_playIfor);
                        MLMF_MPLAYER_Resume(MPLAYER_TYPE_AUDIO);
                    }
                }
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_BACKWARD:
                if(MM_FALSE == bPause)
                {
                    if(PLAY_SPEED_BACKWARD_8X != MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_AUDIO))
                    {
                        bSetspeed = MM_TRUE;
                        MLMF_MPLAYER_SetSpeed(PLAY_SPEED_BACKWARD_8X,MPLAYER_TYPE_AUDIO);
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_fastbackwardIfor);
                        MLMF_AV_SetMute(MM_TRUE);
                    }
                }
                break;

            case DUMMY_KEY_FORWARD:
                if(MM_FALSE == bPause)
                {
                    if(PLAY_SPEED_FORWARD_8X != MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_AUDIO))
                    {
                        bSetspeed = MM_TRUE;
                        MLMF_MPLAYER_SetSpeed(PLAY_SPEED_FORWARD_8X,MPLAYER_TYPE_AUDIO);
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_fastforwardIfor);
                        MLMF_AV_SetMute(MM_TRUE);
                    }
                }
                break;
            case DUMMY_KEY_UPARROW:
                if(MM_FALSE == GetPrevMadieAudioFile(pu8FileName,MEDIA_PLAYER_FILE_AUDIO))
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][3], 10);
                    break;
                }

                MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
                u8FilePath[0] = 0;
                strcpy(u8FilePath,uiv_stFileTree.u8CurPath);
                strcat(u8FilePath,pu8FileName);
                MLMF_MPLAYER_Start(u8FilePath, MPLAYER_TYPE_AUDIO);
                bRedraw = MM_TRUE;
                break;
            case DUMMY_KEY_DNARROW:
                if(MM_FALSE == GetNextMadieAudioFile(pu8FileName,MEDIA_PLAYER_FILE_AUDIO))
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][3], 10);
                    break;
                }
                MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
                u8FilePath[0] = 0;
                strcpy(u8FilePath,uiv_stFileTree.u8CurPath);
                strcat(u8FilePath,pu8FileName);
                MLMF_MPLAYER_Start(u8FilePath, MPLAYER_TYPE_AUDIO);
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_START:
                if(MM_TRUE == bSetspeed)
                {
                    bSetspeed = MM_FALSE;
                    USB_MediaPlayerDrawPic(m_ui_USB_play_button_playIfor);
                    MLMF_MPLAYER_SetSpeed(PLAY_SPEED_1X, MPLAYER_TYPE_AUDIO);
                    MLMF_AV_SetMute(MM_FALSE);
                }
                else
                {
                    if(MM_TRUE == bPause)
                    {
                        bPause = MM_FALSE;
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_playIfor);
                        MLMF_MPLAYER_Resume(MPLAYER_TYPE_AUDIO);
                        bRefresh = MM_TRUE;
                    }                
                }
                break;

            case DUMMY_KEY_PAUSE:
                if(MM_FALSE == bSetspeed)
                {
                    if(MM_FALSE == bPause)
                    {
                        bPause = MM_TRUE;
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_suspendIfor);
                        MLMF_MPLAYER_Pause(MPLAYER_TYPE_AUDIO);
                        bRefresh = MM_TRUE;
                    }
                }
                break;

            case DUMMY_KEY_EXIT:
                if(MM_TRUE == bPause)
                {
                    pMsgTitle = infostr[uiv_u8Language][0];
                    pMsgContent = infostr[uiv_u8Language][1];
                    if (MM_TRUE == uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE))
                    {
                        MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
                        iRetKey = iKey;
                        bExit = MM_TRUE;
                    }
                }
                else
                {
                    if(PLAY_SPEED_1X != MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_AUDIO))
                    {
                        MLMF_AV_SetMute(MM_FALSE);
                    }
                    MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
                    iRetKey = iKey;
                    bExit = MM_TRUE;
                }
                break;
                
            case DUMMY_KEY_MENU:            
            case DUMMY_KEY_BACK:
            case DUMMY_KEY_STOP:
            case DUMMY_KEY_RECALL:
                if(PLAY_SPEED_1X != MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_AUDIO))
                {
                    MLMF_AV_SetMute(MM_FALSE);
                }
                MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
                iRetKey = iKey;
                bExit = MM_TRUE;
                break;
           
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                uif_AdjustGlobalVolume(iKey);
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;

            case DUMMY_KEY_USB_OUT:
                if(PLAY_SPEED_1X != MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_AUDIO))
                {
                    MLMF_AV_SetMute(MM_FALSE);
                }
                MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;  
            
            case -1:
                if(MLMF_MPLAYER_GetStatus(MPLAYER_TYPE_AUDIO) == MPLAYER_STATUS_DONE)
                {
                    pMsgTitle = infostr[uiv_u8Language][0];
                    pMsgContent = infostr[uiv_u8Language][2];
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][2], 10);
                    if(PLAY_SPEED_1X != MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_AUDIO))
                    {
                        MLMF_AV_SetMute(MM_FALSE);
                    }
                    MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
                    iRetKey = iKey;
                    bExit = MM_TRUE;
                }
                break;
                
            default:
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    if(PLAY_SPEED_1X != MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_AUDIO))
                    {
                        MLMF_AV_SetMute(MM_FALSE);
                    }
                    MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
                    bExit = MM_TRUE;
                }
                break;
        }
    }   
    MLMF_MPLAYER_Stop(MPLAYER_TYPE_AUDIO);
    MLMF_MPLAYERTerm();
    WGUIF_ClsFullScreen();
    return iRetKey;
}

static MBT_VOID USB_MediaPlayerVideoBackForward(MBT_S32 iKey)
{
    MEDIA_PLAYER_SPEED_e eSpeed = MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_VIDEO);
    MBT_U8 u8DrawSpeed = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR Drawspeed[5] = {0};
    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
    WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X, MEDIAPLAYER_Y, 550, 0, 100, 39, pstFramBmp, MM_FALSE);
    
    if(DUMMY_KEY_BACKWARD == iKey)
    {
        switch(eSpeed)
        {
            case PLAY_SPEED_FORWARD_2X:
            case PLAY_SPEED_FORWARD_4X:
            case PLAY_SPEED_FORWARD_8X:
            case PLAY_SPEED_FORWARD_16X:
            case PLAY_SPEED_FORWARD_32X:
                eSpeed = PLAY_SPEED_1X;
                u8DrawSpeed = 1;
                MLMF_AV_SetMute(MM_FALSE);
                break;
                
            case PLAY_SPEED_1X:
                eSpeed = PLAY_SPEED_BACKWARD_2X;
                u8DrawSpeed = 2;
                break;
                
            case PLAY_SPEED_BACKWARD_2X:
                eSpeed = PLAY_SPEED_BACKWARD_4X;
                u8DrawSpeed = 4;
                break;

            case PLAY_SPEED_BACKWARD_4X:
                eSpeed = PLAY_SPEED_BACKWARD_8X;
                u8DrawSpeed = 8;
                break;

            case PLAY_SPEED_BACKWARD_8X:
                eSpeed = PLAY_SPEED_BACKWARD_16X;
                u8DrawSpeed = 16;
                break;

            case PLAY_SPEED_BACKWARD_16X:
                eSpeed = PLAY_SPEED_BACKWARD_32X;
                u8DrawSpeed = 32;
                break;

            case PLAY_SPEED_BACKWARD_32X:
                u8DrawSpeed = 32;
                break;

            case PLAY_SPEED_0:
                return;
        }
        MLMF_MPLAYER_SetSpeed(eSpeed,MPLAYER_TYPE_VIDEO);
        if(u8DrawSpeed != 1)
        {
            pstFramBmp = BMPF_GetBMP(m_ui_USB_play_button_fastbackwardIfor);
            WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
            sprintf(Drawspeed, "x%d", u8DrawSpeed);
            WGUIF_FNTDrawTxt(MEDIAPLAYER_X+595, MEDIAPLAYER_Y+15, strlen(Drawspeed), Drawspeed, FONT_FRONT_COLOR_WHITE);
        }
        else
        {
            pstFramBmp = BMPF_GetBMP(m_ui_USB_play_button_playIfor);
            WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        }
    }
    else if(DUMMY_KEY_FORWARD == iKey)
    {
        switch(eSpeed)
        {
            case PLAY_SPEED_BACKWARD_32X:
            case PLAY_SPEED_BACKWARD_16X:
            case PLAY_SPEED_BACKWARD_8X:
            case PLAY_SPEED_BACKWARD_4X:
            case PLAY_SPEED_BACKWARD_2X:
                eSpeed = PLAY_SPEED_1X;
                u8DrawSpeed = 1;
                MLMF_AV_SetMute(MM_FALSE);
                break;
                
            case PLAY_SPEED_1X:
                eSpeed = PLAY_SPEED_FORWARD_2X;
                u8DrawSpeed = 2;
                break;
                
            case PLAY_SPEED_FORWARD_2X:
                eSpeed = PLAY_SPEED_FORWARD_4X;
                u8DrawSpeed = 4;
                break;

            case PLAY_SPEED_FORWARD_4X:
                eSpeed = PLAY_SPEED_FORWARD_8X;
                u8DrawSpeed = 8;
                break;

            case PLAY_SPEED_FORWARD_8X:
                eSpeed = PLAY_SPEED_FORWARD_16X;
                u8DrawSpeed = 16;
                break;

            case PLAY_SPEED_FORWARD_16X:
                eSpeed = PLAY_SPEED_FORWARD_32X;
                u8DrawSpeed = 32;
                break;

            case PLAY_SPEED_FORWARD_32X:
                u8DrawSpeed = 32;
                break;

            case PLAY_SPEED_0:
                return;
        }
        MLMF_MPLAYER_SetSpeed(eSpeed,MPLAYER_TYPE_VIDEO);
        if(u8DrawSpeed != 1)
        {
            pstFramBmp = BMPF_GetBMP(m_ui_USB_play_button_fastforwardIfor);
            WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
            sprintf(Drawspeed, "x%d", u8DrawSpeed);
            WGUIF_FNTDrawTxt(MEDIAPLAYER_X+595, MEDIAPLAYER_Y+15, strlen(Drawspeed), Drawspeed, FONT_FRONT_COLOR_WHITE);
        }
        else
        {
            pstFramBmp = BMPF_GetBMP(m_ui_USB_play_button_playIfor);
            WGUIF_DisplayReginTrueColorBmp(MEDIAPLAYER_X+550, MEDIAPLAYER_Y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
        }
    }
}

MBT_VOID USB_MediaPlayerVideoMsgProgressbar(MBT_U32 u32DisappearTime,MBT_CHAR *pu8FileName)
{    
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 iKey;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_U32 u8DlgDispTime = 10;
    MBT_U32 iExitTime = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR u8FilePath[max_fileNameLen];
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_CHAR* infostr[2][4] =
    {
        {
            "Confirm",
            "Playing exit?",
            "The Media is over,Thanks!",
            "Can't find files you needed!",
        },

        {
            "Confirm",
            "Playing exit?",
            "The Media is over,Thanks!",
            "Can't find files you needed!",
        },
    };
	MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;
    
    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= USB_MediaPlayerDrawPanel(MEDIA_PLAYER_FILE_VIDEO,pu8FileName);
            iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
            bRedraw = MM_FALSE;
        }
        
        bRefresh |= USB_MediaPlayerDrawDurTime(MEDIA_PLAYER_FILE_VIDEO);
        bRefresh |= USB_MediaPlayerDrawProgresstime(MEDIA_PLAYER_FILE_VIDEO);
        bRefresh |= USB_MediaPlayerDrawProgressbar(MEDIA_PLAYER_FILE_VIDEO);
        
        if(bRefresh)
        {
            bRefresh = MM_FALSE;
            WGUIF_ReFreshLayer();
        }
        
        iKey = uif_ReadKey(950);
        switch ( iKey )
        {    
            case DUMMY_KEY_SELECT:
                iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                if(MM_TRUE == bVideoSetspeed)
                {
                    bVideoSetspeed = MM_FALSE;
                    MLMF_MPLAYER_SetSpeed(PLAY_SPEED_1X,MPLAYER_TYPE_VIDEO);
                    USB_MediaPlayerDrawPic(m_ui_USB_play_button_playIfor);
                    MLMF_AV_SetMute(MM_FALSE);
                }
                else
                {
                    if(MM_FALSE == bVideoPause)
                    {
                        bVideoPause = MM_TRUE;
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_suspendIfor);
                        MLMF_MPLAYER_Pause(MPLAYER_TYPE_VIDEO);
                    }
                    else
                    {
                        bVideoPause = MM_FALSE;
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_playIfor);
                        MLMF_MPLAYER_Resume(MPLAYER_TYPE_VIDEO);
                    }
                }
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_BACKWARD:
            case DUMMY_KEY_FORWARD:
                iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                if(MM_FALSE == bVideoPause)
                {
                    bVideoSetspeed = MM_TRUE;
                    MLMF_AV_SetMute(MM_TRUE);
                    USB_MediaPlayerVideoBackForward(iKey);
                    if(PLAY_SPEED_1X == MLMF_MPLAYER_GetSpeed(MPLAYER_TYPE_VIDEO))
                    {
                        bVideoSetspeed = MM_FALSE;
                    }
                }
                break;

            case DUMMY_KEY_UPARROW:
                if(MM_FALSE == GetPrevMadieAudioFile(pu8FileName,MEDIA_PLAYER_FILE_VIDEO))
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][3], 10);
                    break;
                }

                MLMF_MPLAYER_Stop(MPLAYER_TYPE_VIDEO);
                u8FilePath[0] = 0;
                strcpy(u8FilePath,uiv_stFileTree.u8CurPath);
                strcat(u8FilePath,pu8FileName);
                MLMF_MPLAYER_Start(u8FilePath, MPLAYER_TYPE_VIDEO);
                bRedraw = MM_TRUE;
                break;
                
            case DUMMY_KEY_DNARROW:
                if(MM_FALSE == GetNextMadieAudioFile(pu8FileName,MEDIA_PLAYER_FILE_VIDEO))
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][3], 10);
                    break;
                }
                MLMF_MPLAYER_Stop(MPLAYER_TYPE_VIDEO);
                u8FilePath[0] = 0;
                strcpy(u8FilePath,uiv_stFileTree.u8CurPath);
                strcat(u8FilePath,pu8FileName);
                MLMF_MPLAYER_Start(u8FilePath, MPLAYER_TYPE_VIDEO);
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_INFO:
                if(MM_FALSE == bVideoSetspeed)
                {
                    MLMF_AV_SetMute(MM_FALSE);
                }
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_START:
                iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                if(MM_TRUE == bVideoSetspeed)
                {
                    bVideoSetspeed = MM_FALSE;
                    MLMF_MPLAYER_SetSpeed(PLAY_SPEED_1X, MPLAYER_TYPE_VIDEO);
                    USB_MediaPlayerDrawPic(m_ui_USB_play_button_playIfor);
                    MLMF_AV_SetMute(MM_FALSE);
                }
                else
                {
                    if(MM_TRUE == bVideoPause)
                    {
                        bVideoPause = MM_FALSE;
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_playIfor);
                    	MLMF_MPLAYER_Resume(MPLAYER_TYPE_VIDEO);
                        bRefresh = MM_TRUE;
                    }
                }
                break;

            case DUMMY_KEY_PAUSE:
                iExitTime = MLMF_SYS_GetMS() + u8DlgDispTime*1000;
                if(MM_FALSE == bVideoSetspeed)
                {
                    if(MM_FALSE == bVideoPause)
                    {
                        bVideoPause = MM_TRUE;
                        USB_MediaPlayerDrawPic(m_ui_USB_play_button_suspendIfor);
                        MLMF_MPLAYER_Pause(MPLAYER_TYPE_VIDEO);
                        bRefresh = MM_TRUE;
                    }
                }
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:            
            case DUMMY_KEY_BACK:
            case DUMMY_KEY_STOP:
            case DUMMY_KEY_RECALL:
                pMsgTitle = infostr[uiv_u8Language][0];
                pMsgContent = infostr[uiv_u8Language][1];
                if (MM_TRUE == uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE))
                {
                    UIF_SendKeyToUi(DUMMY_KEY_EXIT_MPLAY);
                    bExit = MM_TRUE;
                }
                break;
           
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                uif_AdjustGlobalVolume(iKey);
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;

            case DUMMY_KEY_USB_OUT:
                MLMF_MPLAYER_Stop(MPLAYER_TYPE_VIDEO);
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;  
            
            case -1:
                if(MLMF_SYS_GetMS() >= iExitTime)
                {
                    bExit = MM_TRUE;
                }
                
                if(MLMF_MPLAYER_GetStatus(MPLAYER_TYPE_VIDEO) == MPLAYER_STATUS_DONE)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][2],DLG_WAIT_TIME);
                    UIF_SendKeyToUi(DUMMY_KEY_EXIT_MPLAY);
                    bExit = MM_TRUE;
                }
                    
                break;
                
            default:
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }    
    pstFramBmp = BMPF_GetBMP(m_ui_USB_play_bgIfor);
    WGUIF_ClsScreen(MEDIAPLAYER_X, MEDIAPLAYER_Y, pstFramBmp->bWidth, pstFramBmp->bHeight);
    WGUIF_ReFreshLayer();
}

static MBT_S32 uif_MediaPlayerVideo(MBT_CHAR *pu8FilePath,MBT_CHAR *pu8FileName)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_CHAR* infostr[2][3] =
    {
        {
            "Confirm",
            "Playing exit?",
            "The Media is over,Thanks!"
        },

        {
            "Confirm",
            "Playing exit?",
            "The Media is over,Thanks!"
        },
    };
	MBT_CHAR* pMsgTitle = NULL;
	MBT_CHAR* pMsgContent = NULL;
    if(MM_NULL == pu8FilePath||MM_NULL == pu8FileName)
    {
        return iRetKey;
    }
    WGUIF_ClsFullScreen();
    MLMF_MPLAYER_Start(pu8FilePath,MPLAYER_TYPE_VIDEO);
    USB_MediaPlayerVideoMsgProgressbar(MEDIAPLAYER_VIDEOMSG_PROGRESSBAR_TIME,pu8FileName);

    while ( !bExit )  
    {
        iKey = uif_ReadKey(950);
        switch ( iKey )
        {                
            case DUMMY_KEY_SELECT:
            case DUMMY_KEY_BACKWARD:
            case DUMMY_KEY_FORWARD:
            case DUMMY_KEY_START:
            case DUMMY_KEY_PAUSE:               
            case DUMMY_KEY_INFO:
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
                USB_MediaPlayerVideoMsgProgressbar(MEDIAPLAYER_VIDEOMSG_PROGRESSBAR_TIME,pu8FileName);               
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:            
            case DUMMY_KEY_BACK:
            case DUMMY_KEY_STOP:
            case DUMMY_KEY_RECALL:
                pMsgTitle = infostr[uiv_u8Language][0];
                pMsgContent = infostr[uiv_u8Language][1];
                if (MM_TRUE == uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE))
                {
                    MLMF_MPLAYER_Stop(MPLAYER_TYPE_VIDEO);
                    iRetKey = DUMMY_KEY_MENU;
                    bExit = MM_TRUE;
                }
                break;
           
            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
                uif_AdjustGlobalVolume(iKey);
                break;

            case DUMMY_KEY_MUTE:
                UIF_SetMute();
                WGUIF_ReFreshLayer();
                break;

            case DUMMY_KEY_USB_OUT:
                MLMF_MPLAYER_Stop(MPLAYER_TYPE_VIDEO);
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_EXIT_MPLAY:
                MLMF_MPLAYER_Stop(MPLAYER_TYPE_VIDEO);
                iRetKey = DUMMY_KEY_MENU;
                bExit = MM_TRUE;
                break;
            
            case -1:
                if(MLMF_MPLAYER_GetStatus(MPLAYER_TYPE_VIDEO) == MPLAYER_STATUS_DONE)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][2],DLG_WAIT_TIME);
                    MLMF_MPLAYER_Stop(MPLAYER_TYPE_VIDEO);
                    iRetKey = DUMMY_KEY_MENU;
                    bExit = MM_TRUE;
                }
                break;
                
            default:
                break;
        }
    }
    MLMF_MPLAYER_Stop(MPLAYER_TYPE_VIDEO);
    MLMF_MPLAYERTerm();
    return iRetKey;
}


#define m_PictureMoveStep 20

static MBT_S32 uif_MediaPlayerPicture(MBT_CHAR *pu8FilePath,MBT_CHAR *pu8FileName)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_CHAR u8FilePath[max_fileNameLen];

    if(MM_NULL == pu8FilePath||MM_NULL == pu8FileName)
    {
        return iRetKey;
    }

    WGUIF_ClsFullScreen();
    WGUIF_ReFreshLayer();
    MLMF_MPLAYER_Start(pu8FilePath,MPLAYER_TYPE_PHOTO);

    while ( !bExit )  
    {
        iKey = uif_ReadKey(0);
        switch ( iKey )
        {                
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:            
            case DUMMY_KEY_RECALL:
                iRetKey = DUMMY_KEY_MENU;
                bExit = MM_TRUE;
                break;
                
            case DUMMY_KEY_USB_OUT:
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_UPARROW:
                if(MM_FALSE == GetPrevMadieAudioFile(pu8FileName,MEDIA_PLAYER_FILE_PICTURE))
                {
                    break;
                }

                MLMF_MPLAYER_Stop(MEDIA_PLAYER_FILE_PICTURE);
                u8FilePath[0] = 0;
                strcpy(u8FilePath,uiv_stFileTree.u8CurPath);
                strcat(u8FilePath,pu8FileName);
                MLMF_MPLAYER_Start(u8FilePath, MPLAYER_TYPE_PHOTO);
                break;
                
            case DUMMY_KEY_DNARROW:
                if(MM_FALSE == GetNextMadieAudioFile(pu8FileName,MEDIA_PLAYER_FILE_PICTURE))
                {
                    break;
                }
                MLMF_MPLAYER_Stop(MEDIA_PLAYER_FILE_PICTURE);
                u8FilePath[0] = 0;
                strcpy(u8FilePath,uiv_stFileTree.u8CurPath);
                strcat(u8FilePath,pu8FileName);
                MLMF_MPLAYER_Start(u8FilePath, MPLAYER_TYPE_PHOTO);
                break;

            case -1:
                break;

            default:
                break;
        }
    }

    DBSF_PlyOpenVideoWin(MM_TRUE);
    DBSF_PlyOpenVideoWin(MM_FALSE);
    MLMF_MPLAYER_Stop(MPLAYER_TYPE_PHOTO);
    MLMF_MPLAYERTerm();
    return iRetKey;
}



static MBT_U8 Usb_DrawPanel(LISTITEM* pstList)
{
    MBT_U8 u8CurPage = 0;
    MBT_U8 u8TotalPage = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_CHAR *ptrTitle;
    MBT_U32 iStrlen;
    MBT_S32 helpX,helpY,s32Xoffset,s32Yoffset;
    MBT_CHAR pagestr[16];
    MBT_CHAR* usb_txt[2][5] =
    {
        {
            "Media Player",
            "Select",
            "Back",
            "Exit",
            "Page"
        },

        {
            "Media Player",
            "Select",
            "Back",
            "Exit",
            "Page"
        }
    };

    if(pstList->iNoOfItems > 0)
    {
        u8CurPage = pstList->iSelect/pstList->iPageMaxItem+1;
        u8TotalPage = (pstList->iNoOfItems-1)/pstList->iPageMaxItem+1;
    }

    ptrTitle = usb_txt[uiv_u8Language][0];
    pstFramBmp = BMPF_GetBMP(m_ui_Pvr_LogoIfor);
    uif_ShareDrawCommonPanel(ptrTitle, pstFramBmp, MM_TRUE);

#if 0
    //视频窗口
    WGUIF_ClsScreen(MEDIA_WINDOW_X, MEDIA_WINDOW_Y, MEDIA_WINDOW_WIDTH, MEDIA_WINDOW_HEIGHT);
    WGUIF_DrawFilledRectangle(MEDIA_WINDOW_X, MEDIA_WINDOW_Y, MEDIA_WINDOW_WIDTH, MEDIA_WINDOW_HEIGHT, 0xffffffff); //黑色视频窗口背景
    WGUIF_DrawFilledRectangle(MEDIA_WINDOW_X+1, MEDIA_WINDOW_Y+1, MEDIA_WINDOW_WIDTH-2, MEDIA_WINDOW_HEIGHT-2, 0x00000000); //黑色视频窗口
#endif

    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    WGUIF_FNTDrawTxt(125, 140, strlen(usb_txt[uiv_u8Language][4]), usb_txt[uiv_u8Language][4], FONT_FRONT_COLOR_WHITE);

    sprintf(pagestr, "%02d / %02d", u8CurPage, u8TotalPage);
    s32Xoffset = WGUIF_FNTGetTxtWidth(strlen(usb_txt[uiv_u8Language][4]), usb_txt[uiv_u8Language][4]) + 60;
    WGUIF_FNTDrawTxt(125+s32Xoffset, 140, strlen(pagestr), pagestr, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);

    //OK icon
    helpX = TOP_LEFT_X + 200;
    helpY = STB_SUBMENU_HELP_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
    WGUIF_DisplayReginTrueColorBmp(helpX, helpY, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    //select
    ptrTitle = usb_txt[uiv_u8Language][1];
    iStrlen = strlen(ptrTitle);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_OKIfor) - GWFONT_HEIGHT_SIZE22)/2;
    WGUIF_FNTDrawTxt(helpX + pstFramBmp->bWidth + 5, helpY + s32Yoffset, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);

    //MENU icon	
    helpX = TOP_LEFT_X + 480;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_MENUIfor);
    WGUIF_DisplayReginTrueColorBmp(helpX,helpY, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    //back
    ptrTitle = usb_txt[uiv_u8Language][2];
    iStrlen = strlen(ptrTitle);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_MENUIfor) - GWFONT_HEIGHT_SIZE22)/2;
    WGUIF_FNTDrawTxt(helpX + pstFramBmp->bWidth + 5, helpY + s32Yoffset, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);

    //EXIT icon
    helpX = TOP_LEFT_X + 750;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(helpX, helpY, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);
    ptrTitle = usb_txt[uiv_u8Language][3];
    //exit
    iStrlen = strlen(ptrTitle);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_EXITIfor) - GWFONT_HEIGHT_SIZE22)/2;
    WGUIF_FNTDrawTxt(helpX + pstFramBmp->bWidth + 5, helpY + s32Yoffset, iStrlen, ptrTitle, FONT_FRONT_COLOR_WHITE);

    return 0;
}

static MBT_VOID FreeFileTree(ST_FileTree *pstFileTree)
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

static MBT_BOOL CreateRootFileTree(ST_FileTree *pstFileTree)
{
    ST_USBFileNode *pstFileNode;
    MBT_CHAR u8TempPath[max_fileNameLen];
    MBT_U8 i;
    MBT_CHAR charPartNum = 0;

    if(MM_NULL == pstFileTree)
    {
        return MM_FALSE;
    }
    
    FreeFileTree(pstFileTree);
    
    MLMF_VFS_Init(u8TempPath,0,&charPartNum);
    if(0 == charPartNum)
    {
        return MM_FALSE;
    }

    pstFileNode = uif_ForceMalloc(m_MaxFileTreeNode*sizeof(ST_USBFileNode));
    if(MM_NULL == pstFileNode)
    {
        uif_ForceFree(pstFileNode);
        return MM_FALSE;
    }
    memset(pstFileNode,0,m_MaxFileTreeNode*sizeof(ST_USBFileNode));
    pstFileNode[0].eType = USB_UNIT_DIRECTORY;
    strcpy(pstFileNode[0].u8PathName,u8TempPath);

    for(i = 1;i < charPartNum;i++)
    {
        pstFileNode[i].eType = USB_UNIT_DIRECTORY;
        MLMF_VFS_Init(pstFileNode[i].u8PathName,i,&charPartNum);
    }
    
    memset(pstFileTree->u8CurPath,0,max_fileNameLen);
    pstFileTree->pstFileNode = pstFileNode;
    pstFileTree->u32FileNodeNum = charPartNum;
    
    return MM_TRUE;
}

/*
    pu8BinPath == NULL 表示是root目录
*/
static MBT_BOOL uif_UsbCreateBinTree(MBT_CHAR *pu8BinPath)
{
    ST_USBFileNode *pstFileNode;
    usb_unit_type eType = USB_UNIT_FILE;
    MET_VFS_DirHandle_T usbCurHandle;
    MST_VFS_DIR_T dirNode;
    MBT_U32 i;
    MBT_U32 iStrLen;
    MBT_U32 u32NodeNum;
    MMT_STB_ErrorCode_E ret;
    //MLMF_Print("uif_UsbCreateSunTree pu8SunPath  %s\n",pu8SunPath);
    /*如果是空，说明是根目录*/
    if(MM_NULL == pu8BinPath)
    {
        return CreateRootFileTree(&uiv_stFileTree);
    }

    /*在子目录中寻找相关项目*/
    pstFileNode = uiv_stFileTree.pstFileNode;
    u32NodeNum = uiv_stFileTree.u32FileNodeNum;
    for(i = 0;i < u32NodeNum;i++)
    {
        if(0 == strcmp(pu8BinPath,pstFileNode->u8PathName))
        {
            eType = pstFileNode->eType;
            break;
        }
        pstFileNode++;
    }
    /*在子目录中寻找不到相关项目，返回错误*/
    if(i >= u32NodeNum)
    {
        return MM_FALSE;
    }
    
    /*相关项目为文件不能打开*/
    if(USB_UNIT_FILE == eType)
    {
        return MM_FALSE;
    }

    /*一级子目录，需要选盘符*/
    if(MM_NULL == uiv_stFileTree.pu8SelfPath&&MM_NULL == uiv_stFileTree.pu8ParentPath)
    {
        MBT_CHAR charPartNum=0;
        MBT_CHAR u8Temp[max_fileNameLen];
        MLMF_VFS_Init(u8Temp,i,&charPartNum);
    }

    /*把自身替换父接点*/
    if(MM_NULL != uiv_stFileTree.pu8SelfPath)
    {
        if(MM_NULL == uiv_stFileTree.pu8ParentPath)
        {
            uiv_stFileTree.pu8ParentPath = uif_ForceMalloc(max_fileNameLen);
        }
        
        if(MM_NULL == uiv_stFileTree.pu8ParentPath)
        {
            FreeFileTree(&uiv_stFileTree);
            return MM_FALSE;
        }
        uiv_stFileTree.pu8ParentPath[0] = 0;
        strcpy(uiv_stFileTree.pu8ParentPath,uiv_stFileTree.pu8SelfPath);
    }
    else
    {
        if(MM_NULL != uiv_stFileTree.pu8ParentPath)
        {
            uif_ForceFree(uiv_stFileTree.pu8ParentPath);
            uiv_stFileTree.pu8ParentPath = MM_NULL;
        }
    }

    /*把子接点替换自身接点*/
    if(MM_NULL == uiv_stFileTree.pu8SelfPath)
    {
        uiv_stFileTree.pu8SelfPath = uif_ForceMalloc(max_fileNameLen);
    }

    if(MM_NULL == uiv_stFileTree.pu8SelfPath)
    {
        FreeFileTree(&uiv_stFileTree);
        return MM_FALSE;
    }

    uiv_stFileTree.pu8SelfPath[0] = 0;
    strcpy(uiv_stFileTree.pu8SelfPath,pu8BinPath);
    //MLMF_Print("uif_UsbCreateSunTree1 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    /*构建新的子接点*/     
    strcat(uiv_stFileTree.u8CurPath,pu8BinPath);
    //MLMF_Print("uif_UsbCreateSunTree2 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    usbCurHandle = MLMF_VFS_Dir_Open(uiv_stFileTree.u8CurPath);
    if(MET_VFS_INVALID_HANDLE == usbCurHandle)
    {
        FreeFileTree(&uiv_stFileTree);
        return MM_FALSE;
    }
    //MLMF_Print("uif_UsbCreateSunTree3 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    pstFileNode = uiv_stFileTree.pstFileNode;
    if(MM_NULL == pstFileNode)
    {
        pstFileNode = uif_ForceMalloc(m_MaxFileTreeNode*sizeof(ST_USBFileNode));
    }
    //MLMF_Print("uif_UsbCreateSunTree4 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    if(MM_NULL == pstFileNode)
    {
        FreeFileTree(&uiv_stFileTree);
        MLMF_VFS_Dir_Close(usbCurHandle);
        return MM_FALSE;
    }
    //MLMF_Print("uif_UsbCreateSunTree5 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    u32NodeNum = 0;
    for(i = 0;i < m_MaxFileTreeNode;i++)
    {
        memset(&dirNode,0,sizeof(dirNode));
        ret = MLMF_VFS_Dir_Read(usbCurHandle,&dirNode);
        
        if(MM_ERROR_FEATURE_NOT_SUPPORTED==ret)
        {
            continue;
        }
        else if(dirNode.flag == USB_UNIT_DIRECTORY)
        {
           continue;
        }
        else if((!strcmp(dirNode.name,"."))||(!strcmp(dirNode.name,"..")))
        {
            continue;
        }
        else if(MM_NO_ERROR != ret)
        {
           break;
        }
		if(!UsbIsUpgrade_bin(dirNode.name)){
			continue;
		}
        //MLMF_Print("uif_UsbCreateSunTree before %d pu8SelfPath %s ,pu8SunPath %s\n",u32NodeNum,uiv_stFileTree.pu8SelfPath,pu8SunPath);
        pstFileNode[u32NodeNum].eType = dirNode.flag;
        strcpy(pstFileNode[u32NodeNum].u8PathName,dirNode.name);
        //MLMF_Print("uif_UsbCreateSunTree after %d pu8SelfPath %s ,pu8SunPath %s\n",u32NodeNum,uiv_stFileTree.pu8SelfPath,pu8SunPath);
        u32NodeNum++;
    }
    //MLMF_Print("uif_UsbCreateSunTree6 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    MLMF_VFS_Dir_Close(usbCurHandle);
    iStrLen = strlen(uiv_stFileTree.u8CurPath);
    if('/' != uiv_stFileTree.u8CurPath[iStrLen-1])
    {
        uiv_stFileTree.u8CurPath[iStrLen] = '/';
        uiv_stFileTree.u8CurPath[iStrLen+1] = 0;
    }
    //MLMF_Print("uif_UsbCreateSunTree7 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    uiv_stFileTree.pstFileNode = pstFileNode;
    uiv_stFileTree.u32FileNodeNum = u32NodeNum;
    //MLMF_Print("uif_UsbCreateSunTree u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
    return MM_TRUE;
}

/*
    pu8SunPath == NULL 表示是root目录
*/
static MBT_BOOL uif_UsbCreateSunTree(MBT_CHAR *pu8SunPath)
{
    ST_USBFileNode *pstFileNode;
    usb_unit_type eType = USB_UNIT_FILE;
    MET_VFS_DirHandle_T usbCurHandle;
    MST_VFS_DIR_T dirNode;
    MBT_U32 i;
    MBT_U32 iStrLen;
    MBT_U32 u32NodeNum;
    MMT_STB_ErrorCode_E ret;
    //MLMF_Print("uif_UsbCreateSunTree pu8SunPath  %s\n",pu8SunPath);
    /*如果是空，说明是根目录*/
    if(MM_NULL == pu8SunPath)
    {
        return CreateRootFileTree(&uiv_stFileTree);
    }

    /*在子目录中寻找相关项目*/
    pstFileNode = uiv_stFileTree.pstFileNode;
    u32NodeNum = uiv_stFileTree.u32FileNodeNum;
    for(i = 0;i < u32NodeNum;i++)
    {
        if(0 == strcmp(pu8SunPath,pstFileNode->u8PathName))
        {
            eType = pstFileNode->eType;
            break;
        }
        pstFileNode++;
    }
    /*在子目录中寻找不到相关项目，返回错误*/
    if(i >= u32NodeNum)
    {
        return MM_FALSE;
    }
    
    /*相关项目为文件不能打开*/
    if(USB_UNIT_FILE == eType)
    {
        return MM_FALSE;
    }

    /*一级子目录，需要选盘符*/
    if(MM_NULL == uiv_stFileTree.pu8SelfPath&&MM_NULL == uiv_stFileTree.pu8ParentPath)
    {
        MBT_CHAR charPartNum=0;
        MBT_CHAR u8Temp[max_fileNameLen];
        MLMF_VFS_Init(u8Temp,i,&charPartNum);
    }

    /*把自身替换父接点*/
    if(MM_NULL != uiv_stFileTree.pu8SelfPath)
    {
        if(MM_NULL == uiv_stFileTree.pu8ParentPath)
        {
            uiv_stFileTree.pu8ParentPath = uif_ForceMalloc(max_fileNameLen);
        }
        
        if(MM_NULL == uiv_stFileTree.pu8ParentPath)
        {
            FreeFileTree(&uiv_stFileTree);
            return MM_FALSE;
        }
        uiv_stFileTree.pu8ParentPath[0] = 0;
        strcpy(uiv_stFileTree.pu8ParentPath,uiv_stFileTree.pu8SelfPath);
    }
    else
    {
        if(MM_NULL != uiv_stFileTree.pu8ParentPath)
        {
            uif_ForceFree(uiv_stFileTree.pu8ParentPath);
            uiv_stFileTree.pu8ParentPath = MM_NULL;
        }
    }

    /*把子接点替换自身接点*/
    if(MM_NULL == uiv_stFileTree.pu8SelfPath)
    {
        uiv_stFileTree.pu8SelfPath = uif_ForceMalloc(max_fileNameLen);
    }

    if(MM_NULL == uiv_stFileTree.pu8SelfPath)
    {
        FreeFileTree(&uiv_stFileTree);
        return MM_FALSE;
    }

    uiv_stFileTree.pu8SelfPath[0] = 0;
    strcpy(uiv_stFileTree.pu8SelfPath,pu8SunPath);
    //MLMF_Print("uif_UsbCreateSunTree1 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    /*构建新的子接点*/     
    strcat(uiv_stFileTree.u8CurPath,pu8SunPath);
    //MLMF_Print("uif_UsbCreateSunTree2 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    usbCurHandle = MLMF_VFS_Dir_Open(uiv_stFileTree.u8CurPath);
    if(MET_VFS_INVALID_HANDLE == usbCurHandle)
    {
        FreeFileTree(&uiv_stFileTree);
        return MM_FALSE;
    }
    //MLMF_Print("uif_UsbCreateSunTree3 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    pstFileNode = uiv_stFileTree.pstFileNode;
    if(MM_NULL == pstFileNode)
    {
        pstFileNode = uif_ForceMalloc(m_MaxFileTreeNode*sizeof(ST_USBFileNode));
    }
    //MLMF_Print("uif_UsbCreateSunTree4 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    if(MM_NULL == pstFileNode)
    {
        FreeFileTree(&uiv_stFileTree);
        MLMF_VFS_Dir_Close(usbCurHandle);
        return MM_FALSE;
    }
    //MLMF_Print("uif_UsbCreateSunTree5 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    u32NodeNum = 0;
    for(i = 0;i < m_MaxFileTreeNode;i++)
    {
        memset(&dirNode,0,sizeof(dirNode));
        ret = MLMF_VFS_Dir_Read(usbCurHandle,&dirNode);
        
        if(MM_ERROR_FEATURE_NOT_SUPPORTED==ret)
        {
            continue;
        }
        else if((!strcmp(dirNode.name,"."))||(!strcmp(dirNode.name,"..")))
        {
            continue;
        }
        else if(MM_NO_ERROR != ret)
        {
           break;
        }
        //MLMF_Print("uif_UsbCreateSunTree before %d pu8SelfPath %s ,pu8SunPath %s\n",u32NodeNum,uiv_stFileTree.pu8SelfPath,pu8SunPath);
        pstFileNode[u32NodeNum].eType = dirNode.flag;
        strcpy(pstFileNode[u32NodeNum].u8PathName,dirNode.name);
        //MLMF_Print("uif_UsbCreateSunTree after %d pu8SelfPath %s ,pu8SunPath %s\n",u32NodeNum,uiv_stFileTree.pu8SelfPath,pu8SunPath);
        u32NodeNum++;
    }
    //MLMF_Print("uif_UsbCreateSunTree6 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    MLMF_VFS_Dir_Close(usbCurHandle);
    iStrLen = strlen(uiv_stFileTree.u8CurPath);
    if('/' != uiv_stFileTree.u8CurPath[iStrLen-1])
    {
        uiv_stFileTree.u8CurPath[iStrLen] = '/';
        uiv_stFileTree.u8CurPath[iStrLen+1] = 0;
    }
    //MLMF_Print("uif_UsbCreateSunTree7 pu8SelfPath %s ,pu8SunPath %s\n",uiv_stFileTree.pu8SelfPath,pu8SunPath);
    uiv_stFileTree.pstFileNode = pstFileNode;
    uiv_stFileTree.u32FileNodeNum = u32NodeNum;
    //MLMF_Print("uif_UsbCreateSunTree u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
    return MM_TRUE;
}

static MBT_U32 uif_UsbExit2ParentTree(MBT_VOID)
{
    ST_USBFileNode *pstFileNode;
    MET_VFS_DirHandle_T usbCurHandle;
    MST_VFS_DIR_T dirNode;
    MBT_U32 i;
    MBT_U32 iStrLen;
    MBT_U32 u32NodeNum;
    MBT_U32 u32Selected = 0;
    MBT_CHAR *pcharFullPath;
    MBT_CHAR *pcharPos;
    MBT_CHAR *pcharEnd;
    MBT_CHAR u8PrevSelf[max_fileNameLen];
    MMT_STB_ErrorCode_E ret;

    //MLMF_Print("uif_UsbExit2ParentTree Enter u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
    if(MM_NULL == uiv_stFileTree.pu8ParentPath&&MM_NULL == uiv_stFileTree.pu8SelfPath)
    {
        return (-1);
    }

    /*如果父接点是空，说明是要退到根目录*/
    if(MM_NULL == uiv_stFileTree.pu8ParentPath)
    {
        CreateRootFileTree(&uiv_stFileTree);
        //MLMF_Print("uif_UsbExit2ParentTree exit 1 u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
        return u32Selected;
    }

    if(MM_NULL == uiv_stFileTree.pu8SelfPath)
    {
        uiv_stFileTree.pu8SelfPath = uif_ForceMalloc(max_fileNameLen);
    }
    
    if(MM_NULL == uiv_stFileTree.pu8SelfPath)
    {
        FreeFileTree(&uiv_stFileTree);
        //MLMF_Print("uif_UsbExit2ParentTree exit 2 u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
        return u32Selected;
    }
    
    strcpy(u8PrevSelf,uiv_stFileTree.pu8SelfPath);    
    uiv_stFileTree.pu8SelfPath[0] = 0;
    strcpy(uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath);
    pcharFullPath = (MBT_CHAR *)uiv_stFileTree.u8CurPath;
    pcharPos = strstr(pcharFullPath,(MBT_CHAR *)uiv_stFileTree.pu8ParentPath);
    if(MM_NULL == pcharPos)
    {
        FreeFileTree(&uiv_stFileTree);
        //MLMF_Print("uif_UsbExit2ParentTree exit 3 u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
        return u32Selected;
    }
    iStrLen = strlen((MBT_CHAR *)uiv_stFileTree.pu8ParentPath);
    if(':' == pcharPos[iStrLen-1])
    {
        pcharPos[iStrLen] = '/';
        pcharPos[iStrLen+1] = 0;
    }
    else
    {
        pcharPos[iStrLen] = 0;
    }
    if(pcharPos == pcharFullPath)
    {
        uif_ForceFree(uiv_stFileTree.pu8ParentPath);
        uiv_stFileTree.pu8ParentPath = MM_NULL;
    }
    else
    {
        --pcharPos;
        pcharEnd = pcharPos;
        --pcharPos;
        while(pcharPos > pcharFullPath)
        {
            if('/' == *pcharPos)
            {
                break;
            }
            pcharPos--;
        }
        if('/' == *pcharPos)
        {
  
            iStrLen = pcharEnd-pcharPos-1;
            memcpy(uiv_stFileTree.pu8ParentPath,pcharPos+1,iStrLen);
        }
        else
        {
            iStrLen = pcharEnd-pcharPos;
            memcpy(uiv_stFileTree.pu8ParentPath,pcharPos,iStrLen);
        }
        uiv_stFileTree.pu8ParentPath[iStrLen] = 0;
    }

    
    /*构建新的子接点*/ 
    usbCurHandle = MLMF_VFS_Dir_Open(uiv_stFileTree.u8CurPath);
    if(MET_VFS_INVALID_HANDLE == usbCurHandle)
    {
        //MLMF_Print("uif_UsbExit2ParentTree exit 4 u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
        FreeFileTree(&uiv_stFileTree);
        return u32Selected;
    }

    pstFileNode = uiv_stFileTree.pstFileNode;
    if(MM_NULL == pstFileNode)
    {
        pstFileNode = uif_ForceMalloc(m_MaxFileTreeNode*sizeof(ST_USBFileNode));
    }
    if(MM_NULL == pstFileNode)
    {
        //MLMF_Print("uif_UsbExit2ParentTree exit 5 u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
        FreeFileTree(&uiv_stFileTree);
        MLMF_VFS_Dir_Close(usbCurHandle);
        return u32Selected;
    }

    u32NodeNum = 0;
    for(i = 0;i < m_MaxFileTreeNode;i++)
    {
        memset(&dirNode,0,sizeof(dirNode));
        ret = MLMF_VFS_Dir_Read(usbCurHandle,&dirNode);
        
        if(MM_ERROR_FEATURE_NOT_SUPPORTED==ret)
        {
            continue;
        }
        else if((!strcmp(dirNode.name,"."))||(!strcmp(dirNode.name,"..")))
        {
            continue;
        }
        else if(MM_NO_ERROR != ret)
        {
           break;
        }

        pstFileNode[u32NodeNum].eType = dirNode.flag;
        strcpy(pstFileNode[u32NodeNum].u8PathName,dirNode.name);
        //MLMF_Print("dirNode.name %s pu8SelfPath %s\n",dirNode.name,uiv_stFileTree.pu8SelfPath);
        if(0 == strcmp(dirNode.name,u8PrevSelf))
        {
            u32Selected = u32NodeNum;
        }
        u32NodeNum++;
    }
    MLMF_VFS_Dir_Close(usbCurHandle);
    iStrLen = strlen(uiv_stFileTree.u8CurPath);
    if('/' != uiv_stFileTree.u8CurPath[iStrLen-1])
    {
        uiv_stFileTree.u8CurPath[iStrLen] = '/';
        uiv_stFileTree.u8CurPath[iStrLen+1] = 0;
    }
    uiv_stFileTree.pstFileNode = pstFileNode;
    uiv_stFileTree.u32FileNodeNum = u32NodeNum;
    //MLMF_Print("uif_UsbExit2ParentTree exit 6 u8CurPath  %s,pu8SelfPath %s ,pu8ParentPath %s u32FileNodeNum %d\n",uiv_stFileTree.u8CurPath,uiv_stFileTree.pu8SelfPath,uiv_stFileTree.pu8ParentPath,uiv_stFileTree.u32FileNodeNum);
    return u32Selected;
}

static MBT_BOOL uif_FileListReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    ST_USBFileNode *pstFileNode = uiv_stFileTree.pstFileNode;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pstFileNode||iIndex >= uiv_stFileTree.u32FileNodeNum)
    {
        memset(pItem,0,2*max_fileNameLen);
        return MM_FALSE;
    }

    pstFileNode += iIndex;
    iLen = sprintf(pItem,"%s",pstFileNode->u8PathName);
    pItem[iLen] = 0;

    if (USB_UNIT_FILE == pstFileNode->eType)
    {
        pItem[max_fileNameLen] = CO_VFS_FILE;
    }
    else
    {
        pItem[max_fileNameLen] = CO_VFS_DIR;
    }
    pItem[max_fileNameLen+1] = 0;
    return MM_TRUE;
}

static MBT_BOOL UsbFileListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
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

static MBT_BOOL uif_BinListReadItem(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    ST_USBFileNode *pstFileNode = uiv_stFileTree.pstFileNode;
    
    if(MM_NULL == pItem)
    {
        return MM_FALSE;
    }

    if(MM_NULL == pstFileNode||iIndex >= uiv_stFileTree.u32FileNodeNum)
    {
        memset(pItem,0,max_fileNameLen);
        return MM_FALSE;
    }

    pstFileNode += iIndex;
    iLen = sprintf(pItem,"%s",pstFileNode->u8PathName);		
    pItem[iLen] = 0;
    
    return MM_TRUE;
}

static MBT_BOOL UsbBinListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
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
static MBT_VOID uif_BinListListInit( LISTITEM* pstList)
{
    MBT_S32 me_StartX, me_StartY;	

    me_StartX = 125;
    me_StartY = 150;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = max_fileNameLen;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = USB_BROSWER_LISTITEMS_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = 17;
    pstList->iWidth  = 1030;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iColumns = 1;
    pstList->iColPosition[0] = pstList->iColStart + 10;  

    pstList->iColWidth[0] = pstList->iWidth - 20;
    pstList->ListReadFunction = uif_BinListReadItem;
    pstList->ListDrawBar = UsbBinListDraw;
    pstList->iNoOfItems = uiv_stFileTree.u32FileNodeNum;
    pstList->cHavesScrollBar = 1;
}

static MBT_VOID uif_FileListListInit( LISTITEM* pstList)
{
    MBT_S32 me_StartX, me_StartY;	

    me_StartX = 125;
    me_StartY = 180;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = max_fileNameLen;
    pstList->stTxtDirect = MM_Txt_Left;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;
    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = USB_BROSWER_LISTITEMS_PERPAGE;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = 20;
    pstList->iWidth  = 550;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_BLACK;

    pstList->iColumns = 2;
    pstList->iColPosition[0] = pstList->iColStart + 20;  
    pstList->iColPosition[1] = pstList->iColPosition[0] + 490;  

    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[1];  
    pstList->ListReadFunction = uif_FileListReadItem;
    pstList->ListDrawBar = UsbFileListDraw;
    pstList->iNoOfItems = uiv_stFileTree.u32FileNodeNum;
    pstList->cHavesScrollBar = 1;

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;
}

static MBT_BOOL UsbIsUpgrade_bin(MBT_CHAR *file_name){
    if(strstr(file_name, ".bin"))
    {
        return MM_TRUE;
    }
	return MM_FALSE;
}
static MBT_VOID UsbUpgrade_DrawHelpInfo( MBT_VOID )
{
    MBT_S32 x;
    MBT_S32 y;
    MBT_S32 s32Yoffset, s32Xoffset;
    MBT_S32 s32FontStrlen;
    MBT_S32 font_height;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
    MBT_CHAR* infostr[2][2]=
    {
        {
            "Confirm",
            "Exit"
        },
        {
            "Confirm",
            "Exit"
        },
    };

    //Exit
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_OKIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 +  BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

	x = USB_UPGRADE_HELP_X + s32Xoffset;
    y = USB_UPGRADE_HELP_Y + UI_ICON_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    //ok
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][1]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_OKIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}
static MBT_BOOL UsbUpgrade_DrawPanel( MBT_VOID )
{
    MBT_CHAR* infostr[2][2] =
	{
        {
            "Software Update",
            "Software Update"
        },

        {
            "Software Update",
            "Software Update"
        },
    };
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);
	UsbUpgrade_DrawHelpInfo();

    return MM_TRUE;
}
MBT_S32 uif_UsbUpgrade(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRedrawList = MM_TRUE;
    LISTITEM stFileList; 
    MBT_CHAR u8FilePath[max_fileNameLen];
    MBT_CHAR u8PlayFileName[max_fileNameLen];
    ST_USBFileNode *pstFileNode;
    MBT_BOOL bNoExit = MM_FALSE;
    
    UIF_StopAV();
    DBSF_FreeTempMemory();    
    uif_UsbCreateSunTree(MM_NULL);
	pstFileNode = &(uiv_stFileTree.pstFileNode[0]);
	if(USB_UNIT_DIRECTORY == pstFileNode->eType)
	{
		uif_UsbCreateBinTree(pstFileNode->u8PathName);
	}
	
	while ( !bExit )
	{
        if(bRedraw)
        {
            uif_BinListListInit(&stFileList);
			bRefresh |= UsbUpgrade_DrawPanel();
            bRefresh = MM_TRUE;
            bRedrawList = MM_TRUE;
        }

        if(MM_TRUE == bRedrawList)
        {
            bRedrawList = MM_FALSE;	
            stFileList.bUpdatePage = MM_TRUE;
        }
        
		bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);  
        bRefresh |= UCTRF_ListOnDraw(&stFileList);
		bRedraw = MM_FALSE;	

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

		iKey = uif_ReadKey(1000);
		
        switch (iKey)
        {
        	case DUMMY_KEY_USB_OUT:
				iRetKey = DUMMY_KEY_EXIT;
				bExit = MM_TRUE;
				break; 
				
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
                UCTRF_ListGetKey(&stFileList, iKey);
                break;
            
            case DUMMY_KEY_SELECT:
                if(stFileList.iSelect >= uiv_stFileTree.u32FileNodeNum)
                {
                    break;
                }

                if (MM_TRUE != uif_ShareMakeSelectForUsbUpgradeDlg( "Information", "Are you sure upgrade?", MM_FALSE))
                {
                    break;
                }

                bNoExit = MM_TRUE; //this there start to no key exit 
                pstFileNode = &(uiv_stFileTree.pstFileNode[stFileList.iSelect]);
                
                u8FilePath[0] = 0;
                strcpy(u8FilePath,uiv_stFileTree.u8CurPath);
                strcat(u8FilePath,pstFileNode->u8PathName);
                strcpy(u8PlayFileName,pstFileNode->u8PathName);                    
                MLUI_DEBUG("u8FilePath: %s, u8PlayFileName: %s", u8FilePath, u8PlayFileName);
                ShareEnv_LoadEnv();
                ShareEnv_EnvSet((MBT_U8 *)"OAD_NEED_UPGRADE",(MBT_U8 *)"0");
                ShareEnv_EnvSet((MBT_U8 *)"OAD_NEED_SCAN",(MBT_U8 *)"0");
                ShareEnv_EnvSet((MBT_U8 *)"upgrade_mode",(MBT_U8 *)"usb");
                ShareEnv_EnvSet((MBT_U8 *)"usb_device",(MBT_U8 *)"0");
                ShareEnv_EnvSet((MBT_U8 *)"usb_partition",(MBT_U8 *)"1");
                ShareEnv_EnvSet((MBT_U8 *)"ForceUpgradePath",(MBT_U8 *)u8PlayFileName);
                ShareEnv_StoreEnv();

                uif_ShareReboot();

                break;

            case DUMMY_KEY_MENU:
            case DUMMY_KEY_EXIT:
                if (bNoExit)
                {
                    break;
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

            default:
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }

                break;
        }
    }
	MLMF_VFS_UnInit();
	WGUIF_ClsFullScreen();
	return iRetKey;
}

MBT_S32 uif_UsbBroswer(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey=DUMMY_KEY_EXIT;
    MBT_S32 i;
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRedrawList = MM_TRUE;
    LISTITEM stFileList; 
    MBT_CHAR u8FilePath[max_fileNameLen];
    MBT_CHAR u8PlayFileName[max_fileNameLen];
    MEDIA_PLAYER_FILE_TYPE eFileType;
    ST_USBFileNode *pstFileNode;
    MBT_S32 iLastSelect = -1;
    MBT_CHAR* infostr[2][2] =
    {
        {
            "Confirm",
            "Not Support!"
        },

        {
            "Confirm",
            "Not Support!"
        },
    };

    UIF_StopAV();
    DBSF_FreeTempMemory();    
    uif_UsbCreateSunTree(MM_NULL);
    uif_FileListListInit(&stFileList);
    while ( !bExit )
    {
        if(iLastSelect != -1)
        {
            if(stFileList.iSelect/stFileList.iPageMaxItem!= stFileList.iPrevSelect/stFileList.iPageMaxItem)
            {
                bRedraw = MM_TRUE;
            }
        }

        if(bRedraw)
        {
            if(iLastSelect == -1)
            {
                iLastSelect = 0;
            }
            else
            {
                iLastSelect = stFileList.iSelect;
            }
            
            Usb_DrawPanel(&stFileList);
            bRedraw = MM_FALSE;	
            bRefresh = MM_TRUE;
            bRedrawList = MM_TRUE;
        }

        if(MM_TRUE == bRedrawList)
        {
            bRedrawList = MM_FALSE;	
            stFileList.bUpdatePage = MM_TRUE;
        }
        
        bRefresh |= UCTRF_ListOnDraw(&stFileList);
        bRefresh |= uif_DisplayTimeOnCaptionStr(MM_TRUE, UICOMMON_TITLE_AREA_Y);  

        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(1000);
		
        switch (iKey)
        {
            case DUMMY_KEY_USB_OUT:
                iRetKey = DUMMY_KEY_EXITALL;
                bExit = MM_TRUE;
                break; 
				
            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
                UCTRF_ListGetKey(&stFileList, iKey);
                break;
            
            case DUMMY_KEY_SELECT:
                if(stFileList.iSelect >= uiv_stFileTree.u32FileNodeNum)
                {
                    break;
                }
                
                pstFileNode = &(uiv_stFileTree.pstFileNode[stFileList.iSelect]);
                
                if(USB_UNIT_DIRECTORY == pstFileNode->eType)
                {
                    uif_UsbCreateSunTree(pstFileNode->u8PathName);
                    uif_FileListListInit(&stFileList);
                    bRedraw = MM_TRUE;
                    break;
                }

                eFileType = USB_MediaPlayerGetFileType(pstFileNode->u8PathName);
                if(MEDIA_PLAYER_FILE_NOT_SUPPORT == eFileType)
                {
                    uif_ShareDisplayResultDlg(infostr[uiv_u8Language][0], infostr[uiv_u8Language][1], 10);
                    break;
                }

                u8FilePath[0] = 0;
                strcpy(u8FilePath,uiv_stFileTree.u8CurPath);
                strcat(u8FilePath,pstFileNode->u8PathName);
                strcpy(u8PlayFileName,pstFileNode->u8PathName);

                if(MEDIA_PLAYER_FILE_AUDIO == eFileType)
                {
                    if(DUMMY_KEY_EXITALL == uif_MediaPlayerAudio(u8FilePath,u8PlayFileName))
                    {
                        iRetKey = DUMMY_KEY_EXITALL;
                        bExit = MM_TRUE;
                        break;
                    }
                    
                    bRedraw = MM_TRUE;
                }
                else if(MEDIA_PLAYER_FILE_VIDEO == eFileType)
                {
                    if(DUMMY_KEY_EXITALL == uif_MediaPlayerVideo(u8FilePath,u8PlayFileName))
                    {
                        iRetKey = DUMMY_KEY_EXITALL;
                        bExit = MM_TRUE;
                        break;
                    }
                    bRedraw = MM_TRUE;
                }
                else if(MEDIA_PLAYER_FILE_PICTURE == eFileType)
                {
                    if(DUMMY_KEY_EXITALL == uif_MediaPlayerPicture(u8FilePath,u8PlayFileName))
                    {
                        iRetKey = DUMMY_KEY_EXITALL;
                        bExit = MM_TRUE;
                        break;
                    }
                    bRedraw = MM_TRUE;
                }

                if(MM_TRUE == bRedraw)
                {
                    if(0 != strcmp(u8PlayFileName,pstFileNode->u8PathName))
                    {
                        pstFileNode = uiv_stFileTree.pstFileNode;
                        for(i = 0;i < uiv_stFileTree.u32FileNodeNum;i++)
                        {
                            if(0 == strcmp(u8PlayFileName,pstFileNode[i].u8PathName))
                            {
                                stFileList.iSelect = i;
                                break;
                            }
                        }
                    }
                }
                break;

            case DUMMY_KEY_MENU:
                iKey = uif_UsbExit2ParentTree();
                if((-1) == iKey)
                {
                    iRetKey = DUMMY_KEY_MENU;
                    bExit = MM_TRUE;
                    break;
                }
                uif_FileListListInit(&stFileList);
                if(iKey < stFileList.iNoOfItems)
                {
                    stFileList.iSelect = iKey;
                }
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_BACK:
                iRetKey = iKey;
                bExit = MM_TRUE;
                break;

            default:
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
                    bExit = MM_TRUE;
                }

                break;
        }
    }
    MLMF_VFS_UnInit();
    return iRetKey;
}

MBT_BOOL UsbUpdate_Check(MBT_CHAR *pstrFileName)
{
	MLUI_DEBUG("++++++++++++++++UsbUpdate_Check .\n");
	MMT_STB_ErrorCode_E ret;
	MBT_U8 fileBuf[4];
    MBT_CHAR u8TempPath[max_fileNameLen];
	MET_VFS_FileHandle_T fileHnd=MET_VFS_INVALID_HANDLE;
	MET_VFS_FileHandle_T dirHnd=MET_VFS_INVALID_HANDLE;
	MST_VFS_DIR_T dirNode;
	MBT_BOOL bRet = MM_FALSE;
	MBT_CHAR charPartNum=0;
	
	if(MM_NULL == pstrFileName)
	{
	    return bRet;
	}

    /*init cur dir para*/
	memset(u8TempPath,0,sizeof(u8TempPath));
	ret = MLMF_VFS_Init(u8TempPath,0,&charPartNum);
	if(MM_NO_ERROR != ret)
	{
	    return bRet;
	}
    
    dirHnd = MLMF_VFS_Dir_Open(u8TempPath);
    if(MET_VFS_INVALID_HANDLE == dirHnd)
    {
	    return bRet;
    }

	while(1)
	{
		memset(&dirNode,0,sizeof(dirNode));
		ret = MLMF_VFS_Dir_Read(dirHnd,&dirNode);
		if(MM_ERROR_FEATURE_NOT_SUPPORTED == ret)
		{
            continue;
		}
		
        if(MM_NO_ERROR != ret)
        {
            break;
        }

        if(strstr(dirNode.name,".bin"))//get bin file
        {
            fileHnd = MLMF_VFS_File_Open(dirNode.name,MM_VFS_OPEN_MODE_OpenRead);
            if(fileHnd != MET_VFS_INVALID_HANDLE)
            {
                memset(fileBuf,0,sizeof(fileBuf));
                MLMF_VFS_File_Read(fileHnd,fileBuf,4);
                MLUI_DEBUG("+++++++++read file [%x %x %x %x]\n",fileBuf[0],fileBuf[1],fileBuf[2],fileBuf[3]);
                if((fileBuf[0]==0x2a)&&(fileBuf[1]==0x5e)&&(fileBuf[2]==0x5f)&&(fileBuf[3]==0x5e))
                {
                    strcpy(pstrFileName,dirNode.name);
                    bRet = MM_TRUE;
                    break;
                }
                else if((fileBuf[0]==0x80)&&(fileBuf[1]==0)&&(fileBuf[2]==0)&&(fileBuf[3]==0x0))
                {
                    bRet = MM_TRUE;
                    strcpy(pstrFileName,dirNode.name);
                    break;
                }
                MLMF_VFS_File_Close(fileHnd);
            }
        }
	}
    MLMF_VFS_Dir_Close(dirHnd);
	return bRet;
}

/***********************************************************************/
//
//  USB  菜单选项的显示
//
/***********************************************************************/
static MBT_VOID UsbMain_DrawPanel( MBT_VOID )
{
    MBT_CHAR* MM_Title[2][1] =
    {
        {
            "USB"     
        },

        {
            "USB"    
        }
    };
    uif_ShareDrawCommonPanel(MM_Title[uiv_u8Language][0], NULL, MM_FALSE);
}

static MBT_VOID UsbMain_DrawListItem( MBT_S32 iItemIndex, MBT_BOOL bSelect )
{
    MBT_CHAR* MM_SubTitle[2][USBMAIN_LISTITEMS_NUM] =
    {
        {
            "USB",
            "USB Update"      
        },

        {
            "USB",
            "USB Update"       
        }
    };
    MBT_CHAR *ptrTitle;   
    MBT_S32 x = 0, y = 0;
    MBT_U32 u32FontColorP = 0;
    MBT_U32 u32FontColorF = 0;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32FontHeight = 0;
    MBT_S32 s32FontWidth = 0;
    
    switch ( iItemIndex )
    {
        case 0:
            x = UM_LEFTLIST_AREA_X;
            y = UM_LEFTLIST_AREA_Y;
            break;

        case 1:
            x = UM_LEFTLIST_AREA_X;
            y = UM_LEFTLIST_AREA_Y+(UM_ITEM_HEIGHT + UM_ITEM_DISTANCE)*iItemIndex;
            break;
    }
    u32FontColorP = FONT_FRONT_COLOR_WHITE;
    u32FontColorF = FONT_FRONT_COLOR_WHITE;
    
    if ( bSelect )
    {
        pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_func_focusIfor);
    }
    else
    {
        pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_func_unfocusIfor);
    }
        
    ptrTitle = MM_SubTitle[uiv_u8Language][iItemIndex];
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    WGUIF_SetFontHeight(MID_GWFONT_HEIGHT);
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(ptrTitle), ptrTitle);
    s32FontHeight = WGUIF_GetFontHeight();
    WGUIF_FNTSetTxtMiddle(x, y, pstFramBmp->bWidth, pstFramBmp->bHeight, s32FontWidth, s32FontHeight, ptrTitle, u32FontColorP);
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
}

static MBT_VOID UsbMain_DrawMenuList( MBT_S32 iSelect )
{
    MBT_S32 i;

    for ( i=0; i<USBMAIN_LISTITEMS_NUM; i++ )
    {
        if ( i == iSelect )
        {
            UsbMain_DrawListItem( i, MM_TRUE );
        }
        else
        {
            UsbMain_DrawListItem( i, MM_FALSE );
        }
    }
}

static MBT_S32 UsbMain_FindNextFocusItem( MBT_S32 iItemSelected, MBT_S32 iKey )
{
	MBT_S32 iNextItem = iItemSelected;
	
	switch ( iKey )
	{
		case DUMMY_KEY_UPARROW:
			iNextItem --;
			if ( iNextItem < 0 )
			{
				iNextItem = USBMAIN_LISTITEMS_NUM - 1;
			}
			break;

		case DUMMY_KEY_DNARROW:
			iNextItem ++;
			if ( iNextItem >= USBMAIN_LISTITEMS_NUM )
			{
				iNextItem = 0;
			}
			break;
	}

	return iNextItem;
}

MBT_S32 uif_UsbMain(MBT_S32 iPara)
{
	MBT_S32 iKey;
	MBT_S32 iRetKey=DUMMY_KEY_EXIT;
	MBT_BOOL bExit = MM_FALSE;
	MBT_BOOL bRefresh = MM_TRUE;
	MBT_BOOL bRedraw = MM_TRUE;
	MBT_S32 iItemSelected = 0;
	MBT_CHAR strFileName[max_fileNameLen];
	MBT_CHAR* strlist[2][3]=
    {
        {
			"Confirm",
            "No Valid File !",
            "Please Wait !",
        },
        {
        	"Confirm",
			"No Valid File !",
			"Please Wait !",
        }
    };
	

     UIF_StopAV();

	while ( !bExit )  
	{
		if ( bRedraw )
		{
			UsbMain_DrawPanel();
			UsbMain_DrawMenuList( iItemSelected ); 
			bRedraw = MM_FALSE;	
			bRefresh = MM_TRUE;
		}

		if(MM_TRUE == bRefresh)
		{
			WGUIF_ReFreshLayer();
			bRefresh = MM_FALSE;			  				   
		}

		iKey = uif_ReadKey(2000);
		switch ( iKey )
		{
			case DUMMY_KEY_USB_OUT:
				iRetKey = DUMMY_KEY_EXITALL;
				bExit = MM_TRUE;
				break;
			case DUMMY_KEY_UPARROW:
			case DUMMY_KEY_DNARROW:
				UsbMain_DrawListItem(iItemSelected, MM_FALSE);
				iItemSelected = UsbMain_FindNextFocusItem( iItemSelected, iKey );
				UsbMain_DrawListItem(iItemSelected, MM_TRUE);
				bRefresh = MM_TRUE;
				break;

			case DUMMY_KEY_SELECT:					
				switch ( iItemSelected )
				{
					case 0: //USB
						WDCtrF_PutWindow(uif_UsbBroswer, 0);
						bExit = MM_TRUE;
						iRetKey = DUMMY_KEY_ADDWINDOW;
						break;

					case 1: // USB Update
						if(MM_TRUE == UsbUpdate_Check(strFileName))
						{
                            uif_ShareDisplayResultDlg(strlist[uiv_u8Language][0], strlist[uiv_u8Language][2],DLG_WAIT_TIME);
							DBSF_DataWriteUsbUpdateInfo(strFileName);
                            uif_ShareReboot();
						}
						else
						{
                            uif_ShareDisplayResultDlg(strlist[uiv_u8Language][0], strlist[uiv_u8Language][1],DLG_WAIT_TIME);
						}
						break;
					default:
						break;
				}	
				break;
			case DUMMY_KEY_MENU:
			case DUMMY_KEY_EXIT:
			case DUMMY_KEY_BACK:
				iRetKey = iKey;
				bExit = MM_TRUE;
				break;
			case -1:
				break;
			default:
				iRetKey = uif_QuickKey(iKey);
				if(0 !=  iRetKey)
				{
					bExit = MM_TRUE;
				}

				break;
		}
	}
	iItemSelected = 4;
	WGUIF_ClsFullScreen();
	return iRetKey;
}



static MBT_BOOL GetNextMadieAudioFile(MBT_CHAR *pu8CurFileName,MEDIA_PLAYER_FILE_TYPE eType)
{
    ST_USBFileNode *pstFileNode = uiv_stFileTree.pstFileNode;
    MBT_S32 s32NodeNum = uiv_stFileTree.u32FileNodeNum;
    MBT_S32 i,iCurIndex = s32NodeNum;
    
    if(MM_NULL == pstFileNode||MM_NULL == pu8CurFileName)
    {
        return MM_FALSE;
    }

    for(i = 0;i < s32NodeNum;i++)
    {
        if(0 == strcmp(pu8CurFileName,pstFileNode[i].u8PathName))
        {
            iCurIndex = i;
            break;
        }
    }

    if(iCurIndex == s32NodeNum)
    {
        return MM_FALSE;
    }

    if(iCurIndex+1 < s32NodeNum)
    {
        for(i = iCurIndex+1;i < s32NodeNum;i++)
        {
            if(eType == USB_MediaPlayerGetFileType(pstFileNode[i].u8PathName))
            {
                strcpy(pu8CurFileName,pstFileNode[i].u8PathName);
                return MM_TRUE;
            }
        }
    }

    if(0 != iCurIndex)
    {
        for(i = 0;i < iCurIndex;i++)
        {
            if(eType == USB_MediaPlayerGetFileType(pstFileNode[i].u8PathName))
            {
                strcpy(pu8CurFileName,pstFileNode[i].u8PathName);
                return MM_TRUE;
            }
        }
    }
    return MM_FALSE;
}

static MBT_BOOL GetPrevMadieAudioFile(MBT_CHAR *pu8CurFileName,MEDIA_PLAYER_FILE_TYPE eType)
{
    ST_USBFileNode *pstFileNode = uiv_stFileTree.pstFileNode;
    MBT_S32 s32NodeNum = uiv_stFileTree.u32FileNodeNum;
    MBT_S32 i,iCurIndex = s32NodeNum;
    
    if(MM_NULL == pstFileNode||MM_NULL == pu8CurFileName)
    {
        //BLSLMF_Print("GetPrevMadieAudioFile Para Error\n");
        return MM_FALSE;
    }

    for(i = 0;i < s32NodeNum;i++)
    {
        if(0 == strcmp(pu8CurFileName,pstFileNode[i].u8PathName))
        {
            iCurIndex = i;
            break;
        }
    }
    
    if(iCurIndex == s32NodeNum)
    {
        //BLSLMF_Print("GetPrevMadieAudioFile Can not find cur index\n");
        return MM_FALSE;
    }
    
    //BLSLMF_Print("GetPrevMadieAudioFile Get Cur index index %d\n",iCurIndex);
    if(iCurIndex -1 >= 0)
    {
        for(i = iCurIndex -1;i >= 0;i--)
        {
            if(eType == USB_MediaPlayerGetFileType(pstFileNode[i].u8PathName))
            {
                strcpy(pu8CurFileName,pstFileNode[i].u8PathName);
               // BLSLMF_Print("GetPrevMadieAudioFile ahead index %d %s\n",i,pu8CurFileName);
                return MM_TRUE;
            }
        }
    }

    if(iCurIndex !=  s32NodeNum-1)
    {
        for(i = s32NodeNum-1;i > iCurIndex;i--)
        {
            if(eType == USB_MediaPlayerGetFileType(pstFileNode[i].u8PathName))
            {
                strcpy(pu8CurFileName,pstFileNode[i].u8PathName);
                //BLSLMF_Print("GetPrevMadieAudioFile and index %d %s\n",i,pu8CurFileName);
                return MM_TRUE;
            }
        }
    }
    //BLSLMF_Print("GetPrevMadieAudioFile Can not find\n");
    return MM_FALSE;
}

