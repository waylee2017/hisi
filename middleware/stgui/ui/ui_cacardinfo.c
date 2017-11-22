#include "ui_share.h"

#define CASERVICE_X_OFFSET 5
#define CASERVICE_VIDEOAREA_WIDTH 240
#define CASERVICE_VIDEOAREA_HEIGHT 180
#define CASERVICE_ADVERAREA_HEIGHT 180
#define CASERVICE_LISTAREA_WIDTH (OSD_REGINMAXWIDHT-CASERVICE_X_OFFSET *2- CASERVICE_VIDEOAREA_WIDTH - 6)
#define CASERVICE_LISTAREA_HEIGHT (CASERVICE_ADVERAREA_HEIGHT + 10 + CASERVICE_VIDEOAREA_HEIGHT)

#define CASERVICE_VIDEOAREA_X ( P_MENU_LEFT+CASERVICE_X_OFFSET )
#define CASERVICE_VIDEOAREA_Y (P_WORKSPACE_TOP + (P_WORKSPACE_HEIGHT - CASERVICE_LISTAREA_HEIGHT)/2)

#define CASERVICE_ITEM_HEIGHT 56
#define CASERVICE_ITEM_GAP 10

#define CASERVICE_LISTAREA_X (CASERVICE_VIDEOAREA_X + CASERVICE_VIDEOAREA_WIDTH + 6)
#define CASERVICE_LISTAREA_Y CASERVICE_VIDEOAREA_Y
#define CASERVICE_LISTAREATITLE_HEIGHT 40

#define SMC_INFO_SUBMENU_PAGE_ITEM_MAX 6
#define CASERVICE_ITEM_MAX 8
#define AREA_CODE_ITEM_MAX 7

#define SMC_INFO_LEFTLIST_AREA_X    90
#define SMC_INFO_LEFTLIST_AREA_Y    135
#define SMC_INFO_ITEM_DISTANCE      10


#define SMC_SUBMENU_TOP_LEFT_X        139
#define SMC_SUBMENU_TOP_LEFT_Y         110
#define SMC_SUBMENU_HEAD_COLUMN_1_X      (SMC_SUBMENU_TOP_LEFT_X + 80)
#define SMC_SUBMENU_HEAD_Y      (SMC_SUBMENU_TOP_LEFT_Y + 117)
#define SMC_SUBMENU_HELP_BAR_Y	(UI_ICON_Y)

#define SMC_SUBMENU_LIST_ITEM_1ST_X (SMC_SUBMENU_TOP_LEFT_X + 36)
#define SMC_SUBMENU_LIST_ITEM_1ST_Y (SMC_SUBMENU_TOP_LEFT_Y + 151)

#define SMC_SUBMENU_LIST_ITEM_HEIGHT 36
#define SMC_SUBMENU_LIST_ITEM_GAP 12
#define SMC_SUBMENU_LIST_ITEM_WIDTH (OSD_REGINMAXWIDHT- 70*2) //list的宽度


static MBT_S32 s32SlotOperIdSelect = 0;
#if(1 == M_CDCA) 
static MBT_U8 uiv_u8CACardSlot[CDCA_MAXNUM_SLOT] = { 0 };
static MBT_U16 uiv_u16CAProviderID[CDCA_MAXNUM_OPERATOR] = { 0 };
static MBT_U8 uiv_u8OperatorNumber = 0;
static SCDCAOperatorInfo uiv_stSCDCAOperator[CDCA_MAXNUM_OPERATOR];
static SCDCAIppvInfo* uiv_pstTFIPPVInfo = MM_NULL;
static SCDCAEntitles* uiv_pstTFCAEntitles = MM_NULL;
static CDCA_U32 uiv_pstTFCADeEntitles[CDCA_MAXNUM_DETITLE];
#endif

   
/*请选择运营商对话框开始*/
#define SELECTPROVIDER_DLG_WIDTH 250
#define SELECTPROVIDER_DLG_HEIGHT 240
#define SELECTPROVIDER_DLG_HEADHEIGHT 42

#define SELECTPROVIDER_DLG_X ( P_MENU_LEFT+(OSD_REGINMAXWIDHT- SELECTPROVIDER_DLG_WIDTH)/2 )
#define SELECTPROVIDER_DLG_Y (P_WORKSPACE_TOP + (P_WORKSPACE_HEIGHT - SELECTPROVIDER_DLG_HEIGHT)/2)

#define SELECTPROVIDER_HEAD_X (SMC_SUBMENU_TOP_LEFT_X + 81)
#define SELECTPRIVIFER_ITEM_MAX 6
#define SELECTPRIVIFER_ITEM_HEIGHT 28
#define SELECTPRIVIFER_ITEM_GAP 2



static MBT_U8 uif_InitOperatorInfo(MBT_VOID)
{
#if(1 == M_CDCA) 
    MBT_U8 i = 0;
    if(0 == uiv_u8OperatorNumber)
    {
        memset(uiv_stSCDCAOperator,0,sizeof(uiv_stSCDCAOperator));
        if(CDCASTB_GetOperatorIds(uiv_u16CAProviderID) == CDCA_RC_OK)
        {
            for(i=0;i<CDCA_MAXNUM_OPERATOR;i++)
            {	
                if(uiv_u16CAProviderID[i]==0)
                {
                    break;
                }

                CDCASTB_GetOperatorInfo(uiv_u16CAProviderID[i],&uiv_stSCDCAOperator[i]);
            }
        }
        uiv_u8OperatorNumber = i;
    }

    return uiv_u8OperatorNumber;
#endif	
}


#define m_gtploperatorid (1334)

MBT_BOOL uif_CheckEntitleExpire(MBT_VOID)
{

#if(1 == M_CDCA) 
    MBT_S32 i,j;
    Stru_Date stData;
    SCDCAEntitles* pstTFCAEntitles;
    SCDCAEntitle *pstCaEntitle;
    TIMER_M stSysTimer;
    TIMER_M stSelectTimer;
    TIMER_M stItemTimer;
    TIMER_M stCurTimer;
    MBT_U8 u8OperatorNumber = 0;
    MBT_BOOL bRet = MM_FALSE;

    u8OperatorNumber =  uif_InitOperatorInfo();

    if(0 == u8OperatorNumber)
    {
        // MLMF_Print("uif_CheckEntitleExpire u8OperatorNumber %d\n",u8OperatorNumber);
        return bRet;
    }

    pstTFCAEntitles = MLMF_Malloc(sizeof(SCDCAEntitles));
    if(MM_NULL == pstTFCAEntitles)
    {
        return bRet;
    }

    pstCaEntitle = pstTFCAEntitles->m_Entitles;
    memset(&stSelectTimer,0,sizeof(stSelectTimer));
    memset(&stItemTimer,0,sizeof(stItemTimer));
    TMF_GetSysTime(&stSysTimer);
    stCurTimer = stSysTimer;

    for( i=0;i<u8OperatorNumber;i++)
    {
        //MLMF_Print("i = %d uiv_u16CAProviderID[i] %x\n",i,uiv_u16CAProviderID[i]);
        if(m_gtploperatorid == uiv_u16CAProviderID[i])
        {
            if(CDCA_RC_OK == CDCASTB_GetServiceEntitles(uiv_u16CAProviderID[i],pstTFCAEntitles))
            {
                for( j=0;j<pstTFCAEntitles->m_wProductCount;j++)
                {
                    if(pstCaEntitle[j].m_dwProductID != 59997&&pstCaEntitle[j].m_dwProductID != 59998&&pstCaEntitle[j].m_dwProductID != 59999&&pstCaEntitle[j].m_dwProductID != 65533)
                    {
                        CAF_CDDateToDate(&stData,pstCaEntitle[j].m_tExpireDate);
                        stItemTimer.year = stData.m_wYear - 1900;
                        stItemTimer.month = stData.m_byMonth;
                        stItemTimer.date = stData.m_byDay;
                        stItemTimer.hour = 23;
                        stItemTimer.minute = 59;
                        //MLMF_Print("j = %d m_dwProductID = %x m_wYear %d,m_byMonth %d,m_byDay %d\n",j,pstCaEntitle[j].m_dwProductID,stData.m_wYear,stData.m_byMonth,stData.m_byDay);
                        //MLMF_Print("stCurTimer year %d month %d\n",stCurTimer.year,stCurTimer.month);
                        if(stItemTimer.year >= stCurTimer.year)
                        {
                            if(TMF_CompareThe2Timers(stCurTimer,stItemTimer) < 0)
                            {
                                bRet = MM_TRUE;
                                //MLMF_Print("Find a valid entitle exit\n");
                                break;
                            }
                        }
                    }
                }
            }
        }
    }
    // MLMF_Print("m_wYear %d,m_byMonth %d,m_byDay %d\n",stData.m_wYear,stData.m_byMonth,stData.m_byDay);
    MLMF_Free(pstTFCAEntitles);
    return bRet;
#endif
    return MM_TRUE;
}

static MBT_BOOL CaCardListDraw(MBT_BOOL bSelect,MBT_U32 iIndex,MBT_S32 x,MBT_S32 y,MBT_S32 iWidth,MBT_S32 iHeight)
{
    if(MM_TRUE == bSelect)
    {
        uif_ShareDrawCombinHBar(x,y,iWidth,BMPF_GetBMP(m_ui_selectbar_leftIfor),BMPF_GetBMP(m_ui_selectbar_midIfor),BMPF_GetBMP(m_ui_selectbar_rightIfor));
    }
    else
    {
        WGUIF_DisplayReginTrueColorBmp(0, 0, x, y, iWidth, iHeight, BMPF_GetBMP(m_ui_SubMemu_background_bigIfor), MM_TRUE);
    }
    return MM_TRUE;
}

 
  


/*基本信息开始*/

#define CASERVICE_1COL_WIDTH ((CASERVICE_LISTAREA_WIDTH - 50)/2 - 40)
#define CASERVICE_1COL_X (CASERVICE_LISTAREA_X + 20)
#define CASERVICE_2COL_X (CASERVICE_1COL_X + CASERVICE_1COL_WIDTH + 30)
#define CASERVICE_DIVIDCOL_X (CASERVICE_LISTAREA_X + CASERVICE_1COL_WIDTH+20)

