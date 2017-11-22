/*******************************************************************************
 *             Copyright 2004 - 2014, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: loader.c
 * Description: according to upgrade parameter to choose app kernel or loader kernel.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 ******************************************************************************/
#include "hi_flash.h"
#include "hi_type.h"
#include "hi_debug.h"
#include "schedule.h"
#include "hi_unf_keyled.h"
#include "hi_boot_common.h"
#ifndef HI_MINIBOOT_SUPPORT
#include "common.h"
#endif
#include "loader_upgrade.h"
#include "loaderdb_info.h"
#include "drv_gpio_ext.h"
#include "drv_i2c_ext.h"

#ifndef SZ_1MB
 #define SZ_1MB (1024 * 1024)
#endif

#define LOADER_TICK 10
#define LOADER_WAIT_KEY_TIME (500 / LOADER_TICK)    /*units: ms.*/
#define LOADER_WAIT_OK_TIME (500 / LOADER_TICK)     /*units: ms.*/

#undef MAX_CMD_SIZE

#define MAX_CMD_SIZE 256
#define MAX_BOOT_ARGS_SIZE 512

#define MAC_STR_SIZE 32
#define IMAGE_HEAD_SIZE (sizeof(uImage_header_t))
#define MAX_STRLEN(a, b) ((strlen((const char *)a) > strlen((const char *)b)) ? strlen((const char *)a) : strlen((const char *)b))

static HI_VOID Loader_HtoNL(HI_U32 *pVal);
static HI_S32  Loader_ReadUpgrdTag(UPGRD_TAG_PARA_S *pstTagParam);
static HI_S32  Loader_WriteUpgrdTag(UPGRD_TAG_PARA_S *pstTagParam);
#if defined(HI_BUILD_WITH_KEYLED)
static HI_S32  Loader_CheckManuForceUpgrade(HI_VOID);
#endif

#if defined(HI_LOADER_APPLOADER) || defined(HI_LOADER_FIRSTBOOT) 
static HI_VOID *g_buff = HI_NULL;
static HI_VOID * Customer_Malloc(HI_VOID);
#define PARTION_NAME_LEN (32)

typedef struct tagLOADER_DATABLOCK_INFO_S
{
    HI_CHAR         ac8PartionName[PARTION_NAME_LEN];     /*数据所在分区的分区名，在bootargs中描述，不同数据
                                                          可能位于同一分区内，此时这些数据的分区名相同*/
    HI_FLASH_TYPE_E eFlashType;                     /*分区所在Flash的类型*/
    HI_U32          u32Offset;                          /*数据在分区中的地址偏移,如某分区只保存一种数据，
                                                        则这种数据的地址偏移位０*/
    HI_U32          u32Size;                            /*数据在分区中预留的长度*/
} LOADER_DATABLOCK_INFO_S;

static HI_S32 GetDataBlockInfo(const HI_CHAR *pstrDataName, const HI_CHAR *bootargs,
		LOADER_DATABLOCK_INFO_S *pstDataInfo)
{
	HI_CHAR *pstr  = (HI_CHAR *)pstrDataName;
	HI_CHAR *pstr2 = (HI_CHAR *)bootargs;
	HI_CHAR buf[12];

	if ((HI_NULL == pstrDataName) || (HI_NULL == bootargs) || (HI_NULL == pstDataInfo))
	{
		return HI_FAILURE;
	}

	pstr = strstr(pstr2, pstr);

	if ((HI_NULL == pstr) || (strlen(pstr) <= strlen(pstrDataName)))
	{
		return HI_FAILURE;
	}

	if (pstr[strlen(pstrDataName)] == '=')
	{
		/*get partition name*/
		pstr += strlen(pstrDataName) + 1; //point to the char after '='
		pstr2 = strstr(pstr, ",");

		if (HI_NULL == pstr2)
		{
			return HI_FAILURE;
		}

		if ((HI_U32)(pstr2 - pstr) >= sizeof(pstDataInfo->ac8PartionName))
		{
			HI_ERR_LOADER("datablock name is too long in bootargs!");
			return HI_FAILURE;
		}

		memset(pstDataInfo->ac8PartionName, 0, sizeof(pstDataInfo->ac8PartionName));
		memcpy(pstDataInfo->ac8PartionName, pstr, pstr2 - pstr);

		/*get offset*/
		pstr  = pstr2 + 1;
		pstr2 = strstr(pstr, ",");

		if (HI_NULL == pstr2)
		{
			return HI_FAILURE;
		}

		if ((HI_U32)(pstr2 - pstr) >= sizeof(buf))
		{
			HI_ERR_LOADER("offset is invalid in bootargs!");
			return HI_FAILURE;
		}

		memset(buf, 0, sizeof(buf));
		memcpy(buf, pstr, pstr2 - pstr);
#ifndef HI_MINIBOOT_SUPPORT
		pstDataInfo->u32Offset = simple_strtoul(buf, HI_NULL, 16);
#else
        pstDataInfo->u32Offset = simple_strtoul_2(buf, HI_NULL, 16);
#endif
		/*get size*/
		pstr  = pstr2 + 1;
		pstr2 = strstr(pstr, " ");

		if (HI_NULL == pstr2)
			return HI_FAILURE;

		if ((HI_U32)(pstr2 - pstr) >= sizeof(buf))
		{
			HI_ERR_LOADER("size is invalid in bootargs!");
			return HI_FAILURE;
		}

		memset(buf, 0, sizeof(buf));
		memcpy(buf, pstr, pstr2 - pstr);
#ifndef HI_MINIBOOT_SUPPORT
        pstDataInfo->u32Size = simple_strtoul(buf, HI_NULL, 16);
#else
        pstDataInfo->u32Size = simple_strtoul_2(buf, HI_NULL, 16);
#endif
    }

	return HI_SUCCESS;
}

HI_S32 Upgrd_OpenDataBlock(const HI_CHAR* pstDBName, HI_HANDLE *hFlash, HI_U32 *pu32RegionSize, HI_U32 *pu32Offset,
		HI_U32 *pu32Size)
{
	HI_Flash_InterInfo_S stFlashInfo;
	LOADER_DATABLOCK_INFO_S stDBInfo;

	if ((HI_NULL == pstDBName)
			|| (HI_NULL == hFlash)
			|| (HI_NULL == pu32RegionSize)
			|| (HI_NULL == pu32Offset)
			|| (HI_NULL == pu32Size))
	{
		return HI_FAILURE;
	}

	*hFlash = HI_Flash_Open(HI_FLASH_TYPE_BUTT, (HI_CHAR *)pstDBName, (HI_U64)0, (HI_U64)0);

	if (HI_INVALID_HANDLE == *hFlash)
	{        
		HI_CHAR *bootargs = getenv("bootargs");

		if (HI_NULL == bootargs)
		{
			HI_ERR_LOADER("bootargs is null!");
			return HI_FAILURE;
		}

		if (HI_SUCCESS != GetDataBlockInfo(pstDBName, (const HI_CHAR *) bootargs, &stDBInfo))
		{
			return HI_FAILURE;
		}

		*hFlash = HI_Flash_Open(HI_FLASH_TYPE_BUTT, stDBInfo.ac8PartionName, (HI_U64)0, (HI_U64)0);
		if (HI_INVALID_HANDLE == *hFlash)
		{
			return HI_FAILURE;
		}

		*pu32Offset = stDBInfo.u32Offset;
		*pu32Size = stDBInfo.u32Size;

		if (HI_SUCCESS != HI_Flash_GetInfo(*hFlash, &stFlashInfo))
		{
			return HI_FAILURE;
		}

		*pu32RegionSize = stFlashInfo.BlockSize;
	}
	else
	{
		*pu32Offset = 0;
		if (HI_SUCCESS != HI_Flash_GetInfo(*hFlash, &stFlashInfo))
		{
			return HI_FAILURE;
		}

		*pu32RegionSize = stFlashInfo.BlockSize;
		*pu32Size = stFlashInfo.BlockSize;
	}

	return HI_SUCCESS;
}
#endif

/*LED Show string, only for "boot" or "load"*/
static HI_VOID LED_ShowBLString(HI_CHAR *string)
{
#ifdef HI_BUILD_WITH_KEYLED
	HI_U32 aBLLedValue[2][5] =
	{
		/*boot value*/ {0xe1c5c5c1, 0x785c5c7c, 0x1e3a3a3e, 0x785c5c7c, 0x785c5c7c},
		/*load value*/ {0x1105c5e3, 0x5e775c38, 0x7aee3a1c, 0x5e775c38, 0x5e775c38}
	};

	HI_U8 u8Index = 0;

#if defined HI_BOOT_KEYLED_74HC164
	u8Index = 0;
#elif defined HI_BOOT_KEYLED_PT6961
	u8Index = 1;
#elif defined HI_BOOT_KEYLED_CT1642
	u8Index = 2;
#elif defined HI_BOOT_KEYLED_PT6964
	u8Index = 3;
#elif defined HI_BOOT_KEYLED_FD650
	u8Index = 4;
#endif

	if (0 == strncmp(string, "boot", MAX_STRLEN(string, "boot")))
		HI_UNF_LED_Display(aBLLedValue[0][u8Index]);
	else if (0 == strncmp(string, "LoAd", MAX_STRLEN(string, "LoAd")))
		HI_UNF_LED_Display(aBLLedValue[1][u8Index]);
#endif

}

extern unsigned int get_ddr_free(unsigned int *size, unsigned int align);

#ifndef HI_ADVCA_TYPE_NAGRA

static HI_VOID Loader_HtoNL(HI_U32 *pVal)
{
	HI_U32 u32Temp = 0;
	HI_U32 u32Ret = 0;

	if (HI_NULL == pVal)
	{
		HI_ERR_LOADER("NULL pointer.");
		return;
	}

	u32Temp = *pVal;
	u32Ret = ((u32Temp << 24) & 0xff000000)
		| ((u32Temp << 8) & 0x00ff0000)
		| ((u32Temp >> 8) & 0x0000ff00)
		| ((u32Temp >> 24) & 0x000000ff);

	*pVal = u32Ret;
}

/******
    The HI_LOADER_FIRSTBOOT MACRO from Makefile of SDK root directory
    and it used for double bootloader scheme
*/
#if defined(HI_LOADER_APPLOADER) || defined(HI_LOADER_FIRSTBOOT)
#if defined(HI_LOADER_APPLOADER)

#if defined(CHIP_TYPE_hi3716mv330)
#define MAX_LOADER_SIZE (4 * 1024 * 1024)
#else
#define MAX_LOADER_SIZE (8 * 1024 * 1024)
#endif

#else
#define MAX_LOADER_SIZE (1 * 1024 * 1024)
#endif
HI_S32 Customer_Boot(HI_FLASH_TYPE_E enFlashType, HI_CHAR *pPartName, HI_U64 Address, HI_U64 Len)
{
	char cmdStr[MAX_CMD_SIZE];
	HI_VOID *pImage = NULL;
	HI_HANDLE hFlash = HI_INVALID_HANDLE;
	HI_U32 u32Len = 0;
	HI_U32 u32PartSize  = 0;
	HI_U32 u32BlockSize = 0;
	uImage_header_t* hdr1;
	HI_S32 s32Ret = HI_SUCCESS;
	HI_Flash_InterInfo_S stFlashInfo;

	if (HI_NULL == pPartName)
	{
		HI_ERR_LOADER("Partition name is NULL.");
		return HI_FAILURE;
	}

	hFlash = HI_Flash_Open(enFlashType, pPartName, Address, Len);
	if (HI_INVALID_HANDLE == hFlash)
	{
		HI_ERR_LOADER("Failed to open kernel partition.");
		return HI_FAILURE;
	}

	do
	{
		s32Ret = HI_Flash_GetInfo(hFlash, &stFlashInfo);
		if (HI_SUCCESS != s32Ret)
		{
			HI_ERR_LOADER("Failed to get block size.");
			break;
		}

		u32BlockSize = stFlashInfo.BlockSize;
		u32PartSize = stFlashInfo.PartSize;

		pImage = g_buff;
		if (NULL == pImage)
		{
			HI_ERR_LOADER("Failed to allocte memory.");
            s32Ret = HI_FAILURE;
			break;
		}
#if defined(HI_LOADER_APPLOADER) || defined(HI_LOADER_FIRSTBOOT)
		/* get kernel image size */
		{
			s32Ret = HI_Flash_Read(hFlash, 0, (HI_U8*)pImage, u32BlockSize, HI_FLASH_RW_FLAG_RAW);
			if (s32Ret < 0)
			{
				HI_ERR_LOADER("Failed to read a block of part '%s'", pPartName);
			}

			hdr1 = (uImage_header_t*)pImage;

			Loader_HtoNL(&(hdr1->ih_size));

			HI_DBG_LOADER("'%s'->ih_size = 0x%x \n", pPartName, hdr1->ih_size);
			if (hdr1->ih_size > u32PartSize)
			{
				HI_DBG_LOADER("'%s' image length(0x%x) is more than parttion size '0x%x'.", pPartName, hdr1->ih_size,
						u32PartSize);
                s32Ret = HI_FAILURE;
                break;
			}

			u32Len = ((hdr1->ih_size + IMAGE_HEAD_SIZE) & 0xfffff000) + 0x1000;
		}

		/************ get kernel size ok, begin read **********************/
		HI_DBG_LOADER("Partation:%s  read size = 0x%x\n", pPartName, u32Len);
		s32Ret = HI_Flash_Read(hFlash, 0, (HI_U8*)pImage, u32Len, HI_FLASH_RW_FLAG_RAW);
		if (s32Ret < 0)
		{
			HI_ERR_LOADER("Failed to read 'kernel' partition.");
            break;
		}
#endif

		//"bootm 0x"
		memset(cmdStr, 0, MAX_CMD_SIZE);
#ifdef HI_LOADER_APPLOADER
		snprintf(cmdStr, sizeof(cmdStr), "bootm 0x%x", (HI_U32)pImage);
#else
		snprintf(cmdStr, sizeof(cmdStr), "go 0x%x", (HI_U32)pImage + IMAGE_HEAD_SIZE);
#endif
		setenv("bootcmd", cmdStr);
	} while (0);

	//here memory will not be free
	HI_Flash_Close(hFlash);

	return s32Ret;
}

static int LoaderCopyPartition(HI_HANDLE hFrom, HI_HANDLE hTo, unsigned long long len, int withOOB)
{
	HI_U32 u32FlashMode = HI_FLASH_RW_FLAG_RAW;
	char *g_buffer;
	HI_U32 u32BlockSize = 0;
	HI_U32 u32EraseSize = 0;
	HI_Flash_InterInfo_S stFlashInfo;
	HI_S32 s32Ret = HI_SUCCESS;

	if ((HI_INVALID_HANDLE == hFrom) || (HI_INVALID_HANDLE == hTo))
	{
		HI_ERR_LOADER("paramater is invalid.");
		return -1;
	}

	if (1 == withOOB)
	{
		u32FlashMode = HI_FLASH_RW_FLAG_WITH_OOB;
	}
	else
	{
		u32FlashMode = HI_FLASH_RW_FLAG_RAW;
	}

	/*alloc buffer for read & write*/
	g_buffer = (char*)g_buff;
	if (!g_buffer)
	{
		HI_ERR_LOADER("Failed to allocate memory.");
		return -1;
	}

	if (HI_Flash_Read(hFrom, 0, (HI_U8*)g_buffer, len, u32FlashMode) < 0)
	{
		HI_ERR_LOADER("Failed to read flash.");
		return -1;
	}

	s32Ret = HI_Flash_GetInfo(hTo, &stFlashInfo);
	if (s32Ret != HI_SUCCESS)
	{
	    HI_ERR_LOADER("FlashInfo get error!\n");
	    return -1;
	}

	u32BlockSize = stFlashInfo.BlockSize;

	if ((u32BlockSize != 0) && (len % u32BlockSize != 0))
	{
		u32EraseSize = (len / u32BlockSize + 1) * u32BlockSize;
	}
	else
	{
		u32EraseSize = len;
	}

	/* erase and write functions maybe fail for badblock, one parition fault should not cause loader unavailable */
	s32Ret = HI_Flash_Erase(hTo, 0, u32EraseSize);
	if (s32Ret < 0)
	{
	    HI_ERR_LOADER("Flash erase error!\n");
	    return -1;
	}
	s32Ret = HI_Flash_Write(hTo, 0, (HI_U8*)g_buffer, len, u32FlashMode);
	if (s32Ret < 0)
	{
	    HI_ERR_LOADER("Flash write error!\n");
	    return -1;
	}

	return 0;
}

static HI_S32 LoaderCheckSync(HI_VOID)
{
	uImage_header_t *hdr1 = HI_NULL;
    uImage_header_t *hdr2 = HI_NULL;
	unsigned int c1 = 0;
	unsigned int c2 = 0;
	unsigned int cc1 = 0;
	unsigned int cc2 = 0;
	char *buf1 = HI_NULL;
	char *buf2 = HI_NULL;
	HI_U32 u32MainLoaderRWSize = 0;
	HI_U32 u32BakLoaderRWSize = 0;
	HI_U8 bakupExist = 0;

	int r1, r2, ret;
	unsigned long long len = 0;

	HI_HANDLE hMainLoader = HI_INVALID_HANDLE;
	HI_HANDLE hBakLoader = HI_INVALID_HANDLE;
	HI_Flash_InterInfo_S stFlashInfo;
	char *g_buffer;

	/*alloc buffer for read & write*/
	g_buffer = (char*)g_buff;
	if (!g_buffer)
	{
		HI_ERR_LOADER("Failed to allocate memory.");
		return HI_FAILURE;
	}

	buf1 = g_buffer;
	buf2 = g_buffer + MAX_LOADER_SIZE;

	hMainLoader = HI_Flash_Open(HI_FLASH_TYPE_BUTT, LOADER, 0, 0);
	if (HI_INVALID_HANDLE == hMainLoader)
	{
		HI_ERR_LOADER("Failed to open Flash whose partition is 'Loader'.");
		return HI_FAILURE;
	}

	hBakLoader = HI_Flash_Open(HI_FLASH_TYPE_BUTT, LOADERBAK, 0, 0);
	if (HI_INVALID_HANDLE == hBakLoader)
	{
		HI_INFO_LOADER("No found 'loaderbak' partition.\n");
		bakupExist = 0;
	}
	else
	{
		bakupExist = 1;
	}

	do
	{
		ret = HI_Flash_GetInfo(hMainLoader, &stFlashInfo);
		if (HI_SUCCESS != ret)
		{
			ret = HI_FAILURE;
			HI_ERR_LOADER("Failed to get block size.");
			break;
		}

		r1 = HI_Flash_Read(hMainLoader, 0, (HI_U8*)buf1, stFlashInfo.BlockSize, HI_FLASH_RW_FLAG_RAW);
		if ((r1 < 0))
		{
			HI_ERR_LOADER("Failed to read partition 'loader'.");
			ret = HI_FAILURE;
			break;
		}
		
		hdr1 = (uImage_header_t*)buf1;
		Loader_HtoNL(&(hdr1->ih_size));
		if (hdr1->ih_size > MAX_LOADER_SIZE)
		{
			HI_DBG_LOADER("hdr1->ih_size[0x%x] is large than MAX_LOADER_SIZE[0x%x]",
					hdr1->ih_size,
					MAX_LOADER_SIZE);
			r1 = -1;
		}
		else
		{
			u32MainLoaderRWSize = ((hdr1->ih_size + IMAGE_HEAD_SIZE) & 0xfffff000) + 0x1000;
			r1 = HI_Flash_Read(hMainLoader, 0, (HI_U8*)buf1, u32MainLoaderRWSize, HI_FLASH_RW_FLAG_RAW);
		}

		if (bakupExist)
		{
			r2 = HI_Flash_Read(hBakLoader, 0, (HI_U8*)buf2, stFlashInfo.BlockSize, HI_FLASH_RW_FLAG_RAW);
			if (r2 < 0)
			{
				HI_ERR_LOADER("Failed to read partition 'loaderbak'.");
				ret = HI_FAILURE;
				break;
			}
			
			hdr2 = (uImage_header_t*)buf2;
			Loader_HtoNL(&(hdr2->ih_size));
			if (hdr2->ih_size > MAX_LOADER_SIZE)
			{
				HI_DBG_LOADER("hdr2->ih_size[0x%x] is large than MAX_LOADER_SIZE[0x%x]",
					hdr2->ih_size,
					MAX_LOADER_SIZE);
				r2 = -1;
			}
			else
			{
				u32BakLoaderRWSize = ((hdr2->ih_size + IMAGE_HEAD_SIZE) & 0xfffff000) + 0x1000;
				r2 = HI_Flash_Read(hBakLoader, 0, (HI_U8*)buf2, u32BakLoaderRWSize, HI_FLASH_RW_FLAG_RAW);
			}
		}

		/* both loader image head invalid */
		if ((r1 < 0) && (!bakupExist || r2 < 0))
		{
			HI_ERR_LOADER("Invalid data head of 'loader' and 'loaderbak'.");
			ret = HI_FAILURE;
			break;
		}

		/* check loader1*/
		if (r1 >= 0)
		{
			hdr1 = (uImage_header_t*)buf1;
			Loader_HtoNL(&(hdr1->ih_size));
			Loader_HtoNL(&(hdr1->ih_dcrc));

			HI_DBG_LOADER("before check loader1...hdr1->data_len = 0x%x, sizeof(*hdr1) = 0x%x\n",
					hdr1->ih_size,
					sizeof(*hdr1));

			c1 = hdr1->ih_dcrc;
			HI_DBG_LOADER("mainloader's CRC = 0x%x\n", c1);
			hdr1->ih_dcrc = 0;

			if ((hdr1->ih_size > MAX_LOADER_SIZE) || (hdr1->ih_size <= 0))
			{
				r1 = -1;
			}
			else
			{
				cc1 = crc32(0, (unsigned char*)(buf1 + sizeof(uImage_header_t)), hdr1->ih_size);
				if (cc1 != c1)
				{
					r1 = -1;
				}

				HI_DBG_LOADER("end check mainloader...cc1 = 0x%x\n", cc1);
			}
		}

		/*check loader2*/
		if (bakupExist && r2 >= 0)
		{
			hdr2 = (uImage_header_t*)buf2;
			Loader_HtoNL(&(hdr2->ih_size));
			Loader_HtoNL(&(hdr2->ih_dcrc));

			HI_DBG_LOADER("before check bakloader...hdr2->data_len = 0x%x\n", hdr2->ih_size);

			c2 = hdr2->ih_dcrc;

			HI_DBG_LOADER("bakloader's CRC = 0x%x\n", c2);

			hdr2->ih_dcrc = 0;
			if ((hdr2->ih_size > MAX_LOADER_SIZE) || (hdr2->ih_size <= 0))
			{
				r2 = -1;
			}
			else
			{
				cc2 = crc32(0, (unsigned char*)(buf2 + sizeof(uImage_header_t)), hdr2->ih_size);
				HI_DBG_LOADER("end check bakloader...cc2 = 0x%x\n", cc2);

				if (cc2 != c2)
				{
					r2 = -1;
				}
			}
		}

		/* both loader image invalid */
		if ((r1 < 0) && (!bakupExist || r2 < 0))
		{
			HI_ERR_LOADER("cc1(orig):%x,c1(calc):%x, cc2(orig):%x,c2(calc):%x\n", cc1, c1, cc2, c2);
			ret = HI_FAILURE;
			break;
		}

		/* sync loader and loadbak */
		if (bakupExist)
		{
			if ((r1 < 0) || (r2 < 0))
			{
				HI_HANDLE from = r1 >= 0 ? hMainLoader : hBakLoader;
				HI_HANDLE to = r1 >= 0 ? hBakLoader: hMainLoader;
				/* the length is 64KB aligned */
				u32MainLoaderRWSize = (hdr1->ih_size + IMAGE_HEAD_SIZE + 0x10000 -1) & 0xffff0000;
				u32BakLoaderRWSize = (hdr2->ih_size + IMAGE_HEAD_SIZE + 0x10000 -1) & 0xffff0000;

				len = r1 >= 0 ? u32MainLoaderRWSize : u32BakLoaderRWSize;

				HI_DBG_LOADER("%s->%d, restore %s -> %s\n", __FUNCTION__, __LINE__,
						r1 >= 0 ? LOADER : LOADERBAK, r1 >= 0 ? LOADERBAK : LOADER);

				if (0 != LoaderCopyPartition(from, to, len, 0))
				{
					HI_ERR_LOADER("Failed to copy 'loader' partition.");
					ret = HI_FAILURE;
					break;
				}
				else
				{
					ret = HI_SUCCESS;
					break;
				}
			}

			/* content compare */
			if ((c1 != c2) || (cc1 != cc2))
			{
				HI_DBG_LOADER("%s->%d,update bak loader from main loader\n", __FUNCTION__, __LINE__);
				/* the length is 64KB aligned */
				u32MainLoaderRWSize = (hdr1->ih_size + IMAGE_HEAD_SIZE + 0x10000 -1) & 0xffff0000;

				if (LoaderCopyPartition(hMainLoader, hBakLoader, u32MainLoaderRWSize, 0))
				{
					HI_ERR_LOADER("Failed to copy 'main loader' to 'bak loader'.");
					ret = HI_FAILURE;
					break;
				}
				else
				{
					ret = HI_SUCCESS;
					break;
				}
			}
		}
	} while (0);

	HI_Flash_Close(hMainLoader);
	if (bakupExist)
		HI_Flash_Close(hBakLoader);

	return ret;
}

