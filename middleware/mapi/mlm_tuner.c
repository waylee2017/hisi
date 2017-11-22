/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName ：ErrorCode.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：Jason   Reviewer : 
* Date ：2005-01-12
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：Jason   Reviewer : 
* 		Date ：2005-01-12
*		Record : Create File
****************************************************************************/
#include "string.h"
#include "mapi_inner.h"

#include "hi_adp_boardcfg.h"
#include "hi_unf_ecs.h"
#include "hi_unf_frontend.h"



/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */
#define m_LockWaitTime                   1000
#define NIM_NOTIFY_TASK_STK_SIZE         (1024*30)

#define m_TunerTaskIdle                   0
#define m_TunerTaskChecking                   1

#if 0
#define MLTUNER_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLTUNER_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLTUNER_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLTUNER_DEBUG(fmt, args...) {} //printf("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#endif


typedef MBT_VOID (*MLMF_pLockCallBack_t)(MMT_TUNER_TunerStatus_E eTunerState,MBT_U32 u32TunerID,MBT_U32 u32Frenq,MBT_U32 u32Sym, MMT_TUNER_QamType_E eQamType);

typedef struct _m_tuner_msg_t
{
    MLMF_pLockCallBack_t  tuner_Callback;
    MBT_U32 u32TunerState;
    MBT_U32 u32Frenq;
    MBT_U32 u32Sym;
    MBT_U32 u32Qam;
} MST_TUNER_MSG;

static HI_UNF_TUNER_LOCK_STATUS_E gTunerStatus = HI_UNF_TUNER_SIGNAL_BUTT;
static HI_UNF_TUNER_SIG_TYPE_E g_enSigType[HI_TUNER_NUMBER];

static MBT_U8   mv_Tuner_u8Initalised = 0;
static MLMF_pLockCallBack_t  mf_Tuner_pLockCall = NULL;
static MBT_U32   mv_Tuner_u32SymbolRate = 6875;
static MBT_U32   mv_Tuner_u32TransFrenq = 306;
static MMT_TUNER_QamType_E mv_Tuner_eQamType = MM_TUNER_QAM_64;

static HI_S32 _MLMF_Tuner_GetConfig(HI_U32 TunerId, HI_UNF_TUNER_ATTR_S *TunerAttr)
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
            MLTUNER_DEBUG("[%s] tunerid %u error\n", __FUNCTION__, TunerId);
            return HI_FAILURE;
        }
    }


    MLTUNER_DEBUG("[%s] TunerId=%u, TunerType=%u, TunerAddr=0x%x, I2cChannel=%u, DemodAddr=0x%x, DemodType=%u, OutputMode=%d\n",
        __FUNCTION__, TunerId, TunerAttr->enTunerDevType, TunerAttr->u32TunerAddr,
        TunerAttr->enI2cChannel, TunerAttr->u32DemodAddr, TunerAttr->enDemodDevType, TunerAttr->enOutputMode);

    return HI_SUCCESS;
}


static HI_S32 _MLMF_Tuner_Init(HI_VOID)
{
    HI_S32   Ret;
    HI_UNF_TUNER_ATTR_S          TunerAttr;
    HI_U32 i = 0;


    /* Initialize Tuner*/
    Ret = HI_UNF_TUNER_Init();
    if (HI_SUCCESS != Ret)
    {
        MLTUNER_DEBUG("call HI_UNF_TUNER_Init failed.\n");
        return Ret;
    }

    for (i = 0; i < HI_TUNER_NUMBER; i++)
    {
        /* open Tuner*/
        Ret = HI_UNF_TUNER_Open(TUNER_USE);
        if (HI_SUCCESS != Ret)
        {
            MLTUNER_DEBUG("call HI_UNF_TUNER_Open failed.\n");
            HI_UNF_TUNER_DeInit();
            return Ret;
        }

        /* set attr */
        /*get default attribute in order to set attribute next*/
        Ret = HI_UNF_TUNER_GetDeftAttr(i, &TunerAttr);
        if (HI_SUCCESS != Ret)
        {
            MLTUNER_DEBUG("call HI_UNF_TUNER_GetDeftAttr failed.\n");
            HI_UNF_TUNER_Close(TUNER_USE);
            HI_UNF_TUNER_DeInit();
            return Ret;
        }

        Ret = _MLMF_Tuner_GetConfig(i, &TunerAttr);
        if (HI_SUCCESS != Ret)
        {
            MLTUNER_DEBUG("[%s] HIADP_Tuner_GetConfig failed 0x%x\n", __FUNCTION__, Ret);
            break;
        }
        
        MLTUNER_DEBUG("****************************************************************************\n");
        MLTUNER_DEBUG("TunerId=%u, TunerType=%u, TunerAddr=0x%x, I2cChannel=%u, DemodAddr=0x%x, \nDemodType=%u,SigType:%u,OutputMode:%u,ResetGpioNo:%u\n",
             i, TunerAttr.enTunerDevType, TunerAttr.u32TunerAddr,
            TunerAttr.enI2cChannel, TunerAttr.u32DemodAddr, TunerAttr.enDemodDevType,
            TunerAttr.enSigType,TunerAttr.enOutputMode,TunerAttr.u32ResetGpioNo);
        MLTUNER_DEBUG("****************************************************************************\n");
        
        Ret = HI_UNF_TUNER_SetAttr(i, &TunerAttr);
        if (HI_SUCCESS != Ret)
        {
            MLTUNER_DEBUG("call HI_UNF_TUNER_SetAttr failed.\n");
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
            MLTUNER_DEBUG("call HI_UNF_TUNER_SetAttr failed.\n");
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
            MLTUNER_DEBUG("call HI_UNF_TUNER_SetTerAttr failed.\n");
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
                MLTUNER_DEBUG("call HI_UNF_TUNER_SetCabAttr failed.\n");
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
            MLTUNER_DEBUG("call HI_UNF_TUNER_SetAttr failed.\n");
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
            MLTUNER_DEBUG("call HI_UNF_TUNER_SetTerAttr failed.\n");
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
                MLTUNER_DEBUG("call HI_UNF_TUNER_SetCabAttr failed.\n");
                return Ret;
            }
        }
    }
#endif
#endif
    }

    return HI_SUCCESS;
}


static HI_S32 _MLMF_Tuner_Connect(HI_U32 TunerID,HI_U32 Freq,HI_U32 SymbolRate,HI_U32 QamType)
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

static MBT_VOID _MLMF_Tuner_ServiceProcess(void)
{
	MMT_TUNER_TunerStatus_E _eTunerState = MM_TUNER_UNLOCKED;
	HI_UNF_TUNER_STATUS_S tunerStatus = {0};
	HI_U32 i = 0, j = 0;
	
	while (mv_Tuner_u8Initalised)
	{
		MLMF_Task_Sleep(500);
		HI_UNF_TUNER_GetStatus(TUNER_USE, &tunerStatus);

		if(tunerStatus.enLockStatus == HI_UNF_TUNER_SIGNAL_DROPPED)
		{
			for(j = 0; j < 2; j++)
			{
				MLMF_Task_Sleep(500);
				HI_UNF_TUNER_GetStatus(TUNER_USE, &tunerStatus);
			}
		}

		if (HI_UNF_TUNER_SIGNAL_LOCKED == tunerStatus.enLockStatus)
		{
			_eTunerState = MM_TUNER_LOCKED;
		}
		else
		{
			_eTunerState = MM_TUNER_UNLOCKED;
		}

		if(MM_TUNER_LOCKED == _eTunerState)
		{
			MLMF_FP_SetLock(1);
			MLTUNER_DEBUG("Tuner locked,Freq = %d",mv_Tuner_u32TransFrenq);
		}
		else
		{
			MLMF_FP_SetLock(0);
			MLTUNER_DEBUG("Tuner Unlocked, Freq = %d",mv_Tuner_u32TransFrenq);
		}
		
		if(NULL != mf_Tuner_pLockCall)
		{
			if (gTunerStatus != _eTunerState)
			{
				mf_Tuner_pLockCall(_eTunerState, 0, mv_Tuner_u32TransFrenq, mv_Tuner_u32SymbolRate, mv_Tuner_eQamType);
				gTunerStatus = _eTunerState;
			}
		}
	}
}


/*
*说明：锁一个频点，为非阻塞式调用，此函数应在保证新的频点数据设入tuner（必须保证此函数结束后不会再接收到上一个频点的任何数据流）的前提下返回，不必等待锁频结果，锁频结果应该通过调用回调函数来告知上层。
*输入参数：
*u32TunerID: 输入参数，tuner的ID ，用于多个tuner的情况，如果只有一路tuner，则传0。
*u32Frenq：输入参数，是频率，单位为KHz。
*u32Sym：输入参数，是符号率，单位是Mbds，通常为6875。
*stQam：输入参数，是调制方式。
*MBT_VOID (*TUNER_ScanCallback_T)(
*MMT_TUNER_TunerStatus_E stTunerState, 
*MBT_U32 u32TunerID，
*MBT_U32 iFrenq, 
*MBT_U32 iSym, 
*MMT_TUNER_QAMMode_E stQam)：为状态返回调函数，在驱动经过一轮尝试以后调用此函数返回当前状态。平时驱动要对tuner状态进行监控（每隔两秒钟考察一次），如果当前状态为锁定状态则不做任何操作，如果当前状态为未锁定状态则调用此函数告知上层同时驱动尝试重新锁频。此回调函数在每次调用锁频函数MLMF_Tuner_Lock时都有可能更换。其参数含义如下：
*u32TunerID: 输入参数，返回MLMF_Tuner_Lock传入的的ID。
*u32Frenq：输入参数，是频率，单位为KHz，返回MLMF_Tuner_Lock传入的的频率。
*u32Sym：输入参数，是符号率，单位是Mbds，通常为6875，返回MLMF_Tuner_Lock传入的的符号率。
*stQam：输入参数，是调制方式，返回MLMF_Tuner_Lock传入的调制方式。
*输出参数:
*			无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Tuner_Lock(MBT_U32 u32TunerID, 
                                                MBT_U32 u32Frenq, 
                                                MBT_U32 u32Sym, 
                                                MMT_TUNER_QamType_E eQamType,
                                                MBT_VOID (*TUNER_ScanCallback_T)(
                                                                                    MMT_TUNER_TunerStatus_E stTunerState, 
                                                                                    MBT_U32 u32TunerID,
                                                                                    MBT_U32 u32Frenq, 
                                                                                    MBT_U32 u32Sym, 
                                                                                    MMT_TUNER_QamType_E eQamType)
                                                    )
{
	HI_U32 _QamType = 64;
	
	if((mv_Tuner_eQamType != eQamType)
		||(mv_Tuner_u32SymbolRate != u32Sym)
		||(mv_Tuner_u32TransFrenq != u32Frenq))
	{
		switch(eQamType)
		{
			case MM_TUNER_QAM_16:
			_QamType = 16;
			break;
			case MM_TUNER_QAM_32:
			_QamType = 32;
			break;
			case MM_TUNER_QAM_64:
			_QamType = 64;
			break;
			case MM_TUNER_QAM_128:
			_QamType = 128;
			break;
			case MM_TUNER_QAM_256:
			_QamType = 256;
			break;
			case MM_TUNER_QAM_MAX:
			_QamType = 64;
			break;
		}

		_MLMF_Tuner_Connect(TUNER_USE,u32Frenq,u32Sym,_QamType);

	}

	mv_Tuner_u32SymbolRate = u32Sym;
	mv_Tuner_u32TransFrenq = u32Frenq;
	mv_Tuner_eQamType = eQamType,
	mf_Tuner_pLockCall  = TUNER_ScanCallback_T;
	gTunerStatus = HI_UNF_TUNER_SIGNAL_BUTT;
	return MM_NO_ERROR;
}

/*
*说明：获取tuner的状态，如果不需要取相关的参数，直接传MBT_NULL。
*输入参数：
*			u32TunerID：输入参数，tuner的ID。
*输出参数:
*			无。			
*		返回：
*			锁定状态。
*/                                                                                                                                            
MMT_TUNER_TunerStatus_E MLMF_Tuner_GetLockStatus(MBT_U32 u32TunerID)
{
	HI_S32 ret = HI_SUCCESS;
	MMT_TUNER_TunerStatus_E eTunerState = MM_TUNER_UNLOCKED;
	HI_UNF_TUNER_STATUS_S tunerStatus = {0};
	
	ret = HI_UNF_TUNER_GetStatus(TUNER_USE, &tunerStatus);
	
	if(HI_SUCCESS == ret && HI_UNF_TUNER_SIGNAL_LOCKED == tunerStatus.enLockStatus)
	{
		eTunerState = MM_TUNER_LOCKED;
	}
	
	return eTunerState;
}

/*
*说明：获取tuner的状态，如果不需要取相关的参数，直接传MBT_NULL。
*输入参数：
*			u32TunerID：输入参数，tuner的ID。
*输出参数:
*			signal_ber：输出参数， 频点的误码率, Bit error rate (x 10000000)。为一个含有三个元素的整型数组。
*			Signal_ber指向当前TUNER 误码率的指针。该指针指向一个包含三个元素的数组，三个元素含义如下:
*				 signal_ber[0]:误码率底数的整数部分
*				 signal_ber[1]:误码率底数的小数部分乘以1000
*				 signal_ber[2]:误码率指数部分取绝对值(这个值为非正数，因为误码率不可能大于1) 例如:误码率为2.156E-7，
*				 那么三个元素的取值分别为 2、156和7。
*			signal_quality：输出参数，信号质量 , Carrier to noise ratio (dB x 10)。
*			signal_strength：输出参数，信号强度, Power of the RF signal (dBm x 10)。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Tuner_GetStatus(MBT_U32 u32TunerID, MBT_U32 *signal_strength,MBT_U32 *signal_quality, MBT_U32 *signal_ber)
{
	HI_S32 ret = HI_SUCCESS;
	HI_U32 ber[3] = {0};
	HI_U32 snr = 0;
	HI_U32 strength = 0;
	HI_UNF_TUNER_STATUS_S tunerStatus = {0};

	*signal_quality = 0;
        *signal_strength = 0;
        *signal_ber = 0;
	
	ret = HI_UNF_TUNER_GetStatus(TUNER_USE, &tunerStatus);
	
	if(HI_SUCCESS == ret && HI_UNF_TUNER_SIGNAL_LOCKED == tunerStatus.enLockStatus)
	{
		if (NULL != signal_ber)
		{
			HI_UNF_TUNER_GetBER(TUNER_USE, ber);//误码率
			signal_ber[0] = ber[0];
			signal_ber[1] = ber[1];
			signal_ber[2] = ber[2];
		}

		if (NULL != signal_quality)
		{
			HI_UNF_TUNER_GetSNR(TUNER_USE, &snr);//信噪比
			*signal_quality = snr;
		}

		if (NULL != signal_strength)
		{
			HI_UNF_TUNER_GetSignalStrength(TUNER_USE, &strength);//强度
			*signal_strength = strength;
		}
	}
	
	return MM_NO_ERROR;
}

/*
*说明：获取当前频率信息。
*输入参数：
*u32TunerID: 输入参数，tuner的ID ，用于多个tuner的情况，如果只有一路tuner，则传0。
*输出参数:
*u32Frenq：是频率，单位为KHz。
*u32Sym：是符号率，单位是Mbds，通常为6875。
*pu32Qam：是调制方式。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Tuner_CurTrans(MBT_U32 u32TunerID, MBT_U32 * pu32Frenq, MBT_U32 * pu32Sym, MMT_TUNER_QamType_E* peQamType)
{
	if(NULL != pu32Frenq)
	{
	    *pu32Frenq = mv_Tuner_u32TransFrenq;
	    MLTUNER_DEBUG("----> Freq = %d, mv_Tuner_u32TransFrenq = %d",*pu32Frenq, mv_Tuner_u32TransFrenq);
	}

	if(NULL != pu32Sym)
	{
	    *pu32Sym = mv_Tuner_u32SymbolRate;
	}

	if(NULL != peQamType)
	{
	    *peQamType = mv_Tuner_eQamType;
	}
	return MM_NO_ERROR;
}

/*
u8Mute == 1  关掉环出 
u8Mute == 0  打开环出 
开机默认是关掉的，如果用户设置了打开，需要以初始化时打开
*/
MBT_VOID MLMF_Tuner_SetLoopOutMode(MBT_U8 u8Mute)
{
	
}

MMT_STB_ErrorCode_E MLF_TunerInit(MBT_VOID)
{
	MET_Task_T _TunerTaskID;
	_MLMF_Tuner_Init();

	mv_Tuner_u8Initalised = 1;
	MLMF_Task_Create(_MLMF_Tuner_ServiceProcess,
                                            NULL,
                                            NIM_NOTIFY_TASK_STK_SIZE,
                                            7,
						  &_TunerTaskID,
                                            "TUNER_MON_TASK");
	return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E MLF_TunerTerm(MBT_VOID)
{
	HI_UNF_TUNER_Close(TUNER_USE);
	HI_UNF_TUNER_DeInit();
	return MM_NO_ERROR;
}

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */


