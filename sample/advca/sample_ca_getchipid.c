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

#include <stdio.h>
#include <stdlib.h>
#include "hi_type.h"
#include "hi_unf_advca.h"
#include "sample_ca_common.h"


HI_S32 main(HI_S32 argc,HI_CHAR** argv)
{
    HI_S32 Ret;
    HI_U32 ChipID;
    HI_UNF_ADVCA_OTP_ATTR_S stOtpAttr;
    HI_U32 index = 0;

    Ret = HI_UNF_ADVCA_Init();
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_Init failed\n");
        return HI_FAILURE;
    }

    Ret = HI_UNF_ADVCA_GetChipId(&ChipID);
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("get chip id failed\n");
        return HI_FAILURE;
    }
    printf("chip id(4 bytes):%#x\n",ChipID);
    
    Ret = HI_UNF_ADVCA_GetOtpFuse(HI_UNF_ADVCA_OTP_CHIP_ID, &stOtpAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("get chip id failed\n");
        return HI_FAILURE;
    }
    printf("chip id(8 bytes):0x");
    
    for (index = 0; index < 8; index++)
    {
        printf("%02x ", stOtpAttr.unOtpFuseAttr.stChipId.au8ChipId[index]);
    }
    printf("\n");
    
    (HI_VOID)HI_UNF_ADVCA_DeInit();   

    return Ret;
}


