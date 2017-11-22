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
#include <stdarg.h>

//#include <unistd.h>
//#include <sys/time.h>
#include "upgrd_common.h"

#ifdef HI_LOADER_APPLOADER
#include "hi_unf_wdg.h"
#else

//#include <uboot.h>
#endif

/*******************************************************************************/
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#if 0
static const HI_U32 aCrc32_tab[] = {
    0x00000000L, 0x77073096L, 0xee0e612cL, 0x990951baL, 0x076dc419L,
    0x706af48fL, 0xe963a535L, 0x9e6495a3L, 0x0edb8832L, 0x79dcb8a4L,
    0xe0d5e91eL, 0x97d2d988L, 0x09b64c2bL, 0x7eb17cbdL, 0xe7b82d07L,
    0x90bf1d91L, 0x1db71064L, 0x6ab020f2L, 0xf3b97148L, 0x84be41deL,
    0x1adad47dL, 0x6ddde4ebL, 0xf4d4b551L, 0x83d385c7L, 0x136c9856L,
    0x646ba8c0L, 0xfd62f97aL, 0x8a65c9ecL, 0x14015c4fL, 0x63066cd9L,
    0xfa0f3d63L, 0x8d080df5L, 0x3b6e20c8L, 0x4c69105eL, 0xd56041e4L,
    0xa2677172L, 0x3c03e4d1L, 0x4b04d447L, 0xd20d85fdL, 0xa50ab56bL,
    0x35b5a8faL, 0x42b2986cL, 0xdbbbc9d6L, 0xacbcf940L, 0x32d86ce3L,
    0x45df5c75L, 0xdcd60dcfL, 0xabd13d59L, 0x26d930acL, 0x51de003aL,
    0xc8d75180L, 0xbfd06116L, 0x21b4f4b5L, 0x56b3c423L, 0xcfba9599L,
    0xb8bda50fL, 0x2802b89eL, 0x5f058808L, 0xc60cd9b2L, 0xb10be924L,
    0x2f6f7c87L, 0x58684c11L, 0xc1611dabL, 0xb6662d3dL, 0x76dc4190L,
    0x01db7106L, 0x98d220bcL, 0xefd5102aL, 0x71b18589L, 0x06b6b51fL,
    0x9fbfe4a5L, 0xe8b8d433L, 0x7807c9a2L, 0x0f00f934L, 0x9609a88eL,
    0xe10e9818L, 0x7f6a0dbbL, 0x086d3d2dL, 0x91646c97L, 0xe6635c01L,
    0x6b6b51f4L, 0x1c6c6162L, 0x856530d8L, 0xf262004eL, 0x6c0695edL,
    0x1b01a57bL, 0x8208f4c1L, 0xf50fc457L, 0x65b0d9c6L, 0x12b7e950L,
    0x8bbeb8eaL, 0xfcb9887cL, 0x62dd1ddfL, 0x15da2d49L, 0x8cd37cf3L,
    0xfbd44c65L, 0x4db26158L, 0x3ab551ceL, 0xa3bc0074L, 0xd4bb30e2L,
    0x4adfa541L, 0x3dd895d7L, 0xa4d1c46dL, 0xd3d6f4fbL, 0x4369e96aL,
    0x346ed9fcL, 0xad678846L, 0xda60b8d0L, 0x44042d73L, 0x33031de5L,
    0xaa0a4c5fL, 0xdd0d7cc9L, 0x5005713cL, 0x270241aaL, 0xbe0b1010L,
    0xc90c2086L, 0x5768b525L, 0x206f85b3L, 0xb966d409L, 0xce61e49fL,
    0x5edef90eL, 0x29d9c998L, 0xb0d09822L, 0xc7d7a8b4L, 0x59b33d17L,
    0x2eb40d81L, 0xb7bd5c3bL, 0xc0ba6cadL, 0xedb88320L, 0x9abfb3b6L,
    0x03b6e20cL, 0x74b1d29aL, 0xead54739L, 0x9dd277afL, 0x04db2615L,
    0x73dc1683L, 0xe3630b12L, 0x94643b84L, 0x0d6d6a3eL, 0x7a6a5aa8L,
    0xe40ecf0bL, 0x9309ff9dL, 0x0a00ae27L, 0x7d079eb1L, 0xf00f9344L,
    0x8708a3d2L, 0x1e01f268L, 0x6906c2feL, 0xf762575dL, 0x806567cbL,
    0x196c3671L, 0x6e6b06e7L, 0xfed41b76L, 0x89d32be0L, 0x10da7a5aL,
    0x67dd4accL, 0xf9b9df6fL, 0x8ebeeff9L, 0x17b7be43L, 0x60b08ed5L,
    0xd6d6a3e8L, 0xa1d1937eL, 0x38d8c2c4L, 0x4fdff252L, 0xd1bb67f1L,
    0xa6bc5767L, 0x3fb506ddL, 0x48b2364bL, 0xd80d2bdaL, 0xaf0a1b4cL,
    0x36034af6L, 0x41047a60L, 0xdf60efc3L, 0xa867df55L, 0x316e8eefL,
    0x4669be79L, 0xcb61b38cL, 0xbc66831aL, 0x256fd2a0L, 0x5268e236L,
    0xcc0c7795L, 0xbb0b4703L, 0x220216b9L, 0x5505262fL, 0xc5ba3bbeL,
    0xb2bd0b28L, 0x2bb45a92L, 0x5cb36a04L, 0xc2d7ffa7L, 0xb5d0cf31L,
    0x2cd99e8bL, 0x5bdeae1dL, 0x9b64c2b0L, 0xec63f226L, 0x756aa39cL,
    0x026d930aL, 0x9c0906a9L, 0xeb0e363fL, 0x72076785L, 0x05005713L,
    0x95bf4a82L, 0xe2b87a14L, 0x7bb12baeL, 0x0cb61b38L, 0x92d28e9bL,
    0xe5d5be0dL, 0x7cdcefb7L, 0x0bdbdf21L, 0x86d3d2d4L, 0xf1d4e242L,
    0x68ddb3f8L, 0x1fda836eL, 0x81be16cdL, 0xf6b9265bL, 0x6fb077e1L,
    0x18b74777L, 0x88085ae6L, 0xff0f6a70L, 0x66063bcaL, 0x11010b5cL,
    0x8f659effL, 0xf862ae69L, 0x616bffd3L, 0x166ccf45L, 0xa00ae278L,
    0xd70dd2eeL, 0x4e048354L, 0x3903b3c2L, 0xa7672661L, 0xd06016f7L,
    0x4969474dL, 0x3e6e77dbL, 0xaed16a4aL, 0xd9d65adcL, 0x40df0b66L,
    0x37d83bf0L, 0xa9bcae53L, 0xdebb9ec5L, 0x47b2cf7fL, 0x30b5ffe9L,
    0xbdbdf21cL, 0xcabac28aL, 0x53b39330L, 0x24b4a3a6L, 0xbad03605L,
    0xcdd70693L, 0x54de5729L, 0x23d967bfL, 0xb3667a2eL, 0xc4614ab8L,
    0x5d681b02L, 0x2a6f2b94L, 0xb40bbe37L, 0xc30c8ea1L, 0x5a05df1bL,
    0x2d02ef8dL
};
#else
static const unsigned int aCrc32_tab[] = {
    0x00000000L, 0x04c11db7L, 0x09823b6eL, 0x0d4326d9L, 0x130476dcL, 0x17c56b6bL,
    0x1a864db2L, 0x1e475005L, 0x2608edb8L, 0x22c9f00fL, 0x2f8ad6d6L, 0x2b4bcb61L,
    0x350c9b64L, 0x31cd86d3L, 0x3c8ea00aL, 0x384fbdbdL, 0x4c11db70L, 0x48d0c6c7L,
    0x4593e01eL, 0x4152fda9L, 0x5f15adacL, 0x5bd4b01bL, 0x569796c2L, 0x52568b75L,
    0x6a1936c8L, 0x6ed82b7fL, 0x639b0da6L, 0x675a1011L, 0x791d4014L, 0x7ddc5da3L,
    0x709f7b7aL, 0x745e66cdL, 0x9823b6e0L, 0x9ce2ab57L, 0x91a18d8eL, 0x95609039L,
    0x8b27c03cL, 0x8fe6dd8bL, 0x82a5fb52L, 0x8664e6e5L, 0xbe2b5b58L, 0xbaea46efL,
    0xb7a96036L, 0xb3687d81L, 0xad2f2d84L, 0xa9ee3033L, 0xa4ad16eaL, 0xa06c0b5dL,
    0xd4326d90L, 0xd0f37027L, 0xddb056feL, 0xd9714b49L, 0xc7361b4cL, 0xc3f706fbL,
    0xceb42022L, 0xca753d95L, 0xf23a8028L, 0xf6fb9d9fL, 0xfbb8bb46L, 0xff79a6f1L,
    0xe13ef6f4L, 0xe5ffeb43L, 0xe8bccd9aL, 0xec7dd02dL, 0x34867077L, 0x30476dc0L,
    0x3d044b19L, 0x39c556aeL, 0x278206abL, 0x23431b1cL, 0x2e003dc5L, 0x2ac12072L,
    0x128e9dcfL, 0x164f8078L, 0x1b0ca6a1L, 0x1fcdbb16L, 0x018aeb13L, 0x054bf6a4L,
    0x0808d07dL, 0x0cc9cdcaL, 0x7897ab07L, 0x7c56b6b0L, 0x71159069L, 0x75d48ddeL,
    0x6b93dddbL, 0x6f52c06cL, 0x6211e6b5L, 0x66d0fb02L, 0x5e9f46bfL, 0x5a5e5b08L,
    0x571d7dd1L, 0x53dc6066L, 0x4d9b3063L, 0x495a2dd4L, 0x44190b0dL, 0x40d816baL,
    0xaca5c697L, 0xa864db20L, 0xa527fdf9L, 0xa1e6e04eL, 0xbfa1b04bL, 0xbb60adfcL,
    0xb6238b25L, 0xb2e29692L, 0x8aad2b2fL, 0x8e6c3698L, 0x832f1041L, 0x87ee0df6L,
    0x99a95df3L, 0x9d684044L, 0x902b669dL, 0x94ea7b2aL, 0xe0b41de7L, 0xe4750050L,
    0xe9362689L, 0xedf73b3eL, 0xf3b06b3bL, 0xf771768cL, 0xfa325055L, 0xfef34de2L,
    0xc6bcf05fL, 0xc27dede8L, 0xcf3ecb31L, 0xcbffd686L, 0xd5b88683L, 0xd1799b34L,
    0xdc3abdedL, 0xd8fba05aL, 0x690ce0eeL, 0x6dcdfd59L, 0x608edb80L, 0x644fc637L,
    0x7a089632L, 0x7ec98b85L, 0x738aad5cL, 0x774bb0ebL, 0x4f040d56L, 0x4bc510e1L,
    0x46863638L, 0x42472b8fL, 0x5c007b8aL, 0x58c1663dL, 0x558240e4L, 0x51435d53L,
    0x251d3b9eL, 0x21dc2629L, 0x2c9f00f0L, 0x285e1d47L, 0x36194d42L, 0x32d850f5L,
    0x3f9b762cL, 0x3b5a6b9bL, 0x0315d626L, 0x07d4cb91L, 0x0a97ed48L, 0x0e56f0ffL,
    0x1011a0faL, 0x14d0bd4dL, 0x19939b94L, 0x1d528623L, 0xf12f560eL, 0xf5ee4bb9L,
    0xf8ad6d60L, 0xfc6c70d7L, 0xe22b20d2L, 0xe6ea3d65L, 0xeba91bbcL, 0xef68060bL,
    0xd727bbb6L, 0xd3e6a601L, 0xdea580d8L, 0xda649d6fL, 0xc423cd6aL, 0xc0e2d0ddL,
    0xcda1f604L, 0xc960ebb3L, 0xbd3e8d7eL, 0xb9ff90c9L, 0xb4bcb610L, 0xb07daba7L,
    0xae3afba2L, 0xaafbe615L, 0xa7b8c0ccL, 0xa379dd7bL, 0x9b3660c6L, 0x9ff77d71L,
    0x92b45ba8L, 0x9675461fL, 0x8832161aL, 0x8cf30badL, 0x81b02d74L, 0x857130c3L,
    0x5d8a9099L, 0x594b8d2eL, 0x5408abf7L, 0x50c9b640L, 0x4e8ee645L, 0x4a4ffbf2L,
    0x470cdd2bL, 0x43cdc09cL, 0x7b827d21L, 0x7f436096L, 0x7200464fL, 0x76c15bf8L,
    0x68860bfdL, 0x6c47164aL, 0x61043093L, 0x65c52d24L, 0x119b4be9L, 0x155a565eL,
    0x18197087L, 0x1cd86d30L, 0x029f3d35L, 0x065e2082L, 0x0b1d065bL, 0x0fdc1becL,
    0x3793a651L, 0x3352bbe6L, 0x3e119d3fL, 0x3ad08088L, 0x2497d08dL, 0x2056cd3aL,
    0x2d15ebe3L, 0x29d4f654L, 0xc5a92679L, 0xc1683bceL, 0xcc2b1d17L, 0xc8ea00a0L,
    0xd6ad50a5L, 0xd26c4d12L, 0xdf2f6bcbL, 0xdbee767cL, 0xe3a1cbc1L, 0xe760d676L,
    0xea23f0afL, 0xeee2ed18L, 0xf0a5bd1dL, 0xf464a0aaL, 0xf9278673L, 0xfde69bc4L,
    0x89b8fd09L, 0x8d79e0beL, 0x803ac667L, 0x84fbdbd0L, 0x9abc8bd5L, 0x9e7d9662L,
    0x933eb0bbL, 0x97ffad0cL, 0xafb010b1L, 0xab710d06L, 0xa6322bdfL, 0xa2f33668L,
    0xbcb4666dL, 0xb8757bdaL, 0xb5365d03L, 0xb1f740b4L
};
#endif

#ifdef HI_LOADER_BOOTLOADER
extern HI_BOOL g_bHiproUpgrdFlg;
#define HIPRO_RESTRICT_SPLICE_SIZE 0x2000000
#endif

HI_VOID LOADER_Delayms(HI_U32 u32TimeMS)
{
#ifdef HI_LOADER_BOOTLOADER
	udelay(u32TimeMS * 1000);    
#else
    usleep(u32TimeMS * 1000);
#endif

    return;
}
 
/*------------------------------------------------------------------------
 * Function:     VTOP_CRC_32
 * Description: calculate crc value
 * Data Accessed:
 * Data Updated:
 * Input:        VOS_UINT8 *pucData: pointer to data
 *                   VOS_UINT32 ulLen: length of data
 * Output:       VOS_UINT32 *puwResult: return a crc32 value
 * Return:       VOS_OK: success
 *                   VTOP_ERR_CRC_INVALID_PARA: paramenter invalid
 * Others:
 *-------------------------------------------------------------------------*/
HI_S32 LOADER_Entire_CRC32(const HI_U8* pucData, HI_U32 ulLen, HI_U32* pulResult)
{
#if 0
    /*Check parameter */
    if ((HI_NULL == pucData) || (HI_NULL == pulResult))
    {
        /*return ERR_CRC_INVALID_PARA;*/
        return HI_FAILURE;
    }
#endif


    return (LOADER_Segmental_CRC32(0xffffffff, pucData, ulLen, pulResult));
}

/*------------------------------------------------------------------------
 * Function:     VTOP_CRC_Accumulate_32
 * Description:  continue to caculate crc value
 * Data Accessed:
 * Data Updated:
 * Input:        VOS_UINT32 uwCrc: the last calculated crc value
 *               VOS_UINT8 *pucData: pointer to data
 *               VOS_UINT32 ulLen length of data
 * Output:       VOS_UINT32 *puwResult: return a crc32 value
 * Return:       VOS_OK: success
 *               VTOP_ERR_CRC_INVALID_PARA: paratmenter invalid
 * Others:
 *-------------------------------------------------------------------------*/

#if  0
HI_S32 LOADER_Segmental_CRC32(HI_S32 ulCrc, const HI_U8* pucData, HI_U32 ulLen,
                              HI_U32 *pulResult)
{
    HI_U32 ulI = 0;

 #if 0
    /*Check parameter */
    if ((HI_NULL == pucData) || (HI_NULL == pulResult))
    {
        /*return ERR_CRC_INVALID_PARA;*/
        return HI_FAILURE;
    }
 #endif


    for (ulI = 0;  ulI < ulLen;  ulI++)
    {
        ulCrc = aCrc32_tab[(ulCrc ^ pucData[ulI]) & 0xff] ^ (ulCrc >> 8);
    }

    *pulResult = ulCrc;

    return 0;
}

