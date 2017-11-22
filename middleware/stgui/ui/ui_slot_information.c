#include "ui_share.h"
#include "nvm_api.h"


#define HELP_INFORMAITON_START_X     330
#define HELP_INFORMAITON_START_Y     525
#define HELP_INFORMAITION_DISTANCE   5


static MBT_BOOL uif_Slot_Information_DrawPanel(MBT_VOID)
{
    MBT_S32 x, y;
    BITMAPTRUECOLOR *pstFramBmp;
    MBT_S32 s32FontStrlen;
    MBT_CHAR* infostr[2][2] =
    {
        {
            "Slot Information",
			"EXIT"
        },
        {
            "Slot Information",
            "EXIT"
        }
    };

    //bg
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][0], NULL, MM_TRUE);
    WGUIF_SetFontHeight(SMALLER_GWFONT_HEIGHT);
    //exit
    x = HELP_INFORMAITON_START_X;
    y = HELP_INFORMAITON_START_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + HELP_INFORMAITION_DISTANCE;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
    return MM_TRUE;
}

MBT_S32  uif_Slot_Information( MBT_S32 iPara )
{
	MBT_S32 iRetKey = DUMMY_KEY_BACK;		
	MBT_BOOL bExit = MM_FALSE;
	MBT_S32 iKey;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bRefresh = MM_TRUE;
	LISTITEM stSlotList;
    MBT_S32 iLastSelect;
  	stSlotList.iSelect = 0;
	
	bRefresh |= uif_ResetAlarmMsgFlag();
	UIF_StopAV();	
	
	while ( !bExit )
	{
	    if(bRedraw)
        {
            uif_Slot_Information_DrawPanel();
			iLastSelect = stSlotList.iSelect;
            //uif_Slot_InitList(&stSlotList);
            stSlotList.iSelect = iLastSelect;
            bRefresh = MM_TRUE;
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
    
		iKey = uif_ReadKey(1000);
		switch ( iKey )
        {				    
            case DUMMY_KEY_EXIT:				
		        iRetKey = DUMMY_KEY_EXIT;
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
	
    WGUIF_ClsFullScreen();
	return iRetKey;
}