#define SMC_INFO_LIST_X (235)
#define SMC_INFO_LIST_Y (145)

#define SMC_INFO_LIST_SECD_OFFSET_W   375
#define SMC_INFO_LIST_OA_OFFSET_W   150
#define SMC_INFO_LIST_YOFFSET   40

#define SMC_INFO_HELP_BAR_X 0
#define SMC_INFO_HELP_BAR_Y (STB_SUBMENU_HELP_Y)

#define SMC_INFO_STRLEN 64
static MBT_CHAR s8strBuffer[SMC_INFO_STRLEN] = {0};

static MBT_VOID uif_CardInfoDisplayHelpInfo( MBT_VOID )
{
	MBT_S32 x = SMC_INFO_HELP_BAR_X;
	MBT_S32 y = SMC_INFO_HELP_BAR_Y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 s32Xoffset = 0;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
	MBT_CHAR* infostr[2][1]=
    {
        {
			"Exit"
        },
        {
			"Exit"
        },
    };
		
    font_height =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);

    //exit
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    s32Xoffset = (OSD_REGINMAXWIDHT - (pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0])))/2;
    x = x + s32Xoffset;
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp,MM_TRUE);

    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_EXITIfor) - GWFONT_HEIGHT_SIZE22)/2;
	WGUIF_FNTDrawTxt(x + pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN, y+s32Yoffset, strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_CHAR* uif_PINStatus(MBT_VOID)
{
    MBT_CHAR u8Sn[CDCA_MAXLEN_SN + 1];
    MBT_CHAR* smc_info_str[2][2]=
    {
        {
    		"No Locked",
            "Invalid SC",
        },
        {
    		"No Locked",
            "Invalid SC",
        },
    };
#if(1 == M_CDCA)
    if (CDCASTB_GetCardSN(u8Sn) == CDCA_RC_OK)
    {
        return smc_info_str[uiv_u8Language][0];
    }
    else
#endif		
    {
        return smc_info_str[uiv_u8Language][1];
    }
}

static MBT_CHAR* uif_Rating(MBT_VOID)
{
    MBT_U8  u8WatchLevel = 0x00;
    MBT_CHAR* smc_info_str[2][1]=
    {
        {
            "Invalid SC",
        },
        {
            "Invalid SC",
        },
    };
#if(1 == M_CDCA) 
    if (CDCASTB_GetRating(&u8WatchLevel) == CDCA_RC_OK)
    {
        memset(s8strBuffer, 0, SMC_INFO_STRLEN);
        sprintf(s8strBuffer, "%d", u8WatchLevel);
        return s8strBuffer;
    }
    else
#endif		
    {
        return smc_info_str[uiv_u8Language][0];
    }
}

static MBT_CHAR* uif_WorkingTime(MBT_VOID)
{
    MBT_U8 byStartHour     = 0;
    MBT_U8 byStartMin      = 0;
    MBT_U8 byStartSec      = 0;
    MBT_U8 byEndHour       = 0;
    MBT_U8 byEndMin        = 0;
    MBT_U8 byEndSec        = 0;
    MBT_CHAR* smc_info_str[2][1]=
    {
        {
            "Invalid SC",
        },
        {
            "Invalid SC",
        },
    };
#if(1 == M_CDCA) 
    if (CDCASTB_GetWorkTime(&byStartHour, &byStartMin, &byStartSec, &byEndHour, &byEndMin, &byEndSec) == CDCA_RC_OK)
    {
        memset(s8strBuffer, 0, SMC_INFO_STRLEN);
        sprintf(s8strBuffer, "%02d:%02d:%02d-%02d:%02d:%02d", byStartHour, byStartMin, byStartSec, byEndHour, byEndMin, byEndSec);
        return s8strBuffer;
    }
    else
#endif		
    {
        return smc_info_str[uiv_u8Language][0];
    }
}

static MBT_CHAR* uif_MarriageStatus(MBT_VOID)
{
    MBT_U8 byNum = 5;
    MBT_U8 pbySTBID_List[256];
    MBT_U16 wRet = 0;
    MBT_CHAR* smc_info_str[2][4]=
    {
        {
            "Paired",
            "NoPair",
            "PairAnother",
            "Invalid SC",
        },
        {
            "Paired",
            "NoPair",
            "PairAnother",
            "Invalid SC",
        },
    };

#if(1 == M_CDCA) 
    wRet = CDCASTB_IsPaired(&byNum, pbySTBID_List);
#endif
    if (wRet == CDCA_RC_OK)
    {
        return smc_info_str[uiv_u8Language][0];
    }
    else if (wRet == CDCA_RC_CARD_INVALID)
    {
        return smc_info_str[uiv_u8Language][3];
    }
    else if (wRet == CDCA_RC_CARD_NOPAIR)
    {
        return smc_info_str[uiv_u8Language][1];
    }
    else if (wRet == CDCA_RC_CARD_PAIROTHER)
    {
        return smc_info_str[uiv_u8Language][2];
    }
    else
    {
        return smc_info_str[uiv_u8Language][3];
    }
}

static MBT_CHAR* uif_Operator(MBT_U8 u8OperatorId)
{
    MBT_U16 wArrOperatorIds[CDCA_MAXNUM_OPERATOR] = {0};
    SCDCAOperatorInfo stOperatorInfo;
    MBT_CHAR* smc_info_str[2][1]=
    {
        {
            "N/A",
        },
        {
            "N/A",
        },
    };

    memset(&stOperatorInfo, 0, sizeof(SCDCAOperatorInfo));
#if(1 == M_CDCA) 
    if (CDCASTB_GetOperatorIds(wArrOperatorIds) == CDCA_RC_OK)
    {
        if (wArrOperatorIds[u8OperatorId] != 0)
        {
            CDCASTB_GetOperatorInfo(wArrOperatorIds[u8OperatorId], &stOperatorInfo);

            if (stOperatorInfo.m_szTVSPriInfo[0])
            {
                memset(s8strBuffer, 0, SMC_INFO_STRLEN);
                memcpy(s8strBuffer, stOperatorInfo.m_szTVSPriInfo, 33);
                return s8strBuffer;
            }
            else
            {
                memset(s8strBuffer, 0, SMC_INFO_STRLEN);
                return s8strBuffer;
            }
        }
    }
#endif	
    return smc_info_str[uiv_u8Language][0];
}

static MBT_CHAR* uif_AC(MBT_U8 u8OperatorId)
{
    MBT_U16 wArrOperatorIds[CDCA_MAXNUM_OPERATOR]   = {0};
    CDCA_U32 pACArray[CDCA_MAXNUM_ACLIST];
    MBT_U8 u8str[64] = {0};
    MBT_CHAR* smc_info_str[2][1]=
    {
        {
            "N/A",
        },
        {
            "N/A",
        },
    };

    memset(pACArray, 0, sizeof(pACArray));
#if(1 == M_CDCA) 
    if (CDCASTB_GetOperatorIds(wArrOperatorIds) == CDCA_RC_OK)
    {
        if (wArrOperatorIds[u8OperatorId] != 0)
        {
            CDCASTB_GetACList(wArrOperatorIds[u8OperatorId], pACArray);

            sprintf((char *)u8str,"%u %u %u %u %u %u %u %u %u",pACArray[0],pACArray[1],pACArray[3],pACArray[4],pACArray[5],pACArray[6],pACArray[7],pACArray[8],pACArray[9]);

            memset(s8strBuffer, 0, SMC_INFO_STRLEN);
            memcpy(s8strBuffer, u8str, 64);
            return s8strBuffer;
        }
    }
#endif    
    return smc_info_str[uiv_u8Language][0];
}

static MBT_CHAR* uif_SmartCardNum(MBT_VOID)
{
    MBT_CHAR u8Sn[CDCA_MAXLEN_SN + 1] = {0};
    MBT_U16 wRet = 0;
    MBT_CHAR* smc_info_str[2][1]=
    {
        {
            "Invalid SC",
        },
        {
            "Invalid SC",
        },
    };
#if(1 == M_CDCA) 
    wRet = CDCASTB_GetCardSN(u8Sn);
#endif
    if (wRet == CDCA_RC_OK)
    {
        memset(s8strBuffer, 0, SMC_INFO_STRLEN);
        memcpy(s8strBuffer, u8Sn, CDCA_MAXLEN_SN + 1);
        return s8strBuffer;
    }
    else
    {
        return smc_info_str[uiv_u8Language][0];
    }
}

static MBT_CHAR* uif_CAversion(MBT_VOID)
{
    memset(s8strBuffer, 0, SMC_INFO_STRLEN);
#if(1 == M_CDCA)	
    sprintf(s8strBuffer, "0x%X", CDCASTB_GetVer());
#endif

    return s8strBuffer;
}

static MBT_CHAR* uif_STBID(void)
{   
    MBT_U16 PlatformID;
    MBT_U32 STBID;

#if(1 == M_CDCA)
    CDSTBCA_GetSTBID(&PlatformID,&STBID);
#endif
    memset(s8strBuffer, 0, SMC_INFO_STRLEN);
    sprintf(s8strBuffer, "%04x%08x",PlatformID,STBID);

    return s8strBuffer;
}

static MBT_CHAR* uif_LastCardUpgradeTimeAndStatus(MBT_U8 *u8Status)
{   
    CDCAST_CDUpdateStatus stCDUpdateInfo;
    MBT_S32 iLen;
    MBT_CHAR acBuf[64];
    MBT_CHAR* smc_info_str[2][1]=
    {
        {
            "N/A",
        },
        {
            "N/A",
        },
    };

#if(1 == M_CDCA)
    if(CDCA_RC_OK == TFCAF_ReadCDUpdateInfo(&stCDUpdateInfo))
    {
        iLen = sprintf(acBuf,"%04d-%02d-%02d %02d:%02d",stCDUpdateInfo.stCDUpdateTime.year+1900,stCDUpdateInfo.stCDUpdateTime.month,stCDUpdateInfo.stCDUpdateTime.date,stCDUpdateInfo.stCDUpdateTime.hour,stCDUpdateInfo.stCDUpdateTime.minute);
        if(1 == stCDUpdateInfo.byUpdateStatus)
        {
            *u8Status = 1;//success
        }
        else
        {
            *u8Status = 2;//fail
        }

        memset(s8strBuffer, 0, SMC_INFO_STRLEN);
        sprintf(s8strBuffer, "%s", acBuf);
    }
    else
#endif		
    {
        memset(s8strBuffer, 0, SMC_INFO_STRLEN);
        sprintf(s8strBuffer, "%s", smc_info_str[uiv_u8Language][0]);
        *u8Status = 0;
    }

    return s8strBuffer;
}

static MBT_BOOL uif_CardInfoDrawPanel( MBT_VOID)
{
    MBT_S32 x = 0;
    MBT_S32 y = 0;
    MBT_S32 left_top_x = 0;
    MBT_S32 left_top_y = 0;
    MBT_U32 u32FontColor = FONT_FRONT_COLOR_WHITE;
//#if(1 == M_CDCA) 
    MBT_S32 iLen = 0;
    MBT_CHAR acBuf[64];
//#endif
    MBT_CHAR* infostr[2][17] =
    {
        {
            "PIN Status:",	// 0
            "Rating:",	// 1
            "Working Time:",		// 2
            "Marriage Status:",	// 3
            "SmartCard Num:",		// 4
            "CA Version:",	// 5
            "STBID:",		// 6
            "Op1:",	// 7
            "Op2:",	// 8
            "Op3:",	// 9
            "Op4:",	// 10
            "AC:",	// 11
            "Last Upgrade Card Time:",//12
            "CA Information",//13
            "N/A",
            "Success",
            "Fail"
        },
        {
            "PIN Status:",	// 0
            "Rating:",	// 1
            "Working Time:",		// 2
            "Marriage Status:",	// 3
            "SmartCard Num:",		// 4
            "CA Version:",	// 5
            "STBID:",		// 6
            "Op1:",	// 7
            "Op2:",	// 8
            "Op3:",	// 9
            "Op4:",	// 10
            "AC:",	// 11
            "Last Upgrade Card Time:",//12
            "CA Information",//13
            "N/A",
            "Success",
            "Fail"
        }
    };

    MBT_CHAR *ptrCurStr;
    MBT_S32 font_height = 0;
    MBT_U8 u8Status;
    
    uif_ShareDrawCommonPanel(infostr[uiv_u8Language][13], NULL, MM_TRUE);

    left_top_x = SMC_INFO_LIST_X;
    left_top_y = SMC_INFO_LIST_Y-10;

    font_height =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    
    //PIN Status
    x = left_top_x;
    y = left_top_y;
    ptrCurStr = infostr[uiv_u8Language][0];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += SMC_INFO_LIST_SECD_OFFSET_W;    
    iLen = sprintf(acBuf,"%s", uif_PINStatus());
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);


    //Rating
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][1];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += SMC_INFO_LIST_SECD_OFFSET_W;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s",uif_Rating());
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //Working Time
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][2];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += SMC_INFO_LIST_SECD_OFFSET_W;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_WorkingTime());
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);
    
    //Marriage Status
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][3];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += SMC_INFO_LIST_SECD_OFFSET_W;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_MarriageStatus());
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //SmartCard Num
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][4];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += SMC_INFO_LIST_SECD_OFFSET_W;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_SmartCardNum());
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //CA Version
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][5];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += SMC_INFO_LIST_SECD_OFFSET_W;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_CAversion());
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //STBID
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][6];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += SMC_INFO_LIST_SECD_OFFSET_W;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_STBID());
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //Op1
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][7];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 80;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_Operator(0));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //AC
    x += SMC_INFO_LIST_OA_OFFSET_W;
    ptrCurStr = infostr[uiv_u8Language][11];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 80;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_AC(0));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //Op2
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][8];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 80;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_Operator(1));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //AC
    x += SMC_INFO_LIST_OA_OFFSET_W;
    ptrCurStr = infostr[uiv_u8Language][11];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 80;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_AC(1));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);
    
    //Op3
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][9];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 80;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_Operator(2));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //AC
    x += SMC_INFO_LIST_OA_OFFSET_W;
    ptrCurStr = infostr[uiv_u8Language][11];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 80;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_AC(2));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //Op4
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][10];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 80;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_Operator(3));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //AC
    x += SMC_INFO_LIST_OA_OFFSET_W;
    ptrCurStr = infostr[uiv_u8Language][11];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 80;
    memset(acBuf, 0, 64);
    iLen = sprintf(acBuf,"%s", uif_AC(3));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    //Last Upgrade Card Time
    x = left_top_x;
    y += SMC_INFO_LIST_YOFFSET;
    ptrCurStr = infostr[uiv_u8Language][12];
    WGUIF_FNTDrawTxt(x, y, strlen(ptrCurStr),ptrCurStr, u32FontColor);

    x += 270;
    iLen = sprintf(acBuf,"%s", uif_LastCardUpgradeTimeAndStatus(&u8Status));
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    x += 280;
    if (u8Status == 0)
    {
        iLen = sprintf(acBuf,"%s",infostr[uiv_u8Language][14]);
    }
    else if (u8Status == 1)
    {
        iLen = sprintf(acBuf,"%s",infostr[uiv_u8Language][15]);
    }
    else
    {
        iLen = sprintf(acBuf,"%s",infostr[uiv_u8Language][16]);
    }        
    WGUIF_FNTDrawTxt(x, y, iLen,acBuf, u32FontColor);

    WGUIF_SetFontHeight(font_height);
    
    uif_CardInfoDisplayHelpInfo();
    
    return MM_TRUE;
}


