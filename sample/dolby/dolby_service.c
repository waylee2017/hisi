/*******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
 * FileName: upgrd_main.c
 * Description:
 *       this file finish common function.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main1     2011-07-11   184737
 ******************************************************************************/
#include <pthread.h>
#include "dolby_common.h"
#include "dolby_service.h"
#include "dolby_dvbplay.h"
#include "dolby_ir.h"
#include "dolby_win.h"
#include "hi_go.h"


/*control the change of program channel*/
/*s_bChangeChn: HI_FALSE: not to change the program chn,HI_SUCCESS:change the program chn*/
static HI_BOOL s_bChangeChn = HI_FALSE;

static HI_BOOL s_bHideChanBar = HI_TRUE;


/*s_bMuteOpen: HI_FALSE: close mute,HI_SUCCESS:open mute*/
static HI_BOOL s_bMuteOpen = HI_FALSE;

/*s_bIsPassThrough: HI_FALSE: not PassThrough set process,HI_SUCCESS:PassThrough set process*/
static HI_BOOL s_bIsPassThrough = HI_FALSE;

/*the current program num of dvbplay*/
static HI_S32 s_s32ProgNum = 0;

/*save the vol num before mute*/
static HI_U32 u32VolTmp = 0;
static PAT_TB prev_pattb;
static HI_BOOL s_bpatreceived = HI_FALSE;
static PMT_COMPACT_TBL	prev_pmttab;
static HI_BOOL s_bReSearchPro = HI_FALSE;

extern HI_S32 HI_MPI_HIAO_SetSpdifCompatible(HI_BOOL bEnable);
extern INPUT_KEY_MAP_S g_stIRMap[];
extern PMT_COMPACT_TBL  *g_pstProgTbl;
extern pthread_mutex_t g_Mutex;

/*init the passthrough window arg*/
static PASSTHROUGH_S s_stPassProp =
{
#if 1
	0,
	0,
	{" AUTO", " LPCM", " RAW "},
	{" RAW ", " LPCM"}
#else
    "      HDMI   ",
    "      SPDIF  ",
    "      LPCM   ",
    " Pass_Through"
#endif
};

/*init the progsearch window arg*/
static PROGSEARCH_S s_stProgSearch = {814, 6875, "QAM64 ", "HI_UNF_TUNER_DEV_TYPE_TDA18250B    "};
#if 0
static HI_S32   SetPassThrough(HI_BOOL s_bIsPassThrough)
{
    HI_S32 s32Ret = HI_FAILURE;
   
    if (!s_bIsPassThrough)
	{    
		s32Ret = HI_UNF_SND_SetSpdifPassThrough(HI_UNF_SND_0, HI_FALSE);
		if(HI_SUCCESS != s32Ret)
		{
			sample_printf("HI_UNF_SND_SetSpdifPassThrough error: 0x%x.", s32Ret);
			return HI_FAILURE;
		} 
        s32Ret = HI_UNF_SND_SetHdmiPassThrough(HI_UNF_SND_0, HI_FALSE);
        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("HI_UNF_SND_SetHdmiPassThrough error: 0x%x.", s32Ret);
        }

        sample_printf("Disable SetHDMIPassThrough \n");
	}
	else
	{ 		
		s32Ret = HI_UNF_SND_SetSpdifPassThrough(HI_UNF_SND_0, HI_TRUE);
		if(HI_SUCCESS != s32Ret)
		{
			sample_printf("HI_UNF_SND_SetSpdifPassThrough error: 0x%x.", s32Ret);
			return HI_FAILURE;
        }

        s32Ret = HI_UNF_SND_SetHdmiPassThrough(HI_UNF_SND_0, HI_TRUE);
        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("HI_UNF_SND_SetHdmiPassThrough error: 0x%x.", s32Ret);
            return HI_FAILURE;
        }

        sample_printf("Enable SetHDMIPassThrough \n");
    }

    return HI_SUCCESS;
}
#endif   
extern HI_BOOL g_bHdmiPassThrough;
extern HI_BOOL g_bSpdifPassThrough;
#if 0
static HI_S32 DOLBY_SetPassThrough(HI_BOOL bbhdmipassthrough,HI_BOOL bspdifpassthrough)
{
    
	HI_S32 s32Ret = HI_SUCCESS;

	if (HI_TRUE == bbhdmipassthrough)	 /*HDMI Port*/
	{
        HI_UNF_HDMI_SINK_CAPABILITY_S stSinkAttr;
		s32Ret = SetPassThrough(HI_TRUE);
		if (HI_SUCCESS == s32Ret)
		{
			;
		}
        s32Ret = HI_UNF_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_0, &stSinkAttr);
        if (HI_SUCCESS == s32Ret)
    	{
            if(HI_TRUE == stSinkAttr.bConnected)
            {
                HI_MPI_HIAO_SetSpdifCompatible(HI_FALSE);
                sample_printf("> %s: [%d] stSinkAttr.bConnected=%d\n", __FUNCTION__, __LINE__, stSinkAttr.bConnected);
            }
            else
        	{
                HI_MPI_HIAO_SetSpdifCompatible(HI_TRUE);
        	}
    	}
    	
		g_bHdmiPassThrough	= HI_TRUE;
		g_bSpdifPassThrough = HI_FALSE;
	}
	else if(HI_TRUE==bspdifpassthrough)	 /*SPDIF Port*/
	{
		s32Ret = SetPassThrough(HI_TRUE);
		if (HI_SUCCESS == s32Ret)
		{
			;
		}
		HI_MPI_HIAO_SetSpdifCompatible(HI_TRUE);
		g_bSpdifPassThrough = HI_TRUE;
		g_bHdmiPassThrough = HI_FALSE;
	}
	else
	{
		s32Ret = SetPassThrough(HI_FALSE);
		if (HI_SUCCESS == s32Ret)
		{
			;
		}

		g_bSpdifPassThrough = HI_FALSE;
		g_bHdmiPassThrough = HI_FALSE;
	}
	return s32Ret;
}
#endif
static HI_VOID DOLBY_UISetPassThrough(HI_CHAR *pcPassArg[])
{
#if 1
    if (0 == s_stPassProp.u32HdmiConfig)
    {
		// auto
		HI_UNF_SND_SetHdmiEdidAutoMode(HI_UNF_SND_0, HI_TRUE);
    }
	else if (1 == s_stPassProp.u32HdmiConfig)
	{
		// pcm
		HI_UNF_SND_SetHdmiPassThrough(HI_UNF_SND_0, HI_FALSE);
	}
	else if (2 == s_stPassProp.u32HdmiConfig)
	{
		// passthrough
		HI_UNF_SND_SetHdmiPassThrough(HI_UNF_SND_0, HI_TRUE);
	}
	else
	{
		// invalid
		sample_printf("Invalid HDMI output mode!\n");
	}

	if (0 == s_stPassProp.u32SpdifConfig)
	{
		// passthrough
		HI_UNF_SND_SetSpdifPassThrough(HI_UNF_SND_0, HI_TRUE);
	}
	else if (1 == s_stPassProp.u32SpdifConfig)
	{
		// pcm
		HI_UNF_SND_SetSpdifPassThrough(HI_UNF_SND_0, HI_FALSE);
	}
#else
    HI_S32 s32Ret = 0;
	HI_BOOL bbhdmipassthrough=HI_FALSE;
	HI_BOOL bspdifpassthrough=HI_FALSE;

	
	if(HI_SUCCESS == strcmp("      HDMI   ",pcPassArg[0]))/*HDMI Port*/
	{ 
		strcpy(s_stPassProp.acAOPort0 , "      HDMI   ");
		strcpy(s_stPassProp.acAOPort1 , "      SPDIF  ");
		  
		if(HI_SUCCESS == strcmp(" Pass_Through",pcPassArg[1]))/*PASSTHOUGH*/
		{
            bbhdmipassthrough = HI_TRUE;
            s32Ret = DOLBY_SetPassThrough(bbhdmipassthrough, bspdifpassthrough);
			if(HI_SUCCESS == s32Ret)
			{
				strcpy(s_stPassProp.acPassThrough0 , " Pass_Through");
				strcpy(s_stPassProp.acPassThrough1 , "      LPCM   ");
			}
		}
		else
		{
            bbhdmipassthrough = HI_FALSE;
            s32Ret = DOLBY_SetPassThrough(bbhdmipassthrough, bspdifpassthrough);
			if(HI_SUCCESS == s32Ret)
			{
				strcpy(s_stPassProp.acPassThrough0 , "      LPCM   ");
				strcpy(s_stPassProp.acPassThrough1 , " Pass_Through");
			} 
		} 
	}
	else/*SPDIF Port*/
	{
		strcpy(s_stPassProp.acAOPort0 , "      SPDIF  ");
		strcpy(s_stPassProp.acAOPort1 , "      HDMI   ");
		  
		if(HI_SUCCESS == strcmp(" Pass_Through",pcPassArg[1]))/*PASSTHOUGH*/
		{
            bspdifpassthrough = HI_TRUE;
            s32Ret = DOLBY_SetPassThrough(bbhdmipassthrough, bspdifpassthrough);
			if(HI_SUCCESS == s32Ret)
			{
				strcpy(s_stPassProp.acPassThrough0 , " Pass_Through");
				strcpy(s_stPassProp.acPassThrough1 , "      LPCM   ");
			} 
		}
		else
		{
            bspdifpassthrough = HI_FALSE;
            s32Ret = DOLBY_SetPassThrough(bbhdmipassthrough, bspdifpassthrough);
			if(HI_SUCCESS == s32Ret)
			{
				strcpy(s_stPassProp.acPassThrough0 , "      LPCM   ");
				strcpy(s_stPassProp.acPassThrough1 , " Pass_Through");
			} 

		}
	}
#endif
}

static HI_S32 DOLBY_ProcWindKey(HI_U32 u32Event, HI_U32 u32WindHandle, HI_U32 *pu32IfStart, HI_BOOL bIsProgSearch)
{
    WINDOW_S     *pstWind = (WINDOW_S *)u32WindHandle;
    WINDMEMBER_S *pstMembTmp = pstWind->pstMemberList;
    WINDMEMBER_S *pstMembPre = pstWind->pstMemberList;
    //HI_CHAR      *pcHdmiPassString[3] = { s_stPassProp.hdmi[0], s_stPassProp.hdmi[1], s_stPassProp.hdmi[2]};
	//HI_CHAR      *pcSpdifPassString[2] = { s_stPassProp.spdif[0], s_stPassProp.spdif[1]};
	HI_CHAR 	 *pcQamString[MAX_QAM_MAP_LENGTH] = {"QAM16 ", "QAM32 ", "QAM64 ", "QAM128", "QAM256"};
	HI_CHAR 	 *pcTunerDevString[MAX_TUNER_MAP_LENGTH] = {
		"HI_UNF_TUNER_DEV_TYPE_XG_3BL       ",
		"HI_UNF_TUNER_DEV_TYPE_CD1616       ",
		"HI_UNF_TUNER_DEV_TYPE_ALPS_TDAE    ",
		"HI_UNF_TUNER_DEV_TYPE_TDCC         ",
		"HI_UNF_TUNER_DEV_TYPE_TDA18250     ",
		"HI_UNF_TUNER_DEV_TYPE_CD1616_DOUBLE",
		"HI_UNF_TUNER_DEV_TYPE_MT2081       ",
		"HI_UNF_TUNER_DEV_TYPE_TMX7070X     ",
		"HI_UNF_TUNER_DEV_TYPE_R820C        ",
		"HI_UNF_TUNER_DEV_TYPE_MXL203       ",
		"HI_UNF_TUNER_DEV_TYPE_AV2011       ",
		"HI_UNF_TUNER_DEV_TYPE_SHARP7903    ",
		"HI_UNF_TUNER_DEV_TYPE_MXL101       ",
		"HI_UNF_TUNER_DEV_TYPE_MXL603       ",
		"HI_UNF_TUNER_DEV_TYPE_IT9170       ",
		"HI_UNF_TUNER_DEV_TYPE_IT9133       ",
		"HI_UNF_TUNER_DEV_TYPE_TDA6651      ",
		"HI_UNF_TUNER_DEV_TYPE_TDA18250B    ",
		"HI_UNF_TUNER_DEV_TYPE_M88TS2022    ",
		"HI_UNF_TUNER_DEV_TYPE_CXD2861      ",
		"HI_UNF_TUNER_DEV_TYPE_RDA5815      ",
		"HI_UNF_TUNER_DEV_TYPE_BUTT         "
	};

    if ((0 == u32WindHandle) || (HI_NULL == pu32IfStart))
    {
        sample_printf("input ptr invalid!\n");
        return HI_FAILURE;
    }

    *pu32IfStart = NO_BUTTON_SELECT;

    /*get current focus member*/
    if (HI_NULL == pstWind->pstMemberList)
    {
        sample_printf("No focus, cannot respond any key input!\n");
        return HI_SUCCESS;
    }

    /* pMembPre point to the last member */
    while(HI_NULL != pstMembPre->pstNext)
    {
        pstMembPre = pstMembPre->pstNext;
    }

    while(HI_NULL != pstMembTmp)
    {
        if(HI_TRUE == pstMembTmp->bIsOnFocus)  /* member focus found */
        {
            if(APP_WMEMB_BUTTOM == pstMembTmp->enMembType) /* buttom member */
            {
                /* respond to direction and OK */
                if(APP_KEY_DOWN == u32Event)
                {
                    /* focus trans */
                    pstMembTmp->bIsOnFocus = HI_FALSE;

                    if (pstMembTmp->pstNext == HI_NULL)
                    {
                        pstWind->pstMemberList->bIsOnFocus = HI_TRUE;
                    }
                    else
                    {
                        pstMembTmp->pstNext->bIsOnFocus = HI_TRUE;
                    }

                    return HI_SUCCESS;
                }
                if(APP_KEY_UP == u32Event)
                {
                    /* focus trans */
                    pstMembTmp->bIsOnFocus = HI_FALSE;
                    pstMembPre->bIsOnFocus = HI_TRUE;
                    return HI_SUCCESS;
                }

                /* OK to save input string and give message to main thread */
                if(APP_KEY_SELECT == u32Event)
                {
                    sample_printf("Your choice:%s!\n", pstMembTmp->pcDefString);
                    *pu32IfStart = START_SELECT;
                    return HI_SUCCESS;
                }

                return HI_SUCCESS;       /* no respondence */

            }

            if(APP_WMEMB_INPUT == pstMembTmp->enMembType)   /**** input string ****/
            {
                if (APP_KEY_DOWN == u32Event)
                {
                    if (HI_FALSE == pstMembTmp->bIsOnEdit) /* down in non-input mode */
                    {
                        /* focus trans */
                        pstMembTmp->bIsOnFocus = HI_FALSE;
                        pstMembTmp->bIsOnEdit = HI_FALSE;

                        if (pstMembTmp->pstNext == HI_NULL)
                        {
                            pstWind->pstMemberList->bIsOnFocus = HI_TRUE;
                        }
                        else
                        {
                            pstMembTmp->pstNext->bIsOnFocus = HI_TRUE;
                        }
                    }
                    else /* decrease number in input mode */
                    {
                        char tmpNum = *(pstMembTmp->pcDefString + pstMembTmp->u8SubFocusIndex);
                        if (tmpNum <= '0')
                        {
                            tmpNum = '9';
                        }
                        else
                        {
                            tmpNum--;
                        }

                        *(pstMembTmp->pcDefString + pstMembTmp->u8SubFocusIndex) = tmpNum;
                        return HI_SUCCESS;
                    }

                    return HI_SUCCESS;
                }

                if (APP_KEY_UP == u32Event)
                {
                    if (HI_FALSE == pstMembTmp->bIsOnEdit)/* down in non-input mode */
                    {
                        /* focus trans */
                        pstMembTmp->bIsOnFocus = HI_FALSE;
                        pstMembPre->bIsOnFocus = HI_TRUE;
                        pstMembTmp->bIsOnEdit = HI_FALSE;
                    }
                    else
                    {
                        char tmpNum = *(pstMembTmp->pcDefString + pstMembTmp->u8SubFocusIndex);
                        if (tmpNum >= '9')
                        {
                            tmpNum = '0';
                        }
                        else
                        {
                            tmpNum++;
                        }

                        *(pstMembTmp->pcDefString + pstMembTmp->u8SubFocusIndex) = tmpNum;
                        return HI_SUCCESS;
                    }

                    return HI_SUCCESS;
                }

                if (APP_KEY_LEFT == u32Event)
                {
                    if (pstMembTmp->u8SubFocusIndex == 0)
                    {
                        return HI_SUCCESS;
                    }

                    pstMembTmp->u8SubFocusIndex--;
                    return HI_SUCCESS;
                }

                if (APP_KEY_RIGHT == u32Event)
                {
                    if(pstMembTmp->u8SubFocusIndex == (pstMembTmp->u8TotalLen-1))
                    {
                        return HI_SUCCESS;
                    }

                    pstMembTmp->u8SubFocusIndex++;
                    return HI_SUCCESS;
                }

                if (APP_KEY_SELECT == u32Event)
                {
                    if (HI_FALSE == pstMembTmp->bIsOnEdit)
                    {
                        pstMembTmp->u8SubFocusIndex = 0;
                        pstMembTmp->bIsOnEdit = HI_TRUE;
                    }
                    else
                    {
                        pstMembTmp->u8SubFocusIndex = 0;
                        pstMembTmp->bIsOnEdit = HI_FALSE;
                    }

                    return HI_SUCCESS;
                }

                if ((u32Event <= APP_KEY_NUM9) && (u32Event >= APP_KEY_NUM0))
                {
                    if (HI_TRUE == pstMembTmp->bIsOnEdit)/* down in non-input mode */
                    {
                        *(pstMembTmp->pcDefString + pstMembTmp->u8SubFocusIndex) = (0x30 + u32Event); //ascii code
                        if (pstMembTmp->u8SubFocusIndex == (pstMembTmp->u8TotalLen - 1))
                        {
                            return HI_SUCCESS;
                        }

                        pstMembTmp->u8SubFocusIndex++;
                    }

                    return HI_SUCCESS;
                }

                return HI_SUCCESS;       /* no respondence */
            }

            if(APP_WMEMB_TRANS == pstMembTmp->enMembType) /* Transfer QAM stype */
            {
                if (APP_KEY_DOWN == u32Event)
                {
                    /* focus trans */
                    pstMembTmp->bIsOnFocus = HI_FALSE;

                    if (pstMembTmp->pstNext == HI_NULL)
                    {
                        pstWind->pstMemberList->bIsOnFocus = HI_TRUE;
                    }
                    else
                    {
                        pstMembTmp->pstNext->bIsOnFocus = HI_TRUE;
                    }

                    return HI_SUCCESS;

                }

                if (APP_KEY_UP == u32Event)
                {
                    /* focus trans */
                    pstMembTmp->bIsOnFocus = HI_FALSE;
                    pstMembPre->bIsOnFocus = HI_TRUE;
                    return HI_SUCCESS;
                }

				if(bIsProgSearch)/*PROG_SEARCH QAM*/
				{
	                if (APP_KEY_LEFT == u32Event)
	                {
						if (QAM16 == pstMembTmp->enQamNumber)
	                    {
	                        pstMembTmp->enQamNumber = QAM256;
	                    }
	                    else
	                    {
	                        pstMembTmp->enQamNumber--;
	                    }

	                    memcpy(pstMembTmp->pcDefString, pcQamString[(HI_U8)pstMembTmp->enQamNumber], 6);
	                    return HI_SUCCESS;	
	                }
	                if (APP_KEY_RIGHT == u32Event)
	                {
	                    if (QAM256 == pstMembTmp->enQamNumber)
	                    {
	                        pstMembTmp->enQamNumber = QAM16;
	                    }
	                    else
	                    {
	                        pstMembTmp->enQamNumber++;
	                    }
	                    memcpy(pstMembTmp->pcDefString, pcQamString[(HI_U8)pstMembTmp->enQamNumber], 6);
	                    return HI_SUCCESS;
	                }
            	}/*end if(bIsProgSearch)*/
				else/*PASS THROUGH HDMI PORT*/
				{
					 if ((APP_KEY_LEFT == u32Event) || (APP_KEY_RIGHT == u32Event))
               		 {
					 	#if 1
						if (APP_KEY_LEFT == u32Event)
						{
							s_stPassProp.u32HdmiConfig = (s_stPassProp.u32HdmiConfig  + 2) % 3;
						}
						else if (APP_KEY_RIGHT == u32Event)
						{
							s_stPassProp.u32HdmiConfig = (s_stPassProp.u32HdmiConfig  + 1) % 3;
						}
						memcpy(pstMembTmp->pcDefString, s_stPassProp.hdmi[s_stPassProp.u32HdmiConfig], 10);
						#else
	                    if (!memcmp(pstMembTmp->pcDefString, pcHdmiPassString[0], 14))
	                    {
                            memcpy(pstMembTmp->pcDefString, pcHdmiPassString[1], 14);
                        }
	                    else
	                    {
	                        memcpy(pstMembTmp->pcDefString, pcHdmiPassString[0], 14);                     
	                    }
						#endif

                    	return HI_SUCCESS;
                	}	
				}
            }/*end if(APP_WMEMB_TRANS)*/
            
            if (APP_WMEMB_TRANS_2 == pstMembTmp->enMembType) /* PASS THROUGH SPDIF PORT */
            {
                if (APP_KEY_DOWN == u32Event)
                {
                    /* focus trans */
                    pstMembTmp->bIsOnFocus = HI_FALSE;

                    if (pstMembTmp->pstNext == HI_NULL)
                    {
                        pstWind->pstMemberList->bIsOnFocus = HI_TRUE;
                    }
                    else
                    {
                        pstMembTmp->pstNext->bIsOnFocus = HI_TRUE;
                    }

                    return HI_SUCCESS;
                }

                if (APP_KEY_UP == u32Event)
                {
                    /* focus trans */
                    pstMembTmp->bIsOnFocus = HI_FALSE;
                    pstMembPre->bIsOnFocus = HI_TRUE;
                    return HI_SUCCESS;
                }

				if(bIsProgSearch)/*PROG_SEARCH TunerDevType*/
				{
					if (APP_KEY_LEFT == u32Event)
					{
						if (HI_UNF_TUNER_DEV_TYPE_XG_3BL == pstMembTmp->enTunerDevType)
						{
							pstMembTmp->enTunerDevType = HI_UNF_TUNER_DEV_TYPE_BUTT;
						}
						else
						{
							pstMembTmp->enTunerDevType--;
						}

                        memcpy(pstMembTmp->pcDefString, pcTunerDevString[(HI_U8)pstMembTmp->enTunerDevType],
                               MAX_TUNER_LENGTH);
						return HI_SUCCESS;	
					}
					if (APP_KEY_RIGHT == u32Event)
					{
						if (HI_UNF_TUNER_DEV_TYPE_BUTT == pstMembTmp->enTunerDevType)
						{
							pstMembTmp->enTunerDevType = HI_UNF_TUNER_DEV_TYPE_XG_3BL;
						}
						else
						{
							pstMembTmp->enTunerDevType++;
						}
                        memcpy(pstMembTmp->pcDefString, pcTunerDevString[(HI_U8)pstMembTmp->enTunerDevType],
                               MAX_TUNER_LENGTH);
						return HI_SUCCESS;
					}
				}/*end if(bIsProgSearch)*/
				else
				{
					if ((APP_KEY_LEFT == u32Event) || (APP_KEY_RIGHT == u32Event))
	                {
						#if 1
						if (APP_KEY_LEFT == u32Event)
						{
							s_stPassProp.u32SpdifConfig = (s_stPassProp.u32SpdifConfig  + 1) % 2;
						}
						else if (APP_KEY_RIGHT == u32Event)
						{
							s_stPassProp.u32SpdifConfig = (s_stPassProp.u32SpdifConfig  + 1) % 2;
						}
						memcpy(pstMembTmp->pcDefString, s_stPassProp.spdif[s_stPassProp.u32SpdifConfig], 10);
						#else
	                    if (!memcmp(pstMembTmp->pcDefString, pcSpdifPassString[0], 14))
	                    {
                            memcpy(pstMembTmp->pcDefString, pcSpdifPassString[1], 14);
                        }
	                    else
	                    {
	                        memcpy(pstMembTmp->pcDefString, pcSpdifPassString[0], 14);                     
	                    }
						#endif

	                    return HI_SUCCESS;
	                }
                }
            }
        }

        pstMembTmp = pstMembTmp->pstNext;  /* check next window member */
        /* pMembPre move to next */
        if(HI_NULL != pstMembPre->pstNext)
        {
            pstMembPre = pstMembPre->pstNext;
        }
        else
        {
            pstMembPre = pstWind->pstMemberList;
        }
    }
    return HI_FAILURE;
}

static HI_VOID DOLBY_SetProgSearchWinArg(HI_U32 u32WindHandle)
{
	HI_U32 u32PressStatus = 0, u32KeyId = 0;
	HI_U32 u32IsStart = 0;
	HI_S32 s32Ret = 0;
	HI_U32 i = 0;

	u32IsStart = NO_BUTTON_SELECT;
	while(1)
	{
		s32Ret = HI_DOLBY_IR_GetValue(&u32PressStatus, &u32KeyId);
		if (s32Ret == HI_SUCCESS)
		{
			for ( i = 0 ; i < MAX_IR_MAP ; i ++)
			{
				if ( g_stIRMap[i].u32KeyValue == u32KeyId )
				{
					break;
				}
			}
			
			/* invalid key */
			if(MAX_IR_MAP == i)
			{
				sample_printf("Invalid key value, Please input right key value!\n");
				continue;
			}

			(HI_VOID)DOLBY_ProcWindKey(g_stIRMap[i].u32Event, u32WindHandle, &u32IsStart,HI_TRUE);
			if (START_SELECT == u32IsStart)
			{
				break;
			}

			/* update window */
			HI_DOLBY_BuildAndPasteWind(u32WindHandle);
			(HI_VOID)HI_DOLBY_ShowWind();
		}
	}
}

