/**********************************************************************************

File Name   : mml_entry.c

Description : <Describe what the file is for>

COPYRIGHT (C) 2005 STMicroelectronics - HES System Competence Center (Singapore)

Date               Modification                                             Name
----               ------------                                             ----
12/22/2005        Created                                                  Louie
<$ModMark> (do not move/delete)
***********************************************************************************/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif

/* Includes ----------------------------------------------------------------- */
#include <string.h>
#include "ui_api.h" 
#include "appblast.h"
#include "wgui.h"
#include "section_api.h"
#include "nvm_api.h"
#include "ca_api.h"
#include "dbs_api.h"
#include "ffs.h"
#include "ospctr.h"
#include "mlm_fp.h"
#include "mlm_image.h"
#include "envopt.h"
#include "rsa.h"
#include "advert_api.h"

//#define MENTRY_DEBUG(x)   MLMF_Print x
#define MENTRY_DEBUG(x) 

static MBT_CHAR  *mv_entry_ffsMark = "HISI3716";
static MBT_U32 (*mv_pShowProcess)(MBT_VOID) = MM_NULL;

typedef struct _SEFUSEDID_
{
    MBT_CHAR OvtFlag[12];
    MBT_U16 EfuseDid;
    MBT_U32 crc32;
}SEFUSEDID;

static MBT_U32 Flash_HasBeenFormatByFFs(MBT_VOID)
{
    MBT_U32 u32Ret = 0;
    MBT_CHAR strBuffer[10];
    MBT_U32 u32BaseAddress;
    MBT_S32 s32Len = strlen(mv_entry_ffsMark);
    u32BaseAddress = FSLC_FlashBaseAddress;
    FLASHF_FfsRead(u32BaseAddress,(MBT_U8 *)strBuffer,s32Len);
    if(0 == memcmp(strBuffer,mv_entry_ffsMark,s32Len))
    {
        u32Ret ++;
    }

    FLASHF_FfsRead(FSLC_FfsFormatFlagAddr,(MBT_U8 *)strBuffer,s32Len);
    if(0 == memcmp(strBuffer,mv_entry_ffsMark,s32Len))
    {
        u32Ret ++;
    }

    return u32Ret;
}

static MBT_VOID Flash_SetFfsFormatFlag(MBT_VOID)
{
    FLASHF_ErasePartition(FSLC_FfsFormatFlagAddr,FLASH_MAINBLOCK_SIZE);
    FLASHF_ForceSaveFile(FSLC_FfsFormatFlagAddr,(MBT_U8 *)mv_entry_ffsMark,strlen(mv_entry_ffsMark));
}




static MBT_VOID FFST_FormatCall(SULM_INOUT MBT_VOID *pvParam)
{
    if(MM_NULL != mv_pShowProcess)
    {
        mv_pShowProcess();
    }
    //MLMF_Print("FFST_FormatCall time %d mv_pShowProcess = %x\n",MLMF_SYS_GetMS(),mv_pShowProcess);
}

/*******************************************************************************
Name        : S i n g a p p l _ S t a r t 
Description : <$functionDescription>
Parameters  : 
Assumptions :
Limitations : 
Returns     : (MMT_STB_ErrorCode_E) <$returnDescription>
*******************************************************************************/