MBT_S32 uif_CardInfo ( MBT_S32 iPara )
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_BACK;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;

    bRefresh |= uif_ResetAlarmMsgFlag();
    UIF_StopAV();
    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= uif_CardInfoDrawPanel();
        }
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }
        
        iKey = uif_ReadKey(0);

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
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9:
                uif_SetVtgAspectRatio(iKey) ;
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

            case DUMMY_KEY_SELECT:
				break;
                
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
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

/*基本信息结束*/

 /*授权信息开始*/
#define ENTITEL_HEAD_ARROW_LEFT_Y  140//箭头的y坐标
#define ENTITEL_HEAD_ARROW_LEFT_X  125// 左边箭头的x坐标
#define ENTITEL_HEAD_ARROW_RIGHT_X (OSD_REGINMAXWIDHT-ENTITEL_HEAD_ARROW_LEFT_X)

#define ENTITEL_HEAD_TITLE_Y  (ENTITEL_HEAD_ARROW_LEFT_Y + 50)
#define ENTITEL_HEAD_TITLE_X  (ENTITEL_HEAD_ARROW_LEFT_X)
#define ENTITEL_HEAD_TITLE1_W  (266)
#define ENTITEL_HEAD_TITLE2_W  (142)
#define ENTITEL_HEAD_TITLE3_W  (622)

#define ENTITEL_LISTITEM_X ENTITEL_HEAD_ARROW_LEFT_X
#define ENTITEL_LISTITEM_Y (ENTITEL_HEAD_TITLE_Y+40)
#define ENTITEL_LISTITEM_GAP (15)
#define ENTITEL_LISTITEM_WIDTH (OSD_REGINMAXWIDHT- ENTITEL_LISTITEM_X*2)

#define ENTITEL_LISTITEM_PAGE_MAX (7)

#define ENTITEL_LISTITEM_HELP_BAR_X 0
#define ENTITEL_LISTITEM_HELP_BAR_Y UI_ICON_Y

static MBT_VOID uif_CACardEntitleDrawOperator(MBT_S32 s32operator, MBT_S32 s32count)
{
	BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 x,y;
	MBT_S32 s32FontStrlen;
	MBT_S32 font_height;
	MBT_S32 yOffSet;
    MBT_S32 xOffSet;
	MBT_S32 s32FontWidth, s32FontWidth1;
    MBT_CHAR aBuf[8] = {0};
	MBT_CHAR* pStr = MM_NULL;
	MBT_CHAR* ptrInfo[2][5]=
    {
		{
			"Operator ID:",
			"Entitle Program Count:",
			"Product ID",
			"Tape",
			"Expire Time"
	
		},
		{
			"Operator ID:",
			"Entitle Program Count:",
			"Product ID",
			"Tape",
			"Expire Time"
		}
    };
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
	//左箭头
	x = ENTITEL_HEAD_ARROW_LEFT_X;
	y = ENTITEL_HEAD_ARROW_LEFT_Y;
	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_LeftIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

	
    pStr = ptrInfo[uiv_u8Language][0];
	//画第一项
	s32FontStrlen = strlen(pStr);
	yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
	x = x + pstFramBmp->bWidth + 40;
	WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, pStr, FONT_FRONT_COLOR_WHITE);
	
	//画第一项的内容
	s32FontWidth = WGUIF_FNTGetTxtWidth(s32FontStrlen,pStr);
	sprintf(aBuf,"%d",s32operator);
	x = x+s32FontWidth+20;
	s32FontStrlen = strlen(aBuf);	
	WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, aBuf, FONT_FRONT_COLOR_WHITE);

	pStr = ptrInfo[uiv_u8Language][1];
	s32FontStrlen = strlen(pStr);
	s32FontWidth = WGUIF_FNTGetTxtWidth(s32FontStrlen,pStr);
	sprintf(aBuf,"%d",s32count);
	s32FontStrlen = strlen(aBuf);
    s32FontWidth1 = s32FontWidth + 20 +WGUIF_FNTGetTxtWidth(s32FontStrlen,aBuf);
    x = ENTITEL_HEAD_ARROW_RIGHT_X - BMPF_GetBMPWidth(m_ui_MainMenu_Arrow_RightIfor) - 40 - s32FontWidth1;
    //画第二项
    WGUIF_FNTDrawTxt(x, y+yOffSet, strlen(ptrInfo[uiv_u8Language][1]), ptrInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
	x = x+s32FontWidth+20;
    //画第二项的内容
    WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, aBuf, FONT_FRONT_COLOR_WHITE);

	//右箭头
	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_RightIfor);
	x = ENTITEL_HEAD_ARROW_RIGHT_X - pstFramBmp->bWidth;
	y = ENTITEL_HEAD_ARROW_LEFT_Y;	
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    x = ENTITEL_HEAD_TITLE_X;
    y = ENTITEL_HEAD_TITLE_Y;
    pStr = ptrInfo[uiv_u8Language][2];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (ENTITEL_HEAD_TITLE1_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + ENTITEL_HEAD_TITLE1_W;
    pStr = ptrInfo[uiv_u8Language][3];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (ENTITEL_HEAD_TITLE2_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + ENTITEL_HEAD_TITLE2_W;
    pStr = ptrInfo[uiv_u8Language][4];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (ENTITEL_HEAD_TITLE3_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_VOID uif_CACardEntileDisplayHelpInfo( MBT_VOID )
{
	MBT_S32 x = ENTITEL_LISTITEM_HELP_BAR_X;
	MBT_S32 y = ENTITEL_LISTITEM_HELP_BAR_Y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0, s32Xoffset, s32FontStrlen;
    BITMAPTRUECOLOR *pstFramBmp = NULL;
	MBT_CHAR* infostr[2][1]=
    {
        {
			"Exit"
        },
        {
			"Exit"
        },
    };
		
    font_height =  WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);

    //Exit
    x = ENTITEL_LISTITEM_HELP_BAR_X;
    y = ENTITEL_LISTITEM_HELP_BAR_Y;
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0])))/2;

	x = x + s32Xoffset;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_BOOL uif_CACardEntileDrawPanel(MBT_VOID)
{	
    MBT_CHAR* ptrInfo[2][1]=
    {
        {
            "Entitle Information"
        },
        {
            "Entitle Information"
        }
    };

    uif_ShareDrawCommonPanel(ptrInfo[uiv_u8Language][0], NULL, MM_TRUE);
     
    uif_CACardEntileDisplayHelpInfo();
    
    return MM_TRUE;
}


static MBT_BOOL uif_CACardEntileListRead(MBT_S32 iIndex,MBT_CHAR* pItem)
{
#if(1 == M_CDCA) 
    Stru_Date stData;
    MBT_S32 iLen;
    if (pItem == MM_NULL )
    {
        return MM_FALSE;
    }
    if ( iIndex >= uiv_pstTFCAEntitles->m_wProductCount )
    {
        memset(pItem,0,5*MAXBYTESPERCOLUMN);
        return MM_FALSE;
    }

    iLen = sprintf(pItem, "%u",(MBT_U32)(uiv_pstTFCAEntitles->m_Entitles[iIndex].m_dwProductID));  
    pItem[iLen] = 0;

    if(1 == uiv_pstTFCAEntitles->m_Entitles[iIndex].m_bCanTape)
    {
        iLen = sprintf(pItem+MAXBYTESPERCOLUMN, "%s","Yes");
        pItem[MAXBYTESPERCOLUMN+iLen] = 0;
    }
    else
    {
        iLen = sprintf(pItem+MAXBYTESPERCOLUMN, "%s","No");
        pItem[MAXBYTESPERCOLUMN+iLen] = 0;
    }

    CAF_CDDateToDate(&stData, uiv_pstTFCAEntitles->m_Entitles[iIndex].m_tExpireDate);
    iLen = sprintf(pItem+2*MAXBYTESPERCOLUMN, "%04d.%02d.%02d", stData.m_wYear, stData.m_byMonth, stData.m_byDay);
    pItem[2*MAXBYTESPERCOLUMN+iLen] = 0;

    return MM_TRUE;
#else
    return MM_FALSE;
#endif
}


static MBT_VOID uif_CACardEntileInitList( LISTITEM* pstList, MBT_S32 s32OperIdSelect)
{
    MBT_S32 me_StartX, me_StartY;		
#if(1 == M_CDCA) 
    MBT_S32 i;
    MBT_S32 j;

    SCDCAEntitle *pstCaEntitle = uiv_pstTFCAEntitles->m_Entitles;
    SCDCAEntitle stTempEntitle;

    memset(uiv_pstTFCAEntitles, 0, sizeof(SCDCAEntitles));
    CDCASTB_GetServiceEntitles(uiv_u16CAProviderID[s32OperIdSelect],uiv_pstTFCAEntitles);

    uif_CACardEntitleDrawOperator(uiv_u16CAProviderID[s32OperIdSelect], uiv_pstTFCAEntitles->m_wProductCount);  
    
    for( i=0;i<uiv_pstTFCAEntitles->m_wProductCount;i++)
    {
        for( j=i;j<uiv_pstTFCAEntitles->m_wProductCount;j++)
        {
            if(pstCaEntitle[i].m_dwProductID >pstCaEntitle[j].m_dwProductID)
            {
                stTempEntitle = pstCaEntitle[i];
                pstCaEntitle[i] =  pstCaEntitle[j];
                pstCaEntitle[j] = stTempEntitle;
            }
        }
    }
#endif

    me_StartX = ENTITEL_LISTITEM_X;
    me_StartY = ENTITEL_LISTITEM_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Mid;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = ENTITEL_LISTITEM_PAGE_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = ENTITEL_LISTITEM_GAP;
    pstList->iWidth  = ENTITEL_LISTITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    pstList->iColumns = 3;

    pstList->iColPosition[0] = pstList->iColStart;  
    pstList->iColPosition[1] = pstList->iColPosition[0]+ENTITEL_HEAD_TITLE1_W; 
    pstList->iColPosition[2] = pstList->iColPosition[1]+ENTITEL_HEAD_TITLE2_W; 
    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColPosition[2]-pstList->iColPosition[1];  
    pstList->iColWidth[2] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[2];  

    pstList->ListReadFunction = uif_CACardEntileListRead;
    pstList->ListDrawBar = CaCardListDraw;
#if(1 == M_CDCA) 
    pstList->iNoOfItems = uiv_pstTFCAEntitles->m_wProductCount;
#else
    pstList->iNoOfItems = 0;
#endif
    pstList->cHavesScrollBar = 0;
    pstList->pNoItemInfo = "No Entitle Information!";
}


MBT_S32 uif_CACardEntile(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_EXIT;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    LISTITEM stEntitleList;
    MBT_S32 s32OperIdSelect = 0;
    MBT_S32 iLastSelect = 0;
    UIF_StopAV();
#if(1 == M_CDCA) 
    uiv_pstTFCAEntitles = uif_ForceMalloc( sizeof ( SCDCAEntitles ) );	
    if ( uiv_pstTFCAEntitles == MM_NULL )
    {
        return DUMMY_KEY_BACK;
    }
#endif

    uif_InitOperatorInfo();
    stEntitleList.iSelect = 0;

    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= uif_CACardEntileDrawPanel();
            iLastSelect = stEntitleList.iSelect;
            uif_CACardEntileInitList(&stEntitleList, s32OperIdSelect);	
            stEntitleList.iSelect = iLastSelect;
        }

        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;			

        bRefresh |= UCTRF_ListOnDraw(&stEntitleList);        
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(1000);

        UCTRF_ListGetKey(&stEntitleList, iKey);

        switch ( iKey )
        {		
            case DUMMY_KEY_CARD_IN:
                bRedraw = MM_TRUE;
                break;
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
#if(1 == M_CDCA) 				
                if (uiv_u8OperatorNumber == 0 || uiv_u8OperatorNumber == 1)
                {
                    break;
                }
                
                if (iKey == DUMMY_KEY_LEFTARROW)
                {
                    s32OperIdSelect--;
                    if (s32OperIdSelect < 0)
                    {
                        s32OperIdSelect = uiv_u8OperatorNumber-1;
                    }           
                }
                else
                {
                    s32OperIdSelect++;
                    if (s32OperIdSelect >= uiv_u8OperatorNumber)
                    {
                        s32OperIdSelect = 0;
                    }  
                }
#endif				
                stEntitleList.iSelect = 0;
                bRedraw = MM_TRUE;
                bRefresh = MM_TRUE;
                break;
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
                
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
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

#if(1 == M_CDCA) 
    if(uiv_pstTFCAEntitles)
    {
        uif_ForceFree(uiv_pstTFCAEntitles);
        uiv_pstTFCAEntitles = MM_NULL;
    }
#endif
    WGUIF_ClsFullScreen();
    return iRetKey;
}
/*授权信息结束*/


/*反授权信息开始*/
#define DEENTITEL_HEAD_ARROW_LEFT_Y  140//箭头的y坐标
#define DEENTITEL_HEAD_ARROW_LEFT_X  125// 左边箭头的x坐标
#define DEENTITEL_HEAD_ARROW_RIGHT_X (OSD_REGINMAXWIDHT-DEENTITEL_HEAD_ARROW_LEFT_X)

#define DEENTITEL_HEAD_TITLE_Y  (ENTITEL_HEAD_ARROW_LEFT_Y + 50)
#define DEENTITEL_HEAD_TITLE_X  (ENTITEL_HEAD_ARROW_LEFT_X)
#define DEENTITEL_HEAD_TITLE1_W  (266)
#define DEENTITEL_HEAD_TITLE2_W  (764)

#define DEENTITEL_LISTITEM_X ENTITEL_HEAD_ARROW_LEFT_X
#define DEENTITEL_LISTITEM_Y (ENTITEL_HEAD_TITLE_Y+40)
#define DEENTITEL_LISTITEM_GAP (15)
#define DEENTITEL_LISTITEM_WIDTH (OSD_REGINMAXWIDHT- ENTITEL_LISTITEM_X*2)

#define DEENTITEL_LISTITEM_PAGE_MAX (7)

#define DEENTITEL_LISTITEM_HELP_BAR_X 0
#define DEENTITEL_LISTITEM_HELP_BAR_Y UI_ICON_Y

