#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include <math.h>
#include <memory.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/ioctl.h>

#include "hi_common.h"
#include "hi_unf_ecs.h"
#include "hi_unf_demux.h"

#include "hi_adp_tuner.h"
#include "hi_psi_si.h"
#include "search.h"


#define PRINT_SMP(fmt...)       printf(fmt)

HI_S32 Unf_Dmx_Init(HI_U32 u32DmxId, HI_U32 u32PortId)
{
    HI_S32 ret = HI_SUCCESS;


    ret = HI_UNF_DMX_Init();
    if (HI_SUCCESS != ret)
    {
        printf("HI_UNF_DMX_Init fail!line =%d,ret=%x\n", __LINE__, ret);
        return HI_FAILURE;
    }

    ret = HI_UNF_DMX_AttachTSPort(u32DmxId, u32PortId);
    if (HI_SUCCESS != ret)
    {
        PRINT_SMP("HI_UNF_DMX_AttachTSPort fail!line =%d,ret=%x\n", __LINE__, ret);
        return HI_FAILURE;
    }

    PRINT_SMP("ok\n");

    return HI_SUCCESS;
}

HI_S32 Unf_Dmx_Denit(HI_VOID)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DMX_DeInit();
    if (ret != HI_SUCCESS)
    {
        printf("HI_UNF_DMX_DeInit failed!ret = 0x%x,line =%d\n", ret, __LINE__);
    }

    return HI_SUCCESS;
}



HI_S32 main(int argc,char *argv[])
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 u32Freq;
    HI_U32 u32Symb;
    HI_U32 u32ThirdParam;
    PMT_COMPACT_TBLS *pstTable;
    HI_U32 u32DmxId = 0;
    HI_U32 u32PortId = 0;

    if ((argc != 2) && (argc != 3))
    {
        printf("\nUse:\t sample_psi Frequency Symbolrate\n");
        printf("Example:\t./sample_psi 403 6875 \nor\n");
        printf("Use:\t demux_demo Frequency\n");
        printf("Example:\t./demux_demo 403\n");
        return HI_FAILURE;
    }

    u32Freq = strtol(argv[1], NULL, 0);
    u32Symb = (u32Freq>1000) ? 27500 : 6875;
    if (argc == 3)
    {
        u32Symb = strtol(argv[2], NULL, 0);
    }
    u32ThirdParam = (u32Freq>1000) ? 0 : 64;

    ret = HI_SYS_Init();
    if (ret != HI_SUCCESS)
    {
        printf("ERROR:%s[%d]:failed ret=0x%x\n", __FUNCTION__, __LINE__, ret);
        return HI_FAILURE;
    }
    //HI_SYS_PreAV(NULL);
    ret = HIADP_Tuner_Init();
    ret |= HIADP_Tuner_Connect(0, u32Freq, u32Symb, u32ThirdParam);
    if (ret != HI_SUCCESS)
    {
        printf("ERROR:%s[%d]:failed ret=0x%x\n", __FUNCTION__, __LINE__, ret);
        return HI_FAILURE;
    }

    ret = Unf_Dmx_Init(u32DmxId, u32PortId);
    if (ret != HI_SUCCESS)
    {
        printf("ERROR:%s[%d]:failed ret=0x%x\n", __FUNCTION__, __LINE__, ret);
        return HI_FAILURE;
    }


    HI_API_PSISI_Init();

    ret = GetAllPmtTbl(u32DmxId, &pstTable);
    if (HI_SUCCESS != ret)
    {
        printf("GetAllPmtTbl fail!ret = %x,line = %d\n", ret, __LINE__);
        HI_API_PSISI_Destroy();
    }

    HI_API_PSISI_Destroy();

    Unf_Dmx_Denit();

    HIADP_Tuner_DeInit();

    HI_SYS_DeInit();
    return HI_SUCCESS;
}