static MMT_STB_ErrorCode_E SetupFFsSystem(MBT_BOOL bFormat,MBT_U32 (*pShowProcess)(MBT_VOID))
{
    MMT_STB_ErrorCode_E eRet;
    MBT_U32 *FLSC_auiSectorAddress;
    FFST_InitParams ffsInitParams;
    MBT_U32 iTotalBloack;
    MBT_U32 u32AddrOffset;
    MBT_U32 i;
    MBT_U32 u32BaseAddress;
    u32BaseAddress = FSLC_FlashBaseAddress;

    mv_pShowProcess = pShowProcess;
    if(MM_TRUE == bFormat)
    {
        u32AddrOffset = FSLC_FlashTopAddress;
        while(u32AddrOffset >= u32BaseAddress)
        {
            FLASHF_ErasePartition(u32AddrOffset,FLASH_MAINBLOCK_SIZE);
            u32AddrOffset -= FLASH_MAINBLOCK_SIZE;
            if(MM_NULL != pShowProcess)
            {
                pShowProcess();
            }
        }
    }

    iTotalBloack = ((FSLC_FfsFormatFlagAddr - u32BaseAddress)/FFS_MAIN_1_SIZE);
	if(iTotalBloack < 0)
	{
		iTotalBloack = 0;
	}

    FLSC_auiSectorAddress = MLMF_Malloc(iTotalBloack*sizeof(MBT_U32));
    if(MM_NULL == FLSC_auiSectorAddress)
    {
        return MM_ERROR_NO_MEMORY;
    }

    u32AddrOffset = u32BaseAddress;
    for(i = 0;i < iTotalBloack;i++)
    {
        FLSC_auiSectorAddress[i] = u32AddrOffset;
        u32AddrOffset += FFS_MAIN_1_SIZE;
    }
    
    ffsInitParams.mu32SectorCount=iTotalBloack;
    ffsInitParams.mu32SectorSize=FFS_MAIN_1_SIZE;
    ffsInitParams.mpu32SectorArray=(MBT_U32*)FLSC_auiSectorAddress;
    ffsInitParams.pcSectorHeadSysSignal=mv_entry_ffsMark;
    ffsInitParams.pcRootFileName="root";
    ffsInitParams.mpfunWriteStartCallBack=MM_NULL;
    ffsInitParams.mpfunWriteStopCallBack=MM_NULL;
    ffsInitParams.mpfunCleanUpStartCallBack=FFST_FormatCall;
    ffsInitParams.mpfunCleanUpStopCallBack=FFST_FormatCall;
    ffsInitParams.mpfunFfsCreateCallBack=FFST_FormatCall;    
    ffsInitParams.mpfunFlashErase=FLASHF_FfsErase;
    ffsInitParams.mpfunFlashWrite=FLASHF_FfsWrite;
    ffsInitParams.mpfunFlashRead=FLASHF_FfsRead;
    

    if(FFSF_InitModule(ffsInitParams)!=FFSM_ErrorNoError)
    {
        eRet = MM_ERROR_FEATURE_NOT_SUPPORTED;
    }
    else
    {
        eRet = MM_NO_ERROR;
    }
    return eRet;
}


#define BOOT_UP_AUTO_UPGRADE 0
#if (BOOT_UP_AUTO_UPGRADE)
MBT_BOOL OtaFlag = MM_FALSE;
MBT_U32 ParseFlag = 0; // 0 还没解析  //1 正在解析 //2解析完成
#define SECTION_HEADER_SIZE 8
#define DSMMSG_HEADER_SIZE  12
#define DSIMSG_HEADER_SIZE  20
#define AUTO_OTA_FRQ	306
#define AUTO_OTA_SYBM	6875
#define AUTO_OTA_QAM	MM_TUNER_QAM_64
#define AUTO_OTA_PID	0x1c37


#define GET_2BYTE( cp ) ( ( ( (MBT_U16)(*cp) ) << 8 ) | ( ( (MBT_U16)(*(cp+1)) ) ) )
#define GET_3BYTE( cp ) ( ( ( (MBT_U32)(*cp) )<< 16 ) | ( ( (MBT_U32)(*(cp+1)) ) <<  8 ) | ( ( (MBT_U32)(*(cp+2)) ) ) )
#define GET_4BYTE( cp ) ( ( ( (MBT_U32)(*cp) )<< 24 ) | ( ( (MBT_U32)(*(cp+1)) ) << 16 ) | ( ( (MBT_U32)(*(cp+2)) ) << 8 ) | ( (MBT_U32)(*(cp+3)) ) )

