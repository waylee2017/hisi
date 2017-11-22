























































/******************************************************************************

*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*

******************************************************************************
  File Name       	:     optm_fb.c
  Version        		: 	Initial Draft
  Author         		: 	Hisilicon multimedia software group
  Created       		:
  Description  	       :     optm frame buffer manage
  History       		:
  1.Date        		:
    Author      		:
    Modification   	:	Created file

******************************************************************************/

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */

#include <linux/string.h>
#include "optm_basic.h"
#include "optm_debug.h"
#include "optm_fb.h"


HI_VOID OPTM_FB_SetQuickOutputMode(OPTM_FB_S *pFb, HI_BOOL bQuickOutputMode)
{
    pFb->bQuickOutputMode = bQuickOutputMode;

    return;
}

HI_VOID OPTM_FB_Reset(OPTM_FB_S *pFb, HI_BOOL bQuickOutputMode)
{
    HI_U32 i;

    for (i =0; i < OPTM_FFB_MAX_FRAME_NUM; i++)
    {
        memset (&(pFb->OptmFrameBuf[i]), 0, sizeof(OPTM_FRAME_S));
        pFb->OptmFrameBuf[i].enState= OPTM_FRAME_NOUSED;
    }


    for( i = 0; i < 6; i++)
    {
        memset(&(pFb->stcfgF[i]), 0x0, sizeof(HI_UNF_VO_FRAMEINFO_S));
    }
    pFb->pCrtFrame = HI_NULL;
    pFb->pNextFrame = HI_NULL;
    pFb->pPreFrame = HI_NULL;

    pFb->In = 3;
    pFb->Next = 4;
    pFb->Current = 3;
    pFb->Previous = 2;
    pFb->PrePrevious = 1;

    pFb->LstConfig = 2;
    pFb->LstLstConfig = 1;
    pFb->Release = 0;
    pFb->SafeRelease = 1;

    pFb->RepeatFormat = 0;
    pFb->CrtFieldFlag = 0;
    pFb->bQuickOutputMode = bQuickOutputMode;

    pFb->TryReceiveFrame = 0;
    pFb->ReceiveFrame = 0;
    pFb->UnloadFrame = 0;
    pFb->ConfigFrame = 0;
    pFb->ReleaseFrame = 0;

    pFb->SyncPlay    = 0;
    pFb->SyncTPlay   = 0;
    pFb->SyncRepeat  = 0;
    pFb->SyncDiscard = 0;

    for (i =0; i < OPTM_FFB_MAX_FRAME_NUM; i++)
    {
        pFb->OptmRlsFrameBuf[i].bNeedRelease = HI_FALSE;
    }

    pFb->RlsWrite = 0;
    pFb->RlsRead = 0;

    /* for 3:2 PULLDOWN detection */
    pFb->u32LstFldDropCnt = 0;
    pFb->Drop = pFb->Release;

    return;
}


HI_S32 OPTM_FB_BufNum(OPTM_FB_S *pFb)
{
    HI_U32  Config;
    HI_S32  BufNum = 0;

    Config = pFb->Current;

    while(Config != pFb->In)
    {
		BufNum ++;
        Config = (Config + 1) % OPTM_FFB_MAX_FRAME_NUM;
    }

    return BufNum;

}


OPTM_FRAME_S * OPTM_FB_ReceiveGetNext(OPTM_FB_S *pFb)
{
#ifdef VDP_USE_DEI_FB_OPTIMIZE
    /* VDP_USE_DEI_FB_OPTIMIZE: keep 'In' befor 'Release', it means keep 1 frame empty, or for the 1st frame repeat case, the 12th frame will DO DEI with 1st */
    if (pFb->In == (pFb->Release + OPTM_FFB_MAX_FRAME_NUM - 1) % OPTM_FFB_MAX_FRAME_NUM)
#else
    if (pFb->In == pFb->Release)
#endif
    {
        return HI_NULL;
    }

    if (OPTM_FRAME_NOUSED != pFb->OptmFrameBuf[pFb->In].enState)
    {
        return HI_NULL;
    }

    return (&pFb->OptmFrameBuf[pFb->In]);
}

HI_VOID OPTM_FB_ReceivePutNext(OPTM_FB_S *pFb)
{
    if (OPTM_FRAME_NOUSED != pFb->OptmFrameBuf[pFb->In].enState)
    {
        return;
    }

    /* get sequence number for debug */
    pFb->OptmFrameBuf[pFb->In].u32IndexNumber = pFb->ReceiveFrame;
    pFb->ReceiveFrame++;

    pFb->OptmFrameBuf[pFb->In].enState= OPTM_FRAME_RECEIVED;

    /* set frame recieve time, for statistic delay */
    pFb->OptmFrameBuf[pFb->In].u64RecvTime = sched_clock();

    //DEBUG_PRINTK("A PTS=0x%x, ", (HI_U32)pFb->OptmFrameBuf[pFb->In].VdecFrameInfo.u32Pts);

    pFb->In = (pFb->In + 1) % OPTM_FFB_MAX_FRAME_NUM;


    return;
}

#ifdef VDP_USE_DEI_FB_OPTIMIZE
HI_BOOL OPTM_FB_ConfigGetNext(OPTM_FB_S * pFb, OPTM_AA_DEI_MODE_E enDEIMode)
{
    /* PREV NULL */
    if ((OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Previous].enState)
     || (FRAME_SOURCE_STILL == pFb->OptmFrameBuf[pFb->Previous].enFrameSrc)
     || (FRAME_SOURCE_IFRAME == pFb->OptmFrameBuf[pFb->Previous].enFrameSrc))
    {
        pFb->pNextFrame = HI_NULL;
        pFb->pPreFrame = HI_NULL;

        /* PREV NULL, CURT RECEIVED: the 1st frame */
        if (OPTM_FRAME_NOUSED != pFb->OptmFrameBuf[pFb->Current].enState)
        {
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);

            /* Before play normally, release to the frame before 'Current' */
            pFb->SafeRelease = pFb->Current;
            return HI_FALSE;
        }
        /* PREV NULL, CURT NULL: before the 1st frame, never come here */
        else
        {
            return HI_TRUE;
        }
    }
    /* PREV OUTPUTED */
    /* Quick output mode or don't do DEI */
    else if (pFb->bQuickOutputMode || OPTM_AA_DEI_NONE == enDEIMode)
    {
        pFb->pNextFrame = HI_NULL;
        pFb->pPreFrame = HI_NULL;

        /* PREV RECEIVED, CURT NULL: unload */
        if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Current].enState)
        {
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
            pFb->SafeRelease = pFb->Previous;

            pFb->UnloadFrame++;
            return HI_TRUE;
        }
        /* PREV RECEIVED, CURT RECEIVED: playing */
        else
        {
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);
            pFb->SafeRelease = pFb->Current;
            return HI_FALSE;
        }
    }
    else if (OPTM_AA_DEI_3FIELD == enDEIMode)
    {
        /* 3 Field DEI NEXT always NULL */
        pFb->pNextFrame = HI_NULL;

        /* PREV RECEIVED, CURT NULL: unload */
        if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Current].enState)
        {
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Previous]);

            /* PREV_PREV NULL, PREV RECEIVED, CURT NULL, : the 2nd frame unload */
            if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->PrePrevious].enState)
            {
                pFb->pPreFrame = HI_NULL;

               /* Before play normally, release to the frame before 'Previous' */
               pFb->SafeRelease = pFb->Previous;
            }
            /* PREV_PREV RECEIVED, PREV RECEIVED, CURT NULL, : playing unload */
            else
            {
                pFb->pPreFrame = &(pFb->OptmFrameBuf[pFb->PrePrevious]);
                pFb->SafeRelease = pFb->PrePrevious;
            }

            pFb->UnloadFrame++;
            return HI_TRUE;
        }
        /* PREV RECEIVED, CURT RECEIVED: playing */
        else
        {
            pFb->pPreFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);
            pFb->SafeRelease = pFb->Previous;
            return HI_FALSE;
        }
    }
    else
    {
        /* PREV RECEIVED, CURT NULL, : the 2nd frame unload */
        if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Current].enState)
        {
            pFb->pPreFrame = HI_NULL;
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
            pFb->pNextFrame = HI_NULL;

            pFb->UnloadFrame++;

            /* Before play normally, release to the frame before 'Previous' */
            pFb->SafeRelease = pFb->Previous;
            return HI_TRUE;
        }
        else
        {
            /* PREV RECEIVED, CURT RECEIVED, NEXT NULL */
            if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Next].enState)
            {
                /* PREV_PREV NULL, PREV RECEIVED, CURT RECEIVED, NEXT NULL: the 3rd frame unload */
                if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->PrePrevious].enState)
                {
                    pFb->pPreFrame = HI_NULL;
                    pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
                    pFb->pNextFrame = HI_NULL;

                    pFb->UnloadFrame++;

                    /* Before play normally, release to the frame before 'Previous' */
                    pFb->SafeRelease = pFb->Previous;
                    return HI_TRUE;
                }
                /* PREV_PREV RECEIVED, PREV RECEIVED, CURT RECEIVED, NEXT NULL: playing unload */
                else
                {
                    pFb->pPreFrame = &(pFb->OptmFrameBuf[pFb->PrePrevious]);
                    pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
                    pFb->pNextFrame = &(pFb->OptmFrameBuf[pFb->Current]);

                    pFb->UnloadFrame++;

                    pFb->SafeRelease = pFb->PrePrevious;
                    return HI_TRUE;
                }
            }
            /* PREV RECEIVED, CURT RECEIVED, NEXT RECEIVED: playing */
            else
            {
                pFb->pPreFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
                pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);
                pFb->pNextFrame = &(pFb->OptmFrameBuf[pFb->Next]);
                pFb->SafeRelease = pFb->Previous;
                return HI_FALSE;
            }
        }
    }

    return HI_TRUE;
}

#else

/* return value is the flag for under-flow,
 * where TURE indicates under-flow.
 */
HI_BOOL OPTM_FB_ConfigGetNext(OPTM_FB_S *pFb)
{
    /* CNComment: 后一帧为空 */
    if ((OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Next].enState)
      ||(pFb->Next == pFb->Release)
       )
    {
        /* first frame play first */
        if (OPTM_FRAME_NOUSED != pFb->OptmFrameBuf[pFb->Current].enState)
        {
            /* no data in previous frame */
            /* CNComment: 当前帧不为空，前一帧为空，后一帧为空，视为第一帧，输出当前帧，不欠载 */
            if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Previous].enState)
            {
                pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);
                pFb->pNextFrame = HI_NULL;
                pFb->pPreFrame = HI_NULL;

                return HI_FALSE;
            }
            /* previous frame is last frame in last channel */
            /* CNComment: 当前帧不为空，前一帧为静帧或I帧，后一帧为空，输出当前帧，不欠载 */
            else
            {
                if ((FRAME_SOURCE_STILL == pFb->OptmFrameBuf[pFb->Previous].enFrameSrc)
                  ||(FRAME_SOURCE_IFRAME == pFb->OptmFrameBuf[pFb->Previous].enFrameSrc)
                   )
                {
                    pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);
                    pFb->pNextFrame = HI_NULL;
                    pFb->pPreFrame = HI_NULL;

                    return HI_FALSE;
                }
            }
        }

        /* under-flow after display of the first frame, or after non-diemod display */
        /* CNComment: 当前帧为空，前一帧不为空，后一帧为空，输出前一帧，欠载 */
        if ((OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Current].enState)
          &&(OPTM_FRAME_NOUSED != pFb->OptmFrameBuf[pFb->Previous].enState)
           )
        {
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
            pFb->pNextFrame = HI_NULL;
            pFb->pPreFrame = HI_NULL;

            pFb->UnloadFrame++;

            return HI_TRUE;
        }

        /* CNComment: 非快速输出模式 */
        if (pFb->bQuickOutputMode != HI_TRUE)
        {
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
            pFb->pNextFrame = &(pFb->OptmFrameBuf[pFb->Current]);

            /* CNComment: 非快速输出模式，当前帧不为空，前一帧不为空，后一帧为空，输出前一帧，欠载 */
            if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->PrePrevious].enState)
            {
                pFb->pPreFrame = HI_NULL;
            }
            else
            {
                pFb->pPreFrame = &(pFb->OptmFrameBuf[pFb->PrePrevious]);
            }

            pFb->UnloadFrame++;

            return HI_TRUE;
        }
        else
        {
            /* CNComment: 快速输出模式，不做DEI，只配当前帧 */
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);
            pFb->pNextFrame = HI_NULL;
            pFb->pPreFrame = HI_NULL;

            return HI_FALSE;
        }
    }
    else
    {
        /* CNComment: 非快速输出模式 */
        if (pFb->bQuickOutputMode != HI_TRUE)
        {
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);
            pFb->pNextFrame = &(pFb->OptmFrameBuf[pFb->Next]);

            if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Previous].enState)
            {
                /* CNComment: 非快速输出模式，前一帧已释放，只有中后帧 */
                pFb->pPreFrame = HI_NULL;
            }
            else
            {
                /* CNComment: 非快速输出模式，前中后三帧都有 */
                pFb->pPreFrame = &(pFb->OptmFrameBuf[pFb->Previous]);
            }
        }
        else
        {
            /* CNComment: 快速输出模式，不做DEI，只配当前帧 */
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->Current]);
            pFb->pNextFrame = HI_NULL;
            pFb->pPreFrame = HI_NULL;
        }

        return HI_FALSE;
    }
}
#endif

HI_VOID OPTM_FB_ConfigPutNext(OPTM_FB_S *pFb, HI_BOOL bForse)
{
    /* VDP_USE_DEI_FB_OPTIMIZE:
       If DO NOT DO DEI, vo only hold 1 frame, [Current] may be equal to [In], it's no problem,
       so, need not judge here.
     */
#ifndef VDP_USE_DEI_FB_OPTIMIZE
    if (pFb->Current != pFb->In)
#endif
    {
        pFb->PrePrevious = pFb->Previous;
        pFb->Previous = pFb->Current;
        pFb->Current = pFb->Next;
        pFb->Next = (pFb->Next + 1) % OPTM_FFB_MAX_FRAME_NUM;

        if (!bForse)
        {
            pFb->LstLstConfig =  pFb->LstConfig;
            pFb->LstConfig = pFb->Previous;
        }
        else
        {
            /* jump over */
            pFb->pCrtFrame->enFrameState = OPTM_PLAY_STATE_JUMP;

            pFb->pCrtFrame->u32F_NdPlayTime = 0;
            pFb->pCrtFrame->u32T_NdPlayTime = 0;
            pFb->pCrtFrame->u32B_NdPlayTime = 0;
        }

        pFb->ConfigFrame++;
    }

    return;
}

HI_VOID OPTM_FB_ConfigUnload(OPTM_FB_S *pFb)
{
    pFb->LstLstConfig =  pFb->PrePrevious;
    pFb->LstConfig = pFb->Previous;

    return;
}

HI_S32 OPTM_FB_GetDropFrame(OPTM_FB_S *pFb, OPTM_FRAME_S **pDrop)
{
    HI_S32 i;
    if (pFb->OptmFrameBuf[pFb->Drop].enState == OPTM_FRAME_NOUSED)
        return HI_FAILURE;
    if (pFb->Drop == pFb->Next)
        return HI_FAILURE;
    else {
            for (i = 5; i >= 0; i--)
            {
                if (pFb->OptmFrameBuf[pFb->Drop].VdecFrameInfo.u32YAddr
                        == pFb->stcfgF[i].u32YAddr)
                    break;
            }
            if (i >= 0)
            {
                *pDrop = HI_NULL;
            }
            else
            {
                *pDrop = &(pFb->OptmFrameBuf[pFb->Drop]);
            }

            if ( i == 4)
                return HI_FAILURE;
            else
                return HI_SUCCESS;
    }
}

HI_VOID OPTM_FB_PutDropFrame(OPTM_FB_S *pFb)
{
    pFb->Drop ++;
    pFb->Drop = pFb->Drop % OPTM_FFB_MAX_FRAME_NUM;
}

HI_S32 OPTM_FB_ReleaseGetNext(OPTM_FB_S *pFb, OPTM_FRAME_S **pReleaseFrame)
{
#ifdef VDP_USE_DEI_FB_OPTIMIZE
    if (pFb->Release == pFb->SafeRelease)
    {
        return HI_FAILURE;
    }
    else
    {
        *pReleaseFrame = &(pFb->OptmFrameBuf[pFb->Release]);
        return HI_SUCCESS;
    }

#else
    HI_U32   Release;

	/* Release = (pFb->Release + 1) % OPTM_FFB_MAX_FRAME_NUM; */
	Release = pFb->Release;

	if (Release == pFb->LstLstConfig)
	{
		return HI_FAILURE;
	}
	else
	{
		*pReleaseFrame = &(pFb->OptmFrameBuf[pFb->Release]);
        return HI_SUCCESS;
	}
#endif
}

HI_VOID OPTM_FB_ReleasePutNext(OPTM_FB_S *pFb)
{
    pFb->OptmFrameBuf[pFb->Release].enState = OPTM_FRAME_NOUSED;
    pFb->Release++;
    pFb->Release = pFb->Release % OPTM_FFB_MAX_FRAME_NUM;
    pFb->ReleaseFrame++;
    pFb->Drop = pFb->Release;

    return;
}

OPTM_FRAME_S *OPTM_FB_GetCurrent(OPTM_FB_S *pFb)
{
    /* under-flow after display of the first frame */
    if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->Current].enState)
    {
        if (pFb->OptmFrameBuf[pFb->Previous].enState != OPTM_FRAME_NOUSED)
        {
            return (&pFb->OptmFrameBuf[pFb->Previous]);
        }
        else
        {
            return HI_NULL;
        }
    }
    else
    {
        return (&pFb->OptmFrameBuf[pFb->Current]);
    }
}

OPTM_FRAME_S *OPTM_FB_GetPrePrevious(OPTM_FB_S *pFb)
{
    /* If [PrePrevious] is STILL/IFRAME, this frame DO NOT DO DEI and release it ASAP.
       So, return NULL here.
     */
    if ((OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->PrePrevious].enState)
     || (FRAME_SOURCE_STILL == pFb->OptmFrameBuf[pFb->PrePrevious].enFrameSrc)
     || (FRAME_SOURCE_IFRAME == pFb->OptmFrameBuf[pFb->PrePrevious].enFrameSrc))
    {
        return HI_NULL;
    }
    else
    {
        return (&pFb->OptmFrameBuf[pFb->PrePrevious]);
    }
}

OPTM_FRAME_S *OPTM_FB_GetLstConfig(OPTM_FB_S *pFb)
{
    if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[pFb->LstConfig].enState)
    {
        return HI_NULL;
    }
    else
    {
        return (&pFb->OptmFrameBuf[pFb->LstConfig]);
    }
}

OPTM_FRAME_S *OPTM_FB_GetSpecify(OPTM_FB_S *pFb, HI_U32 Specify)
{
    if (OPTM_FRAME_NOUSED == pFb->OptmFrameBuf[Specify].enState)
    {
        return HI_NULL;
    }
    else
    {
        return (&pFb->OptmFrameBuf[Specify]);
    }
}




/*******************************************************
 *           switch control of display status          *
 *   HI_S32 s32DetPro -- 0, i; 1, p; -1, unknown       *
 *   HI_S32 s32DetTB  -- 0, bt; 1, tb; -1, unknown     *
********************************************************/
HI_VOID OPTM_FB_GetDispField2(OPTM_FRAME_S *pCrtFrame, HI_S32 CrtFieldFlag, HI_BOOL bProgressive, HI_BOOL bTopFirst)
{
    HI_UNF_VO_FRAMEINFO_S  *pCrtVdecFrame;

    pCrtVdecFrame = &(pCrtFrame->VdecFrameInfo);

    if (HI_UNF_VIDEO_FIELD_ALL == pCrtVdecFrame->enFieldMode)
    {
        /* sample image progressively */
        if (bProgressive)
        {
            pCrtFrame->u32CurFld  = 3;
            pCrtFrame->u32DoneFld = 3;
        }
        /* sample image interlacedly */
        else
        {
            /* current sequence is T*/
            if (0 == CrtFieldFlag)
            {
                /* never played or only top field was displayed; display top field */
                if ((0 == pCrtFrame->u32DoneFld)
                  ||(1 == pCrtFrame->u32DoneFld)
                   )
                {
                    pCrtFrame->u32CurFld = 1;
                    pCrtFrame->u32DoneFld |= 1;

                    /* bottom field first, jump over bottom field */
                    if (!bTopFirst)
                    {
                        pCrtFrame->u32DoneFld |= 3;
                    }
                }
                /* bottom field was played */
                else
                {
                    /* bottom field first, display top field */
                    if (!bTopFirst)
                    {
                        pCrtFrame->u32CurFld   = 1;
                        pCrtFrame->u32DoneFld |= 1;
                    }
                    else
                    {
                        pCrtFrame->u32CurFld   = 2;
                        pCrtFrame->u32DoneFld |= 3;
                    }
                }
            }
            /* current sequence is B */
            else if (1 == CrtFieldFlag)
            {
				/* never played or only bottom field was displayed; display bottom field */
                if ((0 == pCrtFrame->u32DoneFld)
                  ||(2 == pCrtFrame->u32DoneFld)
                   )
                {
                    pCrtFrame->u32CurFld = 2;
                    pCrtFrame->u32DoneFld |= 2;

					/* top field first, jump over top field */
                    if (bTopFirst)
                    {
                        pCrtFrame->u32DoneFld |= 3;
                    }
                }
                /* top field was played */
                else
                {
                    /* top field first, display bottom field */
                    if (bTopFirst)
                    {
                        pCrtFrame->u32CurFld = 2;
                        pCrtFrame->u32DoneFld |= 2;
                    }
                    /* bottom field first, repeate top field and jump over bottom field */
                    else
                    {
                        pCrtFrame->u32CurFld = 1;
                        pCrtFrame->u32DoneFld |= 3;
                    }
                }
            }
            /* current sequence is F */
            else
            {
                /* never played, play in field sequence */
                if (0 == pCrtFrame->u32DoneFld)
                {
                    if (bTopFirst)
                    {
                        pCrtFrame->u32CurFld = 1;
                        pCrtFrame->u32DoneFld |= 1;
                    }
                    else
                    {
                        pCrtFrame->u32CurFld = 2;
                        pCrtFrame->u32DoneFld |= 2;
                    }
                }
                /* only top field was played */
                else if (1 == pCrtFrame->u32DoneFld)
                {
                    /* top field first, play bottom field */
                    if (bTopFirst)
                    {
                        pCrtFrame->u32CurFld = 2;
                        pCrtFrame->u32DoneFld |= 2;
                    }
                    /* bottom field first, play top field and jump over bottom field */
                    else
                    {
                        pCrtFrame->u32CurFld = 1;
                        pCrtFrame->u32DoneFld |= 3;
                    }
                }
                /* only bottom field was played */
                else
                {
					/* top field first, play bottom field and jump over top field */
                    if (bTopFirst)
                    {
                        pCrtFrame->u32CurFld = 2;
                        pCrtFrame->u32DoneFld |= 3;
                    }
                    /* bottom field first, play top field */
                    else
                    {
                        pCrtFrame->u32CurFld = 1;
                        pCrtFrame->u32DoneFld |= 1;
                    }
                }
            }
        }
    }
    else
    {
        if (HI_UNF_VIDEO_FIELD_TOP == pCrtVdecFrame->enFieldMode)
        {
            pCrtFrame->u32CurFld = 1;
        }
        else
        {
            pCrtFrame->u32CurFld = 2;
        }

        if (0 == pCrtFrame->u32DoneFld)
        {
            pCrtFrame->u32DoneFld = pCrtFrame->u32CurFld;
        }
        else
        {
            pCrtFrame->u32DoneFld |= 3;
        }
    }

    return;
}


/*******************************************************
 *           switch control of display status          *
 *******************************************************/
HI_VOID OPTM_FB_ResetDispFieldInfo(OPTM_FRAME_S *pCrtFrame, HI_BOOL bProgressive)
{
    HI_UNF_VO_FRAMEINFO_S  *pCrtVdecFrame;

    pCrtVdecFrame = &(pCrtFrame->VdecFrameInfo);

    if (HI_UNF_VIDEO_FIELD_ALL == pCrtVdecFrame->enFieldMode)
    {
        /* sample image progressively */
        if (bProgressive)
        {
            pCrtFrame->u32F_NdPlayTime = 1;
        }
        /*  sample image interlacedly */
        else
        {
            pCrtFrame->u32T_NdPlayTime = 1;
            pCrtFrame->u32B_NdPlayTime = 1;
        }
    }
    else if (HI_UNF_VIDEO_FIELD_TOP == pCrtVdecFrame->enFieldMode)
    {
        pCrtFrame->u32T_NdPlayTime = 1;
    }
    else
    {
        pCrtFrame->u32B_NdPlayTime = 1;
    }

    return;
}

HI_S32 OPTM_FB_GetDropFieldAtStart(OPTM_FRAME_S *pCrtFrame, HI_BOOL bProgressive, HI_BOOL bTopFirst)
{
    HI_UNF_VO_FRAMEINFO_S  *pCrtVdecFrame;

    pCrtVdecFrame = &(pCrtFrame->VdecFrameInfo);

    /* only new frame need processing */
    if (  (OPTM_PLAY_STATE_READY != pCrtFrame->enFrameState)
        &&(OPTM_PLAY_STATE_JUMP  != pCrtFrame->enFrameState))
    {
        return 0;
    }

    if ( (HI_UNF_VIDEO_FIELD_ALL == pCrtVdecFrame->enFieldMode) && (!bProgressive))
    {
        /* sample image interlacedly */
        /* current field sequence is TB */
        if (HI_TRUE == bTopFirst)
        {
            /* the last field is not played */
            if ( (pCrtFrame->u32T_RlPlayTime == 0)
                && ((pCrtFrame->u32CurDispFld == 2)))
            {
                return 1;
            }
        }
        else
        /* current field sequence is BT */
        {
            /* the last field is not played */
            if (  (pCrtFrame->u32B_RlPlayTime == 0)
                &&(pCrtFrame->u32CurDispFld == 1))
            {
                return 1;
            }
        }
    }

    return 0;
}

HI_S32 OPTM_FB_GetDropFieldAtEnd(OPTM_FRAME_S *pCrtFrame, HI_BOOL bProgressive, HI_BOOL bTopFirst)
{
    HI_UNF_VO_FRAMEINFO_S  *pCrtVdecFrame;

    pCrtVdecFrame = &(pCrtFrame->VdecFrameInfo);

    if (OPTM_PLAY_STATE_PLAY_OVER != pCrtFrame->enFrameState)
    {
        return 0;
    }

    if ( (HI_UNF_VIDEO_FIELD_ALL == pCrtVdecFrame->enFieldMode) && (!bProgressive))
    {
        /*  sample image interlacedly */
        /* current field sequence is TB */
        if (HI_TRUE == bTopFirst)
        {
            /* the last field is not played */
            if (pCrtFrame->u32B_RlPlayTime == 0)
            {
                return 1;
            }
        }
        else
        /* current field sequence is BT */
        {
            /* the last field is not played */
            if (pCrtFrame->u32T_RlPlayTime == 0)
            {
                return 1;
            }
        }
    }

    return 0;
}

HI_VOID OPTM_FB_SearchDispField(OPTM_FRAME_S *pCrtFrame, HI_S32 CrtFieldFlag, HI_BOOL bProgressive, HI_BOOL bTopFirst, HI_BOOL *pbRepFlag)
{
    HI_UNF_VO_FRAMEINFO_S  *pCrtVdecFrame;

    pCrtVdecFrame = &(pCrtFrame->VdecFrameInfo);

    if (HI_UNF_VIDEO_FIELD_ALL == pCrtVdecFrame->enFieldMode)
    {
        /* sample image progressively */
        if (bProgressive)
        {
            pCrtFrame->u32CurDispFld = 3;
        }
        /*  sample image interlacedly */
        else
        {
            /* current field sequence is T */
            if (0 == CrtFieldFlag)
            {
                /* never played or only top field was played, play top field */
                if (pCrtFrame->u32B_RlPlayTime == 0)
                {
                    pCrtFrame->u32CurDispFld = 1;

                    /*  bottom field first, jump over bottom field */
                    if (!bTopFirst)
                    {
                        pCrtFrame->u32B_RlPlayTime = pCrtFrame->u32B_NdPlayTime;
                    }
                }
                /*  bottom field was played */
                else
                {
                    /*  bottom field first, play top field */
                    if (!bTopFirst)
                    {
                        pCrtFrame->u32CurDispFld = 1;
                        pCrtFrame->u32B_RlPlayTime = pCrtFrame->u32B_NdPlayTime;
                    }
                    else
                    {
                        pCrtFrame->u32CurDispFld = 2;
                    }
                }
            }
            /* current field sequence is B */
            else if (1 == CrtFieldFlag)
            {
                /* never played or only bottom field was played, play bottom field */
                if (pCrtFrame->u32T_RlPlayTime == 0)
                {
                    pCrtFrame->u32CurDispFld = 2;

                    /*  top field first, jump over top field */
                    if (bTopFirst)
                    {
                        pCrtFrame->u32T_RlPlayTime = pCrtFrame->u32T_NdPlayTime;
                    }
                }
                /*  top field was played */
                else
                {
                    /*  top field first, play bottom field */
                    if (bTopFirst)
                    {
                        pCrtFrame->u32CurDispFld = 2;
                        pCrtFrame->u32T_RlPlayTime = pCrtFrame->u32T_NdPlayTime;
                    }
                    /*  bottom field first, repeat top field */
                    else
                    {
                        pCrtFrame->u32CurDispFld = 1;
                    }
                }
            }
            /* current field sequence is F */
            else
            {
                /* current field sequence is TB */
                if (HI_TRUE == bTopFirst)
                {
                    /*  top field completed or only bottom field, play top field */
                    if (pCrtFrame->u32T_RlPlayTime >= pCrtFrame->u32T_NdPlayTime)
                    {
                        /* play bottom field */
                        pCrtFrame->u32CurDispFld = 2;
                    }
                    else
                    {
                        /* play top field */
                        pCrtFrame->u32CurDispFld = 1;
                    }
                }
                else
                /* current field sequence is BT */
                {
                    /*  bottom field was played, play top field */
                    if (pCrtFrame->u32B_RlPlayTime >= pCrtFrame->u32B_NdPlayTime)
                    {
                        /* play top field */
                        pCrtFrame->u32CurDispFld = 1;
                    }
                    else
                    {
                        /* play bottom field */
                        pCrtFrame->u32CurDispFld = 2;
                    }
                }
            }
        }
    }
    else if (HI_UNF_VIDEO_FIELD_TOP == pCrtVdecFrame->enFieldMode)
    {
        /* play top field */
        pCrtFrame->u32CurDispFld = 1;
    }
    else
    {
        /* play bottom field */
        pCrtFrame->u32CurDispFld = 2;
    }

    if (HI_NULL != pbRepFlag)
    {
        if (pCrtFrame->u32CurDispFld == 1)
        {
            if (pCrtFrame->u32T_RlPlayTime > 0)
            {
                *pbRepFlag = HI_TRUE;
            }
        }
        else if (pCrtFrame->u32CurDispFld == 2)
        {
            if (pCrtFrame->u32B_RlPlayTime > 0)
            {
                *pbRepFlag = HI_TRUE;
            }
        }
        else
        {
            if (pCrtFrame->u32F_RlPlayTime > 0)
            {
                *pbRepFlag = HI_TRUE;
            }
        }
    }

    return;
}


HI_VOID OPTM_FB_GetDispField(OPTM_FRAME_S *pCrtFrame, HI_BOOL bProgressive, HI_BOOL bTopFirst, HI_BOOL *pbRepFlag)
{
    HI_UNF_VO_FRAMEINFO_S  *pCrtVdecFrame;

    pCrtVdecFrame = &(pCrtFrame->VdecFrameInfo);

    *pbRepFlag = HI_FALSE;

    if (HI_UNF_VIDEO_FIELD_ALL == pCrtVdecFrame->enFieldMode)
    {
        /* sample image progressively */
        if (bProgressive)
        {
            pCrtFrame->u32CurDispFld = 3;
            if (pCrtFrame->u32F_RlPlayTime > 0)
            {
                *pbRepFlag = HI_TRUE;
            }
        }
        /* sample image interlacedly */
        else
        {
            /* current field sequence is TB */
            if (HI_TRUE == bTopFirst)
            {
                /*  top field is over or only bottom field data, play top field */
                if (pCrtFrame->u32T_RlPlayTime >= pCrtFrame->u32T_NdPlayTime)
                {
                    /* play bottom field */
                    pCrtFrame->u32CurDispFld = 2;
                    if (pCrtFrame->u32B_RlPlayTime > 0)
                    {
                        *pbRepFlag = HI_TRUE;
                    }
                }
                else
                {
                    /* play top field */
                    pCrtFrame->u32CurDispFld = 1;
                    if (pCrtFrame->u32T_RlPlayTime > 0)
                    {
                        *pbRepFlag = HI_TRUE;
                    }
                }
            }
            else
            /* current field sequence is BT */
            {
                /*  bottom field was over, play top field */
                if (pCrtFrame->u32B_RlPlayTime >= pCrtFrame->u32B_NdPlayTime)
                {
                    /* play top field */
                    pCrtFrame->u32CurDispFld = 1;
                    if (pCrtFrame->u32T_RlPlayTime > 0)
                    {
                        *pbRepFlag = HI_TRUE;
                    }
                }
                else
                {
                    /* play bottom field */
                    pCrtFrame->u32CurDispFld = 2;
                    if (pCrtFrame->u32B_RlPlayTime > 0)
                    {
                        *pbRepFlag = HI_TRUE;
                    }
                }
            }
        }
    }
    else if (HI_UNF_VIDEO_FIELD_TOP == pCrtVdecFrame->enFieldMode)
    {
        /* play top field */
        pCrtFrame->u32CurDispFld = 1;
        if (pCrtFrame->u32T_RlPlayTime > 0)
        {
            *pbRepFlag = HI_TRUE;
        }
    }
    else
    {
        /* play bottom field */
        pCrtFrame->u32CurDispFld = 2;
        if (pCrtFrame->u32B_RlPlayTime > 0)
        {
            *pbRepFlag = HI_TRUE;
        }
    }

    return;
}

HI_VOID OPTM_FB_PutDispField(OPTM_FRAME_S *pCrtFrame, HI_BOOL bTopFirst)
{
    if (pCrtFrame->enFrameState == OPTM_PLAY_STATE_PLAY_OVER)
    {
        return;
    }

    if (pCrtFrame->enFrameState == OPTM_PLAY_STATE_JUMP)
    {
        pCrtFrame->u32F_NdPlayTime = 0;
        pCrtFrame->u32T_NdPlayTime = 0;
        pCrtFrame->u32B_NdPlayTime = 0;
    }

    pCrtFrame->enFrameState = OPTM_PLAY_STATE_PLAYING;

    if (pCrtFrame->u32CurDispFld == 3)
    {
        pCrtFrame->u32F_RlPlayTime++;

        if (pCrtFrame->u32F_RlPlayTime >= pCrtFrame->u32F_NdPlayTime)
        {
            pCrtFrame->enFrameState = OPTM_PLAY_STATE_PLAY_OVER;
        }
    }
    else
    {
        if (pCrtFrame->u32CurDispFld == 1)
        {
            pCrtFrame->u32T_RlPlayTime++;
        }
        else if (pCrtFrame->u32CurDispFld == 2)
        {
            pCrtFrame->u32B_RlPlayTime++;
        }

        if (  ((bTopFirst == HI_TRUE)  &&(pCrtFrame->u32B_RlPlayTime >= pCrtFrame->u32B_NdPlayTime))
            ||((bTopFirst == HI_FALSE) &&(pCrtFrame->u32T_RlPlayTime >= pCrtFrame->u32T_NdPlayTime))
           )
        {
            pCrtFrame->enFrameState = OPTM_PLAY_STATE_PLAY_OVER;
        }
    }

    return;
}


/* Sync handle */
HI_VOID OPTM_FB_SyncHandle(OPTM_FB_S *pFb, SYNC_VID_OPT_S *pstVidOpt)
{
    if (SYNC_PROC_PLAY == pstVidOpt->SyncProc)
    {
        pFb->SyncPlay++;
    }
    else if (SYNC_PROC_TPLAY == pstVidOpt->SyncProc)
    {
        if (HI_TRUE == pFb->bProgressive)
        {
            pFb->pCrtFrame->u32F_NdPlayTime = pstVidOpt->Repeat;
        }
        else
        {
            if (HI_UNF_VIDEO_FIELD_ALL == pFb->pCrtFrame->VdecFrameInfo.enFieldMode)
            {
                if (pFb->bTopFirst == HI_TRUE)
                {
                    pFb->pCrtFrame->u32T_NdPlayTime = 0;
                    pFb->pCrtFrame->u32B_NdPlayTime = pstVidOpt->Repeat;
                }
                else
                {
                    pFb->pCrtFrame->u32B_NdPlayTime = 0;
                    pFb->pCrtFrame->u32T_NdPlayTime = pstVidOpt->Repeat;
                }
            }
            else if (HI_UNF_VIDEO_FIELD_TOP == pFb->pCrtFrame->VdecFrameInfo.enFieldMode)
            {
                pFb->pCrtFrame->u32T_NdPlayTime = pstVidOpt->Repeat;
            }
            else
            {
                pFb->pCrtFrame->u32B_NdPlayTime = pstVidOpt->Repeat;
            }
        }

        pFb->SyncTPlay++;
    }
    else if (SYNC_PROC_REPEAT == pstVidOpt->SyncProc)
    {
        /* If the first frame sync result is repeat, modify it to play. Reduce the complexity of the frame storage management */
        if ((pFb->OptmFrameBuf[pFb->LstConfig].bNeedRelease) && ((FRAME_SOURCE_STILL == pFb->OptmFrameBuf[pFb->LstConfig].enFrameSrc) || (FRAME_SOURCE_IFRAME == pFb->OptmFrameBuf[pFb->LstConfig].enFrameSrc)))
        {
            pstVidOpt->SyncProc = SYNC_PROC_PLAY;
            return;
        }

        pFb->pNextFrame = pFb->pCrtFrame;

        /* pWinFrameBuf->pCrtFrame = pWinFrameBuf->pPreFrame may cause problem while StillFrame reset window,use LstConfig instead.
         * Otherwise it may fail to config the first received frame(pPreFrame is null) and make the StillFrame shake under interlace-output format.
        */
        if (OPTM_FRAME_NOUSED != pFb->OptmFrameBuf[pFb->LstConfig].enState)
        {
            pFb->pCrtFrame = &(pFb->OptmFrameBuf[pFb->LstConfig]);
        }
        else
        {
            pFb->pCrtFrame = HI_NULL;
        }
        pFb->pPreFrame = OPTM_FB_GetPrePrevious(pFb);

#ifdef VDP_USE_DEI_FB_OPTIMIZE
        /* VDP_USE_DEI_FB_OPTIMIZE:
		   If [PrePrevious] is NULL/STILL/IFRAME, this frame should be released ASAP, don't move 'SafeRelease' here,
           else, move 'SafeRelease' to 'PrePrevious'
         */
        if (HI_NULL != pFb->pPreFrame)
        {
            pFb->SafeRelease = pFb->PrePrevious;
        }
#endif

        pFb->SyncRepeat++;
    }
    else if (SYNC_PROC_DISCARD == pstVidOpt->SyncProc)
    {
        OPTM_FB_ConfigPutNext(pFb, HI_TRUE);
        pFb->SyncDiscard++;
    }
}


static OPTM_FB_LOCAL_F_S s_stBlackFrame;
static OPTM_FB_LOCAL_F_S s_stBgcFrame;

/* create black frame */
HI_S32 OPTM_CreateBlackFrame(HI_VOID)
{
    HI_UNF_VO_FRAMEINFO_S *pstFrame;
    HI_U32  w, h;
    //HI_U32 offset;
    HI_S32 nRet;

    w = 64;
    h = 64;
    //l_DsuBufSize = ( w * h * 3) >> 1;
    //offset       = OPTM_BLACK_BUFF_OFFSET_SIZE;

    s_stBlackFrame.stMMZBuf.u32StartVirAddr = 0;

    /* get physical memory */
    nRet = HI_DRV_MMZ_AllocAndMap("VoBlackFrame", HI_NULL, 2 * OPTM_BLACK_BUFF_SIZE_4K, 0, &(s_stBlackFrame.stMMZBuf));
    if (nRet != 0)
    {
        HI_PRINT("VO Get BF_buf failed\n");
        return HI_FAILURE;
    }

    memset(&(s_stBlackFrame.stFrame), 0, sizeof(OPTM_FRAME_S));
	memset(&(s_stBgcFrame), 0, sizeof(OPTM_FB_LOCAL_F_S));

    /* initialize frame information */
    pstFrame = &(s_stBlackFrame.stFrame.VdecFrameInfo);

    pstFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
    pstFrame->enFieldMode  = HI_UNF_VIDEO_FIELD_ALL;
    pstFrame->bTopFieldFirst = HI_TRUE;
    pstFrame->enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
    pstFrame->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
    pstFrame->u32Width  = w;
    pstFrame->u32Height = h;
    pstFrame->u32DisplayCenterX = w/2;
    pstFrame->u32DisplayCenterY = h/2;
    pstFrame->u32DisplayWidth  = w;
    pstFrame->u32DisplayHeight = h;
    pstFrame->u32YAddr  = s_stBlackFrame.stMMZBuf.u32StartPhyAddr;
    pstFrame->u32YStride = w;

    pstFrame->u32CAddr  = pstFrame->u32YAddr + w*h;
    pstFrame->u32CStride = w;
    pstFrame->u32Repeat = 1;
    pstFrame->u32Pts    = 0xfffffffful;

    /* image storage information */
    s_stBlackFrame.stFrame.bNeedRelease = HI_FALSE; /* whether there are frames to be released */

    s_stBlackFrame.stFrame.enFrameSrc = FRAME_SOURCE_STILL;

    /* assign Y component */
    memset((HI_VOID *)(s_stBlackFrame.stMMZBuf.u32StartVirAddr), 0x10, w*h);

    /* assign C component */
    memset((HI_VOID *)(s_stBlackFrame.stMMZBuf.u32StartVirAddr + w*h), 0x80, (w*h)>>1);

    s_stBgcFrame.stMMZBuf.u32StartVirAddr = 0;

    /* get physical memory */
    nRet = HI_DRV_MMZ_AllocAndMap("VobgcFrame", HI_NULL,  2 * OPTM_BLACK_BUFF_SIZE_4K, 0, &(s_stBgcFrame.stMMZBuf));
    if (nRet != 0)
    {
        HI_PRINT("VO Get BF_buf failed\n");
        return HI_FAILURE;
    }

#if 0
	/* bgc addr move offset */
	s_stBgcFrame.stMMZBuf.u32StartPhyAddr = s_stBlackFrame.stMMZBuf.u32StartPhyAddr + offset;
	s_stBgcFrame.stMMZBuf.u32StartVirAddr = s_stBlackFrame.stMMZBuf.u32StartVirAddr + offset;
	s_stBgcFrame.stMMZBuf.u32Size         = s_stBlackFrame.stMMZBuf.u32Size - offset;
#endif

	/* set bgc frame information */
 	w = 64;
    h = 64;

	pstFrame = &(s_stBgcFrame.stFrame.VdecFrameInfo);

    pstFrame->enSampleType = HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE;
    pstFrame->enFieldMode  = HI_UNF_VIDEO_FIELD_ALL;
    pstFrame->bTopFieldFirst = HI_TRUE;
    pstFrame->enAspectRatio = HI_UNF_ASPECT_RATIO_4TO3;
    pstFrame->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
    pstFrame->u32Width  = w;
    pstFrame->u32Height = h;
    pstFrame->u32DisplayCenterX = w/2;
    pstFrame->u32DisplayCenterY = h/2;
    pstFrame->u32DisplayWidth  = w;
    pstFrame->u32DisplayHeight = h;
    pstFrame->u32YAddr  = s_stBgcFrame.stMMZBuf.u32StartPhyAddr;
    pstFrame->u32YStride = w;

        pstFrame->u32CompressFlag = 0;
    pstFrame->u32CAddr  = pstFrame->u32YAddr + w*h;
    pstFrame->u32CStride = w;
    pstFrame->u32Repeat = 1;
    pstFrame->u32Pts    = 0xfffffffful;

    /* image storage information */
    s_stBgcFrame.stFrame.bNeedRelease = HI_FALSE; /* whether there are frames to be released */

    s_stBgcFrame.stFrame.enFrameSrc = FRAME_SOURCE_STILL;
	// init bgc for black
    /* assign Y component */
    memset((HI_VOID *)(s_stBgcFrame.stMMZBuf.u32StartVirAddr), 0x10, w*h);

    /* assign C component */
    memset((HI_VOID *)(s_stBgcFrame.stMMZBuf.u32StartVirAddr + w*h), 0x80, (w*h)>>1);

    return HI_SUCCESS;
}

