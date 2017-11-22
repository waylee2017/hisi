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
#include <string.h>
#include "hi_type.h"
#include "hi_unf_advca.h"
#include "sample_ca_common.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */


HI_S32 main(HI_S32 argc,HI_CHAR** argv)
{
    HI_S32 Ret;
	HI_UNF_ADVCA_LOCK_TYPE_E entype = HI_UNF_ADVCA_LOCK_TZ_OTP;
	HI_UNF_ADVCA_LOCK_TZ_OTP_PARAM_S stParam;

	printf("Please config the stParam.u32Addr and stParam.u32len param!\n"
			"stParam.u32Addr: must be 16 bytes aligned.\n"
			"stParam.u32Len: must be 16 bytes aligned.\n");

    Ret = HI_UNF_ADVCA_Init();
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_Init failed:%#x\n",Ret);
        return HI_FAILURE;
    }

	stParam.u32Addr = 0x101;
	stParam.u32Len = 17;
    Ret = HI_UNF_ADVCA_ConfigLockFlag(entype, (HI_U8 *)&stParam, sizeof(stParam));
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_ConfigLockFlag failed:%#x\n",Ret);
    }
	else
	{
	    HI_DEBUG_ADVCA("HI_UNF_ADVCA_ConfigLockFlag success\n");
	}

    Ret = HI_UNF_ADVCA_DeInit();
    return Ret;
}



#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */


