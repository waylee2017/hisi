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

HI_S32 main(HI_S32 argc,HI_CHAR**argv)
{
    HI_S32 Ret;
    HI_UNF_ADVCA_FLASH_TYPE_E enFlashType;

    if (argc < 2)
    {
        printf("usage:opensecboot flashtype[spi|nand|spi_nand]\n");
        return HI_FAILURE;
    }

    if(0 == strcmp(argv[1],"spi"))
    {
        enFlashType = HI_UNF_ADVCA_FLASH_TYPE_SPI;
    }
    else if(0 == strcmp(argv[1],"nand"))
    {
        enFlashType = HI_UNF_ADVCA_FLASH_TYPE_NAND;
    }
    else if(0 == strcmp(argv[1],"spi_nand"))
    {
        enFlashType = HI_UNF_ADVCA_FLASH_TYPE_SPI_NAND;
    }
    else
    {
        printf("usage:opensecboot flashtype[spi|nand|spi_nand]\n");
        return HI_FAILURE;
    }


    Ret = HI_UNF_ADVCA_Init();
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("HI_UNF_ADVCA_Init failed\n");
        return HI_FAILURE;
    }

    Ret = HI_UNF_ADVCA_SetFlashTypeEx(enFlashType);
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("Set Flash Type failed\n");
        (HI_VOID)HI_UNF_ADVCA_DeInit();   
        return HI_FAILURE;
    }

    Ret = HI_UNF_ADVCA_EnableSecBootEx();
    if (HI_SUCCESS != Ret)
    {
        HI_DEBUG_ADVCA("Enable Secure Boot failed\n");
        (HI_VOID)HI_UNF_ADVCA_DeInit();   
        return HI_FAILURE;
    }

    (HI_VOID)HI_UNF_ADVCA_DeInit();   

    return Ret;
}