static MBT_VOID uif_CACardDetitleDrawOperator(MBT_S32 s32operator)
{
	BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 x,y;
	MBT_S32 s32FontStrlen;
	MBT_S32 font_height;
	MBT_S32 yOffSet;
    MBT_S32 xOffSet;
	MBT_S32 s32FontWidth,s32FontWidth1;
    MBT_CHAR aBuf[8] = {0};
	MBT_CHAR* pStr = MM_NULL;
	MBT_CHAR* ptrInfo[2][3]=
    {
		{
			"Operator ID:",
			"Detitle ID",
			"Check Sum"
		},
		{
			"Operator ID:",
			"Detitle ID",
			"Check Sum"
		}
    };
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
	//左箭头
	x = DEENTITEL_HEAD_ARROW_LEFT_X;
	y = DEENTITEL_HEAD_ARROW_LEFT_Y;
	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_LeftIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

	
    pStr = ptrInfo[uiv_u8Language][0];
	s32FontStrlen = strlen(pStr);

    yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
		
	s32FontWidth = WGUIF_FNTGetTxtWidth(s32FontStrlen,pStr);
	sprintf(aBuf,"%d",s32operator);
	s32FontStrlen = strlen(aBuf);

    s32FontWidth1 = s32FontWidth + 20 +WGUIF_FNTGetTxtWidth(s32FontStrlen,aBuf);
    x = DEENTITEL_HEAD_ARROW_LEFT_X + (DEENTITEL_LISTITEM_WIDTH - s32FontWidth1)/2;
    //画第一项
    WGUIF_FNTDrawTxt(x, y+yOffSet, strlen(ptrInfo[uiv_u8Language][0]), ptrInfo[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);
	x = x+s32FontWidth+20;
    //画第二项的内容
    WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, aBuf, FONT_FRONT_COLOR_WHITE);

    
	//右箭头
	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_RightIfor);
	x = DEENTITEL_HEAD_ARROW_RIGHT_X - pstFramBmp->bWidth;
	y = DEENTITEL_HEAD_ARROW_LEFT_Y;	
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    x = DEENTITEL_HEAD_TITLE_X;
    y = DEENTITEL_HEAD_TITLE_Y;
    pStr = ptrInfo[uiv_u8Language][1];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (DEENTITEL_HEAD_TITLE1_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + DEENTITEL_HEAD_TITLE1_W;
    pStr = ptrInfo[uiv_u8Language][2];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (DEENTITEL_HEAD_TITLE2_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_VOID uif_CACardDeEntileDisplayHelpInfo( MBT_VOID )
{
    MBT_S32 x = DEENTITEL_LISTITEM_HELP_BAR_X;
	MBT_S32 y = DEENTITEL_LISTITEM_HELP_BAR_Y;
    MBT_S32 font_height = 0;
    MBT_S32 s32Yoffset = 0;
    MBT_S32 s32Xoffset = 0, s32FontStrlen;
    BITMAPTRUECOLOR *pstFramBmp = MM_NULL;
	MBT_CHAR* infostr[2][3]=
    {
        {
			"Delete Cur",
			"Delete All",
			"Exit"
        },
        {
			"Delete Cur",
			"Delete All",
			"Exit"
        },
    };

    font_height =  WGUIF_GetFontHeight();

    WGUIF_SetFontHeight(GWFONT_HEIGHT_SIZE22);
    s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_RedIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][2]), infostr[uiv_u8Language][2]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_YellowIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0]) + 100 
                 + BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][1]), infostr[uiv_u8Language][1])))/2;

    //red
	x = DEENTITEL_LISTITEM_HELP_BAR_X + s32Xoffset;
    y = DEENTITEL_LISTITEM_HELP_BAR_Y;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_RedIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    //yellow
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][0]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_YellowIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][1]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);

    //exit
    x = x + WGUIF_FNTGetTxtWidth(s32FontStrlen, infostr[uiv_u8Language][1]) + 100;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_RedIfor) - pstFramBmp->bHeight)/2;
	WGUIF_DisplayReginTrueColorBmp(x, y+s32Yoffset, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (BMPF_GetBMPHeight(m_ui_Genres_Help_Button_RedIfor)-WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][2]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][2], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}


static MBT_BOOL uif_CACardDeEntileDrawPanel(MBT_VOID)
{	
    MBT_CHAR* ptrInfo[2][1]=
    {
        {
            "Detitle Information"
        },
        {
            "Detitle Information"
        }
    };

    uif_ShareDrawCommonPanel(ptrInfo[uiv_u8Language][0], NULL, MM_TRUE); 
    
    uif_CACardDeEntileDisplayHelpInfo();	

    return MM_TRUE;
}


static MBT_BOOL uif_CACardDeEntileListRead(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    MBT_S32 iLen;
    if (  pItem == MM_NULL )
    {
        return MM_FALSE;
    }

#if(1 == M_CDCA) 
    iLen = sprintf(pItem, "%d",iIndex + 1);
    pItem[iLen] = 0;

    iLen = sprintf(pItem+MAXBYTESPERCOLUMN, "%u",(MBT_U32) uiv_pstTFCADeEntitles[iIndex]);
    pItem[MAXBYTESPERCOLUMN + iLen] = 0;
#else
    return MM_FALSE;
#endif

    return MM_TRUE;
}

static MBT_VOID uif_CACardDeEntileInitList( LISTITEM* pstList, MBT_S32 s32OperIdSelect)
{
    MBT_S32 me_StartX, me_StartY;		
    MBT_S32 iTotal = 0;
    CDCA_BOOL bDeEntitlesReadFlag = CDCA_FALSE;
#if(1 == M_CDCA) 
    memset(uiv_pstTFCADeEntitles, 0, sizeof(uiv_pstTFCADeEntitles));
    CDCASTB_GetDetitleChkNums(uiv_u16CAProviderID[s32OperIdSelect],&bDeEntitlesReadFlag,uiv_pstTFCADeEntitles);

    uif_CACardDetitleDrawOperator(uiv_u16CAProviderID[s32OperIdSelect]);  
    
    for(iTotal = 0;iTotal < CDCA_MAXNUM_DETITLE;iTotal++)
    {
        if(0 == uiv_pstTFCADeEntitles[iTotal])
        {
            break;
        }
    }
    
#endif    
    me_StartX = DEENTITEL_LISTITEM_X;
    me_StartY = DEENTITEL_LISTITEM_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Mid;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = DEENTITEL_LISTITEM_PAGE_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = DEENTITEL_LISTITEM_GAP;
    pstList->iWidth  = DEENTITEL_LISTITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    
    pstList->iColumns = 2;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    pstList->iColPosition[0] = pstList->iColStart;  
    pstList->iColPosition[1] = pstList->iColPosition[0]+DEENTITEL_HEAD_TITLE1_W; 

    pstList->iColWidth[0] = DEENTITEL_HEAD_TITLE1_W;  
    pstList->iColWidth[1] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[1];  

    pstList->ListReadFunction = uif_CACardDeEntileListRead;
    pstList->ListDrawBar = CaCardListDraw;
    pstList->iNoOfItems = iTotal;
    pstList->cHavesScrollBar = 0;
    pstList->pNoItemInfo = "No Detitle Information!";
}


MBT_S32 uif_CACardDeEntitle(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_EXIT;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    LISTITEM stDeEntitleList;
    MBT_S32 s32OperIdSelect = 0;
    MBT_S32 iLastSelect = 0;
    MBT_CHAR* infoStr[2][5]=
    {
        {
            "Are you sure to delete the \nAnti-authorization Confirmation code?",
            "Are you sure to delete all the provider's Anti-authorization Confirmation code?",
            "Channel list is empty!",
            "Information",
            "Confirm",
        },
        {
            "Are you sure to delete the \nAnti-authorization Confirmation code?",
            "Are you sure to delete all the provider's Anti-authorization Confirmation code?",
			"Channel list is empty!",
            "Information",
            "Confirm",
        }
    };
 	MBT_CHAR *pMsgTitle = NULL;
	MBT_CHAR *pMsgContent = NULL;
    UIF_StopAV();
    uif_InitOperatorInfo();
    stDeEntitleList.iSelect = 0;

    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= uif_CACardDeEntileDrawPanel();	
            iLastSelect = stDeEntitleList.iSelect;
            uif_CACardDeEntileInitList(&stDeEntitleList, s32OperIdSelect);	
            stDeEntitleList.iSelect = iLastSelect;
        }
        
        bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRedraw = MM_FALSE;			

        bRefresh |= UCTRF_ListOnDraw(&stDeEntitleList);        
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey( 1000 );

        UCTRF_ListGetKey(&stDeEntitleList, iKey);

        switch ( iKey )
        {	
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
#if(1 == M_CDCA) 				
                if (uiv_u8OperatorNumber == 0 || uiv_u8OperatorNumber == 1)
                {
                    break;
                }
                
                if (iKey == DUMMY_KEY_LEFTARROW)
                {
                    s32OperIdSelect--;
                    if (s32OperIdSelect < 0)
                    {
                        s32OperIdSelect = uiv_u8OperatorNumber-1;
                    }           
                }
                else
                {
                    s32OperIdSelect++;
                    if (s32OperIdSelect >= uiv_u8OperatorNumber)
                    {
                        s32OperIdSelect = 0;
                    }  
                }
#endif				
                stDeEntitleList.iSelect = 0;
                bRedraw = MM_TRUE;
                bRefresh = MM_TRUE;
                break;
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
            case DUMMY_KEY_RED:
                if(0 >= stDeEntitleList.iNoOfItems)
                {
                    uif_ShareDisplayResultDlg(infoStr[uiv_u8Language][3],infoStr[uiv_u8Language][2],DLG_WAIT_TIME);
                    break;
                }

                pMsgTitle = infoStr[uiv_u8Language][4];
                pMsgContent = infoStr[uiv_u8Language][0];
                if ( uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE)  )
                {
#if(1 == M_CDCA) 
                    CDCASTB_DelDetitleChkNum(uiv_u16CAProviderID[s32OperIdSelect],uiv_pstTFCADeEntitles[stDeEntitleList.iSelect]);
#endif
                    bRedraw = MM_TRUE;
                }
                break;

            case DUMMY_KEY_YELLOW_SUBSCRIBE:
                if(0 >= stDeEntitleList.iNoOfItems)
                {
                    uif_ShareDisplayResultDlg(infoStr[uiv_u8Language][3],infoStr[uiv_u8Language][2],DLG_WAIT_TIME);
                    break;
                }

                pMsgTitle = infoStr[uiv_u8Language][4];
                pMsgContent = infoStr[uiv_u8Language][1];
                if ( uif_ShareMakeSelectDlg(pMsgTitle,pMsgContent,MM_FALSE)  )
                {
#if(1 == M_CDCA) 
                    CDCASTB_DelDetitleChkNum(uiv_u16CAProviderID[s32OperIdSelect],0);
#endif
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

            case DUMMY_KEY_CARD_IN:
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
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
/*反授权信息结束*/

/*钱包信息开始*/
#define SLOT_HEAD_ARROW_LEFT_Y  140//箭头的y坐标
#define SLOT_HEAD_ARROW_LEFT_X  125// 左边箭头的x坐标
#define SLOT_HEAD_ARROW_RIGHT_X (OSD_REGINMAXWIDHT-SLOT_HEAD_ARROW_LEFT_X)

#define SLOT_HEAD_TITLE_Y  (SLOT_HEAD_ARROW_LEFT_Y + 50)
#define SLOT_HEAD_TITLE_X  (SLOT_HEAD_ARROW_LEFT_X)
#define SLOT_HEAD_TITLE1_W  (166)
#define SLOT_HEAD_TITLE2_W  (368)
#define SLOT_HEAD_TITLE3_W  (496)

#define SLOT_LISTITEM_X SLOT_HEAD_ARROW_LEFT_X
#define SLOT_LISTITEM_Y (SLOT_HEAD_TITLE_Y+40)
#define SLOT_LISTITEM_GAP (15)
#define SLOT_LISTITEM_WIDTH (OSD_REGINMAXWIDHT- SLOT_LISTITEM_X*2)

#define SLOT_LISTITEM_PAGE_MAX (6)

#define SLOT_LISTITEM_HELP_BAR_X 0
#define SLOT_LISTITEM_HELP_BAR_Y UI_ICON_Y

static MBT_VOID uif_CASlotDisplayHelpInfo( MBT_VOID )
{
	MBT_S32 x;
	MBT_S32 y;
	MBT_S32 s32font_height = 0;
	BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 s32FontStrlen, s32Xoffset, s32Yoffset;
	MBT_CHAR* infostr[2][1]=
    {
        {
			"Exit"
        },
        {
			"Exit"
        }
    };

	s32font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    //Exit
    x = SLOT_LISTITEM_HELP_BAR_X;
    y = SLOT_LISTITEM_HELP_BAR_Y;
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0])))/2;

	x = x + s32Xoffset;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(s32font_height);
}

static MBT_VOID uif_CACardSlotDrawOperator(MBT_S32 s32operator, MBT_S32 s32count)
{
	BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 x,y;
	MBT_S32 s32FontStrlen;
	MBT_S32 font_height;
	MBT_S32 yOffSet;
    MBT_S32 xOffSet;
	MBT_S32 s32FontWidth, s32FontWidth1;
    MBT_CHAR aBuf[8] = {0};
	MBT_CHAR* pStr = MM_NULL;
	MBT_CHAR* ptrInfo[2][5]=
    {
		{
			"Operator ID:",
			"Slot Count:",
			"Slot ID",
			"Credit Limit",
			"Balance"
	
		},
		{
			"Operator ID:",
			"Slot Count:",
			"Slot ID",
			"Credit Limit",
			"Balance"
		}
    };
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
	//左箭头
	x = SLOT_HEAD_ARROW_LEFT_X;
	y = SLOT_HEAD_ARROW_LEFT_Y;
	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_LeftIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

	
    pStr = ptrInfo[uiv_u8Language][0];
	//画第一项
	s32FontStrlen = strlen(pStr);
	yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
	x = x + pstFramBmp->bWidth + 40;
	WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, pStr, FONT_FRONT_COLOR_WHITE);
	
	//画第一项的内容
	s32FontWidth = WGUIF_FNTGetTxtWidth(s32FontStrlen,pStr);
	sprintf(aBuf,"%d",s32operator);
	x = x+s32FontWidth+20;
	s32FontStrlen = strlen(aBuf);	
	WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, aBuf, FONT_FRONT_COLOR_WHITE);

	pStr = ptrInfo[uiv_u8Language][1];
	s32FontStrlen = strlen(pStr);
	s32FontWidth = WGUIF_FNTGetTxtWidth(s32FontStrlen,pStr);
	sprintf(aBuf,"%d",s32count);
	s32FontStrlen = strlen(aBuf);
    s32FontWidth1 = s32FontWidth + 20 +WGUIF_FNTGetTxtWidth(s32FontStrlen,aBuf);
    x = SLOT_HEAD_ARROW_RIGHT_X - BMPF_GetBMPWidth(m_ui_MainMenu_Arrow_RightIfor) - 40 - s32FontWidth1;
    //画第二项
    WGUIF_FNTDrawTxt(x, y+yOffSet, strlen(ptrInfo[uiv_u8Language][1]), ptrInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
	x = x+s32FontWidth+20;
    //画第二项的内容
    WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, aBuf, FONT_FRONT_COLOR_WHITE);

	//右箭头
	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_RightIfor);
	x = SLOT_HEAD_ARROW_RIGHT_X - pstFramBmp->bWidth;
	y = SLOT_HEAD_ARROW_LEFT_Y;	
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    x = SLOT_HEAD_TITLE_X;
    y = SLOT_HEAD_TITLE_Y;
    pStr = ptrInfo[uiv_u8Language][2];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (SLOT_HEAD_TITLE1_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + SLOT_HEAD_TITLE1_W;
    pStr = ptrInfo[uiv_u8Language][3];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (SLOT_HEAD_TITLE2_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + SLOT_HEAD_TITLE2_W;
    pStr = ptrInfo[uiv_u8Language][4];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (SLOT_HEAD_TITLE3_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_BOOL uif_CASlotDrawPanel(MBT_VOID)
{	
    MBT_CHAR* ptrInfo[2][1]=
    {
		{
			"Slot Information",
		},
		{
			"Slot Information",
		}
    };
	
    uif_ShareDrawCommonPanel(ptrInfo[uiv_u8Language][0], NULL, MM_TRUE);

    uif_CASlotDisplayHelpInfo();	
	
    return MM_TRUE;
}


static MBT_BOOL uif_CASlotListRead(MBT_S32 iIndex,MBT_CHAR* pItem)
{
#if(1 == M_CDCA) 
    MBT_S32 iLen;
    SCDCATVSSlotInfo stSlotInfo;

    if (CDCASTB_GetSlotInfo(uiv_u16CAProviderID[s32SlotOperIdSelect], uiv_u8CACardSlot[iIndex], &stSlotInfo) != CDCA_RC_OK )
    {
        memset(pItem,0,3*MAXBYTESPERCOLUMN);
        return MM_FALSE;
    }
	
    iLen = sprintf((pItem), "%x",uiv_u8CACardSlot[iIndex]);
    pItem[iLen] = 0;
    iLen = sprintf((pItem+1*MAXBYTESPERCOLUMN),"%u", (MBT_U32)stSlotInfo.m_wCreditLimit);
    pItem[1*MAXBYTESPERCOLUMN+iLen] = 0;
    iLen = sprintf(pItem+2*MAXBYTESPERCOLUMN, "%u", (MBT_U32)stSlotInfo.m_wBalance);
    pItem[2*MAXBYTESPERCOLUMN+iLen] = 0;

    return MM_TRUE;
#else
    return MM_FALSE;
#endif
}

static MBT_VOID uif_CASlotInitList( LISTITEM* pstList, MBT_S32 s32OperIdSelect)
{
    MBT_S32 me_StartX, me_StartY;	
    MBT_S32 index = 0;
#if(1 == M_CDCA) 
    MBT_S32 i;
    MBT_S32 j;
    
    CDCASTB_GetSlotIDs(uiv_u16CAProviderID[s32OperIdSelect],uiv_u8CACardSlot);
    for( index=0;index<CDCA_MAXNUM_SLOT;index++)
    {
        if ( uiv_u8CACardSlot[index] == 0 )
        {
            break;
        }
    }

    for( i=0;i<index;i++)
    {
        for( j=i;j<index;j++)
        {
            if(uiv_u8CACardSlot[i] >uiv_u8CACardSlot[j])
            {
                me_StartX = uiv_u8CACardSlot[i];
                uiv_u8CACardSlot[i] =  uiv_u8CACardSlot[j];
                uiv_u8CACardSlot[j] = me_StartX;
            }
        }
    }
  
    
    uif_CACardSlotDrawOperator(uiv_u16CAProviderID[s32OperIdSelect], index);
#endif     
    me_StartX = SLOT_LISTITEM_X;
    me_StartY = SLOT_LISTITEM_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Mid;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = SLOT_LISTITEM_PAGE_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = SLOT_LISTITEM_GAP;
    pstList->iWidth  = SLOT_LISTITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);	

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;
    pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;
    pstList->iColumns = 3;

    pstList->iColPosition[0] = pstList->iColStart;  
    pstList->iColPosition[1] = pstList->iColPosition[0]+SLOT_HEAD_TITLE1_W; 
    pstList->iColPosition[2] = pstList->iColPosition[1]+SLOT_HEAD_TITLE2_W; 
    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColPosition[2]-pstList->iColPosition[1];  
    pstList->iColWidth[2] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[2];
    
    pstList->ListReadFunction = uif_CASlotListRead;
    pstList->ListDrawBar = CaCardListDraw;
    pstList->cHavesScrollBar = 0;
    pstList->iNoOfItems = index;
    pstList->pNoItemInfo = "No Slot Information!";
}

MBT_S32 uif_CACardSlots(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_EXIT;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    LISTITEM stSlotList;
    MBT_S32 iLastSelect;
    UIF_StopAV();
    uif_InitOperatorInfo();
    s32SlotOperIdSelect = 0;
    stSlotList.iSelect = 0;
    
    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh |= uif_CASlotDrawPanel();	
        	iLastSelect = stSlotList.iSelect;
            uif_CASlotInitList(&stSlotList, s32SlotOperIdSelect);
            stSlotList.iSelect = iLastSelect;	
        }
        	
		bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRefresh |= UCTRF_ListOnDraw(&stSlotList);  
		bRedraw = MM_FALSE;		
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey( 1000 );

        UCTRF_ListGetKey(&stSlotList, iKey);

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
			case DUMMY_KEY_LEFTARROW:
			case DUMMY_KEY_RIGHTARROW:
#if(1 == M_CDCA)				
				if (uiv_u8OperatorNumber == 0 || uiv_u8OperatorNumber == 1)
                {
                    break;
                }
                
                if (iKey == DUMMY_KEY_LEFTARROW)
                {
                    s32SlotOperIdSelect--;
                    if (s32SlotOperIdSelect < 0)
                    {
                        s32SlotOperIdSelect = uiv_u8OperatorNumber-1;
                    }           
                }
                else
                {
                    s32SlotOperIdSelect++;
                    if (s32SlotOperIdSelect >= uiv_u8OperatorNumber)
                    {
                        s32SlotOperIdSelect = 0;
                    }  
                }
#endif				
                stSlotList.iSelect = 0;
                bRedraw = MM_TRUE;
                bRefresh = MM_TRUE;
				break;
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE:
            case DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9:
                uif_SetVtgAspectRatio(iKey) ;
                break;

            case DUMMY_KEY_EXIT:
            case DUMMY_KEY_MENU:
#if(1 == M_CDCA)				
                s32SlotOperIdSelect = 0;
#endif
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

            case DUMMY_KEY_CARD_IN:
                bRedraw = MM_TRUE;
                break;

            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
                break;
                
            default:
                iRetKey = uif_QuickKey(iKey);
                if(0 !=  iRetKey)
                {
#if(1 == M_CDCA)                
                    s32SlotOperIdSelect = 0;
#endif
                    bExit = MM_TRUE;
                }
        }
    }
    WGUIF_ClsFullScreen();
    return iRetKey;
}

