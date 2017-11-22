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
#ifndef __UPGRD_INFO_H__
#define __UPGRD_INFO_H__

#include "hi_type.h"
#include "hi_loader_info.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

/**LOADER magic number of DB and OTA parameters. it is used as a flag of data verification.*/
/**CNcomment:LOADER DB与OTA参数魔数,用作校验数据的标识*/
#define LOADER_MAGIC_NUMBER 0x4C4F4144

//partition name define
#define FASTBOOT "boot"
#define BOOTARGS "bootargs"
#define BOOTARGSBAK "bootargsbak"
#define STBINFO "stbid"
#define LOADERDB "loaderdb"
#define LOADERDBBAK "loaderdbbak"
#define LOADER "loader"
#define LOADERBAK "loaderbak"
#define KERNEL "kernel"
#define ROOTFS "rootfs"
#define FASTPLAY "fastplay"
#define LOADER_BASEPARAM "baseparam"

typedef struct tagParaHead
{
    HI_U32 u32MagicNumber;     /**<  magic number name */
    HI_U32 u32Crc;             /**< CRC verification value */
    HI_U32 u32Length;          /*length of upgrade parameter.*/
} UPGRD_PARA_HEAD_S;

/*Define upgrade tag parameter.*/
typedef struct tagLoaderUpgrdTagParam
{
    HI_BOOL bTagNeedUpgrd;        /*  whether normal upgrade.*/
    HI_BOOL bTagManuForceUpgrd;   /*  whether force upgrade.*/
} UPGRD_TAG_PARA_S;

typedef struct tagLoaderPrivateParam
{
    HI_U32  u32FailedCnt;                /**< Number of upgrade failures. It can be ignored for user.*/
    HI_BOOL bTagDestroy;        /**< It can be ignored.*/
    HI_U8   au8Reserved[20];
} UPGRD_PRIVATE_PARAM_S;

typedef struct tagLoaderinfo
{
    UPGRD_PARA_HEAD_S     stTagParaHead;
    UPGRD_TAG_PARA_S      stTagPara;
    UPGRD_PARA_HEAD_S     stLoaderParaHead;
    HI_LOADER_PARAMETER_S stLoaderParam;
    UPGRD_PRIVATE_PARAM_S stLoaderPrivate;
} UPGRD_LOADER_INFO_S;

////////////////////////////////////////////////////
HI_S32 Upgrd_ReadLoaderDBInfo(UPGRD_LOADER_INFO_S *pstInfoParam);
HI_S32 Upgrd_WriteLoaderDBInfo(UPGRD_LOADER_INFO_S *pstInfoParam);

HI_S32	Upgrd_ClearRequest(UPGRD_LOADER_INFO_S *pstLoaderInfo);
HI_S32 Upgrd_OpenDataBlock(const HI_CHAR* pstDBName, HI_HANDLE *hFlash, HI_U32 *pu32RegionSize, HI_U32 *pu32Offset,
                           HI_U32 *pu32Size);

#ifdef __cplusplus
 #if __cplusplus
}

 #endif
#endif

#endif