/* release black frame */
HI_VOID OPTM_DestroyBlackFrame(HI_VOID)
{
   if (s_stBlackFrame.stMMZBuf.u32StartVirAddr != 0)
   {
         HI_DRV_MMZ_UnmapAndRelease(&(s_stBlackFrame.stMMZBuf));
         s_stBlackFrame.stMMZBuf.u32StartVirAddr = 0;
         memset(&(s_stBlackFrame.stFrame), 0, sizeof(OPTM_FRAME_S));
   }

   if (s_stBgcFrame.stMMZBuf.u32StartVirAddr != 0)
   {
         HI_DRV_MMZ_UnmapAndRelease(&(s_stBgcFrame.stMMZBuf));
         s_stBgcFrame.stMMZBuf.u32StartVirAddr = 0;
         memset(&(s_stBgcFrame.stFrame), 0, sizeof(OPTM_FRAME_S));
   }

}

/* get black frame */
OPTM_FRAME_S * OPTM_GetBlackFrame(HI_VOID)
{
    return &(s_stBlackFrame.stFrame);
}

/* get bgc frame */
OPTM_FB_LOCAL_F_S * OPTM_GetBgcFrame(HI_VOID)
{
    return &(s_stBgcFrame);
}
/*******************************************************
            still frame manage interface
 *******************************************************/

/* create still frame*/
HI_S32 OPTM_CreateStillFrame(OPTM_FB_LOCAL_F_S *pstSF, HI_UNF_VO_FRAMEINFO_S *pstIFrame)
{
    HI_UNF_VO_FRAMEINFO_S *pstFrame;
    HI_U32 l_DsuBufSize, h, stride;
    HI_S32 nRet;

    if (pstIFrame->enVideoFormat == HI_UNF_FORMAT_YUV_SEMIPLANAR_420)
    {
        stride = (pstIFrame->u32YStride + 3) & 0xfffffffcL;
        h      = (pstIFrame->u32Height + 3) & 0xfffffffcL;

        l_DsuBufSize = ( stride * h * 3) >> 1;
    }
    else
    {
        HI_PRINT("VO only surpport semi420 format still frame.\n");
        return HI_FAILURE;
    }

    /* get physical memory*/
    nRet = HI_DRV_MMZ_Alloc("VOIFrame", HI_NULL, l_DsuBufSize, 0, &(pstSF->stMMZBuf));
    if (nRet != 0)
    {
        HI_PRINT("VO Get SF_buf failed\n");
        return HI_FAILURE;
    }

    memcpy(&(pstSF->stFrame.VdecFrameInfo), pstIFrame, sizeof(HI_UNF_VO_FRAMEINFO_S));


    /* initialize frame information */
    pstFrame = &(pstSF->stFrame.VdecFrameInfo);

    pstFrame->u32YAddr   = pstSF->stMMZBuf.u32StartPhyAddr;
    pstFrame->u32YStride = stride;
    pstFrame->u32CAddr   = pstFrame->u32YAddr + (HI_U32)(stride * h);
    pstFrame->u32CStride = stride;

    pstSF->stFrame.bNeedRelease = HI_TRUE;

    pstSF->stFrame.stMMZBuf = pstSF->stMMZBuf;

    return HI_SUCCESS;
}

/* release still frame */
HI_VOID OPTM_DestroystillFrame(OPTM_FB_LOCAL_F_S *pstSF)
{
   HI_DRV_MMZ_Release(&(pstSF->stMMZBuf));

}


/*******************************************************
  Since MMZ memory release interface is blocked interface,
  it can not be called in interrupt, then this interface
  is provided, to release MMZ memory in work queue.
 *******************************************************/
HI_VOID OPTM_FB_ReleaseMMZBufFreevmem(struct work_struct *work)
{
    OPTM_FB_RELEASE_BUF_WQ_S  *pWQueueInfo = container_of(work, OPTM_FB_RELEASE_BUF_WQ_S, work);

    pWQueueInfo->pWQCB(&(pWQueueInfo->stMMZBuf));

    HI_INFO_VO("Relase_MMZ_Buf WQ_S ok!\n");

    kfree(pWQueueInfo);
}

HI_S32 OPTM_FB_RelaseMMZBufInWQ(MMZ_BUFFER_S *pstMMZBuf, OPTM_FB_RELEASE_MMZ_CB pFuncWork)
{
    OPTM_FB_RELEASE_BUF_WQ_S *pstWQ = (OPTM_FB_RELEASE_BUF_WQ_S*)kmalloc(sizeof(OPTM_FB_RELEASE_BUF_WQ_S), GFP_ATOMIC);

    HI_INFO_VO("Malloc Relase_MMZ_Buf WQ_S ok\n");
    if(HI_NULL == pstWQ)
    {
        HI_ERR_VO("Malloc Relase_MMZ_Buf WQ_S failed!\n");
        return HI_FAILURE;
    }

    pstWQ->stMMZBuf = *pstMMZBuf;
    pstWQ->pWQCB    = pFuncWork;

    INIT_WORK(&pstWQ->work, OPTM_FB_ReleaseMMZBufFreevmem);
    schedule_work(&pstWQ->work);

    return HI_SUCCESS;
}


#ifndef HI_VDP_ONLY_SD_SUPPORT

/*******************************************************
                 WBC buffer management interface
 *******************************************************/
HI_S32 OPTM_WBC0FB_Create(OPTM_WBC_FB_S *pWbc, HI_S32 s32Width, HI_S32 s32Height)
{
    HI_U32     Width, Height, FmPhyAddr, Stride;
    HI_U32     i, j;
    HI_S32     nRet;

    Width = s32Width;
    Height = s32Height;

    if (HI_NULL == pWbc)
	return HI_FAILURE;
    memset((HI_U8 *)&(pWbc->stFrameDemo), 0, sizeof(HI_UNF_VO_FRAMEINFO_S));

#ifdef CHIP_TYPE_hi3716mv330
    pWbc->stFrameDemo.enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422;
#else
    pWbc->stFrameDemo.enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_UYVY;
#endif
    pWbc->stFrameDemo.enSampleType  = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
    pWbc->stFrameDemo.u32Width      = Width;
    pWbc->stFrameDemo.u32Height     = Height;

    pWbc->stFrameDemo.u32DisplayWidth   = Width;
    pWbc->stFrameDemo.u32DisplayHeight  = Height;
    pWbc->stFrameDemo.u32DisplayCenterX = Width/2;
    pWbc->stFrameDemo.u32DisplayCenterY = Height/2;

    /* 128bit alignment */
#if (1 == WBC_USE_FILED_MODE)
    /* Use filed writeback mode, stride is half */
#ifdef CHIP_TYPE_hi3716mv330
    /* For Semi-Planar, y/c stride a half of width */
    pWbc->stFrameDemo.u32YStride = (Width/2 + 15) & 0xfffffff0L;
    pWbc->stFrameDemo.u32CStride = pWbc->stFrameDemo.u32YStride;
#else
    pWbc->stFrameDemo.u32YStride = (Width + 15) & 0xfffffff0L;
    pWbc->stFrameDemo.u32CStride = 0;
#endif
#else
    /* Use frame writeback mode */
#ifdef CHIP_TYPE_hi3716mv330
    /* For Semi-Planar, y/c stride a half of width */
    pWbc->stFrameDemo.u32YStride = (Width + 15) & 0xfffffff0L;
    pWbc->stFrameDemo.u32CStride = pWbc->stFrameDemo.u32YStride;
#else
    pWbc->stFrameDemo.u32YStride = (Width*2 + 15) & 0xfffffff0L;
    pWbc->stFrameDemo.u32CStride = 0;
#endif
#endif
    pWbc->stFrameDemo.u32Repeat  = 1;
    pWbc->stFrameDemo.u32CompressFlag = 0;

    Stride = pWbc->stFrameDemo.u32YStride + pWbc->stFrameDemo.u32CStride;

    /* Use field writeback mode: alloc one more line here. */
    pWbc->s32FrmSize = Stride * (Height + 1);
    pWbc->s32FrmNum  = 1;
    pWbc->bIsExternAlloc = HI_FALSE;

    if ( (HI_NULL == pWbc) || (0 == pWbc->s32FrmSize) || (0 == pWbc->s32FrmNum) || (pWbc->s32FrmNum > OPTM_WBC_FRAME_NUMBER) )
    {
        return HI_FAILURE;
    }
    HI_INFO_DISP("VOWbc0 Memory Allocate size:%d, y stride %u\n", pWbc->s32FrmSize*pWbc->s32FrmNum, pWbc->stFrameDemo.u32YStride);

    /* apply coefficient buffer */
    nRet = HI_DRV_MMZ_AllocAndMap("VOWbc0", HI_NULL, pWbc->s32FrmSize*pWbc->s32FrmNum, 0, &pWbc->stMBuf);
    if (nRet != 0)
    {
        HI_ERR_VO("VO Get wbc_buf failed\n");
        return HI_FAILURE;
    }

    for (i=0; i<pWbc->s32FrmNum*(s32Height+1); i++)
    {
        for (j=0; j<(Stride/4); j++)
        {
            *(HI_U32 *)(pWbc->stMBuf.u32StartVirAddr+i*Stride+j*4) = 0x10801080;
        }
    }

    FmPhyAddr = pWbc->stMBuf.u32StartPhyAddr;
    for(i=0; i<pWbc->s32FrmNum; i++)
    {
        memcpy((HI_U8 *)&(pWbc->stFrame[i]), (HI_U8 *)(&pWbc->stFrameDemo), sizeof(HI_UNF_VO_FRAMEINFO_S));

        pWbc->stFrame[i].u32YAddr      = FmPhyAddr;
        //pWbc->stFrame[i].u32FrameIndex = i;
        pWbc->stFrame[i].u32MgcNum     = i;
        pWbc->stFrame[i].u32CompressFlag  = 0;

        pWbc->enState[i] = OPTM_FRAME_NOUSED;

        FmPhyAddr = FmPhyAddr + pWbc->s32FrmSize;
    }

    return HI_SUCCESS;
}


HI_S32 OPTM_WBC0FB_Destroy(OPTM_WBC_FB_S *pWbc)
{
    if  (HI_NULL == pWbc)
    {
        return HI_FAILURE;
    }
    HI_INFO_DISP("OPTM_WBC0FB_Destroy Release\n");
    if(pWbc->stMBuf.u32StartVirAddr != 0)
    {
        HI_DRV_MMZ_UnmapAndRelease(&(pWbc->stMBuf));
        pWbc->stMBuf.u32StartVirAddr = 0;
    }
    HI_INFO_DISP("After OPTM_WBC0FB_Destroy Release\n");
    pWbc->s32FrmSize = 0;
    pWbc->s32FrmNum  = 0;

    return HI_SUCCESS;
}


HI_UNF_VO_FRAMEINFO_S *OPTM_WBC0FB_GetBuffer(OPTM_WBC_FB_S *pWbc)
{
    /* single buffer scheme */
    return &(pWbc->stFrame[0]);
}
#endif


/*******************************************************
                  WBC buffer management interface
 *******************************************************/
 #if 0