static HI_VOID * Customer_Malloc(HI_VOID)
{
	MMZ_BUFFER_S stMMZ;
	HI_U32 u32MaxSize = 0;	

	u32MaxSize = 2 * MAX_LOADER_SIZE;

	if (HI_SUCCESS == HI_MEM_Alloc(&stMMZ.u32StartPhyAddr, u32MaxSize))
		return (HI_VOID *)stMMZ.u32StartPhyAddr;
	else
		return HI_NULL;
}
#endif

const char* Loader_Check(void)
{
	UPGRD_TAG_PARA_S stTagParam;

	if (HI_SUCCESS != Loader_ReadUpgrdTag(&stTagParam))
	{
		HI_ERR_LOADER("Failed to get upgrade parameter info.");
		goto kernel;
	}

#ifdef HI_BUILD_WITH_KEYLED
	if (HI_SUCCESS == Loader_CheckManuForceUpgrade())
	{
		stTagParam.bTagManuForceUpgrd = HI_TRUE;

		Loader_WriteUpgrdTag(&stTagParam);

		HI_DBG_LOADER("%s->%d start 'loader'.\n", __FUNCTION__, __LINE__);
		goto loader;
	}
#endif

	if (HI_TRUE == stTagParam.bTagNeedUpgrd)
	{
		HI_DBG_LOADER("%s->%d start 'loader'.\n", __FUNCTION__, __LINE__);
		goto loader;
	}
	else
	{
		HI_DBG_LOADER("%s->%d start 'kernel'.\n", __FUNCTION__, __LINE__);
		goto kernel;
	}

loader:

	HI_INFO_LOADER("\n>> Loading 'loader' image.\n");
	
#if defined(HI_LOADER_APPLOADER) || defined(HI_LOADER_FIRSTBOOT)	
	if (HI_SUCCESS != LoaderCheckSync())
	{
		HI_ERR_LOADER("'  Get 'loader' image failed!\n");
		goto kernel;
	}
#endif

	return "loader";

kernel:
	HI_INFO_LOADER("\n>> Loading 'kernel' image.\n");
			
	return "kernel";
}

#ifndef HI_LOADER_SECONDBOOT
HI_S32 Loader_Main()
{
	const char *pRet = NULL;

	HI_DRV_GPIO_Init();
	HI_DRV_I2C_Init();
#ifdef HI_BUILD_WITH_KEYLED
	HI_UNF_KEYLED_Init();
	HI_UNF_KEY_Open();
	HI_UNF_LED_Open();

	LED_ShowBLString("boot");
#endif

#if defined(HI_LOADER_APPLOADER) || defined(HI_LOADER_FIRSTBOOT)
	g_buff = Customer_Malloc();
#endif

	pRet = Loader_Check();
	if ((HI_NULL != pRet) && (0 == strncmp(pRet, "loader", MAX_STRLEN(pRet, "loader"))))
	{
#if defined(HI_BUILD_WITH_KEYLED)
		LED_ShowBLString("LoAd");
#endif

#if defined(HI_LOADER_APPLOADER) || defined(HI_LOADER_FIRSTBOOT)
		return Customer_Boot(HI_FLASH_TYPE_BUTT, LOADER, 0, 0);
#else
		return LOADER_App();
#endif
	}

	return 0;
}

#else
HI_S32 Loader_SecMain()
{
        HI_DRV_GPIO_Init();
        HI_DRV_I2C_Init();
#ifdef HI_BUILD_WITH_KEYLED
        HI_UNF_KEYLED_Init();
        HI_UNF_KEY_Open();
        HI_UNF_LED_Open();

        LED_ShowBLString("LoAd");
#endif
    return LOADER_App();
}
#endif
#endif

