/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : vmx_auth.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2014-09-19
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#include "hi_boot_common.h"
/*
	return value:
	    0: indicates do not start this application
	    1: indicates the application can be started
*/
int verifySignature( unsigned char* signature, 
					unsigned char	* src, 
					unsigned char* tmp, 
					unsigned int len, 
					unsigned int maxLen, 
					unsigned char mode, 
					unsigned char *errorCode )
{
#ifdef HI_LOADER_BOOTLOADER
    extern HI_S32 VMX_ReadUpgrdFlag(HI_BOOL *pbNeedUpgrd);
    int ret = 0;
    HI_BOOL bNeedUpgrd = HI_FALSE;
    ret = VMX_ReadUpgrdFlag(&bNeedUpgrd);
    if (HI_SUCCESS != ret)
    {
        printf("read upgrade flag for loader failed\n");
        //return HI_FAILURE;
    }
    printf("bNeedUpgrd = %d\n", bNeedUpgrd);
    if(HI_TRUE == bNeedUpgrd)
    {
        *errorCode = 2;

        return 0;
    }
    else
#endif
    {
	    *errorCode = 0;

	    return 1;
    }
}
