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
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include <unistd.h>

#include "hi_type.h"
#include "hi_common.h"
#include "hi_module.h"
#include "hi_osal.h"

#include "mpi_mmz.h"
#include "hi_mpi_mem.h"
#include "drv_struct_ext.h"
#include "mpi_module.h"
#include "mpi_log.h"
#include "drv_sys_ioctl.h"
#include "hi_mpi_stat.h"
#include "mpi_userproc.h"

/*extern module depend on mce ko*/
#include "hi_drv_mce.h"

//////////////////////////////////////////////////////////////////////////////////////
/// STATIC CONST Variable
//////////////////////////////////////////////////////////////////////////////////////
static const HI_U8 s_szMonth[12][4] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
                       "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
#ifndef HI_ADVCA_FUNCTION_RELEASE
static const HI_U8 s_szVersion[] = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";
#else
static const HI_U8 s_szVersion[] = "";
#endif
static pthread_mutex_t   s_SysMutex = PTHREAD_MUTEX_INITIALIZER;

/// STATIC Variable
static HI_S32 s_s32SysInitTimes = 0;
static HI_S32 s_s32SysFd = -1;

/// DEFINATION MACRO
#define SYS_OPEN_FILE                                       \
do{                                                         \
    if (-1 == s_s32SysFd)                                   \
    {                                                       \
        s_s32SysFd = open("/dev/"UMAP_DEVNAME_SYS, O_RDWR); \
        if (s_s32SysFd < 0)                                 \
        {                                                   \
            perror("open");                                 \
            HI_SYS_UNLOCK();                                \
            return HI_FAILURE;                                   \
        }                                                   \
    }                                                       \
}while(0)

#define HI_SYS_LOCK()     (void)pthread_mutex_lock(&s_SysMutex);
#define HI_SYS_UNLOCK()   (void)pthread_mutex_unlock(&s_SysMutex);

#define IS_CHIP_TYPE(type) (type == SysVer.enChipTypeHardWare)
#define IS_CHIP(type, ver) ((type == SysVer.enChipTypeHardWare) && (ver == SysVer.enChipVersion))

HI_S32 HI_SYS_Init(HI_VOID)
{
    HI_S32 s32Ret = HI_FAILURE;

    HI_SYS_LOCK();

    if (0 == s_s32SysInitTimes)
    {
        SYS_OPEN_FILE;

        s32Ret = HI_MPI_LogInit();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("HI_MPI_LogInit failure: %d\n", s32Ret);
            goto LogErrExit;
        }

        s32Ret = HI_MODULE_Init();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("HI_ModuleMGR_Init failure: %d\n", s32Ret);
            goto ModuleErrExit;
        }

        //MUST unlock, because HI_MPI_STAT_Init calling HI_SYS_GetVersion will cause deadlock
        HI_SYS_UNLOCK();

        s32Ret = HI_MPI_STAT_Init();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("HI_MPI_STAT_Init failure: %d\n", s32Ret);
            goto StatErrExit;
        }

        s32Ret = MPI_UPROC_Init();
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_SYS("MPI_UPROC_Init failure: %d\n", s32Ret);
            goto UprocErrExit;
        }

        HI_SYS_LOCK();

        s_s32SysInitTimes = 1;

        HI_INFO_SYS("HI_SYS_Init init OK\n");
    }

    HI_SYS_UNLOCK();

    return (HI_S32)HI_SUCCESS;
UprocErrExit:

    (HI_VOID)HI_MPI_STAT_DeInit();
StatErrExit:
    /* Lock for access of s_s32SysInitTimes */
    HI_SYS_LOCK();
    (HI_VOID)HI_MODULE_DeInit();

ModuleErrExit:
    HI_MPI_LogDeInit();
    
LogErrExit:
    if (s_s32SysFd != -1)
    {
        close(s_s32SysFd);
        s_s32SysFd = -1;
    }

    s_s32SysInitTimes = 0;

    HI_SYS_UNLOCK();

    return (HI_S32)HI_FAILURE;
}

HI_S32 HI_SYS_DeInit(HI_VOID)
{
    HI_SYS_LOCK();

    if (0 != s_s32SysInitTimes)
    {
        (HI_VOID)MPI_UPROC_DeInit();

        (HI_VOID)HI_MPI_STAT_DeInit();

        (HI_VOID)HI_MODULE_DeInit();

        HI_MPI_LogDeInit();

        if (s_s32SysFd != -1)
        {
            close(s_s32SysFd);
            s_s32SysFd = -1;
        }

        s_s32SysInitTimes = 0;
    }

    HI_SYS_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_SYS_GetBuildTime(struct tm * pstTime)
{
    char szData[] = __DATE__;
    char szTime[] = __TIME__;
    char szTmp[5];
    int i;

    if (NULL == pstTime)
    {
        return HI_FAILURE;
    }

    /* month */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szData, 3);

    for(i=0; i<12; i++)
    {
            if(!HI_OSAL_Strncmp((const char*)s_szMonth[i], szTmp, sizeof(s_szMonth[i])))
            {
                pstTime->tm_mon = i + 1;
                break;
            }
    }

    /* day */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szData+4, 2);
    pstTime->tm_mday = atoi(szTmp);

    /* year */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szData+7, 4);
    pstTime->tm_year = atoi(szTmp);

    /* hour */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szTime, 2);
    pstTime->tm_hour = atoi(szTmp);

    /* minute */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szTime+3, 2);
    pstTime->tm_min = atoi(szTmp);


    /* second */
    memset(szTmp, 0, sizeof(szTmp));
    (HI_VOID)HI_OSAL_Strncpy(szTmp, szTime+6, 2);
    pstTime->tm_sec = atoi(szTmp);

    return HI_SUCCESS;
}

HI_S32 HI_SYS_PreAV(HI_SYS_PREAV_PARAM_S *pstPreParm)
{
    int ret = 0;
    int mcefd = -1;

    mcefd = open("/dev/hi_mce", O_RDWR);
    if (mcefd < 0)
    {
        HI_ERR_SYS("open mce err \n");
        return HI_FAILURE;
    }

    if( (pstPreParm != NULL) &&
        (  (pstPreParm->enOption == HI_UNF_PREAV_STEP1)
        || (pstPreParm->enOption == HI_UNF_PREAV_STEP2)
        || (pstPreParm->enOption == HI_UNF_PREAV_STEP3)
        || (pstPreParm->enOption == HI_UNF_PREAV_STEP4)))
    {
        ret = ioctl(mcefd, HI_MCE_VID_EXIT_CMD, pstPreParm);
        if (ret != 0)
        {
            HI_ERR_SYS("ioctl HI_MCE_LOGO_EXIT_CMD ret = %d \n", ret);
        }
    }
    else
    {
        ret = ioctl(mcefd, HI_MCE_LOGO_EXIT_CMD, NULL);
        if (ret != 0)
        {
            close(mcefd);
            HI_ERR_SYS("ioctl HI_MCE_LOGO_EXIT_CMD ret = %d \n", ret);
            return HI_FAILURE;
        }
    }
    
    close(mcefd);
	/* for codeCC never read*/
    //mcefd = -1;
    
    return HI_SUCCESS;	
}

HI_S32 HI_SYS_GetPlayTime(HI_U32 *pu32Playtime)
{
	HI_S32 s32Ret = 0;
	int mcefd = -1;
	mcefd = open("/dev/hi_mce", O_RDWR); 
	if (mcefd < 0) 
	{
		HI_ERR_SYS("open mce err \n");
		return HI_FAILURE;
	}
	s32Ret = ioctl(mcefd, HI_MCE_GET_PALY_TIME, pu32Playtime);
	if (s32Ret != 0)	
	{
		close(mcefd);
		HI_ERR_SYS("ioctl HI_MCE_GET_PALY_TIME ret = %d \n", s32Ret);
		return HI_FAILURE;
	}
	close(mcefd);
	/* for codeCC never read*/
	//mcefd = -1;
	return HI_SUCCESS;
}


HI_S32 HI_SYS_GetVersion(HI_SYS_VERSION_S *pstVersion)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (NULL == pstVersion)
    {
        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_GET_SYS_VERSION, pstVersion);
    if(s32Ret != 0)
    {
        HI_SYS_UNLOCK();

        HI_ERR_SYS("ioctl SYS_GET_SYS_VERSION error!\n");
        return HI_FAILURE;
    }

    (HI_VOID)HI_OSAL_Snprintf(pstVersion->aVersion, sizeof(pstVersion->aVersion), "%s", s_szVersion);
    #if defined(CHIP_TYPE_hi3716h)
        pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3716H;
    #elif  defined(CHIP_TYPE_hi3716mv310) \
         ||defined(CHIP_TYPE_hi3716mv320) \
         ||defined(CHIP_TYPE_hi3716mv330) \
         ||defined(CHIP_TYPE_hi3110ev500)
        pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3716M;
    #elif defined(CHIP_TYPE_hi3716c)
        pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3716C;
    #elif defined(CHIP_TYPE_hi3720)
        pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3720;
    #elif defined(CHIP_TYPE_hi3712)
        pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3712;
    #elif defined(CHIP_TYPE_hi3716cv200)
        pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3716C;
    #elif defined(CHIP_TYPE_hi3716cv200es)
        pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3716CES;
    #elif defined(CHIP_TYPE_hi3110ev500)
        pstVersion->enChipTypeSoft = HI_CHIP_TYPE_HI3110E;
    #else
        #error  YOU MUST DEFINE  CHIP_TYPE!
    #endif

    HI_SYS_UNLOCK();

    return HI_SUCCESS;
}

static HI_S32 GetChipCapSupportHelper(HI_CHIP_CAP_E enChipCap, HI_U32 *pu32Support)
{
    HI_S32 s32Ret;

    if (!pu32Support)
        return HI_FAILURE;

    HI_SYS_LOCK();
    
    if (s_s32SysFd < 0)
    {
        s32Ret = HI_FAILURE;
        goto out;
    }

    switch(enChipCap)
    {
        case HI_CHIP_CAP_DOLBY:
            s32Ret = ioctl(s_s32SysFd, SYS_GET_DOLBYSUPPORT, pu32Support);
            break;
        case HI_CHIP_CAP_DTS:
            s32Ret =  ioctl(s_s32SysFd, SYS_GET_DTSSUPPORT, pu32Support);
            break;
        case HI_CHIP_CAP_ADVCA:
            s32Ret =  ioctl(s_s32SysFd, SYS_GET_ADVCASUPPORT, pu32Support);
            break;
        case HI_CHIP_CAP_MACROVISION:
            s32Ret =  ioctl(s_s32SysFd, SYS_GET_MACROVISIONSUPPORT, pu32Support);
            break;
        default:
            HI_ERR_SYS("invalid chip attrs type!\n");
            s32Ret = HI_FAILURE;
            break;      
    }

out:
    HI_SYS_UNLOCK();

    return s32Ret;
}