static HI_VOID DOLBY_GetWinArg(HI_U32 u32WindHandle,HI_CHAR *pcArg[])
{
	WINDOW_S     *pstWindTemp = HI_NULL;
	WINDMEMBER_S *pstWinMemTemp  = HI_NULL;
	HI_U32 i = 0;

	pstWindTemp   = (WINDOW_S *)u32WindHandle;
    pstWinMemTemp = pstWindTemp->pstMemberList;
    for (i = 0; i < MAX_MEMBER_LIST; i++)
    {
        sample_printf("pstWinMemTemp->pcDefString :%s\n", pstWinMemTemp->pcDefString);
		pcArg[i] = pstWinMemTemp->pcDefString;
        pstWinMemTemp = pstWinMemTemp->pstNext;
        if (NULL == pstWinMemTemp)
        {
            break;
        }
    }
}


static HI_VOID DOLBY_SaveWinArg(HI_CHAR *pcArg[],PROGSEARCH_S *pstProgSearch)
{
	pstProgSearch->u32Freq = strtol(pcArg[0],NULL,0);
	pstProgSearch->u16symborate= strtol(pcArg[1],NULL,0);
	strcpy(pstProgSearch->acQam,pcArg[2]);
	strcpy(pstProgSearch->acTuner,pcArg[3]);
}

static HI_S32  DOLBY_ReplayAV(HI_U32 u32DmxId,PAT_TB pat_tb,HI_HANDLE* phAvplay)
{
	HI_S32 s32Ret;
	if(HI_NULL == phAvplay)
	{
		return HI_FAILURE;
	}
	
	if(s_s32ProgNum < pat_tb.u16ProgNum)
	{
		s_s32ProgNum = 0;
		s32Ret = HIADP_AVPlay_PlayProg(*phAvplay,g_pstProgTbl,s_s32ProgNum,HI_TRUE);
		if(HI_FAILURE == s32Ret)
		{
			return HI_FAILURE;
		}
	}
	else
	{
		s32Ret = HIADP_AVPlay_PlayProg(*phAvplay,g_pstProgTbl,s_s32ProgNum,HI_TRUE);
		if(HI_FAILURE == s32Ret)
		{
			return HI_FAILURE;
		}
	}
	return HI_SUCCESS;
}


HI_S32 HI_DOLBY_OSDInit(HI_VOID)
{
    HI_S32 s32Ret = HI_FAILURE;
	
	HI_SYS_Init();

	s32Ret = HI_GO_Init();
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to init higo! ret = 0x%x !\n", s32Ret);
        
        return s32Ret;
    }
    
    s32Ret = HIADP_Disp_Init(HI_UNF_ENC_FMT_720P_50);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to init HI_ADP_Disp_Init! ret = 0x%x !\n", s32Ret);
        return s32Ret;
    }
    else
    {
        sample_printf("success to init disp\n");
    }

	HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_OSD_0, HI_LAYER_ZORDER_MOVETOP);
	
	return HI_SUCCESS;

}

HI_S32 HI_DOLBY_OSDDeinit(HI_VOID)
{
    HI_S32 s32Ret = HI_FAILURE;
	
	HI_SYS_DeInit();

	s32Ret = HI_GO_Deinit();
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to HI_GO_Deinit! ret = 0x%x !\n", s32Ret);
        
        return s32Ret;
    }
    
    s32Ret = HIADP_Disp_DeInit();
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to init HIADP_Disp_DeInit! ret = 0x%x !\n", s32Ret);
        return s32Ret;
    }
    else
    {
        sample_printf("success to HIADP_Disp_DeInit \n");
    }
	return HI_SUCCESS;

}

HI_CHAR* HI_DOLBY_GetVideoType(HI_VOID)
{
	HI_UNF_VCODEC_TYPE_E  enVidType = HI_UNF_VCODEC_TYPE_BUTT;
	HI_CHAR *pcVideoType[] = {
		"MPEG2","MPEG4","AVS","H263",
		"H264" ,"REAL8","REAL9","VC-1",
		"VP6"  ,"VP6F" ,"VP6A" ,"SORENSON SPARK",
		"DIVX3","JPEG" ,"BUTT" ,
	};

	//pthread_mutex_lock(&g_Mutex);
	if(!g_pstProgTbl) return "error";
	if (g_pstProgTbl->proginfo[s_s32ProgNum].VElementNum > 0 )
	{
		enVidType = g_pstProgTbl->proginfo[s_s32ProgNum].VideoType;
		return pcVideoType[enVidType];
	}
	else
	{
		return "error";
	}
	//pthread_mutex_unlock(&g_Mutex);
}



HI_CHAR* HI_DOLBY_GetAudioType(HI_VOID)
{
	HI_CHAR  *pcAudioString = "error";
	
    if(NULL == g_pstProgTbl)
    {
        return pcAudioString;
    }
	switch (g_pstProgTbl->proginfo[s_s32ProgNum].AudioType)
    {
        case HA_AUDIO_ID_MP3:
			pcAudioString = "MP3";
            break;
			
        case HA_AUDIO_ID_AAC:
			pcAudioString = "AAC";
            break;
          
        case HA_AUDIO_ID_DOLBY_PLUS:
			pcAudioString = "DOLBY";
            break;
            
        default:
			pcAudioString = "error";
			break;
    }
	return pcAudioString;
}


HI_CHAR* HI_DOLBY_GetMonoType(HI_U32 u32Dolby_Acmod)
{
    HI_CHAR  *pcMonoString = "";
	switch(u32Dolby_Acmod)
	{
		case 0:
			pcMonoString = "1+1";
			break;
		case 1:
			pcMonoString = "1/0";
			break;
		case 2:
			pcMonoString = "2/0";
			break;
		case 3:
			pcMonoString = "3/0";
			break;
		case 4:
			pcMonoString = "2/1";
			break;
		case 5:
			pcMonoString = "3/1";
			break;
		case 6:
			pcMonoString = "2/2";
			break;
		case 7:
			pcMonoString = "3/2";
			break;
		default :
			pcMonoString = "";
			break;
	}
	return pcMonoString;
}



HI_S32 HI_DOLBY_ProcProgSearchAndPlay(HI_U32 u32WindHandle,HI_HANDLE* phAvplay,PMT_COMPACT_TBL	**ppstProgTbl)
{
	HI_S32		  s32Ret = 0;
	HI_CHAR       *pcProgSearchArg[MAX_MEMBER_LIST];
	
	/*draw program search window*/
	s32Ret = HI_DOLBY_CreatPrgSearch_Wind(u32WindHandle,&s_stProgSearch);
	if (HI_SUCCESS != s32Ret)
	{		
		sample_printf("call HI_DOLBY_CreatPrgSearch_Wind faild!\n");
		return HI_FAILURE;
	}
	
	/*IR control process : to  set program search arg */
	DOLBY_SetProgSearchWinArg(u32WindHandle);

	/*get program search arg */
	DOLBY_GetWinArg(u32WindHandle ,pcProgSearchArg); 

	/*save program search arg*/
	DOLBY_SaveWinArg(pcProgSearchArg,&s_stProgSearch);
	
	/*start program search */
	s32Ret = HI_DOLBY_DvbPlay(pcProgSearchArg,phAvplay,ppstProgTbl);
	if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HI_DOLBY_DvbPlay  failed.\n");
        return HI_FAILURE;
    }
	//DOLBY_DispChnNumWin(u32WindHandle,s_s32ProgNum);

	
	/* hide  program search window*/
	s32Ret = HI_DOLBY_HidePrgSearch_Wind(u32WindHandle);
	if (HI_SUCCESS != s32Ret)
    {
        sample_printf("call HI_DOLBY_HidePrgSearch_Wind  failed.\n");
        return HI_FAILURE;
    }

	return HI_SUCCESS;
}

HI_S32 HI_DOLBY_DvbKeyEvent(HI_U32 u32WindHandle, HI_U32 u32KeyId, HI_HANDLE* phAvplay, CHNBAR_S  *pstChnBar,
                            HI_BOOL* pbUpdteChanBar)
{
	HI_CHAR  *pcPassArg[MAX_MEMBER_LIST] = {""};
//	HI_S32	 s32Ret = 0;
	HI_U32   u32IsStart = 0;
	HI_U32   u32ProgNum_MAX = 0;
	HI_U32   u32ProgNumTmp = 0;
	HI_U32   i = 0;	

	//pthread_mutex_lock(&g_Mutex);
	if(HI_NULL == g_pstProgTbl)
	{
		sample_printf("call HI_DOLBY_DvbKeyEvent faild, g_pstProgTbl is null!\n");
		return HI_FAILURE;
	}
	u32ProgNum_MAX = g_pstProgTbl->prog_num;
    //pthread_mutex_unlock(&g_Mutex);
    
	for ( i = 0 ; i < MAX_IR_MAP ; i ++)
	{
		if ( g_stIRMap[i].u32KeyValue == u32KeyId )
		{
			break;
		}
	}

	/* invalid key */
	if(MAX_IR_MAP == i)
	{	
		sample_printf("Invalid key value, Please input right key value!\n");
		return HI_FAILURE;
	}
	
	switch(g_stIRMap[i].u32Event)
	{
		case APP_KEY_NUM0:
		case APP_KEY_NUM1:
		case APP_KEY_NUM2:
		case APP_KEY_NUM3:
		case APP_KEY_NUM4:
		case APP_KEY_NUM5:
		case APP_KEY_NUM6:
		case APP_KEY_NUM7:
		case APP_KEY_NUM8:
		case APP_KEY_NUM9:
			u32ProgNumTmp =	g_stIRMap[i].u32Event % ( 10 + APP_KEY_NUM0);
			if(u32ProgNum_MAX > u32ProgNumTmp)
			{
				s_s32ProgNum = u32ProgNumTmp;
				s_bChangeChn = HI_TRUE;
			}
			else
			{
				/* invalid program value */
				sample_printf("Invalid program value %d, the MAX prognum is %d.\n",u32ProgNumTmp,u32ProgNum_MAX-1);
				return HI_FAILURE;
			}
			break;

	    /* draw pass through configure window */
		case APP_KEY_MENU:
			if(!s_bIsPassThrough)
			{
				HI_DOLBY_CreatPassThrough_WIN(u32WindHandle,&s_stPassProp);
				s_bIsPassThrough = HI_TRUE;
			}
			break;

        /* use up key to increase program */
		case APP_KEY_UP:
			if(!s_bIsPassThrough)
			{
				s_bChangeChn = HI_TRUE;
				++s_s32ProgNum;
				s_s32ProgNum = s_s32ProgNum % u32ProgNum_MAX;
				break;
			}
			/* move pass through focus up */
			else
			{
				(HI_VOID)DOLBY_ProcWindKey(g_stIRMap[i].u32Event, u32WindHandle, &u32IsStart,HI_FALSE);
				break;
			}

        /* use down key to decrease program */
		case APP_KEY_DOWN:
			if(!s_bIsPassThrough)
			{
				s_bChangeChn = HI_TRUE;
				s_s32ProgNum = (s_s32ProgNum + u32ProgNum_MAX - 1) % u32ProgNum_MAX;
				break;

			}
			/* move pass through focus down */
			else
			{
				(HI_VOID)DOLBY_ProcWindKey(g_stIRMap[i].u32Event, u32WindHandle, &u32IsStart,HI_FALSE);
				break;
			}

		/* use right key to increase volume */	
		case APP_KEY_RIGHT:
			if(!s_bIsPassThrough)
			{
				if(100 != pstChnBar->u32Volume)
				{
					pstChnBar->u32Volume++;
				}
				HI_UNF_SND_SetMute(HI_UNF_SND_0,HI_FALSE);
				s_bMuteOpen = HI_FALSE;
				HI_UNF_SND_SetVolume(HI_UNF_SND_0,pstChnBar->u32Volume);
				*pbUpdteChanBar = HI_TRUE;
			}
			/* set pass through widget parameter */
			else
			{
			
				(HI_VOID)DOLBY_ProcWindKey(g_stIRMap[i].u32Event, u32WindHandle, &u32IsStart,HI_FALSE);
			}
			break;

		/* use left key to decrease volume */			
		case APP_KEY_LEFT:
			if(!s_bIsPassThrough)
			{
				if(0 != pstChnBar->u32Volume)
				{
					pstChnBar->u32Volume--;
				}
				HI_UNF_SND_SetMute(HI_UNF_SND_0,HI_FALSE);
				s_bMuteOpen = HI_FALSE;
				HI_UNF_SND_SetVolume(HI_UNF_SND_0,pstChnBar->u32Volume);
				*pbUpdteChanBar = HI_TRUE;
			}			
			/* set pass through widget parameter */
			else
			{
				(HI_VOID)DOLBY_ProcWindKey(g_stIRMap[i].u32Event, u32WindHandle, &u32IsStart,HI_FALSE);
			}

			break;

 		/* config pass through */
		case APP_KEY_SELECT:
			
			(HI_VOID)DOLBY_ProcWindKey(g_stIRMap[i].u32Event, u32WindHandle, &u32IsStart,HI_FALSE);
			if(s_bIsPassThrough && (u32IsStart == START_SELECT))
			{
				/* get arg of pass_through window*/
				DOLBY_GetWinArg(u32WindHandle ,pcPassArg);
            /* set pass_through Property */
            DOLBY_UISetPassThrough(pcPassArg);
				
				/* destroy pass_through window*/
				HI_DOLBY_DestroyPassThrough_WIN(u32WindHandle);
				s_bIsPassThrough = HI_FALSE;
				
			}
			break;

		/* config sound mute */
		case APP_KEY_VOLUME_MUTE:
			if(!s_bMuteOpen)
			{
				/* backup original volume */
				u32VolTmp = pstChnBar->u32Volume;

				/* set volume to 0 */
				pstChnBar->u32Volume = 0;

				HI_UNF_SND_SetMute(HI_UNF_SND_0,HI_TRUE);
				
				s_bMuteOpen = HI_TRUE;
			}
			else
			{
				/* resume original volume */
				pstChnBar->u32Volume = u32VolTmp;

				/* close sound mute */
				HI_UNF_SND_SetMute(HI_UNF_SND_0,HI_FALSE);

				/* set volume */
				HI_UNF_SND_SetVolume(HI_UNF_SND_0,pstChnBar->u32Volume);
				
				s_bMuteOpen = HI_FALSE;				
			}
			
			*pbUpdteChanBar = HI_TRUE;
			break;

		/* config track */
		case APP_KEY_TRACK:
			pstChnBar->enTrackMode++;
			if(pstChnBar->enTrackMode > 8)
			{
				pstChnBar->enTrackMode = (HI_UNF_TRACK_MODE_E)0;
			}
			HI_UNF_SND_SetTrackMode(HI_UNF_SND_0,pstChnBar->enTrackMode);
			*pbUpdteChanBar = HI_TRUE;
			break;
		case APP_KEY_SEATCH:
			 s_bReSearchPro = HI_TRUE;
			 break;
			 
		case APP_KEY_DEL:
			if(s_bHideChanBar)
			{
			 	HI_DOLBY_HideChnBar(u32WindHandle);
				s_bHideChanBar = HI_FALSE;
			}
			else
			{
				HI_DOLBY_DispChnBarWin(u32WindHandle,*pstChnBar);
				s_bHideChanBar = HI_TRUE;
			}
			 
			 break;	 
			 
		case APP_KEY_BACK:/* IR: EXIT->back */
			/*free source*/
#if 0
			HI_DOLBY_DvbPlayDeinit(phAvplay);
			HI_DOLBY_ClearPrgSearch_Wind(u32WindHandle);
			
			/* reset track and volume */
			pstChnBar->enTrackMode = (HI_UNF_TRACK_MODE_E)0;
			pstChnBar->u32Volume = VOL_NUM;
			s_bMuteOpen = HI_FALSE;	
			
			s32Ret = HI_DOLBY_ProcProgSearchAndPlay(u32WindHandle,phAvplay);	
			if(HI_SUCCESS != s32Ret)
			{
				sample_printf("HI_DOLBY_ProcProgSearchAndPlay faild!\n");
				return HI_FAILURE; 
			}
			
			*pbUpdteChanBar = HI_TRUE;
#endif 
		    DOLBY_DispChnNumWin(u32WindHandle,s_s32ProgNum);
			break;
#if 0
			HI_DOLBY_DestroyWindMemberList(u32WindHandle);
			(HI_VOID)HI_DOLBY_IR_Close();
			(HI_VOID)HI_DOLBY_OSDDeinit();
			exit(0);
#endif
		default:
			s_bChangeChn = HI_FALSE;
			break;
	}

	if(s_bIsPassThrough)
	{
		/* update window */
		HI_DOLBY_BuildAndPasteWind(u32WindHandle);
		(HI_VOID)HI_DOLBY_ShowWind();
	}

    /* change program */
	if(s_bChangeChn)
	{
		sample_printf("** the ProgNum_MAX =  %d, g_ProgNum = %d \n**",u32ProgNum_MAX-1,s_s32ProgNum);
		(HI_VOID)HIADP_AVPlay_PlayProg(*phAvplay,g_pstProgTbl,s_s32ProgNum,HI_TRUE);
        //DOLBY_DispChnNumWin(u32WindHandle,s_s32ProgNum);
		s_bChangeChn = HI_FALSE;
	}
	
	return HI_SUCCESS;
	
}


