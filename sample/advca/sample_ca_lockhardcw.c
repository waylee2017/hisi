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

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
#include <stdio.h>
#include <stdlib.h>
#include "hi_type.h"
#include "hi_unf_advca.h"
#include "sample_ca_common.h"

/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/



/******************************* API declaration *****************************/
HI_S32 main(HI_S32 argc,HI_CHAR **argv)
{
    HI_S32 Ret;

    Ret = HI_UNF_ADVCA_Init();
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_Init failed:%#x\n",Ret);
        return HI_FAILURE;
    }

    Ret = HI_UNF_ADVCA_LockHardCwSel();
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_LockHardCwSel failed:%#x\n",Ret);
    }

    (HI_VOID)HI_UNF_ADVCA_DeInit();
    return Ret;
}



#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

