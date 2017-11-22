/*****************************************************************************
* File name   : osd_cas.c
* Description : This file implement the OSD for cas message. 
* COPYRIGHT (C) Blossoms Digital Tech Co., Ltd. 2006.
*
* ========================
* MODIFICATION HISTORY *
* ========================
*
* Date        				Modification							Revision	
* ----        				------------							--------
*							Created	by CA Team					v1.0.0	
*06 Aug 18					Modified 								v1.0.1
*06 Aug 31					Added some functions					v1.0.2
*****************************************************************************/
#include "ui_share.h"
typedef struct osd_ctr_t
{
    UI_MSGBARCTR stOsdMsgBarCtr;
    MBT_S32 s32ScreenX;
    MBT_S32 s32ReginX;
    MBT_VOID *pu8BmpBuf;
    BITMAPTRUECOLOR stReginBmp;
    MBT_BOOL bIsSuperOSD;
} OSD_DISPLAY_CTR;

MBT_U16 uiv_u16CurtainCode = 0;

static OSD_DISPLAY_CTR uiv_stBottomOsdCtr = {{{0,0,0}},0,0,MM_NULL,{0,0,0,0}};
static OSD_DISPLAY_CTR uiv_stTopOsdCtr = {{{0,0,0}},0,0,MM_NULL,{0,0,0,0}};

static PROMPT_LIST *uiv_pstPromptList = MM_NULL;
#if(1 == M_CDCA) 
static SCDCAIppvBuyInfo uiv_pstIppvBuyInfo;
#endif
static MBT_S32 uiv_iCaCarUpdateProcess = 0;
static MBT_CHAR *uiv_pstrFinger = MM_NULL;
static MET_PTI_PID_T uiv_stIppvCaPassedEcmPid = cam_InvalidPID;
static MET_PTI_PID_T uiv_stFingerEcmPid = cam_InvalidPID;
static MBT_U16 g_u16FingerDisplayX = 0;
static MBT_U16 g_u16FingerDisplayY = 0;
static MBT_U16 g_u16FingerDisplayW = 0;
static MBT_U16 g_u16FingerDisplayH = 0;
static MBT_U8 uiv_u8FingerSuperRandomTimer = m_TimerInvalidHdl;
static MBT_U8 uiv_u8FingerSuperBlinkShowTimer = m_TimerInvalidHdl;
static MBT_U8 uiv_u8FingerSuperBlinkCallShowTimer = m_TimerInvalidHdl;
static MBT_U8 uiv_u8FingerSuperBlinkHideTimer = m_TimerInvalidHdl;
static MBT_U8 uiv_u8FingerSuperBlinkCallHideTimer = m_TimerInvalidHdl;
static MBT_U8 uiv_u8FingerSuperUnVisibleShowTimer = m_TimerInvalidHdl;
static MBT_U8 uiv_u8EmailNospaceIconTimer = m_TimerInvalidHdl;
static MBT_BOOL bIsShowTimer = MM_TRUE;
static CDCA_Semaphore CDCASuperSem = 0;
static SCDCAFingerInfo CDCASuperFinger;
static BITMAPTRUECOLOR  g_stSuperFingerCopybitmap;
static BITMAPTRUECOLOR  g_stSuperOSDCenterCopybitmap;


static SCDCAOSDInfo CDCASuperOsd;
static MBT_U8 uiv_u8OSDshowTopTimer = 0xff;
static MBT_U8 uiv_u8OSDshowBottomTimer = 0xff;
static MBT_U16 g_u16SuperOSDX = 0;
static MBT_U16 g_u16SuperOSDY = 0;
static MBT_U16 g_u16SuperOSDW = 0;
static MBT_U16 g_u16SuperOSDH = 0;
static MBT_U16 g_u16TOPOSDX = 0;
static MBT_U16 g_u16TOPOSDY = 0;
static MBT_U16 g_u16TOPOSDW = 0;
static MBT_U16 g_u16TOPOSDH = 0;
static MBT_U16 g_u16BOTTOMOSDX = 0;
static MBT_U16 g_u16BOTTOMOSDY = 0;
static MBT_U16 g_u16BOTTOMOSDW = 0;
static MBT_U16 g_u16BOTTOMOSDH = 0;
static MBT_CHAR g_uiv_OSDTopMsg[CDCA_MAXLEN_OSD + 4];
static MBT_CHAR g_uiv_OSDBottomMsg[CDCA_MAXLEN_OSD + 4];

#define SUPEROSD_CARDNUM_X  35
#define SUPEROSD_CARDNUM_Y  (OSD_REGINMAXHEIGHT - 50)
#define SUPEROSD_CARDNUM_W  200
#define SUPEROSD_CARDNUM_H  35
#define SUPEROSD_CENTER_DISPLAY_WIDTH (OSD_REGINMAXWIDHT - 2*m_OsdStatX)
#define OSD_SHOW_LEFT_X     35
#define OSD_BACKGROUND_COLOR   FONT_FRONT_COLOR_BLUE


static MBT_CHAR *uif_GetAlarmStrPRILevel(stPrompt iType,MBT_U8 *pu8PRILevel);
static MBT_VOID uif_OSDTopDispTimerCall(MBT_U32 u32Para[]);
static MBT_VOID uif_OSDBottomDispTimerCall(MBT_U32 u32Para [ ]);

#define ALPH_COLOR             0x07000000
#define GREEN_BAR_STARTTIME           0
#define GREEN_BAR_ENDTIME             5
#define GREEN_BAR_X             410
#define GREEN_BAR_Y             120
#define GREEN_BAR_W             100
#define GREEN_BAR_H             2
#define GREEN_BAR_GAP           20
#define CARDID_STARTTIME             5
#define CARDID_ENDTIME             125
#define TIMECODE_STARTTIME           125
#define TIMECODE_ENDTIME             134
#define TIMECODE_X              200
#define TIMECODE_Y              500
#define TIMECODE_W              148
#define TIMECODE_H              32  
#define WATERMARK_X             100
#define WATERMARK_Y             300
#define WATERMARK_W             1080
#define WATERMARK_H             100

enum 
{
    UI_LOPRI_LEVEL1 = 2,
    UI_LOPRI_LEVEL2,
    UI_LOPRI_LEVEL3,
    UI_LOPRI_LEVEL4,
    CA_PRI_LEVEL1,
    CA_PRI_LEVEL2,
    CA_PRI_LEVEL3,
    CA_PRI_LEVEL4,
    CA_PRI_LEVEL5,
    CA_PRI_LEVEL6,
    CA_PRI_LEVEL7,
    CA_PRI_LEVEL8,
    CA_PRI_LEVEL9,
    CA_PRI_LEVEL10,
    CA_PRI_LEVEL11,
    CA_PRI_LEVEL12,
    CA_PRI_LEVEL13,
    CA_PRI_LEVEL14,
    CA_PRI_LEVEL15,
    CA_PRI_LEVEL16,
    CA_PRI_LEVEL17,
    CA_PRI_LEVEL18,
    CA_PRI_LEVEL19,
    CA_PRI_LEVEL20,
    CA_PRI_LEVEL21,
    CA_PRI_LEVEL22,
    CA_PRI_LEVEL23,
    CA_PRI_LEVEL24,
    CA_PRI_LEVEL25,
    CA_PRI_LEVEL26,
    CA_PRI_LEVEL27,
    CA_PRI_LEVEL28,
    CA_PRI_LEVEL29,
    CA_PRI_LEVEL30,
    UI_HIPRI_LEVEL1,
    UI_HIPRI_LEVEL2,
    UI_HIPRI_LEVEL3,
    UI_HIPRI_LEVEL4,
    UI_HIPRI_LEVEL5
};

static MBT_CHAR uiv_strAdaptorBuf[50];

static MBT_VOID CAFDrawRandomFinger(MBT_VOID)
{
    MBT_U8 ucLen;
    MBT_S32 iTxtWidth;
    MBT_U32 u32Rand;
    MBT_U32 u32StartX;
    MBT_U32 u32StartY;
    MBT_U32 u32BarW;
    MBT_U32 u32BarH;
    MBT_CHAR *pstring = uiv_pstrFinger;
    MBT_U8 u8LastFontSize = WGUIF_GetFontHeight();

    //MLMF_Print("CAFDrawRandomFinger\n");
    if(pstring == MM_NULL)
    {
        return;
    }
    
    ucLen = strlen(pstring);
    WGUIF_ClsExtScreen(g_u16FingerDisplayX, g_u16FingerDisplayY, g_u16FingerDisplayW, g_u16FingerDisplayH);
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    iTxtWidth = WGUIF_FNTGetTxtWidth(ucLen ,pstring);    
    u32Rand = MLMF_SYS_GetMS();

    u32BarW = iTxtWidth+6;
    u32BarH = WGUIF_GetFontHeight()+6;

    u32StartX = m_OsdStatX + (u32Rand%(OSD_REGINMAXWIDHT - 2*m_OsdStatX - u32BarW));
    u32StartY = m_OsdStatTopY + m_OsdHeight + (u32Rand%(OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u32BarH));

    //水印显示和指纹显示位置有重叠
    if (MM_FALSE == uif_JudgeWaterMarkPositionToShowFinger(u32StartX, u32StartY, u32BarW, u32BarH))
    {
        u32StartX = m_OsdStatX;
        u32StartY = m_OsdStatTopY + m_OsdHeight;    
    }

    WGUIF_FNTDrawTxtWithAlphaExt(u32StartX, u32StartY+3, ucLen, pstring, FONT_FRONT_COLOR_WHITE);           
    WGUIF_SetFontHeight(u8LastFontSize);
    g_u16FingerDisplayX = u32StartX;
    g_u16FingerDisplayY = u32StartY;
	g_u16FingerDisplayW = u32BarW;
	g_u16FingerDisplayH = u32BarH;
}

static MBT_VOID CAFClrRandomFinger(MBT_VOID)
{
    WGUIF_ClsExtScreen(g_u16FingerDisplayX, g_u16FingerDisplayY, g_u16FingerDisplayW, g_u16FingerDisplayH);
}

MBT_BOOL uif_CAMHideFingerPrint(MBT_VOID)
{
    CAFClrRandomFinger();
    return MM_TRUE;
}

MBT_BOOL uif_CAMShowFingerPrint(MBT_VOID)
{
    if(MM_FALSE == CAF_IsCurPrgEcm(uiv_stFingerEcmPid))
    {
        MLUI_ERR("--->pid is not current,PID = 0x%x",uiv_stFingerEcmPid);
        return MM_FALSE;
    }
    
    CAFDrawRandomFinger();
    return MM_TRUE;
}
 
MBT_BOOL uif_FlushFingerPrint(MBT_VOID)
{
    CAFClrRandomFinger();
    uif_ResetAlarmMsgFlag();
    return MM_TRUE;
}

MBT_BOOL uif_CAMShowTopOsd(MBT_VOID)
{
    OSD_DISPLAY_CTR *pstOsdCtr = &uiv_stTopOsdCtr;
    if(MM_NULL == pstOsdCtr->pu8BmpBuf)
    {
        MLUI_ERR("--->Error!!!");
        return MM_FALSE;
    }
    //MLUI_DEBUG("--->Toposd uCurState %d s32ReginX %d uBoxDisplayed %d",uiv_stTopOsdCtr.stOsdMsgBarCtr.ucBit.uCurState,uiv_stTopOsdCtr.s32ReginX,uiv_stTopOsdCtr.stOsdMsgBarCtr.ucBit.uBoxDisplayed);
    if(1 == pstOsdCtr->stOsdMsgBarCtr.ucBit.uCurState )
    {      
        if(0 == pstOsdCtr->stOsdMsgBarCtr.ucBit.uBoxDisplayed)
        {
            pstOsdCtr->stOsdMsgBarCtr.ucBit.uBoxDisplayed = 1;
            if(pstOsdCtr->bIsSuperOSD == MM_TRUE)
            {
                WGUIF_DrawFilledRectExt(0, m_OsdStatTopY,OSD_REGINMAXWIDHT,m_OsdHeight,CDCASuperOsd.dwBackgroundColor);
                g_u16SuperOSDX = 0;
                g_u16SuperOSDY = m_OsdStatTopY;
                g_u16SuperOSDW = OSD_REGINMAXWIDHT;
                g_u16SuperOSDH = m_OsdHeight;
            }
            else
            {
                WGUIF_DrawFilledRectExt(0, m_OsdStatTopY,OSD_REGINMAXWIDHT,m_OsdHeight,OSD_BACKGROUND_COLOR);
                g_u16TOPOSDX = 0;
                g_u16TOPOSDY = m_OsdStatTopY;
                g_u16TOPOSDW = OSD_REGINMAXWIDHT;
                g_u16TOPOSDH = m_OsdHeight;
            }
        }
        
        if(MM_NULL != pstOsdCtr->stReginBmp.pBData)
        {
            MBT_U32 u32DispW = m_OsdWidth + m_OsdStatX - pstOsdCtr->s32ScreenX;
            MBT_U32 u32DispH = m_OsdHeight;
            MBT_U32 u32TempDispW = pstOsdCtr->stReginBmp.bWidth - pstOsdCtr->s32ReginX;
             
            if(u32DispW > u32TempDispW)
            {
                u32DispW = u32TempDispW;
            }
            if(u32DispH > pstOsdCtr->stReginBmp.bHeight)
            {
                u32DispH = pstOsdCtr->stReginBmp.bHeight;
            }
            //MLUI_DEBUG("s32ScreenX:%d, s32ReginX:%d",pstOsdCtr->s32ScreenX, pstOsdCtr->s32ReginX);
            //MLUI_DEBUG("u32DispW:%d, u32DispH:%d, bWidth:%d",u32DispW,u32DispH,pstOsdCtr->stReginBmp.bWidth);
            if(pstOsdCtr->bIsSuperOSD == MM_TRUE)
            {
                WGUIF_DrawFilledRectExt(0, m_OsdStatTopY,OSD_REGINMAXWIDHT,m_OsdHeight,CDCASuperOsd.dwBackgroundColor);
            }
            else
            {
                WGUIF_DrawFilledRectExt(0, m_OsdStatTopY,OSD_REGINMAXWIDHT,m_OsdHeight,OSD_BACKGROUND_COLOR);
            }
            WGUIF_CopyPartBmp2ExtRegin(pstOsdCtr->s32ScreenX, m_OsdStatTopY, pstOsdCtr->s32ReginX, 0, u32DispW,u32DispH,&pstOsdCtr->stReginBmp,MM_FALSE);
        }

        if(pstOsdCtr->s32ScreenX > OSD_SHOW_LEFT_X)
        {
            pstOsdCtr->s32ScreenX -= m_OsdMovStep;
            if(pstOsdCtr->s32ScreenX < OSD_SHOW_LEFT_X)
            {
                pstOsdCtr->s32ScreenX = OSD_SHOW_LEFT_X;
            }
        }
        else
        {
            pstOsdCtr->s32ReginX += m_OsdMovStep;
            if(pstOsdCtr->s32ReginX >= pstOsdCtr->stReginBmp.bWidth)
            {
                MLUI_DEBUG("---->Restart show");
                pstOsdCtr->s32ReginX = 0;
                pstOsdCtr->s32ScreenX = m_OsdStatX + m_OsdWidth - m_OsdMovStep;
                if(pstOsdCtr->bIsSuperOSD == MM_TRUE)
                {
                    WGUIF_DrawFilledRectExt(0,m_OsdStatTopY,OSD_REGINMAXWIDHT,m_OsdHeight,CDCASuperOsd.dwBackgroundColor);
                }
                else
                {
                    WGUIF_DrawFilledRectExt(0, m_OsdStatTopY,OSD_REGINMAXWIDHT,m_OsdHeight,OSD_BACKGROUND_COLOR);
                }
            }
        }
    }
    return MM_TRUE;
}

MBT_BOOL uif_CAMShowBottomOsd(MBT_VOID)
{
    OSD_DISPLAY_CTR *pstOsdCtr = &uiv_stBottomOsdCtr;
    if(MM_NULL == pstOsdCtr->pu8BmpBuf)
    {
        return MM_FALSE;
    }
    //MLUI_DEBUG("--->BottomOsd uCurState %d s32ReginX %d uBoxDisplayed %d",uiv_stBottomOsdCtr.stOsdMsgBarCtr.ucBit.uCurState,uiv_stBottomOsdCtr.s32ReginX,uiv_stBottomOsdCtr.stOsdMsgBarCtr.ucBit.uBoxDisplayed);
    if(1 == pstOsdCtr->stOsdMsgBarCtr.ucBit.uCurState )
    {      
        if(0 == pstOsdCtr->stOsdMsgBarCtr.ucBit.uBoxDisplayed)
        {
            pstOsdCtr->stOsdMsgBarCtr.ucBit.uBoxDisplayed = 1;
            if(pstOsdCtr->bIsSuperOSD == MM_TRUE)
            {
                WGUIF_DrawFilledRectExt(0,m_OsdStatBottomY,OSD_REGINMAXWIDHT,m_OsdHeight,CDCASuperOsd.dwBackgroundColor);
                g_u16SuperOSDX = 0;
                g_u16SuperOSDY = m_OsdStatBottomY;
                g_u16SuperOSDW = OSD_REGINMAXWIDHT;
                g_u16SuperOSDH = m_OsdHeight;
            }
            else
            {
                WGUIF_DrawFilledRectExt(0,m_OsdStatBottomY,OSD_REGINMAXWIDHT,m_OsdHeight,OSD_BACKGROUND_COLOR);
                g_u16BOTTOMOSDX = 0;
                g_u16BOTTOMOSDY = m_OsdStatBottomY;
                g_u16BOTTOMOSDW = OSD_REGINMAXWIDHT;
                g_u16BOTTOMOSDH = m_OsdHeight;
            }
        }
        
        if(MM_NULL != pstOsdCtr->stReginBmp.pBData)
        {
            MBT_U32 u32DispW = m_OsdWidth + m_OsdStatX - pstOsdCtr->s32ScreenX;
            MBT_U32 u32DispH= m_OsdHeight;
            MBT_U32 u32TempDispW = pstOsdCtr->stReginBmp.bWidth - pstOsdCtr->s32ReginX;
             
            if(u32DispW > u32TempDispW)
            {
                u32DispW = u32TempDispW;
            }

            if(u32DispH > pstOsdCtr->stReginBmp.bHeight)
            {
                u32DispH = pstOsdCtr->stReginBmp.bHeight;
            }
            //MLUI_DEBUG("s32ScreenX:%d, s32ReginX:%d",pstOsdCtr->s32ScreenX, pstOsdCtr->s32ReginX);
            //MLUI_DEBUG("u32DispW:%d, u32DispH:%d, bWidth:%d",u32DispW,u32DispH,pstOsdCtr->stReginBmp.bWidth);
            if(pstOsdCtr->bIsSuperOSD == MM_TRUE)
            {
                WGUIF_DrawFilledRectExt(0,m_OsdStatBottomY,OSD_REGINMAXWIDHT,m_OsdHeight,CDCASuperOsd.dwBackgroundColor);
            }
            else
            {
                WGUIF_DrawFilledRectExt(0,m_OsdStatBottomY,OSD_REGINMAXWIDHT,m_OsdHeight,OSD_BACKGROUND_COLOR);
            }
            WGUIF_CopyPartBmp2ExtRegin(pstOsdCtr->s32ScreenX, m_OsdStatBottomY, pstOsdCtr->s32ReginX, 0, u32DispW, u32DispH, &pstOsdCtr->stReginBmp, MM_FALSE);
        }

        if(pstOsdCtr->s32ScreenX > OSD_SHOW_LEFT_X)
        {
            pstOsdCtr->s32ScreenX -= m_OsdMovStep;
            if(pstOsdCtr->s32ScreenX < OSD_SHOW_LEFT_X)
            {
                pstOsdCtr->s32ScreenX = OSD_SHOW_LEFT_X;
            }
        }
        else
        {
            pstOsdCtr->s32ReginX += m_OsdMovStep;
            if(pstOsdCtr->s32ReginX >= pstOsdCtr->stReginBmp.bWidth)
            {
                MLUI_DEBUG("---->Restart show");
                pstOsdCtr->s32ReginX = 0;
                pstOsdCtr->s32ScreenX = m_OsdStatX + m_OsdWidth - m_OsdMovStep;
                if(pstOsdCtr->bIsSuperOSD == MM_TRUE)
                {
                    WGUIF_DrawFilledRectExt(0, m_OsdStatBottomY, OSD_REGINMAXWIDHT, m_OsdHeight,CDCASuperOsd.dwBackgroundColor);
                }
                else
                {
                    WGUIF_DrawFilledRectExt(0, m_OsdStatBottomY, OSD_REGINMAXWIDHT, m_OsdHeight,OSD_BACKGROUND_COLOR);
                }
            }
        }
    }
    return MM_TRUE;
}

MBT_BOOL uif_CAMHideEmailItem(MBT_VOID)
{
    MBT_BOOL  bRefresh = MM_FALSE;
    if(0 == uif_GetMenuState())
    {
        BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Email_iconIfor);
        WGUIF_ClsScreen(UI_EMIL_DISPLAY_X,UI_EMIL_DISPLAY_Y, pstBmp->bWidth, pstBmp->bHeight);	
        bRefresh = MM_TRUE;
    }
    uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uCurState = 0;
    uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uBoxDisplayed = 0;
    return bRefresh;
}

MBT_BOOL uif_CAMDisplayEmailItem(MBT_VOID)
{
    MBT_BOOL bRefresh  = MM_FALSE;
    uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uCurState = 1;
    if(uif_GetMenuState())
    {
        uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uBoxDisplayed = 0;
    }
    else
    {
        BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Email_iconIfor);
        WGUIF_DisplayReginTrueColorBmp(UI_EMIL_DISPLAY_X,UI_EMIL_DISPLAY_Y,0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp,MM_TRUE);
        uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uBoxDisplayed = 1;
        bRefresh  = MM_TRUE;
    }
    return bRefresh;
}


static MBT_VOID CamEmailTickCall(MBT_U32 u32Para[])
{
    if(m_TimerInvalidHdl == uiv_u8EmailNospaceIconTimer)
    {
        return;
    }
    UIF_SendKeyToUi(DUMMY_KEY_NO_SPACE);
}

static MBT_VOID CamEmailTick(MBT_U8 u8Start)
{
    if(0 == u8Start)
    {
        if(m_TimerInvalidHdl != uiv_u8EmailNospaceIconTimer)
        {
            TMF_CleanDbsTimer(uiv_u8EmailNospaceIconTimer);
            uiv_u8EmailNospaceIconTimer = m_TimerInvalidHdl;
        }
    }
    else
    {
        if(m_TimerInvalidHdl != uiv_u8EmailNospaceIconTimer)
        {
            return;
        }
        uiv_u8EmailNospaceIconTimer = TMF_SetDbsTimer(CamEmailTickCall,MM_NULL,EMAIL_ICON_TICK,m_Repeat);
    }
}




static MBT_BOOL CamDisplayEmailLessMom(MBT_VOID)
{
    static MBT_BOOL  bDisp = MM_TRUE;
    MBT_BOOL  bRefresh = MM_FALSE;
    if(0 == uif_GetMenuState())
    {
        BITMAPTRUECOLOR *pstBmp = BMPF_GetBMP(m_ui_Email_iconIfor);
        if (!bDisp)
        {
            WGUIF_ClsScreen(UI_EMIL_DISPLAY_X,UI_EMIL_DISPLAY_Y, pstBmp->bWidth, pstBmp->bHeight);
            bDisp = MM_TRUE;
            bRefresh = MM_TRUE;
        }
        else
        {
            WGUIF_DisplayReginTrueColorBmp(UI_EMIL_DISPLAY_X,UI_EMIL_DISPLAY_Y,0,0,pstBmp->bWidth,pstBmp->bHeight,pstBmp,MM_TRUE);
            bDisp = MM_FALSE;
            bRefresh = MM_TRUE;
        }
    }

    return bRefresh;
}

MBT_BOOL uif_CAMShowEmailLessMem(MBT_VOID)
{
    MBT_BOOL  bRefresh = MM_FALSE;
    if(m_TimerInvalidHdl == uiv_u8EmailNospaceIconTimer)
    {
        return bRefresh;
    }
    bRefresh |= CamDisplayEmailLessMom();

    return bRefresh;
}



#define IPPV_BUYHEAD_HEIGHT 40
#define IPPV_BUYAREA_WIDTH 660
#define IPPV_BUYAREA_HEIGHT (26 * 8)

#define IPPV_BUYAREAHEAD_STEP 3


#define IPPV_BUYAREA_Y (P_MENU_TOP + (OSD_REGINMAXHEIGHT - IPPV_BUYAREAHEAD_STEP - IPPV_BUYAREA_HEIGHT - IPPV_BUYHEAD_HEIGHT)/2 - 40)
#define IPPV_BUYAREA_X (P_MENU_LEFT + (OSD_REGINMAXWIDHT - IPPV_BUYAREA_WIDTH)/2)

#define IPPV_BUYCOL1 (IPPV_BUYAREA_X + 10)
#define IPPV_BUYCOL2 (IPPV_BUYCOL1 +275) 
#define IPPV_BUYCOL3 (IPPV_BUYCOL2 +120) 
#define IPPV_BUYCOL4 (IPPV_BUYCOL3 +150) 

#if(1 == M_CDCA) 
MBT_BOOL uif_DrawIppvPanel(MBT_S32 iType, SCDCAIppvBuyInfo *pstIppvPrgBuyInfo)
{
    MBT_CHAR    cDispStr[100];
    MBT_CHAR    *pDispStr;
    MBT_S32 iLen;
    MBT_S32 y;
    MBT_S32 x;
    MBT_S32 iWidth;
    MBT_S32 iHeight;
    MBT_CHAR* acInfoStr[2][17] =
    {
        {
            "Provider ID:",
            "Wallet ID:",
            "Program ID:",
            "Expired time:",
            "Just Allow Watch",
            "Point",
            "Allow Watch and Record",
            "[Exit/Menu] Cancel",
            "Payment Interval:",
            "Buy",
            "Price:",
            "Type:",
            "Allow Record",
            "Forbid Record",
            "IPPT Auto Charge by Timer ",
            "IPPV Charge Period",
            "IPPV Free Period"
        },

        {
            "Provider ID:",
            "Wallet ID:",
            "Program ID:",
            "Expired time:",
            "Just Allow Watch",
            "Point",
            "Allow Watch and Record",
            "[Exit/Menu] Cancel",
            "Payment Interval:",
            "Buy",
            "Price:",
            "Type:",
            "Allow Record",
            "Forbid Record",
            "IPPT Auto Charge by Timer ",
            "IPPV Charge Period",
            "IPPV Free Period"
        },
    };
    x = IPPV_BUYAREA_X;
    y = IPPV_BUYAREA_Y;
    iWidth = IPPV_BUYAREA_WIDTH;
    iHeight = IPPV_BUYAREA_HEIGHT+IPPV_BUYHEAD_HEIGHT+IPPV_BUYAREAHEAD_STEP;
    uif_Draw3DProtrudeFrame(x-4,y-4,iWidth+8, iHeight+8);
    iHeight = IPPV_BUYHEAD_HEIGHT;
    WGUIF_DrawFilledRectangle(x,y,iWidth, iHeight, TITLEBAR_COLOR);
    y += iHeight;
    iHeight = IPPV_BUYAREAHEAD_STEP;
    WGUIF_DrawFilledRectangle(x,y,iWidth, iHeight, FONT_FRONT_COLOR_WHITE);
    y += iHeight;
    iHeight = IPPV_BUYAREA_HEIGHT - 40;
    WGUIF_DrawFilledRectangle(x,y,iWidth, iHeight, BACKGROUND_COLOR);
    y += iHeight;
    iHeight = 3;
    WGUIF_DrawFilledRectangle(x,y,iWidth, iHeight, FONT_FRONT_COLOR_WHITE);
    y += iHeight;
    iHeight = 37;
    WGUIF_DrawFilledRectangle(x,y,iWidth, iHeight, TITLEBAR_COLOR);

    if(0 == iType)
    {
        pDispStr = acInfoStr[uiv_u8Language][16];
    }
    else if(1 == iType)
    {
        pDispStr = acInfoStr[uiv_u8Language][15];
    }
    else
    {
        pDispStr = acInfoStr[uiv_u8Language][14];
    }

    uif_ShareSetSecondTitle(IPPV_BUYAREA_X,IPPV_BUYAREA_Y,IPPV_BUYAREA_WIDTH,IPPV_BUYHEAD_HEIGHT,pDispStr,FONT_FRONT_COLOR_WHITE);

    y= IPPV_BUYAREA_Y + IPPV_BUYHEAD_HEIGHT + IPPV_BUYAREAHEAD_STEP + 20;
    pDispStr = acInfoStr[uiv_u8Language][0];
    WGUIF_FNTDrawTxt(IPPV_BUYCOL1, y, strlen(pDispStr), pDispStr, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(cDispStr, "%d ", pstIppvPrgBuyInfo->m_wTvsID);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL2, y, iLen, cDispStr, FONT_FRONT_COLOR_WHITE);

    iLen = sprintf(cDispStr, "%s",acInfoStr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL3, y, iLen, cDispStr, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(cDispStr, "%d", pstIppvPrgBuyInfo->m_bySlotID);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL4, y, iLen, cDispStr, FONT_FRONT_COLOR_WHITE);


    y += 32;
    pDispStr = acInfoStr[uiv_u8Language][2];
    WGUIF_FNTDrawTxt(IPPV_BUYCOL1, y, strlen(pDispStr), pDispStr, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(cDispStr, "%u", (MBT_U32)pstIppvPrgBuyInfo->m_dwProductID);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL2,  y, iLen, cDispStr, FONT_FRONT_COLOR_WHITE);
    if(2 == iType)
    {
        pDispStr = acInfoStr[uiv_u8Language][8];
        iLen = sprintf(cDispStr, "%d minutes", pstIppvPrgBuyInfo->m_wIPPVTime.m_wIntervalMin);
    }
    else
    {
        Stru_Date stData;
        CAF_CDDateToDate(&stData,pstIppvPrgBuyInfo->m_wIPPVTime.m_wExpiredDate);
        iLen = sprintf(cDispStr, "%04d-%02d-%02d", stData.m_wYear,stData.m_byMonth,stData.m_byDay);
        pDispStr = acInfoStr[uiv_u8Language][3];
    }
    WGUIF_FNTDrawTxt(IPPV_BUYCOL3, y, strlen(pDispStr), pDispStr, FONT_FRONT_COLOR_WHITE);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL4, y, iLen, cDispStr, FONT_FRONT_COLOR_WHITE);

    y += 32;
    iLen = sprintf(cDispStr, "%s %s",acInfoStr[uiv_u8Language][4], acInfoStr[uiv_u8Language][10]);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL1, y,iLen,cDispStr, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(cDispStr, "%d %s",pstIppvPrgBuyInfo->m_Price[CDCA_IPPVPRICETYPE_TPPVVIEW].m_wPrice, acInfoStr[uiv_u8Language][5]);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL2, y, iLen, cDispStr, FONT_FRONT_COLOR_WHITE);
    
    x = IPPV_BUYCOL3;
    x += uif_DrawColorKey(x, y, FONT_FRONT_COLOR_RED);
    WGUIF_FNTDrawTxt(x+5,y, strlen(acInfoStr[uiv_u8Language][9]), acInfoStr[uiv_u8Language][9], FONT_FRONT_COLOR_WHITE);

    y += 32;
    iLen = sprintf(cDispStr, "%s %s",acInfoStr[uiv_u8Language][6], acInfoStr[uiv_u8Language][10]);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL1, y,iLen,cDispStr, FONT_FRONT_COLOR_WHITE);
    iLen = sprintf(cDispStr, "%d %s",pstIppvPrgBuyInfo->m_Price[CDCA_IPPVPRICETYPE_TPPVVIEWTAPING].m_wPrice, acInfoStr[uiv_u8Language][5]);
    WGUIF_FNTDrawTxt(IPPV_BUYCOL2,y, iLen, cDispStr, FONT_FRONT_COLOR_WHITE);
    x = IPPV_BUYCOL3;
    x += uif_DrawColorKey(x, y, FONT_FRONT_COLOR_GREEN);
    WGUIF_FNTDrawTxt(x+5,y, strlen(acInfoStr[uiv_u8Language][9]), acInfoStr[uiv_u8Language][9], FONT_FRONT_COLOR_WHITE);
    
    y = IPPV_BUYAREA_Y + IPPV_BUYAREA_HEIGHT+IPPV_BUYHEAD_HEIGHT+IPPV_BUYAREAHEAD_STEP - 28;
    pDispStr = acInfoStr[uiv_u8Language][7];
    iLen = strlen(pDispStr);
    x = IPPV_BUYAREA_X + (IPPV_BUYAREA_WIDTH  - WGUIF_FNTGetTxtWidth(iLen, pDispStr) - 10)/2;
    WGUIF_FNTDrawTxt(x + 10, y, iLen, pDispStr, FONT_FRONT_COLOR_WHITE);
    return MM_TRUE;
}
#endif



MBT_VOID uif_CAMDispIppvInfo(MBT_S32 iKey)
{
    MBT_BOOL bExit = MM_FALSE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bClsSrn = MM_FALSE;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_S32 iType = 0;
    MBT_S32 EcmPid = 0;
    BITMAPTRUECOLOR  Copybitmap;
#if(1 == M_CDCA) 
    MBT_BOOL bFeeded = MM_FALSE;
    MBT_U8 cInputPinCode[7] = {0};  
    MBT_S32 iPinPwd;
    MBT_S32 i;
    SCDCAIppvBuyInfo    *pstIppvPrgBuyInfo = MM_NULL;  
    MBT_CHAR* acInfoStr[2][2] =
    {
        {
        "Input PIN:",
        "Purchase Successed"
        },

        {
        "Input PIN:",
        "Purchase Successed"
        },
    };
  #endif

    Copybitmap.bWidth = IPPV_BUYAREA_WIDTH+8;
    Copybitmap.bHeight = IPPV_BUYAREA_HEIGHT+IPPV_BUYHEAD_HEIGHT+IPPV_BUYAREAHEAD_STEP+16+2; 
    WGUIF_GetRectangleImage(IPPV_BUYAREA_X-4,IPPV_BUYAREA_Y-8, &Copybitmap);


    while(!bExit)
    {	       
        if(bRedraw)
        {
            switch(iKey)
            {
                case DUMMY_KEY_IPPVFREEVIEW_TYPE0:  /*免费预览阶段*/
                    iType = 0;
                    break;
                case DUMMY_KEY_IPPVPAYEVIEW_TYPE0:    /*收费阶段*/
                    iType = 1;
                    break;
                case DUMMY_KEY_IPPTPAYEVIEW_TYPE0:    /*收费阶段*/
                    iType = 2;
                    break;
                default:
                    break;
            }

            EcmPid = uiv_stIppvCaPassedEcmPid;
#if(1 == M_CDCA) 
            pstIppvPrgBuyInfo = &uiv_pstIppvBuyInfo;  
            bRefresh |= uif_DrawIppvPanel(iType,pstIppvPrgBuyInfo);
#endif            
            bRedraw = MM_FALSE;
        }
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey (1000); 

        switch(iKey)
        {		
            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
                bExit = MM_TRUE;
                break;
            case DUMMY_KEY_PLAY:
            case DUMMY_KEY_FORCEUPDATE_PROGRAM:
            case DUMMY_KEY_IPPVFREEVIEW_TYPE0:/*免费预览阶段*/
            case DUMMY_KEY_IPPVPAYEVIEW_TYPE0:   /*收费阶段*/
            case DUMMY_KEY_IPPTPAYEVIEW_TYPE0:   /*收费阶段*/
                bRedraw = MM_TRUE;
                break;
            case DUMMY_KEY_CURTAINCTR_TYPE0:  /*通知机顶盒显示或关闭高级预览*/
                if(0 != uiv_u16CurtainCode)
                {
                    UIF_SendKeyToUi(DUMMY_KEY_CURTAINCTR_TYPE0);
                    bExit = MM_TRUE;
                }
                break;

            case DUMMY_KEY_UPARROW:
            case DUMMY_KEY_DNARROW:
            case DUMMY_KEY_PGUP:
            case DUMMY_KEY_PGDN:
            case DUMMY_KEY_INSERTCARD_TYPE0: /*加扰节目，请插入智能卡*/
            case DUMMY_KEY_BADCARD_TYPE0: /*无法识别卡，不能使用*/
            case DUMMY_KEY_EXPICARD_TYPE0: /*智能卡已经过期，请更换新卡*/
            case DUMMY_KEY_NOOPER_TYPE0: /*卡中不存在节目运营商*/
            case DUMMY_KEY_BLACKOUT_TYPE0:  /*条件禁播*/
            case DUMMY_KEY_OUTWORKTIME_TYPE0:  /*不在工作时段内*/
            case DUMMY_KEY_WATCHLEVEL_TYPE0: /*节目级别高于设定观看级别*/
            case DUMMY_KEY_PAIRING_TYPE0:  /*节目要求机卡对应*/
            case DUMMY_KEY_DECRYPTFAIL_TYPE0:  /*节目解密失败*/
            case DUMMY_KEY_NOMONEY_TYPE0: /*卡内金额不足*/
            case DUMMY_KEY_ERRREGION_TYPE0:   
            case DUMMY_KEY_NEEDFEED_TYPE0:/*子卡已过期，请插入母卡*/
            case DUMMY_KEY_ERRCARD_TYPE0:		/*智能卡校验失败，请联系运营商，同步智能卡*/
            case DUMMY_KEY_UPDATE_TYPE0:	    /*系统升级，请不要拔卡或者关机*/
            case DUMMY_KEY_LOWCARDVER_TYPE0:		/*请升级智能卡*/
            case DUMMY_KEY_VIEWLOCK_TYPE0:		/*请勿频繁切换频道*/
            case DUMMY_KEY_MAXRESTART_TYPE0:		/*智能卡已受损*/
            case DUMMY_KEY_FREEZE_TYPE0:	/*智能卡已冻结，请联系运营商*/
            case DUMMY_KEY_CALLBACK_TYPE0:	/*回传失败*/
            case DUMMY_KEY_CURTAIN_TYPE0: /*高级预览节目，该阶段不能免费观看*/
            case DUMMY_KEY_CARDTESTSTART_TYPE0:  /*升级测试卡测试中...*/
            case DUMMY_KEY_CARDTESTFAILD_TYPE0:/*升级测试卡测试失败，请检查机卡通讯模块*/
            case DUMMY_KEY_CARDTESTSUCC_TYPE0: /*升级测试卡测试成功*/
            case DUMMY_KEY_STBLOCKED_TYPE0:	/*请关机重启机顶盒*/
            case DUMMY_KEY_NOCALIBOPER_TYPE0: /*卡中不存在移植库定制运营商*/
            case DUMMY_KEY_STBFREEZE_TYPE0: /*机顶盒被冻结*/
            case DUMMY_KEY_UNSUPPORTDEVICE_TYPE0: /*不支持的终端类型（编号：0xXXXX）*/
                UIF_SendKeyToUi(iKey);
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_IPPVHIDE_DLG:
                bExit = MM_TRUE;
                break;

            case DUMMY_KEY_RED:
#if(1 == M_CDCA) 
                iPinPwd = uif_SharePwdCheckDlg(0, MM_TRUE );
                if ( iPinPwd >= 0 )
                {					
                    sprintf((MBT_CHAR *)cInputPinCode, "%06d", iPinPwd);
                    for( i=0; i<6; i++ )
                    {
                        cInputPinCode[i] = cInputPinCode[i] - '0';
                    }
                    iPinPwd = CDCASTB_StopIPPVBuyDlg(MM_TRUE, EcmPid, cInputPinCode, &(pstIppvPrgBuyInfo->m_Price[CDCA_IPPVPRICETYPE_TPPVVIEW]));
                    bFeeded = MM_TRUE;
                    if(CDCA_RC_OK == iPinPwd)
                    {
                        uif_ShareDisplayResultDlg("Information",acInfoStr[uiv_u8Language][1],DLG_WAIT_TIME);
                        bExit = MM_TRUE;
                    }
                    else
                    {
                        uif_CACardMsgCheckResult(iPinPwd);
                    }
                }
                else
                {
                    uif_CACardMsgCheckResult(CDCA_RC_PIN_INVALID);
                }
  #endif                
                break; 

            case DUMMY_KEY_GREEN:
#if(1 == M_CDCA) 
                iPinPwd = uif_SharePwdCheckDlg(0, MM_TRUE );
                if ( iPinPwd >= 0 )
                {					
                    sprintf((MBT_CHAR *)cInputPinCode, "%06d", iPinPwd);
                    for( i=0; i<6; i++ )
                    {
                        cInputPinCode[i] = cInputPinCode[i] - '0';
                    }
                    iPinPwd = CDCASTB_StopIPPVBuyDlg(MM_TRUE, EcmPid, cInputPinCode, &(pstIppvPrgBuyInfo->m_Price[CDCA_IPPVPRICETYPE_TPPVVIEWTAPING]));
                    bFeeded = MM_TRUE;
                    if(CDCA_RC_OK == iPinPwd)
                    {
                        uif_ShareDisplayResultDlg("Information",acInfoStr[uiv_u8Language][1],DLG_WAIT_TIME);
                        bExit = MM_TRUE;
                    }
                    else
                    {
                        uif_CACardMsgCheckResult(iPinPwd);
                    }
                }
                else
                {
                    uif_CACardMsgCheckResult(CDCA_RC_PIN_INVALID);
                }
#endif               
                break; 

            case DUMMY_KEY_VOLUMEUP:
            case DUMMY_KEY_VOLUMEDN:
                break;
                
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            case -1:
                bRefresh |= uif_ShowTopScreenICO();
                uif_DetectVidioState(&bClsSrn);
                break;

            default:
                if(0 !=  uif_QuickKey(iKey))
                {
                    bExit = MM_TRUE;
                }
                break;
        }
    }

#if(1 == TFCONFIG)  
#else
    bRefresh |= uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_PROGRAMSTOPED0);
    bRefresh |= uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_WAIT_FOR_PIN);
#endif
    bRefresh |= uif_ResetAlarmMsgFlag();

#if(1 == M_CDCA) 
    if(MM_FALSE == bFeeded)
    {
        CDCASTB_StopIPPVBuyDlg(MM_FALSE, EcmPid, MM_NULL, MM_NULL);
    }
#endif

    bRefresh |= WGUIF_PutRectangleImage(IPPV_BUYAREA_X-4,IPPV_BUYAREA_Y-8, &Copybitmap);
    
    if(!uif_GetMenuState())
    {
        bRefresh = MM_TRUE;
        WGUIF_ClsScreen(IPPV_BUYAREA_X-4,IPPV_BUYAREA_Y-8,Copybitmap.bWidth,Copybitmap.bHeight);
    }

    if(MM_TRUE == bRefresh)
    {
        WGUIF_ReFreshLayer();
        bRefresh = MM_FALSE;
    }
}

static MBT_VOID CAS_ModifyOSDString(MBT_CHAR *str)
{
    MBT_S32 i;
    MBT_S32 iStrlen;
    if(MM_NULL == str)
    {
        return;
    }

    iStrlen = strlen(str);
    for(i = 0;i < iStrlen;)
    {
    	#if 0
        if(((MBT_U8)str[i])&0x80)
        {
            if(((MBT_U8)str[i+1]) < 0xA1)
            {
                str[i] = ' ';
            }
            i+= 2;
        }
        else
		#endif
        {
            if(str[i] == '\r'&&OSD_BUFFER_SIZE-4>i)
            {
                memmove(str+i+3,str+i+1,OSD_BUFFER_SIZE-i-4);
                str[i] = ' ';
                i++;
                str[i] = ' ';
                i++;
                str[i] = ' ';
                i++;
                str[i] = ' ';
                iStrlen += 2;
                if(iStrlen> OSD_BUFFER_SIZE-1)
                {
                    iStrlen = OSD_BUFFER_SIZE-1;
                }
            }
            else if(str[i] == '\t'&&OSD_BUFFER_SIZE-4>i)
            {
                memmove(str+i+3,str+i+1,OSD_BUFFER_SIZE-i-4);
                str[i] = ' ';
                i++;
                str[i] = ' ';
                i++;
                str[i] = ' ';
                i++;
                str[i] = ' ';
                iStrlen += 2;
                if(iStrlen> OSD_BUFFER_SIZE-1)
                {
                    iStrlen = OSD_BUFFER_SIZE-1;
                }
            }
            else if(str[i] == '\n'&&OSD_BUFFER_SIZE-4>i)
            {
                memmove(str+i+3,str+i+1,OSD_BUFFER_SIZE-i-4);
                str[i] = ' ';
                i++;
                str[i] = ' ';
                i++;
                str[i] = ' ';
                i++;
                str[i] = ' ';
                iStrlen += 2;
                if(iStrlen> OSD_BUFFER_SIZE-1)
                {
                    iStrlen = OSD_BUFFER_SIZE-1;
                }
            }
            else if(0x21 > (MBT_U8)str[i])
            {
                str[i] = ' ';
            }
            i++;
        }
    }
    str[iStrlen] = 0;
}

/*IPPV信息结束*/


static MBT_VOID uif_ReadParentFaile(MBT_VOID)
{
    if(0 == uif_GetManulFeedMenuState())
    {		
        uif_ShareDisplayResultDlg("Information","Invalid parent-card!",DLG_WAIT_TIME);
    }
}

static MBT_VOID uif_ReadParentSuccess(MBT_VOID)
{
    if(0 == uif_GetManulFeedMenuState())
    {
        uif_ShareDisplayResultDlg("Information","Please insert the child-card!",DLG_WAIT_TIME);
    }
}



/*返回优先级高的提示,
*如果优先级相同返回最后一个节点(最新的提示)
*释入掉相同ecm的其它提示
*/

PROMPT_LIST *uif_CAMPutNewPrompt(stPrompt i32PromptType,E_UI_PromptType ePromptType,MBT_U16 u16EcmPid)
{
    MBT_S32 iPRILevel = 0;
    MBT_U8 u8PRILevel = 2;
    MBT_CHAR *pacMsg = uif_GetAlarmStrPRILevel(i32PromptType,&u8PRILevel);
    MBT_VOID **pPoint = (MBT_VOID **)(&uiv_pstPromptList);
    PROMPT_LIST * pstRetPrompt = MM_NULL;
    PROMPT_LIST *pstPromptList = uiv_pstPromptList;

    
    while(pstPromptList)
    {
        if(m_CASEcmMsg == ePromptType&&m_CASEcmMsg == pstPromptList->ePromptType)
        {
            if(pstPromptList->u16EcmPid == u16EcmPid&&u8PRILevel >= pstPromptList->u8PRILevel)
            {
                *pPoint = pstPromptList->pstNext;
                MLMF_Free(pstPromptList);
                pstPromptList = *pPoint;
                continue;
            }
            
            if(pstPromptList->u8PRILevel > iPRILevel)
            {
                iPRILevel = pstPromptList->u8PRILevel;
                pstRetPrompt = pstPromptList;
            }
        }
        else
        {
            if(u8PRILevel >= pstPromptList->u8PRILevel)
            {
                *pPoint = pstPromptList->pstNext;
                MLMF_Free(pstPromptList);
                pstPromptList = *pPoint;
                continue;
            }
            
            if(pstPromptList->u8PRILevel > iPRILevel)
            {
                iPRILevel = pstPromptList->u8PRILevel;
                pstRetPrompt = pstPromptList;
            }
        }

        pPoint = (MBT_VOID **)(&pstPromptList->pstNext);
        pstPromptList = pstPromptList->pstNext;
    }

    pstPromptList = MLMF_Malloc(sizeof(PROMPT_LIST));
    if(MM_NULL != pstPromptList)
    {
        pstPromptList->pstNext = MM_NULL;
        pstPromptList->u16EcmPid = u16EcmPid;
        pstPromptList->i32PromptType = i32PromptType;
        pstPromptList->ePromptType = ePromptType;
        pstPromptList->u8DisplaySign = 0;
        pstPromptList->u8PRILevel = u8PRILevel;
        pstPromptList->pacMsg = pacMsg;
        *pPoint = pstPromptList;
        if(pstPromptList->u8PRILevel >= iPRILevel)
        {
            iPRILevel = pstPromptList->u8PRILevel;
            pstRetPrompt = pstPromptList;
        }
    }

    return pstRetPrompt;
}

MBT_U8 uif_CancelSpecifyEcmPrompt(MBT_U16 u16EcmPid)
{
    MBT_U8 u8Ret = 0;
    MBT_VOID **pPoint = (MBT_VOID **)(&uiv_pstPromptList);
    PROMPT_LIST *pstPromptList = uiv_pstPromptList;
    while(pstPromptList)
    {
        //MLMF_Print("ePromptType %d,u16EcmPid %d\n",pstPromptList->ePromptType,pstPromptList->u16EcmPid);
        if(m_CASEcmMsg == pstPromptList->ePromptType&&u16EcmPid == pstPromptList->u16EcmPid)
        {
            *pPoint = pstPromptList->pstNext;
            MLMF_Free(pstPromptList);
            pstPromptList = *pPoint;
            continue;
        }
        u8Ret++;
        pstPromptList->u8DisplaySign = 0;
        pPoint = (MBT_VOID **)(&pstPromptList->pstNext);
        pstPromptList = pstPromptList->pstNext;
    }

    return u8Ret;
}

/*反回是否清屏*/
MBT_BOOL uif_CAMCancelSpecifyTypePrompt(MBT_S32 i32PromptType)
{
    MBT_U8 u8Ret = 0;
    MBT_BOOL bRefresh = MM_FALSE;
    MBT_VOID **pPoint = (MBT_VOID **)(&uiv_pstPromptList);
    PROMPT_LIST *pstPromptList = uiv_pstPromptList;
    while(pstPromptList)
    {
        if(pstPromptList->i32PromptType == i32PromptType)
        {
            *pPoint = pstPromptList->pstNext;
            MLMF_Free(pstPromptList);
            pstPromptList = *pPoint;
            bRefresh = MM_TRUE;
            continue;
        }
        u8Ret ++;
        pstPromptList->u8DisplaySign = 0;
        pPoint = (MBT_VOID **)(&pstPromptList->pstNext);
        pstPromptList = pstPromptList->pstNext;
    }

    /*还有别的提示存在不能清*/
    if(u8Ret > 0)
    {
        bRefresh = MM_FALSE;
    }
    return bRefresh;
}

MBT_VOID uif_CAMResetAllPromptDisplaySign(MBT_VOID)
{
    PROMPT_LIST *pstPromptList = uiv_pstPromptList;
    while(pstPromptList)
    {
        pstPromptList->u8DisplaySign = 0;
        pstPromptList = pstPromptList->pstNext;
    }
}

PROMPT_LIST *uif_CAMPopUpPromptNode(MBT_VOID)
{
    MBT_S32 iPRILevel = 0;
    PROMPT_LIST *pstRetPrompt = MM_NULL;
    PROMPT_LIST *pstPromptList = uiv_pstPromptList;
    while(pstPromptList)
    {
        if(pstPromptList->u8PRILevel >  iPRILevel)
        {
            iPRILevel = pstPromptList->u8PRILevel;
            pstRetPrompt = pstPromptList;
        }
        pstPromptList = pstPromptList->pstNext;
    }

    if(MM_NULL != pstRetPrompt)
    {
        if(m_CASEcmMsg != pstRetPrompt->ePromptType&&MM_FALSE == CAF_IsCurPrgEcm(pstRetPrompt->u16EcmPid))
        {
            pstRetPrompt = MM_NULL;
        }
    }

    return pstRetPrompt;
}

static MBT_CHAR *uif_GetAlarmStrPRILevel(stPrompt iType,MBT_U8 *pu8PRILevel)
{
    MBT_CHAR *pacRet = MM_NULL;
    switch (iType)
    {
         case DUMMY_KEY_NOSERVICE: /*"节目列表为空,请进行自动搜索!""*/
             pacRet ="No program,please search!";
            *pu8PRILevel = UI_HIPRI_LEVEL5;
            break;	
#if(1 == TFCONFIG)  
#else
         case DUMMY_KEY_PROGRAMSTOPED0: /*"节目停播或者信号检修,请耐心等待!"*/	            
             pacRet ="Service not available";
            *pu8PRILevel = UI_LOPRI_LEVEL1;
            break;	
        case DUMMY_KEY_WAIT_FOR_PIN: /*"等待输入PIN码!"*/              
            pacRet ="E63-Parental locked/blocked is activated.Kindly enter PIN **** to unlock and view the  channel";
           *pu8PRILevel = UI_LOPRI_LEVEL1;
           break;  
#endif
         case DUMMY_KEY_TUNERUNLOCK: /*"信号中断!"*/	            
             pacRet ="E61 - No Signal";
            *pu8PRILevel = UI_HIPRI_LEVEL4;
            break;	
            
        case DUMMY_KEY_INSERTCARD_TYPE0: /*加扰节目，请插入智能卡*/	            
            pacRet = "Please insert the smart card";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
                        
        case DUMMY_KEY_BADCARD_TYPE0: /*无法识别卡，不能使用*/
            pacRet = "Unidentified card";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_EXPICARD_TYPE0: /*智能卡已经过期，请更换新卡*/
            pacRet = "Smart card has expired";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_NOOPER_TYPE0: /*卡中不存在节目运营商*/
            pacRet = "Operator ID error";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_BLACKOUT_TYPE0:  /*条件禁播*/
            pacRet = "Conditional Blackout";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_OUTWORKTIME_TYPE0:  /*不在工作时段内*/
            pacRet = "Out of Working Hours";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_WATCHLEVEL_TYPE0: /*节目级别高于设定观看级别*/
            pacRet = "Out of Teleview Rating";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_PAIRING_TYPE0:  /*节目要求机卡对应*/
            pacRet = "The card is not paired with this STB";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_LOCKPLAY: /*没有授权*/
        case DUMMY_KEY_NOENTITLE_TYPE0: /*没有授权*/
            pacRet = "No Entitlement";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_DECRYPTFAIL_TYPE0:  /*节目解密失败*/
            pacRet = "Decrypt failed";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_NOMONEY_TYPE0: /*卡内金额不足*/
            pacRet = "No enough money";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	
            
        case DUMMY_KEY_ERRREGION_TYPE0:   /*区域不正确*/
            pacRet = "Regional Lockout";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_NEEDFEED_TYPE0:/*子卡已过期，请插入母卡*/
            pacRet = "Please insert the parent card of the current card";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_ERRCARD_TYPE0:		/*智能卡校验失败，请联系运营商，同步智能卡*/
            pacRet = "Card veryfication failed.Please contact the operator";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_UPDATE_TYPE0:	    /*系统升级，请不要拔卡或者关机*/
            pacRet = "Card is patching.Not to remove the card or power off";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_LOWCARDVER_TYPE0 :		/*请升级智能卡*/
            pacRet = "Please upgrade the smart card";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_VIEWLOCK_TYPE0 :		/*请勿频繁切换频道*/
            pacRet = "Please do not switch channels too frequently";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_MAXRESTART_TYPE0:		/*智能卡已受损*/
            pacRet = "Card is in dormancy.Please insert the card after 5 minutes";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_FREEZE_TYPE0:	/*智能卡已冻结，请联系运营商*/
            pacRet = "Your account is locked.Please contact your cable operator";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_CALLBACK_TYPE0:	/*回传失败*/
            pacRet = "Please send the IPPV records back to the operator";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_CURTAINCTR_TYPE0:/*通知机顶盒显示或关闭高级预览*/
            switch(uiv_u16CurtainCode)
            {
                case CDCA_CURTAIN_OK:
                    pacRet = " ";
                    break;
                        
                case CDCA_CURTAIN_TOTTIME_ERROR:
                case CDCA_CURTAIN_WATCHTIME_ERROR:
                case CDCA_CURTAIN_TOTCNT_ERROR:
                case CDCA_CURTAIN_ROOM_ERROR:
                case CDCA_CURTAIN_PARAM_ERROR:
                case CDCA_CURTAIN_TIME_ERROR:
                    pacRet = "Advanced preview program:cannot watch for free";
                    break;
                        
                default:
                    break;
            }
            *pu8PRILevel = CA_PRI_LEVEL1;
            break;	

        case DUMMY_KEY_CURTAIN_TYPE0: /*高级预览节目，该阶段不能免费观看*/
            pacRet = "Advanced preview program:cannot watch for free";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_CARDTESTSTART_TYPE0:  /*升级测试卡测试中...*/
            pacRet = "Card updating";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_CARDTESTFAILD_TYPE0:  /*升级测试卡测试失败，请检查机卡通讯模块*/
            pacRet = "Card update failed";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_CARDTESTSUCC_TYPE0: /*升级测试卡测试成功*/
            pacRet = "Card update successfully";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

        case DUMMY_KEY_STBLOCKED_TYPE0:	/*请关机重启机顶盒*/
            pacRet = "Please restart the STB";
            *pu8PRILevel = CA_PRI_LEVEL2;
            break;	

       case DUMMY_KEY_NOCALIBOPER_TYPE0: /*卡中不存在移植库定制运营商*/
           pacRet = "Ca library and operator does not match";
           *pu8PRILevel = CA_PRI_LEVEL2;
           break;  
           
       case DUMMY_KEY_STBFREEZE_TYPE0: /*机顶盒被冻结*/
           pacRet = "STB is freezed.Please contact the operator";
           *pu8PRILevel = CA_PRI_LEVEL2;
           break;  


        case DUMMY_KEY_UNSUPPORTDEVICE_TYPE0: /*不支持的终端类型（编号：0xXXXX）*/
#if(1 == M_CDCA) 
            sprintf(uiv_strAdaptorBuf,"Unsuported terminal type 0x%04x",CDCASTB_GetTerminalTypeID());
#endif            
            pacRet = uiv_strAdaptorBuf;
            *pu8PRILevel = CA_PRI_LEVEL2;
            break; 

        default:
            break;            
    }

    return pacRet;
}

MBT_VOID uif_ShowCaProcess( MBT_S32 iMark)
{
    MBT_S32 iHeight = MSG_BOX_HEIGHT;
    MBT_S32 iWidth = MSG_BOX_WIDTH;
    MBT_S32 me_StartX;
    MBT_S32 me_StartY;
    MBT_S32 iKey;
    MBT_S32 x;
    MBT_S32 y;
    MBT_U8 u8Loop = 1;
    MBT_BOOL bRefresh = MM_TRUE;
    static MBT_U8 u8Saveed = 0;
    MBT_CHAR u8ProgressRateBuffer[50];
    MBT_S32 me_RateStartX ;
    MBT_CHAR *pstAlarm = "Data receiving progress";
    BITMAPTRUECOLOR  CopybitmapTop;
#if(1 == M_CDCA) 
    CDCAST_CDUpdateStatus stCDUpdateInfo;
    TIMER_M stTime;
#endif
 
    
    if(DUMMY_KEY_PATCHING_PROCESS == iMark)
    {
        pstAlarm = "Card updating progress";
    }
 
    if(uiv_iCaCarUpdateProcess == 100)
    {
        if(DUMMY_KEY_PATCHING_PROCESS == iMark)
        {
#if(1 == M_CDCA) 
            TMF_GetSysTime(&stTime);
            if(0 == stTime.year)
            {
                if(CDCA_RC_OK == TFCAF_ReadCDUpdateInfo(&stCDUpdateInfo))
                {
                    stTime = stCDUpdateInfo.stCDUpdateTime;
                }
            }
            TFCAF_WrtieCDUpdateInfo(&stTime,1);
#endif            
        }
    }
 
    if(uiv_iCaCarUpdateProcess > 100)
    {
        return;
    }
    
    if(DUMMY_KEY_RECEIVEPATCH_PROCESS == iMark && (100 != uiv_iCaCarUpdateProcess||0 == u8Saveed))
    {
#if(1 == M_CDCA) 
        TMF_GetSysTime(&stTime);
        if(0 == stTime.year)
        {
            if(CDCA_RC_OK == TFCAF_ReadCDUpdateInfo(&stCDUpdateInfo))
            {
                stTime = stCDUpdateInfo.stCDUpdateTime;
            }
        }
        TFCAF_WrtieCDUpdateInfo(&stTime,0);
        u8Saveed = 1;
#endif        
    }
   
    x =  P_MENU_LEFT+(OSD_REGINMAXWIDHT -iWidth)/2 ;
    y = P_MENU_TOP+(OSD_REGINMAXHEIGHT -iHeight)/2;    
    me_StartX = x + 15;
    me_StartY = y + 20 +(iHeight  - 30 - 0x11)/2;
    me_RateStartX = x+iWidth-50;
    
    CopybitmapTop.bWidth = iWidth;
    CopybitmapTop.bHeight = iHeight;
    WGUIF_GetRectangleImage(x,y, &CopybitmapTop);
 
    uif_Draw3DProtrudeFrame(x, y, iWidth, iHeight);
    WGUIF_DrawFilledRectangle(x+4, y+4, iWidth-8, iHeight-8, OSD_BACK_COLOR);
    WGUIF_DrawFilledRectangle(x+6, y+6, iWidth-12, 30, LISTITEM_NOFOCUS_COLOR);
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    WGUIF_FNTDrawTxt(x+15, y+11, strlen(pstAlarm), pstAlarm, FONT_FRONT_COLOR_WHITE);
    uif_DrawProgress(me_StartX, me_StartY, MENU_PROGRESS_RED,uiv_iCaCarUpdateProcess, iWidth - 80,100);
    sprintf(u8ProgressRateBuffer,"%d%%",uiv_iCaCarUpdateProcess);
    WGUIF_DrawFilledRectangle(me_RateStartX, me_StartY-2, 40, 30, OSD_BACK_COLOR);
    WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    WGUIF_FNTDrawTxt(me_RateStartX, me_StartY-2, strlen(u8ProgressRateBuffer), u8ProgressRateBuffer,FONT_FRONT_COLOR_WHITE);
    while(u8Loop)
    {
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        iKey = uif_ReadKey ( 0);  
        switch(iKey)
        {
            case DUMMY_KEY_PATCHING_PROCESS:
            case DUMMY_KEY_RECEIVEPATCH_PROCESS:
                if(uiv_iCaCarUpdateProcess == 100)
                {
                    if(DUMMY_KEY_PATCHING_PROCESS == iMark)
                    {
#if(1 == M_CDCA) 
                        TMF_GetSysTime(&stTime);
                        if(0 == stTime.year)
                        {
                            if(CDCA_RC_OK == TFCAF_ReadCDUpdateInfo(&stCDUpdateInfo))
                            {
                                stTime = stCDUpdateInfo.stCDUpdateTime;
                            }
                        }
                        TFCAF_WrtieCDUpdateInfo(&stTime,1);
#endif                        
                    }
                }
 
                if(uiv_iCaCarUpdateProcess > 100)
                {
                    u8Loop = 0;
                    break;
                }
                
                uif_DrawProgress(me_StartX, me_StartY, MENU_PROGRESS_RED, uiv_iCaCarUpdateProcess, iWidth - 80,100);
                sprintf(u8ProgressRateBuffer,"%d%%",uiv_iCaCarUpdateProcess);
                WGUIF_DrawFilledRectangle(me_RateStartX, me_StartY-2, 40, 30, OSD_BACK_COLOR);
                WGUIF_FNTDrawTxt(me_RateStartX, me_StartY-2, strlen(u8ProgressRateBuffer), u8ProgressRateBuffer, FONT_FRONT_COLOR_BLACK);
                bRefresh = MM_TRUE;
                break;
 
              
           case DUMMY_KEY_FORCE_REFRESH:
               bRefresh = MM_TRUE;
               break;
               
            case -1:
                break;
                
            default:    
                break;
        }
    }
 
    if(MM_TRUE == WGUIF_PutRectangleImage(x,y, &CopybitmapTop))
    {
        WGUIF_ReFreshLayer();
    }
    uif_ResetAlarmMsgFlag();
}

static MBT_VOID DestroyScrollOsdMsg(OSD_DISPLAY_CTR *pstOsdCtr)
{
    if(MM_NULL == pstOsdCtr)
    {
        MLUI_ERR("--->Return Scroll is null!!!");
        return;
    }

    pstOsdCtr->stOsdMsgBarCtr.ucBit.uCurState  = 0;
    pstOsdCtr->stOsdMsgBarCtr.ucBit.uBoxDisplayed = 0;
    if(MM_NULL != pstOsdCtr->pu8BmpBuf)
    {
        MLMF_Free(pstOsdCtr->pu8BmpBuf);
        pstOsdCtr->pu8BmpBuf = MM_NULL;
        pstOsdCtr->stReginBmp.pBData = MM_NULL;
    }
}

static MBT_VOID CreateScrollGeneralOsdMsg(OSD_DISPLAY_CTR *pstOsdCtr, MBT_BOOL bTopOSD )
{
    MBT_S32 s32StrLen;
    MBT_U32 u32StrWidth;
    MBT_U32 u32Temp;
    MBT_U32 u32ReginW;
    MBT_U32 u32ReginH;
    MBT_U32 *pu32Buf;
    BITMAPTRUECOLOR *pstBmp;
    MBT_U32 i;

    if(MM_NULL == pstOsdCtr)
    {
        return;
    }

    if(MM_NULL != pstOsdCtr->pu8BmpBuf)
    {
        MLMF_Free(pstOsdCtr->pu8BmpBuf);
        pstOsdCtr->pu8BmpBuf = MM_NULL;
        pstOsdCtr->stReginBmp.pBData = MM_NULL;
    }
    if(bTopOSD == MM_TRUE)
    {
        WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
        MLUI_DEBUG("---> CHARMsg = %s",g_uiv_OSDTopMsg);
        CAS_ModifyOSDString(g_uiv_OSDTopMsg);
        s32StrLen = strlen(g_uiv_OSDTopMsg);
        u32StrWidth = WGUIF_FNTGetTxtWidth(s32StrLen, g_uiv_OSDTopMsg);
    }
    else
    {
        WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
        MLUI_DEBUG("---> CHARMsg = %s",g_uiv_OSDBottomMsg);
        CAS_ModifyOSDString(g_uiv_OSDBottomMsg);
        s32StrLen = strlen(g_uiv_OSDBottomMsg);
        u32StrWidth = WGUIF_FNTGetTxtWidth(s32StrLen, g_uiv_OSDBottomMsg);
    }
    u32ReginW = u32StrWidth+20;
    u32ReginH = m_OsdHeight;
    u32Temp = u32ReginW*u32ReginH;
    pu32Buf = MLMF_Malloc(u32Temp*OSD_COLOR_DEPTH);
    if(MM_NULL == pu32Buf)
    {
        MLUI_ERR("Malloc %d faile",u32Temp*OSD_COLOR_DEPTH);
        return;
    }

    for(i = 0;i < u32Temp;i++)
    {
        pu32Buf[i] = OSD_BACKGROUND_COLOR;
    }
    if(bTopOSD == MM_TRUE)
    {
        WGUIF_FNTDrawRgnTxt(10,(u32ReginH - WGUIF_GetFontHeight())/2,(MBT_U8 *)pu32Buf,u32ReginW,u32ReginH,s32StrLen,g_uiv_OSDTopMsg, FONT_FRONT_COLOR_WHITE);
    }
    else
    {
        WGUIF_FNTDrawRgnTxt(10,(u32ReginH - WGUIF_GetFontHeight())/2,(MBT_U8 *)pu32Buf,u32ReginW,u32ReginH,s32StrLen,g_uiv_OSDBottomMsg, FONT_FRONT_COLOR_WHITE);
    }
    pstBmp = &(pstOsdCtr->stReginBmp);
    /*为了提高拷屏速度,这里用ncatch的内存地址*/
    MLMF_SYS_DcacheFlush(pu32Buf,u32Temp*OSD_COLOR_DEPTH);
    pstBmp->pBData = pu32Buf;
    pstBmp->bColorType = MM_OSD_COLOR_MODE_ARGB8888;
    pstBmp->bWidth = u32ReginW;
    pstBmp->bHeight = u32ReginH;
    MLUI_DEBUG("--->Bmp width = %d, Height = %d",u32ReginW, u32ReginH);
    pstOsdCtr->stOsdMsgBarCtr.ucBit.uCurState = 1;
    pstOsdCtr->stOsdMsgBarCtr.ucBit.uBoxDisplayed = 0;
    pstOsdCtr->s32ReginX = 0;    
    pstOsdCtr->s32ScreenX = m_OsdStatX + m_OsdWidth - m_OsdMovStep; 
    pstOsdCtr->pu8BmpBuf = pu32Buf;
    pstOsdCtr->bIsSuperOSD = MM_FALSE;
}


static MBT_VOID CreateScrollSuperOsdMsg(OSD_DISPLAY_CTR *pstOsdCtr)
{
    MBT_S32 s32StrLen;
    MBT_U32 u32StrWidth;
    MBT_U32 u32Temp;
    MBT_U32 u32ReginW;
    MBT_U32 u32ReginH;
    MBT_U32 *pu32Buf;
    BITMAPTRUECOLOR *pstBmp;
    MBT_CHAR  charMsg[CDCA_MAXLEN_OSD];
    MBT_U32 i;

    if(MM_NULL == pstOsdCtr)
    {
        return;
    }

    if(MM_NULL != pstOsdCtr->pu8BmpBuf)
    {
        MLUI_DEBUG("--->Free ");
        MLMF_Free(pstOsdCtr->pu8BmpBuf);
        pstOsdCtr->pu8BmpBuf = MM_NULL;
        pstOsdCtr->stReginBmp.pBData = MM_NULL;
    }

    s32StrLen = strlen(CDCASuperOsd.szContent);
    if(s32StrLen > CDCA_MAXLEN_OSD)
    {
        s32StrLen = CDCA_MAXLEN_OSD;
    }
    
    memset(charMsg, 0, CDCA_MAXLEN_OSD);
    memcpy(charMsg, CDCASuperOsd.szContent, s32StrLen);

    if(CDCASuperOsd.byDisplayMode == 0)
    {
        MLUI_DEBUG("--->Font Size = %d",CDCASuperOsd.byFontSize);
        WGUIF_SetFontHeight(CDCASuperOsd.byFontSize);
    }
    else
    {
        WGUIF_SetFontHeight(SMALL_GWFONT_HEIGHT);
    }

    MLUI_DEBUG("---> CHARMsg = %s",charMsg);
    CAS_ModifyOSDString(charMsg);
    s32StrLen = strlen(charMsg);
    u32StrWidth = WGUIF_FNTGetTxtWidth(s32StrLen,charMsg);
    u32ReginW = u32StrWidth+20;
    u32ReginH = m_OsdHeight;
    u32Temp = u32ReginW*u32ReginH;
    pu32Buf = MLMF_Malloc(u32Temp*OSD_COLOR_DEPTH);
    if(MM_NULL == pu32Buf)
    {
        MLUI_ERR("Malloc %d faile",u32Temp*OSD_COLOR_DEPTH);
        return;
    }
    
    for(i = 0;i < u32Temp;i++)
    {
        pu32Buf[i] = CDCASuperOsd.dwBackgroundColor;
    }
    WGUIF_FNTDrawRgnTxt(10,(u32ReginH - WGUIF_GetFontHeight())/2,(MBT_U8 *)pu32Buf,u32ReginW,u32ReginH,s32StrLen,charMsg, CDCASuperOsd.dwFontColor);

    pstBmp = &(pstOsdCtr->stReginBmp);
    /*为了提高拷屏速度,这里用ncatch的内存地址*/
    MLMF_SYS_DcacheFlush(pu32Buf,u32Temp*OSD_COLOR_DEPTH);
    pstBmp->pBData = pu32Buf;
    pstBmp->bColorType = MM_OSD_COLOR_MODE_ARGB8888;
    pstBmp->bWidth = u32ReginW;
    pstBmp->bHeight = u32ReginH;
    MLUI_DEBUG("--->Bmp width = %d, Height = %d",u32ReginW, u32ReginH);
    pstOsdCtr->stOsdMsgBarCtr.ucBit.uCurState = 1;
    pstOsdCtr->stOsdMsgBarCtr.ucBit.uBoxDisplayed = 0;
    pstOsdCtr->s32ReginX = 0;    
    pstOsdCtr->s32ScreenX = m_OsdStatX + m_OsdWidth - m_OsdMovStep; 
    pstOsdCtr->pu8BmpBuf = pu32Buf;
    pstOsdCtr->bIsSuperOSD = MM_TRUE;
}

/*****************************************************************************
* Function Name 	: uif_CAMGetCaMsg
* Description		: Get the Messages from CAS to display with a static position.
* Param			: sMsgType:  MBT_U16    the Message type.  INPUT
* return			: None.
*****************************************************************************/
MBT_S32 uif_CAMGetCaMsg(MBT_S32 sMsgType,MBT_S32 iExtern1,MBT_S32 iExtern2)
{
    MBT_S32 iRet = -1;
    
    switch (sMsgType)
    {
        case DUMMY_KEY_INSERTCARD_TYPE0: /*加扰节目，请插入智能卡*/	            
            iRet = sMsgType;
            uiv_stCaPassedEcmPid = iExtern1;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
#if(1 == M_CDCA)			
            CDSTBCA_SetInvalidCW();
#endif
            break;	
            
        case DUMMY_KEY_PVR_PLAY_NOENTITLEMENT_STOP: 
            iRet = sMsgType;
            break;	
                        
        case DUMMY_KEY_CANCEL_TYPE0: /*取消当前的显示*/
#if(1 == M_CDCA) 
            TFCAF_CDInGetCDInfo();
#endif
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CancelSpecifyEcmPrompt( iExtern1);
#if(1 == TFCONFIG)  
#else
            uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_PROGRAMSTOPED0);
            uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_WAIT_FOR_PIN);
#endif
            if(0 == uif_IsPlayProcess())
            {
                DBSF_PlyOpenVideoWin(MM_TRUE);
            }
            break;
            
        case DUMMY_KEY_CARD_IN: 
            iRet = DUMMY_KEY_CARD_IN;
            break;		
        case DUMMY_KEY_CARD_OUT: 
            iRet = DUMMY_KEY_CARD_OUT;
            break;	            
        case DUMMY_KEY_BADCARD_TYPE0: /*无法识别卡，不能使用*/
            iRet = sMsgType;
            uiv_stCaPassedEcmPid = iExtern1;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
	#if(1 == M_CDCA)		
            CDSTBCA_SetInvalidCW();
	#endif
            break;		
            
        case DUMMY_KEY_EXPICARD_TYPE0: /*智能卡已经过期，请更换新卡*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            #if(1 == M_CDCA)		
            CDSTBCA_SetInvalidCW();
	#endif
            break;
            
        case DUMMY_KEY_NOOPER_TYPE0: /*卡中不存在节目运营商*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            #if(1 == M_CDCA)		
            CDSTBCA_SetInvalidCW();
	#endif
            break;		
            
        case DUMMY_KEY_BLACKOUT_TYPE0:  /*条件禁播*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
          #if(1 == M_CDCA)		
            CDSTBCA_SetInvalidCW();
	#endif
            break;		
            
        case DUMMY_KEY_OUTWORKTIME_TYPE0:  /*不在工作时段内*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            #if(1 == M_CDCA)		
            CDSTBCA_SetInvalidCW();
	#endif
            break;
            
        case DUMMY_KEY_WATCHLEVEL_TYPE0: /*节目级别高于设定观看级别*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;	
            
        case DUMMY_KEY_PAIRING_TYPE0:  /*节目要求机卡对应*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;
            
        case DUMMY_KEY_UNLOCKPLAY: /*收到授权*/
            iRet = sMsgType;
            uif_CAMCancelSpecifyTypePrompt(DUMMY_KEY_LOCKPLAY);
            break;
        case DUMMY_KEY_LOCKPLAY: /*没有授权*/
        case DUMMY_KEY_NOENTITLE_TYPE0: /*没有授权*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;	
            
        case DUMMY_KEY_DECRYPTFAIL_TYPE0:  /*节目解密失败*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;
            
        case DUMMY_KEY_NOMONEY_TYPE0: /*卡内金额不足*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;
            
        case DUMMY_KEY_ERRREGION_TYPE0:   /*区域不正确*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;	
        case DUMMY_KEY_NEEDFEED_TYPE0:/*子卡已过期，请插入母卡*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
           #if(1 == M_CDCA)		
            CDSTBCA_SetInvalidCW();
	#endif
            break;	
        case DUMMY_KEY_ERRCARD_TYPE0:		/*智能卡校验失败，请联系运营商，同步智能卡*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
         #if(1 == M_CDCA)		
            CDSTBCA_SetInvalidCW();
	#endif
            break;	
        case DUMMY_KEY_UPDATE_TYPE0:	    /*系统升级，请不要拔卡或者关机*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;	
        case DUMMY_KEY_LOWCARDVER_TYPE0 :		/*请升级智能卡*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;	
        case DUMMY_KEY_VIEWLOCK_TYPE0 :		/*请勿频繁切换频道*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;	
        case DUMMY_KEY_MAXRESTART_TYPE0:		/*智能卡已受损*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;	
        case DUMMY_KEY_FREEZE_TYPE0:	/*智能卡已冻结，请联系运营商*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;	
        case DUMMY_KEY_CURTAINCTR_TYPE0:    /*通知机顶盒显示或关闭高级预览*/
            uiv_stCaPassedEcmPid = (MBT_U16)(iExtern1>>16);
            uiv_u16CurtainCode = (MBT_U16)(iExtern1&0x0000ffff);
            iRet = sMsgType;
            switch(uiv_u16CurtainCode)
            {
                case CDCA_CURTAIN_CANCLE:
                    uif_CAMCancelSpecifyTypePrompt(sMsgType);
                    break;
                                                
                case CDCA_CURTAIN_OK:
                case CDCA_CURTAIN_TOTTIME_ERROR:
                case CDCA_CURTAIN_WATCHTIME_ERROR:
                case CDCA_CURTAIN_TOTCNT_ERROR:
                case CDCA_CURTAIN_ROOM_ERROR:
                case CDCA_CURTAIN_PARAM_ERROR:
                case CDCA_CURTAIN_TIME_ERROR:
                    uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,uiv_stCaPassedEcmPid);
                    break;
                default:
                    break;
            }
            break; 
        case DUMMY_KEY_CALLBACK_TYPE0:  /*回传失败*/
        case DUMMY_KEY_CURTAIN_TYPE0: /*高级预览节目，该阶段不能免费观看*/
        case DUMMY_KEY_CARDTESTSTART_TYPE0:  /*升级测试卡测试中...*/
        case DUMMY_KEY_CARDTESTFAILD_TYPE0:/*升级测试卡测试失败，请检查机卡通讯模块*/
        case DUMMY_KEY_CARDTESTSUCC_TYPE0: /*升级测试卡测试成功*/
        case DUMMY_KEY_STBLOCKED_TYPE0:	/*请关机重启机顶盒*/
        case DUMMY_KEY_NOCALIBOPER_TYPE0: /*卡中不存在移植库定制运营商*/
        case DUMMY_KEY_STBFREEZE_TYPE0: /*机顶盒被冻结*/
        case DUMMY_KEY_UNSUPPORTDEVICE_TYPE0: /*不支持的终端类型（编号：0xXXXX）*/
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            uif_CAMPutNewPrompt(sMsgType,m_CASEcmMsg,iExtern1);
            break;
            
        case DUMMY_KEY_HIDE_FINGER:
            if(uiv_stFingerEcmPid == iExtern1)
            {
                iRet = sMsgType;
            }
            break;
            
        case DUMMY_KEY_SHOW_FINGER:
        	if(0 != iExtern2)
            {
            	if(MM_NULL != uiv_pstrFinger)
                {
                    uif_ForceFree(uiv_pstrFinger);
                }
                
                 uiv_pstrFinger = uif_ForceMalloc(strlen((MBT_VOID*)iExtern2)+1);
            	if(MM_NULL != uiv_pstrFinger)
            	{
                    strcpy(uiv_pstrFinger,(MBT_VOID*)iExtern2);
                }
            }
            else
            {
                uif_ForceFree(uiv_pstrFinger);
                uiv_pstrFinger = MM_NULL;
            }
            iRet = sMsgType;
            uiv_stFingerEcmPid = iExtern1;
            uiv_stCaPassedEcmPid = iExtern1;
            break;
            
       case DUMMY_KEY_CLEAR_SUPER_FINGER:
            if(uiv_stFingerEcmPid == iExtern1)
            {
                iRet = sMsgType;
            }
            break;

        case DUMMY_KEY_SHOW_SUPER_FINGER:
            uiv_stFingerEcmPid = iExtern1;
            uiv_stCaPassedEcmPid = iExtern1;
            memset(&CDCASuperFinger, 0, sizeof(CDCASuperFinger));
            memcpy(&CDCASuperFinger,(MBT_VOID*)iExtern2, sizeof(CDCASuperFinger)); 
            iRet = sMsgType;
            break;
            
        case DUMMY_KEY_CLEAR_SUPER_OSD:
            uiv_stCaPassedEcmPid = iExtern1;
            iRet = sMsgType;
            break;

        case DUMMY_KEY_SHOW_SUPER_OSD:
            uiv_stCaPassedEcmPid = iExtern1;
            memset(&CDCASuperOsd, 0, sizeof(CDCASuperOsd));
            memcpy(&CDCASuperOsd,(MBT_VOID*)iExtern2, sizeof(CDCASuperOsd)); 
            iRet = sMsgType;
            break;

        case DUMMY_KEY_DISP_OSDTOP: 
            MLUI_DEBUG("start top osd");
            uif_CAMClearOSD(CDCA_OSD_TOP);
            uiv_stCaPassedEcmPid = iExtern1;
            if(0 != iExtern2)
            {
                g_uiv_OSDTopMsg[CDCA_MAXLEN_OSD] = 0;
                memcpy(g_uiv_OSDTopMsg,(MBT_VOID*)iExtern2, CDCA_MAXLEN_OSD);
            }
            CreateScrollGeneralOsdMsg(&uiv_stTopOsdCtr, MM_TRUE);
            iRet = sMsgType;
            break;
            
        case DUMMY_KEY_DISP_OSDBOTTOM: 
            MLUI_DEBUG("start bottom osd");
            uif_CAMClearOSD(CDCA_OSD_BOTTOM);
            uiv_stCaPassedEcmPid = iExtern1;
            if(0 != iExtern2)
            {
                g_uiv_OSDBottomMsg[CDCA_MAXLEN_OSD] = 0;
                memcpy(g_uiv_OSDBottomMsg,(MBT_VOID*)iExtern2, CDCA_MAXLEN_OSD);
            }
            CreateScrollGeneralOsdMsg(&uiv_stBottomOsdCtr, MM_FALSE);
            iRet = sMsgType;
            break;

        case DUMMY_KEY_CANCEL_OSDTOP:            
        case DUMMY_KEY_CANCEL_OSDBOTTOM:
            uiv_stCaPassedEcmPid = iExtern1;
            MLUI_DEBUG("--->uiv_stCaPassedEcmPid = 0x%x, iExtern1 = 0x%x",uiv_stCaPassedEcmPid,iExtern1);
            iRet = sMsgType;
            break;
          
        case DUMMY_KEY_CANCEL_ITEM:  /*隐藏邮件通知图标*/
            CamEmailTick(0);
            uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uCurState = 0;
            uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uBoxDisplayed = 1;
            iRet = sMsgType;
            break;	
            
        case DUMMY_KEY_SHOW_ITEM:  /*新邮件通知，显示新邮件图标*/
            CamEmailTick(0);
            uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uCurState = 1;
            uiv_stMsgBar[CA_DTVIA_EMAIL_MSG].ucBit.uBoxDisplayed = 0;
            iRet = sMsgType;
            break;	
            
        case DUMMY_KEY_NO_SPACE:   /*有新邮件，但磁盘空间不够；图标闪烁。*/
            CamEmailTick(1);
            iRet = sMsgType;
            break;	
            
       case DUMMY_KEY_DENTITLE_ALL_READ:    /*反授权已经读完*/
            break;      
            
       case DUMMY_KEY_DENTITLE_RECEIVED:    /*反授权已经收到*/
            break;       
            
       case DUMMY_KEY_DENTITLE_SPACESMALL:    /*空间小*/
            break;         
            
        case DUMMY_KEY_FAILED_TOREAD_PARENT:
            uif_ReadParentFaile();         
            break;
            
        case  DUMMY_KEY_SUCCED_TOREAD_PARENT:
            uif_ReadParentSuccess();         
            break;

        case DUMMY_KEY_UNLOCK_SERVICE:    
            uif_UnPlayLockService();
            break;

       case DUMMY_KEY_LOCK_SERVICE:   
            if(0 != iExtern2)
            {
                uiv_stCaPassedEcmPid = iExtern1;
                uif_SetLockServiceInfo((MBT_VOID *)iExtern2);
                iRet = sMsgType;
            }
            break;   

       case DUMMY_KEY_RECEIVEPATCH_PROCESS:    /*数据包接收进度*/
#if(1 == M_CDCA) 
            TFCAF_CDInGetCDInfo();
#endif
       case DUMMY_KEY_PATCHING_PROCESS:    /*卡升级进度*/
            uiv_iCaCarUpdateProcess = iExtern1;
            iRet = sMsgType;
            break;   
            
        case DUMMY_KEY_IPPVFREEVIEW_TYPE0:  /*免费预览阶段*/
            uiv_stCaPassedEcmPid = iExtern1;      
            uiv_stIppvCaPassedEcmPid = iExtern1;
#if(1 == M_CDCA) 
            memcpy(&uiv_pstIppvBuyInfo,(MBT_VOID*)iExtern2,sizeof(uiv_pstIppvBuyInfo));
#endif            
            iRet = sMsgType;
            break;     
            
        case DUMMY_KEY_IPPVPAYEVIEW_TYPE0:    /*收费阶段*/
            uiv_stCaPassedEcmPid = iExtern1;
            uiv_stIppvCaPassedEcmPid = iExtern1;
#if(1 == M_CDCA) 
            memcpy(&uiv_pstIppvBuyInfo,(MBT_VOID*)iExtern2,sizeof(uiv_pstIppvBuyInfo));
#endif            
            iRet = sMsgType;
            break;           
            
        case DUMMY_KEY_IPPTPAYEVIEW_TYPE0:    /*收费阶段*/
            uiv_stCaPassedEcmPid = iExtern1;
            uiv_stIppvCaPassedEcmPid = iExtern1;
#if(1 == M_CDCA) 
            memcpy(&uiv_pstIppvBuyInfo,(MBT_VOID*)iExtern2,sizeof(uiv_pstIppvBuyInfo));
#endif            
            iRet = sMsgType;
            break; 
             
        default:
            iRet = sMsgType;
            break;
    }

    return iRet;
}

/**************************************开始超级指纹************************************/
static MBT_BOOL CDCASuperFingerPretreatment(MBT_VOID)
{
    //如果是透明色
    if((CDCASuperFinger.dwFontColor&0x00080808) == 0)
    {
        CDCASuperFinger.dwFontColor |= 0x00010101;
    }

    if((CDCASuperFinger.dwBackgroundColor&0x00080808) == 0)
    {
        CDCASuperFinger.dwBackgroundColor |= 0x00010201;
    }

    switch(CDCASuperFinger.byFontSize)
    {//因为长度不够，不能按照最大值设置大小
        case 0:
            CDCASuperFinger.byFontSize = GWFONT_HEIGHT_SIZE18;
            break;

        case 1:
            CDCASuperFinger.byFontSize = SMALL_GWFONT_HEIGHT;
            break;

        case 2:
            CDCASuperFinger.byFontSize = GWFONT_HEIGHT_SIZE16;
            break;

        default:
            CDCASuperFinger.byFontSize = GWFONT_HEIGHT_SIZE18;
            break;
    }    
    return MM_TRUE;
}

static MBT_VOID CDCASuperFingerShowString(MBT_U32 u32StartX, MBT_U32 u32StartY)
{
    WGUIF_SetFontHeight(CDCASuperFinger.byFontSize);
    MBT_U32 u32BarW = WGUIF_FNTGetTxtWidth(strlen(CDCASuperFinger.szContent), CDCASuperFinger.szContent) + 5;
    MBT_U32 u32BarH = CDCASuperFinger.byFontSize + 4;
    
    WGUIF_ClsExtScreen(g_u16FingerDisplayX, g_u16FingerDisplayY, g_u16FingerDisplayW, g_u16FingerDisplayH);
    if(g_stSuperFingerCopybitmap.pBData != NULL)
    {
        MLUI_DEBUG("--->release last finger");
        WGUIF_ReleaseRectangleImageExt(&g_stSuperFingerCopybitmap);
    }
    
    if(g_stSuperOSDCenterCopybitmap.pBData != NULL)//有OSD
    {
        MLUI_DEBUG("--->recovery the osd");
        WGUIF_PutRectangleImageExt(g_u16SuperOSDX, g_u16SuperOSDY, &g_stSuperOSDCenterCopybitmap);
    }

    //水印显示和指纹显示位置有重叠
    if (MM_FALSE == uif_JudgeWaterMarkPositionToShowFinger(u32StartX, u32StartY-2, u32BarW, u32BarH))
    {
        u32StartX = m_OsdStatX;
        u32StartY = m_SuperFingerStartTopY;    
    }

    WGUIF_DrawFilledRectExt(u32StartX, u32StartY-2, u32BarW, u32BarH, CDCASuperFinger.dwBackgroundColor);
    WGUIF_FNTDrawExtTxt(u32StartX, u32StartY, strlen(CDCASuperFinger.szContent), CDCASuperFinger.szContent, CDCASuperFinger.dwFontColor);

    g_u16FingerDisplayX = u32StartX;
    g_u16FingerDisplayY = u32StartY - 2;
    g_u16FingerDisplayW = u32BarW;
    g_u16FingerDisplayH = u32BarH;

    if(g_stSuperFingerCopybitmap.pBData == NULL)
    {
    	g_stSuperFingerCopybitmap.bWidth = g_u16FingerDisplayW;
    	g_stSuperFingerCopybitmap.bHeight = g_u16FingerDisplayH;
    	WGUIF_GetRectangleImageExt(g_u16FingerDisplayX, g_u16FingerDisplayY, &g_stSuperFingerCopybitmap);
    }
}

static MBT_U8 CDCAFingerGetStr(MBT_CHAR cString)
{
    MBT_U8 u8Result = 0;
    if(cString >='0' && cString <='9')
    {
        u8Result = cString -'0';
    }
    else if(cString >='a' && cString <='f')
    {
        u8Result = cString -'a' + 0x0a;
    }
    else if(cString >='A' && cString <='F')
    {
        u8Result = cString -'A' + 0x0a;
    }
    return u8Result;
}

static MBT_VOID CDCASuperFingerShowDot(MBT_U32 u32StartX, MBT_U32 u32StartY)
{
    MBT_U32 u32x;
    MBT_U32 u32y;
    int row,col;
    MBT_U8 Size = CDCASuperFinger.byFontSize;
    MBT_U16 TotalSize = Size*10;
    MBT_U8 u8ContentResult  = 0;

    WGUIF_ClsExtScreen(g_u16FingerDisplayX, g_u16FingerDisplayY, g_u16FingerDisplayW, g_u16FingerDisplayH);
    
    if(g_stSuperFingerCopybitmap.pBData != NULL)
    {
        MLUI_DEBUG("--->release last finger");
        WGUIF_ReleaseRectangleImageExt(&g_stSuperFingerCopybitmap);
    }
    
    if(g_stSuperOSDCenterCopybitmap.pBData != NULL)//有OSD
    {
        MLUI_DEBUG("--->recovery the osd");
        WGUIF_PutRectangleImageExt(g_u16SuperOSDX, g_u16SuperOSDY, &g_stSuperOSDCenterCopybitmap);
    }

    //水印显示和指纹显示位置有重叠
    if (MM_FALSE == uif_JudgeWaterMarkPositionToShowFinger(u32StartX, u32StartY, TotalSize, TotalSize))
    {
        u32StartX = m_OsdStatX;
        u32StartY = m_SuperFingerStartTopY;    
    }
    
    WGUIF_DrawFilledRectExt(u32StartX, u32StartY, TotalSize, TotalSize, CDCASuperFinger.dwBackgroundColor);
    
    //四个角的矩形
    WGUIF_DrawFilledRectExt(u32StartX, u32StartY, Size, Size, CDCASuperFinger.dwFontColor);

    u32x = u32StartX + Size*9;
    WGUIF_DrawFilledRectExt(u32x, u32StartY, Size, Size, CDCASuperFinger.dwFontColor);

    u32x = u32StartX;
    u32y = u32StartY + Size*9;
    WGUIF_DrawFilledRectExt(u32x, u32y, Size, Size, CDCASuperFinger.dwFontColor);

    u32x = u32StartX + Size*9;
    u32y = u32StartY + Size*9;
    WGUIF_DrawFilledRectExt(u32x, u32y, Size, Size, CDCASuperFinger.dwFontColor);
    for(row=0;row<8;row++)
    {
        for(col=0;col<8;col++)
        {
            u32x = u32StartX + Size*(col+1);
            u32y = u32StartY + Size*(row+1);
            u8ContentResult = (CDCASuperFinger.szContent[col/4*8+row%8] >> (3-col%4))&1;
            u8ContentResult = CDCAFingerGetStr(CDCASuperFinger.szContent[col/4*8+row%8]);
            if((u8ContentResult>>(3-col%4))& 1)
            {
                WGUIF_DrawFilledRectExt(u32x, u32y, Size, Size, CDCASuperFinger.dwFontColor);
            }
            else
            {
                //不画
            }
        }
    }

    g_u16FingerDisplayX = u32StartX;
    g_u16FingerDisplayY = u32StartY;
	g_u16FingerDisplayW = TotalSize;
	g_u16FingerDisplayH = TotalSize;

    if(g_stSuperFingerCopybitmap.pBData == NULL)
    {
    	g_stSuperFingerCopybitmap.bWidth = g_u16FingerDisplayW;
    	g_stSuperFingerCopybitmap.bHeight = g_u16FingerDisplayH;
    	WGUIF_GetRectangleImageExt(g_u16FingerDisplayX, g_u16FingerDisplayY, &g_stSuperFingerCopybitmap);
    }
}

static MBT_VOID CDCASuperFingerShowMatrix(MBT_U32 u32StartX, MBT_U32 u32StartY)
{
    MBT_U32 u32x;
    MBT_U32 u32y;
    int i;
    MBT_U8 Size = CDCASuperFinger.byFontSize;
    MBT_U16 TotalSize = Size*16;
    MBT_U8 u8LastFontSize = WGUIF_GetFontHeight();
    
    WGUIF_ClsExtScreen(g_u16FingerDisplayX, g_u16FingerDisplayY, g_u16FingerDisplayW, g_u16FingerDisplayH);
    if(g_stSuperFingerCopybitmap.pBData != NULL)
    {
        MLUI_DEBUG("--->release last finger");
        WGUIF_ReleaseRectangleImageExt(&g_stSuperFingerCopybitmap);
    }
    
    if(g_stSuperOSDCenterCopybitmap.pBData != NULL)//有OSD
    {
        MLUI_DEBUG("--->recovery the osd");
        WGUIF_PutRectangleImageExt(g_u16SuperOSDX, g_u16SuperOSDY, &g_stSuperOSDCenterCopybitmap);
    }

    //水印显示和指纹显示位置有重叠
    if (MM_FALSE == uif_JudgeWaterMarkPositionToShowFinger(u32StartX, u32StartY, TotalSize, TotalSize))
    {
        u32StartX = m_OsdStatX;
        u32StartY = m_SuperFingerStartTopY;    
    }
    
    WGUIF_DrawFilledRectExt(u32StartX, u32StartY, TotalSize, TotalSize, CDCASuperFinger.dwBackgroundColor);

    WGUIF_SetFontHeight(CDCASuperFinger.byFontSize);
    for(i=0;i<strlen(CDCASuperFinger.szContent);i++)
    {
        u32x = u32StartX + ((CDCASuperFinger.pbyMatrixInnerPos[i]&0xf0)>>4)*Size;
        u32y = u32StartY + ((CDCASuperFinger.pbyMatrixInnerPos[i]&0x0f))*Size;
        WGUIF_FNTDrawExtTxt(u32x, u32y, 1, &CDCASuperFinger.szContent[i], CDCASuperFinger.dwFontColor); 
    }
    
    g_u16FingerDisplayX = u32StartX;
    g_u16FingerDisplayY = u32StartY;
    g_u16FingerDisplayW = TotalSize;
    g_u16FingerDisplayH = TotalSize;
    WGUIF_SetFontHeight(u8LastFontSize);

    if(g_stSuperFingerCopybitmap.pBData == NULL)
    {
    	g_stSuperFingerCopybitmap.bWidth = g_u16FingerDisplayW;
    	g_stSuperFingerCopybitmap.bHeight = g_u16FingerDisplayH;
    	WGUIF_GetRectangleImageExt(g_u16FingerDisplayX, g_u16FingerDisplayY, &g_stSuperFingerCopybitmap);
    }
}

MBT_BOOL uif_CAMFingerSuperRandom(MBT_VOID)
{
    MBT_U32 u32Rand = MLMF_SYS_GetMS(); 
    MBT_U32 u32FingerStartX = 0;
    MBT_U32 u32FingerStartY = 0;
    MBT_U32 u32BarW, u32BarH;
    MBT_U16 u16TotalSize = 0;
    
    switch(CDCASuperFinger.byShowType)
    {
        case 0:
            WGUIF_SetFontHeight(CDCASuperFinger.byFontSize);
            u32BarW = WGUIF_FNTGetTxtWidth(strlen(CDCASuperFinger.szContent) ,CDCASuperFinger.szContent) + 6;
            u32BarH = CDCASuperFinger.byFontSize + 6;
            if(CDCASuperFinger.byX_position == 100 || CDCASuperFinger.byY_position == 100)
            {
            	u32FingerStartX = m_OsdStatX + (u32Rand%(OSD_REGINMAXWIDHT - 2*m_OsdStatX - u32BarW));
        	    u32FingerStartY = m_SuperFingerStartTopY + (u32Rand%(OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u32BarH));
            }
            break;

        case 1:
            u16TotalSize = CDCASuperFinger.byFontSize * 10;
            if(CDCASuperFinger.byX_position == 100 || CDCASuperFinger.byY_position == 100)
            {
                u32FingerStartX = m_OsdStatX + (u32Rand%(OSD_REGINMAXWIDHT - 2*m_OsdStatX - u16TotalSize));
                u32FingerStartY = m_SuperFingerStartTopY + (u32Rand%(OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u16TotalSize));
            }
            break;

        case 2:
            u16TotalSize = CDCASuperFinger.byFontSize * 16;
            if(CDCASuperFinger.byX_position == 100 || CDCASuperFinger.byY_position == 100)
            {
                u32FingerStartX = m_OsdStatX + (u32Rand%(OSD_REGINMAXWIDHT - 2*m_OsdStatX - u16TotalSize));
                u32FingerStartY = m_SuperFingerStartTopY + (u32Rand%(OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u16TotalSize));
            }
            break;

        default:
            break;
    }

    if((CDCASuperFinger.wFlashing_EachShowTime != 0 && CDCASuperFinger.wFlashing_EachHideTime != 0)
        && (bIsShowTimer == MM_FALSE))
    {
        g_u16FingerDisplayX = u32FingerStartX;
        g_u16FingerDisplayY = u32FingerStartY;
        MLUI_ERR("--->When hide time!!! x:%d, y:%d",g_u16FingerDisplayX, g_u16FingerDisplayY);
        return MM_TRUE; //当闪烁模式，且处于暂停时长时,直接返回，不刷新
    } 

    switch(CDCASuperFinger.byShowType)
    {
        case 0:
            CDCASuperFingerShowString(u32FingerStartX, u32FingerStartY);
            break;
            
        case 1:
            CDCASuperFingerShowDot(u32FingerStartX, u32FingerStartY);
            break;
            
        case 2:
            CDCASuperFingerShowMatrix(u32FingerStartX, u32FingerStartY);
            break;
    }
 
    return MM_TRUE;
}