HI_S32 Loader_ReadUpgrdTag(UPGRD_TAG_PARA_S *pstTagParam)
{
	HI_U32 u32Crc  = 0;
	HI_U8 *au8Buf1 = NULL;
	HI_U8 *au8Buf2 = NULL;
	MMZ_BUFFER_S stMMZ;

	HI_U32 u32Offset1 = 0;
	HI_U32 u32Offset2 = 0;
	HI_U32 u32Size1 = 0;
	HI_U32 u32Size2 = 0;

	HI_U32 u32RegionSize1 = 0;
	HI_U32 u32RegionSize2 = 0;

	HI_HANDLE hMainHandle = HI_INVALID_HANDLE;
	HI_HANDLE hBakHandle = HI_INVALID_HANDLE;

	HI_S8  s8SaveTodb      = 0;
	HI_S8  s8SaveTodbbak = 0;

	HI_S32 s32Ret = HI_FAILURE;

	UPGRD_PARA_HEAD_S *pstParamHead;
	UPGRD_TAG_PARA_S  *pstUpgrdParam;

	if (NULL == pstTagParam)
	{
		HI_ERR_LOADER("invalid parameter.");
		return HI_FAILURE;
	}

	/* 1: loaderdb */
	if (HI_SUCCESS != Upgrd_OpenDataBlock(LOADERDB, &hMainHandle, &u32RegionSize1, &u32Offset1, &u32Size1))
	{
		HI_ERR_LOADER("Failed to open partition 'loaderdb'\n");
		s32Ret = HI_FAILURE;
		goto out;
	}
	else
	{
		/* check size is enough */
		if (u32Size1 < sizeof(UPGRD_LOADER_INFO_S) || (u32Offset1 + u32Size1 > u32RegionSize1))
		{
			HI_ERR_LOADER("%s offset:0x%08x Or size:0x%08x invalid .\n", LOADERDB, u32Offset1, u32Size1);
			s32Ret = HI_FAILURE;
			goto out;
		}		

		HI_DBG_LOADER("loaderdb u32RegionSize: 0x%x, offset: 0x%08x, size: 0x%08x\n", u32RegionSize1, u32Offset1, u32Size1);

		/* prepare flash region buffer */
		if (HI_SUCCESS != HI_MEM_Alloc(&stMMZ.u32StartPhyAddr, u32RegionSize1))
		{
			s32Ret = HI_FAILURE;
			goto out;
		}
		
		au8Buf1 = (HI_U8 *)stMMZ.u32StartPhyAddr;
		if (NULL == au8Buf1)
		{
			s32Ret = HI_FAILURE;
			goto out;
		}

		/* NOT check return value for badblock */
		if (0 > HI_Flash_Read(hMainHandle, 0, au8Buf1, u32RegionSize1, HI_FLASH_RW_FLAG_RAW))
		{
			HI_ERR_LOADER("Flash read error!\n.");
			s32Ret = HI_FAILURE;
			goto out;
		}

		pstParamHead = (UPGRD_PARA_HEAD_S *)(au8Buf1 + u32Offset1);

		/* Verify Magic Number */
		if (LOADER_MAGIC_NUMBER == pstParamHead->u32MagicNumber)
		{
			if (pstParamHead->u32Length < u32RegionSize1)
			{
				/* Veriry CRC value */
				u32Crc = crc32(0, (au8Buf1 + u32Offset1 + sizeof(HI_U32) * 2),
						(pstParamHead->u32Length + sizeof(HI_U32)));

				if (u32Crc == pstParamHead->u32Crc)
				{
					HI_DBG_LOADER("Get upgrade tag info from loderdb successfully.\n");
					memcpy(pstTagParam, (au8Buf1 + u32Offset1 + sizeof(UPGRD_PARA_HEAD_S)),
							sizeof(UPGRD_TAG_PARA_S));
					s32Ret = HI_SUCCESS;
					goto out;
				}
			}
		}
	}

	/* 2: loaderdbbak if exist */
	if (HI_SUCCESS != Upgrd_OpenDataBlock(LOADERDBBAK, &hBakHandle, &u32RegionSize2, &u32Offset2, &u32Size2))
	{
		HI_INFO_LOADER("No found partition 'loaderdbbak'.\n");
	}
	else
	{
		/*loaderdb and loaderdbbak region size must be same */
		if (u32RegionSize1 != u32RegionSize2)
		{
			HI_ERR_LOADER("loaderdb regionSize(%u) is not same with loaderdbbak regionSize(%u). ", u32RegionSize1, u32RegionSize2);
			s32Ret = HI_FAILURE;
			goto out;
		}
		
		/* check size is enough */
		if (u32Size2 < sizeof(UPGRD_LOADER_INFO_S) || (u32Offset2 + u32Size2 > u32RegionSize2))
		{
			HI_ERR_LOADER("%s offset:0x%08x Or size:0x%08x invalid .\n", LOADERDBBAK, u32Offset2, u32Size2);
			s32Ret = HI_FAILURE;
			goto out;
		}

		HI_DBG_LOADER("loaderdbbak u32RegionSize: 0x%x, offset: 0x%08x, size: 0x%08x\n", u32RegionSize2, u32Offset2, u32Size2);

		/* prepare flash region buffer */
		if (HI_SUCCESS != HI_MEM_Alloc(&stMMZ.u32StartPhyAddr, u32RegionSize2))
		{
			s32Ret = HI_FAILURE;
			goto out;
		}
				
		au8Buf2 =  (HI_U8 *)stMMZ.u32StartPhyAddr;
		if (NULL == au8Buf2)
		{
			s32Ret = HI_FAILURE;
			goto out;
		}
		
		/* NOT check return value for badblock */
		if (0 > HI_Flash_Read(hBakHandle, 0, au8Buf2, u32RegionSize2, HI_FLASH_RW_FLAG_RAW))
		{
			HI_ERR_LOADER("Flash read error!\n.");
			s32Ret = HI_FAILURE;
			goto out;
		}

		pstParamHead = (UPGRD_PARA_HEAD_S *)(au8Buf2 + u32Offset2);

		/* Verify Magic Number */
		if (LOADER_MAGIC_NUMBER == pstParamHead->u32MagicNumber)
		{
			if (pstParamHead->u32Length < u32RegionSize2)
			{
				/* Veriry CRC value */
				u32Crc = crc32(0, (au8Buf2 + u32Offset2 + sizeof(HI_U32) * 2),
						(pstParamHead->u32Length + sizeof(HI_U32)));

				if (u32Crc == pstParamHead->u32Crc)
				{
					memcpy(pstTagParam, (au8Buf2 + u32Offset2 + sizeof(UPGRD_PARA_HEAD_S)),
							sizeof(UPGRD_TAG_PARA_S));

					HI_DBG_LOADER("Get upgrade tag info from backup ok.\n");
					memcpy(au8Buf1 + u32Offset1, au8Buf2 + u32Offset2, (sizeof(UPGRD_PARA_HEAD_S) + sizeof(UPGRD_TAG_PARA_S)));

					/* sync data to 'loaderdb' partition.*/
                    s32Ret = HI_Flash_Erase(hMainHandle, u32Offset1, u32RegionSize1);
					s32Ret |= HI_Flash_Write(hMainHandle, 0, au8Buf1, u32RegionSize1, HI_FLASH_RW_FLAG_ERASE_FIRST);
					if (s32Ret >= 0)
					{
					    HI_DBG_LOADER("Sync upgrade tag info to loaderdb partition finished.\n ");
					    s32Ret = HI_SUCCESS;
					    goto out;
                    }
				}
			}
		}
	}
	
	/* 3: both loaderdb partition invalid ,set default value */
	HI_ERR_LOADER("[Warning] no valid loaderdb existed.");

	pstParamHead = (UPGRD_PARA_HEAD_S *)(au8Buf1 + u32Offset1);
	pstParamHead->u32MagicNumber = LOADER_MAGIC_NUMBER;
	pstParamHead->u32Length = sizeof(UPGRD_TAG_PARA_S);

	pstUpgrdParam = (UPGRD_TAG_PARA_S *)(au8Buf1 + u32Offset1 + sizeof(UPGRD_PARA_HEAD_S));
	pstUpgrdParam->bTagNeedUpgrd = HI_FALSE;
	pstUpgrdParam->bTagManuForceUpgrd = HI_FALSE;

	pstParamHead->u32Crc = crc32(0, (au8Buf1 + u32Offset1 + sizeof(HI_U32) * 2),
			(pstParamHead->u32Length + sizeof(HI_U32)));
	if (0 > HI_Flash_Erase(hMainHandle, u32Offset1, u32RegionSize1))
	{
	    HI_ERR_LOADER("Flash erase error!\n.");
	    s32Ret = HI_FAILURE;
	    goto out;
	}
	if (HI_Flash_Write(hMainHandle, 0, au8Buf1, u32RegionSize1, HI_FLASH_RW_FLAG_ERASE_FIRST) < 0)
	{
		HI_DBG_LOADER("Failed to write block '%s' of flash.\n", LOADERDB);
		s8SaveTodb = 0;
	}
	else
	{
		s8SaveTodb = 1;
	}

	if (HI_INVALID_HANDLE != hBakHandle )
	{
		memcpy(au8Buf2 + u32Offset2, au8Buf1 + u32Offset1, (sizeof(UPGRD_PARA_HEAD_S) + sizeof(UPGRD_TAG_PARA_S)));
		if (0 > HI_Flash_Erase(hBakHandle, u32Offset2, u32RegionSize2))
		{
		    HI_ERR_LOADER("Flash erase error!\n.");
		    s32Ret = HI_FAILURE;
		    goto out;
		}
		if (HI_Flash_Write(hBakHandle, 0, au8Buf2, u32RegionSize2, HI_FLASH_RW_FLAG_ERASE_FIRST) < 0)
		{
			HI_DBG_LOADER("Failed to write block '%s' of flash.\n", LOADERDBBAK);
			s8SaveTodbbak =  0;
		}
		else
		{
			s8SaveTodbbak = 1;
		}
	}

	memcpy(pstTagParam, pstUpgrdParam, sizeof(UPGRD_TAG_PARA_S));

	/* AT least one of db partition saved successful  */
	if (s8SaveTodb || (HI_INVALID_HANDLE != hBakHandle && s8SaveTodbbak) )
	{
		s32Ret = HI_SUCCESS;
	}
	else
	{
		HI_ERR_LOADER("Failed to save upgrade parameter into %s or %s partition.\n", LOADERDB, LOADERDBBAK);
		s32Ret = HI_FAILURE;
	}

out:
	if (HI_INVALID_HANDLE != hBakHandle)
		HI_Flash_Close(hBakHandle);

	if (HI_INVALID_HANDLE != hMainHandle)
		HI_Flash_Close(hMainHandle);

	return s32Ret;
}

HI_S32 Loader_WriteUpgrdTag(UPGRD_TAG_PARA_S *pstTagParam)
{
	HI_U8 *au8Buf1 = NULL;
	HI_U8 *au8Buf2 = NULL;
	MMZ_BUFFER_S stMMZ;

	HI_U32 u32Offset1 = 0;
	HI_U32 u32Offset2 = 0;
	HI_U32 u32Size1 = 0;
	HI_U32 u32Size2 = 0;

	HI_U32 u32RegionSize1 = 0;
	HI_U32 u32RegionSize2 = 0;

	HI_HANDLE hMainHandle = HI_INVALID_HANDLE;
	HI_HANDLE hBakHandle = HI_INVALID_HANDLE;

	HI_S8  s8SaveTodb      = 0;
	HI_S8  s8SaveTodbbak = 0;

	UPGRD_PARA_HEAD_S *pstParamHead;
	UPGRD_TAG_PARA_S *pstTmpTagParam;

	HI_S32 s32Ret = HI_FAILURE;

	if (NULL == pstTagParam)
	{
		HI_ERR_LOADER("Invaled parameter.");
		return HI_FAILURE;
	}

	/* 1: loaderdb */
	if (HI_SUCCESS != Upgrd_OpenDataBlock(LOADERDB, &hMainHandle, &u32RegionSize1, &u32Offset1, &u32Size1))
	{
		HI_ERR_LOADER("Failed to open partition 'loaderdb'\n");
		s32Ret = HI_FAILURE;
		goto out;
	}
	else
	{
		/* check size is enough */
		if (u32Size1 < sizeof(UPGRD_LOADER_INFO_S) || (u32Offset1 + u32Size1 > u32RegionSize1))
		{
			HI_ERR_LOADER("%s offset:0x%08x Or size:0x%08x invalid .\n", LOADERDB, u32Offset1, u32Size1);
			s32Ret = HI_FAILURE;
			goto out;
		}			

		/* prepare flash region buffer */
		if (HI_SUCCESS != HI_MEM_Alloc(&stMMZ.u32StartPhyAddr, u32RegionSize1))
		{
			s32Ret = HI_FAILURE;
			goto out;
		}
		
		au8Buf1 =  (HI_U8 *)stMMZ.u32StartPhyAddr;
		if (NULL == au8Buf1)
		{
			s32Ret = HI_FAILURE;
			goto out;
		}

		/* NOT check return value for badblock */
		if (0 > HI_Flash_Read(hMainHandle, 0, au8Buf1, u32RegionSize1, HI_FLASH_RW_FLAG_RAW))
		{
			HI_ERR_LOADER("Flash read error!\n.");
			s32Ret = HI_FAILURE;
			goto out;
		}

		pstParamHead   = (UPGRD_PARA_HEAD_S *)(au8Buf1 + u32Offset1);
		pstTmpTagParam = (UPGRD_TAG_PARA_S *)(au8Buf1 + u32Offset1 + sizeof(UPGRD_PARA_HEAD_S));

		memcpy(pstTmpTagParam, pstTagParam, sizeof(UPGRD_TAG_PARA_S));

		pstParamHead->u32Crc = crc32(0, (au8Buf1 + u32Offset1 + sizeof(HI_U32) * 2),
				(pstParamHead->u32Length + sizeof(HI_U32)));

		/*Write to loaderdb partition.*/
		if ( 0 > HI_Flash_Erase(hMainHandle, u32Offset1, u32RegionSize1))
		{
			HI_ERR_LOADER("Flash erase error!\n.");
			s32Ret = HI_FAILURE;
			goto out;
		}
		if (HI_Flash_Write(hMainHandle, 0, au8Buf1, u32RegionSize1, HI_FLASH_RW_FLAG_ERASE_FIRST) < 0)
		{
			HI_DBG_LOADER("Failed to write a block to loaderdb partition.\n");
			s8SaveTodb = 0;
		}
		else
		{
			s8SaveTodb = 1;
		}
	}

	/* 2: loaderdbbak if exist */
	if (HI_SUCCESS != Upgrd_OpenDataBlock(LOADERDBBAK, &hBakHandle, &u32RegionSize2, &u32Offset2, &u32Size2))
	{
		HI_INFO_LOADER("No found partition 'loaderdbbak'\n");
	}
	else
	{
		/*loaderdb and loaderdbbak region size must be same */
		if (u32RegionSize1 != u32RegionSize2)
		{
			HI_ERR_LOADER("loaderdb regionSize(%u) is not same with loaderdbbak regionSize(%u). ", u32RegionSize1, u32RegionSize2);
			s32Ret = HI_FAILURE;
			goto out;
		}
		
		/* check size is enough */
		if (u32Size2 < sizeof(UPGRD_LOADER_INFO_S) || (u32Offset2 + u32Size2 > u32RegionSize2))
		{
			HI_ERR_LOADER("%s offset:0x%08x Or size:0x%08x invalid .\n", LOADERDBBAK, u32Offset2, u32Size2);
			s32Ret = HI_FAILURE;
			goto out;
		}

		/* prepare flash region buffer */
		if (HI_SUCCESS != HI_MEM_Alloc(&stMMZ.u32StartPhyAddr, u32RegionSize2))
		{
			s32Ret = HI_FAILURE;
			goto out;
		}
		
		au8Buf2 =   (HI_U8 *)stMMZ.u32StartPhyAddr;
		if (NULL == au8Buf2)
		{
			s32Ret = HI_FAILURE;
			goto out;
		}

		/* NOT check return value for badblock */
		if (0 > HI_Flash_Read(hBakHandle, 0, au8Buf2, u32RegionSize2, HI_FLASH_RW_FLAG_RAW))
		{
			HI_ERR_LOADER("Flash read error!\n.");
			s32Ret = HI_FAILURE;
			goto out;
		}

		memcpy(au8Buf2 + u32Offset2, au8Buf1 + u32Offset1, (sizeof(UPGRD_PARA_HEAD_S) + sizeof(UPGRD_TAG_PARA_S)));

		/*Write to loaderdbbak partition.*/
		if (0 > HI_Flash_Erase(hBakHandle, u32Offset2, u32RegionSize2))
		{
			HI_ERR_LOADER("Flash erase error!\n.");
			s32Ret = HI_FAILURE;
			goto out;
		}
		if (HI_Flash_Write(hBakHandle, 0, au8Buf2, u32RegionSize2, HI_FLASH_RW_FLAG_ERASE_FIRST) < 0)
		{
			HI_DBG_LOADER("Failed to write a block to loaderdbbak partition.\n");
			s8SaveTodbbak = 0;
		}
		else
		{
			s8SaveTodbbak = 1;
		}
	}

	/* 3: AT least one of db partition saved successful */
	if (s8SaveTodb || (HI_INVALID_HANDLE != hBakHandle && s8SaveTodbbak ))
	{
		s32Ret = HI_SUCCESS;
	}
	else
	{
		HI_ERR_LOADER("Failed to save upgrade parameter into %s or %s partition.\n", LOADERDB, LOADERDBBAK);
		s32Ret = HI_FAILURE;
	}

out:
	if (HI_INVALID_HANDLE != hBakHandle)
		HI_Flash_Close(hBakHandle);

	if (HI_INVALID_HANDLE != hMainHandle)
		HI_Flash_Close(hMainHandle);

	return s32Ret;
}