MMT_STB_ErrorCode_E oad_VersonCheck(MBT_U8 *pPrivateData)
{
    MBT_U16		compatibilityLength,descriptorCount,model,version=0x0,i;
    MBT_U8		descriptorType, descriptorLength, specifierType,subDescriptorCount;
    MBT_U32		specifierData;
    MBT_BOOL	swPass=MM_FALSE;
    MBT_BOOL	hwPass=MM_FALSE;

	compatibilityLength = GET_2BYTE(pPrivateData);
	pPrivateData += 2;

	if ( compatibilityLength < 2 )
	{
		MLMF_Print("Error> msAPI_OAD_ProcessDSI : compatibilityLength = 0x%x\n", compatibilityLength);
		return MM_ERROR_NO_MEMORY ;
	}

	descriptorCount = GET_2BYTE(pPrivateData); pPrivateData += 2;
	MLMF_Print("descriptorCount = %u\n", descriptorCount);

	for ( i = 0; i < descriptorCount; i ++ )
	{
		descriptorType  = *pPrivateData++;
		descriptorLength= *pPrivateData++;

		switch ( descriptorType )
		{
			case 0x02:
				{
					specifierType = *pPrivateData++;
					specifierData = GET_3BYTE( pPrivateData ); pPrivateData += 3;
					model = GET_2BYTE(pPrivateData); pPrivateData += 2;
					version = GET_2BYTE(pPrivateData); pPrivateData += 2;
					subDescriptorCount = *pPrivateData++;
					MLMF_Print("%s: at %d, [%d]th groupCompatibilityDesc, groupCompatibilityDescType[%d]->SW. \n", __func__, __LINE__, i, descriptorType );
					MLMF_Print("%s: at %d, groupCompatibility type[%d]->SW. specifierType[%d], specifierData[0x%x], model[0x%x], version[0x%x], subDescriptorCount[%d]. \n", __func__, __LINE__, descriptorType, specifierData, specifierType, model, version, subDescriptorCount );
					MLMF_Print("TS=%x\n",version);

					if (MApp_AppSwGet() == 0xffff&&0x0 == version)
					{	
						swPass = MM_TRUE;
					}
					else
					{
						if (version > (MApp_AppSwGet()>>16))
						{
							MLMF_Print("%s: at %d, groupCompatibilityDescType[%d]->SW check. PASS. \n", __func__, __LINE__, descriptorType );		
							swPass = MM_TRUE;
						}
						else
						{
							return MM_ERROR_NO_MEMORY; //软件版本不同
						}
					}
				}
				break;
			case 0x01:
                    MLMF_Print("%s: at %d, [%d]th groupCompatibilityDesc, groupCompatibilityDescType[%d]->HW. \n", __func__, __LINE__, i, descriptorType );

                    specifierType = *pPrivateData++;
                    specifierData = GET_3BYTE( pPrivateData ); pPrivateData += 3;
                    model = GET_2BYTE(pPrivateData); pPrivateData += 2;
                    version = GET_2BYTE(pPrivateData); pPrivateData += 2;
                    subDescriptorCount = *pPrivateData++;
                    MLMF_Print("%s: at %d, groupCompatibility type[%d]->HW. specifierType[%d], specifierData[0x%x], model[0x%x], version[0x%x], subDescriptorCount[%d]. \n", __func__, __LINE__, descriptorType, specifierType, specifierData, model, version, subDescriptorCount );
                    MLMF_Print("TS=%x\n",version );
                    if ((specifierType==0x01)&&(model == 0x01)&&(version == MApp_AppHwGet())&&(specifierData==MApp_AppOuiGet()))
                    {
                        MLMF_Print("%s: at %d, groupCompatibilityDescType[%d]->HW check. PASS. \n", __func__, __LINE__, descriptorType );
                        hwPass = MM_TRUE;
                    }
                    else if (specifierData!=MApp_AppOuiGet())
                    {
                        return MM_ERROR_NO_MEMORY; //OUI不同
                    }
		      		else
                    {
                        return MM_ERROR_NO_MEMORY; // //HW不同
                    }		
                    break;
                default:
                {
                    pPrivateData += descriptorLength;
                    MLMF_Print("[OTA] descriptorType = 0x%02bx\n", descriptorType);
                    break;
                }
            }
       }// End of for
    if((swPass == MM_TRUE) && (hwPass == MM_TRUE))
    {
        return MM_NO_ERROR ;
    }
    return MM_ERROR_NO_MEMORY;
}