static MBT_VOID uif_FingerSuperRandomTimerCall(MBT_U32 u32Para[])
{
	UIF_SendKeyToUi(DUMMY_KEY_SUPER_FINGER_JUMP);
}

MBT_BOOL uif_CAMFingerSuperBlinkShow(MBT_VOID)
{
    if(CDCASuperFinger.bIsForcedShow)
    {
        BLASTF_LockKeyBoad();
    }
    bIsShowTimer = MM_TRUE;
    switch(CDCASuperFinger.byShowType)
    {
        case 0:
            CDCASuperFingerShowString(g_u16FingerDisplayX, g_u16FingerDisplayY);
            break;

        case 1:
            CDCASuperFingerShowDot(g_u16FingerDisplayX, g_u16FingerDisplayY);
            break;

        case 2:
            CDCASuperFingerShowMatrix(g_u16FingerDisplayX, g_u16FingerDisplayY);
            break;

        default:
            break;
    }
     
    return MM_TRUE;
}

static MBT_VOID uif_FingerSuperBlinkShowTimerCb(MBT_U32 u32Para[])
{
    UIF_SendKeyToUi(DUMMY_KEY_SUPER_FINGER_SHOW);
}

static MBT_VOID uif_FingerSuperBlinkShowCallTimerCb(MBT_U32 u32Para[])
{
    if(uiv_u8FingerSuperBlinkShowTimer == 0xff)
    {
        UIF_SendKeyToUi(DUMMY_KEY_SUPER_FINGER_SHOW);
        uiv_u8FingerSuperBlinkShowTimer = TMF_SetDbsTimer(uif_FingerSuperBlinkShowTimerCb, MM_NULL, (CDCASuperFinger.wFlashing_EachShowTime+CDCASuperFinger.wFlashing_EachHideTime)*1000, m_Repeat);
    }
    return;
}

MBT_BOOL uif_CAMFingerSuperBlinkHide(MBT_VOID)
{
    if(CDCASuperFinger.bIsForcedShow)
    {
        BLASTF_UnLockKeyBoad();
    }
    bIsShowTimer = MM_FALSE;
    WGUIF_ClsExtScreen(g_u16FingerDisplayX, g_u16FingerDisplayY, g_u16FingerDisplayW, g_u16FingerDisplayH);
    
    if(g_stSuperFingerCopybitmap.pBData != NULL)
    {
        WGUIF_ReleaseRectangleImageExt(&g_stSuperFingerCopybitmap);
    }
    
    if(g_stSuperOSDCenterCopybitmap.pBData != NULL)//有OSD
    {
        WGUIF_PutRectangleImageExt(g_u16SuperOSDX, g_u16SuperOSDY, &g_stSuperOSDCenterCopybitmap);
    }
    return MM_TRUE;
}

static MBT_VOID uif_FingerSuperBlinkHideTimerCb(MBT_U32 u32Para[])
{
    UIF_SendKeyToUi(DUMMY_KEY_SUPER_FINGER_HIDE);
}

static MBT_VOID uif_FingerSuperBlinkHideCallTimerCb(MBT_U32 u32Para[])
{
    if(uiv_u8FingerSuperBlinkHideTimer == 0xff)
    {
        UIF_SendKeyToUi(DUMMY_KEY_SUPER_FINGER_HIDE);
        uiv_u8FingerSuperBlinkHideTimer = TMF_SetDbsTimer(uif_FingerSuperBlinkHideTimerCb, MM_NULL, (CDCASuperFinger.wFlashing_EachShowTime+CDCASuperFinger.wFlashing_EachHideTime)*1000, m_Repeat);
    }
    return;
}

MBT_BOOL uif_CAMFingerSuperUnvisibleShow(MBT_VOID)
{
    MLUI_DEBUG("--->Unvisible show");
    CDCASuperFingerShowDot(g_u16FingerDisplayX, g_u16FingerDisplayY);
    WGUIF_ReFreshLayer();
    
    MLMF_Task_Sleep(42);
    
    WGUIF_ClsExtScreen(g_u16FingerDisplayX, g_u16FingerDisplayY, g_u16FingerDisplayW, g_u16FingerDisplayH);

    if(g_stSuperOSDCenterCopybitmap.pBData != NULL)//有OSD
    {
        WGUIF_PutRectangleImageExt(g_u16SuperOSDX, g_u16SuperOSDY, &g_stSuperOSDCenterCopybitmap);
    }
    WGUIF_ReFreshLayer();
    return MM_TRUE;
}

static MBT_VOID uif_FingerSuperUnvisibleShowTimerCb(MBT_U32 u32Para[])
{
    UIF_SendKeyToUi(DUMMY_KEY_SUPER_FINGER_UNVISIBLE);
}

MBT_BOOL uif_CAMDisplayCDCASuperFinger(MBT_VOID)
{

#if(1 == M_CDCA)
    MBT_U32 u32Rand;
    MBT_U32 u32FingerStartX = 0, u32FingerStartY= 0;
    MBT_U32 u32BarW, u32BarH;
    MBT_U16 u16TotalSize = 0;
    
    if(CDCASuperSem == 0)
    {
        CDSTBCA_SemaphoreInit(&CDCASuperSem, 1);
    }
    CDSTBCA_SemaphoreWait(&CDCASuperSem);

    if(CDCASuperFinger.bIsForcedShow)
    {
        BLASTF_LockKeyBoad();
    }
    //MLUI_DEBUG("--->content = %s",CDCASuperFinger.szContent);
    CDCASuperFingerPretreatment();
    
    u32Rand = MLMF_SYS_GetMS();
    switch(CDCASuperFinger.byShowType)
    {
        case 0:
            WGUIF_SetFontHeight(CDCASuperFinger.byFontSize);
            u32BarW = WGUIF_FNTGetTxtWidth(strlen(CDCASuperFinger.szContent) ,CDCASuperFinger.szContent) + 6;
            u32BarH = CDCASuperFinger.byFontSize + 6;
            if(CDCASuperFinger.byX_position == 100 || CDCASuperFinger.byY_position == 100)
            {
            	u32FingerStartX = m_OsdStatX + (u32Rand%(OSD_REGINMAXWIDHT - 2*m_OsdStatX - u32BarW));
        	    u32FingerStartY = m_SuperFingerStartTopY + (u32Rand%(OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u32BarH));
            }
            else 
            {
                u32FingerStartX = m_OsdStatX + CDCASuperFinger.byX_position * (OSD_REGINMAXWIDHT - 2*m_OsdStatX - u32BarW) / 100; //按照比例显示
                u32FingerStartY = m_SuperFingerStartTopY + CDCASuperFinger.byY_position * (OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u32BarH) / 100;
            }
            CDCASuperFingerShowString(u32FingerStartX, u32FingerStartY);
            break;

        case 1:
            u16TotalSize = CDCASuperFinger.byFontSize * 10;
            if(CDCASuperFinger.byX_position == 100 || CDCASuperFinger.byY_position == 100)
            {
                u32FingerStartX = m_OsdStatX + (u32Rand%(OSD_REGINMAXWIDHT - 2*m_OsdStatX - u16TotalSize));
                u32FingerStartY = m_SuperFingerStartTopY + (u32Rand%(OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u16TotalSize));
            }
            else 
            {
                u32FingerStartX = m_OsdStatX + CDCASuperFinger.byX_position * (OSD_REGINMAXWIDHT - 2*m_OsdStatX - u16TotalSize) / 100; //按照比例显示;
                u32FingerStartY = m_SuperFingerStartTopY + CDCASuperFinger.byY_position * (OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u16TotalSize) / 100;
            }
            
            CDCASuperFingerShowDot(u32FingerStartX, u32FingerStartY);
            break;

        case 2:
            u16TotalSize = CDCASuperFinger.byFontSize * 16;
            if(CDCASuperFinger.byX_position == 100 || CDCASuperFinger.byY_position == 100)
            {
                u32FingerStartX = m_OsdStatX + (u32Rand%(OSD_REGINMAXWIDHT - 2*m_OsdStatX - u16TotalSize));
                u32FingerStartY = m_SuperFingerStartTopY + (u32Rand%(OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u16TotalSize));
            }
            else 
            {
                u32FingerStartX = m_OsdStatX + CDCASuperFinger.byX_position * (OSD_REGINMAXWIDHT - 2*m_OsdStatX - u16TotalSize) / 100; //按照比例显示;
                u32FingerStartY = m_SuperFingerStartTopY + CDCASuperFinger.byY_position * (OSD_REGINMAXHEIGHT - 2*m_OsdStatTopY - 2*m_OsdHeight - u16TotalSize) / 100;
            }
            
            CDCASuperFingerShowMatrix(u32FingerStartX, u32FingerStartY);
            break;

        default:
            break;
    } 
    
    if(CDCASuperFinger.wFlashing_EachShowTime != 0 && CDCASuperFinger.wFlashing_EachHideTime != 0)
    {
        bIsShowTimer = MM_TRUE;
        if(uiv_u8FingerSuperBlinkCallShowTimer == 0xff)
        {
            uiv_u8FingerSuperBlinkCallShowTimer = TMF_SetDbsTimer(uif_FingerSuperBlinkShowCallTimerCb, MM_NULL, (CDCASuperFinger.wFlashing_EachShowTime+CDCASuperFinger.wFlashing_EachHideTime)*1000, m_noRepeat);
        }
        
        if(uiv_u8FingerSuperBlinkCallHideTimer == 0xff)
        {
            uiv_u8FingerSuperBlinkCallHideTimer = TMF_SetDbsTimer(uif_FingerSuperBlinkHideCallTimerCb, MM_NULL, CDCASuperFinger.wFlashing_EachShowTime*1000, m_noRepeat);
        }
    }

    if(CDCASuperFinger.byX_position == 100 || CDCASuperFinger.byY_position == 100)
    {
        if(uiv_u8FingerSuperRandomTimer == 0xff)
        {
            uiv_u8FingerSuperRandomTimer = TMF_SetDbsTimer(uif_FingerSuperRandomTimerCall, MM_NULL, 10000, m_Repeat);
        }
    }
    
    if((CDCASuperFinger.bIsVisible)&&(CDCASuperFinger.byShowType == 1))
    {
        if(uiv_u8FingerSuperUnVisibleShowTimer == 0xff)
        {
            uiv_u8FingerSuperUnVisibleShowTimer = TMF_SetDbsTimer(uif_FingerSuperUnvisibleShowTimerCb, MM_NULL, 60*1000, m_Repeat);
        }
        CDSTBCA_SemaphoreSignal(&CDCASuperSem);
        uif_CAMFingerSuperUnvisibleShow();
        CDSTBCA_SemaphoreWait(&CDCASuperSem);
    }
    
    CDSTBCA_SemaphoreSignal(&CDCASuperSem);
#endif	
    return MM_TRUE;
}

MBT_BOOL uif_CAMClearSuperFinger(MBT_VOID)
{
    WGUIF_ClsExtScreen(g_u16FingerDisplayX, g_u16FingerDisplayY, g_u16FingerDisplayW, g_u16FingerDisplayH);
    if(g_stSuperFingerCopybitmap.pBData != NULL)
    {
        MLUI_DEBUG("--->release super finger!!!");
        WGUIF_ReleaseRectangleImageExt(&g_stSuperFingerCopybitmap);
    }
    
    if(g_stSuperOSDCenterCopybitmap.pBData != NULL)//有OSD
    {
        MLUI_DEBUG("--->recovery super osd!!!");
        WGUIF_PutRectangleImageExt(g_u16SuperOSDX, g_u16SuperOSDY, &g_stSuperOSDCenterCopybitmap);
    }

    if(1 == BLASTF_GetLockKeyBoadStatus())
    {
        MLUI_DEBUG("--->UnLock IR!!!");
        BLASTF_UnLockKeyBoad();
    }

    if(uiv_u8FingerSuperBlinkCallShowTimer != 0xFF)
    {
        TMF_CleanDbsTimer(uiv_u8FingerSuperBlinkCallShowTimer);
        uiv_u8FingerSuperBlinkCallShowTimer = 0xff;
    }
    
    if(uiv_u8FingerSuperBlinkShowTimer != 0xFF)
    {
        TMF_CleanDbsTimer(uiv_u8FingerSuperBlinkShowTimer);
        uiv_u8FingerSuperBlinkShowTimer = 0xff;
    }

    if(uiv_u8FingerSuperBlinkCallHideTimer != 0xFF)
    {
        TMF_CleanDbsTimer(uiv_u8FingerSuperBlinkCallHideTimer);
        uiv_u8FingerSuperBlinkCallHideTimer = 0xff;
    }
        
    if(uiv_u8FingerSuperBlinkHideTimer != 0xFF)
    {
        TMF_CleanDbsTimer(uiv_u8FingerSuperBlinkHideTimer);
        uiv_u8FingerSuperBlinkHideTimer = 0xff;
    }
    
    if(uiv_u8FingerSuperRandomTimer != 0xFF)
    {
        TMF_CleanDbsTimer(uiv_u8FingerSuperRandomTimer);
        uiv_u8FingerSuperRandomTimer = 0xff;
    }

    if(uiv_u8FingerSuperUnVisibleShowTimer != 0xFF)
    {
        TMF_CleanDbsTimer(uiv_u8FingerSuperUnVisibleShowTimer);
        uiv_u8FingerSuperUnVisibleShowTimer = 0xff;
    }
    memset(&CDCASuperFinger, 0, sizeof(CDCASuperFinger));
    bIsShowTimer = MM_TRUE; 
    g_u16FingerDisplayX = 0;
    g_u16FingerDisplayY = 0;
    g_u16FingerDisplayW = 0;
    g_u16FingerDisplayH = 0;
    return MM_TRUE;
}

SCDCAFingerInfo* GetSuperFinger(MBT_VOID)
{
    return &CDCASuperFinger;
}

MBT_CHAR* GetFinger(MBT_VOID)
{
    return uiv_pstrFinger;
}

SCDCAOSDInfo* GetSuperOsd(MBT_VOID)
{
    return &CDCASuperOsd;
}

MBT_CHAR* GetOsd(MBT_U8 type)
{
    if(type == 2)
    {
        return g_uiv_OSDTopMsg;
    }
    else
    {
        return g_uiv_OSDBottomMsg;
    }
}
/**************************************结束超级指纹************************************/

/**************************************开始超级OSD************************************/
static MBT_VOID CDCASuperOsdPretreatment(MBT_VOID)
{ 
    if(CDCASuperOsd.dwFontColor == 0x00080808)
    {
        CDCASuperOsd.dwFontColor |= 0x00010201;
    }
    
    if(CDCASuperOsd.dwBackgroundColor == 0x00080808)
    {
        CDCASuperOsd.dwBackgroundColor |= 0x00010201;
    }

    switch(CDCASuperOsd.byFontSize)
    {
        case 0:
            CDCASuperOsd.byFontSize = SMALL_GWFONT_HEIGHT;
            break;

        case 1:
            CDCASuperOsd.byFontSize = TOPLEFTMAINTITLE_FONT_HEIGHT;
            break;

        case 2:
            CDCASuperOsd.byFontSize = SMALLER_GWFONT_HEIGHT;
            break;

        default:
            CDCASuperOsd.byFontSize = SMALL_GWFONT_HEIGHT;
            break;
    }
}

static MBT_VOID uif_OSDTopDispTimerCall(MBT_U32 u32Para[])
{
	UIF_SendKeyToUi(DUMMY_KEY_JUMP_OSDTOP);
}

static MBT_VOID uif_OSDBottomDispTimerCall(MBT_U32 u32Para[])
{
	UIF_SendKeyToUi(DUMMY_KEY_JUMP_OSDBOTTOM);
}

static MBT_VOID uif_OSDLeftBottomDispCardNum(MBT_VOID)
{
    MLUI_DEBUG("--->Card Num = %s",CDCASuperOsd.szCardSN);
    WGUIF_FNTDrawExtTxt(SUPEROSD_CARDNUM_X,  SUPEROSD_CARDNUM_Y, strlen(CDCASuperOsd.szCardSN), CDCASuperOsd.szCardSN, CDCASuperOsd.dwFontColor);
}

static MBT_VOID uif_OSDDispCenter(MBT_VOID)
{
    MBT_U8 u8Ration = CDCASuperOsd.byBackgroundArea;
    MLUI_DEBUG("--->Display in center,u8Ration = %d",u8Ration);
    MBT_U16 u16RationWidth  = OSD_REGINMAXWIDHT  * u8Ration/100;
    MBT_U16 u16RationHeight = OSD_REGINMAXHEIGHT * u8Ration/100;
    MBT_U16 u16StartX = (OSD_REGINMAXWIDHT - u16RationWidth)/2;
    MBT_U16 u16StartY = (OSD_REGINMAXHEIGHT - u16RationHeight)/2;
    
    
    WGUIF_DrawFilledRectExt(u16StartX, u16StartY , u16RationWidth, u16RationHeight, CDCASuperOsd.dwBackgroundColor);
    if(u8Ration > 90)//超过90% ，为了防止截屏，把字往下调整
    {
        WGUIF_FNTDrawLimitWidthTxtExt(u16StartX+30, u16StartY+30, strlen(CDCASuperOsd.szContent), CDCASuperOsd.szContent, CDCASuperOsd.dwFontColor, u16RationWidth-60, SUPEROSD_CARDNUM_H);
    }
    else
    {
        WGUIF_FNTDrawLimitWidthTxtExt(u16StartX+10, u16StartY+10, strlen(CDCASuperOsd.szContent), CDCASuperOsd.szContent, CDCASuperOsd.dwFontColor, u16RationWidth-20, SUPEROSD_CARDNUM_H);
    }
    g_u16SuperOSDX = u16StartX;
    g_u16SuperOSDY = u16StartY;
    g_u16SuperOSDW = u16RationWidth;
    g_u16SuperOSDH = u16RationHeight;

    if(g_stSuperOSDCenterCopybitmap.pBData== NULL)
    {
        g_stSuperOSDCenterCopybitmap.bWidth = g_u16SuperOSDW;
    	g_stSuperOSDCenterCopybitmap.bHeight = g_u16SuperOSDH;
    	WGUIF_GetRectangleImageExt(g_u16SuperOSDX, g_u16SuperOSDY, &g_stSuperOSDCenterCopybitmap);
    }
    
    if(g_stSuperFingerCopybitmap.pBData != NULL)//有指纹，指纹要在OSD上面
    {
        WGUIF_PutRectangleImageExt(g_u16FingerDisplayX, g_u16FingerDisplayY, &g_stSuperFingerCopybitmap);
    }
}


MBT_BOOL uif_CAMDisplayCDCASuperOSD(MBT_VOID)
{

#if(1 == M_CDCA)
    if(CDCASuperSem == 0)
    {
        CDSTBCA_SemaphoreInit(&CDCASuperSem, 1);
    }
    CDSTBCA_SemaphoreWait(&CDCASuperSem);

    //MLUI_DEBUG("--->content = %s",CDCASuperOsd.szContent);
    CDCASuperOsdPretreatment();

    switch(CDCASuperOsd.byDisplayMode)
    {
        case 0: //中央
            if(CDCASuperOsd.byShowType == 1)
            {
                MLUI_DEBUG("--->Lock IR!!!");
                BLASTF_LockKeyBoad();
            }
            
            uif_OSDDispCenter();
            
            if(CDCASuperOsd.bShowCardSN == 1)
            {
                uif_OSDLeftBottomDispCardNum();
            }
            break;

        case 1: //上
            CreateScrollSuperOsdMsg(&uiv_stTopOsdCtr);
            if(uiv_u8OSDshowTopTimer == 0xff)
            {
                uiv_u8OSDshowTopTimer = TMF_SetDbsTimer(uif_OSDTopDispTimerCall, MM_NULL, 50, m_Repeat);
            }
            break;

        case 2: //下
            CreateScrollSuperOsdMsg(&uiv_stBottomOsdCtr);
            if(uiv_u8OSDshowBottomTimer == 0xff)
            {
                uiv_u8OSDshowBottomTimer = TMF_SetDbsTimer(uif_OSDBottomDispTimerCall, MM_NULL, 50, m_Repeat);
            }
            break;

        default:
            break;
    }  
    CDSTBCA_SemaphoreSignal(&CDCASuperSem);
#endif	
    return MM_TRUE;
}

MBT_BOOL uif_CAMClearSuperOSD(MBT_VOID)
{
    WGUIF_ClsExtScreen(g_u16SuperOSDX, g_u16SuperOSDY, g_u16SuperOSDW, g_u16SuperOSDH);

    if((CDCASuperOsd.byDisplayMode == 0)&&(CDCASuperOsd.bShowCardSN == 1))
    {
        WGUIF_ClsExtScreen(SUPEROSD_CARDNUM_X, SUPEROSD_CARDNUM_Y -2, SUPEROSD_CARDNUM_W, SUPEROSD_CARDNUM_H+4);
    }
    if(g_stSuperOSDCenterCopybitmap.pBData != NULL)
    {
        MLUI_DEBUG("--->release super osd!!!");
        WGUIF_ReleaseRectangleImageExt(&g_stSuperOSDCenterCopybitmap);
    }
    
    if(g_stSuperFingerCopybitmap.pBData != NULL)//有Finger
    {
        MLUI_DEBUG("--->recovery super finger!!!");
        WGUIF_PutRectangleImageExt(g_u16FingerDisplayX, g_u16FingerDisplayY, &g_stSuperFingerCopybitmap);
    }
    
    if(1 == BLASTF_GetLockKeyBoadStatus())
    {
        MLUI_DEBUG("--->UnLock IR!!!");
        BLASTF_UnLockKeyBoad();
    }
    
    if(uiv_u8OSDshowTopTimer != 0xFF)
    {
        DestroyScrollOsdMsg(&uiv_stTopOsdCtr);
        TMF_CleanDbsTimer(uiv_u8OSDshowTopTimer);
        uiv_u8OSDshowTopTimer = 0xff;
    }

    if(uiv_u8OSDshowBottomTimer != 0xFF)
    {
        DestroyScrollOsdMsg(&uiv_stBottomOsdCtr);
        TMF_CleanDbsTimer(uiv_u8OSDshowBottomTimer);
        uiv_u8OSDshowBottomTimer = 0xff;
    }
    memset(&CDCASuperOsd, 0, sizeof(CDCASuperOsd));
    g_u16SuperOSDX = 0;
    g_u16SuperOSDY = 0;
    g_u16SuperOSDW = 0;
    g_u16SuperOSDH = 0;
    return MM_TRUE;
}

/**************************************结束超级OSD************************************/

MBT_BOOL uif_CAMDisplayCDCAOSD(MBT_U8 u8OSDType)
{
#if(1 == M_CDCA)
    if(CDCASuperSem == 0)
    {
        CDSTBCA_SemaphoreInit(&CDCASuperSem, 1);
    }
    CDSTBCA_SemaphoreWait(&CDCASuperSem);


    if(u8OSDType == CDCA_OSD_TOP)
    {
        if(uiv_u8OSDshowTopTimer == 0xff)
        {
            uiv_u8OSDshowTopTimer = TMF_SetDbsTimer(uif_OSDTopDispTimerCall, MM_NULL, 40, m_Repeat);
        }
    }
    else if(u8OSDType == CDCA_OSD_BOTTOM)
    {
        if(uiv_u8OSDshowBottomTimer == 0xff)
        {
            uiv_u8OSDshowBottomTimer = TMF_SetDbsTimer(uif_OSDBottomDispTimerCall, MM_NULL, 40, m_Repeat);
        }
    }
    
    CDSTBCA_SemaphoreSignal(&CDCASuperSem);
#endif	
    return MM_TRUE;
}

MBT_BOOL uif_CAMClearOSD(MBT_U8 u8OSDType)
{
    if(u8OSDType == CDCA_OSD_TOP)
    {
        MLUI_DEBUG("--->X=%d, Y=%d, W=%d, H=%d",g_u16TOPOSDX, g_u16TOPOSDY, g_u16TOPOSDW, g_u16TOPOSDH);
        DestroyScrollOsdMsg(&uiv_stTopOsdCtr);
        if(uiv_u8OSDshowTopTimer != 0xFF)
        {
            TMF_CleanDbsTimer(uiv_u8OSDshowTopTimer);
            uiv_u8OSDshowTopTimer = 0xff;
        }
        WGUIF_ClsExtScreen(g_u16TOPOSDX, g_u16TOPOSDY, g_u16TOPOSDW, g_u16TOPOSDH);
        g_u16TOPOSDX = 0;
        g_u16TOPOSDY = 0;
        g_u16TOPOSDW = 0;
        g_u16TOPOSDH = 0;
    }
    else if(u8OSDType == CDCA_OSD_BOTTOM)
    {
        DestroyScrollOsdMsg(&uiv_stBottomOsdCtr);
        if(uiv_u8OSDshowBottomTimer != 0xFF)
        {
            TMF_CleanDbsTimer(uiv_u8OSDshowBottomTimer);
            uiv_u8OSDshowBottomTimer = 0xff;
        }
        WGUIF_ClsExtScreen(g_u16BOTTOMOSDX, g_u16BOTTOMOSDY, g_u16BOTTOMOSDW, g_u16BOTTOMOSDH);
        g_u16BOTTOMOSDX = 0;
        g_u16BOTTOMOSDY = 0;
        g_u16BOTTOMOSDW = 0;
        g_u16BOTTOMOSDH = 0;
    }
    
    WGUIF_ReFreshLayer();
    return MM_TRUE;
}

MBT_VOID uif_CACardMsgCheckResult( MBT_U32 usResult )
{
#if(1 == M_CDCA) 
    MBT_CHAR *ptrDisp = MM_NULL;
    MBT_CHAR *string[2][24] =
    {
        {
            "Save CA setting successfully",
            "unknown error",
            "Pointer invalid",
            "Invalid CA card or no CA card",
            "E62-You have entered wrong PIN",

            "PIN is Locked",
            "WorkSpace is too small",
            "The CA Card has matched another machine",
            "Cant find data",
            "Program Status Invalid",

            "No room for new IPPV",
            "Work Time must be between 0 to 24",
            "IPPV cannot be cancelled",
            "The CA Card has not match any machine yet",
            "Rate must be between 4 to 18",     

            "Current CA card do not support this feature",
            "Data error, CA card forbid",
            "Feed time not arrive,slave card cann't to be feeded",
            "Feed Master-Slave Card failed,type of the CA card error"
            "Open card cas command faile",
            "Open card operator command faile",
            "Nonsupport",
            "Length error",
            "SCHIP error"
        },

        {
            "Save CA setting successfully",
            "unknown error",
            "Pointer invalid",
            "Invalid CA card or no CA card",
            "E62-You have entered wrong PIN",

            "PIN is Locked",
            "WorkSpace is too small",
            "The CA Card has matched another machine",
            "Cant find data",
            "Program Status Invalid",

            "No room for new IPPV",
            "Work Time must be between 0 to 24",
            "IPPV cannot be cancelled",
            "The CA Card has not match any machine yet",
            "Rate must be between 4 to 18",     

            "Current CA card do not support this feature",
            "Data error, CA card forbid",
            "Feed time not arrive,slave card cann't to be feeded",
            "Feed Master-Slave Card failed,type of the CA card error"
            "Open card cas command faile",
            "Open card operator command faile",
            "Nonsupport",
            "Length error",
            "SCHIP error"
        }
    };

    switch ( usResult &0x0000ffff)
    {
        case CDCA_RC_OK:/*00*/
        ptrDisp = string[uiv_u8Language][0];
        break;

        case CDCA_RC_UNKNOWN:/*01*/
        ptrDisp = string[uiv_u8Language][1];
        break;

        case CDCA_RC_POINTER_INVALID:/*02*/
        ptrDisp = string[uiv_u8Language][2];
        break;

        case CDCA_RC_CARD_INVALID:/*03*/
        ptrDisp = string[uiv_u8Language][2];
        break;

        case CDCA_RC_PIN_INVALID:/*04*/
        ptrDisp = string[uiv_u8Language][4];
        break;

        case   CDCA_RC_DATASPACE_SMALL:/*06*/   
        ptrDisp = string[uiv_u8Language][6];
        break;

        case CDCA_RC_CARD_PAIROTHER:/*07*/
        ptrDisp = string[uiv_u8Language][7];
        break;

        case CDCA_RC_DATA_NOT_FIND:/*08*/
        ptrDisp = string[uiv_u8Language][8];
        break;

        case CDCA_RC_PROG_STATUS_INVALID:/*09*/
        ptrDisp = string[uiv_u8Language][9];
        break;

        case CDCA_RC_CARD_NO_ROOM:/*0A*/
        ptrDisp = string[uiv_u8Language][10];
        break;

        case CDCA_RC_WORKTIME_INVALID:/*0B*/
        ptrDisp = string[uiv_u8Language][11];
        break;

        case CDCA_RC_IPPV_CANNTDEL:/*0C*/
        ptrDisp = string[uiv_u8Language][12];
        break;

        case CDCA_RC_CARD_NOPAIR:/*0D*/
        ptrDisp = string[uiv_u8Language][13];
        break;

        case CDCA_RC_WATCHRATING_INVALID:/*0E*/
        ptrDisp = string[uiv_u8Language][14];
        break;

        case CDCA_RC_CARD_NOTSUPPORT:/*0E*/
        ptrDisp = string[uiv_u8Language][15];
        break;

        case CDCA_RC_DATA_ERROR:/*0E*/
        ptrDisp = string[uiv_u8Language][16];
        break;

        case CDCA_RC_FEEDTIME_NOT_ARRIVE:/*0E*/
        ptrDisp = string[uiv_u8Language][17];
        break;

        case CDCA_RC_CARD_TYPEERROR:/*0E*/
        ptrDisp = string[uiv_u8Language][18];
        break;

        case CDCA_RC_CAS_FAILED:/* 发卡cas指令执行失败 */
        ptrDisp = string[uiv_u8Language][19];
        break;

        case CDCA_RC_OPER_FAILED:/* 发卡运营商指令执行失败 */
        ptrDisp = string[uiv_u8Language][20];
        break;

        case CDCA_RC_UNSUPPORT: /* 不支持 */
        ptrDisp = string[uiv_u8Language][21];
        break;

        case CDCA_RC_LEN_ERROR: /* 长度错误 */
        ptrDisp = string[uiv_u8Language][22];
        break;

        case CDCA_RC_SCHIP_ERROR: /* 安全芯片设置错误 */
        ptrDisp = string[uiv_u8Language][23];
        break;

        default:
        break;
    }	

    if(MM_NULL != ptrDisp)
    {
        uif_ShareDisplayResultDlg("Information",ptrDisp,DLG_WAIT_TIME);
    }
#endif        
}


static MET_Sem_T uiv_stCheckEntitleSyncSem = MM_INVALID_HANDLE;   
static MET_Task_T uiv_stCheckEntitleTaskHandle = MM_INVALID_HANDLE;


static MBT_VOID CACheckEntitleTask ( MBT_VOID *pvParam )
{
    MET_Sem_T *pstSyncSem = pvParam;
    static MBT_U8 u8Lockstatus = 0xff;

    while(1)
    {
        if(MM_TRUE == DBSF_MntIsTSTimeGot())
        {
            if(MM_TRUE == uif_CheckEntitleExpire())
            {
                /*找到相关授权,退出*/
                if(0 != u8Lockstatus)
                {
                    DBSF_PlyUnlock();
                    UIF_GetCAOsdMsg(DUMMY_KEY_UNLOCKPLAY,cam_InvalidPID,MM_NULL,0);
                    u8Lockstatus = 0;
                }
            }
            else
            {
                UIF_GetCAOsdMsg(DUMMY_KEY_LOCKPLAY,cam_InvalidPID,MM_NULL,0);
                if(1 != u8Lockstatus)
                {
                    DBSF_PlyLock();
                    u8Lockstatus = 1;
                }
            }
        }
        MLMF_Task_Sleep(5000);
    }

    MLMF_Sem_Release(*pstSyncSem);
    UIF_SendKeyToUi(DUMMY_KEY_TERM_CHCKENTITLETASK);
    MLMF_Task_Exit();
}


MBT_VOID uif_CAStartEntitleCheckTask(MBT_VOID)
{
    MLMF_Sem_Create(&uiv_stCheckEntitleSyncSem,0);   
    MLMF_Task_Create (CACheckEntitleTask , &uiv_stCheckEntitleSyncSem, 81920, CHCKENTITLE_PROCESS_PRIORITY, &uiv_stCheckEntitleTaskHandle,"chckentitle") ;
}

MBT_VOID uif_CAStopEntitleCheckTask(MBT_VOID)
{
    //MLMF_Print("CAMenuStopOsdTask pstOSDTaskCtr->stSyncSem %x\n",pstOSDTaskCtr->stSyncSem);
    if(MM_INVALID_HANDLE == uiv_stCheckEntitleSyncSem)
    {
        return;
    }
    // MLMF_Print("uif_CAStopEntitleCheckTask uiv_stCheckEntitleTaskHandle %x\n",uiv_stCheckEntitleTaskHandle);
    MLMF_Sem_Wait(uiv_stCheckEntitleSyncSem,MM_SYS_TIME_INIFIE);
    //MLMF_Print("CAMenuStopOsdTask Get stSyncSem\n");
    MLMF_Task_Destroy(uiv_stCheckEntitleTaskHandle);
    uiv_stCheckEntitleTaskHandle = MM_INVALID_HANDLE;
    MLMF_Sem_Destroy(uiv_stCheckEntitleSyncSem); 
    uiv_stCheckEntitleSyncSem = MM_INVALID_HANDLE;
    // MLMF_Print("uif_CAStopEntitleCheckTask OK\n");
}



