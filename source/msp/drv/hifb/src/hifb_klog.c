/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hifb_klog.c
Version             : Initial Draft
Author              : 
Created             : 2014/08/06
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file        
******************************************************************************/

/*********************************add include here******************************/
#include <linux/ctype.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/errno.h>
#include <linux/string.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/fcntl.h>
#include <linux/slab.h>

#include "hi_drv_proc.h"
#include "higo_log_type.h"
#include "hi_debug.h"

/***************************** Macro Definition ******************************/
#ifdef HI_ADVCA_FUNCTION_RELEASE
#define HIGO_PROC_SUPPORT            0
#define SEQ_Printf(fmt...)           {do{}while(0);}
#else
/** HIGO proc基本上没用到，这里就不用多余的内存了 **/
#define HIGO_PROC_SUPPORT            0
#define SEQ_Printf(fmt...)           seq_printf(fmt)
#endif



#if HIGO_PROC_SUPPORT
	#ifdef HI_TRACE1
	#define LOG_TRACE(fmt...)  HI_TRACE(HI_LOG_LEVEL_ERROR, HI_DEBUG_ID_FB, fmt)
	#define LOG_ERROR(fmt...)  HI_TRACE(HI_LOG_LEVEL_ERROR, HI_DEBUG_ID_FB, fmt)
	#else
	#define LOG_TRACE(fmt...)  printk(fmt)
	#define LOG_ERROR(fmt...)  printk(fmt)
	#endif

	static HI_U32 s_u32LogMemPhyAddr = 0;
	static HI_U8* s_pu8LogMemKVirtAddr = 0;

	#define TABLE_NUM(x) (sizeof(x)/sizeof(*(x)))

	/** layer log memory base addr */
	#define LOG_KLAYER_START_PTR   (HIGO_LOG_LAYER_S*)((HI_U8*)s_pu8LogMemKVirtAddr + sizeof(HIGO_LOG_SYS_S))

	/** memory log memory base addr */
	#define LOG_KMEM_START_PTR     ((HIGO_LOG_MEM_S*)((HI_U8*)s_pu8LogMemKVirtAddr + LOG_MEM_OFFSET))

	/** surface log memory base addr */
	#define LOG_KSURFACE_START_PTR ((HIGO_LOG_SURFACE_S*)((HI_U8*)s_pu8LogMemKVirtAddr + LOG_SURFACE_OFFSET))

	/*************************** Structure Definition ****************************/
	const HI_CHAR* s_pszFormat[] = 
	{  
		"HIGO_PF_CLUT8",
        "HIGO_PF_CLUT1",
        "HIGO_PF_CLUT4",
        "HIGO_PF_4444",
        "HIGO_PF_0444",
        "HIGO_PF_1555",
        "HIGO_PF_0555",
        "HIGO_PF_565",
        "HIGO_PF_8565",
        "HIGO_PF_8888",
        "HIGO_PF_0888",
        "HIGO_PF_YUV400",
        "HIGO_PF_YUV420",
        "HIGO_PF_YUV422",
        "HIGO_PF_YUV422_V",
        "HIGO_PF_YUV444",
        "HIGO_PF_A1",
        "HIGO_PF_A8",
        "unkown"
    };

/********************** Global Variable declaration **************************/
	
/******************************* API forward declarations *******************/
HI_U32 hifb_buf_allocmem(HI_CHAR *pName, HI_U32 u32LayerSize);
HI_VOID *hifb_buf_map(HI_U32 u32PhyAddr);
HI_S32 hifb_buf_ummap(HI_VOID *pViraddr);
HI_VOID hifb_buf_freemem(HI_U32 u32Phyaddr);

/******************************* API realization *****************************/

static inline HI_BOOL Log_NeedProc(HI_VOID)
{
    HIGO_LOG_SYS_S* pLogSysInfo = (HIGO_LOG_SYS_S*)s_pu8LogMemKVirtAddr;
    
    if (!s_pu8LogMemKVirtAddr)
    {
        return HI_FALSE;
    }

    if (!(pLogSysInfo->eCtl & HIGO_LOG_CTL_ENABLE_PROC) || 
        ! (pLogSysInfo->eCtl & HIGO_LOG_CTL_HIGO_RUN))
    {
        return HI_FALSE;
    }

    return HI_TRUE;
}

struct seq_file* Log_PrintLayerInfo(struct seq_file* p)
{
    
    HI_S32 i;
    HIGO_LOG_LAYER_S* pLayer = LOG_KLAYER_START_PTR; 
    HI_U32 u32LayerId;
    const HI_CHAR* pszLayer[] = {
                               "HIGO_LAYER_SD_0",
                               "HIGO_LAYER_SD_1", 
                               "HIGO_LAYER_HD_0",
                               "HIGO_LAYER_HD_1",
                               "HIGO_LAYER_AD_0", 
                               "Unkown"};

    const HI_CHAR* pszBufMode[] = { "SINGLE", "DOUBLE", "TRIPPLE", "UNKOWN"};
    const HI_CHAR* pBufMode  = NULL;
    const HI_CHAR* pszAntiFlickerLevel[] = {"NONE", "LOW","MIDDLE","HIGH","AUTO",
                                            "UNKOWN"};
    if (!Log_NeedProc())
    {
        return p;
    }

    SEQ_Printf(p, "\n----------------------- layer inforamtion -------------- \n");

    for ( i = 0 ; i < HIGO_LOG_MAX_LAYER_COUNT; i++ )
    {
        if (pLayer->pLayer)
        {
            HI_U32 u32PixelFormat;
            HI_U32 u32AntiFlickerLevel = 0;
            
            u32LayerId = pLayer->LayerID;
            if (u32LayerId >= TABLE_NUM(pszLayer))
            {
                u32LayerId = TABLE_NUM(pszLayer) - 1;
            }

            u32PixelFormat = pLayer->PixelFormat;
            if (u32PixelFormat >= TABLE_NUM(s_pszFormat))
            {
                u32PixelFormat = TABLE_NUM(s_pszFormat) - 1;
            }

            if (pLayer->LayerFlushType == 0x02)
            {
                pBufMode = pszBufMode[0];

            }
            else if (pLayer->LayerFlushType == 0x04)
            {
                pBufMode = pszBufMode[1];

            }
            else if (pLayer->LayerFlushType == 0x08)
            {
                pBufMode = pszBufMode[2];

            }
            else
            {
                pBufMode = pszBufMode[3];
            }

            u32AntiFlickerLevel = pLayer->AntiLevel;
            if (u32AntiFlickerLevel >= TABLE_NUM(pszAntiFlickerLevel))
            {
                u32AntiFlickerLevel = TABLE_NUM(pszAntiFlickerLevel) -1 ;
            }
                
            SEQ_Printf(p, 
                               "layer id              : %s \n"
                               "pixel format          : %s \n"
                               "buffer type           : %s \n"
                               "created               : %s \n"
                               "default canvas surface: %s \n" 
                               "user canvas surface   : %s \n"
                               "antiflicer level      : %s \n"
                               "canvas surface (w, h) : %d, %d \n"
                               "display surface (w, h): %d, %d \n"
                               "screen surface (w, h) : %d, %d \n",
                            pszLayer[u32LayerId],
                            s_pszFormat[u32PixelFormat],
                            pBufMode,
                            pLayer->bCreated ? "yes": "no",
                            pLayer->bDefSurface ? "yes": "no", 
                            pLayer->bUsrCanSurface ? "yes" : "no",
                            pszAntiFlickerLevel[pLayer->AntiLevel],
                            pLayer->CanvasWidth, pLayer->CanvasHeight,
                            pLayer->DisplayWidth, pLayer->DisplayHeight,
                            pLayer->ScreenWidth,pLayer->ScreenHeight
                            );
        }
        
        pLayer++;
    }
    
    return p;
}

struct seq_file* Log_PrintMemInfo(struct seq_file* p)
{
    HIGO_LOG_MEM_S* pMem = LOG_KMEM_START_PTR;
    HI_S32 i;
    const HI_CHAR* pszModName[HIGO_LOG_MAX_MEMBLOCK_COUNT] = {"MOD:COMMON",
                                    "MOD:SURFACE",
                                    "MOD:MEMSURFACE",
                                    "MOD:LAYER",
                                    "MOD:BLITER",
                                    "MOD:DEC",
                                    "MOD:TEXTOUT",
                                    "MOD:WINC",
                                    "MOD:DESKTOP", 
                                    "MOD:UNKOWN"
                                     };
    if (!Log_NeedProc())
    {
        return p;
    }

    SEQ_Printf(p, "\n----------------------- memory inforamtion -------------- \n");

    for ( i = 0 ; i < HIGO_LOG_MAX_MEMBLOCK_COUNT; i++ )
    {
        SEQ_Printf(p, "%16s phyical memory used:%8d bytes, system memory used: %8d bytes \n",
                         pszModName[i], pMem->u32PhyMemUsed, pMem->u32SysMemUsed);
        pMem++;
    }

    return p;
}

struct seq_file* Log_PrintSurfaceInfo(struct seq_file* p)
{
    HI_S32 i = 0; 
    HI_U32 count = 0;
    HIGO_LOG_SURFACE_S* pSurface = LOG_KSURFACE_START_PTR;
    if (!Log_NeedProc())
    {
        return p;
    }

    SEQ_Printf(p, "\n----------------------- surface inforamtion -------------- \n");
    for ( i = 0 ; i < HIGO_LOG_MAX_SURFACE_COUNT; i++ )
    {
        if (pSurface->pSurface)
        {
            HI_U32 u32Fmt = pSurface->eFormat;
            if (u32Fmt >= TABLE_NUM(s_pszFormat))
            {
                u32Fmt = TABLE_NUM(s_pszFormat) - 1;
            }

            if (!(count % 20))
            {
                SEQ_Printf(p, "\n%6s %16s %8s %8s %8s %8s %16s %s \n",
                                 "number", "name", "width", "height", "pitch", 
                                 "phyaddr", "size(Kbytes)", "format");
                
            }
            
            SEQ_Printf(p, "%04d %16s %8d %8d %8d 0x%08x %8d  %16s \n",
                                       count,
                                       pSurface->szName,
                                       pSurface->u16Width, 
                                       pSurface->u16Height,
                                       pSurface->u16Pitch,
                                       pSurface->u32PhyAddr,
                                       pSurface->u16Pitch*pSurface->u16Height/1024,
                                       s_pszFormat[u32Fmt]);
            count++;
                                       
        }

        pSurface++;
    }

    return p;
}

struct seq_file* Log_PrinSysInfo(struct seq_file* p)
{
    HIGO_LOG_SYS_S* pLogSysInfo = (HIGO_LOG_SYS_S*)s_pu8LogMemKVirtAddr;
    
    if (!s_pu8LogMemKVirtAddr)
    {
        SEQ_Printf(p, "The log memory is null! There is a unkown error!\n");    
        return p;
    }

    if (pLogSysInfo->eCtl& HIGO_LOG_CTL_HIGO_RUN)
    {
        SEQ_Printf(p, "\n------------------------- higo total information ----------- \n");
        SEQ_Printf(p, "%s %s  \n", pLogSysInfo->szBuildTime,pLogSysInfo->szVersion);
        SEQ_Printf(p, "proc status          : %s \n", pLogSysInfo->eCtl& HIGO_LOG_CTL_ENABLE_PROC ? "ON" : "OFF");
        SEQ_Printf(p, "time print           : %s \n", pLogSysInfo->eCtl& HIGO_LOG_CTL_ENABLE_PERORMANCE? "ON" : "OFF");
    }
    else
    {
        SEQ_Printf(p, "The higo don't run yet!\n");  
        return p;
    }
    
    if (pLogSysInfo->eCtl& HIGO_LOG_CTL_ENABLE_PROC)
    {
        SEQ_Printf(p, "surface used         : %d \n", pLogSysInfo->u32SurfaceCount);
        SEQ_Printf(p, "layer used           : %d \n", pLogSysInfo->u32LayerCount);
        SEQ_Printf(p, "mmz memory used      : %d bytes ( %d KBytes )\n", 
                        pLogSysInfo->u32PhyMemUsed, pLogSysInfo->u32PhyMemUsed/1024);
        SEQ_Printf(p, "system memory used   : %d bytes ( %d KBtyes )\n", 
                        pLogSysInfo->u32SysMemUsed, pLogSysInfo->u32SysMemUsed/1024);
    }

    return p;
}

HI_VOID Log_PrintHelpInfo(HI_VOID)
{
    LOG_TRACE("\nusage as following: \n");
    LOG_TRACE("    cat /proc/msp/higo               display all proc information\n");
    LOG_TRACE("    echo proc on  > /proc/msp/higo   enable higo proc. default is disable!\n");
    LOG_TRACE("    echo proc off > /proc/msp/higo   disable the proc information!\n");
    LOG_TRACE("    echo time on  > /proc/msp/higo   enable higo printf time. default is disable!\n");
    LOG_TRACE("    echo time off > /proc/msp/higo   disable print time!\n");
}

static HI_S32 higo_proc_show(struct seq_file *p, HI_VOID *v)
{
    Log_PrintHelpInfo();
    Log_PrinSysInfo(p);
    Log_PrintLayerInfo(p);
    Log_PrintSurfaceInfo(p);
    return HI_SUCCESS;
}
                
static HI_S32 higo_proc_write(struct file * file,const char __user * pBuf, size_t count, loff_t *ppos)
{
    HI_CHAR buf[128] = {0};
    HIGO_LOG_SYS_S* pSysInfo = (HIGO_LOG_SYS_S*)s_pu8LogMemKVirtAddr;

    if (!pSysInfo)
    {
        return HI_FAILURE;
    }

    if (count > sizeof(buf))
    {
        LOG_ERROR("The command string is out of buf space :%d bytes !\n", sizeof(buf));
        return HI_FAILURE;
    }

    memset(buf, 0, sizeof(buf));
    if (copy_from_user(buf, pBuf, count))
    {
        LOG_ERROR("failed to call copy_from_user !\n");
        return HI_FAILURE;
    }
    buf[sizeof(buf) - 1] = '\0';
	
    if (strstr(buf, "proc on"))
    {
        pSysInfo->eCtl |= HIGO_LOG_CTL_ENABLE_PROC;
    }
    else if (strstr(buf, "proc off"))
    {
        pSysInfo->eCtl &= ~HIGO_LOG_CTL_ENABLE_PROC;
    }
    else if (strstr(buf, "time on"))
    {
        pSysInfo->eCtl |= HIGO_LOG_CTL_ENABLE_PERORMANCE;
    }
    else if (strstr(buf, "time off"))
    {
        pSysInfo->eCtl &= ~HIGO_LOG_CTL_ENABLE_PERORMANCE;
    }
    else
    {
        Log_PrintHelpInfo();
    }

    return count;
}

static HI_S32 Log_GetMemory(HIGO_LOG_MEM_INFO_S* pMem)
{
    if (s_u32LogMemPhyAddr)
    {
        pMem->u32PhyAddr = s_u32LogMemPhyAddr;
        pMem->u32Size = HIGO_LOG_MEM_SIZE;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

static HI_S32 higo_proc_ioctl(struct seq_file *p, HI_U32 cmd, HI_U32 arg)
{
    HIGO_LOG_MEM_INFO_S info;
    HI_S32 s32Ret = HI_FAILURE;

    if (HIGO_GET_LOG_MEM == cmd )
    {
        s32Ret = Log_GetMemory(&info);
        if (HI_SUCCESS == s32Ret)
        {
            s32Ret = copy_to_user((HI_VOID*)arg, &info, sizeof(info));
        }
        
        if (HI_SUCCESS != s32Ret) 
        { 
            return -EFAULT;
        }
    }
    
    return 0;
}

HI_S32 higo_proc_dinit(HI_VOID)
{
    HI_DRV_PROC_RemoveModule("higo");

    if (s_pu8LogMemKVirtAddr)
    {
        hifb_buf_ummap(s_pu8LogMemKVirtAddr);
        s_pu8LogMemKVirtAddr = NULL;
    }

    if (s_u32LogMemPhyAddr)
    {
        hifb_buf_freemem(s_u32LogMemPhyAddr);
        s_u32LogMemPhyAddr = 0;
    }
    
    return HI_SUCCESS;
}


/***************************************************************************************
* func          : higo_proc_Init
* description   : CNcomment: logo初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 higo_proc_Init(HI_VOID)
{

    DRV_PROC_EX_S  proc;
	
    s_u32LogMemPhyAddr = hifb_buf_allocmem("higo_proc", HIGO_LOG_MEM_SIZE);
    if  (0 == s_u32LogMemPhyAddr)
    {
        LOG_ERROR("failed to malloc mmz memory size:%d\n", HIGO_LOG_MEM_SIZE);
        goto ERR;
    }
    
    s_pu8LogMemKVirtAddr = (HI_U8*)hifb_buf_map(s_u32LogMemPhyAddr);
    if (NULL == s_pu8LogMemKVirtAddr)
    {
        LOG_ERROR("failed to map phyical addr to kernel virtual addr!");
        goto ERR;
    }

    memset(s_pu8LogMemKVirtAddr, 0x00, HIGO_LOG_MEM_SIZE);

    proc.fnRead   = higo_proc_show;
    proc.fnWrite  = higo_proc_write;
    proc.fnIoctl  = higo_proc_ioctl;
        
    HI_DRV_PROC_AddModule("higo", &proc, NULL);
	
    return HI_SUCCESS;
    
ERR:
   higo_proc_dinit();
   
   return HI_FAILURE;
   
}

#endif