static MMT_STB_ErrorCode_E Ota_SectionEventCall(MET_PTI_PID_T stCurPid,MBT_U8 *pbuff, MBT_U32 u32Len,MET_PTI_FilterHandle_T  stFileterHanel)
{
	MMT_STB_ErrorCode_E _rel;
	MBT_U16  section_length;

	// DSM MSG header
	MBT_U32  trans_id;
	MBT_U8	adaptLength;
	MBT_U16  messageLength;
	MBT_U16  numberOfGroups ,privateDataLength ,gCount, compatibilityLength;
	MBT_U32  groupId, groupSize;
	MBT_U16  groupInfoLength;
	MBT_U8 versionNum = 0;
	MBT_U8  *ptr;
    MBT_U16  messageId;

    ptr = pbuff + SECTION_HEADER_SIZE + 2;
    messageId = GET_2BYTE(ptr);

	section_length = ( pbuff[1] & 0x0F ) << 8  | pbuff[2];
    if (messageId!=0x1006)
    {
        MLMF_Print("Not DSI => messageId=%x\n",messageId) ;
        return MM_NO_ERROR;
    }

	if(ParseFlag)
	{
		//只需要解析一个section就行了
		return MM_NO_ERROR;
	}
	ParseFlag = 1;
	section_length = ( pbuff[1] & 0x0F ) << 8  | pbuff[2];
	versionNum = (0x3e&pbuff[5]) >> 1 ;
	pbuff += SECTION_HEADER_SIZE;
	
	if ( section_length <= SECTION_HEADER_SIZE + DSMMSG_HEADER_SIZE + DSIMSG_HEADER_SIZE )
	{
		MLMF_Print("Error> msAPI_OAD_ProcessDSI : dsmcc_section_length = 0x%x\n", section_length);
		ParseFlag = 2;
		return MM_NO_ERROR;
	}
	
	// DSM MSG Header
	pbuff += 4;								// protocolDiscriminator, dsmccType, messageId pass

	trans_id = GET_4BYTE( pbuff );
	pbuff += 5;								// trans_id, reserved pass
	
	adaptLength = *pbuff++; 				//adaptLength pass
	messageLength = GET_2BYTE( pbuff ); 
	pbuff += 2;								//messageLength pass
	pbuff += adaptLength;
	
	// DSI Payload
	pbuff += 20;							//serverId pass
	
	compatibilityLength = GET_2BYTE( pbuff );
	pbuff += 2;								//compatibilityLength pass
	pbuff += compatibilityLength;
	
	privateDataLength = GET_2BYTE( pbuff );
	pbuff += 2;								//privateDataLength pass
	
	if ( privateDataLength < 2 )
	{
		MLMF_Print("Error> msAPI_OAD_ProcessDSI : privateDataLength = 0x%x\n", privateDataLength);
		ParseFlag = 2;
		return MM_NO_ERROR;
	}
	
////////////////////////////////////////////////////////////////////////////
// Here is privateDataByte
////////////////////////////////////////////////////////////////////////////

	// GroupInfoIndication() - SSU Spec
	numberOfGroups = GET_2BYTE( pbuff ); pbuff += 2;

	for ( gCount = 0; gCount < numberOfGroups; gCount++ )
	{
		groupId 	= GET_4BYTE( pbuff ); pbuff += 4;
		groupSize	= GET_4BYTE( pbuff ); pbuff += 4;

		// GroupCompatibility()
		compatibilityLength = GET_2BYTE( pbuff ); 

		_rel = oad_VersonCheck(pbuff);

		pbuff += (2+compatibilityLength) ;

		// GroupInfoLength
		groupInfoLength = GET_2BYTE( pbuff ); pbuff += 2;
		pbuff += groupInfoLength;

		MLMF_Print("oad_VersonCheck _rel = %d numberOfGroups =%d!",_rel,numberOfGroups);
		if(MM_NO_ERROR == _rel)
		{
			MLMF_Print("oad_VersonCheck ok!");
			OtaFlag = MM_TRUE;
			break;
		}

	}

	//privateDataLength
	privateDataLength = GET_2BYTE( pbuff ); pbuff += 2;
	pbuff += privateDataLength;

	ParseFlag = 2;
	return MM_NO_ERROR;
}
#endif

MBT_BOOL GetEfuseDid(MBT_U16 *EfuseDid)
{
    SEFUSEDID s;
    MBT_U32 crc32;
    
    FLASHF_Read(EFUSEDID_Address, (MBT_U8*)&s, sizeof(SEFUSEDID));
    if(0 != strcmp(s.OvtFlag, "Ovt7c02Ahfu"))
    {
        return MM_FALSE;
    }
    
    crc32 = MMF_Common_CRC((MBT_U32*)&s, (sizeof(SEFUSEDID)-sizeof(MBT_U32))/4);
    if(crc32 != s.crc32)
    {
        return MM_FALSE;
    }

    *EfuseDid = s.EfuseDid;
    return MM_TRUE;
}

