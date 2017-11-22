#include "dbs_share.h"
#include "envopt.h"
#include "ffs.h"


/*******************************************************************************************************************************************/
#define LOAD_FREQUENCY 306
#define LOAD_NIT_PID 0x10
#define LOAD_DMX_DATA_LEN 4096
#define LOAD_DMX_DATA_TIME_OUT 2000//5000
#define LOAD_UPDATE_TAG 0xa1a2a3a1
#define LOAD_UPDATE_FACTORY_TAG 0xa1a2a3a2
#define CODEDOWNLOAD_TAG  0x4a

typedef struct
{
	MBT_U16 oui;
	MBT_U16 res1;
	MBT_U16 res2;
	MBT_U16 sw;
	MBT_U16 res3;
	MBT_U16 hw;
	MBT_U32 LoadUpdateTag;
	MBT_U32 frq;
	MBT_U32 symb;
	MBT_U16 pid;
	MBT_U16 mod;
}Load_update_info_t;

static MBT_U8 gDmxbuffer[LOAD_DMX_DATA_LEN];
static MBT_S32 gAppLoadMonitorSem = 0;

extern MBT_S32 gs32NonCachedPoolID;


/*******************************************************************************************************************************************/

static MBT_BOOL AppLoadMonitor__ParsePrivateDesc(MBT_U8 *pucPrivateBuf, 
								   MBT_S32 *pusPrivateLen)
{
    MBT_U32 _LoadFactoryFlag = 0;
    MBT_U8 _len = 0;
    Load_update_info_t _Load_update_info;
    MBT_BOOL bReturn = MM_FALSE;
    MBT_BOOL _swPass = MM_FALSE;
    MBT_CHAR   au8StrTmp[10]={0};
    MBT_U8*  pu8StoreVal = MM_NULL;

    if (pucPrivateBuf != MM_NULL&&pusPrivateLen != MM_NULL)
    {
        *pusPrivateLen = pucPrivateBuf[1]+2;
        if(pucPrivateBuf[0] == CODEDOWNLOAD_TAG)//CODEDOWNLOAD_TAG)	/* linkage_descriptor */
        {
            _len = pucPrivateBuf[9];
            if (_len == (sizeof(Load_update_info_t)))
            {
                _Load_update_info.oui = (pucPrivateBuf[11]<<8)|pucPrivateBuf[12];
                //_Load_update_info.res1 = (pucPrivateBuf[12]<<8)|pucPrivateBuf[13];
                _Load_update_info.res2 = (pucPrivateBuf[14]<<8)|pucPrivateBuf[15];
                _Load_update_info.sw = (pucPrivateBuf[16]<<8)|pucPrivateBuf[17];
                _Load_update_info.res3 = (pucPrivateBuf[18]<<8)|pucPrivateBuf[19];
                _Load_update_info.hw = (pucPrivateBuf[20]<<8)|pucPrivateBuf[21];
                _Load_update_info.LoadUpdateTag = (pucPrivateBuf[22]<<24)|(pucPrivateBuf[23]<<16)|(pucPrivateBuf[24]<<8)|pucPrivateBuf[25];
                _Load_update_info.frq = (pucPrivateBuf[26]<<24)|(pucPrivateBuf[27]<<16)|(pucPrivateBuf[28]<<8)|pucPrivateBuf[29];
                _Load_update_info.symb = (pucPrivateBuf[30]<<24)|(pucPrivateBuf[31]<<16)|(pucPrivateBuf[32]<<8)|pucPrivateBuf[33];
                _Load_update_info.pid = (pucPrivateBuf[34]<<8)|(pucPrivateBuf[35]);
                _Load_update_info.mod = (pucPrivateBuf[36]<<8)|(pucPrivateBuf[37]);
                ShareEnv_LoadEnv();
                pu8StoreVal = ShareEnv_EnvGet((MBT_U8 *)"LOAD_UPDATE_FACTORY_FLAG");

                if ((pu8StoreVal == MM_NULL))
                {
                    strcpy(au8StrTmp,"0");
                    ShareEnv_EnvSet((MBT_U8 *)"LOAD_UPDATE_FACTORY_FLAG",(MBT_U8 *)au8StrTmp);
                    ShareEnv_StoreEnv();
                }
                else
                {
                    _LoadFactoryFlag = strtoul((MBT_CHAR *)pu8StoreVal, MM_NULL, 16);	
                }

                if ((MApp_AppOuiGet() == _Load_update_info.oui)
                    &&(MApp_AppHwGet() == _Load_update_info.hw))
                {
                    if ((MApp_AppSwGet()>>16) == 0xffff
                        &&0x0 == _Load_update_info.sw)
                    {
                        _swPass = MM_TRUE;
                    }
                    else
                    {
                        if (_Load_update_info.sw > (MApp_AppSwGet()>>16))
                        {
                            _swPass = MM_TRUE;
                        }
                        else if ((_Load_update_info.sw == (MApp_AppSwGet()>>16))
                            &&(_Load_update_info.LoadUpdateTag == LOAD_UPDATE_FACTORY_TAG)
                            &&(_LoadFactoryFlag == 1))	
                        {
                            strcpy(au8StrTmp,"0");
                            ShareEnv_LoadEnv();
                            ShareEnv_EnvSet((MBT_U8 *)"LOAD_UPDATE_FACTORY_FLAG",(MBT_U8 *)au8StrTmp);
                            ShareEnv_StoreEnv();

                            while(1)
                            {
                                //MDrv_FrontPnl_Update((MBT_U8*)"-OL-" , 0);
                                MLMF_Task_Sleep(500);
                                //MDrv_FrontPnl_Update((MBT_U8*)"----" , 0);
                                MLMF_Task_Sleep(500);
                            }
                        }
                    }

                    if (_swPass)
                    {
                        if (_Load_update_info.LoadUpdateTag == LOAD_UPDATE_FACTORY_TAG)
                        {
                            strcpy(au8StrTmp,"1");
                            ShareEnv_LoadEnv();
                            ShareEnv_EnvSet((MBT_U8 *)"LOAD_UPDATE_FACTORY_FLAG",(MBT_U8 *)au8StrTmp);
                            ShareEnv_StoreEnv();
                        }

                        appCa_SetOtaFreq(_Load_update_info.frq*10);
                        appCa_SetOtaSymb(_Load_update_info.symb*10);
                        appCa_SetOtaMod(_Load_update_info.mod+1);
                        appCa_SetOtaPID(_Load_update_info.pid);
                        appCa_triggerOta();
                        FFSF_Lock();
                        MLMF_SYS_WatchDog(0);
                        FFSF_UnLock();
                        MLMF_Task_Sleep(10000);
                        bReturn = MM_TRUE;
                    }
                }
            }
        }
    }
    return bReturn;
}

static MBT_BOOL AppLoadMonitor_ParseNit(MBT_U8  *pucSectionBuf)
{
    MBT_U8 *pucPrivateDescBuf;
    MBT_S32 network_descriptors_length;
    MBT_S32 privatedesclength = 0;

    network_descriptors_length = (MBT_S32)(pucSectionBuf[8]&0x0f)<<8;
    network_descriptors_length |= (MBT_S32)(pucSectionBuf[9]);

    pucPrivateDescBuf = &pucSectionBuf[10];
    while(network_descriptors_length>0)
    {
        if(AppLoadMonitor__ParsePrivateDesc(pucPrivateDescBuf,&privatedesclength))
        {
            return MM_TRUE;
        }

        network_descriptors_length-=privatedesclength;
        pucPrivateDescBuf+=privatedesclength;
    }
    return MM_FALSE;
}

#if 0
static MBT_VOID AppLoadMonitor_Demux_DataCb(MBT_U8 u8DmxId, DMX_EVENT enFilterStatus)
{	
	MBT_ULONG _DataLen = 0,_DataRmn = 0;
	
	if(enFilterStatus == DMX_EVENT_DATA_READY)
	{
		MApi_DMX_CopyData(u8DmxId,gDmxbuffer,LOAD_DMX_DATA_LEN,&_DataLen,&_DataRmn,MM_NULL);
              if (gAppLoadMonitorSem != 0)
              {
		     MsOS_ReleaseSemaphore(gAppLoadMonitorSem);
              }
	}

}
#endif	

MBT_S32 AppLoadMonitorStart(MBT_BOOL first,MBT_U32 (*pShowProcess)(MBT_VOID))
{
#if 0
    //MS_FE_CARRIER_PARAM stCarrierParam;
    MBT_U8 _Fltid;
    DMX_Flt_info FltInfo;
    MBT_U8 u8Match[16] = {0};
    MBT_U8 u8Mask[16] = {0};
    MBT_U8 u8NMask[16] = {0};
    MBT_U32 pu8AlignBufAddr = 0;
    MBT_U8 *_pTmpBuffer = MM_NULL;
    MBT_U16 _pid = LOAD_NIT_PID;
    TRANS_INFO stTransInfo;
	MS_U8      lockflag          = 0;
	MS_U32     locktimeBegin     = 0;
	MS_U32     locktimeEnd       = 0;
    MS_U32     u32MainFrequency  = m_MainFrenq;
	MS_U16     u16MainSymbolRate = m_MainSymbelRate;
	EN_CAB_CONSTEL_TYPE    eMainConstellation = m_MainModulation;
	MMT_TUNER_TunerStatus_E elockstatus = MM_TUNER_UNLOCKED;	

	DBSF_DataReadMainFreq(&stTransInfo);
	u32MainFrequency   = stTransInfo.uBit.uiTPFreq;
	u16MainSymbolRate  = stTransInfo.uBit.uiTPSymbolRate;
	eMainConstellation = stTransInfo.uBit.uiTPQam;

    if(first)
    {
	    MLMF_Tuner_Lock(0, u32MainFrequency, u16MainSymbolRate, eMainConstellation, NULL);
    }
	else
	{
	    MLMF_Tuner_Lock(0, LOAD_FREQUENCY, 6875, 2, NULL);
	}

	locktimeBegin=MsOS_GetSystemTime();
    while(1)
    {
		elockstatus = MLMF_Tuner_GetLockStatus(0);
		if(elockstatus == MM_TUNER_LOCKED)
		{
			lockflag = 1;
			break;
		}

		locktimeEnd = MsOS_GetSystemTime();
		if((locktimeEnd - locktimeBegin) >= (3 * 1000))/*提供3s的时间等待*/
		{
			break;
		}

        MLMF_Task_Sleep(300);
    }

	if(lockflag)
    {
        if(MM_NULL != pShowProcess)
        {
            pShowProcess();
        }
        if (DMX_FILTER_STATUS_OK == MApi_DMX_Open(DMX_FILTER_SOURCE_TYPE_LIVE | DMX_FILTER_TYPE_SECTION , &_Fltid))
        {
            if ( DMX_FILTER_STATUS_OK != MApi_DMX_Pid(_Fltid, &_pid, MM_TRUE)) //[APIDMX]
            {
                goto Dmx_Fail;
            }

            _pTmpBuffer = MLMF_Malloc(4096+32);

            if (MM_NULL == _pTmpBuffer)
            {
                goto Dmx_Fail;
            }
            pu8AlignBufAddr = ALIGN_32((MBT_U32)_pTmpBuffer);
            memset((MBT_VOID*)pu8AlignBufAddr, 0, 4096);

            FltInfo.Info.SectInfo.SectBufAddr = (MBT_U32)MsOS_VA2PA(pu8AlignBufAddr) ;
            FltInfo.Info.SectInfo.SectBufSize = 4096;
            FltInfo.Info.SectInfo.SectMode = DMX_SECT_MODE_ONESHOT|DMX_SECT_MODE_CRCCHK;


            FltInfo.Info.SectInfo.Event = DMX_EVENT_DATA_READY | DMX_EVENT_CB_SELF |  DMX_EVENT_BUF_OVERFLOW|DMX_EVENT_SEC_CRCERROR; 
            FltInfo.Info.SectInfo.pNotify     =  AppLoadMonitor_Demux_DataCb;

            if (DMX_FILTER_STATUS_OK != MApi_DMX_Info(_Fltid, &FltInfo, (DMX_FILTER_TYPE*) (DMX_FILTER_TYPE_SECTION | DMX_FILTER_SOURCE_TYPE_LIVE) , MM_TRUE) )
            {
                goto Dmx_Fail;
            }

            if (DMX_FILTER_STATUS_OK != MApi_DMX_SectReset(_Fltid))
            {
                goto Dmx_Fail;
            }

            memset(u8Match, 0x00, sizeof(u8Match));
            memset(u8Mask, 0x00, sizeof(u8Mask));
            memset(u8NMask, 0x00, sizeof(u8NMask));


            if (DMX_FILTER_STATUS_OK != MApi_DMX_SectPatternSet(_Fltid, u8Match, u8Mask, u8NMask , 16))
            {
                goto Dmx_Fail;
            }

            if(MM_NULL != pShowProcess)
            {
                pShowProcess();
            }

            if(gAppLoadMonitorSem != 0)
            {
                MsOS_DeleteSemaphore(gAppLoadMonitorSem);
                gAppLoadMonitorSem = 0;
            }

            gAppLoadMonitorSem = MsOS_CreateSemaphore(0, E_MSOS_FIFO, "appLoadMonitor_Sem");

            if (gAppLoadMonitorSem == 0)
            {
                goto Dmx_Fail;
            }

            MApi_DMX_Start(_Fltid);

            if (MsOS_ObtainSemaphore(gAppLoadMonitorSem,LOAD_DMX_DATA_TIME_OUT))
            {
                if(MM_NULL != pShowProcess)
                {
                    pShowProcess();
                }
            
                if(!AppLoadMonitor_ParseNit(gDmxbuffer))
                {
                    MApi_DMX_Stop(_Fltid);
                    goto Dmx_Fail;
                }
            }
            else
            {
                MApi_DMX_Stop(_Fltid);
                goto Dmx_Fail;
            }
            MApi_DMX_Stop(_Fltid);
            MApi_DMX_Close(_Fltid);
        }	
    }
    else
    {
		if(first)
		{
			if(u32MainFrequency != LOAD_FREQUENCY 
		     || eMainConstellation != 2 
		     || u16MainSymbolRate != 6875)
			{         
				return AppLoadMonitorStart(MM_FALSE,pShowProcess);
			}
		}        
    }

    if(MM_NULL != pShowProcess)
    {
        pShowProcess();
    }
    return 0;

Dmx_Fail:
    if(MM_NULL != pShowProcess)
    {
        pShowProcess();
    }
    MApi_DMX_Close(_Fltid);
    if(first)
    {
		if(u32MainFrequency != LOAD_FREQUENCY 
		 || eMainConstellation != 2 
		 || u16MainSymbolRate != 6875)
		{
            return AppLoadMonitorStart(MM_FALSE,pShowProcess);
		}
    }
#endif
    return -1;
}