/*钱包信息结束*/

/*IPPV信息开始*/
#define IPPV_HEAD_ARROW_LEFT_Y  140//箭头的y坐标
#define IPPV_HEAD_ARROW_LEFT_X  125// 左边箭头的x坐标
#define IPPV_HEAD_ARROW_RIGHT_X (OSD_REGINMAXWIDHT-IPPV_HEAD_ARROW_LEFT_X)

#define IPPV_HEAD_TITLE_Y  (IPPV_HEAD_ARROW_LEFT_Y + 50)
#define IPPV_HEAD_TITLE_X  (IPPV_HEAD_ARROW_LEFT_X)
#define IPPV_HEAD_TITLE1_W  (206)
#define IPPV_HEAD_TITLE2_W  (206)
#define IPPV_HEAD_TITLE3_W  (206)
#define IPPV_HEAD_TITLE4_W  (206)
#define IPPV_HEAD_TITLE5_W  (206)

#define IPPV_LISTITEM_X IPPV_HEAD_ARROW_LEFT_X
#define IPPV_LISTITEM_Y (IPPV_HEAD_TITLE_Y+40)
#define IPPV_LISTITEM_GAP (15)
#define IPPV_LISTITEM_WIDTH (OSD_REGINMAXWIDHT- IPPV_LISTITEM_X*2)

#define IPPV_LISTITEM_PAGE_MAX (6)

#define IPPV_LISTITEM_HELP_BAR_X 0
#define IPPV_LISTITEM_HELP_BAR_Y UI_ICON_Y

static MBT_VOID uif_CAIPPVDisplayHelpInfo( MBT_VOID )
{
	MBT_S32 x;
	MBT_S32 y;
	MBT_S32 s32font_height = 0;
	BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 s32FontStrlen, s32Xoffset, s32Yoffset;
	MBT_CHAR* infostr[2][1]=
    {
        {
			"Exit"
        },
        {
			"Exit"
        }
    };

	s32font_height = WGUIF_GetFontHeight();
    WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
    //Exit
    x = IPPV_LISTITEM_HELP_BAR_X;
    y = IPPV_LISTITEM_HELP_BAR_Y;
	s32Xoffset = (OSD_REGINMAXWIDHT - (BMPF_GetBMPWidth(m_ui_Genres_Help_Button_EXITIfor) + UI_ICON_TEXT_MARGIN + WGUIF_FNTGetTxtWidth(strlen(infostr[uiv_u8Language][0]), infostr[uiv_u8Language][0])))/2;

	x = x + s32Xoffset;
    pstFramBmp = BMPF_GetBMP(m_ui_Genres_Help_Button_EXITIfor);
    WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);
    x = x +  pstFramBmp->bWidth + UI_ICON_TEXT_MARGIN;
    s32Yoffset = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
    s32FontStrlen = strlen(infostr[uiv_u8Language][0]);
    WGUIF_FNTDrawTxt(x, y + s32Yoffset, s32FontStrlen, infostr[uiv_u8Language][0], FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(s32font_height);
}

static MBT_VOID uif_CACardIPPVDrawOperator(MBT_S32 s32operator, MBT_S32 s32count)
{
	BITMAPTRUECOLOR *pstFramBmp;
	MBT_S32 x,y;
	MBT_S32 s32FontStrlen;
	MBT_S32 font_height;
	MBT_S32 yOffSet;
    MBT_S32 xOffSet;
	MBT_S32 s32FontWidth, s32FontWidth1;
    MBT_CHAR aBuf[8] = {0};
	MBT_CHAR* pStr = MM_NULL;
	MBT_CHAR* ptrInfo[2][7]=
    {
		{
			"Operator ID:",
			"Program Count:",
			"Product ID",
			"Status",
			"Tape",
			"Price",
			"Expire Time"
		},
		{
			"Operator ID:",
			"Program Count:",
			"Product ID",
			"Status",
			"Tape",
			"Price",
			"Expire Time"
		}
    };
	font_height = WGUIF_GetFontHeight();
	WGUIF_SetFontHeight(SECONDMENU_LISTFONT_HEIGHT);
	//左箭头
	x = IPPV_HEAD_ARROW_LEFT_X;
	y = IPPV_HEAD_ARROW_LEFT_Y;
	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_LeftIfor);
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    pStr = ptrInfo[uiv_u8Language][0];
	//画第一项
	s32FontStrlen = strlen(pStr);
	yOffSet = (pstFramBmp->bHeight - WGUIF_GetFontHeight())/2;
	x = x + pstFramBmp->bWidth + 40;
	WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, pStr, FONT_FRONT_COLOR_WHITE);
	
	//画第一项的内容
	s32FontWidth = WGUIF_FNTGetTxtWidth(s32FontStrlen,pStr);
	sprintf(aBuf,"%d",s32operator);
	x = x+s32FontWidth+20;
	s32FontStrlen = strlen(aBuf);	
	WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, aBuf, FONT_FRONT_COLOR_WHITE);

	pStr = ptrInfo[uiv_u8Language][1];
	s32FontStrlen = strlen(pStr);
	s32FontWidth = WGUIF_FNTGetTxtWidth(s32FontStrlen,pStr);
	sprintf(aBuf,"%d",s32count);
	s32FontStrlen = strlen(aBuf);
    s32FontWidth1 = s32FontWidth + 20 +WGUIF_FNTGetTxtWidth(s32FontStrlen,aBuf);
    x = IPPV_HEAD_ARROW_RIGHT_X - BMPF_GetBMPWidth(m_ui_MainMenu_Arrow_RightIfor) - 40 - s32FontWidth1;
    //画第二项
    WGUIF_FNTDrawTxt(x, y+yOffSet, strlen(ptrInfo[uiv_u8Language][1]), ptrInfo[uiv_u8Language][1], FONT_FRONT_COLOR_WHITE);
	x = x+s32FontWidth+20;
    //画第二项的内容
    WGUIF_FNTDrawTxt(x, y+yOffSet, s32FontStrlen, aBuf, FONT_FRONT_COLOR_WHITE);

	//右箭头
	pstFramBmp = BMPF_GetBMP(m_ui_MainMenu_Arrow_RightIfor);
	x = IPPV_HEAD_ARROW_RIGHT_X - pstFramBmp->bWidth;
	y = IPPV_HEAD_ARROW_LEFT_Y;	
	WGUIF_DisplayReginTrueColorBmp(x, y, 0, 0, pstFramBmp->bWidth, pstFramBmp->bHeight, pstFramBmp, MM_TRUE);

    x = IPPV_HEAD_TITLE_X;
    y = IPPV_HEAD_TITLE_Y;
    pStr = ptrInfo[uiv_u8Language][2];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (IPPV_HEAD_TITLE1_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + IPPV_HEAD_TITLE1_W;
    pStr = ptrInfo[uiv_u8Language][3];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (IPPV_HEAD_TITLE2_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + IPPV_HEAD_TITLE2_W;
    pStr = ptrInfo[uiv_u8Language][4];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (IPPV_HEAD_TITLE3_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + IPPV_HEAD_TITLE3_W;
    pStr = ptrInfo[uiv_u8Language][5];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (IPPV_HEAD_TITLE4_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    x = x + IPPV_HEAD_TITLE4_W;
    pStr = ptrInfo[uiv_u8Language][6];
    s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(pStr),pStr);
    xOffSet = (IPPV_HEAD_TITLE5_W - s32FontWidth)/2;
    WGUIF_FNTDrawTxt(x+xOffSet, y, strlen(pStr), pStr, FONT_FRONT_COLOR_WHITE);

    WGUIF_SetFontHeight(font_height);
}

static MBT_BOOL uif_CAIPPVProgDrawPanel(MBT_VOID)
{	
    MBT_CHAR* ptrInfo[2][1]=
    {
        {
            "IPPV Information",
        },

        {
            "IPPV Information",
        }
    };
    
    uif_ShareDrawCommonPanel(ptrInfo[uiv_u8Language][0], NULL, MM_TRUE);
	
    uif_CAIPPVDisplayHelpInfo();	

    return MM_TRUE;
}


static MBT_BOOL uif_CACardIPPVListRead(MBT_S32 iIndex,MBT_CHAR* pItem)
{
    if ( pItem == MM_NULL )
    {
        return MM_FALSE;
    }

#if(1 == M_CDCA) 
    MBT_S32 iLen;
    Stru_Date stData;
    MBT_CHAR* ptrInfo[2][6]=
    {
        {
            "Orderable",
            "Watched",
            "Past",
            "Yes",
            "No"
        },
        {
            "Orderable",
            "Watched",
            "Past",
            "Yes",
            "No"
        }
    };

    if ( pItem == MM_NULL )
    {
        return MM_FALSE;
    }


	//operator id
    iLen = sprintf(pItem, "%u",  uiv_pstTFIPPVInfo[iIndex].m_dwProductID);
    pItem[iLen] = 0;

	//state
	if(CDCA_IPPVSTATUS_BOOKING == uiv_pstTFIPPVInfo[iIndex].m_byBookEdFlag)
    {
        iLen = sprintf(pItem+1*MAXBYTESPERCOLUMN, "%s",  ptrInfo[uiv_u8Language][0]);
    }
    else if (CDCA_IPPVSTATUS_VIEWED == uiv_pstTFIPPVInfo[iIndex].m_byBookEdFlag)
    {
        iLen = sprintf(pItem+1*MAXBYTESPERCOLUMN, "%s",  ptrInfo[uiv_u8Language][1]);
    }
    else
    {
        iLen = sprintf(pItem+1*MAXBYTESPERCOLUMN, "%s",  ptrInfo[uiv_u8Language][2]);
    }	
    pItem[1*MAXBYTESPERCOLUMN+iLen] = 0;

    //tape
    if ( uiv_pstTFIPPVInfo[iIndex].m_bCanTape )
    {
        iLen = sprintf(pItem+2*MAXBYTESPERCOLUMN, "%s",  ptrInfo[uiv_u8Language][3]);
    }
    else
    {
        iLen = sprintf(pItem+2*MAXBYTESPERCOLUMN, "%s",  ptrInfo[uiv_u8Language][4]);
    }	
    pItem[2*MAXBYTESPERCOLUMN+iLen] = 0;

    //price
    iLen = sprintf(pItem+3*MAXBYTESPERCOLUMN, "%d",  uiv_pstTFIPPVInfo[iIndex].m_wPrice);
    pItem[3*MAXBYTESPERCOLUMN+iLen] = 0;

    //expiry
    CAF_CDDateToDate(&stData, uiv_pstTFIPPVInfo[iIndex].m_wExpiredDate);
    iLen = sprintf(pItem+4*MAXBYTESPERCOLUMN, "%04d.%02d.%02d",stData.m_wYear, stData.m_byMonth, stData.m_byDay);
    pItem[4*MAXBYTESPERCOLUMN+iLen] = 0;
#else
    return MM_FALSE;
#endif

    return MM_TRUE;
}

static MBT_VOID uif_CACardIPPVInitList( LISTITEM* pstList, MBT_S32 s32OperIdSelect)
{
    MBT_S32 me_StartX, me_StartY;

#if(1 == M_CDCA) 
    MBT_S32 iSize = sizeof(SCDCAIppvInfo);
    MBT_U16 u16IPPVTotal = CDCA_MAXNUM_IPPVP;
    SCDCAIppvInfo stTempIppv;

    memset(uiv_pstTFIPPVInfo,0,iSize*CDCA_MAXNUM_IPPVP);
    if(CDCA_RC_OK == CDCASTB_GetIPPVProgram(uiv_u16CAProviderID[s32OperIdSelect], uiv_pstTFIPPVInfo, &u16IPPVTotal ))
    {
        MBT_S32 i;
        MBT_S32 j;

        for( i=0;i<u16IPPVTotal;)
        {
            if(CDCA_IPPVSTATUS_VIEWED == uiv_pstTFIPPVInfo[i].m_byBookEdFlag)
            {
                i++;
            }
            else
            {
                memmove(&uiv_pstTFIPPVInfo[i],&uiv_pstTFIPPVInfo[i+1],(u16IPPVTotal - i-1)*iSize);
                u16IPPVTotal--;
            }
        }

        for( i=0;i<u16IPPVTotal;i++)
        {
            for( j=i;j<u16IPPVTotal;j++)
            {
                if(uiv_pstTFIPPVInfo[i].m_dwProductID >uiv_pstTFIPPVInfo[j].m_dwProductID)
                {
                    stTempIppv = uiv_pstTFIPPVInfo[i];
                    uiv_pstTFIPPVInfo[i] =  uiv_pstTFIPPVInfo[j];
                    uiv_pstTFIPPVInfo[j] = stTempIppv;
                }
            }
        }
    }
    else 
    {
        u16IPPVTotal = 0;
    }

    uif_CACardIPPVDrawOperator(uiv_u16CAProviderID[s32OperIdSelect],u16IPPVTotal);
#endif    
    me_StartX = IPPV_LISTITEM_X;
    me_StartY = IPPV_LISTITEM_Y;

    memset(pstList,0,sizeof(LISTITEM));
    pstList->u16ItemMaxChar = MAXBYTESPERCOLUMN;
    pstList->stTxtDirect = MM_Txt_Mid;
    pstList->bUpdateItem = MM_FALSE;
    pstList->bUpdatePage = MM_TRUE;	
    pstList->iColStart = me_StartX;

    pstList->iRowStart = me_StartY; 
    pstList->iPageMaxItem = IPPV_LISTITEM_PAGE_MAX;

    pstList->iPrevSelect = 0;
    pstList->iSelect = 0;
    pstList->iSpace  = IPPV_LISTITEM_GAP;
    pstList->iWidth  = IPPV_LISTITEM_WIDTH;
    pstList->iHeight = BMPF_GetBMPHeight(m_ui_selectbar_midIfor);

    /*color*/
    pstList->u32UnFocusFontColor = FONT_FRONT_COLOR_WHITE;
    pstList->u32FocusFontClolor = FONT_FRONT_COLOR_WHITE;

	pstList->iFontHeight = SECONDMENU_LISTFONT_HEIGHT;

    pstList->iColumns = 5;

    pstList->iColPosition[0] = pstList->iColStart;  
    pstList->iColPosition[1] = pstList->iColPosition[0]+IPPV_HEAD_TITLE1_W; 
    pstList->iColPosition[2] = pstList->iColPosition[1]+IPPV_HEAD_TITLE2_W;
    pstList->iColPosition[3] = pstList->iColPosition[2]+IPPV_HEAD_TITLE3_W; 
    pstList->iColPosition[4] = pstList->iColPosition[3]+IPPV_HEAD_TITLE4_W;
    pstList->iColWidth[0] = pstList->iColPosition[1]-pstList->iColPosition[0];  
    pstList->iColWidth[1] = pstList->iColPosition[2]-pstList->iColPosition[1];
    pstList->iColWidth[2] = pstList->iColPosition[3]-pstList->iColPosition[2];  
    pstList->iColWidth[3] = pstList->iColPosition[4]-pstList->iColPosition[3];
    pstList->iColWidth[4] = pstList->iColStart + pstList->iWidth - pstList->iColPosition[4]; 

    pstList->ListReadFunction = uif_CACardIPPVListRead;
    pstList->ListDrawBar = CaCardListDraw;
    pstList->cHavesScrollBar = 0;

#if(1 == M_CDCA) 
    pstList->iNoOfItems = u16IPPVTotal;
#else
    pstList->iNoOfItems = 0;
#endif
    pstList->pNoItemInfo = "No IPPV Information!";
}


MBT_S32 uif_CACardIPPVInfo(MBT_S32 iPara)
{
    MBT_S32 iKey;
    MBT_S32 iRetKey = DUMMY_KEY_EXIT;
    MBT_BOOL bRefresh = MM_TRUE;
    MBT_BOOL bRedraw = MM_TRUE;
    MBT_BOOL bExit = MM_FALSE;
    LISTITEM stIPPVList;
    MBT_S32 s32OperIdSelect = 0;
    MBT_S32 iLastSelect;

#if(1 == M_CDCA) 
    if(MM_NULL == uiv_pstTFIPPVInfo)
    {
        uiv_pstTFIPPVInfo = uif_ForceMalloc(sizeof(SCDCAIppvInfo)*CDCA_MAXNUM_IPPVP);
    }

    if ( uiv_pstTFIPPVInfo == MM_NULL )
    {
        return DUMMY_KEY_BACK;
    }
#endif
    UIF_StopAV();
    uif_InitOperatorInfo();
    stIPPVList.iSelect = 0;

    while ( !bExit )
    {
        if ( bRedraw )
        {
            bRefresh = uif_CAIPPVProgDrawPanel();	
            iLastSelect = stIPPVList.iSelect;
            uif_CACardIPPVInitList(&stIPPVList, s32OperIdSelect);
            stIPPVList.iSelect = iLastSelect;
        }
        			
		bRefresh |= uif_DisplayTimeOnCaptionStr(bRedraw, UICOMMON_TITLE_AREA_Y);
        bRefresh |= UCTRF_ListOnDraw(&stIPPVList);     
		bRedraw = MM_FALSE;
        
        if(MM_TRUE == bRefresh)
        {
            WGUIF_ReFreshLayer();
            bRefresh = MM_FALSE;
        }

        iKey = uif_ReadKey(1000);

        UCTRF_ListGetKey(&stIPPVList, iKey);

        switch ( iKey )
        {	
            case DUMMY_KEY_LEFTARROW:
            case DUMMY_KEY_RIGHTARROW:
#if(1 == M_CDCA) 				
                if (uiv_u8OperatorNumber == 0 || uiv_u8OperatorNumber == 1)
                {
                    break;
                }
                
                if (iKey == DUMMY_KEY_LEFTARROW)
                {
                    s32OperIdSelect--;
                    if (s32OperIdSelect < 0)
                    {
                        s32OperIdSelect = uiv_u8OperatorNumber-1;
                    }           
                }
                else
                {
                    s32OperIdSelect++;
                    if (s32OperIdSelect >= uiv_u8OperatorNumber)
                    {
                        s32OperIdSelect = 0;
                    }  
                }
#endif				
                stIPPVList.iSelect = 0;
                bRedraw = MM_TRUE;
                bRefresh = MM_TRUE;
                break;
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

            case DUMMY_KEY_CARD_IN:
                bRedraw = MM_TRUE;
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
                
            case DUMMY_KEY_MUTE:
                bRefresh |= UIF_SetMute();
                break;
                
            case DUMMY_KEY_FORCE_REFRESH:
                bRefresh = MM_TRUE;
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
#if(1 == M_CDCA) 
    if(MM_NULL != uiv_pstTFIPPVInfo)
    {
        uif_ForceFree(uiv_pstTFIPPVInfo);
        uiv_pstTFIPPVInfo = MM_NULL;
    }
#endif    

    WGUIF_ClsFullScreen();

    return iRetKey;
}
/*IPPV信息结束*/

/*子母卡开始*/

static MBT_U8 uiv_u8AtManulFeedMenu = 0;

MBT_U8 uif_GetManulFeedMenuState(MBT_VOID)
{
    return uiv_u8AtManulFeedMenu;
}
/*子母卡结束*/
 
   