HI_S32 HI_SYS_GetChipAttr(HI_SYS_CHIP_ATTR_S *pstChipAttr)
{
    HI_S32              ret; 
    HI_U32              u32Support = 0;

    if (!pstChipAttr)
    {
        HI_ERR_SYS("null ptr!\n");
        return HI_FAILURE;
    }

    ret = GetChipCapSupportHelper(HI_CHIP_CAP_DOLBY, &u32Support);
    pstChipAttr->bDolbySupport = (HI_BOOL)u32Support;
    if (HI_SUCCESS != ret)
    {
        HI_ERR_SYS("Get ChipAttr DOLBY error!\n");
        return HI_FAILURE;
    }

    ret =  GetChipCapSupportHelper(HI_CHIP_CAP_DTS, &u32Support);
    pstChipAttr->bDTSSupport = (HI_BOOL)u32Support;
    if (HI_SUCCESS != ret)
    {
        HI_ERR_SYS("Get ChipAttr DTS error!\n");
        return HI_FAILURE;
    }

    ret = GetChipCapSupportHelper(HI_CHIP_CAP_ADVCA, &u32Support);
    pstChipAttr->bADVCASupport = (HI_BOOL)u32Support;
    if (HI_SUCCESS != ret)
    {
        HI_ERR_SYS("Get ChipAttr ADVCA error!\n");
        return HI_FAILURE;
    }
    ret = GetChipCapSupportHelper(HI_CHIP_CAP_MACROVISION, &u32Support);
    pstChipAttr->bMacrovisionSupport = (HI_BOOL)u32Support;
    if (HI_SUCCESS != ret)
    {
        HI_ERR_SYS("Get ChipAttr MACROVISION error!\n");
        return HI_FAILURE;
    }

    HI_SYS_LOCK();
    ret = ioctl(s_s32SysFd, SYS_GET_DIEID, &(pstChipAttr->u64ChipID));
    if (HI_SUCCESS != ret)
    {
        HI_SYS_UNLOCK();
        HI_ERR_SYS("Get ChipAttr DIEID error!\n");
        return HI_FAILURE;
    }
    HI_SYS_UNLOCK();
  
    return HI_SUCCESS;
}

HI_S32 HI_SYS_CRC32(HI_U8 *pu8Src, HI_U32 u32SrcLen, HI_U32 *pu32Dst)
{
	HI_S32          Ret = HI_SUCCESS;
	unsigned long   poly_nomial = 0x04c11db7;
	unsigned long   CrcTable[256];          /*Calculate CRC32*/
	unsigned long   crc = 0xffffffff;

   
	/*Init _CrcTable[256] Flag, Only init once time*/
	int	  i, j;
	unsigned long crc_accum;

	for (i = 0;	i < 256;  i++)
	{
	   crc_accum =	( i << 24 );

	   for (j = 0; j < 8; j++)
	   {
		   if( crc_accum & 0x80000000L )
			   crc_accum = ( crc_accum << 1 ) ^ poly_nomial;
		   else
			   crc_accum = ( crc_accum << 1 );
	   }

	   CrcTable[i] = crc_accum;
	}
   
    while (u32SrcLen--) 
    {
        crc = (crc << 8) ^ CrcTable[((crc >> 24) ^ *pu8Src++) & 0xff];
    }

    *pu32Dst = crc;

    return Ret;
}

HI_S32 HI_SYS_GetMemConfig(HI_SYS_MEM_CONFIG_S *pstConfig)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (NULL == pstConfig)
    {
        HI_ERR_SYS("Get DDRConf ptr!\n");

        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_GET_DDRCONFIG, pstConfig);

	/* MV310上因MMZ架构不同，u32TotalSize获取出来的是bootargs中mem=参数值，这里保持以前的用法，u32TotalSize还是代表总内存大小。*/
	if (!s32Ret)
	{
		pstConfig->u32TotalSize += pstConfig->u32MMZSize;
	}
	
    HI_SYS_UNLOCK();
    return s32Ret;
}

HI_S32 HI_SYS_SetConf(const HI_SYS_CONF_S *pstSysConf)
{
    HI_S32 s32Ret = HI_FAILURE;

    if ( NULL == pstSysConf )
    {
        HI_ERR_SYS("Set pstSysConf ptr!\n");

        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_SET_CONFIG_CTRL, pstSysConf);

    HI_SYS_UNLOCK();

    return s32Ret;
}

HI_S32 HI_SYS_GetConf(HI_SYS_CONF_S *pstSysConf)
{
    HI_S32 s32Ret = HI_FAILURE;

    if ( NULL == pstSysConf )
    {
        HI_ERR_SYS("Get pstSysConf ptr!\n");

        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_GET_CONFIG_CTRL, pstSysConf);

    HI_SYS_UNLOCK();

    return s32Ret;
}

HI_S32 HI_SYS_WriteRegister(HI_U32 u32RegAddr, HI_U32 u32Value)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 *pu32VirAddr;

    HI_SYS_LOCK();

    pu32VirAddr = (HI_U32*)HI_MMAP(u32RegAddr, 4);
    if (NULL == pu32VirAddr)
    {
        HI_ERR_SYS("HI_MMAP failed\n");
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    *pu32VirAddr = u32Value;

    s32Ret = HI_MUNMAP((void*)pu32VirAddr);
    if (HI_FAILURE == s32Ret)
    {
        HI_ERR_SYS("HI_MUNMAP failed\n");
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    HI_SYS_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_SYS_ReadRegister(HI_U32 u32RegAddr, HI_U32 *pu32Value)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 *pu32VirAddr;

    if (HI_NULL == pu32Value)
    {
        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    pu32VirAddr = (HI_U32*)HI_MMAP(u32RegAddr, 4);
    if (NULL == pu32VirAddr)
    {
        HI_ERR_SYS("HI_MMAP failed\n");
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    *pu32Value = *pu32VirAddr;

    s32Ret = HI_MUNMAP((void*)pu32VirAddr);
    if (HI_FAILURE == s32Ret)
    {
        HI_ERR_SYS("HI_MUNMAP failed\n");
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    HI_SYS_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_SYS_GetTimeStampMs(HI_U32 *pu32TimeMs)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (HI_NULL == pu32TimeMs)
    {
        HI_ERR_SYS("null pointer error\n");
        return HI_FAILURE;
    }

    HI_SYS_LOCK();

    if (s_s32SysFd < 0)
    {
        HI_SYS_UNLOCK();
        return HI_FAILURE;
    }

    s32Ret = ioctl(s_s32SysFd, SYS_GET_TIMESTAMPMS, pu32TimeMs);

    HI_SYS_UNLOCK();

    return s32Ret;
}

HI_S32 HI_SYS_SetLogLevel(HI_DEBUG_MOD_ID_E enModId,  HI_LOG_LEVEL_E enLogLevel)
{
    return HI_MPI_LogLevelSet((HI_U32)enModId, enLogLevel);
}

HI_S32 HI_SYS_SetLogLevelByModId(HI_MOD_ID_E enModId,  HI_LOG_LEVEL_E enLogLevel)
{
     return HI_MPI_LogLevelSetByModId((HI_U32)enModId, enLogLevel);
}

HI_S32 HI_SYS_SetLogPath(const HI_CHAR* pszLogPath)
{
    return HI_MPI_LogPathSet(pszLogPath);
}

HI_S32 HI_SYS_SetStorePath(const HI_CHAR* pszPath)
{
    return HI_MPI_StorePathSet(pszPath);
}

HI_S32 HI_PROC_AddDir(const HI_CHAR * pszName)
{
    return MPI_UPROC_AddDir(pszName);
}

HI_S32 HI_PROC_RemoveDir(const HI_CHAR *pszName)
{
    return MPI_UPROC_RemoveDir(pszName);
}

HI_S32 HI_PROC_AddEntry(HI_U32 u32ModuleID, const HI_PROC_ENTRY_S* pstEntry)
{
    return MPI_UPROC_AddEntry(u32ModuleID, pstEntry);
}

HI_S32 HI_PROC_RemoveEntry(HI_U32 u32ModuleID, const HI_PROC_ENTRY_S* pstEntry)
{
    return MPI_UPROC_RemoveEntry(u32ModuleID, pstEntry);
}

HI_S32 HI_PROC_Printf(HI_PROC_SHOW_BUFFER_S *pstBuf, const HI_CHAR *pFmt, ...)
{
    HI_U32 u32Len = 0;  
    va_list args = {0};

    if ((HI_NULL == pstBuf) || (HI_NULL == pstBuf->pu8Buf) || (HI_NULL == pFmt))
    {
        return HI_FAILURE;  
    }

    /* log buffer overflow */
    if (pstBuf->u32Offset >= pstBuf->u32Size)
    {
        HI_ERR_SYS("userproc log buffer(size:%d) overflow.\n", pstBuf->u32Size);
        return HI_FAILURE;
    }

    va_start(args, pFmt);
    u32Len = (HI_U32)HI_OSAL_Vsnprintf((HI_CHAR*)pstBuf->pu8Buf + pstBuf->u32Offset, 
                            pstBuf->u32Size - pstBuf->u32Offset, pFmt, args);   
    va_end(args);
	
    pstBuf->u32Offset += u32Len;

    return HI_SUCCESS;
}

HI_S32 HI_MMZ_Malloc(HI_MMZ_BUF_S *pstBuf)
{
    return HI_MPI_MMZ_Malloc(pstBuf);
}

HI_S32 HI_MMZ_Free(HI_MMZ_BUF_S *pstBuf)
{
    return HI_MPI_MMZ_Free(pstBuf);
}

HI_VOID *HI_MMZ_New(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR *ps8MMZName, HI_CHAR *ps8MMBName)
{
    return HI_MPI_MMZ_New(u32Size, u32Align, ps8MMZName, ps8MMBName);
}

HI_S32 HI_MMZ_Delete(HI_U32 u32PhysAddr)
{
    return HI_MPI_MMZ_Delete(u32PhysAddr);
}

HI_VOID *HI_MMZ_Map(HI_U32 u32PhysAddr, HI_U32 u32Cached)
{
    return HI_MPI_MMZ_Map(u32PhysAddr, u32Cached);
}

HI_S32 HI_MMZ_Unmap(HI_U32 u32PhysAddr)
{
    return HI_MPI_MMZ_Unmap(u32PhysAddr);
}

HI_S32 HI_MMZ_Flush(HI_U32 u32PhysAddr)
{
    return HI_MPI_MMZ_Flush(u32PhysAddr);
}

HI_VOID *HI_MEM_Map(HI_U32 u32PhyAddr, HI_U32 u32Size)
{
    return HI_MMAP(u32PhyAddr, u32Size);
}

HI_S32 HI_MEM_Unmap(HI_VOID *pAddrMapped)
{
    return HI_MUNMAP(pAddrMapped);
}

HI_S32 HI_MMZ_GetPhyaddr(HI_VOID * pVir, HI_U32 *pu32Phyaddr, HI_U32 *pu32Size)
{
    return HI_MPI_MMZ_GetPhyAddr(pVir, pu32Phyaddr, pu32Size);
}


HI_VOID* HI_MEM_Malloc(HI_U32 u32ModuleID, HI_U32 u32Size)
{
    return HI_MALLOC(u32ModuleID, u32Size);
}

HI_VOID HI_MEM_Free(HI_U32 u32ModuleID, HI_VOID* pMemAddr)
{
    HI_FREE(u32ModuleID, pMemAddr);
}

HI_VOID* HI_MEM_Calloc(HI_U32 u32ModuleID, HI_U32 u32MemBlock, HI_U32 u32Size)
{
    return HI_CALLOC(u32ModuleID, u32MemBlock, u32Size);
}

HI_VOID* HI_MEM_Realloc(HI_U32 u32ModuleID, HI_VOID *pMemAddr, HI_U32 u32Size)
{
    return HI_REALLOC(u32ModuleID, pMemAddr, u32Size);
}