MBT_VOID SetEfuseDid(MBT_U16 EfuseDid)
{
    SEFUSEDID s;

    strcpy(s.OvtFlag, "Ovt7c02Ahfu");
    s.OvtFlag[11] = 0;

    s.EfuseDid = EfuseDid;
    s.crc32 = MMF_Common_CRC((MBT_U32*)&s, (sizeof(SEFUSEDID)-sizeof(MBT_U32))/4);

    FLASHF_ErasePartition(EFUSEDID_Address, 0x10000);
    FLASHF_ForceSaveFile(EFUSEDID_Address, (MBT_U8*)&s, sizeof(SEFUSEDID));
}

MBT_VOID CheckEfuseDid(MBT_VOID)
{
    MBT_U16 CpuEfuseDid, FlashEfuseDid;
#if 0	
    extern MBT_BOOL MDrv_SYS_GetEfuseDid(MBT_U16 *u16efuse_did);

    if(!MDrv_SYS_GetEfuseDid(&CpuEfuseDid))
    {
        return;
    }
#endif	
    if(!GetEfuseDid(&FlashEfuseDid))
    {
        SetEfuseDid(CpuEfuseDid);
    }
    else
    {
        if(CpuEfuseDid != FlashEfuseDid)
        {
            MLMF_Print("[%s][%d]\n",__FUNCTION__,__LINE__);
            FFSF_Lock();
            MLMF_SYS_WatchDog(0);
            FFSF_UnLock();
            MLMF_Task_Sleep(10000);
        }
    }
}

MMT_STB_ErrorCode_E MMLF_HightAppStart(MBT_VOID)
{
    MBT_U16 u16FormatFlagNum;
    MBT_BOOL bFormat = MM_FALSE;
    extern MBT_S32 AppLoadMonitorStart(MBT_BOOL first,MBT_U32 (*pShowProcess)(MBT_VOID));

    CheckEfuseDid();

    //MLF_ShowMemInfo();
    //Svc_ShowMemoryInfo();
    UIF_InitUIQueue();
    MLMF_FP_Display("boot", 4,MM_FALSE);

    if (OSPAppMemCtr_Setup() != MM_NO_ERROR)
    {
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }
    
    if(WGUIF_InitRSRC() != MM_NO_ERROR)
    {
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }
    UIF_OpenStartUpGif();
    UIF_ShowStartUpGif();
    if(MM_TRUE != CAF_InitSTBID())
    {
        MENTRY_DEBUG(( "Failed to initialise CAF_InitSTBID ..." ));
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }
    UIF_ShowStartUpGif();
    if(WGUIF_InitFontLib(MM_TRUE) != MM_NO_ERROR)
    {
        MLMF_Print("WGUIF_InitFontLib Faile\n");
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }
    u16FormatFlagNum = Flash_HasBeenFormatByFFs();
    //MLMF_Print("u16FormatFlagNum = %d\n",u16FormatFlagNum);

    if(1 == u16FormatFlagNum)
    {
        bFormat = MM_TRUE;
    }
    UIF_ShowStartUpGif();
    if ( SetupFFsSystem(bFormat,UIF_ShowStartUpGif) != MM_NO_ERROR)
    {
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }

    rsa_key_init();

    //MLMF_Print("SetupFFsSystem OK\n");
    if(2 != u16FormatFlagNum)
    {
        Flash_SetFfsFormatFlag();
    }
    
    SysInit_InitCustomInfo();
    UIF_ShowStartUpGif();
    AppLoadMonitorStart(MM_TRUE,UIF_ShowStartUpGif);

#if (BOOT_UP_AUTO_UPGRADE)
	MET_PTI_FilterHandle_T Filter = 0;
	MST_PTI_MaskData_T MaskData;
	MMT_TUNER_TunerStatus_E lockstatus = MM_TUNER_UNLOCKED;
	MBT_U32 ota_count = 0;

	MLMF_Tuner_Lock(0,AUTO_OTA_FRQ,AUTO_OTA_SYBM,AUTO_OTA_QAM,NULL);
	MLMF_Task_Sleep(1000);
	lockstatus = MLMF_Tuner_GetLockStatus(0);
	MLMF_Print("lockstatus = %d\n",lockstatus);
	if(lockstatus ==MM_TUNER_LOCKED)
	{
		memset(&MaskData,0x0, sizeof(MST_PTI_MaskData_T));
		MaskData.filter[0] = 0x3B; //control sections: DSI, DII
		MaskData.mask[0] = 0xFF;
		MaskData.filter[8] = 0x11;//protocolDiscriminator
		MaskData.mask[8] = 0xFF;
		MaskData.filter[9] = 0x03;//dsmccType
		MaskData.mask[9] = 0xFF; 
		MaskData.filter[10] = 0x10;  //0x1006  // DSI OAD_DSMCC_MSGID_DSI
		MaskData.mask[10] = 0xFF;
		MaskData.filter[11] = 0x06;   //0x1006  // DSI OAD_DSMCC_MSGID_DSI
		MaskData.mask[11] = 0xFF;
		MaskData.filter_len = 16;
	    MLMF_PTI_CreateFilter(AUTO_OTA_PID,0x4000+64,&Filter,MM_PTI_HW_INJECT);
		MLMF_PTI_SetFilter(Filter,&MaskData);
		MLMF_PTI_SetNotify(Ota_SectionEventCall);
		MLMF_PTI_EnableFilter(Filter);

		while(1)
		{
			MLMF_Task_Sleep(200);
			if(ParseFlag == 2 || ota_count > 9)
			{
				//解析完成或者1s之后退出
				break;
			}
			ota_count++;
		}
		
		MLMF_PTI_DisableFilter(Filter);
		MLMF_PTI_DestroyFilter(Filter);
		MLMF_PTI_SetNotify(NULL);

		if(OtaFlag == MM_TRUE)
		{
			MLMF_Print("triggerOta \n");
			appCa_SetOtaFreq(AUTO_OTA_FRQ * 10);
			appCa_SetOtaSymb(AUTO_OTA_SYBM * 10);
			appCa_SetOtaMod(AUTO_OTA_QAM + 1);
			appCa_SetOtaPID(AUTO_OTA_PID);
			appCa_triggerOta();
                //FFSF_Lock();
			MLMF_SYS_WatchDog(0);
                //FFSF_UnLock();
			MLMF_Task_Sleep(10000);	
		}
	}
#endif
    
    if (CAF_InitCa(UIF_GetCAOsdMsg))
    {
        MENTRY_DEBUG(( "Failed to initialise CAF_InitCa ..." ));
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }
	//MLMF_Print("Flash_SetFfsFormatFlag OK\n");
    /*必须在CA和dbase初始化前调用，不然开机CA消息不显示*/
    UIF_InitOSDLauguage();

    if(TMF_TimerInit(DBSF_MntTimeRunSecond) != MM_NO_ERROR)
    {
        MENTRY_DEBUG(( "Failed to initialise TMF_TimerInit ..."));
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }

    if(SRSTF_SectionFilterInit())
    {
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }

    UIF_ShowStartUpGif();
    if ( DBSF_DVBDbaseInit() )
    {
        MLMF_Print(("Failed to initialise DBASE ..." ));
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }
    
    MLMF_Blast_RegisterCallback(BLASTF_SendKeyMsg);
    MLMF_USB_RigesterCallback(UIF_GetUsbEventMsg);
    UIF_ShowStartUpGif();
    UIF_DecoderWaterLogoPNG();
	#if( 1 == ENABLE_ADVERT)
	Advert_Start();
	#endif
    if( UIF_DVBAppInit())
    {
        MLMF_Print(("Failed to initialise USIF ..." ));
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }      

    return MM_NO_ERROR;
}


MMT_STB_ErrorCode_E MMLF_HightAppTerm (MBT_VOID)
{
    return MM_NO_ERROR;
}

MBT_CHAR *MMLF_GetHightAppVer (MBT_VOID)
{
    return "1.0.0";
}


/* end C++ support */
#ifdef __cplusplus
}
#endif

/* ----------------------------- End of file (mml_entry.c) ------------------------- */
