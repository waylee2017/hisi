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


#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */


#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/poll.h>
#include <pthread.h>
#include <dlfcn.h>
#include <dirent.h>

#include "hi_type.h"
#include "hi_debug.h"
#include "hi_module.h"
#include "hi_mpi_mem.h"
#include "hi_error_mpi.h"

#include "hi_unf_common.h"
#include "hi_mpi_ao.h"
#include "hi_drv_ao.h"
#include "mpi_aef.h"

static HI_VOID *s_apAefChn[AEF_MAX_INSTANCE_NUM] = {0};
/* aef authorize management */
static HI_AEF_AUTHORIZE_S *g_hFirstAefAuth = NULL;

#if defined(HI_HAEFFECT_BASE_SUPPORT)
extern HI_AEF_COMPONENT_S ha_base_effect_entry;
#endif

#if defined(HI_HAEFFECT_SRS_SUPPORT)
extern HI_AEF_COMPONENT_S srs_effect_entry;
#endif

static HI_U32 AEFHandle2ID(HI_HANDLE hAef)
{
    return hAef & AO_AEF_CHNID_MASK;
}

static HI_AEF_AUTHORIZE_S *AEFFindHaEffectAuth(HI_U32 enEffectID)
{
    HI_AEF_AUTHORIZE_S *p;

    p = g_hFirstAefAuth;
    while (p)
    {
        if ((HA_GET_ID(p->enEffectID) == HA_GET_ID(enEffectID)))
        {

            return p;
        }

        p = p->pstNext;
    }

    HI_ERR_AO ("  AEFFindHaAffectAuth  effect(ID=0x%x) Fail \n", enEffectID);

    return NULL;
}

static HI_S32 AEFCheckHaEffectAuth(const HI_AEF_AUTHORIZE_S *pEntry)
{
    CHECK_AO_NULL_PTR(pEntry->GetAuthKey);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AO_AEF_RegisterAuthLib(const HI_CHAR *pAefLibFileName)
{
    HI_VOID * pDllModule;
    HI_AEF_AUTHORIZE_S **p;
    HI_AEF_AUTHORIZE_S *pEntry;
    
    CHECK_AO_NULL_PTR(pAefLibFileName);

    /* load the audio effect authorize lib and check for an error.  If filename is not an
     * absolute path (i.e., it does not  begin with a "/"), then the
     * file is searched for in the following locations:
     *
     *     The LD_LIBRARY_PATH environment variable locations
     *     The library cache, /etc/ld.so.cache.
     *     /lib
     *     /usr/lib
     *
     * If there is an error, we can't go on, so set the error code and exit */
    pDllModule = dlopen(pAefLibFileName, RTLD_LAZY | RTLD_GLOBAL);
    if (pDllModule == NULL)
    {
        HI_WARN_AO ( "  ****** Audio effect authorize lib %s failed because dlopen fail %s\n\n", pAefLibFileName, dlerror());
        return HI_FAILURE;
    }

    /* Get a entry pointer to the "ha_audio_decode_entry" .  If
     * there is an error, we can't go on, so set the error code and exit */
    pEntry = (HI_AEF_AUTHORIZE_S *)dlsym(pDllModule, "ha_audio_effect_auth_entry");
    if (pEntry == NULL)
    {
        HI_ERR_AO ( "  %s Failed because dlsym fail %s\n\n", pAefLibFileName, dlerror());
        dlclose(pDllModule);
        return HI_FAILURE;
    }

    if (HI_SUCCESS != AEFCheckHaEffectAuth(pEntry))
    {
        HI_ERR_AO ( " Register %s Failed \n", pAefLibFileName);
        dlclose(pDllModule);
        return HI_FAILURE;
    }

    p = &g_hFirstAefAuth;
    while (*p != NULL)
    {
        if (HA_GET_ID((*p)->enEffectID) == HA_GET_ID(pEntry->enEffectID))
        {
            HI_WARN_AO ( " Fail:Effect(ID=0x%x) had been Registered \n\n",
                           pEntry->enEffectID);
            dlclose(pDllModule);
            return HI_SUCCESS;
        }

        p = &(*p)->pstNext;
    }

    HI_INFO_AO ( "##### %s Effect Auth  Success #####\n\n", (HI_CHAR*)(pEntry->szName));

    *p = pEntry;
    (*p)->pstNext = NULL;
    //(*p)->pDllModule = pDllModule;  //TODO if need?
    
    return HI_SUCCESS;
}

static HI_AEF_COMPONENT_S *AEFFindHaEffectComp(HI_UNF_SND_AEF_TYPE_E enEffectID)
{
    switch(enEffectID)
    {
#if defined(DOLBYDV258_SUPPORT)        
        case HI_UNF_SND_AEF_TYPE_DOLBYDV258:
            return &ha_dolbydv258_entry;
#endif  

#if defined(HI_HAEFFECT_SRS_SUPPORT)
        case HI_UNF_SND_AEF_TYPE_SRS3D:
            return &srs_effect_entry; 
#endif

#if defined(HI_HAEFFECT_BASE_SUPPORT)
        case HI_UNF_SND_AEF_TYPE_BASE:
            return &ha_base_effect_entry;
#endif

        default:
            return HI_NULL;
    }
}


static HI_S32 AEFAllocChn(HI_U32 *pu32AefId)
{
    HI_U32 u32AefId;
    
    for(u32AefId = 0; u32AefId < AEF_MAX_INSTANCE_NUM; u32AefId++)
    {
        if(HI_NULL == s_apAefChn[u32AefId])
        {
            break;
        }
    }
    if(u32AefId == AEF_MAX_INSTANCE_NUM)
    {
        HI_ERR_AO(" no aef resource\n");
        return HI_FAILURE;
    }

    *pu32AefId = u32AefId;
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AO_AEF_Create(HI_UNF_SND_E enSound, HI_UNF_SND_AEF_TYPE_E enAefType, HI_VOID *pstAdvAttr, HI_HANDLE *phAef)
{
    HI_S32 s32Ret;
    HI_U32 u32AefId;
    HI_HANDLE hHaEffect = HI_INVALID_HANDLE;
    HI_U32    u32AfltId;
    HI_AEF_AUTHORIZE_S *pstAuthEntry = HI_NULL;
    HI_AEF_COMPONENT_S *pstEntry = HI_NULL;
    AEF_CHANNEL_S *pstAefChn = HI_NULL;
    HI_U32 u32AefProcAddr;
    AO_AEF_PROC_ITEM_S    *pstProcItem;
    
    CHECK_AO_NULL_PTR(pstAdvAttr);
    CHECK_AO_NULL_PTR(phAef);

    s32Ret = AEFAllocChn(&u32AefId);
    if(HI_SUCCESS != s32Ret)
    {
        goto AEF_ERR_RETURE;
    }

    if(enAefType != HI_UNF_SND_AEF_TYPE_BASE)
    {
        //find effect authorize lib
        pstAuthEntry = AEFFindHaEffectAuth((HI_U32)enAefType);
        if (HI_NULL == pstAuthEntry)
        {
            HI_ERR_AO("  AEFFindHaEffectAuth fail u32EffectID(0x%x) ! \n", (HI_U32)enAefType);
            goto AEF_ERR_RETURE;
        }
    }

    //get authorize key
    //pstAuthEntry->GetAuthKey(pu32AuthKey);  //TODO return value

    //find effect component
    pstEntry = AEFFindHaEffectComp(enAefType);
    if(HI_NULL == pstEntry)
    {
        HI_ERR_AO(" can't find haeffect component %d\n", enAefType);
        goto AEF_ERR_RETURE;
    }

    //alloc aef channel
    pstAefChn = (AEF_CHANNEL_S *)HI_MALLOC(HI_ID_AO, sizeof(AEF_CHANNEL_S));
    if(HI_NULL == pstAefChn)
    {
        HI_ERR_AO(" Aef malloc channel failed\n");
        goto AEF_ERR_RETURE;
    }

    //create aef channe //TODO¡¡pstAdvAttr
    s32Ret = pstEntry->AefCreate(pstAuthEntry, pstAdvAttr, &hHaEffect);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" Aef create failed\n");
        goto AEF_ERR_MALLOC;
    }

    s32Ret = pstEntry->AefGetConfig(hHaEffect, HI_AEF_GET_AFLTID_CMD, (HI_VOID *)(&u32AfltId));
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" AefGetConfig failed\n");
        goto AEF_ERR_MALLOC;
    }

    //attach aef channel sound
    s32Ret = HI_MPI_AO_SND_AttachAef(enSound, u32AfltId, &u32AefProcAddr);  //TODO AFLT_CHNID_MASK&hAef
    if(HI_SUCCESS != s32Ret || 0 == u32AefProcAddr)
    {
        HI_ERR_AO(" Aef[%d] attach sound[%d] failed\n", u32AefId, enSound);
        goto AEF_ERR_CREATE;
    }

    pstProcItem = (AO_AEF_PROC_ITEM_S *)HI_MEM_Map(u32AefProcAddr, sizeof(AO_AEF_PROC_ITEM_S));
    if(HI_NULL == pstProcItem)
    {
        HI_ERR_AO(" HI_MEM_Map aef proc item failed\n");
        goto AEF_ERR_ATTACH;
    }

    //save proc info
    pstProcItem->enAefType = enAefType;
    pstProcItem->bEnable   = pstAefChn->bEnable;
    pstProcItem->u32AefId  = u32AefId;
    strncpy(pstProcItem->szName, pstEntry->szName, sizeof(pstProcItem->szName));
    if(enAefType != HI_UNF_SND_AEF_TYPE_BASE)
    {
        strncpy(pstProcItem->szDescription, pstAuthEntry->pszCustomerDescription, sizeof(pstProcItem->szDescription));
    }
    else
    {
        snprintf(pstProcItem->szDescription, sizeof(pstProcItem->szDescription), "None");
    }
    pstProcItem->szName[sizeof(pstProcItem->szName) - 1] = '\0';  //TQE
    //save info into aef channel
    pstAefChn->hHaEffect = hHaEffect;
    pstAefChn->hEntry = (HI_HANDLE)pstEntry;
    pstAefChn->enSnd  = enSound;
    pstAefChn->bEnable = HI_FALSE;
    pstAefChn->pstProcItem = pstProcItem;

    s_apAefChn[u32AefId] = (HI_VOID *)pstAefChn;

 /*
  define of Aef Handle :
  bit31                                                           bit0
    |<----   16bit --------->|<---   8bit    --->|<---  8bit   --->|
    |--------------------------------------------------------------|
    |      HI_MOD_ID_E       |  sub_mod defined  |     chnID       |
    |--------------------------------------------------------------|
 */
    *phAef = (HI_ID_AO << 16) | (HI_ID_AEF << 8) | u32AefId;

    return HI_SUCCESS;
    
AEF_ERR_ATTACH:
    (HI_VOID)HI_MPI_AO_SND_DetachAef(enSound, u32AfltId);

AEF_ERR_CREATE:
    (HI_VOID)pstEntry->AefDestroy(hHaEffect);
    
AEF_ERR_MALLOC:
    HI_FREE(HI_ID_AO, pstAefChn);

AEF_ERR_RETURE:
    return HI_FAILURE;
}

HI_S32 HI_MPI_AO_AEF_Destroy(HI_HANDLE hAef)
{
    HI_S32 s32Ret;
    HI_U32 u32AefId;
    HI_U32 u32AfltId;
    HI_AEF_COMPONENT_S *pstEntry = HI_NULL;
    AEF_CHANNEL_S *pstAefChn     = HI_NULL;

    CHECK_AO_AEF_HANDLE(hAef);
    u32AefId = AEFHandle2ID(hAef);

    pstAefChn = (AEF_CHANNEL_S *)s_apAefChn[u32AefId];

    if(pstAefChn->pstProcItem)
    {
        HI_MEM_Unmap((HI_VOID *)pstAefChn->pstProcItem);
        pstAefChn->pstProcItem = HI_NULL;
    }

    pstEntry = (HI_AEF_COMPONENT_S *)pstAefChn->hEntry;
    s32Ret = pstEntry->AefGetConfig(pstAefChn->hHaEffect, HI_AEF_GET_AFLTID_CMD, (HI_VOID *)(&u32AfltId));
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" AefGetConfig failed\n");
        return HI_FAILURE;
    }
    
    s32Ret = HI_MPI_AO_SND_DetachAef(pstAefChn->enSnd, u32AfltId);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" Aef[%d] detach sound[0x%x] failed\n", pstAefChn->enSnd, u32AefId);
        return HI_FAILURE;
    }

    s32Ret = pstEntry->AefDestroy(pstAefChn->hHaEffect);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" Aef destory failed\n");
        return HI_FAILURE;
    }

    HI_FREE(HI_ID_AO, pstAefChn);
    s_apAefChn[u32AfltId] = HI_NULL;

    return HI_SUCCESS;

}    

HI_S32 HI_MPI_AO_AEF_SetEnable(HI_HANDLE hAef, HI_BOOL bEnable)
{
    HI_S32 s32Ret;
    HI_U32 u32AefId;
    HI_AEF_COMPONENT_S *pstEntry = HI_NULL;
    AEF_CHANNEL_S *pstAefChn     = HI_NULL;

    CHECK_AO_AEF_HANDLE(hAef);
    u32AefId = AEFHandle2ID(hAef);

    pstAefChn = (AEF_CHANNEL_S *)s_apAefChn[u32AefId];
    pstEntry = (HI_AEF_COMPONENT_S *)pstAefChn->hEntry;
    
    s32Ret = pstEntry->AefSetEnable(pstAefChn->hHaEffect, bEnable);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" Aef setEnable failed\n");
        return HI_FAILURE;
    }
    pstAefChn->bEnable = bEnable;
    pstAefChn->pstProcItem->bEnable = bEnable;
    
    return HI_SUCCESS;
}    

HI_S32 HI_MPI_AO_AEF_GetEnable(HI_HANDLE hAef, HI_BOOL *pbEnable)
{
    HI_U32 u32AefId;
    AEF_CHANNEL_S *pstAefChn     = HI_NULL;
    CHECK_AO_NULL_PTR(pbEnable);
    CHECK_AO_AEF_HANDLE(hAef);
    u32AefId = AEFHandle2ID(hAef);
    pstAefChn = (AEF_CHANNEL_S *)s_apAefChn[u32AefId];
    *pbEnable = pstAefChn->bEnable;
    return HI_SUCCESS;
} 
HI_S32 HI_MPI_AO_AEF_SetParams(HI_HANDLE hAef, HI_U32 u32ParamType, const HI_VOID *pstParms)
{
    HI_S32 s32Ret;
    HI_U32 u32AefId;
    HI_AEF_COMPONENT_S *pstEntry = HI_NULL;
    AEF_CHANNEL_S *pstAefChn     = HI_NULL;

    CHECK_AO_NULL_PTR(pstParms);
    CHECK_AO_AEF_HANDLE(hAef);
    u32AefId = AEFHandle2ID(hAef);

    pstAefChn = (AEF_CHANNEL_S *)s_apAefChn[u32AefId];
    pstEntry = (HI_AEF_COMPONENT_S *)pstAefChn->hEntry;

    if(HI_TRUE == pstAefChn->bEnable)
    {
        HI_ERR_AO(" should stop aef before Set Aef Parameter\n");
        return HI_FAILURE;
    }
    
    s32Ret = pstEntry->AefSetParameter(pstAefChn->hHaEffect, u32ParamType, pstParms);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" Aef SetParameter failed\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}     

HI_S32 HI_MPI_AO_AEF_GetParams(HI_HANDLE hAef, HI_U32 u32ParamType, HI_VOID *pstParms)
{
    HI_S32 s32Ret;
    HI_U32 u32AefId;
    HI_AEF_COMPONENT_S *pstEntry = HI_NULL;
    AEF_CHANNEL_S *pstAefChn     = HI_NULL;

    CHECK_AO_NULL_PTR(pstParms);
    CHECK_AO_AEF_HANDLE(hAef);
    u32AefId = AEFHandle2ID(hAef);

    pstAefChn = (AEF_CHANNEL_S *)s_apAefChn[u32AefId];
    pstEntry = (HI_AEF_COMPONENT_S *)pstAefChn->hEntry;
    
    s32Ret = pstEntry->AefGetParameter(pstAefChn->hHaEffect, u32ParamType, pstParms);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" Aef GetParameter failed\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}    

HI_S32 HI_MPI_AO_AEF_SetConfig(HI_HANDLE hAef, HI_U32 u32CfgType, const HI_VOID *pstConfig)
{
    HI_S32 s32Ret;
    HI_U32 u32AefId;
    HI_AEF_COMPONENT_S *pstEntry = HI_NULL;
    AEF_CHANNEL_S *pstAefChn     = HI_NULL;

    CHECK_AO_NULL_PTR(pstConfig);
    CHECK_AO_AEF_HANDLE(hAef);
    u32AefId = AEFHandle2ID(hAef);

    pstAefChn = (AEF_CHANNEL_S *)s_apAefChn[u32AefId];
    pstEntry = (HI_AEF_COMPONENT_S *)pstAefChn->hEntry;
    
    s32Ret = pstEntry->AefSetConfig(pstAefChn->hHaEffect, u32CfgType, pstConfig);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" Aef SetConfig failed\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}     

HI_S32 HI_MPI_AO_AEF_GetConfig(HI_HANDLE hAef, HI_U32 u32CfgType, HI_VOID *pstConfig)  
{
    HI_S32 s32Ret;
    HI_U32 u32AefId;
    HI_AEF_COMPONENT_S *pstEntry = HI_NULL;
    AEF_CHANNEL_S *pstAefChn     = HI_NULL;

    CHECK_AO_NULL_PTR(pstConfig);
    CHECK_AO_AEF_HANDLE(hAef);
    u32AefId = AEFHandle2ID(hAef);

    pstAefChn = (AEF_CHANNEL_S *)s_apAefChn[u32AefId];
    pstEntry = (HI_AEF_COMPONENT_S *)pstAefChn->hEntry;
    
    s32Ret = pstEntry->AefGetConfig(pstAefChn->hHaEffect, u32CfgType, pstConfig);
    if(HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" Aef GetConfig failed\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
