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
/* Sys headers */
#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/vmalloc.h>
#include <linux/interrupt.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>

/* Unf headers */
#include "hi_error_mpi.h"

/* Drv headers */
#include "hi_drv_ao.h"
#include "drv_ao_ioctl.h"
#include "drv_ao_ext.h"
#include "drv_adsp_ext.h"
#include "drv_ao_private.h"

#include "hi_audsp_aoe.h"
#include "hal_aoe.h"
#include "hal_cast.h"
#include "hal_aiao.h"
//#include "hi_drv_file.h"
#include "drv_file_ext.h"
#include "drv_timer_private.h"
#include "audio_util.h"

#include "drv_timer.h"
static TIMER_GLOBAL_RESOURCE_S  g_pstGlobalTIMERRS;

HI_VOID Timer_Drv_GetDefParam(AIAO_TIMER_Attr_S *pstTimerDefaultAttr)
{
    pstTimerDefaultAttr->stIfAttr.enRate = HI_UNF_SAMPLE_RATE_48K;
    pstTimerDefaultAttr->stIfAttr.u32BCLK_DIV = HI_UNF_I2S_BCLK_4_DIV;
    pstTimerDefaultAttr->stIfAttr.u32FCLK_DIV = HI_UNF_I2S_MCLK_256_FS;
    pstTimerDefaultAttr->u32Config = TIMER_INTERRUPT_CONFIG_DF;

}

static HI_S32 Timer_AllocHandle(HI_HANDLE *phHandle)
{
    HI_U32 i;
    
    if (HI_NULL == phHandle)
    {
        HI_ERR_AO("Bad param!\n");
        return HI_FAILURE;
    }
    
    /* Allocate new Ai channel */
    for (i = 0; i < TIMER_MAX_TOTAL_NUM; i++)
    {
        if (NULL == g_pstGlobalTIMERRS.pstTIMER_ATTR_S[i])
        {
            break;
        }
    }

    if (i >= TIMER_MAX_TOTAL_NUM)
    {
        HI_ERR_AO("Too many Timer channel!\n");
        return HI_FAILURE;
    }
        
    *phHandle = i;
        
    return HI_SUCCESS;


}


static HI_VOID Timer_FreeHandle(HI_HANDLE hHandle)
{
    g_pstGlobalTIMERRS.pstTIMER_ATTR_S[hHandle] = NULL;
}


static HI_S32 Timer_Create(AIAO_Timer_Create_S *pstParam,HI_HANDLE handle)
{
    HI_S32 Ret,i;
    TIMER_CHANNEL_STATE_S *state = HI_NULL;
    AIAO_TIMER_ID_E enTimerID;
    
    enTimerID = pstParam->enTimerID;
    
    for(i = 0;i < TIMER_MAX_TOTAL_NUM;i++)
    {
        if(g_pstGlobalTIMERRS.pstTIMER_ATTR_S[i])
        {
            if(g_pstGlobalTIMERRS.pstTIMER_ATTR_S[i]->enTimerID == enTimerID)
            {
                HI_ERR_AO("This Timer has been occupied!\n");
                return HI_FAILURE;
            }
                 
        }
    }

    state = (TIMER_CHANNEL_STATE_S *)AUTIL_AO_MALLOC(HI_ID_AO, sizeof(TIMER_CHANNEL_STATE_S), GFP_KERNEL);
    if (state == HI_NULL)
    {
        HI_FATAL_AO("HI_KMALLOC TIMER_Create failed\n");
        return HI_FAILURE;
    }

    memset(state, 0, sizeof(TIMER_CHANNEL_STATE_S));

    Ret = HAL_AIAO_T_Create(enTimerID,pstParam);
    if (HI_SUCCESS != Ret)
    {
        HI_FATAL_AO("HAL_AIAO_T_Create failed\n");
        goto TIMER_KfreeState_ERR_EXIT;
    }
    
    state->enTimerID = pstParam->enTimerID;

    g_pstGlobalTIMERRS.pstTIMER_ATTR_S[handle] = state;
    
    return HI_SUCCESS;        
TIMER_KfreeState_ERR_EXIT:
    HI_KFREE(HI_ID_AO, (HI_VOID*)state);
    return HI_FAILURE;

}


HI_S32 Timer_Drv_Create(HI_HANDLE *phHandle,AIAO_TimerIsrFunc *pFunc,void * substream)
{
    HI_HANDLE hHandle;
    HI_S32 Ret;
    AIAO_Timer_Create_S stParam;
        
    CHECK_AO_NULL_PTR(phHandle);
    
    Ret = Timer_AllocHandle(&hHandle);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_AO("Alloc Timer Handle failed!");
        return Ret;
    }
    
    stParam.enTimerID = (AIAO_TIMER_ID_E)hHandle;
    stParam.pTimerIsrFunc = pFunc;
    stParam.substream = substream;
    Ret = Timer_Create(&stParam,hHandle);
    if(HI_SUCCESS != Ret)
    {
        Timer_FreeHandle(hHandle);
        HI_ERR_AO("Timer Create failed!");
        return Ret;
    }
    
    phHandle = &hHandle; 

    HI_INFO_AO("Timer ID %d Create Success\n",(HI_U32)hHandle);
    return Ret;
}

HI_VOID Timer_Drv_Destroy(HI_HANDLE handle)
{
    TIMER_CHANNEL_STATE_S *state = HI_NULL;
    AIAO_TIMER_ID_E enTimerID;

    state = g_pstGlobalTIMERRS.pstTIMER_ATTR_S[handle];
    enTimerID = state->enTimerID;
    
    HAL_AIAO_T_Destroy(enTimerID);
    
    HI_INFO_AO("Timer ID %d Destroy Success\n",(HI_U32)enTimerID);
}

HI_S32 Timer_Drv_SetAttr(HI_HANDLE handle,HI_U32 u32Config,AIAO_SAMPLE_RATE_E enRate)
{
    AIAO_TIMER_ID_E enTimerID;
    TIMER_CHANNEL_STATE_S *state = HI_NULL;
    AIAO_TIMER_Attr_S stParam;
    HI_S32 Ret;
   
    state = g_pstGlobalTIMERRS.pstTIMER_ATTR_S[handle];
    enTimerID = state->enTimerID;

    stParam.enTimerID = enTimerID;
    stParam.u32Config = u32Config;
    stParam.stIfAttr.enRate = enRate;
    stParam.stIfAttr.u32BCLK_DIV = HI_UNF_I2S_BCLK_4_DIV;
    stParam.stIfAttr.u32FCLK_DIV = HI_UNF_I2S_MCLK_256_FS;

    Ret = HAL_AIAO_T_SetTimerAttr(enTimerID,&stParam);
    if(Ret != HI_SUCCESS)
    {
        HI_ERR_AO("Timer ID %d Set Attr Failed\n",(HI_U32)enTimerID); 
    }
    
    HI_INFO_AO("Timer ID %d Set Attr Success\n",(HI_U32)enTimerID);
    return Ret;
}


HI_S32 Timer_Drv_SetEnable(HI_HANDLE handle,HI_BOOL bEnalbe)
{
    TIMER_CHANNEL_STATE_S *state = HI_NULL; 
    AIAO_TIMER_ID_E enTimerID;
    HI_S32 Ret;
    
    state = g_pstGlobalTIMERRS.pstTIMER_ATTR_S[handle];
    enTimerID = state->enTimerID;
    
    Ret = HAL_AIAO_T_SetTimerEnable(enTimerID,bEnalbe);
    if(Ret != HI_SUCCESS)
    {
       HI_ERR_AO("Timer ID %d Set Enable %d Failed\n",(HI_U32)enTimerID,bEnalbe); 
    }
    
    HI_INFO_AO("Timer ID %d Set Enable %d Success\n",(HI_U32)enTimerID,bEnalbe);
        
    return Ret;
}


HI_S32 Timer_Drv_Suspend(HI_HANDLE handle)
{
    HI_S32 Ret = HI_SUCCESS;

    return Ret;
}


HI_S32 Timer_Drv_Resume(HI_HANDLE handle)
{
    HI_S32 Ret = HI_SUCCESS;
    return Ret;


}

HI_S32 HI_DRV_Timer_GetDefParam(AIAO_TIMER_ID_E enTimerID,AIAO_TIMER_Attr_S *pstParam)
{
    pstParam->enTimerID = enTimerID;
    
    Timer_Drv_GetDefParam(pstParam);

    return HI_SUCCESS;
}

HI_S32 HI_DRV_Timer_Create(HI_HANDLE *phHandle,AIAO_TimerIsrFunc *pFunc, void * substream)
{
    HI_S32 Ret;
    
    Ret = Timer_Drv_Create(phHandle,pFunc,substream);

    return Ret;
}

HI_S32 HI_DRV_Timer_Destroy(HI_HANDLE handle)
{
    Timer_Drv_Destroy(handle);

    return HI_SUCCESS;
}

HI_S32 HI_DRV_Timer_SetAttr(HI_HANDLE handle,HI_U32 u32Config,AIAO_SAMPLE_RATE_E enRate)
{
    HI_S32 Ret;
    
    Ret = Timer_Drv_SetAttr(handle,u32Config,enRate);

    return Ret;
}

HI_S32 HI_DRV_Timer_SetEnable(HI_HANDLE handle,HI_BOOL bEnalbe)
{
    HI_S32 Ret;
    
    Ret = Timer_Drv_SetEnable(handle,bEnalbe);

    return Ret;
}