#ifdef HI_BUILD_WITH_KEYLED
HI_S32 Loader_CheckManuForceUpgrade()
{
	HI_U32 u32PressStatus = 0;
	HI_U32 u32KeyValue = 0;
	HI_S32 s32Ret;
	HI_S32 s32Cnt;

	HI_BOOL bMenuStatus = HI_FALSE;
	HI_BOOL bKeyDown = HI_FALSE;

	/* press Menu + OK for force upgrade */
	for (s32Cnt = 0; s32Cnt < LOADER_WAIT_KEY_TIME; s32Cnt++)
	{
		s32Ret = HI_UNF_KEY_GetValue(&u32PressStatus, &u32KeyValue);

		if ((HI_SUCCESS == s32Ret) && (2 == u32PressStatus))
		{
			HI_INFO_LOADER("keyled value: 0x%08x\n", u32KeyValue);
			bKeyDown = HI_TRUE;
			if (KEY_MENU == u32KeyValue)
				bMenuStatus = HI_TRUE;

			break;
		}

		udelay(10000);
	}

	if (HI_FALSE == bMenuStatus)
		return HI_FAILURE;

	for (s32Cnt = 0; s32Cnt < LOADER_WAIT_OK_TIME; s32Cnt++)
	{
		udelay(10000);
		s32Ret = HI_UNF_KEY_GetValue(&u32PressStatus, &u32KeyValue);

		if ((HI_SUCCESS == s32Ret) && (2 == u32PressStatus))
		{
			HI_INFO_LOADER("keyled value: 0x%08x\n", u32KeyValue);
			if (KEY_OK == u32KeyValue)
			{
				HI_INFO_LOADER("Pressed keys 'Menu + Ok'.\n");
				return HI_SUCCESS;
			}
		}
	}

	return HI_FAILURE;
}

#endif
