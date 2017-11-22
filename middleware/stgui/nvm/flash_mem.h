/*******************************************************************************
* File name : flash.h
* COPYRIGHT (C) Blossoms Digital Tech Co. Ltd.
* Description : from 5518 project. But necessarily make it regular for params' names and function names.
* History:
* Date						Modification								Revision
* 25.07.05					Created by Wesharp    						1.0.0
* 23.08.05					Add some Erase Functions					1.0.1
*******************************************************************************/

#ifndef  __FLASH_API_H__ 
#define  __FLASH_API_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "nvm_api.h"

#define STFLASH_MAIN00_SIZE             0x00010000  /* 64Kb */
#define STFLASH_MAIN01_SIZE             0x00008000  /* 32Kb */
#define STFLASH_PARA_0_SIZE             0x00002000  /* 8Kb */
#define STFLASH_BOOT_0_SIZE             0x00004000  /* 16Kb */
/* --- */
typedef	enum
{
        FLASH_EREASE,
	FLASH_WHRITE_INWORD,
        FLASH_WHRITE_INBYTE,
	FLASH_READ
} FLASH_CMD_TYPE;


 
typedef	struct	flash_cmd_struct_tag 
{
    FLASH_CMD_TYPE    stCmdType;
    MBT_VOID *pstSrcBuffer;
    MBT_VOID *uDestAddr;
    MBT_U32   uDataLen;
    MBT_U32   uExtern;
} flash_cmd_t;

typedef struct {
    MBT_U8  Bank;           /* Bank number */
    MBT_U32 Address;        /* Block start address */
    MBT_U32 Length;         /* Length of block */
} BlockInfo_t;

typedef struct{
 //   STFLASH_Block_t	stFlashBlock;
    MBT_U8				ucSameBlockNum;
} FlashBlock_t;

#ifdef __cplusplus
}
#endif

#endif  /*__FLASH_H__*/
