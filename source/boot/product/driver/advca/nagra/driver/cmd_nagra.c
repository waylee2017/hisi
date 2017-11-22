/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : cmd_nagra.c
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2013-08-28
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#include <common.h>
#include <command.h>
#include "hi_boot_common.h"
#include "hi_type.h"
#include "nocs_bsd.h"
#include "nocs_bsd_impl.h"
#include "nocs_check.h"

#ifdef HI_ADVCA_FUNCTION_RELEASE
#define HI_ERR_NAGRA(format, arg...)
#define HI_DEBUG_NAGRA(format...)
#else
#define HI_ERR_NAGRA(format, arg...) printf( "%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#define HI_DEBUG_NAGRA(format...)    printf(format)
#endif

int do_nagra_pvprogrammer (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    if (!strncmp(argv[1], "help", 4))
    {
        printf ("Usage:\n%s\n", cmdtp->usage);
        return -1;
    }
    
    if (argc == 1)
    {
#if 0
        return pvprogrammer();
#endif
    }

    return 0;
}

int do_bsd_test_application (cmd_tbl_t *cmdtp, int flag, int argc, char *argv[])
{
    if (!strncmp(argv[1], "help", 4))
    {
        printf ("Usage:\n%s\n", cmdtp->usage);
        return -1;
    }
    
    if (argc == 1)
    {
        return bsd_TestApplication();
    }

    return 0;
}

U_BOOT_CMD(
	pvprogrammer,	2,	1,	do_nagra_pvprogrammer,
	"pvprogrammer      - Set or Get PV values from OTP\n",
	""
);

U_BOOT_CMD(
	bsd_test_application,	2,	1,	do_bsd_test_application,
	"bsd_test_application      - The BSD Test Application\n",
	""
);

