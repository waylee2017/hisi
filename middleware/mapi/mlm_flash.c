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

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "mapi_inner.h"
#include "nvm_api.h"

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#define FILE_REPLACE_FLASH 1

#if FILE_REPLACE_FLASH

#if(FLASH_SIZE_CFG == FLASH_8M)
#define MAX_FLASH_SIZE (0x800000)
#elif(FLASH_SIZE_CFG == FLASH_16M)
#define MAX_FLASH_SIZE (0x1000000)
#endif


static char* 	FSLC_FlashBaseFile ="/tmp/FlashBaseFile";
#define FSLC_SIZE						(MAX_FLASH_SIZE - FSLC_FlashBaseAddress)			/*40*1024*/
#endif
//#define TF_CA_SIZE						(0x00A00000)			/*40*1024*/

//unsigned char TFEepRomA[TF_CA_SIZE];

#if 0
#define BLFLASH_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define BLFLASH_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define BLFLASH_ERR(fmt, args...)  {}
#define BLFLASH_DEBUG(fmt, args...) {}
#endif

#define FLASH_BLOCK_MAX		(64*1024)

#define FLASH_DUMPDATA  0
#if FLASH_DUMPDATA
static void _BLSLMF_Flash_DumpData(MI_U32 u32StartAddr, MI_U8 *pu8Buf, MI_U32 u32Length)
{
    MI_U32 u32Index;
    for(u32Index=0; u32Index<u32Length; u32Index++)
    {
        if(u32Index%16==0)
        {
            MLMF_Print("\n0x%08x:", (unsigned int)(u32StartAddr+u32Index));
        }
        MLMF_Print("0x%02x ", (unsigned int)pu8Buf[u32Index]);
    }
    MLMF_Print("\n");
}
#endif
/*
*说明：往指定的FLASH地址读入数据，可重入。
*输入参数：
*			flash_addr: FLASH地址。
*			buf: 数据缓存指针。
*			len: 数据长度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Flash_Read(MBT_U32 flash_addr, MBT_VOID * buf, MBT_U32 len)
{
#if FILE_REPLACE_FLASH
	FILE * _fp = NULL;
	unsigned int _filelen = 0;

	if (NULL != buf)
	{
		_fp = fopen(FSLC_FlashBaseFile, "rb");
		
		if (NULL != _fp)
		{
			fseek(_fp, (flash_addr-FSLC_FlashBaseAddress), SEEK_SET);
			fread(buf,1,len,_fp);
			fclose(_fp);
			_fp = NULL;
		}
	}
#endif	
	return MM_NO_ERROR;
}


/*
*说明：往指定的FLASH地址写入数据，可重入。
*输入参数：
*			flash_addr: FLASH地址。
*			buf: 数据缓存指针。
*			len: 数据长度。
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Flash_Write(MBT_U32 flash_addr, MBT_U8 *buf,MBT_U32 len)
{
#if FILE_REPLACE_FLASH
	FILE * _fp = NULL;
	unsigned int _filelen = 0;
	unsigned char *_pTempBuffer = NULL;

	_fp = fopen(FSLC_FlashBaseFile, "rb");
	
	if (NULL != _fp)
	{
		fseek(_fp, 0L, SEEK_END);
		_filelen = ftell(_fp);
		fseek(_fp, 0L, SEEK_SET);

		_pTempBuffer = MLMF_Malloc(_filelen);

		if (NULL != _pTempBuffer)
		{
			fread(_pTempBuffer,1,_filelen,_fp);
			fclose(_fp);
			_fp = NULL;
		}
	}

	
	_fp = fopen(FSLC_FlashBaseFile, "wb");	
	
	if (NULL != _fp)
	{
		memcpy(_pTempBuffer+(flash_addr-FSLC_FlashBaseAddress), buf, len);
		fseek(_fp,0,SEEK_SET);
		fwrite(_pTempBuffer,_filelen,1,_fp);
		fclose(_fp);
		MLMF_Free(_pTempBuffer);
		_pTempBuffer = NULL;
		_fp = NULL;
	}
#endif
	return MM_NO_ERROR;
}



/*
*说明：擦除一个连续的区域，不足一个BLOCK，则擦除整个BLOCK。
*输入参数：
*			flash_addr: FLASH地址
*			size: 要擦除的flash长度
*输出参数:
*			无。
*		返回：
*		MM_NO_ERROR:成功。
*	错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_Flash_EraseBlock(MBT_U32 flash_addr)
{
	return MM_NO_ERROR;
}


MMT_STB_ErrorCode_E MLF_FlashInit(MBT_VOID)
{
#if FILE_REPLACE_FLASH
	FILE * _fp = NULL;
	unsigned char *_pTempBuffer = NULL;

	if (0 != access(FSLC_FlashBaseFile,F_OK))
	{
		_fp = fopen(FSLC_FlashBaseFile, "wb+");
		if (_fp != NULL) {
			_pTempBuffer = MLMF_Malloc(FSLC_SIZE);
			memset(_pTempBuffer,0x0,FSLC_SIZE);
			fseek(_fp,0,SEEK_SET);
			fwrite(_pTempBuffer,FSLC_SIZE,1,_fp);	
			MLMF_Free(_pTempBuffer);
			_pTempBuffer = NULL;
			fclose(_fp);
			_fp = NULL;
		}		
	}
#endif
	return MM_NO_ERROR;
}


MMT_STB_ErrorCode_E MLF_FlashTerm(MBT_VOID)
{
    return MM_NO_ERROR;
}

#ifdef __cplusplus
}
#endif/* __cplusplus */