#else

 #define DO1(buf) ulCrc = (ulCrc << 8) ^ aCrc32_tab[((ulCrc >> 24) ^ *(buf)++) & 0xff]
 #define DO2(buf) DO1(buf); DO1(buf);
 #define DO4(buf) DO2(buf); DO2(buf);
 #define DO8(buf) DO4(buf); DO4(buf);

/*
 *  Function:
 *      caculate crc32 value or crc32 check
 *  parameter:
 *      data : data pointer
 *      len  : length of data, last 4 bytes of data store CRC32 value
 *  return values
 *      if success, 0 is returned; if error, other value is returned.
 */

//unsigned int crc32(unsigned char *data, unsigned int len)
HI_S32 LOADER_Segmental_CRC32(HI_U32 ulCrc, const HI_U8* pucData, HI_U32 ulLen,
                              HI_U32 *pulResult)

{
    HI_U8  *ptr = (HI_U8*) pucData;

    while (ulLen >= 8)
    {
        DO8(ptr);
        ulLen -= 8;
    }

    if (ulLen)
    {
        do
        {
            DO1(ptr);
        } while (--ulLen);
    }

    *pulResult = ulCrc;
    return 0;
}

#endif

unsigned long LOADER_strtoul(const char *nptr, char **endptr, int base)
{
#ifdef HI_LOADER_BOOTLOADER
#ifndef HI_MINIBOOT_SUPPORT
    return simple_strtoul(nptr, endptr, base);
#else
    return simple_strtoul_2(nptr, endptr, base);
#endif
#else
	return strtoul(nptr, endptr, base);    
#endif
}

#ifdef HI_LOADER_BOOTLOADER
HI_U8 * LOADER_GetUsableMemory(HI_U32 u32ExpectSize, HI_U32 *pu32Size)
{
    HI_U32 u32Addr = 0;
    HI_U32 u32Size = 0;

    if (pu32Size == HI_NULL)
        return 0;

    u32Size = u32ExpectSize;

    while(u32Size)
    {
        HI_MEM_Alloc(&u32Addr, u32Size);
        if (0 == u32Addr)
        {
            u32Size = u32Size / 2;
        }
        else
        {
            break;
        }
    }

    *pu32Size = u32Size;

    /* When using Hipro tool, use 32M buffer to receive and write file */
    if (HI_TRUE == g_bHiproUpgrdFlg)
    {
        /* when *pu32Size less than HIPRO_RESTRICT_SPLICE_SIZE use it, 
		   otherwise use HIPRO_RESTRICT_SPLICE_SIZE */
        if (HIPRO_RESTRICT_SPLICE_SIZE < *pu32Size)
        {
            *pu32Size = HIPRO_RESTRICT_SPLICE_SIZE;
        }
    }
    
    HI_DBG_LOADER("bootloader data receive buffer size is %u bytes. \n", *pu32Size);
	
    return (HI_U8 *)u32Addr;
}

void LOADER_FreeUsableMemory(HI_U8 * ptr)
{
}

#else

HI_U8 * LOADER_GetUsableMemory(HI_U32 u32ExpectSize, HI_U32 *pu32Size)
{
	HI_U32 u32Addr = 0;
	struct sysinfo info;	
	HI_U32 u32Size;

	if (pu32Size == HI_NULL)
		return 0;

	if (-1 == sysinfo(&info))
	{
		HI_ERR_LOADER("get sys info failed.\n");
		return HI_NULL;
	}

	/* reserve max 80% free ddr memroy(exclude mmz) for receive data buffer usage */
	u32Size = (HI_U32)(info.freeram * 0.8f) < u32ExpectSize ? (HI_U32)(info.freeram * 0.8f) : u32ExpectSize;

	u32Addr = (HI_U32)malloc(u32Size);
	if (!u32Addr)
	{
		HI_ERR_LOADER("malloc buffer failed.\n");
		return HI_NULL;	
	}

	*pu32Size = u32Size;

	HI_DBG_LOADER("apploader data receive buffer size is %u bytes \n", *pu32Size);
	return (HI_U8 *)u32Addr;
}

void LOADER_FreeUsableMemory(HI_U8 * ptr)
{
	if (ptr)
	{
		free(ptr);
		ptr = HI_NULL;
	}	
}
#endif

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif
