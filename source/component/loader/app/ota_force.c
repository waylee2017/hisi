/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

//#include <malloc.h>
//#include <unistd.h>
//#include <string.h>
//#include <stdlib.h>
#include "hi_type.h"
#include "hi_loader_info.h"
#include "ota_force.h"
#include "upgrd_osd.h"
#include "hi_adp_boardcfg.h"
#include "loaderdb_info.h"
#include "upgrd_common.h"
#include "hi_unf_ir.h"
#ifdef HI_BUILD_WITH_KEYLED
#include "hi_unf_keyled.h"
#endif

/*******************************************************************************/
#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

#define MAX_MEMER_LIST 8
#define NO_BUTTON_SELECT 3
#define UPDATA_CANCEL 2
#define UPDATE_SELECT 1
#define EXIT_SELECT 0

/* global variables declaration */

static DOWNLOAD_OTA_PARAMETER_S g_stForUpGrdInfo = {0};
static HI_BOOL g_bPasswdCorrect = HI_FALSE;

static UPGRD_PRIVATE_PARAM_S g_stOtaInfo;

/*--------------------------------*
*Function: process infrared press key of current WIN
*Input KeyId -- infrared press key(converse to enumerate type)
        WindHandle -- Window handle
*Output None
*Return success(0) or fail(-1)
*--------------------------------*/
static HI_S32 WIN_ProcessWindKey(eKeyPress KeyId, HI_U32 WindHandle, HI_U32 *pIfUpdate);

static HI_S32 IR_Init(HI_VOID)
{
#ifdef HI_BUILD_WITH_IR
	HI_S32 s32Ret = HI_SUCCESS;

	s32Ret = HI_UNF_IR_Init();
	if (HI_SUCCESS != s32Ret)
	{
		return HI_FAILURE;
	}

	(HI_VOID)HI_UNF_IR_Enable(HI_TRUE);
#endif	
	return HI_SUCCESS;
}

/*
 *Update passwd window pic according to window member list and focus
 */
static HI_S32 PASSWD_WIN_ProcessWindKey(eKeyPress KeyId, HI_U32 WindHandle, HI_U32 *pIfUpdate)
{
    sWindow *pWind = (sWindow *)WindHandle;
    sWindMember *pMembTmp = pWind->pMemberList;
    sWindMember *pMembPre = pWind->pMemberList;
    static eKeyPress u8PasswdBuf[8];
    const HI_CHAR*cancel   = LoaderOSDGetText(LOADER_CONTENT_BUTTON_CANCLE);
    const HI_CHAR *confirm = LoaderOSDGetText(LOADER_CONTENT_BUTTON_CONFIRM);
    static HI_S32 s32PasswdCnt = 0;

    if ((0 == WindHandle) || (HI_NULL == pIfUpdate))
    {
        HI_ERR_LOADER("input ptr invalid!\n");
        return HI_FAILURE;
    }

    if (HI_NULL == cancel || HI_NULL == confirm)
    {
        HI_ERR_LOADER("invalid cancel and confrim string.\n");
        return HI_FAILURE;
    }		

    *pIfUpdate = NO_BUTTON_SELECT;

    /*get current focus member*/
    if (HI_NULL == pWind->pMemberList)
    {
        HI_ERR_LOADER("No focus, cannot respond any key input!\n");
        return HI_SUCCESS;
    }

    /* pMembPre point to the last member */
    while (HI_NULL != pMembPre->pNext)
    {
        pMembPre = pMembPre->pNext;
    }

    while (HI_NULL != pMembTmp)
    {
        /* Press key 'Menu' to exit password box when main program is not damaged.*/
        if ((APP_KEY_EXIT == KeyId) && (g_stOtaInfo.bTagDestroy == HI_FALSE))
        {
            *pIfUpdate = EXIT_SELECT;
            return HI_SUCCESS;
        }

        if (HI_TRUE == pMembTmp->IsOnFocus)  /* member focus found */
        {
            if (APP_WMEMB_BUTTOM == pMembTmp->MembType) /* buttom member */
            {
                if (HI_TRUE == g_bPasswdCorrect)
                {
                    /* respond to direction and OK */
                    if ((APP_KEY_RIGHT == KeyId) || (APP_KEY_DOWN == KeyId))
                    {
                        /* focus trans */
                        pMembTmp->IsOnFocus = HI_FALSE;

                        if (pMembTmp->pNext == HI_NULL)
                        {
                            pWind->pMemberList->IsOnFocus = HI_TRUE;
                        }
                        else
                        {
                            pMembTmp->pNext->IsOnFocus = HI_TRUE;
                        }

                        return HI_SUCCESS;
                    }

                    if ((APP_KEY_LEFT == KeyId) || (APP_KEY_UP == KeyId))
                    {
                        /* focus trans */
                        pMembTmp->IsOnFocus = HI_FALSE;
                        pMembPre->IsOnFocus = HI_TRUE;
                        return HI_SUCCESS;
                    }

                    /* OK to save input string and give message to main thread */
                    if (APP_KEY_OK == KeyId)
                    {
                        if (!HI_OSAL_Strncmp(pMembTmp->pDefString, confirm, strlen(pMembTmp->pDefString) ))
                        {
                            *pIfUpdate = UPDATE_SELECT;
                        }
                        else if (!HI_OSAL_Strncmp(pMembTmp->pDefString, cancel, strlen(pMembTmp->pDefString) ))
                        {
                            *pIfUpdate = UPDATA_CANCEL;
                        }
                    }

                    return HI_SUCCESS;       /* no respondence */
                }

                return HI_SUCCESS;
            }

            if (APP_WMEMB_PASSWD == pMembTmp->MembType)/**** input passwd ****/
            {
                if (HI_FALSE == g_bPasswdCorrect)
                {
                    /* Password box will always be input state before enter the correct password.*/
                    pMembTmp->IsOnEdit = HI_TRUE;

                    if (APP_KEY_UNKNOWN != KeyId)
                    {
                        s32PasswdCnt++;

                        *(pMembTmp->pDefString + pMembTmp->SubFocusIndex) = '*';
                        u8PasswdBuf[pMembTmp->SubFocusIndex] = KeyId;

                        pMembTmp->SubFocusIndex++;

                        if (s32PasswdCnt >= 8)
                        {
                            /*Determine whether the password correctly.*/
                            if ((u8PasswdBuf[0] == APP_KEY_UP)
                                && (u8PasswdBuf[1] == APP_KEY_UP)
                                && (u8PasswdBuf[2] == APP_KEY_DOWN)
                                && (u8PasswdBuf[3] == APP_KEY_DOWN)
                                && (u8PasswdBuf[4] == APP_KEY_LEFT)
                                && (u8PasswdBuf[5] == APP_KEY_LEFT)
                                && (u8PasswdBuf[6] == APP_KEY_RIGHT)
                                && (u8PasswdBuf[7] == APP_KEY_RIGHT))
                            {
                                memset(pMembTmp->pDefString, ' ', pMembTmp->TotalLen);
                                memcpy(pMembTmp->pDefString, "pass    ", 8);
                                pMembTmp->IsOnEdit = HI_FALSE;
                                g_bPasswdCorrect = HI_TRUE;
                            }
                            else
                            {
                                memset(pMembTmp->pDefString, ' ', pMembTmp->TotalLen);
                                pMembTmp->SubFocusIndex = 0;
                                pMembTmp->IsOnEdit = HI_TRUE;
                                s32PasswdCnt = 0;
                            }
                        }
                    }

#if 0
                    if (APP_KEY_OK == KeyId)
                    {
                        if (HI_FALSE == pMembTmp->IsOnEdit)
                        {
                            pMembTmp->SubFocusIndex = 0;
                            pMembTmp->IsOnEdit = HI_TRUE;
                        }
                        else
                        {
                            memset(pMembTmp->pDefString, ' ', pMembTmp->TotalLen);
                            pMembTmp->SubFocusIndex = 0;
                            pMembTmp->IsOnEdit = HI_FALSE;

                            /*Determine whether the password correctly.*/
                            if ((u8PasswdBuf[0] == APP_KEY_UP)
                                && (u8PasswdBuf[1] == APP_KEY_UP)
                                && (u8PasswdBuf[2] == APP_KEY_DOWN)
                                && (u8PasswdBuf[3] == APP_KEY_DOWN)
                                && (u8PasswdBuf[4] == APP_KEY_LEFT)
                                && (u8PasswdBuf[5] == APP_KEY_LEFT)
                                && (u8PasswdBuf[6] == APP_KEY_RIGHT)
                                && (u8PasswdBuf[7] == APP_KEY_RIGHT))
                            {
                                memset(pMembTmp->pDefString, ' ', pMembTmp->TotalLen);
                                memcpy(pMembTmp->pDefString, "pass    ", 8);
                                pMembTmp->IsOnEdit = HI_FALSE;
                                g_bPasswdCorrect = HI_TRUE;
                            }
                        }
                    }
                    else
                    {
                        if (HI_TRUE == pMembTmp->IsOnEdit)
                        {
                            *(pMembTmp->pDefString + pMembTmp->SubFocusIndex) = '*';
                            u8PasswdBuf[pMembTmp->SubFocusIndex] = (HI_U8)KeyId;
                            if (pMembTmp->SubFocusIndex == (pMembTmp->TotalLen - 1))
                            {
                                return HI_SUCCESS;
                            }

                            pMembTmp->SubFocusIndex++;
                        }
                    }
#endif

                }
                else
                {
                    /* respond to direction and OK */
                    if ((APP_KEY_RIGHT == KeyId) || (APP_KEY_DOWN == KeyId))
                    {
                        /* focus trans */
                        pMembTmp->IsOnFocus = HI_FALSE;

                        if (pMembTmp->pNext == HI_NULL)
                        {
                            pWind->pMemberList->IsOnFocus = HI_TRUE;
                        }
                        else
                        {
                            pMembTmp->pNext->IsOnFocus = HI_TRUE;
                        }

                        return HI_SUCCESS;
                    }

                    if ((APP_KEY_LEFT == KeyId) || (APP_KEY_UP == KeyId))
                    {
                        /* focus trans */
                        pMembTmp->IsOnFocus = HI_FALSE;
                        pMembPre->IsOnFocus = HI_TRUE;
                        return HI_SUCCESS;
                    }

                    /* OK to save input string and give message to main thread */
                    if (APP_KEY_OK == KeyId)
                    {
                        if (!HI_OSAL_Strncmp(pMembTmp->pDefString, confirm, strlen(pMembTmp->pDefString)))
                        {
                            *pIfUpdate = UPDATE_SELECT;
                        }
                        else if (!HI_OSAL_Strncmp(pMembTmp->pDefString, cancel, strlen(pMembTmp->pDefString) ))
                        {
                            *pIfUpdate = UPDATA_CANCEL;
                        }

                        return HI_SUCCESS;
                    }

                    return HI_SUCCESS;
                }

                return HI_SUCCESS;       /* no respondence */
            }
        }

        pMembTmp = pMembTmp->pNext;  /* check next window member */
        /* pMembPre move to next */
        if (HI_NULL != pMembPre->pNext)
        {
            pMembPre = pMembPre->pNext;
        }
        else
        {
            pMembPre = pWind->pMemberList;
        }
    }

    return HI_FAILURE;
}

/*
 *Update window pic according to window member list and focus
 */
static HI_S32 WIN_ProcessWindKey(eKeyPress KeyId, HI_U32 WindHandle, HI_U32 *pIfUpdate)
{
    sWindow *pWind = (sWindow *)WindHandle;
    sWindMember *pMembTmp = pWind->pMemberList;
    sWindMember *pMembPre = pWind->pMemberList;
    HI_CHAR *QamString[5] = {"QAM16 ", "QAM32 ", "QAM64 ", "QAM128", "QAM256"};
    const HI_CHAR *pTempString  = HI_NULL;
    const HI_CHAR *pDownload[6] = {HI_NULL, HI_NULL};

    if ((0 == WindHandle) || (HI_NULL == pIfUpdate))
    {
        HI_ERR_LOADER("input ptr invalid!\n");
        return HI_FAILURE;
    }

    pTempString  = LoaderOSDGetText(LOADER_CONTENT_TRANS_EXIT);
    pDownload[0] = LoaderOSDGetText(LOADER_CONTENT_TRANS_NO);
    pDownload[1] = LoaderOSDGetText(LOADER_CONTENT_TRANS_YES);
    *pIfUpdate = NO_BUTTON_SELECT;

    /*get current focus member*/
    if (HI_NULL == pWind->pMemberList)
    {
        HI_ERR_LOADER("No focus, cannot respond any key input!\n");
        return HI_SUCCESS;
    }

    /* pMembPre point to the last member */
    while (HI_NULL != pMembPre->pNext)
    {
        pMembPre = pMembPre->pNext;
    }

    while (HI_NULL != pMembTmp)
    {
        if (HI_TRUE == pMembTmp->IsOnFocus)  /* member focus found */
        {
            if (APP_WMEMB_BUTTOM == pMembTmp->MembType) /* buttom member */
            {
                /* respond to direction and OK */
                if ((APP_KEY_RIGHT == KeyId) || (APP_KEY_DOWN == KeyId))
                {
                    /* focus trans */
                    pMembTmp->IsOnFocus = HI_FALSE;

                    if (pMembTmp->pNext == HI_NULL)
                    {
                        pWind->pMemberList->IsOnFocus = HI_TRUE;
                    }
                    else
                    {
                        pMembTmp->pNext->IsOnFocus = HI_TRUE;
                    }

                    return HI_SUCCESS;
                }

                if ((APP_KEY_LEFT == KeyId) || (APP_KEY_UP == KeyId))
                {
                    /* focus trans */
                    pMembTmp->IsOnFocus = HI_FALSE;
                    pMembPre->IsOnFocus = HI_TRUE;
                    return HI_SUCCESS;
                }

                /* OK to save input string and give message to main thread */
                if (APP_KEY_OK == KeyId)
                {
                    HI_DBG_LOADER("Your choice:%s!\n", pMembTmp->pDefString);
                    if (pTempString && *(pMembTmp->pDefString + 1) == *(pTempString + 1))
                    {
                        *pIfUpdate = EXIT_SELECT;
                    }
                    else
                    {
                        *pIfUpdate = UPDATE_SELECT;
                    }

                    return HI_SUCCESS;
                }

                return HI_SUCCESS;       /* no respondence */
            }

            if (APP_WMEMB_INPUT == pMembTmp->MembType)   /**** input string ****/
            {
                if (APP_KEY_DOWN == KeyId)
                {
                    /* Text box page down function is disabled while in edit status .*/
                    if (HI_FALSE == pMembTmp->IsOnEdit)
                    {
                        /* focus trans */
                        pMembTmp->IsOnFocus = HI_FALSE;
                        pMembTmp->IsOnEdit = HI_FALSE;

                        if (pMembTmp->pNext == HI_NULL)
                        {
                            pWind->pMemberList->IsOnFocus = HI_TRUE;
                        }
                        else
                        {
                            pMembTmp->pNext->IsOnFocus = HI_TRUE;
                        }
                    }
                    /*  Decrease digit in edit status.*/
                    else
                    {
                        char tmpNum = *(pMembTmp->pDefString + pMembTmp->SubFocusIndex);
                        if (tmpNum <= '0')
                        {
                            tmpNum = '9';
                        }
                        else
                        {
                            tmpNum--;
                        }

                        *(pMembTmp->pDefString + pMembTmp->SubFocusIndex) = tmpNum;
                        return HI_SUCCESS;
                    }

                    return HI_SUCCESS;
                }

                if (APP_KEY_UP == KeyId)
                {
                    /* Text box page down function is disabled while in edit status.*/
                    if (HI_FALSE == pMembTmp->IsOnEdit)
                    {
                        /* focus trans */
                        pMembTmp->IsOnFocus = HI_FALSE;
                        pMembPre->IsOnFocus = HI_TRUE;
                        pMembTmp->IsOnEdit = HI_FALSE;
                    }
                    else
                    {
                        char tmpNum = *(pMembTmp->pDefString + pMembTmp->SubFocusIndex);
                        if (tmpNum >= '9')
                        {
                            tmpNum = '0';
                        }
                        else
                        {
                            tmpNum++;
                        }

                        *(pMembTmp->pDefString + pMembTmp->SubFocusIndex) = tmpNum;
                        return HI_SUCCESS;
                    }

                    return HI_SUCCESS;
                }

                if (APP_KEY_LEFT == KeyId)
                {
                    if (pMembTmp->SubFocusIndex == 0)
                    {
                        return HI_SUCCESS;
                    }

                    pMembTmp->SubFocusIndex--;
                    return HI_SUCCESS;
                }

                if (APP_KEY_RIGHT == KeyId)
                {
                    if (pMembTmp->SubFocusIndex == (pMembTmp->TotalLen - 1))
                    {
                        return HI_SUCCESS;
                    }

                    pMembTmp->SubFocusIndex++;
                    return HI_SUCCESS;
                }

                if (APP_KEY_OK == KeyId)
                {
                    if (HI_FALSE == pMembTmp->IsOnEdit)
                    {
                        pMembTmp->SubFocusIndex = 0;
                        pMembTmp->IsOnEdit = HI_TRUE;
                    }
                    else
                    {
                        pMembTmp->SubFocusIndex = 0;
                        pMembTmp->IsOnEdit = HI_FALSE;
                    }

                    return HI_SUCCESS;
                }

                if (KeyId <= APP_KEY_NUM9)
                {
                    /* Text box page down function is disabled while in edit status.*/
                    if (HI_TRUE == pMembTmp->IsOnEdit)
                    {
                        *(pMembTmp->pDefString + pMembTmp->SubFocusIndex) = (0x30 + KeyId); //ascii code
                        if (pMembTmp->SubFocusIndex == (pMembTmp->TotalLen - 1))
                        {
                            return HI_SUCCESS;
                        }

                        pMembTmp->SubFocusIndex++;
                    }

                    return HI_SUCCESS;
                }

                return HI_SUCCESS;       /* no respondence */
            }

            if (APP_WMEMB_TRANS == pMembTmp->MembType) /* Transfer QAM stype */
            {
                if (APP_KEY_DOWN == KeyId)
                {
                    /* focus trans */
                    pMembTmp->IsOnFocus = HI_FALSE;

                    if (pMembTmp->pNext == HI_NULL)
                    {
                        pWind->pMemberList->IsOnFocus = HI_TRUE;
                    }
                    else
                    {
                        pMembTmp->pNext->IsOnFocus = HI_TRUE;
                    }

                    return HI_SUCCESS;
                }

                if (APP_KEY_UP == KeyId)
                {
                    /* focus trans */
                    pMembTmp->IsOnFocus = HI_FALSE;
                    pMembPre->IsOnFocus = HI_TRUE;
                    return HI_SUCCESS;
                }

                if (APP_KEY_LEFT == KeyId)
                {
                    if (QAM16 == pMembTmp->QamNumber)
                    {
                        pMembTmp->QamNumber = QAM256;
                    }
                    else
                    {
                        pMembTmp->QamNumber--;
                    }

                    memcpy(pMembTmp->pDefString, QamString[(HI_U8)pMembTmp->QamNumber], 6);
                    g_stForUpGrdInfo.enModulation = pMembTmp->QamNumber;

                    return HI_SUCCESS;
                }

                if (APP_KEY_RIGHT == KeyId)
                {
                    if (QAM256 == pMembTmp->QamNumber)
                    {
                        pMembTmp->QamNumber = QAM16;
                    }
                    else
                    {
                        pMembTmp->QamNumber++;
                    }

                    memcpy(pMembTmp->pDefString, QamString[(HI_U8)pMembTmp->QamNumber], 6);
                    g_stForUpGrdInfo.enModulation = pMembTmp->QamNumber;
                    return HI_SUCCESS;
                }
            }

            if (APP_WMEMB_TRANS_2 == pMembTmp->MembType) /* Transfer QAM stype */
            {
                if (APP_KEY_DOWN == KeyId)
                {
                    /* focus trans */
                    pMembTmp->IsOnFocus = HI_FALSE;

                    if (pMembTmp->pNext == HI_NULL)
                    {
                        pWind->pMemberList->IsOnFocus = HI_TRUE;
                    }
                    else
                    {
                        pMembTmp->pNext->IsOnFocus = HI_TRUE;
                    }

                    return HI_SUCCESS;
                }

                if (APP_KEY_UP == KeyId)
                {
                    /* focus trans */
                    pMembTmp->IsOnFocus = HI_FALSE;
                    pMembPre->IsOnFocus = HI_TRUE;
                    return HI_SUCCESS;
                }

                if ((APP_KEY_LEFT == KeyId) || (APP_KEY_RIGHT == KeyId))
                {
                    if (!memcmp(pMembTmp->pDefString, pDownload[0], 6))
                    {
                        memcpy(pMembTmp->pDefString, pDownload[1], 6);
                        pMembTmp->bAuto = HI_TRUE; /* Auto upgrade -- yes */
                    }
                    else
                    {
                        memcpy(pMembTmp->pDefString, pDownload[0], 6);
                        pMembTmp->bAuto = HI_FALSE; /* Auto upgrade -- no */
                    }

                    return HI_SUCCESS;
                }
            }
        }

        pMembTmp = pMembTmp->pNext;  /* check next window member */
        /* pMembPre move to next */
        if (HI_NULL != pMembPre->pNext)
        {
            pMembPre = pMembPre->pNext;
        }
        else
        {
            pMembPre = pWind->pMemberList;
        }
    }

    return HI_FAILURE;
}

HI_S32 OTA_Force_Init(UPGRD_PRIVATE_PARAM_S *pstInfo)
{
    if (HI_NULL != pstInfo)
    {
        if (HI_SUCCESS != IR_Init())
        {
            return HI_FAILURE;
        }

        memcpy(&g_stOtaInfo, pstInfo, sizeof(UPGRD_PRIVATE_PARAM_S));
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

/*passward: up-up-down-down-left-left-right-right*/
HI_S32 force_passwd_identify(GUI_RET_TYPE_E *penRet)
{
	HI_U32 testWind = 0;
	HI_S32 ret = HI_FAILURE;
#ifdef HI_BUILD_WITH_IR
	HI_UNF_KEY_STATUS_E PressStatus = HI_UNF_KEY_STATUS_DOWN;
	HI_U64 KeyId = 0;
#endif
#ifdef HI_BUILD_WITH_KEYLED
	HI_U32 u32KeyStatus = 0;
	HI_U32 u32KeyId = 0;
#endif
	sPositionXY Pos = {0};
	HI_CHAR CharBuffer[] = " 000000";
	HI_U32 IfUpdate = NO_BUTTON_SELECT;

	Pos.x = 110;
	Pos.y = 80;

	/*
	   Pos.x = 380;
	   Pos.y = 140;
	 */
	if (HI_NULL == penRet)
	{
		return HI_FAILURE;
	}

	testWind = WIN_CreateWind(Pos, 500, 420, APP_WIND_NOTES);

	if (g_stOtaInfo.bTagDestroy != HI_FALSE)  /*  main program destory tag */
	{
		CharBuffer[2] = 1 + 0x30;
	}

	CharBuffer[5] = (HI_CHAR)((g_stOtaInfo.u32FailedCnt + 1) / 10 + 0x30);
	CharBuffer[6] = (HI_CHAR)((g_stOtaInfo.u32FailedCnt + 1) % 10 + 0x30);

	(HI_VOID)Drv_ShowTextEx(testWind, CharBuffer, 20, 40, APP_WIN_TXT_COLOR);

	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_MAN_UPGRD, 200, 40, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_PROMPT_UPGRD_PWD1, 100, 80, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_PROMPT_UPGRD_PWD2, 100, 100, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_INPUT_PWD, 100, 160, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_PROMPT_NOT_OP1, 20, 220, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_PROMPT_NOT_OP2, 20, 245, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_PROMPT_NOT_OP3, 20, 270, APP_WIN_TXT_COLOR);

	Pos.x = 240;
	Pos.y = 160;
	(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_PASSWD, Pos, "        ", 8);

	Pos.x = 100;
	Pos.y = 320;
	(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_BUTTOM, Pos, LoaderOSDGetText(LOADER_CONTENT_BUTTON_CONFIRM), 8);

	if (g_stOtaInfo.bTagDestroy == HI_FALSE)  /*  main program destory tag.*/
	{
		Pos.x = 300;
		Pos.y = 320;
		(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_BUTTOM, Pos, LoaderOSDGetText(LOADER_CONTENT_BUTTON_CANCLE), 8);
	}

	/* Operation prompt. */
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_PROMPT_OPRTN, 30, 380, APP_WIN_TXT_COLOR);

	//add for window display
	WIN_BuildAndPasteWind(testWind);

	/* update window */
	(HI_VOID)WIN_ShowWind(testWind);

#if !defined(HI_BUILD_WITH_IR) && !defined(HI_BUILD_WITH_KEYLED)
#error "IR or KEYLED need bulid into loader!"
#endif

/* avoid bootloader has one * in the password box before enter keys*/
#ifdef HI_LOADER_BOOTLOADER
#if defined(HI_BUILD_WITH_KEYLED)
	HI_S32 i = 0;
    for (i = 0; i < 50; i++)
    {   
        ret = HI_UNF_KEY_GetValue(&u32KeyStatus, &u32KeyId);
        if ((ret == HI_SUCCESS) && (2 == u32KeyStatus))
        {
            if (LOADER_KEYLED_Key_Convert(u32KeyId) == APP_KEY_UNKNOWN)
                break;
        }
    }
#endif
#endif
	/* process key input */
	while (1)
	{
#if defined(HI_BUILD_WITH_IR)
		/* Remote control input */
		ret = HI_UNF_IR_GetValue(&PressStatus, &KeyId, 0);
		if ((ret == HI_SUCCESS) && (2 == PressStatus))
		{
			HI_DBG_LOADER("***  HI_IR_GetValue: PressStatus 0x%x , KeyId 0x%x  \n", PressStatus, KeyId);
			if (LOADER_IR_Key_Convert(KeyId) != APP_KEY_UNKNOWN)
			{
				(HI_VOID)PASSWD_WIN_ProcessWindKey(LOADER_IR_Key_Convert(KeyId), testWind, &IfUpdate);
				if ((UPDATE_SELECT == IfUpdate)
						|| (UPDATA_CANCEL == IfUpdate)
						|| (EXIT_SELECT == IfUpdate))
				{
					break;
				}

				/* update window */
				WIN_BuildAndPasteWind(testWind);
				(HI_VOID)WIN_ShowWind(testWind);
			}
		}
#endif

#if defined(HI_BUILD_WITH_KEYLED)
		/* Panel key input*/
		ret = HI_UNF_KEY_GetValue(&u32KeyStatus, &u32KeyId);
		if ((ret == HI_SUCCESS) && (2 == u32KeyStatus))
		{
			HI_DBG_LOADER("***  HI_KEY_GetValue: PressStatus 0x%x , KeyId 0x%x  \n", u32KeyStatus, u32KeyId);
			if (LOADER_KEYLED_Key_Convert(u32KeyId) != APP_KEY_UNKNOWN)
			{
				(HI_VOID)PASSWD_WIN_ProcessWindKey(LOADER_KEYLED_Key_Convert(u32KeyId), testWind, &IfUpdate);
				if ((UPDATE_SELECT == IfUpdate)
						|| (UPDATA_CANCEL == IfUpdate)
						|| (EXIT_SELECT == IfUpdate))
				{
					break;
				}
			}

			/* update window */
			WIN_BuildAndPasteWind(testWind);
			(HI_VOID)WIN_ShowWind(testWind);
		}
#endif
	}

	WIN_DestroyWind(testWind);

	HI_DBG_LOADER("choice = %d\n", IfUpdate);

	if (UPDATE_SELECT == IfUpdate) /* Enter upgrade  */
	{
		*penRet = GUI_RET_TYPE_OK;
	}
	else if (UPDATA_CANCEL == IfUpdate) /* Cancel upgrade */
	{
		*penRet = GUI_RET_TYPE_CANCEL;
	}
	else /* Exit upgrade. */
	{
		*penRet = GUI_RET_TYPE_EXIT;
	}

	return HI_SUCCESS;
}

HI_S32 OTA_Force_ConfigParam(GUI_RET_TYPE_E *penRet, DOWNLOAD_OTA_PARAMETER_S **ppstOutInfo)
{
	HI_U32 testWind = 0;
	HI_S32 ret = HI_FAILURE;
#ifdef HI_BUILD_WITH_IR
	HI_UNF_KEY_STATUS_E PressStatus = HI_UNF_KEY_STATUS_DOWN;
	HI_U64 KeyId = 0;
#endif
#ifdef HI_BUILD_WITH_KEYLED
	HI_U32 u32KeyStatus = 0;
	HI_U32 u32KeyId = 0;
#endif
	sPositionXY Pos = {0};
	sWindow *pWindTemp = HI_NULL;
	sWindMember *pWinMemTemp = HI_NULL;

	HI_U32 IfUpdate = NO_BUTTON_SELECT;
	HI_U32 u32Temp = 0;

	HI_U32 u32Freq = 0;
	HI_U16 u16symborate = 0;
	HI_U16 u16TsPid = 0x1FFF;

	HI_CHAR u8TmpBuf[7] = {0};

	if ((HI_NULL == penRet) || (HI_NULL == ppstOutInfo))
	{
		return HI_FAILURE;
	}

	u32Freq = 610;
	u16symborate = 6875;
	u16TsPid = 7000;

	Pos.x = 110;
	Pos.y = 80;

	/*************
	  Pos.x = 380;
	  Pos.y = 140;
	 **************/
	testWind = WIN_CreateWind(Pos, 500, 420, APP_WIND_NOTES);

	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_MAN_UPGRD, 200, 10, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_TITLE_FREQ, 50, 50, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_TITLE_SYM_RATE, 50, 110, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_TITLE_MODULATE, 50, 170, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_TITLE_PID, 50, 230, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowText(testWind, LOADER_CONTENT_TITLE_AUTO, 50, 290, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowTextEx(testWind, "<|", 272, 170, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowTextEx(testWind, "<|", 272, 290, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowTextEx(testWind, "|>", 400, 170, APP_WIN_TXT_COLOR);
	(HI_VOID)Drv_ShowTextEx(testWind, "|>", 400, 290, APP_WIN_TXT_COLOR);

	Pos.x = 300;
	Pos.y = 50;
	memset(u8TmpBuf, 0, 7);
	HI_OSAL_Snprintf(u8TmpBuf, sizeof(u8TmpBuf), "%03d", u32Freq);
	(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_INPUT, Pos, u8TmpBuf, 3);

	Pos.x = 300;
	Pos.y = 110;
	memset(u8TmpBuf, 0, 7);
	HI_OSAL_Snprintf(u8TmpBuf,  sizeof(u8TmpBuf), "%04d", u16symborate);
	(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_INPUT, Pos, u8TmpBuf, 4);

	Pos.x = 300;
	Pos.y = 170;
	(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_TRANS, Pos, "QAM64 ", 7);

	Pos.x = 300;
	Pos.y = 230;
	memset(u8TmpBuf, 0, 7);
	HI_OSAL_Snprintf(u8TmpBuf,  sizeof(u8TmpBuf), "%04d", u16TsPid);
	(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_INPUT, Pos, u8TmpBuf, 4);

	Pos.x = 300;
	Pos.y = 290;
	(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_TRANS_2, Pos, LoaderOSDGetText(LOADER_CONTENT_TRANS_NO), 6);

	Pos.x = 200;
	Pos.y = 350;
	(HI_VOID)WIN_CreateWindMember(testWind, APP_WMEMB_BUTTOM, Pos, LoaderOSDGetText(LOADER_CONTENT_BUTTON_START), 7);

	WIN_BuildAndPasteWind(testWind);
	(HI_VOID)WIN_ShowWind(testWind);

	/* process key input */
	while (1)
	{
#if defined(HI_BUILD_WITH_IR)
		HI_DBG_LOADER("Enter IR Input...\n");

		/* Remote control input */
		ret = HI_UNF_IR_GetValue(&PressStatus, &KeyId, 0);
		if ((ret == HI_SUCCESS) && (2 == PressStatus))
		{
			if (LOADER_IR_Key_Convert(KeyId) != APP_KEY_UNKNOWN)
			{
				(HI_VOID)WIN_ProcessWindKey(LOADER_IR_Key_Convert(KeyId), testWind, &IfUpdate);
				if ((UPDATE_SELECT == IfUpdate) || (EXIT_SELECT == IfUpdate))
				{
					break;
				}

				/* update window */
				WIN_BuildAndPasteWind(testWind);
				(HI_VOID)WIN_ShowWind(testWind);
			}
		}
#endif

#ifdef HI_BUILD_WITH_KEYLED
		HI_DBG_LOADER("Enter KEYLED Input...\n");

		/* Panel key input*/
		ret = HI_UNF_KEY_GetValue(&u32KeyStatus, &u32KeyId);
		if ((ret == HI_SUCCESS) && (2 == u32KeyStatus))
		{
			if (LOADER_KEYLED_Key_Convert(u32KeyId) != APP_KEY_UNKNOWN)
			{
				(HI_VOID)WIN_ProcessWindKey(LOADER_KEYLED_Key_Convert(u32KeyId), testWind, &IfUpdate);
				if ((UPDATE_SELECT == IfUpdate) || (EXIT_SELECT == IfUpdate))
				{
					break;
				}

				/* update window */
				WIN_BuildAndPasteWind(testWind);
				(HI_VOID)WIN_ShowWind(testWind);
			}
		}
#endif
		LOADER_Delayms(10);
	}

	if (UPDATE_SELECT == IfUpdate)
	{
		//const HI_CHAR *pBuffer = HI_NULL;
		pWindTemp   = (sWindow *)testWind;
		pWinMemTemp = pWindTemp->pMemberList;
		u32Temp = LOADER_strtoul((HI_CHAR*)pWinMemTemp->pDefString, NULL, 10);
		g_stForUpGrdInfo.u32Frequency = u32Temp * 1000; /* units:KHZ */
		//pBuffer = LoaderOSDGetText(LOADER_CONTENT_TITLE_FREQ);
		//HI_DBG_LOADER("%s: %d\n", pBuffer, u32Temp);

		pWinMemTemp = pWinMemTemp->pNext;
		u32Temp = LOADER_strtoul((HI_CHAR*)pWinMemTemp->pDefString, NULL, 10);
		g_stForUpGrdInfo.u32SymbolRate = u32Temp;
		//pBuffer = LoaderOSDGetText(LOADER_CONTENT_TITLE_SYM_RATE);
		//HI_DBG_LOADER("%s: %d\n", pBuffer, u32Temp);

		pWinMemTemp = pWinMemTemp->pNext;
		g_stForUpGrdInfo.enModulation = pWinMemTemp->QamNumber;
		//pBuffer = LoaderOSDGetText(LOADER_CONTENT_TITLE_MODULATE);
		//HI_DBG_LOADER("%s: %d\n", pBuffer, (HI_U32)g_stForUpGrdInfo.enModulation);

		pWinMemTemp = pWinMemTemp->pNext;
		u32Temp = LOADER_strtoul((HI_CHAR*)pWinMemTemp->pDefString, NULL, 10);
		g_stForUpGrdInfo.u16TsPID = u32Temp;
		HI_DBG_LOADER("PID : %d\n", u32Temp);

		pWinMemTemp = pWinMemTemp->pNext;
		u32Temp = LOADER_strtoul((HI_CHAR*)pWinMemTemp->pDefString, NULL, 10);
		g_stForUpGrdInfo.u8TableID = u32Temp;
		HI_DBG_LOADER("TABLE ID: %d\n", u32Temp);
        
        g_stForUpGrdInfo.u32SignalType = HI_UNF_TUNER_SIG_TYPE_CAB;
	}

	WIN_DestroyWind(testWind);

	if (UPDATE_SELECT == IfUpdate)
	{
		*penRet = GUI_RET_TYPE_OK;
		*ppstOutInfo = &g_stForUpGrdInfo;
	}
	else
	{
		*penRet = GUI_RET_TYPE_CANCEL;
	}

	return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif
