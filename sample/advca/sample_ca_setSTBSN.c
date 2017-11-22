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

/***************************** Macro Definition ******************************/



/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/
HI_S32 main(HI_S32 argc,HI_CHAR** argv)
{
    HI_S32 Ret;
    HI_U8 u8StbSn[4] = {0x12,0x34,0x56,0x78}; 

    Ret = HI_UNF_ADVCA_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_Init failed\n");
        return HI_FAILURE;
    }   

    Ret = HI_UNF_ADVCA_SetStbSn(u8StbSn);
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_SetStbSn failed\n");
        return HI_FAILURE;
    }

    HI_DEBUG_ADVCA("HI_UNF_ADVCA_SetStbSn success\n");
    (HI_VOID)HI_UNF_ADVCA_DeInit();

    return Ret;
}




