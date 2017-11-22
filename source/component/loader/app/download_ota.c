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

/* C++ support */
#include "loader_upgrade.h"
#include "hi_unf_frontend.h"
#include "hi_error_mpi.h"
#include "hi_loader_info.h"
#include "download_ota.h"
#include "loaderdb_info.h"
#include "hi_adp_boardcfg.h"
#include "upgrd_common.h"
#include "upgrd_config.h"

#ifdef HI_LOADER_BOOTLOADER
 #include <uboot.h>
#endif

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define TUNER_DURATION (2000) //ms

#define DMX_TRY_TIMES (1000)
#define DMX_DURATION (10) //ms

#define LOADER_INVALID_CHAN_ID 0xFFFFFFFF
#define LOADER_INVALID_FILTER_ID 0xFFFFFFFF

static HI_HANDLE g_hChannel = LOADER_INVALID_CHAN_ID;
static HI_HANDLE g_hFilter = LOADER_INVALID_FILTER_ID;

static HI_UNF_DMX_DATA_S g_stDmxData;

static HI_S32 LOADER_Demux_Init(HI_VOID)
{
    HI_S32 s32Ret = 0;
    HI_UNF_DMX_PORT_ATTR_S stAttr = {0};
	
    s32Ret |= HI_UNF_DMX_Init();

#if defined(HI_LOADER_TUNER_DVB_T) || defined(HI_LOADER_TUNER_DVB_T2) || defined(HI_LOADER_TUNER_SAT)
    HI_UNF_DMX_GetTSPortAttr(DMX_PORT_TUNER, &stAttr);
    stAttr.enPortType = HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_188;
    stAttr.u32SerialBitSelector = 0;
    HI_UNF_DMX_SetTSPortAttr(DMX_PORT_TUNER, &stAttr);
#endif
    s32Ret |= HI_UNF_DMX_AttachTSPort(0, (HI_UNF_DMX_PORT_E)DMX_PORT_TUNER);

    return s32Ret;
}

static HI_S32 DOWNLOAD_OTA_TUNER_Init(HI_U32 u32TunerPort, HI_LOADER_OTA_PARA_S *pstPara)
{
    HI_S32 s32Ret;
    HI_UNF_TUNER_ATTR_S stTunerAttr;

    if (NULL == pstPara)
    {
        HI_ERR_LOADER("Pointer is null.\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_TUNER_Init();

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("call HI_UNF_TUNER_Init failed.\n");
        return s32Ret;
    }

    s32Ret = HI_UNF_TUNER_Open(u32TunerPort);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("call HI_UNF_TUNER_Open failed.\n");
        HI_UNF_TUNER_DeInit();
        return s32Ret;
    }

    /* get tuner attribute */
    memset(&stTunerAttr, 0, sizeof(stTunerAttr));
    s32Ret = LOADER_GetTunerAttr(&stTunerAttr);
    HI_DBG_LOADER("TunerType:%d,TunerAddr:%d, DemoType:%d,DemoAddr:%d, I2cNo:%d,ResetGpioNum:%d,SigType:%d\n", stTunerAttr.enTunerDevType,
        stTunerAttr.u32TunerAddr, stTunerAttr.enDemodDevType,stTunerAttr.u32DemodAddr, stTunerAttr.enI2cChannel,stTunerAttr.u32ResetGpioNo,stTunerAttr.enSigType);

    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("call LOADER_GetTunerAttr failed.\n");
        HI_UNF_TUNER_Close(u32TunerPort);
        HI_UNF_TUNER_DeInit();
        return s32Ret;
    }

    s32Ret = HI_UNF_TUNER_SetAttr(u32TunerPort, &stTunerAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("call HI_UNF_TUNER_SetAttr failed.\n");
        HI_UNF_TUNER_Close(u32TunerPort);
        HI_UNF_TUNER_DeInit();
        return s32Ret;
    }

#if defined(HI_LOADER_TUNER_DVB_T) || defined(HI_LOADER_TUNER_DVB_T2)
{
    HI_UNF_TUNER_TER_ATTR_S     stTerTunerAttr = {0};

    stTerTunerAttr.u32DemodClk    = HI_DEMOD_REF_CLOCK; 
    stTerTunerAttr.u32ResetGpioNo = HI_DEMOD_RESET_GPIO;
    stTerTunerAttr.enRFAGC        = HI_UNF_TUNER_RFAGC_NORMAL;
    stTerTunerAttr.enTSClkPolar   = HI_UNF_TUNER_TSCLK_POLAR_RISING;
    stTerTunerAttr.enTSFormat     = HI_UNF_TUNER_TS_FORMAT_TS;
    stTerTunerAttr.enTSSerialPIN  = HI_UNF_TUNER_TS_FORMAT_TS;
    s32Ret = HI_UNF_TUNER_SetTerAttr(u32TunerPort, &stTerTunerAttr);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("call HI_UNF_TUNER_SetTerAttr failed.\n");
        return s32Ret;
    }
}   
#endif

#ifdef HI_LOADER_TUNER_SAT
	{
	    HI_UNF_TUNER_SAT_ATTR_S stSatAttr;
	    s32Ret = LOADER_GetSatAttr(&stSatAttr);
	    if (HI_SUCCESS != s32Ret)
	    {
	        HI_ERR_LOADER("call LOADER_GetSatAttr failed.\n");
	        HI_UNF_TUNER_Close(u32TunerPort);
	        HI_UNF_TUNER_DeInit();
	        return s32Ret;
	    }

	    s32Ret = HI_UNF_TUNER_SetSatAttr(u32TunerPort, &stSatAttr);
	    if (HI_SUCCESS != s32Ret)
	    {
	        HI_ERR_LOADER("call HI_UNF_TUNER_SetSatAttr failed.\n");
	        HI_UNF_TUNER_Close(u32TunerPort);
	        HI_UNF_TUNER_DeInit();
	        return s32Ret;
	    }
	}

    /* get and set tsout config if necessary */
#if (defined(HI_TUNER_OUTPUT_PIN0)  && (0 == TUNER_PORT)) || (defined(HI_TUNER1_OUTPUT_PIN0) && (1 == TUNER_PORT)) ||\
        (defined(HI_TUNER2_OUTPUT_PIN0) && (2 == TUNER_PORT)) || (defined(HI_TUNER3_OUTPUT_PIN0) && (3 == TUNER_PORT))  
    {
        HI_UNF_TUNER_TSOUT_SET_S stTSOut;

        GET_TUNER_TSOUT_CONFIG(stTSOut);
        s32Ret = HI_UNF_TUNER_SetTSOUT(u32TunerPort, &stTSOut);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("call HI_UNF_TUNER_SetTSOUT failed.\n");
            HI_UNF_TUNER_Close(u32TunerPort);
            HI_UNF_TUNER_DeInit();
            return s32Ret;
        }
    }