HI_S32 OPTM_WBCFB_Create(OPTM_WBC_FB_S *pWbc, HI_S32 s32Width, HI_S32 s32Height, HI_S32 s32BufferLength)
{
    HI_U32     Width;
    HI_U32     Height;
    HI_U32     i, j;
    HI_S32     nRet;

    Width = s32Width;
    Height = s32Height;
    if (HI_NULL == pWbc)
	return HI_FAILURE;

    memset((HI_U8 *)&(pWbc->stFrameDemo), 0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    pWbc->stFrameDemo.enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_UYVY;
    pWbc->stFrameDemo.enSampleType  = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
    pWbc->stFrameDemo.u32Width      = Width;
    pWbc->stFrameDemo.u32Height     = Height;

    pWbc->stFrameDemo.u32DisplayWidth   = Width;
    pWbc->stFrameDemo.u32DisplayHeight  = Height;
    pWbc->stFrameDemo.u32DisplayCenterX = Width/2;
    pWbc->stFrameDemo.u32DisplayCenterY = Height/2;

    /* 128bit alignment  */
    pWbc->stFrameDemo.u32YStride = (Width * 2 + 15) & 0xfffffff0L;
    pWbc->stFrameDemo.u32Repeat  = 1;

    pWbc->s32FrmSize = pWbc->stFrameDemo.u32YStride * Height;
    pWbc->s32FrmNum  = s32BufferLength;
    pWbc->bIsExternAlloc = HI_FALSE;

    if ( (HI_NULL == pWbc) || (0 == pWbc->s32FrmSize) || (0 == pWbc->s32FrmNum) || (pWbc->s32FrmNum > OPTM_WBC_FRAME_NUMBER) )
    {
        return HI_FAILURE;
    }

    /* apply coefficient buffer */
    nRet = HI_DRV_MMZ_AllocAndMap("VOWbc", HI_NULL, pWbc->s32FrmSize*pWbc->s32FrmNum, 0, &pWbc->stMBuf);
    if (nRet != 0)
    {
        HI_ERR_VO("VO Get wbc_buf failed\n");
        return HI_FAILURE;
    }

    for (i=0; i<pWbc->s32FrmNum*s32Height; i++)
    {
        for (j=0; j<(pWbc->stFrameDemo.u32YStride/4); j++)
        {
            *(HI_U32 *)(pWbc->stMBuf.u32StartVirAddr+i*pWbc->stFrameDemo.u32YStride+j*4) = 0x10801080;
        }
    }

    OPTM_WBCFB_Reset(pWbc);

    return HI_SUCCESS;
}

HI_S32 OPTM_WBCFB_ExternReset(OPTM_WBC_FB_S* pWbc,VO_WIN_BUF_ATTR_S* pstBufAttr)
{
    HI_S32 i;

    if  (HI_NULL == pWbc)
    {
        return HI_FAILURE;
    }

    for(i=0; i<pWbc->s32FrmNum; i++)
    {
        memcpy((HI_U8 *)&(pWbc->stFrame[i]), (HI_U8 *)(&pWbc->stFrameDemo), sizeof(HI_UNF_VO_FRAMEINFO_S));
        pWbc->stFrame[i].u32YAddr      = pstBufAttr->u32PhyAddr[i];
        pWbc->stFrame[i].u32MgcNum     = i;
        pWbc->stFrame[i].u32FrameIndex = pstBufAttr->u32FrameIndex[i];
        pWbc->enState[i] = OPTM_FRAME_NOUSED;
    }
    pWbc->InPtr = 0;
    pWbc->CfgPtr = 0;
    pWbc->RdPtr = 0;
    pWbc->LsPtr = 0;
    pWbc->Ls2Ptr = 0;
    pWbc->RlsPtr =0;

    pWbc->u32StIn        = 0;
    pWbc->u32StOverflow  = 0;

    pWbc->u32StConfig    = 0;
    pWbc->u32StRepeat    = 0;
    pWbc->u32StUnderflow = 0;

    pWbc->Acquire = 0;
    pWbc->Acquired = 0;
    pWbc->Release = 0;
    pWbc->Released   = 0;

    return HI_SUCCESS;
}

HI_S32 OPTM_WBCFB_ExternClear(OPTM_WBC_FB_S* pWbc)
{
    HI_S32 i;

    if  (HI_NULL == pWbc)
    {
        return HI_FAILURE;
    }
    for(i=0; i<pWbc->s32FrmNum; i++)
    {
        pWbc->enState[i] = OPTM_FRAME_NOUSED;
    }
    pWbc->InPtr = 0;
    pWbc->CfgPtr = 0;
    pWbc->RdPtr = 0;
    pWbc->LsPtr = 0;
    pWbc->Ls2Ptr = 0;
    pWbc->RlsPtr =0;

    pWbc->u32StIn        = 0;
    pWbc->u32StOverflow  = 0;

    pWbc->u32StConfig    = 0;
    pWbc->Released   = 0;
    pWbc->u32StRepeat    = 0;
    pWbc->u32StUnderflow = 0;
    return HI_SUCCESS;
}

HI_S32 OPTM_WBCFB_Destroy(OPTM_WBC_FB_S *pWbc)
{
    if  (HI_NULL == pWbc)
    {
        return HI_FAILURE;
    }

    if(pWbc->stMBuf.u32StartVirAddr != 0)
    {
        HI_DRV_MMZ_UnmapAndRelease(&(pWbc->stMBuf));
        pWbc->stMBuf.u32StartVirAddr = 0;
    }

    pWbc->s32FrmSize = 0;
    pWbc->s32FrmNum  = 0;

    return HI_SUCCESS;
}

HI_S32 OPTM_WBCFB_Reset(OPTM_WBC_FB_S *pWbc)
{
    HI_U32 FmPhyAddr;
    HI_S32 i;

    if  (HI_NULL == pWbc)
    {
        return HI_FAILURE;
    }

    FmPhyAddr = pWbc->stMBuf.u32StartPhyAddr;
    for(i=0; i<pWbc->s32FrmNum; i++)
    {
        memcpy((HI_U8 *)&(pWbc->stFrame[i]), (HI_U8 *)(&pWbc->stFrameDemo), sizeof(HI_UNF_VO_FRAMEINFO_S));

        pWbc->stFrame[i].u32YAddr      = FmPhyAddr;
        //pWbc->stFrame[i].u32FrameIndex = i;
        pWbc->stFrame[i].u32MgcNum     = i;

        pWbc->enState[i] = OPTM_FRAME_NOUSED;

        FmPhyAddr = FmPhyAddr + pWbc->s32FrmSize;
    }

    pWbc->InPtr = 0;
    pWbc->CfgPtr = 0;
    pWbc->RdPtr = 0;
    pWbc->LsPtr = 0;
    pWbc->Ls2Ptr = 0;
    pWbc->RlsPtr = 0;
    pWbc->s32WBC1RepeatFlag = 0;

    pWbc->u32StIn        = 0;
    pWbc->u32StOverflow  = 0;

    pWbc->u32StConfig    = 0;
    pWbc->u32StRepeat    = 0;
    pWbc->u32StUnderflow = 0;

    pWbc->Acquire = 0;
    pWbc->Acquired = 0;
    pWbc->Release = 0;
    pWbc->Released   = 0;

    return HI_SUCCESS;
}
#endif

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ReceiveGetNext(OPTM_WBC_FB_S *pWbc)
{
    HI_UNF_VO_FRAMEINFO_S *pVdecFrame;

    if (pWbc->enState[pWbc->CfgPtr] != OPTM_FRAME_NOUSED)
    {
        pWbc->u32StOverflow++;
        return HI_NULL;
    }

    pVdecFrame = &(pWbc->stFrame[pWbc->CfgPtr]);

    return pVdecFrame;
}

HI_VOID OPTM_WBCFB_ReceivePutConfig(OPTM_WBC_FB_S *pWbc)
{
    pWbc->CfgPtr = (pWbc->CfgPtr + 1) % pWbc->s32FrmNum;

    return;
}


HI_S32 OPTM_WBCFB_RecievePutNext(OPTM_WBC_FB_S *pWbc)
{
    if (pWbc->enState[pWbc->InPtr] != OPTM_FRAME_NOUSED)
    {
        return HI_FAILURE;
    }

    pWbc->enState[pWbc->InPtr] = OPTM_FRAME_RECEIVED;
    pWbc->InPtr = (pWbc->InPtr + 1) % pWbc->s32FrmNum;
    pWbc->u32StIn++;

    return HI_SUCCESS;
}
#endif

#if 0
HI_S32 OPTM_WBCFB_RecieveStakePutNext(OPTM_WBC_FB_S *pWbc,HI_BOOL bFlag)
{
    if (pWbc->enState[pWbc->InPtr] != OPTM_FRAME_NOUSED)
    {
        return HI_FAILURE;
    }
    if(HI_FALSE == bFlag)
    {
        pWbc->enState[pWbc->InPtr] = OPTM_FRAME_RECEIVED;
        pWbc->InPtr = (pWbc->InPtr + 1) % pWbc->s32FrmNum;
        pWbc->u32StIn++;
    }else
    {
        pWbc->enState[pWbc->InPtr] = OPTM_FRAME_NOUSED;
        pWbc->InPtr = (pWbc->InPtr + 1) % pWbc->s32FrmNum;
        pWbc->u32StIn++;
    }
    return HI_SUCCESS;
}
HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ConfigGetNext(OPTM_WBC_FB_S *pWbc)
{
    HI_UNF_VO_FRAMEINFO_S *pstFrame;

    pWbc->Acquire++;

    if (pWbc->enState[pWbc->RdPtr] != OPTM_FRAME_RECEIVED)
    {
        pWbc->u32StUnderflow++;
        return HI_NULL;
    }

    pstFrame = &(pWbc->stFrame[pWbc->RdPtr]);
    pWbc->Ls2Ptr = pWbc->LsPtr;
    pWbc->LsPtr  = pWbc->RdPtr;
    pWbc->RdPtr = (pWbc->RdPtr + 1) % pWbc->s32FrmNum;
    pWbc->u32StConfig++;
    pWbc->Acquired++;

    return pstFrame;
}

HI_S32 OPTM_WBCFB_ConfigPutNext(OPTM_WBC_FB_S *pWbc)
{
    if (pWbc->enState[pWbc->RdPtr] != OPTM_FRAME_RECEIVED)
    {
        return HI_FAILURE;
    }

    pWbc->Ls2Ptr = pWbc->LsPtr;
    pWbc->LsPtr  = pWbc->RdPtr;
    pWbc->RdPtr = (pWbc->RdPtr + 1) % pWbc->s32FrmNum;

    return HI_SUCCESS;
}

HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ConfigGetLast(OPTM_WBC_FB_S *pWbc)
{
    HI_UNF_VO_FRAMEINFO_S *pstFrame;

    if (pWbc->enState[pWbc->LsPtr] == OPTM_FRAME_NOUSED)
    {
        return HI_NULL;
    }

    pstFrame = &(pWbc->stFrame[pWbc->LsPtr]);
    pWbc->u32StRepeat++;

    return pstFrame;
}
#endif

HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ConfigSearch(OPTM_WBC_FB_S *pWbc, HI_UNF_VIDEO_FIELD_MODE_E enDstFeild, HI_S32 *ps32Lst)
{
    HI_UNF_VO_FRAMEINFO_S *pstFrame;
    HI_S32 sDstPosi, nGetFlag;

    if (pWbc->enState[pWbc->Ls2Ptr] == OPTM_FRAME_NOUSED)
    {
        return HI_NULL;
    }

    *ps32Lst = 0;
    nGetFlag = 0;

    //get (pWbc->InPtr - 1) position, search backward from here until (pWbc->RdPtr)
    sDstPosi = (pWbc->InPtr + pWbc->s32FrmNum - 1) % pWbc->s32FrmNum;
    while(sDstPosi != pWbc->LsPtr)
    {
        if (pWbc->stFrame[sDstPosi].enFieldMode == enDstFeild)
        {
            nGetFlag = 1;
            break;
        }

        sDstPosi = (sDstPosi + pWbc->s32FrmNum - 1) % pWbc->s32FrmNum;
    }

    if (nGetFlag == 1)
    {
        //if found, return this frame and put pWbc->RdPtr there
        pWbc->RdPtr = sDstPosi;
        pstFrame = &(pWbc->stFrame[pWbc->RdPtr]);

        //update RdPtr and LsPtr
        pWbc->Ls2Ptr = pWbc->LsPtr;
        pWbc->LsPtr = pWbc->RdPtr;
        pWbc->RdPtr = (pWbc->RdPtr + 1) % pWbc->s32FrmNum;

        pWbc->u32StConfig++;
    }
    else
    {
        //if not found
        if (pWbc->stFrame[pWbc->LsPtr].enFieldMode == enDstFeild)
        {
            pstFrame = &(pWbc->stFrame[pWbc->LsPtr]);
            pWbc->u32StRepeat++;

            *ps32Lst = 1;
        }
        else
        {
            pstFrame = HI_NULL;
        }
    }

    return pstFrame;
}

HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ConfigGetNewest(OPTM_WBC_FB_S *pWbc)
{
    HI_UNF_VO_FRAMEINFO_S *pstFrame;
    HI_S32 sDstPosi;

    if (pWbc->enState[pWbc->Ls2Ptr] == OPTM_FRAME_NOUSED)
    {
        return HI_NULL;
    }

    sDstPosi = (pWbc->InPtr + pWbc->s32FrmNum - 1) % pWbc->s32FrmNum;
    pstFrame = &(pWbc->stFrame[sDstPosi]);

    if (sDstPosi == pWbc->LsPtr)
    {
        pWbc->u32StRepeat++;
    }
    else
    {
        pWbc->RdPtr  = sDstPosi;

        pWbc->Ls2Ptr = pWbc->LsPtr;
        pWbc->LsPtr  = pWbc->RdPtr;
        pWbc->RdPtr  = (pWbc->RdPtr + 1) % pWbc->s32FrmNum;
        pWbc->u32StConfig++;
    }

    return pstFrame;
}

#if 0
HI_S32 OPTM_WBCFB_ReleaseFrame(OPTM_WBC_FB_S *pWbc)
{
    HI_S32 i;

    pWbc->Release++;

    i = pWbc->InPtr;
    while(i != pWbc->Ls2Ptr)
    {
        if (pWbc->enState[i] != OPTM_FRAME_NOUSED)
        {
            pWbc->enState[i] = OPTM_FRAME_NOUSED;
            pWbc->Released++;
        }
        i = (i+1) % pWbc->s32FrmNum;
    }

    return HI_SUCCESS;
}
#else

/* keep two frames */
HI_S32 OPTM_WBCFB_ReleaseFrame(OPTM_WBC_FB_S *pWbc)
{
    HI_S32 i;

    pWbc->Release++;

    if (pWbc->InPtr == pWbc->Ls2Ptr)
    {
        pWbc->s32WBC1RepeatFlag++;

        if (pWbc->s32WBC1RepeatFlag >= 3)
        {
            pWbc->Ls2Ptr = pWbc->LsPtr;
            pWbc->s32WBC1RepeatFlag = 0;
        }
    }
    else
    {
        pWbc->s32WBC1RepeatFlag = 0;
    }

    i = pWbc->InPtr;
    while(i != pWbc->Ls2Ptr)
    {
        if (pWbc->enState[i] != OPTM_FRAME_NOUSED)
        {
            pWbc->enState[i] = OPTM_FRAME_NOUSED;
            pWbc->Released++;
        }
        i = (i+1) % pWbc->s32FrmNum;
    }

    return HI_SUCCESS;
}
#endif

#if 0
HI_S32 OPTM_WBCFB_ReleaseFrameFromUser(OPTM_WBC_FB_S *pWbc)
{
    pWbc->Release++;

    while(pWbc->RlsPtr != pWbc->Ls2Ptr)
    {
        if (pWbc->enState[pWbc->RlsPtr] != OPTM_FRAME_NOUSED)
        {
            pWbc->enState[pWbc->RlsPtr] = OPTM_FRAME_NOUSED;
            pWbc->Released++;
        }
        pWbc->RlsPtr = (pWbc->RlsPtr+1) % pWbc->s32FrmNum;
    }

    return HI_SUCCESS;
}




HI_S32 OPTM_WBCFB_GetPtrState(OPTM_WBC_FB_S *pWbc)
{
    DEBUG_PRINTK("i=%d,c=%d,r=%d,l=%d,l2=%d, %d,%d,%d,%d,%d\n",
              pWbc->InPtr,
              pWbc->CfgPtr,
              pWbc->RdPtr,
              pWbc->LsPtr,
              pWbc->Ls2Ptr,
              pWbc->enState[0],
              pWbc->enState[1],
              pWbc->enState[2],
              pWbc->enState[3],
              pWbc->enState[4]
              );
    return HI_SUCCESS;
}
#endif

#if defined(HI_VDP_EXTERNALBUFFER_SUPPORT) || defined(HI_VDP_VIRTUAL_WIN_SUPPORT)
HI_VOID OPTM_WBC1FB_Reset(OPTM_WBC1_FB_S *pstWbc1)
{
    HI_U32 u32PhyAddr;
    HI_S32 i;

    u32PhyAddr = pstWbc1->stMmzBuf.u32StartPhyAddr;

    for(i=0; i<pstWbc1->u32FrameNum; i++)
    {
        memcpy((HI_U8 *)&(pstWbc1->stFrame[i]), (HI_U8 *)(&pstWbc1->stFrameDemo), sizeof(HI_UNF_VO_FRAMEINFO_S));

        pstWbc1->stFrame[i].u32YAddr = u32PhyAddr;
        pstWbc1->stFrame[i].u32MgcNum = i;
        pstWbc1->stFrame[i].u32CompressFlag = 0;
        pstWbc1->enState[i] = OPTM_FRAME_NOUSED;

        u32PhyAddr = u32PhyAddr + pstWbc1->u32FrameSize;
    }

    pstWbc1->u32LastWriteYaddr = 0;

	pstWbc1->u32WritePtr = pstWbc1->u32FrameNum - 1;
    pstWbc1->u32CrtWritePtr = pstWbc1->u32WritePtr;

    pstWbc1->u32ReadPtr = pstWbc1->u32FrameNum - 1;
    pstWbc1->u32LstReadPtr = pstWbc1->u32ReadPtr - 1;
    pstWbc1->u32Release = pstWbc1->u32LstReadPtr;

    pstWbc1->Acquire  = 0;
    pstWbc1->Acquired = 0;
    pstWbc1->Release  = 0;
    pstWbc1->Released = 0;
    pstWbc1->Unload   = 0;
    return;
}

HI_S32 OPTM_WBC1FB_ExternReset(OPTM_WBC1_FB_S *pstWbc1, VO_WIN_BUF_ATTR_S* pstBufAttr)
{
    HI_U32  i;

    for(i=0; i<pstWbc1->u32FrameNum; i++)
    {
        memcpy((HI_U8 *)&(pstWbc1->stFrame[i]), (HI_U8 *)(&pstWbc1->stFrameDemo), sizeof(HI_UNF_VO_FRAMEINFO_S));
        pstWbc1->stFrame[i].u32YAddr      = pstBufAttr->u32PhyAddr[i];
        pstWbc1->stFrame[i].u32MgcNum     = i;
        pstWbc1->stFrame[i].u32FrameIndex = pstBufAttr->u32FrameIndex[i];
        pstWbc1->stFrame[i].u32CompressFlag = 0;
        pstWbc1->enState[i] = OPTM_FRAME_NOUSED;
    }

    pstWbc1->u32LastWriteYaddr = 0;

    pstWbc1->u32WritePtr = pstWbc1->u32FrameNum - 1;
    pstWbc1->u32CrtWritePtr = pstWbc1->u32WritePtr;

    pstWbc1->u32ReadPtr = pstWbc1->u32FrameNum - 1;
    pstWbc1->u32LstReadPtr = pstWbc1->u32ReadPtr - 1;
    pstWbc1->u32Release = pstWbc1->u32LstReadPtr;

    pstWbc1->Acquire = 0;
    pstWbc1->Acquired = 0;
    pstWbc1->Release = 0;
    pstWbc1->Released   = 0;

    return HI_SUCCESS;
}

#if 0
HI_S32 OPTM_WBC1FB_ExternClear(OPTM_WBC1_FB_S* pstWbc1)
{
    HI_S32 i;

    for(i=0; i<pstWbc1->u32FrameNum; i++)
    {
        pstWbc1->enState[i] = OPTM_FRAME_NOUSED;
    }

    pstWbc1->u32LastWriteYaddr = 0;

    pstWbc1->u32WritePtr = pstWbc1->u32FrameNum - 1;
    pstWbc1->u32CrtWritePtr = pstWbc1->u32WritePtr;

    pstWbc1->u32ReadPtr = pstWbc1->u32FrameNum - 1;
    pstWbc1->u32LstReadPtr = pstWbc1->u32ReadPtr - 1;
    pstWbc1->u32Release = pstWbc1->u32LstReadPtr;

    pstWbc1->Acquire = 0;
    pstWbc1->Acquired = 0;
    pstWbc1->Release = 0;
    pstWbc1->Released   = 0;

    return HI_SUCCESS;
}

HI_S32 OPTM_WBC1FB_Create(OPTM_WBC1_FB_S *pstWbc1, HI_UNF_VIDEO_FORMAT_E enVideoFormat, HI_U32 u32Width, HI_U32 u32Height, HI_U32 u32BufNum)
{
    HAL_DISP_BKCOLOR_S stBkgtmp;
    HI_U32 nYCbCr;
    HI_U32 i, j;
    HI_S32 s32Ret;

    memset((HI_U8 *)&(pstWbc1->stFrameDemo), 0, sizeof(HI_UNF_VO_FRAMEINFO_S));

    pstWbc1->stFrameDemo.enVideoFormat = enVideoFormat;
    pstWbc1->stFrameDemo.enSampleType  = HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE;
    pstWbc1->stFrameDemo.u32Width      = u32Width;
    pstWbc1->stFrameDemo.u32Height     = u32Height;

    pstWbc1->stFrameDemo.u32DisplayWidth   = u32Width;
    pstWbc1->stFrameDemo.u32DisplayHeight  = u32Height;
    pstWbc1->stFrameDemo.u32DisplayCenterX = u32Width / 2;
    pstWbc1->stFrameDemo.u32DisplayCenterY = u32Height / 2;

    /* 128bit alignment  */
    pstWbc1->stFrameDemo.u32YStride = (u32Width * 2 + 15) & 0xfffffff0L;
    pstWbc1->stFrameDemo.u32Repeat  = 1;
    pstWbc1->stFrameDemo.u32CompressFlag = 0;

    pstWbc1->u32FrameSize = pstWbc1->stFrameDemo.u32YStride * u32Height;
    pstWbc1->u32FrameNum = u32BufNum;
    pstWbc1->bExternAlloc = HI_FALSE;

    /* apply coefficient buffer */
    s32Ret = HI_DRV_MMZ_AllocAndMap("VO_Wbc1", HI_NULL, pstWbc1->u32FrameSize*pstWbc1->u32FrameNum, 0, &pstWbc1->stMmzBuf);
    if (s32Ret != 0)
    {
        HI_ERR_VO("malloc VO_wbc1 failed\n");
        return HI_FAILURE;
    }

    /* query background color */
    Vou_GetCbmBkg(0, &stBkgtmp);

    if (HI_UNF_FORMAT_YUV_PACKAGE_UYVY == enVideoFormat)
    {
        nYCbCr =   (stBkgtmp.u8Bkg_y << 24) | (stBkgtmp.u8Bkg_cr << 16)
                 | (stBkgtmp.u8Bkg_y << 8)| (stBkgtmp.u8Bkg_cb);
    }
    else if (HI_UNF_FORMAT_YUV_PACKAGE_YUYV == enVideoFormat)
    {
        nYCbCr =  (stBkgtmp.u8Bkg_cr << 24) | (stBkgtmp.u8Bkg_y << 16)
                | (stBkgtmp.u8Bkg_cb << 8)  | (stBkgtmp.u8Bkg_y);
    }
    else
    {
        nYCbCr =   (stBkgtmp.u8Bkg_cb << 24) | (stBkgtmp.u8Bkg_y << 16)
                 | (stBkgtmp.u8Bkg_cr << 8)  | (stBkgtmp.u8Bkg_y);
    }

    for (i=0; i<pstWbc1->u32FrameNum*u32Height; i++)
    {
        for (j=0; j<(pstWbc1->stFrameDemo.u32YStride/4); j++)
        {
            *(HI_U32 *)(pstWbc1->stMmzBuf.u32StartVirAddr+i*pstWbc1->stFrameDemo.u32YStride+j*4) = nYCbCr;
        }
    }

    OPTM_WBC1FB_Reset(pstWbc1);

    return HI_SUCCESS;
}
#endif

HI_VOID OPTM_WBC1FB_Destroy(OPTM_WBC1_FB_S *pstWbc1)
{
    if (pstWbc1->stMmzBuf.u32StartVirAddr != 0)
    {
        HI_DRV_MMZ_UnmapAndRelease(&(pstWbc1->stMmzBuf));
        pstWbc1->stMmzBuf.u32StartVirAddr = 0;
    }

    pstWbc1->u32FrameNum = 0;
    pstWbc1->u32FrameSize = 0;

    return;
}

HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetWriteBuf(OPTM_WBC1_FB_S *pstWbc1)
{
    HI_UNF_VO_FRAMEINFO_S *pVdecFrame;

    if (pstWbc1->u32WritePtr == pstWbc1->u32Release)
    {
        return HI_NULL;
    }

    if (pstWbc1->enState[pstWbc1->u32WritePtr] != OPTM_FRAME_NOUSED)
    {
        return HI_NULL;
    }

    pVdecFrame = &(pstWbc1->stFrame[pstWbc1->u32WritePtr]);

    return pVdecFrame;
}

HI_VOID OPTM_WBC1FB_AddWriteBuf(OPTM_WBC1_FB_S *pstWbc1)
{
    pstWbc1->u32WritePtr = (pstWbc1->u32WritePtr + 1) % pstWbc1->u32FrameNum;

    return;
}

HI_VOID OPTM_WBC1FB_PutWriteBuf(OPTM_WBC1_FB_S *pstWbc1)
{
    pstWbc1->enState[pstWbc1->u32CrtWritePtr] = OPTM_FRAME_RECEIVED;
    pstWbc1->u32CrtWritePtr = (pstWbc1->u32CrtWritePtr + 1) % pstWbc1->u32FrameNum;

    return;
}

HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetReadBuf(OPTM_WBC1_FB_S *pstWbc1, HI_BOOL bLast)
{
    HI_UNF_VO_FRAMEINFO_S *pVdecFrame;

    pstWbc1->Acquire++;

    if ((OPTM_FRAME_NOUSED == pstWbc1->enState[pstWbc1->u32ReadPtr])
      ||(pstWbc1->u32ReadPtr == pstWbc1->u32CrtWritePtr)
       )
    {
        if (bLast)
        {
            if (OPTM_FRAME_NOUSED == pstWbc1->enState[pstWbc1->u32LstReadPtr])
            {
                pVdecFrame = HI_NULL;
            }
            else
            {
                pVdecFrame = &(pstWbc1->stFrame[pstWbc1->u32LstReadPtr]);
            }
        }
        else
        {
            pVdecFrame = HI_NULL;
        }

        pstWbc1->Unload++;
    }
    else
    {
        pVdecFrame = &(pstWbc1->stFrame[pstWbc1->u32ReadPtr]);

        pstWbc1->u32LstReadPtr = pstWbc1->u32ReadPtr;
        pstWbc1->u32ReadPtr = (pstWbc1->u32ReadPtr + 1) % pstWbc1->u32FrameNum;
        pstWbc1->Acquired++;
    }

    return pVdecFrame;
}


#if 0
HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetReadBuf_special(OPTM_WBC1_FB_S *pstWbc1, HI_BOOL bLast)
{
    HI_UNF_VO_FRAMEINFO_S *pVdecFrame;

    pstWbc1->Acquire++;

    if ((OPTM_FRAME_NOUSED == pstWbc1->enState[pstWbc1->u32ReadPtr])
      ||(pstWbc1->u32ReadPtr == pstWbc1->u32CrtWritePtr)
       )
    {
        if (bLast)
        {
            if (OPTM_FRAME_NOUSED == pstWbc1->enState[pstWbc1->u32LstReadPtr])
            {
                pVdecFrame = HI_NULL;
            }
            else
            {
                pVdecFrame = &(pstWbc1->stFrame[pstWbc1->u32LstReadPtr]);
            }
        }
        else
        {
            pVdecFrame = HI_NULL;
        }

        pstWbc1->Unload++;
    }
    else
    {
        pVdecFrame = &(pstWbc1->stFrame[pstWbc1->u32ReadPtr]);

    }

    return pVdecFrame;
}

HI_VOID OPTM_WBC1FB_AddReadPtr(OPTM_WBC1_FB_S *pstWbc1)
{
        pstWbc1->u32LstReadPtr = pstWbc1->u32ReadPtr;
        pstWbc1->u32ReadPtr = (pstWbc1->u32ReadPtr + 1) % pstWbc1->u32FrameNum;
        pstWbc1->Acquired++;
}

HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetNextReadBuf(OPTM_WBC1_FB_S *pstWbc1)
{
    HI_UNF_VO_FRAMEINFO_S *pVdecFrame;

    if (pstWbc1->enState[(pstWbc1->u32ReadPtr + 1) % pstWbc1->u32FrameNum] != OPTM_FRAME_NOUSED)
        pVdecFrame = &(pstWbc1->stFrame[(pstWbc1->u32ReadPtr + 1) % pstWbc1->u32FrameNum]);
    else
        pVdecFrame = HI_NULL;

    return pVdecFrame;
}


HI_VOID OPTM_WBC1FB_PutReadBuf(OPTM_WBC1_FB_S *pstWbc1)
{
    pstWbc1->Release++;

    while (pstWbc1->u32Release != pstWbc1->u32LstReadPtr)
    {
        pstWbc1->enState[pstWbc1->u32Release] = OPTM_FRAME_NOUSED;

        pstWbc1->u32Release = (pstWbc1->u32Release+1) % pstWbc1->u32FrameNum;

        pstWbc1->Released++;
    }

    return;
}

HI_BOOL OPTM_WBC1FB_GetBufferState(OPTM_WBC1_FB_S *pstWbc1)
{
    if (pstWbc1->u32WritePtr == pstWbc1->u32Release)
    {
        return HI_TRUE;
    }
    else
    {
        return HI_FALSE;
    }
}
#endif

#if 0
HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetNewestReadBuf(OPTM_WBC1_FB_S *pstWbc1)
{
    HI_UNF_VO_FRAMEINFO_S *pVdecFrame;

    while (1)
    {
        if ((pstWbc1->enState[pstWbc1->u32ReadPtr] != OPTM_FRAME_NOUSED)
          &&(pstWbc1->u32ReadPtr != pstWbc1->u32CrtWritePtr)
           )
        {
            pstWbc1->u32LstReadPtr = pstWbc1->u32ReadPtr;
            pstWbc1->u32ReadPtr = (pstWbc1->u32ReadPtr + 1) % pstWbc1->u32FrameNum;
        }
        else
        {
            break;
        }
    }

    if (OPTM_FRAME_NOUSED == pstWbc1->enState[pstWbc1->u32LstReadPtr])
    {
        return HI_NULL;
    }
    else
    {
        pVdecFrame = &(pstWbc1->stFrame[pstWbc1->u32LstReadPtr]);
    }

    return pVdecFrame;
}

HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_SearchReadBuf(OPTM_WBC1_FB_S *pstWbc1, HI_UNF_VIDEO_FIELD_MODE_E enDstFeild)
{
    HI_UNF_VO_FRAMEINFO_S   *pVdecFrame;
    HI_BOOL                 bSearch;

    bSearch = HI_FALSE;

    while (1)
    {
        if ((pstWbc1->enState[pstWbc1->u32ReadPtr] != OPTM_FRAME_NOUSED)
          &&(pstWbc1->u32ReadPtr != pstWbc1->u32CrtWritePtr)
           )
        {
            if (pstWbc1->stFrame[pstWbc1->u32ReadPtr].enFieldMode == enDstFeild)
            {
                bSearch = HI_TRUE;
                break;
            }
            else
            {
                pstWbc1->u32ReadPtr = (pstWbc1->u32ReadPtr + 1) % pstWbc1->u32FrameNum;
            }
        }
        else
        {
            break;
        }
    }

    if (bSearch)
    {
        pVdecFrame = &(pstWbc1->stFrame[pstWbc1->u32ReadPtr]);

        pstWbc1->u32LstReadPtr = pstWbc1->u32ReadPtr;
        pstWbc1->u32ReadPtr = (pstWbc1->u32ReadPtr + 1) % pstWbc1->u32FrameNum;
    }
    else
    {
        if ((pstWbc1->enState[pstWbc1->u32LstReadPtr] != OPTM_FRAME_NOUSED)
          &&(pstWbc1->stFrame[pstWbc1->u32LstReadPtr].enFieldMode == enDstFeild)
           )
        {
            pVdecFrame = &(pstWbc1->stFrame[pstWbc1->u32LstReadPtr]);

            pstWbc1->u32ReadPtr = (pstWbc1->u32LstReadPtr + 1) % pstWbc1->u32FrameNum;
        }
        else
        {
            pstWbc1->u32ReadPtr = (pstWbc1->u32LstReadPtr + 1) % pstWbc1->u32FrameNum;

            return HI_NULL;
        }
    }

    return pVdecFrame;
}
#endif
#endif

OPTM_FRAME_S *OPTM_FB_FindFrame(OPTM_FB_S *pFb, HI_UNF_VO_FRAMEINFO_S *pRefF)
{
    HI_U32 pos = pFb->Release;
    HI_S32  ret;

    while(pos != pFb->In)
    {
        ret = memcmp(pRefF, &(pFb->OptmFrameBuf[pos].VdecFrameInfo),
                sizeof(HI_UNF_VO_FRAMEINFO_S));
        if ((ret == 0) && (OPTM_FRAME_NOUSED != pFb->OptmFrameBuf[pos].enState))
            break;
        pos ++;
        pos = pos % OPTM_FFB_MAX_FRAME_NUM;
    }

    if (pos == pFb->In)
        return HI_NULL;
    else
        return &(pFb->OptmFrameBuf[pos]);

}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

