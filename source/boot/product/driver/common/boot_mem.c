#include <uboot.h>
#include "hi_boot_common.h"
#include "hi_type.h"


#ifndef HI_MINIBOOT_SUPPORT
extern void *reserve_mem_alloc(unsigned int size, unsigned int *allocsize);
#endif

HI_S32 HI_MMZ_Init(HI_VOID)
{
	return 0;
}
HI_S32 HI_MMZ_DeInit(HI_VOID)
{
	return 0;
}
HI_S32 HI_MMZ_GetInfoZoneAddr(MMZ_BUFFER_S *psMBuf)
{
	return -1;
}
HI_S32 HI_MMZ_Alloc(const char *bufname, char *zone_name, unsigned int size, int align, MMZ_BUFFER_S *psMBuf)
{
    HI_U32 AllocSize = 0;
	HI_S32 addr = 0;
	addr =(HI_U32)reserve_mem_alloc(size, &AllocSize);
	if(!addr)
	{
		printf("%s->%d, alloc 0x%x size,reserve_mem_alloc failed!return 0x%x\n",__func__,__LINE__,size, addr);
	}
	psMBuf->u32Size = AllocSize;
	psMBuf->u32StartPhyAddr = addr;
	psMBuf->u32StartVirAddr = addr;
//	printf("%s->%d, alloc 0x%x size, return 0x%x\n",__func__,__LINE__,size, addr);
	return 0;
}

HI_VOID HI_MMZ_Release(MMZ_BUFFER_S *psMBuf)
{
	return;
}

HI_S32 HI_MEM_Alloc(HI_U32 *pu32PhyAddr, HI_U32 Len)
{
    HI_U32      AllocSize;
    
    //*pu32PhyAddr = (HI_U32)malloc(Len);
    *pu32PhyAddr = (HI_U32)reserve_mem_alloc(Len, &AllocSize);
    if (HI_NULL != *pu32PhyAddr) 
        return HI_SUCCESS;
    else
        return HI_FAILURE;
}

HI_VOID HI_MEM_Free(HI_VOID *pPhyAddr)
{
#ifdef HI_MINIBOOT_SUPPORT
    resfree(pPhyAddr);
#endif
    return;
}

#if 0
static MMZ_INFO_S       g_MmzInfo = 
{
    .name       = {""},
    .gfp        = 0,
    .startAddr  = 0,
    .size       = 0
};

static HI_U8            *g_pHeadAllocPos = HI_NULL;
static HI_U8            *g_pTailAllocPos = HI_NULL;

static unsigned int parse_mem(char *cmd)
{
    char c;
    char *s = NULL;
    unsigned int l;

    // 0
    s = strstr(cmd, "mem=");
    if (!s)
    {
        HI_ERR_COMMON("not mem args ");
        return 0;
    }

    // 1
    l = 0;
    c = *(s + 4 + l);
    while ((c != '\0') && (c != 'M'))
    {
        l++;
        c = *(s + 4 + l);
    }

    if (!l)
    {
        HI_ERR_COMMON("mem args args inValid");
        return 0;
    }

    *(s + 4 + l) = '\0';

    // 2
    l = simple_strtoul_2(s + 4, NULL, 10);
    
    return l;
}

/*such as:  mmz=ddr,0,0x86000000,160M*/
static int parse_mmz(char *cmd)
{
    char *p = NULL;
    char *s = NULL;

    s = strstr(cmd, "mmz=");
    if (!s)
    {
        strcpy(g_MmzInfo.name, "ddr");
        g_MmzInfo.gfp = 0;
        g_MmzInfo.startAddr = 0x86000000;
        g_MmzInfo.size = 0xa000000;
        return 0;
    }

    p = strtok(s, "=");
    if (!p)
    {
        HI_ERR_COMMON("mmz args args inValid");
        return -1;
    }

    p = strtok(NULL, ",");
    if (!p)
    {
        HI_ERR_COMMON("mmz args args inValid");
        return -1;
    }

    strcpy(g_MmzInfo.name, p);

    p = strtok(NULL, ",");
    if (!p)
    {
        HI_ERR_COMMON("mmz args args inValid");
        return -1;
    }

    g_MmzInfo.gfp = simple_strtoul_2(p, NULL, 16);

    p = strtok(NULL, ",");
    if (!p)
    {
        HI_ERR_COMMON("mmz args args inValid");
        return -1;
    }

    g_MmzInfo.startAddr = simple_strtoul_2(p, NULL, 16);

    p = strtok(NULL, ",");
    if (!p)
    {
        HI_ERR_COMMON("mmz args args inValid");
        return -1;
    }

    g_MmzInfo.size  = simple_strtoul_2(p, NULL, 10);
    g_MmzInfo.size *= 0x100000;

    HI_INFO_COMMON("g_MmzInfo startAddr = 0x%x size:%d\n", g_MmzInfo.startAddr, g_MmzInfo.size);
    return 0;
}

HI_S32 HI_MMZ_Init()
{
    HI_S32      Ret;
    HI_CHAR     *pTmp = HI_NULL;
    HI_CHAR     Bootarg[BOOT_ARGS_SIZE] = {0};
    HI_U32      mem;
    HI_U32      stride;
    HI_U32      tmp;

    pTmp = getenv("bootargs");

    strncpy(Bootarg, pTmp, BOOT_ARGS_SIZE);

    mem = parse_mem(Bootarg);
    tmp = (HI_U32)malloc(1);
    stride = (tmp - MEM_BASE) / (1024 * 1024);
    if(mem < stride)
    {
        HI_ERR_COMMON("!!! mem=%d too smal for fastplay which should > %d\n", mem, stride);
	    free((HI_U32 *)tmp);
        return HI_FAILURE;
    }

    strncpy(Bootarg, pTmp, BOOT_ARGS_SIZE);
    Ret = parse_mmz(Bootarg);
    if(HI_SUCCESS != Ret)
    {
        free((HI_U32 *)tmp);
        return HI_FAILURE;
    }

    g_pHeadAllocPos = (HI_U8 *)g_MmzInfo.startAddr;
    g_pTailAllocPos = (HI_U8 *)(g_MmzInfo.startAddr + g_MmzInfo.size - HI_MMZ_INFOZONE_SIZE);

    free((HI_U32 *)tmp);
    
    return HI_SUCCESS;
}

HI_S32 HI_MMZ_DeInit()
{
    g_pHeadAllocPos = HI_NULL;
    g_pTailAllocPos = HI_NULL;
    
    return HI_SUCCESS;
}

HI_S32 HI_MMZ_GetInfoZoneAddr(MMZ_BUFFER_S *psMBuf)
{
    psMBuf->u32StartPhyAddr = g_MmzInfo.startAddr + g_MmzInfo.size - HI_MMZ_INFOZONE_SIZE;
    psMBuf->u32StartVirAddr = g_MmzInfo.startAddr + g_MmzInfo.size - HI_MMZ_INFOZONE_SIZE;
    psMBuf->u32Size = HI_MMZ_INFOZONE_SIZE;

    return HI_SUCCESS;
}

HI_S32 HI_MMZ_Alloc(const char *bufname, char *zone_name, unsigned int size, int align, MMZ_BUFFER_S *psMBuf)
{
    HI_U32      AlignSize;

    if(HI_NULL == g_pHeadAllocPos || HI_NULL == g_pTailAllocPos)
    {
        HI_ERR_COMMON("ERR: init mmz first!\n");
        return HI_FAILURE;
    }

    /*if the malloc memory is not align to 8K, align it*/
    /*CNComment: 如果分配的内存大小不是对齐到8K的，进行对齐处理*/
    if(0x00 != (size & 0x000000ff))
    {
        AlignSize = (size | 0xff) + 1;
    }
    else
    {
        AlignSize = size;
    }

    /*not enough mmz memory*/
    if (g_pHeadAllocPos + AlignSize >= g_pTailAllocPos)
    {
        HI_ERR_COMMON("ERR: mmz is not enough!\n");
        return HI_FAILURE;    
    }

    /*need alloc mem in key zone, alloc it from tail*/
    if (0 == strncmp(zone_name, KEY_DATA_MEM_ZONE, sizeof(KEY_DATA_MEM_ZONE)))
    {
        g_pTailAllocPos -= AlignSize;
        psMBuf->u32StartPhyAddr = (HI_U32)g_pTailAllocPos;
        psMBuf->u32StartVirAddr = (HI_U32)g_pTailAllocPos;
        psMBuf->u32Size = size;
        
        HI_INFO_COMMON("INFO: Alloc form Tail, bufname: %s, g_pAllocPos: %#x, size: %#x, AlignSize : %#x\n", 
        bufname, g_pTailAllocPos, size, AlignSize);        
    }
    /*alloc from head*/
    else
    {
        psMBuf->u32StartPhyAddr = (HI_U32)g_pHeadAllocPos;
        psMBuf->u32StartVirAddr = (HI_U32)g_pHeadAllocPos; 
        psMBuf->u32Size = size;

        HI_INFO_COMMON("INFO: Alloc form Head, bufname: %s, g_pAllocPos: %#x, size: %#x, AlignSize : %#x\n", 
        bufname, g_pHeadAllocPos, size, AlignSize);  

        g_pHeadAllocPos += AlignSize;
    }

    return HI_SUCCESS;
}

void HI_MMZ_Release(MMZ_BUFFER_S *psMBuf)
{
    return;
}

#endif
