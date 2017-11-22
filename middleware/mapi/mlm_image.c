/*
 * File     : image.c
 * Synopsys : Image loader code for images created with OS21's mkimage.pl.
 *
 * Copyright (c) 2005-2006 STMicroelectronics Limited. All right reserved.
 *
 * Functions provided to load code from file, or from FLASH using FLASH
 * directory structures.
 */
#include <stdlib.h>
#include <string.h>
#include "mapi_inner.h"
#include "mlm_image.h"

#define APP_MAGIC_FLAG	(0xDEADBEEF)

#define MLMM_MAINBLOCK_SIZE	(64*1024)


#define STB_HWMAC_SIZE    6
#define IMAGE_VER_SIZE    4


#define DM_HEAD_NUM_MAX    6 //app,font,bmp,radiologo,gif,waterlogo


//#define APP_FLASH_BASE_ADRESS   (3*1024*1024) //3M 

#define CHUNK_ID        0
#define CHUNK_LENGTH    4
#define CHUNK_OFFSET    8
#define CHUNK_CRC       12
#define CHUNK_NAME      16              
#define CHUNK_VERSION   32
#define CHUNK_TIME      48              
#define CHUNK_COMPRESS 64               
#define CHUNK_RESERVED 68               
#define CHUNK_HEADER_SIZE       128    // Should be the same size with struct CHUNK_HEADER

#define APP_HEADER_SIZE       28
//resouce id in flash
enum {
    M_AppCodeID = 0x0AF50103,
    M_AppFontlibID = 0x0AF50104,
    M_AppBmpID = 0x0AF50105,
    M_AppRadioLogoID = 0x0AF50106,
    M_AppStartupLogoID = 0x0AF50107,
    M_AppStartupGIF = 0x0AF50108,
    M_AppWaterLogo = 0x0AF50109,
    M_AppMaxImgType
};

typedef struct
{
	MBT_U32 id;      //partition id 
	MBT_U32 len;     //data length
	MBT_U32 offset;  //partition size
	MBT_U32 crc;     //data crc
	MBT_U8 name[16];     //partition name
	MBT_U8 version[16];  //data version
	MBT_U8 time[16];     //data produced time
	MBT_U32 compress;//is or not compressed
	MBT_U32 address;//record this partition data start address in flash
//	MBT_U8 reserved[60]; //reserved      commet for save ram
}CHUNK_HEADER;

static CHUNK_HEADER st_Header_List[DM_HEAD_NUM_MAX];
static MBT_S32 gAppResEnd = -1;

typedef struct _ovt_stb_private_info_t
{
	DVB_HWINFO STB_HW_INFO;
	OUTSERIAL STB_SERIAL;
	MBT_U8 STB_HWMAC[STB_HWMAC_SIZE];
	MBT_U8 STB_INFO_RESERVE[2];
	MBT_U8 STB_LOADER_VER[IMAGE_VER_SIZE];
	MBT_U8 STB_APP_VER[IMAGE_VER_SIZE];
}OVT_STB_PRIVATE_INFO_T;

static OVT_STB_PRIVATE_INFO_T st_Ovt_Stb_Info;


static volatile MBT_BOOL inited = MM_FALSE;

static MBT_U32 APP_FLASH_BASE_ADRESS = 0;
static MBT_U32 mlmv_u32LogoStartAddr = 0;

static MMT_STB_ErrorCode_E parseChunkHeaderList(CHUNK_HEADER *headerList);
static MBT_U32 get_ImageId_By_Type(MMT_ImageType_E stImageType);
static MBT_U32 find_AppResStart(void);

#if (0 == IMAGE_USE_MODE)

#endif

MMT_STB_ErrorCode_E MLF_ImgInit(MBT_VOID)
{
	memset(&st_Ovt_Stb_Info, 0, sizeof(OVT_STB_PRIVATE_INFO_T));
	memset(st_Header_List, 0, sizeof(st_Header_List));
	gAppResEnd = -1;
	APP_FLASH_BASE_ADRESS = find_AppResStart();
	if(APP_FLASH_BASE_ADRESS == 0)
	{
		return MM_ERROR_UNKNOW;
	}
	MMT_STB_ErrorCode_E ret = parseChunkHeaderList(st_Header_List);
	if(ret != MM_NO_ERROR)
	{
		return MM_ERROR_UNKNOW;
	}
	inited = MM_TRUE;
    return MM_NO_ERROR;
}

MBT_S32 IMGF_Term(void)
{
	return 0;
}

MMT_STB_ErrorCode_E MLMF_IMG_GetHightAppVer(MBT_U16 *pu16Version)
{
	if(inited != MM_TRUE){
		return MM_ERROR_NOT_INITIALIZE;
	}

	if(pu16Version == MM_NULL){
		return MM_ERROR_BAD_PARAMETER;
	}

//	memset(pu16Version, 0, IMAGE_VER_SIZE);
//	memcpy(pu16Version, st_Ovt_Stb_Info.STB_APP_VER, IMAGE_VER_SIZE);
	*pu16Version = AP_SW_VERSION >> 16;

    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E MLMF_IMG_GetStbSerial(OUTSERIAL *ptrSerail)
{
	if(inited != MM_TRUE){
		return MM_ERROR_NOT_INITIALIZE;
	}

	if(ptrSerail == MM_NULL){
		return MM_ERROR_BAD_PARAMETER;
	}

	memset(ptrSerail, 0, sizeof(OUTSERIAL));
	memcpy(ptrSerail, &(st_Ovt_Stb_Info.STB_SERIAL), sizeof(OUTSERIAL));
    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E MLMF_IMG_GetStbMac(MBT_U8 *ptru8Mac)
{
	if(inited != MM_TRUE){
		return MM_ERROR_NOT_INITIALIZE;
	}

	if(ptru8Mac == MM_NULL){
		return MM_ERROR_BAD_PARAMETER;
	}

	memset(ptru8Mac, 0, STB_HWMAC_SIZE);
	memcpy(ptru8Mac, st_Ovt_Stb_Info.STB_HWMAC, STB_HWMAC_SIZE);
    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E MLMF_IMG_GetStbHwInfo(DVB_HWINFO *ptrHwInfo)
{
	if(inited != MM_TRUE){
		return MM_ERROR_NOT_INITIALIZE;
	}

	if(ptrHwInfo == MM_NULL){
		return MM_ERROR_BAD_PARAMETER;
	}

	memset(ptrHwInfo, 0, sizeof(DVB_HWINFO));
	memcpy(ptrHwInfo, &(st_Ovt_Stb_Info.STB_HW_INFO), sizeof(DVB_HWINFO));
	ptrHwInfo->u16VersionH = HW_VERSION;
    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E MLMF_IMG_GetStbLoaderVersion(MBT_U8 *pu8Version)
{
	if(inited != MM_TRUE){
		return MM_ERROR_NOT_INITIALIZE;
	}

	if(pu8Version == MM_NULL){
		return MM_ERROR_BAD_PARAMETER;
	}

	memset(pu8Version, 0, IMAGE_VER_SIZE);
	memcpy(pu8Version, st_Ovt_Stb_Info.STB_LOADER_VER, IMAGE_VER_SIZE);
    return MM_NO_ERROR;
}

MBT_S32 MLMF_IMG_GetSpecifyImageSize(MMT_ImageType_E stImageType)
{
	MBT_U8 i = 0; 
	if(inited != MM_TRUE){
		return MM_ERROR_NOT_INITIALIZE;
	}
	MBT_U32 id = get_ImageId_By_Type(stImageType);
	if(id == 0){
		return -1;	
	}
	for (i = 0; i < DM_HEAD_NUM_MAX; ++i) {
		if(st_Header_List[i].id != id)
			continue;

		return st_Header_List[i].len;
	}
    return -1;
}

MMT_STB_ErrorCode_E MLMF_IMG_GetSpecifyImage(MMT_ImageType_E stImageType,MBT_U8 *pu8DestBuffer,MBT_U32 *pu32DestBufSize)
{
	MBT_U8 i = 0; 

	if(inited != MM_TRUE)
	{
		return MM_ERROR_NOT_INITIALIZE;
	}

	if(pu8DestBuffer == MM_NULL || pu32DestBufSize == MM_NULL)
	{
		return MM_ERROR_BAD_PARAMETER;	
	}

	MBT_U32 id = get_ImageId_By_Type(stImageType);
	if(id == 0)
	{
		return MM_ERROR_BAD_PARAMETER;	
	}
	
	for (i = 0; i < DM_HEAD_NUM_MAX; ++i) 
	{
		if(st_Header_List[i].id != id)
		{
			continue;
		}

		#if (0 == IMAGE_USE_MODE)
		memcpy(pu8DestBuffer,st_Header_List[i].address,st_Header_List[i].len);
		#elif (1 == IMAGE_USE_MODE)
		if(MM_NO_ERROR != MLMF_Flash_Read(st_Header_List[i].address,pu8DestBuffer,st_Header_List[i].len))
		{
			return MM_ERROR_UNKNOW;
		}

		#endif
		
/*        if(MDrv_SERFLASH_Read(st_Header_List[i].address,st_Header_List[i].len,pu8DestBuffer)==FALSE)
        {
            return MM_ERROR_UNKNOW;
        }
        */
		*pu32DestBufSize = st_Header_List[i].len;
		return MM_NO_ERROR;
	}
    return MM_ERROR_UNKNOW;
}

static MBT_U32 change_endian(MBT_U32 u32Data)
{
	return ((u32Data & 0xFF000000) >> 24) | ((u32Data & 0x00FF0000) >> 8) | ((u32Data & 0x0000FF00) << 8) | ((u32Data & 0x000000FF) << 24);
}

MMT_STB_ErrorCode_E MLMF_IMG_SetSpecifyImage(MMT_ImageType_E stImageType,MBT_U8 *pu8SrcBuffer,MBT_U32 u32SrcBufSize)
{
	MBT_U8 i = 0,j = 0;
	MBT_U8 *pu8TmpBuf = NULL;
	MBT_U8 *pCmpBuf = NULL;
	MBT_U32 u32Addr = 0;
	MBT_U32 u32Tmp = 0;

	if(inited != MM_TRUE)
	{
		return MM_ERROR_NOT_INITIALIZE;
	}

	if(pu8SrcBuffer == MM_NULL || u32SrcBufSize > MLMM_MAINBLOCK_SIZE - CHUNK_HEADER_SIZE)
	{
		return MM_ERROR_BAD_PARAMETER;	
	}

	MBT_U32 id = get_ImageId_By_Type(stImageType);
	if(id == 0)
	{
		return MM_ERROR_BAD_PARAMETER;	
	}
	
	for (i = 0; i < DM_HEAD_NUM_MAX; ++i) 
	{
		if(st_Header_List[i].id != id)
		{
			continue;
		}
	
		st_Header_List[i].len = u32SrcBufSize;

		#if 1
		{
			MBT_U32 tmpcrc = 0;
			extern MBT_U32 MMF_Common_CRCU8(MBT_U8* pdata, MBT_U32 size);
			tmpcrc = MMF_Common_CRCU8(pu8SrcBuffer,u32SrcBufSize);
			MLMF_Print("----boot gif crc is 0x%x\n",tmpcrc);
			st_Header_List[i].crc = tmpcrc ;
		}
		#endif
		
		pu8TmpBuf = (MBT_U8 *)MLMF_Malloc(MLMM_MAINBLOCK_SIZE);
		if(NULL == pu8TmpBuf)
		{
			break;
		}
		pCmpBuf = (MBT_U8 *)MLMF_Malloc(MLMM_MAINBLOCK_SIZE);
		if(NULL == pu8TmpBuf)
		{
			MLMF_Free(pu8TmpBuf);
			break;
		}
		memset(pu8TmpBuf,0,MLMM_MAINBLOCK_SIZE);
		memset(pCmpBuf,0,MLMM_MAINBLOCK_SIZE);

		u32Tmp = change_endian(st_Header_List[i].id);
		memcpy(pu8TmpBuf + CHUNK_ID,&u32Tmp,4);
		u32Tmp = change_endian(st_Header_List[i].len);
		memcpy(pu8TmpBuf + CHUNK_LENGTH,&u32Tmp,4);
		u32Tmp = change_endian(st_Header_List[i].offset);
		memcpy(pu8TmpBuf + CHUNK_OFFSET,&u32Tmp,4);
		u32Tmp = change_endian(st_Header_List[i].crc);
		memcpy(pu8TmpBuf + CHUNK_CRC,&u32Tmp,4);
		
		memcpy(pu8TmpBuf + CHUNK_NAME,st_Header_List[i].name,16);
		memcpy(pu8TmpBuf + CHUNK_VERSION,st_Header_List[i].version,16);
		memcpy(pu8TmpBuf + CHUNK_TIME,st_Header_List[i].time,16);
		
		u32Tmp = change_endian(st_Header_List[i].compress);
		memcpy(pu8TmpBuf + CHUNK_COMPRESS,&u32Tmp,4);

		memcpy(pu8TmpBuf + CHUNK_HEADER_SIZE,pu8SrcBuffer,u32SrcBufSize);

		u32Addr = st_Header_List[i].address & 0xFFFF0000;
		MLMF_Print("----MLMF_IMG_SetSpecifyImage--[0x%x]--\n",u32Addr);
	/*	MDrv_SERFLASH_AddressErase(u32Addr,MLMM_MAINBLOCK_SIZE,TRUE);
		for(j = 0;j < 3;j++)
		{
			if(MDrv_SERFLASH_Write(u32Addr,MLMM_MAINBLOCK_SIZE,pu8TmpBuf))
			{
				MDrv_SERFLASH_Read(u32Addr,MLMM_MAINBLOCK_SIZE,pCmpBuf);
				if(0 == memcmp(pu8TmpBuf,pCmpBuf,MLMM_MAINBLOCK_SIZE))
				{
					MLMF_Print("----write flash ok--[%d]--\n",j );
					break;
				}
			}
		}
*/
		MLMF_Free(pu8TmpBuf);
		MLMF_Free(pCmpBuf);
        
		return MM_NO_ERROR;
	}
    return MM_ERROR_UNKNOW;
}


MBT_S32 MLMF_IMG_GetAppResEnd(void)
{
	return gAppResEnd;
}

static MBT_U32 get_ImageId_By_Type(MMT_ImageType_E stImageType){
	switch (stImageType) {
		case MM_IMAGE_CODE:
			return M_AppCodeID;
			break;
		case MM_IMAGE_FONTLIB:
			return M_AppFontlibID;
			break;
		case MM_IMAGE_BMPDATA:
			return M_AppBmpID;
			break;
		case MM_IMAGE_AUDIOLOGO:
			return M_AppRadioLogoID;
			break;
		case MM_IMAGE_KCBPLLOGO:
			return M_AppStartupLogoID;
			break;
        case MM_IMAGE_KCBPLSTARTUPGIF:
            return M_AppStartupGIF;
            break;
        case MM_IMAGE_WATERLOGO:
            return M_AppWaterLogo;
            break;
		default:
			return 0;
	}
}


static MBT_U32 fetch_long(MBT_U8 *buf, MBT_U32  offset)
{
	return (buf[offset + 0] << 24) | (buf[offset + 1] << 16) | (buf[offset + 2] << 8) | buf[offset + 3];
}


static MMT_STB_ErrorCode_E parseChunkHeaderList(CHUNK_HEADER *headerList)
{
	MBT_U8 i = 0; 
	MBT_U8 buf[CHUNK_HEADER_SIZE] = {0};
	MBT_U32 sumOffset = 0;

#if (0 == IMAGE_USE_MODE)
	for (i = 1; i < DM_HEAD_NUM_MAX; ++i)
#elif (1 == IMAGE_USE_MODE)
	for (i = 0; i < DM_HEAD_NUM_MAX; ++i)
#endif		
	{
		memset(buf, 0, CHUNK_HEADER_SIZE);
 /*       if(MDrv_SERFLASH_Read(APP_FLASH_BASE_ADRESS + sumOffset,CHUNK_HEADER_SIZE,buf)==FALSE)
        {
            return MM_ERROR_UNKNOW;
        }
*/

		#if (0 == IMAGE_USE_MODE)
		memcpy(buf,APP_FLASH_BASE_ADRESS + sumOffset,CHUNK_HEADER_SIZE);

		#elif (1 == IMAGE_USE_MODE)
		if(MM_NO_ERROR != MLMF_Flash_Read(APP_FLASH_BASE_ADRESS + sumOffset,buf,CHUNK_HEADER_SIZE))
		{
			return MM_ERROR_UNKNOW;
		}
		#endif

		headerList[i].id = fetch_long(buf, CHUNK_ID);
		headerList[i].len = fetch_long(buf, CHUNK_LENGTH);
		headerList[i].offset = fetch_long(buf, CHUNK_OFFSET);
		headerList[i].crc = fetch_long(buf, CHUNK_CRC);
		memcpy(headerList[i].name, buf + CHUNK_NAME, 16);
		memcpy(headerList[i].version, buf + CHUNK_VERSION, 16);
		memcpy(headerList[i].time, buf + CHUNK_TIME, 16);
		headerList[i].compress = fetch_long(buf, CHUNK_COMPRESS);

		headerList[i].address = APP_FLASH_BASE_ADRESS + CHUNK_HEADER_SIZE + sumOffset;

		sumOffset += headerList[i].offset;
	}
	gAppResEnd = sumOffset + APP_FLASH_BASE_ADRESS + MLMM_MAINBLOCK_SIZE;
	return MM_NO_ERROR;
}

static MBT_U32 find_AppResStart(void)
{

#if (0 == IMAGE_USE_MODE)
	FILE *_fp = NULL;
	unsigned char *_pTmp = NULL;
	unsigned int _filelen = 0;

	_fp = fopen("/root/app_pack.bin","rb");
	
	if (NULL != _fp)
	{
		fseek(_fp, 0L, SEEK_END);
		_filelen = ftell(_fp);
		fseek(_fp, 0L, SEEK_SET);

		_pTmp = MLMF_Malloc(_filelen);

		if (NULL != _pTmp)
		{
			fread(_pTmp,1,_filelen,_fp);
			fclose(_fp);
			_fp = NULL;
		}
	}

	return (MBT_U32)_pTmp;

#elif (1 == IMAGE_USE_MODE)
	MMT_STB_ErrorCode_E ret = MM_NO_ERROR;
	MBT_U32 sumOffset = 0;
	MBT_U8 appHeader[APP_HEADER_SIZE];
	MBT_U8 *pTemp = appHeader;
	MBT_U32 u32AppMagicFlag = 0;
	MBT_U32 u32AppSPIAddr = 0;
	MBT_U32 u32AppFileLen = 0;
	MBT_U32 u32LogoAddr = 0;
	MBT_U32 u32LogoFileLen = 0;
	MBT_U8 u8Word = 0; // 4 bytes is a word
	MBT_U8 u8LogoLenArray[4] = {0}; //logo length stored in first 4 bytes in logo partition
	while(MM_TRUE)
	{
		memset(appHeader, 0, APP_HEADER_SIZE);
		if(MM_NO_ERROR != MLMF_Flash_Read(sumOffset,appHeader,APP_HEADER_SIZE))
		{
			return 0;
		}

		sumOffset += MLMM_MAINBLOCK_SIZE;

		pTemp = appHeader;
		u32AppMagicFlag = 0;
		u32AppMagicFlag = u32AppMagicFlag | ((*pTemp) << 24);
		pTemp ++;
		u32AppMagicFlag = u32AppMagicFlag | ((*pTemp) << 16);
		pTemp++;
		u32AppMagicFlag = u32AppMagicFlag | ((*pTemp) << 8);
		pTemp++;
		u32AppMagicFlag = u32AppMagicFlag | ((*pTemp));

		if(u32AppMagicFlag != APP_MAGIC_FLAG)
		{
			continue;
		}

		// AppFileLen
		u32AppFileLen = 0;
		pTemp ++;
		u32AppFileLen = u32AppFileLen | ((*pTemp) << 24);
		pTemp ++;
		u32AppFileLen = u32AppFileLen | ((*pTemp) << 16);
		pTemp++;
		u32AppFileLen = u32AppFileLen | ((*pTemp) << 8);
		pTemp++;
		u32AppFileLen = u32AppFileLen | ((*pTemp));

		u8Word = 4 - (u32AppFileLen % 4);//cacl word is bucause adjust app to a word 4 bytes
		u32AppFileLen = (u32AppFileLen + APP_HEADER_SIZE + u8Word + MLMM_MAINBLOCK_SIZE) & 0XFFFF0000; 

		//u32AppSPIAddr
		u32AppSPIAddr = 0;
		pTemp += 8;
		pTemp ++;
		u32AppSPIAddr = u32AppSPIAddr | ((*pTemp) << 24);
		pTemp ++;
		u32AppSPIAddr = u32AppSPIAddr | ((*pTemp) << 16);
		pTemp++;
		u32AppSPIAddr = u32AppSPIAddr | ((*pTemp) << 8);
		pTemp++;
		u32AppSPIAddr = u32AppSPIAddr | ((*pTemp));

		MLMF_Print("app partition start address in flash: 0x%X\n", u32AppSPIAddr - 28);

		u32LogoAddr = u32AppSPIAddr - 28 + u32AppFileLen;
		memset(u8LogoLenArray, 0, sizeof(u8LogoLenArray));
/*		ret = MDrv_SERFLASH_Read(u32LogoAddr, sizeof(u8LogoLenArray), u8LogoLenArray);
		if(ret != TRUE){
			MLMF_Print("%s, read logo lenght error\n", __FUNCTION__);
			return 0;
		}*/

		if(MM_NO_ERROR != MLMF_Flash_Read(u32LogoAddr,u8LogoLenArray,sizeof(u8LogoLenArray)))
		{
			return 0;
		}
		u32LogoFileLen = ((u8LogoLenArray[0] << 24) | (u8LogoLenArray[1] << 16) | (u8LogoLenArray[2] << 8) | u8LogoLenArray[3]);
		MLMF_Print("logo start address in flash: 0x%X, len: 0x%X\n", u32LogoAddr, u32LogoFileLen);
		u32LogoFileLen = (u32LogoFileLen + 4 + MLMM_MAINBLOCK_SIZE) & 0XFFFF0000;
		mlmv_u32LogoStartAddr = u32LogoAddr;
		return u32LogoAddr + u32LogoFileLen;
	}
#endif	
}