#endif

    /* If satellite signal, maybe need config lnb power, switch, motor */
    if (HI_UNF_TUNER_SIG_TYPE_SAT == pstPara->eSigType)
    {
        HI_UNF_TUNER_FE_LNB_POWER_E enPower = pstPara->unConnPara.stSat.u32LNBPower;
        HI_UNF_TUNER_FE_LNB_CONFIG_S stLNBConfig;

        /* Set LNB power on/off/enhanced */
        s32Ret = HI_UNF_TUNER_SetLNBPower(u32TunerPort, enPower);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("call HI_UNF_TUNER_SetLNBPower failed.\n");
        }

        /* If LNB power off, 22K signal can't be sent, switch and motor configuration will be not effective */
        /* control user's env*/
        if (HI_UNF_TUNER_FE_LNB_POWER_OFF != enPower)
        {
 #ifdef DISEQC_SUPPORT
            HI_UNF_TUNER_DISEQC_SWITCH16PORT_S st16Port;
            HI_UNF_TUNER_DISEQC_SWITCH4PORT_S st4Port;

            /* Wait DiSEqC switch to start */
            LOADER_Delayms(50);

            /* Use DiSEqC 1.1 Switch */
            st16Port.enLevel = pstPara->unConnPara.stSat.st16Port.u32Level;
            st16Port.enPort = pstPara->unConnPara.stSat.st16Port.u32Port;
            s32Ret |= HI_UNF_TUNER_DISEQC_Switch16Port(u32TunerPort, &st16Port);

            /* Use DiSEqC 1.0 Switch */
            st4Port.enLevel = pstPara->unConnPara.stSat.st4Port.u32Level;
            st4Port.enPort   = pstPara->unConnPara.stSat.st4Port.u32Port;
            st4Port.enPolar  = pstPara->unConnPara.stSat.st4Port.u32Polar;
            st4Port.enLNB22K = pstPara->unConnPara.stSat.st4Port.u32LNB22K;
            s32Ret |= HI_UNF_TUNER_DISEQC_Switch4Port(u32TunerPort, &st4Port);
 #endif/* DISEQC_SUPPORT */

            /* Use 22K switch */
            s32Ret |= HI_UNF_TUNER_Switch22K(u32TunerPort, pstPara->unConnPara.stSat.u32Switch22K);

            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_LOADER("Set switch or motor failed.\n");
                return s32Ret;
            }
        }

        /* Before connect or blindscan, you need config LNB */
        if (HI_TRUE == pstPara->unConnPara.stSat.u32UnicFlag)  /* DVB-S unicable*/
        {
            stLNBConfig.enLNBType = HI_UNF_TUNER_FE_LNB_UNICABLE;
            stLNBConfig.u32LowLO = 9750;
            stLNBConfig.u32HighLO = 10600;
            stLNBConfig.enLNBBand = HI_UNF_TUNER_FE_LNB_BAND_KU;
            stLNBConfig.u8UNIC_SCRNO = 0;
            stLNBConfig.u32UNICIFFreqMHz = 1210;
            stLNBConfig.enSatPosn = HI_UNF_TUNER_SATPOSN_A;
            LOADER_ASSERT("Set LNB config DVB-S unicable.\n");
        }
        else
        {
            if ((pstPara->unConnPara.stSat.u32LowLO == pstPara->unConnPara.stSat.u32HighLO)
               || (0 == pstPara->unConnPara.stSat.u32LowLO)
               || (0 == pstPara->unConnPara.stSat.u32HighLO))
            {
                stLNBConfig.enLNBType = HI_UNF_TUNER_FE_LNB_SINGLE_FREQUENCY;
            }
            else
            {
                stLNBConfig.enLNBType = HI_UNF_TUNER_FE_LNB_DUAL_FREQUENCY;
            }
            stLNBConfig.u32LowLO  = pstPara->unConnPara.stSat.u32LowLO;
            stLNBConfig.u32HighLO = pstPara->unConnPara.stSat.u32HighLO;

            if ((6000 > pstPara->unConnPara.stSat.u32HighLO) && (6000 > pstPara->unConnPara.stSat.u32LowLO))
            {
                stLNBConfig.enLNBBand = HI_UNF_TUNER_FE_LNB_BAND_C;
            }
            else
            {
                stLNBConfig.enLNBBand = HI_UNF_TUNER_FE_LNB_BAND_KU;
            }
        }
        

        s32Ret = HI_UNF_TUNER_SetLNBConfig(u32TunerPort, &stLNBConfig);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("Set LNB config failed.\n");
            return s32Ret;
        }

    }
#endif
    
    return HI_SUCCESS;
}

static HI_S32 DOWNLOAD_OTA_LockTuner(HI_LOADER_OTA_PARA_S *pstOtaParam, HI_U32 u32TimeOutMs,
		HI_UNF_TUNER_LOCK_STATUS_E *penStatus)
{
	HI_UNF_TUNER_CONNECT_PARA_S stConnectParam;
	HI_UNF_TUNER_STATUS_S tuner_stu = {
	.enLockStatus = HI_UNF_TUNER_SIGNAL_DROPPED
	};
	HI_S32 s32loop = 10;

	if ((HI_NULL == pstOtaParam) || (HI_NULL == penStatus))
	{
		return HI_FAILURE;
	}

	do
	{
		memset(&stConnectParam, 0, sizeof(HI_UNF_TUNER_CONNECT_PARA_S));
		stConnectParam.enSigType = pstOtaParam->eSigType;

		switch (pstOtaParam->eSigType)
		{
			case HI_UNF_TUNER_SIG_TYPE_CAB:
			{
				stConnectParam.unConnectPara.stCab.bReverse = (HI_BOOL)0;
				stConnectParam.unConnectPara.stCab.u32Freq = pstOtaParam->unConnPara.stCab.u32OtaFreq;
				stConnectParam.unConnectPara.stCab.u32SymbolRate = pstOtaParam->unConnPara.stCab.u32OtaSymbRate * 1000;
				switch (pstOtaParam->unConnPara.stCab.u32OtaModulation)
				{
					case 0:
						stConnectParam.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_16;
						break;
					case 1:
						stConnectParam.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_32;
						break;
					case 2:
						stConnectParam.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_64;
						break;
					case 3:
						stConnectParam.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_128;
						break;
					case 4:
						stConnectParam.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_256;
						break;
					default:
						stConnectParam.unConnectPara.stCab.enModType = HI_UNF_MOD_TYPE_QAM_64;
						break;
				}

				break;
			}

			case HI_UNF_TUNER_SIG_TYPE_SAT:
			{
				stConnectParam.unConnectPara.stSat.u32Freq = pstOtaParam->unConnPara.stSat.u32OtaFreq;
				stConnectParam.unConnectPara.stSat.u32SymbolRate = pstOtaParam->unConnPara.stSat.u32OtaSymbRate * 1000;
				stConnectParam.unConnectPara.stSat.enPolar = (HI_UNF_TUNER_FE_POLARIZATION_E)pstOtaParam->unConnPara.stSat.u32Polar;
				break;
			}

	        case HI_UNF_TUNER_SIG_TYPE_DVB_T:
	        case HI_UNF_TUNER_SIG_TYPE_DVB_T2:
			case (HI_UNF_TUNER_SIG_TYPE_DVB_T | HI_UNF_TUNER_SIG_TYPE_DVB_T2):
	        {
	            stConnectParam.unConnectPara.stTer.bReverse = (HI_BOOL)0;
	            stConnectParam.unConnectPara.stTer.u32Freq = pstOtaParam->unConnPara.stTer.u32OtaFreq;
	            stConnectParam.unConnectPara.stTer.u32BandWidth = pstOtaParam->unConnPara.stTer.u32OtaBandWidth;
	            switch (pstOtaParam->unConnPara.stTer.u32OtaModulation)
	            {
	            case 0:
	                stConnectParam.unConnectPara.stTer.enModType = HI_UNF_MOD_TYPE_QAM_16;
	                break;
	            case 1:
	                stConnectParam.unConnectPara.stTer.enModType = HI_UNF_MOD_TYPE_QAM_32;
	                break;
	            case 2:
	                stConnectParam.unConnectPara.stTer.enModType = HI_UNF_MOD_TYPE_QAM_64;
	                break;
	            case 3:
	                stConnectParam.unConnectPara.stTer.enModType = HI_UNF_MOD_TYPE_QAM_128;
	                break;
	            case 4:
	                stConnectParam.unConnectPara.stTer.enModType = HI_UNF_MOD_TYPE_QAM_256;
	                break;
	            default:
	                stConnectParam.unConnectPara.stTer.enModType = HI_UNF_MOD_TYPE_QAM_64;
	                break;
	            }

	            break;
	        }

			default:
				break;
		}


		/* tuner lock */
		if (HI_SUCCESS != HI_UNF_TUNER_Connect(TUNER_PORT, &stConnectParam, u32TimeOutMs))
		{
			HI_ERR_LOADER("tuner connect error!\n");
			return HI_FAILURE;
		}
	    else
	    {
	        HI_INFO_LOADER("-->call HI_UNF_TUNER_Connect OK. u32TimeOutMs:%d ms\n", u32TimeOutMs);
	    }
         
		while (s32loop > 0)
		{
		    s32loop--;
         
			LOADER_Delayms(50);
			/* get tuner status */
			if (HI_SUCCESS != HI_UNF_TUNER_GetStatus(TUNER_PORT, &tuner_stu))
			{
				HI_ERR_LOADER("tuner get status error, relock time %d\n", s32loop);
				LOADER_Delayms(50);
				continue;
			}

			HI_DBG_LOADER("UPGRD_TUNER_Do: value is %d,HI_TUNER_SIGNAL_CONNECTED is %d\n", tuner_stu.enLockStatus,
					HI_UNF_TUNER_SIGNAL_LOCKED);

			/* tuner locked */
			if (HI_UNF_TUNER_SIGNAL_LOCKED == tuner_stu.enLockStatus)
			{
				break;
			}

			HI_ERR_LOADER("tuner unlock:  relock time %d \n", s32loop);
		}

		*penStatus = tuner_stu.enLockStatus;
	} while (0);

	return HI_SUCCESS;
}

/**
 \brief initialize OTA download mode.
 \attention \n
 \param[in] Para:
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_OTA_Init(HI_VOID * Para)
{
    HI_UNF_TUNER_LOCK_STATUS_E enStatus;
    HI_S32 s32Ret = HI_SUCCESS;

    if (HI_NULL == Para)
    {
        return HI_FAILURE;
    }

    memset(&g_stDmxData, 0, sizeof(g_stDmxData));

    s32Ret = DOWNLOAD_OTA_TUNER_Init(TUNER_PORT, (HI_LOADER_OTA_PARA_S *)Para);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    s32Ret = LOADER_Demux_Init();
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    s32Ret = DOWNLOAD_OTA_LockTuner((HI_LOADER_OTA_PARA_S *)Para, TUNER_DURATION, &enStatus);
    if ((HI_SUCCESS == s32Ret) && (HI_UNF_TUNER_SIGNAL_LOCKED == enStatus))
    {
        return HI_SUCCESS;
    }

    return HI_UPGRD_ERR_SIGNAL_LOSE;
}

/**
 \brief deinitialize OTA download mode.
 \attention \n
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_OTA_DeInit(HI_VOID)
{
    /*release filter and channel*/
    HI_UNF_DMX_CloseChannel(g_hChannel);
    HI_UNF_DMX_DetachFilter(g_hFilter, g_hChannel);
    HI_UNF_DMX_DestroyFilter(g_hFilter);
    HI_UNF_DMX_DestroyChannel(g_hChannel);

    g_hChannel = LOADER_INVALID_CHAN_ID;
    g_hFilter = LOADER_INVALID_FILTER_ID;

    return HI_SUCCESS;
}

/**
 \brief Get upgrade data through OTA, usually section data.
 \attention \n
 \param[in] pbuffer: data buffer, allocate by caller
 \param[in] size: the max expected size, it must be samller than the buffer length
 \param[out] outlen: the really length of data
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_ERR_DMX_TIMEOUT: receive data timeout
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_OTA_getdata(HI_VOID *pbuffer, HI_U32 size, HI_U32 *outlen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32AcquiredNum;
    HI_U32 i;

    if ((HI_NULL == pbuffer) || (HI_NULL == outlen))
    {
        HI_ERR_LOADER("Invalid Parameters\n");
        return HI_FAILURE;
    }

    if (HI_NULL != g_stDmxData.pu8Data)
    {
        s32Ret = HI_UNF_DMX_ReleaseBuf(g_hChannel, 1, &g_stDmxData);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("Release dmx buffer failed = 0x%x\n", s32Ret);
        }

        g_stDmxData.pu8Data = HI_NULL;
        g_stDmxData.u32Size = 0;
    }

    for (i = 0; i < DMX_TRY_TIMES; i++)
    {
        s32Ret = HI_UNF_DMX_AcquireBuf(g_hChannel, 1, &u32AcquiredNum, &g_stDmxData, DMX_DURATION);
        if ((HI_SUCCESS == s32Ret) && (u32AcquiredNum > 0))
        {
            break;
        }
        else
        {
#ifdef HI_LOADER_BOOTLOADER
            LOADER_Delayms(DMX_DURATION);
#endif
            continue;
        }
    }

    if (DMX_TRY_TIMES == i)
    {
        HI_UNF_TUNER_STATUS_S stStatus;

        if ((HI_SUCCESS != HI_UNF_TUNER_GetStatus(TUNER_PORT, &stStatus))
            || ((HI_UNF_TUNER_SIGNAL_LOCKED != stStatus.enLockStatus)))
        {
            HI_ERR_LOADER("signal lost!\n");
            return HI_UPGRD_ERR_SIGNAL_LOSE;
        }

        return HI_UPGRD_DMX_TIMEOUT;
    }

    if (g_stDmxData.u32Size > size)
    {
        HI_ERR_LOADER("buffer length :%d is too small, need %d bytes\n", size, g_stDmxData.u32Size);
        return HI_FAILURE;
    }

    memcpy((HI_U8 *)pbuffer, g_stDmxData.pu8Data, g_stDmxData.u32Size);
    *outlen = g_stDmxData.u32Size;

    return HI_SUCCESS;
}

/**
 \brief Set fillter attributes to acquire data through OTA.
 \attention \n
 \param[in] u16Pid:
 \param[in] pstFilterAttr: filter attributs
 \retval ::HI_SUCCESS : set fillter success
 \retval ::HI_FAILURE : set fillter failed
 */
HI_S32 LOADER_DOWNLOAD_OTA_setfilter(HI_U16 u16Pid, HI_UNF_DMX_FILTER_ATTR_S *pstFilterAttr)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_DMX_CHAN_ATTR_S stChAttr;
    HI_U32 u32DmxId = 0;

    if (HI_NULL == pstFilterAttr)
    {
        HI_ERR_LOADER("param is invalid");
        return HI_FAILURE;
    }

    do
    {
        if (LOADER_INVALID_CHAN_ID == g_hChannel)
        {
            //s32Ret = HI_UNF_DMX_GetChannelDefaultAttr(&stChAttr);
            stChAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_SEC;
            stChAttr.enCRCMode = HI_UNF_DMX_CHAN_CRC_MODE_FORCE_AND_DISCARD;
            stChAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;

            /* create new channel */
            s32Ret = HI_UNF_DMX_CreateChannel(u32DmxId, &stChAttr, &g_hChannel);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_LOADER("get channel failed\n");
                break;
            }

            s32Ret = HI_UNF_DMX_SetChannelPID(g_hChannel, u16Pid);
            if (HI_SUCCESS != s32Ret)
            {
                HI_UNF_DMX_DestroyChannel(g_hChannel);
                HI_ERR_LOADER("set channel pid failed\n");
                break;
            }
        }
        else
        {
            s32Ret = HI_UNF_DMX_CloseChannel(g_hChannel);
            if (HI_SUCCESS != s32Ret)
            {
                HI_UNF_DMX_DestroyChannel(g_hChannel);
                HI_ERR_LOADER("Close channel failed\n");
                break;
            }

            s32Ret = HI_UNF_DMX_SetChannelPID(g_hChannel, u16Pid);
            if (HI_SUCCESS != s32Ret)
            {
                HI_UNF_DMX_DestroyChannel(g_hChannel);
                HI_ERR_LOADER("set channel pid failed\n");
                break;
            }
        }

        if (LOADER_INVALID_FILTER_ID != g_hFilter)
        {
            s32Ret = HI_UNF_DMX_DetachFilter(g_hFilter, g_hChannel);
            s32Ret = HI_UNF_DMX_DestroyFilter(g_hFilter);

            g_hFilter = LOADER_INVALID_FILTER_ID;
        }

        /* create new filter */
        s32Ret = HI_UNF_DMX_CreateFilter(u32DmxId, pstFilterAttr, &g_hFilter);

        if (HI_SUCCESS != s32Ret)
        {
            HI_UNF_DMX_DestroyChannel(g_hChannel);
            HI_ERR_LOADER("filter set error.");
            break;
        }

        /* attach filter to channel */
        s32Ret = HI_UNF_DMX_AttachFilter(g_hFilter, g_hChannel);
        if (HI_SUCCESS != s32Ret)
        {
            HI_UNF_DMX_DestroyChannel(g_hChannel);
            HI_UNF_DMX_DestroyFilter(g_hFilter);
            HI_ERR_LOADER("filter attach error.");
            break;
        }

        /* open channel to receive section*/
        s32Ret = HI_UNF_DMX_OpenChannel(g_hChannel);
        if (HI_SUCCESS != s32Ret)
        {
            HI_UNF_DMX_DetachFilter(g_hFilter, g_hChannel);
            HI_UNF_DMX_DestroyFilter(g_hFilter);
            HI_UNF_DMX_DestroyChannel(g_hChannel);
            HI_ERR_LOADER("OpenChannel error.");
            break;
        }
    } while (0);

    return s32Ret;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
