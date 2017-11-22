#include <sys/types.h>
#include <sys/stat.h>

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <ctype.h>
#include <time.h>
#include <string.h>   /* for NULL */
#include <unistd.h>

#include "hi_adp.h"

#include "hi_adp_tuner.h"
#include "hi_adp_boardcfg.h"
#include "hi_unf_ecs.h"
#include "hi_unf_frontend.h"

static HI_UNF_TUNER_SIG_TYPE_E g_enSigType[HI_TUNER_NUMBER];


#if 0
#define     ACTIVE_TUNER_ID 0
HI_S32  DVB_CabTunerInit()
{
    HI_UNF_TUNER_ATTR_S TunerAttr;

    /* Initialize Tuner*/
    HIAPI_RUN_RETURN(HI_UNF_TUNER_Init());

    /* open Tuner*/
    HIAPI_RUN_RETURN(HI_UNF_TUNER_Open(ACTIVE_TUNER_ID));

    /*get default attribute in order to set attribute next*/
    HIAPI_RUN_RETURN(HI_UNF_TUNER_GetDeftAttr(ACTIVE_TUNER_ID, &TunerAttr));

    HIAPI_RUN_RETURN(HI_UNF_TUNER_SetAttr(ACTIVE_TUNER_ID, &TunerAttr));

    return HI_SUCCESS;
}

HI_S32  DVB_CabTunerDeInit()
{
    HI_S32 s32Ret = HI_SUCCESS;

    HIAPI_RUN(HI_UNF_TUNER_Close(ACTIVE_TUNER_ID),s32Ret);
    HIAPI_RUN(HI_UNF_TUNER_DeInit(),s32Ret);

    return HI_SUCCESS;
}

/***********************************************************
	u32freq : MHZ
	u32SymbolRate : KHZ
	u32qam : 0:16QAM 1:32QAM 2:64QAM 3:128QAM 4:256QAM
************************************************************/
HI_S32  DVB_CabTunerLock(HI_U32 u32TunerPort,HI_U32 u32freq, HI_U32 u32SymbolRate, HI_U32 u32qam)
{
    HI_U32 i;
    HI_S32 ret;
    HI_UNF_TUNER_CONNECT_PARA_S stConnectPara;
    HI_UNF_TUNER_STATUS_S stTunerStatus;
    
    stConnectPara.enSigType = HI_UNF_TUNER_SIG_TYPE_CAB;
    stConnectPara.unConnectPara.stCab.bReverse   = 0;
    stConnectPara.unConnectPara.stCab.u32Freq = u32freq * 1000;
    stConnectPara.unConnectPara.stCab.u32SymbolRate = u32SymbolRate * 1000;
    stConnectPara.unConnectPara.stCab.enModType = u32qam + HI_UNF_MOD_TYPE_QAM_16;

    /*connect Tuner*/
    HIAPI_RUN_RETURN(HI_UNF_TUNER_Connect(u32TunerPort, &stConnectPara, 500));

    /*wait for 5 second, then output error log if tuner is not locked */
    for (i = 0; i < 50; i++)
    {
        ret = HI_UNF_TUNER_GetStatus(u32TunerPort, &stTunerStatus);
        if ((HI_SUCCESS == ret) && (HI_UNF_TUNER_SIGNAL_LOCKED == stTunerStatus.enLockStatus))
        {
            sample_printf("tuner lock %d success !\n",stConnectPara.unConnectPara.stCab.u32Freq);
            break;
        }

        usleep(100000);
    }

    /*if tuner locked then print message"tuner have locked"*/
    if (HI_UNF_TUNER_SIGNAL_LOCKED != stTunerStatus.enLockStatus)
    {
        sample_printf("tuner lock %d failed !\n",stConnectPara.unConnectPara.stCab.u32Freq);
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}
#endif


/********************************* TUNER public function*******************************************/

HI_S32 HIADP_Tuner_GetConfig(HI_U32 TunerId, HI_UNF_TUNER_ATTR_S *TunerAttr)
{

    switch (TunerId)
    {
        case 0:
        {
            TunerAttr->enSigType        = HI_TUNER_SIGNAL_TYPE;
            TunerAttr->enTunerDevType   = HI_TUNER_TYPE;
            TunerAttr->u32TunerAddr     = HI_TUNER_DEV_ADDR;
            TunerAttr->enDemodDevType   = HI_DEMOD_TYPE;
            TunerAttr->u32DemodAddr     = HI_DEMOD_DEV_ADDR;
            TunerAttr->enOutputMode     = HI_DEMOD_TS_MODE;
            TunerAttr->u32ResetGpioNo   = HI_DEMOD_RESET_GPIO;
			TunerAttr->unTunerAttr.stTer.u32ResetGpioNo = HI_DEMOD_RESET_GPIO;
			TunerAttr->unTunerAttr.stSat.u32ResetGpioNo = HI_DEMOD_RESET_GPIO;
            TunerAttr->enI2cChannel     = HI_DEMOD_I2C_CHANNEL;

#ifdef GET_MULTIMODE_DEMOD_CONFIG
            {
                GET_MULTIMODE_DEMOD_CONFIG(0,TunerAttr->stPortAttr);
            }
#endif

            break;
        }
#if ((HI_DEMOD_TYPE == 270) && (HI_TUNER_NUMBER == 2))
        case 1:
        {
            TunerAttr->enSigType        = HI_TUNER1_SIGNAL_TYPE;
            TunerAttr->enTunerDevType   = HI_TUNER1_TYPE;
            TunerAttr->u32TunerAddr     = HI_TUNER1_DEV_ADDR;
            TunerAttr->enDemodDevType   = HI_DEMOD1_TYPE;
            TunerAttr->u32DemodAddr     = HI_DEMOD1_DEV_ADDR;
            TunerAttr->enOutputMode     = HI_DEMOD1_TS_MODE;
            TunerAttr->u32ResetGpioNo   = HI_DEMOD1_RESET_GPIO;
            TunerAttr->enI2cChannel     = HI_DEMOD1_I2C_CHANNEL;

#ifdef GET_MULTIMODE_DEMOD_CONFIG
            {
                GET_MULTIMODE_DEMOD_CONFIG(1,TunerAttr->stPortAttr);
            }
#endif
            break;
        }
#endif        
        default:
        {
            sample_printf("[%s] tunerid %u error\n", __FUNCTION__, TunerId);
            return HI_FAILURE;
        }
    }


    sample_printf("[%s] TunerId=%u, TunerType=%u, TunerAddr=0x%x, I2cChannel=%u, DemodAddr=0x%x, DemodType=%u, OutputMode=%d\n",
        __FUNCTION__, TunerId, TunerAttr->enTunerDevType, TunerAttr->u32TunerAddr,
        TunerAttr->enI2cChannel, TunerAttr->u32DemodAddr, TunerAttr->enDemodDevType, TunerAttr->enOutputMode);

    return HI_SUCCESS;
}

HI_S32 HIADP_Tuner_Init(HI_VOID)
{
    HI_S32   Ret;
    HI_UNF_TUNER_ATTR_S          TunerAttr;
    HI_U32 i = 0;


    /* Initialize Tuner*/
    Ret = HI_UNF_TUNER_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_TUNER_Init failed.\n");
        return Ret;
    }

    for (i = 0; i < HI_TUNER_NUMBER; i++)
    {
        /* open Tuner*/
        Ret = HI_UNF_TUNER_Open(TUNER_USE);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_TUNER_Open failed.\n");
            HI_UNF_TUNER_DeInit();
            return Ret;
        }

        /* set attr */
        /*get default attribute in order to set attribute next*/
        Ret = HI_UNF_TUNER_GetDeftAttr(i, &TunerAttr);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_TUNER_GetDeftAttr failed.\n");
            HI_UNF_TUNER_Close(TUNER_USE);
            HI_UNF_TUNER_DeInit();
            return Ret;
        }

        Ret = HIADP_Tuner_GetConfig(i, &TunerAttr);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("[%s] HIADP_Tuner_GetConfig failed 0x%x\n", __FUNCTION__, Ret);
            break;
        }
        
        sample_printf("****************************************************************************\n");
        sample_printf("TunerId=%u, TunerType=%u, TunerAddr=0x%x, I2cChannel=%u, DemodAddr=0x%x, \nDemodType=%u,SigType:%u,OutputMode:%u,ResetGpioNo:%u\n",
             i, TunerAttr.enTunerDevType, TunerAttr.u32TunerAddr,
            TunerAttr.enI2cChannel, TunerAttr.u32DemodAddr, TunerAttr.enDemodDevType,
            TunerAttr.enSigType,TunerAttr.enOutputMode,TunerAttr.u32ResetGpioNo);
        sample_printf("****************************************************************************\n");
        
        Ret = HI_UNF_TUNER_SetAttr(i, &TunerAttr);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_TUNER_SetAttr failed.\n");
            HI_UNF_TUNER_Close(TUNER_USE);
            HI_UNF_TUNER_DeInit();
            return Ret;
        }

        g_enSigType[i] = TunerAttr.enSigType;
    }

    /* set 0 spec attr */
#ifdef GET_SAT_TUNER_CONFIG
    {
    	HI_UNF_TUNER_SAT_ATTR_S   stSatTunerAttr;
		
        GET_SAT_TUNER_CONFIG(stSatTunerAttr);
        Ret = HI_UNF_TUNER_SetSatAttr(TUNER_USE, &stSatTunerAttr);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_TUNER_SetAttr failed.\n");
            return Ret;
        }
    }
#endif

#ifdef GET_TER_TUNER_CONFIG
    {
        HI_UNF_TUNER_TER_ATTR_S     stTerTunerAttr;

        GET_TER_TUNER_CONFIG(stTerTunerAttr);
        Ret = HI_UNF_TUNER_SetTerAttr(TUNER_USE, &stTerTunerAttr);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_TUNER_SetTerAttr failed.\n");
            return Ret;
        }
    }
#endif

#ifdef GET_CAB_TUNER_CONFIG
    {
        if (TunerAttr.enDemodDevType == HI_UNF_DEMOD_DEV_TYPE_3138)
        {
            HI_UNF_TUNER_CAB_ATTR_S stCabTunerAttr;

            GET_CAB_TUNER_CONFIG(stCabTunerAttr);        
            Ret = HI_UNF_TUNER_SetCabAttr(TUNER_USE, &stCabTunerAttr);
            if (HI_SUCCESS != Ret)
            {
                sample_printf("call HI_UNF_TUNER_SetCabAttr failed.\n");
                return Ret;
            }
        }
    }
#endif

    if(HI_TUNER_NUMBER == 2)
    {
    /* set 1 spec attr */
#if (HI_DEMOD1_TYPE == 270)
#ifdef GET_SAT_TUNER1_CONFIG
    {
    	HI_UNF_TUNER_SAT_ATTR_S   stSatTunerAttr1;
		
        GET_SAT_TUNER1_CONFIG(stSatTunerAttr1);
        Ret = HI_UNF_TUNER_SetSatAttr(TUNER1_USE, &stSatTunerAttr1);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_TUNER_SetAttr failed.\n");
            return Ret;
        }
    }
#endif

#ifdef GET_TER_TUNER1_CONFIG
    {
        HI_UNF_TUNER_TER_ATTR_S     stTerTunerAttr1;

        GET_TER_TUNER1_CONFIG(stTerTunerAttr1);
        Ret = HI_UNF_TUNER_SetTerAttr(TUNER1_USE, &stTerTunerAttr1);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HI_UNF_TUNER_SetTerAttr failed.\n");
            return Ret;
        }
    }
#endif

#ifdef GET_CAB_TUNER1_CONFIG
    {
        if (TunerAttr.enDemodDevType == HI_UNF_DEMOD_DEV_TYPE_3138)
        {
            HI_UNF_TUNER_CAB_ATTR_S     stCabTunerAttr1;

            GET_CAB_TUNER1_CONFIG(stCabTunerAttr1);        
            Ret = HI_UNF_TUNER_SetCabAttr(TUNER1_USE, &stCabTunerAttr1);
            if (HI_SUCCESS != Ret)
            {
                sample_printf("call HI_UNF_TUNER_SetCabAttr failed.\n");
                return Ret;
            }
        }
    }
#endif
#endif
    }

    return HI_SUCCESS;
}


HI_S32 HIADP_Tuner_SetTsOut(HI_VOID)
{
    HI_S32 i = 0;
    HI_S32 s32Ret = 0;
    HI_UNF_TUNER_TSOUT_SET_S stTSOut;

    
    for(i=0 ;i < HI_TUNER_NUMBER;i++)
    {
        if(0 == i)
        {
#ifdef GET_TUNER_TSOUT_CONFIG
            {
                GET_TUNER_TSOUT_CONFIG(stTSOut);
            }
#endif
            
        }
        else
        {
#ifdef GET_TUNER1_TSOUT_CONFIG
            {
                GET_TUNER1_TSOUT_CONFIG(stTSOut);
            }
#endif
            
        }

        s32Ret = HI_UNF_TUNER_SetTSOUT(i, &stTSOut);
        if (HI_SUCCESS != s32Ret)
        {
            sample_printf("call HI_UNF_TUNER_SetTSOUT failed.\n");
            return s32Ret;
        }
    }

    return HI_SUCCESS;
}

/* Freq:MHZ  SymbolRate:KHZ  */
HI_S32 HIADP_Tuner_Connect(HI_U32 TunerID,HI_U32 Freq,HI_U32 SymbolRate,HI_U32 QamType)
{
    HI_UNF_TUNER_CONNECT_PARA_S  ConnectPara;

    ConnectPara.enSigType = g_enSigType[TunerID];
    ConnectPara.unConnectPara.stCab.bReverse = 0;
    ConnectPara.unConnectPara.stCab.u32Freq = Freq * 1000;
    ConnectPara.unConnectPara.stCab.u32SymbolRate = SymbolRate * 1000;
    switch (QamType)
    {
        case 16 :
            ConnectPara.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_16;
            break;
        case 32 :
            ConnectPara.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_32;
            break;
        case 64 :
            ConnectPara.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_64;
            break;
        case 128 :
            ConnectPara.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_128;
            break;
        case 256 :
            ConnectPara.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_256;
            break;
        case 512 :
            ConnectPara.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_512;
            break;            
        default:
            ConnectPara.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_64; 
    }

    /* connect Tuner*/
    return HI_UNF_TUNER_Connect(TUNER_USE, &ConnectPara, 500);
}

HI_VOID HIADP_Tuner_DeInit(HI_VOID)
{
    HI_UNF_TUNER_Close(TUNER_USE);
    HI_UNF_TUNER_DeInit();
}

