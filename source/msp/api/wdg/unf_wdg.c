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

#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#include "drv_wdg_ioctl.h"
#include "hi_type.h"
#include "hi_error_mpi.h"
#include "drv_struct_ext.h"

#define WDG_DEV_NAME "/dev/watchdog"
static HI_S32 g_s32WDGDevFd = 0;

#define WATCHDOG_TIMEOUT_MAX 356000
#define WATCHDOG_TIMEOUT_MIN 1000

/*---- wdg ----*/

/*******************************************
Function:              HI_UNF_WDG_Init
Description:   Init WDG devide
Calls:        HI_WDG_Open
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Init(HI_VOID)
{
    HI_S32 s32DevFd = 0;

    if (g_s32WDGDevFd > 0)
    {
        return HI_SUCCESS;
    }

    s32DevFd = open(WDG_DEV_NAME, O_RDWR, 0);

    if (s32DevFd < 0)
    {
        HI_ERR_WDG("open %s error\n", WDG_DEV_NAME);
        return HI_ERR_WDG_FAILED_INIT;
    }
    else
    {
        g_s32WDGDevFd = s32DevFd;
    }

    return HI_SUCCESS;
}

/*******************************************
Function:              HI_UNF_WDG_DeInit
Description:  Deinit WDG device
Calls:        HI_WDG_Close
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_DeInit(HI_VOID)
{
    if (g_s32WDGDevFd <= 0)
    {
        return HI_SUCCESS;
    }
    else
    {
        close (g_s32WDGDevFd);
        g_s32WDGDevFd = 0;
        return HI_SUCCESS;
    }
}

HI_S32 HI_UNF_WDG_GetCapability(HI_U32 *pu32WdgNum)
{
	if (HI_NULL != pu32WdgNum)
	{
		*pu32WdgNum = HI_WDG_NUM;
		return HI_SUCCESS;
	}

	return HI_FAILURE;
}

/*******************************************
Function:              HI_UNF_WDG_Enable
Description:  enable WDG device
Calls:        HI_WDG_Enable
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Enable(HI_VOID)
{
    HI_S32 s32Result = 0;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_SETOPTIONS, WDIOS_ENABLECARD);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("wdg enable failed\n");
        return HI_ERR_WDG_FAILED_ENABLE;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/*******************************************
Function:              HI_UNF_WDG_Disable
Description:  disable WDG device
Calls:        HI_WDG_Disable
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Disable(HI_VOID)
{
    int s32Result = 0;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_SETOPTIONS, WDIOS_DISABLECARD);

    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("wdg disable failed\n");
        return HI_ERR_WDG_FAILED_DISABLE;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/*******************************************
Function:              HI_UNF_WDG_SetTimeout
Description:  set the time interval of feeding the WDG
Calls:        HI_WDG_SetTimeout
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_SetTimeout(HI_U32 u32Value)
{
    int s32Result = 0;
    HI_U32 u32ValueInSec;

    if ( (u32Value > WATCHDOG_TIMEOUT_MAX) || (u32Value < WATCHDOG_TIMEOUT_MIN))
    {
        HI_ERR_WDG("Input parameter(u32Value) invalid: %d\n", u32Value);
        return HI_ERR_WDG_INVALID_PARA;
    }

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

    /* convert ms to s */
    u32ValueInSec = (u32Value + 999) / 1000;
    s32Result = ioctl(g_s32WDGDevFd, WDIOC_SETTIMEOUT, &u32ValueInSec);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("wdg set timeout failed\n");
        return HI_ERR_WDG_FAILED_SETTIMEOUT;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/*******************************************
Function:     HI_UNF_WDG_GetTimeout
Description:  get the time interval of feeding the WDG
Calls:        HI_WDG_GetTimeout
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:       ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_GetTimeout(HI_U32 *pu32Value)
{
    HI_S32 s32Result = 0;
    HI_U32 u32ValueInSec = 0;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

    if (HI_NULL == pu32Value)
    {
        HI_ERR_WDG("para pu32Value is null.\n");
        return HI_ERR_WDG_INVALID_PARA;
    }

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_GETTIMEOUT, &u32ValueInSec);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("wdg get timeout failed\n");
        return HI_ERR_WDG_FAILED_GETTIMEOUT;
    }
    else
    {
        /* convert s to ms */
        *pu32Value = u32ValueInSec * 1000;
        return HI_SUCCESS;
    }
}

/*******************************************
Function:              HI_UNF_WDG_ClearWatchDog
Description:  clear the WDG
Calls:        HI_WDG_ClearWatchDog
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_ClearWatchDog(HI_VOID)
{
    HI_S32 s32Result = 0;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_KEEPALIVE, 0);

    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("clear wdg failed\n");
        return HI_ERR_WDG_FAILED_CLEARWDG;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/*******************************************
Function:              HI_UNF_WDG_Reset
Description:  reset WDG
Calls:        HI_WDG_Reset
Data Accessed:  NA
Data Updated:   NA
Input:          NA
Output:         NA
Return:      ErrorCode(reference to document)
Others:         NA
*******************************************/
HI_S32 HI_UNF_WDG_Reset(HI_VOID)
{
    HI_S32 s32Result = 0;

    if (g_s32WDGDevFd <= 0)
    {
        HI_ERR_WDG("file descriptor is illegal\n");
        return HI_ERR_WDG_NOT_INIT;
    }

    s32Result = ioctl(g_s32WDGDevFd, WDIOC_SETOPTIONS, WDIOS_RESET_BOARD);

    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_WDG("reset faile\n");
        return HI_ERR_WDG_FAILED_RESET;
    }
    else
    {
        return HI_SUCCESS;
    }
}