HI_S32  HI_DOLBY_DetectTsChng(HI_U32 u32DmxId, HI_HANDLE* phAvplay,HI_U32 u32WindHandle)
{
	HI_BOOL   bstreamchanged = HI_FALSE;
    HI_S32  s32Ret = 0;
    static PAT_TB pat_tb = {0};
	PMT_COMPACT_TBL	*pstProgTbl = HI_NULL;
	bstreamchanged = HI_FALSE;

	/* re-search program */
	if(s_bReSearchPro)
	{
		HI_DOLBY_ClearPrgSearch_Wind(u32WindHandle);
		//s_bMuteOpen = HI_FALSE;	
		pthread_mutex_lock(&g_Mutex);
		HI_DOLBY_DvbPlayDeinit(phAvplay);
		do
		{
			s32Ret = HI_DOLBY_ProcProgSearchAndPlay(u32WindHandle,phAvplay,&pstProgTbl);	
			if (HI_SUCCESS != s32Ret)
			{
				HI_DOLBY_ClearPrgSearch_Wind(u32WindHandle);
				HI_DOLBY_DrawSearchMesg(u32WindHandle);
				HI_DOLBY_ClearSearchMesg(u32WindHandle);	
			}
		}while(HI_SUCCESS != s32Ret);

		bstreamchanged = HI_TRUE;
		pthread_mutex_unlock(&g_Mutex);
		s_bReSearchPro = HI_FALSE;
	}
	
	/* check whether the stream has been changed */
	else
	{
		if (s_bpatreceived)
		{
			memcpy(&prev_pattb,&pat_tb,sizeof(pat_tb));
		}
		
	    memset(&pat_tb, 0, sizeof(pat_tb));
	    //memset(&sdt_tb, 0, sizeof(sdt_tb));
		
		/* parse PAT, save program information in pat_tb */
	    s32Ret = SRH_PATRequest(u32DmxId, &pat_tb);
	    if (HI_SUCCESS != s32Ret)
	    {
	        sample_printf("failed to search PAT\n");
	        return HI_FAILURE;
	    }
		
		if (0 == pat_tb.u16ProgNum)
	    {
	        sample_printf("no Program searched!\n");
	        return HI_FAILURE;
	    }

		if (s_bpatreceived)
		{
			if( 0 != memcmp(&prev_pattb,&pat_tb,sizeof(pat_tb)))
			{
				/* PAT has been changed */
				bstreamchanged = HI_TRUE;
			}
		}
		
		
		if (s_bpatreceived && g_pstProgTbl)
		{
			memcpy(&prev_pmttab,g_pstProgTbl,sizeof(PMT_COMPACT_TBL));
			
		}
		
		s32Ret = HI_DOLBY_ParsePMT(u32DmxId,pat_tb,&pstProgTbl);
		if ( HI_SUCCESS != s32Ret)
		{	
			sample_printf("HI_DOLBY_DetectTsChng call HI_DOLBY_ParsePMT faild!!\n");
			return HI_FAILURE;		
		}
		
        if(!pstProgTbl) return HI_FAILURE;
		if (s_bpatreceived)
		{
			if( 0 != memcmp(prev_pmttab.proginfo,pstProgTbl->proginfo,sizeof(PMT_COMPACT_PROG)))
			{
				/* PMT has been changed */
				bstreamchanged = HI_TRUE;
			}
		}
	}
	
	if (bstreamchanged)
	{
		/* restart program after the stream has been changed */
		pthread_mutex_lock(&g_Mutex);
        free(g_pstProgTbl->proginfo);
		free(g_pstProgTbl);
		g_pstProgTbl = HI_NULL;
		g_pstProgTbl = pstProgTbl;
		if(!s_bReSearchPro)
		{
			DOLBY_ReplayAV(0,pat_tb,phAvplay);
		}
		pthread_mutex_unlock(&g_Mutex);
		return HI_SUCCESS;	
	}

    free(pstProgTbl->proginfo);
    free(pstProgTbl);
	s_bpatreceived = HI_TRUE;
	return HI_SUCCESS;
}

