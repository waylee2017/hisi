/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
 * FileName: drv_ao_op_func.c
 * Description: aiao interface of module.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1
 ********************************************************************************/
#include <asm/setup.h>
#include <linux/interrupt.h>

#include "hi_type.h"
#include "drv_struct_ext.h"
#include "drv_dev_ext.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"

#include "hi_module.h"
#include "hi_drv_mmz.h"
#include "hi_drv_stat.h"
#include "hi_drv_sys.h"
#include "hi_drv_proc.h"
#include "hi_drv_module.h"
#include "hi_drv_mem.h"
#include "hi_error_mpi.h"

#include "audio_util.h"
#include "drv_ao_aef.h"
#include "hi_audsp_aflt.h"  //TODO for AFLT_MAX_CHAN_NUM

static HI_S32 AEFAttachSnd(SND_CARD_STATE_S *pCard, HI_U32 u32AefId)
{
    HI_HANDLE hSndEngine;
    SND_ENGINE_STATE_S *pstEngineState;
    
    hSndEngine = pCard->hSndEngine[SND_ENGINE_TYPE_PCM];
    if(hSndEngine)
    {
        pstEngineState = (SND_ENGINE_STATE_S *)hSndEngine;
        if(HI_SUCCESS != HAL_AOE_ENGINE_AttachAef(pstEngineState->enEngine, u32AefId))
        {
            HI_ERR_AO("HAL_AOE_ENGINE_AttachAef failed!\n");
            return HI_FAILURE;
        }
    }
   
    return HI_SUCCESS;
}

static HI_S32 AEFDetachSnd(SND_CARD_STATE_S *pCard, HI_U32 u32AefId)
{
    HI_HANDLE hSndEngine;
    SND_ENGINE_STATE_S *pstEngineState;
    
    hSndEngine = pCard->hSndEngine[SND_ENGINE_TYPE_PCM];
    if(!hSndEngine)
    {
        HI_ERR_AO("no have pcm engine!\n");
        return HI_FAILURE;
    }

    pstEngineState = (SND_ENGINE_STATE_S *)hSndEngine;
    
    if(HI_SUCCESS != HAL_AOE_ENGINE_DetachAef(pstEngineState->enEngine, u32AefId))
    {
        HI_ERR_AO("HAL_AOE_ENGINE_DetachAef failed!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_S32 AEF_AttachSnd(SND_CARD_STATE_S *pCard, HI_U32 u32AefId, HI_U32 *pu32AefProcAddr)
{
    HI_S32 Ret;
    HI_CHAR szProcMmzName[32];
    SND_AEF_PROC_ATTR_S *pstAefProc = HI_NULL; 

    Ret = AEFAttachSnd(pCard, u32AefId);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_AO("AEF_AttachSnd failed\n");
        goto err0;
    }

    pstAefProc = AUTIL_AO_MALLOC(HI_ID_AO, sizeof(SND_AEF_PROC_ATTR_S), GFP_KERNEL);
    if(HI_NULL == pstAefProc)
    {
        HI_ERR_AO("malloc SND_AEF_PROC_ATTR_S failed\n");
        goto err1;
    }

    snprintf(szProcMmzName, sizeof(szProcMmzName), "AO_AefProcItem");
    Ret = HI_DRV_MMZ_AllocAndMap(szProcMmzName, MMZ_OTHERS, sizeof(AO_AEF_PROC_ITEM_S), 0, &pstAefProc->stProcMMz);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_AO("HI_DRV_MMZ_AllocAndMap %s failed\n", szProcMmzName);
        goto err2;
    }

    pstAefProc->pstProcItem = (AO_AEF_PROC_ITEM_S *)(pstAefProc->stProcMMz.u32StartVirAddr);
    pCard->hAefProc[u32AefId] = (HI_HANDLE)pstAefProc;
    pCard->u32AttAef |= ((HI_U32)1L << u32AefId);
    *pu32AefProcAddr = pstAefProc->stProcMMz.u32StartPhyAddr;

    return HI_SUCCESS;

err2:
    AUTIL_AO_FREE(HI_ID_AO, pstAefProc);
    
err1:
    (HI_VOID)AEFDetachSnd(pCard, u32AefId);
    
err0:
    return HI_FAILURE;   
}

HI_S32 AEF_DetachSnd(SND_CARD_STATE_S *pCard, HI_U32 u32AefId)
{
    SND_AEF_PROC_ATTR_S *pstAefProc = HI_NULL;

    pstAefProc = (SND_AEF_PROC_ATTR_S *)pCard->hAefProc[u32AefId];

    if(pstAefProc)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pstAefProc->stProcMMz);
        AUTIL_AO_FREE(HI_ID_AO, pstAefProc);
        pCard->hAefProc[u32AefId] = (HI_HANDLE)HI_NULL;
    }

    if(HI_SUCCESS != AEFDetachSnd(pCard, u32AefId))
    {
        HI_ERR_AO("AEFDetachSnd failed\n");
        return HI_FAILURE;
    }

    pCard->u32AttAef &= ~((HI_U32)1L << u32AefId);

    return HI_SUCCESS;
}

HI_S32 AEF_GetSetting(SND_CARD_STATE_S *pCard, SND_CARD_SETTINGS_S* pstSndSettings)
{
    HI_U32 u32AefId;
    
    pstSndSettings->u32AttAef = pCard->u32AttAef;
    for(u32AefId = 0; u32AefId < AFLT_MAX_CHAN_NUM; u32AefId++)
    {
        pstSndSettings->hAefProc[u32AefId]  = pCard->hAefProc[u32AefId];
    }
    
    return HI_SUCCESS; 
}

HI_S32 AEF_RestoreSetting(SND_CARD_STATE_S *pCard, SND_CARD_SETTINGS_S* pstSndSettings)
{
    HI_U32 u32AefId;
        
    for(u32AefId = 0; u32AefId < AFLT_MAX_CHAN_NUM; u32AefId++)
    {
        if(pstSndSettings->u32AttAef & ((HI_U32)1L << u32AefId))
        {
            if(HI_SUCCESS != AEFAttachSnd(pCard, u32AefId))
            {
                return HI_FAILURE;
            }
        }
        pCard->hAefProc[u32AefId] = pstSndSettings->hAefProc[u32AefId];
    }
    
    pCard->u32AttAef = pstSndSettings->u32AttAef;
    return HI_SUCCESS; 
}

HI_S32 SND_ReadAefProc( struct seq_file* p, SND_CARD_STATE_S *pCard )
{
    HI_U32 i;
    HI_HANDLE hAefProc;
    AO_AEF_PROC_ITEM_S  *pstProcItem;
    
    for(i = 0; i < AFLT_MAX_CHAN_NUM; i++)
    {
        if(pCard->u32AttAef & ((HI_U32)1L << i))
        {
            hAefProc = pCard->hAefProc[i];
            if(HI_NULL == hAefProc)            
            {
                return HI_FAILURE;
            }
            pstProcItem = ((SND_AEF_PROC_ATTR_S *)hAefProc)->pstProcItem;
            PROC_PRINT(p,
               "Aef(%d): Type(%s), AuthDescription(%s), Status(%s)\n",
                pstProcItem->u32AefId,
                pstProcItem->szName,
                pstProcItem->szDescription,
               (HI_CHAR*)((HI_TRUE == pstProcItem->bEnable) ? "start" : "stop"));
        }
    }

    PROC_PRINT(p,"\n");

    return HI_SUCCESS;
}