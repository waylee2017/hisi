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

#include <math.h>
#include <limits.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <string.h>
#include <assert.h>
#include <stdio.h>
#include <time.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/timeb.h>
#include <pthread.h>

#include "hi_type.h"

#include "drv_mmz_userdev_ioctl.h"

#include "hi_debug.h"
#include "drv_struct_ext.h"
#include "drv_mem_ioctl.h"
#include "hi_mpi_mem.h"


#define MMZ_DEVNAME "/dev/mmz_userdev"
static HI_S32 g_s32fd = -1; /*mem device not open*/

static pthread_mutex_t g_mem_mutex = PTHREAD_MUTEX_INITIALIZER;

HI_S32 MEMDeviceCheckOpen(HI_VOID)
{
    MEM_LOCK(&g_mem_mutex);

    if (-1 == g_s32fd)
    {
        g_s32fd = open(MMZ_DEVNAME, O_RDWR);
        if (-1 == g_s32fd)
        {
            HI_FATAL_MEM("Open mem device failed!\n");
            MEM_UNLOCK(&g_mem_mutex);
            return  HI_FAILURE;
        }
    }

    MEM_UNLOCK(&g_mem_mutex);

    return HI_SUCCESS;
}


HI_S32 MEMDeviceCheckClose(HI_VOID)
{
    MEM_LOCK(&g_mem_mutex);

    if ( g_s32fd != -1 )
    {
        (HI_VOID)close(g_s32fd);
        g_s32fd = -1;
    }

    MEM_UNLOCK(&g_mem_mutex);
    MEM_LOCK_DESTROY(&g_mem_mutex);

    return HI_SUCCESS;
}

/*below is the macro used frequently*/
#define CHECK_MEM_OPEN_STATE()    \
    do{  \
        if (HI_SUCCESS != MEMDeviceCheckOpen()) return HI_FAILURE; \
    }while(0)

#define CHECK_MEM_OPEN_STATE2()    \
    do{  \
        if (HI_SUCCESS != MEMDeviceCheckOpen()) return NULL; \
    }while(0)
/*****************************************************************************
 Prototype    : HI_MPI_MMZ_Malloc
 Description  : ...
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/10/9
    Author       : g45345
    Modification : Created function
*****************************************************************************/
HI_S32 HI_MPI_MMZ_Malloc(HI_MMZ_BUF_S *pstBuf)
{
    HI_S32 l_return;
    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    /*parameters check*/
    if (NULL == pstBuf)
    {
        HI_ERR_MEM("%s:pBuf is NULL pointer!\n", __FUNCTION__);
        return HI_FAILURE;
    }

    if (pstBuf->bufsize < 0x1000)
    {
        pstBuf->bufsize = 0x1000;
    }

    if (strlen(pstBuf->bufname) >= MAX_BUFFER_NAME_SIZE)
    {
        HI_ERR_MEM("%s:the buffer name len is overflow!\n", __FUNCTION__);
        return HI_FAILURE;
    }

    mmi.size = pstBuf->bufsize;
    mmi.align = 0x1000;
    strncpy(mmi.mmb_name, pstBuf->bufname, HIL_MMB_NAME_LEN);

    MEM_LOCK(&g_mem_mutex);

    /*call ioctl to malloc*/
    l_return = MEM_IOCTL(g_s32fd, IOC_MMB_ALLOC, &mmi);
    if (l_return != 0)
    {
        MEM_UNLOCK(&g_mem_mutex);
        return HI_FAILURE;
    }

    /*call ioctl to user addr remap*/
    mmi.prot = PROT_READ | PROT_WRITE;
    mmi.flags = MAP_SHARED;
    l_return = MEM_IOCTL(g_s32fd, IOC_MMB_USER_REMAP, &mmi);
    if (l_return != 0)
    {
        (void)MEM_IOCTL(g_s32fd, IOC_MMB_FREE, &mmi);
        MEM_UNLOCK(&g_mem_mutex);
        return HI_FAILURE;
    }

    pstBuf->phyaddr = mmi.phys_addr;
    pstBuf->user_viraddr = (HI_U8 *)mmi.mapped;
    pstBuf->overflow_threshold = 100;
    pstBuf->underflow_threshold = 0;

    MEM_UNLOCK(&g_mem_mutex);
    return HI_SUCCESS;
}


/*****************************************************************************
 Prototype    : HI_MPI_MMZ_Free
 Description  : ...
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2006/10/9
    Author       : g45345
    Modification : Created function
*****************************************************************************/
HI_S32 HI_MPI_MMZ_Free(HI_MMZ_BUF_S *pstBuf)
{
    HI_S32 l_return;
    struct mmb_info mmi;

    CHECK_MEM_OPEN_STATE();

    /*parameters check*/
    if (NULL == pstBuf)
    {
        HI_ERR_MEM("%s:pBuf is NULL pointer!\n", __FUNCTION__);
        return HI_FAILURE;
    }

    mmi.phys_addr = pstBuf->phyaddr;
    mmi.mapped = (void *)pstBuf->user_viraddr;

    MEM_LOCK(&g_mem_mutex);

    l_return = MEM_IOCTL(g_s32fd, IOC_MMB_USER_UNMAP, &mmi);
    if (l_return != 0)
    {
        MEM_UNLOCK(&g_mem_mutex);
        return HI_FAILURE;
    }
    /*call ioctl to free*/
    l_return = MEM_IOCTL(g_s32fd, IOC_MMB_FREE, &mmi);
    if (l_return == HI_SUCCESS)
    {
        MEM_UNLOCK(&g_mem_mutex);
        return HI_SUCCESS;
    }
    else
    {
        MEM_UNLOCK(&g_mem_mutex);
        return HI_FAILURE;
    }
}


HI_VOID *HI_MPI_MMZ_New(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR *ps8MMZName, HI_CHAR *ps8MMBName)
{
    struct mmb_info mmi = {0};
    HI_S32 ret;

    CHECK_MEM_OPEN_STATE2();

    if( u32Size == 0 || u32Size > 0x40000000) return NULL;
    mmi.size = u32Size;

    mmi.align = u32Align;
    if( ps8MMBName != NULL ) strncpy(mmi.mmb_name, ps8MMBName, HIL_MMB_NAME_LEN);
    if( ps8MMZName != NULL ) strncpy(mmi.mmz_name, ps8MMZName, HIL_MMB_NAME_LEN);

    ret = ioctl(g_s32fd, IOC_MMB_ALLOC, &mmi);
    if (ret != 0)
        return NULL;
    else
        return (HI_VOID *)mmi.phys_addr;
}

HI_S32 HI_MPI_MMZ_Delete(HI_U32 u32PhysAddr)
{

    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    mmi.phys_addr = u32PhysAddr;

    return ioctl(g_s32fd, IOC_MMB_FREE, &mmi);

}

HI_S32 HI_MPI_MMZ_GetPhyAddr(HI_VOID *pRefAddr, HI_U32 *pu32PhyAddr, HI_U32 *pu32Size)
{
    int ret;
    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    mmi.mapped = pRefAddr;

    ret = ioctl(g_s32fd, IOC_MMB_USER_GETPHYADDR, &mmi);
    if (ret)
    {
        return -1;
    }
    if (pu32PhyAddr)
    {
        *pu32PhyAddr = mmi.phys_addr;
    }
    if (pu32Size)
    {
        *pu32Size = mmi.size;
    }
    return 0;
}

HI_VOID *HI_MPI_MMZ_Map(HI_U32 u32PhysAddr, HI_U32 u32Cached)
{
    struct mmb_info mmi = {0};
    HI_S32 ret;

    CHECK_MEM_OPEN_STATE2();

    HI_INFO_MEM("map addr:0x%x\n", u32PhysAddr);

    if(u32Cached != 0 && u32Cached != 1)  return NULL;

    mmi.prot = PROT_READ | PROT_WRITE;
    mmi.flags = MAP_SHARED;
    mmi.phys_addr = u32PhysAddr;

    if (u32Cached)
    {
    HI_INFO_MEM("map addr:0x%x\n", u32PhysAddr);
        ret = ioctl(g_s32fd, IOC_MMB_USER_REMAP_CACHED, &mmi);
        if( ret !=0 )
        {
            HI_FATAL_MEM("IOC_MMB_USER_REMAP_CACHED failed, phyaddr:0x%x\n", mmi.phys_addr);
            return NULL;
        }

    }
    else
    {
    HI_INFO_MEM("map addr:0x%x\n", u32PhysAddr);
        ret = ioctl(g_s32fd, IOC_MMB_USER_REMAP, &mmi);
        if( ret !=0 )
        {
            HI_FATAL_MEM("IOC_MMB_USER_REMAP failed, phyaddr:0x%x\n", mmi.phys_addr);
            return NULL;
        }
    }

    return (HI_VOID *)mmi.mapped;

}

HI_S32 HI_MPI_MMZ_Unmap(HI_U32 u32PhysAddr)
{

    struct mmb_info mmi = {0};

    CHECK_MEM_OPEN_STATE();

    mmi.phys_addr = u32PhysAddr;

    return ioctl(g_s32fd, IOC_MMB_USER_UNMAP, &mmi);

}

HI_S32 HI_MPI_MMZ_Flush(HI_U32 u32PhysAddr)
{
    CHECK_MEM_OPEN_STATE();

    if (!u32PhysAddr)
    {
        return ioctl(g_s32fd, IOC_MMB_FLUSH_DCACHE, NULL);
    }
    else
    {
        return ioctl(g_s32fd, IOC_MMB_FLUSH_DCACHE, u32PhysAddr);
    }
}
