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
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "hi_unf_keyled.h"
#include "hi_drv_keyled.h"
#include "drv_keyled_ioctl.h"
#include "drv_struct_ext.h"

static HI_S32 g_s32KEYLEDFd = 0;
static const char *keyled_devname = "/dev/"UMAP_DEVNAME_KEYLED;


/***********************************************************************************
 *  Function:       HI_UNF_KEYLED_Init
 *  Description:    open key devide
 *  Calls:
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEYLED_Init(HI_VOID)
{
    HI_S32 s32DevFd = 0;
    HI_S32 flags = O_RDWR | O_NONBLOCK;

    if (g_s32KEYLEDFd <= 0)
    {
        s32DevFd = open(keyled_devname, flags, 0);

        if (s32DevFd < 0)
        {
            HI_ERR_KEYLED("open keyled error dev:%s\n", keyled_devname);
            return HI_FAILURE;
        }
        g_s32KEYLEDFd = s32DevFd;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
 *  Function:       HI_UNF_KEYLED_DeInit
 *  Description:    close key
 *  Calls:
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEYLED_DeInit(HI_VOID)
{
    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_SUCCESS;
    }

    close(g_s32KEYLEDFd);

    g_s32KEYLEDFd = 0;

    return HI_SUCCESS;
}

HI_S32 HI_UNF_KEYLED_SelectType(HI_UNF_KEYLED_TYPE_E enKeyLedType)
{
    HI_S32 s32Result = HI_SUCCESS;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    if (enKeyLedType >= HI_UNF_KEYLED_TYPE_BUTT)
    {
        HI_ERR_KEYLED("invalid keyled type.\n");
        return HI_ERR_KEYLED_INVALID_PARA;
    }

    s32Result = ioctl(g_s32KEYLEDFd, HI_KEYLED_SELECT_CMD, (HI_S32)&enKeyLedType);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_KEYLED("keyled select keyled type failed s32Result = 0x%x \n", s32Result);
        return HI_FAILURE;
    }
    else
    {
        return HI_SUCCESS;
    }

}

/***********************************************************************************
 *  Function:       HI_UNF_KEY_Open
 *  Description:    open key devide
 *  Calls:
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEY_Open(HI_VOID)
{
    HI_S32 status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    status = ioctl(g_s32KEYLEDFd, HI_KEYLED_KEY_OPEN_CMD);
    if (HI_SUCCESS != status)
    {
        HI_ERR_KEYLED("keyled enable failed, ret = 0x%x \n", status);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
 *  Function:       HI_UNF_KEY_Close
 *  Description:    close key
 *  Calls:
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEY_Close(HI_VOID)
{
    HI_S32 status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    status = ioctl(g_s32KEYLEDFd, HI_KEYLED_KEY_CLOSE_CMD);
    if (HI_SUCCESS != status)
    {
        HI_ERR_KEYLED("keyled Disable failed, ret = 0x%x \n", status);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
 *  Function:       HI_UNF_KEY_Reset
 *  Description:    reset key
 *  Calls:          HI_KEYLED_ClearBuf
  *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEY_Reset(HI_VOID)
{
    HI_S32 s32Result;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    s32Result = ioctl(g_s32KEYLEDFd, HI_KEYLED_KEY_RESET_CMD);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_KEYLED("keyled clear buf failed, ret = 0x%x \n", s32Result);
        return HI_FAILURE;
    }
    else
    {
        return HI_SUCCESS;
    }
}

/***********************************************************************************
 *  Function:       HI_UNF_KEY_GetValue
 *  Description:    get the value of key
 *  Calls:          HI_KEYLED_GetValue
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEY_GetValue(HI_U32 *pu32PressStatus, HI_U32 *pu32KeyId)
{
    HI_S32 s32Ret = 0;
    GET_KEY_VALUE_S stPara = {0};

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    if (NULL == pu32PressStatus)
    {
        HI_ERR_KEYLED("Input parameter(pu32PressStatus) invalid\n");
        return HI_ERR_KEYLED_NULL_PTR;
    }

    if (NULL == pu32KeyId)
    {
        HI_ERR_KEYLED("Input parameter(pu32KeyId) invalid\n");
        return HI_ERR_KEYLED_NULL_PTR;
    }

    s32Ret = ioctl(g_s32KEYLEDFd, HI_KEYLED_KEY_GET_VALUE_CMD, (HI_S32)&stPara);
    if (HI_SUCCESS != s32Ret)
    {
        HI_INFO_KEYLED("keyled get key error:0x%x \n", s32Ret);
        return s32Ret;
    }

    *pu32KeyId = stPara.u32KeyCode;
    *pu32PressStatus = stPara.u32KeyStatus;
	
    return HI_SUCCESS;
}

HI_S32 HI_UNF_KEY_SetBlockTime(HI_U32 u32BlockTimeMs)
{
    HI_S32 s32Result = HI_SUCCESS;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    s32Result = ioctl(g_s32KEYLEDFd, HI_KEYLED_SET_BLOCK_TIME_CMD, (HI_S32)&u32BlockTimeMs);
    if (HI_SUCCESS != s32Result)
    {
        HI_ERR_KEYLED("keyled set block time failed, ret = 0x%x \n", s32Result);
        return HI_FAILURE;
    }
    else
    {
        return HI_SUCCESS;
    }
}


/***********************************************************************************
 *  Function:       HI_UNF_KEY_SetRepTime
 *  Description:    report the time interval of the sustain status of  the key
 *  Calls:          HI_UNF_KEY_RepKeyTimeoutVal
  *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEY_RepKeyTimeoutVal(HI_U32 u32RepTimeMs)
{
    HI_S32 s32status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    if (u32RepTimeMs < 108)
    {
        u32RepTimeMs = 108;
    }
    else if (u32RepTimeMs > 65536)
    {
        u32RepTimeMs = 65536;
    }

    s32status = ioctl(g_s32KEYLEDFd, HI_KEYLED_SET_REPKEY_TIME_CMD, (HI_S32)&u32RepTimeMs);
    if (HI_SUCCESS != s32status)
    {
        HI_ERR_KEYLED("keyled u32RepTimeMs  Setup Error ret = 0x%x \n", s32status);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
 *  Function:       HI_UNF_KEY_IsRepKey
 *  Description:   whether to enable the repeat function of the  key
 *  Calls:          HI_KEYLED_IsRepKey
  *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEY_IsRepKey(HI_U32 u32IsRepKey)
{
    HI_S32 s32status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    if (u32IsRepKey > 1)
    {
        HI_ERR_KEYLED("Input parameter(u32IsRepKey) invalid:%d\n", u32IsRepKey);
        return HI_ERR_KEYLED_INVALID_PARA;
    }
    else
    {
        s32status = ioctl(g_s32KEYLEDFd, HI_KEYLED_SET_IS_REPKEY_CMD, (HI_S32)&u32IsRepKey);
        if (HI_SUCCESS != s32status)
        {
            HI_ERR_KEYLED("keyled isrepkey setup error ret = 0x%x \n", s32status);
            return HI_FAILURE;
        }

        return HI_SUCCESS;
    }
}

/***********************************************************************************
 *  Function:       HI_UNF_KEY_IsKeyUp
 *  Description:    whether to open the key up  function
 *  Calls:          HI_KEYLED_IsKeyUp
  *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_KEY_IsKeyUp(HI_U32 u32IsKeyUp)
{
    HI_S32 s32status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    if (u32IsKeyUp > 1)
    {
        HI_ERR_KEYLED("Input parameter(u32IsKeyUp) invalid:%d\n", u32IsKeyUp);
        return HI_ERR_KEYLED_INVALID_PARA;
    }
    else
    {
        s32status = ioctl(g_s32KEYLEDFd, HI_KEYLED_SET_IS_KEYUP_CMD, (HI_S32)&u32IsKeyUp);
        if (HI_SUCCESS != s32status)
        {
            HI_ERR_KEYLED("keyled iskeyup setup error ret = 0x%x \n", s32status);
            return HI_FAILURE;
        }

        return HI_SUCCESS;
    }
}

/***********************************************************************************
 *  Function:       HI_UNF_LED_Open
 *  Description:    open led devide
 *  Calls:        HI_KEYLED_Open
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_LED_Open(HI_VOID)
{
    HI_S32 status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    status = ioctl(g_s32KEYLEDFd, HI_KEYLED_LED_OPEN_CMD);
    if (HI_SUCCESS != status)
    {
        HI_ERR_KEYLED("keyled enable failed ret = 0x%x \n", status);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
 *  Function:       HI_UNF_LED_Close
 *  Description:    close led
 *  Calls:          HI_KEYLED_Close
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_LED_Close(HI_VOID)
{
    HI_S32 status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    status = ioctl(g_s32KEYLEDFd, HI_KEYLED_LED_CLOSE_CMD);
    if (HI_SUCCESS != status)
    {
        HI_ERR_KEYLED("keyled Disable failed ret = 0x%x \n", status);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
 *  Function:       HI_UNF_LED_Display
 *  Description:    display of lLED
 *  Calls:          HI_KEYLED_Display
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_LED_Display(HI_U32 u32CodeValue)
{
    HI_S32 retval = HI_SUCCESS;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    retval = ioctl(g_s32KEYLEDFd, HI_KEYLED_DISPLAY_CODE_CMD, (HI_S32)&u32CodeValue);
    if (HI_SUCCESS != retval)
    {
        HI_ERR_KEYLED("keyled display ioctl error ret = 0x%x \n", retval);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/***********************************************************************************
 *  Function:       HI_UNF_LED_DisplayTime
 *  Description:    the display time of LED
 *  Calls:          HI_KEYLED_DisplayTime
 *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_LED_DisplayTime(HI_UNF_KEYLED_TIME_S stLedTime)
{
    HI_S32 retval = HI_SUCCESS;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    if ((stLedTime.u32Hour > 23) || (stLedTime.u32Minute > 59))
    {
        HI_ERR_KEYLED("Input parameter stLedTime invalid:%d-%d\n", stLedTime.u32Hour, stLedTime.u32Minute);
        return HI_ERR_KEYLED_INVALID_PARA;
    }

    retval = ioctl(g_s32KEYLEDFd, HI_KEYLED_DISPLAY_TIME_CMD, (HI_S32)&stLedTime);
    if (HI_SUCCESS != retval)
    {
        HI_ERR_KEYLED("keyled display time ioctl error ret = 0x%x \n", retval);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


/***********************************************************************************
 *  Function:       HI_UNF_LED_SetFlashPin
 *  Description:    set the flash pin of the LED
 *  Calls:          HI_KEYLED_SetFlashPin
  *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_LED_SetFlashPin(HI_UNF_KEYLED_LIGHT_E enPin)
{
    HI_S32 status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    if ((enPin < HI_UNF_KEYLED_LIGHT_1) || (enPin > HI_UNF_KEYLED_LIGHT_NONE))
    {
        HI_ERR_KEYLED("Input Flash Pin error:%d\n", enPin);
        return HI_ERR_KEYLED_INVALID_PARA;
    }

    status = ioctl(g_s32KEYLEDFd, HI_KEYLED_SET_FLASH_PIN_CMD, (HI_S32)&enPin);
    if (HI_SUCCESS != status)
    {
        HI_ERR_KEYLED("keyled set flash pin error ret = 0x%x \n", status);
        return HI_FAILURE;
    }
    else
    {
        return HI_SUCCESS;
    }
}



/***********************************************************************************
 *  Function:       HI_UNF_LED_SetFlashFreq
 *  Description:    set the flash frequency of the LED
 *  Calls:       HI_KEYLED_SetFlashFreq
  *  Data Accessed:  NA
 *  Data Updated:   NA
 *  Input:          NA
 *  Output:         NA
 *  Return:      ErrorCode(reference to document)
 *  Others:         NA
 ***********************************************************************************/
HI_S32 HI_UNF_LED_SetFlashFreq(HI_UNF_KEYLED_LEVEL_E enLevel)
{
    HI_S32 status = 0;

    if (g_s32KEYLEDFd <= 0)
    {
        HI_ERR_KEYLED("keyled not init\n");
        return HI_ERR_KEYLED_NOT_INIT;
    }

    if ((enLevel < HI_UNF_KEYLED_LEVEL_1) || (enLevel > HI_UNF_KEYLED_LEVEL_5))
    {
        HI_ERR_KEYLED("Input Flash Freq Level error:%d\n", enLevel);
        return HI_ERR_KEYLED_INVALID_PARA;
    }

    status = ioctl(g_s32KEYLEDFd, HI_KEYLED_CONFIG_FLASH_FREQ_CMD, (HI_S32)&enLevel);
    if (HI_SUCCESS != status)
    {
        HI_ERR_KEYLED("Set Flash Freq error ret = 0x%x \n", status);
        return HI_FAILURE;
    }
    else
    {
        return HI_SUCCESS;
    }
}


